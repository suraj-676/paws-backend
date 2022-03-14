class Animal < ApplicationRecord
  belongs_to :adopter, class_name: "User", optional: true

  belongs_to :admin, class_name: "User", optional: true
end
