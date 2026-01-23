; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728844 () Bool)

(assert start!728844)

(declare-fun b!7534638 () Bool)

(declare-fun e!4489999 () Bool)

(declare-fun tp_is_empty!50113 () Bool)

(assert (=> b!7534638 (= e!4489999 tp_is_empty!50113)))

(declare-fun b!7534639 () Bool)

(declare-fun e!4490005 () Bool)

(declare-fun tp!2191005 () Bool)

(assert (=> b!7534639 (= e!4490005 (and tp_is_empty!50113 tp!2191005))))

(declare-fun b!7534640 () Bool)

(declare-fun tp!2191009 () Bool)

(assert (=> b!7534640 (= e!4489999 tp!2191009)))

(declare-fun b!7534641 () Bool)

(declare-fun e!4490003 () Bool)

(declare-fun e!4490004 () Bool)

(assert (=> b!7534641 (= e!4490003 (not e!4490004))))

(declare-fun res!3019595 () Bool)

(assert (=> b!7534641 (=> res!3019595 e!4490004)))

(declare-datatypes ((C!40084 0))(
  ( (C!40085 (val!30482 Int)) )
))
(declare-datatypes ((List!72762 0))(
  ( (Nil!72638) (Cons!72638 (h!79086 C!40084) (t!387469 List!72762)) )
))
(declare-fun knownP!30 () List!72762)

(declare-fun testedP!423 () List!72762)

(declare-datatypes ((Regex!19879 0))(
  ( (ElementMatch!19879 (c!1391360 C!40084)) (Concat!28724 (regOne!40270 Regex!19879) (regTwo!40270 Regex!19879)) (EmptyExpr!19879) (Star!19879 (reg!20208 Regex!19879)) (EmptyLang!19879) (Union!19879 (regOne!40271 Regex!19879) (regTwo!40271 Regex!19879)) )
))
(declare-fun r!24333 () Regex!19879)

(declare-fun matchR!9481 (Regex!19879 List!72762) Bool)

(declare-fun getSuffix!3565 (List!72762 List!72762) List!72762)

(assert (=> b!7534641 (= res!3019595 (not (matchR!9481 r!24333 (getSuffix!3565 knownP!30 testedP!423))))))

(declare-fun isPrefix!6085 (List!72762 List!72762) Bool)

(assert (=> b!7534641 (isPrefix!6085 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72762)

(declare-datatypes ((Unit!166696 0))(
  ( (Unit!166697) )
))
(declare-fun lt!2641637 () Unit!166696)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!835 (List!72762 List!72762 List!72762) Unit!166696)

(assert (=> b!7534641 (= lt!2641637 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!835 knownP!30 testedP!423 input!7874))))

(declare-fun b!7534642 () Bool)

(declare-fun res!3019593 () Bool)

(assert (=> b!7534642 (=> res!3019593 e!4490004)))

(declare-fun baseR!101 () Regex!19879)

(declare-fun derivative!411 (Regex!19879 List!72762) Regex!19879)

(assert (=> b!7534642 (= res!3019593 (not (= (derivative!411 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7534643 () Bool)

(declare-fun tp!2191003 () Bool)

(declare-fun tp!2191004 () Bool)

(assert (=> b!7534643 (= e!4489999 (and tp!2191003 tp!2191004))))

(declare-fun b!7534644 () Bool)

(declare-fun e!4490002 () Bool)

(assert (=> b!7534644 (= e!4490002 tp_is_empty!50113)))

(declare-fun res!3019594 () Bool)

(declare-fun e!4490000 () Bool)

(assert (=> start!728844 (=> (not res!3019594) (not e!4490000))))

(declare-fun validRegex!10307 (Regex!19879) Bool)

(assert (=> start!728844 (= res!3019594 (validRegex!10307 baseR!101))))

(assert (=> start!728844 e!4490000))

(assert (=> start!728844 e!4489999))

(declare-fun e!4490001 () Bool)

(assert (=> start!728844 e!4490001))

(assert (=> start!728844 e!4490005))

(declare-fun e!4489998 () Bool)

(assert (=> start!728844 e!4489998))

(assert (=> start!728844 e!4490002))

(declare-fun b!7534645 () Bool)

(declare-fun res!3019588 () Bool)

(assert (=> b!7534645 (=> res!3019588 e!4490004)))

(declare-fun lt!2641638 () Int)

(declare-fun lt!2641633 () Int)

(assert (=> b!7534645 (= res!3019588 (= lt!2641638 lt!2641633))))

(declare-fun b!7534646 () Bool)

(assert (=> b!7534646 (= e!4490000 e!4490003)))

(declare-fun res!3019597 () Bool)

(assert (=> b!7534646 (=> (not res!3019597) (not e!4490003))))

(assert (=> b!7534646 (= res!3019597 (>= lt!2641633 lt!2641638))))

(declare-fun size!42375 (List!72762) Int)

(assert (=> b!7534646 (= lt!2641638 (size!42375 testedP!423))))

(assert (=> b!7534646 (= lt!2641633 (size!42375 knownP!30))))

(declare-fun b!7534647 () Bool)

(declare-fun tp!2191008 () Bool)

(assert (=> b!7534647 (= e!4490002 tp!2191008)))

(declare-fun b!7534648 () Bool)

(declare-fun tp!2190999 () Bool)

(declare-fun tp!2191001 () Bool)

(assert (=> b!7534648 (= e!4489999 (and tp!2190999 tp!2191001))))

(declare-fun b!7534649 () Bool)

(declare-fun tp!2191000 () Bool)

(declare-fun tp!2191002 () Bool)

(assert (=> b!7534649 (= e!4490002 (and tp!2191000 tp!2191002))))

(declare-fun b!7534650 () Bool)

(declare-fun lt!2641636 () List!72762)

(assert (=> b!7534650 (= e!4490004 (not (= lt!2641636 Nil!72638)))))

(declare-fun lt!2641634 () List!72762)

(assert (=> b!7534650 (isPrefix!6085 lt!2641634 input!7874)))

(declare-fun lt!2641635 () Unit!166696)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1150 (List!72762 List!72762) Unit!166696)

(assert (=> b!7534650 (= lt!2641635 (lemmaAddHeadSuffixToPrefixStillPrefix!1150 testedP!423 input!7874))))

(declare-fun ++!17396 (List!72762 List!72762) List!72762)

(declare-fun head!15469 (List!72762) C!40084)

(assert (=> b!7534650 (= lt!2641634 (++!17396 testedP!423 (Cons!72638 (head!15469 lt!2641636) Nil!72638)))))

(assert (=> b!7534650 (= lt!2641636 (getSuffix!3565 input!7874 testedP!423))))

(declare-fun b!7534651 () Bool)

(declare-fun tp!2191006 () Bool)

(assert (=> b!7534651 (= e!4490001 (and tp_is_empty!50113 tp!2191006))))

(declare-fun b!7534652 () Bool)

(declare-fun res!3019591 () Bool)

(assert (=> b!7534652 (=> res!3019591 e!4490004)))

(declare-fun lostCause!1671 (Regex!19879) Bool)

(assert (=> b!7534652 (= res!3019591 (lostCause!1671 r!24333))))

(declare-fun b!7534653 () Bool)

(declare-fun res!3019598 () Bool)

(assert (=> b!7534653 (=> res!3019598 e!4490004)))

(assert (=> b!7534653 (= res!3019598 (>= lt!2641638 (size!42375 input!7874)))))

(declare-fun b!7534654 () Bool)

(declare-fun res!3019592 () Bool)

(assert (=> b!7534654 (=> (not res!3019592) (not e!4490003))))

(assert (=> b!7534654 (= res!3019592 (matchR!9481 baseR!101 knownP!30))))

(declare-fun b!7534655 () Bool)

(declare-fun res!3019596 () Bool)

(assert (=> b!7534655 (=> (not res!3019596) (not e!4490000))))

(assert (=> b!7534655 (= res!3019596 (isPrefix!6085 testedP!423 input!7874))))

(declare-fun b!7534656 () Bool)

(declare-fun res!3019589 () Bool)

(assert (=> b!7534656 (=> (not res!3019589) (not e!4490000))))

(assert (=> b!7534656 (= res!3019589 (validRegex!10307 r!24333))))

(declare-fun b!7534657 () Bool)

(declare-fun tp!2190997 () Bool)

(declare-fun tp!2191007 () Bool)

(assert (=> b!7534657 (= e!4490002 (and tp!2190997 tp!2191007))))

(declare-fun b!7534658 () Bool)

(declare-fun tp!2190998 () Bool)

(assert (=> b!7534658 (= e!4489998 (and tp_is_empty!50113 tp!2190998))))

(declare-fun b!7534659 () Bool)

(declare-fun res!3019590 () Bool)

(assert (=> b!7534659 (=> (not res!3019590) (not e!4490000))))

(assert (=> b!7534659 (= res!3019590 (isPrefix!6085 knownP!30 input!7874))))

(assert (= (and start!728844 res!3019594) b!7534656))

(assert (= (and b!7534656 res!3019589) b!7534655))

(assert (= (and b!7534655 res!3019596) b!7534659))

(assert (= (and b!7534659 res!3019590) b!7534646))

(assert (= (and b!7534646 res!3019597) b!7534654))

(assert (= (and b!7534654 res!3019592) b!7534641))

(assert (= (and b!7534641 (not res!3019595)) b!7534642))

(assert (= (and b!7534642 (not res!3019593)) b!7534652))

(assert (= (and b!7534652 (not res!3019591)) b!7534645))

(assert (= (and b!7534645 (not res!3019588)) b!7534653))

(assert (= (and b!7534653 (not res!3019598)) b!7534650))

(get-info :version)

(assert (= (and start!728844 ((_ is ElementMatch!19879) baseR!101)) b!7534638))

(assert (= (and start!728844 ((_ is Concat!28724) baseR!101)) b!7534648))

(assert (= (and start!728844 ((_ is Star!19879) baseR!101)) b!7534640))

(assert (= (and start!728844 ((_ is Union!19879) baseR!101)) b!7534643))

(assert (= (and start!728844 ((_ is Cons!72638) input!7874)) b!7534651))

(assert (= (and start!728844 ((_ is Cons!72638) knownP!30)) b!7534639))

(assert (= (and start!728844 ((_ is Cons!72638) testedP!423)) b!7534658))

(assert (= (and start!728844 ((_ is ElementMatch!19879) r!24333)) b!7534644))

(assert (= (and start!728844 ((_ is Concat!28724) r!24333)) b!7534657))

(assert (= (and start!728844 ((_ is Star!19879) r!24333)) b!7534647))

(assert (= (and start!728844 ((_ is Union!19879) r!24333)) b!7534649))

(declare-fun m!8106056 () Bool)

(assert (=> start!728844 m!8106056))

(declare-fun m!8106058 () Bool)

(assert (=> b!7534642 m!8106058))

(declare-fun m!8106060 () Bool)

(assert (=> b!7534654 m!8106060))

(declare-fun m!8106062 () Bool)

(assert (=> b!7534650 m!8106062))

(declare-fun m!8106064 () Bool)

(assert (=> b!7534650 m!8106064))

(declare-fun m!8106066 () Bool)

(assert (=> b!7534650 m!8106066))

(declare-fun m!8106068 () Bool)

(assert (=> b!7534650 m!8106068))

(declare-fun m!8106070 () Bool)

(assert (=> b!7534650 m!8106070))

(declare-fun m!8106072 () Bool)

(assert (=> b!7534659 m!8106072))

(declare-fun m!8106074 () Bool)

(assert (=> b!7534646 m!8106074))

(declare-fun m!8106076 () Bool)

(assert (=> b!7534646 m!8106076))

(declare-fun m!8106078 () Bool)

(assert (=> b!7534653 m!8106078))

(declare-fun m!8106080 () Bool)

(assert (=> b!7534655 m!8106080))

(declare-fun m!8106082 () Bool)

(assert (=> b!7534656 m!8106082))

(declare-fun m!8106084 () Bool)

(assert (=> b!7534652 m!8106084))

(declare-fun m!8106086 () Bool)

(assert (=> b!7534641 m!8106086))

(assert (=> b!7534641 m!8106086))

(declare-fun m!8106088 () Bool)

(assert (=> b!7534641 m!8106088))

(declare-fun m!8106090 () Bool)

(assert (=> b!7534641 m!8106090))

(declare-fun m!8106092 () Bool)

(assert (=> b!7534641 m!8106092))

(check-sat (not b!7534657) (not b!7534659) (not b!7534652) (not b!7534653) (not b!7534651) (not b!7534650) (not b!7534641) (not b!7534642) (not b!7534646) (not b!7534656) (not b!7534654) (not b!7534648) (not b!7534649) tp_is_empty!50113 (not b!7534639) (not b!7534647) (not b!7534643) (not b!7534655) (not b!7534658) (not b!7534640) (not start!728844))
(check-sat)
(get-model)

(declare-fun b!7534688 () Bool)

(declare-fun e!4490021 () Bool)

(declare-fun e!4490023 () Bool)

(assert (=> b!7534688 (= e!4490021 e!4490023)))

(declare-fun res!3019615 () Bool)

(assert (=> b!7534688 (=> res!3019615 e!4490023)))

(declare-fun call!691261 () Bool)

(assert (=> b!7534688 (= res!3019615 call!691261)))

(declare-fun b!7534689 () Bool)

(declare-fun res!3019619 () Bool)

(declare-fun e!4490022 () Bool)

(assert (=> b!7534689 (=> (not res!3019619) (not e!4490022))))

(declare-fun isEmpty!41358 (List!72762) Bool)

(declare-fun tail!15026 (List!72762) List!72762)

(assert (=> b!7534689 (= res!3019619 (isEmpty!41358 (tail!15026 (getSuffix!3565 knownP!30 testedP!423))))))

(declare-fun e!4490024 () Bool)

(declare-fun b!7534690 () Bool)

(declare-fun derivativeStep!5670 (Regex!19879 C!40084) Regex!19879)

(assert (=> b!7534690 (= e!4490024 (matchR!9481 (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423))) (tail!15026 (getSuffix!3565 knownP!30 testedP!423))))))

(declare-fun b!7534691 () Bool)

(declare-fun e!4490026 () Bool)

(assert (=> b!7534691 (= e!4490026 e!4490021)))

(declare-fun res!3019621 () Bool)

(assert (=> b!7534691 (=> (not res!3019621) (not e!4490021))))

(declare-fun lt!2641641 () Bool)

(assert (=> b!7534691 (= res!3019621 (not lt!2641641))))

(declare-fun b!7534693 () Bool)

(declare-fun e!4490025 () Bool)

(assert (=> b!7534693 (= e!4490025 (not lt!2641641))))

(declare-fun b!7534694 () Bool)

(declare-fun nullable!8664 (Regex!19879) Bool)

(assert (=> b!7534694 (= e!4490024 (nullable!8664 r!24333))))

(declare-fun b!7534695 () Bool)

(declare-fun res!3019620 () Bool)

(assert (=> b!7534695 (=> (not res!3019620) (not e!4490022))))

(assert (=> b!7534695 (= res!3019620 (not call!691261))))

(declare-fun bm!691256 () Bool)

(assert (=> bm!691256 (= call!691261 (isEmpty!41358 (getSuffix!3565 knownP!30 testedP!423)))))

(declare-fun b!7534696 () Bool)

(declare-fun res!3019616 () Bool)

(assert (=> b!7534696 (=> res!3019616 e!4490023)))

(assert (=> b!7534696 (= res!3019616 (not (isEmpty!41358 (tail!15026 (getSuffix!3565 knownP!30 testedP!423)))))))

(declare-fun b!7534697 () Bool)

(declare-fun e!4490020 () Bool)

(assert (=> b!7534697 (= e!4490020 (= lt!2641641 call!691261))))

(declare-fun b!7534698 () Bool)

(assert (=> b!7534698 (= e!4490022 (= (head!15469 (getSuffix!3565 knownP!30 testedP!423)) (c!1391360 r!24333)))))

(declare-fun b!7534699 () Bool)

(declare-fun res!3019617 () Bool)

(assert (=> b!7534699 (=> res!3019617 e!4490026)))

(assert (=> b!7534699 (= res!3019617 (not ((_ is ElementMatch!19879) r!24333)))))

(assert (=> b!7534699 (= e!4490025 e!4490026)))

(declare-fun b!7534692 () Bool)

(assert (=> b!7534692 (= e!4490020 e!4490025)))

(declare-fun c!1391368 () Bool)

(assert (=> b!7534692 (= c!1391368 ((_ is EmptyLang!19879) r!24333))))

(declare-fun d!2310231 () Bool)

(assert (=> d!2310231 e!4490020))

(declare-fun c!1391367 () Bool)

(assert (=> d!2310231 (= c!1391367 ((_ is EmptyExpr!19879) r!24333))))

(assert (=> d!2310231 (= lt!2641641 e!4490024)))

(declare-fun c!1391369 () Bool)

(assert (=> d!2310231 (= c!1391369 (isEmpty!41358 (getSuffix!3565 knownP!30 testedP!423)))))

(assert (=> d!2310231 (validRegex!10307 r!24333)))

(assert (=> d!2310231 (= (matchR!9481 r!24333 (getSuffix!3565 knownP!30 testedP!423)) lt!2641641)))

(declare-fun b!7534700 () Bool)

(declare-fun res!3019622 () Bool)

(assert (=> b!7534700 (=> res!3019622 e!4490026)))

(assert (=> b!7534700 (= res!3019622 e!4490022)))

(declare-fun res!3019618 () Bool)

(assert (=> b!7534700 (=> (not res!3019618) (not e!4490022))))

(assert (=> b!7534700 (= res!3019618 lt!2641641)))

(declare-fun b!7534701 () Bool)

(assert (=> b!7534701 (= e!4490023 (not (= (head!15469 (getSuffix!3565 knownP!30 testedP!423)) (c!1391360 r!24333))))))

(assert (= (and d!2310231 c!1391369) b!7534694))

(assert (= (and d!2310231 (not c!1391369)) b!7534690))

(assert (= (and d!2310231 c!1391367) b!7534697))

(assert (= (and d!2310231 (not c!1391367)) b!7534692))

(assert (= (and b!7534692 c!1391368) b!7534693))

(assert (= (and b!7534692 (not c!1391368)) b!7534699))

(assert (= (and b!7534699 (not res!3019617)) b!7534700))

(assert (= (and b!7534700 res!3019618) b!7534695))

(assert (= (and b!7534695 res!3019620) b!7534689))

(assert (= (and b!7534689 res!3019619) b!7534698))

(assert (= (and b!7534700 (not res!3019622)) b!7534691))

(assert (= (and b!7534691 res!3019621) b!7534688))

(assert (= (and b!7534688 (not res!3019615)) b!7534696))

(assert (= (and b!7534696 (not res!3019616)) b!7534701))

(assert (= (or b!7534697 b!7534688 b!7534695) bm!691256))

(assert (=> b!7534696 m!8106086))

(declare-fun m!8106094 () Bool)

(assert (=> b!7534696 m!8106094))

(assert (=> b!7534696 m!8106094))

(declare-fun m!8106096 () Bool)

(assert (=> b!7534696 m!8106096))

(assert (=> b!7534701 m!8106086))

(declare-fun m!8106098 () Bool)

(assert (=> b!7534701 m!8106098))

(declare-fun m!8106100 () Bool)

(assert (=> b!7534694 m!8106100))

(assert (=> b!7534698 m!8106086))

(assert (=> b!7534698 m!8106098))

(assert (=> b!7534690 m!8106086))

(assert (=> b!7534690 m!8106098))

(assert (=> b!7534690 m!8106098))

(declare-fun m!8106102 () Bool)

(assert (=> b!7534690 m!8106102))

(assert (=> b!7534690 m!8106086))

(assert (=> b!7534690 m!8106094))

(assert (=> b!7534690 m!8106102))

(assert (=> b!7534690 m!8106094))

(declare-fun m!8106104 () Bool)

(assert (=> b!7534690 m!8106104))

(assert (=> b!7534689 m!8106086))

(assert (=> b!7534689 m!8106094))

(assert (=> b!7534689 m!8106094))

(assert (=> b!7534689 m!8106096))

(assert (=> bm!691256 m!8106086))

(declare-fun m!8106106 () Bool)

(assert (=> bm!691256 m!8106106))

(assert (=> d!2310231 m!8106086))

(assert (=> d!2310231 m!8106106))

(assert (=> d!2310231 m!8106082))

(assert (=> b!7534641 d!2310231))

(declare-fun d!2310233 () Bool)

(declare-fun lt!2641644 () List!72762)

(assert (=> d!2310233 (= (++!17396 testedP!423 lt!2641644) knownP!30)))

(declare-fun e!4490029 () List!72762)

(assert (=> d!2310233 (= lt!2641644 e!4490029)))

(declare-fun c!1391372 () Bool)

(assert (=> d!2310233 (= c!1391372 ((_ is Cons!72638) testedP!423))))

(assert (=> d!2310233 (>= (size!42375 knownP!30) (size!42375 testedP!423))))

(assert (=> d!2310233 (= (getSuffix!3565 knownP!30 testedP!423) lt!2641644)))

(declare-fun b!7534706 () Bool)

(assert (=> b!7534706 (= e!4490029 (getSuffix!3565 (tail!15026 knownP!30) (t!387469 testedP!423)))))

(declare-fun b!7534707 () Bool)

(assert (=> b!7534707 (= e!4490029 knownP!30)))

(assert (= (and d!2310233 c!1391372) b!7534706))

(assert (= (and d!2310233 (not c!1391372)) b!7534707))

(declare-fun m!8106108 () Bool)

(assert (=> d!2310233 m!8106108))

(assert (=> d!2310233 m!8106076))

(assert (=> d!2310233 m!8106074))

(declare-fun m!8106110 () Bool)

(assert (=> b!7534706 m!8106110))

(assert (=> b!7534706 m!8106110))

(declare-fun m!8106112 () Bool)

(assert (=> b!7534706 m!8106112))

(assert (=> b!7534641 d!2310233))

(declare-fun b!7534718 () Bool)

(declare-fun e!4490036 () Bool)

(assert (=> b!7534718 (= e!4490036 (isPrefix!6085 (tail!15026 testedP!423) (tail!15026 knownP!30)))))

(declare-fun b!7534719 () Bool)

(declare-fun e!4490037 () Bool)

(assert (=> b!7534719 (= e!4490037 (>= (size!42375 knownP!30) (size!42375 testedP!423)))))

(declare-fun b!7534717 () Bool)

(declare-fun res!3019632 () Bool)

(assert (=> b!7534717 (=> (not res!3019632) (not e!4490036))))

(assert (=> b!7534717 (= res!3019632 (= (head!15469 testedP!423) (head!15469 knownP!30)))))

(declare-fun b!7534716 () Bool)

(declare-fun e!4490038 () Bool)

(assert (=> b!7534716 (= e!4490038 e!4490036)))

(declare-fun res!3019634 () Bool)

(assert (=> b!7534716 (=> (not res!3019634) (not e!4490036))))

(assert (=> b!7534716 (= res!3019634 (not ((_ is Nil!72638) knownP!30)))))

(declare-fun d!2310235 () Bool)

(assert (=> d!2310235 e!4490037))

(declare-fun res!3019633 () Bool)

(assert (=> d!2310235 (=> res!3019633 e!4490037)))

(declare-fun lt!2641647 () Bool)

(assert (=> d!2310235 (= res!3019633 (not lt!2641647))))

(assert (=> d!2310235 (= lt!2641647 e!4490038)))

(declare-fun res!3019631 () Bool)

(assert (=> d!2310235 (=> res!3019631 e!4490038)))

(assert (=> d!2310235 (= res!3019631 ((_ is Nil!72638) testedP!423))))

(assert (=> d!2310235 (= (isPrefix!6085 testedP!423 knownP!30) lt!2641647)))

(assert (= (and d!2310235 (not res!3019631)) b!7534716))

(assert (= (and b!7534716 res!3019634) b!7534717))

(assert (= (and b!7534717 res!3019632) b!7534718))

(assert (= (and d!2310235 (not res!3019633)) b!7534719))

(declare-fun m!8106114 () Bool)

(assert (=> b!7534718 m!8106114))

(assert (=> b!7534718 m!8106110))

(assert (=> b!7534718 m!8106114))

(assert (=> b!7534718 m!8106110))

(declare-fun m!8106116 () Bool)

(assert (=> b!7534718 m!8106116))

(assert (=> b!7534719 m!8106076))

(assert (=> b!7534719 m!8106074))

(declare-fun m!8106118 () Bool)

(assert (=> b!7534717 m!8106118))

(declare-fun m!8106120 () Bool)

(assert (=> b!7534717 m!8106120))

(assert (=> b!7534641 d!2310235))

(declare-fun d!2310237 () Bool)

(assert (=> d!2310237 (isPrefix!6085 testedP!423 knownP!30)))

(declare-fun lt!2641650 () Unit!166696)

(declare-fun choose!58289 (List!72762 List!72762 List!72762) Unit!166696)

(assert (=> d!2310237 (= lt!2641650 (choose!58289 knownP!30 testedP!423 input!7874))))

(assert (=> d!2310237 (isPrefix!6085 knownP!30 input!7874)))

(assert (=> d!2310237 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!835 knownP!30 testedP!423 input!7874) lt!2641650)))

(declare-fun bs!1939881 () Bool)

(assert (= bs!1939881 d!2310237))

(assert (=> bs!1939881 m!8106090))

(declare-fun m!8106122 () Bool)

(assert (=> bs!1939881 m!8106122))

(assert (=> bs!1939881 m!8106072))

(assert (=> b!7534641 d!2310237))

(declare-fun d!2310241 () Bool)

(declare-fun lt!2641653 () Int)

(assert (=> d!2310241 (>= lt!2641653 0)))

(declare-fun e!4490041 () Int)

(assert (=> d!2310241 (= lt!2641653 e!4490041)))

(declare-fun c!1391375 () Bool)

(assert (=> d!2310241 (= c!1391375 ((_ is Nil!72638) testedP!423))))

(assert (=> d!2310241 (= (size!42375 testedP!423) lt!2641653)))

(declare-fun b!7534724 () Bool)

(assert (=> b!7534724 (= e!4490041 0)))

(declare-fun b!7534725 () Bool)

(assert (=> b!7534725 (= e!4490041 (+ 1 (size!42375 (t!387469 testedP!423))))))

(assert (= (and d!2310241 c!1391375) b!7534724))

(assert (= (and d!2310241 (not c!1391375)) b!7534725))

(declare-fun m!8106124 () Bool)

(assert (=> b!7534725 m!8106124))

(assert (=> b!7534646 d!2310241))

(declare-fun d!2310243 () Bool)

(declare-fun lt!2641654 () Int)

(assert (=> d!2310243 (>= lt!2641654 0)))

(declare-fun e!4490042 () Int)

(assert (=> d!2310243 (= lt!2641654 e!4490042)))

(declare-fun c!1391376 () Bool)

(assert (=> d!2310243 (= c!1391376 ((_ is Nil!72638) knownP!30))))

(assert (=> d!2310243 (= (size!42375 knownP!30) lt!2641654)))

(declare-fun b!7534726 () Bool)

(assert (=> b!7534726 (= e!4490042 0)))

(declare-fun b!7534727 () Bool)

(assert (=> b!7534727 (= e!4490042 (+ 1 (size!42375 (t!387469 knownP!30))))))

(assert (= (and d!2310243 c!1391376) b!7534726))

(assert (= (and d!2310243 (not c!1391376)) b!7534727))

(declare-fun m!8106126 () Bool)

(assert (=> b!7534727 m!8106126))

(assert (=> b!7534646 d!2310243))

(declare-fun b!7534746 () Bool)

(declare-fun e!4490058 () Bool)

(declare-fun e!4490062 () Bool)

(assert (=> b!7534746 (= e!4490058 e!4490062)))

(declare-fun c!1391382 () Bool)

(assert (=> b!7534746 (= c!1391382 ((_ is Star!19879) r!24333))))

(declare-fun b!7534747 () Bool)

(declare-fun e!4490063 () Bool)

(declare-fun call!691270 () Bool)

(assert (=> b!7534747 (= e!4490063 call!691270)))

(declare-fun c!1391381 () Bool)

(declare-fun bm!691263 () Bool)

(declare-fun call!691268 () Bool)

(assert (=> bm!691263 (= call!691268 (validRegex!10307 (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))))))

(declare-fun b!7534748 () Bool)

(declare-fun e!4490061 () Bool)

(assert (=> b!7534748 (= e!4490061 call!691268)))

(declare-fun b!7534749 () Bool)

(declare-fun e!4490057 () Bool)

(declare-fun e!4490059 () Bool)

(assert (=> b!7534749 (= e!4490057 e!4490059)))

(declare-fun res!3019648 () Bool)

(assert (=> b!7534749 (=> (not res!3019648) (not e!4490059))))

(declare-fun call!691269 () Bool)

(assert (=> b!7534749 (= res!3019648 call!691269)))

(declare-fun b!7534750 () Bool)

(assert (=> b!7534750 (= e!4490059 call!691270)))

(declare-fun b!7534751 () Bool)

(declare-fun e!4490060 () Bool)

(assert (=> b!7534751 (= e!4490062 e!4490060)))

(assert (=> b!7534751 (= c!1391381 ((_ is Union!19879) r!24333))))

(declare-fun b!7534752 () Bool)

(declare-fun res!3019645 () Bool)

(assert (=> b!7534752 (=> res!3019645 e!4490057)))

(assert (=> b!7534752 (= res!3019645 (not ((_ is Concat!28724) r!24333)))))

(assert (=> b!7534752 (= e!4490060 e!4490057)))

(declare-fun bm!691265 () Bool)

(assert (=> bm!691265 (= call!691269 call!691268)))

(declare-fun bm!691264 () Bool)

(assert (=> bm!691264 (= call!691270 (validRegex!10307 (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))))))

(declare-fun d!2310245 () Bool)

(declare-fun res!3019646 () Bool)

(assert (=> d!2310245 (=> res!3019646 e!4490058)))

(assert (=> d!2310245 (= res!3019646 ((_ is ElementMatch!19879) r!24333))))

(assert (=> d!2310245 (= (validRegex!10307 r!24333) e!4490058)))

(declare-fun b!7534753 () Bool)

(assert (=> b!7534753 (= e!4490062 e!4490061)))

(declare-fun res!3019649 () Bool)

(assert (=> b!7534753 (= res!3019649 (not (nullable!8664 (reg!20208 r!24333))))))

(assert (=> b!7534753 (=> (not res!3019649) (not e!4490061))))

(declare-fun b!7534754 () Bool)

(declare-fun res!3019647 () Bool)

(assert (=> b!7534754 (=> (not res!3019647) (not e!4490063))))

(assert (=> b!7534754 (= res!3019647 call!691269)))

(assert (=> b!7534754 (= e!4490060 e!4490063)))

(assert (= (and d!2310245 (not res!3019646)) b!7534746))

(assert (= (and b!7534746 c!1391382) b!7534753))

(assert (= (and b!7534746 (not c!1391382)) b!7534751))

(assert (= (and b!7534753 res!3019649) b!7534748))

(assert (= (and b!7534751 c!1391381) b!7534754))

(assert (= (and b!7534751 (not c!1391381)) b!7534752))

(assert (= (and b!7534754 res!3019647) b!7534747))

(assert (= (and b!7534752 (not res!3019645)) b!7534749))

(assert (= (and b!7534749 res!3019648) b!7534750))

(assert (= (or b!7534754 b!7534749) bm!691265))

(assert (= (or b!7534747 b!7534750) bm!691264))

(assert (= (or b!7534748 bm!691265) bm!691263))

(declare-fun m!8106128 () Bool)

(assert (=> bm!691263 m!8106128))

(declare-fun m!8106130 () Bool)

(assert (=> bm!691264 m!8106130))

(declare-fun m!8106132 () Bool)

(assert (=> b!7534753 m!8106132))

(assert (=> b!7534656 d!2310245))

(declare-fun b!7534755 () Bool)

(declare-fun e!4490065 () Bool)

(declare-fun e!4490069 () Bool)

(assert (=> b!7534755 (= e!4490065 e!4490069)))

(declare-fun c!1391384 () Bool)

(assert (=> b!7534755 (= c!1391384 ((_ is Star!19879) baseR!101))))

(declare-fun b!7534756 () Bool)

(declare-fun e!4490070 () Bool)

(declare-fun call!691273 () Bool)

(assert (=> b!7534756 (= e!4490070 call!691273)))

(declare-fun c!1391383 () Bool)

(declare-fun bm!691266 () Bool)

(declare-fun call!691271 () Bool)

(assert (=> bm!691266 (= call!691271 (validRegex!10307 (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))))))

(declare-fun b!7534757 () Bool)

(declare-fun e!4490068 () Bool)

(assert (=> b!7534757 (= e!4490068 call!691271)))

(declare-fun b!7534758 () Bool)

(declare-fun e!4490064 () Bool)

(declare-fun e!4490066 () Bool)

(assert (=> b!7534758 (= e!4490064 e!4490066)))

(declare-fun res!3019653 () Bool)

(assert (=> b!7534758 (=> (not res!3019653) (not e!4490066))))

(declare-fun call!691272 () Bool)

(assert (=> b!7534758 (= res!3019653 call!691272)))

(declare-fun b!7534759 () Bool)

(assert (=> b!7534759 (= e!4490066 call!691273)))

(declare-fun b!7534760 () Bool)

(declare-fun e!4490067 () Bool)

(assert (=> b!7534760 (= e!4490069 e!4490067)))

(assert (=> b!7534760 (= c!1391383 ((_ is Union!19879) baseR!101))))

(declare-fun b!7534761 () Bool)

(declare-fun res!3019650 () Bool)

(assert (=> b!7534761 (=> res!3019650 e!4490064)))

(assert (=> b!7534761 (= res!3019650 (not ((_ is Concat!28724) baseR!101)))))

(assert (=> b!7534761 (= e!4490067 e!4490064)))

(declare-fun bm!691268 () Bool)

(assert (=> bm!691268 (= call!691272 call!691271)))

(declare-fun bm!691267 () Bool)

(assert (=> bm!691267 (= call!691273 (validRegex!10307 (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))))))

(declare-fun d!2310247 () Bool)

(declare-fun res!3019651 () Bool)

(assert (=> d!2310247 (=> res!3019651 e!4490065)))

(assert (=> d!2310247 (= res!3019651 ((_ is ElementMatch!19879) baseR!101))))

(assert (=> d!2310247 (= (validRegex!10307 baseR!101) e!4490065)))

(declare-fun b!7534762 () Bool)

(assert (=> b!7534762 (= e!4490069 e!4490068)))

(declare-fun res!3019654 () Bool)

(assert (=> b!7534762 (= res!3019654 (not (nullable!8664 (reg!20208 baseR!101))))))

(assert (=> b!7534762 (=> (not res!3019654) (not e!4490068))))

(declare-fun b!7534763 () Bool)

(declare-fun res!3019652 () Bool)

(assert (=> b!7534763 (=> (not res!3019652) (not e!4490070))))

(assert (=> b!7534763 (= res!3019652 call!691272)))

(assert (=> b!7534763 (= e!4490067 e!4490070)))

(assert (= (and d!2310247 (not res!3019651)) b!7534755))

(assert (= (and b!7534755 c!1391384) b!7534762))

(assert (= (and b!7534755 (not c!1391384)) b!7534760))

(assert (= (and b!7534762 res!3019654) b!7534757))

(assert (= (and b!7534760 c!1391383) b!7534763))

(assert (= (and b!7534760 (not c!1391383)) b!7534761))

(assert (= (and b!7534763 res!3019652) b!7534756))

(assert (= (and b!7534761 (not res!3019650)) b!7534758))

(assert (= (and b!7534758 res!3019653) b!7534759))

(assert (= (or b!7534763 b!7534758) bm!691268))

(assert (= (or b!7534756 b!7534759) bm!691267))

(assert (= (or b!7534757 bm!691268) bm!691266))

(declare-fun m!8106134 () Bool)

(assert (=> bm!691266 m!8106134))

(declare-fun m!8106136 () Bool)

(assert (=> bm!691267 m!8106136))

(declare-fun m!8106138 () Bool)

(assert (=> b!7534762 m!8106138))

(assert (=> start!728844 d!2310247))

(declare-fun d!2310249 () Bool)

(declare-fun lt!2641655 () Int)

(assert (=> d!2310249 (>= lt!2641655 0)))

(declare-fun e!4490071 () Int)

(assert (=> d!2310249 (= lt!2641655 e!4490071)))

(declare-fun c!1391385 () Bool)

(assert (=> d!2310249 (= c!1391385 ((_ is Nil!72638) input!7874))))

(assert (=> d!2310249 (= (size!42375 input!7874) lt!2641655)))

(declare-fun b!7534764 () Bool)

(assert (=> b!7534764 (= e!4490071 0)))

(declare-fun b!7534765 () Bool)

(assert (=> b!7534765 (= e!4490071 (+ 1 (size!42375 (t!387469 input!7874))))))

(assert (= (and d!2310249 c!1391385) b!7534764))

(assert (= (and d!2310249 (not c!1391385)) b!7534765))

(declare-fun m!8106140 () Bool)

(assert (=> b!7534765 m!8106140))

(assert (=> b!7534653 d!2310249))

(declare-fun d!2310251 () Bool)

(declare-fun lt!2641660 () Regex!19879)

(assert (=> d!2310251 (validRegex!10307 lt!2641660)))

(declare-fun e!4490076 () Regex!19879)

(assert (=> d!2310251 (= lt!2641660 e!4490076)))

(declare-fun c!1391390 () Bool)

(assert (=> d!2310251 (= c!1391390 ((_ is Cons!72638) testedP!423))))

(assert (=> d!2310251 (validRegex!10307 baseR!101)))

(assert (=> d!2310251 (= (derivative!411 baseR!101 testedP!423) lt!2641660)))

(declare-fun b!7534774 () Bool)

(assert (=> b!7534774 (= e!4490076 (derivative!411 (derivativeStep!5670 baseR!101 (h!79086 testedP!423)) (t!387469 testedP!423)))))

(declare-fun b!7534775 () Bool)

(assert (=> b!7534775 (= e!4490076 baseR!101)))

(assert (= (and d!2310251 c!1391390) b!7534774))

(assert (= (and d!2310251 (not c!1391390)) b!7534775))

(declare-fun m!8106142 () Bool)

(assert (=> d!2310251 m!8106142))

(assert (=> d!2310251 m!8106056))

(declare-fun m!8106144 () Bool)

(assert (=> b!7534774 m!8106144))

(assert (=> b!7534774 m!8106144))

(declare-fun m!8106146 () Bool)

(assert (=> b!7534774 m!8106146))

(assert (=> b!7534642 d!2310251))

(declare-fun d!2310253 () Bool)

(declare-fun lostCauseFct!420 (Regex!19879) Bool)

(assert (=> d!2310253 (= (lostCause!1671 r!24333) (lostCauseFct!420 r!24333))))

(declare-fun bs!1939882 () Bool)

(assert (= bs!1939882 d!2310253))

(declare-fun m!8106148 () Bool)

(assert (=> bs!1939882 m!8106148))

(assert (=> b!7534652 d!2310253))

(declare-fun b!7534796 () Bool)

(declare-fun e!4490088 () Bool)

(declare-fun e!4490090 () Bool)

(assert (=> b!7534796 (= e!4490088 e!4490090)))

(declare-fun res!3019667 () Bool)

(assert (=> b!7534796 (=> res!3019667 e!4490090)))

(declare-fun call!691274 () Bool)

(assert (=> b!7534796 (= res!3019667 call!691274)))

(declare-fun b!7534797 () Bool)

(declare-fun res!3019671 () Bool)

(declare-fun e!4490089 () Bool)

(assert (=> b!7534797 (=> (not res!3019671) (not e!4490089))))

(assert (=> b!7534797 (= res!3019671 (isEmpty!41358 (tail!15026 knownP!30)))))

(declare-fun b!7534798 () Bool)

(declare-fun e!4490091 () Bool)

(assert (=> b!7534798 (= e!4490091 (matchR!9481 (derivativeStep!5670 baseR!101 (head!15469 knownP!30)) (tail!15026 knownP!30)))))

(declare-fun b!7534799 () Bool)

(declare-fun e!4490093 () Bool)

(assert (=> b!7534799 (= e!4490093 e!4490088)))

(declare-fun res!3019673 () Bool)

(assert (=> b!7534799 (=> (not res!3019673) (not e!4490088))))

(declare-fun lt!2641661 () Bool)

(assert (=> b!7534799 (= res!3019673 (not lt!2641661))))

(declare-fun b!7534801 () Bool)

(declare-fun e!4490092 () Bool)

(assert (=> b!7534801 (= e!4490092 (not lt!2641661))))

(declare-fun b!7534802 () Bool)

(assert (=> b!7534802 (= e!4490091 (nullable!8664 baseR!101))))

(declare-fun b!7534803 () Bool)

(declare-fun res!3019672 () Bool)

(assert (=> b!7534803 (=> (not res!3019672) (not e!4490089))))

(assert (=> b!7534803 (= res!3019672 (not call!691274))))

(declare-fun bm!691269 () Bool)

(assert (=> bm!691269 (= call!691274 (isEmpty!41358 knownP!30))))

(declare-fun b!7534804 () Bool)

(declare-fun res!3019668 () Bool)

(assert (=> b!7534804 (=> res!3019668 e!4490090)))

(assert (=> b!7534804 (= res!3019668 (not (isEmpty!41358 (tail!15026 knownP!30))))))

(declare-fun b!7534805 () Bool)

(declare-fun e!4490087 () Bool)

(assert (=> b!7534805 (= e!4490087 (= lt!2641661 call!691274))))

(declare-fun b!7534806 () Bool)

(assert (=> b!7534806 (= e!4490089 (= (head!15469 knownP!30) (c!1391360 baseR!101)))))

(declare-fun b!7534807 () Bool)

(declare-fun res!3019669 () Bool)

(assert (=> b!7534807 (=> res!3019669 e!4490093)))

(assert (=> b!7534807 (= res!3019669 (not ((_ is ElementMatch!19879) baseR!101)))))

(assert (=> b!7534807 (= e!4490092 e!4490093)))

(declare-fun b!7534800 () Bool)

(assert (=> b!7534800 (= e!4490087 e!4490092)))

(declare-fun c!1391396 () Bool)

(assert (=> b!7534800 (= c!1391396 ((_ is EmptyLang!19879) baseR!101))))

(declare-fun d!2310255 () Bool)

(assert (=> d!2310255 e!4490087))

(declare-fun c!1391395 () Bool)

(assert (=> d!2310255 (= c!1391395 ((_ is EmptyExpr!19879) baseR!101))))

(assert (=> d!2310255 (= lt!2641661 e!4490091)))

(declare-fun c!1391397 () Bool)

(assert (=> d!2310255 (= c!1391397 (isEmpty!41358 knownP!30))))

(assert (=> d!2310255 (validRegex!10307 baseR!101)))

(assert (=> d!2310255 (= (matchR!9481 baseR!101 knownP!30) lt!2641661)))

(declare-fun b!7534808 () Bool)

(declare-fun res!3019674 () Bool)

(assert (=> b!7534808 (=> res!3019674 e!4490093)))

(assert (=> b!7534808 (= res!3019674 e!4490089)))

(declare-fun res!3019670 () Bool)

(assert (=> b!7534808 (=> (not res!3019670) (not e!4490089))))

(assert (=> b!7534808 (= res!3019670 lt!2641661)))

(declare-fun b!7534809 () Bool)

(assert (=> b!7534809 (= e!4490090 (not (= (head!15469 knownP!30) (c!1391360 baseR!101))))))

(assert (= (and d!2310255 c!1391397) b!7534802))

(assert (= (and d!2310255 (not c!1391397)) b!7534798))

(assert (= (and d!2310255 c!1391395) b!7534805))

(assert (= (and d!2310255 (not c!1391395)) b!7534800))

(assert (= (and b!7534800 c!1391396) b!7534801))

(assert (= (and b!7534800 (not c!1391396)) b!7534807))

(assert (= (and b!7534807 (not res!3019669)) b!7534808))

(assert (= (and b!7534808 res!3019670) b!7534803))

(assert (= (and b!7534803 res!3019672) b!7534797))

(assert (= (and b!7534797 res!3019671) b!7534806))

(assert (= (and b!7534808 (not res!3019674)) b!7534799))

(assert (= (and b!7534799 res!3019673) b!7534796))

(assert (= (and b!7534796 (not res!3019667)) b!7534804))

(assert (= (and b!7534804 (not res!3019668)) b!7534809))

(assert (= (or b!7534805 b!7534796 b!7534803) bm!691269))

(assert (=> b!7534804 m!8106110))

(assert (=> b!7534804 m!8106110))

(declare-fun m!8106150 () Bool)

(assert (=> b!7534804 m!8106150))

(assert (=> b!7534809 m!8106120))

(declare-fun m!8106152 () Bool)

(assert (=> b!7534802 m!8106152))

(assert (=> b!7534806 m!8106120))

(assert (=> b!7534798 m!8106120))

(assert (=> b!7534798 m!8106120))

(declare-fun m!8106154 () Bool)

(assert (=> b!7534798 m!8106154))

(assert (=> b!7534798 m!8106110))

(assert (=> b!7534798 m!8106154))

(assert (=> b!7534798 m!8106110))

(declare-fun m!8106156 () Bool)

(assert (=> b!7534798 m!8106156))

(assert (=> b!7534797 m!8106110))

(assert (=> b!7534797 m!8106110))

(assert (=> b!7534797 m!8106150))

(declare-fun m!8106158 () Bool)

(assert (=> bm!691269 m!8106158))

(assert (=> d!2310255 m!8106158))

(assert (=> d!2310255 m!8106056))

(assert (=> b!7534654 d!2310255))

(declare-fun b!7534816 () Bool)

(declare-fun e!4490096 () Bool)

(assert (=> b!7534816 (= e!4490096 (isPrefix!6085 (tail!15026 knownP!30) (tail!15026 input!7874)))))

(declare-fun b!7534817 () Bool)

(declare-fun e!4490097 () Bool)

(assert (=> b!7534817 (= e!4490097 (>= (size!42375 input!7874) (size!42375 knownP!30)))))

(declare-fun b!7534815 () Bool)

(declare-fun res!3019680 () Bool)

(assert (=> b!7534815 (=> (not res!3019680) (not e!4490096))))

(assert (=> b!7534815 (= res!3019680 (= (head!15469 knownP!30) (head!15469 input!7874)))))

(declare-fun b!7534814 () Bool)

(declare-fun e!4490098 () Bool)

(assert (=> b!7534814 (= e!4490098 e!4490096)))

(declare-fun res!3019682 () Bool)

(assert (=> b!7534814 (=> (not res!3019682) (not e!4490096))))

(assert (=> b!7534814 (= res!3019682 (not ((_ is Nil!72638) input!7874)))))

(declare-fun d!2310257 () Bool)

(assert (=> d!2310257 e!4490097))

(declare-fun res!3019681 () Bool)

(assert (=> d!2310257 (=> res!3019681 e!4490097)))

(declare-fun lt!2641662 () Bool)

(assert (=> d!2310257 (= res!3019681 (not lt!2641662))))

(assert (=> d!2310257 (= lt!2641662 e!4490098)))

(declare-fun res!3019679 () Bool)

(assert (=> d!2310257 (=> res!3019679 e!4490098)))

(assert (=> d!2310257 (= res!3019679 ((_ is Nil!72638) knownP!30))))

(assert (=> d!2310257 (= (isPrefix!6085 knownP!30 input!7874) lt!2641662)))

(assert (= (and d!2310257 (not res!3019679)) b!7534814))

(assert (= (and b!7534814 res!3019682) b!7534815))

(assert (= (and b!7534815 res!3019680) b!7534816))

(assert (= (and d!2310257 (not res!3019681)) b!7534817))

(assert (=> b!7534816 m!8106110))

(declare-fun m!8106160 () Bool)

(assert (=> b!7534816 m!8106160))

(assert (=> b!7534816 m!8106110))

(assert (=> b!7534816 m!8106160))

(declare-fun m!8106162 () Bool)

(assert (=> b!7534816 m!8106162))

(assert (=> b!7534817 m!8106078))

(assert (=> b!7534817 m!8106076))

(assert (=> b!7534815 m!8106120))

(declare-fun m!8106164 () Bool)

(assert (=> b!7534815 m!8106164))

(assert (=> b!7534659 d!2310257))

(declare-fun d!2310259 () Bool)

(declare-fun lt!2641663 () List!72762)

(assert (=> d!2310259 (= (++!17396 testedP!423 lt!2641663) input!7874)))

(declare-fun e!4490099 () List!72762)

(assert (=> d!2310259 (= lt!2641663 e!4490099)))

(declare-fun c!1391398 () Bool)

(assert (=> d!2310259 (= c!1391398 ((_ is Cons!72638) testedP!423))))

(assert (=> d!2310259 (>= (size!42375 input!7874) (size!42375 testedP!423))))

(assert (=> d!2310259 (= (getSuffix!3565 input!7874 testedP!423) lt!2641663)))

(declare-fun b!7534818 () Bool)

(assert (=> b!7534818 (= e!4490099 (getSuffix!3565 (tail!15026 input!7874) (t!387469 testedP!423)))))

(declare-fun b!7534819 () Bool)

(assert (=> b!7534819 (= e!4490099 input!7874)))

(assert (= (and d!2310259 c!1391398) b!7534818))

(assert (= (and d!2310259 (not c!1391398)) b!7534819))

(declare-fun m!8106166 () Bool)

(assert (=> d!2310259 m!8106166))

(assert (=> d!2310259 m!8106078))

(assert (=> d!2310259 m!8106074))

(assert (=> b!7534818 m!8106160))

(assert (=> b!7534818 m!8106160))

(declare-fun m!8106168 () Bool)

(assert (=> b!7534818 m!8106168))

(assert (=> b!7534650 d!2310259))

(declare-fun d!2310261 () Bool)

(declare-fun e!4490104 () Bool)

(assert (=> d!2310261 e!4490104))

(declare-fun res!3019687 () Bool)

(assert (=> d!2310261 (=> (not res!3019687) (not e!4490104))))

(declare-fun lt!2641666 () List!72762)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15353 (List!72762) (InoxSet C!40084))

(assert (=> d!2310261 (= res!3019687 (= (content!15353 lt!2641666) ((_ map or) (content!15353 testedP!423) (content!15353 (Cons!72638 (head!15469 lt!2641636) Nil!72638)))))))

(declare-fun e!4490105 () List!72762)

(assert (=> d!2310261 (= lt!2641666 e!4490105)))

(declare-fun c!1391401 () Bool)

(assert (=> d!2310261 (= c!1391401 ((_ is Nil!72638) testedP!423))))

(assert (=> d!2310261 (= (++!17396 testedP!423 (Cons!72638 (head!15469 lt!2641636) Nil!72638)) lt!2641666)))

(declare-fun b!7534831 () Bool)

(assert (=> b!7534831 (= e!4490104 (or (not (= (Cons!72638 (head!15469 lt!2641636) Nil!72638) Nil!72638)) (= lt!2641666 testedP!423)))))

(declare-fun b!7534829 () Bool)

(assert (=> b!7534829 (= e!4490105 (Cons!72638 (h!79086 testedP!423) (++!17396 (t!387469 testedP!423) (Cons!72638 (head!15469 lt!2641636) Nil!72638))))))

(declare-fun b!7534828 () Bool)

(assert (=> b!7534828 (= e!4490105 (Cons!72638 (head!15469 lt!2641636) Nil!72638))))

(declare-fun b!7534830 () Bool)

(declare-fun res!3019688 () Bool)

(assert (=> b!7534830 (=> (not res!3019688) (not e!4490104))))

(assert (=> b!7534830 (= res!3019688 (= (size!42375 lt!2641666) (+ (size!42375 testedP!423) (size!42375 (Cons!72638 (head!15469 lt!2641636) Nil!72638)))))))

(assert (= (and d!2310261 c!1391401) b!7534828))

(assert (= (and d!2310261 (not c!1391401)) b!7534829))

(assert (= (and d!2310261 res!3019687) b!7534830))

(assert (= (and b!7534830 res!3019688) b!7534831))

(declare-fun m!8106170 () Bool)

(assert (=> d!2310261 m!8106170))

(declare-fun m!8106172 () Bool)

(assert (=> d!2310261 m!8106172))

(declare-fun m!8106174 () Bool)

(assert (=> d!2310261 m!8106174))

(declare-fun m!8106176 () Bool)

(assert (=> b!7534829 m!8106176))

(declare-fun m!8106178 () Bool)

(assert (=> b!7534830 m!8106178))

(assert (=> b!7534830 m!8106074))

(declare-fun m!8106180 () Bool)

(assert (=> b!7534830 m!8106180))

(assert (=> b!7534650 d!2310261))

(declare-fun d!2310263 () Bool)

(assert (=> d!2310263 (isPrefix!6085 (++!17396 testedP!423 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638)) input!7874)))

(declare-fun lt!2641669 () Unit!166696)

(declare-fun choose!58290 (List!72762 List!72762) Unit!166696)

(assert (=> d!2310263 (= lt!2641669 (choose!58290 testedP!423 input!7874))))

(assert (=> d!2310263 (isPrefix!6085 testedP!423 input!7874)))

(assert (=> d!2310263 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1150 testedP!423 input!7874) lt!2641669)))

(declare-fun bs!1939883 () Bool)

(assert (= bs!1939883 d!2310263))

(declare-fun m!8106182 () Bool)

(assert (=> bs!1939883 m!8106182))

(assert (=> bs!1939883 m!8106070))

(assert (=> bs!1939883 m!8106070))

(declare-fun m!8106184 () Bool)

(assert (=> bs!1939883 m!8106184))

(assert (=> bs!1939883 m!8106080))

(declare-fun m!8106186 () Bool)

(assert (=> bs!1939883 m!8106186))

(declare-fun m!8106188 () Bool)

(assert (=> bs!1939883 m!8106188))

(assert (=> bs!1939883 m!8106186))

(assert (=> b!7534650 d!2310263))

(declare-fun d!2310265 () Bool)

(assert (=> d!2310265 (= (head!15469 lt!2641636) (h!79086 lt!2641636))))

(assert (=> b!7534650 d!2310265))

(declare-fun b!7534834 () Bool)

(declare-fun e!4490106 () Bool)

(assert (=> b!7534834 (= e!4490106 (isPrefix!6085 (tail!15026 lt!2641634) (tail!15026 input!7874)))))

(declare-fun b!7534835 () Bool)

(declare-fun e!4490107 () Bool)

(assert (=> b!7534835 (= e!4490107 (>= (size!42375 input!7874) (size!42375 lt!2641634)))))

(declare-fun b!7534833 () Bool)

(declare-fun res!3019690 () Bool)

(assert (=> b!7534833 (=> (not res!3019690) (not e!4490106))))

(assert (=> b!7534833 (= res!3019690 (= (head!15469 lt!2641634) (head!15469 input!7874)))))

(declare-fun b!7534832 () Bool)

(declare-fun e!4490108 () Bool)

(assert (=> b!7534832 (= e!4490108 e!4490106)))

(declare-fun res!3019692 () Bool)

(assert (=> b!7534832 (=> (not res!3019692) (not e!4490106))))

(assert (=> b!7534832 (= res!3019692 (not ((_ is Nil!72638) input!7874)))))

(declare-fun d!2310267 () Bool)

(assert (=> d!2310267 e!4490107))

(declare-fun res!3019691 () Bool)

(assert (=> d!2310267 (=> res!3019691 e!4490107)))

(declare-fun lt!2641670 () Bool)

(assert (=> d!2310267 (= res!3019691 (not lt!2641670))))

(assert (=> d!2310267 (= lt!2641670 e!4490108)))

(declare-fun res!3019689 () Bool)

(assert (=> d!2310267 (=> res!3019689 e!4490108)))

(assert (=> d!2310267 (= res!3019689 ((_ is Nil!72638) lt!2641634))))

(assert (=> d!2310267 (= (isPrefix!6085 lt!2641634 input!7874) lt!2641670)))

(assert (= (and d!2310267 (not res!3019689)) b!7534832))

(assert (= (and b!7534832 res!3019692) b!7534833))

(assert (= (and b!7534833 res!3019690) b!7534834))

(assert (= (and d!2310267 (not res!3019691)) b!7534835))

(declare-fun m!8106190 () Bool)

(assert (=> b!7534834 m!8106190))

(assert (=> b!7534834 m!8106160))

(assert (=> b!7534834 m!8106190))

(assert (=> b!7534834 m!8106160))

(declare-fun m!8106192 () Bool)

(assert (=> b!7534834 m!8106192))

(assert (=> b!7534835 m!8106078))

(declare-fun m!8106194 () Bool)

(assert (=> b!7534835 m!8106194))

(declare-fun m!8106196 () Bool)

(assert (=> b!7534833 m!8106196))

(assert (=> b!7534833 m!8106164))

(assert (=> b!7534650 d!2310267))

(declare-fun b!7534852 () Bool)

(declare-fun e!4490116 () Bool)

(assert (=> b!7534852 (= e!4490116 (isPrefix!6085 (tail!15026 testedP!423) (tail!15026 input!7874)))))

(declare-fun b!7534853 () Bool)

(declare-fun e!4490117 () Bool)

(assert (=> b!7534853 (= e!4490117 (>= (size!42375 input!7874) (size!42375 testedP!423)))))

(declare-fun b!7534851 () Bool)

(declare-fun res!3019702 () Bool)

(assert (=> b!7534851 (=> (not res!3019702) (not e!4490116))))

(assert (=> b!7534851 (= res!3019702 (= (head!15469 testedP!423) (head!15469 input!7874)))))

(declare-fun b!7534850 () Bool)

(declare-fun e!4490118 () Bool)

(assert (=> b!7534850 (= e!4490118 e!4490116)))

(declare-fun res!3019704 () Bool)

(assert (=> b!7534850 (=> (not res!3019704) (not e!4490116))))

(assert (=> b!7534850 (= res!3019704 (not ((_ is Nil!72638) input!7874)))))

(declare-fun d!2310269 () Bool)

(assert (=> d!2310269 e!4490117))

(declare-fun res!3019703 () Bool)

(assert (=> d!2310269 (=> res!3019703 e!4490117)))

(declare-fun lt!2641672 () Bool)

(assert (=> d!2310269 (= res!3019703 (not lt!2641672))))

(assert (=> d!2310269 (= lt!2641672 e!4490118)))

(declare-fun res!3019701 () Bool)

(assert (=> d!2310269 (=> res!3019701 e!4490118)))

(assert (=> d!2310269 (= res!3019701 ((_ is Nil!72638) testedP!423))))

(assert (=> d!2310269 (= (isPrefix!6085 testedP!423 input!7874) lt!2641672)))

(assert (= (and d!2310269 (not res!3019701)) b!7534850))

(assert (= (and b!7534850 res!3019704) b!7534851))

(assert (= (and b!7534851 res!3019702) b!7534852))

(assert (= (and d!2310269 (not res!3019703)) b!7534853))

(assert (=> b!7534852 m!8106114))

(assert (=> b!7534852 m!8106160))

(assert (=> b!7534852 m!8106114))

(assert (=> b!7534852 m!8106160))

(declare-fun m!8106198 () Bool)

(assert (=> b!7534852 m!8106198))

(assert (=> b!7534853 m!8106078))

(assert (=> b!7534853 m!8106074))

(assert (=> b!7534851 m!8106118))

(assert (=> b!7534851 m!8106164))

(assert (=> b!7534655 d!2310269))

(declare-fun b!7534865 () Bool)

(declare-fun e!4490121 () Bool)

(declare-fun tp!2191024 () Bool)

(declare-fun tp!2191022 () Bool)

(assert (=> b!7534865 (= e!4490121 (and tp!2191024 tp!2191022))))

(assert (=> b!7534657 (= tp!2190997 e!4490121)))

(declare-fun b!7534866 () Bool)

(declare-fun tp!2191023 () Bool)

(assert (=> b!7534866 (= e!4490121 tp!2191023)))

(declare-fun b!7534864 () Bool)

(assert (=> b!7534864 (= e!4490121 tp_is_empty!50113)))

(declare-fun b!7534867 () Bool)

(declare-fun tp!2191020 () Bool)

(declare-fun tp!2191021 () Bool)

(assert (=> b!7534867 (= e!4490121 (and tp!2191020 tp!2191021))))

(assert (= (and b!7534657 ((_ is ElementMatch!19879) (regOne!40270 r!24333))) b!7534864))

(assert (= (and b!7534657 ((_ is Concat!28724) (regOne!40270 r!24333))) b!7534865))

(assert (= (and b!7534657 ((_ is Star!19879) (regOne!40270 r!24333))) b!7534866))

(assert (= (and b!7534657 ((_ is Union!19879) (regOne!40270 r!24333))) b!7534867))

(declare-fun b!7534869 () Bool)

(declare-fun e!4490122 () Bool)

(declare-fun tp!2191029 () Bool)

(declare-fun tp!2191027 () Bool)

(assert (=> b!7534869 (= e!4490122 (and tp!2191029 tp!2191027))))

(assert (=> b!7534657 (= tp!2191007 e!4490122)))

(declare-fun b!7534870 () Bool)

(declare-fun tp!2191028 () Bool)

(assert (=> b!7534870 (= e!4490122 tp!2191028)))

(declare-fun b!7534868 () Bool)

(assert (=> b!7534868 (= e!4490122 tp_is_empty!50113)))

(declare-fun b!7534871 () Bool)

(declare-fun tp!2191025 () Bool)

(declare-fun tp!2191026 () Bool)

(assert (=> b!7534871 (= e!4490122 (and tp!2191025 tp!2191026))))

(assert (= (and b!7534657 ((_ is ElementMatch!19879) (regTwo!40270 r!24333))) b!7534868))

(assert (= (and b!7534657 ((_ is Concat!28724) (regTwo!40270 r!24333))) b!7534869))

(assert (= (and b!7534657 ((_ is Star!19879) (regTwo!40270 r!24333))) b!7534870))

(assert (= (and b!7534657 ((_ is Union!19879) (regTwo!40270 r!24333))) b!7534871))

(declare-fun b!7534876 () Bool)

(declare-fun e!4490125 () Bool)

(declare-fun tp!2191032 () Bool)

(assert (=> b!7534876 (= e!4490125 (and tp_is_empty!50113 tp!2191032))))

(assert (=> b!7534651 (= tp!2191006 e!4490125)))

(assert (= (and b!7534651 ((_ is Cons!72638) (t!387469 input!7874))) b!7534876))

(declare-fun b!7534878 () Bool)

(declare-fun e!4490126 () Bool)

(declare-fun tp!2191037 () Bool)

(declare-fun tp!2191035 () Bool)

(assert (=> b!7534878 (= e!4490126 (and tp!2191037 tp!2191035))))

(assert (=> b!7534640 (= tp!2191009 e!4490126)))

(declare-fun b!7534879 () Bool)

(declare-fun tp!2191036 () Bool)

(assert (=> b!7534879 (= e!4490126 tp!2191036)))

(declare-fun b!7534877 () Bool)

(assert (=> b!7534877 (= e!4490126 tp_is_empty!50113)))

(declare-fun b!7534880 () Bool)

(declare-fun tp!2191033 () Bool)

(declare-fun tp!2191034 () Bool)

(assert (=> b!7534880 (= e!4490126 (and tp!2191033 tp!2191034))))

(assert (= (and b!7534640 ((_ is ElementMatch!19879) (reg!20208 baseR!101))) b!7534877))

(assert (= (and b!7534640 ((_ is Concat!28724) (reg!20208 baseR!101))) b!7534878))

(assert (= (and b!7534640 ((_ is Star!19879) (reg!20208 baseR!101))) b!7534879))

(assert (= (and b!7534640 ((_ is Union!19879) (reg!20208 baseR!101))) b!7534880))

(declare-fun b!7534881 () Bool)

(declare-fun e!4490127 () Bool)

(declare-fun tp!2191038 () Bool)

(assert (=> b!7534881 (= e!4490127 (and tp_is_empty!50113 tp!2191038))))

(assert (=> b!7534658 (= tp!2190998 e!4490127)))

(assert (= (and b!7534658 ((_ is Cons!72638) (t!387469 testedP!423))) b!7534881))

(declare-fun b!7534883 () Bool)

(declare-fun e!4490128 () Bool)

(declare-fun tp!2191043 () Bool)

(declare-fun tp!2191041 () Bool)

(assert (=> b!7534883 (= e!4490128 (and tp!2191043 tp!2191041))))

(assert (=> b!7534647 (= tp!2191008 e!4490128)))

(declare-fun b!7534884 () Bool)

(declare-fun tp!2191042 () Bool)

(assert (=> b!7534884 (= e!4490128 tp!2191042)))

(declare-fun b!7534882 () Bool)

(assert (=> b!7534882 (= e!4490128 tp_is_empty!50113)))

(declare-fun b!7534885 () Bool)

(declare-fun tp!2191039 () Bool)

(declare-fun tp!2191040 () Bool)

(assert (=> b!7534885 (= e!4490128 (and tp!2191039 tp!2191040))))

(assert (= (and b!7534647 ((_ is ElementMatch!19879) (reg!20208 r!24333))) b!7534882))

(assert (= (and b!7534647 ((_ is Concat!28724) (reg!20208 r!24333))) b!7534883))

(assert (= (and b!7534647 ((_ is Star!19879) (reg!20208 r!24333))) b!7534884))

(assert (= (and b!7534647 ((_ is Union!19879) (reg!20208 r!24333))) b!7534885))

(declare-fun b!7534887 () Bool)

(declare-fun e!4490129 () Bool)

(declare-fun tp!2191048 () Bool)

(declare-fun tp!2191046 () Bool)

(assert (=> b!7534887 (= e!4490129 (and tp!2191048 tp!2191046))))

(assert (=> b!7534649 (= tp!2191000 e!4490129)))

(declare-fun b!7534888 () Bool)

(declare-fun tp!2191047 () Bool)

(assert (=> b!7534888 (= e!4490129 tp!2191047)))

(declare-fun b!7534886 () Bool)

(assert (=> b!7534886 (= e!4490129 tp_is_empty!50113)))

(declare-fun b!7534889 () Bool)

(declare-fun tp!2191044 () Bool)

(declare-fun tp!2191045 () Bool)

(assert (=> b!7534889 (= e!4490129 (and tp!2191044 tp!2191045))))

(assert (= (and b!7534649 ((_ is ElementMatch!19879) (regOne!40271 r!24333))) b!7534886))

(assert (= (and b!7534649 ((_ is Concat!28724) (regOne!40271 r!24333))) b!7534887))

(assert (= (and b!7534649 ((_ is Star!19879) (regOne!40271 r!24333))) b!7534888))

(assert (= (and b!7534649 ((_ is Union!19879) (regOne!40271 r!24333))) b!7534889))

(declare-fun b!7534891 () Bool)

(declare-fun e!4490130 () Bool)

(declare-fun tp!2191053 () Bool)

(declare-fun tp!2191051 () Bool)

(assert (=> b!7534891 (= e!4490130 (and tp!2191053 tp!2191051))))

(assert (=> b!7534649 (= tp!2191002 e!4490130)))

(declare-fun b!7534892 () Bool)

(declare-fun tp!2191052 () Bool)

(assert (=> b!7534892 (= e!4490130 tp!2191052)))

(declare-fun b!7534890 () Bool)

(assert (=> b!7534890 (= e!4490130 tp_is_empty!50113)))

(declare-fun b!7534893 () Bool)

(declare-fun tp!2191049 () Bool)

(declare-fun tp!2191050 () Bool)

(assert (=> b!7534893 (= e!4490130 (and tp!2191049 tp!2191050))))

(assert (= (and b!7534649 ((_ is ElementMatch!19879) (regTwo!40271 r!24333))) b!7534890))

(assert (= (and b!7534649 ((_ is Concat!28724) (regTwo!40271 r!24333))) b!7534891))

(assert (= (and b!7534649 ((_ is Star!19879) (regTwo!40271 r!24333))) b!7534892))

(assert (= (and b!7534649 ((_ is Union!19879) (regTwo!40271 r!24333))) b!7534893))

(declare-fun b!7534895 () Bool)

(declare-fun e!4490131 () Bool)

(declare-fun tp!2191058 () Bool)

(declare-fun tp!2191056 () Bool)

(assert (=> b!7534895 (= e!4490131 (and tp!2191058 tp!2191056))))

(assert (=> b!7534643 (= tp!2191003 e!4490131)))

(declare-fun b!7534896 () Bool)

(declare-fun tp!2191057 () Bool)

(assert (=> b!7534896 (= e!4490131 tp!2191057)))

(declare-fun b!7534894 () Bool)

(assert (=> b!7534894 (= e!4490131 tp_is_empty!50113)))

(declare-fun b!7534897 () Bool)

(declare-fun tp!2191054 () Bool)

(declare-fun tp!2191055 () Bool)

(assert (=> b!7534897 (= e!4490131 (and tp!2191054 tp!2191055))))

(assert (= (and b!7534643 ((_ is ElementMatch!19879) (regOne!40271 baseR!101))) b!7534894))

(assert (= (and b!7534643 ((_ is Concat!28724) (regOne!40271 baseR!101))) b!7534895))

(assert (= (and b!7534643 ((_ is Star!19879) (regOne!40271 baseR!101))) b!7534896))

(assert (= (and b!7534643 ((_ is Union!19879) (regOne!40271 baseR!101))) b!7534897))

(declare-fun b!7534899 () Bool)

(declare-fun e!4490132 () Bool)

(declare-fun tp!2191063 () Bool)

(declare-fun tp!2191061 () Bool)

(assert (=> b!7534899 (= e!4490132 (and tp!2191063 tp!2191061))))

(assert (=> b!7534643 (= tp!2191004 e!4490132)))

(declare-fun b!7534900 () Bool)

(declare-fun tp!2191062 () Bool)

(assert (=> b!7534900 (= e!4490132 tp!2191062)))

(declare-fun b!7534898 () Bool)

(assert (=> b!7534898 (= e!4490132 tp_is_empty!50113)))

(declare-fun b!7534901 () Bool)

(declare-fun tp!2191059 () Bool)

(declare-fun tp!2191060 () Bool)

(assert (=> b!7534901 (= e!4490132 (and tp!2191059 tp!2191060))))

(assert (= (and b!7534643 ((_ is ElementMatch!19879) (regTwo!40271 baseR!101))) b!7534898))

(assert (= (and b!7534643 ((_ is Concat!28724) (regTwo!40271 baseR!101))) b!7534899))

(assert (= (and b!7534643 ((_ is Star!19879) (regTwo!40271 baseR!101))) b!7534900))

(assert (= (and b!7534643 ((_ is Union!19879) (regTwo!40271 baseR!101))) b!7534901))

(declare-fun b!7534903 () Bool)

(declare-fun e!4490133 () Bool)

(declare-fun tp!2191068 () Bool)

(declare-fun tp!2191066 () Bool)

(assert (=> b!7534903 (= e!4490133 (and tp!2191068 tp!2191066))))

(assert (=> b!7534648 (= tp!2190999 e!4490133)))

(declare-fun b!7534904 () Bool)

(declare-fun tp!2191067 () Bool)

(assert (=> b!7534904 (= e!4490133 tp!2191067)))

(declare-fun b!7534902 () Bool)

(assert (=> b!7534902 (= e!4490133 tp_is_empty!50113)))

(declare-fun b!7534905 () Bool)

(declare-fun tp!2191064 () Bool)

(declare-fun tp!2191065 () Bool)

(assert (=> b!7534905 (= e!4490133 (and tp!2191064 tp!2191065))))

(assert (= (and b!7534648 ((_ is ElementMatch!19879) (regOne!40270 baseR!101))) b!7534902))

(assert (= (and b!7534648 ((_ is Concat!28724) (regOne!40270 baseR!101))) b!7534903))

(assert (= (and b!7534648 ((_ is Star!19879) (regOne!40270 baseR!101))) b!7534904))

(assert (= (and b!7534648 ((_ is Union!19879) (regOne!40270 baseR!101))) b!7534905))

(declare-fun b!7534907 () Bool)

(declare-fun e!4490134 () Bool)

(declare-fun tp!2191073 () Bool)

(declare-fun tp!2191071 () Bool)

(assert (=> b!7534907 (= e!4490134 (and tp!2191073 tp!2191071))))

(assert (=> b!7534648 (= tp!2191001 e!4490134)))

(declare-fun b!7534908 () Bool)

(declare-fun tp!2191072 () Bool)

(assert (=> b!7534908 (= e!4490134 tp!2191072)))

(declare-fun b!7534906 () Bool)

(assert (=> b!7534906 (= e!4490134 tp_is_empty!50113)))

(declare-fun b!7534909 () Bool)

(declare-fun tp!2191069 () Bool)

(declare-fun tp!2191070 () Bool)

(assert (=> b!7534909 (= e!4490134 (and tp!2191069 tp!2191070))))

(assert (= (and b!7534648 ((_ is ElementMatch!19879) (regTwo!40270 baseR!101))) b!7534906))

(assert (= (and b!7534648 ((_ is Concat!28724) (regTwo!40270 baseR!101))) b!7534907))

(assert (= (and b!7534648 ((_ is Star!19879) (regTwo!40270 baseR!101))) b!7534908))

(assert (= (and b!7534648 ((_ is Union!19879) (regTwo!40270 baseR!101))) b!7534909))

(declare-fun b!7534910 () Bool)

(declare-fun e!4490135 () Bool)

(declare-fun tp!2191074 () Bool)

(assert (=> b!7534910 (= e!4490135 (and tp_is_empty!50113 tp!2191074))))

(assert (=> b!7534639 (= tp!2191005 e!4490135)))

(assert (= (and b!7534639 ((_ is Cons!72638) (t!387469 knownP!30))) b!7534910))

(check-sat (not b!7534900) (not b!7534887) tp_is_empty!50113 (not b!7534853) (not b!7534865) (not b!7534881) (not b!7534806) (not d!2310251) (not b!7534885) (not b!7534774) (not b!7534718) (not b!7534765) (not b!7534727) (not b!7534893) (not d!2310255) (not b!7534852) (not b!7534815) (not b!7534717) (not b!7534901) (not bm!691263) (not b!7534866) (not b!7534698) (not b!7534896) (not b!7534818) (not b!7534895) (not b!7534889) (not b!7534907) (not b!7534876) (not b!7534892) (not bm!691269) (not b!7534830) (not b!7534694) (not b!7534816) (not b!7534905) (not b!7534880) (not b!7534884) (not b!7534725) (not d!2310259) (not d!2310253) (not b!7534891) (not b!7534904) (not b!7534878) (not b!7534817) (not bm!691256) (not b!7534802) (not b!7534908) (not b!7534879) (not d!2310233) (not b!7534701) (not b!7534690) (not b!7534809) (not b!7534689) (not b!7534833) (not d!2310231) (not b!7534804) (not b!7534753) (not b!7534869) (not b!7534897) (not b!7534899) (not d!2310237) (not b!7534870) (not b!7534798) (not b!7534696) (not bm!691266) (not b!7534719) (not b!7534909) (not b!7534762) (not b!7534903) (not b!7534835) (not b!7534867) (not b!7534706) (not b!7534871) (not b!7534797) (not b!7534829) (not b!7534888) (not bm!691264) (not b!7534910) (not b!7534834) (not b!7534883) (not d!2310263) (not bm!691267) (not b!7534851) (not d!2310261))
(check-sat)
(get-model)

(declare-fun d!2310307 () Bool)

(declare-fun lt!2641701 () Int)

(assert (=> d!2310307 (>= lt!2641701 0)))

(declare-fun e!4490224 () Int)

(assert (=> d!2310307 (= lt!2641701 e!4490224)))

(declare-fun c!1391431 () Bool)

(assert (=> d!2310307 (= c!1391431 ((_ is Nil!72638) lt!2641666))))

(assert (=> d!2310307 (= (size!42375 lt!2641666) lt!2641701)))

(declare-fun b!7535078 () Bool)

(assert (=> b!7535078 (= e!4490224 0)))

(declare-fun b!7535079 () Bool)

(assert (=> b!7535079 (= e!4490224 (+ 1 (size!42375 (t!387469 lt!2641666))))))

(assert (= (and d!2310307 c!1391431) b!7535078))

(assert (= (and d!2310307 (not c!1391431)) b!7535079))

(declare-fun m!8106306 () Bool)

(assert (=> b!7535079 m!8106306))

(assert (=> b!7534830 d!2310307))

(assert (=> b!7534830 d!2310241))

(declare-fun d!2310309 () Bool)

(declare-fun lt!2641702 () Int)

(assert (=> d!2310309 (>= lt!2641702 0)))

(declare-fun e!4490225 () Int)

(assert (=> d!2310309 (= lt!2641702 e!4490225)))

(declare-fun c!1391432 () Bool)

(assert (=> d!2310309 (= c!1391432 ((_ is Nil!72638) (Cons!72638 (head!15469 lt!2641636) Nil!72638)))))

(assert (=> d!2310309 (= (size!42375 (Cons!72638 (head!15469 lt!2641636) Nil!72638)) lt!2641702)))

(declare-fun b!7535080 () Bool)

(assert (=> b!7535080 (= e!4490225 0)))

(declare-fun b!7535081 () Bool)

(assert (=> b!7535081 (= e!4490225 (+ 1 (size!42375 (t!387469 (Cons!72638 (head!15469 lt!2641636) Nil!72638)))))))

(assert (= (and d!2310309 c!1391432) b!7535080))

(assert (= (and d!2310309 (not c!1391432)) b!7535081))

(declare-fun m!8106308 () Bool)

(assert (=> b!7535081 m!8106308))

(assert (=> b!7534830 d!2310309))

(assert (=> b!7534853 d!2310249))

(assert (=> b!7534853 d!2310241))

(declare-fun d!2310311 () Bool)

(assert (=> d!2310311 (= (head!15469 testedP!423) (h!79086 testedP!423))))

(assert (=> b!7534851 d!2310311))

(declare-fun d!2310313 () Bool)

(assert (=> d!2310313 (= (head!15469 input!7874) (h!79086 input!7874))))

(assert (=> b!7534851 d!2310313))

(declare-fun d!2310315 () Bool)

(declare-fun lt!2641703 () List!72762)

(assert (=> d!2310315 (= (++!17396 (t!387469 testedP!423) lt!2641703) (tail!15026 input!7874))))

(declare-fun e!4490226 () List!72762)

(assert (=> d!2310315 (= lt!2641703 e!4490226)))

(declare-fun c!1391433 () Bool)

(assert (=> d!2310315 (= c!1391433 ((_ is Cons!72638) (t!387469 testedP!423)))))

(assert (=> d!2310315 (>= (size!42375 (tail!15026 input!7874)) (size!42375 (t!387469 testedP!423)))))

(assert (=> d!2310315 (= (getSuffix!3565 (tail!15026 input!7874) (t!387469 testedP!423)) lt!2641703)))

(declare-fun b!7535082 () Bool)

(assert (=> b!7535082 (= e!4490226 (getSuffix!3565 (tail!15026 (tail!15026 input!7874)) (t!387469 (t!387469 testedP!423))))))

(declare-fun b!7535083 () Bool)

(assert (=> b!7535083 (= e!4490226 (tail!15026 input!7874))))

(assert (= (and d!2310315 c!1391433) b!7535082))

(assert (= (and d!2310315 (not c!1391433)) b!7535083))

(declare-fun m!8106310 () Bool)

(assert (=> d!2310315 m!8106310))

(assert (=> d!2310315 m!8106160))

(declare-fun m!8106312 () Bool)

(assert (=> d!2310315 m!8106312))

(assert (=> d!2310315 m!8106124))

(assert (=> b!7535082 m!8106160))

(declare-fun m!8106314 () Bool)

(assert (=> b!7535082 m!8106314))

(assert (=> b!7535082 m!8106314))

(declare-fun m!8106316 () Bool)

(assert (=> b!7535082 m!8106316))

(assert (=> b!7534818 d!2310315))

(declare-fun d!2310317 () Bool)

(assert (=> d!2310317 (= (tail!15026 input!7874) (t!387469 input!7874))))

(assert (=> b!7534818 d!2310317))

(declare-fun d!2310319 () Bool)

(assert (=> d!2310319 (= (head!15469 lt!2641634) (h!79086 lt!2641634))))

(assert (=> b!7534833 d!2310319))

(assert (=> b!7534833 d!2310313))

(assert (=> b!7534717 d!2310311))

(declare-fun d!2310321 () Bool)

(assert (=> d!2310321 (= (head!15469 knownP!30) (h!79086 knownP!30))))

(assert (=> b!7534717 d!2310321))

(assert (=> b!7534719 d!2310243))

(assert (=> b!7534719 d!2310241))

(declare-fun d!2310323 () Bool)

(assert (=> d!2310323 (= (head!15469 (getSuffix!3565 knownP!30 testedP!423)) (h!79086 (getSuffix!3565 knownP!30 testedP!423)))))

(assert (=> b!7534698 d!2310323))

(declare-fun d!2310325 () Bool)

(declare-fun nullableFct!3469 (Regex!19879) Bool)

(assert (=> d!2310325 (= (nullable!8664 (reg!20208 r!24333)) (nullableFct!3469 (reg!20208 r!24333)))))

(declare-fun bs!1939887 () Bool)

(assert (= bs!1939887 d!2310325))

(declare-fun m!8106318 () Bool)

(assert (=> bs!1939887 m!8106318))

(assert (=> b!7534753 d!2310325))

(declare-fun d!2310327 () Bool)

(declare-fun e!4490227 () Bool)

(assert (=> d!2310327 e!4490227))

(declare-fun res!3019763 () Bool)

(assert (=> d!2310327 (=> (not res!3019763) (not e!4490227))))

(declare-fun lt!2641704 () List!72762)

(assert (=> d!2310327 (= res!3019763 (= (content!15353 lt!2641704) ((_ map or) (content!15353 testedP!423) (content!15353 lt!2641644))))))

(declare-fun e!4490228 () List!72762)

(assert (=> d!2310327 (= lt!2641704 e!4490228)))

(declare-fun c!1391434 () Bool)

(assert (=> d!2310327 (= c!1391434 ((_ is Nil!72638) testedP!423))))

(assert (=> d!2310327 (= (++!17396 testedP!423 lt!2641644) lt!2641704)))

(declare-fun b!7535087 () Bool)

(assert (=> b!7535087 (= e!4490227 (or (not (= lt!2641644 Nil!72638)) (= lt!2641704 testedP!423)))))

(declare-fun b!7535085 () Bool)

(assert (=> b!7535085 (= e!4490228 (Cons!72638 (h!79086 testedP!423) (++!17396 (t!387469 testedP!423) lt!2641644)))))

(declare-fun b!7535084 () Bool)

(assert (=> b!7535084 (= e!4490228 lt!2641644)))

(declare-fun b!7535086 () Bool)

(declare-fun res!3019764 () Bool)

(assert (=> b!7535086 (=> (not res!3019764) (not e!4490227))))

(assert (=> b!7535086 (= res!3019764 (= (size!42375 lt!2641704) (+ (size!42375 testedP!423) (size!42375 lt!2641644))))))

(assert (= (and d!2310327 c!1391434) b!7535084))

(assert (= (and d!2310327 (not c!1391434)) b!7535085))

(assert (= (and d!2310327 res!3019763) b!7535086))

(assert (= (and b!7535086 res!3019764) b!7535087))

(declare-fun m!8106320 () Bool)

(assert (=> d!2310327 m!8106320))

(assert (=> d!2310327 m!8106172))

(declare-fun m!8106322 () Bool)

(assert (=> d!2310327 m!8106322))

(declare-fun m!8106324 () Bool)

(assert (=> b!7535085 m!8106324))

(declare-fun m!8106326 () Bool)

(assert (=> b!7535086 m!8106326))

(assert (=> b!7535086 m!8106074))

(declare-fun m!8106328 () Bool)

(assert (=> b!7535086 m!8106328))

(assert (=> d!2310233 d!2310327))

(assert (=> d!2310233 d!2310243))

(assert (=> d!2310233 d!2310241))

(declare-fun d!2310329 () Bool)

(assert (=> d!2310329 (= (isEmpty!41358 (tail!15026 knownP!30)) ((_ is Nil!72638) (tail!15026 knownP!30)))))

(assert (=> b!7534797 d!2310329))

(declare-fun d!2310331 () Bool)

(assert (=> d!2310331 (= (tail!15026 knownP!30) (t!387469 knownP!30))))

(assert (=> b!7534797 d!2310331))

(declare-fun d!2310333 () Bool)

(assert (=> d!2310333 (= (isEmpty!41358 (tail!15026 (getSuffix!3565 knownP!30 testedP!423))) ((_ is Nil!72638) (tail!15026 (getSuffix!3565 knownP!30 testedP!423))))))

(assert (=> b!7534696 d!2310333))

(declare-fun d!2310335 () Bool)

(assert (=> d!2310335 (= (tail!15026 (getSuffix!3565 knownP!30 testedP!423)) (t!387469 (getSuffix!3565 knownP!30 testedP!423)))))

(assert (=> b!7534696 d!2310335))

(declare-fun d!2310337 () Bool)

(declare-fun lt!2641705 () Int)

(assert (=> d!2310337 (>= lt!2641705 0)))

(declare-fun e!4490229 () Int)

(assert (=> d!2310337 (= lt!2641705 e!4490229)))

(declare-fun c!1391435 () Bool)

(assert (=> d!2310337 (= c!1391435 ((_ is Nil!72638) (t!387469 input!7874)))))

(assert (=> d!2310337 (= (size!42375 (t!387469 input!7874)) lt!2641705)))

(declare-fun b!7535088 () Bool)

(assert (=> b!7535088 (= e!4490229 0)))

(declare-fun b!7535089 () Bool)

(assert (=> b!7535089 (= e!4490229 (+ 1 (size!42375 (t!387469 (t!387469 input!7874)))))))

(assert (= (and d!2310337 c!1391435) b!7535088))

(assert (= (and d!2310337 (not c!1391435)) b!7535089))

(declare-fun m!8106330 () Bool)

(assert (=> b!7535089 m!8106330))

(assert (=> b!7534765 d!2310337))

(declare-fun d!2310339 () Bool)

(assert (=> d!2310339 (= (isEmpty!41358 knownP!30) ((_ is Nil!72638) knownP!30))))

(assert (=> bm!691269 d!2310339))

(assert (=> b!7534817 d!2310249))

(assert (=> b!7534817 d!2310243))

(declare-fun d!2310341 () Bool)

(declare-fun lt!2641706 () Int)

(assert (=> d!2310341 (>= lt!2641706 0)))

(declare-fun e!4490230 () Int)

(assert (=> d!2310341 (= lt!2641706 e!4490230)))

(declare-fun c!1391436 () Bool)

(assert (=> d!2310341 (= c!1391436 ((_ is Nil!72638) (t!387469 testedP!423)))))

(assert (=> d!2310341 (= (size!42375 (t!387469 testedP!423)) lt!2641706)))

(declare-fun b!7535090 () Bool)

(assert (=> b!7535090 (= e!4490230 0)))

(declare-fun b!7535091 () Bool)

(assert (=> b!7535091 (= e!4490230 (+ 1 (size!42375 (t!387469 (t!387469 testedP!423)))))))

(assert (= (and d!2310341 c!1391436) b!7535090))

(assert (= (and d!2310341 (not c!1391436)) b!7535091))

(declare-fun m!8106332 () Bool)

(assert (=> b!7535091 m!8106332))

(assert (=> b!7534725 d!2310341))

(assert (=> b!7534701 d!2310323))

(declare-fun d!2310343 () Bool)

(assert (=> d!2310343 (= (nullable!8664 baseR!101) (nullableFct!3469 baseR!101))))

(declare-fun bs!1939888 () Bool)

(assert (= bs!1939888 d!2310343))

(declare-fun m!8106334 () Bool)

(assert (=> bs!1939888 m!8106334))

(assert (=> b!7534802 d!2310343))

(declare-fun b!7535092 () Bool)

(declare-fun e!4490232 () Bool)

(declare-fun e!4490236 () Bool)

(assert (=> b!7535092 (= e!4490232 e!4490236)))

(declare-fun c!1391438 () Bool)

(assert (=> b!7535092 (= c!1391438 ((_ is Star!19879) (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))))))

(declare-fun b!7535093 () Bool)

(declare-fun e!4490237 () Bool)

(declare-fun call!691293 () Bool)

(assert (=> b!7535093 (= e!4490237 call!691293)))

(declare-fun bm!691286 () Bool)

(declare-fun c!1391437 () Bool)

(declare-fun call!691291 () Bool)

(assert (=> bm!691286 (= call!691291 (validRegex!10307 (ite c!1391438 (reg!20208 (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))) (ite c!1391437 (regOne!40271 (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))) (regOne!40270 (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333))))))))))

(declare-fun b!7535094 () Bool)

(declare-fun e!4490235 () Bool)

(assert (=> b!7535094 (= e!4490235 call!691291)))

(declare-fun b!7535095 () Bool)

(declare-fun e!4490231 () Bool)

(declare-fun e!4490233 () Bool)

(assert (=> b!7535095 (= e!4490231 e!4490233)))

(declare-fun res!3019768 () Bool)

(assert (=> b!7535095 (=> (not res!3019768) (not e!4490233))))

(declare-fun call!691292 () Bool)

(assert (=> b!7535095 (= res!3019768 call!691292)))

(declare-fun b!7535096 () Bool)

(assert (=> b!7535096 (= e!4490233 call!691293)))

(declare-fun b!7535097 () Bool)

(declare-fun e!4490234 () Bool)

(assert (=> b!7535097 (= e!4490236 e!4490234)))

(assert (=> b!7535097 (= c!1391437 ((_ is Union!19879) (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))))))

(declare-fun b!7535098 () Bool)

(declare-fun res!3019765 () Bool)

(assert (=> b!7535098 (=> res!3019765 e!4490231)))

(assert (=> b!7535098 (= res!3019765 (not ((_ is Concat!28724) (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333))))))))

(assert (=> b!7535098 (= e!4490234 e!4490231)))

(declare-fun bm!691288 () Bool)

(assert (=> bm!691288 (= call!691292 call!691291)))

(declare-fun bm!691287 () Bool)

(assert (=> bm!691287 (= call!691293 (validRegex!10307 (ite c!1391437 (regTwo!40271 (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))) (regTwo!40270 (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))))))))

(declare-fun d!2310345 () Bool)

(declare-fun res!3019766 () Bool)

(assert (=> d!2310345 (=> res!3019766 e!4490232)))

(assert (=> d!2310345 (= res!3019766 ((_ is ElementMatch!19879) (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))))))

(assert (=> d!2310345 (= (validRegex!10307 (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))) e!4490232)))

(declare-fun b!7535099 () Bool)

(assert (=> b!7535099 (= e!4490236 e!4490235)))

(declare-fun res!3019769 () Bool)

(assert (=> b!7535099 (= res!3019769 (not (nullable!8664 (reg!20208 (ite c!1391382 (reg!20208 r!24333) (ite c!1391381 (regOne!40271 r!24333) (regOne!40270 r!24333)))))))))

(assert (=> b!7535099 (=> (not res!3019769) (not e!4490235))))

(declare-fun b!7535100 () Bool)

(declare-fun res!3019767 () Bool)

(assert (=> b!7535100 (=> (not res!3019767) (not e!4490237))))

(assert (=> b!7535100 (= res!3019767 call!691292)))

(assert (=> b!7535100 (= e!4490234 e!4490237)))

(assert (= (and d!2310345 (not res!3019766)) b!7535092))

(assert (= (and b!7535092 c!1391438) b!7535099))

(assert (= (and b!7535092 (not c!1391438)) b!7535097))

(assert (= (and b!7535099 res!3019769) b!7535094))

(assert (= (and b!7535097 c!1391437) b!7535100))

(assert (= (and b!7535097 (not c!1391437)) b!7535098))

(assert (= (and b!7535100 res!3019767) b!7535093))

(assert (= (and b!7535098 (not res!3019765)) b!7535095))

(assert (= (and b!7535095 res!3019768) b!7535096))

(assert (= (or b!7535100 b!7535095) bm!691288))

(assert (= (or b!7535093 b!7535096) bm!691287))

(assert (= (or b!7535094 bm!691288) bm!691286))

(declare-fun m!8106336 () Bool)

(assert (=> bm!691286 m!8106336))

(declare-fun m!8106338 () Bool)

(assert (=> bm!691287 m!8106338))

(declare-fun m!8106340 () Bool)

(assert (=> b!7535099 m!8106340))

(assert (=> bm!691263 d!2310345))

(declare-fun d!2310347 () Bool)

(declare-fun e!4490238 () Bool)

(assert (=> d!2310347 e!4490238))

(declare-fun res!3019770 () Bool)

(assert (=> d!2310347 (=> (not res!3019770) (not e!4490238))))

(declare-fun lt!2641707 () List!72762)

(assert (=> d!2310347 (= res!3019770 (= (content!15353 lt!2641707) ((_ map or) (content!15353 testedP!423) (content!15353 lt!2641663))))))

(declare-fun e!4490239 () List!72762)

(assert (=> d!2310347 (= lt!2641707 e!4490239)))

(declare-fun c!1391439 () Bool)

(assert (=> d!2310347 (= c!1391439 ((_ is Nil!72638) testedP!423))))

(assert (=> d!2310347 (= (++!17396 testedP!423 lt!2641663) lt!2641707)))

(declare-fun b!7535104 () Bool)

(assert (=> b!7535104 (= e!4490238 (or (not (= lt!2641663 Nil!72638)) (= lt!2641707 testedP!423)))))

(declare-fun b!7535102 () Bool)

(assert (=> b!7535102 (= e!4490239 (Cons!72638 (h!79086 testedP!423) (++!17396 (t!387469 testedP!423) lt!2641663)))))

(declare-fun b!7535101 () Bool)

(assert (=> b!7535101 (= e!4490239 lt!2641663)))

(declare-fun b!7535103 () Bool)

(declare-fun res!3019771 () Bool)

(assert (=> b!7535103 (=> (not res!3019771) (not e!4490238))))

(assert (=> b!7535103 (= res!3019771 (= (size!42375 lt!2641707) (+ (size!42375 testedP!423) (size!42375 lt!2641663))))))

(assert (= (and d!2310347 c!1391439) b!7535101))

(assert (= (and d!2310347 (not c!1391439)) b!7535102))

(assert (= (and d!2310347 res!3019770) b!7535103))

(assert (= (and b!7535103 res!3019771) b!7535104))

(declare-fun m!8106342 () Bool)

(assert (=> d!2310347 m!8106342))

(assert (=> d!2310347 m!8106172))

(declare-fun m!8106344 () Bool)

(assert (=> d!2310347 m!8106344))

(declare-fun m!8106346 () Bool)

(assert (=> b!7535102 m!8106346))

(declare-fun m!8106348 () Bool)

(assert (=> b!7535103 m!8106348))

(assert (=> b!7535103 m!8106074))

(declare-fun m!8106350 () Bool)

(assert (=> b!7535103 m!8106350))

(assert (=> d!2310259 d!2310347))

(assert (=> d!2310259 d!2310249))

(assert (=> d!2310259 d!2310241))

(assert (=> d!2310263 d!2310259))

(declare-fun b!7535107 () Bool)

(declare-fun e!4490240 () Bool)

(assert (=> b!7535107 (= e!4490240 (isPrefix!6085 (tail!15026 (++!17396 testedP!423 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638))) (tail!15026 input!7874)))))

(declare-fun b!7535108 () Bool)

(declare-fun e!4490241 () Bool)

(assert (=> b!7535108 (= e!4490241 (>= (size!42375 input!7874) (size!42375 (++!17396 testedP!423 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638)))))))

(declare-fun b!7535106 () Bool)

(declare-fun res!3019773 () Bool)

(assert (=> b!7535106 (=> (not res!3019773) (not e!4490240))))

(assert (=> b!7535106 (= res!3019773 (= (head!15469 (++!17396 testedP!423 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638))) (head!15469 input!7874)))))

(declare-fun b!7535105 () Bool)

(declare-fun e!4490242 () Bool)

(assert (=> b!7535105 (= e!4490242 e!4490240)))

(declare-fun res!3019775 () Bool)

(assert (=> b!7535105 (=> (not res!3019775) (not e!4490240))))

(assert (=> b!7535105 (= res!3019775 (not ((_ is Nil!72638) input!7874)))))

(declare-fun d!2310349 () Bool)

(assert (=> d!2310349 e!4490241))

(declare-fun res!3019774 () Bool)

(assert (=> d!2310349 (=> res!3019774 e!4490241)))

(declare-fun lt!2641708 () Bool)

(assert (=> d!2310349 (= res!3019774 (not lt!2641708))))

(assert (=> d!2310349 (= lt!2641708 e!4490242)))

(declare-fun res!3019772 () Bool)

(assert (=> d!2310349 (=> res!3019772 e!4490242)))

(assert (=> d!2310349 (= res!3019772 ((_ is Nil!72638) (++!17396 testedP!423 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638))))))

(assert (=> d!2310349 (= (isPrefix!6085 (++!17396 testedP!423 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638)) input!7874) lt!2641708)))

(assert (= (and d!2310349 (not res!3019772)) b!7535105))

(assert (= (and b!7535105 res!3019775) b!7535106))

(assert (= (and b!7535106 res!3019773) b!7535107))

(assert (= (and d!2310349 (not res!3019774)) b!7535108))

(assert (=> b!7535107 m!8106186))

(declare-fun m!8106352 () Bool)

(assert (=> b!7535107 m!8106352))

(assert (=> b!7535107 m!8106160))

(assert (=> b!7535107 m!8106352))

(assert (=> b!7535107 m!8106160))

(declare-fun m!8106354 () Bool)

(assert (=> b!7535107 m!8106354))

(assert (=> b!7535108 m!8106078))

(assert (=> b!7535108 m!8106186))

(declare-fun m!8106356 () Bool)

(assert (=> b!7535108 m!8106356))

(assert (=> b!7535106 m!8106186))

(declare-fun m!8106358 () Bool)

(assert (=> b!7535106 m!8106358))

(assert (=> b!7535106 m!8106164))

(assert (=> d!2310263 d!2310349))

(declare-fun d!2310351 () Bool)

(assert (=> d!2310351 (isPrefix!6085 (++!17396 testedP!423 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638)) input!7874)))

(assert (=> d!2310351 true))

(declare-fun _$65!1889 () Unit!166696)

(assert (=> d!2310351 (= (choose!58290 testedP!423 input!7874) _$65!1889)))

(declare-fun bs!1939889 () Bool)

(assert (= bs!1939889 d!2310351))

(assert (=> bs!1939889 m!8106070))

(assert (=> bs!1939889 m!8106070))

(assert (=> bs!1939889 m!8106184))

(assert (=> bs!1939889 m!8106186))

(assert (=> bs!1939889 m!8106186))

(assert (=> bs!1939889 m!8106188))

(assert (=> d!2310263 d!2310351))

(assert (=> d!2310263 d!2310269))

(declare-fun d!2310353 () Bool)

(declare-fun e!4490243 () Bool)

(assert (=> d!2310353 e!4490243))

(declare-fun res!3019776 () Bool)

(assert (=> d!2310353 (=> (not res!3019776) (not e!4490243))))

(declare-fun lt!2641709 () List!72762)

(assert (=> d!2310353 (= res!3019776 (= (content!15353 lt!2641709) ((_ map or) (content!15353 testedP!423) (content!15353 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638)))))))

(declare-fun e!4490244 () List!72762)

(assert (=> d!2310353 (= lt!2641709 e!4490244)))

(declare-fun c!1391440 () Bool)

(assert (=> d!2310353 (= c!1391440 ((_ is Nil!72638) testedP!423))))

(assert (=> d!2310353 (= (++!17396 testedP!423 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638)) lt!2641709)))

(declare-fun b!7535112 () Bool)

(assert (=> b!7535112 (= e!4490243 (or (not (= (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638) Nil!72638)) (= lt!2641709 testedP!423)))))

(declare-fun b!7535110 () Bool)

(assert (=> b!7535110 (= e!4490244 (Cons!72638 (h!79086 testedP!423) (++!17396 (t!387469 testedP!423) (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638))))))

(declare-fun b!7535109 () Bool)

(assert (=> b!7535109 (= e!4490244 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638))))

(declare-fun b!7535111 () Bool)

(declare-fun res!3019777 () Bool)

(assert (=> b!7535111 (=> (not res!3019777) (not e!4490243))))

(assert (=> b!7535111 (= res!3019777 (= (size!42375 lt!2641709) (+ (size!42375 testedP!423) (size!42375 (Cons!72638 (head!15469 (getSuffix!3565 input!7874 testedP!423)) Nil!72638)))))))

(assert (= (and d!2310353 c!1391440) b!7535109))

(assert (= (and d!2310353 (not c!1391440)) b!7535110))

(assert (= (and d!2310353 res!3019776) b!7535111))

(assert (= (and b!7535111 res!3019777) b!7535112))

(declare-fun m!8106360 () Bool)

(assert (=> d!2310353 m!8106360))

(assert (=> d!2310353 m!8106172))

(declare-fun m!8106362 () Bool)

(assert (=> d!2310353 m!8106362))

(declare-fun m!8106364 () Bool)

(assert (=> b!7535110 m!8106364))

(declare-fun m!8106366 () Bool)

(assert (=> b!7535111 m!8106366))

(assert (=> b!7535111 m!8106074))

(declare-fun m!8106368 () Bool)

(assert (=> b!7535111 m!8106368))

(assert (=> d!2310263 d!2310353))

(declare-fun d!2310355 () Bool)

(assert (=> d!2310355 (= (head!15469 (getSuffix!3565 input!7874 testedP!423)) (h!79086 (getSuffix!3565 input!7874 testedP!423)))))

(assert (=> d!2310263 d!2310355))

(assert (=> b!7534689 d!2310333))

(assert (=> b!7534689 d!2310335))

(assert (=> b!7534809 d!2310321))

(declare-fun b!7535113 () Bool)

(declare-fun e!4490246 () Bool)

(declare-fun e!4490250 () Bool)

(assert (=> b!7535113 (= e!4490246 e!4490250)))

(declare-fun c!1391442 () Bool)

(assert (=> b!7535113 (= c!1391442 ((_ is Star!19879) (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))))))

(declare-fun b!7535114 () Bool)

(declare-fun e!4490251 () Bool)

(declare-fun call!691296 () Bool)

(assert (=> b!7535114 (= e!4490251 call!691296)))

(declare-fun c!1391441 () Bool)

(declare-fun call!691294 () Bool)

(declare-fun bm!691289 () Bool)

(assert (=> bm!691289 (= call!691294 (validRegex!10307 (ite c!1391442 (reg!20208 (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))) (ite c!1391441 (regOne!40271 (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))) (regOne!40270 (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101)))))))))

(declare-fun b!7535115 () Bool)

(declare-fun e!4490249 () Bool)

(assert (=> b!7535115 (= e!4490249 call!691294)))

(declare-fun b!7535116 () Bool)

(declare-fun e!4490245 () Bool)

(declare-fun e!4490247 () Bool)

(assert (=> b!7535116 (= e!4490245 e!4490247)))

(declare-fun res!3019781 () Bool)

(assert (=> b!7535116 (=> (not res!3019781) (not e!4490247))))

(declare-fun call!691295 () Bool)

(assert (=> b!7535116 (= res!3019781 call!691295)))

(declare-fun b!7535117 () Bool)

(assert (=> b!7535117 (= e!4490247 call!691296)))

(declare-fun b!7535118 () Bool)

(declare-fun e!4490248 () Bool)

(assert (=> b!7535118 (= e!4490250 e!4490248)))

(assert (=> b!7535118 (= c!1391441 ((_ is Union!19879) (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))))))

(declare-fun b!7535119 () Bool)

(declare-fun res!3019778 () Bool)

(assert (=> b!7535119 (=> res!3019778 e!4490245)))

(assert (=> b!7535119 (= res!3019778 (not ((_ is Concat!28724) (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101)))))))

(assert (=> b!7535119 (= e!4490248 e!4490245)))

(declare-fun bm!691291 () Bool)

(assert (=> bm!691291 (= call!691295 call!691294)))

(declare-fun bm!691290 () Bool)

(assert (=> bm!691290 (= call!691296 (validRegex!10307 (ite c!1391441 (regTwo!40271 (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))) (regTwo!40270 (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))))))))

(declare-fun d!2310357 () Bool)

(declare-fun res!3019779 () Bool)

(assert (=> d!2310357 (=> res!3019779 e!4490246)))

(assert (=> d!2310357 (= res!3019779 ((_ is ElementMatch!19879) (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))))))

(assert (=> d!2310357 (= (validRegex!10307 (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))) e!4490246)))

(declare-fun b!7535120 () Bool)

(assert (=> b!7535120 (= e!4490250 e!4490249)))

(declare-fun res!3019782 () Bool)

(assert (=> b!7535120 (= res!3019782 (not (nullable!8664 (reg!20208 (ite c!1391383 (regTwo!40271 baseR!101) (regTwo!40270 baseR!101))))))))

(assert (=> b!7535120 (=> (not res!3019782) (not e!4490249))))

(declare-fun b!7535121 () Bool)

(declare-fun res!3019780 () Bool)

(assert (=> b!7535121 (=> (not res!3019780) (not e!4490251))))

(assert (=> b!7535121 (= res!3019780 call!691295)))

(assert (=> b!7535121 (= e!4490248 e!4490251)))

(assert (= (and d!2310357 (not res!3019779)) b!7535113))

(assert (= (and b!7535113 c!1391442) b!7535120))

(assert (= (and b!7535113 (not c!1391442)) b!7535118))

(assert (= (and b!7535120 res!3019782) b!7535115))

(assert (= (and b!7535118 c!1391441) b!7535121))

(assert (= (and b!7535118 (not c!1391441)) b!7535119))

(assert (= (and b!7535121 res!3019780) b!7535114))

(assert (= (and b!7535119 (not res!3019778)) b!7535116))

(assert (= (and b!7535116 res!3019781) b!7535117))

(assert (= (or b!7535121 b!7535116) bm!691291))

(assert (= (or b!7535114 b!7535117) bm!691290))

(assert (= (or b!7535115 bm!691291) bm!691289))

(declare-fun m!8106370 () Bool)

(assert (=> bm!691289 m!8106370))

(declare-fun m!8106372 () Bool)

(assert (=> bm!691290 m!8106372))

(declare-fun m!8106374 () Bool)

(assert (=> b!7535120 m!8106374))

(assert (=> bm!691267 d!2310357))

(declare-fun b!7535122 () Bool)

(declare-fun e!4490253 () Bool)

(declare-fun e!4490257 () Bool)

(assert (=> b!7535122 (= e!4490253 e!4490257)))

(declare-fun c!1391444 () Bool)

(assert (=> b!7535122 (= c!1391444 ((_ is Star!19879) lt!2641660))))

(declare-fun b!7535123 () Bool)

(declare-fun e!4490258 () Bool)

(declare-fun call!691299 () Bool)

(assert (=> b!7535123 (= e!4490258 call!691299)))

(declare-fun bm!691292 () Bool)

(declare-fun c!1391443 () Bool)

(declare-fun call!691297 () Bool)

(assert (=> bm!691292 (= call!691297 (validRegex!10307 (ite c!1391444 (reg!20208 lt!2641660) (ite c!1391443 (regOne!40271 lt!2641660) (regOne!40270 lt!2641660)))))))

(declare-fun b!7535124 () Bool)

(declare-fun e!4490256 () Bool)

(assert (=> b!7535124 (= e!4490256 call!691297)))

(declare-fun b!7535125 () Bool)

(declare-fun e!4490252 () Bool)

(declare-fun e!4490254 () Bool)

(assert (=> b!7535125 (= e!4490252 e!4490254)))

(declare-fun res!3019786 () Bool)

(assert (=> b!7535125 (=> (not res!3019786) (not e!4490254))))

(declare-fun call!691298 () Bool)

(assert (=> b!7535125 (= res!3019786 call!691298)))

(declare-fun b!7535126 () Bool)

(assert (=> b!7535126 (= e!4490254 call!691299)))

(declare-fun b!7535127 () Bool)

(declare-fun e!4490255 () Bool)

(assert (=> b!7535127 (= e!4490257 e!4490255)))

(assert (=> b!7535127 (= c!1391443 ((_ is Union!19879) lt!2641660))))

(declare-fun b!7535128 () Bool)

(declare-fun res!3019783 () Bool)

(assert (=> b!7535128 (=> res!3019783 e!4490252)))

(assert (=> b!7535128 (= res!3019783 (not ((_ is Concat!28724) lt!2641660)))))

(assert (=> b!7535128 (= e!4490255 e!4490252)))

(declare-fun bm!691294 () Bool)

(assert (=> bm!691294 (= call!691298 call!691297)))

(declare-fun bm!691293 () Bool)

(assert (=> bm!691293 (= call!691299 (validRegex!10307 (ite c!1391443 (regTwo!40271 lt!2641660) (regTwo!40270 lt!2641660))))))

(declare-fun d!2310359 () Bool)

(declare-fun res!3019784 () Bool)

(assert (=> d!2310359 (=> res!3019784 e!4490253)))

(assert (=> d!2310359 (= res!3019784 ((_ is ElementMatch!19879) lt!2641660))))

(assert (=> d!2310359 (= (validRegex!10307 lt!2641660) e!4490253)))

(declare-fun b!7535129 () Bool)

(assert (=> b!7535129 (= e!4490257 e!4490256)))

(declare-fun res!3019787 () Bool)

(assert (=> b!7535129 (= res!3019787 (not (nullable!8664 (reg!20208 lt!2641660))))))

(assert (=> b!7535129 (=> (not res!3019787) (not e!4490256))))

(declare-fun b!7535130 () Bool)

(declare-fun res!3019785 () Bool)

(assert (=> b!7535130 (=> (not res!3019785) (not e!4490258))))

(assert (=> b!7535130 (= res!3019785 call!691298)))

(assert (=> b!7535130 (= e!4490255 e!4490258)))

(assert (= (and d!2310359 (not res!3019784)) b!7535122))

(assert (= (and b!7535122 c!1391444) b!7535129))

(assert (= (and b!7535122 (not c!1391444)) b!7535127))

(assert (= (and b!7535129 res!3019787) b!7535124))

(assert (= (and b!7535127 c!1391443) b!7535130))

(assert (= (and b!7535127 (not c!1391443)) b!7535128))

(assert (= (and b!7535130 res!3019785) b!7535123))

(assert (= (and b!7535128 (not res!3019783)) b!7535125))

(assert (= (and b!7535125 res!3019786) b!7535126))

(assert (= (or b!7535130 b!7535125) bm!691294))

(assert (= (or b!7535123 b!7535126) bm!691293))

(assert (= (or b!7535124 bm!691294) bm!691292))

(declare-fun m!8106376 () Bool)

(assert (=> bm!691292 m!8106376))

(declare-fun m!8106378 () Bool)

(assert (=> bm!691293 m!8106378))

(declare-fun m!8106380 () Bool)

(assert (=> b!7535129 m!8106380))

(assert (=> d!2310251 d!2310359))

(assert (=> d!2310251 d!2310247))

(declare-fun d!2310361 () Bool)

(declare-fun e!4490259 () Bool)

(assert (=> d!2310361 e!4490259))

(declare-fun res!3019788 () Bool)

(assert (=> d!2310361 (=> (not res!3019788) (not e!4490259))))

(declare-fun lt!2641710 () List!72762)

(assert (=> d!2310361 (= res!3019788 (= (content!15353 lt!2641710) ((_ map or) (content!15353 (t!387469 testedP!423)) (content!15353 (Cons!72638 (head!15469 lt!2641636) Nil!72638)))))))

(declare-fun e!4490260 () List!72762)

(assert (=> d!2310361 (= lt!2641710 e!4490260)))

(declare-fun c!1391445 () Bool)

(assert (=> d!2310361 (= c!1391445 ((_ is Nil!72638) (t!387469 testedP!423)))))

(assert (=> d!2310361 (= (++!17396 (t!387469 testedP!423) (Cons!72638 (head!15469 lt!2641636) Nil!72638)) lt!2641710)))

(declare-fun b!7535134 () Bool)

(assert (=> b!7535134 (= e!4490259 (or (not (= (Cons!72638 (head!15469 lt!2641636) Nil!72638) Nil!72638)) (= lt!2641710 (t!387469 testedP!423))))))

(declare-fun b!7535132 () Bool)

(assert (=> b!7535132 (= e!4490260 (Cons!72638 (h!79086 (t!387469 testedP!423)) (++!17396 (t!387469 (t!387469 testedP!423)) (Cons!72638 (head!15469 lt!2641636) Nil!72638))))))

(declare-fun b!7535131 () Bool)

(assert (=> b!7535131 (= e!4490260 (Cons!72638 (head!15469 lt!2641636) Nil!72638))))

(declare-fun b!7535133 () Bool)

(declare-fun res!3019789 () Bool)

(assert (=> b!7535133 (=> (not res!3019789) (not e!4490259))))

(assert (=> b!7535133 (= res!3019789 (= (size!42375 lt!2641710) (+ (size!42375 (t!387469 testedP!423)) (size!42375 (Cons!72638 (head!15469 lt!2641636) Nil!72638)))))))

(assert (= (and d!2310361 c!1391445) b!7535131))

(assert (= (and d!2310361 (not c!1391445)) b!7535132))

(assert (= (and d!2310361 res!3019788) b!7535133))

(assert (= (and b!7535133 res!3019789) b!7535134))

(declare-fun m!8106382 () Bool)

(assert (=> d!2310361 m!8106382))

(declare-fun m!8106384 () Bool)

(assert (=> d!2310361 m!8106384))

(assert (=> d!2310361 m!8106174))

(declare-fun m!8106386 () Bool)

(assert (=> b!7535132 m!8106386))

(declare-fun m!8106388 () Bool)

(assert (=> b!7535133 m!8106388))

(assert (=> b!7535133 m!8106124))

(assert (=> b!7535133 m!8106180))

(assert (=> b!7534829 d!2310361))

(declare-fun b!7535137 () Bool)

(declare-fun e!4490261 () Bool)

(assert (=> b!7535137 (= e!4490261 (isPrefix!6085 (tail!15026 (tail!15026 testedP!423)) (tail!15026 (tail!15026 input!7874))))))

(declare-fun b!7535138 () Bool)

(declare-fun e!4490262 () Bool)

(assert (=> b!7535138 (= e!4490262 (>= (size!42375 (tail!15026 input!7874)) (size!42375 (tail!15026 testedP!423))))))

(declare-fun b!7535136 () Bool)

(declare-fun res!3019791 () Bool)

(assert (=> b!7535136 (=> (not res!3019791) (not e!4490261))))

(assert (=> b!7535136 (= res!3019791 (= (head!15469 (tail!15026 testedP!423)) (head!15469 (tail!15026 input!7874))))))

(declare-fun b!7535135 () Bool)

(declare-fun e!4490263 () Bool)

(assert (=> b!7535135 (= e!4490263 e!4490261)))

(declare-fun res!3019793 () Bool)

(assert (=> b!7535135 (=> (not res!3019793) (not e!4490261))))

(assert (=> b!7535135 (= res!3019793 (not ((_ is Nil!72638) (tail!15026 input!7874))))))

(declare-fun d!2310363 () Bool)

(assert (=> d!2310363 e!4490262))

(declare-fun res!3019792 () Bool)

(assert (=> d!2310363 (=> res!3019792 e!4490262)))

(declare-fun lt!2641711 () Bool)

(assert (=> d!2310363 (= res!3019792 (not lt!2641711))))

(assert (=> d!2310363 (= lt!2641711 e!4490263)))

(declare-fun res!3019790 () Bool)

(assert (=> d!2310363 (=> res!3019790 e!4490263)))

(assert (=> d!2310363 (= res!3019790 ((_ is Nil!72638) (tail!15026 testedP!423)))))

(assert (=> d!2310363 (= (isPrefix!6085 (tail!15026 testedP!423) (tail!15026 input!7874)) lt!2641711)))

(assert (= (and d!2310363 (not res!3019790)) b!7535135))

(assert (= (and b!7535135 res!3019793) b!7535136))

(assert (= (and b!7535136 res!3019791) b!7535137))

(assert (= (and d!2310363 (not res!3019792)) b!7535138))

(assert (=> b!7535137 m!8106114))

(declare-fun m!8106390 () Bool)

(assert (=> b!7535137 m!8106390))

(assert (=> b!7535137 m!8106160))

(assert (=> b!7535137 m!8106314))

(assert (=> b!7535137 m!8106390))

(assert (=> b!7535137 m!8106314))

(declare-fun m!8106392 () Bool)

(assert (=> b!7535137 m!8106392))

(assert (=> b!7535138 m!8106160))

(assert (=> b!7535138 m!8106312))

(assert (=> b!7535138 m!8106114))

(declare-fun m!8106394 () Bool)

(assert (=> b!7535138 m!8106394))

(assert (=> b!7535136 m!8106114))

(declare-fun m!8106396 () Bool)

(assert (=> b!7535136 m!8106396))

(assert (=> b!7535136 m!8106160))

(declare-fun m!8106398 () Bool)

(assert (=> b!7535136 m!8106398))

(assert (=> b!7534852 d!2310363))

(declare-fun d!2310365 () Bool)

(assert (=> d!2310365 (= (tail!15026 testedP!423) (t!387469 testedP!423))))

(assert (=> b!7534852 d!2310365))

(assert (=> b!7534852 d!2310317))

(declare-fun d!2310367 () Bool)

(assert (=> d!2310367 (= (nullable!8664 r!24333) (nullableFct!3469 r!24333))))

(declare-fun bs!1939890 () Bool)

(assert (= bs!1939890 d!2310367))

(declare-fun m!8106400 () Bool)

(assert (=> bs!1939890 m!8106400))

(assert (=> b!7534694 d!2310367))

(declare-fun d!2310369 () Bool)

(declare-fun lt!2641712 () List!72762)

(assert (=> d!2310369 (= (++!17396 (t!387469 testedP!423) lt!2641712) (tail!15026 knownP!30))))

(declare-fun e!4490264 () List!72762)

(assert (=> d!2310369 (= lt!2641712 e!4490264)))

(declare-fun c!1391446 () Bool)

(assert (=> d!2310369 (= c!1391446 ((_ is Cons!72638) (t!387469 testedP!423)))))

(assert (=> d!2310369 (>= (size!42375 (tail!15026 knownP!30)) (size!42375 (t!387469 testedP!423)))))

(assert (=> d!2310369 (= (getSuffix!3565 (tail!15026 knownP!30) (t!387469 testedP!423)) lt!2641712)))

(declare-fun b!7535139 () Bool)

(assert (=> b!7535139 (= e!4490264 (getSuffix!3565 (tail!15026 (tail!15026 knownP!30)) (t!387469 (t!387469 testedP!423))))))

(declare-fun b!7535140 () Bool)

(assert (=> b!7535140 (= e!4490264 (tail!15026 knownP!30))))

(assert (= (and d!2310369 c!1391446) b!7535139))

(assert (= (and d!2310369 (not c!1391446)) b!7535140))

(declare-fun m!8106402 () Bool)

(assert (=> d!2310369 m!8106402))

(assert (=> d!2310369 m!8106110))

(declare-fun m!8106404 () Bool)

(assert (=> d!2310369 m!8106404))

(assert (=> d!2310369 m!8106124))

(assert (=> b!7535139 m!8106110))

(declare-fun m!8106406 () Bool)

(assert (=> b!7535139 m!8106406))

(assert (=> b!7535139 m!8106406))

(declare-fun m!8106408 () Bool)

(assert (=> b!7535139 m!8106408))

(assert (=> b!7534706 d!2310369))

(assert (=> b!7534706 d!2310331))

(declare-fun b!7535141 () Bool)

(declare-fun e!4490266 () Bool)

(declare-fun e!4490268 () Bool)

(assert (=> b!7535141 (= e!4490266 e!4490268)))

(declare-fun res!3019794 () Bool)

(assert (=> b!7535141 (=> res!3019794 e!4490268)))

(declare-fun call!691300 () Bool)

(assert (=> b!7535141 (= res!3019794 call!691300)))

(declare-fun b!7535142 () Bool)

(declare-fun res!3019798 () Bool)

(declare-fun e!4490267 () Bool)

(assert (=> b!7535142 (=> (not res!3019798) (not e!4490267))))

(assert (=> b!7535142 (= res!3019798 (isEmpty!41358 (tail!15026 (tail!15026 (getSuffix!3565 knownP!30 testedP!423)))))))

(declare-fun b!7535143 () Bool)

(declare-fun e!4490269 () Bool)

(assert (=> b!7535143 (= e!4490269 (matchR!9481 (derivativeStep!5670 (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423))) (head!15469 (tail!15026 (getSuffix!3565 knownP!30 testedP!423)))) (tail!15026 (tail!15026 (getSuffix!3565 knownP!30 testedP!423)))))))

(declare-fun b!7535144 () Bool)

(declare-fun e!4490271 () Bool)

(assert (=> b!7535144 (= e!4490271 e!4490266)))

(declare-fun res!3019800 () Bool)

(assert (=> b!7535144 (=> (not res!3019800) (not e!4490266))))

(declare-fun lt!2641713 () Bool)

(assert (=> b!7535144 (= res!3019800 (not lt!2641713))))

(declare-fun b!7535146 () Bool)

(declare-fun e!4490270 () Bool)

(assert (=> b!7535146 (= e!4490270 (not lt!2641713))))

(declare-fun b!7535147 () Bool)

(assert (=> b!7535147 (= e!4490269 (nullable!8664 (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423)))))))

(declare-fun b!7535148 () Bool)

(declare-fun res!3019799 () Bool)

(assert (=> b!7535148 (=> (not res!3019799) (not e!4490267))))

(assert (=> b!7535148 (= res!3019799 (not call!691300))))

(declare-fun bm!691295 () Bool)

(assert (=> bm!691295 (= call!691300 (isEmpty!41358 (tail!15026 (getSuffix!3565 knownP!30 testedP!423))))))

(declare-fun b!7535149 () Bool)

(declare-fun res!3019795 () Bool)

(assert (=> b!7535149 (=> res!3019795 e!4490268)))

(assert (=> b!7535149 (= res!3019795 (not (isEmpty!41358 (tail!15026 (tail!15026 (getSuffix!3565 knownP!30 testedP!423))))))))

(declare-fun b!7535150 () Bool)

(declare-fun e!4490265 () Bool)

(assert (=> b!7535150 (= e!4490265 (= lt!2641713 call!691300))))

(declare-fun b!7535151 () Bool)

(assert (=> b!7535151 (= e!4490267 (= (head!15469 (tail!15026 (getSuffix!3565 knownP!30 testedP!423))) (c!1391360 (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423))))))))

(declare-fun b!7535152 () Bool)

(declare-fun res!3019796 () Bool)

(assert (=> b!7535152 (=> res!3019796 e!4490271)))

(assert (=> b!7535152 (= res!3019796 (not ((_ is ElementMatch!19879) (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423))))))))

(assert (=> b!7535152 (= e!4490270 e!4490271)))

(declare-fun b!7535145 () Bool)

(assert (=> b!7535145 (= e!4490265 e!4490270)))

(declare-fun c!1391448 () Bool)

(assert (=> b!7535145 (= c!1391448 ((_ is EmptyLang!19879) (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423)))))))

(declare-fun d!2310371 () Bool)

(assert (=> d!2310371 e!4490265))

(declare-fun c!1391447 () Bool)

(assert (=> d!2310371 (= c!1391447 ((_ is EmptyExpr!19879) (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423)))))))

(assert (=> d!2310371 (= lt!2641713 e!4490269)))

(declare-fun c!1391449 () Bool)

(assert (=> d!2310371 (= c!1391449 (isEmpty!41358 (tail!15026 (getSuffix!3565 knownP!30 testedP!423))))))

(assert (=> d!2310371 (validRegex!10307 (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423))))))

(assert (=> d!2310371 (= (matchR!9481 (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423))) (tail!15026 (getSuffix!3565 knownP!30 testedP!423))) lt!2641713)))

(declare-fun b!7535153 () Bool)

(declare-fun res!3019801 () Bool)

(assert (=> b!7535153 (=> res!3019801 e!4490271)))

(assert (=> b!7535153 (= res!3019801 e!4490267)))

(declare-fun res!3019797 () Bool)

(assert (=> b!7535153 (=> (not res!3019797) (not e!4490267))))

(assert (=> b!7535153 (= res!3019797 lt!2641713)))

(declare-fun b!7535154 () Bool)

(assert (=> b!7535154 (= e!4490268 (not (= (head!15469 (tail!15026 (getSuffix!3565 knownP!30 testedP!423))) (c!1391360 (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423)))))))))

(assert (= (and d!2310371 c!1391449) b!7535147))

(assert (= (and d!2310371 (not c!1391449)) b!7535143))

(assert (= (and d!2310371 c!1391447) b!7535150))

(assert (= (and d!2310371 (not c!1391447)) b!7535145))

(assert (= (and b!7535145 c!1391448) b!7535146))

(assert (= (and b!7535145 (not c!1391448)) b!7535152))

(assert (= (and b!7535152 (not res!3019796)) b!7535153))

(assert (= (and b!7535153 res!3019797) b!7535148))

(assert (= (and b!7535148 res!3019799) b!7535142))

(assert (= (and b!7535142 res!3019798) b!7535151))

(assert (= (and b!7535153 (not res!3019801)) b!7535144))

(assert (= (and b!7535144 res!3019800) b!7535141))

(assert (= (and b!7535141 (not res!3019794)) b!7535149))

(assert (= (and b!7535149 (not res!3019795)) b!7535154))

(assert (= (or b!7535150 b!7535141 b!7535148) bm!691295))

(assert (=> b!7535149 m!8106094))

(declare-fun m!8106410 () Bool)

(assert (=> b!7535149 m!8106410))

(assert (=> b!7535149 m!8106410))

(declare-fun m!8106412 () Bool)

(assert (=> b!7535149 m!8106412))

(assert (=> b!7535154 m!8106094))

(declare-fun m!8106414 () Bool)

(assert (=> b!7535154 m!8106414))

(assert (=> b!7535147 m!8106102))

(declare-fun m!8106416 () Bool)

(assert (=> b!7535147 m!8106416))

(assert (=> b!7535151 m!8106094))

(assert (=> b!7535151 m!8106414))

(assert (=> b!7535143 m!8106094))

(assert (=> b!7535143 m!8106414))

(assert (=> b!7535143 m!8106102))

(assert (=> b!7535143 m!8106414))

(declare-fun m!8106418 () Bool)

(assert (=> b!7535143 m!8106418))

(assert (=> b!7535143 m!8106094))

(assert (=> b!7535143 m!8106410))

(assert (=> b!7535143 m!8106418))

(assert (=> b!7535143 m!8106410))

(declare-fun m!8106420 () Bool)

(assert (=> b!7535143 m!8106420))

(assert (=> b!7535142 m!8106094))

(assert (=> b!7535142 m!8106410))

(assert (=> b!7535142 m!8106410))

(assert (=> b!7535142 m!8106412))

(assert (=> bm!691295 m!8106094))

(assert (=> bm!691295 m!8106096))

(assert (=> d!2310371 m!8106094))

(assert (=> d!2310371 m!8106096))

(assert (=> d!2310371 m!8106102))

(declare-fun m!8106422 () Bool)

(assert (=> d!2310371 m!8106422))

(assert (=> b!7534690 d!2310371))

(declare-fun call!691312 () Regex!19879)

(declare-fun b!7535175 () Bool)

(declare-fun call!691309 () Regex!19879)

(declare-fun e!4490283 () Regex!19879)

(assert (=> b!7535175 (= e!4490283 (Union!19879 (Concat!28724 call!691309 (regTwo!40270 r!24333)) call!691312))))

(declare-fun b!7535177 () Bool)

(assert (=> b!7535177 (= e!4490283 (Union!19879 (Concat!28724 call!691309 (regTwo!40270 r!24333)) EmptyLang!19879))))

(declare-fun b!7535178 () Bool)

(declare-fun e!4490286 () Regex!19879)

(declare-fun call!691310 () Regex!19879)

(assert (=> b!7535178 (= e!4490286 (Union!19879 call!691312 call!691310))))

(declare-fun bm!691304 () Bool)

(declare-fun call!691311 () Regex!19879)

(assert (=> bm!691304 (= call!691311 call!691310)))

(declare-fun b!7535179 () Bool)

(declare-fun e!4490284 () Regex!19879)

(assert (=> b!7535179 (= e!4490284 EmptyLang!19879)))

(declare-fun b!7535180 () Bool)

(declare-fun c!1391460 () Bool)

(assert (=> b!7535180 (= c!1391460 (nullable!8664 (regOne!40270 r!24333)))))

(declare-fun e!4490282 () Regex!19879)

(assert (=> b!7535180 (= e!4490282 e!4490283)))

(declare-fun e!4490285 () Regex!19879)

(declare-fun b!7535181 () Bool)

(assert (=> b!7535181 (= e!4490285 (ite (= (head!15469 (getSuffix!3565 knownP!30 testedP!423)) (c!1391360 r!24333)) EmptyExpr!19879 EmptyLang!19879))))

(declare-fun bm!691305 () Bool)

(declare-fun c!1391464 () Bool)

(assert (=> bm!691305 (= call!691312 (derivativeStep!5670 (ite c!1391464 (regOne!40271 r!24333) (regTwo!40270 r!24333)) (head!15469 (getSuffix!3565 knownP!30 testedP!423))))))

(declare-fun bm!691306 () Bool)

(assert (=> bm!691306 (= call!691309 call!691311)))

(declare-fun b!7535176 () Bool)

(assert (=> b!7535176 (= e!4490284 e!4490285)))

(declare-fun c!1391463 () Bool)

(assert (=> b!7535176 (= c!1391463 ((_ is ElementMatch!19879) r!24333))))

(declare-fun d!2310373 () Bool)

(declare-fun lt!2641716 () Regex!19879)

(assert (=> d!2310373 (validRegex!10307 lt!2641716)))

(assert (=> d!2310373 (= lt!2641716 e!4490284)))

(declare-fun c!1391462 () Bool)

(assert (=> d!2310373 (= c!1391462 (or ((_ is EmptyExpr!19879) r!24333) ((_ is EmptyLang!19879) r!24333)))))

(assert (=> d!2310373 (validRegex!10307 r!24333)))

(assert (=> d!2310373 (= (derivativeStep!5670 r!24333 (head!15469 (getSuffix!3565 knownP!30 testedP!423))) lt!2641716)))

(declare-fun b!7535182 () Bool)

(assert (=> b!7535182 (= e!4490286 e!4490282)))

(declare-fun c!1391461 () Bool)

(assert (=> b!7535182 (= c!1391461 ((_ is Star!19879) r!24333))))

(declare-fun bm!691307 () Bool)

(assert (=> bm!691307 (= call!691310 (derivativeStep!5670 (ite c!1391464 (regTwo!40271 r!24333) (ite c!1391461 (reg!20208 r!24333) (regOne!40270 r!24333))) (head!15469 (getSuffix!3565 knownP!30 testedP!423))))))

(declare-fun b!7535183 () Bool)

(assert (=> b!7535183 (= e!4490282 (Concat!28724 call!691311 r!24333))))

(declare-fun b!7535184 () Bool)

(assert (=> b!7535184 (= c!1391464 ((_ is Union!19879) r!24333))))

(assert (=> b!7535184 (= e!4490285 e!4490286)))

(assert (= (and d!2310373 c!1391462) b!7535179))

(assert (= (and d!2310373 (not c!1391462)) b!7535176))

(assert (= (and b!7535176 c!1391463) b!7535181))

(assert (= (and b!7535176 (not c!1391463)) b!7535184))

(assert (= (and b!7535184 c!1391464) b!7535178))

(assert (= (and b!7535184 (not c!1391464)) b!7535182))

(assert (= (and b!7535182 c!1391461) b!7535183))

(assert (= (and b!7535182 (not c!1391461)) b!7535180))

(assert (= (and b!7535180 c!1391460) b!7535175))

(assert (= (and b!7535180 (not c!1391460)) b!7535177))

(assert (= (or b!7535175 b!7535177) bm!691306))

(assert (= (or b!7535183 bm!691306) bm!691304))

(assert (= (or b!7535178 bm!691304) bm!691307))

(assert (= (or b!7535178 b!7535175) bm!691305))

(declare-fun m!8106424 () Bool)

(assert (=> b!7535180 m!8106424))

(assert (=> bm!691305 m!8106098))

(declare-fun m!8106426 () Bool)

(assert (=> bm!691305 m!8106426))

(declare-fun m!8106428 () Bool)

(assert (=> d!2310373 m!8106428))

(assert (=> d!2310373 m!8106082))

(assert (=> bm!691307 m!8106098))

(declare-fun m!8106430 () Bool)

(assert (=> bm!691307 m!8106430))

(assert (=> b!7534690 d!2310373))

(assert (=> b!7534690 d!2310323))

(assert (=> b!7534690 d!2310335))

(assert (=> d!2310255 d!2310339))

(assert (=> d!2310255 d!2310247))

(declare-fun b!7535185 () Bool)

(declare-fun e!4490288 () Bool)

(declare-fun e!4490292 () Bool)

(assert (=> b!7535185 (= e!4490288 e!4490292)))

(declare-fun c!1391466 () Bool)

(assert (=> b!7535185 (= c!1391466 ((_ is Star!19879) (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))))))

(declare-fun b!7535186 () Bool)

(declare-fun e!4490293 () Bool)

(declare-fun call!691315 () Bool)

(assert (=> b!7535186 (= e!4490293 call!691315)))

(declare-fun c!1391465 () Bool)

(declare-fun bm!691308 () Bool)

(declare-fun call!691313 () Bool)

(assert (=> bm!691308 (= call!691313 (validRegex!10307 (ite c!1391466 (reg!20208 (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))) (ite c!1391465 (regOne!40271 (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))) (regOne!40270 (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333)))))))))

(declare-fun b!7535187 () Bool)

(declare-fun e!4490291 () Bool)

(assert (=> b!7535187 (= e!4490291 call!691313)))

(declare-fun b!7535188 () Bool)

(declare-fun e!4490287 () Bool)

(declare-fun e!4490289 () Bool)

(assert (=> b!7535188 (= e!4490287 e!4490289)))

(declare-fun res!3019805 () Bool)

(assert (=> b!7535188 (=> (not res!3019805) (not e!4490289))))

(declare-fun call!691314 () Bool)

(assert (=> b!7535188 (= res!3019805 call!691314)))

(declare-fun b!7535189 () Bool)

(assert (=> b!7535189 (= e!4490289 call!691315)))

(declare-fun b!7535190 () Bool)

(declare-fun e!4490290 () Bool)

(assert (=> b!7535190 (= e!4490292 e!4490290)))

(assert (=> b!7535190 (= c!1391465 ((_ is Union!19879) (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))))))

(declare-fun b!7535191 () Bool)

(declare-fun res!3019802 () Bool)

(assert (=> b!7535191 (=> res!3019802 e!4490287)))

(assert (=> b!7535191 (= res!3019802 (not ((_ is Concat!28724) (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333)))))))

(assert (=> b!7535191 (= e!4490290 e!4490287)))

(declare-fun bm!691310 () Bool)

(assert (=> bm!691310 (= call!691314 call!691313)))

(declare-fun bm!691309 () Bool)

(assert (=> bm!691309 (= call!691315 (validRegex!10307 (ite c!1391465 (regTwo!40271 (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))) (regTwo!40270 (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))))))))

(declare-fun d!2310375 () Bool)

(declare-fun res!3019803 () Bool)

(assert (=> d!2310375 (=> res!3019803 e!4490288)))

(assert (=> d!2310375 (= res!3019803 ((_ is ElementMatch!19879) (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))))))

(assert (=> d!2310375 (= (validRegex!10307 (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))) e!4490288)))

(declare-fun b!7535192 () Bool)

(assert (=> b!7535192 (= e!4490292 e!4490291)))

(declare-fun res!3019806 () Bool)

(assert (=> b!7535192 (= res!3019806 (not (nullable!8664 (reg!20208 (ite c!1391381 (regTwo!40271 r!24333) (regTwo!40270 r!24333))))))))

(assert (=> b!7535192 (=> (not res!3019806) (not e!4490291))))

(declare-fun b!7535193 () Bool)

(declare-fun res!3019804 () Bool)

(assert (=> b!7535193 (=> (not res!3019804) (not e!4490293))))

(assert (=> b!7535193 (= res!3019804 call!691314)))

(assert (=> b!7535193 (= e!4490290 e!4490293)))

(assert (= (and d!2310375 (not res!3019803)) b!7535185))

(assert (= (and b!7535185 c!1391466) b!7535192))

(assert (= (and b!7535185 (not c!1391466)) b!7535190))

(assert (= (and b!7535192 res!3019806) b!7535187))

(assert (= (and b!7535190 c!1391465) b!7535193))

(assert (= (and b!7535190 (not c!1391465)) b!7535191))

(assert (= (and b!7535193 res!3019804) b!7535186))

(assert (= (and b!7535191 (not res!3019802)) b!7535188))

(assert (= (and b!7535188 res!3019805) b!7535189))

(assert (= (or b!7535193 b!7535188) bm!691310))

(assert (= (or b!7535186 b!7535189) bm!691309))

(assert (= (or b!7535187 bm!691310) bm!691308))

(declare-fun m!8106432 () Bool)

(assert (=> bm!691308 m!8106432))

(declare-fun m!8106434 () Bool)

(assert (=> bm!691309 m!8106434))

(declare-fun m!8106436 () Bool)

(assert (=> b!7535192 m!8106436))

(assert (=> bm!691264 d!2310375))

(declare-fun d!2310377 () Bool)

(assert (=> d!2310377 (= (nullable!8664 (reg!20208 baseR!101)) (nullableFct!3469 (reg!20208 baseR!101)))))

(declare-fun bs!1939891 () Bool)

(assert (= bs!1939891 d!2310377))

(declare-fun m!8106438 () Bool)

(assert (=> bs!1939891 m!8106438))

(assert (=> b!7534762 d!2310377))

(declare-fun b!7535194 () Bool)

(declare-fun e!4490295 () Bool)

(declare-fun e!4490297 () Bool)

(assert (=> b!7535194 (= e!4490295 e!4490297)))

(declare-fun res!3019807 () Bool)

(assert (=> b!7535194 (=> res!3019807 e!4490297)))

(declare-fun call!691316 () Bool)

(assert (=> b!7535194 (= res!3019807 call!691316)))

(declare-fun b!7535195 () Bool)

(declare-fun res!3019811 () Bool)

(declare-fun e!4490296 () Bool)

(assert (=> b!7535195 (=> (not res!3019811) (not e!4490296))))

(assert (=> b!7535195 (= res!3019811 (isEmpty!41358 (tail!15026 (tail!15026 knownP!30))))))

(declare-fun b!7535196 () Bool)

(declare-fun e!4490298 () Bool)

(assert (=> b!7535196 (= e!4490298 (matchR!9481 (derivativeStep!5670 (derivativeStep!5670 baseR!101 (head!15469 knownP!30)) (head!15469 (tail!15026 knownP!30))) (tail!15026 (tail!15026 knownP!30))))))

(declare-fun b!7535197 () Bool)

(declare-fun e!4490300 () Bool)

(assert (=> b!7535197 (= e!4490300 e!4490295)))

(declare-fun res!3019813 () Bool)

(assert (=> b!7535197 (=> (not res!3019813) (not e!4490295))))

(declare-fun lt!2641717 () Bool)

(assert (=> b!7535197 (= res!3019813 (not lt!2641717))))

(declare-fun b!7535199 () Bool)

(declare-fun e!4490299 () Bool)

(assert (=> b!7535199 (= e!4490299 (not lt!2641717))))

(declare-fun b!7535200 () Bool)

(assert (=> b!7535200 (= e!4490298 (nullable!8664 (derivativeStep!5670 baseR!101 (head!15469 knownP!30))))))

(declare-fun b!7535201 () Bool)

(declare-fun res!3019812 () Bool)

(assert (=> b!7535201 (=> (not res!3019812) (not e!4490296))))

(assert (=> b!7535201 (= res!3019812 (not call!691316))))

(declare-fun bm!691311 () Bool)

(assert (=> bm!691311 (= call!691316 (isEmpty!41358 (tail!15026 knownP!30)))))

(declare-fun b!7535202 () Bool)

(declare-fun res!3019808 () Bool)

(assert (=> b!7535202 (=> res!3019808 e!4490297)))

(assert (=> b!7535202 (= res!3019808 (not (isEmpty!41358 (tail!15026 (tail!15026 knownP!30)))))))

(declare-fun b!7535203 () Bool)

(declare-fun e!4490294 () Bool)

(assert (=> b!7535203 (= e!4490294 (= lt!2641717 call!691316))))

(declare-fun b!7535204 () Bool)

(assert (=> b!7535204 (= e!4490296 (= (head!15469 (tail!15026 knownP!30)) (c!1391360 (derivativeStep!5670 baseR!101 (head!15469 knownP!30)))))))

(declare-fun b!7535205 () Bool)

(declare-fun res!3019809 () Bool)

(assert (=> b!7535205 (=> res!3019809 e!4490300)))

(assert (=> b!7535205 (= res!3019809 (not ((_ is ElementMatch!19879) (derivativeStep!5670 baseR!101 (head!15469 knownP!30)))))))

(assert (=> b!7535205 (= e!4490299 e!4490300)))

(declare-fun b!7535198 () Bool)

(assert (=> b!7535198 (= e!4490294 e!4490299)))

(declare-fun c!1391468 () Bool)

(assert (=> b!7535198 (= c!1391468 ((_ is EmptyLang!19879) (derivativeStep!5670 baseR!101 (head!15469 knownP!30))))))

(declare-fun d!2310379 () Bool)

(assert (=> d!2310379 e!4490294))

(declare-fun c!1391467 () Bool)

(assert (=> d!2310379 (= c!1391467 ((_ is EmptyExpr!19879) (derivativeStep!5670 baseR!101 (head!15469 knownP!30))))))

(assert (=> d!2310379 (= lt!2641717 e!4490298)))

(declare-fun c!1391469 () Bool)

(assert (=> d!2310379 (= c!1391469 (isEmpty!41358 (tail!15026 knownP!30)))))

(assert (=> d!2310379 (validRegex!10307 (derivativeStep!5670 baseR!101 (head!15469 knownP!30)))))

(assert (=> d!2310379 (= (matchR!9481 (derivativeStep!5670 baseR!101 (head!15469 knownP!30)) (tail!15026 knownP!30)) lt!2641717)))

(declare-fun b!7535206 () Bool)

(declare-fun res!3019814 () Bool)

(assert (=> b!7535206 (=> res!3019814 e!4490300)))

(assert (=> b!7535206 (= res!3019814 e!4490296)))

(declare-fun res!3019810 () Bool)

(assert (=> b!7535206 (=> (not res!3019810) (not e!4490296))))

(assert (=> b!7535206 (= res!3019810 lt!2641717)))

(declare-fun b!7535207 () Bool)

(assert (=> b!7535207 (= e!4490297 (not (= (head!15469 (tail!15026 knownP!30)) (c!1391360 (derivativeStep!5670 baseR!101 (head!15469 knownP!30))))))))

(assert (= (and d!2310379 c!1391469) b!7535200))

(assert (= (and d!2310379 (not c!1391469)) b!7535196))

(assert (= (and d!2310379 c!1391467) b!7535203))

(assert (= (and d!2310379 (not c!1391467)) b!7535198))

(assert (= (and b!7535198 c!1391468) b!7535199))

(assert (= (and b!7535198 (not c!1391468)) b!7535205))

(assert (= (and b!7535205 (not res!3019809)) b!7535206))

(assert (= (and b!7535206 res!3019810) b!7535201))

(assert (= (and b!7535201 res!3019812) b!7535195))

(assert (= (and b!7535195 res!3019811) b!7535204))

(assert (= (and b!7535206 (not res!3019814)) b!7535197))

(assert (= (and b!7535197 res!3019813) b!7535194))

(assert (= (and b!7535194 (not res!3019807)) b!7535202))

(assert (= (and b!7535202 (not res!3019808)) b!7535207))

(assert (= (or b!7535203 b!7535194 b!7535201) bm!691311))

(assert (=> b!7535202 m!8106110))

(assert (=> b!7535202 m!8106406))

(assert (=> b!7535202 m!8106406))

(declare-fun m!8106440 () Bool)

(assert (=> b!7535202 m!8106440))

(assert (=> b!7535207 m!8106110))

(declare-fun m!8106442 () Bool)

(assert (=> b!7535207 m!8106442))

(assert (=> b!7535200 m!8106154))

(declare-fun m!8106444 () Bool)

(assert (=> b!7535200 m!8106444))

(assert (=> b!7535204 m!8106110))

(assert (=> b!7535204 m!8106442))

(assert (=> b!7535196 m!8106110))

(assert (=> b!7535196 m!8106442))

(assert (=> b!7535196 m!8106154))

(assert (=> b!7535196 m!8106442))

(declare-fun m!8106446 () Bool)

(assert (=> b!7535196 m!8106446))

(assert (=> b!7535196 m!8106110))

(assert (=> b!7535196 m!8106406))

(assert (=> b!7535196 m!8106446))

(assert (=> b!7535196 m!8106406))

(declare-fun m!8106448 () Bool)

(assert (=> b!7535196 m!8106448))

(assert (=> b!7535195 m!8106110))

(assert (=> b!7535195 m!8106406))

(assert (=> b!7535195 m!8106406))

(assert (=> b!7535195 m!8106440))

(assert (=> bm!691311 m!8106110))

(assert (=> bm!691311 m!8106150))

(assert (=> d!2310379 m!8106110))

(assert (=> d!2310379 m!8106150))

(assert (=> d!2310379 m!8106154))

(declare-fun m!8106450 () Bool)

(assert (=> d!2310379 m!8106450))

(assert (=> b!7534798 d!2310379))

(declare-fun call!691317 () Regex!19879)

(declare-fun b!7535208 () Bool)

(declare-fun call!691320 () Regex!19879)

(declare-fun e!4490302 () Regex!19879)

(assert (=> b!7535208 (= e!4490302 (Union!19879 (Concat!28724 call!691317 (regTwo!40270 baseR!101)) call!691320))))

(declare-fun b!7535210 () Bool)

(assert (=> b!7535210 (= e!4490302 (Union!19879 (Concat!28724 call!691317 (regTwo!40270 baseR!101)) EmptyLang!19879))))

(declare-fun b!7535211 () Bool)

(declare-fun e!4490305 () Regex!19879)

(declare-fun call!691318 () Regex!19879)

(assert (=> b!7535211 (= e!4490305 (Union!19879 call!691320 call!691318))))

(declare-fun bm!691312 () Bool)

(declare-fun call!691319 () Regex!19879)

(assert (=> bm!691312 (= call!691319 call!691318)))

(declare-fun b!7535212 () Bool)

(declare-fun e!4490303 () Regex!19879)

(assert (=> b!7535212 (= e!4490303 EmptyLang!19879)))

(declare-fun b!7535213 () Bool)

(declare-fun c!1391470 () Bool)

(assert (=> b!7535213 (= c!1391470 (nullable!8664 (regOne!40270 baseR!101)))))

(declare-fun e!4490301 () Regex!19879)

(assert (=> b!7535213 (= e!4490301 e!4490302)))

(declare-fun b!7535214 () Bool)

(declare-fun e!4490304 () Regex!19879)

(assert (=> b!7535214 (= e!4490304 (ite (= (head!15469 knownP!30) (c!1391360 baseR!101)) EmptyExpr!19879 EmptyLang!19879))))

(declare-fun c!1391474 () Bool)

(declare-fun bm!691313 () Bool)

(assert (=> bm!691313 (= call!691320 (derivativeStep!5670 (ite c!1391474 (regOne!40271 baseR!101) (regTwo!40270 baseR!101)) (head!15469 knownP!30)))))

(declare-fun bm!691314 () Bool)

(assert (=> bm!691314 (= call!691317 call!691319)))

(declare-fun b!7535209 () Bool)

(assert (=> b!7535209 (= e!4490303 e!4490304)))

(declare-fun c!1391473 () Bool)

(assert (=> b!7535209 (= c!1391473 ((_ is ElementMatch!19879) baseR!101))))

(declare-fun d!2310381 () Bool)

(declare-fun lt!2641718 () Regex!19879)

(assert (=> d!2310381 (validRegex!10307 lt!2641718)))

(assert (=> d!2310381 (= lt!2641718 e!4490303)))

(declare-fun c!1391472 () Bool)

(assert (=> d!2310381 (= c!1391472 (or ((_ is EmptyExpr!19879) baseR!101) ((_ is EmptyLang!19879) baseR!101)))))

(assert (=> d!2310381 (validRegex!10307 baseR!101)))

(assert (=> d!2310381 (= (derivativeStep!5670 baseR!101 (head!15469 knownP!30)) lt!2641718)))

(declare-fun b!7535215 () Bool)

(assert (=> b!7535215 (= e!4490305 e!4490301)))

(declare-fun c!1391471 () Bool)

(assert (=> b!7535215 (= c!1391471 ((_ is Star!19879) baseR!101))))

(declare-fun bm!691315 () Bool)

(assert (=> bm!691315 (= call!691318 (derivativeStep!5670 (ite c!1391474 (regTwo!40271 baseR!101) (ite c!1391471 (reg!20208 baseR!101) (regOne!40270 baseR!101))) (head!15469 knownP!30)))))

(declare-fun b!7535216 () Bool)

(assert (=> b!7535216 (= e!4490301 (Concat!28724 call!691319 baseR!101))))

(declare-fun b!7535217 () Bool)

(assert (=> b!7535217 (= c!1391474 ((_ is Union!19879) baseR!101))))

(assert (=> b!7535217 (= e!4490304 e!4490305)))

(assert (= (and d!2310381 c!1391472) b!7535212))

(assert (= (and d!2310381 (not c!1391472)) b!7535209))

(assert (= (and b!7535209 c!1391473) b!7535214))

(assert (= (and b!7535209 (not c!1391473)) b!7535217))

(assert (= (and b!7535217 c!1391474) b!7535211))

(assert (= (and b!7535217 (not c!1391474)) b!7535215))

(assert (= (and b!7535215 c!1391471) b!7535216))

(assert (= (and b!7535215 (not c!1391471)) b!7535213))

(assert (= (and b!7535213 c!1391470) b!7535208))

(assert (= (and b!7535213 (not c!1391470)) b!7535210))

(assert (= (or b!7535208 b!7535210) bm!691314))

(assert (= (or b!7535216 bm!691314) bm!691312))

(assert (= (or b!7535211 bm!691312) bm!691315))

(assert (= (or b!7535211 b!7535208) bm!691313))

(declare-fun m!8106452 () Bool)

(assert (=> b!7535213 m!8106452))

(assert (=> bm!691313 m!8106120))

(declare-fun m!8106454 () Bool)

(assert (=> bm!691313 m!8106454))

(declare-fun m!8106456 () Bool)

(assert (=> d!2310381 m!8106456))

(assert (=> d!2310381 m!8106056))

(assert (=> bm!691315 m!8106120))

(declare-fun m!8106458 () Bool)

(assert (=> bm!691315 m!8106458))

(assert (=> b!7534798 d!2310381))

(assert (=> b!7534798 d!2310321))

(assert (=> b!7534798 d!2310331))

(declare-fun d!2310383 () Bool)

(assert (=> d!2310383 (= (isEmpty!41358 (getSuffix!3565 knownP!30 testedP!423)) ((_ is Nil!72638) (getSuffix!3565 knownP!30 testedP!423)))))

(assert (=> d!2310231 d!2310383))

(assert (=> d!2310231 d!2310245))

(declare-fun b!7535220 () Bool)

(declare-fun e!4490306 () Bool)

(assert (=> b!7535220 (= e!4490306 (isPrefix!6085 (tail!15026 (tail!15026 lt!2641634)) (tail!15026 (tail!15026 input!7874))))))

(declare-fun b!7535221 () Bool)

(declare-fun e!4490307 () Bool)

(assert (=> b!7535221 (= e!4490307 (>= (size!42375 (tail!15026 input!7874)) (size!42375 (tail!15026 lt!2641634))))))

(declare-fun b!7535219 () Bool)

(declare-fun res!3019816 () Bool)

(assert (=> b!7535219 (=> (not res!3019816) (not e!4490306))))

(assert (=> b!7535219 (= res!3019816 (= (head!15469 (tail!15026 lt!2641634)) (head!15469 (tail!15026 input!7874))))))

(declare-fun b!7535218 () Bool)

(declare-fun e!4490308 () Bool)

(assert (=> b!7535218 (= e!4490308 e!4490306)))

(declare-fun res!3019818 () Bool)

(assert (=> b!7535218 (=> (not res!3019818) (not e!4490306))))

(assert (=> b!7535218 (= res!3019818 (not ((_ is Nil!72638) (tail!15026 input!7874))))))

(declare-fun d!2310385 () Bool)

(assert (=> d!2310385 e!4490307))

(declare-fun res!3019817 () Bool)

(assert (=> d!2310385 (=> res!3019817 e!4490307)))

(declare-fun lt!2641719 () Bool)

(assert (=> d!2310385 (= res!3019817 (not lt!2641719))))

(assert (=> d!2310385 (= lt!2641719 e!4490308)))

(declare-fun res!3019815 () Bool)

(assert (=> d!2310385 (=> res!3019815 e!4490308)))

(assert (=> d!2310385 (= res!3019815 ((_ is Nil!72638) (tail!15026 lt!2641634)))))

(assert (=> d!2310385 (= (isPrefix!6085 (tail!15026 lt!2641634) (tail!15026 input!7874)) lt!2641719)))

(assert (= (and d!2310385 (not res!3019815)) b!7535218))

(assert (= (and b!7535218 res!3019818) b!7535219))

(assert (= (and b!7535219 res!3019816) b!7535220))

(assert (= (and d!2310385 (not res!3019817)) b!7535221))

(assert (=> b!7535220 m!8106190))

(declare-fun m!8106460 () Bool)

(assert (=> b!7535220 m!8106460))

(assert (=> b!7535220 m!8106160))

(assert (=> b!7535220 m!8106314))

(assert (=> b!7535220 m!8106460))

(assert (=> b!7535220 m!8106314))

(declare-fun m!8106462 () Bool)

(assert (=> b!7535220 m!8106462))

(assert (=> b!7535221 m!8106160))

(assert (=> b!7535221 m!8106312))

(assert (=> b!7535221 m!8106190))

(declare-fun m!8106464 () Bool)

(assert (=> b!7535221 m!8106464))

(assert (=> b!7535219 m!8106190))

(declare-fun m!8106466 () Bool)

(assert (=> b!7535219 m!8106466))

(assert (=> b!7535219 m!8106160))

(assert (=> b!7535219 m!8106398))

(assert (=> b!7534834 d!2310385))

(declare-fun d!2310387 () Bool)

(assert (=> d!2310387 (= (tail!15026 lt!2641634) (t!387469 lt!2641634))))

(assert (=> b!7534834 d!2310387))

(assert (=> b!7534834 d!2310317))

(declare-fun d!2310389 () Bool)

(declare-fun c!1391477 () Bool)

(assert (=> d!2310389 (= c!1391477 ((_ is Nil!72638) lt!2641666))))

(declare-fun e!4490311 () (InoxSet C!40084))

(assert (=> d!2310389 (= (content!15353 lt!2641666) e!4490311)))

(declare-fun b!7535226 () Bool)

(assert (=> b!7535226 (= e!4490311 ((as const (Array C!40084 Bool)) false))))

(declare-fun b!7535227 () Bool)

(assert (=> b!7535227 (= e!4490311 ((_ map or) (store ((as const (Array C!40084 Bool)) false) (h!79086 lt!2641666) true) (content!15353 (t!387469 lt!2641666))))))

(assert (= (and d!2310389 c!1391477) b!7535226))

(assert (= (and d!2310389 (not c!1391477)) b!7535227))

(declare-fun m!8106468 () Bool)

(assert (=> b!7535227 m!8106468))

(declare-fun m!8106470 () Bool)

(assert (=> b!7535227 m!8106470))

(assert (=> d!2310261 d!2310389))

(declare-fun d!2310391 () Bool)

(declare-fun c!1391478 () Bool)

(assert (=> d!2310391 (= c!1391478 ((_ is Nil!72638) testedP!423))))

(declare-fun e!4490312 () (InoxSet C!40084))

(assert (=> d!2310391 (= (content!15353 testedP!423) e!4490312)))

(declare-fun b!7535228 () Bool)

(assert (=> b!7535228 (= e!4490312 ((as const (Array C!40084 Bool)) false))))

(declare-fun b!7535229 () Bool)

(assert (=> b!7535229 (= e!4490312 ((_ map or) (store ((as const (Array C!40084 Bool)) false) (h!79086 testedP!423) true) (content!15353 (t!387469 testedP!423))))))

(assert (= (and d!2310391 c!1391478) b!7535228))

(assert (= (and d!2310391 (not c!1391478)) b!7535229))

(declare-fun m!8106472 () Bool)

(assert (=> b!7535229 m!8106472))

(assert (=> b!7535229 m!8106384))

(assert (=> d!2310261 d!2310391))

(declare-fun d!2310393 () Bool)

(declare-fun c!1391479 () Bool)

(assert (=> d!2310393 (= c!1391479 ((_ is Nil!72638) (Cons!72638 (head!15469 lt!2641636) Nil!72638)))))

(declare-fun e!4490313 () (InoxSet C!40084))

(assert (=> d!2310393 (= (content!15353 (Cons!72638 (head!15469 lt!2641636) Nil!72638)) e!4490313)))

(declare-fun b!7535230 () Bool)

(assert (=> b!7535230 (= e!4490313 ((as const (Array C!40084 Bool)) false))))

(declare-fun b!7535231 () Bool)

(assert (=> b!7535231 (= e!4490313 ((_ map or) (store ((as const (Array C!40084 Bool)) false) (h!79086 (Cons!72638 (head!15469 lt!2641636) Nil!72638)) true) (content!15353 (t!387469 (Cons!72638 (head!15469 lt!2641636) Nil!72638)))))))

(assert (= (and d!2310393 c!1391479) b!7535230))

(assert (= (and d!2310393 (not c!1391479)) b!7535231))

(declare-fun m!8106474 () Bool)

(assert (=> b!7535231 m!8106474))

(declare-fun m!8106476 () Bool)

(assert (=> b!7535231 m!8106476))

(assert (=> d!2310261 d!2310393))

(declare-fun b!7535234 () Bool)

(declare-fun e!4490314 () Bool)

(assert (=> b!7535234 (= e!4490314 (isPrefix!6085 (tail!15026 (tail!15026 testedP!423)) (tail!15026 (tail!15026 knownP!30))))))

(declare-fun b!7535235 () Bool)

(declare-fun e!4490315 () Bool)

(assert (=> b!7535235 (= e!4490315 (>= (size!42375 (tail!15026 knownP!30)) (size!42375 (tail!15026 testedP!423))))))

(declare-fun b!7535233 () Bool)

(declare-fun res!3019820 () Bool)

(assert (=> b!7535233 (=> (not res!3019820) (not e!4490314))))

(assert (=> b!7535233 (= res!3019820 (= (head!15469 (tail!15026 testedP!423)) (head!15469 (tail!15026 knownP!30))))))

(declare-fun b!7535232 () Bool)

(declare-fun e!4490316 () Bool)

(assert (=> b!7535232 (= e!4490316 e!4490314)))

(declare-fun res!3019822 () Bool)

(assert (=> b!7535232 (=> (not res!3019822) (not e!4490314))))

(assert (=> b!7535232 (= res!3019822 (not ((_ is Nil!72638) (tail!15026 knownP!30))))))

(declare-fun d!2310395 () Bool)

(assert (=> d!2310395 e!4490315))

(declare-fun res!3019821 () Bool)

(assert (=> d!2310395 (=> res!3019821 e!4490315)))

(declare-fun lt!2641720 () Bool)

(assert (=> d!2310395 (= res!3019821 (not lt!2641720))))

(assert (=> d!2310395 (= lt!2641720 e!4490316)))

(declare-fun res!3019819 () Bool)

(assert (=> d!2310395 (=> res!3019819 e!4490316)))

(assert (=> d!2310395 (= res!3019819 ((_ is Nil!72638) (tail!15026 testedP!423)))))

(assert (=> d!2310395 (= (isPrefix!6085 (tail!15026 testedP!423) (tail!15026 knownP!30)) lt!2641720)))

(assert (= (and d!2310395 (not res!3019819)) b!7535232))

(assert (= (and b!7535232 res!3019822) b!7535233))

(assert (= (and b!7535233 res!3019820) b!7535234))

(assert (= (and d!2310395 (not res!3019821)) b!7535235))

(assert (=> b!7535234 m!8106114))

(assert (=> b!7535234 m!8106390))

(assert (=> b!7535234 m!8106110))

(assert (=> b!7535234 m!8106406))

(assert (=> b!7535234 m!8106390))

(assert (=> b!7535234 m!8106406))

(declare-fun m!8106478 () Bool)

(assert (=> b!7535234 m!8106478))

(assert (=> b!7535235 m!8106110))

(assert (=> b!7535235 m!8106404))

(assert (=> b!7535235 m!8106114))

(assert (=> b!7535235 m!8106394))

(assert (=> b!7535233 m!8106114))

(assert (=> b!7535233 m!8106396))

(assert (=> b!7535233 m!8106110))

(assert (=> b!7535233 m!8106442))

(assert (=> b!7534718 d!2310395))

(assert (=> b!7534718 d!2310365))

(assert (=> b!7534718 d!2310331))

(assert (=> b!7534815 d!2310321))

(assert (=> b!7534815 d!2310313))

(declare-fun d!2310397 () Bool)

(declare-fun lt!2641721 () Regex!19879)

(assert (=> d!2310397 (validRegex!10307 lt!2641721)))

(declare-fun e!4490317 () Regex!19879)

(assert (=> d!2310397 (= lt!2641721 e!4490317)))

(declare-fun c!1391480 () Bool)

(assert (=> d!2310397 (= c!1391480 ((_ is Cons!72638) (t!387469 testedP!423)))))

(assert (=> d!2310397 (validRegex!10307 (derivativeStep!5670 baseR!101 (h!79086 testedP!423)))))

(assert (=> d!2310397 (= (derivative!411 (derivativeStep!5670 baseR!101 (h!79086 testedP!423)) (t!387469 testedP!423)) lt!2641721)))

(declare-fun b!7535236 () Bool)

(assert (=> b!7535236 (= e!4490317 (derivative!411 (derivativeStep!5670 (derivativeStep!5670 baseR!101 (h!79086 testedP!423)) (h!79086 (t!387469 testedP!423))) (t!387469 (t!387469 testedP!423))))))

(declare-fun b!7535237 () Bool)

(assert (=> b!7535237 (= e!4490317 (derivativeStep!5670 baseR!101 (h!79086 testedP!423)))))

(assert (= (and d!2310397 c!1391480) b!7535236))

(assert (= (and d!2310397 (not c!1391480)) b!7535237))

(declare-fun m!8106480 () Bool)

(assert (=> d!2310397 m!8106480))

(assert (=> d!2310397 m!8106144))

(declare-fun m!8106482 () Bool)

(assert (=> d!2310397 m!8106482))

(assert (=> b!7535236 m!8106144))

(declare-fun m!8106484 () Bool)

(assert (=> b!7535236 m!8106484))

(assert (=> b!7535236 m!8106484))

(declare-fun m!8106486 () Bool)

(assert (=> b!7535236 m!8106486))

(assert (=> b!7534774 d!2310397))

(declare-fun call!691324 () Regex!19879)

(declare-fun call!691321 () Regex!19879)

(declare-fun b!7535238 () Bool)

(declare-fun e!4490319 () Regex!19879)

(assert (=> b!7535238 (= e!4490319 (Union!19879 (Concat!28724 call!691321 (regTwo!40270 baseR!101)) call!691324))))

(declare-fun b!7535240 () Bool)

(assert (=> b!7535240 (= e!4490319 (Union!19879 (Concat!28724 call!691321 (regTwo!40270 baseR!101)) EmptyLang!19879))))

(declare-fun b!7535241 () Bool)

(declare-fun e!4490322 () Regex!19879)

(declare-fun call!691322 () Regex!19879)

(assert (=> b!7535241 (= e!4490322 (Union!19879 call!691324 call!691322))))

(declare-fun bm!691316 () Bool)

(declare-fun call!691323 () Regex!19879)

(assert (=> bm!691316 (= call!691323 call!691322)))

(declare-fun b!7535242 () Bool)

(declare-fun e!4490320 () Regex!19879)

(assert (=> b!7535242 (= e!4490320 EmptyLang!19879)))

(declare-fun b!7535243 () Bool)

(declare-fun c!1391481 () Bool)

(assert (=> b!7535243 (= c!1391481 (nullable!8664 (regOne!40270 baseR!101)))))

(declare-fun e!4490318 () Regex!19879)

(assert (=> b!7535243 (= e!4490318 e!4490319)))

(declare-fun b!7535244 () Bool)

(declare-fun e!4490321 () Regex!19879)

(assert (=> b!7535244 (= e!4490321 (ite (= (h!79086 testedP!423) (c!1391360 baseR!101)) EmptyExpr!19879 EmptyLang!19879))))

(declare-fun c!1391485 () Bool)

(declare-fun bm!691317 () Bool)

(assert (=> bm!691317 (= call!691324 (derivativeStep!5670 (ite c!1391485 (regOne!40271 baseR!101) (regTwo!40270 baseR!101)) (h!79086 testedP!423)))))

(declare-fun bm!691318 () Bool)

(assert (=> bm!691318 (= call!691321 call!691323)))

(declare-fun b!7535239 () Bool)

(assert (=> b!7535239 (= e!4490320 e!4490321)))

(declare-fun c!1391484 () Bool)

(assert (=> b!7535239 (= c!1391484 ((_ is ElementMatch!19879) baseR!101))))

(declare-fun d!2310399 () Bool)

(declare-fun lt!2641722 () Regex!19879)

(assert (=> d!2310399 (validRegex!10307 lt!2641722)))

(assert (=> d!2310399 (= lt!2641722 e!4490320)))

(declare-fun c!1391483 () Bool)

(assert (=> d!2310399 (= c!1391483 (or ((_ is EmptyExpr!19879) baseR!101) ((_ is EmptyLang!19879) baseR!101)))))

(assert (=> d!2310399 (validRegex!10307 baseR!101)))

(assert (=> d!2310399 (= (derivativeStep!5670 baseR!101 (h!79086 testedP!423)) lt!2641722)))

(declare-fun b!7535245 () Bool)

(assert (=> b!7535245 (= e!4490322 e!4490318)))

(declare-fun c!1391482 () Bool)

(assert (=> b!7535245 (= c!1391482 ((_ is Star!19879) baseR!101))))

(declare-fun bm!691319 () Bool)

(assert (=> bm!691319 (= call!691322 (derivativeStep!5670 (ite c!1391485 (regTwo!40271 baseR!101) (ite c!1391482 (reg!20208 baseR!101) (regOne!40270 baseR!101))) (h!79086 testedP!423)))))

(declare-fun b!7535246 () Bool)

(assert (=> b!7535246 (= e!4490318 (Concat!28724 call!691323 baseR!101))))

(declare-fun b!7535247 () Bool)

(assert (=> b!7535247 (= c!1391485 ((_ is Union!19879) baseR!101))))

(assert (=> b!7535247 (= e!4490321 e!4490322)))

(assert (= (and d!2310399 c!1391483) b!7535242))

(assert (= (and d!2310399 (not c!1391483)) b!7535239))

(assert (= (and b!7535239 c!1391484) b!7535244))

(assert (= (and b!7535239 (not c!1391484)) b!7535247))

(assert (= (and b!7535247 c!1391485) b!7535241))

(assert (= (and b!7535247 (not c!1391485)) b!7535245))

(assert (= (and b!7535245 c!1391482) b!7535246))

(assert (= (and b!7535245 (not c!1391482)) b!7535243))

(assert (= (and b!7535243 c!1391481) b!7535238))

(assert (= (and b!7535243 (not c!1391481)) b!7535240))

(assert (= (or b!7535238 b!7535240) bm!691318))

(assert (= (or b!7535246 bm!691318) bm!691316))

(assert (= (or b!7535241 bm!691316) bm!691319))

(assert (= (or b!7535241 b!7535238) bm!691317))

(assert (=> b!7535243 m!8106452))

(declare-fun m!8106488 () Bool)

(assert (=> bm!691317 m!8106488))

(declare-fun m!8106490 () Bool)

(assert (=> d!2310399 m!8106490))

(assert (=> d!2310399 m!8106056))

(declare-fun m!8106492 () Bool)

(assert (=> bm!691319 m!8106492))

(assert (=> b!7534774 d!2310399))

(assert (=> bm!691256 d!2310383))

(declare-fun b!7535248 () Bool)

(declare-fun e!4490324 () Bool)

(declare-fun e!4490328 () Bool)

(assert (=> b!7535248 (= e!4490324 e!4490328)))

(declare-fun c!1391487 () Bool)

(assert (=> b!7535248 (= c!1391487 ((_ is Star!19879) (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))))))

(declare-fun b!7535249 () Bool)

(declare-fun e!4490329 () Bool)

(declare-fun call!691327 () Bool)

(assert (=> b!7535249 (= e!4490329 call!691327)))

(declare-fun call!691325 () Bool)

(declare-fun bm!691320 () Bool)

(declare-fun c!1391486 () Bool)

(assert (=> bm!691320 (= call!691325 (validRegex!10307 (ite c!1391487 (reg!20208 (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))) (ite c!1391486 (regOne!40271 (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))) (regOne!40270 (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101))))))))))

(declare-fun b!7535250 () Bool)

(declare-fun e!4490327 () Bool)

(assert (=> b!7535250 (= e!4490327 call!691325)))

(declare-fun b!7535251 () Bool)

(declare-fun e!4490323 () Bool)

(declare-fun e!4490325 () Bool)

(assert (=> b!7535251 (= e!4490323 e!4490325)))

(declare-fun res!3019826 () Bool)

(assert (=> b!7535251 (=> (not res!3019826) (not e!4490325))))

(declare-fun call!691326 () Bool)

(assert (=> b!7535251 (= res!3019826 call!691326)))

(declare-fun b!7535252 () Bool)

(assert (=> b!7535252 (= e!4490325 call!691327)))

(declare-fun b!7535253 () Bool)

(declare-fun e!4490326 () Bool)

(assert (=> b!7535253 (= e!4490328 e!4490326)))

(assert (=> b!7535253 (= c!1391486 ((_ is Union!19879) (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))))))

(declare-fun b!7535254 () Bool)

(declare-fun res!3019823 () Bool)

(assert (=> b!7535254 (=> res!3019823 e!4490323)))

(assert (=> b!7535254 (= res!3019823 (not ((_ is Concat!28724) (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101))))))))

(assert (=> b!7535254 (= e!4490326 e!4490323)))

(declare-fun bm!691322 () Bool)

(assert (=> bm!691322 (= call!691326 call!691325)))

(declare-fun bm!691321 () Bool)

(assert (=> bm!691321 (= call!691327 (validRegex!10307 (ite c!1391486 (regTwo!40271 (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))) (regTwo!40270 (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))))))))

(declare-fun d!2310401 () Bool)

(declare-fun res!3019824 () Bool)

(assert (=> d!2310401 (=> res!3019824 e!4490324)))

(assert (=> d!2310401 (= res!3019824 ((_ is ElementMatch!19879) (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))))))

(assert (=> d!2310401 (= (validRegex!10307 (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))) e!4490324)))

(declare-fun b!7535255 () Bool)

(assert (=> b!7535255 (= e!4490328 e!4490327)))

(declare-fun res!3019827 () Bool)

(assert (=> b!7535255 (= res!3019827 (not (nullable!8664 (reg!20208 (ite c!1391384 (reg!20208 baseR!101) (ite c!1391383 (regOne!40271 baseR!101) (regOne!40270 baseR!101)))))))))

(assert (=> b!7535255 (=> (not res!3019827) (not e!4490327))))

(declare-fun b!7535256 () Bool)

(declare-fun res!3019825 () Bool)

(assert (=> b!7535256 (=> (not res!3019825) (not e!4490329))))

(assert (=> b!7535256 (= res!3019825 call!691326)))

(assert (=> b!7535256 (= e!4490326 e!4490329)))

(assert (= (and d!2310401 (not res!3019824)) b!7535248))

(assert (= (and b!7535248 c!1391487) b!7535255))

(assert (= (and b!7535248 (not c!1391487)) b!7535253))

(assert (= (and b!7535255 res!3019827) b!7535250))

(assert (= (and b!7535253 c!1391486) b!7535256))

(assert (= (and b!7535253 (not c!1391486)) b!7535254))

(assert (= (and b!7535256 res!3019825) b!7535249))

(assert (= (and b!7535254 (not res!3019823)) b!7535251))

(assert (= (and b!7535251 res!3019826) b!7535252))

(assert (= (or b!7535256 b!7535251) bm!691322))

(assert (= (or b!7535249 b!7535252) bm!691321))

(assert (= (or b!7535250 bm!691322) bm!691320))

(declare-fun m!8106494 () Bool)

(assert (=> bm!691320 m!8106494))

(declare-fun m!8106496 () Bool)

(assert (=> bm!691321 m!8106496))

(declare-fun m!8106498 () Bool)

(assert (=> b!7535255 m!8106498))

(assert (=> bm!691266 d!2310401))

(assert (=> b!7534804 d!2310329))

(assert (=> b!7534804 d!2310331))

(declare-fun b!7535259 () Bool)

(declare-fun e!4490330 () Bool)

(assert (=> b!7535259 (= e!4490330 (isPrefix!6085 (tail!15026 (tail!15026 knownP!30)) (tail!15026 (tail!15026 input!7874))))))

(declare-fun b!7535260 () Bool)

(declare-fun e!4490331 () Bool)

(assert (=> b!7535260 (= e!4490331 (>= (size!42375 (tail!15026 input!7874)) (size!42375 (tail!15026 knownP!30))))))

(declare-fun b!7535258 () Bool)

(declare-fun res!3019829 () Bool)

(assert (=> b!7535258 (=> (not res!3019829) (not e!4490330))))

(assert (=> b!7535258 (= res!3019829 (= (head!15469 (tail!15026 knownP!30)) (head!15469 (tail!15026 input!7874))))))

(declare-fun b!7535257 () Bool)

(declare-fun e!4490332 () Bool)

(assert (=> b!7535257 (= e!4490332 e!4490330)))

(declare-fun res!3019831 () Bool)

(assert (=> b!7535257 (=> (not res!3019831) (not e!4490330))))

(assert (=> b!7535257 (= res!3019831 (not ((_ is Nil!72638) (tail!15026 input!7874))))))

(declare-fun d!2310403 () Bool)

(assert (=> d!2310403 e!4490331))

(declare-fun res!3019830 () Bool)

(assert (=> d!2310403 (=> res!3019830 e!4490331)))

(declare-fun lt!2641723 () Bool)

(assert (=> d!2310403 (= res!3019830 (not lt!2641723))))

(assert (=> d!2310403 (= lt!2641723 e!4490332)))

(declare-fun res!3019828 () Bool)

(assert (=> d!2310403 (=> res!3019828 e!4490332)))

(assert (=> d!2310403 (= res!3019828 ((_ is Nil!72638) (tail!15026 knownP!30)))))

(assert (=> d!2310403 (= (isPrefix!6085 (tail!15026 knownP!30) (tail!15026 input!7874)) lt!2641723)))

(assert (= (and d!2310403 (not res!3019828)) b!7535257))

(assert (= (and b!7535257 res!3019831) b!7535258))

(assert (= (and b!7535258 res!3019829) b!7535259))

(assert (= (and d!2310403 (not res!3019830)) b!7535260))

(assert (=> b!7535259 m!8106110))

(assert (=> b!7535259 m!8106406))

(assert (=> b!7535259 m!8106160))

(assert (=> b!7535259 m!8106314))

(assert (=> b!7535259 m!8106406))

(assert (=> b!7535259 m!8106314))

(declare-fun m!8106500 () Bool)

(assert (=> b!7535259 m!8106500))

(assert (=> b!7535260 m!8106160))

(assert (=> b!7535260 m!8106312))

(assert (=> b!7535260 m!8106110))

(assert (=> b!7535260 m!8106404))

(assert (=> b!7535258 m!8106110))

(assert (=> b!7535258 m!8106442))

(assert (=> b!7535258 m!8106160))

(assert (=> b!7535258 m!8106398))

(assert (=> b!7534816 d!2310403))

(assert (=> b!7534816 d!2310331))

(assert (=> b!7534816 d!2310317))

(assert (=> b!7534835 d!2310249))

(declare-fun d!2310405 () Bool)

(declare-fun lt!2641724 () Int)

(assert (=> d!2310405 (>= lt!2641724 0)))

(declare-fun e!4490333 () Int)

(assert (=> d!2310405 (= lt!2641724 e!4490333)))

(declare-fun c!1391488 () Bool)

(assert (=> d!2310405 (= c!1391488 ((_ is Nil!72638) lt!2641634))))

(assert (=> d!2310405 (= (size!42375 lt!2641634) lt!2641724)))

(declare-fun b!7535261 () Bool)

(assert (=> b!7535261 (= e!4490333 0)))

(declare-fun b!7535262 () Bool)

(assert (=> b!7535262 (= e!4490333 (+ 1 (size!42375 (t!387469 lt!2641634))))))

(assert (= (and d!2310405 c!1391488) b!7535261))

(assert (= (and d!2310405 (not c!1391488)) b!7535262))

(declare-fun m!8106502 () Bool)

(assert (=> b!7535262 m!8106502))

(assert (=> b!7534835 d!2310405))

(declare-fun d!2310407 () Bool)

(declare-fun lt!2641725 () Int)

(assert (=> d!2310407 (>= lt!2641725 0)))

(declare-fun e!4490334 () Int)

(assert (=> d!2310407 (= lt!2641725 e!4490334)))

(declare-fun c!1391489 () Bool)

(assert (=> d!2310407 (= c!1391489 ((_ is Nil!72638) (t!387469 knownP!30)))))

(assert (=> d!2310407 (= (size!42375 (t!387469 knownP!30)) lt!2641725)))

(declare-fun b!7535263 () Bool)

(assert (=> b!7535263 (= e!4490334 0)))

(declare-fun b!7535264 () Bool)

(assert (=> b!7535264 (= e!4490334 (+ 1 (size!42375 (t!387469 (t!387469 knownP!30)))))))

(assert (= (and d!2310407 c!1391489) b!7535263))

(assert (= (and d!2310407 (not c!1391489)) b!7535264))

(declare-fun m!8106504 () Bool)

(assert (=> b!7535264 m!8106504))

(assert (=> b!7534727 d!2310407))

(assert (=> d!2310237 d!2310235))

(declare-fun d!2310409 () Bool)

(assert (=> d!2310409 (isPrefix!6085 testedP!423 knownP!30)))

(assert (=> d!2310409 true))

(declare-fun _$69!393 () Unit!166696)

(assert (=> d!2310409 (= (choose!58289 knownP!30 testedP!423 input!7874) _$69!393)))

(declare-fun bs!1939892 () Bool)

(assert (= bs!1939892 d!2310409))

(assert (=> bs!1939892 m!8106090))

(assert (=> d!2310237 d!2310409))

(assert (=> d!2310237 d!2310257))

(declare-fun bm!691327 () Bool)

(declare-fun call!691332 () Bool)

(declare-fun c!1391492 () Bool)

(assert (=> bm!691327 (= call!691332 (lostCause!1671 (ite c!1391492 (regOne!40271 r!24333) (regTwo!40270 r!24333))))))

(declare-fun b!7535279 () Bool)

(declare-fun e!4490347 () Bool)

(declare-fun e!4490348 () Bool)

(assert (=> b!7535279 (= e!4490347 e!4490348)))

(assert (=> b!7535279 (= c!1391492 ((_ is Union!19879) r!24333))))

(declare-fun b!7535280 () Bool)

(declare-fun e!4490352 () Bool)

(declare-fun e!4490351 () Bool)

(assert (=> b!7535280 (= e!4490352 e!4490351)))

(declare-fun res!3019844 () Bool)

(assert (=> b!7535280 (=> res!3019844 e!4490351)))

(assert (=> b!7535280 (= res!3019844 ((_ is EmptyLang!19879) r!24333))))

(declare-fun b!7535281 () Bool)

(declare-fun e!4490349 () Bool)

(assert (=> b!7535281 (= e!4490349 call!691332)))

(declare-fun bm!691328 () Bool)

(declare-fun call!691333 () Bool)

(assert (=> bm!691328 (= call!691333 (lostCause!1671 (ite c!1391492 (regTwo!40271 r!24333) (regOne!40270 r!24333))))))

(declare-fun b!7535282 () Bool)

(declare-fun e!4490350 () Bool)

(assert (=> b!7535282 (= e!4490350 call!691333)))

(declare-fun b!7535283 () Bool)

(assert (=> b!7535283 (= e!4490351 e!4490347)))

(declare-fun res!3019843 () Bool)

(assert (=> b!7535283 (=> (not res!3019843) (not e!4490347))))

(assert (=> b!7535283 (= res!3019843 (and (not ((_ is ElementMatch!19879) r!24333)) (not ((_ is Star!19879) r!24333))))))

(declare-fun d!2310411 () Bool)

(declare-fun lt!2641728 () Bool)

(declare-datatypes ((Option!17259 0))(
  ( (None!17258) (Some!17258 (v!54393 List!72762)) )
))
(declare-fun isEmpty!41360 (Option!17259) Bool)

(declare-fun getLanguageWitness!1102 (Regex!19879) Option!17259)

(assert (=> d!2310411 (= lt!2641728 (isEmpty!41360 (getLanguageWitness!1102 r!24333)))))

(assert (=> d!2310411 (= lt!2641728 e!4490352)))

(declare-fun res!3019846 () Bool)

(assert (=> d!2310411 (=> (not res!3019846) (not e!4490352))))

(assert (=> d!2310411 (= res!3019846 (not ((_ is EmptyExpr!19879) r!24333)))))

(assert (=> d!2310411 (= (lostCauseFct!420 r!24333) lt!2641728)))

(declare-fun b!7535284 () Bool)

(assert (=> b!7535284 (= e!4490348 e!4490350)))

(declare-fun res!3019845 () Bool)

(assert (=> b!7535284 (= res!3019845 call!691332)))

(assert (=> b!7535284 (=> (not res!3019845) (not e!4490350))))

(declare-fun b!7535285 () Bool)

(assert (=> b!7535285 (= e!4490348 e!4490349)))

(declare-fun res!3019842 () Bool)

(assert (=> b!7535285 (= res!3019842 call!691333)))

(assert (=> b!7535285 (=> res!3019842 e!4490349)))

(assert (= (and d!2310411 res!3019846) b!7535280))

(assert (= (and b!7535280 (not res!3019844)) b!7535283))

(assert (= (and b!7535283 res!3019843) b!7535279))

(assert (= (and b!7535279 c!1391492) b!7535284))

(assert (= (and b!7535279 (not c!1391492)) b!7535285))

(assert (= (and b!7535284 res!3019845) b!7535282))

(assert (= (and b!7535285 (not res!3019842)) b!7535281))

(assert (= (or b!7535284 b!7535281) bm!691327))

(assert (= (or b!7535282 b!7535285) bm!691328))

(declare-fun m!8106506 () Bool)

(assert (=> bm!691327 m!8106506))

(declare-fun m!8106508 () Bool)

(assert (=> bm!691328 m!8106508))

(declare-fun m!8106510 () Bool)

(assert (=> d!2310411 m!8106510))

(assert (=> d!2310411 m!8106510))

(declare-fun m!8106512 () Bool)

(assert (=> d!2310411 m!8106512))

(assert (=> d!2310253 d!2310411))

(assert (=> b!7534806 d!2310321))

(declare-fun b!7535287 () Bool)

(declare-fun e!4490353 () Bool)

(declare-fun tp!2191144 () Bool)

(declare-fun tp!2191142 () Bool)

(assert (=> b!7535287 (= e!4490353 (and tp!2191144 tp!2191142))))

(assert (=> b!7534903 (= tp!2191068 e!4490353)))

(declare-fun b!7535288 () Bool)

(declare-fun tp!2191143 () Bool)

(assert (=> b!7535288 (= e!4490353 tp!2191143)))

(declare-fun b!7535286 () Bool)

(assert (=> b!7535286 (= e!4490353 tp_is_empty!50113)))

(declare-fun b!7535289 () Bool)

(declare-fun tp!2191140 () Bool)

(declare-fun tp!2191141 () Bool)

(assert (=> b!7535289 (= e!4490353 (and tp!2191140 tp!2191141))))

(assert (= (and b!7534903 ((_ is ElementMatch!19879) (regOne!40270 (regOne!40270 baseR!101)))) b!7535286))

(assert (= (and b!7534903 ((_ is Concat!28724) (regOne!40270 (regOne!40270 baseR!101)))) b!7535287))

(assert (= (and b!7534903 ((_ is Star!19879) (regOne!40270 (regOne!40270 baseR!101)))) b!7535288))

(assert (= (and b!7534903 ((_ is Union!19879) (regOne!40270 (regOne!40270 baseR!101)))) b!7535289))

(declare-fun b!7535291 () Bool)

(declare-fun e!4490354 () Bool)

(declare-fun tp!2191149 () Bool)

(declare-fun tp!2191147 () Bool)

(assert (=> b!7535291 (= e!4490354 (and tp!2191149 tp!2191147))))

(assert (=> b!7534903 (= tp!2191066 e!4490354)))

(declare-fun b!7535292 () Bool)

(declare-fun tp!2191148 () Bool)

(assert (=> b!7535292 (= e!4490354 tp!2191148)))

(declare-fun b!7535290 () Bool)

(assert (=> b!7535290 (= e!4490354 tp_is_empty!50113)))

(declare-fun b!7535293 () Bool)

(declare-fun tp!2191145 () Bool)

(declare-fun tp!2191146 () Bool)

(assert (=> b!7535293 (= e!4490354 (and tp!2191145 tp!2191146))))

(assert (= (and b!7534903 ((_ is ElementMatch!19879) (regTwo!40270 (regOne!40270 baseR!101)))) b!7535290))

(assert (= (and b!7534903 ((_ is Concat!28724) (regTwo!40270 (regOne!40270 baseR!101)))) b!7535291))

(assert (= (and b!7534903 ((_ is Star!19879) (regTwo!40270 (regOne!40270 baseR!101)))) b!7535292))

(assert (= (and b!7534903 ((_ is Union!19879) (regTwo!40270 (regOne!40270 baseR!101)))) b!7535293))

(declare-fun b!7535295 () Bool)

(declare-fun e!4490355 () Bool)

(declare-fun tp!2191154 () Bool)

(declare-fun tp!2191152 () Bool)

(assert (=> b!7535295 (= e!4490355 (and tp!2191154 tp!2191152))))

(assert (=> b!7534866 (= tp!2191023 e!4490355)))

(declare-fun b!7535296 () Bool)

(declare-fun tp!2191153 () Bool)

(assert (=> b!7535296 (= e!4490355 tp!2191153)))

(declare-fun b!7535294 () Bool)

(assert (=> b!7535294 (= e!4490355 tp_is_empty!50113)))

(declare-fun b!7535297 () Bool)

(declare-fun tp!2191150 () Bool)

(declare-fun tp!2191151 () Bool)

(assert (=> b!7535297 (= e!4490355 (and tp!2191150 tp!2191151))))

(assert (= (and b!7534866 ((_ is ElementMatch!19879) (reg!20208 (regOne!40270 r!24333)))) b!7535294))

(assert (= (and b!7534866 ((_ is Concat!28724) (reg!20208 (regOne!40270 r!24333)))) b!7535295))

(assert (= (and b!7534866 ((_ is Star!19879) (reg!20208 (regOne!40270 r!24333)))) b!7535296))

(assert (= (and b!7534866 ((_ is Union!19879) (reg!20208 (regOne!40270 r!24333)))) b!7535297))

(declare-fun b!7535299 () Bool)

(declare-fun e!4490356 () Bool)

(declare-fun tp!2191159 () Bool)

(declare-fun tp!2191157 () Bool)

(assert (=> b!7535299 (= e!4490356 (and tp!2191159 tp!2191157))))

(assert (=> b!7534867 (= tp!2191020 e!4490356)))

(declare-fun b!7535300 () Bool)

(declare-fun tp!2191158 () Bool)

(assert (=> b!7535300 (= e!4490356 tp!2191158)))

(declare-fun b!7535298 () Bool)

(assert (=> b!7535298 (= e!4490356 tp_is_empty!50113)))

(declare-fun b!7535301 () Bool)

(declare-fun tp!2191155 () Bool)

(declare-fun tp!2191156 () Bool)

(assert (=> b!7535301 (= e!4490356 (and tp!2191155 tp!2191156))))

(assert (= (and b!7534867 ((_ is ElementMatch!19879) (regOne!40271 (regOne!40270 r!24333)))) b!7535298))

(assert (= (and b!7534867 ((_ is Concat!28724) (regOne!40271 (regOne!40270 r!24333)))) b!7535299))

(assert (= (and b!7534867 ((_ is Star!19879) (regOne!40271 (regOne!40270 r!24333)))) b!7535300))

(assert (= (and b!7534867 ((_ is Union!19879) (regOne!40271 (regOne!40270 r!24333)))) b!7535301))

(declare-fun b!7535303 () Bool)

(declare-fun e!4490357 () Bool)

(declare-fun tp!2191164 () Bool)

(declare-fun tp!2191162 () Bool)

(assert (=> b!7535303 (= e!4490357 (and tp!2191164 tp!2191162))))

(assert (=> b!7534867 (= tp!2191021 e!4490357)))

(declare-fun b!7535304 () Bool)

(declare-fun tp!2191163 () Bool)

(assert (=> b!7535304 (= e!4490357 tp!2191163)))

(declare-fun b!7535302 () Bool)

(assert (=> b!7535302 (= e!4490357 tp_is_empty!50113)))

(declare-fun b!7535305 () Bool)

(declare-fun tp!2191160 () Bool)

(declare-fun tp!2191161 () Bool)

(assert (=> b!7535305 (= e!4490357 (and tp!2191160 tp!2191161))))

(assert (= (and b!7534867 ((_ is ElementMatch!19879) (regTwo!40271 (regOne!40270 r!24333)))) b!7535302))

(assert (= (and b!7534867 ((_ is Concat!28724) (regTwo!40271 (regOne!40270 r!24333)))) b!7535303))

(assert (= (and b!7534867 ((_ is Star!19879) (regTwo!40271 (regOne!40270 r!24333)))) b!7535304))

(assert (= (and b!7534867 ((_ is Union!19879) (regTwo!40271 (regOne!40270 r!24333)))) b!7535305))

(declare-fun b!7535307 () Bool)

(declare-fun e!4490358 () Bool)

(declare-fun tp!2191169 () Bool)

(declare-fun tp!2191167 () Bool)

(assert (=> b!7535307 (= e!4490358 (and tp!2191169 tp!2191167))))

(assert (=> b!7534897 (= tp!2191054 e!4490358)))

(declare-fun b!7535308 () Bool)

(declare-fun tp!2191168 () Bool)

(assert (=> b!7535308 (= e!4490358 tp!2191168)))

(declare-fun b!7535306 () Bool)

(assert (=> b!7535306 (= e!4490358 tp_is_empty!50113)))

(declare-fun b!7535309 () Bool)

(declare-fun tp!2191165 () Bool)

(declare-fun tp!2191166 () Bool)

(assert (=> b!7535309 (= e!4490358 (and tp!2191165 tp!2191166))))

(assert (= (and b!7534897 ((_ is ElementMatch!19879) (regOne!40271 (regOne!40271 baseR!101)))) b!7535306))

(assert (= (and b!7534897 ((_ is Concat!28724) (regOne!40271 (regOne!40271 baseR!101)))) b!7535307))

(assert (= (and b!7534897 ((_ is Star!19879) (regOne!40271 (regOne!40271 baseR!101)))) b!7535308))

(assert (= (and b!7534897 ((_ is Union!19879) (regOne!40271 (regOne!40271 baseR!101)))) b!7535309))

(declare-fun b!7535311 () Bool)

(declare-fun e!4490359 () Bool)

(declare-fun tp!2191174 () Bool)

(declare-fun tp!2191172 () Bool)

(assert (=> b!7535311 (= e!4490359 (and tp!2191174 tp!2191172))))

(assert (=> b!7534897 (= tp!2191055 e!4490359)))

(declare-fun b!7535312 () Bool)

(declare-fun tp!2191173 () Bool)

(assert (=> b!7535312 (= e!4490359 tp!2191173)))

(declare-fun b!7535310 () Bool)

(assert (=> b!7535310 (= e!4490359 tp_is_empty!50113)))

(declare-fun b!7535313 () Bool)

(declare-fun tp!2191170 () Bool)

(declare-fun tp!2191171 () Bool)

(assert (=> b!7535313 (= e!4490359 (and tp!2191170 tp!2191171))))

(assert (= (and b!7534897 ((_ is ElementMatch!19879) (regTwo!40271 (regOne!40271 baseR!101)))) b!7535310))

(assert (= (and b!7534897 ((_ is Concat!28724) (regTwo!40271 (regOne!40271 baseR!101)))) b!7535311))

(assert (= (and b!7534897 ((_ is Star!19879) (regTwo!40271 (regOne!40271 baseR!101)))) b!7535312))

(assert (= (and b!7534897 ((_ is Union!19879) (regTwo!40271 (regOne!40271 baseR!101)))) b!7535313))

(declare-fun b!7535315 () Bool)

(declare-fun e!4490360 () Bool)

(declare-fun tp!2191179 () Bool)

(declare-fun tp!2191177 () Bool)

(assert (=> b!7535315 (= e!4490360 (and tp!2191179 tp!2191177))))

(assert (=> b!7534888 (= tp!2191047 e!4490360)))

(declare-fun b!7535316 () Bool)

(declare-fun tp!2191178 () Bool)

(assert (=> b!7535316 (= e!4490360 tp!2191178)))

(declare-fun b!7535314 () Bool)

(assert (=> b!7535314 (= e!4490360 tp_is_empty!50113)))

(declare-fun b!7535317 () Bool)

(declare-fun tp!2191175 () Bool)

(declare-fun tp!2191176 () Bool)

(assert (=> b!7535317 (= e!4490360 (and tp!2191175 tp!2191176))))

(assert (= (and b!7534888 ((_ is ElementMatch!19879) (reg!20208 (regOne!40271 r!24333)))) b!7535314))

(assert (= (and b!7534888 ((_ is Concat!28724) (reg!20208 (regOne!40271 r!24333)))) b!7535315))

(assert (= (and b!7534888 ((_ is Star!19879) (reg!20208 (regOne!40271 r!24333)))) b!7535316))

(assert (= (and b!7534888 ((_ is Union!19879) (reg!20208 (regOne!40271 r!24333)))) b!7535317))

(declare-fun b!7535319 () Bool)

(declare-fun e!4490361 () Bool)

(declare-fun tp!2191184 () Bool)

(declare-fun tp!2191182 () Bool)

(assert (=> b!7535319 (= e!4490361 (and tp!2191184 tp!2191182))))

(assert (=> b!7534889 (= tp!2191044 e!4490361)))

(declare-fun b!7535320 () Bool)

(declare-fun tp!2191183 () Bool)

(assert (=> b!7535320 (= e!4490361 tp!2191183)))

(declare-fun b!7535318 () Bool)

(assert (=> b!7535318 (= e!4490361 tp_is_empty!50113)))

(declare-fun b!7535321 () Bool)

(declare-fun tp!2191180 () Bool)

(declare-fun tp!2191181 () Bool)

(assert (=> b!7535321 (= e!4490361 (and tp!2191180 tp!2191181))))

(assert (= (and b!7534889 ((_ is ElementMatch!19879) (regOne!40271 (regOne!40271 r!24333)))) b!7535318))

(assert (= (and b!7534889 ((_ is Concat!28724) (regOne!40271 (regOne!40271 r!24333)))) b!7535319))

(assert (= (and b!7534889 ((_ is Star!19879) (regOne!40271 (regOne!40271 r!24333)))) b!7535320))

(assert (= (and b!7534889 ((_ is Union!19879) (regOne!40271 (regOne!40271 r!24333)))) b!7535321))

(declare-fun b!7535323 () Bool)

(declare-fun e!4490362 () Bool)

(declare-fun tp!2191189 () Bool)

(declare-fun tp!2191187 () Bool)

(assert (=> b!7535323 (= e!4490362 (and tp!2191189 tp!2191187))))

(assert (=> b!7534889 (= tp!2191045 e!4490362)))

(declare-fun b!7535324 () Bool)

(declare-fun tp!2191188 () Bool)

(assert (=> b!7535324 (= e!4490362 tp!2191188)))

(declare-fun b!7535322 () Bool)

(assert (=> b!7535322 (= e!4490362 tp_is_empty!50113)))

(declare-fun b!7535325 () Bool)

(declare-fun tp!2191185 () Bool)

(declare-fun tp!2191186 () Bool)

(assert (=> b!7535325 (= e!4490362 (and tp!2191185 tp!2191186))))

(assert (= (and b!7534889 ((_ is ElementMatch!19879) (regTwo!40271 (regOne!40271 r!24333)))) b!7535322))

(assert (= (and b!7534889 ((_ is Concat!28724) (regTwo!40271 (regOne!40271 r!24333)))) b!7535323))

(assert (= (and b!7534889 ((_ is Star!19879) (regTwo!40271 (regOne!40271 r!24333)))) b!7535324))

(assert (= (and b!7534889 ((_ is Union!19879) (regTwo!40271 (regOne!40271 r!24333)))) b!7535325))

(declare-fun b!7535327 () Bool)

(declare-fun e!4490363 () Bool)

(declare-fun tp!2191194 () Bool)

(declare-fun tp!2191192 () Bool)

(assert (=> b!7535327 (= e!4490363 (and tp!2191194 tp!2191192))))

(assert (=> b!7534895 (= tp!2191058 e!4490363)))

(declare-fun b!7535328 () Bool)

(declare-fun tp!2191193 () Bool)

(assert (=> b!7535328 (= e!4490363 tp!2191193)))

(declare-fun b!7535326 () Bool)

(assert (=> b!7535326 (= e!4490363 tp_is_empty!50113)))

(declare-fun b!7535329 () Bool)

(declare-fun tp!2191190 () Bool)

(declare-fun tp!2191191 () Bool)

(assert (=> b!7535329 (= e!4490363 (and tp!2191190 tp!2191191))))

(assert (= (and b!7534895 ((_ is ElementMatch!19879) (regOne!40270 (regOne!40271 baseR!101)))) b!7535326))

(assert (= (and b!7534895 ((_ is Concat!28724) (regOne!40270 (regOne!40271 baseR!101)))) b!7535327))

(assert (= (and b!7534895 ((_ is Star!19879) (regOne!40270 (regOne!40271 baseR!101)))) b!7535328))

(assert (= (and b!7534895 ((_ is Union!19879) (regOne!40270 (regOne!40271 baseR!101)))) b!7535329))

(declare-fun b!7535331 () Bool)

(declare-fun e!4490364 () Bool)

(declare-fun tp!2191199 () Bool)

(declare-fun tp!2191197 () Bool)

(assert (=> b!7535331 (= e!4490364 (and tp!2191199 tp!2191197))))

(assert (=> b!7534895 (= tp!2191056 e!4490364)))

(declare-fun b!7535332 () Bool)

(declare-fun tp!2191198 () Bool)

(assert (=> b!7535332 (= e!4490364 tp!2191198)))

(declare-fun b!7535330 () Bool)

(assert (=> b!7535330 (= e!4490364 tp_is_empty!50113)))

(declare-fun b!7535333 () Bool)

(declare-fun tp!2191195 () Bool)

(declare-fun tp!2191196 () Bool)

(assert (=> b!7535333 (= e!4490364 (and tp!2191195 tp!2191196))))

(assert (= (and b!7534895 ((_ is ElementMatch!19879) (regTwo!40270 (regOne!40271 baseR!101)))) b!7535330))

(assert (= (and b!7534895 ((_ is Concat!28724) (regTwo!40270 (regOne!40271 baseR!101)))) b!7535331))

(assert (= (and b!7534895 ((_ is Star!19879) (regTwo!40270 (regOne!40271 baseR!101)))) b!7535332))

(assert (= (and b!7534895 ((_ is Union!19879) (regTwo!40270 (regOne!40271 baseR!101)))) b!7535333))

(declare-fun b!7535335 () Bool)

(declare-fun e!4490365 () Bool)

(declare-fun tp!2191204 () Bool)

(declare-fun tp!2191202 () Bool)

(assert (=> b!7535335 (= e!4490365 (and tp!2191204 tp!2191202))))

(assert (=> b!7534878 (= tp!2191037 e!4490365)))

(declare-fun b!7535336 () Bool)

(declare-fun tp!2191203 () Bool)

(assert (=> b!7535336 (= e!4490365 tp!2191203)))

(declare-fun b!7535334 () Bool)

(assert (=> b!7535334 (= e!4490365 tp_is_empty!50113)))

(declare-fun b!7535337 () Bool)

(declare-fun tp!2191200 () Bool)

(declare-fun tp!2191201 () Bool)

(assert (=> b!7535337 (= e!4490365 (and tp!2191200 tp!2191201))))

(assert (= (and b!7534878 ((_ is ElementMatch!19879) (regOne!40270 (reg!20208 baseR!101)))) b!7535334))

(assert (= (and b!7534878 ((_ is Concat!28724) (regOne!40270 (reg!20208 baseR!101)))) b!7535335))

(assert (= (and b!7534878 ((_ is Star!19879) (regOne!40270 (reg!20208 baseR!101)))) b!7535336))

(assert (= (and b!7534878 ((_ is Union!19879) (regOne!40270 (reg!20208 baseR!101)))) b!7535337))

(declare-fun b!7535339 () Bool)

(declare-fun e!4490366 () Bool)

(declare-fun tp!2191209 () Bool)

(declare-fun tp!2191207 () Bool)

(assert (=> b!7535339 (= e!4490366 (and tp!2191209 tp!2191207))))

(assert (=> b!7534878 (= tp!2191035 e!4490366)))

(declare-fun b!7535340 () Bool)

(declare-fun tp!2191208 () Bool)

(assert (=> b!7535340 (= e!4490366 tp!2191208)))

(declare-fun b!7535338 () Bool)

(assert (=> b!7535338 (= e!4490366 tp_is_empty!50113)))

(declare-fun b!7535341 () Bool)

(declare-fun tp!2191205 () Bool)

(declare-fun tp!2191206 () Bool)

(assert (=> b!7535341 (= e!4490366 (and tp!2191205 tp!2191206))))

(assert (= (and b!7534878 ((_ is ElementMatch!19879) (regTwo!40270 (reg!20208 baseR!101)))) b!7535338))

(assert (= (and b!7534878 ((_ is Concat!28724) (regTwo!40270 (reg!20208 baseR!101)))) b!7535339))

(assert (= (and b!7534878 ((_ is Star!19879) (regTwo!40270 (reg!20208 baseR!101)))) b!7535340))

(assert (= (and b!7534878 ((_ is Union!19879) (regTwo!40270 (reg!20208 baseR!101)))) b!7535341))

(declare-fun b!7535343 () Bool)

(declare-fun e!4490367 () Bool)

(declare-fun tp!2191214 () Bool)

(declare-fun tp!2191212 () Bool)

(assert (=> b!7535343 (= e!4490367 (and tp!2191214 tp!2191212))))

(assert (=> b!7534904 (= tp!2191067 e!4490367)))

(declare-fun b!7535344 () Bool)

(declare-fun tp!2191213 () Bool)

(assert (=> b!7535344 (= e!4490367 tp!2191213)))

(declare-fun b!7535342 () Bool)

(assert (=> b!7535342 (= e!4490367 tp_is_empty!50113)))

(declare-fun b!7535345 () Bool)

(declare-fun tp!2191210 () Bool)

(declare-fun tp!2191211 () Bool)

(assert (=> b!7535345 (= e!4490367 (and tp!2191210 tp!2191211))))

(assert (= (and b!7534904 ((_ is ElementMatch!19879) (reg!20208 (regOne!40270 baseR!101)))) b!7535342))

(assert (= (and b!7534904 ((_ is Concat!28724) (reg!20208 (regOne!40270 baseR!101)))) b!7535343))

(assert (= (and b!7534904 ((_ is Star!19879) (reg!20208 (regOne!40270 baseR!101)))) b!7535344))

(assert (= (and b!7534904 ((_ is Union!19879) (reg!20208 (regOne!40270 baseR!101)))) b!7535345))

(declare-fun b!7535347 () Bool)

(declare-fun e!4490368 () Bool)

(declare-fun tp!2191219 () Bool)

(declare-fun tp!2191217 () Bool)

(assert (=> b!7535347 (= e!4490368 (and tp!2191219 tp!2191217))))

(assert (=> b!7534887 (= tp!2191048 e!4490368)))

(declare-fun b!7535348 () Bool)

(declare-fun tp!2191218 () Bool)

(assert (=> b!7535348 (= e!4490368 tp!2191218)))

(declare-fun b!7535346 () Bool)

(assert (=> b!7535346 (= e!4490368 tp_is_empty!50113)))

(declare-fun b!7535349 () Bool)

(declare-fun tp!2191215 () Bool)

(declare-fun tp!2191216 () Bool)

(assert (=> b!7535349 (= e!4490368 (and tp!2191215 tp!2191216))))

(assert (= (and b!7534887 ((_ is ElementMatch!19879) (regOne!40270 (regOne!40271 r!24333)))) b!7535346))

(assert (= (and b!7534887 ((_ is Concat!28724) (regOne!40270 (regOne!40271 r!24333)))) b!7535347))

(assert (= (and b!7534887 ((_ is Star!19879) (regOne!40270 (regOne!40271 r!24333)))) b!7535348))

(assert (= (and b!7534887 ((_ is Union!19879) (regOne!40270 (regOne!40271 r!24333)))) b!7535349))

(declare-fun b!7535351 () Bool)

(declare-fun e!4490369 () Bool)

(declare-fun tp!2191224 () Bool)

(declare-fun tp!2191222 () Bool)

(assert (=> b!7535351 (= e!4490369 (and tp!2191224 tp!2191222))))

(assert (=> b!7534887 (= tp!2191046 e!4490369)))

(declare-fun b!7535352 () Bool)

(declare-fun tp!2191223 () Bool)

(assert (=> b!7535352 (= e!4490369 tp!2191223)))

(declare-fun b!7535350 () Bool)

(assert (=> b!7535350 (= e!4490369 tp_is_empty!50113)))

(declare-fun b!7535353 () Bool)

(declare-fun tp!2191220 () Bool)

(declare-fun tp!2191221 () Bool)

(assert (=> b!7535353 (= e!4490369 (and tp!2191220 tp!2191221))))

(assert (= (and b!7534887 ((_ is ElementMatch!19879) (regTwo!40270 (regOne!40271 r!24333)))) b!7535350))

(assert (= (and b!7534887 ((_ is Concat!28724) (regTwo!40270 (regOne!40271 r!24333)))) b!7535351))

(assert (= (and b!7534887 ((_ is Star!19879) (regTwo!40270 (regOne!40271 r!24333)))) b!7535352))

(assert (= (and b!7534887 ((_ is Union!19879) (regTwo!40270 (regOne!40271 r!24333)))) b!7535353))

(declare-fun b!7535355 () Bool)

(declare-fun e!4490370 () Bool)

(declare-fun tp!2191229 () Bool)

(declare-fun tp!2191227 () Bool)

(assert (=> b!7535355 (= e!4490370 (and tp!2191229 tp!2191227))))

(assert (=> b!7534880 (= tp!2191033 e!4490370)))

(declare-fun b!7535356 () Bool)

(declare-fun tp!2191228 () Bool)

(assert (=> b!7535356 (= e!4490370 tp!2191228)))

(declare-fun b!7535354 () Bool)

(assert (=> b!7535354 (= e!4490370 tp_is_empty!50113)))

(declare-fun b!7535357 () Bool)

(declare-fun tp!2191225 () Bool)

(declare-fun tp!2191226 () Bool)

(assert (=> b!7535357 (= e!4490370 (and tp!2191225 tp!2191226))))

(assert (= (and b!7534880 ((_ is ElementMatch!19879) (regOne!40271 (reg!20208 baseR!101)))) b!7535354))

(assert (= (and b!7534880 ((_ is Concat!28724) (regOne!40271 (reg!20208 baseR!101)))) b!7535355))

(assert (= (and b!7534880 ((_ is Star!19879) (regOne!40271 (reg!20208 baseR!101)))) b!7535356))

(assert (= (and b!7534880 ((_ is Union!19879) (regOne!40271 (reg!20208 baseR!101)))) b!7535357))

(declare-fun b!7535359 () Bool)

(declare-fun e!4490371 () Bool)

(declare-fun tp!2191234 () Bool)

(declare-fun tp!2191232 () Bool)

(assert (=> b!7535359 (= e!4490371 (and tp!2191234 tp!2191232))))

(assert (=> b!7534880 (= tp!2191034 e!4490371)))

(declare-fun b!7535360 () Bool)

(declare-fun tp!2191233 () Bool)

(assert (=> b!7535360 (= e!4490371 tp!2191233)))

(declare-fun b!7535358 () Bool)

(assert (=> b!7535358 (= e!4490371 tp_is_empty!50113)))

(declare-fun b!7535361 () Bool)

(declare-fun tp!2191230 () Bool)

(declare-fun tp!2191231 () Bool)

(assert (=> b!7535361 (= e!4490371 (and tp!2191230 tp!2191231))))

(assert (= (and b!7534880 ((_ is ElementMatch!19879) (regTwo!40271 (reg!20208 baseR!101)))) b!7535358))

(assert (= (and b!7534880 ((_ is Concat!28724) (regTwo!40271 (reg!20208 baseR!101)))) b!7535359))

(assert (= (and b!7534880 ((_ is Star!19879) (regTwo!40271 (reg!20208 baseR!101)))) b!7535360))

(assert (= (and b!7534880 ((_ is Union!19879) (regTwo!40271 (reg!20208 baseR!101)))) b!7535361))

(declare-fun b!7535363 () Bool)

(declare-fun e!4490372 () Bool)

(declare-fun tp!2191239 () Bool)

(declare-fun tp!2191237 () Bool)

(assert (=> b!7535363 (= e!4490372 (and tp!2191239 tp!2191237))))

(assert (=> b!7534879 (= tp!2191036 e!4490372)))

(declare-fun b!7535364 () Bool)

(declare-fun tp!2191238 () Bool)

(assert (=> b!7535364 (= e!4490372 tp!2191238)))

(declare-fun b!7535362 () Bool)

(assert (=> b!7535362 (= e!4490372 tp_is_empty!50113)))

(declare-fun b!7535365 () Bool)

(declare-fun tp!2191235 () Bool)

(declare-fun tp!2191236 () Bool)

(assert (=> b!7535365 (= e!4490372 (and tp!2191235 tp!2191236))))

(assert (= (and b!7534879 ((_ is ElementMatch!19879) (reg!20208 (reg!20208 baseR!101)))) b!7535362))

(assert (= (and b!7534879 ((_ is Concat!28724) (reg!20208 (reg!20208 baseR!101)))) b!7535363))

(assert (= (and b!7534879 ((_ is Star!19879) (reg!20208 (reg!20208 baseR!101)))) b!7535364))

(assert (= (and b!7534879 ((_ is Union!19879) (reg!20208 (reg!20208 baseR!101)))) b!7535365))

(declare-fun b!7535367 () Bool)

(declare-fun e!4490373 () Bool)

(declare-fun tp!2191244 () Bool)

(declare-fun tp!2191242 () Bool)

(assert (=> b!7535367 (= e!4490373 (and tp!2191244 tp!2191242))))

(assert (=> b!7534905 (= tp!2191064 e!4490373)))

(declare-fun b!7535368 () Bool)

(declare-fun tp!2191243 () Bool)

(assert (=> b!7535368 (= e!4490373 tp!2191243)))

(declare-fun b!7535366 () Bool)

(assert (=> b!7535366 (= e!4490373 tp_is_empty!50113)))

(declare-fun b!7535369 () Bool)

(declare-fun tp!2191240 () Bool)

(declare-fun tp!2191241 () Bool)

(assert (=> b!7535369 (= e!4490373 (and tp!2191240 tp!2191241))))

(assert (= (and b!7534905 ((_ is ElementMatch!19879) (regOne!40271 (regOne!40270 baseR!101)))) b!7535366))

(assert (= (and b!7534905 ((_ is Concat!28724) (regOne!40271 (regOne!40270 baseR!101)))) b!7535367))

(assert (= (and b!7534905 ((_ is Star!19879) (regOne!40271 (regOne!40270 baseR!101)))) b!7535368))

(assert (= (and b!7534905 ((_ is Union!19879) (regOne!40271 (regOne!40270 baseR!101)))) b!7535369))

(declare-fun b!7535371 () Bool)

(declare-fun e!4490374 () Bool)

(declare-fun tp!2191249 () Bool)

(declare-fun tp!2191247 () Bool)

(assert (=> b!7535371 (= e!4490374 (and tp!2191249 tp!2191247))))

(assert (=> b!7534905 (= tp!2191065 e!4490374)))

(declare-fun b!7535372 () Bool)

(declare-fun tp!2191248 () Bool)

(assert (=> b!7535372 (= e!4490374 tp!2191248)))

(declare-fun b!7535370 () Bool)

(assert (=> b!7535370 (= e!4490374 tp_is_empty!50113)))

(declare-fun b!7535373 () Bool)

(declare-fun tp!2191245 () Bool)

(declare-fun tp!2191246 () Bool)

(assert (=> b!7535373 (= e!4490374 (and tp!2191245 tp!2191246))))

(assert (= (and b!7534905 ((_ is ElementMatch!19879) (regTwo!40271 (regOne!40270 baseR!101)))) b!7535370))

(assert (= (and b!7534905 ((_ is Concat!28724) (regTwo!40271 (regOne!40270 baseR!101)))) b!7535371))

(assert (= (and b!7534905 ((_ is Star!19879) (regTwo!40271 (regOne!40270 baseR!101)))) b!7535372))

(assert (= (and b!7534905 ((_ is Union!19879) (regTwo!40271 (regOne!40270 baseR!101)))) b!7535373))

(declare-fun b!7535375 () Bool)

(declare-fun e!4490375 () Bool)

(declare-fun tp!2191254 () Bool)

(declare-fun tp!2191252 () Bool)

(assert (=> b!7535375 (= e!4490375 (and tp!2191254 tp!2191252))))

(assert (=> b!7534896 (= tp!2191057 e!4490375)))

(declare-fun b!7535376 () Bool)

(declare-fun tp!2191253 () Bool)

(assert (=> b!7535376 (= e!4490375 tp!2191253)))

(declare-fun b!7535374 () Bool)

(assert (=> b!7535374 (= e!4490375 tp_is_empty!50113)))

(declare-fun b!7535377 () Bool)

(declare-fun tp!2191250 () Bool)

(declare-fun tp!2191251 () Bool)

(assert (=> b!7535377 (= e!4490375 (and tp!2191250 tp!2191251))))

(assert (= (and b!7534896 ((_ is ElementMatch!19879) (reg!20208 (regOne!40271 baseR!101)))) b!7535374))

(assert (= (and b!7534896 ((_ is Concat!28724) (reg!20208 (regOne!40271 baseR!101)))) b!7535375))

(assert (= (and b!7534896 ((_ is Star!19879) (reg!20208 (regOne!40271 baseR!101)))) b!7535376))

(assert (= (and b!7534896 ((_ is Union!19879) (reg!20208 (regOne!40271 baseR!101)))) b!7535377))

(declare-fun b!7535379 () Bool)

(declare-fun e!4490376 () Bool)

(declare-fun tp!2191259 () Bool)

(declare-fun tp!2191257 () Bool)

(assert (=> b!7535379 (= e!4490376 (and tp!2191259 tp!2191257))))

(assert (=> b!7534870 (= tp!2191028 e!4490376)))

(declare-fun b!7535380 () Bool)

(declare-fun tp!2191258 () Bool)

(assert (=> b!7535380 (= e!4490376 tp!2191258)))

(declare-fun b!7535378 () Bool)

(assert (=> b!7535378 (= e!4490376 tp_is_empty!50113)))

(declare-fun b!7535381 () Bool)

(declare-fun tp!2191255 () Bool)

(declare-fun tp!2191256 () Bool)

(assert (=> b!7535381 (= e!4490376 (and tp!2191255 tp!2191256))))

(assert (= (and b!7534870 ((_ is ElementMatch!19879) (reg!20208 (regTwo!40270 r!24333)))) b!7535378))

(assert (= (and b!7534870 ((_ is Concat!28724) (reg!20208 (regTwo!40270 r!24333)))) b!7535379))

(assert (= (and b!7534870 ((_ is Star!19879) (reg!20208 (regTwo!40270 r!24333)))) b!7535380))

(assert (= (and b!7534870 ((_ is Union!19879) (reg!20208 (regTwo!40270 r!24333)))) b!7535381))

(declare-fun b!7535383 () Bool)

(declare-fun e!4490377 () Bool)

(declare-fun tp!2191264 () Bool)

(declare-fun tp!2191262 () Bool)

(assert (=> b!7535383 (= e!4490377 (and tp!2191264 tp!2191262))))

(assert (=> b!7534869 (= tp!2191029 e!4490377)))

(declare-fun b!7535384 () Bool)

(declare-fun tp!2191263 () Bool)

(assert (=> b!7535384 (= e!4490377 tp!2191263)))

(declare-fun b!7535382 () Bool)

(assert (=> b!7535382 (= e!4490377 tp_is_empty!50113)))

(declare-fun b!7535385 () Bool)

(declare-fun tp!2191260 () Bool)

(declare-fun tp!2191261 () Bool)

(assert (=> b!7535385 (= e!4490377 (and tp!2191260 tp!2191261))))

(assert (= (and b!7534869 ((_ is ElementMatch!19879) (regOne!40270 (regTwo!40270 r!24333)))) b!7535382))

(assert (= (and b!7534869 ((_ is Concat!28724) (regOne!40270 (regTwo!40270 r!24333)))) b!7535383))

(assert (= (and b!7534869 ((_ is Star!19879) (regOne!40270 (regTwo!40270 r!24333)))) b!7535384))

(assert (= (and b!7534869 ((_ is Union!19879) (regOne!40270 (regTwo!40270 r!24333)))) b!7535385))

(declare-fun b!7535387 () Bool)

(declare-fun e!4490378 () Bool)

(declare-fun tp!2191269 () Bool)

(declare-fun tp!2191267 () Bool)

(assert (=> b!7535387 (= e!4490378 (and tp!2191269 tp!2191267))))

(assert (=> b!7534869 (= tp!2191027 e!4490378)))

(declare-fun b!7535388 () Bool)

(declare-fun tp!2191268 () Bool)

(assert (=> b!7535388 (= e!4490378 tp!2191268)))

(declare-fun b!7535386 () Bool)

(assert (=> b!7535386 (= e!4490378 tp_is_empty!50113)))

(declare-fun b!7535389 () Bool)

(declare-fun tp!2191265 () Bool)

(declare-fun tp!2191266 () Bool)

(assert (=> b!7535389 (= e!4490378 (and tp!2191265 tp!2191266))))

(assert (= (and b!7534869 ((_ is ElementMatch!19879) (regTwo!40270 (regTwo!40270 r!24333)))) b!7535386))

(assert (= (and b!7534869 ((_ is Concat!28724) (regTwo!40270 (regTwo!40270 r!24333)))) b!7535387))

(assert (= (and b!7534869 ((_ is Star!19879) (regTwo!40270 (regTwo!40270 r!24333)))) b!7535388))

(assert (= (and b!7534869 ((_ is Union!19879) (regTwo!40270 (regTwo!40270 r!24333)))) b!7535389))

(declare-fun b!7535391 () Bool)

(declare-fun e!4490379 () Bool)

(declare-fun tp!2191274 () Bool)

(declare-fun tp!2191272 () Bool)

(assert (=> b!7535391 (= e!4490379 (and tp!2191274 tp!2191272))))

(assert (=> b!7534871 (= tp!2191025 e!4490379)))

(declare-fun b!7535392 () Bool)

(declare-fun tp!2191273 () Bool)

(assert (=> b!7535392 (= e!4490379 tp!2191273)))

(declare-fun b!7535390 () Bool)

(assert (=> b!7535390 (= e!4490379 tp_is_empty!50113)))

(declare-fun b!7535393 () Bool)

(declare-fun tp!2191270 () Bool)

(declare-fun tp!2191271 () Bool)

(assert (=> b!7535393 (= e!4490379 (and tp!2191270 tp!2191271))))

(assert (= (and b!7534871 ((_ is ElementMatch!19879) (regOne!40271 (regTwo!40270 r!24333)))) b!7535390))

(assert (= (and b!7534871 ((_ is Concat!28724) (regOne!40271 (regTwo!40270 r!24333)))) b!7535391))

(assert (= (and b!7534871 ((_ is Star!19879) (regOne!40271 (regTwo!40270 r!24333)))) b!7535392))

(assert (= (and b!7534871 ((_ is Union!19879) (regOne!40271 (regTwo!40270 r!24333)))) b!7535393))

(declare-fun b!7535395 () Bool)

(declare-fun e!4490380 () Bool)

(declare-fun tp!2191279 () Bool)

(declare-fun tp!2191277 () Bool)

(assert (=> b!7535395 (= e!4490380 (and tp!2191279 tp!2191277))))

(assert (=> b!7534871 (= tp!2191026 e!4490380)))

(declare-fun b!7535396 () Bool)

(declare-fun tp!2191278 () Bool)

(assert (=> b!7535396 (= e!4490380 tp!2191278)))

(declare-fun b!7535394 () Bool)

(assert (=> b!7535394 (= e!4490380 tp_is_empty!50113)))

(declare-fun b!7535397 () Bool)

(declare-fun tp!2191275 () Bool)

(declare-fun tp!2191276 () Bool)

(assert (=> b!7535397 (= e!4490380 (and tp!2191275 tp!2191276))))

(assert (= (and b!7534871 ((_ is ElementMatch!19879) (regTwo!40271 (regTwo!40270 r!24333)))) b!7535394))

(assert (= (and b!7534871 ((_ is Concat!28724) (regTwo!40271 (regTwo!40270 r!24333)))) b!7535395))

(assert (= (and b!7534871 ((_ is Star!19879) (regTwo!40271 (regTwo!40270 r!24333)))) b!7535396))

(assert (= (and b!7534871 ((_ is Union!19879) (regTwo!40271 (regTwo!40270 r!24333)))) b!7535397))

(declare-fun b!7535399 () Bool)

(declare-fun e!4490381 () Bool)

(declare-fun tp!2191284 () Bool)

(declare-fun tp!2191282 () Bool)

(assert (=> b!7535399 (= e!4490381 (and tp!2191284 tp!2191282))))

(assert (=> b!7534908 (= tp!2191072 e!4490381)))

(declare-fun b!7535400 () Bool)

(declare-fun tp!2191283 () Bool)

(assert (=> b!7535400 (= e!4490381 tp!2191283)))

(declare-fun b!7535398 () Bool)

(assert (=> b!7535398 (= e!4490381 tp_is_empty!50113)))

(declare-fun b!7535401 () Bool)

(declare-fun tp!2191280 () Bool)

(declare-fun tp!2191281 () Bool)

(assert (=> b!7535401 (= e!4490381 (and tp!2191280 tp!2191281))))

(assert (= (and b!7534908 ((_ is ElementMatch!19879) (reg!20208 (regTwo!40270 baseR!101)))) b!7535398))

(assert (= (and b!7534908 ((_ is Concat!28724) (reg!20208 (regTwo!40270 baseR!101)))) b!7535399))

(assert (= (and b!7534908 ((_ is Star!19879) (reg!20208 (regTwo!40270 baseR!101)))) b!7535400))

(assert (= (and b!7534908 ((_ is Union!19879) (reg!20208 (regTwo!40270 baseR!101)))) b!7535401))

(declare-fun b!7535403 () Bool)

(declare-fun e!4490382 () Bool)

(declare-fun tp!2191289 () Bool)

(declare-fun tp!2191287 () Bool)

(assert (=> b!7535403 (= e!4490382 (and tp!2191289 tp!2191287))))

(assert (=> b!7534907 (= tp!2191073 e!4490382)))

(declare-fun b!7535404 () Bool)

(declare-fun tp!2191288 () Bool)

(assert (=> b!7535404 (= e!4490382 tp!2191288)))

(declare-fun b!7535402 () Bool)

(assert (=> b!7535402 (= e!4490382 tp_is_empty!50113)))

(declare-fun b!7535405 () Bool)

(declare-fun tp!2191285 () Bool)

(declare-fun tp!2191286 () Bool)

(assert (=> b!7535405 (= e!4490382 (and tp!2191285 tp!2191286))))

(assert (= (and b!7534907 ((_ is ElementMatch!19879) (regOne!40270 (regTwo!40270 baseR!101)))) b!7535402))

(assert (= (and b!7534907 ((_ is Concat!28724) (regOne!40270 (regTwo!40270 baseR!101)))) b!7535403))

(assert (= (and b!7534907 ((_ is Star!19879) (regOne!40270 (regTwo!40270 baseR!101)))) b!7535404))

(assert (= (and b!7534907 ((_ is Union!19879) (regOne!40270 (regTwo!40270 baseR!101)))) b!7535405))

(declare-fun b!7535407 () Bool)

(declare-fun e!4490383 () Bool)

(declare-fun tp!2191294 () Bool)

(declare-fun tp!2191292 () Bool)

(assert (=> b!7535407 (= e!4490383 (and tp!2191294 tp!2191292))))

(assert (=> b!7534907 (= tp!2191071 e!4490383)))

(declare-fun b!7535408 () Bool)

(declare-fun tp!2191293 () Bool)

(assert (=> b!7535408 (= e!4490383 tp!2191293)))

(declare-fun b!7535406 () Bool)

(assert (=> b!7535406 (= e!4490383 tp_is_empty!50113)))

(declare-fun b!7535409 () Bool)

(declare-fun tp!2191290 () Bool)

(declare-fun tp!2191291 () Bool)

(assert (=> b!7535409 (= e!4490383 (and tp!2191290 tp!2191291))))

(assert (= (and b!7534907 ((_ is ElementMatch!19879) (regTwo!40270 (regTwo!40270 baseR!101)))) b!7535406))

(assert (= (and b!7534907 ((_ is Concat!28724) (regTwo!40270 (regTwo!40270 baseR!101)))) b!7535407))

(assert (= (and b!7534907 ((_ is Star!19879) (regTwo!40270 (regTwo!40270 baseR!101)))) b!7535408))

(assert (= (and b!7534907 ((_ is Union!19879) (regTwo!40270 (regTwo!40270 baseR!101)))) b!7535409))

(declare-fun b!7535410 () Bool)

(declare-fun e!4490384 () Bool)

(declare-fun tp!2191295 () Bool)

(assert (=> b!7535410 (= e!4490384 (and tp_is_empty!50113 tp!2191295))))

(assert (=> b!7534881 (= tp!2191038 e!4490384)))

(assert (= (and b!7534881 ((_ is Cons!72638) (t!387469 (t!387469 testedP!423)))) b!7535410))

(declare-fun b!7535412 () Bool)

(declare-fun e!4490385 () Bool)

(declare-fun tp!2191300 () Bool)

(declare-fun tp!2191298 () Bool)

(assert (=> b!7535412 (= e!4490385 (and tp!2191300 tp!2191298))))

(assert (=> b!7534893 (= tp!2191049 e!4490385)))

(declare-fun b!7535413 () Bool)

(declare-fun tp!2191299 () Bool)

(assert (=> b!7535413 (= e!4490385 tp!2191299)))

(declare-fun b!7535411 () Bool)

(assert (=> b!7535411 (= e!4490385 tp_is_empty!50113)))

(declare-fun b!7535414 () Bool)

(declare-fun tp!2191296 () Bool)

(declare-fun tp!2191297 () Bool)

(assert (=> b!7535414 (= e!4490385 (and tp!2191296 tp!2191297))))

(assert (= (and b!7534893 ((_ is ElementMatch!19879) (regOne!40271 (regTwo!40271 r!24333)))) b!7535411))

(assert (= (and b!7534893 ((_ is Concat!28724) (regOne!40271 (regTwo!40271 r!24333)))) b!7535412))

(assert (= (and b!7534893 ((_ is Star!19879) (regOne!40271 (regTwo!40271 r!24333)))) b!7535413))

(assert (= (and b!7534893 ((_ is Union!19879) (regOne!40271 (regTwo!40271 r!24333)))) b!7535414))

(declare-fun b!7535416 () Bool)

(declare-fun e!4490386 () Bool)

(declare-fun tp!2191305 () Bool)

(declare-fun tp!2191303 () Bool)

(assert (=> b!7535416 (= e!4490386 (and tp!2191305 tp!2191303))))

(assert (=> b!7534893 (= tp!2191050 e!4490386)))

(declare-fun b!7535417 () Bool)

(declare-fun tp!2191304 () Bool)

(assert (=> b!7535417 (= e!4490386 tp!2191304)))

(declare-fun b!7535415 () Bool)

(assert (=> b!7535415 (= e!4490386 tp_is_empty!50113)))

(declare-fun b!7535418 () Bool)

(declare-fun tp!2191301 () Bool)

(declare-fun tp!2191302 () Bool)

(assert (=> b!7535418 (= e!4490386 (and tp!2191301 tp!2191302))))

(assert (= (and b!7534893 ((_ is ElementMatch!19879) (regTwo!40271 (regTwo!40271 r!24333)))) b!7535415))

(assert (= (and b!7534893 ((_ is Concat!28724) (regTwo!40271 (regTwo!40271 r!24333)))) b!7535416))

(assert (= (and b!7534893 ((_ is Star!19879) (regTwo!40271 (regTwo!40271 r!24333)))) b!7535417))

(assert (= (and b!7534893 ((_ is Union!19879) (regTwo!40271 (regTwo!40271 r!24333)))) b!7535418))

(declare-fun b!7535420 () Bool)

(declare-fun e!4490387 () Bool)

(declare-fun tp!2191310 () Bool)

(declare-fun tp!2191308 () Bool)

(assert (=> b!7535420 (= e!4490387 (and tp!2191310 tp!2191308))))

(assert (=> b!7534884 (= tp!2191042 e!4490387)))

(declare-fun b!7535421 () Bool)

(declare-fun tp!2191309 () Bool)

(assert (=> b!7535421 (= e!4490387 tp!2191309)))

(declare-fun b!7535419 () Bool)

(assert (=> b!7535419 (= e!4490387 tp_is_empty!50113)))

(declare-fun b!7535422 () Bool)

(declare-fun tp!2191306 () Bool)

(declare-fun tp!2191307 () Bool)

(assert (=> b!7535422 (= e!4490387 (and tp!2191306 tp!2191307))))

(assert (= (and b!7534884 ((_ is ElementMatch!19879) (reg!20208 (reg!20208 r!24333)))) b!7535419))

(assert (= (and b!7534884 ((_ is Concat!28724) (reg!20208 (reg!20208 r!24333)))) b!7535420))

(assert (= (and b!7534884 ((_ is Star!19879) (reg!20208 (reg!20208 r!24333)))) b!7535421))

(assert (= (and b!7534884 ((_ is Union!19879) (reg!20208 (reg!20208 r!24333)))) b!7535422))

(declare-fun b!7535423 () Bool)

(declare-fun e!4490388 () Bool)

(declare-fun tp!2191311 () Bool)

(assert (=> b!7535423 (= e!4490388 (and tp_is_empty!50113 tp!2191311))))

(assert (=> b!7534910 (= tp!2191074 e!4490388)))

(assert (= (and b!7534910 ((_ is Cons!72638) (t!387469 (t!387469 knownP!30)))) b!7535423))

(declare-fun b!7535425 () Bool)

(declare-fun e!4490389 () Bool)

(declare-fun tp!2191316 () Bool)

(declare-fun tp!2191314 () Bool)

(assert (=> b!7535425 (= e!4490389 (and tp!2191316 tp!2191314))))

(assert (=> b!7534865 (= tp!2191024 e!4490389)))

(declare-fun b!7535426 () Bool)

(declare-fun tp!2191315 () Bool)

(assert (=> b!7535426 (= e!4490389 tp!2191315)))

(declare-fun b!7535424 () Bool)

(assert (=> b!7535424 (= e!4490389 tp_is_empty!50113)))

(declare-fun b!7535427 () Bool)

(declare-fun tp!2191312 () Bool)

(declare-fun tp!2191313 () Bool)

(assert (=> b!7535427 (= e!4490389 (and tp!2191312 tp!2191313))))

(assert (= (and b!7534865 ((_ is ElementMatch!19879) (regOne!40270 (regOne!40270 r!24333)))) b!7535424))

(assert (= (and b!7534865 ((_ is Concat!28724) (regOne!40270 (regOne!40270 r!24333)))) b!7535425))

(assert (= (and b!7534865 ((_ is Star!19879) (regOne!40270 (regOne!40270 r!24333)))) b!7535426))

(assert (= (and b!7534865 ((_ is Union!19879) (regOne!40270 (regOne!40270 r!24333)))) b!7535427))

(declare-fun b!7535429 () Bool)

(declare-fun e!4490390 () Bool)

(declare-fun tp!2191321 () Bool)

(declare-fun tp!2191319 () Bool)

(assert (=> b!7535429 (= e!4490390 (and tp!2191321 tp!2191319))))

(assert (=> b!7534865 (= tp!2191022 e!4490390)))

(declare-fun b!7535430 () Bool)

(declare-fun tp!2191320 () Bool)

(assert (=> b!7535430 (= e!4490390 tp!2191320)))

(declare-fun b!7535428 () Bool)

(assert (=> b!7535428 (= e!4490390 tp_is_empty!50113)))

(declare-fun b!7535431 () Bool)

(declare-fun tp!2191317 () Bool)

(declare-fun tp!2191318 () Bool)

(assert (=> b!7535431 (= e!4490390 (and tp!2191317 tp!2191318))))

(assert (= (and b!7534865 ((_ is ElementMatch!19879) (regTwo!40270 (regOne!40270 r!24333)))) b!7535428))

(assert (= (and b!7534865 ((_ is Concat!28724) (regTwo!40270 (regOne!40270 r!24333)))) b!7535429))

(assert (= (and b!7534865 ((_ is Star!19879) (regTwo!40270 (regOne!40270 r!24333)))) b!7535430))

(assert (= (and b!7534865 ((_ is Union!19879) (regTwo!40270 (regOne!40270 r!24333)))) b!7535431))

(declare-fun b!7535433 () Bool)

(declare-fun e!4490391 () Bool)

(declare-fun tp!2191326 () Bool)

(declare-fun tp!2191324 () Bool)

(assert (=> b!7535433 (= e!4490391 (and tp!2191326 tp!2191324))))

(assert (=> b!7534883 (= tp!2191043 e!4490391)))

(declare-fun b!7535434 () Bool)

(declare-fun tp!2191325 () Bool)

(assert (=> b!7535434 (= e!4490391 tp!2191325)))

(declare-fun b!7535432 () Bool)

(assert (=> b!7535432 (= e!4490391 tp_is_empty!50113)))

(declare-fun b!7535435 () Bool)

(declare-fun tp!2191322 () Bool)

(declare-fun tp!2191323 () Bool)

(assert (=> b!7535435 (= e!4490391 (and tp!2191322 tp!2191323))))

(assert (= (and b!7534883 ((_ is ElementMatch!19879) (regOne!40270 (reg!20208 r!24333)))) b!7535432))

(assert (= (and b!7534883 ((_ is Concat!28724) (regOne!40270 (reg!20208 r!24333)))) b!7535433))

(assert (= (and b!7534883 ((_ is Star!19879) (regOne!40270 (reg!20208 r!24333)))) b!7535434))

(assert (= (and b!7534883 ((_ is Union!19879) (regOne!40270 (reg!20208 r!24333)))) b!7535435))

(declare-fun b!7535437 () Bool)

(declare-fun e!4490392 () Bool)

(declare-fun tp!2191331 () Bool)

(declare-fun tp!2191329 () Bool)

(assert (=> b!7535437 (= e!4490392 (and tp!2191331 tp!2191329))))

(assert (=> b!7534883 (= tp!2191041 e!4490392)))

(declare-fun b!7535438 () Bool)

(declare-fun tp!2191330 () Bool)

(assert (=> b!7535438 (= e!4490392 tp!2191330)))

(declare-fun b!7535436 () Bool)

(assert (=> b!7535436 (= e!4490392 tp_is_empty!50113)))

(declare-fun b!7535439 () Bool)

(declare-fun tp!2191327 () Bool)

(declare-fun tp!2191328 () Bool)

(assert (=> b!7535439 (= e!4490392 (and tp!2191327 tp!2191328))))

(assert (= (and b!7534883 ((_ is ElementMatch!19879) (regTwo!40270 (reg!20208 r!24333)))) b!7535436))

(assert (= (and b!7534883 ((_ is Concat!28724) (regTwo!40270 (reg!20208 r!24333)))) b!7535437))

(assert (= (and b!7534883 ((_ is Star!19879) (regTwo!40270 (reg!20208 r!24333)))) b!7535438))

(assert (= (and b!7534883 ((_ is Union!19879) (regTwo!40270 (reg!20208 r!24333)))) b!7535439))

(declare-fun b!7535441 () Bool)

(declare-fun e!4490393 () Bool)

(declare-fun tp!2191336 () Bool)

(declare-fun tp!2191334 () Bool)

(assert (=> b!7535441 (= e!4490393 (and tp!2191336 tp!2191334))))

(assert (=> b!7534885 (= tp!2191039 e!4490393)))

(declare-fun b!7535442 () Bool)

(declare-fun tp!2191335 () Bool)

(assert (=> b!7535442 (= e!4490393 tp!2191335)))

(declare-fun b!7535440 () Bool)

(assert (=> b!7535440 (= e!4490393 tp_is_empty!50113)))

(declare-fun b!7535443 () Bool)

(declare-fun tp!2191332 () Bool)

(declare-fun tp!2191333 () Bool)

(assert (=> b!7535443 (= e!4490393 (and tp!2191332 tp!2191333))))

(assert (= (and b!7534885 ((_ is ElementMatch!19879) (regOne!40271 (reg!20208 r!24333)))) b!7535440))

(assert (= (and b!7534885 ((_ is Concat!28724) (regOne!40271 (reg!20208 r!24333)))) b!7535441))

(assert (= (and b!7534885 ((_ is Star!19879) (regOne!40271 (reg!20208 r!24333)))) b!7535442))

(assert (= (and b!7534885 ((_ is Union!19879) (regOne!40271 (reg!20208 r!24333)))) b!7535443))

(declare-fun b!7535445 () Bool)

(declare-fun e!4490394 () Bool)

(declare-fun tp!2191341 () Bool)

(declare-fun tp!2191339 () Bool)

(assert (=> b!7535445 (= e!4490394 (and tp!2191341 tp!2191339))))

(assert (=> b!7534885 (= tp!2191040 e!4490394)))

(declare-fun b!7535446 () Bool)

(declare-fun tp!2191340 () Bool)

(assert (=> b!7535446 (= e!4490394 tp!2191340)))

(declare-fun b!7535444 () Bool)

(assert (=> b!7535444 (= e!4490394 tp_is_empty!50113)))

(declare-fun b!7535447 () Bool)

(declare-fun tp!2191337 () Bool)

(declare-fun tp!2191338 () Bool)

(assert (=> b!7535447 (= e!4490394 (and tp!2191337 tp!2191338))))

(assert (= (and b!7534885 ((_ is ElementMatch!19879) (regTwo!40271 (reg!20208 r!24333)))) b!7535444))

(assert (= (and b!7534885 ((_ is Concat!28724) (regTwo!40271 (reg!20208 r!24333)))) b!7535445))

(assert (= (and b!7534885 ((_ is Star!19879) (regTwo!40271 (reg!20208 r!24333)))) b!7535446))

(assert (= (and b!7534885 ((_ is Union!19879) (regTwo!40271 (reg!20208 r!24333)))) b!7535447))

(declare-fun b!7535449 () Bool)

(declare-fun e!4490395 () Bool)

(declare-fun tp!2191346 () Bool)

(declare-fun tp!2191344 () Bool)

(assert (=> b!7535449 (= e!4490395 (and tp!2191346 tp!2191344))))

(assert (=> b!7534909 (= tp!2191069 e!4490395)))

(declare-fun b!7535450 () Bool)

(declare-fun tp!2191345 () Bool)

(assert (=> b!7535450 (= e!4490395 tp!2191345)))

(declare-fun b!7535448 () Bool)

(assert (=> b!7535448 (= e!4490395 tp_is_empty!50113)))

(declare-fun b!7535451 () Bool)

(declare-fun tp!2191342 () Bool)

(declare-fun tp!2191343 () Bool)

(assert (=> b!7535451 (= e!4490395 (and tp!2191342 tp!2191343))))

(assert (= (and b!7534909 ((_ is ElementMatch!19879) (regOne!40271 (regTwo!40270 baseR!101)))) b!7535448))

(assert (= (and b!7534909 ((_ is Concat!28724) (regOne!40271 (regTwo!40270 baseR!101)))) b!7535449))

(assert (= (and b!7534909 ((_ is Star!19879) (regOne!40271 (regTwo!40270 baseR!101)))) b!7535450))

(assert (= (and b!7534909 ((_ is Union!19879) (regOne!40271 (regTwo!40270 baseR!101)))) b!7535451))

(declare-fun b!7535453 () Bool)

(declare-fun e!4490396 () Bool)

(declare-fun tp!2191351 () Bool)

(declare-fun tp!2191349 () Bool)

(assert (=> b!7535453 (= e!4490396 (and tp!2191351 tp!2191349))))

(assert (=> b!7534909 (= tp!2191070 e!4490396)))

(declare-fun b!7535454 () Bool)

(declare-fun tp!2191350 () Bool)

(assert (=> b!7535454 (= e!4490396 tp!2191350)))

(declare-fun b!7535452 () Bool)

(assert (=> b!7535452 (= e!4490396 tp_is_empty!50113)))

(declare-fun b!7535455 () Bool)

(declare-fun tp!2191347 () Bool)

(declare-fun tp!2191348 () Bool)

(assert (=> b!7535455 (= e!4490396 (and tp!2191347 tp!2191348))))

(assert (= (and b!7534909 ((_ is ElementMatch!19879) (regTwo!40271 (regTwo!40270 baseR!101)))) b!7535452))

(assert (= (and b!7534909 ((_ is Concat!28724) (regTwo!40271 (regTwo!40270 baseR!101)))) b!7535453))

(assert (= (and b!7534909 ((_ is Star!19879) (regTwo!40271 (regTwo!40270 baseR!101)))) b!7535454))

(assert (= (and b!7534909 ((_ is Union!19879) (regTwo!40271 (regTwo!40270 baseR!101)))) b!7535455))

(declare-fun b!7535456 () Bool)

(declare-fun e!4490397 () Bool)

(declare-fun tp!2191352 () Bool)

(assert (=> b!7535456 (= e!4490397 (and tp_is_empty!50113 tp!2191352))))

(assert (=> b!7534876 (= tp!2191032 e!4490397)))

(assert (= (and b!7534876 ((_ is Cons!72638) (t!387469 (t!387469 input!7874)))) b!7535456))

(declare-fun b!7535458 () Bool)

(declare-fun e!4490398 () Bool)

(declare-fun tp!2191357 () Bool)

(declare-fun tp!2191355 () Bool)

(assert (=> b!7535458 (= e!4490398 (and tp!2191357 tp!2191355))))

(assert (=> b!7534900 (= tp!2191062 e!4490398)))

(declare-fun b!7535459 () Bool)

(declare-fun tp!2191356 () Bool)

(assert (=> b!7535459 (= e!4490398 tp!2191356)))

(declare-fun b!7535457 () Bool)

(assert (=> b!7535457 (= e!4490398 tp_is_empty!50113)))

(declare-fun b!7535460 () Bool)

(declare-fun tp!2191353 () Bool)

(declare-fun tp!2191354 () Bool)

(assert (=> b!7535460 (= e!4490398 (and tp!2191353 tp!2191354))))

(assert (= (and b!7534900 ((_ is ElementMatch!19879) (reg!20208 (regTwo!40271 baseR!101)))) b!7535457))

(assert (= (and b!7534900 ((_ is Concat!28724) (reg!20208 (regTwo!40271 baseR!101)))) b!7535458))

(assert (= (and b!7534900 ((_ is Star!19879) (reg!20208 (regTwo!40271 baseR!101)))) b!7535459))

(assert (= (and b!7534900 ((_ is Union!19879) (reg!20208 (regTwo!40271 baseR!101)))) b!7535460))

(declare-fun b!7535462 () Bool)

(declare-fun e!4490399 () Bool)

(declare-fun tp!2191362 () Bool)

(declare-fun tp!2191360 () Bool)

(assert (=> b!7535462 (= e!4490399 (and tp!2191362 tp!2191360))))

(assert (=> b!7534899 (= tp!2191063 e!4490399)))

(declare-fun b!7535463 () Bool)

(declare-fun tp!2191361 () Bool)

(assert (=> b!7535463 (= e!4490399 tp!2191361)))

(declare-fun b!7535461 () Bool)

(assert (=> b!7535461 (= e!4490399 tp_is_empty!50113)))

(declare-fun b!7535464 () Bool)

(declare-fun tp!2191358 () Bool)

(declare-fun tp!2191359 () Bool)

(assert (=> b!7535464 (= e!4490399 (and tp!2191358 tp!2191359))))

(assert (= (and b!7534899 ((_ is ElementMatch!19879) (regOne!40270 (regTwo!40271 baseR!101)))) b!7535461))

(assert (= (and b!7534899 ((_ is Concat!28724) (regOne!40270 (regTwo!40271 baseR!101)))) b!7535462))

(assert (= (and b!7534899 ((_ is Star!19879) (regOne!40270 (regTwo!40271 baseR!101)))) b!7535463))

(assert (= (and b!7534899 ((_ is Union!19879) (regOne!40270 (regTwo!40271 baseR!101)))) b!7535464))

(declare-fun b!7535466 () Bool)

(declare-fun e!4490400 () Bool)

(declare-fun tp!2191367 () Bool)

(declare-fun tp!2191365 () Bool)

(assert (=> b!7535466 (= e!4490400 (and tp!2191367 tp!2191365))))

(assert (=> b!7534899 (= tp!2191061 e!4490400)))

(declare-fun b!7535467 () Bool)

(declare-fun tp!2191366 () Bool)

(assert (=> b!7535467 (= e!4490400 tp!2191366)))

(declare-fun b!7535465 () Bool)

(assert (=> b!7535465 (= e!4490400 tp_is_empty!50113)))

(declare-fun b!7535468 () Bool)

(declare-fun tp!2191363 () Bool)

(declare-fun tp!2191364 () Bool)

(assert (=> b!7535468 (= e!4490400 (and tp!2191363 tp!2191364))))

(assert (= (and b!7534899 ((_ is ElementMatch!19879) (regTwo!40270 (regTwo!40271 baseR!101)))) b!7535465))

(assert (= (and b!7534899 ((_ is Concat!28724) (regTwo!40270 (regTwo!40271 baseR!101)))) b!7535466))

(assert (= (and b!7534899 ((_ is Star!19879) (regTwo!40270 (regTwo!40271 baseR!101)))) b!7535467))

(assert (= (and b!7534899 ((_ is Union!19879) (regTwo!40270 (regTwo!40271 baseR!101)))) b!7535468))

(declare-fun b!7535470 () Bool)

(declare-fun e!4490401 () Bool)

(declare-fun tp!2191372 () Bool)

(declare-fun tp!2191370 () Bool)

(assert (=> b!7535470 (= e!4490401 (and tp!2191372 tp!2191370))))

(assert (=> b!7534901 (= tp!2191059 e!4490401)))

(declare-fun b!7535471 () Bool)

(declare-fun tp!2191371 () Bool)

(assert (=> b!7535471 (= e!4490401 tp!2191371)))

(declare-fun b!7535469 () Bool)

(assert (=> b!7535469 (= e!4490401 tp_is_empty!50113)))

(declare-fun b!7535472 () Bool)

(declare-fun tp!2191368 () Bool)

(declare-fun tp!2191369 () Bool)

(assert (=> b!7535472 (= e!4490401 (and tp!2191368 tp!2191369))))

(assert (= (and b!7534901 ((_ is ElementMatch!19879) (regOne!40271 (regTwo!40271 baseR!101)))) b!7535469))

(assert (= (and b!7534901 ((_ is Concat!28724) (regOne!40271 (regTwo!40271 baseR!101)))) b!7535470))

(assert (= (and b!7534901 ((_ is Star!19879) (regOne!40271 (regTwo!40271 baseR!101)))) b!7535471))

(assert (= (and b!7534901 ((_ is Union!19879) (regOne!40271 (regTwo!40271 baseR!101)))) b!7535472))

(declare-fun b!7535474 () Bool)

(declare-fun e!4490402 () Bool)

(declare-fun tp!2191377 () Bool)

(declare-fun tp!2191375 () Bool)

(assert (=> b!7535474 (= e!4490402 (and tp!2191377 tp!2191375))))

(assert (=> b!7534901 (= tp!2191060 e!4490402)))

(declare-fun b!7535475 () Bool)

(declare-fun tp!2191376 () Bool)

(assert (=> b!7535475 (= e!4490402 tp!2191376)))

(declare-fun b!7535473 () Bool)

(assert (=> b!7535473 (= e!4490402 tp_is_empty!50113)))

(declare-fun b!7535476 () Bool)

(declare-fun tp!2191373 () Bool)

(declare-fun tp!2191374 () Bool)

(assert (=> b!7535476 (= e!4490402 (and tp!2191373 tp!2191374))))

(assert (= (and b!7534901 ((_ is ElementMatch!19879) (regTwo!40271 (regTwo!40271 baseR!101)))) b!7535473))

(assert (= (and b!7534901 ((_ is Concat!28724) (regTwo!40271 (regTwo!40271 baseR!101)))) b!7535474))

(assert (= (and b!7534901 ((_ is Star!19879) (regTwo!40271 (regTwo!40271 baseR!101)))) b!7535475))

(assert (= (and b!7534901 ((_ is Union!19879) (regTwo!40271 (regTwo!40271 baseR!101)))) b!7535476))

(declare-fun b!7535478 () Bool)

(declare-fun e!4490403 () Bool)

(declare-fun tp!2191382 () Bool)

(declare-fun tp!2191380 () Bool)

(assert (=> b!7535478 (= e!4490403 (and tp!2191382 tp!2191380))))

(assert (=> b!7534892 (= tp!2191052 e!4490403)))

(declare-fun b!7535479 () Bool)

(declare-fun tp!2191381 () Bool)

(assert (=> b!7535479 (= e!4490403 tp!2191381)))

(declare-fun b!7535477 () Bool)

(assert (=> b!7535477 (= e!4490403 tp_is_empty!50113)))

(declare-fun b!7535480 () Bool)

(declare-fun tp!2191378 () Bool)

(declare-fun tp!2191379 () Bool)

(assert (=> b!7535480 (= e!4490403 (and tp!2191378 tp!2191379))))

(assert (= (and b!7534892 ((_ is ElementMatch!19879) (reg!20208 (regTwo!40271 r!24333)))) b!7535477))

(assert (= (and b!7534892 ((_ is Concat!28724) (reg!20208 (regTwo!40271 r!24333)))) b!7535478))

(assert (= (and b!7534892 ((_ is Star!19879) (reg!20208 (regTwo!40271 r!24333)))) b!7535479))

(assert (= (and b!7534892 ((_ is Union!19879) (reg!20208 (regTwo!40271 r!24333)))) b!7535480))

(declare-fun b!7535482 () Bool)

(declare-fun e!4490404 () Bool)

(declare-fun tp!2191387 () Bool)

(declare-fun tp!2191385 () Bool)

(assert (=> b!7535482 (= e!4490404 (and tp!2191387 tp!2191385))))

(assert (=> b!7534891 (= tp!2191053 e!4490404)))

(declare-fun b!7535483 () Bool)

(declare-fun tp!2191386 () Bool)

(assert (=> b!7535483 (= e!4490404 tp!2191386)))

(declare-fun b!7535481 () Bool)

(assert (=> b!7535481 (= e!4490404 tp_is_empty!50113)))

(declare-fun b!7535484 () Bool)

(declare-fun tp!2191383 () Bool)

(declare-fun tp!2191384 () Bool)

(assert (=> b!7535484 (= e!4490404 (and tp!2191383 tp!2191384))))

(assert (= (and b!7534891 ((_ is ElementMatch!19879) (regOne!40270 (regTwo!40271 r!24333)))) b!7535481))

(assert (= (and b!7534891 ((_ is Concat!28724) (regOne!40270 (regTwo!40271 r!24333)))) b!7535482))

(assert (= (and b!7534891 ((_ is Star!19879) (regOne!40270 (regTwo!40271 r!24333)))) b!7535483))

(assert (= (and b!7534891 ((_ is Union!19879) (regOne!40270 (regTwo!40271 r!24333)))) b!7535484))

(declare-fun b!7535486 () Bool)

(declare-fun e!4490405 () Bool)

(declare-fun tp!2191392 () Bool)

(declare-fun tp!2191390 () Bool)

(assert (=> b!7535486 (= e!4490405 (and tp!2191392 tp!2191390))))

(assert (=> b!7534891 (= tp!2191051 e!4490405)))

(declare-fun b!7535487 () Bool)

(declare-fun tp!2191391 () Bool)

(assert (=> b!7535487 (= e!4490405 tp!2191391)))

(declare-fun b!7535485 () Bool)

(assert (=> b!7535485 (= e!4490405 tp_is_empty!50113)))

(declare-fun b!7535488 () Bool)

(declare-fun tp!2191388 () Bool)

(declare-fun tp!2191389 () Bool)

(assert (=> b!7535488 (= e!4490405 (and tp!2191388 tp!2191389))))

(assert (= (and b!7534891 ((_ is ElementMatch!19879) (regTwo!40270 (regTwo!40271 r!24333)))) b!7535485))

(assert (= (and b!7534891 ((_ is Concat!28724) (regTwo!40270 (regTwo!40271 r!24333)))) b!7535486))

(assert (= (and b!7534891 ((_ is Star!19879) (regTwo!40270 (regTwo!40271 r!24333)))) b!7535487))

(assert (= (and b!7534891 ((_ is Union!19879) (regTwo!40270 (regTwo!40271 r!24333)))) b!7535488))

(check-sat (not b!7535462) (not b!7535435) (not b!7535296) (not b!7535426) tp_is_empty!50113 (not b!7535111) (not b!7535486) (not b!7535235) (not b!7535443) (not d!2310369) (not b!7535447) (not b!7535476) (not b!7535408) (not b!7535355) (not b!7535395) (not b!7535488) (not b!7535344) (not b!7535371) (not b!7535315) (not b!7535384) (not b!7535325) (not b!7535475) (not b!7535474) (not b!7535418) (not b!7535319) (not d!2310351) (not d!2310371) (not b!7535404) (not b!7535301) (not b!7535376) (not b!7535345) (not b!7535317) (not b!7535259) (not b!7535311) (not b!7535305) (not b!7535288) (not b!7535391) (not b!7535136) (not b!7535336) (not b!7535454) (not d!2310367) (not b!7535202) (not b!7535231) (not bm!691295) (not b!7535351) (not b!7535360) (not b!7535441) (not b!7535357) (not b!7535196) (not b!7535403) (not b!7535233) (not d!2310353) (not b!7535455) (not b!7535089) (not b!7535449) (not b!7535091) (not b!7535414) (not bm!691309) (not b!7535429) (not b!7535397) (not b!7535388) (not b!7535349) (not bm!691311) (not b!7535107) (not d!2310381) (not bm!691287) (not b!7535207) (not b!7535392) (not b!7535482) (not b!7535383) (not d!2310399) (not b!7535331) (not b!7535106) (not b!7535361) (not b!7535399) (not bm!691328) (not b!7535129) (not b!7535255) (not b!7535220) (not b!7535341) (not b!7535082) (not b!7535327) (not b!7535385) (not b!7535195) (not d!2310361) (not b!7535329) (not b!7535149) (not b!7535352) (not b!7535480) (not b!7535143) (not b!7535483) (not b!7535446) (not b!7535236) (not b!7535291) (not b!7535307) (not d!2310347) (not b!7535133) (not b!7535328) (not b!7535413) (not b!7535453) (not b!7535369) (not b!7535434) (not bm!691293) (not b!7535460) (not b!7535308) (not b!7535400) (not b!7535423) (not b!7535421) (not b!7535213) (not b!7535393) (not d!2310377) (not b!7535442) (not bm!691321) (not b!7535409) (not b!7535470) (not b!7535138) (not b!7535335) (not b!7535427) (not b!7535333) (not b!7535456) (not b!7535102) (not b!7535147) (not b!7535287) (not b!7535431) (not b!7535405) (not bm!691319) (not b!7535289) (not d!2310315) (not b!7535312) (not b!7535151) (not bm!691307) (not b!7535323) (not b!7535381) (not b!7535180) (not d!2310409) (not b!7535377) (not b!7535348) (not b!7535108) (not b!7535139) (not d!2310373) (not b!7535264) (not b!7535260) (not b!7535487) (not b!7535430) (not b!7535463) (not b!7535339) (not b!7535389) (not b!7535347) (not bm!691315) (not b!7535439) (not b!7535425) (not b!7535417) (not b!7535396) (not b!7535467) (not b!7535079) (not b!7535420) (not bm!691313) (not b!7535365) (not b!7535154) (not b!7535359) (not b!7535472) (not bm!691305) (not b!7535293) (not b!7535458) (not b!7535438) (not b!7535466) (not b!7535132) (not b!7535337) (not b!7535375) (not b!7535343) (not d!2310343) (not b!7535192) (not b!7535368) (not b!7535451) (not b!7535380) (not b!7535295) (not b!7535437) (not b!7535221) (not bm!691286) (not d!2310327) (not b!7535433) (not b!7535459) (not b!7535297) (not b!7535103) (not bm!691289) (not b!7535299) (not d!2310325) (not b!7535086) (not b!7535258) (not b!7535367) (not b!7535085) (not b!7535303) (not b!7535324) (not b!7535340) (not b!7535234) (not b!7535142) (not d!2310397) (not b!7535479) (not b!7535478) (not b!7535300) (not d!2310379) (not b!7535204) (not bm!691317) (not b!7535379) (not b!7535364) (not b!7535468) (not b!7535332) (not b!7535372) (not b!7535227) (not b!7535316) (not b!7535471) (not b!7535309) (not b!7535407) (not b!7535320) (not b!7535262) (not b!7535081) (not b!7535412) (not b!7535356) (not b!7535304) (not bm!691308) (not b!7535200) (not bm!691290) (not b!7535450) (not b!7535292) (not b!7535373) (not b!7535387) (not b!7535353) (not b!7535321) (not bm!691292) (not b!7535410) (not b!7535099) (not b!7535445) (not b!7535120) (not b!7535219) (not b!7535484) (not b!7535110) (not b!7535401) (not b!7535137) (not d!2310411) (not b!7535363) (not b!7535313) (not b!7535422) (not bm!691320) (not b!7535243) (not b!7535416) (not b!7535229) (not bm!691327) (not b!7535464))
(check-sat)
