import xml.dom.minidom
doc = xml.dom.minidom.parse('sitemap.xml')
root = doc.firstChild
urlset = doc.getElementsByTagName("url")
for url in urlset:
	print("URL : "+url.getElementsByTagName("loc")[0].firstChild.data)
	print("TITLE : "+url.getElementsByTagName("title")[0].firstChild.data)


