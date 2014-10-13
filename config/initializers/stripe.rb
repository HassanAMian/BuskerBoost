Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_8JyzvWzbNRnhLiPtuSF1NFib'],
  :secret_key      => ENV['sk_test_GJKlVP7188FiTknosUMrirWW']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]