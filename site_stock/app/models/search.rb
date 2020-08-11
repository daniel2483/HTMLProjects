class Search < ActiveRecord::Base

attr_accessible :CODiGO, :NOMBRE, :ISLA, :MEDIO, :TIPO, :IP

def sites
  @sites ||= find_sites
end

private

def find_sites
  Sites.find(:all, :conditions => conditions)
end

def keyword_conditions
  ["sites.COD_SITE LIKE ?", "%#{CODiGO}%"] unless CODiGO.blank?
end

def conditions
  [conditions_clauses.join(' AND '), *conditions_options]
end

def conditions_clauses
  conditions_parts.map { |condition| condition.first }
end

def conditions_options
  conditions_parts.map { |condition| condition[1..-1] }.flatten
end

def conditions_parts
  private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
end

end
