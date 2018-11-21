class InvestmentHistoriesController < ApplicationController
    def index
        binding.pry
        @investment_histories = InvestmentHistory.search_by_investment_name(params[:investment])
            .search_by_update_year(params[:year].to_i)
            .search_by_update_month(params[:month].to_i)

        #/views/investment_histories/index.html.erb内の検索値に初期値を設定する。
        #@investment_number = Investment.all.find_index(Investment.find_by(id: investment_params[:id].to_i)) + 1
        @update_year = params[:year]
        @update_month = params[:month]
    end
    
    def show
    end
end
