class ApplicationMailer < ActionMailer::Base
  default to: "alex@cszone.com", from: "alex@cszone.com"
  layout 'mailer'
end
