class Post < ApplicationRecord
    
    mount_uploader :image,ImageUploader
    belongs_to :user
    
    def next
        Post.where("id > ?",id).first
    end

    def prev
        Post.where("id < ?",id).last
    end
end
