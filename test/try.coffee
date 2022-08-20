{testCase} = require "./helper"

describe "try", ->
  testCase """
    basic
    ---
    try
      x()
    catch y
      console.log y
    ---
    try {
      x();
    }
    catch (y) {
      console.log(y);
    };
  """

  testCase """
    implied catch
    ---
    try
      x()
    ---
    try {
      x();
    } catch {};
  """

  testCase """
    finally
    ---
    try
      x()
    finally
      console.log y
    ---
    try {
      x();
    }
    finally {
      console.log(y);
    };
  """

  testCase """
    compact
    ---
    try x()
    catch y
      console.log y
    ---
    try { x() }
    catch (y) {
      console.log(y);
    };
  """