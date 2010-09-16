Given /^an object in the database$/ do
  @book = Book.create :title => "The Adventures of Tom Sawyer"
end

When /^I clone the object$/ do
  @book_clone = @book.clone
end

Then /^their attributes should be equal$/ do
  @book_clone.title.should == @book.title
end

Then /^the resulting object should be a new record$/ do
  @book_clone.new_record?.should == true
  @book_clone.id.should == nil
end

When /^I clone! the object$/ do
  @book_clone = @book.clone!
end

Then /^the resulting object should not be a new record$/ do
  @book_clone.new_record?.should == false
  @book_clone.id.should_not == nil
end


