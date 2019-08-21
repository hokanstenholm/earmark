defmodule Acceptance.Html.CommentTest do
  use ExUnit.Case

  import Support.Helpers, only: [as_html: 1]

  describe "HTML Comments" do
    test "one line" do
      markdown = "<!-- Hello -->"
      html     = "<!-- Hello -->"
      messages = []

      assert as_html(markdown) == {:ok, html, messages}
    end

    test "more lines" do
      markdown = "<!-- Hello\n World -->"
      html     = "<!-- Hello\n World -->"
      messages = []

      assert as_html(markdown) == {:ok, html, messages}
    end

    test "what about the closing" do
      markdown = "<!-- Hello\n World -->garbish"
      html     = "<!-- Hello\n World -->garbish"
      messages = []

      assert as_html(markdown) == {:ok, html, messages}
    end
  end
end
# SPDX-License-Identifier: Apache-2.0
