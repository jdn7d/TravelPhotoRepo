require 'rails_helper'

RSpec.describe User, :type => :model do

  subject {
    described_class.create(email: "bob@gmail.com",
       username: "Bob",
       password: "123456",
       )
  }
    
  it "is_expected.to be_an_instance_of(ActiveStorage::Attached::One)"

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a username" do
    subject.username = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end



end