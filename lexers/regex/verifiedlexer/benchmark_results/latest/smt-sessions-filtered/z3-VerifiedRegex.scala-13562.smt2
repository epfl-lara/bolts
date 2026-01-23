; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729684 () Bool)

(assert start!729684)

(declare-fun b!7545005 () Bool)

(declare-fun e!4495004 () Bool)

(declare-fun e!4495001 () Bool)

(assert (=> b!7545005 (= e!4495004 e!4495001)))

(declare-fun res!3023910 () Bool)

(assert (=> b!7545005 (=> res!3023910 e!4495001)))

(declare-datatypes ((C!40164 0))(
  ( (C!40165 (val!30522 Int)) )
))
(declare-datatypes ((List!72802 0))(
  ( (Nil!72678) (Cons!72678 (h!79126 C!40164) (t!387519 List!72802)) )
))
(declare-fun lt!2644778 () List!72802)

(declare-fun lt!2644799 () List!72802)

(assert (=> b!7545005 (= res!3023910 (not (= lt!2644778 lt!2644799)))))

(declare-fun lt!2644787 () List!72802)

(declare-fun lt!2644779 () List!72802)

(assert (=> b!7545005 (= lt!2644787 lt!2644779)))

(declare-datatypes ((Unit!166776 0))(
  ( (Unit!166777) )
))
(declare-fun lt!2644791 () Unit!166776)

(declare-fun knownP!30 () List!72802)

(declare-fun testedP!423 () List!72802)

(declare-fun lemmaSamePrefixThenSameSuffix!2853 (List!72802 List!72802 List!72802 List!72802 List!72802) Unit!166776)

(assert (=> b!7545005 (= lt!2644791 (lemmaSamePrefixThenSameSuffix!2853 testedP!423 lt!2644787 testedP!423 lt!2644779 knownP!30))))

(declare-fun lt!2644780 () List!72802)

(declare-fun ++!17436 (List!72802 List!72802) List!72802)

(assert (=> b!7545005 (= lt!2644780 (++!17436 testedP!423 lt!2644787))))

(declare-fun lt!2644775 () List!72802)

(assert (=> b!7545005 (= lt!2644787 (++!17436 lt!2644775 lt!2644799))))

(declare-fun lt!2644776 () Unit!166776)

(declare-fun lemmaConcatAssociativity!3084 (List!72802 List!72802 List!72802) Unit!166776)

(assert (=> b!7545005 (= lt!2644776 (lemmaConcatAssociativity!3084 testedP!423 lt!2644775 lt!2644799))))

(declare-fun b!7545006 () Bool)

(declare-fun res!3023913 () Bool)

(declare-fun e!4494993 () Bool)

(assert (=> b!7545006 (=> res!3023913 e!4494993)))

(declare-fun lt!2644798 () Int)

(declare-fun lt!2644782 () Int)

(assert (=> b!7545006 (= res!3023913 (= lt!2644798 lt!2644782))))

(declare-fun b!7545007 () Bool)

(declare-fun e!4494996 () Bool)

(assert (=> b!7545007 (= e!4494993 e!4494996)))

(declare-fun res!3023906 () Bool)

(assert (=> b!7545007 (=> res!3023906 e!4494996)))

(declare-fun input!7874 () List!72802)

(declare-fun lt!2644788 () List!72802)

(assert (=> b!7545007 (= res!3023906 (not (= (++!17436 knownP!30 lt!2644788) input!7874)))))

(declare-fun getSuffix!3605 (List!72802 List!72802) List!72802)

(assert (=> b!7545007 (= lt!2644788 (getSuffix!3605 input!7874 knownP!30))))

(declare-fun lt!2644796 () List!72802)

(assert (=> b!7545007 (= lt!2644799 (getSuffix!3605 knownP!30 lt!2644796))))

(declare-fun isPrefix!6125 (List!72802 List!72802) Bool)

(assert (=> b!7545007 (isPrefix!6125 lt!2644796 knownP!30)))

(declare-fun lt!2644797 () Unit!166776)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!875 (List!72802 List!72802 List!72802) Unit!166776)

(assert (=> b!7545007 (= lt!2644797 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!875 knownP!30 lt!2644796 input!7874))))

(declare-datatypes ((Regex!19919 0))(
  ( (ElementMatch!19919 (c!1392906 C!40164)) (Concat!28764 (regOne!40350 Regex!19919) (regTwo!40350 Regex!19919)) (EmptyExpr!19919) (Star!19919 (reg!20248 Regex!19919)) (EmptyLang!19919) (Union!19919 (regOne!40351 Regex!19919) (regTwo!40351 Regex!19919)) )
))
(declare-fun lt!2644785 () Regex!19919)

(declare-fun lt!2644784 () Regex!19919)

(assert (=> b!7545007 (= lt!2644785 lt!2644784)))

(declare-fun r!24333 () Regex!19919)

(declare-fun lt!2644774 () C!40164)

(declare-fun derivativeStep!5709 (Regex!19919 C!40164) Regex!19919)

(assert (=> b!7545007 (= lt!2644784 (derivativeStep!5709 r!24333 lt!2644774))))

(declare-fun baseR!101 () Regex!19919)

(declare-fun derivative!451 (Regex!19919 List!72802) Regex!19919)

(assert (=> b!7545007 (= lt!2644785 (derivative!451 baseR!101 lt!2644796))))

(declare-fun lt!2644800 () Unit!166776)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!157 (Regex!19919 Regex!19919 List!72802 C!40164) Unit!166776)

(assert (=> b!7545007 (= lt!2644800 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!157 baseR!101 r!24333 testedP!423 lt!2644774))))

(assert (=> b!7545007 (isPrefix!6125 lt!2644796 input!7874)))

(declare-fun lt!2644795 () Unit!166776)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1190 (List!72802 List!72802) Unit!166776)

(assert (=> b!7545007 (= lt!2644795 (lemmaAddHeadSuffixToPrefixStillPrefix!1190 testedP!423 input!7874))))

(assert (=> b!7545007 (= lt!2644796 (++!17436 testedP!423 lt!2644775))))

(assert (=> b!7545007 (= lt!2644775 (Cons!72678 lt!2644774 Nil!72678))))

(declare-fun lt!2644793 () List!72802)

(declare-fun head!15509 (List!72802) C!40164)

(assert (=> b!7545007 (= lt!2644774 (head!15509 lt!2644793))))

(assert (=> b!7545007 (= lt!2644793 (getSuffix!3605 input!7874 testedP!423))))

(declare-fun b!7545008 () Bool)

(declare-fun res!3023901 () Bool)

(declare-fun e!4494999 () Bool)

(assert (=> b!7545008 (=> (not res!3023901) (not e!4494999))))

(assert (=> b!7545008 (= res!3023901 (isPrefix!6125 knownP!30 input!7874))))

(declare-fun b!7545009 () Bool)

(declare-fun e!4495007 () Bool)

(declare-fun tp!2194629 () Bool)

(assert (=> b!7545009 (= e!4495007 tp!2194629)))

(declare-fun b!7545010 () Bool)

(declare-fun res!3023896 () Bool)

(declare-fun e!4495006 () Bool)

(assert (=> b!7545010 (=> res!3023896 e!4495006)))

(assert (=> b!7545010 (= res!3023896 (not (= (++!17436 testedP!423 lt!2644793) input!7874)))))

(declare-fun b!7545011 () Bool)

(declare-fun e!4495003 () Bool)

(declare-fun e!4495000 () Bool)

(assert (=> b!7545011 (= e!4495003 e!4495000)))

(declare-fun res!3023909 () Bool)

(assert (=> b!7545011 (=> res!3023909 e!4495000)))

(assert (=> b!7545011 (= res!3023909 (not (= (head!15509 lt!2644779) lt!2644774)))))

(declare-fun lt!2644794 () List!72802)

(assert (=> b!7545011 (= lt!2644794 lt!2644793)))

(declare-fun lt!2644783 () Unit!166776)

(assert (=> b!7545011 (= lt!2644783 (lemmaSamePrefixThenSameSuffix!2853 testedP!423 lt!2644794 testedP!423 lt!2644793 input!7874))))

(declare-fun b!7545012 () Bool)

(assert (=> b!7545012 (= e!4494996 e!4495006)))

(declare-fun res!3023914 () Bool)

(assert (=> b!7545012 (=> res!3023914 e!4495006)))

(declare-fun lt!2644786 () List!72802)

(assert (=> b!7545012 (= res!3023914 (not (= lt!2644786 input!7874)))))

(declare-fun lt!2644792 () List!72802)

(assert (=> b!7545012 (= lt!2644786 (++!17436 lt!2644792 lt!2644788))))

(assert (=> b!7545012 (= lt!2644792 (++!17436 testedP!423 lt!2644779))))

(declare-fun b!7545013 () Bool)

(declare-fun e!4494998 () Bool)

(assert (=> b!7545013 (= e!4495000 e!4494998)))

(declare-fun res!3023902 () Bool)

(assert (=> b!7545013 (=> res!3023902 e!4494998)))

(declare-fun $colon$colon!3379 (List!72802 C!40164) List!72802)

(assert (=> b!7545013 (= res!3023902 (not (= lt!2644779 ($colon$colon!3379 lt!2644778 lt!2644774))))))

(declare-fun tail!15055 (List!72802) List!72802)

(assert (=> b!7545013 (= lt!2644778 (tail!15055 lt!2644779))))

(declare-fun b!7545015 () Bool)

(assert (=> b!7545015 (= e!4494998 e!4495004)))

(declare-fun res!3023908 () Bool)

(assert (=> b!7545015 (=> res!3023908 e!4495004)))

(assert (=> b!7545015 (= res!3023908 (not (= lt!2644780 knownP!30)))))

(assert (=> b!7545015 (= lt!2644780 (++!17436 lt!2644796 lt!2644799))))

(declare-fun b!7545016 () Bool)

(assert (=> b!7545016 (= e!4495006 e!4495003)))

(declare-fun res!3023897 () Bool)

(assert (=> b!7545016 (=> res!3023897 e!4495003)))

(declare-fun lt!2644789 () List!72802)

(assert (=> b!7545016 (= res!3023897 (not (= lt!2644789 input!7874)))))

(assert (=> b!7545016 (= lt!2644786 lt!2644789)))

(assert (=> b!7545016 (= lt!2644789 (++!17436 testedP!423 lt!2644794))))

(assert (=> b!7545016 (= lt!2644794 (++!17436 lt!2644779 lt!2644788))))

(declare-fun lt!2644790 () Unit!166776)

(assert (=> b!7545016 (= lt!2644790 (lemmaConcatAssociativity!3084 testedP!423 lt!2644779 lt!2644788))))

(declare-fun b!7545017 () Bool)

(declare-fun e!4495002 () Bool)

(declare-fun tp!2194623 () Bool)

(declare-fun tp!2194631 () Bool)

(assert (=> b!7545017 (= e!4495002 (and tp!2194623 tp!2194631))))

(declare-fun b!7545018 () Bool)

(declare-fun res!3023905 () Bool)

(assert (=> b!7545018 (=> res!3023905 e!4495001)))

(declare-fun validRegex!10347 (Regex!19919) Bool)

(assert (=> b!7545018 (= res!3023905 (not (validRegex!10347 lt!2644784)))))

(declare-fun b!7545019 () Bool)

(declare-fun tp_is_empty!50193 () Bool)

(assert (=> b!7545019 (= e!4495007 tp_is_empty!50193)))

(declare-fun b!7545020 () Bool)

(declare-fun res!3023912 () Bool)

(assert (=> b!7545020 (=> (not res!3023912) (not e!4494999))))

(assert (=> b!7545020 (= res!3023912 (isPrefix!6125 testedP!423 input!7874))))

(declare-fun b!7545021 () Bool)

(declare-fun tp!2194635 () Bool)

(declare-fun tp!2194633 () Bool)

(assert (=> b!7545021 (= e!4495002 (and tp!2194635 tp!2194633))))

(declare-fun b!7545022 () Bool)

(declare-fun res!3023894 () Bool)

(declare-fun e!4495005 () Bool)

(assert (=> b!7545022 (=> (not res!3023894) (not e!4495005))))

(declare-fun matchR!9521 (Regex!19919 List!72802) Bool)

(assert (=> b!7545022 (= res!3023894 (matchR!9521 baseR!101 knownP!30))))

(declare-fun b!7545023 () Bool)

(declare-fun e!4494995 () Bool)

(declare-fun tp!2194628 () Bool)

(assert (=> b!7545023 (= e!4494995 (and tp_is_empty!50193 tp!2194628))))

(declare-fun b!7545024 () Bool)

(declare-fun res!3023898 () Bool)

(assert (=> b!7545024 (=> res!3023898 e!4494993)))

(declare-fun size!42415 (List!72802) Int)

(assert (=> b!7545024 (= res!3023898 (>= lt!2644798 (size!42415 input!7874)))))

(declare-fun b!7545025 () Bool)

(assert (=> b!7545025 (= e!4494999 e!4495005)))

(declare-fun res!3023903 () Bool)

(assert (=> b!7545025 (=> (not res!3023903) (not e!4495005))))

(assert (=> b!7545025 (= res!3023903 (>= lt!2644782 lt!2644798))))

(assert (=> b!7545025 (= lt!2644798 (size!42415 testedP!423))))

(assert (=> b!7545025 (= lt!2644782 (size!42415 knownP!30))))

(declare-fun b!7545026 () Bool)

(declare-fun res!3023911 () Bool)

(assert (=> b!7545026 (=> res!3023911 e!4494993)))

(assert (=> b!7545026 (= res!3023911 (not (= (derivative!451 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7545027 () Bool)

(declare-fun tp!2194634 () Bool)

(declare-fun tp!2194624 () Bool)

(assert (=> b!7545027 (= e!4495007 (and tp!2194634 tp!2194624))))

(declare-fun b!7545028 () Bool)

(declare-fun res!3023907 () Bool)

(assert (=> b!7545028 (=> res!3023907 e!4494993)))

(declare-fun lostCause!1711 (Regex!19919) Bool)

(assert (=> b!7545028 (= res!3023907 (lostCause!1711 r!24333))))

(declare-fun b!7545029 () Bool)

(declare-fun res!3023899 () Bool)

(assert (=> b!7545029 (=> (not res!3023899) (not e!4494999))))

(assert (=> b!7545029 (= res!3023899 (validRegex!10347 r!24333))))

(declare-fun b!7545030 () Bool)

(declare-fun tp!2194626 () Bool)

(declare-fun tp!2194625 () Bool)

(assert (=> b!7545030 (= e!4495007 (and tp!2194626 tp!2194625))))

(declare-fun b!7545031 () Bool)

(declare-fun res!3023904 () Bool)

(assert (=> b!7545031 (=> res!3023904 e!4495001)))

(assert (=> b!7545031 (= res!3023904 (< lt!2644782 (size!42415 lt!2644796)))))

(declare-fun b!7545032 () Bool)

(assert (=> b!7545032 (= e!4495002 tp_is_empty!50193)))

(declare-fun res!3023895 () Bool)

(assert (=> start!729684 (=> (not res!3023895) (not e!4494999))))

(assert (=> start!729684 (= res!3023895 (validRegex!10347 baseR!101))))

(assert (=> start!729684 e!4494999))

(assert (=> start!729684 e!4495007))

(declare-fun e!4494994 () Bool)

(assert (=> start!729684 e!4494994))

(declare-fun e!4494997 () Bool)

(assert (=> start!729684 e!4494997))

(assert (=> start!729684 e!4494995))

(assert (=> start!729684 e!4495002))

(declare-fun b!7545014 () Bool)

(assert (=> b!7545014 (= e!4495001 true)))

(declare-fun lt!2644781 () Bool)

(assert (=> b!7545014 (= lt!2644781 (matchR!9521 lt!2644784 lt!2644799))))

(declare-fun b!7545033 () Bool)

(declare-fun tp!2194627 () Bool)

(assert (=> b!7545033 (= e!4495002 tp!2194627)))

(declare-fun b!7545034 () Bool)

(declare-fun res!3023900 () Bool)

(assert (=> b!7545034 (=> res!3023900 e!4494998)))

(assert (=> b!7545034 (= res!3023900 (not (= lt!2644792 knownP!30)))))

(declare-fun b!7545035 () Bool)

(declare-fun tp!2194630 () Bool)

(assert (=> b!7545035 (= e!4494994 (and tp_is_empty!50193 tp!2194630))))

(declare-fun b!7545036 () Bool)

(assert (=> b!7545036 (= e!4495005 (not e!4494993))))

(declare-fun res!3023893 () Bool)

(assert (=> b!7545036 (=> res!3023893 e!4494993)))

(assert (=> b!7545036 (= res!3023893 (not (matchR!9521 r!24333 lt!2644779)))))

(assert (=> b!7545036 (= lt!2644779 (getSuffix!3605 knownP!30 testedP!423))))

(assert (=> b!7545036 (isPrefix!6125 testedP!423 knownP!30)))

(declare-fun lt!2644777 () Unit!166776)

(assert (=> b!7545036 (= lt!2644777 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!875 knownP!30 testedP!423 input!7874))))

(declare-fun b!7545037 () Bool)

(declare-fun tp!2194632 () Bool)

(assert (=> b!7545037 (= e!4494997 (and tp_is_empty!50193 tp!2194632))))

(assert (= (and start!729684 res!3023895) b!7545029))

(assert (= (and b!7545029 res!3023899) b!7545020))

(assert (= (and b!7545020 res!3023912) b!7545008))

(assert (= (and b!7545008 res!3023901) b!7545025))

(assert (= (and b!7545025 res!3023903) b!7545022))

(assert (= (and b!7545022 res!3023894) b!7545036))

(assert (= (and b!7545036 (not res!3023893)) b!7545026))

(assert (= (and b!7545026 (not res!3023911)) b!7545028))

(assert (= (and b!7545028 (not res!3023907)) b!7545006))

(assert (= (and b!7545006 (not res!3023913)) b!7545024))

(assert (= (and b!7545024 (not res!3023898)) b!7545007))

(assert (= (and b!7545007 (not res!3023906)) b!7545012))

(assert (= (and b!7545012 (not res!3023914)) b!7545010))

(assert (= (and b!7545010 (not res!3023896)) b!7545016))

(assert (= (and b!7545016 (not res!3023897)) b!7545011))

(assert (= (and b!7545011 (not res!3023909)) b!7545013))

(assert (= (and b!7545013 (not res!3023902)) b!7545034))

(assert (= (and b!7545034 (not res!3023900)) b!7545015))

(assert (= (and b!7545015 (not res!3023908)) b!7545005))

(assert (= (and b!7545005 (not res!3023910)) b!7545018))

(assert (= (and b!7545018 (not res!3023905)) b!7545031))

(assert (= (and b!7545031 (not res!3023904)) b!7545014))

(get-info :version)

(assert (= (and start!729684 ((_ is ElementMatch!19919) baseR!101)) b!7545019))

(assert (= (and start!729684 ((_ is Concat!28764) baseR!101)) b!7545030))

(assert (= (and start!729684 ((_ is Star!19919) baseR!101)) b!7545009))

(assert (= (and start!729684 ((_ is Union!19919) baseR!101)) b!7545027))

(assert (= (and start!729684 ((_ is Cons!72678) input!7874)) b!7545035))

(assert (= (and start!729684 ((_ is Cons!72678) knownP!30)) b!7545037))

(assert (= (and start!729684 ((_ is Cons!72678) testedP!423)) b!7545023))

(assert (= (and start!729684 ((_ is ElementMatch!19919) r!24333)) b!7545032))

(assert (= (and start!729684 ((_ is Concat!28764) r!24333)) b!7545017))

(assert (= (and start!729684 ((_ is Star!19919) r!24333)) b!7545033))

(assert (= (and start!729684 ((_ is Union!19919) r!24333)) b!7545021))

(declare-fun m!8113612 () Bool)

(assert (=> b!7545036 m!8113612))

(declare-fun m!8113614 () Bool)

(assert (=> b!7545036 m!8113614))

(declare-fun m!8113616 () Bool)

(assert (=> b!7545036 m!8113616))

(declare-fun m!8113618 () Bool)

(assert (=> b!7545036 m!8113618))

(declare-fun m!8113620 () Bool)

(assert (=> b!7545005 m!8113620))

(declare-fun m!8113622 () Bool)

(assert (=> b!7545005 m!8113622))

(declare-fun m!8113624 () Bool)

(assert (=> b!7545005 m!8113624))

(declare-fun m!8113626 () Bool)

(assert (=> b!7545005 m!8113626))

(declare-fun m!8113628 () Bool)

(assert (=> start!729684 m!8113628))

(declare-fun m!8113630 () Bool)

(assert (=> b!7545012 m!8113630))

(declare-fun m!8113632 () Bool)

(assert (=> b!7545012 m!8113632))

(declare-fun m!8113634 () Bool)

(assert (=> b!7545026 m!8113634))

(declare-fun m!8113636 () Bool)

(assert (=> b!7545008 m!8113636))

(declare-fun m!8113638 () Bool)

(assert (=> b!7545022 m!8113638))

(declare-fun m!8113640 () Bool)

(assert (=> b!7545016 m!8113640))

(declare-fun m!8113642 () Bool)

(assert (=> b!7545016 m!8113642))

(declare-fun m!8113644 () Bool)

(assert (=> b!7545016 m!8113644))

(declare-fun m!8113646 () Bool)

(assert (=> b!7545028 m!8113646))

(declare-fun m!8113648 () Bool)

(assert (=> b!7545010 m!8113648))

(declare-fun m!8113650 () Bool)

(assert (=> b!7545013 m!8113650))

(declare-fun m!8113652 () Bool)

(assert (=> b!7545013 m!8113652))

(declare-fun m!8113654 () Bool)

(assert (=> b!7545025 m!8113654))

(declare-fun m!8113656 () Bool)

(assert (=> b!7545025 m!8113656))

(declare-fun m!8113658 () Bool)

(assert (=> b!7545011 m!8113658))

(declare-fun m!8113660 () Bool)

(assert (=> b!7545011 m!8113660))

(declare-fun m!8113662 () Bool)

(assert (=> b!7545007 m!8113662))

(declare-fun m!8113664 () Bool)

(assert (=> b!7545007 m!8113664))

(declare-fun m!8113666 () Bool)

(assert (=> b!7545007 m!8113666))

(declare-fun m!8113668 () Bool)

(assert (=> b!7545007 m!8113668))

(declare-fun m!8113670 () Bool)

(assert (=> b!7545007 m!8113670))

(declare-fun m!8113672 () Bool)

(assert (=> b!7545007 m!8113672))

(declare-fun m!8113674 () Bool)

(assert (=> b!7545007 m!8113674))

(declare-fun m!8113676 () Bool)

(assert (=> b!7545007 m!8113676))

(declare-fun m!8113678 () Bool)

(assert (=> b!7545007 m!8113678))

(declare-fun m!8113680 () Bool)

(assert (=> b!7545007 m!8113680))

(declare-fun m!8113682 () Bool)

(assert (=> b!7545007 m!8113682))

(declare-fun m!8113684 () Bool)

(assert (=> b!7545007 m!8113684))

(declare-fun m!8113686 () Bool)

(assert (=> b!7545007 m!8113686))

(declare-fun m!8113688 () Bool)

(assert (=> b!7545014 m!8113688))

(declare-fun m!8113690 () Bool)

(assert (=> b!7545024 m!8113690))

(declare-fun m!8113692 () Bool)

(assert (=> b!7545018 m!8113692))

(declare-fun m!8113694 () Bool)

(assert (=> b!7545029 m!8113694))

(declare-fun m!8113696 () Bool)

(assert (=> b!7545015 m!8113696))

(declare-fun m!8113698 () Bool)

(assert (=> b!7545020 m!8113698))

(declare-fun m!8113700 () Bool)

(assert (=> b!7545031 m!8113700))

(check-sat (not b!7545024) tp_is_empty!50193 (not b!7545033) (not b!7545027) (not b!7545015) (not b!7545017) (not b!7545021) (not b!7545014) (not b!7545005) (not b!7545008) (not b!7545016) (not b!7545022) (not b!7545009) (not b!7545020) (not b!7545029) (not b!7545018) (not b!7545028) (not b!7545035) (not b!7545011) (not b!7545013) (not b!7545025) (not b!7545030) (not b!7545036) (not b!7545023) (not b!7545031) (not b!7545012) (not b!7545037) (not b!7545007) (not b!7545026) (not b!7545010) (not start!729684))
(check-sat)
