; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728932 () Bool)

(assert start!728932)

(declare-fun b!7536274 () Bool)

(declare-fun res!3020121 () Bool)

(declare-fun e!4490727 () Bool)

(assert (=> b!7536274 (=> (not res!3020121) (not e!4490727))))

(declare-datatypes ((C!40096 0))(
  ( (C!40097 (val!30488 Int)) )
))
(declare-datatypes ((List!72768 0))(
  ( (Nil!72644) (Cons!72644 (h!79092 C!40096) (t!387475 List!72768)) )
))
(declare-fun testedP!423 () List!72768)

(declare-fun input!7874 () List!72768)

(declare-fun isPrefix!6091 (List!72768 List!72768) Bool)

(assert (=> b!7536274 (= res!3020121 (isPrefix!6091 testedP!423 input!7874))))

(declare-fun b!7536275 () Bool)

(declare-fun res!3020127 () Bool)

(declare-fun e!4490726 () Bool)

(assert (=> b!7536275 (=> res!3020127 e!4490726)))

(declare-fun lt!2641875 () Int)

(declare-fun size!42381 (List!72768) Int)

(assert (=> b!7536275 (= res!3020127 (>= lt!2641875 (size!42381 input!7874)))))

(declare-fun b!7536276 () Bool)

(declare-fun e!4490730 () Bool)

(assert (=> b!7536276 (= e!4490727 e!4490730)))

(declare-fun res!3020119 () Bool)

(assert (=> b!7536276 (=> (not res!3020119) (not e!4490730))))

(declare-fun lt!2641873 () Int)

(assert (=> b!7536276 (= res!3020119 (>= lt!2641873 lt!2641875))))

(assert (=> b!7536276 (= lt!2641875 (size!42381 testedP!423))))

(declare-fun knownP!30 () List!72768)

(assert (=> b!7536276 (= lt!2641873 (size!42381 knownP!30))))

(declare-fun b!7536277 () Bool)

(declare-fun e!4490728 () Bool)

(declare-fun tp_is_empty!50125 () Bool)

(assert (=> b!7536277 (= e!4490728 tp_is_empty!50125)))

(declare-fun b!7536278 () Bool)

(declare-fun e!4490729 () Bool)

(declare-fun tp!2191876 () Bool)

(assert (=> b!7536278 (= e!4490729 (and tp_is_empty!50125 tp!2191876))))

(declare-fun b!7536279 () Bool)

(declare-fun res!3020128 () Bool)

(assert (=> b!7536279 (=> (not res!3020128) (not e!4490730))))

(declare-datatypes ((Regex!19885 0))(
  ( (ElementMatch!19885 (c!1391560 C!40096)) (Concat!28730 (regOne!40282 Regex!19885) (regTwo!40282 Regex!19885)) (EmptyExpr!19885) (Star!19885 (reg!20214 Regex!19885)) (EmptyLang!19885) (Union!19885 (regOne!40283 Regex!19885) (regTwo!40283 Regex!19885)) )
))
(declare-fun baseR!101 () Regex!19885)

(declare-fun matchR!9487 (Regex!19885 List!72768) Bool)

(assert (=> b!7536279 (= res!3020128 (matchR!9487 baseR!101 knownP!30))))

(declare-fun res!3020120 () Bool)

(assert (=> start!728932 (=> (not res!3020120) (not e!4490727))))

(declare-fun validRegex!10313 (Regex!19885) Bool)

(assert (=> start!728932 (= res!3020120 (validRegex!10313 baseR!101))))

(assert (=> start!728932 e!4490727))

(declare-fun e!4490724 () Bool)

(assert (=> start!728932 e!4490724))

(declare-fun e!4490725 () Bool)

(assert (=> start!728932 e!4490725))

(declare-fun e!4490731 () Bool)

(assert (=> start!728932 e!4490731))

(assert (=> start!728932 e!4490729))

(assert (=> start!728932 e!4490728))

(declare-fun b!7536280 () Bool)

(declare-fun res!3020125 () Bool)

(assert (=> b!7536280 (=> (not res!3020125) (not e!4490727))))

(declare-fun r!24333 () Regex!19885)

(assert (=> b!7536280 (= res!3020125 (validRegex!10313 r!24333))))

(declare-fun b!7536281 () Bool)

(declare-fun tp!2191874 () Bool)

(assert (=> b!7536281 (= e!4490724 tp!2191874)))

(declare-fun b!7536282 () Bool)

(declare-fun res!3020118 () Bool)

(assert (=> b!7536282 (=> res!3020118 e!4490726)))

(declare-fun derivative!417 (Regex!19885 List!72768) Regex!19885)

(assert (=> b!7536282 (= res!3020118 (not (= (derivative!417 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7536283 () Bool)

(declare-fun res!3020124 () Bool)

(assert (=> b!7536283 (=> res!3020124 e!4490726)))

(declare-fun lostCause!1677 (Regex!19885) Bool)

(assert (=> b!7536283 (= res!3020124 (lostCause!1677 r!24333))))

(declare-fun b!7536284 () Bool)

(declare-fun tp!2191873 () Bool)

(assert (=> b!7536284 (= e!4490731 (and tp_is_empty!50125 tp!2191873))))

(declare-fun b!7536285 () Bool)

(declare-fun res!3020126 () Bool)

(assert (=> b!7536285 (=> res!3020126 e!4490726)))

(assert (=> b!7536285 (= res!3020126 (= lt!2641875 lt!2641873))))

(declare-fun b!7536286 () Bool)

(declare-fun tp!2191879 () Bool)

(declare-fun tp!2191868 () Bool)

(assert (=> b!7536286 (= e!4490724 (and tp!2191879 tp!2191868))))

(declare-fun b!7536287 () Bool)

(declare-fun tp!2191877 () Bool)

(assert (=> b!7536287 (= e!4490725 (and tp_is_empty!50125 tp!2191877))))

(declare-fun b!7536288 () Bool)

(assert (=> b!7536288 (= e!4490730 (not e!4490726))))

(declare-fun res!3020123 () Bool)

(assert (=> b!7536288 (=> res!3020123 e!4490726)))

(declare-fun getSuffix!3571 (List!72768 List!72768) List!72768)

(assert (=> b!7536288 (= res!3020123 (not (matchR!9487 r!24333 (getSuffix!3571 knownP!30 testedP!423))))))

(assert (=> b!7536288 (isPrefix!6091 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166708 0))(
  ( (Unit!166709) )
))
(declare-fun lt!2641871 () Unit!166708)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!841 (List!72768 List!72768 List!72768) Unit!166708)

(assert (=> b!7536288 (= lt!2641871 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!841 knownP!30 testedP!423 input!7874))))

(declare-fun b!7536289 () Bool)

(declare-fun res!3020122 () Bool)

(assert (=> b!7536289 (=> (not res!3020122) (not e!4490727))))

(assert (=> b!7536289 (= res!3020122 (isPrefix!6091 knownP!30 input!7874))))

(declare-fun b!7536290 () Bool)

(declare-fun tp!2191870 () Bool)

(declare-fun tp!2191871 () Bool)

(assert (=> b!7536290 (= e!4490728 (and tp!2191870 tp!2191871))))

(declare-fun b!7536291 () Bool)

(declare-fun tp!2191872 () Bool)

(declare-fun tp!2191869 () Bool)

(assert (=> b!7536291 (= e!4490724 (and tp!2191872 tp!2191869))))

(declare-fun b!7536292 () Bool)

(assert (=> b!7536292 (= e!4490726 true)))

(declare-fun lt!2641874 () Int)

(declare-fun lt!2641869 () List!72768)

(assert (=> b!7536292 (= lt!2641874 (size!42381 lt!2641869))))

(declare-fun lt!2641872 () C!40096)

(declare-fun derivativeStep!5675 (Regex!19885 C!40096) Regex!19885)

(assert (=> b!7536292 (= (derivative!417 baseR!101 lt!2641869) (derivativeStep!5675 r!24333 lt!2641872))))

(declare-fun lt!2641876 () Unit!166708)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!123 (Regex!19885 Regex!19885 List!72768 C!40096) Unit!166708)

(assert (=> b!7536292 (= lt!2641876 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!123 baseR!101 r!24333 testedP!423 lt!2641872))))

(assert (=> b!7536292 (isPrefix!6091 lt!2641869 input!7874)))

(declare-fun lt!2641870 () Unit!166708)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1156 (List!72768 List!72768) Unit!166708)

(assert (=> b!7536292 (= lt!2641870 (lemmaAddHeadSuffixToPrefixStillPrefix!1156 testedP!423 input!7874))))

(declare-fun ++!17402 (List!72768 List!72768) List!72768)

(assert (=> b!7536292 (= lt!2641869 (++!17402 testedP!423 (Cons!72644 lt!2641872 Nil!72644)))))

(declare-fun head!15475 (List!72768) C!40096)

(assert (=> b!7536292 (= lt!2641872 (head!15475 (getSuffix!3571 input!7874 testedP!423)))))

(declare-fun b!7536293 () Bool)

(assert (=> b!7536293 (= e!4490724 tp_is_empty!50125)))

(declare-fun b!7536294 () Bool)

(declare-fun tp!2191875 () Bool)

(declare-fun tp!2191867 () Bool)

(assert (=> b!7536294 (= e!4490728 (and tp!2191875 tp!2191867))))

(declare-fun b!7536295 () Bool)

(declare-fun tp!2191878 () Bool)

(assert (=> b!7536295 (= e!4490728 tp!2191878)))

(assert (= (and start!728932 res!3020120) b!7536280))

(assert (= (and b!7536280 res!3020125) b!7536274))

(assert (= (and b!7536274 res!3020121) b!7536289))

(assert (= (and b!7536289 res!3020122) b!7536276))

(assert (= (and b!7536276 res!3020119) b!7536279))

(assert (= (and b!7536279 res!3020128) b!7536288))

(assert (= (and b!7536288 (not res!3020123)) b!7536282))

(assert (= (and b!7536282 (not res!3020118)) b!7536283))

(assert (= (and b!7536283 (not res!3020124)) b!7536285))

(assert (= (and b!7536285 (not res!3020126)) b!7536275))

(assert (= (and b!7536275 (not res!3020127)) b!7536292))

(get-info :version)

(assert (= (and start!728932 ((_ is ElementMatch!19885) baseR!101)) b!7536293))

(assert (= (and start!728932 ((_ is Concat!28730) baseR!101)) b!7536291))

(assert (= (and start!728932 ((_ is Star!19885) baseR!101)) b!7536281))

(assert (= (and start!728932 ((_ is Union!19885) baseR!101)) b!7536286))

(assert (= (and start!728932 ((_ is Cons!72644) input!7874)) b!7536287))

(assert (= (and start!728932 ((_ is Cons!72644) knownP!30)) b!7536284))

(assert (= (and start!728932 ((_ is Cons!72644) testedP!423)) b!7536278))

(assert (= (and start!728932 ((_ is ElementMatch!19885) r!24333)) b!7536277))

(assert (= (and start!728932 ((_ is Concat!28730) r!24333)) b!7536294))

(assert (= (and start!728932 ((_ is Star!19885) r!24333)) b!7536295))

(assert (= (and start!728932 ((_ is Union!19885) r!24333)) b!7536290))

(declare-fun m!8106932 () Bool)

(assert (=> start!728932 m!8106932))

(declare-fun m!8106934 () Bool)

(assert (=> b!7536282 m!8106934))

(declare-fun m!8106936 () Bool)

(assert (=> b!7536275 m!8106936))

(declare-fun m!8106938 () Bool)

(assert (=> b!7536279 m!8106938))

(declare-fun m!8106940 () Bool)

(assert (=> b!7536276 m!8106940))

(declare-fun m!8106942 () Bool)

(assert (=> b!7536276 m!8106942))

(declare-fun m!8106944 () Bool)

(assert (=> b!7536280 m!8106944))

(declare-fun m!8106946 () Bool)

(assert (=> b!7536283 m!8106946))

(declare-fun m!8106948 () Bool)

(assert (=> b!7536289 m!8106948))

(declare-fun m!8106950 () Bool)

(assert (=> b!7536274 m!8106950))

(declare-fun m!8106952 () Bool)

(assert (=> b!7536288 m!8106952))

(assert (=> b!7536288 m!8106952))

(declare-fun m!8106954 () Bool)

(assert (=> b!7536288 m!8106954))

(declare-fun m!8106956 () Bool)

(assert (=> b!7536288 m!8106956))

(declare-fun m!8106958 () Bool)

(assert (=> b!7536288 m!8106958))

(declare-fun m!8106960 () Bool)

(assert (=> b!7536292 m!8106960))

(declare-fun m!8106962 () Bool)

(assert (=> b!7536292 m!8106962))

(declare-fun m!8106964 () Bool)

(assert (=> b!7536292 m!8106964))

(declare-fun m!8106966 () Bool)

(assert (=> b!7536292 m!8106966))

(assert (=> b!7536292 m!8106962))

(declare-fun m!8106968 () Bool)

(assert (=> b!7536292 m!8106968))

(declare-fun m!8106970 () Bool)

(assert (=> b!7536292 m!8106970))

(declare-fun m!8106972 () Bool)

(assert (=> b!7536292 m!8106972))

(declare-fun m!8106974 () Bool)

(assert (=> b!7536292 m!8106974))

(declare-fun m!8106976 () Bool)

(assert (=> b!7536292 m!8106976))

(check-sat (not b!7536281) (not start!728932) (not b!7536287) (not b!7536290) (not b!7536286) (not b!7536292) (not b!7536284) (not b!7536276) (not b!7536294) (not b!7536289) (not b!7536279) tp_is_empty!50125 (not b!7536274) (not b!7536280) (not b!7536283) (not b!7536288) (not b!7536275) (not b!7536278) (not b!7536291) (not b!7536282) (not b!7536295))
(check-sat)
