; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!729386 () Bool)

(assert start!729386)

(declare-fun b!7541556 () Bool)

(declare-fun e!4493302 () Bool)

(declare-fun e!4493300 () Bool)

(assert (=> b!7541556 (= e!4493302 e!4493300)))

(declare-fun res!3022331 () Bool)

(assert (=> b!7541556 (=> res!3022331 e!4493300)))

(declare-datatypes ((C!40138 0))(
  ( (C!40139 (val!30509 Int)) )
))
(declare-datatypes ((List!72789 0))(
  ( (Nil!72665) (Cons!72665 (h!79113 C!40138) (t!387498 List!72789)) )
))
(declare-fun lt!2643434 () List!72789)

(declare-fun lt!2643433 () C!40138)

(declare-fun head!15496 (List!72789) C!40138)

(assert (=> b!7541556 (= res!3022331 (not (= (head!15496 lt!2643434) lt!2643433)))))

(declare-fun lt!2643448 () List!72789)

(declare-fun lt!2643449 () List!72789)

(assert (=> b!7541556 (= lt!2643448 lt!2643449)))

(declare-fun input!7874 () List!72789)

(declare-datatypes ((Unit!166750 0))(
  ( (Unit!166751) )
))
(declare-fun lt!2643435 () Unit!166750)

(declare-fun testedP!423 () List!72789)

(declare-fun lemmaSamePrefixThenSameSuffix!2840 (List!72789 List!72789 List!72789 List!72789 List!72789) Unit!166750)

(assert (=> b!7541556 (= lt!2643435 (lemmaSamePrefixThenSameSuffix!2840 testedP!423 lt!2643448 testedP!423 lt!2643449 input!7874))))

(declare-fun b!7541557 () Bool)

(declare-fun res!3022330 () Bool)

(declare-fun e!4493309 () Bool)

(assert (=> b!7541557 (=> res!3022330 e!4493309)))

(declare-fun lt!2643439 () Int)

(declare-fun size!42402 (List!72789) Int)

(assert (=> b!7541557 (= res!3022330 (>= lt!2643439 (size!42402 input!7874)))))

(declare-fun b!7541558 () Bool)

(declare-fun e!4493308 () Bool)

(declare-fun tp_is_empty!50167 () Bool)

(assert (=> b!7541558 (= e!4493308 tp_is_empty!50167)))

(declare-fun b!7541559 () Bool)

(declare-fun tp!2193606 () Bool)

(assert (=> b!7541559 (= e!4493308 tp!2193606)))

(declare-fun b!7541560 () Bool)

(declare-fun e!4493299 () Bool)

(assert (=> b!7541560 (= e!4493299 (not e!4493309))))

(declare-fun res!3022316 () Bool)

(assert (=> b!7541560 (=> res!3022316 e!4493309)))

(declare-datatypes ((Regex!19906 0))(
  ( (ElementMatch!19906 (c!1392393 C!40138)) (Concat!28751 (regOne!40324 Regex!19906) (regTwo!40324 Regex!19906)) (EmptyExpr!19906) (Star!19906 (reg!20235 Regex!19906)) (EmptyLang!19906) (Union!19906 (regOne!40325 Regex!19906) (regTwo!40325 Regex!19906)) )
))
(declare-fun r!24333 () Regex!19906)

(declare-fun matchR!9508 (Regex!19906 List!72789) Bool)

(assert (=> b!7541560 (= res!3022316 (not (matchR!9508 r!24333 lt!2643434)))))

(declare-fun knownP!30 () List!72789)

(declare-fun getSuffix!3592 (List!72789 List!72789) List!72789)

(assert (=> b!7541560 (= lt!2643434 (getSuffix!3592 knownP!30 testedP!423))))

(declare-fun isPrefix!6112 (List!72789 List!72789) Bool)

(assert (=> b!7541560 (isPrefix!6112 testedP!423 knownP!30)))

(declare-fun lt!2643446 () Unit!166750)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!862 (List!72789 List!72789 List!72789) Unit!166750)

(assert (=> b!7541560 (= lt!2643446 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!862 knownP!30 testedP!423 input!7874))))

(declare-fun b!7541561 () Bool)

(declare-fun tp!2193608 () Bool)

(declare-fun tp!2193605 () Bool)

(assert (=> b!7541561 (= e!4493308 (and tp!2193608 tp!2193605))))

(declare-fun b!7541562 () Bool)

(declare-fun e!4493307 () Bool)

(assert (=> b!7541562 (= e!4493307 e!4493299)))

(declare-fun res!3022313 () Bool)

(assert (=> b!7541562 (=> (not res!3022313) (not e!4493299))))

(declare-fun lt!2643441 () Int)

(assert (=> b!7541562 (= res!3022313 (>= lt!2643441 lt!2643439))))

(assert (=> b!7541562 (= lt!2643439 (size!42402 testedP!423))))

(assert (=> b!7541562 (= lt!2643441 (size!42402 knownP!30))))

(declare-fun b!7541563 () Bool)

(declare-fun e!4493303 () Bool)

(declare-fun e!4493305 () Bool)

(assert (=> b!7541563 (= e!4493303 e!4493305)))

(declare-fun res!3022325 () Bool)

(assert (=> b!7541563 (=> res!3022325 e!4493305)))

(declare-fun lt!2643436 () List!72789)

(assert (=> b!7541563 (= res!3022325 (not (= lt!2643436 input!7874)))))

(declare-fun lt!2643444 () List!72789)

(declare-fun lt!2643450 () List!72789)

(declare-fun ++!17423 (List!72789 List!72789) List!72789)

(assert (=> b!7541563 (= lt!2643436 (++!17423 lt!2643444 lt!2643450))))

(assert (=> b!7541563 (= lt!2643444 (++!17423 testedP!423 lt!2643434))))

(declare-fun b!7541564 () Bool)

(declare-fun res!3022323 () Bool)

(assert (=> b!7541564 (=> res!3022323 e!4493309)))

(declare-fun baseR!101 () Regex!19906)

(declare-fun derivative!438 (Regex!19906 List!72789) Regex!19906)

(assert (=> b!7541564 (= res!3022323 (not (= (derivative!438 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7541565 () Bool)

(assert (=> b!7541565 (= e!4493300 (not (= lt!2643449 Nil!72665)))))

(declare-fun b!7541566 () Bool)

(declare-fun res!3022318 () Bool)

(assert (=> b!7541566 (=> res!3022318 e!4493305)))

(assert (=> b!7541566 (= res!3022318 (not (= (++!17423 testedP!423 lt!2643449) input!7874)))))

(declare-fun b!7541567 () Bool)

(assert (=> b!7541567 (= e!4493305 e!4493302)))

(declare-fun res!3022324 () Bool)

(assert (=> b!7541567 (=> res!3022324 e!4493302)))

(declare-fun lt!2643447 () List!72789)

(assert (=> b!7541567 (= res!3022324 (not (= lt!2643447 input!7874)))))

(assert (=> b!7541567 (= lt!2643436 lt!2643447)))

(assert (=> b!7541567 (= lt!2643447 (++!17423 testedP!423 lt!2643448))))

(assert (=> b!7541567 (= lt!2643448 (++!17423 lt!2643434 lt!2643450))))

(declare-fun lt!2643437 () Unit!166750)

(declare-fun lemmaConcatAssociativity!3071 (List!72789 List!72789 List!72789) Unit!166750)

(assert (=> b!7541567 (= lt!2643437 (lemmaConcatAssociativity!3071 testedP!423 lt!2643434 lt!2643450))))

(declare-fun b!7541568 () Bool)

(declare-fun res!3022322 () Bool)

(assert (=> b!7541568 (=> res!3022322 e!4493300)))

(declare-fun lt!2643438 () List!72789)

(declare-fun lt!2643443 () List!72789)

(assert (=> b!7541568 (= res!3022322 (not (= (++!17423 lt!2643443 lt!2643438) knownP!30)))))

(declare-fun b!7541569 () Bool)

(declare-fun e!4493306 () Bool)

(declare-fun tp!2193601 () Bool)

(declare-fun tp!2193596 () Bool)

(assert (=> b!7541569 (= e!4493306 (and tp!2193601 tp!2193596))))

(declare-fun b!7541570 () Bool)

(assert (=> b!7541570 (= e!4493309 e!4493303)))

(declare-fun res!3022329 () Bool)

(assert (=> b!7541570 (=> res!3022329 e!4493303)))

(assert (=> b!7541570 (= res!3022329 (not (= (++!17423 knownP!30 lt!2643450) input!7874)))))

(assert (=> b!7541570 (= lt!2643450 (getSuffix!3592 input!7874 knownP!30))))

(assert (=> b!7541570 (= lt!2643438 (getSuffix!3592 knownP!30 lt!2643443))))

(assert (=> b!7541570 (isPrefix!6112 lt!2643443 knownP!30)))

(declare-fun lt!2643445 () Unit!166750)

(assert (=> b!7541570 (= lt!2643445 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!862 knownP!30 lt!2643443 input!7874))))

(declare-fun derivativeStep!5696 (Regex!19906 C!40138) Regex!19906)

(assert (=> b!7541570 (= (derivative!438 baseR!101 lt!2643443) (derivativeStep!5696 r!24333 lt!2643433))))

(declare-fun lt!2643442 () Unit!166750)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!144 (Regex!19906 Regex!19906 List!72789 C!40138) Unit!166750)

(assert (=> b!7541570 (= lt!2643442 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!144 baseR!101 r!24333 testedP!423 lt!2643433))))

(assert (=> b!7541570 (isPrefix!6112 lt!2643443 input!7874)))

(declare-fun lt!2643440 () Unit!166750)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1177 (List!72789 List!72789) Unit!166750)

(assert (=> b!7541570 (= lt!2643440 (lemmaAddHeadSuffixToPrefixStillPrefix!1177 testedP!423 input!7874))))

(assert (=> b!7541570 (= lt!2643443 (++!17423 testedP!423 (Cons!72665 lt!2643433 Nil!72665)))))

(assert (=> b!7541570 (= lt!2643433 (head!15496 lt!2643449))))

(assert (=> b!7541570 (= lt!2643449 (getSuffix!3592 input!7874 testedP!423))))

(declare-fun b!7541571 () Bool)

(declare-fun res!3022327 () Bool)

(assert (=> b!7541571 (=> (not res!3022327) (not e!4493307))))

(declare-fun validRegex!10334 (Regex!19906) Bool)

(assert (=> b!7541571 (= res!3022327 (validRegex!10334 r!24333))))

(declare-fun res!3022315 () Bool)

(assert (=> start!729386 (=> (not res!3022315) (not e!4493307))))

(assert (=> start!729386 (= res!3022315 (validRegex!10334 baseR!101))))

(assert (=> start!729386 e!4493307))

(assert (=> start!729386 e!4493306))

(declare-fun e!4493304 () Bool)

(assert (=> start!729386 e!4493304))

(declare-fun e!4493301 () Bool)

(assert (=> start!729386 e!4493301))

(declare-fun e!4493298 () Bool)

(assert (=> start!729386 e!4493298))

(assert (=> start!729386 e!4493308))

(declare-fun b!7541572 () Bool)

(declare-fun res!3022328 () Bool)

(assert (=> b!7541572 (=> res!3022328 e!4493300)))

(assert (=> b!7541572 (= res!3022328 (not (= lt!2643444 knownP!30)))))

(declare-fun b!7541573 () Bool)

(declare-fun res!3022326 () Bool)

(assert (=> b!7541573 (=> (not res!3022326) (not e!4493299))))

(assert (=> b!7541573 (= res!3022326 (matchR!9508 baseR!101 knownP!30))))

(declare-fun b!7541574 () Bool)

(assert (=> b!7541574 (= e!4493306 tp_is_empty!50167)))

(declare-fun b!7541575 () Bool)

(declare-fun tp!2193602 () Bool)

(declare-fun tp!2193599 () Bool)

(assert (=> b!7541575 (= e!4493306 (and tp!2193602 tp!2193599))))

(declare-fun b!7541576 () Bool)

(declare-fun res!3022320 () Bool)

(assert (=> b!7541576 (=> (not res!3022320) (not e!4493307))))

(assert (=> b!7541576 (= res!3022320 (isPrefix!6112 knownP!30 input!7874))))

(declare-fun b!7541577 () Bool)

(declare-fun res!3022321 () Bool)

(assert (=> b!7541577 (=> (not res!3022321) (not e!4493307))))

(assert (=> b!7541577 (= res!3022321 (isPrefix!6112 testedP!423 input!7874))))

(declare-fun b!7541578 () Bool)

(declare-fun res!3022319 () Bool)

(assert (=> b!7541578 (=> res!3022319 e!4493300)))

(declare-fun $colon$colon!3366 (List!72789 C!40138) List!72789)

(declare-fun tail!15042 (List!72789) List!72789)

(assert (=> b!7541578 (= res!3022319 (not (= lt!2643434 ($colon$colon!3366 (tail!15042 lt!2643434) lt!2643433))))))

(declare-fun b!7541579 () Bool)

(declare-fun tp!2193598 () Bool)

(declare-fun tp!2193603 () Bool)

(assert (=> b!7541579 (= e!4493308 (and tp!2193598 tp!2193603))))

(declare-fun b!7541580 () Bool)

(declare-fun res!3022317 () Bool)

(assert (=> b!7541580 (=> res!3022317 e!4493309)))

(assert (=> b!7541580 (= res!3022317 (= lt!2643439 lt!2643441))))

(declare-fun b!7541581 () Bool)

(declare-fun tp!2193600 () Bool)

(assert (=> b!7541581 (= e!4493306 tp!2193600)))

(declare-fun b!7541582 () Bool)

(declare-fun tp!2193597 () Bool)

(assert (=> b!7541582 (= e!4493298 (and tp_is_empty!50167 tp!2193597))))

(declare-fun b!7541583 () Bool)

(declare-fun tp!2193604 () Bool)

(assert (=> b!7541583 (= e!4493301 (and tp_is_empty!50167 tp!2193604))))

(declare-fun b!7541584 () Bool)

(declare-fun tp!2193607 () Bool)

(assert (=> b!7541584 (= e!4493304 (and tp_is_empty!50167 tp!2193607))))

(declare-fun b!7541585 () Bool)

(declare-fun res!3022314 () Bool)

(assert (=> b!7541585 (=> res!3022314 e!4493309)))

(declare-fun lostCause!1698 (Regex!19906) Bool)

(assert (=> b!7541585 (= res!3022314 (lostCause!1698 r!24333))))

(assert (= (and start!729386 res!3022315) b!7541571))

(assert (= (and b!7541571 res!3022327) b!7541577))

(assert (= (and b!7541577 res!3022321) b!7541576))

(assert (= (and b!7541576 res!3022320) b!7541562))

(assert (= (and b!7541562 res!3022313) b!7541573))

(assert (= (and b!7541573 res!3022326) b!7541560))

(assert (= (and b!7541560 (not res!3022316)) b!7541564))

(assert (= (and b!7541564 (not res!3022323)) b!7541585))

(assert (= (and b!7541585 (not res!3022314)) b!7541580))

(assert (= (and b!7541580 (not res!3022317)) b!7541557))

(assert (= (and b!7541557 (not res!3022330)) b!7541570))

(assert (= (and b!7541570 (not res!3022329)) b!7541563))

(assert (= (and b!7541563 (not res!3022325)) b!7541566))

(assert (= (and b!7541566 (not res!3022318)) b!7541567))

(assert (= (and b!7541567 (not res!3022324)) b!7541556))

(assert (= (and b!7541556 (not res!3022331)) b!7541578))

(assert (= (and b!7541578 (not res!3022319)) b!7541572))

(assert (= (and b!7541572 (not res!3022328)) b!7541568))

(assert (= (and b!7541568 (not res!3022322)) b!7541565))

(assert (= (and start!729386 (is-ElementMatch!19906 baseR!101)) b!7541574))

(assert (= (and start!729386 (is-Concat!28751 baseR!101)) b!7541575))

(assert (= (and start!729386 (is-Star!19906 baseR!101)) b!7541581))

(assert (= (and start!729386 (is-Union!19906 baseR!101)) b!7541569))

(assert (= (and start!729386 (is-Cons!72665 input!7874)) b!7541584))

(assert (= (and start!729386 (is-Cons!72665 knownP!30)) b!7541583))

(assert (= (and start!729386 (is-Cons!72665 testedP!423)) b!7541582))

(assert (= (and start!729386 (is-ElementMatch!19906 r!24333)) b!7541558))

(assert (= (and start!729386 (is-Concat!28751 r!24333)) b!7541561))

(assert (= (and start!729386 (is-Star!19906 r!24333)) b!7541559))

(assert (= (and start!729386 (is-Union!19906 r!24333)) b!7541579))

(declare-fun m!8110710 () Bool)

(assert (=> b!7541571 m!8110710))

(declare-fun m!8110712 () Bool)

(assert (=> b!7541563 m!8110712))

(declare-fun m!8110714 () Bool)

(assert (=> b!7541563 m!8110714))

(declare-fun m!8110716 () Bool)

(assert (=> b!7541568 m!8110716))

(declare-fun m!8110718 () Bool)

(assert (=> b!7541562 m!8110718))

(declare-fun m!8110720 () Bool)

(assert (=> b!7541562 m!8110720))

(declare-fun m!8110722 () Bool)

(assert (=> b!7541557 m!8110722))

(declare-fun m!8110724 () Bool)

(assert (=> b!7541576 m!8110724))

(declare-fun m!8110726 () Bool)

(assert (=> b!7541566 m!8110726))

(declare-fun m!8110728 () Bool)

(assert (=> b!7541567 m!8110728))

(declare-fun m!8110730 () Bool)

(assert (=> b!7541567 m!8110730))

(declare-fun m!8110732 () Bool)

(assert (=> b!7541567 m!8110732))

(declare-fun m!8110734 () Bool)

(assert (=> b!7541573 m!8110734))

(declare-fun m!8110736 () Bool)

(assert (=> b!7541585 m!8110736))

(declare-fun m!8110738 () Bool)

(assert (=> b!7541556 m!8110738))

(declare-fun m!8110740 () Bool)

(assert (=> b!7541556 m!8110740))

(declare-fun m!8110742 () Bool)

(assert (=> b!7541577 m!8110742))

(declare-fun m!8110744 () Bool)

(assert (=> b!7541570 m!8110744))

(declare-fun m!8110746 () Bool)

(assert (=> b!7541570 m!8110746))

(declare-fun m!8110748 () Bool)

(assert (=> b!7541570 m!8110748))

(declare-fun m!8110750 () Bool)

(assert (=> b!7541570 m!8110750))

(declare-fun m!8110752 () Bool)

(assert (=> b!7541570 m!8110752))

(declare-fun m!8110754 () Bool)

(assert (=> b!7541570 m!8110754))

(declare-fun m!8110756 () Bool)

(assert (=> b!7541570 m!8110756))

(declare-fun m!8110758 () Bool)

(assert (=> b!7541570 m!8110758))

(declare-fun m!8110760 () Bool)

(assert (=> b!7541570 m!8110760))

(declare-fun m!8110762 () Bool)

(assert (=> b!7541570 m!8110762))

(declare-fun m!8110764 () Bool)

(assert (=> b!7541570 m!8110764))

(declare-fun m!8110766 () Bool)

(assert (=> b!7541570 m!8110766))

(declare-fun m!8110768 () Bool)

(assert (=> b!7541570 m!8110768))

(declare-fun m!8110770 () Bool)

(assert (=> b!7541578 m!8110770))

(assert (=> b!7541578 m!8110770))

(declare-fun m!8110772 () Bool)

(assert (=> b!7541578 m!8110772))

(declare-fun m!8110774 () Bool)

(assert (=> b!7541560 m!8110774))

(declare-fun m!8110776 () Bool)

(assert (=> b!7541560 m!8110776))

(declare-fun m!8110778 () Bool)

(assert (=> b!7541560 m!8110778))

(declare-fun m!8110780 () Bool)

(assert (=> b!7541560 m!8110780))

(declare-fun m!8110782 () Bool)

(assert (=> b!7541564 m!8110782))

(declare-fun m!8110784 () Bool)

(assert (=> start!729386 m!8110784))

(push 1)

(assert (not b!7541556))

(assert (not b!7541585))

(assert (not b!7541569))

(assert (not b!7541564))

(assert (not b!7541571))

(assert (not b!7541560))

(assert (not b!7541567))

(assert (not b!7541577))

(assert (not b!7541566))

(assert (not b!7541557))

(assert (not b!7541570))

(assert (not b!7541573))

(assert (not b!7541583))

(assert (not start!729386))

(assert (not b!7541582))

(assert (not b!7541561))

(assert (not b!7541581))

(assert (not b!7541584))

(assert (not b!7541562))

(assert (not b!7541579))

(assert (not b!7541576))

(assert (not b!7541575))

(assert tp_is_empty!50167)

(assert (not b!7541559))

(assert (not b!7541568))

(assert (not b!7541578))

(assert (not b!7541563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7541746 () Bool)

(declare-fun e!4493384 () Bool)

(assert (=> b!7541746 (= e!4493384 (= (head!15496 knownP!30) (c!1392393 baseR!101)))))

(declare-fun b!7541747 () Bool)

(declare-fun e!4493387 () Bool)

(declare-fun nullable!8680 (Regex!19906) Bool)

(assert (=> b!7541747 (= e!4493387 (nullable!8680 baseR!101))))

(declare-fun b!7541748 () Bool)

(declare-fun e!4493386 () Bool)

(declare-fun e!4493382 () Bool)

(assert (=> b!7541748 (= e!4493386 e!4493382)))

(declare-fun res!3022435 () Bool)

(assert (=> b!7541748 (=> (not res!3022435) (not e!4493382))))

(declare-fun lt!2643510 () Bool)

(assert (=> b!7541748 (= res!3022435 (not lt!2643510))))

(declare-fun b!7541749 () Bool)

(declare-fun res!3022431 () Bool)

(assert (=> b!7541749 (=> res!3022431 e!4493386)))

(assert (=> b!7541749 (= res!3022431 e!4493384)))

(declare-fun res!3022432 () Bool)

(assert (=> b!7541749 (=> (not res!3022432) (not e!4493384))))

(assert (=> b!7541749 (= res!3022432 lt!2643510)))

(declare-fun b!7541750 () Bool)

(declare-fun res!3022433 () Bool)

(declare-fun e!4493383 () Bool)

(assert (=> b!7541750 (=> res!3022433 e!4493383)))

(declare-fun isEmpty!41376 (List!72789) Bool)

(assert (=> b!7541750 (= res!3022433 (not (isEmpty!41376 (tail!15042 knownP!30))))))

(declare-fun bm!691769 () Bool)

(declare-fun call!691774 () Bool)

(assert (=> bm!691769 (= call!691774 (isEmpty!41376 knownP!30))))

(declare-fun b!7541751 () Bool)

(declare-fun e!4493381 () Bool)

(assert (=> b!7541751 (= e!4493381 (= lt!2643510 call!691774))))

(declare-fun b!7541752 () Bool)

(assert (=> b!7541752 (= e!4493382 e!4493383)))

(declare-fun res!3022434 () Bool)

(assert (=> b!7541752 (=> res!3022434 e!4493383)))

(assert (=> b!7541752 (= res!3022434 call!691774)))

(declare-fun d!2311435 () Bool)

(assert (=> d!2311435 e!4493381))

(declare-fun c!1392411 () Bool)

(assert (=> d!2311435 (= c!1392411 (is-EmptyExpr!19906 baseR!101))))

(assert (=> d!2311435 (= lt!2643510 e!4493387)))

(declare-fun c!1392410 () Bool)

(assert (=> d!2311435 (= c!1392410 (isEmpty!41376 knownP!30))))

(assert (=> d!2311435 (validRegex!10334 baseR!101)))

(assert (=> d!2311435 (= (matchR!9508 baseR!101 knownP!30) lt!2643510)))

(declare-fun b!7541753 () Bool)

(declare-fun res!3022436 () Bool)

(assert (=> b!7541753 (=> (not res!3022436) (not e!4493384))))

(assert (=> b!7541753 (= res!3022436 (isEmpty!41376 (tail!15042 knownP!30)))))

(declare-fun b!7541754 () Bool)

(declare-fun e!4493385 () Bool)

(assert (=> b!7541754 (= e!4493381 e!4493385)))

(declare-fun c!1392412 () Bool)

(assert (=> b!7541754 (= c!1392412 (is-EmptyLang!19906 baseR!101))))

(declare-fun b!7541755 () Bool)

(declare-fun res!3022430 () Bool)

(assert (=> b!7541755 (=> (not res!3022430) (not e!4493384))))

(assert (=> b!7541755 (= res!3022430 (not call!691774))))

(declare-fun b!7541756 () Bool)

(declare-fun res!3022429 () Bool)

(assert (=> b!7541756 (=> res!3022429 e!4493386)))

(assert (=> b!7541756 (= res!3022429 (not (is-ElementMatch!19906 baseR!101)))))

(assert (=> b!7541756 (= e!4493385 e!4493386)))

(declare-fun b!7541757 () Bool)

(assert (=> b!7541757 (= e!4493385 (not lt!2643510))))

(declare-fun b!7541758 () Bool)

(assert (=> b!7541758 (= e!4493383 (not (= (head!15496 knownP!30) (c!1392393 baseR!101))))))

(declare-fun b!7541759 () Bool)

(assert (=> b!7541759 (= e!4493387 (matchR!9508 (derivativeStep!5696 baseR!101 (head!15496 knownP!30)) (tail!15042 knownP!30)))))

(assert (= (and d!2311435 c!1392410) b!7541747))

(assert (= (and d!2311435 (not c!1392410)) b!7541759))

(assert (= (and d!2311435 c!1392411) b!7541751))

(assert (= (and d!2311435 (not c!1392411)) b!7541754))

(assert (= (and b!7541754 c!1392412) b!7541757))

(assert (= (and b!7541754 (not c!1392412)) b!7541756))

(assert (= (and b!7541756 (not res!3022429)) b!7541749))

(assert (= (and b!7541749 res!3022432) b!7541755))

(assert (= (and b!7541755 res!3022430) b!7541753))

(assert (= (and b!7541753 res!3022436) b!7541746))

(assert (= (and b!7541749 (not res!3022431)) b!7541748))

(assert (= (and b!7541748 res!3022435) b!7541752))

(assert (= (and b!7541752 (not res!3022434)) b!7541750))

(assert (= (and b!7541750 (not res!3022433)) b!7541758))

(assert (= (or b!7541751 b!7541752 b!7541755) bm!691769))

(declare-fun m!8110876 () Bool)

(assert (=> b!7541750 m!8110876))

(assert (=> b!7541750 m!8110876))

(declare-fun m!8110878 () Bool)

(assert (=> b!7541750 m!8110878))

(declare-fun m!8110880 () Bool)

(assert (=> b!7541746 m!8110880))

(declare-fun m!8110882 () Bool)

(assert (=> bm!691769 m!8110882))

(assert (=> b!7541758 m!8110880))

(assert (=> d!2311435 m!8110882))

(assert (=> d!2311435 m!8110784))

(assert (=> b!7541759 m!8110880))

(assert (=> b!7541759 m!8110880))

(declare-fun m!8110884 () Bool)

(assert (=> b!7541759 m!8110884))

(assert (=> b!7541759 m!8110876))

(assert (=> b!7541759 m!8110884))

(assert (=> b!7541759 m!8110876))

(declare-fun m!8110886 () Bool)

(assert (=> b!7541759 m!8110886))

(declare-fun m!8110888 () Bool)

(assert (=> b!7541747 m!8110888))

(assert (=> b!7541753 m!8110876))

(assert (=> b!7541753 m!8110876))

(assert (=> b!7541753 m!8110878))

(assert (=> b!7541573 d!2311435))

(declare-fun bm!691776 () Bool)

(declare-fun call!691783 () Bool)

(declare-fun call!691781 () Bool)

(assert (=> bm!691776 (= call!691783 call!691781)))

(declare-fun b!7541784 () Bool)

(declare-fun e!4493405 () Bool)

(assert (=> b!7541784 (= e!4493405 call!691781)))

(declare-fun bm!691777 () Bool)

(declare-fun call!691782 () Bool)

(declare-fun c!1392420 () Bool)

(assert (=> bm!691777 (= call!691782 (validRegex!10334 (ite c!1392420 (regTwo!40325 baseR!101) (regTwo!40324 baseR!101))))))

(declare-fun bm!691778 () Bool)

(declare-fun c!1392421 () Bool)

(assert (=> bm!691778 (= call!691781 (validRegex!10334 (ite c!1392421 (reg!20235 baseR!101) (ite c!1392420 (regOne!40325 baseR!101) (regOne!40324 baseR!101)))))))

(declare-fun b!7541785 () Bool)

(declare-fun e!4493410 () Bool)

(assert (=> b!7541785 (= e!4493410 call!691782)))

(declare-fun b!7541786 () Bool)

(declare-fun e!4493406 () Bool)

(declare-fun e!4493409 () Bool)

(assert (=> b!7541786 (= e!4493406 e!4493409)))

(assert (=> b!7541786 (= c!1392420 (is-Union!19906 baseR!101))))

(declare-fun b!7541788 () Bool)

(assert (=> b!7541788 (= e!4493406 e!4493405)))

(declare-fun res!3022450 () Bool)

(assert (=> b!7541788 (= res!3022450 (not (nullable!8680 (reg!20235 baseR!101))))))

(assert (=> b!7541788 (=> (not res!3022450) (not e!4493405))))

(declare-fun b!7541789 () Bool)

(declare-fun e!4493407 () Bool)

(assert (=> b!7541789 (= e!4493407 e!4493406)))

(assert (=> b!7541789 (= c!1392421 (is-Star!19906 baseR!101))))

(declare-fun b!7541790 () Bool)

(declare-fun res!3022448 () Bool)

(declare-fun e!4493411 () Bool)

(assert (=> b!7541790 (=> (not res!3022448) (not e!4493411))))

(assert (=> b!7541790 (= res!3022448 call!691783)))

(assert (=> b!7541790 (= e!4493409 e!4493411)))

(declare-fun b!7541787 () Bool)

(declare-fun res!3022447 () Bool)

(declare-fun e!4493408 () Bool)

(assert (=> b!7541787 (=> res!3022447 e!4493408)))

(assert (=> b!7541787 (= res!3022447 (not (is-Concat!28751 baseR!101)))))

(assert (=> b!7541787 (= e!4493409 e!4493408)))

(declare-fun d!2311439 () Bool)

(declare-fun res!3022451 () Bool)

(assert (=> d!2311439 (=> res!3022451 e!4493407)))

(assert (=> d!2311439 (= res!3022451 (is-ElementMatch!19906 baseR!101))))

(assert (=> d!2311439 (= (validRegex!10334 baseR!101) e!4493407)))

(declare-fun b!7541791 () Bool)

(assert (=> b!7541791 (= e!4493408 e!4493410)))

(declare-fun res!3022449 () Bool)

(assert (=> b!7541791 (=> (not res!3022449) (not e!4493410))))

(assert (=> b!7541791 (= res!3022449 call!691783)))

(declare-fun b!7541792 () Bool)

(assert (=> b!7541792 (= e!4493411 call!691782)))

(assert (= (and d!2311439 (not res!3022451)) b!7541789))

(assert (= (and b!7541789 c!1392421) b!7541788))

(assert (= (and b!7541789 (not c!1392421)) b!7541786))

(assert (= (and b!7541788 res!3022450) b!7541784))

(assert (= (and b!7541786 c!1392420) b!7541790))

(assert (= (and b!7541786 (not c!1392420)) b!7541787))

(assert (= (and b!7541790 res!3022448) b!7541792))

(assert (= (and b!7541787 (not res!3022447)) b!7541791))

(assert (= (and b!7541791 res!3022449) b!7541785))

(assert (= (or b!7541790 b!7541791) bm!691776))

(assert (= (or b!7541792 b!7541785) bm!691777))

(assert (= (or b!7541784 bm!691776) bm!691778))

(declare-fun m!8110892 () Bool)

(assert (=> bm!691777 m!8110892))

(declare-fun m!8110894 () Bool)

(assert (=> bm!691778 m!8110894))

(declare-fun m!8110896 () Bool)

(assert (=> b!7541788 m!8110896))

(assert (=> start!729386 d!2311439))

(declare-fun b!7541816 () Bool)

(declare-fun lt!2643519 () List!72789)

(declare-fun e!4493422 () Bool)

(assert (=> b!7541816 (= e!4493422 (or (not (= lt!2643450 Nil!72665)) (= lt!2643519 lt!2643444)))))

(declare-fun b!7541814 () Bool)

(declare-fun e!4493423 () List!72789)

(assert (=> b!7541814 (= e!4493423 (Cons!72665 (h!79113 lt!2643444) (++!17423 (t!387498 lt!2643444) lt!2643450)))))

(declare-fun b!7541815 () Bool)

(declare-fun res!3022462 () Bool)

(assert (=> b!7541815 (=> (not res!3022462) (not e!4493422))))

(assert (=> b!7541815 (= res!3022462 (= (size!42402 lt!2643519) (+ (size!42402 lt!2643444) (size!42402 lt!2643450))))))

(declare-fun d!2311443 () Bool)

(assert (=> d!2311443 e!4493422))

(declare-fun res!3022463 () Bool)

(assert (=> d!2311443 (=> (not res!3022463) (not e!4493422))))

(declare-fun content!15369 (List!72789) (Set C!40138))

(assert (=> d!2311443 (= res!3022463 (= (content!15369 lt!2643519) (set.union (content!15369 lt!2643444) (content!15369 lt!2643450))))))

(assert (=> d!2311443 (= lt!2643519 e!4493423)))

(declare-fun c!1392427 () Bool)

(assert (=> d!2311443 (= c!1392427 (is-Nil!72665 lt!2643444))))

(assert (=> d!2311443 (= (++!17423 lt!2643444 lt!2643450) lt!2643519)))

(declare-fun b!7541813 () Bool)

(assert (=> b!7541813 (= e!4493423 lt!2643450)))

(assert (= (and d!2311443 c!1392427) b!7541813))

(assert (= (and d!2311443 (not c!1392427)) b!7541814))

(assert (= (and d!2311443 res!3022463) b!7541815))

(assert (= (and b!7541815 res!3022462) b!7541816))

(declare-fun m!8110912 () Bool)

(assert (=> b!7541814 m!8110912))

(declare-fun m!8110914 () Bool)

(assert (=> b!7541815 m!8110914))

(declare-fun m!8110916 () Bool)

(assert (=> b!7541815 m!8110916))

(declare-fun m!8110918 () Bool)

(assert (=> b!7541815 m!8110918))

(declare-fun m!8110920 () Bool)

(assert (=> d!2311443 m!8110920))

(declare-fun m!8110922 () Bool)

(assert (=> d!2311443 m!8110922))

(declare-fun m!8110924 () Bool)

(assert (=> d!2311443 m!8110924))

(assert (=> b!7541563 d!2311443))

(declare-fun e!4493424 () Bool)

(declare-fun b!7541820 () Bool)

(declare-fun lt!2643520 () List!72789)

(assert (=> b!7541820 (= e!4493424 (or (not (= lt!2643434 Nil!72665)) (= lt!2643520 testedP!423)))))

(declare-fun b!7541818 () Bool)

(declare-fun e!4493425 () List!72789)

(assert (=> b!7541818 (= e!4493425 (Cons!72665 (h!79113 testedP!423) (++!17423 (t!387498 testedP!423) lt!2643434)))))

(declare-fun b!7541819 () Bool)

(declare-fun res!3022464 () Bool)

(assert (=> b!7541819 (=> (not res!3022464) (not e!4493424))))

(assert (=> b!7541819 (= res!3022464 (= (size!42402 lt!2643520) (+ (size!42402 testedP!423) (size!42402 lt!2643434))))))

(declare-fun d!2311447 () Bool)

(assert (=> d!2311447 e!4493424))

(declare-fun res!3022465 () Bool)

(assert (=> d!2311447 (=> (not res!3022465) (not e!4493424))))

(assert (=> d!2311447 (= res!3022465 (= (content!15369 lt!2643520) (set.union (content!15369 testedP!423) (content!15369 lt!2643434))))))

(assert (=> d!2311447 (= lt!2643520 e!4493425)))

(declare-fun c!1392428 () Bool)

(assert (=> d!2311447 (= c!1392428 (is-Nil!72665 testedP!423))))

(assert (=> d!2311447 (= (++!17423 testedP!423 lt!2643434) lt!2643520)))

(declare-fun b!7541817 () Bool)

(assert (=> b!7541817 (= e!4493425 lt!2643434)))

(assert (= (and d!2311447 c!1392428) b!7541817))

(assert (= (and d!2311447 (not c!1392428)) b!7541818))

(assert (= (and d!2311447 res!3022465) b!7541819))

(assert (= (and b!7541819 res!3022464) b!7541820))

(declare-fun m!8110926 () Bool)

(assert (=> b!7541818 m!8110926))

(declare-fun m!8110928 () Bool)

(assert (=> b!7541819 m!8110928))

(assert (=> b!7541819 m!8110718))

(declare-fun m!8110930 () Bool)

(assert (=> b!7541819 m!8110930))

(declare-fun m!8110932 () Bool)

(assert (=> d!2311447 m!8110932))

(declare-fun m!8110934 () Bool)

(assert (=> d!2311447 m!8110934))

(declare-fun m!8110936 () Bool)

(assert (=> d!2311447 m!8110936))

(assert (=> b!7541563 d!2311447))

(declare-fun d!2311449 () Bool)

(declare-fun lostCauseFct!436 (Regex!19906) Bool)

(assert (=> d!2311449 (= (lostCause!1698 r!24333) (lostCauseFct!436 r!24333))))

(declare-fun bs!1940017 () Bool)

(assert (= bs!1940017 d!2311449))

(declare-fun m!8110938 () Bool)

(assert (=> bs!1940017 m!8110938))

(assert (=> b!7541585 d!2311449))

(declare-fun d!2311451 () Bool)

(declare-fun lt!2643525 () Regex!19906)

(assert (=> d!2311451 (validRegex!10334 lt!2643525)))

(declare-fun e!4493430 () Regex!19906)

(assert (=> d!2311451 (= lt!2643525 e!4493430)))

(declare-fun c!1392433 () Bool)

(assert (=> d!2311451 (= c!1392433 (is-Cons!72665 testedP!423))))

(assert (=> d!2311451 (validRegex!10334 baseR!101)))

(assert (=> d!2311451 (= (derivative!438 baseR!101 testedP!423) lt!2643525)))

(declare-fun b!7541829 () Bool)

(assert (=> b!7541829 (= e!4493430 (derivative!438 (derivativeStep!5696 baseR!101 (h!79113 testedP!423)) (t!387498 testedP!423)))))

(declare-fun b!7541830 () Bool)

(assert (=> b!7541830 (= e!4493430 baseR!101)))

(assert (= (and d!2311451 c!1392433) b!7541829))

(assert (= (and d!2311451 (not c!1392433)) b!7541830))

(declare-fun m!8110940 () Bool)

(assert (=> d!2311451 m!8110940))

(assert (=> d!2311451 m!8110784))

(declare-fun m!8110942 () Bool)

(assert (=> b!7541829 m!8110942))

(assert (=> b!7541829 m!8110942))

(declare-fun m!8110944 () Bool)

(assert (=> b!7541829 m!8110944))

(assert (=> b!7541564 d!2311451))

(declare-fun b!7541842 () Bool)

(declare-fun res!3022476 () Bool)

(declare-fun e!4493440 () Bool)

(assert (=> b!7541842 (=> (not res!3022476) (not e!4493440))))

(assert (=> b!7541842 (= res!3022476 (= (head!15496 knownP!30) (head!15496 input!7874)))))

(declare-fun b!7541841 () Bool)

(declare-fun e!4493438 () Bool)

(assert (=> b!7541841 (= e!4493438 e!4493440)))

(declare-fun res!3022475 () Bool)

(assert (=> b!7541841 (=> (not res!3022475) (not e!4493440))))

(assert (=> b!7541841 (= res!3022475 (not (is-Nil!72665 input!7874)))))

(declare-fun b!7541843 () Bool)

(assert (=> b!7541843 (= e!4493440 (isPrefix!6112 (tail!15042 knownP!30) (tail!15042 input!7874)))))

(declare-fun b!7541844 () Bool)

(declare-fun e!4493439 () Bool)

(assert (=> b!7541844 (= e!4493439 (>= (size!42402 input!7874) (size!42402 knownP!30)))))

(declare-fun d!2311453 () Bool)

(assert (=> d!2311453 e!4493439))

(declare-fun res!3022474 () Bool)

(assert (=> d!2311453 (=> res!3022474 e!4493439)))

(declare-fun lt!2643529 () Bool)

(assert (=> d!2311453 (= res!3022474 (not lt!2643529))))

(assert (=> d!2311453 (= lt!2643529 e!4493438)))

(declare-fun res!3022477 () Bool)

(assert (=> d!2311453 (=> res!3022477 e!4493438)))

(assert (=> d!2311453 (= res!3022477 (is-Nil!72665 knownP!30))))

(assert (=> d!2311453 (= (isPrefix!6112 knownP!30 input!7874) lt!2643529)))

(assert (= (and d!2311453 (not res!3022477)) b!7541841))

(assert (= (and b!7541841 res!3022475) b!7541842))

(assert (= (and b!7541842 res!3022476) b!7541843))

(assert (= (and d!2311453 (not res!3022474)) b!7541844))

(assert (=> b!7541842 m!8110880))

(declare-fun m!8110952 () Bool)

(assert (=> b!7541842 m!8110952))

(assert (=> b!7541843 m!8110876))

(declare-fun m!8110954 () Bool)

(assert (=> b!7541843 m!8110954))

(assert (=> b!7541843 m!8110876))

(assert (=> b!7541843 m!8110954))

(declare-fun m!8110956 () Bool)

(assert (=> b!7541843 m!8110956))

(assert (=> b!7541844 m!8110722))

(assert (=> b!7541844 m!8110720))

(assert (=> b!7541576 d!2311453))

(declare-fun b!7541848 () Bool)

(declare-fun lt!2643530 () List!72789)

(declare-fun e!4493441 () Bool)

(assert (=> b!7541848 (= e!4493441 (or (not (= lt!2643449 Nil!72665)) (= lt!2643530 testedP!423)))))

(declare-fun b!7541846 () Bool)

(declare-fun e!4493442 () List!72789)

(assert (=> b!7541846 (= e!4493442 (Cons!72665 (h!79113 testedP!423) (++!17423 (t!387498 testedP!423) lt!2643449)))))

(declare-fun b!7541847 () Bool)

(declare-fun res!3022478 () Bool)

(assert (=> b!7541847 (=> (not res!3022478) (not e!4493441))))

(assert (=> b!7541847 (= res!3022478 (= (size!42402 lt!2643530) (+ (size!42402 testedP!423) (size!42402 lt!2643449))))))

(declare-fun d!2311459 () Bool)

(assert (=> d!2311459 e!4493441))

(declare-fun res!3022479 () Bool)

(assert (=> d!2311459 (=> (not res!3022479) (not e!4493441))))

(assert (=> d!2311459 (= res!3022479 (= (content!15369 lt!2643530) (set.union (content!15369 testedP!423) (content!15369 lt!2643449))))))

(assert (=> d!2311459 (= lt!2643530 e!4493442)))

(declare-fun c!1392435 () Bool)

(assert (=> d!2311459 (= c!1392435 (is-Nil!72665 testedP!423))))

(assert (=> d!2311459 (= (++!17423 testedP!423 lt!2643449) lt!2643530)))

(declare-fun b!7541845 () Bool)

(assert (=> b!7541845 (= e!4493442 lt!2643449)))

(assert (= (and d!2311459 c!1392435) b!7541845))

(assert (= (and d!2311459 (not c!1392435)) b!7541846))

(assert (= (and d!2311459 res!3022479) b!7541847))

(assert (= (and b!7541847 res!3022478) b!7541848))

(declare-fun m!8110958 () Bool)

(assert (=> b!7541846 m!8110958))

(declare-fun m!8110960 () Bool)

(assert (=> b!7541847 m!8110960))

(assert (=> b!7541847 m!8110718))

(declare-fun m!8110962 () Bool)

(assert (=> b!7541847 m!8110962))

(declare-fun m!8110964 () Bool)

(assert (=> d!2311459 m!8110964))

(assert (=> d!2311459 m!8110934))

(declare-fun m!8110966 () Bool)

(assert (=> d!2311459 m!8110966))

(assert (=> b!7541566 d!2311459))

(declare-fun b!7541850 () Bool)

(declare-fun res!3022482 () Bool)

(declare-fun e!4493445 () Bool)

(assert (=> b!7541850 (=> (not res!3022482) (not e!4493445))))

(assert (=> b!7541850 (= res!3022482 (= (head!15496 testedP!423) (head!15496 input!7874)))))

(declare-fun b!7541849 () Bool)

(declare-fun e!4493443 () Bool)

(assert (=> b!7541849 (= e!4493443 e!4493445)))

(declare-fun res!3022481 () Bool)

(assert (=> b!7541849 (=> (not res!3022481) (not e!4493445))))

(assert (=> b!7541849 (= res!3022481 (not (is-Nil!72665 input!7874)))))

(declare-fun b!7541851 () Bool)

(assert (=> b!7541851 (= e!4493445 (isPrefix!6112 (tail!15042 testedP!423) (tail!15042 input!7874)))))

(declare-fun b!7541852 () Bool)

(declare-fun e!4493444 () Bool)

(assert (=> b!7541852 (= e!4493444 (>= (size!42402 input!7874) (size!42402 testedP!423)))))

(declare-fun d!2311461 () Bool)

(assert (=> d!2311461 e!4493444))

(declare-fun res!3022480 () Bool)

(assert (=> d!2311461 (=> res!3022480 e!4493444)))

(declare-fun lt!2643531 () Bool)

(assert (=> d!2311461 (= res!3022480 (not lt!2643531))))

(assert (=> d!2311461 (= lt!2643531 e!4493443)))

(declare-fun res!3022483 () Bool)

(assert (=> d!2311461 (=> res!3022483 e!4493443)))

(assert (=> d!2311461 (= res!3022483 (is-Nil!72665 testedP!423))))

(assert (=> d!2311461 (= (isPrefix!6112 testedP!423 input!7874) lt!2643531)))

(assert (= (and d!2311461 (not res!3022483)) b!7541849))

(assert (= (and b!7541849 res!3022481) b!7541850))

(assert (= (and b!7541850 res!3022482) b!7541851))

(assert (= (and d!2311461 (not res!3022480)) b!7541852))

(declare-fun m!8110968 () Bool)

(assert (=> b!7541850 m!8110968))

(assert (=> b!7541850 m!8110952))

(declare-fun m!8110970 () Bool)

(assert (=> b!7541851 m!8110970))

(assert (=> b!7541851 m!8110954))

(assert (=> b!7541851 m!8110970))

(assert (=> b!7541851 m!8110954))

(declare-fun m!8110972 () Bool)

(assert (=> b!7541851 m!8110972))

(assert (=> b!7541852 m!8110722))

(assert (=> b!7541852 m!8110718))

(assert (=> b!7541577 d!2311461))

(declare-fun d!2311463 () Bool)

(assert (=> d!2311463 (= (head!15496 lt!2643434) (h!79113 lt!2643434))))

(assert (=> b!7541556 d!2311463))

(declare-fun d!2311465 () Bool)

(assert (=> d!2311465 (= lt!2643448 lt!2643449)))

(declare-fun lt!2643537 () Unit!166750)

(declare-fun choose!58355 (List!72789 List!72789 List!72789 List!72789 List!72789) Unit!166750)

(assert (=> d!2311465 (= lt!2643537 (choose!58355 testedP!423 lt!2643448 testedP!423 lt!2643449 input!7874))))

(assert (=> d!2311465 (isPrefix!6112 testedP!423 input!7874)))

(assert (=> d!2311465 (= (lemmaSamePrefixThenSameSuffix!2840 testedP!423 lt!2643448 testedP!423 lt!2643449 input!7874) lt!2643537)))

(declare-fun bs!1940019 () Bool)

(assert (= bs!1940019 d!2311465))

(declare-fun m!8110976 () Bool)

(assert (=> bs!1940019 m!8110976))

(assert (=> bs!1940019 m!8110742))

(assert (=> b!7541556 d!2311465))

(declare-fun e!4493446 () Bool)

(declare-fun lt!2643538 () List!72789)

(declare-fun b!7541856 () Bool)

(assert (=> b!7541856 (= e!4493446 (or (not (= lt!2643448 Nil!72665)) (= lt!2643538 testedP!423)))))

(declare-fun b!7541854 () Bool)

(declare-fun e!4493447 () List!72789)

(assert (=> b!7541854 (= e!4493447 (Cons!72665 (h!79113 testedP!423) (++!17423 (t!387498 testedP!423) lt!2643448)))))

(declare-fun b!7541855 () Bool)

(declare-fun res!3022484 () Bool)

(assert (=> b!7541855 (=> (not res!3022484) (not e!4493446))))

(assert (=> b!7541855 (= res!3022484 (= (size!42402 lt!2643538) (+ (size!42402 testedP!423) (size!42402 lt!2643448))))))

(declare-fun d!2311469 () Bool)

(assert (=> d!2311469 e!4493446))

(declare-fun res!3022485 () Bool)

(assert (=> d!2311469 (=> (not res!3022485) (not e!4493446))))

(assert (=> d!2311469 (= res!3022485 (= (content!15369 lt!2643538) (set.union (content!15369 testedP!423) (content!15369 lt!2643448))))))

(assert (=> d!2311469 (= lt!2643538 e!4493447)))

(declare-fun c!1392436 () Bool)

(assert (=> d!2311469 (= c!1392436 (is-Nil!72665 testedP!423))))

(assert (=> d!2311469 (= (++!17423 testedP!423 lt!2643448) lt!2643538)))

(declare-fun b!7541853 () Bool)

(assert (=> b!7541853 (= e!4493447 lt!2643448)))

(assert (= (and d!2311469 c!1392436) b!7541853))

(assert (= (and d!2311469 (not c!1392436)) b!7541854))

(assert (= (and d!2311469 res!3022485) b!7541855))

(assert (= (and b!7541855 res!3022484) b!7541856))

(declare-fun m!8110978 () Bool)

(assert (=> b!7541854 m!8110978))

(declare-fun m!8110980 () Bool)

(assert (=> b!7541855 m!8110980))

(assert (=> b!7541855 m!8110718))

(declare-fun m!8110982 () Bool)

(assert (=> b!7541855 m!8110982))

(declare-fun m!8110984 () Bool)

(assert (=> d!2311469 m!8110984))

(assert (=> d!2311469 m!8110934))

(declare-fun m!8110986 () Bool)

(assert (=> d!2311469 m!8110986))

(assert (=> b!7541567 d!2311469))

(declare-fun lt!2643539 () List!72789)

(declare-fun b!7541860 () Bool)

(declare-fun e!4493448 () Bool)

(assert (=> b!7541860 (= e!4493448 (or (not (= lt!2643450 Nil!72665)) (= lt!2643539 lt!2643434)))))

(declare-fun b!7541858 () Bool)

(declare-fun e!4493449 () List!72789)

(assert (=> b!7541858 (= e!4493449 (Cons!72665 (h!79113 lt!2643434) (++!17423 (t!387498 lt!2643434) lt!2643450)))))

(declare-fun b!7541859 () Bool)

(declare-fun res!3022486 () Bool)

(assert (=> b!7541859 (=> (not res!3022486) (not e!4493448))))

(assert (=> b!7541859 (= res!3022486 (= (size!42402 lt!2643539) (+ (size!42402 lt!2643434) (size!42402 lt!2643450))))))

(declare-fun d!2311471 () Bool)

(assert (=> d!2311471 e!4493448))

(declare-fun res!3022487 () Bool)

(assert (=> d!2311471 (=> (not res!3022487) (not e!4493448))))

(assert (=> d!2311471 (= res!3022487 (= (content!15369 lt!2643539) (set.union (content!15369 lt!2643434) (content!15369 lt!2643450))))))

(assert (=> d!2311471 (= lt!2643539 e!4493449)))

(declare-fun c!1392437 () Bool)

(assert (=> d!2311471 (= c!1392437 (is-Nil!72665 lt!2643434))))

(assert (=> d!2311471 (= (++!17423 lt!2643434 lt!2643450) lt!2643539)))

(declare-fun b!7541857 () Bool)

(assert (=> b!7541857 (= e!4493449 lt!2643450)))

(assert (= (and d!2311471 c!1392437) b!7541857))

(assert (= (and d!2311471 (not c!1392437)) b!7541858))

(assert (= (and d!2311471 res!3022487) b!7541859))

(assert (= (and b!7541859 res!3022486) b!7541860))

(declare-fun m!8110988 () Bool)

(assert (=> b!7541858 m!8110988))

(declare-fun m!8110990 () Bool)

(assert (=> b!7541859 m!8110990))

(assert (=> b!7541859 m!8110930))

(assert (=> b!7541859 m!8110918))

(declare-fun m!8110992 () Bool)

(assert (=> d!2311471 m!8110992))

(assert (=> d!2311471 m!8110936))

(assert (=> d!2311471 m!8110924))

(assert (=> b!7541567 d!2311471))

(declare-fun d!2311473 () Bool)

(assert (=> d!2311473 (= (++!17423 (++!17423 testedP!423 lt!2643434) lt!2643450) (++!17423 testedP!423 (++!17423 lt!2643434 lt!2643450)))))

(declare-fun lt!2643542 () Unit!166750)

(declare-fun choose!58356 (List!72789 List!72789 List!72789) Unit!166750)

(assert (=> d!2311473 (= lt!2643542 (choose!58356 testedP!423 lt!2643434 lt!2643450))))

(assert (=> d!2311473 (= (lemmaConcatAssociativity!3071 testedP!423 lt!2643434 lt!2643450) lt!2643542)))

(declare-fun bs!1940020 () Bool)

(assert (= bs!1940020 d!2311473))

(assert (=> bs!1940020 m!8110730))

(assert (=> bs!1940020 m!8110730))

(declare-fun m!8110994 () Bool)

(assert (=> bs!1940020 m!8110994))

(assert (=> bs!1940020 m!8110714))

(declare-fun m!8110996 () Bool)

(assert (=> bs!1940020 m!8110996))

(assert (=> bs!1940020 m!8110714))

(declare-fun m!8110998 () Bool)

(assert (=> bs!1940020 m!8110998))

(assert (=> b!7541567 d!2311473))

(declare-fun d!2311475 () Bool)

(assert (=> d!2311475 (= ($colon$colon!3366 (tail!15042 lt!2643434) lt!2643433) (Cons!72665 lt!2643433 (tail!15042 lt!2643434)))))

(assert (=> b!7541578 d!2311475))

(declare-fun d!2311477 () Bool)

(assert (=> d!2311477 (= (tail!15042 lt!2643434) (t!387498 lt!2643434))))

(assert (=> b!7541578 d!2311477))

(declare-fun d!2311479 () Bool)

(declare-fun lt!2643545 () Int)

(assert (=> d!2311479 (>= lt!2643545 0)))

(declare-fun e!4493452 () Int)

(assert (=> d!2311479 (= lt!2643545 e!4493452)))

(declare-fun c!1392440 () Bool)

(assert (=> d!2311479 (= c!1392440 (is-Nil!72665 input!7874))))

(assert (=> d!2311479 (= (size!42402 input!7874) lt!2643545)))

(declare-fun b!7541865 () Bool)

(assert (=> b!7541865 (= e!4493452 0)))

(declare-fun b!7541866 () Bool)

(assert (=> b!7541866 (= e!4493452 (+ 1 (size!42402 (t!387498 input!7874))))))

(assert (= (and d!2311479 c!1392440) b!7541865))

(assert (= (and d!2311479 (not c!1392440)) b!7541866))

(declare-fun m!8111000 () Bool)

(assert (=> b!7541866 m!8111000))

(assert (=> b!7541557 d!2311479))

(declare-fun b!7541870 () Bool)

(declare-fun e!4493453 () Bool)

(declare-fun lt!2643546 () List!72789)

(assert (=> b!7541870 (= e!4493453 (or (not (= lt!2643438 Nil!72665)) (= lt!2643546 lt!2643443)))))

(declare-fun b!7541868 () Bool)

(declare-fun e!4493454 () List!72789)

(assert (=> b!7541868 (= e!4493454 (Cons!72665 (h!79113 lt!2643443) (++!17423 (t!387498 lt!2643443) lt!2643438)))))

(declare-fun b!7541869 () Bool)

(declare-fun res!3022488 () Bool)

(assert (=> b!7541869 (=> (not res!3022488) (not e!4493453))))

(assert (=> b!7541869 (= res!3022488 (= (size!42402 lt!2643546) (+ (size!42402 lt!2643443) (size!42402 lt!2643438))))))

(declare-fun d!2311481 () Bool)

(assert (=> d!2311481 e!4493453))

(declare-fun res!3022489 () Bool)

(assert (=> d!2311481 (=> (not res!3022489) (not e!4493453))))

(assert (=> d!2311481 (= res!3022489 (= (content!15369 lt!2643546) (set.union (content!15369 lt!2643443) (content!15369 lt!2643438))))))

(assert (=> d!2311481 (= lt!2643546 e!4493454)))

(declare-fun c!1392441 () Bool)

(assert (=> d!2311481 (= c!1392441 (is-Nil!72665 lt!2643443))))

(assert (=> d!2311481 (= (++!17423 lt!2643443 lt!2643438) lt!2643546)))

(declare-fun b!7541867 () Bool)

(assert (=> b!7541867 (= e!4493454 lt!2643438)))

(assert (= (and d!2311481 c!1392441) b!7541867))

(assert (= (and d!2311481 (not c!1392441)) b!7541868))

(assert (= (and d!2311481 res!3022489) b!7541869))

(assert (= (and b!7541869 res!3022488) b!7541870))

(declare-fun m!8111002 () Bool)

(assert (=> b!7541868 m!8111002))

(declare-fun m!8111004 () Bool)

(assert (=> b!7541869 m!8111004))

(declare-fun m!8111006 () Bool)

(assert (=> b!7541869 m!8111006))

(declare-fun m!8111008 () Bool)

(assert (=> b!7541869 m!8111008))

(declare-fun m!8111010 () Bool)

(assert (=> d!2311481 m!8111010))

(declare-fun m!8111012 () Bool)

(assert (=> d!2311481 m!8111012))

(declare-fun m!8111014 () Bool)

(assert (=> d!2311481 m!8111014))

(assert (=> b!7541568 d!2311481))

(declare-fun d!2311483 () Bool)

(declare-fun lt!2643551 () List!72789)

(assert (=> d!2311483 (= (++!17423 testedP!423 lt!2643551) input!7874)))

(declare-fun e!4493467 () List!72789)

(assert (=> d!2311483 (= lt!2643551 e!4493467)))

(declare-fun c!1392454 () Bool)

(assert (=> d!2311483 (= c!1392454 (is-Cons!72665 testedP!423))))

(assert (=> d!2311483 (>= (size!42402 input!7874) (size!42402 testedP!423))))

(assert (=> d!2311483 (= (getSuffix!3592 input!7874 testedP!423) lt!2643551)))

(declare-fun b!7541895 () Bool)

(assert (=> b!7541895 (= e!4493467 (getSuffix!3592 (tail!15042 input!7874) (t!387498 testedP!423)))))

(declare-fun b!7541896 () Bool)

(assert (=> b!7541896 (= e!4493467 input!7874)))

(assert (= (and d!2311483 c!1392454) b!7541895))

(assert (= (and d!2311483 (not c!1392454)) b!7541896))

(declare-fun m!8111016 () Bool)

(assert (=> d!2311483 m!8111016))

(assert (=> d!2311483 m!8110722))

(assert (=> d!2311483 m!8110718))

(assert (=> b!7541895 m!8110954))

(assert (=> b!7541895 m!8110954))

(declare-fun m!8111018 () Bool)

(assert (=> b!7541895 m!8111018))

(assert (=> b!7541570 d!2311483))

(declare-fun b!7541927 () Bool)

(declare-fun e!4493486 () Regex!19906)

(declare-fun call!691806 () Regex!19906)

(assert (=> b!7541927 (= e!4493486 (Union!19906 (Concat!28751 call!691806 (regTwo!40324 r!24333)) EmptyLang!19906))))

(declare-fun b!7541928 () Bool)

(declare-fun e!4493484 () Regex!19906)

(declare-fun call!691807 () Regex!19906)

(declare-fun call!691805 () Regex!19906)

(assert (=> b!7541928 (= e!4493484 (Union!19906 call!691807 call!691805))))

(declare-fun bm!691799 () Bool)

(declare-fun call!691804 () Regex!19906)

(assert (=> bm!691799 (= call!691806 call!691804)))

(declare-fun c!1392473 () Bool)

(declare-fun bm!691800 () Bool)

(assert (=> bm!691800 (= call!691807 (derivativeStep!5696 (ite c!1392473 (regOne!40325 r!24333) (regTwo!40324 r!24333)) lt!2643433))))

(declare-fun c!1392472 () Bool)

(declare-fun bm!691801 () Bool)

(assert (=> bm!691801 (= call!691805 (derivativeStep!5696 (ite c!1392473 (regTwo!40325 r!24333) (ite c!1392472 (reg!20235 r!24333) (regOne!40324 r!24333))) lt!2643433))))

(declare-fun d!2311485 () Bool)

(declare-fun lt!2643555 () Regex!19906)

(assert (=> d!2311485 (validRegex!10334 lt!2643555)))

(declare-fun e!4493487 () Regex!19906)

(assert (=> d!2311485 (= lt!2643555 e!4493487)))

(declare-fun c!1392474 () Bool)

(assert (=> d!2311485 (= c!1392474 (or (is-EmptyExpr!19906 r!24333) (is-EmptyLang!19906 r!24333)))))

(assert (=> d!2311485 (validRegex!10334 r!24333)))

(assert (=> d!2311485 (= (derivativeStep!5696 r!24333 lt!2643433) lt!2643555)))

(declare-fun b!7541929 () Bool)

(assert (=> b!7541929 (= c!1392473 (is-Union!19906 r!24333))))

(declare-fun e!4493485 () Regex!19906)

(assert (=> b!7541929 (= e!4493485 e!4493484)))

(declare-fun bm!691802 () Bool)

(assert (=> bm!691802 (= call!691804 call!691805)))

(declare-fun b!7541930 () Bool)

(declare-fun e!4493483 () Regex!19906)

(assert (=> b!7541930 (= e!4493483 (Concat!28751 call!691804 r!24333))))

(declare-fun b!7541931 () Bool)

(assert (=> b!7541931 (= e!4493487 EmptyLang!19906)))

(declare-fun b!7541932 () Bool)

(declare-fun c!1392470 () Bool)

(assert (=> b!7541932 (= c!1392470 (nullable!8680 (regOne!40324 r!24333)))))

(assert (=> b!7541932 (= e!4493483 e!4493486)))

(declare-fun b!7541933 () Bool)

(assert (=> b!7541933 (= e!4493487 e!4493485)))

(declare-fun c!1392471 () Bool)

(assert (=> b!7541933 (= c!1392471 (is-ElementMatch!19906 r!24333))))

(declare-fun b!7541934 () Bool)

(assert (=> b!7541934 (= e!4493486 (Union!19906 (Concat!28751 call!691806 (regTwo!40324 r!24333)) call!691807))))

(declare-fun b!7541935 () Bool)

(assert (=> b!7541935 (= e!4493484 e!4493483)))

(assert (=> b!7541935 (= c!1392472 (is-Star!19906 r!24333))))

(declare-fun b!7541936 () Bool)

(assert (=> b!7541936 (= e!4493485 (ite (= lt!2643433 (c!1392393 r!24333)) EmptyExpr!19906 EmptyLang!19906))))

(assert (= (and d!2311485 c!1392474) b!7541931))

(assert (= (and d!2311485 (not c!1392474)) b!7541933))

(assert (= (and b!7541933 c!1392471) b!7541936))

(assert (= (and b!7541933 (not c!1392471)) b!7541929))

(assert (= (and b!7541929 c!1392473) b!7541928))

(assert (= (and b!7541929 (not c!1392473)) b!7541935))

(assert (= (and b!7541935 c!1392472) b!7541930))

(assert (= (and b!7541935 (not c!1392472)) b!7541932))

(assert (= (and b!7541932 c!1392470) b!7541934))

(assert (= (and b!7541932 (not c!1392470)) b!7541927))

(assert (= (or b!7541934 b!7541927) bm!691799))

(assert (= (or b!7541930 bm!691799) bm!691802))

(assert (= (or b!7541928 bm!691802) bm!691801))

(assert (= (or b!7541928 b!7541934) bm!691800))

(declare-fun m!8111020 () Bool)

(assert (=> bm!691800 m!8111020))

(declare-fun m!8111022 () Bool)

(assert (=> bm!691801 m!8111022))

(declare-fun m!8111024 () Bool)

(assert (=> d!2311485 m!8111024))

(assert (=> d!2311485 m!8110710))

(declare-fun m!8111026 () Bool)

(assert (=> b!7541932 m!8111026))

(assert (=> b!7541570 d!2311485))

(declare-fun d!2311487 () Bool)

(declare-fun lt!2643556 () List!72789)

(assert (=> d!2311487 (= (++!17423 lt!2643443 lt!2643556) knownP!30)))

(declare-fun e!4493488 () List!72789)

(assert (=> d!2311487 (= lt!2643556 e!4493488)))

(declare-fun c!1392475 () Bool)

(assert (=> d!2311487 (= c!1392475 (is-Cons!72665 lt!2643443))))

(assert (=> d!2311487 (>= (size!42402 knownP!30) (size!42402 lt!2643443))))

(assert (=> d!2311487 (= (getSuffix!3592 knownP!30 lt!2643443) lt!2643556)))

(declare-fun b!7541937 () Bool)

(assert (=> b!7541937 (= e!4493488 (getSuffix!3592 (tail!15042 knownP!30) (t!387498 lt!2643443)))))

(declare-fun b!7541938 () Bool)

(assert (=> b!7541938 (= e!4493488 knownP!30)))

(assert (= (and d!2311487 c!1392475) b!7541937))

(assert (= (and d!2311487 (not c!1392475)) b!7541938))

(declare-fun m!8111034 () Bool)

(assert (=> d!2311487 m!8111034))

(assert (=> d!2311487 m!8110720))

(assert (=> d!2311487 m!8111006))

(assert (=> b!7541937 m!8110876))

(assert (=> b!7541937 m!8110876))

(declare-fun m!8111038 () Bool)

(assert (=> b!7541937 m!8111038))

(assert (=> b!7541570 d!2311487))

(declare-fun e!4493489 () Bool)

(declare-fun b!7541942 () Bool)

(declare-fun lt!2643557 () List!72789)

(assert (=> b!7541942 (= e!4493489 (or (not (= (Cons!72665 lt!2643433 Nil!72665) Nil!72665)) (= lt!2643557 testedP!423)))))

(declare-fun b!7541940 () Bool)

(declare-fun e!4493490 () List!72789)

(assert (=> b!7541940 (= e!4493490 (Cons!72665 (h!79113 testedP!423) (++!17423 (t!387498 testedP!423) (Cons!72665 lt!2643433 Nil!72665))))))

(declare-fun b!7541941 () Bool)

(declare-fun res!3022490 () Bool)

(assert (=> b!7541941 (=> (not res!3022490) (not e!4493489))))

(assert (=> b!7541941 (= res!3022490 (= (size!42402 lt!2643557) (+ (size!42402 testedP!423) (size!42402 (Cons!72665 lt!2643433 Nil!72665)))))))

(declare-fun d!2311491 () Bool)

(assert (=> d!2311491 e!4493489))

(declare-fun res!3022491 () Bool)

(assert (=> d!2311491 (=> (not res!3022491) (not e!4493489))))

(assert (=> d!2311491 (= res!3022491 (= (content!15369 lt!2643557) (set.union (content!15369 testedP!423) (content!15369 (Cons!72665 lt!2643433 Nil!72665)))))))

(assert (=> d!2311491 (= lt!2643557 e!4493490)))

(declare-fun c!1392476 () Bool)

(assert (=> d!2311491 (= c!1392476 (is-Nil!72665 testedP!423))))

(assert (=> d!2311491 (= (++!17423 testedP!423 (Cons!72665 lt!2643433 Nil!72665)) lt!2643557)))

(declare-fun b!7541939 () Bool)

(assert (=> b!7541939 (= e!4493490 (Cons!72665 lt!2643433 Nil!72665))))

(assert (= (and d!2311491 c!1392476) b!7541939))

(assert (= (and d!2311491 (not c!1392476)) b!7541940))

(assert (= (and d!2311491 res!3022491) b!7541941))

(assert (= (and b!7541941 res!3022490) b!7541942))

(declare-fun m!8111040 () Bool)

(assert (=> b!7541940 m!8111040))

(declare-fun m!8111042 () Bool)

(assert (=> b!7541941 m!8111042))

(assert (=> b!7541941 m!8110718))

(declare-fun m!8111044 () Bool)

(assert (=> b!7541941 m!8111044))

(declare-fun m!8111046 () Bool)

(assert (=> d!2311491 m!8111046))

(assert (=> d!2311491 m!8110934))

(declare-fun m!8111048 () Bool)

(assert (=> d!2311491 m!8111048))

(assert (=> b!7541570 d!2311491))

(declare-fun b!7541944 () Bool)

(declare-fun res!3022494 () Bool)

(declare-fun e!4493493 () Bool)

(assert (=> b!7541944 (=> (not res!3022494) (not e!4493493))))

(assert (=> b!7541944 (= res!3022494 (= (head!15496 lt!2643443) (head!15496 knownP!30)))))

(declare-fun b!7541943 () Bool)

(declare-fun e!4493491 () Bool)

(assert (=> b!7541943 (= e!4493491 e!4493493)))

(declare-fun res!3022493 () Bool)

(assert (=> b!7541943 (=> (not res!3022493) (not e!4493493))))

(assert (=> b!7541943 (= res!3022493 (not (is-Nil!72665 knownP!30)))))

(declare-fun b!7541945 () Bool)

(assert (=> b!7541945 (= e!4493493 (isPrefix!6112 (tail!15042 lt!2643443) (tail!15042 knownP!30)))))

(declare-fun b!7541946 () Bool)

(declare-fun e!4493492 () Bool)

(assert (=> b!7541946 (= e!4493492 (>= (size!42402 knownP!30) (size!42402 lt!2643443)))))

(declare-fun d!2311493 () Bool)

(assert (=> d!2311493 e!4493492))

(declare-fun res!3022492 () Bool)

(assert (=> d!2311493 (=> res!3022492 e!4493492)))

(declare-fun lt!2643558 () Bool)

(assert (=> d!2311493 (= res!3022492 (not lt!2643558))))

(assert (=> d!2311493 (= lt!2643558 e!4493491)))

(declare-fun res!3022495 () Bool)

(assert (=> d!2311493 (=> res!3022495 e!4493491)))

(assert (=> d!2311493 (= res!3022495 (is-Nil!72665 lt!2643443))))

(assert (=> d!2311493 (= (isPrefix!6112 lt!2643443 knownP!30) lt!2643558)))

(assert (= (and d!2311493 (not res!3022495)) b!7541943))

(assert (= (and b!7541943 res!3022493) b!7541944))

(assert (= (and b!7541944 res!3022494) b!7541945))

(assert (= (and d!2311493 (not res!3022492)) b!7541946))

(declare-fun m!8111050 () Bool)

(assert (=> b!7541944 m!8111050))

(assert (=> b!7541944 m!8110880))

(declare-fun m!8111052 () Bool)

(assert (=> b!7541945 m!8111052))

(assert (=> b!7541945 m!8110876))

(assert (=> b!7541945 m!8111052))

(assert (=> b!7541945 m!8110876))

(declare-fun m!8111054 () Bool)

(assert (=> b!7541945 m!8111054))

(assert (=> b!7541946 m!8110720))

(assert (=> b!7541946 m!8111006))

(assert (=> b!7541570 d!2311493))

(declare-fun lt!2643559 () List!72789)

(declare-fun b!7541950 () Bool)

(declare-fun e!4493494 () Bool)

(assert (=> b!7541950 (= e!4493494 (or (not (= lt!2643450 Nil!72665)) (= lt!2643559 knownP!30)))))

(declare-fun b!7541948 () Bool)

(declare-fun e!4493495 () List!72789)

(assert (=> b!7541948 (= e!4493495 (Cons!72665 (h!79113 knownP!30) (++!17423 (t!387498 knownP!30) lt!2643450)))))

(declare-fun b!7541949 () Bool)

(declare-fun res!3022496 () Bool)

(assert (=> b!7541949 (=> (not res!3022496) (not e!4493494))))

(assert (=> b!7541949 (= res!3022496 (= (size!42402 lt!2643559) (+ (size!42402 knownP!30) (size!42402 lt!2643450))))))

(declare-fun d!2311495 () Bool)

(assert (=> d!2311495 e!4493494))

(declare-fun res!3022497 () Bool)

(assert (=> d!2311495 (=> (not res!3022497) (not e!4493494))))

(assert (=> d!2311495 (= res!3022497 (= (content!15369 lt!2643559) (set.union (content!15369 knownP!30) (content!15369 lt!2643450))))))

(assert (=> d!2311495 (= lt!2643559 e!4493495)))

(declare-fun c!1392477 () Bool)

(assert (=> d!2311495 (= c!1392477 (is-Nil!72665 knownP!30))))

(assert (=> d!2311495 (= (++!17423 knownP!30 lt!2643450) lt!2643559)))

(declare-fun b!7541947 () Bool)

(assert (=> b!7541947 (= e!4493495 lt!2643450)))

(assert (= (and d!2311495 c!1392477) b!7541947))

(assert (= (and d!2311495 (not c!1392477)) b!7541948))

(assert (= (and d!2311495 res!3022497) b!7541949))

(assert (= (and b!7541949 res!3022496) b!7541950))

(declare-fun m!8111056 () Bool)

(assert (=> b!7541948 m!8111056))

(declare-fun m!8111058 () Bool)

(assert (=> b!7541949 m!8111058))

(assert (=> b!7541949 m!8110720))

(assert (=> b!7541949 m!8110918))

(declare-fun m!8111060 () Bool)

(assert (=> d!2311495 m!8111060))

(declare-fun m!8111062 () Bool)

(assert (=> d!2311495 m!8111062))

(assert (=> d!2311495 m!8110924))

(assert (=> b!7541570 d!2311495))

(declare-fun d!2311497 () Bool)

(assert (=> d!2311497 (isPrefix!6112 (++!17423 testedP!423 (Cons!72665 (head!15496 (getSuffix!3592 input!7874 testedP!423)) Nil!72665)) input!7874)))

(declare-fun lt!2643564 () Unit!166750)

(declare-fun choose!58358 (List!72789 List!72789) Unit!166750)

(assert (=> d!2311497 (= lt!2643564 (choose!58358 testedP!423 input!7874))))

(assert (=> d!2311497 (isPrefix!6112 testedP!423 input!7874)))

(assert (=> d!2311497 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1177 testedP!423 input!7874) lt!2643564)))

(declare-fun bs!1940021 () Bool)

(assert (= bs!1940021 d!2311497))

(assert (=> bs!1940021 m!8110756))

(declare-fun m!8111064 () Bool)

(assert (=> bs!1940021 m!8111064))

(declare-fun m!8111066 () Bool)

(assert (=> bs!1940021 m!8111066))

(assert (=> bs!1940021 m!8111066))

(declare-fun m!8111068 () Bool)

(assert (=> bs!1940021 m!8111068))

(assert (=> bs!1940021 m!8110756))

(declare-fun m!8111070 () Bool)

(assert (=> bs!1940021 m!8111070))

(assert (=> bs!1940021 m!8110742))

(assert (=> b!7541570 d!2311497))

(declare-fun b!7541956 () Bool)

(declare-fun res!3022500 () Bool)

(declare-fun e!4493500 () Bool)

(assert (=> b!7541956 (=> (not res!3022500) (not e!4493500))))

(assert (=> b!7541956 (= res!3022500 (= (head!15496 lt!2643443) (head!15496 input!7874)))))

(declare-fun b!7541955 () Bool)

(declare-fun e!4493498 () Bool)

(assert (=> b!7541955 (= e!4493498 e!4493500)))

(declare-fun res!3022499 () Bool)

(assert (=> b!7541955 (=> (not res!3022499) (not e!4493500))))

(assert (=> b!7541955 (= res!3022499 (not (is-Nil!72665 input!7874)))))

(declare-fun b!7541957 () Bool)

(assert (=> b!7541957 (= e!4493500 (isPrefix!6112 (tail!15042 lt!2643443) (tail!15042 input!7874)))))

(declare-fun b!7541958 () Bool)

(declare-fun e!4493499 () Bool)

(assert (=> b!7541958 (= e!4493499 (>= (size!42402 input!7874) (size!42402 lt!2643443)))))

(declare-fun d!2311499 () Bool)

(assert (=> d!2311499 e!4493499))

(declare-fun res!3022498 () Bool)

(assert (=> d!2311499 (=> res!3022498 e!4493499)))

(declare-fun lt!2643565 () Bool)

(assert (=> d!2311499 (= res!3022498 (not lt!2643565))))

(assert (=> d!2311499 (= lt!2643565 e!4493498)))

(declare-fun res!3022501 () Bool)

(assert (=> d!2311499 (=> res!3022501 e!4493498)))

(assert (=> d!2311499 (= res!3022501 (is-Nil!72665 lt!2643443))))

(assert (=> d!2311499 (= (isPrefix!6112 lt!2643443 input!7874) lt!2643565)))

(assert (= (and d!2311499 (not res!3022501)) b!7541955))

(assert (= (and b!7541955 res!3022499) b!7541956))

(assert (= (and b!7541956 res!3022500) b!7541957))

(assert (= (and d!2311499 (not res!3022498)) b!7541958))

(assert (=> b!7541956 m!8111050))

(assert (=> b!7541956 m!8110952))

(assert (=> b!7541957 m!8111052))

(assert (=> b!7541957 m!8110954))

(assert (=> b!7541957 m!8111052))

(assert (=> b!7541957 m!8110954))

(declare-fun m!8111072 () Bool)

(assert (=> b!7541957 m!8111072))

(assert (=> b!7541958 m!8110722))

(assert (=> b!7541958 m!8111006))

(assert (=> b!7541570 d!2311499))

(declare-fun d!2311501 () Bool)

(assert (=> d!2311501 (isPrefix!6112 lt!2643443 knownP!30)))

(declare-fun lt!2643570 () Unit!166750)

(declare-fun choose!58359 (List!72789 List!72789 List!72789) Unit!166750)

(assert (=> d!2311501 (= lt!2643570 (choose!58359 knownP!30 lt!2643443 input!7874))))

(assert (=> d!2311501 (isPrefix!6112 knownP!30 input!7874)))

(assert (=> d!2311501 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!862 knownP!30 lt!2643443 input!7874) lt!2643570)))

(declare-fun bs!1940022 () Bool)

(assert (= bs!1940022 d!2311501))

(assert (=> bs!1940022 m!8110768))

(declare-fun m!8111080 () Bool)

(assert (=> bs!1940022 m!8111080))

(assert (=> bs!1940022 m!8110724))

(assert (=> b!7541570 d!2311501))

(declare-fun d!2311505 () Bool)

(declare-fun lt!2643571 () Regex!19906)

(assert (=> d!2311505 (validRegex!10334 lt!2643571)))

(declare-fun e!4493503 () Regex!19906)

(assert (=> d!2311505 (= lt!2643571 e!4493503)))

(declare-fun c!1392482 () Bool)

(assert (=> d!2311505 (= c!1392482 (is-Cons!72665 lt!2643443))))

(assert (=> d!2311505 (validRegex!10334 baseR!101)))

(assert (=> d!2311505 (= (derivative!438 baseR!101 lt!2643443) lt!2643571)))

(declare-fun b!7541963 () Bool)

(assert (=> b!7541963 (= e!4493503 (derivative!438 (derivativeStep!5696 baseR!101 (h!79113 lt!2643443)) (t!387498 lt!2643443)))))

(declare-fun b!7541964 () Bool)

(assert (=> b!7541964 (= e!4493503 baseR!101)))

(assert (= (and d!2311505 c!1392482) b!7541963))

(assert (= (and d!2311505 (not c!1392482)) b!7541964))

(declare-fun m!8111086 () Bool)

(assert (=> d!2311505 m!8111086))

(assert (=> d!2311505 m!8110784))

(declare-fun m!8111088 () Bool)

(assert (=> b!7541963 m!8111088))

(assert (=> b!7541963 m!8111088))

(declare-fun m!8111090 () Bool)

(assert (=> b!7541963 m!8111090))

(assert (=> b!7541570 d!2311505))

(declare-fun d!2311509 () Bool)

(declare-fun lt!2643572 () List!72789)

(assert (=> d!2311509 (= (++!17423 knownP!30 lt!2643572) input!7874)))

(declare-fun e!4493504 () List!72789)

(assert (=> d!2311509 (= lt!2643572 e!4493504)))

(declare-fun c!1392483 () Bool)

(assert (=> d!2311509 (= c!1392483 (is-Cons!72665 knownP!30))))

(assert (=> d!2311509 (>= (size!42402 input!7874) (size!42402 knownP!30))))

(assert (=> d!2311509 (= (getSuffix!3592 input!7874 knownP!30) lt!2643572)))

(declare-fun b!7541965 () Bool)

(assert (=> b!7541965 (= e!4493504 (getSuffix!3592 (tail!15042 input!7874) (t!387498 knownP!30)))))

(declare-fun b!7541966 () Bool)

(assert (=> b!7541966 (= e!4493504 input!7874)))

(assert (= (and d!2311509 c!1392483) b!7541965))

(assert (= (and d!2311509 (not c!1392483)) b!7541966))

(declare-fun m!8111092 () Bool)

(assert (=> d!2311509 m!8111092))

(assert (=> d!2311509 m!8110722))

(assert (=> d!2311509 m!8110720))

(assert (=> b!7541965 m!8110954))

(assert (=> b!7541965 m!8110954))

(declare-fun m!8111094 () Bool)

(assert (=> b!7541965 m!8111094))

(assert (=> b!7541570 d!2311509))

(declare-fun d!2311511 () Bool)

(assert (=> d!2311511 (= (derivative!438 baseR!101 (++!17423 testedP!423 (Cons!72665 lt!2643433 Nil!72665))) (derivativeStep!5696 r!24333 lt!2643433))))

(declare-fun lt!2643575 () Unit!166750)

(declare-fun choose!58360 (Regex!19906 Regex!19906 List!72789 C!40138) Unit!166750)

(assert (=> d!2311511 (= lt!2643575 (choose!58360 baseR!101 r!24333 testedP!423 lt!2643433))))

(assert (=> d!2311511 (validRegex!10334 baseR!101)))

(assert (=> d!2311511 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!144 baseR!101 r!24333 testedP!423 lt!2643433) lt!2643575)))

(declare-fun bs!1940023 () Bool)

(assert (= bs!1940023 d!2311511))

(assert (=> bs!1940023 m!8110754))

(assert (=> bs!1940023 m!8110764))

(assert (=> bs!1940023 m!8110754))

(declare-fun m!8111096 () Bool)

(assert (=> bs!1940023 m!8111096))

(assert (=> bs!1940023 m!8110784))

(declare-fun m!8111098 () Bool)

(assert (=> bs!1940023 m!8111098))

(assert (=> b!7541570 d!2311511))

(declare-fun d!2311513 () Bool)

(assert (=> d!2311513 (= (head!15496 lt!2643449) (h!79113 lt!2643449))))

(assert (=> b!7541570 d!2311513))

(declare-fun b!7541967 () Bool)

(declare-fun e!4493508 () Bool)

(assert (=> b!7541967 (= e!4493508 (= (head!15496 lt!2643434) (c!1392393 r!24333)))))

(declare-fun b!7541968 () Bool)

(declare-fun e!4493511 () Bool)

(assert (=> b!7541968 (= e!4493511 (nullable!8680 r!24333))))

(declare-fun b!7541969 () Bool)

(declare-fun e!4493510 () Bool)

(declare-fun e!4493506 () Bool)

(assert (=> b!7541969 (= e!4493510 e!4493506)))

(declare-fun res!3022508 () Bool)

(assert (=> b!7541969 (=> (not res!3022508) (not e!4493506))))

(declare-fun lt!2643578 () Bool)

(assert (=> b!7541969 (= res!3022508 (not lt!2643578))))

(declare-fun b!7541970 () Bool)

(declare-fun res!3022504 () Bool)

(assert (=> b!7541970 (=> res!3022504 e!4493510)))

(assert (=> b!7541970 (= res!3022504 e!4493508)))

(declare-fun res!3022505 () Bool)

(assert (=> b!7541970 (=> (not res!3022505) (not e!4493508))))

(assert (=> b!7541970 (= res!3022505 lt!2643578)))

(declare-fun b!7541971 () Bool)

(declare-fun res!3022506 () Bool)

(declare-fun e!4493507 () Bool)

(assert (=> b!7541971 (=> res!3022506 e!4493507)))

(assert (=> b!7541971 (= res!3022506 (not (isEmpty!41376 (tail!15042 lt!2643434))))))

(declare-fun bm!691803 () Bool)

(declare-fun call!691808 () Bool)

(assert (=> bm!691803 (= call!691808 (isEmpty!41376 lt!2643434))))

(declare-fun b!7541972 () Bool)

(declare-fun e!4493505 () Bool)

(assert (=> b!7541972 (= e!4493505 (= lt!2643578 call!691808))))

(declare-fun b!7541973 () Bool)

(assert (=> b!7541973 (= e!4493506 e!4493507)))

(declare-fun res!3022507 () Bool)

(assert (=> b!7541973 (=> res!3022507 e!4493507)))

(assert (=> b!7541973 (= res!3022507 call!691808)))

(declare-fun d!2311515 () Bool)

(assert (=> d!2311515 e!4493505))

(declare-fun c!1392486 () Bool)

(assert (=> d!2311515 (= c!1392486 (is-EmptyExpr!19906 r!24333))))

(assert (=> d!2311515 (= lt!2643578 e!4493511)))

(declare-fun c!1392485 () Bool)

(assert (=> d!2311515 (= c!1392485 (isEmpty!41376 lt!2643434))))

(assert (=> d!2311515 (validRegex!10334 r!24333)))

(assert (=> d!2311515 (= (matchR!9508 r!24333 lt!2643434) lt!2643578)))

(declare-fun b!7541974 () Bool)

(declare-fun res!3022509 () Bool)

(assert (=> b!7541974 (=> (not res!3022509) (not e!4493508))))

(assert (=> b!7541974 (= res!3022509 (isEmpty!41376 (tail!15042 lt!2643434)))))

(declare-fun b!7541975 () Bool)

(declare-fun e!4493509 () Bool)

(assert (=> b!7541975 (= e!4493505 e!4493509)))

(declare-fun c!1392487 () Bool)

(assert (=> b!7541975 (= c!1392487 (is-EmptyLang!19906 r!24333))))

(declare-fun b!7541976 () Bool)

(declare-fun res!3022503 () Bool)

(assert (=> b!7541976 (=> (not res!3022503) (not e!4493508))))

(assert (=> b!7541976 (= res!3022503 (not call!691808))))

(declare-fun b!7541977 () Bool)

(declare-fun res!3022502 () Bool)

(assert (=> b!7541977 (=> res!3022502 e!4493510)))

(assert (=> b!7541977 (= res!3022502 (not (is-ElementMatch!19906 r!24333)))))

(assert (=> b!7541977 (= e!4493509 e!4493510)))

(declare-fun b!7541978 () Bool)

(assert (=> b!7541978 (= e!4493509 (not lt!2643578))))

(declare-fun b!7541979 () Bool)

(assert (=> b!7541979 (= e!4493507 (not (= (head!15496 lt!2643434) (c!1392393 r!24333))))))

(declare-fun b!7541980 () Bool)

(assert (=> b!7541980 (= e!4493511 (matchR!9508 (derivativeStep!5696 r!24333 (head!15496 lt!2643434)) (tail!15042 lt!2643434)))))

(assert (= (and d!2311515 c!1392485) b!7541968))

(assert (= (and d!2311515 (not c!1392485)) b!7541980))

(assert (= (and d!2311515 c!1392486) b!7541972))

(assert (= (and d!2311515 (not c!1392486)) b!7541975))

(assert (= (and b!7541975 c!1392487) b!7541978))

(assert (= (and b!7541975 (not c!1392487)) b!7541977))

(assert (= (and b!7541977 (not res!3022502)) b!7541970))

(assert (= (and b!7541970 res!3022505) b!7541976))

(assert (= (and b!7541976 res!3022503) b!7541974))

(assert (= (and b!7541974 res!3022509) b!7541967))

(assert (= (and b!7541970 (not res!3022504)) b!7541969))

(assert (= (and b!7541969 res!3022508) b!7541973))

(assert (= (and b!7541973 (not res!3022507)) b!7541971))

(assert (= (and b!7541971 (not res!3022506)) b!7541979))

(assert (= (or b!7541972 b!7541973 b!7541976) bm!691803))

(assert (=> b!7541971 m!8110770))

(assert (=> b!7541971 m!8110770))

(declare-fun m!8111100 () Bool)

(assert (=> b!7541971 m!8111100))

(assert (=> b!7541967 m!8110738))

(declare-fun m!8111102 () Bool)

(assert (=> bm!691803 m!8111102))

(assert (=> b!7541979 m!8110738))

(assert (=> d!2311515 m!8111102))

(assert (=> d!2311515 m!8110710))

(assert (=> b!7541980 m!8110738))

(assert (=> b!7541980 m!8110738))

(declare-fun m!8111104 () Bool)

(assert (=> b!7541980 m!8111104))

(assert (=> b!7541980 m!8110770))

(assert (=> b!7541980 m!8111104))

(assert (=> b!7541980 m!8110770))

(declare-fun m!8111106 () Bool)

(assert (=> b!7541980 m!8111106))

(declare-fun m!8111108 () Bool)

(assert (=> b!7541968 m!8111108))

(assert (=> b!7541974 m!8110770))

(assert (=> b!7541974 m!8110770))

(assert (=> b!7541974 m!8111100))

(assert (=> b!7541560 d!2311515))

(declare-fun d!2311517 () Bool)

(declare-fun lt!2643579 () List!72789)

(assert (=> d!2311517 (= (++!17423 testedP!423 lt!2643579) knownP!30)))

(declare-fun e!4493518 () List!72789)

(assert (=> d!2311517 (= lt!2643579 e!4493518)))

(declare-fun c!1392488 () Bool)

(assert (=> d!2311517 (= c!1392488 (is-Cons!72665 testedP!423))))

(assert (=> d!2311517 (>= (size!42402 knownP!30) (size!42402 testedP!423))))

(assert (=> d!2311517 (= (getSuffix!3592 knownP!30 testedP!423) lt!2643579)))

(declare-fun b!7541989 () Bool)

(assert (=> b!7541989 (= e!4493518 (getSuffix!3592 (tail!15042 knownP!30) (t!387498 testedP!423)))))

(declare-fun b!7541990 () Bool)

(assert (=> b!7541990 (= e!4493518 knownP!30)))

(assert (= (and d!2311517 c!1392488) b!7541989))

(assert (= (and d!2311517 (not c!1392488)) b!7541990))

(declare-fun m!8111110 () Bool)

(assert (=> d!2311517 m!8111110))

(assert (=> d!2311517 m!8110720))

(assert (=> d!2311517 m!8110718))

(assert (=> b!7541989 m!8110876))

(assert (=> b!7541989 m!8110876))

(declare-fun m!8111112 () Bool)

(assert (=> b!7541989 m!8111112))

(assert (=> b!7541560 d!2311517))

(declare-fun b!7541992 () Bool)

(declare-fun res!3022520 () Bool)

(declare-fun e!4493521 () Bool)

(assert (=> b!7541992 (=> (not res!3022520) (not e!4493521))))

(assert (=> b!7541992 (= res!3022520 (= (head!15496 testedP!423) (head!15496 knownP!30)))))

(declare-fun b!7541991 () Bool)

(declare-fun e!4493519 () Bool)

(assert (=> b!7541991 (= e!4493519 e!4493521)))

(declare-fun res!3022519 () Bool)

(assert (=> b!7541991 (=> (not res!3022519) (not e!4493521))))

(assert (=> b!7541991 (= res!3022519 (not (is-Nil!72665 knownP!30)))))

(declare-fun b!7541993 () Bool)

(assert (=> b!7541993 (= e!4493521 (isPrefix!6112 (tail!15042 testedP!423) (tail!15042 knownP!30)))))

(declare-fun b!7541994 () Bool)

(declare-fun e!4493520 () Bool)

(assert (=> b!7541994 (= e!4493520 (>= (size!42402 knownP!30) (size!42402 testedP!423)))))

(declare-fun d!2311519 () Bool)

(assert (=> d!2311519 e!4493520))

(declare-fun res!3022518 () Bool)

(assert (=> d!2311519 (=> res!3022518 e!4493520)))

(declare-fun lt!2643580 () Bool)

(assert (=> d!2311519 (= res!3022518 (not lt!2643580))))

(assert (=> d!2311519 (= lt!2643580 e!4493519)))

(declare-fun res!3022521 () Bool)

(assert (=> d!2311519 (=> res!3022521 e!4493519)))

(assert (=> d!2311519 (= res!3022521 (is-Nil!72665 testedP!423))))

(assert (=> d!2311519 (= (isPrefix!6112 testedP!423 knownP!30) lt!2643580)))

(assert (= (and d!2311519 (not res!3022521)) b!7541991))

(assert (= (and b!7541991 res!3022519) b!7541992))

(assert (= (and b!7541992 res!3022520) b!7541993))

(assert (= (and d!2311519 (not res!3022518)) b!7541994))

(assert (=> b!7541992 m!8110968))

(assert (=> b!7541992 m!8110880))

(assert (=> b!7541993 m!8110970))

(assert (=> b!7541993 m!8110876))

(assert (=> b!7541993 m!8110970))

(assert (=> b!7541993 m!8110876))

(declare-fun m!8111114 () Bool)

(assert (=> b!7541993 m!8111114))

(assert (=> b!7541994 m!8110720))

(assert (=> b!7541994 m!8110718))

(assert (=> b!7541560 d!2311519))

(declare-fun d!2311521 () Bool)

(assert (=> d!2311521 (isPrefix!6112 testedP!423 knownP!30)))

(declare-fun lt!2643581 () Unit!166750)

(assert (=> d!2311521 (= lt!2643581 (choose!58359 knownP!30 testedP!423 input!7874))))

(assert (=> d!2311521 (isPrefix!6112 knownP!30 input!7874)))

(assert (=> d!2311521 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!862 knownP!30 testedP!423 input!7874) lt!2643581)))

(declare-fun bs!1940024 () Bool)

(assert (= bs!1940024 d!2311521))

(assert (=> bs!1940024 m!8110778))

(declare-fun m!8111116 () Bool)

(assert (=> bs!1940024 m!8111116))

(assert (=> bs!1940024 m!8110724))

(assert (=> b!7541560 d!2311521))

(declare-fun bm!691804 () Bool)

(declare-fun call!691811 () Bool)

(declare-fun call!691809 () Bool)

(assert (=> bm!691804 (= call!691811 call!691809)))

(declare-fun b!7541995 () Bool)

(declare-fun e!4493522 () Bool)

(assert (=> b!7541995 (= e!4493522 call!691809)))

(declare-fun bm!691805 () Bool)

(declare-fun call!691810 () Bool)

(declare-fun c!1392489 () Bool)

(assert (=> bm!691805 (= call!691810 (validRegex!10334 (ite c!1392489 (regTwo!40325 r!24333) (regTwo!40324 r!24333))))))

(declare-fun c!1392490 () Bool)

(declare-fun bm!691806 () Bool)

(assert (=> bm!691806 (= call!691809 (validRegex!10334 (ite c!1392490 (reg!20235 r!24333) (ite c!1392489 (regOne!40325 r!24333) (regOne!40324 r!24333)))))))

(declare-fun b!7541996 () Bool)

(declare-fun e!4493527 () Bool)

(assert (=> b!7541996 (= e!4493527 call!691810)))

(declare-fun b!7541997 () Bool)

(declare-fun e!4493523 () Bool)

(declare-fun e!4493526 () Bool)

(assert (=> b!7541997 (= e!4493523 e!4493526)))

(assert (=> b!7541997 (= c!1392489 (is-Union!19906 r!24333))))

(declare-fun b!7541999 () Bool)

(assert (=> b!7541999 (= e!4493523 e!4493522)))

(declare-fun res!3022525 () Bool)

(assert (=> b!7541999 (= res!3022525 (not (nullable!8680 (reg!20235 r!24333))))))

(assert (=> b!7541999 (=> (not res!3022525) (not e!4493522))))

(declare-fun b!7542000 () Bool)

(declare-fun e!4493524 () Bool)

(assert (=> b!7542000 (= e!4493524 e!4493523)))

(assert (=> b!7542000 (= c!1392490 (is-Star!19906 r!24333))))

(declare-fun b!7542001 () Bool)

(declare-fun res!3022523 () Bool)

(declare-fun e!4493528 () Bool)

(assert (=> b!7542001 (=> (not res!3022523) (not e!4493528))))

(assert (=> b!7542001 (= res!3022523 call!691811)))

(assert (=> b!7542001 (= e!4493526 e!4493528)))

(declare-fun b!7541998 () Bool)

(declare-fun res!3022522 () Bool)

(declare-fun e!4493525 () Bool)

(assert (=> b!7541998 (=> res!3022522 e!4493525)))

(assert (=> b!7541998 (= res!3022522 (not (is-Concat!28751 r!24333)))))

(assert (=> b!7541998 (= e!4493526 e!4493525)))

(declare-fun d!2311523 () Bool)

(declare-fun res!3022526 () Bool)

(assert (=> d!2311523 (=> res!3022526 e!4493524)))

(assert (=> d!2311523 (= res!3022526 (is-ElementMatch!19906 r!24333))))

(assert (=> d!2311523 (= (validRegex!10334 r!24333) e!4493524)))

(declare-fun b!7542002 () Bool)

(assert (=> b!7542002 (= e!4493525 e!4493527)))

(declare-fun res!3022524 () Bool)

(assert (=> b!7542002 (=> (not res!3022524) (not e!4493527))))

(assert (=> b!7542002 (= res!3022524 call!691811)))

(declare-fun b!7542003 () Bool)

(assert (=> b!7542003 (= e!4493528 call!691810)))

(assert (= (and d!2311523 (not res!3022526)) b!7542000))

(assert (= (and b!7542000 c!1392490) b!7541999))

(assert (= (and b!7542000 (not c!1392490)) b!7541997))

(assert (= (and b!7541999 res!3022525) b!7541995))

(assert (= (and b!7541997 c!1392489) b!7542001))

(assert (= (and b!7541997 (not c!1392489)) b!7541998))

(assert (= (and b!7542001 res!3022523) b!7542003))

(assert (= (and b!7541998 (not res!3022522)) b!7542002))

(assert (= (and b!7542002 res!3022524) b!7541996))

(assert (= (or b!7542001 b!7542002) bm!691804))

(assert (= (or b!7542003 b!7541996) bm!691805))

(assert (= (or b!7541995 bm!691804) bm!691806))

(declare-fun m!8111118 () Bool)

(assert (=> bm!691805 m!8111118))

(declare-fun m!8111120 () Bool)

(assert (=> bm!691806 m!8111120))

(declare-fun m!8111122 () Bool)

(assert (=> b!7541999 m!8111122))

(assert (=> b!7541571 d!2311523))

(declare-fun d!2311525 () Bool)

(declare-fun lt!2643582 () Int)

(assert (=> d!2311525 (>= lt!2643582 0)))

(declare-fun e!4493529 () Int)

(assert (=> d!2311525 (= lt!2643582 e!4493529)))

(declare-fun c!1392491 () Bool)

(assert (=> d!2311525 (= c!1392491 (is-Nil!72665 testedP!423))))

(assert (=> d!2311525 (= (size!42402 testedP!423) lt!2643582)))

(declare-fun b!7542004 () Bool)

(assert (=> b!7542004 (= e!4493529 0)))

(declare-fun b!7542005 () Bool)

(assert (=> b!7542005 (= e!4493529 (+ 1 (size!42402 (t!387498 testedP!423))))))

(assert (= (and d!2311525 c!1392491) b!7542004))

(assert (= (and d!2311525 (not c!1392491)) b!7542005))

(declare-fun m!8111124 () Bool)

(assert (=> b!7542005 m!8111124))

(assert (=> b!7541562 d!2311525))

(declare-fun d!2311527 () Bool)

(declare-fun lt!2643583 () Int)

(assert (=> d!2311527 (>= lt!2643583 0)))

(declare-fun e!4493530 () Int)

(assert (=> d!2311527 (= lt!2643583 e!4493530)))

(declare-fun c!1392492 () Bool)

(assert (=> d!2311527 (= c!1392492 (is-Nil!72665 knownP!30))))

(assert (=> d!2311527 (= (size!42402 knownP!30) lt!2643583)))

(declare-fun b!7542006 () Bool)

(assert (=> b!7542006 (= e!4493530 0)))

(declare-fun b!7542007 () Bool)

(assert (=> b!7542007 (= e!4493530 (+ 1 (size!42402 (t!387498 knownP!30))))))

(assert (= (and d!2311527 c!1392492) b!7542006))

(assert (= (and d!2311527 (not c!1392492)) b!7542007))

(declare-fun m!8111126 () Bool)

(assert (=> b!7542007 m!8111126))

(assert (=> b!7541562 d!2311527))

(declare-fun b!7542016 () Bool)

(declare-fun e!4493536 () Bool)

(declare-fun tp!2193650 () Bool)

(assert (=> b!7542016 (= e!4493536 (and tp_is_empty!50167 tp!2193650))))

(assert (=> b!7541584 (= tp!2193607 e!4493536)))

(assert (= (and b!7541584 (is-Cons!72665 (t!387498 input!7874))) b!7542016))

(declare-fun b!7542029 () Bool)

(declare-fun e!4493540 () Bool)

(assert (=> b!7542029 (= e!4493540 tp_is_empty!50167)))

(assert (=> b!7541579 (= tp!2193598 e!4493540)))

(declare-fun b!7542031 () Bool)

(declare-fun tp!2193661 () Bool)

(assert (=> b!7542031 (= e!4493540 tp!2193661)))

(declare-fun b!7542030 () Bool)

(declare-fun tp!2193664 () Bool)

(declare-fun tp!2193663 () Bool)

(assert (=> b!7542030 (= e!4493540 (and tp!2193664 tp!2193663))))

(declare-fun b!7542032 () Bool)

(declare-fun tp!2193662 () Bool)

(declare-fun tp!2193665 () Bool)

(assert (=> b!7542032 (= e!4493540 (and tp!2193662 tp!2193665))))

(assert (= (and b!7541579 (is-ElementMatch!19906 (regOne!40325 r!24333))) b!7542029))

(assert (= (and b!7541579 (is-Concat!28751 (regOne!40325 r!24333))) b!7542030))

(assert (= (and b!7541579 (is-Star!19906 (regOne!40325 r!24333))) b!7542031))

(assert (= (and b!7541579 (is-Union!19906 (regOne!40325 r!24333))) b!7542032))

(declare-fun b!7542033 () Bool)

(declare-fun e!4493541 () Bool)

(assert (=> b!7542033 (= e!4493541 tp_is_empty!50167)))

(assert (=> b!7541579 (= tp!2193603 e!4493541)))

(declare-fun b!7542035 () Bool)

(declare-fun tp!2193666 () Bool)

(assert (=> b!7542035 (= e!4493541 tp!2193666)))

(declare-fun b!7542034 () Bool)

(declare-fun tp!2193669 () Bool)

(declare-fun tp!2193668 () Bool)

(assert (=> b!7542034 (= e!4493541 (and tp!2193669 tp!2193668))))

(declare-fun b!7542036 () Bool)

(declare-fun tp!2193667 () Bool)

(declare-fun tp!2193670 () Bool)

(assert (=> b!7542036 (= e!4493541 (and tp!2193667 tp!2193670))))

(assert (= (and b!7541579 (is-ElementMatch!19906 (regTwo!40325 r!24333))) b!7542033))

(assert (= (and b!7541579 (is-Concat!28751 (regTwo!40325 r!24333))) b!7542034))

(assert (= (and b!7541579 (is-Star!19906 (regTwo!40325 r!24333))) b!7542035))

(assert (= (and b!7541579 (is-Union!19906 (regTwo!40325 r!24333))) b!7542036))

(declare-fun b!7542037 () Bool)

(declare-fun e!4493542 () Bool)

(assert (=> b!7542037 (= e!4493542 tp_is_empty!50167)))

(assert (=> b!7541569 (= tp!2193601 e!4493542)))

(declare-fun b!7542039 () Bool)

(declare-fun tp!2193671 () Bool)

(assert (=> b!7542039 (= e!4493542 tp!2193671)))

(declare-fun b!7542038 () Bool)

(declare-fun tp!2193674 () Bool)

(declare-fun tp!2193673 () Bool)

(assert (=> b!7542038 (= e!4493542 (and tp!2193674 tp!2193673))))

(declare-fun b!7542040 () Bool)

(declare-fun tp!2193672 () Bool)

(declare-fun tp!2193675 () Bool)

(assert (=> b!7542040 (= e!4493542 (and tp!2193672 tp!2193675))))

(assert (= (and b!7541569 (is-ElementMatch!19906 (regOne!40325 baseR!101))) b!7542037))

(assert (= (and b!7541569 (is-Concat!28751 (regOne!40325 baseR!101))) b!7542038))

(assert (= (and b!7541569 (is-Star!19906 (regOne!40325 baseR!101))) b!7542039))

(assert (= (and b!7541569 (is-Union!19906 (regOne!40325 baseR!101))) b!7542040))

(declare-fun b!7542041 () Bool)

(declare-fun e!4493543 () Bool)

(assert (=> b!7542041 (= e!4493543 tp_is_empty!50167)))

(assert (=> b!7541569 (= tp!2193596 e!4493543)))

(declare-fun b!7542043 () Bool)

(declare-fun tp!2193676 () Bool)

(assert (=> b!7542043 (= e!4493543 tp!2193676)))

(declare-fun b!7542042 () Bool)

(declare-fun tp!2193679 () Bool)

(declare-fun tp!2193678 () Bool)

(assert (=> b!7542042 (= e!4493543 (and tp!2193679 tp!2193678))))

(declare-fun b!7542044 () Bool)

(declare-fun tp!2193677 () Bool)

(declare-fun tp!2193680 () Bool)

(assert (=> b!7542044 (= e!4493543 (and tp!2193677 tp!2193680))))

(assert (= (and b!7541569 (is-ElementMatch!19906 (regTwo!40325 baseR!101))) b!7542041))

(assert (= (and b!7541569 (is-Concat!28751 (regTwo!40325 baseR!101))) b!7542042))

(assert (= (and b!7541569 (is-Star!19906 (regTwo!40325 baseR!101))) b!7542043))

(assert (= (and b!7541569 (is-Union!19906 (regTwo!40325 baseR!101))) b!7542044))

(declare-fun b!7542045 () Bool)

(declare-fun e!4493544 () Bool)

(assert (=> b!7542045 (= e!4493544 tp_is_empty!50167)))

(assert (=> b!7541559 (= tp!2193606 e!4493544)))

(declare-fun b!7542047 () Bool)

(declare-fun tp!2193681 () Bool)

(assert (=> b!7542047 (= e!4493544 tp!2193681)))

(declare-fun b!7542046 () Bool)

(declare-fun tp!2193684 () Bool)

(declare-fun tp!2193683 () Bool)

(assert (=> b!7542046 (= e!4493544 (and tp!2193684 tp!2193683))))

(declare-fun b!7542048 () Bool)

(declare-fun tp!2193682 () Bool)

(declare-fun tp!2193685 () Bool)

(assert (=> b!7542048 (= e!4493544 (and tp!2193682 tp!2193685))))

(assert (= (and b!7541559 (is-ElementMatch!19906 (reg!20235 r!24333))) b!7542045))

(assert (= (and b!7541559 (is-Concat!28751 (reg!20235 r!24333))) b!7542046))

(assert (= (and b!7541559 (is-Star!19906 (reg!20235 r!24333))) b!7542047))

(assert (= (and b!7541559 (is-Union!19906 (reg!20235 r!24333))) b!7542048))

(declare-fun b!7542049 () Bool)

(declare-fun e!4493545 () Bool)

(assert (=> b!7542049 (= e!4493545 tp_is_empty!50167)))

(assert (=> b!7541575 (= tp!2193602 e!4493545)))

(declare-fun b!7542051 () Bool)

(declare-fun tp!2193686 () Bool)

(assert (=> b!7542051 (= e!4493545 tp!2193686)))

(declare-fun b!7542050 () Bool)

(declare-fun tp!2193689 () Bool)

(declare-fun tp!2193688 () Bool)

(assert (=> b!7542050 (= e!4493545 (and tp!2193689 tp!2193688))))

(declare-fun b!7542052 () Bool)

(declare-fun tp!2193687 () Bool)

(declare-fun tp!2193690 () Bool)

(assert (=> b!7542052 (= e!4493545 (and tp!2193687 tp!2193690))))

(assert (= (and b!7541575 (is-ElementMatch!19906 (regOne!40324 baseR!101))) b!7542049))

(assert (= (and b!7541575 (is-Concat!28751 (regOne!40324 baseR!101))) b!7542050))

(assert (= (and b!7541575 (is-Star!19906 (regOne!40324 baseR!101))) b!7542051))

(assert (= (and b!7541575 (is-Union!19906 (regOne!40324 baseR!101))) b!7542052))

(declare-fun b!7542053 () Bool)

(declare-fun e!4493546 () Bool)

(assert (=> b!7542053 (= e!4493546 tp_is_empty!50167)))

(assert (=> b!7541575 (= tp!2193599 e!4493546)))

(declare-fun b!7542055 () Bool)

(declare-fun tp!2193691 () Bool)

(assert (=> b!7542055 (= e!4493546 tp!2193691)))

(declare-fun b!7542054 () Bool)

(declare-fun tp!2193694 () Bool)

(declare-fun tp!2193693 () Bool)

(assert (=> b!7542054 (= e!4493546 (and tp!2193694 tp!2193693))))

(declare-fun b!7542056 () Bool)

(declare-fun tp!2193692 () Bool)

(declare-fun tp!2193695 () Bool)

(assert (=> b!7542056 (= e!4493546 (and tp!2193692 tp!2193695))))

(assert (= (and b!7541575 (is-ElementMatch!19906 (regTwo!40324 baseR!101))) b!7542053))

(assert (= (and b!7541575 (is-Concat!28751 (regTwo!40324 baseR!101))) b!7542054))

(assert (= (and b!7541575 (is-Star!19906 (regTwo!40324 baseR!101))) b!7542055))

(assert (= (and b!7541575 (is-Union!19906 (regTwo!40324 baseR!101))) b!7542056))

(declare-fun b!7542057 () Bool)

(declare-fun e!4493547 () Bool)

(assert (=> b!7542057 (= e!4493547 tp_is_empty!50167)))

(assert (=> b!7541581 (= tp!2193600 e!4493547)))

(declare-fun b!7542059 () Bool)

(declare-fun tp!2193696 () Bool)

(assert (=> b!7542059 (= e!4493547 tp!2193696)))

(declare-fun b!7542058 () Bool)

(declare-fun tp!2193699 () Bool)

(declare-fun tp!2193698 () Bool)

(assert (=> b!7542058 (= e!4493547 (and tp!2193699 tp!2193698))))

(declare-fun b!7542060 () Bool)

(declare-fun tp!2193697 () Bool)

(declare-fun tp!2193700 () Bool)

(assert (=> b!7542060 (= e!4493547 (and tp!2193697 tp!2193700))))

(assert (= (and b!7541581 (is-ElementMatch!19906 (reg!20235 baseR!101))) b!7542057))

(assert (= (and b!7541581 (is-Concat!28751 (reg!20235 baseR!101))) b!7542058))

(assert (= (and b!7541581 (is-Star!19906 (reg!20235 baseR!101))) b!7542059))

(assert (= (and b!7541581 (is-Union!19906 (reg!20235 baseR!101))) b!7542060))

(declare-fun b!7542061 () Bool)

(declare-fun e!4493548 () Bool)

(declare-fun tp!2193701 () Bool)

(assert (=> b!7542061 (= e!4493548 (and tp_is_empty!50167 tp!2193701))))

(assert (=> b!7541582 (= tp!2193597 e!4493548)))

(assert (= (and b!7541582 (is-Cons!72665 (t!387498 testedP!423))) b!7542061))

(declare-fun b!7542062 () Bool)

(declare-fun e!4493549 () Bool)

(assert (=> b!7542062 (= e!4493549 tp_is_empty!50167)))

(assert (=> b!7541561 (= tp!2193608 e!4493549)))

(declare-fun b!7542064 () Bool)

(declare-fun tp!2193702 () Bool)

(assert (=> b!7542064 (= e!4493549 tp!2193702)))

(declare-fun b!7542063 () Bool)

(declare-fun tp!2193705 () Bool)

(declare-fun tp!2193704 () Bool)

(assert (=> b!7542063 (= e!4493549 (and tp!2193705 tp!2193704))))

(declare-fun b!7542065 () Bool)

(declare-fun tp!2193703 () Bool)

(declare-fun tp!2193706 () Bool)

(assert (=> b!7542065 (= e!4493549 (and tp!2193703 tp!2193706))))

(assert (= (and b!7541561 (is-ElementMatch!19906 (regOne!40324 r!24333))) b!7542062))

(assert (= (and b!7541561 (is-Concat!28751 (regOne!40324 r!24333))) b!7542063))

(assert (= (and b!7541561 (is-Star!19906 (regOne!40324 r!24333))) b!7542064))

(assert (= (and b!7541561 (is-Union!19906 (regOne!40324 r!24333))) b!7542065))

(declare-fun b!7542066 () Bool)

(declare-fun e!4493550 () Bool)

(assert (=> b!7542066 (= e!4493550 tp_is_empty!50167)))

(assert (=> b!7541561 (= tp!2193605 e!4493550)))

(declare-fun b!7542068 () Bool)

(declare-fun tp!2193707 () Bool)

(assert (=> b!7542068 (= e!4493550 tp!2193707)))

(declare-fun b!7542067 () Bool)

(declare-fun tp!2193710 () Bool)

(declare-fun tp!2193709 () Bool)

(assert (=> b!7542067 (= e!4493550 (and tp!2193710 tp!2193709))))

(declare-fun b!7542069 () Bool)

(declare-fun tp!2193708 () Bool)

(declare-fun tp!2193711 () Bool)

(assert (=> b!7542069 (= e!4493550 (and tp!2193708 tp!2193711))))

(assert (= (and b!7541561 (is-ElementMatch!19906 (regTwo!40324 r!24333))) b!7542066))

(assert (= (and b!7541561 (is-Concat!28751 (regTwo!40324 r!24333))) b!7542067))

(assert (= (and b!7541561 (is-Star!19906 (regTwo!40324 r!24333))) b!7542068))

(assert (= (and b!7541561 (is-Union!19906 (regTwo!40324 r!24333))) b!7542069))

(declare-fun b!7542070 () Bool)

(declare-fun e!4493551 () Bool)

(declare-fun tp!2193712 () Bool)

(assert (=> b!7542070 (= e!4493551 (and tp_is_empty!50167 tp!2193712))))

(assert (=> b!7541583 (= tp!2193604 e!4493551)))

(assert (= (and b!7541583 (is-Cons!72665 (t!387498 knownP!30))) b!7542070))

(push 1)

(assert (not b!7541852))

(assert (not b!7541858))

(assert (not b!7541847))

(assert (not b!7542064))

(assert (not d!2311509))

(assert (not b!7541747))

(assert (not bm!691803))

(assert (not b!7542060))

(assert (not b!7542031))

(assert (not b!7541946))

(assert (not b!7542054))

(assert (not b!7541819))

(assert (not b!7542016))

(assert (not d!2311491))

(assert (not d!2311483))

(assert (not d!2311451))

(assert (not b!7541814))

(assert (not b!7542035))

(assert (not b!7541994))

(assert (not d!2311459))

(assert (not b!7541948))

(assert (not b!7542067))

(assert (not b!7541851))

(assert (not b!7542005))

(assert (not b!7542044))

(assert (not b!7541818))

(assert (not b!7542036))

(assert (not b!7542068))

(assert (not b!7542043))

(assert (not b!7541932))

(assert (not b!7541974))

(assert (not b!7542069))

(assert (not d!2311465))

(assert (not bm!691769))

(assert (not b!7542034))

(assert (not b!7541999))

(assert (not d!2311449))

(assert (not b!7541788))

(assert (not b!7541971))

(assert (not bm!691805))

(assert (not b!7542056))

(assert (not b!7541854))

(assert (not d!2311497))

(assert (not d!2311515))

(assert (not b!7541829))

(assert (not b!7541868))

(assert (not d!2311469))

(assert (not bm!691800))

(assert (not b!7542046))

(assert (not b!7541957))

(assert (not b!7542058))

(assert (not b!7542055))

(assert (not d!2311495))

(assert (not b!7541843))

(assert (not b!7541965))

(assert (not b!7541989))

(assert (not b!7542061))

(assert (not b!7542047))

(assert (not d!2311487))

(assert (not b!7541855))

(assert (not b!7541937))

(assert (not b!7542030))

(assert (not b!7541968))

(assert (not b!7542039))

(assert (not d!2311501))

(assert (not bm!691806))

(assert (not bm!691777))

(assert (not d!2311471))

(assert (not b!7542063))

(assert (not b!7541993))

(assert (not b!7541866))

(assert (not b!7542040))

(assert (not b!7542070))

(assert (not b!7541758))

(assert (not d!2311511))

(assert (not d!2311521))

(assert (not b!7541746))

(assert (not b!7541963))

(assert (not b!7541759))

(assert (not b!7541949))

(assert (not b!7541844))

(assert (not b!7541980))

(assert (not b!7542051))

(assert (not b!7541753))

(assert (not b!7542065))

(assert (not d!2311481))

(assert (not b!7541869))

(assert (not b!7542042))

(assert (not d!2311447))

(assert (not b!7541940))

(assert (not b!7541815))

(assert (not b!7542032))

(assert (not b!7542050))

(assert (not b!7541750))

(assert (not b!7541859))

(assert (not bm!691778))

(assert (not d!2311517))

(assert (not b!7541842))

(assert (not b!7542038))

(assert (not b!7542052))

(assert (not d!2311473))

(assert (not b!7541967))

(assert (not b!7542059))

(assert tp_is_empty!50167)

(assert (not bm!691801))

(assert (not b!7541945))

(assert (not b!7541895))

(assert (not d!2311485))

(assert (not b!7541956))

(assert (not b!7542048))

(assert (not b!7541944))

(assert (not b!7541941))

(assert (not b!7541958))

(assert (not b!7541979))

(assert (not b!7541992))

(assert (not d!2311505))

(assert (not b!7541850))

(assert (not d!2311443))

(assert (not b!7541846))

(assert (not d!2311435))

(assert (not b!7542007))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

