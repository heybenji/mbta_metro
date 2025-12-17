defmodule Storybook.Styleguide.Content do
  use PhoenixStorybook.Story, :page

  import Earmark

  def doc, do: "Use this style guide to write clear, effective, on-brand copy for the MBTA website. You can also apply these rules to other rider-facing materials like signage, social media posts, advertisements, and flyers. Learn the principles every writer should follow when developing copy for the MBTA website. 
"

  def render(assigns) do

    rendered_markdown = Earmark.from_file!("storybook/styleguide/content.md")

    assigns = assign(assigns, :html, rendered_markdown)

    ~H"""
      {Phoenix.HTML.raw(@html)}
    """
  end
end
