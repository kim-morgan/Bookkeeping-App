require 'project'

describe Project do

  it 'should be able to create a new project' do
    result = Project.create(title: "My Project", deadline: "2022/01/03", project_number: "PJ123", unit_cost: "5", units: "1000", payment_date: "2022/02/28", status: "In Progress")
    expect(result.title).to eq "My Project"
    expect(result.deadline).to eq "2022-01-03"
    expect(result.project_number).to eq "PJ123"
    expect(result.unit_cost).to eq "5"
    expect(result.units).to eq "1000"
    expect(result.payment_date).to eq "2022-02-28"
    expect(result.status).to eq "In Progress"
  end

end