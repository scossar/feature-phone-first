# name: feature-phone-first
# version: 0.1

after_initialize do
  ApplicationController.class_eval do
    def set_layout
      if basic?
        File.expand_path('../app/views/layouts/basic.html.erb', __FILE__)
      else
        'application'
      end
    end

    private

    def basic?
      request.host =~ /^basic\.discourse\.dev/
    end
  end
end



