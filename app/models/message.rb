class Message < ActiveRecord::Base
    validates :name , length: { maximum: 20 } , presence: true
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 150 }
    validates :body , length: { minimum: 2, maximum: 30 } ,presence: true 
end
