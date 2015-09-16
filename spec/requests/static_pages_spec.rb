require 'rails_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_content(heading) }
    it { should have_title(page_title) }
  end

  describe "Indexページのテスト" do
    before { visit root_path }
    let(:heading)    { 'Bootstrap SF1' }
    let(:page_title)    { 'Bootstrap SF1' }
    it_should_behave_like "all static pages"
  end

  describe "Themeページのテスト" do
    before { visit theme_path }
    let(:heading)    { 'Bootstrap SF1' }
    let(:page_title)    { 'Theme' }
    it_should_behave_like "all static pages"
  end

  describe "New Iconsページのテスト" do
    before { visit icons_path }
    let(:heading)    { 'Bootstrap SF1' }
    let(:page_title)    { 'New Icons' }
    it_should_behave_like "all static pages"
  end

  describe "New Compnentsページのテスト" do
    before { visit new_path }
    let(:heading)    { 'Bootstrap SF1' }
    let(:page_title)    { 'New Components' }
    it_should_behave_like "all static pages"
  end
end