Rails.configuration.stripe = {
  :publishable_key => 'pk_test_ENDzveOhD0HrdkOMBv91SceA',
  :secret_key      => 'sk_test_IuXlXky0Ry5SI4NVJ2J9Hd4v'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]