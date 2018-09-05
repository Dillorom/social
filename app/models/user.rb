class User < ApplicationRecord
    has_many :subscriptions, foreign_key: :follower_id, dependent: :destroy
    has_many :leaders, through: :subscriptions

    def following?(leader)
        leaders.include? leader
    end

    def following!(leader)
        if leader != self && !following?(leader)
            leaders << leader
        end
    end
end
