class CookiesController < ApplicationController
  def show
    world = cookies.signed["hello"]
    if world != "world"
      raise StandardError, world.class
    end
    head 200
  end

  def create
    cookies.signed["hello"] =  {
      value: "world",
      domain: 'example.com',
    }
    head 200
  end
end
