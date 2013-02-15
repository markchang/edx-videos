class VideosScreen < ProMotion::TableScreen
  attr_accessor :course_id

  title "Videos"
  searchable placeholder: "Search Videos"

  def on_load
    p self.course_id
  end

  def will_appear
  end

  def on_appear
  end

  def show_video(args)
    ProMotion::Console.log("Action: #{args[:url]}", with_color: ProMotion::Console::RED_COLOR)
    videos = HCYoutubeParser.h264videosWithYoutubeURL(NSURL.URLWithString(args[:url]))
    mp = MPMoviePlayerViewController.alloc.initWithContentURL(NSURL.URLWithString(videos["medium"]))
    # open mp, modal: true
    self.presentMoviePlayerViewControllerAnimated(mp) # This works better for this particular movie player
  end

  def table_data
    [{
      title: "",
      cells: video_cells
    }]
  end

  def video_cells
    @video_cells ||= begin
      videos = Video.all
      cells = []

      course_videos = videos.select { |v| v.course_id == self.course_id }
      course_videos.each do |v|
        cells << {
          title: v.description,
          action: :show_video,
          arguments: { url: v.url }
        }
      end

      cells
    end
  end
end