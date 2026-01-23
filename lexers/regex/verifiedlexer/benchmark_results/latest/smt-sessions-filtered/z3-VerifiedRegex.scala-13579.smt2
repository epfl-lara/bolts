; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730244 () Bool)

(assert start!730244)

(declare-fun b!7552328 () Bool)

(declare-fun res!3027177 () Bool)

(declare-fun e!4498598 () Bool)

(assert (=> b!7552328 (=> (not res!3027177) (not e!4498598))))

(declare-datatypes ((C!40232 0))(
  ( (C!40233 (val!30556 Int)) )
))
(declare-datatypes ((List!72836 0))(
  ( (Nil!72712) (Cons!72712 (h!79160 C!40232) (t!387559 List!72836)) )
))
(declare-fun knownP!30 () List!72836)

(declare-fun input!7874 () List!72836)

(declare-fun isPrefix!6159 (List!72836 List!72836) Bool)

(assert (=> b!7552328 (= res!3027177 (isPrefix!6159 knownP!30 input!7874))))

(declare-fun b!7552329 () Bool)

(declare-fun res!3027188 () Bool)

(declare-fun e!4498593 () Bool)

(assert (=> b!7552329 (=> res!3027188 e!4498593)))

(declare-fun lt!2647370 () List!72836)

(declare-fun testedP!423 () List!72836)

(declare-fun ++!17469 (List!72836 List!72836) List!72836)

(assert (=> b!7552329 (= res!3027188 (not (= (++!17469 testedP!423 lt!2647370) input!7874)))))

(declare-fun b!7552330 () Bool)

(declare-fun res!3027182 () Bool)

(declare-fun e!4498599 () Bool)

(assert (=> b!7552330 (=> (not res!3027182) (not e!4498599))))

(declare-datatypes ((Regex!19953 0))(
  ( (ElementMatch!19953 (c!1393902 C!40232)) (Concat!28798 (regOne!40418 Regex!19953) (regTwo!40418 Regex!19953)) (EmptyExpr!19953) (Star!19953 (reg!20282 Regex!19953)) (EmptyLang!19953) (Union!19953 (regOne!40419 Regex!19953) (regTwo!40419 Regex!19953)) )
))
(declare-fun baseR!101 () Regex!19953)

(declare-fun matchR!9555 (Regex!19953 List!72836) Bool)

(assert (=> b!7552330 (= res!3027182 (matchR!9555 baseR!101 knownP!30))))

(declare-fun b!7552331 () Bool)

(declare-fun e!4498591 () Bool)

(assert (=> b!7552331 (= e!4498599 (not e!4498591))))

(declare-fun res!3027173 () Bool)

(assert (=> b!7552331 (=> res!3027173 e!4498591)))

(declare-fun r!24333 () Regex!19953)

(declare-fun lt!2647376 () List!72836)

(assert (=> b!7552331 (= res!3027173 (not (matchR!9555 r!24333 lt!2647376)))))

(declare-fun getSuffix!3639 (List!72836 List!72836) List!72836)

(assert (=> b!7552331 (= lt!2647376 (getSuffix!3639 knownP!30 testedP!423))))

(assert (=> b!7552331 (isPrefix!6159 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166844 0))(
  ( (Unit!166845) )
))
(declare-fun lt!2647387 () Unit!166844)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!909 (List!72836 List!72836 List!72836) Unit!166844)

(assert (=> b!7552331 (= lt!2647387 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!909 knownP!30 testedP!423 input!7874))))

(declare-fun b!7552332 () Bool)

(declare-fun res!3027178 () Bool)

(declare-fun e!4498588 () Bool)

(assert (=> b!7552332 (=> res!3027178 e!4498588)))

(declare-fun lt!2647368 () List!72836)

(assert (=> b!7552332 (= res!3027178 (not (= lt!2647368 knownP!30)))))

(declare-fun b!7552333 () Bool)

(declare-fun e!4498590 () Bool)

(assert (=> b!7552333 (= e!4498588 e!4498590)))

(declare-fun res!3027180 () Bool)

(assert (=> b!7552333 (=> res!3027180 e!4498590)))

(declare-fun lt!2647379 () List!72836)

(assert (=> b!7552333 (= res!3027180 (not (= lt!2647379 knownP!30)))))

(declare-fun lt!2647369 () List!72836)

(declare-fun lt!2647385 () List!72836)

(assert (=> b!7552333 (= lt!2647379 (++!17469 lt!2647369 lt!2647385))))

(declare-fun b!7552334 () Bool)

(assert (=> b!7552334 (= e!4498598 e!4498599)))

(declare-fun res!3027185 () Bool)

(assert (=> b!7552334 (=> (not res!3027185) (not e!4498599))))

(declare-fun lt!2647375 () Int)

(declare-fun lt!2647384 () Int)

(assert (=> b!7552334 (= res!3027185 (>= lt!2647375 lt!2647384))))

(declare-fun size!42449 (List!72836) Int)

(assert (=> b!7552334 (= lt!2647384 (size!42449 testedP!423))))

(assert (=> b!7552334 (= lt!2647375 (size!42449 knownP!30))))

(declare-fun b!7552336 () Bool)

(declare-fun res!3027184 () Bool)

(assert (=> b!7552336 (=> (not res!3027184) (not e!4498598))))

(declare-fun validRegex!10381 (Regex!19953) Bool)

(assert (=> b!7552336 (= res!3027184 (validRegex!10381 r!24333))))

(declare-fun b!7552337 () Bool)

(declare-fun e!4498586 () Bool)

(assert (=> b!7552337 (= e!4498586 e!4498588)))

(declare-fun res!3027186 () Bool)

(assert (=> b!7552337 (=> res!3027186 e!4498588)))

(declare-fun lt!2647380 () List!72836)

(declare-fun lt!2647388 () C!40232)

(declare-fun $colon$colon!3397 (List!72836 C!40232) List!72836)

(assert (=> b!7552337 (= res!3027186 (not (= lt!2647376 ($colon$colon!3397 lt!2647380 lt!2647388))))))

(declare-fun tail!15085 (List!72836) List!72836)

(assert (=> b!7552337 (= lt!2647380 (tail!15085 lt!2647376))))

(declare-fun b!7552338 () Bool)

(declare-fun res!3027181 () Bool)

(assert (=> b!7552338 (=> res!3027181 e!4498591)))

(assert (=> b!7552338 (= res!3027181 (>= lt!2647384 (size!42449 input!7874)))))

(declare-fun b!7552339 () Bool)

(declare-fun e!4498589 () Bool)

(declare-fun tp_is_empty!50261 () Bool)

(declare-fun tp!2197131 () Bool)

(assert (=> b!7552339 (= e!4498589 (and tp_is_empty!50261 tp!2197131))))

(declare-fun b!7552340 () Bool)

(declare-fun res!3027189 () Bool)

(assert (=> b!7552340 (=> (not res!3027189) (not e!4498598))))

(assert (=> b!7552340 (= res!3027189 (isPrefix!6159 testedP!423 input!7874))))

(declare-fun b!7552341 () Bool)

(declare-fun e!4498592 () Bool)

(declare-fun tp!2197123 () Bool)

(assert (=> b!7552341 (= e!4498592 (and tp_is_empty!50261 tp!2197123))))

(declare-fun b!7552342 () Bool)

(declare-fun e!4498597 () Bool)

(declare-fun tp!2197128 () Bool)

(declare-fun tp!2197119 () Bool)

(assert (=> b!7552342 (= e!4498597 (and tp!2197128 tp!2197119))))

(declare-fun b!7552343 () Bool)

(declare-fun res!3027190 () Bool)

(assert (=> b!7552343 (=> res!3027190 e!4498591)))

(declare-fun lostCause!1745 (Regex!19953) Bool)

(assert (=> b!7552343 (= res!3027190 (lostCause!1745 r!24333))))

(declare-fun b!7552344 () Bool)

(declare-fun e!4498596 () Bool)

(declare-fun tp!2197129 () Bool)

(declare-fun tp!2197121 () Bool)

(assert (=> b!7552344 (= e!4498596 (and tp!2197129 tp!2197121))))

(declare-fun b!7552345 () Bool)

(assert (=> b!7552345 (= e!4498597 tp_is_empty!50261)))

(declare-fun b!7552346 () Bool)

(declare-fun tp!2197122 () Bool)

(assert (=> b!7552346 (= e!4498597 tp!2197122)))

(declare-fun b!7552347 () Bool)

(declare-fun tp!2197120 () Bool)

(assert (=> b!7552347 (= e!4498596 tp!2197120)))

(declare-fun b!7552348 () Bool)

(declare-fun tp!2197130 () Bool)

(declare-fun tp!2197125 () Bool)

(assert (=> b!7552348 (= e!4498597 (and tp!2197130 tp!2197125))))

(declare-fun b!7552335 () Bool)

(declare-fun e!4498594 () Bool)

(assert (=> b!7552335 (= e!4498593 e!4498594)))

(declare-fun res!3027172 () Bool)

(assert (=> b!7552335 (=> res!3027172 e!4498594)))

(declare-fun lt!2647390 () List!72836)

(assert (=> b!7552335 (= res!3027172 (not (= lt!2647390 input!7874)))))

(declare-fun lt!2647381 () List!72836)

(assert (=> b!7552335 (= lt!2647381 lt!2647390)))

(declare-fun lt!2647389 () List!72836)

(assert (=> b!7552335 (= lt!2647390 (++!17469 testedP!423 lt!2647389))))

(declare-fun lt!2647374 () List!72836)

(assert (=> b!7552335 (= lt!2647389 (++!17469 lt!2647376 lt!2647374))))

(declare-fun lt!2647371 () Unit!166844)

(declare-fun lemmaConcatAssociativity!3108 (List!72836 List!72836 List!72836) Unit!166844)

(assert (=> b!7552335 (= lt!2647371 (lemmaConcatAssociativity!3108 testedP!423 lt!2647376 lt!2647374))))

(declare-fun res!3027175 () Bool)

(assert (=> start!730244 (=> (not res!3027175) (not e!4498598))))

(assert (=> start!730244 (= res!3027175 (validRegex!10381 baseR!101))))

(assert (=> start!730244 e!4498598))

(assert (=> start!730244 e!4498597))

(declare-fun e!4498587 () Bool)

(assert (=> start!730244 e!4498587))

(assert (=> start!730244 e!4498592))

(assert (=> start!730244 e!4498589))

(assert (=> start!730244 e!4498596))

(declare-fun b!7552349 () Bool)

(declare-fun res!3027179 () Bool)

(assert (=> b!7552349 (=> res!3027179 e!4498591)))

(declare-fun derivative!485 (Regex!19953 List!72836) Regex!19953)

(assert (=> b!7552349 (= res!3027179 (not (= (derivative!485 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7552350 () Bool)

(declare-fun res!3027176 () Bool)

(assert (=> b!7552350 (=> res!3027176 e!4498591)))

(assert (=> b!7552350 (= res!3027176 (= lt!2647384 lt!2647375))))

(declare-fun b!7552351 () Bool)

(declare-fun e!4498595 () Bool)

(assert (=> b!7552351 (= e!4498591 e!4498595)))

(declare-fun res!3027187 () Bool)

(assert (=> b!7552351 (=> res!3027187 e!4498595)))

(assert (=> b!7552351 (= res!3027187 (not (= (++!17469 knownP!30 lt!2647374) input!7874)))))

(assert (=> b!7552351 (= lt!2647374 (getSuffix!3639 input!7874 knownP!30))))

(assert (=> b!7552351 (= lt!2647385 (getSuffix!3639 knownP!30 lt!2647369))))

(assert (=> b!7552351 (isPrefix!6159 lt!2647369 knownP!30)))

(declare-fun lt!2647373 () Unit!166844)

(assert (=> b!7552351 (= lt!2647373 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!909 knownP!30 lt!2647369 input!7874))))

(declare-fun derivativeStep!5743 (Regex!19953 C!40232) Regex!19953)

(assert (=> b!7552351 (= (derivative!485 baseR!101 lt!2647369) (derivativeStep!5743 r!24333 lt!2647388))))

(declare-fun lt!2647377 () Unit!166844)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!187 (Regex!19953 Regex!19953 List!72836 C!40232) Unit!166844)

(assert (=> b!7552351 (= lt!2647377 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!187 baseR!101 r!24333 testedP!423 lt!2647388))))

(assert (=> b!7552351 (isPrefix!6159 lt!2647369 input!7874)))

(declare-fun lt!2647372 () Unit!166844)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1220 (List!72836 List!72836) Unit!166844)

(assert (=> b!7552351 (= lt!2647372 (lemmaAddHeadSuffixToPrefixStillPrefix!1220 testedP!423 input!7874))))

(declare-fun lt!2647383 () List!72836)

(assert (=> b!7552351 (= lt!2647369 (++!17469 testedP!423 lt!2647383))))

(assert (=> b!7552351 (= lt!2647383 (Cons!72712 lt!2647388 Nil!72712))))

(declare-fun head!15543 (List!72836) C!40232)

(assert (=> b!7552351 (= lt!2647388 (head!15543 lt!2647370))))

(assert (=> b!7552351 (= lt!2647370 (getSuffix!3639 input!7874 testedP!423))))

(declare-fun b!7552352 () Bool)

(assert (=> b!7552352 (= e!4498590 (= lt!2647380 lt!2647385))))

(declare-fun lt!2647378 () List!72836)

(assert (=> b!7552352 (= lt!2647378 lt!2647376)))

(declare-fun lt!2647386 () Unit!166844)

(declare-fun lemmaSamePrefixThenSameSuffix!2875 (List!72836 List!72836 List!72836 List!72836 List!72836) Unit!166844)

(assert (=> b!7552352 (= lt!2647386 (lemmaSamePrefixThenSameSuffix!2875 testedP!423 lt!2647378 testedP!423 lt!2647376 knownP!30))))

(assert (=> b!7552352 (= lt!2647379 (++!17469 testedP!423 lt!2647378))))

(assert (=> b!7552352 (= lt!2647378 (++!17469 lt!2647383 lt!2647385))))

(declare-fun lt!2647367 () Unit!166844)

(assert (=> b!7552352 (= lt!2647367 (lemmaConcatAssociativity!3108 testedP!423 lt!2647383 lt!2647385))))

(declare-fun b!7552353 () Bool)

(declare-fun tp!2197126 () Bool)

(assert (=> b!7552353 (= e!4498587 (and tp_is_empty!50261 tp!2197126))))

(declare-fun b!7552354 () Bool)

(declare-fun tp!2197124 () Bool)

(declare-fun tp!2197127 () Bool)

(assert (=> b!7552354 (= e!4498596 (and tp!2197124 tp!2197127))))

(declare-fun b!7552355 () Bool)

(assert (=> b!7552355 (= e!4498595 e!4498593)))

(declare-fun res!3027174 () Bool)

(assert (=> b!7552355 (=> res!3027174 e!4498593)))

(assert (=> b!7552355 (= res!3027174 (not (= lt!2647381 input!7874)))))

(assert (=> b!7552355 (= lt!2647381 (++!17469 lt!2647368 lt!2647374))))

(assert (=> b!7552355 (= lt!2647368 (++!17469 testedP!423 lt!2647376))))

(declare-fun b!7552356 () Bool)

(assert (=> b!7552356 (= e!4498596 tp_is_empty!50261)))

(declare-fun b!7552357 () Bool)

(assert (=> b!7552357 (= e!4498594 e!4498586)))

(declare-fun res!3027183 () Bool)

(assert (=> b!7552357 (=> res!3027183 e!4498586)))

(assert (=> b!7552357 (= res!3027183 (not (= (head!15543 lt!2647376) lt!2647388)))))

(assert (=> b!7552357 (= lt!2647389 lt!2647370)))

(declare-fun lt!2647382 () Unit!166844)

(assert (=> b!7552357 (= lt!2647382 (lemmaSamePrefixThenSameSuffix!2875 testedP!423 lt!2647389 testedP!423 lt!2647370 input!7874))))

(assert (= (and start!730244 res!3027175) b!7552336))

(assert (= (and b!7552336 res!3027184) b!7552340))

(assert (= (and b!7552340 res!3027189) b!7552328))

(assert (= (and b!7552328 res!3027177) b!7552334))

(assert (= (and b!7552334 res!3027185) b!7552330))

(assert (= (and b!7552330 res!3027182) b!7552331))

(assert (= (and b!7552331 (not res!3027173)) b!7552349))

(assert (= (and b!7552349 (not res!3027179)) b!7552343))

(assert (= (and b!7552343 (not res!3027190)) b!7552350))

(assert (= (and b!7552350 (not res!3027176)) b!7552338))

(assert (= (and b!7552338 (not res!3027181)) b!7552351))

(assert (= (and b!7552351 (not res!3027187)) b!7552355))

(assert (= (and b!7552355 (not res!3027174)) b!7552329))

(assert (= (and b!7552329 (not res!3027188)) b!7552335))

(assert (= (and b!7552335 (not res!3027172)) b!7552357))

(assert (= (and b!7552357 (not res!3027183)) b!7552337))

(assert (= (and b!7552337 (not res!3027186)) b!7552332))

(assert (= (and b!7552332 (not res!3027178)) b!7552333))

(assert (= (and b!7552333 (not res!3027180)) b!7552352))

(get-info :version)

(assert (= (and start!730244 ((_ is ElementMatch!19953) baseR!101)) b!7552345))

(assert (= (and start!730244 ((_ is Concat!28798) baseR!101)) b!7552342))

(assert (= (and start!730244 ((_ is Star!19953) baseR!101)) b!7552346))

(assert (= (and start!730244 ((_ is Union!19953) baseR!101)) b!7552348))

(assert (= (and start!730244 ((_ is Cons!72712) input!7874)) b!7552353))

(assert (= (and start!730244 ((_ is Cons!72712) knownP!30)) b!7552341))

(assert (= (and start!730244 ((_ is Cons!72712) testedP!423)) b!7552339))

(assert (= (and start!730244 ((_ is ElementMatch!19953) r!24333)) b!7552356))

(assert (= (and start!730244 ((_ is Concat!28798) r!24333)) b!7552354))

(assert (= (and start!730244 ((_ is Star!19953) r!24333)) b!7552347))

(assert (= (and start!730244 ((_ is Union!19953) r!24333)) b!7552344))

(declare-fun m!8118990 () Bool)

(assert (=> b!7552357 m!8118990))

(declare-fun m!8118992 () Bool)

(assert (=> b!7552357 m!8118992))

(declare-fun m!8118994 () Bool)

(assert (=> start!730244 m!8118994))

(declare-fun m!8118996 () Bool)

(assert (=> b!7552334 m!8118996))

(declare-fun m!8118998 () Bool)

(assert (=> b!7552334 m!8118998))

(declare-fun m!8119000 () Bool)

(assert (=> b!7552343 m!8119000))

(declare-fun m!8119002 () Bool)

(assert (=> b!7552337 m!8119002))

(declare-fun m!8119004 () Bool)

(assert (=> b!7552337 m!8119004))

(declare-fun m!8119006 () Bool)

(assert (=> b!7552349 m!8119006))

(declare-fun m!8119008 () Bool)

(assert (=> b!7552338 m!8119008))

(declare-fun m!8119010 () Bool)

(assert (=> b!7552355 m!8119010))

(declare-fun m!8119012 () Bool)

(assert (=> b!7552355 m!8119012))

(declare-fun m!8119014 () Bool)

(assert (=> b!7552331 m!8119014))

(declare-fun m!8119016 () Bool)

(assert (=> b!7552331 m!8119016))

(declare-fun m!8119018 () Bool)

(assert (=> b!7552331 m!8119018))

(declare-fun m!8119020 () Bool)

(assert (=> b!7552331 m!8119020))

(declare-fun m!8119022 () Bool)

(assert (=> b!7552340 m!8119022))

(declare-fun m!8119024 () Bool)

(assert (=> b!7552333 m!8119024))

(declare-fun m!8119026 () Bool)

(assert (=> b!7552335 m!8119026))

(declare-fun m!8119028 () Bool)

(assert (=> b!7552335 m!8119028))

(declare-fun m!8119030 () Bool)

(assert (=> b!7552335 m!8119030))

(declare-fun m!8119032 () Bool)

(assert (=> b!7552336 m!8119032))

(declare-fun m!8119034 () Bool)

(assert (=> b!7552352 m!8119034))

(declare-fun m!8119036 () Bool)

(assert (=> b!7552352 m!8119036))

(declare-fun m!8119038 () Bool)

(assert (=> b!7552352 m!8119038))

(declare-fun m!8119040 () Bool)

(assert (=> b!7552352 m!8119040))

(declare-fun m!8119042 () Bool)

(assert (=> b!7552330 m!8119042))

(declare-fun m!8119044 () Bool)

(assert (=> b!7552328 m!8119044))

(declare-fun m!8119046 () Bool)

(assert (=> b!7552351 m!8119046))

(declare-fun m!8119048 () Bool)

(assert (=> b!7552351 m!8119048))

(declare-fun m!8119050 () Bool)

(assert (=> b!7552351 m!8119050))

(declare-fun m!8119052 () Bool)

(assert (=> b!7552351 m!8119052))

(declare-fun m!8119054 () Bool)

(assert (=> b!7552351 m!8119054))

(declare-fun m!8119056 () Bool)

(assert (=> b!7552351 m!8119056))

(declare-fun m!8119058 () Bool)

(assert (=> b!7552351 m!8119058))

(declare-fun m!8119060 () Bool)

(assert (=> b!7552351 m!8119060))

(declare-fun m!8119062 () Bool)

(assert (=> b!7552351 m!8119062))

(declare-fun m!8119064 () Bool)

(assert (=> b!7552351 m!8119064))

(declare-fun m!8119066 () Bool)

(assert (=> b!7552351 m!8119066))

(declare-fun m!8119068 () Bool)

(assert (=> b!7552351 m!8119068))

(declare-fun m!8119070 () Bool)

(assert (=> b!7552351 m!8119070))

(declare-fun m!8119072 () Bool)

(assert (=> b!7552329 m!8119072))

(check-sat (not b!7552334) (not b!7552346) (not b!7552342) (not b!7552355) (not b!7552337) (not b!7552336) (not b!7552349) (not b!7552343) (not start!730244) (not b!7552333) (not b!7552357) (not b!7552339) (not b!7552328) (not b!7552347) tp_is_empty!50261 (not b!7552338) (not b!7552353) (not b!7552354) (not b!7552330) (not b!7552335) (not b!7552352) (not b!7552329) (not b!7552341) (not b!7552340) (not b!7552344) (not b!7552351) (not b!7552331) (not b!7552348))
(check-sat)
(get-model)

(declare-fun bm!692454 () Bool)

(declare-fun call!692460 () Bool)

(declare-fun call!692461 () Bool)

(assert (=> bm!692454 (= call!692460 call!692461)))

(declare-fun b!7552392 () Bool)

(declare-fun e!4498624 () Bool)

(declare-fun e!4498627 () Bool)

(assert (=> b!7552392 (= e!4498624 e!4498627)))

(declare-fun c!1393911 () Bool)

(assert (=> b!7552392 (= c!1393911 ((_ is Union!19953) r!24333))))

(declare-fun b!7552393 () Bool)

(declare-fun res!3027212 () Bool)

(declare-fun e!4498623 () Bool)

(assert (=> b!7552393 (=> (not res!3027212) (not e!4498623))))

(assert (=> b!7552393 (= res!3027212 call!692460)))

(assert (=> b!7552393 (= e!4498627 e!4498623)))

(declare-fun d!2313170 () Bool)

(declare-fun res!3027211 () Bool)

(declare-fun e!4498628 () Bool)

(assert (=> d!2313170 (=> res!3027211 e!4498628)))

(assert (=> d!2313170 (= res!3027211 ((_ is ElementMatch!19953) r!24333))))

(assert (=> d!2313170 (= (validRegex!10381 r!24333) e!4498628)))

(declare-fun b!7552394 () Bool)

(declare-fun e!4498625 () Bool)

(assert (=> b!7552394 (= e!4498625 call!692461)))

(declare-fun bm!692455 () Bool)

(declare-fun c!1393912 () Bool)

(assert (=> bm!692455 (= call!692461 (validRegex!10381 (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))))))

(declare-fun b!7552395 () Bool)

(declare-fun res!3027210 () Bool)

(declare-fun e!4498622 () Bool)

(assert (=> b!7552395 (=> res!3027210 e!4498622)))

(assert (=> b!7552395 (= res!3027210 (not ((_ is Concat!28798) r!24333)))))

(assert (=> b!7552395 (= e!4498627 e!4498622)))

(declare-fun b!7552396 () Bool)

(declare-fun e!4498626 () Bool)

(assert (=> b!7552396 (= e!4498622 e!4498626)))

(declare-fun res!3027213 () Bool)

(assert (=> b!7552396 (=> (not res!3027213) (not e!4498626))))

(assert (=> b!7552396 (= res!3027213 call!692460)))

(declare-fun b!7552397 () Bool)

(assert (=> b!7552397 (= e!4498624 e!4498625)))

(declare-fun res!3027209 () Bool)

(declare-fun nullable!8706 (Regex!19953) Bool)

(assert (=> b!7552397 (= res!3027209 (not (nullable!8706 (reg!20282 r!24333))))))

(assert (=> b!7552397 (=> (not res!3027209) (not e!4498625))))

(declare-fun b!7552398 () Bool)

(declare-fun call!692459 () Bool)

(assert (=> b!7552398 (= e!4498623 call!692459)))

(declare-fun bm!692456 () Bool)

(assert (=> bm!692456 (= call!692459 (validRegex!10381 (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))

(declare-fun b!7552399 () Bool)

(assert (=> b!7552399 (= e!4498626 call!692459)))

(declare-fun b!7552400 () Bool)

(assert (=> b!7552400 (= e!4498628 e!4498624)))

(assert (=> b!7552400 (= c!1393912 ((_ is Star!19953) r!24333))))

(assert (= (and d!2313170 (not res!3027211)) b!7552400))

(assert (= (and b!7552400 c!1393912) b!7552397))

(assert (= (and b!7552400 (not c!1393912)) b!7552392))

(assert (= (and b!7552397 res!3027209) b!7552394))

(assert (= (and b!7552392 c!1393911) b!7552393))

(assert (= (and b!7552392 (not c!1393911)) b!7552395))

(assert (= (and b!7552393 res!3027212) b!7552398))

(assert (= (and b!7552395 (not res!3027210)) b!7552396))

(assert (= (and b!7552396 res!3027213) b!7552399))

(assert (= (or b!7552393 b!7552396) bm!692454))

(assert (= (or b!7552398 b!7552399) bm!692456))

(assert (= (or b!7552394 bm!692454) bm!692455))

(declare-fun m!8119120 () Bool)

(assert (=> bm!692455 m!8119120))

(declare-fun m!8119122 () Bool)

(assert (=> b!7552397 m!8119122))

(declare-fun m!8119124 () Bool)

(assert (=> bm!692456 m!8119124))

(assert (=> b!7552336 d!2313170))

(declare-fun d!2313180 () Bool)

(assert (=> d!2313180 (= (head!15543 lt!2647376) (h!79160 lt!2647376))))

(assert (=> b!7552357 d!2313180))

(declare-fun d!2313182 () Bool)

(assert (=> d!2313182 (= lt!2647389 lt!2647370)))

(declare-fun lt!2647408 () Unit!166844)

(declare-fun choose!58458 (List!72836 List!72836 List!72836 List!72836 List!72836) Unit!166844)

(assert (=> d!2313182 (= lt!2647408 (choose!58458 testedP!423 lt!2647389 testedP!423 lt!2647370 input!7874))))

(assert (=> d!2313182 (isPrefix!6159 testedP!423 input!7874)))

(assert (=> d!2313182 (= (lemmaSamePrefixThenSameSuffix!2875 testedP!423 lt!2647389 testedP!423 lt!2647370 input!7874) lt!2647408)))

(declare-fun bs!1940228 () Bool)

(assert (= bs!1940228 d!2313182))

(declare-fun m!8119142 () Bool)

(assert (=> bs!1940228 m!8119142))

(assert (=> bs!1940228 m!8119022))

(assert (=> b!7552357 d!2313182))

(declare-fun d!2313192 () Bool)

(declare-fun lt!2647414 () Int)

(assert (=> d!2313192 (>= lt!2647414 0)))

(declare-fun e!4498642 () Int)

(assert (=> d!2313192 (= lt!2647414 e!4498642)))

(declare-fun c!1393923 () Bool)

(assert (=> d!2313192 (= c!1393923 ((_ is Nil!72712) input!7874))))

(assert (=> d!2313192 (= (size!42449 input!7874) lt!2647414)))

(declare-fun b!7552427 () Bool)

(assert (=> b!7552427 (= e!4498642 0)))

(declare-fun b!7552428 () Bool)

(assert (=> b!7552428 (= e!4498642 (+ 1 (size!42449 (t!387559 input!7874))))))

(assert (= (and d!2313192 c!1393923) b!7552427))

(assert (= (and d!2313192 (not c!1393923)) b!7552428))

(declare-fun m!8119158 () Bool)

(assert (=> b!7552428 m!8119158))

(assert (=> b!7552338 d!2313192))

(declare-fun d!2313200 () Bool)

(assert (=> d!2313200 (= ($colon$colon!3397 lt!2647380 lt!2647388) (Cons!72712 lt!2647388 lt!2647380))))

(assert (=> b!7552337 d!2313200))

(declare-fun d!2313202 () Bool)

(assert (=> d!2313202 (= (tail!15085 lt!2647376) (t!387559 lt!2647376))))

(assert (=> b!7552337 d!2313202))

(declare-fun b!7552447 () Bool)

(declare-fun e!4498656 () Bool)

(declare-fun e!4498654 () Bool)

(assert (=> b!7552447 (= e!4498656 e!4498654)))

(declare-fun res!3027232 () Bool)

(assert (=> b!7552447 (=> (not res!3027232) (not e!4498654))))

(assert (=> b!7552447 (= res!3027232 (not ((_ is Nil!72712) input!7874)))))

(declare-fun b!7552448 () Bool)

(declare-fun res!3027233 () Bool)

(assert (=> b!7552448 (=> (not res!3027233) (not e!4498654))))

(assert (=> b!7552448 (= res!3027233 (= (head!15543 knownP!30) (head!15543 input!7874)))))

(declare-fun b!7552449 () Bool)

(assert (=> b!7552449 (= e!4498654 (isPrefix!6159 (tail!15085 knownP!30) (tail!15085 input!7874)))))

(declare-fun d!2313204 () Bool)

(declare-fun e!4498655 () Bool)

(assert (=> d!2313204 e!4498655))

(declare-fun res!3027231 () Bool)

(assert (=> d!2313204 (=> res!3027231 e!4498655)))

(declare-fun lt!2647421 () Bool)

(assert (=> d!2313204 (= res!3027231 (not lt!2647421))))

(assert (=> d!2313204 (= lt!2647421 e!4498656)))

(declare-fun res!3027230 () Bool)

(assert (=> d!2313204 (=> res!3027230 e!4498656)))

(assert (=> d!2313204 (= res!3027230 ((_ is Nil!72712) knownP!30))))

(assert (=> d!2313204 (= (isPrefix!6159 knownP!30 input!7874) lt!2647421)))

(declare-fun b!7552450 () Bool)

(assert (=> b!7552450 (= e!4498655 (>= (size!42449 input!7874) (size!42449 knownP!30)))))

(assert (= (and d!2313204 (not res!3027230)) b!7552447))

(assert (= (and b!7552447 res!3027232) b!7552448))

(assert (= (and b!7552448 res!3027233) b!7552449))

(assert (= (and d!2313204 (not res!3027231)) b!7552450))

(declare-fun m!8119176 () Bool)

(assert (=> b!7552448 m!8119176))

(declare-fun m!8119178 () Bool)

(assert (=> b!7552448 m!8119178))

(declare-fun m!8119180 () Bool)

(assert (=> b!7552449 m!8119180))

(declare-fun m!8119182 () Bool)

(assert (=> b!7552449 m!8119182))

(assert (=> b!7552449 m!8119180))

(assert (=> b!7552449 m!8119182))

(declare-fun m!8119184 () Bool)

(assert (=> b!7552449 m!8119184))

(assert (=> b!7552450 m!8119008))

(assert (=> b!7552450 m!8118998))

(assert (=> b!7552328 d!2313204))

(declare-fun d!2313210 () Bool)

(declare-fun lt!2647426 () Regex!19953)

(assert (=> d!2313210 (validRegex!10381 lt!2647426)))

(declare-fun e!4498669 () Regex!19953)

(assert (=> d!2313210 (= lt!2647426 e!4498669)))

(declare-fun c!1393936 () Bool)

(assert (=> d!2313210 (= c!1393936 ((_ is Cons!72712) testedP!423))))

(assert (=> d!2313210 (validRegex!10381 baseR!101)))

(assert (=> d!2313210 (= (derivative!485 baseR!101 testedP!423) lt!2647426)))

(declare-fun b!7552471 () Bool)

(assert (=> b!7552471 (= e!4498669 (derivative!485 (derivativeStep!5743 baseR!101 (h!79160 testedP!423)) (t!387559 testedP!423)))))

(declare-fun b!7552472 () Bool)

(assert (=> b!7552472 (= e!4498669 baseR!101)))

(assert (= (and d!2313210 c!1393936) b!7552471))

(assert (= (and d!2313210 (not c!1393936)) b!7552472))

(declare-fun m!8119186 () Bool)

(assert (=> d!2313210 m!8119186))

(assert (=> d!2313210 m!8118994))

(declare-fun m!8119188 () Bool)

(assert (=> b!7552471 m!8119188))

(assert (=> b!7552471 m!8119188))

(declare-fun m!8119190 () Bool)

(assert (=> b!7552471 m!8119190))

(assert (=> b!7552349 d!2313210))

(declare-fun b!7552547 () Bool)

(declare-fun res!3027287 () Bool)

(declare-fun e!4498708 () Bool)

(assert (=> b!7552547 (=> res!3027287 e!4498708)))

(declare-fun e!4498706 () Bool)

(assert (=> b!7552547 (= res!3027287 e!4498706)))

(declare-fun res!3027288 () Bool)

(assert (=> b!7552547 (=> (not res!3027288) (not e!4498706))))

(declare-fun lt!2647434 () Bool)

(assert (=> b!7552547 (= res!3027288 lt!2647434)))

(declare-fun bm!692463 () Bool)

(declare-fun call!692468 () Bool)

(declare-fun isEmpty!41402 (List!72836) Bool)

(assert (=> bm!692463 (= call!692468 (isEmpty!41402 knownP!30))))

(declare-fun b!7552548 () Bool)

(declare-fun e!4498705 () Bool)

(assert (=> b!7552548 (= e!4498705 (= lt!2647434 call!692468))))

(declare-fun b!7552550 () Bool)

(declare-fun e!4498710 () Bool)

(assert (=> b!7552550 (= e!4498708 e!4498710)))

(declare-fun res!3027284 () Bool)

(assert (=> b!7552550 (=> (not res!3027284) (not e!4498710))))

(assert (=> b!7552550 (= res!3027284 (not lt!2647434))))

(declare-fun b!7552551 () Bool)

(declare-fun e!4498709 () Bool)

(assert (=> b!7552551 (= e!4498709 (nullable!8706 baseR!101))))

(declare-fun b!7552552 () Bool)

(declare-fun e!4498711 () Bool)

(assert (=> b!7552552 (= e!4498711 (not lt!2647434))))

(declare-fun b!7552553 () Bool)

(declare-fun res!3027286 () Bool)

(assert (=> b!7552553 (=> (not res!3027286) (not e!4498706))))

(assert (=> b!7552553 (= res!3027286 (not call!692468))))

(declare-fun b!7552554 () Bool)

(declare-fun e!4498707 () Bool)

(assert (=> b!7552554 (= e!4498707 (not (= (head!15543 knownP!30) (c!1393902 baseR!101))))))

(declare-fun b!7552555 () Bool)

(assert (=> b!7552555 (= e!4498709 (matchR!9555 (derivativeStep!5743 baseR!101 (head!15543 knownP!30)) (tail!15085 knownP!30)))))

(declare-fun b!7552556 () Bool)

(assert (=> b!7552556 (= e!4498705 e!4498711)))

(declare-fun c!1393953 () Bool)

(assert (=> b!7552556 (= c!1393953 ((_ is EmptyLang!19953) baseR!101))))

(declare-fun b!7552557 () Bool)

(declare-fun res!3027283 () Bool)

(assert (=> b!7552557 (=> res!3027283 e!4498707)))

(assert (=> b!7552557 (= res!3027283 (not (isEmpty!41402 (tail!15085 knownP!30))))))

(declare-fun b!7552558 () Bool)

(declare-fun res!3027282 () Bool)

(assert (=> b!7552558 (=> res!3027282 e!4498708)))

(assert (=> b!7552558 (= res!3027282 (not ((_ is ElementMatch!19953) baseR!101)))))

(assert (=> b!7552558 (= e!4498711 e!4498708)))

(declare-fun b!7552559 () Bool)

(assert (=> b!7552559 (= e!4498710 e!4498707)))

(declare-fun res!3027289 () Bool)

(assert (=> b!7552559 (=> res!3027289 e!4498707)))

(assert (=> b!7552559 (= res!3027289 call!692468)))

(declare-fun b!7552560 () Bool)

(assert (=> b!7552560 (= e!4498706 (= (head!15543 knownP!30) (c!1393902 baseR!101)))))

(declare-fun d!2313212 () Bool)

(assert (=> d!2313212 e!4498705))

(declare-fun c!1393952 () Bool)

(assert (=> d!2313212 (= c!1393952 ((_ is EmptyExpr!19953) baseR!101))))

(assert (=> d!2313212 (= lt!2647434 e!4498709)))

(declare-fun c!1393954 () Bool)

(assert (=> d!2313212 (= c!1393954 (isEmpty!41402 knownP!30))))

(assert (=> d!2313212 (validRegex!10381 baseR!101)))

(assert (=> d!2313212 (= (matchR!9555 baseR!101 knownP!30) lt!2647434)))

(declare-fun b!7552549 () Bool)

(declare-fun res!3027285 () Bool)

(assert (=> b!7552549 (=> (not res!3027285) (not e!4498706))))

(assert (=> b!7552549 (= res!3027285 (isEmpty!41402 (tail!15085 knownP!30)))))

(assert (= (and d!2313212 c!1393954) b!7552551))

(assert (= (and d!2313212 (not c!1393954)) b!7552555))

(assert (= (and d!2313212 c!1393952) b!7552548))

(assert (= (and d!2313212 (not c!1393952)) b!7552556))

(assert (= (and b!7552556 c!1393953) b!7552552))

(assert (= (and b!7552556 (not c!1393953)) b!7552558))

(assert (= (and b!7552558 (not res!3027282)) b!7552547))

(assert (= (and b!7552547 res!3027288) b!7552553))

(assert (= (and b!7552553 res!3027286) b!7552549))

(assert (= (and b!7552549 res!3027285) b!7552560))

(assert (= (and b!7552547 (not res!3027287)) b!7552550))

(assert (= (and b!7552550 res!3027284) b!7552559))

(assert (= (and b!7552559 (not res!3027289)) b!7552557))

(assert (= (and b!7552557 (not res!3027283)) b!7552554))

(assert (= (or b!7552548 b!7552553 b!7552559) bm!692463))

(assert (=> b!7552555 m!8119176))

(assert (=> b!7552555 m!8119176))

(declare-fun m!8119220 () Bool)

(assert (=> b!7552555 m!8119220))

(assert (=> b!7552555 m!8119180))

(assert (=> b!7552555 m!8119220))

(assert (=> b!7552555 m!8119180))

(declare-fun m!8119222 () Bool)

(assert (=> b!7552555 m!8119222))

(assert (=> b!7552549 m!8119180))

(assert (=> b!7552549 m!8119180))

(declare-fun m!8119224 () Bool)

(assert (=> b!7552549 m!8119224))

(assert (=> b!7552560 m!8119176))

(assert (=> b!7552557 m!8119180))

(assert (=> b!7552557 m!8119180))

(assert (=> b!7552557 m!8119224))

(declare-fun m!8119226 () Bool)

(assert (=> d!2313212 m!8119226))

(assert (=> d!2313212 m!8118994))

(declare-fun m!8119228 () Bool)

(assert (=> b!7552551 m!8119228))

(assert (=> bm!692463 m!8119226))

(assert (=> b!7552554 m!8119176))

(assert (=> b!7552330 d!2313212))

(declare-fun b!7552561 () Bool)

(declare-fun e!4498714 () Bool)

(declare-fun e!4498712 () Bool)

(assert (=> b!7552561 (= e!4498714 e!4498712)))

(declare-fun res!3027292 () Bool)

(assert (=> b!7552561 (=> (not res!3027292) (not e!4498712))))

(assert (=> b!7552561 (= res!3027292 (not ((_ is Nil!72712) input!7874)))))

(declare-fun b!7552562 () Bool)

(declare-fun res!3027293 () Bool)

(assert (=> b!7552562 (=> (not res!3027293) (not e!4498712))))

(assert (=> b!7552562 (= res!3027293 (= (head!15543 lt!2647369) (head!15543 input!7874)))))

(declare-fun b!7552563 () Bool)

(assert (=> b!7552563 (= e!4498712 (isPrefix!6159 (tail!15085 lt!2647369) (tail!15085 input!7874)))))

(declare-fun d!2313220 () Bool)

(declare-fun e!4498713 () Bool)

(assert (=> d!2313220 e!4498713))

(declare-fun res!3027291 () Bool)

(assert (=> d!2313220 (=> res!3027291 e!4498713)))

(declare-fun lt!2647435 () Bool)

(assert (=> d!2313220 (= res!3027291 (not lt!2647435))))

(assert (=> d!2313220 (= lt!2647435 e!4498714)))

(declare-fun res!3027290 () Bool)

(assert (=> d!2313220 (=> res!3027290 e!4498714)))

(assert (=> d!2313220 (= res!3027290 ((_ is Nil!72712) lt!2647369))))

(assert (=> d!2313220 (= (isPrefix!6159 lt!2647369 input!7874) lt!2647435)))

(declare-fun b!7552564 () Bool)

(assert (=> b!7552564 (= e!4498713 (>= (size!42449 input!7874) (size!42449 lt!2647369)))))

(assert (= (and d!2313220 (not res!3027290)) b!7552561))

(assert (= (and b!7552561 res!3027292) b!7552562))

(assert (= (and b!7552562 res!3027293) b!7552563))

(assert (= (and d!2313220 (not res!3027291)) b!7552564))

(declare-fun m!8119230 () Bool)

(assert (=> b!7552562 m!8119230))

(assert (=> b!7552562 m!8119178))

(declare-fun m!8119232 () Bool)

(assert (=> b!7552563 m!8119232))

(assert (=> b!7552563 m!8119182))

(assert (=> b!7552563 m!8119232))

(assert (=> b!7552563 m!8119182))

(declare-fun m!8119234 () Bool)

(assert (=> b!7552563 m!8119234))

(assert (=> b!7552564 m!8119008))

(declare-fun m!8119236 () Bool)

(assert (=> b!7552564 m!8119236))

(assert (=> b!7552351 d!2313220))

(declare-fun b!7552623 () Bool)

(declare-fun c!1393974 () Bool)

(assert (=> b!7552623 (= c!1393974 ((_ is Union!19953) r!24333))))

(declare-fun e!4498755 () Regex!19953)

(declare-fun e!4498753 () Regex!19953)

(assert (=> b!7552623 (= e!4498755 e!4498753)))

(declare-fun bm!692478 () Bool)

(declare-fun call!692483 () Regex!19953)

(declare-fun call!692484 () Regex!19953)

(assert (=> bm!692478 (= call!692483 call!692484)))

(declare-fun b!7552624 () Bool)

(declare-fun e!4498754 () Regex!19953)

(assert (=> b!7552624 (= e!4498754 EmptyLang!19953)))

(declare-fun b!7552626 () Bool)

(declare-fun call!692485 () Regex!19953)

(declare-fun e!4498752 () Regex!19953)

(declare-fun call!692486 () Regex!19953)

(assert (=> b!7552626 (= e!4498752 (Union!19953 (Concat!28798 call!692485 (regTwo!40418 r!24333)) call!692486))))

(declare-fun b!7552627 () Bool)

(assert (=> b!7552627 (= e!4498754 e!4498755)))

(declare-fun c!1393975 () Bool)

(assert (=> b!7552627 (= c!1393975 ((_ is ElementMatch!19953) r!24333))))

(declare-fun b!7552628 () Bool)

(assert (=> b!7552628 (= e!4498752 (Union!19953 (Concat!28798 call!692485 (regTwo!40418 r!24333)) EmptyLang!19953))))

(declare-fun bm!692479 () Bool)

(assert (=> bm!692479 (= call!692485 call!692483)))

(declare-fun b!7552629 () Bool)

(declare-fun e!4498756 () Regex!19953)

(assert (=> b!7552629 (= e!4498753 e!4498756)))

(declare-fun c!1393971 () Bool)

(assert (=> b!7552629 (= c!1393971 ((_ is Star!19953) r!24333))))

(declare-fun b!7552630 () Bool)

(assert (=> b!7552630 (= e!4498753 (Union!19953 call!692484 call!692486))))

(declare-fun b!7552625 () Bool)

(declare-fun c!1393972 () Bool)

(assert (=> b!7552625 (= c!1393972 (nullable!8706 (regOne!40418 r!24333)))))

(assert (=> b!7552625 (= e!4498756 e!4498752)))

(declare-fun d!2313222 () Bool)

(declare-fun lt!2647447 () Regex!19953)

(assert (=> d!2313222 (validRegex!10381 lt!2647447)))

(assert (=> d!2313222 (= lt!2647447 e!4498754)))

(declare-fun c!1393973 () Bool)

(assert (=> d!2313222 (= c!1393973 (or ((_ is EmptyExpr!19953) r!24333) ((_ is EmptyLang!19953) r!24333)))))

(assert (=> d!2313222 (validRegex!10381 r!24333)))

(assert (=> d!2313222 (= (derivativeStep!5743 r!24333 lt!2647388) lt!2647447)))

(declare-fun bm!692480 () Bool)

(assert (=> bm!692480 (= call!692486 (derivativeStep!5743 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333)) lt!2647388))))

(declare-fun b!7552631 () Bool)

(assert (=> b!7552631 (= e!4498756 (Concat!28798 call!692483 r!24333))))

(declare-fun bm!692481 () Bool)

(assert (=> bm!692481 (= call!692484 (derivativeStep!5743 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333))) lt!2647388))))

(declare-fun b!7552632 () Bool)

(assert (=> b!7552632 (= e!4498755 (ite (= lt!2647388 (c!1393902 r!24333)) EmptyExpr!19953 EmptyLang!19953))))

(assert (= (and d!2313222 c!1393973) b!7552624))

(assert (= (and d!2313222 (not c!1393973)) b!7552627))

(assert (= (and b!7552627 c!1393975) b!7552632))

(assert (= (and b!7552627 (not c!1393975)) b!7552623))

(assert (= (and b!7552623 c!1393974) b!7552630))

(assert (= (and b!7552623 (not c!1393974)) b!7552629))

(assert (= (and b!7552629 c!1393971) b!7552631))

(assert (= (and b!7552629 (not c!1393971)) b!7552625))

(assert (= (and b!7552625 c!1393972) b!7552626))

(assert (= (and b!7552625 (not c!1393972)) b!7552628))

(assert (= (or b!7552626 b!7552628) bm!692479))

(assert (= (or b!7552631 bm!692479) bm!692478))

(assert (= (or b!7552630 b!7552626) bm!692480))

(assert (= (or b!7552630 bm!692478) bm!692481))

(declare-fun m!8119268 () Bool)

(assert (=> b!7552625 m!8119268))

(declare-fun m!8119270 () Bool)

(assert (=> d!2313222 m!8119270))

(assert (=> d!2313222 m!8119032))

(declare-fun m!8119272 () Bool)

(assert (=> bm!692480 m!8119272))

(declare-fun m!8119274 () Bool)

(assert (=> bm!692481 m!8119274))

(assert (=> b!7552351 d!2313222))

(declare-fun d!2313234 () Bool)

(declare-fun lt!2647454 () List!72836)

(assert (=> d!2313234 (= (++!17469 lt!2647369 lt!2647454) knownP!30)))

(declare-fun e!4498771 () List!72836)

(assert (=> d!2313234 (= lt!2647454 e!4498771)))

(declare-fun c!1393984 () Bool)

(assert (=> d!2313234 (= c!1393984 ((_ is Cons!72712) lt!2647369))))

(assert (=> d!2313234 (>= (size!42449 knownP!30) (size!42449 lt!2647369))))

(assert (=> d!2313234 (= (getSuffix!3639 knownP!30 lt!2647369) lt!2647454)))

(declare-fun b!7552656 () Bool)

(assert (=> b!7552656 (= e!4498771 (getSuffix!3639 (tail!15085 knownP!30) (t!387559 lt!2647369)))))

(declare-fun b!7552657 () Bool)

(assert (=> b!7552657 (= e!4498771 knownP!30)))

(assert (= (and d!2313234 c!1393984) b!7552656))

(assert (= (and d!2313234 (not c!1393984)) b!7552657))

(declare-fun m!8119304 () Bool)

(assert (=> d!2313234 m!8119304))

(assert (=> d!2313234 m!8118998))

(assert (=> d!2313234 m!8119236))

(assert (=> b!7552656 m!8119180))

(assert (=> b!7552656 m!8119180))

(declare-fun m!8119306 () Bool)

(assert (=> b!7552656 m!8119306))

(assert (=> b!7552351 d!2313234))

(declare-fun b!7552668 () Bool)

(declare-fun e!4498777 () List!72836)

(assert (=> b!7552668 (= e!4498777 lt!2647374)))

(declare-fun b!7552669 () Bool)

(assert (=> b!7552669 (= e!4498777 (Cons!72712 (h!79160 knownP!30) (++!17469 (t!387559 knownP!30) lt!2647374)))))

(declare-fun d!2313248 () Bool)

(declare-fun e!4498778 () Bool)

(assert (=> d!2313248 e!4498778))

(declare-fun res!3027332 () Bool)

(assert (=> d!2313248 (=> (not res!3027332) (not e!4498778))))

(declare-fun lt!2647461 () List!72836)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15394 (List!72836) (InoxSet C!40232))

(assert (=> d!2313248 (= res!3027332 (= (content!15394 lt!2647461) ((_ map or) (content!15394 knownP!30) (content!15394 lt!2647374))))))

(assert (=> d!2313248 (= lt!2647461 e!4498777)))

(declare-fun c!1393989 () Bool)

(assert (=> d!2313248 (= c!1393989 ((_ is Nil!72712) knownP!30))))

(assert (=> d!2313248 (= (++!17469 knownP!30 lt!2647374) lt!2647461)))

(declare-fun b!7552671 () Bool)

(assert (=> b!7552671 (= e!4498778 (or (not (= lt!2647374 Nil!72712)) (= lt!2647461 knownP!30)))))

(declare-fun b!7552670 () Bool)

(declare-fun res!3027331 () Bool)

(assert (=> b!7552670 (=> (not res!3027331) (not e!4498778))))

(assert (=> b!7552670 (= res!3027331 (= (size!42449 lt!2647461) (+ (size!42449 knownP!30) (size!42449 lt!2647374))))))

(assert (= (and d!2313248 c!1393989) b!7552668))

(assert (= (and d!2313248 (not c!1393989)) b!7552669))

(assert (= (and d!2313248 res!3027332) b!7552670))

(assert (= (and b!7552670 res!3027331) b!7552671))

(declare-fun m!8119318 () Bool)

(assert (=> b!7552669 m!8119318))

(declare-fun m!8119320 () Bool)

(assert (=> d!2313248 m!8119320))

(declare-fun m!8119322 () Bool)

(assert (=> d!2313248 m!8119322))

(declare-fun m!8119324 () Bool)

(assert (=> d!2313248 m!8119324))

(declare-fun m!8119326 () Bool)

(assert (=> b!7552670 m!8119326))

(assert (=> b!7552670 m!8118998))

(declare-fun m!8119328 () Bool)

(assert (=> b!7552670 m!8119328))

(assert (=> b!7552351 d!2313248))

(declare-fun b!7552672 () Bool)

(declare-fun e!4498779 () List!72836)

(assert (=> b!7552672 (= e!4498779 lt!2647383)))

(declare-fun b!7552673 () Bool)

(assert (=> b!7552673 (= e!4498779 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) lt!2647383)))))

(declare-fun d!2313254 () Bool)

(declare-fun e!4498780 () Bool)

(assert (=> d!2313254 e!4498780))

(declare-fun res!3027334 () Bool)

(assert (=> d!2313254 (=> (not res!3027334) (not e!4498780))))

(declare-fun lt!2647462 () List!72836)

(assert (=> d!2313254 (= res!3027334 (= (content!15394 lt!2647462) ((_ map or) (content!15394 testedP!423) (content!15394 lt!2647383))))))

(assert (=> d!2313254 (= lt!2647462 e!4498779)))

(declare-fun c!1393990 () Bool)

(assert (=> d!2313254 (= c!1393990 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313254 (= (++!17469 testedP!423 lt!2647383) lt!2647462)))

(declare-fun b!7552675 () Bool)

(assert (=> b!7552675 (= e!4498780 (or (not (= lt!2647383 Nil!72712)) (= lt!2647462 testedP!423)))))

(declare-fun b!7552674 () Bool)

(declare-fun res!3027333 () Bool)

(assert (=> b!7552674 (=> (not res!3027333) (not e!4498780))))

(assert (=> b!7552674 (= res!3027333 (= (size!42449 lt!2647462) (+ (size!42449 testedP!423) (size!42449 lt!2647383))))))

(assert (= (and d!2313254 c!1393990) b!7552672))

(assert (= (and d!2313254 (not c!1393990)) b!7552673))

(assert (= (and d!2313254 res!3027334) b!7552674))

(assert (= (and b!7552674 res!3027333) b!7552675))

(declare-fun m!8119330 () Bool)

(assert (=> b!7552673 m!8119330))

(declare-fun m!8119332 () Bool)

(assert (=> d!2313254 m!8119332))

(declare-fun m!8119334 () Bool)

(assert (=> d!2313254 m!8119334))

(declare-fun m!8119336 () Bool)

(assert (=> d!2313254 m!8119336))

(declare-fun m!8119338 () Bool)

(assert (=> b!7552674 m!8119338))

(assert (=> b!7552674 m!8118996))

(declare-fun m!8119340 () Bool)

(assert (=> b!7552674 m!8119340))

(assert (=> b!7552351 d!2313254))

(declare-fun d!2313256 () Bool)

(assert (=> d!2313256 (= (head!15543 lt!2647370) (h!79160 lt!2647370))))

(assert (=> b!7552351 d!2313256))

(declare-fun d!2313258 () Bool)

(assert (=> d!2313258 (isPrefix!6159 (++!17469 testedP!423 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712)) input!7874)))

(declare-fun lt!2647465 () Unit!166844)

(declare-fun choose!58460 (List!72836 List!72836) Unit!166844)

(assert (=> d!2313258 (= lt!2647465 (choose!58460 testedP!423 input!7874))))

(assert (=> d!2313258 (isPrefix!6159 testedP!423 input!7874)))

(assert (=> d!2313258 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1220 testedP!423 input!7874) lt!2647465)))

(declare-fun bs!1940232 () Bool)

(assert (= bs!1940232 d!2313258))

(declare-fun m!8119342 () Bool)

(assert (=> bs!1940232 m!8119342))

(assert (=> bs!1940232 m!8119022))

(declare-fun m!8119344 () Bool)

(assert (=> bs!1940232 m!8119344))

(assert (=> bs!1940232 m!8119056))

(assert (=> bs!1940232 m!8119056))

(declare-fun m!8119346 () Bool)

(assert (=> bs!1940232 m!8119346))

(assert (=> bs!1940232 m!8119344))

(declare-fun m!8119348 () Bool)

(assert (=> bs!1940232 m!8119348))

(assert (=> b!7552351 d!2313258))

(declare-fun d!2313260 () Bool)

(assert (=> d!2313260 (= (derivative!485 baseR!101 (++!17469 testedP!423 (Cons!72712 lt!2647388 Nil!72712))) (derivativeStep!5743 r!24333 lt!2647388))))

(declare-fun lt!2647470 () Unit!166844)

(declare-fun choose!58461 (Regex!19953 Regex!19953 List!72836 C!40232) Unit!166844)

(assert (=> d!2313260 (= lt!2647470 (choose!58461 baseR!101 r!24333 testedP!423 lt!2647388))))

(assert (=> d!2313260 (validRegex!10381 baseR!101)))

(assert (=> d!2313260 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!187 baseR!101 r!24333 testedP!423 lt!2647388) lt!2647470)))

(declare-fun bs!1940233 () Bool)

(assert (= bs!1940233 d!2313260))

(declare-fun m!8119350 () Bool)

(assert (=> bs!1940233 m!8119350))

(assert (=> bs!1940233 m!8119350))

(declare-fun m!8119352 () Bool)

(assert (=> bs!1940233 m!8119352))

(assert (=> bs!1940233 m!8119058))

(assert (=> bs!1940233 m!8118994))

(declare-fun m!8119354 () Bool)

(assert (=> bs!1940233 m!8119354))

(assert (=> b!7552351 d!2313260))

(declare-fun d!2313262 () Bool)

(declare-fun lt!2647471 () List!72836)

(assert (=> d!2313262 (= (++!17469 testedP!423 lt!2647471) input!7874)))

(declare-fun e!4498791 () List!72836)

(assert (=> d!2313262 (= lt!2647471 e!4498791)))

(declare-fun c!1394002 () Bool)

(assert (=> d!2313262 (= c!1394002 ((_ is Cons!72712) testedP!423))))

(assert (=> d!2313262 (>= (size!42449 input!7874) (size!42449 testedP!423))))

(assert (=> d!2313262 (= (getSuffix!3639 input!7874 testedP!423) lt!2647471)))

(declare-fun b!7552696 () Bool)

(assert (=> b!7552696 (= e!4498791 (getSuffix!3639 (tail!15085 input!7874) (t!387559 testedP!423)))))

(declare-fun b!7552697 () Bool)

(assert (=> b!7552697 (= e!4498791 input!7874)))

(assert (= (and d!2313262 c!1394002) b!7552696))

(assert (= (and d!2313262 (not c!1394002)) b!7552697))

(declare-fun m!8119356 () Bool)

(assert (=> d!2313262 m!8119356))

(assert (=> d!2313262 m!8119008))

(assert (=> d!2313262 m!8118996))

(assert (=> b!7552696 m!8119182))

(assert (=> b!7552696 m!8119182))

(declare-fun m!8119358 () Bool)

(assert (=> b!7552696 m!8119358))

(assert (=> b!7552351 d!2313262))

(declare-fun d!2313264 () Bool)

(assert (=> d!2313264 (isPrefix!6159 lt!2647369 knownP!30)))

(declare-fun lt!2647475 () Unit!166844)

(declare-fun choose!58462 (List!72836 List!72836 List!72836) Unit!166844)

(assert (=> d!2313264 (= lt!2647475 (choose!58462 knownP!30 lt!2647369 input!7874))))

(assert (=> d!2313264 (isPrefix!6159 knownP!30 input!7874)))

(assert (=> d!2313264 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!909 knownP!30 lt!2647369 input!7874) lt!2647475)))

(declare-fun bs!1940234 () Bool)

(assert (= bs!1940234 d!2313264))

(assert (=> bs!1940234 m!8119064))

(declare-fun m!8119360 () Bool)

(assert (=> bs!1940234 m!8119360))

(assert (=> bs!1940234 m!8119044))

(assert (=> b!7552351 d!2313264))

(declare-fun d!2313266 () Bool)

(declare-fun lt!2647476 () List!72836)

(assert (=> d!2313266 (= (++!17469 knownP!30 lt!2647476) input!7874)))

(declare-fun e!4498797 () List!72836)

(assert (=> d!2313266 (= lt!2647476 e!4498797)))

(declare-fun c!1394008 () Bool)

(assert (=> d!2313266 (= c!1394008 ((_ is Cons!72712) knownP!30))))

(assert (=> d!2313266 (>= (size!42449 input!7874) (size!42449 knownP!30))))

(assert (=> d!2313266 (= (getSuffix!3639 input!7874 knownP!30) lt!2647476)))

(declare-fun b!7552708 () Bool)

(assert (=> b!7552708 (= e!4498797 (getSuffix!3639 (tail!15085 input!7874) (t!387559 knownP!30)))))

(declare-fun b!7552709 () Bool)

(assert (=> b!7552709 (= e!4498797 input!7874)))

(assert (= (and d!2313266 c!1394008) b!7552708))

(assert (= (and d!2313266 (not c!1394008)) b!7552709))

(declare-fun m!8119362 () Bool)

(assert (=> d!2313266 m!8119362))

(assert (=> d!2313266 m!8119008))

(assert (=> d!2313266 m!8118998))

(assert (=> b!7552708 m!8119182))

(assert (=> b!7552708 m!8119182))

(declare-fun m!8119366 () Bool)

(assert (=> b!7552708 m!8119366))

(assert (=> b!7552351 d!2313266))

(declare-fun d!2313268 () Bool)

(declare-fun lt!2647477 () Regex!19953)

(assert (=> d!2313268 (validRegex!10381 lt!2647477)))

(declare-fun e!4498798 () Regex!19953)

(assert (=> d!2313268 (= lt!2647477 e!4498798)))

(declare-fun c!1394009 () Bool)

(assert (=> d!2313268 (= c!1394009 ((_ is Cons!72712) lt!2647369))))

(assert (=> d!2313268 (validRegex!10381 baseR!101)))

(assert (=> d!2313268 (= (derivative!485 baseR!101 lt!2647369) lt!2647477)))

(declare-fun b!7552710 () Bool)

(assert (=> b!7552710 (= e!4498798 (derivative!485 (derivativeStep!5743 baseR!101 (h!79160 lt!2647369)) (t!387559 lt!2647369)))))

(declare-fun b!7552711 () Bool)

(assert (=> b!7552711 (= e!4498798 baseR!101)))

(assert (= (and d!2313268 c!1394009) b!7552710))

(assert (= (and d!2313268 (not c!1394009)) b!7552711))

(declare-fun m!8119374 () Bool)

(assert (=> d!2313268 m!8119374))

(assert (=> d!2313268 m!8118994))

(declare-fun m!8119376 () Bool)

(assert (=> b!7552710 m!8119376))

(assert (=> b!7552710 m!8119376))

(declare-fun m!8119378 () Bool)

(assert (=> b!7552710 m!8119378))

(assert (=> b!7552351 d!2313268))

(declare-fun b!7552716 () Bool)

(declare-fun e!4498803 () Bool)

(declare-fun e!4498801 () Bool)

(assert (=> b!7552716 (= e!4498803 e!4498801)))

(declare-fun res!3027339 () Bool)

(assert (=> b!7552716 (=> (not res!3027339) (not e!4498801))))

(assert (=> b!7552716 (= res!3027339 (not ((_ is Nil!72712) knownP!30)))))

(declare-fun b!7552717 () Bool)

(declare-fun res!3027340 () Bool)

(assert (=> b!7552717 (=> (not res!3027340) (not e!4498801))))

(assert (=> b!7552717 (= res!3027340 (= (head!15543 lt!2647369) (head!15543 knownP!30)))))

(declare-fun b!7552718 () Bool)

(assert (=> b!7552718 (= e!4498801 (isPrefix!6159 (tail!15085 lt!2647369) (tail!15085 knownP!30)))))

(declare-fun d!2313272 () Bool)

(declare-fun e!4498802 () Bool)

(assert (=> d!2313272 e!4498802))

(declare-fun res!3027338 () Bool)

(assert (=> d!2313272 (=> res!3027338 e!4498802)))

(declare-fun lt!2647479 () Bool)

(assert (=> d!2313272 (= res!3027338 (not lt!2647479))))

(assert (=> d!2313272 (= lt!2647479 e!4498803)))

(declare-fun res!3027337 () Bool)

(assert (=> d!2313272 (=> res!3027337 e!4498803)))

(assert (=> d!2313272 (= res!3027337 ((_ is Nil!72712) lt!2647369))))

(assert (=> d!2313272 (= (isPrefix!6159 lt!2647369 knownP!30) lt!2647479)))

(declare-fun b!7552719 () Bool)

(assert (=> b!7552719 (= e!4498802 (>= (size!42449 knownP!30) (size!42449 lt!2647369)))))

(assert (= (and d!2313272 (not res!3027337)) b!7552716))

(assert (= (and b!7552716 res!3027339) b!7552717))

(assert (= (and b!7552717 res!3027340) b!7552718))

(assert (= (and d!2313272 (not res!3027338)) b!7552719))

(assert (=> b!7552717 m!8119230))

(assert (=> b!7552717 m!8119176))

(assert (=> b!7552718 m!8119232))

(assert (=> b!7552718 m!8119180))

(assert (=> b!7552718 m!8119232))

(assert (=> b!7552718 m!8119180))

(declare-fun m!8119388 () Bool)

(assert (=> b!7552718 m!8119388))

(assert (=> b!7552719 m!8118998))

(assert (=> b!7552719 m!8119236))

(assert (=> b!7552351 d!2313272))

(declare-fun b!7552720 () Bool)

(declare-fun e!4498806 () Bool)

(declare-fun e!4498804 () Bool)

(assert (=> b!7552720 (= e!4498806 e!4498804)))

(declare-fun res!3027343 () Bool)

(assert (=> b!7552720 (=> (not res!3027343) (not e!4498804))))

(assert (=> b!7552720 (= res!3027343 (not ((_ is Nil!72712) input!7874)))))

(declare-fun b!7552721 () Bool)

(declare-fun res!3027344 () Bool)

(assert (=> b!7552721 (=> (not res!3027344) (not e!4498804))))

(assert (=> b!7552721 (= res!3027344 (= (head!15543 testedP!423) (head!15543 input!7874)))))

(declare-fun b!7552722 () Bool)

(assert (=> b!7552722 (= e!4498804 (isPrefix!6159 (tail!15085 testedP!423) (tail!15085 input!7874)))))

(declare-fun d!2313276 () Bool)

(declare-fun e!4498805 () Bool)

(assert (=> d!2313276 e!4498805))

(declare-fun res!3027342 () Bool)

(assert (=> d!2313276 (=> res!3027342 e!4498805)))

(declare-fun lt!2647481 () Bool)

(assert (=> d!2313276 (= res!3027342 (not lt!2647481))))

(assert (=> d!2313276 (= lt!2647481 e!4498806)))

(declare-fun res!3027341 () Bool)

(assert (=> d!2313276 (=> res!3027341 e!4498806)))

(assert (=> d!2313276 (= res!3027341 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313276 (= (isPrefix!6159 testedP!423 input!7874) lt!2647481)))

(declare-fun b!7552723 () Bool)

(assert (=> b!7552723 (= e!4498805 (>= (size!42449 input!7874) (size!42449 testedP!423)))))

(assert (= (and d!2313276 (not res!3027341)) b!7552720))

(assert (= (and b!7552720 res!3027343) b!7552721))

(assert (= (and b!7552721 res!3027344) b!7552722))

(assert (= (and d!2313276 (not res!3027342)) b!7552723))

(declare-fun m!8119392 () Bool)

(assert (=> b!7552721 m!8119392))

(assert (=> b!7552721 m!8119178))

(declare-fun m!8119394 () Bool)

(assert (=> b!7552722 m!8119394))

(assert (=> b!7552722 m!8119182))

(assert (=> b!7552722 m!8119394))

(assert (=> b!7552722 m!8119182))

(declare-fun m!8119396 () Bool)

(assert (=> b!7552722 m!8119396))

(assert (=> b!7552723 m!8119008))

(assert (=> b!7552723 m!8118996))

(assert (=> b!7552340 d!2313276))

(declare-fun b!7552728 () Bool)

(declare-fun e!4498810 () List!72836)

(assert (=> b!7552728 (= e!4498810 lt!2647370)))

(declare-fun b!7552729 () Bool)

(assert (=> b!7552729 (= e!4498810 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) lt!2647370)))))

(declare-fun d!2313280 () Bool)

(declare-fun e!4498811 () Bool)

(assert (=> d!2313280 e!4498811))

(declare-fun res!3027350 () Bool)

(assert (=> d!2313280 (=> (not res!3027350) (not e!4498811))))

(declare-fun lt!2647483 () List!72836)

(assert (=> d!2313280 (= res!3027350 (= (content!15394 lt!2647483) ((_ map or) (content!15394 testedP!423) (content!15394 lt!2647370))))))

(assert (=> d!2313280 (= lt!2647483 e!4498810)))

(declare-fun c!1394011 () Bool)

(assert (=> d!2313280 (= c!1394011 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313280 (= (++!17469 testedP!423 lt!2647370) lt!2647483)))

(declare-fun b!7552731 () Bool)

(assert (=> b!7552731 (= e!4498811 (or (not (= lt!2647370 Nil!72712)) (= lt!2647483 testedP!423)))))

(declare-fun b!7552730 () Bool)

(declare-fun res!3027349 () Bool)

(assert (=> b!7552730 (=> (not res!3027349) (not e!4498811))))

(assert (=> b!7552730 (= res!3027349 (= (size!42449 lt!2647483) (+ (size!42449 testedP!423) (size!42449 lt!2647370))))))

(assert (= (and d!2313280 c!1394011) b!7552728))

(assert (= (and d!2313280 (not c!1394011)) b!7552729))

(assert (= (and d!2313280 res!3027350) b!7552730))

(assert (= (and b!7552730 res!3027349) b!7552731))

(declare-fun m!8119404 () Bool)

(assert (=> b!7552729 m!8119404))

(declare-fun m!8119406 () Bool)

(assert (=> d!2313280 m!8119406))

(assert (=> d!2313280 m!8119334))

(declare-fun m!8119408 () Bool)

(assert (=> d!2313280 m!8119408))

(declare-fun m!8119410 () Bool)

(assert (=> b!7552730 m!8119410))

(assert (=> b!7552730 m!8118996))

(declare-fun m!8119412 () Bool)

(assert (=> b!7552730 m!8119412))

(assert (=> b!7552329 d!2313280))

(declare-fun b!7552732 () Bool)

(declare-fun res!3027356 () Bool)

(declare-fun e!4498815 () Bool)

(assert (=> b!7552732 (=> res!3027356 e!4498815)))

(declare-fun e!4498813 () Bool)

(assert (=> b!7552732 (= res!3027356 e!4498813)))

(declare-fun res!3027357 () Bool)

(assert (=> b!7552732 (=> (not res!3027357) (not e!4498813))))

(declare-fun lt!2647484 () Bool)

(assert (=> b!7552732 (= res!3027357 lt!2647484)))

(declare-fun bm!692497 () Bool)

(declare-fun call!692502 () Bool)

(assert (=> bm!692497 (= call!692502 (isEmpty!41402 lt!2647376))))

(declare-fun b!7552733 () Bool)

(declare-fun e!4498812 () Bool)

(assert (=> b!7552733 (= e!4498812 (= lt!2647484 call!692502))))

(declare-fun b!7552735 () Bool)

(declare-fun e!4498817 () Bool)

(assert (=> b!7552735 (= e!4498815 e!4498817)))

(declare-fun res!3027353 () Bool)

(assert (=> b!7552735 (=> (not res!3027353) (not e!4498817))))

(assert (=> b!7552735 (= res!3027353 (not lt!2647484))))

(declare-fun b!7552736 () Bool)

(declare-fun e!4498816 () Bool)

(assert (=> b!7552736 (= e!4498816 (nullable!8706 r!24333))))

(declare-fun b!7552737 () Bool)

(declare-fun e!4498818 () Bool)

(assert (=> b!7552737 (= e!4498818 (not lt!2647484))))

(declare-fun b!7552738 () Bool)

(declare-fun res!3027355 () Bool)

(assert (=> b!7552738 (=> (not res!3027355) (not e!4498813))))

(assert (=> b!7552738 (= res!3027355 (not call!692502))))

(declare-fun b!7552739 () Bool)

(declare-fun e!4498814 () Bool)

(assert (=> b!7552739 (= e!4498814 (not (= (head!15543 lt!2647376) (c!1393902 r!24333))))))

(declare-fun b!7552740 () Bool)

(assert (=> b!7552740 (= e!4498816 (matchR!9555 (derivativeStep!5743 r!24333 (head!15543 lt!2647376)) (tail!15085 lt!2647376)))))

(declare-fun b!7552741 () Bool)

(assert (=> b!7552741 (= e!4498812 e!4498818)))

(declare-fun c!1394013 () Bool)

(assert (=> b!7552741 (= c!1394013 ((_ is EmptyLang!19953) r!24333))))

(declare-fun b!7552742 () Bool)

(declare-fun res!3027352 () Bool)

(assert (=> b!7552742 (=> res!3027352 e!4498814)))

(assert (=> b!7552742 (= res!3027352 (not (isEmpty!41402 (tail!15085 lt!2647376))))))

(declare-fun b!7552743 () Bool)

(declare-fun res!3027351 () Bool)

(assert (=> b!7552743 (=> res!3027351 e!4498815)))

(assert (=> b!7552743 (= res!3027351 (not ((_ is ElementMatch!19953) r!24333)))))

(assert (=> b!7552743 (= e!4498818 e!4498815)))

(declare-fun b!7552744 () Bool)

(assert (=> b!7552744 (= e!4498817 e!4498814)))

(declare-fun res!3027358 () Bool)

(assert (=> b!7552744 (=> res!3027358 e!4498814)))

(assert (=> b!7552744 (= res!3027358 call!692502)))

(declare-fun b!7552745 () Bool)

(assert (=> b!7552745 (= e!4498813 (= (head!15543 lt!2647376) (c!1393902 r!24333)))))

(declare-fun d!2313284 () Bool)

(assert (=> d!2313284 e!4498812))

(declare-fun c!1394012 () Bool)

(assert (=> d!2313284 (= c!1394012 ((_ is EmptyExpr!19953) r!24333))))

(assert (=> d!2313284 (= lt!2647484 e!4498816)))

(declare-fun c!1394014 () Bool)

(assert (=> d!2313284 (= c!1394014 (isEmpty!41402 lt!2647376))))

(assert (=> d!2313284 (validRegex!10381 r!24333)))

(assert (=> d!2313284 (= (matchR!9555 r!24333 lt!2647376) lt!2647484)))

(declare-fun b!7552734 () Bool)

(declare-fun res!3027354 () Bool)

(assert (=> b!7552734 (=> (not res!3027354) (not e!4498813))))

(assert (=> b!7552734 (= res!3027354 (isEmpty!41402 (tail!15085 lt!2647376)))))

(assert (= (and d!2313284 c!1394014) b!7552736))

(assert (= (and d!2313284 (not c!1394014)) b!7552740))

(assert (= (and d!2313284 c!1394012) b!7552733))

(assert (= (and d!2313284 (not c!1394012)) b!7552741))

(assert (= (and b!7552741 c!1394013) b!7552737))

(assert (= (and b!7552741 (not c!1394013)) b!7552743))

(assert (= (and b!7552743 (not res!3027351)) b!7552732))

(assert (= (and b!7552732 res!3027357) b!7552738))

(assert (= (and b!7552738 res!3027355) b!7552734))

(assert (= (and b!7552734 res!3027354) b!7552745))

(assert (= (and b!7552732 (not res!3027356)) b!7552735))

(assert (= (and b!7552735 res!3027353) b!7552744))

(assert (= (and b!7552744 (not res!3027358)) b!7552742))

(assert (= (and b!7552742 (not res!3027352)) b!7552739))

(assert (= (or b!7552733 b!7552738 b!7552744) bm!692497))

(assert (=> b!7552740 m!8118990))

(assert (=> b!7552740 m!8118990))

(declare-fun m!8119414 () Bool)

(assert (=> b!7552740 m!8119414))

(assert (=> b!7552740 m!8119004))

(assert (=> b!7552740 m!8119414))

(assert (=> b!7552740 m!8119004))

(declare-fun m!8119416 () Bool)

(assert (=> b!7552740 m!8119416))

(assert (=> b!7552734 m!8119004))

(assert (=> b!7552734 m!8119004))

(declare-fun m!8119418 () Bool)

(assert (=> b!7552734 m!8119418))

(assert (=> b!7552745 m!8118990))

(assert (=> b!7552742 m!8119004))

(assert (=> b!7552742 m!8119004))

(assert (=> b!7552742 m!8119418))

(declare-fun m!8119420 () Bool)

(assert (=> d!2313284 m!8119420))

(assert (=> d!2313284 m!8119032))

(declare-fun m!8119422 () Bool)

(assert (=> b!7552736 m!8119422))

(assert (=> bm!692497 m!8119420))

(assert (=> b!7552739 m!8118990))

(assert (=> b!7552331 d!2313284))

(declare-fun d!2313286 () Bool)

(declare-fun lt!2647485 () List!72836)

(assert (=> d!2313286 (= (++!17469 testedP!423 lt!2647485) knownP!30)))

(declare-fun e!4498819 () List!72836)

(assert (=> d!2313286 (= lt!2647485 e!4498819)))

(declare-fun c!1394015 () Bool)

(assert (=> d!2313286 (= c!1394015 ((_ is Cons!72712) testedP!423))))

(assert (=> d!2313286 (>= (size!42449 knownP!30) (size!42449 testedP!423))))

(assert (=> d!2313286 (= (getSuffix!3639 knownP!30 testedP!423) lt!2647485)))

(declare-fun b!7552746 () Bool)

(assert (=> b!7552746 (= e!4498819 (getSuffix!3639 (tail!15085 knownP!30) (t!387559 testedP!423)))))

(declare-fun b!7552747 () Bool)

(assert (=> b!7552747 (= e!4498819 knownP!30)))

(assert (= (and d!2313286 c!1394015) b!7552746))

(assert (= (and d!2313286 (not c!1394015)) b!7552747))

(declare-fun m!8119424 () Bool)

(assert (=> d!2313286 m!8119424))

(assert (=> d!2313286 m!8118998))

(assert (=> d!2313286 m!8118996))

(assert (=> b!7552746 m!8119180))

(assert (=> b!7552746 m!8119180))

(declare-fun m!8119426 () Bool)

(assert (=> b!7552746 m!8119426))

(assert (=> b!7552331 d!2313286))

(declare-fun b!7552748 () Bool)

(declare-fun e!4498822 () Bool)

(declare-fun e!4498820 () Bool)

(assert (=> b!7552748 (= e!4498822 e!4498820)))

(declare-fun res!3027361 () Bool)

(assert (=> b!7552748 (=> (not res!3027361) (not e!4498820))))

(assert (=> b!7552748 (= res!3027361 (not ((_ is Nil!72712) knownP!30)))))

(declare-fun b!7552749 () Bool)

(declare-fun res!3027362 () Bool)

(assert (=> b!7552749 (=> (not res!3027362) (not e!4498820))))

(assert (=> b!7552749 (= res!3027362 (= (head!15543 testedP!423) (head!15543 knownP!30)))))

(declare-fun b!7552750 () Bool)

(assert (=> b!7552750 (= e!4498820 (isPrefix!6159 (tail!15085 testedP!423) (tail!15085 knownP!30)))))

(declare-fun d!2313288 () Bool)

(declare-fun e!4498821 () Bool)

(assert (=> d!2313288 e!4498821))

(declare-fun res!3027360 () Bool)

(assert (=> d!2313288 (=> res!3027360 e!4498821)))

(declare-fun lt!2647486 () Bool)

(assert (=> d!2313288 (= res!3027360 (not lt!2647486))))

(assert (=> d!2313288 (= lt!2647486 e!4498822)))

(declare-fun res!3027359 () Bool)

(assert (=> d!2313288 (=> res!3027359 e!4498822)))

(assert (=> d!2313288 (= res!3027359 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313288 (= (isPrefix!6159 testedP!423 knownP!30) lt!2647486)))

(declare-fun b!7552751 () Bool)

(assert (=> b!7552751 (= e!4498821 (>= (size!42449 knownP!30) (size!42449 testedP!423)))))

(assert (= (and d!2313288 (not res!3027359)) b!7552748))

(assert (= (and b!7552748 res!3027361) b!7552749))

(assert (= (and b!7552749 res!3027362) b!7552750))

(assert (= (and d!2313288 (not res!3027360)) b!7552751))

(assert (=> b!7552749 m!8119392))

(assert (=> b!7552749 m!8119176))

(assert (=> b!7552750 m!8119394))

(assert (=> b!7552750 m!8119180))

(assert (=> b!7552750 m!8119394))

(assert (=> b!7552750 m!8119180))

(declare-fun m!8119428 () Bool)

(assert (=> b!7552750 m!8119428))

(assert (=> b!7552751 m!8118998))

(assert (=> b!7552751 m!8118996))

(assert (=> b!7552331 d!2313288))

(declare-fun d!2313290 () Bool)

(assert (=> d!2313290 (isPrefix!6159 testedP!423 knownP!30)))

(declare-fun lt!2647489 () Unit!166844)

(assert (=> d!2313290 (= lt!2647489 (choose!58462 knownP!30 testedP!423 input!7874))))

(assert (=> d!2313290 (isPrefix!6159 knownP!30 input!7874)))

(assert (=> d!2313290 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!909 knownP!30 testedP!423 input!7874) lt!2647489)))

(declare-fun bs!1940236 () Bool)

(assert (= bs!1940236 d!2313290))

(assert (=> bs!1940236 m!8119018))

(declare-fun m!8119430 () Bool)

(assert (=> bs!1940236 m!8119430))

(assert (=> bs!1940236 m!8119044))

(assert (=> b!7552331 d!2313290))

(declare-fun d!2313292 () Bool)

(assert (=> d!2313292 (= lt!2647378 lt!2647376)))

(declare-fun lt!2647490 () Unit!166844)

(assert (=> d!2313292 (= lt!2647490 (choose!58458 testedP!423 lt!2647378 testedP!423 lt!2647376 knownP!30))))

(assert (=> d!2313292 (isPrefix!6159 testedP!423 knownP!30)))

(assert (=> d!2313292 (= (lemmaSamePrefixThenSameSuffix!2875 testedP!423 lt!2647378 testedP!423 lt!2647376 knownP!30) lt!2647490)))

(declare-fun bs!1940237 () Bool)

(assert (= bs!1940237 d!2313292))

(declare-fun m!8119432 () Bool)

(assert (=> bs!1940237 m!8119432))

(assert (=> bs!1940237 m!8119018))

(assert (=> b!7552352 d!2313292))

(declare-fun b!7552752 () Bool)

(declare-fun e!4498823 () List!72836)

(assert (=> b!7552752 (= e!4498823 lt!2647378)))

(declare-fun b!7552753 () Bool)

(assert (=> b!7552753 (= e!4498823 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) lt!2647378)))))

(declare-fun d!2313294 () Bool)

(declare-fun e!4498824 () Bool)

(assert (=> d!2313294 e!4498824))

(declare-fun res!3027364 () Bool)

(assert (=> d!2313294 (=> (not res!3027364) (not e!4498824))))

(declare-fun lt!2647491 () List!72836)

(assert (=> d!2313294 (= res!3027364 (= (content!15394 lt!2647491) ((_ map or) (content!15394 testedP!423) (content!15394 lt!2647378))))))

(assert (=> d!2313294 (= lt!2647491 e!4498823)))

(declare-fun c!1394016 () Bool)

(assert (=> d!2313294 (= c!1394016 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313294 (= (++!17469 testedP!423 lt!2647378) lt!2647491)))

(declare-fun b!7552755 () Bool)

(assert (=> b!7552755 (= e!4498824 (or (not (= lt!2647378 Nil!72712)) (= lt!2647491 testedP!423)))))

(declare-fun b!7552754 () Bool)

(declare-fun res!3027363 () Bool)

(assert (=> b!7552754 (=> (not res!3027363) (not e!4498824))))

(assert (=> b!7552754 (= res!3027363 (= (size!42449 lt!2647491) (+ (size!42449 testedP!423) (size!42449 lt!2647378))))))

(assert (= (and d!2313294 c!1394016) b!7552752))

(assert (= (and d!2313294 (not c!1394016)) b!7552753))

(assert (= (and d!2313294 res!3027364) b!7552754))

(assert (= (and b!7552754 res!3027363) b!7552755))

(declare-fun m!8119434 () Bool)

(assert (=> b!7552753 m!8119434))

(declare-fun m!8119438 () Bool)

(assert (=> d!2313294 m!8119438))

(assert (=> d!2313294 m!8119334))

(declare-fun m!8119440 () Bool)

(assert (=> d!2313294 m!8119440))

(declare-fun m!8119442 () Bool)

(assert (=> b!7552754 m!8119442))

(assert (=> b!7552754 m!8118996))

(declare-fun m!8119444 () Bool)

(assert (=> b!7552754 m!8119444))

(assert (=> b!7552352 d!2313294))

(declare-fun b!7552756 () Bool)

(declare-fun e!4498825 () List!72836)

(assert (=> b!7552756 (= e!4498825 lt!2647385)))

(declare-fun b!7552757 () Bool)

(assert (=> b!7552757 (= e!4498825 (Cons!72712 (h!79160 lt!2647383) (++!17469 (t!387559 lt!2647383) lt!2647385)))))

(declare-fun d!2313296 () Bool)

(declare-fun e!4498826 () Bool)

(assert (=> d!2313296 e!4498826))

(declare-fun res!3027366 () Bool)

(assert (=> d!2313296 (=> (not res!3027366) (not e!4498826))))

(declare-fun lt!2647493 () List!72836)

(assert (=> d!2313296 (= res!3027366 (= (content!15394 lt!2647493) ((_ map or) (content!15394 lt!2647383) (content!15394 lt!2647385))))))

(assert (=> d!2313296 (= lt!2647493 e!4498825)))

(declare-fun c!1394017 () Bool)

(assert (=> d!2313296 (= c!1394017 ((_ is Nil!72712) lt!2647383))))

(assert (=> d!2313296 (= (++!17469 lt!2647383 lt!2647385) lt!2647493)))

(declare-fun b!7552759 () Bool)

(assert (=> b!7552759 (= e!4498826 (or (not (= lt!2647385 Nil!72712)) (= lt!2647493 lt!2647383)))))

(declare-fun b!7552758 () Bool)

(declare-fun res!3027365 () Bool)

(assert (=> b!7552758 (=> (not res!3027365) (not e!4498826))))

(assert (=> b!7552758 (= res!3027365 (= (size!42449 lt!2647493) (+ (size!42449 lt!2647383) (size!42449 lt!2647385))))))

(assert (= (and d!2313296 c!1394017) b!7552756))

(assert (= (and d!2313296 (not c!1394017)) b!7552757))

(assert (= (and d!2313296 res!3027366) b!7552758))

(assert (= (and b!7552758 res!3027365) b!7552759))

(declare-fun m!8119452 () Bool)

(assert (=> b!7552757 m!8119452))

(declare-fun m!8119454 () Bool)

(assert (=> d!2313296 m!8119454))

(assert (=> d!2313296 m!8119336))

(declare-fun m!8119456 () Bool)

(assert (=> d!2313296 m!8119456))

(declare-fun m!8119458 () Bool)

(assert (=> b!7552758 m!8119458))

(assert (=> b!7552758 m!8119340))

(declare-fun m!8119460 () Bool)

(assert (=> b!7552758 m!8119460))

(assert (=> b!7552352 d!2313296))

(declare-fun d!2313300 () Bool)

(assert (=> d!2313300 (= (++!17469 (++!17469 testedP!423 lt!2647383) lt!2647385) (++!17469 testedP!423 (++!17469 lt!2647383 lt!2647385)))))

(declare-fun lt!2647500 () Unit!166844)

(declare-fun choose!58465 (List!72836 List!72836 List!72836) Unit!166844)

(assert (=> d!2313300 (= lt!2647500 (choose!58465 testedP!423 lt!2647383 lt!2647385))))

(assert (=> d!2313300 (= (lemmaConcatAssociativity!3108 testedP!423 lt!2647383 lt!2647385) lt!2647500)))

(declare-fun bs!1940240 () Bool)

(assert (= bs!1940240 d!2313300))

(assert (=> bs!1940240 m!8119068))

(declare-fun m!8119478 () Bool)

(assert (=> bs!1940240 m!8119478))

(assert (=> bs!1940240 m!8119038))

(declare-fun m!8119480 () Bool)

(assert (=> bs!1940240 m!8119480))

(assert (=> bs!1940240 m!8119068))

(declare-fun m!8119482 () Bool)

(assert (=> bs!1940240 m!8119482))

(assert (=> bs!1940240 m!8119038))

(assert (=> b!7552352 d!2313300))

(declare-fun d!2313312 () Bool)

(declare-fun lostCauseFct!461 (Regex!19953) Bool)

(assert (=> d!2313312 (= (lostCause!1745 r!24333) (lostCauseFct!461 r!24333))))

(declare-fun bs!1940241 () Bool)

(assert (= bs!1940241 d!2313312))

(declare-fun m!8119484 () Bool)

(assert (=> bs!1940241 m!8119484))

(assert (=> b!7552343 d!2313312))

(declare-fun bm!692501 () Bool)

(declare-fun call!692507 () Bool)

(declare-fun call!692508 () Bool)

(assert (=> bm!692501 (= call!692507 call!692508)))

(declare-fun b!7552796 () Bool)

(declare-fun e!4498850 () Bool)

(declare-fun e!4498853 () Bool)

(assert (=> b!7552796 (= e!4498850 e!4498853)))

(declare-fun c!1394020 () Bool)

(assert (=> b!7552796 (= c!1394020 ((_ is Union!19953) baseR!101))))

(declare-fun b!7552797 () Bool)

(declare-fun res!3027387 () Bool)

(declare-fun e!4498849 () Bool)

(assert (=> b!7552797 (=> (not res!3027387) (not e!4498849))))

(assert (=> b!7552797 (= res!3027387 call!692507)))

(assert (=> b!7552797 (= e!4498853 e!4498849)))

(declare-fun d!2313314 () Bool)

(declare-fun res!3027386 () Bool)

(declare-fun e!4498854 () Bool)

(assert (=> d!2313314 (=> res!3027386 e!4498854)))

(assert (=> d!2313314 (= res!3027386 ((_ is ElementMatch!19953) baseR!101))))

(assert (=> d!2313314 (= (validRegex!10381 baseR!101) e!4498854)))

(declare-fun b!7552798 () Bool)

(declare-fun e!4498851 () Bool)

(assert (=> b!7552798 (= e!4498851 call!692508)))

(declare-fun c!1394021 () Bool)

(declare-fun bm!692502 () Bool)

(assert (=> bm!692502 (= call!692508 (validRegex!10381 (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))))))

(declare-fun b!7552799 () Bool)

(declare-fun res!3027385 () Bool)

(declare-fun e!4498848 () Bool)

(assert (=> b!7552799 (=> res!3027385 e!4498848)))

(assert (=> b!7552799 (= res!3027385 (not ((_ is Concat!28798) baseR!101)))))

(assert (=> b!7552799 (= e!4498853 e!4498848)))

(declare-fun b!7552800 () Bool)

(declare-fun e!4498852 () Bool)

(assert (=> b!7552800 (= e!4498848 e!4498852)))

(declare-fun res!3027388 () Bool)

(assert (=> b!7552800 (=> (not res!3027388) (not e!4498852))))

(assert (=> b!7552800 (= res!3027388 call!692507)))

(declare-fun b!7552801 () Bool)

(assert (=> b!7552801 (= e!4498850 e!4498851)))

(declare-fun res!3027384 () Bool)

(assert (=> b!7552801 (= res!3027384 (not (nullable!8706 (reg!20282 baseR!101))))))

(assert (=> b!7552801 (=> (not res!3027384) (not e!4498851))))

(declare-fun b!7552804 () Bool)

(declare-fun call!692506 () Bool)

(assert (=> b!7552804 (= e!4498849 call!692506)))

(declare-fun bm!692503 () Bool)

(assert (=> bm!692503 (= call!692506 (validRegex!10381 (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))))))

(declare-fun b!7552807 () Bool)

(assert (=> b!7552807 (= e!4498852 call!692506)))

(declare-fun b!7552808 () Bool)

(assert (=> b!7552808 (= e!4498854 e!4498850)))

(assert (=> b!7552808 (= c!1394021 ((_ is Star!19953) baseR!101))))

(assert (= (and d!2313314 (not res!3027386)) b!7552808))

(assert (= (and b!7552808 c!1394021) b!7552801))

(assert (= (and b!7552808 (not c!1394021)) b!7552796))

(assert (= (and b!7552801 res!3027384) b!7552798))

(assert (= (and b!7552796 c!1394020) b!7552797))

(assert (= (and b!7552796 (not c!1394020)) b!7552799))

(assert (= (and b!7552797 res!3027387) b!7552804))

(assert (= (and b!7552799 (not res!3027385)) b!7552800))

(assert (= (and b!7552800 res!3027388) b!7552807))

(assert (= (or b!7552797 b!7552800) bm!692501))

(assert (= (or b!7552804 b!7552807) bm!692503))

(assert (= (or b!7552798 bm!692501) bm!692502))

(declare-fun m!8119486 () Bool)

(assert (=> bm!692502 m!8119486))

(declare-fun m!8119488 () Bool)

(assert (=> b!7552801 m!8119488))

(declare-fun m!8119490 () Bool)

(assert (=> bm!692503 m!8119490))

(assert (=> start!730244 d!2313314))

(declare-fun d!2313316 () Bool)

(declare-fun lt!2647501 () Int)

(assert (=> d!2313316 (>= lt!2647501 0)))

(declare-fun e!4498859 () Int)

(assert (=> d!2313316 (= lt!2647501 e!4498859)))

(declare-fun c!1394022 () Bool)

(assert (=> d!2313316 (= c!1394022 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313316 (= (size!42449 testedP!423) lt!2647501)))

(declare-fun b!7552821 () Bool)

(assert (=> b!7552821 (= e!4498859 0)))

(declare-fun b!7552822 () Bool)

(assert (=> b!7552822 (= e!4498859 (+ 1 (size!42449 (t!387559 testedP!423))))))

(assert (= (and d!2313316 c!1394022) b!7552821))

(assert (= (and d!2313316 (not c!1394022)) b!7552822))

(declare-fun m!8119492 () Bool)

(assert (=> b!7552822 m!8119492))

(assert (=> b!7552334 d!2313316))

(declare-fun d!2313318 () Bool)

(declare-fun lt!2647502 () Int)

(assert (=> d!2313318 (>= lt!2647502 0)))

(declare-fun e!4498861 () Int)

(assert (=> d!2313318 (= lt!2647502 e!4498861)))

(declare-fun c!1394023 () Bool)

(assert (=> d!2313318 (= c!1394023 ((_ is Nil!72712) knownP!30))))

(assert (=> d!2313318 (= (size!42449 knownP!30) lt!2647502)))

(declare-fun b!7552827 () Bool)

(assert (=> b!7552827 (= e!4498861 0)))

(declare-fun b!7552828 () Bool)

(assert (=> b!7552828 (= e!4498861 (+ 1 (size!42449 (t!387559 knownP!30))))))

(assert (= (and d!2313318 c!1394023) b!7552827))

(assert (= (and d!2313318 (not c!1394023)) b!7552828))

(declare-fun m!8119494 () Bool)

(assert (=> b!7552828 m!8119494))

(assert (=> b!7552334 d!2313318))

(declare-fun b!7552833 () Bool)

(declare-fun e!4498863 () List!72836)

(assert (=> b!7552833 (= e!4498863 lt!2647374)))

(declare-fun b!7552834 () Bool)

(assert (=> b!7552834 (= e!4498863 (Cons!72712 (h!79160 lt!2647368) (++!17469 (t!387559 lt!2647368) lt!2647374)))))

(declare-fun d!2313320 () Bool)

(declare-fun e!4498864 () Bool)

(assert (=> d!2313320 e!4498864))

(declare-fun res!3027390 () Bool)

(assert (=> d!2313320 (=> (not res!3027390) (not e!4498864))))

(declare-fun lt!2647503 () List!72836)

(assert (=> d!2313320 (= res!3027390 (= (content!15394 lt!2647503) ((_ map or) (content!15394 lt!2647368) (content!15394 lt!2647374))))))

(assert (=> d!2313320 (= lt!2647503 e!4498863)))

(declare-fun c!1394024 () Bool)

(assert (=> d!2313320 (= c!1394024 ((_ is Nil!72712) lt!2647368))))

(assert (=> d!2313320 (= (++!17469 lt!2647368 lt!2647374) lt!2647503)))

(declare-fun b!7552836 () Bool)

(assert (=> b!7552836 (= e!4498864 (or (not (= lt!2647374 Nil!72712)) (= lt!2647503 lt!2647368)))))

(declare-fun b!7552835 () Bool)

(declare-fun res!3027389 () Bool)

(assert (=> b!7552835 (=> (not res!3027389) (not e!4498864))))

(assert (=> b!7552835 (= res!3027389 (= (size!42449 lt!2647503) (+ (size!42449 lt!2647368) (size!42449 lt!2647374))))))

(assert (= (and d!2313320 c!1394024) b!7552833))

(assert (= (and d!2313320 (not c!1394024)) b!7552834))

(assert (= (and d!2313320 res!3027390) b!7552835))

(assert (= (and b!7552835 res!3027389) b!7552836))

(declare-fun m!8119496 () Bool)

(assert (=> b!7552834 m!8119496))

(declare-fun m!8119498 () Bool)

(assert (=> d!2313320 m!8119498))

(declare-fun m!8119500 () Bool)

(assert (=> d!2313320 m!8119500))

(assert (=> d!2313320 m!8119324))

(declare-fun m!8119502 () Bool)

(assert (=> b!7552835 m!8119502))

(declare-fun m!8119504 () Bool)

(assert (=> b!7552835 m!8119504))

(assert (=> b!7552835 m!8119328))

(assert (=> b!7552355 d!2313320))

(declare-fun b!7552847 () Bool)

(declare-fun e!4498869 () List!72836)

(assert (=> b!7552847 (= e!4498869 lt!2647376)))

(declare-fun b!7552848 () Bool)

(assert (=> b!7552848 (= e!4498869 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) lt!2647376)))))

(declare-fun d!2313322 () Bool)

(declare-fun e!4498870 () Bool)

(assert (=> d!2313322 e!4498870))

(declare-fun res!3027392 () Bool)

(assert (=> d!2313322 (=> (not res!3027392) (not e!4498870))))

(declare-fun lt!2647504 () List!72836)

(assert (=> d!2313322 (= res!3027392 (= (content!15394 lt!2647504) ((_ map or) (content!15394 testedP!423) (content!15394 lt!2647376))))))

(assert (=> d!2313322 (= lt!2647504 e!4498869)))

(declare-fun c!1394025 () Bool)

(assert (=> d!2313322 (= c!1394025 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313322 (= (++!17469 testedP!423 lt!2647376) lt!2647504)))

(declare-fun b!7552850 () Bool)

(assert (=> b!7552850 (= e!4498870 (or (not (= lt!2647376 Nil!72712)) (= lt!2647504 testedP!423)))))

(declare-fun b!7552849 () Bool)

(declare-fun res!3027391 () Bool)

(assert (=> b!7552849 (=> (not res!3027391) (not e!4498870))))

(assert (=> b!7552849 (= res!3027391 (= (size!42449 lt!2647504) (+ (size!42449 testedP!423) (size!42449 lt!2647376))))))

(assert (= (and d!2313322 c!1394025) b!7552847))

(assert (= (and d!2313322 (not c!1394025)) b!7552848))

(assert (= (and d!2313322 res!3027392) b!7552849))

(assert (= (and b!7552849 res!3027391) b!7552850))

(declare-fun m!8119506 () Bool)

(assert (=> b!7552848 m!8119506))

(declare-fun m!8119508 () Bool)

(assert (=> d!2313322 m!8119508))

(assert (=> d!2313322 m!8119334))

(declare-fun m!8119510 () Bool)

(assert (=> d!2313322 m!8119510))

(declare-fun m!8119512 () Bool)

(assert (=> b!7552849 m!8119512))

(assert (=> b!7552849 m!8118996))

(declare-fun m!8119514 () Bool)

(assert (=> b!7552849 m!8119514))

(assert (=> b!7552355 d!2313322))

(declare-fun b!7552859 () Bool)

(declare-fun e!4498873 () List!72836)

(assert (=> b!7552859 (= e!4498873 lt!2647385)))

(declare-fun b!7552860 () Bool)

(assert (=> b!7552860 (= e!4498873 (Cons!72712 (h!79160 lt!2647369) (++!17469 (t!387559 lt!2647369) lt!2647385)))))

(declare-fun d!2313324 () Bool)

(declare-fun e!4498874 () Bool)

(assert (=> d!2313324 e!4498874))

(declare-fun res!3027394 () Bool)

(assert (=> d!2313324 (=> (not res!3027394) (not e!4498874))))

(declare-fun lt!2647505 () List!72836)

(assert (=> d!2313324 (= res!3027394 (= (content!15394 lt!2647505) ((_ map or) (content!15394 lt!2647369) (content!15394 lt!2647385))))))

(assert (=> d!2313324 (= lt!2647505 e!4498873)))

(declare-fun c!1394026 () Bool)

(assert (=> d!2313324 (= c!1394026 ((_ is Nil!72712) lt!2647369))))

(assert (=> d!2313324 (= (++!17469 lt!2647369 lt!2647385) lt!2647505)))

(declare-fun b!7552862 () Bool)

(assert (=> b!7552862 (= e!4498874 (or (not (= lt!2647385 Nil!72712)) (= lt!2647505 lt!2647369)))))

(declare-fun b!7552861 () Bool)

(declare-fun res!3027393 () Bool)

(assert (=> b!7552861 (=> (not res!3027393) (not e!4498874))))

(assert (=> b!7552861 (= res!3027393 (= (size!42449 lt!2647505) (+ (size!42449 lt!2647369) (size!42449 lt!2647385))))))

(assert (= (and d!2313324 c!1394026) b!7552859))

(assert (= (and d!2313324 (not c!1394026)) b!7552860))

(assert (= (and d!2313324 res!3027394) b!7552861))

(assert (= (and b!7552861 res!3027393) b!7552862))

(declare-fun m!8119516 () Bool)

(assert (=> b!7552860 m!8119516))

(declare-fun m!8119518 () Bool)

(assert (=> d!2313324 m!8119518))

(declare-fun m!8119520 () Bool)

(assert (=> d!2313324 m!8119520))

(assert (=> d!2313324 m!8119456))

(declare-fun m!8119522 () Bool)

(assert (=> b!7552861 m!8119522))

(assert (=> b!7552861 m!8119236))

(assert (=> b!7552861 m!8119460))

(assert (=> b!7552333 d!2313324))

(declare-fun b!7552863 () Bool)

(declare-fun e!4498875 () List!72836)

(assert (=> b!7552863 (= e!4498875 lt!2647389)))

(declare-fun b!7552864 () Bool)

(assert (=> b!7552864 (= e!4498875 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) lt!2647389)))))

(declare-fun d!2313326 () Bool)

(declare-fun e!4498876 () Bool)

(assert (=> d!2313326 e!4498876))

(declare-fun res!3027396 () Bool)

(assert (=> d!2313326 (=> (not res!3027396) (not e!4498876))))

(declare-fun lt!2647506 () List!72836)

(assert (=> d!2313326 (= res!3027396 (= (content!15394 lt!2647506) ((_ map or) (content!15394 testedP!423) (content!15394 lt!2647389))))))

(assert (=> d!2313326 (= lt!2647506 e!4498875)))

(declare-fun c!1394027 () Bool)

(assert (=> d!2313326 (= c!1394027 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313326 (= (++!17469 testedP!423 lt!2647389) lt!2647506)))

(declare-fun b!7552866 () Bool)

(assert (=> b!7552866 (= e!4498876 (or (not (= lt!2647389 Nil!72712)) (= lt!2647506 testedP!423)))))

(declare-fun b!7552865 () Bool)

(declare-fun res!3027395 () Bool)

(assert (=> b!7552865 (=> (not res!3027395) (not e!4498876))))

(assert (=> b!7552865 (= res!3027395 (= (size!42449 lt!2647506) (+ (size!42449 testedP!423) (size!42449 lt!2647389))))))

(assert (= (and d!2313326 c!1394027) b!7552863))

(assert (= (and d!2313326 (not c!1394027)) b!7552864))

(assert (= (and d!2313326 res!3027396) b!7552865))

(assert (= (and b!7552865 res!3027395) b!7552866))

(declare-fun m!8119524 () Bool)

(assert (=> b!7552864 m!8119524))

(declare-fun m!8119526 () Bool)

(assert (=> d!2313326 m!8119526))

(assert (=> d!2313326 m!8119334))

(declare-fun m!8119528 () Bool)

(assert (=> d!2313326 m!8119528))

(declare-fun m!8119530 () Bool)

(assert (=> b!7552865 m!8119530))

(assert (=> b!7552865 m!8118996))

(declare-fun m!8119532 () Bool)

(assert (=> b!7552865 m!8119532))

(assert (=> b!7552335 d!2313326))

(declare-fun b!7552867 () Bool)

(declare-fun e!4498877 () List!72836)

(assert (=> b!7552867 (= e!4498877 lt!2647374)))

(declare-fun b!7552868 () Bool)

(assert (=> b!7552868 (= e!4498877 (Cons!72712 (h!79160 lt!2647376) (++!17469 (t!387559 lt!2647376) lt!2647374)))))

(declare-fun d!2313328 () Bool)

(declare-fun e!4498878 () Bool)

(assert (=> d!2313328 e!4498878))

(declare-fun res!3027398 () Bool)

(assert (=> d!2313328 (=> (not res!3027398) (not e!4498878))))

(declare-fun lt!2647507 () List!72836)

(assert (=> d!2313328 (= res!3027398 (= (content!15394 lt!2647507) ((_ map or) (content!15394 lt!2647376) (content!15394 lt!2647374))))))

(assert (=> d!2313328 (= lt!2647507 e!4498877)))

(declare-fun c!1394028 () Bool)

(assert (=> d!2313328 (= c!1394028 ((_ is Nil!72712) lt!2647376))))

(assert (=> d!2313328 (= (++!17469 lt!2647376 lt!2647374) lt!2647507)))

(declare-fun b!7552870 () Bool)

(assert (=> b!7552870 (= e!4498878 (or (not (= lt!2647374 Nil!72712)) (= lt!2647507 lt!2647376)))))

(declare-fun b!7552869 () Bool)

(declare-fun res!3027397 () Bool)

(assert (=> b!7552869 (=> (not res!3027397) (not e!4498878))))

(assert (=> b!7552869 (= res!3027397 (= (size!42449 lt!2647507) (+ (size!42449 lt!2647376) (size!42449 lt!2647374))))))

(assert (= (and d!2313328 c!1394028) b!7552867))

(assert (= (and d!2313328 (not c!1394028)) b!7552868))

(assert (= (and d!2313328 res!3027398) b!7552869))

(assert (= (and b!7552869 res!3027397) b!7552870))

(declare-fun m!8119534 () Bool)

(assert (=> b!7552868 m!8119534))

(declare-fun m!8119536 () Bool)

(assert (=> d!2313328 m!8119536))

(assert (=> d!2313328 m!8119510))

(assert (=> d!2313328 m!8119324))

(declare-fun m!8119538 () Bool)

(assert (=> b!7552869 m!8119538))

(assert (=> b!7552869 m!8119514))

(assert (=> b!7552869 m!8119328))

(assert (=> b!7552335 d!2313328))

(declare-fun d!2313330 () Bool)

(assert (=> d!2313330 (= (++!17469 (++!17469 testedP!423 lt!2647376) lt!2647374) (++!17469 testedP!423 (++!17469 lt!2647376 lt!2647374)))))

(declare-fun lt!2647508 () Unit!166844)

(assert (=> d!2313330 (= lt!2647508 (choose!58465 testedP!423 lt!2647376 lt!2647374))))

(assert (=> d!2313330 (= (lemmaConcatAssociativity!3108 testedP!423 lt!2647376 lt!2647374) lt!2647508)))

(declare-fun bs!1940242 () Bool)

(assert (= bs!1940242 d!2313330))

(assert (=> bs!1940242 m!8119012))

(declare-fun m!8119540 () Bool)

(assert (=> bs!1940242 m!8119540))

(assert (=> bs!1940242 m!8119028))

(declare-fun m!8119542 () Bool)

(assert (=> bs!1940242 m!8119542))

(assert (=> bs!1940242 m!8119012))

(declare-fun m!8119544 () Bool)

(assert (=> bs!1940242 m!8119544))

(assert (=> bs!1940242 m!8119028))

(assert (=> b!7552335 d!2313330))

(declare-fun b!7552884 () Bool)

(declare-fun e!4498881 () Bool)

(declare-fun tp!2197211 () Bool)

(declare-fun tp!2197209 () Bool)

(assert (=> b!7552884 (= e!4498881 (and tp!2197211 tp!2197209))))

(declare-fun b!7552882 () Bool)

(declare-fun tp!2197208 () Bool)

(declare-fun tp!2197210 () Bool)

(assert (=> b!7552882 (= e!4498881 (and tp!2197208 tp!2197210))))

(declare-fun b!7552881 () Bool)

(assert (=> b!7552881 (= e!4498881 tp_is_empty!50261)))

(declare-fun b!7552883 () Bool)

(declare-fun tp!2197207 () Bool)

(assert (=> b!7552883 (= e!4498881 tp!2197207)))

(assert (=> b!7552342 (= tp!2197128 e!4498881)))

(assert (= (and b!7552342 ((_ is ElementMatch!19953) (regOne!40418 baseR!101))) b!7552881))

(assert (= (and b!7552342 ((_ is Concat!28798) (regOne!40418 baseR!101))) b!7552882))

(assert (= (and b!7552342 ((_ is Star!19953) (regOne!40418 baseR!101))) b!7552883))

(assert (= (and b!7552342 ((_ is Union!19953) (regOne!40418 baseR!101))) b!7552884))

(declare-fun b!7552888 () Bool)

(declare-fun e!4498882 () Bool)

(declare-fun tp!2197216 () Bool)

(declare-fun tp!2197214 () Bool)

(assert (=> b!7552888 (= e!4498882 (and tp!2197216 tp!2197214))))

(declare-fun b!7552886 () Bool)

(declare-fun tp!2197213 () Bool)

(declare-fun tp!2197215 () Bool)

(assert (=> b!7552886 (= e!4498882 (and tp!2197213 tp!2197215))))

(declare-fun b!7552885 () Bool)

(assert (=> b!7552885 (= e!4498882 tp_is_empty!50261)))

(declare-fun b!7552887 () Bool)

(declare-fun tp!2197212 () Bool)

(assert (=> b!7552887 (= e!4498882 tp!2197212)))

(assert (=> b!7552342 (= tp!2197119 e!4498882)))

(assert (= (and b!7552342 ((_ is ElementMatch!19953) (regTwo!40418 baseR!101))) b!7552885))

(assert (= (and b!7552342 ((_ is Concat!28798) (regTwo!40418 baseR!101))) b!7552886))

(assert (= (and b!7552342 ((_ is Star!19953) (regTwo!40418 baseR!101))) b!7552887))

(assert (= (and b!7552342 ((_ is Union!19953) (regTwo!40418 baseR!101))) b!7552888))

(declare-fun b!7552892 () Bool)

(declare-fun e!4498883 () Bool)

(declare-fun tp!2197221 () Bool)

(declare-fun tp!2197219 () Bool)

(assert (=> b!7552892 (= e!4498883 (and tp!2197221 tp!2197219))))

(declare-fun b!7552890 () Bool)

(declare-fun tp!2197218 () Bool)

(declare-fun tp!2197220 () Bool)

(assert (=> b!7552890 (= e!4498883 (and tp!2197218 tp!2197220))))

(declare-fun b!7552889 () Bool)

(assert (=> b!7552889 (= e!4498883 tp_is_empty!50261)))

(declare-fun b!7552891 () Bool)

(declare-fun tp!2197217 () Bool)

(assert (=> b!7552891 (= e!4498883 tp!2197217)))

(assert (=> b!7552347 (= tp!2197120 e!4498883)))

(assert (= (and b!7552347 ((_ is ElementMatch!19953) (reg!20282 r!24333))) b!7552889))

(assert (= (and b!7552347 ((_ is Concat!28798) (reg!20282 r!24333))) b!7552890))

(assert (= (and b!7552347 ((_ is Star!19953) (reg!20282 r!24333))) b!7552891))

(assert (= (and b!7552347 ((_ is Union!19953) (reg!20282 r!24333))) b!7552892))

(declare-fun b!7552897 () Bool)

(declare-fun e!4498886 () Bool)

(declare-fun tp!2197224 () Bool)

(assert (=> b!7552897 (= e!4498886 (and tp_is_empty!50261 tp!2197224))))

(assert (=> b!7552341 (= tp!2197123 e!4498886)))

(assert (= (and b!7552341 ((_ is Cons!72712) (t!387559 knownP!30))) b!7552897))

(declare-fun b!7552901 () Bool)

(declare-fun e!4498887 () Bool)

(declare-fun tp!2197229 () Bool)

(declare-fun tp!2197227 () Bool)

(assert (=> b!7552901 (= e!4498887 (and tp!2197229 tp!2197227))))

(declare-fun b!7552899 () Bool)

(declare-fun tp!2197226 () Bool)

(declare-fun tp!2197228 () Bool)

(assert (=> b!7552899 (= e!4498887 (and tp!2197226 tp!2197228))))

(declare-fun b!7552898 () Bool)

(assert (=> b!7552898 (= e!4498887 tp_is_empty!50261)))

(declare-fun b!7552900 () Bool)

(declare-fun tp!2197225 () Bool)

(assert (=> b!7552900 (= e!4498887 tp!2197225)))

(assert (=> b!7552354 (= tp!2197124 e!4498887)))

(assert (= (and b!7552354 ((_ is ElementMatch!19953) (regOne!40418 r!24333))) b!7552898))

(assert (= (and b!7552354 ((_ is Concat!28798) (regOne!40418 r!24333))) b!7552899))

(assert (= (and b!7552354 ((_ is Star!19953) (regOne!40418 r!24333))) b!7552900))

(assert (= (and b!7552354 ((_ is Union!19953) (regOne!40418 r!24333))) b!7552901))

(declare-fun b!7552905 () Bool)

(declare-fun e!4498888 () Bool)

(declare-fun tp!2197234 () Bool)

(declare-fun tp!2197232 () Bool)

(assert (=> b!7552905 (= e!4498888 (and tp!2197234 tp!2197232))))

(declare-fun b!7552903 () Bool)

(declare-fun tp!2197231 () Bool)

(declare-fun tp!2197233 () Bool)

(assert (=> b!7552903 (= e!4498888 (and tp!2197231 tp!2197233))))

(declare-fun b!7552902 () Bool)

(assert (=> b!7552902 (= e!4498888 tp_is_empty!50261)))

(declare-fun b!7552904 () Bool)

(declare-fun tp!2197230 () Bool)

(assert (=> b!7552904 (= e!4498888 tp!2197230)))

(assert (=> b!7552354 (= tp!2197127 e!4498888)))

(assert (= (and b!7552354 ((_ is ElementMatch!19953) (regTwo!40418 r!24333))) b!7552902))

(assert (= (and b!7552354 ((_ is Concat!28798) (regTwo!40418 r!24333))) b!7552903))

(assert (= (and b!7552354 ((_ is Star!19953) (regTwo!40418 r!24333))) b!7552904))

(assert (= (and b!7552354 ((_ is Union!19953) (regTwo!40418 r!24333))) b!7552905))

(declare-fun b!7552909 () Bool)

(declare-fun e!4498889 () Bool)

(declare-fun tp!2197239 () Bool)

(declare-fun tp!2197237 () Bool)

(assert (=> b!7552909 (= e!4498889 (and tp!2197239 tp!2197237))))

(declare-fun b!7552907 () Bool)

(declare-fun tp!2197236 () Bool)

(declare-fun tp!2197238 () Bool)

(assert (=> b!7552907 (= e!4498889 (and tp!2197236 tp!2197238))))

(declare-fun b!7552906 () Bool)

(assert (=> b!7552906 (= e!4498889 tp_is_empty!50261)))

(declare-fun b!7552908 () Bool)

(declare-fun tp!2197235 () Bool)

(assert (=> b!7552908 (= e!4498889 tp!2197235)))

(assert (=> b!7552348 (= tp!2197130 e!4498889)))

(assert (= (and b!7552348 ((_ is ElementMatch!19953) (regOne!40419 baseR!101))) b!7552906))

(assert (= (and b!7552348 ((_ is Concat!28798) (regOne!40419 baseR!101))) b!7552907))

(assert (= (and b!7552348 ((_ is Star!19953) (regOne!40419 baseR!101))) b!7552908))

(assert (= (and b!7552348 ((_ is Union!19953) (regOne!40419 baseR!101))) b!7552909))

(declare-fun b!7552913 () Bool)

(declare-fun e!4498890 () Bool)

(declare-fun tp!2197244 () Bool)

(declare-fun tp!2197242 () Bool)

(assert (=> b!7552913 (= e!4498890 (and tp!2197244 tp!2197242))))

(declare-fun b!7552911 () Bool)

(declare-fun tp!2197241 () Bool)

(declare-fun tp!2197243 () Bool)

(assert (=> b!7552911 (= e!4498890 (and tp!2197241 tp!2197243))))

(declare-fun b!7552910 () Bool)

(assert (=> b!7552910 (= e!4498890 tp_is_empty!50261)))

(declare-fun b!7552912 () Bool)

(declare-fun tp!2197240 () Bool)

(assert (=> b!7552912 (= e!4498890 tp!2197240)))

(assert (=> b!7552348 (= tp!2197125 e!4498890)))

(assert (= (and b!7552348 ((_ is ElementMatch!19953) (regTwo!40419 baseR!101))) b!7552910))

(assert (= (and b!7552348 ((_ is Concat!28798) (regTwo!40419 baseR!101))) b!7552911))

(assert (= (and b!7552348 ((_ is Star!19953) (regTwo!40419 baseR!101))) b!7552912))

(assert (= (and b!7552348 ((_ is Union!19953) (regTwo!40419 baseR!101))) b!7552913))

(declare-fun b!7552914 () Bool)

(declare-fun e!4498891 () Bool)

(declare-fun tp!2197245 () Bool)

(assert (=> b!7552914 (= e!4498891 (and tp_is_empty!50261 tp!2197245))))

(assert (=> b!7552353 (= tp!2197126 e!4498891)))

(assert (= (and b!7552353 ((_ is Cons!72712) (t!387559 input!7874))) b!7552914))

(declare-fun b!7552915 () Bool)

(declare-fun e!4498892 () Bool)

(declare-fun tp!2197246 () Bool)

(assert (=> b!7552915 (= e!4498892 (and tp_is_empty!50261 tp!2197246))))

(assert (=> b!7552339 (= tp!2197131 e!4498892)))

(assert (= (and b!7552339 ((_ is Cons!72712) (t!387559 testedP!423))) b!7552915))

(declare-fun b!7552919 () Bool)

(declare-fun e!4498893 () Bool)

(declare-fun tp!2197251 () Bool)

(declare-fun tp!2197249 () Bool)

(assert (=> b!7552919 (= e!4498893 (and tp!2197251 tp!2197249))))

(declare-fun b!7552917 () Bool)

(declare-fun tp!2197248 () Bool)

(declare-fun tp!2197250 () Bool)

(assert (=> b!7552917 (= e!4498893 (and tp!2197248 tp!2197250))))

(declare-fun b!7552916 () Bool)

(assert (=> b!7552916 (= e!4498893 tp_is_empty!50261)))

(declare-fun b!7552918 () Bool)

(declare-fun tp!2197247 () Bool)

(assert (=> b!7552918 (= e!4498893 tp!2197247)))

(assert (=> b!7552344 (= tp!2197129 e!4498893)))

(assert (= (and b!7552344 ((_ is ElementMatch!19953) (regOne!40419 r!24333))) b!7552916))

(assert (= (and b!7552344 ((_ is Concat!28798) (regOne!40419 r!24333))) b!7552917))

(assert (= (and b!7552344 ((_ is Star!19953) (regOne!40419 r!24333))) b!7552918))

(assert (= (and b!7552344 ((_ is Union!19953) (regOne!40419 r!24333))) b!7552919))

(declare-fun b!7552923 () Bool)

(declare-fun e!4498894 () Bool)

(declare-fun tp!2197256 () Bool)

(declare-fun tp!2197254 () Bool)

(assert (=> b!7552923 (= e!4498894 (and tp!2197256 tp!2197254))))

(declare-fun b!7552921 () Bool)

(declare-fun tp!2197253 () Bool)

(declare-fun tp!2197255 () Bool)

(assert (=> b!7552921 (= e!4498894 (and tp!2197253 tp!2197255))))

(declare-fun b!7552920 () Bool)

(assert (=> b!7552920 (= e!4498894 tp_is_empty!50261)))

(declare-fun b!7552922 () Bool)

(declare-fun tp!2197252 () Bool)

(assert (=> b!7552922 (= e!4498894 tp!2197252)))

(assert (=> b!7552344 (= tp!2197121 e!4498894)))

(assert (= (and b!7552344 ((_ is ElementMatch!19953) (regTwo!40419 r!24333))) b!7552920))

(assert (= (and b!7552344 ((_ is Concat!28798) (regTwo!40419 r!24333))) b!7552921))

(assert (= (and b!7552344 ((_ is Star!19953) (regTwo!40419 r!24333))) b!7552922))

(assert (= (and b!7552344 ((_ is Union!19953) (regTwo!40419 r!24333))) b!7552923))

(declare-fun b!7552927 () Bool)

(declare-fun e!4498895 () Bool)

(declare-fun tp!2197261 () Bool)

(declare-fun tp!2197259 () Bool)

(assert (=> b!7552927 (= e!4498895 (and tp!2197261 tp!2197259))))

(declare-fun b!7552925 () Bool)

(declare-fun tp!2197258 () Bool)

(declare-fun tp!2197260 () Bool)

(assert (=> b!7552925 (= e!4498895 (and tp!2197258 tp!2197260))))

(declare-fun b!7552924 () Bool)

(assert (=> b!7552924 (= e!4498895 tp_is_empty!50261)))

(declare-fun b!7552926 () Bool)

(declare-fun tp!2197257 () Bool)

(assert (=> b!7552926 (= e!4498895 tp!2197257)))

(assert (=> b!7552346 (= tp!2197122 e!4498895)))

(assert (= (and b!7552346 ((_ is ElementMatch!19953) (reg!20282 baseR!101))) b!7552924))

(assert (= (and b!7552346 ((_ is Concat!28798) (reg!20282 baseR!101))) b!7552925))

(assert (= (and b!7552346 ((_ is Star!19953) (reg!20282 baseR!101))) b!7552926))

(assert (= (and b!7552346 ((_ is Union!19953) (reg!20282 baseR!101))) b!7552927))

(check-sat (not b!7552753) (not d!2313234) (not d!2313322) (not d!2313254) (not d!2313248) (not b!7552891) (not d!2313328) (not b!7552903) (not b!7552884) (not d!2313266) (not d!2313300) (not bm!692455) (not d!2313222) (not b!7552428) (not d!2313324) (not b!7552921) (not b!7552882) (not b!7552625) (not b!7552911) (not b!7552927) (not d!2313258) (not b!7552917) (not b!7552925) (not b!7552860) (not d!2313296) (not d!2313330) (not b!7552914) (not b!7552746) (not b!7552834) (not d!2313182) (not d!2313290) (not d!2313210) (not b!7552749) (not b!7552822) (not b!7552888) (not b!7552448) (not b!7552848) (not b!7552900) (not b!7552674) (not b!7552869) (not b!7552717) (not b!7552919) tp_is_empty!50261 (not b!7552708) (not b!7552861) (not b!7552736) (not b!7552892) (not b!7552750) (not b!7552751) (not b!7552734) (not b!7552739) (not d!2313280) (not d!2313292) (not b!7552742) (not b!7552673) (not b!7552669) (not b!7552564) (not d!2313326) (not d!2313260) (not d!2313268) (not b!7552723) (not d!2313320) (not b!7552899) (not d!2313286) (not b!7552865) (not b!7552905) (not d!2313284) (not b!7552754) (not b!7552740) (not b!7552835) (not b!7552904) (not d!2313312) (not b!7552450) (not b!7552758) (not b!7552897) (not b!7552886) (not d!2313212) (not b!7552555) (not b!7552909) (not b!7552887) (not b!7552471) (not bm!692502) (not bm!692480) (not b!7552849) (not b!7552907) (not b!7552560) (not b!7552926) (not b!7552721) (not b!7552923) (not bm!692497) (not b!7552696) (not b!7552718) (not b!7552745) (not d!2313264) (not b!7552554) (not b!7552719) (not b!7552868) (not b!7552922) (not b!7552730) (not bm!692481) (not b!7552562) (not d!2313294) (not b!7552801) (not b!7552901) (not b!7552757) (not b!7552397) (not b!7552883) (not b!7552710) (not b!7552915) (not b!7552563) (not b!7552656) (not b!7552449) (not d!2313262) (not bm!692463) (not b!7552828) (not b!7552729) (not b!7552549) (not b!7552908) (not b!7552890) (not b!7552864) (not bm!692456) (not b!7552670) (not bm!692503) (not b!7552918) (not b!7552913) (not b!7552551) (not b!7552912) (not b!7552557) (not b!7552722))
(check-sat)
(get-model)

(declare-fun bm!692539 () Bool)

(declare-fun call!692545 () Bool)

(declare-fun call!692546 () Bool)

(assert (=> bm!692539 (= call!692545 call!692546)))

(declare-fun b!7553178 () Bool)

(declare-fun e!4499053 () Bool)

(declare-fun e!4499056 () Bool)

(assert (=> b!7553178 (= e!4499053 e!4499056)))

(declare-fun c!1394109 () Bool)

(assert (=> b!7553178 (= c!1394109 ((_ is Union!19953) lt!2647447))))

(declare-fun b!7553179 () Bool)

(declare-fun res!3027492 () Bool)

(declare-fun e!4499052 () Bool)

(assert (=> b!7553179 (=> (not res!3027492) (not e!4499052))))

(assert (=> b!7553179 (= res!3027492 call!692545)))

(assert (=> b!7553179 (= e!4499056 e!4499052)))

(declare-fun d!2313506 () Bool)

(declare-fun res!3027491 () Bool)

(declare-fun e!4499057 () Bool)

(assert (=> d!2313506 (=> res!3027491 e!4499057)))

(assert (=> d!2313506 (= res!3027491 ((_ is ElementMatch!19953) lt!2647447))))

(assert (=> d!2313506 (= (validRegex!10381 lt!2647447) e!4499057)))

(declare-fun b!7553180 () Bool)

(declare-fun e!4499054 () Bool)

(assert (=> b!7553180 (= e!4499054 call!692546)))

(declare-fun c!1394110 () Bool)

(declare-fun bm!692540 () Bool)

(assert (=> bm!692540 (= call!692546 (validRegex!10381 (ite c!1394110 (reg!20282 lt!2647447) (ite c!1394109 (regOne!40419 lt!2647447) (regOne!40418 lt!2647447)))))))

(declare-fun b!7553181 () Bool)

(declare-fun res!3027490 () Bool)

(declare-fun e!4499051 () Bool)

(assert (=> b!7553181 (=> res!3027490 e!4499051)))

(assert (=> b!7553181 (= res!3027490 (not ((_ is Concat!28798) lt!2647447)))))

(assert (=> b!7553181 (= e!4499056 e!4499051)))

(declare-fun b!7553182 () Bool)

(declare-fun e!4499055 () Bool)

(assert (=> b!7553182 (= e!4499051 e!4499055)))

(declare-fun res!3027493 () Bool)

(assert (=> b!7553182 (=> (not res!3027493) (not e!4499055))))

(assert (=> b!7553182 (= res!3027493 call!692545)))

(declare-fun b!7553183 () Bool)

(assert (=> b!7553183 (= e!4499053 e!4499054)))

(declare-fun res!3027489 () Bool)

(assert (=> b!7553183 (= res!3027489 (not (nullable!8706 (reg!20282 lt!2647447))))))

(assert (=> b!7553183 (=> (not res!3027489) (not e!4499054))))

(declare-fun b!7553184 () Bool)

(declare-fun call!692544 () Bool)

(assert (=> b!7553184 (= e!4499052 call!692544)))

(declare-fun bm!692541 () Bool)

(assert (=> bm!692541 (= call!692544 (validRegex!10381 (ite c!1394109 (regTwo!40419 lt!2647447) (regTwo!40418 lt!2647447))))))

(declare-fun b!7553185 () Bool)

(assert (=> b!7553185 (= e!4499055 call!692544)))

(declare-fun b!7553186 () Bool)

(assert (=> b!7553186 (= e!4499057 e!4499053)))

(assert (=> b!7553186 (= c!1394110 ((_ is Star!19953) lt!2647447))))

(assert (= (and d!2313506 (not res!3027491)) b!7553186))

(assert (= (and b!7553186 c!1394110) b!7553183))

(assert (= (and b!7553186 (not c!1394110)) b!7553178))

(assert (= (and b!7553183 res!3027489) b!7553180))

(assert (= (and b!7553178 c!1394109) b!7553179))

(assert (= (and b!7553178 (not c!1394109)) b!7553181))

(assert (= (and b!7553179 res!3027492) b!7553184))

(assert (= (and b!7553181 (not res!3027490)) b!7553182))

(assert (= (and b!7553182 res!3027493) b!7553185))

(assert (= (or b!7553179 b!7553182) bm!692539))

(assert (= (or b!7553184 b!7553185) bm!692541))

(assert (= (or b!7553180 bm!692539) bm!692540))

(declare-fun m!8119876 () Bool)

(assert (=> bm!692540 m!8119876))

(declare-fun m!8119878 () Bool)

(assert (=> b!7553183 m!8119878))

(declare-fun m!8119880 () Bool)

(assert (=> bm!692541 m!8119880))

(assert (=> d!2313222 d!2313506))

(assert (=> d!2313222 d!2313170))

(declare-fun b!7553191 () Bool)

(declare-fun e!4499060 () List!72836)

(assert (=> b!7553191 (= e!4499060 lt!2647374)))

(declare-fun b!7553192 () Bool)

(assert (=> b!7553192 (= e!4499060 (Cons!72712 (h!79160 (t!387559 lt!2647368)) (++!17469 (t!387559 (t!387559 lt!2647368)) lt!2647374)))))

(declare-fun d!2313514 () Bool)

(declare-fun e!4499061 () Bool)

(assert (=> d!2313514 e!4499061))

(declare-fun res!3027497 () Bool)

(assert (=> d!2313514 (=> (not res!3027497) (not e!4499061))))

(declare-fun lt!2647553 () List!72836)

(assert (=> d!2313514 (= res!3027497 (= (content!15394 lt!2647553) ((_ map or) (content!15394 (t!387559 lt!2647368)) (content!15394 lt!2647374))))))

(assert (=> d!2313514 (= lt!2647553 e!4499060)))

(declare-fun c!1394112 () Bool)

(assert (=> d!2313514 (= c!1394112 ((_ is Nil!72712) (t!387559 lt!2647368)))))

(assert (=> d!2313514 (= (++!17469 (t!387559 lt!2647368) lt!2647374) lt!2647553)))

(declare-fun b!7553194 () Bool)

(assert (=> b!7553194 (= e!4499061 (or (not (= lt!2647374 Nil!72712)) (= lt!2647553 (t!387559 lt!2647368))))))

(declare-fun b!7553193 () Bool)

(declare-fun res!3027496 () Bool)

(assert (=> b!7553193 (=> (not res!3027496) (not e!4499061))))

(assert (=> b!7553193 (= res!3027496 (= (size!42449 lt!2647553) (+ (size!42449 (t!387559 lt!2647368)) (size!42449 lt!2647374))))))

(assert (= (and d!2313514 c!1394112) b!7553191))

(assert (= (and d!2313514 (not c!1394112)) b!7553192))

(assert (= (and d!2313514 res!3027497) b!7553193))

(assert (= (and b!7553193 res!3027496) b!7553194))

(declare-fun m!8119882 () Bool)

(assert (=> b!7553192 m!8119882))

(declare-fun m!8119884 () Bool)

(assert (=> d!2313514 m!8119884))

(declare-fun m!8119886 () Bool)

(assert (=> d!2313514 m!8119886))

(assert (=> d!2313514 m!8119324))

(declare-fun m!8119888 () Bool)

(assert (=> b!7553193 m!8119888))

(declare-fun m!8119890 () Bool)

(assert (=> b!7553193 m!8119890))

(assert (=> b!7553193 m!8119328))

(assert (=> b!7552834 d!2313514))

(assert (=> b!7552719 d!2313318))

(declare-fun d!2313516 () Bool)

(declare-fun lt!2647554 () Int)

(assert (=> d!2313516 (>= lt!2647554 0)))

(declare-fun e!4499062 () Int)

(assert (=> d!2313516 (= lt!2647554 e!4499062)))

(declare-fun c!1394114 () Bool)

(assert (=> d!2313516 (= c!1394114 ((_ is Nil!72712) lt!2647369))))

(assert (=> d!2313516 (= (size!42449 lt!2647369) lt!2647554)))

(declare-fun b!7553195 () Bool)

(assert (=> b!7553195 (= e!4499062 0)))

(declare-fun b!7553196 () Bool)

(assert (=> b!7553196 (= e!4499062 (+ 1 (size!42449 (t!387559 lt!2647369))))))

(assert (= (and d!2313516 c!1394114) b!7553195))

(assert (= (and d!2313516 (not c!1394114)) b!7553196))

(declare-fun m!8119892 () Bool)

(assert (=> b!7553196 m!8119892))

(assert (=> b!7552719 d!2313516))

(declare-fun d!2313518 () Bool)

(declare-fun lt!2647555 () List!72836)

(assert (=> d!2313518 (= (++!17469 (t!387559 testedP!423) lt!2647555) (tail!15085 input!7874))))

(declare-fun e!4499063 () List!72836)

(assert (=> d!2313518 (= lt!2647555 e!4499063)))

(declare-fun c!1394115 () Bool)

(assert (=> d!2313518 (= c!1394115 ((_ is Cons!72712) (t!387559 testedP!423)))))

(assert (=> d!2313518 (>= (size!42449 (tail!15085 input!7874)) (size!42449 (t!387559 testedP!423)))))

(assert (=> d!2313518 (= (getSuffix!3639 (tail!15085 input!7874) (t!387559 testedP!423)) lt!2647555)))

(declare-fun b!7553197 () Bool)

(assert (=> b!7553197 (= e!4499063 (getSuffix!3639 (tail!15085 (tail!15085 input!7874)) (t!387559 (t!387559 testedP!423))))))

(declare-fun b!7553198 () Bool)

(assert (=> b!7553198 (= e!4499063 (tail!15085 input!7874))))

(assert (= (and d!2313518 c!1394115) b!7553197))

(assert (= (and d!2313518 (not c!1394115)) b!7553198))

(declare-fun m!8119894 () Bool)

(assert (=> d!2313518 m!8119894))

(assert (=> d!2313518 m!8119182))

(declare-fun m!8119900 () Bool)

(assert (=> d!2313518 m!8119900))

(assert (=> d!2313518 m!8119492))

(assert (=> b!7553197 m!8119182))

(declare-fun m!8119908 () Bool)

(assert (=> b!7553197 m!8119908))

(assert (=> b!7553197 m!8119908))

(declare-fun m!8119910 () Bool)

(assert (=> b!7553197 m!8119910))

(assert (=> b!7552696 d!2313518))

(declare-fun d!2313524 () Bool)

(assert (=> d!2313524 (= (tail!15085 input!7874) (t!387559 input!7874))))

(assert (=> b!7552696 d!2313524))

(declare-fun b!7553205 () Bool)

(declare-fun e!4499069 () Bool)

(declare-fun e!4499067 () Bool)

(assert (=> b!7553205 (= e!4499069 e!4499067)))

(declare-fun res!3027502 () Bool)

(assert (=> b!7553205 (=> (not res!3027502) (not e!4499067))))

(assert (=> b!7553205 (= res!3027502 (not ((_ is Nil!72712) (tail!15085 knownP!30))))))

(declare-fun b!7553206 () Bool)

(declare-fun res!3027503 () Bool)

(assert (=> b!7553206 (=> (not res!3027503) (not e!4499067))))

(assert (=> b!7553206 (= res!3027503 (= (head!15543 (tail!15085 testedP!423)) (head!15543 (tail!15085 knownP!30))))))

(declare-fun b!7553207 () Bool)

(assert (=> b!7553207 (= e!4499067 (isPrefix!6159 (tail!15085 (tail!15085 testedP!423)) (tail!15085 (tail!15085 knownP!30))))))

(declare-fun d!2313526 () Bool)

(declare-fun e!4499068 () Bool)

(assert (=> d!2313526 e!4499068))

(declare-fun res!3027501 () Bool)

(assert (=> d!2313526 (=> res!3027501 e!4499068)))

(declare-fun lt!2647558 () Bool)

(assert (=> d!2313526 (= res!3027501 (not lt!2647558))))

(assert (=> d!2313526 (= lt!2647558 e!4499069)))

(declare-fun res!3027500 () Bool)

(assert (=> d!2313526 (=> res!3027500 e!4499069)))

(assert (=> d!2313526 (= res!3027500 ((_ is Nil!72712) (tail!15085 testedP!423)))))

(assert (=> d!2313526 (= (isPrefix!6159 (tail!15085 testedP!423) (tail!15085 knownP!30)) lt!2647558)))

(declare-fun b!7553208 () Bool)

(assert (=> b!7553208 (= e!4499068 (>= (size!42449 (tail!15085 knownP!30)) (size!42449 (tail!15085 testedP!423))))))

(assert (= (and d!2313526 (not res!3027500)) b!7553205))

(assert (= (and b!7553205 res!3027502) b!7553206))

(assert (= (and b!7553206 res!3027503) b!7553207))

(assert (= (and d!2313526 (not res!3027501)) b!7553208))

(assert (=> b!7553206 m!8119394))

(declare-fun m!8119922 () Bool)

(assert (=> b!7553206 m!8119922))

(assert (=> b!7553206 m!8119180))

(declare-fun m!8119924 () Bool)

(assert (=> b!7553206 m!8119924))

(assert (=> b!7553207 m!8119394))

(declare-fun m!8119926 () Bool)

(assert (=> b!7553207 m!8119926))

(assert (=> b!7553207 m!8119180))

(declare-fun m!8119930 () Bool)

(assert (=> b!7553207 m!8119930))

(assert (=> b!7553207 m!8119926))

(assert (=> b!7553207 m!8119930))

(declare-fun m!8119940 () Bool)

(assert (=> b!7553207 m!8119940))

(assert (=> b!7553208 m!8119180))

(declare-fun m!8119942 () Bool)

(assert (=> b!7553208 m!8119942))

(assert (=> b!7553208 m!8119394))

(declare-fun m!8119944 () Bool)

(assert (=> b!7553208 m!8119944))

(assert (=> b!7552750 d!2313526))

(declare-fun d!2313534 () Bool)

(assert (=> d!2313534 (= (tail!15085 testedP!423) (t!387559 testedP!423))))

(assert (=> b!7552750 d!2313534))

(declare-fun d!2313536 () Bool)

(assert (=> d!2313536 (= (tail!15085 knownP!30) (t!387559 knownP!30))))

(assert (=> b!7552750 d!2313536))

(declare-fun b!7553229 () Bool)

(declare-fun c!1394126 () Bool)

(assert (=> b!7553229 (= c!1394126 ((_ is Union!19953) (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))

(declare-fun e!4499083 () Regex!19953)

(declare-fun e!4499081 () Regex!19953)

(assert (=> b!7553229 (= e!4499083 e!4499081)))

(declare-fun bm!692543 () Bool)

(declare-fun call!692548 () Regex!19953)

(declare-fun call!692549 () Regex!19953)

(assert (=> bm!692543 (= call!692548 call!692549)))

(declare-fun b!7553230 () Bool)

(declare-fun e!4499082 () Regex!19953)

(assert (=> b!7553230 (= e!4499082 EmptyLang!19953)))

(declare-fun call!692550 () Regex!19953)

(declare-fun e!4499080 () Regex!19953)

(declare-fun b!7553232 () Bool)

(declare-fun call!692551 () Regex!19953)

(assert (=> b!7553232 (= e!4499080 (Union!19953 (Concat!28798 call!692550 (regTwo!40418 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333)))) call!692551))))

(declare-fun b!7553233 () Bool)

(assert (=> b!7553233 (= e!4499082 e!4499083)))

(declare-fun c!1394127 () Bool)

(assert (=> b!7553233 (= c!1394127 ((_ is ElementMatch!19953) (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))

(declare-fun b!7553234 () Bool)

(assert (=> b!7553234 (= e!4499080 (Union!19953 (Concat!28798 call!692550 (regTwo!40418 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333)))) EmptyLang!19953))))

(declare-fun bm!692544 () Bool)

(assert (=> bm!692544 (= call!692550 call!692548)))

(declare-fun b!7553235 () Bool)

(declare-fun e!4499084 () Regex!19953)

(assert (=> b!7553235 (= e!4499081 e!4499084)))

(declare-fun c!1394123 () Bool)

(assert (=> b!7553235 (= c!1394123 ((_ is Star!19953) (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))

(declare-fun b!7553236 () Bool)

(assert (=> b!7553236 (= e!4499081 (Union!19953 call!692549 call!692551))))

(declare-fun b!7553231 () Bool)

(declare-fun c!1394124 () Bool)

(assert (=> b!7553231 (= c!1394124 (nullable!8706 (regOne!40418 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333)))))))

(assert (=> b!7553231 (= e!4499084 e!4499080)))

(declare-fun d!2313538 () Bool)

(declare-fun lt!2647561 () Regex!19953)

(assert (=> d!2313538 (validRegex!10381 lt!2647561)))

(assert (=> d!2313538 (= lt!2647561 e!4499082)))

(declare-fun c!1394125 () Bool)

(assert (=> d!2313538 (= c!1394125 (or ((_ is EmptyExpr!19953) (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333))) ((_ is EmptyLang!19953) (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333)))))))

(assert (=> d!2313538 (validRegex!10381 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333)))))

(assert (=> d!2313538 (= (derivativeStep!5743 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333)) lt!2647388) lt!2647561)))

(declare-fun bm!692545 () Bool)

(assert (=> bm!692545 (= call!692551 (derivativeStep!5743 (ite c!1394126 (regTwo!40419 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333))) (regTwo!40418 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333)))) lt!2647388))))

(declare-fun b!7553237 () Bool)

(assert (=> b!7553237 (= e!4499084 (Concat!28798 call!692548 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))

(declare-fun bm!692546 () Bool)

(assert (=> bm!692546 (= call!692549 (derivativeStep!5743 (ite c!1394126 (regOne!40419 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333))) (ite c!1394123 (reg!20282 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333))) (regOne!40418 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))) lt!2647388))))

(declare-fun b!7553238 () Bool)

(assert (=> b!7553238 (= e!4499083 (ite (= lt!2647388 (c!1393902 (ite c!1393974 (regTwo!40419 r!24333) (regTwo!40418 r!24333)))) EmptyExpr!19953 EmptyLang!19953))))

(assert (= (and d!2313538 c!1394125) b!7553230))

(assert (= (and d!2313538 (not c!1394125)) b!7553233))

(assert (= (and b!7553233 c!1394127) b!7553238))

(assert (= (and b!7553233 (not c!1394127)) b!7553229))

(assert (= (and b!7553229 c!1394126) b!7553236))

(assert (= (and b!7553229 (not c!1394126)) b!7553235))

(assert (= (and b!7553235 c!1394123) b!7553237))

(assert (= (and b!7553235 (not c!1394123)) b!7553231))

(assert (= (and b!7553231 c!1394124) b!7553232))

(assert (= (and b!7553231 (not c!1394124)) b!7553234))

(assert (= (or b!7553232 b!7553234) bm!692544))

(assert (= (or b!7553237 bm!692544) bm!692543))

(assert (= (or b!7553236 b!7553232) bm!692545))

(assert (= (or b!7553236 bm!692543) bm!692546))

(declare-fun m!8119960 () Bool)

(assert (=> b!7553231 m!8119960))

(declare-fun m!8119962 () Bool)

(assert (=> d!2313538 m!8119962))

(declare-fun m!8119964 () Bool)

(assert (=> d!2313538 m!8119964))

(declare-fun m!8119966 () Bool)

(assert (=> bm!692545 m!8119966))

(declare-fun m!8119968 () Bool)

(assert (=> bm!692546 m!8119968))

(assert (=> bm!692480 d!2313538))

(declare-fun d!2313542 () Bool)

(declare-fun lt!2647563 () Int)

(assert (=> d!2313542 (>= lt!2647563 0)))

(declare-fun e!4499090 () Int)

(assert (=> d!2313542 (= lt!2647563 e!4499090)))

(declare-fun c!1394133 () Bool)

(assert (=> d!2313542 (= c!1394133 ((_ is Nil!72712) lt!2647483))))

(assert (=> d!2313542 (= (size!42449 lt!2647483) lt!2647563)))

(declare-fun b!7553249 () Bool)

(assert (=> b!7553249 (= e!4499090 0)))

(declare-fun b!7553250 () Bool)

(assert (=> b!7553250 (= e!4499090 (+ 1 (size!42449 (t!387559 lt!2647483))))))

(assert (= (and d!2313542 c!1394133) b!7553249))

(assert (= (and d!2313542 (not c!1394133)) b!7553250))

(declare-fun m!8119970 () Bool)

(assert (=> b!7553250 m!8119970))

(assert (=> b!7552730 d!2313542))

(assert (=> b!7552730 d!2313316))

(declare-fun d!2313544 () Bool)

(declare-fun lt!2647564 () Int)

(assert (=> d!2313544 (>= lt!2647564 0)))

(declare-fun e!4499091 () Int)

(assert (=> d!2313544 (= lt!2647564 e!4499091)))

(declare-fun c!1394134 () Bool)

(assert (=> d!2313544 (= c!1394134 ((_ is Nil!72712) lt!2647370))))

(assert (=> d!2313544 (= (size!42449 lt!2647370) lt!2647564)))

(declare-fun b!7553251 () Bool)

(assert (=> b!7553251 (= e!4499091 0)))

(declare-fun b!7553252 () Bool)

(assert (=> b!7553252 (= e!4499091 (+ 1 (size!42449 (t!387559 lt!2647370))))))

(assert (= (and d!2313544 c!1394134) b!7553251))

(assert (= (and d!2313544 (not c!1394134)) b!7553252))

(declare-fun m!8119972 () Bool)

(assert (=> b!7553252 m!8119972))

(assert (=> b!7552730 d!2313544))

(declare-fun d!2313546 () Bool)

(declare-fun lt!2647565 () Int)

(assert (=> d!2313546 (>= lt!2647565 0)))

(declare-fun e!4499092 () Int)

(assert (=> d!2313546 (= lt!2647565 e!4499092)))

(declare-fun c!1394135 () Bool)

(assert (=> d!2313546 (= c!1394135 ((_ is Nil!72712) lt!2647507))))

(assert (=> d!2313546 (= (size!42449 lt!2647507) lt!2647565)))

(declare-fun b!7553253 () Bool)

(assert (=> b!7553253 (= e!4499092 0)))

(declare-fun b!7553254 () Bool)

(assert (=> b!7553254 (= e!4499092 (+ 1 (size!42449 (t!387559 lt!2647507))))))

(assert (= (and d!2313546 c!1394135) b!7553253))

(assert (= (and d!2313546 (not c!1394135)) b!7553254))

(declare-fun m!8119974 () Bool)

(assert (=> b!7553254 m!8119974))

(assert (=> b!7552869 d!2313546))

(declare-fun d!2313548 () Bool)

(declare-fun lt!2647566 () Int)

(assert (=> d!2313548 (>= lt!2647566 0)))

(declare-fun e!4499093 () Int)

(assert (=> d!2313548 (= lt!2647566 e!4499093)))

(declare-fun c!1394136 () Bool)

(assert (=> d!2313548 (= c!1394136 ((_ is Nil!72712) lt!2647376))))

(assert (=> d!2313548 (= (size!42449 lt!2647376) lt!2647566)))

(declare-fun b!7553255 () Bool)

(assert (=> b!7553255 (= e!4499093 0)))

(declare-fun b!7553256 () Bool)

(assert (=> b!7553256 (= e!4499093 (+ 1 (size!42449 (t!387559 lt!2647376))))))

(assert (= (and d!2313548 c!1394136) b!7553255))

(assert (= (and d!2313548 (not c!1394136)) b!7553256))

(declare-fun m!8119978 () Bool)

(assert (=> b!7553256 m!8119978))

(assert (=> b!7552869 d!2313548))

(declare-fun d!2313550 () Bool)

(declare-fun lt!2647567 () Int)

(assert (=> d!2313550 (>= lt!2647567 0)))

(declare-fun e!4499094 () Int)

(assert (=> d!2313550 (= lt!2647567 e!4499094)))

(declare-fun c!1394137 () Bool)

(assert (=> d!2313550 (= c!1394137 ((_ is Nil!72712) lt!2647374))))

(assert (=> d!2313550 (= (size!42449 lt!2647374) lt!2647567)))

(declare-fun b!7553257 () Bool)

(assert (=> b!7553257 (= e!4499094 0)))

(declare-fun b!7553258 () Bool)

(assert (=> b!7553258 (= e!4499094 (+ 1 (size!42449 (t!387559 lt!2647374))))))

(assert (= (and d!2313550 c!1394137) b!7553257))

(assert (= (and d!2313550 (not c!1394137)) b!7553258))

(declare-fun m!8119984 () Bool)

(assert (=> b!7553258 m!8119984))

(assert (=> b!7552869 d!2313550))

(declare-fun d!2313554 () Bool)

(declare-fun lt!2647569 () Int)

(assert (=> d!2313554 (>= lt!2647569 0)))

(declare-fun e!4499096 () Int)

(assert (=> d!2313554 (= lt!2647569 e!4499096)))

(declare-fun c!1394139 () Bool)

(assert (=> d!2313554 (= c!1394139 ((_ is Nil!72712) (t!387559 input!7874)))))

(assert (=> d!2313554 (= (size!42449 (t!387559 input!7874)) lt!2647569)))

(declare-fun b!7553261 () Bool)

(assert (=> b!7553261 (= e!4499096 0)))

(declare-fun b!7553262 () Bool)

(assert (=> b!7553262 (= e!4499096 (+ 1 (size!42449 (t!387559 (t!387559 input!7874)))))))

(assert (= (and d!2313554 c!1394139) b!7553261))

(assert (= (and d!2313554 (not c!1394139)) b!7553262))

(declare-fun m!8119988 () Bool)

(assert (=> b!7553262 m!8119988))

(assert (=> b!7552428 d!2313554))

(declare-fun d!2313556 () Bool)

(assert (=> d!2313556 (= (head!15543 knownP!30) (h!79160 knownP!30))))

(assert (=> b!7552560 d!2313556))

(declare-fun d!2313560 () Bool)

(declare-fun lt!2647570 () Int)

(assert (=> d!2313560 (>= lt!2647570 0)))

(declare-fun e!4499097 () Int)

(assert (=> d!2313560 (= lt!2647570 e!4499097)))

(declare-fun c!1394140 () Bool)

(assert (=> d!2313560 (= c!1394140 ((_ is Nil!72712) lt!2647461))))

(assert (=> d!2313560 (= (size!42449 lt!2647461) lt!2647570)))

(declare-fun b!7553263 () Bool)

(assert (=> b!7553263 (= e!4499097 0)))

(declare-fun b!7553264 () Bool)

(assert (=> b!7553264 (= e!4499097 (+ 1 (size!42449 (t!387559 lt!2647461))))))

(assert (= (and d!2313560 c!1394140) b!7553263))

(assert (= (and d!2313560 (not c!1394140)) b!7553264))

(declare-fun m!8119990 () Bool)

(assert (=> b!7553264 m!8119990))

(assert (=> b!7552670 d!2313560))

(assert (=> b!7552670 d!2313318))

(assert (=> b!7552670 d!2313550))

(declare-fun d!2313562 () Bool)

(declare-fun c!1394143 () Bool)

(assert (=> d!2313562 (= c!1394143 ((_ is Nil!72712) lt!2647493))))

(declare-fun e!4499103 () (InoxSet C!40232))

(assert (=> d!2313562 (= (content!15394 lt!2647493) e!4499103)))

(declare-fun b!7553273 () Bool)

(assert (=> b!7553273 (= e!4499103 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553274 () Bool)

(assert (=> b!7553274 (= e!4499103 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647493) true) (content!15394 (t!387559 lt!2647493))))))

(assert (= (and d!2313562 c!1394143) b!7553273))

(assert (= (and d!2313562 (not c!1394143)) b!7553274))

(declare-fun m!8120000 () Bool)

(assert (=> b!7553274 m!8120000))

(declare-fun m!8120002 () Bool)

(assert (=> b!7553274 m!8120002))

(assert (=> d!2313296 d!2313562))

(declare-fun d!2313568 () Bool)

(declare-fun c!1394144 () Bool)

(assert (=> d!2313568 (= c!1394144 ((_ is Nil!72712) lt!2647383))))

(declare-fun e!4499104 () (InoxSet C!40232))

(assert (=> d!2313568 (= (content!15394 lt!2647383) e!4499104)))

(declare-fun b!7553275 () Bool)

(assert (=> b!7553275 (= e!4499104 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553276 () Bool)

(assert (=> b!7553276 (= e!4499104 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647383) true) (content!15394 (t!387559 lt!2647383))))))

(assert (= (and d!2313568 c!1394144) b!7553275))

(assert (= (and d!2313568 (not c!1394144)) b!7553276))

(declare-fun m!8120004 () Bool)

(assert (=> b!7553276 m!8120004))

(declare-fun m!8120006 () Bool)

(assert (=> b!7553276 m!8120006))

(assert (=> d!2313296 d!2313568))

(declare-fun d!2313570 () Bool)

(declare-fun c!1394146 () Bool)

(assert (=> d!2313570 (= c!1394146 ((_ is Nil!72712) lt!2647385))))

(declare-fun e!4499107 () (InoxSet C!40232))

(assert (=> d!2313570 (= (content!15394 lt!2647385) e!4499107)))

(declare-fun b!7553281 () Bool)

(assert (=> b!7553281 (= e!4499107 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553282 () Bool)

(assert (=> b!7553282 (= e!4499107 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647385) true) (content!15394 (t!387559 lt!2647385))))))

(assert (= (and d!2313570 c!1394146) b!7553281))

(assert (= (and d!2313570 (not c!1394146)) b!7553282))

(declare-fun m!8120008 () Bool)

(assert (=> b!7553282 m!8120008))

(declare-fun m!8120010 () Bool)

(assert (=> b!7553282 m!8120010))

(assert (=> d!2313296 d!2313570))

(declare-fun d!2313572 () Bool)

(declare-fun c!1394147 () Bool)

(assert (=> d!2313572 (= c!1394147 ((_ is Nil!72712) lt!2647503))))

(declare-fun e!4499108 () (InoxSet C!40232))

(assert (=> d!2313572 (= (content!15394 lt!2647503) e!4499108)))

(declare-fun b!7553283 () Bool)

(assert (=> b!7553283 (= e!4499108 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553284 () Bool)

(assert (=> b!7553284 (= e!4499108 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647503) true) (content!15394 (t!387559 lt!2647503))))))

(assert (= (and d!2313572 c!1394147) b!7553283))

(assert (= (and d!2313572 (not c!1394147)) b!7553284))

(declare-fun m!8120020 () Bool)

(assert (=> b!7553284 m!8120020))

(declare-fun m!8120022 () Bool)

(assert (=> b!7553284 m!8120022))

(assert (=> d!2313320 d!2313572))

(declare-fun d!2313574 () Bool)

(declare-fun c!1394148 () Bool)

(assert (=> d!2313574 (= c!1394148 ((_ is Nil!72712) lt!2647368))))

(declare-fun e!4499109 () (InoxSet C!40232))

(assert (=> d!2313574 (= (content!15394 lt!2647368) e!4499109)))

(declare-fun b!7553285 () Bool)

(assert (=> b!7553285 (= e!4499109 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553286 () Bool)

(assert (=> b!7553286 (= e!4499109 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647368) true) (content!15394 (t!387559 lt!2647368))))))

(assert (= (and d!2313574 c!1394148) b!7553285))

(assert (= (and d!2313574 (not c!1394148)) b!7553286))

(declare-fun m!8120026 () Bool)

(assert (=> b!7553286 m!8120026))

(assert (=> b!7553286 m!8119886))

(assert (=> d!2313320 d!2313574))

(declare-fun d!2313580 () Bool)

(declare-fun c!1394149 () Bool)

(assert (=> d!2313580 (= c!1394149 ((_ is Nil!72712) lt!2647374))))

(declare-fun e!4499110 () (InoxSet C!40232))

(assert (=> d!2313580 (= (content!15394 lt!2647374) e!4499110)))

(declare-fun b!7553287 () Bool)

(assert (=> b!7553287 (= e!4499110 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553288 () Bool)

(assert (=> b!7553288 (= e!4499110 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647374) true) (content!15394 (t!387559 lt!2647374))))))

(assert (= (and d!2313580 c!1394149) b!7553287))

(assert (= (and d!2313580 (not c!1394149)) b!7553288))

(declare-fun m!8120028 () Bool)

(assert (=> b!7553288 m!8120028))

(declare-fun m!8120030 () Bool)

(assert (=> b!7553288 m!8120030))

(assert (=> d!2313320 d!2313580))

(declare-fun d!2313584 () Bool)

(declare-fun nullableFct!3472 (Regex!19953) Bool)

(assert (=> d!2313584 (= (nullable!8706 (reg!20282 baseR!101)) (nullableFct!3472 (reg!20282 baseR!101)))))

(declare-fun bs!1940254 () Bool)

(assert (= bs!1940254 d!2313584))

(declare-fun m!8120040 () Bool)

(assert (=> bs!1940254 m!8120040))

(assert (=> b!7552801 d!2313584))

(declare-fun b!7553295 () Bool)

(declare-fun e!4499114 () List!72836)

(assert (=> b!7553295 (= e!4499114 lt!2647374)))

(declare-fun b!7553296 () Bool)

(assert (=> b!7553296 (= e!4499114 (Cons!72712 (h!79160 (++!17469 testedP!423 lt!2647376)) (++!17469 (t!387559 (++!17469 testedP!423 lt!2647376)) lt!2647374)))))

(declare-fun d!2313588 () Bool)

(declare-fun e!4499115 () Bool)

(assert (=> d!2313588 e!4499115))

(declare-fun res!3027523 () Bool)

(assert (=> d!2313588 (=> (not res!3027523) (not e!4499115))))

(declare-fun lt!2647575 () List!72836)

(assert (=> d!2313588 (= res!3027523 (= (content!15394 lt!2647575) ((_ map or) (content!15394 (++!17469 testedP!423 lt!2647376)) (content!15394 lt!2647374))))))

(assert (=> d!2313588 (= lt!2647575 e!4499114)))

(declare-fun c!1394152 () Bool)

(assert (=> d!2313588 (= c!1394152 ((_ is Nil!72712) (++!17469 testedP!423 lt!2647376)))))

(assert (=> d!2313588 (= (++!17469 (++!17469 testedP!423 lt!2647376) lt!2647374) lt!2647575)))

(declare-fun b!7553298 () Bool)

(assert (=> b!7553298 (= e!4499115 (or (not (= lt!2647374 Nil!72712)) (= lt!2647575 (++!17469 testedP!423 lt!2647376))))))

(declare-fun b!7553297 () Bool)

(declare-fun res!3027522 () Bool)

(assert (=> b!7553297 (=> (not res!3027522) (not e!4499115))))

(assert (=> b!7553297 (= res!3027522 (= (size!42449 lt!2647575) (+ (size!42449 (++!17469 testedP!423 lt!2647376)) (size!42449 lt!2647374))))))

(assert (= (and d!2313588 c!1394152) b!7553295))

(assert (= (and d!2313588 (not c!1394152)) b!7553296))

(assert (= (and d!2313588 res!3027523) b!7553297))

(assert (= (and b!7553297 res!3027522) b!7553298))

(declare-fun m!8120048 () Bool)

(assert (=> b!7553296 m!8120048))

(declare-fun m!8120050 () Bool)

(assert (=> d!2313588 m!8120050))

(assert (=> d!2313588 m!8119012))

(declare-fun m!8120052 () Bool)

(assert (=> d!2313588 m!8120052))

(assert (=> d!2313588 m!8119324))

(declare-fun m!8120054 () Bool)

(assert (=> b!7553297 m!8120054))

(assert (=> b!7553297 m!8119012))

(declare-fun m!8120056 () Bool)

(assert (=> b!7553297 m!8120056))

(assert (=> b!7553297 m!8119328))

(assert (=> d!2313330 d!2313588))

(assert (=> d!2313330 d!2313328))

(assert (=> d!2313330 d!2313322))

(declare-fun b!7553309 () Bool)

(declare-fun e!4499121 () List!72836)

(assert (=> b!7553309 (= e!4499121 (++!17469 lt!2647376 lt!2647374))))

(declare-fun b!7553310 () Bool)

(assert (=> b!7553310 (= e!4499121 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) (++!17469 lt!2647376 lt!2647374))))))

(declare-fun d!2313592 () Bool)

(declare-fun e!4499122 () Bool)

(assert (=> d!2313592 e!4499122))

(declare-fun res!3027525 () Bool)

(assert (=> d!2313592 (=> (not res!3027525) (not e!4499122))))

(declare-fun lt!2647577 () List!72836)

(assert (=> d!2313592 (= res!3027525 (= (content!15394 lt!2647577) ((_ map or) (content!15394 testedP!423) (content!15394 (++!17469 lt!2647376 lt!2647374)))))))

(assert (=> d!2313592 (= lt!2647577 e!4499121)))

(declare-fun c!1394158 () Bool)

(assert (=> d!2313592 (= c!1394158 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313592 (= (++!17469 testedP!423 (++!17469 lt!2647376 lt!2647374)) lt!2647577)))

(declare-fun b!7553312 () Bool)

(assert (=> b!7553312 (= e!4499122 (or (not (= (++!17469 lt!2647376 lt!2647374) Nil!72712)) (= lt!2647577 testedP!423)))))

(declare-fun b!7553311 () Bool)

(declare-fun res!3027524 () Bool)

(assert (=> b!7553311 (=> (not res!3027524) (not e!4499122))))

(assert (=> b!7553311 (= res!3027524 (= (size!42449 lt!2647577) (+ (size!42449 testedP!423) (size!42449 (++!17469 lt!2647376 lt!2647374)))))))

(assert (= (and d!2313592 c!1394158) b!7553309))

(assert (= (and d!2313592 (not c!1394158)) b!7553310))

(assert (= (and d!2313592 res!3027525) b!7553311))

(assert (= (and b!7553311 res!3027524) b!7553312))

(assert (=> b!7553310 m!8119028))

(declare-fun m!8120066 () Bool)

(assert (=> b!7553310 m!8120066))

(declare-fun m!8120068 () Bool)

(assert (=> d!2313592 m!8120068))

(assert (=> d!2313592 m!8119334))

(assert (=> d!2313592 m!8119028))

(declare-fun m!8120070 () Bool)

(assert (=> d!2313592 m!8120070))

(declare-fun m!8120072 () Bool)

(assert (=> b!7553311 m!8120072))

(assert (=> b!7553311 m!8118996))

(assert (=> b!7553311 m!8119028))

(declare-fun m!8120074 () Bool)

(assert (=> b!7553311 m!8120074))

(assert (=> d!2313330 d!2313592))

(declare-fun d!2313596 () Bool)

(assert (=> d!2313596 (= (++!17469 (++!17469 testedP!423 lt!2647376) lt!2647374) (++!17469 testedP!423 (++!17469 lt!2647376 lt!2647374)))))

(assert (=> d!2313596 true))

(declare-fun _$52!2477 () Unit!166844)

(assert (=> d!2313596 (= (choose!58465 testedP!423 lt!2647376 lt!2647374) _$52!2477)))

(declare-fun bs!1940255 () Bool)

(assert (= bs!1940255 d!2313596))

(assert (=> bs!1940255 m!8119012))

(assert (=> bs!1940255 m!8119012))

(assert (=> bs!1940255 m!8119544))

(assert (=> bs!1940255 m!8119028))

(assert (=> bs!1940255 m!8119028))

(assert (=> bs!1940255 m!8119542))

(assert (=> d!2313330 d!2313596))

(declare-fun b!7553331 () Bool)

(declare-fun e!4499132 () List!72836)

(assert (=> b!7553331 (= e!4499132 lt!2647454)))

(declare-fun b!7553332 () Bool)

(assert (=> b!7553332 (= e!4499132 (Cons!72712 (h!79160 lt!2647369) (++!17469 (t!387559 lt!2647369) lt!2647454)))))

(declare-fun d!2313608 () Bool)

(declare-fun e!4499133 () Bool)

(assert (=> d!2313608 e!4499133))

(declare-fun res!3027533 () Bool)

(assert (=> d!2313608 (=> (not res!3027533) (not e!4499133))))

(declare-fun lt!2647582 () List!72836)

(assert (=> d!2313608 (= res!3027533 (= (content!15394 lt!2647582) ((_ map or) (content!15394 lt!2647369) (content!15394 lt!2647454))))))

(assert (=> d!2313608 (= lt!2647582 e!4499132)))

(declare-fun c!1394165 () Bool)

(assert (=> d!2313608 (= c!1394165 ((_ is Nil!72712) lt!2647369))))

(assert (=> d!2313608 (= (++!17469 lt!2647369 lt!2647454) lt!2647582)))

(declare-fun b!7553334 () Bool)

(assert (=> b!7553334 (= e!4499133 (or (not (= lt!2647454 Nil!72712)) (= lt!2647582 lt!2647369)))))

(declare-fun b!7553333 () Bool)

(declare-fun res!3027532 () Bool)

(assert (=> b!7553333 (=> (not res!3027532) (not e!4499133))))

(assert (=> b!7553333 (= res!3027532 (= (size!42449 lt!2647582) (+ (size!42449 lt!2647369) (size!42449 lt!2647454))))))

(assert (= (and d!2313608 c!1394165) b!7553331))

(assert (= (and d!2313608 (not c!1394165)) b!7553332))

(assert (= (and d!2313608 res!3027533) b!7553333))

(assert (= (and b!7553333 res!3027532) b!7553334))

(declare-fun m!8120106 () Bool)

(assert (=> b!7553332 m!8120106))

(declare-fun m!8120108 () Bool)

(assert (=> d!2313608 m!8120108))

(assert (=> d!2313608 m!8119520))

(declare-fun m!8120110 () Bool)

(assert (=> d!2313608 m!8120110))

(declare-fun m!8120112 () Bool)

(assert (=> b!7553333 m!8120112))

(assert (=> b!7553333 m!8119236))

(declare-fun m!8120116 () Bool)

(assert (=> b!7553333 m!8120116))

(assert (=> d!2313234 d!2313608))

(assert (=> d!2313234 d!2313318))

(assert (=> d!2313234 d!2313516))

(declare-fun d!2313612 () Bool)

(assert (=> d!2313612 (= lt!2647378 lt!2647376)))

(assert (=> d!2313612 true))

(declare-fun _$63!1380 () Unit!166844)

(assert (=> d!2313612 (= (choose!58458 testedP!423 lt!2647378 testedP!423 lt!2647376 knownP!30) _$63!1380)))

(assert (=> d!2313292 d!2313612))

(assert (=> d!2313292 d!2313288))

(declare-fun b!7553353 () Bool)

(declare-fun e!4499143 () List!72836)

(assert (=> b!7553353 (= e!4499143 lt!2647471)))

(declare-fun b!7553354 () Bool)

(assert (=> b!7553354 (= e!4499143 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) lt!2647471)))))

(declare-fun d!2313616 () Bool)

(declare-fun e!4499144 () Bool)

(assert (=> d!2313616 e!4499144))

(declare-fun res!3027545 () Bool)

(assert (=> d!2313616 (=> (not res!3027545) (not e!4499144))))

(declare-fun lt!2647585 () List!72836)

(assert (=> d!2313616 (= res!3027545 (= (content!15394 lt!2647585) ((_ map or) (content!15394 testedP!423) (content!15394 lt!2647471))))))

(assert (=> d!2313616 (= lt!2647585 e!4499143)))

(declare-fun c!1394170 () Bool)

(assert (=> d!2313616 (= c!1394170 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313616 (= (++!17469 testedP!423 lt!2647471) lt!2647585)))

(declare-fun b!7553356 () Bool)

(assert (=> b!7553356 (= e!4499144 (or (not (= lt!2647471 Nil!72712)) (= lt!2647585 testedP!423)))))

(declare-fun b!7553355 () Bool)

(declare-fun res!3027544 () Bool)

(assert (=> b!7553355 (=> (not res!3027544) (not e!4499144))))

(assert (=> b!7553355 (= res!3027544 (= (size!42449 lt!2647585) (+ (size!42449 testedP!423) (size!42449 lt!2647471))))))

(assert (= (and d!2313616 c!1394170) b!7553353))

(assert (= (and d!2313616 (not c!1394170)) b!7553354))

(assert (= (and d!2313616 res!3027545) b!7553355))

(assert (= (and b!7553355 res!3027544) b!7553356))

(declare-fun m!8120122 () Bool)

(assert (=> b!7553354 m!8120122))

(declare-fun m!8120124 () Bool)

(assert (=> d!2313616 m!8120124))

(assert (=> d!2313616 m!8119334))

(declare-fun m!8120126 () Bool)

(assert (=> d!2313616 m!8120126))

(declare-fun m!8120128 () Bool)

(assert (=> b!7553355 m!8120128))

(assert (=> b!7553355 m!8118996))

(declare-fun m!8120130 () Bool)

(assert (=> b!7553355 m!8120130))

(assert (=> d!2313262 d!2313616))

(assert (=> d!2313262 d!2313192))

(assert (=> d!2313262 d!2313316))

(declare-fun bm!692556 () Bool)

(declare-fun call!692562 () Bool)

(declare-fun call!692563 () Bool)

(assert (=> bm!692556 (= call!692562 call!692563)))

(declare-fun b!7553357 () Bool)

(declare-fun e!4499147 () Bool)

(declare-fun e!4499150 () Bool)

(assert (=> b!7553357 (= e!4499147 e!4499150)))

(declare-fun c!1394171 () Bool)

(assert (=> b!7553357 (= c!1394171 ((_ is Union!19953) (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))))))

(declare-fun b!7553358 () Bool)

(declare-fun res!3027549 () Bool)

(declare-fun e!4499146 () Bool)

(assert (=> b!7553358 (=> (not res!3027549) (not e!4499146))))

(assert (=> b!7553358 (= res!3027549 call!692562)))

(assert (=> b!7553358 (= e!4499150 e!4499146)))

(declare-fun d!2313618 () Bool)

(declare-fun res!3027548 () Bool)

(declare-fun e!4499151 () Bool)

(assert (=> d!2313618 (=> res!3027548 e!4499151)))

(assert (=> d!2313618 (= res!3027548 ((_ is ElementMatch!19953) (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))))))

(assert (=> d!2313618 (= (validRegex!10381 (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))) e!4499151)))

(declare-fun b!7553359 () Bool)

(declare-fun e!4499148 () Bool)

(assert (=> b!7553359 (= e!4499148 call!692563)))

(declare-fun c!1394172 () Bool)

(declare-fun bm!692557 () Bool)

(assert (=> bm!692557 (= call!692563 (validRegex!10381 (ite c!1394172 (reg!20282 (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))) (ite c!1394171 (regOne!40419 (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))) (regOne!40418 (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101)))))))))

(declare-fun b!7553360 () Bool)

(declare-fun res!3027547 () Bool)

(declare-fun e!4499145 () Bool)

(assert (=> b!7553360 (=> res!3027547 e!4499145)))

(assert (=> b!7553360 (= res!3027547 (not ((_ is Concat!28798) (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101)))))))

(assert (=> b!7553360 (= e!4499150 e!4499145)))

(declare-fun b!7553361 () Bool)

(declare-fun e!4499149 () Bool)

(assert (=> b!7553361 (= e!4499145 e!4499149)))

(declare-fun res!3027550 () Bool)

(assert (=> b!7553361 (=> (not res!3027550) (not e!4499149))))

(assert (=> b!7553361 (= res!3027550 call!692562)))

(declare-fun b!7553362 () Bool)

(assert (=> b!7553362 (= e!4499147 e!4499148)))

(declare-fun res!3027546 () Bool)

(assert (=> b!7553362 (= res!3027546 (not (nullable!8706 (reg!20282 (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))))))))

(assert (=> b!7553362 (=> (not res!3027546) (not e!4499148))))

(declare-fun b!7553363 () Bool)

(declare-fun call!692561 () Bool)

(assert (=> b!7553363 (= e!4499146 call!692561)))

(declare-fun bm!692558 () Bool)

(assert (=> bm!692558 (= call!692561 (validRegex!10381 (ite c!1394171 (regTwo!40419 (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))) (regTwo!40418 (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))))))))

(declare-fun b!7553364 () Bool)

(assert (=> b!7553364 (= e!4499149 call!692561)))

(declare-fun b!7553365 () Bool)

(assert (=> b!7553365 (= e!4499151 e!4499147)))

(assert (=> b!7553365 (= c!1394172 ((_ is Star!19953) (ite c!1394020 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101))))))

(assert (= (and d!2313618 (not res!3027548)) b!7553365))

(assert (= (and b!7553365 c!1394172) b!7553362))

(assert (= (and b!7553365 (not c!1394172)) b!7553357))

(assert (= (and b!7553362 res!3027546) b!7553359))

(assert (= (and b!7553357 c!1394171) b!7553358))

(assert (= (and b!7553357 (not c!1394171)) b!7553360))

(assert (= (and b!7553358 res!3027549) b!7553363))

(assert (= (and b!7553360 (not res!3027547)) b!7553361))

(assert (= (and b!7553361 res!3027550) b!7553364))

(assert (= (or b!7553358 b!7553361) bm!692556))

(assert (= (or b!7553363 b!7553364) bm!692558))

(assert (= (or b!7553359 bm!692556) bm!692557))

(declare-fun m!8120142 () Bool)

(assert (=> bm!692557 m!8120142))

(declare-fun m!8120144 () Bool)

(assert (=> b!7553362 m!8120144))

(declare-fun m!8120146 () Bool)

(assert (=> bm!692558 m!8120146))

(assert (=> bm!692503 d!2313618))

(declare-fun d!2313622 () Bool)

(assert (=> d!2313622 (= (isEmpty!41402 (tail!15085 lt!2647376)) ((_ is Nil!72712) (tail!15085 lt!2647376)))))

(assert (=> b!7552734 d!2313622))

(assert (=> b!7552734 d!2313202))

(assert (=> b!7552448 d!2313556))

(declare-fun d!2313624 () Bool)

(assert (=> d!2313624 (= (head!15543 input!7874) (h!79160 input!7874))))

(assert (=> b!7552448 d!2313624))

(declare-fun d!2313626 () Bool)

(declare-fun lt!2647587 () Int)

(assert (=> d!2313626 (>= lt!2647587 0)))

(declare-fun e!4499157 () Int)

(assert (=> d!2313626 (= lt!2647587 e!4499157)))

(declare-fun c!1394178 () Bool)

(assert (=> d!2313626 (= c!1394178 ((_ is Nil!72712) lt!2647503))))

(assert (=> d!2313626 (= (size!42449 lt!2647503) lt!2647587)))

(declare-fun b!7553376 () Bool)

(assert (=> b!7553376 (= e!4499157 0)))

(declare-fun b!7553377 () Bool)

(assert (=> b!7553377 (= e!4499157 (+ 1 (size!42449 (t!387559 lt!2647503))))))

(assert (= (and d!2313626 c!1394178) b!7553376))

(assert (= (and d!2313626 (not c!1394178)) b!7553377))

(declare-fun m!8120154 () Bool)

(assert (=> b!7553377 m!8120154))

(assert (=> b!7552835 d!2313626))

(declare-fun d!2313630 () Bool)

(declare-fun lt!2647589 () Int)

(assert (=> d!2313630 (>= lt!2647589 0)))

(declare-fun e!4499159 () Int)

(assert (=> d!2313630 (= lt!2647589 e!4499159)))

(declare-fun c!1394180 () Bool)

(assert (=> d!2313630 (= c!1394180 ((_ is Nil!72712) lt!2647368))))

(assert (=> d!2313630 (= (size!42449 lt!2647368) lt!2647589)))

(declare-fun b!7553380 () Bool)

(assert (=> b!7553380 (= e!4499159 0)))

(declare-fun b!7553381 () Bool)

(assert (=> b!7553381 (= e!4499159 (+ 1 (size!42449 (t!387559 lt!2647368))))))

(assert (= (and d!2313630 c!1394180) b!7553380))

(assert (= (and d!2313630 (not c!1394180)) b!7553381))

(assert (=> b!7553381 m!8119890))

(assert (=> b!7552835 d!2313630))

(assert (=> b!7552835 d!2313550))

(declare-fun d!2313632 () Bool)

(declare-fun lt!2647590 () Int)

(assert (=> d!2313632 (>= lt!2647590 0)))

(declare-fun e!4499160 () Int)

(assert (=> d!2313632 (= lt!2647590 e!4499160)))

(declare-fun c!1394181 () Bool)

(assert (=> d!2313632 (= c!1394181 ((_ is Nil!72712) (t!387559 testedP!423)))))

(assert (=> d!2313632 (= (size!42449 (t!387559 testedP!423)) lt!2647590)))

(declare-fun b!7553382 () Bool)

(assert (=> b!7553382 (= e!4499160 0)))

(declare-fun b!7553383 () Bool)

(assert (=> b!7553383 (= e!4499160 (+ 1 (size!42449 (t!387559 (t!387559 testedP!423)))))))

(assert (= (and d!2313632 c!1394181) b!7553382))

(assert (= (and d!2313632 (not c!1394181)) b!7553383))

(declare-fun m!8120160 () Bool)

(assert (=> b!7553383 m!8120160))

(assert (=> b!7552822 d!2313632))

(declare-fun bm!692563 () Bool)

(declare-fun call!692569 () Bool)

(declare-fun call!692570 () Bool)

(assert (=> bm!692563 (= call!692569 call!692570)))

(declare-fun b!7553388 () Bool)

(declare-fun e!4499165 () Bool)

(declare-fun e!4499168 () Bool)

(assert (=> b!7553388 (= e!4499165 e!4499168)))

(declare-fun c!1394183 () Bool)

(assert (=> b!7553388 (= c!1394183 ((_ is Union!19953) lt!2647477))))

(declare-fun b!7553389 () Bool)

(declare-fun res!3027556 () Bool)

(declare-fun e!4499164 () Bool)

(assert (=> b!7553389 (=> (not res!3027556) (not e!4499164))))

(assert (=> b!7553389 (= res!3027556 call!692569)))

(assert (=> b!7553389 (= e!4499168 e!4499164)))

(declare-fun d!2313636 () Bool)

(declare-fun res!3027555 () Bool)

(declare-fun e!4499169 () Bool)

(assert (=> d!2313636 (=> res!3027555 e!4499169)))

(assert (=> d!2313636 (= res!3027555 ((_ is ElementMatch!19953) lt!2647477))))

(assert (=> d!2313636 (= (validRegex!10381 lt!2647477) e!4499169)))

(declare-fun b!7553390 () Bool)

(declare-fun e!4499166 () Bool)

(assert (=> b!7553390 (= e!4499166 call!692570)))

(declare-fun bm!692564 () Bool)

(declare-fun c!1394184 () Bool)

(assert (=> bm!692564 (= call!692570 (validRegex!10381 (ite c!1394184 (reg!20282 lt!2647477) (ite c!1394183 (regOne!40419 lt!2647477) (regOne!40418 lt!2647477)))))))

(declare-fun b!7553391 () Bool)

(declare-fun res!3027554 () Bool)

(declare-fun e!4499163 () Bool)

(assert (=> b!7553391 (=> res!3027554 e!4499163)))

(assert (=> b!7553391 (= res!3027554 (not ((_ is Concat!28798) lt!2647477)))))

(assert (=> b!7553391 (= e!4499168 e!4499163)))

(declare-fun b!7553392 () Bool)

(declare-fun e!4499167 () Bool)

(assert (=> b!7553392 (= e!4499163 e!4499167)))

(declare-fun res!3027557 () Bool)

(assert (=> b!7553392 (=> (not res!3027557) (not e!4499167))))

(assert (=> b!7553392 (= res!3027557 call!692569)))

(declare-fun b!7553393 () Bool)

(assert (=> b!7553393 (= e!4499165 e!4499166)))

(declare-fun res!3027553 () Bool)

(assert (=> b!7553393 (= res!3027553 (not (nullable!8706 (reg!20282 lt!2647477))))))

(assert (=> b!7553393 (=> (not res!3027553) (not e!4499166))))

(declare-fun b!7553394 () Bool)

(declare-fun call!692568 () Bool)

(assert (=> b!7553394 (= e!4499164 call!692568)))

(declare-fun bm!692565 () Bool)

(assert (=> bm!692565 (= call!692568 (validRegex!10381 (ite c!1394183 (regTwo!40419 lt!2647477) (regTwo!40418 lt!2647477))))))

(declare-fun b!7553395 () Bool)

(assert (=> b!7553395 (= e!4499167 call!692568)))

(declare-fun b!7553396 () Bool)

(assert (=> b!7553396 (= e!4499169 e!4499165)))

(assert (=> b!7553396 (= c!1394184 ((_ is Star!19953) lt!2647477))))

(assert (= (and d!2313636 (not res!3027555)) b!7553396))

(assert (= (and b!7553396 c!1394184) b!7553393))

(assert (= (and b!7553396 (not c!1394184)) b!7553388))

(assert (= (and b!7553393 res!3027553) b!7553390))

(assert (= (and b!7553388 c!1394183) b!7553389))

(assert (= (and b!7553388 (not c!1394183)) b!7553391))

(assert (= (and b!7553389 res!3027556) b!7553394))

(assert (= (and b!7553391 (not res!3027554)) b!7553392))

(assert (= (and b!7553392 res!3027557) b!7553395))

(assert (= (or b!7553389 b!7553392) bm!692563))

(assert (= (or b!7553394 b!7553395) bm!692565))

(assert (= (or b!7553390 bm!692563) bm!692564))

(declare-fun m!8120168 () Bool)

(assert (=> bm!692564 m!8120168))

(declare-fun m!8120172 () Bool)

(assert (=> b!7553393 m!8120172))

(declare-fun m!8120176 () Bool)

(assert (=> bm!692565 m!8120176))

(assert (=> d!2313268 d!2313636))

(assert (=> d!2313268 d!2313314))

(assert (=> b!7552751 d!2313318))

(assert (=> b!7552751 d!2313316))

(declare-fun b!7553399 () Bool)

(declare-fun e!4499171 () List!72836)

(assert (=> b!7553399 (= e!4499171 lt!2647389)))

(declare-fun b!7553400 () Bool)

(assert (=> b!7553400 (= e!4499171 (Cons!72712 (h!79160 (t!387559 testedP!423)) (++!17469 (t!387559 (t!387559 testedP!423)) lt!2647389)))))

(declare-fun d!2313640 () Bool)

(declare-fun e!4499172 () Bool)

(assert (=> d!2313640 e!4499172))

(declare-fun res!3027559 () Bool)

(assert (=> d!2313640 (=> (not res!3027559) (not e!4499172))))

(declare-fun lt!2647593 () List!72836)

(assert (=> d!2313640 (= res!3027559 (= (content!15394 lt!2647593) ((_ map or) (content!15394 (t!387559 testedP!423)) (content!15394 lt!2647389))))))

(assert (=> d!2313640 (= lt!2647593 e!4499171)))

(declare-fun c!1394186 () Bool)

(assert (=> d!2313640 (= c!1394186 ((_ is Nil!72712) (t!387559 testedP!423)))))

(assert (=> d!2313640 (= (++!17469 (t!387559 testedP!423) lt!2647389) lt!2647593)))

(declare-fun b!7553402 () Bool)

(assert (=> b!7553402 (= e!4499172 (or (not (= lt!2647389 Nil!72712)) (= lt!2647593 (t!387559 testedP!423))))))

(declare-fun b!7553401 () Bool)

(declare-fun res!3027558 () Bool)

(assert (=> b!7553401 (=> (not res!3027558) (not e!4499172))))

(assert (=> b!7553401 (= res!3027558 (= (size!42449 lt!2647593) (+ (size!42449 (t!387559 testedP!423)) (size!42449 lt!2647389))))))

(assert (= (and d!2313640 c!1394186) b!7553399))

(assert (= (and d!2313640 (not c!1394186)) b!7553400))

(assert (= (and d!2313640 res!3027559) b!7553401))

(assert (= (and b!7553401 res!3027558) b!7553402))

(declare-fun m!8120182 () Bool)

(assert (=> b!7553400 m!8120182))

(declare-fun m!8120184 () Bool)

(assert (=> d!2313640 m!8120184))

(declare-fun m!8120186 () Bool)

(assert (=> d!2313640 m!8120186))

(assert (=> d!2313640 m!8119528))

(declare-fun m!8120188 () Bool)

(assert (=> b!7553401 m!8120188))

(assert (=> b!7553401 m!8119492))

(assert (=> b!7553401 m!8119532))

(assert (=> b!7552864 d!2313640))

(declare-fun d!2313644 () Bool)

(assert (=> d!2313644 (= (nullable!8706 (reg!20282 r!24333)) (nullableFct!3472 (reg!20282 r!24333)))))

(declare-fun bs!1940256 () Bool)

(assert (= bs!1940256 d!2313644))

(declare-fun m!8120190 () Bool)

(assert (=> bs!1940256 m!8120190))

(assert (=> b!7552397 d!2313644))

(declare-fun d!2313646 () Bool)

(assert (=> d!2313646 (= (isEmpty!41402 (tail!15085 knownP!30)) ((_ is Nil!72712) (tail!15085 knownP!30)))))

(assert (=> b!7552557 d!2313646))

(assert (=> b!7552557 d!2313536))

(declare-fun d!2313648 () Bool)

(declare-fun lt!2647595 () Regex!19953)

(assert (=> d!2313648 (validRegex!10381 lt!2647595)))

(declare-fun e!4499178 () Regex!19953)

(assert (=> d!2313648 (= lt!2647595 e!4499178)))

(declare-fun c!1394192 () Bool)

(assert (=> d!2313648 (= c!1394192 ((_ is Cons!72712) (t!387559 lt!2647369)))))

(assert (=> d!2313648 (validRegex!10381 (derivativeStep!5743 baseR!101 (h!79160 lt!2647369)))))

(assert (=> d!2313648 (= (derivative!485 (derivativeStep!5743 baseR!101 (h!79160 lt!2647369)) (t!387559 lt!2647369)) lt!2647595)))

(declare-fun b!7553413 () Bool)

(assert (=> b!7553413 (= e!4499178 (derivative!485 (derivativeStep!5743 (derivativeStep!5743 baseR!101 (h!79160 lt!2647369)) (h!79160 (t!387559 lt!2647369))) (t!387559 (t!387559 lt!2647369))))))

(declare-fun b!7553414 () Bool)

(assert (=> b!7553414 (= e!4499178 (derivativeStep!5743 baseR!101 (h!79160 lt!2647369)))))

(assert (= (and d!2313648 c!1394192) b!7553413))

(assert (= (and d!2313648 (not c!1394192)) b!7553414))

(declare-fun m!8120198 () Bool)

(assert (=> d!2313648 m!8120198))

(assert (=> d!2313648 m!8119376))

(declare-fun m!8120200 () Bool)

(assert (=> d!2313648 m!8120200))

(assert (=> b!7553413 m!8119376))

(declare-fun m!8120202 () Bool)

(assert (=> b!7553413 m!8120202))

(assert (=> b!7553413 m!8120202))

(declare-fun m!8120204 () Bool)

(assert (=> b!7553413 m!8120204))

(assert (=> b!7552710 d!2313648))

(declare-fun b!7553419 () Bool)

(declare-fun c!1394196 () Bool)

(assert (=> b!7553419 (= c!1394196 ((_ is Union!19953) baseR!101))))

(declare-fun e!4499183 () Regex!19953)

(declare-fun e!4499181 () Regex!19953)

(assert (=> b!7553419 (= e!4499183 e!4499181)))

(declare-fun bm!692570 () Bool)

(declare-fun call!692575 () Regex!19953)

(declare-fun call!692576 () Regex!19953)

(assert (=> bm!692570 (= call!692575 call!692576)))

(declare-fun b!7553420 () Bool)

(declare-fun e!4499182 () Regex!19953)

(assert (=> b!7553420 (= e!4499182 EmptyLang!19953)))

(declare-fun call!692577 () Regex!19953)

(declare-fun b!7553422 () Bool)

(declare-fun e!4499179 () Regex!19953)

(declare-fun call!692578 () Regex!19953)

(assert (=> b!7553422 (= e!4499179 (Union!19953 (Concat!28798 call!692577 (regTwo!40418 baseR!101)) call!692578))))

(declare-fun b!7553423 () Bool)

(assert (=> b!7553423 (= e!4499182 e!4499183)))

(declare-fun c!1394197 () Bool)

(assert (=> b!7553423 (= c!1394197 ((_ is ElementMatch!19953) baseR!101))))

(declare-fun b!7553424 () Bool)

(assert (=> b!7553424 (= e!4499179 (Union!19953 (Concat!28798 call!692577 (regTwo!40418 baseR!101)) EmptyLang!19953))))

(declare-fun bm!692571 () Bool)

(assert (=> bm!692571 (= call!692577 call!692575)))

(declare-fun b!7553425 () Bool)

(declare-fun e!4499184 () Regex!19953)

(assert (=> b!7553425 (= e!4499181 e!4499184)))

(declare-fun c!1394193 () Bool)

(assert (=> b!7553425 (= c!1394193 ((_ is Star!19953) baseR!101))))

(declare-fun b!7553426 () Bool)

(assert (=> b!7553426 (= e!4499181 (Union!19953 call!692576 call!692578))))

(declare-fun b!7553421 () Bool)

(declare-fun c!1394194 () Bool)

(assert (=> b!7553421 (= c!1394194 (nullable!8706 (regOne!40418 baseR!101)))))

(assert (=> b!7553421 (= e!4499184 e!4499179)))

(declare-fun d!2313650 () Bool)

(declare-fun lt!2647596 () Regex!19953)

(assert (=> d!2313650 (validRegex!10381 lt!2647596)))

(assert (=> d!2313650 (= lt!2647596 e!4499182)))

(declare-fun c!1394195 () Bool)

(assert (=> d!2313650 (= c!1394195 (or ((_ is EmptyExpr!19953) baseR!101) ((_ is EmptyLang!19953) baseR!101)))))

(assert (=> d!2313650 (validRegex!10381 baseR!101)))

(assert (=> d!2313650 (= (derivativeStep!5743 baseR!101 (h!79160 lt!2647369)) lt!2647596)))

(declare-fun bm!692572 () Bool)

(assert (=> bm!692572 (= call!692578 (derivativeStep!5743 (ite c!1394196 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101)) (h!79160 lt!2647369)))))

(declare-fun b!7553427 () Bool)

(assert (=> b!7553427 (= e!4499184 (Concat!28798 call!692575 baseR!101))))

(declare-fun bm!692573 () Bool)

(assert (=> bm!692573 (= call!692576 (derivativeStep!5743 (ite c!1394196 (regOne!40419 baseR!101) (ite c!1394193 (reg!20282 baseR!101) (regOne!40418 baseR!101))) (h!79160 lt!2647369)))))

(declare-fun b!7553428 () Bool)

(assert (=> b!7553428 (= e!4499183 (ite (= (h!79160 lt!2647369) (c!1393902 baseR!101)) EmptyExpr!19953 EmptyLang!19953))))

(assert (= (and d!2313650 c!1394195) b!7553420))

(assert (= (and d!2313650 (not c!1394195)) b!7553423))

(assert (= (and b!7553423 c!1394197) b!7553428))

(assert (= (and b!7553423 (not c!1394197)) b!7553419))

(assert (= (and b!7553419 c!1394196) b!7553426))

(assert (= (and b!7553419 (not c!1394196)) b!7553425))

(assert (= (and b!7553425 c!1394193) b!7553427))

(assert (= (and b!7553425 (not c!1394193)) b!7553421))

(assert (= (and b!7553421 c!1394194) b!7553422))

(assert (= (and b!7553421 (not c!1394194)) b!7553424))

(assert (= (or b!7553422 b!7553424) bm!692571))

(assert (= (or b!7553427 bm!692571) bm!692570))

(assert (= (or b!7553426 b!7553422) bm!692572))

(assert (= (or b!7553426 bm!692570) bm!692573))

(declare-fun m!8120206 () Bool)

(assert (=> b!7553421 m!8120206))

(declare-fun m!8120208 () Bool)

(assert (=> d!2313650 m!8120208))

(assert (=> d!2313650 m!8118994))

(declare-fun m!8120210 () Bool)

(assert (=> bm!692572 m!8120210))

(declare-fun m!8120212 () Bool)

(assert (=> bm!692573 m!8120212))

(assert (=> b!7552710 d!2313650))

(assert (=> b!7552742 d!2313622))

(assert (=> b!7552742 d!2313202))

(declare-fun bm!692574 () Bool)

(declare-fun call!692580 () Bool)

(declare-fun call!692581 () Bool)

(assert (=> bm!692574 (= call!692580 call!692581)))

(declare-fun b!7553441 () Bool)

(declare-fun e!4499190 () Bool)

(declare-fun e!4499193 () Bool)

(assert (=> b!7553441 (= e!4499190 e!4499193)))

(declare-fun c!1394198 () Bool)

(assert (=> b!7553441 (= c!1394198 ((_ is Union!19953) (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))

(declare-fun b!7553442 () Bool)

(declare-fun res!3027563 () Bool)

(declare-fun e!4499189 () Bool)

(assert (=> b!7553442 (=> (not res!3027563) (not e!4499189))))

(assert (=> b!7553442 (= res!3027563 call!692580)))

(assert (=> b!7553442 (= e!4499193 e!4499189)))

(declare-fun d!2313652 () Bool)

(declare-fun res!3027562 () Bool)

(declare-fun e!4499194 () Bool)

(assert (=> d!2313652 (=> res!3027562 e!4499194)))

(assert (=> d!2313652 (= res!3027562 ((_ is ElementMatch!19953) (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))

(assert (=> d!2313652 (= (validRegex!10381 (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))) e!4499194)))

(declare-fun b!7553443 () Bool)

(declare-fun e!4499191 () Bool)

(assert (=> b!7553443 (= e!4499191 call!692581)))

(declare-fun bm!692575 () Bool)

(declare-fun c!1394199 () Bool)

(assert (=> bm!692575 (= call!692581 (validRegex!10381 (ite c!1394199 (reg!20282 (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))) (ite c!1394198 (regOne!40419 (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))) (regOne!40418 (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333)))))))))

(declare-fun b!7553444 () Bool)

(declare-fun res!3027561 () Bool)

(declare-fun e!4499188 () Bool)

(assert (=> b!7553444 (=> res!3027561 e!4499188)))

(assert (=> b!7553444 (= res!3027561 (not ((_ is Concat!28798) (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333)))))))

(assert (=> b!7553444 (= e!4499193 e!4499188)))

(declare-fun b!7553445 () Bool)

(declare-fun e!4499192 () Bool)

(assert (=> b!7553445 (= e!4499188 e!4499192)))

(declare-fun res!3027564 () Bool)

(assert (=> b!7553445 (=> (not res!3027564) (not e!4499192))))

(assert (=> b!7553445 (= res!3027564 call!692580)))

(declare-fun b!7553446 () Bool)

(assert (=> b!7553446 (= e!4499190 e!4499191)))

(declare-fun res!3027560 () Bool)

(assert (=> b!7553446 (= res!3027560 (not (nullable!8706 (reg!20282 (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))))

(assert (=> b!7553446 (=> (not res!3027560) (not e!4499191))))

(declare-fun b!7553447 () Bool)

(declare-fun call!692579 () Bool)

(assert (=> b!7553447 (= e!4499189 call!692579)))

(declare-fun bm!692576 () Bool)

(assert (=> bm!692576 (= call!692579 (validRegex!10381 (ite c!1394198 (regTwo!40419 (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))) (regTwo!40418 (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))))

(declare-fun b!7553448 () Bool)

(assert (=> b!7553448 (= e!4499192 call!692579)))

(declare-fun b!7553449 () Bool)

(assert (=> b!7553449 (= e!4499194 e!4499190)))

(assert (=> b!7553449 (= c!1394199 ((_ is Star!19953) (ite c!1393911 (regTwo!40419 r!24333) (regTwo!40418 r!24333))))))

(assert (= (and d!2313652 (not res!3027562)) b!7553449))

(assert (= (and b!7553449 c!1394199) b!7553446))

(assert (= (and b!7553449 (not c!1394199)) b!7553441))

(assert (= (and b!7553446 res!3027560) b!7553443))

(assert (= (and b!7553441 c!1394198) b!7553442))

(assert (= (and b!7553441 (not c!1394198)) b!7553444))

(assert (= (and b!7553442 res!3027563) b!7553447))

(assert (= (and b!7553444 (not res!3027561)) b!7553445))

(assert (= (and b!7553445 res!3027564) b!7553448))

(assert (= (or b!7553442 b!7553445) bm!692574))

(assert (= (or b!7553447 b!7553448) bm!692576))

(assert (= (or b!7553443 bm!692574) bm!692575))

(declare-fun m!8120214 () Bool)

(assert (=> bm!692575 m!8120214))

(declare-fun m!8120216 () Bool)

(assert (=> b!7553446 m!8120216))

(declare-fun m!8120218 () Bool)

(assert (=> bm!692576 m!8120218))

(assert (=> bm!692456 d!2313652))

(declare-fun d!2313654 () Bool)

(assert (=> d!2313654 (= (head!15543 lt!2647369) (h!79160 lt!2647369))))

(assert (=> b!7552562 d!2313654))

(assert (=> b!7552562 d!2313624))

(declare-fun d!2313656 () Bool)

(assert (=> d!2313656 (= (head!15543 testedP!423) (h!79160 testedP!423))))

(assert (=> b!7552721 d!2313656))

(assert (=> b!7552721 d!2313624))

(declare-fun b!7553467 () Bool)

(declare-fun e!4499200 () List!72836)

(assert (=> b!7553467 (= e!4499200 lt!2647383)))

(declare-fun b!7553468 () Bool)

(assert (=> b!7553468 (= e!4499200 (Cons!72712 (h!79160 (t!387559 testedP!423)) (++!17469 (t!387559 (t!387559 testedP!423)) lt!2647383)))))

(declare-fun d!2313658 () Bool)

(declare-fun e!4499201 () Bool)

(assert (=> d!2313658 e!4499201))

(declare-fun res!3027566 () Bool)

(assert (=> d!2313658 (=> (not res!3027566) (not e!4499201))))

(declare-fun lt!2647597 () List!72836)

(assert (=> d!2313658 (= res!3027566 (= (content!15394 lt!2647597) ((_ map or) (content!15394 (t!387559 testedP!423)) (content!15394 lt!2647383))))))

(assert (=> d!2313658 (= lt!2647597 e!4499200)))

(declare-fun c!1394200 () Bool)

(assert (=> d!2313658 (= c!1394200 ((_ is Nil!72712) (t!387559 testedP!423)))))

(assert (=> d!2313658 (= (++!17469 (t!387559 testedP!423) lt!2647383) lt!2647597)))

(declare-fun b!7553470 () Bool)

(assert (=> b!7553470 (= e!4499201 (or (not (= lt!2647383 Nil!72712)) (= lt!2647597 (t!387559 testedP!423))))))

(declare-fun b!7553469 () Bool)

(declare-fun res!3027565 () Bool)

(assert (=> b!7553469 (=> (not res!3027565) (not e!4499201))))

(assert (=> b!7553469 (= res!3027565 (= (size!42449 lt!2647597) (+ (size!42449 (t!387559 testedP!423)) (size!42449 lt!2647383))))))

(assert (= (and d!2313658 c!1394200) b!7553467))

(assert (= (and d!2313658 (not c!1394200)) b!7553468))

(assert (= (and d!2313658 res!3027566) b!7553469))

(assert (= (and b!7553469 res!3027565) b!7553470))

(declare-fun m!8120220 () Bool)

(assert (=> b!7553468 m!8120220))

(declare-fun m!8120222 () Bool)

(assert (=> d!2313658 m!8120222))

(assert (=> d!2313658 m!8120186))

(assert (=> d!2313658 m!8119336))

(declare-fun m!8120224 () Bool)

(assert (=> b!7553469 m!8120224))

(assert (=> b!7553469 m!8119492))

(assert (=> b!7553469 m!8119340))

(assert (=> b!7552673 d!2313658))

(declare-fun b!7553480 () Bool)

(declare-fun e!4499207 () Bool)

(declare-fun e!4499205 () Bool)

(assert (=> b!7553480 (= e!4499207 e!4499205)))

(declare-fun res!3027569 () Bool)

(assert (=> b!7553480 (=> (not res!3027569) (not e!4499205))))

(assert (=> b!7553480 (= res!3027569 (not ((_ is Nil!72712) (tail!15085 input!7874))))))

(declare-fun b!7553481 () Bool)

(declare-fun res!3027570 () Bool)

(assert (=> b!7553481 (=> (not res!3027570) (not e!4499205))))

(assert (=> b!7553481 (= res!3027570 (= (head!15543 (tail!15085 lt!2647369)) (head!15543 (tail!15085 input!7874))))))

(declare-fun b!7553482 () Bool)

(assert (=> b!7553482 (= e!4499205 (isPrefix!6159 (tail!15085 (tail!15085 lt!2647369)) (tail!15085 (tail!15085 input!7874))))))

(declare-fun d!2313660 () Bool)

(declare-fun e!4499206 () Bool)

(assert (=> d!2313660 e!4499206))

(declare-fun res!3027568 () Bool)

(assert (=> d!2313660 (=> res!3027568 e!4499206)))

(declare-fun lt!2647598 () Bool)

(assert (=> d!2313660 (= res!3027568 (not lt!2647598))))

(assert (=> d!2313660 (= lt!2647598 e!4499207)))

(declare-fun res!3027567 () Bool)

(assert (=> d!2313660 (=> res!3027567 e!4499207)))

(assert (=> d!2313660 (= res!3027567 ((_ is Nil!72712) (tail!15085 lt!2647369)))))

(assert (=> d!2313660 (= (isPrefix!6159 (tail!15085 lt!2647369) (tail!15085 input!7874)) lt!2647598)))

(declare-fun b!7553483 () Bool)

(assert (=> b!7553483 (= e!4499206 (>= (size!42449 (tail!15085 input!7874)) (size!42449 (tail!15085 lt!2647369))))))

(assert (= (and d!2313660 (not res!3027567)) b!7553480))

(assert (= (and b!7553480 res!3027569) b!7553481))

(assert (= (and b!7553481 res!3027570) b!7553482))

(assert (= (and d!2313660 (not res!3027568)) b!7553483))

(assert (=> b!7553481 m!8119232))

(declare-fun m!8120226 () Bool)

(assert (=> b!7553481 m!8120226))

(assert (=> b!7553481 m!8119182))

(declare-fun m!8120228 () Bool)

(assert (=> b!7553481 m!8120228))

(assert (=> b!7553482 m!8119232))

(declare-fun m!8120230 () Bool)

(assert (=> b!7553482 m!8120230))

(assert (=> b!7553482 m!8119182))

(assert (=> b!7553482 m!8119908))

(assert (=> b!7553482 m!8120230))

(assert (=> b!7553482 m!8119908))

(declare-fun m!8120232 () Bool)

(assert (=> b!7553482 m!8120232))

(assert (=> b!7553483 m!8119182))

(assert (=> b!7553483 m!8119900))

(assert (=> b!7553483 m!8119232))

(declare-fun m!8120234 () Bool)

(assert (=> b!7553483 m!8120234))

(assert (=> b!7552563 d!2313660))

(declare-fun d!2313662 () Bool)

(assert (=> d!2313662 (= (tail!15085 lt!2647369) (t!387559 lt!2647369))))

(assert (=> b!7552563 d!2313662))

(assert (=> b!7552563 d!2313524))

(declare-fun b!7553500 () Bool)

(declare-fun e!4499214 () Bool)

(declare-fun e!4499212 () Bool)

(assert (=> b!7553500 (= e!4499214 e!4499212)))

(declare-fun res!3027573 () Bool)

(assert (=> b!7553500 (=> (not res!3027573) (not e!4499212))))

(assert (=> b!7553500 (= res!3027573 (not ((_ is Nil!72712) (tail!15085 input!7874))))))

(declare-fun b!7553501 () Bool)

(declare-fun res!3027574 () Bool)

(assert (=> b!7553501 (=> (not res!3027574) (not e!4499212))))

(assert (=> b!7553501 (= res!3027574 (= (head!15543 (tail!15085 testedP!423)) (head!15543 (tail!15085 input!7874))))))

(declare-fun b!7553502 () Bool)

(assert (=> b!7553502 (= e!4499212 (isPrefix!6159 (tail!15085 (tail!15085 testedP!423)) (tail!15085 (tail!15085 input!7874))))))

(declare-fun d!2313664 () Bool)

(declare-fun e!4499213 () Bool)

(assert (=> d!2313664 e!4499213))

(declare-fun res!3027572 () Bool)

(assert (=> d!2313664 (=> res!3027572 e!4499213)))

(declare-fun lt!2647599 () Bool)

(assert (=> d!2313664 (= res!3027572 (not lt!2647599))))

(assert (=> d!2313664 (= lt!2647599 e!4499214)))

(declare-fun res!3027571 () Bool)

(assert (=> d!2313664 (=> res!3027571 e!4499214)))

(assert (=> d!2313664 (= res!3027571 ((_ is Nil!72712) (tail!15085 testedP!423)))))

(assert (=> d!2313664 (= (isPrefix!6159 (tail!15085 testedP!423) (tail!15085 input!7874)) lt!2647599)))

(declare-fun b!7553503 () Bool)

(assert (=> b!7553503 (= e!4499213 (>= (size!42449 (tail!15085 input!7874)) (size!42449 (tail!15085 testedP!423))))))

(assert (= (and d!2313664 (not res!3027571)) b!7553500))

(assert (= (and b!7553500 res!3027573) b!7553501))

(assert (= (and b!7553501 res!3027574) b!7553502))

(assert (= (and d!2313664 (not res!3027572)) b!7553503))

(assert (=> b!7553501 m!8119394))

(assert (=> b!7553501 m!8119922))

(assert (=> b!7553501 m!8119182))

(assert (=> b!7553501 m!8120228))

(assert (=> b!7553502 m!8119394))

(assert (=> b!7553502 m!8119926))

(assert (=> b!7553502 m!8119182))

(assert (=> b!7553502 m!8119908))

(assert (=> b!7553502 m!8119926))

(assert (=> b!7553502 m!8119908))

(declare-fun m!8120236 () Bool)

(assert (=> b!7553502 m!8120236))

(assert (=> b!7553503 m!8119182))

(assert (=> b!7553503 m!8119900))

(assert (=> b!7553503 m!8119394))

(assert (=> b!7553503 m!8119944))

(assert (=> b!7552722 d!2313664))

(assert (=> b!7552722 d!2313534))

(assert (=> b!7552722 d!2313524))

(declare-fun b!7553516 () Bool)

(declare-fun e!4499218 () List!72836)

(assert (=> b!7553516 (= e!4499218 lt!2647378)))

(declare-fun b!7553517 () Bool)

(assert (=> b!7553517 (= e!4499218 (Cons!72712 (h!79160 (t!387559 testedP!423)) (++!17469 (t!387559 (t!387559 testedP!423)) lt!2647378)))))

(declare-fun d!2313666 () Bool)

(declare-fun e!4499219 () Bool)

(assert (=> d!2313666 e!4499219))

(declare-fun res!3027576 () Bool)

(assert (=> d!2313666 (=> (not res!3027576) (not e!4499219))))

(declare-fun lt!2647600 () List!72836)

(assert (=> d!2313666 (= res!3027576 (= (content!15394 lt!2647600) ((_ map or) (content!15394 (t!387559 testedP!423)) (content!15394 lt!2647378))))))

(assert (=> d!2313666 (= lt!2647600 e!4499218)))

(declare-fun c!1394201 () Bool)

(assert (=> d!2313666 (= c!1394201 ((_ is Nil!72712) (t!387559 testedP!423)))))

(assert (=> d!2313666 (= (++!17469 (t!387559 testedP!423) lt!2647378) lt!2647600)))

(declare-fun b!7553519 () Bool)

(assert (=> b!7553519 (= e!4499219 (or (not (= lt!2647378 Nil!72712)) (= lt!2647600 (t!387559 testedP!423))))))

(declare-fun b!7553518 () Bool)

(declare-fun res!3027575 () Bool)

(assert (=> b!7553518 (=> (not res!3027575) (not e!4499219))))

(assert (=> b!7553518 (= res!3027575 (= (size!42449 lt!2647600) (+ (size!42449 (t!387559 testedP!423)) (size!42449 lt!2647378))))))

(assert (= (and d!2313666 c!1394201) b!7553516))

(assert (= (and d!2313666 (not c!1394201)) b!7553517))

(assert (= (and d!2313666 res!3027576) b!7553518))

(assert (= (and b!7553518 res!3027575) b!7553519))

(declare-fun m!8120238 () Bool)

(assert (=> b!7553517 m!8120238))

(declare-fun m!8120240 () Bool)

(assert (=> d!2313666 m!8120240))

(assert (=> d!2313666 m!8120186))

(assert (=> d!2313666 m!8119440))

(declare-fun m!8120242 () Bool)

(assert (=> b!7553518 m!8120242))

(assert (=> b!7553518 m!8119492))

(assert (=> b!7553518 m!8119444))

(assert (=> b!7552753 d!2313666))

(declare-fun d!2313668 () Bool)

(declare-fun lt!2647601 () Regex!19953)

(assert (=> d!2313668 (validRegex!10381 lt!2647601)))

(declare-fun e!4499223 () Regex!19953)

(assert (=> d!2313668 (= lt!2647601 e!4499223)))

(declare-fun c!1394202 () Bool)

(assert (=> d!2313668 (= c!1394202 ((_ is Cons!72712) (t!387559 testedP!423)))))

(assert (=> d!2313668 (validRegex!10381 (derivativeStep!5743 baseR!101 (h!79160 testedP!423)))))

(assert (=> d!2313668 (= (derivative!485 (derivativeStep!5743 baseR!101 (h!79160 testedP!423)) (t!387559 testedP!423)) lt!2647601)))

(declare-fun b!7553532 () Bool)

(assert (=> b!7553532 (= e!4499223 (derivative!485 (derivativeStep!5743 (derivativeStep!5743 baseR!101 (h!79160 testedP!423)) (h!79160 (t!387559 testedP!423))) (t!387559 (t!387559 testedP!423))))))

(declare-fun b!7553533 () Bool)

(assert (=> b!7553533 (= e!4499223 (derivativeStep!5743 baseR!101 (h!79160 testedP!423)))))

(assert (= (and d!2313668 c!1394202) b!7553532))

(assert (= (and d!2313668 (not c!1394202)) b!7553533))

(declare-fun m!8120244 () Bool)

(assert (=> d!2313668 m!8120244))

(assert (=> d!2313668 m!8119188))

(declare-fun m!8120246 () Bool)

(assert (=> d!2313668 m!8120246))

(assert (=> b!7553532 m!8119188))

(declare-fun m!8120248 () Bool)

(assert (=> b!7553532 m!8120248))

(assert (=> b!7553532 m!8120248))

(declare-fun m!8120250 () Bool)

(assert (=> b!7553532 m!8120250))

(assert (=> b!7552471 d!2313668))

(declare-fun b!7553542 () Bool)

(declare-fun c!1394206 () Bool)

(assert (=> b!7553542 (= c!1394206 ((_ is Union!19953) baseR!101))))

(declare-fun e!4499229 () Regex!19953)

(declare-fun e!4499227 () Regex!19953)

(assert (=> b!7553542 (= e!4499229 e!4499227)))

(declare-fun bm!692577 () Bool)

(declare-fun call!692582 () Regex!19953)

(declare-fun call!692583 () Regex!19953)

(assert (=> bm!692577 (= call!692582 call!692583)))

(declare-fun b!7553543 () Bool)

(declare-fun e!4499228 () Regex!19953)

(assert (=> b!7553543 (= e!4499228 EmptyLang!19953)))

(declare-fun e!4499226 () Regex!19953)

(declare-fun call!692585 () Regex!19953)

(declare-fun call!692584 () Regex!19953)

(declare-fun b!7553545 () Bool)

(assert (=> b!7553545 (= e!4499226 (Union!19953 (Concat!28798 call!692584 (regTwo!40418 baseR!101)) call!692585))))

(declare-fun b!7553546 () Bool)

(assert (=> b!7553546 (= e!4499228 e!4499229)))

(declare-fun c!1394207 () Bool)

(assert (=> b!7553546 (= c!1394207 ((_ is ElementMatch!19953) baseR!101))))

(declare-fun b!7553547 () Bool)

(assert (=> b!7553547 (= e!4499226 (Union!19953 (Concat!28798 call!692584 (regTwo!40418 baseR!101)) EmptyLang!19953))))

(declare-fun bm!692578 () Bool)

(assert (=> bm!692578 (= call!692584 call!692582)))

(declare-fun b!7553548 () Bool)

(declare-fun e!4499230 () Regex!19953)

(assert (=> b!7553548 (= e!4499227 e!4499230)))

(declare-fun c!1394203 () Bool)

(assert (=> b!7553548 (= c!1394203 ((_ is Star!19953) baseR!101))))

(declare-fun b!7553549 () Bool)

(assert (=> b!7553549 (= e!4499227 (Union!19953 call!692583 call!692585))))

(declare-fun b!7553544 () Bool)

(declare-fun c!1394204 () Bool)

(assert (=> b!7553544 (= c!1394204 (nullable!8706 (regOne!40418 baseR!101)))))

(assert (=> b!7553544 (= e!4499230 e!4499226)))

(declare-fun d!2313670 () Bool)

(declare-fun lt!2647602 () Regex!19953)

(assert (=> d!2313670 (validRegex!10381 lt!2647602)))

(assert (=> d!2313670 (= lt!2647602 e!4499228)))

(declare-fun c!1394205 () Bool)

(assert (=> d!2313670 (= c!1394205 (or ((_ is EmptyExpr!19953) baseR!101) ((_ is EmptyLang!19953) baseR!101)))))

(assert (=> d!2313670 (validRegex!10381 baseR!101)))

(assert (=> d!2313670 (= (derivativeStep!5743 baseR!101 (h!79160 testedP!423)) lt!2647602)))

(declare-fun bm!692579 () Bool)

(assert (=> bm!692579 (= call!692585 (derivativeStep!5743 (ite c!1394206 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101)) (h!79160 testedP!423)))))

(declare-fun b!7553550 () Bool)

(assert (=> b!7553550 (= e!4499230 (Concat!28798 call!692582 baseR!101))))

(declare-fun bm!692580 () Bool)

(assert (=> bm!692580 (= call!692583 (derivativeStep!5743 (ite c!1394206 (regOne!40419 baseR!101) (ite c!1394203 (reg!20282 baseR!101) (regOne!40418 baseR!101))) (h!79160 testedP!423)))))

(declare-fun b!7553551 () Bool)

(assert (=> b!7553551 (= e!4499229 (ite (= (h!79160 testedP!423) (c!1393902 baseR!101)) EmptyExpr!19953 EmptyLang!19953))))

(assert (= (and d!2313670 c!1394205) b!7553543))

(assert (= (and d!2313670 (not c!1394205)) b!7553546))

(assert (= (and b!7553546 c!1394207) b!7553551))

(assert (= (and b!7553546 (not c!1394207)) b!7553542))

(assert (= (and b!7553542 c!1394206) b!7553549))

(assert (= (and b!7553542 (not c!1394206)) b!7553548))

(assert (= (and b!7553548 c!1394203) b!7553550))

(assert (= (and b!7553548 (not c!1394203)) b!7553544))

(assert (= (and b!7553544 c!1394204) b!7553545))

(assert (= (and b!7553544 (not c!1394204)) b!7553547))

(assert (= (or b!7553545 b!7553547) bm!692578))

(assert (= (or b!7553550 bm!692578) bm!692577))

(assert (= (or b!7553549 b!7553545) bm!692579))

(assert (= (or b!7553549 bm!692577) bm!692580))

(assert (=> b!7553544 m!8120206))

(declare-fun m!8120252 () Bool)

(assert (=> d!2313670 m!8120252))

(assert (=> d!2313670 m!8118994))

(declare-fun m!8120254 () Bool)

(assert (=> bm!692579 m!8120254))

(declare-fun m!8120256 () Bool)

(assert (=> bm!692580 m!8120256))

(assert (=> b!7552471 d!2313670))

(declare-fun d!2313672 () Bool)

(declare-fun c!1394208 () Bool)

(assert (=> d!2313672 (= c!1394208 ((_ is Nil!72712) lt!2647461))))

(declare-fun e!4499236 () (InoxSet C!40232))

(assert (=> d!2313672 (= (content!15394 lt!2647461) e!4499236)))

(declare-fun b!7553572 () Bool)

(assert (=> b!7553572 (= e!4499236 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553573 () Bool)

(assert (=> b!7553573 (= e!4499236 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647461) true) (content!15394 (t!387559 lt!2647461))))))

(assert (= (and d!2313672 c!1394208) b!7553572))

(assert (= (and d!2313672 (not c!1394208)) b!7553573))

(declare-fun m!8120258 () Bool)

(assert (=> b!7553573 m!8120258))

(declare-fun m!8120260 () Bool)

(assert (=> b!7553573 m!8120260))

(assert (=> d!2313248 d!2313672))

(declare-fun d!2313674 () Bool)

(declare-fun c!1394209 () Bool)

(assert (=> d!2313674 (= c!1394209 ((_ is Nil!72712) knownP!30))))

(declare-fun e!4499238 () (InoxSet C!40232))

(assert (=> d!2313674 (= (content!15394 knownP!30) e!4499238)))

(declare-fun b!7553578 () Bool)

(assert (=> b!7553578 (= e!4499238 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553579 () Bool)

(assert (=> b!7553579 (= e!4499238 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 knownP!30) true) (content!15394 (t!387559 knownP!30))))))

(assert (= (and d!2313674 c!1394209) b!7553578))

(assert (= (and d!2313674 (not c!1394209)) b!7553579))

(declare-fun m!8120262 () Bool)

(assert (=> b!7553579 m!8120262))

(declare-fun m!8120264 () Bool)

(assert (=> b!7553579 m!8120264))

(assert (=> d!2313248 d!2313674))

(assert (=> d!2313248 d!2313580))

(declare-fun d!2313676 () Bool)

(declare-fun c!1394210 () Bool)

(assert (=> d!2313676 (= c!1394210 ((_ is Nil!72712) lt!2647506))))

(declare-fun e!4499240 () (InoxSet C!40232))

(assert (=> d!2313676 (= (content!15394 lt!2647506) e!4499240)))

(declare-fun b!7553584 () Bool)

(assert (=> b!7553584 (= e!4499240 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553585 () Bool)

(assert (=> b!7553585 (= e!4499240 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647506) true) (content!15394 (t!387559 lt!2647506))))))

(assert (= (and d!2313676 c!1394210) b!7553584))

(assert (= (and d!2313676 (not c!1394210)) b!7553585))

(declare-fun m!8120266 () Bool)

(assert (=> b!7553585 m!8120266))

(declare-fun m!8120268 () Bool)

(assert (=> b!7553585 m!8120268))

(assert (=> d!2313326 d!2313676))

(declare-fun d!2313678 () Bool)

(declare-fun c!1394211 () Bool)

(assert (=> d!2313678 (= c!1394211 ((_ is Nil!72712) testedP!423))))

(declare-fun e!4499242 () (InoxSet C!40232))

(assert (=> d!2313678 (= (content!15394 testedP!423) e!4499242)))

(declare-fun b!7553590 () Bool)

(assert (=> b!7553590 (= e!4499242 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553591 () Bool)

(assert (=> b!7553591 (= e!4499242 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 testedP!423) true) (content!15394 (t!387559 testedP!423))))))

(assert (= (and d!2313678 c!1394211) b!7553590))

(assert (= (and d!2313678 (not c!1394211)) b!7553591))

(declare-fun m!8120270 () Bool)

(assert (=> b!7553591 m!8120270))

(assert (=> b!7553591 m!8120186))

(assert (=> d!2313326 d!2313678))

(declare-fun d!2313680 () Bool)

(declare-fun c!1394212 () Bool)

(assert (=> d!2313680 (= c!1394212 ((_ is Nil!72712) lt!2647389))))

(declare-fun e!4499244 () (InoxSet C!40232))

(assert (=> d!2313680 (= (content!15394 lt!2647389) e!4499244)))

(declare-fun b!7553593 () Bool)

(assert (=> b!7553593 (= e!4499244 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553594 () Bool)

(assert (=> b!7553594 (= e!4499244 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647389) true) (content!15394 (t!387559 lt!2647389))))))

(assert (= (and d!2313680 c!1394212) b!7553593))

(assert (= (and d!2313680 (not c!1394212)) b!7553594))

(declare-fun m!8120272 () Bool)

(assert (=> b!7553594 m!8120272))

(declare-fun m!8120274 () Bool)

(assert (=> b!7553594 m!8120274))

(assert (=> d!2313326 d!2313680))

(assert (=> b!7552549 d!2313646))

(assert (=> b!7552549 d!2313536))

(declare-fun d!2313682 () Bool)

(assert (=> d!2313682 (= (nullable!8706 (regOne!40418 r!24333)) (nullableFct!3472 (regOne!40418 r!24333)))))

(declare-fun bs!1940257 () Bool)

(assert (= bs!1940257 d!2313682))

(declare-fun m!8120276 () Bool)

(assert (=> bs!1940257 m!8120276))

(assert (=> b!7552625 d!2313682))

(declare-fun bm!692581 () Bool)

(declare-fun call!692587 () Bool)

(declare-fun call!692588 () Bool)

(assert (=> bm!692581 (= call!692587 call!692588)))

(declare-fun b!7553603 () Bool)

(declare-fun e!4499249 () Bool)

(declare-fun e!4499252 () Bool)

(assert (=> b!7553603 (= e!4499249 e!4499252)))

(declare-fun c!1394213 () Bool)

(assert (=> b!7553603 (= c!1394213 ((_ is Union!19953) (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))))))

(declare-fun b!7553604 () Bool)

(declare-fun res!3027580 () Bool)

(declare-fun e!4499248 () Bool)

(assert (=> b!7553604 (=> (not res!3027580) (not e!4499248))))

(assert (=> b!7553604 (= res!3027580 call!692587)))

(assert (=> b!7553604 (= e!4499252 e!4499248)))

(declare-fun d!2313684 () Bool)

(declare-fun res!3027579 () Bool)

(declare-fun e!4499253 () Bool)

(assert (=> d!2313684 (=> res!3027579 e!4499253)))

(assert (=> d!2313684 (= res!3027579 ((_ is ElementMatch!19953) (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))))))

(assert (=> d!2313684 (= (validRegex!10381 (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))) e!4499253)))

(declare-fun b!7553605 () Bool)

(declare-fun e!4499250 () Bool)

(assert (=> b!7553605 (= e!4499250 call!692588)))

(declare-fun c!1394214 () Bool)

(declare-fun bm!692582 () Bool)

(assert (=> bm!692582 (= call!692588 (validRegex!10381 (ite c!1394214 (reg!20282 (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))) (ite c!1394213 (regOne!40419 (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))) (regOne!40418 (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333))))))))))

(declare-fun b!7553606 () Bool)

(declare-fun res!3027578 () Bool)

(declare-fun e!4499247 () Bool)

(assert (=> b!7553606 (=> res!3027578 e!4499247)))

(assert (=> b!7553606 (= res!3027578 (not ((_ is Concat!28798) (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333))))))))

(assert (=> b!7553606 (= e!4499252 e!4499247)))

(declare-fun b!7553607 () Bool)

(declare-fun e!4499251 () Bool)

(assert (=> b!7553607 (= e!4499247 e!4499251)))

(declare-fun res!3027581 () Bool)

(assert (=> b!7553607 (=> (not res!3027581) (not e!4499251))))

(assert (=> b!7553607 (= res!3027581 call!692587)))

(declare-fun b!7553608 () Bool)

(assert (=> b!7553608 (= e!4499249 e!4499250)))

(declare-fun res!3027577 () Bool)

(assert (=> b!7553608 (= res!3027577 (not (nullable!8706 (reg!20282 (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))))))))

(assert (=> b!7553608 (=> (not res!3027577) (not e!4499250))))

(declare-fun b!7553609 () Bool)

(declare-fun call!692586 () Bool)

(assert (=> b!7553609 (= e!4499248 call!692586)))

(declare-fun bm!692583 () Bool)

(assert (=> bm!692583 (= call!692586 (validRegex!10381 (ite c!1394213 (regTwo!40419 (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))) (regTwo!40418 (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))))))))

(declare-fun b!7553610 () Bool)

(assert (=> b!7553610 (= e!4499251 call!692586)))

(declare-fun b!7553611 () Bool)

(assert (=> b!7553611 (= e!4499253 e!4499249)))

(assert (=> b!7553611 (= c!1394214 ((_ is Star!19953) (ite c!1393912 (reg!20282 r!24333) (ite c!1393911 (regOne!40419 r!24333) (regOne!40418 r!24333)))))))

(assert (= (and d!2313684 (not res!3027579)) b!7553611))

(assert (= (and b!7553611 c!1394214) b!7553608))

(assert (= (and b!7553611 (not c!1394214)) b!7553603))

(assert (= (and b!7553608 res!3027577) b!7553605))

(assert (= (and b!7553603 c!1394213) b!7553604))

(assert (= (and b!7553603 (not c!1394213)) b!7553606))

(assert (= (and b!7553604 res!3027580) b!7553609))

(assert (= (and b!7553606 (not res!3027578)) b!7553607))

(assert (= (and b!7553607 res!3027581) b!7553610))

(assert (= (or b!7553604 b!7553607) bm!692581))

(assert (= (or b!7553609 b!7553610) bm!692583))

(assert (= (or b!7553605 bm!692581) bm!692582))

(declare-fun m!8120278 () Bool)

(assert (=> bm!692582 m!8120278))

(declare-fun m!8120280 () Bool)

(assert (=> b!7553608 m!8120280))

(declare-fun m!8120282 () Bool)

(assert (=> bm!692583 m!8120282))

(assert (=> bm!692455 d!2313684))

(declare-fun b!7553628 () Bool)

(declare-fun e!4499257 () List!72836)

(assert (=> b!7553628 (= e!4499257 lt!2647385)))

(declare-fun b!7553629 () Bool)

(assert (=> b!7553629 (= e!4499257 (Cons!72712 (h!79160 (t!387559 lt!2647383)) (++!17469 (t!387559 (t!387559 lt!2647383)) lt!2647385)))))

(declare-fun d!2313686 () Bool)

(declare-fun e!4499259 () Bool)

(assert (=> d!2313686 e!4499259))

(declare-fun res!3027583 () Bool)

(assert (=> d!2313686 (=> (not res!3027583) (not e!4499259))))

(declare-fun lt!2647603 () List!72836)

(assert (=> d!2313686 (= res!3027583 (= (content!15394 lt!2647603) ((_ map or) (content!15394 (t!387559 lt!2647383)) (content!15394 lt!2647385))))))

(assert (=> d!2313686 (= lt!2647603 e!4499257)))

(declare-fun c!1394215 () Bool)

(assert (=> d!2313686 (= c!1394215 ((_ is Nil!72712) (t!387559 lt!2647383)))))

(assert (=> d!2313686 (= (++!17469 (t!387559 lt!2647383) lt!2647385) lt!2647603)))

(declare-fun b!7553631 () Bool)

(assert (=> b!7553631 (= e!4499259 (or (not (= lt!2647385 Nil!72712)) (= lt!2647603 (t!387559 lt!2647383))))))

(declare-fun b!7553630 () Bool)

(declare-fun res!3027582 () Bool)

(assert (=> b!7553630 (=> (not res!3027582) (not e!4499259))))

(assert (=> b!7553630 (= res!3027582 (= (size!42449 lt!2647603) (+ (size!42449 (t!387559 lt!2647383)) (size!42449 lt!2647385))))))

(assert (= (and d!2313686 c!1394215) b!7553628))

(assert (= (and d!2313686 (not c!1394215)) b!7553629))

(assert (= (and d!2313686 res!3027583) b!7553630))

(assert (= (and b!7553630 res!3027582) b!7553631))

(declare-fun m!8120284 () Bool)

(assert (=> b!7553629 m!8120284))

(declare-fun m!8120286 () Bool)

(assert (=> d!2313686 m!8120286))

(assert (=> d!2313686 m!8120006))

(assert (=> d!2313686 m!8119456))

(declare-fun m!8120288 () Bool)

(assert (=> b!7553630 m!8120288))

(declare-fun m!8120290 () Bool)

(assert (=> b!7553630 m!8120290))

(assert (=> b!7553630 m!8119460))

(assert (=> b!7552757 d!2313686))

(declare-fun d!2313688 () Bool)

(declare-fun c!1394216 () Bool)

(assert (=> d!2313688 (= c!1394216 ((_ is Nil!72712) lt!2647462))))

(declare-fun e!4499262 () (InoxSet C!40232))

(assert (=> d!2313688 (= (content!15394 lt!2647462) e!4499262)))

(declare-fun b!7553640 () Bool)

(assert (=> b!7553640 (= e!4499262 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553641 () Bool)

(assert (=> b!7553641 (= e!4499262 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647462) true) (content!15394 (t!387559 lt!2647462))))))

(assert (= (and d!2313688 c!1394216) b!7553640))

(assert (= (and d!2313688 (not c!1394216)) b!7553641))

(declare-fun m!8120292 () Bool)

(assert (=> b!7553641 m!8120292))

(declare-fun m!8120294 () Bool)

(assert (=> b!7553641 m!8120294))

(assert (=> d!2313254 d!2313688))

(assert (=> d!2313254 d!2313678))

(assert (=> d!2313254 d!2313568))

(assert (=> b!7552554 d!2313556))

(declare-fun b!7553650 () Bool)

(declare-fun e!4499267 () Bool)

(declare-fun e!4499265 () Bool)

(assert (=> b!7553650 (= e!4499267 e!4499265)))

(declare-fun res!3027586 () Bool)

(assert (=> b!7553650 (=> (not res!3027586) (not e!4499265))))

(assert (=> b!7553650 (= res!3027586 (not ((_ is Nil!72712) (tail!15085 input!7874))))))

(declare-fun b!7553651 () Bool)

(declare-fun res!3027587 () Bool)

(assert (=> b!7553651 (=> (not res!3027587) (not e!4499265))))

(assert (=> b!7553651 (= res!3027587 (= (head!15543 (tail!15085 knownP!30)) (head!15543 (tail!15085 input!7874))))))

(declare-fun b!7553652 () Bool)

(assert (=> b!7553652 (= e!4499265 (isPrefix!6159 (tail!15085 (tail!15085 knownP!30)) (tail!15085 (tail!15085 input!7874))))))

(declare-fun d!2313690 () Bool)

(declare-fun e!4499266 () Bool)

(assert (=> d!2313690 e!4499266))

(declare-fun res!3027585 () Bool)

(assert (=> d!2313690 (=> res!3027585 e!4499266)))

(declare-fun lt!2647604 () Bool)

(assert (=> d!2313690 (= res!3027585 (not lt!2647604))))

(assert (=> d!2313690 (= lt!2647604 e!4499267)))

(declare-fun res!3027584 () Bool)

(assert (=> d!2313690 (=> res!3027584 e!4499267)))

(assert (=> d!2313690 (= res!3027584 ((_ is Nil!72712) (tail!15085 knownP!30)))))

(assert (=> d!2313690 (= (isPrefix!6159 (tail!15085 knownP!30) (tail!15085 input!7874)) lt!2647604)))

(declare-fun b!7553653 () Bool)

(assert (=> b!7553653 (= e!4499266 (>= (size!42449 (tail!15085 input!7874)) (size!42449 (tail!15085 knownP!30))))))

(assert (= (and d!2313690 (not res!3027584)) b!7553650))

(assert (= (and b!7553650 res!3027586) b!7553651))

(assert (= (and b!7553651 res!3027587) b!7553652))

(assert (= (and d!2313690 (not res!3027585)) b!7553653))

(assert (=> b!7553651 m!8119180))

(assert (=> b!7553651 m!8119924))

(assert (=> b!7553651 m!8119182))

(assert (=> b!7553651 m!8120228))

(assert (=> b!7553652 m!8119180))

(assert (=> b!7553652 m!8119930))

(assert (=> b!7553652 m!8119182))

(assert (=> b!7553652 m!8119908))

(assert (=> b!7553652 m!8119930))

(assert (=> b!7553652 m!8119908))

(declare-fun m!8120296 () Bool)

(assert (=> b!7553652 m!8120296))

(assert (=> b!7553653 m!8119182))

(assert (=> b!7553653 m!8119900))

(assert (=> b!7553653 m!8119180))

(assert (=> b!7553653 m!8119942))

(assert (=> b!7552449 d!2313690))

(assert (=> b!7552449 d!2313536))

(assert (=> b!7552449 d!2313524))

(declare-fun d!2313692 () Bool)

(assert (=> d!2313692 (= lt!2647389 lt!2647370)))

(assert (=> d!2313692 true))

(declare-fun _$63!1381 () Unit!166844)

(assert (=> d!2313692 (= (choose!58458 testedP!423 lt!2647389 testedP!423 lt!2647370 input!7874) _$63!1381)))

(assert (=> d!2313182 d!2313692))

(assert (=> d!2313182 d!2313276))

(declare-fun d!2313694 () Bool)

(declare-fun c!1394217 () Bool)

(assert (=> d!2313694 (= c!1394217 ((_ is Nil!72712) lt!2647491))))

(declare-fun e!4499272 () (InoxSet C!40232))

(assert (=> d!2313694 (= (content!15394 lt!2647491) e!4499272)))

(declare-fun b!7553670 () Bool)

(assert (=> b!7553670 (= e!4499272 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553671 () Bool)

(assert (=> b!7553671 (= e!4499272 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647491) true) (content!15394 (t!387559 lt!2647491))))))

(assert (= (and d!2313694 c!1394217) b!7553670))

(assert (= (and d!2313694 (not c!1394217)) b!7553671))

(declare-fun m!8120298 () Bool)

(assert (=> b!7553671 m!8120298))

(declare-fun m!8120300 () Bool)

(assert (=> b!7553671 m!8120300))

(assert (=> d!2313294 d!2313694))

(assert (=> d!2313294 d!2313678))

(declare-fun d!2313696 () Bool)

(declare-fun c!1394218 () Bool)

(assert (=> d!2313696 (= c!1394218 ((_ is Nil!72712) lt!2647378))))

(declare-fun e!4499274 () (InoxSet C!40232))

(assert (=> d!2313696 (= (content!15394 lt!2647378) e!4499274)))

(declare-fun b!7553676 () Bool)

(assert (=> b!7553676 (= e!4499274 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553677 () Bool)

(assert (=> b!7553677 (= e!4499274 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647378) true) (content!15394 (t!387559 lt!2647378))))))

(assert (= (and d!2313696 c!1394218) b!7553676))

(assert (= (and d!2313696 (not c!1394218)) b!7553677))

(declare-fun m!8120302 () Bool)

(assert (=> b!7553677 m!8120302))

(declare-fun m!8120304 () Bool)

(assert (=> b!7553677 m!8120304))

(assert (=> d!2313294 d!2313696))

(declare-fun b!7553682 () Bool)

(declare-fun e!4499276 () List!72836)

(assert (=> b!7553682 (= e!4499276 lt!2647385)))

(declare-fun b!7553683 () Bool)

(assert (=> b!7553683 (= e!4499276 (Cons!72712 (h!79160 (t!387559 lt!2647369)) (++!17469 (t!387559 (t!387559 lt!2647369)) lt!2647385)))))

(declare-fun d!2313698 () Bool)

(declare-fun e!4499277 () Bool)

(assert (=> d!2313698 e!4499277))

(declare-fun res!3027589 () Bool)

(assert (=> d!2313698 (=> (not res!3027589) (not e!4499277))))

(declare-fun lt!2647605 () List!72836)

(assert (=> d!2313698 (= res!3027589 (= (content!15394 lt!2647605) ((_ map or) (content!15394 (t!387559 lt!2647369)) (content!15394 lt!2647385))))))

(assert (=> d!2313698 (= lt!2647605 e!4499276)))

(declare-fun c!1394219 () Bool)

(assert (=> d!2313698 (= c!1394219 ((_ is Nil!72712) (t!387559 lt!2647369)))))

(assert (=> d!2313698 (= (++!17469 (t!387559 lt!2647369) lt!2647385) lt!2647605)))

(declare-fun b!7553685 () Bool)

(assert (=> b!7553685 (= e!4499277 (or (not (= lt!2647385 Nil!72712)) (= lt!2647605 (t!387559 lt!2647369))))))

(declare-fun b!7553684 () Bool)

(declare-fun res!3027588 () Bool)

(assert (=> b!7553684 (=> (not res!3027588) (not e!4499277))))

(assert (=> b!7553684 (= res!3027588 (= (size!42449 lt!2647605) (+ (size!42449 (t!387559 lt!2647369)) (size!42449 lt!2647385))))))

(assert (= (and d!2313698 c!1394219) b!7553682))

(assert (= (and d!2313698 (not c!1394219)) b!7553683))

(assert (= (and d!2313698 res!3027589) b!7553684))

(assert (= (and b!7553684 res!3027588) b!7553685))

(declare-fun m!8120306 () Bool)

(assert (=> b!7553683 m!8120306))

(declare-fun m!8120308 () Bool)

(assert (=> d!2313698 m!8120308))

(declare-fun m!8120310 () Bool)

(assert (=> d!2313698 m!8120310))

(assert (=> d!2313698 m!8119456))

(declare-fun m!8120312 () Bool)

(assert (=> b!7553684 m!8120312))

(assert (=> b!7553684 m!8119892))

(assert (=> b!7553684 m!8119460))

(assert (=> b!7552860 d!2313698))

(declare-fun d!2313700 () Bool)

(declare-fun lt!2647606 () Int)

(assert (=> d!2313700 (>= lt!2647606 0)))

(declare-fun e!4499280 () Int)

(assert (=> d!2313700 (= lt!2647606 e!4499280)))

(declare-fun c!1394220 () Bool)

(assert (=> d!2313700 (= c!1394220 ((_ is Nil!72712) lt!2647506))))

(assert (=> d!2313700 (= (size!42449 lt!2647506) lt!2647606)))

(declare-fun b!7553694 () Bool)

(assert (=> b!7553694 (= e!4499280 0)))

(declare-fun b!7553695 () Bool)

(assert (=> b!7553695 (= e!4499280 (+ 1 (size!42449 (t!387559 lt!2647506))))))

(assert (= (and d!2313700 c!1394220) b!7553694))

(assert (= (and d!2313700 (not c!1394220)) b!7553695))

(declare-fun m!8120314 () Bool)

(assert (=> b!7553695 m!8120314))

(assert (=> b!7552865 d!2313700))

(assert (=> b!7552865 d!2313316))

(declare-fun d!2313702 () Bool)

(declare-fun lt!2647607 () Int)

(assert (=> d!2313702 (>= lt!2647607 0)))

(declare-fun e!4499282 () Int)

(assert (=> d!2313702 (= lt!2647607 e!4499282)))

(declare-fun c!1394221 () Bool)

(assert (=> d!2313702 (= c!1394221 ((_ is Nil!72712) lt!2647389))))

(assert (=> d!2313702 (= (size!42449 lt!2647389) lt!2647607)))

(declare-fun b!7553700 () Bool)

(assert (=> b!7553700 (= e!4499282 0)))

(declare-fun b!7553701 () Bool)

(assert (=> b!7553701 (= e!4499282 (+ 1 (size!42449 (t!387559 lt!2647389))))))

(assert (= (and d!2313702 c!1394221) b!7553700))

(assert (= (and d!2313702 (not c!1394221)) b!7553701))

(declare-fun m!8120316 () Bool)

(assert (=> b!7553701 m!8120316))

(assert (=> b!7552865 d!2313702))

(assert (=> b!7552739 d!2313180))

(declare-fun b!7553706 () Bool)

(declare-fun e!4499284 () List!72836)

(assert (=> b!7553706 (= e!4499284 lt!2647376)))

(declare-fun b!7553707 () Bool)

(assert (=> b!7553707 (= e!4499284 (Cons!72712 (h!79160 (t!387559 testedP!423)) (++!17469 (t!387559 (t!387559 testedP!423)) lt!2647376)))))

(declare-fun d!2313704 () Bool)

(declare-fun e!4499285 () Bool)

(assert (=> d!2313704 e!4499285))

(declare-fun res!3027591 () Bool)

(assert (=> d!2313704 (=> (not res!3027591) (not e!4499285))))

(declare-fun lt!2647608 () List!72836)

(assert (=> d!2313704 (= res!3027591 (= (content!15394 lt!2647608) ((_ map or) (content!15394 (t!387559 testedP!423)) (content!15394 lt!2647376))))))

(assert (=> d!2313704 (= lt!2647608 e!4499284)))

(declare-fun c!1394222 () Bool)

(assert (=> d!2313704 (= c!1394222 ((_ is Nil!72712) (t!387559 testedP!423)))))

(assert (=> d!2313704 (= (++!17469 (t!387559 testedP!423) lt!2647376) lt!2647608)))

(declare-fun b!7553709 () Bool)

(assert (=> b!7553709 (= e!4499285 (or (not (= lt!2647376 Nil!72712)) (= lt!2647608 (t!387559 testedP!423))))))

(declare-fun b!7553708 () Bool)

(declare-fun res!3027590 () Bool)

(assert (=> b!7553708 (=> (not res!3027590) (not e!4499285))))

(assert (=> b!7553708 (= res!3027590 (= (size!42449 lt!2647608) (+ (size!42449 (t!387559 testedP!423)) (size!42449 lt!2647376))))))

(assert (= (and d!2313704 c!1394222) b!7553706))

(assert (= (and d!2313704 (not c!1394222)) b!7553707))

(assert (= (and d!2313704 res!3027591) b!7553708))

(assert (= (and b!7553708 res!3027590) b!7553709))

(declare-fun m!8120318 () Bool)

(assert (=> b!7553707 m!8120318))

(declare-fun m!8120320 () Bool)

(assert (=> d!2313704 m!8120320))

(assert (=> d!2313704 m!8120186))

(assert (=> d!2313704 m!8119510))

(declare-fun m!8120322 () Bool)

(assert (=> b!7553708 m!8120322))

(assert (=> b!7553708 m!8119492))

(assert (=> b!7553708 m!8119514))

(assert (=> b!7552848 d!2313704))

(declare-fun b!7553710 () Bool)

(declare-fun c!1394226 () Bool)

(assert (=> b!7553710 (= c!1394226 ((_ is Union!19953) (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333)))))))

(declare-fun e!4499289 () Regex!19953)

(declare-fun e!4499287 () Regex!19953)

(assert (=> b!7553710 (= e!4499289 e!4499287)))

(declare-fun bm!692584 () Bool)

(declare-fun call!692589 () Regex!19953)

(declare-fun call!692590 () Regex!19953)

(assert (=> bm!692584 (= call!692589 call!692590)))

(declare-fun b!7553711 () Bool)

(declare-fun e!4499288 () Regex!19953)

(assert (=> b!7553711 (= e!4499288 EmptyLang!19953)))

(declare-fun call!692591 () Regex!19953)

(declare-fun e!4499286 () Regex!19953)

(declare-fun call!692592 () Regex!19953)

(declare-fun b!7553713 () Bool)

(assert (=> b!7553713 (= e!4499286 (Union!19953 (Concat!28798 call!692591 (regTwo!40418 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333))))) call!692592))))

(declare-fun b!7553714 () Bool)

(assert (=> b!7553714 (= e!4499288 e!4499289)))

(declare-fun c!1394227 () Bool)

(assert (=> b!7553714 (= c!1394227 ((_ is ElementMatch!19953) (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333)))))))

(declare-fun b!7553715 () Bool)

(assert (=> b!7553715 (= e!4499286 (Union!19953 (Concat!28798 call!692591 (regTwo!40418 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333))))) EmptyLang!19953))))

(declare-fun bm!692585 () Bool)

(assert (=> bm!692585 (= call!692591 call!692589)))

(declare-fun b!7553716 () Bool)

(declare-fun e!4499290 () Regex!19953)

(assert (=> b!7553716 (= e!4499287 e!4499290)))

(declare-fun c!1394223 () Bool)

(assert (=> b!7553716 (= c!1394223 ((_ is Star!19953) (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333)))))))

(declare-fun b!7553717 () Bool)

(assert (=> b!7553717 (= e!4499287 (Union!19953 call!692590 call!692592))))

(declare-fun b!7553712 () Bool)

(declare-fun c!1394224 () Bool)

(assert (=> b!7553712 (= c!1394224 (nullable!8706 (regOne!40418 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333))))))))

(assert (=> b!7553712 (= e!4499290 e!4499286)))

(declare-fun d!2313706 () Bool)

(declare-fun lt!2647609 () Regex!19953)

(assert (=> d!2313706 (validRegex!10381 lt!2647609)))

(assert (=> d!2313706 (= lt!2647609 e!4499288)))

(declare-fun c!1394225 () Bool)

(assert (=> d!2313706 (= c!1394225 (or ((_ is EmptyExpr!19953) (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333)))) ((_ is EmptyLang!19953) (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333))))))))

(assert (=> d!2313706 (validRegex!10381 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333))))))

(assert (=> d!2313706 (= (derivativeStep!5743 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333))) lt!2647388) lt!2647609)))

(declare-fun bm!692586 () Bool)

(assert (=> bm!692586 (= call!692592 (derivativeStep!5743 (ite c!1394226 (regTwo!40419 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333)))) (regTwo!40418 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333))))) lt!2647388))))

(declare-fun b!7553718 () Bool)

(assert (=> b!7553718 (= e!4499290 (Concat!28798 call!692589 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333)))))))

(declare-fun bm!692587 () Bool)

(assert (=> bm!692587 (= call!692590 (derivativeStep!5743 (ite c!1394226 (regOne!40419 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333)))) (ite c!1394223 (reg!20282 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333)))) (regOne!40418 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333)))))) lt!2647388))))

(declare-fun b!7553719 () Bool)

(assert (=> b!7553719 (= e!4499289 (ite (= lt!2647388 (c!1393902 (ite c!1393974 (regOne!40419 r!24333) (ite c!1393971 (reg!20282 r!24333) (regOne!40418 r!24333))))) EmptyExpr!19953 EmptyLang!19953))))

(assert (= (and d!2313706 c!1394225) b!7553711))

(assert (= (and d!2313706 (not c!1394225)) b!7553714))

(assert (= (and b!7553714 c!1394227) b!7553719))

(assert (= (and b!7553714 (not c!1394227)) b!7553710))

(assert (= (and b!7553710 c!1394226) b!7553717))

(assert (= (and b!7553710 (not c!1394226)) b!7553716))

(assert (= (and b!7553716 c!1394223) b!7553718))

(assert (= (and b!7553716 (not c!1394223)) b!7553712))

(assert (= (and b!7553712 c!1394224) b!7553713))

(assert (= (and b!7553712 (not c!1394224)) b!7553715))

(assert (= (or b!7553713 b!7553715) bm!692585))

(assert (= (or b!7553718 bm!692585) bm!692584))

(assert (= (or b!7553717 b!7553713) bm!692586))

(assert (= (or b!7553717 bm!692584) bm!692587))

(declare-fun m!8120324 () Bool)

(assert (=> b!7553712 m!8120324))

(declare-fun m!8120326 () Bool)

(assert (=> d!2313706 m!8120326))

(declare-fun m!8120328 () Bool)

(assert (=> d!2313706 m!8120328))

(declare-fun m!8120330 () Bool)

(assert (=> bm!692586 m!8120330))

(declare-fun m!8120332 () Bool)

(assert (=> bm!692587 m!8120332))

(assert (=> bm!692481 d!2313706))

(declare-fun bm!692592 () Bool)

(declare-fun call!692598 () Bool)

(declare-fun c!1394230 () Bool)

(assert (=> bm!692592 (= call!692598 (lostCause!1745 (ite c!1394230 (regOne!40419 r!24333) (regTwo!40418 r!24333))))))

(declare-fun b!7553735 () Bool)

(declare-fun e!4499308 () Bool)

(declare-fun e!4499306 () Bool)

(assert (=> b!7553735 (= e!4499308 e!4499306)))

(declare-fun res!3027603 () Bool)

(assert (=> b!7553735 (= res!3027603 call!692598)))

(assert (=> b!7553735 (=> (not res!3027603) (not e!4499306))))

(declare-fun b!7553736 () Bool)

(declare-fun call!692597 () Bool)

(assert (=> b!7553736 (= e!4499306 call!692597)))

(declare-fun b!7553737 () Bool)

(declare-fun e!4499303 () Bool)

(assert (=> b!7553737 (= e!4499303 e!4499308)))

(assert (=> b!7553737 (= c!1394230 ((_ is Union!19953) r!24333))))

(declare-fun bm!692593 () Bool)

(assert (=> bm!692593 (= call!692597 (lostCause!1745 (ite c!1394230 (regTwo!40419 r!24333) (regOne!40418 r!24333))))))

(declare-fun b!7553738 () Bool)

(declare-fun e!4499305 () Bool)

(declare-fun e!4499304 () Bool)

(assert (=> b!7553738 (= e!4499305 e!4499304)))

(declare-fun res!3027602 () Bool)

(assert (=> b!7553738 (=> res!3027602 e!4499304)))

(assert (=> b!7553738 (= res!3027602 ((_ is EmptyLang!19953) r!24333))))

(declare-fun d!2313708 () Bool)

(declare-fun lt!2647612 () Bool)

(declare-datatypes ((Option!17262 0))(
  ( (None!17261) (Some!17261 (v!54396 List!72836)) )
))
(declare-fun isEmpty!41405 (Option!17262) Bool)

(declare-fun getLanguageWitness!1105 (Regex!19953) Option!17262)

(assert (=> d!2313708 (= lt!2647612 (isEmpty!41405 (getLanguageWitness!1105 r!24333)))))

(assert (=> d!2313708 (= lt!2647612 e!4499305)))

(declare-fun res!3027605 () Bool)

(assert (=> d!2313708 (=> (not res!3027605) (not e!4499305))))

(assert (=> d!2313708 (= res!3027605 (not ((_ is EmptyExpr!19953) r!24333)))))

(assert (=> d!2313708 (= (lostCauseFct!461 r!24333) lt!2647612)))

(declare-fun b!7553734 () Bool)

(assert (=> b!7553734 (= e!4499304 e!4499303)))

(declare-fun res!3027606 () Bool)

(assert (=> b!7553734 (=> (not res!3027606) (not e!4499303))))

(assert (=> b!7553734 (= res!3027606 (and (not ((_ is ElementMatch!19953) r!24333)) (not ((_ is Star!19953) r!24333))))))

(declare-fun b!7553739 () Bool)

(declare-fun e!4499307 () Bool)

(assert (=> b!7553739 (= e!4499307 call!692598)))

(declare-fun b!7553740 () Bool)

(assert (=> b!7553740 (= e!4499308 e!4499307)))

(declare-fun res!3027604 () Bool)

(assert (=> b!7553740 (= res!3027604 call!692597)))

(assert (=> b!7553740 (=> res!3027604 e!4499307)))

(assert (= (and d!2313708 res!3027605) b!7553738))

(assert (= (and b!7553738 (not res!3027602)) b!7553734))

(assert (= (and b!7553734 res!3027606) b!7553737))

(assert (= (and b!7553737 c!1394230) b!7553735))

(assert (= (and b!7553737 (not c!1394230)) b!7553740))

(assert (= (and b!7553735 res!3027603) b!7553736))

(assert (= (and b!7553740 (not res!3027604)) b!7553739))

(assert (= (or b!7553735 b!7553739) bm!692592))

(assert (= (or b!7553736 b!7553740) bm!692593))

(declare-fun m!8120334 () Bool)

(assert (=> bm!692592 m!8120334))

(declare-fun m!8120336 () Bool)

(assert (=> bm!692593 m!8120336))

(declare-fun m!8120338 () Bool)

(assert (=> d!2313708 m!8120338))

(assert (=> d!2313708 m!8120338))

(declare-fun m!8120340 () Bool)

(assert (=> d!2313708 m!8120340))

(assert (=> d!2313312 d!2313708))

(assert (=> b!7552723 d!2313192))

(assert (=> b!7552723 d!2313316))

(assert (=> b!7552564 d!2313192))

(assert (=> b!7552564 d!2313516))

(declare-fun d!2313710 () Bool)

(declare-fun lt!2647613 () Int)

(assert (=> d!2313710 (>= lt!2647613 0)))

(declare-fun e!4499309 () Int)

(assert (=> d!2313710 (= lt!2647613 e!4499309)))

(declare-fun c!1394231 () Bool)

(assert (=> d!2313710 (= c!1394231 ((_ is Nil!72712) lt!2647462))))

(assert (=> d!2313710 (= (size!42449 lt!2647462) lt!2647613)))

(declare-fun b!7553741 () Bool)

(assert (=> b!7553741 (= e!4499309 0)))

(declare-fun b!7553742 () Bool)

(assert (=> b!7553742 (= e!4499309 (+ 1 (size!42449 (t!387559 lt!2647462))))))

(assert (= (and d!2313710 c!1394231) b!7553741))

(assert (= (and d!2313710 (not c!1394231)) b!7553742))

(declare-fun m!8120342 () Bool)

(assert (=> b!7553742 m!8120342))

(assert (=> b!7552674 d!2313710))

(assert (=> b!7552674 d!2313316))

(declare-fun d!2313712 () Bool)

(declare-fun lt!2647614 () Int)

(assert (=> d!2313712 (>= lt!2647614 0)))

(declare-fun e!4499310 () Int)

(assert (=> d!2313712 (= lt!2647614 e!4499310)))

(declare-fun c!1394232 () Bool)

(assert (=> d!2313712 (= c!1394232 ((_ is Nil!72712) lt!2647383))))

(assert (=> d!2313712 (= (size!42449 lt!2647383) lt!2647614)))

(declare-fun b!7553743 () Bool)

(assert (=> b!7553743 (= e!4499310 0)))

(declare-fun b!7553744 () Bool)

(assert (=> b!7553744 (= e!4499310 (+ 1 (size!42449 (t!387559 lt!2647383))))))

(assert (= (and d!2313712 c!1394232) b!7553743))

(assert (= (and d!2313712 (not c!1394232)) b!7553744))

(assert (=> b!7553744 m!8120290))

(assert (=> b!7552674 d!2313712))

(declare-fun d!2313714 () Bool)

(declare-fun lt!2647615 () List!72836)

(assert (=> d!2313714 (= (++!17469 (t!387559 knownP!30) lt!2647615) (tail!15085 input!7874))))

(declare-fun e!4499311 () List!72836)

(assert (=> d!2313714 (= lt!2647615 e!4499311)))

(declare-fun c!1394233 () Bool)

(assert (=> d!2313714 (= c!1394233 ((_ is Cons!72712) (t!387559 knownP!30)))))

(assert (=> d!2313714 (>= (size!42449 (tail!15085 input!7874)) (size!42449 (t!387559 knownP!30)))))

(assert (=> d!2313714 (= (getSuffix!3639 (tail!15085 input!7874) (t!387559 knownP!30)) lt!2647615)))

(declare-fun b!7553745 () Bool)

(assert (=> b!7553745 (= e!4499311 (getSuffix!3639 (tail!15085 (tail!15085 input!7874)) (t!387559 (t!387559 knownP!30))))))

(declare-fun b!7553746 () Bool)

(assert (=> b!7553746 (= e!4499311 (tail!15085 input!7874))))

(assert (= (and d!2313714 c!1394233) b!7553745))

(assert (= (and d!2313714 (not c!1394233)) b!7553746))

(declare-fun m!8120344 () Bool)

(assert (=> d!2313714 m!8120344))

(assert (=> d!2313714 m!8119182))

(assert (=> d!2313714 m!8119900))

(assert (=> d!2313714 m!8119494))

(assert (=> b!7553745 m!8119182))

(assert (=> b!7553745 m!8119908))

(assert (=> b!7553745 m!8119908))

(declare-fun m!8120346 () Bool)

(assert (=> b!7553745 m!8120346))

(assert (=> b!7552708 d!2313714))

(assert (=> b!7552708 d!2313524))

(assert (=> d!2313290 d!2313288))

(declare-fun d!2313716 () Bool)

(assert (=> d!2313716 (isPrefix!6159 testedP!423 knownP!30)))

(assert (=> d!2313716 true))

(declare-fun _$69!403 () Unit!166844)

(assert (=> d!2313716 (= (choose!58462 knownP!30 testedP!423 input!7874) _$69!403)))

(declare-fun bs!1940258 () Bool)

(assert (= bs!1940258 d!2313716))

(assert (=> bs!1940258 m!8119018))

(assert (=> d!2313290 d!2313716))

(assert (=> d!2313290 d!2313204))

(declare-fun d!2313718 () Bool)

(declare-fun lt!2647616 () Int)

(assert (=> d!2313718 (>= lt!2647616 0)))

(declare-fun e!4499312 () Int)

(assert (=> d!2313718 (= lt!2647616 e!4499312)))

(declare-fun c!1394234 () Bool)

(assert (=> d!2313718 (= c!1394234 ((_ is Nil!72712) lt!2647491))))

(assert (=> d!2313718 (= (size!42449 lt!2647491) lt!2647616)))

(declare-fun b!7553747 () Bool)

(assert (=> b!7553747 (= e!4499312 0)))

(declare-fun b!7553748 () Bool)

(assert (=> b!7553748 (= e!4499312 (+ 1 (size!42449 (t!387559 lt!2647491))))))

(assert (= (and d!2313718 c!1394234) b!7553747))

(assert (= (and d!2313718 (not c!1394234)) b!7553748))

(declare-fun m!8120348 () Bool)

(assert (=> b!7553748 m!8120348))

(assert (=> b!7552754 d!2313718))

(assert (=> b!7552754 d!2313316))

(declare-fun d!2313720 () Bool)

(declare-fun lt!2647617 () Int)

(assert (=> d!2313720 (>= lt!2647617 0)))

(declare-fun e!4499313 () Int)

(assert (=> d!2313720 (= lt!2647617 e!4499313)))

(declare-fun c!1394235 () Bool)

(assert (=> d!2313720 (= c!1394235 ((_ is Nil!72712) lt!2647378))))

(assert (=> d!2313720 (= (size!42449 lt!2647378) lt!2647617)))

(declare-fun b!7553749 () Bool)

(assert (=> b!7553749 (= e!4499313 0)))

(declare-fun b!7553750 () Bool)

(assert (=> b!7553750 (= e!4499313 (+ 1 (size!42449 (t!387559 lt!2647378))))))

(assert (= (and d!2313720 c!1394235) b!7553749))

(assert (= (and d!2313720 (not c!1394235)) b!7553750))

(declare-fun m!8120350 () Bool)

(assert (=> b!7553750 m!8120350))

(assert (=> b!7552754 d!2313720))

(declare-fun d!2313722 () Bool)

(declare-fun c!1394236 () Bool)

(assert (=> d!2313722 (= c!1394236 ((_ is Nil!72712) lt!2647504))))

(declare-fun e!4499314 () (InoxSet C!40232))

(assert (=> d!2313722 (= (content!15394 lt!2647504) e!4499314)))

(declare-fun b!7553751 () Bool)

(assert (=> b!7553751 (= e!4499314 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553752 () Bool)

(assert (=> b!7553752 (= e!4499314 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647504) true) (content!15394 (t!387559 lt!2647504))))))

(assert (= (and d!2313722 c!1394236) b!7553751))

(assert (= (and d!2313722 (not c!1394236)) b!7553752))

(declare-fun m!8120352 () Bool)

(assert (=> b!7553752 m!8120352))

(declare-fun m!8120354 () Bool)

(assert (=> b!7553752 m!8120354))

(assert (=> d!2313322 d!2313722))

(assert (=> d!2313322 d!2313678))

(declare-fun d!2313724 () Bool)

(declare-fun c!1394237 () Bool)

(assert (=> d!2313724 (= c!1394237 ((_ is Nil!72712) lt!2647376))))

(declare-fun e!4499315 () (InoxSet C!40232))

(assert (=> d!2313724 (= (content!15394 lt!2647376) e!4499315)))

(declare-fun b!7553753 () Bool)

(assert (=> b!7553753 (= e!4499315 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553754 () Bool)

(assert (=> b!7553754 (= e!4499315 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647376) true) (content!15394 (t!387559 lt!2647376))))))

(assert (= (and d!2313724 c!1394237) b!7553753))

(assert (= (and d!2313724 (not c!1394237)) b!7553754))

(declare-fun m!8120356 () Bool)

(assert (=> b!7553754 m!8120356))

(declare-fun m!8120358 () Bool)

(assert (=> b!7553754 m!8120358))

(assert (=> d!2313322 d!2313724))

(declare-fun d!2313726 () Bool)

(declare-fun lt!2647618 () List!72836)

(assert (=> d!2313726 (= (++!17469 (t!387559 lt!2647369) lt!2647618) (tail!15085 knownP!30))))

(declare-fun e!4499316 () List!72836)

(assert (=> d!2313726 (= lt!2647618 e!4499316)))

(declare-fun c!1394238 () Bool)

(assert (=> d!2313726 (= c!1394238 ((_ is Cons!72712) (t!387559 lt!2647369)))))

(assert (=> d!2313726 (>= (size!42449 (tail!15085 knownP!30)) (size!42449 (t!387559 lt!2647369)))))

(assert (=> d!2313726 (= (getSuffix!3639 (tail!15085 knownP!30) (t!387559 lt!2647369)) lt!2647618)))

(declare-fun b!7553755 () Bool)

(assert (=> b!7553755 (= e!4499316 (getSuffix!3639 (tail!15085 (tail!15085 knownP!30)) (t!387559 (t!387559 lt!2647369))))))

(declare-fun b!7553756 () Bool)

(assert (=> b!7553756 (= e!4499316 (tail!15085 knownP!30))))

(assert (= (and d!2313726 c!1394238) b!7553755))

(assert (= (and d!2313726 (not c!1394238)) b!7553756))

(declare-fun m!8120360 () Bool)

(assert (=> d!2313726 m!8120360))

(assert (=> d!2313726 m!8119180))

(assert (=> d!2313726 m!8119942))

(assert (=> d!2313726 m!8119892))

(assert (=> b!7553755 m!8119180))

(assert (=> b!7553755 m!8119930))

(assert (=> b!7553755 m!8119930))

(declare-fun m!8120362 () Bool)

(assert (=> b!7553755 m!8120362))

(assert (=> b!7552656 d!2313726))

(assert (=> b!7552656 d!2313536))

(declare-fun bm!692594 () Bool)

(declare-fun call!692600 () Bool)

(declare-fun call!692601 () Bool)

(assert (=> bm!692594 (= call!692600 call!692601)))

(declare-fun b!7553757 () Bool)

(declare-fun e!4499319 () Bool)

(declare-fun e!4499322 () Bool)

(assert (=> b!7553757 (= e!4499319 e!4499322)))

(declare-fun c!1394239 () Bool)

(assert (=> b!7553757 (= c!1394239 ((_ is Union!19953) lt!2647426))))

(declare-fun b!7553758 () Bool)

(declare-fun res!3027610 () Bool)

(declare-fun e!4499318 () Bool)

(assert (=> b!7553758 (=> (not res!3027610) (not e!4499318))))

(assert (=> b!7553758 (= res!3027610 call!692600)))

(assert (=> b!7553758 (= e!4499322 e!4499318)))

(declare-fun d!2313728 () Bool)

(declare-fun res!3027609 () Bool)

(declare-fun e!4499323 () Bool)

(assert (=> d!2313728 (=> res!3027609 e!4499323)))

(assert (=> d!2313728 (= res!3027609 ((_ is ElementMatch!19953) lt!2647426))))

(assert (=> d!2313728 (= (validRegex!10381 lt!2647426) e!4499323)))

(declare-fun b!7553759 () Bool)

(declare-fun e!4499320 () Bool)

(assert (=> b!7553759 (= e!4499320 call!692601)))

(declare-fun bm!692595 () Bool)

(declare-fun c!1394240 () Bool)

(assert (=> bm!692595 (= call!692601 (validRegex!10381 (ite c!1394240 (reg!20282 lt!2647426) (ite c!1394239 (regOne!40419 lt!2647426) (regOne!40418 lt!2647426)))))))

(declare-fun b!7553760 () Bool)

(declare-fun res!3027608 () Bool)

(declare-fun e!4499317 () Bool)

(assert (=> b!7553760 (=> res!3027608 e!4499317)))

(assert (=> b!7553760 (= res!3027608 (not ((_ is Concat!28798) lt!2647426)))))

(assert (=> b!7553760 (= e!4499322 e!4499317)))

(declare-fun b!7553761 () Bool)

(declare-fun e!4499321 () Bool)

(assert (=> b!7553761 (= e!4499317 e!4499321)))

(declare-fun res!3027611 () Bool)

(assert (=> b!7553761 (=> (not res!3027611) (not e!4499321))))

(assert (=> b!7553761 (= res!3027611 call!692600)))

(declare-fun b!7553762 () Bool)

(assert (=> b!7553762 (= e!4499319 e!4499320)))

(declare-fun res!3027607 () Bool)

(assert (=> b!7553762 (= res!3027607 (not (nullable!8706 (reg!20282 lt!2647426))))))

(assert (=> b!7553762 (=> (not res!3027607) (not e!4499320))))

(declare-fun b!7553763 () Bool)

(declare-fun call!692599 () Bool)

(assert (=> b!7553763 (= e!4499318 call!692599)))

(declare-fun bm!692596 () Bool)

(assert (=> bm!692596 (= call!692599 (validRegex!10381 (ite c!1394239 (regTwo!40419 lt!2647426) (regTwo!40418 lt!2647426))))))

(declare-fun b!7553764 () Bool)

(assert (=> b!7553764 (= e!4499321 call!692599)))

(declare-fun b!7553765 () Bool)

(assert (=> b!7553765 (= e!4499323 e!4499319)))

(assert (=> b!7553765 (= c!1394240 ((_ is Star!19953) lt!2647426))))

(assert (= (and d!2313728 (not res!3027609)) b!7553765))

(assert (= (and b!7553765 c!1394240) b!7553762))

(assert (= (and b!7553765 (not c!1394240)) b!7553757))

(assert (= (and b!7553762 res!3027607) b!7553759))

(assert (= (and b!7553757 c!1394239) b!7553758))

(assert (= (and b!7553757 (not c!1394239)) b!7553760))

(assert (= (and b!7553758 res!3027610) b!7553763))

(assert (= (and b!7553760 (not res!3027608)) b!7553761))

(assert (= (and b!7553761 res!3027611) b!7553764))

(assert (= (or b!7553758 b!7553761) bm!692594))

(assert (= (or b!7553763 b!7553764) bm!692596))

(assert (= (or b!7553759 bm!692594) bm!692595))

(declare-fun m!8120364 () Bool)

(assert (=> bm!692595 m!8120364))

(declare-fun m!8120366 () Bool)

(assert (=> b!7553762 m!8120366))

(declare-fun m!8120368 () Bool)

(assert (=> bm!692596 m!8120368))

(assert (=> d!2313210 d!2313728))

(assert (=> d!2313210 d!2313314))

(declare-fun d!2313730 () Bool)

(declare-fun c!1394241 () Bool)

(assert (=> d!2313730 (= c!1394241 ((_ is Nil!72712) lt!2647505))))

(declare-fun e!4499324 () (InoxSet C!40232))

(assert (=> d!2313730 (= (content!15394 lt!2647505) e!4499324)))

(declare-fun b!7553766 () Bool)

(assert (=> b!7553766 (= e!4499324 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553767 () Bool)

(assert (=> b!7553767 (= e!4499324 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647505) true) (content!15394 (t!387559 lt!2647505))))))

(assert (= (and d!2313730 c!1394241) b!7553766))

(assert (= (and d!2313730 (not c!1394241)) b!7553767))

(declare-fun m!8120370 () Bool)

(assert (=> b!7553767 m!8120370))

(declare-fun m!8120372 () Bool)

(assert (=> b!7553767 m!8120372))

(assert (=> d!2313324 d!2313730))

(declare-fun d!2313732 () Bool)

(declare-fun c!1394242 () Bool)

(assert (=> d!2313732 (= c!1394242 ((_ is Nil!72712) lt!2647369))))

(declare-fun e!4499325 () (InoxSet C!40232))

(assert (=> d!2313732 (= (content!15394 lt!2647369) e!4499325)))

(declare-fun b!7553768 () Bool)

(assert (=> b!7553768 (= e!4499325 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553769 () Bool)

(assert (=> b!7553769 (= e!4499325 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647369) true) (content!15394 (t!387559 lt!2647369))))))

(assert (= (and d!2313732 c!1394242) b!7553768))

(assert (= (and d!2313732 (not c!1394242)) b!7553769))

(declare-fun m!8120374 () Bool)

(assert (=> b!7553769 m!8120374))

(assert (=> b!7553769 m!8120310))

(assert (=> d!2313324 d!2313732))

(assert (=> d!2313324 d!2313570))

(declare-fun d!2313734 () Bool)

(assert (=> d!2313734 (= (isEmpty!41402 lt!2647376) ((_ is Nil!72712) lt!2647376))))

(assert (=> d!2313284 d!2313734))

(assert (=> d!2313284 d!2313170))

(assert (=> b!7552717 d!2313654))

(assert (=> b!7552717 d!2313556))

(declare-fun d!2313736 () Bool)

(declare-fun lt!2647619 () Int)

(assert (=> d!2313736 (>= lt!2647619 0)))

(declare-fun e!4499326 () Int)

(assert (=> d!2313736 (= lt!2647619 e!4499326)))

(declare-fun c!1394243 () Bool)

(assert (=> d!2313736 (= c!1394243 ((_ is Nil!72712) (t!387559 knownP!30)))))

(assert (=> d!2313736 (= (size!42449 (t!387559 knownP!30)) lt!2647619)))

(declare-fun b!7553770 () Bool)

(assert (=> b!7553770 (= e!4499326 0)))

(declare-fun b!7553771 () Bool)

(assert (=> b!7553771 (= e!4499326 (+ 1 (size!42449 (t!387559 (t!387559 knownP!30)))))))

(assert (= (and d!2313736 c!1394243) b!7553770))

(assert (= (and d!2313736 (not c!1394243)) b!7553771))

(declare-fun m!8120376 () Bool)

(assert (=> b!7553771 m!8120376))

(assert (=> b!7552828 d!2313736))

(declare-fun d!2313738 () Bool)

(assert (=> d!2313738 (= (nullable!8706 baseR!101) (nullableFct!3472 baseR!101))))

(declare-fun bs!1940259 () Bool)

(assert (= bs!1940259 d!2313738))

(declare-fun m!8120378 () Bool)

(assert (=> bs!1940259 m!8120378))

(assert (=> b!7552551 d!2313738))

(declare-fun b!7553772 () Bool)

(declare-fun e!4499329 () Bool)

(declare-fun e!4499327 () Bool)

(assert (=> b!7553772 (= e!4499329 e!4499327)))

(declare-fun res!3027614 () Bool)

(assert (=> b!7553772 (=> (not res!3027614) (not e!4499327))))

(assert (=> b!7553772 (= res!3027614 (not ((_ is Nil!72712) (tail!15085 knownP!30))))))

(declare-fun b!7553773 () Bool)

(declare-fun res!3027615 () Bool)

(assert (=> b!7553773 (=> (not res!3027615) (not e!4499327))))

(assert (=> b!7553773 (= res!3027615 (= (head!15543 (tail!15085 lt!2647369)) (head!15543 (tail!15085 knownP!30))))))

(declare-fun b!7553774 () Bool)

(assert (=> b!7553774 (= e!4499327 (isPrefix!6159 (tail!15085 (tail!15085 lt!2647369)) (tail!15085 (tail!15085 knownP!30))))))

(declare-fun d!2313740 () Bool)

(declare-fun e!4499328 () Bool)

(assert (=> d!2313740 e!4499328))

(declare-fun res!3027613 () Bool)

(assert (=> d!2313740 (=> res!3027613 e!4499328)))

(declare-fun lt!2647620 () Bool)

(assert (=> d!2313740 (= res!3027613 (not lt!2647620))))

(assert (=> d!2313740 (= lt!2647620 e!4499329)))

(declare-fun res!3027612 () Bool)

(assert (=> d!2313740 (=> res!3027612 e!4499329)))

(assert (=> d!2313740 (= res!3027612 ((_ is Nil!72712) (tail!15085 lt!2647369)))))

(assert (=> d!2313740 (= (isPrefix!6159 (tail!15085 lt!2647369) (tail!15085 knownP!30)) lt!2647620)))

(declare-fun b!7553775 () Bool)

(assert (=> b!7553775 (= e!4499328 (>= (size!42449 (tail!15085 knownP!30)) (size!42449 (tail!15085 lt!2647369))))))

(assert (= (and d!2313740 (not res!3027612)) b!7553772))

(assert (= (and b!7553772 res!3027614) b!7553773))

(assert (= (and b!7553773 res!3027615) b!7553774))

(assert (= (and d!2313740 (not res!3027613)) b!7553775))

(assert (=> b!7553773 m!8119232))

(assert (=> b!7553773 m!8120226))

(assert (=> b!7553773 m!8119180))

(assert (=> b!7553773 m!8119924))

(assert (=> b!7553774 m!8119232))

(assert (=> b!7553774 m!8120230))

(assert (=> b!7553774 m!8119180))

(assert (=> b!7553774 m!8119930))

(assert (=> b!7553774 m!8120230))

(assert (=> b!7553774 m!8119930))

(declare-fun m!8120380 () Bool)

(assert (=> b!7553774 m!8120380))

(assert (=> b!7553775 m!8119180))

(assert (=> b!7553775 m!8119942))

(assert (=> b!7553775 m!8119232))

(assert (=> b!7553775 m!8120234))

(assert (=> b!7552718 d!2313740))

(assert (=> b!7552718 d!2313662))

(assert (=> b!7552718 d!2313536))

(declare-fun d!2313742 () Bool)

(declare-fun lt!2647621 () Int)

(assert (=> d!2313742 (>= lt!2647621 0)))

(declare-fun e!4499330 () Int)

(assert (=> d!2313742 (= lt!2647621 e!4499330)))

(declare-fun c!1394244 () Bool)

(assert (=> d!2313742 (= c!1394244 ((_ is Nil!72712) lt!2647493))))

(assert (=> d!2313742 (= (size!42449 lt!2647493) lt!2647621)))

(declare-fun b!7553776 () Bool)

(assert (=> b!7553776 (= e!4499330 0)))

(declare-fun b!7553777 () Bool)

(assert (=> b!7553777 (= e!4499330 (+ 1 (size!42449 (t!387559 lt!2647493))))))

(assert (= (and d!2313742 c!1394244) b!7553776))

(assert (= (and d!2313742 (not c!1394244)) b!7553777))

(declare-fun m!8120382 () Bool)

(assert (=> b!7553777 m!8120382))

(assert (=> b!7552758 d!2313742))

(assert (=> b!7552758 d!2313712))

(declare-fun d!2313744 () Bool)

(declare-fun lt!2647622 () Int)

(assert (=> d!2313744 (>= lt!2647622 0)))

(declare-fun e!4499331 () Int)

(assert (=> d!2313744 (= lt!2647622 e!4499331)))

(declare-fun c!1394245 () Bool)

(assert (=> d!2313744 (= c!1394245 ((_ is Nil!72712) lt!2647385))))

(assert (=> d!2313744 (= (size!42449 lt!2647385) lt!2647622)))

(declare-fun b!7553778 () Bool)

(assert (=> b!7553778 (= e!4499331 0)))

(declare-fun b!7553779 () Bool)

(assert (=> b!7553779 (= e!4499331 (+ 1 (size!42449 (t!387559 lt!2647385))))))

(assert (= (and d!2313744 c!1394245) b!7553778))

(assert (= (and d!2313744 (not c!1394245)) b!7553779))

(declare-fun m!8120384 () Bool)

(assert (=> b!7553779 m!8120384))

(assert (=> b!7552758 d!2313744))

(assert (=> b!7552749 d!2313656))

(assert (=> b!7552749 d!2313556))

(declare-fun d!2313746 () Bool)

(assert (=> d!2313746 (= (nullable!8706 r!24333) (nullableFct!3472 r!24333))))

(declare-fun bs!1940260 () Bool)

(assert (= bs!1940260 d!2313746))

(declare-fun m!8120386 () Bool)

(assert (=> bs!1940260 m!8120386))

(assert (=> b!7552736 d!2313746))

(declare-fun b!7553780 () Bool)

(declare-fun e!4499332 () List!72836)

(assert (=> b!7553780 (= e!4499332 lt!2647485)))

(declare-fun b!7553781 () Bool)

(assert (=> b!7553781 (= e!4499332 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) lt!2647485)))))

(declare-fun d!2313748 () Bool)

(declare-fun e!4499333 () Bool)

(assert (=> d!2313748 e!4499333))

(declare-fun res!3027617 () Bool)

(assert (=> d!2313748 (=> (not res!3027617) (not e!4499333))))

(declare-fun lt!2647623 () List!72836)

(assert (=> d!2313748 (= res!3027617 (= (content!15394 lt!2647623) ((_ map or) (content!15394 testedP!423) (content!15394 lt!2647485))))))

(assert (=> d!2313748 (= lt!2647623 e!4499332)))

(declare-fun c!1394246 () Bool)

(assert (=> d!2313748 (= c!1394246 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313748 (= (++!17469 testedP!423 lt!2647485) lt!2647623)))

(declare-fun b!7553783 () Bool)

(assert (=> b!7553783 (= e!4499333 (or (not (= lt!2647485 Nil!72712)) (= lt!2647623 testedP!423)))))

(declare-fun b!7553782 () Bool)

(declare-fun res!3027616 () Bool)

(assert (=> b!7553782 (=> (not res!3027616) (not e!4499333))))

(assert (=> b!7553782 (= res!3027616 (= (size!42449 lt!2647623) (+ (size!42449 testedP!423) (size!42449 lt!2647485))))))

(assert (= (and d!2313748 c!1394246) b!7553780))

(assert (= (and d!2313748 (not c!1394246)) b!7553781))

(assert (= (and d!2313748 res!3027617) b!7553782))

(assert (= (and b!7553782 res!3027616) b!7553783))

(declare-fun m!8120388 () Bool)

(assert (=> b!7553781 m!8120388))

(declare-fun m!8120390 () Bool)

(assert (=> d!2313748 m!8120390))

(assert (=> d!2313748 m!8119334))

(declare-fun m!8120392 () Bool)

(assert (=> d!2313748 m!8120392))

(declare-fun m!8120394 () Bool)

(assert (=> b!7553782 m!8120394))

(assert (=> b!7553782 m!8118996))

(declare-fun m!8120396 () Bool)

(assert (=> b!7553782 m!8120396))

(assert (=> d!2313286 d!2313748))

(assert (=> d!2313286 d!2313318))

(assert (=> d!2313286 d!2313316))

(declare-fun b!7553784 () Bool)

(declare-fun e!4499334 () List!72836)

(assert (=> b!7553784 (= e!4499334 lt!2647370)))

(declare-fun b!7553785 () Bool)

(assert (=> b!7553785 (= e!4499334 (Cons!72712 (h!79160 (t!387559 testedP!423)) (++!17469 (t!387559 (t!387559 testedP!423)) lt!2647370)))))

(declare-fun d!2313750 () Bool)

(declare-fun e!4499335 () Bool)

(assert (=> d!2313750 e!4499335))

(declare-fun res!3027619 () Bool)

(assert (=> d!2313750 (=> (not res!3027619) (not e!4499335))))

(declare-fun lt!2647624 () List!72836)

(assert (=> d!2313750 (= res!3027619 (= (content!15394 lt!2647624) ((_ map or) (content!15394 (t!387559 testedP!423)) (content!15394 lt!2647370))))))

(assert (=> d!2313750 (= lt!2647624 e!4499334)))

(declare-fun c!1394247 () Bool)

(assert (=> d!2313750 (= c!1394247 ((_ is Nil!72712) (t!387559 testedP!423)))))

(assert (=> d!2313750 (= (++!17469 (t!387559 testedP!423) lt!2647370) lt!2647624)))

(declare-fun b!7553787 () Bool)

(assert (=> b!7553787 (= e!4499335 (or (not (= lt!2647370 Nil!72712)) (= lt!2647624 (t!387559 testedP!423))))))

(declare-fun b!7553786 () Bool)

(declare-fun res!3027618 () Bool)

(assert (=> b!7553786 (=> (not res!3027618) (not e!4499335))))

(assert (=> b!7553786 (= res!3027618 (= (size!42449 lt!2647624) (+ (size!42449 (t!387559 testedP!423)) (size!42449 lt!2647370))))))

(assert (= (and d!2313750 c!1394247) b!7553784))

(assert (= (and d!2313750 (not c!1394247)) b!7553785))

(assert (= (and d!2313750 res!3027619) b!7553786))

(assert (= (and b!7553786 res!3027618) b!7553787))

(declare-fun m!8120398 () Bool)

(assert (=> b!7553785 m!8120398))

(declare-fun m!8120400 () Bool)

(assert (=> d!2313750 m!8120400))

(assert (=> d!2313750 m!8120186))

(assert (=> d!2313750 m!8119408))

(declare-fun m!8120402 () Bool)

(assert (=> b!7553786 m!8120402))

(assert (=> b!7553786 m!8119492))

(assert (=> b!7553786 m!8119412))

(assert (=> b!7552729 d!2313750))

(declare-fun b!7553788 () Bool)

(declare-fun res!3027625 () Bool)

(declare-fun e!4499339 () Bool)

(assert (=> b!7553788 (=> res!3027625 e!4499339)))

(declare-fun e!4499337 () Bool)

(assert (=> b!7553788 (= res!3027625 e!4499337)))

(declare-fun res!3027626 () Bool)

(assert (=> b!7553788 (=> (not res!3027626) (not e!4499337))))

(declare-fun lt!2647625 () Bool)

(assert (=> b!7553788 (= res!3027626 lt!2647625)))

(declare-fun bm!692597 () Bool)

(declare-fun call!692602 () Bool)

(assert (=> bm!692597 (= call!692602 (isEmpty!41402 (tail!15085 knownP!30)))))

(declare-fun b!7553789 () Bool)

(declare-fun e!4499336 () Bool)

(assert (=> b!7553789 (= e!4499336 (= lt!2647625 call!692602))))

(declare-fun b!7553791 () Bool)

(declare-fun e!4499341 () Bool)

(assert (=> b!7553791 (= e!4499339 e!4499341)))

(declare-fun res!3027622 () Bool)

(assert (=> b!7553791 (=> (not res!3027622) (not e!4499341))))

(assert (=> b!7553791 (= res!3027622 (not lt!2647625))))

(declare-fun b!7553792 () Bool)

(declare-fun e!4499340 () Bool)

(assert (=> b!7553792 (= e!4499340 (nullable!8706 (derivativeStep!5743 baseR!101 (head!15543 knownP!30))))))

(declare-fun b!7553793 () Bool)

(declare-fun e!4499342 () Bool)

(assert (=> b!7553793 (= e!4499342 (not lt!2647625))))

(declare-fun b!7553794 () Bool)

(declare-fun res!3027624 () Bool)

(assert (=> b!7553794 (=> (not res!3027624) (not e!4499337))))

(assert (=> b!7553794 (= res!3027624 (not call!692602))))

(declare-fun b!7553795 () Bool)

(declare-fun e!4499338 () Bool)

(assert (=> b!7553795 (= e!4499338 (not (= (head!15543 (tail!15085 knownP!30)) (c!1393902 (derivativeStep!5743 baseR!101 (head!15543 knownP!30))))))))

(declare-fun b!7553796 () Bool)

(assert (=> b!7553796 (= e!4499340 (matchR!9555 (derivativeStep!5743 (derivativeStep!5743 baseR!101 (head!15543 knownP!30)) (head!15543 (tail!15085 knownP!30))) (tail!15085 (tail!15085 knownP!30))))))

(declare-fun b!7553797 () Bool)

(assert (=> b!7553797 (= e!4499336 e!4499342)))

(declare-fun c!1394249 () Bool)

(assert (=> b!7553797 (= c!1394249 ((_ is EmptyLang!19953) (derivativeStep!5743 baseR!101 (head!15543 knownP!30))))))

(declare-fun b!7553798 () Bool)

(declare-fun res!3027621 () Bool)

(assert (=> b!7553798 (=> res!3027621 e!4499338)))

(assert (=> b!7553798 (= res!3027621 (not (isEmpty!41402 (tail!15085 (tail!15085 knownP!30)))))))

(declare-fun b!7553799 () Bool)

(declare-fun res!3027620 () Bool)

(assert (=> b!7553799 (=> res!3027620 e!4499339)))

(assert (=> b!7553799 (= res!3027620 (not ((_ is ElementMatch!19953) (derivativeStep!5743 baseR!101 (head!15543 knownP!30)))))))

(assert (=> b!7553799 (= e!4499342 e!4499339)))

(declare-fun b!7553800 () Bool)

(assert (=> b!7553800 (= e!4499341 e!4499338)))

(declare-fun res!3027627 () Bool)

(assert (=> b!7553800 (=> res!3027627 e!4499338)))

(assert (=> b!7553800 (= res!3027627 call!692602)))

(declare-fun b!7553801 () Bool)

(assert (=> b!7553801 (= e!4499337 (= (head!15543 (tail!15085 knownP!30)) (c!1393902 (derivativeStep!5743 baseR!101 (head!15543 knownP!30)))))))

(declare-fun d!2313752 () Bool)

(assert (=> d!2313752 e!4499336))

(declare-fun c!1394248 () Bool)

(assert (=> d!2313752 (= c!1394248 ((_ is EmptyExpr!19953) (derivativeStep!5743 baseR!101 (head!15543 knownP!30))))))

(assert (=> d!2313752 (= lt!2647625 e!4499340)))

(declare-fun c!1394250 () Bool)

(assert (=> d!2313752 (= c!1394250 (isEmpty!41402 (tail!15085 knownP!30)))))

(assert (=> d!2313752 (validRegex!10381 (derivativeStep!5743 baseR!101 (head!15543 knownP!30)))))

(assert (=> d!2313752 (= (matchR!9555 (derivativeStep!5743 baseR!101 (head!15543 knownP!30)) (tail!15085 knownP!30)) lt!2647625)))

(declare-fun b!7553790 () Bool)

(declare-fun res!3027623 () Bool)

(assert (=> b!7553790 (=> (not res!3027623) (not e!4499337))))

(assert (=> b!7553790 (= res!3027623 (isEmpty!41402 (tail!15085 (tail!15085 knownP!30))))))

(assert (= (and d!2313752 c!1394250) b!7553792))

(assert (= (and d!2313752 (not c!1394250)) b!7553796))

(assert (= (and d!2313752 c!1394248) b!7553789))

(assert (= (and d!2313752 (not c!1394248)) b!7553797))

(assert (= (and b!7553797 c!1394249) b!7553793))

(assert (= (and b!7553797 (not c!1394249)) b!7553799))

(assert (= (and b!7553799 (not res!3027620)) b!7553788))

(assert (= (and b!7553788 res!3027626) b!7553794))

(assert (= (and b!7553794 res!3027624) b!7553790))

(assert (= (and b!7553790 res!3027623) b!7553801))

(assert (= (and b!7553788 (not res!3027625)) b!7553791))

(assert (= (and b!7553791 res!3027622) b!7553800))

(assert (= (and b!7553800 (not res!3027627)) b!7553798))

(assert (= (and b!7553798 (not res!3027621)) b!7553795))

(assert (= (or b!7553789 b!7553794 b!7553800) bm!692597))

(assert (=> b!7553796 m!8119180))

(assert (=> b!7553796 m!8119924))

(assert (=> b!7553796 m!8119220))

(assert (=> b!7553796 m!8119924))

(declare-fun m!8120404 () Bool)

(assert (=> b!7553796 m!8120404))

(assert (=> b!7553796 m!8119180))

(assert (=> b!7553796 m!8119930))

(assert (=> b!7553796 m!8120404))

(assert (=> b!7553796 m!8119930))

(declare-fun m!8120406 () Bool)

(assert (=> b!7553796 m!8120406))

(assert (=> b!7553790 m!8119180))

(assert (=> b!7553790 m!8119930))

(assert (=> b!7553790 m!8119930))

(declare-fun m!8120408 () Bool)

(assert (=> b!7553790 m!8120408))

(assert (=> b!7553801 m!8119180))

(assert (=> b!7553801 m!8119924))

(assert (=> b!7553798 m!8119180))

(assert (=> b!7553798 m!8119930))

(assert (=> b!7553798 m!8119930))

(assert (=> b!7553798 m!8120408))

(assert (=> d!2313752 m!8119180))

(assert (=> d!2313752 m!8119224))

(assert (=> d!2313752 m!8119220))

(declare-fun m!8120410 () Bool)

(assert (=> d!2313752 m!8120410))

(assert (=> b!7553792 m!8119220))

(declare-fun m!8120412 () Bool)

(assert (=> b!7553792 m!8120412))

(assert (=> bm!692597 m!8119180))

(assert (=> bm!692597 m!8119224))

(assert (=> b!7553795 m!8119180))

(assert (=> b!7553795 m!8119924))

(assert (=> b!7552555 d!2313752))

(declare-fun b!7553802 () Bool)

(declare-fun c!1394254 () Bool)

(assert (=> b!7553802 (= c!1394254 ((_ is Union!19953) baseR!101))))

(declare-fun e!4499346 () Regex!19953)

(declare-fun e!4499344 () Regex!19953)

(assert (=> b!7553802 (= e!4499346 e!4499344)))

(declare-fun bm!692598 () Bool)

(declare-fun call!692603 () Regex!19953)

(declare-fun call!692604 () Regex!19953)

(assert (=> bm!692598 (= call!692603 call!692604)))

(declare-fun b!7553803 () Bool)

(declare-fun e!4499345 () Regex!19953)

(assert (=> b!7553803 (= e!4499345 EmptyLang!19953)))

(declare-fun call!692605 () Regex!19953)

(declare-fun e!4499343 () Regex!19953)

(declare-fun b!7553805 () Bool)

(declare-fun call!692606 () Regex!19953)

(assert (=> b!7553805 (= e!4499343 (Union!19953 (Concat!28798 call!692605 (regTwo!40418 baseR!101)) call!692606))))

(declare-fun b!7553806 () Bool)

(assert (=> b!7553806 (= e!4499345 e!4499346)))

(declare-fun c!1394255 () Bool)

(assert (=> b!7553806 (= c!1394255 ((_ is ElementMatch!19953) baseR!101))))

(declare-fun b!7553807 () Bool)

(assert (=> b!7553807 (= e!4499343 (Union!19953 (Concat!28798 call!692605 (regTwo!40418 baseR!101)) EmptyLang!19953))))

(declare-fun bm!692599 () Bool)

(assert (=> bm!692599 (= call!692605 call!692603)))

(declare-fun b!7553808 () Bool)

(declare-fun e!4499347 () Regex!19953)

(assert (=> b!7553808 (= e!4499344 e!4499347)))

(declare-fun c!1394251 () Bool)

(assert (=> b!7553808 (= c!1394251 ((_ is Star!19953) baseR!101))))

(declare-fun b!7553809 () Bool)

(assert (=> b!7553809 (= e!4499344 (Union!19953 call!692604 call!692606))))

(declare-fun b!7553804 () Bool)

(declare-fun c!1394252 () Bool)

(assert (=> b!7553804 (= c!1394252 (nullable!8706 (regOne!40418 baseR!101)))))

(assert (=> b!7553804 (= e!4499347 e!4499343)))

(declare-fun d!2313754 () Bool)

(declare-fun lt!2647626 () Regex!19953)

(assert (=> d!2313754 (validRegex!10381 lt!2647626)))

(assert (=> d!2313754 (= lt!2647626 e!4499345)))

(declare-fun c!1394253 () Bool)

(assert (=> d!2313754 (= c!1394253 (or ((_ is EmptyExpr!19953) baseR!101) ((_ is EmptyLang!19953) baseR!101)))))

(assert (=> d!2313754 (validRegex!10381 baseR!101)))

(assert (=> d!2313754 (= (derivativeStep!5743 baseR!101 (head!15543 knownP!30)) lt!2647626)))

(declare-fun bm!692600 () Bool)

(assert (=> bm!692600 (= call!692606 (derivativeStep!5743 (ite c!1394254 (regTwo!40419 baseR!101) (regTwo!40418 baseR!101)) (head!15543 knownP!30)))))

(declare-fun b!7553810 () Bool)

(assert (=> b!7553810 (= e!4499347 (Concat!28798 call!692603 baseR!101))))

(declare-fun bm!692601 () Bool)

(assert (=> bm!692601 (= call!692604 (derivativeStep!5743 (ite c!1394254 (regOne!40419 baseR!101) (ite c!1394251 (reg!20282 baseR!101) (regOne!40418 baseR!101))) (head!15543 knownP!30)))))

(declare-fun b!7553811 () Bool)

(assert (=> b!7553811 (= e!4499346 (ite (= (head!15543 knownP!30) (c!1393902 baseR!101)) EmptyExpr!19953 EmptyLang!19953))))

(assert (= (and d!2313754 c!1394253) b!7553803))

(assert (= (and d!2313754 (not c!1394253)) b!7553806))

(assert (= (and b!7553806 c!1394255) b!7553811))

(assert (= (and b!7553806 (not c!1394255)) b!7553802))

(assert (= (and b!7553802 c!1394254) b!7553809))

(assert (= (and b!7553802 (not c!1394254)) b!7553808))

(assert (= (and b!7553808 c!1394251) b!7553810))

(assert (= (and b!7553808 (not c!1394251)) b!7553804))

(assert (= (and b!7553804 c!1394252) b!7553805))

(assert (= (and b!7553804 (not c!1394252)) b!7553807))

(assert (= (or b!7553805 b!7553807) bm!692599))

(assert (= (or b!7553810 bm!692599) bm!692598))

(assert (= (or b!7553809 b!7553805) bm!692600))

(assert (= (or b!7553809 bm!692598) bm!692601))

(assert (=> b!7553804 m!8120206))

(declare-fun m!8120414 () Bool)

(assert (=> d!2313754 m!8120414))

(assert (=> d!2313754 m!8118994))

(assert (=> bm!692600 m!8119176))

(declare-fun m!8120416 () Bool)

(assert (=> bm!692600 m!8120416))

(assert (=> bm!692601 m!8119176))

(declare-fun m!8120418 () Bool)

(assert (=> bm!692601 m!8120418))

(assert (=> b!7552555 d!2313754))

(assert (=> b!7552555 d!2313556))

(assert (=> b!7552555 d!2313536))

(assert (=> b!7552450 d!2313192))

(assert (=> b!7552450 d!2313318))

(declare-fun b!7553812 () Bool)

(declare-fun res!3027633 () Bool)

(declare-fun e!4499351 () Bool)

(assert (=> b!7553812 (=> res!3027633 e!4499351)))

(declare-fun e!4499349 () Bool)

(assert (=> b!7553812 (= res!3027633 e!4499349)))

(declare-fun res!3027634 () Bool)

(assert (=> b!7553812 (=> (not res!3027634) (not e!4499349))))

(declare-fun lt!2647627 () Bool)

(assert (=> b!7553812 (= res!3027634 lt!2647627)))

(declare-fun bm!692602 () Bool)

(declare-fun call!692607 () Bool)

(assert (=> bm!692602 (= call!692607 (isEmpty!41402 (tail!15085 lt!2647376)))))

(declare-fun b!7553813 () Bool)

(declare-fun e!4499348 () Bool)

(assert (=> b!7553813 (= e!4499348 (= lt!2647627 call!692607))))

(declare-fun b!7553815 () Bool)

(declare-fun e!4499353 () Bool)

(assert (=> b!7553815 (= e!4499351 e!4499353)))

(declare-fun res!3027630 () Bool)

(assert (=> b!7553815 (=> (not res!3027630) (not e!4499353))))

(assert (=> b!7553815 (= res!3027630 (not lt!2647627))))

(declare-fun b!7553816 () Bool)

(declare-fun e!4499352 () Bool)

(assert (=> b!7553816 (= e!4499352 (nullable!8706 (derivativeStep!5743 r!24333 (head!15543 lt!2647376))))))

(declare-fun b!7553817 () Bool)

(declare-fun e!4499354 () Bool)

(assert (=> b!7553817 (= e!4499354 (not lt!2647627))))

(declare-fun b!7553818 () Bool)

(declare-fun res!3027632 () Bool)

(assert (=> b!7553818 (=> (not res!3027632) (not e!4499349))))

(assert (=> b!7553818 (= res!3027632 (not call!692607))))

(declare-fun b!7553819 () Bool)

(declare-fun e!4499350 () Bool)

(assert (=> b!7553819 (= e!4499350 (not (= (head!15543 (tail!15085 lt!2647376)) (c!1393902 (derivativeStep!5743 r!24333 (head!15543 lt!2647376))))))))

(declare-fun b!7553820 () Bool)

(assert (=> b!7553820 (= e!4499352 (matchR!9555 (derivativeStep!5743 (derivativeStep!5743 r!24333 (head!15543 lt!2647376)) (head!15543 (tail!15085 lt!2647376))) (tail!15085 (tail!15085 lt!2647376))))))

(declare-fun b!7553821 () Bool)

(assert (=> b!7553821 (= e!4499348 e!4499354)))

(declare-fun c!1394257 () Bool)

(assert (=> b!7553821 (= c!1394257 ((_ is EmptyLang!19953) (derivativeStep!5743 r!24333 (head!15543 lt!2647376))))))

(declare-fun b!7553822 () Bool)

(declare-fun res!3027629 () Bool)

(assert (=> b!7553822 (=> res!3027629 e!4499350)))

(assert (=> b!7553822 (= res!3027629 (not (isEmpty!41402 (tail!15085 (tail!15085 lt!2647376)))))))

(declare-fun b!7553823 () Bool)

(declare-fun res!3027628 () Bool)

(assert (=> b!7553823 (=> res!3027628 e!4499351)))

(assert (=> b!7553823 (= res!3027628 (not ((_ is ElementMatch!19953) (derivativeStep!5743 r!24333 (head!15543 lt!2647376)))))))

(assert (=> b!7553823 (= e!4499354 e!4499351)))

(declare-fun b!7553824 () Bool)

(assert (=> b!7553824 (= e!4499353 e!4499350)))

(declare-fun res!3027635 () Bool)

(assert (=> b!7553824 (=> res!3027635 e!4499350)))

(assert (=> b!7553824 (= res!3027635 call!692607)))

(declare-fun b!7553825 () Bool)

(assert (=> b!7553825 (= e!4499349 (= (head!15543 (tail!15085 lt!2647376)) (c!1393902 (derivativeStep!5743 r!24333 (head!15543 lt!2647376)))))))

(declare-fun d!2313756 () Bool)

(assert (=> d!2313756 e!4499348))

(declare-fun c!1394256 () Bool)

(assert (=> d!2313756 (= c!1394256 ((_ is EmptyExpr!19953) (derivativeStep!5743 r!24333 (head!15543 lt!2647376))))))

(assert (=> d!2313756 (= lt!2647627 e!4499352)))

(declare-fun c!1394258 () Bool)

(assert (=> d!2313756 (= c!1394258 (isEmpty!41402 (tail!15085 lt!2647376)))))

(assert (=> d!2313756 (validRegex!10381 (derivativeStep!5743 r!24333 (head!15543 lt!2647376)))))

(assert (=> d!2313756 (= (matchR!9555 (derivativeStep!5743 r!24333 (head!15543 lt!2647376)) (tail!15085 lt!2647376)) lt!2647627)))

(declare-fun b!7553814 () Bool)

(declare-fun res!3027631 () Bool)

(assert (=> b!7553814 (=> (not res!3027631) (not e!4499349))))

(assert (=> b!7553814 (= res!3027631 (isEmpty!41402 (tail!15085 (tail!15085 lt!2647376))))))

(assert (= (and d!2313756 c!1394258) b!7553816))

(assert (= (and d!2313756 (not c!1394258)) b!7553820))

(assert (= (and d!2313756 c!1394256) b!7553813))

(assert (= (and d!2313756 (not c!1394256)) b!7553821))

(assert (= (and b!7553821 c!1394257) b!7553817))

(assert (= (and b!7553821 (not c!1394257)) b!7553823))

(assert (= (and b!7553823 (not res!3027628)) b!7553812))

(assert (= (and b!7553812 res!3027634) b!7553818))

(assert (= (and b!7553818 res!3027632) b!7553814))

(assert (= (and b!7553814 res!3027631) b!7553825))

(assert (= (and b!7553812 (not res!3027633)) b!7553815))

(assert (= (and b!7553815 res!3027630) b!7553824))

(assert (= (and b!7553824 (not res!3027635)) b!7553822))

(assert (= (and b!7553822 (not res!3027629)) b!7553819))

(assert (= (or b!7553813 b!7553818 b!7553824) bm!692602))

(assert (=> b!7553820 m!8119004))

(declare-fun m!8120420 () Bool)

(assert (=> b!7553820 m!8120420))

(assert (=> b!7553820 m!8119414))

(assert (=> b!7553820 m!8120420))

(declare-fun m!8120422 () Bool)

(assert (=> b!7553820 m!8120422))

(assert (=> b!7553820 m!8119004))

(declare-fun m!8120424 () Bool)

(assert (=> b!7553820 m!8120424))

(assert (=> b!7553820 m!8120422))

(assert (=> b!7553820 m!8120424))

(declare-fun m!8120426 () Bool)

(assert (=> b!7553820 m!8120426))

(assert (=> b!7553814 m!8119004))

(assert (=> b!7553814 m!8120424))

(assert (=> b!7553814 m!8120424))

(declare-fun m!8120428 () Bool)

(assert (=> b!7553814 m!8120428))

(assert (=> b!7553825 m!8119004))

(assert (=> b!7553825 m!8120420))

(assert (=> b!7553822 m!8119004))

(assert (=> b!7553822 m!8120424))

(assert (=> b!7553822 m!8120424))

(assert (=> b!7553822 m!8120428))

(assert (=> d!2313756 m!8119004))

(assert (=> d!2313756 m!8119418))

(assert (=> d!2313756 m!8119414))

(declare-fun m!8120430 () Bool)

(assert (=> d!2313756 m!8120430))

(assert (=> b!7553816 m!8119414))

(declare-fun m!8120432 () Bool)

(assert (=> b!7553816 m!8120432))

(assert (=> bm!692602 m!8119004))

(assert (=> bm!692602 m!8119418))

(assert (=> b!7553819 m!8119004))

(assert (=> b!7553819 m!8120420))

(assert (=> b!7552740 d!2313756))

(declare-fun b!7553826 () Bool)

(declare-fun c!1394262 () Bool)

(assert (=> b!7553826 (= c!1394262 ((_ is Union!19953) r!24333))))

(declare-fun e!4499358 () Regex!19953)

(declare-fun e!4499356 () Regex!19953)

(assert (=> b!7553826 (= e!4499358 e!4499356)))

(declare-fun bm!692603 () Bool)

(declare-fun call!692608 () Regex!19953)

(declare-fun call!692609 () Regex!19953)

(assert (=> bm!692603 (= call!692608 call!692609)))

(declare-fun b!7553827 () Bool)

(declare-fun e!4499357 () Regex!19953)

(assert (=> b!7553827 (= e!4499357 EmptyLang!19953)))

(declare-fun call!692611 () Regex!19953)

(declare-fun e!4499355 () Regex!19953)

(declare-fun call!692610 () Regex!19953)

(declare-fun b!7553829 () Bool)

(assert (=> b!7553829 (= e!4499355 (Union!19953 (Concat!28798 call!692610 (regTwo!40418 r!24333)) call!692611))))

(declare-fun b!7553830 () Bool)

(assert (=> b!7553830 (= e!4499357 e!4499358)))

(declare-fun c!1394263 () Bool)

(assert (=> b!7553830 (= c!1394263 ((_ is ElementMatch!19953) r!24333))))

(declare-fun b!7553831 () Bool)

(assert (=> b!7553831 (= e!4499355 (Union!19953 (Concat!28798 call!692610 (regTwo!40418 r!24333)) EmptyLang!19953))))

(declare-fun bm!692604 () Bool)

(assert (=> bm!692604 (= call!692610 call!692608)))

(declare-fun b!7553832 () Bool)

(declare-fun e!4499359 () Regex!19953)

(assert (=> b!7553832 (= e!4499356 e!4499359)))

(declare-fun c!1394259 () Bool)

(assert (=> b!7553832 (= c!1394259 ((_ is Star!19953) r!24333))))

(declare-fun b!7553833 () Bool)

(assert (=> b!7553833 (= e!4499356 (Union!19953 call!692609 call!692611))))

(declare-fun b!7553828 () Bool)

(declare-fun c!1394260 () Bool)

(assert (=> b!7553828 (= c!1394260 (nullable!8706 (regOne!40418 r!24333)))))

(assert (=> b!7553828 (= e!4499359 e!4499355)))

(declare-fun d!2313758 () Bool)

(declare-fun lt!2647628 () Regex!19953)

(assert (=> d!2313758 (validRegex!10381 lt!2647628)))

(assert (=> d!2313758 (= lt!2647628 e!4499357)))

(declare-fun c!1394261 () Bool)

(assert (=> d!2313758 (= c!1394261 (or ((_ is EmptyExpr!19953) r!24333) ((_ is EmptyLang!19953) r!24333)))))

(assert (=> d!2313758 (validRegex!10381 r!24333)))

(assert (=> d!2313758 (= (derivativeStep!5743 r!24333 (head!15543 lt!2647376)) lt!2647628)))

(declare-fun bm!692605 () Bool)

(assert (=> bm!692605 (= call!692611 (derivativeStep!5743 (ite c!1394262 (regTwo!40419 r!24333) (regTwo!40418 r!24333)) (head!15543 lt!2647376)))))

(declare-fun b!7553834 () Bool)

(assert (=> b!7553834 (= e!4499359 (Concat!28798 call!692608 r!24333))))

(declare-fun bm!692606 () Bool)

(assert (=> bm!692606 (= call!692609 (derivativeStep!5743 (ite c!1394262 (regOne!40419 r!24333) (ite c!1394259 (reg!20282 r!24333) (regOne!40418 r!24333))) (head!15543 lt!2647376)))))

(declare-fun b!7553835 () Bool)

(assert (=> b!7553835 (= e!4499358 (ite (= (head!15543 lt!2647376) (c!1393902 r!24333)) EmptyExpr!19953 EmptyLang!19953))))

(assert (= (and d!2313758 c!1394261) b!7553827))

(assert (= (and d!2313758 (not c!1394261)) b!7553830))

(assert (= (and b!7553830 c!1394263) b!7553835))

(assert (= (and b!7553830 (not c!1394263)) b!7553826))

(assert (= (and b!7553826 c!1394262) b!7553833))

(assert (= (and b!7553826 (not c!1394262)) b!7553832))

(assert (= (and b!7553832 c!1394259) b!7553834))

(assert (= (and b!7553832 (not c!1394259)) b!7553828))

(assert (= (and b!7553828 c!1394260) b!7553829))

(assert (= (and b!7553828 (not c!1394260)) b!7553831))

(assert (= (or b!7553829 b!7553831) bm!692604))

(assert (= (or b!7553834 bm!692604) bm!692603))

(assert (= (or b!7553833 b!7553829) bm!692605))

(assert (= (or b!7553833 bm!692603) bm!692606))

(assert (=> b!7553828 m!8119268))

(declare-fun m!8120434 () Bool)

(assert (=> d!2313758 m!8120434))

(assert (=> d!2313758 m!8119032))

(assert (=> bm!692605 m!8118990))

(declare-fun m!8120436 () Bool)

(assert (=> bm!692605 m!8120436))

(assert (=> bm!692606 m!8118990))

(declare-fun m!8120438 () Bool)

(assert (=> bm!692606 m!8120438))

(assert (=> b!7552740 d!2313758))

(assert (=> b!7552740 d!2313180))

(assert (=> b!7552740 d!2313202))

(declare-fun b!7553836 () Bool)

(declare-fun e!4499360 () List!72836)

(assert (=> b!7553836 (= e!4499360 lt!2647374)))

(declare-fun b!7553837 () Bool)

(assert (=> b!7553837 (= e!4499360 (Cons!72712 (h!79160 (t!387559 lt!2647376)) (++!17469 (t!387559 (t!387559 lt!2647376)) lt!2647374)))))

(declare-fun d!2313760 () Bool)

(declare-fun e!4499361 () Bool)

(assert (=> d!2313760 e!4499361))

(declare-fun res!3027637 () Bool)

(assert (=> d!2313760 (=> (not res!3027637) (not e!4499361))))

(declare-fun lt!2647629 () List!72836)

(assert (=> d!2313760 (= res!3027637 (= (content!15394 lt!2647629) ((_ map or) (content!15394 (t!387559 lt!2647376)) (content!15394 lt!2647374))))))

(assert (=> d!2313760 (= lt!2647629 e!4499360)))

(declare-fun c!1394264 () Bool)

(assert (=> d!2313760 (= c!1394264 ((_ is Nil!72712) (t!387559 lt!2647376)))))

(assert (=> d!2313760 (= (++!17469 (t!387559 lt!2647376) lt!2647374) lt!2647629)))

(declare-fun b!7553839 () Bool)

(assert (=> b!7553839 (= e!4499361 (or (not (= lt!2647374 Nil!72712)) (= lt!2647629 (t!387559 lt!2647376))))))

(declare-fun b!7553838 () Bool)

(declare-fun res!3027636 () Bool)

(assert (=> b!7553838 (=> (not res!3027636) (not e!4499361))))

(assert (=> b!7553838 (= res!3027636 (= (size!42449 lt!2647629) (+ (size!42449 (t!387559 lt!2647376)) (size!42449 lt!2647374))))))

(assert (= (and d!2313760 c!1394264) b!7553836))

(assert (= (and d!2313760 (not c!1394264)) b!7553837))

(assert (= (and d!2313760 res!3027637) b!7553838))

(assert (= (and b!7553838 res!3027636) b!7553839))

(declare-fun m!8120440 () Bool)

(assert (=> b!7553837 m!8120440))

(declare-fun m!8120442 () Bool)

(assert (=> d!2313760 m!8120442))

(assert (=> d!2313760 m!8120358))

(assert (=> d!2313760 m!8119324))

(declare-fun m!8120444 () Bool)

(assert (=> b!7553838 m!8120444))

(assert (=> b!7553838 m!8119978))

(assert (=> b!7553838 m!8119328))

(assert (=> b!7552868 d!2313760))

(declare-fun d!2313762 () Bool)

(declare-fun lt!2647630 () List!72836)

(assert (=> d!2313762 (= (++!17469 (t!387559 testedP!423) lt!2647630) (tail!15085 knownP!30))))

(declare-fun e!4499362 () List!72836)

(assert (=> d!2313762 (= lt!2647630 e!4499362)))

(declare-fun c!1394265 () Bool)

(assert (=> d!2313762 (= c!1394265 ((_ is Cons!72712) (t!387559 testedP!423)))))

(assert (=> d!2313762 (>= (size!42449 (tail!15085 knownP!30)) (size!42449 (t!387559 testedP!423)))))

(assert (=> d!2313762 (= (getSuffix!3639 (tail!15085 knownP!30) (t!387559 testedP!423)) lt!2647630)))

(declare-fun b!7553840 () Bool)

(assert (=> b!7553840 (= e!4499362 (getSuffix!3639 (tail!15085 (tail!15085 knownP!30)) (t!387559 (t!387559 testedP!423))))))

(declare-fun b!7553841 () Bool)

(assert (=> b!7553841 (= e!4499362 (tail!15085 knownP!30))))

(assert (= (and d!2313762 c!1394265) b!7553840))

(assert (= (and d!2313762 (not c!1394265)) b!7553841))

(declare-fun m!8120446 () Bool)

(assert (=> d!2313762 m!8120446))

(assert (=> d!2313762 m!8119180))

(assert (=> d!2313762 m!8119942))

(assert (=> d!2313762 m!8119492))

(assert (=> b!7553840 m!8119180))

(assert (=> b!7553840 m!8119930))

(assert (=> b!7553840 m!8119930))

(declare-fun m!8120448 () Bool)

(assert (=> b!7553840 m!8120448))

(assert (=> b!7552746 d!2313762))

(assert (=> b!7552746 d!2313536))

(declare-fun d!2313764 () Bool)

(declare-fun lt!2647631 () Int)

(assert (=> d!2313764 (>= lt!2647631 0)))

(declare-fun e!4499363 () Int)

(assert (=> d!2313764 (= lt!2647631 e!4499363)))

(declare-fun c!1394266 () Bool)

(assert (=> d!2313764 (= c!1394266 ((_ is Nil!72712) lt!2647505))))

(assert (=> d!2313764 (= (size!42449 lt!2647505) lt!2647631)))

(declare-fun b!7553842 () Bool)

(assert (=> b!7553842 (= e!4499363 0)))

(declare-fun b!7553843 () Bool)

(assert (=> b!7553843 (= e!4499363 (+ 1 (size!42449 (t!387559 lt!2647505))))))

(assert (= (and d!2313764 c!1394266) b!7553842))

(assert (= (and d!2313764 (not c!1394266)) b!7553843))

(declare-fun m!8120450 () Bool)

(assert (=> b!7553843 m!8120450))

(assert (=> b!7552861 d!2313764))

(assert (=> b!7552861 d!2313516))

(assert (=> b!7552861 d!2313744))

(declare-fun b!7553844 () Bool)

(declare-fun e!4499364 () List!72836)

(assert (=> b!7553844 (= e!4499364 lt!2647374)))

(declare-fun b!7553845 () Bool)

(assert (=> b!7553845 (= e!4499364 (Cons!72712 (h!79160 (t!387559 knownP!30)) (++!17469 (t!387559 (t!387559 knownP!30)) lt!2647374)))))

(declare-fun d!2313766 () Bool)

(declare-fun e!4499365 () Bool)

(assert (=> d!2313766 e!4499365))

(declare-fun res!3027639 () Bool)

(assert (=> d!2313766 (=> (not res!3027639) (not e!4499365))))

(declare-fun lt!2647632 () List!72836)

(assert (=> d!2313766 (= res!3027639 (= (content!15394 lt!2647632) ((_ map or) (content!15394 (t!387559 knownP!30)) (content!15394 lt!2647374))))))

(assert (=> d!2313766 (= lt!2647632 e!4499364)))

(declare-fun c!1394267 () Bool)

(assert (=> d!2313766 (= c!1394267 ((_ is Nil!72712) (t!387559 knownP!30)))))

(assert (=> d!2313766 (= (++!17469 (t!387559 knownP!30) lt!2647374) lt!2647632)))

(declare-fun b!7553847 () Bool)

(assert (=> b!7553847 (= e!4499365 (or (not (= lt!2647374 Nil!72712)) (= lt!2647632 (t!387559 knownP!30))))))

(declare-fun b!7553846 () Bool)

(declare-fun res!3027638 () Bool)

(assert (=> b!7553846 (=> (not res!3027638) (not e!4499365))))

(assert (=> b!7553846 (= res!3027638 (= (size!42449 lt!2647632) (+ (size!42449 (t!387559 knownP!30)) (size!42449 lt!2647374))))))

(assert (= (and d!2313766 c!1394267) b!7553844))

(assert (= (and d!2313766 (not c!1394267)) b!7553845))

(assert (= (and d!2313766 res!3027639) b!7553846))

(assert (= (and b!7553846 res!3027638) b!7553847))

(declare-fun m!8120452 () Bool)

(assert (=> b!7553845 m!8120452))

(declare-fun m!8120454 () Bool)

(assert (=> d!2313766 m!8120454))

(assert (=> d!2313766 m!8120264))

(assert (=> d!2313766 m!8119324))

(declare-fun m!8120456 () Bool)

(assert (=> b!7553846 m!8120456))

(assert (=> b!7553846 m!8119494))

(assert (=> b!7553846 m!8119328))

(assert (=> b!7552669 d!2313766))

(declare-fun d!2313768 () Bool)

(declare-fun lt!2647633 () Int)

(assert (=> d!2313768 (>= lt!2647633 0)))

(declare-fun e!4499366 () Int)

(assert (=> d!2313768 (= lt!2647633 e!4499366)))

(declare-fun c!1394268 () Bool)

(assert (=> d!2313768 (= c!1394268 ((_ is Nil!72712) lt!2647504))))

(assert (=> d!2313768 (= (size!42449 lt!2647504) lt!2647633)))

(declare-fun b!7553848 () Bool)

(assert (=> b!7553848 (= e!4499366 0)))

(declare-fun b!7553849 () Bool)

(assert (=> b!7553849 (= e!4499366 (+ 1 (size!42449 (t!387559 lt!2647504))))))

(assert (= (and d!2313768 c!1394268) b!7553848))

(assert (= (and d!2313768 (not c!1394268)) b!7553849))

(declare-fun m!8120458 () Bool)

(assert (=> b!7553849 m!8120458))

(assert (=> b!7552849 d!2313768))

(assert (=> b!7552849 d!2313316))

(assert (=> b!7552849 d!2313548))

(assert (=> d!2313258 d!2313262))

(declare-fun b!7553850 () Bool)

(declare-fun e!4499369 () Bool)

(declare-fun e!4499367 () Bool)

(assert (=> b!7553850 (= e!4499369 e!4499367)))

(declare-fun res!3027642 () Bool)

(assert (=> b!7553850 (=> (not res!3027642) (not e!4499367))))

(assert (=> b!7553850 (= res!3027642 (not ((_ is Nil!72712) input!7874)))))

(declare-fun b!7553851 () Bool)

(declare-fun res!3027643 () Bool)

(assert (=> b!7553851 (=> (not res!3027643) (not e!4499367))))

(assert (=> b!7553851 (= res!3027643 (= (head!15543 (++!17469 testedP!423 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712))) (head!15543 input!7874)))))

(declare-fun b!7553852 () Bool)

(assert (=> b!7553852 (= e!4499367 (isPrefix!6159 (tail!15085 (++!17469 testedP!423 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712))) (tail!15085 input!7874)))))

(declare-fun d!2313770 () Bool)

(declare-fun e!4499368 () Bool)

(assert (=> d!2313770 e!4499368))

(declare-fun res!3027641 () Bool)

(assert (=> d!2313770 (=> res!3027641 e!4499368)))

(declare-fun lt!2647634 () Bool)

(assert (=> d!2313770 (= res!3027641 (not lt!2647634))))

(assert (=> d!2313770 (= lt!2647634 e!4499369)))

(declare-fun res!3027640 () Bool)

(assert (=> d!2313770 (=> res!3027640 e!4499369)))

(assert (=> d!2313770 (= res!3027640 ((_ is Nil!72712) (++!17469 testedP!423 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712))))))

(assert (=> d!2313770 (= (isPrefix!6159 (++!17469 testedP!423 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712)) input!7874) lt!2647634)))

(declare-fun b!7553853 () Bool)

(assert (=> b!7553853 (= e!4499368 (>= (size!42449 input!7874) (size!42449 (++!17469 testedP!423 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712)))))))

(assert (= (and d!2313770 (not res!3027640)) b!7553850))

(assert (= (and b!7553850 res!3027642) b!7553851))

(assert (= (and b!7553851 res!3027643) b!7553852))

(assert (= (and d!2313770 (not res!3027641)) b!7553853))

(assert (=> b!7553851 m!8119344))

(declare-fun m!8120460 () Bool)

(assert (=> b!7553851 m!8120460))

(assert (=> b!7553851 m!8119178))

(assert (=> b!7553852 m!8119344))

(declare-fun m!8120462 () Bool)

(assert (=> b!7553852 m!8120462))

(assert (=> b!7553852 m!8119182))

(assert (=> b!7553852 m!8120462))

(assert (=> b!7553852 m!8119182))

(declare-fun m!8120464 () Bool)

(assert (=> b!7553852 m!8120464))

(assert (=> b!7553853 m!8119008))

(assert (=> b!7553853 m!8119344))

(declare-fun m!8120466 () Bool)

(assert (=> b!7553853 m!8120466))

(assert (=> d!2313258 d!2313770))

(declare-fun d!2313772 () Bool)

(assert (=> d!2313772 (isPrefix!6159 (++!17469 testedP!423 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712)) input!7874)))

(assert (=> d!2313772 true))

(declare-fun _$65!1898 () Unit!166844)

(assert (=> d!2313772 (= (choose!58460 testedP!423 input!7874) _$65!1898)))

(declare-fun bs!1940261 () Bool)

(assert (= bs!1940261 d!2313772))

(assert (=> bs!1940261 m!8119056))

(assert (=> bs!1940261 m!8119056))

(assert (=> bs!1940261 m!8119346))

(assert (=> bs!1940261 m!8119344))

(assert (=> bs!1940261 m!8119344))

(assert (=> bs!1940261 m!8119348))

(assert (=> d!2313258 d!2313772))

(assert (=> d!2313258 d!2313276))

(declare-fun b!7553854 () Bool)

(declare-fun e!4499370 () List!72836)

(assert (=> b!7553854 (= e!4499370 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712))))

(declare-fun b!7553855 () Bool)

(assert (=> b!7553855 (= e!4499370 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712))))))

(declare-fun d!2313774 () Bool)

(declare-fun e!4499371 () Bool)

(assert (=> d!2313774 e!4499371))

(declare-fun res!3027645 () Bool)

(assert (=> d!2313774 (=> (not res!3027645) (not e!4499371))))

(declare-fun lt!2647635 () List!72836)

(assert (=> d!2313774 (= res!3027645 (= (content!15394 lt!2647635) ((_ map or) (content!15394 testedP!423) (content!15394 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712)))))))

(assert (=> d!2313774 (= lt!2647635 e!4499370)))

(declare-fun c!1394269 () Bool)

(assert (=> d!2313774 (= c!1394269 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313774 (= (++!17469 testedP!423 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712)) lt!2647635)))

(declare-fun b!7553857 () Bool)

(assert (=> b!7553857 (= e!4499371 (or (not (= (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712) Nil!72712)) (= lt!2647635 testedP!423)))))

(declare-fun b!7553856 () Bool)

(declare-fun res!3027644 () Bool)

(assert (=> b!7553856 (=> (not res!3027644) (not e!4499371))))

(assert (=> b!7553856 (= res!3027644 (= (size!42449 lt!2647635) (+ (size!42449 testedP!423) (size!42449 (Cons!72712 (head!15543 (getSuffix!3639 input!7874 testedP!423)) Nil!72712)))))))

(assert (= (and d!2313774 c!1394269) b!7553854))

(assert (= (and d!2313774 (not c!1394269)) b!7553855))

(assert (= (and d!2313774 res!3027645) b!7553856))

(assert (= (and b!7553856 res!3027644) b!7553857))

(declare-fun m!8120468 () Bool)

(assert (=> b!7553855 m!8120468))

(declare-fun m!8120470 () Bool)

(assert (=> d!2313774 m!8120470))

(assert (=> d!2313774 m!8119334))

(declare-fun m!8120472 () Bool)

(assert (=> d!2313774 m!8120472))

(declare-fun m!8120474 () Bool)

(assert (=> b!7553856 m!8120474))

(assert (=> b!7553856 m!8118996))

(declare-fun m!8120476 () Bool)

(assert (=> b!7553856 m!8120476))

(assert (=> d!2313258 d!2313774))

(declare-fun d!2313776 () Bool)

(assert (=> d!2313776 (= (head!15543 (getSuffix!3639 input!7874 testedP!423)) (h!79160 (getSuffix!3639 input!7874 testedP!423)))))

(assert (=> d!2313258 d!2313776))

(declare-fun d!2313778 () Bool)

(assert (=> d!2313778 (= (isEmpty!41402 knownP!30) ((_ is Nil!72712) knownP!30))))

(assert (=> d!2313212 d!2313778))

(assert (=> d!2313212 d!2313314))

(declare-fun d!2313780 () Bool)

(assert (=> d!2313780 (= (++!17469 (++!17469 testedP!423 lt!2647383) lt!2647385) (++!17469 testedP!423 (++!17469 lt!2647383 lt!2647385)))))

(assert (=> d!2313780 true))

(declare-fun _$52!2478 () Unit!166844)

(assert (=> d!2313780 (= (choose!58465 testedP!423 lt!2647383 lt!2647385) _$52!2478)))

(declare-fun bs!1940262 () Bool)

(assert (= bs!1940262 d!2313780))

(assert (=> bs!1940262 m!8119068))

(assert (=> bs!1940262 m!8119068))

(assert (=> bs!1940262 m!8119482))

(assert (=> bs!1940262 m!8119038))

(assert (=> bs!1940262 m!8119038))

(assert (=> bs!1940262 m!8119480))

(assert (=> d!2313300 d!2313780))

(declare-fun b!7553858 () Bool)

(declare-fun e!4499372 () List!72836)

(assert (=> b!7553858 (= e!4499372 lt!2647385)))

(declare-fun b!7553859 () Bool)

(assert (=> b!7553859 (= e!4499372 (Cons!72712 (h!79160 (++!17469 testedP!423 lt!2647383)) (++!17469 (t!387559 (++!17469 testedP!423 lt!2647383)) lt!2647385)))))

(declare-fun d!2313782 () Bool)

(declare-fun e!4499373 () Bool)

(assert (=> d!2313782 e!4499373))

(declare-fun res!3027647 () Bool)

(assert (=> d!2313782 (=> (not res!3027647) (not e!4499373))))

(declare-fun lt!2647636 () List!72836)

(assert (=> d!2313782 (= res!3027647 (= (content!15394 lt!2647636) ((_ map or) (content!15394 (++!17469 testedP!423 lt!2647383)) (content!15394 lt!2647385))))))

(assert (=> d!2313782 (= lt!2647636 e!4499372)))

(declare-fun c!1394270 () Bool)

(assert (=> d!2313782 (= c!1394270 ((_ is Nil!72712) (++!17469 testedP!423 lt!2647383)))))

(assert (=> d!2313782 (= (++!17469 (++!17469 testedP!423 lt!2647383) lt!2647385) lt!2647636)))

(declare-fun b!7553861 () Bool)

(assert (=> b!7553861 (= e!4499373 (or (not (= lt!2647385 Nil!72712)) (= lt!2647636 (++!17469 testedP!423 lt!2647383))))))

(declare-fun b!7553860 () Bool)

(declare-fun res!3027646 () Bool)

(assert (=> b!7553860 (=> (not res!3027646) (not e!4499373))))

(assert (=> b!7553860 (= res!3027646 (= (size!42449 lt!2647636) (+ (size!42449 (++!17469 testedP!423 lt!2647383)) (size!42449 lt!2647385))))))

(assert (= (and d!2313782 c!1394270) b!7553858))

(assert (= (and d!2313782 (not c!1394270)) b!7553859))

(assert (= (and d!2313782 res!3027647) b!7553860))

(assert (= (and b!7553860 res!3027646) b!7553861))

(declare-fun m!8120478 () Bool)

(assert (=> b!7553859 m!8120478))

(declare-fun m!8120480 () Bool)

(assert (=> d!2313782 m!8120480))

(assert (=> d!2313782 m!8119068))

(declare-fun m!8120482 () Bool)

(assert (=> d!2313782 m!8120482))

(assert (=> d!2313782 m!8119456))

(declare-fun m!8120484 () Bool)

(assert (=> b!7553860 m!8120484))

(assert (=> b!7553860 m!8119068))

(declare-fun m!8120486 () Bool)

(assert (=> b!7553860 m!8120486))

(assert (=> b!7553860 m!8119460))

(assert (=> d!2313300 d!2313782))

(assert (=> d!2313300 d!2313254))

(assert (=> d!2313300 d!2313296))

(declare-fun b!7553862 () Bool)

(declare-fun e!4499374 () List!72836)

(assert (=> b!7553862 (= e!4499374 (++!17469 lt!2647383 lt!2647385))))

(declare-fun b!7553863 () Bool)

(assert (=> b!7553863 (= e!4499374 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) (++!17469 lt!2647383 lt!2647385))))))

(declare-fun d!2313784 () Bool)

(declare-fun e!4499375 () Bool)

(assert (=> d!2313784 e!4499375))

(declare-fun res!3027649 () Bool)

(assert (=> d!2313784 (=> (not res!3027649) (not e!4499375))))

(declare-fun lt!2647637 () List!72836)

(assert (=> d!2313784 (= res!3027649 (= (content!15394 lt!2647637) ((_ map or) (content!15394 testedP!423) (content!15394 (++!17469 lt!2647383 lt!2647385)))))))

(assert (=> d!2313784 (= lt!2647637 e!4499374)))

(declare-fun c!1394271 () Bool)

(assert (=> d!2313784 (= c!1394271 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313784 (= (++!17469 testedP!423 (++!17469 lt!2647383 lt!2647385)) lt!2647637)))

(declare-fun b!7553865 () Bool)

(assert (=> b!7553865 (= e!4499375 (or (not (= (++!17469 lt!2647383 lt!2647385) Nil!72712)) (= lt!2647637 testedP!423)))))

(declare-fun b!7553864 () Bool)

(declare-fun res!3027648 () Bool)

(assert (=> b!7553864 (=> (not res!3027648) (not e!4499375))))

(assert (=> b!7553864 (= res!3027648 (= (size!42449 lt!2647637) (+ (size!42449 testedP!423) (size!42449 (++!17469 lt!2647383 lt!2647385)))))))

(assert (= (and d!2313784 c!1394271) b!7553862))

(assert (= (and d!2313784 (not c!1394271)) b!7553863))

(assert (= (and d!2313784 res!3027649) b!7553864))

(assert (= (and b!7553864 res!3027648) b!7553865))

(assert (=> b!7553863 m!8119038))

(declare-fun m!8120488 () Bool)

(assert (=> b!7553863 m!8120488))

(declare-fun m!8120490 () Bool)

(assert (=> d!2313784 m!8120490))

(assert (=> d!2313784 m!8119334))

(assert (=> d!2313784 m!8119038))

(declare-fun m!8120492 () Bool)

(assert (=> d!2313784 m!8120492))

(declare-fun m!8120494 () Bool)

(assert (=> b!7553864 m!8120494))

(assert (=> b!7553864 m!8118996))

(assert (=> b!7553864 m!8119038))

(declare-fun m!8120496 () Bool)

(assert (=> b!7553864 m!8120496))

(assert (=> d!2313300 d!2313784))

(declare-fun b!7553866 () Bool)

(declare-fun e!4499376 () List!72836)

(assert (=> b!7553866 (= e!4499376 lt!2647476)))

(declare-fun b!7553867 () Bool)

(assert (=> b!7553867 (= e!4499376 (Cons!72712 (h!79160 knownP!30) (++!17469 (t!387559 knownP!30) lt!2647476)))))

(declare-fun d!2313786 () Bool)

(declare-fun e!4499377 () Bool)

(assert (=> d!2313786 e!4499377))

(declare-fun res!3027651 () Bool)

(assert (=> d!2313786 (=> (not res!3027651) (not e!4499377))))

(declare-fun lt!2647638 () List!72836)

(assert (=> d!2313786 (= res!3027651 (= (content!15394 lt!2647638) ((_ map or) (content!15394 knownP!30) (content!15394 lt!2647476))))))

(assert (=> d!2313786 (= lt!2647638 e!4499376)))

(declare-fun c!1394272 () Bool)

(assert (=> d!2313786 (= c!1394272 ((_ is Nil!72712) knownP!30))))

(assert (=> d!2313786 (= (++!17469 knownP!30 lt!2647476) lt!2647638)))

(declare-fun b!7553869 () Bool)

(assert (=> b!7553869 (= e!4499377 (or (not (= lt!2647476 Nil!72712)) (= lt!2647638 knownP!30)))))

(declare-fun b!7553868 () Bool)

(declare-fun res!3027650 () Bool)

(assert (=> b!7553868 (=> (not res!3027650) (not e!4499377))))

(assert (=> b!7553868 (= res!3027650 (= (size!42449 lt!2647638) (+ (size!42449 knownP!30) (size!42449 lt!2647476))))))

(assert (= (and d!2313786 c!1394272) b!7553866))

(assert (= (and d!2313786 (not c!1394272)) b!7553867))

(assert (= (and d!2313786 res!3027651) b!7553868))

(assert (= (and b!7553868 res!3027650) b!7553869))

(declare-fun m!8120498 () Bool)

(assert (=> b!7553867 m!8120498))

(declare-fun m!8120500 () Bool)

(assert (=> d!2313786 m!8120500))

(assert (=> d!2313786 m!8119322))

(declare-fun m!8120502 () Bool)

(assert (=> d!2313786 m!8120502))

(declare-fun m!8120504 () Bool)

(assert (=> b!7553868 m!8120504))

(assert (=> b!7553868 m!8118998))

(declare-fun m!8120506 () Bool)

(assert (=> b!7553868 m!8120506))

(assert (=> d!2313266 d!2313786))

(assert (=> d!2313266 d!2313192))

(assert (=> d!2313266 d!2313318))

(declare-fun bm!692607 () Bool)

(declare-fun call!692613 () Bool)

(declare-fun call!692614 () Bool)

(assert (=> bm!692607 (= call!692613 call!692614)))

(declare-fun b!7553870 () Bool)

(declare-fun e!4499380 () Bool)

(declare-fun e!4499383 () Bool)

(assert (=> b!7553870 (= e!4499380 e!4499383)))

(declare-fun c!1394273 () Bool)

(assert (=> b!7553870 (= c!1394273 ((_ is Union!19953) (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))))))

(declare-fun b!7553871 () Bool)

(declare-fun res!3027655 () Bool)

(declare-fun e!4499379 () Bool)

(assert (=> b!7553871 (=> (not res!3027655) (not e!4499379))))

(assert (=> b!7553871 (= res!3027655 call!692613)))

(assert (=> b!7553871 (= e!4499383 e!4499379)))

(declare-fun d!2313788 () Bool)

(declare-fun res!3027654 () Bool)

(declare-fun e!4499384 () Bool)

(assert (=> d!2313788 (=> res!3027654 e!4499384)))

(assert (=> d!2313788 (= res!3027654 ((_ is ElementMatch!19953) (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))))))

(assert (=> d!2313788 (= (validRegex!10381 (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))) e!4499384)))

(declare-fun b!7553872 () Bool)

(declare-fun e!4499381 () Bool)

(assert (=> b!7553872 (= e!4499381 call!692614)))

(declare-fun c!1394274 () Bool)

(declare-fun bm!692608 () Bool)

(assert (=> bm!692608 (= call!692614 (validRegex!10381 (ite c!1394274 (reg!20282 (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))) (ite c!1394273 (regOne!40419 (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))) (regOne!40418 (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101))))))))))

(declare-fun b!7553873 () Bool)

(declare-fun res!3027653 () Bool)

(declare-fun e!4499378 () Bool)

(assert (=> b!7553873 (=> res!3027653 e!4499378)))

(assert (=> b!7553873 (= res!3027653 (not ((_ is Concat!28798) (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101))))))))

(assert (=> b!7553873 (= e!4499383 e!4499378)))

(declare-fun b!7553874 () Bool)

(declare-fun e!4499382 () Bool)

(assert (=> b!7553874 (= e!4499378 e!4499382)))

(declare-fun res!3027656 () Bool)

(assert (=> b!7553874 (=> (not res!3027656) (not e!4499382))))

(assert (=> b!7553874 (= res!3027656 call!692613)))

(declare-fun b!7553875 () Bool)

(assert (=> b!7553875 (= e!4499380 e!4499381)))

(declare-fun res!3027652 () Bool)

(assert (=> b!7553875 (= res!3027652 (not (nullable!8706 (reg!20282 (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))))))))

(assert (=> b!7553875 (=> (not res!3027652) (not e!4499381))))

(declare-fun b!7553876 () Bool)

(declare-fun call!692612 () Bool)

(assert (=> b!7553876 (= e!4499379 call!692612)))

(declare-fun bm!692609 () Bool)

(assert (=> bm!692609 (= call!692612 (validRegex!10381 (ite c!1394273 (regTwo!40419 (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))) (regTwo!40418 (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))))))))

(declare-fun b!7553877 () Bool)

(assert (=> b!7553877 (= e!4499382 call!692612)))

(declare-fun b!7553878 () Bool)

(assert (=> b!7553878 (= e!4499384 e!4499380)))

(assert (=> b!7553878 (= c!1394274 ((_ is Star!19953) (ite c!1394021 (reg!20282 baseR!101) (ite c!1394020 (regOne!40419 baseR!101) (regOne!40418 baseR!101)))))))

(assert (= (and d!2313788 (not res!3027654)) b!7553878))

(assert (= (and b!7553878 c!1394274) b!7553875))

(assert (= (and b!7553878 (not c!1394274)) b!7553870))

(assert (= (and b!7553875 res!3027652) b!7553872))

(assert (= (and b!7553870 c!1394273) b!7553871))

(assert (= (and b!7553870 (not c!1394273)) b!7553873))

(assert (= (and b!7553871 res!3027655) b!7553876))

(assert (= (and b!7553873 (not res!3027653)) b!7553874))

(assert (= (and b!7553874 res!3027656) b!7553877))

(assert (= (or b!7553871 b!7553874) bm!692607))

(assert (= (or b!7553876 b!7553877) bm!692609))

(assert (= (or b!7553872 bm!692607) bm!692608))

(declare-fun m!8120508 () Bool)

(assert (=> bm!692608 m!8120508))

(declare-fun m!8120510 () Bool)

(assert (=> b!7553875 m!8120510))

(declare-fun m!8120512 () Bool)

(assert (=> bm!692609 m!8120512))

(assert (=> bm!692502 d!2313788))

(assert (=> d!2313264 d!2313272))

(declare-fun d!2313790 () Bool)

(assert (=> d!2313790 (isPrefix!6159 lt!2647369 knownP!30)))

(assert (=> d!2313790 true))

(declare-fun _$69!404 () Unit!166844)

(assert (=> d!2313790 (= (choose!58462 knownP!30 lt!2647369 input!7874) _$69!404)))

(declare-fun bs!1940263 () Bool)

(assert (= bs!1940263 d!2313790))

(assert (=> bs!1940263 m!8119064))

(assert (=> d!2313264 d!2313790))

(assert (=> d!2313264 d!2313204))

(assert (=> b!7552745 d!2313180))

(declare-fun d!2313792 () Bool)

(declare-fun c!1394275 () Bool)

(assert (=> d!2313792 (= c!1394275 ((_ is Nil!72712) lt!2647483))))

(declare-fun e!4499385 () (InoxSet C!40232))

(assert (=> d!2313792 (= (content!15394 lt!2647483) e!4499385)))

(declare-fun b!7553879 () Bool)

(assert (=> b!7553879 (= e!4499385 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553880 () Bool)

(assert (=> b!7553880 (= e!4499385 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647483) true) (content!15394 (t!387559 lt!2647483))))))

(assert (= (and d!2313792 c!1394275) b!7553879))

(assert (= (and d!2313792 (not c!1394275)) b!7553880))

(declare-fun m!8120514 () Bool)

(assert (=> b!7553880 m!8120514))

(declare-fun m!8120516 () Bool)

(assert (=> b!7553880 m!8120516))

(assert (=> d!2313280 d!2313792))

(assert (=> d!2313280 d!2313678))

(declare-fun d!2313794 () Bool)

(declare-fun c!1394276 () Bool)

(assert (=> d!2313794 (= c!1394276 ((_ is Nil!72712) lt!2647370))))

(declare-fun e!4499386 () (InoxSet C!40232))

(assert (=> d!2313794 (= (content!15394 lt!2647370) e!4499386)))

(declare-fun b!7553881 () Bool)

(assert (=> b!7553881 (= e!4499386 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553882 () Bool)

(assert (=> b!7553882 (= e!4499386 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647370) true) (content!15394 (t!387559 lt!2647370))))))

(assert (= (and d!2313794 c!1394276) b!7553881))

(assert (= (and d!2313794 (not c!1394276)) b!7553882))

(declare-fun m!8120518 () Bool)

(assert (=> b!7553882 m!8120518))

(declare-fun m!8120520 () Bool)

(assert (=> b!7553882 m!8120520))

(assert (=> d!2313280 d!2313794))

(assert (=> d!2313260 d!2313222))

(declare-fun b!7553883 () Bool)

(declare-fun e!4499387 () List!72836)

(assert (=> b!7553883 (= e!4499387 (Cons!72712 lt!2647388 Nil!72712))))

(declare-fun b!7553884 () Bool)

(assert (=> b!7553884 (= e!4499387 (Cons!72712 (h!79160 testedP!423) (++!17469 (t!387559 testedP!423) (Cons!72712 lt!2647388 Nil!72712))))))

(declare-fun d!2313796 () Bool)

(declare-fun e!4499388 () Bool)

(assert (=> d!2313796 e!4499388))

(declare-fun res!3027658 () Bool)

(assert (=> d!2313796 (=> (not res!3027658) (not e!4499388))))

(declare-fun lt!2647639 () List!72836)

(assert (=> d!2313796 (= res!3027658 (= (content!15394 lt!2647639) ((_ map or) (content!15394 testedP!423) (content!15394 (Cons!72712 lt!2647388 Nil!72712)))))))

(assert (=> d!2313796 (= lt!2647639 e!4499387)))

(declare-fun c!1394277 () Bool)

(assert (=> d!2313796 (= c!1394277 ((_ is Nil!72712) testedP!423))))

(assert (=> d!2313796 (= (++!17469 testedP!423 (Cons!72712 lt!2647388 Nil!72712)) lt!2647639)))

(declare-fun b!7553886 () Bool)

(assert (=> b!7553886 (= e!4499388 (or (not (= (Cons!72712 lt!2647388 Nil!72712) Nil!72712)) (= lt!2647639 testedP!423)))))

(declare-fun b!7553885 () Bool)

(declare-fun res!3027657 () Bool)

(assert (=> b!7553885 (=> (not res!3027657) (not e!4499388))))

(assert (=> b!7553885 (= res!3027657 (= (size!42449 lt!2647639) (+ (size!42449 testedP!423) (size!42449 (Cons!72712 lt!2647388 Nil!72712)))))))

(assert (= (and d!2313796 c!1394277) b!7553883))

(assert (= (and d!2313796 (not c!1394277)) b!7553884))

(assert (= (and d!2313796 res!3027658) b!7553885))

(assert (= (and b!7553885 res!3027657) b!7553886))

(declare-fun m!8120522 () Bool)

(assert (=> b!7553884 m!8120522))

(declare-fun m!8120524 () Bool)

(assert (=> d!2313796 m!8120524))

(assert (=> d!2313796 m!8119334))

(declare-fun m!8120526 () Bool)

(assert (=> d!2313796 m!8120526))

(declare-fun m!8120528 () Bool)

(assert (=> b!7553885 m!8120528))

(assert (=> b!7553885 m!8118996))

(declare-fun m!8120530 () Bool)

(assert (=> b!7553885 m!8120530))

(assert (=> d!2313260 d!2313796))

(declare-fun d!2313798 () Bool)

(assert (=> d!2313798 (= (derivative!485 baseR!101 (++!17469 testedP!423 (Cons!72712 lt!2647388 Nil!72712))) (derivativeStep!5743 r!24333 lt!2647388))))

(assert (=> d!2313798 true))

(declare-fun _$109!33 () Unit!166844)

(assert (=> d!2313798 (= (choose!58461 baseR!101 r!24333 testedP!423 lt!2647388) _$109!33)))

(declare-fun bs!1940264 () Bool)

(assert (= bs!1940264 d!2313798))

(assert (=> bs!1940264 m!8119350))

(assert (=> bs!1940264 m!8119350))

(assert (=> bs!1940264 m!8119352))

(assert (=> bs!1940264 m!8119058))

(assert (=> d!2313260 d!2313798))

(declare-fun d!2313800 () Bool)

(declare-fun lt!2647640 () Regex!19953)

(assert (=> d!2313800 (validRegex!10381 lt!2647640)))

(declare-fun e!4499389 () Regex!19953)

(assert (=> d!2313800 (= lt!2647640 e!4499389)))

(declare-fun c!1394279 () Bool)

(assert (=> d!2313800 (= c!1394279 ((_ is Cons!72712) (++!17469 testedP!423 (Cons!72712 lt!2647388 Nil!72712))))))

(assert (=> d!2313800 (validRegex!10381 baseR!101)))

(assert (=> d!2313800 (= (derivative!485 baseR!101 (++!17469 testedP!423 (Cons!72712 lt!2647388 Nil!72712))) lt!2647640)))

(declare-fun b!7553887 () Bool)

(assert (=> b!7553887 (= e!4499389 (derivative!485 (derivativeStep!5743 baseR!101 (h!79160 (++!17469 testedP!423 (Cons!72712 lt!2647388 Nil!72712)))) (t!387559 (++!17469 testedP!423 (Cons!72712 lt!2647388 Nil!72712)))))))

(declare-fun b!7553888 () Bool)

(assert (=> b!7553888 (= e!4499389 baseR!101)))

(assert (= (and d!2313800 c!1394279) b!7553887))

(assert (= (and d!2313800 (not c!1394279)) b!7553888))

(declare-fun m!8120532 () Bool)

(assert (=> d!2313800 m!8120532))

(assert (=> d!2313800 m!8118994))

(declare-fun m!8120534 () Bool)

(assert (=> b!7553887 m!8120534))

(assert (=> b!7553887 m!8120534))

(declare-fun m!8120536 () Bool)

(assert (=> b!7553887 m!8120536))

(assert (=> d!2313260 d!2313800))

(assert (=> d!2313260 d!2313314))

(assert (=> bm!692463 d!2313778))

(assert (=> bm!692497 d!2313734))

(declare-fun d!2313802 () Bool)

(declare-fun c!1394280 () Bool)

(assert (=> d!2313802 (= c!1394280 ((_ is Nil!72712) lt!2647507))))

(declare-fun e!4499390 () (InoxSet C!40232))

(assert (=> d!2313802 (= (content!15394 lt!2647507) e!4499390)))

(declare-fun b!7553889 () Bool)

(assert (=> b!7553889 (= e!4499390 ((as const (Array C!40232 Bool)) false))))

(declare-fun b!7553890 () Bool)

(assert (=> b!7553890 (= e!4499390 ((_ map or) (store ((as const (Array C!40232 Bool)) false) (h!79160 lt!2647507) true) (content!15394 (t!387559 lt!2647507))))))

(assert (= (and d!2313802 c!1394280) b!7553889))

(assert (= (and d!2313802 (not c!1394280)) b!7553890))

(declare-fun m!8120538 () Bool)

(assert (=> b!7553890 m!8120538))

(declare-fun m!8120540 () Bool)

(assert (=> b!7553890 m!8120540))

(assert (=> d!2313328 d!2313802))

(assert (=> d!2313328 d!2313724))

(assert (=> d!2313328 d!2313580))

(declare-fun b!7553894 () Bool)

(declare-fun e!4499391 () Bool)

(declare-fun tp!2197519 () Bool)

(declare-fun tp!2197517 () Bool)

(assert (=> b!7553894 (= e!4499391 (and tp!2197519 tp!2197517))))

(declare-fun b!7553892 () Bool)

(declare-fun tp!2197516 () Bool)

(declare-fun tp!2197518 () Bool)

(assert (=> b!7553892 (= e!4499391 (and tp!2197516 tp!2197518))))

(declare-fun b!7553891 () Bool)

(assert (=> b!7553891 (= e!4499391 tp_is_empty!50261)))

(declare-fun b!7553893 () Bool)

(declare-fun tp!2197515 () Bool)

(assert (=> b!7553893 (= e!4499391 tp!2197515)))

(assert (=> b!7552901 (= tp!2197229 e!4499391)))

(assert (= (and b!7552901 ((_ is ElementMatch!19953) (regOne!40419 (regOne!40418 r!24333)))) b!7553891))

(assert (= (and b!7552901 ((_ is Concat!28798) (regOne!40419 (regOne!40418 r!24333)))) b!7553892))

(assert (= (and b!7552901 ((_ is Star!19953) (regOne!40419 (regOne!40418 r!24333)))) b!7553893))

(assert (= (and b!7552901 ((_ is Union!19953) (regOne!40419 (regOne!40418 r!24333)))) b!7553894))

(declare-fun b!7553898 () Bool)

(declare-fun e!4499392 () Bool)

(declare-fun tp!2197524 () Bool)

(declare-fun tp!2197522 () Bool)

(assert (=> b!7553898 (= e!4499392 (and tp!2197524 tp!2197522))))

(declare-fun b!7553896 () Bool)

(declare-fun tp!2197521 () Bool)

(declare-fun tp!2197523 () Bool)

(assert (=> b!7553896 (= e!4499392 (and tp!2197521 tp!2197523))))

(declare-fun b!7553895 () Bool)

(assert (=> b!7553895 (= e!4499392 tp_is_empty!50261)))

(declare-fun b!7553897 () Bool)

(declare-fun tp!2197520 () Bool)

(assert (=> b!7553897 (= e!4499392 tp!2197520)))

(assert (=> b!7552901 (= tp!2197227 e!4499392)))

(assert (= (and b!7552901 ((_ is ElementMatch!19953) (regTwo!40419 (regOne!40418 r!24333)))) b!7553895))

(assert (= (and b!7552901 ((_ is Concat!28798) (regTwo!40419 (regOne!40418 r!24333)))) b!7553896))

(assert (= (and b!7552901 ((_ is Star!19953) (regTwo!40419 (regOne!40418 r!24333)))) b!7553897))

(assert (= (and b!7552901 ((_ is Union!19953) (regTwo!40419 (regOne!40418 r!24333)))) b!7553898))

(declare-fun b!7553902 () Bool)

(declare-fun e!4499393 () Bool)

(declare-fun tp!2197529 () Bool)

(declare-fun tp!2197527 () Bool)

(assert (=> b!7553902 (= e!4499393 (and tp!2197529 tp!2197527))))

(declare-fun b!7553900 () Bool)

(declare-fun tp!2197526 () Bool)

(declare-fun tp!2197528 () Bool)

(assert (=> b!7553900 (= e!4499393 (and tp!2197526 tp!2197528))))

(declare-fun b!7553899 () Bool)

(assert (=> b!7553899 (= e!4499393 tp_is_empty!50261)))

(declare-fun b!7553901 () Bool)

(declare-fun tp!2197525 () Bool)

(assert (=> b!7553901 (= e!4499393 tp!2197525)))

(assert (=> b!7552925 (= tp!2197258 e!4499393)))

(assert (= (and b!7552925 ((_ is ElementMatch!19953) (regOne!40418 (reg!20282 baseR!101)))) b!7553899))

(assert (= (and b!7552925 ((_ is Concat!28798) (regOne!40418 (reg!20282 baseR!101)))) b!7553900))

(assert (= (and b!7552925 ((_ is Star!19953) (regOne!40418 (reg!20282 baseR!101)))) b!7553901))

(assert (= (and b!7552925 ((_ is Union!19953) (regOne!40418 (reg!20282 baseR!101)))) b!7553902))

(declare-fun b!7553906 () Bool)

(declare-fun e!4499394 () Bool)

(declare-fun tp!2197534 () Bool)

(declare-fun tp!2197532 () Bool)

(assert (=> b!7553906 (= e!4499394 (and tp!2197534 tp!2197532))))

(declare-fun b!7553904 () Bool)

(declare-fun tp!2197531 () Bool)

(declare-fun tp!2197533 () Bool)

(assert (=> b!7553904 (= e!4499394 (and tp!2197531 tp!2197533))))

(declare-fun b!7553903 () Bool)

(assert (=> b!7553903 (= e!4499394 tp_is_empty!50261)))

(declare-fun b!7553905 () Bool)

(declare-fun tp!2197530 () Bool)

(assert (=> b!7553905 (= e!4499394 tp!2197530)))

(assert (=> b!7552925 (= tp!2197260 e!4499394)))

(assert (= (and b!7552925 ((_ is ElementMatch!19953) (regTwo!40418 (reg!20282 baseR!101)))) b!7553903))

(assert (= (and b!7552925 ((_ is Concat!28798) (regTwo!40418 (reg!20282 baseR!101)))) b!7553904))

(assert (= (and b!7552925 ((_ is Star!19953) (regTwo!40418 (reg!20282 baseR!101)))) b!7553905))

(assert (= (and b!7552925 ((_ is Union!19953) (regTwo!40418 (reg!20282 baseR!101)))) b!7553906))

(declare-fun b!7553910 () Bool)

(declare-fun e!4499395 () Bool)

(declare-fun tp!2197539 () Bool)

(declare-fun tp!2197537 () Bool)

(assert (=> b!7553910 (= e!4499395 (and tp!2197539 tp!2197537))))

(declare-fun b!7553908 () Bool)

(declare-fun tp!2197536 () Bool)

(declare-fun tp!2197538 () Bool)

(assert (=> b!7553908 (= e!4499395 (and tp!2197536 tp!2197538))))

(declare-fun b!7553907 () Bool)

(assert (=> b!7553907 (= e!4499395 tp_is_empty!50261)))

(declare-fun b!7553909 () Bool)

(declare-fun tp!2197535 () Bool)

(assert (=> b!7553909 (= e!4499395 tp!2197535)))

(assert (=> b!7552917 (= tp!2197248 e!4499395)))

(assert (= (and b!7552917 ((_ is ElementMatch!19953) (regOne!40418 (regOne!40419 r!24333)))) b!7553907))

(assert (= (and b!7552917 ((_ is Concat!28798) (regOne!40418 (regOne!40419 r!24333)))) b!7553908))

(assert (= (and b!7552917 ((_ is Star!19953) (regOne!40418 (regOne!40419 r!24333)))) b!7553909))

(assert (= (and b!7552917 ((_ is Union!19953) (regOne!40418 (regOne!40419 r!24333)))) b!7553910))

(declare-fun b!7553914 () Bool)

(declare-fun e!4499396 () Bool)

(declare-fun tp!2197544 () Bool)

(declare-fun tp!2197542 () Bool)

(assert (=> b!7553914 (= e!4499396 (and tp!2197544 tp!2197542))))

(declare-fun b!7553912 () Bool)

(declare-fun tp!2197541 () Bool)

(declare-fun tp!2197543 () Bool)

(assert (=> b!7553912 (= e!4499396 (and tp!2197541 tp!2197543))))

(declare-fun b!7553911 () Bool)

(assert (=> b!7553911 (= e!4499396 tp_is_empty!50261)))

(declare-fun b!7553913 () Bool)

(declare-fun tp!2197540 () Bool)

(assert (=> b!7553913 (= e!4499396 tp!2197540)))

(assert (=> b!7552917 (= tp!2197250 e!4499396)))

(assert (= (and b!7552917 ((_ is ElementMatch!19953) (regTwo!40418 (regOne!40419 r!24333)))) b!7553911))

(assert (= (and b!7552917 ((_ is Concat!28798) (regTwo!40418 (regOne!40419 r!24333)))) b!7553912))

(assert (= (and b!7552917 ((_ is Star!19953) (regTwo!40418 (regOne!40419 r!24333)))) b!7553913))

(assert (= (and b!7552917 ((_ is Union!19953) (regTwo!40418 (regOne!40419 r!24333)))) b!7553914))

(declare-fun b!7553918 () Bool)

(declare-fun e!4499397 () Bool)

(declare-fun tp!2197549 () Bool)

(declare-fun tp!2197547 () Bool)

(assert (=> b!7553918 (= e!4499397 (and tp!2197549 tp!2197547))))

(declare-fun b!7553916 () Bool)

(declare-fun tp!2197546 () Bool)

(declare-fun tp!2197548 () Bool)

(assert (=> b!7553916 (= e!4499397 (and tp!2197546 tp!2197548))))

(declare-fun b!7553915 () Bool)

(assert (=> b!7553915 (= e!4499397 tp_is_empty!50261)))

(declare-fun b!7553917 () Bool)

(declare-fun tp!2197545 () Bool)

(assert (=> b!7553917 (= e!4499397 tp!2197545)))

(assert (=> b!7552926 (= tp!2197257 e!4499397)))

(assert (= (and b!7552926 ((_ is ElementMatch!19953) (reg!20282 (reg!20282 baseR!101)))) b!7553915))

(assert (= (and b!7552926 ((_ is Concat!28798) (reg!20282 (reg!20282 baseR!101)))) b!7553916))

(assert (= (and b!7552926 ((_ is Star!19953) (reg!20282 (reg!20282 baseR!101)))) b!7553917))

(assert (= (and b!7552926 ((_ is Union!19953) (reg!20282 (reg!20282 baseR!101)))) b!7553918))

(declare-fun b!7553922 () Bool)

(declare-fun e!4499398 () Bool)

(declare-fun tp!2197554 () Bool)

(declare-fun tp!2197552 () Bool)

(assert (=> b!7553922 (= e!4499398 (and tp!2197554 tp!2197552))))

(declare-fun b!7553920 () Bool)

(declare-fun tp!2197551 () Bool)

(declare-fun tp!2197553 () Bool)

(assert (=> b!7553920 (= e!4499398 (and tp!2197551 tp!2197553))))

(declare-fun b!7553919 () Bool)

(assert (=> b!7553919 (= e!4499398 tp_is_empty!50261)))

(declare-fun b!7553921 () Bool)

(declare-fun tp!2197550 () Bool)

(assert (=> b!7553921 (= e!4499398 tp!2197550)))

(assert (=> b!7552927 (= tp!2197261 e!4499398)))

(assert (= (and b!7552927 ((_ is ElementMatch!19953) (regOne!40419 (reg!20282 baseR!101)))) b!7553919))

(assert (= (and b!7552927 ((_ is Concat!28798) (regOne!40419 (reg!20282 baseR!101)))) b!7553920))

(assert (= (and b!7552927 ((_ is Star!19953) (regOne!40419 (reg!20282 baseR!101)))) b!7553921))

(assert (= (and b!7552927 ((_ is Union!19953) (regOne!40419 (reg!20282 baseR!101)))) b!7553922))

(declare-fun b!7553926 () Bool)

(declare-fun e!4499399 () Bool)

(declare-fun tp!2197559 () Bool)

(declare-fun tp!2197557 () Bool)

(assert (=> b!7553926 (= e!4499399 (and tp!2197559 tp!2197557))))

(declare-fun b!7553924 () Bool)

(declare-fun tp!2197556 () Bool)

(declare-fun tp!2197558 () Bool)

(assert (=> b!7553924 (= e!4499399 (and tp!2197556 tp!2197558))))

(declare-fun b!7553923 () Bool)

(assert (=> b!7553923 (= e!4499399 tp_is_empty!50261)))

(declare-fun b!7553925 () Bool)

(declare-fun tp!2197555 () Bool)

(assert (=> b!7553925 (= e!4499399 tp!2197555)))

(assert (=> b!7552927 (= tp!2197259 e!4499399)))

(assert (= (and b!7552927 ((_ is ElementMatch!19953) (regTwo!40419 (reg!20282 baseR!101)))) b!7553923))

(assert (= (and b!7552927 ((_ is Concat!28798) (regTwo!40419 (reg!20282 baseR!101)))) b!7553924))

(assert (= (and b!7552927 ((_ is Star!19953) (regTwo!40419 (reg!20282 baseR!101)))) b!7553925))

(assert (= (and b!7552927 ((_ is Union!19953) (regTwo!40419 (reg!20282 baseR!101)))) b!7553926))

(declare-fun b!7553930 () Bool)

(declare-fun e!4499400 () Bool)

(declare-fun tp!2197564 () Bool)

(declare-fun tp!2197562 () Bool)

(assert (=> b!7553930 (= e!4499400 (and tp!2197564 tp!2197562))))

(declare-fun b!7553928 () Bool)

(declare-fun tp!2197561 () Bool)

(declare-fun tp!2197563 () Bool)

(assert (=> b!7553928 (= e!4499400 (and tp!2197561 tp!2197563))))

(declare-fun b!7553927 () Bool)

(assert (=> b!7553927 (= e!4499400 tp_is_empty!50261)))

(declare-fun b!7553929 () Bool)

(declare-fun tp!2197560 () Bool)

(assert (=> b!7553929 (= e!4499400 tp!2197560)))

(assert (=> b!7552918 (= tp!2197247 e!4499400)))

(assert (= (and b!7552918 ((_ is ElementMatch!19953) (reg!20282 (regOne!40419 r!24333)))) b!7553927))

(assert (= (and b!7552918 ((_ is Concat!28798) (reg!20282 (regOne!40419 r!24333)))) b!7553928))

(assert (= (and b!7552918 ((_ is Star!19953) (reg!20282 (regOne!40419 r!24333)))) b!7553929))

(assert (= (and b!7552918 ((_ is Union!19953) (reg!20282 (regOne!40419 r!24333)))) b!7553930))

(declare-fun b!7553934 () Bool)

(declare-fun e!4499401 () Bool)

(declare-fun tp!2197569 () Bool)

(declare-fun tp!2197567 () Bool)

(assert (=> b!7553934 (= e!4499401 (and tp!2197569 tp!2197567))))

(declare-fun b!7553932 () Bool)

(declare-fun tp!2197566 () Bool)

(declare-fun tp!2197568 () Bool)

(assert (=> b!7553932 (= e!4499401 (and tp!2197566 tp!2197568))))

(declare-fun b!7553931 () Bool)

(assert (=> b!7553931 (= e!4499401 tp_is_empty!50261)))

(declare-fun b!7553933 () Bool)

(declare-fun tp!2197565 () Bool)

(assert (=> b!7553933 (= e!4499401 tp!2197565)))

(assert (=> b!7552919 (= tp!2197251 e!4499401)))

(assert (= (and b!7552919 ((_ is ElementMatch!19953) (regOne!40419 (regOne!40419 r!24333)))) b!7553931))

(assert (= (and b!7552919 ((_ is Concat!28798) (regOne!40419 (regOne!40419 r!24333)))) b!7553932))

(assert (= (and b!7552919 ((_ is Star!19953) (regOne!40419 (regOne!40419 r!24333)))) b!7553933))

(assert (= (and b!7552919 ((_ is Union!19953) (regOne!40419 (regOne!40419 r!24333)))) b!7553934))

(declare-fun b!7553938 () Bool)

(declare-fun e!4499402 () Bool)

(declare-fun tp!2197574 () Bool)

(declare-fun tp!2197572 () Bool)

(assert (=> b!7553938 (= e!4499402 (and tp!2197574 tp!2197572))))

(declare-fun b!7553936 () Bool)

(declare-fun tp!2197571 () Bool)

(declare-fun tp!2197573 () Bool)

(assert (=> b!7553936 (= e!4499402 (and tp!2197571 tp!2197573))))

(declare-fun b!7553935 () Bool)

(assert (=> b!7553935 (= e!4499402 tp_is_empty!50261)))

(declare-fun b!7553937 () Bool)

(declare-fun tp!2197570 () Bool)

(assert (=> b!7553937 (= e!4499402 tp!2197570)))

(assert (=> b!7552919 (= tp!2197249 e!4499402)))

(assert (= (and b!7552919 ((_ is ElementMatch!19953) (regTwo!40419 (regOne!40419 r!24333)))) b!7553935))

(assert (= (and b!7552919 ((_ is Concat!28798) (regTwo!40419 (regOne!40419 r!24333)))) b!7553936))

(assert (= (and b!7552919 ((_ is Star!19953) (regTwo!40419 (regOne!40419 r!24333)))) b!7553937))

(assert (= (and b!7552919 ((_ is Union!19953) (regTwo!40419 (regOne!40419 r!24333)))) b!7553938))

(declare-fun b!7553942 () Bool)

(declare-fun e!4499403 () Bool)

(declare-fun tp!2197579 () Bool)

(declare-fun tp!2197577 () Bool)

(assert (=> b!7553942 (= e!4499403 (and tp!2197579 tp!2197577))))

(declare-fun b!7553940 () Bool)

(declare-fun tp!2197576 () Bool)

(declare-fun tp!2197578 () Bool)

(assert (=> b!7553940 (= e!4499403 (and tp!2197576 tp!2197578))))

(declare-fun b!7553939 () Bool)

(assert (=> b!7553939 (= e!4499403 tp_is_empty!50261)))

(declare-fun b!7553941 () Bool)

(declare-fun tp!2197575 () Bool)

(assert (=> b!7553941 (= e!4499403 tp!2197575)))

(assert (=> b!7552886 (= tp!2197213 e!4499403)))

(assert (= (and b!7552886 ((_ is ElementMatch!19953) (regOne!40418 (regTwo!40418 baseR!101)))) b!7553939))

(assert (= (and b!7552886 ((_ is Concat!28798) (regOne!40418 (regTwo!40418 baseR!101)))) b!7553940))

(assert (= (and b!7552886 ((_ is Star!19953) (regOne!40418 (regTwo!40418 baseR!101)))) b!7553941))

(assert (= (and b!7552886 ((_ is Union!19953) (regOne!40418 (regTwo!40418 baseR!101)))) b!7553942))

(declare-fun b!7553946 () Bool)

(declare-fun e!4499404 () Bool)

(declare-fun tp!2197584 () Bool)

(declare-fun tp!2197582 () Bool)

(assert (=> b!7553946 (= e!4499404 (and tp!2197584 tp!2197582))))

(declare-fun b!7553944 () Bool)

(declare-fun tp!2197581 () Bool)

(declare-fun tp!2197583 () Bool)

(assert (=> b!7553944 (= e!4499404 (and tp!2197581 tp!2197583))))

(declare-fun b!7553943 () Bool)

(assert (=> b!7553943 (= e!4499404 tp_is_empty!50261)))

(declare-fun b!7553945 () Bool)

(declare-fun tp!2197580 () Bool)

(assert (=> b!7553945 (= e!4499404 tp!2197580)))

(assert (=> b!7552886 (= tp!2197215 e!4499404)))

(assert (= (and b!7552886 ((_ is ElementMatch!19953) (regTwo!40418 (regTwo!40418 baseR!101)))) b!7553943))

(assert (= (and b!7552886 ((_ is Concat!28798) (regTwo!40418 (regTwo!40418 baseR!101)))) b!7553944))

(assert (= (and b!7552886 ((_ is Star!19953) (regTwo!40418 (regTwo!40418 baseR!101)))) b!7553945))

(assert (= (and b!7552886 ((_ is Union!19953) (regTwo!40418 (regTwo!40418 baseR!101)))) b!7553946))

(declare-fun b!7553950 () Bool)

(declare-fun e!4499405 () Bool)

(declare-fun tp!2197589 () Bool)

(declare-fun tp!2197587 () Bool)

(assert (=> b!7553950 (= e!4499405 (and tp!2197589 tp!2197587))))

(declare-fun b!7553948 () Bool)

(declare-fun tp!2197586 () Bool)

(declare-fun tp!2197588 () Bool)

(assert (=> b!7553948 (= e!4499405 (and tp!2197586 tp!2197588))))

(declare-fun b!7553947 () Bool)

(assert (=> b!7553947 (= e!4499405 tp_is_empty!50261)))

(declare-fun b!7553949 () Bool)

(declare-fun tp!2197585 () Bool)

(assert (=> b!7553949 (= e!4499405 tp!2197585)))

(assert (=> b!7552887 (= tp!2197212 e!4499405)))

(assert (= (and b!7552887 ((_ is ElementMatch!19953) (reg!20282 (regTwo!40418 baseR!101)))) b!7553947))

(assert (= (and b!7552887 ((_ is Concat!28798) (reg!20282 (regTwo!40418 baseR!101)))) b!7553948))

(assert (= (and b!7552887 ((_ is Star!19953) (reg!20282 (regTwo!40418 baseR!101)))) b!7553949))

(assert (= (and b!7552887 ((_ is Union!19953) (reg!20282 (regTwo!40418 baseR!101)))) b!7553950))

(declare-fun b!7553954 () Bool)

(declare-fun e!4499406 () Bool)

(declare-fun tp!2197594 () Bool)

(declare-fun tp!2197592 () Bool)

(assert (=> b!7553954 (= e!4499406 (and tp!2197594 tp!2197592))))

(declare-fun b!7553952 () Bool)

(declare-fun tp!2197591 () Bool)

(declare-fun tp!2197593 () Bool)

(assert (=> b!7553952 (= e!4499406 (and tp!2197591 tp!2197593))))

(declare-fun b!7553951 () Bool)

(assert (=> b!7553951 (= e!4499406 tp_is_empty!50261)))

(declare-fun b!7553953 () Bool)

(declare-fun tp!2197590 () Bool)

(assert (=> b!7553953 (= e!4499406 tp!2197590)))

(assert (=> b!7552911 (= tp!2197241 e!4499406)))

(assert (= (and b!7552911 ((_ is ElementMatch!19953) (regOne!40418 (regTwo!40419 baseR!101)))) b!7553951))

(assert (= (and b!7552911 ((_ is Concat!28798) (regOne!40418 (regTwo!40419 baseR!101)))) b!7553952))

(assert (= (and b!7552911 ((_ is Star!19953) (regOne!40418 (regTwo!40419 baseR!101)))) b!7553953))

(assert (= (and b!7552911 ((_ is Union!19953) (regOne!40418 (regTwo!40419 baseR!101)))) b!7553954))

(declare-fun b!7553958 () Bool)

(declare-fun e!4499407 () Bool)

(declare-fun tp!2197599 () Bool)

(declare-fun tp!2197597 () Bool)

(assert (=> b!7553958 (= e!4499407 (and tp!2197599 tp!2197597))))

(declare-fun b!7553956 () Bool)

(declare-fun tp!2197596 () Bool)

(declare-fun tp!2197598 () Bool)

(assert (=> b!7553956 (= e!4499407 (and tp!2197596 tp!2197598))))

(declare-fun b!7553955 () Bool)

(assert (=> b!7553955 (= e!4499407 tp_is_empty!50261)))

(declare-fun b!7553957 () Bool)

(declare-fun tp!2197595 () Bool)

(assert (=> b!7553957 (= e!4499407 tp!2197595)))

(assert (=> b!7552911 (= tp!2197243 e!4499407)))

(assert (= (and b!7552911 ((_ is ElementMatch!19953) (regTwo!40418 (regTwo!40419 baseR!101)))) b!7553955))

(assert (= (and b!7552911 ((_ is Concat!28798) (regTwo!40418 (regTwo!40419 baseR!101)))) b!7553956))

(assert (= (and b!7552911 ((_ is Star!19953) (regTwo!40418 (regTwo!40419 baseR!101)))) b!7553957))

(assert (= (and b!7552911 ((_ is Union!19953) (regTwo!40418 (regTwo!40419 baseR!101)))) b!7553958))

(declare-fun b!7553962 () Bool)

(declare-fun e!4499408 () Bool)

(declare-fun tp!2197604 () Bool)

(declare-fun tp!2197602 () Bool)

(assert (=> b!7553962 (= e!4499408 (and tp!2197604 tp!2197602))))

(declare-fun b!7553960 () Bool)

(declare-fun tp!2197601 () Bool)

(declare-fun tp!2197603 () Bool)

(assert (=> b!7553960 (= e!4499408 (and tp!2197601 tp!2197603))))

(declare-fun b!7553959 () Bool)

(assert (=> b!7553959 (= e!4499408 tp_is_empty!50261)))

(declare-fun b!7553961 () Bool)

(declare-fun tp!2197600 () Bool)

(assert (=> b!7553961 (= e!4499408 tp!2197600)))

(assert (=> b!7552888 (= tp!2197216 e!4499408)))

(assert (= (and b!7552888 ((_ is ElementMatch!19953) (regOne!40419 (regTwo!40418 baseR!101)))) b!7553959))

(assert (= (and b!7552888 ((_ is Concat!28798) (regOne!40419 (regTwo!40418 baseR!101)))) b!7553960))

(assert (= (and b!7552888 ((_ is Star!19953) (regOne!40419 (regTwo!40418 baseR!101)))) b!7553961))

(assert (= (and b!7552888 ((_ is Union!19953) (regOne!40419 (regTwo!40418 baseR!101)))) b!7553962))

(declare-fun b!7553966 () Bool)

(declare-fun e!4499409 () Bool)

(declare-fun tp!2197609 () Bool)

(declare-fun tp!2197607 () Bool)

(assert (=> b!7553966 (= e!4499409 (and tp!2197609 tp!2197607))))

(declare-fun b!7553964 () Bool)

(declare-fun tp!2197606 () Bool)

(declare-fun tp!2197608 () Bool)

(assert (=> b!7553964 (= e!4499409 (and tp!2197606 tp!2197608))))

(declare-fun b!7553963 () Bool)

(assert (=> b!7553963 (= e!4499409 tp_is_empty!50261)))

(declare-fun b!7553965 () Bool)

(declare-fun tp!2197605 () Bool)

(assert (=> b!7553965 (= e!4499409 tp!2197605)))

(assert (=> b!7552888 (= tp!2197214 e!4499409)))

(assert (= (and b!7552888 ((_ is ElementMatch!19953) (regTwo!40419 (regTwo!40418 baseR!101)))) b!7553963))

(assert (= (and b!7552888 ((_ is Concat!28798) (regTwo!40419 (regTwo!40418 baseR!101)))) b!7553964))

(assert (= (and b!7552888 ((_ is Star!19953) (regTwo!40419 (regTwo!40418 baseR!101)))) b!7553965))

(assert (= (and b!7552888 ((_ is Union!19953) (regTwo!40419 (regTwo!40418 baseR!101)))) b!7553966))

(declare-fun b!7553970 () Bool)

(declare-fun e!4499410 () Bool)

(declare-fun tp!2197614 () Bool)

(declare-fun tp!2197612 () Bool)

(assert (=> b!7553970 (= e!4499410 (and tp!2197614 tp!2197612))))

(declare-fun b!7553968 () Bool)

(declare-fun tp!2197611 () Bool)

(declare-fun tp!2197613 () Bool)

(assert (=> b!7553968 (= e!4499410 (and tp!2197611 tp!2197613))))

(declare-fun b!7553967 () Bool)

(assert (=> b!7553967 (= e!4499410 tp_is_empty!50261)))

(declare-fun b!7553969 () Bool)

(declare-fun tp!2197610 () Bool)

(assert (=> b!7553969 (= e!4499410 tp!2197610)))

(assert (=> b!7552912 (= tp!2197240 e!4499410)))

(assert (= (and b!7552912 ((_ is ElementMatch!19953) (reg!20282 (regTwo!40419 baseR!101)))) b!7553967))

(assert (= (and b!7552912 ((_ is Concat!28798) (reg!20282 (regTwo!40419 baseR!101)))) b!7553968))

(assert (= (and b!7552912 ((_ is Star!19953) (reg!20282 (regTwo!40419 baseR!101)))) b!7553969))

(assert (= (and b!7552912 ((_ is Union!19953) (reg!20282 (regTwo!40419 baseR!101)))) b!7553970))

(declare-fun b!7553974 () Bool)

(declare-fun e!4499411 () Bool)

(declare-fun tp!2197619 () Bool)

(declare-fun tp!2197617 () Bool)

(assert (=> b!7553974 (= e!4499411 (and tp!2197619 tp!2197617))))

(declare-fun b!7553972 () Bool)

(declare-fun tp!2197616 () Bool)

(declare-fun tp!2197618 () Bool)

(assert (=> b!7553972 (= e!4499411 (and tp!2197616 tp!2197618))))

(declare-fun b!7553971 () Bool)

(assert (=> b!7553971 (= e!4499411 tp_is_empty!50261)))

(declare-fun b!7553973 () Bool)

(declare-fun tp!2197615 () Bool)

(assert (=> b!7553973 (= e!4499411 tp!2197615)))

(assert (=> b!7552903 (= tp!2197231 e!4499411)))

(assert (= (and b!7552903 ((_ is ElementMatch!19953) (regOne!40418 (regTwo!40418 r!24333)))) b!7553971))

(assert (= (and b!7552903 ((_ is Concat!28798) (regOne!40418 (regTwo!40418 r!24333)))) b!7553972))

(assert (= (and b!7552903 ((_ is Star!19953) (regOne!40418 (regTwo!40418 r!24333)))) b!7553973))

(assert (= (and b!7552903 ((_ is Union!19953) (regOne!40418 (regTwo!40418 r!24333)))) b!7553974))

(declare-fun b!7553978 () Bool)

(declare-fun e!4499412 () Bool)

(declare-fun tp!2197624 () Bool)

(declare-fun tp!2197622 () Bool)

(assert (=> b!7553978 (= e!4499412 (and tp!2197624 tp!2197622))))

(declare-fun b!7553976 () Bool)

(declare-fun tp!2197621 () Bool)

(declare-fun tp!2197623 () Bool)

(assert (=> b!7553976 (= e!4499412 (and tp!2197621 tp!2197623))))

(declare-fun b!7553975 () Bool)

(assert (=> b!7553975 (= e!4499412 tp_is_empty!50261)))

(declare-fun b!7553977 () Bool)

(declare-fun tp!2197620 () Bool)

(assert (=> b!7553977 (= e!4499412 tp!2197620)))

(assert (=> b!7552903 (= tp!2197233 e!4499412)))

(assert (= (and b!7552903 ((_ is ElementMatch!19953) (regTwo!40418 (regTwo!40418 r!24333)))) b!7553975))

(assert (= (and b!7552903 ((_ is Concat!28798) (regTwo!40418 (regTwo!40418 r!24333)))) b!7553976))

(assert (= (and b!7552903 ((_ is Star!19953) (regTwo!40418 (regTwo!40418 r!24333)))) b!7553977))

(assert (= (and b!7552903 ((_ is Union!19953) (regTwo!40418 (regTwo!40418 r!24333)))) b!7553978))

(declare-fun b!7553982 () Bool)

(declare-fun e!4499413 () Bool)

(declare-fun tp!2197629 () Bool)

(declare-fun tp!2197627 () Bool)

(assert (=> b!7553982 (= e!4499413 (and tp!2197629 tp!2197627))))

(declare-fun b!7553980 () Bool)

(declare-fun tp!2197626 () Bool)

(declare-fun tp!2197628 () Bool)

(assert (=> b!7553980 (= e!4499413 (and tp!2197626 tp!2197628))))

(declare-fun b!7553979 () Bool)

(assert (=> b!7553979 (= e!4499413 tp_is_empty!50261)))

(declare-fun b!7553981 () Bool)

(declare-fun tp!2197625 () Bool)

(assert (=> b!7553981 (= e!4499413 tp!2197625)))

(assert (=> b!7552904 (= tp!2197230 e!4499413)))

(assert (= (and b!7552904 ((_ is ElementMatch!19953) (reg!20282 (regTwo!40418 r!24333)))) b!7553979))

(assert (= (and b!7552904 ((_ is Concat!28798) (reg!20282 (regTwo!40418 r!24333)))) b!7553980))

(assert (= (and b!7552904 ((_ is Star!19953) (reg!20282 (regTwo!40418 r!24333)))) b!7553981))

(assert (= (and b!7552904 ((_ is Union!19953) (reg!20282 (regTwo!40418 r!24333)))) b!7553982))

(declare-fun b!7553986 () Bool)

(declare-fun e!4499414 () Bool)

(declare-fun tp!2197634 () Bool)

(declare-fun tp!2197632 () Bool)

(assert (=> b!7553986 (= e!4499414 (and tp!2197634 tp!2197632))))

(declare-fun b!7553984 () Bool)

(declare-fun tp!2197631 () Bool)

(declare-fun tp!2197633 () Bool)

(assert (=> b!7553984 (= e!4499414 (and tp!2197631 tp!2197633))))

(declare-fun b!7553983 () Bool)

(assert (=> b!7553983 (= e!4499414 tp_is_empty!50261)))

(declare-fun b!7553985 () Bool)

(declare-fun tp!2197630 () Bool)

(assert (=> b!7553985 (= e!4499414 tp!2197630)))

(assert (=> b!7552913 (= tp!2197244 e!4499414)))

(assert (= (and b!7552913 ((_ is ElementMatch!19953) (regOne!40419 (regTwo!40419 baseR!101)))) b!7553983))

(assert (= (and b!7552913 ((_ is Concat!28798) (regOne!40419 (regTwo!40419 baseR!101)))) b!7553984))

(assert (= (and b!7552913 ((_ is Star!19953) (regOne!40419 (regTwo!40419 baseR!101)))) b!7553985))

(assert (= (and b!7552913 ((_ is Union!19953) (regOne!40419 (regTwo!40419 baseR!101)))) b!7553986))

(declare-fun b!7553990 () Bool)

(declare-fun e!4499415 () Bool)

(declare-fun tp!2197639 () Bool)

(declare-fun tp!2197637 () Bool)

(assert (=> b!7553990 (= e!4499415 (and tp!2197639 tp!2197637))))

(declare-fun b!7553988 () Bool)

(declare-fun tp!2197636 () Bool)

(declare-fun tp!2197638 () Bool)

(assert (=> b!7553988 (= e!4499415 (and tp!2197636 tp!2197638))))

(declare-fun b!7553987 () Bool)

(assert (=> b!7553987 (= e!4499415 tp_is_empty!50261)))

(declare-fun b!7553989 () Bool)

(declare-fun tp!2197635 () Bool)

(assert (=> b!7553989 (= e!4499415 tp!2197635)))

(assert (=> b!7552913 (= tp!2197242 e!4499415)))

(assert (= (and b!7552913 ((_ is ElementMatch!19953) (regTwo!40419 (regTwo!40419 baseR!101)))) b!7553987))

(assert (= (and b!7552913 ((_ is Concat!28798) (regTwo!40419 (regTwo!40419 baseR!101)))) b!7553988))

(assert (= (and b!7552913 ((_ is Star!19953) (regTwo!40419 (regTwo!40419 baseR!101)))) b!7553989))

(assert (= (and b!7552913 ((_ is Union!19953) (regTwo!40419 (regTwo!40419 baseR!101)))) b!7553990))

(declare-fun b!7553994 () Bool)

(declare-fun e!4499416 () Bool)

(declare-fun tp!2197644 () Bool)

(declare-fun tp!2197642 () Bool)

(assert (=> b!7553994 (= e!4499416 (and tp!2197644 tp!2197642))))

(declare-fun b!7553992 () Bool)

(declare-fun tp!2197641 () Bool)

(declare-fun tp!2197643 () Bool)

(assert (=> b!7553992 (= e!4499416 (and tp!2197641 tp!2197643))))

(declare-fun b!7553991 () Bool)

(assert (=> b!7553991 (= e!4499416 tp_is_empty!50261)))

(declare-fun b!7553993 () Bool)

(declare-fun tp!2197640 () Bool)

(assert (=> b!7553993 (= e!4499416 tp!2197640)))

(assert (=> b!7552905 (= tp!2197234 e!4499416)))

(assert (= (and b!7552905 ((_ is ElementMatch!19953) (regOne!40419 (regTwo!40418 r!24333)))) b!7553991))

(assert (= (and b!7552905 ((_ is Concat!28798) (regOne!40419 (regTwo!40418 r!24333)))) b!7553992))

(assert (= (and b!7552905 ((_ is Star!19953) (regOne!40419 (regTwo!40418 r!24333)))) b!7553993))

(assert (= (and b!7552905 ((_ is Union!19953) (regOne!40419 (regTwo!40418 r!24333)))) b!7553994))

(declare-fun b!7553998 () Bool)

(declare-fun e!4499417 () Bool)

(declare-fun tp!2197649 () Bool)

(declare-fun tp!2197647 () Bool)

(assert (=> b!7553998 (= e!4499417 (and tp!2197649 tp!2197647))))

(declare-fun b!7553996 () Bool)

(declare-fun tp!2197646 () Bool)

(declare-fun tp!2197648 () Bool)

(assert (=> b!7553996 (= e!4499417 (and tp!2197646 tp!2197648))))

(declare-fun b!7553995 () Bool)

(assert (=> b!7553995 (= e!4499417 tp_is_empty!50261)))

(declare-fun b!7553997 () Bool)

(declare-fun tp!2197645 () Bool)

(assert (=> b!7553997 (= e!4499417 tp!2197645)))

(assert (=> b!7552905 (= tp!2197232 e!4499417)))

(assert (= (and b!7552905 ((_ is ElementMatch!19953) (regTwo!40419 (regTwo!40418 r!24333)))) b!7553995))

(assert (= (and b!7552905 ((_ is Concat!28798) (regTwo!40419 (regTwo!40418 r!24333)))) b!7553996))

(assert (= (and b!7552905 ((_ is Star!19953) (regTwo!40419 (regTwo!40418 r!24333)))) b!7553997))

(assert (= (and b!7552905 ((_ is Union!19953) (regTwo!40419 (regTwo!40418 r!24333)))) b!7553998))

(declare-fun b!7553999 () Bool)

(declare-fun e!4499418 () Bool)

(declare-fun tp!2197650 () Bool)

(assert (=> b!7553999 (= e!4499418 (and tp_is_empty!50261 tp!2197650))))

(assert (=> b!7552914 (= tp!2197245 e!4499418)))

(assert (= (and b!7552914 ((_ is Cons!72712) (t!387559 (t!387559 input!7874)))) b!7553999))

(declare-fun b!7554000 () Bool)

(declare-fun e!4499419 () Bool)

(declare-fun tp!2197651 () Bool)

(assert (=> b!7554000 (= e!4499419 (and tp_is_empty!50261 tp!2197651))))

(assert (=> b!7552897 (= tp!2197224 e!4499419)))

(assert (= (and b!7552897 ((_ is Cons!72712) (t!387559 (t!387559 knownP!30)))) b!7554000))

(declare-fun b!7554004 () Bool)

(declare-fun e!4499420 () Bool)

(declare-fun tp!2197656 () Bool)

(declare-fun tp!2197654 () Bool)

(assert (=> b!7554004 (= e!4499420 (and tp!2197656 tp!2197654))))

(declare-fun b!7554002 () Bool)

(declare-fun tp!2197653 () Bool)

(declare-fun tp!2197655 () Bool)

(assert (=> b!7554002 (= e!4499420 (and tp!2197653 tp!2197655))))

(declare-fun b!7554001 () Bool)

(assert (=> b!7554001 (= e!4499420 tp_is_empty!50261)))

(declare-fun b!7554003 () Bool)

(declare-fun tp!2197652 () Bool)

(assert (=> b!7554003 (= e!4499420 tp!2197652)))

(assert (=> b!7552921 (= tp!2197253 e!4499420)))

(assert (= (and b!7552921 ((_ is ElementMatch!19953) (regOne!40418 (regTwo!40419 r!24333)))) b!7554001))

(assert (= (and b!7552921 ((_ is Concat!28798) (regOne!40418 (regTwo!40419 r!24333)))) b!7554002))

(assert (= (and b!7552921 ((_ is Star!19953) (regOne!40418 (regTwo!40419 r!24333)))) b!7554003))

(assert (= (and b!7552921 ((_ is Union!19953) (regOne!40418 (regTwo!40419 r!24333)))) b!7554004))

(declare-fun b!7554008 () Bool)

(declare-fun e!4499421 () Bool)

(declare-fun tp!2197661 () Bool)

(declare-fun tp!2197659 () Bool)

(assert (=> b!7554008 (= e!4499421 (and tp!2197661 tp!2197659))))

(declare-fun b!7554006 () Bool)

(declare-fun tp!2197658 () Bool)

(declare-fun tp!2197660 () Bool)

(assert (=> b!7554006 (= e!4499421 (and tp!2197658 tp!2197660))))

(declare-fun b!7554005 () Bool)

(assert (=> b!7554005 (= e!4499421 tp_is_empty!50261)))

(declare-fun b!7554007 () Bool)

(declare-fun tp!2197657 () Bool)

(assert (=> b!7554007 (= e!4499421 tp!2197657)))

(assert (=> b!7552921 (= tp!2197255 e!4499421)))

(assert (= (and b!7552921 ((_ is ElementMatch!19953) (regTwo!40418 (regTwo!40419 r!24333)))) b!7554005))

(assert (= (and b!7552921 ((_ is Concat!28798) (regTwo!40418 (regTwo!40419 r!24333)))) b!7554006))

(assert (= (and b!7552921 ((_ is Star!19953) (regTwo!40418 (regTwo!40419 r!24333)))) b!7554007))

(assert (= (and b!7552921 ((_ is Union!19953) (regTwo!40418 (regTwo!40419 r!24333)))) b!7554008))

(declare-fun b!7554012 () Bool)

(declare-fun e!4499422 () Bool)

(declare-fun tp!2197666 () Bool)

(declare-fun tp!2197664 () Bool)

(assert (=> b!7554012 (= e!4499422 (and tp!2197666 tp!2197664))))

(declare-fun b!7554010 () Bool)

(declare-fun tp!2197663 () Bool)

(declare-fun tp!2197665 () Bool)

(assert (=> b!7554010 (= e!4499422 (and tp!2197663 tp!2197665))))

(declare-fun b!7554009 () Bool)

(assert (=> b!7554009 (= e!4499422 tp_is_empty!50261)))

(declare-fun b!7554011 () Bool)

(declare-fun tp!2197662 () Bool)

(assert (=> b!7554011 (= e!4499422 tp!2197662)))

(assert (=> b!7552922 (= tp!2197252 e!4499422)))

(assert (= (and b!7552922 ((_ is ElementMatch!19953) (reg!20282 (regTwo!40419 r!24333)))) b!7554009))

(assert (= (and b!7552922 ((_ is Concat!28798) (reg!20282 (regTwo!40419 r!24333)))) b!7554010))

(assert (= (and b!7552922 ((_ is Star!19953) (reg!20282 (regTwo!40419 r!24333)))) b!7554011))

(assert (= (and b!7552922 ((_ is Union!19953) (reg!20282 (regTwo!40419 r!24333)))) b!7554012))

(declare-fun b!7554016 () Bool)

(declare-fun e!4499423 () Bool)

(declare-fun tp!2197671 () Bool)

(declare-fun tp!2197669 () Bool)

(assert (=> b!7554016 (= e!4499423 (and tp!2197671 tp!2197669))))

(declare-fun b!7554014 () Bool)

(declare-fun tp!2197668 () Bool)

(declare-fun tp!2197670 () Bool)

(assert (=> b!7554014 (= e!4499423 (and tp!2197668 tp!2197670))))

(declare-fun b!7554013 () Bool)

(assert (=> b!7554013 (= e!4499423 tp_is_empty!50261)))

(declare-fun b!7554015 () Bool)

(declare-fun tp!2197667 () Bool)

(assert (=> b!7554015 (= e!4499423 tp!2197667)))

(assert (=> b!7552923 (= tp!2197256 e!4499423)))

(assert (= (and b!7552923 ((_ is ElementMatch!19953) (regOne!40419 (regTwo!40419 r!24333)))) b!7554013))

(assert (= (and b!7552923 ((_ is Concat!28798) (regOne!40419 (regTwo!40419 r!24333)))) b!7554014))

(assert (= (and b!7552923 ((_ is Star!19953) (regOne!40419 (regTwo!40419 r!24333)))) b!7554015))

(assert (= (and b!7552923 ((_ is Union!19953) (regOne!40419 (regTwo!40419 r!24333)))) b!7554016))

(declare-fun b!7554020 () Bool)

(declare-fun e!4499424 () Bool)

(declare-fun tp!2197676 () Bool)

(declare-fun tp!2197674 () Bool)

(assert (=> b!7554020 (= e!4499424 (and tp!2197676 tp!2197674))))

(declare-fun b!7554018 () Bool)

(declare-fun tp!2197673 () Bool)

(declare-fun tp!2197675 () Bool)

(assert (=> b!7554018 (= e!4499424 (and tp!2197673 tp!2197675))))

(declare-fun b!7554017 () Bool)

(assert (=> b!7554017 (= e!4499424 tp_is_empty!50261)))

(declare-fun b!7554019 () Bool)

(declare-fun tp!2197672 () Bool)

(assert (=> b!7554019 (= e!4499424 tp!2197672)))

(assert (=> b!7552923 (= tp!2197254 e!4499424)))

(assert (= (and b!7552923 ((_ is ElementMatch!19953) (regTwo!40419 (regTwo!40419 r!24333)))) b!7554017))

(assert (= (and b!7552923 ((_ is Concat!28798) (regTwo!40419 (regTwo!40419 r!24333)))) b!7554018))

(assert (= (and b!7552923 ((_ is Star!19953) (regTwo!40419 (regTwo!40419 r!24333)))) b!7554019))

(assert (= (and b!7552923 ((_ is Union!19953) (regTwo!40419 (regTwo!40419 r!24333)))) b!7554020))

(declare-fun b!7554021 () Bool)

(declare-fun e!4499425 () Bool)

(declare-fun tp!2197677 () Bool)

(assert (=> b!7554021 (= e!4499425 (and tp_is_empty!50261 tp!2197677))))

(assert (=> b!7552915 (= tp!2197246 e!4499425)))

(assert (= (and b!7552915 ((_ is Cons!72712) (t!387559 (t!387559 testedP!423)))) b!7554021))

(declare-fun b!7554025 () Bool)

(declare-fun e!4499426 () Bool)

(declare-fun tp!2197682 () Bool)

(declare-fun tp!2197680 () Bool)

(assert (=> b!7554025 (= e!4499426 (and tp!2197682 tp!2197680))))

(declare-fun b!7554023 () Bool)

(declare-fun tp!2197679 () Bool)

(declare-fun tp!2197681 () Bool)

(assert (=> b!7554023 (= e!4499426 (and tp!2197679 tp!2197681))))

(declare-fun b!7554022 () Bool)

(assert (=> b!7554022 (= e!4499426 tp_is_empty!50261)))

(declare-fun b!7554024 () Bool)

(declare-fun tp!2197678 () Bool)

(assert (=> b!7554024 (= e!4499426 tp!2197678)))

(assert (=> b!7552890 (= tp!2197218 e!4499426)))

(assert (= (and b!7552890 ((_ is ElementMatch!19953) (regOne!40418 (reg!20282 r!24333)))) b!7554022))

(assert (= (and b!7552890 ((_ is Concat!28798) (regOne!40418 (reg!20282 r!24333)))) b!7554023))

(assert (= (and b!7552890 ((_ is Star!19953) (regOne!40418 (reg!20282 r!24333)))) b!7554024))

(assert (= (and b!7552890 ((_ is Union!19953) (regOne!40418 (reg!20282 r!24333)))) b!7554025))

(declare-fun b!7554029 () Bool)

(declare-fun e!4499427 () Bool)

(declare-fun tp!2197687 () Bool)

(declare-fun tp!2197685 () Bool)

(assert (=> b!7554029 (= e!4499427 (and tp!2197687 tp!2197685))))

(declare-fun b!7554027 () Bool)

(declare-fun tp!2197684 () Bool)

(declare-fun tp!2197686 () Bool)

(assert (=> b!7554027 (= e!4499427 (and tp!2197684 tp!2197686))))

(declare-fun b!7554026 () Bool)

(assert (=> b!7554026 (= e!4499427 tp_is_empty!50261)))

(declare-fun b!7554028 () Bool)

(declare-fun tp!2197683 () Bool)

(assert (=> b!7554028 (= e!4499427 tp!2197683)))

(assert (=> b!7552890 (= tp!2197220 e!4499427)))

(assert (= (and b!7552890 ((_ is ElementMatch!19953) (regTwo!40418 (reg!20282 r!24333)))) b!7554026))

(assert (= (and b!7552890 ((_ is Concat!28798) (regTwo!40418 (reg!20282 r!24333)))) b!7554027))

(assert (= (and b!7552890 ((_ is Star!19953) (regTwo!40418 (reg!20282 r!24333)))) b!7554028))

(assert (= (and b!7552890 ((_ is Union!19953) (regTwo!40418 (reg!20282 r!24333)))) b!7554029))

(declare-fun b!7554033 () Bool)

(declare-fun e!4499428 () Bool)

(declare-fun tp!2197692 () Bool)

(declare-fun tp!2197690 () Bool)

(assert (=> b!7554033 (= e!4499428 (and tp!2197692 tp!2197690))))

(declare-fun b!7554031 () Bool)

(declare-fun tp!2197689 () Bool)

(declare-fun tp!2197691 () Bool)

(assert (=> b!7554031 (= e!4499428 (and tp!2197689 tp!2197691))))

(declare-fun b!7554030 () Bool)

(assert (=> b!7554030 (= e!4499428 tp_is_empty!50261)))

(declare-fun b!7554032 () Bool)

(declare-fun tp!2197688 () Bool)

(assert (=> b!7554032 (= e!4499428 tp!2197688)))

(assert (=> b!7552882 (= tp!2197208 e!4499428)))

(assert (= (and b!7552882 ((_ is ElementMatch!19953) (regOne!40418 (regOne!40418 baseR!101)))) b!7554030))

(assert (= (and b!7552882 ((_ is Concat!28798) (regOne!40418 (regOne!40418 baseR!101)))) b!7554031))

(assert (= (and b!7552882 ((_ is Star!19953) (regOne!40418 (regOne!40418 baseR!101)))) b!7554032))

(assert (= (and b!7552882 ((_ is Union!19953) (regOne!40418 (regOne!40418 baseR!101)))) b!7554033))

(declare-fun b!7554037 () Bool)

(declare-fun e!4499429 () Bool)

(declare-fun tp!2197697 () Bool)

(declare-fun tp!2197695 () Bool)

(assert (=> b!7554037 (= e!4499429 (and tp!2197697 tp!2197695))))

(declare-fun b!7554035 () Bool)

(declare-fun tp!2197694 () Bool)

(declare-fun tp!2197696 () Bool)

(assert (=> b!7554035 (= e!4499429 (and tp!2197694 tp!2197696))))

(declare-fun b!7554034 () Bool)

(assert (=> b!7554034 (= e!4499429 tp_is_empty!50261)))

(declare-fun b!7554036 () Bool)

(declare-fun tp!2197693 () Bool)

(assert (=> b!7554036 (= e!4499429 tp!2197693)))

(assert (=> b!7552882 (= tp!2197210 e!4499429)))

(assert (= (and b!7552882 ((_ is ElementMatch!19953) (regTwo!40418 (regOne!40418 baseR!101)))) b!7554034))

(assert (= (and b!7552882 ((_ is Concat!28798) (regTwo!40418 (regOne!40418 baseR!101)))) b!7554035))

(assert (= (and b!7552882 ((_ is Star!19953) (regTwo!40418 (regOne!40418 baseR!101)))) b!7554036))

(assert (= (and b!7552882 ((_ is Union!19953) (regTwo!40418 (regOne!40418 baseR!101)))) b!7554037))

(declare-fun b!7554041 () Bool)

(declare-fun e!4499430 () Bool)

(declare-fun tp!2197702 () Bool)

(declare-fun tp!2197700 () Bool)

(assert (=> b!7554041 (= e!4499430 (and tp!2197702 tp!2197700))))

(declare-fun b!7554039 () Bool)

(declare-fun tp!2197699 () Bool)

(declare-fun tp!2197701 () Bool)

(assert (=> b!7554039 (= e!4499430 (and tp!2197699 tp!2197701))))

(declare-fun b!7554038 () Bool)

(assert (=> b!7554038 (= e!4499430 tp_is_empty!50261)))

(declare-fun b!7554040 () Bool)

(declare-fun tp!2197698 () Bool)

(assert (=> b!7554040 (= e!4499430 tp!2197698)))

(assert (=> b!7552891 (= tp!2197217 e!4499430)))

(assert (= (and b!7552891 ((_ is ElementMatch!19953) (reg!20282 (reg!20282 r!24333)))) b!7554038))

(assert (= (and b!7552891 ((_ is Concat!28798) (reg!20282 (reg!20282 r!24333)))) b!7554039))

(assert (= (and b!7552891 ((_ is Star!19953) (reg!20282 (reg!20282 r!24333)))) b!7554040))

(assert (= (and b!7552891 ((_ is Union!19953) (reg!20282 (reg!20282 r!24333)))) b!7554041))

(declare-fun b!7554045 () Bool)

(declare-fun e!4499431 () Bool)

(declare-fun tp!2197707 () Bool)

(declare-fun tp!2197705 () Bool)

(assert (=> b!7554045 (= e!4499431 (and tp!2197707 tp!2197705))))

(declare-fun b!7554043 () Bool)

(declare-fun tp!2197704 () Bool)

(declare-fun tp!2197706 () Bool)

(assert (=> b!7554043 (= e!4499431 (and tp!2197704 tp!2197706))))

(declare-fun b!7554042 () Bool)

(assert (=> b!7554042 (= e!4499431 tp_is_empty!50261)))

(declare-fun b!7554044 () Bool)

(declare-fun tp!2197703 () Bool)

(assert (=> b!7554044 (= e!4499431 tp!2197703)))

(assert (=> b!7552892 (= tp!2197221 e!4499431)))

(assert (= (and b!7552892 ((_ is ElementMatch!19953) (regOne!40419 (reg!20282 r!24333)))) b!7554042))

(assert (= (and b!7552892 ((_ is Concat!28798) (regOne!40419 (reg!20282 r!24333)))) b!7554043))

(assert (= (and b!7552892 ((_ is Star!19953) (regOne!40419 (reg!20282 r!24333)))) b!7554044))

(assert (= (and b!7552892 ((_ is Union!19953) (regOne!40419 (reg!20282 r!24333)))) b!7554045))

(declare-fun b!7554049 () Bool)

(declare-fun e!4499432 () Bool)

(declare-fun tp!2197712 () Bool)

(declare-fun tp!2197710 () Bool)

(assert (=> b!7554049 (= e!4499432 (and tp!2197712 tp!2197710))))

(declare-fun b!7554047 () Bool)

(declare-fun tp!2197709 () Bool)

(declare-fun tp!2197711 () Bool)

(assert (=> b!7554047 (= e!4499432 (and tp!2197709 tp!2197711))))

(declare-fun b!7554046 () Bool)

(assert (=> b!7554046 (= e!4499432 tp_is_empty!50261)))

(declare-fun b!7554048 () Bool)

(declare-fun tp!2197708 () Bool)

(assert (=> b!7554048 (= e!4499432 tp!2197708)))

(assert (=> b!7552892 (= tp!2197219 e!4499432)))

(assert (= (and b!7552892 ((_ is ElementMatch!19953) (regTwo!40419 (reg!20282 r!24333)))) b!7554046))

(assert (= (and b!7552892 ((_ is Concat!28798) (regTwo!40419 (reg!20282 r!24333)))) b!7554047))

(assert (= (and b!7552892 ((_ is Star!19953) (regTwo!40419 (reg!20282 r!24333)))) b!7554048))

(assert (= (and b!7552892 ((_ is Union!19953) (regTwo!40419 (reg!20282 r!24333)))) b!7554049))

(declare-fun b!7554053 () Bool)

(declare-fun e!4499433 () Bool)

(declare-fun tp!2197717 () Bool)

(declare-fun tp!2197715 () Bool)

(assert (=> b!7554053 (= e!4499433 (and tp!2197717 tp!2197715))))

(declare-fun b!7554051 () Bool)

(declare-fun tp!2197714 () Bool)

(declare-fun tp!2197716 () Bool)

(assert (=> b!7554051 (= e!4499433 (and tp!2197714 tp!2197716))))

(declare-fun b!7554050 () Bool)

(assert (=> b!7554050 (= e!4499433 tp_is_empty!50261)))

(declare-fun b!7554052 () Bool)

(declare-fun tp!2197713 () Bool)

(assert (=> b!7554052 (= e!4499433 tp!2197713)))

(assert (=> b!7552883 (= tp!2197207 e!4499433)))

(assert (= (and b!7552883 ((_ is ElementMatch!19953) (reg!20282 (regOne!40418 baseR!101)))) b!7554050))

(assert (= (and b!7552883 ((_ is Concat!28798) (reg!20282 (regOne!40418 baseR!101)))) b!7554051))

(assert (= (and b!7552883 ((_ is Star!19953) (reg!20282 (regOne!40418 baseR!101)))) b!7554052))

(assert (= (and b!7552883 ((_ is Union!19953) (reg!20282 (regOne!40418 baseR!101)))) b!7554053))

(declare-fun b!7554057 () Bool)

(declare-fun e!4499434 () Bool)

(declare-fun tp!2197722 () Bool)

(declare-fun tp!2197720 () Bool)

(assert (=> b!7554057 (= e!4499434 (and tp!2197722 tp!2197720))))

(declare-fun b!7554055 () Bool)

(declare-fun tp!2197719 () Bool)

(declare-fun tp!2197721 () Bool)

(assert (=> b!7554055 (= e!4499434 (and tp!2197719 tp!2197721))))

(declare-fun b!7554054 () Bool)

(assert (=> b!7554054 (= e!4499434 tp_is_empty!50261)))

(declare-fun b!7554056 () Bool)

(declare-fun tp!2197718 () Bool)

(assert (=> b!7554056 (= e!4499434 tp!2197718)))

(assert (=> b!7552907 (= tp!2197236 e!4499434)))

(assert (= (and b!7552907 ((_ is ElementMatch!19953) (regOne!40418 (regOne!40419 baseR!101)))) b!7554054))

(assert (= (and b!7552907 ((_ is Concat!28798) (regOne!40418 (regOne!40419 baseR!101)))) b!7554055))

(assert (= (and b!7552907 ((_ is Star!19953) (regOne!40418 (regOne!40419 baseR!101)))) b!7554056))

(assert (= (and b!7552907 ((_ is Union!19953) (regOne!40418 (regOne!40419 baseR!101)))) b!7554057))

(declare-fun b!7554061 () Bool)

(declare-fun e!4499435 () Bool)

(declare-fun tp!2197727 () Bool)

(declare-fun tp!2197725 () Bool)

(assert (=> b!7554061 (= e!4499435 (and tp!2197727 tp!2197725))))

(declare-fun b!7554059 () Bool)

(declare-fun tp!2197724 () Bool)

(declare-fun tp!2197726 () Bool)

(assert (=> b!7554059 (= e!4499435 (and tp!2197724 tp!2197726))))

(declare-fun b!7554058 () Bool)

(assert (=> b!7554058 (= e!4499435 tp_is_empty!50261)))

(declare-fun b!7554060 () Bool)

(declare-fun tp!2197723 () Bool)

(assert (=> b!7554060 (= e!4499435 tp!2197723)))

(assert (=> b!7552907 (= tp!2197238 e!4499435)))

(assert (= (and b!7552907 ((_ is ElementMatch!19953) (regTwo!40418 (regOne!40419 baseR!101)))) b!7554058))

(assert (= (and b!7552907 ((_ is Concat!28798) (regTwo!40418 (regOne!40419 baseR!101)))) b!7554059))

(assert (= (and b!7552907 ((_ is Star!19953) (regTwo!40418 (regOne!40419 baseR!101)))) b!7554060))

(assert (= (and b!7552907 ((_ is Union!19953) (regTwo!40418 (regOne!40419 baseR!101)))) b!7554061))

(declare-fun b!7554065 () Bool)

(declare-fun e!4499436 () Bool)

(declare-fun tp!2197732 () Bool)

(declare-fun tp!2197730 () Bool)

(assert (=> b!7554065 (= e!4499436 (and tp!2197732 tp!2197730))))

(declare-fun b!7554063 () Bool)

(declare-fun tp!2197729 () Bool)

(declare-fun tp!2197731 () Bool)

(assert (=> b!7554063 (= e!4499436 (and tp!2197729 tp!2197731))))

(declare-fun b!7554062 () Bool)

(assert (=> b!7554062 (= e!4499436 tp_is_empty!50261)))

(declare-fun b!7554064 () Bool)

(declare-fun tp!2197728 () Bool)

(assert (=> b!7554064 (= e!4499436 tp!2197728)))

(assert (=> b!7552884 (= tp!2197211 e!4499436)))

(assert (= (and b!7552884 ((_ is ElementMatch!19953) (regOne!40419 (regOne!40418 baseR!101)))) b!7554062))

(assert (= (and b!7552884 ((_ is Concat!28798) (regOne!40419 (regOne!40418 baseR!101)))) b!7554063))

(assert (= (and b!7552884 ((_ is Star!19953) (regOne!40419 (regOne!40418 baseR!101)))) b!7554064))

(assert (= (and b!7552884 ((_ is Union!19953) (regOne!40419 (regOne!40418 baseR!101)))) b!7554065))

(declare-fun b!7554069 () Bool)

(declare-fun e!4499437 () Bool)

(declare-fun tp!2197737 () Bool)

(declare-fun tp!2197735 () Bool)

(assert (=> b!7554069 (= e!4499437 (and tp!2197737 tp!2197735))))

(declare-fun b!7554067 () Bool)

(declare-fun tp!2197734 () Bool)

(declare-fun tp!2197736 () Bool)

(assert (=> b!7554067 (= e!4499437 (and tp!2197734 tp!2197736))))

(declare-fun b!7554066 () Bool)

(assert (=> b!7554066 (= e!4499437 tp_is_empty!50261)))

(declare-fun b!7554068 () Bool)

(declare-fun tp!2197733 () Bool)

(assert (=> b!7554068 (= e!4499437 tp!2197733)))

(assert (=> b!7552884 (= tp!2197209 e!4499437)))

(assert (= (and b!7552884 ((_ is ElementMatch!19953) (regTwo!40419 (regOne!40418 baseR!101)))) b!7554066))

(assert (= (and b!7552884 ((_ is Concat!28798) (regTwo!40419 (regOne!40418 baseR!101)))) b!7554067))

(assert (= (and b!7552884 ((_ is Star!19953) (regTwo!40419 (regOne!40418 baseR!101)))) b!7554068))

(assert (= (and b!7552884 ((_ is Union!19953) (regTwo!40419 (regOne!40418 baseR!101)))) b!7554069))

(declare-fun b!7554073 () Bool)

(declare-fun e!4499438 () Bool)

(declare-fun tp!2197742 () Bool)

(declare-fun tp!2197740 () Bool)

(assert (=> b!7554073 (= e!4499438 (and tp!2197742 tp!2197740))))

(declare-fun b!7554071 () Bool)

(declare-fun tp!2197739 () Bool)

(declare-fun tp!2197741 () Bool)

(assert (=> b!7554071 (= e!4499438 (and tp!2197739 tp!2197741))))

(declare-fun b!7554070 () Bool)

(assert (=> b!7554070 (= e!4499438 tp_is_empty!50261)))

(declare-fun b!7554072 () Bool)

(declare-fun tp!2197738 () Bool)

(assert (=> b!7554072 (= e!4499438 tp!2197738)))

(assert (=> b!7552908 (= tp!2197235 e!4499438)))

(assert (= (and b!7552908 ((_ is ElementMatch!19953) (reg!20282 (regOne!40419 baseR!101)))) b!7554070))

(assert (= (and b!7552908 ((_ is Concat!28798) (reg!20282 (regOne!40419 baseR!101)))) b!7554071))

(assert (= (and b!7552908 ((_ is Star!19953) (reg!20282 (regOne!40419 baseR!101)))) b!7554072))

(assert (= (and b!7552908 ((_ is Union!19953) (reg!20282 (regOne!40419 baseR!101)))) b!7554073))

(declare-fun b!7554077 () Bool)

(declare-fun e!4499439 () Bool)

(declare-fun tp!2197747 () Bool)

(declare-fun tp!2197745 () Bool)

(assert (=> b!7554077 (= e!4499439 (and tp!2197747 tp!2197745))))

(declare-fun b!7554075 () Bool)

(declare-fun tp!2197744 () Bool)

(declare-fun tp!2197746 () Bool)

(assert (=> b!7554075 (= e!4499439 (and tp!2197744 tp!2197746))))

(declare-fun b!7554074 () Bool)

(assert (=> b!7554074 (= e!4499439 tp_is_empty!50261)))

(declare-fun b!7554076 () Bool)

(declare-fun tp!2197743 () Bool)

(assert (=> b!7554076 (= e!4499439 tp!2197743)))

(assert (=> b!7552899 (= tp!2197226 e!4499439)))

(assert (= (and b!7552899 ((_ is ElementMatch!19953) (regOne!40418 (regOne!40418 r!24333)))) b!7554074))

(assert (= (and b!7552899 ((_ is Concat!28798) (regOne!40418 (regOne!40418 r!24333)))) b!7554075))

(assert (= (and b!7552899 ((_ is Star!19953) (regOne!40418 (regOne!40418 r!24333)))) b!7554076))

(assert (= (and b!7552899 ((_ is Union!19953) (regOne!40418 (regOne!40418 r!24333)))) b!7554077))

(declare-fun b!7554081 () Bool)

(declare-fun e!4499440 () Bool)

(declare-fun tp!2197752 () Bool)

(declare-fun tp!2197750 () Bool)

(assert (=> b!7554081 (= e!4499440 (and tp!2197752 tp!2197750))))

(declare-fun b!7554079 () Bool)

(declare-fun tp!2197749 () Bool)

(declare-fun tp!2197751 () Bool)

(assert (=> b!7554079 (= e!4499440 (and tp!2197749 tp!2197751))))

(declare-fun b!7554078 () Bool)

(assert (=> b!7554078 (= e!4499440 tp_is_empty!50261)))

(declare-fun b!7554080 () Bool)

(declare-fun tp!2197748 () Bool)

(assert (=> b!7554080 (= e!4499440 tp!2197748)))

(assert (=> b!7552899 (= tp!2197228 e!4499440)))

(assert (= (and b!7552899 ((_ is ElementMatch!19953) (regTwo!40418 (regOne!40418 r!24333)))) b!7554078))

(assert (= (and b!7552899 ((_ is Concat!28798) (regTwo!40418 (regOne!40418 r!24333)))) b!7554079))

(assert (= (and b!7552899 ((_ is Star!19953) (regTwo!40418 (regOne!40418 r!24333)))) b!7554080))

(assert (= (and b!7552899 ((_ is Union!19953) (regTwo!40418 (regOne!40418 r!24333)))) b!7554081))

(declare-fun b!7554085 () Bool)

(declare-fun e!4499441 () Bool)

(declare-fun tp!2197757 () Bool)

(declare-fun tp!2197755 () Bool)

(assert (=> b!7554085 (= e!4499441 (and tp!2197757 tp!2197755))))

(declare-fun b!7554083 () Bool)

(declare-fun tp!2197754 () Bool)

(declare-fun tp!2197756 () Bool)

(assert (=> b!7554083 (= e!4499441 (and tp!2197754 tp!2197756))))

(declare-fun b!7554082 () Bool)

(assert (=> b!7554082 (= e!4499441 tp_is_empty!50261)))

(declare-fun b!7554084 () Bool)

(declare-fun tp!2197753 () Bool)

(assert (=> b!7554084 (= e!4499441 tp!2197753)))

(assert (=> b!7552900 (= tp!2197225 e!4499441)))

(assert (= (and b!7552900 ((_ is ElementMatch!19953) (reg!20282 (regOne!40418 r!24333)))) b!7554082))

(assert (= (and b!7552900 ((_ is Concat!28798) (reg!20282 (regOne!40418 r!24333)))) b!7554083))

(assert (= (and b!7552900 ((_ is Star!19953) (reg!20282 (regOne!40418 r!24333)))) b!7554084))

(assert (= (and b!7552900 ((_ is Union!19953) (reg!20282 (regOne!40418 r!24333)))) b!7554085))

(declare-fun b!7554089 () Bool)

(declare-fun e!4499442 () Bool)

(declare-fun tp!2197762 () Bool)

(declare-fun tp!2197760 () Bool)

(assert (=> b!7554089 (= e!4499442 (and tp!2197762 tp!2197760))))

(declare-fun b!7554087 () Bool)

(declare-fun tp!2197759 () Bool)

(declare-fun tp!2197761 () Bool)

(assert (=> b!7554087 (= e!4499442 (and tp!2197759 tp!2197761))))

(declare-fun b!7554086 () Bool)

(assert (=> b!7554086 (= e!4499442 tp_is_empty!50261)))

(declare-fun b!7554088 () Bool)

(declare-fun tp!2197758 () Bool)

(assert (=> b!7554088 (= e!4499442 tp!2197758)))

(assert (=> b!7552909 (= tp!2197239 e!4499442)))

(assert (= (and b!7552909 ((_ is ElementMatch!19953) (regOne!40419 (regOne!40419 baseR!101)))) b!7554086))

(assert (= (and b!7552909 ((_ is Concat!28798) (regOne!40419 (regOne!40419 baseR!101)))) b!7554087))

(assert (= (and b!7552909 ((_ is Star!19953) (regOne!40419 (regOne!40419 baseR!101)))) b!7554088))

(assert (= (and b!7552909 ((_ is Union!19953) (regOne!40419 (regOne!40419 baseR!101)))) b!7554089))

(declare-fun b!7554093 () Bool)

(declare-fun e!4499443 () Bool)

(declare-fun tp!2197767 () Bool)

(declare-fun tp!2197765 () Bool)

(assert (=> b!7554093 (= e!4499443 (and tp!2197767 tp!2197765))))

(declare-fun b!7554091 () Bool)

(declare-fun tp!2197764 () Bool)

(declare-fun tp!2197766 () Bool)

(assert (=> b!7554091 (= e!4499443 (and tp!2197764 tp!2197766))))

(declare-fun b!7554090 () Bool)

(assert (=> b!7554090 (= e!4499443 tp_is_empty!50261)))

(declare-fun b!7554092 () Bool)

(declare-fun tp!2197763 () Bool)

(assert (=> b!7554092 (= e!4499443 tp!2197763)))

(assert (=> b!7552909 (= tp!2197237 e!4499443)))

(assert (= (and b!7552909 ((_ is ElementMatch!19953) (regTwo!40419 (regOne!40419 baseR!101)))) b!7554090))

(assert (= (and b!7552909 ((_ is Concat!28798) (regTwo!40419 (regOne!40419 baseR!101)))) b!7554091))

(assert (= (and b!7552909 ((_ is Star!19953) (regTwo!40419 (regOne!40419 baseR!101)))) b!7554092))

(assert (= (and b!7552909 ((_ is Union!19953) (regTwo!40419 (regOne!40419 baseR!101)))) b!7554093))

(check-sat (not b!7553863) (not d!2313726) (not b!7553393) (not b!7553867) (not b!7554064) (not b!7553332) (not b!7553909) (not b!7553849) (not b!7553926) (not b!7554052) (not b!7554077) (not b!7553250) (not b!7553914) (not b!7554065) (not d!2313738) (not b!7553864) (not b!7553882) (not bm!692558) (not bm!692586) (not b!7553949) (not bm!692573) (not b!7553920) (not b!7553908) (not d!2313780) (not b!7553901) (not b!7553354) (not b!7554019) (not b!7554002) (not b!7553355) (not b!7553894) (not d!2313650) (not bm!692600) (not b!7553837) (not bm!692575) (not b!7553193) (not b!7553651) (not b!7553843) (not b!7553945) (not b!7553985) (not b!7554003) (not bm!692580) (not d!2313686) (not b!7553937) (not bm!692540) (not b!7554083) (not d!2313766) (not b!7553517) (not b!7554027) (not b!7553532) (not b!7554016) (not b!7553989) (not b!7553383) (not b!7553755) (not b!7553774) (not b!7553852) (not b!7553980) (not b!7553767) (not b!7553906) (not d!2313670) (not b!7553982) (not b!7553629) (not b!7553965) (not bm!692593) (not bm!692572) (not b!7553936) (not bm!692579) (not b!7553786) (not d!2313798) (not b!7554073) (not b!7553297) (not b!7553928) (not b!7553890) (not b!7554051) (not b!7553196) (not b!7553996) (not b!7553792) (not b!7553252) (not b!7554059) (not b!7554035) (not bm!692565) (not d!2313714) (not b!7554039) (not d!2313706) (not bm!692606) (not b!7553652) (not b!7554014) (not d!2313596) (not b!7554036) (not b!7553988) (not b!7553896) (not b!7553744) (not b!7554061) (not b!7553482) (not bm!692602) (not b!7553855) (not b!7553828) (not b!7554037) (not b!7553481) (not b!7554093) (not b!7554092) (not b!7553684) (not b!7553820) (not b!7553816) (not d!2313514) (not b!7553262) (not b!7554085) tp_is_empty!50261 (not b!7553183) (not b!7554024) (not b!7553256) (not d!2313592) (not b!7553838) (not d!2313762) (not b!7553898) (not d!2313756) (not b!7553785) (not b!7553953) (not b!7554075) (not b!7553708) (not b!7553502) (not b!7553795) (not b!7553856) (not bm!692609) (not b!7553594) (not b!7553969) (not b!7553819) (not bm!692545) (not b!7553912) (not b!7554068) (not b!7553922) (not d!2313750) (not b!7553782) (not d!2313800) (not b!7553653) (not b!7553897) (not b!7554053) (not d!2313774) (not b!7554032) (not d!2313754) (not b!7553683) (not b!7553880) (not d!2313704) (not b!7553754) (not d!2313746) (not b!7553998) (not b!7553904) (not b!7554031) (not b!7553801) (not b!7553900) (not b!7553421) (not d!2313644) (not b!7553742) (not b!7554012) (not b!7554043) (not b!7553875) (not b!7553608) (not b!7554000) (not b!7553946) (not b!7553282) (not b!7554044) (not bm!692597) (not b!7554084) (not d!2313760) (not b!7553771) (not b!7553752) (not b!7553925) (not b!7554028) (not b!7553968) (not d!2313752) (not b!7553921) (not b!7553707) (not b!7553544) (not b!7554057) (not d!2313790) (not b!7553913) (not b!7553333) (not b!7553929) (not b!7553796) (not b!7553503) (not b!7553377) (not bm!692601) (not d!2313658) (not b!7554040) (not b!7554047) (not b!7553986) (not b!7554076) (not b!7553762) (not b!7553311) (not b!7553853) (not b!7553231) (not b!7554048) (not d!2313698) (not d!2313748) (not b!7553984) (not d!2313584) (not d!2313666) (not b!7554008) (not b!7554015) (not b!7553208) (not b!7554081) (not b!7553712) (not b!7553905) (not b!7553954) (not b!7553994) (not b!7553910) (not b!7553777) (not b!7553779) (not b!7553381) (not bm!692583) (not b!7554049) (not b!7553892) (not b!7553518) (not b!7553917) (not b!7553933) (not b!7553997) (not b!7553976) (not d!2313708) (not b!7554033) (not b!7553591) (not b!7553585) (not d!2313668) (not b!7553859) (not d!2313786) (not b!7554020) (not b!7554079) (not b!7553942) (not b!7553845) (not bm!692564) (not b!7553641) (not bm!692582) (not b!7553501) (not b!7553750) (not b!7553814) (not b!7554088) (not bm!692608) (not bm!692557) (not b!7553999) (not d!2313640) (not b!7553993) (not b!7554055) (not b!7553974) (not b!7553483) (not d!2313518) (not b!7553961) (not b!7553310) (not b!7553573) (not b!7554089) (not b!7553916) (not b!7553781) (not b!7553932) (not b!7554023) (not b!7553944) (not b!7553296) (not b!7553192) (not b!7554004) (not bm!692596) (not b!7553197) (not b!7553274) (not b!7553790) (not b!7553940) (not b!7553748) (not b!7553671) (not b!7553264) (not b!7553962) (not b!7553948) (not b!7553924) (not d!2313796) (not b!7554045) (not bm!692587) (not b!7553902) (not b!7553840) (not b!7553276) (not b!7553469) (not bm!692605) (not b!7553977) (not b!7553284) (not d!2313648) (not b!7554060) (not d!2313682) (not b!7553958) (not b!7553972) (not b!7553413) (not b!7553822) (not b!7554018) (not b!7554072) (not b!7553286) (not b!7554011) (not b!7553579) (not d!2313772) (not b!7554091) (not b!7553938) (not b!7553860) (not b!7553745) (not b!7553884) (not d!2313616) (not b!7553258) (not d!2313782) (not b!7553956) (not b!7553446) (not b!7553978) (not b!7554041) (not b!7553206) (not b!7553775) (not b!7553868) (not b!7553468) (not b!7553952) (not b!7553695) (not b!7553288) (not b!7554029) (not b!7553630) (not b!7553400) (not b!7553885) (not b!7553981) (not b!7553798) (not d!2313588) (not b!7554006) (not d!2313608) (not b!7553934) (not b!7554007) (not b!7553930) (not b!7553970) (not bm!692592) (not b!7553846) (not b!7553957) (not b!7553990) (not d!2313716) (not b!7553401) (not b!7553677) (not b!7553966) (not b!7554087) (not b!7554071) (not bm!692541) (not b!7553960) (not b!7554080) (not b!7553918) (not d!2313784) (not bm!692576) (not b!7553893) (not b!7554025) (not b!7554056) (not b!7553769) (not b!7553964) (not b!7553804) (not b!7554069) (not b!7553992) (not bm!692595) (not b!7553773) (not d!2313538) (not b!7554063) (not b!7553941) (not b!7553207) (not b!7553851) (not b!7554021) (not d!2313758) (not b!7553973) (not b!7554067) (not bm!692546) (not b!7554010) (not b!7553254) (not b!7553362) (not b!7553950) (not b!7553825) (not b!7553887) (not b!7553701))
(check-sat)
