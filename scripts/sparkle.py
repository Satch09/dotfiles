#!/usr/local/bin/python3
from rich import print
from rich.pretty import Pretty
from rich.panel import Panel
from rich.prompt import Prompt
from rich.layout import Layout


def main():
    name = Prompt.ask("Enter your name", default="Paul Atreides")
    pretty = Pretty(locals())
    panel = Panel(pretty)
    print(panel)
    print(name)
    print(Panel.fit("Hello, [red]World!"))
    layout = Layout()
    layout.split_column(
        Layout(name="upper"),
        Layout(name="lower"),
    )
    layout["lower"].split_row(
        Layout(name="left"),
        Layout(name="right"),
    )
    layout["left"].split_row(
        Layout(name="lleft"),
        Layout(name="lright"),
    )
    print(layout)


if __name__ == "__main__":
    main()
