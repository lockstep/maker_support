module NewPledgeCreator
  def self.perform(user, maker)
    Pledge.create!(
      dollars_per_podcast: user.dollars_per_podcast,
      maker: maker,
      user: user
    )
  end
end
