class User < ApplicationRecord
    def authenticate(password)
        if self.password == password
            return true
        end

        return false
    end
end
