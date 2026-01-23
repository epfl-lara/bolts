; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728544 () Bool)

(assert start!728544)

(declare-fun b!7529867 () Bool)

(declare-fun res!3017840 () Bool)

(declare-fun e!4487809 () Bool)

(assert (=> b!7529867 (=> (not res!3017840) (not e!4487809))))

(declare-datatypes ((C!40032 0))(
  ( (C!40033 (val!30456 Int)) )
))
(declare-datatypes ((List!72736 0))(
  ( (Nil!72612) (Cons!72612 (h!79060 C!40032) (t!387443 List!72736)) )
))
(declare-fun knownP!30 () List!72736)

(declare-fun testedP!423 () List!72736)

(declare-fun size!42349 (List!72736) Int)

(assert (=> b!7529867 (= res!3017840 (>= (size!42349 knownP!30) (size!42349 testedP!423)))))

(declare-fun b!7529868 () Bool)

(declare-fun res!3017836 () Bool)

(declare-fun e!4487806 () Bool)

(assert (=> b!7529868 (=> res!3017836 e!4487806)))

(declare-datatypes ((Regex!19853 0))(
  ( (ElementMatch!19853 (c!1390742 C!40032)) (Concat!28698 (regOne!40218 Regex!19853) (regTwo!40218 Regex!19853)) (EmptyExpr!19853) (Star!19853 (reg!20182 Regex!19853)) (EmptyLang!19853) (Union!19853 (regOne!40219 Regex!19853) (regTwo!40219 Regex!19853)) )
))
(declare-fun r!24333 () Regex!19853)

(declare-fun lostCause!1645 (Regex!19853) Bool)

(assert (=> b!7529868 (= res!3017836 (not (lostCause!1645 r!24333)))))

(declare-fun b!7529869 () Bool)

(declare-fun e!4487807 () Bool)

(declare-fun tp!2188834 () Bool)

(declare-fun tp!2188828 () Bool)

(assert (=> b!7529869 (= e!4487807 (and tp!2188834 tp!2188828))))

(declare-fun b!7529870 () Bool)

(declare-fun res!3017839 () Bool)

(assert (=> b!7529870 (=> (not res!3017839) (not e!4487809))))

(declare-fun input!7874 () List!72736)

(declare-fun isPrefix!6059 (List!72736 List!72736) Bool)

(assert (=> b!7529870 (= res!3017839 (isPrefix!6059 testedP!423 input!7874))))

(declare-fun b!7529871 () Bool)

(declare-fun e!4487804 () Bool)

(assert (=> b!7529871 (= e!4487804 true)))

(assert (=> b!7529871 false))

(declare-datatypes ((Unit!166620 0))(
  ( (Unit!166621) )
))
(declare-fun lt!2640164 () Unit!166620)

(declare-fun lt!2640166 () List!72736)

(declare-fun lemmaLostCauseCannotMatch!57 (Regex!19853 List!72736) Unit!166620)

(assert (=> b!7529871 (= lt!2640164 (lemmaLostCauseCannotMatch!57 r!24333 lt!2640166))))

(declare-fun b!7529872 () Bool)

(declare-fun e!4487805 () Bool)

(declare-fun tp_is_empty!50061 () Bool)

(declare-fun tp!2188833 () Bool)

(assert (=> b!7529872 (= e!4487805 (and tp_is_empty!50061 tp!2188833))))

(declare-fun b!7529873 () Bool)

(declare-fun e!4487801 () Bool)

(declare-fun tp!2188837 () Bool)

(declare-fun tp!2188836 () Bool)

(assert (=> b!7529873 (= e!4487801 (and tp!2188837 tp!2188836))))

(declare-fun b!7529874 () Bool)

(declare-fun res!3017844 () Bool)

(assert (=> b!7529874 (=> (not res!3017844) (not e!4487809))))

(declare-fun validRegex!10281 (Regex!19853) Bool)

(assert (=> b!7529874 (= res!3017844 (validRegex!10281 r!24333))))

(declare-fun res!3017838 () Bool)

(assert (=> start!728544 (=> (not res!3017838) (not e!4487809))))

(declare-fun baseR!101 () Regex!19853)

(assert (=> start!728544 (= res!3017838 (validRegex!10281 baseR!101))))

(assert (=> start!728544 e!4487809))

(assert (=> start!728544 e!4487807))

(assert (=> start!728544 e!4487805))

(declare-fun e!4487803 () Bool)

(assert (=> start!728544 e!4487803))

(declare-fun e!4487808 () Bool)

(assert (=> start!728544 e!4487808))

(assert (=> start!728544 e!4487801))

(declare-fun b!7529875 () Bool)

(declare-fun e!4487802 () Bool)

(assert (=> b!7529875 (= e!4487802 e!4487806)))

(declare-fun res!3017841 () Bool)

(assert (=> b!7529875 (=> res!3017841 e!4487806)))

(declare-fun lt!2640168 () Regex!19853)

(assert (=> b!7529875 (= res!3017841 (not (= lt!2640168 r!24333)))))

(declare-fun derivative!385 (Regex!19853 List!72736) Regex!19853)

(assert (=> b!7529875 (= lt!2640168 (derivative!385 baseR!101 testedP!423))))

(declare-fun b!7529876 () Bool)

(declare-fun res!3017843 () Bool)

(assert (=> b!7529876 (=> (not res!3017843) (not e!4487809))))

(assert (=> b!7529876 (= res!3017843 (isPrefix!6059 knownP!30 input!7874))))

(declare-fun b!7529877 () Bool)

(declare-fun tp!2188839 () Bool)

(declare-fun tp!2188827 () Bool)

(assert (=> b!7529877 (= e!4487807 (and tp!2188839 tp!2188827))))

(declare-fun b!7529878 () Bool)

(assert (=> b!7529878 (= e!4487807 tp_is_empty!50061)))

(declare-fun b!7529879 () Bool)

(assert (=> b!7529879 (= e!4487806 e!4487804)))

(declare-fun res!3017842 () Bool)

(assert (=> b!7529879 (=> res!3017842 e!4487804)))

(declare-fun ++!17378 (List!72736 List!72736) List!72736)

(assert (=> b!7529879 (= res!3017842 (not (= (++!17378 testedP!423 lt!2640166) knownP!30)))))

(declare-fun matchR!9455 (Regex!19853 List!72736) Bool)

(assert (=> b!7529879 (= (matchR!9455 baseR!101 testedP!423) (matchR!9455 lt!2640168 Nil!72612))))

(declare-fun lt!2640167 () Unit!166620)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!256 (Regex!19853 List!72736) Unit!166620)

(assert (=> b!7529879 (= lt!2640167 (lemmaMatchRIsSameAsWholeDerivativeAndNil!256 baseR!101 testedP!423))))

(declare-fun b!7529880 () Bool)

(assert (=> b!7529880 (= e!4487801 tp_is_empty!50061)))

(declare-fun b!7529881 () Bool)

(assert (=> b!7529881 (= e!4487809 (not e!4487802))))

(declare-fun res!3017837 () Bool)

(assert (=> b!7529881 (=> res!3017837 e!4487802)))

(assert (=> b!7529881 (= res!3017837 (not (matchR!9455 r!24333 lt!2640166)))))

(declare-fun getSuffix!3539 (List!72736 List!72736) List!72736)

(assert (=> b!7529881 (= lt!2640166 (getSuffix!3539 knownP!30 testedP!423))))

(assert (=> b!7529881 (isPrefix!6059 testedP!423 knownP!30)))

(declare-fun lt!2640165 () Unit!166620)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!809 (List!72736 List!72736 List!72736) Unit!166620)

(assert (=> b!7529881 (= lt!2640165 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!809 knownP!30 testedP!423 input!7874))))

(declare-fun b!7529882 () Bool)

(declare-fun tp!2188831 () Bool)

(declare-fun tp!2188832 () Bool)

(assert (=> b!7529882 (= e!4487801 (and tp!2188831 tp!2188832))))

(declare-fun b!7529883 () Bool)

(declare-fun tp!2188838 () Bool)

(assert (=> b!7529883 (= e!4487808 (and tp_is_empty!50061 tp!2188838))))

(declare-fun b!7529884 () Bool)

(declare-fun res!3017835 () Bool)

(assert (=> b!7529884 (=> (not res!3017835) (not e!4487809))))

(assert (=> b!7529884 (= res!3017835 (matchR!9455 baseR!101 knownP!30))))

(declare-fun b!7529885 () Bool)

(declare-fun tp!2188835 () Bool)

(assert (=> b!7529885 (= e!4487807 tp!2188835)))

(declare-fun b!7529886 () Bool)

(declare-fun tp!2188829 () Bool)

(assert (=> b!7529886 (= e!4487803 (and tp_is_empty!50061 tp!2188829))))

(declare-fun b!7529887 () Bool)

(declare-fun tp!2188830 () Bool)

(assert (=> b!7529887 (= e!4487801 tp!2188830)))

(assert (= (and start!728544 res!3017838) b!7529874))

(assert (= (and b!7529874 res!3017844) b!7529870))

(assert (= (and b!7529870 res!3017839) b!7529876))

(assert (= (and b!7529876 res!3017843) b!7529867))

(assert (= (and b!7529867 res!3017840) b!7529884))

(assert (= (and b!7529884 res!3017835) b!7529881))

(assert (= (and b!7529881 (not res!3017837)) b!7529875))

(assert (= (and b!7529875 (not res!3017841)) b!7529868))

(assert (= (and b!7529868 (not res!3017836)) b!7529879))

(assert (= (and b!7529879 (not res!3017842)) b!7529871))

(get-info :version)

(assert (= (and start!728544 ((_ is ElementMatch!19853) baseR!101)) b!7529878))

(assert (= (and start!728544 ((_ is Concat!28698) baseR!101)) b!7529877))

(assert (= (and start!728544 ((_ is Star!19853) baseR!101)) b!7529885))

(assert (= (and start!728544 ((_ is Union!19853) baseR!101)) b!7529869))

(assert (= (and start!728544 ((_ is Cons!72612) input!7874)) b!7529872))

(assert (= (and start!728544 ((_ is Cons!72612) knownP!30)) b!7529886))

(assert (= (and start!728544 ((_ is Cons!72612) testedP!423)) b!7529883))

(assert (= (and start!728544 ((_ is ElementMatch!19853) r!24333)) b!7529880))

(assert (= (and start!728544 ((_ is Concat!28698) r!24333)) b!7529882))

(assert (= (and start!728544 ((_ is Star!19853) r!24333)) b!7529887))

(assert (= (and start!728544 ((_ is Union!19853) r!24333)) b!7529873))

(declare-fun m!8103530 () Bool)

(assert (=> b!7529871 m!8103530))

(declare-fun m!8103532 () Bool)

(assert (=> b!7529868 m!8103532))

(declare-fun m!8103534 () Bool)

(assert (=> b!7529867 m!8103534))

(declare-fun m!8103536 () Bool)

(assert (=> b!7529867 m!8103536))

(declare-fun m!8103538 () Bool)

(assert (=> b!7529876 m!8103538))

(declare-fun m!8103540 () Bool)

(assert (=> b!7529875 m!8103540))

(declare-fun m!8103542 () Bool)

(assert (=> b!7529881 m!8103542))

(declare-fun m!8103544 () Bool)

(assert (=> b!7529881 m!8103544))

(declare-fun m!8103546 () Bool)

(assert (=> b!7529881 m!8103546))

(declare-fun m!8103548 () Bool)

(assert (=> b!7529881 m!8103548))

(declare-fun m!8103550 () Bool)

(assert (=> b!7529879 m!8103550))

(declare-fun m!8103552 () Bool)

(assert (=> b!7529879 m!8103552))

(declare-fun m!8103554 () Bool)

(assert (=> b!7529879 m!8103554))

(declare-fun m!8103556 () Bool)

(assert (=> b!7529879 m!8103556))

(declare-fun m!8103558 () Bool)

(assert (=> b!7529870 m!8103558))

(declare-fun m!8103560 () Bool)

(assert (=> b!7529874 m!8103560))

(declare-fun m!8103562 () Bool)

(assert (=> start!728544 m!8103562))

(declare-fun m!8103564 () Bool)

(assert (=> b!7529884 m!8103564))

(check-sat (not b!7529869) (not b!7529879) (not b!7529875) (not b!7529871) (not b!7529877) (not b!7529873) (not b!7529881) (not b!7529867) (not b!7529874) (not b!7529870) (not b!7529886) (not b!7529885) (not b!7529887) (not b!7529883) tp_is_empty!50061 (not b!7529876) (not b!7529884) (not b!7529868) (not start!728544) (not b!7529872) (not b!7529882))
(check-sat)
