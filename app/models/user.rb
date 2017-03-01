class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :items
end


# def show
#   @item = Item.find(params[:id])
# end
#
# def create
#   @item = Item.new
#   @item.user = current_user
# end
