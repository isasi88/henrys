class Work < ActiveRecord::Base
	mount_uploader :cover, CoverUploader
end
