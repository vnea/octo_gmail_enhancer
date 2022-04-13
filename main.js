(() => {
    const removeOccurenceFromHtmlElement = ($htmlElement, occurenceToRemove) => {
        const oldHtmlContentElement = $htmlElement.html()
        $htmlElement.html(oldHtmlContentElement.replace(occurenceToRemove, ""))
    }

    $(document).arrive("div[role='link']>div", fullMailObject => {
        const $fullMailObject = $(fullMailObject)

        removeOccurenceFromHtmlElement($fullMailObject.find("span[data-thread-id]"), "[External] ")
        removeOccurenceFromHtmlElement($fullMailObject.find(">span"), "This message is from an EXTERNAL SENDER - be CAUTIOUS, particularly with links and attachments. ")
    })
})()
