; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!730558 () Bool)

(assert start!730558)

(declare-fun b!7560980 () Bool)

(declare-fun e!4502435 () Bool)

(declare-fun e!4502446 () Bool)

(assert (=> b!7560980 (= e!4502435 (not e!4502446))))

(declare-fun res!3029545 () Bool)

(assert (=> b!7560980 (=> res!3029545 e!4502446)))

(declare-datatypes ((C!40278 0))(
  ( (C!40279 (val!30579 Int)) )
))
(declare-datatypes ((Regex!19976 0))(
  ( (ElementMatch!19976 (c!1395125 C!40278)) (Concat!28821 (regOne!40464 Regex!19976) (regTwo!40464 Regex!19976)) (EmptyExpr!19976) (Star!19976 (reg!20305 Regex!19976)) (EmptyLang!19976) (Union!19976 (regOne!40465 Regex!19976) (regTwo!40465 Regex!19976)) )
))
(declare-fun r!24333 () Regex!19976)

(declare-datatypes ((List!72859 0))(
  ( (Nil!72735) (Cons!72735 (h!79183 C!40278) (t!387586 List!72859)) )
))
(declare-fun lt!2648731 () List!72859)

(declare-fun matchR!9578 (Regex!19976 List!72859) Bool)

(assert (=> b!7560980 (= res!3029545 (not (matchR!9578 r!24333 lt!2648731)))))

(declare-fun knownP!30 () List!72859)

(declare-fun testedP!423 () List!72859)

(declare-fun getSuffix!3660 (List!72859 List!72859) List!72859)

(assert (=> b!7560980 (= lt!2648731 (getSuffix!3660 knownP!30 testedP!423))))

(declare-fun isPrefix!6182 (List!72859 List!72859) Bool)

(assert (=> b!7560980 (isPrefix!6182 testedP!423 knownP!30)))

(declare-fun input!7874 () List!72859)

(declare-datatypes ((Unit!166886 0))(
  ( (Unit!166887) )
))
(declare-fun lt!2648739 () Unit!166886)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!930 (List!72859 List!72859 List!72859) Unit!166886)

(assert (=> b!7560980 (= lt!2648739 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!930 knownP!30 testedP!423 input!7874))))

(declare-fun b!7560981 () Bool)

(declare-fun e!4502442 () Bool)

(assert (=> b!7560981 (= e!4502446 e!4502442)))

(declare-fun res!3029532 () Bool)

(assert (=> b!7560981 (=> res!3029532 e!4502442)))

(declare-fun lt!2648741 () List!72859)

(declare-fun ++!17480 (List!72859 List!72859) List!72859)

(assert (=> b!7560981 (= res!3029532 (not (= (++!17480 knownP!30 lt!2648741) input!7874)))))

(assert (=> b!7560981 (= lt!2648741 (getSuffix!3660 input!7874 knownP!30))))

(declare-fun lt!2648738 () List!72859)

(declare-fun lt!2648751 () List!72859)

(assert (=> b!7560981 (= lt!2648738 (getSuffix!3660 knownP!30 lt!2648751))))

(assert (=> b!7560981 (isPrefix!6182 lt!2648751 knownP!30)))

(declare-fun lt!2648740 () Unit!166886)

(assert (=> b!7560981 (= lt!2648740 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!930 knownP!30 lt!2648751 input!7874))))

(declare-fun lt!2648730 () Regex!19976)

(declare-fun lt!2648754 () Regex!19976)

(assert (=> b!7560981 (= lt!2648730 lt!2648754)))

(declare-fun lt!2648736 () C!40278)

(declare-fun derivativeStep!5754 (Regex!19976 C!40278) Regex!19976)

(assert (=> b!7560981 (= lt!2648754 (derivativeStep!5754 r!24333 lt!2648736))))

(declare-fun baseR!101 () Regex!19976)

(declare-fun derivative!506 (Regex!19976 List!72859) Regex!19976)

(assert (=> b!7560981 (= lt!2648730 (derivative!506 baseR!101 lt!2648751))))

(declare-fun lt!2648753 () Unit!166886)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!198 (Regex!19976 Regex!19976 List!72859 C!40278) Unit!166886)

(assert (=> b!7560981 (= lt!2648753 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!198 baseR!101 r!24333 testedP!423 lt!2648736))))

(assert (=> b!7560981 (isPrefix!6182 lt!2648751 input!7874)))

(declare-fun lt!2648732 () Unit!166886)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1231 (List!72859 List!72859) Unit!166886)

(assert (=> b!7560981 (= lt!2648732 (lemmaAddHeadSuffixToPrefixStillPrefix!1231 testedP!423 input!7874))))

(declare-fun lt!2648734 () List!72859)

(assert (=> b!7560981 (= lt!2648751 (++!17480 testedP!423 lt!2648734))))

(assert (=> b!7560981 (= lt!2648734 (Cons!72735 lt!2648736 Nil!72735))))

(declare-fun lt!2648750 () List!72859)

(declare-fun head!15554 (List!72859) C!40278)

(assert (=> b!7560981 (= lt!2648736 (head!15554 lt!2648750))))

(assert (=> b!7560981 (= lt!2648750 (getSuffix!3660 input!7874 testedP!423))))

(declare-fun b!7560982 () Bool)

(declare-fun e!4502445 () Bool)

(declare-fun tp!2201927 () Bool)

(declare-fun tp!2201932 () Bool)

(assert (=> b!7560982 (= e!4502445 (and tp!2201927 tp!2201932))))

(declare-fun b!7560983 () Bool)

(declare-fun res!3029529 () Bool)

(declare-fun e!4502443 () Bool)

(assert (=> b!7560983 (=> res!3029529 e!4502443)))

(declare-fun validRegex!10404 (Regex!19976) Bool)

(assert (=> b!7560983 (= res!3029529 (not (validRegex!10404 lt!2648754)))))

(declare-fun b!7560984 () Bool)

(declare-fun e!4502440 () Bool)

(declare-fun tp!2201931 () Bool)

(assert (=> b!7560984 (= e!4502440 tp!2201931)))

(declare-fun b!7560985 () Bool)

(declare-fun res!3029527 () Bool)

(assert (=> b!7560985 (=> (not res!3029527) (not e!4502435))))

(assert (=> b!7560985 (= res!3029527 (matchR!9578 baseR!101 knownP!30))))

(declare-fun b!7560986 () Bool)

(declare-fun e!4502439 () Bool)

(assert (=> b!7560986 (= e!4502439 e!4502435)))

(declare-fun res!3029543 () Bool)

(assert (=> b!7560986 (=> (not res!3029543) (not e!4502435))))

(declare-fun lt!2648746 () Int)

(declare-fun lt!2648748 () Int)

(assert (=> b!7560986 (= res!3029543 (>= lt!2648746 lt!2648748))))

(declare-fun size!42472 (List!72859) Int)

(assert (=> b!7560986 (= lt!2648748 (size!42472 testedP!423))))

(assert (=> b!7560986 (= lt!2648746 (size!42472 knownP!30))))

(declare-fun b!7560987 () Bool)

(declare-fun res!3029542 () Bool)

(declare-fun e!4502441 () Bool)

(assert (=> b!7560987 (=> res!3029542 e!4502441)))

(assert (=> b!7560987 (= res!3029542 (not (= (++!17480 testedP!423 lt!2648750) input!7874)))))

(declare-fun b!7560988 () Bool)

(declare-fun e!4502448 () Bool)

(assert (=> b!7560988 (= e!4502441 e!4502448)))

(declare-fun res!3029536 () Bool)

(assert (=> b!7560988 (=> res!3029536 e!4502448)))

(declare-fun lt!2648742 () List!72859)

(assert (=> b!7560988 (= res!3029536 (not (= lt!2648742 input!7874)))))

(declare-fun lt!2648745 () List!72859)

(assert (=> b!7560988 (= lt!2648745 lt!2648742)))

(declare-fun lt!2648735 () List!72859)

(assert (=> b!7560988 (= lt!2648742 (++!17480 testedP!423 lt!2648735))))

(assert (=> b!7560988 (= lt!2648735 (++!17480 lt!2648731 lt!2648741))))

(declare-fun lt!2648744 () Unit!166886)

(declare-fun lemmaConcatAssociativity!3115 (List!72859 List!72859 List!72859) Unit!166886)

(assert (=> b!7560988 (= lt!2648744 (lemmaConcatAssociativity!3115 testedP!423 lt!2648731 lt!2648741))))

(declare-fun b!7560989 () Bool)

(declare-fun res!3029533 () Bool)

(assert (=> b!7560989 (=> res!3029533 e!4502446)))

(assert (=> b!7560989 (= res!3029533 (= lt!2648748 lt!2648746))))

(declare-fun b!7560990 () Bool)

(declare-fun res!3029531 () Bool)

(assert (=> b!7560990 (=> res!3029531 e!4502446)))

(declare-fun lostCause!1764 (Regex!19976) Bool)

(assert (=> b!7560990 (= res!3029531 (lostCause!1764 r!24333))))

(declare-fun b!7560991 () Bool)

(declare-fun tp!2201926 () Bool)

(declare-fun tp!2201936 () Bool)

(assert (=> b!7560991 (= e!4502445 (and tp!2201926 tp!2201936))))

(declare-fun b!7560992 () Bool)

(declare-fun tp!2201928 () Bool)

(declare-fun tp!2201935 () Bool)

(assert (=> b!7560992 (= e!4502440 (and tp!2201928 tp!2201935))))

(declare-fun b!7560993 () Bool)

(declare-fun tp_is_empty!50307 () Bool)

(assert (=> b!7560993 (= e!4502440 tp_is_empty!50307)))

(declare-fun b!7560994 () Bool)

(declare-fun res!3029538 () Bool)

(assert (=> b!7560994 (=> (not res!3029538) (not e!4502439))))

(assert (=> b!7560994 (= res!3029538 (isPrefix!6182 testedP!423 input!7874))))

(declare-fun b!7560995 () Bool)

(declare-fun e!4502438 () Bool)

(assert (=> b!7560995 (= e!4502448 e!4502438)))

(declare-fun res!3029540 () Bool)

(assert (=> b!7560995 (=> res!3029540 e!4502438)))

(assert (=> b!7560995 (= res!3029540 (not (= (head!15554 lt!2648731) lt!2648736)))))

(assert (=> b!7560995 (= lt!2648735 lt!2648750)))

(declare-fun lt!2648737 () Unit!166886)

(declare-fun lemmaSamePrefixThenSameSuffix!2882 (List!72859 List!72859 List!72859 List!72859 List!72859) Unit!166886)

(assert (=> b!7560995 (= lt!2648737 (lemmaSamePrefixThenSameSuffix!2882 testedP!423 lt!2648735 testedP!423 lt!2648750 input!7874))))

(declare-fun b!7560996 () Bool)

(declare-fun e!4502444 () Bool)

(assert (=> b!7560996 (= e!4502438 e!4502444)))

(declare-fun res!3029541 () Bool)

(assert (=> b!7560996 (=> res!3029541 e!4502444)))

(declare-fun lt!2648743 () List!72859)

(declare-fun $colon$colon!3404 (List!72859 C!40278) List!72859)

(assert (=> b!7560996 (= res!3029541 (not (= lt!2648731 ($colon$colon!3404 lt!2648743 lt!2648736))))))

(declare-fun tail!15094 (List!72859) List!72859)

(assert (=> b!7560996 (= lt!2648743 (tail!15094 lt!2648731))))

(declare-fun b!7560997 () Bool)

(declare-fun e!4502434 () Bool)

(declare-fun tp!2201929 () Bool)

(assert (=> b!7560997 (= e!4502434 (and tp_is_empty!50307 tp!2201929))))

(declare-fun b!7560998 () Bool)

(declare-fun res!3029539 () Bool)

(assert (=> b!7560998 (=> res!3029539 e!4502444)))

(declare-fun lt!2648749 () List!72859)

(assert (=> b!7560998 (= res!3029539 (not (= lt!2648749 knownP!30)))))

(declare-fun b!7560999 () Bool)

(declare-fun tp!2201924 () Bool)

(assert (=> b!7560999 (= e!4502445 tp!2201924)))

(declare-fun b!7561000 () Bool)

(assert (=> b!7561000 (= e!4502443 (>= lt!2648746 (size!42472 lt!2648751)))))

(declare-fun b!7561001 () Bool)

(declare-fun e!4502436 () Bool)

(declare-fun tp!2201933 () Bool)

(assert (=> b!7561001 (= e!4502436 (and tp_is_empty!50307 tp!2201933))))

(declare-fun b!7561002 () Bool)

(declare-fun e!4502437 () Bool)

(assert (=> b!7561002 (= e!4502444 e!4502437)))

(declare-fun res!3029530 () Bool)

(assert (=> b!7561002 (=> res!3029530 e!4502437)))

(declare-fun lt!2648729 () List!72859)

(assert (=> b!7561002 (= res!3029530 (not (= lt!2648729 knownP!30)))))

(assert (=> b!7561002 (= lt!2648729 (++!17480 lt!2648751 lt!2648738))))

(declare-fun b!7561003 () Bool)

(declare-fun res!3029534 () Bool)

(assert (=> b!7561003 (=> res!3029534 e!4502446)))

(assert (=> b!7561003 (= res!3029534 (>= lt!2648748 (size!42472 input!7874)))))

(declare-fun b!7561004 () Bool)

(declare-fun res!3029537 () Bool)

(assert (=> b!7561004 (=> res!3029537 e!4502446)))

(assert (=> b!7561004 (= res!3029537 (not (= (derivative!506 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7561005 () Bool)

(declare-fun tp!2201925 () Bool)

(declare-fun tp!2201934 () Bool)

(assert (=> b!7561005 (= e!4502440 (and tp!2201925 tp!2201934))))

(declare-fun res!3029528 () Bool)

(assert (=> start!730558 (=> (not res!3029528) (not e!4502439))))

(assert (=> start!730558 (= res!3029528 (validRegex!10404 baseR!101))))

(assert (=> start!730558 e!4502439))

(assert (=> start!730558 e!4502445))

(assert (=> start!730558 e!4502436))

(declare-fun e!4502447 () Bool)

(assert (=> start!730558 e!4502447))

(assert (=> start!730558 e!4502434))

(assert (=> start!730558 e!4502440))

(declare-fun b!7561006 () Bool)

(declare-fun res!3029535 () Bool)

(assert (=> b!7561006 (=> (not res!3029535) (not e!4502439))))

(assert (=> b!7561006 (= res!3029535 (isPrefix!6182 knownP!30 input!7874))))

(declare-fun b!7561007 () Bool)

(declare-fun res!3029544 () Bool)

(assert (=> b!7561007 (=> (not res!3029544) (not e!4502439))))

(assert (=> b!7561007 (= res!3029544 (validRegex!10404 r!24333))))

(declare-fun b!7561008 () Bool)

(declare-fun tp!2201930 () Bool)

(assert (=> b!7561008 (= e!4502447 (and tp_is_empty!50307 tp!2201930))))

(declare-fun b!7561009 () Bool)

(assert (=> b!7561009 (= e!4502442 e!4502441)))

(declare-fun res!3029526 () Bool)

(assert (=> b!7561009 (=> res!3029526 e!4502441)))

(assert (=> b!7561009 (= res!3029526 (not (= lt!2648745 input!7874)))))

(assert (=> b!7561009 (= lt!2648745 (++!17480 lt!2648749 lt!2648741))))

(assert (=> b!7561009 (= lt!2648749 (++!17480 testedP!423 lt!2648731))))

(declare-fun b!7561010 () Bool)

(assert (=> b!7561010 (= e!4502437 e!4502443)))

(declare-fun res!3029525 () Bool)

(assert (=> b!7561010 (=> res!3029525 e!4502443)))

(assert (=> b!7561010 (= res!3029525 (not (= lt!2648743 lt!2648738)))))

(declare-fun lt!2648752 () List!72859)

(assert (=> b!7561010 (= lt!2648752 lt!2648731)))

(declare-fun lt!2648733 () Unit!166886)

(assert (=> b!7561010 (= lt!2648733 (lemmaSamePrefixThenSameSuffix!2882 testedP!423 lt!2648752 testedP!423 lt!2648731 knownP!30))))

(assert (=> b!7561010 (= lt!2648729 (++!17480 testedP!423 lt!2648752))))

(assert (=> b!7561010 (= lt!2648752 (++!17480 lt!2648734 lt!2648738))))

(declare-fun lt!2648747 () Unit!166886)

(assert (=> b!7561010 (= lt!2648747 (lemmaConcatAssociativity!3115 testedP!423 lt!2648734 lt!2648738))))

(declare-fun b!7561011 () Bool)

(assert (=> b!7561011 (= e!4502445 tp_is_empty!50307)))

(assert (= (and start!730558 res!3029528) b!7561007))

(assert (= (and b!7561007 res!3029544) b!7560994))

(assert (= (and b!7560994 res!3029538) b!7561006))

(assert (= (and b!7561006 res!3029535) b!7560986))

(assert (= (and b!7560986 res!3029543) b!7560985))

(assert (= (and b!7560985 res!3029527) b!7560980))

(assert (= (and b!7560980 (not res!3029545)) b!7561004))

(assert (= (and b!7561004 (not res!3029537)) b!7560990))

(assert (= (and b!7560990 (not res!3029531)) b!7560989))

(assert (= (and b!7560989 (not res!3029533)) b!7561003))

(assert (= (and b!7561003 (not res!3029534)) b!7560981))

(assert (= (and b!7560981 (not res!3029532)) b!7561009))

(assert (= (and b!7561009 (not res!3029526)) b!7560987))

(assert (= (and b!7560987 (not res!3029542)) b!7560988))

(assert (= (and b!7560988 (not res!3029536)) b!7560995))

(assert (= (and b!7560995 (not res!3029540)) b!7560996))

(assert (= (and b!7560996 (not res!3029541)) b!7560998))

(assert (= (and b!7560998 (not res!3029539)) b!7561002))

(assert (= (and b!7561002 (not res!3029530)) b!7561010))

(assert (= (and b!7561010 (not res!3029525)) b!7560983))

(assert (= (and b!7560983 (not res!3029529)) b!7561000))

(assert (= (and start!730558 (is-ElementMatch!19976 baseR!101)) b!7561011))

(assert (= (and start!730558 (is-Concat!28821 baseR!101)) b!7560991))

(assert (= (and start!730558 (is-Star!19976 baseR!101)) b!7560999))

(assert (= (and start!730558 (is-Union!19976 baseR!101)) b!7560982))

(assert (= (and start!730558 (is-Cons!72735 input!7874)) b!7561001))

(assert (= (and start!730558 (is-Cons!72735 knownP!30)) b!7561008))

(assert (= (and start!730558 (is-Cons!72735 testedP!423)) b!7560997))

(assert (= (and start!730558 (is-ElementMatch!19976 r!24333)) b!7560993))

(assert (= (and start!730558 (is-Concat!28821 r!24333)) b!7561005))

(assert (= (and start!730558 (is-Star!19976 r!24333)) b!7560984))

(assert (= (and start!730558 (is-Union!19976 r!24333)) b!7560992))

(declare-fun m!8124010 () Bool)

(assert (=> b!7560987 m!8124010))

(declare-fun m!8124012 () Bool)

(assert (=> b!7560986 m!8124012))

(declare-fun m!8124014 () Bool)

(assert (=> b!7560986 m!8124014))

(declare-fun m!8124016 () Bool)

(assert (=> b!7560988 m!8124016))

(declare-fun m!8124018 () Bool)

(assert (=> b!7560988 m!8124018))

(declare-fun m!8124020 () Bool)

(assert (=> b!7560988 m!8124020))

(declare-fun m!8124022 () Bool)

(assert (=> b!7561002 m!8124022))

(declare-fun m!8124024 () Bool)

(assert (=> b!7561009 m!8124024))

(declare-fun m!8124026 () Bool)

(assert (=> b!7561009 m!8124026))

(declare-fun m!8124028 () Bool)

(assert (=> b!7560981 m!8124028))

(declare-fun m!8124030 () Bool)

(assert (=> b!7560981 m!8124030))

(declare-fun m!8124032 () Bool)

(assert (=> b!7560981 m!8124032))

(declare-fun m!8124034 () Bool)

(assert (=> b!7560981 m!8124034))

(declare-fun m!8124036 () Bool)

(assert (=> b!7560981 m!8124036))

(declare-fun m!8124038 () Bool)

(assert (=> b!7560981 m!8124038))

(declare-fun m!8124040 () Bool)

(assert (=> b!7560981 m!8124040))

(declare-fun m!8124042 () Bool)

(assert (=> b!7560981 m!8124042))

(declare-fun m!8124044 () Bool)

(assert (=> b!7560981 m!8124044))

(declare-fun m!8124046 () Bool)

(assert (=> b!7560981 m!8124046))

(declare-fun m!8124048 () Bool)

(assert (=> b!7560981 m!8124048))

(declare-fun m!8124050 () Bool)

(assert (=> b!7560981 m!8124050))

(declare-fun m!8124052 () Bool)

(assert (=> b!7560981 m!8124052))

(declare-fun m!8124054 () Bool)

(assert (=> b!7560996 m!8124054))

(declare-fun m!8124056 () Bool)

(assert (=> b!7560996 m!8124056))

(declare-fun m!8124058 () Bool)

(assert (=> b!7561010 m!8124058))

(declare-fun m!8124060 () Bool)

(assert (=> b!7561010 m!8124060))

(declare-fun m!8124062 () Bool)

(assert (=> b!7561010 m!8124062))

(declare-fun m!8124064 () Bool)

(assert (=> b!7561010 m!8124064))

(declare-fun m!8124066 () Bool)

(assert (=> b!7560995 m!8124066))

(declare-fun m!8124068 () Bool)

(assert (=> b!7560995 m!8124068))

(declare-fun m!8124070 () Bool)

(assert (=> start!730558 m!8124070))

(declare-fun m!8124072 () Bool)

(assert (=> b!7560994 m!8124072))

(declare-fun m!8124074 () Bool)

(assert (=> b!7561003 m!8124074))

(declare-fun m!8124076 () Bool)

(assert (=> b!7561004 m!8124076))

(declare-fun m!8124078 () Bool)

(assert (=> b!7561000 m!8124078))

(declare-fun m!8124080 () Bool)

(assert (=> b!7561006 m!8124080))

(declare-fun m!8124082 () Bool)

(assert (=> b!7560985 m!8124082))

(declare-fun m!8124084 () Bool)

(assert (=> b!7560983 m!8124084))

(declare-fun m!8124086 () Bool)

(assert (=> b!7560990 m!8124086))

(declare-fun m!8124088 () Bool)

(assert (=> b!7561007 m!8124088))

(declare-fun m!8124090 () Bool)

(assert (=> b!7560980 m!8124090))

(declare-fun m!8124092 () Bool)

(assert (=> b!7560980 m!8124092))

(declare-fun m!8124094 () Bool)

(assert (=> b!7560980 m!8124094))

(declare-fun m!8124096 () Bool)

(assert (=> b!7560980 m!8124096))

(push 1)

(assert tp_is_empty!50307)

(assert (not b!7560994))

(assert (not b!7560984))

(assert (not b!7560992))

(assert (not b!7560991))

(assert (not start!730558))

(assert (not b!7560997))

(assert (not b!7560982))

(assert (not b!7561000))

(assert (not b!7560988))

(assert (not b!7561004))

(assert (not b!7561003))

(assert (not b!7561002))

(assert (not b!7560987))

(assert (not b!7561009))

(assert (not b!7560981))

(assert (not b!7560983))

(assert (not b!7561006))

(assert (not b!7561001))

(assert (not b!7560996))

(assert (not b!7560980))

(assert (not b!7561005))

(assert (not b!7561007))

(assert (not b!7560985))

(assert (not b!7561010))

(assert (not b!7560999))

(assert (not b!7560986))

(assert (not b!7561008))

(assert (not b!7560995))

(assert (not b!7560990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2314832 () Bool)

(assert (=> d!2314832 (= ($colon$colon!3404 lt!2648743 lt!2648736) (Cons!72735 lt!2648736 lt!2648743))))

(assert (=> b!7560996 d!2314832))

(declare-fun d!2314834 () Bool)

(assert (=> d!2314834 (= (tail!15094 lt!2648731) (t!387586 lt!2648731))))

(assert (=> b!7560996 d!2314834))

(declare-fun b!7561126 () Bool)

(declare-fun e!4502512 () Bool)

(declare-fun e!4502511 () Bool)

(assert (=> b!7561126 (= e!4502512 e!4502511)))

(declare-fun res!3029620 () Bool)

(declare-fun nullable!8712 (Regex!19976) Bool)

(assert (=> b!7561126 (= res!3029620 (not (nullable!8712 (reg!20305 r!24333))))))

(assert (=> b!7561126 (=> (not res!3029620) (not e!4502511))))

(declare-fun b!7561127 () Bool)

(declare-fun call!693200 () Bool)

(assert (=> b!7561127 (= e!4502511 call!693200)))

(declare-fun b!7561128 () Bool)

(declare-fun e!4502509 () Bool)

(declare-fun call!693201 () Bool)

(assert (=> b!7561128 (= e!4502509 call!693201)))

(declare-fun b!7561129 () Bool)

(declare-fun e!4502508 () Bool)

(assert (=> b!7561129 (= e!4502512 e!4502508)))

(declare-fun c!1395131 () Bool)

(assert (=> b!7561129 (= c!1395131 (is-Union!19976 r!24333))))

(declare-fun c!1395132 () Bool)

(declare-fun bm!693194 () Bool)

(assert (=> bm!693194 (= call!693200 (validRegex!10404 (ite c!1395132 (reg!20305 r!24333) (ite c!1395131 (regTwo!40465 r!24333) (regTwo!40464 r!24333)))))))

(declare-fun b!7561130 () Bool)

(declare-fun res!3029623 () Bool)

(declare-fun e!4502510 () Bool)

(assert (=> b!7561130 (=> res!3029623 e!4502510)))

(assert (=> b!7561130 (= res!3029623 (not (is-Concat!28821 r!24333)))))

(assert (=> b!7561130 (= e!4502508 e!4502510)))

(declare-fun b!7561131 () Bool)

(declare-fun e!4502514 () Bool)

(assert (=> b!7561131 (= e!4502514 e!4502512)))

(assert (=> b!7561131 (= c!1395132 (is-Star!19976 r!24333))))

(declare-fun d!2314836 () Bool)

(declare-fun res!3029622 () Bool)

(assert (=> d!2314836 (=> res!3029622 e!4502514)))

(assert (=> d!2314836 (= res!3029622 (is-ElementMatch!19976 r!24333))))

(assert (=> d!2314836 (= (validRegex!10404 r!24333) e!4502514)))

(declare-fun bm!693195 () Bool)

(assert (=> bm!693195 (= call!693201 call!693200)))

(declare-fun b!7561132 () Bool)

(declare-fun e!4502513 () Bool)

(assert (=> b!7561132 (= e!4502513 call!693201)))

(declare-fun b!7561133 () Bool)

(assert (=> b!7561133 (= e!4502510 e!4502509)))

(declare-fun res!3029619 () Bool)

(assert (=> b!7561133 (=> (not res!3029619) (not e!4502509))))

(declare-fun call!693199 () Bool)

(assert (=> b!7561133 (= res!3029619 call!693199)))

(declare-fun b!7561134 () Bool)

(declare-fun res!3029621 () Bool)

(assert (=> b!7561134 (=> (not res!3029621) (not e!4502513))))

(assert (=> b!7561134 (= res!3029621 call!693199)))

(assert (=> b!7561134 (= e!4502508 e!4502513)))

(declare-fun bm!693196 () Bool)

(assert (=> bm!693196 (= call!693199 (validRegex!10404 (ite c!1395131 (regOne!40465 r!24333) (regOne!40464 r!24333))))))

(assert (= (and d!2314836 (not res!3029622)) b!7561131))

(assert (= (and b!7561131 c!1395132) b!7561126))

(assert (= (and b!7561131 (not c!1395132)) b!7561129))

(assert (= (and b!7561126 res!3029620) b!7561127))

(assert (= (and b!7561129 c!1395131) b!7561134))

(assert (= (and b!7561129 (not c!1395131)) b!7561130))

(assert (= (and b!7561134 res!3029621) b!7561132))

(assert (= (and b!7561130 (not res!3029623)) b!7561133))

(assert (= (and b!7561133 res!3029619) b!7561128))

(assert (= (or b!7561134 b!7561133) bm!693196))

(assert (= (or b!7561132 b!7561128) bm!693195))

(assert (= (or b!7561127 bm!693195) bm!693194))

(declare-fun m!8124186 () Bool)

(assert (=> b!7561126 m!8124186))

(declare-fun m!8124188 () Bool)

(assert (=> bm!693194 m!8124188))

(declare-fun m!8124190 () Bool)

(assert (=> bm!693196 m!8124190))

(assert (=> b!7561007 d!2314836))

(declare-fun d!2314838 () Bool)

(declare-fun lt!2648835 () Int)

(assert (=> d!2314838 (>= lt!2648835 0)))

(declare-fun e!4502517 () Int)

(assert (=> d!2314838 (= lt!2648835 e!4502517)))

(declare-fun c!1395135 () Bool)

(assert (=> d!2314838 (= c!1395135 (is-Nil!72735 testedP!423))))

(assert (=> d!2314838 (= (size!42472 testedP!423) lt!2648835)))

(declare-fun b!7561139 () Bool)

(assert (=> b!7561139 (= e!4502517 0)))

(declare-fun b!7561140 () Bool)

(assert (=> b!7561140 (= e!4502517 (+ 1 (size!42472 (t!387586 testedP!423))))))

(assert (= (and d!2314838 c!1395135) b!7561139))

(assert (= (and d!2314838 (not c!1395135)) b!7561140))

(declare-fun m!8124192 () Bool)

(assert (=> b!7561140 m!8124192))

(assert (=> b!7560986 d!2314838))

(declare-fun d!2314842 () Bool)

(declare-fun lt!2648836 () Int)

(assert (=> d!2314842 (>= lt!2648836 0)))

(declare-fun e!4502518 () Int)

(assert (=> d!2314842 (= lt!2648836 e!4502518)))

(declare-fun c!1395136 () Bool)

(assert (=> d!2314842 (= c!1395136 (is-Nil!72735 knownP!30))))

(assert (=> d!2314842 (= (size!42472 knownP!30) lt!2648836)))

(declare-fun b!7561141 () Bool)

(assert (=> b!7561141 (= e!4502518 0)))

(declare-fun b!7561142 () Bool)

(assert (=> b!7561142 (= e!4502518 (+ 1 (size!42472 (t!387586 knownP!30))))))

(assert (= (and d!2314842 c!1395136) b!7561141))

(assert (= (and d!2314842 (not c!1395136)) b!7561142))

(declare-fun m!8124194 () Bool)

(assert (=> b!7561142 m!8124194))

(assert (=> b!7560986 d!2314842))

(declare-fun d!2314844 () Bool)

(assert (=> d!2314844 (= (head!15554 lt!2648731) (h!79183 lt!2648731))))

(assert (=> b!7560995 d!2314844))

(declare-fun d!2314846 () Bool)

(assert (=> d!2314846 (= lt!2648735 lt!2648750)))

(declare-fun lt!2648839 () Unit!166886)

(declare-fun choose!58482 (List!72859 List!72859 List!72859 List!72859 List!72859) Unit!166886)

(assert (=> d!2314846 (= lt!2648839 (choose!58482 testedP!423 lt!2648735 testedP!423 lt!2648750 input!7874))))

(assert (=> d!2314846 (isPrefix!6182 testedP!423 input!7874)))

(assert (=> d!2314846 (= (lemmaSamePrefixThenSameSuffix!2882 testedP!423 lt!2648735 testedP!423 lt!2648750 input!7874) lt!2648839)))

(declare-fun bs!1940359 () Bool)

(assert (= bs!1940359 d!2314846))

(declare-fun m!8124196 () Bool)

(assert (=> bs!1940359 m!8124196))

(assert (=> bs!1940359 m!8124072))

(assert (=> b!7560995 d!2314846))

(declare-fun d!2314848 () Bool)

(declare-fun e!4502529 () Bool)

(assert (=> d!2314848 e!4502529))

(declare-fun res!3029637 () Bool)

(assert (=> d!2314848 (=> res!3029637 e!4502529)))

(declare-fun lt!2648844 () Bool)

(assert (=> d!2314848 (= res!3029637 (not lt!2648844))))

(declare-fun e!4502531 () Bool)

(assert (=> d!2314848 (= lt!2648844 e!4502531)))

(declare-fun res!3029636 () Bool)

(assert (=> d!2314848 (=> res!3029636 e!4502531)))

(assert (=> d!2314848 (= res!3029636 (is-Nil!72735 knownP!30))))

(assert (=> d!2314848 (= (isPrefix!6182 knownP!30 input!7874) lt!2648844)))

(declare-fun b!7561161 () Bool)

(declare-fun e!4502530 () Bool)

(assert (=> b!7561161 (= e!4502530 (isPrefix!6182 (tail!15094 knownP!30) (tail!15094 input!7874)))))

(declare-fun b!7561159 () Bool)

(assert (=> b!7561159 (= e!4502531 e!4502530)))

(declare-fun res!3029639 () Bool)

(assert (=> b!7561159 (=> (not res!3029639) (not e!4502530))))

(assert (=> b!7561159 (= res!3029639 (not (is-Nil!72735 input!7874)))))

(declare-fun b!7561160 () Bool)

(declare-fun res!3029638 () Bool)

(assert (=> b!7561160 (=> (not res!3029638) (not e!4502530))))

(assert (=> b!7561160 (= res!3029638 (= (head!15554 knownP!30) (head!15554 input!7874)))))

(declare-fun b!7561162 () Bool)

(assert (=> b!7561162 (= e!4502529 (>= (size!42472 input!7874) (size!42472 knownP!30)))))

(assert (= (and d!2314848 (not res!3029636)) b!7561159))

(assert (= (and b!7561159 res!3029639) b!7561160))

(assert (= (and b!7561160 res!3029638) b!7561161))

(assert (= (and d!2314848 (not res!3029637)) b!7561162))

(declare-fun m!8124198 () Bool)

(assert (=> b!7561161 m!8124198))

(declare-fun m!8124200 () Bool)

(assert (=> b!7561161 m!8124200))

(assert (=> b!7561161 m!8124198))

(assert (=> b!7561161 m!8124200))

(declare-fun m!8124202 () Bool)

(assert (=> b!7561161 m!8124202))

(declare-fun m!8124204 () Bool)

(assert (=> b!7561160 m!8124204))

(declare-fun m!8124206 () Bool)

(assert (=> b!7561160 m!8124206))

(assert (=> b!7561162 m!8124074))

(assert (=> b!7561162 m!8124014))

(assert (=> b!7561006 d!2314848))

(declare-fun b!7561199 () Bool)

(declare-fun e!4502550 () Bool)

(declare-fun lt!2648849 () Bool)

(assert (=> b!7561199 (= e!4502550 (not lt!2648849))))

(declare-fun b!7561200 () Bool)

(declare-fun res!3029665 () Bool)

(declare-fun e!4502551 () Bool)

(assert (=> b!7561200 (=> res!3029665 e!4502551)))

(assert (=> b!7561200 (= res!3029665 (not (is-ElementMatch!19976 baseR!101)))))

(assert (=> b!7561200 (= e!4502550 e!4502551)))

(declare-fun b!7561201 () Bool)

(declare-fun e!4502553 () Bool)

(assert (=> b!7561201 (= e!4502553 (nullable!8712 baseR!101))))

(declare-fun b!7561202 () Bool)

(declare-fun e!4502555 () Bool)

(assert (=> b!7561202 (= e!4502555 (not (= (head!15554 knownP!30) (c!1395125 baseR!101))))))

(declare-fun d!2314850 () Bool)

(declare-fun e!4502552 () Bool)

(assert (=> d!2314850 e!4502552))

(declare-fun c!1395148 () Bool)

(assert (=> d!2314850 (= c!1395148 (is-EmptyExpr!19976 baseR!101))))

(assert (=> d!2314850 (= lt!2648849 e!4502553)))

(declare-fun c!1395147 () Bool)

(declare-fun isEmpty!41412 (List!72859) Bool)

(assert (=> d!2314850 (= c!1395147 (isEmpty!41412 knownP!30))))

(assert (=> d!2314850 (validRegex!10404 baseR!101)))

(assert (=> d!2314850 (= (matchR!9578 baseR!101 knownP!30) lt!2648849)))

(declare-fun b!7561203 () Bool)

(declare-fun e!4502556 () Bool)

(assert (=> b!7561203 (= e!4502551 e!4502556)))

(declare-fun res!3029667 () Bool)

(assert (=> b!7561203 (=> (not res!3029667) (not e!4502556))))

(assert (=> b!7561203 (= res!3029667 (not lt!2648849))))

(declare-fun b!7561204 () Bool)

(declare-fun e!4502554 () Bool)

(assert (=> b!7561204 (= e!4502554 (= (head!15554 knownP!30) (c!1395125 baseR!101)))))

(declare-fun b!7561205 () Bool)

(assert (=> b!7561205 (= e!4502552 e!4502550)))

(declare-fun c!1395149 () Bool)

(assert (=> b!7561205 (= c!1395149 (is-EmptyLang!19976 baseR!101))))

(declare-fun bm!693199 () Bool)

(declare-fun call!693204 () Bool)

(assert (=> bm!693199 (= call!693204 (isEmpty!41412 knownP!30))))

(declare-fun b!7561206 () Bool)

(declare-fun res!3029661 () Bool)

(assert (=> b!7561206 (=> (not res!3029661) (not e!4502554))))

(assert (=> b!7561206 (= res!3029661 (isEmpty!41412 (tail!15094 knownP!30)))))

(declare-fun b!7561207 () Bool)

(assert (=> b!7561207 (= e!4502556 e!4502555)))

(declare-fun res!3029664 () Bool)

(assert (=> b!7561207 (=> res!3029664 e!4502555)))

(assert (=> b!7561207 (= res!3029664 call!693204)))

(declare-fun b!7561208 () Bool)

(declare-fun res!3029663 () Bool)

(assert (=> b!7561208 (=> res!3029663 e!4502555)))

(assert (=> b!7561208 (= res!3029663 (not (isEmpty!41412 (tail!15094 knownP!30))))))

(declare-fun b!7561209 () Bool)

(declare-fun res!3029660 () Bool)

(assert (=> b!7561209 (=> (not res!3029660) (not e!4502554))))

(assert (=> b!7561209 (= res!3029660 (not call!693204))))

(declare-fun b!7561210 () Bool)

(assert (=> b!7561210 (= e!4502552 (= lt!2648849 call!693204))))

(declare-fun b!7561211 () Bool)

(declare-fun res!3029666 () Bool)

(assert (=> b!7561211 (=> res!3029666 e!4502551)))

(assert (=> b!7561211 (= res!3029666 e!4502554)))

(declare-fun res!3029662 () Bool)

(assert (=> b!7561211 (=> (not res!3029662) (not e!4502554))))

(assert (=> b!7561211 (= res!3029662 lt!2648849)))

(declare-fun b!7561212 () Bool)

(assert (=> b!7561212 (= e!4502553 (matchR!9578 (derivativeStep!5754 baseR!101 (head!15554 knownP!30)) (tail!15094 knownP!30)))))

(assert (= (and d!2314850 c!1395147) b!7561201))

(assert (= (and d!2314850 (not c!1395147)) b!7561212))

(assert (= (and d!2314850 c!1395148) b!7561210))

(assert (= (and d!2314850 (not c!1395148)) b!7561205))

(assert (= (and b!7561205 c!1395149) b!7561199))

(assert (= (and b!7561205 (not c!1395149)) b!7561200))

(assert (= (and b!7561200 (not res!3029665)) b!7561211))

(assert (= (and b!7561211 res!3029662) b!7561209))

(assert (= (and b!7561209 res!3029660) b!7561206))

(assert (= (and b!7561206 res!3029661) b!7561204))

(assert (= (and b!7561211 (not res!3029666)) b!7561203))

(assert (= (and b!7561203 res!3029667) b!7561207))

(assert (= (and b!7561207 (not res!3029664)) b!7561208))

(assert (= (and b!7561208 (not res!3029663)) b!7561202))

(assert (= (or b!7561210 b!7561209 b!7561207) bm!693199))

(declare-fun m!8124234 () Bool)

(assert (=> bm!693199 m!8124234))

(assert (=> b!7561208 m!8124198))

(assert (=> b!7561208 m!8124198))

(declare-fun m!8124236 () Bool)

(assert (=> b!7561208 m!8124236))

(assert (=> b!7561204 m!8124204))

(assert (=> d!2314850 m!8124234))

(assert (=> d!2314850 m!8124070))

(declare-fun m!8124238 () Bool)

(assert (=> b!7561201 m!8124238))

(assert (=> b!7561212 m!8124204))

(assert (=> b!7561212 m!8124204))

(declare-fun m!8124240 () Bool)

(assert (=> b!7561212 m!8124240))

(assert (=> b!7561212 m!8124198))

(assert (=> b!7561212 m!8124240))

(assert (=> b!7561212 m!8124198))

(declare-fun m!8124242 () Bool)

(assert (=> b!7561212 m!8124242))

(assert (=> b!7561202 m!8124204))

(assert (=> b!7561206 m!8124198))

(assert (=> b!7561206 m!8124198))

(assert (=> b!7561206 m!8124236))

(assert (=> b!7560985 d!2314850))

(declare-fun b!7561224 () Bool)

(declare-fun lt!2648852 () List!72859)

(declare-fun e!4502561 () Bool)

(assert (=> b!7561224 (= e!4502561 (or (not (= lt!2648735 Nil!72735)) (= lt!2648852 testedP!423)))))

(declare-fun b!7561223 () Bool)

(declare-fun res!3029672 () Bool)

(assert (=> b!7561223 (=> (not res!3029672) (not e!4502561))))

(assert (=> b!7561223 (= res!3029672 (= (size!42472 lt!2648852) (+ (size!42472 testedP!423) (size!42472 lt!2648735))))))

(declare-fun b!7561222 () Bool)

(declare-fun e!4502562 () List!72859)

(assert (=> b!7561222 (= e!4502562 (Cons!72735 (h!79183 testedP!423) (++!17480 (t!387586 testedP!423) lt!2648735)))))

(declare-fun d!2314856 () Bool)

(assert (=> d!2314856 e!4502561))

(declare-fun res!3029673 () Bool)

(assert (=> d!2314856 (=> (not res!3029673) (not e!4502561))))

(declare-fun content!15399 (List!72859) (Set C!40278))

(assert (=> d!2314856 (= res!3029673 (= (content!15399 lt!2648852) (set.union (content!15399 testedP!423) (content!15399 lt!2648735))))))

(assert (=> d!2314856 (= lt!2648852 e!4502562)))

(declare-fun c!1395152 () Bool)

(assert (=> d!2314856 (= c!1395152 (is-Nil!72735 testedP!423))))

(assert (=> d!2314856 (= (++!17480 testedP!423 lt!2648735) lt!2648852)))

(declare-fun b!7561221 () Bool)

(assert (=> b!7561221 (= e!4502562 lt!2648735)))

(assert (= (and d!2314856 c!1395152) b!7561221))

(assert (= (and d!2314856 (not c!1395152)) b!7561222))

(assert (= (and d!2314856 res!3029673) b!7561223))

(assert (= (and b!7561223 res!3029672) b!7561224))

(declare-fun m!8124244 () Bool)

(assert (=> b!7561223 m!8124244))

(assert (=> b!7561223 m!8124012))

(declare-fun m!8124246 () Bool)

(assert (=> b!7561223 m!8124246))

(declare-fun m!8124248 () Bool)

(assert (=> b!7561222 m!8124248))

(declare-fun m!8124250 () Bool)

(assert (=> d!2314856 m!8124250))

(declare-fun m!8124252 () Bool)

(assert (=> d!2314856 m!8124252))

(declare-fun m!8124254 () Bool)

(assert (=> d!2314856 m!8124254))

(assert (=> b!7560988 d!2314856))

(declare-fun e!4502563 () Bool)

(declare-fun b!7561228 () Bool)

(declare-fun lt!2648853 () List!72859)

(assert (=> b!7561228 (= e!4502563 (or (not (= lt!2648741 Nil!72735)) (= lt!2648853 lt!2648731)))))

(declare-fun b!7561227 () Bool)

(declare-fun res!3029674 () Bool)

(assert (=> b!7561227 (=> (not res!3029674) (not e!4502563))))

(assert (=> b!7561227 (= res!3029674 (= (size!42472 lt!2648853) (+ (size!42472 lt!2648731) (size!42472 lt!2648741))))))

(declare-fun b!7561226 () Bool)

(declare-fun e!4502564 () List!72859)

(assert (=> b!7561226 (= e!4502564 (Cons!72735 (h!79183 lt!2648731) (++!17480 (t!387586 lt!2648731) lt!2648741)))))

(declare-fun d!2314858 () Bool)

(assert (=> d!2314858 e!4502563))

(declare-fun res!3029675 () Bool)

(assert (=> d!2314858 (=> (not res!3029675) (not e!4502563))))

(assert (=> d!2314858 (= res!3029675 (= (content!15399 lt!2648853) (set.union (content!15399 lt!2648731) (content!15399 lt!2648741))))))

(assert (=> d!2314858 (= lt!2648853 e!4502564)))

(declare-fun c!1395153 () Bool)

(assert (=> d!2314858 (= c!1395153 (is-Nil!72735 lt!2648731))))

(assert (=> d!2314858 (= (++!17480 lt!2648731 lt!2648741) lt!2648853)))

(declare-fun b!7561225 () Bool)

(assert (=> b!7561225 (= e!4502564 lt!2648741)))

(assert (= (and d!2314858 c!1395153) b!7561225))

(assert (= (and d!2314858 (not c!1395153)) b!7561226))

(assert (= (and d!2314858 res!3029675) b!7561227))

(assert (= (and b!7561227 res!3029674) b!7561228))

(declare-fun m!8124256 () Bool)

(assert (=> b!7561227 m!8124256))

(declare-fun m!8124258 () Bool)

(assert (=> b!7561227 m!8124258))

(declare-fun m!8124260 () Bool)

(assert (=> b!7561227 m!8124260))

(declare-fun m!8124262 () Bool)

(assert (=> b!7561226 m!8124262))

(declare-fun m!8124264 () Bool)

(assert (=> d!2314858 m!8124264))

(declare-fun m!8124266 () Bool)

(assert (=> d!2314858 m!8124266))

(declare-fun m!8124268 () Bool)

(assert (=> d!2314858 m!8124268))

(assert (=> b!7560988 d!2314858))

(declare-fun d!2314860 () Bool)

(assert (=> d!2314860 (= (++!17480 (++!17480 testedP!423 lt!2648731) lt!2648741) (++!17480 testedP!423 (++!17480 lt!2648731 lt!2648741)))))

(declare-fun lt!2648858 () Unit!166886)

(declare-fun choose!58483 (List!72859 List!72859 List!72859) Unit!166886)

(assert (=> d!2314860 (= lt!2648858 (choose!58483 testedP!423 lt!2648731 lt!2648741))))

(assert (=> d!2314860 (= (lemmaConcatAssociativity!3115 testedP!423 lt!2648731 lt!2648741) lt!2648858)))

(declare-fun bs!1940360 () Bool)

(assert (= bs!1940360 d!2314860))

(assert (=> bs!1940360 m!8124026))

(declare-fun m!8124270 () Bool)

(assert (=> bs!1940360 m!8124270))

(assert (=> bs!1940360 m!8124026))

(declare-fun m!8124272 () Bool)

(assert (=> bs!1940360 m!8124272))

(assert (=> bs!1940360 m!8124018))

(assert (=> bs!1940360 m!8124018))

(declare-fun m!8124274 () Bool)

(assert (=> bs!1940360 m!8124274))

(assert (=> b!7560988 d!2314860))

(declare-fun d!2314862 () Bool)

(assert (=> d!2314862 (= lt!2648752 lt!2648731)))

(declare-fun lt!2648859 () Unit!166886)

(assert (=> d!2314862 (= lt!2648859 (choose!58482 testedP!423 lt!2648752 testedP!423 lt!2648731 knownP!30))))

(assert (=> d!2314862 (isPrefix!6182 testedP!423 knownP!30)))

(assert (=> d!2314862 (= (lemmaSamePrefixThenSameSuffix!2882 testedP!423 lt!2648752 testedP!423 lt!2648731 knownP!30) lt!2648859)))

(declare-fun bs!1940361 () Bool)

(assert (= bs!1940361 d!2314862))

(declare-fun m!8124276 () Bool)

(assert (=> bs!1940361 m!8124276))

(assert (=> bs!1940361 m!8124094))

(assert (=> b!7561010 d!2314862))

(declare-fun lt!2648860 () List!72859)

(declare-fun e!4502579 () Bool)

(declare-fun b!7561260 () Bool)

(assert (=> b!7561260 (= e!4502579 (or (not (= lt!2648752 Nil!72735)) (= lt!2648860 testedP!423)))))

(declare-fun b!7561259 () Bool)

(declare-fun res!3029692 () Bool)

(assert (=> b!7561259 (=> (not res!3029692) (not e!4502579))))

(assert (=> b!7561259 (= res!3029692 (= (size!42472 lt!2648860) (+ (size!42472 testedP!423) (size!42472 lt!2648752))))))

(declare-fun b!7561258 () Bool)

(declare-fun e!4502580 () List!72859)

(assert (=> b!7561258 (= e!4502580 (Cons!72735 (h!79183 testedP!423) (++!17480 (t!387586 testedP!423) lt!2648752)))))

(declare-fun d!2314864 () Bool)

(assert (=> d!2314864 e!4502579))

(declare-fun res!3029693 () Bool)

(assert (=> d!2314864 (=> (not res!3029693) (not e!4502579))))

(assert (=> d!2314864 (= res!3029693 (= (content!15399 lt!2648860) (set.union (content!15399 testedP!423) (content!15399 lt!2648752))))))

(assert (=> d!2314864 (= lt!2648860 e!4502580)))

(declare-fun c!1395160 () Bool)

(assert (=> d!2314864 (= c!1395160 (is-Nil!72735 testedP!423))))

(assert (=> d!2314864 (= (++!17480 testedP!423 lt!2648752) lt!2648860)))

(declare-fun b!7561257 () Bool)

(assert (=> b!7561257 (= e!4502580 lt!2648752)))

(assert (= (and d!2314864 c!1395160) b!7561257))

(assert (= (and d!2314864 (not c!1395160)) b!7561258))

(assert (= (and d!2314864 res!3029693) b!7561259))

(assert (= (and b!7561259 res!3029692) b!7561260))

(declare-fun m!8124278 () Bool)

(assert (=> b!7561259 m!8124278))

(assert (=> b!7561259 m!8124012))

(declare-fun m!8124280 () Bool)

(assert (=> b!7561259 m!8124280))

(declare-fun m!8124282 () Bool)

(assert (=> b!7561258 m!8124282))

(declare-fun m!8124284 () Bool)

(assert (=> d!2314864 m!8124284))

(assert (=> d!2314864 m!8124252))

(declare-fun m!8124286 () Bool)

(assert (=> d!2314864 m!8124286))

(assert (=> b!7561010 d!2314864))

(declare-fun lt!2648861 () List!72859)

(declare-fun b!7561264 () Bool)

(declare-fun e!4502581 () Bool)

(assert (=> b!7561264 (= e!4502581 (or (not (= lt!2648738 Nil!72735)) (= lt!2648861 lt!2648734)))))

(declare-fun b!7561263 () Bool)

(declare-fun res!3029694 () Bool)

(assert (=> b!7561263 (=> (not res!3029694) (not e!4502581))))

(assert (=> b!7561263 (= res!3029694 (= (size!42472 lt!2648861) (+ (size!42472 lt!2648734) (size!42472 lt!2648738))))))

(declare-fun b!7561262 () Bool)

(declare-fun e!4502582 () List!72859)

(assert (=> b!7561262 (= e!4502582 (Cons!72735 (h!79183 lt!2648734) (++!17480 (t!387586 lt!2648734) lt!2648738)))))

(declare-fun d!2314866 () Bool)

(assert (=> d!2314866 e!4502581))

(declare-fun res!3029695 () Bool)

(assert (=> d!2314866 (=> (not res!3029695) (not e!4502581))))

(assert (=> d!2314866 (= res!3029695 (= (content!15399 lt!2648861) (set.union (content!15399 lt!2648734) (content!15399 lt!2648738))))))

(assert (=> d!2314866 (= lt!2648861 e!4502582)))

(declare-fun c!1395161 () Bool)

(assert (=> d!2314866 (= c!1395161 (is-Nil!72735 lt!2648734))))

(assert (=> d!2314866 (= (++!17480 lt!2648734 lt!2648738) lt!2648861)))

(declare-fun b!7561261 () Bool)

(assert (=> b!7561261 (= e!4502582 lt!2648738)))

(assert (= (and d!2314866 c!1395161) b!7561261))

(assert (= (and d!2314866 (not c!1395161)) b!7561262))

(assert (= (and d!2314866 res!3029695) b!7561263))

(assert (= (and b!7561263 res!3029694) b!7561264))

(declare-fun m!8124288 () Bool)

(assert (=> b!7561263 m!8124288))

(declare-fun m!8124290 () Bool)

(assert (=> b!7561263 m!8124290))

(declare-fun m!8124292 () Bool)

(assert (=> b!7561263 m!8124292))

(declare-fun m!8124294 () Bool)

(assert (=> b!7561262 m!8124294))

(declare-fun m!8124296 () Bool)

(assert (=> d!2314866 m!8124296))

(declare-fun m!8124298 () Bool)

(assert (=> d!2314866 m!8124298))

(declare-fun m!8124300 () Bool)

(assert (=> d!2314866 m!8124300))

(assert (=> b!7561010 d!2314866))

(declare-fun d!2314868 () Bool)

(assert (=> d!2314868 (= (++!17480 (++!17480 testedP!423 lt!2648734) lt!2648738) (++!17480 testedP!423 (++!17480 lt!2648734 lt!2648738)))))

(declare-fun lt!2648862 () Unit!166886)

(assert (=> d!2314868 (= lt!2648862 (choose!58483 testedP!423 lt!2648734 lt!2648738))))

(assert (=> d!2314868 (= (lemmaConcatAssociativity!3115 testedP!423 lt!2648734 lt!2648738) lt!2648862)))

(declare-fun bs!1940362 () Bool)

(assert (= bs!1940362 d!2314868))

(assert (=> bs!1940362 m!8124034))

(declare-fun m!8124302 () Bool)

(assert (=> bs!1940362 m!8124302))

(assert (=> bs!1940362 m!8124034))

(declare-fun m!8124304 () Bool)

(assert (=> bs!1940362 m!8124304))

(assert (=> bs!1940362 m!8124062))

(assert (=> bs!1940362 m!8124062))

(declare-fun m!8124306 () Bool)

(assert (=> bs!1940362 m!8124306))

(assert (=> b!7561010 d!2314868))

(declare-fun b!7561265 () Bool)

(declare-fun e!4502587 () Bool)

(declare-fun e!4502586 () Bool)

(assert (=> b!7561265 (= e!4502587 e!4502586)))

(declare-fun res!3029697 () Bool)

(assert (=> b!7561265 (= res!3029697 (not (nullable!8712 (reg!20305 baseR!101))))))

(assert (=> b!7561265 (=> (not res!3029697) (not e!4502586))))

(declare-fun b!7561266 () Bool)

(declare-fun call!693206 () Bool)

(assert (=> b!7561266 (= e!4502586 call!693206)))

(declare-fun b!7561267 () Bool)

(declare-fun e!4502584 () Bool)

(declare-fun call!693207 () Bool)

(assert (=> b!7561267 (= e!4502584 call!693207)))

(declare-fun b!7561268 () Bool)

(declare-fun e!4502583 () Bool)

(assert (=> b!7561268 (= e!4502587 e!4502583)))

(declare-fun c!1395162 () Bool)

(assert (=> b!7561268 (= c!1395162 (is-Union!19976 baseR!101))))

(declare-fun bm!693200 () Bool)

(declare-fun c!1395163 () Bool)

(assert (=> bm!693200 (= call!693206 (validRegex!10404 (ite c!1395163 (reg!20305 baseR!101) (ite c!1395162 (regTwo!40465 baseR!101) (regTwo!40464 baseR!101)))))))

(declare-fun b!7561269 () Bool)

(declare-fun res!3029700 () Bool)

(declare-fun e!4502585 () Bool)

(assert (=> b!7561269 (=> res!3029700 e!4502585)))

(assert (=> b!7561269 (= res!3029700 (not (is-Concat!28821 baseR!101)))))

(assert (=> b!7561269 (= e!4502583 e!4502585)))

(declare-fun b!7561270 () Bool)

(declare-fun e!4502589 () Bool)

(assert (=> b!7561270 (= e!4502589 e!4502587)))

(assert (=> b!7561270 (= c!1395163 (is-Star!19976 baseR!101))))

(declare-fun d!2314870 () Bool)

(declare-fun res!3029699 () Bool)

(assert (=> d!2314870 (=> res!3029699 e!4502589)))

(assert (=> d!2314870 (= res!3029699 (is-ElementMatch!19976 baseR!101))))

(assert (=> d!2314870 (= (validRegex!10404 baseR!101) e!4502589)))

(declare-fun bm!693201 () Bool)

(assert (=> bm!693201 (= call!693207 call!693206)))

(declare-fun b!7561271 () Bool)

(declare-fun e!4502588 () Bool)

(assert (=> b!7561271 (= e!4502588 call!693207)))

(declare-fun b!7561272 () Bool)

(assert (=> b!7561272 (= e!4502585 e!4502584)))

(declare-fun res!3029696 () Bool)

(assert (=> b!7561272 (=> (not res!3029696) (not e!4502584))))

(declare-fun call!693205 () Bool)

(assert (=> b!7561272 (= res!3029696 call!693205)))

(declare-fun b!7561273 () Bool)

(declare-fun res!3029698 () Bool)

(assert (=> b!7561273 (=> (not res!3029698) (not e!4502588))))

(assert (=> b!7561273 (= res!3029698 call!693205)))

(assert (=> b!7561273 (= e!4502583 e!4502588)))

(declare-fun bm!693202 () Bool)

(assert (=> bm!693202 (= call!693205 (validRegex!10404 (ite c!1395162 (regOne!40465 baseR!101) (regOne!40464 baseR!101))))))

(assert (= (and d!2314870 (not res!3029699)) b!7561270))

(assert (= (and b!7561270 c!1395163) b!7561265))

(assert (= (and b!7561270 (not c!1395163)) b!7561268))

(assert (= (and b!7561265 res!3029697) b!7561266))

(assert (= (and b!7561268 c!1395162) b!7561273))

(assert (= (and b!7561268 (not c!1395162)) b!7561269))

(assert (= (and b!7561273 res!3029698) b!7561271))

(assert (= (and b!7561269 (not res!3029700)) b!7561272))

(assert (= (and b!7561272 res!3029696) b!7561267))

(assert (= (or b!7561273 b!7561272) bm!693202))

(assert (= (or b!7561271 b!7561267) bm!693201))

(assert (= (or b!7561266 bm!693201) bm!693200))

(declare-fun m!8124308 () Bool)

(assert (=> b!7561265 m!8124308))

(declare-fun m!8124310 () Bool)

(assert (=> bm!693200 m!8124310))

(declare-fun m!8124312 () Bool)

(assert (=> bm!693202 m!8124312))

(assert (=> start!730558 d!2314870))

(declare-fun e!4502590 () Bool)

(declare-fun lt!2648863 () List!72859)

(declare-fun b!7561277 () Bool)

(assert (=> b!7561277 (= e!4502590 (or (not (= lt!2648750 Nil!72735)) (= lt!2648863 testedP!423)))))

(declare-fun b!7561276 () Bool)

(declare-fun res!3029701 () Bool)

(assert (=> b!7561276 (=> (not res!3029701) (not e!4502590))))

(assert (=> b!7561276 (= res!3029701 (= (size!42472 lt!2648863) (+ (size!42472 testedP!423) (size!42472 lt!2648750))))))

(declare-fun b!7561275 () Bool)

(declare-fun e!4502591 () List!72859)

(assert (=> b!7561275 (= e!4502591 (Cons!72735 (h!79183 testedP!423) (++!17480 (t!387586 testedP!423) lt!2648750)))))

(declare-fun d!2314872 () Bool)

(assert (=> d!2314872 e!4502590))

(declare-fun res!3029702 () Bool)

(assert (=> d!2314872 (=> (not res!3029702) (not e!4502590))))

(assert (=> d!2314872 (= res!3029702 (= (content!15399 lt!2648863) (set.union (content!15399 testedP!423) (content!15399 lt!2648750))))))

(assert (=> d!2314872 (= lt!2648863 e!4502591)))

(declare-fun c!1395164 () Bool)

(assert (=> d!2314872 (= c!1395164 (is-Nil!72735 testedP!423))))

(assert (=> d!2314872 (= (++!17480 testedP!423 lt!2648750) lt!2648863)))

(declare-fun b!7561274 () Bool)

(assert (=> b!7561274 (= e!4502591 lt!2648750)))

(assert (= (and d!2314872 c!1395164) b!7561274))

(assert (= (and d!2314872 (not c!1395164)) b!7561275))

(assert (= (and d!2314872 res!3029702) b!7561276))

(assert (= (and b!7561276 res!3029701) b!7561277))

(declare-fun m!8124314 () Bool)

(assert (=> b!7561276 m!8124314))

(assert (=> b!7561276 m!8124012))

(declare-fun m!8124316 () Bool)

(assert (=> b!7561276 m!8124316))

(declare-fun m!8124318 () Bool)

(assert (=> b!7561275 m!8124318))

(declare-fun m!8124320 () Bool)

(assert (=> d!2314872 m!8124320))

(assert (=> d!2314872 m!8124252))

(declare-fun m!8124322 () Bool)

(assert (=> d!2314872 m!8124322))

(assert (=> b!7560987 d!2314872))

(declare-fun lt!2648864 () List!72859)

(declare-fun e!4502592 () Bool)

(declare-fun b!7561281 () Bool)

(assert (=> b!7561281 (= e!4502592 (or (not (= lt!2648741 Nil!72735)) (= lt!2648864 lt!2648749)))))

(declare-fun b!7561280 () Bool)

(declare-fun res!3029703 () Bool)

(assert (=> b!7561280 (=> (not res!3029703) (not e!4502592))))

(assert (=> b!7561280 (= res!3029703 (= (size!42472 lt!2648864) (+ (size!42472 lt!2648749) (size!42472 lt!2648741))))))

(declare-fun b!7561279 () Bool)

(declare-fun e!4502593 () List!72859)

(assert (=> b!7561279 (= e!4502593 (Cons!72735 (h!79183 lt!2648749) (++!17480 (t!387586 lt!2648749) lt!2648741)))))

(declare-fun d!2314874 () Bool)

(assert (=> d!2314874 e!4502592))

(declare-fun res!3029704 () Bool)

(assert (=> d!2314874 (=> (not res!3029704) (not e!4502592))))

(assert (=> d!2314874 (= res!3029704 (= (content!15399 lt!2648864) (set.union (content!15399 lt!2648749) (content!15399 lt!2648741))))))

(assert (=> d!2314874 (= lt!2648864 e!4502593)))

(declare-fun c!1395165 () Bool)

(assert (=> d!2314874 (= c!1395165 (is-Nil!72735 lt!2648749))))

(assert (=> d!2314874 (= (++!17480 lt!2648749 lt!2648741) lt!2648864)))

(declare-fun b!7561278 () Bool)

(assert (=> b!7561278 (= e!4502593 lt!2648741)))

(assert (= (and d!2314874 c!1395165) b!7561278))

(assert (= (and d!2314874 (not c!1395165)) b!7561279))

(assert (= (and d!2314874 res!3029704) b!7561280))

(assert (= (and b!7561280 res!3029703) b!7561281))

(declare-fun m!8124324 () Bool)

(assert (=> b!7561280 m!8124324))

(declare-fun m!8124326 () Bool)

(assert (=> b!7561280 m!8124326))

(assert (=> b!7561280 m!8124260))

(declare-fun m!8124328 () Bool)

(assert (=> b!7561279 m!8124328))

(declare-fun m!8124330 () Bool)

(assert (=> d!2314874 m!8124330))

(declare-fun m!8124332 () Bool)

(assert (=> d!2314874 m!8124332))

(assert (=> d!2314874 m!8124268))

(assert (=> b!7561009 d!2314874))

(declare-fun e!4502594 () Bool)

(declare-fun b!7561285 () Bool)

(declare-fun lt!2648865 () List!72859)

(assert (=> b!7561285 (= e!4502594 (or (not (= lt!2648731 Nil!72735)) (= lt!2648865 testedP!423)))))

(declare-fun b!7561284 () Bool)

(declare-fun res!3029705 () Bool)

(assert (=> b!7561284 (=> (not res!3029705) (not e!4502594))))

(assert (=> b!7561284 (= res!3029705 (= (size!42472 lt!2648865) (+ (size!42472 testedP!423) (size!42472 lt!2648731))))))

(declare-fun b!7561283 () Bool)

(declare-fun e!4502595 () List!72859)

(assert (=> b!7561283 (= e!4502595 (Cons!72735 (h!79183 testedP!423) (++!17480 (t!387586 testedP!423) lt!2648731)))))

(declare-fun d!2314876 () Bool)

(assert (=> d!2314876 e!4502594))

(declare-fun res!3029706 () Bool)

(assert (=> d!2314876 (=> (not res!3029706) (not e!4502594))))

(assert (=> d!2314876 (= res!3029706 (= (content!15399 lt!2648865) (set.union (content!15399 testedP!423) (content!15399 lt!2648731))))))

(assert (=> d!2314876 (= lt!2648865 e!4502595)))

(declare-fun c!1395166 () Bool)

(assert (=> d!2314876 (= c!1395166 (is-Nil!72735 testedP!423))))

(assert (=> d!2314876 (= (++!17480 testedP!423 lt!2648731) lt!2648865)))

(declare-fun b!7561282 () Bool)

(assert (=> b!7561282 (= e!4502595 lt!2648731)))

(assert (= (and d!2314876 c!1395166) b!7561282))

(assert (= (and d!2314876 (not c!1395166)) b!7561283))

(assert (= (and d!2314876 res!3029706) b!7561284))

(assert (= (and b!7561284 res!3029705) b!7561285))

(declare-fun m!8124334 () Bool)

(assert (=> b!7561284 m!8124334))

(assert (=> b!7561284 m!8124012))

(assert (=> b!7561284 m!8124258))

(declare-fun m!8124336 () Bool)

(assert (=> b!7561283 m!8124336))

(declare-fun m!8124338 () Bool)

(assert (=> d!2314876 m!8124338))

(assert (=> d!2314876 m!8124252))

(assert (=> d!2314876 m!8124266))

(assert (=> b!7561009 d!2314876))

(declare-fun b!7561286 () Bool)

(declare-fun e!4502596 () Bool)

(declare-fun lt!2648866 () Bool)

(assert (=> b!7561286 (= e!4502596 (not lt!2648866))))

(declare-fun b!7561287 () Bool)

(declare-fun res!3029712 () Bool)

(declare-fun e!4502597 () Bool)

(assert (=> b!7561287 (=> res!3029712 e!4502597)))

(assert (=> b!7561287 (= res!3029712 (not (is-ElementMatch!19976 r!24333)))))

(assert (=> b!7561287 (= e!4502596 e!4502597)))

(declare-fun b!7561288 () Bool)

(declare-fun e!4502599 () Bool)

(assert (=> b!7561288 (= e!4502599 (nullable!8712 r!24333))))

(declare-fun b!7561289 () Bool)

(declare-fun e!4502601 () Bool)

(assert (=> b!7561289 (= e!4502601 (not (= (head!15554 lt!2648731) (c!1395125 r!24333))))))

(declare-fun d!2314878 () Bool)

(declare-fun e!4502598 () Bool)

(assert (=> d!2314878 e!4502598))

(declare-fun c!1395168 () Bool)

(assert (=> d!2314878 (= c!1395168 (is-EmptyExpr!19976 r!24333))))

(assert (=> d!2314878 (= lt!2648866 e!4502599)))

(declare-fun c!1395167 () Bool)

(assert (=> d!2314878 (= c!1395167 (isEmpty!41412 lt!2648731))))

(assert (=> d!2314878 (validRegex!10404 r!24333)))

(assert (=> d!2314878 (= (matchR!9578 r!24333 lt!2648731) lt!2648866)))

(declare-fun b!7561290 () Bool)

(declare-fun e!4502602 () Bool)

(assert (=> b!7561290 (= e!4502597 e!4502602)))

(declare-fun res!3029714 () Bool)

(assert (=> b!7561290 (=> (not res!3029714) (not e!4502602))))

(assert (=> b!7561290 (= res!3029714 (not lt!2648866))))

(declare-fun b!7561291 () Bool)

(declare-fun e!4502600 () Bool)

(assert (=> b!7561291 (= e!4502600 (= (head!15554 lt!2648731) (c!1395125 r!24333)))))

(declare-fun b!7561292 () Bool)

(assert (=> b!7561292 (= e!4502598 e!4502596)))

(declare-fun c!1395169 () Bool)

(assert (=> b!7561292 (= c!1395169 (is-EmptyLang!19976 r!24333))))

(declare-fun bm!693205 () Bool)

(declare-fun call!693210 () Bool)

(assert (=> bm!693205 (= call!693210 (isEmpty!41412 lt!2648731))))

(declare-fun b!7561293 () Bool)

(declare-fun res!3029708 () Bool)

(assert (=> b!7561293 (=> (not res!3029708) (not e!4502600))))

(assert (=> b!7561293 (= res!3029708 (isEmpty!41412 (tail!15094 lt!2648731)))))

(declare-fun b!7561294 () Bool)

(assert (=> b!7561294 (= e!4502602 e!4502601)))

(declare-fun res!3029711 () Bool)

(assert (=> b!7561294 (=> res!3029711 e!4502601)))

(assert (=> b!7561294 (= res!3029711 call!693210)))

(declare-fun b!7561295 () Bool)

(declare-fun res!3029710 () Bool)

(assert (=> b!7561295 (=> res!3029710 e!4502601)))

(assert (=> b!7561295 (= res!3029710 (not (isEmpty!41412 (tail!15094 lt!2648731))))))

(declare-fun b!7561296 () Bool)

(declare-fun res!3029707 () Bool)

(assert (=> b!7561296 (=> (not res!3029707) (not e!4502600))))

(assert (=> b!7561296 (= res!3029707 (not call!693210))))

(declare-fun b!7561297 () Bool)

(assert (=> b!7561297 (= e!4502598 (= lt!2648866 call!693210))))

(declare-fun b!7561298 () Bool)

(declare-fun res!3029713 () Bool)

(assert (=> b!7561298 (=> res!3029713 e!4502597)))

(assert (=> b!7561298 (= res!3029713 e!4502600)))

(declare-fun res!3029709 () Bool)

(assert (=> b!7561298 (=> (not res!3029709) (not e!4502600))))

(assert (=> b!7561298 (= res!3029709 lt!2648866)))

(declare-fun b!7561299 () Bool)

(assert (=> b!7561299 (= e!4502599 (matchR!9578 (derivativeStep!5754 r!24333 (head!15554 lt!2648731)) (tail!15094 lt!2648731)))))

(assert (= (and d!2314878 c!1395167) b!7561288))

(assert (= (and d!2314878 (not c!1395167)) b!7561299))

(assert (= (and d!2314878 c!1395168) b!7561297))

(assert (= (and d!2314878 (not c!1395168)) b!7561292))

(assert (= (and b!7561292 c!1395169) b!7561286))

(assert (= (and b!7561292 (not c!1395169)) b!7561287))

(assert (= (and b!7561287 (not res!3029712)) b!7561298))

(assert (= (and b!7561298 res!3029709) b!7561296))

(assert (= (and b!7561296 res!3029707) b!7561293))

(assert (= (and b!7561293 res!3029708) b!7561291))

(assert (= (and b!7561298 (not res!3029713)) b!7561290))

(assert (= (and b!7561290 res!3029714) b!7561294))

(assert (= (and b!7561294 (not res!3029711)) b!7561295))

(assert (= (and b!7561295 (not res!3029710)) b!7561289))

(assert (= (or b!7561297 b!7561296 b!7561294) bm!693205))

(declare-fun m!8124340 () Bool)

(assert (=> bm!693205 m!8124340))

(assert (=> b!7561295 m!8124056))

(assert (=> b!7561295 m!8124056))

(declare-fun m!8124342 () Bool)

(assert (=> b!7561295 m!8124342))

(assert (=> b!7561291 m!8124066))

(assert (=> d!2314878 m!8124340))

(assert (=> d!2314878 m!8124088))

(declare-fun m!8124344 () Bool)

(assert (=> b!7561288 m!8124344))

(assert (=> b!7561299 m!8124066))

(assert (=> b!7561299 m!8124066))

(declare-fun m!8124346 () Bool)

(assert (=> b!7561299 m!8124346))

(assert (=> b!7561299 m!8124056))

(assert (=> b!7561299 m!8124346))

(assert (=> b!7561299 m!8124056))

(declare-fun m!8124348 () Bool)

(assert (=> b!7561299 m!8124348))

(assert (=> b!7561289 m!8124066))

(assert (=> b!7561293 m!8124056))

(assert (=> b!7561293 m!8124056))

(assert (=> b!7561293 m!8124342))

(assert (=> b!7560980 d!2314878))

(declare-fun d!2314880 () Bool)

(declare-fun lt!2648869 () List!72859)

(assert (=> d!2314880 (= (++!17480 testedP!423 lt!2648869) knownP!30)))

(declare-fun e!4502605 () List!72859)

(assert (=> d!2314880 (= lt!2648869 e!4502605)))

(declare-fun c!1395172 () Bool)

(assert (=> d!2314880 (= c!1395172 (is-Cons!72735 testedP!423))))

(assert (=> d!2314880 (>= (size!42472 knownP!30) (size!42472 testedP!423))))

(assert (=> d!2314880 (= (getSuffix!3660 knownP!30 testedP!423) lt!2648869)))

(declare-fun b!7561304 () Bool)

(assert (=> b!7561304 (= e!4502605 (getSuffix!3660 (tail!15094 knownP!30) (t!387586 testedP!423)))))

(declare-fun b!7561305 () Bool)

(assert (=> b!7561305 (= e!4502605 knownP!30)))

(assert (= (and d!2314880 c!1395172) b!7561304))

(assert (= (and d!2314880 (not c!1395172)) b!7561305))

(declare-fun m!8124350 () Bool)

(assert (=> d!2314880 m!8124350))

(assert (=> d!2314880 m!8124014))

(assert (=> d!2314880 m!8124012))

(assert (=> b!7561304 m!8124198))

(assert (=> b!7561304 m!8124198))

(declare-fun m!8124352 () Bool)

(assert (=> b!7561304 m!8124352))

(assert (=> b!7560980 d!2314880))

(declare-fun d!2314882 () Bool)

(declare-fun e!4502606 () Bool)

(assert (=> d!2314882 e!4502606))

(declare-fun res!3029716 () Bool)

(assert (=> d!2314882 (=> res!3029716 e!4502606)))

(declare-fun lt!2648870 () Bool)

(assert (=> d!2314882 (= res!3029716 (not lt!2648870))))

(declare-fun e!4502608 () Bool)

(assert (=> d!2314882 (= lt!2648870 e!4502608)))

(declare-fun res!3029715 () Bool)

(assert (=> d!2314882 (=> res!3029715 e!4502608)))

(assert (=> d!2314882 (= res!3029715 (is-Nil!72735 testedP!423))))

(assert (=> d!2314882 (= (isPrefix!6182 testedP!423 knownP!30) lt!2648870)))

(declare-fun b!7561308 () Bool)

(declare-fun e!4502607 () Bool)

(assert (=> b!7561308 (= e!4502607 (isPrefix!6182 (tail!15094 testedP!423) (tail!15094 knownP!30)))))

(declare-fun b!7561306 () Bool)

(assert (=> b!7561306 (= e!4502608 e!4502607)))

(declare-fun res!3029718 () Bool)

(assert (=> b!7561306 (=> (not res!3029718) (not e!4502607))))

(assert (=> b!7561306 (= res!3029718 (not (is-Nil!72735 knownP!30)))))

(declare-fun b!7561307 () Bool)

(declare-fun res!3029717 () Bool)

(assert (=> b!7561307 (=> (not res!3029717) (not e!4502607))))

(assert (=> b!7561307 (= res!3029717 (= (head!15554 testedP!423) (head!15554 knownP!30)))))

(declare-fun b!7561309 () Bool)

(assert (=> b!7561309 (= e!4502606 (>= (size!42472 knownP!30) (size!42472 testedP!423)))))

(assert (= (and d!2314882 (not res!3029715)) b!7561306))

(assert (= (and b!7561306 res!3029718) b!7561307))

(assert (= (and b!7561307 res!3029717) b!7561308))

(assert (= (and d!2314882 (not res!3029716)) b!7561309))

(declare-fun m!8124354 () Bool)

(assert (=> b!7561308 m!8124354))

(assert (=> b!7561308 m!8124198))

(assert (=> b!7561308 m!8124354))

(assert (=> b!7561308 m!8124198))

(declare-fun m!8124356 () Bool)

(assert (=> b!7561308 m!8124356))

(declare-fun m!8124358 () Bool)

(assert (=> b!7561307 m!8124358))

(assert (=> b!7561307 m!8124204))

(assert (=> b!7561309 m!8124014))

(assert (=> b!7561309 m!8124012))

(assert (=> b!7560980 d!2314882))

(declare-fun d!2314884 () Bool)

(assert (=> d!2314884 (isPrefix!6182 testedP!423 knownP!30)))

(declare-fun lt!2648873 () Unit!166886)

(declare-fun choose!58484 (List!72859 List!72859 List!72859) Unit!166886)

(assert (=> d!2314884 (= lt!2648873 (choose!58484 knownP!30 testedP!423 input!7874))))

(assert (=> d!2314884 (isPrefix!6182 knownP!30 input!7874)))

(assert (=> d!2314884 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!930 knownP!30 testedP!423 input!7874) lt!2648873)))

(declare-fun bs!1940363 () Bool)

(assert (= bs!1940363 d!2314884))

(assert (=> bs!1940363 m!8124094))

(declare-fun m!8124360 () Bool)

(assert (=> bs!1940363 m!8124360))

(assert (=> bs!1940363 m!8124080))

(assert (=> b!7560980 d!2314884))

(declare-fun b!7561313 () Bool)

(declare-fun lt!2648874 () List!72859)

(declare-fun e!4502609 () Bool)

(assert (=> b!7561313 (= e!4502609 (or (not (= lt!2648738 Nil!72735)) (= lt!2648874 lt!2648751)))))

(declare-fun b!7561312 () Bool)

(declare-fun res!3029719 () Bool)

(assert (=> b!7561312 (=> (not res!3029719) (not e!4502609))))

(assert (=> b!7561312 (= res!3029719 (= (size!42472 lt!2648874) (+ (size!42472 lt!2648751) (size!42472 lt!2648738))))))

(declare-fun b!7561311 () Bool)

(declare-fun e!4502610 () List!72859)

(assert (=> b!7561311 (= e!4502610 (Cons!72735 (h!79183 lt!2648751) (++!17480 (t!387586 lt!2648751) lt!2648738)))))

(declare-fun d!2314886 () Bool)

(assert (=> d!2314886 e!4502609))

(declare-fun res!3029720 () Bool)

(assert (=> d!2314886 (=> (not res!3029720) (not e!4502609))))

(assert (=> d!2314886 (= res!3029720 (= (content!15399 lt!2648874) (set.union (content!15399 lt!2648751) (content!15399 lt!2648738))))))

(assert (=> d!2314886 (= lt!2648874 e!4502610)))

(declare-fun c!1395173 () Bool)

(assert (=> d!2314886 (= c!1395173 (is-Nil!72735 lt!2648751))))

(assert (=> d!2314886 (= (++!17480 lt!2648751 lt!2648738) lt!2648874)))

(declare-fun b!7561310 () Bool)

(assert (=> b!7561310 (= e!4502610 lt!2648738)))

(assert (= (and d!2314886 c!1395173) b!7561310))

(assert (= (and d!2314886 (not c!1395173)) b!7561311))

(assert (= (and d!2314886 res!3029720) b!7561312))

(assert (= (and b!7561312 res!3029719) b!7561313))

(declare-fun m!8124362 () Bool)

(assert (=> b!7561312 m!8124362))

(assert (=> b!7561312 m!8124078))

(assert (=> b!7561312 m!8124292))

(declare-fun m!8124364 () Bool)

(assert (=> b!7561311 m!8124364))

(declare-fun m!8124366 () Bool)

(assert (=> d!2314886 m!8124366))

(declare-fun m!8124368 () Bool)

(assert (=> d!2314886 m!8124368))

(assert (=> d!2314886 m!8124300))

(assert (=> b!7561002 d!2314886))

(declare-fun d!2314888 () Bool)

(declare-fun lt!2648876 () List!72859)

(assert (=> d!2314888 (= (++!17480 testedP!423 lt!2648876) input!7874)))

(declare-fun e!4502618 () List!72859)

(assert (=> d!2314888 (= lt!2648876 e!4502618)))

(declare-fun c!1395177 () Bool)

(assert (=> d!2314888 (= c!1395177 (is-Cons!72735 testedP!423))))

(assert (=> d!2314888 (>= (size!42472 input!7874) (size!42472 testedP!423))))

(assert (=> d!2314888 (= (getSuffix!3660 input!7874 testedP!423) lt!2648876)))

(declare-fun b!7561328 () Bool)

(assert (=> b!7561328 (= e!4502618 (getSuffix!3660 (tail!15094 input!7874) (t!387586 testedP!423)))))

(declare-fun b!7561329 () Bool)

(assert (=> b!7561329 (= e!4502618 input!7874)))

(assert (= (and d!2314888 c!1395177) b!7561328))

(assert (= (and d!2314888 (not c!1395177)) b!7561329))

(declare-fun m!8124370 () Bool)

(assert (=> d!2314888 m!8124370))

(assert (=> d!2314888 m!8124074))

(assert (=> d!2314888 m!8124012))

(assert (=> b!7561328 m!8124200))

(assert (=> b!7561328 m!8124200))

(declare-fun m!8124372 () Bool)

(assert (=> b!7561328 m!8124372))

(assert (=> b!7560981 d!2314888))

(declare-fun e!4502619 () Bool)

(declare-fun b!7561333 () Bool)

(declare-fun lt!2648877 () List!72859)

(assert (=> b!7561333 (= e!4502619 (or (not (= lt!2648741 Nil!72735)) (= lt!2648877 knownP!30)))))

(declare-fun b!7561332 () Bool)

(declare-fun res!3029729 () Bool)

(assert (=> b!7561332 (=> (not res!3029729) (not e!4502619))))

(assert (=> b!7561332 (= res!3029729 (= (size!42472 lt!2648877) (+ (size!42472 knownP!30) (size!42472 lt!2648741))))))

(declare-fun b!7561331 () Bool)

(declare-fun e!4502620 () List!72859)

(assert (=> b!7561331 (= e!4502620 (Cons!72735 (h!79183 knownP!30) (++!17480 (t!387586 knownP!30) lt!2648741)))))

(declare-fun d!2314890 () Bool)

(assert (=> d!2314890 e!4502619))

(declare-fun res!3029730 () Bool)

(assert (=> d!2314890 (=> (not res!3029730) (not e!4502619))))

(assert (=> d!2314890 (= res!3029730 (= (content!15399 lt!2648877) (set.union (content!15399 knownP!30) (content!15399 lt!2648741))))))

(assert (=> d!2314890 (= lt!2648877 e!4502620)))

(declare-fun c!1395178 () Bool)

(assert (=> d!2314890 (= c!1395178 (is-Nil!72735 knownP!30))))

(assert (=> d!2314890 (= (++!17480 knownP!30 lt!2648741) lt!2648877)))

(declare-fun b!7561330 () Bool)

(assert (=> b!7561330 (= e!4502620 lt!2648741)))

(assert (= (and d!2314890 c!1395178) b!7561330))

(assert (= (and d!2314890 (not c!1395178)) b!7561331))

(assert (= (and d!2314890 res!3029730) b!7561332))

(assert (= (and b!7561332 res!3029729) b!7561333))

(declare-fun m!8124374 () Bool)

(assert (=> b!7561332 m!8124374))

(assert (=> b!7561332 m!8124014))

(assert (=> b!7561332 m!8124260))

(declare-fun m!8124376 () Bool)

(assert (=> b!7561331 m!8124376))

(declare-fun m!8124378 () Bool)

(assert (=> d!2314890 m!8124378))

(declare-fun m!8124380 () Bool)

(assert (=> d!2314890 m!8124380))

(assert (=> d!2314890 m!8124268))

(assert (=> b!7560981 d!2314890))

(declare-fun d!2314892 () Bool)

(assert (=> d!2314892 (= (derivative!506 baseR!101 (++!17480 testedP!423 (Cons!72735 lt!2648736 Nil!72735))) (derivativeStep!5754 r!24333 lt!2648736))))

(declare-fun lt!2648880 () Unit!166886)

(declare-fun choose!58485 (Regex!19976 Regex!19976 List!72859 C!40278) Unit!166886)

(assert (=> d!2314892 (= lt!2648880 (choose!58485 baseR!101 r!24333 testedP!423 lt!2648736))))

(assert (=> d!2314892 (validRegex!10404 baseR!101)))

(assert (=> d!2314892 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!198 baseR!101 r!24333 testedP!423 lt!2648736) lt!2648880)))

(declare-fun bs!1940364 () Bool)

(assert (= bs!1940364 d!2314892))

(declare-fun m!8124396 () Bool)

(assert (=> bs!1940364 m!8124396))

(declare-fun m!8124398 () Bool)

(assert (=> bs!1940364 m!8124398))

(assert (=> bs!1940364 m!8124398))

(declare-fun m!8124400 () Bool)

(assert (=> bs!1940364 m!8124400))

(assert (=> bs!1940364 m!8124070))

(assert (=> bs!1940364 m!8124048))

(assert (=> b!7560981 d!2314892))

(declare-fun d!2314896 () Bool)

(declare-fun e!4502621 () Bool)

(assert (=> d!2314896 e!4502621))

(declare-fun res!3029732 () Bool)

(assert (=> d!2314896 (=> res!3029732 e!4502621)))

(declare-fun lt!2648881 () Bool)

(assert (=> d!2314896 (= res!3029732 (not lt!2648881))))

(declare-fun e!4502623 () Bool)

(assert (=> d!2314896 (= lt!2648881 e!4502623)))

(declare-fun res!3029731 () Bool)

(assert (=> d!2314896 (=> res!3029731 e!4502623)))

(assert (=> d!2314896 (= res!3029731 (is-Nil!72735 lt!2648751))))

(assert (=> d!2314896 (= (isPrefix!6182 lt!2648751 knownP!30) lt!2648881)))

(declare-fun b!7561336 () Bool)

(declare-fun e!4502622 () Bool)

(assert (=> b!7561336 (= e!4502622 (isPrefix!6182 (tail!15094 lt!2648751) (tail!15094 knownP!30)))))

(declare-fun b!7561334 () Bool)

(assert (=> b!7561334 (= e!4502623 e!4502622)))

(declare-fun res!3029734 () Bool)

(assert (=> b!7561334 (=> (not res!3029734) (not e!4502622))))

(assert (=> b!7561334 (= res!3029734 (not (is-Nil!72735 knownP!30)))))

(declare-fun b!7561335 () Bool)

(declare-fun res!3029733 () Bool)

(assert (=> b!7561335 (=> (not res!3029733) (not e!4502622))))

(assert (=> b!7561335 (= res!3029733 (= (head!15554 lt!2648751) (head!15554 knownP!30)))))

(declare-fun b!7561337 () Bool)

(assert (=> b!7561337 (= e!4502621 (>= (size!42472 knownP!30) (size!42472 lt!2648751)))))

(assert (= (and d!2314896 (not res!3029731)) b!7561334))

(assert (= (and b!7561334 res!3029734) b!7561335))

(assert (= (and b!7561335 res!3029733) b!7561336))

(assert (= (and d!2314896 (not res!3029732)) b!7561337))

(declare-fun m!8124402 () Bool)

(assert (=> b!7561336 m!8124402))

(assert (=> b!7561336 m!8124198))

(assert (=> b!7561336 m!8124402))

(assert (=> b!7561336 m!8124198))

(declare-fun m!8124404 () Bool)

(assert (=> b!7561336 m!8124404))

(declare-fun m!8124406 () Bool)

(assert (=> b!7561335 m!8124406))

(assert (=> b!7561335 m!8124204))

(assert (=> b!7561337 m!8124014))

(assert (=> b!7561337 m!8124078))

(assert (=> b!7560981 d!2314896))

(declare-fun d!2314898 () Bool)

(assert (=> d!2314898 (= (head!15554 lt!2648750) (h!79183 lt!2648750))))

(assert (=> b!7560981 d!2314898))

(declare-fun d!2314900 () Bool)

(assert (=> d!2314900 (isPrefix!6182 (++!17480 testedP!423 (Cons!72735 (head!15554 (getSuffix!3660 input!7874 testedP!423)) Nil!72735)) input!7874)))

(declare-fun lt!2648888 () Unit!166886)

(declare-fun choose!58487 (List!72859 List!72859) Unit!166886)

(assert (=> d!2314900 (= lt!2648888 (choose!58487 testedP!423 input!7874))))

(assert (=> d!2314900 (isPrefix!6182 testedP!423 input!7874)))

(assert (=> d!2314900 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1231 testedP!423 input!7874) lt!2648888)))

(declare-fun bs!1940366 () Bool)

(assert (= bs!1940366 d!2314900))

(declare-fun m!8124410 () Bool)

(assert (=> bs!1940366 m!8124410))

(assert (=> bs!1940366 m!8124072))

(declare-fun m!8124412 () Bool)

(assert (=> bs!1940366 m!8124412))

(assert (=> bs!1940366 m!8124046))

(assert (=> bs!1940366 m!8124410))

(declare-fun m!8124414 () Bool)

(assert (=> bs!1940366 m!8124414))

(assert (=> bs!1940366 m!8124046))

(declare-fun m!8124416 () Bool)

(assert (=> bs!1940366 m!8124416))

(assert (=> b!7560981 d!2314900))

(declare-fun d!2314904 () Bool)

(assert (=> d!2314904 (isPrefix!6182 lt!2648751 knownP!30)))

(declare-fun lt!2648889 () Unit!166886)

(assert (=> d!2314904 (= lt!2648889 (choose!58484 knownP!30 lt!2648751 input!7874))))

(assert (=> d!2314904 (isPrefix!6182 knownP!30 input!7874)))

(assert (=> d!2314904 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!930 knownP!30 lt!2648751 input!7874) lt!2648889)))

(declare-fun bs!1940367 () Bool)

(assert (= bs!1940367 d!2314904))

(assert (=> bs!1940367 m!8124044))

(declare-fun m!8124426 () Bool)

(assert (=> bs!1940367 m!8124426))

(assert (=> bs!1940367 m!8124080))

(assert (=> b!7560981 d!2314904))

(declare-fun d!2314906 () Bool)

(declare-fun lt!2648893 () Regex!19976)

(assert (=> d!2314906 (validRegex!10404 lt!2648893)))

(declare-fun e!4502630 () Regex!19976)

(assert (=> d!2314906 (= lt!2648893 e!4502630)))

(declare-fun c!1395184 () Bool)

(assert (=> d!2314906 (= c!1395184 (is-Cons!72735 lt!2648751))))

(assert (=> d!2314906 (validRegex!10404 baseR!101)))

(assert (=> d!2314906 (= (derivative!506 baseR!101 lt!2648751) lt!2648893)))

(declare-fun b!7561350 () Bool)

(assert (=> b!7561350 (= e!4502630 (derivative!506 (derivativeStep!5754 baseR!101 (h!79183 lt!2648751)) (t!387586 lt!2648751)))))

(declare-fun b!7561351 () Bool)

(assert (=> b!7561351 (= e!4502630 baseR!101)))

(assert (= (and d!2314906 c!1395184) b!7561350))

(assert (= (and d!2314906 (not c!1395184)) b!7561351))

(declare-fun m!8124444 () Bool)

(assert (=> d!2314906 m!8124444))

(assert (=> d!2314906 m!8124070))

(declare-fun m!8124446 () Bool)

(assert (=> b!7561350 m!8124446))

(assert (=> b!7561350 m!8124446))

(declare-fun m!8124448 () Bool)

(assert (=> b!7561350 m!8124448))

(assert (=> b!7560981 d!2314906))

(declare-fun d!2314912 () Bool)

(declare-fun lt!2648899 () Regex!19976)

(assert (=> d!2314912 (validRegex!10404 lt!2648899)))

(declare-fun e!4502657 () Regex!19976)

(assert (=> d!2314912 (= lt!2648899 e!4502657)))

(declare-fun c!1395201 () Bool)

(assert (=> d!2314912 (= c!1395201 (or (is-EmptyExpr!19976 r!24333) (is-EmptyLang!19976 r!24333)))))

(assert (=> d!2314912 (validRegex!10404 r!24333)))

(assert (=> d!2314912 (= (derivativeStep!5754 r!24333 lt!2648736) lt!2648899)))

(declare-fun call!693227 () Regex!19976)

(declare-fun c!1395200 () Bool)

(declare-fun bm!693219 () Bool)

(assert (=> bm!693219 (= call!693227 (derivativeStep!5754 (ite c!1395200 (regTwo!40465 r!24333) (regTwo!40464 r!24333)) lt!2648736))))

(declare-fun b!7561390 () Bool)

(declare-fun e!4502656 () Regex!19976)

(declare-fun call!693225 () Regex!19976)

(assert (=> b!7561390 (= e!4502656 (Concat!28821 call!693225 r!24333))))

(declare-fun b!7561391 () Bool)

(assert (=> b!7561391 (= c!1395200 (is-Union!19976 r!24333))))

(declare-fun e!4502655 () Regex!19976)

(declare-fun e!4502659 () Regex!19976)

(assert (=> b!7561391 (= e!4502655 e!4502659)))

(declare-fun bm!693220 () Bool)

(declare-fun call!693226 () Regex!19976)

(assert (=> bm!693220 (= call!693225 call!693226)))

(declare-fun b!7561392 () Bool)

(assert (=> b!7561392 (= e!4502657 e!4502655)))

(declare-fun c!1395199 () Bool)

(assert (=> b!7561392 (= c!1395199 (is-ElementMatch!19976 r!24333))))

(declare-fun call!693224 () Regex!19976)

(declare-fun e!4502658 () Regex!19976)

(declare-fun b!7561393 () Bool)

(assert (=> b!7561393 (= e!4502658 (Union!19976 (Concat!28821 call!693224 (regTwo!40464 r!24333)) call!693227))))

(declare-fun bm!693221 () Bool)

(declare-fun c!1395202 () Bool)

(assert (=> bm!693221 (= call!693226 (derivativeStep!5754 (ite c!1395200 (regOne!40465 r!24333) (ite c!1395202 (reg!20305 r!24333) (regOne!40464 r!24333))) lt!2648736))))

(declare-fun b!7561394 () Bool)

(assert (=> b!7561394 (= e!4502657 EmptyLang!19976)))

(declare-fun b!7561395 () Bool)

(assert (=> b!7561395 (= e!4502659 (Union!19976 call!693226 call!693227))))

(declare-fun bm!693222 () Bool)

(assert (=> bm!693222 (= call!693224 call!693225)))

(declare-fun b!7561396 () Bool)

(declare-fun c!1395203 () Bool)

(assert (=> b!7561396 (= c!1395203 (nullable!8712 (regOne!40464 r!24333)))))

(assert (=> b!7561396 (= e!4502656 e!4502658)))

(declare-fun b!7561397 () Bool)

(assert (=> b!7561397 (= e!4502658 (Union!19976 (Concat!28821 call!693224 (regTwo!40464 r!24333)) EmptyLang!19976))))

(declare-fun b!7561398 () Bool)

(assert (=> b!7561398 (= e!4502659 e!4502656)))

(assert (=> b!7561398 (= c!1395202 (is-Star!19976 r!24333))))

(declare-fun b!7561399 () Bool)

(assert (=> b!7561399 (= e!4502655 (ite (= lt!2648736 (c!1395125 r!24333)) EmptyExpr!19976 EmptyLang!19976))))

(assert (= (and d!2314912 c!1395201) b!7561394))

(assert (= (and d!2314912 (not c!1395201)) b!7561392))

(assert (= (and b!7561392 c!1395199) b!7561399))

(assert (= (and b!7561392 (not c!1395199)) b!7561391))

(assert (= (and b!7561391 c!1395200) b!7561395))

(assert (= (and b!7561391 (not c!1395200)) b!7561398))

(assert (= (and b!7561398 c!1395202) b!7561390))

(assert (= (and b!7561398 (not c!1395202)) b!7561396))

(assert (= (and b!7561396 c!1395203) b!7561393))

(assert (= (and b!7561396 (not c!1395203)) b!7561397))

(assert (= (or b!7561393 b!7561397) bm!693222))

(assert (= (or b!7561390 bm!693222) bm!693220))

(assert (= (or b!7561395 b!7561393) bm!693219))

(assert (= (or b!7561395 bm!693220) bm!693221))

(declare-fun m!8124456 () Bool)

(assert (=> d!2314912 m!8124456))

(assert (=> d!2314912 m!8124088))

(declare-fun m!8124458 () Bool)

(assert (=> bm!693219 m!8124458))

(declare-fun m!8124460 () Bool)

(assert (=> bm!693221 m!8124460))

(declare-fun m!8124462 () Bool)

(assert (=> b!7561396 m!8124462))

(assert (=> b!7560981 d!2314912))

(declare-fun d!2314916 () Bool)

(declare-fun lt!2648900 () List!72859)

(assert (=> d!2314916 (= (++!17480 lt!2648751 lt!2648900) knownP!30)))

(declare-fun e!4502660 () List!72859)

(assert (=> d!2314916 (= lt!2648900 e!4502660)))

(declare-fun c!1395204 () Bool)

(assert (=> d!2314916 (= c!1395204 (is-Cons!72735 lt!2648751))))

(assert (=> d!2314916 (>= (size!42472 knownP!30) (size!42472 lt!2648751))))

(assert (=> d!2314916 (= (getSuffix!3660 knownP!30 lt!2648751) lt!2648900)))

(declare-fun b!7561400 () Bool)

(assert (=> b!7561400 (= e!4502660 (getSuffix!3660 (tail!15094 knownP!30) (t!387586 lt!2648751)))))

(declare-fun b!7561401 () Bool)

(assert (=> b!7561401 (= e!4502660 knownP!30)))

(assert (= (and d!2314916 c!1395204) b!7561400))

(assert (= (and d!2314916 (not c!1395204)) b!7561401))

(declare-fun m!8124464 () Bool)

(assert (=> d!2314916 m!8124464))

(assert (=> d!2314916 m!8124014))

(assert (=> d!2314916 m!8124078))

(assert (=> b!7561400 m!8124198))

(assert (=> b!7561400 m!8124198))

(declare-fun m!8124466 () Bool)

(assert (=> b!7561400 m!8124466))

(assert (=> b!7560981 d!2314916))

(declare-fun d!2314918 () Bool)

(declare-fun lt!2648901 () List!72859)

(assert (=> d!2314918 (= (++!17480 knownP!30 lt!2648901) input!7874)))

(declare-fun e!4502661 () List!72859)

(assert (=> d!2314918 (= lt!2648901 e!4502661)))

(declare-fun c!1395205 () Bool)

(assert (=> d!2314918 (= c!1395205 (is-Cons!72735 knownP!30))))

(assert (=> d!2314918 (>= (size!42472 input!7874) (size!42472 knownP!30))))

(assert (=> d!2314918 (= (getSuffix!3660 input!7874 knownP!30) lt!2648901)))

(declare-fun b!7561402 () Bool)

(assert (=> b!7561402 (= e!4502661 (getSuffix!3660 (tail!15094 input!7874) (t!387586 knownP!30)))))

(declare-fun b!7561403 () Bool)

(assert (=> b!7561403 (= e!4502661 input!7874)))

(assert (= (and d!2314918 c!1395205) b!7561402))

(assert (= (and d!2314918 (not c!1395205)) b!7561403))

(declare-fun m!8124468 () Bool)

(assert (=> d!2314918 m!8124468))

(assert (=> d!2314918 m!8124074))

(assert (=> d!2314918 m!8124014))

(assert (=> b!7561402 m!8124200))

(assert (=> b!7561402 m!8124200))

(declare-fun m!8124470 () Bool)

(assert (=> b!7561402 m!8124470))

(assert (=> b!7560981 d!2314918))

(declare-fun b!7561407 () Bool)

(declare-fun lt!2648902 () List!72859)

(declare-fun e!4502662 () Bool)

(assert (=> b!7561407 (= e!4502662 (or (not (= lt!2648734 Nil!72735)) (= lt!2648902 testedP!423)))))

(declare-fun b!7561406 () Bool)

(declare-fun res!3029749 () Bool)

(assert (=> b!7561406 (=> (not res!3029749) (not e!4502662))))

(assert (=> b!7561406 (= res!3029749 (= (size!42472 lt!2648902) (+ (size!42472 testedP!423) (size!42472 lt!2648734))))))

(declare-fun b!7561405 () Bool)

(declare-fun e!4502663 () List!72859)

(assert (=> b!7561405 (= e!4502663 (Cons!72735 (h!79183 testedP!423) (++!17480 (t!387586 testedP!423) lt!2648734)))))

(declare-fun d!2314920 () Bool)

(assert (=> d!2314920 e!4502662))

(declare-fun res!3029750 () Bool)

(assert (=> d!2314920 (=> (not res!3029750) (not e!4502662))))

(assert (=> d!2314920 (= res!3029750 (= (content!15399 lt!2648902) (set.union (content!15399 testedP!423) (content!15399 lt!2648734))))))

(assert (=> d!2314920 (= lt!2648902 e!4502663)))

(declare-fun c!1395206 () Bool)

(assert (=> d!2314920 (= c!1395206 (is-Nil!72735 testedP!423))))

(assert (=> d!2314920 (= (++!17480 testedP!423 lt!2648734) lt!2648902)))

(declare-fun b!7561404 () Bool)

(assert (=> b!7561404 (= e!4502663 lt!2648734)))

(assert (= (and d!2314920 c!1395206) b!7561404))

(assert (= (and d!2314920 (not c!1395206)) b!7561405))

(assert (= (and d!2314920 res!3029750) b!7561406))

(assert (= (and b!7561406 res!3029749) b!7561407))

(declare-fun m!8124472 () Bool)

(assert (=> b!7561406 m!8124472))

(assert (=> b!7561406 m!8124012))

(assert (=> b!7561406 m!8124290))

(declare-fun m!8124474 () Bool)

(assert (=> b!7561405 m!8124474))

(declare-fun m!8124476 () Bool)

(assert (=> d!2314920 m!8124476))

(assert (=> d!2314920 m!8124252))

(assert (=> d!2314920 m!8124298))

(assert (=> b!7560981 d!2314920))

(declare-fun d!2314922 () Bool)

(declare-fun e!4502664 () Bool)

(assert (=> d!2314922 e!4502664))

(declare-fun res!3029752 () Bool)

(assert (=> d!2314922 (=> res!3029752 e!4502664)))

(declare-fun lt!2648903 () Bool)

(assert (=> d!2314922 (= res!3029752 (not lt!2648903))))

(declare-fun e!4502666 () Bool)

(assert (=> d!2314922 (= lt!2648903 e!4502666)))

(declare-fun res!3029751 () Bool)

(assert (=> d!2314922 (=> res!3029751 e!4502666)))

(assert (=> d!2314922 (= res!3029751 (is-Nil!72735 lt!2648751))))

(assert (=> d!2314922 (= (isPrefix!6182 lt!2648751 input!7874) lt!2648903)))

(declare-fun b!7561410 () Bool)

(declare-fun e!4502665 () Bool)

(assert (=> b!7561410 (= e!4502665 (isPrefix!6182 (tail!15094 lt!2648751) (tail!15094 input!7874)))))

(declare-fun b!7561408 () Bool)

(assert (=> b!7561408 (= e!4502666 e!4502665)))

(declare-fun res!3029754 () Bool)

(assert (=> b!7561408 (=> (not res!3029754) (not e!4502665))))

(assert (=> b!7561408 (= res!3029754 (not (is-Nil!72735 input!7874)))))

(declare-fun b!7561409 () Bool)

(declare-fun res!3029753 () Bool)

(assert (=> b!7561409 (=> (not res!3029753) (not e!4502665))))

(assert (=> b!7561409 (= res!3029753 (= (head!15554 lt!2648751) (head!15554 input!7874)))))

(declare-fun b!7561411 () Bool)

(assert (=> b!7561411 (= e!4502664 (>= (size!42472 input!7874) (size!42472 lt!2648751)))))

(assert (= (and d!2314922 (not res!3029751)) b!7561408))

(assert (= (and b!7561408 res!3029754) b!7561409))

(assert (= (and b!7561409 res!3029753) b!7561410))

(assert (= (and d!2314922 (not res!3029752)) b!7561411))

(assert (=> b!7561410 m!8124402))

(assert (=> b!7561410 m!8124200))

(assert (=> b!7561410 m!8124402))

(assert (=> b!7561410 m!8124200))

(declare-fun m!8124478 () Bool)

(assert (=> b!7561410 m!8124478))

(assert (=> b!7561409 m!8124406))

(assert (=> b!7561409 m!8124206))

(assert (=> b!7561411 m!8124074))

(assert (=> b!7561411 m!8124078))

(assert (=> b!7560981 d!2314922))

(declare-fun d!2314924 () Bool)

(declare-fun lt!2648904 () Int)

(assert (=> d!2314924 (>= lt!2648904 0)))

(declare-fun e!4502667 () Int)

(assert (=> d!2314924 (= lt!2648904 e!4502667)))

(declare-fun c!1395207 () Bool)

(assert (=> d!2314924 (= c!1395207 (is-Nil!72735 lt!2648751))))

(assert (=> d!2314924 (= (size!42472 lt!2648751) lt!2648904)))

(declare-fun b!7561412 () Bool)

(assert (=> b!7561412 (= e!4502667 0)))

(declare-fun b!7561413 () Bool)

(assert (=> b!7561413 (= e!4502667 (+ 1 (size!42472 (t!387586 lt!2648751))))))

(assert (= (and d!2314924 c!1395207) b!7561412))

(assert (= (and d!2314924 (not c!1395207)) b!7561413))

(declare-fun m!8124480 () Bool)

(assert (=> b!7561413 m!8124480))

(assert (=> b!7561000 d!2314924))

(declare-fun d!2314926 () Bool)

(declare-fun lostCauseFct!465 (Regex!19976) Bool)

(assert (=> d!2314926 (= (lostCause!1764 r!24333) (lostCauseFct!465 r!24333))))

(declare-fun bs!1940369 () Bool)

(assert (= bs!1940369 d!2314926))

(declare-fun m!8124482 () Bool)

(assert (=> bs!1940369 m!8124482))

(assert (=> b!7560990 d!2314926))

(declare-fun d!2314928 () Bool)

(declare-fun lt!2648905 () Regex!19976)

(assert (=> d!2314928 (validRegex!10404 lt!2648905)))

(declare-fun e!4502668 () Regex!19976)

(assert (=> d!2314928 (= lt!2648905 e!4502668)))

(declare-fun c!1395208 () Bool)

(assert (=> d!2314928 (= c!1395208 (is-Cons!72735 testedP!423))))

(assert (=> d!2314928 (validRegex!10404 baseR!101)))

(assert (=> d!2314928 (= (derivative!506 baseR!101 testedP!423) lt!2648905)))

(declare-fun b!7561414 () Bool)

(assert (=> b!7561414 (= e!4502668 (derivative!506 (derivativeStep!5754 baseR!101 (h!79183 testedP!423)) (t!387586 testedP!423)))))

(declare-fun b!7561415 () Bool)

(assert (=> b!7561415 (= e!4502668 baseR!101)))

(assert (= (and d!2314928 c!1395208) b!7561414))

(assert (= (and d!2314928 (not c!1395208)) b!7561415))

(declare-fun m!8124484 () Bool)

(assert (=> d!2314928 m!8124484))

(assert (=> d!2314928 m!8124070))

(declare-fun m!8124486 () Bool)

(assert (=> b!7561414 m!8124486))

(assert (=> b!7561414 m!8124486))

(declare-fun m!8124488 () Bool)

(assert (=> b!7561414 m!8124488))

(assert (=> b!7561004 d!2314928))

(declare-fun b!7561416 () Bool)

(declare-fun e!4502673 () Bool)

(declare-fun e!4502672 () Bool)

(assert (=> b!7561416 (= e!4502673 e!4502672)))

(declare-fun res!3029756 () Bool)

(assert (=> b!7561416 (= res!3029756 (not (nullable!8712 (reg!20305 lt!2648754))))))

(assert (=> b!7561416 (=> (not res!3029756) (not e!4502672))))

(declare-fun b!7561417 () Bool)

(declare-fun call!693231 () Bool)

(assert (=> b!7561417 (= e!4502672 call!693231)))

(declare-fun b!7561418 () Bool)

(declare-fun e!4502670 () Bool)

(declare-fun call!693232 () Bool)

(assert (=> b!7561418 (= e!4502670 call!693232)))

(declare-fun b!7561419 () Bool)

(declare-fun e!4502669 () Bool)

(assert (=> b!7561419 (= e!4502673 e!4502669)))

(declare-fun c!1395209 () Bool)

(assert (=> b!7561419 (= c!1395209 (is-Union!19976 lt!2648754))))

(declare-fun c!1395210 () Bool)

(declare-fun bm!693225 () Bool)

(assert (=> bm!693225 (= call!693231 (validRegex!10404 (ite c!1395210 (reg!20305 lt!2648754) (ite c!1395209 (regTwo!40465 lt!2648754) (regTwo!40464 lt!2648754)))))))

(declare-fun b!7561420 () Bool)

(declare-fun res!3029759 () Bool)

(declare-fun e!4502671 () Bool)

(assert (=> b!7561420 (=> res!3029759 e!4502671)))

(assert (=> b!7561420 (= res!3029759 (not (is-Concat!28821 lt!2648754)))))

(assert (=> b!7561420 (= e!4502669 e!4502671)))

(declare-fun b!7561421 () Bool)

(declare-fun e!4502675 () Bool)

(assert (=> b!7561421 (= e!4502675 e!4502673)))

(assert (=> b!7561421 (= c!1395210 (is-Star!19976 lt!2648754))))

(declare-fun d!2314930 () Bool)

(declare-fun res!3029758 () Bool)

(assert (=> d!2314930 (=> res!3029758 e!4502675)))

(assert (=> d!2314930 (= res!3029758 (is-ElementMatch!19976 lt!2648754))))

(assert (=> d!2314930 (= (validRegex!10404 lt!2648754) e!4502675)))

(declare-fun bm!693226 () Bool)

(assert (=> bm!693226 (= call!693232 call!693231)))

(declare-fun b!7561422 () Bool)

(declare-fun e!4502674 () Bool)

(assert (=> b!7561422 (= e!4502674 call!693232)))

(declare-fun b!7561423 () Bool)

(assert (=> b!7561423 (= e!4502671 e!4502670)))

(declare-fun res!3029755 () Bool)

(assert (=> b!7561423 (=> (not res!3029755) (not e!4502670))))

(declare-fun call!693230 () Bool)

(assert (=> b!7561423 (= res!3029755 call!693230)))

(declare-fun b!7561424 () Bool)

(declare-fun res!3029757 () Bool)

(assert (=> b!7561424 (=> (not res!3029757) (not e!4502674))))

(assert (=> b!7561424 (= res!3029757 call!693230)))

(assert (=> b!7561424 (= e!4502669 e!4502674)))

(declare-fun bm!693227 () Bool)

(assert (=> bm!693227 (= call!693230 (validRegex!10404 (ite c!1395209 (regOne!40465 lt!2648754) (regOne!40464 lt!2648754))))))

(assert (= (and d!2314930 (not res!3029758)) b!7561421))

(assert (= (and b!7561421 c!1395210) b!7561416))

(assert (= (and b!7561421 (not c!1395210)) b!7561419))

(assert (= (and b!7561416 res!3029756) b!7561417))

(assert (= (and b!7561419 c!1395209) b!7561424))

(assert (= (and b!7561419 (not c!1395209)) b!7561420))

(assert (= (and b!7561424 res!3029757) b!7561422))

(assert (= (and b!7561420 (not res!3029759)) b!7561423))

(assert (= (and b!7561423 res!3029755) b!7561418))

(assert (= (or b!7561424 b!7561423) bm!693227))

(assert (= (or b!7561422 b!7561418) bm!693226))

(assert (= (or b!7561417 bm!693226) bm!693225))

(declare-fun m!8124490 () Bool)

(assert (=> b!7561416 m!8124490))

(declare-fun m!8124492 () Bool)

(assert (=> bm!693225 m!8124492))

(declare-fun m!8124494 () Bool)

(assert (=> bm!693227 m!8124494))

(assert (=> b!7560983 d!2314930))

(declare-fun d!2314932 () Bool)

(declare-fun e!4502676 () Bool)

(assert (=> d!2314932 e!4502676))

(declare-fun res!3029761 () Bool)

(assert (=> d!2314932 (=> res!3029761 e!4502676)))

(declare-fun lt!2648906 () Bool)

(assert (=> d!2314932 (= res!3029761 (not lt!2648906))))

(declare-fun e!4502678 () Bool)

(assert (=> d!2314932 (= lt!2648906 e!4502678)))

(declare-fun res!3029760 () Bool)

(assert (=> d!2314932 (=> res!3029760 e!4502678)))

(assert (=> d!2314932 (= res!3029760 (is-Nil!72735 testedP!423))))

(assert (=> d!2314932 (= (isPrefix!6182 testedP!423 input!7874) lt!2648906)))

(declare-fun b!7561427 () Bool)

(declare-fun e!4502677 () Bool)

(assert (=> b!7561427 (= e!4502677 (isPrefix!6182 (tail!15094 testedP!423) (tail!15094 input!7874)))))

(declare-fun b!7561425 () Bool)

(assert (=> b!7561425 (= e!4502678 e!4502677)))

(declare-fun res!3029763 () Bool)

(assert (=> b!7561425 (=> (not res!3029763) (not e!4502677))))

(assert (=> b!7561425 (= res!3029763 (not (is-Nil!72735 input!7874)))))

(declare-fun b!7561426 () Bool)

(declare-fun res!3029762 () Bool)

(assert (=> b!7561426 (=> (not res!3029762) (not e!4502677))))

(assert (=> b!7561426 (= res!3029762 (= (head!15554 testedP!423) (head!15554 input!7874)))))

(declare-fun b!7561428 () Bool)

(assert (=> b!7561428 (= e!4502676 (>= (size!42472 input!7874) (size!42472 testedP!423)))))

(assert (= (and d!2314932 (not res!3029760)) b!7561425))

(assert (= (and b!7561425 res!3029763) b!7561426))

(assert (= (and b!7561426 res!3029762) b!7561427))

(assert (= (and d!2314932 (not res!3029761)) b!7561428))

(assert (=> b!7561427 m!8124354))

(assert (=> b!7561427 m!8124200))

(assert (=> b!7561427 m!8124354))

(assert (=> b!7561427 m!8124200))

(declare-fun m!8124496 () Bool)

(assert (=> b!7561427 m!8124496))

(assert (=> b!7561426 m!8124358))

(assert (=> b!7561426 m!8124206))

(assert (=> b!7561428 m!8124074))

(assert (=> b!7561428 m!8124012))

(assert (=> b!7560994 d!2314932))

(declare-fun d!2314934 () Bool)

(declare-fun lt!2648907 () Int)

(assert (=> d!2314934 (>= lt!2648907 0)))

(declare-fun e!4502679 () Int)

(assert (=> d!2314934 (= lt!2648907 e!4502679)))

(declare-fun c!1395211 () Bool)

(assert (=> d!2314934 (= c!1395211 (is-Nil!72735 input!7874))))

(assert (=> d!2314934 (= (size!42472 input!7874) lt!2648907)))

(declare-fun b!7561429 () Bool)

(assert (=> b!7561429 (= e!4502679 0)))

(declare-fun b!7561430 () Bool)

(assert (=> b!7561430 (= e!4502679 (+ 1 (size!42472 (t!387586 input!7874))))))

(assert (= (and d!2314934 c!1395211) b!7561429))

(assert (= (and d!2314934 (not c!1395211)) b!7561430))

(declare-fun m!8124498 () Bool)

(assert (=> b!7561430 m!8124498))

(assert (=> b!7561003 d!2314934))

(declare-fun e!4502689 () Bool)

(assert (=> b!7560991 (= tp!2201926 e!4502689)))

(declare-fun b!7561453 () Bool)

(declare-fun tp!2201989 () Bool)

(declare-fun tp!2201990 () Bool)

(assert (=> b!7561453 (= e!4502689 (and tp!2201989 tp!2201990))))

(declare-fun b!7561451 () Bool)

(declare-fun tp!2201988 () Bool)

(declare-fun tp!2201986 () Bool)

(assert (=> b!7561451 (= e!4502689 (and tp!2201988 tp!2201986))))

(declare-fun b!7561452 () Bool)

(declare-fun tp!2201987 () Bool)

(assert (=> b!7561452 (= e!4502689 tp!2201987)))

(declare-fun b!7561450 () Bool)

(assert (=> b!7561450 (= e!4502689 tp_is_empty!50307)))

(assert (= (and b!7560991 (is-ElementMatch!19976 (regOne!40464 baseR!101))) b!7561450))

(assert (= (and b!7560991 (is-Concat!28821 (regOne!40464 baseR!101))) b!7561451))

(assert (= (and b!7560991 (is-Star!19976 (regOne!40464 baseR!101))) b!7561452))

(assert (= (and b!7560991 (is-Union!19976 (regOne!40464 baseR!101))) b!7561453))

(declare-fun e!4502690 () Bool)

(assert (=> b!7560991 (= tp!2201936 e!4502690)))

(declare-fun b!7561457 () Bool)

(declare-fun tp!2201994 () Bool)

(declare-fun tp!2201995 () Bool)

(assert (=> b!7561457 (= e!4502690 (and tp!2201994 tp!2201995))))

(declare-fun b!7561455 () Bool)

(declare-fun tp!2201993 () Bool)

(declare-fun tp!2201991 () Bool)

(assert (=> b!7561455 (= e!4502690 (and tp!2201993 tp!2201991))))

(declare-fun b!7561456 () Bool)

(declare-fun tp!2201992 () Bool)

(assert (=> b!7561456 (= e!4502690 tp!2201992)))

(declare-fun b!7561454 () Bool)

(assert (=> b!7561454 (= e!4502690 tp_is_empty!50307)))

(assert (= (and b!7560991 (is-ElementMatch!19976 (regTwo!40464 baseR!101))) b!7561454))

(assert (= (and b!7560991 (is-Concat!28821 (regTwo!40464 baseR!101))) b!7561455))

(assert (= (and b!7560991 (is-Star!19976 (regTwo!40464 baseR!101))) b!7561456))

(assert (= (and b!7560991 (is-Union!19976 (regTwo!40464 baseR!101))) b!7561457))

(declare-fun b!7561462 () Bool)

(declare-fun e!4502693 () Bool)

(declare-fun tp!2201998 () Bool)

(assert (=> b!7561462 (= e!4502693 (and tp_is_empty!50307 tp!2201998))))

(assert (=> b!7560997 (= tp!2201929 e!4502693)))

(assert (= (and b!7560997 (is-Cons!72735 (t!387586 testedP!423))) b!7561462))

(declare-fun e!4502694 () Bool)

(assert (=> b!7560984 (= tp!2201931 e!4502694)))

(declare-fun b!7561466 () Bool)

(declare-fun tp!2202002 () Bool)

(declare-fun tp!2202003 () Bool)

(assert (=> b!7561466 (= e!4502694 (and tp!2202002 tp!2202003))))

(declare-fun b!7561464 () Bool)

(declare-fun tp!2202001 () Bool)

(declare-fun tp!2201999 () Bool)

(assert (=> b!7561464 (= e!4502694 (and tp!2202001 tp!2201999))))

(declare-fun b!7561465 () Bool)

(declare-fun tp!2202000 () Bool)

(assert (=> b!7561465 (= e!4502694 tp!2202000)))

(declare-fun b!7561463 () Bool)

(assert (=> b!7561463 (= e!4502694 tp_is_empty!50307)))

(assert (= (and b!7560984 (is-ElementMatch!19976 (reg!20305 r!24333))) b!7561463))

(assert (= (and b!7560984 (is-Concat!28821 (reg!20305 r!24333))) b!7561464))

(assert (= (and b!7560984 (is-Star!19976 (reg!20305 r!24333))) b!7561465))

(assert (= (and b!7560984 (is-Union!19976 (reg!20305 r!24333))) b!7561466))

(declare-fun b!7561471 () Bool)

(declare-fun e!4502697 () Bool)

(declare-fun tp!2202004 () Bool)

(assert (=> b!7561471 (= e!4502697 (and tp_is_empty!50307 tp!2202004))))

(assert (=> b!7561001 (= tp!2201933 e!4502697)))

(assert (= (and b!7561001 (is-Cons!72735 (t!387586 input!7874))) b!7561471))

(declare-fun e!4502698 () Bool)

(assert (=> b!7560999 (= tp!2201924 e!4502698)))

(declare-fun b!7561475 () Bool)

(declare-fun tp!2202008 () Bool)

(declare-fun tp!2202009 () Bool)

(assert (=> b!7561475 (= e!4502698 (and tp!2202008 tp!2202009))))

(declare-fun b!7561473 () Bool)

(declare-fun tp!2202007 () Bool)

(declare-fun tp!2202005 () Bool)

(assert (=> b!7561473 (= e!4502698 (and tp!2202007 tp!2202005))))

(declare-fun b!7561474 () Bool)

(declare-fun tp!2202006 () Bool)

(assert (=> b!7561474 (= e!4502698 tp!2202006)))

(declare-fun b!7561472 () Bool)

(assert (=> b!7561472 (= e!4502698 tp_is_empty!50307)))

(assert (= (and b!7560999 (is-ElementMatch!19976 (reg!20305 baseR!101))) b!7561472))

(assert (= (and b!7560999 (is-Concat!28821 (reg!20305 baseR!101))) b!7561473))

(assert (= (and b!7560999 (is-Star!19976 (reg!20305 baseR!101))) b!7561474))

(assert (= (and b!7560999 (is-Union!19976 (reg!20305 baseR!101))) b!7561475))

(declare-fun e!4502699 () Bool)

(assert (=> b!7561005 (= tp!2201925 e!4502699)))

(declare-fun b!7561479 () Bool)

(declare-fun tp!2202013 () Bool)

(declare-fun tp!2202014 () Bool)

(assert (=> b!7561479 (= e!4502699 (and tp!2202013 tp!2202014))))

(declare-fun b!7561477 () Bool)

(declare-fun tp!2202012 () Bool)

(declare-fun tp!2202010 () Bool)

(assert (=> b!7561477 (= e!4502699 (and tp!2202012 tp!2202010))))

(declare-fun b!7561478 () Bool)

(declare-fun tp!2202011 () Bool)

(assert (=> b!7561478 (= e!4502699 tp!2202011)))

(declare-fun b!7561476 () Bool)

(assert (=> b!7561476 (= e!4502699 tp_is_empty!50307)))

(assert (= (and b!7561005 (is-ElementMatch!19976 (regOne!40464 r!24333))) b!7561476))

(assert (= (and b!7561005 (is-Concat!28821 (regOne!40464 r!24333))) b!7561477))

(assert (= (and b!7561005 (is-Star!19976 (regOne!40464 r!24333))) b!7561478))

(assert (= (and b!7561005 (is-Union!19976 (regOne!40464 r!24333))) b!7561479))

(declare-fun e!4502700 () Bool)

(assert (=> b!7561005 (= tp!2201934 e!4502700)))

(declare-fun b!7561483 () Bool)

(declare-fun tp!2202018 () Bool)

(declare-fun tp!2202019 () Bool)

(assert (=> b!7561483 (= e!4502700 (and tp!2202018 tp!2202019))))

(declare-fun b!7561481 () Bool)

(declare-fun tp!2202017 () Bool)

(declare-fun tp!2202015 () Bool)

(assert (=> b!7561481 (= e!4502700 (and tp!2202017 tp!2202015))))

(declare-fun b!7561482 () Bool)

(declare-fun tp!2202016 () Bool)

(assert (=> b!7561482 (= e!4502700 tp!2202016)))

(declare-fun b!7561480 () Bool)

(assert (=> b!7561480 (= e!4502700 tp_is_empty!50307)))

(assert (= (and b!7561005 (is-ElementMatch!19976 (regTwo!40464 r!24333))) b!7561480))

(assert (= (and b!7561005 (is-Concat!28821 (regTwo!40464 r!24333))) b!7561481))

(assert (= (and b!7561005 (is-Star!19976 (regTwo!40464 r!24333))) b!7561482))

(assert (= (and b!7561005 (is-Union!19976 (regTwo!40464 r!24333))) b!7561483))

(declare-fun b!7561484 () Bool)

(declare-fun e!4502701 () Bool)

(declare-fun tp!2202020 () Bool)

(assert (=> b!7561484 (= e!4502701 (and tp_is_empty!50307 tp!2202020))))

(assert (=> b!7561008 (= tp!2201930 e!4502701)))

(assert (= (and b!7561008 (is-Cons!72735 (t!387586 knownP!30))) b!7561484))

(declare-fun e!4502702 () Bool)

(assert (=> b!7560992 (= tp!2201928 e!4502702)))

(declare-fun b!7561488 () Bool)

(declare-fun tp!2202024 () Bool)

(declare-fun tp!2202025 () Bool)

(assert (=> b!7561488 (= e!4502702 (and tp!2202024 tp!2202025))))

(declare-fun b!7561486 () Bool)

(declare-fun tp!2202023 () Bool)

(declare-fun tp!2202021 () Bool)

(assert (=> b!7561486 (= e!4502702 (and tp!2202023 tp!2202021))))

(declare-fun b!7561487 () Bool)

(declare-fun tp!2202022 () Bool)

(assert (=> b!7561487 (= e!4502702 tp!2202022)))

(declare-fun b!7561485 () Bool)

(assert (=> b!7561485 (= e!4502702 tp_is_empty!50307)))

(assert (= (and b!7560992 (is-ElementMatch!19976 (regOne!40465 r!24333))) b!7561485))

(assert (= (and b!7560992 (is-Concat!28821 (regOne!40465 r!24333))) b!7561486))

(assert (= (and b!7560992 (is-Star!19976 (regOne!40465 r!24333))) b!7561487))

(assert (= (and b!7560992 (is-Union!19976 (regOne!40465 r!24333))) b!7561488))

(declare-fun e!4502703 () Bool)

(assert (=> b!7560992 (= tp!2201935 e!4502703)))

(declare-fun b!7561492 () Bool)

(declare-fun tp!2202029 () Bool)

(declare-fun tp!2202030 () Bool)

(assert (=> b!7561492 (= e!4502703 (and tp!2202029 tp!2202030))))

(declare-fun b!7561490 () Bool)

(declare-fun tp!2202028 () Bool)

(declare-fun tp!2202026 () Bool)

(assert (=> b!7561490 (= e!4502703 (and tp!2202028 tp!2202026))))

(declare-fun b!7561491 () Bool)

(declare-fun tp!2202027 () Bool)

(assert (=> b!7561491 (= e!4502703 tp!2202027)))

(declare-fun b!7561489 () Bool)

(assert (=> b!7561489 (= e!4502703 tp_is_empty!50307)))

(assert (= (and b!7560992 (is-ElementMatch!19976 (regTwo!40465 r!24333))) b!7561489))

(assert (= (and b!7560992 (is-Concat!28821 (regTwo!40465 r!24333))) b!7561490))

(assert (= (and b!7560992 (is-Star!19976 (regTwo!40465 r!24333))) b!7561491))

(assert (= (and b!7560992 (is-Union!19976 (regTwo!40465 r!24333))) b!7561492))

(declare-fun e!4502706 () Bool)

(assert (=> b!7560982 (= tp!2201927 e!4502706)))

(declare-fun b!7561500 () Bool)

(declare-fun tp!2202034 () Bool)

(declare-fun tp!2202035 () Bool)

(assert (=> b!7561500 (= e!4502706 (and tp!2202034 tp!2202035))))

(declare-fun b!7561498 () Bool)

(declare-fun tp!2202033 () Bool)

(declare-fun tp!2202031 () Bool)

(assert (=> b!7561498 (= e!4502706 (and tp!2202033 tp!2202031))))

(declare-fun b!7561499 () Bool)

(declare-fun tp!2202032 () Bool)

(assert (=> b!7561499 (= e!4502706 tp!2202032)))

(declare-fun b!7561497 () Bool)

(assert (=> b!7561497 (= e!4502706 tp_is_empty!50307)))

(assert (= (and b!7560982 (is-ElementMatch!19976 (regOne!40465 baseR!101))) b!7561497))

(assert (= (and b!7560982 (is-Concat!28821 (regOne!40465 baseR!101))) b!7561498))

(assert (= (and b!7560982 (is-Star!19976 (regOne!40465 baseR!101))) b!7561499))

(assert (= (and b!7560982 (is-Union!19976 (regOne!40465 baseR!101))) b!7561500))

(declare-fun e!4502707 () Bool)

(assert (=> b!7560982 (= tp!2201932 e!4502707)))

(declare-fun b!7561504 () Bool)

(declare-fun tp!2202039 () Bool)

(declare-fun tp!2202040 () Bool)

(assert (=> b!7561504 (= e!4502707 (and tp!2202039 tp!2202040))))

(declare-fun b!7561502 () Bool)

(declare-fun tp!2202038 () Bool)

(declare-fun tp!2202036 () Bool)

(assert (=> b!7561502 (= e!4502707 (and tp!2202038 tp!2202036))))

(declare-fun b!7561503 () Bool)

(declare-fun tp!2202037 () Bool)

(assert (=> b!7561503 (= e!4502707 tp!2202037)))

(declare-fun b!7561501 () Bool)

(assert (=> b!7561501 (= e!4502707 tp_is_empty!50307)))

(assert (= (and b!7560982 (is-ElementMatch!19976 (regTwo!40465 baseR!101))) b!7561501))

(assert (= (and b!7560982 (is-Concat!28821 (regTwo!40465 baseR!101))) b!7561502))

(assert (= (and b!7560982 (is-Star!19976 (regTwo!40465 baseR!101))) b!7561503))

(assert (= (and b!7560982 (is-Union!19976 (regTwo!40465 baseR!101))) b!7561504))

(push 1)

(assert (not b!7561223))

(assert (not b!7561288))

(assert (not d!2314872))

(assert tp_is_empty!50307)

(assert (not b!7561490))

(assert (not b!7561481))

(assert (not b!7561416))

(assert (not b!7561337))

(assert (not b!7561299))

(assert (not b!7561312))

(assert (not b!7561140))

(assert (not b!7561309))

(assert (not b!7561262))

(assert (not b!7561482))

(assert (not d!2314856))

(assert (not b!7561464))

(assert (not d!2314890))

(assert (not d!2314846))

(assert (not b!7561283))

(assert (not b!7561227))

(assert (not b!7561328))

(assert (not b!7561406))

(assert (not bm!693221))

(assert (not b!7561452))

(assert (not b!7561279))

(assert (not b!7561503))

(assert (not b!7561350))

(assert (not b!7561308))

(assert (not b!7561276))

(assert (not b!7561265))

(assert (not d!2314920))

(assert (not b!7561396))

(assert (not b!7561499))

(assert (not b!7561457))

(assert (not b!7561475))

(assert (not d!2314888))

(assert (not b!7561208))

(assert (not b!7561259))

(assert (not d!2314906))

(assert (not b!7561498))

(assert (not b!7561284))

(assert (not b!7561293))

(assert (not b!7561206))

(assert (not bm!693225))

(assert (not b!7561289))

(assert (not b!7561311))

(assert (not d!2314876))

(assert (not b!7561160))

(assert (not b!7561426))

(assert (not d!2314904))

(assert (not b!7561410))

(assert (not b!7561331))

(assert (not d!2314880))

(assert (not b!7561202))

(assert (not b!7561402))

(assert (not b!7561466))

(assert (not b!7561486))

(assert (not b!7561456))

(assert (not b!7561263))

(assert (not d!2314874))

(assert (not b!7561474))

(assert (not d!2314900))

(assert (not b!7561484))

(assert (not b!7561405))

(assert (not b!7561126))

(assert (not b!7561222))

(assert (not b!7561491))

(assert (not b!7561226))

(assert (not b!7561500))

(assert (not b!7561414))

(assert (not b!7561400))

(assert (not d!2314860))

(assert (not b!7561335))

(assert (not b!7561275))

(assert (not b!7561427))

(assert (not b!7561473))

(assert (not b!7561142))

(assert (not bm!693194))

(assert (not b!7561409))

(assert (not d!2314858))

(assert (not b!7561465))

(assert (not d!2314866))

(assert (not b!7561413))

(assert (not d!2314850))

(assert (not b!7561477))

(assert (not d!2314864))

(assert (not d!2314862))

(assert (not b!7561487))

(assert (not d!2314928))

(assert (not b!7561428))

(assert (not b!7561336))

(assert (not bm!693199))

(assert (not b!7561280))

(assert (not b!7561488))

(assert (not b!7561502))

(assert (not b!7561161))

(assert (not d!2314926))

(assert (not b!7561411))

(assert (not bm!693202))

(assert (not bm!693219))

(assert (not d!2314884))

(assert (not bm!693196))

(assert (not b!7561295))

(assert (not b!7561430))

(assert (not bm!693200))

(assert (not b!7561451))

(assert (not b!7561258))

(assert (not b!7561483))

(assert (not d!2314912))

(assert (not b!7561162))

(assert (not d!2314916))

(assert (not d!2314868))

(assert (not b!7561492))

(assert (not b!7561307))

(assert (not b!7561453))

(assert (not b!7561212))

(assert (not b!7561291))

(assert (not b!7561332))

(assert (not bm!693205))

(assert (not b!7561462))

(assert (not b!7561478))

(assert (not d!2314878))

(assert (not b!7561471))

(assert (not b!7561201))

(assert (not b!7561455))

(assert (not b!7561504))

(assert (not d!2314918))

(assert (not b!7561204))

(assert (not d!2314892))

(assert (not b!7561479))

(assert (not d!2314886))

(assert (not b!7561304))

(assert (not bm!693227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

