require 'rails_helper'

RSpec.describe Trip, :type => :model do


  let(:user) {
       User.create(:email => "jane@doe.com", :username => "Jane", :password => "123456")
  }

  subject {
    described_class.create(location: "Kansas City",
       date: "August 2021",
       private: false,
       user_id: user.id
       )
  }

  describe "Associations" do
    it { should belong_to(:user).without_validating_presence }
  end

  describe "Validations" do
    it { should belong_to(:user)}
  end
    
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end



end