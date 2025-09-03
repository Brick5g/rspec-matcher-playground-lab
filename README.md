
# Lab 5: Matcher Playground (ShoppingCart)

Explore RSpec's matcher library by writing specs that use a variety of matcher types to test the **ShoppingCart** Ruby class. You'll practice using equality, predicate, collection, error, and change matchers to verify ShoppingCart's behavior.

**Note:** An `Item` class is provided in `lib/item.rb` for use with your `ShoppingCart`. You can use this class to create items with a `name` and `price`.

**Make sure you have Ruby installed and run `bundle install` before starting this lab.**

## Instructions

1. **Write specs in `spec/student/` for the provided ShoppingCart Ruby class.**
   - You may use the `Item` class in `lib/item.rb` to create items for your cart.
   - Write at least one `it` block for each matcher category listed below, all focused on ShoppingCart.
   - Use one `it` block per matcher/scenario for clarity.
2. Use each of the following matcher categories to test ShoppingCart:
   - **Equality matchers**: Use for checking exact ShoppingCart values (e.g., `eq`, `eql`, `equal`).
   - **Predicate matchers**: Use for boolean ShoppingCart methods (e.g., `be_truthy`, `be_nil`, `be_empty`).
   - **Collection matchers**: Use for ShoppingCart arrays or hashes (e.g., `include`, `contain_exactly`).
   - **Error matchers**: Use for checking ShoppingCart exceptions (e.g., `raise_error`).
   - **Change matchers**: Use for observing ShoppingCart state changes (e.g., `change { ... }`).
3. Do **not** change any files in `spec/meta/`—these are lab checker specs that verify your ShoppingCart specs. In the test output, any spec labeled with `[LAB CHECKER]` is an official lab checker (not written by you) and is there to help you know if your specs meet the requirements.
4. Run `bin/rspec` often to check your progress and see which ShoppingCart matchers are working as expected.

## What to focus on

- Practice using different matchers for different ShoppingCart scenarios.
- Reference the matcher documentation for syntax and examples.
- Use one `it` block per matcher/scenario for clarity, all focused on ShoppingCart.

## Resources

- [RSpec Documentation](https://rspec.info/documentation/)
