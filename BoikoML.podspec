Pod::Spec.new do |s|
  s.name         = "BoikoML"
  s.version      = "0.3"
  s.summary      = "An open source framework for Machine Learning in swift"
  s.swift_version = "4.2"
  s.description  = <<-DESC
	BoikoML is an open source framework for machine learning tasks fully written in swift. At the moment, it can load datasets in CSV format. For further instructions about how to use it, go to the GitHub page.
                   DESC

  s.homepage     = "https://github.com/leboiko/BoikoML"
  
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  
  s.author             = { "Boiko" => "luiseduardo.boiko@gmail.com" }
  s.ios.deployment_target = "12.0"
  s.source       = { :git => "https://github.com/leboiko/BoikoML.git", :tag => "#{s.version}" }
  s.source_files  = "BoikoML", ".{h,m}"
end
