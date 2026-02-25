class InboundMailbox < ApplicationMailbox
    def process
      FromEmail.create!(
        from: mail.from&.first,
        subject: mail.subject,
        body: mail.decoded
      )
    end
  end