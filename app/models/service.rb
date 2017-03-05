class Service < ActiveRecord::Base
	mount_uploader :teaser, TeaserUploader
	has_many :subservices
	accepts_nested_attributes_for :subservices, allow_destroy: true
end
