; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!750130 () Bool)

(assert start!750130)

(declare-fun b!7949149 () Bool)

(declare-fun e!4689383 () Bool)

(declare-fun tp!2365411 () Bool)

(declare-fun tp!2365409 () Bool)

(assert (=> b!7949149 (= e!4689383 (and tp!2365411 tp!2365409))))

(declare-fun b!7949150 () Bool)

(declare-fun e!4689390 () Bool)

(declare-fun tp!2365410 () Bool)

(declare-fun tp!2365415 () Bool)

(assert (=> b!7949150 (= e!4689390 (and tp!2365410 tp!2365415))))

(declare-fun b!7949151 () Bool)

(declare-fun tp_is_empty!53471 () Bool)

(assert (=> b!7949151 (= e!4689383 tp_is_empty!53471)))

(declare-fun b!7949152 () Bool)

(declare-datatypes ((Unit!169802 0))(
  ( (Unit!169803) )
))
(declare-fun e!4689386 () Unit!169802)

(declare-fun Unit!169804 () Unit!169802)

(assert (=> b!7949152 (= e!4689386 Unit!169804)))

(declare-fun lt!2699386 () Unit!169802)

(declare-datatypes ((C!43266 0))(
  ( (C!43267 (val!32181 Int)) )
))
(declare-datatypes ((List!74693 0))(
  ( (Nil!74569) (Cons!74569 (h!81017 C!43266) (t!390436 List!74693)) )
))
(declare-fun input!7927 () List!74693)

(declare-fun lemmaIsPrefixRefl!4032 (List!74693 List!74693) Unit!169802)

(assert (=> b!7949152 (= lt!2699386 (lemmaIsPrefixRefl!4032 input!7927 input!7927))))

(declare-fun isPrefix!6564 (List!74693 List!74693) Bool)

(assert (=> b!7949152 (isPrefix!6564 input!7927 input!7927)))

(declare-fun lt!2699392 () Unit!169802)

(declare-fun testedP!447 () List!74693)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1612 (List!74693 List!74693 List!74693) Unit!169802)

(assert (=> b!7949152 (= lt!2699392 (lemmaIsPrefixSameLengthThenSameList!1612 input!7927 testedP!447 input!7927))))

(assert (=> b!7949152 false))

(declare-fun b!7949154 () Bool)

(declare-fun e!4689384 () Bool)

(declare-fun e!4689388 () Bool)

(assert (=> b!7949154 (= e!4689384 e!4689388)))

(declare-fun res!3152514 () Bool)

(assert (=> b!7949154 (=> res!3152514 e!4689388)))

(declare-datatypes ((Regex!21464 0))(
  ( (ElementMatch!21464 (c!1460090 C!43266)) (Concat!30463 (regOne!43440 Regex!21464) (regTwo!43440 Regex!21464)) (EmptyExpr!21464) (Star!21464 (reg!21793 Regex!21464)) (EmptyLang!21464) (Union!21464 (regOne!43441 Regex!21464) (regTwo!43441 Regex!21464)) )
))
(declare-fun r!24602 () Regex!21464)

(declare-fun nullable!9565 (Regex!21464) Bool)

(assert (=> b!7949154 (= res!3152514 (not (nullable!9565 r!24602)))))

(declare-fun lt!2699391 () List!74693)

(assert (=> b!7949154 (isPrefix!6564 lt!2699391 input!7927)))

(declare-fun lt!2699387 () Unit!169802)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1291 (List!74693 List!74693) Unit!169802)

(assert (=> b!7949154 (= lt!2699387 (lemmaAddHeadSuffixToPrefixStillPrefix!1291 testedP!447 input!7927))))

(declare-fun lt!2699388 () List!74693)

(declare-fun ++!18334 (List!74693 List!74693) List!74693)

(declare-fun head!16216 (List!74693) C!43266)

(assert (=> b!7949154 (= lt!2699391 (++!18334 testedP!447 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))

(declare-fun b!7949155 () Bool)

(declare-fun e!4689382 () Bool)

(declare-fun tp!2365408 () Bool)

(assert (=> b!7949155 (= e!4689382 (and tp_is_empty!53471 tp!2365408))))

(declare-fun b!7949156 () Bool)

(assert (=> b!7949156 (= e!4689390 tp_is_empty!53471)))

(declare-fun b!7949157 () Bool)

(declare-fun tp!2365416 () Bool)

(assert (=> b!7949157 (= e!4689383 tp!2365416)))

(declare-fun b!7949158 () Bool)

(declare-fun res!3152517 () Bool)

(declare-fun e!4689385 () Bool)

(assert (=> b!7949158 (=> (not res!3152517) (not e!4689385))))

(assert (=> b!7949158 (= res!3152517 (not (= testedP!447 input!7927)))))

(declare-fun b!7949159 () Bool)

(declare-fun tp!2365412 () Bool)

(declare-fun tp!2365407 () Bool)

(assert (=> b!7949159 (= e!4689390 (and tp!2365412 tp!2365407))))

(declare-fun b!7949160 () Bool)

(declare-fun e!4689387 () Bool)

(assert (=> b!7949160 (= e!4689387 e!4689385)))

(declare-fun res!3152515 () Bool)

(assert (=> b!7949160 (=> (not res!3152515) (not e!4689385))))

(declare-fun lt!2699384 () Int)

(declare-fun lt!2699389 () Int)

(declare-fun isEmpty!42868 (List!74693) Bool)

(declare-datatypes ((tuple2!70590 0))(
  ( (tuple2!70591 (_1!38598 List!74693) (_2!38598 List!74693)) )
))
(declare-fun findLongestMatchInner!2245 (Regex!21464 List!74693 Int List!74693 List!74693 Int) tuple2!70590)

(assert (=> b!7949160 (= res!3152515 (not (isEmpty!42868 (_1!38598 (findLongestMatchInner!2245 r!24602 testedP!447 lt!2699384 lt!2699388 input!7927 lt!2699389)))))))

(declare-fun size!43400 (List!74693) Int)

(assert (=> b!7949160 (= lt!2699389 (size!43400 input!7927))))

(declare-fun getSuffix!3767 (List!74693 List!74693) List!74693)

(assert (=> b!7949160 (= lt!2699388 (getSuffix!3767 input!7927 testedP!447))))

(assert (=> b!7949160 (= lt!2699384 (size!43400 testedP!447))))

(declare-fun b!7949161 () Bool)

(declare-fun e!4689389 () Bool)

(declare-fun tp!2365417 () Bool)

(assert (=> b!7949161 (= e!4689389 (and tp_is_empty!53471 tp!2365417))))

(declare-fun b!7949153 () Bool)

(declare-fun tp!2365418 () Bool)

(declare-fun tp!2365413 () Bool)

(assert (=> b!7949153 (= e!4689383 (and tp!2365418 tp!2365413))))

(declare-fun res!3152513 () Bool)

(assert (=> start!750130 (=> (not res!3152513) (not e!4689387))))

(declare-fun baseR!116 () Regex!21464)

(declare-fun validRegex!11768 (Regex!21464) Bool)

(assert (=> start!750130 (= res!3152513 (validRegex!11768 baseR!116))))

(assert (=> start!750130 e!4689387))

(assert (=> start!750130 e!4689390))

(assert (=> start!750130 e!4689382))

(assert (=> start!750130 e!4689389))

(assert (=> start!750130 e!4689383))

(declare-fun b!7949162 () Bool)

(declare-fun res!3152516 () Bool)

(assert (=> b!7949162 (=> (not res!3152516) (not e!4689387))))

(declare-fun derivative!650 (Regex!21464 List!74693) Regex!21464)

(assert (=> b!7949162 (= res!3152516 (= (derivative!650 baseR!116 testedP!447) r!24602))))

(declare-fun b!7949163 () Bool)

(declare-fun res!3152518 () Bool)

(assert (=> b!7949163 (=> (not res!3152518) (not e!4689387))))

(assert (=> b!7949163 (= res!3152518 (isPrefix!6564 testedP!447 input!7927))))

(declare-fun b!7949164 () Bool)

(assert (=> b!7949164 (= e!4689388 (not (= lt!2699388 Nil!74569)))))

(declare-fun b!7949165 () Bool)

(declare-fun Unit!169805 () Unit!169802)

(assert (=> b!7949165 (= e!4689386 Unit!169805)))

(declare-fun b!7949166 () Bool)

(assert (=> b!7949166 (= e!4689385 (not e!4689384))))

(declare-fun res!3152519 () Bool)

(assert (=> b!7949166 (=> res!3152519 e!4689384)))

(assert (=> b!7949166 (= res!3152519 (>= lt!2699384 lt!2699389))))

(declare-fun lt!2699390 () Unit!169802)

(assert (=> b!7949166 (= lt!2699390 e!4689386)))

(declare-fun c!1460089 () Bool)

(assert (=> b!7949166 (= c!1460089 (= lt!2699384 lt!2699389))))

(assert (=> b!7949166 (<= lt!2699384 lt!2699389)))

(declare-fun lt!2699385 () Unit!169802)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1081 (List!74693 List!74693) Unit!169802)

(assert (=> b!7949166 (= lt!2699385 (lemmaIsPrefixThenSmallerEqSize!1081 testedP!447 input!7927))))

(declare-fun b!7949167 () Bool)

(declare-fun tp!2365414 () Bool)

(assert (=> b!7949167 (= e!4689390 tp!2365414)))

(assert (= (and start!750130 res!3152513) b!7949163))

(assert (= (and b!7949163 res!3152518) b!7949162))

(assert (= (and b!7949162 res!3152516) b!7949160))

(assert (= (and b!7949160 res!3152515) b!7949158))

(assert (= (and b!7949158 res!3152517) b!7949166))

(assert (= (and b!7949166 c!1460089) b!7949152))

(assert (= (and b!7949166 (not c!1460089)) b!7949165))

(assert (= (and b!7949166 (not res!3152519)) b!7949154))

(assert (= (and b!7949154 (not res!3152514)) b!7949164))

(assert (= (and start!750130 (is-ElementMatch!21464 baseR!116)) b!7949156))

(assert (= (and start!750130 (is-Concat!30463 baseR!116)) b!7949150))

(assert (= (and start!750130 (is-Star!21464 baseR!116)) b!7949167))

(assert (= (and start!750130 (is-Union!21464 baseR!116)) b!7949159))

(assert (= (and start!750130 (is-Cons!74569 testedP!447)) b!7949155))

(assert (= (and start!750130 (is-Cons!74569 input!7927)) b!7949161))

(assert (= (and start!750130 (is-ElementMatch!21464 r!24602)) b!7949151))

(assert (= (and start!750130 (is-Concat!30463 r!24602)) b!7949153))

(assert (= (and start!750130 (is-Star!21464 r!24602)) b!7949157))

(assert (= (and start!750130 (is-Union!21464 r!24602)) b!7949149))

(declare-fun m!8334050 () Bool)

(assert (=> b!7949163 m!8334050))

(declare-fun m!8334052 () Bool)

(assert (=> b!7949162 m!8334052))

(declare-fun m!8334054 () Bool)

(assert (=> start!750130 m!8334054))

(declare-fun m!8334056 () Bool)

(assert (=> b!7949160 m!8334056))

(declare-fun m!8334058 () Bool)

(assert (=> b!7949160 m!8334058))

(declare-fun m!8334060 () Bool)

(assert (=> b!7949160 m!8334060))

(declare-fun m!8334062 () Bool)

(assert (=> b!7949160 m!8334062))

(declare-fun m!8334064 () Bool)

(assert (=> b!7949160 m!8334064))

(declare-fun m!8334066 () Bool)

(assert (=> b!7949152 m!8334066))

(declare-fun m!8334068 () Bool)

(assert (=> b!7949152 m!8334068))

(declare-fun m!8334070 () Bool)

(assert (=> b!7949152 m!8334070))

(declare-fun m!8334072 () Bool)

(assert (=> b!7949166 m!8334072))

(declare-fun m!8334074 () Bool)

(assert (=> b!7949154 m!8334074))

(declare-fun m!8334076 () Bool)

(assert (=> b!7949154 m!8334076))

(declare-fun m!8334078 () Bool)

(assert (=> b!7949154 m!8334078))

(declare-fun m!8334080 () Bool)

(assert (=> b!7949154 m!8334080))

(declare-fun m!8334082 () Bool)

(assert (=> b!7949154 m!8334082))

(push 1)

(assert (not b!7949167))

(assert (not b!7949157))

(assert (not b!7949163))

(assert (not b!7949155))

(assert (not b!7949154))

(assert (not b!7949159))

(assert (not start!750130))

(assert tp_is_empty!53471)

(assert (not b!7949149))

(assert (not b!7949150))

(assert (not b!7949152))

(assert (not b!7949161))

(assert (not b!7949160))

(assert (not b!7949162))

(assert (not b!7949153))

(assert (not b!7949166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2375807 () Bool)

(declare-fun lt!2699428 () Regex!21464)

(assert (=> d!2375807 (validRegex!11768 lt!2699428)))

(declare-fun e!4689423 () Regex!21464)

(assert (=> d!2375807 (= lt!2699428 e!4689423)))

(declare-fun c!1460100 () Bool)

(assert (=> d!2375807 (= c!1460100 (is-Cons!74569 testedP!447))))

(assert (=> d!2375807 (validRegex!11768 baseR!116)))

(assert (=> d!2375807 (= (derivative!650 baseR!116 testedP!447) lt!2699428)))

(declare-fun b!7949235 () Bool)

(declare-fun derivativeStep!6493 (Regex!21464 C!43266) Regex!21464)

(assert (=> b!7949235 (= e!4689423 (derivative!650 (derivativeStep!6493 baseR!116 (h!81017 testedP!447)) (t!390436 testedP!447)))))

(declare-fun b!7949236 () Bool)

(assert (=> b!7949236 (= e!4689423 baseR!116)))

(assert (= (and d!2375807 c!1460100) b!7949235))

(assert (= (and d!2375807 (not c!1460100)) b!7949236))

(declare-fun m!8334126 () Bool)

(assert (=> d!2375807 m!8334126))

(assert (=> d!2375807 m!8334054))

(declare-fun m!8334128 () Bool)

(assert (=> b!7949235 m!8334128))

(assert (=> b!7949235 m!8334128))

(declare-fun m!8334130 () Bool)

(assert (=> b!7949235 m!8334130))

(assert (=> b!7949162 d!2375807))

(declare-fun d!2375813 () Bool)

(assert (=> d!2375813 (isPrefix!6564 input!7927 input!7927)))

(declare-fun lt!2699433 () Unit!169802)

(declare-fun choose!59897 (List!74693 List!74693) Unit!169802)

(assert (=> d!2375813 (= lt!2699433 (choose!59897 input!7927 input!7927))))

(assert (=> d!2375813 (= (lemmaIsPrefixRefl!4032 input!7927 input!7927) lt!2699433)))

(declare-fun bs!1969502 () Bool)

(assert (= bs!1969502 d!2375813))

(assert (=> bs!1969502 m!8334068))

(declare-fun m!8334132 () Bool)

(assert (=> bs!1969502 m!8334132))

(assert (=> b!7949152 d!2375813))

(declare-fun b!7949270 () Bool)

(declare-fun res!3152572 () Bool)

(declare-fun e!4689446 () Bool)

(assert (=> b!7949270 (=> (not res!3152572) (not e!4689446))))

(assert (=> b!7949270 (= res!3152572 (= (head!16216 input!7927) (head!16216 input!7927)))))

(declare-fun b!7949271 () Bool)

(declare-fun tail!15758 (List!74693) List!74693)

(assert (=> b!7949271 (= e!4689446 (isPrefix!6564 (tail!15758 input!7927) (tail!15758 input!7927)))))

(declare-fun d!2375815 () Bool)

(declare-fun e!4689448 () Bool)

(assert (=> d!2375815 e!4689448))

(declare-fun res!3152569 () Bool)

(assert (=> d!2375815 (=> res!3152569 e!4689448)))

(declare-fun lt!2699443 () Bool)

(assert (=> d!2375815 (= res!3152569 (not lt!2699443))))

(declare-fun e!4689447 () Bool)

(assert (=> d!2375815 (= lt!2699443 e!4689447)))

(declare-fun res!3152570 () Bool)

(assert (=> d!2375815 (=> res!3152570 e!4689447)))

(assert (=> d!2375815 (= res!3152570 (is-Nil!74569 input!7927))))

(assert (=> d!2375815 (= (isPrefix!6564 input!7927 input!7927) lt!2699443)))

(declare-fun b!7949272 () Bool)

(assert (=> b!7949272 (= e!4689448 (>= (size!43400 input!7927) (size!43400 input!7927)))))

(declare-fun b!7949269 () Bool)

(assert (=> b!7949269 (= e!4689447 e!4689446)))

(declare-fun res!3152571 () Bool)

(assert (=> b!7949269 (=> (not res!3152571) (not e!4689446))))

(assert (=> b!7949269 (= res!3152571 (not (is-Nil!74569 input!7927)))))

(assert (= (and d!2375815 (not res!3152570)) b!7949269))

(assert (= (and b!7949269 res!3152571) b!7949270))

(assert (= (and b!7949270 res!3152572) b!7949271))

(assert (= (and d!2375815 (not res!3152569)) b!7949272))

(declare-fun m!8334152 () Bool)

(assert (=> b!7949270 m!8334152))

(assert (=> b!7949270 m!8334152))

(declare-fun m!8334154 () Bool)

(assert (=> b!7949271 m!8334154))

(assert (=> b!7949271 m!8334154))

(assert (=> b!7949271 m!8334154))

(assert (=> b!7949271 m!8334154))

(declare-fun m!8334156 () Bool)

(assert (=> b!7949271 m!8334156))

(assert (=> b!7949272 m!8334060))

(assert (=> b!7949272 m!8334060))

(assert (=> b!7949152 d!2375815))

(declare-fun d!2375827 () Bool)

(assert (=> d!2375827 (= input!7927 testedP!447)))

(declare-fun lt!2699449 () Unit!169802)

(declare-fun choose!59898 (List!74693 List!74693 List!74693) Unit!169802)

(assert (=> d!2375827 (= lt!2699449 (choose!59898 input!7927 testedP!447 input!7927))))

(assert (=> d!2375827 (isPrefix!6564 input!7927 input!7927)))

(assert (=> d!2375827 (= (lemmaIsPrefixSameLengthThenSameList!1612 input!7927 testedP!447 input!7927) lt!2699449)))

(declare-fun bs!1969505 () Bool)

(assert (= bs!1969505 d!2375827))

(declare-fun m!8334170 () Bool)

(assert (=> bs!1969505 m!8334170))

(assert (=> bs!1969505 m!8334068))

(assert (=> b!7949152 d!2375827))

(declare-fun b!7949278 () Bool)

(declare-fun res!3152578 () Bool)

(declare-fun e!4689451 () Bool)

(assert (=> b!7949278 (=> (not res!3152578) (not e!4689451))))

(assert (=> b!7949278 (= res!3152578 (= (head!16216 testedP!447) (head!16216 input!7927)))))

(declare-fun b!7949279 () Bool)

(assert (=> b!7949279 (= e!4689451 (isPrefix!6564 (tail!15758 testedP!447) (tail!15758 input!7927)))))

(declare-fun d!2375831 () Bool)

(declare-fun e!4689453 () Bool)

(assert (=> d!2375831 e!4689453))

(declare-fun res!3152575 () Bool)

(assert (=> d!2375831 (=> res!3152575 e!4689453)))

(declare-fun lt!2699450 () Bool)

(assert (=> d!2375831 (= res!3152575 (not lt!2699450))))

(declare-fun e!4689452 () Bool)

(assert (=> d!2375831 (= lt!2699450 e!4689452)))

(declare-fun res!3152576 () Bool)

(assert (=> d!2375831 (=> res!3152576 e!4689452)))

(assert (=> d!2375831 (= res!3152576 (is-Nil!74569 testedP!447))))

(assert (=> d!2375831 (= (isPrefix!6564 testedP!447 input!7927) lt!2699450)))

(declare-fun b!7949280 () Bool)

(assert (=> b!7949280 (= e!4689453 (>= (size!43400 input!7927) (size!43400 testedP!447)))))

(declare-fun b!7949277 () Bool)

(assert (=> b!7949277 (= e!4689452 e!4689451)))

(declare-fun res!3152577 () Bool)

(assert (=> b!7949277 (=> (not res!3152577) (not e!4689451))))

(assert (=> b!7949277 (= res!3152577 (not (is-Nil!74569 input!7927)))))

(assert (= (and d!2375831 (not res!3152576)) b!7949277))

(assert (= (and b!7949277 res!3152577) b!7949278))

(assert (= (and b!7949278 res!3152578) b!7949279))

(assert (= (and d!2375831 (not res!3152575)) b!7949280))

(declare-fun m!8334178 () Bool)

(assert (=> b!7949278 m!8334178))

(assert (=> b!7949278 m!8334152))

(declare-fun m!8334182 () Bool)

(assert (=> b!7949279 m!8334182))

(assert (=> b!7949279 m!8334154))

(assert (=> b!7949279 m!8334182))

(assert (=> b!7949279 m!8334154))

(declare-fun m!8334184 () Bool)

(assert (=> b!7949279 m!8334184))

(assert (=> b!7949280 m!8334060))

(assert (=> b!7949280 m!8334058))

(assert (=> b!7949163 d!2375831))

(declare-fun b!7949311 () Bool)

(declare-fun e!4689479 () Bool)

(declare-fun e!4689475 () Bool)

(assert (=> b!7949311 (= e!4689479 e!4689475)))

(declare-fun res!3152593 () Bool)

(assert (=> b!7949311 (=> (not res!3152593) (not e!4689475))))

(declare-fun call!736801 () Bool)

(assert (=> b!7949311 (= res!3152593 call!736801)))

(declare-fun b!7949312 () Bool)

(declare-fun e!4689474 () Bool)

(declare-fun e!4689476 () Bool)

(assert (=> b!7949312 (= e!4689474 e!4689476)))

(declare-fun c!1460115 () Bool)

(assert (=> b!7949312 (= c!1460115 (is-Union!21464 baseR!116))))

(declare-fun b!7949313 () Bool)

(declare-fun e!4689478 () Bool)

(assert (=> b!7949313 (= e!4689478 e!4689474)))

(declare-fun c!1460114 () Bool)

(assert (=> b!7949313 (= c!1460114 (is-Star!21464 baseR!116))))

(declare-fun b!7949314 () Bool)

(declare-fun e!4689477 () Bool)

(declare-fun call!736803 () Bool)

(assert (=> b!7949314 (= e!4689477 call!736803)))

(declare-fun bm!736796 () Bool)

(declare-fun call!736802 () Bool)

(assert (=> bm!736796 (= call!736803 call!736802)))

(declare-fun b!7949315 () Bool)

(declare-fun res!3152590 () Bool)

(assert (=> b!7949315 (=> res!3152590 e!4689479)))

(assert (=> b!7949315 (= res!3152590 (not (is-Concat!30463 baseR!116)))))

(assert (=> b!7949315 (= e!4689476 e!4689479)))

(declare-fun bm!736797 () Bool)

(assert (=> bm!736797 (= call!736801 (validRegex!11768 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))))))

(declare-fun b!7949316 () Bool)

(declare-fun res!3152589 () Bool)

(assert (=> b!7949316 (=> (not res!3152589) (not e!4689477))))

(assert (=> b!7949316 (= res!3152589 call!736801)))

(assert (=> b!7949316 (= e!4689476 e!4689477)))

(declare-fun d!2375835 () Bool)

(declare-fun res!3152592 () Bool)

(assert (=> d!2375835 (=> res!3152592 e!4689478)))

(assert (=> d!2375835 (= res!3152592 (is-ElementMatch!21464 baseR!116))))

(assert (=> d!2375835 (= (validRegex!11768 baseR!116) e!4689478)))

(declare-fun bm!736798 () Bool)

(assert (=> bm!736798 (= call!736802 (validRegex!11768 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))))))

(declare-fun b!7949317 () Bool)

(assert (=> b!7949317 (= e!4689475 call!736803)))

(declare-fun b!7949318 () Bool)

(declare-fun e!4689480 () Bool)

(assert (=> b!7949318 (= e!4689474 e!4689480)))

(declare-fun res!3152591 () Bool)

(assert (=> b!7949318 (= res!3152591 (not (nullable!9565 (reg!21793 baseR!116))))))

(assert (=> b!7949318 (=> (not res!3152591) (not e!4689480))))

(declare-fun b!7949319 () Bool)

(assert (=> b!7949319 (= e!4689480 call!736802)))

(assert (= (and d!2375835 (not res!3152592)) b!7949313))

(assert (= (and b!7949313 c!1460114) b!7949318))

(assert (= (and b!7949313 (not c!1460114)) b!7949312))

(assert (= (and b!7949318 res!3152591) b!7949319))

(assert (= (and b!7949312 c!1460115) b!7949316))

(assert (= (and b!7949312 (not c!1460115)) b!7949315))

(assert (= (and b!7949316 res!3152589) b!7949314))

(assert (= (and b!7949315 (not res!3152590)) b!7949311))

(assert (= (and b!7949311 res!3152593) b!7949317))

(assert (= (or b!7949314 b!7949317) bm!736796))

(assert (= (or b!7949316 b!7949311) bm!736797))

(assert (= (or b!7949319 bm!736796) bm!736798))

(declare-fun m!8334192 () Bool)

(assert (=> bm!736797 m!8334192))

(declare-fun m!8334194 () Bool)

(assert (=> bm!736798 m!8334194))

(declare-fun m!8334196 () Bool)

(assert (=> b!7949318 m!8334196))

(assert (=> start!750130 d!2375835))

(declare-fun d!2375843 () Bool)

(assert (=> d!2375843 (isPrefix!6564 (++!18334 testedP!447 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569)) input!7927)))

(declare-fun lt!2699460 () Unit!169802)

(declare-fun choose!59899 (List!74693 List!74693) Unit!169802)

(assert (=> d!2375843 (= lt!2699460 (choose!59899 testedP!447 input!7927))))

(assert (=> d!2375843 (isPrefix!6564 testedP!447 input!7927)))

(assert (=> d!2375843 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1291 testedP!447 input!7927) lt!2699460)))

(declare-fun bs!1969507 () Bool)

(assert (= bs!1969507 d!2375843))

(assert (=> bs!1969507 m!8334062))

(declare-fun m!8334198 () Bool)

(assert (=> bs!1969507 m!8334198))

(assert (=> bs!1969507 m!8334050))

(assert (=> bs!1969507 m!8334062))

(declare-fun m!8334200 () Bool)

(assert (=> bs!1969507 m!8334200))

(declare-fun m!8334202 () Bool)

(assert (=> bs!1969507 m!8334202))

(declare-fun m!8334204 () Bool)

(assert (=> bs!1969507 m!8334204))

(assert (=> bs!1969507 m!8334202))

(assert (=> b!7949154 d!2375843))

(declare-fun d!2375845 () Bool)

(assert (=> d!2375845 (= (head!16216 lt!2699388) (h!81017 lt!2699388))))

(assert (=> b!7949154 d!2375845))

(declare-fun lt!2699463 () List!74693)

(declare-fun b!7949331 () Bool)

(declare-fun e!4689486 () Bool)

(assert (=> b!7949331 (= e!4689486 (or (not (= (Cons!74569 (head!16216 lt!2699388) Nil!74569) Nil!74569)) (= lt!2699463 testedP!447)))))

(declare-fun b!7949330 () Bool)

(declare-fun res!3152598 () Bool)

(assert (=> b!7949330 (=> (not res!3152598) (not e!4689486))))

(assert (=> b!7949330 (= res!3152598 (= (size!43400 lt!2699463) (+ (size!43400 testedP!447) (size!43400 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))))

(declare-fun b!7949329 () Bool)

(declare-fun e!4689485 () List!74693)

(assert (=> b!7949329 (= e!4689485 (Cons!74569 (h!81017 testedP!447) (++!18334 (t!390436 testedP!447) (Cons!74569 (head!16216 lt!2699388) Nil!74569))))))

(declare-fun b!7949328 () Bool)

(assert (=> b!7949328 (= e!4689485 (Cons!74569 (head!16216 lt!2699388) Nil!74569))))

(declare-fun d!2375847 () Bool)

(assert (=> d!2375847 e!4689486))

(declare-fun res!3152599 () Bool)

(assert (=> d!2375847 (=> (not res!3152599) (not e!4689486))))

(declare-fun content!15826 (List!74693) (Set C!43266))

(assert (=> d!2375847 (= res!3152599 (= (content!15826 lt!2699463) (set.union (content!15826 testedP!447) (content!15826 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))))

(assert (=> d!2375847 (= lt!2699463 e!4689485)))

(declare-fun c!1460118 () Bool)

(assert (=> d!2375847 (= c!1460118 (is-Nil!74569 testedP!447))))

(assert (=> d!2375847 (= (++!18334 testedP!447 (Cons!74569 (head!16216 lt!2699388) Nil!74569)) lt!2699463)))

(assert (= (and d!2375847 c!1460118) b!7949328))

(assert (= (and d!2375847 (not c!1460118)) b!7949329))

(assert (= (and d!2375847 res!3152599) b!7949330))

(assert (= (and b!7949330 res!3152598) b!7949331))

(declare-fun m!8334206 () Bool)

(assert (=> b!7949330 m!8334206))

(assert (=> b!7949330 m!8334058))

(declare-fun m!8334208 () Bool)

(assert (=> b!7949330 m!8334208))

(declare-fun m!8334210 () Bool)

(assert (=> b!7949329 m!8334210))

(declare-fun m!8334212 () Bool)

(assert (=> d!2375847 m!8334212))

(declare-fun m!8334214 () Bool)

(assert (=> d!2375847 m!8334214))

(declare-fun m!8334216 () Bool)

(assert (=> d!2375847 m!8334216))

(assert (=> b!7949154 d!2375847))

(declare-fun d!2375849 () Bool)

(declare-fun nullableFct!3768 (Regex!21464) Bool)

(assert (=> d!2375849 (= (nullable!9565 r!24602) (nullableFct!3768 r!24602))))

(declare-fun bs!1969508 () Bool)

(assert (= bs!1969508 d!2375849))

(declare-fun m!8334218 () Bool)

(assert (=> bs!1969508 m!8334218))

(assert (=> b!7949154 d!2375849))

(declare-fun b!7949333 () Bool)

(declare-fun res!3152603 () Bool)

(declare-fun e!4689487 () Bool)

(assert (=> b!7949333 (=> (not res!3152603) (not e!4689487))))

(assert (=> b!7949333 (= res!3152603 (= (head!16216 lt!2699391) (head!16216 input!7927)))))

(declare-fun b!7949334 () Bool)

(assert (=> b!7949334 (= e!4689487 (isPrefix!6564 (tail!15758 lt!2699391) (tail!15758 input!7927)))))

(declare-fun d!2375851 () Bool)

(declare-fun e!4689489 () Bool)

(assert (=> d!2375851 e!4689489))

(declare-fun res!3152600 () Bool)

(assert (=> d!2375851 (=> res!3152600 e!4689489)))

(declare-fun lt!2699464 () Bool)

(assert (=> d!2375851 (= res!3152600 (not lt!2699464))))

(declare-fun e!4689488 () Bool)

(assert (=> d!2375851 (= lt!2699464 e!4689488)))

(declare-fun res!3152601 () Bool)

(assert (=> d!2375851 (=> res!3152601 e!4689488)))

(assert (=> d!2375851 (= res!3152601 (is-Nil!74569 lt!2699391))))

(assert (=> d!2375851 (= (isPrefix!6564 lt!2699391 input!7927) lt!2699464)))

(declare-fun b!7949335 () Bool)

(assert (=> b!7949335 (= e!4689489 (>= (size!43400 input!7927) (size!43400 lt!2699391)))))

(declare-fun b!7949332 () Bool)

(assert (=> b!7949332 (= e!4689488 e!4689487)))

(declare-fun res!3152602 () Bool)

(assert (=> b!7949332 (=> (not res!3152602) (not e!4689487))))

(assert (=> b!7949332 (= res!3152602 (not (is-Nil!74569 input!7927)))))

(assert (= (and d!2375851 (not res!3152601)) b!7949332))

(assert (= (and b!7949332 res!3152602) b!7949333))

(assert (= (and b!7949333 res!3152603) b!7949334))

(assert (= (and d!2375851 (not res!3152600)) b!7949335))

(declare-fun m!8334220 () Bool)

(assert (=> b!7949333 m!8334220))

(assert (=> b!7949333 m!8334152))

(declare-fun m!8334222 () Bool)

(assert (=> b!7949334 m!8334222))

(assert (=> b!7949334 m!8334154))

(assert (=> b!7949334 m!8334222))

(assert (=> b!7949334 m!8334154))

(declare-fun m!8334224 () Bool)

(assert (=> b!7949334 m!8334224))

(assert (=> b!7949335 m!8334060))

(declare-fun m!8334226 () Bool)

(assert (=> b!7949335 m!8334226))

(assert (=> b!7949154 d!2375851))

(declare-fun d!2375853 () Bool)

(declare-fun lt!2699467 () Int)

(assert (=> d!2375853 (>= lt!2699467 0)))

(declare-fun e!4689492 () Int)

(assert (=> d!2375853 (= lt!2699467 e!4689492)))

(declare-fun c!1460121 () Bool)

(assert (=> d!2375853 (= c!1460121 (is-Nil!74569 input!7927))))

(assert (=> d!2375853 (= (size!43400 input!7927) lt!2699467)))

(declare-fun b!7949340 () Bool)

(assert (=> b!7949340 (= e!4689492 0)))

(declare-fun b!7949341 () Bool)

(assert (=> b!7949341 (= e!4689492 (+ 1 (size!43400 (t!390436 input!7927))))))

(assert (= (and d!2375853 c!1460121) b!7949340))

(assert (= (and d!2375853 (not c!1460121)) b!7949341))

(declare-fun m!8334228 () Bool)

(assert (=> b!7949341 m!8334228))

(assert (=> b!7949160 d!2375853))

(declare-fun d!2375855 () Bool)

(assert (=> d!2375855 (= (isEmpty!42868 (_1!38598 (findLongestMatchInner!2245 r!24602 testedP!447 lt!2699384 lt!2699388 input!7927 lt!2699389))) (is-Nil!74569 (_1!38598 (findLongestMatchInner!2245 r!24602 testedP!447 lt!2699384 lt!2699388 input!7927 lt!2699389))))))

(assert (=> b!7949160 d!2375855))

(declare-fun b!7949501 () Bool)

(declare-fun e!4689581 () tuple2!70590)

(assert (=> b!7949501 (= e!4689581 (tuple2!70591 Nil!74569 input!7927))))

(declare-fun bm!736848 () Bool)

(declare-fun call!736853 () Regex!21464)

(declare-fun call!736859 () C!43266)

(assert (=> bm!736848 (= call!736853 (derivativeStep!6493 r!24602 call!736859))))

(declare-fun b!7949502 () Bool)

(declare-fun e!4689579 () Bool)

(declare-fun e!4689580 () Bool)

(assert (=> b!7949502 (= e!4689579 e!4689580)))

(declare-fun res!3152633 () Bool)

(assert (=> b!7949502 (=> res!3152633 e!4689580)))

(declare-fun lt!2699640 () tuple2!70590)

(assert (=> b!7949502 (= res!3152633 (isEmpty!42868 (_1!38598 lt!2699640)))))

(declare-fun b!7949503 () Bool)

(declare-fun c!1460160 () Bool)

(declare-fun call!736858 () Bool)

(assert (=> b!7949503 (= c!1460160 call!736858)))

(declare-fun lt!2699632 () Unit!169802)

(declare-fun lt!2699634 () Unit!169802)

(assert (=> b!7949503 (= lt!2699632 lt!2699634)))

(assert (=> b!7949503 (= input!7927 testedP!447)))

(declare-fun call!736860 () Unit!169802)

(assert (=> b!7949503 (= lt!2699634 call!736860)))

(declare-fun lt!2699626 () Unit!169802)

(declare-fun lt!2699637 () Unit!169802)

(assert (=> b!7949503 (= lt!2699626 lt!2699637)))

(declare-fun call!736856 () Bool)

(assert (=> b!7949503 call!736856))

(declare-fun call!736855 () Unit!169802)

(assert (=> b!7949503 (= lt!2699637 call!736855)))

(declare-fun e!4689578 () tuple2!70590)

(assert (=> b!7949503 (= e!4689578 e!4689581)))

(declare-fun bm!736849 () Bool)

(declare-fun call!736854 () List!74693)

(assert (=> bm!736849 (= call!736854 (tail!15758 lt!2699388))))

(declare-fun b!7949504 () Bool)

(assert (=> b!7949504 (= e!4689580 (>= (size!43400 (_1!38598 lt!2699640)) (size!43400 testedP!447)))))

(declare-fun b!7949505 () Bool)

(declare-fun e!4689576 () tuple2!70590)

(declare-fun call!736857 () tuple2!70590)

(assert (=> b!7949505 (= e!4689576 call!736857)))

(declare-fun b!7949506 () Bool)

(declare-fun e!4689575 () tuple2!70590)

(declare-fun lt!2699613 () tuple2!70590)

(assert (=> b!7949506 (= e!4689575 lt!2699613)))

(declare-fun bm!736850 () Bool)

(assert (=> bm!736850 (= call!736860 (lemmaIsPrefixSameLengthThenSameList!1612 input!7927 testedP!447 input!7927))))

(declare-fun b!7949507 () Bool)

(declare-fun e!4689577 () tuple2!70590)

(assert (=> b!7949507 (= e!4689577 e!4689578)))

(declare-fun c!1460162 () Bool)

(assert (=> b!7949507 (= c!1460162 (= lt!2699384 lt!2699389))))

(declare-fun b!7949508 () Bool)

(assert (=> b!7949508 (= e!4689581 (tuple2!70591 testedP!447 Nil!74569))))

(declare-fun d!2375857 () Bool)

(assert (=> d!2375857 e!4689579))

(declare-fun res!3152634 () Bool)

(assert (=> d!2375857 (=> (not res!3152634) (not e!4689579))))

(assert (=> d!2375857 (= res!3152634 (= (++!18334 (_1!38598 lt!2699640) (_2!38598 lt!2699640)) input!7927))))

(assert (=> d!2375857 (= lt!2699640 e!4689577)))

(declare-fun c!1460161 () Bool)

(declare-fun lostCause!1958 (Regex!21464) Bool)

(assert (=> d!2375857 (= c!1460161 (lostCause!1958 r!24602))))

(declare-fun lt!2699633 () Unit!169802)

(declare-fun Unit!169813 () Unit!169802)

(assert (=> d!2375857 (= lt!2699633 Unit!169813)))

(assert (=> d!2375857 (= (getSuffix!3767 input!7927 testedP!447) lt!2699388)))

(declare-fun lt!2699623 () Unit!169802)

(declare-fun lt!2699616 () Unit!169802)

(assert (=> d!2375857 (= lt!2699623 lt!2699616)))

(declare-fun lt!2699629 () List!74693)

(assert (=> d!2375857 (= lt!2699388 lt!2699629)))

(declare-fun lemmaSamePrefixThenSameSuffix!2974 (List!74693 List!74693 List!74693 List!74693 List!74693) Unit!169802)

(assert (=> d!2375857 (= lt!2699616 (lemmaSamePrefixThenSameSuffix!2974 testedP!447 lt!2699388 testedP!447 lt!2699629 input!7927))))

(assert (=> d!2375857 (= lt!2699629 (getSuffix!3767 input!7927 testedP!447))))

(declare-fun lt!2699617 () Unit!169802)

(declare-fun lt!2699625 () Unit!169802)

(assert (=> d!2375857 (= lt!2699617 lt!2699625)))

(assert (=> d!2375857 (isPrefix!6564 testedP!447 (++!18334 testedP!447 lt!2699388))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3836 (List!74693 List!74693) Unit!169802)

(assert (=> d!2375857 (= lt!2699625 (lemmaConcatTwoListThenFirstIsPrefix!3836 testedP!447 lt!2699388))))

(assert (=> d!2375857 (validRegex!11768 r!24602)))

(assert (=> d!2375857 (= (findLongestMatchInner!2245 r!24602 testedP!447 lt!2699384 lt!2699388 input!7927 lt!2699389) lt!2699640)))

(declare-fun bm!736851 () Bool)

(assert (=> bm!736851 (= call!736858 (nullable!9565 r!24602))))

(declare-fun bm!736852 () Bool)

(assert (=> bm!736852 (= call!736855 (lemmaIsPrefixRefl!4032 input!7927 input!7927))))

(declare-fun b!7949509 () Bool)

(declare-fun c!1460159 () Bool)

(assert (=> b!7949509 (= c!1460159 call!736858)))

(declare-fun lt!2699628 () Unit!169802)

(declare-fun lt!2699630 () Unit!169802)

(assert (=> b!7949509 (= lt!2699628 lt!2699630)))

(declare-fun lt!2699622 () C!43266)

(declare-fun lt!2699621 () List!74693)

(assert (=> b!7949509 (= (++!18334 (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569)) lt!2699621) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3514 (List!74693 C!43266 List!74693 List!74693) Unit!169802)

(assert (=> b!7949509 (= lt!2699630 (lemmaMoveElementToOtherListKeepsConcatEq!3514 testedP!447 lt!2699622 lt!2699621 input!7927))))

(assert (=> b!7949509 (= lt!2699621 (tail!15758 lt!2699388))))

(assert (=> b!7949509 (= lt!2699622 (head!16216 lt!2699388))))

(declare-fun lt!2699631 () Unit!169802)

(declare-fun lt!2699614 () Unit!169802)

(assert (=> b!7949509 (= lt!2699631 lt!2699614)))

(assert (=> b!7949509 (isPrefix!6564 (++!18334 testedP!447 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569)) input!7927)))

(assert (=> b!7949509 (= lt!2699614 (lemmaAddHeadSuffixToPrefixStillPrefix!1291 testedP!447 input!7927))))

(declare-fun lt!2699619 () Unit!169802)

(declare-fun lt!2699615 () Unit!169802)

(assert (=> b!7949509 (= lt!2699619 lt!2699615)))

(assert (=> b!7949509 (= lt!2699615 (lemmaAddHeadSuffixToPrefixStillPrefix!1291 testedP!447 input!7927))))

(declare-fun lt!2699638 () List!74693)

(assert (=> b!7949509 (= lt!2699638 (++!18334 testedP!447 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))

(declare-fun lt!2699627 () Unit!169802)

(declare-fun e!4689574 () Unit!169802)

(assert (=> b!7949509 (= lt!2699627 e!4689574)))

(declare-fun c!1460163 () Bool)

(assert (=> b!7949509 (= c!1460163 (= (size!43400 testedP!447) (size!43400 input!7927)))))

(declare-fun lt!2699624 () Unit!169802)

(declare-fun lt!2699639 () Unit!169802)

(assert (=> b!7949509 (= lt!2699624 lt!2699639)))

(assert (=> b!7949509 (<= (size!43400 testedP!447) (size!43400 input!7927))))

(assert (=> b!7949509 (= lt!2699639 (lemmaIsPrefixThenSmallerEqSize!1081 testedP!447 input!7927))))

(assert (=> b!7949509 (= e!4689578 e!4689576)))

(declare-fun b!7949510 () Bool)

(declare-fun Unit!169814 () Unit!169802)

(assert (=> b!7949510 (= e!4689574 Unit!169814)))

(declare-fun bm!736853 () Bool)

(assert (=> bm!736853 (= call!736856 (isPrefix!6564 input!7927 input!7927))))

(declare-fun bm!736854 () Bool)

(assert (=> bm!736854 (= call!736859 (head!16216 lt!2699388))))

(declare-fun b!7949511 () Bool)

(assert (=> b!7949511 (= e!4689577 (tuple2!70591 Nil!74569 input!7927))))

(declare-fun bm!736855 () Bool)

(assert (=> bm!736855 (= call!736857 (findLongestMatchInner!2245 call!736853 lt!2699638 (+ lt!2699384 1) call!736854 input!7927 lt!2699389))))

(declare-fun b!7949512 () Bool)

(assert (=> b!7949512 (= e!4689575 (tuple2!70591 testedP!447 lt!2699388))))

(declare-fun b!7949513 () Bool)

(declare-fun Unit!169815 () Unit!169802)

(assert (=> b!7949513 (= e!4689574 Unit!169815)))

(declare-fun lt!2699620 () Unit!169802)

(assert (=> b!7949513 (= lt!2699620 call!736855)))

(assert (=> b!7949513 call!736856))

(declare-fun lt!2699636 () Unit!169802)

(assert (=> b!7949513 (= lt!2699636 lt!2699620)))

(declare-fun lt!2699618 () Unit!169802)

(assert (=> b!7949513 (= lt!2699618 call!736860)))

(assert (=> b!7949513 (= input!7927 testedP!447)))

(declare-fun lt!2699635 () Unit!169802)

(assert (=> b!7949513 (= lt!2699635 lt!2699618)))

(assert (=> b!7949513 false))

(declare-fun b!7949514 () Bool)

(assert (=> b!7949514 (= e!4689576 e!4689575)))

(assert (=> b!7949514 (= lt!2699613 call!736857)))

(declare-fun c!1460164 () Bool)

(assert (=> b!7949514 (= c!1460164 (isEmpty!42868 (_1!38598 lt!2699613)))))

(assert (= (and d!2375857 c!1460161) b!7949511))

(assert (= (and d!2375857 (not c!1460161)) b!7949507))

(assert (= (and b!7949507 c!1460162) b!7949503))

(assert (= (and b!7949507 (not c!1460162)) b!7949509))

(assert (= (and b!7949503 c!1460160) b!7949508))

(assert (= (and b!7949503 (not c!1460160)) b!7949501))

(assert (= (and b!7949509 c!1460163) b!7949513))

(assert (= (and b!7949509 (not c!1460163)) b!7949510))

(assert (= (and b!7949509 c!1460159) b!7949514))

(assert (= (and b!7949509 (not c!1460159)) b!7949505))

(assert (= (and b!7949514 c!1460164) b!7949512))

(assert (= (and b!7949514 (not c!1460164)) b!7949506))

(assert (= (or b!7949514 b!7949505) bm!736854))

(assert (= (or b!7949514 b!7949505) bm!736849))

(assert (= (or b!7949514 b!7949505) bm!736848))

(assert (= (or b!7949514 b!7949505) bm!736855))

(assert (= (or b!7949503 b!7949509) bm!736851))

(assert (= (or b!7949503 b!7949513) bm!736850))

(assert (= (or b!7949503 b!7949513) bm!736852))

(assert (= (or b!7949503 b!7949513) bm!736853))

(assert (= (and d!2375857 res!3152634) b!7949502))

(assert (= (and b!7949502 (not res!3152633)) b!7949504))

(assert (=> bm!736850 m!8334070))

(assert (=> bm!736851 m!8334076))

(assert (=> b!7949509 m!8334202))

(assert (=> b!7949509 m!8334204))

(assert (=> b!7949509 m!8334062))

(assert (=> b!7949509 m!8334198))

(assert (=> b!7949509 m!8334058))

(assert (=> b!7949509 m!8334080))

(declare-fun m!8334278 () Bool)

(assert (=> b!7949509 m!8334278))

(assert (=> b!7949509 m!8334202))

(assert (=> b!7949509 m!8334060))

(assert (=> b!7949509 m!8334278))

(declare-fun m!8334280 () Bool)

(assert (=> b!7949509 m!8334280))

(assert (=> b!7949509 m!8334072))

(assert (=> b!7949509 m!8334062))

(declare-fun m!8334282 () Bool)

(assert (=> b!7949509 m!8334282))

(declare-fun m!8334284 () Bool)

(assert (=> b!7949509 m!8334284))

(assert (=> b!7949509 m!8334078))

(assert (=> b!7949509 m!8334082))

(assert (=> bm!736849 m!8334282))

(declare-fun m!8334286 () Bool)

(assert (=> bm!736848 m!8334286))

(declare-fun m!8334288 () Bool)

(assert (=> b!7949514 m!8334288))

(declare-fun m!8334290 () Bool)

(assert (=> b!7949504 m!8334290))

(assert (=> b!7949504 m!8334058))

(assert (=> bm!736852 m!8334066))

(assert (=> bm!736853 m!8334068))

(declare-fun m!8334292 () Bool)

(assert (=> b!7949502 m!8334292))

(assert (=> bm!736854 m!8334080))

(declare-fun m!8334294 () Bool)

(assert (=> bm!736855 m!8334294))

(declare-fun m!8334296 () Bool)

(assert (=> d!2375857 m!8334296))

(declare-fun m!8334298 () Bool)

(assert (=> d!2375857 m!8334298))

(declare-fun m!8334300 () Bool)

(assert (=> d!2375857 m!8334300))

(declare-fun m!8334302 () Bool)

(assert (=> d!2375857 m!8334302))

(assert (=> d!2375857 m!8334062))

(declare-fun m!8334304 () Bool)

(assert (=> d!2375857 m!8334304))

(declare-fun m!8334306 () Bool)

(assert (=> d!2375857 m!8334306))

(assert (=> d!2375857 m!8334298))

(declare-fun m!8334308 () Bool)

(assert (=> d!2375857 m!8334308))

(assert (=> b!7949160 d!2375857))

(declare-fun d!2375867 () Bool)

(declare-fun lt!2699643 () List!74693)

(assert (=> d!2375867 (= (++!18334 testedP!447 lt!2699643) input!7927)))

(declare-fun e!4689584 () List!74693)

(assert (=> d!2375867 (= lt!2699643 e!4689584)))

(declare-fun c!1460167 () Bool)

(assert (=> d!2375867 (= c!1460167 (is-Cons!74569 testedP!447))))

(assert (=> d!2375867 (>= (size!43400 input!7927) (size!43400 testedP!447))))

(assert (=> d!2375867 (= (getSuffix!3767 input!7927 testedP!447) lt!2699643)))

(declare-fun b!7949519 () Bool)

(assert (=> b!7949519 (= e!4689584 (getSuffix!3767 (tail!15758 input!7927) (t!390436 testedP!447)))))

(declare-fun b!7949520 () Bool)

(assert (=> b!7949520 (= e!4689584 input!7927)))

(assert (= (and d!2375867 c!1460167) b!7949519))

(assert (= (and d!2375867 (not c!1460167)) b!7949520))

(declare-fun m!8334310 () Bool)

(assert (=> d!2375867 m!8334310))

(assert (=> d!2375867 m!8334060))

(assert (=> d!2375867 m!8334058))

(assert (=> b!7949519 m!8334154))

(assert (=> b!7949519 m!8334154))

(declare-fun m!8334312 () Bool)

(assert (=> b!7949519 m!8334312))

(assert (=> b!7949160 d!2375867))

(declare-fun d!2375869 () Bool)

(declare-fun lt!2699644 () Int)

(assert (=> d!2375869 (>= lt!2699644 0)))

(declare-fun e!4689585 () Int)

(assert (=> d!2375869 (= lt!2699644 e!4689585)))

(declare-fun c!1460168 () Bool)

(assert (=> d!2375869 (= c!1460168 (is-Nil!74569 testedP!447))))

(assert (=> d!2375869 (= (size!43400 testedP!447) lt!2699644)))

(declare-fun b!7949521 () Bool)

(assert (=> b!7949521 (= e!4689585 0)))

(declare-fun b!7949522 () Bool)

(assert (=> b!7949522 (= e!4689585 (+ 1 (size!43400 (t!390436 testedP!447))))))

(assert (= (and d!2375869 c!1460168) b!7949521))

(assert (= (and d!2375869 (not c!1460168)) b!7949522))

(declare-fun m!8334314 () Bool)

(assert (=> b!7949522 m!8334314))

(assert (=> b!7949160 d!2375869))

(declare-fun d!2375871 () Bool)

(assert (=> d!2375871 (<= (size!43400 testedP!447) (size!43400 input!7927))))

(declare-fun lt!2699647 () Unit!169802)

(declare-fun choose!59901 (List!74693 List!74693) Unit!169802)

(assert (=> d!2375871 (= lt!2699647 (choose!59901 testedP!447 input!7927))))

(assert (=> d!2375871 (isPrefix!6564 testedP!447 input!7927)))

(assert (=> d!2375871 (= (lemmaIsPrefixThenSmallerEqSize!1081 testedP!447 input!7927) lt!2699647)))

(declare-fun bs!1969510 () Bool)

(assert (= bs!1969510 d!2375871))

(assert (=> bs!1969510 m!8334058))

(assert (=> bs!1969510 m!8334060))

(declare-fun m!8334316 () Bool)

(assert (=> bs!1969510 m!8334316))

(assert (=> bs!1969510 m!8334050))

(assert (=> b!7949166 d!2375871))

(declare-fun b!7949527 () Bool)

(declare-fun e!4689588 () Bool)

(declare-fun tp!2365521 () Bool)

(assert (=> b!7949527 (= e!4689588 (and tp_is_empty!53471 tp!2365521))))

(assert (=> b!7949161 (= tp!2365417 e!4689588)))

(assert (= (and b!7949161 (is-Cons!74569 (t!390436 input!7927))) b!7949527))

(declare-fun b!7949540 () Bool)

(declare-fun e!4689591 () Bool)

(declare-fun tp!2365536 () Bool)

(assert (=> b!7949540 (= e!4689591 tp!2365536)))

(declare-fun b!7949538 () Bool)

(assert (=> b!7949538 (= e!4689591 tp_is_empty!53471)))

(assert (=> b!7949167 (= tp!2365414 e!4689591)))

(declare-fun b!7949541 () Bool)

(declare-fun tp!2365532 () Bool)

(declare-fun tp!2365534 () Bool)

(assert (=> b!7949541 (= e!4689591 (and tp!2365532 tp!2365534))))

(declare-fun b!7949539 () Bool)

(declare-fun tp!2365535 () Bool)

(declare-fun tp!2365533 () Bool)

(assert (=> b!7949539 (= e!4689591 (and tp!2365535 tp!2365533))))

(assert (= (and b!7949167 (is-ElementMatch!21464 (reg!21793 baseR!116))) b!7949538))

(assert (= (and b!7949167 (is-Concat!30463 (reg!21793 baseR!116))) b!7949539))

(assert (= (and b!7949167 (is-Star!21464 (reg!21793 baseR!116))) b!7949540))

(assert (= (and b!7949167 (is-Union!21464 (reg!21793 baseR!116))) b!7949541))

(declare-fun b!7949544 () Bool)

(declare-fun e!4689592 () Bool)

(declare-fun tp!2365541 () Bool)

(assert (=> b!7949544 (= e!4689592 tp!2365541)))

(declare-fun b!7949542 () Bool)

(assert (=> b!7949542 (= e!4689592 tp_is_empty!53471)))

(assert (=> b!7949157 (= tp!2365416 e!4689592)))

(declare-fun b!7949545 () Bool)

(declare-fun tp!2365537 () Bool)

(declare-fun tp!2365539 () Bool)

(assert (=> b!7949545 (= e!4689592 (and tp!2365537 tp!2365539))))

(declare-fun b!7949543 () Bool)

(declare-fun tp!2365540 () Bool)

(declare-fun tp!2365538 () Bool)

(assert (=> b!7949543 (= e!4689592 (and tp!2365540 tp!2365538))))

(assert (= (and b!7949157 (is-ElementMatch!21464 (reg!21793 r!24602))) b!7949542))

(assert (= (and b!7949157 (is-Concat!30463 (reg!21793 r!24602))) b!7949543))

(assert (= (and b!7949157 (is-Star!21464 (reg!21793 r!24602))) b!7949544))

(assert (= (and b!7949157 (is-Union!21464 (reg!21793 r!24602))) b!7949545))

(declare-fun b!7949548 () Bool)

(declare-fun e!4689593 () Bool)

(declare-fun tp!2365546 () Bool)

(assert (=> b!7949548 (= e!4689593 tp!2365546)))

(declare-fun b!7949546 () Bool)

(assert (=> b!7949546 (= e!4689593 tp_is_empty!53471)))

(assert (=> b!7949153 (= tp!2365418 e!4689593)))

(declare-fun b!7949549 () Bool)

(declare-fun tp!2365542 () Bool)

(declare-fun tp!2365544 () Bool)

(assert (=> b!7949549 (= e!4689593 (and tp!2365542 tp!2365544))))

(declare-fun b!7949547 () Bool)

(declare-fun tp!2365545 () Bool)

(declare-fun tp!2365543 () Bool)

(assert (=> b!7949547 (= e!4689593 (and tp!2365545 tp!2365543))))

(assert (= (and b!7949153 (is-ElementMatch!21464 (regOne!43440 r!24602))) b!7949546))

(assert (= (and b!7949153 (is-Concat!30463 (regOne!43440 r!24602))) b!7949547))

(assert (= (and b!7949153 (is-Star!21464 (regOne!43440 r!24602))) b!7949548))

(assert (= (and b!7949153 (is-Union!21464 (regOne!43440 r!24602))) b!7949549))

(declare-fun b!7949552 () Bool)

(declare-fun e!4689594 () Bool)

(declare-fun tp!2365551 () Bool)

(assert (=> b!7949552 (= e!4689594 tp!2365551)))

(declare-fun b!7949550 () Bool)

(assert (=> b!7949550 (= e!4689594 tp_is_empty!53471)))

(assert (=> b!7949153 (= tp!2365413 e!4689594)))

(declare-fun b!7949553 () Bool)

(declare-fun tp!2365547 () Bool)

(declare-fun tp!2365549 () Bool)

(assert (=> b!7949553 (= e!4689594 (and tp!2365547 tp!2365549))))

(declare-fun b!7949551 () Bool)

(declare-fun tp!2365550 () Bool)

(declare-fun tp!2365548 () Bool)

(assert (=> b!7949551 (= e!4689594 (and tp!2365550 tp!2365548))))

(assert (= (and b!7949153 (is-ElementMatch!21464 (regTwo!43440 r!24602))) b!7949550))

(assert (= (and b!7949153 (is-Concat!30463 (regTwo!43440 r!24602))) b!7949551))

(assert (= (and b!7949153 (is-Star!21464 (regTwo!43440 r!24602))) b!7949552))

(assert (= (and b!7949153 (is-Union!21464 (regTwo!43440 r!24602))) b!7949553))

(declare-fun b!7949556 () Bool)

(declare-fun e!4689595 () Bool)

(declare-fun tp!2365556 () Bool)

(assert (=> b!7949556 (= e!4689595 tp!2365556)))

(declare-fun b!7949554 () Bool)

(assert (=> b!7949554 (= e!4689595 tp_is_empty!53471)))

(assert (=> b!7949159 (= tp!2365412 e!4689595)))

(declare-fun b!7949557 () Bool)

(declare-fun tp!2365552 () Bool)

(declare-fun tp!2365554 () Bool)

(assert (=> b!7949557 (= e!4689595 (and tp!2365552 tp!2365554))))

(declare-fun b!7949555 () Bool)

(declare-fun tp!2365555 () Bool)

(declare-fun tp!2365553 () Bool)

(assert (=> b!7949555 (= e!4689595 (and tp!2365555 tp!2365553))))

(assert (= (and b!7949159 (is-ElementMatch!21464 (regOne!43441 baseR!116))) b!7949554))

(assert (= (and b!7949159 (is-Concat!30463 (regOne!43441 baseR!116))) b!7949555))

(assert (= (and b!7949159 (is-Star!21464 (regOne!43441 baseR!116))) b!7949556))

(assert (= (and b!7949159 (is-Union!21464 (regOne!43441 baseR!116))) b!7949557))

(declare-fun b!7949560 () Bool)

(declare-fun e!4689596 () Bool)

(declare-fun tp!2365561 () Bool)

(assert (=> b!7949560 (= e!4689596 tp!2365561)))

(declare-fun b!7949558 () Bool)

(assert (=> b!7949558 (= e!4689596 tp_is_empty!53471)))

(assert (=> b!7949159 (= tp!2365407 e!4689596)))

(declare-fun b!7949561 () Bool)

(declare-fun tp!2365557 () Bool)

(declare-fun tp!2365559 () Bool)

(assert (=> b!7949561 (= e!4689596 (and tp!2365557 tp!2365559))))

(declare-fun b!7949559 () Bool)

(declare-fun tp!2365560 () Bool)

(declare-fun tp!2365558 () Bool)

(assert (=> b!7949559 (= e!4689596 (and tp!2365560 tp!2365558))))

(assert (= (and b!7949159 (is-ElementMatch!21464 (regTwo!43441 baseR!116))) b!7949558))

(assert (= (and b!7949159 (is-Concat!30463 (regTwo!43441 baseR!116))) b!7949559))

(assert (= (and b!7949159 (is-Star!21464 (regTwo!43441 baseR!116))) b!7949560))

(assert (= (and b!7949159 (is-Union!21464 (regTwo!43441 baseR!116))) b!7949561))

(declare-fun b!7949564 () Bool)

(declare-fun e!4689597 () Bool)

(declare-fun tp!2365566 () Bool)

(assert (=> b!7949564 (= e!4689597 tp!2365566)))

(declare-fun b!7949562 () Bool)

(assert (=> b!7949562 (= e!4689597 tp_is_empty!53471)))

(assert (=> b!7949149 (= tp!2365411 e!4689597)))

(declare-fun b!7949565 () Bool)

(declare-fun tp!2365562 () Bool)

(declare-fun tp!2365564 () Bool)

(assert (=> b!7949565 (= e!4689597 (and tp!2365562 tp!2365564))))

(declare-fun b!7949563 () Bool)

(declare-fun tp!2365565 () Bool)

(declare-fun tp!2365563 () Bool)

(assert (=> b!7949563 (= e!4689597 (and tp!2365565 tp!2365563))))

(assert (= (and b!7949149 (is-ElementMatch!21464 (regOne!43441 r!24602))) b!7949562))

(assert (= (and b!7949149 (is-Concat!30463 (regOne!43441 r!24602))) b!7949563))

(assert (= (and b!7949149 (is-Star!21464 (regOne!43441 r!24602))) b!7949564))

(assert (= (and b!7949149 (is-Union!21464 (regOne!43441 r!24602))) b!7949565))

(declare-fun b!7949568 () Bool)

(declare-fun e!4689598 () Bool)

(declare-fun tp!2365571 () Bool)

(assert (=> b!7949568 (= e!4689598 tp!2365571)))

(declare-fun b!7949566 () Bool)

(assert (=> b!7949566 (= e!4689598 tp_is_empty!53471)))

(assert (=> b!7949149 (= tp!2365409 e!4689598)))

(declare-fun b!7949569 () Bool)

(declare-fun tp!2365567 () Bool)

(declare-fun tp!2365569 () Bool)

(assert (=> b!7949569 (= e!4689598 (and tp!2365567 tp!2365569))))

(declare-fun b!7949567 () Bool)

(declare-fun tp!2365570 () Bool)

(declare-fun tp!2365568 () Bool)

(assert (=> b!7949567 (= e!4689598 (and tp!2365570 tp!2365568))))

(assert (= (and b!7949149 (is-ElementMatch!21464 (regTwo!43441 r!24602))) b!7949566))

(assert (= (and b!7949149 (is-Concat!30463 (regTwo!43441 r!24602))) b!7949567))

(assert (= (and b!7949149 (is-Star!21464 (regTwo!43441 r!24602))) b!7949568))

(assert (= (and b!7949149 (is-Union!21464 (regTwo!43441 r!24602))) b!7949569))

(declare-fun b!7949572 () Bool)

(declare-fun e!4689599 () Bool)

(declare-fun tp!2365576 () Bool)

(assert (=> b!7949572 (= e!4689599 tp!2365576)))

(declare-fun b!7949570 () Bool)

(assert (=> b!7949570 (= e!4689599 tp_is_empty!53471)))

(assert (=> b!7949150 (= tp!2365410 e!4689599)))

(declare-fun b!7949573 () Bool)

(declare-fun tp!2365572 () Bool)

(declare-fun tp!2365574 () Bool)

(assert (=> b!7949573 (= e!4689599 (and tp!2365572 tp!2365574))))

(declare-fun b!7949571 () Bool)

(declare-fun tp!2365575 () Bool)

(declare-fun tp!2365573 () Bool)

(assert (=> b!7949571 (= e!4689599 (and tp!2365575 tp!2365573))))

(assert (= (and b!7949150 (is-ElementMatch!21464 (regOne!43440 baseR!116))) b!7949570))

(assert (= (and b!7949150 (is-Concat!30463 (regOne!43440 baseR!116))) b!7949571))

(assert (= (and b!7949150 (is-Star!21464 (regOne!43440 baseR!116))) b!7949572))

(assert (= (and b!7949150 (is-Union!21464 (regOne!43440 baseR!116))) b!7949573))

(declare-fun b!7949576 () Bool)

(declare-fun e!4689600 () Bool)

(declare-fun tp!2365581 () Bool)

(assert (=> b!7949576 (= e!4689600 tp!2365581)))

(declare-fun b!7949574 () Bool)

(assert (=> b!7949574 (= e!4689600 tp_is_empty!53471)))

(assert (=> b!7949150 (= tp!2365415 e!4689600)))

(declare-fun b!7949577 () Bool)

(declare-fun tp!2365577 () Bool)

(declare-fun tp!2365579 () Bool)

(assert (=> b!7949577 (= e!4689600 (and tp!2365577 tp!2365579))))

(declare-fun b!7949575 () Bool)

(declare-fun tp!2365580 () Bool)

(declare-fun tp!2365578 () Bool)

(assert (=> b!7949575 (= e!4689600 (and tp!2365580 tp!2365578))))

(assert (= (and b!7949150 (is-ElementMatch!21464 (regTwo!43440 baseR!116))) b!7949574))

(assert (= (and b!7949150 (is-Concat!30463 (regTwo!43440 baseR!116))) b!7949575))

(assert (= (and b!7949150 (is-Star!21464 (regTwo!43440 baseR!116))) b!7949576))

(assert (= (and b!7949150 (is-Union!21464 (regTwo!43440 baseR!116))) b!7949577))

(declare-fun b!7949578 () Bool)

(declare-fun e!4689601 () Bool)

(declare-fun tp!2365582 () Bool)

(assert (=> b!7949578 (= e!4689601 (and tp_is_empty!53471 tp!2365582))))

(assert (=> b!7949155 (= tp!2365408 e!4689601)))

(assert (= (and b!7949155 (is-Cons!74569 (t!390436 testedP!447))) b!7949578))

(push 1)

(assert (not b!7949504))

(assert (not b!7949279))

(assert (not d!2375847))

(assert (not b!7949565))

(assert (not b!7949568))

(assert (not b!7949557))

(assert (not d!2375843))

(assert (not d!2375867))

(assert (not b!7949552))

(assert (not b!7949541))

(assert (not b!7949544))

(assert (not b!7949514))

(assert (not b!7949569))

(assert (not b!7949235))

(assert (not b!7949572))

(assert (not b!7949271))

(assert (not b!7949577))

(assert (not b!7949549))

(assert (not d!2375813))

(assert (not b!7949509))

(assert (not b!7949560))

(assert (not b!7949330))

(assert (not b!7949553))

(assert (not bm!736853))

(assert (not b!7949578))

(assert (not b!7949280))

(assert (not b!7949564))

(assert (not b!7949573))

(assert (not b!7949278))

(assert (not bm!736854))

(assert (not bm!736798))

(assert (not b!7949561))

(assert (not b!7949318))

(assert (not bm!736797))

(assert (not bm!736852))

(assert (not d!2375849))

(assert (not b!7949548))

(assert (not d!2375857))

(assert (not b!7949329))

(assert (not b!7949333))

(assert (not bm!736849))

(assert (not b!7949556))

(assert (not b!7949341))

(assert (not b!7949576))

(assert (not d!2375871))

(assert (not b!7949502))

(assert (not b!7949335))

(assert (not b!7949539))

(assert (not b!7949575))

(assert (not d!2375827))

(assert (not bm!736855))

(assert (not b!7949527))

(assert (not bm!736850))

(assert (not b!7949270))

(assert (not b!7949559))

(assert (not b!7949519))

(assert (not b!7949334))

(assert (not b!7949543))

(assert (not b!7949551))

(assert (not b!7949571))

(assert (not b!7949563))

(assert (not b!7949547))

(assert tp_is_empty!53471)

(assert (not b!7949522))

(assert (not b!7949545))

(assert (not bm!736851))

(assert (not b!7949540))

(assert (not bm!736848))

(assert (not b!7949567))

(assert (not b!7949555))

(assert (not d!2375807))

(assert (not b!7949272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!2375871 d!2375869))

(assert (=> d!2375871 d!2375853))

(declare-fun d!2375873 () Bool)

(assert (=> d!2375873 (<= (size!43400 testedP!447) (size!43400 input!7927))))

(assert (=> d!2375873 true))

(declare-fun _$64!898 () Unit!169802)

(assert (=> d!2375873 (= (choose!59901 testedP!447 input!7927) _$64!898)))

(declare-fun bs!1969511 () Bool)

(assert (= bs!1969511 d!2375873))

(assert (=> bs!1969511 m!8334058))

(assert (=> bs!1969511 m!8334060))

(assert (=> d!2375871 d!2375873))

(assert (=> d!2375871 d!2375831))

(declare-fun d!2375875 () Bool)

(declare-fun lt!2699648 () Int)

(assert (=> d!2375875 (>= lt!2699648 0)))

(declare-fun e!4689602 () Int)

(assert (=> d!2375875 (= lt!2699648 e!4689602)))

(declare-fun c!1460169 () Bool)

(assert (=> d!2375875 (= c!1460169 (is-Nil!74569 (_1!38598 lt!2699640)))))

(assert (=> d!2375875 (= (size!43400 (_1!38598 lt!2699640)) lt!2699648)))

(declare-fun b!7949579 () Bool)

(assert (=> b!7949579 (= e!4689602 0)))

(declare-fun b!7949580 () Bool)

(assert (=> b!7949580 (= e!4689602 (+ 1 (size!43400 (t!390436 (_1!38598 lt!2699640)))))))

(assert (= (and d!2375875 c!1460169) b!7949579))

(assert (= (and d!2375875 (not c!1460169)) b!7949580))

(declare-fun m!8334318 () Bool)

(assert (=> b!7949580 m!8334318))

(assert (=> b!7949504 d!2375875))

(assert (=> b!7949504 d!2375869))

(declare-fun d!2375877 () Bool)

(assert (=> d!2375877 (= (isEmpty!42868 (_1!38598 lt!2699640)) (is-Nil!74569 (_1!38598 lt!2699640)))))

(assert (=> b!7949502 d!2375877))

(declare-fun d!2375879 () Bool)

(assert (=> d!2375879 (= (tail!15758 lt!2699388) (t!390436 lt!2699388))))

(assert (=> bm!736849 d!2375879))

(declare-fun d!2375881 () Bool)

(assert (=> d!2375881 (= (isEmpty!42868 (_1!38598 lt!2699613)) (is-Nil!74569 (_1!38598 lt!2699613)))))

(assert (=> b!7949514 d!2375881))

(declare-fun d!2375883 () Bool)

(assert (=> d!2375883 (= (nullable!9565 (reg!21793 baseR!116)) (nullableFct!3768 (reg!21793 baseR!116)))))

(declare-fun bs!1969512 () Bool)

(assert (= bs!1969512 d!2375883))

(declare-fun m!8334320 () Bool)

(assert (=> bs!1969512 m!8334320))

(assert (=> b!7949318 d!2375883))

(declare-fun d!2375885 () Bool)

(declare-fun lt!2699649 () Int)

(assert (=> d!2375885 (>= lt!2699649 0)))

(declare-fun e!4689603 () Int)

(assert (=> d!2375885 (= lt!2699649 e!4689603)))

(declare-fun c!1460170 () Bool)

(assert (=> d!2375885 (= c!1460170 (is-Nil!74569 (t!390436 input!7927)))))

(assert (=> d!2375885 (= (size!43400 (t!390436 input!7927)) lt!2699649)))

(declare-fun b!7949581 () Bool)

(assert (=> b!7949581 (= e!4689603 0)))

(declare-fun b!7949582 () Bool)

(assert (=> b!7949582 (= e!4689603 (+ 1 (size!43400 (t!390436 (t!390436 input!7927)))))))

(assert (= (and d!2375885 c!1460170) b!7949581))

(assert (= (and d!2375885 (not c!1460170)) b!7949582))

(declare-fun m!8334322 () Bool)

(assert (=> b!7949582 m!8334322))

(assert (=> b!7949341 d!2375885))

(declare-fun lt!2699650 () List!74693)

(declare-fun b!7949586 () Bool)

(declare-fun e!4689605 () Bool)

(assert (=> b!7949586 (= e!4689605 (or (not (= (Cons!74569 (head!16216 lt!2699388) Nil!74569) Nil!74569)) (= lt!2699650 (t!390436 testedP!447))))))

(declare-fun b!7949585 () Bool)

(declare-fun res!3152635 () Bool)

(assert (=> b!7949585 (=> (not res!3152635) (not e!4689605))))

(assert (=> b!7949585 (= res!3152635 (= (size!43400 lt!2699650) (+ (size!43400 (t!390436 testedP!447)) (size!43400 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))))

(declare-fun b!7949584 () Bool)

(declare-fun e!4689604 () List!74693)

(assert (=> b!7949584 (= e!4689604 (Cons!74569 (h!81017 (t!390436 testedP!447)) (++!18334 (t!390436 (t!390436 testedP!447)) (Cons!74569 (head!16216 lt!2699388) Nil!74569))))))

(declare-fun b!7949583 () Bool)

(assert (=> b!7949583 (= e!4689604 (Cons!74569 (head!16216 lt!2699388) Nil!74569))))

(declare-fun d!2375887 () Bool)

(assert (=> d!2375887 e!4689605))

(declare-fun res!3152636 () Bool)

(assert (=> d!2375887 (=> (not res!3152636) (not e!4689605))))

(assert (=> d!2375887 (= res!3152636 (= (content!15826 lt!2699650) (set.union (content!15826 (t!390436 testedP!447)) (content!15826 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))))

(assert (=> d!2375887 (= lt!2699650 e!4689604)))

(declare-fun c!1460171 () Bool)

(assert (=> d!2375887 (= c!1460171 (is-Nil!74569 (t!390436 testedP!447)))))

(assert (=> d!2375887 (= (++!18334 (t!390436 testedP!447) (Cons!74569 (head!16216 lt!2699388) Nil!74569)) lt!2699650)))

(assert (= (and d!2375887 c!1460171) b!7949583))

(assert (= (and d!2375887 (not c!1460171)) b!7949584))

(assert (= (and d!2375887 res!3152636) b!7949585))

(assert (= (and b!7949585 res!3152635) b!7949586))

(declare-fun m!8334324 () Bool)

(assert (=> b!7949585 m!8334324))

(assert (=> b!7949585 m!8334314))

(assert (=> b!7949585 m!8334208))

(declare-fun m!8334326 () Bool)

(assert (=> b!7949584 m!8334326))

(declare-fun m!8334328 () Bool)

(assert (=> d!2375887 m!8334328))

(declare-fun m!8334330 () Bool)

(assert (=> d!2375887 m!8334330))

(assert (=> d!2375887 m!8334216))

(assert (=> b!7949329 d!2375887))

(declare-fun d!2375889 () Bool)

(declare-fun lt!2699651 () Regex!21464)

(assert (=> d!2375889 (validRegex!11768 lt!2699651)))

(declare-fun e!4689606 () Regex!21464)

(assert (=> d!2375889 (= lt!2699651 e!4689606)))

(declare-fun c!1460172 () Bool)

(assert (=> d!2375889 (= c!1460172 (is-Cons!74569 (t!390436 testedP!447)))))

(assert (=> d!2375889 (validRegex!11768 (derivativeStep!6493 baseR!116 (h!81017 testedP!447)))))

(assert (=> d!2375889 (= (derivative!650 (derivativeStep!6493 baseR!116 (h!81017 testedP!447)) (t!390436 testedP!447)) lt!2699651)))

(declare-fun b!7949587 () Bool)

(assert (=> b!7949587 (= e!4689606 (derivative!650 (derivativeStep!6493 (derivativeStep!6493 baseR!116 (h!81017 testedP!447)) (h!81017 (t!390436 testedP!447))) (t!390436 (t!390436 testedP!447))))))

(declare-fun b!7949588 () Bool)

(assert (=> b!7949588 (= e!4689606 (derivativeStep!6493 baseR!116 (h!81017 testedP!447)))))

(assert (= (and d!2375889 c!1460172) b!7949587))

(assert (= (and d!2375889 (not c!1460172)) b!7949588))

(declare-fun m!8334332 () Bool)

(assert (=> d!2375889 m!8334332))

(assert (=> d!2375889 m!8334128))

(declare-fun m!8334334 () Bool)

(assert (=> d!2375889 m!8334334))

(assert (=> b!7949587 m!8334128))

(declare-fun m!8334336 () Bool)

(assert (=> b!7949587 m!8334336))

(assert (=> b!7949587 m!8334336))

(declare-fun m!8334338 () Bool)

(assert (=> b!7949587 m!8334338))

(assert (=> b!7949235 d!2375889))

(declare-fun b!7949609 () Bool)

(declare-fun e!4689618 () Regex!21464)

(declare-fun e!4689620 () Regex!21464)

(assert (=> b!7949609 (= e!4689618 e!4689620)))

(declare-fun c!1460183 () Bool)

(assert (=> b!7949609 (= c!1460183 (is-ElementMatch!21464 baseR!116))))

(declare-fun bm!736864 () Bool)

(declare-fun call!736871 () Regex!21464)

(declare-fun call!736869 () Regex!21464)

(assert (=> bm!736864 (= call!736871 call!736869)))

(declare-fun e!4689619 () Regex!21464)

(declare-fun call!736870 () Regex!21464)

(declare-fun b!7949610 () Bool)

(declare-fun call!736872 () Regex!21464)

(assert (=> b!7949610 (= e!4689619 (Union!21464 (Concat!30463 call!736872 (regTwo!43440 baseR!116)) call!736870))))

(declare-fun d!2375891 () Bool)

(declare-fun lt!2699654 () Regex!21464)

(assert (=> d!2375891 (validRegex!11768 lt!2699654)))

(assert (=> d!2375891 (= lt!2699654 e!4689618)))

(declare-fun c!1460184 () Bool)

(assert (=> d!2375891 (= c!1460184 (or (is-EmptyExpr!21464 baseR!116) (is-EmptyLang!21464 baseR!116)))))

(assert (=> d!2375891 (validRegex!11768 baseR!116)))

(assert (=> d!2375891 (= (derivativeStep!6493 baseR!116 (h!81017 testedP!447)) lt!2699654)))

(declare-fun b!7949611 () Bool)

(declare-fun e!4689621 () Regex!21464)

(declare-fun e!4689617 () Regex!21464)

(assert (=> b!7949611 (= e!4689621 e!4689617)))

(declare-fun c!1460185 () Bool)

(assert (=> b!7949611 (= c!1460185 (is-Star!21464 baseR!116))))

(declare-fun c!1460187 () Bool)

(declare-fun bm!736865 () Bool)

(declare-fun c!1460186 () Bool)

(assert (=> bm!736865 (= call!736869 (derivativeStep!6493 (ite c!1460187 (regTwo!43441 baseR!116) (ite c!1460185 (reg!21793 baseR!116) (ite c!1460186 (regTwo!43440 baseR!116) (regOne!43440 baseR!116)))) (h!81017 testedP!447)))))

(declare-fun b!7949612 () Bool)

(assert (=> b!7949612 (= c!1460186 (nullable!9565 (regOne!43440 baseR!116)))))

(assert (=> b!7949612 (= e!4689617 e!4689619)))

(declare-fun b!7949613 () Bool)

(assert (=> b!7949613 (= e!4689620 (ite (= (h!81017 testedP!447) (c!1460090 baseR!116)) EmptyExpr!21464 EmptyLang!21464))))

(declare-fun b!7949614 () Bool)

(assert (=> b!7949614 (= e!4689618 EmptyLang!21464)))

(declare-fun b!7949615 () Bool)

(assert (=> b!7949615 (= c!1460187 (is-Union!21464 baseR!116))))

(assert (=> b!7949615 (= e!4689620 e!4689621)))

(declare-fun b!7949616 () Bool)

(assert (=> b!7949616 (= e!4689621 (Union!21464 call!736872 call!736869))))

(declare-fun bm!736866 () Bool)

(assert (=> bm!736866 (= call!736872 (derivativeStep!6493 (ite c!1460187 (regOne!43441 baseR!116) (regOne!43440 baseR!116)) (h!81017 testedP!447)))))

(declare-fun bm!736867 () Bool)

(assert (=> bm!736867 (= call!736870 call!736871)))

(declare-fun b!7949617 () Bool)

(assert (=> b!7949617 (= e!4689619 (Union!21464 (Concat!30463 call!736870 (regTwo!43440 baseR!116)) EmptyLang!21464))))

(declare-fun b!7949618 () Bool)

(assert (=> b!7949618 (= e!4689617 (Concat!30463 call!736871 baseR!116))))

(assert (= (and d!2375891 c!1460184) b!7949614))

(assert (= (and d!2375891 (not c!1460184)) b!7949609))

(assert (= (and b!7949609 c!1460183) b!7949613))

(assert (= (and b!7949609 (not c!1460183)) b!7949615))

(assert (= (and b!7949615 c!1460187) b!7949616))

(assert (= (and b!7949615 (not c!1460187)) b!7949611))

(assert (= (and b!7949611 c!1460185) b!7949618))

(assert (= (and b!7949611 (not c!1460185)) b!7949612))

(assert (= (and b!7949612 c!1460186) b!7949610))

(assert (= (and b!7949612 (not c!1460186)) b!7949617))

(assert (= (or b!7949610 b!7949617) bm!736867))

(assert (= (or b!7949618 bm!736867) bm!736864))

(assert (= (or b!7949616 bm!736864) bm!736865))

(assert (= (or b!7949616 b!7949610) bm!736866))

(declare-fun m!8334340 () Bool)

(assert (=> d!2375891 m!8334340))

(assert (=> d!2375891 m!8334054))

(declare-fun m!8334342 () Bool)

(assert (=> bm!736865 m!8334342))

(declare-fun m!8334344 () Bool)

(assert (=> b!7949612 m!8334344))

(declare-fun m!8334346 () Bool)

(assert (=> bm!736866 m!8334346))

(assert (=> b!7949235 d!2375891))

(declare-fun d!2375893 () Bool)

(declare-fun lt!2699655 () Int)

(assert (=> d!2375893 (>= lt!2699655 0)))

(declare-fun e!4689622 () Int)

(assert (=> d!2375893 (= lt!2699655 e!4689622)))

(declare-fun c!1460188 () Bool)

(assert (=> d!2375893 (= c!1460188 (is-Nil!74569 (t!390436 testedP!447)))))

(assert (=> d!2375893 (= (size!43400 (t!390436 testedP!447)) lt!2699655)))

(declare-fun b!7949619 () Bool)

(assert (=> b!7949619 (= e!4689622 0)))

(declare-fun b!7949620 () Bool)

(assert (=> b!7949620 (= e!4689622 (+ 1 (size!43400 (t!390436 (t!390436 testedP!447)))))))

(assert (= (and d!2375893 c!1460188) b!7949619))

(assert (= (and d!2375893 (not c!1460188)) b!7949620))

(declare-fun m!8334348 () Bool)

(assert (=> b!7949620 m!8334348))

(assert (=> b!7949522 d!2375893))

(declare-fun b!7949621 () Bool)

(declare-fun e!4689624 () Regex!21464)

(declare-fun e!4689626 () Regex!21464)

(assert (=> b!7949621 (= e!4689624 e!4689626)))

(declare-fun c!1460189 () Bool)

(assert (=> b!7949621 (= c!1460189 (is-ElementMatch!21464 r!24602))))

(declare-fun bm!736868 () Bool)

(declare-fun call!736875 () Regex!21464)

(declare-fun call!736873 () Regex!21464)

(assert (=> bm!736868 (= call!736875 call!736873)))

(declare-fun b!7949622 () Bool)

(declare-fun e!4689625 () Regex!21464)

(declare-fun call!736874 () Regex!21464)

(declare-fun call!736876 () Regex!21464)

(assert (=> b!7949622 (= e!4689625 (Union!21464 (Concat!30463 call!736876 (regTwo!43440 r!24602)) call!736874))))

(declare-fun d!2375895 () Bool)

(declare-fun lt!2699656 () Regex!21464)

(assert (=> d!2375895 (validRegex!11768 lt!2699656)))

(assert (=> d!2375895 (= lt!2699656 e!4689624)))

(declare-fun c!1460190 () Bool)

(assert (=> d!2375895 (= c!1460190 (or (is-EmptyExpr!21464 r!24602) (is-EmptyLang!21464 r!24602)))))

(assert (=> d!2375895 (validRegex!11768 r!24602)))

(assert (=> d!2375895 (= (derivativeStep!6493 r!24602 call!736859) lt!2699656)))

(declare-fun b!7949623 () Bool)

(declare-fun e!4689627 () Regex!21464)

(declare-fun e!4689623 () Regex!21464)

(assert (=> b!7949623 (= e!4689627 e!4689623)))

(declare-fun c!1460191 () Bool)

(assert (=> b!7949623 (= c!1460191 (is-Star!21464 r!24602))))

(declare-fun c!1460193 () Bool)

(declare-fun c!1460192 () Bool)

(declare-fun bm!736869 () Bool)

(assert (=> bm!736869 (= call!736873 (derivativeStep!6493 (ite c!1460193 (regTwo!43441 r!24602) (ite c!1460191 (reg!21793 r!24602) (ite c!1460192 (regTwo!43440 r!24602) (regOne!43440 r!24602)))) call!736859))))

(declare-fun b!7949624 () Bool)

(assert (=> b!7949624 (= c!1460192 (nullable!9565 (regOne!43440 r!24602)))))

(assert (=> b!7949624 (= e!4689623 e!4689625)))

(declare-fun b!7949625 () Bool)

(assert (=> b!7949625 (= e!4689626 (ite (= call!736859 (c!1460090 r!24602)) EmptyExpr!21464 EmptyLang!21464))))

(declare-fun b!7949626 () Bool)

(assert (=> b!7949626 (= e!4689624 EmptyLang!21464)))

(declare-fun b!7949627 () Bool)

(assert (=> b!7949627 (= c!1460193 (is-Union!21464 r!24602))))

(assert (=> b!7949627 (= e!4689626 e!4689627)))

(declare-fun b!7949628 () Bool)

(assert (=> b!7949628 (= e!4689627 (Union!21464 call!736876 call!736873))))

(declare-fun bm!736870 () Bool)

(assert (=> bm!736870 (= call!736876 (derivativeStep!6493 (ite c!1460193 (regOne!43441 r!24602) (regOne!43440 r!24602)) call!736859))))

(declare-fun bm!736871 () Bool)

(assert (=> bm!736871 (= call!736874 call!736875)))

(declare-fun b!7949629 () Bool)

(assert (=> b!7949629 (= e!4689625 (Union!21464 (Concat!30463 call!736874 (regTwo!43440 r!24602)) EmptyLang!21464))))

(declare-fun b!7949630 () Bool)

(assert (=> b!7949630 (= e!4689623 (Concat!30463 call!736875 r!24602))))

(assert (= (and d!2375895 c!1460190) b!7949626))

(assert (= (and d!2375895 (not c!1460190)) b!7949621))

(assert (= (and b!7949621 c!1460189) b!7949625))

(assert (= (and b!7949621 (not c!1460189)) b!7949627))

(assert (= (and b!7949627 c!1460193) b!7949628))

(assert (= (and b!7949627 (not c!1460193)) b!7949623))

(assert (= (and b!7949623 c!1460191) b!7949630))

(assert (= (and b!7949623 (not c!1460191)) b!7949624))

(assert (= (and b!7949624 c!1460192) b!7949622))

(assert (= (and b!7949624 (not c!1460192)) b!7949629))

(assert (= (or b!7949622 b!7949629) bm!736871))

(assert (= (or b!7949630 bm!736871) bm!736868))

(assert (= (or b!7949628 bm!736868) bm!736869))

(assert (= (or b!7949628 b!7949622) bm!736870))

(declare-fun m!8334350 () Bool)

(assert (=> d!2375895 m!8334350))

(assert (=> d!2375895 m!8334304))

(declare-fun m!8334352 () Bool)

(assert (=> bm!736869 m!8334352))

(declare-fun m!8334354 () Bool)

(assert (=> b!7949624 m!8334354))

(declare-fun m!8334356 () Bool)

(assert (=> bm!736870 m!8334356))

(assert (=> bm!736848 d!2375895))

(declare-fun d!2375897 () Bool)

(declare-fun lt!2699657 () Int)

(assert (=> d!2375897 (>= lt!2699657 0)))

(declare-fun e!4689628 () Int)

(assert (=> d!2375897 (= lt!2699657 e!4689628)))

(declare-fun c!1460194 () Bool)

(assert (=> d!2375897 (= c!1460194 (is-Nil!74569 lt!2699463))))

(assert (=> d!2375897 (= (size!43400 lt!2699463) lt!2699657)))

(declare-fun b!7949631 () Bool)

(assert (=> b!7949631 (= e!4689628 0)))

(declare-fun b!7949632 () Bool)

(assert (=> b!7949632 (= e!4689628 (+ 1 (size!43400 (t!390436 lt!2699463))))))

(assert (= (and d!2375897 c!1460194) b!7949631))

(assert (= (and d!2375897 (not c!1460194)) b!7949632))

(declare-fun m!8334358 () Bool)

(assert (=> b!7949632 m!8334358))

(assert (=> b!7949330 d!2375897))

(assert (=> b!7949330 d!2375869))

(declare-fun d!2375899 () Bool)

(declare-fun lt!2699658 () Int)

(assert (=> d!2375899 (>= lt!2699658 0)))

(declare-fun e!4689629 () Int)

(assert (=> d!2375899 (= lt!2699658 e!4689629)))

(declare-fun c!1460195 () Bool)

(assert (=> d!2375899 (= c!1460195 (is-Nil!74569 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))

(assert (=> d!2375899 (= (size!43400 (Cons!74569 (head!16216 lt!2699388) Nil!74569)) lt!2699658)))

(declare-fun b!7949633 () Bool)

(assert (=> b!7949633 (= e!4689629 0)))

(declare-fun b!7949634 () Bool)

(assert (=> b!7949634 (= e!4689629 (+ 1 (size!43400 (t!390436 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))))

(assert (= (and d!2375899 c!1460195) b!7949633))

(assert (= (and d!2375899 (not c!1460195)) b!7949634))

(declare-fun m!8334360 () Bool)

(assert (=> b!7949634 m!8334360))

(assert (=> b!7949330 d!2375899))

(declare-fun b!7949635 () Bool)

(declare-fun e!4689637 () tuple2!70590)

(assert (=> b!7949635 (= e!4689637 (tuple2!70591 Nil!74569 input!7927))))

(declare-fun bm!736872 () Bool)

(declare-fun call!736877 () Regex!21464)

(declare-fun call!736883 () C!43266)

(assert (=> bm!736872 (= call!736877 (derivativeStep!6493 call!736853 call!736883))))

(declare-fun b!7949636 () Bool)

(declare-fun e!4689635 () Bool)

(declare-fun e!4689636 () Bool)

(assert (=> b!7949636 (= e!4689635 e!4689636)))

(declare-fun res!3152637 () Bool)

(assert (=> b!7949636 (=> res!3152637 e!4689636)))

(declare-fun lt!2699686 () tuple2!70590)

(assert (=> b!7949636 (= res!3152637 (isEmpty!42868 (_1!38598 lt!2699686)))))

(declare-fun b!7949637 () Bool)

(declare-fun c!1460197 () Bool)

(declare-fun call!736882 () Bool)

(assert (=> b!7949637 (= c!1460197 call!736882)))

(declare-fun lt!2699678 () Unit!169802)

(declare-fun lt!2699680 () Unit!169802)

(assert (=> b!7949637 (= lt!2699678 lt!2699680)))

(assert (=> b!7949637 (= input!7927 lt!2699638)))

(declare-fun call!736884 () Unit!169802)

(assert (=> b!7949637 (= lt!2699680 call!736884)))

(declare-fun lt!2699672 () Unit!169802)

(declare-fun lt!2699683 () Unit!169802)

(assert (=> b!7949637 (= lt!2699672 lt!2699683)))

(declare-fun call!736880 () Bool)

(assert (=> b!7949637 call!736880))

(declare-fun call!736879 () Unit!169802)

(assert (=> b!7949637 (= lt!2699683 call!736879)))

(declare-fun e!4689634 () tuple2!70590)

(assert (=> b!7949637 (= e!4689634 e!4689637)))

(declare-fun bm!736873 () Bool)

(declare-fun call!736878 () List!74693)

(assert (=> bm!736873 (= call!736878 (tail!15758 call!736854))))

(declare-fun b!7949638 () Bool)

(assert (=> b!7949638 (= e!4689636 (>= (size!43400 (_1!38598 lt!2699686)) (size!43400 lt!2699638)))))

(declare-fun b!7949639 () Bool)

(declare-fun e!4689632 () tuple2!70590)

(declare-fun call!736881 () tuple2!70590)

(assert (=> b!7949639 (= e!4689632 call!736881)))

(declare-fun b!7949640 () Bool)

(declare-fun e!4689631 () tuple2!70590)

(declare-fun lt!2699659 () tuple2!70590)

(assert (=> b!7949640 (= e!4689631 lt!2699659)))

(declare-fun bm!736874 () Bool)

(assert (=> bm!736874 (= call!736884 (lemmaIsPrefixSameLengthThenSameList!1612 input!7927 lt!2699638 input!7927))))

(declare-fun b!7949641 () Bool)

(declare-fun e!4689633 () tuple2!70590)

(assert (=> b!7949641 (= e!4689633 e!4689634)))

(declare-fun c!1460199 () Bool)

(assert (=> b!7949641 (= c!1460199 (= (+ lt!2699384 1) lt!2699389))))

(declare-fun b!7949642 () Bool)

(assert (=> b!7949642 (= e!4689637 (tuple2!70591 lt!2699638 Nil!74569))))

(declare-fun d!2375901 () Bool)

(assert (=> d!2375901 e!4689635))

(declare-fun res!3152638 () Bool)

(assert (=> d!2375901 (=> (not res!3152638) (not e!4689635))))

(assert (=> d!2375901 (= res!3152638 (= (++!18334 (_1!38598 lt!2699686) (_2!38598 lt!2699686)) input!7927))))

(assert (=> d!2375901 (= lt!2699686 e!4689633)))

(declare-fun c!1460198 () Bool)

(assert (=> d!2375901 (= c!1460198 (lostCause!1958 call!736853))))

(declare-fun lt!2699679 () Unit!169802)

(declare-fun Unit!169816 () Unit!169802)

(assert (=> d!2375901 (= lt!2699679 Unit!169816)))

(assert (=> d!2375901 (= (getSuffix!3767 input!7927 lt!2699638) call!736854)))

(declare-fun lt!2699669 () Unit!169802)

(declare-fun lt!2699662 () Unit!169802)

(assert (=> d!2375901 (= lt!2699669 lt!2699662)))

(declare-fun lt!2699675 () List!74693)

(assert (=> d!2375901 (= call!736854 lt!2699675)))

(assert (=> d!2375901 (= lt!2699662 (lemmaSamePrefixThenSameSuffix!2974 lt!2699638 call!736854 lt!2699638 lt!2699675 input!7927))))

(assert (=> d!2375901 (= lt!2699675 (getSuffix!3767 input!7927 lt!2699638))))

(declare-fun lt!2699663 () Unit!169802)

(declare-fun lt!2699671 () Unit!169802)

(assert (=> d!2375901 (= lt!2699663 lt!2699671)))

(assert (=> d!2375901 (isPrefix!6564 lt!2699638 (++!18334 lt!2699638 call!736854))))

(assert (=> d!2375901 (= lt!2699671 (lemmaConcatTwoListThenFirstIsPrefix!3836 lt!2699638 call!736854))))

(assert (=> d!2375901 (validRegex!11768 call!736853)))

(assert (=> d!2375901 (= (findLongestMatchInner!2245 call!736853 lt!2699638 (+ lt!2699384 1) call!736854 input!7927 lt!2699389) lt!2699686)))

(declare-fun bm!736875 () Bool)

(assert (=> bm!736875 (= call!736882 (nullable!9565 call!736853))))

(declare-fun bm!736876 () Bool)

(assert (=> bm!736876 (= call!736879 (lemmaIsPrefixRefl!4032 input!7927 input!7927))))

(declare-fun b!7949643 () Bool)

(declare-fun c!1460196 () Bool)

(assert (=> b!7949643 (= c!1460196 call!736882)))

(declare-fun lt!2699674 () Unit!169802)

(declare-fun lt!2699676 () Unit!169802)

(assert (=> b!7949643 (= lt!2699674 lt!2699676)))

(declare-fun lt!2699668 () C!43266)

(declare-fun lt!2699667 () List!74693)

(assert (=> b!7949643 (= (++!18334 (++!18334 lt!2699638 (Cons!74569 lt!2699668 Nil!74569)) lt!2699667) input!7927)))

(assert (=> b!7949643 (= lt!2699676 (lemmaMoveElementToOtherListKeepsConcatEq!3514 lt!2699638 lt!2699668 lt!2699667 input!7927))))

(assert (=> b!7949643 (= lt!2699667 (tail!15758 call!736854))))

(assert (=> b!7949643 (= lt!2699668 (head!16216 call!736854))))

(declare-fun lt!2699677 () Unit!169802)

(declare-fun lt!2699660 () Unit!169802)

(assert (=> b!7949643 (= lt!2699677 lt!2699660)))

(assert (=> b!7949643 (isPrefix!6564 (++!18334 lt!2699638 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 lt!2699638)) Nil!74569)) input!7927)))

(assert (=> b!7949643 (= lt!2699660 (lemmaAddHeadSuffixToPrefixStillPrefix!1291 lt!2699638 input!7927))))

(declare-fun lt!2699665 () Unit!169802)

(declare-fun lt!2699661 () Unit!169802)

(assert (=> b!7949643 (= lt!2699665 lt!2699661)))

(assert (=> b!7949643 (= lt!2699661 (lemmaAddHeadSuffixToPrefixStillPrefix!1291 lt!2699638 input!7927))))

(declare-fun lt!2699684 () List!74693)

(assert (=> b!7949643 (= lt!2699684 (++!18334 lt!2699638 (Cons!74569 (head!16216 call!736854) Nil!74569)))))

(declare-fun lt!2699673 () Unit!169802)

(declare-fun e!4689630 () Unit!169802)

(assert (=> b!7949643 (= lt!2699673 e!4689630)))

(declare-fun c!1460200 () Bool)

(assert (=> b!7949643 (= c!1460200 (= (size!43400 lt!2699638) (size!43400 input!7927)))))

(declare-fun lt!2699670 () Unit!169802)

(declare-fun lt!2699685 () Unit!169802)

(assert (=> b!7949643 (= lt!2699670 lt!2699685)))

(assert (=> b!7949643 (<= (size!43400 lt!2699638) (size!43400 input!7927))))

(assert (=> b!7949643 (= lt!2699685 (lemmaIsPrefixThenSmallerEqSize!1081 lt!2699638 input!7927))))

(assert (=> b!7949643 (= e!4689634 e!4689632)))

(declare-fun b!7949644 () Bool)

(declare-fun Unit!169817 () Unit!169802)

(assert (=> b!7949644 (= e!4689630 Unit!169817)))

(declare-fun bm!736877 () Bool)

(assert (=> bm!736877 (= call!736880 (isPrefix!6564 input!7927 input!7927))))

(declare-fun bm!736878 () Bool)

(assert (=> bm!736878 (= call!736883 (head!16216 call!736854))))

(declare-fun b!7949645 () Bool)

(assert (=> b!7949645 (= e!4689633 (tuple2!70591 Nil!74569 input!7927))))

(declare-fun bm!736879 () Bool)

(assert (=> bm!736879 (= call!736881 (findLongestMatchInner!2245 call!736877 lt!2699684 (+ lt!2699384 1 1) call!736878 input!7927 lt!2699389))))

(declare-fun b!7949646 () Bool)

(assert (=> b!7949646 (= e!4689631 (tuple2!70591 lt!2699638 call!736854))))

(declare-fun b!7949647 () Bool)

(declare-fun Unit!169818 () Unit!169802)

(assert (=> b!7949647 (= e!4689630 Unit!169818)))

(declare-fun lt!2699666 () Unit!169802)

(assert (=> b!7949647 (= lt!2699666 call!736879)))

(assert (=> b!7949647 call!736880))

(declare-fun lt!2699682 () Unit!169802)

(assert (=> b!7949647 (= lt!2699682 lt!2699666)))

(declare-fun lt!2699664 () Unit!169802)

(assert (=> b!7949647 (= lt!2699664 call!736884)))

(assert (=> b!7949647 (= input!7927 lt!2699638)))

(declare-fun lt!2699681 () Unit!169802)

(assert (=> b!7949647 (= lt!2699681 lt!2699664)))

(assert (=> b!7949647 false))

(declare-fun b!7949648 () Bool)

(assert (=> b!7949648 (= e!4689632 e!4689631)))

(assert (=> b!7949648 (= lt!2699659 call!736881)))

(declare-fun c!1460201 () Bool)

(assert (=> b!7949648 (= c!1460201 (isEmpty!42868 (_1!38598 lt!2699659)))))

(assert (= (and d!2375901 c!1460198) b!7949645))

(assert (= (and d!2375901 (not c!1460198)) b!7949641))

(assert (= (and b!7949641 c!1460199) b!7949637))

(assert (= (and b!7949641 (not c!1460199)) b!7949643))

(assert (= (and b!7949637 c!1460197) b!7949642))

(assert (= (and b!7949637 (not c!1460197)) b!7949635))

(assert (= (and b!7949643 c!1460200) b!7949647))

(assert (= (and b!7949643 (not c!1460200)) b!7949644))

(assert (= (and b!7949643 c!1460196) b!7949648))

(assert (= (and b!7949643 (not c!1460196)) b!7949639))

(assert (= (and b!7949648 c!1460201) b!7949646))

(assert (= (and b!7949648 (not c!1460201)) b!7949640))

(assert (= (or b!7949648 b!7949639) bm!736878))

(assert (= (or b!7949648 b!7949639) bm!736873))

(assert (= (or b!7949648 b!7949639) bm!736872))

(assert (= (or b!7949648 b!7949639) bm!736879))

(assert (= (or b!7949637 b!7949643) bm!736875))

(assert (= (or b!7949637 b!7949647) bm!736874))

(assert (= (or b!7949637 b!7949647) bm!736876))

(assert (= (or b!7949637 b!7949647) bm!736877))

(assert (= (and d!2375901 res!3152638) b!7949636))

(assert (= (and b!7949636 (not res!3152637)) b!7949638))

(declare-fun m!8334362 () Bool)

(assert (=> bm!736874 m!8334362))

(declare-fun m!8334364 () Bool)

(assert (=> bm!736875 m!8334364))

(declare-fun m!8334366 () Bool)

(assert (=> b!7949643 m!8334366))

(declare-fun m!8334368 () Bool)

(assert (=> b!7949643 m!8334368))

(declare-fun m!8334370 () Bool)

(assert (=> b!7949643 m!8334370))

(declare-fun m!8334372 () Bool)

(assert (=> b!7949643 m!8334372))

(declare-fun m!8334374 () Bool)

(assert (=> b!7949643 m!8334374))

(declare-fun m!8334376 () Bool)

(assert (=> b!7949643 m!8334376))

(declare-fun m!8334378 () Bool)

(assert (=> b!7949643 m!8334378))

(assert (=> b!7949643 m!8334366))

(assert (=> b!7949643 m!8334060))

(assert (=> b!7949643 m!8334378))

(declare-fun m!8334380 () Bool)

(assert (=> b!7949643 m!8334380))

(declare-fun m!8334382 () Bool)

(assert (=> b!7949643 m!8334382))

(assert (=> b!7949643 m!8334370))

(declare-fun m!8334384 () Bool)

(assert (=> b!7949643 m!8334384))

(declare-fun m!8334386 () Bool)

(assert (=> b!7949643 m!8334386))

(declare-fun m!8334388 () Bool)

(assert (=> b!7949643 m!8334388))

(declare-fun m!8334390 () Bool)

(assert (=> b!7949643 m!8334390))

(assert (=> bm!736873 m!8334384))

(declare-fun m!8334392 () Bool)

(assert (=> bm!736872 m!8334392))

(declare-fun m!8334394 () Bool)

(assert (=> b!7949648 m!8334394))

(declare-fun m!8334396 () Bool)

(assert (=> b!7949638 m!8334396))

(assert (=> b!7949638 m!8334374))

(assert (=> bm!736876 m!8334066))

(assert (=> bm!736877 m!8334068))

(declare-fun m!8334398 () Bool)

(assert (=> b!7949636 m!8334398))

(assert (=> bm!736878 m!8334376))

(declare-fun m!8334400 () Bool)

(assert (=> bm!736879 m!8334400))

(declare-fun m!8334402 () Bool)

(assert (=> d!2375901 m!8334402))

(declare-fun m!8334404 () Bool)

(assert (=> d!2375901 m!8334404))

(declare-fun m!8334406 () Bool)

(assert (=> d!2375901 m!8334406))

(declare-fun m!8334408 () Bool)

(assert (=> d!2375901 m!8334408))

(assert (=> d!2375901 m!8334370))

(declare-fun m!8334410 () Bool)

(assert (=> d!2375901 m!8334410))

(declare-fun m!8334412 () Bool)

(assert (=> d!2375901 m!8334412))

(assert (=> d!2375901 m!8334404))

(declare-fun m!8334414 () Bool)

(assert (=> d!2375901 m!8334414))

(assert (=> bm!736855 d!2375901))

(declare-fun d!2375903 () Bool)

(assert (=> d!2375903 (= input!7927 testedP!447)))

(assert (=> d!2375903 true))

(declare-fun _$60!1312 () Unit!169802)

(assert (=> d!2375903 (= (choose!59898 input!7927 testedP!447 input!7927) _$60!1312)))

(assert (=> d!2375827 d!2375903))

(assert (=> d!2375827 d!2375815))

(declare-fun b!7949658 () Bool)

(declare-fun e!4689650 () Bool)

(declare-fun e!4689646 () Bool)

(assert (=> b!7949658 (= e!4689650 e!4689646)))

(declare-fun res!3152648 () Bool)

(assert (=> b!7949658 (=> (not res!3152648) (not e!4689646))))

(declare-fun call!736888 () Bool)

(assert (=> b!7949658 (= res!3152648 call!736888)))

(declare-fun b!7949659 () Bool)

(declare-fun e!4689645 () Bool)

(declare-fun e!4689647 () Bool)

(assert (=> b!7949659 (= e!4689645 e!4689647)))

(declare-fun c!1460205 () Bool)

(assert (=> b!7949659 (= c!1460205 (is-Union!21464 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))))))

(declare-fun b!7949660 () Bool)

(declare-fun e!4689649 () Bool)

(assert (=> b!7949660 (= e!4689649 e!4689645)))

(declare-fun c!1460204 () Bool)

(assert (=> b!7949660 (= c!1460204 (is-Star!21464 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))))))

(declare-fun b!7949661 () Bool)

(declare-fun e!4689648 () Bool)

(declare-fun call!736890 () Bool)

(assert (=> b!7949661 (= e!4689648 call!736890)))

(declare-fun bm!736883 () Bool)

(declare-fun call!736889 () Bool)

(assert (=> bm!736883 (= call!736890 call!736889)))

(declare-fun b!7949662 () Bool)

(declare-fun res!3152645 () Bool)

(assert (=> b!7949662 (=> res!3152645 e!4689650)))

(assert (=> b!7949662 (= res!3152645 (not (is-Concat!30463 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116))))))))

(assert (=> b!7949662 (= e!4689647 e!4689650)))

(declare-fun bm!736884 () Bool)

(assert (=> bm!736884 (= call!736888 (validRegex!11768 (ite c!1460205 (regOne!43441 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))) (regOne!43440 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))))))))

(declare-fun b!7949663 () Bool)

(declare-fun res!3152644 () Bool)

(assert (=> b!7949663 (=> (not res!3152644) (not e!4689648))))

(assert (=> b!7949663 (= res!3152644 call!736888)))

(assert (=> b!7949663 (= e!4689647 e!4689648)))

(declare-fun d!2375907 () Bool)

(declare-fun res!3152647 () Bool)

(assert (=> d!2375907 (=> res!3152647 e!4689649)))

(assert (=> d!2375907 (= res!3152647 (is-ElementMatch!21464 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))))))

(assert (=> d!2375907 (= (validRegex!11768 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))) e!4689649)))

(declare-fun bm!736885 () Bool)

(assert (=> bm!736885 (= call!736889 (validRegex!11768 (ite c!1460204 (reg!21793 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))) (ite c!1460205 (regTwo!43441 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))) (regTwo!43440 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116))))))))))

(declare-fun b!7949664 () Bool)

(assert (=> b!7949664 (= e!4689646 call!736890)))

(declare-fun b!7949665 () Bool)

(declare-fun e!4689651 () Bool)

(assert (=> b!7949665 (= e!4689645 e!4689651)))

(declare-fun res!3152646 () Bool)

(assert (=> b!7949665 (= res!3152646 (not (nullable!9565 (reg!21793 (ite c!1460114 (reg!21793 baseR!116) (ite c!1460115 (regTwo!43441 baseR!116) (regTwo!43440 baseR!116)))))))))

(assert (=> b!7949665 (=> (not res!3152646) (not e!4689651))))

(declare-fun b!7949666 () Bool)

(assert (=> b!7949666 (= e!4689651 call!736889)))

(assert (= (and d!2375907 (not res!3152647)) b!7949660))

(assert (= (and b!7949660 c!1460204) b!7949665))

(assert (= (and b!7949660 (not c!1460204)) b!7949659))

(assert (= (and b!7949665 res!3152646) b!7949666))

(assert (= (and b!7949659 c!1460205) b!7949663))

(assert (= (and b!7949659 (not c!1460205)) b!7949662))

(assert (= (and b!7949663 res!3152644) b!7949661))

(assert (= (and b!7949662 (not res!3152645)) b!7949658))

(assert (= (and b!7949658 res!3152648) b!7949664))

(assert (= (or b!7949661 b!7949664) bm!736883))

(assert (= (or b!7949663 b!7949658) bm!736884))

(assert (= (or b!7949666 bm!736883) bm!736885))

(declare-fun m!8334422 () Bool)

(assert (=> bm!736884 m!8334422))

(declare-fun m!8334424 () Bool)

(assert (=> bm!736885 m!8334424))

(declare-fun m!8334426 () Bool)

(assert (=> b!7949665 m!8334426))

(assert (=> bm!736798 d!2375907))

(assert (=> bm!736853 d!2375815))

(assert (=> bm!736854 d!2375845))

(declare-fun b!7949701 () Bool)

(declare-fun e!4689678 () Bool)

(declare-fun e!4689676 () Bool)

(assert (=> b!7949701 (= e!4689678 e!4689676)))

(declare-fun res!3152669 () Bool)

(declare-fun call!736899 () Bool)

(assert (=> b!7949701 (= res!3152669 call!736899)))

(assert (=> b!7949701 (=> (not res!3152669) (not e!4689676))))

(declare-fun b!7949702 () Bool)

(declare-fun e!4689681 () Bool)

(assert (=> b!7949702 (= e!4689678 e!4689681)))

(declare-fun res!3152667 () Bool)

(declare-fun call!736898 () Bool)

(assert (=> b!7949702 (= res!3152667 call!736898)))

(assert (=> b!7949702 (=> res!3152667 e!4689681)))

(declare-fun b!7949703 () Bool)

(declare-fun e!4689677 () Bool)

(declare-fun e!4689680 () Bool)

(assert (=> b!7949703 (= e!4689677 e!4689680)))

(declare-fun res!3152670 () Bool)

(assert (=> b!7949703 (=> (not res!3152670) (not e!4689680))))

(assert (=> b!7949703 (= res!3152670 (and (not (is-EmptyLang!21464 r!24602)) (not (is-ElementMatch!21464 r!24602))))))

(declare-fun b!7949704 () Bool)

(assert (=> b!7949704 (= e!4689676 call!736898)))

(declare-fun bm!736893 () Bool)

(declare-fun c!1460214 () Bool)

(assert (=> bm!736893 (= call!736899 (nullable!9565 (ite c!1460214 (regTwo!43441 r!24602) (regOne!43440 r!24602))))))

(declare-fun bm!736894 () Bool)

(assert (=> bm!736894 (= call!736898 (nullable!9565 (ite c!1460214 (regOne!43441 r!24602) (regTwo!43440 r!24602))))))

(declare-fun b!7949705 () Bool)

(declare-fun e!4689679 () Bool)

(assert (=> b!7949705 (= e!4689679 e!4689678)))

(assert (=> b!7949705 (= c!1460214 (is-Union!21464 r!24602))))

(declare-fun b!7949706 () Bool)

(assert (=> b!7949706 (= e!4689681 call!736899)))

(declare-fun b!7949700 () Bool)

(assert (=> b!7949700 (= e!4689680 e!4689679)))

(declare-fun res!3152666 () Bool)

(assert (=> b!7949700 (=> res!3152666 e!4689679)))

(assert (=> b!7949700 (= res!3152666 (is-Star!21464 r!24602))))

(declare-fun d!2375911 () Bool)

(declare-fun res!3152668 () Bool)

(assert (=> d!2375911 (=> res!3152668 e!4689677)))

(assert (=> d!2375911 (= res!3152668 (is-EmptyExpr!21464 r!24602))))

(assert (=> d!2375911 (= (nullableFct!3768 r!24602) e!4689677)))

(assert (= (and d!2375911 (not res!3152668)) b!7949703))

(assert (= (and b!7949703 res!3152670) b!7949700))

(assert (= (and b!7949700 (not res!3152666)) b!7949705))

(assert (= (and b!7949705 c!1460214) b!7949702))

(assert (= (and b!7949705 (not c!1460214)) b!7949701))

(assert (= (and b!7949702 (not res!3152667)) b!7949706))

(assert (= (and b!7949701 res!3152669) b!7949704))

(assert (= (or b!7949702 b!7949704) bm!736894))

(assert (= (or b!7949706 b!7949701) bm!736893))

(declare-fun m!8334448 () Bool)

(assert (=> bm!736893 m!8334448))

(declare-fun m!8334450 () Bool)

(assert (=> bm!736894 m!8334450))

(assert (=> d!2375849 d!2375911))

(declare-fun b!7949707 () Bool)

(declare-fun e!4689687 () Bool)

(declare-fun e!4689683 () Bool)

(assert (=> b!7949707 (= e!4689687 e!4689683)))

(declare-fun res!3152675 () Bool)

(assert (=> b!7949707 (=> (not res!3152675) (not e!4689683))))

(declare-fun call!736900 () Bool)

(assert (=> b!7949707 (= res!3152675 call!736900)))

(declare-fun b!7949708 () Bool)

(declare-fun e!4689682 () Bool)

(declare-fun e!4689684 () Bool)

(assert (=> b!7949708 (= e!4689682 e!4689684)))

(declare-fun c!1460216 () Bool)

(assert (=> b!7949708 (= c!1460216 (is-Union!21464 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))))))

(declare-fun b!7949709 () Bool)

(declare-fun e!4689686 () Bool)

(assert (=> b!7949709 (= e!4689686 e!4689682)))

(declare-fun c!1460215 () Bool)

(assert (=> b!7949709 (= c!1460215 (is-Star!21464 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))))))

(declare-fun b!7949710 () Bool)

(declare-fun e!4689685 () Bool)

(declare-fun call!736902 () Bool)

(assert (=> b!7949710 (= e!4689685 call!736902)))

(declare-fun bm!736895 () Bool)

(declare-fun call!736901 () Bool)

(assert (=> bm!736895 (= call!736902 call!736901)))

(declare-fun b!7949711 () Bool)

(declare-fun res!3152672 () Bool)

(assert (=> b!7949711 (=> res!3152672 e!4689687)))

(assert (=> b!7949711 (= res!3152672 (not (is-Concat!30463 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116)))))))

(assert (=> b!7949711 (= e!4689684 e!4689687)))

(declare-fun bm!736896 () Bool)

(assert (=> bm!736896 (= call!736900 (validRegex!11768 (ite c!1460216 (regOne!43441 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))) (regOne!43440 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))))))))

(declare-fun b!7949712 () Bool)

(declare-fun res!3152671 () Bool)

(assert (=> b!7949712 (=> (not res!3152671) (not e!4689685))))

(assert (=> b!7949712 (= res!3152671 call!736900)))

(assert (=> b!7949712 (= e!4689684 e!4689685)))

(declare-fun d!2375927 () Bool)

(declare-fun res!3152674 () Bool)

(assert (=> d!2375927 (=> res!3152674 e!4689686)))

(assert (=> d!2375927 (= res!3152674 (is-ElementMatch!21464 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))))))

(assert (=> d!2375927 (= (validRegex!11768 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))) e!4689686)))

(declare-fun bm!736897 () Bool)

(assert (=> bm!736897 (= call!736901 (validRegex!11768 (ite c!1460215 (reg!21793 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))) (ite c!1460216 (regTwo!43441 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))) (regTwo!43440 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116)))))))))

(declare-fun b!7949713 () Bool)

(assert (=> b!7949713 (= e!4689683 call!736902)))

(declare-fun b!7949714 () Bool)

(declare-fun e!4689688 () Bool)

(assert (=> b!7949714 (= e!4689682 e!4689688)))

(declare-fun res!3152673 () Bool)

(assert (=> b!7949714 (= res!3152673 (not (nullable!9565 (reg!21793 (ite c!1460115 (regOne!43441 baseR!116) (regOne!43440 baseR!116))))))))

(assert (=> b!7949714 (=> (not res!3152673) (not e!4689688))))

(declare-fun b!7949715 () Bool)

(assert (=> b!7949715 (= e!4689688 call!736901)))

(assert (= (and d!2375927 (not res!3152674)) b!7949709))

(assert (= (and b!7949709 c!1460215) b!7949714))

(assert (= (and b!7949709 (not c!1460215)) b!7949708))

(assert (= (and b!7949714 res!3152673) b!7949715))

(assert (= (and b!7949708 c!1460216) b!7949712))

(assert (= (and b!7949708 (not c!1460216)) b!7949711))

(assert (= (and b!7949712 res!3152671) b!7949710))

(assert (= (and b!7949711 (not res!3152672)) b!7949707))

(assert (= (and b!7949707 res!3152675) b!7949713))

(assert (= (or b!7949710 b!7949713) bm!736895))

(assert (= (or b!7949712 b!7949707) bm!736896))

(assert (= (or b!7949715 bm!736895) bm!736897))

(declare-fun m!8334452 () Bool)

(assert (=> bm!736896 m!8334452))

(declare-fun m!8334454 () Bool)

(assert (=> bm!736897 m!8334454))

(declare-fun m!8334456 () Bool)

(assert (=> b!7949714 m!8334456))

(assert (=> bm!736797 d!2375927))

(declare-fun lt!2699691 () List!74693)

(declare-fun e!4689698 () Bool)

(declare-fun b!7949729 () Bool)

(assert (=> b!7949729 (= e!4689698 (or (not (= lt!2699643 Nil!74569)) (= lt!2699691 testedP!447)))))

(declare-fun b!7949728 () Bool)

(declare-fun res!3152682 () Bool)

(assert (=> b!7949728 (=> (not res!3152682) (not e!4689698))))

(assert (=> b!7949728 (= res!3152682 (= (size!43400 lt!2699691) (+ (size!43400 testedP!447) (size!43400 lt!2699643))))))

(declare-fun b!7949727 () Bool)

(declare-fun e!4689697 () List!74693)

(assert (=> b!7949727 (= e!4689697 (Cons!74569 (h!81017 testedP!447) (++!18334 (t!390436 testedP!447) lt!2699643)))))

(declare-fun b!7949726 () Bool)

(assert (=> b!7949726 (= e!4689697 lt!2699643)))

(declare-fun d!2375929 () Bool)

(assert (=> d!2375929 e!4689698))

(declare-fun res!3152683 () Bool)

(assert (=> d!2375929 (=> (not res!3152683) (not e!4689698))))

(assert (=> d!2375929 (= res!3152683 (= (content!15826 lt!2699691) (set.union (content!15826 testedP!447) (content!15826 lt!2699643))))))

(assert (=> d!2375929 (= lt!2699691 e!4689697)))

(declare-fun c!1460219 () Bool)

(assert (=> d!2375929 (= c!1460219 (is-Nil!74569 testedP!447))))

(assert (=> d!2375929 (= (++!18334 testedP!447 lt!2699643) lt!2699691)))

(assert (= (and d!2375929 c!1460219) b!7949726))

(assert (= (and d!2375929 (not c!1460219)) b!7949727))

(assert (= (and d!2375929 res!3152683) b!7949728))

(assert (= (and b!7949728 res!3152682) b!7949729))

(declare-fun m!8334458 () Bool)

(assert (=> b!7949728 m!8334458))

(assert (=> b!7949728 m!8334058))

(declare-fun m!8334460 () Bool)

(assert (=> b!7949728 m!8334460))

(declare-fun m!8334462 () Bool)

(assert (=> b!7949727 m!8334462))

(declare-fun m!8334464 () Bool)

(assert (=> d!2375929 m!8334464))

(assert (=> d!2375929 m!8334214))

(declare-fun m!8334466 () Bool)

(assert (=> d!2375929 m!8334466))

(assert (=> d!2375867 d!2375929))

(assert (=> d!2375867 d!2375853))

(assert (=> d!2375867 d!2375869))

(declare-fun d!2375931 () Bool)

(assert (=> d!2375931 (= (head!16216 lt!2699391) (h!81017 lt!2699391))))

(assert (=> b!7949333 d!2375931))

(declare-fun d!2375933 () Bool)

(assert (=> d!2375933 (= (head!16216 input!7927) (h!81017 input!7927))))

(assert (=> b!7949333 d!2375933))

(assert (=> b!7949509 d!2375853))

(assert (=> b!7949509 d!2375843))

(declare-fun d!2375935 () Bool)

(assert (=> d!2375935 (= (head!16216 (getSuffix!3767 input!7927 testedP!447)) (h!81017 (getSuffix!3767 input!7927 testedP!447)))))

(assert (=> b!7949509 d!2375935))

(assert (=> b!7949509 d!2375845))

(declare-fun e!4689704 () Bool)

(declare-fun b!7949737 () Bool)

(declare-fun lt!2699692 () List!74693)

(assert (=> b!7949737 (= e!4689704 (or (not (= lt!2699621 Nil!74569)) (= lt!2699692 (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569)))))))

(declare-fun b!7949736 () Bool)

(declare-fun res!3152688 () Bool)

(assert (=> b!7949736 (=> (not res!3152688) (not e!4689704))))

(assert (=> b!7949736 (= res!3152688 (= (size!43400 lt!2699692) (+ (size!43400 (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569))) (size!43400 lt!2699621))))))

(declare-fun e!4689703 () List!74693)

(declare-fun b!7949735 () Bool)

(assert (=> b!7949735 (= e!4689703 (Cons!74569 (h!81017 (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569))) (++!18334 (t!390436 (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569))) lt!2699621)))))

(declare-fun b!7949734 () Bool)

(assert (=> b!7949734 (= e!4689703 lt!2699621)))

(declare-fun d!2375937 () Bool)

(assert (=> d!2375937 e!4689704))

(declare-fun res!3152689 () Bool)

(assert (=> d!2375937 (=> (not res!3152689) (not e!4689704))))

(assert (=> d!2375937 (= res!3152689 (= (content!15826 lt!2699692) (set.union (content!15826 (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569))) (content!15826 lt!2699621))))))

(assert (=> d!2375937 (= lt!2699692 e!4689703)))

(declare-fun c!1460220 () Bool)

(assert (=> d!2375937 (= c!1460220 (is-Nil!74569 (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569))))))

(assert (=> d!2375937 (= (++!18334 (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569)) lt!2699621) lt!2699692)))

(assert (= (and d!2375937 c!1460220) b!7949734))

(assert (= (and d!2375937 (not c!1460220)) b!7949735))

(assert (= (and d!2375937 res!3152689) b!7949736))

(assert (= (and b!7949736 res!3152688) b!7949737))

(declare-fun m!8334468 () Bool)

(assert (=> b!7949736 m!8334468))

(assert (=> b!7949736 m!8334278))

(declare-fun m!8334470 () Bool)

(assert (=> b!7949736 m!8334470))

(declare-fun m!8334472 () Bool)

(assert (=> b!7949736 m!8334472))

(declare-fun m!8334474 () Bool)

(assert (=> b!7949735 m!8334474))

(declare-fun m!8334476 () Bool)

(assert (=> d!2375937 m!8334476))

(assert (=> d!2375937 m!8334278))

(declare-fun m!8334478 () Bool)

(assert (=> d!2375937 m!8334478))

(declare-fun m!8334480 () Bool)

(assert (=> d!2375937 m!8334480))

(assert (=> b!7949509 d!2375937))

(declare-fun d!2375939 () Bool)

(assert (=> d!2375939 (= (++!18334 (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569)) lt!2699621) input!7927)))

(declare-fun lt!2699696 () Unit!169802)

(declare-fun choose!59902 (List!74693 C!43266 List!74693 List!74693) Unit!169802)

(assert (=> d!2375939 (= lt!2699696 (choose!59902 testedP!447 lt!2699622 lt!2699621 input!7927))))

(assert (=> d!2375939 (= (++!18334 testedP!447 (Cons!74569 lt!2699622 lt!2699621)) input!7927)))

(assert (=> d!2375939 (= (lemmaMoveElementToOtherListKeepsConcatEq!3514 testedP!447 lt!2699622 lt!2699621 input!7927) lt!2699696)))

(declare-fun bs!1969514 () Bool)

(assert (= bs!1969514 d!2375939))

(assert (=> bs!1969514 m!8334278))

(assert (=> bs!1969514 m!8334278))

(assert (=> bs!1969514 m!8334280))

(declare-fun m!8334496 () Bool)

(assert (=> bs!1969514 m!8334496))

(declare-fun m!8334498 () Bool)

(assert (=> bs!1969514 m!8334498))

(assert (=> b!7949509 d!2375939))

(assert (=> b!7949509 d!2375867))

(assert (=> b!7949509 d!2375869))

(declare-fun lt!2699699 () List!74693)

(declare-fun e!4689715 () Bool)

(declare-fun b!7949754 () Bool)

(assert (=> b!7949754 (= e!4689715 (or (not (= (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569) Nil!74569)) (= lt!2699699 testedP!447)))))

(declare-fun b!7949753 () Bool)

(declare-fun res!3152695 () Bool)

(assert (=> b!7949753 (=> (not res!3152695) (not e!4689715))))

(assert (=> b!7949753 (= res!3152695 (= (size!43400 lt!2699699) (+ (size!43400 testedP!447) (size!43400 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569)))))))

(declare-fun b!7949752 () Bool)

(declare-fun e!4689714 () List!74693)

(assert (=> b!7949752 (= e!4689714 (Cons!74569 (h!81017 testedP!447) (++!18334 (t!390436 testedP!447) (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569))))))

(declare-fun b!7949751 () Bool)

(assert (=> b!7949751 (= e!4689714 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569))))

(declare-fun d!2375949 () Bool)

(assert (=> d!2375949 e!4689715))

(declare-fun res!3152696 () Bool)

(assert (=> d!2375949 (=> (not res!3152696) (not e!4689715))))

(assert (=> d!2375949 (= res!3152696 (= (content!15826 lt!2699699) (set.union (content!15826 testedP!447) (content!15826 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569)))))))

(assert (=> d!2375949 (= lt!2699699 e!4689714)))

(declare-fun c!1460225 () Bool)

(assert (=> d!2375949 (= c!1460225 (is-Nil!74569 testedP!447))))

(assert (=> d!2375949 (= (++!18334 testedP!447 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569)) lt!2699699)))

(assert (= (and d!2375949 c!1460225) b!7949751))

(assert (= (and d!2375949 (not c!1460225)) b!7949752))

(assert (= (and d!2375949 res!3152696) b!7949753))

(assert (= (and b!7949753 res!3152695) b!7949754))

(declare-fun m!8334508 () Bool)

(assert (=> b!7949753 m!8334508))

(assert (=> b!7949753 m!8334058))

(declare-fun m!8334510 () Bool)

(assert (=> b!7949753 m!8334510))

(declare-fun m!8334512 () Bool)

(assert (=> b!7949752 m!8334512))

(declare-fun m!8334514 () Bool)

(assert (=> d!2375949 m!8334514))

(assert (=> d!2375949 m!8334214))

(declare-fun m!8334516 () Bool)

(assert (=> d!2375949 m!8334516))

(assert (=> b!7949509 d!2375949))

(assert (=> b!7949509 d!2375847))

(declare-fun e!4689717 () Bool)

(declare-fun lt!2699700 () List!74693)

(declare-fun b!7949758 () Bool)

(assert (=> b!7949758 (= e!4689717 (or (not (= (Cons!74569 lt!2699622 Nil!74569) Nil!74569)) (= lt!2699700 testedP!447)))))

(declare-fun b!7949757 () Bool)

(declare-fun res!3152697 () Bool)

(assert (=> b!7949757 (=> (not res!3152697) (not e!4689717))))

(assert (=> b!7949757 (= res!3152697 (= (size!43400 lt!2699700) (+ (size!43400 testedP!447) (size!43400 (Cons!74569 lt!2699622 Nil!74569)))))))

(declare-fun b!7949756 () Bool)

(declare-fun e!4689716 () List!74693)

(assert (=> b!7949756 (= e!4689716 (Cons!74569 (h!81017 testedP!447) (++!18334 (t!390436 testedP!447) (Cons!74569 lt!2699622 Nil!74569))))))

(declare-fun b!7949755 () Bool)

(assert (=> b!7949755 (= e!4689716 (Cons!74569 lt!2699622 Nil!74569))))

(declare-fun d!2375953 () Bool)

(assert (=> d!2375953 e!4689717))

(declare-fun res!3152698 () Bool)

(assert (=> d!2375953 (=> (not res!3152698) (not e!4689717))))

(assert (=> d!2375953 (= res!3152698 (= (content!15826 lt!2699700) (set.union (content!15826 testedP!447) (content!15826 (Cons!74569 lt!2699622 Nil!74569)))))))

(assert (=> d!2375953 (= lt!2699700 e!4689716)))

(declare-fun c!1460226 () Bool)

(assert (=> d!2375953 (= c!1460226 (is-Nil!74569 testedP!447))))

(assert (=> d!2375953 (= (++!18334 testedP!447 (Cons!74569 lt!2699622 Nil!74569)) lt!2699700)))

(assert (= (and d!2375953 c!1460226) b!7949755))

(assert (= (and d!2375953 (not c!1460226)) b!7949756))

(assert (= (and d!2375953 res!3152698) b!7949757))

(assert (= (and b!7949757 res!3152697) b!7949758))

(declare-fun m!8334518 () Bool)

(assert (=> b!7949757 m!8334518))

(assert (=> b!7949757 m!8334058))

(declare-fun m!8334520 () Bool)

(assert (=> b!7949757 m!8334520))

(declare-fun m!8334522 () Bool)

(assert (=> b!7949756 m!8334522))

(declare-fun m!8334524 () Bool)

(assert (=> d!2375953 m!8334524))

(assert (=> d!2375953 m!8334214))

(declare-fun m!8334526 () Bool)

(assert (=> d!2375953 m!8334526))

(assert (=> b!7949509 d!2375953))

(declare-fun b!7949760 () Bool)

(declare-fun res!3152702 () Bool)

(declare-fun e!4689718 () Bool)

(assert (=> b!7949760 (=> (not res!3152702) (not e!4689718))))

(assert (=> b!7949760 (= res!3152702 (= (head!16216 (++!18334 testedP!447 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569))) (head!16216 input!7927)))))

(declare-fun b!7949761 () Bool)

(assert (=> b!7949761 (= e!4689718 (isPrefix!6564 (tail!15758 (++!18334 testedP!447 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569))) (tail!15758 input!7927)))))

(declare-fun d!2375955 () Bool)

(declare-fun e!4689720 () Bool)

(assert (=> d!2375955 e!4689720))

(declare-fun res!3152699 () Bool)

(assert (=> d!2375955 (=> res!3152699 e!4689720)))

(declare-fun lt!2699701 () Bool)

(assert (=> d!2375955 (= res!3152699 (not lt!2699701))))

(declare-fun e!4689719 () Bool)

(assert (=> d!2375955 (= lt!2699701 e!4689719)))

(declare-fun res!3152700 () Bool)

(assert (=> d!2375955 (=> res!3152700 e!4689719)))

(assert (=> d!2375955 (= res!3152700 (is-Nil!74569 (++!18334 testedP!447 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569))))))

(assert (=> d!2375955 (= (isPrefix!6564 (++!18334 testedP!447 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569)) input!7927) lt!2699701)))

(declare-fun b!7949762 () Bool)

(assert (=> b!7949762 (= e!4689720 (>= (size!43400 input!7927) (size!43400 (++!18334 testedP!447 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569)))))))

(declare-fun b!7949759 () Bool)

(assert (=> b!7949759 (= e!4689719 e!4689718)))

(declare-fun res!3152701 () Bool)

(assert (=> b!7949759 (=> (not res!3152701) (not e!4689718))))

(assert (=> b!7949759 (= res!3152701 (not (is-Nil!74569 input!7927)))))

(assert (= (and d!2375955 (not res!3152700)) b!7949759))

(assert (= (and b!7949759 res!3152701) b!7949760))

(assert (= (and b!7949760 res!3152702) b!7949761))

(assert (= (and d!2375955 (not res!3152699)) b!7949762))

(assert (=> b!7949760 m!8334202))

(declare-fun m!8334528 () Bool)

(assert (=> b!7949760 m!8334528))

(assert (=> b!7949760 m!8334152))

(assert (=> b!7949761 m!8334202))

(declare-fun m!8334530 () Bool)

(assert (=> b!7949761 m!8334530))

(assert (=> b!7949761 m!8334154))

(assert (=> b!7949761 m!8334530))

(assert (=> b!7949761 m!8334154))

(declare-fun m!8334532 () Bool)

(assert (=> b!7949761 m!8334532))

(assert (=> b!7949762 m!8334060))

(assert (=> b!7949762 m!8334202))

(declare-fun m!8334534 () Bool)

(assert (=> b!7949762 m!8334534))

(assert (=> b!7949509 d!2375955))

(assert (=> b!7949509 d!2375879))

(assert (=> b!7949509 d!2375871))

(declare-fun b!7949764 () Bool)

(declare-fun res!3152706 () Bool)

(declare-fun e!4689721 () Bool)

(assert (=> b!7949764 (=> (not res!3152706) (not e!4689721))))

(assert (=> b!7949764 (= res!3152706 (= (head!16216 (tail!15758 lt!2699391)) (head!16216 (tail!15758 input!7927))))))

(declare-fun b!7949765 () Bool)

(assert (=> b!7949765 (= e!4689721 (isPrefix!6564 (tail!15758 (tail!15758 lt!2699391)) (tail!15758 (tail!15758 input!7927))))))

(declare-fun d!2375957 () Bool)

(declare-fun e!4689723 () Bool)

(assert (=> d!2375957 e!4689723))

(declare-fun res!3152703 () Bool)

(assert (=> d!2375957 (=> res!3152703 e!4689723)))

(declare-fun lt!2699702 () Bool)

(assert (=> d!2375957 (= res!3152703 (not lt!2699702))))

(declare-fun e!4689722 () Bool)

(assert (=> d!2375957 (= lt!2699702 e!4689722)))

(declare-fun res!3152704 () Bool)

(assert (=> d!2375957 (=> res!3152704 e!4689722)))

(assert (=> d!2375957 (= res!3152704 (is-Nil!74569 (tail!15758 lt!2699391)))))

(assert (=> d!2375957 (= (isPrefix!6564 (tail!15758 lt!2699391) (tail!15758 input!7927)) lt!2699702)))

(declare-fun b!7949766 () Bool)

(assert (=> b!7949766 (= e!4689723 (>= (size!43400 (tail!15758 input!7927)) (size!43400 (tail!15758 lt!2699391))))))

(declare-fun b!7949763 () Bool)

(assert (=> b!7949763 (= e!4689722 e!4689721)))

(declare-fun res!3152705 () Bool)

(assert (=> b!7949763 (=> (not res!3152705) (not e!4689721))))

(assert (=> b!7949763 (= res!3152705 (not (is-Nil!74569 (tail!15758 input!7927))))))

(assert (= (and d!2375957 (not res!3152704)) b!7949763))

(assert (= (and b!7949763 res!3152705) b!7949764))

(assert (= (and b!7949764 res!3152706) b!7949765))

(assert (= (and d!2375957 (not res!3152703)) b!7949766))

(assert (=> b!7949764 m!8334222))

(declare-fun m!8334536 () Bool)

(assert (=> b!7949764 m!8334536))

(assert (=> b!7949764 m!8334154))

(declare-fun m!8334538 () Bool)

(assert (=> b!7949764 m!8334538))

(assert (=> b!7949765 m!8334222))

(declare-fun m!8334540 () Bool)

(assert (=> b!7949765 m!8334540))

(assert (=> b!7949765 m!8334154))

(declare-fun m!8334542 () Bool)

(assert (=> b!7949765 m!8334542))

(assert (=> b!7949765 m!8334540))

(assert (=> b!7949765 m!8334542))

(declare-fun m!8334544 () Bool)

(assert (=> b!7949765 m!8334544))

(assert (=> b!7949766 m!8334154))

(declare-fun m!8334546 () Bool)

(assert (=> b!7949766 m!8334546))

(assert (=> b!7949766 m!8334222))

(declare-fun m!8334548 () Bool)

(assert (=> b!7949766 m!8334548))

(assert (=> b!7949334 d!2375957))

(declare-fun d!2375959 () Bool)

(assert (=> d!2375959 (= (tail!15758 lt!2699391) (t!390436 lt!2699391))))

(assert (=> b!7949334 d!2375959))

(declare-fun d!2375961 () Bool)

(assert (=> d!2375961 (= (tail!15758 input!7927) (t!390436 input!7927))))

(assert (=> b!7949334 d!2375961))

(assert (=> b!7949335 d!2375853))

(declare-fun d!2375963 () Bool)

(declare-fun lt!2699703 () Int)

(assert (=> d!2375963 (>= lt!2699703 0)))

(declare-fun e!4689724 () Int)

(assert (=> d!2375963 (= lt!2699703 e!4689724)))

(declare-fun c!1460227 () Bool)

(assert (=> d!2375963 (= c!1460227 (is-Nil!74569 lt!2699391))))

(assert (=> d!2375963 (= (size!43400 lt!2699391) lt!2699703)))

(declare-fun b!7949767 () Bool)

(assert (=> b!7949767 (= e!4689724 0)))

(declare-fun b!7949768 () Bool)

(assert (=> b!7949768 (= e!4689724 (+ 1 (size!43400 (t!390436 lt!2699391))))))

(assert (= (and d!2375963 c!1460227) b!7949767))

(assert (= (and d!2375963 (not c!1460227)) b!7949768))

(declare-fun m!8334550 () Bool)

(assert (=> b!7949768 m!8334550))

(assert (=> b!7949335 d!2375963))

(declare-fun b!7949770 () Bool)

(declare-fun res!3152710 () Bool)

(declare-fun e!4689725 () Bool)

(assert (=> b!7949770 (=> (not res!3152710) (not e!4689725))))

(assert (=> b!7949770 (= res!3152710 (= (head!16216 (tail!15758 input!7927)) (head!16216 (tail!15758 input!7927))))))

(declare-fun b!7949771 () Bool)

(assert (=> b!7949771 (= e!4689725 (isPrefix!6564 (tail!15758 (tail!15758 input!7927)) (tail!15758 (tail!15758 input!7927))))))

(declare-fun d!2375965 () Bool)

(declare-fun e!4689727 () Bool)

(assert (=> d!2375965 e!4689727))

(declare-fun res!3152707 () Bool)

(assert (=> d!2375965 (=> res!3152707 e!4689727)))

(declare-fun lt!2699704 () Bool)

(assert (=> d!2375965 (= res!3152707 (not lt!2699704))))

(declare-fun e!4689726 () Bool)

(assert (=> d!2375965 (= lt!2699704 e!4689726)))

(declare-fun res!3152708 () Bool)

(assert (=> d!2375965 (=> res!3152708 e!4689726)))

(assert (=> d!2375965 (= res!3152708 (is-Nil!74569 (tail!15758 input!7927)))))

(assert (=> d!2375965 (= (isPrefix!6564 (tail!15758 input!7927) (tail!15758 input!7927)) lt!2699704)))

(declare-fun b!7949772 () Bool)

(assert (=> b!7949772 (= e!4689727 (>= (size!43400 (tail!15758 input!7927)) (size!43400 (tail!15758 input!7927))))))

(declare-fun b!7949769 () Bool)

(assert (=> b!7949769 (= e!4689726 e!4689725)))

(declare-fun res!3152709 () Bool)

(assert (=> b!7949769 (=> (not res!3152709) (not e!4689725))))

(assert (=> b!7949769 (= res!3152709 (not (is-Nil!74569 (tail!15758 input!7927))))))

(assert (= (and d!2375965 (not res!3152708)) b!7949769))

(assert (= (and b!7949769 res!3152709) b!7949770))

(assert (= (and b!7949770 res!3152710) b!7949771))

(assert (= (and d!2375965 (not res!3152707)) b!7949772))

(assert (=> b!7949770 m!8334154))

(assert (=> b!7949770 m!8334538))

(assert (=> b!7949770 m!8334154))

(assert (=> b!7949770 m!8334538))

(assert (=> b!7949771 m!8334154))

(assert (=> b!7949771 m!8334542))

(assert (=> b!7949771 m!8334154))

(assert (=> b!7949771 m!8334542))

(assert (=> b!7949771 m!8334542))

(assert (=> b!7949771 m!8334542))

(declare-fun m!8334552 () Bool)

(assert (=> b!7949771 m!8334552))

(assert (=> b!7949772 m!8334154))

(assert (=> b!7949772 m!8334546))

(assert (=> b!7949772 m!8334154))

(assert (=> b!7949772 m!8334546))

(assert (=> b!7949271 d!2375965))

(assert (=> b!7949271 d!2375961))

(assert (=> b!7949280 d!2375853))

(assert (=> b!7949280 d!2375869))

(declare-fun d!2375967 () Bool)

(declare-fun lt!2699705 () List!74693)

(assert (=> d!2375967 (= (++!18334 (t!390436 testedP!447) lt!2699705) (tail!15758 input!7927))))

(declare-fun e!4689728 () List!74693)

(assert (=> d!2375967 (= lt!2699705 e!4689728)))

(declare-fun c!1460228 () Bool)

(assert (=> d!2375967 (= c!1460228 (is-Cons!74569 (t!390436 testedP!447)))))

(assert (=> d!2375967 (>= (size!43400 (tail!15758 input!7927)) (size!43400 (t!390436 testedP!447)))))

(assert (=> d!2375967 (= (getSuffix!3767 (tail!15758 input!7927) (t!390436 testedP!447)) lt!2699705)))

(declare-fun b!7949773 () Bool)

(assert (=> b!7949773 (= e!4689728 (getSuffix!3767 (tail!15758 (tail!15758 input!7927)) (t!390436 (t!390436 testedP!447))))))

(declare-fun b!7949774 () Bool)

(assert (=> b!7949774 (= e!4689728 (tail!15758 input!7927))))

(assert (= (and d!2375967 c!1460228) b!7949773))

(assert (= (and d!2375967 (not c!1460228)) b!7949774))

(declare-fun m!8334554 () Bool)

(assert (=> d!2375967 m!8334554))

(assert (=> d!2375967 m!8334154))

(assert (=> d!2375967 m!8334546))

(assert (=> d!2375967 m!8334314))

(assert (=> b!7949773 m!8334154))

(assert (=> b!7949773 m!8334542))

(assert (=> b!7949773 m!8334542))

(declare-fun m!8334556 () Bool)

(assert (=> b!7949773 m!8334556))

(assert (=> b!7949519 d!2375967))

(assert (=> b!7949519 d!2375961))

(assert (=> b!7949272 d!2375853))

(declare-fun d!2375969 () Bool)

(declare-fun c!1460231 () Bool)

(assert (=> d!2375969 (= c!1460231 (is-Nil!74569 lt!2699463))))

(declare-fun e!4689731 () (Set C!43266))

(assert (=> d!2375969 (= (content!15826 lt!2699463) e!4689731)))

(declare-fun b!7949781 () Bool)

(assert (=> b!7949781 (= e!4689731 (as set.empty (Set C!43266)))))

(declare-fun b!7949782 () Bool)

(assert (=> b!7949782 (= e!4689731 (set.union (set.insert (h!81017 lt!2699463) (as set.empty (Set C!43266))) (content!15826 (t!390436 lt!2699463))))))

(assert (= (and d!2375969 c!1460231) b!7949781))

(assert (= (and d!2375969 (not c!1460231)) b!7949782))

(declare-fun m!8334558 () Bool)

(assert (=> b!7949782 m!8334558))

(declare-fun m!8334560 () Bool)

(assert (=> b!7949782 m!8334560))

(assert (=> d!2375847 d!2375969))

(declare-fun d!2375971 () Bool)

(declare-fun c!1460238 () Bool)

(assert (=> d!2375971 (= c!1460238 (is-Nil!74569 testedP!447))))

(declare-fun e!4689737 () (Set C!43266))

(assert (=> d!2375971 (= (content!15826 testedP!447) e!4689737)))

(declare-fun b!7949793 () Bool)

(assert (=> b!7949793 (= e!4689737 (as set.empty (Set C!43266)))))

(declare-fun b!7949794 () Bool)

(assert (=> b!7949794 (= e!4689737 (set.union (set.insert (h!81017 testedP!447) (as set.empty (Set C!43266))) (content!15826 (t!390436 testedP!447))))))

(assert (= (and d!2375971 c!1460238) b!7949793))

(assert (= (and d!2375971 (not c!1460238)) b!7949794))

(declare-fun m!8334562 () Bool)

(assert (=> b!7949794 m!8334562))

(assert (=> b!7949794 m!8334330))

(assert (=> d!2375847 d!2375971))

(declare-fun d!2375973 () Bool)

(declare-fun c!1460243 () Bool)

(assert (=> d!2375973 (= c!1460243 (is-Nil!74569 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))

(declare-fun e!4689743 () (Set C!43266))

(assert (=> d!2375973 (= (content!15826 (Cons!74569 (head!16216 lt!2699388) Nil!74569)) e!4689743)))

(declare-fun b!7949803 () Bool)

(assert (=> b!7949803 (= e!4689743 (as set.empty (Set C!43266)))))

(declare-fun b!7949804 () Bool)

(assert (=> b!7949804 (= e!4689743 (set.union (set.insert (h!81017 (Cons!74569 (head!16216 lt!2699388) Nil!74569)) (as set.empty (Set C!43266))) (content!15826 (t!390436 (Cons!74569 (head!16216 lt!2699388) Nil!74569)))))))

(assert (= (and d!2375973 c!1460243) b!7949803))

(assert (= (and d!2375973 (not c!1460243)) b!7949804))

(declare-fun m!8334564 () Bool)

(assert (=> b!7949804 m!8334564))

(declare-fun m!8334566 () Bool)

(assert (=> b!7949804 m!8334566))

(assert (=> d!2375847 d!2375973))

(assert (=> bm!736851 d!2375849))

(assert (=> bm!736852 d!2375813))

(declare-fun b!7949805 () Bool)

(declare-fun e!4689749 () Bool)

(declare-fun e!4689745 () Bool)

(assert (=> b!7949805 (= e!4689749 e!4689745)))

(declare-fun res!3152715 () Bool)

(assert (=> b!7949805 (=> (not res!3152715) (not e!4689745))))

(declare-fun call!736911 () Bool)

(assert (=> b!7949805 (= res!3152715 call!736911)))

(declare-fun b!7949806 () Bool)

(declare-fun e!4689744 () Bool)

(declare-fun e!4689746 () Bool)

(assert (=> b!7949806 (= e!4689744 e!4689746)))

(declare-fun c!1460245 () Bool)

(assert (=> b!7949806 (= c!1460245 (is-Union!21464 lt!2699428))))

(declare-fun b!7949807 () Bool)

(declare-fun e!4689748 () Bool)

(assert (=> b!7949807 (= e!4689748 e!4689744)))

(declare-fun c!1460244 () Bool)

(assert (=> b!7949807 (= c!1460244 (is-Star!21464 lt!2699428))))

(declare-fun b!7949808 () Bool)

(declare-fun e!4689747 () Bool)

(declare-fun call!736913 () Bool)

(assert (=> b!7949808 (= e!4689747 call!736913)))

(declare-fun bm!736906 () Bool)

(declare-fun call!736912 () Bool)

(assert (=> bm!736906 (= call!736913 call!736912)))

(declare-fun b!7949809 () Bool)

(declare-fun res!3152712 () Bool)

(assert (=> b!7949809 (=> res!3152712 e!4689749)))

(assert (=> b!7949809 (= res!3152712 (not (is-Concat!30463 lt!2699428)))))

(assert (=> b!7949809 (= e!4689746 e!4689749)))

(declare-fun bm!736907 () Bool)

(assert (=> bm!736907 (= call!736911 (validRegex!11768 (ite c!1460245 (regOne!43441 lt!2699428) (regOne!43440 lt!2699428))))))

(declare-fun b!7949810 () Bool)

(declare-fun res!3152711 () Bool)

(assert (=> b!7949810 (=> (not res!3152711) (not e!4689747))))

(assert (=> b!7949810 (= res!3152711 call!736911)))

(assert (=> b!7949810 (= e!4689746 e!4689747)))

(declare-fun d!2375975 () Bool)

(declare-fun res!3152714 () Bool)

(assert (=> d!2375975 (=> res!3152714 e!4689748)))

(assert (=> d!2375975 (= res!3152714 (is-ElementMatch!21464 lt!2699428))))

(assert (=> d!2375975 (= (validRegex!11768 lt!2699428) e!4689748)))

(declare-fun bm!736908 () Bool)

(assert (=> bm!736908 (= call!736912 (validRegex!11768 (ite c!1460244 (reg!21793 lt!2699428) (ite c!1460245 (regTwo!43441 lt!2699428) (regTwo!43440 lt!2699428)))))))

(declare-fun b!7949811 () Bool)

(assert (=> b!7949811 (= e!4689745 call!736913)))

(declare-fun b!7949812 () Bool)

(declare-fun e!4689750 () Bool)

(assert (=> b!7949812 (= e!4689744 e!4689750)))

(declare-fun res!3152713 () Bool)

(assert (=> b!7949812 (= res!3152713 (not (nullable!9565 (reg!21793 lt!2699428))))))

(assert (=> b!7949812 (=> (not res!3152713) (not e!4689750))))

(declare-fun b!7949813 () Bool)

(assert (=> b!7949813 (= e!4689750 call!736912)))

(assert (= (and d!2375975 (not res!3152714)) b!7949807))

(assert (= (and b!7949807 c!1460244) b!7949812))

(assert (= (and b!7949807 (not c!1460244)) b!7949806))

(assert (= (and b!7949812 res!3152713) b!7949813))

(assert (= (and b!7949806 c!1460245) b!7949810))

(assert (= (and b!7949806 (not c!1460245)) b!7949809))

(assert (= (and b!7949810 res!3152711) b!7949808))

(assert (= (and b!7949809 (not res!3152712)) b!7949805))

(assert (= (and b!7949805 res!3152715) b!7949811))

(assert (= (or b!7949808 b!7949811) bm!736906))

(assert (= (or b!7949810 b!7949805) bm!736907))

(assert (= (or b!7949813 bm!736906) bm!736908))

(declare-fun m!8334568 () Bool)

(assert (=> bm!736907 m!8334568))

(declare-fun m!8334570 () Bool)

(assert (=> bm!736908 m!8334570))

(declare-fun m!8334572 () Bool)

(assert (=> b!7949812 m!8334572))

(assert (=> d!2375807 d!2375975))

(assert (=> d!2375807 d!2375835))

(declare-fun d!2375977 () Bool)

(assert (=> d!2375977 (= (head!16216 testedP!447) (h!81017 testedP!447))))

(assert (=> b!7949278 d!2375977))

(assert (=> b!7949278 d!2375933))

(assert (=> bm!736850 d!2375827))

(assert (=> b!7949270 d!2375933))

(declare-fun b!7949815 () Bool)

(declare-fun res!3152719 () Bool)

(declare-fun e!4689751 () Bool)

(assert (=> b!7949815 (=> (not res!3152719) (not e!4689751))))

(assert (=> b!7949815 (= res!3152719 (= (head!16216 (tail!15758 testedP!447)) (head!16216 (tail!15758 input!7927))))))

(declare-fun b!7949816 () Bool)

(assert (=> b!7949816 (= e!4689751 (isPrefix!6564 (tail!15758 (tail!15758 testedP!447)) (tail!15758 (tail!15758 input!7927))))))

(declare-fun d!2375979 () Bool)

(declare-fun e!4689753 () Bool)

(assert (=> d!2375979 e!4689753))

(declare-fun res!3152716 () Bool)

(assert (=> d!2375979 (=> res!3152716 e!4689753)))

(declare-fun lt!2699708 () Bool)

(assert (=> d!2375979 (= res!3152716 (not lt!2699708))))

(declare-fun e!4689752 () Bool)

(assert (=> d!2375979 (= lt!2699708 e!4689752)))

(declare-fun res!3152717 () Bool)

(assert (=> d!2375979 (=> res!3152717 e!4689752)))

(assert (=> d!2375979 (= res!3152717 (is-Nil!74569 (tail!15758 testedP!447)))))

(assert (=> d!2375979 (= (isPrefix!6564 (tail!15758 testedP!447) (tail!15758 input!7927)) lt!2699708)))

(declare-fun b!7949817 () Bool)

(assert (=> b!7949817 (= e!4689753 (>= (size!43400 (tail!15758 input!7927)) (size!43400 (tail!15758 testedP!447))))))

(declare-fun b!7949814 () Bool)

(assert (=> b!7949814 (= e!4689752 e!4689751)))

(declare-fun res!3152718 () Bool)

(assert (=> b!7949814 (=> (not res!3152718) (not e!4689751))))

(assert (=> b!7949814 (= res!3152718 (not (is-Nil!74569 (tail!15758 input!7927))))))

(assert (= (and d!2375979 (not res!3152717)) b!7949814))

(assert (= (and b!7949814 res!3152718) b!7949815))

(assert (= (and b!7949815 res!3152719) b!7949816))

(assert (= (and d!2375979 (not res!3152716)) b!7949817))

(assert (=> b!7949815 m!8334182))

(declare-fun m!8334574 () Bool)

(assert (=> b!7949815 m!8334574))

(assert (=> b!7949815 m!8334154))

(assert (=> b!7949815 m!8334538))

(assert (=> b!7949816 m!8334182))

(declare-fun m!8334576 () Bool)

(assert (=> b!7949816 m!8334576))

(assert (=> b!7949816 m!8334154))

(assert (=> b!7949816 m!8334542))

(assert (=> b!7949816 m!8334576))

(assert (=> b!7949816 m!8334542))

(declare-fun m!8334578 () Bool)

(assert (=> b!7949816 m!8334578))

(assert (=> b!7949817 m!8334154))

(assert (=> b!7949817 m!8334546))

(assert (=> b!7949817 m!8334182))

(declare-fun m!8334580 () Bool)

(assert (=> b!7949817 m!8334580))

(assert (=> b!7949279 d!2375979))

(declare-fun d!2375981 () Bool)

(assert (=> d!2375981 (= (tail!15758 testedP!447) (t!390436 testedP!447))))

(assert (=> b!7949279 d!2375981))

(assert (=> b!7949279 d!2375961))

(assert (=> d!2375813 d!2375815))

(declare-fun d!2375983 () Bool)

(assert (=> d!2375983 (isPrefix!6564 input!7927 input!7927)))

(assert (=> d!2375983 true))

(declare-fun _$45!2455 () Unit!169802)

(assert (=> d!2375983 (= (choose!59897 input!7927 input!7927) _$45!2455)))

(declare-fun bs!1969515 () Bool)

(assert (= bs!1969515 d!2375983))

(assert (=> bs!1969515 m!8334068))

(assert (=> d!2375813 d!2375983))

(assert (=> d!2375843 d!2375935))

(declare-fun d!2375985 () Bool)

(assert (=> d!2375985 (isPrefix!6564 (++!18334 testedP!447 (Cons!74569 (head!16216 (getSuffix!3767 input!7927 testedP!447)) Nil!74569)) input!7927)))

(assert (=> d!2375985 true))

(declare-fun _$65!1925 () Unit!169802)

(assert (=> d!2375985 (= (choose!59899 testedP!447 input!7927) _$65!1925)))

(declare-fun bs!1969516 () Bool)

(assert (= bs!1969516 d!2375985))

(assert (=> bs!1969516 m!8334062))

(assert (=> bs!1969516 m!8334062))

(assert (=> bs!1969516 m!8334198))

(assert (=> bs!1969516 m!8334202))

(assert (=> bs!1969516 m!8334202))

(assert (=> bs!1969516 m!8334204))

(assert (=> d!2375843 d!2375985))

(assert (=> d!2375843 d!2375949))

(assert (=> d!2375843 d!2375955))

(assert (=> d!2375843 d!2375831))

(assert (=> d!2375843 d!2375867))

(declare-fun e!4689755 () Bool)

(declare-fun b!7949821 () Bool)

(declare-fun lt!2699709 () List!74693)

(assert (=> b!7949821 (= e!4689755 (or (not (= lt!2699388 Nil!74569)) (= lt!2699709 testedP!447)))))

(declare-fun b!7949820 () Bool)

(declare-fun res!3152720 () Bool)

(assert (=> b!7949820 (=> (not res!3152720) (not e!4689755))))

(assert (=> b!7949820 (= res!3152720 (= (size!43400 lt!2699709) (+ (size!43400 testedP!447) (size!43400 lt!2699388))))))

(declare-fun b!7949819 () Bool)

(declare-fun e!4689754 () List!74693)

(assert (=> b!7949819 (= e!4689754 (Cons!74569 (h!81017 testedP!447) (++!18334 (t!390436 testedP!447) lt!2699388)))))

(declare-fun b!7949818 () Bool)

(assert (=> b!7949818 (= e!4689754 lt!2699388)))

(declare-fun d!2375987 () Bool)

(assert (=> d!2375987 e!4689755))

(declare-fun res!3152721 () Bool)

(assert (=> d!2375987 (=> (not res!3152721) (not e!4689755))))

(assert (=> d!2375987 (= res!3152721 (= (content!15826 lt!2699709) (set.union (content!15826 testedP!447) (content!15826 lt!2699388))))))

(assert (=> d!2375987 (= lt!2699709 e!4689754)))

(declare-fun c!1460246 () Bool)

(assert (=> d!2375987 (= c!1460246 (is-Nil!74569 testedP!447))))

(assert (=> d!2375987 (= (++!18334 testedP!447 lt!2699388) lt!2699709)))

(assert (= (and d!2375987 c!1460246) b!7949818))

(assert (= (and d!2375987 (not c!1460246)) b!7949819))

(assert (= (and d!2375987 res!3152721) b!7949820))

(assert (= (and b!7949820 res!3152720) b!7949821))

(declare-fun m!8334582 () Bool)

(assert (=> b!7949820 m!8334582))

(assert (=> b!7949820 m!8334058))

(declare-fun m!8334584 () Bool)

(assert (=> b!7949820 m!8334584))

(declare-fun m!8334586 () Bool)

(assert (=> b!7949819 m!8334586))

(declare-fun m!8334588 () Bool)

(assert (=> d!2375987 m!8334588))

(assert (=> d!2375987 m!8334214))

(declare-fun m!8334590 () Bool)

(assert (=> d!2375987 m!8334590))

(assert (=> d!2375857 d!2375987))

(declare-fun d!2375989 () Bool)

(assert (=> d!2375989 (= lt!2699388 lt!2699629)))

(declare-fun lt!2699713 () Unit!169802)

(declare-fun choose!59903 (List!74693 List!74693 List!74693 List!74693 List!74693) Unit!169802)

(assert (=> d!2375989 (= lt!2699713 (choose!59903 testedP!447 lt!2699388 testedP!447 lt!2699629 input!7927))))

(assert (=> d!2375989 (isPrefix!6564 testedP!447 input!7927)))

(assert (=> d!2375989 (= (lemmaSamePrefixThenSameSuffix!2974 testedP!447 lt!2699388 testedP!447 lt!2699629 input!7927) lt!2699713)))

(declare-fun bs!1969517 () Bool)

(assert (= bs!1969517 d!2375989))

(declare-fun m!8334600 () Bool)

(assert (=> bs!1969517 m!8334600))

(assert (=> bs!1969517 m!8334050))

(assert (=> d!2375857 d!2375989))

(declare-fun b!7949832 () Bool)

(declare-fun e!4689766 () Bool)

(declare-fun e!4689762 () Bool)

(assert (=> b!7949832 (= e!4689766 e!4689762)))

(declare-fun res!3152726 () Bool)

(assert (=> b!7949832 (=> (not res!3152726) (not e!4689762))))

(declare-fun call!736924 () Bool)

(assert (=> b!7949832 (= res!3152726 call!736924)))

(declare-fun b!7949833 () Bool)

(declare-fun e!4689761 () Bool)

(declare-fun e!4689763 () Bool)

(assert (=> b!7949833 (= e!4689761 e!4689763)))

(declare-fun c!1460253 () Bool)

(assert (=> b!7949833 (= c!1460253 (is-Union!21464 r!24602))))

(declare-fun b!7949834 () Bool)

(declare-fun e!4689765 () Bool)

(assert (=> b!7949834 (= e!4689765 e!4689761)))

(declare-fun c!1460252 () Bool)

(assert (=> b!7949834 (= c!1460252 (is-Star!21464 r!24602))))

(declare-fun b!7949835 () Bool)

(declare-fun e!4689764 () Bool)

(declare-fun call!736926 () Bool)

(assert (=> b!7949835 (= e!4689764 call!736926)))

(declare-fun bm!736919 () Bool)

(declare-fun call!736925 () Bool)

(assert (=> bm!736919 (= call!736926 call!736925)))

(declare-fun b!7949836 () Bool)

(declare-fun res!3152723 () Bool)

(assert (=> b!7949836 (=> res!3152723 e!4689766)))

(assert (=> b!7949836 (= res!3152723 (not (is-Concat!30463 r!24602)))))

(assert (=> b!7949836 (= e!4689763 e!4689766)))

(declare-fun bm!736920 () Bool)

(assert (=> bm!736920 (= call!736924 (validRegex!11768 (ite c!1460253 (regOne!43441 r!24602) (regOne!43440 r!24602))))))

(declare-fun b!7949837 () Bool)

(declare-fun res!3152722 () Bool)

(assert (=> b!7949837 (=> (not res!3152722) (not e!4689764))))

(assert (=> b!7949837 (= res!3152722 call!736924)))

(assert (=> b!7949837 (= e!4689763 e!4689764)))

(declare-fun d!2375995 () Bool)

(declare-fun res!3152725 () Bool)

(assert (=> d!2375995 (=> res!3152725 e!4689765)))

(assert (=> d!2375995 (= res!3152725 (is-ElementMatch!21464 r!24602))))

(assert (=> d!2375995 (= (validRegex!11768 r!24602) e!4689765)))

(declare-fun bm!736921 () Bool)

(assert (=> bm!736921 (= call!736925 (validRegex!11768 (ite c!1460252 (reg!21793 r!24602) (ite c!1460253 (regTwo!43441 r!24602) (regTwo!43440 r!24602)))))))

(declare-fun b!7949838 () Bool)

(assert (=> b!7949838 (= e!4689762 call!736926)))

(declare-fun b!7949839 () Bool)

(declare-fun e!4689767 () Bool)

(assert (=> b!7949839 (= e!4689761 e!4689767)))

(declare-fun res!3152724 () Bool)

(assert (=> b!7949839 (= res!3152724 (not (nullable!9565 (reg!21793 r!24602))))))

(assert (=> b!7949839 (=> (not res!3152724) (not e!4689767))))

(declare-fun b!7949840 () Bool)

(assert (=> b!7949840 (= e!4689767 call!736925)))

(assert (= (and d!2375995 (not res!3152725)) b!7949834))

(assert (= (and b!7949834 c!1460252) b!7949839))

(assert (= (and b!7949834 (not c!1460252)) b!7949833))

(assert (= (and b!7949839 res!3152724) b!7949840))

(assert (= (and b!7949833 c!1460253) b!7949837))

(assert (= (and b!7949833 (not c!1460253)) b!7949836))

(assert (= (and b!7949837 res!3152722) b!7949835))

(assert (= (and b!7949836 (not res!3152723)) b!7949832))

(assert (= (and b!7949832 res!3152726) b!7949838))

(assert (= (or b!7949835 b!7949838) bm!736919))

(assert (= (or b!7949837 b!7949832) bm!736920))

(assert (= (or b!7949840 bm!736919) bm!736921))

(declare-fun m!8334602 () Bool)

(assert (=> bm!736920 m!8334602))

(declare-fun m!8334604 () Bool)

(assert (=> bm!736921 m!8334604))

(declare-fun m!8334606 () Bool)

(assert (=> b!7949839 m!8334606))

(assert (=> d!2375857 d!2375995))

(declare-fun d!2375997 () Bool)

(assert (=> d!2375997 (isPrefix!6564 testedP!447 (++!18334 testedP!447 lt!2699388))))

(declare-fun lt!2699718 () Unit!169802)

(declare-fun choose!59904 (List!74693 List!74693) Unit!169802)

(assert (=> d!2375997 (= lt!2699718 (choose!59904 testedP!447 lt!2699388))))

(assert (=> d!2375997 (= (lemmaConcatTwoListThenFirstIsPrefix!3836 testedP!447 lt!2699388) lt!2699718)))

(declare-fun bs!1969519 () Bool)

(assert (= bs!1969519 d!2375997))

(assert (=> bs!1969519 m!8334298))

(assert (=> bs!1969519 m!8334298))

(assert (=> bs!1969519 m!8334300))

(declare-fun m!8334622 () Bool)

(assert (=> bs!1969519 m!8334622))

(assert (=> d!2375857 d!2375997))

(declare-fun d!2376003 () Bool)

(declare-fun lostCauseFct!563 (Regex!21464) Bool)

(assert (=> d!2376003 (= (lostCause!1958 r!24602) (lostCauseFct!563 r!24602))))

(declare-fun bs!1969520 () Bool)

(assert (= bs!1969520 d!2376003))

(declare-fun m!8334642 () Bool)

(assert (=> bs!1969520 m!8334642))

(assert (=> d!2375857 d!2376003))

(declare-fun b!7949860 () Bool)

(declare-fun e!4689779 () Bool)

(declare-fun lt!2699722 () List!74693)

(assert (=> b!7949860 (= e!4689779 (or (not (= (_2!38598 lt!2699640) Nil!74569)) (= lt!2699722 (_1!38598 lt!2699640))))))

(declare-fun b!7949859 () Bool)

(declare-fun res!3152737 () Bool)

(assert (=> b!7949859 (=> (not res!3152737) (not e!4689779))))

(assert (=> b!7949859 (= res!3152737 (= (size!43400 lt!2699722) (+ (size!43400 (_1!38598 lt!2699640)) (size!43400 (_2!38598 lt!2699640)))))))

(declare-fun b!7949858 () Bool)

(declare-fun e!4689778 () List!74693)

(assert (=> b!7949858 (= e!4689778 (Cons!74569 (h!81017 (_1!38598 lt!2699640)) (++!18334 (t!390436 (_1!38598 lt!2699640)) (_2!38598 lt!2699640))))))

(declare-fun b!7949857 () Bool)

(assert (=> b!7949857 (= e!4689778 (_2!38598 lt!2699640))))

(declare-fun d!2376015 () Bool)

(assert (=> d!2376015 e!4689779))

(declare-fun res!3152738 () Bool)

(assert (=> d!2376015 (=> (not res!3152738) (not e!4689779))))

(assert (=> d!2376015 (= res!3152738 (= (content!15826 lt!2699722) (set.union (content!15826 (_1!38598 lt!2699640)) (content!15826 (_2!38598 lt!2699640)))))))

(assert (=> d!2376015 (= lt!2699722 e!4689778)))

(declare-fun c!1460257 () Bool)

(assert (=> d!2376015 (= c!1460257 (is-Nil!74569 (_1!38598 lt!2699640)))))

(assert (=> d!2376015 (= (++!18334 (_1!38598 lt!2699640) (_2!38598 lt!2699640)) lt!2699722)))

(assert (= (and d!2376015 c!1460257) b!7949857))

(assert (= (and d!2376015 (not c!1460257)) b!7949858))

(assert (= (and d!2376015 res!3152738) b!7949859))

(assert (= (and b!7949859 res!3152737) b!7949860))

(declare-fun m!8334644 () Bool)

(assert (=> b!7949859 m!8334644))

(assert (=> b!7949859 m!8334290))

(declare-fun m!8334646 () Bool)

(assert (=> b!7949859 m!8334646))

(declare-fun m!8334648 () Bool)

(assert (=> b!7949858 m!8334648))

(declare-fun m!8334650 () Bool)

(assert (=> d!2376015 m!8334650))

(declare-fun m!8334652 () Bool)

(assert (=> d!2376015 m!8334652))

(declare-fun m!8334654 () Bool)

(assert (=> d!2376015 m!8334654))

(assert (=> d!2375857 d!2376015))

(declare-fun b!7949866 () Bool)

(declare-fun res!3152742 () Bool)

(declare-fun e!4689782 () Bool)

(assert (=> b!7949866 (=> (not res!3152742) (not e!4689782))))

(assert (=> b!7949866 (= res!3152742 (= (head!16216 testedP!447) (head!16216 (++!18334 testedP!447 lt!2699388))))))

(declare-fun b!7949867 () Bool)

(assert (=> b!7949867 (= e!4689782 (isPrefix!6564 (tail!15758 testedP!447) (tail!15758 (++!18334 testedP!447 lt!2699388))))))

(declare-fun d!2376017 () Bool)

(declare-fun e!4689784 () Bool)

(assert (=> d!2376017 e!4689784))

(declare-fun res!3152739 () Bool)

(assert (=> d!2376017 (=> res!3152739 e!4689784)))

(declare-fun lt!2699723 () Bool)

(assert (=> d!2376017 (= res!3152739 (not lt!2699723))))

(declare-fun e!4689783 () Bool)

(assert (=> d!2376017 (= lt!2699723 e!4689783)))

(declare-fun res!3152740 () Bool)

(assert (=> d!2376017 (=> res!3152740 e!4689783)))

(assert (=> d!2376017 (= res!3152740 (is-Nil!74569 testedP!447))))

(assert (=> d!2376017 (= (isPrefix!6564 testedP!447 (++!18334 testedP!447 lt!2699388)) lt!2699723)))

(declare-fun b!7949868 () Bool)

(assert (=> b!7949868 (= e!4689784 (>= (size!43400 (++!18334 testedP!447 lt!2699388)) (size!43400 testedP!447)))))

(declare-fun b!7949865 () Bool)

(assert (=> b!7949865 (= e!4689783 e!4689782)))

(declare-fun res!3152741 () Bool)

(assert (=> b!7949865 (=> (not res!3152741) (not e!4689782))))

(assert (=> b!7949865 (= res!3152741 (not (is-Nil!74569 (++!18334 testedP!447 lt!2699388))))))

(assert (= (and d!2376017 (not res!3152740)) b!7949865))

(assert (= (and b!7949865 res!3152741) b!7949866))

(assert (= (and b!7949866 res!3152742) b!7949867))

(assert (= (and d!2376017 (not res!3152739)) b!7949868))

(assert (=> b!7949866 m!8334178))

(assert (=> b!7949866 m!8334298))

(declare-fun m!8334656 () Bool)

(assert (=> b!7949866 m!8334656))

(assert (=> b!7949867 m!8334182))

(assert (=> b!7949867 m!8334298))

(declare-fun m!8334658 () Bool)

(assert (=> b!7949867 m!8334658))

(assert (=> b!7949867 m!8334182))

(assert (=> b!7949867 m!8334658))

(declare-fun m!8334660 () Bool)

(assert (=> b!7949867 m!8334660))

(assert (=> b!7949868 m!8334298))

(declare-fun m!8334662 () Bool)

(assert (=> b!7949868 m!8334662))

(assert (=> b!7949868 m!8334058))

(assert (=> d!2375857 d!2376017))

(assert (=> d!2375857 d!2375867))

(declare-fun b!7949871 () Bool)

(declare-fun e!4689785 () Bool)

(declare-fun tp!2365587 () Bool)

(assert (=> b!7949871 (= e!4689785 tp!2365587)))

(declare-fun b!7949869 () Bool)

(assert (=> b!7949869 (= e!4689785 tp_is_empty!53471)))

(assert (=> b!7949541 (= tp!2365532 e!4689785)))

(declare-fun b!7949872 () Bool)

(declare-fun tp!2365583 () Bool)

(declare-fun tp!2365585 () Bool)

(assert (=> b!7949872 (= e!4689785 (and tp!2365583 tp!2365585))))

(declare-fun b!7949870 () Bool)

(declare-fun tp!2365586 () Bool)

(declare-fun tp!2365584 () Bool)

(assert (=> b!7949870 (= e!4689785 (and tp!2365586 tp!2365584))))

(assert (= (and b!7949541 (is-ElementMatch!21464 (regOne!43441 (reg!21793 baseR!116)))) b!7949869))

(assert (= (and b!7949541 (is-Concat!30463 (regOne!43441 (reg!21793 baseR!116)))) b!7949870))

(assert (= (and b!7949541 (is-Star!21464 (regOne!43441 (reg!21793 baseR!116)))) b!7949871))

(assert (= (and b!7949541 (is-Union!21464 (regOne!43441 (reg!21793 baseR!116)))) b!7949872))

(declare-fun b!7949877 () Bool)

(declare-fun e!4689787 () Bool)

(declare-fun tp!2365592 () Bool)

(assert (=> b!7949877 (= e!4689787 tp!2365592)))

(declare-fun b!7949875 () Bool)

(assert (=> b!7949875 (= e!4689787 tp_is_empty!53471)))

(assert (=> b!7949541 (= tp!2365534 e!4689787)))

(declare-fun b!7949878 () Bool)

(declare-fun tp!2365588 () Bool)

(declare-fun tp!2365590 () Bool)

(assert (=> b!7949878 (= e!4689787 (and tp!2365588 tp!2365590))))

(declare-fun b!7949876 () Bool)

(declare-fun tp!2365591 () Bool)

(declare-fun tp!2365589 () Bool)

(assert (=> b!7949876 (= e!4689787 (and tp!2365591 tp!2365589))))

(assert (= (and b!7949541 (is-ElementMatch!21464 (regTwo!43441 (reg!21793 baseR!116)))) b!7949875))

(assert (= (and b!7949541 (is-Concat!30463 (regTwo!43441 (reg!21793 baseR!116)))) b!7949876))

(assert (= (and b!7949541 (is-Star!21464 (regTwo!43441 (reg!21793 baseR!116)))) b!7949877))

(assert (= (and b!7949541 (is-Union!21464 (regTwo!43441 (reg!21793 baseR!116)))) b!7949878))

(declare-fun b!7949883 () Bool)

(declare-fun e!4689789 () Bool)

(declare-fun tp!2365597 () Bool)

(assert (=> b!7949883 (= e!4689789 tp!2365597)))

(declare-fun b!7949881 () Bool)

(assert (=> b!7949881 (= e!4689789 tp_is_empty!53471)))

(assert (=> b!7949540 (= tp!2365536 e!4689789)))

(declare-fun b!7949884 () Bool)

(declare-fun tp!2365593 () Bool)

(declare-fun tp!2365595 () Bool)

(assert (=> b!7949884 (= e!4689789 (and tp!2365593 tp!2365595))))

(declare-fun b!7949882 () Bool)

(declare-fun tp!2365596 () Bool)

(declare-fun tp!2365594 () Bool)

(assert (=> b!7949882 (= e!4689789 (and tp!2365596 tp!2365594))))

(assert (= (and b!7949540 (is-ElementMatch!21464 (reg!21793 (reg!21793 baseR!116)))) b!7949881))

(assert (= (and b!7949540 (is-Concat!30463 (reg!21793 (reg!21793 baseR!116)))) b!7949882))

(assert (= (and b!7949540 (is-Star!21464 (reg!21793 (reg!21793 baseR!116)))) b!7949883))

(assert (= (and b!7949540 (is-Union!21464 (reg!21793 (reg!21793 baseR!116)))) b!7949884))

(declare-fun b!7949889 () Bool)

(declare-fun e!4689791 () Bool)

(declare-fun tp!2365602 () Bool)

(assert (=> b!7949889 (= e!4689791 tp!2365602)))

(declare-fun b!7949887 () Bool)

(assert (=> b!7949887 (= e!4689791 tp_is_empty!53471)))

(assert (=> b!7949567 (= tp!2365570 e!4689791)))

(declare-fun b!7949890 () Bool)

(declare-fun tp!2365598 () Bool)

(declare-fun tp!2365600 () Bool)

(assert (=> b!7949890 (= e!4689791 (and tp!2365598 tp!2365600))))

(declare-fun b!7949888 () Bool)

(declare-fun tp!2365601 () Bool)

(declare-fun tp!2365599 () Bool)

(assert (=> b!7949888 (= e!4689791 (and tp!2365601 tp!2365599))))

(assert (= (and b!7949567 (is-ElementMatch!21464 (regOne!43440 (regTwo!43441 r!24602)))) b!7949887))

(assert (= (and b!7949567 (is-Concat!30463 (regOne!43440 (regTwo!43441 r!24602)))) b!7949888))

(assert (= (and b!7949567 (is-Star!21464 (regOne!43440 (regTwo!43441 r!24602)))) b!7949889))

(assert (= (and b!7949567 (is-Union!21464 (regOne!43440 (regTwo!43441 r!24602)))) b!7949890))

(declare-fun b!7949897 () Bool)

(declare-fun e!4689795 () Bool)

(declare-fun tp!2365607 () Bool)

(assert (=> b!7949897 (= e!4689795 tp!2365607)))

(declare-fun b!7949895 () Bool)

(assert (=> b!7949895 (= e!4689795 tp_is_empty!53471)))

(assert (=> b!7949567 (= tp!2365568 e!4689795)))

(declare-fun b!7949898 () Bool)

(declare-fun tp!2365603 () Bool)

(declare-fun tp!2365605 () Bool)

(assert (=> b!7949898 (= e!4689795 (and tp!2365603 tp!2365605))))

(declare-fun b!7949896 () Bool)

(declare-fun tp!2365606 () Bool)

(declare-fun tp!2365604 () Bool)

(assert (=> b!7949896 (= e!4689795 (and tp!2365606 tp!2365604))))

(assert (= (and b!7949567 (is-ElementMatch!21464 (regTwo!43440 (regTwo!43441 r!24602)))) b!7949895))

(assert (= (and b!7949567 (is-Concat!30463 (regTwo!43440 (regTwo!43441 r!24602)))) b!7949896))

(assert (= (and b!7949567 (is-Star!21464 (regTwo!43440 (regTwo!43441 r!24602)))) b!7949897))

(assert (= (and b!7949567 (is-Union!21464 (regTwo!43440 (regTwo!43441 r!24602)))) b!7949898))

(declare-fun b!7949901 () Bool)

(declare-fun e!4689796 () Bool)

(declare-fun tp!2365612 () Bool)

(assert (=> b!7949901 (= e!4689796 tp!2365612)))

(declare-fun b!7949899 () Bool)

(assert (=> b!7949899 (= e!4689796 tp_is_empty!53471)))

(assert (=> b!7949576 (= tp!2365581 e!4689796)))

(declare-fun b!7949902 () Bool)

(declare-fun tp!2365608 () Bool)

(declare-fun tp!2365610 () Bool)

(assert (=> b!7949902 (= e!4689796 (and tp!2365608 tp!2365610))))

(declare-fun b!7949900 () Bool)

(declare-fun tp!2365611 () Bool)

(declare-fun tp!2365609 () Bool)

(assert (=> b!7949900 (= e!4689796 (and tp!2365611 tp!2365609))))

(assert (= (and b!7949576 (is-ElementMatch!21464 (reg!21793 (regTwo!43440 baseR!116)))) b!7949899))

(assert (= (and b!7949576 (is-Concat!30463 (reg!21793 (regTwo!43440 baseR!116)))) b!7949900))

(assert (= (and b!7949576 (is-Star!21464 (reg!21793 (regTwo!43440 baseR!116)))) b!7949901))

(assert (= (and b!7949576 (is-Union!21464 (reg!21793 (regTwo!43440 baseR!116)))) b!7949902))

(declare-fun b!7949905 () Bool)

(declare-fun e!4689797 () Bool)

(declare-fun tp!2365617 () Bool)

(assert (=> b!7949905 (= e!4689797 tp!2365617)))

(declare-fun b!7949903 () Bool)

(assert (=> b!7949903 (= e!4689797 tp_is_empty!53471)))

(assert (=> b!7949575 (= tp!2365580 e!4689797)))

(declare-fun b!7949906 () Bool)

(declare-fun tp!2365613 () Bool)

(declare-fun tp!2365615 () Bool)

(assert (=> b!7949906 (= e!4689797 (and tp!2365613 tp!2365615))))

(declare-fun b!7949904 () Bool)

(declare-fun tp!2365616 () Bool)

(declare-fun tp!2365614 () Bool)

(assert (=> b!7949904 (= e!4689797 (and tp!2365616 tp!2365614))))

(assert (= (and b!7949575 (is-ElementMatch!21464 (regOne!43440 (regTwo!43440 baseR!116)))) b!7949903))

(assert (= (and b!7949575 (is-Concat!30463 (regOne!43440 (regTwo!43440 baseR!116)))) b!7949904))

(assert (= (and b!7949575 (is-Star!21464 (regOne!43440 (regTwo!43440 baseR!116)))) b!7949905))

(assert (= (and b!7949575 (is-Union!21464 (regOne!43440 (regTwo!43440 baseR!116)))) b!7949906))

(declare-fun b!7949915 () Bool)

(declare-fun e!4689805 () Bool)

(declare-fun tp!2365622 () Bool)

(assert (=> b!7949915 (= e!4689805 tp!2365622)))

(declare-fun b!7949911 () Bool)

(assert (=> b!7949911 (= e!4689805 tp_is_empty!53471)))

(assert (=> b!7949575 (= tp!2365578 e!4689805)))

(declare-fun b!7949916 () Bool)

(declare-fun tp!2365618 () Bool)

(declare-fun tp!2365620 () Bool)

(assert (=> b!7949916 (= e!4689805 (and tp!2365618 tp!2365620))))

(declare-fun b!7949913 () Bool)

(declare-fun tp!2365621 () Bool)

(declare-fun tp!2365619 () Bool)

(assert (=> b!7949913 (= e!4689805 (and tp!2365621 tp!2365619))))

(assert (= (and b!7949575 (is-ElementMatch!21464 (regTwo!43440 (regTwo!43440 baseR!116)))) b!7949911))

(assert (= (and b!7949575 (is-Concat!30463 (regTwo!43440 (regTwo!43440 baseR!116)))) b!7949913))

(assert (= (and b!7949575 (is-Star!21464 (regTwo!43440 (regTwo!43440 baseR!116)))) b!7949915))

(assert (= (and b!7949575 (is-Union!21464 (regTwo!43440 (regTwo!43440 baseR!116)))) b!7949916))

(declare-fun b!7949922 () Bool)

(declare-fun e!4689806 () Bool)

(declare-fun tp!2365627 () Bool)

(assert (=> b!7949922 (= e!4689806 tp!2365627)))

(declare-fun b!7949920 () Bool)

(assert (=> b!7949920 (= e!4689806 tp_is_empty!53471)))

(assert (=> b!7949565 (= tp!2365562 e!4689806)))

(declare-fun b!7949923 () Bool)

(declare-fun tp!2365623 () Bool)

(declare-fun tp!2365625 () Bool)

(assert (=> b!7949923 (= e!4689806 (and tp!2365623 tp!2365625))))

(declare-fun b!7949921 () Bool)

(declare-fun tp!2365626 () Bool)

(declare-fun tp!2365624 () Bool)

(assert (=> b!7949921 (= e!4689806 (and tp!2365626 tp!2365624))))

(assert (= (and b!7949565 (is-ElementMatch!21464 (regOne!43441 (regOne!43441 r!24602)))) b!7949920))

(assert (= (and b!7949565 (is-Concat!30463 (regOne!43441 (regOne!43441 r!24602)))) b!7949921))

(assert (= (and b!7949565 (is-Star!21464 (regOne!43441 (regOne!43441 r!24602)))) b!7949922))

(assert (= (and b!7949565 (is-Union!21464 (regOne!43441 (regOne!43441 r!24602)))) b!7949923))

(declare-fun b!7949926 () Bool)

(declare-fun e!4689807 () Bool)

(declare-fun tp!2365632 () Bool)

(assert (=> b!7949926 (= e!4689807 tp!2365632)))

(declare-fun b!7949924 () Bool)

(assert (=> b!7949924 (= e!4689807 tp_is_empty!53471)))

(assert (=> b!7949565 (= tp!2365564 e!4689807)))

(declare-fun b!7949927 () Bool)

(declare-fun tp!2365628 () Bool)

(declare-fun tp!2365630 () Bool)

(assert (=> b!7949927 (= e!4689807 (and tp!2365628 tp!2365630))))

(declare-fun b!7949925 () Bool)

(declare-fun tp!2365631 () Bool)

(declare-fun tp!2365629 () Bool)

(assert (=> b!7949925 (= e!4689807 (and tp!2365631 tp!2365629))))

(assert (= (and b!7949565 (is-ElementMatch!21464 (regTwo!43441 (regOne!43441 r!24602)))) b!7949924))

(assert (= (and b!7949565 (is-Concat!30463 (regTwo!43441 (regOne!43441 r!24602)))) b!7949925))

(assert (= (and b!7949565 (is-Star!21464 (regTwo!43441 (regOne!43441 r!24602)))) b!7949926))

(assert (= (and b!7949565 (is-Union!21464 (regTwo!43441 (regOne!43441 r!24602)))) b!7949927))

(declare-fun b!7949930 () Bool)

(declare-fun e!4689808 () Bool)

(declare-fun tp!2365637 () Bool)

(assert (=> b!7949930 (= e!4689808 tp!2365637)))

(declare-fun b!7949928 () Bool)

(assert (=> b!7949928 (= e!4689808 tp_is_empty!53471)))

(assert (=> b!7949555 (= tp!2365555 e!4689808)))

(declare-fun b!7949931 () Bool)

(declare-fun tp!2365633 () Bool)

(declare-fun tp!2365635 () Bool)

(assert (=> b!7949931 (= e!4689808 (and tp!2365633 tp!2365635))))

(declare-fun b!7949929 () Bool)

(declare-fun tp!2365636 () Bool)

(declare-fun tp!2365634 () Bool)

(assert (=> b!7949929 (= e!4689808 (and tp!2365636 tp!2365634))))

(assert (= (and b!7949555 (is-ElementMatch!21464 (regOne!43440 (regOne!43441 baseR!116)))) b!7949928))

(assert (= (and b!7949555 (is-Concat!30463 (regOne!43440 (regOne!43441 baseR!116)))) b!7949929))

(assert (= (and b!7949555 (is-Star!21464 (regOne!43440 (regOne!43441 baseR!116)))) b!7949930))

(assert (= (and b!7949555 (is-Union!21464 (regOne!43440 (regOne!43441 baseR!116)))) b!7949931))

(declare-fun b!7949934 () Bool)

(declare-fun e!4689809 () Bool)

(declare-fun tp!2365642 () Bool)

(assert (=> b!7949934 (= e!4689809 tp!2365642)))

(declare-fun b!7949932 () Bool)

(assert (=> b!7949932 (= e!4689809 tp_is_empty!53471)))

(assert (=> b!7949555 (= tp!2365553 e!4689809)))

(declare-fun b!7949935 () Bool)

(declare-fun tp!2365638 () Bool)

(declare-fun tp!2365640 () Bool)

(assert (=> b!7949935 (= e!4689809 (and tp!2365638 tp!2365640))))

(declare-fun b!7949933 () Bool)

(declare-fun tp!2365641 () Bool)

(declare-fun tp!2365639 () Bool)

(assert (=> b!7949933 (= e!4689809 (and tp!2365641 tp!2365639))))

(assert (= (and b!7949555 (is-ElementMatch!21464 (regTwo!43440 (regOne!43441 baseR!116)))) b!7949932))

(assert (= (and b!7949555 (is-Concat!30463 (regTwo!43440 (regOne!43441 baseR!116)))) b!7949933))

(assert (= (and b!7949555 (is-Star!21464 (regTwo!43440 (regOne!43441 baseR!116)))) b!7949934))

(assert (= (and b!7949555 (is-Union!21464 (regTwo!43440 (regOne!43441 baseR!116)))) b!7949935))

(declare-fun b!7949938 () Bool)

(declare-fun e!4689810 () Bool)

(declare-fun tp!2365647 () Bool)

(assert (=> b!7949938 (= e!4689810 tp!2365647)))

(declare-fun b!7949936 () Bool)

(assert (=> b!7949936 (= e!4689810 tp_is_empty!53471)))

(assert (=> b!7949564 (= tp!2365566 e!4689810)))

(declare-fun b!7949939 () Bool)

(declare-fun tp!2365643 () Bool)

(declare-fun tp!2365645 () Bool)

(assert (=> b!7949939 (= e!4689810 (and tp!2365643 tp!2365645))))

(declare-fun b!7949937 () Bool)

(declare-fun tp!2365646 () Bool)

(declare-fun tp!2365644 () Bool)

(assert (=> b!7949937 (= e!4689810 (and tp!2365646 tp!2365644))))

(assert (= (and b!7949564 (is-ElementMatch!21464 (reg!21793 (regOne!43441 r!24602)))) b!7949936))

(assert (= (and b!7949564 (is-Concat!30463 (reg!21793 (regOne!43441 r!24602)))) b!7949937))

(assert (= (and b!7949564 (is-Star!21464 (reg!21793 (regOne!43441 r!24602)))) b!7949938))

(assert (= (and b!7949564 (is-Union!21464 (reg!21793 (regOne!43441 r!24602)))) b!7949939))

(declare-fun b!7949946 () Bool)

(declare-fun e!4689814 () Bool)

(declare-fun tp!2365652 () Bool)

(assert (=> b!7949946 (= e!4689814 tp!2365652)))

(declare-fun b!7949944 () Bool)

(assert (=> b!7949944 (= e!4689814 tp_is_empty!53471)))

(assert (=> b!7949573 (= tp!2365572 e!4689814)))

(declare-fun b!7949947 () Bool)

(declare-fun tp!2365648 () Bool)

(declare-fun tp!2365650 () Bool)

(assert (=> b!7949947 (= e!4689814 (and tp!2365648 tp!2365650))))

(declare-fun b!7949945 () Bool)

(declare-fun tp!2365651 () Bool)

(declare-fun tp!2365649 () Bool)

(assert (=> b!7949945 (= e!4689814 (and tp!2365651 tp!2365649))))

(assert (= (and b!7949573 (is-ElementMatch!21464 (regOne!43441 (regOne!43440 baseR!116)))) b!7949944))

(assert (= (and b!7949573 (is-Concat!30463 (regOne!43441 (regOne!43440 baseR!116)))) b!7949945))

(assert (= (and b!7949573 (is-Star!21464 (regOne!43441 (regOne!43440 baseR!116)))) b!7949946))

(assert (= (and b!7949573 (is-Union!21464 (regOne!43441 (regOne!43440 baseR!116)))) b!7949947))

(declare-fun b!7949950 () Bool)

(declare-fun e!4689815 () Bool)

(declare-fun tp!2365657 () Bool)

(assert (=> b!7949950 (= e!4689815 tp!2365657)))

(declare-fun b!7949948 () Bool)

(assert (=> b!7949948 (= e!4689815 tp_is_empty!53471)))

(assert (=> b!7949573 (= tp!2365574 e!4689815)))

(declare-fun b!7949951 () Bool)

(declare-fun tp!2365653 () Bool)

(declare-fun tp!2365655 () Bool)

(assert (=> b!7949951 (= e!4689815 (and tp!2365653 tp!2365655))))

(declare-fun b!7949949 () Bool)

(declare-fun tp!2365656 () Bool)

(declare-fun tp!2365654 () Bool)

(assert (=> b!7949949 (= e!4689815 (and tp!2365656 tp!2365654))))

(assert (= (and b!7949573 (is-ElementMatch!21464 (regTwo!43441 (regOne!43440 baseR!116)))) b!7949948))

(assert (= (and b!7949573 (is-Concat!30463 (regTwo!43441 (regOne!43440 baseR!116)))) b!7949949))

(assert (= (and b!7949573 (is-Star!21464 (regTwo!43441 (regOne!43440 baseR!116)))) b!7949950))

(assert (= (and b!7949573 (is-Union!21464 (regTwo!43441 (regOne!43440 baseR!116)))) b!7949951))

(declare-fun b!7949954 () Bool)

(declare-fun e!4689816 () Bool)

(declare-fun tp!2365662 () Bool)

(assert (=> b!7949954 (= e!4689816 tp!2365662)))

(declare-fun b!7949952 () Bool)

(assert (=> b!7949952 (= e!4689816 tp_is_empty!53471)))

(assert (=> b!7949563 (= tp!2365565 e!4689816)))

(declare-fun b!7949955 () Bool)

(declare-fun tp!2365658 () Bool)

(declare-fun tp!2365660 () Bool)

(assert (=> b!7949955 (= e!4689816 (and tp!2365658 tp!2365660))))

(declare-fun b!7949953 () Bool)

(declare-fun tp!2365661 () Bool)

(declare-fun tp!2365659 () Bool)

(assert (=> b!7949953 (= e!4689816 (and tp!2365661 tp!2365659))))

(assert (= (and b!7949563 (is-ElementMatch!21464 (regOne!43440 (regOne!43441 r!24602)))) b!7949952))

(assert (= (and b!7949563 (is-Concat!30463 (regOne!43440 (regOne!43441 r!24602)))) b!7949953))

(assert (= (and b!7949563 (is-Star!21464 (regOne!43440 (regOne!43441 r!24602)))) b!7949954))

(assert (= (and b!7949563 (is-Union!21464 (regOne!43440 (regOne!43441 r!24602)))) b!7949955))

(declare-fun b!7949958 () Bool)

(declare-fun e!4689817 () Bool)

(declare-fun tp!2365667 () Bool)

(assert (=> b!7949958 (= e!4689817 tp!2365667)))

(declare-fun b!7949956 () Bool)

(assert (=> b!7949956 (= e!4689817 tp_is_empty!53471)))

(assert (=> b!7949563 (= tp!2365563 e!4689817)))

(declare-fun b!7949959 () Bool)

(declare-fun tp!2365663 () Bool)

(declare-fun tp!2365665 () Bool)

(assert (=> b!7949959 (= e!4689817 (and tp!2365663 tp!2365665))))

(declare-fun b!7949957 () Bool)

(declare-fun tp!2365666 () Bool)

(declare-fun tp!2365664 () Bool)

(assert (=> b!7949957 (= e!4689817 (and tp!2365666 tp!2365664))))

(assert (= (and b!7949563 (is-ElementMatch!21464 (regTwo!43440 (regOne!43441 r!24602)))) b!7949956))

(assert (= (and b!7949563 (is-Concat!30463 (regTwo!43440 (regOne!43441 r!24602)))) b!7949957))

(assert (= (and b!7949563 (is-Star!21464 (regTwo!43440 (regOne!43441 r!24602)))) b!7949958))

(assert (= (and b!7949563 (is-Union!21464 (regTwo!43440 (regOne!43441 r!24602)))) b!7949959))

(declare-fun b!7949962 () Bool)

(declare-fun e!4689818 () Bool)

(declare-fun tp!2365672 () Bool)

(assert (=> b!7949962 (= e!4689818 tp!2365672)))

(declare-fun b!7949960 () Bool)

(assert (=> b!7949960 (= e!4689818 tp_is_empty!53471)))

(assert (=> b!7949572 (= tp!2365576 e!4689818)))

(declare-fun b!7949963 () Bool)

(declare-fun tp!2365668 () Bool)

(declare-fun tp!2365670 () Bool)

(assert (=> b!7949963 (= e!4689818 (and tp!2365668 tp!2365670))))

(declare-fun b!7949961 () Bool)

(declare-fun tp!2365671 () Bool)

(declare-fun tp!2365669 () Bool)

(assert (=> b!7949961 (= e!4689818 (and tp!2365671 tp!2365669))))

(assert (= (and b!7949572 (is-ElementMatch!21464 (reg!21793 (regOne!43440 baseR!116)))) b!7949960))

(assert (= (and b!7949572 (is-Concat!30463 (reg!21793 (regOne!43440 baseR!116)))) b!7949961))

(assert (= (and b!7949572 (is-Star!21464 (reg!21793 (regOne!43440 baseR!116)))) b!7949962))

(assert (= (and b!7949572 (is-Union!21464 (reg!21793 (regOne!43440 baseR!116)))) b!7949963))

(declare-fun b!7949966 () Bool)

(declare-fun e!4689819 () Bool)

(declare-fun tp!2365677 () Bool)

(assert (=> b!7949966 (= e!4689819 tp!2365677)))

(declare-fun b!7949964 () Bool)

(assert (=> b!7949964 (= e!4689819 tp_is_empty!53471)))

(assert (=> b!7949549 (= tp!2365542 e!4689819)))

(declare-fun b!7949967 () Bool)

(declare-fun tp!2365673 () Bool)

(declare-fun tp!2365675 () Bool)

(assert (=> b!7949967 (= e!4689819 (and tp!2365673 tp!2365675))))

(declare-fun b!7949965 () Bool)

(declare-fun tp!2365676 () Bool)

(declare-fun tp!2365674 () Bool)

(assert (=> b!7949965 (= e!4689819 (and tp!2365676 tp!2365674))))

(assert (= (and b!7949549 (is-ElementMatch!21464 (regOne!43441 (regOne!43440 r!24602)))) b!7949964))

(assert (= (and b!7949549 (is-Concat!30463 (regOne!43441 (regOne!43440 r!24602)))) b!7949965))

(assert (= (and b!7949549 (is-Star!21464 (regOne!43441 (regOne!43440 r!24602)))) b!7949966))

(assert (= (and b!7949549 (is-Union!21464 (regOne!43441 (regOne!43440 r!24602)))) b!7949967))

(declare-fun b!7949970 () Bool)

(declare-fun e!4689820 () Bool)

(declare-fun tp!2365682 () Bool)

(assert (=> b!7949970 (= e!4689820 tp!2365682)))

(declare-fun b!7949968 () Bool)

(assert (=> b!7949968 (= e!4689820 tp_is_empty!53471)))

(assert (=> b!7949549 (= tp!2365544 e!4689820)))

(declare-fun b!7949971 () Bool)

(declare-fun tp!2365678 () Bool)

(declare-fun tp!2365680 () Bool)

(assert (=> b!7949971 (= e!4689820 (and tp!2365678 tp!2365680))))

(declare-fun b!7949969 () Bool)

(declare-fun tp!2365681 () Bool)

(declare-fun tp!2365679 () Bool)

(assert (=> b!7949969 (= e!4689820 (and tp!2365681 tp!2365679))))

(assert (= (and b!7949549 (is-ElementMatch!21464 (regTwo!43441 (regOne!43440 r!24602)))) b!7949968))

(assert (= (and b!7949549 (is-Concat!30463 (regTwo!43441 (regOne!43440 r!24602)))) b!7949969))

(assert (= (and b!7949549 (is-Star!21464 (regTwo!43441 (regOne!43440 r!24602)))) b!7949970))

(assert (= (and b!7949549 (is-Union!21464 (regTwo!43441 (regOne!43440 r!24602)))) b!7949971))

(declare-fun b!7949974 () Bool)

(declare-fun e!4689821 () Bool)

(declare-fun tp!2365687 () Bool)

(assert (=> b!7949974 (= e!4689821 tp!2365687)))

(declare-fun b!7949972 () Bool)

(assert (=> b!7949972 (= e!4689821 tp_is_empty!53471)))

(assert (=> b!7949539 (= tp!2365535 e!4689821)))

(declare-fun b!7949975 () Bool)

(declare-fun tp!2365683 () Bool)

(declare-fun tp!2365685 () Bool)

(assert (=> b!7949975 (= e!4689821 (and tp!2365683 tp!2365685))))

(declare-fun b!7949973 () Bool)

(declare-fun tp!2365686 () Bool)

(declare-fun tp!2365684 () Bool)

(assert (=> b!7949973 (= e!4689821 (and tp!2365686 tp!2365684))))

(assert (= (and b!7949539 (is-ElementMatch!21464 (regOne!43440 (reg!21793 baseR!116)))) b!7949972))

(assert (= (and b!7949539 (is-Concat!30463 (regOne!43440 (reg!21793 baseR!116)))) b!7949973))

(assert (= (and b!7949539 (is-Star!21464 (regOne!43440 (reg!21793 baseR!116)))) b!7949974))

(assert (= (and b!7949539 (is-Union!21464 (regOne!43440 (reg!21793 baseR!116)))) b!7949975))

(declare-fun b!7949982 () Bool)

(declare-fun e!4689824 () Bool)

(declare-fun tp!2365692 () Bool)

(assert (=> b!7949982 (= e!4689824 tp!2365692)))

(declare-fun b!7949980 () Bool)

(assert (=> b!7949980 (= e!4689824 tp_is_empty!53471)))

(assert (=> b!7949539 (= tp!2365533 e!4689824)))

(declare-fun b!7949983 () Bool)

(declare-fun tp!2365688 () Bool)

(declare-fun tp!2365690 () Bool)

(assert (=> b!7949983 (= e!4689824 (and tp!2365688 tp!2365690))))

(declare-fun b!7949981 () Bool)

(declare-fun tp!2365691 () Bool)

(declare-fun tp!2365689 () Bool)

(assert (=> b!7949981 (= e!4689824 (and tp!2365691 tp!2365689))))

(assert (= (and b!7949539 (is-ElementMatch!21464 (regTwo!43440 (reg!21793 baseR!116)))) b!7949980))

(assert (= (and b!7949539 (is-Concat!30463 (regTwo!43440 (reg!21793 baseR!116)))) b!7949981))

(assert (= (and b!7949539 (is-Star!21464 (regTwo!43440 (reg!21793 baseR!116)))) b!7949982))

(assert (= (and b!7949539 (is-Union!21464 (regTwo!43440 (reg!21793 baseR!116)))) b!7949983))

(declare-fun b!7949986 () Bool)

(declare-fun e!4689825 () Bool)

(declare-fun tp!2365697 () Bool)

(assert (=> b!7949986 (= e!4689825 tp!2365697)))

(declare-fun b!7949984 () Bool)

(assert (=> b!7949984 (= e!4689825 tp_is_empty!53471)))

(assert (=> b!7949548 (= tp!2365546 e!4689825)))

(declare-fun b!7949987 () Bool)

(declare-fun tp!2365693 () Bool)

(declare-fun tp!2365695 () Bool)

(assert (=> b!7949987 (= e!4689825 (and tp!2365693 tp!2365695))))

(declare-fun b!7949985 () Bool)

(declare-fun tp!2365696 () Bool)

(declare-fun tp!2365694 () Bool)

(assert (=> b!7949985 (= e!4689825 (and tp!2365696 tp!2365694))))

(assert (= (and b!7949548 (is-ElementMatch!21464 (reg!21793 (regOne!43440 r!24602)))) b!7949984))

(assert (= (and b!7949548 (is-Concat!30463 (reg!21793 (regOne!43440 r!24602)))) b!7949985))

(assert (= (and b!7949548 (is-Star!21464 (reg!21793 (regOne!43440 r!24602)))) b!7949986))

(assert (= (and b!7949548 (is-Union!21464 (reg!21793 (regOne!43440 r!24602)))) b!7949987))

(declare-fun b!7949996 () Bool)

(declare-fun e!4689831 () Bool)

(declare-fun tp!2365702 () Bool)

(assert (=> b!7949996 (= e!4689831 tp!2365702)))

(declare-fun b!7949990 () Bool)

(assert (=> b!7949990 (= e!4689831 tp_is_empty!53471)))

(assert (=> b!7949557 (= tp!2365552 e!4689831)))

(declare-fun b!7949997 () Bool)

(declare-fun tp!2365698 () Bool)

(declare-fun tp!2365700 () Bool)

(assert (=> b!7949997 (= e!4689831 (and tp!2365698 tp!2365700))))

(declare-fun b!7949994 () Bool)

(declare-fun tp!2365701 () Bool)

(declare-fun tp!2365699 () Bool)

(assert (=> b!7949994 (= e!4689831 (and tp!2365701 tp!2365699))))

(assert (= (and b!7949557 (is-ElementMatch!21464 (regOne!43441 (regOne!43441 baseR!116)))) b!7949990))

(assert (= (and b!7949557 (is-Concat!30463 (regOne!43441 (regOne!43441 baseR!116)))) b!7949994))

(assert (= (and b!7949557 (is-Star!21464 (regOne!43441 (regOne!43441 baseR!116)))) b!7949996))

(assert (= (and b!7949557 (is-Union!21464 (regOne!43441 (regOne!43441 baseR!116)))) b!7949997))

(declare-fun b!7950004 () Bool)

(declare-fun e!4689832 () Bool)

(declare-fun tp!2365707 () Bool)

(assert (=> b!7950004 (= e!4689832 tp!2365707)))

(declare-fun b!7950002 () Bool)

(assert (=> b!7950002 (= e!4689832 tp_is_empty!53471)))

(assert (=> b!7949557 (= tp!2365554 e!4689832)))

(declare-fun b!7950005 () Bool)

(declare-fun tp!2365703 () Bool)

(declare-fun tp!2365705 () Bool)

(assert (=> b!7950005 (= e!4689832 (and tp!2365703 tp!2365705))))

(declare-fun b!7950003 () Bool)

(declare-fun tp!2365706 () Bool)

(declare-fun tp!2365704 () Bool)

(assert (=> b!7950003 (= e!4689832 (and tp!2365706 tp!2365704))))

(assert (= (and b!7949557 (is-ElementMatch!21464 (regTwo!43441 (regOne!43441 baseR!116)))) b!7950002))

(assert (= (and b!7949557 (is-Concat!30463 (regTwo!43441 (regOne!43441 baseR!116)))) b!7950003))

(assert (= (and b!7949557 (is-Star!21464 (regTwo!43441 (regOne!43441 baseR!116)))) b!7950004))

(assert (= (and b!7949557 (is-Union!21464 (regTwo!43441 (regOne!43441 baseR!116)))) b!7950005))

(declare-fun b!7950008 () Bool)

(declare-fun e!4689833 () Bool)

(declare-fun tp!2365712 () Bool)

(assert (=> b!7950008 (= e!4689833 tp!2365712)))

(declare-fun b!7950006 () Bool)

(assert (=> b!7950006 (= e!4689833 tp_is_empty!53471)))

(assert (=> b!7949547 (= tp!2365545 e!4689833)))

(declare-fun b!7950009 () Bool)

(declare-fun tp!2365708 () Bool)

(declare-fun tp!2365710 () Bool)

(assert (=> b!7950009 (= e!4689833 (and tp!2365708 tp!2365710))))

(declare-fun b!7950007 () Bool)

(declare-fun tp!2365711 () Bool)

(declare-fun tp!2365709 () Bool)

(assert (=> b!7950007 (= e!4689833 (and tp!2365711 tp!2365709))))

(assert (= (and b!7949547 (is-ElementMatch!21464 (regOne!43440 (regOne!43440 r!24602)))) b!7950006))

(assert (= (and b!7949547 (is-Concat!30463 (regOne!43440 (regOne!43440 r!24602)))) b!7950007))

(assert (= (and b!7949547 (is-Star!21464 (regOne!43440 (regOne!43440 r!24602)))) b!7950008))

(assert (= (and b!7949547 (is-Union!21464 (regOne!43440 (regOne!43440 r!24602)))) b!7950009))

(declare-fun b!7950012 () Bool)

(declare-fun e!4689834 () Bool)

(declare-fun tp!2365717 () Bool)

(assert (=> b!7950012 (= e!4689834 tp!2365717)))

(declare-fun b!7950010 () Bool)

(assert (=> b!7950010 (= e!4689834 tp_is_empty!53471)))

(assert (=> b!7949547 (= tp!2365543 e!4689834)))

(declare-fun b!7950013 () Bool)

(declare-fun tp!2365713 () Bool)

(declare-fun tp!2365715 () Bool)

(assert (=> b!7950013 (= e!4689834 (and tp!2365713 tp!2365715))))

(declare-fun b!7950011 () Bool)

(declare-fun tp!2365716 () Bool)

(declare-fun tp!2365714 () Bool)

(assert (=> b!7950011 (= e!4689834 (and tp!2365716 tp!2365714))))

(assert (= (and b!7949547 (is-ElementMatch!21464 (regTwo!43440 (regOne!43440 r!24602)))) b!7950010))

(assert (= (and b!7949547 (is-Concat!30463 (regTwo!43440 (regOne!43440 r!24602)))) b!7950011))

(assert (= (and b!7949547 (is-Star!21464 (regTwo!43440 (regOne!43440 r!24602)))) b!7950012))

(assert (= (and b!7949547 (is-Union!21464 (regTwo!43440 (regOne!43440 r!24602)))) b!7950013))

(declare-fun b!7950016 () Bool)

(declare-fun e!4689835 () Bool)

(declare-fun tp!2365722 () Bool)

(assert (=> b!7950016 (= e!4689835 tp!2365722)))

(declare-fun b!7950014 () Bool)

(assert (=> b!7950014 (= e!4689835 tp_is_empty!53471)))

(assert (=> b!7949556 (= tp!2365556 e!4689835)))

(declare-fun b!7950017 () Bool)

(declare-fun tp!2365718 () Bool)

(declare-fun tp!2365720 () Bool)

(assert (=> b!7950017 (= e!4689835 (and tp!2365718 tp!2365720))))

(declare-fun b!7950015 () Bool)

(declare-fun tp!2365721 () Bool)

(declare-fun tp!2365719 () Bool)

(assert (=> b!7950015 (= e!4689835 (and tp!2365721 tp!2365719))))

(assert (= (and b!7949556 (is-ElementMatch!21464 (reg!21793 (regOne!43441 baseR!116)))) b!7950014))

(assert (= (and b!7949556 (is-Concat!30463 (reg!21793 (regOne!43441 baseR!116)))) b!7950015))

(assert (= (and b!7949556 (is-Star!21464 (reg!21793 (regOne!43441 baseR!116)))) b!7950016))

(assert (= (and b!7949556 (is-Union!21464 (reg!21793 (regOne!43441 baseR!116)))) b!7950017))

(declare-fun b!7950020 () Bool)

(declare-fun e!4689836 () Bool)

(declare-fun tp!2365727 () Bool)

(assert (=> b!7950020 (= e!4689836 tp!2365727)))

(declare-fun b!7950018 () Bool)

(assert (=> b!7950018 (= e!4689836 tp_is_empty!53471)))

(assert (=> b!7949545 (= tp!2365537 e!4689836)))

(declare-fun b!7950021 () Bool)

(declare-fun tp!2365723 () Bool)

(declare-fun tp!2365725 () Bool)

(assert (=> b!7950021 (= e!4689836 (and tp!2365723 tp!2365725))))

(declare-fun b!7950019 () Bool)

(declare-fun tp!2365726 () Bool)

(declare-fun tp!2365724 () Bool)

(assert (=> b!7950019 (= e!4689836 (and tp!2365726 tp!2365724))))

(assert (= (and b!7949545 (is-ElementMatch!21464 (regOne!43441 (reg!21793 r!24602)))) b!7950018))

(assert (= (and b!7949545 (is-Concat!30463 (regOne!43441 (reg!21793 r!24602)))) b!7950019))

(assert (= (and b!7949545 (is-Star!21464 (regOne!43441 (reg!21793 r!24602)))) b!7950020))

(assert (= (and b!7949545 (is-Union!21464 (regOne!43441 (reg!21793 r!24602)))) b!7950021))

(declare-fun b!7950031 () Bool)

(declare-fun e!4689845 () Bool)

(declare-fun tp!2365732 () Bool)

(assert (=> b!7950031 (= e!4689845 tp!2365732)))

(declare-fun b!7950029 () Bool)

(assert (=> b!7950029 (= e!4689845 tp_is_empty!53471)))

(assert (=> b!7949545 (= tp!2365539 e!4689845)))

(declare-fun b!7950033 () Bool)

(declare-fun tp!2365728 () Bool)

(declare-fun tp!2365730 () Bool)

(assert (=> b!7950033 (= e!4689845 (and tp!2365728 tp!2365730))))

(declare-fun b!7950030 () Bool)

(declare-fun tp!2365731 () Bool)

(declare-fun tp!2365729 () Bool)

(assert (=> b!7950030 (= e!4689845 (and tp!2365731 tp!2365729))))

(assert (= (and b!7949545 (is-ElementMatch!21464 (regTwo!43441 (reg!21793 r!24602)))) b!7950029))

(assert (= (and b!7949545 (is-Concat!30463 (regTwo!43441 (reg!21793 r!24602)))) b!7950030))

(assert (= (and b!7949545 (is-Star!21464 (regTwo!43441 (reg!21793 r!24602)))) b!7950031))

(assert (= (and b!7949545 (is-Union!21464 (regTwo!43441 (reg!21793 r!24602)))) b!7950033))

(declare-fun b!7950042 () Bool)

(declare-fun e!4689846 () Bool)

(declare-fun tp!2365737 () Bool)

(assert (=> b!7950042 (= e!4689846 tp!2365737)))

(declare-fun b!7950040 () Bool)

(assert (=> b!7950040 (= e!4689846 tp_is_empty!53471)))

(assert (=> b!7949571 (= tp!2365575 e!4689846)))

(declare-fun b!7950043 () Bool)

(declare-fun tp!2365733 () Bool)

(declare-fun tp!2365735 () Bool)

(assert (=> b!7950043 (= e!4689846 (and tp!2365733 tp!2365735))))

(declare-fun b!7950041 () Bool)

(declare-fun tp!2365736 () Bool)

(declare-fun tp!2365734 () Bool)

(assert (=> b!7950041 (= e!4689846 (and tp!2365736 tp!2365734))))

(assert (= (and b!7949571 (is-ElementMatch!21464 (regOne!43440 (regOne!43440 baseR!116)))) b!7950040))

(assert (= (and b!7949571 (is-Concat!30463 (regOne!43440 (regOne!43440 baseR!116)))) b!7950041))

(assert (= (and b!7949571 (is-Star!21464 (regOne!43440 (regOne!43440 baseR!116)))) b!7950042))

(assert (= (and b!7949571 (is-Union!21464 (regOne!43440 (regOne!43440 baseR!116)))) b!7950043))

(declare-fun b!7950046 () Bool)

(declare-fun e!4689847 () Bool)

(declare-fun tp!2365742 () Bool)

(assert (=> b!7950046 (= e!4689847 tp!2365742)))

(declare-fun b!7950044 () Bool)

(assert (=> b!7950044 (= e!4689847 tp_is_empty!53471)))

(assert (=> b!7949571 (= tp!2365573 e!4689847)))

(declare-fun b!7950047 () Bool)

(declare-fun tp!2365738 () Bool)

(declare-fun tp!2365740 () Bool)

(assert (=> b!7950047 (= e!4689847 (and tp!2365738 tp!2365740))))

(declare-fun b!7950045 () Bool)

(declare-fun tp!2365741 () Bool)

(declare-fun tp!2365739 () Bool)

(assert (=> b!7950045 (= e!4689847 (and tp!2365741 tp!2365739))))

(assert (= (and b!7949571 (is-ElementMatch!21464 (regTwo!43440 (regOne!43440 baseR!116)))) b!7950044))

(assert (= (and b!7949571 (is-Concat!30463 (regTwo!43440 (regOne!43440 baseR!116)))) b!7950045))

(assert (= (and b!7949571 (is-Star!21464 (regTwo!43440 (regOne!43440 baseR!116)))) b!7950046))

(assert (= (and b!7949571 (is-Union!21464 (regTwo!43440 (regOne!43440 baseR!116)))) b!7950047))

(declare-fun b!7950050 () Bool)

(declare-fun e!4689848 () Bool)

(declare-fun tp!2365747 () Bool)

(assert (=> b!7950050 (= e!4689848 tp!2365747)))

(declare-fun b!7950048 () Bool)

(assert (=> b!7950048 (= e!4689848 tp_is_empty!53471)))

(assert (=> b!7949551 (= tp!2365550 e!4689848)))

(declare-fun b!7950051 () Bool)

(declare-fun tp!2365743 () Bool)

(declare-fun tp!2365745 () Bool)

(assert (=> b!7950051 (= e!4689848 (and tp!2365743 tp!2365745))))

(declare-fun b!7950049 () Bool)

(declare-fun tp!2365746 () Bool)

(declare-fun tp!2365744 () Bool)

(assert (=> b!7950049 (= e!4689848 (and tp!2365746 tp!2365744))))

(assert (= (and b!7949551 (is-ElementMatch!21464 (regOne!43440 (regTwo!43440 r!24602)))) b!7950048))

(assert (= (and b!7949551 (is-Concat!30463 (regOne!43440 (regTwo!43440 r!24602)))) b!7950049))

(assert (= (and b!7949551 (is-Star!21464 (regOne!43440 (regTwo!43440 r!24602)))) b!7950050))

(assert (= (and b!7949551 (is-Union!21464 (regOne!43440 (regTwo!43440 r!24602)))) b!7950051))

(declare-fun b!7950054 () Bool)

(declare-fun e!4689849 () Bool)

(declare-fun tp!2365752 () Bool)

(assert (=> b!7950054 (= e!4689849 tp!2365752)))

(declare-fun b!7950052 () Bool)

(assert (=> b!7950052 (= e!4689849 tp_is_empty!53471)))

(assert (=> b!7949551 (= tp!2365548 e!4689849)))

(declare-fun b!7950055 () Bool)

(declare-fun tp!2365748 () Bool)

(declare-fun tp!2365750 () Bool)

(assert (=> b!7950055 (= e!4689849 (and tp!2365748 tp!2365750))))

(declare-fun b!7950053 () Bool)

(declare-fun tp!2365751 () Bool)

(declare-fun tp!2365749 () Bool)

(assert (=> b!7950053 (= e!4689849 (and tp!2365751 tp!2365749))))

(assert (= (and b!7949551 (is-ElementMatch!21464 (regTwo!43440 (regTwo!43440 r!24602)))) b!7950052))

(assert (= (and b!7949551 (is-Concat!30463 (regTwo!43440 (regTwo!43440 r!24602)))) b!7950053))

(assert (= (and b!7949551 (is-Star!21464 (regTwo!43440 (regTwo!43440 r!24602)))) b!7950054))

(assert (= (and b!7949551 (is-Union!21464 (regTwo!43440 (regTwo!43440 r!24602)))) b!7950055))

(declare-fun b!7950058 () Bool)

(declare-fun e!4689850 () Bool)

(declare-fun tp!2365757 () Bool)

(assert (=> b!7950058 (= e!4689850 tp!2365757)))

(declare-fun b!7950056 () Bool)

(assert (=> b!7950056 (= e!4689850 tp_is_empty!53471)))

(assert (=> b!7949560 (= tp!2365561 e!4689850)))

(declare-fun b!7950059 () Bool)

(declare-fun tp!2365753 () Bool)

(declare-fun tp!2365755 () Bool)

(assert (=> b!7950059 (= e!4689850 (and tp!2365753 tp!2365755))))

(declare-fun b!7950057 () Bool)

(declare-fun tp!2365756 () Bool)

(declare-fun tp!2365754 () Bool)

(assert (=> b!7950057 (= e!4689850 (and tp!2365756 tp!2365754))))

(assert (= (and b!7949560 (is-ElementMatch!21464 (reg!21793 (regTwo!43441 baseR!116)))) b!7950056))

(assert (= (and b!7949560 (is-Concat!30463 (reg!21793 (regTwo!43441 baseR!116)))) b!7950057))

(assert (= (and b!7949560 (is-Star!21464 (reg!21793 (regTwo!43441 baseR!116)))) b!7950058))

(assert (= (and b!7949560 (is-Union!21464 (reg!21793 (regTwo!43441 baseR!116)))) b!7950059))

(declare-fun b!7950062 () Bool)

(declare-fun e!4689851 () Bool)

(declare-fun tp!2365762 () Bool)

(assert (=> b!7950062 (= e!4689851 tp!2365762)))

(declare-fun b!7950060 () Bool)

(assert (=> b!7950060 (= e!4689851 tp_is_empty!53471)))

(assert (=> b!7949569 (= tp!2365567 e!4689851)))

(declare-fun b!7950063 () Bool)

(declare-fun tp!2365758 () Bool)

(declare-fun tp!2365760 () Bool)

(assert (=> b!7950063 (= e!4689851 (and tp!2365758 tp!2365760))))

(declare-fun b!7950061 () Bool)

(declare-fun tp!2365761 () Bool)

(declare-fun tp!2365759 () Bool)

(assert (=> b!7950061 (= e!4689851 (and tp!2365761 tp!2365759))))

(assert (= (and b!7949569 (is-ElementMatch!21464 (regOne!43441 (regTwo!43441 r!24602)))) b!7950060))

(assert (= (and b!7949569 (is-Concat!30463 (regOne!43441 (regTwo!43441 r!24602)))) b!7950061))

(assert (= (and b!7949569 (is-Star!21464 (regOne!43441 (regTwo!43441 r!24602)))) b!7950062))

(assert (= (and b!7949569 (is-Union!21464 (regOne!43441 (regTwo!43441 r!24602)))) b!7950063))

(declare-fun b!7950066 () Bool)

(declare-fun e!4689852 () Bool)

(declare-fun tp!2365767 () Bool)

(assert (=> b!7950066 (= e!4689852 tp!2365767)))

(declare-fun b!7950064 () Bool)

(assert (=> b!7950064 (= e!4689852 tp_is_empty!53471)))

(assert (=> b!7949569 (= tp!2365569 e!4689852)))

(declare-fun b!7950067 () Bool)

(declare-fun tp!2365763 () Bool)

(declare-fun tp!2365765 () Bool)

(assert (=> b!7950067 (= e!4689852 (and tp!2365763 tp!2365765))))

(declare-fun b!7950065 () Bool)

(declare-fun tp!2365766 () Bool)

(declare-fun tp!2365764 () Bool)

(assert (=> b!7950065 (= e!4689852 (and tp!2365766 tp!2365764))))

(assert (= (and b!7949569 (is-ElementMatch!21464 (regTwo!43441 (regTwo!43441 r!24602)))) b!7950064))

(assert (= (and b!7949569 (is-Concat!30463 (regTwo!43441 (regTwo!43441 r!24602)))) b!7950065))

(assert (= (and b!7949569 (is-Star!21464 (regTwo!43441 (regTwo!43441 r!24602)))) b!7950066))

(assert (= (and b!7949569 (is-Union!21464 (regTwo!43441 (regTwo!43441 r!24602)))) b!7950067))

(declare-fun b!7950068 () Bool)

(declare-fun e!4689853 () Bool)

(declare-fun tp!2365768 () Bool)

(assert (=> b!7950068 (= e!4689853 (and tp_is_empty!53471 tp!2365768))))

(assert (=> b!7949527 (= tp!2365521 e!4689853)))

(assert (= (and b!7949527 (is-Cons!74569 (t!390436 (t!390436 input!7927)))) b!7950068))

(declare-fun b!7950071 () Bool)

(declare-fun e!4689854 () Bool)

(declare-fun tp!2365773 () Bool)

(assert (=> b!7950071 (= e!4689854 tp!2365773)))

(declare-fun b!7950069 () Bool)

(assert (=> b!7950069 (= e!4689854 tp_is_empty!53471)))

(assert (=> b!7949559 (= tp!2365560 e!4689854)))

(declare-fun b!7950072 () Bool)

(declare-fun tp!2365769 () Bool)

(declare-fun tp!2365771 () Bool)

(assert (=> b!7950072 (= e!4689854 (and tp!2365769 tp!2365771))))

(declare-fun b!7950070 () Bool)

(declare-fun tp!2365772 () Bool)

(declare-fun tp!2365770 () Bool)

(assert (=> b!7950070 (= e!4689854 (and tp!2365772 tp!2365770))))

(assert (= (and b!7949559 (is-ElementMatch!21464 (regOne!43440 (regTwo!43441 baseR!116)))) b!7950069))

(assert (= (and b!7949559 (is-Concat!30463 (regOne!43440 (regTwo!43441 baseR!116)))) b!7950070))

(assert (= (and b!7949559 (is-Star!21464 (regOne!43440 (regTwo!43441 baseR!116)))) b!7950071))

(assert (= (and b!7949559 (is-Union!21464 (regOne!43440 (regTwo!43441 baseR!116)))) b!7950072))

(declare-fun b!7950075 () Bool)

(declare-fun e!4689855 () Bool)

(declare-fun tp!2365778 () Bool)

(assert (=> b!7950075 (= e!4689855 tp!2365778)))

(declare-fun b!7950073 () Bool)

(assert (=> b!7950073 (= e!4689855 tp_is_empty!53471)))

(assert (=> b!7949559 (= tp!2365558 e!4689855)))

(declare-fun b!7950076 () Bool)

(declare-fun tp!2365774 () Bool)

(declare-fun tp!2365776 () Bool)

(assert (=> b!7950076 (= e!4689855 (and tp!2365774 tp!2365776))))

(declare-fun b!7950074 () Bool)

(declare-fun tp!2365777 () Bool)

(declare-fun tp!2365775 () Bool)

(assert (=> b!7950074 (= e!4689855 (and tp!2365777 tp!2365775))))

(assert (= (and b!7949559 (is-ElementMatch!21464 (regTwo!43440 (regTwo!43441 baseR!116)))) b!7950073))

(assert (= (and b!7949559 (is-Concat!30463 (regTwo!43440 (regTwo!43441 baseR!116)))) b!7950074))

(assert (= (and b!7949559 (is-Star!21464 (regTwo!43440 (regTwo!43441 baseR!116)))) b!7950075))

(assert (= (and b!7949559 (is-Union!21464 (regTwo!43440 (regTwo!43441 baseR!116)))) b!7950076))

(declare-fun b!7950079 () Bool)

(declare-fun e!4689856 () Bool)

(declare-fun tp!2365783 () Bool)

(assert (=> b!7950079 (= e!4689856 tp!2365783)))

(declare-fun b!7950077 () Bool)

(assert (=> b!7950077 (= e!4689856 tp_is_empty!53471)))

(assert (=> b!7949568 (= tp!2365571 e!4689856)))

(declare-fun b!7950080 () Bool)

(declare-fun tp!2365779 () Bool)

(declare-fun tp!2365781 () Bool)

(assert (=> b!7950080 (= e!4689856 (and tp!2365779 tp!2365781))))

(declare-fun b!7950078 () Bool)

(declare-fun tp!2365782 () Bool)

(declare-fun tp!2365780 () Bool)

(assert (=> b!7950078 (= e!4689856 (and tp!2365782 tp!2365780))))

(assert (= (and b!7949568 (is-ElementMatch!21464 (reg!21793 (regTwo!43441 r!24602)))) b!7950077))

(assert (= (and b!7949568 (is-Concat!30463 (reg!21793 (regTwo!43441 r!24602)))) b!7950078))

(assert (= (and b!7949568 (is-Star!21464 (reg!21793 (regTwo!43441 r!24602)))) b!7950079))

(assert (= (and b!7949568 (is-Union!21464 (reg!21793 (regTwo!43441 r!24602)))) b!7950080))

(declare-fun b!7950083 () Bool)

(declare-fun e!4689857 () Bool)

(declare-fun tp!2365788 () Bool)

(assert (=> b!7950083 (= e!4689857 tp!2365788)))

(declare-fun b!7950081 () Bool)

(assert (=> b!7950081 (= e!4689857 tp_is_empty!53471)))

(assert (=> b!7949577 (= tp!2365577 e!4689857)))

(declare-fun b!7950084 () Bool)

(declare-fun tp!2365784 () Bool)

(declare-fun tp!2365786 () Bool)

(assert (=> b!7950084 (= e!4689857 (and tp!2365784 tp!2365786))))

(declare-fun b!7950082 () Bool)

(declare-fun tp!2365787 () Bool)

(declare-fun tp!2365785 () Bool)

(assert (=> b!7950082 (= e!4689857 (and tp!2365787 tp!2365785))))

(assert (= (and b!7949577 (is-ElementMatch!21464 (regOne!43441 (regTwo!43440 baseR!116)))) b!7950081))

(assert (= (and b!7949577 (is-Concat!30463 (regOne!43441 (regTwo!43440 baseR!116)))) b!7950082))

(assert (= (and b!7949577 (is-Star!21464 (regOne!43441 (regTwo!43440 baseR!116)))) b!7950083))

(assert (= (and b!7949577 (is-Union!21464 (regOne!43441 (regTwo!43440 baseR!116)))) b!7950084))

(declare-fun b!7950087 () Bool)

(declare-fun e!4689858 () Bool)

(declare-fun tp!2365793 () Bool)

(assert (=> b!7950087 (= e!4689858 tp!2365793)))

(declare-fun b!7950085 () Bool)

(assert (=> b!7950085 (= e!4689858 tp_is_empty!53471)))

(assert (=> b!7949577 (= tp!2365579 e!4689858)))

(declare-fun b!7950088 () Bool)

(declare-fun tp!2365789 () Bool)

(declare-fun tp!2365791 () Bool)

(assert (=> b!7950088 (= e!4689858 (and tp!2365789 tp!2365791))))

(declare-fun b!7950086 () Bool)

(declare-fun tp!2365792 () Bool)

(declare-fun tp!2365790 () Bool)

(assert (=> b!7950086 (= e!4689858 (and tp!2365792 tp!2365790))))

(assert (= (and b!7949577 (is-ElementMatch!21464 (regTwo!43441 (regTwo!43440 baseR!116)))) b!7950085))

(assert (= (and b!7949577 (is-Concat!30463 (regTwo!43441 (regTwo!43440 baseR!116)))) b!7950086))

(assert (= (and b!7949577 (is-Star!21464 (regTwo!43441 (regTwo!43440 baseR!116)))) b!7950087))

(assert (= (and b!7949577 (is-Union!21464 (regTwo!43441 (regTwo!43440 baseR!116)))) b!7950088))

(declare-fun b!7950091 () Bool)

(declare-fun e!4689859 () Bool)

(declare-fun tp!2365798 () Bool)

(assert (=> b!7950091 (= e!4689859 tp!2365798)))

(declare-fun b!7950089 () Bool)

(assert (=> b!7950089 (= e!4689859 tp_is_empty!53471)))

(assert (=> b!7949544 (= tp!2365541 e!4689859)))

(declare-fun b!7950092 () Bool)

(declare-fun tp!2365794 () Bool)

(declare-fun tp!2365796 () Bool)

(assert (=> b!7950092 (= e!4689859 (and tp!2365794 tp!2365796))))

(declare-fun b!7950090 () Bool)

(declare-fun tp!2365797 () Bool)

(declare-fun tp!2365795 () Bool)

(assert (=> b!7950090 (= e!4689859 (and tp!2365797 tp!2365795))))

(assert (= (and b!7949544 (is-ElementMatch!21464 (reg!21793 (reg!21793 r!24602)))) b!7950089))

(assert (= (and b!7949544 (is-Concat!30463 (reg!21793 (reg!21793 r!24602)))) b!7950090))

(assert (= (and b!7949544 (is-Star!21464 (reg!21793 (reg!21793 r!24602)))) b!7950091))

(assert (= (and b!7949544 (is-Union!21464 (reg!21793 (reg!21793 r!24602)))) b!7950092))

(declare-fun b!7950095 () Bool)

(declare-fun e!4689860 () Bool)

(declare-fun tp!2365803 () Bool)

(assert (=> b!7950095 (= e!4689860 tp!2365803)))

(declare-fun b!7950093 () Bool)

(assert (=> b!7950093 (= e!4689860 tp_is_empty!53471)))

(assert (=> b!7949553 (= tp!2365547 e!4689860)))

(declare-fun b!7950096 () Bool)

(declare-fun tp!2365799 () Bool)

(declare-fun tp!2365801 () Bool)

(assert (=> b!7950096 (= e!4689860 (and tp!2365799 tp!2365801))))

(declare-fun b!7950094 () Bool)

(declare-fun tp!2365802 () Bool)

(declare-fun tp!2365800 () Bool)

(assert (=> b!7950094 (= e!4689860 (and tp!2365802 tp!2365800))))

(assert (= (and b!7949553 (is-ElementMatch!21464 (regOne!43441 (regTwo!43440 r!24602)))) b!7950093))

(assert (= (and b!7949553 (is-Concat!30463 (regOne!43441 (regTwo!43440 r!24602)))) b!7950094))

(assert (= (and b!7949553 (is-Star!21464 (regOne!43441 (regTwo!43440 r!24602)))) b!7950095))

(assert (= (and b!7949553 (is-Union!21464 (regOne!43441 (regTwo!43440 r!24602)))) b!7950096))

(declare-fun b!7950099 () Bool)

(declare-fun e!4689861 () Bool)

(declare-fun tp!2365808 () Bool)

(assert (=> b!7950099 (= e!4689861 tp!2365808)))

(declare-fun b!7950097 () Bool)

(assert (=> b!7950097 (= e!4689861 tp_is_empty!53471)))

(assert (=> b!7949553 (= tp!2365549 e!4689861)))

(declare-fun b!7950100 () Bool)

(declare-fun tp!2365804 () Bool)

(declare-fun tp!2365806 () Bool)

(assert (=> b!7950100 (= e!4689861 (and tp!2365804 tp!2365806))))

(declare-fun b!7950098 () Bool)

(declare-fun tp!2365807 () Bool)

(declare-fun tp!2365805 () Bool)

(assert (=> b!7950098 (= e!4689861 (and tp!2365807 tp!2365805))))

(assert (= (and b!7949553 (is-ElementMatch!21464 (regTwo!43441 (regTwo!43440 r!24602)))) b!7950097))

(assert (= (and b!7949553 (is-Concat!30463 (regTwo!43441 (regTwo!43440 r!24602)))) b!7950098))

(assert (= (and b!7949553 (is-Star!21464 (regTwo!43441 (regTwo!43440 r!24602)))) b!7950099))

(assert (= (and b!7949553 (is-Union!21464 (regTwo!43441 (regTwo!43440 r!24602)))) b!7950100))

(declare-fun b!7950103 () Bool)

(declare-fun e!4689862 () Bool)

(declare-fun tp!2365813 () Bool)

(assert (=> b!7950103 (= e!4689862 tp!2365813)))

(declare-fun b!7950101 () Bool)

(assert (=> b!7950101 (= e!4689862 tp_is_empty!53471)))

(assert (=> b!7949543 (= tp!2365540 e!4689862)))

(declare-fun b!7950104 () Bool)

(declare-fun tp!2365809 () Bool)

(declare-fun tp!2365811 () Bool)

(assert (=> b!7950104 (= e!4689862 (and tp!2365809 tp!2365811))))

(declare-fun b!7950102 () Bool)

(declare-fun tp!2365812 () Bool)

(declare-fun tp!2365810 () Bool)

(assert (=> b!7950102 (= e!4689862 (and tp!2365812 tp!2365810))))

(assert (= (and b!7949543 (is-ElementMatch!21464 (regOne!43440 (reg!21793 r!24602)))) b!7950101))

(assert (= (and b!7949543 (is-Concat!30463 (regOne!43440 (reg!21793 r!24602)))) b!7950102))

(assert (= (and b!7949543 (is-Star!21464 (regOne!43440 (reg!21793 r!24602)))) b!7950103))

(assert (= (and b!7949543 (is-Union!21464 (regOne!43440 (reg!21793 r!24602)))) b!7950104))

(declare-fun b!7950107 () Bool)

(declare-fun e!4689863 () Bool)

(declare-fun tp!2365818 () Bool)

(assert (=> b!7950107 (= e!4689863 tp!2365818)))

(declare-fun b!7950105 () Bool)

(assert (=> b!7950105 (= e!4689863 tp_is_empty!53471)))

(assert (=> b!7949543 (= tp!2365538 e!4689863)))

(declare-fun b!7950108 () Bool)

(declare-fun tp!2365814 () Bool)

(declare-fun tp!2365816 () Bool)

(assert (=> b!7950108 (= e!4689863 (and tp!2365814 tp!2365816))))

(declare-fun b!7950106 () Bool)

(declare-fun tp!2365817 () Bool)

(declare-fun tp!2365815 () Bool)

(assert (=> b!7950106 (= e!4689863 (and tp!2365817 tp!2365815))))

(assert (= (and b!7949543 (is-ElementMatch!21464 (regTwo!43440 (reg!21793 r!24602)))) b!7950105))

(assert (= (and b!7949543 (is-Concat!30463 (regTwo!43440 (reg!21793 r!24602)))) b!7950106))

(assert (= (and b!7949543 (is-Star!21464 (regTwo!43440 (reg!21793 r!24602)))) b!7950107))

(assert (= (and b!7949543 (is-Union!21464 (regTwo!43440 (reg!21793 r!24602)))) b!7950108))

(declare-fun b!7950111 () Bool)

(declare-fun e!4689864 () Bool)

(declare-fun tp!2365823 () Bool)

(assert (=> b!7950111 (= e!4689864 tp!2365823)))

(declare-fun b!7950109 () Bool)

(assert (=> b!7950109 (= e!4689864 tp_is_empty!53471)))

(assert (=> b!7949552 (= tp!2365551 e!4689864)))

(declare-fun b!7950112 () Bool)

(declare-fun tp!2365819 () Bool)

(declare-fun tp!2365821 () Bool)

(assert (=> b!7950112 (= e!4689864 (and tp!2365819 tp!2365821))))

(declare-fun b!7950110 () Bool)

(declare-fun tp!2365822 () Bool)

(declare-fun tp!2365820 () Bool)

(assert (=> b!7950110 (= e!4689864 (and tp!2365822 tp!2365820))))

(assert (= (and b!7949552 (is-ElementMatch!21464 (reg!21793 (regTwo!43440 r!24602)))) b!7950109))

(assert (= (and b!7949552 (is-Concat!30463 (reg!21793 (regTwo!43440 r!24602)))) b!7950110))

(assert (= (and b!7949552 (is-Star!21464 (reg!21793 (regTwo!43440 r!24602)))) b!7950111))

(assert (= (and b!7949552 (is-Union!21464 (reg!21793 (regTwo!43440 r!24602)))) b!7950112))

(declare-fun b!7950113 () Bool)

(declare-fun e!4689865 () Bool)

(declare-fun tp!2365824 () Bool)

(assert (=> b!7950113 (= e!4689865 (and tp_is_empty!53471 tp!2365824))))

(assert (=> b!7949578 (= tp!2365582 e!4689865)))

(assert (= (and b!7949578 (is-Cons!74569 (t!390436 (t!390436 testedP!447)))) b!7950113))

(declare-fun b!7950116 () Bool)

(declare-fun e!4689866 () Bool)

(declare-fun tp!2365829 () Bool)

(assert (=> b!7950116 (= e!4689866 tp!2365829)))

(declare-fun b!7950114 () Bool)

(assert (=> b!7950114 (= e!4689866 tp_is_empty!53471)))

(assert (=> b!7949561 (= tp!2365557 e!4689866)))

(declare-fun b!7950117 () Bool)

(declare-fun tp!2365825 () Bool)

(declare-fun tp!2365827 () Bool)

(assert (=> b!7950117 (= e!4689866 (and tp!2365825 tp!2365827))))

(declare-fun b!7950115 () Bool)

(declare-fun tp!2365828 () Bool)

(declare-fun tp!2365826 () Bool)

(assert (=> b!7950115 (= e!4689866 (and tp!2365828 tp!2365826))))

(assert (= (and b!7949561 (is-ElementMatch!21464 (regOne!43441 (regTwo!43441 baseR!116)))) b!7950114))

(assert (= (and b!7949561 (is-Concat!30463 (regOne!43441 (regTwo!43441 baseR!116)))) b!7950115))

(assert (= (and b!7949561 (is-Star!21464 (regOne!43441 (regTwo!43441 baseR!116)))) b!7950116))

(assert (= (and b!7949561 (is-Union!21464 (regOne!43441 (regTwo!43441 baseR!116)))) b!7950117))

(declare-fun b!7950120 () Bool)

(declare-fun e!4689867 () Bool)

(declare-fun tp!2365834 () Bool)

(assert (=> b!7950120 (= e!4689867 tp!2365834)))

(declare-fun b!7950118 () Bool)

(assert (=> b!7950118 (= e!4689867 tp_is_empty!53471)))

(assert (=> b!7949561 (= tp!2365559 e!4689867)))

(declare-fun b!7950121 () Bool)

(declare-fun tp!2365830 () Bool)

(declare-fun tp!2365832 () Bool)

(assert (=> b!7950121 (= e!4689867 (and tp!2365830 tp!2365832))))

(declare-fun b!7950119 () Bool)

(declare-fun tp!2365833 () Bool)

(declare-fun tp!2365831 () Bool)

(assert (=> b!7950119 (= e!4689867 (and tp!2365833 tp!2365831))))

(assert (= (and b!7949561 (is-ElementMatch!21464 (regTwo!43441 (regTwo!43441 baseR!116)))) b!7950118))

(assert (= (and b!7949561 (is-Concat!30463 (regTwo!43441 (regTwo!43441 baseR!116)))) b!7950119))

(assert (= (and b!7949561 (is-Star!21464 (regTwo!43441 (regTwo!43441 baseR!116)))) b!7950120))

(assert (= (and b!7949561 (is-Union!21464 (regTwo!43441 (regTwo!43441 baseR!116)))) b!7950121))

(push 1)

(assert (not b!7950051))

(assert (not b!7949804))

(assert (not b!7949760))

(assert (not b!7950113))

(assert (not b!7949931))

(assert (not d!2375891))

(assert (not b!7949916))

(assert (not b!7950079))

(assert (not b!7950084))

(assert (not b!7950091))

(assert (not b!7950076))

(assert (not bm!736879))

(assert (not b!7950041))

(assert (not b!7950003))

(assert (not b!7949752))

(assert (not b!7950111))

(assert (not b!7950104))

(assert (not b!7949632))

(assert (not b!7949967))

(assert (not b!7949949))

(assert (not b!7949867))

(assert (not b!7950087))

(assert (not b!7949714))

(assert (not b!7949946))

(assert (not b!7949584))

(assert (not b!7949953))

(assert (not b!7949768))

(assert (not b!7949620))

(assert (not bm!736878))

(assert (not b!7950082))

(assert (not d!2375937))

(assert (not b!7949765))

(assert (not b!7950054))

(assert (not b!7949945))

(assert (not b!7949766))

(assert (not b!7950046))

(assert (not bm!736894))

(assert (not b!7949888))

(assert (not b!7950049))

(assert (not b!7949727))

(assert (not b!7949761))

(assert (not b!7949902))

(assert (not b!7949839))

(assert (not b!7949665))

(assert (not b!7949987))

(assert (not b!7949624))

(assert (not b!7950062))

(assert (not b!7950050))

(assert (not b!7949753))

(assert (not b!7949728))

(assert (not b!7949878))

(assert (not b!7949812))

(assert (not b!7949638))

(assert (not b!7950005))

(assert (not b!7950033))

(assert (not b!7949938))

(assert (not d!2375967))

(assert (not b!7950031))

(assert (not b!7950121))

(assert (not b!7949898))

(assert (not b!7949975))

(assert (not b!7949986))

(assert (not b!7950066))

(assert (not b!7949890))

(assert (not d!2375883))

(assert (not b!7949983))

(assert (not b!7950059))

(assert (not b!7950055))

(assert (not b!7950065))

(assert (not d!2375887))

(assert (not b!7950096))

(assert (not b!7949935))

(assert (not b!7949996))

(assert (not b!7950074))

(assert (not b!7950042))

(assert (not b!7950070))

(assert (not bm!736874))

(assert (not b!7949985))

(assert (not b!7949636))

(assert (not b!7950008))

(assert (not b!7949858))

(assert (not b!7950106))

(assert (not b!7949782))

(assert (not bm!736877))

(assert (not b!7949889))

(assert (not b!7950120))

(assert (not b!7949817))

(assert (not b!7949904))

(assert (not b!7950116))

(assert (not b!7949815))

(assert (not b!7949933))

(assert (not b!7949961))

(assert (not b!7950030))

(assert (not d!2376003))

(assert (not b!7949973))

(assert (not bm!736872))

(assert (not b!7950015))

(assert (not b!7949877))

(assert (not bm!736869))

(assert (not b!7950103))

(assert (not b!7949819))

(assert (not b!7950068))

(assert (not d!2375989))

(assert (not b!7949958))

(assert (not b!7950107))

(assert (not b!7950043))

(assert (not b!7949937))

(assert (not bm!736908))

(assert (not b!7950012))

(assert (not b!7949771))

(assert (not bm!736885))

(assert (not b!7950017))

(assert (not b!7950117))

(assert (not d!2375895))

(assert (not b!7949764))

(assert (not b!7950086))

(assert (not bm!736873))

(assert (not b!7950053))

(assert (not b!7949648))

(assert (not b!7950108))

(assert (not b!7949954))

(assert (not b!7949820))

(assert (not b!7950075))

(assert (not b!7949872))

(assert (not b!7950083))

(assert (not b!7949905))

(assert (not b!7949871))

(assert (not b!7950100))

(assert (not b!7949736))

(assert (not b!7949882))

(assert (not b!7949913))

(assert (not b!7950094))

(assert (not b!7950102))

(assert (not b!7950112))

(assert (not b!7949859))

(assert (not b!7949965))

(assert (not b!7949925))

(assert (not b!7949921))

(assert (not bm!736920))

(assert (not b!7950098))

(assert (not b!7950019))

(assert (not b!7950061))

(assert (not bm!736870))

(assert (not bm!736884))

(assert (not b!7950020))

(assert (not b!7949634))

(assert (not b!7950110))

(assert (not d!2375889))

(assert (not b!7950013))

(assert (not b!7949870))

(assert (not b!7949915))

(assert (not b!7949866))

(assert (not d!2375929))

(assert (not b!7949868))

(assert (not b!7949951))

(assert (not b!7949939))

(assert (not b!7950067))

(assert (not d!2375983))

(assert (not b!7949981))

(assert (not b!7949974))

(assert (not b!7949923))

(assert (not b!7949612))

(assert (not b!7950058))

(assert (not b!7949922))

(assert (not bm!736921))

(assert (not b!7949969))

(assert (not d!2375939))

(assert (not b!7949816))

(assert (not b!7950011))

(assert (not b!7950095))

(assert (not b!7949957))

(assert (not b!7949770))

(assert (not b!7950063))

(assert (not b!7949876))

(assert (not b!7949966))

(assert (not b!7950047))

(assert (not bm!736866))

(assert (not b!7949735))

(assert (not b!7949971))

(assert (not b!7949794))

(assert (not b!7949963))

(assert (not b!7949884))

(assert (not b!7949580))

(assert (not b!7950021))

(assert (not b!7949994))

(assert (not b!7949773))

(assert (not b!7949930))

(assert (not b!7949997))

(assert (not bm!736896))

(assert (not b!7949926))

(assert (not bm!736907))

(assert (not d!2375873))

(assert (not d!2375997))

(assert (not b!7949959))

(assert (not bm!736876))

(assert (not b!7950045))

(assert (not b!7949585))

(assert (not b!7950119))

(assert (not b!7949772))

(assert (not b!7949897))

(assert (not b!7949947))

(assert (not b!7949950))

(assert (not b!7949970))

(assert (not bm!736865))

(assert (not b!7949934))

(assert (not d!2375901))

(assert (not b!7949901))

(assert (not b!7949929))

(assert (not b!7949756))

(assert (not b!7949582))

(assert (not b!7950004))

(assert (not b!7950016))

(assert (not d!2376015))

(assert (not d!2375987))

(assert (not b!7950092))

(assert (not bm!736893))

(assert (not d!2375985))

(assert (not b!7949643))

(assert (not b!7950099))

(assert (not b!7950090))

(assert (not b!7950009))

(assert (not b!7950007))

(assert (not d!2375949))

(assert (not d!2375953))

(assert (not b!7949962))

(assert (not b!7949587))

(assert (not b!7950115))

(assert (not b!7949982))

(assert (not b!7949883))

(assert tp_is_empty!53471)

(assert (not b!7949896))

(assert (not b!7949927))

(assert (not b!7949900))

(assert (not b!7950088))

(assert (not b!7950072))

(assert (not b!7950071))

(assert (not b!7950078))

(assert (not bm!736875))

(assert (not b!7950080))

(assert (not b!7949906))

(assert (not b!7949757))

(assert (not b!7950057))

(assert (not bm!736897))

(assert (not b!7949762))

(assert (not b!7949955))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

