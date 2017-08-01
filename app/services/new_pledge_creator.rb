module NewPledgeCreator
  def self.perform(user, maker)
    stripe_customer = create_stripe_customer(user, maker)
    Pledge.create!(
      dollars_per_podcast: user.dollars_per_podcast,
      maker: maker,
      stripe_customer_id: stripe_customer.id,
      user: user
    )
  end

  def self.create_stripe_customer(user, maker)
    Stripe::Customer.create(
      description: "Supporter for Maker #{maker.id}",
      source: user.stripe_source
    )
  end
end
