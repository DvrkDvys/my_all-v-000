require 'pry'

def my_all?(array)
  i = 0
  collection = []
    while i < array.length
      collection << yield(array[i])
      i += 1
    end
  collection
  binding.pry
  if collection.includes?(false)
    return false
  else 
    return true
  end
end



#   it "returns false when the block condition is not met" do
#     expect(my_all?(collection) {|i| i < 3}).to eq(false)
#   end
  
#   it "returns true when the block condition is met" do
#     expect(my_all?(collection) {|i| i < 4}).to eq(true)
#   end
# end