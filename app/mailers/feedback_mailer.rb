class FeedbackMailer < ApplicationMailer

    def feedback_mailer(username, email, feedback)
        @email = email
            @username = username
            @feedback = feedback
            mail(from: email, subject: 'Feed Back', to: 'feedback_recieve@bananacoding.com')
    end
end
