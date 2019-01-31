# RubyHashes
# Part I
def array_2_hash emails, contacts
    # YOUR CODE HERE
    if emails.length == 0
        return contacts
    end
    i=0
    contacts.each do |key, value|
        value << emails[i]
        i = i + 1
    end
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
    if contact_info == [[]]
        return contacts
    end
    i = 0
    contacts.each do |key, value|
        hold = Hash.new
        hold[:email] = contact_info[i][0]
        hold[:phone] = contact_info[i][1]
        contacts[key] = hold
        i = i + 1
    end
    return contacts
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
