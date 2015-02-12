require 'yaml'
require 'erb'

module ConfigsLoader
  def self.load_configs(env, *yml_files)
    yml_files.each do |yml_file|
      ENV.update(YAML.load(ERB.new(File.read("./config/#{yml_file}.yml")).result)[env.to_s])
    end
  end
end
