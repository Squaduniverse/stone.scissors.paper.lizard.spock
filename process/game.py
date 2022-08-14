import random

def game(user_choice):

    choices = ["r", "s", "p", "l", "v"]

    if not user_choice in choices:
        print("\nThat is not a choice, try again.")
        return 'That is not a choice, try again.'

    random.shuffle(choices)

    computer_choice = choices[0]

    # print choices

    print("Computer choice: " + computer_choice)

    print(f"\nYou chose {user_choice}, computer chose {computer_choice}")

    how_win = 'draw'

    if user_choice == computer_choice:
        print("Draw!")

    options_win = [
        {"option_a": "r", "option_b":  "s"},
        {"option_a": "r", "option_b":  "l"},
        {"option_a": "s", "option_b":  "p"},
        {"option_a": "s", "option_b":  "l"},
        {"option_a": "p", "option_b":  "r"},
        {"option_a": "p", "option_b":  "v"},
        {"option_a": "l", "option_b":  "p"},
        {"option_a": "l", "option_b":  "v"},
        {"option_a": "v", "option_b":  "r"},
        {"option_a": "v", "option_b":  "s"},
    ]

    for option in options_win:
        if option['option_a'] == user_choice and option['option_b'] == computer_choice:
            how_win = 'user'
            print("You won!")

    options_lose = [
        {"option_a": "r", "option_b":  "p"},
        {"option_a": "r", "option_b":  "v"},
        {"option_a": "s", "option_b":  "r"},
        {"option_a": "s", "option_b":  "v"},
        {"option_a": "p", "option_b":  "s"},
        {"option_a": "p", "option_b":  "l"},
        {"option_a": "l", "option_b":  "r"},
        {"option_a": "l", "option_b":  "s"},
        {"option_a": "v", "option_b":  "p"},
        {"option_a": "v", "option_b":  "l"},
    ]

    for option in options_lose:
        if option['option_a'] == user_choice and option['option_b'] == computer_choice:
            how_win = 'computer'
            print("You lost!")

    return {'computer_choice': computer_choice, 'how_win': how_win, }
