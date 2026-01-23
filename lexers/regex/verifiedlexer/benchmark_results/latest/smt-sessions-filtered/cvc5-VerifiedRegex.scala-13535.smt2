; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728658 () Bool)

(assert start!728658)

(declare-fun b!7531532 () Bool)

(declare-fun res!3018498 () Bool)

(declare-fun e!4488585 () Bool)

(assert (=> b!7531532 (=> res!3018498 e!4488585)))

(declare-datatypes ((C!40054 0))(
  ( (C!40055 (val!30467 Int)) )
))
(declare-datatypes ((Regex!19864 0))(
  ( (ElementMatch!19864 (c!1390963 C!40054)) (Concat!28709 (regOne!40240 Regex!19864) (regTwo!40240 Regex!19864)) (EmptyExpr!19864) (Star!19864 (reg!20193 Regex!19864)) (EmptyLang!19864) (Union!19864 (regOne!40241 Regex!19864) (regTwo!40241 Regex!19864)) )
))
(declare-fun r!24333 () Regex!19864)

(declare-fun lostCause!1656 (Regex!19864) Bool)

(assert (=> b!7531532 (= res!3018498 (lostCause!1656 r!24333))))

(declare-fun b!7531533 () Bool)

(declare-fun e!4488584 () Bool)

(declare-fun tp!2189526 () Bool)

(declare-fun tp!2189520 () Bool)

(assert (=> b!7531533 (= e!4488584 (and tp!2189526 tp!2189520))))

(declare-fun b!7531534 () Bool)

(declare-fun res!3018496 () Bool)

(declare-fun e!4488583 () Bool)

(assert (=> b!7531534 (=> (not res!3018496) (not e!4488583))))

(declare-fun validRegex!10292 (Regex!19864) Bool)

(assert (=> b!7531534 (= res!3018496 (validRegex!10292 r!24333))))

(declare-fun b!7531535 () Bool)

(declare-fun tp!2189517 () Bool)

(assert (=> b!7531535 (= e!4488584 tp!2189517)))

(declare-fun lt!2640835 () Int)

(declare-fun lt!2640834 () Int)

(declare-fun lt!2640832 () Int)

(declare-fun b!7531536 () Bool)

(declare-fun lt!2640833 () Int)

(assert (=> b!7531536 (= e!4488585 (or (< lt!2640835 lt!2640834) (>= lt!2640832 lt!2640833)))))

(assert (=> b!7531536 (>= lt!2640835 lt!2640833)))

(declare-datatypes ((List!72747 0))(
  ( (Nil!72623) (Cons!72623 (h!79071 C!40054) (t!387454 List!72747)) )
))
(declare-fun lt!2640838 () List!72747)

(declare-fun input!7874 () List!72747)

(declare-fun testedP!423 () List!72747)

(declare-fun size!42360 (List!72747) Int)

(declare-datatypes ((tuple2!68830 0))(
  ( (tuple2!68831 (_1!37718 List!72747) (_2!37718 List!72747)) )
))
(declare-fun findLongestMatchInner!2123 (Regex!19864 List!72747 Int List!72747 List!72747 Int) tuple2!68830)

(assert (=> b!7531536 (= lt!2640835 (size!42360 (_1!37718 (findLongestMatchInner!2123 r!24333 testedP!423 lt!2640833 lt!2640838 input!7874 lt!2640832))))))

(assert (=> b!7531536 (= lt!2640832 (size!42360 input!7874))))

(declare-fun getSuffix!3550 (List!72747 List!72747) List!72747)

(assert (=> b!7531536 (= lt!2640838 (getSuffix!3550 input!7874 testedP!423))))

(declare-fun baseR!101 () Regex!19864)

(declare-datatypes ((Unit!166654 0))(
  ( (Unit!166655) )
))
(declare-fun lt!2640837 () Unit!166654)

(declare-fun lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!9 (Regex!19864 Regex!19864 List!72747 List!72747) Unit!166654)

(assert (=> b!7531536 (= lt!2640837 (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!9 baseR!101 r!24333 input!7874 testedP!423))))

(declare-fun knownP!30 () List!72747)

(assert (=> b!7531536 (= testedP!423 knownP!30)))

(declare-fun lt!2640836 () Unit!166654)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1524 (List!72747 List!72747 List!72747) Unit!166654)

(assert (=> b!7531536 (= lt!2640836 (lemmaIsPrefixSameLengthThenSameList!1524 testedP!423 knownP!30 input!7874))))

(declare-fun b!7531537 () Bool)

(declare-fun e!4488579 () Bool)

(declare-fun tp_is_empty!50083 () Bool)

(declare-fun tp!2189521 () Bool)

(assert (=> b!7531537 (= e!4488579 (and tp_is_empty!50083 tp!2189521))))

(declare-fun b!7531538 () Bool)

(declare-fun res!3018491 () Bool)

(assert (=> b!7531538 (=> (not res!3018491) (not e!4488583))))

(declare-fun isPrefix!6070 (List!72747 List!72747) Bool)

(assert (=> b!7531538 (= res!3018491 (isPrefix!6070 testedP!423 input!7874))))

(declare-fun b!7531539 () Bool)

(declare-fun e!4488582 () Bool)

(declare-fun tp!2189524 () Bool)

(declare-fun tp!2189527 () Bool)

(assert (=> b!7531539 (= e!4488582 (and tp!2189524 tp!2189527))))

(declare-fun b!7531540 () Bool)

(declare-fun res!3018489 () Bool)

(assert (=> b!7531540 (=> (not res!3018489) (not e!4488583))))

(assert (=> b!7531540 (= res!3018489 (isPrefix!6070 knownP!30 input!7874))))

(declare-fun b!7531541 () Bool)

(declare-fun res!3018493 () Bool)

(assert (=> b!7531541 (=> res!3018493 e!4488585)))

(assert (=> b!7531541 (= res!3018493 (not (= lt!2640833 lt!2640834)))))

(declare-fun b!7531542 () Bool)

(declare-fun tp!2189523 () Bool)

(declare-fun tp!2189525 () Bool)

(assert (=> b!7531542 (= e!4488584 (and tp!2189523 tp!2189525))))

(declare-fun b!7531543 () Bool)

(declare-fun res!3018492 () Bool)

(assert (=> b!7531543 (=> res!3018492 e!4488585)))

(declare-fun derivative!396 (Regex!19864 List!72747) Regex!19864)

(assert (=> b!7531543 (= res!3018492 (not (= (derivative!396 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7531544 () Bool)

(declare-fun res!3018495 () Bool)

(declare-fun e!4488581 () Bool)

(assert (=> b!7531544 (=> (not res!3018495) (not e!4488581))))

(declare-fun matchR!9466 (Regex!19864 List!72747) Bool)

(assert (=> b!7531544 (= res!3018495 (matchR!9466 baseR!101 knownP!30))))

(declare-fun b!7531545 () Bool)

(declare-fun e!4488578 () Bool)

(declare-fun tp!2189518 () Bool)

(assert (=> b!7531545 (= e!4488578 (and tp_is_empty!50083 tp!2189518))))

(declare-fun b!7531546 () Bool)

(assert (=> b!7531546 (= e!4488582 tp_is_empty!50083)))

(declare-fun b!7531547 () Bool)

(assert (=> b!7531547 (= e!4488581 (not e!4488585))))

(declare-fun res!3018490 () Bool)

(assert (=> b!7531547 (=> res!3018490 e!4488585)))

(assert (=> b!7531547 (= res!3018490 (not (matchR!9466 r!24333 (getSuffix!3550 knownP!30 testedP!423))))))

(assert (=> b!7531547 (isPrefix!6070 testedP!423 knownP!30)))

(declare-fun lt!2640831 () Unit!166654)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!820 (List!72747 List!72747 List!72747) Unit!166654)

(assert (=> b!7531547 (= lt!2640831 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!820 knownP!30 testedP!423 input!7874))))

(declare-fun b!7531548 () Bool)

(declare-fun e!4488580 () Bool)

(declare-fun tp!2189522 () Bool)

(assert (=> b!7531548 (= e!4488580 (and tp_is_empty!50083 tp!2189522))))

(declare-fun res!3018494 () Bool)

(assert (=> start!728658 (=> (not res!3018494) (not e!4488583))))

(assert (=> start!728658 (= res!3018494 (validRegex!10292 baseR!101))))

(assert (=> start!728658 e!4488583))

(assert (=> start!728658 e!4488582))

(assert (=> start!728658 e!4488580))

(assert (=> start!728658 e!4488578))

(assert (=> start!728658 e!4488579))

(assert (=> start!728658 e!4488584))

(declare-fun b!7531549 () Bool)

(assert (=> b!7531549 (= e!4488584 tp_is_empty!50083)))

(declare-fun b!7531550 () Bool)

(declare-fun tp!2189519 () Bool)

(assert (=> b!7531550 (= e!4488582 tp!2189519)))

(declare-fun b!7531551 () Bool)

(declare-fun tp!2189516 () Bool)

(declare-fun tp!2189528 () Bool)

(assert (=> b!7531551 (= e!4488582 (and tp!2189516 tp!2189528))))

(declare-fun b!7531552 () Bool)

(assert (=> b!7531552 (= e!4488583 e!4488581)))

(declare-fun res!3018497 () Bool)

(assert (=> b!7531552 (=> (not res!3018497) (not e!4488581))))

(assert (=> b!7531552 (= res!3018497 (>= lt!2640834 lt!2640833))))

(assert (=> b!7531552 (= lt!2640833 (size!42360 testedP!423))))

(assert (=> b!7531552 (= lt!2640834 (size!42360 knownP!30))))

(assert (= (and start!728658 res!3018494) b!7531534))

(assert (= (and b!7531534 res!3018496) b!7531538))

(assert (= (and b!7531538 res!3018491) b!7531540))

(assert (= (and b!7531540 res!3018489) b!7531552))

(assert (= (and b!7531552 res!3018497) b!7531544))

(assert (= (and b!7531544 res!3018495) b!7531547))

(assert (= (and b!7531547 (not res!3018490)) b!7531543))

(assert (= (and b!7531543 (not res!3018492)) b!7531532))

(assert (= (and b!7531532 (not res!3018498)) b!7531541))

(assert (= (and b!7531541 (not res!3018493)) b!7531536))

(assert (= (and start!728658 (is-ElementMatch!19864 baseR!101)) b!7531546))

(assert (= (and start!728658 (is-Concat!28709 baseR!101)) b!7531551))

(assert (= (and start!728658 (is-Star!19864 baseR!101)) b!7531550))

(assert (= (and start!728658 (is-Union!19864 baseR!101)) b!7531539))

(assert (= (and start!728658 (is-Cons!72623 input!7874)) b!7531548))

(assert (= (and start!728658 (is-Cons!72623 knownP!30)) b!7531545))

(assert (= (and start!728658 (is-Cons!72623 testedP!423)) b!7531537))

(assert (= (and start!728658 (is-ElementMatch!19864 r!24333)) b!7531549))

(assert (= (and start!728658 (is-Concat!28709 r!24333)) b!7531542))

(assert (= (and start!728658 (is-Star!19864 r!24333)) b!7531535))

(assert (= (and start!728658 (is-Union!19864 r!24333)) b!7531533))

(declare-fun m!8104502 () Bool)

(assert (=> b!7531536 m!8104502))

(declare-fun m!8104504 () Bool)

(assert (=> b!7531536 m!8104504))

(declare-fun m!8104506 () Bool)

(assert (=> b!7531536 m!8104506))

(declare-fun m!8104508 () Bool)

(assert (=> b!7531536 m!8104508))

(declare-fun m!8104510 () Bool)

(assert (=> b!7531536 m!8104510))

(declare-fun m!8104512 () Bool)

(assert (=> b!7531536 m!8104512))

(declare-fun m!8104514 () Bool)

(assert (=> b!7531534 m!8104514))

(declare-fun m!8104516 () Bool)

(assert (=> b!7531552 m!8104516))

(declare-fun m!8104518 () Bool)

(assert (=> b!7531552 m!8104518))

(declare-fun m!8104520 () Bool)

(assert (=> b!7531547 m!8104520))

(assert (=> b!7531547 m!8104520))

(declare-fun m!8104522 () Bool)

(assert (=> b!7531547 m!8104522))

(declare-fun m!8104524 () Bool)

(assert (=> b!7531547 m!8104524))

(declare-fun m!8104526 () Bool)

(assert (=> b!7531547 m!8104526))

(declare-fun m!8104528 () Bool)

(assert (=> b!7531544 m!8104528))

(declare-fun m!8104530 () Bool)

(assert (=> start!728658 m!8104530))

(declare-fun m!8104532 () Bool)

(assert (=> b!7531540 m!8104532))

(declare-fun m!8104534 () Bool)

(assert (=> b!7531543 m!8104534))

(declare-fun m!8104536 () Bool)

(assert (=> b!7531532 m!8104536))

(declare-fun m!8104538 () Bool)

(assert (=> b!7531538 m!8104538))

(push 1)

(assert (not b!7531545))

(assert (not b!7531540))

(assert (not b!7531532))

(assert tp_is_empty!50083)

(assert (not b!7531550))

(assert (not b!7531535))

(assert (not b!7531552))

(assert (not b!7531537))

(assert (not b!7531534))

(assert (not b!7531539))

(assert (not b!7531542))

(assert (not b!7531544))

(assert (not b!7531533))

(assert (not b!7531538))

(assert (not b!7531547))

(assert (not b!7531543))

(assert (not b!7531548))

(assert (not start!728658))

(assert (not b!7531551))

(assert (not b!7531536))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7531667 () Bool)

(declare-fun e!4488649 () Bool)

(declare-fun e!4488651 () Bool)

(assert (=> b!7531667 (= e!4488649 e!4488651)))

(declare-fun c!1390978 () Bool)

(assert (=> b!7531667 (= c!1390978 (is-Star!19864 baseR!101))))

(declare-fun c!1390979 () Bool)

(declare-fun call!690998 () Bool)

(declare-fun bm!690991 () Bool)

(assert (=> bm!690991 (= call!690998 (validRegex!10292 (ite c!1390978 (reg!20193 baseR!101) (ite c!1390979 (regTwo!40241 baseR!101) (regTwo!40240 baseR!101)))))))

(declare-fun b!7531668 () Bool)

(declare-fun e!4488648 () Bool)

(declare-fun call!690997 () Bool)

(assert (=> b!7531668 (= e!4488648 call!690997)))

(declare-fun b!7531669 () Bool)

(declare-fun e!4488650 () Bool)

(assert (=> b!7531669 (= e!4488651 e!4488650)))

(declare-fun res!3018558 () Bool)

(declare-fun nullable!8658 (Regex!19864) Bool)

(assert (=> b!7531669 (= res!3018558 (not (nullable!8658 (reg!20193 baseR!101))))))

(assert (=> b!7531669 (=> (not res!3018558) (not e!4488650))))

(declare-fun b!7531670 () Bool)

(declare-fun res!3018556 () Bool)

(declare-fun e!4488653 () Bool)

(assert (=> b!7531670 (=> (not res!3018556) (not e!4488653))))

(declare-fun call!690996 () Bool)

(assert (=> b!7531670 (= res!3018556 call!690996)))

(declare-fun e!4488652 () Bool)

(assert (=> b!7531670 (= e!4488652 e!4488653)))

(declare-fun bm!690992 () Bool)

(assert (=> bm!690992 (= call!690997 call!690998)))

(declare-fun b!7531671 () Bool)

(assert (=> b!7531671 (= e!4488653 call!690997)))

(declare-fun d!2309856 () Bool)

(declare-fun res!3018557 () Bool)

(assert (=> d!2309856 (=> res!3018557 e!4488649)))

(assert (=> d!2309856 (= res!3018557 (is-ElementMatch!19864 baseR!101))))

(assert (=> d!2309856 (= (validRegex!10292 baseR!101) e!4488649)))

(declare-fun b!7531672 () Bool)

(assert (=> b!7531672 (= e!4488650 call!690998)))

(declare-fun bm!690993 () Bool)

(assert (=> bm!690993 (= call!690996 (validRegex!10292 (ite c!1390979 (regOne!40241 baseR!101) (regOne!40240 baseR!101))))))

(declare-fun b!7531673 () Bool)

(declare-fun e!4488654 () Bool)

(assert (=> b!7531673 (= e!4488654 e!4488648)))

(declare-fun res!3018554 () Bool)

(assert (=> b!7531673 (=> (not res!3018554) (not e!4488648))))

(assert (=> b!7531673 (= res!3018554 call!690996)))

(declare-fun b!7531674 () Bool)

(declare-fun res!3018555 () Bool)

(assert (=> b!7531674 (=> res!3018555 e!4488654)))

(assert (=> b!7531674 (= res!3018555 (not (is-Concat!28709 baseR!101)))))

(assert (=> b!7531674 (= e!4488652 e!4488654)))

(declare-fun b!7531675 () Bool)

(assert (=> b!7531675 (= e!4488651 e!4488652)))

(assert (=> b!7531675 (= c!1390979 (is-Union!19864 baseR!101))))

(assert (= (and d!2309856 (not res!3018557)) b!7531667))

(assert (= (and b!7531667 c!1390978) b!7531669))

(assert (= (and b!7531667 (not c!1390978)) b!7531675))

(assert (= (and b!7531669 res!3018558) b!7531672))

(assert (= (and b!7531675 c!1390979) b!7531670))

(assert (= (and b!7531675 (not c!1390979)) b!7531674))

(assert (= (and b!7531670 res!3018556) b!7531671))

(assert (= (and b!7531674 (not res!3018555)) b!7531673))

(assert (= (and b!7531673 res!3018554) b!7531668))

(assert (= (or b!7531670 b!7531673) bm!690993))

(assert (= (or b!7531671 b!7531668) bm!690992))

(assert (= (or b!7531672 bm!690992) bm!690991))

(declare-fun m!8104592 () Bool)

(assert (=> bm!690991 m!8104592))

(declare-fun m!8104594 () Bool)

(assert (=> b!7531669 m!8104594))

(declare-fun m!8104596 () Bool)

(assert (=> bm!690993 m!8104596))

(assert (=> start!728658 d!2309856))

(declare-fun b!7531712 () Bool)

(declare-fun e!4488675 () Bool)

(declare-fun e!4488677 () Bool)

(assert (=> b!7531712 (= e!4488675 e!4488677)))

(declare-fun res!3018585 () Bool)

(assert (=> b!7531712 (=> (not res!3018585) (not e!4488677))))

(assert (=> b!7531712 (= res!3018585 (not (is-Nil!72623 input!7874)))))

(declare-fun b!7531715 () Bool)

(declare-fun e!4488676 () Bool)

(assert (=> b!7531715 (= e!4488676 (>= (size!42360 input!7874) (size!42360 knownP!30)))))

(declare-fun b!7531713 () Bool)

(declare-fun res!3018584 () Bool)

(assert (=> b!7531713 (=> (not res!3018584) (not e!4488677))))

(declare-fun head!15460 (List!72747) C!40054)

(assert (=> b!7531713 (= res!3018584 (= (head!15460 knownP!30) (head!15460 input!7874)))))

(declare-fun b!7531714 () Bool)

(declare-fun tail!15020 (List!72747) List!72747)

(assert (=> b!7531714 (= e!4488677 (isPrefix!6070 (tail!15020 knownP!30) (tail!15020 input!7874)))))

(declare-fun d!2309862 () Bool)

(assert (=> d!2309862 e!4488676))

(declare-fun res!3018583 () Bool)

(assert (=> d!2309862 (=> res!3018583 e!4488676)))

(declare-fun lt!2640870 () Bool)

(assert (=> d!2309862 (= res!3018583 (not lt!2640870))))

(assert (=> d!2309862 (= lt!2640870 e!4488675)))

(declare-fun res!3018586 () Bool)

(assert (=> d!2309862 (=> res!3018586 e!4488675)))

(assert (=> d!2309862 (= res!3018586 (is-Nil!72623 knownP!30))))

(assert (=> d!2309862 (= (isPrefix!6070 knownP!30 input!7874) lt!2640870)))

(assert (= (and d!2309862 (not res!3018586)) b!7531712))

(assert (= (and b!7531712 res!3018585) b!7531713))

(assert (= (and b!7531713 res!3018584) b!7531714))

(assert (= (and d!2309862 (not res!3018583)) b!7531715))

(assert (=> b!7531715 m!8104506))

(assert (=> b!7531715 m!8104518))

(declare-fun m!8104598 () Bool)

(assert (=> b!7531713 m!8104598))

(declare-fun m!8104600 () Bool)

(assert (=> b!7531713 m!8104600))

(declare-fun m!8104602 () Bool)

(assert (=> b!7531714 m!8104602))

(declare-fun m!8104604 () Bool)

(assert (=> b!7531714 m!8104604))

(assert (=> b!7531714 m!8104602))

(assert (=> b!7531714 m!8104604))

(declare-fun m!8104606 () Bool)

(assert (=> b!7531714 m!8104606))

(assert (=> b!7531540 d!2309862))

(declare-fun b!7531716 () Bool)

(declare-fun e!4488679 () Bool)

(declare-fun e!4488681 () Bool)

(assert (=> b!7531716 (= e!4488679 e!4488681)))

(declare-fun c!1390986 () Bool)

(assert (=> b!7531716 (= c!1390986 (is-Star!19864 r!24333))))

(declare-fun bm!690996 () Bool)

(declare-fun call!691003 () Bool)

(declare-fun c!1390987 () Bool)

(assert (=> bm!690996 (= call!691003 (validRegex!10292 (ite c!1390986 (reg!20193 r!24333) (ite c!1390987 (regTwo!40241 r!24333) (regTwo!40240 r!24333)))))))

(declare-fun b!7531717 () Bool)

(declare-fun e!4488678 () Bool)

(declare-fun call!691002 () Bool)

(assert (=> b!7531717 (= e!4488678 call!691002)))

(declare-fun b!7531718 () Bool)

(declare-fun e!4488680 () Bool)

(assert (=> b!7531718 (= e!4488681 e!4488680)))

(declare-fun res!3018591 () Bool)

(assert (=> b!7531718 (= res!3018591 (not (nullable!8658 (reg!20193 r!24333))))))

(assert (=> b!7531718 (=> (not res!3018591) (not e!4488680))))

(declare-fun b!7531719 () Bool)

(declare-fun res!3018589 () Bool)

(declare-fun e!4488683 () Bool)

(assert (=> b!7531719 (=> (not res!3018589) (not e!4488683))))

(declare-fun call!691001 () Bool)

(assert (=> b!7531719 (= res!3018589 call!691001)))

(declare-fun e!4488682 () Bool)

(assert (=> b!7531719 (= e!4488682 e!4488683)))

(declare-fun bm!690997 () Bool)

(assert (=> bm!690997 (= call!691002 call!691003)))

(declare-fun b!7531720 () Bool)

(assert (=> b!7531720 (= e!4488683 call!691002)))

(declare-fun d!2309864 () Bool)

(declare-fun res!3018590 () Bool)

(assert (=> d!2309864 (=> res!3018590 e!4488679)))

(assert (=> d!2309864 (= res!3018590 (is-ElementMatch!19864 r!24333))))

(assert (=> d!2309864 (= (validRegex!10292 r!24333) e!4488679)))

(declare-fun b!7531721 () Bool)

(assert (=> b!7531721 (= e!4488680 call!691003)))

(declare-fun bm!690998 () Bool)

(assert (=> bm!690998 (= call!691001 (validRegex!10292 (ite c!1390987 (regOne!40241 r!24333) (regOne!40240 r!24333))))))

(declare-fun b!7531722 () Bool)

(declare-fun e!4488684 () Bool)

(assert (=> b!7531722 (= e!4488684 e!4488678)))

(declare-fun res!3018587 () Bool)

(assert (=> b!7531722 (=> (not res!3018587) (not e!4488678))))

(assert (=> b!7531722 (= res!3018587 call!691001)))

(declare-fun b!7531723 () Bool)

(declare-fun res!3018588 () Bool)

(assert (=> b!7531723 (=> res!3018588 e!4488684)))

(assert (=> b!7531723 (= res!3018588 (not (is-Concat!28709 r!24333)))))

(assert (=> b!7531723 (= e!4488682 e!4488684)))

(declare-fun b!7531724 () Bool)

(assert (=> b!7531724 (= e!4488681 e!4488682)))

(assert (=> b!7531724 (= c!1390987 (is-Union!19864 r!24333))))

(assert (= (and d!2309864 (not res!3018590)) b!7531716))

(assert (= (and b!7531716 c!1390986) b!7531718))

(assert (= (and b!7531716 (not c!1390986)) b!7531724))

(assert (= (and b!7531718 res!3018591) b!7531721))

(assert (= (and b!7531724 c!1390987) b!7531719))

(assert (= (and b!7531724 (not c!1390987)) b!7531723))

(assert (= (and b!7531719 res!3018589) b!7531720))

(assert (= (and b!7531723 (not res!3018588)) b!7531722))

(assert (= (and b!7531722 res!3018587) b!7531717))

(assert (= (or b!7531719 b!7531722) bm!690998))

(assert (= (or b!7531720 b!7531717) bm!690997))

(assert (= (or b!7531721 bm!690997) bm!690996))

(declare-fun m!8104608 () Bool)

(assert (=> bm!690996 m!8104608))

(declare-fun m!8104610 () Bool)

(assert (=> b!7531718 m!8104610))

(declare-fun m!8104612 () Bool)

(assert (=> bm!690998 m!8104612))

(assert (=> b!7531534 d!2309864))

(declare-fun b!7531789 () Bool)

(declare-fun e!4488722 () Bool)

(declare-fun derivativeStep!5664 (Regex!19864 C!40054) Regex!19864)

(assert (=> b!7531789 (= e!4488722 (matchR!9466 (derivativeStep!5664 baseR!101 (head!15460 knownP!30)) (tail!15020 knownP!30)))))

(declare-fun b!7531791 () Bool)

(declare-fun e!4488719 () Bool)

(declare-fun e!4488720 () Bool)

(assert (=> b!7531791 (= e!4488719 e!4488720)))

(declare-fun res!3018630 () Bool)

(assert (=> b!7531791 (=> res!3018630 e!4488720)))

(declare-fun call!691008 () Bool)

(assert (=> b!7531791 (= res!3018630 call!691008)))

(declare-fun b!7531792 () Bool)

(declare-fun e!4488718 () Bool)

(declare-fun lt!2640879 () Bool)

(assert (=> b!7531792 (= e!4488718 (not lt!2640879))))

(declare-fun b!7531793 () Bool)

(declare-fun res!3018627 () Bool)

(declare-fun e!4488717 () Bool)

(assert (=> b!7531793 (=> res!3018627 e!4488717)))

(declare-fun e!4488723 () Bool)

(assert (=> b!7531793 (= res!3018627 e!4488723)))

(declare-fun res!3018624 () Bool)

(assert (=> b!7531793 (=> (not res!3018624) (not e!4488723))))

(assert (=> b!7531793 (= res!3018624 lt!2640879)))

(declare-fun b!7531794 () Bool)

(assert (=> b!7531794 (= e!4488720 (not (= (head!15460 knownP!30) (c!1390963 baseR!101))))))

(declare-fun b!7531795 () Bool)

(assert (=> b!7531795 (= e!4488722 (nullable!8658 baseR!101))))

(declare-fun bm!691003 () Bool)

(declare-fun isEmpty!41350 (List!72747) Bool)

(assert (=> bm!691003 (= call!691008 (isEmpty!41350 knownP!30))))

(declare-fun b!7531796 () Bool)

(declare-fun e!4488721 () Bool)

(assert (=> b!7531796 (= e!4488721 (= lt!2640879 call!691008))))

(declare-fun b!7531797 () Bool)

(assert (=> b!7531797 (= e!4488721 e!4488718)))

(declare-fun c!1391005 () Bool)

(assert (=> b!7531797 (= c!1391005 (is-EmptyLang!19864 baseR!101))))

(declare-fun b!7531798 () Bool)

(declare-fun res!3018626 () Bool)

(assert (=> b!7531798 (=> (not res!3018626) (not e!4488723))))

(assert (=> b!7531798 (= res!3018626 (not call!691008))))

(declare-fun b!7531799 () Bool)

(assert (=> b!7531799 (= e!4488723 (= (head!15460 knownP!30) (c!1390963 baseR!101)))))

(declare-fun b!7531800 () Bool)

(declare-fun res!3018628 () Bool)

(assert (=> b!7531800 (=> res!3018628 e!4488717)))

(assert (=> b!7531800 (= res!3018628 (not (is-ElementMatch!19864 baseR!101)))))

(assert (=> b!7531800 (= e!4488718 e!4488717)))

(declare-fun b!7531801 () Bool)

(declare-fun res!3018629 () Bool)

(assert (=> b!7531801 (=> (not res!3018629) (not e!4488723))))

(assert (=> b!7531801 (= res!3018629 (isEmpty!41350 (tail!15020 knownP!30)))))

(declare-fun b!7531802 () Bool)

(assert (=> b!7531802 (= e!4488717 e!4488719)))

(declare-fun res!3018625 () Bool)

(assert (=> b!7531802 (=> (not res!3018625) (not e!4488719))))

(assert (=> b!7531802 (= res!3018625 (not lt!2640879))))

(declare-fun d!2309866 () Bool)

(assert (=> d!2309866 e!4488721))

(declare-fun c!1391006 () Bool)

(assert (=> d!2309866 (= c!1391006 (is-EmptyExpr!19864 baseR!101))))

(assert (=> d!2309866 (= lt!2640879 e!4488722)))

(declare-fun c!1391004 () Bool)

(assert (=> d!2309866 (= c!1391004 (isEmpty!41350 knownP!30))))

(assert (=> d!2309866 (validRegex!10292 baseR!101)))

(assert (=> d!2309866 (= (matchR!9466 baseR!101 knownP!30) lt!2640879)))

(declare-fun b!7531790 () Bool)

(declare-fun res!3018631 () Bool)

(assert (=> b!7531790 (=> res!3018631 e!4488720)))

(assert (=> b!7531790 (= res!3018631 (not (isEmpty!41350 (tail!15020 knownP!30))))))

(assert (= (and d!2309866 c!1391004) b!7531795))

(assert (= (and d!2309866 (not c!1391004)) b!7531789))

(assert (= (and d!2309866 c!1391006) b!7531796))

(assert (= (and d!2309866 (not c!1391006)) b!7531797))

(assert (= (and b!7531797 c!1391005) b!7531792))

(assert (= (and b!7531797 (not c!1391005)) b!7531800))

(assert (= (and b!7531800 (not res!3018628)) b!7531793))

(assert (= (and b!7531793 res!3018624) b!7531798))

(assert (= (and b!7531798 res!3018626) b!7531801))

(assert (= (and b!7531801 res!3018629) b!7531799))

(assert (= (and b!7531793 (not res!3018627)) b!7531802))

(assert (= (and b!7531802 res!3018625) b!7531791))

(assert (= (and b!7531791 (not res!3018630)) b!7531790))

(assert (= (and b!7531790 (not res!3018631)) b!7531794))

(assert (= (or b!7531796 b!7531791 b!7531798) bm!691003))

(assert (=> b!7531790 m!8104602))

(assert (=> b!7531790 m!8104602))

(declare-fun m!8104646 () Bool)

(assert (=> b!7531790 m!8104646))

(assert (=> b!7531794 m!8104598))

(declare-fun m!8104648 () Bool)

(assert (=> d!2309866 m!8104648))

(assert (=> d!2309866 m!8104530))

(assert (=> bm!691003 m!8104648))

(assert (=> b!7531801 m!8104602))

(assert (=> b!7531801 m!8104602))

(assert (=> b!7531801 m!8104646))

(declare-fun m!8104650 () Bool)

(assert (=> b!7531795 m!8104650))

(assert (=> b!7531799 m!8104598))

(assert (=> b!7531789 m!8104598))

(assert (=> b!7531789 m!8104598))

(declare-fun m!8104652 () Bool)

(assert (=> b!7531789 m!8104652))

(assert (=> b!7531789 m!8104602))

(assert (=> b!7531789 m!8104652))

(assert (=> b!7531789 m!8104602))

(declare-fun m!8104654 () Bool)

(assert (=> b!7531789 m!8104654))

(assert (=> b!7531544 d!2309866))

(declare-fun d!2309876 () Bool)

(declare-fun lt!2640885 () Regex!19864)

(assert (=> d!2309876 (validRegex!10292 lt!2640885)))

(declare-fun e!4488729 () Regex!19864)

(assert (=> d!2309876 (= lt!2640885 e!4488729)))

(declare-fun c!1391012 () Bool)

(assert (=> d!2309876 (= c!1391012 (is-Cons!72623 testedP!423))))

(assert (=> d!2309876 (validRegex!10292 baseR!101)))

(assert (=> d!2309876 (= (derivative!396 baseR!101 testedP!423) lt!2640885)))

(declare-fun b!7531813 () Bool)

(assert (=> b!7531813 (= e!4488729 (derivative!396 (derivativeStep!5664 baseR!101 (h!79071 testedP!423)) (t!387454 testedP!423)))))

(declare-fun b!7531814 () Bool)

(assert (=> b!7531814 (= e!4488729 baseR!101)))

(assert (= (and d!2309876 c!1391012) b!7531813))

(assert (= (and d!2309876 (not c!1391012)) b!7531814))

(declare-fun m!8104660 () Bool)

(assert (=> d!2309876 m!8104660))

(assert (=> d!2309876 m!8104530))

(declare-fun m!8104662 () Bool)

(assert (=> b!7531813 m!8104662))

(assert (=> b!7531813 m!8104662))

(declare-fun m!8104664 () Bool)

(assert (=> b!7531813 m!8104664))

(assert (=> b!7531543 d!2309876))

(declare-fun b!7531815 () Bool)

(declare-fun e!4488730 () Bool)

(declare-fun e!4488732 () Bool)

(assert (=> b!7531815 (= e!4488730 e!4488732)))

(declare-fun res!3018634 () Bool)

(assert (=> b!7531815 (=> (not res!3018634) (not e!4488732))))

(assert (=> b!7531815 (= res!3018634 (not (is-Nil!72623 input!7874)))))

(declare-fun b!7531818 () Bool)

(declare-fun e!4488731 () Bool)

(assert (=> b!7531818 (= e!4488731 (>= (size!42360 input!7874) (size!42360 testedP!423)))))

(declare-fun b!7531816 () Bool)

(declare-fun res!3018633 () Bool)

(assert (=> b!7531816 (=> (not res!3018633) (not e!4488732))))

(assert (=> b!7531816 (= res!3018633 (= (head!15460 testedP!423) (head!15460 input!7874)))))

(declare-fun b!7531817 () Bool)

(assert (=> b!7531817 (= e!4488732 (isPrefix!6070 (tail!15020 testedP!423) (tail!15020 input!7874)))))

(declare-fun d!2309880 () Bool)

(assert (=> d!2309880 e!4488731))

(declare-fun res!3018632 () Bool)

(assert (=> d!2309880 (=> res!3018632 e!4488731)))

(declare-fun lt!2640886 () Bool)

(assert (=> d!2309880 (= res!3018632 (not lt!2640886))))

(assert (=> d!2309880 (= lt!2640886 e!4488730)))

(declare-fun res!3018635 () Bool)

(assert (=> d!2309880 (=> res!3018635 e!4488730)))

(assert (=> d!2309880 (= res!3018635 (is-Nil!72623 testedP!423))))

(assert (=> d!2309880 (= (isPrefix!6070 testedP!423 input!7874) lt!2640886)))

(assert (= (and d!2309880 (not res!3018635)) b!7531815))

(assert (= (and b!7531815 res!3018634) b!7531816))

(assert (= (and b!7531816 res!3018633) b!7531817))

(assert (= (and d!2309880 (not res!3018632)) b!7531818))

(assert (=> b!7531818 m!8104506))

(assert (=> b!7531818 m!8104516))

(declare-fun m!8104666 () Bool)

(assert (=> b!7531816 m!8104666))

(assert (=> b!7531816 m!8104600))

(declare-fun m!8104668 () Bool)

(assert (=> b!7531817 m!8104668))

(assert (=> b!7531817 m!8104604))

(assert (=> b!7531817 m!8104668))

(assert (=> b!7531817 m!8104604))

(declare-fun m!8104670 () Bool)

(assert (=> b!7531817 m!8104670))

(assert (=> b!7531538 d!2309880))

(declare-fun d!2309882 () Bool)

(declare-fun lostCauseFct!415 (Regex!19864) Bool)

(assert (=> d!2309882 (= (lostCause!1656 r!24333) (lostCauseFct!415 r!24333))))

(declare-fun bs!1939838 () Bool)

(assert (= bs!1939838 d!2309882))

(declare-fun m!8104672 () Bool)

(assert (=> bs!1939838 m!8104672))

(assert (=> b!7531532 d!2309882))

(declare-fun e!4488738 () Bool)

(declare-fun b!7531819 () Bool)

(assert (=> b!7531819 (= e!4488738 (matchR!9466 (derivativeStep!5664 r!24333 (head!15460 (getSuffix!3550 knownP!30 testedP!423))) (tail!15020 (getSuffix!3550 knownP!30 testedP!423))))))

(declare-fun b!7531821 () Bool)

(declare-fun e!4488735 () Bool)

(declare-fun e!4488736 () Bool)

(assert (=> b!7531821 (= e!4488735 e!4488736)))

(declare-fun res!3018642 () Bool)

(assert (=> b!7531821 (=> res!3018642 e!4488736)))

(declare-fun call!691009 () Bool)

(assert (=> b!7531821 (= res!3018642 call!691009)))

(declare-fun b!7531822 () Bool)

(declare-fun e!4488734 () Bool)

(declare-fun lt!2640887 () Bool)

(assert (=> b!7531822 (= e!4488734 (not lt!2640887))))

(declare-fun b!7531823 () Bool)

(declare-fun res!3018639 () Bool)

(declare-fun e!4488733 () Bool)

(assert (=> b!7531823 (=> res!3018639 e!4488733)))

(declare-fun e!4488739 () Bool)

(assert (=> b!7531823 (= res!3018639 e!4488739)))

(declare-fun res!3018636 () Bool)

(assert (=> b!7531823 (=> (not res!3018636) (not e!4488739))))

(assert (=> b!7531823 (= res!3018636 lt!2640887)))

(declare-fun b!7531824 () Bool)

(assert (=> b!7531824 (= e!4488736 (not (= (head!15460 (getSuffix!3550 knownP!30 testedP!423)) (c!1390963 r!24333))))))

(declare-fun b!7531825 () Bool)

(assert (=> b!7531825 (= e!4488738 (nullable!8658 r!24333))))

(declare-fun bm!691004 () Bool)

(assert (=> bm!691004 (= call!691009 (isEmpty!41350 (getSuffix!3550 knownP!30 testedP!423)))))

(declare-fun b!7531826 () Bool)

(declare-fun e!4488737 () Bool)

(assert (=> b!7531826 (= e!4488737 (= lt!2640887 call!691009))))

(declare-fun b!7531827 () Bool)

(assert (=> b!7531827 (= e!4488737 e!4488734)))

(declare-fun c!1391014 () Bool)

(assert (=> b!7531827 (= c!1391014 (is-EmptyLang!19864 r!24333))))

(declare-fun b!7531828 () Bool)

(declare-fun res!3018638 () Bool)

(assert (=> b!7531828 (=> (not res!3018638) (not e!4488739))))

(assert (=> b!7531828 (= res!3018638 (not call!691009))))

(declare-fun b!7531829 () Bool)

(assert (=> b!7531829 (= e!4488739 (= (head!15460 (getSuffix!3550 knownP!30 testedP!423)) (c!1390963 r!24333)))))

(declare-fun b!7531830 () Bool)

(declare-fun res!3018640 () Bool)

(assert (=> b!7531830 (=> res!3018640 e!4488733)))

(assert (=> b!7531830 (= res!3018640 (not (is-ElementMatch!19864 r!24333)))))

(assert (=> b!7531830 (= e!4488734 e!4488733)))

(declare-fun b!7531831 () Bool)

(declare-fun res!3018641 () Bool)

(assert (=> b!7531831 (=> (not res!3018641) (not e!4488739))))

(assert (=> b!7531831 (= res!3018641 (isEmpty!41350 (tail!15020 (getSuffix!3550 knownP!30 testedP!423))))))

(declare-fun b!7531832 () Bool)

(assert (=> b!7531832 (= e!4488733 e!4488735)))

(declare-fun res!3018637 () Bool)

(assert (=> b!7531832 (=> (not res!3018637) (not e!4488735))))

(assert (=> b!7531832 (= res!3018637 (not lt!2640887))))

(declare-fun d!2309884 () Bool)

(assert (=> d!2309884 e!4488737))

(declare-fun c!1391015 () Bool)

(assert (=> d!2309884 (= c!1391015 (is-EmptyExpr!19864 r!24333))))

(assert (=> d!2309884 (= lt!2640887 e!4488738)))

(declare-fun c!1391013 () Bool)

(assert (=> d!2309884 (= c!1391013 (isEmpty!41350 (getSuffix!3550 knownP!30 testedP!423)))))

(assert (=> d!2309884 (validRegex!10292 r!24333)))

(assert (=> d!2309884 (= (matchR!9466 r!24333 (getSuffix!3550 knownP!30 testedP!423)) lt!2640887)))

(declare-fun b!7531820 () Bool)

(declare-fun res!3018643 () Bool)

(assert (=> b!7531820 (=> res!3018643 e!4488736)))

(assert (=> b!7531820 (= res!3018643 (not (isEmpty!41350 (tail!15020 (getSuffix!3550 knownP!30 testedP!423)))))))

(assert (= (and d!2309884 c!1391013) b!7531825))

(assert (= (and d!2309884 (not c!1391013)) b!7531819))

(assert (= (and d!2309884 c!1391015) b!7531826))

(assert (= (and d!2309884 (not c!1391015)) b!7531827))

(assert (= (and b!7531827 c!1391014) b!7531822))

(assert (= (and b!7531827 (not c!1391014)) b!7531830))

(assert (= (and b!7531830 (not res!3018640)) b!7531823))

(assert (= (and b!7531823 res!3018636) b!7531828))

(assert (= (and b!7531828 res!3018638) b!7531831))

(assert (= (and b!7531831 res!3018641) b!7531829))

(assert (= (and b!7531823 (not res!3018639)) b!7531832))

(assert (= (and b!7531832 res!3018637) b!7531821))

(assert (= (and b!7531821 (not res!3018642)) b!7531820))

(assert (= (and b!7531820 (not res!3018643)) b!7531824))

(assert (= (or b!7531826 b!7531821 b!7531828) bm!691004))

(assert (=> b!7531820 m!8104520))

(declare-fun m!8104674 () Bool)

(assert (=> b!7531820 m!8104674))

(assert (=> b!7531820 m!8104674))

(declare-fun m!8104676 () Bool)

(assert (=> b!7531820 m!8104676))

(assert (=> b!7531824 m!8104520))

(declare-fun m!8104678 () Bool)

(assert (=> b!7531824 m!8104678))

(assert (=> d!2309884 m!8104520))

(declare-fun m!8104680 () Bool)

(assert (=> d!2309884 m!8104680))

(assert (=> d!2309884 m!8104514))

(assert (=> bm!691004 m!8104520))

(assert (=> bm!691004 m!8104680))

(assert (=> b!7531831 m!8104520))

(assert (=> b!7531831 m!8104674))

(assert (=> b!7531831 m!8104674))

(assert (=> b!7531831 m!8104676))

(declare-fun m!8104682 () Bool)

(assert (=> b!7531825 m!8104682))

(assert (=> b!7531829 m!8104520))

(assert (=> b!7531829 m!8104678))

(assert (=> b!7531819 m!8104520))

(assert (=> b!7531819 m!8104678))

(assert (=> b!7531819 m!8104678))

(declare-fun m!8104684 () Bool)

(assert (=> b!7531819 m!8104684))

(assert (=> b!7531819 m!8104520))

(assert (=> b!7531819 m!8104674))

(assert (=> b!7531819 m!8104684))

(assert (=> b!7531819 m!8104674))

(declare-fun m!8104686 () Bool)

(assert (=> b!7531819 m!8104686))

(assert (=> b!7531547 d!2309884))

(declare-fun d!2309886 () Bool)

(declare-fun lt!2640893 () List!72747)

(declare-fun ++!17385 (List!72747 List!72747) List!72747)

(assert (=> d!2309886 (= (++!17385 testedP!423 lt!2640893) knownP!30)))

(declare-fun e!4488751 () List!72747)

(assert (=> d!2309886 (= lt!2640893 e!4488751)))

(declare-fun c!1391018 () Bool)

(assert (=> d!2309886 (= c!1391018 (is-Cons!72623 testedP!423))))

(assert (=> d!2309886 (>= (size!42360 knownP!30) (size!42360 testedP!423))))

(assert (=> d!2309886 (= (getSuffix!3550 knownP!30 testedP!423) lt!2640893)))

(declare-fun b!7531849 () Bool)

(assert (=> b!7531849 (= e!4488751 (getSuffix!3550 (tail!15020 knownP!30) (t!387454 testedP!423)))))

(declare-fun b!7531850 () Bool)

(assert (=> b!7531850 (= e!4488751 knownP!30)))

(assert (= (and d!2309886 c!1391018) b!7531849))

(assert (= (and d!2309886 (not c!1391018)) b!7531850))

(declare-fun m!8104694 () Bool)

(assert (=> d!2309886 m!8104694))

(assert (=> d!2309886 m!8104518))

(assert (=> d!2309886 m!8104516))

(assert (=> b!7531849 m!8104602))

(assert (=> b!7531849 m!8104602))

(declare-fun m!8104696 () Bool)

(assert (=> b!7531849 m!8104696))

(assert (=> b!7531547 d!2309886))

(declare-fun b!7531851 () Bool)

(declare-fun e!4488752 () Bool)

(declare-fun e!4488754 () Bool)

(assert (=> b!7531851 (= e!4488752 e!4488754)))

(declare-fun res!3018658 () Bool)

(assert (=> b!7531851 (=> (not res!3018658) (not e!4488754))))

(assert (=> b!7531851 (= res!3018658 (not (is-Nil!72623 knownP!30)))))

(declare-fun b!7531854 () Bool)

(declare-fun e!4488753 () Bool)

(assert (=> b!7531854 (= e!4488753 (>= (size!42360 knownP!30) (size!42360 testedP!423)))))

(declare-fun b!7531852 () Bool)

(declare-fun res!3018657 () Bool)

(assert (=> b!7531852 (=> (not res!3018657) (not e!4488754))))

(assert (=> b!7531852 (= res!3018657 (= (head!15460 testedP!423) (head!15460 knownP!30)))))

(declare-fun b!7531853 () Bool)

(assert (=> b!7531853 (= e!4488754 (isPrefix!6070 (tail!15020 testedP!423) (tail!15020 knownP!30)))))

(declare-fun d!2309890 () Bool)

(assert (=> d!2309890 e!4488753))

(declare-fun res!3018656 () Bool)

(assert (=> d!2309890 (=> res!3018656 e!4488753)))

(declare-fun lt!2640894 () Bool)

(assert (=> d!2309890 (= res!3018656 (not lt!2640894))))

(assert (=> d!2309890 (= lt!2640894 e!4488752)))

(declare-fun res!3018659 () Bool)

(assert (=> d!2309890 (=> res!3018659 e!4488752)))

(assert (=> d!2309890 (= res!3018659 (is-Nil!72623 testedP!423))))

(assert (=> d!2309890 (= (isPrefix!6070 testedP!423 knownP!30) lt!2640894)))

(assert (= (and d!2309890 (not res!3018659)) b!7531851))

(assert (= (and b!7531851 res!3018658) b!7531852))

(assert (= (and b!7531852 res!3018657) b!7531853))

(assert (= (and d!2309890 (not res!3018656)) b!7531854))

(assert (=> b!7531854 m!8104518))

(assert (=> b!7531854 m!8104516))

(assert (=> b!7531852 m!8104666))

(assert (=> b!7531852 m!8104598))

(assert (=> b!7531853 m!8104668))

(assert (=> b!7531853 m!8104602))

(assert (=> b!7531853 m!8104668))

(assert (=> b!7531853 m!8104602))

(declare-fun m!8104698 () Bool)

(assert (=> b!7531853 m!8104698))

(assert (=> b!7531547 d!2309890))

(declare-fun d!2309892 () Bool)

(assert (=> d!2309892 (isPrefix!6070 testedP!423 knownP!30)))

(declare-fun lt!2640900 () Unit!166654)

(declare-fun choose!58275 (List!72747 List!72747 List!72747) Unit!166654)

(assert (=> d!2309892 (= lt!2640900 (choose!58275 knownP!30 testedP!423 input!7874))))

(assert (=> d!2309892 (isPrefix!6070 knownP!30 input!7874)))

(assert (=> d!2309892 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!820 knownP!30 testedP!423 input!7874) lt!2640900)))

(declare-fun bs!1939840 () Bool)

(assert (= bs!1939840 d!2309892))

(assert (=> bs!1939840 m!8104524))

(declare-fun m!8104702 () Bool)

(assert (=> bs!1939840 m!8104702))

(assert (=> bs!1939840 m!8104532))

(assert (=> b!7531547 d!2309892))

(declare-fun d!2309896 () Bool)

(declare-fun lt!2640905 () Int)

(assert (=> d!2309896 (>= lt!2640905 0)))

(declare-fun e!4488770 () Int)

(assert (=> d!2309896 (= lt!2640905 e!4488770)))

(declare-fun c!1391023 () Bool)

(assert (=> d!2309896 (= c!1391023 (is-Nil!72623 (_1!37718 (findLongestMatchInner!2123 r!24333 testedP!423 lt!2640833 lt!2640838 input!7874 lt!2640832))))))

(assert (=> d!2309896 (= (size!42360 (_1!37718 (findLongestMatchInner!2123 r!24333 testedP!423 lt!2640833 lt!2640838 input!7874 lt!2640832))) lt!2640905)))

(declare-fun b!7531876 () Bool)

(assert (=> b!7531876 (= e!4488770 0)))

(declare-fun b!7531877 () Bool)

(assert (=> b!7531877 (= e!4488770 (+ 1 (size!42360 (t!387454 (_1!37718 (findLongestMatchInner!2123 r!24333 testedP!423 lt!2640833 lt!2640838 input!7874 lt!2640832))))))))

(assert (= (and d!2309896 c!1391023) b!7531876))

(assert (= (and d!2309896 (not c!1391023)) b!7531877))

(declare-fun m!8104716 () Bool)

(assert (=> b!7531877 m!8104716))

(assert (=> b!7531536 d!2309896))

(declare-fun d!2309902 () Bool)

(declare-fun lt!2640906 () Int)

(assert (=> d!2309902 (>= lt!2640906 0)))

(declare-fun e!4488771 () Int)

(assert (=> d!2309902 (= lt!2640906 e!4488771)))

(declare-fun c!1391024 () Bool)

(assert (=> d!2309902 (= c!1391024 (is-Nil!72623 input!7874))))

(assert (=> d!2309902 (= (size!42360 input!7874) lt!2640906)))

(declare-fun b!7531878 () Bool)

(assert (=> b!7531878 (= e!4488771 0)))

(declare-fun b!7531879 () Bool)

(assert (=> b!7531879 (= e!4488771 (+ 1 (size!42360 (t!387454 input!7874))))))

(assert (= (and d!2309902 c!1391024) b!7531878))

(assert (= (and d!2309902 (not c!1391024)) b!7531879))

(declare-fun m!8104720 () Bool)

(assert (=> b!7531879 m!8104720))

(assert (=> b!7531536 d!2309902))

(declare-fun b!7531910 () Bool)

(declare-fun e!4488793 () tuple2!68830)

(assert (=> b!7531910 (= e!4488793 (tuple2!68831 testedP!423 lt!2640838))))

(declare-fun b!7531911 () Bool)

(declare-fun e!4488789 () tuple2!68830)

(assert (=> b!7531911 (= e!4488789 (tuple2!68831 testedP!423 Nil!72623))))

(declare-fun b!7531912 () Bool)

(declare-fun e!4488791 () tuple2!68830)

(assert (=> b!7531912 (= e!4488791 (tuple2!68831 Nil!72623 input!7874))))

(declare-fun b!7531913 () Bool)

(declare-fun c!1391038 () Bool)

(declare-fun call!691034 () Bool)

(assert (=> b!7531913 (= c!1391038 call!691034)))

(declare-fun lt!2640986 () Unit!166654)

(declare-fun lt!2640984 () Unit!166654)

(assert (=> b!7531913 (= lt!2640986 lt!2640984)))

(assert (=> b!7531913 (= input!7874 testedP!423)))

(declare-fun call!691031 () Unit!166654)

(assert (=> b!7531913 (= lt!2640984 call!691031)))

(declare-fun lt!2640976 () Unit!166654)

(declare-fun lt!2640980 () Unit!166654)

(assert (=> b!7531913 (= lt!2640976 lt!2640980)))

(declare-fun call!691032 () Bool)

(assert (=> b!7531913 call!691032))

(declare-fun call!691035 () Unit!166654)

(assert (=> b!7531913 (= lt!2640980 call!691035)))

(declare-fun e!4488792 () tuple2!68830)

(assert (=> b!7531913 (= e!4488792 e!4488789)))

(declare-fun b!7531914 () Bool)

(declare-fun c!1391043 () Bool)

(assert (=> b!7531914 (= c!1391043 call!691034)))

(declare-fun lt!2640972 () Unit!166654)

(declare-fun lt!2640974 () Unit!166654)

(assert (=> b!7531914 (= lt!2640972 lt!2640974)))

(declare-fun lt!2640977 () List!72747)

(declare-fun lt!2640992 () C!40054)

(assert (=> b!7531914 (= (++!17385 (++!17385 testedP!423 (Cons!72623 lt!2640992 Nil!72623)) lt!2640977) input!7874)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3176 (List!72747 C!40054 List!72747 List!72747) Unit!166654)

(assert (=> b!7531914 (= lt!2640974 (lemmaMoveElementToOtherListKeepsConcatEq!3176 testedP!423 lt!2640992 lt!2640977 input!7874))))

(assert (=> b!7531914 (= lt!2640977 (tail!15020 lt!2640838))))

(assert (=> b!7531914 (= lt!2640992 (head!15460 lt!2640838))))

(declare-fun lt!2640991 () Unit!166654)

(declare-fun lt!2640985 () Unit!166654)

(assert (=> b!7531914 (= lt!2640991 lt!2640985)))

(assert (=> b!7531914 (isPrefix!6070 (++!17385 testedP!423 (Cons!72623 (head!15460 (getSuffix!3550 input!7874 testedP!423)) Nil!72623)) input!7874)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1145 (List!72747 List!72747) Unit!166654)

(assert (=> b!7531914 (= lt!2640985 (lemmaAddHeadSuffixToPrefixStillPrefix!1145 testedP!423 input!7874))))

(declare-fun lt!2640982 () Unit!166654)

(declare-fun lt!2640989 () Unit!166654)

(assert (=> b!7531914 (= lt!2640982 lt!2640989)))

(assert (=> b!7531914 (= lt!2640989 (lemmaAddHeadSuffixToPrefixStillPrefix!1145 testedP!423 input!7874))))

(declare-fun lt!2640971 () List!72747)

(assert (=> b!7531914 (= lt!2640971 (++!17385 testedP!423 (Cons!72623 (head!15460 lt!2640838) Nil!72623)))))

(declare-fun lt!2640993 () Unit!166654)

(declare-fun e!4488795 () Unit!166654)

(assert (=> b!7531914 (= lt!2640993 e!4488795)))

(declare-fun c!1391042 () Bool)

(assert (=> b!7531914 (= c!1391042 (= (size!42360 testedP!423) (size!42360 input!7874)))))

(declare-fun lt!2640981 () Unit!166654)

(declare-fun lt!2640969 () Unit!166654)

(assert (=> b!7531914 (= lt!2640981 lt!2640969)))

(assert (=> b!7531914 (<= (size!42360 testedP!423) (size!42360 input!7874))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1015 (List!72747 List!72747) Unit!166654)

(assert (=> b!7531914 (= lt!2640969 (lemmaIsPrefixThenSmallerEqSize!1015 testedP!423 input!7874))))

(declare-fun e!4488794 () tuple2!68830)

(assert (=> b!7531914 (= e!4488792 e!4488794)))

(declare-fun bm!691024 () Bool)

(declare-fun call!691030 () tuple2!68830)

(declare-fun call!691033 () List!72747)

(declare-fun call!691029 () Regex!19864)

(assert (=> bm!691024 (= call!691030 (findLongestMatchInner!2123 call!691029 lt!2640971 (+ lt!2640833 1) call!691033 input!7874 lt!2640832))))

(declare-fun b!7531915 () Bool)

(assert (=> b!7531915 (= e!4488789 (tuple2!68831 Nil!72623 input!7874))))

(declare-fun b!7531916 () Bool)

(assert (=> b!7531916 (= e!4488794 call!691030)))

(declare-fun bm!691026 () Bool)

(declare-fun call!691036 () C!40054)

(assert (=> bm!691026 (= call!691029 (derivativeStep!5664 r!24333 call!691036))))

(declare-fun b!7531917 () Bool)

(declare-fun Unit!166658 () Unit!166654)

(assert (=> b!7531917 (= e!4488795 Unit!166658)))

(declare-fun lt!2640979 () Unit!166654)

(assert (=> b!7531917 (= lt!2640979 call!691035)))

(assert (=> b!7531917 call!691032))

(declare-fun lt!2640983 () Unit!166654)

(assert (=> b!7531917 (= lt!2640983 lt!2640979)))

(declare-fun lt!2640987 () Unit!166654)

(assert (=> b!7531917 (= lt!2640987 call!691031)))

(assert (=> b!7531917 (= input!7874 testedP!423)))

(declare-fun lt!2640967 () Unit!166654)

(assert (=> b!7531917 (= lt!2640967 lt!2640987)))

(assert (=> b!7531917 false))

(declare-fun b!7531918 () Bool)

(assert (=> b!7531918 (= e!4488791 e!4488792)))

(declare-fun c!1391040 () Bool)

(assert (=> b!7531918 (= c!1391040 (= lt!2640833 lt!2640832))))

(declare-fun bm!691027 () Bool)

(assert (=> bm!691027 (= call!691031 (lemmaIsPrefixSameLengthThenSameList!1524 input!7874 testedP!423 input!7874))))

(declare-fun bm!691028 () Bool)

(declare-fun lemmaIsPrefixRefl!3867 (List!72747 List!72747) Unit!166654)

(assert (=> bm!691028 (= call!691035 (lemmaIsPrefixRefl!3867 input!7874 input!7874))))

(declare-fun b!7531919 () Bool)

(declare-fun Unit!166659 () Unit!166654)

(assert (=> b!7531919 (= e!4488795 Unit!166659)))

(declare-fun b!7531920 () Bool)

(declare-fun e!4488790 () Bool)

(declare-fun e!4488796 () Bool)

(assert (=> b!7531920 (= e!4488790 e!4488796)))

(declare-fun res!3018678 () Bool)

(assert (=> b!7531920 (=> res!3018678 e!4488796)))

(declare-fun lt!2640975 () tuple2!68830)

(assert (=> b!7531920 (= res!3018678 (isEmpty!41350 (_1!37718 lt!2640975)))))

(declare-fun bm!691029 () Bool)

(assert (=> bm!691029 (= call!691036 (head!15460 lt!2640838))))

(declare-fun bm!691025 () Bool)

(assert (=> bm!691025 (= call!691033 (tail!15020 lt!2640838))))

(declare-fun d!2309906 () Bool)

(assert (=> d!2309906 e!4488790))

(declare-fun res!3018677 () Bool)

(assert (=> d!2309906 (=> (not res!3018677) (not e!4488790))))

(assert (=> d!2309906 (= res!3018677 (= (++!17385 (_1!37718 lt!2640975) (_2!37718 lt!2640975)) input!7874))))

(assert (=> d!2309906 (= lt!2640975 e!4488791)))

(declare-fun c!1391039 () Bool)

(assert (=> d!2309906 (= c!1391039 (lostCause!1656 r!24333))))

(declare-fun lt!2640988 () Unit!166654)

(declare-fun Unit!166660 () Unit!166654)

(assert (=> d!2309906 (= lt!2640988 Unit!166660)))

(assert (=> d!2309906 (= (getSuffix!3550 input!7874 testedP!423) lt!2640838)))

(declare-fun lt!2640973 () Unit!166654)

(declare-fun lt!2640978 () Unit!166654)

(assert (=> d!2309906 (= lt!2640973 lt!2640978)))

(declare-fun lt!2640990 () List!72747)

(assert (=> d!2309906 (= lt!2640838 lt!2640990)))

(declare-fun lemmaSamePrefixThenSameSuffix!2826 (List!72747 List!72747 List!72747 List!72747 List!72747) Unit!166654)

(assert (=> d!2309906 (= lt!2640978 (lemmaSamePrefixThenSameSuffix!2826 testedP!423 lt!2640838 testedP!423 lt!2640990 input!7874))))

(assert (=> d!2309906 (= lt!2640990 (getSuffix!3550 input!7874 testedP!423))))

(declare-fun lt!2640968 () Unit!166654)

(declare-fun lt!2640970 () Unit!166654)

(assert (=> d!2309906 (= lt!2640968 lt!2640970)))

(assert (=> d!2309906 (isPrefix!6070 testedP!423 (++!17385 testedP!423 lt!2640838))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3740 (List!72747 List!72747) Unit!166654)

(assert (=> d!2309906 (= lt!2640970 (lemmaConcatTwoListThenFirstIsPrefix!3740 testedP!423 lt!2640838))))

(assert (=> d!2309906 (validRegex!10292 r!24333)))

(assert (=> d!2309906 (= (findLongestMatchInner!2123 r!24333 testedP!423 lt!2640833 lt!2640838 input!7874 lt!2640832) lt!2640975)))

(declare-fun bm!691030 () Bool)

(assert (=> bm!691030 (= call!691034 (nullable!8658 r!24333))))

(declare-fun b!7531921 () Bool)

(declare-fun lt!2640994 () tuple2!68830)

(assert (=> b!7531921 (= e!4488793 lt!2640994)))

(declare-fun b!7531922 () Bool)

(assert (=> b!7531922 (= e!4488794 e!4488793)))

(assert (=> b!7531922 (= lt!2640994 call!691030)))

(declare-fun c!1391041 () Bool)

(assert (=> b!7531922 (= c!1391041 (isEmpty!41350 (_1!37718 lt!2640994)))))

(declare-fun bm!691031 () Bool)

(assert (=> bm!691031 (= call!691032 (isPrefix!6070 input!7874 input!7874))))

(declare-fun b!7531923 () Bool)

(assert (=> b!7531923 (= e!4488796 (>= (size!42360 (_1!37718 lt!2640975)) (size!42360 testedP!423)))))

(assert (= (and d!2309906 c!1391039) b!7531912))

(assert (= (and d!2309906 (not c!1391039)) b!7531918))

(assert (= (and b!7531918 c!1391040) b!7531913))

(assert (= (and b!7531918 (not c!1391040)) b!7531914))

(assert (= (and b!7531913 c!1391038) b!7531911))

(assert (= (and b!7531913 (not c!1391038)) b!7531915))

(assert (= (and b!7531914 c!1391042) b!7531917))

(assert (= (and b!7531914 (not c!1391042)) b!7531919))

(assert (= (and b!7531914 c!1391043) b!7531922))

(assert (= (and b!7531914 (not c!1391043)) b!7531916))

(assert (= (and b!7531922 c!1391041) b!7531910))

(assert (= (and b!7531922 (not c!1391041)) b!7531921))

(assert (= (or b!7531922 b!7531916) bm!691025))

(assert (= (or b!7531922 b!7531916) bm!691029))

(assert (= (or b!7531922 b!7531916) bm!691026))

(assert (= (or b!7531922 b!7531916) bm!691024))

(assert (= (or b!7531913 b!7531917) bm!691031))

(assert (= (or b!7531913 b!7531914) bm!691030))

(assert (= (or b!7531913 b!7531917) bm!691027))

(assert (= (or b!7531913 b!7531917) bm!691028))

(assert (= (and d!2309906 res!3018677) b!7531920))

(assert (= (and b!7531920 (not res!3018678)) b!7531923))

(declare-fun m!8104726 () Bool)

(assert (=> bm!691031 m!8104726))

(declare-fun m!8104728 () Bool)

(assert (=> bm!691024 m!8104728))

(declare-fun m!8104730 () Bool)

(assert (=> bm!691029 m!8104730))

(assert (=> b!7531914 m!8104504))

(declare-fun m!8104732 () Bool)

(assert (=> b!7531914 m!8104732))

(declare-fun m!8104734 () Bool)

(assert (=> b!7531914 m!8104734))

(assert (=> b!7531914 m!8104516))

(assert (=> b!7531914 m!8104730))

(assert (=> b!7531914 m!8104506))

(declare-fun m!8104736 () Bool)

(assert (=> b!7531914 m!8104736))

(declare-fun m!8104738 () Bool)

(assert (=> b!7531914 m!8104738))

(declare-fun m!8104740 () Bool)

(assert (=> b!7531914 m!8104740))

(assert (=> b!7531914 m!8104738))

(declare-fun m!8104742 () Bool)

(assert (=> b!7531914 m!8104742))

(assert (=> b!7531914 m!8104504))

(declare-fun m!8104744 () Bool)

(assert (=> b!7531914 m!8104744))

(declare-fun m!8104746 () Bool)

(assert (=> b!7531914 m!8104746))

(declare-fun m!8104748 () Bool)

(assert (=> b!7531914 m!8104748))

(assert (=> b!7531914 m!8104744))

(declare-fun m!8104750 () Bool)

(assert (=> b!7531914 m!8104750))

(declare-fun m!8104752 () Bool)

(assert (=> b!7531922 m!8104752))

(declare-fun m!8104754 () Bool)

(assert (=> b!7531923 m!8104754))

(assert (=> b!7531923 m!8104516))

(assert (=> bm!691025 m!8104746))

(declare-fun m!8104756 () Bool)

(assert (=> bm!691027 m!8104756))

(assert (=> d!2309906 m!8104536))

(declare-fun m!8104758 () Bool)

(assert (=> d!2309906 m!8104758))

(assert (=> d!2309906 m!8104504))

(assert (=> d!2309906 m!8104514))

(declare-fun m!8104760 () Bool)

(assert (=> d!2309906 m!8104760))

(declare-fun m!8104762 () Bool)

(assert (=> d!2309906 m!8104762))

(assert (=> d!2309906 m!8104760))

(declare-fun m!8104764 () Bool)

(assert (=> d!2309906 m!8104764))

(declare-fun m!8104766 () Bool)

(assert (=> d!2309906 m!8104766))

(assert (=> bm!691030 m!8104682))

(declare-fun m!8104768 () Bool)

(assert (=> bm!691028 m!8104768))

(declare-fun m!8104770 () Bool)

(assert (=> b!7531920 m!8104770))

(declare-fun m!8104772 () Bool)

(assert (=> bm!691026 m!8104772))

(assert (=> b!7531536 d!2309906))

(declare-fun d!2309912 () Bool)

(assert (=> d!2309912 (= testedP!423 knownP!30)))

(declare-fun lt!2640997 () Unit!166654)

(declare-fun choose!58276 (List!72747 List!72747 List!72747) Unit!166654)

(assert (=> d!2309912 (= lt!2640997 (choose!58276 testedP!423 knownP!30 input!7874))))

(assert (=> d!2309912 (isPrefix!6070 testedP!423 input!7874)))

(assert (=> d!2309912 (= (lemmaIsPrefixSameLengthThenSameList!1524 testedP!423 knownP!30 input!7874) lt!2640997)))

(declare-fun bs!1939842 () Bool)

(assert (= bs!1939842 d!2309912))

(declare-fun m!8104774 () Bool)

(assert (=> bs!1939842 m!8104774))

(assert (=> bs!1939842 m!8104538))

(assert (=> b!7531536 d!2309912))

(declare-fun d!2309914 () Bool)

(assert (=> d!2309914 (>= (size!42360 (_1!37718 (findLongestMatchInner!2123 r!24333 testedP!423 (size!42360 testedP!423) (getSuffix!3550 input!7874 testedP!423) input!7874 (size!42360 input!7874)))) (size!42360 testedP!423))))

(declare-fun lt!2641000 () Unit!166654)

(declare-fun choose!58277 (Regex!19864 Regex!19864 List!72747 List!72747) Unit!166654)

(assert (=> d!2309914 (= lt!2641000 (choose!58277 baseR!101 r!24333 input!7874 testedP!423))))

(assert (=> d!2309914 (validRegex!10292 baseR!101)))

(assert (=> d!2309914 (= (lemmaIfMatchRThenLongestMatchFromThereReturnsAtLeastThis!9 baseR!101 r!24333 input!7874 testedP!423) lt!2641000)))

(declare-fun bs!1939843 () Bool)

(assert (= bs!1939843 d!2309914))

(assert (=> bs!1939843 m!8104516))

(assert (=> bs!1939843 m!8104504))

(declare-fun m!8104776 () Bool)

(assert (=> bs!1939843 m!8104776))

(assert (=> bs!1939843 m!8104506))

(assert (=> bs!1939843 m!8104530))

(declare-fun m!8104778 () Bool)

(assert (=> bs!1939843 m!8104778))

(assert (=> bs!1939843 m!8104516))

(assert (=> bs!1939843 m!8104504))

(assert (=> bs!1939843 m!8104506))

(declare-fun m!8104780 () Bool)

(assert (=> bs!1939843 m!8104780))

(assert (=> b!7531536 d!2309914))

(declare-fun d!2309916 () Bool)

(declare-fun lt!2641001 () List!72747)

(assert (=> d!2309916 (= (++!17385 testedP!423 lt!2641001) input!7874)))

(declare-fun e!4488797 () List!72747)

(assert (=> d!2309916 (= lt!2641001 e!4488797)))

(declare-fun c!1391044 () Bool)

(assert (=> d!2309916 (= c!1391044 (is-Cons!72623 testedP!423))))

(assert (=> d!2309916 (>= (size!42360 input!7874) (size!42360 testedP!423))))

(assert (=> d!2309916 (= (getSuffix!3550 input!7874 testedP!423) lt!2641001)))

(declare-fun b!7531924 () Bool)

(assert (=> b!7531924 (= e!4488797 (getSuffix!3550 (tail!15020 input!7874) (t!387454 testedP!423)))))

(declare-fun b!7531925 () Bool)

(assert (=> b!7531925 (= e!4488797 input!7874)))

(assert (= (and d!2309916 c!1391044) b!7531924))

(assert (= (and d!2309916 (not c!1391044)) b!7531925))

(declare-fun m!8104782 () Bool)

(assert (=> d!2309916 m!8104782))

(assert (=> d!2309916 m!8104506))

(assert (=> d!2309916 m!8104516))

(assert (=> b!7531924 m!8104604))

(assert (=> b!7531924 m!8104604))

(declare-fun m!8104784 () Bool)

(assert (=> b!7531924 m!8104784))

(assert (=> b!7531536 d!2309916))

(declare-fun d!2309918 () Bool)

(declare-fun lt!2641002 () Int)

(assert (=> d!2309918 (>= lt!2641002 0)))

(declare-fun e!4488798 () Int)

(assert (=> d!2309918 (= lt!2641002 e!4488798)))

(declare-fun c!1391045 () Bool)

(assert (=> d!2309918 (= c!1391045 (is-Nil!72623 testedP!423))))

(assert (=> d!2309918 (= (size!42360 testedP!423) lt!2641002)))

(declare-fun b!7531926 () Bool)

(assert (=> b!7531926 (= e!4488798 0)))

(declare-fun b!7531927 () Bool)

(assert (=> b!7531927 (= e!4488798 (+ 1 (size!42360 (t!387454 testedP!423))))))

(assert (= (and d!2309918 c!1391045) b!7531926))

(assert (= (and d!2309918 (not c!1391045)) b!7531927))

(declare-fun m!8104786 () Bool)

(assert (=> b!7531927 m!8104786))

(assert (=> b!7531552 d!2309918))

(declare-fun d!2309920 () Bool)

(declare-fun lt!2641003 () Int)

(assert (=> d!2309920 (>= lt!2641003 0)))

(declare-fun e!4488799 () Int)

(assert (=> d!2309920 (= lt!2641003 e!4488799)))

(declare-fun c!1391046 () Bool)

(assert (=> d!2309920 (= c!1391046 (is-Nil!72623 knownP!30))))

(assert (=> d!2309920 (= (size!42360 knownP!30) lt!2641003)))

(declare-fun b!7531928 () Bool)

(assert (=> b!7531928 (= e!4488799 0)))

(declare-fun b!7531929 () Bool)

(assert (=> b!7531929 (= e!4488799 (+ 1 (size!42360 (t!387454 knownP!30))))))

(assert (= (and d!2309920 c!1391046) b!7531928))

(assert (= (and d!2309920 (not c!1391046)) b!7531929))

(declare-fun m!8104788 () Bool)

(assert (=> b!7531929 m!8104788))

(assert (=> b!7531552 d!2309920))

(declare-fun b!7531940 () Bool)

(declare-fun e!4488802 () Bool)

(assert (=> b!7531940 (= e!4488802 tp_is_empty!50083)))

(declare-fun b!7531941 () Bool)

(declare-fun tp!2189579 () Bool)

(declare-fun tp!2189581 () Bool)

(assert (=> b!7531941 (= e!4488802 (and tp!2189579 tp!2189581))))

(assert (=> b!7531535 (= tp!2189517 e!4488802)))

(declare-fun b!7531942 () Bool)

(declare-fun tp!2189580 () Bool)

(assert (=> b!7531942 (= e!4488802 tp!2189580)))

(declare-fun b!7531943 () Bool)

(declare-fun tp!2189582 () Bool)

(declare-fun tp!2189578 () Bool)

(assert (=> b!7531943 (= e!4488802 (and tp!2189582 tp!2189578))))

(assert (= (and b!7531535 (is-ElementMatch!19864 (reg!20193 r!24333))) b!7531940))

(assert (= (and b!7531535 (is-Concat!28709 (reg!20193 r!24333))) b!7531941))

(assert (= (and b!7531535 (is-Star!19864 (reg!20193 r!24333))) b!7531942))

(assert (= (and b!7531535 (is-Union!19864 (reg!20193 r!24333))) b!7531943))

(declare-fun b!7531944 () Bool)

(declare-fun e!4488803 () Bool)

(assert (=> b!7531944 (= e!4488803 tp_is_empty!50083)))

(declare-fun b!7531945 () Bool)

(declare-fun tp!2189584 () Bool)

(declare-fun tp!2189586 () Bool)

(assert (=> b!7531945 (= e!4488803 (and tp!2189584 tp!2189586))))

(assert (=> b!7531551 (= tp!2189516 e!4488803)))

(declare-fun b!7531946 () Bool)

(declare-fun tp!2189585 () Bool)

(assert (=> b!7531946 (= e!4488803 tp!2189585)))

(declare-fun b!7531947 () Bool)

(declare-fun tp!2189587 () Bool)

(declare-fun tp!2189583 () Bool)

(assert (=> b!7531947 (= e!4488803 (and tp!2189587 tp!2189583))))

(assert (= (and b!7531551 (is-ElementMatch!19864 (regOne!40240 baseR!101))) b!7531944))

(assert (= (and b!7531551 (is-Concat!28709 (regOne!40240 baseR!101))) b!7531945))

(assert (= (and b!7531551 (is-Star!19864 (regOne!40240 baseR!101))) b!7531946))

(assert (= (and b!7531551 (is-Union!19864 (regOne!40240 baseR!101))) b!7531947))

(declare-fun b!7531948 () Bool)

(declare-fun e!4488804 () Bool)

(assert (=> b!7531948 (= e!4488804 tp_is_empty!50083)))

(declare-fun b!7531949 () Bool)

(declare-fun tp!2189589 () Bool)

(declare-fun tp!2189591 () Bool)

(assert (=> b!7531949 (= e!4488804 (and tp!2189589 tp!2189591))))

(assert (=> b!7531551 (= tp!2189528 e!4488804)))

(declare-fun b!7531950 () Bool)

(declare-fun tp!2189590 () Bool)

(assert (=> b!7531950 (= e!4488804 tp!2189590)))

(declare-fun b!7531951 () Bool)

(declare-fun tp!2189592 () Bool)

(declare-fun tp!2189588 () Bool)

(assert (=> b!7531951 (= e!4488804 (and tp!2189592 tp!2189588))))

(assert (= (and b!7531551 (is-ElementMatch!19864 (regTwo!40240 baseR!101))) b!7531948))

(assert (= (and b!7531551 (is-Concat!28709 (regTwo!40240 baseR!101))) b!7531949))

(assert (= (and b!7531551 (is-Star!19864 (regTwo!40240 baseR!101))) b!7531950))

(assert (= (and b!7531551 (is-Union!19864 (regTwo!40240 baseR!101))) b!7531951))

(declare-fun b!7531956 () Bool)

(declare-fun e!4488807 () Bool)

(declare-fun tp!2189595 () Bool)

(assert (=> b!7531956 (= e!4488807 (and tp_is_empty!50083 tp!2189595))))

(assert (=> b!7531545 (= tp!2189518 e!4488807)))

(assert (= (and b!7531545 (is-Cons!72623 (t!387454 knownP!30))) b!7531956))

(declare-fun b!7531957 () Bool)

(declare-fun e!4488808 () Bool)

(assert (=> b!7531957 (= e!4488808 tp_is_empty!50083)))

(declare-fun b!7531958 () Bool)

(declare-fun tp!2189597 () Bool)

(declare-fun tp!2189599 () Bool)

(assert (=> b!7531958 (= e!4488808 (and tp!2189597 tp!2189599))))

(assert (=> b!7531539 (= tp!2189524 e!4488808)))

(declare-fun b!7531959 () Bool)

(declare-fun tp!2189598 () Bool)

(assert (=> b!7531959 (= e!4488808 tp!2189598)))

(declare-fun b!7531960 () Bool)

(declare-fun tp!2189600 () Bool)

(declare-fun tp!2189596 () Bool)

(assert (=> b!7531960 (= e!4488808 (and tp!2189600 tp!2189596))))

(assert (= (and b!7531539 (is-ElementMatch!19864 (regOne!40241 baseR!101))) b!7531957))

(assert (= (and b!7531539 (is-Concat!28709 (regOne!40241 baseR!101))) b!7531958))

(assert (= (and b!7531539 (is-Star!19864 (regOne!40241 baseR!101))) b!7531959))

(assert (= (and b!7531539 (is-Union!19864 (regOne!40241 baseR!101))) b!7531960))

(declare-fun b!7531961 () Bool)

(declare-fun e!4488809 () Bool)

(assert (=> b!7531961 (= e!4488809 tp_is_empty!50083)))

(declare-fun b!7531962 () Bool)

(declare-fun tp!2189602 () Bool)

(declare-fun tp!2189604 () Bool)

(assert (=> b!7531962 (= e!4488809 (and tp!2189602 tp!2189604))))

(assert (=> b!7531539 (= tp!2189527 e!4488809)))

(declare-fun b!7531963 () Bool)

(declare-fun tp!2189603 () Bool)

(assert (=> b!7531963 (= e!4488809 tp!2189603)))

(declare-fun b!7531964 () Bool)

(declare-fun tp!2189605 () Bool)

(declare-fun tp!2189601 () Bool)

(assert (=> b!7531964 (= e!4488809 (and tp!2189605 tp!2189601))))

(assert (= (and b!7531539 (is-ElementMatch!19864 (regTwo!40241 baseR!101))) b!7531961))

(assert (= (and b!7531539 (is-Concat!28709 (regTwo!40241 baseR!101))) b!7531962))

(assert (= (and b!7531539 (is-Star!19864 (regTwo!40241 baseR!101))) b!7531963))

(assert (= (and b!7531539 (is-Union!19864 (regTwo!40241 baseR!101))) b!7531964))

(declare-fun b!7531965 () Bool)

(declare-fun e!4488810 () Bool)

(assert (=> b!7531965 (= e!4488810 tp_is_empty!50083)))

(declare-fun b!7531966 () Bool)

(declare-fun tp!2189607 () Bool)

(declare-fun tp!2189609 () Bool)

(assert (=> b!7531966 (= e!4488810 (and tp!2189607 tp!2189609))))

(assert (=> b!7531550 (= tp!2189519 e!4488810)))

(declare-fun b!7531967 () Bool)

(declare-fun tp!2189608 () Bool)

(assert (=> b!7531967 (= e!4488810 tp!2189608)))

(declare-fun b!7531968 () Bool)

(declare-fun tp!2189610 () Bool)

(declare-fun tp!2189606 () Bool)

(assert (=> b!7531968 (= e!4488810 (and tp!2189610 tp!2189606))))

(assert (= (and b!7531550 (is-ElementMatch!19864 (reg!20193 baseR!101))) b!7531965))

(assert (= (and b!7531550 (is-Concat!28709 (reg!20193 baseR!101))) b!7531966))

(assert (= (and b!7531550 (is-Star!19864 (reg!20193 baseR!101))) b!7531967))

(assert (= (and b!7531550 (is-Union!19864 (reg!20193 baseR!101))) b!7531968))

(declare-fun b!7531969 () Bool)

(declare-fun e!4488811 () Bool)

(assert (=> b!7531969 (= e!4488811 tp_is_empty!50083)))

(declare-fun b!7531970 () Bool)

(declare-fun tp!2189612 () Bool)

(declare-fun tp!2189614 () Bool)

(assert (=> b!7531970 (= e!4488811 (and tp!2189612 tp!2189614))))

(assert (=> b!7531533 (= tp!2189526 e!4488811)))

(declare-fun b!7531971 () Bool)

(declare-fun tp!2189613 () Bool)

(assert (=> b!7531971 (= e!4488811 tp!2189613)))

(declare-fun b!7531972 () Bool)

(declare-fun tp!2189615 () Bool)

(declare-fun tp!2189611 () Bool)

(assert (=> b!7531972 (= e!4488811 (and tp!2189615 tp!2189611))))

(assert (= (and b!7531533 (is-ElementMatch!19864 (regOne!40241 r!24333))) b!7531969))

(assert (= (and b!7531533 (is-Concat!28709 (regOne!40241 r!24333))) b!7531970))

(assert (= (and b!7531533 (is-Star!19864 (regOne!40241 r!24333))) b!7531971))

(assert (= (and b!7531533 (is-Union!19864 (regOne!40241 r!24333))) b!7531972))

(declare-fun b!7531973 () Bool)

(declare-fun e!4488812 () Bool)

(assert (=> b!7531973 (= e!4488812 tp_is_empty!50083)))

(declare-fun b!7531974 () Bool)

(declare-fun tp!2189617 () Bool)

(declare-fun tp!2189619 () Bool)

(assert (=> b!7531974 (= e!4488812 (and tp!2189617 tp!2189619))))

(assert (=> b!7531533 (= tp!2189520 e!4488812)))

(declare-fun b!7531975 () Bool)

(declare-fun tp!2189618 () Bool)

(assert (=> b!7531975 (= e!4488812 tp!2189618)))

(declare-fun b!7531976 () Bool)

(declare-fun tp!2189620 () Bool)

(declare-fun tp!2189616 () Bool)

(assert (=> b!7531976 (= e!4488812 (and tp!2189620 tp!2189616))))

(assert (= (and b!7531533 (is-ElementMatch!19864 (regTwo!40241 r!24333))) b!7531973))

(assert (= (and b!7531533 (is-Concat!28709 (regTwo!40241 r!24333))) b!7531974))

(assert (= (and b!7531533 (is-Star!19864 (regTwo!40241 r!24333))) b!7531975))

(assert (= (and b!7531533 (is-Union!19864 (regTwo!40241 r!24333))) b!7531976))

(declare-fun b!7531977 () Bool)

(declare-fun e!4488813 () Bool)

(declare-fun tp!2189621 () Bool)

(assert (=> b!7531977 (= e!4488813 (and tp_is_empty!50083 tp!2189621))))

(assert (=> b!7531537 (= tp!2189521 e!4488813)))

(assert (= (and b!7531537 (is-Cons!72623 (t!387454 testedP!423))) b!7531977))

(declare-fun b!7531978 () Bool)

(declare-fun e!4488814 () Bool)

(declare-fun tp!2189622 () Bool)

(assert (=> b!7531978 (= e!4488814 (and tp_is_empty!50083 tp!2189622))))

(assert (=> b!7531548 (= tp!2189522 e!4488814)))

(assert (= (and b!7531548 (is-Cons!72623 (t!387454 input!7874))) b!7531978))

(declare-fun b!7531979 () Bool)

(declare-fun e!4488815 () Bool)

(assert (=> b!7531979 (= e!4488815 tp_is_empty!50083)))

(declare-fun b!7531980 () Bool)

(declare-fun tp!2189624 () Bool)

(declare-fun tp!2189626 () Bool)

(assert (=> b!7531980 (= e!4488815 (and tp!2189624 tp!2189626))))

(assert (=> b!7531542 (= tp!2189523 e!4488815)))

(declare-fun b!7531981 () Bool)

(declare-fun tp!2189625 () Bool)

(assert (=> b!7531981 (= e!4488815 tp!2189625)))

(declare-fun b!7531982 () Bool)

(declare-fun tp!2189627 () Bool)

(declare-fun tp!2189623 () Bool)

(assert (=> b!7531982 (= e!4488815 (and tp!2189627 tp!2189623))))

(assert (= (and b!7531542 (is-ElementMatch!19864 (regOne!40240 r!24333))) b!7531979))

(assert (= (and b!7531542 (is-Concat!28709 (regOne!40240 r!24333))) b!7531980))

(assert (= (and b!7531542 (is-Star!19864 (regOne!40240 r!24333))) b!7531981))

(assert (= (and b!7531542 (is-Union!19864 (regOne!40240 r!24333))) b!7531982))

(declare-fun b!7531983 () Bool)

(declare-fun e!4488816 () Bool)

(assert (=> b!7531983 (= e!4488816 tp_is_empty!50083)))

(declare-fun b!7531984 () Bool)

(declare-fun tp!2189629 () Bool)

(declare-fun tp!2189631 () Bool)

(assert (=> b!7531984 (= e!4488816 (and tp!2189629 tp!2189631))))

(assert (=> b!7531542 (= tp!2189525 e!4488816)))

(declare-fun b!7531985 () Bool)

(declare-fun tp!2189630 () Bool)

(assert (=> b!7531985 (= e!4488816 tp!2189630)))

(declare-fun b!7531986 () Bool)

(declare-fun tp!2189632 () Bool)

(declare-fun tp!2189628 () Bool)

(assert (=> b!7531986 (= e!4488816 (and tp!2189632 tp!2189628))))

(assert (= (and b!7531542 (is-ElementMatch!19864 (regTwo!40240 r!24333))) b!7531983))

(assert (= (and b!7531542 (is-Concat!28709 (regTwo!40240 r!24333))) b!7531984))

(assert (= (and b!7531542 (is-Star!19864 (regTwo!40240 r!24333))) b!7531985))

(assert (= (and b!7531542 (is-Union!19864 (regTwo!40240 r!24333))) b!7531986))

(push 1)

(assert (not bm!691027))

(assert (not bm!691028))

(assert (not b!7531946))

(assert (not b!7531975))

(assert (not bm!691024))

(assert (not b!7531980))

(assert (not b!7531824))

(assert (not b!7531960))

(assert (not b!7531920))

(assert (not b!7531914))

(assert (not b!7531986))

(assert (not b!7531945))

(assert (not b!7531958))

(assert (not b!7531963))

(assert (not d!2309916))

(assert (not b!7531982))

(assert (not b!7531714))

(assert (not b!7531976))

(assert (not d!2309912))

(assert (not bm!691030))

(assert tp_is_empty!50083)

(assert (not b!7531816))

(assert (not b!7531942))

(assert (not b!7531849))

(assert (not b!7531718))

(assert (not b!7531947))

(assert (not b!7531790))

(assert (not b!7531817))

(assert (not bm!690998))

(assert (not d!2309876))

(assert (not d!2309884))

(assert (not b!7531795))

(assert (not d!2309882))

(assert (not bm!691026))

(assert (not b!7531956))

(assert (not b!7531923))

(assert (not b!7531962))

(assert (not b!7531943))

(assert (not b!7531984))

(assert (not b!7531971))

(assert (not b!7531831))

(assert (not bm!691031))

(assert (not bm!690991))

(assert (not b!7531801))

(assert (not bm!691029))

(assert (not b!7531818))

(assert (not d!2309914))

(assert (not bm!691004))

(assert (not b!7531981))

(assert (not b!7531985))

(assert (not b!7531968))

(assert (not d!2309866))

(assert (not b!7531854))

(assert (not d!2309892))

(assert (not b!7531813))

(assert (not bm!691003))

(assert (not b!7531877))

(assert (not b!7531922))

(assert (not bm!690993))

(assert (not b!7531852))

(assert (not d!2309886))

(assert (not b!7531978))

(assert (not b!7531977))

(assert (not b!7531970))

(assert (not b!7531959))

(assert (not b!7531929))

(assert (not b!7531950))

(assert (not b!7531949))

(assert (not b!7531974))

(assert (not b!7531713))

(assert (not b!7531669))

(assert (not b!7531964))

(assert (not b!7531927))

(assert (not b!7531879))

(assert (not b!7531853))

(assert (not b!7531951))

(assert (not bm!691025))

(assert (not b!7531715))

(assert (not b!7531799))

(assert (not b!7531794))

(assert (not b!7531825))

(assert (not bm!690996))

(assert (not b!7531941))

(assert (not b!7531972))

(assert (not b!7531967))

(assert (not b!7531819))

(assert (not b!7531820))

(assert (not d!2309906))

(assert (not b!7531829))

(assert (not b!7531924))

(assert (not b!7531789))

(assert (not b!7531966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

