require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(name: "Any name", email: "anyone@email.com", password: "password")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a short name" do
    subject.name = "b"
    expect(subject).to_not be_valid
  end

  it "is no valid with a long name" do
    subject.name = "Twenty one characters"
    expect(subject).to_not be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a invalid email" do
    subject.email = "anyoneemail.com"
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with a short password" do
    subject.password = "nopwd"
    expect(subject).to_not be_valid
  end

  describe "Associations" do
    it "has many posts" do
      assc = described_class.reflect_on_association(:posts)
      expect(assc.macro).to eq :has_many
    end

    it "has many comments" do
      assc = described_class.reflect_on_association(:comments)
      expect(assc.macro).to eq :has_many
    end

    it "has many likes" do
      assc = described_class.reflect_on_association(:likes)
      expect(assc.macro).to eq :has_many
    end
  end
end
