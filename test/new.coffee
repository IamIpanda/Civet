{testCase} = require "./helper"

describe "new", ->
  testCase """
    basic
    ---
    new x
    ---
    new x;
  """

  testCase """
    multiple
    ---
    new new x
    ---
    new new x;
  """