class ExamplesController < ApplicationController
  def index
    examples = Example.all.select(:id, :name, :color)
    render json: examples
  end
end
