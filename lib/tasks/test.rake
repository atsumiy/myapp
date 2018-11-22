namespace :regularInvestment do
    
    desc "1ヶ月に1回user_portfolios.reserve_valueが0でない場合に
          reserve_valueの金額 = investment_histories.investment_monthly_valueとして
          investment_historiesにデータを追加する。"
    task :generator => :environment do
        UserPortfolio.where.not(reserve_value: 0).each do |user_portfolio|
            investment_history = InvestmentHistory.new(
                user_portfolio_id: user_portfolio.id,
                investment_monthly_value: user_portfolio.reserve_value,
                update_year: Time.zone.now.year,
                update_month: Time.zone.now.month
                )
            p investment_history
            investment_history.save
        end
  end 
end
