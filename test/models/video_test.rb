require 'test_helper'

class VideoTest < ActiveSupport::TestCase
 
  test 'should not store empty video' do
    video = Video.save
    video.save
    refute video.valid?
  end
  
  test 'should store valid video' do
    
    video = Video.new
    
    video.title = 'Video Title'
    video.about = 'About the video'
    
    video.save
    assert video.valid?
    
  end
  
  test 'should not store duplicate title' do
    
    video1 = Video.new
    video1.title = "Vid"
    video1.about = "Vid1"
    video1.save
    assert video1.valid?
    
    video2 = Video.new
    video2.title = "Vid"
    video2.about = "Vid2"
    video2.save
    refute video2.valid?
    
    
  end
 
end
