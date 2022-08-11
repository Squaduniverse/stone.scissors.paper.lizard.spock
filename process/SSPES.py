import random

print("Start Game *Stone Scissors Paper Lizard Spock*")

print("Choose Please: Stone (r), Scissors (s), Paper (p), Lizard (l), Spock (v) \n")

user_choice = input("Your choice: ")

# print(table)

# we will listen this from the parameter, this is a function

choices = ["r", "s", "p", "l", "v"]


# if user_choice in choices:

random.shuffle(choices)

computer_choice = choices[0]

# print choices

print("Computer choice: " + computer_choice)

print(f"\nYou chose {user_choice}, computer chose {computer_choice}")


def game():
    if user_choice == computer_choice:
        print("draw")
    if user_choice == "r" and computer_choice == "s":
        print("You won!")
    if user_choice == "r" and computer_choice == "p":
        print("You lost!")
    if user_choice == "r" and computer_choice == "l":
        print("You won!")
    if user_choice == "r" and computer_choice == "v":
        print("You lost!")

    if user_choice == "s" and computer_choice == "r":
        print("You lost!")
    if user_choice == "s" and computer_choice == "p":
        print("You won!")
    if user_choice == "s" and computer_choice == "l":
        print("You won!")
    if user_choice == "s" and computer_choice == "v":
        print("You lost!")

    if user_choice == "p" and computer_choice == "r":
        print("You won!")
    if user_choice == "p" and computer_choice == "s":
        print("You lost!")
    if user_choice == "p" and computer_choice == "l":
        print("You lost!")
    if user_choice == "p" and computer_choice == "v":
        print("You won!")

    if user_choice == "l" and computer_choice == "r":
        print("You lost!")
    if user_choice == "l" and computer_choice == "s":
        print("You lost!")
    if user_choice == "l" and computer_choice == "p":
        print("You won!")
    if user_choice == "l" and computer_choice == "v":
        print("You won!")

    if user_choice == "v" and computer_choice == "r":
        print("You won!")
    if user_choice == "v" and computer_choice == "s":
        print("You won!")
    if user_choice == "v" and computer_choice == "p":
        print("You lost!")
    if user_choice == "v" and computer_choice == "l":
        print("You lost!")


if user_choice in choices:
    game()
else:
    print("\nThat is not a choice, try again.")


print("\nFin")
