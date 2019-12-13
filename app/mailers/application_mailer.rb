class ApplicationMailer < ActionMailer::Base
  # mailer recipient (no smtp server set up but it's used by the preview)
  default to: 'contact@adorapet.com', from: 'contact@adorapet.com'
  layout 'mailer'
end
