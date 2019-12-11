class ApplicationMailer < ActionMailer::Base
  default to: 'contact@adorapet.com', from: 'contact@adorapet.com'
  layout 'mailer'
end
