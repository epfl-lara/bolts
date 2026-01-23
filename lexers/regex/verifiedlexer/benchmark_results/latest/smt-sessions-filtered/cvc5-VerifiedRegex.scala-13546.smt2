; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728934 () Bool)

(assert start!728934)

(declare-fun b!7536340 () Bool)

(declare-fun res!3020153 () Bool)

(declare-fun e!4490752 () Bool)

(assert (=> b!7536340 (=> res!3020153 e!4490752)))

(declare-fun lt!2641893 () Int)

(declare-datatypes ((C!40098 0))(
  ( (C!40099 (val!30489 Int)) )
))
(declare-datatypes ((List!72769 0))(
  ( (Nil!72645) (Cons!72645 (h!79093 C!40098) (t!387476 List!72769)) )
))
(declare-fun input!7874 () List!72769)

(declare-fun size!42382 (List!72769) Int)

(assert (=> b!7536340 (= res!3020153 (>= lt!2641893 (size!42382 input!7874)))))

(declare-fun b!7536341 () Bool)

(declare-fun e!4490751 () Bool)

(declare-fun tp!2191916 () Bool)

(assert (=> b!7536341 (= e!4490751 tp!2191916)))

(declare-fun b!7536342 () Bool)

(declare-fun e!4490748 () Bool)

(declare-fun tp_is_empty!50127 () Bool)

(declare-fun tp!2191908 () Bool)

(assert (=> b!7536342 (= e!4490748 (and tp_is_empty!50127 tp!2191908))))

(declare-fun b!7536343 () Bool)

(declare-fun res!3020158 () Bool)

(assert (=> b!7536343 (=> res!3020158 e!4490752)))

(declare-datatypes ((Regex!19886 0))(
  ( (ElementMatch!19886 (c!1391561 C!40098)) (Concat!28731 (regOne!40284 Regex!19886) (regTwo!40284 Regex!19886)) (EmptyExpr!19886) (Star!19886 (reg!20215 Regex!19886)) (EmptyLang!19886) (Union!19886 (regOne!40285 Regex!19886) (regTwo!40285 Regex!19886)) )
))
(declare-fun baseR!101 () Regex!19886)

(declare-fun testedP!423 () List!72769)

(declare-fun r!24333 () Regex!19886)

(declare-fun derivative!418 (Regex!19886 List!72769) Regex!19886)

(assert (=> b!7536343 (= res!3020158 (not (= (derivative!418 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7536344 () Bool)

(declare-fun res!3020157 () Bool)

(declare-fun e!4490753 () Bool)

(assert (=> b!7536344 (=> (not res!3020157) (not e!4490753))))

(declare-fun isPrefix!6092 (List!72769 List!72769) Bool)

(assert (=> b!7536344 (= res!3020157 (isPrefix!6092 testedP!423 input!7874))))

(declare-fun b!7536345 () Bool)

(declare-fun e!4490754 () Bool)

(assert (=> b!7536345 (= e!4490754 tp_is_empty!50127)))

(declare-fun b!7536346 () Bool)

(assert (=> b!7536346 (= e!4490751 tp_is_empty!50127)))

(declare-fun b!7536347 () Bool)

(declare-fun tp!2191915 () Bool)

(declare-fun tp!2191910 () Bool)

(assert (=> b!7536347 (= e!4490751 (and tp!2191915 tp!2191910))))

(declare-fun b!7536348 () Bool)

(declare-fun tp!2191909 () Bool)

(declare-fun tp!2191906 () Bool)

(assert (=> b!7536348 (= e!4490754 (and tp!2191909 tp!2191906))))

(declare-fun res!3020160 () Bool)

(assert (=> start!728934 (=> (not res!3020160) (not e!4490753))))

(declare-fun validRegex!10314 (Regex!19886) Bool)

(assert (=> start!728934 (= res!3020160 (validRegex!10314 baseR!101))))

(assert (=> start!728934 e!4490753))

(assert (=> start!728934 e!4490751))

(declare-fun e!4490755 () Bool)

(assert (=> start!728934 e!4490755))

(declare-fun e!4490749 () Bool)

(assert (=> start!728934 e!4490749))

(assert (=> start!728934 e!4490748))

(assert (=> start!728934 e!4490754))

(declare-fun b!7536349 () Bool)

(declare-fun tp!2191911 () Bool)

(declare-fun tp!2191907 () Bool)

(assert (=> b!7536349 (= e!4490751 (and tp!2191911 tp!2191907))))

(declare-fun b!7536350 () Bool)

(declare-fun tp!2191912 () Bool)

(assert (=> b!7536350 (= e!4490754 tp!2191912)))

(declare-fun b!7536351 () Bool)

(declare-fun e!4490750 () Bool)

(assert (=> b!7536351 (= e!4490753 e!4490750)))

(declare-fun res!3020154 () Bool)

(assert (=> b!7536351 (=> (not res!3020154) (not e!4490750))))

(declare-fun lt!2641894 () Int)

(assert (=> b!7536351 (= res!3020154 (>= lt!2641894 lt!2641893))))

(assert (=> b!7536351 (= lt!2641893 (size!42382 testedP!423))))

(declare-fun knownP!30 () List!72769)

(assert (=> b!7536351 (= lt!2641894 (size!42382 knownP!30))))

(declare-fun b!7536352 () Bool)

(declare-fun tp!2191913 () Bool)

(declare-fun tp!2191914 () Bool)

(assert (=> b!7536352 (= e!4490754 (and tp!2191913 tp!2191914))))

(declare-fun b!7536353 () Bool)

(declare-fun res!3020152 () Bool)

(assert (=> b!7536353 (=> (not res!3020152) (not e!4490750))))

(declare-fun matchR!9488 (Regex!19886 List!72769) Bool)

(assert (=> b!7536353 (= res!3020152 (matchR!9488 baseR!101 knownP!30))))

(declare-fun b!7536354 () Bool)

(declare-fun lt!2641899 () List!72769)

(assert (=> b!7536354 (= e!4490752 (>= lt!2641894 (size!42382 lt!2641899)))))

(assert (=> b!7536354 (isPrefix!6092 lt!2641899 knownP!30)))

(declare-datatypes ((Unit!166710 0))(
  ( (Unit!166711) )
))
(declare-fun lt!2641898 () Unit!166710)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!842 (List!72769 List!72769 List!72769) Unit!166710)

(assert (=> b!7536354 (= lt!2641898 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!842 knownP!30 lt!2641899 input!7874))))

(declare-fun lt!2641895 () C!40098)

(declare-fun derivativeStep!5676 (Regex!19886 C!40098) Regex!19886)

(assert (=> b!7536354 (= (derivative!418 baseR!101 lt!2641899) (derivativeStep!5676 r!24333 lt!2641895))))

(declare-fun lt!2641900 () Unit!166710)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!124 (Regex!19886 Regex!19886 List!72769 C!40098) Unit!166710)

(assert (=> b!7536354 (= lt!2641900 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!124 baseR!101 r!24333 testedP!423 lt!2641895))))

(assert (=> b!7536354 (isPrefix!6092 lt!2641899 input!7874)))

(declare-fun lt!2641897 () Unit!166710)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1157 (List!72769 List!72769) Unit!166710)

(assert (=> b!7536354 (= lt!2641897 (lemmaAddHeadSuffixToPrefixStillPrefix!1157 testedP!423 input!7874))))

(declare-fun ++!17403 (List!72769 List!72769) List!72769)

(assert (=> b!7536354 (= lt!2641899 (++!17403 testedP!423 (Cons!72645 lt!2641895 Nil!72645)))))

(declare-fun head!15476 (List!72769) C!40098)

(declare-fun getSuffix!3572 (List!72769 List!72769) List!72769)

(assert (=> b!7536354 (= lt!2641895 (head!15476 (getSuffix!3572 input!7874 testedP!423)))))

(declare-fun b!7536355 () Bool)

(declare-fun res!3020151 () Bool)

(assert (=> b!7536355 (=> (not res!3020151) (not e!4490753))))

(assert (=> b!7536355 (= res!3020151 (validRegex!10314 r!24333))))

(declare-fun b!7536356 () Bool)

(declare-fun tp!2191918 () Bool)

(assert (=> b!7536356 (= e!4490749 (and tp_is_empty!50127 tp!2191918))))

(declare-fun b!7536357 () Bool)

(declare-fun res!3020159 () Bool)

(assert (=> b!7536357 (=> res!3020159 e!4490752)))

(declare-fun lostCause!1678 (Regex!19886) Bool)

(assert (=> b!7536357 (= res!3020159 (lostCause!1678 r!24333))))

(declare-fun b!7536358 () Bool)

(declare-fun res!3020156 () Bool)

(assert (=> b!7536358 (=> res!3020156 e!4490752)))

(assert (=> b!7536358 (= res!3020156 (= lt!2641893 lt!2641894))))

(declare-fun b!7536359 () Bool)

(assert (=> b!7536359 (= e!4490750 (not e!4490752))))

(declare-fun res!3020161 () Bool)

(assert (=> b!7536359 (=> res!3020161 e!4490752)))

(assert (=> b!7536359 (= res!3020161 (not (matchR!9488 r!24333 (getSuffix!3572 knownP!30 testedP!423))))))

(assert (=> b!7536359 (isPrefix!6092 testedP!423 knownP!30)))

(declare-fun lt!2641896 () Unit!166710)

(assert (=> b!7536359 (= lt!2641896 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!842 knownP!30 testedP!423 input!7874))))

(declare-fun b!7536360 () Bool)

(declare-fun tp!2191917 () Bool)

(assert (=> b!7536360 (= e!4490755 (and tp_is_empty!50127 tp!2191917))))

(declare-fun b!7536361 () Bool)

(declare-fun res!3020155 () Bool)

(assert (=> b!7536361 (=> (not res!3020155) (not e!4490753))))

(assert (=> b!7536361 (= res!3020155 (isPrefix!6092 knownP!30 input!7874))))

(assert (= (and start!728934 res!3020160) b!7536355))

(assert (= (and b!7536355 res!3020151) b!7536344))

(assert (= (and b!7536344 res!3020157) b!7536361))

(assert (= (and b!7536361 res!3020155) b!7536351))

(assert (= (and b!7536351 res!3020154) b!7536353))

(assert (= (and b!7536353 res!3020152) b!7536359))

(assert (= (and b!7536359 (not res!3020161)) b!7536343))

(assert (= (and b!7536343 (not res!3020158)) b!7536357))

(assert (= (and b!7536357 (not res!3020159)) b!7536358))

(assert (= (and b!7536358 (not res!3020156)) b!7536340))

(assert (= (and b!7536340 (not res!3020153)) b!7536354))

(assert (= (and start!728934 (is-ElementMatch!19886 baseR!101)) b!7536346))

(assert (= (and start!728934 (is-Concat!28731 baseR!101)) b!7536347))

(assert (= (and start!728934 (is-Star!19886 baseR!101)) b!7536341))

(assert (= (and start!728934 (is-Union!19886 baseR!101)) b!7536349))

(assert (= (and start!728934 (is-Cons!72645 input!7874)) b!7536360))

(assert (= (and start!728934 (is-Cons!72645 knownP!30)) b!7536356))

(assert (= (and start!728934 (is-Cons!72645 testedP!423)) b!7536342))

(assert (= (and start!728934 (is-ElementMatch!19886 r!24333)) b!7536345))

(assert (= (and start!728934 (is-Concat!28731 r!24333)) b!7536352))

(assert (= (and start!728934 (is-Star!19886 r!24333)) b!7536350))

(assert (= (and start!728934 (is-Union!19886 r!24333)) b!7536348))

(declare-fun m!8106978 () Bool)

(assert (=> b!7536355 m!8106978))

(declare-fun m!8106980 () Bool)

(assert (=> b!7536353 m!8106980))

(declare-fun m!8106982 () Bool)

(assert (=> b!7536354 m!8106982))

(declare-fun m!8106984 () Bool)

(assert (=> b!7536354 m!8106984))

(declare-fun m!8106986 () Bool)

(assert (=> b!7536354 m!8106986))

(declare-fun m!8106988 () Bool)

(assert (=> b!7536354 m!8106988))

(assert (=> b!7536354 m!8106986))

(declare-fun m!8106990 () Bool)

(assert (=> b!7536354 m!8106990))

(declare-fun m!8106992 () Bool)

(assert (=> b!7536354 m!8106992))

(declare-fun m!8106994 () Bool)

(assert (=> b!7536354 m!8106994))

(declare-fun m!8106996 () Bool)

(assert (=> b!7536354 m!8106996))

(declare-fun m!8106998 () Bool)

(assert (=> b!7536354 m!8106998))

(declare-fun m!8107000 () Bool)

(assert (=> b!7536354 m!8107000))

(declare-fun m!8107002 () Bool)

(assert (=> b!7536354 m!8107002))

(declare-fun m!8107004 () Bool)

(assert (=> b!7536344 m!8107004))

(declare-fun m!8107006 () Bool)

(assert (=> b!7536357 m!8107006))

(declare-fun m!8107008 () Bool)

(assert (=> b!7536351 m!8107008))

(declare-fun m!8107010 () Bool)

(assert (=> b!7536351 m!8107010))

(declare-fun m!8107012 () Bool)

(assert (=> b!7536361 m!8107012))

(declare-fun m!8107014 () Bool)

(assert (=> b!7536359 m!8107014))

(assert (=> b!7536359 m!8107014))

(declare-fun m!8107016 () Bool)

(assert (=> b!7536359 m!8107016))

(declare-fun m!8107018 () Bool)

(assert (=> b!7536359 m!8107018))

(declare-fun m!8107020 () Bool)

(assert (=> b!7536359 m!8107020))

(declare-fun m!8107022 () Bool)

(assert (=> b!7536340 m!8107022))

(declare-fun m!8107024 () Bool)

(assert (=> b!7536343 m!8107024))

(declare-fun m!8107026 () Bool)

(assert (=> start!728934 m!8107026))

(push 1)

(assert (not b!7536356))

(assert (not b!7536342))

(assert (not b!7536344))

(assert (not b!7536350))

(assert (not b!7536352))

(assert (not b!7536347))

(assert (not start!728934))

(assert (not b!7536360))

(assert (not b!7536355))

(assert (not b!7536359))

(assert (not b!7536349))

(assert (not b!7536353))

(assert (not b!7536340))

(assert (not b!7536343))

(assert (not b!7536357))

(assert (not b!7536351))

(assert tp_is_empty!50127)

(assert (not b!7536354))

(assert (not b!7536361))

(assert (not b!7536348))

(assert (not b!7536341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7536475 () Bool)

(declare-fun e!4490814 () Bool)

(declare-fun call!691386 () Bool)

(assert (=> b!7536475 (= e!4490814 call!691386)))

(declare-fun b!7536476 () Bool)

(declare-fun e!4490809 () Bool)

(declare-fun call!691385 () Bool)

(assert (=> b!7536476 (= e!4490809 call!691385)))

(declare-fun b!7536477 () Bool)

(declare-fun e!4490810 () Bool)

(declare-fun e!4490812 () Bool)

(assert (=> b!7536477 (= e!4490810 e!4490812)))

(declare-fun res!3020224 () Bool)

(assert (=> b!7536477 (=> (not res!3020224) (not e!4490812))))

(declare-fun call!691387 () Bool)

(assert (=> b!7536477 (= res!3020224 call!691387)))

(declare-fun bm!691380 () Bool)

(declare-fun c!1391574 () Bool)

(assert (=> bm!691380 (= call!691387 (validRegex!10314 (ite c!1391574 (regOne!40285 r!24333) (regOne!40284 r!24333))))))

(declare-fun b!7536478 () Bool)

(declare-fun res!3020223 () Bool)

(assert (=> b!7536478 (=> (not res!3020223) (not e!4490809))))

(assert (=> b!7536478 (= res!3020223 call!691387)))

(declare-fun e!4490811 () Bool)

(assert (=> b!7536478 (= e!4490811 e!4490809)))

(declare-fun bm!691381 () Bool)

(assert (=> bm!691381 (= call!691385 call!691386)))

(declare-fun b!7536479 () Bool)

(declare-fun e!4490808 () Bool)

(declare-fun e!4490813 () Bool)

(assert (=> b!7536479 (= e!4490808 e!4490813)))

(declare-fun c!1391573 () Bool)

(assert (=> b!7536479 (= c!1391573 (is-Star!19886 r!24333))))

(declare-fun b!7536474 () Bool)

(declare-fun res!3020222 () Bool)

(assert (=> b!7536474 (=> res!3020222 e!4490810)))

(assert (=> b!7536474 (= res!3020222 (not (is-Concat!28731 r!24333)))))

(assert (=> b!7536474 (= e!4490811 e!4490810)))

(declare-fun d!2310525 () Bool)

(declare-fun res!3020221 () Bool)

(assert (=> d!2310525 (=> res!3020221 e!4490808)))

(assert (=> d!2310525 (= res!3020221 (is-ElementMatch!19886 r!24333))))

(assert (=> d!2310525 (= (validRegex!10314 r!24333) e!4490808)))

(declare-fun b!7536480 () Bool)

(assert (=> b!7536480 (= e!4490813 e!4490814)))

(declare-fun res!3020225 () Bool)

(declare-fun nullable!8666 (Regex!19886) Bool)

(assert (=> b!7536480 (= res!3020225 (not (nullable!8666 (reg!20215 r!24333))))))

(assert (=> b!7536480 (=> (not res!3020225) (not e!4490814))))

(declare-fun b!7536481 () Bool)

(assert (=> b!7536481 (= e!4490812 call!691385)))

(declare-fun bm!691382 () Bool)

(assert (=> bm!691382 (= call!691386 (validRegex!10314 (ite c!1391573 (reg!20215 r!24333) (ite c!1391574 (regTwo!40285 r!24333) (regTwo!40284 r!24333)))))))

(declare-fun b!7536482 () Bool)

(assert (=> b!7536482 (= e!4490813 e!4490811)))

(assert (=> b!7536482 (= c!1391574 (is-Union!19886 r!24333))))

(assert (= (and d!2310525 (not res!3020221)) b!7536479))

(assert (= (and b!7536479 c!1391573) b!7536480))

(assert (= (and b!7536479 (not c!1391573)) b!7536482))

(assert (= (and b!7536480 res!3020225) b!7536475))

(assert (= (and b!7536482 c!1391574) b!7536478))

(assert (= (and b!7536482 (not c!1391574)) b!7536474))

(assert (= (and b!7536478 res!3020223) b!7536476))

(assert (= (and b!7536474 (not res!3020222)) b!7536477))

(assert (= (and b!7536477 res!3020224) b!7536481))

(assert (= (or b!7536478 b!7536477) bm!691380))

(assert (= (or b!7536476 b!7536481) bm!691381))

(assert (= (or b!7536475 bm!691381) bm!691382))

(declare-fun m!8107078 () Bool)

(assert (=> bm!691380 m!8107078))

(declare-fun m!8107080 () Bool)

(assert (=> b!7536480 m!8107080))

(declare-fun m!8107082 () Bool)

(assert (=> bm!691382 m!8107082))

(assert (=> b!7536355 d!2310525))

(declare-fun b!7536505 () Bool)

(declare-fun e!4490828 () Bool)

(declare-fun e!4490829 () Bool)

(assert (=> b!7536505 (= e!4490828 e!4490829)))

(declare-fun res!3020244 () Bool)

(assert (=> b!7536505 (=> (not res!3020244) (not e!4490829))))

(assert (=> b!7536505 (= res!3020244 (not (is-Nil!72645 input!7874)))))

(declare-fun b!7536507 () Bool)

(declare-fun tail!15028 (List!72769) List!72769)

(assert (=> b!7536507 (= e!4490829 (isPrefix!6092 (tail!15028 knownP!30) (tail!15028 input!7874)))))

(declare-fun d!2310527 () Bool)

(declare-fun e!4490830 () Bool)

(assert (=> d!2310527 e!4490830))

(declare-fun res!3020245 () Bool)

(assert (=> d!2310527 (=> res!3020245 e!4490830)))

(declare-fun lt!2641930 () Bool)

(assert (=> d!2310527 (= res!3020245 (not lt!2641930))))

(assert (=> d!2310527 (= lt!2641930 e!4490828)))

(declare-fun res!3020242 () Bool)

(assert (=> d!2310527 (=> res!3020242 e!4490828)))

(assert (=> d!2310527 (= res!3020242 (is-Nil!72645 knownP!30))))

(assert (=> d!2310527 (= (isPrefix!6092 knownP!30 input!7874) lt!2641930)))

(declare-fun b!7536508 () Bool)

(assert (=> b!7536508 (= e!4490830 (>= (size!42382 input!7874) (size!42382 knownP!30)))))

(declare-fun b!7536506 () Bool)

(declare-fun res!3020243 () Bool)

(assert (=> b!7536506 (=> (not res!3020243) (not e!4490829))))

(assert (=> b!7536506 (= res!3020243 (= (head!15476 knownP!30) (head!15476 input!7874)))))

(assert (= (and d!2310527 (not res!3020242)) b!7536505))

(assert (= (and b!7536505 res!3020244) b!7536506))

(assert (= (and b!7536506 res!3020243) b!7536507))

(assert (= (and d!2310527 (not res!3020245)) b!7536508))

(declare-fun m!8107092 () Bool)

(assert (=> b!7536507 m!8107092))

(declare-fun m!8107094 () Bool)

(assert (=> b!7536507 m!8107094))

(assert (=> b!7536507 m!8107092))

(assert (=> b!7536507 m!8107094))

(declare-fun m!8107098 () Bool)

(assert (=> b!7536507 m!8107098))

(assert (=> b!7536508 m!8107022))

(assert (=> b!7536508 m!8107010))

(declare-fun m!8107100 () Bool)

(assert (=> b!7536506 m!8107100))

(declare-fun m!8107102 () Bool)

(assert (=> b!7536506 m!8107102))

(assert (=> b!7536361 d!2310527))

(declare-fun d!2310529 () Bool)

(declare-fun lt!2641933 () Int)

(assert (=> d!2310529 (>= lt!2641933 0)))

(declare-fun e!4490833 () Int)

(assert (=> d!2310529 (= lt!2641933 e!4490833)))

(declare-fun c!1391580 () Bool)

(assert (=> d!2310529 (= c!1391580 (is-Nil!72645 input!7874))))

(assert (=> d!2310529 (= (size!42382 input!7874) lt!2641933)))

(declare-fun b!7536513 () Bool)

(assert (=> b!7536513 (= e!4490833 0)))

(declare-fun b!7536514 () Bool)

(assert (=> b!7536514 (= e!4490833 (+ 1 (size!42382 (t!387476 input!7874))))))

(assert (= (and d!2310529 c!1391580) b!7536513))

(assert (= (and d!2310529 (not c!1391580)) b!7536514))

(declare-fun m!8107108 () Bool)

(assert (=> b!7536514 m!8107108))

(assert (=> b!7536340 d!2310529))

(declare-fun d!2310533 () Bool)

(declare-fun lt!2641939 () Regex!19886)

(assert (=> d!2310533 (validRegex!10314 lt!2641939)))

(declare-fun e!4490839 () Regex!19886)

(assert (=> d!2310533 (= lt!2641939 e!4490839)))

(declare-fun c!1391586 () Bool)

(assert (=> d!2310533 (= c!1391586 (is-Cons!72645 testedP!423))))

(assert (=> d!2310533 (validRegex!10314 baseR!101)))

(assert (=> d!2310533 (= (derivative!418 baseR!101 testedP!423) lt!2641939)))

(declare-fun b!7536525 () Bool)

(assert (=> b!7536525 (= e!4490839 (derivative!418 (derivativeStep!5676 baseR!101 (h!79093 testedP!423)) (t!387476 testedP!423)))))

(declare-fun b!7536526 () Bool)

(assert (=> b!7536526 (= e!4490839 baseR!101)))

(assert (= (and d!2310533 c!1391586) b!7536525))

(assert (= (and d!2310533 (not c!1391586)) b!7536526))

(declare-fun m!8107116 () Bool)

(assert (=> d!2310533 m!8107116))

(assert (=> d!2310533 m!8107026))

(declare-fun m!8107118 () Bool)

(assert (=> b!7536525 m!8107118))

(assert (=> b!7536525 m!8107118))

(declare-fun m!8107120 () Bool)

(assert (=> b!7536525 m!8107120))

(assert (=> b!7536343 d!2310533))

(declare-fun bm!691386 () Bool)

(declare-fun call!691391 () Bool)

(declare-fun isEmpty!41362 (List!72769) Bool)

(assert (=> bm!691386 (= call!691391 (isEmpty!41362 (getSuffix!3572 knownP!30 testedP!423)))))

(declare-fun b!7536573 () Bool)

(declare-fun e!4490868 () Bool)

(declare-fun lt!2641951 () Bool)

(assert (=> b!7536573 (= e!4490868 (= lt!2641951 call!691391))))

(declare-fun b!7536574 () Bool)

(declare-fun res!3020277 () Bool)

(declare-fun e!4490866 () Bool)

(assert (=> b!7536574 (=> (not res!3020277) (not e!4490866))))

(assert (=> b!7536574 (= res!3020277 (not call!691391))))

(declare-fun b!7536575 () Bool)

(declare-fun e!4490867 () Bool)

(declare-fun e!4490872 () Bool)

(assert (=> b!7536575 (= e!4490867 e!4490872)))

(declare-fun res!3020281 () Bool)

(assert (=> b!7536575 (=> (not res!3020281) (not e!4490872))))

(assert (=> b!7536575 (= res!3020281 (not lt!2641951))))

(declare-fun b!7536576 () Bool)

(declare-fun e!4490870 () Bool)

(assert (=> b!7536576 (= e!4490868 e!4490870)))

(declare-fun c!1391597 () Bool)

(assert (=> b!7536576 (= c!1391597 (is-EmptyLang!19886 r!24333))))

(declare-fun b!7536577 () Bool)

(declare-fun res!3020275 () Bool)

(assert (=> b!7536577 (=> (not res!3020275) (not e!4490866))))

(assert (=> b!7536577 (= res!3020275 (isEmpty!41362 (tail!15028 (getSuffix!3572 knownP!30 testedP!423))))))

(declare-fun b!7536578 () Bool)

(assert (=> b!7536578 (= e!4490870 (not lt!2641951))))

(declare-fun b!7536579 () Bool)

(declare-fun res!3020278 () Bool)

(assert (=> b!7536579 (=> res!3020278 e!4490867)))

(assert (=> b!7536579 (= res!3020278 (not (is-ElementMatch!19886 r!24333)))))

(assert (=> b!7536579 (= e!4490870 e!4490867)))

(declare-fun d!2310537 () Bool)

(assert (=> d!2310537 e!4490868))

(declare-fun c!1391598 () Bool)

(assert (=> d!2310537 (= c!1391598 (is-EmptyExpr!19886 r!24333))))

(declare-fun e!4490869 () Bool)

(assert (=> d!2310537 (= lt!2641951 e!4490869)))

(declare-fun c!1391596 () Bool)

(assert (=> d!2310537 (= c!1391596 (isEmpty!41362 (getSuffix!3572 knownP!30 testedP!423)))))

(assert (=> d!2310537 (validRegex!10314 r!24333)))

(assert (=> d!2310537 (= (matchR!9488 r!24333 (getSuffix!3572 knownP!30 testedP!423)) lt!2641951)))

(declare-fun b!7536580 () Bool)

(assert (=> b!7536580 (= e!4490866 (= (head!15476 (getSuffix!3572 knownP!30 testedP!423)) (c!1391561 r!24333)))))

(declare-fun b!7536581 () Bool)

(declare-fun res!3020280 () Bool)

(declare-fun e!4490871 () Bool)

(assert (=> b!7536581 (=> res!3020280 e!4490871)))

(assert (=> b!7536581 (= res!3020280 (not (isEmpty!41362 (tail!15028 (getSuffix!3572 knownP!30 testedP!423)))))))

(declare-fun b!7536582 () Bool)

(assert (=> b!7536582 (= e!4490871 (not (= (head!15476 (getSuffix!3572 knownP!30 testedP!423)) (c!1391561 r!24333))))))

(declare-fun b!7536583 () Bool)

(assert (=> b!7536583 (= e!4490869 (matchR!9488 (derivativeStep!5676 r!24333 (head!15476 (getSuffix!3572 knownP!30 testedP!423))) (tail!15028 (getSuffix!3572 knownP!30 testedP!423))))))

(declare-fun b!7536584 () Bool)

(declare-fun res!3020279 () Bool)

(assert (=> b!7536584 (=> res!3020279 e!4490867)))

(assert (=> b!7536584 (= res!3020279 e!4490866)))

(declare-fun res!3020276 () Bool)

(assert (=> b!7536584 (=> (not res!3020276) (not e!4490866))))

(assert (=> b!7536584 (= res!3020276 lt!2641951)))

(declare-fun b!7536585 () Bool)

(assert (=> b!7536585 (= e!4490869 (nullable!8666 r!24333))))

(declare-fun b!7536586 () Bool)

(assert (=> b!7536586 (= e!4490872 e!4490871)))

(declare-fun res!3020274 () Bool)

(assert (=> b!7536586 (=> res!3020274 e!4490871)))

(assert (=> b!7536586 (= res!3020274 call!691391)))

(assert (= (and d!2310537 c!1391596) b!7536585))

(assert (= (and d!2310537 (not c!1391596)) b!7536583))

(assert (= (and d!2310537 c!1391598) b!7536573))

(assert (= (and d!2310537 (not c!1391598)) b!7536576))

(assert (= (and b!7536576 c!1391597) b!7536578))

(assert (= (and b!7536576 (not c!1391597)) b!7536579))

(assert (= (and b!7536579 (not res!3020278)) b!7536584))

(assert (= (and b!7536584 res!3020276) b!7536574))

(assert (= (and b!7536574 res!3020277) b!7536577))

(assert (= (and b!7536577 res!3020275) b!7536580))

(assert (= (and b!7536584 (not res!3020279)) b!7536575))

(assert (= (and b!7536575 res!3020281) b!7536586))

(assert (= (and b!7536586 (not res!3020274)) b!7536581))

(assert (= (and b!7536581 (not res!3020280)) b!7536582))

(assert (= (or b!7536573 b!7536574 b!7536586) bm!691386))

(assert (=> bm!691386 m!8107014))

(declare-fun m!8107136 () Bool)

(assert (=> bm!691386 m!8107136))

(assert (=> b!7536581 m!8107014))

(declare-fun m!8107138 () Bool)

(assert (=> b!7536581 m!8107138))

(assert (=> b!7536581 m!8107138))

(declare-fun m!8107140 () Bool)

(assert (=> b!7536581 m!8107140))

(assert (=> b!7536582 m!8107014))

(declare-fun m!8107142 () Bool)

(assert (=> b!7536582 m!8107142))

(assert (=> b!7536580 m!8107014))

(assert (=> b!7536580 m!8107142))

(assert (=> b!7536583 m!8107014))

(assert (=> b!7536583 m!8107142))

(assert (=> b!7536583 m!8107142))

(declare-fun m!8107144 () Bool)

(assert (=> b!7536583 m!8107144))

(assert (=> b!7536583 m!8107014))

(assert (=> b!7536583 m!8107138))

(assert (=> b!7536583 m!8107144))

(assert (=> b!7536583 m!8107138))

(declare-fun m!8107146 () Bool)

(assert (=> b!7536583 m!8107146))

(declare-fun m!8107148 () Bool)

(assert (=> b!7536585 m!8107148))

(assert (=> b!7536577 m!8107014))

(assert (=> b!7536577 m!8107138))

(assert (=> b!7536577 m!8107138))

(assert (=> b!7536577 m!8107140))

(assert (=> d!2310537 m!8107014))

(assert (=> d!2310537 m!8107136))

(assert (=> d!2310537 m!8106978))

(assert (=> b!7536359 d!2310537))

(declare-fun d!2310547 () Bool)

(declare-fun lt!2641957 () List!72769)

(assert (=> d!2310547 (= (++!17403 testedP!423 lt!2641957) knownP!30)))

(declare-fun e!4490878 () List!72769)

(assert (=> d!2310547 (= lt!2641957 e!4490878)))

(declare-fun c!1391604 () Bool)

(assert (=> d!2310547 (= c!1391604 (is-Cons!72645 testedP!423))))

(assert (=> d!2310547 (>= (size!42382 knownP!30) (size!42382 testedP!423))))

(assert (=> d!2310547 (= (getSuffix!3572 knownP!30 testedP!423) lt!2641957)))

(declare-fun b!7536597 () Bool)

(assert (=> b!7536597 (= e!4490878 (getSuffix!3572 (tail!15028 knownP!30) (t!387476 testedP!423)))))

(declare-fun b!7536598 () Bool)

(assert (=> b!7536598 (= e!4490878 knownP!30)))

(assert (= (and d!2310547 c!1391604) b!7536597))

(assert (= (and d!2310547 (not c!1391604)) b!7536598))

(declare-fun m!8107150 () Bool)

(assert (=> d!2310547 m!8107150))

(assert (=> d!2310547 m!8107010))

(assert (=> d!2310547 m!8107008))

(assert (=> b!7536597 m!8107092))

(assert (=> b!7536597 m!8107092))

(declare-fun m!8107152 () Bool)

(assert (=> b!7536597 m!8107152))

(assert (=> b!7536359 d!2310547))

(declare-fun b!7536601 () Bool)

(declare-fun e!4490880 () Bool)

(declare-fun e!4490881 () Bool)

(assert (=> b!7536601 (= e!4490880 e!4490881)))

(declare-fun res!3020284 () Bool)

(assert (=> b!7536601 (=> (not res!3020284) (not e!4490881))))

(assert (=> b!7536601 (= res!3020284 (not (is-Nil!72645 knownP!30)))))

(declare-fun b!7536603 () Bool)

(assert (=> b!7536603 (= e!4490881 (isPrefix!6092 (tail!15028 testedP!423) (tail!15028 knownP!30)))))

(declare-fun d!2310549 () Bool)

(declare-fun e!4490882 () Bool)

(assert (=> d!2310549 e!4490882))

(declare-fun res!3020285 () Bool)

(assert (=> d!2310549 (=> res!3020285 e!4490882)))

(declare-fun lt!2641959 () Bool)

(assert (=> d!2310549 (= res!3020285 (not lt!2641959))))

(assert (=> d!2310549 (= lt!2641959 e!4490880)))

(declare-fun res!3020282 () Bool)

(assert (=> d!2310549 (=> res!3020282 e!4490880)))

(assert (=> d!2310549 (= res!3020282 (is-Nil!72645 testedP!423))))

(assert (=> d!2310549 (= (isPrefix!6092 testedP!423 knownP!30) lt!2641959)))

(declare-fun b!7536604 () Bool)

(assert (=> b!7536604 (= e!4490882 (>= (size!42382 knownP!30) (size!42382 testedP!423)))))

(declare-fun b!7536602 () Bool)

(declare-fun res!3020283 () Bool)

(assert (=> b!7536602 (=> (not res!3020283) (not e!4490881))))

(assert (=> b!7536602 (= res!3020283 (= (head!15476 testedP!423) (head!15476 knownP!30)))))

(assert (= (and d!2310549 (not res!3020282)) b!7536601))

(assert (= (and b!7536601 res!3020284) b!7536602))

(assert (= (and b!7536602 res!3020283) b!7536603))

(assert (= (and d!2310549 (not res!3020285)) b!7536604))

(declare-fun m!8107160 () Bool)

(assert (=> b!7536603 m!8107160))

(assert (=> b!7536603 m!8107092))

(assert (=> b!7536603 m!8107160))

(assert (=> b!7536603 m!8107092))

(declare-fun m!8107162 () Bool)

(assert (=> b!7536603 m!8107162))

(assert (=> b!7536604 m!8107010))

(assert (=> b!7536604 m!8107008))

(declare-fun m!8107164 () Bool)

(assert (=> b!7536602 m!8107164))

(assert (=> b!7536602 m!8107100))

(assert (=> b!7536359 d!2310549))

(declare-fun d!2310553 () Bool)

(assert (=> d!2310553 (isPrefix!6092 testedP!423 knownP!30)))

(declare-fun lt!2641963 () Unit!166710)

(declare-fun choose!58293 (List!72769 List!72769 List!72769) Unit!166710)

(assert (=> d!2310553 (= lt!2641963 (choose!58293 knownP!30 testedP!423 input!7874))))

(assert (=> d!2310553 (isPrefix!6092 knownP!30 input!7874)))

(assert (=> d!2310553 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!842 knownP!30 testedP!423 input!7874) lt!2641963)))

(declare-fun bs!1939908 () Bool)

(assert (= bs!1939908 d!2310553))

(assert (=> bs!1939908 m!8107018))

(declare-fun m!8107172 () Bool)

(assert (=> bs!1939908 m!8107172))

(assert (=> bs!1939908 m!8107012))

(assert (=> b!7536359 d!2310553))

(declare-fun b!7536607 () Bool)

(declare-fun e!4490884 () Bool)

(declare-fun e!4490885 () Bool)

(assert (=> b!7536607 (= e!4490884 e!4490885)))

(declare-fun res!3020288 () Bool)

(assert (=> b!7536607 (=> (not res!3020288) (not e!4490885))))

(assert (=> b!7536607 (= res!3020288 (not (is-Nil!72645 input!7874)))))

(declare-fun b!7536609 () Bool)

(assert (=> b!7536609 (= e!4490885 (isPrefix!6092 (tail!15028 lt!2641899) (tail!15028 input!7874)))))

(declare-fun d!2310557 () Bool)

(declare-fun e!4490886 () Bool)

(assert (=> d!2310557 e!4490886))

(declare-fun res!3020289 () Bool)

(assert (=> d!2310557 (=> res!3020289 e!4490886)))

(declare-fun lt!2641964 () Bool)

(assert (=> d!2310557 (= res!3020289 (not lt!2641964))))

(assert (=> d!2310557 (= lt!2641964 e!4490884)))

(declare-fun res!3020286 () Bool)

(assert (=> d!2310557 (=> res!3020286 e!4490884)))

(assert (=> d!2310557 (= res!3020286 (is-Nil!72645 lt!2641899))))

(assert (=> d!2310557 (= (isPrefix!6092 lt!2641899 input!7874) lt!2641964)))

(declare-fun b!7536610 () Bool)

(assert (=> b!7536610 (= e!4490886 (>= (size!42382 input!7874) (size!42382 lt!2641899)))))

(declare-fun b!7536608 () Bool)

(declare-fun res!3020287 () Bool)

(assert (=> b!7536608 (=> (not res!3020287) (not e!4490885))))

(assert (=> b!7536608 (= res!3020287 (= (head!15476 lt!2641899) (head!15476 input!7874)))))

(assert (= (and d!2310557 (not res!3020286)) b!7536607))

(assert (= (and b!7536607 res!3020288) b!7536608))

(assert (= (and b!7536608 res!3020287) b!7536609))

(assert (= (and d!2310557 (not res!3020289)) b!7536610))

(declare-fun m!8107174 () Bool)

(assert (=> b!7536609 m!8107174))

(assert (=> b!7536609 m!8107094))

(assert (=> b!7536609 m!8107174))

(assert (=> b!7536609 m!8107094))

(declare-fun m!8107176 () Bool)

(assert (=> b!7536609 m!8107176))

(assert (=> b!7536610 m!8107022))

(assert (=> b!7536610 m!8106992))

(declare-fun m!8107178 () Bool)

(assert (=> b!7536608 m!8107178))

(assert (=> b!7536608 m!8107102))

(assert (=> b!7536354 d!2310557))

(declare-fun d!2310559 () Bool)

(assert (=> d!2310559 (isPrefix!6092 lt!2641899 knownP!30)))

(declare-fun lt!2641965 () Unit!166710)

(assert (=> d!2310559 (= lt!2641965 (choose!58293 knownP!30 lt!2641899 input!7874))))

(assert (=> d!2310559 (isPrefix!6092 knownP!30 input!7874)))

(assert (=> d!2310559 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!842 knownP!30 lt!2641899 input!7874) lt!2641965)))

(declare-fun bs!1939909 () Bool)

(assert (= bs!1939909 d!2310559))

(assert (=> bs!1939909 m!8106998))

(declare-fun m!8107180 () Bool)

(assert (=> bs!1939909 m!8107180))

(assert (=> bs!1939909 m!8107012))

(assert (=> b!7536354 d!2310559))

(declare-fun d!2310561 () Bool)

(assert (=> d!2310561 (= (derivative!418 baseR!101 (++!17403 testedP!423 (Cons!72645 lt!2641895 Nil!72645))) (derivativeStep!5676 r!24333 lt!2641895))))

(declare-fun lt!2641972 () Unit!166710)

(declare-fun choose!58294 (Regex!19886 Regex!19886 List!72769 C!40098) Unit!166710)

(assert (=> d!2310561 (= lt!2641972 (choose!58294 baseR!101 r!24333 testedP!423 lt!2641895))))

(assert (=> d!2310561 (validRegex!10314 baseR!101)))

(assert (=> d!2310561 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!124 baseR!101 r!24333 testedP!423 lt!2641895) lt!2641972)))

(declare-fun bs!1939911 () Bool)

(assert (= bs!1939911 d!2310561))

(assert (=> bs!1939911 m!8106994))

(declare-fun m!8107192 () Bool)

(assert (=> bs!1939911 m!8107192))

(declare-fun m!8107194 () Bool)

(assert (=> bs!1939911 m!8107194))

(assert (=> bs!1939911 m!8106994))

(assert (=> bs!1939911 m!8106984))

(assert (=> bs!1939911 m!8107026))

(assert (=> b!7536354 d!2310561))

(declare-fun d!2310567 () Bool)

(declare-fun lt!2641974 () List!72769)

(assert (=> d!2310567 (= (++!17403 testedP!423 lt!2641974) input!7874)))

(declare-fun e!4490893 () List!72769)

(assert (=> d!2310567 (= lt!2641974 e!4490893)))

(declare-fun c!1391609 () Bool)

(assert (=> d!2310567 (= c!1391609 (is-Cons!72645 testedP!423))))

(assert (=> d!2310567 (>= (size!42382 input!7874) (size!42382 testedP!423))))

(assert (=> d!2310567 (= (getSuffix!3572 input!7874 testedP!423) lt!2641974)))

(declare-fun b!7536619 () Bool)

(assert (=> b!7536619 (= e!4490893 (getSuffix!3572 (tail!15028 input!7874) (t!387476 testedP!423)))))

(declare-fun b!7536620 () Bool)

(assert (=> b!7536620 (= e!4490893 input!7874)))

(assert (= (and d!2310567 c!1391609) b!7536619))

(assert (= (and d!2310567 (not c!1391609)) b!7536620))

(declare-fun m!8107198 () Bool)

(assert (=> d!2310567 m!8107198))

(assert (=> d!2310567 m!8107022))

(assert (=> d!2310567 m!8107008))

(assert (=> b!7536619 m!8107094))

(assert (=> b!7536619 m!8107094))

(declare-fun m!8107202 () Bool)

(assert (=> b!7536619 m!8107202))

(assert (=> b!7536354 d!2310567))

(declare-fun b!7536621 () Bool)

(declare-fun e!4490894 () Bool)

(declare-fun e!4490895 () Bool)

(assert (=> b!7536621 (= e!4490894 e!4490895)))

(declare-fun res!3020300 () Bool)

(assert (=> b!7536621 (=> (not res!3020300) (not e!4490895))))

(assert (=> b!7536621 (= res!3020300 (not (is-Nil!72645 knownP!30)))))

(declare-fun b!7536623 () Bool)

(assert (=> b!7536623 (= e!4490895 (isPrefix!6092 (tail!15028 lt!2641899) (tail!15028 knownP!30)))))

(declare-fun d!2310571 () Bool)

(declare-fun e!4490896 () Bool)

(assert (=> d!2310571 e!4490896))

(declare-fun res!3020301 () Bool)

(assert (=> d!2310571 (=> res!3020301 e!4490896)))

(declare-fun lt!2641975 () Bool)

(assert (=> d!2310571 (= res!3020301 (not lt!2641975))))

(assert (=> d!2310571 (= lt!2641975 e!4490894)))

(declare-fun res!3020298 () Bool)

(assert (=> d!2310571 (=> res!3020298 e!4490894)))

(assert (=> d!2310571 (= res!3020298 (is-Nil!72645 lt!2641899))))

(assert (=> d!2310571 (= (isPrefix!6092 lt!2641899 knownP!30) lt!2641975)))

(declare-fun b!7536624 () Bool)

(assert (=> b!7536624 (= e!4490896 (>= (size!42382 knownP!30) (size!42382 lt!2641899)))))

(declare-fun b!7536622 () Bool)

(declare-fun res!3020299 () Bool)

(assert (=> b!7536622 (=> (not res!3020299) (not e!4490895))))

(assert (=> b!7536622 (= res!3020299 (= (head!15476 lt!2641899) (head!15476 knownP!30)))))

(assert (= (and d!2310571 (not res!3020298)) b!7536621))

(assert (= (and b!7536621 res!3020300) b!7536622))

(assert (= (and b!7536622 res!3020299) b!7536623))

(assert (= (and d!2310571 (not res!3020301)) b!7536624))

(assert (=> b!7536623 m!8107174))

(assert (=> b!7536623 m!8107092))

(assert (=> b!7536623 m!8107174))

(assert (=> b!7536623 m!8107092))

(declare-fun m!8107204 () Bool)

(assert (=> b!7536623 m!8107204))

(assert (=> b!7536624 m!8107010))

(assert (=> b!7536624 m!8106992))

(assert (=> b!7536622 m!8107178))

(assert (=> b!7536622 m!8107100))

(assert (=> b!7536354 d!2310571))

(declare-fun d!2310573 () Bool)

(declare-fun lt!2641976 () Int)

(assert (=> d!2310573 (>= lt!2641976 0)))

(declare-fun e!4490897 () Int)

(assert (=> d!2310573 (= lt!2641976 e!4490897)))

(declare-fun c!1391610 () Bool)

(assert (=> d!2310573 (= c!1391610 (is-Nil!72645 lt!2641899))))

(assert (=> d!2310573 (= (size!42382 lt!2641899) lt!2641976)))

(declare-fun b!7536625 () Bool)

(assert (=> b!7536625 (= e!4490897 0)))

(declare-fun b!7536626 () Bool)

(assert (=> b!7536626 (= e!4490897 (+ 1 (size!42382 (t!387476 lt!2641899))))))

(assert (= (and d!2310573 c!1391610) b!7536625))

(assert (= (and d!2310573 (not c!1391610)) b!7536626))

(declare-fun m!8107206 () Bool)

(assert (=> b!7536626 m!8107206))

(assert (=> b!7536354 d!2310573))

(declare-fun b!7536659 () Bool)

(declare-fun c!1391627 () Bool)

(assert (=> b!7536659 (= c!1391627 (is-Union!19886 r!24333))))

(declare-fun e!4490915 () Regex!19886)

(declare-fun e!4490918 () Regex!19886)

(assert (=> b!7536659 (= e!4490915 e!4490918)))

(declare-fun b!7536660 () Bool)

(declare-fun e!4490917 () Regex!19886)

(assert (=> b!7536660 (= e!4490917 EmptyLang!19886)))

(declare-fun b!7536661 () Bool)

(declare-fun e!4490914 () Regex!19886)

(assert (=> b!7536661 (= e!4490918 e!4490914)))

(declare-fun c!1391624 () Bool)

(assert (=> b!7536661 (= c!1391624 (is-Star!19886 r!24333))))

(declare-fun b!7536662 () Bool)

(assert (=> b!7536662 (= e!4490915 (ite (= lt!2641895 (c!1391561 r!24333)) EmptyExpr!19886 EmptyLang!19886))))

(declare-fun b!7536663 () Bool)

(assert (=> b!7536663 (= e!4490917 e!4490915)))

(declare-fun c!1391628 () Bool)

(assert (=> b!7536663 (= c!1391628 (is-ElementMatch!19886 r!24333))))

(declare-fun b!7536664 () Bool)

(declare-fun e!4490916 () Regex!19886)

(declare-fun call!691402 () Regex!19886)

(assert (=> b!7536664 (= e!4490916 (Union!19886 (Concat!28731 call!691402 (regTwo!40284 r!24333)) EmptyLang!19886))))

(declare-fun bm!691395 () Bool)

(declare-fun call!691401 () Regex!19886)

(declare-fun call!691403 () Regex!19886)

(assert (=> bm!691395 (= call!691401 call!691403)))

(declare-fun bm!691396 () Bool)

(declare-fun call!691400 () Regex!19886)

(assert (=> bm!691396 (= call!691400 (derivativeStep!5676 (ite c!1391627 (regOne!40285 r!24333) (regTwo!40284 r!24333)) lt!2641895))))

(declare-fun b!7536665 () Bool)

(assert (=> b!7536665 (= e!4490918 (Union!19886 call!691400 call!691403))))

(declare-fun b!7536666 () Bool)

(assert (=> b!7536666 (= e!4490914 (Concat!28731 call!691401 r!24333))))

(declare-fun b!7536667 () Bool)

(declare-fun c!1391626 () Bool)

(assert (=> b!7536667 (= c!1391626 (nullable!8666 (regOne!40284 r!24333)))))

(assert (=> b!7536667 (= e!4490914 e!4490916)))

(declare-fun bm!691397 () Bool)

(assert (=> bm!691397 (= call!691402 call!691401)))

(declare-fun d!2310575 () Bool)

(declare-fun lt!2641985 () Regex!19886)

(assert (=> d!2310575 (validRegex!10314 lt!2641985)))

(assert (=> d!2310575 (= lt!2641985 e!4490917)))

(declare-fun c!1391625 () Bool)

(assert (=> d!2310575 (= c!1391625 (or (is-EmptyExpr!19886 r!24333) (is-EmptyLang!19886 r!24333)))))

(assert (=> d!2310575 (validRegex!10314 r!24333)))

(assert (=> d!2310575 (= (derivativeStep!5676 r!24333 lt!2641895) lt!2641985)))

(declare-fun b!7536668 () Bool)

(assert (=> b!7536668 (= e!4490916 (Union!19886 (Concat!28731 call!691402 (regTwo!40284 r!24333)) call!691400))))

(declare-fun bm!691398 () Bool)

(assert (=> bm!691398 (= call!691403 (derivativeStep!5676 (ite c!1391627 (regTwo!40285 r!24333) (ite c!1391624 (reg!20215 r!24333) (regOne!40284 r!24333))) lt!2641895))))

(assert (= (and d!2310575 c!1391625) b!7536660))

(assert (= (and d!2310575 (not c!1391625)) b!7536663))

(assert (= (and b!7536663 c!1391628) b!7536662))

(assert (= (and b!7536663 (not c!1391628)) b!7536659))

(assert (= (and b!7536659 c!1391627) b!7536665))

(assert (= (and b!7536659 (not c!1391627)) b!7536661))

(assert (= (and b!7536661 c!1391624) b!7536666))

(assert (= (and b!7536661 (not c!1391624)) b!7536667))

(assert (= (and b!7536667 c!1391626) b!7536668))

(assert (= (and b!7536667 (not c!1391626)) b!7536664))

(assert (= (or b!7536668 b!7536664) bm!691397))

(assert (= (or b!7536666 bm!691397) bm!691395))

(assert (= (or b!7536665 bm!691395) bm!691398))

(assert (= (or b!7536665 b!7536668) bm!691396))

(declare-fun m!8107228 () Bool)

(assert (=> bm!691396 m!8107228))

(declare-fun m!8107230 () Bool)

(assert (=> b!7536667 m!8107230))

(declare-fun m!8107232 () Bool)

(assert (=> d!2310575 m!8107232))

(assert (=> d!2310575 m!8106978))

(declare-fun m!8107234 () Bool)

(assert (=> bm!691398 m!8107234))

(assert (=> b!7536354 d!2310575))

(declare-fun d!2310583 () Bool)

(declare-fun lt!2641987 () Regex!19886)

(assert (=> d!2310583 (validRegex!10314 lt!2641987)))

(declare-fun e!4490919 () Regex!19886)

(assert (=> d!2310583 (= lt!2641987 e!4490919)))

(declare-fun c!1391629 () Bool)

(assert (=> d!2310583 (= c!1391629 (is-Cons!72645 lt!2641899))))

(assert (=> d!2310583 (validRegex!10314 baseR!101)))

(assert (=> d!2310583 (= (derivative!418 baseR!101 lt!2641899) lt!2641987)))

(declare-fun b!7536669 () Bool)

(assert (=> b!7536669 (= e!4490919 (derivative!418 (derivativeStep!5676 baseR!101 (h!79093 lt!2641899)) (t!387476 lt!2641899)))))

(declare-fun b!7536670 () Bool)

(assert (=> b!7536670 (= e!4490919 baseR!101)))

(assert (= (and d!2310583 c!1391629) b!7536669))

(assert (= (and d!2310583 (not c!1391629)) b!7536670))

(declare-fun m!8107236 () Bool)

(assert (=> d!2310583 m!8107236))

(assert (=> d!2310583 m!8107026))

(declare-fun m!8107238 () Bool)

(assert (=> b!7536669 m!8107238))

(assert (=> b!7536669 m!8107238))

(declare-fun m!8107240 () Bool)

(assert (=> b!7536669 m!8107240))

(assert (=> b!7536354 d!2310583))

(declare-fun e!4490924 () Bool)

(declare-fun b!7536682 () Bool)

(declare-fun lt!2641990 () List!72769)

(assert (=> b!7536682 (= e!4490924 (or (not (= (Cons!72645 lt!2641895 Nil!72645) Nil!72645)) (= lt!2641990 testedP!423)))))

(declare-fun b!7536680 () Bool)

(declare-fun e!4490925 () List!72769)

(assert (=> b!7536680 (= e!4490925 (Cons!72645 (h!79093 testedP!423) (++!17403 (t!387476 testedP!423) (Cons!72645 lt!2641895 Nil!72645))))))

(declare-fun b!7536681 () Bool)

(declare-fun res!3020313 () Bool)

(assert (=> b!7536681 (=> (not res!3020313) (not e!4490924))))

(assert (=> b!7536681 (= res!3020313 (= (size!42382 lt!2641990) (+ (size!42382 testedP!423) (size!42382 (Cons!72645 lt!2641895 Nil!72645)))))))

(declare-fun d!2310585 () Bool)

(assert (=> d!2310585 e!4490924))

(declare-fun res!3020312 () Bool)

(assert (=> d!2310585 (=> (not res!3020312) (not e!4490924))))

(declare-fun content!15355 (List!72769) (Set C!40098))

(assert (=> d!2310585 (= res!3020312 (= (content!15355 lt!2641990) (set.union (content!15355 testedP!423) (content!15355 (Cons!72645 lt!2641895 Nil!72645)))))))

(assert (=> d!2310585 (= lt!2641990 e!4490925)))

(declare-fun c!1391632 () Bool)

(assert (=> d!2310585 (= c!1391632 (is-Nil!72645 testedP!423))))

(assert (=> d!2310585 (= (++!17403 testedP!423 (Cons!72645 lt!2641895 Nil!72645)) lt!2641990)))

(declare-fun b!7536679 () Bool)

(assert (=> b!7536679 (= e!4490925 (Cons!72645 lt!2641895 Nil!72645))))

(assert (= (and d!2310585 c!1391632) b!7536679))

(assert (= (and d!2310585 (not c!1391632)) b!7536680))

(assert (= (and d!2310585 res!3020312) b!7536681))

(assert (= (and b!7536681 res!3020313) b!7536682))

(declare-fun m!8107242 () Bool)

(assert (=> b!7536680 m!8107242))

(declare-fun m!8107244 () Bool)

(assert (=> b!7536681 m!8107244))

(assert (=> b!7536681 m!8107008))

(declare-fun m!8107246 () Bool)

(assert (=> b!7536681 m!8107246))

(declare-fun m!8107248 () Bool)

(assert (=> d!2310585 m!8107248))

(declare-fun m!8107250 () Bool)

(assert (=> d!2310585 m!8107250))

(declare-fun m!8107252 () Bool)

(assert (=> d!2310585 m!8107252))

(assert (=> b!7536354 d!2310585))

(declare-fun d!2310587 () Bool)

(assert (=> d!2310587 (isPrefix!6092 (++!17403 testedP!423 (Cons!72645 (head!15476 (getSuffix!3572 input!7874 testedP!423)) Nil!72645)) input!7874)))

(declare-fun lt!2641993 () Unit!166710)

(declare-fun choose!58297 (List!72769 List!72769) Unit!166710)

(assert (=> d!2310587 (= lt!2641993 (choose!58297 testedP!423 input!7874))))

(assert (=> d!2310587 (isPrefix!6092 testedP!423 input!7874)))

(assert (=> d!2310587 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1157 testedP!423 input!7874) lt!2641993)))

(declare-fun bs!1939914 () Bool)

(assert (= bs!1939914 d!2310587))

(declare-fun m!8107254 () Bool)

(assert (=> bs!1939914 m!8107254))

(declare-fun m!8107256 () Bool)

(assert (=> bs!1939914 m!8107256))

(assert (=> bs!1939914 m!8106986))

(assert (=> bs!1939914 m!8107004))

(assert (=> bs!1939914 m!8107256))

(declare-fun m!8107258 () Bool)

(assert (=> bs!1939914 m!8107258))

(assert (=> bs!1939914 m!8106986))

(assert (=> bs!1939914 m!8106988))

(assert (=> b!7536354 d!2310587))

(declare-fun d!2310589 () Bool)

(assert (=> d!2310589 (= (head!15476 (getSuffix!3572 input!7874 testedP!423)) (h!79093 (getSuffix!3572 input!7874 testedP!423)))))

(assert (=> b!7536354 d!2310589))

(declare-fun b!7536684 () Bool)

(declare-fun e!4490932 () Bool)

(declare-fun call!691405 () Bool)

(assert (=> b!7536684 (= e!4490932 call!691405)))

(declare-fun b!7536685 () Bool)

(declare-fun e!4490927 () Bool)

(declare-fun call!691404 () Bool)

(assert (=> b!7536685 (= e!4490927 call!691404)))

(declare-fun b!7536686 () Bool)

(declare-fun e!4490928 () Bool)

(declare-fun e!4490930 () Bool)

(assert (=> b!7536686 (= e!4490928 e!4490930)))

(declare-fun res!3020317 () Bool)

(assert (=> b!7536686 (=> (not res!3020317) (not e!4490930))))

(declare-fun call!691406 () Bool)

(assert (=> b!7536686 (= res!3020317 call!691406)))

(declare-fun bm!691399 () Bool)

(declare-fun c!1391634 () Bool)

(assert (=> bm!691399 (= call!691406 (validRegex!10314 (ite c!1391634 (regOne!40285 baseR!101) (regOne!40284 baseR!101))))))

(declare-fun b!7536687 () Bool)

(declare-fun res!3020316 () Bool)

(assert (=> b!7536687 (=> (not res!3020316) (not e!4490927))))

(assert (=> b!7536687 (= res!3020316 call!691406)))

(declare-fun e!4490929 () Bool)

(assert (=> b!7536687 (= e!4490929 e!4490927)))

(declare-fun bm!691400 () Bool)

(assert (=> bm!691400 (= call!691404 call!691405)))

(declare-fun b!7536688 () Bool)

(declare-fun e!4490926 () Bool)

(declare-fun e!4490931 () Bool)

(assert (=> b!7536688 (= e!4490926 e!4490931)))

(declare-fun c!1391633 () Bool)

(assert (=> b!7536688 (= c!1391633 (is-Star!19886 baseR!101))))

(declare-fun b!7536683 () Bool)

(declare-fun res!3020315 () Bool)

(assert (=> b!7536683 (=> res!3020315 e!4490928)))

(assert (=> b!7536683 (= res!3020315 (not (is-Concat!28731 baseR!101)))))

(assert (=> b!7536683 (= e!4490929 e!4490928)))

(declare-fun d!2310591 () Bool)

(declare-fun res!3020314 () Bool)

(assert (=> d!2310591 (=> res!3020314 e!4490926)))

(assert (=> d!2310591 (= res!3020314 (is-ElementMatch!19886 baseR!101))))

(assert (=> d!2310591 (= (validRegex!10314 baseR!101) e!4490926)))

(declare-fun b!7536689 () Bool)

(assert (=> b!7536689 (= e!4490931 e!4490932)))

(declare-fun res!3020318 () Bool)

(assert (=> b!7536689 (= res!3020318 (not (nullable!8666 (reg!20215 baseR!101))))))

(assert (=> b!7536689 (=> (not res!3020318) (not e!4490932))))

(declare-fun b!7536690 () Bool)

(assert (=> b!7536690 (= e!4490930 call!691404)))

(declare-fun bm!691401 () Bool)

(assert (=> bm!691401 (= call!691405 (validRegex!10314 (ite c!1391633 (reg!20215 baseR!101) (ite c!1391634 (regTwo!40285 baseR!101) (regTwo!40284 baseR!101)))))))

(declare-fun b!7536691 () Bool)

(assert (=> b!7536691 (= e!4490931 e!4490929)))

(assert (=> b!7536691 (= c!1391634 (is-Union!19886 baseR!101))))

(assert (= (and d!2310591 (not res!3020314)) b!7536688))

(assert (= (and b!7536688 c!1391633) b!7536689))

(assert (= (and b!7536688 (not c!1391633)) b!7536691))

(assert (= (and b!7536689 res!3020318) b!7536684))

(assert (= (and b!7536691 c!1391634) b!7536687))

(assert (= (and b!7536691 (not c!1391634)) b!7536683))

(assert (= (and b!7536687 res!3020316) b!7536685))

(assert (= (and b!7536683 (not res!3020315)) b!7536686))

(assert (= (and b!7536686 res!3020317) b!7536690))

(assert (= (or b!7536687 b!7536686) bm!691399))

(assert (= (or b!7536685 b!7536690) bm!691400))

(assert (= (or b!7536684 bm!691400) bm!691401))

(declare-fun m!8107260 () Bool)

(assert (=> bm!691399 m!8107260))

(declare-fun m!8107262 () Bool)

(assert (=> b!7536689 m!8107262))

(declare-fun m!8107264 () Bool)

(assert (=> bm!691401 m!8107264))

(assert (=> start!728934 d!2310591))

(declare-fun b!7536692 () Bool)

(declare-fun e!4490933 () Bool)

(declare-fun e!4490934 () Bool)

(assert (=> b!7536692 (= e!4490933 e!4490934)))

(declare-fun res!3020321 () Bool)

(assert (=> b!7536692 (=> (not res!3020321) (not e!4490934))))

(assert (=> b!7536692 (= res!3020321 (not (is-Nil!72645 input!7874)))))

(declare-fun b!7536694 () Bool)

(assert (=> b!7536694 (= e!4490934 (isPrefix!6092 (tail!15028 testedP!423) (tail!15028 input!7874)))))

(declare-fun d!2310593 () Bool)

(declare-fun e!4490935 () Bool)

(assert (=> d!2310593 e!4490935))

(declare-fun res!3020322 () Bool)

(assert (=> d!2310593 (=> res!3020322 e!4490935)))

(declare-fun lt!2641994 () Bool)

(assert (=> d!2310593 (= res!3020322 (not lt!2641994))))

(assert (=> d!2310593 (= lt!2641994 e!4490933)))

(declare-fun res!3020319 () Bool)

(assert (=> d!2310593 (=> res!3020319 e!4490933)))

(assert (=> d!2310593 (= res!3020319 (is-Nil!72645 testedP!423))))

(assert (=> d!2310593 (= (isPrefix!6092 testedP!423 input!7874) lt!2641994)))

(declare-fun b!7536695 () Bool)

(assert (=> b!7536695 (= e!4490935 (>= (size!42382 input!7874) (size!42382 testedP!423)))))

(declare-fun b!7536693 () Bool)

(declare-fun res!3020320 () Bool)

(assert (=> b!7536693 (=> (not res!3020320) (not e!4490934))))

(assert (=> b!7536693 (= res!3020320 (= (head!15476 testedP!423) (head!15476 input!7874)))))

(assert (= (and d!2310593 (not res!3020319)) b!7536692))

(assert (= (and b!7536692 res!3020321) b!7536693))

(assert (= (and b!7536693 res!3020320) b!7536694))

(assert (= (and d!2310593 (not res!3020322)) b!7536695))

(assert (=> b!7536694 m!8107160))

(assert (=> b!7536694 m!8107094))

(assert (=> b!7536694 m!8107160))

(assert (=> b!7536694 m!8107094))

(declare-fun m!8107266 () Bool)

(assert (=> b!7536694 m!8107266))

(assert (=> b!7536695 m!8107022))

(assert (=> b!7536695 m!8107008))

(assert (=> b!7536693 m!8107164))

(assert (=> b!7536693 m!8107102))

(assert (=> b!7536344 d!2310593))

(declare-fun bm!691402 () Bool)

(declare-fun call!691407 () Bool)

(assert (=> bm!691402 (= call!691407 (isEmpty!41362 knownP!30))))

(declare-fun b!7536696 () Bool)

(declare-fun e!4490938 () Bool)

(declare-fun lt!2641995 () Bool)

(assert (=> b!7536696 (= e!4490938 (= lt!2641995 call!691407))))

(declare-fun b!7536697 () Bool)

(declare-fun res!3020326 () Bool)

(declare-fun e!4490936 () Bool)

(assert (=> b!7536697 (=> (not res!3020326) (not e!4490936))))

(assert (=> b!7536697 (= res!3020326 (not call!691407))))

(declare-fun b!7536698 () Bool)

(declare-fun e!4490937 () Bool)

(declare-fun e!4490942 () Bool)

(assert (=> b!7536698 (= e!4490937 e!4490942)))

(declare-fun res!3020330 () Bool)

(assert (=> b!7536698 (=> (not res!3020330) (not e!4490942))))

(assert (=> b!7536698 (= res!3020330 (not lt!2641995))))

(declare-fun b!7536699 () Bool)

(declare-fun e!4490940 () Bool)

(assert (=> b!7536699 (= e!4490938 e!4490940)))

(declare-fun c!1391636 () Bool)

(assert (=> b!7536699 (= c!1391636 (is-EmptyLang!19886 baseR!101))))

(declare-fun b!7536700 () Bool)

(declare-fun res!3020324 () Bool)

(assert (=> b!7536700 (=> (not res!3020324) (not e!4490936))))

(assert (=> b!7536700 (= res!3020324 (isEmpty!41362 (tail!15028 knownP!30)))))

(declare-fun b!7536701 () Bool)

(assert (=> b!7536701 (= e!4490940 (not lt!2641995))))

(declare-fun b!7536702 () Bool)

(declare-fun res!3020327 () Bool)

(assert (=> b!7536702 (=> res!3020327 e!4490937)))

(assert (=> b!7536702 (= res!3020327 (not (is-ElementMatch!19886 baseR!101)))))

(assert (=> b!7536702 (= e!4490940 e!4490937)))

(declare-fun d!2310595 () Bool)

(assert (=> d!2310595 e!4490938))

(declare-fun c!1391637 () Bool)

(assert (=> d!2310595 (= c!1391637 (is-EmptyExpr!19886 baseR!101))))

(declare-fun e!4490939 () Bool)

(assert (=> d!2310595 (= lt!2641995 e!4490939)))

(declare-fun c!1391635 () Bool)

(assert (=> d!2310595 (= c!1391635 (isEmpty!41362 knownP!30))))

(assert (=> d!2310595 (validRegex!10314 baseR!101)))

(assert (=> d!2310595 (= (matchR!9488 baseR!101 knownP!30) lt!2641995)))

(declare-fun b!7536703 () Bool)

(assert (=> b!7536703 (= e!4490936 (= (head!15476 knownP!30) (c!1391561 baseR!101)))))

(declare-fun b!7536704 () Bool)

(declare-fun res!3020329 () Bool)

(declare-fun e!4490941 () Bool)

(assert (=> b!7536704 (=> res!3020329 e!4490941)))

(assert (=> b!7536704 (= res!3020329 (not (isEmpty!41362 (tail!15028 knownP!30))))))

(declare-fun b!7536705 () Bool)

(assert (=> b!7536705 (= e!4490941 (not (= (head!15476 knownP!30) (c!1391561 baseR!101))))))

(declare-fun b!7536706 () Bool)

(assert (=> b!7536706 (= e!4490939 (matchR!9488 (derivativeStep!5676 baseR!101 (head!15476 knownP!30)) (tail!15028 knownP!30)))))

(declare-fun b!7536707 () Bool)

(declare-fun res!3020328 () Bool)

(assert (=> b!7536707 (=> res!3020328 e!4490937)))

(assert (=> b!7536707 (= res!3020328 e!4490936)))

(declare-fun res!3020325 () Bool)

(assert (=> b!7536707 (=> (not res!3020325) (not e!4490936))))

(assert (=> b!7536707 (= res!3020325 lt!2641995)))

(declare-fun b!7536708 () Bool)

(assert (=> b!7536708 (= e!4490939 (nullable!8666 baseR!101))))

(declare-fun b!7536709 () Bool)

(assert (=> b!7536709 (= e!4490942 e!4490941)))

(declare-fun res!3020323 () Bool)

(assert (=> b!7536709 (=> res!3020323 e!4490941)))

(assert (=> b!7536709 (= res!3020323 call!691407)))

(assert (= (and d!2310595 c!1391635) b!7536708))

(assert (= (and d!2310595 (not c!1391635)) b!7536706))

(assert (= (and d!2310595 c!1391637) b!7536696))

(assert (= (and d!2310595 (not c!1391637)) b!7536699))

(assert (= (and b!7536699 c!1391636) b!7536701))

(assert (= (and b!7536699 (not c!1391636)) b!7536702))

(assert (= (and b!7536702 (not res!3020327)) b!7536707))

(assert (= (and b!7536707 res!3020325) b!7536697))

(assert (= (and b!7536697 res!3020326) b!7536700))

(assert (= (and b!7536700 res!3020324) b!7536703))

(assert (= (and b!7536707 (not res!3020328)) b!7536698))

(assert (= (and b!7536698 res!3020330) b!7536709))

(assert (= (and b!7536709 (not res!3020323)) b!7536704))

(assert (= (and b!7536704 (not res!3020329)) b!7536705))

(assert (= (or b!7536696 b!7536697 b!7536709) bm!691402))

(declare-fun m!8107268 () Bool)

(assert (=> bm!691402 m!8107268))

(assert (=> b!7536704 m!8107092))

(assert (=> b!7536704 m!8107092))

(declare-fun m!8107270 () Bool)

(assert (=> b!7536704 m!8107270))

(assert (=> b!7536705 m!8107100))

(assert (=> b!7536703 m!8107100))

(assert (=> b!7536706 m!8107100))

(assert (=> b!7536706 m!8107100))

(declare-fun m!8107272 () Bool)

(assert (=> b!7536706 m!8107272))

(assert (=> b!7536706 m!8107092))

(assert (=> b!7536706 m!8107272))

(assert (=> b!7536706 m!8107092))

(declare-fun m!8107274 () Bool)

(assert (=> b!7536706 m!8107274))

(declare-fun m!8107276 () Bool)

(assert (=> b!7536708 m!8107276))

(assert (=> b!7536700 m!8107092))

(assert (=> b!7536700 m!8107092))

(assert (=> b!7536700 m!8107270))

(assert (=> d!2310595 m!8107268))

(assert (=> d!2310595 m!8107026))

(assert (=> b!7536353 d!2310595))

(declare-fun d!2310597 () Bool)

(declare-fun lt!2641998 () Int)

(assert (=> d!2310597 (>= lt!2641998 0)))

(declare-fun e!4490943 () Int)

(assert (=> d!2310597 (= lt!2641998 e!4490943)))

(declare-fun c!1391638 () Bool)

(assert (=> d!2310597 (= c!1391638 (is-Nil!72645 testedP!423))))

(assert (=> d!2310597 (= (size!42382 testedP!423) lt!2641998)))

(declare-fun b!7536712 () Bool)

(assert (=> b!7536712 (= e!4490943 0)))

(declare-fun b!7536713 () Bool)

(assert (=> b!7536713 (= e!4490943 (+ 1 (size!42382 (t!387476 testedP!423))))))

(assert (= (and d!2310597 c!1391638) b!7536712))

(assert (= (and d!2310597 (not c!1391638)) b!7536713))

(declare-fun m!8107278 () Bool)

(assert (=> b!7536713 m!8107278))

(assert (=> b!7536351 d!2310597))

(declare-fun d!2310599 () Bool)

(declare-fun lt!2641999 () Int)

(assert (=> d!2310599 (>= lt!2641999 0)))

(declare-fun e!4490946 () Int)

(assert (=> d!2310599 (= lt!2641999 e!4490946)))

(declare-fun c!1391641 () Bool)

(assert (=> d!2310599 (= c!1391641 (is-Nil!72645 knownP!30))))

(assert (=> d!2310599 (= (size!42382 knownP!30) lt!2641999)))

(declare-fun b!7536716 () Bool)

(assert (=> b!7536716 (= e!4490946 0)))

(declare-fun b!7536717 () Bool)

(assert (=> b!7536717 (= e!4490946 (+ 1 (size!42382 (t!387476 knownP!30))))))

(assert (= (and d!2310599 c!1391641) b!7536716))

(assert (= (and d!2310599 (not c!1391641)) b!7536717))

(declare-fun m!8107280 () Bool)

(assert (=> b!7536717 m!8107280))

(assert (=> b!7536351 d!2310599))

(declare-fun d!2310601 () Bool)

(declare-fun lostCauseFct!422 (Regex!19886) Bool)

(assert (=> d!2310601 (= (lostCause!1678 r!24333) (lostCauseFct!422 r!24333))))

(declare-fun bs!1939915 () Bool)

(assert (= bs!1939915 d!2310601))

(declare-fun m!8107282 () Bool)

(assert (=> bs!1939915 m!8107282))

(assert (=> b!7536357 d!2310601))

(declare-fun b!7536745 () Bool)

(declare-fun e!4490957 () Bool)

(declare-fun tp!2191972 () Bool)

(declare-fun tp!2191968 () Bool)

(assert (=> b!7536745 (= e!4490957 (and tp!2191972 tp!2191968))))

(declare-fun b!7536747 () Bool)

(declare-fun tp!2191970 () Bool)

(declare-fun tp!2191969 () Bool)

(assert (=> b!7536747 (= e!4490957 (and tp!2191970 tp!2191969))))

(declare-fun b!7536744 () Bool)

(assert (=> b!7536744 (= e!4490957 tp_is_empty!50127)))

(assert (=> b!7536350 (= tp!2191912 e!4490957)))

(declare-fun b!7536746 () Bool)

(declare-fun tp!2191971 () Bool)

(assert (=> b!7536746 (= e!4490957 tp!2191971)))

(assert (= (and b!7536350 (is-ElementMatch!19886 (reg!20215 r!24333))) b!7536744))

(assert (= (and b!7536350 (is-Concat!28731 (reg!20215 r!24333))) b!7536745))

(assert (= (and b!7536350 (is-Star!19886 (reg!20215 r!24333))) b!7536746))

(assert (= (and b!7536350 (is-Union!19886 (reg!20215 r!24333))) b!7536747))

(declare-fun b!7536752 () Bool)

(declare-fun e!4490960 () Bool)

(declare-fun tp!2191975 () Bool)

(assert (=> b!7536752 (= e!4490960 (and tp_is_empty!50127 tp!2191975))))

(assert (=> b!7536356 (= tp!2191918 e!4490960)))

(assert (= (and b!7536356 (is-Cons!72645 (t!387476 knownP!30))) b!7536752))

(declare-fun b!7536754 () Bool)

(declare-fun e!4490961 () Bool)

(declare-fun tp!2191980 () Bool)

(declare-fun tp!2191976 () Bool)

(assert (=> b!7536754 (= e!4490961 (and tp!2191980 tp!2191976))))

(declare-fun b!7536756 () Bool)

(declare-fun tp!2191978 () Bool)

(declare-fun tp!2191977 () Bool)

(assert (=> b!7536756 (= e!4490961 (and tp!2191978 tp!2191977))))

(declare-fun b!7536753 () Bool)

(assert (=> b!7536753 (= e!4490961 tp_is_empty!50127)))

(assert (=> b!7536349 (= tp!2191911 e!4490961)))

(declare-fun b!7536755 () Bool)

(declare-fun tp!2191979 () Bool)

(assert (=> b!7536755 (= e!4490961 tp!2191979)))

(assert (= (and b!7536349 (is-ElementMatch!19886 (regOne!40285 baseR!101))) b!7536753))

(assert (= (and b!7536349 (is-Concat!28731 (regOne!40285 baseR!101))) b!7536754))

(assert (= (and b!7536349 (is-Star!19886 (regOne!40285 baseR!101))) b!7536755))

(assert (= (and b!7536349 (is-Union!19886 (regOne!40285 baseR!101))) b!7536756))

(declare-fun b!7536758 () Bool)

(declare-fun e!4490962 () Bool)

(declare-fun tp!2191985 () Bool)

(declare-fun tp!2191981 () Bool)

(assert (=> b!7536758 (= e!4490962 (and tp!2191985 tp!2191981))))

(declare-fun b!7536760 () Bool)

(declare-fun tp!2191983 () Bool)

(declare-fun tp!2191982 () Bool)

(assert (=> b!7536760 (= e!4490962 (and tp!2191983 tp!2191982))))

(declare-fun b!7536757 () Bool)

(assert (=> b!7536757 (= e!4490962 tp_is_empty!50127)))

(assert (=> b!7536349 (= tp!2191907 e!4490962)))

(declare-fun b!7536759 () Bool)

(declare-fun tp!2191984 () Bool)

(assert (=> b!7536759 (= e!4490962 tp!2191984)))

(assert (= (and b!7536349 (is-ElementMatch!19886 (regTwo!40285 baseR!101))) b!7536757))

(assert (= (and b!7536349 (is-Concat!28731 (regTwo!40285 baseR!101))) b!7536758))

(assert (= (and b!7536349 (is-Star!19886 (regTwo!40285 baseR!101))) b!7536759))

(assert (= (and b!7536349 (is-Union!19886 (regTwo!40285 baseR!101))) b!7536760))

(declare-fun b!7536761 () Bool)

(declare-fun e!4490963 () Bool)

(declare-fun tp!2191986 () Bool)

(assert (=> b!7536761 (= e!4490963 (and tp_is_empty!50127 tp!2191986))))

(assert (=> b!7536360 (= tp!2191917 e!4490963)))

(assert (= (and b!7536360 (is-Cons!72645 (t!387476 input!7874))) b!7536761))

(declare-fun b!7536763 () Bool)

(declare-fun e!4490964 () Bool)

(declare-fun tp!2191991 () Bool)

(declare-fun tp!2191987 () Bool)

(assert (=> b!7536763 (= e!4490964 (and tp!2191991 tp!2191987))))

(declare-fun b!7536765 () Bool)

(declare-fun tp!2191989 () Bool)

(declare-fun tp!2191988 () Bool)

(assert (=> b!7536765 (= e!4490964 (and tp!2191989 tp!2191988))))

(declare-fun b!7536762 () Bool)

(assert (=> b!7536762 (= e!4490964 tp_is_empty!50127)))

(assert (=> b!7536347 (= tp!2191915 e!4490964)))

(declare-fun b!7536764 () Bool)

(declare-fun tp!2191990 () Bool)

(assert (=> b!7536764 (= e!4490964 tp!2191990)))

(assert (= (and b!7536347 (is-ElementMatch!19886 (regOne!40284 baseR!101))) b!7536762))

(assert (= (and b!7536347 (is-Concat!28731 (regOne!40284 baseR!101))) b!7536763))

(assert (= (and b!7536347 (is-Star!19886 (regOne!40284 baseR!101))) b!7536764))

(assert (= (and b!7536347 (is-Union!19886 (regOne!40284 baseR!101))) b!7536765))

(declare-fun b!7536767 () Bool)

(declare-fun e!4490965 () Bool)

(declare-fun tp!2191996 () Bool)

(declare-fun tp!2191992 () Bool)

(assert (=> b!7536767 (= e!4490965 (and tp!2191996 tp!2191992))))

(declare-fun b!7536769 () Bool)

(declare-fun tp!2191994 () Bool)

(declare-fun tp!2191993 () Bool)

(assert (=> b!7536769 (= e!4490965 (and tp!2191994 tp!2191993))))

(declare-fun b!7536766 () Bool)

(assert (=> b!7536766 (= e!4490965 tp_is_empty!50127)))

(assert (=> b!7536347 (= tp!2191910 e!4490965)))

(declare-fun b!7536768 () Bool)

(declare-fun tp!2191995 () Bool)

(assert (=> b!7536768 (= e!4490965 tp!2191995)))

(assert (= (and b!7536347 (is-ElementMatch!19886 (regTwo!40284 baseR!101))) b!7536766))

(assert (= (and b!7536347 (is-Concat!28731 (regTwo!40284 baseR!101))) b!7536767))

(assert (= (and b!7536347 (is-Star!19886 (regTwo!40284 baseR!101))) b!7536768))

(assert (= (and b!7536347 (is-Union!19886 (regTwo!40284 baseR!101))) b!7536769))

(declare-fun b!7536770 () Bool)

(declare-fun e!4490966 () Bool)

(declare-fun tp!2191997 () Bool)

(assert (=> b!7536770 (= e!4490966 (and tp_is_empty!50127 tp!2191997))))

(assert (=> b!7536342 (= tp!2191908 e!4490966)))

(assert (= (and b!7536342 (is-Cons!72645 (t!387476 testedP!423))) b!7536770))

(declare-fun b!7536772 () Bool)

(declare-fun e!4490967 () Bool)

(declare-fun tp!2192002 () Bool)

(declare-fun tp!2191998 () Bool)

(assert (=> b!7536772 (= e!4490967 (and tp!2192002 tp!2191998))))

(declare-fun b!7536774 () Bool)

(declare-fun tp!2192000 () Bool)

(declare-fun tp!2191999 () Bool)

(assert (=> b!7536774 (= e!4490967 (and tp!2192000 tp!2191999))))

(declare-fun b!7536771 () Bool)

(assert (=> b!7536771 (= e!4490967 tp_is_empty!50127)))

(assert (=> b!7536348 (= tp!2191909 e!4490967)))

(declare-fun b!7536773 () Bool)

(declare-fun tp!2192001 () Bool)

(assert (=> b!7536773 (= e!4490967 tp!2192001)))

(assert (= (and b!7536348 (is-ElementMatch!19886 (regOne!40285 r!24333))) b!7536771))

(assert (= (and b!7536348 (is-Concat!28731 (regOne!40285 r!24333))) b!7536772))

(assert (= (and b!7536348 (is-Star!19886 (regOne!40285 r!24333))) b!7536773))

(assert (= (and b!7536348 (is-Union!19886 (regOne!40285 r!24333))) b!7536774))

(declare-fun b!7536776 () Bool)

(declare-fun e!4490968 () Bool)

(declare-fun tp!2192007 () Bool)

(declare-fun tp!2192003 () Bool)

(assert (=> b!7536776 (= e!4490968 (and tp!2192007 tp!2192003))))

(declare-fun b!7536778 () Bool)

(declare-fun tp!2192005 () Bool)

(declare-fun tp!2192004 () Bool)

(assert (=> b!7536778 (= e!4490968 (and tp!2192005 tp!2192004))))

(declare-fun b!7536775 () Bool)

(assert (=> b!7536775 (= e!4490968 tp_is_empty!50127)))

(assert (=> b!7536348 (= tp!2191906 e!4490968)))

(declare-fun b!7536777 () Bool)

(declare-fun tp!2192006 () Bool)

(assert (=> b!7536777 (= e!4490968 tp!2192006)))

(assert (= (and b!7536348 (is-ElementMatch!19886 (regTwo!40285 r!24333))) b!7536775))

(assert (= (and b!7536348 (is-Concat!28731 (regTwo!40285 r!24333))) b!7536776))

(assert (= (and b!7536348 (is-Star!19886 (regTwo!40285 r!24333))) b!7536777))

(assert (= (and b!7536348 (is-Union!19886 (regTwo!40285 r!24333))) b!7536778))

(declare-fun b!7536780 () Bool)

(declare-fun e!4490969 () Bool)

(declare-fun tp!2192012 () Bool)

(declare-fun tp!2192008 () Bool)

(assert (=> b!7536780 (= e!4490969 (and tp!2192012 tp!2192008))))

(declare-fun b!7536782 () Bool)

(declare-fun tp!2192010 () Bool)

(declare-fun tp!2192009 () Bool)

(assert (=> b!7536782 (= e!4490969 (and tp!2192010 tp!2192009))))

(declare-fun b!7536779 () Bool)

(assert (=> b!7536779 (= e!4490969 tp_is_empty!50127)))

(assert (=> b!7536341 (= tp!2191916 e!4490969)))

(declare-fun b!7536781 () Bool)

(declare-fun tp!2192011 () Bool)

(assert (=> b!7536781 (= e!4490969 tp!2192011)))

(assert (= (and b!7536341 (is-ElementMatch!19886 (reg!20215 baseR!101))) b!7536779))

(assert (= (and b!7536341 (is-Concat!28731 (reg!20215 baseR!101))) b!7536780))

(assert (= (and b!7536341 (is-Star!19886 (reg!20215 baseR!101))) b!7536781))

(assert (= (and b!7536341 (is-Union!19886 (reg!20215 baseR!101))) b!7536782))

(declare-fun b!7536784 () Bool)

(declare-fun e!4490970 () Bool)

(declare-fun tp!2192017 () Bool)

(declare-fun tp!2192013 () Bool)

(assert (=> b!7536784 (= e!4490970 (and tp!2192017 tp!2192013))))

(declare-fun b!7536786 () Bool)

(declare-fun tp!2192015 () Bool)

(declare-fun tp!2192014 () Bool)

(assert (=> b!7536786 (= e!4490970 (and tp!2192015 tp!2192014))))

(declare-fun b!7536783 () Bool)

(assert (=> b!7536783 (= e!4490970 tp_is_empty!50127)))

(assert (=> b!7536352 (= tp!2191913 e!4490970)))

(declare-fun b!7536785 () Bool)

(declare-fun tp!2192016 () Bool)

(assert (=> b!7536785 (= e!4490970 tp!2192016)))

(assert (= (and b!7536352 (is-ElementMatch!19886 (regOne!40284 r!24333))) b!7536783))

(assert (= (and b!7536352 (is-Concat!28731 (regOne!40284 r!24333))) b!7536784))

(assert (= (and b!7536352 (is-Star!19886 (regOne!40284 r!24333))) b!7536785))

(assert (= (and b!7536352 (is-Union!19886 (regOne!40284 r!24333))) b!7536786))

(declare-fun b!7536788 () Bool)

(declare-fun e!4490971 () Bool)

(declare-fun tp!2192022 () Bool)

(declare-fun tp!2192018 () Bool)

(assert (=> b!7536788 (= e!4490971 (and tp!2192022 tp!2192018))))

(declare-fun b!7536790 () Bool)

(declare-fun tp!2192020 () Bool)

(declare-fun tp!2192019 () Bool)

(assert (=> b!7536790 (= e!4490971 (and tp!2192020 tp!2192019))))

(declare-fun b!7536787 () Bool)

(assert (=> b!7536787 (= e!4490971 tp_is_empty!50127)))

(assert (=> b!7536352 (= tp!2191914 e!4490971)))

(declare-fun b!7536789 () Bool)

(declare-fun tp!2192021 () Bool)

(assert (=> b!7536789 (= e!4490971 tp!2192021)))

(assert (= (and b!7536352 (is-ElementMatch!19886 (regTwo!40284 r!24333))) b!7536787))

(assert (= (and b!7536352 (is-Concat!28731 (regTwo!40284 r!24333))) b!7536788))

(assert (= (and b!7536352 (is-Star!19886 (regTwo!40284 r!24333))) b!7536789))

(assert (= (and b!7536352 (is-Union!19886 (regTwo!40284 r!24333))) b!7536790))

(push 1)

(assert (not b!7536680))

(assert (not b!7536624))

(assert (not b!7536767))

(assert (not b!7536778))

(assert (not b!7536694))

(assert (not d!2310587))

(assert (not d!2310567))

(assert (not b!7536608))

(assert (not b!7536669))

(assert (not b!7536747))

(assert (not bm!691398))

(assert (not d!2310533))

(assert (not b!7536781))

(assert (not d!2310583))

(assert (not b!7536602))

(assert (not b!7536626))

(assert (not bm!691402))

(assert (not d!2310553))

(assert (not b!7536667))

(assert (not b!7536508))

(assert (not d!2310547))

(assert (not b!7536752))

(assert (not b!7536703))

(assert (not b!7536597))

(assert (not b!7536582))

(assert (not b!7536507))

(assert (not bm!691382))

(assert (not b!7536768))

(assert (not b!7536756))

(assert (not b!7536773))

(assert (not b!7536695))

(assert (not b!7536764))

(assert (not b!7536784))

(assert (not b!7536622))

(assert (not bm!691401))

(assert (not b!7536623))

(assert (not b!7536704))

(assert (not b!7536789))

(assert (not b!7536514))

(assert (not b!7536790))

(assert (not b!7536689))

(assert (not b!7536610))

(assert (not b!7536525))

(assert (not b!7536776))

(assert (not b!7536708))

(assert (not bm!691386))

(assert (not b!7536759))

(assert (not b!7536746))

(assert (not b!7536585))

(assert (not b!7536681))

(assert (not b!7536609))

(assert (not b!7536603))

(assert (not b!7536782))

(assert (not b!7536506))

(assert (not b!7536745))

(assert (not b!7536785))

(assert tp_is_empty!50127)

(assert (not b!7536706))

(assert (not b!7536580))

(assert (not d!2310601))

(assert (not b!7536717))

(assert (not b!7536619))

(assert (not b!7536761))

(assert (not b!7536769))

(assert (not b!7536763))

(assert (not b!7536581))

(assert (not b!7536480))

(assert (not b!7536755))

(assert (not b!7536780))

(assert (not b!7536758))

(assert (not b!7536583))

(assert (not d!2310537))

(assert (not b!7536577))

(assert (not bm!691396))

(assert (not d!2310595))

(assert (not d!2310561))

(assert (not b!7536754))

(assert (not b!7536772))

(assert (not d!2310559))

(assert (not b!7536705))

(assert (not b!7536604))

(assert (not b!7536700))

(assert (not b!7536770))

(assert (not b!7536760))

(assert (not b!7536713))

(assert (not bm!691380))

(assert (not bm!691399))

(assert (not d!2310585))

(assert (not b!7536788))

(assert (not b!7536786))

(assert (not b!7536693))

(assert (not d!2310575))

(assert (not b!7536774))

(assert (not b!7536765))

(assert (not b!7536777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

