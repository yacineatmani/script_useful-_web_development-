import requests

def download_image(url):
    response = requests.get(url)
    if response.status_code == 200:
        with open(url.split('/')[-1], 'wb') as f:
            f.write(response.content)

download_image("https://example.com/image.jpg")

