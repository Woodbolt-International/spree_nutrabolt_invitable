class ApplicationMailer < ActionMailer::Base
  default from: Spree::Config.mails_from
  layout 'mailer'
end
