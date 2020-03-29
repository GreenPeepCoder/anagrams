
def first_anagram?(str1, str2)
    perms = get_perms(str1)
    perms.include?(str2)
end

def get_perms(str)
    perms = str.split("").permutation.to_a.map{ |perm| perm.join()}
end
