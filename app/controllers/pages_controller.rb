class PagesController < ApplicationController

  expose(:pages)
  expose(:page, finder: :find_by_slug, finder_parameter: :slug, attributes: :page_params)

  # Move this to the ApplicationController if you want to have
  # the navigation in your Application Layout
  expose(:page_slugs ) { Page.select(:slug).map(&:slug) }

  def create
    if page.save
      redirect_to slug_path(new_page.slug)
    else
      render 'new'
    end
  end

  def update
    if page.save
      redirect_to slug_path(page.slug)
    else
      render 'edit'
    end
  end

  def destroy
    page.destroy
    redirect_to :root, message: "#{page.name} was deleted."
  end

  private

  def page_params
    params.require(:page).permit(:name, :body)
  end

end
