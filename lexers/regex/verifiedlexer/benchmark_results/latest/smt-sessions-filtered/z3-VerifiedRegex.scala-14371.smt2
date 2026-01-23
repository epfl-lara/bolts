; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749716 () Bool)

(assert start!749716)

(declare-fun b!7943551 () Bool)

(declare-fun e!4686796 () Bool)

(declare-fun tp!2362410 () Bool)

(declare-fun tp!2362414 () Bool)

(assert (=> b!7943551 (= e!4686796 (and tp!2362410 tp!2362414))))

(declare-fun b!7943552 () Bool)

(declare-fun e!4686792 () Bool)

(declare-fun tp_is_empty!53389 () Bool)

(assert (=> b!7943552 (= e!4686792 tp_is_empty!53389)))

(declare-fun b!7943553 () Bool)

(declare-fun tp!2362406 () Bool)

(declare-fun tp!2362408 () Bool)

(assert (=> b!7943553 (= e!4686792 (and tp!2362406 tp!2362408))))

(declare-fun b!7943554 () Bool)

(declare-fun res!3150959 () Bool)

(declare-fun e!4686797 () Bool)

(assert (=> b!7943554 (=> (not res!3150959) (not e!4686797))))

(declare-datatypes ((C!43184 0))(
  ( (C!43185 (val!32140 Int)) )
))
(declare-datatypes ((List!74652 0))(
  ( (Nil!74528) (Cons!74528 (h!80976 C!43184) (t!390395 List!74652)) )
))
(declare-fun testedP!447 () List!74652)

(declare-fun input!7927 () List!74652)

(declare-fun isPrefix!6523 (List!74652 List!74652) Bool)

(assert (=> b!7943554 (= res!3150959 (isPrefix!6523 testedP!447 input!7927))))

(declare-fun b!7943556 () Bool)

(declare-fun e!4686793 () Bool)

(declare-fun tp!2362412 () Bool)

(assert (=> b!7943556 (= e!4686793 (and tp_is_empty!53389 tp!2362412))))

(declare-fun b!7943557 () Bool)

(declare-fun res!3150958 () Bool)

(assert (=> b!7943557 (=> (not res!3150958) (not e!4686797))))

(declare-datatypes ((Regex!21423 0))(
  ( (ElementMatch!21423 (c!1459292 C!43184)) (Concat!30422 (regOne!43358 Regex!21423) (regTwo!43358 Regex!21423)) (EmptyExpr!21423) (Star!21423 (reg!21752 Regex!21423)) (EmptyLang!21423) (Union!21423 (regOne!43359 Regex!21423) (regTwo!43359 Regex!21423)) )
))
(declare-fun baseR!116 () Regex!21423)

(declare-fun r!24602 () Regex!21423)

(declare-fun derivative!609 (Regex!21423 List!74652) Regex!21423)

(assert (=> b!7943557 (= res!3150958 (= (derivative!609 baseR!116 testedP!447) r!24602))))

(declare-fun b!7943558 () Bool)

(declare-fun tp!2362404 () Bool)

(assert (=> b!7943558 (= e!4686792 tp!2362404)))

(declare-fun b!7943559 () Bool)

(declare-fun tp!2362409 () Bool)

(declare-fun tp!2362403 () Bool)

(assert (=> b!7943559 (= e!4686792 (and tp!2362409 tp!2362403))))

(declare-fun b!7943560 () Bool)

(declare-fun e!4686795 () Bool)

(declare-fun lt!2697202 () Int)

(declare-fun lt!2697201 () Int)

(assert (=> b!7943560 (= e!4686795 (< lt!2697202 lt!2697201))))

(declare-fun b!7943561 () Bool)

(declare-fun tp!2362405 () Bool)

(assert (=> b!7943561 (= e!4686796 tp!2362405)))

(declare-fun b!7943562 () Bool)

(assert (=> b!7943562 (= e!4686796 tp_is_empty!53389)))

(declare-fun b!7943555 () Bool)

(assert (=> b!7943555 (= e!4686797 e!4686795)))

(declare-fun res!3150960 () Bool)

(assert (=> b!7943555 (=> (not res!3150960) (not e!4686795))))

(declare-fun lt!2697203 () List!74652)

(declare-fun isEmpty!42829 (List!74652) Bool)

(declare-datatypes ((tuple2!70508 0))(
  ( (tuple2!70509 (_1!38557 List!74652) (_2!38557 List!74652)) )
))
(declare-fun findLongestMatchInner!2204 (Regex!21423 List!74652 Int List!74652 List!74652 Int) tuple2!70508)

(assert (=> b!7943555 (= res!3150960 (isEmpty!42829 (_1!38557 (findLongestMatchInner!2204 r!24602 testedP!447 lt!2697201 lt!2697203 input!7927 lt!2697202))))))

(declare-fun size!43359 (List!74652) Int)

(assert (=> b!7943555 (= lt!2697202 (size!43359 input!7927))))

(declare-fun getSuffix!3726 (List!74652 List!74652) List!74652)

(assert (=> b!7943555 (= lt!2697203 (getSuffix!3726 input!7927 testedP!447))))

(assert (=> b!7943555 (= lt!2697201 (size!43359 testedP!447))))

(declare-fun res!3150957 () Bool)

(assert (=> start!749716 (=> (not res!3150957) (not e!4686797))))

(declare-fun validRegex!11727 (Regex!21423) Bool)

(assert (=> start!749716 (= res!3150957 (validRegex!11727 baseR!116))))

(assert (=> start!749716 e!4686797))

(assert (=> start!749716 e!4686792))

(assert (=> start!749716 e!4686793))

(declare-fun e!4686794 () Bool)

(assert (=> start!749716 e!4686794))

(assert (=> start!749716 e!4686796))

(declare-fun b!7943563 () Bool)

(declare-fun tp!2362411 () Bool)

(declare-fun tp!2362407 () Bool)

(assert (=> b!7943563 (= e!4686796 (and tp!2362411 tp!2362407))))

(declare-fun b!7943564 () Bool)

(declare-fun tp!2362413 () Bool)

(assert (=> b!7943564 (= e!4686794 (and tp_is_empty!53389 tp!2362413))))

(assert (= (and start!749716 res!3150957) b!7943554))

(assert (= (and b!7943554 res!3150959) b!7943557))

(assert (= (and b!7943557 res!3150958) b!7943555))

(assert (= (and b!7943555 res!3150960) b!7943560))

(get-info :version)

(assert (= (and start!749716 ((_ is ElementMatch!21423) baseR!116)) b!7943552))

(assert (= (and start!749716 ((_ is Concat!30422) baseR!116)) b!7943559))

(assert (= (and start!749716 ((_ is Star!21423) baseR!116)) b!7943558))

(assert (= (and start!749716 ((_ is Union!21423) baseR!116)) b!7943553))

(assert (= (and start!749716 ((_ is Cons!74528) testedP!447)) b!7943556))

(assert (= (and start!749716 ((_ is Cons!74528) input!7927)) b!7943564))

(assert (= (and start!749716 ((_ is ElementMatch!21423) r!24602)) b!7943562))

(assert (= (and start!749716 ((_ is Concat!30422) r!24602)) b!7943551))

(assert (= (and start!749716 ((_ is Star!21423) r!24602)) b!7943561))

(assert (= (and start!749716 ((_ is Union!21423) r!24602)) b!7943563))

(declare-fun m!8331130 () Bool)

(assert (=> b!7943554 m!8331130))

(declare-fun m!8331132 () Bool)

(assert (=> b!7943557 m!8331132))

(declare-fun m!8331134 () Bool)

(assert (=> b!7943555 m!8331134))

(declare-fun m!8331136 () Bool)

(assert (=> b!7943555 m!8331136))

(declare-fun m!8331138 () Bool)

(assert (=> b!7943555 m!8331138))

(declare-fun m!8331140 () Bool)

(assert (=> b!7943555 m!8331140))

(declare-fun m!8331142 () Bool)

(assert (=> b!7943555 m!8331142))

(declare-fun m!8331144 () Bool)

(assert (=> start!749716 m!8331144))

(check-sat (not b!7943557) (not b!7943555) (not b!7943558) (not b!7943553) (not b!7943556) tp_is_empty!53389 (not b!7943564) (not b!7943563) (not b!7943561) (not b!7943551) (not b!7943559) (not start!749716) (not b!7943554))
(check-sat)
(get-model)

(declare-fun d!2375268 () Bool)

(declare-fun e!4686807 () Bool)

(assert (=> d!2375268 e!4686807))

(declare-fun res!3150971 () Bool)

(assert (=> d!2375268 (=> res!3150971 e!4686807)))

(declare-fun lt!2697209 () Bool)

(assert (=> d!2375268 (= res!3150971 (not lt!2697209))))

(declare-fun e!4686808 () Bool)

(assert (=> d!2375268 (= lt!2697209 e!4686808)))

(declare-fun res!3150970 () Bool)

(assert (=> d!2375268 (=> res!3150970 e!4686808)))

(assert (=> d!2375268 (= res!3150970 ((_ is Nil!74528) testedP!447))))

(assert (=> d!2375268 (= (isPrefix!6523 testedP!447 input!7927) lt!2697209)))

(declare-fun b!7943582 () Bool)

(assert (=> b!7943582 (= e!4686807 (>= (size!43359 input!7927) (size!43359 testedP!447)))))

(declare-fun b!7943581 () Bool)

(declare-fun e!4686809 () Bool)

(declare-fun tail!15741 (List!74652) List!74652)

(assert (=> b!7943581 (= e!4686809 (isPrefix!6523 (tail!15741 testedP!447) (tail!15741 input!7927)))))

(declare-fun b!7943579 () Bool)

(assert (=> b!7943579 (= e!4686808 e!4686809)))

(declare-fun res!3150969 () Bool)

(assert (=> b!7943579 (=> (not res!3150969) (not e!4686809))))

(assert (=> b!7943579 (= res!3150969 (not ((_ is Nil!74528) input!7927)))))

(declare-fun b!7943580 () Bool)

(declare-fun res!3150972 () Bool)

(assert (=> b!7943580 (=> (not res!3150972) (not e!4686809))))

(declare-fun head!16198 (List!74652) C!43184)

(assert (=> b!7943580 (= res!3150972 (= (head!16198 testedP!447) (head!16198 input!7927)))))

(assert (= (and d!2375268 (not res!3150970)) b!7943579))

(assert (= (and b!7943579 res!3150969) b!7943580))

(assert (= (and b!7943580 res!3150972) b!7943581))

(assert (= (and d!2375268 (not res!3150971)) b!7943582))

(assert (=> b!7943582 m!8331138))

(assert (=> b!7943582 m!8331136))

(declare-fun m!8331148 () Bool)

(assert (=> b!7943581 m!8331148))

(declare-fun m!8331150 () Bool)

(assert (=> b!7943581 m!8331150))

(assert (=> b!7943581 m!8331148))

(assert (=> b!7943581 m!8331150))

(declare-fun m!8331152 () Bool)

(assert (=> b!7943581 m!8331152))

(declare-fun m!8331154 () Bool)

(assert (=> b!7943580 m!8331154))

(declare-fun m!8331156 () Bool)

(assert (=> b!7943580 m!8331156))

(assert (=> b!7943554 d!2375268))

(declare-fun d!2375274 () Bool)

(declare-fun lt!2697212 () Int)

(assert (=> d!2375274 (>= lt!2697212 0)))

(declare-fun e!4686812 () Int)

(assert (=> d!2375274 (= lt!2697212 e!4686812)))

(declare-fun c!1459298 () Bool)

(assert (=> d!2375274 (= c!1459298 ((_ is Nil!74528) input!7927))))

(assert (=> d!2375274 (= (size!43359 input!7927) lt!2697212)))

(declare-fun b!7943587 () Bool)

(assert (=> b!7943587 (= e!4686812 0)))

(declare-fun b!7943588 () Bool)

(assert (=> b!7943588 (= e!4686812 (+ 1 (size!43359 (t!390395 input!7927))))))

(assert (= (and d!2375274 c!1459298) b!7943587))

(assert (= (and d!2375274 (not c!1459298)) b!7943588))

(declare-fun m!8331158 () Bool)

(assert (=> b!7943588 m!8331158))

(assert (=> b!7943555 d!2375274))

(declare-fun d!2375276 () Bool)

(assert (=> d!2375276 (= (isEmpty!42829 (_1!38557 (findLongestMatchInner!2204 r!24602 testedP!447 lt!2697201 lt!2697203 input!7927 lt!2697202))) ((_ is Nil!74528) (_1!38557 (findLongestMatchInner!2204 r!24602 testedP!447 lt!2697201 lt!2697203 input!7927 lt!2697202))))))

(assert (=> b!7943555 d!2375276))

(declare-fun d!2375278 () Bool)

(declare-fun lt!2697215 () List!74652)

(declare-fun ++!18310 (List!74652 List!74652) List!74652)

(assert (=> d!2375278 (= (++!18310 testedP!447 lt!2697215) input!7927)))

(declare-fun e!4686815 () List!74652)

(assert (=> d!2375278 (= lt!2697215 e!4686815)))

(declare-fun c!1459301 () Bool)

(assert (=> d!2375278 (= c!1459301 ((_ is Cons!74528) testedP!447))))

(assert (=> d!2375278 (>= (size!43359 input!7927) (size!43359 testedP!447))))

(assert (=> d!2375278 (= (getSuffix!3726 input!7927 testedP!447) lt!2697215)))

(declare-fun b!7943593 () Bool)

(assert (=> b!7943593 (= e!4686815 (getSuffix!3726 (tail!15741 input!7927) (t!390395 testedP!447)))))

(declare-fun b!7943594 () Bool)

(assert (=> b!7943594 (= e!4686815 input!7927)))

(assert (= (and d!2375278 c!1459301) b!7943593))

(assert (= (and d!2375278 (not c!1459301)) b!7943594))

(declare-fun m!8331160 () Bool)

(assert (=> d!2375278 m!8331160))

(assert (=> d!2375278 m!8331138))

(assert (=> d!2375278 m!8331136))

(assert (=> b!7943593 m!8331150))

(assert (=> b!7943593 m!8331150))

(declare-fun m!8331162 () Bool)

(assert (=> b!7943593 m!8331162))

(assert (=> b!7943555 d!2375278))

(declare-fun d!2375280 () Bool)

(declare-fun lt!2697216 () Int)

(assert (=> d!2375280 (>= lt!2697216 0)))

(declare-fun e!4686816 () Int)

(assert (=> d!2375280 (= lt!2697216 e!4686816)))

(declare-fun c!1459302 () Bool)

(assert (=> d!2375280 (= c!1459302 ((_ is Nil!74528) testedP!447))))

(assert (=> d!2375280 (= (size!43359 testedP!447) lt!2697216)))

(declare-fun b!7943595 () Bool)

(assert (=> b!7943595 (= e!4686816 0)))

(declare-fun b!7943596 () Bool)

(assert (=> b!7943596 (= e!4686816 (+ 1 (size!43359 (t!390395 testedP!447))))))

(assert (= (and d!2375280 c!1459302) b!7943595))

(assert (= (and d!2375280 (not c!1459302)) b!7943596))

(declare-fun m!8331164 () Bool)

(assert (=> b!7943596 m!8331164))

(assert (=> b!7943555 d!2375280))

(declare-fun bm!736178 () Bool)

(declare-fun call!736184 () Bool)

(assert (=> bm!736178 (= call!736184 (isPrefix!6523 input!7927 input!7927))))

(declare-fun b!7943667 () Bool)

(declare-datatypes ((Unit!169670 0))(
  ( (Unit!169671) )
))
(declare-fun e!4686861 () Unit!169670)

(declare-fun Unit!169672 () Unit!169670)

(assert (=> b!7943667 (= e!4686861 Unit!169672)))

(declare-fun lt!2697358 () Unit!169670)

(declare-fun call!736190 () Unit!169670)

(assert (=> b!7943667 (= lt!2697358 call!736190)))

(assert (=> b!7943667 call!736184))

(declare-fun lt!2697362 () Unit!169670)

(assert (=> b!7943667 (= lt!2697362 lt!2697358)))

(declare-fun lt!2697375 () Unit!169670)

(declare-fun call!736183 () Unit!169670)

(assert (=> b!7943667 (= lt!2697375 call!736183)))

(assert (=> b!7943667 (= input!7927 testedP!447)))

(declare-fun lt!2697376 () Unit!169670)

(assert (=> b!7943667 (= lt!2697376 lt!2697375)))

(assert (=> b!7943667 false))

(declare-fun bm!736179 () Bool)

(declare-fun lemmaIsPrefixRefl!4008 (List!74652 List!74652) Unit!169670)

(assert (=> bm!736179 (= call!736190 (lemmaIsPrefixRefl!4008 input!7927 input!7927))))

(declare-fun bm!736180 () Bool)

(declare-fun call!736188 () C!43184)

(assert (=> bm!736180 (= call!736188 (head!16198 lt!2697203))))

(declare-fun bm!736181 () Bool)

(declare-fun call!736186 () List!74652)

(declare-fun call!736187 () Regex!21423)

(declare-fun call!736185 () tuple2!70508)

(declare-fun lt!2697377 () List!74652)

(assert (=> bm!736181 (= call!736185 (findLongestMatchInner!2204 call!736187 lt!2697377 (+ lt!2697201 1) call!736186 input!7927 lt!2697202))))

(declare-fun b!7943668 () Bool)

(declare-fun e!4686860 () tuple2!70508)

(assert (=> b!7943668 (= e!4686860 (tuple2!70509 testedP!447 lt!2697203))))

(declare-fun bm!736182 () Bool)

(declare-fun call!736189 () Bool)

(declare-fun nullable!9539 (Regex!21423) Bool)

(assert (=> bm!736182 (= call!736189 (nullable!9539 r!24602))))

(declare-fun b!7943669 () Bool)

(declare-fun e!4686859 () tuple2!70508)

(assert (=> b!7943669 (= e!4686859 (tuple2!70509 Nil!74528 input!7927))))

(declare-fun bm!736183 () Bool)

(declare-fun derivativeStep!6477 (Regex!21423 C!43184) Regex!21423)

(assert (=> bm!736183 (= call!736187 (derivativeStep!6477 r!24602 call!736188))))

(declare-fun b!7943670 () Bool)

(declare-fun lt!2697366 () tuple2!70508)

(assert (=> b!7943670 (= e!4686860 lt!2697366)))

(declare-fun b!7943671 () Bool)

(declare-fun e!4686858 () Bool)

(declare-fun e!4686864 () Bool)

(assert (=> b!7943671 (= e!4686858 e!4686864)))

(declare-fun res!3150983 () Bool)

(assert (=> b!7943671 (=> res!3150983 e!4686864)))

(declare-fun lt!2697368 () tuple2!70508)

(assert (=> b!7943671 (= res!3150983 (isEmpty!42829 (_1!38557 lt!2697368)))))

(declare-fun b!7943672 () Bool)

(declare-fun e!4686863 () tuple2!70508)

(assert (=> b!7943672 (= e!4686863 call!736185)))

(declare-fun b!7943673 () Bool)

(declare-fun e!4686857 () tuple2!70508)

(assert (=> b!7943673 (= e!4686857 (tuple2!70509 testedP!447 Nil!74528))))

(declare-fun b!7943674 () Bool)

(declare-fun c!1459334 () Bool)

(assert (=> b!7943674 (= c!1459334 call!736189)))

(declare-fun lt!2697382 () Unit!169670)

(declare-fun lt!2697371 () Unit!169670)

(assert (=> b!7943674 (= lt!2697382 lt!2697371)))

(assert (=> b!7943674 (= input!7927 testedP!447)))

(assert (=> b!7943674 (= lt!2697371 call!736183)))

(declare-fun lt!2697374 () Unit!169670)

(declare-fun lt!2697364 () Unit!169670)

(assert (=> b!7943674 (= lt!2697374 lt!2697364)))

(assert (=> b!7943674 call!736184))

(assert (=> b!7943674 (= lt!2697364 call!736190)))

(declare-fun e!4686862 () tuple2!70508)

(assert (=> b!7943674 (= e!4686862 e!4686857)))

(declare-fun b!7943675 () Bool)

(declare-fun Unit!169674 () Unit!169670)

(assert (=> b!7943675 (= e!4686861 Unit!169674)))

(declare-fun b!7943676 () Bool)

(assert (=> b!7943676 (= e!4686864 (>= (size!43359 (_1!38557 lt!2697368)) (size!43359 testedP!447)))))

(declare-fun b!7943677 () Bool)

(assert (=> b!7943677 (= e!4686857 (tuple2!70509 Nil!74528 input!7927))))

(declare-fun bm!736185 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1591 (List!74652 List!74652 List!74652) Unit!169670)

(assert (=> bm!736185 (= call!736183 (lemmaIsPrefixSameLengthThenSameList!1591 input!7927 testedP!447 input!7927))))

(declare-fun b!7943678 () Bool)

(assert (=> b!7943678 (= e!4686863 e!4686860)))

(assert (=> b!7943678 (= lt!2697366 call!736185)))

(declare-fun c!1459335 () Bool)

(assert (=> b!7943678 (= c!1459335 (isEmpty!42829 (_1!38557 lt!2697366)))))

(declare-fun bm!736184 () Bool)

(assert (=> bm!736184 (= call!736186 (tail!15741 lt!2697203))))

(declare-fun d!2375282 () Bool)

(assert (=> d!2375282 e!4686858))

(declare-fun res!3150984 () Bool)

(assert (=> d!2375282 (=> (not res!3150984) (not e!4686858))))

(assert (=> d!2375282 (= res!3150984 (= (++!18310 (_1!38557 lt!2697368) (_2!38557 lt!2697368)) input!7927))))

(assert (=> d!2375282 (= lt!2697368 e!4686859)))

(declare-fun c!1459338 () Bool)

(declare-fun lostCause!1942 (Regex!21423) Bool)

(assert (=> d!2375282 (= c!1459338 (lostCause!1942 r!24602))))

(declare-fun lt!2697360 () Unit!169670)

(declare-fun Unit!169677 () Unit!169670)

(assert (=> d!2375282 (= lt!2697360 Unit!169677)))

(assert (=> d!2375282 (= (getSuffix!3726 input!7927 testedP!447) lt!2697203)))

(declare-fun lt!2697379 () Unit!169670)

(declare-fun lt!2697363 () Unit!169670)

(assert (=> d!2375282 (= lt!2697379 lt!2697363)))

(declare-fun lt!2697359 () List!74652)

(assert (=> d!2375282 (= lt!2697203 lt!2697359)))

(declare-fun lemmaSamePrefixThenSameSuffix!2958 (List!74652 List!74652 List!74652 List!74652 List!74652) Unit!169670)

(assert (=> d!2375282 (= lt!2697363 (lemmaSamePrefixThenSameSuffix!2958 testedP!447 lt!2697203 testedP!447 lt!2697359 input!7927))))

(assert (=> d!2375282 (= lt!2697359 (getSuffix!3726 input!7927 testedP!447))))

(declare-fun lt!2697370 () Unit!169670)

(declare-fun lt!2697372 () Unit!169670)

(assert (=> d!2375282 (= lt!2697370 lt!2697372)))

(assert (=> d!2375282 (isPrefix!6523 testedP!447 (++!18310 testedP!447 lt!2697203))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3820 (List!74652 List!74652) Unit!169670)

(assert (=> d!2375282 (= lt!2697372 (lemmaConcatTwoListThenFirstIsPrefix!3820 testedP!447 lt!2697203))))

(assert (=> d!2375282 (validRegex!11727 r!24602)))

(assert (=> d!2375282 (= (findLongestMatchInner!2204 r!24602 testedP!447 lt!2697201 lt!2697203 input!7927 lt!2697202) lt!2697368)))

(declare-fun b!7943679 () Bool)

(assert (=> b!7943679 (= e!4686859 e!4686862)))

(declare-fun c!1459333 () Bool)

(assert (=> b!7943679 (= c!1459333 (= lt!2697201 lt!2697202))))

(declare-fun b!7943680 () Bool)

(declare-fun c!1459336 () Bool)

(assert (=> b!7943680 (= c!1459336 call!736189)))

(declare-fun lt!2697367 () Unit!169670)

(declare-fun lt!2697381 () Unit!169670)

(assert (=> b!7943680 (= lt!2697367 lt!2697381)))

(declare-fun lt!2697369 () C!43184)

(declare-fun lt!2697357 () List!74652)

(assert (=> b!7943680 (= (++!18310 (++!18310 testedP!447 (Cons!74528 lt!2697369 Nil!74528)) lt!2697357) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3498 (List!74652 C!43184 List!74652 List!74652) Unit!169670)

(assert (=> b!7943680 (= lt!2697381 (lemmaMoveElementToOtherListKeepsConcatEq!3498 testedP!447 lt!2697369 lt!2697357 input!7927))))

(assert (=> b!7943680 (= lt!2697357 (tail!15741 lt!2697203))))

(assert (=> b!7943680 (= lt!2697369 (head!16198 lt!2697203))))

(declare-fun lt!2697373 () Unit!169670)

(declare-fun lt!2697380 () Unit!169670)

(assert (=> b!7943680 (= lt!2697373 lt!2697380)))

(assert (=> b!7943680 (isPrefix!6523 (++!18310 testedP!447 (Cons!74528 (head!16198 (getSuffix!3726 input!7927 testedP!447)) Nil!74528)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1276 (List!74652 List!74652) Unit!169670)

(assert (=> b!7943680 (= lt!2697380 (lemmaAddHeadSuffixToPrefixStillPrefix!1276 testedP!447 input!7927))))

(declare-fun lt!2697378 () Unit!169670)

(declare-fun lt!2697384 () Unit!169670)

(assert (=> b!7943680 (= lt!2697378 lt!2697384)))

(assert (=> b!7943680 (= lt!2697384 (lemmaAddHeadSuffixToPrefixStillPrefix!1276 testedP!447 input!7927))))

(assert (=> b!7943680 (= lt!2697377 (++!18310 testedP!447 (Cons!74528 (head!16198 lt!2697203) Nil!74528)))))

(declare-fun lt!2697361 () Unit!169670)

(assert (=> b!7943680 (= lt!2697361 e!4686861)))

(declare-fun c!1459337 () Bool)

(assert (=> b!7943680 (= c!1459337 (= (size!43359 testedP!447) (size!43359 input!7927)))))

(declare-fun lt!2697383 () Unit!169670)

(declare-fun lt!2697365 () Unit!169670)

(assert (=> b!7943680 (= lt!2697383 lt!2697365)))

(assert (=> b!7943680 (<= (size!43359 testedP!447) (size!43359 input!7927))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1056 (List!74652 List!74652) Unit!169670)

(assert (=> b!7943680 (= lt!2697365 (lemmaIsPrefixThenSmallerEqSize!1056 testedP!447 input!7927))))

(assert (=> b!7943680 (= e!4686862 e!4686863)))

(assert (= (and d!2375282 c!1459338) b!7943669))

(assert (= (and d!2375282 (not c!1459338)) b!7943679))

(assert (= (and b!7943679 c!1459333) b!7943674))

(assert (= (and b!7943679 (not c!1459333)) b!7943680))

(assert (= (and b!7943674 c!1459334) b!7943673))

(assert (= (and b!7943674 (not c!1459334)) b!7943677))

(assert (= (and b!7943680 c!1459337) b!7943667))

(assert (= (and b!7943680 (not c!1459337)) b!7943675))

(assert (= (and b!7943680 c!1459336) b!7943678))

(assert (= (and b!7943680 (not c!1459336)) b!7943672))

(assert (= (and b!7943678 c!1459335) b!7943668))

(assert (= (and b!7943678 (not c!1459335)) b!7943670))

(assert (= (or b!7943678 b!7943672) bm!736180))

(assert (= (or b!7943678 b!7943672) bm!736184))

(assert (= (or b!7943678 b!7943672) bm!736183))

(assert (= (or b!7943678 b!7943672) bm!736181))

(assert (= (or b!7943674 b!7943680) bm!736182))

(assert (= (or b!7943674 b!7943667) bm!736185))

(assert (= (or b!7943674 b!7943667) bm!736179))

(assert (= (or b!7943674 b!7943667) bm!736178))

(assert (= (and d!2375282 res!3150984) b!7943671))

(assert (= (and b!7943671 (not res!3150983)) b!7943676))

(declare-fun m!8331228 () Bool)

(assert (=> bm!736181 m!8331228))

(declare-fun m!8331230 () Bool)

(assert (=> b!7943676 m!8331230))

(assert (=> b!7943676 m!8331136))

(declare-fun m!8331232 () Bool)

(assert (=> b!7943678 m!8331232))

(declare-fun m!8331234 () Bool)

(assert (=> bm!736185 m!8331234))

(declare-fun m!8331236 () Bool)

(assert (=> bm!736180 m!8331236))

(declare-fun m!8331238 () Bool)

(assert (=> bm!736179 m!8331238))

(declare-fun m!8331240 () Bool)

(assert (=> d!2375282 m!8331240))

(declare-fun m!8331242 () Bool)

(assert (=> d!2375282 m!8331242))

(declare-fun m!8331244 () Bool)

(assert (=> d!2375282 m!8331244))

(assert (=> d!2375282 m!8331244))

(declare-fun m!8331246 () Bool)

(assert (=> d!2375282 m!8331246))

(assert (=> d!2375282 m!8331142))

(declare-fun m!8331248 () Bool)

(assert (=> d!2375282 m!8331248))

(declare-fun m!8331250 () Bool)

(assert (=> d!2375282 m!8331250))

(declare-fun m!8331252 () Bool)

(assert (=> d!2375282 m!8331252))

(declare-fun m!8331254 () Bool)

(assert (=> b!7943671 m!8331254))

(declare-fun m!8331256 () Bool)

(assert (=> bm!736182 m!8331256))

(declare-fun m!8331258 () Bool)

(assert (=> bm!736184 m!8331258))

(assert (=> b!7943680 m!8331142))

(declare-fun m!8331260 () Bool)

(assert (=> b!7943680 m!8331260))

(assert (=> b!7943680 m!8331258))

(assert (=> b!7943680 m!8331236))

(assert (=> b!7943680 m!8331138))

(declare-fun m!8331262 () Bool)

(assert (=> b!7943680 m!8331262))

(declare-fun m!8331264 () Bool)

(assert (=> b!7943680 m!8331264))

(declare-fun m!8331266 () Bool)

(assert (=> b!7943680 m!8331266))

(declare-fun m!8331268 () Bool)

(assert (=> b!7943680 m!8331268))

(declare-fun m!8331270 () Bool)

(assert (=> b!7943680 m!8331270))

(declare-fun m!8331272 () Bool)

(assert (=> b!7943680 m!8331272))

(assert (=> b!7943680 m!8331262))

(assert (=> b!7943680 m!8331266))

(declare-fun m!8331274 () Bool)

(assert (=> b!7943680 m!8331274))

(assert (=> b!7943680 m!8331136))

(assert (=> b!7943680 m!8331142))

(declare-fun m!8331276 () Bool)

(assert (=> b!7943680 m!8331276))

(declare-fun m!8331278 () Bool)

(assert (=> bm!736183 m!8331278))

(declare-fun m!8331280 () Bool)

(assert (=> bm!736178 m!8331280))

(assert (=> b!7943555 d!2375282))

(declare-fun b!7943721 () Bool)

(declare-fun e!4686894 () Bool)

(declare-fun e!4686895 () Bool)

(assert (=> b!7943721 (= e!4686894 e!4686895)))

(declare-fun c!1459351 () Bool)

(assert (=> b!7943721 (= c!1459351 ((_ is Union!21423) baseR!116))))

(declare-fun b!7943722 () Bool)

(declare-fun e!4686893 () Bool)

(declare-fun call!736197 () Bool)

(assert (=> b!7943722 (= e!4686893 call!736197)))

(declare-fun b!7943723 () Bool)

(declare-fun e!4686892 () Bool)

(assert (=> b!7943723 (= e!4686894 e!4686892)))

(declare-fun res!3151004 () Bool)

(assert (=> b!7943723 (= res!3151004 (not (nullable!9539 (reg!21752 baseR!116))))))

(assert (=> b!7943723 (=> (not res!3151004) (not e!4686892))))

(declare-fun b!7943724 () Bool)

(declare-fun e!4686896 () Bool)

(assert (=> b!7943724 (= e!4686896 call!736197)))

(declare-fun b!7943726 () Bool)

(declare-fun call!736199 () Bool)

(assert (=> b!7943726 (= e!4686892 call!736199)))

(declare-fun c!1459350 () Bool)

(declare-fun bm!736192 () Bool)

(assert (=> bm!736192 (= call!736199 (validRegex!11727 (ite c!1459350 (reg!21752 baseR!116) (ite c!1459351 (regTwo!43359 baseR!116) (regTwo!43358 baseR!116)))))))

(declare-fun b!7943727 () Bool)

(declare-fun e!4686897 () Bool)

(assert (=> b!7943727 (= e!4686897 e!4686896)))

(declare-fun res!3151003 () Bool)

(assert (=> b!7943727 (=> (not res!3151003) (not e!4686896))))

(declare-fun call!736198 () Bool)

(assert (=> b!7943727 (= res!3151003 call!736198)))

(declare-fun b!7943725 () Bool)

(declare-fun e!4686898 () Bool)

(assert (=> b!7943725 (= e!4686898 e!4686894)))

(assert (=> b!7943725 (= c!1459350 ((_ is Star!21423) baseR!116))))

(declare-fun d!2375292 () Bool)

(declare-fun res!3151005 () Bool)

(assert (=> d!2375292 (=> res!3151005 e!4686898)))

(assert (=> d!2375292 (= res!3151005 ((_ is ElementMatch!21423) baseR!116))))

(assert (=> d!2375292 (= (validRegex!11727 baseR!116) e!4686898)))

(declare-fun b!7943728 () Bool)

(declare-fun res!3151007 () Bool)

(assert (=> b!7943728 (=> res!3151007 e!4686897)))

(assert (=> b!7943728 (= res!3151007 (not ((_ is Concat!30422) baseR!116)))))

(assert (=> b!7943728 (= e!4686895 e!4686897)))

(declare-fun b!7943729 () Bool)

(declare-fun res!3151006 () Bool)

(assert (=> b!7943729 (=> (not res!3151006) (not e!4686893))))

(assert (=> b!7943729 (= res!3151006 call!736198)))

(assert (=> b!7943729 (= e!4686895 e!4686893)))

(declare-fun bm!736193 () Bool)

(assert (=> bm!736193 (= call!736197 call!736199)))

(declare-fun bm!736194 () Bool)

(assert (=> bm!736194 (= call!736198 (validRegex!11727 (ite c!1459351 (regOne!43359 baseR!116) (regOne!43358 baseR!116))))))

(assert (= (and d!2375292 (not res!3151005)) b!7943725))

(assert (= (and b!7943725 c!1459350) b!7943723))

(assert (= (and b!7943725 (not c!1459350)) b!7943721))

(assert (= (and b!7943723 res!3151004) b!7943726))

(assert (= (and b!7943721 c!1459351) b!7943729))

(assert (= (and b!7943721 (not c!1459351)) b!7943728))

(assert (= (and b!7943729 res!3151006) b!7943722))

(assert (= (and b!7943728 (not res!3151007)) b!7943727))

(assert (= (and b!7943727 res!3151003) b!7943724))

(assert (= (or b!7943722 b!7943724) bm!736193))

(assert (= (or b!7943729 b!7943727) bm!736194))

(assert (= (or b!7943726 bm!736193) bm!736192))

(declare-fun m!8331296 () Bool)

(assert (=> b!7943723 m!8331296))

(declare-fun m!8331298 () Bool)

(assert (=> bm!736192 m!8331298))

(declare-fun m!8331300 () Bool)

(assert (=> bm!736194 m!8331300))

(assert (=> start!749716 d!2375292))

(declare-fun d!2375298 () Bool)

(declare-fun lt!2697397 () Regex!21423)

(assert (=> d!2375298 (validRegex!11727 lt!2697397)))

(declare-fun e!4686918 () Regex!21423)

(assert (=> d!2375298 (= lt!2697397 e!4686918)))

(declare-fun c!1459358 () Bool)

(assert (=> d!2375298 (= c!1459358 ((_ is Cons!74528) testedP!447))))

(assert (=> d!2375298 (validRegex!11727 baseR!116)))

(assert (=> d!2375298 (= (derivative!609 baseR!116 testedP!447) lt!2697397)))

(declare-fun b!7943756 () Bool)

(assert (=> b!7943756 (= e!4686918 (derivative!609 (derivativeStep!6477 baseR!116 (h!80976 testedP!447)) (t!390395 testedP!447)))))

(declare-fun b!7943757 () Bool)

(assert (=> b!7943757 (= e!4686918 baseR!116)))

(assert (= (and d!2375298 c!1459358) b!7943756))

(assert (= (and d!2375298 (not c!1459358)) b!7943757))

(declare-fun m!8331302 () Bool)

(assert (=> d!2375298 m!8331302))

(assert (=> d!2375298 m!8331144))

(declare-fun m!8331304 () Bool)

(assert (=> b!7943756 m!8331304))

(assert (=> b!7943756 m!8331304))

(declare-fun m!8331306 () Bool)

(assert (=> b!7943756 m!8331306))

(assert (=> b!7943557 d!2375298))

(declare-fun b!7943771 () Bool)

(declare-fun e!4686921 () Bool)

(declare-fun tp!2362427 () Bool)

(declare-fun tp!2362426 () Bool)

(assert (=> b!7943771 (= e!4686921 (and tp!2362427 tp!2362426))))

(declare-fun b!7943770 () Bool)

(declare-fun tp!2362428 () Bool)

(assert (=> b!7943770 (= e!4686921 tp!2362428)))

(assert (=> b!7943559 (= tp!2362409 e!4686921)))

(declare-fun b!7943768 () Bool)

(assert (=> b!7943768 (= e!4686921 tp_is_empty!53389)))

(declare-fun b!7943769 () Bool)

(declare-fun tp!2362425 () Bool)

(declare-fun tp!2362429 () Bool)

(assert (=> b!7943769 (= e!4686921 (and tp!2362425 tp!2362429))))

(assert (= (and b!7943559 ((_ is ElementMatch!21423) (regOne!43358 baseR!116))) b!7943768))

(assert (= (and b!7943559 ((_ is Concat!30422) (regOne!43358 baseR!116))) b!7943769))

(assert (= (and b!7943559 ((_ is Star!21423) (regOne!43358 baseR!116))) b!7943770))

(assert (= (and b!7943559 ((_ is Union!21423) (regOne!43358 baseR!116))) b!7943771))

(declare-fun b!7943775 () Bool)

(declare-fun e!4686922 () Bool)

(declare-fun tp!2362432 () Bool)

(declare-fun tp!2362431 () Bool)

(assert (=> b!7943775 (= e!4686922 (and tp!2362432 tp!2362431))))

(declare-fun b!7943774 () Bool)

(declare-fun tp!2362433 () Bool)

(assert (=> b!7943774 (= e!4686922 tp!2362433)))

(assert (=> b!7943559 (= tp!2362403 e!4686922)))

(declare-fun b!7943772 () Bool)

(assert (=> b!7943772 (= e!4686922 tp_is_empty!53389)))

(declare-fun b!7943773 () Bool)

(declare-fun tp!2362430 () Bool)

(declare-fun tp!2362434 () Bool)

(assert (=> b!7943773 (= e!4686922 (and tp!2362430 tp!2362434))))

(assert (= (and b!7943559 ((_ is ElementMatch!21423) (regTwo!43358 baseR!116))) b!7943772))

(assert (= (and b!7943559 ((_ is Concat!30422) (regTwo!43358 baseR!116))) b!7943773))

(assert (= (and b!7943559 ((_ is Star!21423) (regTwo!43358 baseR!116))) b!7943774))

(assert (= (and b!7943559 ((_ is Union!21423) (regTwo!43358 baseR!116))) b!7943775))

(declare-fun b!7943779 () Bool)

(declare-fun e!4686923 () Bool)

(declare-fun tp!2362437 () Bool)

(declare-fun tp!2362436 () Bool)

(assert (=> b!7943779 (= e!4686923 (and tp!2362437 tp!2362436))))

(declare-fun b!7943778 () Bool)

(declare-fun tp!2362438 () Bool)

(assert (=> b!7943778 (= e!4686923 tp!2362438)))

(assert (=> b!7943561 (= tp!2362405 e!4686923)))

(declare-fun b!7943776 () Bool)

(assert (=> b!7943776 (= e!4686923 tp_is_empty!53389)))

(declare-fun b!7943777 () Bool)

(declare-fun tp!2362435 () Bool)

(declare-fun tp!2362439 () Bool)

(assert (=> b!7943777 (= e!4686923 (and tp!2362435 tp!2362439))))

(assert (= (and b!7943561 ((_ is ElementMatch!21423) (reg!21752 r!24602))) b!7943776))

(assert (= (and b!7943561 ((_ is Concat!30422) (reg!21752 r!24602))) b!7943777))

(assert (= (and b!7943561 ((_ is Star!21423) (reg!21752 r!24602))) b!7943778))

(assert (= (and b!7943561 ((_ is Union!21423) (reg!21752 r!24602))) b!7943779))

(declare-fun b!7943784 () Bool)

(declare-fun e!4686926 () Bool)

(declare-fun tp!2362442 () Bool)

(assert (=> b!7943784 (= e!4686926 (and tp_is_empty!53389 tp!2362442))))

(assert (=> b!7943556 (= tp!2362412 e!4686926)))

(assert (= (and b!7943556 ((_ is Cons!74528) (t!390395 testedP!447))) b!7943784))

(declare-fun b!7943788 () Bool)

(declare-fun e!4686927 () Bool)

(declare-fun tp!2362445 () Bool)

(declare-fun tp!2362444 () Bool)

(assert (=> b!7943788 (= e!4686927 (and tp!2362445 tp!2362444))))

(declare-fun b!7943787 () Bool)

(declare-fun tp!2362446 () Bool)

(assert (=> b!7943787 (= e!4686927 tp!2362446)))

(assert (=> b!7943551 (= tp!2362410 e!4686927)))

(declare-fun b!7943785 () Bool)

(assert (=> b!7943785 (= e!4686927 tp_is_empty!53389)))

(declare-fun b!7943786 () Bool)

(declare-fun tp!2362443 () Bool)

(declare-fun tp!2362447 () Bool)

(assert (=> b!7943786 (= e!4686927 (and tp!2362443 tp!2362447))))

(assert (= (and b!7943551 ((_ is ElementMatch!21423) (regOne!43358 r!24602))) b!7943785))

(assert (= (and b!7943551 ((_ is Concat!30422) (regOne!43358 r!24602))) b!7943786))

(assert (= (and b!7943551 ((_ is Star!21423) (regOne!43358 r!24602))) b!7943787))

(assert (= (and b!7943551 ((_ is Union!21423) (regOne!43358 r!24602))) b!7943788))

(declare-fun b!7943792 () Bool)

(declare-fun e!4686931 () Bool)

(declare-fun tp!2362450 () Bool)

(declare-fun tp!2362449 () Bool)

(assert (=> b!7943792 (= e!4686931 (and tp!2362450 tp!2362449))))

(declare-fun b!7943791 () Bool)

(declare-fun tp!2362451 () Bool)

(assert (=> b!7943791 (= e!4686931 tp!2362451)))

(assert (=> b!7943551 (= tp!2362414 e!4686931)))

(declare-fun b!7943789 () Bool)

(assert (=> b!7943789 (= e!4686931 tp_is_empty!53389)))

(declare-fun b!7943790 () Bool)

(declare-fun tp!2362448 () Bool)

(declare-fun tp!2362452 () Bool)

(assert (=> b!7943790 (= e!4686931 (and tp!2362448 tp!2362452))))

(assert (= (and b!7943551 ((_ is ElementMatch!21423) (regTwo!43358 r!24602))) b!7943789))

(assert (= (and b!7943551 ((_ is Concat!30422) (regTwo!43358 r!24602))) b!7943790))

(assert (= (and b!7943551 ((_ is Star!21423) (regTwo!43358 r!24602))) b!7943791))

(assert (= (and b!7943551 ((_ is Union!21423) (regTwo!43358 r!24602))) b!7943792))

(declare-fun b!7943805 () Bool)

(declare-fun e!4686936 () Bool)

(declare-fun tp!2362455 () Bool)

(declare-fun tp!2362454 () Bool)

(assert (=> b!7943805 (= e!4686936 (and tp!2362455 tp!2362454))))

(declare-fun b!7943804 () Bool)

(declare-fun tp!2362456 () Bool)

(assert (=> b!7943804 (= e!4686936 tp!2362456)))

(assert (=> b!7943563 (= tp!2362411 e!4686936)))

(declare-fun b!7943802 () Bool)

(assert (=> b!7943802 (= e!4686936 tp_is_empty!53389)))

(declare-fun b!7943803 () Bool)

(declare-fun tp!2362453 () Bool)

(declare-fun tp!2362457 () Bool)

(assert (=> b!7943803 (= e!4686936 (and tp!2362453 tp!2362457))))

(assert (= (and b!7943563 ((_ is ElementMatch!21423) (regOne!43359 r!24602))) b!7943802))

(assert (= (and b!7943563 ((_ is Concat!30422) (regOne!43359 r!24602))) b!7943803))

(assert (= (and b!7943563 ((_ is Star!21423) (regOne!43359 r!24602))) b!7943804))

(assert (= (and b!7943563 ((_ is Union!21423) (regOne!43359 r!24602))) b!7943805))

(declare-fun b!7943809 () Bool)

(declare-fun e!4686937 () Bool)

(declare-fun tp!2362460 () Bool)

(declare-fun tp!2362459 () Bool)

(assert (=> b!7943809 (= e!4686937 (and tp!2362460 tp!2362459))))

(declare-fun b!7943808 () Bool)

(declare-fun tp!2362461 () Bool)

(assert (=> b!7943808 (= e!4686937 tp!2362461)))

(assert (=> b!7943563 (= tp!2362407 e!4686937)))

(declare-fun b!7943806 () Bool)

(assert (=> b!7943806 (= e!4686937 tp_is_empty!53389)))

(declare-fun b!7943807 () Bool)

(declare-fun tp!2362458 () Bool)

(declare-fun tp!2362462 () Bool)

(assert (=> b!7943807 (= e!4686937 (and tp!2362458 tp!2362462))))

(assert (= (and b!7943563 ((_ is ElementMatch!21423) (regTwo!43359 r!24602))) b!7943806))

(assert (= (and b!7943563 ((_ is Concat!30422) (regTwo!43359 r!24602))) b!7943807))

(assert (= (and b!7943563 ((_ is Star!21423) (regTwo!43359 r!24602))) b!7943808))

(assert (= (and b!7943563 ((_ is Union!21423) (regTwo!43359 r!24602))) b!7943809))

(declare-fun b!7943813 () Bool)

(declare-fun e!4686938 () Bool)

(declare-fun tp!2362465 () Bool)

(declare-fun tp!2362464 () Bool)

(assert (=> b!7943813 (= e!4686938 (and tp!2362465 tp!2362464))))

(declare-fun b!7943812 () Bool)

(declare-fun tp!2362466 () Bool)

(assert (=> b!7943812 (= e!4686938 tp!2362466)))

(assert (=> b!7943558 (= tp!2362404 e!4686938)))

(declare-fun b!7943810 () Bool)

(assert (=> b!7943810 (= e!4686938 tp_is_empty!53389)))

(declare-fun b!7943811 () Bool)

(declare-fun tp!2362463 () Bool)

(declare-fun tp!2362467 () Bool)

(assert (=> b!7943811 (= e!4686938 (and tp!2362463 tp!2362467))))

(assert (= (and b!7943558 ((_ is ElementMatch!21423) (reg!21752 baseR!116))) b!7943810))

(assert (= (and b!7943558 ((_ is Concat!30422) (reg!21752 baseR!116))) b!7943811))

(assert (= (and b!7943558 ((_ is Star!21423) (reg!21752 baseR!116))) b!7943812))

(assert (= (and b!7943558 ((_ is Union!21423) (reg!21752 baseR!116))) b!7943813))

(declare-fun b!7943817 () Bool)

(declare-fun e!4686939 () Bool)

(declare-fun tp!2362470 () Bool)

(declare-fun tp!2362469 () Bool)

(assert (=> b!7943817 (= e!4686939 (and tp!2362470 tp!2362469))))

(declare-fun b!7943816 () Bool)

(declare-fun tp!2362471 () Bool)

(assert (=> b!7943816 (= e!4686939 tp!2362471)))

(assert (=> b!7943553 (= tp!2362406 e!4686939)))

(declare-fun b!7943814 () Bool)

(assert (=> b!7943814 (= e!4686939 tp_is_empty!53389)))

(declare-fun b!7943815 () Bool)

(declare-fun tp!2362468 () Bool)

(declare-fun tp!2362472 () Bool)

(assert (=> b!7943815 (= e!4686939 (and tp!2362468 tp!2362472))))

(assert (= (and b!7943553 ((_ is ElementMatch!21423) (regOne!43359 baseR!116))) b!7943814))

(assert (= (and b!7943553 ((_ is Concat!30422) (regOne!43359 baseR!116))) b!7943815))

(assert (= (and b!7943553 ((_ is Star!21423) (regOne!43359 baseR!116))) b!7943816))

(assert (= (and b!7943553 ((_ is Union!21423) (regOne!43359 baseR!116))) b!7943817))

(declare-fun b!7943827 () Bool)

(declare-fun e!4686942 () Bool)

(declare-fun tp!2362475 () Bool)

(declare-fun tp!2362474 () Bool)

(assert (=> b!7943827 (= e!4686942 (and tp!2362475 tp!2362474))))

(declare-fun b!7943826 () Bool)

(declare-fun tp!2362476 () Bool)

(assert (=> b!7943826 (= e!4686942 tp!2362476)))

(assert (=> b!7943553 (= tp!2362408 e!4686942)))

(declare-fun b!7943824 () Bool)

(assert (=> b!7943824 (= e!4686942 tp_is_empty!53389)))

(declare-fun b!7943825 () Bool)

(declare-fun tp!2362473 () Bool)

(declare-fun tp!2362477 () Bool)

(assert (=> b!7943825 (= e!4686942 (and tp!2362473 tp!2362477))))

(assert (= (and b!7943553 ((_ is ElementMatch!21423) (regTwo!43359 baseR!116))) b!7943824))

(assert (= (and b!7943553 ((_ is Concat!30422) (regTwo!43359 baseR!116))) b!7943825))

(assert (= (and b!7943553 ((_ is Star!21423) (regTwo!43359 baseR!116))) b!7943826))

(assert (= (and b!7943553 ((_ is Union!21423) (regTwo!43359 baseR!116))) b!7943827))

(declare-fun b!7943830 () Bool)

(declare-fun e!4686943 () Bool)

(declare-fun tp!2362484 () Bool)

(assert (=> b!7943830 (= e!4686943 (and tp_is_empty!53389 tp!2362484))))

(assert (=> b!7943564 (= tp!2362413 e!4686943)))

(assert (= (and b!7943564 ((_ is Cons!74528) (t!390395 input!7927))) b!7943830))

(check-sat (not b!7943788) (not b!7943723) (not bm!736185) (not bm!736192) (not d!2375298) (not d!2375282) (not b!7943786) (not b!7943769) (not b!7943593) (not b!7943813) (not b!7943582) (not d!2375278) (not b!7943770) (not b!7943588) (not b!7943816) (not b!7943773) (not b!7943826) (not b!7943817) (not b!7943580) (not b!7943777) (not b!7943805) (not b!7943791) (not b!7943581) (not b!7943771) (not b!7943678) (not b!7943790) (not bm!736181) (not b!7943808) (not b!7943671) (not bm!736194) (not b!7943596) (not bm!736178) tp_is_empty!53389 (not b!7943784) (not bm!736180) (not b!7943803) (not b!7943779) (not b!7943830) (not bm!736182) (not bm!736184) (not b!7943809) (not b!7943787) (not b!7943804) (not b!7943680) (not b!7943827) (not b!7943775) (not b!7943807) (not b!7943756) (not b!7943812) (not b!7943815) (not b!7943774) (not b!7943778) (not b!7943792) (not b!7943825) (not b!7943811) (not bm!736179) (not bm!736183) (not b!7943676))
(check-sat)
