require 'spec_helper'

describe OPFile do
  before :each do
    @op_file = OPFile.new({filepath: "spec/test_file.txt"})
    @infected_file = OPFile.new({filepath: "spec/fake_infected_file.mean"})
  end

  describe "#process_file" do
    it "Updates the scan_results attribute with OPSWAT's scan results" do
      @op_file.process_file("md5")
      expect(@op_file.scan_results).to have_key("scan_details")
    end
    it "Correctly reports if file is infected" do
      @infected_file.process_file("md5")
      expect(@infected_file.scan_results["scan_all_result_a"]).to eq("Infected")
    end
  end


  describe "#print_result" do
    it "prints a formatted version of the scan results" do
      @op_file.process_file("md5")
      expect{@op_file.print_result}.to output(
        /Filename: test_file.txt/
      ).to_stdout
    end
  end
end