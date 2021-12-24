feature 'add new project' do
  scenario 'user can add new project' do
    visit('/')
    click_link('Add new project')
    fill_in('title', with: 'New project')
    fill_in('project_number', with: 'PJ123')
    fill_in('unit_cost', with: '5')
    fill_in('units', with: '100')
    fill_in('deadline', with: '2022/1/3')
    fill_in('payment_date', with: '2022/2/28')
    fill_in('status', with: 'in progress')
    click_on('Submit')
    expect(page).to have_content('New project')
    expect(page).to have_content('PJ123')
    expect(page).to have_content('5')
    expect(page).to have_content('100')
    expect(page).to have_content('2022/1/3')
    expect(page).to have_content('2022/2/28')
    expect(page).to have_content('in progress')
  end
end