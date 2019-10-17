# require "rspec/autorun"

class Membership
  def initialize(admin)
    @admin = :admin
  end

  def promote_to_admin
    puts @admin
    @admin = true
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

#     # exercise
#     membership.promote_to_admin

#     # verify
#     # expect(membership).to be_admin
#   end
# end

# test.untrust
# puts people[:address][:city]
# name = gets

# puts name.upcase
test = {:satu => 19,
  :oke => 20}
puts test
# puts true ? 5 : ''