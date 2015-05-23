class StaticPagesController < ApplicationController
  def home
    # Query for the Ultimate Question to test database connection.
    ultimate_question = "SELECT 2 + 40;"

    @ultimate_answer = ActiveRecord::Base.connection.execute(ultimate_question).first[0]
  end
end
