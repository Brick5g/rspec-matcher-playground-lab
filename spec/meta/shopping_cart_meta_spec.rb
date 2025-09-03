# frozen_string_literal: true

describe '[LAB CHECKER] ShoppingCart Matcher Playground Spec Requirements' do
  let(:student_spec_files) { Dir[File.expand_path('../../student/*_spec.rb', __FILE__)] }
  let(:all_content) { student_spec_files.map { |f| File.read(f) }.join("\n") }

  it 'has at least one student spec file in spec/student/' do
    expect(student_spec_files).not_to be_empty, "Expected at least one spec file in spec/student/, but none were found. Did you create your spec file(s)?"
  end

  it 'uses at least one equality matcher for ShoppingCart' do
    found = false
    student_spec_files.each do |file|
      content = File.read(file)
      # Look for an expectation using eq/eql/equal with ShoppingCart
      if content.match(/expect\(.*\)\.to (eq|eql|equal)/)
        found = true
        break
      end
    end
    expect(found).to be(true), "Expected your specs to use at least one equality matcher (eq/eql/equal) in an expectation involving ShoppingCart, e.g. expect(cart.total).to eq(42)."
  end

  it 'uses at least one predicate matcher for ShoppingCart' do
    found = false
    student_spec_files.each do |file|
      content = File.read(file)
      # Look for an expectation using a predicate matcher with ShoppingCart
      if content.match(/expect\(.*\)\.to (be_truthy|be_falsey|be_nil|be_empty)/)
        found = true
        break
      end
    end
    expect(found).to be(true), "Expected your specs to use at least one predicate matcher (be_truthy/be_falsey/be_nil/be_empty) in an expectation involving ShoppingCart."
  end

  it 'uses at least one collection matcher for ShoppingCart' do
    found = false
    student_spec_files.each do |file|
      content = File.read(file)
      # Look for an expectation using a collection matcher with ShoppingCart
      if content.match(/expect\(.*\)\.to (include|contain_exactly)/)
        found = true
        break
      end
    end
    expect(found).to be(true), "Expected your specs to use at least one collection matcher (include/contain_exactly) in an expectation involving ShoppingCart."
  end

  it 'uses at least one error matcher for ShoppingCart' do
    found = false
    student_spec_files.each do |file|
      content = File.read(file)
      # Look for an expectation using raise_error with ShoppingCart
      if content.match(/expect\s*\{[^}]*\}\s*\.to\s*raise_error/)
        found = true
        break
      end
    end
    expect(found).to be(true), "Expected your specs to use at least one error matcher (raise_error) in an expectation involving ShoppingCart, e.g. expect { ShoppingCart.new(nil) }.to raise_error."
  end

  it 'uses at least one change matcher for ShoppingCart' do
    found = false
    student_spec_files.each do |file|
      content = File.read(file)
      # Look for an expectation using change matcher with ShoppingCart
      if content.match(/expect\s*\{[^}]*\}\s*\.to\s*change/)
        found = true
        break
      end
    end
    expect(found).to be(true), "Expected your specs to use at least one change matcher (change { ... }) in an expectation involving ShoppingCart, e.g. expect { cart.add_item(item) }.to change { cart.items.count }."
  end
end
