; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742436 () Bool)

(assert start!742436)

(declare-fun b!7837600 () Bool)

(declare-fun e!4634412 () Bool)

(declare-fun tp_is_empty!52335 () Bool)

(declare-fun tp!2318827 () Bool)

(assert (=> b!7837600 (= e!4634412 (and tp_is_empty!52335 tp!2318827))))

(declare-fun b!7837601 () Bool)

(declare-fun e!4634411 () Bool)

(declare-fun tp!2318829 () Bool)

(declare-fun tp!2318824 () Bool)

(assert (=> b!7837601 (= e!4634411 (and tp!2318829 tp!2318824))))

(declare-fun b!7837602 () Bool)

(declare-fun e!4634413 () Bool)

(declare-fun tp!2318834 () Bool)

(declare-fun tp!2318830 () Bool)

(assert (=> b!7837602 (= e!4634413 (and tp!2318834 tp!2318830))))

(declare-fun b!7837603 () Bool)

(assert (=> b!7837603 (= e!4634411 tp_is_empty!52335)))

(declare-fun b!7837604 () Bool)

(declare-fun res!3117259 () Bool)

(declare-fun e!4634416 () Bool)

(assert (=> b!7837604 (=> (not res!3117259) (not e!4634416))))

(declare-datatypes ((C!42306 0))(
  ( (C!42307 (val!31593 Int)) )
))
(declare-datatypes ((List!73827 0))(
  ( (Nil!73703) (Cons!73703 (h!80151 C!42306) (t!388562 List!73827)) )
))
(declare-fun s1Rec!453 () List!73827)

(declare-fun s1!4101 () List!73827)

(declare-fun isPrefix!6340 (List!73827 List!73827) Bool)

(assert (=> b!7837604 (= res!3117259 (isPrefix!6340 s1Rec!453 s1!4101))))

(declare-fun b!7837605 () Bool)

(declare-fun e!4634410 () Bool)

(assert (=> b!7837605 (= e!4634416 e!4634410)))

(declare-fun res!3117262 () Bool)

(assert (=> b!7837605 (=> (not res!3117262) (not e!4634410))))

(declare-fun lt!2678063 () List!73827)

(declare-fun s!14274 () List!73827)

(assert (=> b!7837605 (= res!3117262 (= lt!2678063 s!14274))))

(declare-fun s2Rec!453 () List!73827)

(declare-fun ++!18024 (List!73827 List!73827) List!73827)

(assert (=> b!7837605 (= lt!2678063 (++!18024 s1Rec!453 s2Rec!453))))

(declare-fun b!7837606 () Bool)

(declare-fun res!3117264 () Bool)

(assert (=> b!7837606 (=> (not res!3117264) (not e!4634410))))

(declare-fun e!4634419 () Bool)

(assert (=> b!7837606 (= res!3117264 e!4634419)))

(declare-fun res!3117265 () Bool)

(assert (=> b!7837606 (=> res!3117265 e!4634419)))

(declare-datatypes ((Regex!20990 0))(
  ( (ElementMatch!20990 (c!1441277 C!42306)) (Concat!29835 (regOne!42492 Regex!20990) (regTwo!42492 Regex!20990)) (EmptyExpr!20990) (Star!20990 (reg!21319 Regex!20990)) (EmptyLang!20990) (Union!20990 (regOne!42493 Regex!20990) (regTwo!42493 Regex!20990)) )
))
(declare-fun r1!6261 () Regex!20990)

(declare-fun matchR!10446 (Regex!20990 List!73827) Bool)

(assert (=> b!7837606 (= res!3117265 (not (matchR!10446 r1!6261 s1Rec!453)))))

(declare-fun b!7837607 () Bool)

(declare-fun e!4634420 () Bool)

(declare-fun tp!2318833 () Bool)

(assert (=> b!7837607 (= e!4634420 (and tp_is_empty!52335 tp!2318833))))

(declare-fun b!7837608 () Bool)

(declare-datatypes ((Unit!168802 0))(
  ( (Unit!168803) )
))
(declare-fun e!4634417 () Unit!168802)

(declare-fun Unit!168804 () Unit!168802)

(assert (=> b!7837608 (= e!4634417 Unit!168804)))

(declare-fun s2!3721 () List!73827)

(declare-fun lt!2678066 () Unit!168802)

(declare-fun lemmaSamePrefixThenSameSuffix!2924 (List!73827 List!73827 List!73827 List!73827 List!73827) Unit!168802)

(assert (=> b!7837608 (= lt!2678066 (lemmaSamePrefixThenSameSuffix!2924 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7837608 false))

(declare-fun b!7837609 () Bool)

(declare-fun tp!2318831 () Bool)

(declare-fun tp!2318821 () Bool)

(assert (=> b!7837609 (= e!4634413 (and tp!2318831 tp!2318821))))

(declare-fun b!7837610 () Bool)

(declare-fun res!3117267 () Bool)

(assert (=> b!7837610 (=> (not res!3117267) (not e!4634410))))

(assert (=> b!7837610 (= res!3117267 (not (is-Nil!73703 s2Rec!453)))))

(declare-fun b!7837611 () Bool)

(declare-fun tp!2318820 () Bool)

(assert (=> b!7837611 (= e!4634413 tp!2318820)))

(declare-fun b!7837612 () Bool)

(declare-fun res!3117263 () Bool)

(assert (=> b!7837612 (=> (not res!3117263) (not e!4634410))))

(assert (=> b!7837612 (= res!3117263 (matchR!10446 r1!6261 s1!4101))))

(declare-fun b!7837613 () Bool)

(declare-fun Unit!168805 () Unit!168802)

(assert (=> b!7837613 (= e!4634417 Unit!168805)))

(declare-fun b!7837614 () Bool)

(declare-fun tp!2318832 () Bool)

(assert (=> b!7837614 (= e!4634411 tp!2318832)))

(declare-fun b!7837615 () Bool)

(declare-fun res!3117260 () Bool)

(assert (=> b!7837615 (=> (not res!3117260) (not e!4634410))))

(declare-fun r2!6199 () Regex!20990)

(assert (=> b!7837615 (= res!3117260 (matchR!10446 r2!6199 s2!3721))))

(declare-fun b!7837616 () Bool)

(declare-fun e!4634415 () Unit!168802)

(declare-fun Unit!168806 () Unit!168802)

(assert (=> b!7837616 (= e!4634415 Unit!168806)))

(declare-fun b!7837617 () Bool)

(declare-fun e!4634414 () Bool)

(declare-fun tp!2318826 () Bool)

(assert (=> b!7837617 (= e!4634414 (and tp_is_empty!52335 tp!2318826))))

(declare-fun b!7837618 () Bool)

(assert (=> b!7837618 (= e!4634413 tp_is_empty!52335)))

(declare-fun b!7837619 () Bool)

(declare-fun e!4634408 () Bool)

(declare-fun tp!2318823 () Bool)

(assert (=> b!7837619 (= e!4634408 (and tp_is_empty!52335 tp!2318823))))

(declare-fun b!7837620 () Bool)

(declare-fun e!4634418 () Bool)

(assert (=> b!7837620 (= e!4634418 e!4634416)))

(declare-fun res!3117261 () Bool)

(assert (=> b!7837620 (=> (not res!3117261) (not e!4634416))))

(declare-fun lt!2678062 () List!73827)

(assert (=> b!7837620 (= res!3117261 (= lt!2678062 s!14274))))

(assert (=> b!7837620 (= lt!2678062 (++!18024 s1!4101 s2!3721))))

(declare-fun b!7837621 () Bool)

(assert (=> b!7837621 (= e!4634419 (not (matchR!10446 r2!6199 s2Rec!453)))))

(declare-fun b!7837622 () Bool)

(declare-fun Unit!168807 () Unit!168802)

(assert (=> b!7837622 (= e!4634415 Unit!168807)))

(declare-fun lt!2678065 () Unit!168802)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1556 (List!73827 List!73827 List!73827) Unit!168802)

(assert (=> b!7837622 (= lt!2678065 (lemmaIsPrefixSameLengthThenSameList!1556 s1!4101 s1Rec!453 s!14274))))

(assert (=> b!7837622 false))

(declare-fun b!7837623 () Bool)

(declare-fun res!3117266 () Bool)

(assert (=> b!7837623 (=> (not res!3117266) (not e!4634418))))

(declare-fun validRegex!11404 (Regex!20990) Bool)

(assert (=> b!7837623 (= res!3117266 (validRegex!11404 r2!6199))))

(declare-fun res!3117268 () Bool)

(assert (=> start!742436 (=> (not res!3117268) (not e!4634418))))

(assert (=> start!742436 (= res!3117268 (validRegex!11404 r1!6261))))

(assert (=> start!742436 e!4634418))

(assert (=> start!742436 e!4634413))

(assert (=> start!742436 e!4634420))

(assert (=> start!742436 e!4634408))

(assert (=> start!742436 e!4634414))

(assert (=> start!742436 e!4634412))

(assert (=> start!742436 e!4634411))

(declare-fun e!4634409 () Bool)

(assert (=> start!742436 e!4634409))

(declare-fun b!7837624 () Bool)

(declare-fun tp!2318828 () Bool)

(assert (=> b!7837624 (= e!4634409 (and tp_is_empty!52335 tp!2318828))))

(declare-fun b!7837625 () Bool)

(declare-datatypes ((tuple2!69994 0))(
  ( (tuple2!69995 (_1!38300 List!73827) (_2!38300 List!73827)) )
))
(declare-datatypes ((Option!17791 0))(
  ( (None!17790) (Some!17790 (v!54925 tuple2!69994)) )
))
(declare-fun isDefined!14397 (Option!17791) Bool)

(declare-fun findConcatSeparation!3821 (Regex!20990 Regex!20990 List!73827 List!73827 List!73827) Option!17791)

(assert (=> b!7837625 (= e!4634410 (not (isDefined!14397 (findConcatSeparation!3821 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274))))))

(declare-fun lt!2678057 () List!73827)

(assert (=> b!7837625 (isDefined!14397 (findConcatSeparation!3821 r1!6261 r2!6199 lt!2678057 (t!388562 s2Rec!453) s!14274))))

(declare-fun lt!2678055 () Unit!168802)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!135 (Regex!20990 Regex!20990 List!73827 List!73827 List!73827 List!73827 List!73827) Unit!168802)

(assert (=> b!7837625 (= lt!2678055 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!135 r1!6261 r2!6199 s1!4101 s2!3721 s!14274 lt!2678057 (t!388562 s2Rec!453)))))

(assert (=> b!7837625 (isPrefix!6340 lt!2678057 s1!4101)))

(declare-fun lt!2678058 () Unit!168802)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!946 (List!73827 List!73827 List!73827) Unit!168802)

(assert (=> b!7837625 (= lt!2678058 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!946 s1!4101 lt!2678057 s!14274))))

(declare-fun lt!2678059 () Unit!168802)

(assert (=> b!7837625 (= lt!2678059 e!4634415)))

(declare-fun c!1441276 () Bool)

(declare-fun size!42780 (List!73827) Int)

(assert (=> b!7837625 (= c!1441276 (= (size!42780 s1Rec!453) (size!42780 s1!4101)))))

(declare-fun lt!2678068 () List!73827)

(assert (=> b!7837625 (isPrefix!6340 lt!2678057 lt!2678068)))

(declare-fun lt!2678067 () Unit!168802)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3786 (List!73827 List!73827) Unit!168802)

(assert (=> b!7837625 (= lt!2678067 (lemmaConcatTwoListThenFirstIsPrefix!3786 lt!2678057 (t!388562 s2Rec!453)))))

(assert (=> b!7837625 (= lt!2678068 s!14274)))

(assert (=> b!7837625 (= lt!2678068 (++!18024 lt!2678057 (t!388562 s2Rec!453)))))

(assert (=> b!7837625 (= lt!2678057 (++!18024 s1Rec!453 (Cons!73703 (h!80151 s2Rec!453) Nil!73703)))))

(declare-fun lt!2678061 () Unit!168802)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3451 (List!73827 C!42306 List!73827 List!73827) Unit!168802)

(assert (=> b!7837625 (= lt!2678061 (lemmaMoveElementToOtherListKeepsConcatEq!3451 s1Rec!453 (h!80151 s2Rec!453) (t!388562 s2Rec!453) s!14274))))

(declare-fun lt!2678060 () Unit!168802)

(assert (=> b!7837625 (= lt!2678060 e!4634417)))

(declare-fun c!1441275 () Bool)

(assert (=> b!7837625 (= c!1441275 (= s1Rec!453 s1!4101))))

(assert (=> b!7837625 (isPrefix!6340 s1Rec!453 lt!2678063)))

(declare-fun lt!2678064 () Unit!168802)

(assert (=> b!7837625 (= lt!2678064 (lemmaConcatTwoListThenFirstIsPrefix!3786 s1Rec!453 s2Rec!453))))

(assert (=> b!7837625 (isPrefix!6340 s1!4101 lt!2678062)))

(declare-fun lt!2678056 () Unit!168802)

(assert (=> b!7837625 (= lt!2678056 (lemmaConcatTwoListThenFirstIsPrefix!3786 s1!4101 s2!3721))))

(declare-fun b!7837626 () Bool)

(declare-fun tp!2318825 () Bool)

(declare-fun tp!2318822 () Bool)

(assert (=> b!7837626 (= e!4634411 (and tp!2318825 tp!2318822))))

(assert (= (and start!742436 res!3117268) b!7837623))

(assert (= (and b!7837623 res!3117266) b!7837620))

(assert (= (and b!7837620 res!3117261) b!7837604))

(assert (= (and b!7837604 res!3117259) b!7837605))

(assert (= (and b!7837605 res!3117262) b!7837612))

(assert (= (and b!7837612 res!3117263) b!7837615))

(assert (= (and b!7837615 res!3117260) b!7837606))

(assert (= (and b!7837606 (not res!3117265)) b!7837621))

(assert (= (and b!7837606 res!3117264) b!7837610))

(assert (= (and b!7837610 res!3117267) b!7837625))

(assert (= (and b!7837625 c!1441275) b!7837608))

(assert (= (and b!7837625 (not c!1441275)) b!7837613))

(assert (= (and b!7837625 c!1441276) b!7837622))

(assert (= (and b!7837625 (not c!1441276)) b!7837616))

(assert (= (and start!742436 (is-ElementMatch!20990 r2!6199)) b!7837618))

(assert (= (and start!742436 (is-Concat!29835 r2!6199)) b!7837609))

(assert (= (and start!742436 (is-Star!20990 r2!6199)) b!7837611))

(assert (= (and start!742436 (is-Union!20990 r2!6199)) b!7837602))

(assert (= (and start!742436 (is-Cons!73703 s1!4101)) b!7837607))

(assert (= (and start!742436 (is-Cons!73703 s2!3721)) b!7837619))

(assert (= (and start!742436 (is-Cons!73703 s2Rec!453)) b!7837617))

(assert (= (and start!742436 (is-Cons!73703 s!14274)) b!7837600))

(assert (= (and start!742436 (is-ElementMatch!20990 r1!6261)) b!7837603))

(assert (= (and start!742436 (is-Concat!29835 r1!6261)) b!7837626))

(assert (= (and start!742436 (is-Star!20990 r1!6261)) b!7837614))

(assert (= (and start!742436 (is-Union!20990 r1!6261)) b!7837601))

(assert (= (and start!742436 (is-Cons!73703 s1Rec!453)) b!7837624))

(declare-fun m!8252058 () Bool)

(assert (=> b!7837623 m!8252058))

(declare-fun m!8252060 () Bool)

(assert (=> b!7837625 m!8252060))

(declare-fun m!8252062 () Bool)

(assert (=> b!7837625 m!8252062))

(declare-fun m!8252064 () Bool)

(assert (=> b!7837625 m!8252064))

(assert (=> b!7837625 m!8252060))

(declare-fun m!8252066 () Bool)

(assert (=> b!7837625 m!8252066))

(declare-fun m!8252068 () Bool)

(assert (=> b!7837625 m!8252068))

(declare-fun m!8252070 () Bool)

(assert (=> b!7837625 m!8252070))

(declare-fun m!8252072 () Bool)

(assert (=> b!7837625 m!8252072))

(declare-fun m!8252074 () Bool)

(assert (=> b!7837625 m!8252074))

(declare-fun m!8252076 () Bool)

(assert (=> b!7837625 m!8252076))

(declare-fun m!8252078 () Bool)

(assert (=> b!7837625 m!8252078))

(declare-fun m!8252080 () Bool)

(assert (=> b!7837625 m!8252080))

(declare-fun m!8252082 () Bool)

(assert (=> b!7837625 m!8252082))

(declare-fun m!8252084 () Bool)

(assert (=> b!7837625 m!8252084))

(declare-fun m!8252086 () Bool)

(assert (=> b!7837625 m!8252086))

(declare-fun m!8252088 () Bool)

(assert (=> b!7837625 m!8252088))

(assert (=> b!7837625 m!8252068))

(declare-fun m!8252090 () Bool)

(assert (=> b!7837625 m!8252090))

(declare-fun m!8252092 () Bool)

(assert (=> b!7837625 m!8252092))

(declare-fun m!8252094 () Bool)

(assert (=> b!7837625 m!8252094))

(declare-fun m!8252096 () Bool)

(assert (=> b!7837612 m!8252096))

(declare-fun m!8252098 () Bool)

(assert (=> b!7837608 m!8252098))

(declare-fun m!8252100 () Bool)

(assert (=> start!742436 m!8252100))

(declare-fun m!8252102 () Bool)

(assert (=> b!7837604 m!8252102))

(declare-fun m!8252104 () Bool)

(assert (=> b!7837606 m!8252104))

(declare-fun m!8252106 () Bool)

(assert (=> b!7837615 m!8252106))

(declare-fun m!8252108 () Bool)

(assert (=> b!7837622 m!8252108))

(declare-fun m!8252110 () Bool)

(assert (=> b!7837605 m!8252110))

(declare-fun m!8252112 () Bool)

(assert (=> b!7837621 m!8252112))

(declare-fun m!8252114 () Bool)

(assert (=> b!7837620 m!8252114))

(push 1)

(assert (not b!7837625))

(assert (not b!7837601))

(assert (not b!7837620))

(assert (not b!7837611))

(assert (not b!7837614))

(assert (not b!7837622))

(assert (not b!7837623))

(assert (not b!7837604))

(assert (not b!7837624))

(assert (not start!742436))

(assert (not b!7837615))

(assert (not b!7837607))

(assert (not b!7837600))

(assert (not b!7837602))

(assert (not b!7837619))

(assert (not b!7837609))

(assert (not b!7837612))

(assert (not b!7837606))

(assert (not b!7837621))

(assert (not b!7837626))

(assert (not b!7837617))

(assert tp_is_empty!52335)

(assert (not b!7837605))

(assert (not b!7837608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2351835 () Bool)

(declare-fun e!4634464 () Bool)

(assert (=> d!2351835 e!4634464))

(declare-fun res!3117303 () Bool)

(assert (=> d!2351835 (=> (not res!3117303) (not e!4634464))))

(declare-fun lt!2678113 () List!73827)

(declare-fun content!15649 (List!73827) (Set C!42306))

(assert (=> d!2351835 (= res!3117303 (= (content!15649 lt!2678113) (set.union (content!15649 s1!4101) (content!15649 s2!3721))))))

(declare-fun e!4634465 () List!73827)

(assert (=> d!2351835 (= lt!2678113 e!4634465)))

(declare-fun c!1441287 () Bool)

(assert (=> d!2351835 (= c!1441287 (is-Nil!73703 s1!4101))))

(assert (=> d!2351835 (= (++!18024 s1!4101 s2!3721) lt!2678113)))

(declare-fun b!7837718 () Bool)

(declare-fun res!3117304 () Bool)

(assert (=> b!7837718 (=> (not res!3117304) (not e!4634464))))

(assert (=> b!7837718 (= res!3117304 (= (size!42780 lt!2678113) (+ (size!42780 s1!4101) (size!42780 s2!3721))))))

(declare-fun b!7837716 () Bool)

(assert (=> b!7837716 (= e!4634465 s2!3721)))

(declare-fun b!7837717 () Bool)

(assert (=> b!7837717 (= e!4634465 (Cons!73703 (h!80151 s1!4101) (++!18024 (t!388562 s1!4101) s2!3721)))))

(declare-fun b!7837719 () Bool)

(assert (=> b!7837719 (= e!4634464 (or (not (= s2!3721 Nil!73703)) (= lt!2678113 s1!4101)))))

(assert (= (and d!2351835 c!1441287) b!7837716))

(assert (= (and d!2351835 (not c!1441287)) b!7837717))

(assert (= (and d!2351835 res!3117303) b!7837718))

(assert (= (and b!7837718 res!3117304) b!7837719))

(declare-fun m!8252174 () Bool)

(assert (=> d!2351835 m!8252174))

(declare-fun m!8252176 () Bool)

(assert (=> d!2351835 m!8252176))

(declare-fun m!8252178 () Bool)

(assert (=> d!2351835 m!8252178))

(declare-fun m!8252180 () Bool)

(assert (=> b!7837718 m!8252180))

(assert (=> b!7837718 m!8252088))

(declare-fun m!8252182 () Bool)

(assert (=> b!7837718 m!8252182))

(declare-fun m!8252184 () Bool)

(assert (=> b!7837717 m!8252184))

(assert (=> b!7837620 d!2351835))

(declare-fun b!7837790 () Bool)

(declare-fun res!3117349 () Bool)

(declare-fun e!4634506 () Bool)

(assert (=> b!7837790 (=> res!3117349 e!4634506)))

(declare-fun e!4634507 () Bool)

(assert (=> b!7837790 (= res!3117349 e!4634507)))

(declare-fun res!3117348 () Bool)

(assert (=> b!7837790 (=> (not res!3117348) (not e!4634507))))

(declare-fun lt!2678119 () Bool)

(assert (=> b!7837790 (= res!3117348 lt!2678119)))

(declare-fun b!7837791 () Bool)

(declare-fun e!4634504 () Bool)

(assert (=> b!7837791 (= e!4634506 e!4634504)))

(declare-fun res!3117346 () Bool)

(assert (=> b!7837791 (=> (not res!3117346) (not e!4634504))))

(assert (=> b!7837791 (= res!3117346 (not lt!2678119))))

(declare-fun b!7837792 () Bool)

(declare-fun e!4634502 () Bool)

(declare-fun e!4634503 () Bool)

(assert (=> b!7837792 (= e!4634502 e!4634503)))

(declare-fun c!1441305 () Bool)

(assert (=> b!7837792 (= c!1441305 (is-EmptyLang!20990 r2!6199))))

(declare-fun d!2351839 () Bool)

(assert (=> d!2351839 e!4634502))

(declare-fun c!1441304 () Bool)

(assert (=> d!2351839 (= c!1441304 (is-EmptyExpr!20990 r2!6199))))

(declare-fun e!4634505 () Bool)

(assert (=> d!2351839 (= lt!2678119 e!4634505)))

(declare-fun c!1441303 () Bool)

(declare-fun isEmpty!42298 (List!73827) Bool)

(assert (=> d!2351839 (= c!1441303 (isEmpty!42298 s2Rec!453))))

(assert (=> d!2351839 (validRegex!11404 r2!6199)))

(assert (=> d!2351839 (= (matchR!10446 r2!6199 s2Rec!453) lt!2678119)))

(declare-fun b!7837793 () Bool)

(declare-fun res!3117352 () Bool)

(assert (=> b!7837793 (=> res!3117352 e!4634506)))

(assert (=> b!7837793 (= res!3117352 (not (is-ElementMatch!20990 r2!6199)))))

(assert (=> b!7837793 (= e!4634503 e!4634506)))

(declare-fun bm!726571 () Bool)

(declare-fun call!726576 () Bool)

(assert (=> bm!726571 (= call!726576 (isEmpty!42298 s2Rec!453))))

(declare-fun b!7837794 () Bool)

(declare-fun e!4634501 () Bool)

(declare-fun head!15997 (List!73827) C!42306)

(assert (=> b!7837794 (= e!4634501 (not (= (head!15997 s2Rec!453) (c!1441277 r2!6199))))))

(declare-fun b!7837795 () Bool)

(assert (=> b!7837795 (= e!4634504 e!4634501)))

(declare-fun res!3117350 () Bool)

(assert (=> b!7837795 (=> res!3117350 e!4634501)))

(assert (=> b!7837795 (= res!3117350 call!726576)))

(declare-fun b!7837796 () Bool)

(assert (=> b!7837796 (= e!4634502 (= lt!2678119 call!726576))))

(declare-fun b!7837797 () Bool)

(declare-fun res!3117345 () Bool)

(assert (=> b!7837797 (=> (not res!3117345) (not e!4634507))))

(assert (=> b!7837797 (= res!3117345 (not call!726576))))

(declare-fun b!7837798 () Bool)

(declare-fun res!3117351 () Bool)

(assert (=> b!7837798 (=> res!3117351 e!4634501)))

(declare-fun tail!15538 (List!73827) List!73827)

(assert (=> b!7837798 (= res!3117351 (not (isEmpty!42298 (tail!15538 s2Rec!453))))))

(declare-fun b!7837799 () Bool)

(assert (=> b!7837799 (= e!4634503 (not lt!2678119))))

(declare-fun b!7837800 () Bool)

(declare-fun derivativeStep!6267 (Regex!20990 C!42306) Regex!20990)

(assert (=> b!7837800 (= e!4634505 (matchR!10446 (derivativeStep!6267 r2!6199 (head!15997 s2Rec!453)) (tail!15538 s2Rec!453)))))

(declare-fun b!7837801 () Bool)

(declare-fun nullable!9308 (Regex!20990) Bool)

(assert (=> b!7837801 (= e!4634505 (nullable!9308 r2!6199))))

(declare-fun b!7837802 () Bool)

(declare-fun res!3117347 () Bool)

(assert (=> b!7837802 (=> (not res!3117347) (not e!4634507))))

(assert (=> b!7837802 (= res!3117347 (isEmpty!42298 (tail!15538 s2Rec!453)))))

(declare-fun b!7837803 () Bool)

(assert (=> b!7837803 (= e!4634507 (= (head!15997 s2Rec!453) (c!1441277 r2!6199)))))

(assert (= (and d!2351839 c!1441303) b!7837801))

(assert (= (and d!2351839 (not c!1441303)) b!7837800))

(assert (= (and d!2351839 c!1441304) b!7837796))

(assert (= (and d!2351839 (not c!1441304)) b!7837792))

(assert (= (and b!7837792 c!1441305) b!7837799))

(assert (= (and b!7837792 (not c!1441305)) b!7837793))

(assert (= (and b!7837793 (not res!3117352)) b!7837790))

(assert (= (and b!7837790 res!3117348) b!7837797))

(assert (= (and b!7837797 res!3117345) b!7837802))

(assert (= (and b!7837802 res!3117347) b!7837803))

(assert (= (and b!7837790 (not res!3117349)) b!7837791))

(assert (= (and b!7837791 res!3117346) b!7837795))

(assert (= (and b!7837795 (not res!3117350)) b!7837798))

(assert (= (and b!7837798 (not res!3117351)) b!7837794))

(assert (= (or b!7837796 b!7837795 b!7837797) bm!726571))

(declare-fun m!8252200 () Bool)

(assert (=> b!7837800 m!8252200))

(assert (=> b!7837800 m!8252200))

(declare-fun m!8252202 () Bool)

(assert (=> b!7837800 m!8252202))

(declare-fun m!8252204 () Bool)

(assert (=> b!7837800 m!8252204))

(assert (=> b!7837800 m!8252202))

(assert (=> b!7837800 m!8252204))

(declare-fun m!8252206 () Bool)

(assert (=> b!7837800 m!8252206))

(declare-fun m!8252208 () Bool)

(assert (=> bm!726571 m!8252208))

(assert (=> b!7837798 m!8252204))

(assert (=> b!7837798 m!8252204))

(declare-fun m!8252210 () Bool)

(assert (=> b!7837798 m!8252210))

(assert (=> d!2351839 m!8252208))

(assert (=> d!2351839 m!8252058))

(assert (=> b!7837802 m!8252204))

(assert (=> b!7837802 m!8252204))

(assert (=> b!7837802 m!8252210))

(assert (=> b!7837803 m!8252200))

(assert (=> b!7837794 m!8252200))

(declare-fun m!8252212 () Bool)

(assert (=> b!7837801 m!8252212))

(assert (=> b!7837621 d!2351839))

(declare-fun d!2351843 () Bool)

(assert (=> d!2351843 (= s1!4101 s1Rec!453)))

(declare-fun lt!2678125 () Unit!168802)

(declare-fun choose!59606 (List!73827 List!73827 List!73827) Unit!168802)

(assert (=> d!2351843 (= lt!2678125 (choose!59606 s1!4101 s1Rec!453 s!14274))))

(assert (=> d!2351843 (isPrefix!6340 s1!4101 s!14274)))

(assert (=> d!2351843 (= (lemmaIsPrefixSameLengthThenSameList!1556 s1!4101 s1Rec!453 s!14274) lt!2678125)))

(declare-fun bs!1966903 () Bool)

(assert (= bs!1966903 d!2351843))

(declare-fun m!8252216 () Bool)

(assert (=> bs!1966903 m!8252216))

(declare-fun m!8252220 () Bool)

(assert (=> bs!1966903 m!8252220))

(assert (=> b!7837622 d!2351843))

(declare-fun d!2351847 () Bool)

(assert (=> d!2351847 (= s2!3721 s2Rec!453)))

(declare-fun lt!2678128 () Unit!168802)

(declare-fun choose!59607 (List!73827 List!73827 List!73827 List!73827 List!73827) Unit!168802)

(assert (=> d!2351847 (= lt!2678128 (choose!59607 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> d!2351847 (isPrefix!6340 s1!4101 s!14274)))

(assert (=> d!2351847 (= (lemmaSamePrefixThenSameSuffix!2924 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274) lt!2678128)))

(declare-fun bs!1966904 () Bool)

(assert (= bs!1966904 d!2351847))

(declare-fun m!8252222 () Bool)

(assert (=> bs!1966904 m!8252222))

(assert (=> bs!1966904 m!8252220))

(assert (=> b!7837608 d!2351847))

(declare-fun b!7837827 () Bool)

(declare-fun e!4634525 () Bool)

(assert (=> b!7837827 (= e!4634525 (>= (size!42780 lt!2678063) (size!42780 s1Rec!453)))))

(declare-fun d!2351849 () Bool)

(assert (=> d!2351849 e!4634525))

(declare-fun res!3117376 () Bool)

(assert (=> d!2351849 (=> res!3117376 e!4634525)))

(declare-fun lt!2678134 () Bool)

(assert (=> d!2351849 (= res!3117376 (not lt!2678134))))

(declare-fun e!4634523 () Bool)

(assert (=> d!2351849 (= lt!2678134 e!4634523)))

(declare-fun res!3117374 () Bool)

(assert (=> d!2351849 (=> res!3117374 e!4634523)))

(assert (=> d!2351849 (= res!3117374 (is-Nil!73703 s1Rec!453))))

(assert (=> d!2351849 (= (isPrefix!6340 s1Rec!453 lt!2678063) lt!2678134)))

(declare-fun b!7837826 () Bool)

(declare-fun e!4634524 () Bool)

(assert (=> b!7837826 (= e!4634524 (isPrefix!6340 (tail!15538 s1Rec!453) (tail!15538 lt!2678063)))))

(declare-fun b!7837825 () Bool)

(declare-fun res!3117375 () Bool)

(assert (=> b!7837825 (=> (not res!3117375) (not e!4634524))))

(assert (=> b!7837825 (= res!3117375 (= (head!15997 s1Rec!453) (head!15997 lt!2678063)))))

(declare-fun b!7837824 () Bool)

(assert (=> b!7837824 (= e!4634523 e!4634524)))

(declare-fun res!3117373 () Bool)

(assert (=> b!7837824 (=> (not res!3117373) (not e!4634524))))

(assert (=> b!7837824 (= res!3117373 (not (is-Nil!73703 lt!2678063)))))

(assert (= (and d!2351849 (not res!3117374)) b!7837824))

(assert (= (and b!7837824 res!3117373) b!7837825))

(assert (= (and b!7837825 res!3117375) b!7837826))

(assert (= (and d!2351849 (not res!3117376)) b!7837827))

(declare-fun m!8252238 () Bool)

(assert (=> b!7837827 m!8252238))

(assert (=> b!7837827 m!8252094))

(declare-fun m!8252240 () Bool)

(assert (=> b!7837826 m!8252240))

(declare-fun m!8252242 () Bool)

(assert (=> b!7837826 m!8252242))

(assert (=> b!7837826 m!8252240))

(assert (=> b!7837826 m!8252242))

(declare-fun m!8252244 () Bool)

(assert (=> b!7837826 m!8252244))

(declare-fun m!8252246 () Bool)

(assert (=> b!7837825 m!8252246))

(declare-fun m!8252248 () Bool)

(assert (=> b!7837825 m!8252248))

(assert (=> b!7837625 d!2351849))

(declare-fun d!2351853 () Bool)

(assert (=> d!2351853 (isPrefix!6340 lt!2678057 (++!18024 lt!2678057 (t!388562 s2Rec!453)))))

(declare-fun lt!2678141 () Unit!168802)

(declare-fun choose!59608 (List!73827 List!73827) Unit!168802)

(assert (=> d!2351853 (= lt!2678141 (choose!59608 lt!2678057 (t!388562 s2Rec!453)))))

(assert (=> d!2351853 (= (lemmaConcatTwoListThenFirstIsPrefix!3786 lt!2678057 (t!388562 s2Rec!453)) lt!2678141)))

(declare-fun bs!1966907 () Bool)

(assert (= bs!1966907 d!2351853))

(assert (=> bs!1966907 m!8252080))

(assert (=> bs!1966907 m!8252080))

(declare-fun m!8252258 () Bool)

(assert (=> bs!1966907 m!8252258))

(declare-fun m!8252260 () Bool)

(assert (=> bs!1966907 m!8252260))

(assert (=> b!7837625 d!2351853))

(declare-fun b!7837835 () Bool)

(declare-fun e!4634531 () Bool)

(assert (=> b!7837835 (= e!4634531 (>= (size!42780 lt!2678062) (size!42780 s1!4101)))))

(declare-fun d!2351859 () Bool)

(assert (=> d!2351859 e!4634531))

(declare-fun res!3117384 () Bool)

(assert (=> d!2351859 (=> res!3117384 e!4634531)))

(declare-fun lt!2678143 () Bool)

(assert (=> d!2351859 (= res!3117384 (not lt!2678143))))

(declare-fun e!4634529 () Bool)

(assert (=> d!2351859 (= lt!2678143 e!4634529)))

(declare-fun res!3117382 () Bool)

(assert (=> d!2351859 (=> res!3117382 e!4634529)))

(assert (=> d!2351859 (= res!3117382 (is-Nil!73703 s1!4101))))

(assert (=> d!2351859 (= (isPrefix!6340 s1!4101 lt!2678062) lt!2678143)))

(declare-fun b!7837834 () Bool)

(declare-fun e!4634530 () Bool)

(assert (=> b!7837834 (= e!4634530 (isPrefix!6340 (tail!15538 s1!4101) (tail!15538 lt!2678062)))))

(declare-fun b!7837833 () Bool)

(declare-fun res!3117383 () Bool)

(assert (=> b!7837833 (=> (not res!3117383) (not e!4634530))))

(assert (=> b!7837833 (= res!3117383 (= (head!15997 s1!4101) (head!15997 lt!2678062)))))

(declare-fun b!7837832 () Bool)

(assert (=> b!7837832 (= e!4634529 e!4634530)))

(declare-fun res!3117381 () Bool)

(assert (=> b!7837832 (=> (not res!3117381) (not e!4634530))))

(assert (=> b!7837832 (= res!3117381 (not (is-Nil!73703 lt!2678062)))))

(assert (= (and d!2351859 (not res!3117382)) b!7837832))

(assert (= (and b!7837832 res!3117381) b!7837833))

(assert (= (and b!7837833 res!3117383) b!7837834))

(assert (= (and d!2351859 (not res!3117384)) b!7837835))

(declare-fun m!8252266 () Bool)

(assert (=> b!7837835 m!8252266))

(assert (=> b!7837835 m!8252088))

(declare-fun m!8252270 () Bool)

(assert (=> b!7837834 m!8252270))

(declare-fun m!8252272 () Bool)

(assert (=> b!7837834 m!8252272))

(assert (=> b!7837834 m!8252270))

(assert (=> b!7837834 m!8252272))

(declare-fun m!8252276 () Bool)

(assert (=> b!7837834 m!8252276))

(declare-fun m!8252278 () Bool)

(assert (=> b!7837833 m!8252278))

(declare-fun m!8252280 () Bool)

(assert (=> b!7837833 m!8252280))

(assert (=> b!7837625 d!2351859))

(declare-fun d!2351863 () Bool)

(declare-fun isEmpty!42299 (Option!17791) Bool)

(assert (=> d!2351863 (= (isDefined!14397 (findConcatSeparation!3821 r1!6261 r2!6199 lt!2678057 (t!388562 s2Rec!453) s!14274)) (not (isEmpty!42299 (findConcatSeparation!3821 r1!6261 r2!6199 lt!2678057 (t!388562 s2Rec!453) s!14274))))))

(declare-fun bs!1966908 () Bool)

(assert (= bs!1966908 d!2351863))

(assert (=> bs!1966908 m!8252068))

(declare-fun m!8252282 () Bool)

(assert (=> bs!1966908 m!8252282))

(assert (=> b!7837625 d!2351863))

(declare-fun d!2351865 () Bool)

(assert (=> d!2351865 (isPrefix!6340 lt!2678057 s1!4101)))

(declare-fun lt!2678146 () Unit!168802)

(declare-fun choose!59609 (List!73827 List!73827 List!73827) Unit!168802)

(assert (=> d!2351865 (= lt!2678146 (choose!59609 s1!4101 lt!2678057 s!14274))))

(assert (=> d!2351865 (isPrefix!6340 s1!4101 s!14274)))

(assert (=> d!2351865 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!946 s1!4101 lt!2678057 s!14274) lt!2678146)))

(declare-fun bs!1966909 () Bool)

(assert (= bs!1966909 d!2351865))

(assert (=> bs!1966909 m!8252062))

(declare-fun m!8252284 () Bool)

(assert (=> bs!1966909 m!8252284))

(assert (=> bs!1966909 m!8252220))

(assert (=> b!7837625 d!2351865))

(declare-fun b!7837839 () Bool)

(declare-fun e!4634534 () Bool)

(assert (=> b!7837839 (= e!4634534 (>= (size!42780 lt!2678068) (size!42780 lt!2678057)))))

(declare-fun d!2351867 () Bool)

(assert (=> d!2351867 e!4634534))

(declare-fun res!3117388 () Bool)

(assert (=> d!2351867 (=> res!3117388 e!4634534)))

(declare-fun lt!2678147 () Bool)

(assert (=> d!2351867 (= res!3117388 (not lt!2678147))))

(declare-fun e!4634532 () Bool)

(assert (=> d!2351867 (= lt!2678147 e!4634532)))

(declare-fun res!3117386 () Bool)

(assert (=> d!2351867 (=> res!3117386 e!4634532)))

(assert (=> d!2351867 (= res!3117386 (is-Nil!73703 lt!2678057))))

(assert (=> d!2351867 (= (isPrefix!6340 lt!2678057 lt!2678068) lt!2678147)))

(declare-fun b!7837838 () Bool)

(declare-fun e!4634533 () Bool)

(assert (=> b!7837838 (= e!4634533 (isPrefix!6340 (tail!15538 lt!2678057) (tail!15538 lt!2678068)))))

(declare-fun b!7837837 () Bool)

(declare-fun res!3117387 () Bool)

(assert (=> b!7837837 (=> (not res!3117387) (not e!4634533))))

(assert (=> b!7837837 (= res!3117387 (= (head!15997 lt!2678057) (head!15997 lt!2678068)))))

(declare-fun b!7837836 () Bool)

(assert (=> b!7837836 (= e!4634532 e!4634533)))

(declare-fun res!3117385 () Bool)

(assert (=> b!7837836 (=> (not res!3117385) (not e!4634533))))

(assert (=> b!7837836 (= res!3117385 (not (is-Nil!73703 lt!2678068)))))

(assert (= (and d!2351867 (not res!3117386)) b!7837836))

(assert (= (and b!7837836 res!3117385) b!7837837))

(assert (= (and b!7837837 res!3117387) b!7837838))

(assert (= (and d!2351867 (not res!3117388)) b!7837839))

(declare-fun m!8252286 () Bool)

(assert (=> b!7837839 m!8252286))

(declare-fun m!8252288 () Bool)

(assert (=> b!7837839 m!8252288))

(declare-fun m!8252290 () Bool)

(assert (=> b!7837838 m!8252290))

(declare-fun m!8252292 () Bool)

(assert (=> b!7837838 m!8252292))

(assert (=> b!7837838 m!8252290))

(assert (=> b!7837838 m!8252292))

(declare-fun m!8252294 () Bool)

(assert (=> b!7837838 m!8252294))

(declare-fun m!8252296 () Bool)

(assert (=> b!7837837 m!8252296))

(declare-fun m!8252298 () Bool)

(assert (=> b!7837837 m!8252298))

(assert (=> b!7837625 d!2351867))

(declare-fun b!7837847 () Bool)

(declare-fun e!4634539 () Bool)

(assert (=> b!7837847 (= e!4634539 (>= (size!42780 s1!4101) (size!42780 lt!2678057)))))

(declare-fun d!2351869 () Bool)

(assert (=> d!2351869 e!4634539))

(declare-fun res!3117392 () Bool)

(assert (=> d!2351869 (=> res!3117392 e!4634539)))

(declare-fun lt!2678150 () Bool)

(assert (=> d!2351869 (= res!3117392 (not lt!2678150))))

(declare-fun e!4634537 () Bool)

(assert (=> d!2351869 (= lt!2678150 e!4634537)))

(declare-fun res!3117390 () Bool)

(assert (=> d!2351869 (=> res!3117390 e!4634537)))

(assert (=> d!2351869 (= res!3117390 (is-Nil!73703 lt!2678057))))

(assert (=> d!2351869 (= (isPrefix!6340 lt!2678057 s1!4101) lt!2678150)))

(declare-fun b!7837846 () Bool)

(declare-fun e!4634538 () Bool)

(assert (=> b!7837846 (= e!4634538 (isPrefix!6340 (tail!15538 lt!2678057) (tail!15538 s1!4101)))))

(declare-fun b!7837845 () Bool)

(declare-fun res!3117391 () Bool)

(assert (=> b!7837845 (=> (not res!3117391) (not e!4634538))))

(assert (=> b!7837845 (= res!3117391 (= (head!15997 lt!2678057) (head!15997 s1!4101)))))

(declare-fun b!7837844 () Bool)

(assert (=> b!7837844 (= e!4634537 e!4634538)))

(declare-fun res!3117389 () Bool)

(assert (=> b!7837844 (=> (not res!3117389) (not e!4634538))))

(assert (=> b!7837844 (= res!3117389 (not (is-Nil!73703 s1!4101)))))

(assert (= (and d!2351869 (not res!3117390)) b!7837844))

(assert (= (and b!7837844 res!3117389) b!7837845))

(assert (= (and b!7837845 res!3117391) b!7837846))

(assert (= (and d!2351869 (not res!3117392)) b!7837847))

(assert (=> b!7837847 m!8252088))

(assert (=> b!7837847 m!8252288))

(assert (=> b!7837846 m!8252290))

(assert (=> b!7837846 m!8252270))

(assert (=> b!7837846 m!8252290))

(assert (=> b!7837846 m!8252270))

(declare-fun m!8252300 () Bool)

(assert (=> b!7837846 m!8252300))

(assert (=> b!7837845 m!8252296))

(assert (=> b!7837845 m!8252278))

(assert (=> b!7837625 d!2351869))

(declare-fun d!2351871 () Bool)

(declare-fun lt!2678153 () Int)

(assert (=> d!2351871 (>= lt!2678153 0)))

(declare-fun e!4634544 () Int)

(assert (=> d!2351871 (= lt!2678153 e!4634544)))

(declare-fun c!1441310 () Bool)

(assert (=> d!2351871 (= c!1441310 (is-Nil!73703 s1Rec!453))))

(assert (=> d!2351871 (= (size!42780 s1Rec!453) lt!2678153)))

(declare-fun b!7837856 () Bool)

(assert (=> b!7837856 (= e!4634544 0)))

(declare-fun b!7837857 () Bool)

(assert (=> b!7837857 (= e!4634544 (+ 1 (size!42780 (t!388562 s1Rec!453))))))

(assert (= (and d!2351871 c!1441310) b!7837856))

(assert (= (and d!2351871 (not c!1441310)) b!7837857))

(declare-fun m!8252302 () Bool)

(assert (=> b!7837857 m!8252302))

(assert (=> b!7837625 d!2351871))

(declare-fun d!2351873 () Bool)

(assert (=> d!2351873 (= (++!18024 (++!18024 s1Rec!453 (Cons!73703 (h!80151 s2Rec!453) Nil!73703)) (t!388562 s2Rec!453)) s!14274)))

(declare-fun lt!2678157 () Unit!168802)

(declare-fun choose!59610 (List!73827 C!42306 List!73827 List!73827) Unit!168802)

(assert (=> d!2351873 (= lt!2678157 (choose!59610 s1Rec!453 (h!80151 s2Rec!453) (t!388562 s2Rec!453) s!14274))))

(assert (=> d!2351873 (= (++!18024 s1Rec!453 (Cons!73703 (h!80151 s2Rec!453) (t!388562 s2Rec!453))) s!14274)))

(assert (=> d!2351873 (= (lemmaMoveElementToOtherListKeepsConcatEq!3451 s1Rec!453 (h!80151 s2Rec!453) (t!388562 s2Rec!453) s!14274) lt!2678157)))

(declare-fun bs!1966910 () Bool)

(assert (= bs!1966910 d!2351873))

(assert (=> bs!1966910 m!8252070))

(assert (=> bs!1966910 m!8252070))

(declare-fun m!8252312 () Bool)

(assert (=> bs!1966910 m!8252312))

(declare-fun m!8252316 () Bool)

(assert (=> bs!1966910 m!8252316))

(declare-fun m!8252318 () Bool)

(assert (=> bs!1966910 m!8252318))

(assert (=> b!7837625 d!2351873))

(declare-fun d!2351875 () Bool)

(assert (=> d!2351875 (= (isDefined!14397 (findConcatSeparation!3821 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274)) (not (isEmpty!42299 (findConcatSeparation!3821 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274))))))

(declare-fun bs!1966911 () Bool)

(assert (= bs!1966911 d!2351875))

(assert (=> bs!1966911 m!8252060))

(declare-fun m!8252322 () Bool)

(assert (=> bs!1966911 m!8252322))

(assert (=> b!7837625 d!2351875))

(declare-fun d!2351879 () Bool)

(declare-fun lt!2678158 () Int)

(assert (=> d!2351879 (>= lt!2678158 0)))

(declare-fun e!4634547 () Int)

(assert (=> d!2351879 (= lt!2678158 e!4634547)))

(declare-fun c!1441312 () Bool)

(assert (=> d!2351879 (= c!1441312 (is-Nil!73703 s1!4101))))

(assert (=> d!2351879 (= (size!42780 s1!4101) lt!2678158)))

(declare-fun b!7837862 () Bool)

(assert (=> b!7837862 (= e!4634547 0)))

(declare-fun b!7837863 () Bool)

(assert (=> b!7837863 (= e!4634547 (+ 1 (size!42780 (t!388562 s1!4101))))))

(assert (= (and d!2351879 c!1441312) b!7837862))

(assert (= (and d!2351879 (not c!1441312)) b!7837863))

(declare-fun m!8252324 () Bool)

(assert (=> b!7837863 m!8252324))

(assert (=> b!7837625 d!2351879))

(declare-fun b!7837886 () Bool)

(declare-fun e!4634561 () Bool)

(assert (=> b!7837886 (= e!4634561 (matchR!10446 r2!6199 s2Rec!453))))

(declare-fun b!7837887 () Bool)

(declare-fun e!4634562 () Bool)

(declare-fun lt!2678172 () Option!17791)

(assert (=> b!7837887 (= e!4634562 (not (isDefined!14397 lt!2678172)))))

(declare-fun b!7837888 () Bool)

(declare-fun lt!2678170 () Unit!168802)

(declare-fun lt!2678171 () Unit!168802)

(assert (=> b!7837888 (= lt!2678170 lt!2678171)))

(assert (=> b!7837888 (= (++!18024 (++!18024 s1Rec!453 (Cons!73703 (h!80151 s2Rec!453) Nil!73703)) (t!388562 s2Rec!453)) s!14274)))

(assert (=> b!7837888 (= lt!2678171 (lemmaMoveElementToOtherListKeepsConcatEq!3451 s1Rec!453 (h!80151 s2Rec!453) (t!388562 s2Rec!453) s!14274))))

(declare-fun e!4634565 () Option!17791)

(assert (=> b!7837888 (= e!4634565 (findConcatSeparation!3821 r1!6261 r2!6199 (++!18024 s1Rec!453 (Cons!73703 (h!80151 s2Rec!453) Nil!73703)) (t!388562 s2Rec!453) s!14274))))

(declare-fun b!7837889 () Bool)

(declare-fun e!4634563 () Option!17791)

(assert (=> b!7837889 (= e!4634563 e!4634565)))

(declare-fun c!1441317 () Bool)

(assert (=> b!7837889 (= c!1441317 (is-Nil!73703 s2Rec!453))))

(declare-fun b!7837890 () Bool)

(declare-fun res!3117417 () Bool)

(declare-fun e!4634564 () Bool)

(assert (=> b!7837890 (=> (not res!3117417) (not e!4634564))))

(declare-fun get!26403 (Option!17791) tuple2!69994)

(assert (=> b!7837890 (= res!3117417 (matchR!10446 r2!6199 (_2!38300 (get!26403 lt!2678172))))))

(declare-fun b!7837891 () Bool)

(declare-fun res!3117413 () Bool)

(assert (=> b!7837891 (=> (not res!3117413) (not e!4634564))))

(assert (=> b!7837891 (= res!3117413 (matchR!10446 r1!6261 (_1!38300 (get!26403 lt!2678172))))))

(declare-fun b!7837892 () Bool)

(assert (=> b!7837892 (= e!4634564 (= (++!18024 (_1!38300 (get!26403 lt!2678172)) (_2!38300 (get!26403 lt!2678172))) s!14274))))

(declare-fun b!7837893 () Bool)

(assert (=> b!7837893 (= e!4634563 (Some!17790 (tuple2!69995 s1Rec!453 s2Rec!453)))))

(declare-fun d!2351881 () Bool)

(assert (=> d!2351881 e!4634562))

(declare-fun res!3117415 () Bool)

(assert (=> d!2351881 (=> res!3117415 e!4634562)))

(assert (=> d!2351881 (= res!3117415 e!4634564)))

(declare-fun res!3117416 () Bool)

(assert (=> d!2351881 (=> (not res!3117416) (not e!4634564))))

(assert (=> d!2351881 (= res!3117416 (isDefined!14397 lt!2678172))))

(assert (=> d!2351881 (= lt!2678172 e!4634563)))

(declare-fun c!1441318 () Bool)

(assert (=> d!2351881 (= c!1441318 e!4634561)))

(declare-fun res!3117414 () Bool)

(assert (=> d!2351881 (=> (not res!3117414) (not e!4634561))))

(assert (=> d!2351881 (= res!3117414 (matchR!10446 r1!6261 s1Rec!453))))

(assert (=> d!2351881 (validRegex!11404 r1!6261)))

(assert (=> d!2351881 (= (findConcatSeparation!3821 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274) lt!2678172)))

(declare-fun b!7837894 () Bool)

(assert (=> b!7837894 (= e!4634565 None!17790)))

(assert (= (and d!2351881 res!3117414) b!7837886))

(assert (= (and d!2351881 c!1441318) b!7837893))

(assert (= (and d!2351881 (not c!1441318)) b!7837889))

(assert (= (and b!7837889 c!1441317) b!7837894))

(assert (= (and b!7837889 (not c!1441317)) b!7837888))

(assert (= (and d!2351881 res!3117416) b!7837891))

(assert (= (and b!7837891 res!3117413) b!7837890))

(assert (= (and b!7837890 res!3117417) b!7837892))

(assert (= (and d!2351881 (not res!3117415)) b!7837887))

(declare-fun m!8252336 () Bool)

(assert (=> b!7837887 m!8252336))

(declare-fun m!8252338 () Bool)

(assert (=> b!7837892 m!8252338))

(declare-fun m!8252340 () Bool)

(assert (=> b!7837892 m!8252340))

(assert (=> b!7837891 m!8252338))

(declare-fun m!8252342 () Bool)

(assert (=> b!7837891 m!8252342))

(assert (=> b!7837888 m!8252070))

(assert (=> b!7837888 m!8252070))

(assert (=> b!7837888 m!8252312))

(assert (=> b!7837888 m!8252086))

(assert (=> b!7837888 m!8252070))

(declare-fun m!8252344 () Bool)

(assert (=> b!7837888 m!8252344))

(assert (=> b!7837886 m!8252112))

(assert (=> d!2351881 m!8252336))

(assert (=> d!2351881 m!8252104))

(assert (=> d!2351881 m!8252100))

(assert (=> b!7837890 m!8252338))

(declare-fun m!8252346 () Bool)

(assert (=> b!7837890 m!8252346))

(assert (=> b!7837625 d!2351881))

(declare-fun d!2351891 () Bool)

(assert (=> d!2351891 (isPrefix!6340 s1Rec!453 (++!18024 s1Rec!453 s2Rec!453))))

(declare-fun lt!2678175 () Unit!168802)

(assert (=> d!2351891 (= lt!2678175 (choose!59608 s1Rec!453 s2Rec!453))))

(assert (=> d!2351891 (= (lemmaConcatTwoListThenFirstIsPrefix!3786 s1Rec!453 s2Rec!453) lt!2678175)))

(declare-fun bs!1966915 () Bool)

(assert (= bs!1966915 d!2351891))

(assert (=> bs!1966915 m!8252110))

(assert (=> bs!1966915 m!8252110))

(declare-fun m!8252348 () Bool)

(assert (=> bs!1966915 m!8252348))

(declare-fun m!8252350 () Bool)

(assert (=> bs!1966915 m!8252350))

(assert (=> b!7837625 d!2351891))

(declare-fun d!2351893 () Bool)

(assert (=> d!2351893 (isDefined!14397 (findConcatSeparation!3821 r1!6261 r2!6199 lt!2678057 (t!388562 s2Rec!453) s!14274))))

(declare-fun lt!2678180 () Unit!168802)

(declare-fun choose!59611 (Regex!20990 Regex!20990 List!73827 List!73827 List!73827 List!73827 List!73827) Unit!168802)

(assert (=> d!2351893 (= lt!2678180 (choose!59611 r1!6261 r2!6199 s1!4101 s2!3721 s!14274 lt!2678057 (t!388562 s2Rec!453)))))

(assert (=> d!2351893 (validRegex!11404 r1!6261)))

(assert (=> d!2351893 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!135 r1!6261 r2!6199 s1!4101 s2!3721 s!14274 lt!2678057 (t!388562 s2Rec!453)) lt!2678180)))

(declare-fun bs!1966916 () Bool)

(assert (= bs!1966916 d!2351893))

(assert (=> bs!1966916 m!8252068))

(assert (=> bs!1966916 m!8252068))

(assert (=> bs!1966916 m!8252090))

(declare-fun m!8252366 () Bool)

(assert (=> bs!1966916 m!8252366))

(assert (=> bs!1966916 m!8252100))

(assert (=> b!7837625 d!2351893))

(declare-fun b!7837905 () Bool)

(declare-fun e!4634571 () Bool)

(assert (=> b!7837905 (= e!4634571 (matchR!10446 r2!6199 (t!388562 s2Rec!453)))))

(declare-fun b!7837906 () Bool)

(declare-fun e!4634572 () Bool)

(declare-fun lt!2678183 () Option!17791)

(assert (=> b!7837906 (= e!4634572 (not (isDefined!14397 lt!2678183)))))

(declare-fun b!7837907 () Bool)

(declare-fun lt!2678181 () Unit!168802)

(declare-fun lt!2678182 () Unit!168802)

(assert (=> b!7837907 (= lt!2678181 lt!2678182)))

(assert (=> b!7837907 (= (++!18024 (++!18024 lt!2678057 (Cons!73703 (h!80151 (t!388562 s2Rec!453)) Nil!73703)) (t!388562 (t!388562 s2Rec!453))) s!14274)))

(assert (=> b!7837907 (= lt!2678182 (lemmaMoveElementToOtherListKeepsConcatEq!3451 lt!2678057 (h!80151 (t!388562 s2Rec!453)) (t!388562 (t!388562 s2Rec!453)) s!14274))))

(declare-fun e!4634575 () Option!17791)

(assert (=> b!7837907 (= e!4634575 (findConcatSeparation!3821 r1!6261 r2!6199 (++!18024 lt!2678057 (Cons!73703 (h!80151 (t!388562 s2Rec!453)) Nil!73703)) (t!388562 (t!388562 s2Rec!453)) s!14274))))

(declare-fun b!7837908 () Bool)

(declare-fun e!4634573 () Option!17791)

(assert (=> b!7837908 (= e!4634573 e!4634575)))

(declare-fun c!1441323 () Bool)

(assert (=> b!7837908 (= c!1441323 (is-Nil!73703 (t!388562 s2Rec!453)))))

(declare-fun b!7837909 () Bool)

(declare-fun res!3117424 () Bool)

(declare-fun e!4634574 () Bool)

(assert (=> b!7837909 (=> (not res!3117424) (not e!4634574))))

(assert (=> b!7837909 (= res!3117424 (matchR!10446 r2!6199 (_2!38300 (get!26403 lt!2678183))))))

(declare-fun b!7837910 () Bool)

(declare-fun res!3117420 () Bool)

(assert (=> b!7837910 (=> (not res!3117420) (not e!4634574))))

(assert (=> b!7837910 (= res!3117420 (matchR!10446 r1!6261 (_1!38300 (get!26403 lt!2678183))))))

(declare-fun b!7837911 () Bool)

(assert (=> b!7837911 (= e!4634574 (= (++!18024 (_1!38300 (get!26403 lt!2678183)) (_2!38300 (get!26403 lt!2678183))) s!14274))))

(declare-fun b!7837912 () Bool)

(assert (=> b!7837912 (= e!4634573 (Some!17790 (tuple2!69995 lt!2678057 (t!388562 s2Rec!453))))))

(declare-fun d!2351899 () Bool)

(assert (=> d!2351899 e!4634572))

(declare-fun res!3117422 () Bool)

(assert (=> d!2351899 (=> res!3117422 e!4634572)))

(assert (=> d!2351899 (= res!3117422 e!4634574)))

(declare-fun res!3117423 () Bool)

(assert (=> d!2351899 (=> (not res!3117423) (not e!4634574))))

(assert (=> d!2351899 (= res!3117423 (isDefined!14397 lt!2678183))))

(assert (=> d!2351899 (= lt!2678183 e!4634573)))

(declare-fun c!1441324 () Bool)

(assert (=> d!2351899 (= c!1441324 e!4634571)))

(declare-fun res!3117421 () Bool)

(assert (=> d!2351899 (=> (not res!3117421) (not e!4634571))))

(assert (=> d!2351899 (= res!3117421 (matchR!10446 r1!6261 lt!2678057))))

(assert (=> d!2351899 (validRegex!11404 r1!6261)))

(assert (=> d!2351899 (= (findConcatSeparation!3821 r1!6261 r2!6199 lt!2678057 (t!388562 s2Rec!453) s!14274) lt!2678183)))

(declare-fun b!7837913 () Bool)

(assert (=> b!7837913 (= e!4634575 None!17790)))

(assert (= (and d!2351899 res!3117421) b!7837905))

(assert (= (and d!2351899 c!1441324) b!7837912))

(assert (= (and d!2351899 (not c!1441324)) b!7837908))

(assert (= (and b!7837908 c!1441323) b!7837913))

(assert (= (and b!7837908 (not c!1441323)) b!7837907))

(assert (= (and d!2351899 res!3117423) b!7837910))

(assert (= (and b!7837910 res!3117420) b!7837909))

(assert (= (and b!7837909 res!3117424) b!7837911))

(assert (= (and d!2351899 (not res!3117422)) b!7837906))

(declare-fun m!8252368 () Bool)

(assert (=> b!7837906 m!8252368))

(declare-fun m!8252370 () Bool)

(assert (=> b!7837911 m!8252370))

(declare-fun m!8252372 () Bool)

(assert (=> b!7837911 m!8252372))

(assert (=> b!7837910 m!8252370))

(declare-fun m!8252374 () Bool)

(assert (=> b!7837910 m!8252374))

(declare-fun m!8252376 () Bool)

(assert (=> b!7837907 m!8252376))

(assert (=> b!7837907 m!8252376))

(declare-fun m!8252378 () Bool)

(assert (=> b!7837907 m!8252378))

(declare-fun m!8252380 () Bool)

(assert (=> b!7837907 m!8252380))

(assert (=> b!7837907 m!8252376))

(declare-fun m!8252382 () Bool)

(assert (=> b!7837907 m!8252382))

(declare-fun m!8252384 () Bool)

(assert (=> b!7837905 m!8252384))

(assert (=> d!2351899 m!8252368))

(declare-fun m!8252386 () Bool)

(assert (=> d!2351899 m!8252386))

(assert (=> d!2351899 m!8252100))

(assert (=> b!7837909 m!8252370))

(declare-fun m!8252388 () Bool)

(assert (=> b!7837909 m!8252388))

(assert (=> b!7837625 d!2351899))

(declare-fun d!2351901 () Bool)

(declare-fun e!4634576 () Bool)

(assert (=> d!2351901 e!4634576))

(declare-fun res!3117425 () Bool)

(assert (=> d!2351901 (=> (not res!3117425) (not e!4634576))))

(declare-fun lt!2678184 () List!73827)

(assert (=> d!2351901 (= res!3117425 (= (content!15649 lt!2678184) (set.union (content!15649 s1Rec!453) (content!15649 (Cons!73703 (h!80151 s2Rec!453) Nil!73703)))))))

(declare-fun e!4634577 () List!73827)

(assert (=> d!2351901 (= lt!2678184 e!4634577)))

(declare-fun c!1441325 () Bool)

(assert (=> d!2351901 (= c!1441325 (is-Nil!73703 s1Rec!453))))

(assert (=> d!2351901 (= (++!18024 s1Rec!453 (Cons!73703 (h!80151 s2Rec!453) Nil!73703)) lt!2678184)))

(declare-fun b!7837916 () Bool)

(declare-fun res!3117426 () Bool)

(assert (=> b!7837916 (=> (not res!3117426) (not e!4634576))))

(assert (=> b!7837916 (= res!3117426 (= (size!42780 lt!2678184) (+ (size!42780 s1Rec!453) (size!42780 (Cons!73703 (h!80151 s2Rec!453) Nil!73703)))))))

(declare-fun b!7837914 () Bool)

(assert (=> b!7837914 (= e!4634577 (Cons!73703 (h!80151 s2Rec!453) Nil!73703))))

(declare-fun b!7837915 () Bool)

(assert (=> b!7837915 (= e!4634577 (Cons!73703 (h!80151 s1Rec!453) (++!18024 (t!388562 s1Rec!453) (Cons!73703 (h!80151 s2Rec!453) Nil!73703))))))

(declare-fun b!7837917 () Bool)

(assert (=> b!7837917 (= e!4634576 (or (not (= (Cons!73703 (h!80151 s2Rec!453) Nil!73703) Nil!73703)) (= lt!2678184 s1Rec!453)))))

(assert (= (and d!2351901 c!1441325) b!7837914))

(assert (= (and d!2351901 (not c!1441325)) b!7837915))

(assert (= (and d!2351901 res!3117425) b!7837916))

(assert (= (and b!7837916 res!3117426) b!7837917))

(declare-fun m!8252390 () Bool)

(assert (=> d!2351901 m!8252390))

(declare-fun m!8252392 () Bool)

(assert (=> d!2351901 m!8252392))

(declare-fun m!8252394 () Bool)

(assert (=> d!2351901 m!8252394))

(declare-fun m!8252396 () Bool)

(assert (=> b!7837916 m!8252396))

(assert (=> b!7837916 m!8252094))

(declare-fun m!8252398 () Bool)

(assert (=> b!7837916 m!8252398))

(declare-fun m!8252400 () Bool)

(assert (=> b!7837915 m!8252400))

(assert (=> b!7837625 d!2351901))

(declare-fun d!2351903 () Bool)

(declare-fun e!4634578 () Bool)

(assert (=> d!2351903 e!4634578))

(declare-fun res!3117427 () Bool)

(assert (=> d!2351903 (=> (not res!3117427) (not e!4634578))))

(declare-fun lt!2678185 () List!73827)

(assert (=> d!2351903 (= res!3117427 (= (content!15649 lt!2678185) (set.union (content!15649 lt!2678057) (content!15649 (t!388562 s2Rec!453)))))))

(declare-fun e!4634579 () List!73827)

(assert (=> d!2351903 (= lt!2678185 e!4634579)))

(declare-fun c!1441326 () Bool)

(assert (=> d!2351903 (= c!1441326 (is-Nil!73703 lt!2678057))))

(assert (=> d!2351903 (= (++!18024 lt!2678057 (t!388562 s2Rec!453)) lt!2678185)))

(declare-fun b!7837920 () Bool)

(declare-fun res!3117428 () Bool)

(assert (=> b!7837920 (=> (not res!3117428) (not e!4634578))))

(assert (=> b!7837920 (= res!3117428 (= (size!42780 lt!2678185) (+ (size!42780 lt!2678057) (size!42780 (t!388562 s2Rec!453)))))))

(declare-fun b!7837918 () Bool)

(assert (=> b!7837918 (= e!4634579 (t!388562 s2Rec!453))))

(declare-fun b!7837919 () Bool)

(assert (=> b!7837919 (= e!4634579 (Cons!73703 (h!80151 lt!2678057) (++!18024 (t!388562 lt!2678057) (t!388562 s2Rec!453))))))

(declare-fun b!7837921 () Bool)

(assert (=> b!7837921 (= e!4634578 (or (not (= (t!388562 s2Rec!453) Nil!73703)) (= lt!2678185 lt!2678057)))))

(assert (= (and d!2351903 c!1441326) b!7837918))

(assert (= (and d!2351903 (not c!1441326)) b!7837919))

(assert (= (and d!2351903 res!3117427) b!7837920))

(assert (= (and b!7837920 res!3117428) b!7837921))

(declare-fun m!8252402 () Bool)

(assert (=> d!2351903 m!8252402))

(declare-fun m!8252404 () Bool)

(assert (=> d!2351903 m!8252404))

(declare-fun m!8252406 () Bool)

(assert (=> d!2351903 m!8252406))

(declare-fun m!8252408 () Bool)

(assert (=> b!7837920 m!8252408))

(assert (=> b!7837920 m!8252288))

(declare-fun m!8252410 () Bool)

(assert (=> b!7837920 m!8252410))

(declare-fun m!8252412 () Bool)

(assert (=> b!7837919 m!8252412))

(assert (=> b!7837625 d!2351903))

(declare-fun d!2351905 () Bool)

(assert (=> d!2351905 (isPrefix!6340 s1!4101 (++!18024 s1!4101 s2!3721))))

(declare-fun lt!2678188 () Unit!168802)

(assert (=> d!2351905 (= lt!2678188 (choose!59608 s1!4101 s2!3721))))

(assert (=> d!2351905 (= (lemmaConcatTwoListThenFirstIsPrefix!3786 s1!4101 s2!3721) lt!2678188)))

(declare-fun bs!1966917 () Bool)

(assert (= bs!1966917 d!2351905))

(assert (=> bs!1966917 m!8252114))

(assert (=> bs!1966917 m!8252114))

(declare-fun m!8252414 () Bool)

(assert (=> bs!1966917 m!8252414))

(declare-fun m!8252416 () Bool)

(assert (=> bs!1966917 m!8252416))

(assert (=> b!7837625 d!2351905))

(declare-fun b!7837925 () Bool)

(declare-fun e!4634582 () Bool)

(assert (=> b!7837925 (= e!4634582 (>= (size!42780 s1!4101) (size!42780 s1Rec!453)))))

(declare-fun d!2351907 () Bool)

(assert (=> d!2351907 e!4634582))

(declare-fun res!3117432 () Bool)

(assert (=> d!2351907 (=> res!3117432 e!4634582)))

(declare-fun lt!2678189 () Bool)

(assert (=> d!2351907 (= res!3117432 (not lt!2678189))))

(declare-fun e!4634580 () Bool)

(assert (=> d!2351907 (= lt!2678189 e!4634580)))

(declare-fun res!3117430 () Bool)

(assert (=> d!2351907 (=> res!3117430 e!4634580)))

(assert (=> d!2351907 (= res!3117430 (is-Nil!73703 s1Rec!453))))

(assert (=> d!2351907 (= (isPrefix!6340 s1Rec!453 s1!4101) lt!2678189)))

(declare-fun b!7837924 () Bool)

(declare-fun e!4634581 () Bool)

(assert (=> b!7837924 (= e!4634581 (isPrefix!6340 (tail!15538 s1Rec!453) (tail!15538 s1!4101)))))

(declare-fun b!7837923 () Bool)

(declare-fun res!3117431 () Bool)

(assert (=> b!7837923 (=> (not res!3117431) (not e!4634581))))

(assert (=> b!7837923 (= res!3117431 (= (head!15997 s1Rec!453) (head!15997 s1!4101)))))

(declare-fun b!7837922 () Bool)

(assert (=> b!7837922 (= e!4634580 e!4634581)))

(declare-fun res!3117429 () Bool)

(assert (=> b!7837922 (=> (not res!3117429) (not e!4634581))))

(assert (=> b!7837922 (= res!3117429 (not (is-Nil!73703 s1!4101)))))

(assert (= (and d!2351907 (not res!3117430)) b!7837922))

(assert (= (and b!7837922 res!3117429) b!7837923))

(assert (= (and b!7837923 res!3117431) b!7837924))

(assert (= (and d!2351907 (not res!3117432)) b!7837925))

(assert (=> b!7837925 m!8252088))

(assert (=> b!7837925 m!8252094))

(assert (=> b!7837924 m!8252240))

(assert (=> b!7837924 m!8252270))

(assert (=> b!7837924 m!8252240))

(assert (=> b!7837924 m!8252270))

(declare-fun m!8252418 () Bool)

(assert (=> b!7837924 m!8252418))

(assert (=> b!7837923 m!8252246))

(assert (=> b!7837923 m!8252278))

(assert (=> b!7837604 d!2351907))

(declare-fun b!7837926 () Bool)

(declare-fun res!3117437 () Bool)

(declare-fun e!4634588 () Bool)

(assert (=> b!7837926 (=> res!3117437 e!4634588)))

(declare-fun e!4634589 () Bool)

(assert (=> b!7837926 (= res!3117437 e!4634589)))

(declare-fun res!3117436 () Bool)

(assert (=> b!7837926 (=> (not res!3117436) (not e!4634589))))

(declare-fun lt!2678190 () Bool)

(assert (=> b!7837926 (= res!3117436 lt!2678190)))

(declare-fun b!7837927 () Bool)

(declare-fun e!4634586 () Bool)

(assert (=> b!7837927 (= e!4634588 e!4634586)))

(declare-fun res!3117434 () Bool)

(assert (=> b!7837927 (=> (not res!3117434) (not e!4634586))))

(assert (=> b!7837927 (= res!3117434 (not lt!2678190))))

(declare-fun b!7837928 () Bool)

(declare-fun e!4634584 () Bool)

(declare-fun e!4634585 () Bool)

(assert (=> b!7837928 (= e!4634584 e!4634585)))

(declare-fun c!1441329 () Bool)

(assert (=> b!7837928 (= c!1441329 (is-EmptyLang!20990 r2!6199))))

(declare-fun d!2351909 () Bool)

(assert (=> d!2351909 e!4634584))

(declare-fun c!1441328 () Bool)

(assert (=> d!2351909 (= c!1441328 (is-EmptyExpr!20990 r2!6199))))

(declare-fun e!4634587 () Bool)

(assert (=> d!2351909 (= lt!2678190 e!4634587)))

(declare-fun c!1441327 () Bool)

(assert (=> d!2351909 (= c!1441327 (isEmpty!42298 s2!3721))))

(assert (=> d!2351909 (validRegex!11404 r2!6199)))

(assert (=> d!2351909 (= (matchR!10446 r2!6199 s2!3721) lt!2678190)))

(declare-fun b!7837929 () Bool)

(declare-fun res!3117440 () Bool)

(assert (=> b!7837929 (=> res!3117440 e!4634588)))

(assert (=> b!7837929 (= res!3117440 (not (is-ElementMatch!20990 r2!6199)))))

(assert (=> b!7837929 (= e!4634585 e!4634588)))

(declare-fun bm!726572 () Bool)

(declare-fun call!726577 () Bool)

(assert (=> bm!726572 (= call!726577 (isEmpty!42298 s2!3721))))

(declare-fun b!7837930 () Bool)

(declare-fun e!4634583 () Bool)

(assert (=> b!7837930 (= e!4634583 (not (= (head!15997 s2!3721) (c!1441277 r2!6199))))))

(declare-fun b!7837931 () Bool)

(assert (=> b!7837931 (= e!4634586 e!4634583)))

(declare-fun res!3117438 () Bool)

(assert (=> b!7837931 (=> res!3117438 e!4634583)))

(assert (=> b!7837931 (= res!3117438 call!726577)))

(declare-fun b!7837932 () Bool)

(assert (=> b!7837932 (= e!4634584 (= lt!2678190 call!726577))))

(declare-fun b!7837933 () Bool)

(declare-fun res!3117433 () Bool)

(assert (=> b!7837933 (=> (not res!3117433) (not e!4634589))))

(assert (=> b!7837933 (= res!3117433 (not call!726577))))

(declare-fun b!7837934 () Bool)

(declare-fun res!3117439 () Bool)

(assert (=> b!7837934 (=> res!3117439 e!4634583)))

(assert (=> b!7837934 (= res!3117439 (not (isEmpty!42298 (tail!15538 s2!3721))))))

(declare-fun b!7837935 () Bool)

(assert (=> b!7837935 (= e!4634585 (not lt!2678190))))

(declare-fun b!7837936 () Bool)

(assert (=> b!7837936 (= e!4634587 (matchR!10446 (derivativeStep!6267 r2!6199 (head!15997 s2!3721)) (tail!15538 s2!3721)))))

(declare-fun b!7837937 () Bool)

(assert (=> b!7837937 (= e!4634587 (nullable!9308 r2!6199))))

(declare-fun b!7837938 () Bool)

(declare-fun res!3117435 () Bool)

(assert (=> b!7837938 (=> (not res!3117435) (not e!4634589))))

(assert (=> b!7837938 (= res!3117435 (isEmpty!42298 (tail!15538 s2!3721)))))

(declare-fun b!7837939 () Bool)

(assert (=> b!7837939 (= e!4634589 (= (head!15997 s2!3721) (c!1441277 r2!6199)))))

(assert (= (and d!2351909 c!1441327) b!7837937))

(assert (= (and d!2351909 (not c!1441327)) b!7837936))

(assert (= (and d!2351909 c!1441328) b!7837932))

(assert (= (and d!2351909 (not c!1441328)) b!7837928))

(assert (= (and b!7837928 c!1441329) b!7837935))

(assert (= (and b!7837928 (not c!1441329)) b!7837929))

(assert (= (and b!7837929 (not res!3117440)) b!7837926))

(assert (= (and b!7837926 res!3117436) b!7837933))

(assert (= (and b!7837933 res!3117433) b!7837938))

(assert (= (and b!7837938 res!3117435) b!7837939))

(assert (= (and b!7837926 (not res!3117437)) b!7837927))

(assert (= (and b!7837927 res!3117434) b!7837931))

(assert (= (and b!7837931 (not res!3117438)) b!7837934))

(assert (= (and b!7837934 (not res!3117439)) b!7837930))

(assert (= (or b!7837932 b!7837931 b!7837933) bm!726572))

(declare-fun m!8252420 () Bool)

(assert (=> b!7837936 m!8252420))

(assert (=> b!7837936 m!8252420))

(declare-fun m!8252422 () Bool)

(assert (=> b!7837936 m!8252422))

(declare-fun m!8252424 () Bool)

(assert (=> b!7837936 m!8252424))

(assert (=> b!7837936 m!8252422))

(assert (=> b!7837936 m!8252424))

(declare-fun m!8252426 () Bool)

(assert (=> b!7837936 m!8252426))

(declare-fun m!8252428 () Bool)

(assert (=> bm!726572 m!8252428))

(assert (=> b!7837934 m!8252424))

(assert (=> b!7837934 m!8252424))

(declare-fun m!8252430 () Bool)

(assert (=> b!7837934 m!8252430))

(assert (=> d!2351909 m!8252428))

(assert (=> d!2351909 m!8252058))

(assert (=> b!7837938 m!8252424))

(assert (=> b!7837938 m!8252424))

(assert (=> b!7837938 m!8252430))

(assert (=> b!7837939 m!8252420))

(assert (=> b!7837930 m!8252420))

(assert (=> b!7837937 m!8252212))

(assert (=> b!7837615 d!2351909))

(declare-fun d!2351911 () Bool)

(declare-fun res!3117453 () Bool)

(declare-fun e!4634606 () Bool)

(assert (=> d!2351911 (=> res!3117453 e!4634606)))

(assert (=> d!2351911 (= res!3117453 (is-ElementMatch!20990 r1!6261))))

(assert (=> d!2351911 (= (validRegex!11404 r1!6261) e!4634606)))

(declare-fun b!7837960 () Bool)

(declare-fun e!4634605 () Bool)

(declare-fun e!4634610 () Bool)

(assert (=> b!7837960 (= e!4634605 e!4634610)))

(declare-fun res!3117454 () Bool)

(assert (=> b!7837960 (= res!3117454 (not (nullable!9308 (reg!21319 r1!6261))))))

(assert (=> b!7837960 (=> (not res!3117454) (not e!4634610))))

(declare-fun b!7837961 () Bool)

(declare-fun call!726586 () Bool)

(assert (=> b!7837961 (= e!4634610 call!726586)))

(declare-fun bm!726579 () Bool)

(declare-fun call!726584 () Bool)

(declare-fun c!1441336 () Bool)

(assert (=> bm!726579 (= call!726584 (validRegex!11404 (ite c!1441336 (regOne!42493 r1!6261) (regTwo!42492 r1!6261))))))

(declare-fun b!7837962 () Bool)

(assert (=> b!7837962 (= e!4634606 e!4634605)))

(declare-fun c!1441335 () Bool)

(assert (=> b!7837962 (= c!1441335 (is-Star!20990 r1!6261))))

(declare-fun b!7837963 () Bool)

(declare-fun e!4634607 () Bool)

(declare-fun call!726585 () Bool)

(assert (=> b!7837963 (= e!4634607 call!726585)))

(declare-fun b!7837964 () Bool)

(declare-fun res!3117451 () Bool)

(assert (=> b!7837964 (=> (not res!3117451) (not e!4634607))))

(assert (=> b!7837964 (= res!3117451 call!726584)))

(declare-fun e!4634609 () Bool)

(assert (=> b!7837964 (= e!4634609 e!4634607)))

(declare-fun b!7837965 () Bool)

(declare-fun e!4634611 () Bool)

(assert (=> b!7837965 (= e!4634611 call!726584)))

(declare-fun b!7837966 () Bool)

(declare-fun e!4634608 () Bool)

(assert (=> b!7837966 (= e!4634608 e!4634611)))

(declare-fun res!3117455 () Bool)

(assert (=> b!7837966 (=> (not res!3117455) (not e!4634611))))

(assert (=> b!7837966 (= res!3117455 call!726585)))

(declare-fun bm!726580 () Bool)

(assert (=> bm!726580 (= call!726586 (validRegex!11404 (ite c!1441335 (reg!21319 r1!6261) (ite c!1441336 (regTwo!42493 r1!6261) (regOne!42492 r1!6261)))))))

(declare-fun b!7837967 () Bool)

(declare-fun res!3117452 () Bool)

(assert (=> b!7837967 (=> res!3117452 e!4634608)))

(assert (=> b!7837967 (= res!3117452 (not (is-Concat!29835 r1!6261)))))

(assert (=> b!7837967 (= e!4634609 e!4634608)))

(declare-fun b!7837968 () Bool)

(assert (=> b!7837968 (= e!4634605 e!4634609)))

(assert (=> b!7837968 (= c!1441336 (is-Union!20990 r1!6261))))

(declare-fun bm!726581 () Bool)

(assert (=> bm!726581 (= call!726585 call!726586)))

(assert (= (and d!2351911 (not res!3117453)) b!7837962))

(assert (= (and b!7837962 c!1441335) b!7837960))

(assert (= (and b!7837962 (not c!1441335)) b!7837968))

(assert (= (and b!7837960 res!3117454) b!7837961))

(assert (= (and b!7837968 c!1441336) b!7837964))

(assert (= (and b!7837968 (not c!1441336)) b!7837967))

(assert (= (and b!7837964 res!3117451) b!7837963))

(assert (= (and b!7837967 (not res!3117452)) b!7837966))

(assert (= (and b!7837966 res!3117455) b!7837965))

(assert (= (or b!7837963 b!7837966) bm!726581))

(assert (= (or b!7837964 b!7837965) bm!726579))

(assert (= (or b!7837961 bm!726581) bm!726580))

(declare-fun m!8252440 () Bool)

(assert (=> b!7837960 m!8252440))

(declare-fun m!8252442 () Bool)

(assert (=> bm!726579 m!8252442))

(declare-fun m!8252444 () Bool)

(assert (=> bm!726580 m!8252444))

(assert (=> start!742436 d!2351911))

(declare-fun d!2351917 () Bool)

(declare-fun e!4634612 () Bool)

(assert (=> d!2351917 e!4634612))

(declare-fun res!3117456 () Bool)

(assert (=> d!2351917 (=> (not res!3117456) (not e!4634612))))

(declare-fun lt!2678193 () List!73827)

(assert (=> d!2351917 (= res!3117456 (= (content!15649 lt!2678193) (set.union (content!15649 s1Rec!453) (content!15649 s2Rec!453))))))

(declare-fun e!4634613 () List!73827)

(assert (=> d!2351917 (= lt!2678193 e!4634613)))

(declare-fun c!1441337 () Bool)

(assert (=> d!2351917 (= c!1441337 (is-Nil!73703 s1Rec!453))))

(assert (=> d!2351917 (= (++!18024 s1Rec!453 s2Rec!453) lt!2678193)))

(declare-fun b!7837971 () Bool)

(declare-fun res!3117457 () Bool)

(assert (=> b!7837971 (=> (not res!3117457) (not e!4634612))))

(assert (=> b!7837971 (= res!3117457 (= (size!42780 lt!2678193) (+ (size!42780 s1Rec!453) (size!42780 s2Rec!453))))))

(declare-fun b!7837969 () Bool)

(assert (=> b!7837969 (= e!4634613 s2Rec!453)))

(declare-fun b!7837970 () Bool)

(assert (=> b!7837970 (= e!4634613 (Cons!73703 (h!80151 s1Rec!453) (++!18024 (t!388562 s1Rec!453) s2Rec!453)))))

(declare-fun b!7837972 () Bool)

(assert (=> b!7837972 (= e!4634612 (or (not (= s2Rec!453 Nil!73703)) (= lt!2678193 s1Rec!453)))))

(assert (= (and d!2351917 c!1441337) b!7837969))

(assert (= (and d!2351917 (not c!1441337)) b!7837970))

(assert (= (and d!2351917 res!3117456) b!7837971))

(assert (= (and b!7837971 res!3117457) b!7837972))

(declare-fun m!8252446 () Bool)

(assert (=> d!2351917 m!8252446))

(assert (=> d!2351917 m!8252392))

(declare-fun m!8252448 () Bool)

(assert (=> d!2351917 m!8252448))

(declare-fun m!8252450 () Bool)

(assert (=> b!7837971 m!8252450))

(assert (=> b!7837971 m!8252094))

(declare-fun m!8252452 () Bool)

(assert (=> b!7837971 m!8252452))

(declare-fun m!8252454 () Bool)

(assert (=> b!7837970 m!8252454))

(assert (=> b!7837605 d!2351917))

(declare-fun b!7837973 () Bool)

(declare-fun res!3117462 () Bool)

(declare-fun e!4634619 () Bool)

(assert (=> b!7837973 (=> res!3117462 e!4634619)))

(declare-fun e!4634620 () Bool)

(assert (=> b!7837973 (= res!3117462 e!4634620)))

(declare-fun res!3117461 () Bool)

(assert (=> b!7837973 (=> (not res!3117461) (not e!4634620))))

(declare-fun lt!2678194 () Bool)

(assert (=> b!7837973 (= res!3117461 lt!2678194)))

(declare-fun b!7837974 () Bool)

(declare-fun e!4634617 () Bool)

(assert (=> b!7837974 (= e!4634619 e!4634617)))

(declare-fun res!3117459 () Bool)

(assert (=> b!7837974 (=> (not res!3117459) (not e!4634617))))

(assert (=> b!7837974 (= res!3117459 (not lt!2678194))))

(declare-fun b!7837975 () Bool)

(declare-fun e!4634615 () Bool)

(declare-fun e!4634616 () Bool)

(assert (=> b!7837975 (= e!4634615 e!4634616)))

(declare-fun c!1441340 () Bool)

(assert (=> b!7837975 (= c!1441340 (is-EmptyLang!20990 r1!6261))))

(declare-fun d!2351919 () Bool)

(assert (=> d!2351919 e!4634615))

(declare-fun c!1441339 () Bool)

(assert (=> d!2351919 (= c!1441339 (is-EmptyExpr!20990 r1!6261))))

(declare-fun e!4634618 () Bool)

(assert (=> d!2351919 (= lt!2678194 e!4634618)))

(declare-fun c!1441338 () Bool)

(assert (=> d!2351919 (= c!1441338 (isEmpty!42298 s1Rec!453))))

(assert (=> d!2351919 (validRegex!11404 r1!6261)))

(assert (=> d!2351919 (= (matchR!10446 r1!6261 s1Rec!453) lt!2678194)))

(declare-fun b!7837976 () Bool)

(declare-fun res!3117465 () Bool)

(assert (=> b!7837976 (=> res!3117465 e!4634619)))

(assert (=> b!7837976 (= res!3117465 (not (is-ElementMatch!20990 r1!6261)))))

(assert (=> b!7837976 (= e!4634616 e!4634619)))

(declare-fun bm!726582 () Bool)

(declare-fun call!726587 () Bool)

(assert (=> bm!726582 (= call!726587 (isEmpty!42298 s1Rec!453))))

(declare-fun b!7837977 () Bool)

(declare-fun e!4634614 () Bool)

(assert (=> b!7837977 (= e!4634614 (not (= (head!15997 s1Rec!453) (c!1441277 r1!6261))))))

(declare-fun b!7837978 () Bool)

(assert (=> b!7837978 (= e!4634617 e!4634614)))

(declare-fun res!3117463 () Bool)

(assert (=> b!7837978 (=> res!3117463 e!4634614)))

(assert (=> b!7837978 (= res!3117463 call!726587)))

(declare-fun b!7837979 () Bool)

(assert (=> b!7837979 (= e!4634615 (= lt!2678194 call!726587))))

(declare-fun b!7837980 () Bool)

(declare-fun res!3117458 () Bool)

(assert (=> b!7837980 (=> (not res!3117458) (not e!4634620))))

(assert (=> b!7837980 (= res!3117458 (not call!726587))))

(declare-fun b!7837981 () Bool)

(declare-fun res!3117464 () Bool)

(assert (=> b!7837981 (=> res!3117464 e!4634614)))

(assert (=> b!7837981 (= res!3117464 (not (isEmpty!42298 (tail!15538 s1Rec!453))))))

(declare-fun b!7837982 () Bool)

(assert (=> b!7837982 (= e!4634616 (not lt!2678194))))

(declare-fun b!7837983 () Bool)

(assert (=> b!7837983 (= e!4634618 (matchR!10446 (derivativeStep!6267 r1!6261 (head!15997 s1Rec!453)) (tail!15538 s1Rec!453)))))

(declare-fun b!7837984 () Bool)

(assert (=> b!7837984 (= e!4634618 (nullable!9308 r1!6261))))

(declare-fun b!7837985 () Bool)

(declare-fun res!3117460 () Bool)

(assert (=> b!7837985 (=> (not res!3117460) (not e!4634620))))

(assert (=> b!7837985 (= res!3117460 (isEmpty!42298 (tail!15538 s1Rec!453)))))

(declare-fun b!7837986 () Bool)

(assert (=> b!7837986 (= e!4634620 (= (head!15997 s1Rec!453) (c!1441277 r1!6261)))))

(assert (= (and d!2351919 c!1441338) b!7837984))

(assert (= (and d!2351919 (not c!1441338)) b!7837983))

(assert (= (and d!2351919 c!1441339) b!7837979))

(assert (= (and d!2351919 (not c!1441339)) b!7837975))

(assert (= (and b!7837975 c!1441340) b!7837982))

(assert (= (and b!7837975 (not c!1441340)) b!7837976))

(assert (= (and b!7837976 (not res!3117465)) b!7837973))

(assert (= (and b!7837973 res!3117461) b!7837980))

(assert (= (and b!7837980 res!3117458) b!7837985))

(assert (= (and b!7837985 res!3117460) b!7837986))

(assert (= (and b!7837973 (not res!3117462)) b!7837974))

(assert (= (and b!7837974 res!3117459) b!7837978))

(assert (= (and b!7837978 (not res!3117463)) b!7837981))

(assert (= (and b!7837981 (not res!3117464)) b!7837977))

(assert (= (or b!7837979 b!7837978 b!7837980) bm!726582))

(assert (=> b!7837983 m!8252246))

(assert (=> b!7837983 m!8252246))

(declare-fun m!8252456 () Bool)

(assert (=> b!7837983 m!8252456))

(assert (=> b!7837983 m!8252240))

(assert (=> b!7837983 m!8252456))

(assert (=> b!7837983 m!8252240))

(declare-fun m!8252458 () Bool)

(assert (=> b!7837983 m!8252458))

(declare-fun m!8252460 () Bool)

(assert (=> bm!726582 m!8252460))

(assert (=> b!7837981 m!8252240))

(assert (=> b!7837981 m!8252240))

(declare-fun m!8252462 () Bool)

(assert (=> b!7837981 m!8252462))

(assert (=> d!2351919 m!8252460))

(assert (=> d!2351919 m!8252100))

(assert (=> b!7837985 m!8252240))

(assert (=> b!7837985 m!8252240))

(assert (=> b!7837985 m!8252462))

(assert (=> b!7837986 m!8252246))

(assert (=> b!7837977 m!8252246))

(declare-fun m!8252464 () Bool)

(assert (=> b!7837984 m!8252464))

(assert (=> b!7837606 d!2351919))

(declare-fun b!7837987 () Bool)

(declare-fun res!3117470 () Bool)

(declare-fun e!4634626 () Bool)

(assert (=> b!7837987 (=> res!3117470 e!4634626)))

(declare-fun e!4634627 () Bool)

(assert (=> b!7837987 (= res!3117470 e!4634627)))

(declare-fun res!3117469 () Bool)

(assert (=> b!7837987 (=> (not res!3117469) (not e!4634627))))

(declare-fun lt!2678195 () Bool)

(assert (=> b!7837987 (= res!3117469 lt!2678195)))

(declare-fun b!7837988 () Bool)

(declare-fun e!4634624 () Bool)

(assert (=> b!7837988 (= e!4634626 e!4634624)))

(declare-fun res!3117467 () Bool)

(assert (=> b!7837988 (=> (not res!3117467) (not e!4634624))))

(assert (=> b!7837988 (= res!3117467 (not lt!2678195))))

(declare-fun b!7837989 () Bool)

(declare-fun e!4634622 () Bool)

(declare-fun e!4634623 () Bool)

(assert (=> b!7837989 (= e!4634622 e!4634623)))

(declare-fun c!1441343 () Bool)

(assert (=> b!7837989 (= c!1441343 (is-EmptyLang!20990 r1!6261))))

(declare-fun d!2351921 () Bool)

(assert (=> d!2351921 e!4634622))

(declare-fun c!1441342 () Bool)

(assert (=> d!2351921 (= c!1441342 (is-EmptyExpr!20990 r1!6261))))

(declare-fun e!4634625 () Bool)

(assert (=> d!2351921 (= lt!2678195 e!4634625)))

(declare-fun c!1441341 () Bool)

(assert (=> d!2351921 (= c!1441341 (isEmpty!42298 s1!4101))))

(assert (=> d!2351921 (validRegex!11404 r1!6261)))

(assert (=> d!2351921 (= (matchR!10446 r1!6261 s1!4101) lt!2678195)))

(declare-fun b!7837990 () Bool)

(declare-fun res!3117473 () Bool)

(assert (=> b!7837990 (=> res!3117473 e!4634626)))

(assert (=> b!7837990 (= res!3117473 (not (is-ElementMatch!20990 r1!6261)))))

(assert (=> b!7837990 (= e!4634623 e!4634626)))

(declare-fun bm!726583 () Bool)

(declare-fun call!726588 () Bool)

(assert (=> bm!726583 (= call!726588 (isEmpty!42298 s1!4101))))

(declare-fun b!7837991 () Bool)

(declare-fun e!4634621 () Bool)

(assert (=> b!7837991 (= e!4634621 (not (= (head!15997 s1!4101) (c!1441277 r1!6261))))))

(declare-fun b!7837992 () Bool)

(assert (=> b!7837992 (= e!4634624 e!4634621)))

(declare-fun res!3117471 () Bool)

(assert (=> b!7837992 (=> res!3117471 e!4634621)))

(assert (=> b!7837992 (= res!3117471 call!726588)))

(declare-fun b!7837993 () Bool)

(assert (=> b!7837993 (= e!4634622 (= lt!2678195 call!726588))))

(declare-fun b!7837994 () Bool)

(declare-fun res!3117466 () Bool)

(assert (=> b!7837994 (=> (not res!3117466) (not e!4634627))))

(assert (=> b!7837994 (= res!3117466 (not call!726588))))

(declare-fun b!7837995 () Bool)

(declare-fun res!3117472 () Bool)

(assert (=> b!7837995 (=> res!3117472 e!4634621)))

(assert (=> b!7837995 (= res!3117472 (not (isEmpty!42298 (tail!15538 s1!4101))))))

(declare-fun b!7837996 () Bool)

(assert (=> b!7837996 (= e!4634623 (not lt!2678195))))

(declare-fun b!7837997 () Bool)

(assert (=> b!7837997 (= e!4634625 (matchR!10446 (derivativeStep!6267 r1!6261 (head!15997 s1!4101)) (tail!15538 s1!4101)))))

(declare-fun b!7837998 () Bool)

(assert (=> b!7837998 (= e!4634625 (nullable!9308 r1!6261))))

(declare-fun b!7837999 () Bool)

(declare-fun res!3117468 () Bool)

(assert (=> b!7837999 (=> (not res!3117468) (not e!4634627))))

(assert (=> b!7837999 (= res!3117468 (isEmpty!42298 (tail!15538 s1!4101)))))

(declare-fun b!7838000 () Bool)

(assert (=> b!7838000 (= e!4634627 (= (head!15997 s1!4101) (c!1441277 r1!6261)))))

(assert (= (and d!2351921 c!1441341) b!7837998))

(assert (= (and d!2351921 (not c!1441341)) b!7837997))

(assert (= (and d!2351921 c!1441342) b!7837993))

(assert (= (and d!2351921 (not c!1441342)) b!7837989))

(assert (= (and b!7837989 c!1441343) b!7837996))

(assert (= (and b!7837989 (not c!1441343)) b!7837990))

(assert (= (and b!7837990 (not res!3117473)) b!7837987))

(assert (= (and b!7837987 res!3117469) b!7837994))

(assert (= (and b!7837994 res!3117466) b!7837999))

(assert (= (and b!7837999 res!3117468) b!7838000))

(assert (= (and b!7837987 (not res!3117470)) b!7837988))

(assert (= (and b!7837988 res!3117467) b!7837992))

(assert (= (and b!7837992 (not res!3117471)) b!7837995))

(assert (= (and b!7837995 (not res!3117472)) b!7837991))

(assert (= (or b!7837993 b!7837992 b!7837994) bm!726583))

(assert (=> b!7837997 m!8252278))

(assert (=> b!7837997 m!8252278))

(declare-fun m!8252466 () Bool)

(assert (=> b!7837997 m!8252466))

(assert (=> b!7837997 m!8252270))

(assert (=> b!7837997 m!8252466))

(assert (=> b!7837997 m!8252270))

(declare-fun m!8252468 () Bool)

(assert (=> b!7837997 m!8252468))

(declare-fun m!8252470 () Bool)

(assert (=> bm!726583 m!8252470))

(assert (=> b!7837995 m!8252270))

(assert (=> b!7837995 m!8252270))

(declare-fun m!8252472 () Bool)

(assert (=> b!7837995 m!8252472))

(assert (=> d!2351921 m!8252470))

(assert (=> d!2351921 m!8252100))

(assert (=> b!7837999 m!8252270))

(assert (=> b!7837999 m!8252270))

(assert (=> b!7837999 m!8252472))

(assert (=> b!7838000 m!8252278))

(assert (=> b!7837991 m!8252278))

(assert (=> b!7837998 m!8252464))

(assert (=> b!7837612 d!2351921))

(declare-fun d!2351923 () Bool)

(declare-fun res!3117476 () Bool)

(declare-fun e!4634629 () Bool)

(assert (=> d!2351923 (=> res!3117476 e!4634629)))

(assert (=> d!2351923 (= res!3117476 (is-ElementMatch!20990 r2!6199))))

(assert (=> d!2351923 (= (validRegex!11404 r2!6199) e!4634629)))

(declare-fun b!7838001 () Bool)

(declare-fun e!4634628 () Bool)

(declare-fun e!4634633 () Bool)

(assert (=> b!7838001 (= e!4634628 e!4634633)))

(declare-fun res!3117477 () Bool)

(assert (=> b!7838001 (= res!3117477 (not (nullable!9308 (reg!21319 r2!6199))))))

(assert (=> b!7838001 (=> (not res!3117477) (not e!4634633))))

(declare-fun b!7838002 () Bool)

(declare-fun call!726591 () Bool)

(assert (=> b!7838002 (= e!4634633 call!726591)))

(declare-fun bm!726584 () Bool)

(declare-fun call!726589 () Bool)

(declare-fun c!1441345 () Bool)

(assert (=> bm!726584 (= call!726589 (validRegex!11404 (ite c!1441345 (regOne!42493 r2!6199) (regTwo!42492 r2!6199))))))

(declare-fun b!7838003 () Bool)

(assert (=> b!7838003 (= e!4634629 e!4634628)))

(declare-fun c!1441344 () Bool)

(assert (=> b!7838003 (= c!1441344 (is-Star!20990 r2!6199))))

(declare-fun b!7838004 () Bool)

(declare-fun e!4634630 () Bool)

(declare-fun call!726590 () Bool)

(assert (=> b!7838004 (= e!4634630 call!726590)))

(declare-fun b!7838005 () Bool)

(declare-fun res!3117474 () Bool)

(assert (=> b!7838005 (=> (not res!3117474) (not e!4634630))))

(assert (=> b!7838005 (= res!3117474 call!726589)))

(declare-fun e!4634632 () Bool)

(assert (=> b!7838005 (= e!4634632 e!4634630)))

(declare-fun b!7838006 () Bool)

(declare-fun e!4634634 () Bool)

(assert (=> b!7838006 (= e!4634634 call!726589)))

(declare-fun b!7838007 () Bool)

(declare-fun e!4634631 () Bool)

(assert (=> b!7838007 (= e!4634631 e!4634634)))

(declare-fun res!3117478 () Bool)

(assert (=> b!7838007 (=> (not res!3117478) (not e!4634634))))

(assert (=> b!7838007 (= res!3117478 call!726590)))

(declare-fun bm!726585 () Bool)

(assert (=> bm!726585 (= call!726591 (validRegex!11404 (ite c!1441344 (reg!21319 r2!6199) (ite c!1441345 (regTwo!42493 r2!6199) (regOne!42492 r2!6199)))))))

(declare-fun b!7838008 () Bool)

(declare-fun res!3117475 () Bool)

(assert (=> b!7838008 (=> res!3117475 e!4634631)))

(assert (=> b!7838008 (= res!3117475 (not (is-Concat!29835 r2!6199)))))

(assert (=> b!7838008 (= e!4634632 e!4634631)))

(declare-fun b!7838009 () Bool)

(assert (=> b!7838009 (= e!4634628 e!4634632)))

(assert (=> b!7838009 (= c!1441345 (is-Union!20990 r2!6199))))

(declare-fun bm!726586 () Bool)

(assert (=> bm!726586 (= call!726590 call!726591)))

(assert (= (and d!2351923 (not res!3117476)) b!7838003))

(assert (= (and b!7838003 c!1441344) b!7838001))

(assert (= (and b!7838003 (not c!1441344)) b!7838009))

(assert (= (and b!7838001 res!3117477) b!7838002))

(assert (= (and b!7838009 c!1441345) b!7838005))

(assert (= (and b!7838009 (not c!1441345)) b!7838008))

(assert (= (and b!7838005 res!3117474) b!7838004))

(assert (= (and b!7838008 (not res!3117475)) b!7838007))

(assert (= (and b!7838007 res!3117478) b!7838006))

(assert (= (or b!7838004 b!7838007) bm!726586))

(assert (= (or b!7838005 b!7838006) bm!726584))

(assert (= (or b!7838002 bm!726586) bm!726585))

(declare-fun m!8252474 () Bool)

(assert (=> b!7838001 m!8252474))

(declare-fun m!8252476 () Bool)

(assert (=> bm!726584 m!8252476))

(declare-fun m!8252478 () Bool)

(assert (=> bm!726585 m!8252478))

(assert (=> b!7837623 d!2351923))

(declare-fun b!7838020 () Bool)

(declare-fun e!4634637 () Bool)

(assert (=> b!7838020 (= e!4634637 tp_is_empty!52335)))

(declare-fun b!7838023 () Bool)

(declare-fun tp!2318894 () Bool)

(declare-fun tp!2318890 () Bool)

(assert (=> b!7838023 (= e!4634637 (and tp!2318894 tp!2318890))))

(declare-fun b!7838022 () Bool)

(declare-fun tp!2318893 () Bool)

(assert (=> b!7838022 (= e!4634637 tp!2318893)))

(assert (=> b!7837609 (= tp!2318831 e!4634637)))

(declare-fun b!7838021 () Bool)

(declare-fun tp!2318891 () Bool)

(declare-fun tp!2318892 () Bool)

(assert (=> b!7838021 (= e!4634637 (and tp!2318891 tp!2318892))))

(assert (= (and b!7837609 (is-ElementMatch!20990 (regOne!42492 r2!6199))) b!7838020))

(assert (= (and b!7837609 (is-Concat!29835 (regOne!42492 r2!6199))) b!7838021))

(assert (= (and b!7837609 (is-Star!20990 (regOne!42492 r2!6199))) b!7838022))

(assert (= (and b!7837609 (is-Union!20990 (regOne!42492 r2!6199))) b!7838023))

(declare-fun b!7838024 () Bool)

(declare-fun e!4634638 () Bool)

(assert (=> b!7838024 (= e!4634638 tp_is_empty!52335)))

(declare-fun b!7838027 () Bool)

(declare-fun tp!2318899 () Bool)

(declare-fun tp!2318895 () Bool)

(assert (=> b!7838027 (= e!4634638 (and tp!2318899 tp!2318895))))

(declare-fun b!7838026 () Bool)

(declare-fun tp!2318898 () Bool)

(assert (=> b!7838026 (= e!4634638 tp!2318898)))

(assert (=> b!7837609 (= tp!2318821 e!4634638)))

(declare-fun b!7838025 () Bool)

(declare-fun tp!2318896 () Bool)

(declare-fun tp!2318897 () Bool)

(assert (=> b!7838025 (= e!4634638 (and tp!2318896 tp!2318897))))

(assert (= (and b!7837609 (is-ElementMatch!20990 (regTwo!42492 r2!6199))) b!7838024))

(assert (= (and b!7837609 (is-Concat!29835 (regTwo!42492 r2!6199))) b!7838025))

(assert (= (and b!7837609 (is-Star!20990 (regTwo!42492 r2!6199))) b!7838026))

(assert (= (and b!7837609 (is-Union!20990 (regTwo!42492 r2!6199))) b!7838027))

(declare-fun b!7838032 () Bool)

(declare-fun e!4634641 () Bool)

(declare-fun tp!2318902 () Bool)

(assert (=> b!7838032 (= e!4634641 (and tp_is_empty!52335 tp!2318902))))

(assert (=> b!7837600 (= tp!2318827 e!4634641)))

(assert (= (and b!7837600 (is-Cons!73703 (t!388562 s!14274))) b!7838032))

(declare-fun b!7838033 () Bool)

(declare-fun e!4634642 () Bool)

(assert (=> b!7838033 (= e!4634642 tp_is_empty!52335)))

(declare-fun b!7838036 () Bool)

(declare-fun tp!2318907 () Bool)

(declare-fun tp!2318903 () Bool)

(assert (=> b!7838036 (= e!4634642 (and tp!2318907 tp!2318903))))

(declare-fun b!7838035 () Bool)

(declare-fun tp!2318906 () Bool)

(assert (=> b!7838035 (= e!4634642 tp!2318906)))

(assert (=> b!7837611 (= tp!2318820 e!4634642)))

(declare-fun b!7838034 () Bool)

(declare-fun tp!2318904 () Bool)

(declare-fun tp!2318905 () Bool)

(assert (=> b!7838034 (= e!4634642 (and tp!2318904 tp!2318905))))

(assert (= (and b!7837611 (is-ElementMatch!20990 (reg!21319 r2!6199))) b!7838033))

(assert (= (and b!7837611 (is-Concat!29835 (reg!21319 r2!6199))) b!7838034))

(assert (= (and b!7837611 (is-Star!20990 (reg!21319 r2!6199))) b!7838035))

(assert (= (and b!7837611 (is-Union!20990 (reg!21319 r2!6199))) b!7838036))

(declare-fun b!7838037 () Bool)

(declare-fun e!4634643 () Bool)

(declare-fun tp!2318908 () Bool)

(assert (=> b!7838037 (= e!4634643 (and tp_is_empty!52335 tp!2318908))))

(assert (=> b!7837617 (= tp!2318826 e!4634643)))

(assert (= (and b!7837617 (is-Cons!73703 (t!388562 s2Rec!453))) b!7838037))

(declare-fun b!7838038 () Bool)

(declare-fun e!4634644 () Bool)

(declare-fun tp!2318909 () Bool)

(assert (=> b!7838038 (= e!4634644 (and tp_is_empty!52335 tp!2318909))))

(assert (=> b!7837607 (= tp!2318833 e!4634644)))

(assert (= (and b!7837607 (is-Cons!73703 (t!388562 s1!4101))) b!7838038))

(declare-fun b!7838039 () Bool)

(declare-fun e!4634645 () Bool)

(declare-fun tp!2318910 () Bool)

(assert (=> b!7838039 (= e!4634645 (and tp_is_empty!52335 tp!2318910))))

(assert (=> b!7837619 (= tp!2318823 e!4634645)))

(assert (= (and b!7837619 (is-Cons!73703 (t!388562 s2!3721))) b!7838039))

(declare-fun b!7838040 () Bool)

(declare-fun e!4634646 () Bool)

(assert (=> b!7838040 (= e!4634646 tp_is_empty!52335)))

(declare-fun b!7838043 () Bool)

(declare-fun tp!2318915 () Bool)

(declare-fun tp!2318911 () Bool)

(assert (=> b!7838043 (= e!4634646 (and tp!2318915 tp!2318911))))

(declare-fun b!7838042 () Bool)

(declare-fun tp!2318914 () Bool)

(assert (=> b!7838042 (= e!4634646 tp!2318914)))

(assert (=> b!7837626 (= tp!2318825 e!4634646)))

(declare-fun b!7838041 () Bool)

(declare-fun tp!2318912 () Bool)

(declare-fun tp!2318913 () Bool)

(assert (=> b!7838041 (= e!4634646 (and tp!2318912 tp!2318913))))

(assert (= (and b!7837626 (is-ElementMatch!20990 (regOne!42492 r1!6261))) b!7838040))

(assert (= (and b!7837626 (is-Concat!29835 (regOne!42492 r1!6261))) b!7838041))

(assert (= (and b!7837626 (is-Star!20990 (regOne!42492 r1!6261))) b!7838042))

(assert (= (and b!7837626 (is-Union!20990 (regOne!42492 r1!6261))) b!7838043))

(declare-fun b!7838044 () Bool)

(declare-fun e!4634647 () Bool)

(assert (=> b!7838044 (= e!4634647 tp_is_empty!52335)))

(declare-fun b!7838047 () Bool)

(declare-fun tp!2318920 () Bool)

(declare-fun tp!2318916 () Bool)

(assert (=> b!7838047 (= e!4634647 (and tp!2318920 tp!2318916))))

(declare-fun b!7838046 () Bool)

(declare-fun tp!2318919 () Bool)

(assert (=> b!7838046 (= e!4634647 tp!2318919)))

(assert (=> b!7837626 (= tp!2318822 e!4634647)))

(declare-fun b!7838045 () Bool)

(declare-fun tp!2318917 () Bool)

(declare-fun tp!2318918 () Bool)

(assert (=> b!7838045 (= e!4634647 (and tp!2318917 tp!2318918))))

(assert (= (and b!7837626 (is-ElementMatch!20990 (regTwo!42492 r1!6261))) b!7838044))

(assert (= (and b!7837626 (is-Concat!29835 (regTwo!42492 r1!6261))) b!7838045))

(assert (= (and b!7837626 (is-Star!20990 (regTwo!42492 r1!6261))) b!7838046))

(assert (= (and b!7837626 (is-Union!20990 (regTwo!42492 r1!6261))) b!7838047))

(declare-fun b!7838048 () Bool)

(declare-fun e!4634648 () Bool)

(assert (=> b!7838048 (= e!4634648 tp_is_empty!52335)))

(declare-fun b!7838051 () Bool)

(declare-fun tp!2318925 () Bool)

(declare-fun tp!2318921 () Bool)

(assert (=> b!7838051 (= e!4634648 (and tp!2318925 tp!2318921))))

(declare-fun b!7838050 () Bool)

(declare-fun tp!2318924 () Bool)

(assert (=> b!7838050 (= e!4634648 tp!2318924)))

(assert (=> b!7837601 (= tp!2318829 e!4634648)))

(declare-fun b!7838049 () Bool)

(declare-fun tp!2318922 () Bool)

(declare-fun tp!2318923 () Bool)

(assert (=> b!7838049 (= e!4634648 (and tp!2318922 tp!2318923))))

(assert (= (and b!7837601 (is-ElementMatch!20990 (regOne!42493 r1!6261))) b!7838048))

(assert (= (and b!7837601 (is-Concat!29835 (regOne!42493 r1!6261))) b!7838049))

(assert (= (and b!7837601 (is-Star!20990 (regOne!42493 r1!6261))) b!7838050))

(assert (= (and b!7837601 (is-Union!20990 (regOne!42493 r1!6261))) b!7838051))

(declare-fun b!7838052 () Bool)

(declare-fun e!4634649 () Bool)

(assert (=> b!7838052 (= e!4634649 tp_is_empty!52335)))

(declare-fun b!7838055 () Bool)

(declare-fun tp!2318930 () Bool)

(declare-fun tp!2318926 () Bool)

(assert (=> b!7838055 (= e!4634649 (and tp!2318930 tp!2318926))))

(declare-fun b!7838054 () Bool)

(declare-fun tp!2318929 () Bool)

(assert (=> b!7838054 (= e!4634649 tp!2318929)))

(assert (=> b!7837601 (= tp!2318824 e!4634649)))

(declare-fun b!7838053 () Bool)

(declare-fun tp!2318927 () Bool)

(declare-fun tp!2318928 () Bool)

(assert (=> b!7838053 (= e!4634649 (and tp!2318927 tp!2318928))))

(assert (= (and b!7837601 (is-ElementMatch!20990 (regTwo!42493 r1!6261))) b!7838052))

(assert (= (and b!7837601 (is-Concat!29835 (regTwo!42493 r1!6261))) b!7838053))

(assert (= (and b!7837601 (is-Star!20990 (regTwo!42493 r1!6261))) b!7838054))

(assert (= (and b!7837601 (is-Union!20990 (regTwo!42493 r1!6261))) b!7838055))

(declare-fun b!7838056 () Bool)

(declare-fun e!4634650 () Bool)

(assert (=> b!7838056 (= e!4634650 tp_is_empty!52335)))

(declare-fun b!7838059 () Bool)

(declare-fun tp!2318935 () Bool)

(declare-fun tp!2318931 () Bool)

(assert (=> b!7838059 (= e!4634650 (and tp!2318935 tp!2318931))))

(declare-fun b!7838058 () Bool)

(declare-fun tp!2318934 () Bool)

(assert (=> b!7838058 (= e!4634650 tp!2318934)))

(assert (=> b!7837602 (= tp!2318834 e!4634650)))

(declare-fun b!7838057 () Bool)

(declare-fun tp!2318932 () Bool)

(declare-fun tp!2318933 () Bool)

(assert (=> b!7838057 (= e!4634650 (and tp!2318932 tp!2318933))))

(assert (= (and b!7837602 (is-ElementMatch!20990 (regOne!42493 r2!6199))) b!7838056))

(assert (= (and b!7837602 (is-Concat!29835 (regOne!42493 r2!6199))) b!7838057))

(assert (= (and b!7837602 (is-Star!20990 (regOne!42493 r2!6199))) b!7838058))

(assert (= (and b!7837602 (is-Union!20990 (regOne!42493 r2!6199))) b!7838059))

(declare-fun b!7838060 () Bool)

(declare-fun e!4634651 () Bool)

(assert (=> b!7838060 (= e!4634651 tp_is_empty!52335)))

(declare-fun b!7838063 () Bool)

(declare-fun tp!2318940 () Bool)

(declare-fun tp!2318936 () Bool)

(assert (=> b!7838063 (= e!4634651 (and tp!2318940 tp!2318936))))

(declare-fun b!7838062 () Bool)

(declare-fun tp!2318939 () Bool)

(assert (=> b!7838062 (= e!4634651 tp!2318939)))

(assert (=> b!7837602 (= tp!2318830 e!4634651)))

(declare-fun b!7838061 () Bool)

(declare-fun tp!2318937 () Bool)

(declare-fun tp!2318938 () Bool)

(assert (=> b!7838061 (= e!4634651 (and tp!2318937 tp!2318938))))

(assert (= (and b!7837602 (is-ElementMatch!20990 (regTwo!42493 r2!6199))) b!7838060))

(assert (= (and b!7837602 (is-Concat!29835 (regTwo!42493 r2!6199))) b!7838061))

(assert (= (and b!7837602 (is-Star!20990 (regTwo!42493 r2!6199))) b!7838062))

(assert (= (and b!7837602 (is-Union!20990 (regTwo!42493 r2!6199))) b!7838063))

(declare-fun b!7838064 () Bool)

(declare-fun e!4634652 () Bool)

(declare-fun tp!2318941 () Bool)

(assert (=> b!7838064 (= e!4634652 (and tp_is_empty!52335 tp!2318941))))

(assert (=> b!7837624 (= tp!2318828 e!4634652)))

(assert (= (and b!7837624 (is-Cons!73703 (t!388562 s1Rec!453))) b!7838064))

(declare-fun b!7838065 () Bool)

(declare-fun e!4634653 () Bool)

(assert (=> b!7838065 (= e!4634653 tp_is_empty!52335)))

(declare-fun b!7838068 () Bool)

(declare-fun tp!2318946 () Bool)

(declare-fun tp!2318942 () Bool)

(assert (=> b!7838068 (= e!4634653 (and tp!2318946 tp!2318942))))

(declare-fun b!7838067 () Bool)

(declare-fun tp!2318945 () Bool)

(assert (=> b!7838067 (= e!4634653 tp!2318945)))

(assert (=> b!7837614 (= tp!2318832 e!4634653)))

(declare-fun b!7838066 () Bool)

(declare-fun tp!2318943 () Bool)

(declare-fun tp!2318944 () Bool)

(assert (=> b!7838066 (= e!4634653 (and tp!2318943 tp!2318944))))

(assert (= (and b!7837614 (is-ElementMatch!20990 (reg!21319 r1!6261))) b!7838065))

(assert (= (and b!7837614 (is-Concat!29835 (reg!21319 r1!6261))) b!7838066))

(assert (= (and b!7837614 (is-Star!20990 (reg!21319 r1!6261))) b!7838067))

(assert (= (and b!7837614 (is-Union!20990 (reg!21319 r1!6261))) b!7838068))

(push 1)

(assert (not b!7838037))

(assert (not d!2351835))

(assert (not d!2351853))

(assert (not b!7838061))

(assert (not b!7837930))

(assert (not d!2351919))

(assert (not b!7837924))

(assert (not b!7837998))

(assert (not bm!726579))

(assert (not b!7837937))

(assert (not b!7838066))

(assert (not d!2351921))

(assert (not b!7837802))

(assert (not b!7838041))

(assert (not b!7837845))

(assert (not bm!726583))

(assert (not b!7837826))

(assert (not b!7838036))

(assert (not b!7837827))

(assert (not d!2351905))

(assert (not b!7837916))

(assert (not bm!726572))

(assert (not b!7838035))

(assert (not b!7837718))

(assert (not b!7838050))

(assert (not bm!726585))

(assert (not b!7838027))

(assert (not b!7837907))

(assert (not b!7837905))

(assert (not b!7837936))

(assert (not b!7837839))

(assert (not b!7837887))

(assert (not b!7837911))

(assert (not b!7838045))

(assert (not d!2351839))

(assert (not b!7837798))

(assert (not d!2351865))

(assert (not b!7837835))

(assert (not b!7837909))

(assert (not d!2351901))

(assert (not b!7837801))

(assert (not b!7837915))

(assert (not b!7838034))

(assert (not bm!726584))

(assert (not d!2351917))

(assert (not b!7838062))

(assert (not bm!726580))

(assert (not b!7837923))

(assert (not b!7838063))

(assert (not b!7838025))

(assert (not b!7837984))

(assert (not b!7837997))

(assert (not b!7837863))

(assert (not b!7837717))

(assert (not d!2351873))

(assert (not b!7837803))

(assert (not b!7837939))

(assert (not b!7838000))

(assert (not b!7838001))

(assert (not bm!726571))

(assert (not b!7838023))

(assert (not b!7837977))

(assert (not b!7837888))

(assert (not b!7838064))

(assert (not b!7837891))

(assert (not d!2351843))

(assert (not b!7837794))

(assert (not d!2351893))

(assert (not d!2351909))

(assert (not b!7837838))

(assert (not b!7837925))

(assert (not b!7838067))

(assert (not bm!726582))

(assert (not b!7837986))

(assert (not b!7838057))

(assert (not b!7837983))

(assert (not b!7837800))

(assert (not b!7837857))

(assert (not b!7838042))

(assert (not b!7837991))

(assert (not d!2351903))

(assert (not b!7837960))

(assert (not b!7837971))

(assert (not b!7837837))

(assert (not b!7838051))

(assert (not b!7838046))

(assert (not b!7837910))

(assert (not b!7837833))

(assert (not b!7838039))

(assert (not d!2351863))

(assert (not b!7837886))

(assert (not d!2351899))

(assert (not b!7837970))

(assert (not b!7837890))

(assert (not b!7838047))

(assert tp_is_empty!52335)

(assert (not b!7837938))

(assert (not b!7838054))

(assert (not b!7838049))

(assert (not b!7838058))

(assert (not b!7838043))

(assert (not b!7837906))

(assert (not b!7837999))

(assert (not d!2351891))

(assert (not b!7838059))

(assert (not b!7838053))

(assert (not d!2351847))

(assert (not b!7837847))

(assert (not b!7837846))

(assert (not b!7838055))

(assert (not b!7837920))

(assert (not d!2351875))

(assert (not b!7837981))

(assert (not b!7838032))

(assert (not b!7837919))

(assert (not b!7837985))

(assert (not b!7837934))

(assert (not b!7838068))

(assert (not b!7838022))

(assert (not b!7838038))

(assert (not d!2351881))

(assert (not b!7838026))

(assert (not b!7837825))

(assert (not b!7837834))

(assert (not b!7837892))

(assert (not b!7838021))

(assert (not b!7837995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

