defmodule ChuckAppWeb.PageView do
  use ChuckAppWeb, :view
  
  def jokes do
    ChuckNorris.Server.get_jokes
  end
end
