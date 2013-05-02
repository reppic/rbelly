require File.dirname(__FILE__) + "/helper"

class BellejsTest < Test::Unit::TestCase

  PRIVATE_VAR_DECL = "private var cat = 9;"
  PUBLIC_VAR_DECL = "public var dog = 'large mammal with a tail';"
  PRIVATE_FUNC_DECL = "private function doStuff(){

}"
  BELLEJS_IMPORT = "import 'fakeJSFileOne.bellejs';"
  BELLEJS_CLASS = "class Dingo{

}"
  BELLEJS_CLASS_WITH_PARENT = "class Dingo extends Animal{

}"

  def test_import_tokenizer
    tokenizer = RBelly::Tokenizer.new
    result = tokenizer.tokenize "import"
    assert_equal result, [[:IMPORT, "import"]]
  end

  def test_import
    parser = RBelly::Parser.new
    result = parser.parse(BELLEJS_IMPORT)
    assert_equal result.to_ecma, BELLEJS_IMPORT
  end

  def test_class_tokenizer
    tokenizer = RBelly::Tokenizer.new
    result = tokenizer.tokenize "class"
    assert_equal result, [[:CLASS, "class"]]
  end

  def test_class
    parser = RBelly::Parser.new
    result = parser.parse(BELLEJS_CLASS)
    assert_equal result.to_ecma, BELLEJS_CLASS
  end

  def test_class_parent_tokenizer
    tokenizer = RBelly::Tokenizer.new
    result = tokenizer.tokenize "extends"
    assert_equal result, [[:EXTENDS, "extends"]]
  end

  def test_class_with_parent
    parser = RBelly::Parser.new
    result = parser.parse(BELLEJS_CLASS_WITH_PARENT)
    assert_equal result.to_ecma, BELLEJS_CLASS_WITH_PARENT
  end

  def test_public_private_tokenizer
    tokenizer = RBelly::Tokenizer.new
    result = tokenizer.tokenize "public"
    result2 = tokenizer.tokenize "private"
    assert_equal result, [[:PUBLIC, "public"]]
    assert_equal result2, [[:PRIVATE, "private"]]
  end

  def test_public_private_vars
    parser = RBelly::Parser.new
    result = parser.parse(PRIVATE_VAR_DECL)
    result2 = parser.parse(PUBLIC_VAR_DECL)
    assert_equal result.to_ecma, PRIVATE_VAR_DECL
    assert_equal result2.to_ecma, PUBLIC_VAR_DECL
  end

  def test_public_private_funcs
    parser = RBelly::Parser.new
    result = parser.parse(PRIVATE_FUNC_DECL)
    assert_equal result.to_ecma, PRIVATE_FUNC_DECL
  end

end
