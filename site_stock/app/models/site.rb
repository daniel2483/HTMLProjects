class Site < ActiveRecord::Base
  attr_accessible :ACCESO, :COD_SITE, :COORDENADAS, :DESCRIPCION, :ID_ISLA, :NOM_SITE, :ID_MEDIO, :ZONA
	belongs_to :isle
	belongs_to :medio
	has_many :dependencies
	has_many :ips	
	has_many :ip_types, :through => :ips

	define_index do
		indexes "COD_SITE", :sortable => true
		indexes "NOM_SITE"
		#indexes isles.NOMBRE_ISLA, :as => :nombre_isla
		#indexes ips.IP, :as => :ips_ip
	end
	

end
