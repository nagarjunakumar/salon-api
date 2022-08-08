class Salon < ApplicationRecord
    has_many :services
    has_many :work_schedules
    accepts_nested_attributes_for :services,:work_schedules, allow_destroy: true
end
