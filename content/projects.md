---
markup: md
type: misc
title: Projects
---

<p class="big bold section-title centered-text" style="">This list is incomplete, see also
<span class="inline-block"><a href="http://github.com/BenTheElder">my GitHub profile</a> <span class="emoji" style="background-image:url(/images/GitHub-Mark-120px-plus.png)" title=":github:">:github:</span>
</span>
</p>

<hr/>

<h2 id="kind">kind - Kubernetes IN Docker <span class="emoji" style="background-image:url(/images/kubernetes_logo.svg)" title=":kubernetes:">:kubernetes:</span></h2>

<img src="/images/kind-logo.png" alt="kind Logo" title="kind Logo" class="centered" style="width: 300px; margin-top: -.25em; margin-bottom: .75em;" />
<a href="https://kind.sigs.k8s.io/">kind</a> is a tool for running local Kubernetes clusters using Docker container "nodes".<br>It is primarily designed for testing Kubernetes 1.11+, initially targeting the <a href="https://github.com/kubernetes/community/blob/master/contributors/devel/conformance-tests.md">conformance tests</a>.

If you have <a href="https://golang.org/">go</a> and <a href="https://www.docker.com/">docker</a> installed <code>go get sigs.k8s.io/kind && kind create cluster</code> is all you need!

<img class="" src="https://gist.githubusercontent.com/BenTheElder/621bc321fc6d9506fd936feb36d32dd0/raw/13fe81c219e64b4917575c8988e06719c072c7f1/kind-demo.gif" alt="`kind create cluster` demo" />
<hr>


<h2 id="mr-coffeebot">Mr. CoffeeBot <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f3a9.png)" title=":tophat:">:tophat:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u2615.png)" title=":coffee:">:coffee:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f916.png)" title=":robot:">:robot:</span></h2>
An automated 12-cup coffee pot built around <a href="https://www.mrcoffee.com/coffee-makers/12-cup-coffee-maker/mr.-coffee-simple-brew-12-cup-switch-coffee-maker-black/SK13-RB.html">this $20 Mr. Coffee® pot</a> and an <a href="https://www.mbed.com/">Mbed</a> microcontroller running <a href="https://www.mbed.com/en/platform/mbed-os/">Mbed OS</a> based firmware. - <a href="https://github.com/BenTheElder/MrCoffeeBot" class="italic">Source</a>

I've since updated this with an ultrasonic sensor for measuring the water distance and a Raspberry Pi running custom software deployed with Kubernetes. See <a href="/posts/brewing-with-kubernetes">Brewing With Kubernetes</a>.
<p></p>
<hr>

<h2 id="planter">Planter <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f33f.png)" alt="Herb" title=":herb:">:herb:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f4e6.png)" title=":package:">:package:</span></h2>
<p class="min-para">Bazel in a container.<img src="/images/planter.svg" alt="Planter Logo" title="Planter Logo" style="margin: 0; padding: 0; float: right; padding-left: 1em; clear: left; margin-top: -2em; margin-right: -1em;" /></p>
<p class="min-para">Planter is a small script that wraps <a href="https://bazel.build">Bazel</a> in a Docker container with your <code>WORKSPACE</code> and Bazel-cache mounted. This is useful for quickly switching versions and Linux builds from Mac. More details and source code <a href="https://github.com/kubernetes/test-infra/tree/master/planter">here</a>.</p>
<div style="clear: both;"></div>
<hr>

<h2 id="this-website">This Website <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f468_200d_1f4bb.png)"title=":male_technologist:">:male_technologist:</span></h2>

This website in its current form was built using <a href="https://gohugo.io/">Hugo</a>, with custom layouts and CSS.

<a href="https://github.com/BenTheElder/site">Source</a>

<hr>

<h2 id="too-many-lasers">Too Many Lasers <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f680.png)" title=":rocket:"></span></h2>
<img src="/images/too_many_lasers_paused_optim.png" alt="Too Many Lasers" title="Too Many Lasers" class="centered" />
<p></p>

Our group project for CS 4731 (Game AI) at Georgia Tech, strategically place "AI" controlled star-fighters versus "AI" placed and controlled fighters. You can <a href="/projects/too-many-lasers">play it here</a>.

<p><a href="https://github.com/BenTheElder/Too-Many-Lasers">Source</a></p>

<hr>

<h2 id="creaturebox">CreatureBox <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f47e.png)" title=":alien:">:alien:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f4e6.png)" title=":package:">:package:</span></h2>

CreatureBox is a pure golang obstacle avoidance evolutionary neural network simulation that runs on mobile and desktop.

[Blog Post](/posts/creaturebox/) • [Source](https://github.com/BenTheElder/creaturebox) 

<hr>

<h2 id="google-summer-of-code-2015">Google Summer of Code 2015 <span class="emoji" style="background-image:url(/images/google_g.png)" title=":google:">:google:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u2600.png)" title=":sun:">:sun:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f468_200d_1f4bb.png)" title=":male_technologist:">:male_technologist:</span></h2>

I spent the summer working on <a href="http://kubernetes.io">Kubernetes</a> for <a href="https://developers.google.com/open-source/gsoc/">Google Summer of Code</a> <a href="https://www.google-melange.com/gsoc/homepage/google/gsoc2015">2015</a>.<br>My work involved improving the service proxy by writing a new iptables-based implementation to replace the existing userspace implementation.

<a href="https://github.com/kubernetes/kubernetes/commits/master?author=BenTheElder">Contributions</a> • <a href="https://github.com/kubernetes/contrib/pull/10">Netperf Benchmark</a>

<hr>

<h2 id="slack-rs">slack-rs <span class="emoji" style="background-image:url(/images/Slack_Mark_Web_Cropped.png)" title=":slack:">:slack:</span><span class="emoji" style="background-image:url(/images/rust-logo-128x128-blk.png)" title=":rust:">:rust:</span></h2>

slack-rs is a [Slack](https://slack.com/) client library for [Rust](http://www.rust-lang.org).

<a href="https://crates.io/crates/slack">Package</a> • <a href="https://bentheelder.github.io/slack-rs">Docs</a> • <a href="https://github.com/BenTheElder/slack-rs-demo">Demo Project</a> • <a href="https://github.com/BenTheElder/slack-rs">Source</a>

<hr>

<h2 id="edwin">Edwin <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f916.png)" title=":robot:">:robot:</span></h2>
<img src="/images/robot.png" alt="" title="Edwin" class="centered" />
<p></p>
Edwin was a cheap, custom-built robotics research platform, including DIY hardware and software, designed for indoor <a href="https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping)">SLAM</a> experimentation with an <a href="https://www.asus.com/us/3D-Sensor/Xtion_PRO_LIVE/">Asus Xtion PRO Live</a> depth sensor / camera.
<p></p>

<hr>

<h2 id="olivaw">Olivaw <span class="emoji" style="background-image:url(/images/telegram_logo.png)" title=":telegram:">:telegram:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f916.png)" title=":robot:">:span:</span></h2>

My <a href="https://telegram.org/">Telegram</a> chat-bot, currently inactive mid-rewrite.

<a href="https://github.com/BenTheElder/olivaw">Source</a>