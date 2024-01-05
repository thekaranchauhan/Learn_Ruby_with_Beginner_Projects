# ~~~~~~~~~~~~~~~~~~~~PUBLIC METHOD~~~~~~~~~~~~~~~~~~~~~~~
class MyClass
  def public_method
    puts "This is a public method"
  end
end

obj = MyClass.new
obj.public_method  # This is a public method


# ~~~~~~~~~~~~~~~~~~~~PRIVATE METHOD~~~~~~~~~~~~~~~~~~~~~~~
class MyClass
  def public_method
    puts "This is a public method"
    private_method
  end

  private

  def private_method
    puts "This is a private method"
  end
end

obj = MyClass.new
obj.public_method  # This is a public method
# obj.private_method  # This would result in an error, as it's private


# ~~~~~~~~~~~~~~~~~~~~PROTECTED METHOD~~~~~~~~~~~~~~~~~~~~~~~
class MyClass
  def public_method
    puts "This is a public method"
    protected_method
  end

  protected

  def protected_method
    puts "This is a protected method"
  end
end

class MySubclass < MyClass
  def call_protected_method
    protected_method
  end
end

obj = MyClass.new
obj.public_method  # This is a public method
# obj.protected_method  # This would result in an error, as it's protected

subclass_obj = MySubclass.new
subclass_obj.call_protected_method  # This is a protected method
