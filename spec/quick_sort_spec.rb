require 'spec_helper'
require File.expand_path('../quick_sort', File.dirname(__FILE__))

describe "quick_sort method" do
  it "returns the input array if it includes non-Integer elements" do
    expect(quick_sort([''])).to eq([''])
    expect(quick_sort(['test', 0])).to eq(['test', 0])
    expect(quick_sort([[0,1]])).to eq([[0,1]])
  end

  it "returns the input array when its length is 1" do
    expect(quick_sort([0])).to eq([0])
    expect(quick_sort([-1])).to eq([-1])
    expect(quick_sort([1])).to eq([1])
  end

  it "returns correctly sorted array" do
    expect(quick_sort([9,4,2,0,1,6,7])).to eq([0,1,2,4,6,7,9])
    expect(quick_sort([7,6,5,4,3,2,1,0])).to eq([0,1,2,3,4,5,6,7])
    expect(quick_sort([9,4,2,0,1,6,7,-1,-100])).to eq([-100,-1,0,1,2,4,6,7,9])
    expect(quick_sort([1,-1])).to eq([-1,1])
    expect(quick_sort([-2,-5])).to eq([-5,-2])
  end
end
