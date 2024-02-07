/* eslint-disable no-undef */
/* eslint-disable no-unused-vars */

/**
 * Search function
 */

const searchInput = document.querySelector("#searchbar > input")
const searchButton = document.querySelector("#searchbar > button")

const lookup = {"/":"/","deepl":"https://deepl.com/","reddit":"https://reddit.com/","maps":"https://maps.google.com/"}
const engine = "startpage"
const engineUrls = {
  deepl: "https://www.deepl.com/translator#-/-/{query}",
  duckduckgo: "https://duckduckgo.com/?q={query}",
  ecosia: "https://www.ecosia.org/search?q={query}",
  google: "https://www.google.com/search?q={query}",
  startpage: "https://www.startpage.com/search?q={query}",
  youtube: "https://www.youtube.com/results?q={query}",
}

const isWebUrl = value => {
  try {
    const url = new URL(value)
    return url.protocol === "http:" || url.protocol === "https:"
  } catch {
    return false
  }
}

const getTargetUrl = value => {
  if (isWebUrl(value)) return value
  if (lookup[value]) return lookup[value]
  const url = engineUrls[engine] ?? engine
  return url.replace("{query}", value)
}

const search = () => {
  const value = searchInput.value
  const targetUrl = getTargetUrl(value)
  window.open(targetUrl, "_self")
}

searchInput.onkeyup = event => event.key === "Enter" && search()
searchButton.onclick = search

/**
 * inject bookmarks into html
 */

const bookmarks = [{"id":"pHWvOnJJH20xoJjA","label":"Social  ","bookmarks":[{"id":"lqkJnoskjazYbQ6D","label":"Youtube","url":"https://www.youtube.com/"},{"id":"CizObEXOtJ7vuJTL","label":"Twitch","url":"https://www.twitch.tv/"},{"id":"U9vbHlc9oZvu8aVg","label":"/vt/","url":"https://boards.4channel.org/vt/"},{"id":"Idontknow","label":"󰘧","url":"https://www.lainchan.org/"}]},{"id":"p13O1sepTaEq12lg","label":"Wiki 󰣇 ","bookmarks":[{"id":"9hlTJn5mznm18o1T","label":"AUR","url":"https://aur.archlinux.org/"},{"id":"Inj1s1KYRZDOrMSp","label":"Archwiki","url":"https://wiki.archlinux.org/"}]},{"id":"iSLIkQFXa2OtDpI8","label":"Dev  ","bookmarks":[{"id":"RUzkZ5jJVj80M3g1","label":"Github","url":"https://github.com/"},{"id":"XEQeF4slzUyH5c9C","label":"StackOF","url":"https://stackoverflow.com/"},{"id":"6wQUxGcYBE1N88NF","label":"ChatGPT","url":"https://chat.openai.com/"},{"id":"3rA9PwypoVcVxxwp","label":"Phind","url":"https://www.phind.com/"}]},{"id":"onS2LGSpadepoMUu","label":"Game 󰊖 ","bookmarks":[{"id":"VOx2ChreVyYGEHvi","label":"Monkeytype","url":"https://monkeytype.com/"},{"id":"B8g9tj4xyBNXCT2A","label":"SteamRip","url":"https://steamrip.com/"},{"id":"uomY05GQa6jIgSIj","label":"Piracy MT","url":"https://rentry.org/pgames"},{"id":"1Z487MP4z6D6Fa9I","label":"Fitgirl","url":"https://fitgirl-repacks.site/"}]},{"id":"uO9xJXGpDK2G0nfn","label":"School 󰑴 ","bookmarks":[{"id":"G9Yl2ru9gzIpNtR6","label":"Classroom","url":"https://classroom.google.com/u/0/h?pli=1"}]},{"id":"GHNG3X35mx1QrlXn","label":"Misc.  ","bookmarks":[{"id":"Oak4lRFrr6kQz6Of","label":"Wallhaven","url":"https://wallhaven.cc/"},{"id":"tgXNIXaP5RsDvFlZ","label":"/w/","url":"https://boards.4channel.org/w/"},{"id":"B8hVpP2e7UakR3f6","label":"Archive.org ","url":"https://archive.org/"}]},{"id":"bI9plegIv3PS6heJ","label":"Roms 󰗮 ","bookmarks":[{"id":"H9lMSC7QDwauo6ym","label":"CDromance","url":"https://cdromance.com/"},{"id":"8DITapCXVjMCmdwg","label":"Vimm","url":"https://vimm.net/"},{"id":"sYPQVwW0nmRQKwax","label":"r/Roms MT","url":"https://r-roms.github.io/"},{"id":"nDTpIkRilPCeryQf","label":"Ziperto","url":"https://www.ziperto.com/"}]}]

const createGroupContainer = () => {
  const container = document.createElement("div")
  container.className = "bookmark-group"
  return container
}

const createGroupTitle = title => {
  const h2 = document.createElement("h2")
  h2.innerHTML = title
  return h2
}

const createBookmark = ({ label, url }) => {
  const li = document.createElement("li")
  const a = document.createElement("a")
  a.href = url
  a.innerHTML = label
  li.append(a)
  return li
}

const createBookmarkList = bookmarks => {
  const ul = document.createElement("ul")
  bookmarks.map(createBookmark).forEach(li => ul.append(li))
  return ul
}

const createGroup = ({ label, bookmarks }) => {
  const container = createGroupContainer()
  const title = createGroupTitle(label)
  const bookmarkList = createBookmarkList(bookmarks)
  container.append(title)
  container.append(bookmarkList)
  return container
}

const injectBookmarks = () => {
  const bookmarksContainer = document.getElementById("bookmarks")
  bookmarksContainer.append()
  bookmarks.map(createGroup).forEach(group => bookmarksContainer.append(group))
}

injectBookmarks()
