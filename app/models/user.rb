class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
         def admin?
         	is_admin
         end

         def to_admin
          self.update_columns(is_admin: true)
      end

      def to_normal
      	 self.update_columns(is_admin: false)
      	end
      	
=======
  def admin?
    is_admin
  end
>>>>>>> 8ba5ecafa4b846be3fde8ade4fdfd22edd059451
end
