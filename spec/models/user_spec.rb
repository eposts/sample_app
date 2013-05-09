# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#


#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
    before { @user = User.new(name:"ashok", email:"a@nair.com")}

    subject {@user}
    it{should respond_to(:name)}
    it{should respond_to(:email)}
    it{should respond_to(:password)}
    it{should respond_to(:password_confirmation)}
    it{should respond_to(:remember_token)}

    it{should be_valid}

    describe "when name is not present" do
        before{@user.name=""}
        it{should_not be_valid}
    end
end
