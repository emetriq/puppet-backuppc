require 'spec_helper'

describe 'backuppc::client', :type => :class do

  describe 'On an unknown operating system' do
    let(:facts) {{ :osfamily => 'Unknown' }}
    it 'should raise an error' do
      expect { should compile }.to raise_error(/is not supported by this module/)
    end
  end

  context "On Ubuntu" do
    let(:facts) {{ :osfamily => 'Debian' }}
    let(:params) {{ :backuppc_hostname => 'backuppc.test.com' }}
    it { should create_class('backuppc::client') }
    it { should contain_class('backuppc::params') }

    context 'ensure => absent' do
      let(:params) {{ :ensure => 'absent', :backuppc_hostname => 'backuppc.test.com' }}
      it { should create_class('backuppc::client') }
      it { should contain_class('backuppc::params') }
    end
  end

  context "On RedHat" do
    let(:facts) {{ :osfamily => 'RedHat' }}
    let(:params) {{ :backuppc_hostname => 'backuppc.test.com' }}
    it { should create_class('backuppc::client') }
    it { should contain_class('backuppc::params') }

    context 'ensure => absent' do
      let(:params) {{ :ensure => 'absent', :backuppc_hostname => 'backuppc.test.com' }}
      it { should create_class('backuppc::client') }
      it { should contain_class('backuppc::params') }
    end
  end
end
