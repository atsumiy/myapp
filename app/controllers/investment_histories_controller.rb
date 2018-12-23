class InvestmentHistoriesController < ApplicationController
    def index
        @investment_histories = InvestmentHistory.search(params[:investment], params[:year], params[:month])
           
        #/views/investment_histories/index.html.erb内の検索値に初期値を設定する。
        @investment_number = 0
        if(params[:investment])
            @investment_number = Investment.all.find_index(Investment.find_by(id: params[:investment].to_i)) + 1
        end
            @update_year = params[:year]
        @update_month = params[:month]
    end
    
    def show
    end
end
