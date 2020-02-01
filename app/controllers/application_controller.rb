class ApplicationController < ActionController::API
  def frontend
    render file: "public/index.html", layout: false
  end
end
