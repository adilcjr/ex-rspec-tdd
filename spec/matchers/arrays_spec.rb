describe Array.new([1,2,3]) do
  it '#include' do
    is_expected.to include(2)
    is_expected.to include(2,1)
  end

  it '#match_array' do
    expect(subject).to match_array([1,2,3])
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(1,2,3)
  end
end