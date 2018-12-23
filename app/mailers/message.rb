class Message < ActionMailer::Base
  # デフォルトでの送信元のアドレス
  default from: 'from@example.com'

  def hello(name)
    @name = name
    mail(
      # TOは単体のメールアドレスでもArrayのメールアドレスでも大丈夫
      to:      'to@example.net',
      subject: 'Mail from Message',
    ) do |format|
      format.html
    end
  end
end