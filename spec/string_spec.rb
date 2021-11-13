require "spec_helper"

describe String do
    describe "#<<" do
        example "add word" do
            s = "test"
            expect(s.size).to eq(4)
        end
    end
end
