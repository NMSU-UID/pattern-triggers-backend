class Api::V1::HelloController < ApplicationController
  def index
    render :json => {msg: 'Hello World! - Pattern Triggers'}
  end
end
