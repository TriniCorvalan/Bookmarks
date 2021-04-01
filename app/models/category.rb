class Category < ApplicationRecord
  belongs_to :supracategory, class_name: 'Category', foreign_key: :category_id, optional: true
  has_many :subcategories, class_name: 'Category'
  has_many :bookmarks

  def to_s
    title
  end

  def parents(category = self)
    @parents_results ||= []
    return @parents_results if category.supracategory.nil?
    @parents_results << supracategory
    parents(category.supracategory)
  end

  def children(category = self.subcategories)
    @children_results ||= []
    @categories_to_check ||= []
    @categories_to_check += category

    category.each_with_index do |child, index|
      @children_results << child
      @categories_to_check.find { |c| c == child }
      children(child.subcategories)
    end
    return @children_results
  end

  def family(category = self)
    @family_results = []
    @supra = category.parents
    @sub = category.children

    @family_results << @supra
    @family_results << @sub
    
    return @family_results
  end
end
