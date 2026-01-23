; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729692 () Bool)

(assert start!729692)

(declare-fun b!7545379 () Bool)

(declare-fun res!3024151 () Bool)

(declare-fun e!4495191 () Bool)

(assert (=> b!7545379 (=> res!3024151 e!4495191)))

(declare-datatypes ((C!40172 0))(
  ( (C!40173 (val!30526 Int)) )
))
(declare-datatypes ((Regex!19923 0))(
  ( (ElementMatch!19923 (c!1392910 C!40172)) (Concat!28768 (regOne!40358 Regex!19923) (regTwo!40358 Regex!19923)) (EmptyExpr!19923) (Star!19923 (reg!20252 Regex!19923)) (EmptyLang!19923) (Union!19923 (regOne!40359 Regex!19923) (regTwo!40359 Regex!19923)) )
))
(declare-fun r!24333 () Regex!19923)

(declare-fun lostCause!1715 (Regex!19923) Bool)

(assert (=> b!7545379 (= res!3024151 (lostCause!1715 r!24333))))

(declare-fun b!7545380 () Bool)

(declare-fun e!4495185 () Bool)

(assert (=> b!7545380 (= e!4495185 true)))

(declare-fun lt!2645120 () Int)

(declare-fun lt!2645135 () Int)

(declare-datatypes ((List!72806 0))(
  ( (Nil!72682) (Cons!72682 (h!79130 C!40172) (t!387523 List!72806)) )
))
(declare-fun input!7874 () List!72806)

(declare-fun lt!2645119 () Regex!19923)

(declare-fun lt!2645124 () List!72806)

(declare-fun size!42419 (List!72806) Int)

(declare-datatypes ((tuple2!68848 0))(
  ( (tuple2!68849 (_1!37727 List!72806) (_2!37727 List!72806)) )
))
(declare-fun findLongestMatchInner!2132 (Regex!19923 List!72806 Int List!72806 List!72806 Int) tuple2!68848)

(declare-fun getSuffix!3609 (List!72806 List!72806) List!72806)

(assert (=> b!7545380 (>= (size!42419 (_1!37727 (findLongestMatchInner!2132 lt!2645119 lt!2645124 (size!42419 lt!2645124) (getSuffix!3609 input!7874 lt!2645124) input!7874 lt!2645120))) lt!2645135)))

(declare-fun baseR!101 () Regex!19923)

(declare-fun knownP!30 () List!72806)

(declare-datatypes ((Unit!166784 0))(
  ( (Unit!166785) )
))
(declare-fun lt!2645136 () Unit!166784)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!23 (Regex!19923 Regex!19923 List!72806 List!72806 List!72806) Unit!166784)

(assert (=> b!7545380 (= lt!2645136 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!23 baseR!101 lt!2645119 input!7874 lt!2645124 knownP!30))))

(declare-fun b!7545381 () Bool)

(declare-fun e!4495189 () Bool)

(declare-fun tp!2194781 () Bool)

(declare-fun tp!2194780 () Bool)

(assert (=> b!7545381 (= e!4495189 (and tp!2194781 tp!2194780))))

(declare-fun res!3024142 () Bool)

(declare-fun e!4495195 () Bool)

(assert (=> start!729692 (=> (not res!3024142) (not e!4495195))))

(declare-fun validRegex!10351 (Regex!19923) Bool)

(assert (=> start!729692 (= res!3024142 (validRegex!10351 baseR!101))))

(assert (=> start!729692 e!4495195))

(declare-fun e!4495186 () Bool)

(assert (=> start!729692 e!4495186))

(declare-fun e!4495190 () Bool)

(assert (=> start!729692 e!4495190))

(declare-fun e!4495188 () Bool)

(assert (=> start!729692 e!4495188))

(declare-fun e!4495193 () Bool)

(assert (=> start!729692 e!4495193))

(assert (=> start!729692 e!4495189))

(declare-fun b!7545382 () Bool)

(declare-fun tp!2194782 () Bool)

(assert (=> b!7545382 (= e!4495189 tp!2194782)))

(declare-fun b!7545383 () Bool)

(declare-fun res!3024147 () Bool)

(assert (=> b!7545383 (=> (not res!3024147) (not e!4495195))))

(declare-fun isPrefix!6129 (List!72806 List!72806) Bool)

(assert (=> b!7545383 (= res!3024147 (isPrefix!6129 knownP!30 input!7874))))

(declare-fun b!7545384 () Bool)

(declare-fun e!4495196 () Bool)

(declare-fun e!4495184 () Bool)

(assert (=> b!7545384 (= e!4495196 e!4495184)))

(declare-fun res!3024139 () Bool)

(assert (=> b!7545384 (=> res!3024139 e!4495184)))

(declare-fun lt!2645115 () List!72806)

(declare-fun lt!2645127 () C!40172)

(declare-fun head!15513 (List!72806) C!40172)

(assert (=> b!7545384 (= res!3024139 (not (= (head!15513 lt!2645115) lt!2645127)))))

(declare-fun lt!2645118 () List!72806)

(declare-fun lt!2645125 () List!72806)

(assert (=> b!7545384 (= lt!2645118 lt!2645125)))

(declare-fun lt!2645132 () Unit!166784)

(declare-fun testedP!423 () List!72806)

(declare-fun lemmaSamePrefixThenSameSuffix!2857 (List!72806 List!72806 List!72806 List!72806 List!72806) Unit!166784)

(assert (=> b!7545384 (= lt!2645132 (lemmaSamePrefixThenSameSuffix!2857 testedP!423 lt!2645118 testedP!423 lt!2645125 input!7874))))

(declare-fun b!7545385 () Bool)

(declare-fun tp!2194787 () Bool)

(declare-fun tp!2194779 () Bool)

(assert (=> b!7545385 (= e!4495189 (and tp!2194787 tp!2194779))))

(declare-fun b!7545386 () Bool)

(declare-fun tp!2194785 () Bool)

(assert (=> b!7545386 (= e!4495186 tp!2194785)))

(declare-fun b!7545387 () Bool)

(declare-fun res!3024135 () Bool)

(assert (=> b!7545387 (=> (not res!3024135) (not e!4495195))))

(assert (=> b!7545387 (= res!3024135 (isPrefix!6129 testedP!423 input!7874))))

(declare-fun b!7545388 () Bool)

(declare-fun e!4495197 () Bool)

(assert (=> b!7545388 (= e!4495195 e!4495197)))

(declare-fun res!3024138 () Bool)

(assert (=> b!7545388 (=> (not res!3024138) (not e!4495197))))

(declare-fun lt!2645114 () Int)

(assert (=> b!7545388 (= res!3024138 (>= lt!2645135 lt!2645114))))

(assert (=> b!7545388 (= lt!2645114 (size!42419 testedP!423))))

(assert (=> b!7545388 (= lt!2645135 (size!42419 knownP!30))))

(declare-fun b!7545389 () Bool)

(declare-fun tp!2194791 () Bool)

(declare-fun tp!2194786 () Bool)

(assert (=> b!7545389 (= e!4495186 (and tp!2194791 tp!2194786))))

(declare-fun b!7545390 () Bool)

(declare-fun res!3024153 () Bool)

(assert (=> b!7545390 (=> (not res!3024153) (not e!4495195))))

(assert (=> b!7545390 (= res!3024153 (validRegex!10351 r!24333))))

(declare-fun b!7545391 () Bool)

(declare-fun e!4495194 () Bool)

(assert (=> b!7545391 (= e!4495194 e!4495185)))

(declare-fun res!3024148 () Bool)

(assert (=> b!7545391 (=> res!3024148 e!4495185)))

(declare-fun lt!2645128 () List!72806)

(declare-fun lt!2645122 () List!72806)

(assert (=> b!7545391 (= res!3024148 (not (= lt!2645128 lt!2645122)))))

(declare-fun lt!2645130 () List!72806)

(assert (=> b!7545391 (= lt!2645130 lt!2645115)))

(declare-fun lt!2645111 () Unit!166784)

(assert (=> b!7545391 (= lt!2645111 (lemmaSamePrefixThenSameSuffix!2857 testedP!423 lt!2645130 testedP!423 lt!2645115 knownP!30))))

(declare-fun lt!2645110 () List!72806)

(declare-fun ++!17440 (List!72806 List!72806) List!72806)

(assert (=> b!7545391 (= lt!2645110 (++!17440 testedP!423 lt!2645130))))

(declare-fun lt!2645112 () List!72806)

(assert (=> b!7545391 (= lt!2645130 (++!17440 lt!2645112 lt!2645122))))

(declare-fun lt!2645123 () Unit!166784)

(declare-fun lemmaConcatAssociativity!3088 (List!72806 List!72806 List!72806) Unit!166784)

(assert (=> b!7545391 (= lt!2645123 (lemmaConcatAssociativity!3088 testedP!423 lt!2645112 lt!2645122))))

(declare-fun b!7545392 () Bool)

(declare-fun res!3024145 () Bool)

(declare-fun e!4495199 () Bool)

(assert (=> b!7545392 (=> res!3024145 e!4495199)))

(declare-fun lt!2645117 () List!72806)

(assert (=> b!7545392 (= res!3024145 (not (= lt!2645117 knownP!30)))))

(declare-fun b!7545393 () Bool)

(declare-fun tp_is_empty!50201 () Bool)

(declare-fun tp!2194783 () Bool)

(assert (=> b!7545393 (= e!4495190 (and tp_is_empty!50201 tp!2194783))))

(declare-fun b!7545394 () Bool)

(declare-fun e!4495187 () Bool)

(assert (=> b!7545394 (= e!4495191 e!4495187)))

(declare-fun res!3024154 () Bool)

(assert (=> b!7545394 (=> res!3024154 e!4495187)))

(assert (=> b!7545394 (= res!3024154 (>= lt!2645114 lt!2645120))))

(assert (=> b!7545394 (= lt!2645120 (size!42419 input!7874))))

(declare-fun b!7545395 () Bool)

(declare-fun tp!2194788 () Bool)

(assert (=> b!7545395 (= e!4495188 (and tp_is_empty!50201 tp!2194788))))

(declare-fun b!7545396 () Bool)

(declare-fun e!4495198 () Bool)

(assert (=> b!7545396 (= e!4495198 e!4495196)))

(declare-fun res!3024140 () Bool)

(assert (=> b!7545396 (=> res!3024140 e!4495196)))

(declare-fun lt!2645116 () List!72806)

(assert (=> b!7545396 (= res!3024140 (not (= lt!2645116 input!7874)))))

(declare-fun lt!2645121 () List!72806)

(assert (=> b!7545396 (= lt!2645121 lt!2645116)))

(assert (=> b!7545396 (= lt!2645116 (++!17440 testedP!423 lt!2645118))))

(declare-fun lt!2645113 () List!72806)

(assert (=> b!7545396 (= lt!2645118 (++!17440 lt!2645115 lt!2645113))))

(declare-fun lt!2645131 () Unit!166784)

(assert (=> b!7545396 (= lt!2645131 (lemmaConcatAssociativity!3088 testedP!423 lt!2645115 lt!2645113))))

(declare-fun b!7545397 () Bool)

(declare-fun res!3024144 () Bool)

(assert (=> b!7545397 (=> (not res!3024144) (not e!4495197))))

(declare-fun matchR!9525 (Regex!19923 List!72806) Bool)

(assert (=> b!7545397 (= res!3024144 (matchR!9525 baseR!101 knownP!30))))

(declare-fun b!7545398 () Bool)

(declare-fun tp!2194789 () Bool)

(assert (=> b!7545398 (= e!4495193 (and tp_is_empty!50201 tp!2194789))))

(declare-fun b!7545399 () Bool)

(declare-fun e!4495192 () Bool)

(assert (=> b!7545399 (= e!4495187 e!4495192)))

(declare-fun res!3024136 () Bool)

(assert (=> b!7545399 (=> res!3024136 e!4495192)))

(assert (=> b!7545399 (= res!3024136 (not (= (++!17440 knownP!30 lt!2645113) input!7874)))))

(assert (=> b!7545399 (= lt!2645113 (getSuffix!3609 input!7874 knownP!30))))

(assert (=> b!7545399 (= lt!2645122 (getSuffix!3609 knownP!30 lt!2645124))))

(assert (=> b!7545399 (isPrefix!6129 lt!2645124 knownP!30)))

(declare-fun lt!2645133 () Unit!166784)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!879 (List!72806 List!72806 List!72806) Unit!166784)

(assert (=> b!7545399 (= lt!2645133 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!879 knownP!30 lt!2645124 input!7874))))

(declare-fun lt!2645126 () Regex!19923)

(assert (=> b!7545399 (= lt!2645126 lt!2645119)))

(declare-fun derivativeStep!5713 (Regex!19923 C!40172) Regex!19923)

(assert (=> b!7545399 (= lt!2645119 (derivativeStep!5713 r!24333 lt!2645127))))

(declare-fun derivative!455 (Regex!19923 List!72806) Regex!19923)

(assert (=> b!7545399 (= lt!2645126 (derivative!455 baseR!101 lt!2645124))))

(declare-fun lt!2645129 () Unit!166784)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!161 (Regex!19923 Regex!19923 List!72806 C!40172) Unit!166784)

(assert (=> b!7545399 (= lt!2645129 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!161 baseR!101 r!24333 testedP!423 lt!2645127))))

(assert (=> b!7545399 (isPrefix!6129 lt!2645124 input!7874)))

(declare-fun lt!2645134 () Unit!166784)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1194 (List!72806 List!72806) Unit!166784)

(assert (=> b!7545399 (= lt!2645134 (lemmaAddHeadSuffixToPrefixStillPrefix!1194 testedP!423 input!7874))))

(assert (=> b!7545399 (= lt!2645124 (++!17440 testedP!423 lt!2645112))))

(assert (=> b!7545399 (= lt!2645112 (Cons!72682 lt!2645127 Nil!72682))))

(assert (=> b!7545399 (= lt!2645127 (head!15513 lt!2645125))))

(assert (=> b!7545399 (= lt!2645125 (getSuffix!3609 input!7874 testedP!423))))

(declare-fun b!7545400 () Bool)

(assert (=> b!7545400 (= e!4495192 e!4495198)))

(declare-fun res!3024146 () Bool)

(assert (=> b!7545400 (=> res!3024146 e!4495198)))

(assert (=> b!7545400 (= res!3024146 (not (= lt!2645121 input!7874)))))

(assert (=> b!7545400 (= lt!2645121 (++!17440 lt!2645117 lt!2645113))))

(assert (=> b!7545400 (= lt!2645117 (++!17440 testedP!423 lt!2645115))))

(declare-fun b!7545401 () Bool)

(declare-fun tp!2194784 () Bool)

(declare-fun tp!2194790 () Bool)

(assert (=> b!7545401 (= e!4495186 (and tp!2194784 tp!2194790))))

(declare-fun b!7545402 () Bool)

(assert (=> b!7545402 (= e!4495189 tp_is_empty!50201)))

(declare-fun b!7545403 () Bool)

(assert (=> b!7545403 (= e!4495184 e!4495199)))

(declare-fun res!3024141 () Bool)

(assert (=> b!7545403 (=> res!3024141 e!4495199)))

(declare-fun $colon$colon!3383 (List!72806 C!40172) List!72806)

(assert (=> b!7545403 (= res!3024141 (not (= lt!2645115 ($colon$colon!3383 lt!2645128 lt!2645127))))))

(declare-fun tail!15059 (List!72806) List!72806)

(assert (=> b!7545403 (= lt!2645128 (tail!15059 lt!2645115))))

(declare-fun b!7545404 () Bool)

(assert (=> b!7545404 (= e!4495197 (not e!4495191))))

(declare-fun res!3024143 () Bool)

(assert (=> b!7545404 (=> res!3024143 e!4495191)))

(assert (=> b!7545404 (= res!3024143 (not (matchR!9525 r!24333 lt!2645115)))))

(assert (=> b!7545404 (= lt!2645115 (getSuffix!3609 knownP!30 testedP!423))))

(assert (=> b!7545404 (isPrefix!6129 testedP!423 knownP!30)))

(declare-fun lt!2645109 () Unit!166784)

(assert (=> b!7545404 (= lt!2645109 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!879 knownP!30 testedP!423 input!7874))))

(declare-fun b!7545405 () Bool)

(assert (=> b!7545405 (= e!4495186 tp_is_empty!50201)))

(declare-fun b!7545406 () Bool)

(assert (=> b!7545406 (= e!4495199 e!4495194)))

(declare-fun res!3024149 () Bool)

(assert (=> b!7545406 (=> res!3024149 e!4495194)))

(assert (=> b!7545406 (= res!3024149 (not (= lt!2645110 knownP!30)))))

(assert (=> b!7545406 (= lt!2645110 (++!17440 lt!2645124 lt!2645122))))

(declare-fun b!7545407 () Bool)

(declare-fun res!3024152 () Bool)

(assert (=> b!7545407 (=> res!3024152 e!4495191)))

(assert (=> b!7545407 (= res!3024152 (= lt!2645114 lt!2645135))))

(declare-fun b!7545408 () Bool)

(declare-fun res!3024150 () Bool)

(assert (=> b!7545408 (=> res!3024150 e!4495198)))

(assert (=> b!7545408 (= res!3024150 (not (= (++!17440 testedP!423 lt!2645125) input!7874)))))

(declare-fun b!7545409 () Bool)

(declare-fun res!3024137 () Bool)

(assert (=> b!7545409 (=> res!3024137 e!4495191)))

(assert (=> b!7545409 (= res!3024137 (not (= (derivative!455 baseR!101 testedP!423) r!24333)))))

(assert (= (and start!729692 res!3024142) b!7545390))

(assert (= (and b!7545390 res!3024153) b!7545387))

(assert (= (and b!7545387 res!3024135) b!7545383))

(assert (= (and b!7545383 res!3024147) b!7545388))

(assert (= (and b!7545388 res!3024138) b!7545397))

(assert (= (and b!7545397 res!3024144) b!7545404))

(assert (= (and b!7545404 (not res!3024143)) b!7545409))

(assert (= (and b!7545409 (not res!3024137)) b!7545379))

(assert (= (and b!7545379 (not res!3024151)) b!7545407))

(assert (= (and b!7545407 (not res!3024152)) b!7545394))

(assert (= (and b!7545394 (not res!3024154)) b!7545399))

(assert (= (and b!7545399 (not res!3024136)) b!7545400))

(assert (= (and b!7545400 (not res!3024146)) b!7545408))

(assert (= (and b!7545408 (not res!3024150)) b!7545396))

(assert (= (and b!7545396 (not res!3024140)) b!7545384))

(assert (= (and b!7545384 (not res!3024139)) b!7545403))

(assert (= (and b!7545403 (not res!3024141)) b!7545392))

(assert (= (and b!7545392 (not res!3024145)) b!7545406))

(assert (= (and b!7545406 (not res!3024149)) b!7545391))

(assert (= (and b!7545391 (not res!3024148)) b!7545380))

(get-info :version)

(assert (= (and start!729692 ((_ is ElementMatch!19923) baseR!101)) b!7545405))

(assert (= (and start!729692 ((_ is Concat!28768) baseR!101)) b!7545389))

(assert (= (and start!729692 ((_ is Star!19923) baseR!101)) b!7545386))

(assert (= (and start!729692 ((_ is Union!19923) baseR!101)) b!7545401))

(assert (= (and start!729692 ((_ is Cons!72682) input!7874)) b!7545393))

(assert (= (and start!729692 ((_ is Cons!72682) knownP!30)) b!7545395))

(assert (= (and start!729692 ((_ is Cons!72682) testedP!423)) b!7545398))

(assert (= (and start!729692 ((_ is ElementMatch!19923) r!24333)) b!7545402))

(assert (= (and start!729692 ((_ is Concat!28768) r!24333)) b!7545385))

(assert (= (and start!729692 ((_ is Star!19923) r!24333)) b!7545382))

(assert (= (and start!729692 ((_ is Union!19923) r!24333)) b!7545381))

(declare-fun m!8113984 () Bool)

(assert (=> b!7545384 m!8113984))

(declare-fun m!8113986 () Bool)

(assert (=> b!7545384 m!8113986))

(declare-fun m!8113988 () Bool)

(assert (=> b!7545396 m!8113988))

(declare-fun m!8113990 () Bool)

(assert (=> b!7545396 m!8113990))

(declare-fun m!8113992 () Bool)

(assert (=> b!7545396 m!8113992))

(declare-fun m!8113994 () Bool)

(assert (=> b!7545388 m!8113994))

(declare-fun m!8113996 () Bool)

(assert (=> b!7545388 m!8113996))

(declare-fun m!8113998 () Bool)

(assert (=> b!7545390 m!8113998))

(declare-fun m!8114000 () Bool)

(assert (=> b!7545400 m!8114000))

(declare-fun m!8114002 () Bool)

(assert (=> b!7545400 m!8114002))

(declare-fun m!8114004 () Bool)

(assert (=> b!7545387 m!8114004))

(declare-fun m!8114006 () Bool)

(assert (=> b!7545394 m!8114006))

(declare-fun m!8114008 () Bool)

(assert (=> b!7545403 m!8114008))

(declare-fun m!8114010 () Bool)

(assert (=> b!7545403 m!8114010))

(declare-fun m!8114012 () Bool)

(assert (=> b!7545408 m!8114012))

(declare-fun m!8114014 () Bool)

(assert (=> b!7545406 m!8114014))

(declare-fun m!8114016 () Bool)

(assert (=> b!7545404 m!8114016))

(declare-fun m!8114018 () Bool)

(assert (=> b!7545404 m!8114018))

(declare-fun m!8114020 () Bool)

(assert (=> b!7545404 m!8114020))

(declare-fun m!8114022 () Bool)

(assert (=> b!7545404 m!8114022))

(declare-fun m!8114024 () Bool)

(assert (=> b!7545380 m!8114024))

(declare-fun m!8114026 () Bool)

(assert (=> b!7545380 m!8114026))

(assert (=> b!7545380 m!8114026))

(declare-fun m!8114028 () Bool)

(assert (=> b!7545380 m!8114028))

(declare-fun m!8114030 () Bool)

(assert (=> b!7545380 m!8114030))

(assert (=> b!7545380 m!8114028))

(declare-fun m!8114032 () Bool)

(assert (=> b!7545380 m!8114032))

(declare-fun m!8114034 () Bool)

(assert (=> start!729692 m!8114034))

(declare-fun m!8114036 () Bool)

(assert (=> b!7545391 m!8114036))

(declare-fun m!8114038 () Bool)

(assert (=> b!7545391 m!8114038))

(declare-fun m!8114040 () Bool)

(assert (=> b!7545391 m!8114040))

(declare-fun m!8114042 () Bool)

(assert (=> b!7545391 m!8114042))

(declare-fun m!8114044 () Bool)

(assert (=> b!7545379 m!8114044))

(declare-fun m!8114046 () Bool)

(assert (=> b!7545399 m!8114046))

(declare-fun m!8114048 () Bool)

(assert (=> b!7545399 m!8114048))

(declare-fun m!8114050 () Bool)

(assert (=> b!7545399 m!8114050))

(declare-fun m!8114052 () Bool)

(assert (=> b!7545399 m!8114052))

(declare-fun m!8114054 () Bool)

(assert (=> b!7545399 m!8114054))

(declare-fun m!8114056 () Bool)

(assert (=> b!7545399 m!8114056))

(declare-fun m!8114058 () Bool)

(assert (=> b!7545399 m!8114058))

(declare-fun m!8114060 () Bool)

(assert (=> b!7545399 m!8114060))

(declare-fun m!8114062 () Bool)

(assert (=> b!7545399 m!8114062))

(declare-fun m!8114064 () Bool)

(assert (=> b!7545399 m!8114064))

(declare-fun m!8114066 () Bool)

(assert (=> b!7545399 m!8114066))

(declare-fun m!8114068 () Bool)

(assert (=> b!7545399 m!8114068))

(declare-fun m!8114070 () Bool)

(assert (=> b!7545399 m!8114070))

(declare-fun m!8114072 () Bool)

(assert (=> b!7545409 m!8114072))

(declare-fun m!8114074 () Bool)

(assert (=> b!7545383 m!8114074))

(declare-fun m!8114076 () Bool)

(assert (=> b!7545397 m!8114076))

(check-sat (not b!7545387) (not b!7545409) (not b!7545406) (not b!7545395) (not b!7545401) (not b!7545385) (not b!7545396) (not b!7545404) (not b!7545379) (not b!7545382) (not b!7545383) (not b!7545381) (not b!7545389) tp_is_empty!50201 (not b!7545397) (not b!7545391) (not b!7545398) (not start!729692) (not b!7545399) (not b!7545400) (not b!7545386) (not b!7545384) (not b!7545408) (not b!7545403) (not b!7545393) (not b!7545390) (not b!7545380) (not b!7545388) (not b!7545394))
(check-sat)
