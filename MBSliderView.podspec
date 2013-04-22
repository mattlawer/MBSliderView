Pod::Spec.new do |s|
  s.name         = "MBSliderView"
  s.version      = "0.0.1"
  s.summary      = "An iOS control that looks like the 'Slide to unlock' slider."
  s.homepage     = "http://mattlawer.github.com/MBSliderView/"
  s.license      = 'BSD'
  s.author       = { "Mathieu Bolard" => "mattlawer08@gmail.com" }
  s.source       = { :git => "https://github.com/mattlawer/MBSliderView.git", :commit => "37ed4e19b4b388b9053b0e901619c0efba5e3ce0" }
  s.platform     = :ios, '5.0'

  s.source_files = 'MBSliderView Class/MBSliderView.{h,m}'
end
