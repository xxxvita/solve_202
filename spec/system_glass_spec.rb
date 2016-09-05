require_relative '../lib/system_glass.rb'
require 'rspec'

describe 'Laser max left' do
  it '.laser_start left' do
    expect(SystemGlass.laser_start(0, -30.0)).to eq [:success, :A, 0]
  end

  it '.laser_start right' do
    expect(SystemGlass.laser_start(0, 30.0)).to eq [:success, :B, 0]
  end

  it '.laser_start center' do
    expect(SystemGlass.laser_start(0, 0.0)).to eq [:success, :C, 1]
  end
end
