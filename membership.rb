require "rspec/autorun"
require "awesome_print"

class Membership
  def initialize(admin:)
    @admin = admin
  end

  def promote_to_admin
    puts @admin
    @admin = true
  end

  def admin?
    @admin
  end
end

# describe Membership do
#   before:each
# end
# member = Membership.new(admin: false)
# puts member.admin
# describe "#promote_to_admin" do
#   it "makes a regular membership an admin membership" do
#     # setup
#     membership = Membership.new(admin: false)

describe "#promote_to_admin" do
  it "makes a regular membership an admin membership" do
    # setup
    membership = Membership.new(admin: false)

    # exercise
    membership.promote_to_admin
    # verify
    expect(membership.admin?).to eq(true)
  end
end

#     # exercise
#     membership.promote_to_admin

#     # verify
#     # expect(membership).to be_admin
#   end
# end