# Shortlinker extension

## Introduction & Goal
The Chrome ShortLinker Extension aims to provide users with a convenient way to generate and utilize shortened, customized links for websites. This extension will enable users to access their favorite sites quickly by typing intuitive and memorable shortcuts, thereby enhancing their browsing experience.

## Docs

 - [One pager](https://github.com/lozovskaya/shortlinker-extension/blob/main/Docs/one-pager.pdf)
 - [PDR](https://github.com/lozovskaya/shortlinker-extension/blob/main/Docs/PDR.pdf)
 - [SRS](https://github.com/lozovskaya/shortlinker-extension/blob/main/Docs/SRS.md)
 - [CJM](https://miro.com/app/board/uXjVMk2nu-4=/?moveToWidget=3458764573324902477&cot=14)
 - [Backlog](https://wnubbles.notion.site/Backlog-for-Shortlinker-extension-da9d6a44ec5c481b8bd1e07ad93fb6be?pvs=4)


 ## Current version:

 A brief link comprises an area and a name. For instance, if the short link is 'go/link,' 'go' represents the area, and 'link' is the name.

The name can be excluded; for example, you can simply type 'go/'. In this scenario, 'go' serves as the area, and the name is an empty string.

To view all your shortcuts, input: all/

For adding a new shortcut, input: add/\<area>/<name>?t=\<target_url\>

If you don't require a name, input: add/\<area\>?t=\<target_url\>

For deleting a shortcut, input: del/\<area\>/\<name>

To delete a shortcut without a name, input: del/\<area\>

To delete all shortcuts with a specific area, input: del/\<area\>?all=true