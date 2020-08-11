class Isle < ActiveRecord::Base

  attr_accessible :NOMBRE_ISLA

unless params[:id].blank?
  where << "id IN (:id)"
end

        OR

unless params[:id].blank?
  where << "id IN (  #{params[:id].join(',')})"
end

end
