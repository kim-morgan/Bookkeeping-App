class Project

  attr_reader :id, :title, :deadline, :project_number, :unit_cost, :units, :payment_date, :status

  def initialize(id:, title:, deadline:, project_number:, unit_cost:, units:, payment_date:, status:)
    @id = id
    @title = title
    @deadline = deadline
    @project_number = project_number
    @unit_cost = unit_cost
    @units = units
    @payment_date = payment_date
    @status = status
  end

  def self.create(title:, deadline:, project_number:, unit_cost:, units:, payment_date:, status:)
    result = DatabaseConnection.query("INSERT INTO projects (title, deadline, project_number, unit_cost, units, payment_date, status)
                                       VALUES ($1, $2, $3, $4, $5, $6, $7)
                                       RETURNING id, title, deadline, project_number, unit_cost, units, payment_date, status",
                                       [title, deadline, project_number, unit_cost, units, payment_date, status])
    Project.new(id: result[0]['id'], title: result[0]['title'], deadline: result[0]['deadline'],
    project_number: result[0]['project_number'], unit_cost: result[0]['unit_cost'], units: result[0]['units'],
    payment_date: result[0]['payment_date'], status: result[0]['status'])
  end

end