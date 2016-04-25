module Helpers
  module GAPIEnv
    def method_missing(method, *args)
      if method.match(/^gapi_/)
        env = method.to_s.upcase
        raise "$#{env} is not set" if ENV[env].nil?
        ENV[env].gsub("\\n", "\n")
      else
        super
      end
    end
  end
end
