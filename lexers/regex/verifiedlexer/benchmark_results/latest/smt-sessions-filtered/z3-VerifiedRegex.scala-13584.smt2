; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730368 () Bool)

(assert start!730368)

(declare-fun b!7554661 () Bool)

(declare-fun res!3027908 () Bool)

(declare-fun e!4499680 () Bool)

(assert (=> b!7554661 (=> (not res!3027908) (not e!4499680))))

(declare-datatypes ((C!40252 0))(
  ( (C!40253 (val!30566 Int)) )
))
(declare-datatypes ((List!72846 0))(
  ( (Nil!72722) (Cons!72722 (h!79170 C!40252) (t!387571 List!72846)) )
))
(declare-fun testedP!423 () List!72846)

(declare-fun input!7874 () List!72846)

(declare-fun isPrefix!6169 (List!72846 List!72846) Bool)

(assert (=> b!7554661 (= res!3027908 (isPrefix!6169 testedP!423 input!7874))))

(declare-fun res!3027914 () Bool)

(assert (=> start!730368 (=> (not res!3027914) (not e!4499680))))

(declare-datatypes ((Regex!19963 0))(
  ( (ElementMatch!19963 (c!1394290 C!40252)) (Concat!28808 (regOne!40438 Regex!19963) (regTwo!40438 Regex!19963)) (EmptyExpr!19963) (Star!19963 (reg!20292 Regex!19963)) (EmptyLang!19963) (Union!19963 (regOne!40439 Regex!19963) (regTwo!40439 Regex!19963)) )
))
(declare-fun baseR!101 () Regex!19963)

(declare-fun validRegex!10391 (Regex!19963) Bool)

(assert (=> start!730368 (= res!3027914 (validRegex!10391 baseR!101))))

(assert (=> start!730368 e!4499680))

(declare-fun e!4499681 () Bool)

(assert (=> start!730368 e!4499681))

(declare-fun e!4499676 () Bool)

(assert (=> start!730368 e!4499676))

(declare-fun e!4499683 () Bool)

(assert (=> start!730368 e!4499683))

(declare-fun e!4499679 () Bool)

(assert (=> start!730368 e!4499679))

(declare-fun e!4499677 () Bool)

(assert (=> start!730368 e!4499677))

(declare-fun b!7554662 () Bool)

(declare-fun e!4499678 () Bool)

(assert (=> b!7554662 (= e!4499680 e!4499678)))

(declare-fun res!3027909 () Bool)

(assert (=> b!7554662 (=> (not res!3027909) (not e!4499678))))

(declare-fun lt!2647748 () Int)

(declare-fun lt!2647746 () Int)

(assert (=> b!7554662 (= res!3027909 (>= lt!2647748 lt!2647746))))

(declare-fun size!42459 (List!72846) Int)

(assert (=> b!7554662 (= lt!2647746 (size!42459 testedP!423))))

(declare-fun knownP!30 () List!72846)

(assert (=> b!7554662 (= lt!2647748 (size!42459 knownP!30))))

(declare-fun b!7554663 () Bool)

(declare-fun tp!2198155 () Bool)

(declare-fun tp!2198154 () Bool)

(assert (=> b!7554663 (= e!4499677 (and tp!2198155 tp!2198154))))

(declare-fun b!7554664 () Bool)

(declare-fun tp_is_empty!50281 () Bool)

(assert (=> b!7554664 (= e!4499681 tp_is_empty!50281)))

(declare-fun b!7554665 () Bool)

(declare-fun tp!2198150 () Bool)

(declare-fun tp!2198151 () Bool)

(assert (=> b!7554665 (= e!4499677 (and tp!2198150 tp!2198151))))

(declare-fun b!7554666 () Bool)

(declare-fun tp!2198148 () Bool)

(assert (=> b!7554666 (= e!4499676 (and tp_is_empty!50281 tp!2198148))))

(declare-fun b!7554667 () Bool)

(declare-fun res!3027915 () Bool)

(declare-fun e!4499682 () Bool)

(assert (=> b!7554667 (=> res!3027915 e!4499682)))

(declare-fun r!24333 () Regex!19963)

(declare-fun derivative!493 (Regex!19963 List!72846) Regex!19963)

(assert (=> b!7554667 (= res!3027915 (not (= (derivative!493 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7554668 () Bool)

(declare-fun res!3027907 () Bool)

(assert (=> b!7554668 (=> (not res!3027907) (not e!4499678))))

(declare-fun matchR!9565 (Regex!19963 List!72846) Bool)

(assert (=> b!7554668 (= res!3027907 (matchR!9565 baseR!101 knownP!30))))

(declare-fun b!7554669 () Bool)

(declare-fun res!3027913 () Bool)

(assert (=> b!7554669 (=> (not res!3027913) (not e!4499680))))

(assert (=> b!7554669 (= res!3027913 (validRegex!10391 r!24333))))

(declare-fun b!7554670 () Bool)

(declare-fun tp!2198147 () Bool)

(assert (=> b!7554670 (= e!4499677 tp!2198147)))

(declare-fun b!7554671 () Bool)

(declare-fun res!3027911 () Bool)

(assert (=> b!7554671 (=> (not res!3027911) (not e!4499680))))

(assert (=> b!7554671 (= res!3027911 (isPrefix!6169 knownP!30 input!7874))))

(declare-fun b!7554672 () Bool)

(declare-fun res!3027912 () Bool)

(assert (=> b!7554672 (=> res!3027912 e!4499682)))

(assert (=> b!7554672 (= res!3027912 (not (= lt!2647746 lt!2647748)))))

(declare-fun b!7554673 () Bool)

(declare-fun tp!2198145 () Bool)

(assert (=> b!7554673 (= e!4499679 (and tp_is_empty!50281 tp!2198145))))

(declare-fun b!7554674 () Bool)

(declare-fun res!3027916 () Bool)

(assert (=> b!7554674 (=> res!3027916 e!4499682)))

(declare-fun lostCause!1751 (Regex!19963) Bool)

(assert (=> b!7554674 (= res!3027916 (lostCause!1751 r!24333))))

(declare-fun b!7554675 () Bool)

(declare-fun tp!2198157 () Bool)

(assert (=> b!7554675 (= e!4499683 (and tp_is_empty!50281 tp!2198157))))

(declare-fun b!7554676 () Bool)

(declare-fun tp!2198153 () Bool)

(declare-fun tp!2198156 () Bool)

(assert (=> b!7554676 (= e!4499681 (and tp!2198153 tp!2198156))))

(declare-fun b!7554677 () Bool)

(assert (=> b!7554677 (= e!4499678 (not e!4499682))))

(declare-fun res!3027910 () Bool)

(assert (=> b!7554677 (=> res!3027910 e!4499682)))

(declare-fun getSuffix!3647 (List!72846 List!72846) List!72846)

(assert (=> b!7554677 (= res!3027910 (not (matchR!9565 r!24333 (getSuffix!3647 knownP!30 testedP!423))))))

(assert (=> b!7554677 (isPrefix!6169 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166860 0))(
  ( (Unit!166861) )
))
(declare-fun lt!2647747 () Unit!166860)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!917 (List!72846 List!72846 List!72846) Unit!166860)

(assert (=> b!7554677 (= lt!2647747 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!917 knownP!30 testedP!423 input!7874))))

(declare-fun b!7554678 () Bool)

(declare-fun tp!2198152 () Bool)

(declare-fun tp!2198149 () Bool)

(assert (=> b!7554678 (= e!4499681 (and tp!2198152 tp!2198149))))

(declare-fun b!7554679 () Bool)

(declare-fun tp!2198146 () Bool)

(assert (=> b!7554679 (= e!4499681 tp!2198146)))

(declare-fun b!7554680 () Bool)

(assert (=> b!7554680 (= e!4499682 (matchR!9565 baseR!101 testedP!423))))

(assert (=> b!7554680 (= testedP!423 knownP!30)))

(declare-fun lt!2647745 () Unit!166860)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1533 (List!72846 List!72846 List!72846) Unit!166860)

(assert (=> b!7554680 (= lt!2647745 (lemmaIsPrefixSameLengthThenSameList!1533 testedP!423 knownP!30 input!7874))))

(declare-fun b!7554681 () Bool)

(assert (=> b!7554681 (= e!4499677 tp_is_empty!50281)))

(assert (= (and start!730368 res!3027914) b!7554669))

(assert (= (and b!7554669 res!3027913) b!7554661))

(assert (= (and b!7554661 res!3027908) b!7554671))

(assert (= (and b!7554671 res!3027911) b!7554662))

(assert (= (and b!7554662 res!3027909) b!7554668))

(assert (= (and b!7554668 res!3027907) b!7554677))

(assert (= (and b!7554677 (not res!3027910)) b!7554667))

(assert (= (and b!7554667 (not res!3027915)) b!7554674))

(assert (= (and b!7554674 (not res!3027916)) b!7554672))

(assert (= (and b!7554672 (not res!3027912)) b!7554680))

(get-info :version)

(assert (= (and start!730368 ((_ is ElementMatch!19963) baseR!101)) b!7554664))

(assert (= (and start!730368 ((_ is Concat!28808) baseR!101)) b!7554676))

(assert (= (and start!730368 ((_ is Star!19963) baseR!101)) b!7554679))

(assert (= (and start!730368 ((_ is Union!19963) baseR!101)) b!7554678))

(assert (= (and start!730368 ((_ is Cons!72722) input!7874)) b!7554666))

(assert (= (and start!730368 ((_ is Cons!72722) knownP!30)) b!7554675))

(assert (= (and start!730368 ((_ is Cons!72722) testedP!423)) b!7554673))

(assert (= (and start!730368 ((_ is ElementMatch!19963) r!24333)) b!7554681))

(assert (= (and start!730368 ((_ is Concat!28808) r!24333)) b!7554665))

(assert (= (and start!730368 ((_ is Star!19963) r!24333)) b!7554670))

(assert (= (and start!730368 ((_ is Union!19963) r!24333)) b!7554663))

(declare-fun m!8120768 () Bool)

(assert (=> b!7554671 m!8120768))

(declare-fun m!8120770 () Bool)

(assert (=> b!7554669 m!8120770))

(declare-fun m!8120772 () Bool)

(assert (=> b!7554661 m!8120772))

(declare-fun m!8120774 () Bool)

(assert (=> b!7554667 m!8120774))

(declare-fun m!8120776 () Bool)

(assert (=> b!7554674 m!8120776))

(declare-fun m!8120778 () Bool)

(assert (=> b!7554662 m!8120778))

(declare-fun m!8120780 () Bool)

(assert (=> b!7554662 m!8120780))

(declare-fun m!8120782 () Bool)

(assert (=> b!7554680 m!8120782))

(declare-fun m!8120784 () Bool)

(assert (=> b!7554680 m!8120784))

(declare-fun m!8120786 () Bool)

(assert (=> start!730368 m!8120786))

(declare-fun m!8120788 () Bool)

(assert (=> b!7554677 m!8120788))

(assert (=> b!7554677 m!8120788))

(declare-fun m!8120790 () Bool)

(assert (=> b!7554677 m!8120790))

(declare-fun m!8120792 () Bool)

(assert (=> b!7554677 m!8120792))

(declare-fun m!8120794 () Bool)

(assert (=> b!7554677 m!8120794))

(declare-fun m!8120796 () Bool)

(assert (=> b!7554668 m!8120796))

(check-sat (not b!7554671) (not b!7554669) (not b!7554668) (not b!7554680) (not b!7554661) (not b!7554676) (not b!7554673) (not b!7554674) (not b!7554667) (not b!7554663) tp_is_empty!50281 (not b!7554678) (not b!7554665) (not b!7554666) (not b!7554679) (not b!7554662) (not b!7554670) (not start!730368) (not b!7554675) (not b!7554677))
(check-sat)
