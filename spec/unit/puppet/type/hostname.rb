# encoding: utf-8

require 'spec_helper'
describe 'hostname' do
  describe 'old style' do
    fake_operatingsystem
    describe Puppet::Type.type(:hostname) do
      it_behaves_like 'name is the namevar'
    end
  end
  describe 'resource-api' do
    describe 'the hostname type' do
      it 'loads' do
        expect(Puppet::Type.type(:hostname)).not_to be_nil
      end
    end
  end
end
