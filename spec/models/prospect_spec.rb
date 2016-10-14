require 'rails_helper'

RSpec.describe Prospect, type: :model do
  describe "Validations" do
    subject {
      described_class.new(email: "avdbranden@gmail.com", first_name: "Adrien",
        last_name: "van den Branden", function: "legal engineer")
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a valid email" do
      subject.email = "falsemail"
      expect(subject).to_not be_valid
    end

    it "is not valid without a first name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a last name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a function" do
      subject.function = nil
      expect(subject).to_not be_valid
    end
  end
end
