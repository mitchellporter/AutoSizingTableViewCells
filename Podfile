# Uncomment this line to define a global platform for your project
# platform :ios, '8.0'
# Uncomment this line if you're using Swift
# use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!
link_with 'AutoSizingTableViewCells'
platform :ios, '8.0'
inhibit_all_warnings!
target 'AutoSizingTableViewCells' do
pod 'HeapInspector', :configurations => ['Debug']
pod 'FLEX', '~> 2.3', :configurations => ['Debug']
pod 'Reveal-iOS-SDK', :configurations => ['Debug']
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
    end
end

post_install do |installer|
    `find Pods -regex 'Pods/pop.*\\.h' -print0 | xargs -0 sed -i '' 's/\\(<\\)pop\\/\\(.*\\)\\(>\\)/\\"\\2\\"/'`
end
