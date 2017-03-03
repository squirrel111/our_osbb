class VotingsController < ApplicationController

  def index
    @vote = Voting.all
  end

  def show
    @user = User.find(current_user.id)
    @vote = Voting.find(params[:id])
    @agree = Agree.where(voting_id: params[:id])
    @not_agree = NotAgree.where(voting_id: params[:id])
  end
  
  def create
    current_user.votings.create(vot_params)
    redirect_to user_votings_path(current_user.id)
  end
  
end

private
def vot_params
  params.require(:voting).permit(:title, :start_date, :end_date)
end
