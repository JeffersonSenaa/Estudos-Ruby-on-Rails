class Post < ApplicationRecord
    validates :title, :description, presence: true
    validates :title, length: { minimum: 5}
    validates :description, length: { minimum: 15}

    # Callback
    before_save do 
        self.title = self.title + "_post"
    end

    
end
