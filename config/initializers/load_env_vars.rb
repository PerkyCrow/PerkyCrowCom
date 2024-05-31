env_file = File.join(Rails.root, 'config', 'application.yml')

if File.exist?(env_file)
  YAML.load(File.open(env_file)).each do |key, value|
    ENV[key.to_s] = value unless ENV[key.to_s].present?
  end
end
