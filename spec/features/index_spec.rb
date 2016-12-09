require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'says Hello to Rockin Robin with a h1 tag' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Rockin\' Robin'
    end
  end

  it 'displays Middleman logo' do
    expect(page).to have_css 'img[src*="middleman-logo.svg"]'
  end

  it 'displays project list' do
    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'My first website'
      expect(page).to have_content 'FizzBuzz'
    end
  end

  it 'renders footers partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'Portfolio'
      expect(page).to have_content 'powered by Middleman'
    end
  end

  it 'indicates unfinished projects with a gray square border' do
    # create a subject-object?
    unf = project.finished

    expect(page).to have_selector 'holder'
    within 'holder-body' do
      expect(page).to have_css 'lightgray'
    end

    expect(page).to have_selector 'holder-body'
    within 'holder-body' do
      expect(page).to have_content '(unfinished)'
    end
  end

end
