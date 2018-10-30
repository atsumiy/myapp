# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    InvestmentService.create(name: "SBI証券",service_url: "https://site2.sbisec.co.jp/ETGate/?_ControlID=WPLETpfR001Control&_PageID=DefaultPID&_DataStoreID=DSWPLETpfR001Control&_ActionID=DefaultAID&getFlg=on&_scpr=int_pr1%3d170101_cmn_ctop_tlink_01")
    InvestmentService.create(name: "マネースクエア",service_url: "https://www.m2j.co.jp/mp/#")
    InvestmentService.create(name: "WealthNavi",service_url: "https://invest.wealthnavi.com/")
    Investment.create(investment_service_id: 1, name: "FX")
    Investment.create(investment_service_id: 2, name: "FX")
    Investment.create(investment_service_id: 1, name: "iDeCo(確定拠出年金)")
    Investment.create(investment_service_id: 1, name: "投資信託")
    Investment.create(investment_service_id: 3, name: "ロボアドバイザー投資") 
 

  
