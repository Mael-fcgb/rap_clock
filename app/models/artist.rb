class Artist < ApplicationRecord
    has_many :projects

    def to_s
        pseudonym
    end
end
