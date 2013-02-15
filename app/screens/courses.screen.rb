class CoursesScreen < ProMotion::TableScreen
  title "edX Courses"

  def on_load
  end

  def will_appear
  end

  def on_appear
  end

  def table_data
    [{
      title: "",
      cells: courses_cells
    }]
  end

  def show_course(arguments)
    p arguments[:course_id]
    open_screen VideosScreen.new(course_id: arguments[:course_id])
  end

  def courses_cells
    @courses_cells ||= begin
      courses = Course.all
      cells = []

      courses.each do |c|
        cells << {
          title: c.name,
          action: :show_course,
          arguments: { course_id: c.id }
        }
      end

      cells
    end
  end
end