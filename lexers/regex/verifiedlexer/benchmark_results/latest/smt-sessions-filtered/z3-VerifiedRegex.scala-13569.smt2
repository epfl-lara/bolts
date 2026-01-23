; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729784 () Bool)

(assert start!729784)

(declare-fun b!7546984 () Bool)

(declare-fun e!4495975 () Bool)

(declare-fun tp_is_empty!50221 () Bool)

(assert (=> b!7546984 (= e!4495975 tp_is_empty!50221)))

(declare-fun b!7546985 () Bool)

(declare-fun res!3024905 () Bool)

(declare-fun e!4495968 () Bool)

(assert (=> b!7546985 (=> (not res!3024905) (not e!4495968))))

(declare-datatypes ((C!40192 0))(
  ( (C!40193 (val!30536 Int)) )
))
(declare-datatypes ((List!72816 0))(
  ( (Nil!72692) (Cons!72692 (h!79140 C!40192) (t!387533 List!72816)) )
))
(declare-fun testedP!423 () List!72816)

(declare-fun input!7874 () List!72816)

(declare-fun isPrefix!6139 (List!72816 List!72816) Bool)

(assert (=> b!7546985 (= res!3024905 (isPrefix!6139 testedP!423 input!7874))))

(declare-fun b!7546986 () Bool)

(declare-fun res!3024908 () Bool)

(assert (=> b!7546986 (=> (not res!3024908) (not e!4495968))))

(declare-datatypes ((Regex!19933 0))(
  ( (ElementMatch!19933 (c!1393060 C!40192)) (Concat!28778 (regOne!40378 Regex!19933) (regTwo!40378 Regex!19933)) (EmptyExpr!19933) (Star!19933 (reg!20262 Regex!19933)) (EmptyLang!19933) (Union!19933 (regOne!40379 Regex!19933) (regTwo!40379 Regex!19933)) )
))
(declare-fun r!24333 () Regex!19933)

(declare-fun validRegex!10361 (Regex!19933) Bool)

(assert (=> b!7546986 (= res!3024908 (validRegex!10361 r!24333))))

(declare-fun b!7546987 () Bool)

(declare-fun e!4495971 () Bool)

(declare-fun tp!2195439 () Bool)

(declare-fun tp!2195441 () Bool)

(assert (=> b!7546987 (= e!4495971 (and tp!2195439 tp!2195441))))

(declare-fun b!7546989 () Bool)

(declare-fun res!3024909 () Bool)

(declare-fun e!4495970 () Bool)

(assert (=> b!7546989 (=> res!3024909 e!4495970)))

(declare-fun lostCause!1725 (Regex!19933) Bool)

(assert (=> b!7546989 (= res!3024909 (lostCause!1725 r!24333))))

(declare-fun b!7546990 () Bool)

(declare-fun e!4495973 () Bool)

(declare-fun tp!2195434 () Bool)

(assert (=> b!7546990 (= e!4495973 (and tp_is_empty!50221 tp!2195434))))

(declare-fun b!7546991 () Bool)

(declare-fun tp!2195440 () Bool)

(assert (=> b!7546991 (= e!4495971 tp!2195440)))

(declare-fun b!7546992 () Bool)

(declare-fun res!3024903 () Bool)

(assert (=> b!7546992 (=> (not res!3024903) (not e!4495968))))

(declare-fun knownP!30 () List!72816)

(assert (=> b!7546992 (= res!3024903 (isPrefix!6139 knownP!30 input!7874))))

(declare-fun b!7546993 () Bool)

(declare-fun tp!2195430 () Bool)

(declare-fun tp!2195436 () Bool)

(assert (=> b!7546993 (= e!4495975 (and tp!2195430 tp!2195436))))

(declare-fun b!7546994 () Bool)

(declare-fun tp!2195437 () Bool)

(assert (=> b!7546994 (= e!4495975 tp!2195437)))

(declare-fun b!7546995 () Bool)

(declare-fun res!3024910 () Bool)

(declare-fun e!4495974 () Bool)

(assert (=> b!7546995 (=> (not res!3024910) (not e!4495974))))

(declare-fun baseR!101 () Regex!19933)

(declare-fun matchR!9535 (Regex!19933 List!72816) Bool)

(assert (=> b!7546995 (= res!3024910 (matchR!9535 baseR!101 knownP!30))))

(declare-fun b!7546996 () Bool)

(declare-fun e!4495969 () Bool)

(declare-fun tp!2195435 () Bool)

(assert (=> b!7546996 (= e!4495969 (and tp_is_empty!50221 tp!2195435))))

(declare-fun b!7546997 () Bool)

(assert (=> b!7546997 (= e!4495971 tp_is_empty!50221)))

(declare-fun b!7546998 () Bool)

(declare-fun res!3024902 () Bool)

(assert (=> b!7546998 (=> res!3024902 e!4495970)))

(declare-fun lt!2645677 () Int)

(declare-fun size!42429 (List!72816) Int)

(assert (=> b!7546998 (= res!3024902 (>= lt!2645677 (size!42429 input!7874)))))

(declare-fun b!7546999 () Bool)

(declare-fun ++!17449 (List!72816 List!72816) List!72816)

(declare-fun getSuffix!3619 (List!72816 List!72816) List!72816)

(assert (=> b!7546999 (= e!4495970 (= (++!17449 knownP!30 (getSuffix!3619 input!7874 knownP!30)) input!7874))))

(declare-fun lt!2645678 () List!72816)

(declare-fun lt!2645679 () List!72816)

(assert (=> b!7546999 (= lt!2645678 (getSuffix!3619 knownP!30 lt!2645679))))

(assert (=> b!7546999 (isPrefix!6139 lt!2645679 knownP!30)))

(declare-datatypes ((Unit!166804 0))(
  ( (Unit!166805) )
))
(declare-fun lt!2645674 () Unit!166804)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!889 (List!72816 List!72816 List!72816) Unit!166804)

(assert (=> b!7546999 (= lt!2645674 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!889 knownP!30 lt!2645679 input!7874))))

(declare-fun lt!2645676 () C!40192)

(declare-fun derivative!465 (Regex!19933 List!72816) Regex!19933)

(declare-fun derivativeStep!5723 (Regex!19933 C!40192) Regex!19933)

(assert (=> b!7546999 (= (derivative!465 baseR!101 lt!2645679) (derivativeStep!5723 r!24333 lt!2645676))))

(declare-fun lt!2645675 () Unit!166804)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!167 (Regex!19933 Regex!19933 List!72816 C!40192) Unit!166804)

(assert (=> b!7546999 (= lt!2645675 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!167 baseR!101 r!24333 testedP!423 lt!2645676))))

(assert (=> b!7546999 (isPrefix!6139 lt!2645679 input!7874)))

(declare-fun lt!2645672 () Unit!166804)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1200 (List!72816 List!72816) Unit!166804)

(assert (=> b!7546999 (= lt!2645672 (lemmaAddHeadSuffixToPrefixStillPrefix!1200 testedP!423 input!7874))))

(assert (=> b!7546999 (= lt!2645679 (++!17449 testedP!423 (Cons!72692 lt!2645676 Nil!72692)))))

(declare-fun head!15523 (List!72816) C!40192)

(assert (=> b!7546999 (= lt!2645676 (head!15523 (getSuffix!3619 input!7874 testedP!423)))))

(declare-fun b!7547000 () Bool)

(declare-fun res!3024912 () Bool)

(assert (=> b!7547000 (=> res!3024912 e!4495970)))

(assert (=> b!7547000 (= res!3024912 (not (= (derivative!465 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7547001 () Bool)

(declare-fun tp!2195432 () Bool)

(declare-fun tp!2195429 () Bool)

(assert (=> b!7547001 (= e!4495971 (and tp!2195432 tp!2195429))))

(declare-fun b!7547002 () Bool)

(declare-fun res!3024906 () Bool)

(assert (=> b!7547002 (=> res!3024906 e!4495970)))

(declare-fun lt!2645680 () Int)

(assert (=> b!7547002 (= res!3024906 (= lt!2645677 lt!2645680))))

(declare-fun res!3024907 () Bool)

(assert (=> start!729784 (=> (not res!3024907) (not e!4495968))))

(assert (=> start!729784 (= res!3024907 (validRegex!10361 baseR!101))))

(assert (=> start!729784 e!4495968))

(assert (=> start!729784 e!4495971))

(declare-fun e!4495972 () Bool)

(assert (=> start!729784 e!4495972))

(assert (=> start!729784 e!4495973))

(assert (=> start!729784 e!4495969))

(assert (=> start!729784 e!4495975))

(declare-fun b!7546988 () Bool)

(declare-fun tp!2195438 () Bool)

(declare-fun tp!2195431 () Bool)

(assert (=> b!7546988 (= e!4495975 (and tp!2195438 tp!2195431))))

(declare-fun b!7547003 () Bool)

(declare-fun tp!2195433 () Bool)

(assert (=> b!7547003 (= e!4495972 (and tp_is_empty!50221 tp!2195433))))

(declare-fun b!7547004 () Bool)

(assert (=> b!7547004 (= e!4495974 (not e!4495970))))

(declare-fun res!3024911 () Bool)

(assert (=> b!7547004 (=> res!3024911 e!4495970)))

(assert (=> b!7547004 (= res!3024911 (not (matchR!9535 r!24333 (getSuffix!3619 knownP!30 testedP!423))))))

(assert (=> b!7547004 (isPrefix!6139 testedP!423 knownP!30)))

(declare-fun lt!2645673 () Unit!166804)

(assert (=> b!7547004 (= lt!2645673 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!889 knownP!30 testedP!423 input!7874))))

(declare-fun b!7547005 () Bool)

(assert (=> b!7547005 (= e!4495968 e!4495974)))

(declare-fun res!3024904 () Bool)

(assert (=> b!7547005 (=> (not res!3024904) (not e!4495974))))

(assert (=> b!7547005 (= res!3024904 (>= lt!2645680 lt!2645677))))

(assert (=> b!7547005 (= lt!2645677 (size!42429 testedP!423))))

(assert (=> b!7547005 (= lt!2645680 (size!42429 knownP!30))))

(assert (= (and start!729784 res!3024907) b!7546986))

(assert (= (and b!7546986 res!3024908) b!7546985))

(assert (= (and b!7546985 res!3024905) b!7546992))

(assert (= (and b!7546992 res!3024903) b!7547005))

(assert (= (and b!7547005 res!3024904) b!7546995))

(assert (= (and b!7546995 res!3024910) b!7547004))

(assert (= (and b!7547004 (not res!3024911)) b!7547000))

(assert (= (and b!7547000 (not res!3024912)) b!7546989))

(assert (= (and b!7546989 (not res!3024909)) b!7547002))

(assert (= (and b!7547002 (not res!3024906)) b!7546998))

(assert (= (and b!7546998 (not res!3024902)) b!7546999))

(get-info :version)

(assert (= (and start!729784 ((_ is ElementMatch!19933) baseR!101)) b!7546997))

(assert (= (and start!729784 ((_ is Concat!28778) baseR!101)) b!7547001))

(assert (= (and start!729784 ((_ is Star!19933) baseR!101)) b!7546991))

(assert (= (and start!729784 ((_ is Union!19933) baseR!101)) b!7546987))

(assert (= (and start!729784 ((_ is Cons!72692) input!7874)) b!7547003))

(assert (= (and start!729784 ((_ is Cons!72692) knownP!30)) b!7546990))

(assert (= (and start!729784 ((_ is Cons!72692) testedP!423)) b!7546996))

(assert (= (and start!729784 ((_ is ElementMatch!19933) r!24333)) b!7546984))

(assert (= (and start!729784 ((_ is Concat!28778) r!24333)) b!7546993))

(assert (= (and start!729784 ((_ is Star!19933) r!24333)) b!7546994))

(assert (= (and start!729784 ((_ is Union!19933) r!24333)) b!7546988))

(declare-fun m!8115024 () Bool)

(assert (=> b!7547004 m!8115024))

(assert (=> b!7547004 m!8115024))

(declare-fun m!8115026 () Bool)

(assert (=> b!7547004 m!8115026))

(declare-fun m!8115028 () Bool)

(assert (=> b!7547004 m!8115028))

(declare-fun m!8115030 () Bool)

(assert (=> b!7547004 m!8115030))

(declare-fun m!8115032 () Bool)

(assert (=> start!729784 m!8115032))

(declare-fun m!8115034 () Bool)

(assert (=> b!7547005 m!8115034))

(declare-fun m!8115036 () Bool)

(assert (=> b!7547005 m!8115036))

(declare-fun m!8115038 () Bool)

(assert (=> b!7547000 m!8115038))

(declare-fun m!8115040 () Bool)

(assert (=> b!7546986 m!8115040))

(declare-fun m!8115042 () Bool)

(assert (=> b!7546992 m!8115042))

(declare-fun m!8115044 () Bool)

(assert (=> b!7546999 m!8115044))

(declare-fun m!8115046 () Bool)

(assert (=> b!7546999 m!8115046))

(declare-fun m!8115048 () Bool)

(assert (=> b!7546999 m!8115048))

(declare-fun m!8115050 () Bool)

(assert (=> b!7546999 m!8115050))

(declare-fun m!8115052 () Bool)

(assert (=> b!7546999 m!8115052))

(declare-fun m!8115054 () Bool)

(assert (=> b!7546999 m!8115054))

(assert (=> b!7546999 m!8115046))

(declare-fun m!8115056 () Bool)

(assert (=> b!7546999 m!8115056))

(assert (=> b!7546999 m!8115044))

(declare-fun m!8115058 () Bool)

(assert (=> b!7546999 m!8115058))

(declare-fun m!8115060 () Bool)

(assert (=> b!7546999 m!8115060))

(declare-fun m!8115062 () Bool)

(assert (=> b!7546999 m!8115062))

(declare-fun m!8115064 () Bool)

(assert (=> b!7546999 m!8115064))

(declare-fun m!8115066 () Bool)

(assert (=> b!7546999 m!8115066))

(declare-fun m!8115068 () Bool)

(assert (=> b!7546999 m!8115068))

(declare-fun m!8115070 () Bool)

(assert (=> b!7546985 m!8115070))

(declare-fun m!8115072 () Bool)

(assert (=> b!7546989 m!8115072))

(declare-fun m!8115074 () Bool)

(assert (=> b!7546995 m!8115074))

(declare-fun m!8115076 () Bool)

(assert (=> b!7546998 m!8115076))

(check-sat (not b!7546991) (not b!7547003) (not b!7546990) (not b!7547005) (not b!7546988) (not b!7546995) (not start!729784) (not b!7546986) (not b!7547000) (not b!7546998) (not b!7546992) (not b!7546996) (not b!7546987) (not b!7546999) (not b!7546993) (not b!7547004) (not b!7546994) (not b!7546989) tp_is_empty!50221 (not b!7546985) (not b!7547001))
(check-sat)
(get-model)

(declare-fun d!2312222 () Bool)

(declare-fun e!4495983 () Bool)

(assert (=> d!2312222 e!4495983))

(declare-fun res!3024922 () Bool)

(assert (=> d!2312222 (=> res!3024922 e!4495983)))

(declare-fun lt!2645683 () Bool)

(assert (=> d!2312222 (= res!3024922 (not lt!2645683))))

(declare-fun e!4495982 () Bool)

(assert (=> d!2312222 (= lt!2645683 e!4495982)))

(declare-fun res!3024923 () Bool)

(assert (=> d!2312222 (=> res!3024923 e!4495982)))

(assert (=> d!2312222 (= res!3024923 ((_ is Nil!72692) knownP!30))))

(assert (=> d!2312222 (= (isPrefix!6139 knownP!30 input!7874) lt!2645683)))

(declare-fun b!7547014 () Bool)

(declare-fun e!4495984 () Bool)

(assert (=> b!7547014 (= e!4495982 e!4495984)))

(declare-fun res!3024924 () Bool)

(assert (=> b!7547014 (=> (not res!3024924) (not e!4495984))))

(assert (=> b!7547014 (= res!3024924 (not ((_ is Nil!72692) input!7874)))))

(declare-fun b!7547016 () Bool)

(declare-fun tail!15069 (List!72816) List!72816)

(assert (=> b!7547016 (= e!4495984 (isPrefix!6139 (tail!15069 knownP!30) (tail!15069 input!7874)))))

(declare-fun b!7547017 () Bool)

(assert (=> b!7547017 (= e!4495983 (>= (size!42429 input!7874) (size!42429 knownP!30)))))

(declare-fun b!7547015 () Bool)

(declare-fun res!3024921 () Bool)

(assert (=> b!7547015 (=> (not res!3024921) (not e!4495984))))

(assert (=> b!7547015 (= res!3024921 (= (head!15523 knownP!30) (head!15523 input!7874)))))

(assert (= (and d!2312222 (not res!3024923)) b!7547014))

(assert (= (and b!7547014 res!3024924) b!7547015))

(assert (= (and b!7547015 res!3024921) b!7547016))

(assert (= (and d!2312222 (not res!3024922)) b!7547017))

(declare-fun m!8115078 () Bool)

(assert (=> b!7547016 m!8115078))

(declare-fun m!8115080 () Bool)

(assert (=> b!7547016 m!8115080))

(assert (=> b!7547016 m!8115078))

(assert (=> b!7547016 m!8115080))

(declare-fun m!8115082 () Bool)

(assert (=> b!7547016 m!8115082))

(assert (=> b!7547017 m!8115076))

(assert (=> b!7547017 m!8115036))

(declare-fun m!8115084 () Bool)

(assert (=> b!7547015 m!8115084))

(declare-fun m!8115086 () Bool)

(assert (=> b!7547015 m!8115086))

(assert (=> b!7546992 d!2312222))

(declare-fun d!2312224 () Bool)

(declare-fun lt!2645686 () Int)

(assert (=> d!2312224 (>= lt!2645686 0)))

(declare-fun e!4495987 () Int)

(assert (=> d!2312224 (= lt!2645686 e!4495987)))

(declare-fun c!1393063 () Bool)

(assert (=> d!2312224 (= c!1393063 ((_ is Nil!72692) input!7874))))

(assert (=> d!2312224 (= (size!42429 input!7874) lt!2645686)))

(declare-fun b!7547022 () Bool)

(assert (=> b!7547022 (= e!4495987 0)))

(declare-fun b!7547023 () Bool)

(assert (=> b!7547023 (= e!4495987 (+ 1 (size!42429 (t!387533 input!7874))))))

(assert (= (and d!2312224 c!1393063) b!7547022))

(assert (= (and d!2312224 (not c!1393063)) b!7547023))

(declare-fun m!8115088 () Bool)

(assert (=> b!7547023 m!8115088))

(assert (=> b!7546998 d!2312224))

(declare-fun b!7547087 () Bool)

(declare-fun e!4496029 () Bool)

(declare-fun nullable!8693 (Regex!19933) Bool)

(assert (=> b!7547087 (= e!4496029 (nullable!8693 r!24333))))

(declare-fun d!2312228 () Bool)

(declare-fun e!4496027 () Bool)

(assert (=> d!2312228 e!4496027))

(declare-fun c!1393082 () Bool)

(assert (=> d!2312228 (= c!1393082 ((_ is EmptyExpr!19933) r!24333))))

(declare-fun lt!2645693 () Bool)

(assert (=> d!2312228 (= lt!2645693 e!4496029)))

(declare-fun c!1393080 () Bool)

(declare-fun isEmpty!41388 (List!72816) Bool)

(assert (=> d!2312228 (= c!1393080 (isEmpty!41388 (getSuffix!3619 knownP!30 testedP!423)))))

(assert (=> d!2312228 (validRegex!10361 r!24333)))

(assert (=> d!2312228 (= (matchR!9535 r!24333 (getSuffix!3619 knownP!30 testedP!423)) lt!2645693)))

(declare-fun b!7547088 () Bool)

(declare-fun res!3024956 () Bool)

(declare-fun e!4496030 () Bool)

(assert (=> b!7547088 (=> (not res!3024956) (not e!4496030))))

(assert (=> b!7547088 (= res!3024956 (isEmpty!41388 (tail!15069 (getSuffix!3619 knownP!30 testedP!423))))))

(declare-fun b!7547089 () Bool)

(declare-fun res!3024959 () Bool)

(declare-fun e!4496033 () Bool)

(assert (=> b!7547089 (=> res!3024959 e!4496033)))

(assert (=> b!7547089 (= res!3024959 (not ((_ is ElementMatch!19933) r!24333)))))

(declare-fun e!4496028 () Bool)

(assert (=> b!7547089 (= e!4496028 e!4496033)))

(declare-fun b!7547090 () Bool)

(assert (=> b!7547090 (= e!4496028 (not lt!2645693))))

(declare-fun b!7547091 () Bool)

(assert (=> b!7547091 (= e!4496029 (matchR!9535 (derivativeStep!5723 r!24333 (head!15523 (getSuffix!3619 knownP!30 testedP!423))) (tail!15069 (getSuffix!3619 knownP!30 testedP!423))))))

(declare-fun b!7547092 () Bool)

(declare-fun call!692072 () Bool)

(assert (=> b!7547092 (= e!4496027 (= lt!2645693 call!692072))))

(declare-fun b!7547093 () Bool)

(declare-fun res!3024962 () Bool)

(declare-fun e!4496031 () Bool)

(assert (=> b!7547093 (=> res!3024962 e!4496031)))

(assert (=> b!7547093 (= res!3024962 (not (isEmpty!41388 (tail!15069 (getSuffix!3619 knownP!30 testedP!423)))))))

(declare-fun b!7547094 () Bool)

(assert (=> b!7547094 (= e!4496031 (not (= (head!15523 (getSuffix!3619 knownP!30 testedP!423)) (c!1393060 r!24333))))))

(declare-fun b!7547095 () Bool)

(assert (=> b!7547095 (= e!4496030 (= (head!15523 (getSuffix!3619 knownP!30 testedP!423)) (c!1393060 r!24333)))))

(declare-fun b!7547096 () Bool)

(assert (=> b!7547096 (= e!4496027 e!4496028)))

(declare-fun c!1393081 () Bool)

(assert (=> b!7547096 (= c!1393081 ((_ is EmptyLang!19933) r!24333))))

(declare-fun b!7547097 () Bool)

(declare-fun e!4496032 () Bool)

(assert (=> b!7547097 (= e!4496032 e!4496031)))

(declare-fun res!3024960 () Bool)

(assert (=> b!7547097 (=> res!3024960 e!4496031)))

(assert (=> b!7547097 (= res!3024960 call!692072)))

(declare-fun b!7547098 () Bool)

(assert (=> b!7547098 (= e!4496033 e!4496032)))

(declare-fun res!3024963 () Bool)

(assert (=> b!7547098 (=> (not res!3024963) (not e!4496032))))

(assert (=> b!7547098 (= res!3024963 (not lt!2645693))))

(declare-fun b!7547099 () Bool)

(declare-fun res!3024958 () Bool)

(assert (=> b!7547099 (=> (not res!3024958) (not e!4496030))))

(assert (=> b!7547099 (= res!3024958 (not call!692072))))

(declare-fun b!7547100 () Bool)

(declare-fun res!3024961 () Bool)

(assert (=> b!7547100 (=> res!3024961 e!4496033)))

(assert (=> b!7547100 (= res!3024961 e!4496030)))

(declare-fun res!3024957 () Bool)

(assert (=> b!7547100 (=> (not res!3024957) (not e!4496030))))

(assert (=> b!7547100 (= res!3024957 lt!2645693)))

(declare-fun bm!692067 () Bool)

(assert (=> bm!692067 (= call!692072 (isEmpty!41388 (getSuffix!3619 knownP!30 testedP!423)))))

(assert (= (and d!2312228 c!1393080) b!7547087))

(assert (= (and d!2312228 (not c!1393080)) b!7547091))

(assert (= (and d!2312228 c!1393082) b!7547092))

(assert (= (and d!2312228 (not c!1393082)) b!7547096))

(assert (= (and b!7547096 c!1393081) b!7547090))

(assert (= (and b!7547096 (not c!1393081)) b!7547089))

(assert (= (and b!7547089 (not res!3024959)) b!7547100))

(assert (= (and b!7547100 res!3024957) b!7547099))

(assert (= (and b!7547099 res!3024958) b!7547088))

(assert (= (and b!7547088 res!3024956) b!7547095))

(assert (= (and b!7547100 (not res!3024961)) b!7547098))

(assert (= (and b!7547098 res!3024963) b!7547097))

(assert (= (and b!7547097 (not res!3024960)) b!7547093))

(assert (= (and b!7547093 (not res!3024962)) b!7547094))

(assert (= (or b!7547092 b!7547097 b!7547099) bm!692067))

(assert (=> b!7547091 m!8115024))

(declare-fun m!8115100 () Bool)

(assert (=> b!7547091 m!8115100))

(assert (=> b!7547091 m!8115100))

(declare-fun m!8115102 () Bool)

(assert (=> b!7547091 m!8115102))

(assert (=> b!7547091 m!8115024))

(declare-fun m!8115104 () Bool)

(assert (=> b!7547091 m!8115104))

(assert (=> b!7547091 m!8115102))

(assert (=> b!7547091 m!8115104))

(declare-fun m!8115106 () Bool)

(assert (=> b!7547091 m!8115106))

(assert (=> b!7547088 m!8115024))

(assert (=> b!7547088 m!8115104))

(assert (=> b!7547088 m!8115104))

(declare-fun m!8115108 () Bool)

(assert (=> b!7547088 m!8115108))

(assert (=> b!7547095 m!8115024))

(assert (=> b!7547095 m!8115100))

(assert (=> b!7547093 m!8115024))

(assert (=> b!7547093 m!8115104))

(assert (=> b!7547093 m!8115104))

(assert (=> b!7547093 m!8115108))

(assert (=> d!2312228 m!8115024))

(declare-fun m!8115110 () Bool)

(assert (=> d!2312228 m!8115110))

(assert (=> d!2312228 m!8115040))

(declare-fun m!8115112 () Bool)

(assert (=> b!7547087 m!8115112))

(assert (=> bm!692067 m!8115024))

(assert (=> bm!692067 m!8115110))

(assert (=> b!7547094 m!8115024))

(assert (=> b!7547094 m!8115100))

(assert (=> b!7547004 d!2312228))

(declare-fun d!2312236 () Bool)

(declare-fun lt!2645700 () List!72816)

(assert (=> d!2312236 (= (++!17449 testedP!423 lt!2645700) knownP!30)))

(declare-fun e!4496048 () List!72816)

(assert (=> d!2312236 (= lt!2645700 e!4496048)))

(declare-fun c!1393085 () Bool)

(assert (=> d!2312236 (= c!1393085 ((_ is Cons!72692) testedP!423))))

(assert (=> d!2312236 (>= (size!42429 knownP!30) (size!42429 testedP!423))))

(assert (=> d!2312236 (= (getSuffix!3619 knownP!30 testedP!423) lt!2645700)))

(declare-fun b!7547121 () Bool)

(assert (=> b!7547121 (= e!4496048 (getSuffix!3619 (tail!15069 knownP!30) (t!387533 testedP!423)))))

(declare-fun b!7547122 () Bool)

(assert (=> b!7547122 (= e!4496048 knownP!30)))

(assert (= (and d!2312236 c!1393085) b!7547121))

(assert (= (and d!2312236 (not c!1393085)) b!7547122))

(declare-fun m!8115130 () Bool)

(assert (=> d!2312236 m!8115130))

(assert (=> d!2312236 m!8115036))

(assert (=> d!2312236 m!8115034))

(assert (=> b!7547121 m!8115078))

(assert (=> b!7547121 m!8115078))

(declare-fun m!8115132 () Bool)

(assert (=> b!7547121 m!8115132))

(assert (=> b!7547004 d!2312236))

(declare-fun d!2312242 () Bool)

(declare-fun e!4496050 () Bool)

(assert (=> d!2312242 e!4496050))

(declare-fun res!3024981 () Bool)

(assert (=> d!2312242 (=> res!3024981 e!4496050)))

(declare-fun lt!2645701 () Bool)

(assert (=> d!2312242 (= res!3024981 (not lt!2645701))))

(declare-fun e!4496049 () Bool)

(assert (=> d!2312242 (= lt!2645701 e!4496049)))

(declare-fun res!3024982 () Bool)

(assert (=> d!2312242 (=> res!3024982 e!4496049)))

(assert (=> d!2312242 (= res!3024982 ((_ is Nil!72692) testedP!423))))

(assert (=> d!2312242 (= (isPrefix!6139 testedP!423 knownP!30) lt!2645701)))

(declare-fun b!7547123 () Bool)

(declare-fun e!4496051 () Bool)

(assert (=> b!7547123 (= e!4496049 e!4496051)))

(declare-fun res!3024983 () Bool)

(assert (=> b!7547123 (=> (not res!3024983) (not e!4496051))))

(assert (=> b!7547123 (= res!3024983 (not ((_ is Nil!72692) knownP!30)))))

(declare-fun b!7547125 () Bool)

(assert (=> b!7547125 (= e!4496051 (isPrefix!6139 (tail!15069 testedP!423) (tail!15069 knownP!30)))))

(declare-fun b!7547126 () Bool)

(assert (=> b!7547126 (= e!4496050 (>= (size!42429 knownP!30) (size!42429 testedP!423)))))

(declare-fun b!7547124 () Bool)

(declare-fun res!3024980 () Bool)

(assert (=> b!7547124 (=> (not res!3024980) (not e!4496051))))

(assert (=> b!7547124 (= res!3024980 (= (head!15523 testedP!423) (head!15523 knownP!30)))))

(assert (= (and d!2312242 (not res!3024982)) b!7547123))

(assert (= (and b!7547123 res!3024983) b!7547124))

(assert (= (and b!7547124 res!3024980) b!7547125))

(assert (= (and d!2312242 (not res!3024981)) b!7547126))

(declare-fun m!8115134 () Bool)

(assert (=> b!7547125 m!8115134))

(assert (=> b!7547125 m!8115078))

(assert (=> b!7547125 m!8115134))

(assert (=> b!7547125 m!8115078))

(declare-fun m!8115136 () Bool)

(assert (=> b!7547125 m!8115136))

(assert (=> b!7547126 m!8115036))

(assert (=> b!7547126 m!8115034))

(declare-fun m!8115138 () Bool)

(assert (=> b!7547124 m!8115138))

(assert (=> b!7547124 m!8115084))

(assert (=> b!7547004 d!2312242))

(declare-fun d!2312244 () Bool)

(assert (=> d!2312244 (isPrefix!6139 testedP!423 knownP!30)))

(declare-fun lt!2645706 () Unit!166804)

(declare-fun choose!58400 (List!72816 List!72816 List!72816) Unit!166804)

(assert (=> d!2312244 (= lt!2645706 (choose!58400 knownP!30 testedP!423 input!7874))))

(assert (=> d!2312244 (isPrefix!6139 knownP!30 input!7874)))

(assert (=> d!2312244 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!889 knownP!30 testedP!423 input!7874) lt!2645706)))

(declare-fun bs!1940119 () Bool)

(assert (= bs!1940119 d!2312244))

(assert (=> bs!1940119 m!8115028))

(declare-fun m!8115140 () Bool)

(assert (=> bs!1940119 m!8115140))

(assert (=> bs!1940119 m!8115042))

(assert (=> b!7547004 d!2312244))

(declare-fun b!7547164 () Bool)

(declare-fun lt!2645715 () List!72816)

(declare-fun e!4496070 () Bool)

(assert (=> b!7547164 (= e!4496070 (or (not (= (getSuffix!3619 input!7874 knownP!30) Nil!72692)) (= lt!2645715 knownP!30)))))

(declare-fun b!7547161 () Bool)

(declare-fun e!4496071 () List!72816)

(assert (=> b!7547161 (= e!4496071 (getSuffix!3619 input!7874 knownP!30))))

(declare-fun b!7547162 () Bool)

(assert (=> b!7547162 (= e!4496071 (Cons!72692 (h!79140 knownP!30) (++!17449 (t!387533 knownP!30) (getSuffix!3619 input!7874 knownP!30))))))

(declare-fun b!7547163 () Bool)

(declare-fun res!3025001 () Bool)

(assert (=> b!7547163 (=> (not res!3025001) (not e!4496070))))

(assert (=> b!7547163 (= res!3025001 (= (size!42429 lt!2645715) (+ (size!42429 knownP!30) (size!42429 (getSuffix!3619 input!7874 knownP!30)))))))

(declare-fun d!2312246 () Bool)

(assert (=> d!2312246 e!4496070))

(declare-fun res!3025000 () Bool)

(assert (=> d!2312246 (=> (not res!3025000) (not e!4496070))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15380 (List!72816) (InoxSet C!40192))

(assert (=> d!2312246 (= res!3025000 (= (content!15380 lt!2645715) ((_ map or) (content!15380 knownP!30) (content!15380 (getSuffix!3619 input!7874 knownP!30)))))))

(assert (=> d!2312246 (= lt!2645715 e!4496071)))

(declare-fun c!1393095 () Bool)

(assert (=> d!2312246 (= c!1393095 ((_ is Nil!72692) knownP!30))))

(assert (=> d!2312246 (= (++!17449 knownP!30 (getSuffix!3619 input!7874 knownP!30)) lt!2645715)))

(assert (= (and d!2312246 c!1393095) b!7547161))

(assert (= (and d!2312246 (not c!1393095)) b!7547162))

(assert (= (and d!2312246 res!3025000) b!7547163))

(assert (= (and b!7547163 res!3025001) b!7547164))

(assert (=> b!7547162 m!8115044))

(declare-fun m!8115178 () Bool)

(assert (=> b!7547162 m!8115178))

(declare-fun m!8115180 () Bool)

(assert (=> b!7547163 m!8115180))

(assert (=> b!7547163 m!8115036))

(assert (=> b!7547163 m!8115044))

(declare-fun m!8115182 () Bool)

(assert (=> b!7547163 m!8115182))

(declare-fun m!8115184 () Bool)

(assert (=> d!2312246 m!8115184))

(declare-fun m!8115186 () Bool)

(assert (=> d!2312246 m!8115186))

(assert (=> d!2312246 m!8115044))

(declare-fun m!8115188 () Bool)

(assert (=> d!2312246 m!8115188))

(assert (=> b!7546999 d!2312246))

(declare-fun d!2312256 () Bool)

(declare-fun e!4496073 () Bool)

(assert (=> d!2312256 e!4496073))

(declare-fun res!3025003 () Bool)

(assert (=> d!2312256 (=> res!3025003 e!4496073)))

(declare-fun lt!2645716 () Bool)

(assert (=> d!2312256 (= res!3025003 (not lt!2645716))))

(declare-fun e!4496072 () Bool)

(assert (=> d!2312256 (= lt!2645716 e!4496072)))

(declare-fun res!3025004 () Bool)

(assert (=> d!2312256 (=> res!3025004 e!4496072)))

(assert (=> d!2312256 (= res!3025004 ((_ is Nil!72692) lt!2645679))))

(assert (=> d!2312256 (= (isPrefix!6139 lt!2645679 input!7874) lt!2645716)))

(declare-fun b!7547165 () Bool)

(declare-fun e!4496074 () Bool)

(assert (=> b!7547165 (= e!4496072 e!4496074)))

(declare-fun res!3025005 () Bool)

(assert (=> b!7547165 (=> (not res!3025005) (not e!4496074))))

(assert (=> b!7547165 (= res!3025005 (not ((_ is Nil!72692) input!7874)))))

(declare-fun b!7547167 () Bool)

(assert (=> b!7547167 (= e!4496074 (isPrefix!6139 (tail!15069 lt!2645679) (tail!15069 input!7874)))))

(declare-fun b!7547168 () Bool)

(assert (=> b!7547168 (= e!4496073 (>= (size!42429 input!7874) (size!42429 lt!2645679)))))

(declare-fun b!7547166 () Bool)

(declare-fun res!3025002 () Bool)

(assert (=> b!7547166 (=> (not res!3025002) (not e!4496074))))

(assert (=> b!7547166 (= res!3025002 (= (head!15523 lt!2645679) (head!15523 input!7874)))))

(assert (= (and d!2312256 (not res!3025004)) b!7547165))

(assert (= (and b!7547165 res!3025005) b!7547166))

(assert (= (and b!7547166 res!3025002) b!7547167))

(assert (= (and d!2312256 (not res!3025003)) b!7547168))

(declare-fun m!8115190 () Bool)

(assert (=> b!7547167 m!8115190))

(assert (=> b!7547167 m!8115080))

(assert (=> b!7547167 m!8115190))

(assert (=> b!7547167 m!8115080))

(declare-fun m!8115192 () Bool)

(assert (=> b!7547167 m!8115192))

(assert (=> b!7547168 m!8115076))

(declare-fun m!8115194 () Bool)

(assert (=> b!7547168 m!8115194))

(declare-fun m!8115196 () Bool)

(assert (=> b!7547166 m!8115196))

(assert (=> b!7547166 m!8115086))

(assert (=> b!7546999 d!2312256))

(declare-fun d!2312258 () Bool)

(declare-fun lt!2645722 () Regex!19933)

(assert (=> d!2312258 (validRegex!10361 lt!2645722)))

(declare-fun e!4496077 () Regex!19933)

(assert (=> d!2312258 (= lt!2645722 e!4496077)))

(declare-fun c!1393098 () Bool)

(assert (=> d!2312258 (= c!1393098 ((_ is Cons!72692) lt!2645679))))

(assert (=> d!2312258 (validRegex!10361 baseR!101)))

(assert (=> d!2312258 (= (derivative!465 baseR!101 lt!2645679) lt!2645722)))

(declare-fun b!7547173 () Bool)

(assert (=> b!7547173 (= e!4496077 (derivative!465 (derivativeStep!5723 baseR!101 (h!79140 lt!2645679)) (t!387533 lt!2645679)))))

(declare-fun b!7547174 () Bool)

(assert (=> b!7547174 (= e!4496077 baseR!101)))

(assert (= (and d!2312258 c!1393098) b!7547173))

(assert (= (and d!2312258 (not c!1393098)) b!7547174))

(declare-fun m!8115204 () Bool)

(assert (=> d!2312258 m!8115204))

(assert (=> d!2312258 m!8115032))

(declare-fun m!8115206 () Bool)

(assert (=> b!7547173 m!8115206))

(assert (=> b!7547173 m!8115206))

(declare-fun m!8115208 () Bool)

(assert (=> b!7547173 m!8115208))

(assert (=> b!7546999 d!2312258))

(declare-fun d!2312262 () Bool)

(declare-fun lt!2645723 () List!72816)

(assert (=> d!2312262 (= (++!17449 testedP!423 lt!2645723) input!7874)))

(declare-fun e!4496078 () List!72816)

(assert (=> d!2312262 (= lt!2645723 e!4496078)))

(declare-fun c!1393100 () Bool)

(assert (=> d!2312262 (= c!1393100 ((_ is Cons!72692) testedP!423))))

(assert (=> d!2312262 (>= (size!42429 input!7874) (size!42429 testedP!423))))

(assert (=> d!2312262 (= (getSuffix!3619 input!7874 testedP!423) lt!2645723)))

(declare-fun b!7547175 () Bool)

(assert (=> b!7547175 (= e!4496078 (getSuffix!3619 (tail!15069 input!7874) (t!387533 testedP!423)))))

(declare-fun b!7547176 () Bool)

(assert (=> b!7547176 (= e!4496078 input!7874)))

(assert (= (and d!2312262 c!1393100) b!7547175))

(assert (= (and d!2312262 (not c!1393100)) b!7547176))

(declare-fun m!8115210 () Bool)

(assert (=> d!2312262 m!8115210))

(assert (=> d!2312262 m!8115076))

(assert (=> d!2312262 m!8115034))

(assert (=> b!7547175 m!8115080))

(assert (=> b!7547175 m!8115080))

(declare-fun m!8115212 () Bool)

(assert (=> b!7547175 m!8115212))

(assert (=> b!7546999 d!2312262))

(declare-fun d!2312264 () Bool)

(assert (=> d!2312264 (isPrefix!6139 lt!2645679 knownP!30)))

(declare-fun lt!2645726 () Unit!166804)

(assert (=> d!2312264 (= lt!2645726 (choose!58400 knownP!30 lt!2645679 input!7874))))

(assert (=> d!2312264 (isPrefix!6139 knownP!30 input!7874)))

(assert (=> d!2312264 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!889 knownP!30 lt!2645679 input!7874) lt!2645726)))

(declare-fun bs!1940121 () Bool)

(assert (= bs!1940121 d!2312264))

(assert (=> bs!1940121 m!8115064))

(declare-fun m!8115214 () Bool)

(assert (=> bs!1940121 m!8115214))

(assert (=> bs!1940121 m!8115042))

(assert (=> b!7546999 d!2312264))

(declare-fun d!2312266 () Bool)

(declare-fun lt!2645727 () List!72816)

(assert (=> d!2312266 (= (++!17449 lt!2645679 lt!2645727) knownP!30)))

(declare-fun e!4496079 () List!72816)

(assert (=> d!2312266 (= lt!2645727 e!4496079)))

(declare-fun c!1393101 () Bool)

(assert (=> d!2312266 (= c!1393101 ((_ is Cons!72692) lt!2645679))))

(assert (=> d!2312266 (>= (size!42429 knownP!30) (size!42429 lt!2645679))))

(assert (=> d!2312266 (= (getSuffix!3619 knownP!30 lt!2645679) lt!2645727)))

(declare-fun b!7547177 () Bool)

(assert (=> b!7547177 (= e!4496079 (getSuffix!3619 (tail!15069 knownP!30) (t!387533 lt!2645679)))))

(declare-fun b!7547178 () Bool)

(assert (=> b!7547178 (= e!4496079 knownP!30)))

(assert (= (and d!2312266 c!1393101) b!7547177))

(assert (= (and d!2312266 (not c!1393101)) b!7547178))

(declare-fun m!8115216 () Bool)

(assert (=> d!2312266 m!8115216))

(assert (=> d!2312266 m!8115036))

(assert (=> d!2312266 m!8115194))

(assert (=> b!7547177 m!8115078))

(assert (=> b!7547177 m!8115078))

(declare-fun m!8115218 () Bool)

(assert (=> b!7547177 m!8115218))

(assert (=> b!7546999 d!2312266))

(declare-fun d!2312268 () Bool)

(assert (=> d!2312268 (= (derivative!465 baseR!101 (++!17449 testedP!423 (Cons!72692 lt!2645676 Nil!72692))) (derivativeStep!5723 r!24333 lt!2645676))))

(declare-fun lt!2645734 () Unit!166804)

(declare-fun choose!58402 (Regex!19933 Regex!19933 List!72816 C!40192) Unit!166804)

(assert (=> d!2312268 (= lt!2645734 (choose!58402 baseR!101 r!24333 testedP!423 lt!2645676))))

(assert (=> d!2312268 (validRegex!10361 baseR!101)))

(assert (=> d!2312268 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!167 baseR!101 r!24333 testedP!423 lt!2645676) lt!2645734)))

(declare-fun bs!1940123 () Bool)

(assert (= bs!1940123 d!2312268))

(assert (=> bs!1940123 m!8115056))

(assert (=> bs!1940123 m!8115056))

(declare-fun m!8115230 () Bool)

(assert (=> bs!1940123 m!8115230))

(assert (=> bs!1940123 m!8115054))

(assert (=> bs!1940123 m!8115032))

(declare-fun m!8115232 () Bool)

(assert (=> bs!1940123 m!8115232))

(assert (=> b!7546999 d!2312268))

(declare-fun b!7547241 () Bool)

(declare-fun e!4496113 () Regex!19933)

(declare-fun e!4496112 () Regex!19933)

(assert (=> b!7547241 (= e!4496113 e!4496112)))

(declare-fun c!1393132 () Bool)

(assert (=> b!7547241 (= c!1393132 ((_ is ElementMatch!19933) r!24333))))

(declare-fun b!7547242 () Bool)

(declare-fun e!4496116 () Regex!19933)

(declare-fun call!692096 () Regex!19933)

(declare-fun call!692094 () Regex!19933)

(assert (=> b!7547242 (= e!4496116 (Union!19933 call!692096 call!692094))))

(declare-fun d!2312274 () Bool)

(declare-fun lt!2645745 () Regex!19933)

(assert (=> d!2312274 (validRegex!10361 lt!2645745)))

(assert (=> d!2312274 (= lt!2645745 e!4496113)))

(declare-fun c!1393133 () Bool)

(assert (=> d!2312274 (= c!1393133 (or ((_ is EmptyExpr!19933) r!24333) ((_ is EmptyLang!19933) r!24333)))))

(assert (=> d!2312274 (validRegex!10361 r!24333)))

(assert (=> d!2312274 (= (derivativeStep!5723 r!24333 lt!2645676) lt!2645745)))

(declare-fun bm!692088 () Bool)

(declare-fun call!692095 () Regex!19933)

(assert (=> bm!692088 (= call!692095 call!692094)))

(declare-fun b!7547243 () Bool)

(assert (=> b!7547243 (= e!4496112 (ite (= lt!2645676 (c!1393060 r!24333)) EmptyExpr!19933 EmptyLang!19933))))

(declare-fun e!4496114 () Regex!19933)

(declare-fun call!692093 () Regex!19933)

(declare-fun b!7547244 () Bool)

(assert (=> b!7547244 (= e!4496114 (Union!19933 (Concat!28778 call!692093 (regTwo!40378 r!24333)) call!692096))))

(declare-fun b!7547245 () Bool)

(declare-fun c!1393134 () Bool)

(assert (=> b!7547245 (= c!1393134 (nullable!8693 (regOne!40378 r!24333)))))

(declare-fun e!4496115 () Regex!19933)

(assert (=> b!7547245 (= e!4496115 e!4496114)))

(declare-fun b!7547246 () Bool)

(assert (=> b!7547246 (= e!4496115 (Concat!28778 call!692095 r!24333))))

(declare-fun b!7547247 () Bool)

(assert (=> b!7547247 (= e!4496114 (Union!19933 (Concat!28778 call!692093 (regTwo!40378 r!24333)) EmptyLang!19933))))

(declare-fun b!7547248 () Bool)

(assert (=> b!7547248 (= e!4496113 EmptyLang!19933)))

(declare-fun b!7547249 () Bool)

(assert (=> b!7547249 (= e!4496116 e!4496115)))

(declare-fun c!1393135 () Bool)

(assert (=> b!7547249 (= c!1393135 ((_ is Star!19933) r!24333))))

(declare-fun bm!692089 () Bool)

(declare-fun c!1393136 () Bool)

(assert (=> bm!692089 (= call!692096 (derivativeStep!5723 (ite c!1393136 (regOne!40379 r!24333) (regTwo!40378 r!24333)) lt!2645676))))

(declare-fun b!7547250 () Bool)

(assert (=> b!7547250 (= c!1393136 ((_ is Union!19933) r!24333))))

(assert (=> b!7547250 (= e!4496112 e!4496116)))

(declare-fun bm!692090 () Bool)

(assert (=> bm!692090 (= call!692094 (derivativeStep!5723 (ite c!1393136 (regTwo!40379 r!24333) (ite c!1393135 (reg!20262 r!24333) (regOne!40378 r!24333))) lt!2645676))))

(declare-fun bm!692091 () Bool)

(assert (=> bm!692091 (= call!692093 call!692095)))

(assert (= (and d!2312274 c!1393133) b!7547248))

(assert (= (and d!2312274 (not c!1393133)) b!7547241))

(assert (= (and b!7547241 c!1393132) b!7547243))

(assert (= (and b!7547241 (not c!1393132)) b!7547250))

(assert (= (and b!7547250 c!1393136) b!7547242))

(assert (= (and b!7547250 (not c!1393136)) b!7547249))

(assert (= (and b!7547249 c!1393135) b!7547246))

(assert (= (and b!7547249 (not c!1393135)) b!7547245))

(assert (= (and b!7547245 c!1393134) b!7547244))

(assert (= (and b!7547245 (not c!1393134)) b!7547247))

(assert (= (or b!7547244 b!7547247) bm!692091))

(assert (= (or b!7547246 bm!692091) bm!692088))

(assert (= (or b!7547242 bm!692088) bm!692090))

(assert (= (or b!7547242 b!7547244) bm!692089))

(declare-fun m!8115254 () Bool)

(assert (=> d!2312274 m!8115254))

(assert (=> d!2312274 m!8115040))

(declare-fun m!8115256 () Bool)

(assert (=> b!7547245 m!8115256))

(declare-fun m!8115258 () Bool)

(assert (=> bm!692089 m!8115258))

(declare-fun m!8115260 () Bool)

(assert (=> bm!692090 m!8115260))

(assert (=> b!7546999 d!2312274))

(declare-fun d!2312288 () Bool)

(assert (=> d!2312288 (isPrefix!6139 (++!17449 testedP!423 (Cons!72692 (head!15523 (getSuffix!3619 input!7874 testedP!423)) Nil!72692)) input!7874)))

(declare-fun lt!2645749 () Unit!166804)

(declare-fun choose!58403 (List!72816 List!72816) Unit!166804)

(assert (=> d!2312288 (= lt!2645749 (choose!58403 testedP!423 input!7874))))

(assert (=> d!2312288 (isPrefix!6139 testedP!423 input!7874)))

(assert (=> d!2312288 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1200 testedP!423 input!7874) lt!2645749)))

(declare-fun bs!1940125 () Bool)

(assert (= bs!1940125 d!2312288))

(declare-fun m!8115262 () Bool)

(assert (=> bs!1940125 m!8115262))

(assert (=> bs!1940125 m!8115046))

(assert (=> bs!1940125 m!8115048))

(declare-fun m!8115264 () Bool)

(assert (=> bs!1940125 m!8115264))

(assert (=> bs!1940125 m!8115264))

(declare-fun m!8115266 () Bool)

(assert (=> bs!1940125 m!8115266))

(assert (=> bs!1940125 m!8115070))

(assert (=> bs!1940125 m!8115046))

(assert (=> b!7546999 d!2312288))

(declare-fun lt!2645750 () List!72816)

(declare-fun e!4496118 () Bool)

(declare-fun b!7547256 () Bool)

(assert (=> b!7547256 (= e!4496118 (or (not (= (Cons!72692 lt!2645676 Nil!72692) Nil!72692)) (= lt!2645750 testedP!423)))))

(declare-fun b!7547253 () Bool)

(declare-fun e!4496119 () List!72816)

(assert (=> b!7547253 (= e!4496119 (Cons!72692 lt!2645676 Nil!72692))))

(declare-fun b!7547254 () Bool)

(assert (=> b!7547254 (= e!4496119 (Cons!72692 (h!79140 testedP!423) (++!17449 (t!387533 testedP!423) (Cons!72692 lt!2645676 Nil!72692))))))

(declare-fun b!7547255 () Bool)

(declare-fun res!3025011 () Bool)

(assert (=> b!7547255 (=> (not res!3025011) (not e!4496118))))

(assert (=> b!7547255 (= res!3025011 (= (size!42429 lt!2645750) (+ (size!42429 testedP!423) (size!42429 (Cons!72692 lt!2645676 Nil!72692)))))))

(declare-fun d!2312290 () Bool)

(assert (=> d!2312290 e!4496118))

(declare-fun res!3025010 () Bool)

(assert (=> d!2312290 (=> (not res!3025010) (not e!4496118))))

(assert (=> d!2312290 (= res!3025010 (= (content!15380 lt!2645750) ((_ map or) (content!15380 testedP!423) (content!15380 (Cons!72692 lt!2645676 Nil!72692)))))))

(assert (=> d!2312290 (= lt!2645750 e!4496119)))

(declare-fun c!1393138 () Bool)

(assert (=> d!2312290 (= c!1393138 ((_ is Nil!72692) testedP!423))))

(assert (=> d!2312290 (= (++!17449 testedP!423 (Cons!72692 lt!2645676 Nil!72692)) lt!2645750)))

(assert (= (and d!2312290 c!1393138) b!7547253))

(assert (= (and d!2312290 (not c!1393138)) b!7547254))

(assert (= (and d!2312290 res!3025010) b!7547255))

(assert (= (and b!7547255 res!3025011) b!7547256))

(declare-fun m!8115268 () Bool)

(assert (=> b!7547254 m!8115268))

(declare-fun m!8115270 () Bool)

(assert (=> b!7547255 m!8115270))

(assert (=> b!7547255 m!8115034))

(declare-fun m!8115272 () Bool)

(assert (=> b!7547255 m!8115272))

(declare-fun m!8115274 () Bool)

(assert (=> d!2312290 m!8115274))

(declare-fun m!8115276 () Bool)

(assert (=> d!2312290 m!8115276))

(declare-fun m!8115278 () Bool)

(assert (=> d!2312290 m!8115278))

(assert (=> b!7546999 d!2312290))

(declare-fun d!2312292 () Bool)

(declare-fun lt!2645753 () List!72816)

(assert (=> d!2312292 (= (++!17449 knownP!30 lt!2645753) input!7874)))

(declare-fun e!4496130 () List!72816)

(assert (=> d!2312292 (= lt!2645753 e!4496130)))

(declare-fun c!1393145 () Bool)

(assert (=> d!2312292 (= c!1393145 ((_ is Cons!72692) knownP!30))))

(assert (=> d!2312292 (>= (size!42429 input!7874) (size!42429 knownP!30))))

(assert (=> d!2312292 (= (getSuffix!3619 input!7874 knownP!30) lt!2645753)))

(declare-fun b!7547279 () Bool)

(assert (=> b!7547279 (= e!4496130 (getSuffix!3619 (tail!15069 input!7874) (t!387533 knownP!30)))))

(declare-fun b!7547280 () Bool)

(assert (=> b!7547280 (= e!4496130 input!7874)))

(assert (= (and d!2312292 c!1393145) b!7547279))

(assert (= (and d!2312292 (not c!1393145)) b!7547280))

(declare-fun m!8115280 () Bool)

(assert (=> d!2312292 m!8115280))

(assert (=> d!2312292 m!8115076))

(assert (=> d!2312292 m!8115036))

(assert (=> b!7547279 m!8115080))

(assert (=> b!7547279 m!8115080))

(declare-fun m!8115282 () Bool)

(assert (=> b!7547279 m!8115282))

(assert (=> b!7546999 d!2312292))

(declare-fun d!2312294 () Bool)

(declare-fun e!4496136 () Bool)

(assert (=> d!2312294 e!4496136))

(declare-fun res!3025029 () Bool)

(assert (=> d!2312294 (=> res!3025029 e!4496136)))

(declare-fun lt!2645754 () Bool)

(assert (=> d!2312294 (= res!3025029 (not lt!2645754))))

(declare-fun e!4496135 () Bool)

(assert (=> d!2312294 (= lt!2645754 e!4496135)))

(declare-fun res!3025030 () Bool)

(assert (=> d!2312294 (=> res!3025030 e!4496135)))

(assert (=> d!2312294 (= res!3025030 ((_ is Nil!72692) lt!2645679))))

(assert (=> d!2312294 (= (isPrefix!6139 lt!2645679 knownP!30) lt!2645754)))

(declare-fun b!7547287 () Bool)

(declare-fun e!4496137 () Bool)

(assert (=> b!7547287 (= e!4496135 e!4496137)))

(declare-fun res!3025031 () Bool)

(assert (=> b!7547287 (=> (not res!3025031) (not e!4496137))))

(assert (=> b!7547287 (= res!3025031 (not ((_ is Nil!72692) knownP!30)))))

(declare-fun b!7547289 () Bool)

(assert (=> b!7547289 (= e!4496137 (isPrefix!6139 (tail!15069 lt!2645679) (tail!15069 knownP!30)))))

(declare-fun b!7547290 () Bool)

(assert (=> b!7547290 (= e!4496136 (>= (size!42429 knownP!30) (size!42429 lt!2645679)))))

(declare-fun b!7547288 () Bool)

(declare-fun res!3025028 () Bool)

(assert (=> b!7547288 (=> (not res!3025028) (not e!4496137))))

(assert (=> b!7547288 (= res!3025028 (= (head!15523 lt!2645679) (head!15523 knownP!30)))))

(assert (= (and d!2312294 (not res!3025030)) b!7547287))

(assert (= (and b!7547287 res!3025031) b!7547288))

(assert (= (and b!7547288 res!3025028) b!7547289))

(assert (= (and d!2312294 (not res!3025029)) b!7547290))

(assert (=> b!7547289 m!8115190))

(assert (=> b!7547289 m!8115078))

(assert (=> b!7547289 m!8115190))

(assert (=> b!7547289 m!8115078))

(declare-fun m!8115284 () Bool)

(assert (=> b!7547289 m!8115284))

(assert (=> b!7547290 m!8115036))

(assert (=> b!7547290 m!8115194))

(assert (=> b!7547288 m!8115196))

(assert (=> b!7547288 m!8115084))

(assert (=> b!7546999 d!2312294))

(declare-fun d!2312296 () Bool)

(assert (=> d!2312296 (= (head!15523 (getSuffix!3619 input!7874 testedP!423)) (h!79140 (getSuffix!3619 input!7874 testedP!423)))))

(assert (=> b!7546999 d!2312296))

(declare-fun d!2312298 () Bool)

(declare-fun lostCauseFct!447 (Regex!19933) Bool)

(assert (=> d!2312298 (= (lostCause!1725 r!24333) (lostCauseFct!447 r!24333))))

(declare-fun bs!1940126 () Bool)

(assert (= bs!1940126 d!2312298))

(declare-fun m!8115288 () Bool)

(assert (=> bs!1940126 m!8115288))

(assert (=> b!7546989 d!2312298))

(declare-fun d!2312300 () Bool)

(declare-fun lt!2645756 () Int)

(assert (=> d!2312300 (>= lt!2645756 0)))

(declare-fun e!4496145 () Int)

(assert (=> d!2312300 (= lt!2645756 e!4496145)))

(declare-fun c!1393149 () Bool)

(assert (=> d!2312300 (= c!1393149 ((_ is Nil!72692) testedP!423))))

(assert (=> d!2312300 (= (size!42429 testedP!423) lt!2645756)))

(declare-fun b!7547305 () Bool)

(assert (=> b!7547305 (= e!4496145 0)))

(declare-fun b!7547306 () Bool)

(assert (=> b!7547306 (= e!4496145 (+ 1 (size!42429 (t!387533 testedP!423))))))

(assert (= (and d!2312300 c!1393149) b!7547305))

(assert (= (and d!2312300 (not c!1393149)) b!7547306))

(declare-fun m!8115298 () Bool)

(assert (=> b!7547306 m!8115298))

(assert (=> b!7547005 d!2312300))

(declare-fun d!2312304 () Bool)

(declare-fun lt!2645758 () Int)

(assert (=> d!2312304 (>= lt!2645758 0)))

(declare-fun e!4496153 () Int)

(assert (=> d!2312304 (= lt!2645758 e!4496153)))

(declare-fun c!1393153 () Bool)

(assert (=> d!2312304 (= c!1393153 ((_ is Nil!72692) knownP!30))))

(assert (=> d!2312304 (= (size!42429 knownP!30) lt!2645758)))

(declare-fun b!7547321 () Bool)

(assert (=> b!7547321 (= e!4496153 0)))

(declare-fun b!7547322 () Bool)

(assert (=> b!7547322 (= e!4496153 (+ 1 (size!42429 (t!387533 knownP!30))))))

(assert (= (and d!2312304 c!1393153) b!7547321))

(assert (= (and d!2312304 (not c!1393153)) b!7547322))

(declare-fun m!8115300 () Bool)

(assert (=> b!7547322 m!8115300))

(assert (=> b!7547005 d!2312304))

(declare-fun d!2312306 () Bool)

(declare-fun lt!2645759 () Regex!19933)

(assert (=> d!2312306 (validRegex!10361 lt!2645759)))

(declare-fun e!4496154 () Regex!19933)

(assert (=> d!2312306 (= lt!2645759 e!4496154)))

(declare-fun c!1393154 () Bool)

(assert (=> d!2312306 (= c!1393154 ((_ is Cons!72692) testedP!423))))

(assert (=> d!2312306 (validRegex!10361 baseR!101)))

(assert (=> d!2312306 (= (derivative!465 baseR!101 testedP!423) lt!2645759)))

(declare-fun b!7547323 () Bool)

(assert (=> b!7547323 (= e!4496154 (derivative!465 (derivativeStep!5723 baseR!101 (h!79140 testedP!423)) (t!387533 testedP!423)))))

(declare-fun b!7547324 () Bool)

(assert (=> b!7547324 (= e!4496154 baseR!101)))

(assert (= (and d!2312306 c!1393154) b!7547323))

(assert (= (and d!2312306 (not c!1393154)) b!7547324))

(declare-fun m!8115306 () Bool)

(assert (=> d!2312306 m!8115306))

(assert (=> d!2312306 m!8115032))

(declare-fun m!8115314 () Bool)

(assert (=> b!7547323 m!8115314))

(assert (=> b!7547323 m!8115314))

(declare-fun m!8115316 () Bool)

(assert (=> b!7547323 m!8115316))

(assert (=> b!7547000 d!2312306))

(declare-fun b!7547325 () Bool)

(declare-fun e!4496157 () Bool)

(assert (=> b!7547325 (= e!4496157 (nullable!8693 baseR!101))))

(declare-fun d!2312308 () Bool)

(declare-fun e!4496155 () Bool)

(assert (=> d!2312308 e!4496155))

(declare-fun c!1393157 () Bool)

(assert (=> d!2312308 (= c!1393157 ((_ is EmptyExpr!19933) baseR!101))))

(declare-fun lt!2645760 () Bool)

(assert (=> d!2312308 (= lt!2645760 e!4496157)))

(declare-fun c!1393155 () Bool)

(assert (=> d!2312308 (= c!1393155 (isEmpty!41388 knownP!30))))

(assert (=> d!2312308 (validRegex!10361 baseR!101)))

(assert (=> d!2312308 (= (matchR!9535 baseR!101 knownP!30) lt!2645760)))

(declare-fun b!7547326 () Bool)

(declare-fun res!3025048 () Bool)

(declare-fun e!4496158 () Bool)

(assert (=> b!7547326 (=> (not res!3025048) (not e!4496158))))

(assert (=> b!7547326 (= res!3025048 (isEmpty!41388 (tail!15069 knownP!30)))))

(declare-fun b!7547327 () Bool)

(declare-fun res!3025051 () Bool)

(declare-fun e!4496161 () Bool)

(assert (=> b!7547327 (=> res!3025051 e!4496161)))

(assert (=> b!7547327 (= res!3025051 (not ((_ is ElementMatch!19933) baseR!101)))))

(declare-fun e!4496156 () Bool)

(assert (=> b!7547327 (= e!4496156 e!4496161)))

(declare-fun b!7547328 () Bool)

(assert (=> b!7547328 (= e!4496156 (not lt!2645760))))

(declare-fun b!7547329 () Bool)

(assert (=> b!7547329 (= e!4496157 (matchR!9535 (derivativeStep!5723 baseR!101 (head!15523 knownP!30)) (tail!15069 knownP!30)))))

(declare-fun b!7547330 () Bool)

(declare-fun call!692101 () Bool)

(assert (=> b!7547330 (= e!4496155 (= lt!2645760 call!692101))))

(declare-fun b!7547331 () Bool)

(declare-fun res!3025054 () Bool)

(declare-fun e!4496159 () Bool)

(assert (=> b!7547331 (=> res!3025054 e!4496159)))

(assert (=> b!7547331 (= res!3025054 (not (isEmpty!41388 (tail!15069 knownP!30))))))

(declare-fun b!7547332 () Bool)

(assert (=> b!7547332 (= e!4496159 (not (= (head!15523 knownP!30) (c!1393060 baseR!101))))))

(declare-fun b!7547333 () Bool)

(assert (=> b!7547333 (= e!4496158 (= (head!15523 knownP!30) (c!1393060 baseR!101)))))

(declare-fun b!7547334 () Bool)

(assert (=> b!7547334 (= e!4496155 e!4496156)))

(declare-fun c!1393156 () Bool)

(assert (=> b!7547334 (= c!1393156 ((_ is EmptyLang!19933) baseR!101))))

(declare-fun b!7547335 () Bool)

(declare-fun e!4496160 () Bool)

(assert (=> b!7547335 (= e!4496160 e!4496159)))

(declare-fun res!3025052 () Bool)

(assert (=> b!7547335 (=> res!3025052 e!4496159)))

(assert (=> b!7547335 (= res!3025052 call!692101)))

(declare-fun b!7547336 () Bool)

(assert (=> b!7547336 (= e!4496161 e!4496160)))

(declare-fun res!3025055 () Bool)

(assert (=> b!7547336 (=> (not res!3025055) (not e!4496160))))

(assert (=> b!7547336 (= res!3025055 (not lt!2645760))))

(declare-fun b!7547337 () Bool)

(declare-fun res!3025050 () Bool)

(assert (=> b!7547337 (=> (not res!3025050) (not e!4496158))))

(assert (=> b!7547337 (= res!3025050 (not call!692101))))

(declare-fun b!7547338 () Bool)

(declare-fun res!3025053 () Bool)

(assert (=> b!7547338 (=> res!3025053 e!4496161)))

(assert (=> b!7547338 (= res!3025053 e!4496158)))

(declare-fun res!3025049 () Bool)

(assert (=> b!7547338 (=> (not res!3025049) (not e!4496158))))

(assert (=> b!7547338 (= res!3025049 lt!2645760)))

(declare-fun bm!692096 () Bool)

(assert (=> bm!692096 (= call!692101 (isEmpty!41388 knownP!30))))

(assert (= (and d!2312308 c!1393155) b!7547325))

(assert (= (and d!2312308 (not c!1393155)) b!7547329))

(assert (= (and d!2312308 c!1393157) b!7547330))

(assert (= (and d!2312308 (not c!1393157)) b!7547334))

(assert (= (and b!7547334 c!1393156) b!7547328))

(assert (= (and b!7547334 (not c!1393156)) b!7547327))

(assert (= (and b!7547327 (not res!3025051)) b!7547338))

(assert (= (and b!7547338 res!3025049) b!7547337))

(assert (= (and b!7547337 res!3025050) b!7547326))

(assert (= (and b!7547326 res!3025048) b!7547333))

(assert (= (and b!7547338 (not res!3025053)) b!7547336))

(assert (= (and b!7547336 res!3025055) b!7547335))

(assert (= (and b!7547335 (not res!3025052)) b!7547331))

(assert (= (and b!7547331 (not res!3025054)) b!7547332))

(assert (= (or b!7547330 b!7547335 b!7547337) bm!692096))

(assert (=> b!7547329 m!8115084))

(assert (=> b!7547329 m!8115084))

(declare-fun m!8115330 () Bool)

(assert (=> b!7547329 m!8115330))

(assert (=> b!7547329 m!8115078))

(assert (=> b!7547329 m!8115330))

(assert (=> b!7547329 m!8115078))

(declare-fun m!8115332 () Bool)

(assert (=> b!7547329 m!8115332))

(assert (=> b!7547326 m!8115078))

(assert (=> b!7547326 m!8115078))

(declare-fun m!8115334 () Bool)

(assert (=> b!7547326 m!8115334))

(assert (=> b!7547333 m!8115084))

(assert (=> b!7547331 m!8115078))

(assert (=> b!7547331 m!8115078))

(assert (=> b!7547331 m!8115334))

(declare-fun m!8115336 () Bool)

(assert (=> d!2312308 m!8115336))

(assert (=> d!2312308 m!8115032))

(declare-fun m!8115338 () Bool)

(assert (=> b!7547325 m!8115338))

(assert (=> bm!692096 m!8115336))

(assert (=> b!7547332 m!8115084))

(assert (=> b!7546995 d!2312308))

(declare-fun bm!692106 () Bool)

(declare-fun call!692112 () Bool)

(declare-fun call!692113 () Bool)

(assert (=> bm!692106 (= call!692112 call!692113)))

(declare-fun b!7547433 () Bool)

(declare-fun e!4496207 () Bool)

(assert (=> b!7547433 (= e!4496207 call!692112)))

(declare-fun b!7547435 () Bool)

(declare-fun e!4496208 () Bool)

(declare-fun e!4496211 () Bool)

(assert (=> b!7547435 (= e!4496208 e!4496211)))

(declare-fun c!1393167 () Bool)

(assert (=> b!7547435 (= c!1393167 ((_ is Union!19933) baseR!101))))

(declare-fun b!7547436 () Bool)

(declare-fun e!4496206 () Bool)

(assert (=> b!7547436 (= e!4496208 e!4496206)))

(declare-fun res!3025076 () Bool)

(assert (=> b!7547436 (= res!3025076 (not (nullable!8693 (reg!20262 baseR!101))))))

(assert (=> b!7547436 (=> (not res!3025076) (not e!4496206))))

(declare-fun b!7547437 () Bool)

(declare-fun e!4496212 () Bool)

(assert (=> b!7547437 (= e!4496212 call!692112)))

(declare-fun c!1393168 () Bool)

(declare-fun bm!692107 () Bool)

(assert (=> bm!692107 (= call!692113 (validRegex!10361 (ite c!1393168 (reg!20262 baseR!101) (ite c!1393167 (regTwo!40379 baseR!101) (regTwo!40378 baseR!101)))))))

(declare-fun b!7547438 () Bool)

(declare-fun e!4496210 () Bool)

(assert (=> b!7547438 (= e!4496210 e!4496208)))

(assert (=> b!7547438 (= c!1393168 ((_ is Star!19933) baseR!101))))

(declare-fun bm!692108 () Bool)

(declare-fun call!692111 () Bool)

(assert (=> bm!692108 (= call!692111 (validRegex!10361 (ite c!1393167 (regOne!40379 baseR!101) (regOne!40378 baseR!101))))))

(declare-fun b!7547439 () Bool)

(declare-fun res!3025077 () Bool)

(assert (=> b!7547439 (=> (not res!3025077) (not e!4496212))))

(assert (=> b!7547439 (= res!3025077 call!692111)))

(assert (=> b!7547439 (= e!4496211 e!4496212)))

(declare-fun b!7547440 () Bool)

(assert (=> b!7547440 (= e!4496206 call!692113)))

(declare-fun b!7547441 () Bool)

(declare-fun res!3025075 () Bool)

(declare-fun e!4496209 () Bool)

(assert (=> b!7547441 (=> res!3025075 e!4496209)))

(assert (=> b!7547441 (= res!3025075 (not ((_ is Concat!28778) baseR!101)))))

(assert (=> b!7547441 (= e!4496211 e!4496209)))

(declare-fun b!7547434 () Bool)

(assert (=> b!7547434 (= e!4496209 e!4496207)))

(declare-fun res!3025079 () Bool)

(assert (=> b!7547434 (=> (not res!3025079) (not e!4496207))))

(assert (=> b!7547434 (= res!3025079 call!692111)))

(declare-fun d!2312318 () Bool)

(declare-fun res!3025078 () Bool)

(assert (=> d!2312318 (=> res!3025078 e!4496210)))

(assert (=> d!2312318 (= res!3025078 ((_ is ElementMatch!19933) baseR!101))))

(assert (=> d!2312318 (= (validRegex!10361 baseR!101) e!4496210)))

(assert (= (and d!2312318 (not res!3025078)) b!7547438))

(assert (= (and b!7547438 c!1393168) b!7547436))

(assert (= (and b!7547438 (not c!1393168)) b!7547435))

(assert (= (and b!7547436 res!3025076) b!7547440))

(assert (= (and b!7547435 c!1393167) b!7547439))

(assert (= (and b!7547435 (not c!1393167)) b!7547441))

(assert (= (and b!7547439 res!3025077) b!7547437))

(assert (= (and b!7547441 (not res!3025075)) b!7547434))

(assert (= (and b!7547434 res!3025079) b!7547433))

(assert (= (or b!7547439 b!7547434) bm!692108))

(assert (= (or b!7547437 b!7547433) bm!692106))

(assert (= (or b!7547440 bm!692106) bm!692107))

(declare-fun m!8115356 () Bool)

(assert (=> b!7547436 m!8115356))

(declare-fun m!8115358 () Bool)

(assert (=> bm!692107 m!8115358))

(declare-fun m!8115360 () Bool)

(assert (=> bm!692108 m!8115360))

(assert (=> start!729784 d!2312318))

(declare-fun d!2312326 () Bool)

(declare-fun e!4496214 () Bool)

(assert (=> d!2312326 e!4496214))

(declare-fun res!3025081 () Bool)

(assert (=> d!2312326 (=> res!3025081 e!4496214)))

(declare-fun lt!2645766 () Bool)

(assert (=> d!2312326 (= res!3025081 (not lt!2645766))))

(declare-fun e!4496213 () Bool)

(assert (=> d!2312326 (= lt!2645766 e!4496213)))

(declare-fun res!3025082 () Bool)

(assert (=> d!2312326 (=> res!3025082 e!4496213)))

(assert (=> d!2312326 (= res!3025082 ((_ is Nil!72692) testedP!423))))

(assert (=> d!2312326 (= (isPrefix!6139 testedP!423 input!7874) lt!2645766)))

(declare-fun b!7547442 () Bool)

(declare-fun e!4496215 () Bool)

(assert (=> b!7547442 (= e!4496213 e!4496215)))

(declare-fun res!3025083 () Bool)

(assert (=> b!7547442 (=> (not res!3025083) (not e!4496215))))

(assert (=> b!7547442 (= res!3025083 (not ((_ is Nil!72692) input!7874)))))

(declare-fun b!7547444 () Bool)

(assert (=> b!7547444 (= e!4496215 (isPrefix!6139 (tail!15069 testedP!423) (tail!15069 input!7874)))))

(declare-fun b!7547445 () Bool)

(assert (=> b!7547445 (= e!4496214 (>= (size!42429 input!7874) (size!42429 testedP!423)))))

(declare-fun b!7547443 () Bool)

(declare-fun res!3025080 () Bool)

(assert (=> b!7547443 (=> (not res!3025080) (not e!4496215))))

(assert (=> b!7547443 (= res!3025080 (= (head!15523 testedP!423) (head!15523 input!7874)))))

(assert (= (and d!2312326 (not res!3025082)) b!7547442))

(assert (= (and b!7547442 res!3025083) b!7547443))

(assert (= (and b!7547443 res!3025080) b!7547444))

(assert (= (and d!2312326 (not res!3025081)) b!7547445))

(assert (=> b!7547444 m!8115134))

(assert (=> b!7547444 m!8115080))

(assert (=> b!7547444 m!8115134))

(assert (=> b!7547444 m!8115080))

(declare-fun m!8115362 () Bool)

(assert (=> b!7547444 m!8115362))

(assert (=> b!7547445 m!8115076))

(assert (=> b!7547445 m!8115034))

(assert (=> b!7547443 m!8115138))

(assert (=> b!7547443 m!8115086))

(assert (=> b!7546985 d!2312326))

(declare-fun bm!692109 () Bool)

(declare-fun call!692115 () Bool)

(declare-fun call!692116 () Bool)

(assert (=> bm!692109 (= call!692115 call!692116)))

(declare-fun b!7547446 () Bool)

(declare-fun e!4496217 () Bool)

(assert (=> b!7547446 (= e!4496217 call!692115)))

(declare-fun b!7547448 () Bool)

(declare-fun e!4496218 () Bool)

(declare-fun e!4496221 () Bool)

(assert (=> b!7547448 (= e!4496218 e!4496221)))

(declare-fun c!1393169 () Bool)

(assert (=> b!7547448 (= c!1393169 ((_ is Union!19933) r!24333))))

(declare-fun b!7547449 () Bool)

(declare-fun e!4496216 () Bool)

(assert (=> b!7547449 (= e!4496218 e!4496216)))

(declare-fun res!3025085 () Bool)

(assert (=> b!7547449 (= res!3025085 (not (nullable!8693 (reg!20262 r!24333))))))

(assert (=> b!7547449 (=> (not res!3025085) (not e!4496216))))

(declare-fun b!7547450 () Bool)

(declare-fun e!4496222 () Bool)

(assert (=> b!7547450 (= e!4496222 call!692115)))

(declare-fun c!1393170 () Bool)

(declare-fun bm!692110 () Bool)

(assert (=> bm!692110 (= call!692116 (validRegex!10361 (ite c!1393170 (reg!20262 r!24333) (ite c!1393169 (regTwo!40379 r!24333) (regTwo!40378 r!24333)))))))

(declare-fun b!7547451 () Bool)

(declare-fun e!4496220 () Bool)

(assert (=> b!7547451 (= e!4496220 e!4496218)))

(assert (=> b!7547451 (= c!1393170 ((_ is Star!19933) r!24333))))

(declare-fun bm!692111 () Bool)

(declare-fun call!692114 () Bool)

(assert (=> bm!692111 (= call!692114 (validRegex!10361 (ite c!1393169 (regOne!40379 r!24333) (regOne!40378 r!24333))))))

(declare-fun b!7547452 () Bool)

(declare-fun res!3025086 () Bool)

(assert (=> b!7547452 (=> (not res!3025086) (not e!4496222))))

(assert (=> b!7547452 (= res!3025086 call!692114)))

(assert (=> b!7547452 (= e!4496221 e!4496222)))

(declare-fun b!7547453 () Bool)

(assert (=> b!7547453 (= e!4496216 call!692116)))

(declare-fun b!7547454 () Bool)

(declare-fun res!3025084 () Bool)

(declare-fun e!4496219 () Bool)

(assert (=> b!7547454 (=> res!3025084 e!4496219)))

(assert (=> b!7547454 (= res!3025084 (not ((_ is Concat!28778) r!24333)))))

(assert (=> b!7547454 (= e!4496221 e!4496219)))

(declare-fun b!7547447 () Bool)

(assert (=> b!7547447 (= e!4496219 e!4496217)))

(declare-fun res!3025088 () Bool)

(assert (=> b!7547447 (=> (not res!3025088) (not e!4496217))))

(assert (=> b!7547447 (= res!3025088 call!692114)))

(declare-fun d!2312328 () Bool)

(declare-fun res!3025087 () Bool)

(assert (=> d!2312328 (=> res!3025087 e!4496220)))

(assert (=> d!2312328 (= res!3025087 ((_ is ElementMatch!19933) r!24333))))

(assert (=> d!2312328 (= (validRegex!10361 r!24333) e!4496220)))

(assert (= (and d!2312328 (not res!3025087)) b!7547451))

(assert (= (and b!7547451 c!1393170) b!7547449))

(assert (= (and b!7547451 (not c!1393170)) b!7547448))

(assert (= (and b!7547449 res!3025085) b!7547453))

(assert (= (and b!7547448 c!1393169) b!7547452))

(assert (= (and b!7547448 (not c!1393169)) b!7547454))

(assert (= (and b!7547452 res!3025086) b!7547450))

(assert (= (and b!7547454 (not res!3025084)) b!7547447))

(assert (= (and b!7547447 res!3025088) b!7547446))

(assert (= (or b!7547452 b!7547447) bm!692111))

(assert (= (or b!7547450 b!7547446) bm!692109))

(assert (= (or b!7547453 bm!692109) bm!692110))

(declare-fun m!8115364 () Bool)

(assert (=> b!7547449 m!8115364))

(declare-fun m!8115366 () Bool)

(assert (=> bm!692110 m!8115366))

(declare-fun m!8115368 () Bool)

(assert (=> bm!692111 m!8115368))

(assert (=> b!7546986 d!2312328))

(declare-fun b!7547468 () Bool)

(declare-fun e!4496225 () Bool)

(declare-fun tp!2195519 () Bool)

(declare-fun tp!2195517 () Bool)

(assert (=> b!7547468 (= e!4496225 (and tp!2195519 tp!2195517))))

(declare-fun b!7547465 () Bool)

(assert (=> b!7547465 (= e!4496225 tp_is_empty!50221)))

(declare-fun b!7547467 () Bool)

(declare-fun tp!2195521 () Bool)

(assert (=> b!7547467 (= e!4496225 tp!2195521)))

(declare-fun b!7547466 () Bool)

(declare-fun tp!2195518 () Bool)

(declare-fun tp!2195520 () Bool)

(assert (=> b!7547466 (= e!4496225 (and tp!2195518 tp!2195520))))

(assert (=> b!7546987 (= tp!2195439 e!4496225)))

(assert (= (and b!7546987 ((_ is ElementMatch!19933) (regOne!40379 baseR!101))) b!7547465))

(assert (= (and b!7546987 ((_ is Concat!28778) (regOne!40379 baseR!101))) b!7547466))

(assert (= (and b!7546987 ((_ is Star!19933) (regOne!40379 baseR!101))) b!7547467))

(assert (= (and b!7546987 ((_ is Union!19933) (regOne!40379 baseR!101))) b!7547468))

(declare-fun b!7547472 () Bool)

(declare-fun e!4496226 () Bool)

(declare-fun tp!2195524 () Bool)

(declare-fun tp!2195522 () Bool)

(assert (=> b!7547472 (= e!4496226 (and tp!2195524 tp!2195522))))

(declare-fun b!7547469 () Bool)

(assert (=> b!7547469 (= e!4496226 tp_is_empty!50221)))

(declare-fun b!7547471 () Bool)

(declare-fun tp!2195526 () Bool)

(assert (=> b!7547471 (= e!4496226 tp!2195526)))

(declare-fun b!7547470 () Bool)

(declare-fun tp!2195523 () Bool)

(declare-fun tp!2195525 () Bool)

(assert (=> b!7547470 (= e!4496226 (and tp!2195523 tp!2195525))))

(assert (=> b!7546987 (= tp!2195441 e!4496226)))

(assert (= (and b!7546987 ((_ is ElementMatch!19933) (regTwo!40379 baseR!101))) b!7547469))

(assert (= (and b!7546987 ((_ is Concat!28778) (regTwo!40379 baseR!101))) b!7547470))

(assert (= (and b!7546987 ((_ is Star!19933) (regTwo!40379 baseR!101))) b!7547471))

(assert (= (and b!7546987 ((_ is Union!19933) (regTwo!40379 baseR!101))) b!7547472))

(declare-fun b!7547477 () Bool)

(declare-fun e!4496229 () Bool)

(declare-fun tp!2195529 () Bool)

(assert (=> b!7547477 (= e!4496229 (and tp_is_empty!50221 tp!2195529))))

(assert (=> b!7547003 (= tp!2195433 e!4496229)))

(assert (= (and b!7547003 ((_ is Cons!72692) (t!387533 input!7874))) b!7547477))

(declare-fun b!7547481 () Bool)

(declare-fun e!4496230 () Bool)

(declare-fun tp!2195532 () Bool)

(declare-fun tp!2195530 () Bool)

(assert (=> b!7547481 (= e!4496230 (and tp!2195532 tp!2195530))))

(declare-fun b!7547478 () Bool)

(assert (=> b!7547478 (= e!4496230 tp_is_empty!50221)))

(declare-fun b!7547480 () Bool)

(declare-fun tp!2195534 () Bool)

(assert (=> b!7547480 (= e!4496230 tp!2195534)))

(declare-fun b!7547479 () Bool)

(declare-fun tp!2195531 () Bool)

(declare-fun tp!2195533 () Bool)

(assert (=> b!7547479 (= e!4496230 (and tp!2195531 tp!2195533))))

(assert (=> b!7546993 (= tp!2195430 e!4496230)))

(assert (= (and b!7546993 ((_ is ElementMatch!19933) (regOne!40378 r!24333))) b!7547478))

(assert (= (and b!7546993 ((_ is Concat!28778) (regOne!40378 r!24333))) b!7547479))

(assert (= (and b!7546993 ((_ is Star!19933) (regOne!40378 r!24333))) b!7547480))

(assert (= (and b!7546993 ((_ is Union!19933) (regOne!40378 r!24333))) b!7547481))

(declare-fun b!7547485 () Bool)

(declare-fun e!4496231 () Bool)

(declare-fun tp!2195537 () Bool)

(declare-fun tp!2195535 () Bool)

(assert (=> b!7547485 (= e!4496231 (and tp!2195537 tp!2195535))))

(declare-fun b!7547482 () Bool)

(assert (=> b!7547482 (= e!4496231 tp_is_empty!50221)))

(declare-fun b!7547484 () Bool)

(declare-fun tp!2195539 () Bool)

(assert (=> b!7547484 (= e!4496231 tp!2195539)))

(declare-fun b!7547483 () Bool)

(declare-fun tp!2195536 () Bool)

(declare-fun tp!2195538 () Bool)

(assert (=> b!7547483 (= e!4496231 (and tp!2195536 tp!2195538))))

(assert (=> b!7546993 (= tp!2195436 e!4496231)))

(assert (= (and b!7546993 ((_ is ElementMatch!19933) (regTwo!40378 r!24333))) b!7547482))

(assert (= (and b!7546993 ((_ is Concat!28778) (regTwo!40378 r!24333))) b!7547483))

(assert (= (and b!7546993 ((_ is Star!19933) (regTwo!40378 r!24333))) b!7547484))

(assert (= (and b!7546993 ((_ is Union!19933) (regTwo!40378 r!24333))) b!7547485))

(declare-fun b!7547489 () Bool)

(declare-fun e!4496232 () Bool)

(declare-fun tp!2195542 () Bool)

(declare-fun tp!2195540 () Bool)

(assert (=> b!7547489 (= e!4496232 (and tp!2195542 tp!2195540))))

(declare-fun b!7547486 () Bool)

(assert (=> b!7547486 (= e!4496232 tp_is_empty!50221)))

(declare-fun b!7547488 () Bool)

(declare-fun tp!2195544 () Bool)

(assert (=> b!7547488 (= e!4496232 tp!2195544)))

(declare-fun b!7547487 () Bool)

(declare-fun tp!2195541 () Bool)

(declare-fun tp!2195543 () Bool)

(assert (=> b!7547487 (= e!4496232 (and tp!2195541 tp!2195543))))

(assert (=> b!7546988 (= tp!2195438 e!4496232)))

(assert (= (and b!7546988 ((_ is ElementMatch!19933) (regOne!40379 r!24333))) b!7547486))

(assert (= (and b!7546988 ((_ is Concat!28778) (regOne!40379 r!24333))) b!7547487))

(assert (= (and b!7546988 ((_ is Star!19933) (regOne!40379 r!24333))) b!7547488))

(assert (= (and b!7546988 ((_ is Union!19933) (regOne!40379 r!24333))) b!7547489))

(declare-fun b!7547493 () Bool)

(declare-fun e!4496233 () Bool)

(declare-fun tp!2195547 () Bool)

(declare-fun tp!2195545 () Bool)

(assert (=> b!7547493 (= e!4496233 (and tp!2195547 tp!2195545))))

(declare-fun b!7547490 () Bool)

(assert (=> b!7547490 (= e!4496233 tp_is_empty!50221)))

(declare-fun b!7547492 () Bool)

(declare-fun tp!2195549 () Bool)

(assert (=> b!7547492 (= e!4496233 tp!2195549)))

(declare-fun b!7547491 () Bool)

(declare-fun tp!2195546 () Bool)

(declare-fun tp!2195548 () Bool)

(assert (=> b!7547491 (= e!4496233 (and tp!2195546 tp!2195548))))

(assert (=> b!7546988 (= tp!2195431 e!4496233)))

(assert (= (and b!7546988 ((_ is ElementMatch!19933) (regTwo!40379 r!24333))) b!7547490))

(assert (= (and b!7546988 ((_ is Concat!28778) (regTwo!40379 r!24333))) b!7547491))

(assert (= (and b!7546988 ((_ is Star!19933) (regTwo!40379 r!24333))) b!7547492))

(assert (= (and b!7546988 ((_ is Union!19933) (regTwo!40379 r!24333))) b!7547493))

(declare-fun b!7547497 () Bool)

(declare-fun e!4496234 () Bool)

(declare-fun tp!2195552 () Bool)

(declare-fun tp!2195550 () Bool)

(assert (=> b!7547497 (= e!4496234 (and tp!2195552 tp!2195550))))

(declare-fun b!7547494 () Bool)

(assert (=> b!7547494 (= e!4496234 tp_is_empty!50221)))

(declare-fun b!7547496 () Bool)

(declare-fun tp!2195554 () Bool)

(assert (=> b!7547496 (= e!4496234 tp!2195554)))

(declare-fun b!7547495 () Bool)

(declare-fun tp!2195551 () Bool)

(declare-fun tp!2195553 () Bool)

(assert (=> b!7547495 (= e!4496234 (and tp!2195551 tp!2195553))))

(assert (=> b!7546994 (= tp!2195437 e!4496234)))

(assert (= (and b!7546994 ((_ is ElementMatch!19933) (reg!20262 r!24333))) b!7547494))

(assert (= (and b!7546994 ((_ is Concat!28778) (reg!20262 r!24333))) b!7547495))

(assert (= (and b!7546994 ((_ is Star!19933) (reg!20262 r!24333))) b!7547496))

(assert (= (and b!7546994 ((_ is Union!19933) (reg!20262 r!24333))) b!7547497))

(declare-fun b!7547498 () Bool)

(declare-fun e!4496235 () Bool)

(declare-fun tp!2195555 () Bool)

(assert (=> b!7547498 (= e!4496235 (and tp_is_empty!50221 tp!2195555))))

(assert (=> b!7546990 (= tp!2195434 e!4496235)))

(assert (= (and b!7546990 ((_ is Cons!72692) (t!387533 knownP!30))) b!7547498))

(declare-fun b!7547502 () Bool)

(declare-fun e!4496236 () Bool)

(declare-fun tp!2195558 () Bool)

(declare-fun tp!2195556 () Bool)

(assert (=> b!7547502 (= e!4496236 (and tp!2195558 tp!2195556))))

(declare-fun b!7547499 () Bool)

(assert (=> b!7547499 (= e!4496236 tp_is_empty!50221)))

(declare-fun b!7547501 () Bool)

(declare-fun tp!2195560 () Bool)

(assert (=> b!7547501 (= e!4496236 tp!2195560)))

(declare-fun b!7547500 () Bool)

(declare-fun tp!2195557 () Bool)

(declare-fun tp!2195559 () Bool)

(assert (=> b!7547500 (= e!4496236 (and tp!2195557 tp!2195559))))

(assert (=> b!7547001 (= tp!2195432 e!4496236)))

(assert (= (and b!7547001 ((_ is ElementMatch!19933) (regOne!40378 baseR!101))) b!7547499))

(assert (= (and b!7547001 ((_ is Concat!28778) (regOne!40378 baseR!101))) b!7547500))

(assert (= (and b!7547001 ((_ is Star!19933) (regOne!40378 baseR!101))) b!7547501))

(assert (= (and b!7547001 ((_ is Union!19933) (regOne!40378 baseR!101))) b!7547502))

(declare-fun b!7547506 () Bool)

(declare-fun e!4496237 () Bool)

(declare-fun tp!2195563 () Bool)

(declare-fun tp!2195561 () Bool)

(assert (=> b!7547506 (= e!4496237 (and tp!2195563 tp!2195561))))

(declare-fun b!7547503 () Bool)

(assert (=> b!7547503 (= e!4496237 tp_is_empty!50221)))

(declare-fun b!7547505 () Bool)

(declare-fun tp!2195565 () Bool)

(assert (=> b!7547505 (= e!4496237 tp!2195565)))

(declare-fun b!7547504 () Bool)

(declare-fun tp!2195562 () Bool)

(declare-fun tp!2195564 () Bool)

(assert (=> b!7547504 (= e!4496237 (and tp!2195562 tp!2195564))))

(assert (=> b!7547001 (= tp!2195429 e!4496237)))

(assert (= (and b!7547001 ((_ is ElementMatch!19933) (regTwo!40378 baseR!101))) b!7547503))

(assert (= (and b!7547001 ((_ is Concat!28778) (regTwo!40378 baseR!101))) b!7547504))

(assert (= (and b!7547001 ((_ is Star!19933) (regTwo!40378 baseR!101))) b!7547505))

(assert (= (and b!7547001 ((_ is Union!19933) (regTwo!40378 baseR!101))) b!7547506))

(declare-fun b!7547507 () Bool)

(declare-fun e!4496238 () Bool)

(declare-fun tp!2195566 () Bool)

(assert (=> b!7547507 (= e!4496238 (and tp_is_empty!50221 tp!2195566))))

(assert (=> b!7546996 (= tp!2195435 e!4496238)))

(assert (= (and b!7546996 ((_ is Cons!72692) (t!387533 testedP!423))) b!7547507))

(declare-fun b!7547511 () Bool)

(declare-fun e!4496239 () Bool)

(declare-fun tp!2195569 () Bool)

(declare-fun tp!2195567 () Bool)

(assert (=> b!7547511 (= e!4496239 (and tp!2195569 tp!2195567))))

(declare-fun b!7547508 () Bool)

(assert (=> b!7547508 (= e!4496239 tp_is_empty!50221)))

(declare-fun b!7547510 () Bool)

(declare-fun tp!2195571 () Bool)

(assert (=> b!7547510 (= e!4496239 tp!2195571)))

(declare-fun b!7547509 () Bool)

(declare-fun tp!2195568 () Bool)

(declare-fun tp!2195570 () Bool)

(assert (=> b!7547509 (= e!4496239 (and tp!2195568 tp!2195570))))

(assert (=> b!7546991 (= tp!2195440 e!4496239)))

(assert (= (and b!7546991 ((_ is ElementMatch!19933) (reg!20262 baseR!101))) b!7547508))

(assert (= (and b!7546991 ((_ is Concat!28778) (reg!20262 baseR!101))) b!7547509))

(assert (= (and b!7546991 ((_ is Star!19933) (reg!20262 baseR!101))) b!7547510))

(assert (= (and b!7546991 ((_ is Union!19933) (reg!20262 baseR!101))) b!7547511))

(check-sat (not b!7547306) (not b!7547177) (not b!7547479) (not bm!692111) (not b!7547445) (not b!7547468) (not b!7547449) (not b!7547093) (not b!7547023) (not b!7547333) (not b!7547290) (not d!2312258) (not b!7547162) (not b!7547505) (not b!7547509) (not b!7547500) (not bm!692108) (not b!7547323) (not b!7547477) (not b!7547325) (not d!2312298) (not b!7547511) (not b!7547126) (not b!7547168) (not b!7547470) (not bm!692110) (not b!7547480) (not b!7547015) (not b!7547095) (not b!7547016) (not b!7547288) (not b!7547467) (not b!7547167) (not d!2312288) (not b!7547329) (not b!7547504) (not b!7547485) (not b!7547124) (not b!7547254) (not b!7547507) (not b!7547491) (not b!7547289) (not b!7547443) (not b!7547488) (not b!7547332) (not b!7547506) (not b!7547017) (not bm!692067) (not b!7547472) (not b!7547502) (not bm!692096) (not b!7547483) (not b!7547125) (not d!2312236) (not bm!692107) (not b!7547497) (not b!7547496) (not b!7547279) (not b!7547087) (not d!2312246) (not b!7547492) (not b!7547094) (not b!7547495) (not b!7547510) (not bm!692089) (not d!2312266) (not b!7547088) (not d!2312244) (not b!7547498) (not d!2312228) (not b!7547331) tp_is_empty!50221 (not d!2312308) (not d!2312306) (not d!2312292) (not b!7547471) (not b!7547322) (not b!7547173) (not b!7547444) (not b!7547255) (not b!7547481) (not d!2312268) (not b!7547436) (not b!7547501) (not b!7547091) (not b!7547121) (not b!7547326) (not d!2312262) (not b!7547466) (not b!7547487) (not b!7547493) (not b!7547175) (not d!2312290) (not b!7547489) (not bm!692090) (not d!2312274) (not b!7547245) (not b!7547163) (not b!7547484) (not b!7547166) (not d!2312264))
(check-sat)
