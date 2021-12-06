require "rails_helper"

RSpec.describe StaffMember, type: :model do
  describe "password=" do
    example "入力された文字列に対して、hashed_passwordは長さ60の文字列になる" do
      member = StaffMember.new
      member.password = "test_password"
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)
    end

    example "入力された文字列がnilの時、hashed_passwordはnilになる" do
      member = StaffMember.new(hashed_password="test")
      member.password = nil
      expect(member.hashed_password).to be_nil
    end
  end
end
