class BlogMailer < ApplicationMailer
  def blog_mail(blog)
    @blog = blog
    mail to: @blog.user.email, subject: "お問い合わせ確認メール"
  end
end
