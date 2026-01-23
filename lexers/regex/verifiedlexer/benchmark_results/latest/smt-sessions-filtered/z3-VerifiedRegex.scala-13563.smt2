; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729688 () Bool)

(assert start!729688)

(declare-fun b!7545193 () Bool)

(declare-fun res!3024019 () Bool)

(declare-fun e!4495102 () Bool)

(assert (=> b!7545193 (=> res!3024019 e!4495102)))

(declare-datatypes ((C!40168 0))(
  ( (C!40169 (val!30524 Int)) )
))
(declare-datatypes ((Regex!19921 0))(
  ( (ElementMatch!19921 (c!1392908 C!40168)) (Concat!28766 (regOne!40354 Regex!19921) (regTwo!40354 Regex!19921)) (EmptyExpr!19921) (Star!19921 (reg!20250 Regex!19921)) (EmptyLang!19921) (Union!19921 (regOne!40355 Regex!19921) (regTwo!40355 Regex!19921)) )
))
(declare-fun r!24333 () Regex!19921)

(declare-fun lostCause!1713 (Regex!19921) Bool)

(assert (=> b!7545193 (= res!3024019 (lostCause!1713 r!24333))))

(declare-fun b!7545194 () Bool)

(declare-fun res!3024034 () Bool)

(declare-fun e!4495099 () Bool)

(assert (=> b!7545194 (=> (not res!3024034) (not e!4495099))))

(declare-fun validRegex!10349 (Regex!19921) Bool)

(assert (=> b!7545194 (= res!3024034 (validRegex!10349 r!24333))))

(declare-fun b!7545195 () Bool)

(declare-fun e!4495088 () Bool)

(declare-fun e!4495092 () Bool)

(assert (=> b!7545195 (= e!4495088 e!4495092)))

(declare-fun res!3024024 () Bool)

(assert (=> b!7545195 (=> res!3024024 e!4495092)))

(declare-datatypes ((List!72804 0))(
  ( (Nil!72680) (Cons!72680 (h!79128 C!40168) (t!387521 List!72804)) )
))
(declare-fun lt!2644960 () List!72804)

(declare-fun lt!2644946 () List!72804)

(assert (=> b!7545195 (= res!3024024 (not (= lt!2644960 lt!2644946)))))

(declare-fun lt!2644956 () List!72804)

(declare-fun lt!2644941 () List!72804)

(assert (=> b!7545195 (= lt!2644956 lt!2644941)))

(declare-fun knownP!30 () List!72804)

(declare-datatypes ((Unit!166780 0))(
  ( (Unit!166781) )
))
(declare-fun lt!2644964 () Unit!166780)

(declare-fun testedP!423 () List!72804)

(declare-fun lemmaSamePrefixThenSameSuffix!2855 (List!72804 List!72804 List!72804 List!72804 List!72804) Unit!166780)

(assert (=> b!7545195 (= lt!2644964 (lemmaSamePrefixThenSameSuffix!2855 testedP!423 lt!2644956 testedP!423 lt!2644941 knownP!30))))

(declare-fun lt!2644949 () List!72804)

(declare-fun ++!17438 (List!72804 List!72804) List!72804)

(assert (=> b!7545195 (= lt!2644949 (++!17438 testedP!423 lt!2644956))))

(declare-fun lt!2644947 () List!72804)

(assert (=> b!7545195 (= lt!2644956 (++!17438 lt!2644947 lt!2644946))))

(declare-fun lt!2644954 () Unit!166780)

(declare-fun lemmaConcatAssociativity!3086 (List!72804 List!72804 List!72804) Unit!166780)

(assert (=> b!7545195 (= lt!2644954 (lemmaConcatAssociativity!3086 testedP!423 lt!2644947 lt!2644946))))

(declare-fun b!7545196 () Bool)

(declare-fun e!4495098 () Bool)

(assert (=> b!7545196 (= e!4495102 e!4495098)))

(declare-fun res!3024033 () Bool)

(assert (=> b!7545196 (=> res!3024033 e!4495098)))

(declare-fun lt!2644952 () Int)

(declare-fun lt!2644963 () Int)

(assert (=> b!7545196 (= res!3024033 (>= lt!2644952 lt!2644963))))

(declare-fun input!7874 () List!72804)

(declare-fun size!42417 (List!72804) Int)

(assert (=> b!7545196 (= lt!2644963 (size!42417 input!7874))))

(declare-fun b!7545197 () Bool)

(declare-fun e!4495089 () Bool)

(assert (=> b!7545197 (= e!4495089 e!4495088)))

(declare-fun res!3024018 () Bool)

(assert (=> b!7545197 (=> res!3024018 e!4495088)))

(assert (=> b!7545197 (= res!3024018 (not (= lt!2644949 knownP!30)))))

(declare-fun lt!2644967 () List!72804)

(assert (=> b!7545197 (= lt!2644949 (++!17438 lt!2644967 lt!2644946))))

(declare-fun b!7545198 () Bool)

(declare-fun e!4495094 () Bool)

(declare-fun e!4495101 () Bool)

(assert (=> b!7545198 (= e!4495094 e!4495101)))

(declare-fun res!3024025 () Bool)

(assert (=> b!7545198 (=> res!3024025 e!4495101)))

(declare-fun lt!2644959 () List!72804)

(assert (=> b!7545198 (= res!3024025 (not (= lt!2644959 input!7874)))))

(declare-fun lt!2644951 () List!72804)

(assert (=> b!7545198 (= lt!2644951 lt!2644959)))

(declare-fun lt!2644958 () List!72804)

(assert (=> b!7545198 (= lt!2644959 (++!17438 testedP!423 lt!2644958))))

(declare-fun lt!2644944 () List!72804)

(assert (=> b!7545198 (= lt!2644958 (++!17438 lt!2644941 lt!2644944))))

(declare-fun lt!2644968 () Unit!166780)

(assert (=> b!7545198 (= lt!2644968 (lemmaConcatAssociativity!3086 testedP!423 lt!2644941 lt!2644944))))

(declare-fun b!7545199 () Bool)

(declare-fun e!4495100 () Bool)

(assert (=> b!7545199 (= e!4495098 e!4495100)))

(declare-fun res!3024026 () Bool)

(assert (=> b!7545199 (=> res!3024026 e!4495100)))

(assert (=> b!7545199 (= res!3024026 (not (= (++!17438 knownP!30 lt!2644944) input!7874)))))

(declare-fun getSuffix!3607 (List!72804 List!72804) List!72804)

(assert (=> b!7545199 (= lt!2644944 (getSuffix!3607 input!7874 knownP!30))))

(assert (=> b!7545199 (= lt!2644946 (getSuffix!3607 knownP!30 lt!2644967))))

(declare-fun isPrefix!6127 (List!72804 List!72804) Bool)

(assert (=> b!7545199 (isPrefix!6127 lt!2644967 knownP!30)))

(declare-fun lt!2644962 () Unit!166780)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!877 (List!72804 List!72804 List!72804) Unit!166780)

(assert (=> b!7545199 (= lt!2644962 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!877 knownP!30 lt!2644967 input!7874))))

(declare-fun lt!2644943 () Regex!19921)

(declare-fun lt!2644957 () Regex!19921)

(assert (=> b!7545199 (= lt!2644943 lt!2644957)))

(declare-fun lt!2644961 () C!40168)

(declare-fun derivativeStep!5711 (Regex!19921 C!40168) Regex!19921)

(assert (=> b!7545199 (= lt!2644957 (derivativeStep!5711 r!24333 lt!2644961))))

(declare-fun baseR!101 () Regex!19921)

(declare-fun derivative!453 (Regex!19921 List!72804) Regex!19921)

(assert (=> b!7545199 (= lt!2644943 (derivative!453 baseR!101 lt!2644967))))

(declare-fun lt!2644950 () Unit!166780)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!159 (Regex!19921 Regex!19921 List!72804 C!40168) Unit!166780)

(assert (=> b!7545199 (= lt!2644950 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!159 baseR!101 r!24333 testedP!423 lt!2644961))))

(assert (=> b!7545199 (isPrefix!6127 lt!2644967 input!7874)))

(declare-fun lt!2644945 () Unit!166780)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1192 (List!72804 List!72804) Unit!166780)

(assert (=> b!7545199 (= lt!2644945 (lemmaAddHeadSuffixToPrefixStillPrefix!1192 testedP!423 input!7874))))

(assert (=> b!7545199 (= lt!2644967 (++!17438 testedP!423 lt!2644947))))

(assert (=> b!7545199 (= lt!2644947 (Cons!72680 lt!2644961 Nil!72680))))

(declare-fun lt!2644948 () List!72804)

(declare-fun head!15511 (List!72804) C!40168)

(assert (=> b!7545199 (= lt!2644961 (head!15511 lt!2644948))))

(assert (=> b!7545199 (= lt!2644948 (getSuffix!3607 input!7874 testedP!423))))

(declare-fun b!7545200 () Bool)

(assert (=> b!7545200 (= e!4495100 e!4495094)))

(declare-fun res!3024032 () Bool)

(assert (=> b!7545200 (=> res!3024032 e!4495094)))

(assert (=> b!7545200 (= res!3024032 (not (= lt!2644951 input!7874)))))

(declare-fun lt!2644955 () List!72804)

(assert (=> b!7545200 (= lt!2644951 (++!17438 lt!2644955 lt!2644944))))

(assert (=> b!7545200 (= lt!2644955 (++!17438 testedP!423 lt!2644941))))

(declare-fun b!7545202 () Bool)

(declare-fun e!4495091 () Bool)

(declare-fun tp_is_empty!50197 () Bool)

(assert (=> b!7545202 (= e!4495091 tp_is_empty!50197)))

(declare-fun b!7545203 () Bool)

(declare-fun e!4495096 () Bool)

(declare-fun tp!2194705 () Bool)

(declare-fun tp!2194709 () Bool)

(assert (=> b!7545203 (= e!4495096 (and tp!2194705 tp!2194709))))

(declare-fun b!7545204 () Bool)

(declare-fun res!3024030 () Bool)

(assert (=> b!7545204 (=> res!3024030 e!4495102)))

(assert (=> b!7545204 (= res!3024030 (not (= (derivative!453 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7545205 () Bool)

(declare-fun tp!2194712 () Bool)

(declare-fun tp!2194707 () Bool)

(assert (=> b!7545205 (= e!4495096 (and tp!2194712 tp!2194707))))

(declare-fun b!7545206 () Bool)

(declare-fun res!3024016 () Bool)

(assert (=> b!7545206 (=> (not res!3024016) (not e!4495099))))

(assert (=> b!7545206 (= res!3024016 (isPrefix!6127 testedP!423 input!7874))))

(declare-fun b!7545207 () Bool)

(declare-fun e!4495095 () Bool)

(assert (=> b!7545207 (= e!4495101 e!4495095)))

(declare-fun res!3024027 () Bool)

(assert (=> b!7545207 (=> res!3024027 e!4495095)))

(assert (=> b!7545207 (= res!3024027 (not (= (head!15511 lt!2644941) lt!2644961)))))

(assert (=> b!7545207 (= lt!2644958 lt!2644948)))

(declare-fun lt!2644966 () Unit!166780)

(assert (=> b!7545207 (= lt!2644966 (lemmaSamePrefixThenSameSuffix!2855 testedP!423 lt!2644958 testedP!423 lt!2644948 input!7874))))

(declare-fun b!7545208 () Bool)

(declare-fun res!3024023 () Bool)

(assert (=> b!7545208 (=> res!3024023 e!4495094)))

(assert (=> b!7545208 (= res!3024023 (not (= (++!17438 testedP!423 lt!2644948) input!7874)))))

(declare-fun b!7545209 () Bool)

(declare-fun res!3024029 () Bool)

(assert (=> b!7545209 (=> res!3024029 e!4495089)))

(assert (=> b!7545209 (= res!3024029 (not (= lt!2644955 knownP!30)))))

(declare-fun b!7545210 () Bool)

(declare-fun e!4495093 () Bool)

(declare-fun tp!2194701 () Bool)

(assert (=> b!7545210 (= e!4495093 (and tp_is_empty!50197 tp!2194701))))

(declare-fun b!7545211 () Bool)

(declare-fun res!3024021 () Bool)

(assert (=> b!7545211 (=> res!3024021 e!4495102)))

(declare-fun lt!2644942 () Int)

(assert (=> b!7545211 (= res!3024021 (= lt!2644952 lt!2644942))))

(declare-fun b!7545212 () Bool)

(assert (=> b!7545212 (= e!4495092 (>= lt!2644963 lt!2644952))))

(declare-datatypes ((tuple2!68844 0))(
  ( (tuple2!68845 (_1!37725 List!72804) (_2!37725 List!72804)) )
))
(declare-fun findLongestMatchInner!2130 (Regex!19921 List!72804 Int List!72804 List!72804 Int) tuple2!68844)

(assert (=> b!7545212 (>= (size!42417 (_1!37725 (findLongestMatchInner!2130 lt!2644957 lt!2644967 (size!42417 lt!2644967) (getSuffix!3607 input!7874 lt!2644967) input!7874 lt!2644963))) lt!2644942)))

(declare-fun lt!2644953 () Unit!166780)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!21 (Regex!19921 Regex!19921 List!72804 List!72804 List!72804) Unit!166780)

(assert (=> b!7545212 (= lt!2644953 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!21 baseR!101 lt!2644957 input!7874 lt!2644967 knownP!30))))

(declare-fun b!7545213 () Bool)

(declare-fun tp!2194710 () Bool)

(declare-fun tp!2194708 () Bool)

(assert (=> b!7545213 (= e!4495091 (and tp!2194710 tp!2194708))))

(declare-fun b!7545214 () Bool)

(assert (=> b!7545214 (= e!4495095 e!4495089)))

(declare-fun res!3024017 () Bool)

(assert (=> b!7545214 (=> res!3024017 e!4495089)))

(declare-fun $colon$colon!3381 (List!72804 C!40168) List!72804)

(assert (=> b!7545214 (= res!3024017 (not (= lt!2644941 ($colon$colon!3381 lt!2644960 lt!2644961))))))

(declare-fun tail!15057 (List!72804) List!72804)

(assert (=> b!7545214 (= lt!2644960 (tail!15057 lt!2644941))))

(declare-fun b!7545215 () Bool)

(declare-fun tp!2194711 () Bool)

(assert (=> b!7545215 (= e!4495091 tp!2194711)))

(declare-fun b!7545216 () Bool)

(declare-fun e!4495103 () Bool)

(assert (=> b!7545216 (= e!4495103 (not e!4495102))))

(declare-fun res!3024028 () Bool)

(assert (=> b!7545216 (=> res!3024028 e!4495102)))

(declare-fun matchR!9523 (Regex!19921 List!72804) Bool)

(assert (=> b!7545216 (= res!3024028 (not (matchR!9523 r!24333 lt!2644941)))))

(assert (=> b!7545216 (= lt!2644941 (getSuffix!3607 knownP!30 testedP!423))))

(assert (=> b!7545216 (isPrefix!6127 testedP!423 knownP!30)))

(declare-fun lt!2644965 () Unit!166780)

(assert (=> b!7545216 (= lt!2644965 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!877 knownP!30 testedP!423 input!7874))))

(declare-fun b!7545217 () Bool)

(assert (=> b!7545217 (= e!4495099 e!4495103)))

(declare-fun res!3024022 () Bool)

(assert (=> b!7545217 (=> (not res!3024022) (not e!4495103))))

(assert (=> b!7545217 (= res!3024022 (>= lt!2644942 lt!2644952))))

(assert (=> b!7545217 (= lt!2644952 (size!42417 testedP!423))))

(assert (=> b!7545217 (= lt!2644942 (size!42417 knownP!30))))

(declare-fun b!7545218 () Bool)

(assert (=> b!7545218 (= e!4495096 tp_is_empty!50197)))

(declare-fun b!7545219 () Bool)

(declare-fun res!3024015 () Bool)

(assert (=> b!7545219 (=> (not res!3024015) (not e!4495099))))

(assert (=> b!7545219 (= res!3024015 (isPrefix!6127 knownP!30 input!7874))))

(declare-fun b!7545220 () Bool)

(declare-fun e!4495097 () Bool)

(declare-fun tp!2194706 () Bool)

(assert (=> b!7545220 (= e!4495097 (and tp_is_empty!50197 tp!2194706))))

(declare-fun b!7545221 () Bool)

(declare-fun tp!2194702 () Bool)

(assert (=> b!7545221 (= e!4495096 tp!2194702)))

(declare-fun b!7545201 () Bool)

(declare-fun tp!2194713 () Bool)

(declare-fun tp!2194703 () Bool)

(assert (=> b!7545201 (= e!4495091 (and tp!2194713 tp!2194703))))

(declare-fun res!3024031 () Bool)

(assert (=> start!729688 (=> (not res!3024031) (not e!4495099))))

(assert (=> start!729688 (= res!3024031 (validRegex!10349 baseR!101))))

(assert (=> start!729688 e!4495099))

(assert (=> start!729688 e!4495091))

(assert (=> start!729688 e!4495093))

(declare-fun e!4495090 () Bool)

(assert (=> start!729688 e!4495090))

(assert (=> start!729688 e!4495097))

(assert (=> start!729688 e!4495096))

(declare-fun b!7545222 () Bool)

(declare-fun res!3024020 () Bool)

(assert (=> b!7545222 (=> (not res!3024020) (not e!4495103))))

(assert (=> b!7545222 (= res!3024020 (matchR!9523 baseR!101 knownP!30))))

(declare-fun b!7545223 () Bool)

(declare-fun tp!2194704 () Bool)

(assert (=> b!7545223 (= e!4495090 (and tp_is_empty!50197 tp!2194704))))

(assert (= (and start!729688 res!3024031) b!7545194))

(assert (= (and b!7545194 res!3024034) b!7545206))

(assert (= (and b!7545206 res!3024016) b!7545219))

(assert (= (and b!7545219 res!3024015) b!7545217))

(assert (= (and b!7545217 res!3024022) b!7545222))

(assert (= (and b!7545222 res!3024020) b!7545216))

(assert (= (and b!7545216 (not res!3024028)) b!7545204))

(assert (= (and b!7545204 (not res!3024030)) b!7545193))

(assert (= (and b!7545193 (not res!3024019)) b!7545211))

(assert (= (and b!7545211 (not res!3024021)) b!7545196))

(assert (= (and b!7545196 (not res!3024033)) b!7545199))

(assert (= (and b!7545199 (not res!3024026)) b!7545200))

(assert (= (and b!7545200 (not res!3024032)) b!7545208))

(assert (= (and b!7545208 (not res!3024023)) b!7545198))

(assert (= (and b!7545198 (not res!3024025)) b!7545207))

(assert (= (and b!7545207 (not res!3024027)) b!7545214))

(assert (= (and b!7545214 (not res!3024017)) b!7545209))

(assert (= (and b!7545209 (not res!3024029)) b!7545197))

(assert (= (and b!7545197 (not res!3024018)) b!7545195))

(assert (= (and b!7545195 (not res!3024024)) b!7545212))

(get-info :version)

(assert (= (and start!729688 ((_ is ElementMatch!19921) baseR!101)) b!7545202))

(assert (= (and start!729688 ((_ is Concat!28766) baseR!101)) b!7545213))

(assert (= (and start!729688 ((_ is Star!19921) baseR!101)) b!7545215))

(assert (= (and start!729688 ((_ is Union!19921) baseR!101)) b!7545201))

(assert (= (and start!729688 ((_ is Cons!72680) input!7874)) b!7545210))

(assert (= (and start!729688 ((_ is Cons!72680) knownP!30)) b!7545223))

(assert (= (and start!729688 ((_ is Cons!72680) testedP!423)) b!7545220))

(assert (= (and start!729688 ((_ is ElementMatch!19921) r!24333)) b!7545218))

(assert (= (and start!729688 ((_ is Concat!28766) r!24333)) b!7545205))

(assert (= (and start!729688 ((_ is Star!19921) r!24333)) b!7545221))

(assert (= (and start!729688 ((_ is Union!19921) r!24333)) b!7545203))

(declare-fun m!8113796 () Bool)

(assert (=> b!7545199 m!8113796))

(declare-fun m!8113798 () Bool)

(assert (=> b!7545199 m!8113798))

(declare-fun m!8113800 () Bool)

(assert (=> b!7545199 m!8113800))

(declare-fun m!8113802 () Bool)

(assert (=> b!7545199 m!8113802))

(declare-fun m!8113804 () Bool)

(assert (=> b!7545199 m!8113804))

(declare-fun m!8113806 () Bool)

(assert (=> b!7545199 m!8113806))

(declare-fun m!8113808 () Bool)

(assert (=> b!7545199 m!8113808))

(declare-fun m!8113810 () Bool)

(assert (=> b!7545199 m!8113810))

(declare-fun m!8113812 () Bool)

(assert (=> b!7545199 m!8113812))

(declare-fun m!8113814 () Bool)

(assert (=> b!7545199 m!8113814))

(declare-fun m!8113816 () Bool)

(assert (=> b!7545199 m!8113816))

(declare-fun m!8113818 () Bool)

(assert (=> b!7545199 m!8113818))

(declare-fun m!8113820 () Bool)

(assert (=> b!7545199 m!8113820))

(declare-fun m!8113822 () Bool)

(assert (=> b!7545195 m!8113822))

(declare-fun m!8113824 () Bool)

(assert (=> b!7545195 m!8113824))

(declare-fun m!8113826 () Bool)

(assert (=> b!7545195 m!8113826))

(declare-fun m!8113828 () Bool)

(assert (=> b!7545195 m!8113828))

(declare-fun m!8113830 () Bool)

(assert (=> b!7545219 m!8113830))

(declare-fun m!8113832 () Bool)

(assert (=> b!7545208 m!8113832))

(declare-fun m!8113834 () Bool)

(assert (=> b!7545193 m!8113834))

(declare-fun m!8113836 () Bool)

(assert (=> b!7545212 m!8113836))

(declare-fun m!8113838 () Bool)

(assert (=> b!7545212 m!8113838))

(declare-fun m!8113840 () Bool)

(assert (=> b!7545212 m!8113840))

(declare-fun m!8113842 () Bool)

(assert (=> b!7545212 m!8113842))

(assert (=> b!7545212 m!8113840))

(assert (=> b!7545212 m!8113838))

(declare-fun m!8113844 () Bool)

(assert (=> b!7545212 m!8113844))

(declare-fun m!8113846 () Bool)

(assert (=> b!7545196 m!8113846))

(declare-fun m!8113848 () Bool)

(assert (=> b!7545198 m!8113848))

(declare-fun m!8113850 () Bool)

(assert (=> b!7545198 m!8113850))

(declare-fun m!8113852 () Bool)

(assert (=> b!7545198 m!8113852))

(declare-fun m!8113854 () Bool)

(assert (=> b!7545197 m!8113854))

(declare-fun m!8113856 () Bool)

(assert (=> b!7545222 m!8113856))

(declare-fun m!8113858 () Bool)

(assert (=> start!729688 m!8113858))

(declare-fun m!8113860 () Bool)

(assert (=> b!7545216 m!8113860))

(declare-fun m!8113862 () Bool)

(assert (=> b!7545216 m!8113862))

(declare-fun m!8113864 () Bool)

(assert (=> b!7545216 m!8113864))

(declare-fun m!8113866 () Bool)

(assert (=> b!7545216 m!8113866))

(declare-fun m!8113868 () Bool)

(assert (=> b!7545206 m!8113868))

(declare-fun m!8113870 () Bool)

(assert (=> b!7545194 m!8113870))

(declare-fun m!8113872 () Bool)

(assert (=> b!7545200 m!8113872))

(declare-fun m!8113874 () Bool)

(assert (=> b!7545200 m!8113874))

(declare-fun m!8113876 () Bool)

(assert (=> b!7545207 m!8113876))

(declare-fun m!8113878 () Bool)

(assert (=> b!7545207 m!8113878))

(declare-fun m!8113880 () Bool)

(assert (=> b!7545204 m!8113880))

(declare-fun m!8113882 () Bool)

(assert (=> b!7545217 m!8113882))

(declare-fun m!8113884 () Bool)

(assert (=> b!7545217 m!8113884))

(declare-fun m!8113886 () Bool)

(assert (=> b!7545214 m!8113886))

(declare-fun m!8113888 () Bool)

(assert (=> b!7545214 m!8113888))

(check-sat (not b!7545197) (not b!7545199) (not b!7545223) (not b!7545208) (not b!7545203) (not b!7545219) (not b!7545204) (not b!7545201) (not b!7545214) (not start!729688) (not b!7545193) (not b!7545194) (not b!7545200) (not b!7545221) (not b!7545212) tp_is_empty!50197 (not b!7545213) (not b!7545206) (not b!7545205) (not b!7545198) (not b!7545215) (not b!7545195) (not b!7545210) (not b!7545196) (not b!7545207) (not b!7545216) (not b!7545217) (not b!7545222) (not b!7545220))
(check-sat)
