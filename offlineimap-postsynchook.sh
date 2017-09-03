#!/bin/sh

echo ""
echo "--> Tagging new mail"
notmuch new

echo "--> Tagging sent mail/drafts"
notmuch tag -inbox -unread +sent +hotmail -- from:sjbrown@live.co.uk   and not tag:sent
notmuch tag -inbox -unread +sent +gmail   -- from:quadturtle@gmail.com and not tag:sent 
notmuch tag -inbox -unread +draft +gmail -- folder:drafts and not tag:draft
notmuch tag -inbox -unread +draft +gmail -- folder:draft and not tag:draft

echo "--> Tag source account"
notmuch tag +hotmail -- to:sjbrown@live.co.uk   and not tag:hotmail 
notmuch tag +gmail   -- to:quadturtle@gmail.com and not tag:gmail

echo "--> Tagging personal mail"
notmuch tag +personal -- not tag:personal and "from:brown"
notmuch tag +personal -- not tag:personal and "from:paschali"
notmuch tag +personal -- not tag:personal and "from:oommen"
notmuch tag +personal -- not tag:personal and "from:shikha"
notmuch tag +personal -- not tag:personal and "from:frost"
notmuch tag +personal -- not tag:personal and "from:alison"
notmuch tag +personal -- not tag:personal and "from:ewan"
notmuch tag +personal -- not tag:personal and "from:soong"
notmuch tag +personal -- not tag:personal and "from:isaac"
notmuch tag +personal -- not tag:personal and "from:knox"
notmuch tag +personal -- not tag:personal and "from:rory"
notmuch tag +personal -- not tag:personal and "from:rhind"
notmuch tag +personal -- not tag:personal and "from:masters"
notmuch tag +personal -- not tag:personal and "from:katie"
notmuch tag +personal -- not tag:personal and "from:adrian"
notmuch tag +personal -- not tag:personal and "from:monti"
notmuch tag +personal -- not tag:personal and "from:hannah"
notmuch tag +personal -- not tag:personal and "from:maslowski"
notmuch tag +personal +NCT -- not tag:personal and "from:jenny"
notmuch tag +personal +NCT -- not tag:personal and "from:flemming"
notmuch tag +personal +NCT -- not tag:personal and "from:trzebinski"
notmuch tag +personal +NCT -- not tag:personal and "from:mickleburgh"
notmuch tag +personal +NCT -- not tag:personal and "from:dharmesh"

echo "--> Tagging dev mail"
notmuch tag -inbox +dev -- tag:inbox and from:rust
notmuch tag -inbox +dev -- tag:inbox and from:haskell
notmuch tag -inbox +dev -- tag:inbox and from:travis
notmuch tag -inbox +dev -- tag:inbox and from:pluralsight
notmuch tag -inbox +dev -- tag:inbox and from:futurelearn
notmuch tag -inbox +dev -- tag:inbox and from:docker
notmuch tag -inbox +dev -- tag:inbox and from:topcoder
notmuch tag -inbox +dev -- tag:inbox and from:codeanywhere
notmuch tag -inbox +dev -- tag:inbox and "from:big data university"
notmuch tag -inbox +dev -- tag:inbox and "from:stack exchange"
notmuch tag -inbox +dev -- tag:inbox and from:github
notmuch tag +dev -- tag:inbox and from:meetup

echo "--> Tagging go mail"
notmuch tag -inbox +go -- tag:inbox and from:goschool
notmuch tag -inbox +go -- tag:inbox and from:online-go
notmuch tag -inbox +go -- tag:inbox and from:nova
notmuch tag -inbox +go -- tag:inbox and from:ogs
notmuch tag -inbox +go -- tag:inbox and from:kgs
notmuch tag -inbox +go -- tag:inbox and subject:dwyrin
notmuch tag +go -- tag:inbox and "from:colin maclennan"

echo "--> Tagging purchases"
notmuch tag -inbox +purchases -- tag:inbox and from:clubcard
notmuch tag -inbox +purchases -- tag:inbox and from:online@tesco.co.uk 
notmuch tag -inbox +purchases -- tag:inbox and from:customer.services@tesco.co.uk 
notmuch tag -inbox +purchases -- tag:inbox and from:tescodirect@tesco.co.uk 
notmuch tag -inbox +purchases -- tag:inbox and from:amazon
notmuch tag -inbox +purchases -- tag:inbox and from:paypal
notmuch tag -inbox +purchases -- tag:inbox and from:webuyanycar
notmuch tag -inbox +purchases -- tag:inbox and from:johnlewis
notmuch tag -inbox +purchases -- tag:inbox and from:opentable
notmuch tag -inbox +purchases -- tag:inbox and from:worldpay
notmuch tag -inbox +purchases -- tag:inbox and from:paybyphone
notmuch tag -inbox +purchases -- tag:inbox and from:steam
notmuch tag -inbox +purchases -- tag:inbox and from:gog.com
notmuch tag -inbox +purchases -- tag:inbox and from:aspinal
notmuch tag -inbox +purchases -- tag:inbox and from:blizzard
notmuch tag -inbox +purchases -- tag:inbox and from:easyjet
notmuch tag -inbox +purchases -- tag:inbox and from:monarch
notmuch tag -inbox +purchases -- tag:inbox and from:virgin
notmuch tag -inbox +purchases -- tag:inbox and from:jessops
notmuch tag -inbox +purchases -- tag:inbox and from:ebay
notmuch tag -inbox +purchases -- tag:inbox and "from:enterprise plus"
notmuch tag -inbox +purchases -- tag:inbox and "from:tickets dana centre"
notmuch tag -inbox +purchases -- tag:inbox and "from:google play"

echo "--> Tagging bills"
notmuch tag -inbox +bills -- tag:inbox and from:names.co.uk
notmuch tag -inbox +bills -- tag:inbox and from:thameswater
notmuch tag -inbox +bills -- tag:inbox and from:npower
notmuch tag -inbox +bills -- tag:inbox and from:support.plus.net
notmuch tag -inbox +bills -- tag:inbox and from:plusnet
notmuch tag -inbox +bills -- tag:inbox and from:tfl
notmuch tag -inbox +bills -- tag:inbox and from:tvlicense
notmuch tag -inbox +bills -- tag:inbox and from:netflix
notmuch tag -inbox +bills -- tag:inbox and "from:the aa"
notmuch tag -inbox +bills -- tag:inbox and "from:legal and general"
notmuch tag -inbox +bills -- tag:inbox and "from:legal & general"
notmuch tag +bills -- tag:inbox and from:admiral

echo "--> Tagging investments"
notmuch tag +money -- tag:inbox and from:santander
notmuch tag +money -- tag:inbox and from:chartersavingsbank
notmuch tag +money -- tag:inbox and from:aviva

echo "--> Tagging misc accounts"
notmuch tag -inbox +accounts -- tag:inbox and from:dropbox
notmuch tag -inbox +accounts -- tag:inbox and from:ifttt
notmuch tag -inbox +accounts -- tag:inbox and from:mojang
notmuch tag -inbox +accounts -- tag:inbox and from:lastpass
notmuch tag -inbox +accounts -- tag:inbox and from:google
notmuch tag -inbox +accounts -- tag:inbox and from:bbc
notmuch tag -inbox +accounts -- tag:inbox and from:shell
notmuch tag -inbox +accounts -- tag:inbox and from:nationaltrust
notmuch tag -inbox +accounts -- tag:inbox and from:trustpilot
notmuch tag -inbox +accounts -- tag:inbox and from:twitter
notmuch tag -inbox +accounts -- tag:inbox and from:peerj
notmuch tag -inbox +accounts -- tag:inbox and from:ou-mailings
notmuch tag -inbox +accounts -- tag:inbox and from:pocket
notmuch tag -inbox +accounts -- tag:inbox and "from:channel 4"
notmuch tag -inbox +accounts -- tag:inbox and "from:microsoft account team"

echo "--> Tagging junk"
notmuch tag -inbox +junk -- tag:inbox and from:facebook
notmuch tag -inbox +junk -- tag:inbox and from:seristars
notmuch tag -inbox +junk -- tag:inbox and from:linkedin
notmuch tag -inbox +junk -- tag:inbox and from:labour
notmuch tag -inbox +junk -- tag:inbox and from:tesco
notmuch tag -inbox +junk -- tag:inbox and from:ocado
notmuch tag -inbox +junk -- tag:inbox and "from:ou students association"
notmuch tag -inbox +junk -- tag:inbox and "from:ou-students-association"
notmuch tag -inbox +junk -- tag:inbox and "from:abel and cole"
notmuch tag -inbox +junk -- tag:inbox and "from:the sun"

echo "--> Tagging complete"
