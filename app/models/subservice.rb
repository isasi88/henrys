class Subservice < ActiveRecord::Base
	mount_uploader :subicon, SubiconUploader
	belongs_to :service, dependent: :destroy
	validates_presence_of :service
end
