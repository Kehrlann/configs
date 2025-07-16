from bs4 import BeautifulSoup
import requests
from slugify import slugify


with open("rss.xml") as f:
    soup = BeautifulSoup(f.read(), features="xml")
    for item in soup.find_all("item"):
        title = slugify(item.find("title").text)
        url = item.find("enclosure").get("url")
        print(f"Getting {title} ...")
        try:
            downloaded_file = requests.get(url)
            with open(f"/Users/dgarnier/tmp/bestioles/episodes/{title}.mp3", "wb") as episode:
                episode.write(downloaded_file.content)
            print(f"Getting {title} ... OK!")
        except Exception as e:
            print(f"Getting {title} ... ERROR!")
            print(e)
    
