class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end

  def list
    @subjects = Subject.all
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      redirect_to action: 'list'
    else
      render action: 'new'
    end
  end

  private
  def subject_params
    params.require(:subject).permit(:name, :url)
  end
end
