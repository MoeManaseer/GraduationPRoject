class HomeController < ApplicationController
  before_action :isLoggedIn, only: [:index]
  def show
  end
  def index
    @forms1 = Form1.all
    @forms2 = Form2.all
    @forms3 = Form3.all
    @forms4 = Form4.all
    @forms5 = Form5.all
    @forms6 = Form6.all
    @forms7 = Form7.all
    @forms8 = Form8.all
    @forms9 = Form9.all
    @forms = Hash.new
    i = 1
    @forms8.each do |form|
      @forms[i] = form
      i = i+1
    end
    @forms1.each do |form|
      @forms[i] = form
      i = i+1
    end
    @forms2.each do |form|
      @forms[i] = form
      i = i+1
    end
    @forms3.each do |form|
      @forms[i] = form
      i = i+1
    end
    @forms4.each do |form|
      @forms[i] = form
      i = i+1
    end
    @forms5.each do |form|
      @forms[i] = form
      i = i+1
    end
    @forms6.each do |form|
      @forms[i] = form
      i = i+1
    end
    @forms7.each do |form|
      @forms[i] = form
      i = i+1
    end
    @forms9.each do |form|
      @forms[i] = form
      i = i+1
    end
    logger.info "hello"
    logger.info @forms
  end
  private
  def isLoggedIn
    if !logged_in?
      flash[:error] = "لا تستطيع فعل هذه العملية"
      redirect_to root_path
    end
  end
end
