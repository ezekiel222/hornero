gateway = Braintree::Gateway.new(
  :environment => :sandbox,
  :merchant_id => "BRAINTREE_MERCHANT_ID",
  :public_key => "BRAINTREE_PUBLIC_KEY",
  :private_key => "BRAINTREE_PRIVATE_KEY",
)
