@Calculation
Feature: Perform calculations by GUI interface.

# Notes: This feature file covers the functionalities of calculator though WEB UI operations
# There are several assumptions for the UI tests:
#  1. the max length of the input for left number and right number is 3 due to the restriction of UI
#  2. the calculation only supports Integer calculation(addition, subtraction, multiplication and division)

  @focus
  Scenario Outline: Perform calculations in the web page
    Given I have opened the calculator homepage
    When  I input <left number> and <right number> and choose the <operator> to perform a calculation
    Then  I should get the expected <result>

    @Add @Positive
    Examples:
      | left number | operator | right number | result |
      | 23          | +        | 459          | 482    |
      | -19         | +        | 38           | 19     |
      | 2           | +        | -6           | -4     |
      | 999         | +        | 999          | 1998   |
      | -99         | +        | -99          | -198   |
      | -99         | +        | 999          | 900    |

    @Add @Negative
    Examples:
      | left number | operator | right number | result |
      | abc         | +        | #$%          |        |
      | 1.1         | +        | 0.2          |        |

      @Minus @Positive
    Examples:
      | left number | operator | right number | result |
      | 9           | -        | 3            | 6      |
      | 567         | -        | 893          | -326   |
      | -45         | -        | -2           | -43    |
      | 666         | -        | -99          | 765    |
      | -98         | -        | -99          | 1      |
      | -99         | -        | 999          | -1098  |
      | 999         | -        | -99          | 1098   |
      | -0          | -        | 1            | -1     |

    @Minus @Negative
    Examples:
      | left number | operator | right number | result |
      | -*          | -        | ert          |        |
      | 8.4         | -        | 4.6          |        |

    @Multiply @Positive
    Examples:
      | left number | operator | right number | result |
      | 20          | *        | 300          | 6000   |
      | -14         | *        | 56           | -784   |
      | -99         | *        | -99          | 9801   |
      | 999         | *        | 999          | 998001 |
      | -0          | *        | 1            | -1     |

    @Multiply @Negative
    Examples:
      | left number | operator | right number | result |
      | ^_^         | *        | :)           |        |
      | 3.4         | *        | 5            |        |

    @Divide @Positive
    Examples:
      | left number | operator | right number | result |
      | 12          | /        | 3            | 4      |
      | 105         | /        | 4            | 26     |
      | 999         | /        | -33          | -30    |
      | -99         | /        | -11          | 9      |
      | 45          | /        | 67           | 0      |

    @Divide @Negative
    Examples:
      | left number | operator | right number | result |
      | 1           | /        | 0            | 0      |
      | string      | /        | int          |        |
      | 1.4         | /        | 0.2          |        |