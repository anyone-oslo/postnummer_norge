# frozen_string_literal: true

require "spec_helper"
require "postnummer_norge"

describe PostnummerNorge::PostalCode do
  describe "#exists?" do
    subject { described_class.exists?(code) }

    context "when code exists" do
      let(:code) { "0662" }

      it { is_expected.to eq(true) }
    end

    context "when code does not exist" do
      let(:code) { "0002" }

      it { is_expected.to eq(false) }
    end
  end

  describe "#find" do
    subject(:postal_code) { described_class.find(code) }

    context "when code exists" do
      let(:code) { "4085" }

      it { is_expected.to be_a(described_class) }
      specify { expect(postal_code.name).to eq("HUNDVÅG") }
      specify { expect(postal_code.municipality).to eq("STAVANGER") }
    end

    context "when code does not exist" do
      let(:code) { "0002" }

      it { is_expected.to eq(nil) }
    end
  end

  describe "#find_by_name" do
    subject(:results) { described_class.find_by_name(name) }

    let(:postal_code) { results.first }

    context "when name exists" do
      let(:name) { "HUNDVÅG" }

      it { is_expected.to be_an(Array) }
      specify { expect(postal_code).to be_a(described_class) }
      specify { expect(postal_code.code).to eq("4085") }
      specify { expect(postal_code.name).to eq("HUNDVÅG") }
      specify { expect(postal_code.municipality).to eq("STAVANGER") }
    end

    context "when name does not exist" do
      let(:name) { "XYZZYX" }

      it { is_expected.to eq(nil) }
    end
  end
end
