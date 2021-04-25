FactoryBot.define do
  factory :task do
    title { 'test_Task' }
    status { rand(2) }
    from = Date.parse("2019/08/01")
    to   = Date.parse("2019/12/31")
    deadline { Random.rand(from..to) }
    # association :project

    trait :completion_task do
      project_id { 1 }
      status { :done } 
      completion_date { Time.current.yesterday }
    end
  end
end
