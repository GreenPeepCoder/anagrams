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

describe "#second_anagram?" do
    it 'should return false if the strings being compared arent the same length' do
        expect(second_anagram?("dogs", "god")).to be(false)
    end

    it 'should return true if the two words are anagrams' do
        expect(second_anagram?("elvis", "lives")).to be(true)
        expect(second_anagram?("gizmo", "sally")).to be(false)
    end
end

describe "#third_anagram?" do
    it 'should return true if the two words are anagrams' do
        expect(third_anagram?("elvis", "lives")).to be(true)
        expect(third_anagram?("gizmo", "sally")).to be(false)
    end
end

describe "#fourth_anagram?" do
    it 'should return true if the two words are anagrams' do
        expect(fourth_anagram?("elvis", "lives")).to be(true)
        expect(fourth_anagram?("gizmo", "sally")).to be(false)
    end
end