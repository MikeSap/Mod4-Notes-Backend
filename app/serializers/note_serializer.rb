class NoteSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :title, :content, :created_at, :updated_at, :photo
  has_one :user

  def photo
    rails_blob_path(object.photo, only_path: true) if object.photo.attached?
  end

end
