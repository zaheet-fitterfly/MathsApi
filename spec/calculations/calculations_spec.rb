
require "rails_helper"
RSpec.describe "Calculates", type: :request do
    describe "POST /maths/calculates" do
        it "calculates the SUM" do
            post "/maths/calculates", params: {num1: 2, num2: 3, operation: "SUM"}
            expect(response).to have_http_status(:ok)
            expect(response.body).to eq({result: 5}.to_json)
            puts "response.body: #{response.body}"
        end
        it "calculates the SUB" do
            post "/maths/calculates", params: {num1: 3, num2: 3, operation: "SUB"}
            expect(response).to have_http_status(:ok)
            expect(response.body).to eq({result: 0}.to_json)
            puts "response.body: #{response.body}"
        end
        it "calculates the TIMES" do
            post "/maths/calculates", params: {num1: 2, num2: 3, operation: "TIMES"}
            expect(response).to have_http_status(:ok)
            expect(response.body).to eq({result: 6}.to_json)
            puts "response.body: #{response.body}"
        end
        it "calculates the DIVIDE" do
            post "/maths/calculates", params: {num1: 15, num2: 3, operation: "DIVIDE"}
            expect(response).to have_http_status(:ok)
            expect(response.body).to eq({result: 5}.to_json)
            puts "response.body: #{response.body}"
        end
    end
end