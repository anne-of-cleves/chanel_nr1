class Wine < ApplicationRecord
	mount_uploader :label, LabelUploader
end
