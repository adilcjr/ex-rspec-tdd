require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    # setup
    student = Student.new

    #verify
    expect(student).to receive(:bar)

    #exercise
    student.bar
  end

  it '#foo(args)' do
    student = Student.new

    expect(student).to receive(:foo).with(123).twice

    student.foo(123)
    student.foo(123)
  end

  it '#foo(123).return(true)' do
    student = Student.new

    expect(student).to receive(:foo).with(123).and_return(true)

    puts "foo = #{student.foo(123)}"
  end
end
