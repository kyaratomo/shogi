class QuizzesController < ApplicationController
  def show
    @q_num = params[:id].to_i
    
    @pattern = params[:pattern]


    if @pattern == "all"
        q_scope = Question.all
    else
        q_scope = Question.where(pattern: @pattern)
    end
    q_sum = q_scope.count


    rand_num = SecureRandom.random_number(q_sum)
    @q = q_scope.offset(rand_num).first
    # 1問目以外はuser_idを受け取る
 @user_id = params[:user_id] if @q_num != 1
  end


  def create
    q_num = params[:q_num].to_i
    #フォームから送られてきた「今が何問目か（q_num）」を数字として取り出します。
    user_id = params[:user_id].presence
    pattern = params[:pattern].presence
    user_ans = user_id ? UserAnswer.find(user_id) : UserAnswer.new
    q_attr = "q#{q_num}_"
    user_ans[q_attr + 'id'] = params[:q_id].to_i
    user_ans[q_attr + 'yourans'] = params[:choice].to_i
    user_ans[q_attr + 'isCorrect'] = (Question.find(params[:q_id].to_i).correct == params[:choice].to_i) 
    user_ans.save


    if q_num == 5
      redirect_to result_path(user_id: user_ans.id, pattern: pattern)
    else
      redirect_to pattern_quiz_path(pattern, q_num + 1, user_id: user_ans.id)
    end
  end


  def result
    @user_ans = UserAnswer.find(params[:user_id])
    @pattern = params[:pattern]
  end
end
