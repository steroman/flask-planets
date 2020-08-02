# Mission Accomplished

This document contains notes and comments that arose when trying to improve the main repo's documentation.

## Tech

- Felt safer by forking the source repo and playing around there.
- Had to install Homebrew in order to get pyenv. Since I believe it depends on the OS, I didn't include it in the requirements.
- Decided to go ahead and fix the error about Saturn's moons in the code
- Found a bug in the /planets/{id} path parameters which started to count backwards when using "0" or negative integers up to "-7". It seemed that the issue is caused by some "-1" in the code, but since I have no Python knowledge I preferred to open an issue.
- Intentionally left alt-text for images out. It felt unnecessary considered the scope of the exercise
- I intentionally avoided explaining how to bundle redoc in the repo because I felt it created too many dependencies and would alter the repo too much

## Style and Tone

- I preferred more verbose instructions placed in sequenced steps
- I also squeezed MD's indentation and line breaking capabilities as much as I could to increase visual hierarchy of items, context info, media
- The intro talked about /planets/position but I felt that didn't match reality, where what was "position" is actually called ID. so I changed it and added explanation
- In steps, I preferred inline code to codeblocks, since commands were short. I lost beautified code, but I felt the information flowed better. Some refs I checked to decide:
  - [Atlassian Forum](https://community.atlassian.com/t5/Confluence-questions/Inline-code-blocks/qaq-p/263017)
  - [Udemy Support Article](https://support.udemy.com/hc/en-us/articles/229233407-Using-Code-Blocks-and-Inline-Code#)
- Gave consistency to Link tooltips ("Link to..")
- Removed inconsistencies between "app", "App", and "application"
- Played around with heading levels to reorganize content's hierarchy
- Used emojis consistently in h2 headings
- Tried to maintain the overall relaxed tone with a couple puns, emojis, and so on
  - However, I avoided contractions
- Aware that the code example of /planets/{id} only includes one object in the array, but workarounds would have made the schema too complex for the scope of this exercise
- Intentionally wrote more verbose status code descriptions even if they didn't match the response in the code ('OK')

## Architecture

- There was not much info about /webhook, so I limited myself to documenting basic methods and responses
 - Not being a Python expert I couldn't gather extra info by analysing the code
 - Didn't want to document potentially wrong information
 - References used: [sslavic on github](https://gist.github.com/sslavic/b1f36a8fa4ac0a52568b7b0155c3f241), [swaggerhub help](https://app.swaggerhub.com/help/integrations/webhook), and [the source repo](https://github.com/lornajane/flask-planets-and-webhooks)
- ReDoc supports multi-file OASs, but I felt it wasn't needed.
- Instructions require a GitHub account, so I added it as a requirement
- Moved credits to the About section as I felt it didn't require a separate h2 section
 - Updated credits link to both the author's personal website and to the source repo.
- Created parallel construction between ToC heading text and original section title
- Intentionally avoided to ignore errors from non-allowed methods assuming that the user can only use documented methods
- Mimicked [Redoc's recommended folder structure](https://github.com/Redocly/create-openapi-repo/tree/master/template) to host OAS files
