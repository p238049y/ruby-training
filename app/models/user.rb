# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  birthday   :date
#  email      :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  validates :name,
    presence: true,
    uniqueness: true,
    length: { maximum: 16 },
    format: {
      with: /\A[a-z0-9]+\z/,
      message: 'は小文字英数字で入力してください'
    }
  validates :password,
    length: { minimum: 8 }


  def age
    now = Time.zone.now
    (now.strftime('%Y%m%d').to_i - birthday.strftime('%Y%m%d').to_i) / 10000
  end
end
