; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!730742 () Bool)

(assert start!730742)

(declare-fun b!7564028 () Bool)

(declare-fun res!3030666 () Bool)

(declare-fun e!4503946 () Bool)

(assert (=> b!7564028 (=> res!3030666 e!4503946)))

(declare-datatypes ((C!40290 0))(
  ( (C!40291 (val!30585 Int)) )
))
(declare-datatypes ((List!72865 0))(
  ( (Nil!72741) (Cons!72741 (h!79189 C!40290) (t!387596 List!72865)) )
))
(declare-fun input!7874 () List!72865)

(declare-fun testedP!423 () List!72865)

(declare-fun lt!2649596 () List!72865)

(declare-fun ++!17486 (List!72865 List!72865) List!72865)

(assert (=> b!7564028 (= res!3030666 (not (= (++!17486 testedP!423 lt!2649596) input!7874)))))

(declare-fun b!7564029 () Bool)

(declare-fun res!3030677 () Bool)

(declare-fun e!4503959 () Bool)

(assert (=> b!7564029 (=> res!3030677 e!4503959)))

(declare-fun lt!2649604 () Int)

(declare-fun lt!2649601 () Int)

(assert (=> b!7564029 (= res!3030677 (= lt!2649604 lt!2649601))))

(declare-fun b!7564030 () Bool)

(declare-fun e!4503953 () Bool)

(declare-fun tp!2202926 () Bool)

(declare-fun tp!2202936 () Bool)

(assert (=> b!7564030 (= e!4503953 (and tp!2202926 tp!2202936))))

(declare-fun b!7564031 () Bool)

(declare-fun res!3030665 () Bool)

(declare-fun e!4503951 () Bool)

(assert (=> b!7564031 (=> res!3030665 e!4503951)))

(declare-datatypes ((Regex!19982 0))(
  ( (ElementMatch!19982 (c!1395677 C!40290)) (Concat!28827 (regOne!40476 Regex!19982) (regTwo!40476 Regex!19982)) (EmptyExpr!19982) (Star!19982 (reg!20311 Regex!19982)) (EmptyLang!19982) (Union!19982 (regOne!40477 Regex!19982) (regTwo!40477 Regex!19982)) )
))
(declare-fun lt!2649591 () Regex!19982)

(declare-fun validRegex!10410 (Regex!19982) Bool)

(assert (=> b!7564031 (= res!3030665 (not (validRegex!10410 lt!2649591)))))

(declare-fun b!7564032 () Bool)

(declare-fun e!4503950 () Bool)

(assert (=> b!7564032 (= e!4503950 e!4503946)))

(declare-fun res!3030681 () Bool)

(assert (=> b!7564032 (=> res!3030681 e!4503946)))

(declare-fun lt!2649593 () List!72865)

(assert (=> b!7564032 (= res!3030681 (not (= lt!2649593 input!7874)))))

(declare-fun lt!2649587 () List!72865)

(declare-fun lt!2649589 () List!72865)

(assert (=> b!7564032 (= lt!2649593 (++!17486 lt!2649587 lt!2649589))))

(declare-fun lt!2649585 () List!72865)

(assert (=> b!7564032 (= lt!2649587 (++!17486 testedP!423 lt!2649585))))

(declare-fun b!7564033 () Bool)

(declare-fun e!4503944 () Bool)

(declare-fun tp_is_empty!50319 () Bool)

(declare-fun tp!2202935 () Bool)

(assert (=> b!7564033 (= e!4503944 (and tp_is_empty!50319 tp!2202935))))

(declare-fun b!7564035 () Bool)

(declare-fun e!4503955 () Bool)

(declare-fun e!4503957 () Bool)

(assert (=> b!7564035 (= e!4503955 e!4503957)))

(declare-fun res!3030667 () Bool)

(assert (=> b!7564035 (=> res!3030667 e!4503957)))

(declare-fun lt!2649600 () C!40290)

(declare-fun lt!2649595 () List!72865)

(declare-fun $colon$colon!3410 (List!72865 C!40290) List!72865)

(assert (=> b!7564035 (= res!3030667 (not (= lt!2649585 ($colon$colon!3410 lt!2649595 lt!2649600))))))

(declare-fun tail!15100 (List!72865) List!72865)

(assert (=> b!7564035 (= lt!2649595 (tail!15100 lt!2649585))))

(declare-fun b!7564036 () Bool)

(declare-fun tp!2202924 () Bool)

(declare-fun tp!2202928 () Bool)

(assert (=> b!7564036 (= e!4503953 (and tp!2202924 tp!2202928))))

(declare-fun b!7564037 () Bool)

(declare-fun res!3030676 () Bool)

(assert (=> b!7564037 (=> res!3030676 e!4503959)))

(declare-fun baseR!101 () Regex!19982)

(declare-fun r!24333 () Regex!19982)

(declare-fun derivative!512 (Regex!19982 List!72865) Regex!19982)

(assert (=> b!7564037 (= res!3030676 (not (= (derivative!512 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7564038 () Bool)

(declare-fun e!4503956 () Bool)

(declare-fun tp!2202929 () Bool)

(declare-fun tp!2202934 () Bool)

(assert (=> b!7564038 (= e!4503956 (and tp!2202929 tp!2202934))))

(declare-fun b!7564039 () Bool)

(declare-fun e!4503954 () Bool)

(declare-fun tp!2202927 () Bool)

(assert (=> b!7564039 (= e!4503954 (and tp_is_empty!50319 tp!2202927))))

(declare-fun b!7564040 () Bool)

(declare-fun e!4503949 () Bool)

(assert (=> b!7564040 (= e!4503951 e!4503949)))

(declare-fun res!3030669 () Bool)

(assert (=> b!7564040 (=> res!3030669 e!4503949)))

(declare-fun lt!2649603 () Int)

(assert (=> b!7564040 (= res!3030669 (< lt!2649601 lt!2649603))))

(declare-fun lt!2649592 () List!72865)

(declare-fun size!42478 (List!72865) Int)

(assert (=> b!7564040 (= lt!2649603 (size!42478 lt!2649592))))

(declare-fun b!7564041 () Bool)

(declare-fun e!4503948 () Bool)

(declare-fun tp!2202932 () Bool)

(assert (=> b!7564041 (= e!4503948 (and tp_is_empty!50319 tp!2202932))))

(declare-fun b!7564042 () Bool)

(declare-fun e!4503947 () Bool)

(assert (=> b!7564042 (= e!4503947 (not e!4503959))))

(declare-fun res!3030683 () Bool)

(assert (=> b!7564042 (=> res!3030683 e!4503959)))

(declare-fun matchR!9584 (Regex!19982 List!72865) Bool)

(assert (=> b!7564042 (= res!3030683 (not (matchR!9584 r!24333 lt!2649585)))))

(declare-fun knownP!30 () List!72865)

(declare-fun getSuffix!3666 (List!72865 List!72865) List!72865)

(assert (=> b!7564042 (= lt!2649585 (getSuffix!3666 knownP!30 testedP!423))))

(declare-fun isPrefix!6188 (List!72865 List!72865) Bool)

(assert (=> b!7564042 (isPrefix!6188 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166898 0))(
  ( (Unit!166899) )
))
(declare-fun lt!2649588 () Unit!166898)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!936 (List!72865 List!72865 List!72865) Unit!166898)

(assert (=> b!7564042 (= lt!2649588 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!936 knownP!30 testedP!423 input!7874))))

(declare-fun b!7564043 () Bool)

(assert (=> b!7564043 (= e!4503953 tp_is_empty!50319)))

(declare-fun b!7564044 () Bool)

(declare-fun res!3030671 () Bool)

(assert (=> b!7564044 (=> res!3030671 e!4503959)))

(declare-fun lostCause!1770 (Regex!19982) Bool)

(assert (=> b!7564044 (= res!3030671 (lostCause!1770 r!24333))))

(declare-fun b!7564045 () Bool)

(assert (=> b!7564045 (= e!4503959 e!4503950)))

(declare-fun res!3030663 () Bool)

(assert (=> b!7564045 (=> res!3030663 e!4503950)))

(assert (=> b!7564045 (= res!3030663 (not (= (++!17486 knownP!30 lt!2649589) input!7874)))))

(assert (=> b!7564045 (= lt!2649589 (getSuffix!3666 input!7874 knownP!30))))

(declare-fun lt!2649608 () List!72865)

(assert (=> b!7564045 (= lt!2649608 (getSuffix!3666 knownP!30 lt!2649592))))

(assert (=> b!7564045 (isPrefix!6188 lt!2649592 knownP!30)))

(declare-fun lt!2649584 () Unit!166898)

(assert (=> b!7564045 (= lt!2649584 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!936 knownP!30 lt!2649592 input!7874))))

(declare-fun lt!2649583 () Regex!19982)

(assert (=> b!7564045 (= lt!2649583 lt!2649591)))

(declare-fun derivativeStep!5760 (Regex!19982 C!40290) Regex!19982)

(assert (=> b!7564045 (= lt!2649591 (derivativeStep!5760 r!24333 lt!2649600))))

(assert (=> b!7564045 (= lt!2649583 (derivative!512 baseR!101 lt!2649592))))

(declare-fun lt!2649598 () Unit!166898)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!204 (Regex!19982 Regex!19982 List!72865 C!40290) Unit!166898)

(assert (=> b!7564045 (= lt!2649598 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!204 baseR!101 r!24333 testedP!423 lt!2649600))))

(assert (=> b!7564045 (isPrefix!6188 lt!2649592 input!7874)))

(declare-fun lt!2649609 () Unit!166898)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1237 (List!72865 List!72865) Unit!166898)

(assert (=> b!7564045 (= lt!2649609 (lemmaAddHeadSuffixToPrefixStillPrefix!1237 testedP!423 input!7874))))

(declare-fun lt!2649594 () List!72865)

(assert (=> b!7564045 (= lt!2649592 (++!17486 testedP!423 lt!2649594))))

(assert (=> b!7564045 (= lt!2649594 (Cons!72741 lt!2649600 Nil!72741))))

(declare-fun head!15560 (List!72865) C!40290)

(assert (=> b!7564045 (= lt!2649600 (head!15560 lt!2649596))))

(assert (=> b!7564045 (= lt!2649596 (getSuffix!3666 input!7874 testedP!423))))

(declare-fun b!7564046 () Bool)

(assert (=> b!7564046 (= e!4503949 (< (- lt!2649601 lt!2649603) (- lt!2649601 lt!2649604)))))

(declare-fun b!7564047 () Bool)

(declare-fun e!4503958 () Bool)

(assert (=> b!7564047 (= e!4503958 e!4503955)))

(declare-fun res!3030662 () Bool)

(assert (=> b!7564047 (=> res!3030662 e!4503955)))

(assert (=> b!7564047 (= res!3030662 (not (= (head!15560 lt!2649585) lt!2649600)))))

(declare-fun lt!2649606 () List!72865)

(assert (=> b!7564047 (= lt!2649606 lt!2649596)))

(declare-fun lt!2649597 () Unit!166898)

(declare-fun lemmaSamePrefixThenSameSuffix!2888 (List!72865 List!72865 List!72865 List!72865 List!72865) Unit!166898)

(assert (=> b!7564047 (= lt!2649597 (lemmaSamePrefixThenSameSuffix!2888 testedP!423 lt!2649606 testedP!423 lt!2649596 input!7874))))

(declare-fun b!7564048 () Bool)

(declare-fun tp!2202925 () Bool)

(assert (=> b!7564048 (= e!4503953 tp!2202925)))

(declare-fun b!7564049 () Bool)

(declare-fun res!3030674 () Bool)

(declare-fun e!4503945 () Bool)

(assert (=> b!7564049 (=> (not res!3030674) (not e!4503945))))

(assert (=> b!7564049 (= res!3030674 (isPrefix!6188 testedP!423 input!7874))))

(declare-fun b!7564050 () Bool)

(declare-fun res!3030682 () Bool)

(assert (=> b!7564050 (=> (not res!3030682) (not e!4503947))))

(assert (=> b!7564050 (= res!3030682 (matchR!9584 baseR!101 knownP!30))))

(declare-fun b!7564051 () Bool)

(declare-fun tp!2202930 () Bool)

(assert (=> b!7564051 (= e!4503956 tp!2202930)))

(declare-fun b!7564052 () Bool)

(declare-fun e!4503952 () Bool)

(assert (=> b!7564052 (= e!4503952 e!4503951)))

(declare-fun res!3030673 () Bool)

(assert (=> b!7564052 (=> res!3030673 e!4503951)))

(assert (=> b!7564052 (= res!3030673 (not (= lt!2649595 lt!2649608)))))

(declare-fun lt!2649586 () List!72865)

(assert (=> b!7564052 (= lt!2649586 lt!2649585)))

(declare-fun lt!2649599 () Unit!166898)

(assert (=> b!7564052 (= lt!2649599 (lemmaSamePrefixThenSameSuffix!2888 testedP!423 lt!2649586 testedP!423 lt!2649585 knownP!30))))

(declare-fun lt!2649605 () List!72865)

(assert (=> b!7564052 (= lt!2649605 (++!17486 testedP!423 lt!2649586))))

(assert (=> b!7564052 (= lt!2649586 (++!17486 lt!2649594 lt!2649608))))

(declare-fun lt!2649590 () Unit!166898)

(declare-fun lemmaConcatAssociativity!3121 (List!72865 List!72865 List!72865) Unit!166898)

(assert (=> b!7564052 (= lt!2649590 (lemmaConcatAssociativity!3121 testedP!423 lt!2649594 lt!2649608))))

(declare-fun b!7564053 () Bool)

(declare-fun res!3030668 () Bool)

(assert (=> b!7564053 (=> res!3030668 e!4503959)))

(assert (=> b!7564053 (= res!3030668 (>= lt!2649604 (size!42478 input!7874)))))

(declare-fun b!7564054 () Bool)

(assert (=> b!7564054 (= e!4503956 tp_is_empty!50319)))

(declare-fun b!7564055 () Bool)

(declare-fun res!3030679 () Bool)

(assert (=> b!7564055 (=> res!3030679 e!4503949)))

(assert (=> b!7564055 (= res!3030679 (not (matchR!9584 lt!2649591 lt!2649608)))))

(declare-fun b!7564056 () Bool)

(assert (=> b!7564056 (= e!4503945 e!4503947)))

(declare-fun res!3030678 () Bool)

(assert (=> b!7564056 (=> (not res!3030678) (not e!4503947))))

(assert (=> b!7564056 (= res!3030678 (>= lt!2649601 lt!2649604))))

(assert (=> b!7564056 (= lt!2649604 (size!42478 testedP!423))))

(assert (=> b!7564056 (= lt!2649601 (size!42478 knownP!30))))

(declare-fun b!7564057 () Bool)

(declare-fun tp!2202933 () Bool)

(declare-fun tp!2202931 () Bool)

(assert (=> b!7564057 (= e!4503956 (and tp!2202933 tp!2202931))))

(declare-fun b!7564058 () Bool)

(declare-fun res!3030680 () Bool)

(assert (=> b!7564058 (=> (not res!3030680) (not e!4503945))))

(assert (=> b!7564058 (= res!3030680 (isPrefix!6188 knownP!30 input!7874))))

(declare-fun b!7564059 () Bool)

(declare-fun res!3030672 () Bool)

(assert (=> b!7564059 (=> res!3030672 e!4503957)))

(assert (=> b!7564059 (= res!3030672 (not (= lt!2649587 knownP!30)))))

(declare-fun b!7564034 () Bool)

(assert (=> b!7564034 (= e!4503957 e!4503952)))

(declare-fun res!3030664 () Bool)

(assert (=> b!7564034 (=> res!3030664 e!4503952)))

(assert (=> b!7564034 (= res!3030664 (not (= lt!2649605 knownP!30)))))

(assert (=> b!7564034 (= lt!2649605 (++!17486 lt!2649592 lt!2649608))))

(declare-fun res!3030661 () Bool)

(assert (=> start!730742 (=> (not res!3030661) (not e!4503945))))

(assert (=> start!730742 (= res!3030661 (validRegex!10410 baseR!101))))

(assert (=> start!730742 e!4503945))

(assert (=> start!730742 e!4503956))

(assert (=> start!730742 e!4503944))

(assert (=> start!730742 e!4503954))

(assert (=> start!730742 e!4503948))

(assert (=> start!730742 e!4503953))

(declare-fun b!7564060 () Bool)

(declare-fun res!3030670 () Bool)

(assert (=> b!7564060 (=> (not res!3030670) (not e!4503945))))

(assert (=> b!7564060 (= res!3030670 (validRegex!10410 r!24333))))

(declare-fun b!7564061 () Bool)

(assert (=> b!7564061 (= e!4503946 e!4503958)))

(declare-fun res!3030675 () Bool)

(assert (=> b!7564061 (=> res!3030675 e!4503958)))

(declare-fun lt!2649602 () List!72865)

(assert (=> b!7564061 (= res!3030675 (not (= lt!2649602 input!7874)))))

(assert (=> b!7564061 (= lt!2649593 lt!2649602)))

(assert (=> b!7564061 (= lt!2649602 (++!17486 testedP!423 lt!2649606))))

(assert (=> b!7564061 (= lt!2649606 (++!17486 lt!2649585 lt!2649589))))

(declare-fun lt!2649607 () Unit!166898)

(assert (=> b!7564061 (= lt!2649607 (lemmaConcatAssociativity!3121 testedP!423 lt!2649585 lt!2649589))))

(assert (= (and start!730742 res!3030661) b!7564060))

(assert (= (and b!7564060 res!3030670) b!7564049))

(assert (= (and b!7564049 res!3030674) b!7564058))

(assert (= (and b!7564058 res!3030680) b!7564056))

(assert (= (and b!7564056 res!3030678) b!7564050))

(assert (= (and b!7564050 res!3030682) b!7564042))

(assert (= (and b!7564042 (not res!3030683)) b!7564037))

(assert (= (and b!7564037 (not res!3030676)) b!7564044))

(assert (= (and b!7564044 (not res!3030671)) b!7564029))

(assert (= (and b!7564029 (not res!3030677)) b!7564053))

(assert (= (and b!7564053 (not res!3030668)) b!7564045))

(assert (= (and b!7564045 (not res!3030663)) b!7564032))

(assert (= (and b!7564032 (not res!3030681)) b!7564028))

(assert (= (and b!7564028 (not res!3030666)) b!7564061))

(assert (= (and b!7564061 (not res!3030675)) b!7564047))

(assert (= (and b!7564047 (not res!3030662)) b!7564035))

(assert (= (and b!7564035 (not res!3030667)) b!7564059))

(assert (= (and b!7564059 (not res!3030672)) b!7564034))

(assert (= (and b!7564034 (not res!3030664)) b!7564052))

(assert (= (and b!7564052 (not res!3030673)) b!7564031))

(assert (= (and b!7564031 (not res!3030665)) b!7564040))

(assert (= (and b!7564040 (not res!3030669)) b!7564055))

(assert (= (and b!7564055 (not res!3030679)) b!7564046))

(assert (= (and start!730742 (is-ElementMatch!19982 baseR!101)) b!7564054))

(assert (= (and start!730742 (is-Concat!28827 baseR!101)) b!7564038))

(assert (= (and start!730742 (is-Star!19982 baseR!101)) b!7564051))

(assert (= (and start!730742 (is-Union!19982 baseR!101)) b!7564057))

(assert (= (and start!730742 (is-Cons!72741 input!7874)) b!7564033))

(assert (= (and start!730742 (is-Cons!72741 knownP!30)) b!7564039))

(assert (= (and start!730742 (is-Cons!72741 testedP!423)) b!7564041))

(assert (= (and start!730742 (is-ElementMatch!19982 r!24333)) b!7564043))

(assert (= (and start!730742 (is-Concat!28827 r!24333)) b!7564030))

(assert (= (and start!730742 (is-Star!19982 r!24333)) b!7564048))

(assert (= (and start!730742 (is-Union!19982 r!24333)) b!7564036))

(declare-fun m!8126610 () Bool)

(assert (=> b!7564056 m!8126610))

(declare-fun m!8126612 () Bool)

(assert (=> b!7564056 m!8126612))

(declare-fun m!8126614 () Bool)

(assert (=> b!7564034 m!8126614))

(declare-fun m!8126616 () Bool)

(assert (=> b!7564049 m!8126616))

(declare-fun m!8126618 () Bool)

(assert (=> b!7564055 m!8126618))

(declare-fun m!8126620 () Bool)

(assert (=> b!7564037 m!8126620))

(declare-fun m!8126622 () Bool)

(assert (=> b!7564035 m!8126622))

(declare-fun m!8126624 () Bool)

(assert (=> b!7564035 m!8126624))

(declare-fun m!8126626 () Bool)

(assert (=> b!7564050 m!8126626))

(declare-fun m!8126628 () Bool)

(assert (=> b!7564052 m!8126628))

(declare-fun m!8126630 () Bool)

(assert (=> b!7564052 m!8126630))

(declare-fun m!8126632 () Bool)

(assert (=> b!7564052 m!8126632))

(declare-fun m!8126634 () Bool)

(assert (=> b!7564052 m!8126634))

(declare-fun m!8126636 () Bool)

(assert (=> b!7564040 m!8126636))

(declare-fun m!8126638 () Bool)

(assert (=> b!7564061 m!8126638))

(declare-fun m!8126640 () Bool)

(assert (=> b!7564061 m!8126640))

(declare-fun m!8126642 () Bool)

(assert (=> b!7564061 m!8126642))

(declare-fun m!8126644 () Bool)

(assert (=> b!7564060 m!8126644))

(declare-fun m!8126646 () Bool)

(assert (=> b!7564031 m!8126646))

(declare-fun m!8126648 () Bool)

(assert (=> b!7564042 m!8126648))

(declare-fun m!8126650 () Bool)

(assert (=> b!7564042 m!8126650))

(declare-fun m!8126652 () Bool)

(assert (=> b!7564042 m!8126652))

(declare-fun m!8126654 () Bool)

(assert (=> b!7564042 m!8126654))

(declare-fun m!8126656 () Bool)

(assert (=> b!7564044 m!8126656))

(declare-fun m!8126658 () Bool)

(assert (=> b!7564045 m!8126658))

(declare-fun m!8126660 () Bool)

(assert (=> b!7564045 m!8126660))

(declare-fun m!8126662 () Bool)

(assert (=> b!7564045 m!8126662))

(declare-fun m!8126664 () Bool)

(assert (=> b!7564045 m!8126664))

(declare-fun m!8126666 () Bool)

(assert (=> b!7564045 m!8126666))

(declare-fun m!8126668 () Bool)

(assert (=> b!7564045 m!8126668))

(declare-fun m!8126670 () Bool)

(assert (=> b!7564045 m!8126670))

(declare-fun m!8126672 () Bool)

(assert (=> b!7564045 m!8126672))

(declare-fun m!8126674 () Bool)

(assert (=> b!7564045 m!8126674))

(declare-fun m!8126676 () Bool)

(assert (=> b!7564045 m!8126676))

(declare-fun m!8126678 () Bool)

(assert (=> b!7564045 m!8126678))

(declare-fun m!8126680 () Bool)

(assert (=> b!7564045 m!8126680))

(declare-fun m!8126682 () Bool)

(assert (=> b!7564045 m!8126682))

(declare-fun m!8126684 () Bool)

(assert (=> b!7564047 m!8126684))

(declare-fun m!8126686 () Bool)

(assert (=> b!7564047 m!8126686))

(declare-fun m!8126688 () Bool)

(assert (=> b!7564032 m!8126688))

(declare-fun m!8126690 () Bool)

(assert (=> b!7564032 m!8126690))

(declare-fun m!8126692 () Bool)

(assert (=> b!7564028 m!8126692))

(declare-fun m!8126694 () Bool)

(assert (=> b!7564058 m!8126694))

(declare-fun m!8126696 () Bool)

(assert (=> b!7564053 m!8126696))

(declare-fun m!8126698 () Bool)

(assert (=> start!730742 m!8126698))

(push 1)

(assert (not b!7564041))

(assert (not b!7564060))

(assert (not b!7564051))

(assert (not b!7564057))

(assert (not b!7564061))

(assert (not b!7564040))

(assert (not b!7564032))

(assert (not b!7564047))

(assert (not b!7564037))

(assert (not b!7564036))

(assert (not start!730742))

(assert (not b!7564042))

(assert (not b!7564045))

(assert (not b!7564058))

(assert (not b!7564034))

(assert (not b!7564053))

(assert tp_is_empty!50319)

(assert (not b!7564028))

(assert (not b!7564052))

(assert (not b!7564056))

(assert (not b!7564038))

(assert (not b!7564035))

(assert (not b!7564055))

(assert (not b!7564033))

(assert (not b!7564048))

(assert (not b!7564049))

(assert (not b!7564030))

(assert (not b!7564031))

(assert (not b!7564039))

(assert (not b!7564050))

(assert (not b!7564044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7564182 () Bool)

(declare-fun e!4504024 () Bool)

(declare-fun call!693453 () Bool)

(assert (=> b!7564182 (= e!4504024 call!693453)))

(declare-fun b!7564183 () Bool)

(declare-fun res!3030765 () Bool)

(declare-fun e!4504025 () Bool)

(assert (=> b!7564183 (=> (not res!3030765) (not e!4504025))))

(declare-fun call!693454 () Bool)

(assert (=> b!7564183 (= res!3030765 call!693454)))

(declare-fun e!4504027 () Bool)

(assert (=> b!7564183 (= e!4504027 e!4504025)))

(declare-fun c!1395683 () Bool)

(declare-fun c!1395684 () Bool)

(declare-fun bm!693448 () Bool)

(assert (=> bm!693448 (= call!693453 (validRegex!10410 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))))))

(declare-fun b!7564184 () Bool)

(declare-fun e!4504028 () Bool)

(declare-fun e!4504022 () Bool)

(assert (=> b!7564184 (= e!4504028 e!4504022)))

(assert (=> b!7564184 (= c!1395684 (is-Star!19982 lt!2649591))))

(declare-fun b!7564185 () Bool)

(assert (=> b!7564185 (= e!4504022 e!4504027)))

(assert (=> b!7564185 (= c!1395683 (is-Union!19982 lt!2649591))))

(declare-fun bm!693449 () Bool)

(declare-fun call!693455 () Bool)

(assert (=> bm!693449 (= call!693455 call!693453)))

(declare-fun bm!693450 () Bool)

(assert (=> bm!693450 (= call!693454 (validRegex!10410 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))))))

(declare-fun b!7564186 () Bool)

(assert (=> b!7564186 (= e!4504025 call!693455)))

(declare-fun b!7564187 () Bool)

(declare-fun e!4504023 () Bool)

(assert (=> b!7564187 (= e!4504023 call!693455)))

(declare-fun d!2315703 () Bool)

(declare-fun res!3030764 () Bool)

(assert (=> d!2315703 (=> res!3030764 e!4504028)))

(assert (=> d!2315703 (= res!3030764 (is-ElementMatch!19982 lt!2649591))))

(assert (=> d!2315703 (= (validRegex!10410 lt!2649591) e!4504028)))

(declare-fun b!7564188 () Bool)

(assert (=> b!7564188 (= e!4504022 e!4504024)))

(declare-fun res!3030767 () Bool)

(declare-fun nullable!8716 (Regex!19982) Bool)

(assert (=> b!7564188 (= res!3030767 (not (nullable!8716 (reg!20311 lt!2649591))))))

(assert (=> b!7564188 (=> (not res!3030767) (not e!4504024))))

(declare-fun b!7564189 () Bool)

(declare-fun res!3030766 () Bool)

(declare-fun e!4504026 () Bool)

(assert (=> b!7564189 (=> res!3030766 e!4504026)))

(assert (=> b!7564189 (= res!3030766 (not (is-Concat!28827 lt!2649591)))))

(assert (=> b!7564189 (= e!4504027 e!4504026)))

(declare-fun b!7564190 () Bool)

(assert (=> b!7564190 (= e!4504026 e!4504023)))

(declare-fun res!3030763 () Bool)

(assert (=> b!7564190 (=> (not res!3030763) (not e!4504023))))

(assert (=> b!7564190 (= res!3030763 call!693454)))

(assert (= (and d!2315703 (not res!3030764)) b!7564184))

(assert (= (and b!7564184 c!1395684) b!7564188))

(assert (= (and b!7564184 (not c!1395684)) b!7564185))

(assert (= (and b!7564188 res!3030767) b!7564182))

(assert (= (and b!7564185 c!1395683) b!7564183))

(assert (= (and b!7564185 (not c!1395683)) b!7564189))

(assert (= (and b!7564183 res!3030765) b!7564186))

(assert (= (and b!7564189 (not res!3030766)) b!7564190))

(assert (= (and b!7564190 res!3030763) b!7564187))

(assert (= (or b!7564183 b!7564190) bm!693450))

(assert (= (or b!7564186 b!7564187) bm!693449))

(assert (= (or b!7564182 bm!693449) bm!693448))

(declare-fun m!8126790 () Bool)

(assert (=> bm!693448 m!8126790))

(declare-fun m!8126792 () Bool)

(assert (=> bm!693450 m!8126792))

(declare-fun m!8126794 () Bool)

(assert (=> b!7564188 m!8126794))

(assert (=> b!7564031 d!2315703))

(declare-fun b!7564223 () Bool)

(declare-fun e!4504051 () Bool)

(declare-fun e!4504046 () Bool)

(assert (=> b!7564223 (= e!4504051 e!4504046)))

(declare-fun res!3030789 () Bool)

(assert (=> b!7564223 (=> res!3030789 e!4504046)))

(declare-fun call!693458 () Bool)

(assert (=> b!7564223 (= res!3030789 call!693458)))

(declare-fun b!7564225 () Bool)

(declare-fun e!4504048 () Bool)

(declare-fun lt!2649695 () Bool)

(assert (=> b!7564225 (= e!4504048 (not lt!2649695))))

(declare-fun b!7564226 () Bool)

(assert (=> b!7564226 (= e!4504046 (not (= (head!15560 lt!2649585) (c!1395677 r!24333))))))

(declare-fun b!7564227 () Bool)

(declare-fun e!4504050 () Bool)

(assert (=> b!7564227 (= e!4504050 (= lt!2649695 call!693458))))

(declare-fun bm!693453 () Bool)

(declare-fun isEmpty!41418 (List!72865) Bool)

(assert (=> bm!693453 (= call!693458 (isEmpty!41418 lt!2649585))))

(declare-fun b!7564228 () Bool)

(declare-fun res!3030787 () Bool)

(declare-fun e!4504049 () Bool)

(assert (=> b!7564228 (=> (not res!3030787) (not e!4504049))))

(assert (=> b!7564228 (= res!3030787 (isEmpty!41418 (tail!15100 lt!2649585)))))

(declare-fun b!7564229 () Bool)

(assert (=> b!7564229 (= e!4504050 e!4504048)))

(declare-fun c!1395694 () Bool)

(assert (=> b!7564229 (= c!1395694 (is-EmptyLang!19982 r!24333))))

(declare-fun b!7564230 () Bool)

(assert (=> b!7564230 (= e!4504049 (= (head!15560 lt!2649585) (c!1395677 r!24333)))))

(declare-fun b!7564231 () Bool)

(declare-fun res!3030791 () Bool)

(declare-fun e!4504045 () Bool)

(assert (=> b!7564231 (=> res!3030791 e!4504045)))

(assert (=> b!7564231 (= res!3030791 (not (is-ElementMatch!19982 r!24333)))))

(assert (=> b!7564231 (= e!4504048 e!4504045)))

(declare-fun b!7564232 () Bool)

(declare-fun res!3030786 () Bool)

(assert (=> b!7564232 (=> res!3030786 e!4504046)))

(assert (=> b!7564232 (= res!3030786 (not (isEmpty!41418 (tail!15100 lt!2649585))))))

(declare-fun d!2315705 () Bool)

(assert (=> d!2315705 e!4504050))

(declare-fun c!1395695 () Bool)

(assert (=> d!2315705 (= c!1395695 (is-EmptyExpr!19982 r!24333))))

(declare-fun e!4504047 () Bool)

(assert (=> d!2315705 (= lt!2649695 e!4504047)))

(declare-fun c!1395693 () Bool)

(assert (=> d!2315705 (= c!1395693 (isEmpty!41418 lt!2649585))))

(assert (=> d!2315705 (validRegex!10410 r!24333)))

(assert (=> d!2315705 (= (matchR!9584 r!24333 lt!2649585) lt!2649695)))

(declare-fun b!7564224 () Bool)

(declare-fun res!3030784 () Bool)

(assert (=> b!7564224 (=> res!3030784 e!4504045)))

(assert (=> b!7564224 (= res!3030784 e!4504049)))

(declare-fun res!3030790 () Bool)

(assert (=> b!7564224 (=> (not res!3030790) (not e!4504049))))

(assert (=> b!7564224 (= res!3030790 lt!2649695)))

(declare-fun b!7564233 () Bool)

(assert (=> b!7564233 (= e!4504045 e!4504051)))

(declare-fun res!3030788 () Bool)

(assert (=> b!7564233 (=> (not res!3030788) (not e!4504051))))

(assert (=> b!7564233 (= res!3030788 (not lt!2649695))))

(declare-fun b!7564234 () Bool)

(assert (=> b!7564234 (= e!4504047 (nullable!8716 r!24333))))

(declare-fun b!7564235 () Bool)

(declare-fun res!3030785 () Bool)

(assert (=> b!7564235 (=> (not res!3030785) (not e!4504049))))

(assert (=> b!7564235 (= res!3030785 (not call!693458))))

(declare-fun b!7564236 () Bool)

(assert (=> b!7564236 (= e!4504047 (matchR!9584 (derivativeStep!5760 r!24333 (head!15560 lt!2649585)) (tail!15100 lt!2649585)))))

(assert (= (and d!2315705 c!1395693) b!7564234))

(assert (= (and d!2315705 (not c!1395693)) b!7564236))

(assert (= (and d!2315705 c!1395695) b!7564227))

(assert (= (and d!2315705 (not c!1395695)) b!7564229))

(assert (= (and b!7564229 c!1395694) b!7564225))

(assert (= (and b!7564229 (not c!1395694)) b!7564231))

(assert (= (and b!7564231 (not res!3030791)) b!7564224))

(assert (= (and b!7564224 res!3030790) b!7564235))

(assert (= (and b!7564235 res!3030785) b!7564228))

(assert (= (and b!7564228 res!3030787) b!7564230))

(assert (= (and b!7564224 (not res!3030784)) b!7564233))

(assert (= (and b!7564233 res!3030788) b!7564223))

(assert (= (and b!7564223 (not res!3030789)) b!7564232))

(assert (= (and b!7564232 (not res!3030786)) b!7564226))

(assert (= (or b!7564227 b!7564223 b!7564235) bm!693453))

(declare-fun m!8126796 () Bool)

(assert (=> d!2315705 m!8126796))

(assert (=> d!2315705 m!8126644))

(assert (=> b!7564228 m!8126624))

(assert (=> b!7564228 m!8126624))

(declare-fun m!8126798 () Bool)

(assert (=> b!7564228 m!8126798))

(declare-fun m!8126800 () Bool)

(assert (=> b!7564234 m!8126800))

(assert (=> b!7564236 m!8126684))

(assert (=> b!7564236 m!8126684))

(declare-fun m!8126802 () Bool)

(assert (=> b!7564236 m!8126802))

(assert (=> b!7564236 m!8126624))

(assert (=> b!7564236 m!8126802))

(assert (=> b!7564236 m!8126624))

(declare-fun m!8126804 () Bool)

(assert (=> b!7564236 m!8126804))

(assert (=> bm!693453 m!8126796))

(assert (=> b!7564232 m!8126624))

(assert (=> b!7564232 m!8126624))

(assert (=> b!7564232 m!8126798))

(assert (=> b!7564226 m!8126684))

(assert (=> b!7564230 m!8126684))

(assert (=> b!7564042 d!2315705))

(declare-fun d!2315709 () Bool)

(declare-fun lt!2649698 () List!72865)

(assert (=> d!2315709 (= (++!17486 testedP!423 lt!2649698) knownP!30)))

(declare-fun e!4504056 () List!72865)

(assert (=> d!2315709 (= lt!2649698 e!4504056)))

(declare-fun c!1395698 () Bool)

(assert (=> d!2315709 (= c!1395698 (is-Cons!72741 testedP!423))))

(assert (=> d!2315709 (>= (size!42478 knownP!30) (size!42478 testedP!423))))

(assert (=> d!2315709 (= (getSuffix!3666 knownP!30 testedP!423) lt!2649698)))

(declare-fun b!7564245 () Bool)

(assert (=> b!7564245 (= e!4504056 (getSuffix!3666 (tail!15100 knownP!30) (t!387596 testedP!423)))))

(declare-fun b!7564246 () Bool)

(assert (=> b!7564246 (= e!4504056 knownP!30)))

(assert (= (and d!2315709 c!1395698) b!7564245))

(assert (= (and d!2315709 (not c!1395698)) b!7564246))

(declare-fun m!8126806 () Bool)

(assert (=> d!2315709 m!8126806))

(assert (=> d!2315709 m!8126612))

(assert (=> d!2315709 m!8126610))

(declare-fun m!8126808 () Bool)

(assert (=> b!7564245 m!8126808))

(assert (=> b!7564245 m!8126808))

(declare-fun m!8126810 () Bool)

(assert (=> b!7564245 m!8126810))

(assert (=> b!7564042 d!2315709))

(declare-fun d!2315711 () Bool)

(declare-fun e!4504066 () Bool)

(assert (=> d!2315711 e!4504066))

(declare-fun res!3030809 () Bool)

(assert (=> d!2315711 (=> res!3030809 e!4504066)))

(declare-fun lt!2649702 () Bool)

(assert (=> d!2315711 (= res!3030809 (not lt!2649702))))

(declare-fun e!4504065 () Bool)

(assert (=> d!2315711 (= lt!2649702 e!4504065)))

(declare-fun res!3030806 () Bool)

(assert (=> d!2315711 (=> res!3030806 e!4504065)))

(assert (=> d!2315711 (= res!3030806 (is-Nil!72741 testedP!423))))

(assert (=> d!2315711 (= (isPrefix!6188 testedP!423 knownP!30) lt!2649702)))

(declare-fun b!7564261 () Bool)

(declare-fun e!4504067 () Bool)

(assert (=> b!7564261 (= e!4504067 (isPrefix!6188 (tail!15100 testedP!423) (tail!15100 knownP!30)))))

(declare-fun b!7564262 () Bool)

(assert (=> b!7564262 (= e!4504066 (>= (size!42478 knownP!30) (size!42478 testedP!423)))))

(declare-fun b!7564259 () Bool)

(assert (=> b!7564259 (= e!4504065 e!4504067)))

(declare-fun res!3030808 () Bool)

(assert (=> b!7564259 (=> (not res!3030808) (not e!4504067))))

(assert (=> b!7564259 (= res!3030808 (not (is-Nil!72741 knownP!30)))))

(declare-fun b!7564260 () Bool)

(declare-fun res!3030807 () Bool)

(assert (=> b!7564260 (=> (not res!3030807) (not e!4504067))))

(assert (=> b!7564260 (= res!3030807 (= (head!15560 testedP!423) (head!15560 knownP!30)))))

(assert (= (and d!2315711 (not res!3030806)) b!7564259))

(assert (= (and b!7564259 res!3030808) b!7564260))

(assert (= (and b!7564260 res!3030807) b!7564261))

(assert (= (and d!2315711 (not res!3030809)) b!7564262))

(declare-fun m!8126824 () Bool)

(assert (=> b!7564261 m!8126824))

(assert (=> b!7564261 m!8126808))

(assert (=> b!7564261 m!8126824))

(assert (=> b!7564261 m!8126808))

(declare-fun m!8126826 () Bool)

(assert (=> b!7564261 m!8126826))

(assert (=> b!7564262 m!8126612))

(assert (=> b!7564262 m!8126610))

(declare-fun m!8126828 () Bool)

(assert (=> b!7564260 m!8126828))

(declare-fun m!8126830 () Bool)

(assert (=> b!7564260 m!8126830))

(assert (=> b!7564042 d!2315711))

(declare-fun d!2315715 () Bool)

(assert (=> d!2315715 (isPrefix!6188 testedP!423 knownP!30)))

(declare-fun lt!2649705 () Unit!166898)

(declare-fun choose!58502 (List!72865 List!72865 List!72865) Unit!166898)

(assert (=> d!2315715 (= lt!2649705 (choose!58502 knownP!30 testedP!423 input!7874))))

(assert (=> d!2315715 (isPrefix!6188 knownP!30 input!7874)))

(assert (=> d!2315715 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!936 knownP!30 testedP!423 input!7874) lt!2649705)))

(declare-fun bs!1940427 () Bool)

(assert (= bs!1940427 d!2315715))

(assert (=> bs!1940427 m!8126652))

(declare-fun m!8126832 () Bool)

(assert (=> bs!1940427 m!8126832))

(assert (=> bs!1940427 m!8126694))

(assert (=> b!7564042 d!2315715))

(declare-fun d!2315717 () Bool)

(declare-fun lt!2649708 () Int)

(assert (=> d!2315717 (>= lt!2649708 0)))

(declare-fun e!4504082 () Int)

(assert (=> d!2315717 (= lt!2649708 e!4504082)))

(declare-fun c!1395706 () Bool)

(assert (=> d!2315717 (= c!1395706 (is-Nil!72741 input!7874))))

(assert (=> d!2315717 (= (size!42478 input!7874) lt!2649708)))

(declare-fun b!7564283 () Bool)

(assert (=> b!7564283 (= e!4504082 0)))

(declare-fun b!7564284 () Bool)

(assert (=> b!7564284 (= e!4504082 (+ 1 (size!42478 (t!387596 input!7874))))))

(assert (= (and d!2315717 c!1395706) b!7564283))

(assert (= (and d!2315717 (not c!1395706)) b!7564284))

(declare-fun m!8126834 () Bool)

(assert (=> b!7564284 m!8126834))

(assert (=> b!7564053 d!2315717))

(declare-fun e!4504089 () Bool)

(declare-fun b!7564298 () Bool)

(declare-fun lt!2649711 () List!72865)

(assert (=> b!7564298 (= e!4504089 (or (not (= lt!2649589 Nil!72741)) (= lt!2649711 lt!2649587)))))

(declare-fun d!2315719 () Bool)

(assert (=> d!2315719 e!4504089))

(declare-fun res!3030824 () Bool)

(assert (=> d!2315719 (=> (not res!3030824) (not e!4504089))))

(declare-fun content!15403 (List!72865) (Set C!40290))

(assert (=> d!2315719 (= res!3030824 (= (content!15403 lt!2649711) (set.union (content!15403 lt!2649587) (content!15403 lt!2649589))))))

(declare-fun e!4504090 () List!72865)

(assert (=> d!2315719 (= lt!2649711 e!4504090)))

(declare-fun c!1395709 () Bool)

(assert (=> d!2315719 (= c!1395709 (is-Nil!72741 lt!2649587))))

(assert (=> d!2315719 (= (++!17486 lt!2649587 lt!2649589) lt!2649711)))

(declare-fun b!7564297 () Bool)

(declare-fun res!3030825 () Bool)

(assert (=> b!7564297 (=> (not res!3030825) (not e!4504089))))

(assert (=> b!7564297 (= res!3030825 (= (size!42478 lt!2649711) (+ (size!42478 lt!2649587) (size!42478 lt!2649589))))))

(declare-fun b!7564296 () Bool)

(assert (=> b!7564296 (= e!4504090 (Cons!72741 (h!79189 lt!2649587) (++!17486 (t!387596 lt!2649587) lt!2649589)))))

(declare-fun b!7564295 () Bool)

(assert (=> b!7564295 (= e!4504090 lt!2649589)))

(assert (= (and d!2315719 c!1395709) b!7564295))

(assert (= (and d!2315719 (not c!1395709)) b!7564296))

(assert (= (and d!2315719 res!3030824) b!7564297))

(assert (= (and b!7564297 res!3030825) b!7564298))

(declare-fun m!8126836 () Bool)

(assert (=> d!2315719 m!8126836))

(declare-fun m!8126838 () Bool)

(assert (=> d!2315719 m!8126838))

(declare-fun m!8126840 () Bool)

(assert (=> d!2315719 m!8126840))

(declare-fun m!8126842 () Bool)

(assert (=> b!7564297 m!8126842))

(declare-fun m!8126844 () Bool)

(assert (=> b!7564297 m!8126844))

(declare-fun m!8126846 () Bool)

(assert (=> b!7564297 m!8126846))

(declare-fun m!8126848 () Bool)

(assert (=> b!7564296 m!8126848))

(assert (=> b!7564032 d!2315719))

(declare-fun lt!2649712 () List!72865)

(declare-fun b!7564302 () Bool)

(declare-fun e!4504091 () Bool)

(assert (=> b!7564302 (= e!4504091 (or (not (= lt!2649585 Nil!72741)) (= lt!2649712 testedP!423)))))

(declare-fun d!2315721 () Bool)

(assert (=> d!2315721 e!4504091))

(declare-fun res!3030826 () Bool)

(assert (=> d!2315721 (=> (not res!3030826) (not e!4504091))))

(assert (=> d!2315721 (= res!3030826 (= (content!15403 lt!2649712) (set.union (content!15403 testedP!423) (content!15403 lt!2649585))))))

(declare-fun e!4504092 () List!72865)

(assert (=> d!2315721 (= lt!2649712 e!4504092)))

(declare-fun c!1395710 () Bool)

(assert (=> d!2315721 (= c!1395710 (is-Nil!72741 testedP!423))))

(assert (=> d!2315721 (= (++!17486 testedP!423 lt!2649585) lt!2649712)))

(declare-fun b!7564301 () Bool)

(declare-fun res!3030827 () Bool)

(assert (=> b!7564301 (=> (not res!3030827) (not e!4504091))))

(assert (=> b!7564301 (= res!3030827 (= (size!42478 lt!2649712) (+ (size!42478 testedP!423) (size!42478 lt!2649585))))))

(declare-fun b!7564300 () Bool)

(assert (=> b!7564300 (= e!4504092 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) lt!2649585)))))

(declare-fun b!7564299 () Bool)

(assert (=> b!7564299 (= e!4504092 lt!2649585)))

(assert (= (and d!2315721 c!1395710) b!7564299))

(assert (= (and d!2315721 (not c!1395710)) b!7564300))

(assert (= (and d!2315721 res!3030826) b!7564301))

(assert (= (and b!7564301 res!3030827) b!7564302))

(declare-fun m!8126850 () Bool)

(assert (=> d!2315721 m!8126850))

(declare-fun m!8126852 () Bool)

(assert (=> d!2315721 m!8126852))

(declare-fun m!8126854 () Bool)

(assert (=> d!2315721 m!8126854))

(declare-fun m!8126856 () Bool)

(assert (=> b!7564301 m!8126856))

(assert (=> b!7564301 m!8126610))

(declare-fun m!8126858 () Bool)

(assert (=> b!7564301 m!8126858))

(declare-fun m!8126860 () Bool)

(assert (=> b!7564300 m!8126860))

(assert (=> b!7564032 d!2315721))

(declare-fun d!2315723 () Bool)

(declare-fun lostCauseFct!469 (Regex!19982) Bool)

(assert (=> d!2315723 (= (lostCause!1770 r!24333) (lostCauseFct!469 r!24333))))

(declare-fun bs!1940428 () Bool)

(assert (= bs!1940428 d!2315723))

(declare-fun m!8126862 () Bool)

(assert (=> bs!1940428 m!8126862))

(assert (=> b!7564044 d!2315723))

(declare-fun b!7564303 () Bool)

(declare-fun e!4504099 () Bool)

(declare-fun e!4504094 () Bool)

(assert (=> b!7564303 (= e!4504099 e!4504094)))

(declare-fun res!3030833 () Bool)

(assert (=> b!7564303 (=> res!3030833 e!4504094)))

(declare-fun call!693465 () Bool)

(assert (=> b!7564303 (= res!3030833 call!693465)))

(declare-fun b!7564305 () Bool)

(declare-fun e!4504096 () Bool)

(declare-fun lt!2649713 () Bool)

(assert (=> b!7564305 (= e!4504096 (not lt!2649713))))

(declare-fun b!7564306 () Bool)

(assert (=> b!7564306 (= e!4504094 (not (= (head!15560 knownP!30) (c!1395677 baseR!101))))))

(declare-fun b!7564307 () Bool)

(declare-fun e!4504098 () Bool)

(assert (=> b!7564307 (= e!4504098 (= lt!2649713 call!693465))))

(declare-fun bm!693460 () Bool)

(assert (=> bm!693460 (= call!693465 (isEmpty!41418 knownP!30))))

(declare-fun b!7564308 () Bool)

(declare-fun res!3030831 () Bool)

(declare-fun e!4504097 () Bool)

(assert (=> b!7564308 (=> (not res!3030831) (not e!4504097))))

(assert (=> b!7564308 (= res!3030831 (isEmpty!41418 (tail!15100 knownP!30)))))

(declare-fun b!7564309 () Bool)

(assert (=> b!7564309 (= e!4504098 e!4504096)))

(declare-fun c!1395712 () Bool)

(assert (=> b!7564309 (= c!1395712 (is-EmptyLang!19982 baseR!101))))

(declare-fun b!7564310 () Bool)

(assert (=> b!7564310 (= e!4504097 (= (head!15560 knownP!30) (c!1395677 baseR!101)))))

(declare-fun b!7564311 () Bool)

(declare-fun res!3030835 () Bool)

(declare-fun e!4504093 () Bool)

(assert (=> b!7564311 (=> res!3030835 e!4504093)))

(assert (=> b!7564311 (= res!3030835 (not (is-ElementMatch!19982 baseR!101)))))

(assert (=> b!7564311 (= e!4504096 e!4504093)))

(declare-fun b!7564312 () Bool)

(declare-fun res!3030830 () Bool)

(assert (=> b!7564312 (=> res!3030830 e!4504094)))

(assert (=> b!7564312 (= res!3030830 (not (isEmpty!41418 (tail!15100 knownP!30))))))

(declare-fun d!2315725 () Bool)

(assert (=> d!2315725 e!4504098))

(declare-fun c!1395713 () Bool)

(assert (=> d!2315725 (= c!1395713 (is-EmptyExpr!19982 baseR!101))))

(declare-fun e!4504095 () Bool)

(assert (=> d!2315725 (= lt!2649713 e!4504095)))

(declare-fun c!1395711 () Bool)

(assert (=> d!2315725 (= c!1395711 (isEmpty!41418 knownP!30))))

(assert (=> d!2315725 (validRegex!10410 baseR!101)))

(assert (=> d!2315725 (= (matchR!9584 baseR!101 knownP!30) lt!2649713)))

(declare-fun b!7564304 () Bool)

(declare-fun res!3030828 () Bool)

(assert (=> b!7564304 (=> res!3030828 e!4504093)))

(assert (=> b!7564304 (= res!3030828 e!4504097)))

(declare-fun res!3030834 () Bool)

(assert (=> b!7564304 (=> (not res!3030834) (not e!4504097))))

(assert (=> b!7564304 (= res!3030834 lt!2649713)))

(declare-fun b!7564313 () Bool)

(assert (=> b!7564313 (= e!4504093 e!4504099)))

(declare-fun res!3030832 () Bool)

(assert (=> b!7564313 (=> (not res!3030832) (not e!4504099))))

(assert (=> b!7564313 (= res!3030832 (not lt!2649713))))

(declare-fun b!7564314 () Bool)

(assert (=> b!7564314 (= e!4504095 (nullable!8716 baseR!101))))

(declare-fun b!7564315 () Bool)

(declare-fun res!3030829 () Bool)

(assert (=> b!7564315 (=> (not res!3030829) (not e!4504097))))

(assert (=> b!7564315 (= res!3030829 (not call!693465))))

(declare-fun b!7564316 () Bool)

(assert (=> b!7564316 (= e!4504095 (matchR!9584 (derivativeStep!5760 baseR!101 (head!15560 knownP!30)) (tail!15100 knownP!30)))))

(assert (= (and d!2315725 c!1395711) b!7564314))

(assert (= (and d!2315725 (not c!1395711)) b!7564316))

(assert (= (and d!2315725 c!1395713) b!7564307))

(assert (= (and d!2315725 (not c!1395713)) b!7564309))

(assert (= (and b!7564309 c!1395712) b!7564305))

(assert (= (and b!7564309 (not c!1395712)) b!7564311))

(assert (= (and b!7564311 (not res!3030835)) b!7564304))

(assert (= (and b!7564304 res!3030834) b!7564315))

(assert (= (and b!7564315 res!3030829) b!7564308))

(assert (= (and b!7564308 res!3030831) b!7564310))

(assert (= (and b!7564304 (not res!3030828)) b!7564313))

(assert (= (and b!7564313 res!3030832) b!7564303))

(assert (= (and b!7564303 (not res!3030833)) b!7564312))

(assert (= (and b!7564312 (not res!3030830)) b!7564306))

(assert (= (or b!7564307 b!7564303 b!7564315) bm!693460))

(declare-fun m!8126864 () Bool)

(assert (=> d!2315725 m!8126864))

(assert (=> d!2315725 m!8126698))

(assert (=> b!7564308 m!8126808))

(assert (=> b!7564308 m!8126808))

(declare-fun m!8126866 () Bool)

(assert (=> b!7564308 m!8126866))

(declare-fun m!8126868 () Bool)

(assert (=> b!7564314 m!8126868))

(assert (=> b!7564316 m!8126830))

(assert (=> b!7564316 m!8126830))

(declare-fun m!8126870 () Bool)

(assert (=> b!7564316 m!8126870))

(assert (=> b!7564316 m!8126808))

(assert (=> b!7564316 m!8126870))

(assert (=> b!7564316 m!8126808))

(declare-fun m!8126872 () Bool)

(assert (=> b!7564316 m!8126872))

(assert (=> bm!693460 m!8126864))

(assert (=> b!7564312 m!8126808))

(assert (=> b!7564312 m!8126808))

(assert (=> b!7564312 m!8126866))

(assert (=> b!7564306 m!8126830))

(assert (=> b!7564310 m!8126830))

(assert (=> b!7564050 d!2315725))

(declare-fun lt!2649714 () List!72865)

(declare-fun e!4504100 () Bool)

(declare-fun b!7564320 () Bool)

(assert (=> b!7564320 (= e!4504100 (or (not (= lt!2649606 Nil!72741)) (= lt!2649714 testedP!423)))))

(declare-fun d!2315727 () Bool)

(assert (=> d!2315727 e!4504100))

(declare-fun res!3030836 () Bool)

(assert (=> d!2315727 (=> (not res!3030836) (not e!4504100))))

(assert (=> d!2315727 (= res!3030836 (= (content!15403 lt!2649714) (set.union (content!15403 testedP!423) (content!15403 lt!2649606))))))

(declare-fun e!4504101 () List!72865)

(assert (=> d!2315727 (= lt!2649714 e!4504101)))

(declare-fun c!1395714 () Bool)

(assert (=> d!2315727 (= c!1395714 (is-Nil!72741 testedP!423))))

(assert (=> d!2315727 (= (++!17486 testedP!423 lt!2649606) lt!2649714)))

(declare-fun b!7564319 () Bool)

(declare-fun res!3030837 () Bool)

(assert (=> b!7564319 (=> (not res!3030837) (not e!4504100))))

(assert (=> b!7564319 (= res!3030837 (= (size!42478 lt!2649714) (+ (size!42478 testedP!423) (size!42478 lt!2649606))))))

(declare-fun b!7564318 () Bool)

(assert (=> b!7564318 (= e!4504101 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) lt!2649606)))))

(declare-fun b!7564317 () Bool)

(assert (=> b!7564317 (= e!4504101 lt!2649606)))

(assert (= (and d!2315727 c!1395714) b!7564317))

(assert (= (and d!2315727 (not c!1395714)) b!7564318))

(assert (= (and d!2315727 res!3030836) b!7564319))

(assert (= (and b!7564319 res!3030837) b!7564320))

(declare-fun m!8126874 () Bool)

(assert (=> d!2315727 m!8126874))

(assert (=> d!2315727 m!8126852))

(declare-fun m!8126876 () Bool)

(assert (=> d!2315727 m!8126876))

(declare-fun m!8126878 () Bool)

(assert (=> b!7564319 m!8126878))

(assert (=> b!7564319 m!8126610))

(declare-fun m!8126880 () Bool)

(assert (=> b!7564319 m!8126880))

(declare-fun m!8126882 () Bool)

(assert (=> b!7564318 m!8126882))

(assert (=> b!7564061 d!2315727))

(declare-fun e!4504102 () Bool)

(declare-fun b!7564324 () Bool)

(declare-fun lt!2649715 () List!72865)

(assert (=> b!7564324 (= e!4504102 (or (not (= lt!2649589 Nil!72741)) (= lt!2649715 lt!2649585)))))

(declare-fun d!2315729 () Bool)

(assert (=> d!2315729 e!4504102))

(declare-fun res!3030838 () Bool)

(assert (=> d!2315729 (=> (not res!3030838) (not e!4504102))))

(assert (=> d!2315729 (= res!3030838 (= (content!15403 lt!2649715) (set.union (content!15403 lt!2649585) (content!15403 lt!2649589))))))

(declare-fun e!4504103 () List!72865)

(assert (=> d!2315729 (= lt!2649715 e!4504103)))

(declare-fun c!1395715 () Bool)

(assert (=> d!2315729 (= c!1395715 (is-Nil!72741 lt!2649585))))

(assert (=> d!2315729 (= (++!17486 lt!2649585 lt!2649589) lt!2649715)))

(declare-fun b!7564323 () Bool)

(declare-fun res!3030839 () Bool)

(assert (=> b!7564323 (=> (not res!3030839) (not e!4504102))))

(assert (=> b!7564323 (= res!3030839 (= (size!42478 lt!2649715) (+ (size!42478 lt!2649585) (size!42478 lt!2649589))))))

(declare-fun b!7564322 () Bool)

(assert (=> b!7564322 (= e!4504103 (Cons!72741 (h!79189 lt!2649585) (++!17486 (t!387596 lt!2649585) lt!2649589)))))

(declare-fun b!7564321 () Bool)

(assert (=> b!7564321 (= e!4504103 lt!2649589)))

(assert (= (and d!2315729 c!1395715) b!7564321))

(assert (= (and d!2315729 (not c!1395715)) b!7564322))

(assert (= (and d!2315729 res!3030838) b!7564323))

(assert (= (and b!7564323 res!3030839) b!7564324))

(declare-fun m!8126884 () Bool)

(assert (=> d!2315729 m!8126884))

(assert (=> d!2315729 m!8126854))

(assert (=> d!2315729 m!8126840))

(declare-fun m!8126886 () Bool)

(assert (=> b!7564323 m!8126886))

(assert (=> b!7564323 m!8126858))

(assert (=> b!7564323 m!8126846))

(declare-fun m!8126888 () Bool)

(assert (=> b!7564322 m!8126888))

(assert (=> b!7564061 d!2315729))

(declare-fun d!2315731 () Bool)

(assert (=> d!2315731 (= (++!17486 (++!17486 testedP!423 lt!2649585) lt!2649589) (++!17486 testedP!423 (++!17486 lt!2649585 lt!2649589)))))

(declare-fun lt!2649718 () Unit!166898)

(declare-fun choose!58503 (List!72865 List!72865 List!72865) Unit!166898)

(assert (=> d!2315731 (= lt!2649718 (choose!58503 testedP!423 lt!2649585 lt!2649589))))

(assert (=> d!2315731 (= (lemmaConcatAssociativity!3121 testedP!423 lt!2649585 lt!2649589) lt!2649718)))

(declare-fun bs!1940429 () Bool)

(assert (= bs!1940429 d!2315731))

(assert (=> bs!1940429 m!8126690))

(assert (=> bs!1940429 m!8126640))

(declare-fun m!8126890 () Bool)

(assert (=> bs!1940429 m!8126890))

(assert (=> bs!1940429 m!8126640))

(declare-fun m!8126892 () Bool)

(assert (=> bs!1940429 m!8126892))

(assert (=> bs!1940429 m!8126690))

(declare-fun m!8126894 () Bool)

(assert (=> bs!1940429 m!8126894))

(assert (=> b!7564061 d!2315731))

(declare-fun b!7564334 () Bool)

(declare-fun e!4504113 () Bool)

(declare-fun call!693469 () Bool)

(assert (=> b!7564334 (= e!4504113 call!693469)))

(declare-fun b!7564335 () Bool)

(declare-fun res!3030847 () Bool)

(declare-fun e!4504114 () Bool)

(assert (=> b!7564335 (=> (not res!3030847) (not e!4504114))))

(declare-fun call!693470 () Bool)

(assert (=> b!7564335 (= res!3030847 call!693470)))

(declare-fun e!4504116 () Bool)

(assert (=> b!7564335 (= e!4504116 e!4504114)))

(declare-fun bm!693464 () Bool)

(declare-fun c!1395719 () Bool)

(declare-fun c!1395718 () Bool)

(assert (=> bm!693464 (= call!693469 (validRegex!10410 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))))))

(declare-fun b!7564336 () Bool)

(declare-fun e!4504117 () Bool)

(declare-fun e!4504111 () Bool)

(assert (=> b!7564336 (= e!4504117 e!4504111)))

(assert (=> b!7564336 (= c!1395719 (is-Star!19982 baseR!101))))

(declare-fun b!7564337 () Bool)

(assert (=> b!7564337 (= e!4504111 e!4504116)))

(assert (=> b!7564337 (= c!1395718 (is-Union!19982 baseR!101))))

(declare-fun bm!693465 () Bool)

(declare-fun call!693471 () Bool)

(assert (=> bm!693465 (= call!693471 call!693469)))

(declare-fun bm!693466 () Bool)

(assert (=> bm!693466 (= call!693470 (validRegex!10410 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))))))

(declare-fun b!7564338 () Bool)

(assert (=> b!7564338 (= e!4504114 call!693471)))

(declare-fun b!7564339 () Bool)

(declare-fun e!4504112 () Bool)

(assert (=> b!7564339 (= e!4504112 call!693471)))

(declare-fun d!2315733 () Bool)

(declare-fun res!3030846 () Bool)

(assert (=> d!2315733 (=> res!3030846 e!4504117)))

(assert (=> d!2315733 (= res!3030846 (is-ElementMatch!19982 baseR!101))))

(assert (=> d!2315733 (= (validRegex!10410 baseR!101) e!4504117)))

(declare-fun b!7564340 () Bool)

(assert (=> b!7564340 (= e!4504111 e!4504113)))

(declare-fun res!3030849 () Bool)

(assert (=> b!7564340 (= res!3030849 (not (nullable!8716 (reg!20311 baseR!101))))))

(assert (=> b!7564340 (=> (not res!3030849) (not e!4504113))))

(declare-fun b!7564341 () Bool)

(declare-fun res!3030848 () Bool)

(declare-fun e!4504115 () Bool)

(assert (=> b!7564341 (=> res!3030848 e!4504115)))

(assert (=> b!7564341 (= res!3030848 (not (is-Concat!28827 baseR!101)))))

(assert (=> b!7564341 (= e!4504116 e!4504115)))

(declare-fun b!7564342 () Bool)

(assert (=> b!7564342 (= e!4504115 e!4504112)))

(declare-fun res!3030845 () Bool)

(assert (=> b!7564342 (=> (not res!3030845) (not e!4504112))))

(assert (=> b!7564342 (= res!3030845 call!693470)))

(assert (= (and d!2315733 (not res!3030846)) b!7564336))

(assert (= (and b!7564336 c!1395719) b!7564340))

(assert (= (and b!7564336 (not c!1395719)) b!7564337))

(assert (= (and b!7564340 res!3030849) b!7564334))

(assert (= (and b!7564337 c!1395718) b!7564335))

(assert (= (and b!7564337 (not c!1395718)) b!7564341))

(assert (= (and b!7564335 res!3030847) b!7564338))

(assert (= (and b!7564341 (not res!3030848)) b!7564342))

(assert (= (and b!7564342 res!3030845) b!7564339))

(assert (= (or b!7564335 b!7564342) bm!693466))

(assert (= (or b!7564338 b!7564339) bm!693465))

(assert (= (or b!7564334 bm!693465) bm!693464))

(declare-fun m!8126902 () Bool)

(assert (=> bm!693464 m!8126902))

(declare-fun m!8126904 () Bool)

(assert (=> bm!693466 m!8126904))

(declare-fun m!8126906 () Bool)

(assert (=> b!7564340 m!8126906))

(assert (=> start!730742 d!2315733))

(declare-fun d!2315737 () Bool)

(declare-fun lt!2649720 () Int)

(assert (=> d!2315737 (>= lt!2649720 0)))

(declare-fun e!4504120 () Int)

(assert (=> d!2315737 (= lt!2649720 e!4504120)))

(declare-fun c!1395721 () Bool)

(assert (=> d!2315737 (= c!1395721 (is-Nil!72741 lt!2649592))))

(assert (=> d!2315737 (= (size!42478 lt!2649592) lt!2649720)))

(declare-fun b!7564347 () Bool)

(assert (=> b!7564347 (= e!4504120 0)))

(declare-fun b!7564348 () Bool)

(assert (=> b!7564348 (= e!4504120 (+ 1 (size!42478 (t!387596 lt!2649592))))))

(assert (= (and d!2315737 c!1395721) b!7564347))

(assert (= (and d!2315737 (not c!1395721)) b!7564348))

(declare-fun m!8126908 () Bool)

(assert (=> b!7564348 m!8126908))

(assert (=> b!7564040 d!2315737))

(declare-fun d!2315739 () Bool)

(assert (=> d!2315739 (= lt!2649586 lt!2649585)))

(declare-fun lt!2649724 () Unit!166898)

(declare-fun choose!58504 (List!72865 List!72865 List!72865 List!72865 List!72865) Unit!166898)

(assert (=> d!2315739 (= lt!2649724 (choose!58504 testedP!423 lt!2649586 testedP!423 lt!2649585 knownP!30))))

(assert (=> d!2315739 (isPrefix!6188 testedP!423 knownP!30)))

(assert (=> d!2315739 (= (lemmaSamePrefixThenSameSuffix!2888 testedP!423 lt!2649586 testedP!423 lt!2649585 knownP!30) lt!2649724)))

(declare-fun bs!1940430 () Bool)

(assert (= bs!1940430 d!2315739))

(declare-fun m!8126934 () Bool)

(assert (=> bs!1940430 m!8126934))

(assert (=> bs!1940430 m!8126652))

(assert (=> b!7564052 d!2315739))

(declare-fun b!7564356 () Bool)

(declare-fun lt!2649725 () List!72865)

(declare-fun e!4504123 () Bool)

(assert (=> b!7564356 (= e!4504123 (or (not (= lt!2649586 Nil!72741)) (= lt!2649725 testedP!423)))))

(declare-fun d!2315745 () Bool)

(assert (=> d!2315745 e!4504123))

(declare-fun res!3030854 () Bool)

(assert (=> d!2315745 (=> (not res!3030854) (not e!4504123))))

(assert (=> d!2315745 (= res!3030854 (= (content!15403 lt!2649725) (set.union (content!15403 testedP!423) (content!15403 lt!2649586))))))

(declare-fun e!4504124 () List!72865)

(assert (=> d!2315745 (= lt!2649725 e!4504124)))

(declare-fun c!1395723 () Bool)

(assert (=> d!2315745 (= c!1395723 (is-Nil!72741 testedP!423))))

(assert (=> d!2315745 (= (++!17486 testedP!423 lt!2649586) lt!2649725)))

(declare-fun b!7564355 () Bool)

(declare-fun res!3030855 () Bool)

(assert (=> b!7564355 (=> (not res!3030855) (not e!4504123))))

(assert (=> b!7564355 (= res!3030855 (= (size!42478 lt!2649725) (+ (size!42478 testedP!423) (size!42478 lt!2649586))))))

(declare-fun b!7564354 () Bool)

(assert (=> b!7564354 (= e!4504124 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) lt!2649586)))))

(declare-fun b!7564353 () Bool)

(assert (=> b!7564353 (= e!4504124 lt!2649586)))

(assert (= (and d!2315745 c!1395723) b!7564353))

(assert (= (and d!2315745 (not c!1395723)) b!7564354))

(assert (= (and d!2315745 res!3030854) b!7564355))

(assert (= (and b!7564355 res!3030855) b!7564356))

(declare-fun m!8126936 () Bool)

(assert (=> d!2315745 m!8126936))

(assert (=> d!2315745 m!8126852))

(declare-fun m!8126938 () Bool)

(assert (=> d!2315745 m!8126938))

(declare-fun m!8126940 () Bool)

(assert (=> b!7564355 m!8126940))

(assert (=> b!7564355 m!8126610))

(declare-fun m!8126942 () Bool)

(assert (=> b!7564355 m!8126942))

(declare-fun m!8126944 () Bool)

(assert (=> b!7564354 m!8126944))

(assert (=> b!7564052 d!2315745))

(declare-fun b!7564360 () Bool)

(declare-fun e!4504125 () Bool)

(declare-fun lt!2649726 () List!72865)

(assert (=> b!7564360 (= e!4504125 (or (not (= lt!2649608 Nil!72741)) (= lt!2649726 lt!2649594)))))

(declare-fun d!2315747 () Bool)

(assert (=> d!2315747 e!4504125))

(declare-fun res!3030856 () Bool)

(assert (=> d!2315747 (=> (not res!3030856) (not e!4504125))))

(assert (=> d!2315747 (= res!3030856 (= (content!15403 lt!2649726) (set.union (content!15403 lt!2649594) (content!15403 lt!2649608))))))

(declare-fun e!4504126 () List!72865)

(assert (=> d!2315747 (= lt!2649726 e!4504126)))

(declare-fun c!1395724 () Bool)

(assert (=> d!2315747 (= c!1395724 (is-Nil!72741 lt!2649594))))

(assert (=> d!2315747 (= (++!17486 lt!2649594 lt!2649608) lt!2649726)))

(declare-fun b!7564359 () Bool)

(declare-fun res!3030857 () Bool)

(assert (=> b!7564359 (=> (not res!3030857) (not e!4504125))))

(assert (=> b!7564359 (= res!3030857 (= (size!42478 lt!2649726) (+ (size!42478 lt!2649594) (size!42478 lt!2649608))))))

(declare-fun b!7564358 () Bool)

(assert (=> b!7564358 (= e!4504126 (Cons!72741 (h!79189 lt!2649594) (++!17486 (t!387596 lt!2649594) lt!2649608)))))

(declare-fun b!7564357 () Bool)

(assert (=> b!7564357 (= e!4504126 lt!2649608)))

(assert (= (and d!2315747 c!1395724) b!7564357))

(assert (= (and d!2315747 (not c!1395724)) b!7564358))

(assert (= (and d!2315747 res!3030856) b!7564359))

(assert (= (and b!7564359 res!3030857) b!7564360))

(declare-fun m!8126946 () Bool)

(assert (=> d!2315747 m!8126946))

(declare-fun m!8126948 () Bool)

(assert (=> d!2315747 m!8126948))

(declare-fun m!8126950 () Bool)

(assert (=> d!2315747 m!8126950))

(declare-fun m!8126952 () Bool)

(assert (=> b!7564359 m!8126952))

(declare-fun m!8126954 () Bool)

(assert (=> b!7564359 m!8126954))

(declare-fun m!8126956 () Bool)

(assert (=> b!7564359 m!8126956))

(declare-fun m!8126958 () Bool)

(assert (=> b!7564358 m!8126958))

(assert (=> b!7564052 d!2315747))

(declare-fun d!2315749 () Bool)

(assert (=> d!2315749 (= (++!17486 (++!17486 testedP!423 lt!2649594) lt!2649608) (++!17486 testedP!423 (++!17486 lt!2649594 lt!2649608)))))

(declare-fun lt!2649727 () Unit!166898)

(assert (=> d!2315749 (= lt!2649727 (choose!58503 testedP!423 lt!2649594 lt!2649608))))

(assert (=> d!2315749 (= (lemmaConcatAssociativity!3121 testedP!423 lt!2649594 lt!2649608) lt!2649727)))

(declare-fun bs!1940431 () Bool)

(assert (= bs!1940431 d!2315749))

(assert (=> bs!1940431 m!8126676))

(assert (=> bs!1940431 m!8126632))

(declare-fun m!8126960 () Bool)

(assert (=> bs!1940431 m!8126960))

(assert (=> bs!1940431 m!8126632))

(declare-fun m!8126962 () Bool)

(assert (=> bs!1940431 m!8126962))

(assert (=> bs!1940431 m!8126676))

(declare-fun m!8126964 () Bool)

(assert (=> bs!1940431 m!8126964))

(assert (=> b!7564052 d!2315749))

(declare-fun d!2315751 () Bool)

(assert (=> d!2315751 (= (head!15560 lt!2649585) (h!79189 lt!2649585))))

(assert (=> b!7564047 d!2315751))

(declare-fun d!2315753 () Bool)

(assert (=> d!2315753 (= lt!2649606 lt!2649596)))

(declare-fun lt!2649728 () Unit!166898)

(assert (=> d!2315753 (= lt!2649728 (choose!58504 testedP!423 lt!2649606 testedP!423 lt!2649596 input!7874))))

(assert (=> d!2315753 (isPrefix!6188 testedP!423 input!7874)))

(assert (=> d!2315753 (= (lemmaSamePrefixThenSameSuffix!2888 testedP!423 lt!2649606 testedP!423 lt!2649596 input!7874) lt!2649728)))

(declare-fun bs!1940432 () Bool)

(assert (= bs!1940432 d!2315753))

(declare-fun m!8126966 () Bool)

(assert (=> bs!1940432 m!8126966))

(assert (=> bs!1940432 m!8126616))

(assert (=> b!7564047 d!2315753))

(declare-fun d!2315755 () Bool)

(declare-fun e!4504128 () Bool)

(assert (=> d!2315755 e!4504128))

(declare-fun res!3030861 () Bool)

(assert (=> d!2315755 (=> res!3030861 e!4504128)))

(declare-fun lt!2649729 () Bool)

(assert (=> d!2315755 (= res!3030861 (not lt!2649729))))

(declare-fun e!4504127 () Bool)

(assert (=> d!2315755 (= lt!2649729 e!4504127)))

(declare-fun res!3030858 () Bool)

(assert (=> d!2315755 (=> res!3030858 e!4504127)))

(assert (=> d!2315755 (= res!3030858 (is-Nil!72741 knownP!30))))

(assert (=> d!2315755 (= (isPrefix!6188 knownP!30 input!7874) lt!2649729)))

(declare-fun b!7564363 () Bool)

(declare-fun e!4504129 () Bool)

(assert (=> b!7564363 (= e!4504129 (isPrefix!6188 (tail!15100 knownP!30) (tail!15100 input!7874)))))

(declare-fun b!7564364 () Bool)

(assert (=> b!7564364 (= e!4504128 (>= (size!42478 input!7874) (size!42478 knownP!30)))))

(declare-fun b!7564361 () Bool)

(assert (=> b!7564361 (= e!4504127 e!4504129)))

(declare-fun res!3030860 () Bool)

(assert (=> b!7564361 (=> (not res!3030860) (not e!4504129))))

(assert (=> b!7564361 (= res!3030860 (not (is-Nil!72741 input!7874)))))

(declare-fun b!7564362 () Bool)

(declare-fun res!3030859 () Bool)

(assert (=> b!7564362 (=> (not res!3030859) (not e!4504129))))

(assert (=> b!7564362 (= res!3030859 (= (head!15560 knownP!30) (head!15560 input!7874)))))

(assert (= (and d!2315755 (not res!3030858)) b!7564361))

(assert (= (and b!7564361 res!3030860) b!7564362))

(assert (= (and b!7564362 res!3030859) b!7564363))

(assert (= (and d!2315755 (not res!3030861)) b!7564364))

(assert (=> b!7564363 m!8126808))

(declare-fun m!8126968 () Bool)

(assert (=> b!7564363 m!8126968))

(assert (=> b!7564363 m!8126808))

(assert (=> b!7564363 m!8126968))

(declare-fun m!8126970 () Bool)

(assert (=> b!7564363 m!8126970))

(assert (=> b!7564364 m!8126696))

(assert (=> b!7564364 m!8126612))

(assert (=> b!7564362 m!8126830))

(declare-fun m!8126972 () Bool)

(assert (=> b!7564362 m!8126972))

(assert (=> b!7564058 d!2315755))

(declare-fun d!2315757 () Bool)

(declare-fun lt!2649735 () Regex!19982)

(assert (=> d!2315757 (validRegex!10410 lt!2649735)))

(declare-fun e!4504132 () Regex!19982)

(assert (=> d!2315757 (= lt!2649735 e!4504132)))

(declare-fun c!1395727 () Bool)

(assert (=> d!2315757 (= c!1395727 (is-Cons!72741 testedP!423))))

(assert (=> d!2315757 (validRegex!10410 baseR!101)))

(assert (=> d!2315757 (= (derivative!512 baseR!101 testedP!423) lt!2649735)))

(declare-fun b!7564369 () Bool)

(assert (=> b!7564369 (= e!4504132 (derivative!512 (derivativeStep!5760 baseR!101 (h!79189 testedP!423)) (t!387596 testedP!423)))))

(declare-fun b!7564370 () Bool)

(assert (=> b!7564370 (= e!4504132 baseR!101)))

(assert (= (and d!2315757 c!1395727) b!7564369))

(assert (= (and d!2315757 (not c!1395727)) b!7564370))

(declare-fun m!8126978 () Bool)

(assert (=> d!2315757 m!8126978))

(assert (=> d!2315757 m!8126698))

(declare-fun m!8126980 () Bool)

(assert (=> b!7564369 m!8126980))

(assert (=> b!7564369 m!8126980))

(declare-fun m!8126984 () Bool)

(assert (=> b!7564369 m!8126984))

(assert (=> b!7564037 d!2315757))

(declare-fun d!2315759 () Bool)

(declare-fun e!4504134 () Bool)

(assert (=> d!2315759 e!4504134))

(declare-fun res!3030865 () Bool)

(assert (=> d!2315759 (=> res!3030865 e!4504134)))

(declare-fun lt!2649736 () Bool)

(assert (=> d!2315759 (= res!3030865 (not lt!2649736))))

(declare-fun e!4504133 () Bool)

(assert (=> d!2315759 (= lt!2649736 e!4504133)))

(declare-fun res!3030862 () Bool)

(assert (=> d!2315759 (=> res!3030862 e!4504133)))

(assert (=> d!2315759 (= res!3030862 (is-Nil!72741 testedP!423))))

(assert (=> d!2315759 (= (isPrefix!6188 testedP!423 input!7874) lt!2649736)))

(declare-fun b!7564373 () Bool)

(declare-fun e!4504135 () Bool)

(assert (=> b!7564373 (= e!4504135 (isPrefix!6188 (tail!15100 testedP!423) (tail!15100 input!7874)))))

(declare-fun b!7564374 () Bool)

(assert (=> b!7564374 (= e!4504134 (>= (size!42478 input!7874) (size!42478 testedP!423)))))

(declare-fun b!7564371 () Bool)

(assert (=> b!7564371 (= e!4504133 e!4504135)))

(declare-fun res!3030864 () Bool)

(assert (=> b!7564371 (=> (not res!3030864) (not e!4504135))))

(assert (=> b!7564371 (= res!3030864 (not (is-Nil!72741 input!7874)))))

(declare-fun b!7564372 () Bool)

(declare-fun res!3030863 () Bool)

(assert (=> b!7564372 (=> (not res!3030863) (not e!4504135))))

(assert (=> b!7564372 (= res!3030863 (= (head!15560 testedP!423) (head!15560 input!7874)))))

(assert (= (and d!2315759 (not res!3030862)) b!7564371))

(assert (= (and b!7564371 res!3030864) b!7564372))

(assert (= (and b!7564372 res!3030863) b!7564373))

(assert (= (and d!2315759 (not res!3030865)) b!7564374))

(assert (=> b!7564373 m!8126824))

(assert (=> b!7564373 m!8126968))

(assert (=> b!7564373 m!8126824))

(assert (=> b!7564373 m!8126968))

(declare-fun m!8126986 () Bool)

(assert (=> b!7564373 m!8126986))

(assert (=> b!7564374 m!8126696))

(assert (=> b!7564374 m!8126610))

(assert (=> b!7564372 m!8126828))

(assert (=> b!7564372 m!8126972))

(assert (=> b!7564049 d!2315759))

(declare-fun b!7564382 () Bool)

(declare-fun lt!2649738 () List!72865)

(declare-fun e!4504138 () Bool)

(assert (=> b!7564382 (= e!4504138 (or (not (= lt!2649596 Nil!72741)) (= lt!2649738 testedP!423)))))

(declare-fun d!2315763 () Bool)

(assert (=> d!2315763 e!4504138))

(declare-fun res!3030868 () Bool)

(assert (=> d!2315763 (=> (not res!3030868) (not e!4504138))))

(assert (=> d!2315763 (= res!3030868 (= (content!15403 lt!2649738) (set.union (content!15403 testedP!423) (content!15403 lt!2649596))))))

(declare-fun e!4504139 () List!72865)

(assert (=> d!2315763 (= lt!2649738 e!4504139)))

(declare-fun c!1395729 () Bool)

(assert (=> d!2315763 (= c!1395729 (is-Nil!72741 testedP!423))))

(assert (=> d!2315763 (= (++!17486 testedP!423 lt!2649596) lt!2649738)))

(declare-fun b!7564381 () Bool)

(declare-fun res!3030869 () Bool)

(assert (=> b!7564381 (=> (not res!3030869) (not e!4504138))))

(assert (=> b!7564381 (= res!3030869 (= (size!42478 lt!2649738) (+ (size!42478 testedP!423) (size!42478 lt!2649596))))))

(declare-fun b!7564380 () Bool)

(assert (=> b!7564380 (= e!4504139 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) lt!2649596)))))

(declare-fun b!7564379 () Bool)

(assert (=> b!7564379 (= e!4504139 lt!2649596)))

(assert (= (and d!2315763 c!1395729) b!7564379))

(assert (= (and d!2315763 (not c!1395729)) b!7564380))

(assert (= (and d!2315763 res!3030868) b!7564381))

(assert (= (and b!7564381 res!3030869) b!7564382))

(declare-fun m!8126988 () Bool)

(assert (=> d!2315763 m!8126988))

(assert (=> d!2315763 m!8126852))

(declare-fun m!8126990 () Bool)

(assert (=> d!2315763 m!8126990))

(declare-fun m!8126992 () Bool)

(assert (=> b!7564381 m!8126992))

(assert (=> b!7564381 m!8126610))

(declare-fun m!8126994 () Bool)

(assert (=> b!7564381 m!8126994))

(declare-fun m!8126996 () Bool)

(assert (=> b!7564380 m!8126996))

(assert (=> b!7564028 d!2315763))

(declare-fun b!7564383 () Bool)

(declare-fun e!4504142 () Bool)

(declare-fun call!693472 () Bool)

(assert (=> b!7564383 (= e!4504142 call!693472)))

(declare-fun b!7564384 () Bool)

(declare-fun res!3030872 () Bool)

(declare-fun e!4504143 () Bool)

(assert (=> b!7564384 (=> (not res!3030872) (not e!4504143))))

(declare-fun call!693473 () Bool)

(assert (=> b!7564384 (= res!3030872 call!693473)))

(declare-fun e!4504145 () Bool)

(assert (=> b!7564384 (= e!4504145 e!4504143)))

(declare-fun c!1395730 () Bool)

(declare-fun c!1395731 () Bool)

(declare-fun bm!693467 () Bool)

(assert (=> bm!693467 (= call!693472 (validRegex!10410 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))))))

(declare-fun b!7564385 () Bool)

(declare-fun e!4504146 () Bool)

(declare-fun e!4504140 () Bool)

(assert (=> b!7564385 (= e!4504146 e!4504140)))

(assert (=> b!7564385 (= c!1395731 (is-Star!19982 r!24333))))

(declare-fun b!7564386 () Bool)

(assert (=> b!7564386 (= e!4504140 e!4504145)))

(assert (=> b!7564386 (= c!1395730 (is-Union!19982 r!24333))))

(declare-fun bm!693468 () Bool)

(declare-fun call!693474 () Bool)

(assert (=> bm!693468 (= call!693474 call!693472)))

(declare-fun bm!693469 () Bool)

(assert (=> bm!693469 (= call!693473 (validRegex!10410 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))))))

(declare-fun b!7564387 () Bool)

(assert (=> b!7564387 (= e!4504143 call!693474)))

(declare-fun b!7564388 () Bool)

(declare-fun e!4504141 () Bool)

(assert (=> b!7564388 (= e!4504141 call!693474)))

(declare-fun d!2315765 () Bool)

(declare-fun res!3030871 () Bool)

(assert (=> d!2315765 (=> res!3030871 e!4504146)))

(assert (=> d!2315765 (= res!3030871 (is-ElementMatch!19982 r!24333))))

(assert (=> d!2315765 (= (validRegex!10410 r!24333) e!4504146)))

(declare-fun b!7564389 () Bool)

(assert (=> b!7564389 (= e!4504140 e!4504142)))

(declare-fun res!3030874 () Bool)

(assert (=> b!7564389 (= res!3030874 (not (nullable!8716 (reg!20311 r!24333))))))

(assert (=> b!7564389 (=> (not res!3030874) (not e!4504142))))

(declare-fun b!7564390 () Bool)

(declare-fun res!3030873 () Bool)

(declare-fun e!4504144 () Bool)

(assert (=> b!7564390 (=> res!3030873 e!4504144)))

(assert (=> b!7564390 (= res!3030873 (not (is-Concat!28827 r!24333)))))

(assert (=> b!7564390 (= e!4504145 e!4504144)))

(declare-fun b!7564391 () Bool)

(assert (=> b!7564391 (= e!4504144 e!4504141)))

(declare-fun res!3030870 () Bool)

(assert (=> b!7564391 (=> (not res!3030870) (not e!4504141))))

(assert (=> b!7564391 (= res!3030870 call!693473)))

(assert (= (and d!2315765 (not res!3030871)) b!7564385))

(assert (= (and b!7564385 c!1395731) b!7564389))

(assert (= (and b!7564385 (not c!1395731)) b!7564386))

(assert (= (and b!7564389 res!3030874) b!7564383))

(assert (= (and b!7564386 c!1395730) b!7564384))

(assert (= (and b!7564386 (not c!1395730)) b!7564390))

(assert (= (and b!7564384 res!3030872) b!7564387))

(assert (= (and b!7564390 (not res!3030873)) b!7564391))

(assert (= (and b!7564391 res!3030870) b!7564388))

(assert (= (or b!7564384 b!7564391) bm!693469))

(assert (= (or b!7564387 b!7564388) bm!693468))

(assert (= (or b!7564383 bm!693468) bm!693467))

(declare-fun m!8127010 () Bool)

(assert (=> bm!693467 m!8127010))

(declare-fun m!8127012 () Bool)

(assert (=> bm!693469 m!8127012))

(declare-fun m!8127014 () Bool)

(assert (=> b!7564389 m!8127014))

(assert (=> b!7564060 d!2315765))

(declare-fun b!7564392 () Bool)

(declare-fun e!4504153 () Bool)

(declare-fun e!4504148 () Bool)

(assert (=> b!7564392 (= e!4504153 e!4504148)))

(declare-fun res!3030880 () Bool)

(assert (=> b!7564392 (=> res!3030880 e!4504148)))

(declare-fun call!693475 () Bool)

(assert (=> b!7564392 (= res!3030880 call!693475)))

(declare-fun b!7564394 () Bool)

(declare-fun e!4504150 () Bool)

(declare-fun lt!2649739 () Bool)

(assert (=> b!7564394 (= e!4504150 (not lt!2649739))))

(declare-fun b!7564395 () Bool)

(assert (=> b!7564395 (= e!4504148 (not (= (head!15560 lt!2649608) (c!1395677 lt!2649591))))))

(declare-fun b!7564396 () Bool)

(declare-fun e!4504152 () Bool)

(assert (=> b!7564396 (= e!4504152 (= lt!2649739 call!693475))))

(declare-fun bm!693470 () Bool)

(assert (=> bm!693470 (= call!693475 (isEmpty!41418 lt!2649608))))

(declare-fun b!7564397 () Bool)

(declare-fun res!3030878 () Bool)

(declare-fun e!4504151 () Bool)

(assert (=> b!7564397 (=> (not res!3030878) (not e!4504151))))

(assert (=> b!7564397 (= res!3030878 (isEmpty!41418 (tail!15100 lt!2649608)))))

(declare-fun b!7564398 () Bool)

(assert (=> b!7564398 (= e!4504152 e!4504150)))

(declare-fun c!1395733 () Bool)

(assert (=> b!7564398 (= c!1395733 (is-EmptyLang!19982 lt!2649591))))

(declare-fun b!7564399 () Bool)

(assert (=> b!7564399 (= e!4504151 (= (head!15560 lt!2649608) (c!1395677 lt!2649591)))))

(declare-fun b!7564400 () Bool)

(declare-fun res!3030882 () Bool)

(declare-fun e!4504147 () Bool)

(assert (=> b!7564400 (=> res!3030882 e!4504147)))

(assert (=> b!7564400 (= res!3030882 (not (is-ElementMatch!19982 lt!2649591)))))

(assert (=> b!7564400 (= e!4504150 e!4504147)))

(declare-fun b!7564401 () Bool)

(declare-fun res!3030877 () Bool)

(assert (=> b!7564401 (=> res!3030877 e!4504148)))

(assert (=> b!7564401 (= res!3030877 (not (isEmpty!41418 (tail!15100 lt!2649608))))))

(declare-fun d!2315769 () Bool)

(assert (=> d!2315769 e!4504152))

(declare-fun c!1395734 () Bool)

(assert (=> d!2315769 (= c!1395734 (is-EmptyExpr!19982 lt!2649591))))

(declare-fun e!4504149 () Bool)

(assert (=> d!2315769 (= lt!2649739 e!4504149)))

(declare-fun c!1395732 () Bool)

(assert (=> d!2315769 (= c!1395732 (isEmpty!41418 lt!2649608))))

(assert (=> d!2315769 (validRegex!10410 lt!2649591)))

(assert (=> d!2315769 (= (matchR!9584 lt!2649591 lt!2649608) lt!2649739)))

(declare-fun b!7564393 () Bool)

(declare-fun res!3030875 () Bool)

(assert (=> b!7564393 (=> res!3030875 e!4504147)))

(assert (=> b!7564393 (= res!3030875 e!4504151)))

(declare-fun res!3030881 () Bool)

(assert (=> b!7564393 (=> (not res!3030881) (not e!4504151))))

(assert (=> b!7564393 (= res!3030881 lt!2649739)))

(declare-fun b!7564402 () Bool)

(assert (=> b!7564402 (= e!4504147 e!4504153)))

(declare-fun res!3030879 () Bool)

(assert (=> b!7564402 (=> (not res!3030879) (not e!4504153))))

(assert (=> b!7564402 (= res!3030879 (not lt!2649739))))

(declare-fun b!7564403 () Bool)

(assert (=> b!7564403 (= e!4504149 (nullable!8716 lt!2649591))))

(declare-fun b!7564404 () Bool)

(declare-fun res!3030876 () Bool)

(assert (=> b!7564404 (=> (not res!3030876) (not e!4504151))))

(assert (=> b!7564404 (= res!3030876 (not call!693475))))

(declare-fun b!7564405 () Bool)

(assert (=> b!7564405 (= e!4504149 (matchR!9584 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608)) (tail!15100 lt!2649608)))))

(assert (= (and d!2315769 c!1395732) b!7564403))

(assert (= (and d!2315769 (not c!1395732)) b!7564405))

(assert (= (and d!2315769 c!1395734) b!7564396))

(assert (= (and d!2315769 (not c!1395734)) b!7564398))

(assert (= (and b!7564398 c!1395733) b!7564394))

(assert (= (and b!7564398 (not c!1395733)) b!7564400))

(assert (= (and b!7564400 (not res!3030882)) b!7564393))

(assert (= (and b!7564393 res!3030881) b!7564404))

(assert (= (and b!7564404 res!3030876) b!7564397))

(assert (= (and b!7564397 res!3030878) b!7564399))

(assert (= (and b!7564393 (not res!3030875)) b!7564402))

(assert (= (and b!7564402 res!3030879) b!7564392))

(assert (= (and b!7564392 (not res!3030880)) b!7564401))

(assert (= (and b!7564401 (not res!3030877)) b!7564395))

(assert (= (or b!7564396 b!7564392 b!7564404) bm!693470))

(declare-fun m!8127016 () Bool)

(assert (=> d!2315769 m!8127016))

(assert (=> d!2315769 m!8126646))

(declare-fun m!8127018 () Bool)

(assert (=> b!7564397 m!8127018))

(assert (=> b!7564397 m!8127018))

(declare-fun m!8127020 () Bool)

(assert (=> b!7564397 m!8127020))

(declare-fun m!8127022 () Bool)

(assert (=> b!7564403 m!8127022))

(declare-fun m!8127024 () Bool)

(assert (=> b!7564405 m!8127024))

(assert (=> b!7564405 m!8127024))

(declare-fun m!8127026 () Bool)

(assert (=> b!7564405 m!8127026))

(assert (=> b!7564405 m!8127018))

(assert (=> b!7564405 m!8127026))

(assert (=> b!7564405 m!8127018))

(declare-fun m!8127028 () Bool)

(assert (=> b!7564405 m!8127028))

(assert (=> bm!693470 m!8127016))

(assert (=> b!7564401 m!8127018))

(assert (=> b!7564401 m!8127018))

(assert (=> b!7564401 m!8127020))

(assert (=> b!7564395 m!8127024))

(assert (=> b!7564399 m!8127024))

(assert (=> b!7564055 d!2315769))

(declare-fun lt!2649740 () List!72865)

(declare-fun b!7564409 () Bool)

(declare-fun e!4504154 () Bool)

(assert (=> b!7564409 (= e!4504154 (or (not (= lt!2649608 Nil!72741)) (= lt!2649740 lt!2649592)))))

(declare-fun d!2315771 () Bool)

(assert (=> d!2315771 e!4504154))

(declare-fun res!3030883 () Bool)

(assert (=> d!2315771 (=> (not res!3030883) (not e!4504154))))

(assert (=> d!2315771 (= res!3030883 (= (content!15403 lt!2649740) (set.union (content!15403 lt!2649592) (content!15403 lt!2649608))))))

(declare-fun e!4504155 () List!72865)

(assert (=> d!2315771 (= lt!2649740 e!4504155)))

(declare-fun c!1395735 () Bool)

(assert (=> d!2315771 (= c!1395735 (is-Nil!72741 lt!2649592))))

(assert (=> d!2315771 (= (++!17486 lt!2649592 lt!2649608) lt!2649740)))

(declare-fun b!7564408 () Bool)

(declare-fun res!3030884 () Bool)

(assert (=> b!7564408 (=> (not res!3030884) (not e!4504154))))

(assert (=> b!7564408 (= res!3030884 (= (size!42478 lt!2649740) (+ (size!42478 lt!2649592) (size!42478 lt!2649608))))))

(declare-fun b!7564407 () Bool)

(assert (=> b!7564407 (= e!4504155 (Cons!72741 (h!79189 lt!2649592) (++!17486 (t!387596 lt!2649592) lt!2649608)))))

(declare-fun b!7564406 () Bool)

(assert (=> b!7564406 (= e!4504155 lt!2649608)))

(assert (= (and d!2315771 c!1395735) b!7564406))

(assert (= (and d!2315771 (not c!1395735)) b!7564407))

(assert (= (and d!2315771 res!3030883) b!7564408))

(assert (= (and b!7564408 res!3030884) b!7564409))

(declare-fun m!8127030 () Bool)

(assert (=> d!2315771 m!8127030))

(declare-fun m!8127032 () Bool)

(assert (=> d!2315771 m!8127032))

(assert (=> d!2315771 m!8126950))

(declare-fun m!8127034 () Bool)

(assert (=> b!7564408 m!8127034))

(assert (=> b!7564408 m!8126636))

(assert (=> b!7564408 m!8126956))

(declare-fun m!8127036 () Bool)

(assert (=> b!7564407 m!8127036))

(assert (=> b!7564034 d!2315771))

(declare-fun d!2315773 () Bool)

(assert (=> d!2315773 (= (head!15560 lt!2649596) (h!79189 lt!2649596))))

(assert (=> b!7564045 d!2315773))

(declare-fun d!2315775 () Bool)

(declare-fun lt!2649741 () List!72865)

(assert (=> d!2315775 (= (++!17486 testedP!423 lt!2649741) input!7874)))

(declare-fun e!4504156 () List!72865)

(assert (=> d!2315775 (= lt!2649741 e!4504156)))

(declare-fun c!1395736 () Bool)

(assert (=> d!2315775 (= c!1395736 (is-Cons!72741 testedP!423))))

(assert (=> d!2315775 (>= (size!42478 input!7874) (size!42478 testedP!423))))

(assert (=> d!2315775 (= (getSuffix!3666 input!7874 testedP!423) lt!2649741)))

(declare-fun b!7564410 () Bool)

(assert (=> b!7564410 (= e!4504156 (getSuffix!3666 (tail!15100 input!7874) (t!387596 testedP!423)))))

(declare-fun b!7564411 () Bool)

(assert (=> b!7564411 (= e!4504156 input!7874)))

(assert (= (and d!2315775 c!1395736) b!7564410))

(assert (= (and d!2315775 (not c!1395736)) b!7564411))

(declare-fun m!8127038 () Bool)

(assert (=> d!2315775 m!8127038))

(assert (=> d!2315775 m!8126696))

(assert (=> d!2315775 m!8126610))

(assert (=> b!7564410 m!8126968))

(assert (=> b!7564410 m!8126968))

(declare-fun m!8127040 () Bool)

(assert (=> b!7564410 m!8127040))

(assert (=> b!7564045 d!2315775))

(declare-fun d!2315777 () Bool)

(declare-fun lt!2649744 () List!72865)

(assert (=> d!2315777 (= (++!17486 lt!2649592 lt!2649744) knownP!30)))

(declare-fun e!4504158 () List!72865)

(assert (=> d!2315777 (= lt!2649744 e!4504158)))

(declare-fun c!1395738 () Bool)

(assert (=> d!2315777 (= c!1395738 (is-Cons!72741 lt!2649592))))

(assert (=> d!2315777 (>= (size!42478 knownP!30) (size!42478 lt!2649592))))

(assert (=> d!2315777 (= (getSuffix!3666 knownP!30 lt!2649592) lt!2649744)))

(declare-fun b!7564416 () Bool)

(assert (=> b!7564416 (= e!4504158 (getSuffix!3666 (tail!15100 knownP!30) (t!387596 lt!2649592)))))

(declare-fun b!7564417 () Bool)

(assert (=> b!7564417 (= e!4504158 knownP!30)))

(assert (= (and d!2315777 c!1395738) b!7564416))

(assert (= (and d!2315777 (not c!1395738)) b!7564417))

(declare-fun m!8127042 () Bool)

(assert (=> d!2315777 m!8127042))

(assert (=> d!2315777 m!8126612))

(assert (=> d!2315777 m!8126636))

(assert (=> b!7564416 m!8126808))

(assert (=> b!7564416 m!8126808))

(declare-fun m!8127044 () Bool)

(assert (=> b!7564416 m!8127044))

(assert (=> b!7564045 d!2315777))

(declare-fun bm!693485 () Bool)

(declare-fun call!693493 () Regex!19982)

(declare-fun call!693492 () Regex!19982)

(assert (=> bm!693485 (= call!693493 call!693492)))

(declare-fun b!7564458 () Bool)

(declare-fun e!4504187 () Regex!19982)

(declare-fun call!693490 () Regex!19982)

(declare-fun call!693491 () Regex!19982)

(assert (=> b!7564458 (= e!4504187 (Union!19982 call!693490 call!693491))))

(declare-fun b!7564459 () Bool)

(declare-fun c!1395757 () Bool)

(assert (=> b!7564459 (= c!1395757 (is-Union!19982 r!24333))))

(declare-fun e!4504185 () Regex!19982)

(assert (=> b!7564459 (= e!4504185 e!4504187)))

(declare-fun c!1395756 () Bool)

(declare-fun bm!693486 () Bool)

(assert (=> bm!693486 (= call!693490 (derivativeStep!5760 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333))) lt!2649600))))

(declare-fun b!7564460 () Bool)

(declare-fun e!4504189 () Regex!19982)

(assert (=> b!7564460 (= e!4504189 (Union!19982 (Concat!28827 call!693493 (regTwo!40476 r!24333)) EmptyLang!19982))))

(declare-fun b!7564461 () Bool)

(declare-fun e!4504186 () Regex!19982)

(assert (=> b!7564461 (= e!4504186 EmptyLang!19982)))

(declare-fun d!2315779 () Bool)

(declare-fun lt!2649748 () Regex!19982)

(assert (=> d!2315779 (validRegex!10410 lt!2649748)))

(assert (=> d!2315779 (= lt!2649748 e!4504186)))

(declare-fun c!1395758 () Bool)

(assert (=> d!2315779 (= c!1395758 (or (is-EmptyExpr!19982 r!24333) (is-EmptyLang!19982 r!24333)))))

(assert (=> d!2315779 (validRegex!10410 r!24333)))

(assert (=> d!2315779 (= (derivativeStep!5760 r!24333 lt!2649600) lt!2649748)))

(declare-fun bm!693487 () Bool)

(assert (=> bm!693487 (= call!693492 call!693490)))

(declare-fun b!7564462 () Bool)

(assert (=> b!7564462 (= e!4504185 (ite (= lt!2649600 (c!1395677 r!24333)) EmptyExpr!19982 EmptyLang!19982))))

(declare-fun bm!693488 () Bool)

(assert (=> bm!693488 (= call!693491 (derivativeStep!5760 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333)) lt!2649600))))

(declare-fun b!7564463 () Bool)

(assert (=> b!7564463 (= e!4504186 e!4504185)))

(declare-fun c!1395759 () Bool)

(assert (=> b!7564463 (= c!1395759 (is-ElementMatch!19982 r!24333))))

(declare-fun b!7564464 () Bool)

(declare-fun e!4504188 () Regex!19982)

(assert (=> b!7564464 (= e!4504188 (Concat!28827 call!693492 r!24333))))

(declare-fun b!7564465 () Bool)

(declare-fun c!1395755 () Bool)

(assert (=> b!7564465 (= c!1395755 (nullable!8716 (regOne!40476 r!24333)))))

(assert (=> b!7564465 (= e!4504188 e!4504189)))

(declare-fun b!7564466 () Bool)

(assert (=> b!7564466 (= e!4504187 e!4504188)))

(assert (=> b!7564466 (= c!1395756 (is-Star!19982 r!24333))))

(declare-fun b!7564467 () Bool)

(assert (=> b!7564467 (= e!4504189 (Union!19982 (Concat!28827 call!693493 (regTwo!40476 r!24333)) call!693491))))

(assert (= (and d!2315779 c!1395758) b!7564461))

(assert (= (and d!2315779 (not c!1395758)) b!7564463))

(assert (= (and b!7564463 c!1395759) b!7564462))

(assert (= (and b!7564463 (not c!1395759)) b!7564459))

(assert (= (and b!7564459 c!1395757) b!7564458))

(assert (= (and b!7564459 (not c!1395757)) b!7564466))

(assert (= (and b!7564466 c!1395756) b!7564464))

(assert (= (and b!7564466 (not c!1395756)) b!7564465))

(assert (= (and b!7564465 c!1395755) b!7564467))

(assert (= (and b!7564465 (not c!1395755)) b!7564460))

(assert (= (or b!7564467 b!7564460) bm!693485))

(assert (= (or b!7564464 bm!693485) bm!693487))

(assert (= (or b!7564458 b!7564467) bm!693488))

(assert (= (or b!7564458 bm!693487) bm!693486))

(declare-fun m!8127062 () Bool)

(assert (=> bm!693486 m!8127062))

(declare-fun m!8127064 () Bool)

(assert (=> d!2315779 m!8127064))

(assert (=> d!2315779 m!8126644))

(declare-fun m!8127066 () Bool)

(assert (=> bm!693488 m!8127066))

(declare-fun m!8127068 () Bool)

(assert (=> b!7564465 m!8127068))

(assert (=> b!7564045 d!2315779))

(declare-fun d!2315789 () Bool)

(declare-fun e!4504191 () Bool)

(assert (=> d!2315789 e!4504191))

(declare-fun res!3030898 () Bool)

(assert (=> d!2315789 (=> res!3030898 e!4504191)))

(declare-fun lt!2649749 () Bool)

(assert (=> d!2315789 (= res!3030898 (not lt!2649749))))

(declare-fun e!4504190 () Bool)

(assert (=> d!2315789 (= lt!2649749 e!4504190)))

(declare-fun res!3030895 () Bool)

(assert (=> d!2315789 (=> res!3030895 e!4504190)))

(assert (=> d!2315789 (= res!3030895 (is-Nil!72741 lt!2649592))))

(assert (=> d!2315789 (= (isPrefix!6188 lt!2649592 input!7874) lt!2649749)))

(declare-fun b!7564470 () Bool)

(declare-fun e!4504192 () Bool)

(assert (=> b!7564470 (= e!4504192 (isPrefix!6188 (tail!15100 lt!2649592) (tail!15100 input!7874)))))

(declare-fun b!7564471 () Bool)

(assert (=> b!7564471 (= e!4504191 (>= (size!42478 input!7874) (size!42478 lt!2649592)))))

(declare-fun b!7564468 () Bool)

(assert (=> b!7564468 (= e!4504190 e!4504192)))

(declare-fun res!3030897 () Bool)

(assert (=> b!7564468 (=> (not res!3030897) (not e!4504192))))

(assert (=> b!7564468 (= res!3030897 (not (is-Nil!72741 input!7874)))))

(declare-fun b!7564469 () Bool)

(declare-fun res!3030896 () Bool)

(assert (=> b!7564469 (=> (not res!3030896) (not e!4504192))))

(assert (=> b!7564469 (= res!3030896 (= (head!15560 lt!2649592) (head!15560 input!7874)))))

(assert (= (and d!2315789 (not res!3030895)) b!7564468))

(assert (= (and b!7564468 res!3030897) b!7564469))

(assert (= (and b!7564469 res!3030896) b!7564470))

(assert (= (and d!2315789 (not res!3030898)) b!7564471))

(declare-fun m!8127070 () Bool)

(assert (=> b!7564470 m!8127070))

(assert (=> b!7564470 m!8126968))

(assert (=> b!7564470 m!8127070))

(assert (=> b!7564470 m!8126968))

(declare-fun m!8127072 () Bool)

(assert (=> b!7564470 m!8127072))

(assert (=> b!7564471 m!8126696))

(assert (=> b!7564471 m!8126636))

(declare-fun m!8127074 () Bool)

(assert (=> b!7564469 m!8127074))

(assert (=> b!7564469 m!8126972))

(assert (=> b!7564045 d!2315789))

(declare-fun d!2315791 () Bool)

(assert (=> d!2315791 (= (derivative!512 baseR!101 (++!17486 testedP!423 (Cons!72741 lt!2649600 Nil!72741))) (derivativeStep!5760 r!24333 lt!2649600))))

(declare-fun lt!2649754 () Unit!166898)

(declare-fun choose!58505 (Regex!19982 Regex!19982 List!72865 C!40290) Unit!166898)

(assert (=> d!2315791 (= lt!2649754 (choose!58505 baseR!101 r!24333 testedP!423 lt!2649600))))

(assert (=> d!2315791 (validRegex!10410 baseR!101)))

(assert (=> d!2315791 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!204 baseR!101 r!24333 testedP!423 lt!2649600) lt!2649754)))

(declare-fun bs!1940435 () Bool)

(assert (= bs!1940435 d!2315791))

(assert (=> bs!1940435 m!8126666))

(declare-fun m!8127076 () Bool)

(assert (=> bs!1940435 m!8127076))

(declare-fun m!8127078 () Bool)

(assert (=> bs!1940435 m!8127078))

(assert (=> bs!1940435 m!8126698))

(assert (=> bs!1940435 m!8127076))

(declare-fun m!8127080 () Bool)

(assert (=> bs!1940435 m!8127080))

(assert (=> b!7564045 d!2315791))

(declare-fun d!2315793 () Bool)

(assert (=> d!2315793 (isPrefix!6188 lt!2649592 knownP!30)))

(declare-fun lt!2649755 () Unit!166898)

(assert (=> d!2315793 (= lt!2649755 (choose!58502 knownP!30 lt!2649592 input!7874))))

(assert (=> d!2315793 (isPrefix!6188 knownP!30 input!7874)))

(assert (=> d!2315793 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!936 knownP!30 lt!2649592 input!7874) lt!2649755)))

(declare-fun bs!1940436 () Bool)

(assert (= bs!1940436 d!2315793))

(assert (=> bs!1940436 m!8126664))

(declare-fun m!8127082 () Bool)

(assert (=> bs!1940436 m!8127082))

(assert (=> bs!1940436 m!8126694))

(assert (=> b!7564045 d!2315793))

(declare-fun d!2315795 () Bool)

(assert (=> d!2315795 (isPrefix!6188 (++!17486 testedP!423 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741)) input!7874)))

(declare-fun lt!2649758 () Unit!166898)

(declare-fun choose!58506 (List!72865 List!72865) Unit!166898)

(assert (=> d!2315795 (= lt!2649758 (choose!58506 testedP!423 input!7874))))

(assert (=> d!2315795 (isPrefix!6188 testedP!423 input!7874)))

(assert (=> d!2315795 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1237 testedP!423 input!7874) lt!2649758)))

(declare-fun bs!1940437 () Bool)

(assert (= bs!1940437 d!2315795))

(declare-fun m!8127084 () Bool)

(assert (=> bs!1940437 m!8127084))

(assert (=> bs!1940437 m!8126682))

(declare-fun m!8127086 () Bool)

(assert (=> bs!1940437 m!8127086))

(declare-fun m!8127088 () Bool)

(assert (=> bs!1940437 m!8127088))

(assert (=> bs!1940437 m!8126616))

(assert (=> bs!1940437 m!8127088))

(declare-fun m!8127090 () Bool)

(assert (=> bs!1940437 m!8127090))

(assert (=> bs!1940437 m!8126682))

(assert (=> b!7564045 d!2315795))

(declare-fun d!2315797 () Bool)

(declare-fun lt!2649759 () Regex!19982)

(assert (=> d!2315797 (validRegex!10410 lt!2649759)))

(declare-fun e!4504199 () Regex!19982)

(assert (=> d!2315797 (= lt!2649759 e!4504199)))

(declare-fun c!1395761 () Bool)

(assert (=> d!2315797 (= c!1395761 (is-Cons!72741 lt!2649592))))

(assert (=> d!2315797 (validRegex!10410 baseR!101)))

(assert (=> d!2315797 (= (derivative!512 baseR!101 lt!2649592) lt!2649759)))

(declare-fun b!7564480 () Bool)

(assert (=> b!7564480 (= e!4504199 (derivative!512 (derivativeStep!5760 baseR!101 (h!79189 lt!2649592)) (t!387596 lt!2649592)))))

(declare-fun b!7564481 () Bool)

(assert (=> b!7564481 (= e!4504199 baseR!101)))

(assert (= (and d!2315797 c!1395761) b!7564480))

(assert (= (and d!2315797 (not c!1395761)) b!7564481))

(declare-fun m!8127092 () Bool)

(assert (=> d!2315797 m!8127092))

(assert (=> d!2315797 m!8126698))

(declare-fun m!8127094 () Bool)

(assert (=> b!7564480 m!8127094))

(assert (=> b!7564480 m!8127094))

(declare-fun m!8127096 () Bool)

(assert (=> b!7564480 m!8127096))

(assert (=> b!7564045 d!2315797))

(declare-fun d!2315799 () Bool)

(declare-fun e!4504202 () Bool)

(assert (=> d!2315799 e!4504202))

(declare-fun res!3030914 () Bool)

(assert (=> d!2315799 (=> res!3030914 e!4504202)))

(declare-fun lt!2649760 () Bool)

(assert (=> d!2315799 (= res!3030914 (not lt!2649760))))

(declare-fun e!4504200 () Bool)

(assert (=> d!2315799 (= lt!2649760 e!4504200)))

(declare-fun res!3030910 () Bool)

(assert (=> d!2315799 (=> res!3030910 e!4504200)))

(assert (=> d!2315799 (= res!3030910 (is-Nil!72741 lt!2649592))))

(assert (=> d!2315799 (= (isPrefix!6188 lt!2649592 knownP!30) lt!2649760)))

(declare-fun b!7564486 () Bool)

(declare-fun e!4504203 () Bool)

(assert (=> b!7564486 (= e!4504203 (isPrefix!6188 (tail!15100 lt!2649592) (tail!15100 knownP!30)))))

(declare-fun b!7564488 () Bool)

(assert (=> b!7564488 (= e!4504202 (>= (size!42478 knownP!30) (size!42478 lt!2649592)))))

(declare-fun b!7564483 () Bool)

(assert (=> b!7564483 (= e!4504200 e!4504203)))

(declare-fun res!3030913 () Bool)

(assert (=> b!7564483 (=> (not res!3030913) (not e!4504203))))

(assert (=> b!7564483 (= res!3030913 (not (is-Nil!72741 knownP!30)))))

(declare-fun b!7564484 () Bool)

(declare-fun res!3030912 () Bool)

(assert (=> b!7564484 (=> (not res!3030912) (not e!4504203))))

(assert (=> b!7564484 (= res!3030912 (= (head!15560 lt!2649592) (head!15560 knownP!30)))))

(assert (= (and d!2315799 (not res!3030910)) b!7564483))

(assert (= (and b!7564483 res!3030913) b!7564484))

(assert (= (and b!7564484 res!3030912) b!7564486))

(assert (= (and d!2315799 (not res!3030914)) b!7564488))

(assert (=> b!7564486 m!8127070))

(assert (=> b!7564486 m!8126808))

(assert (=> b!7564486 m!8127070))

(assert (=> b!7564486 m!8126808))

(declare-fun m!8127098 () Bool)

(assert (=> b!7564486 m!8127098))

(assert (=> b!7564488 m!8126612))

(assert (=> b!7564488 m!8126636))

(assert (=> b!7564484 m!8127074))

(assert (=> b!7564484 m!8126830))

(assert (=> b!7564045 d!2315799))

(declare-fun e!4504206 () Bool)

(declare-fun lt!2649762 () List!72865)

(declare-fun b!7564493 () Bool)

(assert (=> b!7564493 (= e!4504206 (or (not (= lt!2649594 Nil!72741)) (= lt!2649762 testedP!423)))))

(declare-fun d!2315801 () Bool)

(assert (=> d!2315801 e!4504206))

(declare-fun res!3030915 () Bool)

(assert (=> d!2315801 (=> (not res!3030915) (not e!4504206))))

(assert (=> d!2315801 (= res!3030915 (= (content!15403 lt!2649762) (set.union (content!15403 testedP!423) (content!15403 lt!2649594))))))

(declare-fun e!4504207 () List!72865)

(assert (=> d!2315801 (= lt!2649762 e!4504207)))

(declare-fun c!1395762 () Bool)

(assert (=> d!2315801 (= c!1395762 (is-Nil!72741 testedP!423))))

(assert (=> d!2315801 (= (++!17486 testedP!423 lt!2649594) lt!2649762)))

(declare-fun b!7564492 () Bool)

(declare-fun res!3030916 () Bool)

(assert (=> b!7564492 (=> (not res!3030916) (not e!4504206))))

(assert (=> b!7564492 (= res!3030916 (= (size!42478 lt!2649762) (+ (size!42478 testedP!423) (size!42478 lt!2649594))))))

(declare-fun b!7564491 () Bool)

(assert (=> b!7564491 (= e!4504207 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) lt!2649594)))))

(declare-fun b!7564490 () Bool)

(assert (=> b!7564490 (= e!4504207 lt!2649594)))

(assert (= (and d!2315801 c!1395762) b!7564490))

(assert (= (and d!2315801 (not c!1395762)) b!7564491))

(assert (= (and d!2315801 res!3030915) b!7564492))

(assert (= (and b!7564492 res!3030916) b!7564493))

(declare-fun m!8127102 () Bool)

(assert (=> d!2315801 m!8127102))

(assert (=> d!2315801 m!8126852))

(assert (=> d!2315801 m!8126948))

(declare-fun m!8127106 () Bool)

(assert (=> b!7564492 m!8127106))

(assert (=> b!7564492 m!8126610))

(assert (=> b!7564492 m!8126954))

(declare-fun m!8127108 () Bool)

(assert (=> b!7564491 m!8127108))

(assert (=> b!7564045 d!2315801))

(declare-fun b!7564497 () Bool)

(declare-fun e!4504208 () Bool)

(declare-fun lt!2649763 () List!72865)

(assert (=> b!7564497 (= e!4504208 (or (not (= lt!2649589 Nil!72741)) (= lt!2649763 knownP!30)))))

(declare-fun d!2315803 () Bool)

(assert (=> d!2315803 e!4504208))

(declare-fun res!3030917 () Bool)

(assert (=> d!2315803 (=> (not res!3030917) (not e!4504208))))

(assert (=> d!2315803 (= res!3030917 (= (content!15403 lt!2649763) (set.union (content!15403 knownP!30) (content!15403 lt!2649589))))))

(declare-fun e!4504209 () List!72865)

(assert (=> d!2315803 (= lt!2649763 e!4504209)))

(declare-fun c!1395763 () Bool)

(assert (=> d!2315803 (= c!1395763 (is-Nil!72741 knownP!30))))

(assert (=> d!2315803 (= (++!17486 knownP!30 lt!2649589) lt!2649763)))

(declare-fun b!7564496 () Bool)

(declare-fun res!3030918 () Bool)

(assert (=> b!7564496 (=> (not res!3030918) (not e!4504208))))

(assert (=> b!7564496 (= res!3030918 (= (size!42478 lt!2649763) (+ (size!42478 knownP!30) (size!42478 lt!2649589))))))

(declare-fun b!7564495 () Bool)

(assert (=> b!7564495 (= e!4504209 (Cons!72741 (h!79189 knownP!30) (++!17486 (t!387596 knownP!30) lt!2649589)))))

(declare-fun b!7564494 () Bool)

(assert (=> b!7564494 (= e!4504209 lt!2649589)))

(assert (= (and d!2315803 c!1395763) b!7564494))

(assert (= (and d!2315803 (not c!1395763)) b!7564495))

(assert (= (and d!2315803 res!3030917) b!7564496))

(assert (= (and b!7564496 res!3030918) b!7564497))

(declare-fun m!8127116 () Bool)

(assert (=> d!2315803 m!8127116))

(declare-fun m!8127118 () Bool)

(assert (=> d!2315803 m!8127118))

(assert (=> d!2315803 m!8126840))

(declare-fun m!8127120 () Bool)

(assert (=> b!7564496 m!8127120))

(assert (=> b!7564496 m!8126612))

(assert (=> b!7564496 m!8126846))

(declare-fun m!8127122 () Bool)

(assert (=> b!7564495 m!8127122))

(assert (=> b!7564045 d!2315803))

(declare-fun d!2315807 () Bool)

(declare-fun lt!2649764 () List!72865)

(assert (=> d!2315807 (= (++!17486 knownP!30 lt!2649764) input!7874)))

(declare-fun e!4504210 () List!72865)

(assert (=> d!2315807 (= lt!2649764 e!4504210)))

(declare-fun c!1395764 () Bool)

(assert (=> d!2315807 (= c!1395764 (is-Cons!72741 knownP!30))))

(assert (=> d!2315807 (>= (size!42478 input!7874) (size!42478 knownP!30))))

(assert (=> d!2315807 (= (getSuffix!3666 input!7874 knownP!30) lt!2649764)))

(declare-fun b!7564498 () Bool)

(assert (=> b!7564498 (= e!4504210 (getSuffix!3666 (tail!15100 input!7874) (t!387596 knownP!30)))))

(declare-fun b!7564499 () Bool)

(assert (=> b!7564499 (= e!4504210 input!7874)))

(assert (= (and d!2315807 c!1395764) b!7564498))

(assert (= (and d!2315807 (not c!1395764)) b!7564499))

(declare-fun m!8127124 () Bool)

(assert (=> d!2315807 m!8127124))

(assert (=> d!2315807 m!8126696))

(assert (=> d!2315807 m!8126612))

(assert (=> b!7564498 m!8126968))

(assert (=> b!7564498 m!8126968))

(declare-fun m!8127126 () Bool)

(assert (=> b!7564498 m!8127126))

(assert (=> b!7564045 d!2315807))

(declare-fun d!2315809 () Bool)

(declare-fun lt!2649765 () Int)

(assert (=> d!2315809 (>= lt!2649765 0)))

(declare-fun e!4504211 () Int)

(assert (=> d!2315809 (= lt!2649765 e!4504211)))

(declare-fun c!1395765 () Bool)

(assert (=> d!2315809 (= c!1395765 (is-Nil!72741 testedP!423))))

(assert (=> d!2315809 (= (size!42478 testedP!423) lt!2649765)))

(declare-fun b!7564500 () Bool)

(assert (=> b!7564500 (= e!4504211 0)))

(declare-fun b!7564501 () Bool)

(assert (=> b!7564501 (= e!4504211 (+ 1 (size!42478 (t!387596 testedP!423))))))

(assert (= (and d!2315809 c!1395765) b!7564500))

(assert (= (and d!2315809 (not c!1395765)) b!7564501))

(declare-fun m!8127128 () Bool)

(assert (=> b!7564501 m!8127128))

(assert (=> b!7564056 d!2315809))

(declare-fun d!2315811 () Bool)

(declare-fun lt!2649766 () Int)

(assert (=> d!2315811 (>= lt!2649766 0)))

(declare-fun e!4504212 () Int)

(assert (=> d!2315811 (= lt!2649766 e!4504212)))

(declare-fun c!1395766 () Bool)

(assert (=> d!2315811 (= c!1395766 (is-Nil!72741 knownP!30))))

(assert (=> d!2315811 (= (size!42478 knownP!30) lt!2649766)))

(declare-fun b!7564502 () Bool)

(assert (=> b!7564502 (= e!4504212 0)))

(declare-fun b!7564503 () Bool)

(assert (=> b!7564503 (= e!4504212 (+ 1 (size!42478 (t!387596 knownP!30))))))

(assert (= (and d!2315811 c!1395766) b!7564502))

(assert (= (and d!2315811 (not c!1395766)) b!7564503))

(declare-fun m!8127130 () Bool)

(assert (=> b!7564503 m!8127130))

(assert (=> b!7564056 d!2315811))

(declare-fun d!2315813 () Bool)

(assert (=> d!2315813 (= ($colon$colon!3410 lt!2649595 lt!2649600) (Cons!72741 lt!2649600 lt!2649595))))

(assert (=> b!7564035 d!2315813))

(declare-fun d!2315815 () Bool)

(assert (=> d!2315815 (= (tail!15100 lt!2649585) (t!387596 lt!2649585))))

(assert (=> b!7564035 d!2315815))

(declare-fun b!7564516 () Bool)

(declare-fun e!4504215 () Bool)

(declare-fun tp!2202989 () Bool)

(assert (=> b!7564516 (= e!4504215 tp!2202989)))

(declare-fun b!7564514 () Bool)

(assert (=> b!7564514 (= e!4504215 tp_is_empty!50319)))

(assert (=> b!7564048 (= tp!2202925 e!4504215)))

(declare-fun b!7564515 () Bool)

(declare-fun tp!2202990 () Bool)

(declare-fun tp!2202987 () Bool)

(assert (=> b!7564515 (= e!4504215 (and tp!2202990 tp!2202987))))

(declare-fun b!7564517 () Bool)

(declare-fun tp!2202986 () Bool)

(declare-fun tp!2202988 () Bool)

(assert (=> b!7564517 (= e!4504215 (and tp!2202986 tp!2202988))))

(assert (= (and b!7564048 (is-ElementMatch!19982 (reg!20311 r!24333))) b!7564514))

(assert (= (and b!7564048 (is-Concat!28827 (reg!20311 r!24333))) b!7564515))

(assert (= (and b!7564048 (is-Star!19982 (reg!20311 r!24333))) b!7564516))

(assert (= (and b!7564048 (is-Union!19982 (reg!20311 r!24333))) b!7564517))

(declare-fun b!7564520 () Bool)

(declare-fun e!4504216 () Bool)

(declare-fun tp!2202994 () Bool)

(assert (=> b!7564520 (= e!4504216 tp!2202994)))

(declare-fun b!7564518 () Bool)

(assert (=> b!7564518 (= e!4504216 tp_is_empty!50319)))

(assert (=> b!7564038 (= tp!2202929 e!4504216)))

(declare-fun b!7564519 () Bool)

(declare-fun tp!2202995 () Bool)

(declare-fun tp!2202992 () Bool)

(assert (=> b!7564519 (= e!4504216 (and tp!2202995 tp!2202992))))

(declare-fun b!7564521 () Bool)

(declare-fun tp!2202991 () Bool)

(declare-fun tp!2202993 () Bool)

(assert (=> b!7564521 (= e!4504216 (and tp!2202991 tp!2202993))))

(assert (= (and b!7564038 (is-ElementMatch!19982 (regOne!40476 baseR!101))) b!7564518))

(assert (= (and b!7564038 (is-Concat!28827 (regOne!40476 baseR!101))) b!7564519))

(assert (= (and b!7564038 (is-Star!19982 (regOne!40476 baseR!101))) b!7564520))

(assert (= (and b!7564038 (is-Union!19982 (regOne!40476 baseR!101))) b!7564521))

(declare-fun b!7564524 () Bool)

(declare-fun e!4504217 () Bool)

(declare-fun tp!2202999 () Bool)

(assert (=> b!7564524 (= e!4504217 tp!2202999)))

(declare-fun b!7564522 () Bool)

(assert (=> b!7564522 (= e!4504217 tp_is_empty!50319)))

(assert (=> b!7564038 (= tp!2202934 e!4504217)))

(declare-fun b!7564523 () Bool)

(declare-fun tp!2203000 () Bool)

(declare-fun tp!2202997 () Bool)

(assert (=> b!7564523 (= e!4504217 (and tp!2203000 tp!2202997))))

(declare-fun b!7564525 () Bool)

(declare-fun tp!2202996 () Bool)

(declare-fun tp!2202998 () Bool)

(assert (=> b!7564525 (= e!4504217 (and tp!2202996 tp!2202998))))

(assert (= (and b!7564038 (is-ElementMatch!19982 (regTwo!40476 baseR!101))) b!7564522))

(assert (= (and b!7564038 (is-Concat!28827 (regTwo!40476 baseR!101))) b!7564523))

(assert (= (and b!7564038 (is-Star!19982 (regTwo!40476 baseR!101))) b!7564524))

(assert (= (and b!7564038 (is-Union!19982 (regTwo!40476 baseR!101))) b!7564525))

(declare-fun b!7564530 () Bool)

(declare-fun e!4504220 () Bool)

(declare-fun tp!2203003 () Bool)

(assert (=> b!7564530 (= e!4504220 (and tp_is_empty!50319 tp!2203003))))

(assert (=> b!7564033 (= tp!2202935 e!4504220)))

(assert (= (and b!7564033 (is-Cons!72741 (t!387596 input!7874))) b!7564530))

(declare-fun b!7564531 () Bool)

(declare-fun e!4504221 () Bool)

(declare-fun tp!2203004 () Bool)

(assert (=> b!7564531 (= e!4504221 (and tp_is_empty!50319 tp!2203004))))

(assert (=> b!7564039 (= tp!2202927 e!4504221)))

(assert (= (and b!7564039 (is-Cons!72741 (t!387596 knownP!30))) b!7564531))

(declare-fun b!7564534 () Bool)

(declare-fun e!4504222 () Bool)

(declare-fun tp!2203008 () Bool)

(assert (=> b!7564534 (= e!4504222 tp!2203008)))

(declare-fun b!7564532 () Bool)

(assert (=> b!7564532 (= e!4504222 tp_is_empty!50319)))

(assert (=> b!7564051 (= tp!2202930 e!4504222)))

(declare-fun b!7564533 () Bool)

(declare-fun tp!2203009 () Bool)

(declare-fun tp!2203006 () Bool)

(assert (=> b!7564533 (= e!4504222 (and tp!2203009 tp!2203006))))

(declare-fun b!7564535 () Bool)

(declare-fun tp!2203005 () Bool)

(declare-fun tp!2203007 () Bool)

(assert (=> b!7564535 (= e!4504222 (and tp!2203005 tp!2203007))))

(assert (= (and b!7564051 (is-ElementMatch!19982 (reg!20311 baseR!101))) b!7564532))

(assert (= (and b!7564051 (is-Concat!28827 (reg!20311 baseR!101))) b!7564533))

(assert (= (and b!7564051 (is-Star!19982 (reg!20311 baseR!101))) b!7564534))

(assert (= (and b!7564051 (is-Union!19982 (reg!20311 baseR!101))) b!7564535))

(declare-fun b!7564538 () Bool)

(declare-fun e!4504223 () Bool)

(declare-fun tp!2203013 () Bool)

(assert (=> b!7564538 (= e!4504223 tp!2203013)))

(declare-fun b!7564536 () Bool)

(assert (=> b!7564536 (= e!4504223 tp_is_empty!50319)))

(assert (=> b!7564030 (= tp!2202926 e!4504223)))

(declare-fun b!7564537 () Bool)

(declare-fun tp!2203014 () Bool)

(declare-fun tp!2203011 () Bool)

(assert (=> b!7564537 (= e!4504223 (and tp!2203014 tp!2203011))))

(declare-fun b!7564539 () Bool)

(declare-fun tp!2203010 () Bool)

(declare-fun tp!2203012 () Bool)

(assert (=> b!7564539 (= e!4504223 (and tp!2203010 tp!2203012))))

(assert (= (and b!7564030 (is-ElementMatch!19982 (regOne!40476 r!24333))) b!7564536))

(assert (= (and b!7564030 (is-Concat!28827 (regOne!40476 r!24333))) b!7564537))

(assert (= (and b!7564030 (is-Star!19982 (regOne!40476 r!24333))) b!7564538))

(assert (= (and b!7564030 (is-Union!19982 (regOne!40476 r!24333))) b!7564539))

(declare-fun b!7564542 () Bool)

(declare-fun e!4504224 () Bool)

(declare-fun tp!2203018 () Bool)

(assert (=> b!7564542 (= e!4504224 tp!2203018)))

(declare-fun b!7564540 () Bool)

(assert (=> b!7564540 (= e!4504224 tp_is_empty!50319)))

(assert (=> b!7564030 (= tp!2202936 e!4504224)))

(declare-fun b!7564541 () Bool)

(declare-fun tp!2203019 () Bool)

(declare-fun tp!2203016 () Bool)

(assert (=> b!7564541 (= e!4504224 (and tp!2203019 tp!2203016))))

(declare-fun b!7564543 () Bool)

(declare-fun tp!2203015 () Bool)

(declare-fun tp!2203017 () Bool)

(assert (=> b!7564543 (= e!4504224 (and tp!2203015 tp!2203017))))

(assert (= (and b!7564030 (is-ElementMatch!19982 (regTwo!40476 r!24333))) b!7564540))

(assert (= (and b!7564030 (is-Concat!28827 (regTwo!40476 r!24333))) b!7564541))

(assert (= (and b!7564030 (is-Star!19982 (regTwo!40476 r!24333))) b!7564542))

(assert (= (and b!7564030 (is-Union!19982 (regTwo!40476 r!24333))) b!7564543))

(declare-fun b!7564544 () Bool)

(declare-fun e!4504225 () Bool)

(declare-fun tp!2203020 () Bool)

(assert (=> b!7564544 (= e!4504225 (and tp_is_empty!50319 tp!2203020))))

(assert (=> b!7564041 (= tp!2202932 e!4504225)))

(assert (= (and b!7564041 (is-Cons!72741 (t!387596 testedP!423))) b!7564544))

(declare-fun b!7564547 () Bool)

(declare-fun e!4504226 () Bool)

(declare-fun tp!2203024 () Bool)

(assert (=> b!7564547 (= e!4504226 tp!2203024)))

(declare-fun b!7564545 () Bool)

(assert (=> b!7564545 (= e!4504226 tp_is_empty!50319)))

(assert (=> b!7564057 (= tp!2202933 e!4504226)))

(declare-fun b!7564546 () Bool)

(declare-fun tp!2203025 () Bool)

(declare-fun tp!2203022 () Bool)

(assert (=> b!7564546 (= e!4504226 (and tp!2203025 tp!2203022))))

(declare-fun b!7564548 () Bool)

(declare-fun tp!2203021 () Bool)

(declare-fun tp!2203023 () Bool)

(assert (=> b!7564548 (= e!4504226 (and tp!2203021 tp!2203023))))

(assert (= (and b!7564057 (is-ElementMatch!19982 (regOne!40477 baseR!101))) b!7564545))

(assert (= (and b!7564057 (is-Concat!28827 (regOne!40477 baseR!101))) b!7564546))

(assert (= (and b!7564057 (is-Star!19982 (regOne!40477 baseR!101))) b!7564547))

(assert (= (and b!7564057 (is-Union!19982 (regOne!40477 baseR!101))) b!7564548))

(declare-fun b!7564551 () Bool)

(declare-fun e!4504227 () Bool)

(declare-fun tp!2203029 () Bool)

(assert (=> b!7564551 (= e!4504227 tp!2203029)))

(declare-fun b!7564549 () Bool)

(assert (=> b!7564549 (= e!4504227 tp_is_empty!50319)))

(assert (=> b!7564057 (= tp!2202931 e!4504227)))

(declare-fun b!7564550 () Bool)

(declare-fun tp!2203030 () Bool)

(declare-fun tp!2203027 () Bool)

(assert (=> b!7564550 (= e!4504227 (and tp!2203030 tp!2203027))))

(declare-fun b!7564552 () Bool)

(declare-fun tp!2203026 () Bool)

(declare-fun tp!2203028 () Bool)

(assert (=> b!7564552 (= e!4504227 (and tp!2203026 tp!2203028))))

(assert (= (and b!7564057 (is-ElementMatch!19982 (regTwo!40477 baseR!101))) b!7564549))

(assert (= (and b!7564057 (is-Concat!28827 (regTwo!40477 baseR!101))) b!7564550))

(assert (= (and b!7564057 (is-Star!19982 (regTwo!40477 baseR!101))) b!7564551))

(assert (= (and b!7564057 (is-Union!19982 (regTwo!40477 baseR!101))) b!7564552))

(declare-fun b!7564555 () Bool)

(declare-fun e!4504228 () Bool)

(declare-fun tp!2203034 () Bool)

(assert (=> b!7564555 (= e!4504228 tp!2203034)))

(declare-fun b!7564553 () Bool)

(assert (=> b!7564553 (= e!4504228 tp_is_empty!50319)))

(assert (=> b!7564036 (= tp!2202924 e!4504228)))

(declare-fun b!7564554 () Bool)

(declare-fun tp!2203035 () Bool)

(declare-fun tp!2203032 () Bool)

(assert (=> b!7564554 (= e!4504228 (and tp!2203035 tp!2203032))))

(declare-fun b!7564556 () Bool)

(declare-fun tp!2203031 () Bool)

(declare-fun tp!2203033 () Bool)

(assert (=> b!7564556 (= e!4504228 (and tp!2203031 tp!2203033))))

(assert (= (and b!7564036 (is-ElementMatch!19982 (regOne!40477 r!24333))) b!7564553))

(assert (= (and b!7564036 (is-Concat!28827 (regOne!40477 r!24333))) b!7564554))

(assert (= (and b!7564036 (is-Star!19982 (regOne!40477 r!24333))) b!7564555))

(assert (= (and b!7564036 (is-Union!19982 (regOne!40477 r!24333))) b!7564556))

(declare-fun b!7564563 () Bool)

(declare-fun e!4504231 () Bool)

(declare-fun tp!2203039 () Bool)

(assert (=> b!7564563 (= e!4504231 tp!2203039)))

(declare-fun b!7564561 () Bool)

(assert (=> b!7564561 (= e!4504231 tp_is_empty!50319)))

(assert (=> b!7564036 (= tp!2202928 e!4504231)))

(declare-fun b!7564562 () Bool)

(declare-fun tp!2203040 () Bool)

(declare-fun tp!2203037 () Bool)

(assert (=> b!7564562 (= e!4504231 (and tp!2203040 tp!2203037))))

(declare-fun b!7564564 () Bool)

(declare-fun tp!2203036 () Bool)

(declare-fun tp!2203038 () Bool)

(assert (=> b!7564564 (= e!4504231 (and tp!2203036 tp!2203038))))

(assert (= (and b!7564036 (is-ElementMatch!19982 (regTwo!40477 r!24333))) b!7564561))

(assert (= (and b!7564036 (is-Concat!28827 (regTwo!40477 r!24333))) b!7564562))

(assert (= (and b!7564036 (is-Star!19982 (regTwo!40477 r!24333))) b!7564563))

(assert (= (and b!7564036 (is-Union!19982 (regTwo!40477 r!24333))) b!7564564))

(push 1)

(assert (not b!7564188))

(assert (not b!7564525))

(assert (not b!7564534))

(assert (not b!7564551))

(assert (not d!2315777))

(assert (not d!2315763))

(assert (not d!2315727))

(assert (not b!7564410))

(assert (not b!7564296))

(assert (not b!7564542))

(assert (not b!7564355))

(assert (not d!2315729))

(assert (not b!7564363))

(assert (not b!7564465))

(assert (not b!7564358))

(assert tp_is_empty!50319)

(assert (not b!7564395))

(assert (not b!7564261))

(assert (not b!7564503))

(assert (not d!2315795))

(assert (not b!7564524))

(assert (not b!7564564))

(assert (not b!7564544))

(assert (not b!7564234))

(assert (not b!7564230))

(assert (not d!2315757))

(assert (not bm!693486))

(assert (not bm!693453))

(assert (not d!2315769))

(assert (not b!7564401))

(assert (not b!7564552))

(assert (not b!7564389))

(assert (not d!2315721))

(assert (not b!7564471))

(assert (not b!7564562))

(assert (not b!7564543))

(assert (not b!7564531))

(assert (not b!7564523))

(assert (not bm!693450))

(assert (not b!7564521))

(assert (not b!7564374))

(assert (not b!7564516))

(assert (not b!7564262))

(assert (not d!2315791))

(assert (not b!7564405))

(assert (not b!7564556))

(assert (not b!7564260))

(assert (not bm!693467))

(assert (not b!7564486))

(assert (not d!2315797))

(assert (not b!7564318))

(assert (not b!7564316))

(assert (not b!7564539))

(assert (not b!7564381))

(assert (not b!7564547))

(assert (not b!7564470))

(assert (not b!7564340))

(assert (not b!7564555))

(assert (not b!7564520))

(assert (not b!7564548))

(assert (not b!7564232))

(assert (not b!7564546))

(assert (not b!7564364))

(assert (not b!7564501))

(assert (not b!7564484))

(assert (not d!2315803))

(assert (not b!7564469))

(assert (not d!2315753))

(assert (not b!7564403))

(assert (not d!2315775))

(assert (not b!7564354))

(assert (not b!7564515))

(assert (not d!2315749))

(assert (not bm!693470))

(assert (not d!2315739))

(assert (not b!7564319))

(assert (not b!7564300))

(assert (not b!7564407))

(assert (not d!2315747))

(assert (not b!7564323))

(assert (not b!7564537))

(assert (not d!2315719))

(assert (not bm!693460))

(assert (not b!7564372))

(assert (not b!7564359))

(assert (not b!7564306))

(assert (not b!7564397))

(assert (not b!7564308))

(assert (not d!2315723))

(assert (not bm!693464))

(assert (not b!7564416))

(assert (not d!2315745))

(assert (not b!7564310))

(assert (not d!2315731))

(assert (not d!2315779))

(assert (not d!2315715))

(assert (not b!7564563))

(assert (not d!2315705))

(assert (not b!7564492))

(assert (not b!7564228))

(assert (not b!7564538))

(assert (not b!7564496))

(assert (not b!7564517))

(assert (not b!7564362))

(assert (not b!7564373))

(assert (not b!7564301))

(assert (not b!7564498))

(assert (not d!2315801))

(assert (not b!7564491))

(assert (not d!2315793))

(assert (not b!7564380))

(assert (not b!7564348))

(assert (not b!7564408))

(assert (not b!7564399))

(assert (not b!7564369))

(assert (not b!7564322))

(assert (not bm!693448))

(assert (not d!2315771))

(assert (not b!7564245))

(assert (not b!7564297))

(assert (not d!2315807))

(assert (not bm!693466))

(assert (not b!7564488))

(assert (not b!7564535))

(assert (not b!7564226))

(assert (not d!2315709))

(assert (not b!7564533))

(assert (not b!7564550))

(assert (not bm!693488))

(assert (not b!7564541))

(assert (not b!7564312))

(assert (not b!7564480))

(assert (not bm!693469))

(assert (not b!7564284))

(assert (not b!7564519))

(assert (not b!7564554))

(assert (not b!7564495))

(assert (not b!7564530))

(assert (not b!7564314))

(assert (not b!7564236))

(assert (not d!2315725))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2315883 () Bool)

(declare-fun nullableFct!3477 (Regex!19982) Bool)

(assert (=> d!2315883 (= (nullable!8716 lt!2649591) (nullableFct!3477 lt!2649591))))

(declare-fun bs!1940445 () Bool)

(assert (= bs!1940445 d!2315883))

(declare-fun m!8127302 () Bool)

(assert (=> bs!1940445 m!8127302))

(assert (=> b!7564403 d!2315883))

(declare-fun d!2315885 () Bool)

(declare-fun lt!2649813 () Int)

(assert (=> d!2315885 (>= lt!2649813 0)))

(declare-fun e!4504334 () Int)

(assert (=> d!2315885 (= lt!2649813 e!4504334)))

(declare-fun c!1395817 () Bool)

(assert (=> d!2315885 (= c!1395817 (is-Nil!72741 lt!2649725))))

(assert (=> d!2315885 (= (size!42478 lt!2649725) lt!2649813)))

(declare-fun b!7564784 () Bool)

(assert (=> b!7564784 (= e!4504334 0)))

(declare-fun b!7564785 () Bool)

(assert (=> b!7564785 (= e!4504334 (+ 1 (size!42478 (t!387596 lt!2649725))))))

(assert (= (and d!2315885 c!1395817) b!7564784))

(assert (= (and d!2315885 (not c!1395817)) b!7564785))

(declare-fun m!8127304 () Bool)

(assert (=> b!7564785 m!8127304))

(assert (=> b!7564355 d!2315885))

(assert (=> b!7564355 d!2315809))

(declare-fun d!2315887 () Bool)

(declare-fun lt!2649814 () Int)

(assert (=> d!2315887 (>= lt!2649814 0)))

(declare-fun e!4504335 () Int)

(assert (=> d!2315887 (= lt!2649814 e!4504335)))

(declare-fun c!1395818 () Bool)

(assert (=> d!2315887 (= c!1395818 (is-Nil!72741 lt!2649586))))

(assert (=> d!2315887 (= (size!42478 lt!2649586) lt!2649814)))

(declare-fun b!7564786 () Bool)

(assert (=> b!7564786 (= e!4504335 0)))

(declare-fun b!7564787 () Bool)

(assert (=> b!7564787 (= e!4504335 (+ 1 (size!42478 (t!387596 lt!2649586))))))

(assert (= (and d!2315887 c!1395818) b!7564786))

(assert (= (and d!2315887 (not c!1395818)) b!7564787))

(declare-fun m!8127306 () Bool)

(assert (=> b!7564787 m!8127306))

(assert (=> b!7564355 d!2315887))

(declare-fun d!2315889 () Bool)

(assert (=> d!2315889 (= (head!15560 lt!2649592) (h!79189 lt!2649592))))

(assert (=> b!7564469 d!2315889))

(declare-fun d!2315891 () Bool)

(assert (=> d!2315891 (= (head!15560 input!7874) (h!79189 input!7874))))

(assert (=> b!7564469 d!2315891))

(declare-fun d!2315893 () Bool)

(assert (=> d!2315893 (= (head!15560 knownP!30) (h!79189 knownP!30))))

(assert (=> b!7564306 d!2315893))

(declare-fun e!4504336 () Bool)

(declare-fun b!7564791 () Bool)

(declare-fun lt!2649815 () List!72865)

(assert (=> b!7564791 (= e!4504336 (or (not (= lt!2649608 Nil!72741)) (= lt!2649815 (t!387596 lt!2649594))))))

(declare-fun d!2315895 () Bool)

(assert (=> d!2315895 e!4504336))

(declare-fun res!3030987 () Bool)

(assert (=> d!2315895 (=> (not res!3030987) (not e!4504336))))

(assert (=> d!2315895 (= res!3030987 (= (content!15403 lt!2649815) (set.union (content!15403 (t!387596 lt!2649594)) (content!15403 lt!2649608))))))

(declare-fun e!4504337 () List!72865)

(assert (=> d!2315895 (= lt!2649815 e!4504337)))

(declare-fun c!1395819 () Bool)

(assert (=> d!2315895 (= c!1395819 (is-Nil!72741 (t!387596 lt!2649594)))))

(assert (=> d!2315895 (= (++!17486 (t!387596 lt!2649594) lt!2649608) lt!2649815)))

(declare-fun b!7564790 () Bool)

(declare-fun res!3030988 () Bool)

(assert (=> b!7564790 (=> (not res!3030988) (not e!4504336))))

(assert (=> b!7564790 (= res!3030988 (= (size!42478 lt!2649815) (+ (size!42478 (t!387596 lt!2649594)) (size!42478 lt!2649608))))))

(declare-fun b!7564789 () Bool)

(assert (=> b!7564789 (= e!4504337 (Cons!72741 (h!79189 (t!387596 lt!2649594)) (++!17486 (t!387596 (t!387596 lt!2649594)) lt!2649608)))))

(declare-fun b!7564788 () Bool)

(assert (=> b!7564788 (= e!4504337 lt!2649608)))

(assert (= (and d!2315895 c!1395819) b!7564788))

(assert (= (and d!2315895 (not c!1395819)) b!7564789))

(assert (= (and d!2315895 res!3030987) b!7564790))

(assert (= (and b!7564790 res!3030988) b!7564791))

(declare-fun m!8127308 () Bool)

(assert (=> d!2315895 m!8127308))

(declare-fun m!8127310 () Bool)

(assert (=> d!2315895 m!8127310))

(assert (=> d!2315895 m!8126950))

(declare-fun m!8127312 () Bool)

(assert (=> b!7564790 m!8127312))

(declare-fun m!8127314 () Bool)

(assert (=> b!7564790 m!8127314))

(assert (=> b!7564790 m!8126956))

(declare-fun m!8127316 () Bool)

(assert (=> b!7564789 m!8127316))

(assert (=> b!7564358 d!2315895))

(declare-fun d!2315897 () Bool)

(assert (=> d!2315897 (= (head!15560 testedP!423) (h!79189 testedP!423))))

(assert (=> b!7564260 d!2315897))

(assert (=> b!7564260 d!2315893))

(declare-fun b!7564795 () Bool)

(declare-fun lt!2649816 () List!72865)

(declare-fun e!4504338 () Bool)

(assert (=> b!7564795 (= e!4504338 (or (not (= lt!2649589 Nil!72741)) (= lt!2649816 (++!17486 testedP!423 lt!2649585))))))

(declare-fun d!2315899 () Bool)

(assert (=> d!2315899 e!4504338))

(declare-fun res!3030989 () Bool)

(assert (=> d!2315899 (=> (not res!3030989) (not e!4504338))))

(assert (=> d!2315899 (= res!3030989 (= (content!15403 lt!2649816) (set.union (content!15403 (++!17486 testedP!423 lt!2649585)) (content!15403 lt!2649589))))))

(declare-fun e!4504339 () List!72865)

(assert (=> d!2315899 (= lt!2649816 e!4504339)))

(declare-fun c!1395820 () Bool)

(assert (=> d!2315899 (= c!1395820 (is-Nil!72741 (++!17486 testedP!423 lt!2649585)))))

(assert (=> d!2315899 (= (++!17486 (++!17486 testedP!423 lt!2649585) lt!2649589) lt!2649816)))

(declare-fun b!7564794 () Bool)

(declare-fun res!3030990 () Bool)

(assert (=> b!7564794 (=> (not res!3030990) (not e!4504338))))

(assert (=> b!7564794 (= res!3030990 (= (size!42478 lt!2649816) (+ (size!42478 (++!17486 testedP!423 lt!2649585)) (size!42478 lt!2649589))))))

(declare-fun b!7564793 () Bool)

(assert (=> b!7564793 (= e!4504339 (Cons!72741 (h!79189 (++!17486 testedP!423 lt!2649585)) (++!17486 (t!387596 (++!17486 testedP!423 lt!2649585)) lt!2649589)))))

(declare-fun b!7564792 () Bool)

(assert (=> b!7564792 (= e!4504339 lt!2649589)))

(assert (= (and d!2315899 c!1395820) b!7564792))

(assert (= (and d!2315899 (not c!1395820)) b!7564793))

(assert (= (and d!2315899 res!3030989) b!7564794))

(assert (= (and b!7564794 res!3030990) b!7564795))

(declare-fun m!8127318 () Bool)

(assert (=> d!2315899 m!8127318))

(assert (=> d!2315899 m!8126690))

(declare-fun m!8127320 () Bool)

(assert (=> d!2315899 m!8127320))

(assert (=> d!2315899 m!8126840))

(declare-fun m!8127322 () Bool)

(assert (=> b!7564794 m!8127322))

(assert (=> b!7564794 m!8126690))

(declare-fun m!8127324 () Bool)

(assert (=> b!7564794 m!8127324))

(assert (=> b!7564794 m!8126846))

(declare-fun m!8127326 () Bool)

(assert (=> b!7564793 m!8127326))

(assert (=> d!2315731 d!2315899))

(assert (=> d!2315731 d!2315729))

(declare-fun b!7564799 () Bool)

(declare-fun e!4504340 () Bool)

(declare-fun lt!2649817 () List!72865)

(assert (=> b!7564799 (= e!4504340 (or (not (= (++!17486 lt!2649585 lt!2649589) Nil!72741)) (= lt!2649817 testedP!423)))))

(declare-fun d!2315901 () Bool)

(assert (=> d!2315901 e!4504340))

(declare-fun res!3030991 () Bool)

(assert (=> d!2315901 (=> (not res!3030991) (not e!4504340))))

(assert (=> d!2315901 (= res!3030991 (= (content!15403 lt!2649817) (set.union (content!15403 testedP!423) (content!15403 (++!17486 lt!2649585 lt!2649589)))))))

(declare-fun e!4504341 () List!72865)

(assert (=> d!2315901 (= lt!2649817 e!4504341)))

(declare-fun c!1395821 () Bool)

(assert (=> d!2315901 (= c!1395821 (is-Nil!72741 testedP!423))))

(assert (=> d!2315901 (= (++!17486 testedP!423 (++!17486 lt!2649585 lt!2649589)) lt!2649817)))

(declare-fun b!7564798 () Bool)

(declare-fun res!3030992 () Bool)

(assert (=> b!7564798 (=> (not res!3030992) (not e!4504340))))

(assert (=> b!7564798 (= res!3030992 (= (size!42478 lt!2649817) (+ (size!42478 testedP!423) (size!42478 (++!17486 lt!2649585 lt!2649589)))))))

(declare-fun b!7564797 () Bool)

(assert (=> b!7564797 (= e!4504341 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) (++!17486 lt!2649585 lt!2649589))))))

(declare-fun b!7564796 () Bool)

(assert (=> b!7564796 (= e!4504341 (++!17486 lt!2649585 lt!2649589))))

(assert (= (and d!2315901 c!1395821) b!7564796))

(assert (= (and d!2315901 (not c!1395821)) b!7564797))

(assert (= (and d!2315901 res!3030991) b!7564798))

(assert (= (and b!7564798 res!3030992) b!7564799))

(declare-fun m!8127328 () Bool)

(assert (=> d!2315901 m!8127328))

(assert (=> d!2315901 m!8126852))

(assert (=> d!2315901 m!8126640))

(declare-fun m!8127330 () Bool)

(assert (=> d!2315901 m!8127330))

(declare-fun m!8127332 () Bool)

(assert (=> b!7564798 m!8127332))

(assert (=> b!7564798 m!8126610))

(assert (=> b!7564798 m!8126640))

(declare-fun m!8127334 () Bool)

(assert (=> b!7564798 m!8127334))

(assert (=> b!7564797 m!8126640))

(declare-fun m!8127336 () Bool)

(assert (=> b!7564797 m!8127336))

(assert (=> d!2315731 d!2315901))

(declare-fun d!2315903 () Bool)

(assert (=> d!2315903 (= (++!17486 (++!17486 testedP!423 lt!2649585) lt!2649589) (++!17486 testedP!423 (++!17486 lt!2649585 lt!2649589)))))

(assert (=> d!2315903 true))

(declare-fun _$52!2489 () Unit!166898)

(assert (=> d!2315903 (= (choose!58503 testedP!423 lt!2649585 lt!2649589) _$52!2489)))

(declare-fun bs!1940446 () Bool)

(assert (= bs!1940446 d!2315903))

(assert (=> bs!1940446 m!8126690))

(assert (=> bs!1940446 m!8126690))

(assert (=> bs!1940446 m!8126894))

(assert (=> bs!1940446 m!8126640))

(assert (=> bs!1940446 m!8126640))

(assert (=> bs!1940446 m!8126892))

(assert (=> d!2315731 d!2315903))

(assert (=> d!2315731 d!2315721))

(declare-fun d!2315905 () Bool)

(declare-fun lt!2649818 () Regex!19982)

(assert (=> d!2315905 (validRegex!10410 lt!2649818)))

(declare-fun e!4504342 () Regex!19982)

(assert (=> d!2315905 (= lt!2649818 e!4504342)))

(declare-fun c!1395822 () Bool)

(assert (=> d!2315905 (= c!1395822 (is-Cons!72741 (t!387596 lt!2649592)))))

(assert (=> d!2315905 (validRegex!10410 (derivativeStep!5760 baseR!101 (h!79189 lt!2649592)))))

(assert (=> d!2315905 (= (derivative!512 (derivativeStep!5760 baseR!101 (h!79189 lt!2649592)) (t!387596 lt!2649592)) lt!2649818)))

(declare-fun b!7564800 () Bool)

(assert (=> b!7564800 (= e!4504342 (derivative!512 (derivativeStep!5760 (derivativeStep!5760 baseR!101 (h!79189 lt!2649592)) (h!79189 (t!387596 lt!2649592))) (t!387596 (t!387596 lt!2649592))))))

(declare-fun b!7564801 () Bool)

(assert (=> b!7564801 (= e!4504342 (derivativeStep!5760 baseR!101 (h!79189 lt!2649592)))))

(assert (= (and d!2315905 c!1395822) b!7564800))

(assert (= (and d!2315905 (not c!1395822)) b!7564801))

(declare-fun m!8127338 () Bool)

(assert (=> d!2315905 m!8127338))

(assert (=> d!2315905 m!8127094))

(declare-fun m!8127340 () Bool)

(assert (=> d!2315905 m!8127340))

(assert (=> b!7564800 m!8127094))

(declare-fun m!8127342 () Bool)

(assert (=> b!7564800 m!8127342))

(assert (=> b!7564800 m!8127342))

(declare-fun m!8127344 () Bool)

(assert (=> b!7564800 m!8127344))

(assert (=> b!7564480 d!2315905))

(declare-fun bm!693506 () Bool)

(declare-fun call!693514 () Regex!19982)

(declare-fun call!693513 () Regex!19982)

(assert (=> bm!693506 (= call!693514 call!693513)))

(declare-fun b!7564802 () Bool)

(declare-fun e!4504345 () Regex!19982)

(declare-fun call!693511 () Regex!19982)

(declare-fun call!693512 () Regex!19982)

(assert (=> b!7564802 (= e!4504345 (Union!19982 call!693511 call!693512))))

(declare-fun b!7564803 () Bool)

(declare-fun c!1395825 () Bool)

(assert (=> b!7564803 (= c!1395825 (is-Union!19982 baseR!101))))

(declare-fun e!4504343 () Regex!19982)

(assert (=> b!7564803 (= e!4504343 e!4504345)))

(declare-fun bm!693507 () Bool)

(declare-fun c!1395824 () Bool)

(assert (=> bm!693507 (= call!693511 (derivativeStep!5760 (ite c!1395825 (regOne!40477 baseR!101) (ite c!1395824 (reg!20311 baseR!101) (regOne!40476 baseR!101))) (h!79189 lt!2649592)))))

(declare-fun b!7564804 () Bool)

(declare-fun e!4504347 () Regex!19982)

(assert (=> b!7564804 (= e!4504347 (Union!19982 (Concat!28827 call!693514 (regTwo!40476 baseR!101)) EmptyLang!19982))))

(declare-fun b!7564805 () Bool)

(declare-fun e!4504344 () Regex!19982)

(assert (=> b!7564805 (= e!4504344 EmptyLang!19982)))

(declare-fun d!2315907 () Bool)

(declare-fun lt!2649819 () Regex!19982)

(assert (=> d!2315907 (validRegex!10410 lt!2649819)))

(assert (=> d!2315907 (= lt!2649819 e!4504344)))

(declare-fun c!1395826 () Bool)

(assert (=> d!2315907 (= c!1395826 (or (is-EmptyExpr!19982 baseR!101) (is-EmptyLang!19982 baseR!101)))))

(assert (=> d!2315907 (validRegex!10410 baseR!101)))

(assert (=> d!2315907 (= (derivativeStep!5760 baseR!101 (h!79189 lt!2649592)) lt!2649819)))

(declare-fun bm!693508 () Bool)

(assert (=> bm!693508 (= call!693513 call!693511)))

(declare-fun b!7564806 () Bool)

(assert (=> b!7564806 (= e!4504343 (ite (= (h!79189 lt!2649592) (c!1395677 baseR!101)) EmptyExpr!19982 EmptyLang!19982))))

(declare-fun bm!693509 () Bool)

(assert (=> bm!693509 (= call!693512 (derivativeStep!5760 (ite c!1395825 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)) (h!79189 lt!2649592)))))

(declare-fun b!7564807 () Bool)

(assert (=> b!7564807 (= e!4504344 e!4504343)))

(declare-fun c!1395827 () Bool)

(assert (=> b!7564807 (= c!1395827 (is-ElementMatch!19982 baseR!101))))

(declare-fun b!7564808 () Bool)

(declare-fun e!4504346 () Regex!19982)

(assert (=> b!7564808 (= e!4504346 (Concat!28827 call!693513 baseR!101))))

(declare-fun b!7564809 () Bool)

(declare-fun c!1395823 () Bool)

(assert (=> b!7564809 (= c!1395823 (nullable!8716 (regOne!40476 baseR!101)))))

(assert (=> b!7564809 (= e!4504346 e!4504347)))

(declare-fun b!7564810 () Bool)

(assert (=> b!7564810 (= e!4504345 e!4504346)))

(assert (=> b!7564810 (= c!1395824 (is-Star!19982 baseR!101))))

(declare-fun b!7564811 () Bool)

(assert (=> b!7564811 (= e!4504347 (Union!19982 (Concat!28827 call!693514 (regTwo!40476 baseR!101)) call!693512))))

(assert (= (and d!2315907 c!1395826) b!7564805))

(assert (= (and d!2315907 (not c!1395826)) b!7564807))

(assert (= (and b!7564807 c!1395827) b!7564806))

(assert (= (and b!7564807 (not c!1395827)) b!7564803))

(assert (= (and b!7564803 c!1395825) b!7564802))

(assert (= (and b!7564803 (not c!1395825)) b!7564810))

(assert (= (and b!7564810 c!1395824) b!7564808))

(assert (= (and b!7564810 (not c!1395824)) b!7564809))

(assert (= (and b!7564809 c!1395823) b!7564811))

(assert (= (and b!7564809 (not c!1395823)) b!7564804))

(assert (= (or b!7564811 b!7564804) bm!693506))

(assert (= (or b!7564808 bm!693506) bm!693508))

(assert (= (or b!7564802 b!7564811) bm!693509))

(assert (= (or b!7564802 bm!693508) bm!693507))

(declare-fun m!8127346 () Bool)

(assert (=> bm!693507 m!8127346))

(declare-fun m!8127348 () Bool)

(assert (=> d!2315907 m!8127348))

(assert (=> d!2315907 m!8126698))

(declare-fun m!8127350 () Bool)

(assert (=> bm!693509 m!8127350))

(declare-fun m!8127352 () Bool)

(assert (=> b!7564809 m!8127352))

(assert (=> b!7564480 d!2315907))

(declare-fun e!4504348 () Bool)

(declare-fun lt!2649820 () List!72865)

(declare-fun b!7564815 () Bool)

(assert (=> b!7564815 (= e!4504348 (or (not (= lt!2649589 Nil!72741)) (= lt!2649820 (t!387596 knownP!30))))))

(declare-fun d!2315909 () Bool)

(assert (=> d!2315909 e!4504348))

(declare-fun res!3030993 () Bool)

(assert (=> d!2315909 (=> (not res!3030993) (not e!4504348))))

(assert (=> d!2315909 (= res!3030993 (= (content!15403 lt!2649820) (set.union (content!15403 (t!387596 knownP!30)) (content!15403 lt!2649589))))))

(declare-fun e!4504349 () List!72865)

(assert (=> d!2315909 (= lt!2649820 e!4504349)))

(declare-fun c!1395828 () Bool)

(assert (=> d!2315909 (= c!1395828 (is-Nil!72741 (t!387596 knownP!30)))))

(assert (=> d!2315909 (= (++!17486 (t!387596 knownP!30) lt!2649589) lt!2649820)))

(declare-fun b!7564814 () Bool)

(declare-fun res!3030994 () Bool)

(assert (=> b!7564814 (=> (not res!3030994) (not e!4504348))))

(assert (=> b!7564814 (= res!3030994 (= (size!42478 lt!2649820) (+ (size!42478 (t!387596 knownP!30)) (size!42478 lt!2649589))))))

(declare-fun b!7564813 () Bool)

(assert (=> b!7564813 (= e!4504349 (Cons!72741 (h!79189 (t!387596 knownP!30)) (++!17486 (t!387596 (t!387596 knownP!30)) lt!2649589)))))

(declare-fun b!7564812 () Bool)

(assert (=> b!7564812 (= e!4504349 lt!2649589)))

(assert (= (and d!2315909 c!1395828) b!7564812))

(assert (= (and d!2315909 (not c!1395828)) b!7564813))

(assert (= (and d!2315909 res!3030993) b!7564814))

(assert (= (and b!7564814 res!3030994) b!7564815))

(declare-fun m!8127354 () Bool)

(assert (=> d!2315909 m!8127354))

(declare-fun m!8127356 () Bool)

(assert (=> d!2315909 m!8127356))

(assert (=> d!2315909 m!8126840))

(declare-fun m!8127358 () Bool)

(assert (=> b!7564814 m!8127358))

(assert (=> b!7564814 m!8127130))

(assert (=> b!7564814 m!8126846))

(declare-fun m!8127360 () Bool)

(assert (=> b!7564813 m!8127360))

(assert (=> b!7564495 d!2315909))

(declare-fun d!2315911 () Bool)

(declare-fun lt!2649821 () Int)

(assert (=> d!2315911 (>= lt!2649821 0)))

(declare-fun e!4504350 () Int)

(assert (=> d!2315911 (= lt!2649821 e!4504350)))

(declare-fun c!1395829 () Bool)

(assert (=> d!2315911 (= c!1395829 (is-Nil!72741 lt!2649762))))

(assert (=> d!2315911 (= (size!42478 lt!2649762) lt!2649821)))

(declare-fun b!7564816 () Bool)

(assert (=> b!7564816 (= e!4504350 0)))

(declare-fun b!7564817 () Bool)

(assert (=> b!7564817 (= e!4504350 (+ 1 (size!42478 (t!387596 lt!2649762))))))

(assert (= (and d!2315911 c!1395829) b!7564816))

(assert (= (and d!2315911 (not c!1395829)) b!7564817))

(declare-fun m!8127362 () Bool)

(assert (=> b!7564817 m!8127362))

(assert (=> b!7564492 d!2315911))

(assert (=> b!7564492 d!2315809))

(declare-fun d!2315913 () Bool)

(declare-fun lt!2649822 () Int)

(assert (=> d!2315913 (>= lt!2649822 0)))

(declare-fun e!4504351 () Int)

(assert (=> d!2315913 (= lt!2649822 e!4504351)))

(declare-fun c!1395830 () Bool)

(assert (=> d!2315913 (= c!1395830 (is-Nil!72741 lt!2649594))))

(assert (=> d!2315913 (= (size!42478 lt!2649594) lt!2649822)))

(declare-fun b!7564818 () Bool)

(assert (=> b!7564818 (= e!4504351 0)))

(declare-fun b!7564819 () Bool)

(assert (=> b!7564819 (= e!4504351 (+ 1 (size!42478 (t!387596 lt!2649594))))))

(assert (= (and d!2315913 c!1395830) b!7564818))

(assert (= (and d!2315913 (not c!1395830)) b!7564819))

(assert (=> b!7564819 m!8127314))

(assert (=> b!7564492 d!2315913))

(declare-fun b!7564820 () Bool)

(declare-fun e!4504354 () Bool)

(declare-fun call!693515 () Bool)

(assert (=> b!7564820 (= e!4504354 call!693515)))

(declare-fun b!7564821 () Bool)

(declare-fun res!3030997 () Bool)

(declare-fun e!4504355 () Bool)

(assert (=> b!7564821 (=> (not res!3030997) (not e!4504355))))

(declare-fun call!693516 () Bool)

(assert (=> b!7564821 (= res!3030997 call!693516)))

(declare-fun e!4504357 () Bool)

(assert (=> b!7564821 (= e!4504357 e!4504355)))

(declare-fun bm!693510 () Bool)

(declare-fun c!1395832 () Bool)

(declare-fun c!1395831 () Bool)

(assert (=> bm!693510 (= call!693515 (validRegex!10410 (ite c!1395832 (reg!20311 lt!2649735) (ite c!1395831 (regTwo!40477 lt!2649735) (regTwo!40476 lt!2649735)))))))

(declare-fun b!7564822 () Bool)

(declare-fun e!4504358 () Bool)

(declare-fun e!4504352 () Bool)

(assert (=> b!7564822 (= e!4504358 e!4504352)))

(assert (=> b!7564822 (= c!1395832 (is-Star!19982 lt!2649735))))

(declare-fun b!7564823 () Bool)

(assert (=> b!7564823 (= e!4504352 e!4504357)))

(assert (=> b!7564823 (= c!1395831 (is-Union!19982 lt!2649735))))

(declare-fun bm!693511 () Bool)

(declare-fun call!693517 () Bool)

(assert (=> bm!693511 (= call!693517 call!693515)))

(declare-fun bm!693512 () Bool)

(assert (=> bm!693512 (= call!693516 (validRegex!10410 (ite c!1395831 (regOne!40477 lt!2649735) (regOne!40476 lt!2649735))))))

(declare-fun b!7564824 () Bool)

(assert (=> b!7564824 (= e!4504355 call!693517)))

(declare-fun b!7564825 () Bool)

(declare-fun e!4504353 () Bool)

(assert (=> b!7564825 (= e!4504353 call!693517)))

(declare-fun d!2315915 () Bool)

(declare-fun res!3030996 () Bool)

(assert (=> d!2315915 (=> res!3030996 e!4504358)))

(assert (=> d!2315915 (= res!3030996 (is-ElementMatch!19982 lt!2649735))))

(assert (=> d!2315915 (= (validRegex!10410 lt!2649735) e!4504358)))

(declare-fun b!7564826 () Bool)

(assert (=> b!7564826 (= e!4504352 e!4504354)))

(declare-fun res!3030999 () Bool)

(assert (=> b!7564826 (= res!3030999 (not (nullable!8716 (reg!20311 lt!2649735))))))

(assert (=> b!7564826 (=> (not res!3030999) (not e!4504354))))

(declare-fun b!7564827 () Bool)

(declare-fun res!3030998 () Bool)

(declare-fun e!4504356 () Bool)

(assert (=> b!7564827 (=> res!3030998 e!4504356)))

(assert (=> b!7564827 (= res!3030998 (not (is-Concat!28827 lt!2649735)))))

(assert (=> b!7564827 (= e!4504357 e!4504356)))

(declare-fun b!7564828 () Bool)

(assert (=> b!7564828 (= e!4504356 e!4504353)))

(declare-fun res!3030995 () Bool)

(assert (=> b!7564828 (=> (not res!3030995) (not e!4504353))))

(assert (=> b!7564828 (= res!3030995 call!693516)))

(assert (= (and d!2315915 (not res!3030996)) b!7564822))

(assert (= (and b!7564822 c!1395832) b!7564826))

(assert (= (and b!7564822 (not c!1395832)) b!7564823))

(assert (= (and b!7564826 res!3030999) b!7564820))

(assert (= (and b!7564823 c!1395831) b!7564821))

(assert (= (and b!7564823 (not c!1395831)) b!7564827))

(assert (= (and b!7564821 res!3030997) b!7564824))

(assert (= (and b!7564827 (not res!3030998)) b!7564828))

(assert (= (and b!7564828 res!3030995) b!7564825))

(assert (= (or b!7564821 b!7564828) bm!693512))

(assert (= (or b!7564824 b!7564825) bm!693511))

(assert (= (or b!7564820 bm!693511) bm!693510))

(declare-fun m!8127364 () Bool)

(assert (=> bm!693510 m!8127364))

(declare-fun m!8127366 () Bool)

(assert (=> bm!693512 m!8127366))

(declare-fun m!8127368 () Bool)

(assert (=> b!7564826 m!8127368))

(assert (=> d!2315757 d!2315915))

(assert (=> d!2315757 d!2315733))

(declare-fun b!7564829 () Bool)

(declare-fun e!4504361 () Bool)

(declare-fun call!693518 () Bool)

(assert (=> b!7564829 (= e!4504361 call!693518)))

(declare-fun b!7564830 () Bool)

(declare-fun res!3031002 () Bool)

(declare-fun e!4504362 () Bool)

(assert (=> b!7564830 (=> (not res!3031002) (not e!4504362))))

(declare-fun call!693519 () Bool)

(assert (=> b!7564830 (= res!3031002 call!693519)))

(declare-fun e!4504364 () Bool)

(assert (=> b!7564830 (= e!4504364 e!4504362)))

(declare-fun c!1395833 () Bool)

(declare-fun c!1395834 () Bool)

(declare-fun bm!693513 () Bool)

(assert (=> bm!693513 (= call!693518 (validRegex!10410 (ite c!1395834 (reg!20311 lt!2649759) (ite c!1395833 (regTwo!40477 lt!2649759) (regTwo!40476 lt!2649759)))))))

(declare-fun b!7564831 () Bool)

(declare-fun e!4504365 () Bool)

(declare-fun e!4504359 () Bool)

(assert (=> b!7564831 (= e!4504365 e!4504359)))

(assert (=> b!7564831 (= c!1395834 (is-Star!19982 lt!2649759))))

(declare-fun b!7564832 () Bool)

(assert (=> b!7564832 (= e!4504359 e!4504364)))

(assert (=> b!7564832 (= c!1395833 (is-Union!19982 lt!2649759))))

(declare-fun bm!693514 () Bool)

(declare-fun call!693520 () Bool)

(assert (=> bm!693514 (= call!693520 call!693518)))

(declare-fun bm!693515 () Bool)

(assert (=> bm!693515 (= call!693519 (validRegex!10410 (ite c!1395833 (regOne!40477 lt!2649759) (regOne!40476 lt!2649759))))))

(declare-fun b!7564833 () Bool)

(assert (=> b!7564833 (= e!4504362 call!693520)))

(declare-fun b!7564834 () Bool)

(declare-fun e!4504360 () Bool)

(assert (=> b!7564834 (= e!4504360 call!693520)))

(declare-fun d!2315917 () Bool)

(declare-fun res!3031001 () Bool)

(assert (=> d!2315917 (=> res!3031001 e!4504365)))

(assert (=> d!2315917 (= res!3031001 (is-ElementMatch!19982 lt!2649759))))

(assert (=> d!2315917 (= (validRegex!10410 lt!2649759) e!4504365)))

(declare-fun b!7564835 () Bool)

(assert (=> b!7564835 (= e!4504359 e!4504361)))

(declare-fun res!3031004 () Bool)

(assert (=> b!7564835 (= res!3031004 (not (nullable!8716 (reg!20311 lt!2649759))))))

(assert (=> b!7564835 (=> (not res!3031004) (not e!4504361))))

(declare-fun b!7564836 () Bool)

(declare-fun res!3031003 () Bool)

(declare-fun e!4504363 () Bool)

(assert (=> b!7564836 (=> res!3031003 e!4504363)))

(assert (=> b!7564836 (= res!3031003 (not (is-Concat!28827 lt!2649759)))))

(assert (=> b!7564836 (= e!4504364 e!4504363)))

(declare-fun b!7564837 () Bool)

(assert (=> b!7564837 (= e!4504363 e!4504360)))

(declare-fun res!3031000 () Bool)

(assert (=> b!7564837 (=> (not res!3031000) (not e!4504360))))

(assert (=> b!7564837 (= res!3031000 call!693519)))

(assert (= (and d!2315917 (not res!3031001)) b!7564831))

(assert (= (and b!7564831 c!1395834) b!7564835))

(assert (= (and b!7564831 (not c!1395834)) b!7564832))

(assert (= (and b!7564835 res!3031004) b!7564829))

(assert (= (and b!7564832 c!1395833) b!7564830))

(assert (= (and b!7564832 (not c!1395833)) b!7564836))

(assert (= (and b!7564830 res!3031002) b!7564833))

(assert (= (and b!7564836 (not res!3031003)) b!7564837))

(assert (= (and b!7564837 res!3031000) b!7564834))

(assert (= (or b!7564830 b!7564837) bm!693515))

(assert (= (or b!7564833 b!7564834) bm!693514))

(assert (= (or b!7564829 bm!693514) bm!693513))

(declare-fun m!8127370 () Bool)

(assert (=> bm!693513 m!8127370))

(declare-fun m!8127372 () Bool)

(assert (=> bm!693515 m!8127372))

(declare-fun m!8127374 () Bool)

(assert (=> b!7564835 m!8127374))

(assert (=> d!2315797 d!2315917))

(assert (=> d!2315797 d!2315733))

(declare-fun d!2315919 () Bool)

(declare-fun c!1395837 () Bool)

(assert (=> d!2315919 (= c!1395837 (is-Nil!72741 lt!2649763))))

(declare-fun e!4504368 () (Set C!40290))

(assert (=> d!2315919 (= (content!15403 lt!2649763) e!4504368)))

(declare-fun b!7564842 () Bool)

(assert (=> b!7564842 (= e!4504368 (as set.empty (Set C!40290)))))

(declare-fun b!7564843 () Bool)

(assert (=> b!7564843 (= e!4504368 (set.union (set.insert (h!79189 lt!2649763) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649763))))))

(assert (= (and d!2315919 c!1395837) b!7564842))

(assert (= (and d!2315919 (not c!1395837)) b!7564843))

(declare-fun m!8127376 () Bool)

(assert (=> b!7564843 m!8127376))

(declare-fun m!8127378 () Bool)

(assert (=> b!7564843 m!8127378))

(assert (=> d!2315803 d!2315919))

(declare-fun d!2315921 () Bool)

(declare-fun c!1395838 () Bool)

(assert (=> d!2315921 (= c!1395838 (is-Nil!72741 knownP!30))))

(declare-fun e!4504369 () (Set C!40290))

(assert (=> d!2315921 (= (content!15403 knownP!30) e!4504369)))

(declare-fun b!7564844 () Bool)

(assert (=> b!7564844 (= e!4504369 (as set.empty (Set C!40290)))))

(declare-fun b!7564845 () Bool)

(assert (=> b!7564845 (= e!4504369 (set.union (set.insert (h!79189 knownP!30) (as set.empty (Set C!40290))) (content!15403 (t!387596 knownP!30))))))

(assert (= (and d!2315921 c!1395838) b!7564844))

(assert (= (and d!2315921 (not c!1395838)) b!7564845))

(declare-fun m!8127380 () Bool)

(assert (=> b!7564845 m!8127380))

(assert (=> b!7564845 m!8127356))

(assert (=> d!2315803 d!2315921))

(declare-fun d!2315923 () Bool)

(declare-fun c!1395839 () Bool)

(assert (=> d!2315923 (= c!1395839 (is-Nil!72741 lt!2649589))))

(declare-fun e!4504370 () (Set C!40290))

(assert (=> d!2315923 (= (content!15403 lt!2649589) e!4504370)))

(declare-fun b!7564846 () Bool)

(assert (=> b!7564846 (= e!4504370 (as set.empty (Set C!40290)))))

(declare-fun b!7564847 () Bool)

(assert (=> b!7564847 (= e!4504370 (set.union (set.insert (h!79189 lt!2649589) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649589))))))

(assert (= (and d!2315923 c!1395839) b!7564846))

(assert (= (and d!2315923 (not c!1395839)) b!7564847))

(declare-fun m!8127382 () Bool)

(assert (=> b!7564847 m!8127382))

(declare-fun m!8127384 () Bool)

(assert (=> b!7564847 m!8127384))

(assert (=> d!2315803 d!2315923))

(declare-fun d!2315925 () Bool)

(assert (=> d!2315925 (= (nullable!8716 r!24333) (nullableFct!3477 r!24333))))

(declare-fun bs!1940447 () Bool)

(assert (= bs!1940447 d!2315925))

(declare-fun m!8127386 () Bool)

(assert (=> bs!1940447 m!8127386))

(assert (=> b!7564234 d!2315925))

(declare-fun bm!693516 () Bool)

(declare-fun call!693524 () Regex!19982)

(declare-fun call!693523 () Regex!19982)

(assert (=> bm!693516 (= call!693524 call!693523)))

(declare-fun b!7564848 () Bool)

(declare-fun e!4504373 () Regex!19982)

(declare-fun call!693521 () Regex!19982)

(declare-fun call!693522 () Regex!19982)

(assert (=> b!7564848 (= e!4504373 (Union!19982 call!693521 call!693522))))

(declare-fun b!7564849 () Bool)

(declare-fun c!1395842 () Bool)

(assert (=> b!7564849 (= c!1395842 (is-Union!19982 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333))))))

(declare-fun e!4504371 () Regex!19982)

(assert (=> b!7564849 (= e!4504371 e!4504373)))

(declare-fun bm!693517 () Bool)

(declare-fun c!1395841 () Bool)

(assert (=> bm!693517 (= call!693521 (derivativeStep!5760 (ite c!1395842 (regOne!40477 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333))) (ite c!1395841 (reg!20311 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333))) (regOne!40476 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333))))) lt!2649600))))

(declare-fun b!7564850 () Bool)

(declare-fun e!4504375 () Regex!19982)

(assert (=> b!7564850 (= e!4504375 (Union!19982 (Concat!28827 call!693524 (regTwo!40476 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))) EmptyLang!19982))))

(declare-fun b!7564851 () Bool)

(declare-fun e!4504372 () Regex!19982)

(assert (=> b!7564851 (= e!4504372 EmptyLang!19982)))

(declare-fun d!2315927 () Bool)

(declare-fun lt!2649823 () Regex!19982)

(assert (=> d!2315927 (validRegex!10410 lt!2649823)))

(assert (=> d!2315927 (= lt!2649823 e!4504372)))

(declare-fun c!1395843 () Bool)

(assert (=> d!2315927 (= c!1395843 (or (is-EmptyExpr!19982 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333))) (is-EmptyLang!19982 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))))))

(assert (=> d!2315927 (validRegex!10410 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))))

(assert (=> d!2315927 (= (derivativeStep!5760 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333)) lt!2649600) lt!2649823)))

(declare-fun bm!693518 () Bool)

(assert (=> bm!693518 (= call!693523 call!693521)))

(declare-fun b!7564852 () Bool)

(assert (=> b!7564852 (= e!4504371 (ite (= lt!2649600 (c!1395677 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))) EmptyExpr!19982 EmptyLang!19982))))

(declare-fun bm!693519 () Bool)

(assert (=> bm!693519 (= call!693522 (derivativeStep!5760 (ite c!1395842 (regTwo!40477 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333))) (regTwo!40476 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))) lt!2649600))))

(declare-fun b!7564853 () Bool)

(assert (=> b!7564853 (= e!4504372 e!4504371)))

(declare-fun c!1395844 () Bool)

(assert (=> b!7564853 (= c!1395844 (is-ElementMatch!19982 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333))))))

(declare-fun e!4504374 () Regex!19982)

(declare-fun b!7564854 () Bool)

(assert (=> b!7564854 (= e!4504374 (Concat!28827 call!693523 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333))))))

(declare-fun b!7564855 () Bool)

(declare-fun c!1395840 () Bool)

(assert (=> b!7564855 (= c!1395840 (nullable!8716 (regOne!40476 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))))))

(assert (=> b!7564855 (= e!4504374 e!4504375)))

(declare-fun b!7564856 () Bool)

(assert (=> b!7564856 (= e!4504373 e!4504374)))

(assert (=> b!7564856 (= c!1395841 (is-Star!19982 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333))))))

(declare-fun b!7564857 () Bool)

(assert (=> b!7564857 (= e!4504375 (Union!19982 (Concat!28827 call!693524 (regTwo!40476 (ite c!1395757 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))) call!693522))))

(assert (= (and d!2315927 c!1395843) b!7564851))

(assert (= (and d!2315927 (not c!1395843)) b!7564853))

(assert (= (and b!7564853 c!1395844) b!7564852))

(assert (= (and b!7564853 (not c!1395844)) b!7564849))

(assert (= (and b!7564849 c!1395842) b!7564848))

(assert (= (and b!7564849 (not c!1395842)) b!7564856))

(assert (= (and b!7564856 c!1395841) b!7564854))

(assert (= (and b!7564856 (not c!1395841)) b!7564855))

(assert (= (and b!7564855 c!1395840) b!7564857))

(assert (= (and b!7564855 (not c!1395840)) b!7564850))

(assert (= (or b!7564857 b!7564850) bm!693516))

(assert (= (or b!7564854 bm!693516) bm!693518))

(assert (= (or b!7564848 b!7564857) bm!693519))

(assert (= (or b!7564848 bm!693518) bm!693517))

(declare-fun m!8127388 () Bool)

(assert (=> bm!693517 m!8127388))

(declare-fun m!8127390 () Bool)

(assert (=> d!2315927 m!8127390))

(declare-fun m!8127392 () Bool)

(assert (=> d!2315927 m!8127392))

(declare-fun m!8127394 () Bool)

(assert (=> bm!693519 m!8127394))

(declare-fun m!8127396 () Bool)

(assert (=> b!7564855 m!8127396))

(assert (=> bm!693488 d!2315927))

(declare-fun d!2315929 () Bool)

(assert (=> d!2315929 (= (head!15560 lt!2649608) (h!79189 lt!2649608))))

(assert (=> b!7564399 d!2315929))

(assert (=> b!7564230 d!2315751))

(declare-fun d!2315931 () Bool)

(assert (=> d!2315931 (= (isEmpty!41418 lt!2649608) (is-Nil!72741 lt!2649608))))

(assert (=> d!2315769 d!2315931))

(assert (=> d!2315769 d!2315703))

(declare-fun d!2315933 () Bool)

(assert (=> d!2315933 (= (nullable!8716 baseR!101) (nullableFct!3477 baseR!101))))

(declare-fun bs!1940448 () Bool)

(assert (= bs!1940448 d!2315933))

(declare-fun m!8127398 () Bool)

(assert (=> bs!1940448 m!8127398))

(assert (=> b!7564314 d!2315933))

(declare-fun d!2315935 () Bool)

(declare-fun lt!2649824 () List!72865)

(assert (=> d!2315935 (= (++!17486 (t!387596 testedP!423) lt!2649824) (tail!15100 knownP!30))))

(declare-fun e!4504376 () List!72865)

(assert (=> d!2315935 (= lt!2649824 e!4504376)))

(declare-fun c!1395845 () Bool)

(assert (=> d!2315935 (= c!1395845 (is-Cons!72741 (t!387596 testedP!423)))))

(assert (=> d!2315935 (>= (size!42478 (tail!15100 knownP!30)) (size!42478 (t!387596 testedP!423)))))

(assert (=> d!2315935 (= (getSuffix!3666 (tail!15100 knownP!30) (t!387596 testedP!423)) lt!2649824)))

(declare-fun b!7564858 () Bool)

(assert (=> b!7564858 (= e!4504376 (getSuffix!3666 (tail!15100 (tail!15100 knownP!30)) (t!387596 (t!387596 testedP!423))))))

(declare-fun b!7564859 () Bool)

(assert (=> b!7564859 (= e!4504376 (tail!15100 knownP!30))))

(assert (= (and d!2315935 c!1395845) b!7564858))

(assert (= (and d!2315935 (not c!1395845)) b!7564859))

(declare-fun m!8127400 () Bool)

(assert (=> d!2315935 m!8127400))

(assert (=> d!2315935 m!8126808))

(declare-fun m!8127402 () Bool)

(assert (=> d!2315935 m!8127402))

(assert (=> d!2315935 m!8127128))

(assert (=> b!7564858 m!8126808))

(declare-fun m!8127404 () Bool)

(assert (=> b!7564858 m!8127404))

(assert (=> b!7564858 m!8127404))

(declare-fun m!8127406 () Bool)

(assert (=> b!7564858 m!8127406))

(assert (=> b!7564245 d!2315935))

(declare-fun d!2315937 () Bool)

(assert (=> d!2315937 (= (tail!15100 knownP!30) (t!387596 knownP!30))))

(assert (=> b!7564245 d!2315937))

(declare-fun d!2315939 () Bool)

(declare-fun c!1395846 () Bool)

(assert (=> d!2315939 (= c!1395846 (is-Nil!72741 lt!2649726))))

(declare-fun e!4504377 () (Set C!40290))

(assert (=> d!2315939 (= (content!15403 lt!2649726) e!4504377)))

(declare-fun b!7564860 () Bool)

(assert (=> b!7564860 (= e!4504377 (as set.empty (Set C!40290)))))

(declare-fun b!7564861 () Bool)

(assert (=> b!7564861 (= e!4504377 (set.union (set.insert (h!79189 lt!2649726) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649726))))))

(assert (= (and d!2315939 c!1395846) b!7564860))

(assert (= (and d!2315939 (not c!1395846)) b!7564861))

(declare-fun m!8127408 () Bool)

(assert (=> b!7564861 m!8127408))

(declare-fun m!8127410 () Bool)

(assert (=> b!7564861 m!8127410))

(assert (=> d!2315747 d!2315939))

(declare-fun d!2315941 () Bool)

(declare-fun c!1395847 () Bool)

(assert (=> d!2315941 (= c!1395847 (is-Nil!72741 lt!2649594))))

(declare-fun e!4504378 () (Set C!40290))

(assert (=> d!2315941 (= (content!15403 lt!2649594) e!4504378)))

(declare-fun b!7564862 () Bool)

(assert (=> b!7564862 (= e!4504378 (as set.empty (Set C!40290)))))

(declare-fun b!7564863 () Bool)

(assert (=> b!7564863 (= e!4504378 (set.union (set.insert (h!79189 lt!2649594) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649594))))))

(assert (= (and d!2315941 c!1395847) b!7564862))

(assert (= (and d!2315941 (not c!1395847)) b!7564863))

(declare-fun m!8127412 () Bool)

(assert (=> b!7564863 m!8127412))

(assert (=> b!7564863 m!8127310))

(assert (=> d!2315747 d!2315941))

(declare-fun d!2315943 () Bool)

(declare-fun c!1395848 () Bool)

(assert (=> d!2315943 (= c!1395848 (is-Nil!72741 lt!2649608))))

(declare-fun e!4504379 () (Set C!40290))

(assert (=> d!2315943 (= (content!15403 lt!2649608) e!4504379)))

(declare-fun b!7564864 () Bool)

(assert (=> b!7564864 (= e!4504379 (as set.empty (Set C!40290)))))

(declare-fun b!7564865 () Bool)

(assert (=> b!7564865 (= e!4504379 (set.union (set.insert (h!79189 lt!2649608) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649608))))))

(assert (= (and d!2315943 c!1395848) b!7564864))

(assert (= (and d!2315943 (not c!1395848)) b!7564865))

(declare-fun m!8127414 () Bool)

(assert (=> b!7564865 m!8127414))

(declare-fun m!8127416 () Bool)

(assert (=> b!7564865 m!8127416))

(assert (=> d!2315747 d!2315943))

(declare-fun lt!2649825 () List!72865)

(declare-fun b!7564869 () Bool)

(declare-fun e!4504380 () Bool)

(assert (=> b!7564869 (= e!4504380 (or (not (= lt!2649608 Nil!72741)) (= lt!2649825 (t!387596 lt!2649592))))))

(declare-fun d!2315945 () Bool)

(assert (=> d!2315945 e!4504380))

(declare-fun res!3031005 () Bool)

(assert (=> d!2315945 (=> (not res!3031005) (not e!4504380))))

(assert (=> d!2315945 (= res!3031005 (= (content!15403 lt!2649825) (set.union (content!15403 (t!387596 lt!2649592)) (content!15403 lt!2649608))))))

(declare-fun e!4504381 () List!72865)

(assert (=> d!2315945 (= lt!2649825 e!4504381)))

(declare-fun c!1395849 () Bool)

(assert (=> d!2315945 (= c!1395849 (is-Nil!72741 (t!387596 lt!2649592)))))

(assert (=> d!2315945 (= (++!17486 (t!387596 lt!2649592) lt!2649608) lt!2649825)))

(declare-fun b!7564868 () Bool)

(declare-fun res!3031006 () Bool)

(assert (=> b!7564868 (=> (not res!3031006) (not e!4504380))))

(assert (=> b!7564868 (= res!3031006 (= (size!42478 lt!2649825) (+ (size!42478 (t!387596 lt!2649592)) (size!42478 lt!2649608))))))

(declare-fun b!7564867 () Bool)

(assert (=> b!7564867 (= e!4504381 (Cons!72741 (h!79189 (t!387596 lt!2649592)) (++!17486 (t!387596 (t!387596 lt!2649592)) lt!2649608)))))

(declare-fun b!7564866 () Bool)

(assert (=> b!7564866 (= e!4504381 lt!2649608)))

(assert (= (and d!2315945 c!1395849) b!7564866))

(assert (= (and d!2315945 (not c!1395849)) b!7564867))

(assert (= (and d!2315945 res!3031005) b!7564868))

(assert (= (and b!7564868 res!3031006) b!7564869))

(declare-fun m!8127418 () Bool)

(assert (=> d!2315945 m!8127418))

(declare-fun m!8127420 () Bool)

(assert (=> d!2315945 m!8127420))

(assert (=> d!2315945 m!8126950))

(declare-fun m!8127422 () Bool)

(assert (=> b!7564868 m!8127422))

(assert (=> b!7564868 m!8126908))

(assert (=> b!7564868 m!8126956))

(declare-fun m!8127424 () Bool)

(assert (=> b!7564867 m!8127424))

(assert (=> b!7564407 d!2315945))

(assert (=> b!7564310 d!2315893))

(assert (=> b!7564364 d!2315717))

(assert (=> b!7564364 d!2315811))

(declare-fun b!7564870 () Bool)

(declare-fun e!4504384 () Bool)

(declare-fun call!693525 () Bool)

(assert (=> b!7564870 (= e!4504384 call!693525)))

(declare-fun b!7564871 () Bool)

(declare-fun res!3031009 () Bool)

(declare-fun e!4504385 () Bool)

(assert (=> b!7564871 (=> (not res!3031009) (not e!4504385))))

(declare-fun call!693526 () Bool)

(assert (=> b!7564871 (= res!3031009 call!693526)))

(declare-fun e!4504387 () Bool)

(assert (=> b!7564871 (= e!4504387 e!4504385)))

(declare-fun c!1395851 () Bool)

(declare-fun bm!693520 () Bool)

(declare-fun c!1395850 () Bool)

(assert (=> bm!693520 (= call!693525 (validRegex!10410 (ite c!1395851 (reg!20311 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))) (ite c!1395850 (regTwo!40477 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))) (regTwo!40476 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101)))))))))

(declare-fun b!7564872 () Bool)

(declare-fun e!4504388 () Bool)

(declare-fun e!4504382 () Bool)

(assert (=> b!7564872 (= e!4504388 e!4504382)))

(assert (=> b!7564872 (= c!1395851 (is-Star!19982 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))))))

(declare-fun b!7564873 () Bool)

(assert (=> b!7564873 (= e!4504382 e!4504387)))

(assert (=> b!7564873 (= c!1395850 (is-Union!19982 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))))))

(declare-fun bm!693521 () Bool)

(declare-fun call!693527 () Bool)

(assert (=> bm!693521 (= call!693527 call!693525)))

(declare-fun bm!693522 () Bool)

(assert (=> bm!693522 (= call!693526 (validRegex!10410 (ite c!1395850 (regOne!40477 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))) (regOne!40476 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))))))))

(declare-fun b!7564874 () Bool)

(assert (=> b!7564874 (= e!4504385 call!693527)))

(declare-fun b!7564875 () Bool)

(declare-fun e!4504383 () Bool)

(assert (=> b!7564875 (= e!4504383 call!693527)))

(declare-fun d!2315947 () Bool)

(declare-fun res!3031008 () Bool)

(assert (=> d!2315947 (=> res!3031008 e!4504388)))

(assert (=> d!2315947 (= res!3031008 (is-ElementMatch!19982 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))))))

(assert (=> d!2315947 (= (validRegex!10410 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))) e!4504388)))

(declare-fun b!7564876 () Bool)

(assert (=> b!7564876 (= e!4504382 e!4504384)))

(declare-fun res!3031011 () Bool)

(assert (=> b!7564876 (= res!3031011 (not (nullable!8716 (reg!20311 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101))))))))

(assert (=> b!7564876 (=> (not res!3031011) (not e!4504384))))

(declare-fun b!7564877 () Bool)

(declare-fun res!3031010 () Bool)

(declare-fun e!4504386 () Bool)

(assert (=> b!7564877 (=> res!3031010 e!4504386)))

(assert (=> b!7564877 (= res!3031010 (not (is-Concat!28827 (ite c!1395718 (regOne!40477 baseR!101) (regOne!40476 baseR!101)))))))

(assert (=> b!7564877 (= e!4504387 e!4504386)))

(declare-fun b!7564878 () Bool)

(assert (=> b!7564878 (= e!4504386 e!4504383)))

(declare-fun res!3031007 () Bool)

(assert (=> b!7564878 (=> (not res!3031007) (not e!4504383))))

(assert (=> b!7564878 (= res!3031007 call!693526)))

(assert (= (and d!2315947 (not res!3031008)) b!7564872))

(assert (= (and b!7564872 c!1395851) b!7564876))

(assert (= (and b!7564872 (not c!1395851)) b!7564873))

(assert (= (and b!7564876 res!3031011) b!7564870))

(assert (= (and b!7564873 c!1395850) b!7564871))

(assert (= (and b!7564873 (not c!1395850)) b!7564877))

(assert (= (and b!7564871 res!3031009) b!7564874))

(assert (= (and b!7564877 (not res!3031010)) b!7564878))

(assert (= (and b!7564878 res!3031007) b!7564875))

(assert (= (or b!7564871 b!7564878) bm!693522))

(assert (= (or b!7564874 b!7564875) bm!693521))

(assert (= (or b!7564870 bm!693521) bm!693520))

(declare-fun m!8127426 () Bool)

(assert (=> bm!693520 m!8127426))

(declare-fun m!8127428 () Bool)

(assert (=> bm!693522 m!8127428))

(declare-fun m!8127430 () Bool)

(assert (=> b!7564876 m!8127430))

(assert (=> bm!693466 d!2315947))

(declare-fun d!2315949 () Bool)

(declare-fun e!4504390 () Bool)

(assert (=> d!2315949 e!4504390))

(declare-fun res!3031015 () Bool)

(assert (=> d!2315949 (=> res!3031015 e!4504390)))

(declare-fun lt!2649826 () Bool)

(assert (=> d!2315949 (= res!3031015 (not lt!2649826))))

(declare-fun e!4504389 () Bool)

(assert (=> d!2315949 (= lt!2649826 e!4504389)))

(declare-fun res!3031012 () Bool)

(assert (=> d!2315949 (=> res!3031012 e!4504389)))

(assert (=> d!2315949 (= res!3031012 (is-Nil!72741 (tail!15100 lt!2649592)))))

(assert (=> d!2315949 (= (isPrefix!6188 (tail!15100 lt!2649592) (tail!15100 knownP!30)) lt!2649826)))

(declare-fun b!7564881 () Bool)

(declare-fun e!4504391 () Bool)

(assert (=> b!7564881 (= e!4504391 (isPrefix!6188 (tail!15100 (tail!15100 lt!2649592)) (tail!15100 (tail!15100 knownP!30))))))

(declare-fun b!7564882 () Bool)

(assert (=> b!7564882 (= e!4504390 (>= (size!42478 (tail!15100 knownP!30)) (size!42478 (tail!15100 lt!2649592))))))

(declare-fun b!7564879 () Bool)

(assert (=> b!7564879 (= e!4504389 e!4504391)))

(declare-fun res!3031014 () Bool)

(assert (=> b!7564879 (=> (not res!3031014) (not e!4504391))))

(assert (=> b!7564879 (= res!3031014 (not (is-Nil!72741 (tail!15100 knownP!30))))))

(declare-fun b!7564880 () Bool)

(declare-fun res!3031013 () Bool)

(assert (=> b!7564880 (=> (not res!3031013) (not e!4504391))))

(assert (=> b!7564880 (= res!3031013 (= (head!15560 (tail!15100 lt!2649592)) (head!15560 (tail!15100 knownP!30))))))

(assert (= (and d!2315949 (not res!3031012)) b!7564879))

(assert (= (and b!7564879 res!3031014) b!7564880))

(assert (= (and b!7564880 res!3031013) b!7564881))

(assert (= (and d!2315949 (not res!3031015)) b!7564882))

(assert (=> b!7564881 m!8127070))

(declare-fun m!8127432 () Bool)

(assert (=> b!7564881 m!8127432))

(assert (=> b!7564881 m!8126808))

(assert (=> b!7564881 m!8127404))

(assert (=> b!7564881 m!8127432))

(assert (=> b!7564881 m!8127404))

(declare-fun m!8127434 () Bool)

(assert (=> b!7564881 m!8127434))

(assert (=> b!7564882 m!8126808))

(assert (=> b!7564882 m!8127402))

(assert (=> b!7564882 m!8127070))

(declare-fun m!8127436 () Bool)

(assert (=> b!7564882 m!8127436))

(assert (=> b!7564880 m!8127070))

(declare-fun m!8127438 () Bool)

(assert (=> b!7564880 m!8127438))

(assert (=> b!7564880 m!8126808))

(declare-fun m!8127440 () Bool)

(assert (=> b!7564880 m!8127440))

(assert (=> b!7564486 d!2315949))

(declare-fun d!2315951 () Bool)

(assert (=> d!2315951 (= (tail!15100 lt!2649592) (t!387596 lt!2649592))))

(assert (=> b!7564486 d!2315951))

(assert (=> b!7564486 d!2315937))

(declare-fun b!7564883 () Bool)

(declare-fun e!4504394 () Bool)

(declare-fun call!693528 () Bool)

(assert (=> b!7564883 (= e!4504394 call!693528)))

(declare-fun b!7564884 () Bool)

(declare-fun res!3031018 () Bool)

(declare-fun e!4504395 () Bool)

(assert (=> b!7564884 (=> (not res!3031018) (not e!4504395))))

(declare-fun call!693529 () Bool)

(assert (=> b!7564884 (= res!3031018 call!693529)))

(declare-fun e!4504397 () Bool)

(assert (=> b!7564884 (= e!4504397 e!4504395)))

(declare-fun bm!693523 () Bool)

(declare-fun c!1395852 () Bool)

(declare-fun c!1395853 () Bool)

(assert (=> bm!693523 (= call!693528 (validRegex!10410 (ite c!1395853 (reg!20311 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))) (ite c!1395852 (regTwo!40477 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))) (regTwo!40476 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333)))))))))

(declare-fun b!7564885 () Bool)

(declare-fun e!4504398 () Bool)

(declare-fun e!4504392 () Bool)

(assert (=> b!7564885 (= e!4504398 e!4504392)))

(assert (=> b!7564885 (= c!1395853 (is-Star!19982 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))))))

(declare-fun b!7564886 () Bool)

(assert (=> b!7564886 (= e!4504392 e!4504397)))

(assert (=> b!7564886 (= c!1395852 (is-Union!19982 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))))))

(declare-fun bm!693524 () Bool)

(declare-fun call!693530 () Bool)

(assert (=> bm!693524 (= call!693530 call!693528)))

(declare-fun bm!693525 () Bool)

(assert (=> bm!693525 (= call!693529 (validRegex!10410 (ite c!1395852 (regOne!40477 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))) (regOne!40476 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))))))))

(declare-fun b!7564887 () Bool)

(assert (=> b!7564887 (= e!4504395 call!693530)))

(declare-fun b!7564888 () Bool)

(declare-fun e!4504393 () Bool)

(assert (=> b!7564888 (= e!4504393 call!693530)))

(declare-fun d!2315953 () Bool)

(declare-fun res!3031017 () Bool)

(assert (=> d!2315953 (=> res!3031017 e!4504398)))

(assert (=> d!2315953 (= res!3031017 (is-ElementMatch!19982 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))))))

(assert (=> d!2315953 (= (validRegex!10410 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))) e!4504398)))

(declare-fun b!7564889 () Bool)

(assert (=> b!7564889 (= e!4504392 e!4504394)))

(declare-fun res!3031020 () Bool)

(assert (=> b!7564889 (= res!3031020 (not (nullable!8716 (reg!20311 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333))))))))

(assert (=> b!7564889 (=> (not res!3031020) (not e!4504394))))

(declare-fun b!7564890 () Bool)

(declare-fun res!3031019 () Bool)

(declare-fun e!4504396 () Bool)

(assert (=> b!7564890 (=> res!3031019 e!4504396)))

(assert (=> b!7564890 (= res!3031019 (not (is-Concat!28827 (ite c!1395730 (regOne!40477 r!24333) (regOne!40476 r!24333)))))))

(assert (=> b!7564890 (= e!4504397 e!4504396)))

(declare-fun b!7564891 () Bool)

(assert (=> b!7564891 (= e!4504396 e!4504393)))

(declare-fun res!3031016 () Bool)

(assert (=> b!7564891 (=> (not res!3031016) (not e!4504393))))

(assert (=> b!7564891 (= res!3031016 call!693529)))

(assert (= (and d!2315953 (not res!3031017)) b!7564885))

(assert (= (and b!7564885 c!1395853) b!7564889))

(assert (= (and b!7564885 (not c!1395853)) b!7564886))

(assert (= (and b!7564889 res!3031020) b!7564883))

(assert (= (and b!7564886 c!1395852) b!7564884))

(assert (= (and b!7564886 (not c!1395852)) b!7564890))

(assert (= (and b!7564884 res!3031018) b!7564887))

(assert (= (and b!7564890 (not res!3031019)) b!7564891))

(assert (= (and b!7564891 res!3031016) b!7564888))

(assert (= (or b!7564884 b!7564891) bm!693525))

(assert (= (or b!7564887 b!7564888) bm!693524))

(assert (= (or b!7564883 bm!693524) bm!693523))

(declare-fun m!8127442 () Bool)

(assert (=> bm!693523 m!8127442))

(declare-fun m!8127444 () Bool)

(assert (=> bm!693525 m!8127444))

(declare-fun m!8127446 () Bool)

(assert (=> b!7564889 m!8127446))

(assert (=> bm!693469 d!2315953))

(declare-fun e!4504399 () Bool)

(declare-fun lt!2649827 () List!72865)

(declare-fun b!7564895 () Bool)

(assert (=> b!7564895 (= e!4504399 (or (not (= lt!2649764 Nil!72741)) (= lt!2649827 knownP!30)))))

(declare-fun d!2315955 () Bool)

(assert (=> d!2315955 e!4504399))

(declare-fun res!3031021 () Bool)

(assert (=> d!2315955 (=> (not res!3031021) (not e!4504399))))

(assert (=> d!2315955 (= res!3031021 (= (content!15403 lt!2649827) (set.union (content!15403 knownP!30) (content!15403 lt!2649764))))))

(declare-fun e!4504400 () List!72865)

(assert (=> d!2315955 (= lt!2649827 e!4504400)))

(declare-fun c!1395854 () Bool)

(assert (=> d!2315955 (= c!1395854 (is-Nil!72741 knownP!30))))

(assert (=> d!2315955 (= (++!17486 knownP!30 lt!2649764) lt!2649827)))

(declare-fun b!7564894 () Bool)

(declare-fun res!3031022 () Bool)

(assert (=> b!7564894 (=> (not res!3031022) (not e!4504399))))

(assert (=> b!7564894 (= res!3031022 (= (size!42478 lt!2649827) (+ (size!42478 knownP!30) (size!42478 lt!2649764))))))

(declare-fun b!7564893 () Bool)

(assert (=> b!7564893 (= e!4504400 (Cons!72741 (h!79189 knownP!30) (++!17486 (t!387596 knownP!30) lt!2649764)))))

(declare-fun b!7564892 () Bool)

(assert (=> b!7564892 (= e!4504400 lt!2649764)))

(assert (= (and d!2315955 c!1395854) b!7564892))

(assert (= (and d!2315955 (not c!1395854)) b!7564893))

(assert (= (and d!2315955 res!3031021) b!7564894))

(assert (= (and b!7564894 res!3031022) b!7564895))

(declare-fun m!8127448 () Bool)

(assert (=> d!2315955 m!8127448))

(assert (=> d!2315955 m!8127118))

(declare-fun m!8127450 () Bool)

(assert (=> d!2315955 m!8127450))

(declare-fun m!8127452 () Bool)

(assert (=> b!7564894 m!8127452))

(assert (=> b!7564894 m!8126612))

(declare-fun m!8127454 () Bool)

(assert (=> b!7564894 m!8127454))

(declare-fun m!8127456 () Bool)

(assert (=> b!7564893 m!8127456))

(assert (=> d!2315807 d!2315955))

(assert (=> d!2315807 d!2315717))

(assert (=> d!2315807 d!2315811))

(declare-fun d!2315957 () Bool)

(assert (=> d!2315957 (= (nullable!8716 (regOne!40476 r!24333)) (nullableFct!3477 (regOne!40476 r!24333)))))

(declare-fun bs!1940449 () Bool)

(assert (= bs!1940449 d!2315957))

(declare-fun m!8127458 () Bool)

(assert (=> bs!1940449 m!8127458))

(assert (=> b!7564465 d!2315957))

(declare-fun lt!2649828 () List!72865)

(declare-fun e!4504401 () Bool)

(declare-fun b!7564899 () Bool)

(assert (=> b!7564899 (= e!4504401 (or (not (= lt!2649586 Nil!72741)) (= lt!2649828 (t!387596 testedP!423))))))

(declare-fun d!2315959 () Bool)

(assert (=> d!2315959 e!4504401))

(declare-fun res!3031023 () Bool)

(assert (=> d!2315959 (=> (not res!3031023) (not e!4504401))))

(assert (=> d!2315959 (= res!3031023 (= (content!15403 lt!2649828) (set.union (content!15403 (t!387596 testedP!423)) (content!15403 lt!2649586))))))

(declare-fun e!4504402 () List!72865)

(assert (=> d!2315959 (= lt!2649828 e!4504402)))

(declare-fun c!1395855 () Bool)

(assert (=> d!2315959 (= c!1395855 (is-Nil!72741 (t!387596 testedP!423)))))

(assert (=> d!2315959 (= (++!17486 (t!387596 testedP!423) lt!2649586) lt!2649828)))

(declare-fun b!7564898 () Bool)

(declare-fun res!3031024 () Bool)

(assert (=> b!7564898 (=> (not res!3031024) (not e!4504401))))

(assert (=> b!7564898 (= res!3031024 (= (size!42478 lt!2649828) (+ (size!42478 (t!387596 testedP!423)) (size!42478 lt!2649586))))))

(declare-fun b!7564897 () Bool)

(assert (=> b!7564897 (= e!4504402 (Cons!72741 (h!79189 (t!387596 testedP!423)) (++!17486 (t!387596 (t!387596 testedP!423)) lt!2649586)))))

(declare-fun b!7564896 () Bool)

(assert (=> b!7564896 (= e!4504402 lt!2649586)))

(assert (= (and d!2315959 c!1395855) b!7564896))

(assert (= (and d!2315959 (not c!1395855)) b!7564897))

(assert (= (and d!2315959 res!3031023) b!7564898))

(assert (= (and b!7564898 res!3031024) b!7564899))

(declare-fun m!8127460 () Bool)

(assert (=> d!2315959 m!8127460))

(declare-fun m!8127462 () Bool)

(assert (=> d!2315959 m!8127462))

(assert (=> d!2315959 m!8126938))

(declare-fun m!8127464 () Bool)

(assert (=> b!7564898 m!8127464))

(assert (=> b!7564898 m!8127128))

(assert (=> b!7564898 m!8126942))

(declare-fun m!8127466 () Bool)

(assert (=> b!7564897 m!8127466))

(assert (=> b!7564354 d!2315959))

(declare-fun d!2315961 () Bool)

(assert (=> d!2315961 (= (isEmpty!41418 (tail!15100 knownP!30)) (is-Nil!72741 (tail!15100 knownP!30)))))

(assert (=> b!7564308 d!2315961))

(assert (=> b!7564308 d!2315937))

(declare-fun d!2315963 () Bool)

(declare-fun lt!2649829 () List!72865)

(assert (=> d!2315963 (= (++!17486 (t!387596 lt!2649592) lt!2649829) (tail!15100 knownP!30))))

(declare-fun e!4504403 () List!72865)

(assert (=> d!2315963 (= lt!2649829 e!4504403)))

(declare-fun c!1395856 () Bool)

(assert (=> d!2315963 (= c!1395856 (is-Cons!72741 (t!387596 lt!2649592)))))

(assert (=> d!2315963 (>= (size!42478 (tail!15100 knownP!30)) (size!42478 (t!387596 lt!2649592)))))

(assert (=> d!2315963 (= (getSuffix!3666 (tail!15100 knownP!30) (t!387596 lt!2649592)) lt!2649829)))

(declare-fun b!7564900 () Bool)

(assert (=> b!7564900 (= e!4504403 (getSuffix!3666 (tail!15100 (tail!15100 knownP!30)) (t!387596 (t!387596 lt!2649592))))))

(declare-fun b!7564901 () Bool)

(assert (=> b!7564901 (= e!4504403 (tail!15100 knownP!30))))

(assert (= (and d!2315963 c!1395856) b!7564900))

(assert (= (and d!2315963 (not c!1395856)) b!7564901))

(declare-fun m!8127468 () Bool)

(assert (=> d!2315963 m!8127468))

(assert (=> d!2315963 m!8126808))

(assert (=> d!2315963 m!8127402))

(assert (=> d!2315963 m!8126908))

(assert (=> b!7564900 m!8126808))

(assert (=> b!7564900 m!8127404))

(assert (=> b!7564900 m!8127404))

(declare-fun m!8127470 () Bool)

(assert (=> b!7564900 m!8127470))

(assert (=> b!7564416 d!2315963))

(assert (=> b!7564416 d!2315937))

(declare-fun d!2315965 () Bool)

(declare-fun c!1395857 () Bool)

(assert (=> d!2315965 (= c!1395857 (is-Nil!72741 lt!2649715))))

(declare-fun e!4504404 () (Set C!40290))

(assert (=> d!2315965 (= (content!15403 lt!2649715) e!4504404)))

(declare-fun b!7564902 () Bool)

(assert (=> b!7564902 (= e!4504404 (as set.empty (Set C!40290)))))

(declare-fun b!7564903 () Bool)

(assert (=> b!7564903 (= e!4504404 (set.union (set.insert (h!79189 lt!2649715) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649715))))))

(assert (= (and d!2315965 c!1395857) b!7564902))

(assert (= (and d!2315965 (not c!1395857)) b!7564903))

(declare-fun m!8127472 () Bool)

(assert (=> b!7564903 m!8127472))

(declare-fun m!8127474 () Bool)

(assert (=> b!7564903 m!8127474))

(assert (=> d!2315729 d!2315965))

(declare-fun d!2315967 () Bool)

(declare-fun c!1395858 () Bool)

(assert (=> d!2315967 (= c!1395858 (is-Nil!72741 lt!2649585))))

(declare-fun e!4504405 () (Set C!40290))

(assert (=> d!2315967 (= (content!15403 lt!2649585) e!4504405)))

(declare-fun b!7564904 () Bool)

(assert (=> b!7564904 (= e!4504405 (as set.empty (Set C!40290)))))

(declare-fun b!7564905 () Bool)

(assert (=> b!7564905 (= e!4504405 (set.union (set.insert (h!79189 lt!2649585) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649585))))))

(assert (= (and d!2315967 c!1395858) b!7564904))

(assert (= (and d!2315967 (not c!1395858)) b!7564905))

(declare-fun m!8127476 () Bool)

(assert (=> b!7564905 m!8127476))

(declare-fun m!8127478 () Bool)

(assert (=> b!7564905 m!8127478))

(assert (=> d!2315729 d!2315967))

(assert (=> d!2315729 d!2315923))

(declare-fun b!7564906 () Bool)

(declare-fun e!4504408 () Bool)

(declare-fun call!693531 () Bool)

(assert (=> b!7564906 (= e!4504408 call!693531)))

(declare-fun b!7564907 () Bool)

(declare-fun res!3031027 () Bool)

(declare-fun e!4504409 () Bool)

(assert (=> b!7564907 (=> (not res!3031027) (not e!4504409))))

(declare-fun call!693532 () Bool)

(assert (=> b!7564907 (= res!3031027 call!693532)))

(declare-fun e!4504411 () Bool)

(assert (=> b!7564907 (= e!4504411 e!4504409)))

(declare-fun c!1395860 () Bool)

(declare-fun c!1395859 () Bool)

(declare-fun bm!693526 () Bool)

(assert (=> bm!693526 (= call!693531 (validRegex!10410 (ite c!1395860 (reg!20311 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))) (ite c!1395859 (regTwo!40477 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))) (regTwo!40476 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591))))))))))

(declare-fun b!7564908 () Bool)

(declare-fun e!4504412 () Bool)

(declare-fun e!4504406 () Bool)

(assert (=> b!7564908 (= e!4504412 e!4504406)))

(assert (=> b!7564908 (= c!1395860 (is-Star!19982 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))))))

(declare-fun b!7564909 () Bool)

(assert (=> b!7564909 (= e!4504406 e!4504411)))

(assert (=> b!7564909 (= c!1395859 (is-Union!19982 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))))))

(declare-fun bm!693527 () Bool)

(declare-fun call!693533 () Bool)

(assert (=> bm!693527 (= call!693533 call!693531)))

(declare-fun bm!693528 () Bool)

(assert (=> bm!693528 (= call!693532 (validRegex!10410 (ite c!1395859 (regOne!40477 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))) (regOne!40476 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))))))))

(declare-fun b!7564910 () Bool)

(assert (=> b!7564910 (= e!4504409 call!693533)))

(declare-fun b!7564911 () Bool)

(declare-fun e!4504407 () Bool)

(assert (=> b!7564911 (= e!4504407 call!693533)))

(declare-fun d!2315969 () Bool)

(declare-fun res!3031026 () Bool)

(assert (=> d!2315969 (=> res!3031026 e!4504412)))

(assert (=> d!2315969 (= res!3031026 (is-ElementMatch!19982 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))))))

(assert (=> d!2315969 (= (validRegex!10410 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))) e!4504412)))

(declare-fun b!7564912 () Bool)

(assert (=> b!7564912 (= e!4504406 e!4504408)))

(declare-fun res!3031029 () Bool)

(assert (=> b!7564912 (= res!3031029 (not (nullable!8716 (reg!20311 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)))))))))

(assert (=> b!7564912 (=> (not res!3031029) (not e!4504408))))

(declare-fun b!7564913 () Bool)

(declare-fun res!3031028 () Bool)

(declare-fun e!4504410 () Bool)

(assert (=> b!7564913 (=> res!3031028 e!4504410)))

(assert (=> b!7564913 (= res!3031028 (not (is-Concat!28827 (ite c!1395684 (reg!20311 lt!2649591) (ite c!1395683 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591))))))))

(assert (=> b!7564913 (= e!4504411 e!4504410)))

(declare-fun b!7564914 () Bool)

(assert (=> b!7564914 (= e!4504410 e!4504407)))

(declare-fun res!3031025 () Bool)

(assert (=> b!7564914 (=> (not res!3031025) (not e!4504407))))

(assert (=> b!7564914 (= res!3031025 call!693532)))

(assert (= (and d!2315969 (not res!3031026)) b!7564908))

(assert (= (and b!7564908 c!1395860) b!7564912))

(assert (= (and b!7564908 (not c!1395860)) b!7564909))

(assert (= (and b!7564912 res!3031029) b!7564906))

(assert (= (and b!7564909 c!1395859) b!7564907))

(assert (= (and b!7564909 (not c!1395859)) b!7564913))

(assert (= (and b!7564907 res!3031027) b!7564910))

(assert (= (and b!7564913 (not res!3031028)) b!7564914))

(assert (= (and b!7564914 res!3031025) b!7564911))

(assert (= (or b!7564907 b!7564914) bm!693528))

(assert (= (or b!7564910 b!7564911) bm!693527))

(assert (= (or b!7564906 bm!693527) bm!693526))

(declare-fun m!8127480 () Bool)

(assert (=> bm!693526 m!8127480))

(declare-fun m!8127482 () Bool)

(assert (=> bm!693528 m!8127482))

(declare-fun m!8127484 () Bool)

(assert (=> b!7564912 m!8127484))

(assert (=> bm!693448 d!2315969))

(declare-fun e!4504413 () Bool)

(declare-fun b!7564918 () Bool)

(declare-fun lt!2649830 () List!72865)

(assert (=> b!7564918 (= e!4504413 (or (not (= lt!2649594 Nil!72741)) (= lt!2649830 (t!387596 testedP!423))))))

(declare-fun d!2315971 () Bool)

(assert (=> d!2315971 e!4504413))

(declare-fun res!3031030 () Bool)

(assert (=> d!2315971 (=> (not res!3031030) (not e!4504413))))

(assert (=> d!2315971 (= res!3031030 (= (content!15403 lt!2649830) (set.union (content!15403 (t!387596 testedP!423)) (content!15403 lt!2649594))))))

(declare-fun e!4504414 () List!72865)

(assert (=> d!2315971 (= lt!2649830 e!4504414)))

(declare-fun c!1395861 () Bool)

(assert (=> d!2315971 (= c!1395861 (is-Nil!72741 (t!387596 testedP!423)))))

(assert (=> d!2315971 (= (++!17486 (t!387596 testedP!423) lt!2649594) lt!2649830)))

(declare-fun b!7564917 () Bool)

(declare-fun res!3031031 () Bool)

(assert (=> b!7564917 (=> (not res!3031031) (not e!4504413))))

(assert (=> b!7564917 (= res!3031031 (= (size!42478 lt!2649830) (+ (size!42478 (t!387596 testedP!423)) (size!42478 lt!2649594))))))

(declare-fun b!7564916 () Bool)

(assert (=> b!7564916 (= e!4504414 (Cons!72741 (h!79189 (t!387596 testedP!423)) (++!17486 (t!387596 (t!387596 testedP!423)) lt!2649594)))))

(declare-fun b!7564915 () Bool)

(assert (=> b!7564915 (= e!4504414 lt!2649594)))

(assert (= (and d!2315971 c!1395861) b!7564915))

(assert (= (and d!2315971 (not c!1395861)) b!7564916))

(assert (= (and d!2315971 res!3031030) b!7564917))

(assert (= (and b!7564917 res!3031031) b!7564918))

(declare-fun m!8127486 () Bool)

(assert (=> d!2315971 m!8127486))

(assert (=> d!2315971 m!8127462))

(assert (=> d!2315971 m!8126948))

(declare-fun m!8127488 () Bool)

(assert (=> b!7564917 m!8127488))

(assert (=> b!7564917 m!8127128))

(assert (=> b!7564917 m!8126954))

(declare-fun m!8127490 () Bool)

(assert (=> b!7564916 m!8127490))

(assert (=> b!7564491 d!2315971))

(declare-fun d!2315973 () Bool)

(declare-fun c!1395862 () Bool)

(assert (=> d!2315973 (= c!1395862 (is-Nil!72741 lt!2649738))))

(declare-fun e!4504415 () (Set C!40290))

(assert (=> d!2315973 (= (content!15403 lt!2649738) e!4504415)))

(declare-fun b!7564919 () Bool)

(assert (=> b!7564919 (= e!4504415 (as set.empty (Set C!40290)))))

(declare-fun b!7564920 () Bool)

(assert (=> b!7564920 (= e!4504415 (set.union (set.insert (h!79189 lt!2649738) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649738))))))

(assert (= (and d!2315973 c!1395862) b!7564919))

(assert (= (and d!2315973 (not c!1395862)) b!7564920))

(declare-fun m!8127492 () Bool)

(assert (=> b!7564920 m!8127492))

(declare-fun m!8127494 () Bool)

(assert (=> b!7564920 m!8127494))

(assert (=> d!2315763 d!2315973))

(declare-fun d!2315975 () Bool)

(declare-fun c!1395863 () Bool)

(assert (=> d!2315975 (= c!1395863 (is-Nil!72741 testedP!423))))

(declare-fun e!4504416 () (Set C!40290))

(assert (=> d!2315975 (= (content!15403 testedP!423) e!4504416)))

(declare-fun b!7564921 () Bool)

(assert (=> b!7564921 (= e!4504416 (as set.empty (Set C!40290)))))

(declare-fun b!7564922 () Bool)

(assert (=> b!7564922 (= e!4504416 (set.union (set.insert (h!79189 testedP!423) (as set.empty (Set C!40290))) (content!15403 (t!387596 testedP!423))))))

(assert (= (and d!2315975 c!1395863) b!7564921))

(assert (= (and d!2315975 (not c!1395863)) b!7564922))

(declare-fun m!8127496 () Bool)

(assert (=> b!7564922 m!8127496))

(assert (=> b!7564922 m!8127462))

(assert (=> d!2315763 d!2315975))

(declare-fun d!2315977 () Bool)

(declare-fun c!1395864 () Bool)

(assert (=> d!2315977 (= c!1395864 (is-Nil!72741 lt!2649596))))

(declare-fun e!4504417 () (Set C!40290))

(assert (=> d!2315977 (= (content!15403 lt!2649596) e!4504417)))

(declare-fun b!7564923 () Bool)

(assert (=> b!7564923 (= e!4504417 (as set.empty (Set C!40290)))))

(declare-fun b!7564924 () Bool)

(assert (=> b!7564924 (= e!4504417 (set.union (set.insert (h!79189 lt!2649596) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649596))))))

(assert (= (and d!2315977 c!1395864) b!7564923))

(assert (= (and d!2315977 (not c!1395864)) b!7564924))

(declare-fun m!8127498 () Bool)

(assert (=> b!7564924 m!8127498))

(declare-fun m!8127500 () Bool)

(assert (=> b!7564924 m!8127500))

(assert (=> d!2315763 d!2315977))

(declare-fun b!7564928 () Bool)

(declare-fun e!4504418 () Bool)

(declare-fun lt!2649831 () List!72865)

(assert (=> b!7564928 (= e!4504418 (or (not (= lt!2649744 Nil!72741)) (= lt!2649831 lt!2649592)))))

(declare-fun d!2315979 () Bool)

(assert (=> d!2315979 e!4504418))

(declare-fun res!3031032 () Bool)

(assert (=> d!2315979 (=> (not res!3031032) (not e!4504418))))

(assert (=> d!2315979 (= res!3031032 (= (content!15403 lt!2649831) (set.union (content!15403 lt!2649592) (content!15403 lt!2649744))))))

(declare-fun e!4504419 () List!72865)

(assert (=> d!2315979 (= lt!2649831 e!4504419)))

(declare-fun c!1395865 () Bool)

(assert (=> d!2315979 (= c!1395865 (is-Nil!72741 lt!2649592))))

(assert (=> d!2315979 (= (++!17486 lt!2649592 lt!2649744) lt!2649831)))

(declare-fun b!7564927 () Bool)

(declare-fun res!3031033 () Bool)

(assert (=> b!7564927 (=> (not res!3031033) (not e!4504418))))

(assert (=> b!7564927 (= res!3031033 (= (size!42478 lt!2649831) (+ (size!42478 lt!2649592) (size!42478 lt!2649744))))))

(declare-fun b!7564926 () Bool)

(assert (=> b!7564926 (= e!4504419 (Cons!72741 (h!79189 lt!2649592) (++!17486 (t!387596 lt!2649592) lt!2649744)))))

(declare-fun b!7564925 () Bool)

(assert (=> b!7564925 (= e!4504419 lt!2649744)))

(assert (= (and d!2315979 c!1395865) b!7564925))

(assert (= (and d!2315979 (not c!1395865)) b!7564926))

(assert (= (and d!2315979 res!3031032) b!7564927))

(assert (= (and b!7564927 res!3031033) b!7564928))

(declare-fun m!8127502 () Bool)

(assert (=> d!2315979 m!8127502))

(assert (=> d!2315979 m!8127032))

(declare-fun m!8127504 () Bool)

(assert (=> d!2315979 m!8127504))

(declare-fun m!8127506 () Bool)

(assert (=> b!7564927 m!8127506))

(assert (=> b!7564927 m!8126636))

(declare-fun m!8127508 () Bool)

(assert (=> b!7564927 m!8127508))

(declare-fun m!8127510 () Bool)

(assert (=> b!7564926 m!8127510))

(assert (=> d!2315777 d!2315979))

(assert (=> d!2315777 d!2315811))

(assert (=> d!2315777 d!2315737))

(declare-fun d!2315981 () Bool)

(declare-fun c!1395866 () Bool)

(assert (=> d!2315981 (= c!1395866 (is-Nil!72741 lt!2649762))))

(declare-fun e!4504420 () (Set C!40290))

(assert (=> d!2315981 (= (content!15403 lt!2649762) e!4504420)))

(declare-fun b!7564929 () Bool)

(assert (=> b!7564929 (= e!4504420 (as set.empty (Set C!40290)))))

(declare-fun b!7564930 () Bool)

(assert (=> b!7564930 (= e!4504420 (set.union (set.insert (h!79189 lt!2649762) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649762))))))

(assert (= (and d!2315981 c!1395866) b!7564929))

(assert (= (and d!2315981 (not c!1395866)) b!7564930))

(declare-fun m!8127512 () Bool)

(assert (=> b!7564930 m!8127512))

(declare-fun m!8127514 () Bool)

(assert (=> b!7564930 m!8127514))

(assert (=> d!2315801 d!2315981))

(assert (=> d!2315801 d!2315975))

(assert (=> d!2315801 d!2315941))

(declare-fun d!2315983 () Bool)

(assert (=> d!2315983 (= (isEmpty!41418 lt!2649585) (is-Nil!72741 lt!2649585))))

(assert (=> d!2315705 d!2315983))

(assert (=> d!2315705 d!2315765))

(assert (=> d!2315795 d!2315775))

(declare-fun d!2315985 () Bool)

(declare-fun e!4504422 () Bool)

(assert (=> d!2315985 e!4504422))

(declare-fun res!3031037 () Bool)

(assert (=> d!2315985 (=> res!3031037 e!4504422)))

(declare-fun lt!2649832 () Bool)

(assert (=> d!2315985 (= res!3031037 (not lt!2649832))))

(declare-fun e!4504421 () Bool)

(assert (=> d!2315985 (= lt!2649832 e!4504421)))

(declare-fun res!3031034 () Bool)

(assert (=> d!2315985 (=> res!3031034 e!4504421)))

(assert (=> d!2315985 (= res!3031034 (is-Nil!72741 (++!17486 testedP!423 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741))))))

(assert (=> d!2315985 (= (isPrefix!6188 (++!17486 testedP!423 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741)) input!7874) lt!2649832)))

(declare-fun b!7564933 () Bool)

(declare-fun e!4504423 () Bool)

(assert (=> b!7564933 (= e!4504423 (isPrefix!6188 (tail!15100 (++!17486 testedP!423 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741))) (tail!15100 input!7874)))))

(declare-fun b!7564934 () Bool)

(assert (=> b!7564934 (= e!4504422 (>= (size!42478 input!7874) (size!42478 (++!17486 testedP!423 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741)))))))

(declare-fun b!7564931 () Bool)

(assert (=> b!7564931 (= e!4504421 e!4504423)))

(declare-fun res!3031036 () Bool)

(assert (=> b!7564931 (=> (not res!3031036) (not e!4504423))))

(assert (=> b!7564931 (= res!3031036 (not (is-Nil!72741 input!7874)))))

(declare-fun b!7564932 () Bool)

(declare-fun res!3031035 () Bool)

(assert (=> b!7564932 (=> (not res!3031035) (not e!4504423))))

(assert (=> b!7564932 (= res!3031035 (= (head!15560 (++!17486 testedP!423 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741))) (head!15560 input!7874)))))

(assert (= (and d!2315985 (not res!3031034)) b!7564931))

(assert (= (and b!7564931 res!3031036) b!7564932))

(assert (= (and b!7564932 res!3031035) b!7564933))

(assert (= (and d!2315985 (not res!3031037)) b!7564934))

(assert (=> b!7564933 m!8127088))

(declare-fun m!8127516 () Bool)

(assert (=> b!7564933 m!8127516))

(assert (=> b!7564933 m!8126968))

(assert (=> b!7564933 m!8127516))

(assert (=> b!7564933 m!8126968))

(declare-fun m!8127518 () Bool)

(assert (=> b!7564933 m!8127518))

(assert (=> b!7564934 m!8126696))

(assert (=> b!7564934 m!8127088))

(declare-fun m!8127520 () Bool)

(assert (=> b!7564934 m!8127520))

(assert (=> b!7564932 m!8127088))

(declare-fun m!8127522 () Bool)

(assert (=> b!7564932 m!8127522))

(assert (=> b!7564932 m!8126972))

(assert (=> d!2315795 d!2315985))

(declare-fun d!2315987 () Bool)

(assert (=> d!2315987 (isPrefix!6188 (++!17486 testedP!423 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741)) input!7874)))

(assert (=> d!2315987 true))

(declare-fun _$65!1913 () Unit!166898)

(assert (=> d!2315987 (= (choose!58506 testedP!423 input!7874) _$65!1913)))

(declare-fun bs!1940450 () Bool)

(assert (= bs!1940450 d!2315987))

(assert (=> bs!1940450 m!8126682))

(assert (=> bs!1940450 m!8126682))

(assert (=> bs!1940450 m!8127086))

(assert (=> bs!1940450 m!8127088))

(assert (=> bs!1940450 m!8127088))

(assert (=> bs!1940450 m!8127090))

(assert (=> d!2315795 d!2315987))

(assert (=> d!2315795 d!2315759))

(declare-fun b!7564938 () Bool)

(declare-fun lt!2649833 () List!72865)

(declare-fun e!4504424 () Bool)

(assert (=> b!7564938 (= e!4504424 (or (not (= (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741) Nil!72741)) (= lt!2649833 testedP!423)))))

(declare-fun d!2315989 () Bool)

(assert (=> d!2315989 e!4504424))

(declare-fun res!3031038 () Bool)

(assert (=> d!2315989 (=> (not res!3031038) (not e!4504424))))

(assert (=> d!2315989 (= res!3031038 (= (content!15403 lt!2649833) (set.union (content!15403 testedP!423) (content!15403 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741)))))))

(declare-fun e!4504425 () List!72865)

(assert (=> d!2315989 (= lt!2649833 e!4504425)))

(declare-fun c!1395867 () Bool)

(assert (=> d!2315989 (= c!1395867 (is-Nil!72741 testedP!423))))

(assert (=> d!2315989 (= (++!17486 testedP!423 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741)) lt!2649833)))

(declare-fun b!7564937 () Bool)

(declare-fun res!3031039 () Bool)

(assert (=> b!7564937 (=> (not res!3031039) (not e!4504424))))

(assert (=> b!7564937 (= res!3031039 (= (size!42478 lt!2649833) (+ (size!42478 testedP!423) (size!42478 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741)))))))

(declare-fun b!7564936 () Bool)

(assert (=> b!7564936 (= e!4504425 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741))))))

(declare-fun b!7564935 () Bool)

(assert (=> b!7564935 (= e!4504425 (Cons!72741 (head!15560 (getSuffix!3666 input!7874 testedP!423)) Nil!72741))))

(assert (= (and d!2315989 c!1395867) b!7564935))

(assert (= (and d!2315989 (not c!1395867)) b!7564936))

(assert (= (and d!2315989 res!3031038) b!7564937))

(assert (= (and b!7564937 res!3031039) b!7564938))

(declare-fun m!8127524 () Bool)

(assert (=> d!2315989 m!8127524))

(assert (=> d!2315989 m!8126852))

(declare-fun m!8127526 () Bool)

(assert (=> d!2315989 m!8127526))

(declare-fun m!8127528 () Bool)

(assert (=> b!7564937 m!8127528))

(assert (=> b!7564937 m!8126610))

(declare-fun m!8127530 () Bool)

(assert (=> b!7564937 m!8127530))

(declare-fun m!8127532 () Bool)

(assert (=> b!7564936 m!8127532))

(assert (=> d!2315795 d!2315989))

(declare-fun d!2315991 () Bool)

(assert (=> d!2315991 (= (head!15560 (getSuffix!3666 input!7874 testedP!423)) (h!79189 (getSuffix!3666 input!7874 testedP!423)))))

(assert (=> d!2315795 d!2315991))

(declare-fun d!2315993 () Bool)

(declare-fun lt!2649834 () Int)

(assert (=> d!2315993 (>= lt!2649834 0)))

(declare-fun e!4504426 () Int)

(assert (=> d!2315993 (= lt!2649834 e!4504426)))

(declare-fun c!1395868 () Bool)

(assert (=> d!2315993 (= c!1395868 (is-Nil!72741 lt!2649712))))

(assert (=> d!2315993 (= (size!42478 lt!2649712) lt!2649834)))

(declare-fun b!7564939 () Bool)

(assert (=> b!7564939 (= e!4504426 0)))

(declare-fun b!7564940 () Bool)

(assert (=> b!7564940 (= e!4504426 (+ 1 (size!42478 (t!387596 lt!2649712))))))

(assert (= (and d!2315993 c!1395868) b!7564939))

(assert (= (and d!2315993 (not c!1395868)) b!7564940))

(declare-fun m!8127534 () Bool)

(assert (=> b!7564940 m!8127534))

(assert (=> b!7564301 d!2315993))

(assert (=> b!7564301 d!2315809))

(declare-fun d!2315995 () Bool)

(declare-fun lt!2649835 () Int)

(assert (=> d!2315995 (>= lt!2649835 0)))

(declare-fun e!4504427 () Int)

(assert (=> d!2315995 (= lt!2649835 e!4504427)))

(declare-fun c!1395869 () Bool)

(assert (=> d!2315995 (= c!1395869 (is-Nil!72741 lt!2649585))))

(assert (=> d!2315995 (= (size!42478 lt!2649585) lt!2649835)))

(declare-fun b!7564941 () Bool)

(assert (=> b!7564941 (= e!4504427 0)))

(declare-fun b!7564942 () Bool)

(assert (=> b!7564942 (= e!4504427 (+ 1 (size!42478 (t!387596 lt!2649585))))))

(assert (= (and d!2315995 c!1395869) b!7564941))

(assert (= (and d!2315995 (not c!1395869)) b!7564942))

(declare-fun m!8127536 () Bool)

(assert (=> b!7564942 m!8127536))

(assert (=> b!7564301 d!2315995))

(declare-fun b!7564946 () Bool)

(declare-fun e!4504428 () Bool)

(declare-fun lt!2649836 () List!72865)

(assert (=> b!7564946 (= e!4504428 (or (not (= lt!2649698 Nil!72741)) (= lt!2649836 testedP!423)))))

(declare-fun d!2315997 () Bool)

(assert (=> d!2315997 e!4504428))

(declare-fun res!3031040 () Bool)

(assert (=> d!2315997 (=> (not res!3031040) (not e!4504428))))

(assert (=> d!2315997 (= res!3031040 (= (content!15403 lt!2649836) (set.union (content!15403 testedP!423) (content!15403 lt!2649698))))))

(declare-fun e!4504429 () List!72865)

(assert (=> d!2315997 (= lt!2649836 e!4504429)))

(declare-fun c!1395870 () Bool)

(assert (=> d!2315997 (= c!1395870 (is-Nil!72741 testedP!423))))

(assert (=> d!2315997 (= (++!17486 testedP!423 lt!2649698) lt!2649836)))

(declare-fun b!7564945 () Bool)

(declare-fun res!3031041 () Bool)

(assert (=> b!7564945 (=> (not res!3031041) (not e!4504428))))

(assert (=> b!7564945 (= res!3031041 (= (size!42478 lt!2649836) (+ (size!42478 testedP!423) (size!42478 lt!2649698))))))

(declare-fun b!7564944 () Bool)

(assert (=> b!7564944 (= e!4504429 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) lt!2649698)))))

(declare-fun b!7564943 () Bool)

(assert (=> b!7564943 (= e!4504429 lt!2649698)))

(assert (= (and d!2315997 c!1395870) b!7564943))

(assert (= (and d!2315997 (not c!1395870)) b!7564944))

(assert (= (and d!2315997 res!3031040) b!7564945))

(assert (= (and b!7564945 res!3031041) b!7564946))

(declare-fun m!8127538 () Bool)

(assert (=> d!2315997 m!8127538))

(assert (=> d!2315997 m!8126852))

(declare-fun m!8127540 () Bool)

(assert (=> d!2315997 m!8127540))

(declare-fun m!8127542 () Bool)

(assert (=> b!7564945 m!8127542))

(assert (=> b!7564945 m!8126610))

(declare-fun m!8127544 () Bool)

(assert (=> b!7564945 m!8127544))

(declare-fun m!8127546 () Bool)

(assert (=> b!7564944 m!8127546))

(assert (=> d!2315709 d!2315997))

(assert (=> d!2315709 d!2315811))

(assert (=> d!2315709 d!2315809))

(assert (=> d!2315715 d!2315711))

(declare-fun d!2315999 () Bool)

(assert (=> d!2315999 (isPrefix!6188 testedP!423 knownP!30)))

(assert (=> d!2315999 true))

(declare-fun _$69!421 () Unit!166898)

(assert (=> d!2315999 (= (choose!58502 knownP!30 testedP!423 input!7874) _$69!421)))

(declare-fun bs!1940451 () Bool)

(assert (= bs!1940451 d!2315999))

(assert (=> bs!1940451 m!8126652))

(assert (=> d!2315715 d!2315999))

(assert (=> d!2315715 d!2315755))

(declare-fun b!7564947 () Bool)

(declare-fun e!4504432 () Bool)

(declare-fun call!693534 () Bool)

(assert (=> b!7564947 (= e!4504432 call!693534)))

(declare-fun b!7564948 () Bool)

(declare-fun res!3031044 () Bool)

(declare-fun e!4504433 () Bool)

(assert (=> b!7564948 (=> (not res!3031044) (not e!4504433))))

(declare-fun call!693535 () Bool)

(assert (=> b!7564948 (= res!3031044 call!693535)))

(declare-fun e!4504435 () Bool)

(assert (=> b!7564948 (= e!4504435 e!4504433)))

(declare-fun c!1395872 () Bool)

(declare-fun bm!693529 () Bool)

(declare-fun c!1395871 () Bool)

(assert (=> bm!693529 (= call!693534 (validRegex!10410 (ite c!1395872 (reg!20311 lt!2649748) (ite c!1395871 (regTwo!40477 lt!2649748) (regTwo!40476 lt!2649748)))))))

(declare-fun b!7564949 () Bool)

(declare-fun e!4504436 () Bool)

(declare-fun e!4504430 () Bool)

(assert (=> b!7564949 (= e!4504436 e!4504430)))

(assert (=> b!7564949 (= c!1395872 (is-Star!19982 lt!2649748))))

(declare-fun b!7564950 () Bool)

(assert (=> b!7564950 (= e!4504430 e!4504435)))

(assert (=> b!7564950 (= c!1395871 (is-Union!19982 lt!2649748))))

(declare-fun bm!693530 () Bool)

(declare-fun call!693536 () Bool)

(assert (=> bm!693530 (= call!693536 call!693534)))

(declare-fun bm!693531 () Bool)

(assert (=> bm!693531 (= call!693535 (validRegex!10410 (ite c!1395871 (regOne!40477 lt!2649748) (regOne!40476 lt!2649748))))))

(declare-fun b!7564951 () Bool)

(assert (=> b!7564951 (= e!4504433 call!693536)))

(declare-fun b!7564952 () Bool)

(declare-fun e!4504431 () Bool)

(assert (=> b!7564952 (= e!4504431 call!693536)))

(declare-fun d!2316001 () Bool)

(declare-fun res!3031043 () Bool)

(assert (=> d!2316001 (=> res!3031043 e!4504436)))

(assert (=> d!2316001 (= res!3031043 (is-ElementMatch!19982 lt!2649748))))

(assert (=> d!2316001 (= (validRegex!10410 lt!2649748) e!4504436)))

(declare-fun b!7564953 () Bool)

(assert (=> b!7564953 (= e!4504430 e!4504432)))

(declare-fun res!3031046 () Bool)

(assert (=> b!7564953 (= res!3031046 (not (nullable!8716 (reg!20311 lt!2649748))))))

(assert (=> b!7564953 (=> (not res!3031046) (not e!4504432))))

(declare-fun b!7564954 () Bool)

(declare-fun res!3031045 () Bool)

(declare-fun e!4504434 () Bool)

(assert (=> b!7564954 (=> res!3031045 e!4504434)))

(assert (=> b!7564954 (= res!3031045 (not (is-Concat!28827 lt!2649748)))))

(assert (=> b!7564954 (= e!4504435 e!4504434)))

(declare-fun b!7564955 () Bool)

(assert (=> b!7564955 (= e!4504434 e!4504431)))

(declare-fun res!3031042 () Bool)

(assert (=> b!7564955 (=> (not res!3031042) (not e!4504431))))

(assert (=> b!7564955 (= res!3031042 call!693535)))

(assert (= (and d!2316001 (not res!3031043)) b!7564949))

(assert (= (and b!7564949 c!1395872) b!7564953))

(assert (= (and b!7564949 (not c!1395872)) b!7564950))

(assert (= (and b!7564953 res!3031046) b!7564947))

(assert (= (and b!7564950 c!1395871) b!7564948))

(assert (= (and b!7564950 (not c!1395871)) b!7564954))

(assert (= (and b!7564948 res!3031044) b!7564951))

(assert (= (and b!7564954 (not res!3031045)) b!7564955))

(assert (= (and b!7564955 res!3031042) b!7564952))

(assert (= (or b!7564948 b!7564955) bm!693531))

(assert (= (or b!7564951 b!7564952) bm!693530))

(assert (= (or b!7564947 bm!693530) bm!693529))

(declare-fun m!8127548 () Bool)

(assert (=> bm!693529 m!8127548))

(declare-fun m!8127550 () Bool)

(assert (=> bm!693531 m!8127550))

(declare-fun m!8127552 () Bool)

(assert (=> b!7564953 m!8127552))

(assert (=> d!2315779 d!2316001))

(assert (=> d!2315779 d!2315765))

(declare-fun d!2316003 () Bool)

(declare-fun lt!2649837 () Int)

(assert (=> d!2316003 (>= lt!2649837 0)))

(declare-fun e!4504437 () Int)

(assert (=> d!2316003 (= lt!2649837 e!4504437)))

(declare-fun c!1395873 () Bool)

(assert (=> d!2316003 (= c!1395873 (is-Nil!72741 lt!2649715))))

(assert (=> d!2316003 (= (size!42478 lt!2649715) lt!2649837)))

(declare-fun b!7564956 () Bool)

(assert (=> b!7564956 (= e!4504437 0)))

(declare-fun b!7564957 () Bool)

(assert (=> b!7564957 (= e!4504437 (+ 1 (size!42478 (t!387596 lt!2649715))))))

(assert (= (and d!2316003 c!1395873) b!7564956))

(assert (= (and d!2316003 (not c!1395873)) b!7564957))

(declare-fun m!8127554 () Bool)

(assert (=> b!7564957 m!8127554))

(assert (=> b!7564323 d!2316003))

(assert (=> b!7564323 d!2315995))

(declare-fun d!2316005 () Bool)

(declare-fun lt!2649838 () Int)

(assert (=> d!2316005 (>= lt!2649838 0)))

(declare-fun e!4504438 () Int)

(assert (=> d!2316005 (= lt!2649838 e!4504438)))

(declare-fun c!1395874 () Bool)

(assert (=> d!2316005 (= c!1395874 (is-Nil!72741 lt!2649589))))

(assert (=> d!2316005 (= (size!42478 lt!2649589) lt!2649838)))

(declare-fun b!7564958 () Bool)

(assert (=> b!7564958 (= e!4504438 0)))

(declare-fun b!7564959 () Bool)

(assert (=> b!7564959 (= e!4504438 (+ 1 (size!42478 (t!387596 lt!2649589))))))

(assert (= (and d!2316005 c!1395874) b!7564958))

(assert (= (and d!2316005 (not c!1395874)) b!7564959))

(declare-fun m!8127556 () Bool)

(assert (=> b!7564959 m!8127556))

(assert (=> b!7564323 d!2316005))

(declare-fun d!2316007 () Bool)

(declare-fun c!1395875 () Bool)

(assert (=> d!2316007 (= c!1395875 (is-Nil!72741 lt!2649711))))

(declare-fun e!4504439 () (Set C!40290))

(assert (=> d!2316007 (= (content!15403 lt!2649711) e!4504439)))

(declare-fun b!7564960 () Bool)

(assert (=> b!7564960 (= e!4504439 (as set.empty (Set C!40290)))))

(declare-fun b!7564961 () Bool)

(assert (=> b!7564961 (= e!4504439 (set.union (set.insert (h!79189 lt!2649711) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649711))))))

(assert (= (and d!2316007 c!1395875) b!7564960))

(assert (= (and d!2316007 (not c!1395875)) b!7564961))

(declare-fun m!8127558 () Bool)

(assert (=> b!7564961 m!8127558))

(declare-fun m!8127560 () Bool)

(assert (=> b!7564961 m!8127560))

(assert (=> d!2315719 d!2316007))

(declare-fun d!2316009 () Bool)

(declare-fun c!1395876 () Bool)

(assert (=> d!2316009 (= c!1395876 (is-Nil!72741 lt!2649587))))

(declare-fun e!4504440 () (Set C!40290))

(assert (=> d!2316009 (= (content!15403 lt!2649587) e!4504440)))

(declare-fun b!7564962 () Bool)

(assert (=> b!7564962 (= e!4504440 (as set.empty (Set C!40290)))))

(declare-fun b!7564963 () Bool)

(assert (=> b!7564963 (= e!4504440 (set.union (set.insert (h!79189 lt!2649587) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649587))))))

(assert (= (and d!2316009 c!1395876) b!7564962))

(assert (= (and d!2316009 (not c!1395876)) b!7564963))

(declare-fun m!8127562 () Bool)

(assert (=> b!7564963 m!8127562))

(declare-fun m!8127564 () Bool)

(assert (=> b!7564963 m!8127564))

(assert (=> d!2315719 d!2316009))

(assert (=> d!2315719 d!2315923))

(declare-fun d!2316011 () Bool)

(assert (=> d!2316011 (= (nullable!8716 (reg!20311 baseR!101)) (nullableFct!3477 (reg!20311 baseR!101)))))

(declare-fun bs!1940452 () Bool)

(assert (= bs!1940452 d!2316011))

(declare-fun m!8127566 () Bool)

(assert (=> bs!1940452 m!8127566))

(assert (=> b!7564340 d!2316011))

(declare-fun d!2316013 () Bool)

(declare-fun lt!2649839 () Int)

(assert (=> d!2316013 (>= lt!2649839 0)))

(declare-fun e!4504441 () Int)

(assert (=> d!2316013 (= lt!2649839 e!4504441)))

(declare-fun c!1395877 () Bool)

(assert (=> d!2316013 (= c!1395877 (is-Nil!72741 lt!2649738))))

(assert (=> d!2316013 (= (size!42478 lt!2649738) lt!2649839)))

(declare-fun b!7564964 () Bool)

(assert (=> b!7564964 (= e!4504441 0)))

(declare-fun b!7564965 () Bool)

(assert (=> b!7564965 (= e!4504441 (+ 1 (size!42478 (t!387596 lt!2649738))))))

(assert (= (and d!2316013 c!1395877) b!7564964))

(assert (= (and d!2316013 (not c!1395877)) b!7564965))

(declare-fun m!8127568 () Bool)

(assert (=> b!7564965 m!8127568))

(assert (=> b!7564381 d!2316013))

(assert (=> b!7564381 d!2315809))

(declare-fun d!2316015 () Bool)

(declare-fun lt!2649840 () Int)

(assert (=> d!2316015 (>= lt!2649840 0)))

(declare-fun e!4504442 () Int)

(assert (=> d!2316015 (= lt!2649840 e!4504442)))

(declare-fun c!1395878 () Bool)

(assert (=> d!2316015 (= c!1395878 (is-Nil!72741 lt!2649596))))

(assert (=> d!2316015 (= (size!42478 lt!2649596) lt!2649840)))

(declare-fun b!7564966 () Bool)

(assert (=> b!7564966 (= e!4504442 0)))

(declare-fun b!7564967 () Bool)

(assert (=> b!7564967 (= e!4504442 (+ 1 (size!42478 (t!387596 lt!2649596))))))

(assert (= (and d!2316015 c!1395878) b!7564966))

(assert (= (and d!2316015 (not c!1395878)) b!7564967))

(declare-fun m!8127570 () Bool)

(assert (=> b!7564967 m!8127570))

(assert (=> b!7564381 d!2316015))

(declare-fun d!2316017 () Bool)

(assert (=> d!2316017 (= (nullable!8716 (reg!20311 r!24333)) (nullableFct!3477 (reg!20311 r!24333)))))

(declare-fun bs!1940453 () Bool)

(assert (= bs!1940453 d!2316017))

(declare-fun m!8127572 () Bool)

(assert (=> bs!1940453 m!8127572))

(assert (=> b!7564389 d!2316017))

(declare-fun bm!693532 () Bool)

(declare-fun call!693540 () Regex!19982)

(declare-fun call!693539 () Regex!19982)

(assert (=> bm!693532 (= call!693540 call!693539)))

(declare-fun b!7564968 () Bool)

(declare-fun e!4504445 () Regex!19982)

(declare-fun call!693537 () Regex!19982)

(declare-fun call!693538 () Regex!19982)

(assert (=> b!7564968 (= e!4504445 (Union!19982 call!693537 call!693538))))

(declare-fun b!7564969 () Bool)

(declare-fun c!1395881 () Bool)

(assert (=> b!7564969 (= c!1395881 (is-Union!19982 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333)))))))

(declare-fun e!4504443 () Regex!19982)

(assert (=> b!7564969 (= e!4504443 e!4504445)))

(declare-fun bm!693533 () Bool)

(declare-fun c!1395880 () Bool)

(assert (=> bm!693533 (= call!693537 (derivativeStep!5760 (ite c!1395881 (regOne!40477 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333)))) (ite c!1395880 (reg!20311 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333)))) (regOne!40476 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333)))))) lt!2649600))))

(declare-fun e!4504447 () Regex!19982)

(declare-fun b!7564970 () Bool)

(assert (=> b!7564970 (= e!4504447 (Union!19982 (Concat!28827 call!693540 (regTwo!40476 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333))))) EmptyLang!19982))))

(declare-fun b!7564971 () Bool)

(declare-fun e!4504444 () Regex!19982)

(assert (=> b!7564971 (= e!4504444 EmptyLang!19982)))

(declare-fun d!2316019 () Bool)

(declare-fun lt!2649841 () Regex!19982)

(assert (=> d!2316019 (validRegex!10410 lt!2649841)))

(assert (=> d!2316019 (= lt!2649841 e!4504444)))

(declare-fun c!1395882 () Bool)

(assert (=> d!2316019 (= c!1395882 (or (is-EmptyExpr!19982 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333)))) (is-EmptyLang!19982 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333))))))))

(assert (=> d!2316019 (validRegex!10410 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333))))))

(assert (=> d!2316019 (= (derivativeStep!5760 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333))) lt!2649600) lt!2649841)))

(declare-fun bm!693534 () Bool)

(assert (=> bm!693534 (= call!693539 call!693537)))

(declare-fun b!7564972 () Bool)

(assert (=> b!7564972 (= e!4504443 (ite (= lt!2649600 (c!1395677 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333))))) EmptyExpr!19982 EmptyLang!19982))))

(declare-fun bm!693535 () Bool)

(assert (=> bm!693535 (= call!693538 (derivativeStep!5760 (ite c!1395881 (regTwo!40477 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333)))) (regTwo!40476 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333))))) lt!2649600))))

(declare-fun b!7564973 () Bool)

(assert (=> b!7564973 (= e!4504444 e!4504443)))

(declare-fun c!1395883 () Bool)

(assert (=> b!7564973 (= c!1395883 (is-ElementMatch!19982 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333)))))))

(declare-fun e!4504446 () Regex!19982)

(declare-fun b!7564974 () Bool)

(assert (=> b!7564974 (= e!4504446 (Concat!28827 call!693539 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333)))))))

(declare-fun c!1395879 () Bool)

(declare-fun b!7564975 () Bool)

(assert (=> b!7564975 (= c!1395879 (nullable!8716 (regOne!40476 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333))))))))

(assert (=> b!7564975 (= e!4504446 e!4504447)))

(declare-fun b!7564976 () Bool)

(assert (=> b!7564976 (= e!4504445 e!4504446)))

(assert (=> b!7564976 (= c!1395880 (is-Star!19982 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333)))))))

(declare-fun b!7564977 () Bool)

(assert (=> b!7564977 (= e!4504447 (Union!19982 (Concat!28827 call!693540 (regTwo!40476 (ite c!1395757 (regOne!40477 r!24333) (ite c!1395756 (reg!20311 r!24333) (regOne!40476 r!24333))))) call!693538))))

(assert (= (and d!2316019 c!1395882) b!7564971))

(assert (= (and d!2316019 (not c!1395882)) b!7564973))

(assert (= (and b!7564973 c!1395883) b!7564972))

(assert (= (and b!7564973 (not c!1395883)) b!7564969))

(assert (= (and b!7564969 c!1395881) b!7564968))

(assert (= (and b!7564969 (not c!1395881)) b!7564976))

(assert (= (and b!7564976 c!1395880) b!7564974))

(assert (= (and b!7564976 (not c!1395880)) b!7564975))

(assert (= (and b!7564975 c!1395879) b!7564977))

(assert (= (and b!7564975 (not c!1395879)) b!7564970))

(assert (= (or b!7564977 b!7564970) bm!693532))

(assert (= (or b!7564974 bm!693532) bm!693534))

(assert (= (or b!7564968 b!7564977) bm!693535))

(assert (= (or b!7564968 bm!693534) bm!693533))

(declare-fun m!8127574 () Bool)

(assert (=> bm!693533 m!8127574))

(declare-fun m!8127576 () Bool)

(assert (=> d!2316019 m!8127576))

(declare-fun m!8127578 () Bool)

(assert (=> d!2316019 m!8127578))

(declare-fun m!8127580 () Bool)

(assert (=> bm!693535 m!8127580))

(declare-fun m!8127582 () Bool)

(assert (=> b!7564975 m!8127582))

(assert (=> bm!693486 d!2316019))

(declare-fun d!2316021 () Bool)

(declare-fun c!1395884 () Bool)

(assert (=> d!2316021 (= c!1395884 (is-Nil!72741 lt!2649725))))

(declare-fun e!4504448 () (Set C!40290))

(assert (=> d!2316021 (= (content!15403 lt!2649725) e!4504448)))

(declare-fun b!7564978 () Bool)

(assert (=> b!7564978 (= e!4504448 (as set.empty (Set C!40290)))))

(declare-fun b!7564979 () Bool)

(assert (=> b!7564979 (= e!4504448 (set.union (set.insert (h!79189 lt!2649725) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649725))))))

(assert (= (and d!2316021 c!1395884) b!7564978))

(assert (= (and d!2316021 (not c!1395884)) b!7564979))

(declare-fun m!8127584 () Bool)

(assert (=> b!7564979 m!8127584))

(declare-fun m!8127586 () Bool)

(assert (=> b!7564979 m!8127586))

(assert (=> d!2315745 d!2316021))

(assert (=> d!2315745 d!2315975))

(declare-fun d!2316023 () Bool)

(declare-fun c!1395885 () Bool)

(assert (=> d!2316023 (= c!1395885 (is-Nil!72741 lt!2649586))))

(declare-fun e!4504449 () (Set C!40290))

(assert (=> d!2316023 (= (content!15403 lt!2649586) e!4504449)))

(declare-fun b!7564980 () Bool)

(assert (=> b!7564980 (= e!4504449 (as set.empty (Set C!40290)))))

(declare-fun b!7564981 () Bool)

(assert (=> b!7564981 (= e!4504449 (set.union (set.insert (h!79189 lt!2649586) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649586))))))

(assert (= (and d!2316023 c!1395885) b!7564980))

(assert (= (and d!2316023 (not c!1395885)) b!7564981))

(declare-fun m!8127588 () Bool)

(assert (=> b!7564981 m!8127588))

(declare-fun m!8127590 () Bool)

(assert (=> b!7564981 m!8127590))

(assert (=> d!2315745 d!2316023))

(assert (=> b!7564395 d!2315929))

(declare-fun d!2316025 () Bool)

(assert (=> d!2316025 (= lt!2649606 lt!2649596)))

(assert (=> d!2316025 true))

(declare-fun _$63!1392 () Unit!166898)

(assert (=> d!2316025 (= (choose!58504 testedP!423 lt!2649606 testedP!423 lt!2649596 input!7874) _$63!1392)))

(assert (=> d!2315753 d!2316025))

(assert (=> d!2315753 d!2315759))

(assert (=> b!7564226 d!2315751))

(declare-fun d!2316027 () Bool)

(declare-fun e!4504451 () Bool)

(assert (=> d!2316027 e!4504451))

(declare-fun res!3031050 () Bool)

(assert (=> d!2316027 (=> res!3031050 e!4504451)))

(declare-fun lt!2649842 () Bool)

(assert (=> d!2316027 (= res!3031050 (not lt!2649842))))

(declare-fun e!4504450 () Bool)

(assert (=> d!2316027 (= lt!2649842 e!4504450)))

(declare-fun res!3031047 () Bool)

(assert (=> d!2316027 (=> res!3031047 e!4504450)))

(assert (=> d!2316027 (= res!3031047 (is-Nil!72741 (tail!15100 knownP!30)))))

(assert (=> d!2316027 (= (isPrefix!6188 (tail!15100 knownP!30) (tail!15100 input!7874)) lt!2649842)))

(declare-fun b!7564984 () Bool)

(declare-fun e!4504452 () Bool)

(assert (=> b!7564984 (= e!4504452 (isPrefix!6188 (tail!15100 (tail!15100 knownP!30)) (tail!15100 (tail!15100 input!7874))))))

(declare-fun b!7564985 () Bool)

(assert (=> b!7564985 (= e!4504451 (>= (size!42478 (tail!15100 input!7874)) (size!42478 (tail!15100 knownP!30))))))

(declare-fun b!7564982 () Bool)

(assert (=> b!7564982 (= e!4504450 e!4504452)))

(declare-fun res!3031049 () Bool)

(assert (=> b!7564982 (=> (not res!3031049) (not e!4504452))))

(assert (=> b!7564982 (= res!3031049 (not (is-Nil!72741 (tail!15100 input!7874))))))

(declare-fun b!7564983 () Bool)

(declare-fun res!3031048 () Bool)

(assert (=> b!7564983 (=> (not res!3031048) (not e!4504452))))

(assert (=> b!7564983 (= res!3031048 (= (head!15560 (tail!15100 knownP!30)) (head!15560 (tail!15100 input!7874))))))

(assert (= (and d!2316027 (not res!3031047)) b!7564982))

(assert (= (and b!7564982 res!3031049) b!7564983))

(assert (= (and b!7564983 res!3031048) b!7564984))

(assert (= (and d!2316027 (not res!3031050)) b!7564985))

(assert (=> b!7564984 m!8126808))

(assert (=> b!7564984 m!8127404))

(assert (=> b!7564984 m!8126968))

(declare-fun m!8127592 () Bool)

(assert (=> b!7564984 m!8127592))

(assert (=> b!7564984 m!8127404))

(assert (=> b!7564984 m!8127592))

(declare-fun m!8127594 () Bool)

(assert (=> b!7564984 m!8127594))

(assert (=> b!7564985 m!8126968))

(declare-fun m!8127596 () Bool)

(assert (=> b!7564985 m!8127596))

(assert (=> b!7564985 m!8126808))

(assert (=> b!7564985 m!8127402))

(assert (=> b!7564983 m!8126808))

(assert (=> b!7564983 m!8127440))

(assert (=> b!7564983 m!8126968))

(declare-fun m!8127598 () Bool)

(assert (=> b!7564983 m!8127598))

(assert (=> b!7564363 d!2316027))

(assert (=> b!7564363 d!2315937))

(declare-fun d!2316029 () Bool)

(assert (=> d!2316029 (= (tail!15100 input!7874) (t!387596 input!7874))))

(assert (=> b!7564363 d!2316029))

(declare-fun d!2316031 () Bool)

(declare-fun e!4504454 () Bool)

(assert (=> d!2316031 e!4504454))

(declare-fun res!3031054 () Bool)

(assert (=> d!2316031 (=> res!3031054 e!4504454)))

(declare-fun lt!2649843 () Bool)

(assert (=> d!2316031 (= res!3031054 (not lt!2649843))))

(declare-fun e!4504453 () Bool)

(assert (=> d!2316031 (= lt!2649843 e!4504453)))

(declare-fun res!3031051 () Bool)

(assert (=> d!2316031 (=> res!3031051 e!4504453)))

(assert (=> d!2316031 (= res!3031051 (is-Nil!72741 (tail!15100 testedP!423)))))

(assert (=> d!2316031 (= (isPrefix!6188 (tail!15100 testedP!423) (tail!15100 input!7874)) lt!2649843)))

(declare-fun b!7564988 () Bool)

(declare-fun e!4504455 () Bool)

(assert (=> b!7564988 (= e!4504455 (isPrefix!6188 (tail!15100 (tail!15100 testedP!423)) (tail!15100 (tail!15100 input!7874))))))

(declare-fun b!7564989 () Bool)

(assert (=> b!7564989 (= e!4504454 (>= (size!42478 (tail!15100 input!7874)) (size!42478 (tail!15100 testedP!423))))))

(declare-fun b!7564986 () Bool)

(assert (=> b!7564986 (= e!4504453 e!4504455)))

(declare-fun res!3031053 () Bool)

(assert (=> b!7564986 (=> (not res!3031053) (not e!4504455))))

(assert (=> b!7564986 (= res!3031053 (not (is-Nil!72741 (tail!15100 input!7874))))))

(declare-fun b!7564987 () Bool)

(declare-fun res!3031052 () Bool)

(assert (=> b!7564987 (=> (not res!3031052) (not e!4504455))))

(assert (=> b!7564987 (= res!3031052 (= (head!15560 (tail!15100 testedP!423)) (head!15560 (tail!15100 input!7874))))))

(assert (= (and d!2316031 (not res!3031051)) b!7564986))

(assert (= (and b!7564986 res!3031053) b!7564987))

(assert (= (and b!7564987 res!3031052) b!7564988))

(assert (= (and d!2316031 (not res!3031054)) b!7564989))

(assert (=> b!7564988 m!8126824))

(declare-fun m!8127600 () Bool)

(assert (=> b!7564988 m!8127600))

(assert (=> b!7564988 m!8126968))

(assert (=> b!7564988 m!8127592))

(assert (=> b!7564988 m!8127600))

(assert (=> b!7564988 m!8127592))

(declare-fun m!8127602 () Bool)

(assert (=> b!7564988 m!8127602))

(assert (=> b!7564989 m!8126968))

(assert (=> b!7564989 m!8127596))

(assert (=> b!7564989 m!8126824))

(declare-fun m!8127604 () Bool)

(assert (=> b!7564989 m!8127604))

(assert (=> b!7564987 m!8126824))

(declare-fun m!8127606 () Bool)

(assert (=> b!7564987 m!8127606))

(assert (=> b!7564987 m!8126968))

(assert (=> b!7564987 m!8127598))

(assert (=> b!7564373 d!2316031))

(declare-fun d!2316033 () Bool)

(assert (=> d!2316033 (= (tail!15100 testedP!423) (t!387596 testedP!423))))

(assert (=> b!7564373 d!2316033))

(assert (=> b!7564373 d!2316029))

(declare-fun d!2316035 () Bool)

(declare-fun lt!2649844 () Regex!19982)

(assert (=> d!2316035 (validRegex!10410 lt!2649844)))

(declare-fun e!4504456 () Regex!19982)

(assert (=> d!2316035 (= lt!2649844 e!4504456)))

(declare-fun c!1395886 () Bool)

(assert (=> d!2316035 (= c!1395886 (is-Cons!72741 (t!387596 testedP!423)))))

(assert (=> d!2316035 (validRegex!10410 (derivativeStep!5760 baseR!101 (h!79189 testedP!423)))))

(assert (=> d!2316035 (= (derivative!512 (derivativeStep!5760 baseR!101 (h!79189 testedP!423)) (t!387596 testedP!423)) lt!2649844)))

(declare-fun b!7564990 () Bool)

(assert (=> b!7564990 (= e!4504456 (derivative!512 (derivativeStep!5760 (derivativeStep!5760 baseR!101 (h!79189 testedP!423)) (h!79189 (t!387596 testedP!423))) (t!387596 (t!387596 testedP!423))))))

(declare-fun b!7564991 () Bool)

(assert (=> b!7564991 (= e!4504456 (derivativeStep!5760 baseR!101 (h!79189 testedP!423)))))

(assert (= (and d!2316035 c!1395886) b!7564990))

(assert (= (and d!2316035 (not c!1395886)) b!7564991))

(declare-fun m!8127608 () Bool)

(assert (=> d!2316035 m!8127608))

(assert (=> d!2316035 m!8126980))

(declare-fun m!8127610 () Bool)

(assert (=> d!2316035 m!8127610))

(assert (=> b!7564990 m!8126980))

(declare-fun m!8127612 () Bool)

(assert (=> b!7564990 m!8127612))

(assert (=> b!7564990 m!8127612))

(declare-fun m!8127614 () Bool)

(assert (=> b!7564990 m!8127614))

(assert (=> b!7564369 d!2316035))

(declare-fun bm!693536 () Bool)

(declare-fun call!693544 () Regex!19982)

(declare-fun call!693543 () Regex!19982)

(assert (=> bm!693536 (= call!693544 call!693543)))

(declare-fun b!7564992 () Bool)

(declare-fun e!4504459 () Regex!19982)

(declare-fun call!693541 () Regex!19982)

(declare-fun call!693542 () Regex!19982)

(assert (=> b!7564992 (= e!4504459 (Union!19982 call!693541 call!693542))))

(declare-fun b!7564993 () Bool)

(declare-fun c!1395889 () Bool)

(assert (=> b!7564993 (= c!1395889 (is-Union!19982 baseR!101))))

(declare-fun e!4504457 () Regex!19982)

(assert (=> b!7564993 (= e!4504457 e!4504459)))

(declare-fun bm!693537 () Bool)

(declare-fun c!1395888 () Bool)

(assert (=> bm!693537 (= call!693541 (derivativeStep!5760 (ite c!1395889 (regOne!40477 baseR!101) (ite c!1395888 (reg!20311 baseR!101) (regOne!40476 baseR!101))) (h!79189 testedP!423)))))

(declare-fun b!7564994 () Bool)

(declare-fun e!4504461 () Regex!19982)

(assert (=> b!7564994 (= e!4504461 (Union!19982 (Concat!28827 call!693544 (regTwo!40476 baseR!101)) EmptyLang!19982))))

(declare-fun b!7564995 () Bool)

(declare-fun e!4504458 () Regex!19982)

(assert (=> b!7564995 (= e!4504458 EmptyLang!19982)))

(declare-fun d!2316037 () Bool)

(declare-fun lt!2649845 () Regex!19982)

(assert (=> d!2316037 (validRegex!10410 lt!2649845)))

(assert (=> d!2316037 (= lt!2649845 e!4504458)))

(declare-fun c!1395890 () Bool)

(assert (=> d!2316037 (= c!1395890 (or (is-EmptyExpr!19982 baseR!101) (is-EmptyLang!19982 baseR!101)))))

(assert (=> d!2316037 (validRegex!10410 baseR!101)))

(assert (=> d!2316037 (= (derivativeStep!5760 baseR!101 (h!79189 testedP!423)) lt!2649845)))

(declare-fun bm!693538 () Bool)

(assert (=> bm!693538 (= call!693543 call!693541)))

(declare-fun b!7564996 () Bool)

(assert (=> b!7564996 (= e!4504457 (ite (= (h!79189 testedP!423) (c!1395677 baseR!101)) EmptyExpr!19982 EmptyLang!19982))))

(declare-fun bm!693539 () Bool)

(assert (=> bm!693539 (= call!693542 (derivativeStep!5760 (ite c!1395889 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)) (h!79189 testedP!423)))))

(declare-fun b!7564997 () Bool)

(assert (=> b!7564997 (= e!4504458 e!4504457)))

(declare-fun c!1395891 () Bool)

(assert (=> b!7564997 (= c!1395891 (is-ElementMatch!19982 baseR!101))))

(declare-fun b!7564998 () Bool)

(declare-fun e!4504460 () Regex!19982)

(assert (=> b!7564998 (= e!4504460 (Concat!28827 call!693543 baseR!101))))

(declare-fun b!7564999 () Bool)

(declare-fun c!1395887 () Bool)

(assert (=> b!7564999 (= c!1395887 (nullable!8716 (regOne!40476 baseR!101)))))

(assert (=> b!7564999 (= e!4504460 e!4504461)))

(declare-fun b!7565000 () Bool)

(assert (=> b!7565000 (= e!4504459 e!4504460)))

(assert (=> b!7565000 (= c!1395888 (is-Star!19982 baseR!101))))

(declare-fun b!7565001 () Bool)

(assert (=> b!7565001 (= e!4504461 (Union!19982 (Concat!28827 call!693544 (regTwo!40476 baseR!101)) call!693542))))

(assert (= (and d!2316037 c!1395890) b!7564995))

(assert (= (and d!2316037 (not c!1395890)) b!7564997))

(assert (= (and b!7564997 c!1395891) b!7564996))

(assert (= (and b!7564997 (not c!1395891)) b!7564993))

(assert (= (and b!7564993 c!1395889) b!7564992))

(assert (= (and b!7564993 (not c!1395889)) b!7565000))

(assert (= (and b!7565000 c!1395888) b!7564998))

(assert (= (and b!7565000 (not c!1395888)) b!7564999))

(assert (= (and b!7564999 c!1395887) b!7565001))

(assert (= (and b!7564999 (not c!1395887)) b!7564994))

(assert (= (or b!7565001 b!7564994) bm!693536))

(assert (= (or b!7564998 bm!693536) bm!693538))

(assert (= (or b!7564992 b!7565001) bm!693539))

(assert (= (or b!7564992 bm!693538) bm!693537))

(declare-fun m!8127616 () Bool)

(assert (=> bm!693537 m!8127616))

(declare-fun m!8127618 () Bool)

(assert (=> d!2316037 m!8127618))

(assert (=> d!2316037 m!8126698))

(declare-fun m!8127620 () Bool)

(assert (=> bm!693539 m!8127620))

(assert (=> b!7564999 m!8127352))

(assert (=> b!7564369 d!2316037))

(declare-fun d!2316039 () Bool)

(declare-fun lt!2649846 () Int)

(assert (=> d!2316039 (>= lt!2649846 0)))

(declare-fun e!4504462 () Int)

(assert (=> d!2316039 (= lt!2649846 e!4504462)))

(declare-fun c!1395892 () Bool)

(assert (=> d!2316039 (= c!1395892 (is-Nil!72741 (t!387596 input!7874)))))

(assert (=> d!2316039 (= (size!42478 (t!387596 input!7874)) lt!2649846)))

(declare-fun b!7565002 () Bool)

(assert (=> b!7565002 (= e!4504462 0)))

(declare-fun b!7565003 () Bool)

(assert (=> b!7565003 (= e!4504462 (+ 1 (size!42478 (t!387596 (t!387596 input!7874)))))))

(assert (= (and d!2316039 c!1395892) b!7565002))

(assert (= (and d!2316039 (not c!1395892)) b!7565003))

(declare-fun m!8127622 () Bool)

(assert (=> b!7565003 m!8127622))

(assert (=> b!7564284 d!2316039))

(declare-fun d!2316041 () Bool)

(assert (=> d!2316041 (= (isEmpty!41418 (tail!15100 lt!2649608)) (is-Nil!72741 (tail!15100 lt!2649608)))))

(assert (=> b!7564401 d!2316041))

(declare-fun d!2316043 () Bool)

(assert (=> d!2316043 (= (tail!15100 lt!2649608) (t!387596 lt!2649608))))

(assert (=> b!7564401 d!2316043))

(declare-fun b!7565004 () Bool)

(declare-fun e!4504469 () Bool)

(declare-fun e!4504464 () Bool)

(assert (=> b!7565004 (= e!4504469 e!4504464)))

(declare-fun res!3031060 () Bool)

(assert (=> b!7565004 (=> res!3031060 e!4504464)))

(declare-fun call!693545 () Bool)

(assert (=> b!7565004 (= res!3031060 call!693545)))

(declare-fun b!7565006 () Bool)

(declare-fun e!4504466 () Bool)

(declare-fun lt!2649847 () Bool)

(assert (=> b!7565006 (= e!4504466 (not lt!2649847))))

(declare-fun b!7565007 () Bool)

(assert (=> b!7565007 (= e!4504464 (not (= (head!15560 (tail!15100 lt!2649608)) (c!1395677 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608))))))))

(declare-fun b!7565008 () Bool)

(declare-fun e!4504468 () Bool)

(assert (=> b!7565008 (= e!4504468 (= lt!2649847 call!693545))))

(declare-fun bm!693540 () Bool)

(assert (=> bm!693540 (= call!693545 (isEmpty!41418 (tail!15100 lt!2649608)))))

(declare-fun b!7565009 () Bool)

(declare-fun res!3031058 () Bool)

(declare-fun e!4504467 () Bool)

(assert (=> b!7565009 (=> (not res!3031058) (not e!4504467))))

(assert (=> b!7565009 (= res!3031058 (isEmpty!41418 (tail!15100 (tail!15100 lt!2649608))))))

(declare-fun b!7565010 () Bool)

(assert (=> b!7565010 (= e!4504468 e!4504466)))

(declare-fun c!1395894 () Bool)

(assert (=> b!7565010 (= c!1395894 (is-EmptyLang!19982 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608))))))

(declare-fun b!7565011 () Bool)

(assert (=> b!7565011 (= e!4504467 (= (head!15560 (tail!15100 lt!2649608)) (c!1395677 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608)))))))

(declare-fun b!7565012 () Bool)

(declare-fun res!3031062 () Bool)

(declare-fun e!4504463 () Bool)

(assert (=> b!7565012 (=> res!3031062 e!4504463)))

(assert (=> b!7565012 (= res!3031062 (not (is-ElementMatch!19982 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608)))))))

(assert (=> b!7565012 (= e!4504466 e!4504463)))

(declare-fun b!7565013 () Bool)

(declare-fun res!3031057 () Bool)

(assert (=> b!7565013 (=> res!3031057 e!4504464)))

(assert (=> b!7565013 (= res!3031057 (not (isEmpty!41418 (tail!15100 (tail!15100 lt!2649608)))))))

(declare-fun d!2316045 () Bool)

(assert (=> d!2316045 e!4504468))

(declare-fun c!1395895 () Bool)

(assert (=> d!2316045 (= c!1395895 (is-EmptyExpr!19982 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608))))))

(declare-fun e!4504465 () Bool)

(assert (=> d!2316045 (= lt!2649847 e!4504465)))

(declare-fun c!1395893 () Bool)

(assert (=> d!2316045 (= c!1395893 (isEmpty!41418 (tail!15100 lt!2649608)))))

(assert (=> d!2316045 (validRegex!10410 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608)))))

(assert (=> d!2316045 (= (matchR!9584 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608)) (tail!15100 lt!2649608)) lt!2649847)))

(declare-fun b!7565005 () Bool)

(declare-fun res!3031055 () Bool)

(assert (=> b!7565005 (=> res!3031055 e!4504463)))

(assert (=> b!7565005 (= res!3031055 e!4504467)))

(declare-fun res!3031061 () Bool)

(assert (=> b!7565005 (=> (not res!3031061) (not e!4504467))))

(assert (=> b!7565005 (= res!3031061 lt!2649847)))

(declare-fun b!7565014 () Bool)

(assert (=> b!7565014 (= e!4504463 e!4504469)))

(declare-fun res!3031059 () Bool)

(assert (=> b!7565014 (=> (not res!3031059) (not e!4504469))))

(assert (=> b!7565014 (= res!3031059 (not lt!2649847))))

(declare-fun b!7565015 () Bool)

(assert (=> b!7565015 (= e!4504465 (nullable!8716 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608))))))

(declare-fun b!7565016 () Bool)

(declare-fun res!3031056 () Bool)

(assert (=> b!7565016 (=> (not res!3031056) (not e!4504467))))

(assert (=> b!7565016 (= res!3031056 (not call!693545))))

(declare-fun b!7565017 () Bool)

(assert (=> b!7565017 (= e!4504465 (matchR!9584 (derivativeStep!5760 (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608)) (head!15560 (tail!15100 lt!2649608))) (tail!15100 (tail!15100 lt!2649608))))))

(assert (= (and d!2316045 c!1395893) b!7565015))

(assert (= (and d!2316045 (not c!1395893)) b!7565017))

(assert (= (and d!2316045 c!1395895) b!7565008))

(assert (= (and d!2316045 (not c!1395895)) b!7565010))

(assert (= (and b!7565010 c!1395894) b!7565006))

(assert (= (and b!7565010 (not c!1395894)) b!7565012))

(assert (= (and b!7565012 (not res!3031062)) b!7565005))

(assert (= (and b!7565005 res!3031061) b!7565016))

(assert (= (and b!7565016 res!3031056) b!7565009))

(assert (= (and b!7565009 res!3031058) b!7565011))

(assert (= (and b!7565005 (not res!3031055)) b!7565014))

(assert (= (and b!7565014 res!3031059) b!7565004))

(assert (= (and b!7565004 (not res!3031060)) b!7565013))

(assert (= (and b!7565013 (not res!3031057)) b!7565007))

(assert (= (or b!7565008 b!7565004 b!7565016) bm!693540))

(assert (=> d!2316045 m!8127018))

(assert (=> d!2316045 m!8127020))

(assert (=> d!2316045 m!8127026))

(declare-fun m!8127624 () Bool)

(assert (=> d!2316045 m!8127624))

(assert (=> b!7565009 m!8127018))

(declare-fun m!8127626 () Bool)

(assert (=> b!7565009 m!8127626))

(assert (=> b!7565009 m!8127626))

(declare-fun m!8127628 () Bool)

(assert (=> b!7565009 m!8127628))

(assert (=> b!7565015 m!8127026))

(declare-fun m!8127630 () Bool)

(assert (=> b!7565015 m!8127630))

(assert (=> b!7565017 m!8127018))

(declare-fun m!8127632 () Bool)

(assert (=> b!7565017 m!8127632))

(assert (=> b!7565017 m!8127026))

(assert (=> b!7565017 m!8127632))

(declare-fun m!8127634 () Bool)

(assert (=> b!7565017 m!8127634))

(assert (=> b!7565017 m!8127018))

(assert (=> b!7565017 m!8127626))

(assert (=> b!7565017 m!8127634))

(assert (=> b!7565017 m!8127626))

(declare-fun m!8127636 () Bool)

(assert (=> b!7565017 m!8127636))

(assert (=> bm!693540 m!8127018))

(assert (=> bm!693540 m!8127020))

(assert (=> b!7565013 m!8127018))

(assert (=> b!7565013 m!8127626))

(assert (=> b!7565013 m!8127626))

(assert (=> b!7565013 m!8127628))

(assert (=> b!7565007 m!8127018))

(assert (=> b!7565007 m!8127632))

(assert (=> b!7565011 m!8127018))

(assert (=> b!7565011 m!8127632))

(assert (=> b!7564405 d!2316045))

(declare-fun bm!693541 () Bool)

(declare-fun call!693549 () Regex!19982)

(declare-fun call!693548 () Regex!19982)

(assert (=> bm!693541 (= call!693549 call!693548)))

(declare-fun b!7565018 () Bool)

(declare-fun e!4504472 () Regex!19982)

(declare-fun call!693546 () Regex!19982)

(declare-fun call!693547 () Regex!19982)

(assert (=> b!7565018 (= e!4504472 (Union!19982 call!693546 call!693547))))

(declare-fun b!7565019 () Bool)

(declare-fun c!1395898 () Bool)

(assert (=> b!7565019 (= c!1395898 (is-Union!19982 lt!2649591))))

(declare-fun e!4504470 () Regex!19982)

(assert (=> b!7565019 (= e!4504470 e!4504472)))

(declare-fun c!1395897 () Bool)

(declare-fun bm!693542 () Bool)

(assert (=> bm!693542 (= call!693546 (derivativeStep!5760 (ite c!1395898 (regOne!40477 lt!2649591) (ite c!1395897 (reg!20311 lt!2649591) (regOne!40476 lt!2649591))) (head!15560 lt!2649608)))))

(declare-fun b!7565020 () Bool)

(declare-fun e!4504474 () Regex!19982)

(assert (=> b!7565020 (= e!4504474 (Union!19982 (Concat!28827 call!693549 (regTwo!40476 lt!2649591)) EmptyLang!19982))))

(declare-fun b!7565021 () Bool)

(declare-fun e!4504471 () Regex!19982)

(assert (=> b!7565021 (= e!4504471 EmptyLang!19982)))

(declare-fun d!2316047 () Bool)

(declare-fun lt!2649848 () Regex!19982)

(assert (=> d!2316047 (validRegex!10410 lt!2649848)))

(assert (=> d!2316047 (= lt!2649848 e!4504471)))

(declare-fun c!1395899 () Bool)

(assert (=> d!2316047 (= c!1395899 (or (is-EmptyExpr!19982 lt!2649591) (is-EmptyLang!19982 lt!2649591)))))

(assert (=> d!2316047 (validRegex!10410 lt!2649591)))

(assert (=> d!2316047 (= (derivativeStep!5760 lt!2649591 (head!15560 lt!2649608)) lt!2649848)))

(declare-fun bm!693543 () Bool)

(assert (=> bm!693543 (= call!693548 call!693546)))

(declare-fun b!7565022 () Bool)

(assert (=> b!7565022 (= e!4504470 (ite (= (head!15560 lt!2649608) (c!1395677 lt!2649591)) EmptyExpr!19982 EmptyLang!19982))))

(declare-fun bm!693544 () Bool)

(assert (=> bm!693544 (= call!693547 (derivativeStep!5760 (ite c!1395898 (regTwo!40477 lt!2649591) (regTwo!40476 lt!2649591)) (head!15560 lt!2649608)))))

(declare-fun b!7565023 () Bool)

(assert (=> b!7565023 (= e!4504471 e!4504470)))

(declare-fun c!1395900 () Bool)

(assert (=> b!7565023 (= c!1395900 (is-ElementMatch!19982 lt!2649591))))

(declare-fun b!7565024 () Bool)

(declare-fun e!4504473 () Regex!19982)

(assert (=> b!7565024 (= e!4504473 (Concat!28827 call!693548 lt!2649591))))

(declare-fun b!7565025 () Bool)

(declare-fun c!1395896 () Bool)

(assert (=> b!7565025 (= c!1395896 (nullable!8716 (regOne!40476 lt!2649591)))))

(assert (=> b!7565025 (= e!4504473 e!4504474)))

(declare-fun b!7565026 () Bool)

(assert (=> b!7565026 (= e!4504472 e!4504473)))

(assert (=> b!7565026 (= c!1395897 (is-Star!19982 lt!2649591))))

(declare-fun b!7565027 () Bool)

(assert (=> b!7565027 (= e!4504474 (Union!19982 (Concat!28827 call!693549 (regTwo!40476 lt!2649591)) call!693547))))

(assert (= (and d!2316047 c!1395899) b!7565021))

(assert (= (and d!2316047 (not c!1395899)) b!7565023))

(assert (= (and b!7565023 c!1395900) b!7565022))

(assert (= (and b!7565023 (not c!1395900)) b!7565019))

(assert (= (and b!7565019 c!1395898) b!7565018))

(assert (= (and b!7565019 (not c!1395898)) b!7565026))

(assert (= (and b!7565026 c!1395897) b!7565024))

(assert (= (and b!7565026 (not c!1395897)) b!7565025))

(assert (= (and b!7565025 c!1395896) b!7565027))

(assert (= (and b!7565025 (not c!1395896)) b!7565020))

(assert (= (or b!7565027 b!7565020) bm!693541))

(assert (= (or b!7565024 bm!693541) bm!693543))

(assert (= (or b!7565018 b!7565027) bm!693544))

(assert (= (or b!7565018 bm!693543) bm!693542))

(assert (=> bm!693542 m!8127024))

(declare-fun m!8127638 () Bool)

(assert (=> bm!693542 m!8127638))

(declare-fun m!8127640 () Bool)

(assert (=> d!2316047 m!8127640))

(assert (=> d!2316047 m!8126646))

(assert (=> bm!693544 m!8127024))

(declare-fun m!8127642 () Bool)

(assert (=> bm!693544 m!8127642))

(declare-fun m!8127644 () Bool)

(assert (=> b!7565025 m!8127644))

(assert (=> b!7564405 d!2316047))

(assert (=> b!7564405 d!2315929))

(assert (=> b!7564405 d!2316043))

(declare-fun d!2316049 () Bool)

(declare-fun lt!2649849 () List!72865)

(assert (=> d!2316049 (= (++!17486 (t!387596 testedP!423) lt!2649849) (tail!15100 input!7874))))

(declare-fun e!4504475 () List!72865)

(assert (=> d!2316049 (= lt!2649849 e!4504475)))

(declare-fun c!1395901 () Bool)

(assert (=> d!2316049 (= c!1395901 (is-Cons!72741 (t!387596 testedP!423)))))

(assert (=> d!2316049 (>= (size!42478 (tail!15100 input!7874)) (size!42478 (t!387596 testedP!423)))))

(assert (=> d!2316049 (= (getSuffix!3666 (tail!15100 input!7874) (t!387596 testedP!423)) lt!2649849)))

(declare-fun b!7565028 () Bool)

(assert (=> b!7565028 (= e!4504475 (getSuffix!3666 (tail!15100 (tail!15100 input!7874)) (t!387596 (t!387596 testedP!423))))))

(declare-fun b!7565029 () Bool)

(assert (=> b!7565029 (= e!4504475 (tail!15100 input!7874))))

(assert (= (and d!2316049 c!1395901) b!7565028))

(assert (= (and d!2316049 (not c!1395901)) b!7565029))

(declare-fun m!8127646 () Bool)

(assert (=> d!2316049 m!8127646))

(assert (=> d!2316049 m!8126968))

(assert (=> d!2316049 m!8127596))

(assert (=> d!2316049 m!8127128))

(assert (=> b!7565028 m!8126968))

(assert (=> b!7565028 m!8127592))

(assert (=> b!7565028 m!8127592))

(declare-fun m!8127648 () Bool)

(assert (=> b!7565028 m!8127648))

(assert (=> b!7564410 d!2316049))

(assert (=> b!7564410 d!2316029))

(declare-fun d!2316051 () Bool)

(declare-fun c!1395902 () Bool)

(assert (=> d!2316051 (= c!1395902 (is-Nil!72741 lt!2649714))))

(declare-fun e!4504476 () (Set C!40290))

(assert (=> d!2316051 (= (content!15403 lt!2649714) e!4504476)))

(declare-fun b!7565030 () Bool)

(assert (=> b!7565030 (= e!4504476 (as set.empty (Set C!40290)))))

(declare-fun b!7565031 () Bool)

(assert (=> b!7565031 (= e!4504476 (set.union (set.insert (h!79189 lt!2649714) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649714))))))

(assert (= (and d!2316051 c!1395902) b!7565030))

(assert (= (and d!2316051 (not c!1395902)) b!7565031))

(declare-fun m!8127650 () Bool)

(assert (=> b!7565031 m!8127650))

(declare-fun m!8127652 () Bool)

(assert (=> b!7565031 m!8127652))

(assert (=> d!2315727 d!2316051))

(assert (=> d!2315727 d!2315975))

(declare-fun d!2316053 () Bool)

(declare-fun c!1395903 () Bool)

(assert (=> d!2316053 (= c!1395903 (is-Nil!72741 lt!2649606))))

(declare-fun e!4504477 () (Set C!40290))

(assert (=> d!2316053 (= (content!15403 lt!2649606) e!4504477)))

(declare-fun b!7565032 () Bool)

(assert (=> b!7565032 (= e!4504477 (as set.empty (Set C!40290)))))

(declare-fun b!7565033 () Bool)

(assert (=> b!7565033 (= e!4504477 (set.union (set.insert (h!79189 lt!2649606) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649606))))))

(assert (= (and d!2316053 c!1395903) b!7565032))

(assert (= (and d!2316053 (not c!1395903)) b!7565033))

(declare-fun m!8127654 () Bool)

(assert (=> b!7565033 m!8127654))

(declare-fun m!8127656 () Bool)

(assert (=> b!7565033 m!8127656))

(assert (=> d!2315727 d!2316053))

(assert (=> b!7564471 d!2315717))

(assert (=> b!7564471 d!2315737))

(declare-fun d!2316055 () Bool)

(assert (=> d!2316055 (= (isEmpty!41418 knownP!30) (is-Nil!72741 knownP!30))))

(assert (=> bm!693460 d!2316055))

(assert (=> b!7564262 d!2315811))

(assert (=> b!7564262 d!2315809))

(declare-fun d!2316057 () Bool)

(declare-fun lt!2649850 () Int)

(assert (=> d!2316057 (>= lt!2649850 0)))

(declare-fun e!4504478 () Int)

(assert (=> d!2316057 (= lt!2649850 e!4504478)))

(declare-fun c!1395904 () Bool)

(assert (=> d!2316057 (= c!1395904 (is-Nil!72741 (t!387596 testedP!423)))))

(assert (=> d!2316057 (= (size!42478 (t!387596 testedP!423)) lt!2649850)))

(declare-fun b!7565034 () Bool)

(assert (=> b!7565034 (= e!4504478 0)))

(declare-fun b!7565035 () Bool)

(assert (=> b!7565035 (= e!4504478 (+ 1 (size!42478 (t!387596 (t!387596 testedP!423)))))))

(assert (= (and d!2316057 c!1395904) b!7565034))

(assert (= (and d!2316057 (not c!1395904)) b!7565035))

(declare-fun m!8127658 () Bool)

(assert (=> b!7565035 m!8127658))

(assert (=> b!7564501 d!2316057))

(declare-fun b!7565036 () Bool)

(declare-fun e!4504485 () Bool)

(declare-fun e!4504480 () Bool)

(assert (=> b!7565036 (= e!4504485 e!4504480)))

(declare-fun res!3031068 () Bool)

(assert (=> b!7565036 (=> res!3031068 e!4504480)))

(declare-fun call!693550 () Bool)

(assert (=> b!7565036 (= res!3031068 call!693550)))

(declare-fun b!7565038 () Bool)

(declare-fun e!4504482 () Bool)

(declare-fun lt!2649851 () Bool)

(assert (=> b!7565038 (= e!4504482 (not lt!2649851))))

(declare-fun b!7565039 () Bool)

(assert (=> b!7565039 (= e!4504480 (not (= (head!15560 (tail!15100 lt!2649585)) (c!1395677 (derivativeStep!5760 r!24333 (head!15560 lt!2649585))))))))

(declare-fun b!7565040 () Bool)

(declare-fun e!4504484 () Bool)

(assert (=> b!7565040 (= e!4504484 (= lt!2649851 call!693550))))

(declare-fun bm!693545 () Bool)

(assert (=> bm!693545 (= call!693550 (isEmpty!41418 (tail!15100 lt!2649585)))))

(declare-fun b!7565041 () Bool)

(declare-fun res!3031066 () Bool)

(declare-fun e!4504483 () Bool)

(assert (=> b!7565041 (=> (not res!3031066) (not e!4504483))))

(assert (=> b!7565041 (= res!3031066 (isEmpty!41418 (tail!15100 (tail!15100 lt!2649585))))))

(declare-fun b!7565042 () Bool)

(assert (=> b!7565042 (= e!4504484 e!4504482)))

(declare-fun c!1395906 () Bool)

(assert (=> b!7565042 (= c!1395906 (is-EmptyLang!19982 (derivativeStep!5760 r!24333 (head!15560 lt!2649585))))))

(declare-fun b!7565043 () Bool)

(assert (=> b!7565043 (= e!4504483 (= (head!15560 (tail!15100 lt!2649585)) (c!1395677 (derivativeStep!5760 r!24333 (head!15560 lt!2649585)))))))

(declare-fun b!7565044 () Bool)

(declare-fun res!3031070 () Bool)

(declare-fun e!4504479 () Bool)

(assert (=> b!7565044 (=> res!3031070 e!4504479)))

(assert (=> b!7565044 (= res!3031070 (not (is-ElementMatch!19982 (derivativeStep!5760 r!24333 (head!15560 lt!2649585)))))))

(assert (=> b!7565044 (= e!4504482 e!4504479)))

(declare-fun b!7565045 () Bool)

(declare-fun res!3031065 () Bool)

(assert (=> b!7565045 (=> res!3031065 e!4504480)))

(assert (=> b!7565045 (= res!3031065 (not (isEmpty!41418 (tail!15100 (tail!15100 lt!2649585)))))))

(declare-fun d!2316059 () Bool)

(assert (=> d!2316059 e!4504484))

(declare-fun c!1395907 () Bool)

(assert (=> d!2316059 (= c!1395907 (is-EmptyExpr!19982 (derivativeStep!5760 r!24333 (head!15560 lt!2649585))))))

(declare-fun e!4504481 () Bool)

(assert (=> d!2316059 (= lt!2649851 e!4504481)))

(declare-fun c!1395905 () Bool)

(assert (=> d!2316059 (= c!1395905 (isEmpty!41418 (tail!15100 lt!2649585)))))

(assert (=> d!2316059 (validRegex!10410 (derivativeStep!5760 r!24333 (head!15560 lt!2649585)))))

(assert (=> d!2316059 (= (matchR!9584 (derivativeStep!5760 r!24333 (head!15560 lt!2649585)) (tail!15100 lt!2649585)) lt!2649851)))

(declare-fun b!7565037 () Bool)

(declare-fun res!3031063 () Bool)

(assert (=> b!7565037 (=> res!3031063 e!4504479)))

(assert (=> b!7565037 (= res!3031063 e!4504483)))

(declare-fun res!3031069 () Bool)

(assert (=> b!7565037 (=> (not res!3031069) (not e!4504483))))

(assert (=> b!7565037 (= res!3031069 lt!2649851)))

(declare-fun b!7565046 () Bool)

(assert (=> b!7565046 (= e!4504479 e!4504485)))

(declare-fun res!3031067 () Bool)

(assert (=> b!7565046 (=> (not res!3031067) (not e!4504485))))

(assert (=> b!7565046 (= res!3031067 (not lt!2649851))))

(declare-fun b!7565047 () Bool)

(assert (=> b!7565047 (= e!4504481 (nullable!8716 (derivativeStep!5760 r!24333 (head!15560 lt!2649585))))))

(declare-fun b!7565048 () Bool)

(declare-fun res!3031064 () Bool)

(assert (=> b!7565048 (=> (not res!3031064) (not e!4504483))))

(assert (=> b!7565048 (= res!3031064 (not call!693550))))

(declare-fun b!7565049 () Bool)

(assert (=> b!7565049 (= e!4504481 (matchR!9584 (derivativeStep!5760 (derivativeStep!5760 r!24333 (head!15560 lt!2649585)) (head!15560 (tail!15100 lt!2649585))) (tail!15100 (tail!15100 lt!2649585))))))

(assert (= (and d!2316059 c!1395905) b!7565047))

(assert (= (and d!2316059 (not c!1395905)) b!7565049))

(assert (= (and d!2316059 c!1395907) b!7565040))

(assert (= (and d!2316059 (not c!1395907)) b!7565042))

(assert (= (and b!7565042 c!1395906) b!7565038))

(assert (= (and b!7565042 (not c!1395906)) b!7565044))

(assert (= (and b!7565044 (not res!3031070)) b!7565037))

(assert (= (and b!7565037 res!3031069) b!7565048))

(assert (= (and b!7565048 res!3031064) b!7565041))

(assert (= (and b!7565041 res!3031066) b!7565043))

(assert (= (and b!7565037 (not res!3031063)) b!7565046))

(assert (= (and b!7565046 res!3031067) b!7565036))

(assert (= (and b!7565036 (not res!3031068)) b!7565045))

(assert (= (and b!7565045 (not res!3031065)) b!7565039))

(assert (= (or b!7565040 b!7565036 b!7565048) bm!693545))

(assert (=> d!2316059 m!8126624))

(assert (=> d!2316059 m!8126798))

(assert (=> d!2316059 m!8126802))

(declare-fun m!8127660 () Bool)

(assert (=> d!2316059 m!8127660))

(assert (=> b!7565041 m!8126624))

(declare-fun m!8127662 () Bool)

(assert (=> b!7565041 m!8127662))

(assert (=> b!7565041 m!8127662))

(declare-fun m!8127664 () Bool)

(assert (=> b!7565041 m!8127664))

(assert (=> b!7565047 m!8126802))

(declare-fun m!8127666 () Bool)

(assert (=> b!7565047 m!8127666))

(assert (=> b!7565049 m!8126624))

(declare-fun m!8127668 () Bool)

(assert (=> b!7565049 m!8127668))

(assert (=> b!7565049 m!8126802))

(assert (=> b!7565049 m!8127668))

(declare-fun m!8127670 () Bool)

(assert (=> b!7565049 m!8127670))

(assert (=> b!7565049 m!8126624))

(assert (=> b!7565049 m!8127662))

(assert (=> b!7565049 m!8127670))

(assert (=> b!7565049 m!8127662))

(declare-fun m!8127672 () Bool)

(assert (=> b!7565049 m!8127672))

(assert (=> bm!693545 m!8126624))

(assert (=> bm!693545 m!8126798))

(assert (=> b!7565045 m!8126624))

(assert (=> b!7565045 m!8127662))

(assert (=> b!7565045 m!8127662))

(assert (=> b!7565045 m!8127664))

(assert (=> b!7565039 m!8126624))

(assert (=> b!7565039 m!8127668))

(assert (=> b!7565043 m!8126624))

(assert (=> b!7565043 m!8127668))

(assert (=> b!7564236 d!2316059))

(declare-fun bm!693546 () Bool)

(declare-fun call!693554 () Regex!19982)

(declare-fun call!693553 () Regex!19982)

(assert (=> bm!693546 (= call!693554 call!693553)))

(declare-fun b!7565050 () Bool)

(declare-fun e!4504488 () Regex!19982)

(declare-fun call!693551 () Regex!19982)

(declare-fun call!693552 () Regex!19982)

(assert (=> b!7565050 (= e!4504488 (Union!19982 call!693551 call!693552))))

(declare-fun b!7565051 () Bool)

(declare-fun c!1395910 () Bool)

(assert (=> b!7565051 (= c!1395910 (is-Union!19982 r!24333))))

(declare-fun e!4504486 () Regex!19982)

(assert (=> b!7565051 (= e!4504486 e!4504488)))

(declare-fun bm!693547 () Bool)

(declare-fun c!1395909 () Bool)

(assert (=> bm!693547 (= call!693551 (derivativeStep!5760 (ite c!1395910 (regOne!40477 r!24333) (ite c!1395909 (reg!20311 r!24333) (regOne!40476 r!24333))) (head!15560 lt!2649585)))))

(declare-fun b!7565052 () Bool)

(declare-fun e!4504490 () Regex!19982)

(assert (=> b!7565052 (= e!4504490 (Union!19982 (Concat!28827 call!693554 (regTwo!40476 r!24333)) EmptyLang!19982))))

(declare-fun b!7565053 () Bool)

(declare-fun e!4504487 () Regex!19982)

(assert (=> b!7565053 (= e!4504487 EmptyLang!19982)))

(declare-fun d!2316061 () Bool)

(declare-fun lt!2649852 () Regex!19982)

(assert (=> d!2316061 (validRegex!10410 lt!2649852)))

(assert (=> d!2316061 (= lt!2649852 e!4504487)))

(declare-fun c!1395911 () Bool)

(assert (=> d!2316061 (= c!1395911 (or (is-EmptyExpr!19982 r!24333) (is-EmptyLang!19982 r!24333)))))

(assert (=> d!2316061 (validRegex!10410 r!24333)))

(assert (=> d!2316061 (= (derivativeStep!5760 r!24333 (head!15560 lt!2649585)) lt!2649852)))

(declare-fun bm!693548 () Bool)

(assert (=> bm!693548 (= call!693553 call!693551)))

(declare-fun b!7565054 () Bool)

(assert (=> b!7565054 (= e!4504486 (ite (= (head!15560 lt!2649585) (c!1395677 r!24333)) EmptyExpr!19982 EmptyLang!19982))))

(declare-fun bm!693549 () Bool)

(assert (=> bm!693549 (= call!693552 (derivativeStep!5760 (ite c!1395910 (regTwo!40477 r!24333) (regTwo!40476 r!24333)) (head!15560 lt!2649585)))))

(declare-fun b!7565055 () Bool)

(assert (=> b!7565055 (= e!4504487 e!4504486)))

(declare-fun c!1395912 () Bool)

(assert (=> b!7565055 (= c!1395912 (is-ElementMatch!19982 r!24333))))

(declare-fun b!7565056 () Bool)

(declare-fun e!4504489 () Regex!19982)

(assert (=> b!7565056 (= e!4504489 (Concat!28827 call!693553 r!24333))))

(declare-fun b!7565057 () Bool)

(declare-fun c!1395908 () Bool)

(assert (=> b!7565057 (= c!1395908 (nullable!8716 (regOne!40476 r!24333)))))

(assert (=> b!7565057 (= e!4504489 e!4504490)))

(declare-fun b!7565058 () Bool)

(assert (=> b!7565058 (= e!4504488 e!4504489)))

(assert (=> b!7565058 (= c!1395909 (is-Star!19982 r!24333))))

(declare-fun b!7565059 () Bool)

(assert (=> b!7565059 (= e!4504490 (Union!19982 (Concat!28827 call!693554 (regTwo!40476 r!24333)) call!693552))))

(assert (= (and d!2316061 c!1395911) b!7565053))

(assert (= (and d!2316061 (not c!1395911)) b!7565055))

(assert (= (and b!7565055 c!1395912) b!7565054))

(assert (= (and b!7565055 (not c!1395912)) b!7565051))

(assert (= (and b!7565051 c!1395910) b!7565050))

(assert (= (and b!7565051 (not c!1395910)) b!7565058))

(assert (= (and b!7565058 c!1395909) b!7565056))

(assert (= (and b!7565058 (not c!1395909)) b!7565057))

(assert (= (and b!7565057 c!1395908) b!7565059))

(assert (= (and b!7565057 (not c!1395908)) b!7565052))

(assert (= (or b!7565059 b!7565052) bm!693546))

(assert (= (or b!7565056 bm!693546) bm!693548))

(assert (= (or b!7565050 b!7565059) bm!693549))

(assert (= (or b!7565050 bm!693548) bm!693547))

(assert (=> bm!693547 m!8126684))

(declare-fun m!8127674 () Bool)

(assert (=> bm!693547 m!8127674))

(declare-fun m!8127676 () Bool)

(assert (=> d!2316061 m!8127676))

(assert (=> d!2316061 m!8126644))

(assert (=> bm!693549 m!8126684))

(declare-fun m!8127678 () Bool)

(assert (=> bm!693549 m!8127678))

(assert (=> b!7565057 m!8127068))

(assert (=> b!7564236 d!2316061))

(assert (=> b!7564236 d!2315751))

(assert (=> b!7564236 d!2315815))

(assert (=> b!7564397 d!2316041))

(assert (=> b!7564397 d!2316043))

(declare-fun e!4504491 () Bool)

(declare-fun b!7565063 () Bool)

(declare-fun lt!2649853 () List!72865)

(assert (=> b!7565063 (= e!4504491 (or (not (= lt!2649585 Nil!72741)) (= lt!2649853 (t!387596 testedP!423))))))

(declare-fun d!2316063 () Bool)

(assert (=> d!2316063 e!4504491))

(declare-fun res!3031071 () Bool)

(assert (=> d!2316063 (=> (not res!3031071) (not e!4504491))))

(assert (=> d!2316063 (= res!3031071 (= (content!15403 lt!2649853) (set.union (content!15403 (t!387596 testedP!423)) (content!15403 lt!2649585))))))

(declare-fun e!4504492 () List!72865)

(assert (=> d!2316063 (= lt!2649853 e!4504492)))

(declare-fun c!1395913 () Bool)

(assert (=> d!2316063 (= c!1395913 (is-Nil!72741 (t!387596 testedP!423)))))

(assert (=> d!2316063 (= (++!17486 (t!387596 testedP!423) lt!2649585) lt!2649853)))

(declare-fun b!7565062 () Bool)

(declare-fun res!3031072 () Bool)

(assert (=> b!7565062 (=> (not res!3031072) (not e!4504491))))

(assert (=> b!7565062 (= res!3031072 (= (size!42478 lt!2649853) (+ (size!42478 (t!387596 testedP!423)) (size!42478 lt!2649585))))))

(declare-fun b!7565061 () Bool)

(assert (=> b!7565061 (= e!4504492 (Cons!72741 (h!79189 (t!387596 testedP!423)) (++!17486 (t!387596 (t!387596 testedP!423)) lt!2649585)))))

(declare-fun b!7565060 () Bool)

(assert (=> b!7565060 (= e!4504492 lt!2649585)))

(assert (= (and d!2316063 c!1395913) b!7565060))

(assert (= (and d!2316063 (not c!1395913)) b!7565061))

(assert (= (and d!2316063 res!3031071) b!7565062))

(assert (= (and b!7565062 res!3031072) b!7565063))

(declare-fun m!8127680 () Bool)

(assert (=> d!2316063 m!8127680))

(assert (=> d!2316063 m!8127462))

(assert (=> d!2316063 m!8126854))

(declare-fun m!8127682 () Bool)

(assert (=> b!7565062 m!8127682))

(assert (=> b!7565062 m!8127128))

(assert (=> b!7565062 m!8126858))

(declare-fun m!8127684 () Bool)

(assert (=> b!7565061 m!8127684))

(assert (=> b!7564300 d!2316063))

(declare-fun b!7565067 () Bool)

(declare-fun e!4504493 () Bool)

(declare-fun lt!2649854 () List!72865)

(assert (=> b!7565067 (= e!4504493 (or (not (= lt!2649741 Nil!72741)) (= lt!2649854 testedP!423)))))

(declare-fun d!2316065 () Bool)

(assert (=> d!2316065 e!4504493))

(declare-fun res!3031073 () Bool)

(assert (=> d!2316065 (=> (not res!3031073) (not e!4504493))))

(assert (=> d!2316065 (= res!3031073 (= (content!15403 lt!2649854) (set.union (content!15403 testedP!423) (content!15403 lt!2649741))))))

(declare-fun e!4504494 () List!72865)

(assert (=> d!2316065 (= lt!2649854 e!4504494)))

(declare-fun c!1395914 () Bool)

(assert (=> d!2316065 (= c!1395914 (is-Nil!72741 testedP!423))))

(assert (=> d!2316065 (= (++!17486 testedP!423 lt!2649741) lt!2649854)))

(declare-fun b!7565066 () Bool)

(declare-fun res!3031074 () Bool)

(assert (=> b!7565066 (=> (not res!3031074) (not e!4504493))))

(assert (=> b!7565066 (= res!3031074 (= (size!42478 lt!2649854) (+ (size!42478 testedP!423) (size!42478 lt!2649741))))))

(declare-fun b!7565065 () Bool)

(assert (=> b!7565065 (= e!4504494 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) lt!2649741)))))

(declare-fun b!7565064 () Bool)

(assert (=> b!7565064 (= e!4504494 lt!2649741)))

(assert (= (and d!2316065 c!1395914) b!7565064))

(assert (= (and d!2316065 (not c!1395914)) b!7565065))

(assert (= (and d!2316065 res!3031073) b!7565066))

(assert (= (and b!7565066 res!3031074) b!7565067))

(declare-fun m!8127686 () Bool)

(assert (=> d!2316065 m!8127686))

(assert (=> d!2316065 m!8126852))

(declare-fun m!8127688 () Bool)

(assert (=> d!2316065 m!8127688))

(declare-fun m!8127690 () Bool)

(assert (=> b!7565066 m!8127690))

(assert (=> b!7565066 m!8126610))

(declare-fun m!8127692 () Bool)

(assert (=> b!7565066 m!8127692))

(declare-fun m!8127694 () Bool)

(assert (=> b!7565065 m!8127694))

(assert (=> d!2315775 d!2316065))

(assert (=> d!2315775 d!2315717))

(assert (=> d!2315775 d!2315809))

(declare-fun b!7565068 () Bool)

(declare-fun e!4504501 () Bool)

(declare-fun e!4504496 () Bool)

(assert (=> b!7565068 (= e!4504501 e!4504496)))

(declare-fun res!3031080 () Bool)

(assert (=> b!7565068 (=> res!3031080 e!4504496)))

(declare-fun call!693555 () Bool)

(assert (=> b!7565068 (= res!3031080 call!693555)))

(declare-fun b!7565070 () Bool)

(declare-fun e!4504498 () Bool)

(declare-fun lt!2649855 () Bool)

(assert (=> b!7565070 (= e!4504498 (not lt!2649855))))

(declare-fun b!7565071 () Bool)

(assert (=> b!7565071 (= e!4504496 (not (= (head!15560 (tail!15100 knownP!30)) (c!1395677 (derivativeStep!5760 baseR!101 (head!15560 knownP!30))))))))

(declare-fun b!7565072 () Bool)

(declare-fun e!4504500 () Bool)

(assert (=> b!7565072 (= e!4504500 (= lt!2649855 call!693555))))

(declare-fun bm!693550 () Bool)

(assert (=> bm!693550 (= call!693555 (isEmpty!41418 (tail!15100 knownP!30)))))

(declare-fun b!7565073 () Bool)

(declare-fun res!3031078 () Bool)

(declare-fun e!4504499 () Bool)

(assert (=> b!7565073 (=> (not res!3031078) (not e!4504499))))

(assert (=> b!7565073 (= res!3031078 (isEmpty!41418 (tail!15100 (tail!15100 knownP!30))))))

(declare-fun b!7565074 () Bool)

(assert (=> b!7565074 (= e!4504500 e!4504498)))

(declare-fun c!1395916 () Bool)

(assert (=> b!7565074 (= c!1395916 (is-EmptyLang!19982 (derivativeStep!5760 baseR!101 (head!15560 knownP!30))))))

(declare-fun b!7565075 () Bool)

(assert (=> b!7565075 (= e!4504499 (= (head!15560 (tail!15100 knownP!30)) (c!1395677 (derivativeStep!5760 baseR!101 (head!15560 knownP!30)))))))

(declare-fun b!7565076 () Bool)

(declare-fun res!3031082 () Bool)

(declare-fun e!4504495 () Bool)

(assert (=> b!7565076 (=> res!3031082 e!4504495)))

(assert (=> b!7565076 (= res!3031082 (not (is-ElementMatch!19982 (derivativeStep!5760 baseR!101 (head!15560 knownP!30)))))))

(assert (=> b!7565076 (= e!4504498 e!4504495)))

(declare-fun b!7565077 () Bool)

(declare-fun res!3031077 () Bool)

(assert (=> b!7565077 (=> res!3031077 e!4504496)))

(assert (=> b!7565077 (= res!3031077 (not (isEmpty!41418 (tail!15100 (tail!15100 knownP!30)))))))

(declare-fun d!2316067 () Bool)

(assert (=> d!2316067 e!4504500))

(declare-fun c!1395917 () Bool)

(assert (=> d!2316067 (= c!1395917 (is-EmptyExpr!19982 (derivativeStep!5760 baseR!101 (head!15560 knownP!30))))))

(declare-fun e!4504497 () Bool)

(assert (=> d!2316067 (= lt!2649855 e!4504497)))

(declare-fun c!1395915 () Bool)

(assert (=> d!2316067 (= c!1395915 (isEmpty!41418 (tail!15100 knownP!30)))))

(assert (=> d!2316067 (validRegex!10410 (derivativeStep!5760 baseR!101 (head!15560 knownP!30)))))

(assert (=> d!2316067 (= (matchR!9584 (derivativeStep!5760 baseR!101 (head!15560 knownP!30)) (tail!15100 knownP!30)) lt!2649855)))

(declare-fun b!7565069 () Bool)

(declare-fun res!3031075 () Bool)

(assert (=> b!7565069 (=> res!3031075 e!4504495)))

(assert (=> b!7565069 (= res!3031075 e!4504499)))

(declare-fun res!3031081 () Bool)

(assert (=> b!7565069 (=> (not res!3031081) (not e!4504499))))

(assert (=> b!7565069 (= res!3031081 lt!2649855)))

(declare-fun b!7565078 () Bool)

(assert (=> b!7565078 (= e!4504495 e!4504501)))

(declare-fun res!3031079 () Bool)

(assert (=> b!7565078 (=> (not res!3031079) (not e!4504501))))

(assert (=> b!7565078 (= res!3031079 (not lt!2649855))))

(declare-fun b!7565079 () Bool)

(assert (=> b!7565079 (= e!4504497 (nullable!8716 (derivativeStep!5760 baseR!101 (head!15560 knownP!30))))))

(declare-fun b!7565080 () Bool)

(declare-fun res!3031076 () Bool)

(assert (=> b!7565080 (=> (not res!3031076) (not e!4504499))))

(assert (=> b!7565080 (= res!3031076 (not call!693555))))

(declare-fun b!7565081 () Bool)

(assert (=> b!7565081 (= e!4504497 (matchR!9584 (derivativeStep!5760 (derivativeStep!5760 baseR!101 (head!15560 knownP!30)) (head!15560 (tail!15100 knownP!30))) (tail!15100 (tail!15100 knownP!30))))))

(assert (= (and d!2316067 c!1395915) b!7565079))

(assert (= (and d!2316067 (not c!1395915)) b!7565081))

(assert (= (and d!2316067 c!1395917) b!7565072))

(assert (= (and d!2316067 (not c!1395917)) b!7565074))

(assert (= (and b!7565074 c!1395916) b!7565070))

(assert (= (and b!7565074 (not c!1395916)) b!7565076))

(assert (= (and b!7565076 (not res!3031082)) b!7565069))

(assert (= (and b!7565069 res!3031081) b!7565080))

(assert (= (and b!7565080 res!3031076) b!7565073))

(assert (= (and b!7565073 res!3031078) b!7565075))

(assert (= (and b!7565069 (not res!3031075)) b!7565078))

(assert (= (and b!7565078 res!3031079) b!7565068))

(assert (= (and b!7565068 (not res!3031080)) b!7565077))

(assert (= (and b!7565077 (not res!3031077)) b!7565071))

(assert (= (or b!7565072 b!7565068 b!7565080) bm!693550))

(assert (=> d!2316067 m!8126808))

(assert (=> d!2316067 m!8126866))

(assert (=> d!2316067 m!8126870))

(declare-fun m!8127696 () Bool)

(assert (=> d!2316067 m!8127696))

(assert (=> b!7565073 m!8126808))

(assert (=> b!7565073 m!8127404))

(assert (=> b!7565073 m!8127404))

(declare-fun m!8127698 () Bool)

(assert (=> b!7565073 m!8127698))

(assert (=> b!7565079 m!8126870))

(declare-fun m!8127700 () Bool)

(assert (=> b!7565079 m!8127700))

(assert (=> b!7565081 m!8126808))

(assert (=> b!7565081 m!8127440))

(assert (=> b!7565081 m!8126870))

(assert (=> b!7565081 m!8127440))

(declare-fun m!8127702 () Bool)

(assert (=> b!7565081 m!8127702))

(assert (=> b!7565081 m!8126808))

(assert (=> b!7565081 m!8127404))

(assert (=> b!7565081 m!8127702))

(assert (=> b!7565081 m!8127404))

(declare-fun m!8127704 () Bool)

(assert (=> b!7565081 m!8127704))

(assert (=> bm!693550 m!8126808))

(assert (=> bm!693550 m!8126866))

(assert (=> b!7565077 m!8126808))

(assert (=> b!7565077 m!8127404))

(assert (=> b!7565077 m!8127404))

(assert (=> b!7565077 m!8127698))

(assert (=> b!7565071 m!8126808))

(assert (=> b!7565071 m!8127440))

(assert (=> b!7565075 m!8126808))

(assert (=> b!7565075 m!8127440))

(assert (=> b!7564316 d!2316067))

(declare-fun bm!693551 () Bool)

(declare-fun call!693559 () Regex!19982)

(declare-fun call!693558 () Regex!19982)

(assert (=> bm!693551 (= call!693559 call!693558)))

(declare-fun b!7565082 () Bool)

(declare-fun e!4504504 () Regex!19982)

(declare-fun call!693556 () Regex!19982)

(declare-fun call!693557 () Regex!19982)

(assert (=> b!7565082 (= e!4504504 (Union!19982 call!693556 call!693557))))

(declare-fun b!7565083 () Bool)

(declare-fun c!1395920 () Bool)

(assert (=> b!7565083 (= c!1395920 (is-Union!19982 baseR!101))))

(declare-fun e!4504502 () Regex!19982)

(assert (=> b!7565083 (= e!4504502 e!4504504)))

(declare-fun c!1395919 () Bool)

(declare-fun bm!693552 () Bool)

(assert (=> bm!693552 (= call!693556 (derivativeStep!5760 (ite c!1395920 (regOne!40477 baseR!101) (ite c!1395919 (reg!20311 baseR!101) (regOne!40476 baseR!101))) (head!15560 knownP!30)))))

(declare-fun b!7565084 () Bool)

(declare-fun e!4504506 () Regex!19982)

(assert (=> b!7565084 (= e!4504506 (Union!19982 (Concat!28827 call!693559 (regTwo!40476 baseR!101)) EmptyLang!19982))))

(declare-fun b!7565085 () Bool)

(declare-fun e!4504503 () Regex!19982)

(assert (=> b!7565085 (= e!4504503 EmptyLang!19982)))

(declare-fun d!2316069 () Bool)

(declare-fun lt!2649856 () Regex!19982)

(assert (=> d!2316069 (validRegex!10410 lt!2649856)))

(assert (=> d!2316069 (= lt!2649856 e!4504503)))

(declare-fun c!1395921 () Bool)

(assert (=> d!2316069 (= c!1395921 (or (is-EmptyExpr!19982 baseR!101) (is-EmptyLang!19982 baseR!101)))))

(assert (=> d!2316069 (validRegex!10410 baseR!101)))

(assert (=> d!2316069 (= (derivativeStep!5760 baseR!101 (head!15560 knownP!30)) lt!2649856)))

(declare-fun bm!693553 () Bool)

(assert (=> bm!693553 (= call!693558 call!693556)))

(declare-fun b!7565086 () Bool)

(assert (=> b!7565086 (= e!4504502 (ite (= (head!15560 knownP!30) (c!1395677 baseR!101)) EmptyExpr!19982 EmptyLang!19982))))

(declare-fun bm!693554 () Bool)

(assert (=> bm!693554 (= call!693557 (derivativeStep!5760 (ite c!1395920 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)) (head!15560 knownP!30)))))

(declare-fun b!7565087 () Bool)

(assert (=> b!7565087 (= e!4504503 e!4504502)))

(declare-fun c!1395922 () Bool)

(assert (=> b!7565087 (= c!1395922 (is-ElementMatch!19982 baseR!101))))

(declare-fun b!7565088 () Bool)

(declare-fun e!4504505 () Regex!19982)

(assert (=> b!7565088 (= e!4504505 (Concat!28827 call!693558 baseR!101))))

(declare-fun b!7565089 () Bool)

(declare-fun c!1395918 () Bool)

(assert (=> b!7565089 (= c!1395918 (nullable!8716 (regOne!40476 baseR!101)))))

(assert (=> b!7565089 (= e!4504505 e!4504506)))

(declare-fun b!7565090 () Bool)

(assert (=> b!7565090 (= e!4504504 e!4504505)))

(assert (=> b!7565090 (= c!1395919 (is-Star!19982 baseR!101))))

(declare-fun b!7565091 () Bool)

(assert (=> b!7565091 (= e!4504506 (Union!19982 (Concat!28827 call!693559 (regTwo!40476 baseR!101)) call!693557))))

(assert (= (and d!2316069 c!1395921) b!7565085))

(assert (= (and d!2316069 (not c!1395921)) b!7565087))

(assert (= (and b!7565087 c!1395922) b!7565086))

(assert (= (and b!7565087 (not c!1395922)) b!7565083))

(assert (= (and b!7565083 c!1395920) b!7565082))

(assert (= (and b!7565083 (not c!1395920)) b!7565090))

(assert (= (and b!7565090 c!1395919) b!7565088))

(assert (= (and b!7565090 (not c!1395919)) b!7565089))

(assert (= (and b!7565089 c!1395918) b!7565091))

(assert (= (and b!7565089 (not c!1395918)) b!7565084))

(assert (= (or b!7565091 b!7565084) bm!693551))

(assert (= (or b!7565088 bm!693551) bm!693553))

(assert (= (or b!7565082 b!7565091) bm!693554))

(assert (= (or b!7565082 bm!693553) bm!693552))

(assert (=> bm!693552 m!8126830))

(declare-fun m!8127706 () Bool)

(assert (=> bm!693552 m!8127706))

(declare-fun m!8127708 () Bool)

(assert (=> d!2316069 m!8127708))

(assert (=> d!2316069 m!8126698))

(assert (=> bm!693554 m!8126830))

(declare-fun m!8127710 () Bool)

(assert (=> bm!693554 m!8127710))

(assert (=> b!7565089 m!8127352))

(assert (=> b!7564316 d!2316069))

(assert (=> b!7564316 d!2315893))

(assert (=> b!7564316 d!2315937))

(declare-fun b!7565095 () Bool)

(declare-fun lt!2649857 () List!72865)

(declare-fun e!4504507 () Bool)

(assert (=> b!7565095 (= e!4504507 (or (not (= lt!2649589 Nil!72741)) (= lt!2649857 (t!387596 lt!2649585))))))

(declare-fun d!2316071 () Bool)

(assert (=> d!2316071 e!4504507))

(declare-fun res!3031083 () Bool)

(assert (=> d!2316071 (=> (not res!3031083) (not e!4504507))))

(assert (=> d!2316071 (= res!3031083 (= (content!15403 lt!2649857) (set.union (content!15403 (t!387596 lt!2649585)) (content!15403 lt!2649589))))))

(declare-fun e!4504508 () List!72865)

(assert (=> d!2316071 (= lt!2649857 e!4504508)))

(declare-fun c!1395923 () Bool)

(assert (=> d!2316071 (= c!1395923 (is-Nil!72741 (t!387596 lt!2649585)))))

(assert (=> d!2316071 (= (++!17486 (t!387596 lt!2649585) lt!2649589) lt!2649857)))

(declare-fun b!7565094 () Bool)

(declare-fun res!3031084 () Bool)

(assert (=> b!7565094 (=> (not res!3031084) (not e!4504507))))

(assert (=> b!7565094 (= res!3031084 (= (size!42478 lt!2649857) (+ (size!42478 (t!387596 lt!2649585)) (size!42478 lt!2649589))))))

(declare-fun b!7565093 () Bool)

(assert (=> b!7565093 (= e!4504508 (Cons!72741 (h!79189 (t!387596 lt!2649585)) (++!17486 (t!387596 (t!387596 lt!2649585)) lt!2649589)))))

(declare-fun b!7565092 () Bool)

(assert (=> b!7565092 (= e!4504508 lt!2649589)))

(assert (= (and d!2316071 c!1395923) b!7565092))

(assert (= (and d!2316071 (not c!1395923)) b!7565093))

(assert (= (and d!2316071 res!3031083) b!7565094))

(assert (= (and b!7565094 res!3031084) b!7565095))

(declare-fun m!8127712 () Bool)

(assert (=> d!2316071 m!8127712))

(assert (=> d!2316071 m!8127478))

(assert (=> d!2316071 m!8126840))

(declare-fun m!8127714 () Bool)

(assert (=> b!7565094 m!8127714))

(assert (=> b!7565094 m!8127536))

(assert (=> b!7565094 m!8126846))

(declare-fun m!8127716 () Bool)

(assert (=> b!7565093 m!8127716))

(assert (=> b!7564322 d!2316071))

(declare-fun d!2316073 () Bool)

(declare-fun lt!2649858 () Int)

(assert (=> d!2316073 (>= lt!2649858 0)))

(declare-fun e!4504509 () Int)

(assert (=> d!2316073 (= lt!2649858 e!4504509)))

(declare-fun c!1395924 () Bool)

(assert (=> d!2316073 (= c!1395924 (is-Nil!72741 lt!2649714))))

(assert (=> d!2316073 (= (size!42478 lt!2649714) lt!2649858)))

(declare-fun b!7565096 () Bool)

(assert (=> b!7565096 (= e!4504509 0)))

(declare-fun b!7565097 () Bool)

(assert (=> b!7565097 (= e!4504509 (+ 1 (size!42478 (t!387596 lt!2649714))))))

(assert (= (and d!2316073 c!1395924) b!7565096))

(assert (= (and d!2316073 (not c!1395924)) b!7565097))

(declare-fun m!8127718 () Bool)

(assert (=> b!7565097 m!8127718))

(assert (=> b!7564319 d!2316073))

(assert (=> b!7564319 d!2315809))

(declare-fun d!2316075 () Bool)

(declare-fun lt!2649859 () Int)

(assert (=> d!2316075 (>= lt!2649859 0)))

(declare-fun e!4504510 () Int)

(assert (=> d!2316075 (= lt!2649859 e!4504510)))

(declare-fun c!1395925 () Bool)

(assert (=> d!2316075 (= c!1395925 (is-Nil!72741 lt!2649606))))

(assert (=> d!2316075 (= (size!42478 lt!2649606) lt!2649859)))

(declare-fun b!7565098 () Bool)

(assert (=> b!7565098 (= e!4504510 0)))

(declare-fun b!7565099 () Bool)

(assert (=> b!7565099 (= e!4504510 (+ 1 (size!42478 (t!387596 lt!2649606))))))

(assert (= (and d!2316075 c!1395925) b!7565098))

(assert (= (and d!2316075 (not c!1395925)) b!7565099))

(declare-fun m!8127720 () Bool)

(assert (=> b!7565099 m!8127720))

(assert (=> b!7564319 d!2316075))

(declare-fun lt!2649860 () List!72865)

(declare-fun b!7565103 () Bool)

(declare-fun e!4504511 () Bool)

(assert (=> b!7565103 (= e!4504511 (or (not (= lt!2649596 Nil!72741)) (= lt!2649860 (t!387596 testedP!423))))))

(declare-fun d!2316077 () Bool)

(assert (=> d!2316077 e!4504511))

(declare-fun res!3031085 () Bool)

(assert (=> d!2316077 (=> (not res!3031085) (not e!4504511))))

(assert (=> d!2316077 (= res!3031085 (= (content!15403 lt!2649860) (set.union (content!15403 (t!387596 testedP!423)) (content!15403 lt!2649596))))))

(declare-fun e!4504512 () List!72865)

(assert (=> d!2316077 (= lt!2649860 e!4504512)))

(declare-fun c!1395926 () Bool)

(assert (=> d!2316077 (= c!1395926 (is-Nil!72741 (t!387596 testedP!423)))))

(assert (=> d!2316077 (= (++!17486 (t!387596 testedP!423) lt!2649596) lt!2649860)))

(declare-fun b!7565102 () Bool)

(declare-fun res!3031086 () Bool)

(assert (=> b!7565102 (=> (not res!3031086) (not e!4504511))))

(assert (=> b!7565102 (= res!3031086 (= (size!42478 lt!2649860) (+ (size!42478 (t!387596 testedP!423)) (size!42478 lt!2649596))))))

(declare-fun b!7565101 () Bool)

(assert (=> b!7565101 (= e!4504512 (Cons!72741 (h!79189 (t!387596 testedP!423)) (++!17486 (t!387596 (t!387596 testedP!423)) lt!2649596)))))

(declare-fun b!7565100 () Bool)

(assert (=> b!7565100 (= e!4504512 lt!2649596)))

(assert (= (and d!2316077 c!1395926) b!7565100))

(assert (= (and d!2316077 (not c!1395926)) b!7565101))

(assert (= (and d!2316077 res!3031085) b!7565102))

(assert (= (and b!7565102 res!3031086) b!7565103))

(declare-fun m!8127722 () Bool)

(assert (=> d!2316077 m!8127722))

(assert (=> d!2316077 m!8127462))

(assert (=> d!2316077 m!8126990))

(declare-fun m!8127724 () Bool)

(assert (=> b!7565102 m!8127724))

(assert (=> b!7565102 m!8127128))

(assert (=> b!7565102 m!8126994))

(declare-fun m!8127726 () Bool)

(assert (=> b!7565101 m!8127726))

(assert (=> b!7564380 d!2316077))

(assert (=> b!7564488 d!2315811))

(assert (=> b!7564488 d!2315737))

(declare-fun d!2316079 () Bool)

(assert (=> d!2316079 (= (isEmpty!41418 (tail!15100 lt!2649585)) (is-Nil!72741 (tail!15100 lt!2649585)))))

(assert (=> b!7564232 d!2316079))

(assert (=> b!7564232 d!2315815))

(declare-fun d!2316081 () Bool)

(declare-fun lt!2649861 () Int)

(assert (=> d!2316081 (>= lt!2649861 0)))

(declare-fun e!4504513 () Int)

(assert (=> d!2316081 (= lt!2649861 e!4504513)))

(declare-fun c!1395927 () Bool)

(assert (=> d!2316081 (= c!1395927 (is-Nil!72741 lt!2649711))))

(assert (=> d!2316081 (= (size!42478 lt!2649711) lt!2649861)))

(declare-fun b!7565104 () Bool)

(assert (=> b!7565104 (= e!4504513 0)))

(declare-fun b!7565105 () Bool)

(assert (=> b!7565105 (= e!4504513 (+ 1 (size!42478 (t!387596 lt!2649711))))))

(assert (= (and d!2316081 c!1395927) b!7565104))

(assert (= (and d!2316081 (not c!1395927)) b!7565105))

(declare-fun m!8127728 () Bool)

(assert (=> b!7565105 m!8127728))

(assert (=> b!7564297 d!2316081))

(declare-fun d!2316083 () Bool)

(declare-fun lt!2649862 () Int)

(assert (=> d!2316083 (>= lt!2649862 0)))

(declare-fun e!4504514 () Int)

(assert (=> d!2316083 (= lt!2649862 e!4504514)))

(declare-fun c!1395928 () Bool)

(assert (=> d!2316083 (= c!1395928 (is-Nil!72741 lt!2649587))))

(assert (=> d!2316083 (= (size!42478 lt!2649587) lt!2649862)))

(declare-fun b!7565106 () Bool)

(assert (=> b!7565106 (= e!4504514 0)))

(declare-fun b!7565107 () Bool)

(assert (=> b!7565107 (= e!4504514 (+ 1 (size!42478 (t!387596 lt!2649587))))))

(assert (= (and d!2316083 c!1395928) b!7565106))

(assert (= (and d!2316083 (not c!1395928)) b!7565107))

(declare-fun m!8127730 () Bool)

(assert (=> b!7565107 m!8127730))

(assert (=> b!7564297 d!2316083))

(assert (=> b!7564297 d!2316005))

(assert (=> b!7564484 d!2315889))

(assert (=> b!7564484 d!2315893))

(declare-fun d!2316085 () Bool)

(declare-fun lt!2649863 () List!72865)

(assert (=> d!2316085 (= (++!17486 (t!387596 knownP!30) lt!2649863) (tail!15100 input!7874))))

(declare-fun e!4504515 () List!72865)

(assert (=> d!2316085 (= lt!2649863 e!4504515)))

(declare-fun c!1395929 () Bool)

(assert (=> d!2316085 (= c!1395929 (is-Cons!72741 (t!387596 knownP!30)))))

(assert (=> d!2316085 (>= (size!42478 (tail!15100 input!7874)) (size!42478 (t!387596 knownP!30)))))

(assert (=> d!2316085 (= (getSuffix!3666 (tail!15100 input!7874) (t!387596 knownP!30)) lt!2649863)))

(declare-fun b!7565108 () Bool)

(assert (=> b!7565108 (= e!4504515 (getSuffix!3666 (tail!15100 (tail!15100 input!7874)) (t!387596 (t!387596 knownP!30))))))

(declare-fun b!7565109 () Bool)

(assert (=> b!7565109 (= e!4504515 (tail!15100 input!7874))))

(assert (= (and d!2316085 c!1395929) b!7565108))

(assert (= (and d!2316085 (not c!1395929)) b!7565109))

(declare-fun m!8127732 () Bool)

(assert (=> d!2316085 m!8127732))

(assert (=> d!2316085 m!8126968))

(assert (=> d!2316085 m!8127596))

(assert (=> d!2316085 m!8127130))

(assert (=> b!7565108 m!8126968))

(assert (=> b!7565108 m!8127592))

(assert (=> b!7565108 m!8127592))

(declare-fun m!8127734 () Bool)

(assert (=> b!7565108 m!8127734))

(assert (=> b!7564498 d!2316085))

(assert (=> b!7564498 d!2316029))

(declare-fun d!2316087 () Bool)

(declare-fun lt!2649864 () Int)

(assert (=> d!2316087 (>= lt!2649864 0)))

(declare-fun e!4504516 () Int)

(assert (=> d!2316087 (= lt!2649864 e!4504516)))

(declare-fun c!1395930 () Bool)

(assert (=> d!2316087 (= c!1395930 (is-Nil!72741 (t!387596 knownP!30)))))

(assert (=> d!2316087 (= (size!42478 (t!387596 knownP!30)) lt!2649864)))

(declare-fun b!7565110 () Bool)

(assert (=> b!7565110 (= e!4504516 0)))

(declare-fun b!7565111 () Bool)

(assert (=> b!7565111 (= e!4504516 (+ 1 (size!42478 (t!387596 (t!387596 knownP!30)))))))

(assert (= (and d!2316087 c!1395930) b!7565110))

(assert (= (and d!2316087 (not c!1395930)) b!7565111))

(declare-fun m!8127736 () Bool)

(assert (=> b!7565111 m!8127736))

(assert (=> b!7564503 d!2316087))

(assert (=> b!7564228 d!2316079))

(assert (=> b!7564228 d!2315815))

(declare-fun d!2316089 () Bool)

(declare-fun c!1395931 () Bool)

(assert (=> d!2316089 (= c!1395931 (is-Nil!72741 lt!2649712))))

(declare-fun e!4504517 () (Set C!40290))

(assert (=> d!2316089 (= (content!15403 lt!2649712) e!4504517)))

(declare-fun b!7565112 () Bool)

(assert (=> b!7565112 (= e!4504517 (as set.empty (Set C!40290)))))

(declare-fun b!7565113 () Bool)

(assert (=> b!7565113 (= e!4504517 (set.union (set.insert (h!79189 lt!2649712) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649712))))))

(assert (= (and d!2316089 c!1395931) b!7565112))

(assert (= (and d!2316089 (not c!1395931)) b!7565113))

(declare-fun m!8127738 () Bool)

(assert (=> b!7565113 m!8127738))

(declare-fun m!8127740 () Bool)

(assert (=> b!7565113 m!8127740))

(assert (=> d!2315721 d!2316089))

(assert (=> d!2315721 d!2315975))

(assert (=> d!2315721 d!2315967))

(assert (=> b!7564312 d!2315961))

(assert (=> b!7564312 d!2315937))

(assert (=> b!7564362 d!2315893))

(assert (=> b!7564362 d!2315891))

(declare-fun b!7565114 () Bool)

(declare-fun e!4504520 () Bool)

(declare-fun call!693560 () Bool)

(assert (=> b!7565114 (= e!4504520 call!693560)))

(declare-fun b!7565115 () Bool)

(declare-fun res!3031089 () Bool)

(declare-fun e!4504521 () Bool)

(assert (=> b!7565115 (=> (not res!3031089) (not e!4504521))))

(declare-fun call!693561 () Bool)

(assert (=> b!7565115 (= res!3031089 call!693561)))

(declare-fun e!4504523 () Bool)

(assert (=> b!7565115 (= e!4504523 e!4504521)))

(declare-fun bm!693555 () Bool)

(declare-fun c!1395933 () Bool)

(declare-fun c!1395932 () Bool)

(assert (=> bm!693555 (= call!693560 (validRegex!10410 (ite c!1395933 (reg!20311 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))) (ite c!1395932 (regTwo!40477 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))) (regTwo!40476 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591)))))))))

(declare-fun b!7565116 () Bool)

(declare-fun e!4504524 () Bool)

(declare-fun e!4504518 () Bool)

(assert (=> b!7565116 (= e!4504524 e!4504518)))

(assert (=> b!7565116 (= c!1395933 (is-Star!19982 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))))))

(declare-fun b!7565117 () Bool)

(assert (=> b!7565117 (= e!4504518 e!4504523)))

(assert (=> b!7565117 (= c!1395932 (is-Union!19982 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))))))

(declare-fun bm!693556 () Bool)

(declare-fun call!693562 () Bool)

(assert (=> bm!693556 (= call!693562 call!693560)))

(declare-fun bm!693557 () Bool)

(assert (=> bm!693557 (= call!693561 (validRegex!10410 (ite c!1395932 (regOne!40477 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))) (regOne!40476 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))))))))

(declare-fun b!7565118 () Bool)

(assert (=> b!7565118 (= e!4504521 call!693562)))

(declare-fun b!7565119 () Bool)

(declare-fun e!4504519 () Bool)

(assert (=> b!7565119 (= e!4504519 call!693562)))

(declare-fun d!2316091 () Bool)

(declare-fun res!3031088 () Bool)

(assert (=> d!2316091 (=> res!3031088 e!4504524)))

(assert (=> d!2316091 (= res!3031088 (is-ElementMatch!19982 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))))))

(assert (=> d!2316091 (= (validRegex!10410 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))) e!4504524)))

(declare-fun b!7565120 () Bool)

(assert (=> b!7565120 (= e!4504518 e!4504520)))

(declare-fun res!3031091 () Bool)

(assert (=> b!7565120 (= res!3031091 (not (nullable!8716 (reg!20311 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591))))))))

(assert (=> b!7565120 (=> (not res!3031091) (not e!4504520))))

(declare-fun b!7565121 () Bool)

(declare-fun res!3031090 () Bool)

(declare-fun e!4504522 () Bool)

(assert (=> b!7565121 (=> res!3031090 e!4504522)))

(assert (=> b!7565121 (= res!3031090 (not (is-Concat!28827 (ite c!1395683 (regOne!40477 lt!2649591) (regOne!40476 lt!2649591)))))))

(assert (=> b!7565121 (= e!4504523 e!4504522)))

(declare-fun b!7565122 () Bool)

(assert (=> b!7565122 (= e!4504522 e!4504519)))

(declare-fun res!3031087 () Bool)

(assert (=> b!7565122 (=> (not res!3031087) (not e!4504519))))

(assert (=> b!7565122 (= res!3031087 call!693561)))

(assert (= (and d!2316091 (not res!3031088)) b!7565116))

(assert (= (and b!7565116 c!1395933) b!7565120))

(assert (= (and b!7565116 (not c!1395933)) b!7565117))

(assert (= (and b!7565120 res!3031091) b!7565114))

(assert (= (and b!7565117 c!1395932) b!7565115))

(assert (= (and b!7565117 (not c!1395932)) b!7565121))

(assert (= (and b!7565115 res!3031089) b!7565118))

(assert (= (and b!7565121 (not res!3031090)) b!7565122))

(assert (= (and b!7565122 res!3031087) b!7565119))

(assert (= (or b!7565115 b!7565122) bm!693557))

(assert (= (or b!7565118 b!7565119) bm!693556))

(assert (= (or b!7565114 bm!693556) bm!693555))

(declare-fun m!8127742 () Bool)

(assert (=> bm!693555 m!8127742))

(declare-fun m!8127744 () Bool)

(assert (=> bm!693557 m!8127744))

(declare-fun m!8127746 () Bool)

(assert (=> b!7565120 m!8127746))

(assert (=> bm!693450 d!2316091))

(declare-fun d!2316093 () Bool)

(declare-fun e!4504526 () Bool)

(assert (=> d!2316093 e!4504526))

(declare-fun res!3031095 () Bool)

(assert (=> d!2316093 (=> res!3031095 e!4504526)))

(declare-fun lt!2649865 () Bool)

(assert (=> d!2316093 (= res!3031095 (not lt!2649865))))

(declare-fun e!4504525 () Bool)

(assert (=> d!2316093 (= lt!2649865 e!4504525)))

(declare-fun res!3031092 () Bool)

(assert (=> d!2316093 (=> res!3031092 e!4504525)))

(assert (=> d!2316093 (= res!3031092 (is-Nil!72741 (tail!15100 testedP!423)))))

(assert (=> d!2316093 (= (isPrefix!6188 (tail!15100 testedP!423) (tail!15100 knownP!30)) lt!2649865)))

(declare-fun b!7565125 () Bool)

(declare-fun e!4504527 () Bool)

(assert (=> b!7565125 (= e!4504527 (isPrefix!6188 (tail!15100 (tail!15100 testedP!423)) (tail!15100 (tail!15100 knownP!30))))))

(declare-fun b!7565126 () Bool)

(assert (=> b!7565126 (= e!4504526 (>= (size!42478 (tail!15100 knownP!30)) (size!42478 (tail!15100 testedP!423))))))

(declare-fun b!7565123 () Bool)

(assert (=> b!7565123 (= e!4504525 e!4504527)))

(declare-fun res!3031094 () Bool)

(assert (=> b!7565123 (=> (not res!3031094) (not e!4504527))))

(assert (=> b!7565123 (= res!3031094 (not (is-Nil!72741 (tail!15100 knownP!30))))))

(declare-fun b!7565124 () Bool)

(declare-fun res!3031093 () Bool)

(assert (=> b!7565124 (=> (not res!3031093) (not e!4504527))))

(assert (=> b!7565124 (= res!3031093 (= (head!15560 (tail!15100 testedP!423)) (head!15560 (tail!15100 knownP!30))))))

(assert (= (and d!2316093 (not res!3031092)) b!7565123))

(assert (= (and b!7565123 res!3031094) b!7565124))

(assert (= (and b!7565124 res!3031093) b!7565125))

(assert (= (and d!2316093 (not res!3031095)) b!7565126))

(assert (=> b!7565125 m!8126824))

(assert (=> b!7565125 m!8127600))

(assert (=> b!7565125 m!8126808))

(assert (=> b!7565125 m!8127404))

(assert (=> b!7565125 m!8127600))

(assert (=> b!7565125 m!8127404))

(declare-fun m!8127748 () Bool)

(assert (=> b!7565125 m!8127748))

(assert (=> b!7565126 m!8126808))

(assert (=> b!7565126 m!8127402))

(assert (=> b!7565126 m!8126824))

(assert (=> b!7565126 m!8127604))

(assert (=> b!7565124 m!8126824))

(assert (=> b!7565124 m!8127606))

(assert (=> b!7565124 m!8126808))

(assert (=> b!7565124 m!8127440))

(assert (=> b!7564261 d!2316093))

(assert (=> b!7564261 d!2316033))

(assert (=> b!7564261 d!2315937))

(declare-fun d!2316095 () Bool)

(declare-fun lt!2649866 () Int)

(assert (=> d!2316095 (>= lt!2649866 0)))

(declare-fun e!4504528 () Int)

(assert (=> d!2316095 (= lt!2649866 e!4504528)))

(declare-fun c!1395934 () Bool)

(assert (=> d!2316095 (= c!1395934 (is-Nil!72741 (t!387596 lt!2649592)))))

(assert (=> d!2316095 (= (size!42478 (t!387596 lt!2649592)) lt!2649866)))

(declare-fun b!7565127 () Bool)

(assert (=> b!7565127 (= e!4504528 0)))

(declare-fun b!7565128 () Bool)

(assert (=> b!7565128 (= e!4504528 (+ 1 (size!42478 (t!387596 (t!387596 lt!2649592)))))))

(assert (= (and d!2316095 c!1395934) b!7565127))

(assert (= (and d!2316095 (not c!1395934)) b!7565128))

(declare-fun m!8127750 () Bool)

(assert (=> b!7565128 m!8127750))

(assert (=> b!7564348 d!2316095))

(declare-fun b!7565129 () Bool)

(declare-fun e!4504531 () Bool)

(declare-fun call!693563 () Bool)

(assert (=> b!7565129 (= e!4504531 call!693563)))

(declare-fun b!7565130 () Bool)

(declare-fun res!3031098 () Bool)

(declare-fun e!4504532 () Bool)

(assert (=> b!7565130 (=> (not res!3031098) (not e!4504532))))

(declare-fun call!693564 () Bool)

(assert (=> b!7565130 (= res!3031098 call!693564)))

(declare-fun e!4504534 () Bool)

(assert (=> b!7565130 (= e!4504534 e!4504532)))

(declare-fun c!1395935 () Bool)

(declare-fun bm!693558 () Bool)

(declare-fun c!1395936 () Bool)

(assert (=> bm!693558 (= call!693563 (validRegex!10410 (ite c!1395936 (reg!20311 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))) (ite c!1395935 (regTwo!40477 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))) (regTwo!40476 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101))))))))))

(declare-fun b!7565131 () Bool)

(declare-fun e!4504535 () Bool)

(declare-fun e!4504529 () Bool)

(assert (=> b!7565131 (= e!4504535 e!4504529)))

(assert (=> b!7565131 (= c!1395936 (is-Star!19982 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))))))

(declare-fun b!7565132 () Bool)

(assert (=> b!7565132 (= e!4504529 e!4504534)))

(assert (=> b!7565132 (= c!1395935 (is-Union!19982 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))))))

(declare-fun bm!693559 () Bool)

(declare-fun call!693565 () Bool)

(assert (=> bm!693559 (= call!693565 call!693563)))

(declare-fun bm!693560 () Bool)

(assert (=> bm!693560 (= call!693564 (validRegex!10410 (ite c!1395935 (regOne!40477 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))) (regOne!40476 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))))))))

(declare-fun b!7565133 () Bool)

(assert (=> b!7565133 (= e!4504532 call!693565)))

(declare-fun b!7565134 () Bool)

(declare-fun e!4504530 () Bool)

(assert (=> b!7565134 (= e!4504530 call!693565)))

(declare-fun d!2316097 () Bool)

(declare-fun res!3031097 () Bool)

(assert (=> d!2316097 (=> res!3031097 e!4504535)))

(assert (=> d!2316097 (= res!3031097 (is-ElementMatch!19982 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))))))

(assert (=> d!2316097 (= (validRegex!10410 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))) e!4504535)))

(declare-fun b!7565135 () Bool)

(assert (=> b!7565135 (= e!4504529 e!4504531)))

(declare-fun res!3031100 () Bool)

(assert (=> b!7565135 (= res!3031100 (not (nullable!8716 (reg!20311 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101)))))))))

(assert (=> b!7565135 (=> (not res!3031100) (not e!4504531))))

(declare-fun b!7565136 () Bool)

(declare-fun res!3031099 () Bool)

(declare-fun e!4504533 () Bool)

(assert (=> b!7565136 (=> res!3031099 e!4504533)))

(assert (=> b!7565136 (= res!3031099 (not (is-Concat!28827 (ite c!1395719 (reg!20311 baseR!101) (ite c!1395718 (regTwo!40477 baseR!101) (regTwo!40476 baseR!101))))))))

(assert (=> b!7565136 (= e!4504534 e!4504533)))

(declare-fun b!7565137 () Bool)

(assert (=> b!7565137 (= e!4504533 e!4504530)))

(declare-fun res!3031096 () Bool)

(assert (=> b!7565137 (=> (not res!3031096) (not e!4504530))))

(assert (=> b!7565137 (= res!3031096 call!693564)))

(assert (= (and d!2316097 (not res!3031097)) b!7565131))

(assert (= (and b!7565131 c!1395936) b!7565135))

(assert (= (and b!7565131 (not c!1395936)) b!7565132))

(assert (= (and b!7565135 res!3031100) b!7565129))

(assert (= (and b!7565132 c!1395935) b!7565130))

(assert (= (and b!7565132 (not c!1395935)) b!7565136))

(assert (= (and b!7565130 res!3031098) b!7565133))

(assert (= (and b!7565136 (not res!3031099)) b!7565137))

(assert (= (and b!7565137 res!3031096) b!7565134))

(assert (= (or b!7565130 b!7565137) bm!693560))

(assert (= (or b!7565133 b!7565134) bm!693559))

(assert (= (or b!7565129 bm!693559) bm!693558))

(declare-fun m!8127752 () Bool)

(assert (=> bm!693558 m!8127752))

(declare-fun m!8127754 () Bool)

(assert (=> bm!693560 m!8127754))

(declare-fun m!8127756 () Bool)

(assert (=> b!7565135 m!8127756))

(assert (=> bm!693464 d!2316097))

(declare-fun d!2316099 () Bool)

(assert (=> d!2316099 (= lt!2649586 lt!2649585)))

(assert (=> d!2316099 true))

(declare-fun _$63!1393 () Unit!166898)

(assert (=> d!2316099 (= (choose!58504 testedP!423 lt!2649586 testedP!423 lt!2649585 knownP!30) _$63!1393)))

(assert (=> d!2315739 d!2316099))

(assert (=> d!2315739 d!2315711))

(declare-fun b!7565138 () Bool)

(declare-fun e!4504538 () Bool)

(declare-fun call!693566 () Bool)

(assert (=> b!7565138 (= e!4504538 call!693566)))

(declare-fun b!7565139 () Bool)

(declare-fun res!3031103 () Bool)

(declare-fun e!4504539 () Bool)

(assert (=> b!7565139 (=> (not res!3031103) (not e!4504539))))

(declare-fun call!693567 () Bool)

(assert (=> b!7565139 (= res!3031103 call!693567)))

(declare-fun e!4504541 () Bool)

(assert (=> b!7565139 (= e!4504541 e!4504539)))

(declare-fun c!1395938 () Bool)

(declare-fun bm!693561 () Bool)

(declare-fun c!1395937 () Bool)

(assert (=> bm!693561 (= call!693566 (validRegex!10410 (ite c!1395938 (reg!20311 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))) (ite c!1395937 (regTwo!40477 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))) (regTwo!40476 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333))))))))))

(declare-fun b!7565140 () Bool)

(declare-fun e!4504542 () Bool)

(declare-fun e!4504536 () Bool)

(assert (=> b!7565140 (= e!4504542 e!4504536)))

(assert (=> b!7565140 (= c!1395938 (is-Star!19982 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))))))

(declare-fun b!7565141 () Bool)

(assert (=> b!7565141 (= e!4504536 e!4504541)))

(assert (=> b!7565141 (= c!1395937 (is-Union!19982 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))))))

(declare-fun bm!693562 () Bool)

(declare-fun call!693568 () Bool)

(assert (=> bm!693562 (= call!693568 call!693566)))

(declare-fun bm!693563 () Bool)

(assert (=> bm!693563 (= call!693567 (validRegex!10410 (ite c!1395937 (regOne!40477 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))) (regOne!40476 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))))))))

(declare-fun b!7565142 () Bool)

(assert (=> b!7565142 (= e!4504539 call!693568)))

(declare-fun b!7565143 () Bool)

(declare-fun e!4504537 () Bool)

(assert (=> b!7565143 (= e!4504537 call!693568)))

(declare-fun d!2316101 () Bool)

(declare-fun res!3031102 () Bool)

(assert (=> d!2316101 (=> res!3031102 e!4504542)))

(assert (=> d!2316101 (= res!3031102 (is-ElementMatch!19982 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))))))

(assert (=> d!2316101 (= (validRegex!10410 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))) e!4504542)))

(declare-fun b!7565144 () Bool)

(assert (=> b!7565144 (= e!4504536 e!4504538)))

(declare-fun res!3031105 () Bool)

(assert (=> b!7565144 (= res!3031105 (not (nullable!8716 (reg!20311 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333)))))))))

(assert (=> b!7565144 (=> (not res!3031105) (not e!4504538))))

(declare-fun b!7565145 () Bool)

(declare-fun res!3031104 () Bool)

(declare-fun e!4504540 () Bool)

(assert (=> b!7565145 (=> res!3031104 e!4504540)))

(assert (=> b!7565145 (= res!3031104 (not (is-Concat!28827 (ite c!1395731 (reg!20311 r!24333) (ite c!1395730 (regTwo!40477 r!24333) (regTwo!40476 r!24333))))))))

(assert (=> b!7565145 (= e!4504541 e!4504540)))

(declare-fun b!7565146 () Bool)

(assert (=> b!7565146 (= e!4504540 e!4504537)))

(declare-fun res!3031101 () Bool)

(assert (=> b!7565146 (=> (not res!3031101) (not e!4504537))))

(assert (=> b!7565146 (= res!3031101 call!693567)))

(assert (= (and d!2316101 (not res!3031102)) b!7565140))

(assert (= (and b!7565140 c!1395938) b!7565144))

(assert (= (and b!7565140 (not c!1395938)) b!7565141))

(assert (= (and b!7565144 res!3031105) b!7565138))

(assert (= (and b!7565141 c!1395937) b!7565139))

(assert (= (and b!7565141 (not c!1395937)) b!7565145))

(assert (= (and b!7565139 res!3031103) b!7565142))

(assert (= (and b!7565145 (not res!3031104)) b!7565146))

(assert (= (and b!7565146 res!3031101) b!7565143))

(assert (= (or b!7565139 b!7565146) bm!693563))

(assert (= (or b!7565142 b!7565143) bm!693562))

(assert (= (or b!7565138 bm!693562) bm!693561))

(declare-fun m!8127758 () Bool)

(assert (=> bm!693561 m!8127758))

(declare-fun m!8127760 () Bool)

(assert (=> bm!693563 m!8127760))

(declare-fun m!8127762 () Bool)

(assert (=> b!7565144 m!8127762))

(assert (=> bm!693467 d!2316101))

(declare-fun d!2316103 () Bool)

(declare-fun lt!2649867 () Int)

(assert (=> d!2316103 (>= lt!2649867 0)))

(declare-fun e!4504543 () Int)

(assert (=> d!2316103 (= lt!2649867 e!4504543)))

(declare-fun c!1395939 () Bool)

(assert (=> d!2316103 (= c!1395939 (is-Nil!72741 lt!2649763))))

(assert (=> d!2316103 (= (size!42478 lt!2649763) lt!2649867)))

(declare-fun b!7565147 () Bool)

(assert (=> b!7565147 (= e!4504543 0)))

(declare-fun b!7565148 () Bool)

(assert (=> b!7565148 (= e!4504543 (+ 1 (size!42478 (t!387596 lt!2649763))))))

(assert (= (and d!2316103 c!1395939) b!7565147))

(assert (= (and d!2316103 (not c!1395939)) b!7565148))

(declare-fun m!8127764 () Bool)

(assert (=> b!7565148 m!8127764))

(assert (=> b!7564496 d!2316103))

(assert (=> b!7564496 d!2315811))

(assert (=> b!7564496 d!2316005))

(declare-fun d!2316105 () Bool)

(declare-fun e!4504545 () Bool)

(assert (=> d!2316105 e!4504545))

(declare-fun res!3031109 () Bool)

(assert (=> d!2316105 (=> res!3031109 e!4504545)))

(declare-fun lt!2649868 () Bool)

(assert (=> d!2316105 (= res!3031109 (not lt!2649868))))

(declare-fun e!4504544 () Bool)

(assert (=> d!2316105 (= lt!2649868 e!4504544)))

(declare-fun res!3031106 () Bool)

(assert (=> d!2316105 (=> res!3031106 e!4504544)))

(assert (=> d!2316105 (= res!3031106 (is-Nil!72741 (tail!15100 lt!2649592)))))

(assert (=> d!2316105 (= (isPrefix!6188 (tail!15100 lt!2649592) (tail!15100 input!7874)) lt!2649868)))

(declare-fun b!7565151 () Bool)

(declare-fun e!4504546 () Bool)

(assert (=> b!7565151 (= e!4504546 (isPrefix!6188 (tail!15100 (tail!15100 lt!2649592)) (tail!15100 (tail!15100 input!7874))))))

(declare-fun b!7565152 () Bool)

(assert (=> b!7565152 (= e!4504545 (>= (size!42478 (tail!15100 input!7874)) (size!42478 (tail!15100 lt!2649592))))))

(declare-fun b!7565149 () Bool)

(assert (=> b!7565149 (= e!4504544 e!4504546)))

(declare-fun res!3031108 () Bool)

(assert (=> b!7565149 (=> (not res!3031108) (not e!4504546))))

(assert (=> b!7565149 (= res!3031108 (not (is-Nil!72741 (tail!15100 input!7874))))))

(declare-fun b!7565150 () Bool)

(declare-fun res!3031107 () Bool)

(assert (=> b!7565150 (=> (not res!3031107) (not e!4504546))))

(assert (=> b!7565150 (= res!3031107 (= (head!15560 (tail!15100 lt!2649592)) (head!15560 (tail!15100 input!7874))))))

(assert (= (and d!2316105 (not res!3031106)) b!7565149))

(assert (= (and b!7565149 res!3031108) b!7565150))

(assert (= (and b!7565150 res!3031107) b!7565151))

(assert (= (and d!2316105 (not res!3031109)) b!7565152))

(assert (=> b!7565151 m!8127070))

(assert (=> b!7565151 m!8127432))

(assert (=> b!7565151 m!8126968))

(assert (=> b!7565151 m!8127592))

(assert (=> b!7565151 m!8127432))

(assert (=> b!7565151 m!8127592))

(declare-fun m!8127766 () Bool)

(assert (=> b!7565151 m!8127766))

(assert (=> b!7565152 m!8126968))

(assert (=> b!7565152 m!8127596))

(assert (=> b!7565152 m!8127070))

(assert (=> b!7565152 m!8127436))

(assert (=> b!7565150 m!8127070))

(assert (=> b!7565150 m!8127438))

(assert (=> b!7565150 m!8126968))

(assert (=> b!7565150 m!8127598))

(assert (=> b!7564470 d!2316105))

(assert (=> b!7564470 d!2315951))

(assert (=> b!7564470 d!2316029))

(declare-fun d!2316107 () Bool)

(declare-fun lt!2649869 () Int)

(assert (=> d!2316107 (>= lt!2649869 0)))

(declare-fun e!4504547 () Int)

(assert (=> d!2316107 (= lt!2649869 e!4504547)))

(declare-fun c!1395940 () Bool)

(assert (=> d!2316107 (= c!1395940 (is-Nil!72741 lt!2649726))))

(assert (=> d!2316107 (= (size!42478 lt!2649726) lt!2649869)))

(declare-fun b!7565153 () Bool)

(assert (=> b!7565153 (= e!4504547 0)))

(declare-fun b!7565154 () Bool)

(assert (=> b!7565154 (= e!4504547 (+ 1 (size!42478 (t!387596 lt!2649726))))))

(assert (= (and d!2316107 c!1395940) b!7565153))

(assert (= (and d!2316107 (not c!1395940)) b!7565154))

(declare-fun m!8127768 () Bool)

(assert (=> b!7565154 m!8127768))

(assert (=> b!7564359 d!2316107))

(assert (=> b!7564359 d!2315913))

(declare-fun d!2316109 () Bool)

(declare-fun lt!2649870 () Int)

(assert (=> d!2316109 (>= lt!2649870 0)))

(declare-fun e!4504548 () Int)

(assert (=> d!2316109 (= lt!2649870 e!4504548)))

(declare-fun c!1395941 () Bool)

(assert (=> d!2316109 (= c!1395941 (is-Nil!72741 lt!2649608))))

(assert (=> d!2316109 (= (size!42478 lt!2649608) lt!2649870)))

(declare-fun b!7565155 () Bool)

(assert (=> b!7565155 (= e!4504548 0)))

(declare-fun b!7565156 () Bool)

(assert (=> b!7565156 (= e!4504548 (+ 1 (size!42478 (t!387596 lt!2649608))))))

(assert (= (and d!2316109 c!1395941) b!7565155))

(assert (= (and d!2316109 (not c!1395941)) b!7565156))

(declare-fun m!8127770 () Bool)

(assert (=> b!7565156 m!8127770))

(assert (=> b!7564359 d!2316109))

(assert (=> bm!693470 d!2315931))

(declare-fun d!2316111 () Bool)

(declare-fun c!1395942 () Bool)

(assert (=> d!2316111 (= c!1395942 (is-Nil!72741 lt!2649740))))

(declare-fun e!4504549 () (Set C!40290))

(assert (=> d!2316111 (= (content!15403 lt!2649740) e!4504549)))

(declare-fun b!7565157 () Bool)

(assert (=> b!7565157 (= e!4504549 (as set.empty (Set C!40290)))))

(declare-fun b!7565158 () Bool)

(assert (=> b!7565158 (= e!4504549 (set.union (set.insert (h!79189 lt!2649740) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649740))))))

(assert (= (and d!2316111 c!1395942) b!7565157))

(assert (= (and d!2316111 (not c!1395942)) b!7565158))

(declare-fun m!8127772 () Bool)

(assert (=> b!7565158 m!8127772))

(declare-fun m!8127774 () Bool)

(assert (=> b!7565158 m!8127774))

(assert (=> d!2315771 d!2316111))

(declare-fun d!2316113 () Bool)

(declare-fun c!1395943 () Bool)

(assert (=> d!2316113 (= c!1395943 (is-Nil!72741 lt!2649592))))

(declare-fun e!4504550 () (Set C!40290))

(assert (=> d!2316113 (= (content!15403 lt!2649592) e!4504550)))

(declare-fun b!7565159 () Bool)

(assert (=> b!7565159 (= e!4504550 (as set.empty (Set C!40290)))))

(declare-fun b!7565160 () Bool)

(assert (=> b!7565160 (= e!4504550 (set.union (set.insert (h!79189 lt!2649592) (as set.empty (Set C!40290))) (content!15403 (t!387596 lt!2649592))))))

(assert (= (and d!2316113 c!1395943) b!7565159))

(assert (= (and d!2316113 (not c!1395943)) b!7565160))

(declare-fun m!8127776 () Bool)

(assert (=> b!7565160 m!8127776))

(assert (=> b!7565160 m!8127420))

(assert (=> d!2315771 d!2316113))

(assert (=> d!2315771 d!2315943))

(assert (=> d!2315725 d!2316055))

(assert (=> d!2315725 d!2315733))

(assert (=> d!2315749 d!2315801))

(declare-fun d!2316115 () Bool)

(assert (=> d!2316115 (= (++!17486 (++!17486 testedP!423 lt!2649594) lt!2649608) (++!17486 testedP!423 (++!17486 lt!2649594 lt!2649608)))))

(assert (=> d!2316115 true))

(declare-fun _$52!2490 () Unit!166898)

(assert (=> d!2316115 (= (choose!58503 testedP!423 lt!2649594 lt!2649608) _$52!2490)))

(declare-fun bs!1940454 () Bool)

(assert (= bs!1940454 d!2316115))

(assert (=> bs!1940454 m!8126676))

(assert (=> bs!1940454 m!8126676))

(assert (=> bs!1940454 m!8126964))

(assert (=> bs!1940454 m!8126632))

(assert (=> bs!1940454 m!8126632))

(assert (=> bs!1940454 m!8126962))

(assert (=> d!2315749 d!2316115))

(declare-fun b!7565164 () Bool)

(declare-fun e!4504551 () Bool)

(declare-fun lt!2649871 () List!72865)

(assert (=> b!7565164 (= e!4504551 (or (not (= lt!2649608 Nil!72741)) (= lt!2649871 (++!17486 testedP!423 lt!2649594))))))

(declare-fun d!2316117 () Bool)

(assert (=> d!2316117 e!4504551))

(declare-fun res!3031110 () Bool)

(assert (=> d!2316117 (=> (not res!3031110) (not e!4504551))))

(assert (=> d!2316117 (= res!3031110 (= (content!15403 lt!2649871) (set.union (content!15403 (++!17486 testedP!423 lt!2649594)) (content!15403 lt!2649608))))))

(declare-fun e!4504552 () List!72865)

(assert (=> d!2316117 (= lt!2649871 e!4504552)))

(declare-fun c!1395944 () Bool)

(assert (=> d!2316117 (= c!1395944 (is-Nil!72741 (++!17486 testedP!423 lt!2649594)))))

(assert (=> d!2316117 (= (++!17486 (++!17486 testedP!423 lt!2649594) lt!2649608) lt!2649871)))

(declare-fun b!7565163 () Bool)

(declare-fun res!3031111 () Bool)

(assert (=> b!7565163 (=> (not res!3031111) (not e!4504551))))

(assert (=> b!7565163 (= res!3031111 (= (size!42478 lt!2649871) (+ (size!42478 (++!17486 testedP!423 lt!2649594)) (size!42478 lt!2649608))))))

(declare-fun b!7565162 () Bool)

(assert (=> b!7565162 (= e!4504552 (Cons!72741 (h!79189 (++!17486 testedP!423 lt!2649594)) (++!17486 (t!387596 (++!17486 testedP!423 lt!2649594)) lt!2649608)))))

(declare-fun b!7565161 () Bool)

(assert (=> b!7565161 (= e!4504552 lt!2649608)))

(assert (= (and d!2316117 c!1395944) b!7565161))

(assert (= (and d!2316117 (not c!1395944)) b!7565162))

(assert (= (and d!2316117 res!3031110) b!7565163))

(assert (= (and b!7565163 res!3031111) b!7565164))

(declare-fun m!8127778 () Bool)

(assert (=> d!2316117 m!8127778))

(assert (=> d!2316117 m!8126676))

(declare-fun m!8127780 () Bool)

(assert (=> d!2316117 m!8127780))

(assert (=> d!2316117 m!8126950))

(declare-fun m!8127782 () Bool)

(assert (=> b!7565163 m!8127782))

(assert (=> b!7565163 m!8126676))

(declare-fun m!8127784 () Bool)

(assert (=> b!7565163 m!8127784))

(assert (=> b!7565163 m!8126956))

(declare-fun m!8127786 () Bool)

(assert (=> b!7565162 m!8127786))

(assert (=> d!2315749 d!2316117))

(declare-fun e!4504553 () Bool)

(declare-fun lt!2649872 () List!72865)

(declare-fun b!7565168 () Bool)

(assert (=> b!7565168 (= e!4504553 (or (not (= (++!17486 lt!2649594 lt!2649608) Nil!72741)) (= lt!2649872 testedP!423)))))

(declare-fun d!2316119 () Bool)

(assert (=> d!2316119 e!4504553))

(declare-fun res!3031112 () Bool)

(assert (=> d!2316119 (=> (not res!3031112) (not e!4504553))))

(assert (=> d!2316119 (= res!3031112 (= (content!15403 lt!2649872) (set.union (content!15403 testedP!423) (content!15403 (++!17486 lt!2649594 lt!2649608)))))))

(declare-fun e!4504554 () List!72865)

(assert (=> d!2316119 (= lt!2649872 e!4504554)))

(declare-fun c!1395945 () Bool)

(assert (=> d!2316119 (= c!1395945 (is-Nil!72741 testedP!423))))

(assert (=> d!2316119 (= (++!17486 testedP!423 (++!17486 lt!2649594 lt!2649608)) lt!2649872)))

(declare-fun b!7565167 () Bool)

(declare-fun res!3031113 () Bool)

(assert (=> b!7565167 (=> (not res!3031113) (not e!4504553))))

(assert (=> b!7565167 (= res!3031113 (= (size!42478 lt!2649872) (+ (size!42478 testedP!423) (size!42478 (++!17486 lt!2649594 lt!2649608)))))))

(declare-fun b!7565166 () Bool)

(assert (=> b!7565166 (= e!4504554 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) (++!17486 lt!2649594 lt!2649608))))))

(declare-fun b!7565165 () Bool)

(assert (=> b!7565165 (= e!4504554 (++!17486 lt!2649594 lt!2649608))))

(assert (= (and d!2316119 c!1395945) b!7565165))

(assert (= (and d!2316119 (not c!1395945)) b!7565166))

(assert (= (and d!2316119 res!3031112) b!7565167))

(assert (= (and b!7565167 res!3031113) b!7565168))

(declare-fun m!8127788 () Bool)

(assert (=> d!2316119 m!8127788))

(assert (=> d!2316119 m!8126852))

(assert (=> d!2316119 m!8126632))

(declare-fun m!8127790 () Bool)

(assert (=> d!2316119 m!8127790))

(declare-fun m!8127792 () Bool)

(assert (=> b!7565167 m!8127792))

(assert (=> b!7565167 m!8126610))

(assert (=> b!7565167 m!8126632))

(declare-fun m!8127794 () Bool)

(assert (=> b!7565167 m!8127794))

(assert (=> b!7565166 m!8126632))

(declare-fun m!8127796 () Bool)

(assert (=> b!7565166 m!8127796))

(assert (=> d!2315749 d!2316119))

(assert (=> d!2315749 d!2315747))

(declare-fun e!4504555 () Bool)

(declare-fun b!7565172 () Bool)

(declare-fun lt!2649873 () List!72865)

(assert (=> b!7565172 (= e!4504555 (or (not (= lt!2649589 Nil!72741)) (= lt!2649873 (t!387596 lt!2649587))))))

(declare-fun d!2316121 () Bool)

(assert (=> d!2316121 e!4504555))

(declare-fun res!3031114 () Bool)

(assert (=> d!2316121 (=> (not res!3031114) (not e!4504555))))

(assert (=> d!2316121 (= res!3031114 (= (content!15403 lt!2649873) (set.union (content!15403 (t!387596 lt!2649587)) (content!15403 lt!2649589))))))

(declare-fun e!4504556 () List!72865)

(assert (=> d!2316121 (= lt!2649873 e!4504556)))

(declare-fun c!1395946 () Bool)

(assert (=> d!2316121 (= c!1395946 (is-Nil!72741 (t!387596 lt!2649587)))))

(assert (=> d!2316121 (= (++!17486 (t!387596 lt!2649587) lt!2649589) lt!2649873)))

(declare-fun b!7565171 () Bool)

(declare-fun res!3031115 () Bool)

(assert (=> b!7565171 (=> (not res!3031115) (not e!4504555))))

(assert (=> b!7565171 (= res!3031115 (= (size!42478 lt!2649873) (+ (size!42478 (t!387596 lt!2649587)) (size!42478 lt!2649589))))))

(declare-fun b!7565170 () Bool)

(assert (=> b!7565170 (= e!4504556 (Cons!72741 (h!79189 (t!387596 lt!2649587)) (++!17486 (t!387596 (t!387596 lt!2649587)) lt!2649589)))))

(declare-fun b!7565169 () Bool)

(assert (=> b!7565169 (= e!4504556 lt!2649589)))

(assert (= (and d!2316121 c!1395946) b!7565169))

(assert (= (and d!2316121 (not c!1395946)) b!7565170))

(assert (= (and d!2316121 res!3031114) b!7565171))

(assert (= (and b!7565171 res!3031115) b!7565172))

(declare-fun m!8127798 () Bool)

(assert (=> d!2316121 m!8127798))

(assert (=> d!2316121 m!8127564))

(assert (=> d!2316121 m!8126840))

(declare-fun m!8127800 () Bool)

(assert (=> b!7565171 m!8127800))

(assert (=> b!7565171 m!8127730))

(assert (=> b!7565171 m!8126846))

(declare-fun m!8127802 () Bool)

(assert (=> b!7565170 m!8127802))

(assert (=> b!7564296 d!2316121))

(declare-fun b!7565187 () Bool)

(declare-fun e!4504573 () Bool)

(declare-fun call!693573 () Bool)

(assert (=> b!7565187 (= e!4504573 call!693573)))

(declare-fun b!7565188 () Bool)

(declare-fun e!4504574 () Bool)

(declare-fun e!4504569 () Bool)

(assert (=> b!7565188 (= e!4504574 e!4504569)))

(declare-fun res!3031127 () Bool)

(assert (=> b!7565188 (= res!3031127 call!693573)))

(assert (=> b!7565188 (=> (not res!3031127) (not e!4504569))))

(declare-fun b!7565189 () Bool)

(declare-fun call!693574 () Bool)

(assert (=> b!7565189 (= e!4504569 call!693574)))

(declare-fun d!2316123 () Bool)

(declare-fun lt!2649876 () Bool)

(declare-datatypes ((Option!17267 0))(
  ( (None!17266) (Some!17266 (v!54401 List!72865)) )
))
(declare-fun isEmpty!41420 (Option!17267) Bool)

(declare-fun getLanguageWitness!1110 (Regex!19982) Option!17267)

(assert (=> d!2316123 (= lt!2649876 (isEmpty!41420 (getLanguageWitness!1110 r!24333)))))

(declare-fun e!4504570 () Bool)

(assert (=> d!2316123 (= lt!2649876 e!4504570)))

(declare-fun res!3031130 () Bool)

(assert (=> d!2316123 (=> (not res!3031130) (not e!4504570))))

(assert (=> d!2316123 (= res!3031130 (not (is-EmptyExpr!19982 r!24333)))))

(assert (=> d!2316123 (= (lostCauseFct!469 r!24333) lt!2649876)))

(declare-fun b!7565190 () Bool)

(declare-fun e!4504571 () Bool)

(assert (=> b!7565190 (= e!4504570 e!4504571)))

(declare-fun res!3031126 () Bool)

(assert (=> b!7565190 (=> res!3031126 e!4504571)))

(assert (=> b!7565190 (= res!3031126 (is-EmptyLang!19982 r!24333))))

(declare-fun bm!693568 () Bool)

(declare-fun c!1395949 () Bool)

(assert (=> bm!693568 (= call!693573 (lostCause!1770 (ite c!1395949 (regOne!40477 r!24333) (regTwo!40476 r!24333))))))

(declare-fun b!7565191 () Bool)

(assert (=> b!7565191 (= e!4504574 e!4504573)))

(declare-fun res!3031128 () Bool)

(assert (=> b!7565191 (= res!3031128 call!693574)))

(assert (=> b!7565191 (=> res!3031128 e!4504573)))

(declare-fun b!7565192 () Bool)

(declare-fun e!4504572 () Bool)

(assert (=> b!7565192 (= e!4504572 e!4504574)))

(assert (=> b!7565192 (= c!1395949 (is-Union!19982 r!24333))))

(declare-fun bm!693569 () Bool)

(assert (=> bm!693569 (= call!693574 (lostCause!1770 (ite c!1395949 (regTwo!40477 r!24333) (regOne!40476 r!24333))))))

(declare-fun b!7565193 () Bool)

(assert (=> b!7565193 (= e!4504571 e!4504572)))

(declare-fun res!3031129 () Bool)

(assert (=> b!7565193 (=> (not res!3031129) (not e!4504572))))

(assert (=> b!7565193 (= res!3031129 (and (not (is-ElementMatch!19982 r!24333)) (not (is-Star!19982 r!24333))))))

(assert (= (and d!2316123 res!3031130) b!7565190))

(assert (= (and b!7565190 (not res!3031126)) b!7565193))

(assert (= (and b!7565193 res!3031129) b!7565192))

(assert (= (and b!7565192 c!1395949) b!7565188))

(assert (= (and b!7565192 (not c!1395949)) b!7565191))

(assert (= (and b!7565188 res!3031127) b!7565189))

(assert (= (and b!7565191 (not res!3031128)) b!7565187))

(assert (= (or b!7565188 b!7565187) bm!693568))

(assert (= (or b!7565189 b!7565191) bm!693569))

(declare-fun m!8127804 () Bool)

(assert (=> d!2316123 m!8127804))

(assert (=> d!2316123 m!8127804))

(declare-fun m!8127806 () Bool)

(assert (=> d!2316123 m!8127806))

(declare-fun m!8127808 () Bool)

(assert (=> bm!693568 m!8127808))

(declare-fun m!8127810 () Bool)

(assert (=> bm!693569 m!8127810))

(assert (=> d!2315723 d!2316123))

(declare-fun lt!2649877 () List!72865)

(declare-fun e!4504575 () Bool)

(declare-fun b!7565197 () Bool)

(assert (=> b!7565197 (= e!4504575 (or (not (= lt!2649606 Nil!72741)) (= lt!2649877 (t!387596 testedP!423))))))

(declare-fun d!2316125 () Bool)

(assert (=> d!2316125 e!4504575))

(declare-fun res!3031131 () Bool)

(assert (=> d!2316125 (=> (not res!3031131) (not e!4504575))))

(assert (=> d!2316125 (= res!3031131 (= (content!15403 lt!2649877) (set.union (content!15403 (t!387596 testedP!423)) (content!15403 lt!2649606))))))

(declare-fun e!4504576 () List!72865)

(assert (=> d!2316125 (= lt!2649877 e!4504576)))

(declare-fun c!1395950 () Bool)

(assert (=> d!2316125 (= c!1395950 (is-Nil!72741 (t!387596 testedP!423)))))

(assert (=> d!2316125 (= (++!17486 (t!387596 testedP!423) lt!2649606) lt!2649877)))

(declare-fun b!7565196 () Bool)

(declare-fun res!3031132 () Bool)

(assert (=> b!7565196 (=> (not res!3031132) (not e!4504575))))

(assert (=> b!7565196 (= res!3031132 (= (size!42478 lt!2649877) (+ (size!42478 (t!387596 testedP!423)) (size!42478 lt!2649606))))))

(declare-fun b!7565195 () Bool)

(assert (=> b!7565195 (= e!4504576 (Cons!72741 (h!79189 (t!387596 testedP!423)) (++!17486 (t!387596 (t!387596 testedP!423)) lt!2649606)))))

(declare-fun b!7565194 () Bool)

(assert (=> b!7565194 (= e!4504576 lt!2649606)))

(assert (= (and d!2316125 c!1395950) b!7565194))

(assert (= (and d!2316125 (not c!1395950)) b!7565195))

(assert (= (and d!2316125 res!3031131) b!7565196))

(assert (= (and b!7565196 res!3031132) b!7565197))

(declare-fun m!8127812 () Bool)

(assert (=> d!2316125 m!8127812))

(assert (=> d!2316125 m!8127462))

(assert (=> d!2316125 m!8126876))

(declare-fun m!8127814 () Bool)

(assert (=> b!7565196 m!8127814))

(assert (=> b!7565196 m!8127128))

(assert (=> b!7565196 m!8126880))

(declare-fun m!8127816 () Bool)

(assert (=> b!7565195 m!8127816))

(assert (=> b!7564318 d!2316125))

(declare-fun d!2316127 () Bool)

(declare-fun lt!2649878 () Regex!19982)

(assert (=> d!2316127 (validRegex!10410 lt!2649878)))

(declare-fun e!4504577 () Regex!19982)

(assert (=> d!2316127 (= lt!2649878 e!4504577)))

(declare-fun c!1395951 () Bool)

(assert (=> d!2316127 (= c!1395951 (is-Cons!72741 (++!17486 testedP!423 (Cons!72741 lt!2649600 Nil!72741))))))

(assert (=> d!2316127 (validRegex!10410 baseR!101)))

(assert (=> d!2316127 (= (derivative!512 baseR!101 (++!17486 testedP!423 (Cons!72741 lt!2649600 Nil!72741))) lt!2649878)))

(declare-fun b!7565198 () Bool)

(assert (=> b!7565198 (= e!4504577 (derivative!512 (derivativeStep!5760 baseR!101 (h!79189 (++!17486 testedP!423 (Cons!72741 lt!2649600 Nil!72741)))) (t!387596 (++!17486 testedP!423 (Cons!72741 lt!2649600 Nil!72741)))))))

(declare-fun b!7565199 () Bool)

(assert (=> b!7565199 (= e!4504577 baseR!101)))

(assert (= (and d!2316127 c!1395951) b!7565198))

(assert (= (and d!2316127 (not c!1395951)) b!7565199))

(declare-fun m!8127818 () Bool)

(assert (=> d!2316127 m!8127818))

(assert (=> d!2316127 m!8126698))

(declare-fun m!8127820 () Bool)

(assert (=> b!7565198 m!8127820))

(assert (=> b!7565198 m!8127820))

(declare-fun m!8127822 () Bool)

(assert (=> b!7565198 m!8127822))

(assert (=> d!2315791 d!2316127))

(assert (=> d!2315791 d!2315779))

(declare-fun b!7565203 () Bool)

(declare-fun lt!2649879 () List!72865)

(declare-fun e!4504578 () Bool)

(assert (=> b!7565203 (= e!4504578 (or (not (= (Cons!72741 lt!2649600 Nil!72741) Nil!72741)) (= lt!2649879 testedP!423)))))

(declare-fun d!2316129 () Bool)

(assert (=> d!2316129 e!4504578))

(declare-fun res!3031133 () Bool)

(assert (=> d!2316129 (=> (not res!3031133) (not e!4504578))))

(assert (=> d!2316129 (= res!3031133 (= (content!15403 lt!2649879) (set.union (content!15403 testedP!423) (content!15403 (Cons!72741 lt!2649600 Nil!72741)))))))

(declare-fun e!4504579 () List!72865)

(assert (=> d!2316129 (= lt!2649879 e!4504579)))

(declare-fun c!1395952 () Bool)

(assert (=> d!2316129 (= c!1395952 (is-Nil!72741 testedP!423))))

(assert (=> d!2316129 (= (++!17486 testedP!423 (Cons!72741 lt!2649600 Nil!72741)) lt!2649879)))

(declare-fun b!7565202 () Bool)

(declare-fun res!3031134 () Bool)

(assert (=> b!7565202 (=> (not res!3031134) (not e!4504578))))

(assert (=> b!7565202 (= res!3031134 (= (size!42478 lt!2649879) (+ (size!42478 testedP!423) (size!42478 (Cons!72741 lt!2649600 Nil!72741)))))))

(declare-fun b!7565201 () Bool)

(assert (=> b!7565201 (= e!4504579 (Cons!72741 (h!79189 testedP!423) (++!17486 (t!387596 testedP!423) (Cons!72741 lt!2649600 Nil!72741))))))

(declare-fun b!7565200 () Bool)

(assert (=> b!7565200 (= e!4504579 (Cons!72741 lt!2649600 Nil!72741))))

(assert (= (and d!2316129 c!1395952) b!7565200))

(assert (= (and d!2316129 (not c!1395952)) b!7565201))

(assert (= (and d!2316129 res!3031133) b!7565202))

(assert (= (and b!7565202 res!3031134) b!7565203))

(declare-fun m!8127824 () Bool)

(assert (=> d!2316129 m!8127824))

(assert (=> d!2316129 m!8126852))

(declare-fun m!8127826 () Bool)

(assert (=> d!2316129 m!8127826))

(declare-fun m!8127828 () Bool)

(assert (=> b!7565202 m!8127828))

(assert (=> b!7565202 m!8126610))

(declare-fun m!8127830 () Bool)

(assert (=> b!7565202 m!8127830))

(declare-fun m!8127832 () Bool)

(assert (=> b!7565201 m!8127832))

(assert (=> d!2315791 d!2316129))

(assert (=> d!2315791 d!2315733))

(declare-fun d!2316131 () Bool)

(assert (=> d!2316131 (= (derivative!512 baseR!101 (++!17486 testedP!423 (Cons!72741 lt!2649600 Nil!72741))) (derivativeStep!5760 r!24333 lt!2649600))))

(assert (=> d!2316131 true))

(declare-fun _$109!48 () Unit!166898)

(assert (=> d!2316131 (= (choose!58505 baseR!101 r!24333 testedP!423 lt!2649600) _$109!48)))

(declare-fun bs!1940455 () Bool)

(assert (= bs!1940455 d!2316131))

(assert (=> bs!1940455 m!8127076))

(assert (=> bs!1940455 m!8127076))

(assert (=> bs!1940455 m!8127080))

(assert (=> bs!1940455 m!8126666))

(assert (=> d!2315791 d!2316131))

(declare-fun d!2316133 () Bool)

(assert (=> d!2316133 (= (nullable!8716 (reg!20311 lt!2649591)) (nullableFct!3477 (reg!20311 lt!2649591)))))

(declare-fun bs!1940456 () Bool)

(assert (= bs!1940456 d!2316133))

(declare-fun m!8127834 () Bool)

(assert (=> bs!1940456 m!8127834))

(assert (=> b!7564188 d!2316133))

(assert (=> d!2315793 d!2315799))

(declare-fun d!2316135 () Bool)

(assert (=> d!2316135 (isPrefix!6188 lt!2649592 knownP!30)))

(assert (=> d!2316135 true))

(declare-fun _$69!422 () Unit!166898)

(assert (=> d!2316135 (= (choose!58502 knownP!30 lt!2649592 input!7874) _$69!422)))

(declare-fun bs!1940457 () Bool)

(assert (= bs!1940457 d!2316135))

(assert (=> bs!1940457 m!8126664))

(assert (=> d!2315793 d!2316135))

(assert (=> d!2315793 d!2315755))

(declare-fun d!2316137 () Bool)

(declare-fun lt!2649880 () Int)

(assert (=> d!2316137 (>= lt!2649880 0)))

(declare-fun e!4504580 () Int)

(assert (=> d!2316137 (= lt!2649880 e!4504580)))

(declare-fun c!1395954 () Bool)

(assert (=> d!2316137 (= c!1395954 (is-Nil!72741 lt!2649740))))

(assert (=> d!2316137 (= (size!42478 lt!2649740) lt!2649880)))

(declare-fun b!7565204 () Bool)

(assert (=> b!7565204 (= e!4504580 0)))

(declare-fun b!7565205 () Bool)

(assert (=> b!7565205 (= e!4504580 (+ 1 (size!42478 (t!387596 lt!2649740))))))

(assert (= (and d!2316137 c!1395954) b!7565204))

(assert (= (and d!2316137 (not c!1395954)) b!7565205))

(declare-fun m!8127836 () Bool)

(assert (=> b!7565205 m!8127836))

(assert (=> b!7564408 d!2316137))

(assert (=> b!7564408 d!2315737))

(assert (=> b!7564408 d!2316109))

(assert (=> b!7564372 d!2315897))

(assert (=> b!7564372 d!2315891))

(assert (=> b!7564374 d!2315717))

(assert (=> b!7564374 d!2315809))

(assert (=> bm!693453 d!2315983))

(declare-fun b!7565208 () Bool)

(declare-fun e!4504581 () Bool)

(declare-fun tp!2203109 () Bool)

(assert (=> b!7565208 (= e!4504581 tp!2203109)))

(declare-fun b!7565206 () Bool)

(assert (=> b!7565206 (= e!4504581 tp_is_empty!50319)))

(assert (=> b!7564521 (= tp!2202991 e!4504581)))

(declare-fun b!7565207 () Bool)

(declare-fun tp!2203110 () Bool)

(declare-fun tp!2203107 () Bool)

(assert (=> b!7565207 (= e!4504581 (and tp!2203110 tp!2203107))))

(declare-fun b!7565209 () Bool)

(declare-fun tp!2203106 () Bool)

(declare-fun tp!2203108 () Bool)

(assert (=> b!7565209 (= e!4504581 (and tp!2203106 tp!2203108))))

(assert (= (and b!7564521 (is-ElementMatch!19982 (regOne!40477 (regOne!40476 baseR!101)))) b!7565206))

(assert (= (and b!7564521 (is-Concat!28827 (regOne!40477 (regOne!40476 baseR!101)))) b!7565207))

(assert (= (and b!7564521 (is-Star!19982 (regOne!40477 (regOne!40476 baseR!101)))) b!7565208))

(assert (= (and b!7564521 (is-Union!19982 (regOne!40477 (regOne!40476 baseR!101)))) b!7565209))

(declare-fun b!7565212 () Bool)

(declare-fun e!4504582 () Bool)

(declare-fun tp!2203114 () Bool)

(assert (=> b!7565212 (= e!4504582 tp!2203114)))

(declare-fun b!7565210 () Bool)

(assert (=> b!7565210 (= e!4504582 tp_is_empty!50319)))

(assert (=> b!7564521 (= tp!2202993 e!4504582)))

(declare-fun b!7565211 () Bool)

(declare-fun tp!2203115 () Bool)

(declare-fun tp!2203112 () Bool)

(assert (=> b!7565211 (= e!4504582 (and tp!2203115 tp!2203112))))

(declare-fun b!7565213 () Bool)

(declare-fun tp!2203111 () Bool)

(declare-fun tp!2203113 () Bool)

(assert (=> b!7565213 (= e!4504582 (and tp!2203111 tp!2203113))))

(assert (= (and b!7564521 (is-ElementMatch!19982 (regTwo!40477 (regOne!40476 baseR!101)))) b!7565210))

(assert (= (and b!7564521 (is-Concat!28827 (regTwo!40477 (regOne!40476 baseR!101)))) b!7565211))

(assert (= (and b!7564521 (is-Star!19982 (regTwo!40477 (regOne!40476 baseR!101)))) b!7565212))

(assert (= (and b!7564521 (is-Union!19982 (regTwo!40477 (regOne!40476 baseR!101)))) b!7565213))

(declare-fun b!7565214 () Bool)

(declare-fun e!4504583 () Bool)

(declare-fun tp!2203116 () Bool)

(assert (=> b!7565214 (= e!4504583 (and tp_is_empty!50319 tp!2203116))))

(assert (=> b!7564530 (= tp!2203003 e!4504583)))

(assert (= (and b!7564530 (is-Cons!72741 (t!387596 (t!387596 input!7874)))) b!7565214))

(declare-fun b!7565217 () Bool)

(declare-fun e!4504584 () Bool)

(declare-fun tp!2203120 () Bool)

(assert (=> b!7565217 (= e!4504584 tp!2203120)))

(declare-fun b!7565215 () Bool)

(assert (=> b!7565215 (= e!4504584 tp_is_empty!50319)))

(assert (=> b!7564537 (= tp!2203014 e!4504584)))

(declare-fun b!7565216 () Bool)

(declare-fun tp!2203121 () Bool)

(declare-fun tp!2203118 () Bool)

(assert (=> b!7565216 (= e!4504584 (and tp!2203121 tp!2203118))))

(declare-fun b!7565218 () Bool)

(declare-fun tp!2203117 () Bool)

(declare-fun tp!2203119 () Bool)

(assert (=> b!7565218 (= e!4504584 (and tp!2203117 tp!2203119))))

(assert (= (and b!7564537 (is-ElementMatch!19982 (regOne!40476 (regOne!40476 r!24333)))) b!7565215))

(assert (= (and b!7564537 (is-Concat!28827 (regOne!40476 (regOne!40476 r!24333)))) b!7565216))

(assert (= (and b!7564537 (is-Star!19982 (regOne!40476 (regOne!40476 r!24333)))) b!7565217))

(assert (= (and b!7564537 (is-Union!19982 (regOne!40476 (regOne!40476 r!24333)))) b!7565218))

(declare-fun b!7565221 () Bool)

(declare-fun e!4504585 () Bool)

(declare-fun tp!2203125 () Bool)

(assert (=> b!7565221 (= e!4504585 tp!2203125)))

(declare-fun b!7565219 () Bool)

(assert (=> b!7565219 (= e!4504585 tp_is_empty!50319)))

(assert (=> b!7564537 (= tp!2203011 e!4504585)))

(declare-fun b!7565220 () Bool)

(declare-fun tp!2203126 () Bool)

(declare-fun tp!2203123 () Bool)

(assert (=> b!7565220 (= e!4504585 (and tp!2203126 tp!2203123))))

(declare-fun b!7565222 () Bool)

(declare-fun tp!2203122 () Bool)

(declare-fun tp!2203124 () Bool)

(assert (=> b!7565222 (= e!4504585 (and tp!2203122 tp!2203124))))

(assert (= (and b!7564537 (is-ElementMatch!19982 (regTwo!40476 (regOne!40476 r!24333)))) b!7565219))

(assert (= (and b!7564537 (is-Concat!28827 (regTwo!40476 (regOne!40476 r!24333)))) b!7565220))

(assert (= (and b!7564537 (is-Star!19982 (regTwo!40476 (regOne!40476 r!24333)))) b!7565221))

(assert (= (and b!7564537 (is-Union!19982 (regTwo!40476 (regOne!40476 r!24333)))) b!7565222))

(declare-fun b!7565225 () Bool)

(declare-fun e!4504586 () Bool)

(declare-fun tp!2203130 () Bool)

(assert (=> b!7565225 (= e!4504586 tp!2203130)))

(declare-fun b!7565223 () Bool)

(assert (=> b!7565223 (= e!4504586 tp_is_empty!50319)))

(assert (=> b!7564538 (= tp!2203013 e!4504586)))

(declare-fun b!7565224 () Bool)

(declare-fun tp!2203131 () Bool)

(declare-fun tp!2203128 () Bool)

(assert (=> b!7565224 (= e!4504586 (and tp!2203131 tp!2203128))))

(declare-fun b!7565226 () Bool)

(declare-fun tp!2203127 () Bool)

(declare-fun tp!2203129 () Bool)

(assert (=> b!7565226 (= e!4504586 (and tp!2203127 tp!2203129))))

(assert (= (and b!7564538 (is-ElementMatch!19982 (reg!20311 (regOne!40476 r!24333)))) b!7565223))

(assert (= (and b!7564538 (is-Concat!28827 (reg!20311 (regOne!40476 r!24333)))) b!7565224))

(assert (= (and b!7564538 (is-Star!19982 (reg!20311 (regOne!40476 r!24333)))) b!7565225))

(assert (= (and b!7564538 (is-Union!19982 (reg!20311 (regOne!40476 r!24333)))) b!7565226))

(declare-fun b!7565229 () Bool)

(declare-fun e!4504587 () Bool)

(declare-fun tp!2203135 () Bool)

(assert (=> b!7565229 (= e!4504587 tp!2203135)))

(declare-fun b!7565227 () Bool)

(assert (=> b!7565227 (= e!4504587 tp_is_empty!50319)))

(assert (=> b!7564552 (= tp!2203026 e!4504587)))

(declare-fun b!7565228 () Bool)

(declare-fun tp!2203136 () Bool)

(declare-fun tp!2203133 () Bool)

(assert (=> b!7565228 (= e!4504587 (and tp!2203136 tp!2203133))))

(declare-fun b!7565230 () Bool)

(declare-fun tp!2203132 () Bool)

(declare-fun tp!2203134 () Bool)

(assert (=> b!7565230 (= e!4504587 (and tp!2203132 tp!2203134))))

(assert (= (and b!7564552 (is-ElementMatch!19982 (regOne!40477 (regTwo!40477 baseR!101)))) b!7565227))

(assert (= (and b!7564552 (is-Concat!28827 (regOne!40477 (regTwo!40477 baseR!101)))) b!7565228))

(assert (= (and b!7564552 (is-Star!19982 (regOne!40477 (regTwo!40477 baseR!101)))) b!7565229))

(assert (= (and b!7564552 (is-Union!19982 (regOne!40477 (regTwo!40477 baseR!101)))) b!7565230))

(declare-fun b!7565233 () Bool)

(declare-fun e!4504588 () Bool)

(declare-fun tp!2203140 () Bool)

(assert (=> b!7565233 (= e!4504588 tp!2203140)))

(declare-fun b!7565231 () Bool)

(assert (=> b!7565231 (= e!4504588 tp_is_empty!50319)))

(assert (=> b!7564552 (= tp!2203028 e!4504588)))

(declare-fun b!7565232 () Bool)

(declare-fun tp!2203141 () Bool)

(declare-fun tp!2203138 () Bool)

(assert (=> b!7565232 (= e!4504588 (and tp!2203141 tp!2203138))))

(declare-fun b!7565234 () Bool)

(declare-fun tp!2203137 () Bool)

(declare-fun tp!2203139 () Bool)

(assert (=> b!7565234 (= e!4504588 (and tp!2203137 tp!2203139))))

(assert (= (and b!7564552 (is-ElementMatch!19982 (regTwo!40477 (regTwo!40477 baseR!101)))) b!7565231))

(assert (= (and b!7564552 (is-Concat!28827 (regTwo!40477 (regTwo!40477 baseR!101)))) b!7565232))

(assert (= (and b!7564552 (is-Star!19982 (regTwo!40477 (regTwo!40477 baseR!101)))) b!7565233))

(assert (= (and b!7564552 (is-Union!19982 (regTwo!40477 (regTwo!40477 baseR!101)))) b!7565234))

(declare-fun b!7565237 () Bool)

(declare-fun e!4504589 () Bool)

(declare-fun tp!2203145 () Bool)

(assert (=> b!7565237 (= e!4504589 tp!2203145)))

(declare-fun b!7565235 () Bool)

(assert (=> b!7565235 (= e!4504589 tp_is_empty!50319)))

(assert (=> b!7564535 (= tp!2203005 e!4504589)))

(declare-fun b!7565236 () Bool)

(declare-fun tp!2203146 () Bool)

(declare-fun tp!2203143 () Bool)

(assert (=> b!7565236 (= e!4504589 (and tp!2203146 tp!2203143))))

(declare-fun b!7565238 () Bool)

(declare-fun tp!2203142 () Bool)

(declare-fun tp!2203144 () Bool)

(assert (=> b!7565238 (= e!4504589 (and tp!2203142 tp!2203144))))

(assert (= (and b!7564535 (is-ElementMatch!19982 (regOne!40477 (reg!20311 baseR!101)))) b!7565235))

(assert (= (and b!7564535 (is-Concat!28827 (regOne!40477 (reg!20311 baseR!101)))) b!7565236))

(assert (= (and b!7564535 (is-Star!19982 (regOne!40477 (reg!20311 baseR!101)))) b!7565237))

(assert (= (and b!7564535 (is-Union!19982 (regOne!40477 (reg!20311 baseR!101)))) b!7565238))

(declare-fun b!7565241 () Bool)

(declare-fun e!4504590 () Bool)

(declare-fun tp!2203150 () Bool)

(assert (=> b!7565241 (= e!4504590 tp!2203150)))

(declare-fun b!7565239 () Bool)

(assert (=> b!7565239 (= e!4504590 tp_is_empty!50319)))

(assert (=> b!7564535 (= tp!2203007 e!4504590)))

(declare-fun b!7565240 () Bool)

(declare-fun tp!2203151 () Bool)

(declare-fun tp!2203148 () Bool)

(assert (=> b!7565240 (= e!4504590 (and tp!2203151 tp!2203148))))

(declare-fun b!7565242 () Bool)

(declare-fun tp!2203147 () Bool)

(declare-fun tp!2203149 () Bool)

(assert (=> b!7565242 (= e!4504590 (and tp!2203147 tp!2203149))))

(assert (= (and b!7564535 (is-ElementMatch!19982 (regTwo!40477 (reg!20311 baseR!101)))) b!7565239))

(assert (= (and b!7564535 (is-Concat!28827 (regTwo!40477 (reg!20311 baseR!101)))) b!7565240))

(assert (= (and b!7564535 (is-Star!19982 (regTwo!40477 (reg!20311 baseR!101)))) b!7565241))

(assert (= (and b!7564535 (is-Union!19982 (regTwo!40477 (reg!20311 baseR!101)))) b!7565242))

(declare-fun b!7565245 () Bool)

(declare-fun e!4504591 () Bool)

(declare-fun tp!2203155 () Bool)

(assert (=> b!7565245 (= e!4504591 tp!2203155)))

(declare-fun b!7565243 () Bool)

(assert (=> b!7565243 (= e!4504591 tp_is_empty!50319)))

(assert (=> b!7564534 (= tp!2203008 e!4504591)))

(declare-fun b!7565244 () Bool)

(declare-fun tp!2203156 () Bool)

(declare-fun tp!2203153 () Bool)

(assert (=> b!7565244 (= e!4504591 (and tp!2203156 tp!2203153))))

(declare-fun b!7565246 () Bool)

(declare-fun tp!2203152 () Bool)

(declare-fun tp!2203154 () Bool)

(assert (=> b!7565246 (= e!4504591 (and tp!2203152 tp!2203154))))

(assert (= (and b!7564534 (is-ElementMatch!19982 (reg!20311 (reg!20311 baseR!101)))) b!7565243))

(assert (= (and b!7564534 (is-Concat!28827 (reg!20311 (reg!20311 baseR!101)))) b!7565244))

(assert (= (and b!7564534 (is-Star!19982 (reg!20311 (reg!20311 baseR!101)))) b!7565245))

(assert (= (and b!7564534 (is-Union!19982 (reg!20311 (reg!20311 baseR!101)))) b!7565246))

(declare-fun b!7565249 () Bool)

(declare-fun e!4504592 () Bool)

(declare-fun tp!2203160 () Bool)

(assert (=> b!7565249 (= e!4504592 tp!2203160)))

(declare-fun b!7565247 () Bool)

(assert (=> b!7565247 (= e!4504592 tp_is_empty!50319)))

(assert (=> b!7564543 (= tp!2203015 e!4504592)))

(declare-fun b!7565248 () Bool)

(declare-fun tp!2203161 () Bool)

(declare-fun tp!2203158 () Bool)

(assert (=> b!7565248 (= e!4504592 (and tp!2203161 tp!2203158))))

(declare-fun b!7565250 () Bool)

(declare-fun tp!2203157 () Bool)

(declare-fun tp!2203159 () Bool)

(assert (=> b!7565250 (= e!4504592 (and tp!2203157 tp!2203159))))

(assert (= (and b!7564543 (is-ElementMatch!19982 (regOne!40477 (regTwo!40476 r!24333)))) b!7565247))

(assert (= (and b!7564543 (is-Concat!28827 (regOne!40477 (regTwo!40476 r!24333)))) b!7565248))

(assert (= (and b!7564543 (is-Star!19982 (regOne!40477 (regTwo!40476 r!24333)))) b!7565249))

(assert (= (and b!7564543 (is-Union!19982 (regOne!40477 (regTwo!40476 r!24333)))) b!7565250))

(declare-fun b!7565253 () Bool)

(declare-fun e!4504593 () Bool)

(declare-fun tp!2203165 () Bool)

(assert (=> b!7565253 (= e!4504593 tp!2203165)))

(declare-fun b!7565251 () Bool)

(assert (=> b!7565251 (= e!4504593 tp_is_empty!50319)))

(assert (=> b!7564543 (= tp!2203017 e!4504593)))

(declare-fun b!7565252 () Bool)

(declare-fun tp!2203166 () Bool)

(declare-fun tp!2203163 () Bool)

(assert (=> b!7565252 (= e!4504593 (and tp!2203166 tp!2203163))))

(declare-fun b!7565254 () Bool)

(declare-fun tp!2203162 () Bool)

(declare-fun tp!2203164 () Bool)

(assert (=> b!7565254 (= e!4504593 (and tp!2203162 tp!2203164))))

(assert (= (and b!7564543 (is-ElementMatch!19982 (regTwo!40477 (regTwo!40476 r!24333)))) b!7565251))

(assert (= (and b!7564543 (is-Concat!28827 (regTwo!40477 (regTwo!40476 r!24333)))) b!7565252))

(assert (= (and b!7564543 (is-Star!19982 (regTwo!40477 (regTwo!40476 r!24333)))) b!7565253))

(assert (= (and b!7564543 (is-Union!19982 (regTwo!40477 (regTwo!40476 r!24333)))) b!7565254))

(declare-fun b!7565257 () Bool)

(declare-fun e!4504594 () Bool)

(declare-fun tp!2203170 () Bool)

(assert (=> b!7565257 (= e!4504594 tp!2203170)))

(declare-fun b!7565255 () Bool)

(assert (=> b!7565255 (= e!4504594 tp_is_empty!50319)))

(assert (=> b!7564551 (= tp!2203029 e!4504594)))

(declare-fun b!7565256 () Bool)

(declare-fun tp!2203171 () Bool)

(declare-fun tp!2203168 () Bool)

(assert (=> b!7565256 (= e!4504594 (and tp!2203171 tp!2203168))))

(declare-fun b!7565258 () Bool)

(declare-fun tp!2203167 () Bool)

(declare-fun tp!2203169 () Bool)

(assert (=> b!7565258 (= e!4504594 (and tp!2203167 tp!2203169))))

(assert (= (and b!7564551 (is-ElementMatch!19982 (reg!20311 (regTwo!40477 baseR!101)))) b!7565255))

(assert (= (and b!7564551 (is-Concat!28827 (reg!20311 (regTwo!40477 baseR!101)))) b!7565256))

(assert (= (and b!7564551 (is-Star!19982 (reg!20311 (regTwo!40477 baseR!101)))) b!7565257))

(assert (= (and b!7564551 (is-Union!19982 (reg!20311 (regTwo!40477 baseR!101)))) b!7565258))

(declare-fun b!7565261 () Bool)

(declare-fun e!4504595 () Bool)

(declare-fun tp!2203175 () Bool)

(assert (=> b!7565261 (= e!4504595 tp!2203175)))

(declare-fun b!7565259 () Bool)

(assert (=> b!7565259 (= e!4504595 tp_is_empty!50319)))

(assert (=> b!7564520 (= tp!2202994 e!4504595)))

(declare-fun b!7565260 () Bool)

(declare-fun tp!2203176 () Bool)

(declare-fun tp!2203173 () Bool)

(assert (=> b!7565260 (= e!4504595 (and tp!2203176 tp!2203173))))

(declare-fun b!7565262 () Bool)

(declare-fun tp!2203172 () Bool)

(declare-fun tp!2203174 () Bool)

(assert (=> b!7565262 (= e!4504595 (and tp!2203172 tp!2203174))))

(assert (= (and b!7564520 (is-ElementMatch!19982 (reg!20311 (regOne!40476 baseR!101)))) b!7565259))

(assert (= (and b!7564520 (is-Concat!28827 (reg!20311 (regOne!40476 baseR!101)))) b!7565260))

(assert (= (and b!7564520 (is-Star!19982 (reg!20311 (regOne!40476 baseR!101)))) b!7565261))

(assert (= (and b!7564520 (is-Union!19982 (reg!20311 (regOne!40476 baseR!101)))) b!7565262))

(declare-fun b!7565265 () Bool)

(declare-fun e!4504596 () Bool)

(declare-fun tp!2203180 () Bool)

(assert (=> b!7565265 (= e!4504596 tp!2203180)))

(declare-fun b!7565263 () Bool)

(assert (=> b!7565263 (= e!4504596 tp_is_empty!50319)))

(assert (=> b!7564519 (= tp!2202995 e!4504596)))

(declare-fun b!7565264 () Bool)

(declare-fun tp!2203181 () Bool)

(declare-fun tp!2203178 () Bool)

(assert (=> b!7565264 (= e!4504596 (and tp!2203181 tp!2203178))))

(declare-fun b!7565266 () Bool)

(declare-fun tp!2203177 () Bool)

(declare-fun tp!2203179 () Bool)

(assert (=> b!7565266 (= e!4504596 (and tp!2203177 tp!2203179))))

(assert (= (and b!7564519 (is-ElementMatch!19982 (regOne!40476 (regOne!40476 baseR!101)))) b!7565263))

(assert (= (and b!7564519 (is-Concat!28827 (regOne!40476 (regOne!40476 baseR!101)))) b!7565264))

(assert (= (and b!7564519 (is-Star!19982 (regOne!40476 (regOne!40476 baseR!101)))) b!7565265))

(assert (= (and b!7564519 (is-Union!19982 (regOne!40476 (regOne!40476 baseR!101)))) b!7565266))

(declare-fun b!7565269 () Bool)

(declare-fun e!4504597 () Bool)

(declare-fun tp!2203185 () Bool)

(assert (=> b!7565269 (= e!4504597 tp!2203185)))

(declare-fun b!7565267 () Bool)

(assert (=> b!7565267 (= e!4504597 tp_is_empty!50319)))

(assert (=> b!7564519 (= tp!2202992 e!4504597)))

(declare-fun b!7565268 () Bool)

(declare-fun tp!2203186 () Bool)

(declare-fun tp!2203183 () Bool)

(assert (=> b!7565268 (= e!4504597 (and tp!2203186 tp!2203183))))

(declare-fun b!7565270 () Bool)

(declare-fun tp!2203182 () Bool)

(declare-fun tp!2203184 () Bool)

(assert (=> b!7565270 (= e!4504597 (and tp!2203182 tp!2203184))))

(assert (= (and b!7564519 (is-ElementMatch!19982 (regTwo!40476 (regOne!40476 baseR!101)))) b!7565267))

(assert (= (and b!7564519 (is-Concat!28827 (regTwo!40476 (regOne!40476 baseR!101)))) b!7565268))

(assert (= (and b!7564519 (is-Star!19982 (regTwo!40476 (regOne!40476 baseR!101)))) b!7565269))

(assert (= (and b!7564519 (is-Union!19982 (regTwo!40476 (regOne!40476 baseR!101)))) b!7565270))

(declare-fun b!7565271 () Bool)

(declare-fun e!4504598 () Bool)

(declare-fun tp!2203187 () Bool)

(assert (=> b!7565271 (= e!4504598 (and tp_is_empty!50319 tp!2203187))))

(assert (=> b!7564544 (= tp!2203020 e!4504598)))

(assert (= (and b!7564544 (is-Cons!72741 (t!387596 (t!387596 testedP!423)))) b!7565271))

(declare-fun b!7565274 () Bool)

(declare-fun e!4504599 () Bool)

(declare-fun tp!2203191 () Bool)

(assert (=> b!7565274 (= e!4504599 tp!2203191)))

(declare-fun b!7565272 () Bool)

(assert (=> b!7565272 (= e!4504599 tp_is_empty!50319)))

(assert (=> b!7564556 (= tp!2203031 e!4504599)))

(declare-fun b!7565273 () Bool)

(declare-fun tp!2203192 () Bool)

(declare-fun tp!2203189 () Bool)

(assert (=> b!7565273 (= e!4504599 (and tp!2203192 tp!2203189))))

(declare-fun b!7565275 () Bool)

(declare-fun tp!2203188 () Bool)

(declare-fun tp!2203190 () Bool)

(assert (=> b!7565275 (= e!4504599 (and tp!2203188 tp!2203190))))

(assert (= (and b!7564556 (is-ElementMatch!19982 (regOne!40477 (regOne!40477 r!24333)))) b!7565272))

(assert (= (and b!7564556 (is-Concat!28827 (regOne!40477 (regOne!40477 r!24333)))) b!7565273))

(assert (= (and b!7564556 (is-Star!19982 (regOne!40477 (regOne!40477 r!24333)))) b!7565274))

(assert (= (and b!7564556 (is-Union!19982 (regOne!40477 (regOne!40477 r!24333)))) b!7565275))

(declare-fun b!7565278 () Bool)

(declare-fun e!4504600 () Bool)

(declare-fun tp!2203196 () Bool)

(assert (=> b!7565278 (= e!4504600 tp!2203196)))

(declare-fun b!7565276 () Bool)

(assert (=> b!7565276 (= e!4504600 tp_is_empty!50319)))

(assert (=> b!7564556 (= tp!2203033 e!4504600)))

(declare-fun b!7565277 () Bool)

(declare-fun tp!2203197 () Bool)

(declare-fun tp!2203194 () Bool)

(assert (=> b!7565277 (= e!4504600 (and tp!2203197 tp!2203194))))

(declare-fun b!7565279 () Bool)

(declare-fun tp!2203193 () Bool)

(declare-fun tp!2203195 () Bool)

(assert (=> b!7565279 (= e!4504600 (and tp!2203193 tp!2203195))))

(assert (= (and b!7564556 (is-ElementMatch!19982 (regTwo!40477 (regOne!40477 r!24333)))) b!7565276))

(assert (= (and b!7564556 (is-Concat!28827 (regTwo!40477 (regOne!40477 r!24333)))) b!7565277))

(assert (= (and b!7564556 (is-Star!19982 (regTwo!40477 (regOne!40477 r!24333)))) b!7565278))

(assert (= (and b!7564556 (is-Union!19982 (regTwo!40477 (regOne!40477 r!24333)))) b!7565279))

(declare-fun b!7565282 () Bool)

(declare-fun e!4504601 () Bool)

(declare-fun tp!2203201 () Bool)

(assert (=> b!7565282 (= e!4504601 tp!2203201)))

(declare-fun b!7565280 () Bool)

(assert (=> b!7565280 (= e!4504601 tp_is_empty!50319)))

(assert (=> b!7564517 (= tp!2202986 e!4504601)))

(declare-fun b!7565281 () Bool)

(declare-fun tp!2203202 () Bool)

(declare-fun tp!2203199 () Bool)

(assert (=> b!7565281 (= e!4504601 (and tp!2203202 tp!2203199))))

(declare-fun b!7565283 () Bool)

(declare-fun tp!2203198 () Bool)

(declare-fun tp!2203200 () Bool)

(assert (=> b!7565283 (= e!4504601 (and tp!2203198 tp!2203200))))

(assert (= (and b!7564517 (is-ElementMatch!19982 (regOne!40477 (reg!20311 r!24333)))) b!7565280))

(assert (= (and b!7564517 (is-Concat!28827 (regOne!40477 (reg!20311 r!24333)))) b!7565281))

(assert (= (and b!7564517 (is-Star!19982 (regOne!40477 (reg!20311 r!24333)))) b!7565282))

(assert (= (and b!7564517 (is-Union!19982 (regOne!40477 (reg!20311 r!24333)))) b!7565283))

(declare-fun b!7565286 () Bool)

(declare-fun e!4504602 () Bool)

(declare-fun tp!2203206 () Bool)

(assert (=> b!7565286 (= e!4504602 tp!2203206)))

(declare-fun b!7565284 () Bool)

(assert (=> b!7565284 (= e!4504602 tp_is_empty!50319)))

(assert (=> b!7564517 (= tp!2202988 e!4504602)))

(declare-fun b!7565285 () Bool)

(declare-fun tp!2203207 () Bool)

(declare-fun tp!2203204 () Bool)

(assert (=> b!7565285 (= e!4504602 (and tp!2203207 tp!2203204))))

(declare-fun b!7565287 () Bool)

(declare-fun tp!2203203 () Bool)

(declare-fun tp!2203205 () Bool)

(assert (=> b!7565287 (= e!4504602 (and tp!2203203 tp!2203205))))

(assert (= (and b!7564517 (is-ElementMatch!19982 (regTwo!40477 (reg!20311 r!24333)))) b!7565284))

(assert (= (and b!7564517 (is-Concat!28827 (regTwo!40477 (reg!20311 r!24333)))) b!7565285))

(assert (= (and b!7564517 (is-Star!19982 (regTwo!40477 (reg!20311 r!24333)))) b!7565286))

(assert (= (and b!7564517 (is-Union!19982 (regTwo!40477 (reg!20311 r!24333)))) b!7565287))

(declare-fun b!7565290 () Bool)

(declare-fun e!4504603 () Bool)

(declare-fun tp!2203211 () Bool)

(assert (=> b!7565290 (= e!4504603 tp!2203211)))

(declare-fun b!7565288 () Bool)

(assert (=> b!7565288 (= e!4504603 tp_is_empty!50319)))

(assert (=> b!7564525 (= tp!2202996 e!4504603)))

(declare-fun b!7565289 () Bool)

(declare-fun tp!2203212 () Bool)

(declare-fun tp!2203209 () Bool)

(assert (=> b!7565289 (= e!4504603 (and tp!2203212 tp!2203209))))

(declare-fun b!7565291 () Bool)

(declare-fun tp!2203208 () Bool)

(declare-fun tp!2203210 () Bool)

(assert (=> b!7565291 (= e!4504603 (and tp!2203208 tp!2203210))))

(assert (= (and b!7564525 (is-ElementMatch!19982 (regOne!40477 (regTwo!40476 baseR!101)))) b!7565288))

(assert (= (and b!7564525 (is-Concat!28827 (regOne!40477 (regTwo!40476 baseR!101)))) b!7565289))

(assert (= (and b!7564525 (is-Star!19982 (regOne!40477 (regTwo!40476 baseR!101)))) b!7565290))

(assert (= (and b!7564525 (is-Union!19982 (regOne!40477 (regTwo!40476 baseR!101)))) b!7565291))

(declare-fun b!7565294 () Bool)

(declare-fun e!4504604 () Bool)

(declare-fun tp!2203216 () Bool)

(assert (=> b!7565294 (= e!4504604 tp!2203216)))

(declare-fun b!7565292 () Bool)

(assert (=> b!7565292 (= e!4504604 tp_is_empty!50319)))

(assert (=> b!7564525 (= tp!2202998 e!4504604)))

(declare-fun b!7565293 () Bool)

(declare-fun tp!2203217 () Bool)

(declare-fun tp!2203214 () Bool)

(assert (=> b!7565293 (= e!4504604 (and tp!2203217 tp!2203214))))

(declare-fun b!7565295 () Bool)

(declare-fun tp!2203213 () Bool)

(declare-fun tp!2203215 () Bool)

(assert (=> b!7565295 (= e!4504604 (and tp!2203213 tp!2203215))))

(assert (= (and b!7564525 (is-ElementMatch!19982 (regTwo!40477 (regTwo!40476 baseR!101)))) b!7565292))

(assert (= (and b!7564525 (is-Concat!28827 (regTwo!40477 (regTwo!40476 baseR!101)))) b!7565293))

(assert (= (and b!7564525 (is-Star!19982 (regTwo!40477 (regTwo!40476 baseR!101)))) b!7565294))

(assert (= (and b!7564525 (is-Union!19982 (regTwo!40477 (regTwo!40476 baseR!101)))) b!7565295))

(declare-fun b!7565298 () Bool)

(declare-fun e!4504605 () Bool)

(declare-fun tp!2203221 () Bool)

(assert (=> b!7565298 (= e!4504605 tp!2203221)))

(declare-fun b!7565296 () Bool)

(assert (=> b!7565296 (= e!4504605 tp_is_empty!50319)))

(assert (=> b!7564516 (= tp!2202989 e!4504605)))

(declare-fun b!7565297 () Bool)

(declare-fun tp!2203222 () Bool)

(declare-fun tp!2203219 () Bool)

(assert (=> b!7565297 (= e!4504605 (and tp!2203222 tp!2203219))))

(declare-fun b!7565299 () Bool)

(declare-fun tp!2203218 () Bool)

(declare-fun tp!2203220 () Bool)

(assert (=> b!7565299 (= e!4504605 (and tp!2203218 tp!2203220))))

(assert (= (and b!7564516 (is-ElementMatch!19982 (reg!20311 (reg!20311 r!24333)))) b!7565296))

(assert (= (and b!7564516 (is-Concat!28827 (reg!20311 (reg!20311 r!24333)))) b!7565297))

(assert (= (and b!7564516 (is-Star!19982 (reg!20311 (reg!20311 r!24333)))) b!7565298))

(assert (= (and b!7564516 (is-Union!19982 (reg!20311 (reg!20311 r!24333)))) b!7565299))

(declare-fun b!7565302 () Bool)

(declare-fun e!4504606 () Bool)

(declare-fun tp!2203226 () Bool)

(assert (=> b!7565302 (= e!4504606 tp!2203226)))

(declare-fun b!7565300 () Bool)

(assert (=> b!7565300 (= e!4504606 tp_is_empty!50319)))

(assert (=> b!7564555 (= tp!2203034 e!4504606)))

(declare-fun b!7565301 () Bool)

(declare-fun tp!2203227 () Bool)

(declare-fun tp!2203224 () Bool)

(assert (=> b!7565301 (= e!4504606 (and tp!2203227 tp!2203224))))

(declare-fun b!7565303 () Bool)

(declare-fun tp!2203223 () Bool)

(declare-fun tp!2203225 () Bool)

(assert (=> b!7565303 (= e!4504606 (and tp!2203223 tp!2203225))))

(assert (= (and b!7564555 (is-ElementMatch!19982 (reg!20311 (regOne!40477 r!24333)))) b!7565300))

(assert (= (and b!7564555 (is-Concat!28827 (reg!20311 (regOne!40477 r!24333)))) b!7565301))

(assert (= (and b!7564555 (is-Star!19982 (reg!20311 (regOne!40477 r!24333)))) b!7565302))

(assert (= (and b!7564555 (is-Union!19982 (reg!20311 (regOne!40477 r!24333)))) b!7565303))

(declare-fun b!7565306 () Bool)

(declare-fun e!4504607 () Bool)

(declare-fun tp!2203231 () Bool)

(assert (=> b!7565306 (= e!4504607 tp!2203231)))

(declare-fun b!7565304 () Bool)

(assert (=> b!7565304 (= e!4504607 tp_is_empty!50319)))

(assert (=> b!7564542 (= tp!2203018 e!4504607)))

(declare-fun b!7565305 () Bool)

(declare-fun tp!2203232 () Bool)

(declare-fun tp!2203229 () Bool)

(assert (=> b!7565305 (= e!4504607 (and tp!2203232 tp!2203229))))

(declare-fun b!7565307 () Bool)

(declare-fun tp!2203228 () Bool)

(declare-fun tp!2203230 () Bool)

(assert (=> b!7565307 (= e!4504607 (and tp!2203228 tp!2203230))))

(assert (= (and b!7564542 (is-ElementMatch!19982 (reg!20311 (regTwo!40476 r!24333)))) b!7565304))

(assert (= (and b!7564542 (is-Concat!28827 (reg!20311 (regTwo!40476 r!24333)))) b!7565305))

(assert (= (and b!7564542 (is-Star!19982 (reg!20311 (regTwo!40476 r!24333)))) b!7565306))

(assert (= (and b!7564542 (is-Union!19982 (reg!20311 (regTwo!40476 r!24333)))) b!7565307))

(declare-fun b!7565310 () Bool)

(declare-fun e!4504608 () Bool)

(declare-fun tp!2203236 () Bool)

(assert (=> b!7565310 (= e!4504608 tp!2203236)))

(declare-fun b!7565308 () Bool)

(assert (=> b!7565308 (= e!4504608 tp_is_empty!50319)))

(assert (=> b!7564550 (= tp!2203030 e!4504608)))

(declare-fun b!7565309 () Bool)

(declare-fun tp!2203237 () Bool)

(declare-fun tp!2203234 () Bool)

(assert (=> b!7565309 (= e!4504608 (and tp!2203237 tp!2203234))))

(declare-fun b!7565311 () Bool)

(declare-fun tp!2203233 () Bool)

(declare-fun tp!2203235 () Bool)

(assert (=> b!7565311 (= e!4504608 (and tp!2203233 tp!2203235))))

(assert (= (and b!7564550 (is-ElementMatch!19982 (regOne!40476 (regTwo!40477 baseR!101)))) b!7565308))

(assert (= (and b!7564550 (is-Concat!28827 (regOne!40476 (regTwo!40477 baseR!101)))) b!7565309))

(assert (= (and b!7564550 (is-Star!19982 (regOne!40476 (regTwo!40477 baseR!101)))) b!7565310))

(assert (= (and b!7564550 (is-Union!19982 (regOne!40476 (regTwo!40477 baseR!101)))) b!7565311))

(declare-fun b!7565314 () Bool)

(declare-fun e!4504609 () Bool)

(declare-fun tp!2203241 () Bool)

(assert (=> b!7565314 (= e!4504609 tp!2203241)))

(declare-fun b!7565312 () Bool)

(assert (=> b!7565312 (= e!4504609 tp_is_empty!50319)))

(assert (=> b!7564550 (= tp!2203027 e!4504609)))

(declare-fun b!7565313 () Bool)

(declare-fun tp!2203242 () Bool)

(declare-fun tp!2203239 () Bool)

(assert (=> b!7565313 (= e!4504609 (and tp!2203242 tp!2203239))))

(declare-fun b!7565315 () Bool)

(declare-fun tp!2203238 () Bool)

(declare-fun tp!2203240 () Bool)

(assert (=> b!7565315 (= e!4504609 (and tp!2203238 tp!2203240))))

(assert (= (and b!7564550 (is-ElementMatch!19982 (regTwo!40476 (regTwo!40477 baseR!101)))) b!7565312))

(assert (= (and b!7564550 (is-Concat!28827 (regTwo!40476 (regTwo!40477 baseR!101)))) b!7565313))

(assert (= (and b!7564550 (is-Star!19982 (regTwo!40476 (regTwo!40477 baseR!101)))) b!7565314))

(assert (= (and b!7564550 (is-Union!19982 (regTwo!40476 (regTwo!40477 baseR!101)))) b!7565315))

(declare-fun b!7565318 () Bool)

(declare-fun e!4504610 () Bool)

(declare-fun tp!2203246 () Bool)

(assert (=> b!7565318 (= e!4504610 tp!2203246)))

(declare-fun b!7565316 () Bool)

(assert (=> b!7565316 (= e!4504610 tp_is_empty!50319)))

(assert (=> b!7564533 (= tp!2203009 e!4504610)))

(declare-fun b!7565317 () Bool)

(declare-fun tp!2203247 () Bool)

(declare-fun tp!2203244 () Bool)

(assert (=> b!7565317 (= e!4504610 (and tp!2203247 tp!2203244))))

(declare-fun b!7565319 () Bool)

(declare-fun tp!2203243 () Bool)

(declare-fun tp!2203245 () Bool)

(assert (=> b!7565319 (= e!4504610 (and tp!2203243 tp!2203245))))

(assert (= (and b!7564533 (is-ElementMatch!19982 (regOne!40476 (reg!20311 baseR!101)))) b!7565316))

(assert (= (and b!7564533 (is-Concat!28827 (regOne!40476 (reg!20311 baseR!101)))) b!7565317))

(assert (= (and b!7564533 (is-Star!19982 (regOne!40476 (reg!20311 baseR!101)))) b!7565318))

(assert (= (and b!7564533 (is-Union!19982 (regOne!40476 (reg!20311 baseR!101)))) b!7565319))

(declare-fun b!7565322 () Bool)

(declare-fun e!4504611 () Bool)

(declare-fun tp!2203251 () Bool)

(assert (=> b!7565322 (= e!4504611 tp!2203251)))

(declare-fun b!7565320 () Bool)

(assert (=> b!7565320 (= e!4504611 tp_is_empty!50319)))

(assert (=> b!7564533 (= tp!2203006 e!4504611)))

(declare-fun b!7565321 () Bool)

(declare-fun tp!2203252 () Bool)

(declare-fun tp!2203249 () Bool)

(assert (=> b!7565321 (= e!4504611 (and tp!2203252 tp!2203249))))

(declare-fun b!7565323 () Bool)

(declare-fun tp!2203248 () Bool)

(declare-fun tp!2203250 () Bool)

(assert (=> b!7565323 (= e!4504611 (and tp!2203248 tp!2203250))))

(assert (= (and b!7564533 (is-ElementMatch!19982 (regTwo!40476 (reg!20311 baseR!101)))) b!7565320))

(assert (= (and b!7564533 (is-Concat!28827 (regTwo!40476 (reg!20311 baseR!101)))) b!7565321))

(assert (= (and b!7564533 (is-Star!19982 (regTwo!40476 (reg!20311 baseR!101)))) b!7565322))

(assert (= (and b!7564533 (is-Union!19982 (regTwo!40476 (reg!20311 baseR!101)))) b!7565323))

(declare-fun b!7565326 () Bool)

(declare-fun e!4504612 () Bool)

(declare-fun tp!2203256 () Bool)

(assert (=> b!7565326 (= e!4504612 tp!2203256)))

(declare-fun b!7565324 () Bool)

(assert (=> b!7565324 (= e!4504612 tp_is_empty!50319)))

(assert (=> b!7564541 (= tp!2203019 e!4504612)))

(declare-fun b!7565325 () Bool)

(declare-fun tp!2203257 () Bool)

(declare-fun tp!2203254 () Bool)

(assert (=> b!7565325 (= e!4504612 (and tp!2203257 tp!2203254))))

(declare-fun b!7565327 () Bool)

(declare-fun tp!2203253 () Bool)

(declare-fun tp!2203255 () Bool)

(assert (=> b!7565327 (= e!4504612 (and tp!2203253 tp!2203255))))

(assert (= (and b!7564541 (is-ElementMatch!19982 (regOne!40476 (regTwo!40476 r!24333)))) b!7565324))

(assert (= (and b!7564541 (is-Concat!28827 (regOne!40476 (regTwo!40476 r!24333)))) b!7565325))

(assert (= (and b!7564541 (is-Star!19982 (regOne!40476 (regTwo!40476 r!24333)))) b!7565326))

(assert (= (and b!7564541 (is-Union!19982 (regOne!40476 (regTwo!40476 r!24333)))) b!7565327))

(declare-fun b!7565330 () Bool)

(declare-fun e!4504613 () Bool)

(declare-fun tp!2203261 () Bool)

(assert (=> b!7565330 (= e!4504613 tp!2203261)))

(declare-fun b!7565328 () Bool)

(assert (=> b!7565328 (= e!4504613 tp_is_empty!50319)))

(assert (=> b!7564541 (= tp!2203016 e!4504613)))

(declare-fun b!7565329 () Bool)

(declare-fun tp!2203262 () Bool)

(declare-fun tp!2203259 () Bool)

(assert (=> b!7565329 (= e!4504613 (and tp!2203262 tp!2203259))))

(declare-fun b!7565331 () Bool)

(declare-fun tp!2203258 () Bool)

(declare-fun tp!2203260 () Bool)

(assert (=> b!7565331 (= e!4504613 (and tp!2203258 tp!2203260))))

(assert (= (and b!7564541 (is-ElementMatch!19982 (regTwo!40476 (regTwo!40476 r!24333)))) b!7565328))

(assert (= (and b!7564541 (is-Concat!28827 (regTwo!40476 (regTwo!40476 r!24333)))) b!7565329))

(assert (= (and b!7564541 (is-Star!19982 (regTwo!40476 (regTwo!40476 r!24333)))) b!7565330))

(assert (= (and b!7564541 (is-Union!19982 (regTwo!40476 (regTwo!40476 r!24333)))) b!7565331))

(declare-fun b!7565334 () Bool)

(declare-fun e!4504614 () Bool)

(declare-fun tp!2203266 () Bool)

(assert (=> b!7565334 (= e!4504614 tp!2203266)))

(declare-fun b!7565332 () Bool)

(assert (=> b!7565332 (= e!4504614 tp_is_empty!50319)))

(assert (=> b!7564562 (= tp!2203040 e!4504614)))

(declare-fun b!7565333 () Bool)

(declare-fun tp!2203267 () Bool)

(declare-fun tp!2203264 () Bool)

(assert (=> b!7565333 (= e!4504614 (and tp!2203267 tp!2203264))))

(declare-fun b!7565335 () Bool)

(declare-fun tp!2203263 () Bool)

(declare-fun tp!2203265 () Bool)

(assert (=> b!7565335 (= e!4504614 (and tp!2203263 tp!2203265))))

(assert (= (and b!7564562 (is-ElementMatch!19982 (regOne!40476 (regTwo!40477 r!24333)))) b!7565332))

(assert (= (and b!7564562 (is-Concat!28827 (regOne!40476 (regTwo!40477 r!24333)))) b!7565333))

(assert (= (and b!7564562 (is-Star!19982 (regOne!40476 (regTwo!40477 r!24333)))) b!7565334))

(assert (= (and b!7564562 (is-Union!19982 (regOne!40476 (regTwo!40477 r!24333)))) b!7565335))

(declare-fun b!7565338 () Bool)

(declare-fun e!4504615 () Bool)

(declare-fun tp!2203271 () Bool)

(assert (=> b!7565338 (= e!4504615 tp!2203271)))

(declare-fun b!7565336 () Bool)

(assert (=> b!7565336 (= e!4504615 tp_is_empty!50319)))

(assert (=> b!7564562 (= tp!2203037 e!4504615)))

(declare-fun b!7565337 () Bool)

(declare-fun tp!2203272 () Bool)

(declare-fun tp!2203269 () Bool)

(assert (=> b!7565337 (= e!4504615 (and tp!2203272 tp!2203269))))

(declare-fun b!7565339 () Bool)

(declare-fun tp!2203268 () Bool)

(declare-fun tp!2203270 () Bool)

(assert (=> b!7565339 (= e!4504615 (and tp!2203268 tp!2203270))))

(assert (= (and b!7564562 (is-ElementMatch!19982 (regTwo!40476 (regTwo!40477 r!24333)))) b!7565336))

(assert (= (and b!7564562 (is-Concat!28827 (regTwo!40476 (regTwo!40477 r!24333)))) b!7565337))

(assert (= (and b!7564562 (is-Star!19982 (regTwo!40476 (regTwo!40477 r!24333)))) b!7565338))

(assert (= (and b!7564562 (is-Union!19982 (regTwo!40476 (regTwo!40477 r!24333)))) b!7565339))

(declare-fun b!7565342 () Bool)

(declare-fun e!4504616 () Bool)

(declare-fun tp!2203276 () Bool)

(assert (=> b!7565342 (= e!4504616 tp!2203276)))

(declare-fun b!7565340 () Bool)

(assert (=> b!7565340 (= e!4504616 tp_is_empty!50319)))

(assert (=> b!7564547 (= tp!2203024 e!4504616)))

(declare-fun b!7565341 () Bool)

(declare-fun tp!2203277 () Bool)

(declare-fun tp!2203274 () Bool)

(assert (=> b!7565341 (= e!4504616 (and tp!2203277 tp!2203274))))

(declare-fun b!7565343 () Bool)

(declare-fun tp!2203273 () Bool)

(declare-fun tp!2203275 () Bool)

(assert (=> b!7565343 (= e!4504616 (and tp!2203273 tp!2203275))))

(assert (= (and b!7564547 (is-ElementMatch!19982 (reg!20311 (regOne!40477 baseR!101)))) b!7565340))

(assert (= (and b!7564547 (is-Concat!28827 (reg!20311 (regOne!40477 baseR!101)))) b!7565341))

(assert (= (and b!7564547 (is-Star!19982 (reg!20311 (regOne!40477 baseR!101)))) b!7565342))

(assert (= (and b!7564547 (is-Union!19982 (reg!20311 (regOne!40477 baseR!101)))) b!7565343))

(declare-fun b!7565346 () Bool)

(declare-fun e!4504617 () Bool)

(declare-fun tp!2203281 () Bool)

(assert (=> b!7565346 (= e!4504617 tp!2203281)))

(declare-fun b!7565344 () Bool)

(assert (=> b!7565344 (= e!4504617 tp_is_empty!50319)))

(assert (=> b!7564548 (= tp!2203021 e!4504617)))

(declare-fun b!7565345 () Bool)

(declare-fun tp!2203282 () Bool)

(declare-fun tp!2203279 () Bool)

(assert (=> b!7565345 (= e!4504617 (and tp!2203282 tp!2203279))))

(declare-fun b!7565347 () Bool)

(declare-fun tp!2203278 () Bool)

(declare-fun tp!2203280 () Bool)

(assert (=> b!7565347 (= e!4504617 (and tp!2203278 tp!2203280))))

(assert (= (and b!7564548 (is-ElementMatch!19982 (regOne!40477 (regOne!40477 baseR!101)))) b!7565344))

(assert (= (and b!7564548 (is-Concat!28827 (regOne!40477 (regOne!40477 baseR!101)))) b!7565345))

(assert (= (and b!7564548 (is-Star!19982 (regOne!40477 (regOne!40477 baseR!101)))) b!7565346))

(assert (= (and b!7564548 (is-Union!19982 (regOne!40477 (regOne!40477 baseR!101)))) b!7565347))

(declare-fun b!7565350 () Bool)

(declare-fun e!4504618 () Bool)

(declare-fun tp!2203286 () Bool)

(assert (=> b!7565350 (= e!4504618 tp!2203286)))

(declare-fun b!7565348 () Bool)

(assert (=> b!7565348 (= e!4504618 tp_is_empty!50319)))

(assert (=> b!7564548 (= tp!2203023 e!4504618)))

(declare-fun b!7565349 () Bool)

(declare-fun tp!2203287 () Bool)

(declare-fun tp!2203284 () Bool)

(assert (=> b!7565349 (= e!4504618 (and tp!2203287 tp!2203284))))

(declare-fun b!7565351 () Bool)

(declare-fun tp!2203283 () Bool)

(declare-fun tp!2203285 () Bool)

(assert (=> b!7565351 (= e!4504618 (and tp!2203283 tp!2203285))))

(assert (= (and b!7564548 (is-ElementMatch!19982 (regTwo!40477 (regOne!40477 baseR!101)))) b!7565348))

(assert (= (and b!7564548 (is-Concat!28827 (regTwo!40477 (regOne!40477 baseR!101)))) b!7565349))

(assert (= (and b!7564548 (is-Star!19982 (regTwo!40477 (regOne!40477 baseR!101)))) b!7565350))

(assert (= (and b!7564548 (is-Union!19982 (regTwo!40477 (regOne!40477 baseR!101)))) b!7565351))

(declare-fun b!7565352 () Bool)

(declare-fun e!4504619 () Bool)

(declare-fun tp!2203288 () Bool)

(assert (=> b!7565352 (= e!4504619 (and tp_is_empty!50319 tp!2203288))))

(assert (=> b!7564531 (= tp!2203004 e!4504619)))

(assert (= (and b!7564531 (is-Cons!72741 (t!387596 (t!387596 knownP!30)))) b!7565352))

(declare-fun b!7565355 () Bool)

(declare-fun e!4504620 () Bool)

(declare-fun tp!2203292 () Bool)

(assert (=> b!7565355 (= e!4504620 tp!2203292)))

(declare-fun b!7565353 () Bool)

(assert (=> b!7565353 (= e!4504620 tp_is_empty!50319)))

(assert (=> b!7564546 (= tp!2203025 e!4504620)))

(declare-fun b!7565354 () Bool)

(declare-fun tp!2203293 () Bool)

(declare-fun tp!2203290 () Bool)

(assert (=> b!7565354 (= e!4504620 (and tp!2203293 tp!2203290))))

(declare-fun b!7565356 () Bool)

(declare-fun tp!2203289 () Bool)

(declare-fun tp!2203291 () Bool)

(assert (=> b!7565356 (= e!4504620 (and tp!2203289 tp!2203291))))

(assert (= (and b!7564546 (is-ElementMatch!19982 (regOne!40476 (regOne!40477 baseR!101)))) b!7565353))

(assert (= (and b!7564546 (is-Concat!28827 (regOne!40476 (regOne!40477 baseR!101)))) b!7565354))

(assert (= (and b!7564546 (is-Star!19982 (regOne!40476 (regOne!40477 baseR!101)))) b!7565355))

(assert (= (and b!7564546 (is-Union!19982 (regOne!40476 (regOne!40477 baseR!101)))) b!7565356))

(declare-fun b!7565359 () Bool)

(declare-fun e!4504621 () Bool)

(declare-fun tp!2203297 () Bool)

(assert (=> b!7565359 (= e!4504621 tp!2203297)))

(declare-fun b!7565357 () Bool)

(assert (=> b!7565357 (= e!4504621 tp_is_empty!50319)))

(assert (=> b!7564546 (= tp!2203022 e!4504621)))

(declare-fun b!7565358 () Bool)

(declare-fun tp!2203298 () Bool)

(declare-fun tp!2203295 () Bool)

(assert (=> b!7565358 (= e!4504621 (and tp!2203298 tp!2203295))))

(declare-fun b!7565360 () Bool)

(declare-fun tp!2203294 () Bool)

(declare-fun tp!2203296 () Bool)

(assert (=> b!7565360 (= e!4504621 (and tp!2203294 tp!2203296))))

(assert (= (and b!7564546 (is-ElementMatch!19982 (regTwo!40476 (regOne!40477 baseR!101)))) b!7565357))

(assert (= (and b!7564546 (is-Concat!28827 (regTwo!40476 (regOne!40477 baseR!101)))) b!7565358))

(assert (= (and b!7564546 (is-Star!19982 (regTwo!40476 (regOne!40477 baseR!101)))) b!7565359))

(assert (= (and b!7564546 (is-Union!19982 (regTwo!40476 (regOne!40477 baseR!101)))) b!7565360))

(declare-fun b!7565363 () Bool)

(declare-fun e!4504622 () Bool)

(declare-fun tp!2203302 () Bool)

(assert (=> b!7565363 (= e!4504622 tp!2203302)))

(declare-fun b!7565361 () Bool)

(assert (=> b!7565361 (= e!4504622 tp_is_empty!50319)))

(assert (=> b!7564539 (= tp!2203010 e!4504622)))

(declare-fun b!7565362 () Bool)

(declare-fun tp!2203303 () Bool)

(declare-fun tp!2203300 () Bool)

(assert (=> b!7565362 (= e!4504622 (and tp!2203303 tp!2203300))))

(declare-fun b!7565364 () Bool)

(declare-fun tp!2203299 () Bool)

(declare-fun tp!2203301 () Bool)

(assert (=> b!7565364 (= e!4504622 (and tp!2203299 tp!2203301))))

(assert (= (and b!7564539 (is-ElementMatch!19982 (regOne!40477 (regOne!40476 r!24333)))) b!7565361))

(assert (= (and b!7564539 (is-Concat!28827 (regOne!40477 (regOne!40476 r!24333)))) b!7565362))

(assert (= (and b!7564539 (is-Star!19982 (regOne!40477 (regOne!40476 r!24333)))) b!7565363))

(assert (= (and b!7564539 (is-Union!19982 (regOne!40477 (regOne!40476 r!24333)))) b!7565364))

(declare-fun b!7565367 () Bool)

(declare-fun e!4504623 () Bool)

(declare-fun tp!2203307 () Bool)

(assert (=> b!7565367 (= e!4504623 tp!2203307)))

(declare-fun b!7565365 () Bool)

(assert (=> b!7565365 (= e!4504623 tp_is_empty!50319)))

(assert (=> b!7564539 (= tp!2203012 e!4504623)))

(declare-fun b!7565366 () Bool)

(declare-fun tp!2203308 () Bool)

(declare-fun tp!2203305 () Bool)

(assert (=> b!7565366 (= e!4504623 (and tp!2203308 tp!2203305))))

(declare-fun b!7565368 () Bool)

(declare-fun tp!2203304 () Bool)

(declare-fun tp!2203306 () Bool)

(assert (=> b!7565368 (= e!4504623 (and tp!2203304 tp!2203306))))

(assert (= (and b!7564539 (is-ElementMatch!19982 (regTwo!40477 (regOne!40476 r!24333)))) b!7565365))

(assert (= (and b!7564539 (is-Concat!28827 (regTwo!40477 (regOne!40476 r!24333)))) b!7565366))

(assert (= (and b!7564539 (is-Star!19982 (regTwo!40477 (regOne!40476 r!24333)))) b!7565367))

(assert (= (and b!7564539 (is-Union!19982 (regTwo!40477 (regOne!40476 r!24333)))) b!7565368))

(declare-fun b!7565371 () Bool)

(declare-fun e!4504624 () Bool)

(declare-fun tp!2203312 () Bool)

(assert (=> b!7565371 (= e!4504624 tp!2203312)))

(declare-fun b!7565369 () Bool)

(assert (=> b!7565369 (= e!4504624 tp_is_empty!50319)))

(assert (=> b!7564515 (= tp!2202990 e!4504624)))

(declare-fun b!7565370 () Bool)

(declare-fun tp!2203313 () Bool)

(declare-fun tp!2203310 () Bool)

(assert (=> b!7565370 (= e!4504624 (and tp!2203313 tp!2203310))))

(declare-fun b!7565372 () Bool)

(declare-fun tp!2203309 () Bool)

(declare-fun tp!2203311 () Bool)

(assert (=> b!7565372 (= e!4504624 (and tp!2203309 tp!2203311))))

(assert (= (and b!7564515 (is-ElementMatch!19982 (regOne!40476 (reg!20311 r!24333)))) b!7565369))

(assert (= (and b!7564515 (is-Concat!28827 (regOne!40476 (reg!20311 r!24333)))) b!7565370))

(assert (= (and b!7564515 (is-Star!19982 (regOne!40476 (reg!20311 r!24333)))) b!7565371))

(assert (= (and b!7564515 (is-Union!19982 (regOne!40476 (reg!20311 r!24333)))) b!7565372))

(declare-fun b!7565375 () Bool)

(declare-fun e!4504625 () Bool)

(declare-fun tp!2203317 () Bool)

(assert (=> b!7565375 (= e!4504625 tp!2203317)))

(declare-fun b!7565373 () Bool)

(assert (=> b!7565373 (= e!4504625 tp_is_empty!50319)))

(assert (=> b!7564515 (= tp!2202987 e!4504625)))

(declare-fun b!7565374 () Bool)

(declare-fun tp!2203318 () Bool)

(declare-fun tp!2203315 () Bool)

(assert (=> b!7565374 (= e!4504625 (and tp!2203318 tp!2203315))))

(declare-fun b!7565376 () Bool)

(declare-fun tp!2203314 () Bool)

(declare-fun tp!2203316 () Bool)

(assert (=> b!7565376 (= e!4504625 (and tp!2203314 tp!2203316))))

(assert (= (and b!7564515 (is-ElementMatch!19982 (regTwo!40476 (reg!20311 r!24333)))) b!7565373))

(assert (= (and b!7564515 (is-Concat!28827 (regTwo!40476 (reg!20311 r!24333)))) b!7565374))

(assert (= (and b!7564515 (is-Star!19982 (regTwo!40476 (reg!20311 r!24333)))) b!7565375))

(assert (= (and b!7564515 (is-Union!19982 (regTwo!40476 (reg!20311 r!24333)))) b!7565376))

(declare-fun b!7565379 () Bool)

(declare-fun e!4504626 () Bool)

(declare-fun tp!2203322 () Bool)

(assert (=> b!7565379 (= e!4504626 tp!2203322)))

(declare-fun b!7565377 () Bool)

(assert (=> b!7565377 (= e!4504626 tp_is_empty!50319)))

(assert (=> b!7564524 (= tp!2202999 e!4504626)))

(declare-fun b!7565378 () Bool)

(declare-fun tp!2203323 () Bool)

(declare-fun tp!2203320 () Bool)

(assert (=> b!7565378 (= e!4504626 (and tp!2203323 tp!2203320))))

(declare-fun b!7565380 () Bool)

(declare-fun tp!2203319 () Bool)

(declare-fun tp!2203321 () Bool)

(assert (=> b!7565380 (= e!4504626 (and tp!2203319 tp!2203321))))

(assert (= (and b!7564524 (is-ElementMatch!19982 (reg!20311 (regTwo!40476 baseR!101)))) b!7565377))

(assert (= (and b!7564524 (is-Concat!28827 (reg!20311 (regTwo!40476 baseR!101)))) b!7565378))

(assert (= (and b!7564524 (is-Star!19982 (reg!20311 (regTwo!40476 baseR!101)))) b!7565379))

(assert (= (and b!7564524 (is-Union!19982 (reg!20311 (regTwo!40476 baseR!101)))) b!7565380))

(declare-fun b!7565383 () Bool)

(declare-fun e!4504627 () Bool)

(declare-fun tp!2203327 () Bool)

(assert (=> b!7565383 (= e!4504627 tp!2203327)))

(declare-fun b!7565381 () Bool)

(assert (=> b!7565381 (= e!4504627 tp_is_empty!50319)))

(assert (=> b!7564554 (= tp!2203035 e!4504627)))

(declare-fun b!7565382 () Bool)

(declare-fun tp!2203328 () Bool)

(declare-fun tp!2203325 () Bool)

(assert (=> b!7565382 (= e!4504627 (and tp!2203328 tp!2203325))))

(declare-fun b!7565384 () Bool)

(declare-fun tp!2203324 () Bool)

(declare-fun tp!2203326 () Bool)

(assert (=> b!7565384 (= e!4504627 (and tp!2203324 tp!2203326))))

(assert (= (and b!7564554 (is-ElementMatch!19982 (regOne!40476 (regOne!40477 r!24333)))) b!7565381))

(assert (= (and b!7564554 (is-Concat!28827 (regOne!40476 (regOne!40477 r!24333)))) b!7565382))

(assert (= (and b!7564554 (is-Star!19982 (regOne!40476 (regOne!40477 r!24333)))) b!7565383))

(assert (= (and b!7564554 (is-Union!19982 (regOne!40476 (regOne!40477 r!24333)))) b!7565384))

(declare-fun b!7565387 () Bool)

(declare-fun e!4504628 () Bool)

(declare-fun tp!2203332 () Bool)

(assert (=> b!7565387 (= e!4504628 tp!2203332)))

(declare-fun b!7565385 () Bool)

(assert (=> b!7565385 (= e!4504628 tp_is_empty!50319)))

(assert (=> b!7564554 (= tp!2203032 e!4504628)))

(declare-fun b!7565386 () Bool)

(declare-fun tp!2203333 () Bool)

(declare-fun tp!2203330 () Bool)

(assert (=> b!7565386 (= e!4504628 (and tp!2203333 tp!2203330))))

(declare-fun b!7565388 () Bool)

(declare-fun tp!2203329 () Bool)

(declare-fun tp!2203331 () Bool)

(assert (=> b!7565388 (= e!4504628 (and tp!2203329 tp!2203331))))

(assert (= (and b!7564554 (is-ElementMatch!19982 (regTwo!40476 (regOne!40477 r!24333)))) b!7565385))

(assert (= (and b!7564554 (is-Concat!28827 (regTwo!40476 (regOne!40477 r!24333)))) b!7565386))

(assert (= (and b!7564554 (is-Star!19982 (regTwo!40476 (regOne!40477 r!24333)))) b!7565387))

(assert (= (and b!7564554 (is-Union!19982 (regTwo!40476 (regOne!40477 r!24333)))) b!7565388))

(declare-fun b!7565391 () Bool)

(declare-fun e!4504629 () Bool)

(declare-fun tp!2203337 () Bool)

(assert (=> b!7565391 (= e!4504629 tp!2203337)))

(declare-fun b!7565389 () Bool)

(assert (=> b!7565389 (= e!4504629 tp_is_empty!50319)))

(assert (=> b!7564563 (= tp!2203039 e!4504629)))

(declare-fun b!7565390 () Bool)

(declare-fun tp!2203338 () Bool)

(declare-fun tp!2203335 () Bool)

(assert (=> b!7565390 (= e!4504629 (and tp!2203338 tp!2203335))))

(declare-fun b!7565392 () Bool)

(declare-fun tp!2203334 () Bool)

(declare-fun tp!2203336 () Bool)

(assert (=> b!7565392 (= e!4504629 (and tp!2203334 tp!2203336))))

(assert (= (and b!7564563 (is-ElementMatch!19982 (reg!20311 (regTwo!40477 r!24333)))) b!7565389))

(assert (= (and b!7564563 (is-Concat!28827 (reg!20311 (regTwo!40477 r!24333)))) b!7565390))

(assert (= (and b!7564563 (is-Star!19982 (reg!20311 (regTwo!40477 r!24333)))) b!7565391))

(assert (= (and b!7564563 (is-Union!19982 (reg!20311 (regTwo!40477 r!24333)))) b!7565392))

(declare-fun b!7565395 () Bool)

(declare-fun e!4504630 () Bool)

(declare-fun tp!2203342 () Bool)

(assert (=> b!7565395 (= e!4504630 tp!2203342)))

(declare-fun b!7565393 () Bool)

(assert (=> b!7565393 (= e!4504630 tp_is_empty!50319)))

(assert (=> b!7564564 (= tp!2203036 e!4504630)))

(declare-fun b!7565394 () Bool)

(declare-fun tp!2203343 () Bool)

(declare-fun tp!2203340 () Bool)

(assert (=> b!7565394 (= e!4504630 (and tp!2203343 tp!2203340))))

(declare-fun b!7565396 () Bool)

(declare-fun tp!2203339 () Bool)

(declare-fun tp!2203341 () Bool)

(assert (=> b!7565396 (= e!4504630 (and tp!2203339 tp!2203341))))

(assert (= (and b!7564564 (is-ElementMatch!19982 (regOne!40477 (regTwo!40477 r!24333)))) b!7565393))

(assert (= (and b!7564564 (is-Concat!28827 (regOne!40477 (regTwo!40477 r!24333)))) b!7565394))

(assert (= (and b!7564564 (is-Star!19982 (regOne!40477 (regTwo!40477 r!24333)))) b!7565395))

(assert (= (and b!7564564 (is-Union!19982 (regOne!40477 (regTwo!40477 r!24333)))) b!7565396))

(declare-fun b!7565399 () Bool)

(declare-fun e!4504631 () Bool)

(declare-fun tp!2203347 () Bool)

(assert (=> b!7565399 (= e!4504631 tp!2203347)))

(declare-fun b!7565397 () Bool)

(assert (=> b!7565397 (= e!4504631 tp_is_empty!50319)))

(assert (=> b!7564564 (= tp!2203038 e!4504631)))

(declare-fun b!7565398 () Bool)

(declare-fun tp!2203348 () Bool)

(declare-fun tp!2203345 () Bool)

(assert (=> b!7565398 (= e!4504631 (and tp!2203348 tp!2203345))))

(declare-fun b!7565400 () Bool)

(declare-fun tp!2203344 () Bool)

(declare-fun tp!2203346 () Bool)

(assert (=> b!7565400 (= e!4504631 (and tp!2203344 tp!2203346))))

(assert (= (and b!7564564 (is-ElementMatch!19982 (regTwo!40477 (regTwo!40477 r!24333)))) b!7565397))

(assert (= (and b!7564564 (is-Concat!28827 (regTwo!40477 (regTwo!40477 r!24333)))) b!7565398))

(assert (= (and b!7564564 (is-Star!19982 (regTwo!40477 (regTwo!40477 r!24333)))) b!7565399))

(assert (= (and b!7564564 (is-Union!19982 (regTwo!40477 (regTwo!40477 r!24333)))) b!7565400))

(declare-fun b!7565403 () Bool)

(declare-fun e!4504632 () Bool)

(declare-fun tp!2203352 () Bool)

(assert (=> b!7565403 (= e!4504632 tp!2203352)))

(declare-fun b!7565401 () Bool)

(assert (=> b!7565401 (= e!4504632 tp_is_empty!50319)))

(assert (=> b!7564523 (= tp!2203000 e!4504632)))

(declare-fun b!7565402 () Bool)

(declare-fun tp!2203353 () Bool)

(declare-fun tp!2203350 () Bool)

(assert (=> b!7565402 (= e!4504632 (and tp!2203353 tp!2203350))))

(declare-fun b!7565404 () Bool)

(declare-fun tp!2203349 () Bool)

(declare-fun tp!2203351 () Bool)

(assert (=> b!7565404 (= e!4504632 (and tp!2203349 tp!2203351))))

(assert (= (and b!7564523 (is-ElementMatch!19982 (regOne!40476 (regTwo!40476 baseR!101)))) b!7565401))

(assert (= (and b!7564523 (is-Concat!28827 (regOne!40476 (regTwo!40476 baseR!101)))) b!7565402))

(assert (= (and b!7564523 (is-Star!19982 (regOne!40476 (regTwo!40476 baseR!101)))) b!7565403))

(assert (= (and b!7564523 (is-Union!19982 (regOne!40476 (regTwo!40476 baseR!101)))) b!7565404))

(declare-fun b!7565407 () Bool)

(declare-fun e!4504633 () Bool)

(declare-fun tp!2203357 () Bool)

(assert (=> b!7565407 (= e!4504633 tp!2203357)))

(declare-fun b!7565405 () Bool)

(assert (=> b!7565405 (= e!4504633 tp_is_empty!50319)))

(assert (=> b!7564523 (= tp!2202997 e!4504633)))

(declare-fun b!7565406 () Bool)

(declare-fun tp!2203358 () Bool)

(declare-fun tp!2203355 () Bool)

(assert (=> b!7565406 (= e!4504633 (and tp!2203358 tp!2203355))))

(declare-fun b!7565408 () Bool)

(declare-fun tp!2203354 () Bool)

(declare-fun tp!2203356 () Bool)

(assert (=> b!7565408 (= e!4504633 (and tp!2203354 tp!2203356))))

(assert (= (and b!7564523 (is-ElementMatch!19982 (regTwo!40476 (regTwo!40476 baseR!101)))) b!7565405))

(assert (= (and b!7564523 (is-Concat!28827 (regTwo!40476 (regTwo!40476 baseR!101)))) b!7565406))

(assert (= (and b!7564523 (is-Star!19982 (regTwo!40476 (regTwo!40476 baseR!101)))) b!7565407))

(assert (= (and b!7564523 (is-Union!19982 (regTwo!40476 (regTwo!40476 baseR!101)))) b!7565408))

(push 1)

(assert (not b!7565221))

(assert (not d!2316127))

(assert (not b!7565258))

(assert (not b!7564880))

(assert (not bm!693528))

(assert (not b!7564959))

(assert (not b!7565364))

(assert (not b!7565213))

(assert (not bm!693563))

(assert (not b!7565302))

(assert (not b!7564905))

(assert (not d!2315927))

(assert (not bm!693561))

(assert (not b!7564945))

(assert (not b!7564934))

(assert (not b!7565003))

(assert (not b!7564937))

(assert (not b!7565077))

(assert (not b!7564898))

(assert (not b!7565248))

(assert (not d!2316011))

(assert (not bm!693526))

(assert (not bm!693547))

(assert (not bm!693525))

(assert (not b!7565236))

(assert (not b!7564882))

(assert (not bm!693550))

(assert (not d!2316061))

(assert (not b!7565378))

(assert (not b!7565374))

(assert (not b!7565352))

(assert (not b!7565391))

(assert (not b!7565275))

(assert (not b!7565404))

(assert (not b!7565367))

(assert (not b!7565171))

(assert (not b!7564847))

(assert (not d!2316019))

(assert (not b!7565011))

(assert (not b!7565406))

(assert (not b!7564787))

(assert (not b!7565124))

(assert (not b!7565125))

(assert tp_is_empty!50319)

(assert (not b!7565089))

(assert (not b!7565216))

(assert (not d!2316035))

(assert (not b!7565061))

(assert (not b!7565170))

(assert (not b!7565238))

(assert (not b!7565232))

(assert (not d!2315925))

(assert (not b!7565360))

(assert (not b!7565207))

(assert (not d!2316059))

(assert (not b!7565273))

(assert (not b!7565218))

(assert (not b!7565212))

(assert (not b!7565099))

(assert (not b!7565281))

(assert (not bm!693537))

(assert (not b!7565015))

(assert (not b!7565293))

(assert (not b!7565274))

(assert (not d!2316119))

(assert (not b!7565230))

(assert (not d!2316121))

(assert (not b!7565045))

(assert (not b!7564843))

(assert (not b!7564826))

(assert (not d!2316085))

(assert (not b!7565298))

(assert (not b!7564983))

(assert (not b!7565043))

(assert (not d!2315935))

(assert (not b!7565383))

(assert (not d!2315955))

(assert (not b!7565229))

(assert (not b!7565301))

(assert (not bm!693513))

(assert (not b!7565350))

(assert (not bm!693568))

(assert (not b!7565356))

(assert (not d!2316047))

(assert (not b!7564957))

(assert (not d!2315903))

(assert (not d!2316067))

(assert (not b!7565376))

(assert (not b!7565294))

(assert (not b!7564876))

(assert (not bm!693533))

(assert (not b!7565285))

(assert (not b!7565390))

(assert (not b!7565315))

(assert (not b!7565107))

(assert (not b!7564881))

(assert (not b!7565222))

(assert (not bm!693554))

(assert (not b!7565392))

(assert (not bm!693569))

(assert (not bm!693549))

(assert (not d!2315907))

(assert (not bm!693522))

(assert (not b!7565326))

(assert (not b!7565254))

(assert (not b!7565277))

(assert (not b!7564926))

(assert (not b!7565306))

(assert (not bm!693542))

(assert (not b!7565362))

(assert (not b!7565287))

(assert (not b!7565253))

(assert (not b!7565314))

(assert (not d!2316069))

(assert (not b!7564800))

(assert (not b!7565017))

(assert (not b!7564894))

(assert (not bm!693523))

(assert (not b!7565240))

(assert (not b!7565395))

(assert (not b!7565160))

(assert (not b!7564963))

(assert (not b!7565317))

(assert (not b!7565342))

(assert (not b!7565400))

(assert (not b!7564855))

(assert (not b!7565244))

(assert (not b!7564809))

(assert (not b!7565102))

(assert (not b!7565303))

(assert (not b!7565343))

(assert (not b!7565325))

(assert (not b!7565382))

(assert (not d!2315979))

(assert (not b!7565290))

(assert (not b!7565366))

(assert (not b!7565271))

(assert (not b!7565201))

(assert (not d!2315945))

(assert (not b!7564932))

(assert (not b!7564922))

(assert (not b!7565150))

(assert (not b!7564789))

(assert (not b!7565307))

(assert (not b!7565260))

(assert (not b!7565380))

(assert (not b!7565355))

(assert (not b!7565403))

(assert (not b!7565249))

(assert (not b!7565208))

(assert (not b!7565228))

(assert (not b!7565066))

(assert (not d!2315905))

(assert (not b!7565220))

(assert (not b!7565394))

(assert (not b!7564893))

(assert (not b!7565289))

(assert (not d!2316117))

(assert (not b!7565384))

(assert (not b!7565144))

(assert (not b!7565041))

(assert (not b!7565282))

(assert (not b!7565329))

(assert (not b!7564965))

(assert (not b!7565224))

(assert (not b!7565305))

(assert (not b!7565372))

(assert (not b!7565013))

(assert (not b!7564936))

(assert (not b!7564819))

(assert (not b!7565162))

(assert (not b!7564845))

(assert (not b!7565128))

(assert (not b!7565323))

(assert (not b!7565334))

(assert (not d!2316133))

(assert (not b!7565264))

(assert (not b!7565345))

(assert (not b!7564861))

(assert (not b!7565333))

(assert (not b!7564867))

(assert (not bm!693557))

(assert (not b!7564988))

(assert (not bm!693510))

(assert (not b!7565047))

(assert (not bm!693552))

(assert (not b!7565408))

(assert (not bm!693545))

(assert (not b!7565079))

(assert (not d!2316115))

(assert (not b!7564868))

(assert (not b!7565033))

(assert (not b!7565073))

(assert (not d!2315999))

(assert (not b!7565126))

(assert (not b!7565269))

(assert (not b!7565309))

(assert (not b!7564916))

(assert (not b!7565359))

(assert (not b!7565261))

(assert (not d!2315957))

(assert (not b!7565299))

(assert (not b!7565031))

(assert (not b!7565245))

(assert (not b!7564989))

(assert (not b!7564975))

(assert (not b!7565398))

(assert (not b!7565388))

(assert (not b!7565195))

(assert (not d!2316077))

(assert (not b!7565330))

(assert (not b!7565368))

(assert (not b!7565396))

(assert (not b!7565081))

(assert (not b!7564990))

(assert (not b!7564981))

(assert (not b!7565093))

(assert (not b!7565225))

(assert (not b!7565158))

(assert (not bm!693535))

(assert (not b!7565196))

(assert (not b!7565399))

(assert (not b!7564944))

(assert (not d!2316135))

(assert (not b!7564790))

(assert (not b!7564940))

(assert (not b!7565311))

(assert (not b!7565057))

(assert (not b!7565120))

(assert (not d!2315933))

(assert (not b!7565202))

(assert (not b!7565321))

(assert (not d!2315989))

(assert (not d!2316071))

(assert (not b!7565268))

(assert (not b!7565108))

(assert (not b!7565234))

(assert (not b!7565163))

(assert (not bm!693560))

(assert (not b!7564927))

(assert (not bm!693519))

(assert (not b!7565205))

(assert (not b!7565101))

(assert (not bm!693531))

(assert (not d!2315899))

(assert (not b!7565256))

(assert (not b!7565062))

(assert (not b!7565211))

(assert (not b!7564987))

(assert (not d!2316037))

(assert (not d!2316017))

(assert (not b!7564797))

(assert (not b!7564835))

(assert (not b!7564897))

(assert (not b!7565370))

(assert (not b!7565265))

(assert (not b!7565354))

(assert (not d!2315963))

(assert (not b!7565009))

(assert (not b!7565071))

(assert (not b!7565335))

(assert (not b!7565313))

(assert (not b!7564858))

(assert (not b!7565279))

(assert (not b!7565226))

(assert (not b!7565209))

(assert (not b!7565358))

(assert (not b!7564930))

(assert (not bm!693512))

(assert (not b!7565266))

(assert (not b!7565113))

(assert (not d!2316129))

(assert (not b!7564863))

(assert (not bm!693555))

(assert (not b!7565237))

(assert (not d!2315901))

(assert (not b!7565347))

(assert (not b!7565351))

(assert (not b!7565035))

(assert (not d!2316131))

(assert (not b!7565039))

(assert (not b!7564912))

(assert (not d!2316049))

(assert (not b!7565371))

(assert (not b!7564979))

(assert (not b!7565025))

(assert (not b!7564798))

(assert (not d!2315883))

(assert (not b!7565007))

(assert (not b!7565262))

(assert (not b!7565286))

(assert (not d!2316063))

(assert (not b!7565407))

(assert (not b!7564889))

(assert (not b!7565295))

(assert (not b!7565339))

(assert (not bm!693558))

(assert (not b!7565241))

(assert (not b!7564961))

(assert (not b!7565387))

(assert (not b!7564942))

(assert (not b!7564794))

(assert (not b!7565252))

(assert (not b!7565148))

(assert (not bm!693544))

(assert (not d!2316125))

(assert (not b!7564999))

(assert (not b!7565310))

(assert (not b!7564967))

(assert (not b!7565028))

(assert (not b!7564817))

(assert (not d!2316045))

(assert (not b!7565327))

(assert (not d!2315959))

(assert (not b!7564953))

(assert (not d!2315909))

(assert (not b!7565278))

(assert (not b!7565152))

(assert (not b!7565349))

(assert (not b!7564917))

(assert (not b!7565198))

(assert (not b!7565105))

(assert (not b!7565319))

(assert (not b!7565075))

(assert (not b!7565065))

(assert (not b!7565167))

(assert (not d!2315971))

(assert (not d!2315987))

(assert (not b!7565214))

(assert (not b!7564933))

(assert (not b!7565250))

(assert (not b!7565318))

(assert (not bm!693507))

(assert (not bm!693509))

(assert (not b!7565233))

(assert (not b!7565346))

(assert (not b!7565097))

(assert (not b!7565154))

(assert (not b!7564793))

(assert (not b!7564813))

(assert (not b!7565331))

(assert (not d!2315895))

(assert (not b!7565386))

(assert (not b!7565375))

(assert (not b!7565217))

(assert (not b!7565156))

(assert (not b!7564985))

(assert (not b!7565242))

(assert (not b!7564785))

(assert (not b!7565337))

(assert (not b!7564865))

(assert (not d!2316065))

(assert (not b!7565135))

(assert (not b!7565402))

(assert (not d!2316123))

(assert (not b!7565291))

(assert (not bm!693520))

(assert (not b!7565111))

(assert (not b!7565379))

(assert (not b!7565322))

(assert (not bm!693529))

(assert (not b!7565297))

(assert (not b!7564903))

(assert (not b!7564984))

(assert (not b!7565166))

(assert (not b!7564900))

(assert (not b!7565151))

(assert (not bm!693540))

(assert (not b!7564920))

(assert (not b!7564924))

(assert (not b!7565246))

(assert (not b!7565094))

(assert (not bm!693515))

(assert (not bm!693517))

(assert (not b!7565283))

(assert (not b!7565338))

(assert (not d!2315997))

(assert (not b!7565257))

(assert (not b!7565341))

(assert (not b!7565049))

(assert (not b!7565270))

(assert (not bm!693539))

(assert (not b!7565363))

(assert (not b!7564814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

