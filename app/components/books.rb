class Books < Netzke::Basepack::Grid
  def configure(c)
    super
    c.model = "Book"
  end
end
