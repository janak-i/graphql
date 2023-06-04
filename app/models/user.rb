class User < ApplicationRecord
    has_many :posts
    validate :password_validation
    # validate :custom_password_validation
    private
    
    def password_validation
        if password.present? && password.length<8
            errors.add(:password, 'must be at least 8 characters long')
        end
    end
    
    def custom_password_validation
        return if password.blank? # Skip validation if password is blank
        unless contains_number?(password) && contains_character?(password) && contains_special_symbol?(password) && contains_number(password)
            errors.add(:password, 'must contain at least one number, one character, and one special symbol')
        end
    end
    
    def contains_number?(password)
        password.match?(/\d/)
    end
    
    def contains_character?(password)
        password.match?(/[a-zA-Z]/)
    end
    
    def contains_special_symbol?(password)
        password.match?(/[!@#$%^&*()]/)
    end

    def contains_number(password)
        password.match?([/0123445566789/])
    end

end

