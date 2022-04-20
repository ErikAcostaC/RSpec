# frozen_string_literal: false

# Comentario de la clase post report mailer
class PostReportMailer < ApplicationMailer
    @post = post

    def post_report(user, post, post_report)
        mail to: user.email, subject: "Post #{post.id} report"
    end
end
