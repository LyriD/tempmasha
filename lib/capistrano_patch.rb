module Capistrano
  module DSL
    module Paths
      def previous_release_path
        release_directories = ''
        on roles(:app) do
          release_directories = capture "cd #{releases_path}; ls -d */ -at1"
        end
        return nil if release_directories.empty?
        release_directories = release_directories.gsub(/\//, '').split("\n")
        return nil if release_directories[1].nil?
        Pathname.new "#{releases_path}/#{release_directories[1]}"
      end
    end
  end
end
