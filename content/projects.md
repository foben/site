---
markup: md
type: misc
title: Projects
---
<div class="tile">
    <p class="page-title">Projects</p>
    <hr>
    <p class="big bold section-title centered-text" style="margin-top: 0.25em">This list is incomplete, see also <span class="inline-block"><a href="http://github.com/BenTheElder">my GitHub profile</a> <span class="emoji" style="background-image:url(/images/GitHub-Mark-120px-plus.png)" title=":github:">:github:</span></span></p>
    <div class="full-bleed first list-item">
      <p class="section-title"><code>kind</code> - <code>K</code>ubernetes <code>IN</code> <code>D</code>ocker <span class="emoji" style="background-image:url(/images/kubernetes_logo.svg)" title=":kubernetes:"/>:kubernetes:</span></p>
      <p><a href="https://sigs.k8s.io/kind">kind</a> is a tool for running local Kubernetes clusters using Docker container "nodes".<br>It is primarily designed for testing Kubernetes 1.11+, initially targeting the <a href="https://github.com/kubernetes/community/blob/master/contributors/devel/conformance-tests.md">conformance tests</a>.</p>
      <p> If you have <a href="https://golang.org/">go</a> and <a href="https://www.docker.com/">docker</a> installed <code>go get sigs.k8s.io/kind && kind create cluster</code> is all you need!</p>
      <img class="" src="https://gist.githubusercontent.com/BenTheElder/621bc321fc6d9506fd936feb36d32dd0/raw/7fe14e9d0929cab428929ca6c501abc990c07359/kind-create-cluster.gif" alt="2x speed `kind create cluster` demo" />
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">Mr. CoffeeBot <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f3a9.png)" title=":tophat:">:tophat:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u2615.png)" title=":coffee:">:coffee:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f916.png)" title=":robot:">:robot:</span></p>
      <p>An automated 12-cup coffee pot built around <a href="https://www.mrcoffee.com/choose-by-brew/coffee/mr.-coffee-simple-brew-12-cup-switch-coffee-maker/CG.html?dwvar_CG_color=Black"> this $20 coffee pot</a> and an <a href="https://www.mbed.com/">Mbed</a> microcontroller running <a href="https://www.mbed.com/en/platform/mbed-os/">Mbed OS</a> based firmware. - <a href="https://github.com/BenTheElder/MrCoffeeBot" class="italic">Source</a></p>
      <p>I've since updated this with an ultrasonic sensor for measuring the water distance and a Raspberry Pi running custom software deployed with Kubernetes. See <a href="/posts/brewing-with-kubernetes">Brewing With Kubernetes</a>.</p>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">Planter <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f33f.png)" alt="Herb" title=":herb:">:herb:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f4e6.png)" title=":package:">:package:</span></p>
      <p class="min-para">Bazel in a container.<img src="/images/planter.svg" alt="Planter Logo" title="Planter Logo" style="margin: 0; padding: 0; float: right; padding-left: 1em; clear: left; margin-top: -2em; margin-right: -1em;" /></p>
      <p class="min-para">Planter is a small script that wraps <a href="https://bazel.build">Bazel</a> in a Docker container with your <code>WORKSPACE</code> and Bazel-cache mounted. This is useful for quickly switching versions and Linux builds from Mac. More details and source code <a href="https://github.com/kubernetes/test-infra/tree/master/planter">here</a>.</p>
      <div style="clear: both;"></div>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">This Website <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f468_200d_1f4bb.png)"title=":male_technologist:">:male_technologist:</span></p>
      <p>This website in its current form was built with <a href="https://gohugo.io/">Hugo</a>, using custom layouts. - <a href="https://github.com/BenTheElder/site" class="italic">Source</a>
      </p>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">Too Many Lasers <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f680.png)" title=":rocket:"></span></p>
      <img src="/images/too_many_lasers_paused_optim.png" alt="Too Many Lasers" title="Too Many Lasers" class="centered" />
      <div><p>Our group project for CS 4731 (Game AI) at Georgia Tech, strategically place "AI" controlled star-fighters versus "AI" placed and controlled fighters. You can <a href="/projects/too-many-lasers">play it here</a>. - <a href="https://github.com/BenTheElder/Too-Many-Lasers" class="italic">Source</a></p>
      </div>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">CreatureBox <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f47e.png)" title=":alien:">:alien:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f4e6.png)" title=":package:">:package:</span></p>
      <p>CreatureBox is a pure golang obstacle avoidance evolutionary neural network simulation that runs on mobile and desktop.
        <a href="/blog/creaturebox.html">Blog Post</a> -
        <a href="https://github.com/BenTheElder/creaturebox" class="italic">Source</a>
      </p>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">Google Summer of Code 2015 <span class="emoji" style="background-image:url(/images/google_g.png)" title=":google:">:google:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u2600.png)" title=":sun:">:sun:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f468_200d_1f4bb.png)" title=":male_technologist:">:male_technologist:<span></p>
      <p>I spent the summer working on <a href="http://kubernetes.io">Kubernetes</a> for <a href="https://developers.google.com/open-source/gsoc/">Google Summer of Code</a> <a href="https://www.google-melange.com/gsoc/homepage/google/gsoc2015">2015</a>.<br>My work involved improving the service proxy by writing a new iptables-based implementation to replace the existing userspace implementation.</p>
      <p><a href="https://github.com/kubernetes/kubernetes/commits/master?author=BenTheElder">Contributions</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/kubernetes/contrib/pull/10">Netperf Benchmark</a></p>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">Olivaw <span class="emoji" style="background-image:url(/images/telegram_logo.png)" title=":telegram:">:telegram:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f916.png)" title=":robot:">:span:</span></p>
      <p>My
        <a href="https://telegram.org/">Telegram</a> chat-bot, currently under development. -
        <a href="https://github.com/BenTheElder/olivaw" class="italic">Source</a>
      </p>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">Rust-Python-Demo <span class="emoji" style="background-image:url(/images/rust-logo-128x128-blk.png)" title=":rust:">:rust:</span><span class="emoji" style="background-image:url(/images/emoji/emoji_u1f40d.png)" title=":snake:">:snake:</span></p>
      <p>Demonstration of using
        <a href="https://www.mozilla.org/">Mozilla</a>'s
        <a href="http://www.rust-lang.org">Rust</a> language as a c dynamic library from Python.&nbsp;&nbsp;-&nbsp;
        <a href="https://github.com/BenTheElder/rust-python-demo" class="italic">Source</a>
      </p>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">slack-rs <span class="emoji" style="background-image:url(/images/Slack_Mark_Web_Cropped.png)" title=":slack:">:slack:</span><span class="emoji" style="background-image:url(/images/rust-logo-128x128-blk.png)" title=":rust:">:rust:</span></p>
      <p>slack-rs is a
        <a href="https://slack.com/">Slack</a> client library for
        <a href="http://www.rust-lang.org">Rust</a>.&nbsp;&nbsp;-&nbsp;
        <a href="https://github.com/BenTheElder/slack-rs" class="italic">Source</a>&nbsp;&nbsp;
        <a href="https://crates.io/crates/slack">Package</a>&nbsp;&nbsp;
        <a href="https://bentheelder.github.io/slack-rs">Docs</a>&nbsp;&nbsp;
        <a href="https://github.com/BenTheElder/slack-rs-demo">Demo Project</a>
      </p>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">Edwin <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f916.png)" title=":robot:">:robot:<span></p>
      <img src="/images/robot.png" alt="" title="Edwin" class="centered" />
      <p>Edwin is a robotics research project, including custom hardware and software. Currently undergoing a rewrite and redesign.</p>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">Color-Schemes <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f3a8.png)" title=":art:">:art:</span></p>
      <p>My custom textmate/sublime-text syntax color schemes.&nbsp;&nbsp;-&nbsp;<a href="https://github.com/BenTheElder/color-schemes" class="italic">Source</a></p>
    </div>
    <div class="full-bleed list-item">
      <p class="section-title">BlueBliss-Atom  <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f3a8.png)" title=":art:">:art:</span></p>
      <p>A port of my favourite custom syntax scheme to an <a href="https://atom.io/">atom.io</a> editor theme.<br/> Installable as '<a href="https://atom.io/themes/bluebliss-2">bluebliss-2</a>' via the atom package manager.&nbsp;&nbsp;-&nbsp;<a href="https://github.com/BenTheElder/bluebliss-atom" class="italic">Source</a></p>
    </div>
    <div class="full-bleed list-item last">
      <p class="section-title">Mission-Ctrl <span class="emoji" style="background-image:url(/images/emoji/emoji_u1f4e1.png)" title=":satellite:">:satellite:</span></p>
      <p>A simple
        <a href="https://golang.org">golang</a> web service for monitoring resource usage.
        <br/> Created in an evening to monitor Edwin's main board.&nbsp;&nbsp;-&nbsp;
        <a href="https://github.com/BenTheElder/mission-ctrl" class="italic">Source</a>
      </p>
    </div>
    <div style="height: .25em"></div>
  </div>
