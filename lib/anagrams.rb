# Phase I
# since we are working with permutations here, time complexity is bad: O(n!)
def first_anagram?(str1, str2)
    perms = get_perms(str1)
    perms.include?(str2)
end

def get_perms(str)
    perms = str.split("").permutation.to_a.map{ |perm| perm.join()}
end

# Phase II
# I think the time complexity for this one is O(n) -- just itter through a loop
def second_anagram?(str1, str2)
    return false if str1.length != str2.length

    str1.each_char.with_index do |char, i|
        if str2.index(char) != nil
            str2[str2.index(char)] = ""
        end
    end
    str2.empty? ? true : false
end

# Phase III
def third_anagram?(str1, str2)
    str1.split("").sort!.join() == str2.split("").sort!.join()
end

# Phase IV
def fourth_anagram?(str1, str2)
    h1 = Hash.new(0)
    h2 = Hash.new(0)
    str1.each_char do |char|
        h1[char] += 1
    end
    str2.each_char do |char|
        h2[char] += 1
    end

    h1 == h2 ? true : false
end