require 'csv'
 
CSV.generate do |csv|
  csv_column_names = ["投資対象","サービス名","投資合計額","積立月額","最終更新日"]
  csv << csv_column_names
  @user_portfolio.each do |portfolio|
    csv_column_values = [
        Investment.find_by(id: portfolio.investment_id).name,
        InvestmentService.find_by(id: Investment.find_by(id: portfolio.investment_id).investment_service_id).name,
        number_with_delimiter(portfolio.total_value),
        number_with_delimiter(portfolio.reserve_value),
        portfolio.updated_at.strftime("%Y-%m-%d(%a)"),
    ]
    csv << csv_column_values
  end
end


