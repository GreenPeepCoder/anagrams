# Phase I
def first_anagram?(str1, str2)
    perms = get_perms(str1)
    perms.include?(str2)
end

def get_perms(str)
    perms = str.split("").permutation.to_a.map{ |perm| perm.join()}
end

# Phase II
def second_anagram?(str1, str2)
    return false if str1.length != str2.length

    str1.each_char.with_index do |char, i|
        if str2.index(char) != nil
            str2[str2.index(char)] = ""
        end
    end
    str2.empty? ? true : false
end