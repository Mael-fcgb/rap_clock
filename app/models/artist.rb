class Artist < ApplicationRecord
    has_and_belongs_to_many :projects

    def to_s
        pseudo
    end
end
