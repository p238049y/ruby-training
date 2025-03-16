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
require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#age' do
    context '20年前の生年月日の場合' do
      let(:user) { 
        User.new(birthday: Time.zone.today - 20.years)
      }

      it '年齢が20歳であること' do
        expect(user.age).to eq 20
      end
    end
  end
end
