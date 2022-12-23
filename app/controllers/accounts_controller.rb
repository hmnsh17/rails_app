class AccountsController < ApplicationController
  def index
    @accounts=Account.All
  end
end
