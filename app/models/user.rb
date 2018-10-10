class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates :admin, :inclusion => {in:[false],message: "você não esta autorizado"}, if: :primeiro_usuario?

          def primeiro_usuario?
            usuarios_cadastrados = User.all.count
            if usuarios_cadastrados == 0
              false
            else
              true
            end
          end




end
