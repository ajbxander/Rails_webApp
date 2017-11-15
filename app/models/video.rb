class Video < ActiveRecord::Base
    
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :about, presence: true
    
end
