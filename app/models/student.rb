# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(student_name)
    if student_name==""
      self.all
    else
      self.all.each do |student|
        if student.name.include?(student_name.capitalize)
          self.find_by(name: student_name.capitalize)
        end
      end
    end
  end


end
