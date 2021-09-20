require 'rails_helper'

RSpec.describe Photo, :type => :model do


  let(:user) {
       User.create(:email => "jane@doe.com", :username => "Jane", :password => "123456")
  }

  let(:trip) {
       Trip.create(:location => "Kansas City", :date => "August 2021", :user_id => user.id)
  }

  subject {
    described_class.create(category: "Location",
       trip_id: trip.id
       )
  }

  describe "Associations" do
    it { should belong_to(:trip).without_validating_presence }
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end



end