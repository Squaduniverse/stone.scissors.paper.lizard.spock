# process.py
from faker import Faker
import json
fake = Faker()


def generate_person():
    print(
        json.dumps(dict(
            name=fake.name(),
            email=fake.email(),
            password=fake.password(),
            address=fake.address()
        ))
    )
