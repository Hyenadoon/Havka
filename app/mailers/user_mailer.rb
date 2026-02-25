class UserMailer < ApplicationMailer
    def test_email(to:)
      mail(to: to, subject: "Test email", body: "Hello from Rails")
    end
  end