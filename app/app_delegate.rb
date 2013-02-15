class AppDelegate < ProMotion::AppDelegateParent
  def on_load(app, options)
    open_screen CoursesScreen.new(nav_bar: true)
  end
  
end
