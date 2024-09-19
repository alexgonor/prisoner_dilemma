require "rails_helper"

RSpec.describe Matches::Play do
  shared_examples "creates strategy_matches and match" do
    it "creates strategy_matches and match" do
      expect(subject.count).to eq(2)
      expect(subject.first).to be_an_instance_of(StrategyMatch)
      expect(subject.first.match).to be_an_instance_of(Match)
    end
  end

  let(:competition) { create(:competition) }
  let(:strategy_1) { create(:strategy, title: "title_1", code: code_1) }
  let(:strategy_2) { create(:strategy, title: "title_2", code: code_2) }
  let(:input) { [[strategy_1, strategy_2], competition.id] }

  subject { described_class.call(*input) }

  context "when one always cooperate and another always betrays" do
    let(:code_1) { "true" }
    let(:code_2) { "false" }

    it "strategy_2 winner" do
      expect(subject.first.match.winner).to eq("title_2")
    end

    include_examples "creates strategy_matches and match"
  end

  context "when both always cooperate" do
    let(:code_1) { "true" }
    let(:code_2) { "true" }

    it "returns draw" do
      expect(subject.first.match.winner).to eq("draw")
    end

    include_examples "creates strategy_matches and match"
  end

  context "when one strategy betray only in after betray and another is tester" do
    let(:code_1) { "moves_{{my_number}}.empty? ? true : moves_{{opponent_number}}.last" }
    let(:code_2) { "moves_{{my_number}}.empty? ? false : true" }

    it "returns draw" do
      expect(subject.first.match.winner).to eq("draw")
    end

    include_examples "creates strategy_matches and match"
  end
end
