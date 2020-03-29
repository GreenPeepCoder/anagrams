require 'rspec'
require 'anagrams'

describe "#get_perms" do
    let(:word) {"spot"}

    it 'should generate and store all possible anagrams of given string' do
        test = word.split("").permutation.to_a.map { |perm| perm.join()}
        expect(get_perms(word)).to eq(test)
    end

end
describe "#first_anagram?" do
    it 'should check if the second string is an anagram of the first string' do
        expect(first_anagram?("gizmo", "sally")).to be(false)
        expect(first_anagram?("elvis", "lives")).to be(true)
    end
end