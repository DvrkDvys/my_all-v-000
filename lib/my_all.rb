require 'pry'

def my_all?(collection)

end



  it "can handle an empty collection" do
    counter=0
    my_all?([]) do |x|
      counter+=1
    end
    expect(counter).to eq(0)
  end

  it "yields the correct element to the block" do
    yielded = []
    my_all?(collection) do |number|
      yielded.push number
    end
    expect(yielded).to eq([1,2,3])
  end

  it "returns false when the block condition is not met" do
    expect(my_all?(collection) {|i| i < 3}).to eq(false)
  end
  
  it "returns true when the block condition is met" do
    expect(my_all?(collection) {|i| i < 4}).to eq(true)
  end
end