RSpec.describe "#sort_by" do
  (1..10).to_a.each do |n|
    context "with #{n} items in array" do
      let :array do
        (0...n).to_a
      end
      it "preserves the order when sorted by the same value" do
        expect(array.sort_by { |i| nil }).to eq array
      end
    end
  end
end
