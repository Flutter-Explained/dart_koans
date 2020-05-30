class AboutAsserts {
  void koan_about_asserts() {
    assert(false == true, "Hint: Change false to true");
  }

  // Should learn how to use our tests
  void koan_compare_values_with_each_other() {
    var expectedValue = 0;
    var realValue = 1 + 1;

    assert(realValue == expectedValue,
        'Hint: The expectedValue seems to be wrong');
  }
}
