# frozen_string_literal: true

Given('the configured Test, {string}, contains the following Questions:') do |game, questions|
  @game = game
  @questions = questions.raw.flatten
end

When('I start the Test') do
  test.start(game, @questions)
end

Then('I should see {string}') do |message|
  expect(output.messages).to include(message)
end

Then('I should be prompted to provide an answer to the first Question, {string}') do |first_question|
  expect(output.messages).to include(first_question)
end

Given(/the Question is (\d+x\d+)/) do |question|
  test.start(game, [question])
end

When('I answer {int}') do |answer|
  test.provide answer
end

Then('my answer is marked as {word}') do |mark|
  expect(output.messages).to include mark
end
