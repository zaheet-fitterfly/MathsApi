Rails.application.routes.draw do
  namespace 'maths' do
    post "/calculates", to: "calculates#calculates"
  end
end
