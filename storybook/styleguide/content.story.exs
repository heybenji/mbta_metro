defmodule Storybook.Styleguide.Content do
  use PhoenixStorybook.Story, :page

  import PhoenixStorybook.Rendering.MarkdownRenderer

  def doc, do: "Use this style guide to write clear, effective, on-brand copy for the MBTA website. You can also apply these rules to other rider-facing materials like signage, social media posts, advertisements, and flyers. Learn the principles every writer should follow when developing copy for the MBTA website. 
"

  def render(assigns) do
    markdown = """
    
    For any subject not covered here, refer to _[The Chicago Manual of Style](https://www.chicagomanualofstyle.org/)_ or _[Merriam-Webster](https://www.merriam-webster.com/)_. 

    # Writing Principles

    ## Riders first

    Everything we write should serve a rider’s need. If it doesn’t, it shouldn't be on the website. We have an intranet for materials targeted at MBTA employees. 

    ## No jargon

    Use the terms our riders use, not our internal names for transit or fares related things. [Use plain language](https://www.plainlanguage.gov/). 

    Follow our MBTA-specific language guidelines

    ## Simplicity

    We serve riders with a wide range of reading and English-speaking levels. By writing simply, we can reach as many of them as possible.

    ## Empathy

    Write from the rider's perspective. Think about what they care about, not what is politically convenient or important to internal MBTA stakeholders. Remember that our riders are incredibly diverse.

    ## Brevity

    When in doubt, cut copy. Aim to convey information in the fewest number of words and the fewest number of pages possible.

    Voice and Tone

    ## Be personal

    Use first-person pronouns (we, our, us) and refer to the reader as "you."

    ## Be straightforward

    Use plain English and everyday words. Avoid long, complex sentences. Address just one idea per paragraph.

    ## Be helpful

    Advise riders on their best options. Consider what people may also need to know and link to it.

    ## Be inclusive

    Respect the diversity of our riders and their experiences. Don't leave people out. MBTA supports using gender-neutral language and gender-inclusive pronouns like “they” to refer to individuals. For clarity, it can help to refer to groups of people instead of individuals, or reword to avoid pronouns at all. 

    ### Examples:  

    * “Riders should be listed by their last names” instead of “Each rider should be listed by their last name.” 

    * “Riders should remove their backpacks when the bus is crowded” instead of “Each rider should remove their backpack when the bus is crowded.” 
    """

    rendered_markdown = markdown_to_html(markdown)
    assigns = assign(assigns, :html, rendered_markdown)

    ~H"""
    <div>
      {Phoenix.HTML.raw(@html)}
    </div>
    """
  end
end
