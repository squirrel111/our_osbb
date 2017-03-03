class AgreesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @vote = Voting.find(params[:voting_id])
    @chack_vote = NotAgree.where(room: @user.room, voting_id: @vote.id)
    if @chack_vote == []
      Agree.create room: @user.room, voting_id: @vote.id
    else
      NotAgree.find_by(room: @user.room).destroy
      Agree.create room: @user.room, voting_id: @vote.id
    end
    redirect_to user_voting_path(params[:user_id], params[:voting_id])
  end
end
