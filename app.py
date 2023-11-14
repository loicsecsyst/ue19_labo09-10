import requests


def fetch_pun():
    url = "https://punapi.rest/api/pun"

    response = requests.get(url)

    if response.status_code == 200:
        pun = response.json()['pun']
        return pun
    else:
        return "Failed to fetch pun from the API"


def main():
    pun = fetch_pun()
    print("Here's a pun for you:")
    print(pun)


if __name__ == "__main__":
    main()
