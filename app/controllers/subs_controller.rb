class SubsController < ApplicationController
  before_action :require_signed_in, except: [:index, :show]

  def new
    # @user = @current_user
    @sub = Sub.new
    render :new
  end

  def create
    # @user = @current_user
    @sub = Sub.new(sub_params)
    @sub.moderator_id = @current_user.id
    if @sub.save
      redirect_to sub_url(@sub)
    else
      flash.now[:errors] = @sub.errors.full_messages
      render :new
    end
  end

  def edit
    @sub = Sub.find(params[:id])
    render :edit
  end

  def update
    @sub = Sub.find(params[:id])
    if @sub.update(sub_params)
      redirect_to @sub
    else
      flash.now[:errors] = @sub.errors.full_messages
      render :edit
    end
  end

  def show
    @sub = Sub.find(params[:id])
    render :show
  end

  def index
    @subs = Sub.all
    render :index
  end

  def sub_params
    params.require(:sub).permit(:title, :description)
  end

end
