# ________     _________                        _____ .__    ____
# \______ \   /   _____/  ____   ____    ____ _/ ____\|__|  / ___\
#  |    |  \  \_____  \ _/ ___\ /  _ \  /    \\   __\ |  | / /_/  >
#  |    `   \ /        \\  \___(  <_> )|   |  \|  |   |  | \___  /
# /_______  //_______  / \___  >\____/ |___|  /|__|   |__|/_____/
#         \/         \/      \/             \/
#
# Minimalistic custom qutebrowser config
# I'm trying to keep it simple, as always....
# https://github.com/dsorcererdev/configfiles

# Prevent loading the yml file
config.load_autoconfig(False)

config.set("content.cookies.accept", "all", "chrome-devtools://*")
config.set("content.cookies.accept", "all", "devtools://*")
config.set("content.headers.accept_language", "", "https://matchmaker.krunker.io/*")
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}",
    "https://web.whatsapp.com/",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}; rv:90.0) Gecko/20100101 Firefox/90.0",
    "https://accounts.google.com/*",
)
config.set(
    "content.headers.user_agent",
    "Mozilla/5.0 ({os_info}) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99 Safari/537.36",
    "https://*.slack.com/*",
)
config.set("content.images", True, "chrome-devtools://*")
config.set("content.images", True, "devtools://*")
config.set("content.javascript.enabled", True, "chrome-devtools://*")
config.set("content.javascript.enabled", True, "devtools://*")
config.set("content.javascript.enabled", True, "chrome://*/*")
config.set("content.javascript.enabled", True, "qute://*/*")

config.bind("xb", "config-cycle statusbar.show always never")
config.bind("xt", "config-cycle tabs.show always never")

c.url.start_pages = ['~/repos/browser_startpage/index.html']
c.statusbar.show = 'never'
c.tabs.show = 'never'
