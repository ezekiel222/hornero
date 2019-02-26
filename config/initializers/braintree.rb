gateway = Braintree::Gateway.new(
  :environment => :sandbox,
  :merchant_id => ENV.fetch('BRAINTREE_MERCHANT_ID'),
  :public_key => ENV.fetch('BRAINTREE_PUBLIC_KEY'),
  :private_key => ENV.fetch('BRAINTREE_PRIVATE_KEY'),
)
