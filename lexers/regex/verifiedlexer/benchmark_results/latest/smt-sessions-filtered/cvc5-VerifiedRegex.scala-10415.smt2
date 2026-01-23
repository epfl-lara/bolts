; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538646 () Bool)

(assert start!538646)

(declare-fun b!5108478 () Bool)

(declare-fun res!2174442 () Bool)

(declare-fun e!3186149 () Bool)

(assert (=> b!5108478 (=> (not res!2174442) (not e!3186149))))

(declare-datatypes ((C!28506 0))(
  ( (C!28507 (val!23905 Int)) )
))
(declare-datatypes ((List!59112 0))(
  ( (Nil!58988) (Cons!58988 (h!65436 C!28506) (t!372113 List!59112)) )
))
(declare-fun knownP!20 () List!59112)

(declare-fun input!5745 () List!59112)

(declare-fun isPrefix!5525 (List!59112 List!59112) Bool)

(assert (=> b!5108478 (= res!2174442 (isPrefix!5525 knownP!20 input!5745))))

(declare-fun b!5108479 () Bool)

(declare-fun e!3186153 () Bool)

(declare-fun tp_is_empty!37513 () Bool)

(declare-fun tp!1425172 () Bool)

(assert (=> b!5108479 (= e!3186153 (and tp_is_empty!37513 tp!1425172))))

(declare-fun b!5108480 () Bool)

(declare-fun res!2174440 () Bool)

(declare-fun e!3186152 () Bool)

(assert (=> b!5108480 (=> (not res!2174440) (not e!3186152))))

(declare-datatypes ((Regex!14120 0))(
  ( (ElementMatch!14120 (c!877520 C!28506)) (Concat!22965 (regOne!28752 Regex!14120) (regTwo!28752 Regex!14120)) (EmptyExpr!14120) (Star!14120 (reg!14449 Regex!14120)) (EmptyLang!14120) (Union!14120 (regOne!28753 Regex!14120) (regTwo!28753 Regex!14120)) )
))
(declare-datatypes ((List!59113 0))(
  ( (Nil!58989) (Cons!58989 (h!65437 Regex!14120) (t!372114 List!59113)) )
))
(declare-datatypes ((Context!7008 0))(
  ( (Context!7009 (exprs!4004 List!59113)) )
))
(declare-fun baseZ!46 () (Set Context!7008))

(declare-fun matchZipper!788 ((Set Context!7008) List!59112) Bool)

(assert (=> b!5108480 (= res!2174440 (matchZipper!788 baseZ!46 knownP!20))))

(declare-fun b!5108481 () Bool)

(declare-fun e!3186150 () Bool)

(declare-fun tp!1425176 () Bool)

(assert (=> b!5108481 (= e!3186150 (and tp_is_empty!37513 tp!1425176))))

(declare-fun b!5108482 () Bool)

(declare-fun e!3186148 () Bool)

(declare-fun tp!1425178 () Bool)

(assert (=> b!5108482 (= e!3186148 tp!1425178)))

(declare-fun setNonEmpty!29555 () Bool)

(declare-fun setElem!29555 () Context!7008)

(declare-fun setRes!29556 () Bool)

(declare-fun tp!1425173 () Bool)

(declare-fun inv!78482 (Context!7008) Bool)

(assert (=> setNonEmpty!29555 (= setRes!29556 (and tp!1425173 (inv!78482 setElem!29555) e!3186148))))

(declare-fun z!4463 () (Set Context!7008))

(declare-fun setRest!29556 () (Set Context!7008))

(assert (=> setNonEmpty!29555 (= z!4463 (set.union (set.insert setElem!29555 (as set.empty (Set Context!7008))) setRest!29556))))

(declare-fun lt!2103320 () List!59112)

(declare-fun b!5108483 () Bool)

(declare-fun testedP!265 () List!59112)

(declare-fun e!3186151 () Bool)

(declare-fun ++!12949 (List!59112 List!59112) List!59112)

(assert (=> b!5108483 (= e!3186151 (= (++!12949 testedP!265 lt!2103320) input!5745))))

(declare-fun lt!2103316 () Int)

(declare-fun size!39426 (List!59112) Int)

(declare-datatypes ((tuple2!63598 0))(
  ( (tuple2!63599 (_1!35102 List!59112) (_2!35102 List!59112)) )
))
(declare-fun findLongestMatchInnerZipper!180 ((Set Context!7008) List!59112 Int List!59112 List!59112 Int) tuple2!63598)

(assert (=> b!5108483 (>= (size!39426 (_1!35102 (findLongestMatchInnerZipper!180 z!4463 testedP!265 lt!2103316 lt!2103320 input!5745 (size!39426 input!5745)))) lt!2103316)))

(declare-fun getSuffix!3199 (List!59112 List!59112) List!59112)

(assert (=> b!5108483 (= lt!2103320 (getSuffix!3199 input!5745 testedP!265))))

(declare-datatypes ((Unit!150063 0))(
  ( (Unit!150064) )
))
(declare-fun lt!2103319 () Unit!150063)

(declare-fun lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!5 ((Set Context!7008) (Set Context!7008) List!59112 List!59112) Unit!150063)

(assert (=> b!5108483 (= lt!2103319 (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!5 baseZ!46 z!4463 input!5745 testedP!265))))

(assert (=> b!5108483 (= testedP!265 knownP!20)))

(declare-fun lt!2103317 () Unit!150063)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1333 (List!59112 List!59112 List!59112) Unit!150063)

(assert (=> b!5108483 (= lt!2103317 (lemmaIsPrefixSameLengthThenSameList!1333 testedP!265 knownP!20 input!5745))))

(declare-fun b!5108484 () Bool)

(declare-fun e!3186155 () Bool)

(declare-fun tp!1425175 () Bool)

(assert (=> b!5108484 (= e!3186155 tp!1425175)))

(declare-fun b!5108485 () Bool)

(declare-fun res!2174439 () Bool)

(assert (=> b!5108485 (=> res!2174439 e!3186151)))

(declare-fun derivationZipper!19 ((Set Context!7008) List!59112) (Set Context!7008))

(assert (=> b!5108485 (= res!2174439 (not (= (derivationZipper!19 baseZ!46 testedP!265) z!4463)))))

(declare-fun setNonEmpty!29556 () Bool)

(declare-fun setRes!29555 () Bool)

(declare-fun tp!1425177 () Bool)

(declare-fun setElem!29556 () Context!7008)

(assert (=> setNonEmpty!29556 (= setRes!29555 (and tp!1425177 (inv!78482 setElem!29556) e!3186155))))

(declare-fun setRest!29555 () (Set Context!7008))

(assert (=> setNonEmpty!29556 (= baseZ!46 (set.union (set.insert setElem!29556 (as set.empty (Set Context!7008))) setRest!29555))))

(declare-fun setIsEmpty!29556 () Bool)

(assert (=> setIsEmpty!29556 setRes!29556))

(declare-fun b!5108486 () Bool)

(declare-fun e!3186154 () Bool)

(declare-fun tp!1425174 () Bool)

(assert (=> b!5108486 (= e!3186154 (and tp_is_empty!37513 tp!1425174))))

(declare-fun b!5108487 () Bool)

(declare-fun res!2174437 () Bool)

(assert (=> b!5108487 (=> res!2174437 e!3186151)))

(declare-fun lt!2103318 () Int)

(assert (=> b!5108487 (= res!2174437 (not (= lt!2103316 lt!2103318)))))

(declare-fun b!5108488 () Bool)

(assert (=> b!5108488 (= e!3186152 (not e!3186151))))

(declare-fun res!2174441 () Bool)

(assert (=> b!5108488 (=> res!2174441 e!3186151)))

(assert (=> b!5108488 (= res!2174441 (not (matchZipper!788 z!4463 (getSuffix!3199 knownP!20 testedP!265))))))

(assert (=> b!5108488 (isPrefix!5525 testedP!265 knownP!20)))

(declare-fun lt!2103315 () Unit!150063)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!662 (List!59112 List!59112 List!59112) Unit!150063)

(assert (=> b!5108488 (= lt!2103315 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!662 knownP!20 testedP!265 input!5745))))

(declare-fun setIsEmpty!29555 () Bool)

(assert (=> setIsEmpty!29555 setRes!29555))

(declare-fun res!2174435 () Bool)

(assert (=> start!538646 (=> (not res!2174435) (not e!3186149))))

(assert (=> start!538646 (= res!2174435 (isPrefix!5525 testedP!265 input!5745))))

(assert (=> start!538646 e!3186149))

(assert (=> start!538646 e!3186154))

(declare-fun condSetEmpty!29556 () Bool)

(assert (=> start!538646 (= condSetEmpty!29556 (= z!4463 (as set.empty (Set Context!7008))))))

(assert (=> start!538646 setRes!29556))

(assert (=> start!538646 e!3186150))

(declare-fun condSetEmpty!29555 () Bool)

(assert (=> start!538646 (= condSetEmpty!29555 (= baseZ!46 (as set.empty (Set Context!7008))))))

(assert (=> start!538646 setRes!29555))

(assert (=> start!538646 e!3186153))

(declare-fun b!5108489 () Bool)

(declare-fun res!2174436 () Bool)

(assert (=> b!5108489 (=> res!2174436 e!3186151)))

(declare-fun lostCauseZipper!1006 ((Set Context!7008)) Bool)

(assert (=> b!5108489 (= res!2174436 (lostCauseZipper!1006 z!4463))))

(declare-fun b!5108490 () Bool)

(assert (=> b!5108490 (= e!3186149 e!3186152)))

(declare-fun res!2174438 () Bool)

(assert (=> b!5108490 (=> (not res!2174438) (not e!3186152))))

(assert (=> b!5108490 (= res!2174438 (>= lt!2103318 lt!2103316))))

(assert (=> b!5108490 (= lt!2103316 (size!39426 testedP!265))))

(assert (=> b!5108490 (= lt!2103318 (size!39426 knownP!20))))

(assert (= (and start!538646 res!2174435) b!5108478))

(assert (= (and b!5108478 res!2174442) b!5108490))

(assert (= (and b!5108490 res!2174438) b!5108480))

(assert (= (and b!5108480 res!2174440) b!5108488))

(assert (= (and b!5108488 (not res!2174441)) b!5108485))

(assert (= (and b!5108485 (not res!2174439)) b!5108489))

(assert (= (and b!5108489 (not res!2174436)) b!5108487))

(assert (= (and b!5108487 (not res!2174437)) b!5108483))

(assert (= (and start!538646 (is-Cons!58988 input!5745)) b!5108486))

(assert (= (and start!538646 condSetEmpty!29556) setIsEmpty!29556))

(assert (= (and start!538646 (not condSetEmpty!29556)) setNonEmpty!29555))

(assert (= setNonEmpty!29555 b!5108482))

(assert (= (and start!538646 (is-Cons!58988 testedP!265)) b!5108481))

(assert (= (and start!538646 condSetEmpty!29555) setIsEmpty!29555))

(assert (= (and start!538646 (not condSetEmpty!29555)) setNonEmpty!29556))

(assert (= setNonEmpty!29556 b!5108484))

(assert (= (and start!538646 (is-Cons!58988 knownP!20)) b!5108479))

(declare-fun m!6165602 () Bool)

(assert (=> b!5108478 m!6165602))

(declare-fun m!6165604 () Bool)

(assert (=> b!5108485 m!6165604))

(declare-fun m!6165606 () Bool)

(assert (=> b!5108489 m!6165606))

(declare-fun m!6165608 () Bool)

(assert (=> b!5108483 m!6165608))

(declare-fun m!6165610 () Bool)

(assert (=> b!5108483 m!6165610))

(assert (=> b!5108483 m!6165610))

(declare-fun m!6165612 () Bool)

(assert (=> b!5108483 m!6165612))

(declare-fun m!6165614 () Bool)

(assert (=> b!5108483 m!6165614))

(declare-fun m!6165616 () Bool)

(assert (=> b!5108483 m!6165616))

(declare-fun m!6165618 () Bool)

(assert (=> b!5108483 m!6165618))

(declare-fun m!6165620 () Bool)

(assert (=> b!5108483 m!6165620))

(declare-fun m!6165622 () Bool)

(assert (=> setNonEmpty!29555 m!6165622))

(declare-fun m!6165624 () Bool)

(assert (=> b!5108480 m!6165624))

(declare-fun m!6165626 () Bool)

(assert (=> b!5108488 m!6165626))

(assert (=> b!5108488 m!6165626))

(declare-fun m!6165628 () Bool)

(assert (=> b!5108488 m!6165628))

(declare-fun m!6165630 () Bool)

(assert (=> b!5108488 m!6165630))

(declare-fun m!6165632 () Bool)

(assert (=> b!5108488 m!6165632))

(declare-fun m!6165634 () Bool)

(assert (=> b!5108490 m!6165634))

(declare-fun m!6165636 () Bool)

(assert (=> b!5108490 m!6165636))

(declare-fun m!6165638 () Bool)

(assert (=> setNonEmpty!29556 m!6165638))

(declare-fun m!6165640 () Bool)

(assert (=> start!538646 m!6165640))

(push 1)

(assert (not b!5108484))

(assert (not b!5108488))

(assert (not b!5108490))

(assert (not setNonEmpty!29556))

(assert (not b!5108479))

(assert (not b!5108485))

(assert (not start!538646))

(assert (not b!5108483))

(assert tp_is_empty!37513)

(assert (not b!5108489))

(assert (not b!5108482))

(assert (not b!5108478))

(assert (not b!5108480))

(assert (not b!5108481))

(assert (not b!5108486))

(assert (not setNonEmpty!29555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1651028 () Bool)

(declare-fun lt!2103341 () List!59112)

(assert (=> d!1651028 (= (++!12949 testedP!265 lt!2103341) input!5745)))

(declare-fun e!3186182 () List!59112)

(assert (=> d!1651028 (= lt!2103341 e!3186182)))

(declare-fun c!877524 () Bool)

(assert (=> d!1651028 (= c!877524 (is-Cons!58988 testedP!265))))

(assert (=> d!1651028 (>= (size!39426 input!5745) (size!39426 testedP!265))))

(assert (=> d!1651028 (= (getSuffix!3199 input!5745 testedP!265) lt!2103341)))

(declare-fun b!5108534 () Bool)

(declare-fun tail!10011 (List!59112) List!59112)

(assert (=> b!5108534 (= e!3186182 (getSuffix!3199 (tail!10011 input!5745) (t!372113 testedP!265)))))

(declare-fun b!5108535 () Bool)

(assert (=> b!5108535 (= e!3186182 input!5745)))

(assert (= (and d!1651028 c!877524) b!5108534))

(assert (= (and d!1651028 (not c!877524)) b!5108535))

(declare-fun m!6165682 () Bool)

(assert (=> d!1651028 m!6165682))

(assert (=> d!1651028 m!6165610))

(assert (=> d!1651028 m!6165634))

(declare-fun m!6165684 () Bool)

(assert (=> b!5108534 m!6165684))

(assert (=> b!5108534 m!6165684))

(declare-fun m!6165686 () Bool)

(assert (=> b!5108534 m!6165686))

(assert (=> b!5108483 d!1651028))

(declare-fun d!1651032 () Bool)

(assert (=> d!1651032 (>= (size!39426 (_1!35102 (findLongestMatchInnerZipper!180 z!4463 testedP!265 (size!39426 testedP!265) (getSuffix!3199 input!5745 testedP!265) input!5745 (size!39426 input!5745)))) (size!39426 testedP!265))))

(declare-fun lt!2103347 () Unit!150063)

(declare-fun choose!37425 ((Set Context!7008) (Set Context!7008) List!59112 List!59112) Unit!150063)

(assert (=> d!1651032 (= lt!2103347 (choose!37425 baseZ!46 z!4463 input!5745 testedP!265))))

(assert (=> d!1651032 (isPrefix!5525 testedP!265 input!5745)))

(assert (=> d!1651032 (= (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!5 baseZ!46 z!4463 input!5745 testedP!265) lt!2103347)))

(declare-fun bs!1191712 () Bool)

(assert (= bs!1191712 d!1651032))

(assert (=> bs!1191712 m!6165634))

(assert (=> bs!1191712 m!6165608))

(assert (=> bs!1191712 m!6165610))

(declare-fun m!6165698 () Bool)

(assert (=> bs!1191712 m!6165698))

(assert (=> bs!1191712 m!6165634))

(assert (=> bs!1191712 m!6165608))

(assert (=> bs!1191712 m!6165640))

(assert (=> bs!1191712 m!6165610))

(declare-fun m!6165700 () Bool)

(assert (=> bs!1191712 m!6165700))

(declare-fun m!6165702 () Bool)

(assert (=> bs!1191712 m!6165702))

(assert (=> b!5108483 d!1651032))

(declare-fun b!5108580 () Bool)

(declare-fun e!3186214 () tuple2!63598)

(assert (=> b!5108580 (= e!3186214 (tuple2!63599 Nil!58988 input!5745))))

(declare-fun b!5108581 () Bool)

(declare-fun e!3186216 () tuple2!63598)

(assert (=> b!5108581 (= e!3186216 (tuple2!63599 testedP!265 lt!2103320))))

(declare-fun b!5108582 () Bool)

(declare-fun c!877545 () Bool)

(declare-fun call!356191 () Bool)

(assert (=> b!5108582 (= c!877545 call!356191)))

(declare-fun lt!2103408 () Unit!150063)

(declare-fun lt!2103414 () Unit!150063)

(assert (=> b!5108582 (= lt!2103408 lt!2103414)))

(declare-fun lt!2103420 () List!59112)

(declare-fun lt!2103406 () C!28506)

(assert (=> b!5108582 (= (++!12949 (++!12949 testedP!265 (Cons!58988 lt!2103406 Nil!58988)) lt!2103420) input!5745)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1538 (List!59112 C!28506 List!59112 List!59112) Unit!150063)

(assert (=> b!5108582 (= lt!2103414 (lemmaMoveElementToOtherListKeepsConcatEq!1538 testedP!265 lt!2103406 lt!2103420 input!5745))))

(assert (=> b!5108582 (= lt!2103420 (tail!10011 lt!2103320))))

(declare-fun head!10856 (List!59112) C!28506)

(assert (=> b!5108582 (= lt!2103406 (head!10856 lt!2103320))))

(declare-fun lt!2103417 () Unit!150063)

(declare-fun lt!2103410 () Unit!150063)

(assert (=> b!5108582 (= lt!2103417 lt!2103410)))

(assert (=> b!5108582 (isPrefix!5525 (++!12949 testedP!265 (Cons!58988 (head!10856 (getSuffix!3199 input!5745 testedP!265)) Nil!58988)) input!5745)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!927 (List!59112 List!59112) Unit!150063)

(assert (=> b!5108582 (= lt!2103410 (lemmaAddHeadSuffixToPrefixStillPrefix!927 testedP!265 input!5745))))

(declare-fun lt!2103423 () List!59112)

(assert (=> b!5108582 (= lt!2103423 (++!12949 testedP!265 (Cons!58988 (head!10856 lt!2103320) Nil!58988)))))

(declare-fun lt!2103428 () Unit!150063)

(declare-fun e!3186215 () Unit!150063)

(assert (=> b!5108582 (= lt!2103428 e!3186215)))

(declare-fun c!877541 () Bool)

(assert (=> b!5108582 (= c!877541 (= (size!39426 testedP!265) (size!39426 input!5745)))))

(declare-fun lt!2103429 () Unit!150063)

(declare-fun lt!2103404 () Unit!150063)

(assert (=> b!5108582 (= lt!2103429 lt!2103404)))

(assert (=> b!5108582 (<= (size!39426 testedP!265) (size!39426 input!5745))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!853 (List!59112 List!59112) Unit!150063)

(assert (=> b!5108582 (= lt!2103404 (lemmaIsPrefixThenSmallerEqSize!853 testedP!265 input!5745))))

(declare-fun e!3186212 () tuple2!63598)

(declare-fun e!3186213 () tuple2!63598)

(assert (=> b!5108582 (= e!3186212 e!3186213)))

(declare-fun bm!356185 () Bool)

(declare-fun call!356195 () C!28506)

(assert (=> bm!356185 (= call!356195 (head!10856 lt!2103320))))

(declare-fun b!5108583 () Bool)

(declare-fun e!3186217 () tuple2!63598)

(assert (=> b!5108583 (= e!3186217 (tuple2!63599 Nil!58988 input!5745))))

(declare-fun bm!356186 () Bool)

(declare-fun call!356190 () Unit!150063)

(assert (=> bm!356186 (= call!356190 (lemmaIsPrefixSameLengthThenSameList!1333 input!5745 testedP!265 input!5745))))

(declare-fun d!1651036 () Bool)

(declare-fun e!3186210 () Bool)

(assert (=> d!1651036 e!3186210))

(declare-fun res!2174484 () Bool)

(assert (=> d!1651036 (=> (not res!2174484) (not e!3186210))))

(declare-fun lt!2103407 () tuple2!63598)

(assert (=> d!1651036 (= res!2174484 (= (++!12949 (_1!35102 lt!2103407) (_2!35102 lt!2103407)) input!5745))))

(assert (=> d!1651036 (= lt!2103407 e!3186214)))

(declare-fun c!877544 () Bool)

(assert (=> d!1651036 (= c!877544 (lostCauseZipper!1006 z!4463))))

(declare-fun lt!2103415 () Unit!150063)

(declare-fun Unit!150067 () Unit!150063)

(assert (=> d!1651036 (= lt!2103415 Unit!150067)))

(assert (=> d!1651036 (= (getSuffix!3199 input!5745 testedP!265) lt!2103320)))

(declare-fun lt!2103405 () Unit!150063)

(declare-fun lt!2103409 () Unit!150063)

(assert (=> d!1651036 (= lt!2103405 lt!2103409)))

(declare-fun lt!2103411 () List!59112)

(assert (=> d!1651036 (= lt!2103320 lt!2103411)))

(declare-fun lemmaSamePrefixThenSameSuffix!2601 (List!59112 List!59112 List!59112 List!59112 List!59112) Unit!150063)

(assert (=> d!1651036 (= lt!2103409 (lemmaSamePrefixThenSameSuffix!2601 testedP!265 lt!2103320 testedP!265 lt!2103411 input!5745))))

(assert (=> d!1651036 (= lt!2103411 (getSuffix!3199 input!5745 testedP!265))))

(declare-fun lt!2103427 () Unit!150063)

(declare-fun lt!2103425 () Unit!150063)

(assert (=> d!1651036 (= lt!2103427 lt!2103425)))

(assert (=> d!1651036 (isPrefix!5525 testedP!265 (++!12949 testedP!265 lt!2103320))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3551 (List!59112 List!59112) Unit!150063)

(assert (=> d!1651036 (= lt!2103425 (lemmaConcatTwoListThenFirstIsPrefix!3551 testedP!265 lt!2103320))))

(assert (=> d!1651036 (= (++!12949 testedP!265 lt!2103320) input!5745)))

(assert (=> d!1651036 (= (findLongestMatchInnerZipper!180 z!4463 testedP!265 lt!2103316 lt!2103320 input!5745 (size!39426 input!5745)) lt!2103407)))

(declare-fun bm!356187 () Bool)

(declare-fun call!356193 () Bool)

(assert (=> bm!356187 (= call!356193 (isPrefix!5525 input!5745 input!5745))))

(declare-fun b!5108584 () Bool)

(declare-fun c!877542 () Bool)

(assert (=> b!5108584 (= c!877542 call!356191)))

(declare-fun lt!2103424 () Unit!150063)

(declare-fun lt!2103418 () Unit!150063)

(assert (=> b!5108584 (= lt!2103424 lt!2103418)))

(assert (=> b!5108584 (= input!5745 testedP!265)))

(assert (=> b!5108584 (= lt!2103418 call!356190)))

(declare-fun lt!2103421 () Unit!150063)

(declare-fun lt!2103416 () Unit!150063)

(assert (=> b!5108584 (= lt!2103421 lt!2103416)))

(assert (=> b!5108584 call!356193))

(declare-fun call!356196 () Unit!150063)

(assert (=> b!5108584 (= lt!2103416 call!356196)))

(assert (=> b!5108584 (= e!3186212 e!3186217)))

(declare-fun bm!356188 () Bool)

(declare-fun nullableZipper!979 ((Set Context!7008)) Bool)

(assert (=> bm!356188 (= call!356191 (nullableZipper!979 z!4463))))

(declare-fun b!5108585 () Bool)

(declare-fun Unit!150068 () Unit!150063)

(assert (=> b!5108585 (= e!3186215 Unit!150068)))

(declare-fun bm!356189 () Bool)

(declare-fun call!356194 () List!59112)

(assert (=> bm!356189 (= call!356194 (tail!10011 lt!2103320))))

(declare-fun b!5108586 () Bool)

(declare-fun e!3186211 () Bool)

(assert (=> b!5108586 (= e!3186211 (>= (size!39426 (_1!35102 lt!2103407)) (size!39426 testedP!265)))))

(declare-fun bm!356190 () Bool)

(declare-fun call!356192 () (Set Context!7008))

(declare-fun derivationStepZipper!767 ((Set Context!7008) C!28506) (Set Context!7008))

(assert (=> bm!356190 (= call!356192 (derivationStepZipper!767 z!4463 call!356195))))

(declare-fun b!5108587 () Bool)

(assert (=> b!5108587 (= e!3186214 e!3186212)))

(declare-fun c!877543 () Bool)

(assert (=> b!5108587 (= c!877543 (= lt!2103316 (size!39426 input!5745)))))

(declare-fun bm!356191 () Bool)

(declare-fun lemmaIsPrefixRefl!3699 (List!59112 List!59112) Unit!150063)

(assert (=> bm!356191 (= call!356196 (lemmaIsPrefixRefl!3699 input!5745 input!5745))))

(declare-fun b!5108588 () Bool)

(declare-fun call!356197 () tuple2!63598)

(assert (=> b!5108588 (= e!3186213 call!356197)))

(declare-fun bm!356192 () Bool)

(assert (=> bm!356192 (= call!356197 (findLongestMatchInnerZipper!180 call!356192 lt!2103423 (+ lt!2103316 1) call!356194 input!5745 (size!39426 input!5745)))))

(declare-fun b!5108589 () Bool)

(assert (=> b!5108589 (= e!3186213 e!3186216)))

(declare-fun lt!2103413 () tuple2!63598)

(assert (=> b!5108589 (= lt!2103413 call!356197)))

(declare-fun c!877546 () Bool)

(declare-fun isEmpty!31839 (List!59112) Bool)

(assert (=> b!5108589 (= c!877546 (isEmpty!31839 (_1!35102 lt!2103413)))))

(declare-fun b!5108590 () Bool)

(assert (=> b!5108590 (= e!3186217 (tuple2!63599 testedP!265 Nil!58988))))

(declare-fun b!5108591 () Bool)

(declare-fun Unit!150069 () Unit!150063)

(assert (=> b!5108591 (= e!3186215 Unit!150069)))

(declare-fun lt!2103422 () Unit!150063)

(assert (=> b!5108591 (= lt!2103422 call!356196)))

(assert (=> b!5108591 call!356193))

(declare-fun lt!2103412 () Unit!150063)

(assert (=> b!5108591 (= lt!2103412 lt!2103422)))

(declare-fun lt!2103419 () Unit!150063)

(assert (=> b!5108591 (= lt!2103419 call!356190)))

(assert (=> b!5108591 (= input!5745 testedP!265)))

(declare-fun lt!2103426 () Unit!150063)

(assert (=> b!5108591 (= lt!2103426 lt!2103419)))

(assert (=> b!5108591 false))

(declare-fun b!5108592 () Bool)

(assert (=> b!5108592 (= e!3186210 e!3186211)))

(declare-fun res!2174483 () Bool)

(assert (=> b!5108592 (=> res!2174483 e!3186211)))

(assert (=> b!5108592 (= res!2174483 (isEmpty!31839 (_1!35102 lt!2103407)))))

(declare-fun b!5108593 () Bool)

(assert (=> b!5108593 (= e!3186216 lt!2103413)))

(assert (= (and d!1651036 c!877544) b!5108580))

(assert (= (and d!1651036 (not c!877544)) b!5108587))

(assert (= (and b!5108587 c!877543) b!5108584))

(assert (= (and b!5108587 (not c!877543)) b!5108582))

(assert (= (and b!5108584 c!877542) b!5108590))

(assert (= (and b!5108584 (not c!877542)) b!5108583))

(assert (= (and b!5108582 c!877541) b!5108591))

(assert (= (and b!5108582 (not c!877541)) b!5108585))

(assert (= (and b!5108582 c!877545) b!5108589))

(assert (= (and b!5108582 (not c!877545)) b!5108588))

(assert (= (and b!5108589 c!877546) b!5108581))

(assert (= (and b!5108589 (not c!877546)) b!5108593))

(assert (= (or b!5108589 b!5108588) bm!356189))

(assert (= (or b!5108589 b!5108588) bm!356185))

(assert (= (or b!5108589 b!5108588) bm!356190))

(assert (= (or b!5108589 b!5108588) bm!356192))

(assert (= (or b!5108584 b!5108591) bm!356187))

(assert (= (or b!5108584 b!5108591) bm!356191))

(assert (= (or b!5108584 b!5108582) bm!356188))

(assert (= (or b!5108584 b!5108591) bm!356186))

(assert (= (and d!1651036 res!2174484) b!5108592))

(assert (= (and b!5108592 (not res!2174483)) b!5108586))

(declare-fun m!6165704 () Bool)

(assert (=> bm!356185 m!6165704))

(declare-fun m!6165706 () Bool)

(assert (=> b!5108592 m!6165706))

(declare-fun m!6165708 () Bool)

(assert (=> bm!356189 m!6165708))

(assert (=> b!5108582 m!6165634))

(assert (=> b!5108582 m!6165704))

(assert (=> b!5108582 m!6165608))

(declare-fun m!6165710 () Bool)

(assert (=> b!5108582 m!6165710))

(declare-fun m!6165712 () Bool)

(assert (=> b!5108582 m!6165712))

(declare-fun m!6165714 () Bool)

(assert (=> b!5108582 m!6165714))

(assert (=> b!5108582 m!6165708))

(assert (=> b!5108582 m!6165712))

(declare-fun m!6165716 () Bool)

(assert (=> b!5108582 m!6165716))

(assert (=> b!5108582 m!6165608))

(assert (=> b!5108582 m!6165716))

(declare-fun m!6165718 () Bool)

(assert (=> b!5108582 m!6165718))

(declare-fun m!6165720 () Bool)

(assert (=> b!5108582 m!6165720))

(declare-fun m!6165722 () Bool)

(assert (=> b!5108582 m!6165722))

(declare-fun m!6165724 () Bool)

(assert (=> b!5108582 m!6165724))

(declare-fun m!6165726 () Bool)

(assert (=> b!5108582 m!6165726))

(assert (=> b!5108582 m!6165610))

(declare-fun m!6165728 () Bool)

(assert (=> bm!356186 m!6165728))

(declare-fun m!6165730 () Bool)

(assert (=> bm!356187 m!6165730))

(declare-fun m!6165732 () Bool)

(assert (=> bm!356190 m!6165732))

(declare-fun m!6165734 () Bool)

(assert (=> b!5108589 m!6165734))

(declare-fun m!6165736 () Bool)

(assert (=> d!1651036 m!6165736))

(declare-fun m!6165738 () Bool)

(assert (=> d!1651036 m!6165738))

(assert (=> d!1651036 m!6165614))

(declare-fun m!6165740 () Bool)

(assert (=> d!1651036 m!6165740))

(assert (=> d!1651036 m!6165614))

(declare-fun m!6165742 () Bool)

(assert (=> d!1651036 m!6165742))

(assert (=> d!1651036 m!6165608))

(assert (=> d!1651036 m!6165606))

(declare-fun m!6165744 () Bool)

(assert (=> b!5108586 m!6165744))

(assert (=> b!5108586 m!6165634))

(assert (=> bm!356192 m!6165610))

(declare-fun m!6165746 () Bool)

(assert (=> bm!356192 m!6165746))

(declare-fun m!6165748 () Bool)

(assert (=> bm!356188 m!6165748))

(declare-fun m!6165750 () Bool)

(assert (=> bm!356191 m!6165750))

(assert (=> b!5108483 d!1651036))

(declare-fun d!1651038 () Bool)

(declare-fun lt!2103432 () Int)

(assert (=> d!1651038 (>= lt!2103432 0)))

(declare-fun e!3186220 () Int)

(assert (=> d!1651038 (= lt!2103432 e!3186220)))

(declare-fun c!877549 () Bool)

(assert (=> d!1651038 (= c!877549 (is-Nil!58988 (_1!35102 (findLongestMatchInnerZipper!180 z!4463 testedP!265 lt!2103316 lt!2103320 input!5745 (size!39426 input!5745)))))))

(assert (=> d!1651038 (= (size!39426 (_1!35102 (findLongestMatchInnerZipper!180 z!4463 testedP!265 lt!2103316 lt!2103320 input!5745 (size!39426 input!5745)))) lt!2103432)))

(declare-fun b!5108598 () Bool)

(assert (=> b!5108598 (= e!3186220 0)))

(declare-fun b!5108599 () Bool)

(assert (=> b!5108599 (= e!3186220 (+ 1 (size!39426 (t!372113 (_1!35102 (findLongestMatchInnerZipper!180 z!4463 testedP!265 lt!2103316 lt!2103320 input!5745 (size!39426 input!5745)))))))))

(assert (= (and d!1651038 c!877549) b!5108598))

(assert (= (and d!1651038 (not c!877549)) b!5108599))

(declare-fun m!6165752 () Bool)

(assert (=> b!5108599 m!6165752))

(assert (=> b!5108483 d!1651038))

(declare-fun d!1651040 () Bool)

(assert (=> d!1651040 (= testedP!265 knownP!20)))

(declare-fun lt!2103435 () Unit!150063)

(declare-fun choose!37426 (List!59112 List!59112 List!59112) Unit!150063)

(assert (=> d!1651040 (= lt!2103435 (choose!37426 testedP!265 knownP!20 input!5745))))

(assert (=> d!1651040 (isPrefix!5525 testedP!265 input!5745)))

(assert (=> d!1651040 (= (lemmaIsPrefixSameLengthThenSameList!1333 testedP!265 knownP!20 input!5745) lt!2103435)))

(declare-fun bs!1191713 () Bool)

(assert (= bs!1191713 d!1651040))

(declare-fun m!6165754 () Bool)

(assert (=> bs!1191713 m!6165754))

(assert (=> bs!1191713 m!6165640))

(assert (=> b!5108483 d!1651040))

(declare-fun d!1651042 () Bool)

(declare-fun lt!2103436 () Int)

(assert (=> d!1651042 (>= lt!2103436 0)))

(declare-fun e!3186221 () Int)

(assert (=> d!1651042 (= lt!2103436 e!3186221)))

(declare-fun c!877550 () Bool)

(assert (=> d!1651042 (= c!877550 (is-Nil!58988 input!5745))))

(assert (=> d!1651042 (= (size!39426 input!5745) lt!2103436)))

(declare-fun b!5108600 () Bool)

(assert (=> b!5108600 (= e!3186221 0)))

(declare-fun b!5108601 () Bool)

(assert (=> b!5108601 (= e!3186221 (+ 1 (size!39426 (t!372113 input!5745))))))

(assert (= (and d!1651042 c!877550) b!5108600))

(assert (= (and d!1651042 (not c!877550)) b!5108601))

(declare-fun m!6165756 () Bool)

(assert (=> b!5108601 m!6165756))

(assert (=> b!5108483 d!1651042))

(declare-fun e!3186226 () Bool)

(declare-fun b!5108613 () Bool)

(declare-fun lt!2103439 () List!59112)

(assert (=> b!5108613 (= e!3186226 (or (not (= lt!2103320 Nil!58988)) (= lt!2103439 testedP!265)))))

(declare-fun b!5108610 () Bool)

(declare-fun e!3186227 () List!59112)

(assert (=> b!5108610 (= e!3186227 lt!2103320)))

(declare-fun b!5108612 () Bool)

(declare-fun res!2174490 () Bool)

(assert (=> b!5108612 (=> (not res!2174490) (not e!3186226))))

(assert (=> b!5108612 (= res!2174490 (= (size!39426 lt!2103439) (+ (size!39426 testedP!265) (size!39426 lt!2103320))))))

(declare-fun d!1651044 () Bool)

(assert (=> d!1651044 e!3186226))

(declare-fun res!2174489 () Bool)

(assert (=> d!1651044 (=> (not res!2174489) (not e!3186226))))

(declare-fun content!10480 (List!59112) (Set C!28506))

(assert (=> d!1651044 (= res!2174489 (= (content!10480 lt!2103439) (set.union (content!10480 testedP!265) (content!10480 lt!2103320))))))

(assert (=> d!1651044 (= lt!2103439 e!3186227)))

(declare-fun c!877553 () Bool)

(assert (=> d!1651044 (= c!877553 (is-Nil!58988 testedP!265))))

(assert (=> d!1651044 (= (++!12949 testedP!265 lt!2103320) lt!2103439)))

(declare-fun b!5108611 () Bool)

(assert (=> b!5108611 (= e!3186227 (Cons!58988 (h!65436 testedP!265) (++!12949 (t!372113 testedP!265) lt!2103320)))))

(assert (= (and d!1651044 c!877553) b!5108610))

(assert (= (and d!1651044 (not c!877553)) b!5108611))

(assert (= (and d!1651044 res!2174489) b!5108612))

(assert (= (and b!5108612 res!2174490) b!5108613))

(declare-fun m!6165758 () Bool)

(assert (=> b!5108612 m!6165758))

(assert (=> b!5108612 m!6165634))

(declare-fun m!6165760 () Bool)

(assert (=> b!5108612 m!6165760))

(declare-fun m!6165762 () Bool)

(assert (=> d!1651044 m!6165762))

(declare-fun m!6165764 () Bool)

(assert (=> d!1651044 m!6165764))

(declare-fun m!6165766 () Bool)

(assert (=> d!1651044 m!6165766))

(declare-fun m!6165768 () Bool)

(assert (=> b!5108611 m!6165768))

(assert (=> b!5108483 d!1651044))

(declare-fun b!5108624 () Bool)

(declare-fun e!3186234 () Bool)

(assert (=> b!5108624 (= e!3186234 (isPrefix!5525 (tail!10011 testedP!265) (tail!10011 input!5745)))))

(declare-fun d!1651046 () Bool)

(declare-fun e!3186236 () Bool)

(assert (=> d!1651046 e!3186236))

(declare-fun res!2174499 () Bool)

(assert (=> d!1651046 (=> res!2174499 e!3186236)))

(declare-fun lt!2103442 () Bool)

(assert (=> d!1651046 (= res!2174499 (not lt!2103442))))

(declare-fun e!3186235 () Bool)

(assert (=> d!1651046 (= lt!2103442 e!3186235)))

(declare-fun res!2174500 () Bool)

(assert (=> d!1651046 (=> res!2174500 e!3186235)))

(assert (=> d!1651046 (= res!2174500 (is-Nil!58988 testedP!265))))

(assert (=> d!1651046 (= (isPrefix!5525 testedP!265 input!5745) lt!2103442)))

(declare-fun b!5108625 () Bool)

(assert (=> b!5108625 (= e!3186236 (>= (size!39426 input!5745) (size!39426 testedP!265)))))

(declare-fun b!5108622 () Bool)

(assert (=> b!5108622 (= e!3186235 e!3186234)))

(declare-fun res!2174501 () Bool)

(assert (=> b!5108622 (=> (not res!2174501) (not e!3186234))))

(assert (=> b!5108622 (= res!2174501 (not (is-Nil!58988 input!5745)))))

(declare-fun b!5108623 () Bool)

(declare-fun res!2174502 () Bool)

(assert (=> b!5108623 (=> (not res!2174502) (not e!3186234))))

(assert (=> b!5108623 (= res!2174502 (= (head!10856 testedP!265) (head!10856 input!5745)))))

(assert (= (and d!1651046 (not res!2174500)) b!5108622))

(assert (= (and b!5108622 res!2174501) b!5108623))

(assert (= (and b!5108623 res!2174502) b!5108624))

(assert (= (and d!1651046 (not res!2174499)) b!5108625))

(declare-fun m!6165770 () Bool)

(assert (=> b!5108624 m!6165770))

(assert (=> b!5108624 m!6165684))

(assert (=> b!5108624 m!6165770))

(assert (=> b!5108624 m!6165684))

(declare-fun m!6165772 () Bool)

(assert (=> b!5108624 m!6165772))

(assert (=> b!5108625 m!6165610))

(assert (=> b!5108625 m!6165634))

(declare-fun m!6165774 () Bool)

(assert (=> b!5108623 m!6165774))

(declare-fun m!6165776 () Bool)

(assert (=> b!5108623 m!6165776))

(assert (=> start!538646 d!1651046))

(declare-fun d!1651048 () Bool)

(declare-fun c!877556 () Bool)

(assert (=> d!1651048 (= c!877556 (isEmpty!31839 knownP!20))))

(declare-fun e!3186239 () Bool)

(assert (=> d!1651048 (= (matchZipper!788 baseZ!46 knownP!20) e!3186239)))

(declare-fun b!5108630 () Bool)

(assert (=> b!5108630 (= e!3186239 (nullableZipper!979 baseZ!46))))

(declare-fun b!5108631 () Bool)

(assert (=> b!5108631 (= e!3186239 (matchZipper!788 (derivationStepZipper!767 baseZ!46 (head!10856 knownP!20)) (tail!10011 knownP!20)))))

(assert (= (and d!1651048 c!877556) b!5108630))

(assert (= (and d!1651048 (not c!877556)) b!5108631))

(declare-fun m!6165778 () Bool)

(assert (=> d!1651048 m!6165778))

(declare-fun m!6165780 () Bool)

(assert (=> b!5108630 m!6165780))

(declare-fun m!6165782 () Bool)

(assert (=> b!5108631 m!6165782))

(assert (=> b!5108631 m!6165782))

(declare-fun m!6165784 () Bool)

(assert (=> b!5108631 m!6165784))

(declare-fun m!6165786 () Bool)

(assert (=> b!5108631 m!6165786))

(assert (=> b!5108631 m!6165784))

(assert (=> b!5108631 m!6165786))

(declare-fun m!6165788 () Bool)

(assert (=> b!5108631 m!6165788))

(assert (=> b!5108480 d!1651048))

(declare-fun bs!1191714 () Bool)

(declare-fun b!5108636 () Bool)

(declare-fun d!1651050 () Bool)

(assert (= bs!1191714 (and b!5108636 d!1651050)))

(declare-fun lambda!250068 () Int)

(declare-fun lambda!250067 () Int)

(assert (=> bs!1191714 (not (= lambda!250068 lambda!250067))))

(declare-fun bs!1191715 () Bool)

(declare-fun b!5108637 () Bool)

(assert (= bs!1191715 (and b!5108637 d!1651050)))

(declare-fun lambda!250069 () Int)

(assert (=> bs!1191715 (not (= lambda!250069 lambda!250067))))

(declare-fun bs!1191716 () Bool)

(assert (= bs!1191716 (and b!5108637 b!5108636)))

(assert (=> bs!1191716 (= lambda!250069 lambda!250068)))

(declare-fun e!3186246 () Unit!150063)

(declare-fun Unit!150070 () Unit!150063)

(assert (=> b!5108637 (= e!3186246 Unit!150070)))

(declare-datatypes ((List!59116 0))(
  ( (Nil!58992) (Cons!58992 (h!65440 Context!7008) (t!372117 List!59116)) )
))
(declare-fun lt!2103462 () List!59116)

(declare-fun call!356202 () List!59116)

(assert (=> b!5108637 (= lt!2103462 call!356202)))

(declare-fun lt!2103464 () Unit!150063)

(declare-fun lemmaForallThenNotExists!273 (List!59116 Int) Unit!150063)

(assert (=> b!5108637 (= lt!2103464 (lemmaForallThenNotExists!273 lt!2103462 lambda!250067))))

(declare-fun call!356203 () Bool)

(assert (=> b!5108637 (not call!356203)))

(declare-fun lt!2103466 () Unit!150063)

(assert (=> b!5108637 (= lt!2103466 lt!2103464)))

(declare-fun bm!356197 () Bool)

(declare-fun toList!8216 ((Set Context!7008)) List!59116)

(assert (=> bm!356197 (= call!356202 (toList!8216 z!4463))))

(declare-fun Unit!150071 () Unit!150063)

(assert (=> b!5108636 (= e!3186246 Unit!150071)))

(declare-fun lt!2103460 () List!59116)

(assert (=> b!5108636 (= lt!2103460 call!356202)))

(declare-fun lt!2103463 () Unit!150063)

(declare-fun lemmaNotForallThenExists!290 (List!59116 Int) Unit!150063)

(assert (=> b!5108636 (= lt!2103463 (lemmaNotForallThenExists!290 lt!2103460 lambda!250067))))

(assert (=> b!5108636 call!356203))

(declare-fun lt!2103459 () Unit!150063)

(assert (=> b!5108636 (= lt!2103459 lt!2103463)))

(declare-fun bm!356198 () Bool)

(declare-fun c!877567 () Bool)

(declare-fun exists!1423 (List!59116 Int) Bool)

(assert (=> bm!356198 (= call!356203 (exists!1423 (ite c!877567 lt!2103460 lt!2103462) (ite c!877567 lambda!250068 lambda!250069)))))

(declare-fun lt!2103465 () Bool)

(declare-datatypes ((Option!14650 0))(
  ( (None!14649) (Some!14649 (v!50662 List!59112)) )
))
(declare-fun isEmpty!31840 (Option!14650) Bool)

(declare-fun getLanguageWitness!763 ((Set Context!7008)) Option!14650)

(assert (=> d!1651050 (= lt!2103465 (isEmpty!31840 (getLanguageWitness!763 z!4463)))))

(declare-fun forall!13510 ((Set Context!7008) Int) Bool)

(assert (=> d!1651050 (= lt!2103465 (forall!13510 z!4463 lambda!250067))))

(declare-fun lt!2103461 () Unit!150063)

(assert (=> d!1651050 (= lt!2103461 e!3186246)))

(assert (=> d!1651050 (= c!877567 (not (forall!13510 z!4463 lambda!250067)))))

(assert (=> d!1651050 (= (lostCauseZipper!1006 z!4463) lt!2103465)))

(assert (= (and d!1651050 c!877567) b!5108636))

(assert (= (and d!1651050 (not c!877567)) b!5108637))

(assert (= (or b!5108636 b!5108637) bm!356197))

(assert (= (or b!5108636 b!5108637) bm!356198))

(declare-fun m!6165790 () Bool)

(assert (=> d!1651050 m!6165790))

(assert (=> d!1651050 m!6165790))

(declare-fun m!6165792 () Bool)

(assert (=> d!1651050 m!6165792))

(declare-fun m!6165794 () Bool)

(assert (=> d!1651050 m!6165794))

(assert (=> d!1651050 m!6165794))

(declare-fun m!6165796 () Bool)

(assert (=> bm!356198 m!6165796))

(declare-fun m!6165798 () Bool)

(assert (=> bm!356197 m!6165798))

(declare-fun m!6165800 () Bool)

(assert (=> b!5108636 m!6165800))

(declare-fun m!6165802 () Bool)

(assert (=> b!5108637 m!6165802))

(assert (=> b!5108489 d!1651050))

(declare-fun d!1651052 () Bool)

(declare-fun c!877574 () Bool)

(assert (=> d!1651052 (= c!877574 (is-Cons!58988 testedP!265))))

(declare-fun e!3186253 () (Set Context!7008))

(assert (=> d!1651052 (= (derivationZipper!19 baseZ!46 testedP!265) e!3186253)))

(declare-fun b!5108642 () Bool)

(assert (=> b!5108642 (= e!3186253 (derivationZipper!19 (derivationStepZipper!767 baseZ!46 (h!65436 testedP!265)) (t!372113 testedP!265)))))

(declare-fun b!5108643 () Bool)

(assert (=> b!5108643 (= e!3186253 baseZ!46)))

(assert (= (and d!1651052 c!877574) b!5108642))

(assert (= (and d!1651052 (not c!877574)) b!5108643))

(declare-fun m!6165804 () Bool)

(assert (=> b!5108642 m!6165804))

(assert (=> b!5108642 m!6165804))

(declare-fun m!6165806 () Bool)

(assert (=> b!5108642 m!6165806))

(assert (=> b!5108485 d!1651052))

(declare-fun d!1651054 () Bool)

(declare-fun c!877575 () Bool)

(assert (=> d!1651054 (= c!877575 (isEmpty!31839 (getSuffix!3199 knownP!20 testedP!265)))))

(declare-fun e!3186254 () Bool)

(assert (=> d!1651054 (= (matchZipper!788 z!4463 (getSuffix!3199 knownP!20 testedP!265)) e!3186254)))

(declare-fun b!5108644 () Bool)

(assert (=> b!5108644 (= e!3186254 (nullableZipper!979 z!4463))))

(declare-fun b!5108645 () Bool)

(assert (=> b!5108645 (= e!3186254 (matchZipper!788 (derivationStepZipper!767 z!4463 (head!10856 (getSuffix!3199 knownP!20 testedP!265))) (tail!10011 (getSuffix!3199 knownP!20 testedP!265))))))

(assert (= (and d!1651054 c!877575) b!5108644))

(assert (= (and d!1651054 (not c!877575)) b!5108645))

(assert (=> d!1651054 m!6165626))

(declare-fun m!6165808 () Bool)

(assert (=> d!1651054 m!6165808))

(assert (=> b!5108644 m!6165748))

(assert (=> b!5108645 m!6165626))

(declare-fun m!6165810 () Bool)

(assert (=> b!5108645 m!6165810))

(assert (=> b!5108645 m!6165810))

(declare-fun m!6165812 () Bool)

(assert (=> b!5108645 m!6165812))

(assert (=> b!5108645 m!6165626))

(declare-fun m!6165814 () Bool)

(assert (=> b!5108645 m!6165814))

(assert (=> b!5108645 m!6165812))

(assert (=> b!5108645 m!6165814))

(declare-fun m!6165816 () Bool)

(assert (=> b!5108645 m!6165816))

(assert (=> b!5108488 d!1651054))

(declare-fun d!1651056 () Bool)

(declare-fun lt!2103479 () List!59112)

(assert (=> d!1651056 (= (++!12949 testedP!265 lt!2103479) knownP!20)))

(declare-fun e!3186255 () List!59112)

(assert (=> d!1651056 (= lt!2103479 e!3186255)))

(declare-fun c!877578 () Bool)

(assert (=> d!1651056 (= c!877578 (is-Cons!58988 testedP!265))))

(assert (=> d!1651056 (>= (size!39426 knownP!20) (size!39426 testedP!265))))

(assert (=> d!1651056 (= (getSuffix!3199 knownP!20 testedP!265) lt!2103479)))

(declare-fun b!5108646 () Bool)

(assert (=> b!5108646 (= e!3186255 (getSuffix!3199 (tail!10011 knownP!20) (t!372113 testedP!265)))))

(declare-fun b!5108647 () Bool)

(assert (=> b!5108647 (= e!3186255 knownP!20)))

(assert (= (and d!1651056 c!877578) b!5108646))

(assert (= (and d!1651056 (not c!877578)) b!5108647))

(declare-fun m!6165818 () Bool)

(assert (=> d!1651056 m!6165818))

(assert (=> d!1651056 m!6165636))

(assert (=> d!1651056 m!6165634))

(assert (=> b!5108646 m!6165786))

(assert (=> b!5108646 m!6165786))

(declare-fun m!6165820 () Bool)

(assert (=> b!5108646 m!6165820))

(assert (=> b!5108488 d!1651056))

(declare-fun b!5108650 () Bool)

(declare-fun e!3186256 () Bool)

(assert (=> b!5108650 (= e!3186256 (isPrefix!5525 (tail!10011 testedP!265) (tail!10011 knownP!20)))))

(declare-fun d!1651058 () Bool)

(declare-fun e!3186258 () Bool)

(assert (=> d!1651058 e!3186258))

(declare-fun res!2174503 () Bool)

(assert (=> d!1651058 (=> res!2174503 e!3186258)))

(declare-fun lt!2103480 () Bool)

(assert (=> d!1651058 (= res!2174503 (not lt!2103480))))

(declare-fun e!3186257 () Bool)

(assert (=> d!1651058 (= lt!2103480 e!3186257)))

(declare-fun res!2174504 () Bool)

(assert (=> d!1651058 (=> res!2174504 e!3186257)))

(assert (=> d!1651058 (= res!2174504 (is-Nil!58988 testedP!265))))

(assert (=> d!1651058 (= (isPrefix!5525 testedP!265 knownP!20) lt!2103480)))

(declare-fun b!5108651 () Bool)

(assert (=> b!5108651 (= e!3186258 (>= (size!39426 knownP!20) (size!39426 testedP!265)))))

(declare-fun b!5108648 () Bool)

(assert (=> b!5108648 (= e!3186257 e!3186256)))

(declare-fun res!2174505 () Bool)

(assert (=> b!5108648 (=> (not res!2174505) (not e!3186256))))

(assert (=> b!5108648 (= res!2174505 (not (is-Nil!58988 knownP!20)))))

(declare-fun b!5108649 () Bool)

(declare-fun res!2174506 () Bool)

(assert (=> b!5108649 (=> (not res!2174506) (not e!3186256))))

(assert (=> b!5108649 (= res!2174506 (= (head!10856 testedP!265) (head!10856 knownP!20)))))

(assert (= (and d!1651058 (not res!2174504)) b!5108648))

(assert (= (and b!5108648 res!2174505) b!5108649))

(assert (= (and b!5108649 res!2174506) b!5108650))

(assert (= (and d!1651058 (not res!2174503)) b!5108651))

(assert (=> b!5108650 m!6165770))

(assert (=> b!5108650 m!6165786))

(assert (=> b!5108650 m!6165770))

(assert (=> b!5108650 m!6165786))

(declare-fun m!6165822 () Bool)

(assert (=> b!5108650 m!6165822))

(assert (=> b!5108651 m!6165636))

(assert (=> b!5108651 m!6165634))

(assert (=> b!5108649 m!6165774))

(assert (=> b!5108649 m!6165782))

(assert (=> b!5108488 d!1651058))

(declare-fun d!1651060 () Bool)

(assert (=> d!1651060 (isPrefix!5525 testedP!265 knownP!20)))

(declare-fun lt!2103491 () Unit!150063)

(declare-fun choose!37427 (List!59112 List!59112 List!59112) Unit!150063)

(assert (=> d!1651060 (= lt!2103491 (choose!37427 knownP!20 testedP!265 input!5745))))

(assert (=> d!1651060 (isPrefix!5525 knownP!20 input!5745)))

(assert (=> d!1651060 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!662 knownP!20 testedP!265 input!5745) lt!2103491)))

(declare-fun bs!1191718 () Bool)

(assert (= bs!1191718 d!1651060))

(assert (=> bs!1191718 m!6165630))

(declare-fun m!6165824 () Bool)

(assert (=> bs!1191718 m!6165824))

(assert (=> bs!1191718 m!6165602))

(assert (=> b!5108488 d!1651060))

(declare-fun b!5108656 () Bool)

(declare-fun e!3186260 () Bool)

(assert (=> b!5108656 (= e!3186260 (isPrefix!5525 (tail!10011 knownP!20) (tail!10011 input!5745)))))

(declare-fun d!1651062 () Bool)

(declare-fun e!3186262 () Bool)

(assert (=> d!1651062 e!3186262))

(declare-fun res!2174507 () Bool)

(assert (=> d!1651062 (=> res!2174507 e!3186262)))

(declare-fun lt!2103492 () Bool)

(assert (=> d!1651062 (= res!2174507 (not lt!2103492))))

(declare-fun e!3186261 () Bool)

(assert (=> d!1651062 (= lt!2103492 e!3186261)))

(declare-fun res!2174508 () Bool)

(assert (=> d!1651062 (=> res!2174508 e!3186261)))

(assert (=> d!1651062 (= res!2174508 (is-Nil!58988 knownP!20))))

(assert (=> d!1651062 (= (isPrefix!5525 knownP!20 input!5745) lt!2103492)))

(declare-fun b!5108657 () Bool)

(assert (=> b!5108657 (= e!3186262 (>= (size!39426 input!5745) (size!39426 knownP!20)))))

(declare-fun b!5108654 () Bool)

(assert (=> b!5108654 (= e!3186261 e!3186260)))

(declare-fun res!2174509 () Bool)

(assert (=> b!5108654 (=> (not res!2174509) (not e!3186260))))

(assert (=> b!5108654 (= res!2174509 (not (is-Nil!58988 input!5745)))))

(declare-fun b!5108655 () Bool)

(declare-fun res!2174510 () Bool)

(assert (=> b!5108655 (=> (not res!2174510) (not e!3186260))))

(assert (=> b!5108655 (= res!2174510 (= (head!10856 knownP!20) (head!10856 input!5745)))))

(assert (= (and d!1651062 (not res!2174508)) b!5108654))

(assert (= (and b!5108654 res!2174509) b!5108655))

(assert (= (and b!5108655 res!2174510) b!5108656))

(assert (= (and d!1651062 (not res!2174507)) b!5108657))

(assert (=> b!5108656 m!6165786))

(assert (=> b!5108656 m!6165684))

(assert (=> b!5108656 m!6165786))

(assert (=> b!5108656 m!6165684))

(declare-fun m!6165826 () Bool)

(assert (=> b!5108656 m!6165826))

(assert (=> b!5108657 m!6165610))

(assert (=> b!5108657 m!6165636))

(assert (=> b!5108655 m!6165782))

(assert (=> b!5108655 m!6165776))

(assert (=> b!5108478 d!1651062))

(declare-fun d!1651064 () Bool)

(declare-fun lt!2103493 () Int)

(assert (=> d!1651064 (>= lt!2103493 0)))

(declare-fun e!3186263 () Int)

(assert (=> d!1651064 (= lt!2103493 e!3186263)))

(declare-fun c!877580 () Bool)

(assert (=> d!1651064 (= c!877580 (is-Nil!58988 testedP!265))))

(assert (=> d!1651064 (= (size!39426 testedP!265) lt!2103493)))

(declare-fun b!5108658 () Bool)

(assert (=> b!5108658 (= e!3186263 0)))

(declare-fun b!5108659 () Bool)

(assert (=> b!5108659 (= e!3186263 (+ 1 (size!39426 (t!372113 testedP!265))))))

(assert (= (and d!1651064 c!877580) b!5108658))

(assert (= (and d!1651064 (not c!877580)) b!5108659))

(declare-fun m!6165828 () Bool)

(assert (=> b!5108659 m!6165828))

(assert (=> b!5108490 d!1651064))

(declare-fun d!1651066 () Bool)

(declare-fun lt!2103494 () Int)

(assert (=> d!1651066 (>= lt!2103494 0)))

(declare-fun e!3186264 () Int)

(assert (=> d!1651066 (= lt!2103494 e!3186264)))

(declare-fun c!877581 () Bool)

(assert (=> d!1651066 (= c!877581 (is-Nil!58988 knownP!20))))

(assert (=> d!1651066 (= (size!39426 knownP!20) lt!2103494)))

(declare-fun b!5108660 () Bool)

(assert (=> b!5108660 (= e!3186264 0)))

(declare-fun b!5108661 () Bool)

(assert (=> b!5108661 (= e!3186264 (+ 1 (size!39426 (t!372113 knownP!20))))))

(assert (= (and d!1651066 c!877581) b!5108660))

(assert (= (and d!1651066 (not c!877581)) b!5108661))

(declare-fun m!6165834 () Bool)

(assert (=> b!5108661 m!6165834))

(assert (=> b!5108490 d!1651066))

(declare-fun d!1651068 () Bool)

(declare-fun lambda!250085 () Int)

(declare-fun forall!13511 (List!59113 Int) Bool)

(assert (=> d!1651068 (= (inv!78482 setElem!29555) (forall!13511 (exprs!4004 setElem!29555) lambda!250085))))

(declare-fun bs!1191721 () Bool)

(assert (= bs!1191721 d!1651068))

(declare-fun m!6165846 () Bool)

(assert (=> bs!1191721 m!6165846))

(assert (=> setNonEmpty!29555 d!1651068))

(declare-fun bs!1191722 () Bool)

(declare-fun d!1651072 () Bool)

(assert (= bs!1191722 (and d!1651072 d!1651068)))

(declare-fun lambda!250086 () Int)

(assert (=> bs!1191722 (= lambda!250086 lambda!250085)))

(assert (=> d!1651072 (= (inv!78482 setElem!29556) (forall!13511 (exprs!4004 setElem!29556) lambda!250086))))

(declare-fun bs!1191723 () Bool)

(assert (= bs!1191723 d!1651072))

(declare-fun m!6165848 () Bool)

(assert (=> bs!1191723 m!6165848))

(assert (=> setNonEmpty!29556 d!1651072))

(declare-fun b!5108672 () Bool)

(declare-fun e!3186270 () Bool)

(declare-fun tp!1425204 () Bool)

(declare-fun tp!1425205 () Bool)

(assert (=> b!5108672 (= e!3186270 (and tp!1425204 tp!1425205))))

(assert (=> b!5108484 (= tp!1425175 e!3186270)))

(assert (= (and b!5108484 (is-Cons!58989 (exprs!4004 setElem!29556))) b!5108672))

(declare-fun b!5108677 () Bool)

(declare-fun e!3186273 () Bool)

(declare-fun tp!1425208 () Bool)

(assert (=> b!5108677 (= e!3186273 (and tp_is_empty!37513 tp!1425208))))

(assert (=> b!5108486 (= tp!1425174 e!3186273)))

(assert (= (and b!5108486 (is-Cons!58988 (t!372113 input!5745))) b!5108677))

(declare-fun b!5108678 () Bool)

(declare-fun e!3186274 () Bool)

(declare-fun tp!1425209 () Bool)

(assert (=> b!5108678 (= e!3186274 (and tp_is_empty!37513 tp!1425209))))

(assert (=> b!5108479 (= tp!1425172 e!3186274)))

(assert (= (and b!5108479 (is-Cons!58988 (t!372113 knownP!20))) b!5108678))

(declare-fun b!5108679 () Bool)

(declare-fun e!3186275 () Bool)

(declare-fun tp!1425210 () Bool)

(assert (=> b!5108679 (= e!3186275 (and tp_is_empty!37513 tp!1425210))))

(assert (=> b!5108481 (= tp!1425176 e!3186275)))

(assert (= (and b!5108481 (is-Cons!58988 (t!372113 testedP!265))) b!5108679))

(declare-fun b!5108680 () Bool)

(declare-fun e!3186276 () Bool)

(declare-fun tp!1425211 () Bool)

(declare-fun tp!1425212 () Bool)

(assert (=> b!5108680 (= e!3186276 (and tp!1425211 tp!1425212))))

(assert (=> b!5108482 (= tp!1425178 e!3186276)))

(assert (= (and b!5108482 (is-Cons!58989 (exprs!4004 setElem!29555))) b!5108680))

(declare-fun condSetEmpty!29565 () Bool)

(assert (=> setNonEmpty!29555 (= condSetEmpty!29565 (= setRest!29556 (as set.empty (Set Context!7008))))))

(declare-fun setRes!29565 () Bool)

(assert (=> setNonEmpty!29555 (= tp!1425173 setRes!29565)))

(declare-fun setIsEmpty!29565 () Bool)

(assert (=> setIsEmpty!29565 setRes!29565))

(declare-fun setElem!29565 () Context!7008)

(declare-fun tp!1425218 () Bool)

(declare-fun e!3186279 () Bool)

(declare-fun setNonEmpty!29565 () Bool)

(assert (=> setNonEmpty!29565 (= setRes!29565 (and tp!1425218 (inv!78482 setElem!29565) e!3186279))))

(declare-fun setRest!29565 () (Set Context!7008))

(assert (=> setNonEmpty!29565 (= setRest!29556 (set.union (set.insert setElem!29565 (as set.empty (Set Context!7008))) setRest!29565))))

(declare-fun b!5108685 () Bool)

(declare-fun tp!1425217 () Bool)

(assert (=> b!5108685 (= e!3186279 tp!1425217)))

(assert (= (and setNonEmpty!29555 condSetEmpty!29565) setIsEmpty!29565))

(assert (= (and setNonEmpty!29555 (not condSetEmpty!29565)) setNonEmpty!29565))

(assert (= setNonEmpty!29565 b!5108685))

(declare-fun m!6165858 () Bool)

(assert (=> setNonEmpty!29565 m!6165858))

(declare-fun condSetEmpty!29566 () Bool)

(assert (=> setNonEmpty!29556 (= condSetEmpty!29566 (= setRest!29555 (as set.empty (Set Context!7008))))))

(declare-fun setRes!29566 () Bool)

(assert (=> setNonEmpty!29556 (= tp!1425177 setRes!29566)))

(declare-fun setIsEmpty!29566 () Bool)

(assert (=> setIsEmpty!29566 setRes!29566))

(declare-fun e!3186282 () Bool)

(declare-fun setElem!29566 () Context!7008)

(declare-fun setNonEmpty!29566 () Bool)

(declare-fun tp!1425220 () Bool)

(assert (=> setNonEmpty!29566 (= setRes!29566 (and tp!1425220 (inv!78482 setElem!29566) e!3186282))))

(declare-fun setRest!29566 () (Set Context!7008))

(assert (=> setNonEmpty!29566 (= setRest!29555 (set.union (set.insert setElem!29566 (as set.empty (Set Context!7008))) setRest!29566))))

(declare-fun b!5108690 () Bool)

(declare-fun tp!1425219 () Bool)

(assert (=> b!5108690 (= e!3186282 tp!1425219)))

(assert (= (and setNonEmpty!29556 condSetEmpty!29566) setIsEmpty!29566))

(assert (= (and setNonEmpty!29556 (not condSetEmpty!29566)) setNonEmpty!29566))

(assert (= setNonEmpty!29566 b!5108690))

(declare-fun m!6165860 () Bool)

(assert (=> setNonEmpty!29566 m!6165860))

(push 1)

(assert (not b!5108649))

(assert (not b!5108685))

(assert (not b!5108642))

(assert (not b!5108677))

(assert (not b!5108534))

(assert (not d!1651044))

(assert (not b!5108659))

(assert (not setNonEmpty!29565))

(assert (not d!1651036))

(assert (not b!5108582))

(assert (not d!1651048))

(assert (not b!5108625))

(assert (not b!5108646))

(assert (not d!1651040))

(assert (not b!5108601))

(assert (not b!5108611))

(assert (not bm!356191))

(assert (not b!5108680))

(assert (not b!5108624))

(assert (not b!5108631))

(assert (not d!1651072))

(assert (not b!5108612))

(assert (not bm!356187))

(assert (not d!1651028))

(assert (not b!5108623))

(assert (not d!1651060))

(assert (not bm!356186))

(assert (not b!5108650))

(assert (not b!5108637))

(assert (not b!5108651))

(assert (not bm!356188))

(assert (not b!5108661))

(assert (not b!5108589))

(assert (not bm!356185))

(assert (not d!1651068))

(assert (not b!5108636))

(assert (not d!1651054))

(assert (not b!5108656))

(assert (not d!1651056))

(assert (not b!5108644))

(assert (not setNonEmpty!29566))

(assert (not b!5108679))

(assert tp_is_empty!37513)

(assert (not b!5108672))

(assert (not d!1651050))

(assert (not b!5108592))

(assert (not b!5108645))

(assert (not bm!356198))

(assert (not bm!356192))

(assert (not bm!356190))

(assert (not b!5108678))

(assert (not b!5108690))

(assert (not b!5108599))

(assert (not b!5108586))

(assert (not b!5108657))

(assert (not b!5108655))

(assert (not b!5108630))

(assert (not bm!356197))

(assert (not bm!356189))

(assert (not d!1651032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

