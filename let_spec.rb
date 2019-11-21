require "awesome_print"

$count = 0
RSpec.describe "let" do
  let!(:count) { $count += 1 }

  it "memoizes the value" do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it "is not cached across examples" do
    expect(count).to eq(2)
  end
end

# $count = 0
# RSpec.describe "let!" do
#   invocation_order = []

#   let!(:count) do
#     invocation_order << :let!
#     $count += 1
#   end

#   it "calls the helper method in a before hook" do
#     invocation_order << :example
#     expect(invocation_order).to eq([:let!, :example])
#     expect(count).to eq(1)
#   end
# end