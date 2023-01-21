class Post < ApplicationRecord
    validates :title, presence: true, length:{maximum:20}
    validates :startday, presence: true
    validates :finishday, presence: true
    validates :memo, length: {maximum:500}
    validate :start_finish_check

    def start_finish_check
        return false if finishday.blank? || startday.blank?
        if finishday<startday
        errors.add(:finishday, "は開始日より後の日付を登録してください")
        end

    end
end
