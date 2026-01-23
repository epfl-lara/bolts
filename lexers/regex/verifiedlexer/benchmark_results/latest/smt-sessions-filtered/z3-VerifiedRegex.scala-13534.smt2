; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728656 () Bool)

(assert start!728656)

(declare-fun res!3018467 () Bool)

(declare-fun e!4488558 () Bool)

(assert (=> start!728656 (=> (not res!3018467) (not e!4488558))))

(declare-datatypes ((C!40052 0))(
  ( (C!40053 (val!30466 Int)) )
))
(declare-datatypes ((Regex!19863 0))(
  ( (ElementMatch!19863 (c!1390962 C!40052)) (Concat!28708 (regOne!40238 Regex!19863) (regTwo!40238 Regex!19863)) (EmptyExpr!19863) (Star!19863 (reg!20192 Regex!19863)) (EmptyLang!19863) (Union!19863 (regOne!40239 Regex!19863) (regTwo!40239 Regex!19863)) )
))
(declare-fun baseR!101 () Regex!19863)

(declare-fun validRegex!10291 (Regex!19863) Bool)

(assert (=> start!728656 (= res!3018467 (validRegex!10291 baseR!101))))

(assert (=> start!728656 e!4488558))

(declare-fun e!4488554 () Bool)

(assert (=> start!728656 e!4488554))

(declare-fun e!4488555 () Bool)

(assert (=> start!728656 e!4488555))

(declare-fun e!4488559 () Bool)

(assert (=> start!728656 e!4488559))

(declare-fun e!4488556 () Bool)

(assert (=> start!728656 e!4488556))

(declare-fun e!4488557 () Bool)

(assert (=> start!728656 e!4488557))

(declare-fun b!7531469 () Bool)

(declare-fun tp!2189486 () Bool)

(declare-fun tp!2189487 () Bool)

(assert (=> b!7531469 (= e!4488557 (and tp!2189486 tp!2189487))))

(declare-fun b!7531470 () Bool)

(declare-fun e!4488560 () Bool)

(assert (=> b!7531470 (= e!4488560 true)))

(declare-datatypes ((List!72746 0))(
  ( (Nil!72622) (Cons!72622 (h!79070 C!40052) (t!387453 List!72746)) )
))
(declare-fun lt!2640810 () List!72746)

(declare-fun testedP!423 () List!72746)

(declare-fun lt!2640809 () List!72746)

(declare-fun ++!17384 (List!72746 List!72746) List!72746)

(assert (=> b!7531470 (= lt!2640810 (++!17384 testedP!423 lt!2640809))))

(declare-fun input!7874 () List!72746)

(declare-fun lt!2640813 () Int)

(declare-fun r!24333 () Regex!19863)

(declare-fun size!42359 (List!72746) Int)

(declare-datatypes ((tuple2!68828 0))(
  ( (tuple2!68829 (_1!37717 List!72746) (_2!37717 List!72746)) )
))
(declare-fun findLongestMatchInner!2122 (Regex!19863 List!72746 Int List!72746 List!72746 Int) tuple2!68828)

(assert (=> b!7531470 (>= (size!42359 (_1!37717 (findLongestMatchInner!2122 r!24333 testedP!423 lt!2640813 lt!2640809 input!7874 (size!42359 input!7874)))) lt!2640813)))

(declare-fun getSuffix!3549 (List!72746 List!72746) List!72746)

(assert (=> b!7531470 (= lt!2640809 (getSuffix!3549 input!7874 testedP!423))))

(declare-datatypes ((Unit!166652 0))(
  ( (Unit!166653) )
))
(declare-fun lt!2640812 () Unit!166652)

(declare-fun lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!8 (Regex!19863 Regex!19863 List!72746 List!72746) Unit!166652)

(assert (=> b!7531470 (= lt!2640812 (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!8 baseR!101 r!24333 input!7874 testedP!423))))

(declare-fun knownP!30 () List!72746)

(assert (=> b!7531470 (= testedP!423 knownP!30)))

(declare-fun lt!2640808 () Unit!166652)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1523 (List!72746 List!72746 List!72746) Unit!166652)

(assert (=> b!7531470 (= lt!2640808 (lemmaIsPrefixSameLengthThenSameList!1523 testedP!423 knownP!30 input!7874))))

(declare-fun b!7531471 () Bool)

(declare-fun res!3018460 () Bool)

(assert (=> b!7531471 (=> res!3018460 e!4488560)))

(declare-fun lt!2640814 () Int)

(assert (=> b!7531471 (= res!3018460 (not (= lt!2640813 lt!2640814)))))

(declare-fun b!7531472 () Bool)

(declare-fun tp!2189482 () Bool)

(assert (=> b!7531472 (= e!4488557 tp!2189482)))

(declare-fun b!7531473 () Bool)

(declare-fun tp!2189477 () Bool)

(assert (=> b!7531473 (= e!4488554 tp!2189477)))

(declare-fun b!7531474 () Bool)

(declare-fun tp!2189481 () Bool)

(declare-fun tp!2189485 () Bool)

(assert (=> b!7531474 (= e!4488554 (and tp!2189481 tp!2189485))))

(declare-fun b!7531475 () Bool)

(declare-fun res!3018464 () Bool)

(assert (=> b!7531475 (=> (not res!3018464) (not e!4488558))))

(declare-fun isPrefix!6069 (List!72746 List!72746) Bool)

(assert (=> b!7531475 (= res!3018464 (isPrefix!6069 testedP!423 input!7874))))

(declare-fun b!7531476 () Bool)

(declare-fun tp_is_empty!50081 () Bool)

(declare-fun tp!2189488 () Bool)

(assert (=> b!7531476 (= e!4488556 (and tp_is_empty!50081 tp!2189488))))

(declare-fun b!7531477 () Bool)

(declare-fun res!3018459 () Bool)

(assert (=> b!7531477 (=> res!3018459 e!4488560)))

(declare-fun derivative!395 (Regex!19863 List!72746) Regex!19863)

(assert (=> b!7531477 (= res!3018459 (not (= (derivative!395 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7531478 () Bool)

(declare-fun e!4488561 () Bool)

(assert (=> b!7531478 (= e!4488561 (not e!4488560))))

(declare-fun res!3018468 () Bool)

(assert (=> b!7531478 (=> res!3018468 e!4488560)))

(declare-fun matchR!9465 (Regex!19863 List!72746) Bool)

(assert (=> b!7531478 (= res!3018468 (not (matchR!9465 r!24333 (getSuffix!3549 knownP!30 testedP!423))))))

(assert (=> b!7531478 (isPrefix!6069 testedP!423 knownP!30)))

(declare-fun lt!2640811 () Unit!166652)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!819 (List!72746 List!72746 List!72746) Unit!166652)

(assert (=> b!7531478 (= lt!2640811 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!819 knownP!30 testedP!423 input!7874))))

(declare-fun b!7531479 () Bool)

(assert (=> b!7531479 (= e!4488554 tp_is_empty!50081)))

(declare-fun b!7531480 () Bool)

(assert (=> b!7531480 (= e!4488558 e!4488561)))

(declare-fun res!3018461 () Bool)

(assert (=> b!7531480 (=> (not res!3018461) (not e!4488561))))

(assert (=> b!7531480 (= res!3018461 (>= lt!2640814 lt!2640813))))

(assert (=> b!7531480 (= lt!2640813 (size!42359 testedP!423))))

(assert (=> b!7531480 (= lt!2640814 (size!42359 knownP!30))))

(declare-fun b!7531481 () Bool)

(declare-fun tp!2189480 () Bool)

(declare-fun tp!2189483 () Bool)

(assert (=> b!7531481 (= e!4488554 (and tp!2189480 tp!2189483))))

(declare-fun b!7531482 () Bool)

(declare-fun res!3018466 () Bool)

(assert (=> b!7531482 (=> (not res!3018466) (not e!4488561))))

(assert (=> b!7531482 (= res!3018466 (matchR!9465 baseR!101 knownP!30))))

(declare-fun b!7531483 () Bool)

(declare-fun res!3018465 () Bool)

(assert (=> b!7531483 (=> (not res!3018465) (not e!4488558))))

(assert (=> b!7531483 (= res!3018465 (validRegex!10291 r!24333))))

(declare-fun b!7531484 () Bool)

(assert (=> b!7531484 (= e!4488557 tp_is_empty!50081)))

(declare-fun b!7531485 () Bool)

(declare-fun tp!2189479 () Bool)

(declare-fun tp!2189489 () Bool)

(assert (=> b!7531485 (= e!4488557 (and tp!2189479 tp!2189489))))

(declare-fun b!7531486 () Bool)

(declare-fun tp!2189484 () Bool)

(assert (=> b!7531486 (= e!4488559 (and tp_is_empty!50081 tp!2189484))))

(declare-fun b!7531487 () Bool)

(declare-fun tp!2189478 () Bool)

(assert (=> b!7531487 (= e!4488555 (and tp_is_empty!50081 tp!2189478))))

(declare-fun b!7531488 () Bool)

(declare-fun res!3018463 () Bool)

(assert (=> b!7531488 (=> (not res!3018463) (not e!4488558))))

(assert (=> b!7531488 (= res!3018463 (isPrefix!6069 knownP!30 input!7874))))

(declare-fun b!7531489 () Bool)

(declare-fun res!3018462 () Bool)

(assert (=> b!7531489 (=> res!3018462 e!4488560)))

(declare-fun lostCause!1655 (Regex!19863) Bool)

(assert (=> b!7531489 (= res!3018462 (lostCause!1655 r!24333))))

(assert (= (and start!728656 res!3018467) b!7531483))

(assert (= (and b!7531483 res!3018465) b!7531475))

(assert (= (and b!7531475 res!3018464) b!7531488))

(assert (= (and b!7531488 res!3018463) b!7531480))

(assert (= (and b!7531480 res!3018461) b!7531482))

(assert (= (and b!7531482 res!3018466) b!7531478))

(assert (= (and b!7531478 (not res!3018468)) b!7531477))

(assert (= (and b!7531477 (not res!3018459)) b!7531489))

(assert (= (and b!7531489 (not res!3018462)) b!7531471))

(assert (= (and b!7531471 (not res!3018460)) b!7531470))

(get-info :version)

(assert (= (and start!728656 ((_ is ElementMatch!19863) baseR!101)) b!7531479))

(assert (= (and start!728656 ((_ is Concat!28708) baseR!101)) b!7531474))

(assert (= (and start!728656 ((_ is Star!19863) baseR!101)) b!7531473))

(assert (= (and start!728656 ((_ is Union!19863) baseR!101)) b!7531481))

(assert (= (and start!728656 ((_ is Cons!72622) input!7874)) b!7531487))

(assert (= (and start!728656 ((_ is Cons!72622) knownP!30)) b!7531486))

(assert (= (and start!728656 ((_ is Cons!72622) testedP!423)) b!7531476))

(assert (= (and start!728656 ((_ is ElementMatch!19863) r!24333)) b!7531484))

(assert (= (and start!728656 ((_ is Concat!28708) r!24333)) b!7531469))

(assert (= (and start!728656 ((_ is Star!19863) r!24333)) b!7531472))

(assert (= (and start!728656 ((_ is Union!19863) r!24333)) b!7531485))

(declare-fun m!8104462 () Bool)

(assert (=> b!7531477 m!8104462))

(declare-fun m!8104464 () Bool)

(assert (=> b!7531488 m!8104464))

(declare-fun m!8104466 () Bool)

(assert (=> b!7531483 m!8104466))

(declare-fun m!8104468 () Bool)

(assert (=> b!7531475 m!8104468))

(declare-fun m!8104470 () Bool)

(assert (=> start!728656 m!8104470))

(declare-fun m!8104472 () Bool)

(assert (=> b!7531480 m!8104472))

(declare-fun m!8104474 () Bool)

(assert (=> b!7531480 m!8104474))

(declare-fun m!8104476 () Bool)

(assert (=> b!7531478 m!8104476))

(assert (=> b!7531478 m!8104476))

(declare-fun m!8104478 () Bool)

(assert (=> b!7531478 m!8104478))

(declare-fun m!8104480 () Bool)

(assert (=> b!7531478 m!8104480))

(declare-fun m!8104482 () Bool)

(assert (=> b!7531478 m!8104482))

(declare-fun m!8104484 () Bool)

(assert (=> b!7531482 m!8104484))

(declare-fun m!8104486 () Bool)

(assert (=> b!7531470 m!8104486))

(declare-fun m!8104488 () Bool)

(assert (=> b!7531470 m!8104488))

(declare-fun m!8104490 () Bool)

(assert (=> b!7531470 m!8104490))

(declare-fun m!8104492 () Bool)

(assert (=> b!7531470 m!8104492))

(declare-fun m!8104494 () Bool)

(assert (=> b!7531470 m!8104494))

(assert (=> b!7531470 m!8104488))

(declare-fun m!8104496 () Bool)

(assert (=> b!7531470 m!8104496))

(declare-fun m!8104498 () Bool)

(assert (=> b!7531470 m!8104498))

(declare-fun m!8104500 () Bool)

(assert (=> b!7531489 m!8104500))

(check-sat (not b!7531470) (not b!7531474) (not b!7531476) (not b!7531477) (not b!7531469) tp_is_empty!50081 (not b!7531478) (not start!728656) (not b!7531481) (not b!7531473) (not b!7531487) (not b!7531488) (not b!7531489) (not b!7531482) (not b!7531472) (not b!7531480) (not b!7531475) (not b!7531485) (not b!7531483) (not b!7531486))
(check-sat)
