class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
    render "secrets/secret"
  end

  def new
    @secret = Secret.new
  end
end
