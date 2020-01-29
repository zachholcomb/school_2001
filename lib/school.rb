class School
  attr_accessor :start_time, :hours_in_school_day, :student_names, :end_time

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_time
  end

  def add_student_name(student)
    @student_names << student
  end

  def end_time
    time1 = @start_time.to_i
    time_end = time1 + @hours_in_school_day
    time_final = "#{time_end}:00"
    return time_final
  end

  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end

  def standard_student_names
    @student_names.collect { |name| name.capitalize }
  end

  def convert_end_time_to_clock_time
    @end_time
  end




end
