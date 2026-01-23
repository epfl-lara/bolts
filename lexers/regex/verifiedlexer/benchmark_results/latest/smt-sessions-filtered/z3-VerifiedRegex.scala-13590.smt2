; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730556 () Bool)

(assert start!730556)

(declare-fun b!7560886 () Bool)

(declare-fun res!3029465 () Bool)

(declare-fun e!4502399 () Bool)

(assert (=> b!7560886 (=> (not res!3029465) (not e!4502399))))

(declare-datatypes ((C!40276 0))(
  ( (C!40277 (val!30578 Int)) )
))
(declare-datatypes ((Regex!19975 0))(
  ( (ElementMatch!19975 (c!1395124 C!40276)) (Concat!28820 (regOne!40462 Regex!19975) (regTwo!40462 Regex!19975)) (EmptyExpr!19975) (Star!19975 (reg!20304 Regex!19975)) (EmptyLang!19975) (Union!19975 (regOne!40463 Regex!19975) (regTwo!40463 Regex!19975)) )
))
(declare-fun baseR!101 () Regex!19975)

(declare-datatypes ((List!72858 0))(
  ( (Nil!72734) (Cons!72734 (h!79182 C!40276) (t!387585 List!72858)) )
))
(declare-fun knownP!30 () List!72858)

(declare-fun matchR!9577 (Regex!19975 List!72858) Bool)

(assert (=> b!7560886 (= res!3029465 (matchR!9577 baseR!101 knownP!30))))

(declare-fun b!7560887 () Bool)

(declare-fun e!4502396 () Bool)

(declare-fun tp_is_empty!50305 () Bool)

(declare-fun tp!2201892 () Bool)

(assert (=> b!7560887 (= e!4502396 (and tp_is_empty!50305 tp!2201892))))

(declare-fun b!7560888 () Bool)

(declare-fun e!4502392 () Bool)

(declare-fun e!4502401 () Bool)

(assert (=> b!7560888 (= e!4502392 e!4502401)))

(declare-fun res!3029475 () Bool)

(assert (=> b!7560888 (=> res!3029475 e!4502401)))

(declare-fun lt!2648662 () List!72858)

(declare-fun lt!2648658 () C!40276)

(declare-fun head!15553 (List!72858) C!40276)

(assert (=> b!7560888 (= res!3029475 (not (= (head!15553 lt!2648662) lt!2648658)))))

(declare-fun lt!2648668 () List!72858)

(declare-fun lt!2648665 () List!72858)

(assert (=> b!7560888 (= lt!2648668 lt!2648665)))

(declare-fun input!7874 () List!72858)

(declare-fun testedP!423 () List!72858)

(declare-datatypes ((Unit!166884 0))(
  ( (Unit!166885) )
))
(declare-fun lt!2648654 () Unit!166884)

(declare-fun lemmaSamePrefixThenSameSuffix!2881 (List!72858 List!72858 List!72858 List!72858 List!72858) Unit!166884)

(assert (=> b!7560888 (= lt!2648654 (lemmaSamePrefixThenSameSuffix!2881 testedP!423 lt!2648668 testedP!423 lt!2648665 input!7874))))

(declare-fun b!7560889 () Bool)

(declare-fun e!4502394 () Bool)

(declare-fun tp!2201891 () Bool)

(declare-fun tp!2201890 () Bool)

(assert (=> b!7560889 (= e!4502394 (and tp!2201891 tp!2201890))))

(declare-fun b!7560890 () Bool)

(declare-fun tp!2201888 () Bool)

(declare-fun tp!2201894 () Bool)

(assert (=> b!7560890 (= e!4502394 (and tp!2201888 tp!2201894))))

(declare-fun b!7560891 () Bool)

(declare-fun e!4502393 () Bool)

(assert (=> b!7560891 (= e!4502393 e!4502399)))

(declare-fun res!3029464 () Bool)

(assert (=> b!7560891 (=> (not res!3029464) (not e!4502399))))

(declare-fun lt!2648664 () Int)

(declare-fun lt!2648672 () Int)

(assert (=> b!7560891 (= res!3029464 (>= lt!2648664 lt!2648672))))

(declare-fun size!42471 (List!72858) Int)

(assert (=> b!7560891 (= lt!2648672 (size!42471 testedP!423))))

(assert (=> b!7560891 (= lt!2648664 (size!42471 knownP!30))))

(declare-fun b!7560892 () Bool)

(declare-fun e!4502391 () Bool)

(declare-fun e!4502400 () Bool)

(assert (=> b!7560892 (= e!4502391 e!4502400)))

(declare-fun res!3029474 () Bool)

(assert (=> b!7560892 (=> res!3029474 e!4502400)))

(declare-fun lt!2648663 () List!72858)

(declare-fun ++!17479 (List!72858 List!72858) List!72858)

(assert (=> b!7560892 (= res!3029474 (not (= (++!17479 knownP!30 lt!2648663) input!7874)))))

(declare-fun getSuffix!3659 (List!72858 List!72858) List!72858)

(assert (=> b!7560892 (= lt!2648663 (getSuffix!3659 input!7874 knownP!30))))

(declare-fun lt!2648675 () List!72858)

(declare-fun lt!2648656 () List!72858)

(assert (=> b!7560892 (= lt!2648675 (getSuffix!3659 knownP!30 lt!2648656))))

(declare-fun isPrefix!6181 (List!72858 List!72858) Bool)

(assert (=> b!7560892 (isPrefix!6181 lt!2648656 knownP!30)))

(declare-fun lt!2648667 () Unit!166884)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!929 (List!72858 List!72858 List!72858) Unit!166884)

(assert (=> b!7560892 (= lt!2648667 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!929 knownP!30 lt!2648656 input!7874))))

(declare-fun r!24333 () Regex!19975)

(declare-fun derivative!505 (Regex!19975 List!72858) Regex!19975)

(declare-fun derivativeStep!5753 (Regex!19975 C!40276) Regex!19975)

(assert (=> b!7560892 (= (derivative!505 baseR!101 lt!2648656) (derivativeStep!5753 r!24333 lt!2648658))))

(declare-fun lt!2648655 () Unit!166884)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!197 (Regex!19975 Regex!19975 List!72858 C!40276) Unit!166884)

(assert (=> b!7560892 (= lt!2648655 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!197 baseR!101 r!24333 testedP!423 lt!2648658))))

(assert (=> b!7560892 (isPrefix!6181 lt!2648656 input!7874)))

(declare-fun lt!2648671 () Unit!166884)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1230 (List!72858 List!72858) Unit!166884)

(assert (=> b!7560892 (= lt!2648671 (lemmaAddHeadSuffixToPrefixStillPrefix!1230 testedP!423 input!7874))))

(declare-fun lt!2648660 () List!72858)

(assert (=> b!7560892 (= lt!2648656 (++!17479 testedP!423 lt!2648660))))

(assert (=> b!7560892 (= lt!2648660 (Cons!72734 lt!2648658 Nil!72734))))

(assert (=> b!7560892 (= lt!2648658 (head!15553 lt!2648665))))

(assert (=> b!7560892 (= lt!2648665 (getSuffix!3659 input!7874 testedP!423))))

(declare-fun b!7560893 () Bool)

(declare-fun res!3029467 () Bool)

(assert (=> b!7560893 (=> res!3029467 e!4502391)))

(assert (=> b!7560893 (= res!3029467 (not (= (derivative!505 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7560894 () Bool)

(assert (=> b!7560894 (= e!4502394 tp_is_empty!50305)))

(declare-fun b!7560895 () Bool)

(declare-fun res!3029477 () Bool)

(declare-fun e!4502395 () Bool)

(assert (=> b!7560895 (=> res!3029477 e!4502395)))

(assert (=> b!7560895 (= res!3029477 (not (= (++!17479 testedP!423 lt!2648665) input!7874)))))

(declare-fun b!7560896 () Bool)

(assert (=> b!7560896 (= e!4502395 e!4502392)))

(declare-fun res!3029472 () Bool)

(assert (=> b!7560896 (=> res!3029472 e!4502392)))

(declare-fun lt!2648674 () List!72858)

(assert (=> b!7560896 (= res!3029472 (not (= lt!2648674 input!7874)))))

(declare-fun lt!2648676 () List!72858)

(assert (=> b!7560896 (= lt!2648676 lt!2648674)))

(assert (=> b!7560896 (= lt!2648674 (++!17479 testedP!423 lt!2648668))))

(assert (=> b!7560896 (= lt!2648668 (++!17479 lt!2648662 lt!2648663))))

(declare-fun lt!2648661 () Unit!166884)

(declare-fun lemmaConcatAssociativity!3114 (List!72858 List!72858 List!72858) Unit!166884)

(assert (=> b!7560896 (= lt!2648661 (lemmaConcatAssociativity!3114 testedP!423 lt!2648662 lt!2648663))))

(declare-fun res!3029481 () Bool)

(assert (=> start!730556 (=> (not res!3029481) (not e!4502393))))

(declare-fun validRegex!10403 (Regex!19975) Bool)

(assert (=> start!730556 (= res!3029481 (validRegex!10403 baseR!101))))

(assert (=> start!730556 e!4502393))

(declare-fun e!4502403 () Bool)

(assert (=> start!730556 e!4502403))

(assert (=> start!730556 e!4502396))

(declare-fun e!4502402 () Bool)

(assert (=> start!730556 e!4502402))

(declare-fun e!4502397 () Bool)

(assert (=> start!730556 e!4502397))

(assert (=> start!730556 e!4502394))

(declare-fun b!7560897 () Bool)

(declare-fun tp!2201886 () Bool)

(declare-fun tp!2201887 () Bool)

(assert (=> b!7560897 (= e!4502403 (and tp!2201886 tp!2201887))))

(declare-fun b!7560898 () Bool)

(assert (=> b!7560898 (= e!4502403 tp_is_empty!50305)))

(declare-fun b!7560899 () Bool)

(declare-fun res!3029470 () Bool)

(assert (=> b!7560899 (=> res!3029470 e!4502401)))

(declare-fun $colon$colon!3403 (List!72858 C!40276) List!72858)

(declare-fun tail!15093 (List!72858) List!72858)

(assert (=> b!7560899 (= res!3029470 (not (= lt!2648662 ($colon$colon!3403 (tail!15093 lt!2648662) lt!2648658))))))

(declare-fun b!7560900 () Bool)

(declare-fun tp!2201889 () Bool)

(declare-fun tp!2201893 () Bool)

(assert (=> b!7560900 (= e!4502403 (and tp!2201889 tp!2201893))))

(declare-fun b!7560901 () Bool)

(declare-fun e!4502398 () Bool)

(assert (=> b!7560901 (= e!4502401 e!4502398)))

(declare-fun res!3029468 () Bool)

(assert (=> b!7560901 (=> res!3029468 e!4502398)))

(declare-fun lt!2648669 () List!72858)

(assert (=> b!7560901 (= res!3029468 (not (= lt!2648669 knownP!30)))))

(assert (=> b!7560901 (= lt!2648669 (++!17479 lt!2648656 lt!2648675))))

(declare-fun b!7560902 () Bool)

(assert (=> b!7560902 (= e!4502400 e!4502395)))

(declare-fun res!3029480 () Bool)

(assert (=> b!7560902 (=> res!3029480 e!4502395)))

(assert (=> b!7560902 (= res!3029480 (not (= lt!2648676 input!7874)))))

(declare-fun lt!2648670 () List!72858)

(assert (=> b!7560902 (= lt!2648676 (++!17479 lt!2648670 lt!2648663))))

(assert (=> b!7560902 (= lt!2648670 (++!17479 testedP!423 lt!2648662))))

(declare-fun b!7560903 () Bool)

(declare-fun res!3029469 () Bool)

(assert (=> b!7560903 (=> res!3029469 e!4502391)))

(declare-fun lostCause!1763 (Regex!19975) Bool)

(assert (=> b!7560903 (= res!3029469 (lostCause!1763 r!24333))))

(declare-fun b!7560904 () Bool)

(declare-fun res!3029476 () Bool)

(assert (=> b!7560904 (=> (not res!3029476) (not e!4502393))))

(assert (=> b!7560904 (= res!3029476 (isPrefix!6181 knownP!30 input!7874))))

(declare-fun b!7560905 () Bool)

(assert (=> b!7560905 (= e!4502398 true)))

(declare-fun lt!2648666 () List!72858)

(assert (=> b!7560905 (= lt!2648666 lt!2648662)))

(declare-fun lt!2648657 () Unit!166884)

(assert (=> b!7560905 (= lt!2648657 (lemmaSamePrefixThenSameSuffix!2881 testedP!423 lt!2648666 testedP!423 lt!2648662 knownP!30))))

(assert (=> b!7560905 (= lt!2648669 (++!17479 testedP!423 lt!2648666))))

(assert (=> b!7560905 (= lt!2648666 (++!17479 lt!2648660 lt!2648675))))

(declare-fun lt!2648673 () Unit!166884)

(assert (=> b!7560905 (= lt!2648673 (lemmaConcatAssociativity!3114 testedP!423 lt!2648660 lt!2648675))))

(declare-fun b!7560906 () Bool)

(declare-fun res!3029479 () Bool)

(assert (=> b!7560906 (=> (not res!3029479) (not e!4502393))))

(assert (=> b!7560906 (= res!3029479 (isPrefix!6181 testedP!423 input!7874))))

(declare-fun b!7560907 () Bool)

(declare-fun res!3029466 () Bool)

(assert (=> b!7560907 (=> (not res!3029466) (not e!4502393))))

(assert (=> b!7560907 (= res!3029466 (validRegex!10403 r!24333))))

(declare-fun b!7560908 () Bool)

(declare-fun res!3029473 () Bool)

(assert (=> b!7560908 (=> res!3029473 e!4502391)))

(assert (=> b!7560908 (= res!3029473 (>= lt!2648672 (size!42471 input!7874)))))

(declare-fun b!7560909 () Bool)

(declare-fun tp!2201897 () Bool)

(assert (=> b!7560909 (= e!4502394 tp!2201897)))

(declare-fun b!7560910 () Bool)

(declare-fun tp!2201896 () Bool)

(assert (=> b!7560910 (= e!4502402 (and tp_is_empty!50305 tp!2201896))))

(declare-fun b!7560911 () Bool)

(declare-fun res!3029478 () Bool)

(assert (=> b!7560911 (=> res!3029478 e!4502391)))

(assert (=> b!7560911 (= res!3029478 (= lt!2648672 lt!2648664))))

(declare-fun b!7560912 () Bool)

(declare-fun tp!2201885 () Bool)

(assert (=> b!7560912 (= e!4502403 tp!2201885)))

(declare-fun b!7560913 () Bool)

(declare-fun res!3029482 () Bool)

(assert (=> b!7560913 (=> res!3029482 e!4502401)))

(assert (=> b!7560913 (= res!3029482 (not (= lt!2648670 knownP!30)))))

(declare-fun b!7560914 () Bool)

(declare-fun tp!2201895 () Bool)

(assert (=> b!7560914 (= e!4502397 (and tp_is_empty!50305 tp!2201895))))

(declare-fun b!7560915 () Bool)

(assert (=> b!7560915 (= e!4502399 (not e!4502391))))

(declare-fun res!3029471 () Bool)

(assert (=> b!7560915 (=> res!3029471 e!4502391)))

(assert (=> b!7560915 (= res!3029471 (not (matchR!9577 r!24333 lt!2648662)))))

(assert (=> b!7560915 (= lt!2648662 (getSuffix!3659 knownP!30 testedP!423))))

(assert (=> b!7560915 (isPrefix!6181 testedP!423 knownP!30)))

(declare-fun lt!2648659 () Unit!166884)

(assert (=> b!7560915 (= lt!2648659 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!929 knownP!30 testedP!423 input!7874))))

(assert (= (and start!730556 res!3029481) b!7560907))

(assert (= (and b!7560907 res!3029466) b!7560906))

(assert (= (and b!7560906 res!3029479) b!7560904))

(assert (= (and b!7560904 res!3029476) b!7560891))

(assert (= (and b!7560891 res!3029464) b!7560886))

(assert (= (and b!7560886 res!3029465) b!7560915))

(assert (= (and b!7560915 (not res!3029471)) b!7560893))

(assert (= (and b!7560893 (not res!3029467)) b!7560903))

(assert (= (and b!7560903 (not res!3029469)) b!7560911))

(assert (= (and b!7560911 (not res!3029478)) b!7560908))

(assert (= (and b!7560908 (not res!3029473)) b!7560892))

(assert (= (and b!7560892 (not res!3029474)) b!7560902))

(assert (= (and b!7560902 (not res!3029480)) b!7560895))

(assert (= (and b!7560895 (not res!3029477)) b!7560896))

(assert (= (and b!7560896 (not res!3029472)) b!7560888))

(assert (= (and b!7560888 (not res!3029475)) b!7560899))

(assert (= (and b!7560899 (not res!3029470)) b!7560913))

(assert (= (and b!7560913 (not res!3029482)) b!7560901))

(assert (= (and b!7560901 (not res!3029468)) b!7560905))

(get-info :version)

(assert (= (and start!730556 ((_ is ElementMatch!19975) baseR!101)) b!7560898))

(assert (= (and start!730556 ((_ is Concat!28820) baseR!101)) b!7560897))

(assert (= (and start!730556 ((_ is Star!19975) baseR!101)) b!7560912))

(assert (= (and start!730556 ((_ is Union!19975) baseR!101)) b!7560900))

(assert (= (and start!730556 ((_ is Cons!72734) input!7874)) b!7560887))

(assert (= (and start!730556 ((_ is Cons!72734) knownP!30)) b!7560910))

(assert (= (and start!730556 ((_ is Cons!72734) testedP!423)) b!7560914))

(assert (= (and start!730556 ((_ is ElementMatch!19975) r!24333)) b!7560894))

(assert (= (and start!730556 ((_ is Concat!28820) r!24333)) b!7560889))

(assert (= (and start!730556 ((_ is Star!19975) r!24333)) b!7560909))

(assert (= (and start!730556 ((_ is Union!19975) r!24333)) b!7560890))

(declare-fun m!8123926 () Bool)

(assert (=> b!7560899 m!8123926))

(assert (=> b!7560899 m!8123926))

(declare-fun m!8123928 () Bool)

(assert (=> b!7560899 m!8123928))

(declare-fun m!8123930 () Bool)

(assert (=> b!7560905 m!8123930))

(declare-fun m!8123932 () Bool)

(assert (=> b!7560905 m!8123932))

(declare-fun m!8123934 () Bool)

(assert (=> b!7560905 m!8123934))

(declare-fun m!8123936 () Bool)

(assert (=> b!7560905 m!8123936))

(declare-fun m!8123938 () Bool)

(assert (=> b!7560915 m!8123938))

(declare-fun m!8123940 () Bool)

(assert (=> b!7560915 m!8123940))

(declare-fun m!8123942 () Bool)

(assert (=> b!7560915 m!8123942))

(declare-fun m!8123944 () Bool)

(assert (=> b!7560915 m!8123944))

(declare-fun m!8123946 () Bool)

(assert (=> b!7560907 m!8123946))

(declare-fun m!8123948 () Bool)

(assert (=> b!7560891 m!8123948))

(declare-fun m!8123950 () Bool)

(assert (=> b!7560891 m!8123950))

(declare-fun m!8123952 () Bool)

(assert (=> b!7560893 m!8123952))

(declare-fun m!8123954 () Bool)

(assert (=> b!7560896 m!8123954))

(declare-fun m!8123956 () Bool)

(assert (=> b!7560896 m!8123956))

(declare-fun m!8123958 () Bool)

(assert (=> b!7560896 m!8123958))

(declare-fun m!8123960 () Bool)

(assert (=> b!7560906 m!8123960))

(declare-fun m!8123962 () Bool)

(assert (=> b!7560902 m!8123962))

(declare-fun m!8123964 () Bool)

(assert (=> b!7560902 m!8123964))

(declare-fun m!8123966 () Bool)

(assert (=> b!7560903 m!8123966))

(declare-fun m!8123968 () Bool)

(assert (=> b!7560895 m!8123968))

(declare-fun m!8123970 () Bool)

(assert (=> b!7560901 m!8123970))

(declare-fun m!8123972 () Bool)

(assert (=> start!730556 m!8123972))

(declare-fun m!8123974 () Bool)

(assert (=> b!7560892 m!8123974))

(declare-fun m!8123976 () Bool)

(assert (=> b!7560892 m!8123976))

(declare-fun m!8123978 () Bool)

(assert (=> b!7560892 m!8123978))

(declare-fun m!8123980 () Bool)

(assert (=> b!7560892 m!8123980))

(declare-fun m!8123982 () Bool)

(assert (=> b!7560892 m!8123982))

(declare-fun m!8123984 () Bool)

(assert (=> b!7560892 m!8123984))

(declare-fun m!8123986 () Bool)

(assert (=> b!7560892 m!8123986))

(declare-fun m!8123988 () Bool)

(assert (=> b!7560892 m!8123988))

(declare-fun m!8123990 () Bool)

(assert (=> b!7560892 m!8123990))

(declare-fun m!8123992 () Bool)

(assert (=> b!7560892 m!8123992))

(declare-fun m!8123994 () Bool)

(assert (=> b!7560892 m!8123994))

(declare-fun m!8123996 () Bool)

(assert (=> b!7560892 m!8123996))

(declare-fun m!8123998 () Bool)

(assert (=> b!7560892 m!8123998))

(declare-fun m!8124000 () Bool)

(assert (=> b!7560886 m!8124000))

(declare-fun m!8124002 () Bool)

(assert (=> b!7560888 m!8124002))

(declare-fun m!8124004 () Bool)

(assert (=> b!7560888 m!8124004))

(declare-fun m!8124006 () Bool)

(assert (=> b!7560908 m!8124006))

(declare-fun m!8124008 () Bool)

(assert (=> b!7560904 m!8124008))

(check-sat (not b!7560912) (not b!7560902) (not b!7560914) (not b!7560900) (not b!7560886) (not b!7560887) (not b!7560906) (not b!7560905) (not b!7560910) (not b!7560893) (not b!7560897) (not b!7560908) (not b!7560909) (not b!7560892) (not b!7560899) tp_is_empty!50305 (not b!7560896) (not b!7560915) (not b!7560891) (not b!7560888) (not b!7560903) (not b!7560907) (not b!7560889) (not start!730556) (not b!7560890) (not b!7560901) (not b!7560904) (not b!7560895))
(check-sat)
