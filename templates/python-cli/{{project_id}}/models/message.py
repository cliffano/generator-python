"""This module contains the Message class."""

class Message():
    """This class represents a message.

    It contains the message text and supports in-place transformations.

    :param text: Initial message text.
    """

    def __init__(self, text: str) -> None:
        #: Current message text.
        self.text = text

    def get_text(self) -> str:
        """Return the message text.

        :returns: Current message text.
        """
        return self.text

    def reverse(self) -> None:
        """Reverse the message text in place."""
        self.text = self.text[::-1]

    def lower(self) -> None:
        """Convert the message text to lower case in place."""
        self.text = self.text.lower()

    def upper(self) -> None:
        """Convert the message text to upper case in place."""
        self.text = self.text.upper()

    def __str__(self) -> str:
        """Return the string representation of the Message object.

        :returns: Current message text.
        """
        return f'{self.text}'
