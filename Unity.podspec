Pod::Spec.new do |s|
s.name = 'Unity'
s.version = '1.0.0'
s.summary = 'Unity 3D - MonoBehavirour'
s.description = 'MonoBehaviour Swift'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.author = { 'Helbert Gomes' => 'helbertgs@gmail.com' }
s.source = { :git => 'https://github.com/<GITHUB_USERNAME>/Unity.git', :tag => s.version.to_s }
s.homepage = 'http://facebook.com/helbert.gs'
s.platform = :ios
s.ios.deployment_target = '9.0'
s.source_files = 'Unity/Classes/**/*'
end
