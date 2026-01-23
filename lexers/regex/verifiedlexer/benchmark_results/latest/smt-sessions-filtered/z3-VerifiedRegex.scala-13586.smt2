; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730376 () Bool)

(assert start!730376)

(declare-fun b!7554918 () Bool)

(declare-fun res!3028034 () Bool)

(declare-fun e!4499773 () Bool)

(assert (=> b!7554918 (=> res!3028034 e!4499773)))

(declare-datatypes ((C!40260 0))(
  ( (C!40261 (val!30570 Int)) )
))
(declare-datatypes ((Regex!19967 0))(
  ( (ElementMatch!19967 (c!1394294 C!40260)) (Concat!28812 (regOne!40446 Regex!19967) (regTwo!40446 Regex!19967)) (EmptyExpr!19967) (Star!19967 (reg!20296 Regex!19967)) (EmptyLang!19967) (Union!19967 (regOne!40447 Regex!19967) (regTwo!40447 Regex!19967)) )
))
(declare-fun r!24333 () Regex!19967)

(declare-fun lostCause!1755 (Regex!19967) Bool)

(assert (=> b!7554918 (= res!3028034 (lostCause!1755 r!24333))))

(declare-fun b!7554919 () Bool)

(declare-fun res!3028037 () Bool)

(declare-fun e!4499779 () Bool)

(assert (=> b!7554919 (=> (not res!3028037) (not e!4499779))))

(declare-datatypes ((List!72850 0))(
  ( (Nil!72726) (Cons!72726 (h!79174 C!40260) (t!387575 List!72850)) )
))
(declare-fun knownP!30 () List!72850)

(declare-fun input!7874 () List!72850)

(declare-fun isPrefix!6173 (List!72850 List!72850) Bool)

(assert (=> b!7554919 (= res!3028037 (isPrefix!6173 knownP!30 input!7874))))

(declare-fun b!7554920 () Bool)

(declare-fun res!3028039 () Bool)

(assert (=> b!7554920 (=> (not res!3028039) (not e!4499779))))

(declare-fun testedP!423 () List!72850)

(assert (=> b!7554920 (= res!3028039 (isPrefix!6173 testedP!423 input!7874))))

(declare-fun b!7554921 () Bool)

(declare-fun e!4499778 () Bool)

(declare-fun tp!2198308 () Bool)

(declare-fun tp!2198312 () Bool)

(assert (=> b!7554921 (= e!4499778 (and tp!2198308 tp!2198312))))

(declare-fun res!3028032 () Bool)

(assert (=> start!730376 (=> (not res!3028032) (not e!4499779))))

(declare-fun baseR!101 () Regex!19967)

(declare-fun validRegex!10395 (Regex!19967) Bool)

(assert (=> start!730376 (= res!3028032 (validRegex!10395 baseR!101))))

(assert (=> start!730376 e!4499779))

(declare-fun e!4499772 () Bool)

(assert (=> start!730376 e!4499772))

(declare-fun e!4499777 () Bool)

(assert (=> start!730376 e!4499777))

(declare-fun e!4499774 () Bool)

(assert (=> start!730376 e!4499774))

(declare-fun e!4499775 () Bool)

(assert (=> start!730376 e!4499775))

(assert (=> start!730376 e!4499778))

(declare-fun b!7554922 () Bool)

(declare-fun tp!2198309 () Bool)

(assert (=> b!7554922 (= e!4499772 tp!2198309)))

(declare-fun b!7554923 () Bool)

(declare-fun tp!2198301 () Bool)

(declare-fun tp!2198303 () Bool)

(assert (=> b!7554923 (= e!4499772 (and tp!2198301 tp!2198303))))

(declare-fun b!7554924 () Bool)

(declare-fun tp_is_empty!50289 () Bool)

(assert (=> b!7554924 (= e!4499778 tp_is_empty!50289)))

(declare-fun b!7554925 () Bool)

(declare-fun tp!2198306 () Bool)

(declare-fun tp!2198310 () Bool)

(assert (=> b!7554925 (= e!4499778 (and tp!2198306 tp!2198310))))

(declare-fun b!7554926 () Bool)

(declare-fun tp!2198302 () Bool)

(assert (=> b!7554926 (= e!4499774 (and tp_is_empty!50289 tp!2198302))))

(declare-fun b!7554927 () Bool)

(declare-fun res!3028035 () Bool)

(assert (=> b!7554927 (=> res!3028035 e!4499773)))

(declare-fun lt!2647825 () Int)

(declare-fun lt!2647822 () Int)

(assert (=> b!7554927 (= res!3028035 (= lt!2647825 lt!2647822))))

(declare-fun b!7554928 () Bool)

(declare-fun e!4499776 () Bool)

(assert (=> b!7554928 (= e!4499776 (not e!4499773))))

(declare-fun res!3028038 () Bool)

(assert (=> b!7554928 (=> res!3028038 e!4499773)))

(declare-fun matchR!9569 (Regex!19967 List!72850) Bool)

(declare-fun getSuffix!3651 (List!72850 List!72850) List!72850)

(assert (=> b!7554928 (= res!3028038 (not (matchR!9569 r!24333 (getSuffix!3651 knownP!30 testedP!423))))))

(assert (=> b!7554928 (isPrefix!6173 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166868 0))(
  ( (Unit!166869) )
))
(declare-fun lt!2647826 () Unit!166868)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!921 (List!72850 List!72850 List!72850) Unit!166868)

(assert (=> b!7554928 (= lt!2647826 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!921 knownP!30 testedP!423 input!7874))))

(declare-fun b!7554929 () Bool)

(declare-fun tp!2198304 () Bool)

(declare-fun tp!2198305 () Bool)

(assert (=> b!7554929 (= e!4499772 (and tp!2198304 tp!2198305))))

(declare-fun b!7554930 () Bool)

(assert (=> b!7554930 (= e!4499773 (<= lt!2647825 lt!2647822))))

(declare-fun lt!2647821 () C!40260)

(declare-fun lt!2647823 () List!72850)

(declare-fun derivative!497 (Regex!19967 List!72850) Regex!19967)

(declare-fun derivativeStep!5745 (Regex!19967 C!40260) Regex!19967)

(assert (=> b!7554930 (= (derivative!497 baseR!101 lt!2647823) (derivativeStep!5745 r!24333 lt!2647821))))

(declare-fun lt!2647824 () Unit!166868)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!189 (Regex!19967 Regex!19967 List!72850 C!40260) Unit!166868)

(assert (=> b!7554930 (= lt!2647824 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!189 baseR!101 r!24333 testedP!423 lt!2647821))))

(assert (=> b!7554930 (isPrefix!6173 lt!2647823 input!7874)))

(declare-fun lt!2647820 () Unit!166868)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1222 (List!72850 List!72850) Unit!166868)

(assert (=> b!7554930 (= lt!2647820 (lemmaAddHeadSuffixToPrefixStillPrefix!1222 testedP!423 input!7874))))

(declare-fun ++!17471 (List!72850 List!72850) List!72850)

(assert (=> b!7554930 (= lt!2647823 (++!17471 testedP!423 (Cons!72726 lt!2647821 Nil!72726)))))

(declare-fun head!15545 (List!72850) C!40260)

(assert (=> b!7554930 (= lt!2647821 (head!15545 (getSuffix!3651 input!7874 testedP!423)))))

(declare-fun b!7554931 () Bool)

(declare-fun tp!2198313 () Bool)

(assert (=> b!7554931 (= e!4499777 (and tp_is_empty!50289 tp!2198313))))

(declare-fun b!7554932 () Bool)

(declare-fun res!3028040 () Bool)

(assert (=> b!7554932 (=> res!3028040 e!4499773)))

(assert (=> b!7554932 (= res!3028040 (not (= (derivative!497 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7554933 () Bool)

(declare-fun res!3028036 () Bool)

(assert (=> b!7554933 (=> res!3028036 e!4499773)))

(declare-fun size!42463 (List!72850) Int)

(assert (=> b!7554933 (= res!3028036 (>= lt!2647825 (size!42463 input!7874)))))

(declare-fun b!7554934 () Bool)

(assert (=> b!7554934 (= e!4499779 e!4499776)))

(declare-fun res!3028041 () Bool)

(assert (=> b!7554934 (=> (not res!3028041) (not e!4499776))))

(assert (=> b!7554934 (= res!3028041 (>= lt!2647822 lt!2647825))))

(assert (=> b!7554934 (= lt!2647825 (size!42463 testedP!423))))

(assert (=> b!7554934 (= lt!2647822 (size!42463 knownP!30))))

(declare-fun b!7554935 () Bool)

(declare-fun tp!2198311 () Bool)

(assert (=> b!7554935 (= e!4499778 tp!2198311)))

(declare-fun b!7554936 () Bool)

(assert (=> b!7554936 (= e!4499772 tp_is_empty!50289)))

(declare-fun b!7554937 () Bool)

(declare-fun res!3028042 () Bool)

(assert (=> b!7554937 (=> (not res!3028042) (not e!4499779))))

(assert (=> b!7554937 (= res!3028042 (validRegex!10395 r!24333))))

(declare-fun b!7554938 () Bool)

(declare-fun res!3028033 () Bool)

(assert (=> b!7554938 (=> (not res!3028033) (not e!4499776))))

(assert (=> b!7554938 (= res!3028033 (matchR!9569 baseR!101 knownP!30))))

(declare-fun b!7554939 () Bool)

(declare-fun tp!2198307 () Bool)

(assert (=> b!7554939 (= e!4499775 (and tp_is_empty!50289 tp!2198307))))

(assert (= (and start!730376 res!3028032) b!7554937))

(assert (= (and b!7554937 res!3028042) b!7554920))

(assert (= (and b!7554920 res!3028039) b!7554919))

(assert (= (and b!7554919 res!3028037) b!7554934))

(assert (= (and b!7554934 res!3028041) b!7554938))

(assert (= (and b!7554938 res!3028033) b!7554928))

(assert (= (and b!7554928 (not res!3028038)) b!7554932))

(assert (= (and b!7554932 (not res!3028040)) b!7554918))

(assert (= (and b!7554918 (not res!3028034)) b!7554927))

(assert (= (and b!7554927 (not res!3028035)) b!7554933))

(assert (= (and b!7554933 (not res!3028036)) b!7554930))

(get-info :version)

(assert (= (and start!730376 ((_ is ElementMatch!19967) baseR!101)) b!7554936))

(assert (= (and start!730376 ((_ is Concat!28812) baseR!101)) b!7554929))

(assert (= (and start!730376 ((_ is Star!19967) baseR!101)) b!7554922))

(assert (= (and start!730376 ((_ is Union!19967) baseR!101)) b!7554923))

(assert (= (and start!730376 ((_ is Cons!72726) input!7874)) b!7554931))

(assert (= (and start!730376 ((_ is Cons!72726) knownP!30)) b!7554926))

(assert (= (and start!730376 ((_ is Cons!72726) testedP!423)) b!7554939))

(assert (= (and start!730376 ((_ is ElementMatch!19967) r!24333)) b!7554924))

(assert (= (and start!730376 ((_ is Concat!28812) r!24333)) b!7554925))

(assert (= (and start!730376 ((_ is Star!19967) r!24333)) b!7554935))

(assert (= (and start!730376 ((_ is Union!19967) r!24333)) b!7554921))

(declare-fun m!8120918 () Bool)

(assert (=> b!7554934 m!8120918))

(declare-fun m!8120920 () Bool)

(assert (=> b!7554934 m!8120920))

(declare-fun m!8120922 () Bool)

(assert (=> b!7554930 m!8120922))

(declare-fun m!8120924 () Bool)

(assert (=> b!7554930 m!8120924))

(declare-fun m!8120926 () Bool)

(assert (=> b!7554930 m!8120926))

(declare-fun m!8120928 () Bool)

(assert (=> b!7554930 m!8120928))

(declare-fun m!8120930 () Bool)

(assert (=> b!7554930 m!8120930))

(assert (=> b!7554930 m!8120926))

(declare-fun m!8120932 () Bool)

(assert (=> b!7554930 m!8120932))

(declare-fun m!8120934 () Bool)

(assert (=> b!7554930 m!8120934))

(declare-fun m!8120936 () Bool)

(assert (=> b!7554930 m!8120936))

(declare-fun m!8120938 () Bool)

(assert (=> b!7554918 m!8120938))

(declare-fun m!8120940 () Bool)

(assert (=> b!7554919 m!8120940))

(declare-fun m!8120942 () Bool)

(assert (=> b!7554933 m!8120942))

(declare-fun m!8120944 () Bool)

(assert (=> b!7554938 m!8120944))

(declare-fun m!8120946 () Bool)

(assert (=> b!7554937 m!8120946))

(declare-fun m!8120948 () Bool)

(assert (=> b!7554928 m!8120948))

(assert (=> b!7554928 m!8120948))

(declare-fun m!8120950 () Bool)

(assert (=> b!7554928 m!8120950))

(declare-fun m!8120952 () Bool)

(assert (=> b!7554928 m!8120952))

(declare-fun m!8120954 () Bool)

(assert (=> b!7554928 m!8120954))

(declare-fun m!8120956 () Bool)

(assert (=> b!7554932 m!8120956))

(declare-fun m!8120958 () Bool)

(assert (=> start!730376 m!8120958))

(declare-fun m!8120960 () Bool)

(assert (=> b!7554920 m!8120960))

(check-sat (not b!7554931) (not b!7554935) (not start!730376) (not b!7554919) (not b!7554918) (not b!7554920) (not b!7554925) (not b!7554932) (not b!7554922) (not b!7554938) (not b!7554928) (not b!7554930) (not b!7554923) (not b!7554933) (not b!7554921) tp_is_empty!50289 (not b!7554939) (not b!7554929) (not b!7554926) (not b!7554934) (not b!7554937))
(check-sat)
