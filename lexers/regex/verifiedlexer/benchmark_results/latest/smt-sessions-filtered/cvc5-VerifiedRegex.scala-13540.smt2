; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728770 () Bool)

(assert start!728770)

(declare-fun b!7533148 () Bool)

(declare-fun res!3019129 () Bool)

(declare-fun e!4489349 () Bool)

(assert (=> b!7533148 (=> res!3019129 e!4489349)))

(declare-fun lt!2641473 () Int)

(declare-datatypes ((C!40074 0))(
  ( (C!40075 (val!30477 Int)) )
))
(declare-datatypes ((List!72757 0))(
  ( (Nil!72633) (Cons!72633 (h!79081 C!40074) (t!387464 List!72757)) )
))
(declare-fun input!7874 () List!72757)

(declare-fun size!42370 (List!72757) Int)

(assert (=> b!7533148 (= res!3019129 (>= lt!2641473 (size!42370 input!7874)))))

(declare-fun b!7533149 () Bool)

(declare-fun e!4489347 () Bool)

(declare-fun tp_is_empty!50103 () Bool)

(declare-fun tp!2190166 () Bool)

(assert (=> b!7533149 (= e!4489347 (and tp_is_empty!50103 tp!2190166))))

(declare-fun b!7533150 () Bool)

(declare-fun e!4489346 () Bool)

(declare-fun tp!2190171 () Bool)

(declare-fun tp!2190175 () Bool)

(assert (=> b!7533150 (= e!4489346 (and tp!2190171 tp!2190175))))

(declare-fun b!7533151 () Bool)

(declare-fun tp!2190167 () Bool)

(assert (=> b!7533151 (= e!4489346 tp!2190167)))

(declare-fun res!3019130 () Bool)

(declare-fun e!4489345 () Bool)

(assert (=> start!728770 (=> (not res!3019130) (not e!4489345))))

(declare-datatypes ((Regex!19874 0))(
  ( (ElementMatch!19874 (c!1391183 C!40074)) (Concat!28719 (regOne!40260 Regex!19874) (regTwo!40260 Regex!19874)) (EmptyExpr!19874) (Star!19874 (reg!20203 Regex!19874)) (EmptyLang!19874) (Union!19874 (regOne!40261 Regex!19874) (regTwo!40261 Regex!19874)) )
))
(declare-fun baseR!101 () Regex!19874)

(declare-fun validRegex!10302 (Regex!19874) Bool)

(assert (=> start!728770 (= res!3019130 (validRegex!10302 baseR!101))))

(assert (=> start!728770 e!4489345))

(declare-fun e!4489344 () Bool)

(assert (=> start!728770 e!4489344))

(declare-fun e!4489348 () Bool)

(assert (=> start!728770 e!4489348))

(assert (=> start!728770 e!4489347))

(declare-fun e!4489343 () Bool)

(assert (=> start!728770 e!4489343))

(assert (=> start!728770 e!4489346))

(declare-fun b!7533152 () Bool)

(declare-fun res!3019127 () Bool)

(assert (=> b!7533152 (=> (not res!3019127) (not e!4489345))))

(declare-fun testedP!423 () List!72757)

(declare-fun isPrefix!6080 (List!72757 List!72757) Bool)

(assert (=> b!7533152 (= res!3019127 (isPrefix!6080 testedP!423 input!7874))))

(declare-fun b!7533153 () Bool)

(declare-fun e!4489342 () Bool)

(assert (=> b!7533153 (= e!4489342 (not e!4489349))))

(declare-fun res!3019137 () Bool)

(assert (=> b!7533153 (=> res!3019137 e!4489349)))

(declare-fun knownP!30 () List!72757)

(declare-fun r!24333 () Regex!19874)

(declare-fun matchR!9476 (Regex!19874 List!72757) Bool)

(declare-fun getSuffix!3560 (List!72757 List!72757) List!72757)

(assert (=> b!7533153 (= res!3019137 (not (matchR!9476 r!24333 (getSuffix!3560 knownP!30 testedP!423))))))

(assert (=> b!7533153 (isPrefix!6080 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166686 0))(
  ( (Unit!166687) )
))
(declare-fun lt!2641475 () Unit!166686)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!830 (List!72757 List!72757 List!72757) Unit!166686)

(assert (=> b!7533153 (= lt!2641475 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!830 knownP!30 testedP!423 input!7874))))

(declare-fun b!7533154 () Bool)

(declare-fun tp!2190169 () Bool)

(declare-fun tp!2190178 () Bool)

(assert (=> b!7533154 (= e!4489344 (and tp!2190169 tp!2190178))))

(declare-fun b!7533155 () Bool)

(declare-fun tp!2190172 () Bool)

(declare-fun tp!2190170 () Bool)

(assert (=> b!7533155 (= e!4489344 (and tp!2190172 tp!2190170))))

(declare-fun b!7533156 () Bool)

(declare-fun tp!2190174 () Bool)

(assert (=> b!7533156 (= e!4489344 tp!2190174)))

(declare-fun b!7533157 () Bool)

(assert (=> b!7533157 (= e!4489345 e!4489342)))

(declare-fun res!3019136 () Bool)

(assert (=> b!7533157 (=> (not res!3019136) (not e!4489342))))

(declare-fun lt!2641474 () Int)

(assert (=> b!7533157 (= res!3019136 (>= lt!2641474 lt!2641473))))

(assert (=> b!7533157 (= lt!2641473 (size!42370 testedP!423))))

(assert (=> b!7533157 (= lt!2641474 (size!42370 knownP!30))))

(declare-fun b!7533158 () Bool)

(declare-fun tp!2190173 () Bool)

(assert (=> b!7533158 (= e!4489348 (and tp_is_empty!50103 tp!2190173))))

(declare-fun b!7533159 () Bool)

(declare-fun tp!2190176 () Bool)

(declare-fun tp!2190177 () Bool)

(assert (=> b!7533159 (= e!4489346 (and tp!2190176 tp!2190177))))

(declare-fun b!7533160 () Bool)

(declare-fun res!3019133 () Bool)

(assert (=> b!7533160 (=> (not res!3019133) (not e!4489342))))

(assert (=> b!7533160 (= res!3019133 (matchR!9476 baseR!101 knownP!30))))

(declare-fun b!7533161 () Bool)

(declare-fun res!3019128 () Bool)

(assert (=> b!7533161 (=> res!3019128 e!4489349)))

(declare-fun derivative!406 (Regex!19874 List!72757) Regex!19874)

(assert (=> b!7533161 (= res!3019128 (not (= (derivative!406 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7533162 () Bool)

(assert (=> b!7533162 (= e!4489346 tp_is_empty!50103)))

(declare-fun b!7533163 () Bool)

(declare-fun res!3019131 () Bool)

(assert (=> b!7533163 (=> res!3019131 e!4489349)))

(declare-fun lostCause!1666 (Regex!19874) Bool)

(assert (=> b!7533163 (= res!3019131 (lostCause!1666 r!24333))))

(declare-fun b!7533164 () Bool)

(assert (=> b!7533164 (= e!4489344 tp_is_empty!50103)))

(declare-fun b!7533165 () Bool)

(declare-fun res!3019132 () Bool)

(assert (=> b!7533165 (=> (not res!3019132) (not e!4489345))))

(assert (=> b!7533165 (= res!3019132 (validRegex!10302 r!24333))))

(declare-fun b!7533166 () Bool)

(declare-fun res!3019135 () Bool)

(assert (=> b!7533166 (=> res!3019135 e!4489349)))

(assert (=> b!7533166 (= res!3019135 (= lt!2641473 lt!2641474))))

(declare-fun b!7533167 () Bool)

(assert (=> b!7533167 (= e!4489349 (not (= (getSuffix!3560 input!7874 testedP!423) Nil!72633)))))

(declare-fun b!7533168 () Bool)

(declare-fun tp!2190168 () Bool)

(assert (=> b!7533168 (= e!4489343 (and tp_is_empty!50103 tp!2190168))))

(declare-fun b!7533169 () Bool)

(declare-fun res!3019134 () Bool)

(assert (=> b!7533169 (=> (not res!3019134) (not e!4489345))))

(assert (=> b!7533169 (= res!3019134 (isPrefix!6080 knownP!30 input!7874))))

(assert (= (and start!728770 res!3019130) b!7533165))

(assert (= (and b!7533165 res!3019132) b!7533152))

(assert (= (and b!7533152 res!3019127) b!7533169))

(assert (= (and b!7533169 res!3019134) b!7533157))

(assert (= (and b!7533157 res!3019136) b!7533160))

(assert (= (and b!7533160 res!3019133) b!7533153))

(assert (= (and b!7533153 (not res!3019137)) b!7533161))

(assert (= (and b!7533161 (not res!3019128)) b!7533163))

(assert (= (and b!7533163 (not res!3019131)) b!7533166))

(assert (= (and b!7533166 (not res!3019135)) b!7533148))

(assert (= (and b!7533148 (not res!3019129)) b!7533167))

(assert (= (and start!728770 (is-ElementMatch!19874 baseR!101)) b!7533164))

(assert (= (and start!728770 (is-Concat!28719 baseR!101)) b!7533154))

(assert (= (and start!728770 (is-Star!19874 baseR!101)) b!7533156))

(assert (= (and start!728770 (is-Union!19874 baseR!101)) b!7533155))

(assert (= (and start!728770 (is-Cons!72633 input!7874)) b!7533158))

(assert (= (and start!728770 (is-Cons!72633 knownP!30)) b!7533149))

(assert (= (and start!728770 (is-Cons!72633 testedP!423)) b!7533168))

(assert (= (and start!728770 (is-ElementMatch!19874 r!24333)) b!7533162))

(assert (= (and start!728770 (is-Concat!28719 r!24333)) b!7533159))

(assert (= (and start!728770 (is-Star!19874 r!24333)) b!7533151))

(assert (= (and start!728770 (is-Union!19874 r!24333)) b!7533150))

(declare-fun m!8105414 () Bool)

(assert (=> b!7533167 m!8105414))

(declare-fun m!8105416 () Bool)

(assert (=> b!7533169 m!8105416))

(declare-fun m!8105418 () Bool)

(assert (=> b!7533148 m!8105418))

(declare-fun m!8105420 () Bool)

(assert (=> b!7533160 m!8105420))

(declare-fun m!8105422 () Bool)

(assert (=> b!7533157 m!8105422))

(declare-fun m!8105424 () Bool)

(assert (=> b!7533157 m!8105424))

(declare-fun m!8105426 () Bool)

(assert (=> b!7533152 m!8105426))

(declare-fun m!8105428 () Bool)

(assert (=> b!7533165 m!8105428))

(declare-fun m!8105430 () Bool)

(assert (=> b!7533161 m!8105430))

(declare-fun m!8105432 () Bool)

(assert (=> b!7533163 m!8105432))

(declare-fun m!8105434 () Bool)

(assert (=> start!728770 m!8105434))

(declare-fun m!8105436 () Bool)

(assert (=> b!7533153 m!8105436))

(assert (=> b!7533153 m!8105436))

(declare-fun m!8105438 () Bool)

(assert (=> b!7533153 m!8105438))

(declare-fun m!8105440 () Bool)

(assert (=> b!7533153 m!8105440))

(declare-fun m!8105442 () Bool)

(assert (=> b!7533153 m!8105442))

(push 1)

(assert (not b!7533151))

(assert (not start!728770))

(assert (not b!7533157))

(assert (not b!7533163))

(assert (not b!7533153))

(assert (not b!7533160))

(assert (not b!7533154))

(assert (not b!7533167))

(assert (not b!7533155))

(assert (not b!7533165))

(assert (not b!7533161))

(assert (not b!7533168))

(assert (not b!7533169))

(assert (not b!7533158))

(assert (not b!7533150))

(assert (not b!7533152))

(assert (not b!7533149))

(assert (not b!7533156))

(assert (not b!7533148))

(assert (not b!7533159))

(assert tp_is_empty!50103)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2310013 () Bool)

(declare-fun lt!2641487 () Int)

(assert (=> d!2310013 (>= lt!2641487 0)))

(declare-fun e!4489376 () Int)

(assert (=> d!2310013 (= lt!2641487 e!4489376)))

(declare-fun c!1391187 () Bool)

(assert (=> d!2310013 (= c!1391187 (is-Nil!72633 testedP!423))))

(assert (=> d!2310013 (= (size!42370 testedP!423) lt!2641487)))

(declare-fun b!7533240 () Bool)

(assert (=> b!7533240 (= e!4489376 0)))

(declare-fun b!7533241 () Bool)

(assert (=> b!7533241 (= e!4489376 (+ 1 (size!42370 (t!387464 testedP!423))))))

(assert (= (and d!2310013 c!1391187) b!7533240))

(assert (= (and d!2310013 (not c!1391187)) b!7533241))

(declare-fun m!8105474 () Bool)

(assert (=> b!7533241 m!8105474))

(assert (=> b!7533157 d!2310013))

(declare-fun d!2310015 () Bool)

(declare-fun lt!2641488 () Int)

(assert (=> d!2310015 (>= lt!2641488 0)))

(declare-fun e!4489377 () Int)

(assert (=> d!2310015 (= lt!2641488 e!4489377)))

(declare-fun c!1391188 () Bool)

(assert (=> d!2310015 (= c!1391188 (is-Nil!72633 knownP!30))))

(assert (=> d!2310015 (= (size!42370 knownP!30) lt!2641488)))

(declare-fun b!7533242 () Bool)

(assert (=> b!7533242 (= e!4489377 0)))

(declare-fun b!7533243 () Bool)

(assert (=> b!7533243 (= e!4489377 (+ 1 (size!42370 (t!387464 knownP!30))))))

(assert (= (and d!2310015 c!1391188) b!7533242))

(assert (= (and d!2310015 (not c!1391188)) b!7533243))

(declare-fun m!8105476 () Bool)

(assert (=> b!7533243 m!8105476))

(assert (=> b!7533157 d!2310015))

(declare-fun d!2310019 () Bool)

(declare-fun e!4489385 () Bool)

(assert (=> d!2310019 e!4489385))

(declare-fun res!3019181 () Bool)

(assert (=> d!2310019 (=> res!3019181 e!4489385)))

(declare-fun lt!2641491 () Bool)

(assert (=> d!2310019 (= res!3019181 (not lt!2641491))))

(declare-fun e!4489386 () Bool)

(assert (=> d!2310019 (= lt!2641491 e!4489386)))

(declare-fun res!3019179 () Bool)

(assert (=> d!2310019 (=> res!3019179 e!4489386)))

(assert (=> d!2310019 (= res!3019179 (is-Nil!72633 testedP!423))))

(assert (=> d!2310019 (= (isPrefix!6080 testedP!423 input!7874) lt!2641491)))

(declare-fun b!7533255 () Bool)

(assert (=> b!7533255 (= e!4489385 (>= (size!42370 input!7874) (size!42370 testedP!423)))))

(declare-fun b!7533254 () Bool)

(declare-fun e!4489384 () Bool)

(declare-fun tail!15024 (List!72757) List!72757)

(assert (=> b!7533254 (= e!4489384 (isPrefix!6080 (tail!15024 testedP!423) (tail!15024 input!7874)))))

(declare-fun b!7533253 () Bool)

(declare-fun res!3019180 () Bool)

(assert (=> b!7533253 (=> (not res!3019180) (not e!4489384))))

(declare-fun head!15464 (List!72757) C!40074)

(assert (=> b!7533253 (= res!3019180 (= (head!15464 testedP!423) (head!15464 input!7874)))))

(declare-fun b!7533252 () Bool)

(assert (=> b!7533252 (= e!4489386 e!4489384)))

(declare-fun res!3019182 () Bool)

(assert (=> b!7533252 (=> (not res!3019182) (not e!4489384))))

(assert (=> b!7533252 (= res!3019182 (not (is-Nil!72633 input!7874)))))

(assert (= (and d!2310019 (not res!3019179)) b!7533252))

(assert (= (and b!7533252 res!3019182) b!7533253))

(assert (= (and b!7533253 res!3019180) b!7533254))

(assert (= (and d!2310019 (not res!3019181)) b!7533255))

(assert (=> b!7533255 m!8105418))

(assert (=> b!7533255 m!8105422))

(declare-fun m!8105478 () Bool)

(assert (=> b!7533254 m!8105478))

(declare-fun m!8105480 () Bool)

(assert (=> b!7533254 m!8105480))

(assert (=> b!7533254 m!8105478))

(assert (=> b!7533254 m!8105480))

(declare-fun m!8105482 () Bool)

(assert (=> b!7533254 m!8105482))

(declare-fun m!8105484 () Bool)

(assert (=> b!7533253 m!8105484))

(declare-fun m!8105486 () Bool)

(assert (=> b!7533253 m!8105486))

(assert (=> b!7533152 d!2310019))

(declare-fun d!2310021 () Bool)

(declare-fun lostCauseFct!418 (Regex!19874) Bool)

(assert (=> d!2310021 (= (lostCause!1666 r!24333) (lostCauseFct!418 r!24333))))

(declare-fun bs!1939863 () Bool)

(assert (= bs!1939863 d!2310021))

(declare-fun m!8105488 () Bool)

(assert (=> bs!1939863 m!8105488))

(assert (=> b!7533163 d!2310021))

(declare-fun d!2310023 () Bool)

(declare-fun e!4489427 () Bool)

(assert (=> d!2310023 e!4489427))

(declare-fun c!1391203 () Bool)

(assert (=> d!2310023 (= c!1391203 (is-EmptyExpr!19874 r!24333))))

(declare-fun lt!2641494 () Bool)

(declare-fun e!4489426 () Bool)

(assert (=> d!2310023 (= lt!2641494 e!4489426)))

(declare-fun c!1391202 () Bool)

(declare-fun isEmpty!41354 (List!72757) Bool)

(assert (=> d!2310023 (= c!1391202 (isEmpty!41354 (getSuffix!3560 knownP!30 testedP!423)))))

(assert (=> d!2310023 (validRegex!10302 r!24333)))

(assert (=> d!2310023 (= (matchR!9476 r!24333 (getSuffix!3560 knownP!30 testedP!423)) lt!2641494)))

(declare-fun b!7533311 () Bool)

(declare-fun res!3019218 () Bool)

(declare-fun e!4489423 () Bool)

(assert (=> b!7533311 (=> res!3019218 e!4489423)))

(assert (=> b!7533311 (= res!3019218 (not (is-ElementMatch!19874 r!24333)))))

(declare-fun e!4489425 () Bool)

(assert (=> b!7533311 (= e!4489425 e!4489423)))

(declare-fun b!7533312 () Bool)

(declare-fun derivativeStep!5668 (Regex!19874 C!40074) Regex!19874)

(assert (=> b!7533312 (= e!4489426 (matchR!9476 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423))) (tail!15024 (getSuffix!3560 knownP!30 testedP!423))))))

(declare-fun b!7533313 () Bool)

(declare-fun e!4489428 () Bool)

(declare-fun e!4489424 () Bool)

(assert (=> b!7533313 (= e!4489428 e!4489424)))

(declare-fun res!3019215 () Bool)

(assert (=> b!7533313 (=> res!3019215 e!4489424)))

(declare-fun call!691152 () Bool)

(assert (=> b!7533313 (= res!3019215 call!691152)))

(declare-fun bm!691147 () Bool)

(assert (=> bm!691147 (= call!691152 (isEmpty!41354 (getSuffix!3560 knownP!30 testedP!423)))))

(declare-fun b!7533314 () Bool)

(assert (=> b!7533314 (= e!4489423 e!4489428)))

(declare-fun res!3019219 () Bool)

(assert (=> b!7533314 (=> (not res!3019219) (not e!4489428))))

(assert (=> b!7533314 (= res!3019219 (not lt!2641494))))

(declare-fun b!7533315 () Bool)

(declare-fun res!3019220 () Bool)

(assert (=> b!7533315 (=> res!3019220 e!4489423)))

(declare-fun e!4489422 () Bool)

(assert (=> b!7533315 (= res!3019220 e!4489422)))

(declare-fun res!3019216 () Bool)

(assert (=> b!7533315 (=> (not res!3019216) (not e!4489422))))

(assert (=> b!7533315 (= res!3019216 lt!2641494)))

(declare-fun b!7533316 () Bool)

(declare-fun res!3019217 () Bool)

(assert (=> b!7533316 (=> (not res!3019217) (not e!4489422))))

(assert (=> b!7533316 (= res!3019217 (isEmpty!41354 (tail!15024 (getSuffix!3560 knownP!30 testedP!423))))))

(declare-fun b!7533317 () Bool)

(declare-fun nullable!8662 (Regex!19874) Bool)

(assert (=> b!7533317 (= e!4489426 (nullable!8662 r!24333))))

(declare-fun b!7533318 () Bool)

(assert (=> b!7533318 (= e!4489422 (= (head!15464 (getSuffix!3560 knownP!30 testedP!423)) (c!1391183 r!24333)))))

(declare-fun b!7533319 () Bool)

(assert (=> b!7533319 (= e!4489427 (= lt!2641494 call!691152))))

(declare-fun b!7533320 () Bool)

(declare-fun res!3019214 () Bool)

(assert (=> b!7533320 (=> (not res!3019214) (not e!4489422))))

(assert (=> b!7533320 (= res!3019214 (not call!691152))))

(declare-fun b!7533321 () Bool)

(declare-fun res!3019221 () Bool)

(assert (=> b!7533321 (=> res!3019221 e!4489424)))

(assert (=> b!7533321 (= res!3019221 (not (isEmpty!41354 (tail!15024 (getSuffix!3560 knownP!30 testedP!423)))))))

(declare-fun b!7533322 () Bool)

(assert (=> b!7533322 (= e!4489427 e!4489425)))

(declare-fun c!1391201 () Bool)

(assert (=> b!7533322 (= c!1391201 (is-EmptyLang!19874 r!24333))))

(declare-fun b!7533323 () Bool)

(assert (=> b!7533323 (= e!4489425 (not lt!2641494))))

(declare-fun b!7533324 () Bool)

(assert (=> b!7533324 (= e!4489424 (not (= (head!15464 (getSuffix!3560 knownP!30 testedP!423)) (c!1391183 r!24333))))))

(assert (= (and d!2310023 c!1391202) b!7533317))

(assert (= (and d!2310023 (not c!1391202)) b!7533312))

(assert (= (and d!2310023 c!1391203) b!7533319))

(assert (= (and d!2310023 (not c!1391203)) b!7533322))

(assert (= (and b!7533322 c!1391201) b!7533323))

(assert (= (and b!7533322 (not c!1391201)) b!7533311))

(assert (= (and b!7533311 (not res!3019218)) b!7533315))

(assert (= (and b!7533315 res!3019216) b!7533320))

(assert (= (and b!7533320 res!3019214) b!7533316))

(assert (= (and b!7533316 res!3019217) b!7533318))

(assert (= (and b!7533315 (not res!3019220)) b!7533314))

(assert (= (and b!7533314 res!3019219) b!7533313))

(assert (= (and b!7533313 (not res!3019215)) b!7533321))

(assert (= (and b!7533321 (not res!3019221)) b!7533324))

(assert (= (or b!7533319 b!7533313 b!7533320) bm!691147))

(assert (=> b!7533324 m!8105436))

(declare-fun m!8105496 () Bool)

(assert (=> b!7533324 m!8105496))

(assert (=> b!7533312 m!8105436))

(assert (=> b!7533312 m!8105496))

(assert (=> b!7533312 m!8105496))

(declare-fun m!8105498 () Bool)

(assert (=> b!7533312 m!8105498))

(assert (=> b!7533312 m!8105436))

(declare-fun m!8105500 () Bool)

(assert (=> b!7533312 m!8105500))

(assert (=> b!7533312 m!8105498))

(assert (=> b!7533312 m!8105500))

(declare-fun m!8105502 () Bool)

(assert (=> b!7533312 m!8105502))

(assert (=> b!7533316 m!8105436))

(assert (=> b!7533316 m!8105500))

(assert (=> b!7533316 m!8105500))

(declare-fun m!8105504 () Bool)

(assert (=> b!7533316 m!8105504))

(assert (=> b!7533318 m!8105436))

(assert (=> b!7533318 m!8105496))

(declare-fun m!8105506 () Bool)

(assert (=> b!7533317 m!8105506))

(assert (=> bm!691147 m!8105436))

(declare-fun m!8105508 () Bool)

(assert (=> bm!691147 m!8105508))

(assert (=> d!2310023 m!8105436))

(assert (=> d!2310023 m!8105508))

(assert (=> d!2310023 m!8105428))

(assert (=> b!7533321 m!8105436))

(assert (=> b!7533321 m!8105500))

(assert (=> b!7533321 m!8105500))

(assert (=> b!7533321 m!8105504))

(assert (=> b!7533153 d!2310023))

(declare-fun d!2310027 () Bool)

(declare-fun lt!2641497 () List!72757)

(declare-fun ++!17391 (List!72757 List!72757) List!72757)

(assert (=> d!2310027 (= (++!17391 testedP!423 lt!2641497) knownP!30)))

(declare-fun e!4489438 () List!72757)

(assert (=> d!2310027 (= lt!2641497 e!4489438)))

(declare-fun c!1391208 () Bool)

(assert (=> d!2310027 (= c!1391208 (is-Cons!72633 testedP!423))))

(assert (=> d!2310027 (>= (size!42370 knownP!30) (size!42370 testedP!423))))

(assert (=> d!2310027 (= (getSuffix!3560 knownP!30 testedP!423) lt!2641497)))

(declare-fun b!7533338 () Bool)

(assert (=> b!7533338 (= e!4489438 (getSuffix!3560 (tail!15024 knownP!30) (t!387464 testedP!423)))))

(declare-fun b!7533339 () Bool)

(assert (=> b!7533339 (= e!4489438 knownP!30)))

(assert (= (and d!2310027 c!1391208) b!7533338))

(assert (= (and d!2310027 (not c!1391208)) b!7533339))

(declare-fun m!8105516 () Bool)

(assert (=> d!2310027 m!8105516))

(assert (=> d!2310027 m!8105424))

(assert (=> d!2310027 m!8105422))

(declare-fun m!8105518 () Bool)

(assert (=> b!7533338 m!8105518))

(assert (=> b!7533338 m!8105518))

(declare-fun m!8105520 () Bool)

(assert (=> b!7533338 m!8105520))

(assert (=> b!7533153 d!2310027))

(declare-fun d!2310031 () Bool)

(declare-fun e!4489440 () Bool)

(assert (=> d!2310031 e!4489440))

(declare-fun res!3019229 () Bool)

(assert (=> d!2310031 (=> res!3019229 e!4489440)))

(declare-fun lt!2641498 () Bool)

(assert (=> d!2310031 (= res!3019229 (not lt!2641498))))

(declare-fun e!4489441 () Bool)

(assert (=> d!2310031 (= lt!2641498 e!4489441)))

(declare-fun res!3019227 () Bool)

(assert (=> d!2310031 (=> res!3019227 e!4489441)))

(assert (=> d!2310031 (= res!3019227 (is-Nil!72633 testedP!423))))

(assert (=> d!2310031 (= (isPrefix!6080 testedP!423 knownP!30) lt!2641498)))

(declare-fun b!7533343 () Bool)

(assert (=> b!7533343 (= e!4489440 (>= (size!42370 knownP!30) (size!42370 testedP!423)))))

(declare-fun b!7533342 () Bool)

(declare-fun e!4489439 () Bool)

(assert (=> b!7533342 (= e!4489439 (isPrefix!6080 (tail!15024 testedP!423) (tail!15024 knownP!30)))))

(declare-fun b!7533341 () Bool)

(declare-fun res!3019228 () Bool)

(assert (=> b!7533341 (=> (not res!3019228) (not e!4489439))))

(assert (=> b!7533341 (= res!3019228 (= (head!15464 testedP!423) (head!15464 knownP!30)))))

(declare-fun b!7533340 () Bool)

(assert (=> b!7533340 (= e!4489441 e!4489439)))

(declare-fun res!3019230 () Bool)

(assert (=> b!7533340 (=> (not res!3019230) (not e!4489439))))

(assert (=> b!7533340 (= res!3019230 (not (is-Nil!72633 knownP!30)))))

(assert (= (and d!2310031 (not res!3019227)) b!7533340))

(assert (= (and b!7533340 res!3019230) b!7533341))

(assert (= (and b!7533341 res!3019228) b!7533342))

(assert (= (and d!2310031 (not res!3019229)) b!7533343))

(assert (=> b!7533343 m!8105424))

(assert (=> b!7533343 m!8105422))

(assert (=> b!7533342 m!8105478))

(assert (=> b!7533342 m!8105518))

(assert (=> b!7533342 m!8105478))

(assert (=> b!7533342 m!8105518))

(declare-fun m!8105522 () Bool)

(assert (=> b!7533342 m!8105522))

(assert (=> b!7533341 m!8105484))

(declare-fun m!8105524 () Bool)

(assert (=> b!7533341 m!8105524))

(assert (=> b!7533153 d!2310031))

(declare-fun d!2310033 () Bool)

(assert (=> d!2310033 (isPrefix!6080 testedP!423 knownP!30)))

(declare-fun lt!2641501 () Unit!166686)

(declare-fun choose!58287 (List!72757 List!72757 List!72757) Unit!166686)

(assert (=> d!2310033 (= lt!2641501 (choose!58287 knownP!30 testedP!423 input!7874))))

(assert (=> d!2310033 (isPrefix!6080 knownP!30 input!7874)))

(assert (=> d!2310033 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!830 knownP!30 testedP!423 input!7874) lt!2641501)))

(declare-fun bs!1939864 () Bool)

(assert (= bs!1939864 d!2310033))

(assert (=> bs!1939864 m!8105440))

(declare-fun m!8105526 () Bool)

(assert (=> bs!1939864 m!8105526))

(assert (=> bs!1939864 m!8105416))

(assert (=> b!7533153 d!2310033))

(declare-fun d!2310035 () Bool)

(declare-fun e!4489443 () Bool)

(assert (=> d!2310035 e!4489443))

(declare-fun res!3019233 () Bool)

(assert (=> d!2310035 (=> res!3019233 e!4489443)))

(declare-fun lt!2641502 () Bool)

(assert (=> d!2310035 (= res!3019233 (not lt!2641502))))

(declare-fun e!4489444 () Bool)

(assert (=> d!2310035 (= lt!2641502 e!4489444)))

(declare-fun res!3019231 () Bool)

(assert (=> d!2310035 (=> res!3019231 e!4489444)))

(assert (=> d!2310035 (= res!3019231 (is-Nil!72633 knownP!30))))

(assert (=> d!2310035 (= (isPrefix!6080 knownP!30 input!7874) lt!2641502)))

(declare-fun b!7533347 () Bool)

(assert (=> b!7533347 (= e!4489443 (>= (size!42370 input!7874) (size!42370 knownP!30)))))

(declare-fun b!7533346 () Bool)

(declare-fun e!4489442 () Bool)

(assert (=> b!7533346 (= e!4489442 (isPrefix!6080 (tail!15024 knownP!30) (tail!15024 input!7874)))))

(declare-fun b!7533345 () Bool)

(declare-fun res!3019232 () Bool)

(assert (=> b!7533345 (=> (not res!3019232) (not e!4489442))))

(assert (=> b!7533345 (= res!3019232 (= (head!15464 knownP!30) (head!15464 input!7874)))))

(declare-fun b!7533344 () Bool)

(assert (=> b!7533344 (= e!4489444 e!4489442)))

(declare-fun res!3019234 () Bool)

(assert (=> b!7533344 (=> (not res!3019234) (not e!4489442))))

(assert (=> b!7533344 (= res!3019234 (not (is-Nil!72633 input!7874)))))

(assert (= (and d!2310035 (not res!3019231)) b!7533344))

(assert (= (and b!7533344 res!3019234) b!7533345))

(assert (= (and b!7533345 res!3019232) b!7533346))

(assert (= (and d!2310035 (not res!3019233)) b!7533347))

(assert (=> b!7533347 m!8105418))

(assert (=> b!7533347 m!8105424))

(assert (=> b!7533346 m!8105518))

(assert (=> b!7533346 m!8105480))

(assert (=> b!7533346 m!8105518))

(assert (=> b!7533346 m!8105480))

(declare-fun m!8105528 () Bool)

(assert (=> b!7533346 m!8105528))

(assert (=> b!7533345 m!8105524))

(assert (=> b!7533345 m!8105486))

(assert (=> b!7533169 d!2310035))

(declare-fun d!2310037 () Bool)

(declare-fun lt!2641503 () Int)

(assert (=> d!2310037 (>= lt!2641503 0)))

(declare-fun e!4489445 () Int)

(assert (=> d!2310037 (= lt!2641503 e!4489445)))

(declare-fun c!1391209 () Bool)

(assert (=> d!2310037 (= c!1391209 (is-Nil!72633 input!7874))))

(assert (=> d!2310037 (= (size!42370 input!7874) lt!2641503)))

(declare-fun b!7533348 () Bool)

(assert (=> b!7533348 (= e!4489445 0)))

(declare-fun b!7533349 () Bool)

(assert (=> b!7533349 (= e!4489445 (+ 1 (size!42370 (t!387464 input!7874))))))

(assert (= (and d!2310037 c!1391209) b!7533348))

(assert (= (and d!2310037 (not c!1391209)) b!7533349))

(declare-fun m!8105530 () Bool)

(assert (=> b!7533349 m!8105530))

(assert (=> b!7533148 d!2310037))

(declare-fun bm!691157 () Bool)

(declare-fun c!1391214 () Bool)

(declare-fun call!691164 () Bool)

(declare-fun c!1391215 () Bool)

(assert (=> bm!691157 (= call!691164 (validRegex!10302 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))))))

(declare-fun b!7533368 () Bool)

(declare-fun e!4489461 () Bool)

(declare-fun e!4489462 () Bool)

(assert (=> b!7533368 (= e!4489461 e!4489462)))

(assert (=> b!7533368 (= c!1391214 (is-Union!19874 r!24333))))

(declare-fun b!7533369 () Bool)

(declare-fun e!4489460 () Bool)

(declare-fun call!691163 () Bool)

(assert (=> b!7533369 (= e!4489460 call!691163)))

(declare-fun b!7533370 () Bool)

(declare-fun e!4489465 () Bool)

(assert (=> b!7533370 (= e!4489465 e!4489460)))

(declare-fun res!3019248 () Bool)

(assert (=> b!7533370 (=> (not res!3019248) (not e!4489460))))

(declare-fun call!691162 () Bool)

(assert (=> b!7533370 (= res!3019248 call!691162)))

(declare-fun b!7533371 () Bool)

(declare-fun e!4489463 () Bool)

(assert (=> b!7533371 (= e!4489463 call!691163)))

(declare-fun bm!691158 () Bool)

(assert (=> bm!691158 (= call!691162 (validRegex!10302 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))))))

(declare-fun d!2310039 () Bool)

(declare-fun res!3019247 () Bool)

(declare-fun e!4489466 () Bool)

(assert (=> d!2310039 (=> res!3019247 e!4489466)))

(assert (=> d!2310039 (= res!3019247 (is-ElementMatch!19874 r!24333))))

(assert (=> d!2310039 (= (validRegex!10302 r!24333) e!4489466)))

(declare-fun b!7533372 () Bool)

(declare-fun e!4489464 () Bool)

(assert (=> b!7533372 (= e!4489461 e!4489464)))

(declare-fun res!3019245 () Bool)

(assert (=> b!7533372 (= res!3019245 (not (nullable!8662 (reg!20203 r!24333))))))

(assert (=> b!7533372 (=> (not res!3019245) (not e!4489464))))

(declare-fun b!7533373 () Bool)

(assert (=> b!7533373 (= e!4489464 call!691164)))

(declare-fun b!7533374 () Bool)

(declare-fun res!3019246 () Bool)

(assert (=> b!7533374 (=> (not res!3019246) (not e!4489463))))

(assert (=> b!7533374 (= res!3019246 call!691162)))

(assert (=> b!7533374 (= e!4489462 e!4489463)))

(declare-fun b!7533375 () Bool)

(declare-fun res!3019249 () Bool)

(assert (=> b!7533375 (=> res!3019249 e!4489465)))

(assert (=> b!7533375 (= res!3019249 (not (is-Concat!28719 r!24333)))))

(assert (=> b!7533375 (= e!4489462 e!4489465)))

(declare-fun bm!691159 () Bool)

(assert (=> bm!691159 (= call!691163 call!691164)))

(declare-fun b!7533376 () Bool)

(assert (=> b!7533376 (= e!4489466 e!4489461)))

(assert (=> b!7533376 (= c!1391215 (is-Star!19874 r!24333))))

(assert (= (and d!2310039 (not res!3019247)) b!7533376))

(assert (= (and b!7533376 c!1391215) b!7533372))

(assert (= (and b!7533376 (not c!1391215)) b!7533368))

(assert (= (and b!7533372 res!3019245) b!7533373))

(assert (= (and b!7533368 c!1391214) b!7533374))

(assert (= (and b!7533368 (not c!1391214)) b!7533375))

(assert (= (and b!7533374 res!3019246) b!7533371))

(assert (= (and b!7533375 (not res!3019249)) b!7533370))

(assert (= (and b!7533370 res!3019248) b!7533369))

(assert (= (or b!7533374 b!7533370) bm!691158))

(assert (= (or b!7533371 b!7533369) bm!691159))

(assert (= (or b!7533373 bm!691159) bm!691157))

(declare-fun m!8105532 () Bool)

(assert (=> bm!691157 m!8105532))

(declare-fun m!8105534 () Bool)

(assert (=> bm!691158 m!8105534))

(declare-fun m!8105536 () Bool)

(assert (=> b!7533372 m!8105536))

(assert (=> b!7533165 d!2310039))

(declare-fun d!2310041 () Bool)

(declare-fun e!4489472 () Bool)

(assert (=> d!2310041 e!4489472))

(declare-fun c!1391218 () Bool)

(assert (=> d!2310041 (= c!1391218 (is-EmptyExpr!19874 baseR!101))))

(declare-fun lt!2641504 () Bool)

(declare-fun e!4489471 () Bool)

(assert (=> d!2310041 (= lt!2641504 e!4489471)))

(declare-fun c!1391217 () Bool)

(assert (=> d!2310041 (= c!1391217 (isEmpty!41354 knownP!30))))

(assert (=> d!2310041 (validRegex!10302 baseR!101)))

(assert (=> d!2310041 (= (matchR!9476 baseR!101 knownP!30) lt!2641504)))

(declare-fun b!7533377 () Bool)

(declare-fun res!3019254 () Bool)

(declare-fun e!4489468 () Bool)

(assert (=> b!7533377 (=> res!3019254 e!4489468)))

(assert (=> b!7533377 (= res!3019254 (not (is-ElementMatch!19874 baseR!101)))))

(declare-fun e!4489470 () Bool)

(assert (=> b!7533377 (= e!4489470 e!4489468)))

(declare-fun b!7533378 () Bool)

(assert (=> b!7533378 (= e!4489471 (matchR!9476 (derivativeStep!5668 baseR!101 (head!15464 knownP!30)) (tail!15024 knownP!30)))))

(declare-fun b!7533379 () Bool)

(declare-fun e!4489473 () Bool)

(declare-fun e!4489469 () Bool)

(assert (=> b!7533379 (= e!4489473 e!4489469)))

(declare-fun res!3019251 () Bool)

(assert (=> b!7533379 (=> res!3019251 e!4489469)))

(declare-fun call!691165 () Bool)

(assert (=> b!7533379 (= res!3019251 call!691165)))

(declare-fun bm!691160 () Bool)

(assert (=> bm!691160 (= call!691165 (isEmpty!41354 knownP!30))))

(declare-fun b!7533380 () Bool)

(assert (=> b!7533380 (= e!4489468 e!4489473)))

(declare-fun res!3019255 () Bool)

(assert (=> b!7533380 (=> (not res!3019255) (not e!4489473))))

(assert (=> b!7533380 (= res!3019255 (not lt!2641504))))

(declare-fun b!7533381 () Bool)

(declare-fun res!3019256 () Bool)

(assert (=> b!7533381 (=> res!3019256 e!4489468)))

(declare-fun e!4489467 () Bool)

(assert (=> b!7533381 (= res!3019256 e!4489467)))

(declare-fun res!3019252 () Bool)

(assert (=> b!7533381 (=> (not res!3019252) (not e!4489467))))

(assert (=> b!7533381 (= res!3019252 lt!2641504)))

(declare-fun b!7533382 () Bool)

(declare-fun res!3019253 () Bool)

(assert (=> b!7533382 (=> (not res!3019253) (not e!4489467))))

(assert (=> b!7533382 (= res!3019253 (isEmpty!41354 (tail!15024 knownP!30)))))

(declare-fun b!7533383 () Bool)

(assert (=> b!7533383 (= e!4489471 (nullable!8662 baseR!101))))

(declare-fun b!7533384 () Bool)

(assert (=> b!7533384 (= e!4489467 (= (head!15464 knownP!30) (c!1391183 baseR!101)))))

(declare-fun b!7533385 () Bool)

(assert (=> b!7533385 (= e!4489472 (= lt!2641504 call!691165))))

(declare-fun b!7533386 () Bool)

(declare-fun res!3019250 () Bool)

(assert (=> b!7533386 (=> (not res!3019250) (not e!4489467))))

(assert (=> b!7533386 (= res!3019250 (not call!691165))))

(declare-fun b!7533387 () Bool)

(declare-fun res!3019257 () Bool)

(assert (=> b!7533387 (=> res!3019257 e!4489469)))

(assert (=> b!7533387 (= res!3019257 (not (isEmpty!41354 (tail!15024 knownP!30))))))

(declare-fun b!7533388 () Bool)

(assert (=> b!7533388 (= e!4489472 e!4489470)))

(declare-fun c!1391216 () Bool)

(assert (=> b!7533388 (= c!1391216 (is-EmptyLang!19874 baseR!101))))

(declare-fun b!7533389 () Bool)

(assert (=> b!7533389 (= e!4489470 (not lt!2641504))))

(declare-fun b!7533390 () Bool)

(assert (=> b!7533390 (= e!4489469 (not (= (head!15464 knownP!30) (c!1391183 baseR!101))))))

(assert (= (and d!2310041 c!1391217) b!7533383))

(assert (= (and d!2310041 (not c!1391217)) b!7533378))

(assert (= (and d!2310041 c!1391218) b!7533385))

(assert (= (and d!2310041 (not c!1391218)) b!7533388))

(assert (= (and b!7533388 c!1391216) b!7533389))

(assert (= (and b!7533388 (not c!1391216)) b!7533377))

(assert (= (and b!7533377 (not res!3019254)) b!7533381))

(assert (= (and b!7533381 res!3019252) b!7533386))

(assert (= (and b!7533386 res!3019250) b!7533382))

(assert (= (and b!7533382 res!3019253) b!7533384))

(assert (= (and b!7533381 (not res!3019256)) b!7533380))

(assert (= (and b!7533380 res!3019255) b!7533379))

(assert (= (and b!7533379 (not res!3019251)) b!7533387))

(assert (= (and b!7533387 (not res!3019257)) b!7533390))

(assert (= (or b!7533385 b!7533379 b!7533386) bm!691160))

(assert (=> b!7533390 m!8105524))

(assert (=> b!7533378 m!8105524))

(assert (=> b!7533378 m!8105524))

(declare-fun m!8105538 () Bool)

(assert (=> b!7533378 m!8105538))

(assert (=> b!7533378 m!8105518))

(assert (=> b!7533378 m!8105538))

(assert (=> b!7533378 m!8105518))

(declare-fun m!8105540 () Bool)

(assert (=> b!7533378 m!8105540))

(assert (=> b!7533382 m!8105518))

(assert (=> b!7533382 m!8105518))

(declare-fun m!8105542 () Bool)

(assert (=> b!7533382 m!8105542))

(assert (=> b!7533384 m!8105524))

(declare-fun m!8105544 () Bool)

(assert (=> b!7533383 m!8105544))

(declare-fun m!8105546 () Bool)

(assert (=> bm!691160 m!8105546))

(assert (=> d!2310041 m!8105546))

(assert (=> d!2310041 m!8105434))

(assert (=> b!7533387 m!8105518))

(assert (=> b!7533387 m!8105518))

(assert (=> b!7533387 m!8105542))

(assert (=> b!7533160 d!2310041))

(declare-fun d!2310043 () Bool)

(declare-fun lt!2641509 () Regex!19874)

(assert (=> d!2310043 (validRegex!10302 lt!2641509)))

(declare-fun e!4489490 () Regex!19874)

(assert (=> d!2310043 (= lt!2641509 e!4489490)))

(declare-fun c!1391227 () Bool)

(assert (=> d!2310043 (= c!1391227 (is-Cons!72633 testedP!423))))

(assert (=> d!2310043 (validRegex!10302 baseR!101)))

(assert (=> d!2310043 (= (derivative!406 baseR!101 testedP!423) lt!2641509)))

(declare-fun b!7533423 () Bool)

(assert (=> b!7533423 (= e!4489490 (derivative!406 (derivativeStep!5668 baseR!101 (h!79081 testedP!423)) (t!387464 testedP!423)))))

(declare-fun b!7533424 () Bool)

(assert (=> b!7533424 (= e!4489490 baseR!101)))

(assert (= (and d!2310043 c!1391227) b!7533423))

(assert (= (and d!2310043 (not c!1391227)) b!7533424))

(declare-fun m!8105548 () Bool)

(assert (=> d!2310043 m!8105548))

(assert (=> d!2310043 m!8105434))

(declare-fun m!8105550 () Bool)

(assert (=> b!7533423 m!8105550))

(assert (=> b!7533423 m!8105550))

(declare-fun m!8105552 () Bool)

(assert (=> b!7533423 m!8105552))

(assert (=> b!7533161 d!2310043))

(declare-fun c!1391229 () Bool)

(declare-fun bm!691163 () Bool)

(declare-fun c!1391228 () Bool)

(declare-fun call!691170 () Bool)

(assert (=> bm!691163 (= call!691170 (validRegex!10302 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))))))

(declare-fun b!7533425 () Bool)

(declare-fun e!4489492 () Bool)

(declare-fun e!4489493 () Bool)

(assert (=> b!7533425 (= e!4489492 e!4489493)))

(assert (=> b!7533425 (= c!1391228 (is-Union!19874 baseR!101))))

(declare-fun b!7533426 () Bool)

(declare-fun e!4489491 () Bool)

(declare-fun call!691169 () Bool)

(assert (=> b!7533426 (= e!4489491 call!691169)))

(declare-fun b!7533427 () Bool)

(declare-fun e!4489496 () Bool)

(assert (=> b!7533427 (= e!4489496 e!4489491)))

(declare-fun res!3019277 () Bool)

(assert (=> b!7533427 (=> (not res!3019277) (not e!4489491))))

(declare-fun call!691168 () Bool)

(assert (=> b!7533427 (= res!3019277 call!691168)))

(declare-fun b!7533428 () Bool)

(declare-fun e!4489494 () Bool)

(assert (=> b!7533428 (= e!4489494 call!691169)))

(declare-fun bm!691164 () Bool)

(assert (=> bm!691164 (= call!691168 (validRegex!10302 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))))))

(declare-fun d!2310045 () Bool)

(declare-fun res!3019276 () Bool)

(declare-fun e!4489497 () Bool)

(assert (=> d!2310045 (=> res!3019276 e!4489497)))

(assert (=> d!2310045 (= res!3019276 (is-ElementMatch!19874 baseR!101))))

(assert (=> d!2310045 (= (validRegex!10302 baseR!101) e!4489497)))

(declare-fun b!7533429 () Bool)

(declare-fun e!4489495 () Bool)

(assert (=> b!7533429 (= e!4489492 e!4489495)))

(declare-fun res!3019274 () Bool)

(assert (=> b!7533429 (= res!3019274 (not (nullable!8662 (reg!20203 baseR!101))))))

(assert (=> b!7533429 (=> (not res!3019274) (not e!4489495))))

(declare-fun b!7533430 () Bool)

(assert (=> b!7533430 (= e!4489495 call!691170)))

(declare-fun b!7533431 () Bool)

(declare-fun res!3019275 () Bool)

(assert (=> b!7533431 (=> (not res!3019275) (not e!4489494))))

(assert (=> b!7533431 (= res!3019275 call!691168)))

(assert (=> b!7533431 (= e!4489493 e!4489494)))

(declare-fun b!7533432 () Bool)

(declare-fun res!3019278 () Bool)

(assert (=> b!7533432 (=> res!3019278 e!4489496)))

(assert (=> b!7533432 (= res!3019278 (not (is-Concat!28719 baseR!101)))))

(assert (=> b!7533432 (= e!4489493 e!4489496)))

(declare-fun bm!691165 () Bool)

(assert (=> bm!691165 (= call!691169 call!691170)))

(declare-fun b!7533433 () Bool)

(assert (=> b!7533433 (= e!4489497 e!4489492)))

(assert (=> b!7533433 (= c!1391229 (is-Star!19874 baseR!101))))

(assert (= (and d!2310045 (not res!3019276)) b!7533433))

(assert (= (and b!7533433 c!1391229) b!7533429))

(assert (= (and b!7533433 (not c!1391229)) b!7533425))

(assert (= (and b!7533429 res!3019274) b!7533430))

(assert (= (and b!7533425 c!1391228) b!7533431))

(assert (= (and b!7533425 (not c!1391228)) b!7533432))

(assert (= (and b!7533431 res!3019275) b!7533428))

(assert (= (and b!7533432 (not res!3019278)) b!7533427))

(assert (= (and b!7533427 res!3019277) b!7533426))

(assert (= (or b!7533431 b!7533427) bm!691164))

(assert (= (or b!7533428 b!7533426) bm!691165))

(assert (= (or b!7533430 bm!691165) bm!691163))

(declare-fun m!8105554 () Bool)

(assert (=> bm!691163 m!8105554))

(declare-fun m!8105556 () Bool)

(assert (=> bm!691164 m!8105556))

(declare-fun m!8105558 () Bool)

(assert (=> b!7533429 m!8105558))

(assert (=> start!728770 d!2310045))

(declare-fun d!2310047 () Bool)

(declare-fun lt!2641510 () List!72757)

(assert (=> d!2310047 (= (++!17391 testedP!423 lt!2641510) input!7874)))

(declare-fun e!4489498 () List!72757)

(assert (=> d!2310047 (= lt!2641510 e!4489498)))

(declare-fun c!1391230 () Bool)

(assert (=> d!2310047 (= c!1391230 (is-Cons!72633 testedP!423))))

(assert (=> d!2310047 (>= (size!42370 input!7874) (size!42370 testedP!423))))

(assert (=> d!2310047 (= (getSuffix!3560 input!7874 testedP!423) lt!2641510)))

(declare-fun b!7533434 () Bool)

(assert (=> b!7533434 (= e!4489498 (getSuffix!3560 (tail!15024 input!7874) (t!387464 testedP!423)))))

(declare-fun b!7533435 () Bool)

(assert (=> b!7533435 (= e!4489498 input!7874)))

(assert (= (and d!2310047 c!1391230) b!7533434))

(assert (= (and d!2310047 (not c!1391230)) b!7533435))

(declare-fun m!8105560 () Bool)

(assert (=> d!2310047 m!8105560))

(assert (=> d!2310047 m!8105418))

(assert (=> d!2310047 m!8105422))

(assert (=> b!7533434 m!8105480))

(assert (=> b!7533434 m!8105480))

(declare-fun m!8105562 () Bool)

(assert (=> b!7533434 m!8105562))

(assert (=> b!7533167 d!2310047))

(declare-fun b!7533440 () Bool)

(declare-fun e!4489501 () Bool)

(declare-fun tp!2190220 () Bool)

(assert (=> b!7533440 (= e!4489501 (and tp_is_empty!50103 tp!2190220))))

(assert (=> b!7533168 (= tp!2190168 e!4489501)))

(assert (= (and b!7533168 (is-Cons!72633 (t!387464 testedP!423))) b!7533440))

(declare-fun b!7533441 () Bool)

(declare-fun e!4489502 () Bool)

(declare-fun tp!2190221 () Bool)

(assert (=> b!7533441 (= e!4489502 (and tp_is_empty!50103 tp!2190221))))

(assert (=> b!7533158 (= tp!2190173 e!4489502)))

(assert (= (and b!7533158 (is-Cons!72633 (t!387464 input!7874))) b!7533441))

(declare-fun b!7533453 () Bool)

(declare-fun e!4489505 () Bool)

(declare-fun tp!2190235 () Bool)

(declare-fun tp!2190233 () Bool)

(assert (=> b!7533453 (= e!4489505 (and tp!2190235 tp!2190233))))

(assert (=> b!7533159 (= tp!2190176 e!4489505)))

(declare-fun b!7533452 () Bool)

(assert (=> b!7533452 (= e!4489505 tp_is_empty!50103)))

(declare-fun b!7533454 () Bool)

(declare-fun tp!2190234 () Bool)

(assert (=> b!7533454 (= e!4489505 tp!2190234)))

(declare-fun b!7533455 () Bool)

(declare-fun tp!2190236 () Bool)

(declare-fun tp!2190232 () Bool)

(assert (=> b!7533455 (= e!4489505 (and tp!2190236 tp!2190232))))

(assert (= (and b!7533159 (is-ElementMatch!19874 (regOne!40260 r!24333))) b!7533452))

(assert (= (and b!7533159 (is-Concat!28719 (regOne!40260 r!24333))) b!7533453))

(assert (= (and b!7533159 (is-Star!19874 (regOne!40260 r!24333))) b!7533454))

(assert (= (and b!7533159 (is-Union!19874 (regOne!40260 r!24333))) b!7533455))

(declare-fun b!7533457 () Bool)

(declare-fun e!4489506 () Bool)

(declare-fun tp!2190240 () Bool)

(declare-fun tp!2190238 () Bool)

(assert (=> b!7533457 (= e!4489506 (and tp!2190240 tp!2190238))))

(assert (=> b!7533159 (= tp!2190177 e!4489506)))

(declare-fun b!7533456 () Bool)

(assert (=> b!7533456 (= e!4489506 tp_is_empty!50103)))

(declare-fun b!7533458 () Bool)

(declare-fun tp!2190239 () Bool)

(assert (=> b!7533458 (= e!4489506 tp!2190239)))

(declare-fun b!7533459 () Bool)

(declare-fun tp!2190241 () Bool)

(declare-fun tp!2190237 () Bool)

(assert (=> b!7533459 (= e!4489506 (and tp!2190241 tp!2190237))))

(assert (= (and b!7533159 (is-ElementMatch!19874 (regTwo!40260 r!24333))) b!7533456))

(assert (= (and b!7533159 (is-Concat!28719 (regTwo!40260 r!24333))) b!7533457))

(assert (= (and b!7533159 (is-Star!19874 (regTwo!40260 r!24333))) b!7533458))

(assert (= (and b!7533159 (is-Union!19874 (regTwo!40260 r!24333))) b!7533459))

(declare-fun b!7533461 () Bool)

(declare-fun e!4489507 () Bool)

(declare-fun tp!2190245 () Bool)

(declare-fun tp!2190243 () Bool)

(assert (=> b!7533461 (= e!4489507 (and tp!2190245 tp!2190243))))

(assert (=> b!7533154 (= tp!2190169 e!4489507)))

(declare-fun b!7533460 () Bool)

(assert (=> b!7533460 (= e!4489507 tp_is_empty!50103)))

(declare-fun b!7533462 () Bool)

(declare-fun tp!2190244 () Bool)

(assert (=> b!7533462 (= e!4489507 tp!2190244)))

(declare-fun b!7533463 () Bool)

(declare-fun tp!2190246 () Bool)

(declare-fun tp!2190242 () Bool)

(assert (=> b!7533463 (= e!4489507 (and tp!2190246 tp!2190242))))

(assert (= (and b!7533154 (is-ElementMatch!19874 (regOne!40260 baseR!101))) b!7533460))

(assert (= (and b!7533154 (is-Concat!28719 (regOne!40260 baseR!101))) b!7533461))

(assert (= (and b!7533154 (is-Star!19874 (regOne!40260 baseR!101))) b!7533462))

(assert (= (and b!7533154 (is-Union!19874 (regOne!40260 baseR!101))) b!7533463))

(declare-fun b!7533465 () Bool)

(declare-fun e!4489508 () Bool)

(declare-fun tp!2190250 () Bool)

(declare-fun tp!2190248 () Bool)

(assert (=> b!7533465 (= e!4489508 (and tp!2190250 tp!2190248))))

(assert (=> b!7533154 (= tp!2190178 e!4489508)))

(declare-fun b!7533464 () Bool)

(assert (=> b!7533464 (= e!4489508 tp_is_empty!50103)))

(declare-fun b!7533466 () Bool)

(declare-fun tp!2190249 () Bool)

(assert (=> b!7533466 (= e!4489508 tp!2190249)))

(declare-fun b!7533467 () Bool)

(declare-fun tp!2190251 () Bool)

(declare-fun tp!2190247 () Bool)

(assert (=> b!7533467 (= e!4489508 (and tp!2190251 tp!2190247))))

(assert (= (and b!7533154 (is-ElementMatch!19874 (regTwo!40260 baseR!101))) b!7533464))

(assert (= (and b!7533154 (is-Concat!28719 (regTwo!40260 baseR!101))) b!7533465))

(assert (= (and b!7533154 (is-Star!19874 (regTwo!40260 baseR!101))) b!7533466))

(assert (= (and b!7533154 (is-Union!19874 (regTwo!40260 baseR!101))) b!7533467))

(declare-fun b!7533468 () Bool)

(declare-fun e!4489509 () Bool)

(declare-fun tp!2190252 () Bool)

(assert (=> b!7533468 (= e!4489509 (and tp_is_empty!50103 tp!2190252))))

(assert (=> b!7533149 (= tp!2190166 e!4489509)))

(assert (= (and b!7533149 (is-Cons!72633 (t!387464 knownP!30))) b!7533468))

(declare-fun b!7533470 () Bool)

(declare-fun e!4489510 () Bool)

(declare-fun tp!2190256 () Bool)

(declare-fun tp!2190254 () Bool)

(assert (=> b!7533470 (= e!4489510 (and tp!2190256 tp!2190254))))

(assert (=> b!7533155 (= tp!2190172 e!4489510)))

(declare-fun b!7533469 () Bool)

(assert (=> b!7533469 (= e!4489510 tp_is_empty!50103)))

(declare-fun b!7533471 () Bool)

(declare-fun tp!2190255 () Bool)

(assert (=> b!7533471 (= e!4489510 tp!2190255)))

(declare-fun b!7533472 () Bool)

(declare-fun tp!2190257 () Bool)

(declare-fun tp!2190253 () Bool)

(assert (=> b!7533472 (= e!4489510 (and tp!2190257 tp!2190253))))

(assert (= (and b!7533155 (is-ElementMatch!19874 (regOne!40261 baseR!101))) b!7533469))

(assert (= (and b!7533155 (is-Concat!28719 (regOne!40261 baseR!101))) b!7533470))

(assert (= (and b!7533155 (is-Star!19874 (regOne!40261 baseR!101))) b!7533471))

(assert (= (and b!7533155 (is-Union!19874 (regOne!40261 baseR!101))) b!7533472))

(declare-fun b!7533474 () Bool)

(declare-fun e!4489511 () Bool)

(declare-fun tp!2190261 () Bool)

(declare-fun tp!2190259 () Bool)

(assert (=> b!7533474 (= e!4489511 (and tp!2190261 tp!2190259))))

(assert (=> b!7533155 (= tp!2190170 e!4489511)))

(declare-fun b!7533473 () Bool)

(assert (=> b!7533473 (= e!4489511 tp_is_empty!50103)))

(declare-fun b!7533475 () Bool)

(declare-fun tp!2190260 () Bool)

(assert (=> b!7533475 (= e!4489511 tp!2190260)))

(declare-fun b!7533476 () Bool)

(declare-fun tp!2190262 () Bool)

(declare-fun tp!2190258 () Bool)

(assert (=> b!7533476 (= e!4489511 (and tp!2190262 tp!2190258))))

(assert (= (and b!7533155 (is-ElementMatch!19874 (regTwo!40261 baseR!101))) b!7533473))

(assert (= (and b!7533155 (is-Concat!28719 (regTwo!40261 baseR!101))) b!7533474))

(assert (= (and b!7533155 (is-Star!19874 (regTwo!40261 baseR!101))) b!7533475))

(assert (= (and b!7533155 (is-Union!19874 (regTwo!40261 baseR!101))) b!7533476))

(declare-fun b!7533478 () Bool)

(declare-fun e!4489512 () Bool)

(declare-fun tp!2190266 () Bool)

(declare-fun tp!2190264 () Bool)

(assert (=> b!7533478 (= e!4489512 (and tp!2190266 tp!2190264))))

(assert (=> b!7533150 (= tp!2190171 e!4489512)))

(declare-fun b!7533477 () Bool)

(assert (=> b!7533477 (= e!4489512 tp_is_empty!50103)))

(declare-fun b!7533479 () Bool)

(declare-fun tp!2190265 () Bool)

(assert (=> b!7533479 (= e!4489512 tp!2190265)))

(declare-fun b!7533480 () Bool)

(declare-fun tp!2190267 () Bool)

(declare-fun tp!2190263 () Bool)

(assert (=> b!7533480 (= e!4489512 (and tp!2190267 tp!2190263))))

(assert (= (and b!7533150 (is-ElementMatch!19874 (regOne!40261 r!24333))) b!7533477))

(assert (= (and b!7533150 (is-Concat!28719 (regOne!40261 r!24333))) b!7533478))

(assert (= (and b!7533150 (is-Star!19874 (regOne!40261 r!24333))) b!7533479))

(assert (= (and b!7533150 (is-Union!19874 (regOne!40261 r!24333))) b!7533480))

(declare-fun b!7533482 () Bool)

(declare-fun e!4489513 () Bool)

(declare-fun tp!2190271 () Bool)

(declare-fun tp!2190269 () Bool)

(assert (=> b!7533482 (= e!4489513 (and tp!2190271 tp!2190269))))

(assert (=> b!7533150 (= tp!2190175 e!4489513)))

(declare-fun b!7533481 () Bool)

(assert (=> b!7533481 (= e!4489513 tp_is_empty!50103)))

(declare-fun b!7533483 () Bool)

(declare-fun tp!2190270 () Bool)

(assert (=> b!7533483 (= e!4489513 tp!2190270)))

(declare-fun b!7533484 () Bool)

(declare-fun tp!2190272 () Bool)

(declare-fun tp!2190268 () Bool)

(assert (=> b!7533484 (= e!4489513 (and tp!2190272 tp!2190268))))

(assert (= (and b!7533150 (is-ElementMatch!19874 (regTwo!40261 r!24333))) b!7533481))

(assert (= (and b!7533150 (is-Concat!28719 (regTwo!40261 r!24333))) b!7533482))

(assert (= (and b!7533150 (is-Star!19874 (regTwo!40261 r!24333))) b!7533483))

(assert (= (and b!7533150 (is-Union!19874 (regTwo!40261 r!24333))) b!7533484))

(declare-fun b!7533486 () Bool)

(declare-fun e!4489514 () Bool)

(declare-fun tp!2190276 () Bool)

(declare-fun tp!2190274 () Bool)

(assert (=> b!7533486 (= e!4489514 (and tp!2190276 tp!2190274))))

(assert (=> b!7533156 (= tp!2190174 e!4489514)))

(declare-fun b!7533485 () Bool)

(assert (=> b!7533485 (= e!4489514 tp_is_empty!50103)))

(declare-fun b!7533487 () Bool)

(declare-fun tp!2190275 () Bool)

(assert (=> b!7533487 (= e!4489514 tp!2190275)))

(declare-fun b!7533488 () Bool)

(declare-fun tp!2190277 () Bool)

(declare-fun tp!2190273 () Bool)

(assert (=> b!7533488 (= e!4489514 (and tp!2190277 tp!2190273))))

(assert (= (and b!7533156 (is-ElementMatch!19874 (reg!20203 baseR!101))) b!7533485))

(assert (= (and b!7533156 (is-Concat!28719 (reg!20203 baseR!101))) b!7533486))

(assert (= (and b!7533156 (is-Star!19874 (reg!20203 baseR!101))) b!7533487))

(assert (= (and b!7533156 (is-Union!19874 (reg!20203 baseR!101))) b!7533488))

(declare-fun b!7533490 () Bool)

(declare-fun e!4489515 () Bool)

(declare-fun tp!2190281 () Bool)

(declare-fun tp!2190279 () Bool)

(assert (=> b!7533490 (= e!4489515 (and tp!2190281 tp!2190279))))

(assert (=> b!7533151 (= tp!2190167 e!4489515)))

(declare-fun b!7533489 () Bool)

(assert (=> b!7533489 (= e!4489515 tp_is_empty!50103)))

(declare-fun b!7533491 () Bool)

(declare-fun tp!2190280 () Bool)

(assert (=> b!7533491 (= e!4489515 tp!2190280)))

(declare-fun b!7533492 () Bool)

(declare-fun tp!2190282 () Bool)

(declare-fun tp!2190278 () Bool)

(assert (=> b!7533492 (= e!4489515 (and tp!2190282 tp!2190278))))

(assert (= (and b!7533151 (is-ElementMatch!19874 (reg!20203 r!24333))) b!7533489))

(assert (= (and b!7533151 (is-Concat!28719 (reg!20203 r!24333))) b!7533490))

(assert (= (and b!7533151 (is-Star!19874 (reg!20203 r!24333))) b!7533491))

(assert (= (and b!7533151 (is-Union!19874 (reg!20203 r!24333))) b!7533492))

(push 1)

(assert (not d!2310043))

(assert (not b!7533372))

(assert (not b!7533382))

(assert (not b!7533479))

(assert (not b!7533383))

(assert (not b!7533346))

(assert (not b!7533253))

(assert (not bm!691157))

(assert (not b!7533317))

(assert (not b!7533455))

(assert (not b!7533468))

(assert (not b!7533470))

(assert (not b!7533423))

(assert (not b!7533312))

(assert (not b!7533458))

(assert (not b!7533491))

(assert (not b!7533474))

(assert (not b!7533478))

(assert (not d!2310047))

(assert (not b!7533390))

(assert (not b!7533378))

(assert (not b!7533342))

(assert (not b!7533488))

(assert (not b!7533472))

(assert (not b!7533255))

(assert (not b!7533483))

(assert (not b!7533384))

(assert (not b!7533490))

(assert (not b!7533338))

(assert (not b!7533459))

(assert (not b!7533482))

(assert (not b!7533463))

(assert (not b!7533454))

(assert (not b!7533441))

(assert (not b!7533254))

(assert (not bm!691147))

(assert (not b!7533492))

(assert (not b!7533476))

(assert (not b!7533349))

(assert (not bm!691164))

(assert (not b!7533387))

(assert (not b!7533475))

(assert (not b!7533324))

(assert (not d!2310041))

(assert (not b!7533486))

(assert (not b!7533467))

(assert (not bm!691158))

(assert (not d!2310021))

(assert (not d!2310023))

(assert (not b!7533434))

(assert (not b!7533343))

(assert (not b!7533487))

(assert (not b!7533429))

(assert (not b!7533241))

(assert (not b!7533480))

(assert (not b!7533345))

(assert (not b!7533471))

(assert (not b!7533243))

(assert (not bm!691163))

(assert (not bm!691160))

(assert (not b!7533321))

(assert (not b!7533457))

(assert (not b!7533341))

(assert (not d!2310027))

(assert (not b!7533484))

(assert (not b!7533318))

(assert (not b!7533462))

(assert (not b!7533347))

(assert (not b!7533466))

(assert (not b!7533465))

(assert (not b!7533316))

(assert (not b!7533453))

(assert (not d!2310033))

(assert tp_is_empty!50103)

(assert (not b!7533440))

(assert (not b!7533461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2310073 () Bool)

(declare-fun lt!2641533 () List!72757)

(assert (=> d!2310073 (= (++!17391 (t!387464 testedP!423) lt!2641533) (tail!15024 input!7874))))

(declare-fun e!4489574 () List!72757)

(assert (=> d!2310073 (= lt!2641533 e!4489574)))

(declare-fun c!1391249 () Bool)

(assert (=> d!2310073 (= c!1391249 (is-Cons!72633 (t!387464 testedP!423)))))

(assert (=> d!2310073 (>= (size!42370 (tail!15024 input!7874)) (size!42370 (t!387464 testedP!423)))))

(assert (=> d!2310073 (= (getSuffix!3560 (tail!15024 input!7874) (t!387464 testedP!423)) lt!2641533)))

(declare-fun b!7533622 () Bool)

(assert (=> b!7533622 (= e!4489574 (getSuffix!3560 (tail!15024 (tail!15024 input!7874)) (t!387464 (t!387464 testedP!423))))))

(declare-fun b!7533623 () Bool)

(assert (=> b!7533623 (= e!4489574 (tail!15024 input!7874))))

(assert (= (and d!2310073 c!1391249) b!7533622))

(assert (= (and d!2310073 (not c!1391249)) b!7533623))

(declare-fun m!8105630 () Bool)

(assert (=> d!2310073 m!8105630))

(assert (=> d!2310073 m!8105480))

(declare-fun m!8105632 () Bool)

(assert (=> d!2310073 m!8105632))

(assert (=> d!2310073 m!8105474))

(assert (=> b!7533622 m!8105480))

(declare-fun m!8105634 () Bool)

(assert (=> b!7533622 m!8105634))

(assert (=> b!7533622 m!8105634))

(declare-fun m!8105636 () Bool)

(assert (=> b!7533622 m!8105636))

(assert (=> b!7533434 d!2310073))

(declare-fun d!2310075 () Bool)

(assert (=> d!2310075 (= (tail!15024 input!7874) (t!387464 input!7874))))

(assert (=> b!7533434 d!2310075))

(declare-fun d!2310077 () Bool)

(declare-fun lt!2641534 () Int)

(assert (=> d!2310077 (>= lt!2641534 0)))

(declare-fun e!4489575 () Int)

(assert (=> d!2310077 (= lt!2641534 e!4489575)))

(declare-fun c!1391250 () Bool)

(assert (=> d!2310077 (= c!1391250 (is-Nil!72633 (t!387464 testedP!423)))))

(assert (=> d!2310077 (= (size!42370 (t!387464 testedP!423)) lt!2641534)))

(declare-fun b!7533624 () Bool)

(assert (=> b!7533624 (= e!4489575 0)))

(declare-fun b!7533625 () Bool)

(assert (=> b!7533625 (= e!4489575 (+ 1 (size!42370 (t!387464 (t!387464 testedP!423)))))))

(assert (= (and d!2310077 c!1391250) b!7533624))

(assert (= (and d!2310077 (not c!1391250)) b!7533625))

(declare-fun m!8105638 () Bool)

(assert (=> b!7533625 m!8105638))

(assert (=> b!7533241 d!2310077))

(assert (=> b!7533347 d!2310037))

(assert (=> b!7533347 d!2310015))

(declare-fun bm!691168 () Bool)

(declare-fun call!691175 () Bool)

(declare-fun c!1391252 () Bool)

(declare-fun c!1391251 () Bool)

(assert (=> bm!691168 (= call!691175 (validRegex!10302 (ite c!1391252 (reg!20203 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))) (ite c!1391251 (regTwo!40261 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))) (regTwo!40260 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101))))))))))

(declare-fun b!7533626 () Bool)

(declare-fun e!4489577 () Bool)

(declare-fun e!4489578 () Bool)

(assert (=> b!7533626 (= e!4489577 e!4489578)))

(assert (=> b!7533626 (= c!1391251 (is-Union!19874 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))))))

(declare-fun b!7533627 () Bool)

(declare-fun e!4489576 () Bool)

(declare-fun call!691174 () Bool)

(assert (=> b!7533627 (= e!4489576 call!691174)))

(declare-fun b!7533628 () Bool)

(declare-fun e!4489581 () Bool)

(assert (=> b!7533628 (= e!4489581 e!4489576)))

(declare-fun res!3019318 () Bool)

(assert (=> b!7533628 (=> (not res!3019318) (not e!4489576))))

(declare-fun call!691173 () Bool)

(assert (=> b!7533628 (= res!3019318 call!691173)))

(declare-fun b!7533629 () Bool)

(declare-fun e!4489579 () Bool)

(assert (=> b!7533629 (= e!4489579 call!691174)))

(declare-fun bm!691169 () Bool)

(assert (=> bm!691169 (= call!691173 (validRegex!10302 (ite c!1391251 (regOne!40261 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))) (regOne!40260 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))))))))

(declare-fun d!2310079 () Bool)

(declare-fun res!3019317 () Bool)

(declare-fun e!4489582 () Bool)

(assert (=> d!2310079 (=> res!3019317 e!4489582)))

(assert (=> d!2310079 (= res!3019317 (is-ElementMatch!19874 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))))))

(assert (=> d!2310079 (= (validRegex!10302 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))) e!4489582)))

(declare-fun b!7533630 () Bool)

(declare-fun e!4489580 () Bool)

(assert (=> b!7533630 (= e!4489577 e!4489580)))

(declare-fun res!3019315 () Bool)

(assert (=> b!7533630 (= res!3019315 (not (nullable!8662 (reg!20203 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))))))))

(assert (=> b!7533630 (=> (not res!3019315) (not e!4489580))))

(declare-fun b!7533631 () Bool)

(assert (=> b!7533631 (= e!4489580 call!691175)))

(declare-fun b!7533632 () Bool)

(declare-fun res!3019316 () Bool)

(assert (=> b!7533632 (=> (not res!3019316) (not e!4489579))))

(assert (=> b!7533632 (= res!3019316 call!691173)))

(assert (=> b!7533632 (= e!4489578 e!4489579)))

(declare-fun b!7533633 () Bool)

(declare-fun res!3019319 () Bool)

(assert (=> b!7533633 (=> res!3019319 e!4489581)))

(assert (=> b!7533633 (= res!3019319 (not (is-Concat!28719 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101))))))))

(assert (=> b!7533633 (= e!4489578 e!4489581)))

(declare-fun bm!691170 () Bool)

(assert (=> bm!691170 (= call!691174 call!691175)))

(declare-fun b!7533634 () Bool)

(assert (=> b!7533634 (= e!4489582 e!4489577)))

(assert (=> b!7533634 (= c!1391252 (is-Star!19874 (ite c!1391229 (reg!20203 baseR!101) (ite c!1391228 (regTwo!40261 baseR!101) (regTwo!40260 baseR!101)))))))

(assert (= (and d!2310079 (not res!3019317)) b!7533634))

(assert (= (and b!7533634 c!1391252) b!7533630))

(assert (= (and b!7533634 (not c!1391252)) b!7533626))

(assert (= (and b!7533630 res!3019315) b!7533631))

(assert (= (and b!7533626 c!1391251) b!7533632))

(assert (= (and b!7533626 (not c!1391251)) b!7533633))

(assert (= (and b!7533632 res!3019316) b!7533629))

(assert (= (and b!7533633 (not res!3019319)) b!7533628))

(assert (= (and b!7533628 res!3019318) b!7533627))

(assert (= (or b!7533632 b!7533628) bm!691169))

(assert (= (or b!7533629 b!7533627) bm!691170))

(assert (= (or b!7533631 bm!691170) bm!691168))

(declare-fun m!8105640 () Bool)

(assert (=> bm!691168 m!8105640))

(declare-fun m!8105642 () Bool)

(assert (=> bm!691169 m!8105642))

(declare-fun m!8105644 () Bool)

(assert (=> b!7533630 m!8105644))

(assert (=> bm!691163 d!2310079))

(declare-fun d!2310081 () Bool)

(declare-fun e!4489584 () Bool)

(assert (=> d!2310081 e!4489584))

(declare-fun res!3019322 () Bool)

(assert (=> d!2310081 (=> res!3019322 e!4489584)))

(declare-fun lt!2641535 () Bool)

(assert (=> d!2310081 (= res!3019322 (not lt!2641535))))

(declare-fun e!4489585 () Bool)

(assert (=> d!2310081 (= lt!2641535 e!4489585)))

(declare-fun res!3019320 () Bool)

(assert (=> d!2310081 (=> res!3019320 e!4489585)))

(assert (=> d!2310081 (= res!3019320 (is-Nil!72633 (tail!15024 knownP!30)))))

(assert (=> d!2310081 (= (isPrefix!6080 (tail!15024 knownP!30) (tail!15024 input!7874)) lt!2641535)))

(declare-fun b!7533638 () Bool)

(assert (=> b!7533638 (= e!4489584 (>= (size!42370 (tail!15024 input!7874)) (size!42370 (tail!15024 knownP!30))))))

(declare-fun b!7533637 () Bool)

(declare-fun e!4489583 () Bool)

(assert (=> b!7533637 (= e!4489583 (isPrefix!6080 (tail!15024 (tail!15024 knownP!30)) (tail!15024 (tail!15024 input!7874))))))

(declare-fun b!7533636 () Bool)

(declare-fun res!3019321 () Bool)

(assert (=> b!7533636 (=> (not res!3019321) (not e!4489583))))

(assert (=> b!7533636 (= res!3019321 (= (head!15464 (tail!15024 knownP!30)) (head!15464 (tail!15024 input!7874))))))

(declare-fun b!7533635 () Bool)

(assert (=> b!7533635 (= e!4489585 e!4489583)))

(declare-fun res!3019323 () Bool)

(assert (=> b!7533635 (=> (not res!3019323) (not e!4489583))))

(assert (=> b!7533635 (= res!3019323 (not (is-Nil!72633 (tail!15024 input!7874))))))

(assert (= (and d!2310081 (not res!3019320)) b!7533635))

(assert (= (and b!7533635 res!3019323) b!7533636))

(assert (= (and b!7533636 res!3019321) b!7533637))

(assert (= (and d!2310081 (not res!3019322)) b!7533638))

(assert (=> b!7533638 m!8105480))

(assert (=> b!7533638 m!8105632))

(assert (=> b!7533638 m!8105518))

(declare-fun m!8105646 () Bool)

(assert (=> b!7533638 m!8105646))

(assert (=> b!7533637 m!8105518))

(declare-fun m!8105648 () Bool)

(assert (=> b!7533637 m!8105648))

(assert (=> b!7533637 m!8105480))

(assert (=> b!7533637 m!8105634))

(assert (=> b!7533637 m!8105648))

(assert (=> b!7533637 m!8105634))

(declare-fun m!8105650 () Bool)

(assert (=> b!7533637 m!8105650))

(assert (=> b!7533636 m!8105518))

(declare-fun m!8105652 () Bool)

(assert (=> b!7533636 m!8105652))

(assert (=> b!7533636 m!8105480))

(declare-fun m!8105654 () Bool)

(assert (=> b!7533636 m!8105654))

(assert (=> b!7533346 d!2310081))

(declare-fun d!2310083 () Bool)

(assert (=> d!2310083 (= (tail!15024 knownP!30) (t!387464 knownP!30))))

(assert (=> b!7533346 d!2310083))

(assert (=> b!7533346 d!2310075))

(declare-fun d!2310085 () Bool)

(assert (=> d!2310085 (= (head!15464 knownP!30) (h!79081 knownP!30))))

(assert (=> b!7533345 d!2310085))

(declare-fun d!2310087 () Bool)

(assert (=> d!2310087 (= (head!15464 input!7874) (h!79081 input!7874))))

(assert (=> b!7533345 d!2310087))

(declare-fun b!7533649 () Bool)

(declare-fun res!3019328 () Bool)

(declare-fun e!4489591 () Bool)

(assert (=> b!7533649 (=> (not res!3019328) (not e!4489591))))

(declare-fun lt!2641538 () List!72757)

(assert (=> b!7533649 (= res!3019328 (= (size!42370 lt!2641538) (+ (size!42370 testedP!423) (size!42370 lt!2641510))))))

(declare-fun b!7533647 () Bool)

(declare-fun e!4489590 () List!72757)

(assert (=> b!7533647 (= e!4489590 lt!2641510)))

(declare-fun d!2310089 () Bool)

(assert (=> d!2310089 e!4489591))

(declare-fun res!3019329 () Bool)

(assert (=> d!2310089 (=> (not res!3019329) (not e!4489591))))

(declare-fun content!15351 (List!72757) (Set C!40074))

(assert (=> d!2310089 (= res!3019329 (= (content!15351 lt!2641538) (set.union (content!15351 testedP!423) (content!15351 lt!2641510))))))

(assert (=> d!2310089 (= lt!2641538 e!4489590)))

(declare-fun c!1391255 () Bool)

(assert (=> d!2310089 (= c!1391255 (is-Nil!72633 testedP!423))))

(assert (=> d!2310089 (= (++!17391 testedP!423 lt!2641510) lt!2641538)))

(declare-fun b!7533648 () Bool)

(assert (=> b!7533648 (= e!4489590 (Cons!72633 (h!79081 testedP!423) (++!17391 (t!387464 testedP!423) lt!2641510)))))

(declare-fun b!7533650 () Bool)

(assert (=> b!7533650 (= e!4489591 (or (not (= lt!2641510 Nil!72633)) (= lt!2641538 testedP!423)))))

(assert (= (and d!2310089 c!1391255) b!7533647))

(assert (= (and d!2310089 (not c!1391255)) b!7533648))

(assert (= (and d!2310089 res!3019329) b!7533649))

(assert (= (and b!7533649 res!3019328) b!7533650))

(declare-fun m!8105656 () Bool)

(assert (=> b!7533649 m!8105656))

(assert (=> b!7533649 m!8105422))

(declare-fun m!8105658 () Bool)

(assert (=> b!7533649 m!8105658))

(declare-fun m!8105660 () Bool)

(assert (=> d!2310089 m!8105660))

(declare-fun m!8105662 () Bool)

(assert (=> d!2310089 m!8105662))

(declare-fun m!8105664 () Bool)

(assert (=> d!2310089 m!8105664))

(declare-fun m!8105666 () Bool)

(assert (=> b!7533648 m!8105666))

(assert (=> d!2310047 d!2310089))

(assert (=> d!2310047 d!2310037))

(assert (=> d!2310047 d!2310013))

(declare-fun d!2310091 () Bool)

(assert (=> d!2310091 (= (head!15464 (getSuffix!3560 knownP!30 testedP!423)) (h!79081 (getSuffix!3560 knownP!30 testedP!423)))))

(assert (=> b!7533324 d!2310091))

(assert (=> b!7533390 d!2310085))

(declare-fun d!2310093 () Bool)

(assert (=> d!2310093 (= (isEmpty!41354 knownP!30) (is-Nil!72633 knownP!30))))

(assert (=> bm!691160 d!2310093))

(declare-fun d!2310095 () Bool)

(assert (=> d!2310095 (= (isEmpty!41354 (getSuffix!3560 knownP!30 testedP!423)) (is-Nil!72633 (getSuffix!3560 knownP!30 testedP!423)))))

(assert (=> d!2310023 d!2310095))

(assert (=> d!2310023 d!2310039))

(declare-fun c!1391257 () Bool)

(declare-fun call!691178 () Bool)

(declare-fun c!1391256 () Bool)

(declare-fun bm!691171 () Bool)

(assert (=> bm!691171 (= call!691178 (validRegex!10302 (ite c!1391257 (reg!20203 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))) (ite c!1391256 (regTwo!40261 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))) (regTwo!40260 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333))))))))))

(declare-fun b!7533651 () Bool)

(declare-fun e!4489593 () Bool)

(declare-fun e!4489594 () Bool)

(assert (=> b!7533651 (= e!4489593 e!4489594)))

(assert (=> b!7533651 (= c!1391256 (is-Union!19874 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))))))

(declare-fun b!7533652 () Bool)

(declare-fun e!4489592 () Bool)

(declare-fun call!691177 () Bool)

(assert (=> b!7533652 (= e!4489592 call!691177)))

(declare-fun b!7533653 () Bool)

(declare-fun e!4489597 () Bool)

(assert (=> b!7533653 (= e!4489597 e!4489592)))

(declare-fun res!3019333 () Bool)

(assert (=> b!7533653 (=> (not res!3019333) (not e!4489592))))

(declare-fun call!691176 () Bool)

(assert (=> b!7533653 (= res!3019333 call!691176)))

(declare-fun b!7533654 () Bool)

(declare-fun e!4489595 () Bool)

(assert (=> b!7533654 (= e!4489595 call!691177)))

(declare-fun bm!691172 () Bool)

(assert (=> bm!691172 (= call!691176 (validRegex!10302 (ite c!1391256 (regOne!40261 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))) (regOne!40260 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))))))))

(declare-fun d!2310097 () Bool)

(declare-fun res!3019332 () Bool)

(declare-fun e!4489598 () Bool)

(assert (=> d!2310097 (=> res!3019332 e!4489598)))

(assert (=> d!2310097 (= res!3019332 (is-ElementMatch!19874 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))))))

(assert (=> d!2310097 (= (validRegex!10302 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))) e!4489598)))

(declare-fun b!7533655 () Bool)

(declare-fun e!4489596 () Bool)

(assert (=> b!7533655 (= e!4489593 e!4489596)))

(declare-fun res!3019330 () Bool)

(assert (=> b!7533655 (= res!3019330 (not (nullable!8662 (reg!20203 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))))))))

(assert (=> b!7533655 (=> (not res!3019330) (not e!4489596))))

(declare-fun b!7533656 () Bool)

(assert (=> b!7533656 (= e!4489596 call!691178)))

(declare-fun b!7533657 () Bool)

(declare-fun res!3019331 () Bool)

(assert (=> b!7533657 (=> (not res!3019331) (not e!4489595))))

(assert (=> b!7533657 (= res!3019331 call!691176)))

(assert (=> b!7533657 (= e!4489594 e!4489595)))

(declare-fun b!7533658 () Bool)

(declare-fun res!3019334 () Bool)

(assert (=> b!7533658 (=> res!3019334 e!4489597)))

(assert (=> b!7533658 (= res!3019334 (not (is-Concat!28719 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333))))))))

(assert (=> b!7533658 (= e!4489594 e!4489597)))

(declare-fun bm!691173 () Bool)

(assert (=> bm!691173 (= call!691177 call!691178)))

(declare-fun b!7533659 () Bool)

(assert (=> b!7533659 (= e!4489598 e!4489593)))

(assert (=> b!7533659 (= c!1391257 (is-Star!19874 (ite c!1391215 (reg!20203 r!24333) (ite c!1391214 (regTwo!40261 r!24333) (regTwo!40260 r!24333)))))))

(assert (= (and d!2310097 (not res!3019332)) b!7533659))

(assert (= (and b!7533659 c!1391257) b!7533655))

(assert (= (and b!7533659 (not c!1391257)) b!7533651))

(assert (= (and b!7533655 res!3019330) b!7533656))

(assert (= (and b!7533651 c!1391256) b!7533657))

(assert (= (and b!7533651 (not c!1391256)) b!7533658))

(assert (= (and b!7533657 res!3019331) b!7533654))

(assert (= (and b!7533658 (not res!3019334)) b!7533653))

(assert (= (and b!7533653 res!3019333) b!7533652))

(assert (= (or b!7533657 b!7533653) bm!691172))

(assert (= (or b!7533654 b!7533652) bm!691173))

(assert (= (or b!7533656 bm!691173) bm!691171))

(declare-fun m!8105668 () Bool)

(assert (=> bm!691171 m!8105668))

(declare-fun m!8105670 () Bool)

(assert (=> bm!691172 m!8105670))

(declare-fun m!8105672 () Bool)

(assert (=> b!7533655 m!8105672))

(assert (=> bm!691157 d!2310097))

(declare-fun d!2310099 () Bool)

(declare-fun nullableFct!3467 (Regex!19874) Bool)

(assert (=> d!2310099 (= (nullable!8662 (reg!20203 baseR!101)) (nullableFct!3467 (reg!20203 baseR!101)))))

(declare-fun bs!1939867 () Bool)

(assert (= bs!1939867 d!2310099))

(declare-fun m!8105674 () Bool)

(assert (=> bs!1939867 m!8105674))

(assert (=> b!7533429 d!2310099))

(declare-fun d!2310101 () Bool)

(declare-fun e!4489604 () Bool)

(assert (=> d!2310101 e!4489604))

(declare-fun c!1391260 () Bool)

(assert (=> d!2310101 (= c!1391260 (is-EmptyExpr!19874 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423)))))))

(declare-fun lt!2641539 () Bool)

(declare-fun e!4489603 () Bool)

(assert (=> d!2310101 (= lt!2641539 e!4489603)))

(declare-fun c!1391259 () Bool)

(assert (=> d!2310101 (= c!1391259 (isEmpty!41354 (tail!15024 (getSuffix!3560 knownP!30 testedP!423))))))

(assert (=> d!2310101 (validRegex!10302 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423))))))

(assert (=> d!2310101 (= (matchR!9476 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423))) (tail!15024 (getSuffix!3560 knownP!30 testedP!423))) lt!2641539)))

(declare-fun b!7533660 () Bool)

(declare-fun res!3019339 () Bool)

(declare-fun e!4489600 () Bool)

(assert (=> b!7533660 (=> res!3019339 e!4489600)))

(assert (=> b!7533660 (= res!3019339 (not (is-ElementMatch!19874 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423))))))))

(declare-fun e!4489602 () Bool)

(assert (=> b!7533660 (= e!4489602 e!4489600)))

(declare-fun b!7533661 () Bool)

(assert (=> b!7533661 (= e!4489603 (matchR!9476 (derivativeStep!5668 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423))) (head!15464 (tail!15024 (getSuffix!3560 knownP!30 testedP!423)))) (tail!15024 (tail!15024 (getSuffix!3560 knownP!30 testedP!423)))))))

(declare-fun b!7533662 () Bool)

(declare-fun e!4489605 () Bool)

(declare-fun e!4489601 () Bool)

(assert (=> b!7533662 (= e!4489605 e!4489601)))

(declare-fun res!3019336 () Bool)

(assert (=> b!7533662 (=> res!3019336 e!4489601)))

(declare-fun call!691179 () Bool)

(assert (=> b!7533662 (= res!3019336 call!691179)))

(declare-fun bm!691174 () Bool)

(assert (=> bm!691174 (= call!691179 (isEmpty!41354 (tail!15024 (getSuffix!3560 knownP!30 testedP!423))))))

(declare-fun b!7533663 () Bool)

(assert (=> b!7533663 (= e!4489600 e!4489605)))

(declare-fun res!3019340 () Bool)

(assert (=> b!7533663 (=> (not res!3019340) (not e!4489605))))

(assert (=> b!7533663 (= res!3019340 (not lt!2641539))))

(declare-fun b!7533664 () Bool)

(declare-fun res!3019341 () Bool)

(assert (=> b!7533664 (=> res!3019341 e!4489600)))

(declare-fun e!4489599 () Bool)

(assert (=> b!7533664 (= res!3019341 e!4489599)))

(declare-fun res!3019337 () Bool)

(assert (=> b!7533664 (=> (not res!3019337) (not e!4489599))))

(assert (=> b!7533664 (= res!3019337 lt!2641539)))

(declare-fun b!7533665 () Bool)

(declare-fun res!3019338 () Bool)

(assert (=> b!7533665 (=> (not res!3019338) (not e!4489599))))

(assert (=> b!7533665 (= res!3019338 (isEmpty!41354 (tail!15024 (tail!15024 (getSuffix!3560 knownP!30 testedP!423)))))))

(declare-fun b!7533666 () Bool)

(assert (=> b!7533666 (= e!4489603 (nullable!8662 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423)))))))

(declare-fun b!7533667 () Bool)

(assert (=> b!7533667 (= e!4489599 (= (head!15464 (tail!15024 (getSuffix!3560 knownP!30 testedP!423))) (c!1391183 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423))))))))

(declare-fun b!7533668 () Bool)

(assert (=> b!7533668 (= e!4489604 (= lt!2641539 call!691179))))

(declare-fun b!7533669 () Bool)

(declare-fun res!3019335 () Bool)

(assert (=> b!7533669 (=> (not res!3019335) (not e!4489599))))

(assert (=> b!7533669 (= res!3019335 (not call!691179))))

(declare-fun b!7533670 () Bool)

(declare-fun res!3019342 () Bool)

(assert (=> b!7533670 (=> res!3019342 e!4489601)))

(assert (=> b!7533670 (= res!3019342 (not (isEmpty!41354 (tail!15024 (tail!15024 (getSuffix!3560 knownP!30 testedP!423))))))))

(declare-fun b!7533671 () Bool)

(assert (=> b!7533671 (= e!4489604 e!4489602)))

(declare-fun c!1391258 () Bool)

(assert (=> b!7533671 (= c!1391258 (is-EmptyLang!19874 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423)))))))

(declare-fun b!7533672 () Bool)

(assert (=> b!7533672 (= e!4489602 (not lt!2641539))))

(declare-fun b!7533673 () Bool)

(assert (=> b!7533673 (= e!4489601 (not (= (head!15464 (tail!15024 (getSuffix!3560 knownP!30 testedP!423))) (c!1391183 (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423)))))))))

(assert (= (and d!2310101 c!1391259) b!7533666))

(assert (= (and d!2310101 (not c!1391259)) b!7533661))

(assert (= (and d!2310101 c!1391260) b!7533668))

(assert (= (and d!2310101 (not c!1391260)) b!7533671))

(assert (= (and b!7533671 c!1391258) b!7533672))

(assert (= (and b!7533671 (not c!1391258)) b!7533660))

(assert (= (and b!7533660 (not res!3019339)) b!7533664))

(assert (= (and b!7533664 res!3019337) b!7533669))

(assert (= (and b!7533669 res!3019335) b!7533665))

(assert (= (and b!7533665 res!3019338) b!7533667))

(assert (= (and b!7533664 (not res!3019341)) b!7533663))

(assert (= (and b!7533663 res!3019340) b!7533662))

(assert (= (and b!7533662 (not res!3019336)) b!7533670))

(assert (= (and b!7533670 (not res!3019342)) b!7533673))

(assert (= (or b!7533668 b!7533662 b!7533669) bm!691174))

(assert (=> b!7533673 m!8105500))

(declare-fun m!8105676 () Bool)

(assert (=> b!7533673 m!8105676))

(assert (=> b!7533661 m!8105500))

(assert (=> b!7533661 m!8105676))

(assert (=> b!7533661 m!8105498))

(assert (=> b!7533661 m!8105676))

(declare-fun m!8105678 () Bool)

(assert (=> b!7533661 m!8105678))

(assert (=> b!7533661 m!8105500))

(declare-fun m!8105680 () Bool)

(assert (=> b!7533661 m!8105680))

(assert (=> b!7533661 m!8105678))

(assert (=> b!7533661 m!8105680))

(declare-fun m!8105682 () Bool)

(assert (=> b!7533661 m!8105682))

(assert (=> b!7533665 m!8105500))

(assert (=> b!7533665 m!8105680))

(assert (=> b!7533665 m!8105680))

(declare-fun m!8105684 () Bool)

(assert (=> b!7533665 m!8105684))

(assert (=> b!7533667 m!8105500))

(assert (=> b!7533667 m!8105676))

(assert (=> b!7533666 m!8105498))

(declare-fun m!8105686 () Bool)

(assert (=> b!7533666 m!8105686))

(assert (=> bm!691174 m!8105500))

(assert (=> bm!691174 m!8105504))

(assert (=> d!2310101 m!8105500))

(assert (=> d!2310101 m!8105504))

(assert (=> d!2310101 m!8105498))

(declare-fun m!8105688 () Bool)

(assert (=> d!2310101 m!8105688))

(assert (=> b!7533670 m!8105500))

(assert (=> b!7533670 m!8105680))

(assert (=> b!7533670 m!8105680))

(assert (=> b!7533670 m!8105684))

(assert (=> b!7533312 d!2310101))

(declare-fun call!691188 () Regex!19874)

(declare-fun b!7533694 () Bool)

(declare-fun e!4489618 () Regex!19874)

(declare-fun call!691190 () Regex!19874)

(assert (=> b!7533694 (= e!4489618 (Union!19874 (Concat!28719 call!691190 (regTwo!40260 r!24333)) call!691188))))

(declare-fun b!7533695 () Bool)

(declare-fun e!4489619 () Regex!19874)

(assert (=> b!7533695 (= e!4489619 EmptyLang!19874)))

(declare-fun bm!691183 () Bool)

(declare-fun c!1391274 () Bool)

(assert (=> bm!691183 (= call!691188 (derivativeStep!5668 (ite c!1391274 (regOne!40261 r!24333) (regTwo!40260 r!24333)) (head!15464 (getSuffix!3560 knownP!30 testedP!423))))))

(declare-fun b!7533696 () Bool)

(declare-fun c!1391275 () Bool)

(assert (=> b!7533696 (= c!1391275 (nullable!8662 (regOne!40260 r!24333)))))

(declare-fun e!4489616 () Regex!19874)

(assert (=> b!7533696 (= e!4489616 e!4489618)))

(declare-fun b!7533698 () Bool)

(declare-fun call!691189 () Regex!19874)

(assert (=> b!7533698 (= e!4489616 (Concat!28719 call!691189 r!24333))))

(declare-fun b!7533699 () Bool)

(declare-fun e!4489617 () Regex!19874)

(assert (=> b!7533699 (= e!4489617 e!4489616)))

(declare-fun c!1391273 () Bool)

(assert (=> b!7533699 (= c!1391273 (is-Star!19874 r!24333))))

(declare-fun bm!691184 () Bool)

(declare-fun call!691191 () Regex!19874)

(assert (=> bm!691184 (= call!691189 call!691191)))

(declare-fun bm!691185 () Bool)

(assert (=> bm!691185 (= call!691190 call!691189)))

(declare-fun b!7533700 () Bool)

(assert (=> b!7533700 (= e!4489618 (Union!19874 (Concat!28719 call!691190 (regTwo!40260 r!24333)) EmptyLang!19874))))

(declare-fun e!4489620 () Regex!19874)

(declare-fun b!7533697 () Bool)

(assert (=> b!7533697 (= e!4489620 (ite (= (head!15464 (getSuffix!3560 knownP!30 testedP!423)) (c!1391183 r!24333)) EmptyExpr!19874 EmptyLang!19874))))

(declare-fun d!2310103 () Bool)

(declare-fun lt!2641542 () Regex!19874)

(assert (=> d!2310103 (validRegex!10302 lt!2641542)))

(assert (=> d!2310103 (= lt!2641542 e!4489619)))

(declare-fun c!1391271 () Bool)

(assert (=> d!2310103 (= c!1391271 (or (is-EmptyExpr!19874 r!24333) (is-EmptyLang!19874 r!24333)))))

(assert (=> d!2310103 (validRegex!10302 r!24333)))

(assert (=> d!2310103 (= (derivativeStep!5668 r!24333 (head!15464 (getSuffix!3560 knownP!30 testedP!423))) lt!2641542)))

(declare-fun bm!691186 () Bool)

(assert (=> bm!691186 (= call!691191 (derivativeStep!5668 (ite c!1391274 (regTwo!40261 r!24333) (ite c!1391273 (reg!20203 r!24333) (regOne!40260 r!24333))) (head!15464 (getSuffix!3560 knownP!30 testedP!423))))))

(declare-fun b!7533701 () Bool)

(assert (=> b!7533701 (= e!4489619 e!4489620)))

(declare-fun c!1391272 () Bool)

(assert (=> b!7533701 (= c!1391272 (is-ElementMatch!19874 r!24333))))

(declare-fun b!7533702 () Bool)

(assert (=> b!7533702 (= c!1391274 (is-Union!19874 r!24333))))

(assert (=> b!7533702 (= e!4489620 e!4489617)))

(declare-fun b!7533703 () Bool)

(assert (=> b!7533703 (= e!4489617 (Union!19874 call!691188 call!691191))))

(assert (= (and d!2310103 c!1391271) b!7533695))

(assert (= (and d!2310103 (not c!1391271)) b!7533701))

(assert (= (and b!7533701 c!1391272) b!7533697))

(assert (= (and b!7533701 (not c!1391272)) b!7533702))

(assert (= (and b!7533702 c!1391274) b!7533703))

(assert (= (and b!7533702 (not c!1391274)) b!7533699))

(assert (= (and b!7533699 c!1391273) b!7533698))

(assert (= (and b!7533699 (not c!1391273)) b!7533696))

(assert (= (and b!7533696 c!1391275) b!7533694))

(assert (= (and b!7533696 (not c!1391275)) b!7533700))

(assert (= (or b!7533694 b!7533700) bm!691185))

(assert (= (or b!7533698 bm!691185) bm!691184))

(assert (= (or b!7533703 bm!691184) bm!691186))

(assert (= (or b!7533703 b!7533694) bm!691183))

(assert (=> bm!691183 m!8105496))

(declare-fun m!8105690 () Bool)

(assert (=> bm!691183 m!8105690))

(declare-fun m!8105692 () Bool)

(assert (=> b!7533696 m!8105692))

(declare-fun m!8105694 () Bool)

(assert (=> d!2310103 m!8105694))

(assert (=> d!2310103 m!8105428))

(assert (=> bm!691186 m!8105496))

(declare-fun m!8105696 () Bool)

(assert (=> bm!691186 m!8105696))

(assert (=> b!7533312 d!2310103))

(assert (=> b!7533312 d!2310091))

(declare-fun d!2310105 () Bool)

(assert (=> d!2310105 (= (tail!15024 (getSuffix!3560 knownP!30 testedP!423)) (t!387464 (getSuffix!3560 knownP!30 testedP!423)))))

(assert (=> b!7533312 d!2310105))

(declare-fun d!2310107 () Bool)

(declare-fun e!4489626 () Bool)

(assert (=> d!2310107 e!4489626))

(declare-fun c!1391278 () Bool)

(assert (=> d!2310107 (= c!1391278 (is-EmptyExpr!19874 (derivativeStep!5668 baseR!101 (head!15464 knownP!30))))))

(declare-fun lt!2641543 () Bool)

(declare-fun e!4489625 () Bool)

(assert (=> d!2310107 (= lt!2641543 e!4489625)))

(declare-fun c!1391277 () Bool)

(assert (=> d!2310107 (= c!1391277 (isEmpty!41354 (tail!15024 knownP!30)))))

(assert (=> d!2310107 (validRegex!10302 (derivativeStep!5668 baseR!101 (head!15464 knownP!30)))))

(assert (=> d!2310107 (= (matchR!9476 (derivativeStep!5668 baseR!101 (head!15464 knownP!30)) (tail!15024 knownP!30)) lt!2641543)))

(declare-fun b!7533704 () Bool)

(declare-fun res!3019347 () Bool)

(declare-fun e!4489622 () Bool)

(assert (=> b!7533704 (=> res!3019347 e!4489622)))

(assert (=> b!7533704 (= res!3019347 (not (is-ElementMatch!19874 (derivativeStep!5668 baseR!101 (head!15464 knownP!30)))))))

(declare-fun e!4489624 () Bool)

(assert (=> b!7533704 (= e!4489624 e!4489622)))

(declare-fun b!7533705 () Bool)

(assert (=> b!7533705 (= e!4489625 (matchR!9476 (derivativeStep!5668 (derivativeStep!5668 baseR!101 (head!15464 knownP!30)) (head!15464 (tail!15024 knownP!30))) (tail!15024 (tail!15024 knownP!30))))))

(declare-fun b!7533706 () Bool)

(declare-fun e!4489627 () Bool)

(declare-fun e!4489623 () Bool)

(assert (=> b!7533706 (= e!4489627 e!4489623)))

(declare-fun res!3019344 () Bool)

(assert (=> b!7533706 (=> res!3019344 e!4489623)))

(declare-fun call!691192 () Bool)

(assert (=> b!7533706 (= res!3019344 call!691192)))

(declare-fun bm!691187 () Bool)

(assert (=> bm!691187 (= call!691192 (isEmpty!41354 (tail!15024 knownP!30)))))

(declare-fun b!7533707 () Bool)

(assert (=> b!7533707 (= e!4489622 e!4489627)))

(declare-fun res!3019348 () Bool)

(assert (=> b!7533707 (=> (not res!3019348) (not e!4489627))))

(assert (=> b!7533707 (= res!3019348 (not lt!2641543))))

(declare-fun b!7533708 () Bool)

(declare-fun res!3019349 () Bool)

(assert (=> b!7533708 (=> res!3019349 e!4489622)))

(declare-fun e!4489621 () Bool)

(assert (=> b!7533708 (= res!3019349 e!4489621)))

(declare-fun res!3019345 () Bool)

(assert (=> b!7533708 (=> (not res!3019345) (not e!4489621))))

(assert (=> b!7533708 (= res!3019345 lt!2641543)))

(declare-fun b!7533709 () Bool)

(declare-fun res!3019346 () Bool)

(assert (=> b!7533709 (=> (not res!3019346) (not e!4489621))))

(assert (=> b!7533709 (= res!3019346 (isEmpty!41354 (tail!15024 (tail!15024 knownP!30))))))

(declare-fun b!7533710 () Bool)

(assert (=> b!7533710 (= e!4489625 (nullable!8662 (derivativeStep!5668 baseR!101 (head!15464 knownP!30))))))

(declare-fun b!7533711 () Bool)

(assert (=> b!7533711 (= e!4489621 (= (head!15464 (tail!15024 knownP!30)) (c!1391183 (derivativeStep!5668 baseR!101 (head!15464 knownP!30)))))))

(declare-fun b!7533712 () Bool)

(assert (=> b!7533712 (= e!4489626 (= lt!2641543 call!691192))))

(declare-fun b!7533713 () Bool)

(declare-fun res!3019343 () Bool)

(assert (=> b!7533713 (=> (not res!3019343) (not e!4489621))))

(assert (=> b!7533713 (= res!3019343 (not call!691192))))

(declare-fun b!7533714 () Bool)

(declare-fun res!3019350 () Bool)

(assert (=> b!7533714 (=> res!3019350 e!4489623)))

(assert (=> b!7533714 (= res!3019350 (not (isEmpty!41354 (tail!15024 (tail!15024 knownP!30)))))))

(declare-fun b!7533715 () Bool)

(assert (=> b!7533715 (= e!4489626 e!4489624)))

(declare-fun c!1391276 () Bool)

(assert (=> b!7533715 (= c!1391276 (is-EmptyLang!19874 (derivativeStep!5668 baseR!101 (head!15464 knownP!30))))))

(declare-fun b!7533716 () Bool)

(assert (=> b!7533716 (= e!4489624 (not lt!2641543))))

(declare-fun b!7533717 () Bool)

(assert (=> b!7533717 (= e!4489623 (not (= (head!15464 (tail!15024 knownP!30)) (c!1391183 (derivativeStep!5668 baseR!101 (head!15464 knownP!30))))))))

(assert (= (and d!2310107 c!1391277) b!7533710))

(assert (= (and d!2310107 (not c!1391277)) b!7533705))

(assert (= (and d!2310107 c!1391278) b!7533712))

(assert (= (and d!2310107 (not c!1391278)) b!7533715))

(assert (= (and b!7533715 c!1391276) b!7533716))

(assert (= (and b!7533715 (not c!1391276)) b!7533704))

(assert (= (and b!7533704 (not res!3019347)) b!7533708))

(assert (= (and b!7533708 res!3019345) b!7533713))

(assert (= (and b!7533713 res!3019343) b!7533709))

(assert (= (and b!7533709 res!3019346) b!7533711))

(assert (= (and b!7533708 (not res!3019349)) b!7533707))

(assert (= (and b!7533707 res!3019348) b!7533706))

(assert (= (and b!7533706 (not res!3019344)) b!7533714))

(assert (= (and b!7533714 (not res!3019350)) b!7533717))

(assert (= (or b!7533712 b!7533706 b!7533713) bm!691187))

(assert (=> b!7533717 m!8105518))

(assert (=> b!7533717 m!8105652))

(assert (=> b!7533705 m!8105518))

(assert (=> b!7533705 m!8105652))

(assert (=> b!7533705 m!8105538))

(assert (=> b!7533705 m!8105652))

(declare-fun m!8105698 () Bool)

(assert (=> b!7533705 m!8105698))

(assert (=> b!7533705 m!8105518))

(assert (=> b!7533705 m!8105648))

(assert (=> b!7533705 m!8105698))

(assert (=> b!7533705 m!8105648))

(declare-fun m!8105700 () Bool)

(assert (=> b!7533705 m!8105700))

(assert (=> b!7533709 m!8105518))

(assert (=> b!7533709 m!8105648))

(assert (=> b!7533709 m!8105648))

(declare-fun m!8105702 () Bool)

(assert (=> b!7533709 m!8105702))

(assert (=> b!7533711 m!8105518))

(assert (=> b!7533711 m!8105652))

(assert (=> b!7533710 m!8105538))

(declare-fun m!8105704 () Bool)

(assert (=> b!7533710 m!8105704))

(assert (=> bm!691187 m!8105518))

(assert (=> bm!691187 m!8105542))

(assert (=> d!2310107 m!8105518))

(assert (=> d!2310107 m!8105542))

(assert (=> d!2310107 m!8105538))

(declare-fun m!8105706 () Bool)

(assert (=> d!2310107 m!8105706))

(assert (=> b!7533714 m!8105518))

(assert (=> b!7533714 m!8105648))

(assert (=> b!7533714 m!8105648))

(assert (=> b!7533714 m!8105702))

(assert (=> b!7533378 d!2310107))

(declare-fun e!4489630 () Regex!19874)

(declare-fun call!691195 () Regex!19874)

(declare-fun call!691193 () Regex!19874)

(declare-fun b!7533718 () Bool)

(assert (=> b!7533718 (= e!4489630 (Union!19874 (Concat!28719 call!691195 (regTwo!40260 baseR!101)) call!691193))))

(declare-fun b!7533719 () Bool)

(declare-fun e!4489631 () Regex!19874)

(assert (=> b!7533719 (= e!4489631 EmptyLang!19874)))

(declare-fun bm!691188 () Bool)

(declare-fun c!1391282 () Bool)

(assert (=> bm!691188 (= call!691193 (derivativeStep!5668 (ite c!1391282 (regOne!40261 baseR!101) (regTwo!40260 baseR!101)) (head!15464 knownP!30)))))

(declare-fun b!7533720 () Bool)

(declare-fun c!1391283 () Bool)

(assert (=> b!7533720 (= c!1391283 (nullable!8662 (regOne!40260 baseR!101)))))

(declare-fun e!4489628 () Regex!19874)

(assert (=> b!7533720 (= e!4489628 e!4489630)))

(declare-fun b!7533722 () Bool)

(declare-fun call!691194 () Regex!19874)

(assert (=> b!7533722 (= e!4489628 (Concat!28719 call!691194 baseR!101))))

(declare-fun b!7533723 () Bool)

(declare-fun e!4489629 () Regex!19874)

(assert (=> b!7533723 (= e!4489629 e!4489628)))

(declare-fun c!1391281 () Bool)

(assert (=> b!7533723 (= c!1391281 (is-Star!19874 baseR!101))))

(declare-fun bm!691189 () Bool)

(declare-fun call!691196 () Regex!19874)

(assert (=> bm!691189 (= call!691194 call!691196)))

(declare-fun bm!691190 () Bool)

(assert (=> bm!691190 (= call!691195 call!691194)))

(declare-fun b!7533724 () Bool)

(assert (=> b!7533724 (= e!4489630 (Union!19874 (Concat!28719 call!691195 (regTwo!40260 baseR!101)) EmptyLang!19874))))

(declare-fun b!7533721 () Bool)

(declare-fun e!4489632 () Regex!19874)

(assert (=> b!7533721 (= e!4489632 (ite (= (head!15464 knownP!30) (c!1391183 baseR!101)) EmptyExpr!19874 EmptyLang!19874))))

(declare-fun d!2310109 () Bool)

(declare-fun lt!2641544 () Regex!19874)

(assert (=> d!2310109 (validRegex!10302 lt!2641544)))

(assert (=> d!2310109 (= lt!2641544 e!4489631)))

(declare-fun c!1391279 () Bool)

(assert (=> d!2310109 (= c!1391279 (or (is-EmptyExpr!19874 baseR!101) (is-EmptyLang!19874 baseR!101)))))

(assert (=> d!2310109 (validRegex!10302 baseR!101)))

(assert (=> d!2310109 (= (derivativeStep!5668 baseR!101 (head!15464 knownP!30)) lt!2641544)))

(declare-fun bm!691191 () Bool)

(assert (=> bm!691191 (= call!691196 (derivativeStep!5668 (ite c!1391282 (regTwo!40261 baseR!101) (ite c!1391281 (reg!20203 baseR!101) (regOne!40260 baseR!101))) (head!15464 knownP!30)))))

(declare-fun b!7533725 () Bool)

(assert (=> b!7533725 (= e!4489631 e!4489632)))

(declare-fun c!1391280 () Bool)

(assert (=> b!7533725 (= c!1391280 (is-ElementMatch!19874 baseR!101))))

(declare-fun b!7533726 () Bool)

(assert (=> b!7533726 (= c!1391282 (is-Union!19874 baseR!101))))

(assert (=> b!7533726 (= e!4489632 e!4489629)))

(declare-fun b!7533727 () Bool)

(assert (=> b!7533727 (= e!4489629 (Union!19874 call!691193 call!691196))))

(assert (= (and d!2310109 c!1391279) b!7533719))

(assert (= (and d!2310109 (not c!1391279)) b!7533725))

(assert (= (and b!7533725 c!1391280) b!7533721))

(assert (= (and b!7533725 (not c!1391280)) b!7533726))

(assert (= (and b!7533726 c!1391282) b!7533727))

(assert (= (and b!7533726 (not c!1391282)) b!7533723))

(assert (= (and b!7533723 c!1391281) b!7533722))

(assert (= (and b!7533723 (not c!1391281)) b!7533720))

(assert (= (and b!7533720 c!1391283) b!7533718))

(assert (= (and b!7533720 (not c!1391283)) b!7533724))

(assert (= (or b!7533718 b!7533724) bm!691190))

(assert (= (or b!7533722 bm!691190) bm!691189))

(assert (= (or b!7533727 bm!691189) bm!691191))

(assert (= (or b!7533727 b!7533718) bm!691188))

(assert (=> bm!691188 m!8105524))

(declare-fun m!8105708 () Bool)

(assert (=> bm!691188 m!8105708))

(declare-fun m!8105710 () Bool)

(assert (=> b!7533720 m!8105710))

(declare-fun m!8105712 () Bool)

(assert (=> d!2310109 m!8105712))

(assert (=> d!2310109 m!8105434))

(assert (=> bm!691191 m!8105524))

(declare-fun m!8105714 () Bool)

(assert (=> bm!691191 m!8105714))

(assert (=> b!7533378 d!2310109))

(assert (=> b!7533378 d!2310085))

(assert (=> b!7533378 d!2310083))

(declare-fun c!1391285 () Bool)

(declare-fun bm!691192 () Bool)

(declare-fun call!691199 () Bool)

(declare-fun c!1391284 () Bool)

(assert (=> bm!691192 (= call!691199 (validRegex!10302 (ite c!1391285 (reg!20203 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))) (ite c!1391284 (regTwo!40261 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))) (regTwo!40260 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101)))))))))

(declare-fun b!7533728 () Bool)

(declare-fun e!4489634 () Bool)

(declare-fun e!4489635 () Bool)

(assert (=> b!7533728 (= e!4489634 e!4489635)))

(assert (=> b!7533728 (= c!1391284 (is-Union!19874 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))))))

(declare-fun b!7533729 () Bool)

(declare-fun e!4489633 () Bool)

(declare-fun call!691198 () Bool)

(assert (=> b!7533729 (= e!4489633 call!691198)))

(declare-fun b!7533730 () Bool)

(declare-fun e!4489638 () Bool)

(assert (=> b!7533730 (= e!4489638 e!4489633)))

(declare-fun res!3019354 () Bool)

(assert (=> b!7533730 (=> (not res!3019354) (not e!4489633))))

(declare-fun call!691197 () Bool)

(assert (=> b!7533730 (= res!3019354 call!691197)))

(declare-fun b!7533731 () Bool)

(declare-fun e!4489636 () Bool)

(assert (=> b!7533731 (= e!4489636 call!691198)))

(declare-fun bm!691193 () Bool)

(assert (=> bm!691193 (= call!691197 (validRegex!10302 (ite c!1391284 (regOne!40261 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))) (regOne!40260 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))))))))

(declare-fun d!2310111 () Bool)

(declare-fun res!3019353 () Bool)

(declare-fun e!4489639 () Bool)

(assert (=> d!2310111 (=> res!3019353 e!4489639)))

(assert (=> d!2310111 (= res!3019353 (is-ElementMatch!19874 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))))))

(assert (=> d!2310111 (= (validRegex!10302 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))) e!4489639)))

(declare-fun b!7533732 () Bool)

(declare-fun e!4489637 () Bool)

(assert (=> b!7533732 (= e!4489634 e!4489637)))

(declare-fun res!3019351 () Bool)

(assert (=> b!7533732 (= res!3019351 (not (nullable!8662 (reg!20203 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))))))))

(assert (=> b!7533732 (=> (not res!3019351) (not e!4489637))))

(declare-fun b!7533733 () Bool)

(assert (=> b!7533733 (= e!4489637 call!691199)))

(declare-fun b!7533734 () Bool)

(declare-fun res!3019352 () Bool)

(assert (=> b!7533734 (=> (not res!3019352) (not e!4489636))))

(assert (=> b!7533734 (= res!3019352 call!691197)))

(assert (=> b!7533734 (= e!4489635 e!4489636)))

(declare-fun b!7533735 () Bool)

(declare-fun res!3019355 () Bool)

(assert (=> b!7533735 (=> res!3019355 e!4489638)))

(assert (=> b!7533735 (= res!3019355 (not (is-Concat!28719 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101)))))))

(assert (=> b!7533735 (= e!4489635 e!4489638)))

(declare-fun bm!691194 () Bool)

(assert (=> bm!691194 (= call!691198 call!691199)))

(declare-fun b!7533736 () Bool)

(assert (=> b!7533736 (= e!4489639 e!4489634)))

(assert (=> b!7533736 (= c!1391285 (is-Star!19874 (ite c!1391228 (regOne!40261 baseR!101) (regOne!40260 baseR!101))))))

(assert (= (and d!2310111 (not res!3019353)) b!7533736))

(assert (= (and b!7533736 c!1391285) b!7533732))

(assert (= (and b!7533736 (not c!1391285)) b!7533728))

(assert (= (and b!7533732 res!3019351) b!7533733))

(assert (= (and b!7533728 c!1391284) b!7533734))

(assert (= (and b!7533728 (not c!1391284)) b!7533735))

(assert (= (and b!7533734 res!3019352) b!7533731))

(assert (= (and b!7533735 (not res!3019355)) b!7533730))

(assert (= (and b!7533730 res!3019354) b!7533729))

(assert (= (or b!7533734 b!7533730) bm!691193))

(assert (= (or b!7533731 b!7533729) bm!691194))

(assert (= (or b!7533733 bm!691194) bm!691192))

(declare-fun m!8105716 () Bool)

(assert (=> bm!691192 m!8105716))

(declare-fun m!8105718 () Bool)

(assert (=> bm!691193 m!8105718))

(declare-fun m!8105720 () Bool)

(assert (=> b!7533732 m!8105720))

(assert (=> bm!691164 d!2310111))

(assert (=> d!2310041 d!2310093))

(assert (=> d!2310041 d!2310045))

(declare-fun c!1391286 () Bool)

(declare-fun c!1391287 () Bool)

(declare-fun bm!691195 () Bool)

(declare-fun call!691202 () Bool)

(assert (=> bm!691195 (= call!691202 (validRegex!10302 (ite c!1391287 (reg!20203 lt!2641509) (ite c!1391286 (regTwo!40261 lt!2641509) (regTwo!40260 lt!2641509)))))))

(declare-fun b!7533737 () Bool)

(declare-fun e!4489641 () Bool)

(declare-fun e!4489642 () Bool)

(assert (=> b!7533737 (= e!4489641 e!4489642)))

(assert (=> b!7533737 (= c!1391286 (is-Union!19874 lt!2641509))))

(declare-fun b!7533738 () Bool)

(declare-fun e!4489640 () Bool)

(declare-fun call!691201 () Bool)

(assert (=> b!7533738 (= e!4489640 call!691201)))

(declare-fun b!7533739 () Bool)

(declare-fun e!4489645 () Bool)

(assert (=> b!7533739 (= e!4489645 e!4489640)))

(declare-fun res!3019359 () Bool)

(assert (=> b!7533739 (=> (not res!3019359) (not e!4489640))))

(declare-fun call!691200 () Bool)

(assert (=> b!7533739 (= res!3019359 call!691200)))

(declare-fun b!7533740 () Bool)

(declare-fun e!4489643 () Bool)

(assert (=> b!7533740 (= e!4489643 call!691201)))

(declare-fun bm!691196 () Bool)

(assert (=> bm!691196 (= call!691200 (validRegex!10302 (ite c!1391286 (regOne!40261 lt!2641509) (regOne!40260 lt!2641509))))))

(declare-fun d!2310113 () Bool)

(declare-fun res!3019358 () Bool)

(declare-fun e!4489646 () Bool)

(assert (=> d!2310113 (=> res!3019358 e!4489646)))

(assert (=> d!2310113 (= res!3019358 (is-ElementMatch!19874 lt!2641509))))

(assert (=> d!2310113 (= (validRegex!10302 lt!2641509) e!4489646)))

(declare-fun b!7533741 () Bool)

(declare-fun e!4489644 () Bool)

(assert (=> b!7533741 (= e!4489641 e!4489644)))

(declare-fun res!3019356 () Bool)

(assert (=> b!7533741 (= res!3019356 (not (nullable!8662 (reg!20203 lt!2641509))))))

(assert (=> b!7533741 (=> (not res!3019356) (not e!4489644))))

(declare-fun b!7533742 () Bool)

(assert (=> b!7533742 (= e!4489644 call!691202)))

(declare-fun b!7533743 () Bool)

(declare-fun res!3019357 () Bool)

(assert (=> b!7533743 (=> (not res!3019357) (not e!4489643))))

(assert (=> b!7533743 (= res!3019357 call!691200)))

(assert (=> b!7533743 (= e!4489642 e!4489643)))

(declare-fun b!7533744 () Bool)

(declare-fun res!3019360 () Bool)

(assert (=> b!7533744 (=> res!3019360 e!4489645)))

(assert (=> b!7533744 (= res!3019360 (not (is-Concat!28719 lt!2641509)))))

(assert (=> b!7533744 (= e!4489642 e!4489645)))

(declare-fun bm!691197 () Bool)

(assert (=> bm!691197 (= call!691201 call!691202)))

(declare-fun b!7533745 () Bool)

(assert (=> b!7533745 (= e!4489646 e!4489641)))

(assert (=> b!7533745 (= c!1391287 (is-Star!19874 lt!2641509))))

(assert (= (and d!2310113 (not res!3019358)) b!7533745))

(assert (= (and b!7533745 c!1391287) b!7533741))

(assert (= (and b!7533745 (not c!1391287)) b!7533737))

(assert (= (and b!7533741 res!3019356) b!7533742))

(assert (= (and b!7533737 c!1391286) b!7533743))

(assert (= (and b!7533737 (not c!1391286)) b!7533744))

(assert (= (and b!7533743 res!3019357) b!7533740))

(assert (= (and b!7533744 (not res!3019360)) b!7533739))

(assert (= (and b!7533739 res!3019359) b!7533738))

(assert (= (or b!7533743 b!7533739) bm!691196))

(assert (= (or b!7533740 b!7533738) bm!691197))

(assert (= (or b!7533742 bm!691197) bm!691195))

(declare-fun m!8105722 () Bool)

(assert (=> bm!691195 m!8105722))

(declare-fun m!8105724 () Bool)

(assert (=> bm!691196 m!8105724))

(declare-fun m!8105726 () Bool)

(assert (=> b!7533741 m!8105726))

(assert (=> d!2310043 d!2310113))

(assert (=> d!2310043 d!2310045))

(declare-fun b!7533760 () Bool)

(declare-fun e!4489664 () Bool)

(declare-fun e!4489663 () Bool)

(assert (=> b!7533760 (= e!4489664 e!4489663)))

(declare-fun res!3019373 () Bool)

(declare-fun call!691208 () Bool)

(assert (=> b!7533760 (= res!3019373 call!691208)))

(assert (=> b!7533760 (=> res!3019373 e!4489663)))

(declare-fun bm!691202 () Bool)

(declare-fun call!691207 () Bool)

(declare-fun c!1391290 () Bool)

(assert (=> bm!691202 (= call!691207 (lostCause!1666 (ite c!1391290 (regOne!40261 r!24333) (regTwo!40260 r!24333))))))

(declare-fun b!7533761 () Bool)

(declare-fun e!4489661 () Bool)

(declare-fun e!4489662 () Bool)

(assert (=> b!7533761 (= e!4489661 e!4489662)))

(declare-fun res!3019374 () Bool)

(assert (=> b!7533761 (=> (not res!3019374) (not e!4489662))))

(assert (=> b!7533761 (= res!3019374 (and (not (is-ElementMatch!19874 r!24333)) (not (is-Star!19874 r!24333))))))

(declare-fun b!7533762 () Bool)

(declare-fun e!4489660 () Bool)

(assert (=> b!7533762 (= e!4489660 e!4489661)))

(declare-fun res!3019371 () Bool)

(assert (=> b!7533762 (=> res!3019371 e!4489661)))

(assert (=> b!7533762 (= res!3019371 (is-EmptyLang!19874 r!24333))))

(declare-fun b!7533763 () Bool)

(assert (=> b!7533763 (= e!4489662 e!4489664)))

(assert (=> b!7533763 (= c!1391290 (is-Union!19874 r!24333))))

(declare-fun b!7533764 () Bool)

(declare-fun e!4489659 () Bool)

(assert (=> b!7533764 (= e!4489659 call!691208)))

(declare-fun b!7533765 () Bool)

(assert (=> b!7533765 (= e!4489663 call!691207)))

(declare-fun d!2310115 () Bool)

(declare-fun lt!2641547 () Bool)

(declare-datatypes ((Option!17257 0))(
  ( (None!17256) (Some!17256 (v!54391 List!72757)) )
))
(declare-fun isEmpty!41356 (Option!17257) Bool)

(declare-fun getLanguageWitness!1100 (Regex!19874) Option!17257)

(assert (=> d!2310115 (= lt!2641547 (isEmpty!41356 (getLanguageWitness!1100 r!24333)))))

(assert (=> d!2310115 (= lt!2641547 e!4489660)))

(declare-fun res!3019375 () Bool)

(assert (=> d!2310115 (=> (not res!3019375) (not e!4489660))))

(assert (=> d!2310115 (= res!3019375 (not (is-EmptyExpr!19874 r!24333)))))

(assert (=> d!2310115 (= (lostCauseFct!418 r!24333) lt!2641547)))

(declare-fun bm!691203 () Bool)

(assert (=> bm!691203 (= call!691208 (lostCause!1666 (ite c!1391290 (regTwo!40261 r!24333) (regOne!40260 r!24333))))))

(declare-fun b!7533766 () Bool)

(assert (=> b!7533766 (= e!4489664 e!4489659)))

(declare-fun res!3019372 () Bool)

(assert (=> b!7533766 (= res!3019372 call!691207)))

(assert (=> b!7533766 (=> (not res!3019372) (not e!4489659))))

(assert (= (and d!2310115 res!3019375) b!7533762))

(assert (= (and b!7533762 (not res!3019371)) b!7533761))

(assert (= (and b!7533761 res!3019374) b!7533763))

(assert (= (and b!7533763 c!1391290) b!7533766))

(assert (= (and b!7533763 (not c!1391290)) b!7533760))

(assert (= (and b!7533766 res!3019372) b!7533764))

(assert (= (and b!7533760 (not res!3019373)) b!7533765))

(assert (= (or b!7533766 b!7533765) bm!691202))

(assert (= (or b!7533764 b!7533760) bm!691203))

(declare-fun m!8105728 () Bool)

(assert (=> bm!691202 m!8105728))

(declare-fun m!8105730 () Bool)

(assert (=> d!2310115 m!8105730))

(assert (=> d!2310115 m!8105730))

(declare-fun m!8105732 () Bool)

(assert (=> d!2310115 m!8105732))

(declare-fun m!8105734 () Bool)

(assert (=> bm!691203 m!8105734))

(assert (=> d!2310021 d!2310115))

(assert (=> b!7533318 d!2310091))

(declare-fun d!2310117 () Bool)

(declare-fun lt!2641548 () List!72757)

(assert (=> d!2310117 (= (++!17391 (t!387464 testedP!423) lt!2641548) (tail!15024 knownP!30))))

(declare-fun e!4489665 () List!72757)

(assert (=> d!2310117 (= lt!2641548 e!4489665)))

(declare-fun c!1391291 () Bool)

(assert (=> d!2310117 (= c!1391291 (is-Cons!72633 (t!387464 testedP!423)))))

(assert (=> d!2310117 (>= (size!42370 (tail!15024 knownP!30)) (size!42370 (t!387464 testedP!423)))))

(assert (=> d!2310117 (= (getSuffix!3560 (tail!15024 knownP!30) (t!387464 testedP!423)) lt!2641548)))

(declare-fun b!7533767 () Bool)

(assert (=> b!7533767 (= e!4489665 (getSuffix!3560 (tail!15024 (tail!15024 knownP!30)) (t!387464 (t!387464 testedP!423))))))

(declare-fun b!7533768 () Bool)

(assert (=> b!7533768 (= e!4489665 (tail!15024 knownP!30))))

(assert (= (and d!2310117 c!1391291) b!7533767))

(assert (= (and d!2310117 (not c!1391291)) b!7533768))

(declare-fun m!8105736 () Bool)

(assert (=> d!2310117 m!8105736))

(assert (=> d!2310117 m!8105518))

(assert (=> d!2310117 m!8105646))

(assert (=> d!2310117 m!8105474))

(assert (=> b!7533767 m!8105518))

(assert (=> b!7533767 m!8105648))

(assert (=> b!7533767 m!8105648))

(declare-fun m!8105738 () Bool)

(assert (=> b!7533767 m!8105738))

(assert (=> b!7533338 d!2310117))

(assert (=> b!7533338 d!2310083))

(assert (=> b!7533384 d!2310085))

(assert (=> b!7533343 d!2310015))

(assert (=> b!7533343 d!2310013))

(declare-fun c!1391293 () Bool)

(declare-fun c!1391292 () Bool)

(declare-fun bm!691204 () Bool)

(declare-fun call!691211 () Bool)

(assert (=> bm!691204 (= call!691211 (validRegex!10302 (ite c!1391293 (reg!20203 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))) (ite c!1391292 (regTwo!40261 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))) (regTwo!40260 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333)))))))))

(declare-fun b!7533769 () Bool)

(declare-fun e!4489667 () Bool)

(declare-fun e!4489668 () Bool)

(assert (=> b!7533769 (= e!4489667 e!4489668)))

(assert (=> b!7533769 (= c!1391292 (is-Union!19874 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))))))

(declare-fun b!7533770 () Bool)

(declare-fun e!4489666 () Bool)

(declare-fun call!691210 () Bool)

(assert (=> b!7533770 (= e!4489666 call!691210)))

(declare-fun b!7533771 () Bool)

(declare-fun e!4489671 () Bool)

(assert (=> b!7533771 (= e!4489671 e!4489666)))

(declare-fun res!3019379 () Bool)

(assert (=> b!7533771 (=> (not res!3019379) (not e!4489666))))

(declare-fun call!691209 () Bool)

(assert (=> b!7533771 (= res!3019379 call!691209)))

(declare-fun b!7533772 () Bool)

(declare-fun e!4489669 () Bool)

(assert (=> b!7533772 (= e!4489669 call!691210)))

(declare-fun bm!691205 () Bool)

(assert (=> bm!691205 (= call!691209 (validRegex!10302 (ite c!1391292 (regOne!40261 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))) (regOne!40260 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))))))))

(declare-fun d!2310119 () Bool)

(declare-fun res!3019378 () Bool)

(declare-fun e!4489672 () Bool)

(assert (=> d!2310119 (=> res!3019378 e!4489672)))

(assert (=> d!2310119 (= res!3019378 (is-ElementMatch!19874 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))))))

(assert (=> d!2310119 (= (validRegex!10302 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))) e!4489672)))

(declare-fun b!7533773 () Bool)

(declare-fun e!4489670 () Bool)

(assert (=> b!7533773 (= e!4489667 e!4489670)))

(declare-fun res!3019376 () Bool)

(assert (=> b!7533773 (= res!3019376 (not (nullable!8662 (reg!20203 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))))))))

(assert (=> b!7533773 (=> (not res!3019376) (not e!4489670))))

(declare-fun b!7533774 () Bool)

(assert (=> b!7533774 (= e!4489670 call!691211)))

(declare-fun b!7533775 () Bool)

(declare-fun res!3019377 () Bool)

(assert (=> b!7533775 (=> (not res!3019377) (not e!4489669))))

(assert (=> b!7533775 (= res!3019377 call!691209)))

(assert (=> b!7533775 (= e!4489668 e!4489669)))

(declare-fun b!7533776 () Bool)

(declare-fun res!3019380 () Bool)

(assert (=> b!7533776 (=> res!3019380 e!4489671)))

(assert (=> b!7533776 (= res!3019380 (not (is-Concat!28719 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333)))))))

(assert (=> b!7533776 (= e!4489668 e!4489671)))

(declare-fun bm!691206 () Bool)

(assert (=> bm!691206 (= call!691210 call!691211)))

(declare-fun b!7533777 () Bool)

(assert (=> b!7533777 (= e!4489672 e!4489667)))

(assert (=> b!7533777 (= c!1391293 (is-Star!19874 (ite c!1391214 (regOne!40261 r!24333) (regOne!40260 r!24333))))))

(assert (= (and d!2310119 (not res!3019378)) b!7533777))

(assert (= (and b!7533777 c!1391293) b!7533773))

(assert (= (and b!7533777 (not c!1391293)) b!7533769))

(assert (= (and b!7533773 res!3019376) b!7533774))

(assert (= (and b!7533769 c!1391292) b!7533775))

(assert (= (and b!7533769 (not c!1391292)) b!7533776))

(assert (= (and b!7533775 res!3019377) b!7533772))

(assert (= (and b!7533776 (not res!3019380)) b!7533771))

(assert (= (and b!7533771 res!3019379) b!7533770))

(assert (= (or b!7533775 b!7533771) bm!691205))

(assert (= (or b!7533772 b!7533770) bm!691206))

(assert (= (or b!7533774 bm!691206) bm!691204))

(declare-fun m!8105740 () Bool)

(assert (=> bm!691204 m!8105740))

(declare-fun m!8105742 () Bool)

(assert (=> bm!691205 m!8105742))

(declare-fun m!8105744 () Bool)

(assert (=> b!7533773 m!8105744))

(assert (=> bm!691158 d!2310119))

(declare-fun d!2310121 () Bool)

(declare-fun e!4489674 () Bool)

(assert (=> d!2310121 e!4489674))

(declare-fun res!3019383 () Bool)

(assert (=> d!2310121 (=> res!3019383 e!4489674)))

(declare-fun lt!2641549 () Bool)

(assert (=> d!2310121 (= res!3019383 (not lt!2641549))))

(declare-fun e!4489675 () Bool)

(assert (=> d!2310121 (= lt!2641549 e!4489675)))

(declare-fun res!3019381 () Bool)

(assert (=> d!2310121 (=> res!3019381 e!4489675)))

(assert (=> d!2310121 (= res!3019381 (is-Nil!72633 (tail!15024 testedP!423)))))

(assert (=> d!2310121 (= (isPrefix!6080 (tail!15024 testedP!423) (tail!15024 input!7874)) lt!2641549)))

(declare-fun b!7533781 () Bool)

(assert (=> b!7533781 (= e!4489674 (>= (size!42370 (tail!15024 input!7874)) (size!42370 (tail!15024 testedP!423))))))

(declare-fun b!7533780 () Bool)

(declare-fun e!4489673 () Bool)

(assert (=> b!7533780 (= e!4489673 (isPrefix!6080 (tail!15024 (tail!15024 testedP!423)) (tail!15024 (tail!15024 input!7874))))))

(declare-fun b!7533779 () Bool)

(declare-fun res!3019382 () Bool)

(assert (=> b!7533779 (=> (not res!3019382) (not e!4489673))))

(assert (=> b!7533779 (= res!3019382 (= (head!15464 (tail!15024 testedP!423)) (head!15464 (tail!15024 input!7874))))))

(declare-fun b!7533778 () Bool)

(assert (=> b!7533778 (= e!4489675 e!4489673)))

(declare-fun res!3019384 () Bool)

(assert (=> b!7533778 (=> (not res!3019384) (not e!4489673))))

(assert (=> b!7533778 (= res!3019384 (not (is-Nil!72633 (tail!15024 input!7874))))))

(assert (= (and d!2310121 (not res!3019381)) b!7533778))

(assert (= (and b!7533778 res!3019384) b!7533779))

(assert (= (and b!7533779 res!3019382) b!7533780))

(assert (= (and d!2310121 (not res!3019383)) b!7533781))

(assert (=> b!7533781 m!8105480))

(assert (=> b!7533781 m!8105632))

(assert (=> b!7533781 m!8105478))

(declare-fun m!8105746 () Bool)

(assert (=> b!7533781 m!8105746))

(assert (=> b!7533780 m!8105478))

(declare-fun m!8105748 () Bool)

(assert (=> b!7533780 m!8105748))

(assert (=> b!7533780 m!8105480))

(assert (=> b!7533780 m!8105634))

(assert (=> b!7533780 m!8105748))

(assert (=> b!7533780 m!8105634))

(declare-fun m!8105750 () Bool)

(assert (=> b!7533780 m!8105750))

(assert (=> b!7533779 m!8105478))

(declare-fun m!8105752 () Bool)

(assert (=> b!7533779 m!8105752))

(assert (=> b!7533779 m!8105480))

(assert (=> b!7533779 m!8105654))

(assert (=> b!7533254 d!2310121))

(declare-fun d!2310123 () Bool)

(assert (=> d!2310123 (= (tail!15024 testedP!423) (t!387464 testedP!423))))

(assert (=> b!7533254 d!2310123))

(assert (=> b!7533254 d!2310075))

(declare-fun d!2310125 () Bool)

(assert (=> d!2310125 (= (nullable!8662 r!24333) (nullableFct!3467 r!24333))))

(declare-fun bs!1939868 () Bool)

(assert (= bs!1939868 d!2310125))

(declare-fun m!8105754 () Bool)

(assert (=> bs!1939868 m!8105754))

(assert (=> b!7533317 d!2310125))

(declare-fun d!2310127 () Bool)

(assert (=> d!2310127 (= (nullable!8662 baseR!101) (nullableFct!3467 baseR!101))))

(declare-fun bs!1939869 () Bool)

(assert (= bs!1939869 d!2310127))

(declare-fun m!8105756 () Bool)

(assert (=> bs!1939869 m!8105756))

(assert (=> b!7533383 d!2310127))

(declare-fun d!2310129 () Bool)

(declare-fun e!4489677 () Bool)

(assert (=> d!2310129 e!4489677))

(declare-fun res!3019387 () Bool)

(assert (=> d!2310129 (=> res!3019387 e!4489677)))

(declare-fun lt!2641550 () Bool)

(assert (=> d!2310129 (= res!3019387 (not lt!2641550))))

(declare-fun e!4489678 () Bool)

(assert (=> d!2310129 (= lt!2641550 e!4489678)))

(declare-fun res!3019385 () Bool)

(assert (=> d!2310129 (=> res!3019385 e!4489678)))

(assert (=> d!2310129 (= res!3019385 (is-Nil!72633 (tail!15024 testedP!423)))))

(assert (=> d!2310129 (= (isPrefix!6080 (tail!15024 testedP!423) (tail!15024 knownP!30)) lt!2641550)))

(declare-fun b!7533785 () Bool)

(assert (=> b!7533785 (= e!4489677 (>= (size!42370 (tail!15024 knownP!30)) (size!42370 (tail!15024 testedP!423))))))

(declare-fun b!7533784 () Bool)

(declare-fun e!4489676 () Bool)

(assert (=> b!7533784 (= e!4489676 (isPrefix!6080 (tail!15024 (tail!15024 testedP!423)) (tail!15024 (tail!15024 knownP!30))))))

(declare-fun b!7533783 () Bool)

(declare-fun res!3019386 () Bool)

(assert (=> b!7533783 (=> (not res!3019386) (not e!4489676))))

(assert (=> b!7533783 (= res!3019386 (= (head!15464 (tail!15024 testedP!423)) (head!15464 (tail!15024 knownP!30))))))

(declare-fun b!7533782 () Bool)

(assert (=> b!7533782 (= e!4489678 e!4489676)))

(declare-fun res!3019388 () Bool)

(assert (=> b!7533782 (=> (not res!3019388) (not e!4489676))))

(assert (=> b!7533782 (= res!3019388 (not (is-Nil!72633 (tail!15024 knownP!30))))))

(assert (= (and d!2310129 (not res!3019385)) b!7533782))

(assert (= (and b!7533782 res!3019388) b!7533783))

(assert (= (and b!7533783 res!3019386) b!7533784))

(assert (= (and d!2310129 (not res!3019387)) b!7533785))

(assert (=> b!7533785 m!8105518))

(assert (=> b!7533785 m!8105646))

(assert (=> b!7533785 m!8105478))

(assert (=> b!7533785 m!8105746))

(assert (=> b!7533784 m!8105478))

(assert (=> b!7533784 m!8105748))

(assert (=> b!7533784 m!8105518))

(assert (=> b!7533784 m!8105648))

(assert (=> b!7533784 m!8105748))

(assert (=> b!7533784 m!8105648))

(declare-fun m!8105758 () Bool)

(assert (=> b!7533784 m!8105758))

(assert (=> b!7533783 m!8105478))

(assert (=> b!7533783 m!8105752))

(assert (=> b!7533783 m!8105518))

(assert (=> b!7533783 m!8105652))

(assert (=> b!7533342 d!2310129))

(assert (=> b!7533342 d!2310123))

(assert (=> b!7533342 d!2310083))

(declare-fun d!2310131 () Bool)

(assert (=> d!2310131 (= (head!15464 testedP!423) (h!79081 testedP!423))))

(assert (=> b!7533253 d!2310131))

(assert (=> b!7533253 d!2310087))

(declare-fun d!2310133 () Bool)

(assert (=> d!2310133 (= (isEmpty!41354 (tail!15024 (getSuffix!3560 knownP!30 testedP!423))) (is-Nil!72633 (tail!15024 (getSuffix!3560 knownP!30 testedP!423))))))

(assert (=> b!7533316 d!2310133))

(assert (=> b!7533316 d!2310105))

(declare-fun d!2310135 () Bool)

(assert (=> d!2310135 (= (isEmpty!41354 (tail!15024 knownP!30)) (is-Nil!72633 (tail!15024 knownP!30)))))

(assert (=> b!7533382 d!2310135))

(assert (=> b!7533382 d!2310083))

(assert (=> b!7533341 d!2310131))

(assert (=> b!7533341 d!2310085))

(declare-fun d!2310137 () Bool)

(declare-fun lt!2641551 () Int)

(assert (=> d!2310137 (>= lt!2641551 0)))

(declare-fun e!4489679 () Int)

(assert (=> d!2310137 (= lt!2641551 e!4489679)))

(declare-fun c!1391294 () Bool)

(assert (=> d!2310137 (= c!1391294 (is-Nil!72633 (t!387464 knownP!30)))))

(assert (=> d!2310137 (= (size!42370 (t!387464 knownP!30)) lt!2641551)))

(declare-fun b!7533786 () Bool)

(assert (=> b!7533786 (= e!4489679 0)))

(declare-fun b!7533787 () Bool)

(assert (=> b!7533787 (= e!4489679 (+ 1 (size!42370 (t!387464 (t!387464 knownP!30)))))))

(assert (= (and d!2310137 c!1391294) b!7533786))

(assert (= (and d!2310137 (not c!1391294)) b!7533787))

(declare-fun m!8105760 () Bool)

(assert (=> b!7533787 m!8105760))

(assert (=> b!7533243 d!2310137))

(declare-fun d!2310139 () Bool)

(declare-fun lt!2641552 () Int)

(assert (=> d!2310139 (>= lt!2641552 0)))

(declare-fun e!4489680 () Int)

(assert (=> d!2310139 (= lt!2641552 e!4489680)))

(declare-fun c!1391295 () Bool)

(assert (=> d!2310139 (= c!1391295 (is-Nil!72633 (t!387464 input!7874)))))

(assert (=> d!2310139 (= (size!42370 (t!387464 input!7874)) lt!2641552)))

(declare-fun b!7533788 () Bool)

(assert (=> b!7533788 (= e!4489680 0)))

(declare-fun b!7533789 () Bool)

(assert (=> b!7533789 (= e!4489680 (+ 1 (size!42370 (t!387464 (t!387464 input!7874)))))))

(assert (= (and d!2310139 c!1391295) b!7533788))

(assert (= (and d!2310139 (not c!1391295)) b!7533789))

(declare-fun m!8105762 () Bool)

(assert (=> b!7533789 m!8105762))

(assert (=> b!7533349 d!2310139))

(assert (=> bm!691147 d!2310095))

(declare-fun b!7533792 () Bool)

(declare-fun res!3019389 () Bool)

(declare-fun e!4489682 () Bool)

(assert (=> b!7533792 (=> (not res!3019389) (not e!4489682))))

(declare-fun lt!2641553 () List!72757)

(assert (=> b!7533792 (= res!3019389 (= (size!42370 lt!2641553) (+ (size!42370 testedP!423) (size!42370 lt!2641497))))))

(declare-fun b!7533790 () Bool)

(declare-fun e!4489681 () List!72757)

(assert (=> b!7533790 (= e!4489681 lt!2641497)))

(declare-fun d!2310141 () Bool)

(assert (=> d!2310141 e!4489682))

(declare-fun res!3019390 () Bool)

(assert (=> d!2310141 (=> (not res!3019390) (not e!4489682))))

(assert (=> d!2310141 (= res!3019390 (= (content!15351 lt!2641553) (set.union (content!15351 testedP!423) (content!15351 lt!2641497))))))

(assert (=> d!2310141 (= lt!2641553 e!4489681)))

(declare-fun c!1391296 () Bool)

(assert (=> d!2310141 (= c!1391296 (is-Nil!72633 testedP!423))))

(assert (=> d!2310141 (= (++!17391 testedP!423 lt!2641497) lt!2641553)))

(declare-fun b!7533791 () Bool)

(assert (=> b!7533791 (= e!4489681 (Cons!72633 (h!79081 testedP!423) (++!17391 (t!387464 testedP!423) lt!2641497)))))

(declare-fun b!7533793 () Bool)

(assert (=> b!7533793 (= e!4489682 (or (not (= lt!2641497 Nil!72633)) (= lt!2641553 testedP!423)))))

(assert (= (and d!2310141 c!1391296) b!7533790))

(assert (= (and d!2310141 (not c!1391296)) b!7533791))

(assert (= (and d!2310141 res!3019390) b!7533792))

(assert (= (and b!7533792 res!3019389) b!7533793))

(declare-fun m!8105764 () Bool)

(assert (=> b!7533792 m!8105764))

(assert (=> b!7533792 m!8105422))

(declare-fun m!8105766 () Bool)

(assert (=> b!7533792 m!8105766))

(declare-fun m!8105768 () Bool)

(assert (=> d!2310141 m!8105768))

(assert (=> d!2310141 m!8105662))

(declare-fun m!8105770 () Bool)

(assert (=> d!2310141 m!8105770))

(declare-fun m!8105772 () Bool)

(assert (=> b!7533791 m!8105772))

(assert (=> d!2310027 d!2310141))

(assert (=> d!2310027 d!2310015))

(assert (=> d!2310027 d!2310013))

(assert (=> d!2310033 d!2310031))

(declare-fun d!2310143 () Bool)

(assert (=> d!2310143 (isPrefix!6080 testedP!423 knownP!30)))

(assert (=> d!2310143 true))

(declare-fun _$69!387 () Unit!166686)

(assert (=> d!2310143 (= (choose!58287 knownP!30 testedP!423 input!7874) _$69!387)))

(declare-fun bs!1939870 () Bool)

(assert (= bs!1939870 d!2310143))

(assert (=> bs!1939870 m!8105440))

(assert (=> d!2310033 d!2310143))

(assert (=> d!2310033 d!2310035))

(assert (=> b!7533321 d!2310133))

(assert (=> b!7533321 d!2310105))

(assert (=> b!7533387 d!2310135))

(assert (=> b!7533387 d!2310083))

(declare-fun d!2310145 () Bool)

(declare-fun lt!2641554 () Regex!19874)

(assert (=> d!2310145 (validRegex!10302 lt!2641554)))

(declare-fun e!4489683 () Regex!19874)

(assert (=> d!2310145 (= lt!2641554 e!4489683)))

(declare-fun c!1391297 () Bool)

(assert (=> d!2310145 (= c!1391297 (is-Cons!72633 (t!387464 testedP!423)))))

(assert (=> d!2310145 (validRegex!10302 (derivativeStep!5668 baseR!101 (h!79081 testedP!423)))))

(assert (=> d!2310145 (= (derivative!406 (derivativeStep!5668 baseR!101 (h!79081 testedP!423)) (t!387464 testedP!423)) lt!2641554)))

(declare-fun b!7533794 () Bool)

(assert (=> b!7533794 (= e!4489683 (derivative!406 (derivativeStep!5668 (derivativeStep!5668 baseR!101 (h!79081 testedP!423)) (h!79081 (t!387464 testedP!423))) (t!387464 (t!387464 testedP!423))))))

(declare-fun b!7533795 () Bool)

(assert (=> b!7533795 (= e!4489683 (derivativeStep!5668 baseR!101 (h!79081 testedP!423)))))

(assert (= (and d!2310145 c!1391297) b!7533794))

(assert (= (and d!2310145 (not c!1391297)) b!7533795))

(declare-fun m!8105774 () Bool)

(assert (=> d!2310145 m!8105774))

(assert (=> d!2310145 m!8105550))

(declare-fun m!8105776 () Bool)

(assert (=> d!2310145 m!8105776))

(assert (=> b!7533794 m!8105550))

(declare-fun m!8105778 () Bool)

(assert (=> b!7533794 m!8105778))

(assert (=> b!7533794 m!8105778))

(declare-fun m!8105780 () Bool)

(assert (=> b!7533794 m!8105780))

(assert (=> b!7533423 d!2310145))

(declare-fun b!7533796 () Bool)

(declare-fun e!4489686 () Regex!19874)

(declare-fun call!691214 () Regex!19874)

(declare-fun call!691212 () Regex!19874)

(assert (=> b!7533796 (= e!4489686 (Union!19874 (Concat!28719 call!691214 (regTwo!40260 baseR!101)) call!691212))))

(declare-fun b!7533797 () Bool)

(declare-fun e!4489687 () Regex!19874)

(assert (=> b!7533797 (= e!4489687 EmptyLang!19874)))

(declare-fun bm!691207 () Bool)

(declare-fun c!1391301 () Bool)

(assert (=> bm!691207 (= call!691212 (derivativeStep!5668 (ite c!1391301 (regOne!40261 baseR!101) (regTwo!40260 baseR!101)) (h!79081 testedP!423)))))

(declare-fun b!7533798 () Bool)

(declare-fun c!1391302 () Bool)

(assert (=> b!7533798 (= c!1391302 (nullable!8662 (regOne!40260 baseR!101)))))

(declare-fun e!4489684 () Regex!19874)

(assert (=> b!7533798 (= e!4489684 e!4489686)))

(declare-fun b!7533800 () Bool)

(declare-fun call!691213 () Regex!19874)

(assert (=> b!7533800 (= e!4489684 (Concat!28719 call!691213 baseR!101))))

(declare-fun b!7533801 () Bool)

(declare-fun e!4489685 () Regex!19874)

(assert (=> b!7533801 (= e!4489685 e!4489684)))

(declare-fun c!1391300 () Bool)

(assert (=> b!7533801 (= c!1391300 (is-Star!19874 baseR!101))))

(declare-fun bm!691208 () Bool)

(declare-fun call!691215 () Regex!19874)

(assert (=> bm!691208 (= call!691213 call!691215)))

(declare-fun bm!691209 () Bool)

(assert (=> bm!691209 (= call!691214 call!691213)))

(declare-fun b!7533802 () Bool)

(assert (=> b!7533802 (= e!4489686 (Union!19874 (Concat!28719 call!691214 (regTwo!40260 baseR!101)) EmptyLang!19874))))

(declare-fun b!7533799 () Bool)

(declare-fun e!4489688 () Regex!19874)

(assert (=> b!7533799 (= e!4489688 (ite (= (h!79081 testedP!423) (c!1391183 baseR!101)) EmptyExpr!19874 EmptyLang!19874))))

(declare-fun d!2310147 () Bool)

(declare-fun lt!2641555 () Regex!19874)

(assert (=> d!2310147 (validRegex!10302 lt!2641555)))

(assert (=> d!2310147 (= lt!2641555 e!4489687)))

(declare-fun c!1391298 () Bool)

(assert (=> d!2310147 (= c!1391298 (or (is-EmptyExpr!19874 baseR!101) (is-EmptyLang!19874 baseR!101)))))

(assert (=> d!2310147 (validRegex!10302 baseR!101)))

(assert (=> d!2310147 (= (derivativeStep!5668 baseR!101 (h!79081 testedP!423)) lt!2641555)))

(declare-fun bm!691210 () Bool)

(assert (=> bm!691210 (= call!691215 (derivativeStep!5668 (ite c!1391301 (regTwo!40261 baseR!101) (ite c!1391300 (reg!20203 baseR!101) (regOne!40260 baseR!101))) (h!79081 testedP!423)))))

(declare-fun b!7533803 () Bool)

(assert (=> b!7533803 (= e!4489687 e!4489688)))

(declare-fun c!1391299 () Bool)

(assert (=> b!7533803 (= c!1391299 (is-ElementMatch!19874 baseR!101))))

(declare-fun b!7533804 () Bool)

(assert (=> b!7533804 (= c!1391301 (is-Union!19874 baseR!101))))

(assert (=> b!7533804 (= e!4489688 e!4489685)))

(declare-fun b!7533805 () Bool)

(assert (=> b!7533805 (= e!4489685 (Union!19874 call!691212 call!691215))))

(assert (= (and d!2310147 c!1391298) b!7533797))

(assert (= (and d!2310147 (not c!1391298)) b!7533803))

(assert (= (and b!7533803 c!1391299) b!7533799))

(assert (= (and b!7533803 (not c!1391299)) b!7533804))

(assert (= (and b!7533804 c!1391301) b!7533805))

(assert (= (and b!7533804 (not c!1391301)) b!7533801))

(assert (= (and b!7533801 c!1391300) b!7533800))

(assert (= (and b!7533801 (not c!1391300)) b!7533798))

(assert (= (and b!7533798 c!1391302) b!7533796))

(assert (= (and b!7533798 (not c!1391302)) b!7533802))

(assert (= (or b!7533796 b!7533802) bm!691209))

(assert (= (or b!7533800 bm!691209) bm!691208))

(assert (= (or b!7533805 bm!691208) bm!691210))

(assert (= (or b!7533805 b!7533796) bm!691207))

(declare-fun m!8105782 () Bool)

(assert (=> bm!691207 m!8105782))

(assert (=> b!7533798 m!8105710))

(declare-fun m!8105784 () Bool)

(assert (=> d!2310147 m!8105784))

(assert (=> d!2310147 m!8105434))

(declare-fun m!8105786 () Bool)

(assert (=> bm!691210 m!8105786))

(assert (=> b!7533423 d!2310147))

(declare-fun d!2310149 () Bool)

(assert (=> d!2310149 (= (nullable!8662 (reg!20203 r!24333)) (nullableFct!3467 (reg!20203 r!24333)))))

(declare-fun bs!1939871 () Bool)

(assert (= bs!1939871 d!2310149))

(declare-fun m!8105788 () Bool)

(assert (=> bs!1939871 m!8105788))

(assert (=> b!7533372 d!2310149))

(assert (=> b!7533255 d!2310037))

(assert (=> b!7533255 d!2310013))

(declare-fun b!7533806 () Bool)

(declare-fun e!4489689 () Bool)

(declare-fun tp!2190348 () Bool)

(assert (=> b!7533806 (= e!4489689 (and tp_is_empty!50103 tp!2190348))))

(assert (=> b!7533440 (= tp!2190220 e!4489689)))

(assert (= (and b!7533440 (is-Cons!72633 (t!387464 (t!387464 testedP!423)))) b!7533806))

(declare-fun b!7533808 () Bool)

(declare-fun e!4489690 () Bool)

(declare-fun tp!2190352 () Bool)

(declare-fun tp!2190350 () Bool)

(assert (=> b!7533808 (= e!4489690 (and tp!2190352 tp!2190350))))

(assert (=> b!7533472 (= tp!2190257 e!4489690)))

(declare-fun b!7533807 () Bool)

(assert (=> b!7533807 (= e!4489690 tp_is_empty!50103)))

(declare-fun b!7533809 () Bool)

(declare-fun tp!2190351 () Bool)

(assert (=> b!7533809 (= e!4489690 tp!2190351)))

(declare-fun b!7533810 () Bool)

(declare-fun tp!2190353 () Bool)

(declare-fun tp!2190349 () Bool)

(assert (=> b!7533810 (= e!4489690 (and tp!2190353 tp!2190349))))

(assert (= (and b!7533472 (is-ElementMatch!19874 (regOne!40261 (regOne!40261 baseR!101)))) b!7533807))

(assert (= (and b!7533472 (is-Concat!28719 (regOne!40261 (regOne!40261 baseR!101)))) b!7533808))

(assert (= (and b!7533472 (is-Star!19874 (regOne!40261 (regOne!40261 baseR!101)))) b!7533809))

(assert (= (and b!7533472 (is-Union!19874 (regOne!40261 (regOne!40261 baseR!101)))) b!7533810))

(declare-fun b!7533812 () Bool)

(declare-fun e!4489691 () Bool)

(declare-fun tp!2190357 () Bool)

(declare-fun tp!2190355 () Bool)

(assert (=> b!7533812 (= e!4489691 (and tp!2190357 tp!2190355))))

(assert (=> b!7533472 (= tp!2190253 e!4489691)))

(declare-fun b!7533811 () Bool)

(assert (=> b!7533811 (= e!4489691 tp_is_empty!50103)))

(declare-fun b!7533813 () Bool)

(declare-fun tp!2190356 () Bool)

(assert (=> b!7533813 (= e!4489691 tp!2190356)))

(declare-fun b!7533814 () Bool)

(declare-fun tp!2190358 () Bool)

(declare-fun tp!2190354 () Bool)

(assert (=> b!7533814 (= e!4489691 (and tp!2190358 tp!2190354))))

(assert (= (and b!7533472 (is-ElementMatch!19874 (regTwo!40261 (regOne!40261 baseR!101)))) b!7533811))

(assert (= (and b!7533472 (is-Concat!28719 (regTwo!40261 (regOne!40261 baseR!101)))) b!7533812))

(assert (= (and b!7533472 (is-Star!19874 (regTwo!40261 (regOne!40261 baseR!101)))) b!7533813))

(assert (= (and b!7533472 (is-Union!19874 (regTwo!40261 (regOne!40261 baseR!101)))) b!7533814))

(declare-fun b!7533816 () Bool)

(declare-fun e!4489692 () Bool)

(declare-fun tp!2190362 () Bool)

(declare-fun tp!2190360 () Bool)

(assert (=> b!7533816 (= e!4489692 (and tp!2190362 tp!2190360))))

(assert (=> b!7533476 (= tp!2190262 e!4489692)))

(declare-fun b!7533815 () Bool)

(assert (=> b!7533815 (= e!4489692 tp_is_empty!50103)))

(declare-fun b!7533817 () Bool)

(declare-fun tp!2190361 () Bool)

(assert (=> b!7533817 (= e!4489692 tp!2190361)))

(declare-fun b!7533818 () Bool)

(declare-fun tp!2190363 () Bool)

(declare-fun tp!2190359 () Bool)

(assert (=> b!7533818 (= e!4489692 (and tp!2190363 tp!2190359))))

(assert (= (and b!7533476 (is-ElementMatch!19874 (regOne!40261 (regTwo!40261 baseR!101)))) b!7533815))

(assert (= (and b!7533476 (is-Concat!28719 (regOne!40261 (regTwo!40261 baseR!101)))) b!7533816))

(assert (= (and b!7533476 (is-Star!19874 (regOne!40261 (regTwo!40261 baseR!101)))) b!7533817))

(assert (= (and b!7533476 (is-Union!19874 (regOne!40261 (regTwo!40261 baseR!101)))) b!7533818))

(declare-fun b!7533820 () Bool)

(declare-fun e!4489693 () Bool)

(declare-fun tp!2190367 () Bool)

(declare-fun tp!2190365 () Bool)

(assert (=> b!7533820 (= e!4489693 (and tp!2190367 tp!2190365))))

(assert (=> b!7533476 (= tp!2190258 e!4489693)))

(declare-fun b!7533819 () Bool)

(assert (=> b!7533819 (= e!4489693 tp_is_empty!50103)))

(declare-fun b!7533821 () Bool)

(declare-fun tp!2190366 () Bool)

(assert (=> b!7533821 (= e!4489693 tp!2190366)))

(declare-fun b!7533822 () Bool)

(declare-fun tp!2190368 () Bool)

(declare-fun tp!2190364 () Bool)

(assert (=> b!7533822 (= e!4489693 (and tp!2190368 tp!2190364))))

(assert (= (and b!7533476 (is-ElementMatch!19874 (regTwo!40261 (regTwo!40261 baseR!101)))) b!7533819))

(assert (= (and b!7533476 (is-Concat!28719 (regTwo!40261 (regTwo!40261 baseR!101)))) b!7533820))

(assert (= (and b!7533476 (is-Star!19874 (regTwo!40261 (regTwo!40261 baseR!101)))) b!7533821))

(assert (= (and b!7533476 (is-Union!19874 (regTwo!40261 (regTwo!40261 baseR!101)))) b!7533822))

(declare-fun b!7533824 () Bool)

(declare-fun e!4489694 () Bool)

(declare-fun tp!2190372 () Bool)

(declare-fun tp!2190370 () Bool)

(assert (=> b!7533824 (= e!4489694 (and tp!2190372 tp!2190370))))

(assert (=> b!7533459 (= tp!2190241 e!4489694)))

(declare-fun b!7533823 () Bool)

(assert (=> b!7533823 (= e!4489694 tp_is_empty!50103)))

(declare-fun b!7533825 () Bool)

(declare-fun tp!2190371 () Bool)

(assert (=> b!7533825 (= e!4489694 tp!2190371)))

(declare-fun b!7533826 () Bool)

(declare-fun tp!2190373 () Bool)

(declare-fun tp!2190369 () Bool)

(assert (=> b!7533826 (= e!4489694 (and tp!2190373 tp!2190369))))

(assert (= (and b!7533459 (is-ElementMatch!19874 (regOne!40261 (regTwo!40260 r!24333)))) b!7533823))

(assert (= (and b!7533459 (is-Concat!28719 (regOne!40261 (regTwo!40260 r!24333)))) b!7533824))

(assert (= (and b!7533459 (is-Star!19874 (regOne!40261 (regTwo!40260 r!24333)))) b!7533825))

(assert (= (and b!7533459 (is-Union!19874 (regOne!40261 (regTwo!40260 r!24333)))) b!7533826))

(declare-fun b!7533828 () Bool)

(declare-fun e!4489695 () Bool)

(declare-fun tp!2190377 () Bool)

(declare-fun tp!2190375 () Bool)

(assert (=> b!7533828 (= e!4489695 (and tp!2190377 tp!2190375))))

(assert (=> b!7533459 (= tp!2190237 e!4489695)))

(declare-fun b!7533827 () Bool)

(assert (=> b!7533827 (= e!4489695 tp_is_empty!50103)))

(declare-fun b!7533829 () Bool)

(declare-fun tp!2190376 () Bool)

(assert (=> b!7533829 (= e!4489695 tp!2190376)))

(declare-fun b!7533830 () Bool)

(declare-fun tp!2190378 () Bool)

(declare-fun tp!2190374 () Bool)

(assert (=> b!7533830 (= e!4489695 (and tp!2190378 tp!2190374))))

(assert (= (and b!7533459 (is-ElementMatch!19874 (regTwo!40261 (regTwo!40260 r!24333)))) b!7533827))

(assert (= (and b!7533459 (is-Concat!28719 (regTwo!40261 (regTwo!40260 r!24333)))) b!7533828))

(assert (= (and b!7533459 (is-Star!19874 (regTwo!40261 (regTwo!40260 r!24333)))) b!7533829))

(assert (= (and b!7533459 (is-Union!19874 (regTwo!40261 (regTwo!40260 r!24333)))) b!7533830))

(declare-fun b!7533832 () Bool)

(declare-fun e!4489696 () Bool)

(declare-fun tp!2190382 () Bool)

(declare-fun tp!2190380 () Bool)

(assert (=> b!7533832 (= e!4489696 (and tp!2190382 tp!2190380))))

(assert (=> b!7533475 (= tp!2190260 e!4489696)))

(declare-fun b!7533831 () Bool)

(assert (=> b!7533831 (= e!4489696 tp_is_empty!50103)))

(declare-fun b!7533833 () Bool)

(declare-fun tp!2190381 () Bool)

(assert (=> b!7533833 (= e!4489696 tp!2190381)))

(declare-fun b!7533834 () Bool)

(declare-fun tp!2190383 () Bool)

(declare-fun tp!2190379 () Bool)

(assert (=> b!7533834 (= e!4489696 (and tp!2190383 tp!2190379))))

(assert (= (and b!7533475 (is-ElementMatch!19874 (reg!20203 (regTwo!40261 baseR!101)))) b!7533831))

(assert (= (and b!7533475 (is-Concat!28719 (reg!20203 (regTwo!40261 baseR!101)))) b!7533832))

(assert (= (and b!7533475 (is-Star!19874 (reg!20203 (regTwo!40261 baseR!101)))) b!7533833))

(assert (= (and b!7533475 (is-Union!19874 (reg!20203 (regTwo!40261 baseR!101)))) b!7533834))

(declare-fun b!7533836 () Bool)

(declare-fun e!4489697 () Bool)

(declare-fun tp!2190387 () Bool)

(declare-fun tp!2190385 () Bool)

(assert (=> b!7533836 (= e!4489697 (and tp!2190387 tp!2190385))))

(assert (=> b!7533484 (= tp!2190272 e!4489697)))

(declare-fun b!7533835 () Bool)

(assert (=> b!7533835 (= e!4489697 tp_is_empty!50103)))

(declare-fun b!7533837 () Bool)

(declare-fun tp!2190386 () Bool)

(assert (=> b!7533837 (= e!4489697 tp!2190386)))

(declare-fun b!7533838 () Bool)

(declare-fun tp!2190388 () Bool)

(declare-fun tp!2190384 () Bool)

(assert (=> b!7533838 (= e!4489697 (and tp!2190388 tp!2190384))))

(assert (= (and b!7533484 (is-ElementMatch!19874 (regOne!40261 (regTwo!40261 r!24333)))) b!7533835))

(assert (= (and b!7533484 (is-Concat!28719 (regOne!40261 (regTwo!40261 r!24333)))) b!7533836))

(assert (= (and b!7533484 (is-Star!19874 (regOne!40261 (regTwo!40261 r!24333)))) b!7533837))

(assert (= (and b!7533484 (is-Union!19874 (regOne!40261 (regTwo!40261 r!24333)))) b!7533838))

(declare-fun b!7533840 () Bool)

(declare-fun e!4489698 () Bool)

(declare-fun tp!2190392 () Bool)

(declare-fun tp!2190390 () Bool)

(assert (=> b!7533840 (= e!4489698 (and tp!2190392 tp!2190390))))

(assert (=> b!7533484 (= tp!2190268 e!4489698)))

(declare-fun b!7533839 () Bool)

(assert (=> b!7533839 (= e!4489698 tp_is_empty!50103)))

(declare-fun b!7533841 () Bool)

(declare-fun tp!2190391 () Bool)

(assert (=> b!7533841 (= e!4489698 tp!2190391)))

(declare-fun b!7533842 () Bool)

(declare-fun tp!2190393 () Bool)

(declare-fun tp!2190389 () Bool)

(assert (=> b!7533842 (= e!4489698 (and tp!2190393 tp!2190389))))

(assert (= (and b!7533484 (is-ElementMatch!19874 (regTwo!40261 (regTwo!40261 r!24333)))) b!7533839))

(assert (= (and b!7533484 (is-Concat!28719 (regTwo!40261 (regTwo!40261 r!24333)))) b!7533840))

(assert (= (and b!7533484 (is-Star!19874 (regTwo!40261 (regTwo!40261 r!24333)))) b!7533841))

(assert (= (and b!7533484 (is-Union!19874 (regTwo!40261 (regTwo!40261 r!24333)))) b!7533842))

(declare-fun b!7533844 () Bool)

(declare-fun e!4489699 () Bool)

(declare-fun tp!2190397 () Bool)

(declare-fun tp!2190395 () Bool)

(assert (=> b!7533844 (= e!4489699 (and tp!2190397 tp!2190395))))

(assert (=> b!7533458 (= tp!2190239 e!4489699)))

(declare-fun b!7533843 () Bool)

(assert (=> b!7533843 (= e!4489699 tp_is_empty!50103)))

(declare-fun b!7533845 () Bool)

(declare-fun tp!2190396 () Bool)

(assert (=> b!7533845 (= e!4489699 tp!2190396)))

(declare-fun b!7533846 () Bool)

(declare-fun tp!2190398 () Bool)

(declare-fun tp!2190394 () Bool)

(assert (=> b!7533846 (= e!4489699 (and tp!2190398 tp!2190394))))

(assert (= (and b!7533458 (is-ElementMatch!19874 (reg!20203 (regTwo!40260 r!24333)))) b!7533843))

(assert (= (and b!7533458 (is-Concat!28719 (reg!20203 (regTwo!40260 r!24333)))) b!7533844))

(assert (= (and b!7533458 (is-Star!19874 (reg!20203 (regTwo!40260 r!24333)))) b!7533845))

(assert (= (and b!7533458 (is-Union!19874 (reg!20203 (regTwo!40260 r!24333)))) b!7533846))

(declare-fun b!7533848 () Bool)

(declare-fun e!4489700 () Bool)

(declare-fun tp!2190402 () Bool)

(declare-fun tp!2190400 () Bool)

(assert (=> b!7533848 (= e!4489700 (and tp!2190402 tp!2190400))))

(assert (=> b!7533467 (= tp!2190251 e!4489700)))

(declare-fun b!7533847 () Bool)

(assert (=> b!7533847 (= e!4489700 tp_is_empty!50103)))

(declare-fun b!7533849 () Bool)

(declare-fun tp!2190401 () Bool)

(assert (=> b!7533849 (= e!4489700 tp!2190401)))

(declare-fun b!7533850 () Bool)

(declare-fun tp!2190403 () Bool)

(declare-fun tp!2190399 () Bool)

(assert (=> b!7533850 (= e!4489700 (and tp!2190403 tp!2190399))))

(assert (= (and b!7533467 (is-ElementMatch!19874 (regOne!40261 (regTwo!40260 baseR!101)))) b!7533847))

(assert (= (and b!7533467 (is-Concat!28719 (regOne!40261 (regTwo!40260 baseR!101)))) b!7533848))

(assert (= (and b!7533467 (is-Star!19874 (regOne!40261 (regTwo!40260 baseR!101)))) b!7533849))

(assert (= (and b!7533467 (is-Union!19874 (regOne!40261 (regTwo!40260 baseR!101)))) b!7533850))

(declare-fun b!7533852 () Bool)

(declare-fun e!4489701 () Bool)

(declare-fun tp!2190407 () Bool)

(declare-fun tp!2190405 () Bool)

(assert (=> b!7533852 (= e!4489701 (and tp!2190407 tp!2190405))))

(assert (=> b!7533467 (= tp!2190247 e!4489701)))

(declare-fun b!7533851 () Bool)

(assert (=> b!7533851 (= e!4489701 tp_is_empty!50103)))

(declare-fun b!7533853 () Bool)

(declare-fun tp!2190406 () Bool)

(assert (=> b!7533853 (= e!4489701 tp!2190406)))

(declare-fun b!7533854 () Bool)

(declare-fun tp!2190408 () Bool)

(declare-fun tp!2190404 () Bool)

(assert (=> b!7533854 (= e!4489701 (and tp!2190408 tp!2190404))))

(assert (= (and b!7533467 (is-ElementMatch!19874 (regTwo!40261 (regTwo!40260 baseR!101)))) b!7533851))

(assert (= (and b!7533467 (is-Concat!28719 (regTwo!40261 (regTwo!40260 baseR!101)))) b!7533852))

(assert (= (and b!7533467 (is-Star!19874 (regTwo!40261 (regTwo!40260 baseR!101)))) b!7533853))

(assert (= (and b!7533467 (is-Union!19874 (regTwo!40261 (regTwo!40260 baseR!101)))) b!7533854))

(declare-fun b!7533856 () Bool)

(declare-fun e!4489702 () Bool)

(declare-fun tp!2190412 () Bool)

(declare-fun tp!2190410 () Bool)

(assert (=> b!7533856 (= e!4489702 (and tp!2190412 tp!2190410))))

(assert (=> b!7533474 (= tp!2190261 e!4489702)))

(declare-fun b!7533855 () Bool)

(assert (=> b!7533855 (= e!4489702 tp_is_empty!50103)))

(declare-fun b!7533857 () Bool)

(declare-fun tp!2190411 () Bool)

(assert (=> b!7533857 (= e!4489702 tp!2190411)))

(declare-fun b!7533858 () Bool)

(declare-fun tp!2190413 () Bool)

(declare-fun tp!2190409 () Bool)

(assert (=> b!7533858 (= e!4489702 (and tp!2190413 tp!2190409))))

(assert (= (and b!7533474 (is-ElementMatch!19874 (regOne!40260 (regTwo!40261 baseR!101)))) b!7533855))

(assert (= (and b!7533474 (is-Concat!28719 (regOne!40260 (regTwo!40261 baseR!101)))) b!7533856))

(assert (= (and b!7533474 (is-Star!19874 (regOne!40260 (regTwo!40261 baseR!101)))) b!7533857))

(assert (= (and b!7533474 (is-Union!19874 (regOne!40260 (regTwo!40261 baseR!101)))) b!7533858))

(declare-fun b!7533860 () Bool)

(declare-fun e!4489703 () Bool)

(declare-fun tp!2190417 () Bool)

(declare-fun tp!2190415 () Bool)

(assert (=> b!7533860 (= e!4489703 (and tp!2190417 tp!2190415))))

(assert (=> b!7533474 (= tp!2190259 e!4489703)))

(declare-fun b!7533859 () Bool)

(assert (=> b!7533859 (= e!4489703 tp_is_empty!50103)))

(declare-fun b!7533861 () Bool)

(declare-fun tp!2190416 () Bool)

(assert (=> b!7533861 (= e!4489703 tp!2190416)))

(declare-fun b!7533862 () Bool)

(declare-fun tp!2190418 () Bool)

(declare-fun tp!2190414 () Bool)

(assert (=> b!7533862 (= e!4489703 (and tp!2190418 tp!2190414))))

(assert (= (and b!7533474 (is-ElementMatch!19874 (regTwo!40260 (regTwo!40261 baseR!101)))) b!7533859))

(assert (= (and b!7533474 (is-Concat!28719 (regTwo!40260 (regTwo!40261 baseR!101)))) b!7533860))

(assert (= (and b!7533474 (is-Star!19874 (regTwo!40260 (regTwo!40261 baseR!101)))) b!7533861))

(assert (= (and b!7533474 (is-Union!19874 (regTwo!40260 (regTwo!40261 baseR!101)))) b!7533862))

(declare-fun b!7533864 () Bool)

(declare-fun e!4489704 () Bool)

(declare-fun tp!2190422 () Bool)

(declare-fun tp!2190420 () Bool)

(assert (=> b!7533864 (= e!4489704 (and tp!2190422 tp!2190420))))

(assert (=> b!7533483 (= tp!2190270 e!4489704)))

(declare-fun b!7533863 () Bool)

(assert (=> b!7533863 (= e!4489704 tp_is_empty!50103)))

(declare-fun b!7533865 () Bool)

(declare-fun tp!2190421 () Bool)

(assert (=> b!7533865 (= e!4489704 tp!2190421)))

(declare-fun b!7533866 () Bool)

(declare-fun tp!2190423 () Bool)

(declare-fun tp!2190419 () Bool)

(assert (=> b!7533866 (= e!4489704 (and tp!2190423 tp!2190419))))

(assert (= (and b!7533483 (is-ElementMatch!19874 (reg!20203 (regTwo!40261 r!24333)))) b!7533863))

(assert (= (and b!7533483 (is-Concat!28719 (reg!20203 (regTwo!40261 r!24333)))) b!7533864))

(assert (= (and b!7533483 (is-Star!19874 (reg!20203 (regTwo!40261 r!24333)))) b!7533865))

(assert (= (and b!7533483 (is-Union!19874 (reg!20203 (regTwo!40261 r!24333)))) b!7533866))

(declare-fun b!7533868 () Bool)

(declare-fun e!4489705 () Bool)

(declare-fun tp!2190427 () Bool)

(declare-fun tp!2190425 () Bool)

(assert (=> b!7533868 (= e!4489705 (and tp!2190427 tp!2190425))))

(assert (=> b!7533457 (= tp!2190240 e!4489705)))

(declare-fun b!7533867 () Bool)

(assert (=> b!7533867 (= e!4489705 tp_is_empty!50103)))

(declare-fun b!7533869 () Bool)

(declare-fun tp!2190426 () Bool)

(assert (=> b!7533869 (= e!4489705 tp!2190426)))

(declare-fun b!7533870 () Bool)

(declare-fun tp!2190428 () Bool)

(declare-fun tp!2190424 () Bool)

(assert (=> b!7533870 (= e!4489705 (and tp!2190428 tp!2190424))))

(assert (= (and b!7533457 (is-ElementMatch!19874 (regOne!40260 (regTwo!40260 r!24333)))) b!7533867))

(assert (= (and b!7533457 (is-Concat!28719 (regOne!40260 (regTwo!40260 r!24333)))) b!7533868))

(assert (= (and b!7533457 (is-Star!19874 (regOne!40260 (regTwo!40260 r!24333)))) b!7533869))

(assert (= (and b!7533457 (is-Union!19874 (regOne!40260 (regTwo!40260 r!24333)))) b!7533870))

(declare-fun b!7533872 () Bool)

(declare-fun e!4489706 () Bool)

(declare-fun tp!2190432 () Bool)

(declare-fun tp!2190430 () Bool)

(assert (=> b!7533872 (= e!4489706 (and tp!2190432 tp!2190430))))

(assert (=> b!7533457 (= tp!2190238 e!4489706)))

(declare-fun b!7533871 () Bool)

(assert (=> b!7533871 (= e!4489706 tp_is_empty!50103)))

(declare-fun b!7533873 () Bool)

(declare-fun tp!2190431 () Bool)

(assert (=> b!7533873 (= e!4489706 tp!2190431)))

(declare-fun b!7533874 () Bool)

(declare-fun tp!2190433 () Bool)

(declare-fun tp!2190429 () Bool)

(assert (=> b!7533874 (= e!4489706 (and tp!2190433 tp!2190429))))

(assert (= (and b!7533457 (is-ElementMatch!19874 (regTwo!40260 (regTwo!40260 r!24333)))) b!7533871))

(assert (= (and b!7533457 (is-Concat!28719 (regTwo!40260 (regTwo!40260 r!24333)))) b!7533872))

(assert (= (and b!7533457 (is-Star!19874 (regTwo!40260 (regTwo!40260 r!24333)))) b!7533873))

(assert (= (and b!7533457 (is-Union!19874 (regTwo!40260 (regTwo!40260 r!24333)))) b!7533874))

(declare-fun b!7533876 () Bool)

(declare-fun e!4489707 () Bool)

(declare-fun tp!2190437 () Bool)

(declare-fun tp!2190435 () Bool)

(assert (=> b!7533876 (= e!4489707 (and tp!2190437 tp!2190435))))

(assert (=> b!7533492 (= tp!2190282 e!4489707)))

(declare-fun b!7533875 () Bool)

(assert (=> b!7533875 (= e!4489707 tp_is_empty!50103)))

(declare-fun b!7533877 () Bool)

(declare-fun tp!2190436 () Bool)

(assert (=> b!7533877 (= e!4489707 tp!2190436)))

(declare-fun b!7533878 () Bool)

(declare-fun tp!2190438 () Bool)

(declare-fun tp!2190434 () Bool)

(assert (=> b!7533878 (= e!4489707 (and tp!2190438 tp!2190434))))

(assert (= (and b!7533492 (is-ElementMatch!19874 (regOne!40261 (reg!20203 r!24333)))) b!7533875))

(assert (= (and b!7533492 (is-Concat!28719 (regOne!40261 (reg!20203 r!24333)))) b!7533876))

(assert (= (and b!7533492 (is-Star!19874 (regOne!40261 (reg!20203 r!24333)))) b!7533877))

(assert (= (and b!7533492 (is-Union!19874 (regOne!40261 (reg!20203 r!24333)))) b!7533878))

(declare-fun b!7533880 () Bool)

(declare-fun e!4489708 () Bool)

(declare-fun tp!2190442 () Bool)

(declare-fun tp!2190440 () Bool)

(assert (=> b!7533880 (= e!4489708 (and tp!2190442 tp!2190440))))

(assert (=> b!7533492 (= tp!2190278 e!4489708)))

(declare-fun b!7533879 () Bool)

(assert (=> b!7533879 (= e!4489708 tp_is_empty!50103)))

(declare-fun b!7533881 () Bool)

(declare-fun tp!2190441 () Bool)

(assert (=> b!7533881 (= e!4489708 tp!2190441)))

(declare-fun b!7533882 () Bool)

(declare-fun tp!2190443 () Bool)

(declare-fun tp!2190439 () Bool)

(assert (=> b!7533882 (= e!4489708 (and tp!2190443 tp!2190439))))

(assert (= (and b!7533492 (is-ElementMatch!19874 (regTwo!40261 (reg!20203 r!24333)))) b!7533879))

(assert (= (and b!7533492 (is-Concat!28719 (regTwo!40261 (reg!20203 r!24333)))) b!7533880))

(assert (= (and b!7533492 (is-Star!19874 (regTwo!40261 (reg!20203 r!24333)))) b!7533881))

(assert (= (and b!7533492 (is-Union!19874 (regTwo!40261 (reg!20203 r!24333)))) b!7533882))

(declare-fun b!7533884 () Bool)

(declare-fun e!4489709 () Bool)

(declare-fun tp!2190447 () Bool)

(declare-fun tp!2190445 () Bool)

(assert (=> b!7533884 (= e!4489709 (and tp!2190447 tp!2190445))))

(assert (=> b!7533466 (= tp!2190249 e!4489709)))

(declare-fun b!7533883 () Bool)

(assert (=> b!7533883 (= e!4489709 tp_is_empty!50103)))

(declare-fun b!7533885 () Bool)

(declare-fun tp!2190446 () Bool)

(assert (=> b!7533885 (= e!4489709 tp!2190446)))

(declare-fun b!7533886 () Bool)

(declare-fun tp!2190448 () Bool)

(declare-fun tp!2190444 () Bool)

(assert (=> b!7533886 (= e!4489709 (and tp!2190448 tp!2190444))))

(assert (= (and b!7533466 (is-ElementMatch!19874 (reg!20203 (regTwo!40260 baseR!101)))) b!7533883))

(assert (= (and b!7533466 (is-Concat!28719 (reg!20203 (regTwo!40260 baseR!101)))) b!7533884))

(assert (= (and b!7533466 (is-Star!19874 (reg!20203 (regTwo!40260 baseR!101)))) b!7533885))

(assert (= (and b!7533466 (is-Union!19874 (reg!20203 (regTwo!40260 baseR!101)))) b!7533886))

(declare-fun b!7533888 () Bool)

(declare-fun e!4489710 () Bool)

(declare-fun tp!2190452 () Bool)

(declare-fun tp!2190450 () Bool)

(assert (=> b!7533888 (= e!4489710 (and tp!2190452 tp!2190450))))

(assert (=> b!7533482 (= tp!2190271 e!4489710)))

(declare-fun b!7533887 () Bool)

(assert (=> b!7533887 (= e!4489710 tp_is_empty!50103)))

(declare-fun b!7533889 () Bool)

(declare-fun tp!2190451 () Bool)

(assert (=> b!7533889 (= e!4489710 tp!2190451)))

(declare-fun b!7533890 () Bool)

(declare-fun tp!2190453 () Bool)

(declare-fun tp!2190449 () Bool)

(assert (=> b!7533890 (= e!4489710 (and tp!2190453 tp!2190449))))

(assert (= (and b!7533482 (is-ElementMatch!19874 (regOne!40260 (regTwo!40261 r!24333)))) b!7533887))

(assert (= (and b!7533482 (is-Concat!28719 (regOne!40260 (regTwo!40261 r!24333)))) b!7533888))

(assert (= (and b!7533482 (is-Star!19874 (regOne!40260 (regTwo!40261 r!24333)))) b!7533889))

(assert (= (and b!7533482 (is-Union!19874 (regOne!40260 (regTwo!40261 r!24333)))) b!7533890))

(declare-fun b!7533892 () Bool)

(declare-fun e!4489711 () Bool)

(declare-fun tp!2190457 () Bool)

(declare-fun tp!2190455 () Bool)

(assert (=> b!7533892 (= e!4489711 (and tp!2190457 tp!2190455))))

(assert (=> b!7533482 (= tp!2190269 e!4489711)))

(declare-fun b!7533891 () Bool)

(assert (=> b!7533891 (= e!4489711 tp_is_empty!50103)))

(declare-fun b!7533893 () Bool)

(declare-fun tp!2190456 () Bool)

(assert (=> b!7533893 (= e!4489711 tp!2190456)))

(declare-fun b!7533894 () Bool)

(declare-fun tp!2190458 () Bool)

(declare-fun tp!2190454 () Bool)

(assert (=> b!7533894 (= e!4489711 (and tp!2190458 tp!2190454))))

(assert (= (and b!7533482 (is-ElementMatch!19874 (regTwo!40260 (regTwo!40261 r!24333)))) b!7533891))

(assert (= (and b!7533482 (is-Concat!28719 (regTwo!40260 (regTwo!40261 r!24333)))) b!7533892))

(assert (= (and b!7533482 (is-Star!19874 (regTwo!40260 (regTwo!40261 r!24333)))) b!7533893))

(assert (= (and b!7533482 (is-Union!19874 (regTwo!40260 (regTwo!40261 r!24333)))) b!7533894))

(declare-fun b!7533895 () Bool)

(declare-fun e!4489712 () Bool)

(declare-fun tp!2190459 () Bool)

(assert (=> b!7533895 (= e!4489712 (and tp_is_empty!50103 tp!2190459))))

(assert (=> b!7533441 (= tp!2190221 e!4489712)))

(assert (= (and b!7533441 (is-Cons!72633 (t!387464 (t!387464 input!7874)))) b!7533895))

(declare-fun b!7533897 () Bool)

(declare-fun e!4489713 () Bool)

(declare-fun tp!2190463 () Bool)

(declare-fun tp!2190461 () Bool)

(assert (=> b!7533897 (= e!4489713 (and tp!2190463 tp!2190461))))

(assert (=> b!7533491 (= tp!2190280 e!4489713)))

(declare-fun b!7533896 () Bool)

(assert (=> b!7533896 (= e!4489713 tp_is_empty!50103)))

(declare-fun b!7533898 () Bool)

(declare-fun tp!2190462 () Bool)

(assert (=> b!7533898 (= e!4489713 tp!2190462)))

(declare-fun b!7533899 () Bool)

(declare-fun tp!2190464 () Bool)

(declare-fun tp!2190460 () Bool)

(assert (=> b!7533899 (= e!4489713 (and tp!2190464 tp!2190460))))

(assert (= (and b!7533491 (is-ElementMatch!19874 (reg!20203 (reg!20203 r!24333)))) b!7533896))

(assert (= (and b!7533491 (is-Concat!28719 (reg!20203 (reg!20203 r!24333)))) b!7533897))

(assert (= (and b!7533491 (is-Star!19874 (reg!20203 (reg!20203 r!24333)))) b!7533898))

(assert (= (and b!7533491 (is-Union!19874 (reg!20203 (reg!20203 r!24333)))) b!7533899))

(declare-fun b!7533901 () Bool)

(declare-fun e!4489714 () Bool)

(declare-fun tp!2190468 () Bool)

(declare-fun tp!2190466 () Bool)

(assert (=> b!7533901 (= e!4489714 (and tp!2190468 tp!2190466))))

(assert (=> b!7533465 (= tp!2190250 e!4489714)))

(declare-fun b!7533900 () Bool)

(assert (=> b!7533900 (= e!4489714 tp_is_empty!50103)))

(declare-fun b!7533902 () Bool)

(declare-fun tp!2190467 () Bool)

(assert (=> b!7533902 (= e!4489714 tp!2190467)))

(declare-fun b!7533903 () Bool)

(declare-fun tp!2190469 () Bool)

(declare-fun tp!2190465 () Bool)

(assert (=> b!7533903 (= e!4489714 (and tp!2190469 tp!2190465))))

(assert (= (and b!7533465 (is-ElementMatch!19874 (regOne!40260 (regTwo!40260 baseR!101)))) b!7533900))

(assert (= (and b!7533465 (is-Concat!28719 (regOne!40260 (regTwo!40260 baseR!101)))) b!7533901))

(assert (= (and b!7533465 (is-Star!19874 (regOne!40260 (regTwo!40260 baseR!101)))) b!7533902))

(assert (= (and b!7533465 (is-Union!19874 (regOne!40260 (regTwo!40260 baseR!101)))) b!7533903))

(declare-fun b!7533905 () Bool)

(declare-fun e!4489715 () Bool)

(declare-fun tp!2190473 () Bool)

(declare-fun tp!2190471 () Bool)

(assert (=> b!7533905 (= e!4489715 (and tp!2190473 tp!2190471))))

(assert (=> b!7533465 (= tp!2190248 e!4489715)))

(declare-fun b!7533904 () Bool)

(assert (=> b!7533904 (= e!4489715 tp_is_empty!50103)))

(declare-fun b!7533906 () Bool)

(declare-fun tp!2190472 () Bool)

(assert (=> b!7533906 (= e!4489715 tp!2190472)))

(declare-fun b!7533907 () Bool)

(declare-fun tp!2190474 () Bool)

(declare-fun tp!2190470 () Bool)

(assert (=> b!7533907 (= e!4489715 (and tp!2190474 tp!2190470))))

(assert (= (and b!7533465 (is-ElementMatch!19874 (regTwo!40260 (regTwo!40260 baseR!101)))) b!7533904))

(assert (= (and b!7533465 (is-Concat!28719 (regTwo!40260 (regTwo!40260 baseR!101)))) b!7533905))

(assert (= (and b!7533465 (is-Star!19874 (regTwo!40260 (regTwo!40260 baseR!101)))) b!7533906))

(assert (= (and b!7533465 (is-Union!19874 (regTwo!40260 (regTwo!40260 baseR!101)))) b!7533907))

(declare-fun b!7533909 () Bool)

(declare-fun e!4489716 () Bool)

(declare-fun tp!2190478 () Bool)

(declare-fun tp!2190476 () Bool)

(assert (=> b!7533909 (= e!4489716 (and tp!2190478 tp!2190476))))

(assert (=> b!7533490 (= tp!2190281 e!4489716)))

(declare-fun b!7533908 () Bool)

(assert (=> b!7533908 (= e!4489716 tp_is_empty!50103)))

(declare-fun b!7533910 () Bool)

(declare-fun tp!2190477 () Bool)

(assert (=> b!7533910 (= e!4489716 tp!2190477)))

(declare-fun b!7533911 () Bool)

(declare-fun tp!2190479 () Bool)

(declare-fun tp!2190475 () Bool)

(assert (=> b!7533911 (= e!4489716 (and tp!2190479 tp!2190475))))

(assert (= (and b!7533490 (is-ElementMatch!19874 (regOne!40260 (reg!20203 r!24333)))) b!7533908))

(assert (= (and b!7533490 (is-Concat!28719 (regOne!40260 (reg!20203 r!24333)))) b!7533909))

(assert (= (and b!7533490 (is-Star!19874 (regOne!40260 (reg!20203 r!24333)))) b!7533910))

(assert (= (and b!7533490 (is-Union!19874 (regOne!40260 (reg!20203 r!24333)))) b!7533911))

(declare-fun b!7533913 () Bool)

(declare-fun e!4489717 () Bool)

(declare-fun tp!2190483 () Bool)

(declare-fun tp!2190481 () Bool)

(assert (=> b!7533913 (= e!4489717 (and tp!2190483 tp!2190481))))

(assert (=> b!7533490 (= tp!2190279 e!4489717)))

(declare-fun b!7533912 () Bool)

(assert (=> b!7533912 (= e!4489717 tp_is_empty!50103)))

(declare-fun b!7533914 () Bool)

(declare-fun tp!2190482 () Bool)

(assert (=> b!7533914 (= e!4489717 tp!2190482)))

(declare-fun b!7533915 () Bool)

(declare-fun tp!2190484 () Bool)

(declare-fun tp!2190480 () Bool)

(assert (=> b!7533915 (= e!4489717 (and tp!2190484 tp!2190480))))

(assert (= (and b!7533490 (is-ElementMatch!19874 (regTwo!40260 (reg!20203 r!24333)))) b!7533912))

(assert (= (and b!7533490 (is-Concat!28719 (regTwo!40260 (reg!20203 r!24333)))) b!7533913))

(assert (= (and b!7533490 (is-Star!19874 (regTwo!40260 (reg!20203 r!24333)))) b!7533914))

(assert (= (and b!7533490 (is-Union!19874 (regTwo!40260 (reg!20203 r!24333)))) b!7533915))

(declare-fun b!7533916 () Bool)

(declare-fun e!4489718 () Bool)

(declare-fun tp!2190485 () Bool)

(assert (=> b!7533916 (= e!4489718 (and tp_is_empty!50103 tp!2190485))))

(assert (=> b!7533468 (= tp!2190252 e!4489718)))

(assert (= (and b!7533468 (is-Cons!72633 (t!387464 (t!387464 knownP!30)))) b!7533916))

(declare-fun b!7533918 () Bool)

(declare-fun e!4489719 () Bool)

(declare-fun tp!2190489 () Bool)

(declare-fun tp!2190487 () Bool)

(assert (=> b!7533918 (= e!4489719 (and tp!2190489 tp!2190487))))

(assert (=> b!7533455 (= tp!2190236 e!4489719)))

(declare-fun b!7533917 () Bool)

(assert (=> b!7533917 (= e!4489719 tp_is_empty!50103)))

(declare-fun b!7533919 () Bool)

(declare-fun tp!2190488 () Bool)

(assert (=> b!7533919 (= e!4489719 tp!2190488)))

(declare-fun b!7533920 () Bool)

(declare-fun tp!2190490 () Bool)

(declare-fun tp!2190486 () Bool)

(assert (=> b!7533920 (= e!4489719 (and tp!2190490 tp!2190486))))

(assert (= (and b!7533455 (is-ElementMatch!19874 (regOne!40261 (regOne!40260 r!24333)))) b!7533917))

(assert (= (and b!7533455 (is-Concat!28719 (regOne!40261 (regOne!40260 r!24333)))) b!7533918))

(assert (= (and b!7533455 (is-Star!19874 (regOne!40261 (regOne!40260 r!24333)))) b!7533919))

(assert (= (and b!7533455 (is-Union!19874 (regOne!40261 (regOne!40260 r!24333)))) b!7533920))

(declare-fun b!7533922 () Bool)

(declare-fun e!4489720 () Bool)

(declare-fun tp!2190494 () Bool)

(declare-fun tp!2190492 () Bool)

(assert (=> b!7533922 (= e!4489720 (and tp!2190494 tp!2190492))))

(assert (=> b!7533455 (= tp!2190232 e!4489720)))

(declare-fun b!7533921 () Bool)

(assert (=> b!7533921 (= e!4489720 tp_is_empty!50103)))

(declare-fun b!7533923 () Bool)

(declare-fun tp!2190493 () Bool)

(assert (=> b!7533923 (= e!4489720 tp!2190493)))

(declare-fun b!7533924 () Bool)

(declare-fun tp!2190495 () Bool)

(declare-fun tp!2190491 () Bool)

(assert (=> b!7533924 (= e!4489720 (and tp!2190495 tp!2190491))))

(assert (= (and b!7533455 (is-ElementMatch!19874 (regTwo!40261 (regOne!40260 r!24333)))) b!7533921))

(assert (= (and b!7533455 (is-Concat!28719 (regTwo!40261 (regOne!40260 r!24333)))) b!7533922))

(assert (= (and b!7533455 (is-Star!19874 (regTwo!40261 (regOne!40260 r!24333)))) b!7533923))

(assert (= (and b!7533455 (is-Union!19874 (regTwo!40261 (regOne!40260 r!24333)))) b!7533924))

(declare-fun b!7533926 () Bool)

(declare-fun e!4489721 () Bool)

(declare-fun tp!2190499 () Bool)

(declare-fun tp!2190497 () Bool)

(assert (=> b!7533926 (= e!4489721 (and tp!2190499 tp!2190497))))

(assert (=> b!7533471 (= tp!2190255 e!4489721)))

(declare-fun b!7533925 () Bool)

(assert (=> b!7533925 (= e!4489721 tp_is_empty!50103)))

(declare-fun b!7533927 () Bool)

(declare-fun tp!2190498 () Bool)

(assert (=> b!7533927 (= e!4489721 tp!2190498)))

(declare-fun b!7533928 () Bool)

(declare-fun tp!2190500 () Bool)

(declare-fun tp!2190496 () Bool)

(assert (=> b!7533928 (= e!4489721 (and tp!2190500 tp!2190496))))

(assert (= (and b!7533471 (is-ElementMatch!19874 (reg!20203 (regOne!40261 baseR!101)))) b!7533925))

(assert (= (and b!7533471 (is-Concat!28719 (reg!20203 (regOne!40261 baseR!101)))) b!7533926))

(assert (= (and b!7533471 (is-Star!19874 (reg!20203 (regOne!40261 baseR!101)))) b!7533927))

(assert (= (and b!7533471 (is-Union!19874 (reg!20203 (regOne!40261 baseR!101)))) b!7533928))

(declare-fun b!7533930 () Bool)

(declare-fun e!4489722 () Bool)

(declare-fun tp!2190504 () Bool)

(declare-fun tp!2190502 () Bool)

(assert (=> b!7533930 (= e!4489722 (and tp!2190504 tp!2190502))))

(assert (=> b!7533480 (= tp!2190267 e!4489722)))

(declare-fun b!7533929 () Bool)

(assert (=> b!7533929 (= e!4489722 tp_is_empty!50103)))

(declare-fun b!7533931 () Bool)

(declare-fun tp!2190503 () Bool)

(assert (=> b!7533931 (= e!4489722 tp!2190503)))

(declare-fun b!7533932 () Bool)

(declare-fun tp!2190505 () Bool)

(declare-fun tp!2190501 () Bool)

(assert (=> b!7533932 (= e!4489722 (and tp!2190505 tp!2190501))))

(assert (= (and b!7533480 (is-ElementMatch!19874 (regOne!40261 (regOne!40261 r!24333)))) b!7533929))

(assert (= (and b!7533480 (is-Concat!28719 (regOne!40261 (regOne!40261 r!24333)))) b!7533930))

(assert (= (and b!7533480 (is-Star!19874 (regOne!40261 (regOne!40261 r!24333)))) b!7533931))

(assert (= (and b!7533480 (is-Union!19874 (regOne!40261 (regOne!40261 r!24333)))) b!7533932))

(declare-fun b!7533934 () Bool)

(declare-fun e!4489723 () Bool)

(declare-fun tp!2190509 () Bool)

(declare-fun tp!2190507 () Bool)

(assert (=> b!7533934 (= e!4489723 (and tp!2190509 tp!2190507))))

(assert (=> b!7533480 (= tp!2190263 e!4489723)))

(declare-fun b!7533933 () Bool)

(assert (=> b!7533933 (= e!4489723 tp_is_empty!50103)))

(declare-fun b!7533935 () Bool)

(declare-fun tp!2190508 () Bool)

(assert (=> b!7533935 (= e!4489723 tp!2190508)))

(declare-fun b!7533936 () Bool)

(declare-fun tp!2190510 () Bool)

(declare-fun tp!2190506 () Bool)

(assert (=> b!7533936 (= e!4489723 (and tp!2190510 tp!2190506))))

(assert (= (and b!7533480 (is-ElementMatch!19874 (regTwo!40261 (regOne!40261 r!24333)))) b!7533933))

(assert (= (and b!7533480 (is-Concat!28719 (regTwo!40261 (regOne!40261 r!24333)))) b!7533934))

(assert (= (and b!7533480 (is-Star!19874 (regTwo!40261 (regOne!40261 r!24333)))) b!7533935))

(assert (= (and b!7533480 (is-Union!19874 (regTwo!40261 (regOne!40261 r!24333)))) b!7533936))

(declare-fun b!7533938 () Bool)

(declare-fun e!4489724 () Bool)

(declare-fun tp!2190514 () Bool)

(declare-fun tp!2190512 () Bool)

(assert (=> b!7533938 (= e!4489724 (and tp!2190514 tp!2190512))))

(assert (=> b!7533454 (= tp!2190234 e!4489724)))

(declare-fun b!7533937 () Bool)

(assert (=> b!7533937 (= e!4489724 tp_is_empty!50103)))

(declare-fun b!7533939 () Bool)

(declare-fun tp!2190513 () Bool)

(assert (=> b!7533939 (= e!4489724 tp!2190513)))

(declare-fun b!7533940 () Bool)

(declare-fun tp!2190515 () Bool)

(declare-fun tp!2190511 () Bool)

(assert (=> b!7533940 (= e!4489724 (and tp!2190515 tp!2190511))))

(assert (= (and b!7533454 (is-ElementMatch!19874 (reg!20203 (regOne!40260 r!24333)))) b!7533937))

(assert (= (and b!7533454 (is-Concat!28719 (reg!20203 (regOne!40260 r!24333)))) b!7533938))

(assert (= (and b!7533454 (is-Star!19874 (reg!20203 (regOne!40260 r!24333)))) b!7533939))

(assert (= (and b!7533454 (is-Union!19874 (reg!20203 (regOne!40260 r!24333)))) b!7533940))

(declare-fun b!7533942 () Bool)

(declare-fun e!4489725 () Bool)

(declare-fun tp!2190519 () Bool)

(declare-fun tp!2190517 () Bool)

(assert (=> b!7533942 (= e!4489725 (and tp!2190519 tp!2190517))))

(assert (=> b!7533463 (= tp!2190246 e!4489725)))

(declare-fun b!7533941 () Bool)

(assert (=> b!7533941 (= e!4489725 tp_is_empty!50103)))

(declare-fun b!7533943 () Bool)

(declare-fun tp!2190518 () Bool)

(assert (=> b!7533943 (= e!4489725 tp!2190518)))

(declare-fun b!7533944 () Bool)

(declare-fun tp!2190520 () Bool)

(declare-fun tp!2190516 () Bool)

(assert (=> b!7533944 (= e!4489725 (and tp!2190520 tp!2190516))))

(assert (= (and b!7533463 (is-ElementMatch!19874 (regOne!40261 (regOne!40260 baseR!101)))) b!7533941))

(assert (= (and b!7533463 (is-Concat!28719 (regOne!40261 (regOne!40260 baseR!101)))) b!7533942))

(assert (= (and b!7533463 (is-Star!19874 (regOne!40261 (regOne!40260 baseR!101)))) b!7533943))

(assert (= (and b!7533463 (is-Union!19874 (regOne!40261 (regOne!40260 baseR!101)))) b!7533944))

(declare-fun b!7533946 () Bool)

(declare-fun e!4489726 () Bool)

(declare-fun tp!2190524 () Bool)

(declare-fun tp!2190522 () Bool)

(assert (=> b!7533946 (= e!4489726 (and tp!2190524 tp!2190522))))

(assert (=> b!7533463 (= tp!2190242 e!4489726)))

(declare-fun b!7533945 () Bool)

(assert (=> b!7533945 (= e!4489726 tp_is_empty!50103)))

(declare-fun b!7533947 () Bool)

(declare-fun tp!2190523 () Bool)

(assert (=> b!7533947 (= e!4489726 tp!2190523)))

(declare-fun b!7533948 () Bool)

(declare-fun tp!2190525 () Bool)

(declare-fun tp!2190521 () Bool)

(assert (=> b!7533948 (= e!4489726 (and tp!2190525 tp!2190521))))

(assert (= (and b!7533463 (is-ElementMatch!19874 (regTwo!40261 (regOne!40260 baseR!101)))) b!7533945))

(assert (= (and b!7533463 (is-Concat!28719 (regTwo!40261 (regOne!40260 baseR!101)))) b!7533946))

(assert (= (and b!7533463 (is-Star!19874 (regTwo!40261 (regOne!40260 baseR!101)))) b!7533947))

(assert (= (and b!7533463 (is-Union!19874 (regTwo!40261 (regOne!40260 baseR!101)))) b!7533948))

(declare-fun b!7533950 () Bool)

(declare-fun e!4489727 () Bool)

(declare-fun tp!2190529 () Bool)

(declare-fun tp!2190527 () Bool)

(assert (=> b!7533950 (= e!4489727 (and tp!2190529 tp!2190527))))

(assert (=> b!7533470 (= tp!2190256 e!4489727)))

(declare-fun b!7533949 () Bool)

(assert (=> b!7533949 (= e!4489727 tp_is_empty!50103)))

(declare-fun b!7533951 () Bool)

(declare-fun tp!2190528 () Bool)

(assert (=> b!7533951 (= e!4489727 tp!2190528)))

(declare-fun b!7533952 () Bool)

(declare-fun tp!2190530 () Bool)

(declare-fun tp!2190526 () Bool)

(assert (=> b!7533952 (= e!4489727 (and tp!2190530 tp!2190526))))

(assert (= (and b!7533470 (is-ElementMatch!19874 (regOne!40260 (regOne!40261 baseR!101)))) b!7533949))

(assert (= (and b!7533470 (is-Concat!28719 (regOne!40260 (regOne!40261 baseR!101)))) b!7533950))

(assert (= (and b!7533470 (is-Star!19874 (regOne!40260 (regOne!40261 baseR!101)))) b!7533951))

(assert (= (and b!7533470 (is-Union!19874 (regOne!40260 (regOne!40261 baseR!101)))) b!7533952))

(declare-fun b!7533954 () Bool)

(declare-fun e!4489728 () Bool)

(declare-fun tp!2190534 () Bool)

(declare-fun tp!2190532 () Bool)

(assert (=> b!7533954 (= e!4489728 (and tp!2190534 tp!2190532))))

(assert (=> b!7533470 (= tp!2190254 e!4489728)))

(declare-fun b!7533953 () Bool)

(assert (=> b!7533953 (= e!4489728 tp_is_empty!50103)))

(declare-fun b!7533955 () Bool)

(declare-fun tp!2190533 () Bool)

(assert (=> b!7533955 (= e!4489728 tp!2190533)))

(declare-fun b!7533956 () Bool)

(declare-fun tp!2190535 () Bool)

(declare-fun tp!2190531 () Bool)

(assert (=> b!7533956 (= e!4489728 (and tp!2190535 tp!2190531))))

(assert (= (and b!7533470 (is-ElementMatch!19874 (regTwo!40260 (regOne!40261 baseR!101)))) b!7533953))

(assert (= (and b!7533470 (is-Concat!28719 (regTwo!40260 (regOne!40261 baseR!101)))) b!7533954))

(assert (= (and b!7533470 (is-Star!19874 (regTwo!40260 (regOne!40261 baseR!101)))) b!7533955))

(assert (= (and b!7533470 (is-Union!19874 (regTwo!40260 (regOne!40261 baseR!101)))) b!7533956))

(declare-fun b!7533958 () Bool)

(declare-fun e!4489729 () Bool)

(declare-fun tp!2190539 () Bool)

(declare-fun tp!2190537 () Bool)

(assert (=> b!7533958 (= e!4489729 (and tp!2190539 tp!2190537))))

(assert (=> b!7533479 (= tp!2190265 e!4489729)))

(declare-fun b!7533957 () Bool)

(assert (=> b!7533957 (= e!4489729 tp_is_empty!50103)))

(declare-fun b!7533959 () Bool)

(declare-fun tp!2190538 () Bool)

(assert (=> b!7533959 (= e!4489729 tp!2190538)))

(declare-fun b!7533960 () Bool)

(declare-fun tp!2190540 () Bool)

(declare-fun tp!2190536 () Bool)

(assert (=> b!7533960 (= e!4489729 (and tp!2190540 tp!2190536))))

(assert (= (and b!7533479 (is-ElementMatch!19874 (reg!20203 (regOne!40261 r!24333)))) b!7533957))

(assert (= (and b!7533479 (is-Concat!28719 (reg!20203 (regOne!40261 r!24333)))) b!7533958))

(assert (= (and b!7533479 (is-Star!19874 (reg!20203 (regOne!40261 r!24333)))) b!7533959))

(assert (= (and b!7533479 (is-Union!19874 (reg!20203 (regOne!40261 r!24333)))) b!7533960))

(declare-fun b!7533962 () Bool)

(declare-fun e!4489730 () Bool)

(declare-fun tp!2190544 () Bool)

(declare-fun tp!2190542 () Bool)

(assert (=> b!7533962 (= e!4489730 (and tp!2190544 tp!2190542))))

(assert (=> b!7533453 (= tp!2190235 e!4489730)))

(declare-fun b!7533961 () Bool)

(assert (=> b!7533961 (= e!4489730 tp_is_empty!50103)))

(declare-fun b!7533963 () Bool)

(declare-fun tp!2190543 () Bool)

(assert (=> b!7533963 (= e!4489730 tp!2190543)))

(declare-fun b!7533964 () Bool)

(declare-fun tp!2190545 () Bool)

(declare-fun tp!2190541 () Bool)

(assert (=> b!7533964 (= e!4489730 (and tp!2190545 tp!2190541))))

(assert (= (and b!7533453 (is-ElementMatch!19874 (regOne!40260 (regOne!40260 r!24333)))) b!7533961))

(assert (= (and b!7533453 (is-Concat!28719 (regOne!40260 (regOne!40260 r!24333)))) b!7533962))

(assert (= (and b!7533453 (is-Star!19874 (regOne!40260 (regOne!40260 r!24333)))) b!7533963))

(assert (= (and b!7533453 (is-Union!19874 (regOne!40260 (regOne!40260 r!24333)))) b!7533964))

(declare-fun b!7533966 () Bool)

(declare-fun e!4489731 () Bool)

(declare-fun tp!2190549 () Bool)

(declare-fun tp!2190547 () Bool)

(assert (=> b!7533966 (= e!4489731 (and tp!2190549 tp!2190547))))

(assert (=> b!7533453 (= tp!2190233 e!4489731)))

(declare-fun b!7533965 () Bool)

(assert (=> b!7533965 (= e!4489731 tp_is_empty!50103)))

(declare-fun b!7533967 () Bool)

(declare-fun tp!2190548 () Bool)

(assert (=> b!7533967 (= e!4489731 tp!2190548)))

(declare-fun b!7533968 () Bool)

(declare-fun tp!2190550 () Bool)

(declare-fun tp!2190546 () Bool)

(assert (=> b!7533968 (= e!4489731 (and tp!2190550 tp!2190546))))

(assert (= (and b!7533453 (is-ElementMatch!19874 (regTwo!40260 (regOne!40260 r!24333)))) b!7533965))

(assert (= (and b!7533453 (is-Concat!28719 (regTwo!40260 (regOne!40260 r!24333)))) b!7533966))

(assert (= (and b!7533453 (is-Star!19874 (regTwo!40260 (regOne!40260 r!24333)))) b!7533967))

(assert (= (and b!7533453 (is-Union!19874 (regTwo!40260 (regOne!40260 r!24333)))) b!7533968))

(declare-fun b!7533970 () Bool)

(declare-fun e!4489732 () Bool)

(declare-fun tp!2190554 () Bool)

(declare-fun tp!2190552 () Bool)

(assert (=> b!7533970 (= e!4489732 (and tp!2190554 tp!2190552))))

(assert (=> b!7533488 (= tp!2190277 e!4489732)))

(declare-fun b!7533969 () Bool)

(assert (=> b!7533969 (= e!4489732 tp_is_empty!50103)))

(declare-fun b!7533971 () Bool)

(declare-fun tp!2190553 () Bool)

(assert (=> b!7533971 (= e!4489732 tp!2190553)))

(declare-fun b!7533972 () Bool)

(declare-fun tp!2190555 () Bool)

(declare-fun tp!2190551 () Bool)

(assert (=> b!7533972 (= e!4489732 (and tp!2190555 tp!2190551))))

(assert (= (and b!7533488 (is-ElementMatch!19874 (regOne!40261 (reg!20203 baseR!101)))) b!7533969))

(assert (= (and b!7533488 (is-Concat!28719 (regOne!40261 (reg!20203 baseR!101)))) b!7533970))

(assert (= (and b!7533488 (is-Star!19874 (regOne!40261 (reg!20203 baseR!101)))) b!7533971))

(assert (= (and b!7533488 (is-Union!19874 (regOne!40261 (reg!20203 baseR!101)))) b!7533972))

(declare-fun b!7533974 () Bool)

(declare-fun e!4489733 () Bool)

(declare-fun tp!2190559 () Bool)

(declare-fun tp!2190557 () Bool)

(assert (=> b!7533974 (= e!4489733 (and tp!2190559 tp!2190557))))

(assert (=> b!7533488 (= tp!2190273 e!4489733)))

(declare-fun b!7533973 () Bool)

(assert (=> b!7533973 (= e!4489733 tp_is_empty!50103)))

(declare-fun b!7533975 () Bool)

(declare-fun tp!2190558 () Bool)

(assert (=> b!7533975 (= e!4489733 tp!2190558)))

(declare-fun b!7533976 () Bool)

(declare-fun tp!2190560 () Bool)

(declare-fun tp!2190556 () Bool)

(assert (=> b!7533976 (= e!4489733 (and tp!2190560 tp!2190556))))

(assert (= (and b!7533488 (is-ElementMatch!19874 (regTwo!40261 (reg!20203 baseR!101)))) b!7533973))

(assert (= (and b!7533488 (is-Concat!28719 (regTwo!40261 (reg!20203 baseR!101)))) b!7533974))

(assert (= (and b!7533488 (is-Star!19874 (regTwo!40261 (reg!20203 baseR!101)))) b!7533975))

(assert (= (and b!7533488 (is-Union!19874 (regTwo!40261 (reg!20203 baseR!101)))) b!7533976))

(declare-fun b!7533978 () Bool)

(declare-fun e!4489734 () Bool)

(declare-fun tp!2190564 () Bool)

(declare-fun tp!2190562 () Bool)

(assert (=> b!7533978 (= e!4489734 (and tp!2190564 tp!2190562))))

(assert (=> b!7533462 (= tp!2190244 e!4489734)))

(declare-fun b!7533977 () Bool)

(assert (=> b!7533977 (= e!4489734 tp_is_empty!50103)))

(declare-fun b!7533979 () Bool)

(declare-fun tp!2190563 () Bool)

(assert (=> b!7533979 (= e!4489734 tp!2190563)))

(declare-fun b!7533980 () Bool)

(declare-fun tp!2190565 () Bool)

(declare-fun tp!2190561 () Bool)

(assert (=> b!7533980 (= e!4489734 (and tp!2190565 tp!2190561))))

(assert (= (and b!7533462 (is-ElementMatch!19874 (reg!20203 (regOne!40260 baseR!101)))) b!7533977))

(assert (= (and b!7533462 (is-Concat!28719 (reg!20203 (regOne!40260 baseR!101)))) b!7533978))

(assert (= (and b!7533462 (is-Star!19874 (reg!20203 (regOne!40260 baseR!101)))) b!7533979))

(assert (= (and b!7533462 (is-Union!19874 (reg!20203 (regOne!40260 baseR!101)))) b!7533980))

(declare-fun b!7533982 () Bool)

(declare-fun e!4489735 () Bool)

(declare-fun tp!2190569 () Bool)

(declare-fun tp!2190567 () Bool)

(assert (=> b!7533982 (= e!4489735 (and tp!2190569 tp!2190567))))

(assert (=> b!7533478 (= tp!2190266 e!4489735)))

(declare-fun b!7533981 () Bool)

(assert (=> b!7533981 (= e!4489735 tp_is_empty!50103)))

(declare-fun b!7533983 () Bool)

(declare-fun tp!2190568 () Bool)

(assert (=> b!7533983 (= e!4489735 tp!2190568)))

(declare-fun b!7533984 () Bool)

(declare-fun tp!2190570 () Bool)

(declare-fun tp!2190566 () Bool)

(assert (=> b!7533984 (= e!4489735 (and tp!2190570 tp!2190566))))

(assert (= (and b!7533478 (is-ElementMatch!19874 (regOne!40260 (regOne!40261 r!24333)))) b!7533981))

(assert (= (and b!7533478 (is-Concat!28719 (regOne!40260 (regOne!40261 r!24333)))) b!7533982))

(assert (= (and b!7533478 (is-Star!19874 (regOne!40260 (regOne!40261 r!24333)))) b!7533983))

(assert (= (and b!7533478 (is-Union!19874 (regOne!40260 (regOne!40261 r!24333)))) b!7533984))

(declare-fun b!7533986 () Bool)

(declare-fun e!4489736 () Bool)

(declare-fun tp!2190574 () Bool)

(declare-fun tp!2190572 () Bool)

(assert (=> b!7533986 (= e!4489736 (and tp!2190574 tp!2190572))))

(assert (=> b!7533478 (= tp!2190264 e!4489736)))

(declare-fun b!7533985 () Bool)

(assert (=> b!7533985 (= e!4489736 tp_is_empty!50103)))

(declare-fun b!7533987 () Bool)

(declare-fun tp!2190573 () Bool)

(assert (=> b!7533987 (= e!4489736 tp!2190573)))

(declare-fun b!7533988 () Bool)

(declare-fun tp!2190575 () Bool)

(declare-fun tp!2190571 () Bool)

(assert (=> b!7533988 (= e!4489736 (and tp!2190575 tp!2190571))))

(assert (= (and b!7533478 (is-ElementMatch!19874 (regTwo!40260 (regOne!40261 r!24333)))) b!7533985))

(assert (= (and b!7533478 (is-Concat!28719 (regTwo!40260 (regOne!40261 r!24333)))) b!7533986))

(assert (= (and b!7533478 (is-Star!19874 (regTwo!40260 (regOne!40261 r!24333)))) b!7533987))

(assert (= (and b!7533478 (is-Union!19874 (regTwo!40260 (regOne!40261 r!24333)))) b!7533988))

(declare-fun b!7533990 () Bool)

(declare-fun e!4489737 () Bool)

(declare-fun tp!2190579 () Bool)

(declare-fun tp!2190577 () Bool)

(assert (=> b!7533990 (= e!4489737 (and tp!2190579 tp!2190577))))

(assert (=> b!7533487 (= tp!2190275 e!4489737)))

(declare-fun b!7533989 () Bool)

(assert (=> b!7533989 (= e!4489737 tp_is_empty!50103)))

(declare-fun b!7533991 () Bool)

(declare-fun tp!2190578 () Bool)

(assert (=> b!7533991 (= e!4489737 tp!2190578)))

(declare-fun b!7533992 () Bool)

(declare-fun tp!2190580 () Bool)

(declare-fun tp!2190576 () Bool)

(assert (=> b!7533992 (= e!4489737 (and tp!2190580 tp!2190576))))

(assert (= (and b!7533487 (is-ElementMatch!19874 (reg!20203 (reg!20203 baseR!101)))) b!7533989))

(assert (= (and b!7533487 (is-Concat!28719 (reg!20203 (reg!20203 baseR!101)))) b!7533990))

(assert (= (and b!7533487 (is-Star!19874 (reg!20203 (reg!20203 baseR!101)))) b!7533991))

(assert (= (and b!7533487 (is-Union!19874 (reg!20203 (reg!20203 baseR!101)))) b!7533992))

(declare-fun b!7533994 () Bool)

(declare-fun e!4489738 () Bool)

(declare-fun tp!2190584 () Bool)

(declare-fun tp!2190582 () Bool)

(assert (=> b!7533994 (= e!4489738 (and tp!2190584 tp!2190582))))

(assert (=> b!7533461 (= tp!2190245 e!4489738)))

(declare-fun b!7533993 () Bool)

(assert (=> b!7533993 (= e!4489738 tp_is_empty!50103)))

(declare-fun b!7533995 () Bool)

(declare-fun tp!2190583 () Bool)

(assert (=> b!7533995 (= e!4489738 tp!2190583)))

(declare-fun b!7533996 () Bool)

(declare-fun tp!2190585 () Bool)

(declare-fun tp!2190581 () Bool)

(assert (=> b!7533996 (= e!4489738 (and tp!2190585 tp!2190581))))

(assert (= (and b!7533461 (is-ElementMatch!19874 (regOne!40260 (regOne!40260 baseR!101)))) b!7533993))

(assert (= (and b!7533461 (is-Concat!28719 (regOne!40260 (regOne!40260 baseR!101)))) b!7533994))

(assert (= (and b!7533461 (is-Star!19874 (regOne!40260 (regOne!40260 baseR!101)))) b!7533995))

(assert (= (and b!7533461 (is-Union!19874 (regOne!40260 (regOne!40260 baseR!101)))) b!7533996))

(declare-fun b!7533998 () Bool)

(declare-fun e!4489739 () Bool)

(declare-fun tp!2190589 () Bool)

(declare-fun tp!2190587 () Bool)

(assert (=> b!7533998 (= e!4489739 (and tp!2190589 tp!2190587))))

(assert (=> b!7533461 (= tp!2190243 e!4489739)))

(declare-fun b!7533997 () Bool)

(assert (=> b!7533997 (= e!4489739 tp_is_empty!50103)))

(declare-fun b!7533999 () Bool)

(declare-fun tp!2190588 () Bool)

(assert (=> b!7533999 (= e!4489739 tp!2190588)))

(declare-fun b!7534000 () Bool)

(declare-fun tp!2190590 () Bool)

(declare-fun tp!2190586 () Bool)

(assert (=> b!7534000 (= e!4489739 (and tp!2190590 tp!2190586))))

(assert (= (and b!7533461 (is-ElementMatch!19874 (regTwo!40260 (regOne!40260 baseR!101)))) b!7533997))

(assert (= (and b!7533461 (is-Concat!28719 (regTwo!40260 (regOne!40260 baseR!101)))) b!7533998))

(assert (= (and b!7533461 (is-Star!19874 (regTwo!40260 (regOne!40260 baseR!101)))) b!7533999))

(assert (= (and b!7533461 (is-Union!19874 (regTwo!40260 (regOne!40260 baseR!101)))) b!7534000))

(declare-fun b!7534002 () Bool)

(declare-fun e!4489740 () Bool)

(declare-fun tp!2190594 () Bool)

(declare-fun tp!2190592 () Bool)

(assert (=> b!7534002 (= e!4489740 (and tp!2190594 tp!2190592))))

(assert (=> b!7533486 (= tp!2190276 e!4489740)))

(declare-fun b!7534001 () Bool)

(assert (=> b!7534001 (= e!4489740 tp_is_empty!50103)))

(declare-fun b!7534003 () Bool)

(declare-fun tp!2190593 () Bool)

(assert (=> b!7534003 (= e!4489740 tp!2190593)))

(declare-fun b!7534004 () Bool)

(declare-fun tp!2190595 () Bool)

(declare-fun tp!2190591 () Bool)

(assert (=> b!7534004 (= e!4489740 (and tp!2190595 tp!2190591))))

(assert (= (and b!7533486 (is-ElementMatch!19874 (regOne!40260 (reg!20203 baseR!101)))) b!7534001))

(assert (= (and b!7533486 (is-Concat!28719 (regOne!40260 (reg!20203 baseR!101)))) b!7534002))

(assert (= (and b!7533486 (is-Star!19874 (regOne!40260 (reg!20203 baseR!101)))) b!7534003))

(assert (= (and b!7533486 (is-Union!19874 (regOne!40260 (reg!20203 baseR!101)))) b!7534004))

(declare-fun b!7534006 () Bool)

(declare-fun e!4489741 () Bool)

(declare-fun tp!2190599 () Bool)

(declare-fun tp!2190597 () Bool)

(assert (=> b!7534006 (= e!4489741 (and tp!2190599 tp!2190597))))

(assert (=> b!7533486 (= tp!2190274 e!4489741)))

(declare-fun b!7534005 () Bool)

(assert (=> b!7534005 (= e!4489741 tp_is_empty!50103)))

(declare-fun b!7534007 () Bool)

(declare-fun tp!2190598 () Bool)

(assert (=> b!7534007 (= e!4489741 tp!2190598)))

(declare-fun b!7534008 () Bool)

(declare-fun tp!2190600 () Bool)

(declare-fun tp!2190596 () Bool)

(assert (=> b!7534008 (= e!4489741 (and tp!2190600 tp!2190596))))

(assert (= (and b!7533486 (is-ElementMatch!19874 (regTwo!40260 (reg!20203 baseR!101)))) b!7534005))

(assert (= (and b!7533486 (is-Concat!28719 (regTwo!40260 (reg!20203 baseR!101)))) b!7534006))

(assert (= (and b!7533486 (is-Star!19874 (regTwo!40260 (reg!20203 baseR!101)))) b!7534007))

(assert (= (and b!7533486 (is-Union!19874 (regTwo!40260 (reg!20203 baseR!101)))) b!7534008))

(push 1)

(assert (not b!7533812))

(assert (not b!7533942))

(assert (not bm!691210))

(assert (not b!7533856))

(assert (not b!7533667))

(assert (not d!2310109))

(assert (not b!7533930))

(assert (not b!7533944))

(assert (not b!7533948))

(assert (not b!7533808))

(assert (not b!7533821))

(assert (not bm!691193))

(assert (not b!7533648))

(assert (not b!7534003))

(assert (not b!7533636))

(assert (not b!7533670))

(assert (not b!7533853))

(assert (not b!7533872))

(assert (not b!7533890))

(assert (not b!7533810))

(assert (not b!7533980))

(assert (not d!2310117))

(assert (not b!7533946))

(assert (not b!7533943))

(assert (not b!7533963))

(assert (not b!7533994))

(assert (not b!7533964))

(assert (not b!7533901))

(assert (not b!7533814))

(assert (not b!7533789))

(assert (not b!7533992))

(assert (not b!7533809))

(assert (not b!7533874))

(assert (not b!7533911))

(assert (not b!7533822))

(assert (not b!7533806))

(assert (not b!7533781))

(assert (not b!7533779))

(assert (not b!7533903))

(assert (not bm!691207))

(assert (not d!2310103))

(assert (not b!7533861))

(assert (not b!7533899))

(assert (not b!7533886))

(assert (not b!7533882))

(assert (not b!7533902))

(assert (not b!7533984))

(assert (not b!7533673))

(assert (not b!7533865))

(assert (not b!7533968))

(assert (not b!7533868))

(assert (not bm!691196))

(assert (not b!7533869))

(assert (not b!7533974))

(assert (not b!7533850))

(assert (not b!7533854))

(assert (not bm!691195))

(assert (not b!7533791))

(assert (not d!2310149))

(assert (not b!7533905))

(assert (not b!7533862))

(assert (not d!2310127))

(assert (not b!7533792))

(assert (not b!7533884))

(assert (not b!7533638))

(assert (not b!7533934))

(assert (not b!7533845))

(assert (not bm!691188))

(assert (not b!7533923))

(assert (not d!2310125))

(assert (not b!7533877))

(assert (not b!7533894))

(assert (not b!7533785))

(assert (not b!7533881))

(assert (not b!7533960))

(assert (not b!7533967))

(assert (not b!7533895))

(assert (not d!2310147))

(assert (not b!7533870))

(assert (not b!7533666))

(assert (not b!7533897))

(assert (not bm!691187))

(assert (not b!7533898))

(assert (not b!7533991))

(assert (not b!7533910))

(assert (not b!7533661))

(assert (not bm!691171))

(assert (not b!7533954))

(assert (not b!7533846))

(assert (not b!7533710))

(assert (not b!7533956))

(assert (not b!7533717))

(assert (not b!7533914))

(assert (not b!7533655))

(assert (not b!7533939))

(assert (not b!7533866))

(assert (not b!7533714))

(assert (not b!7533926))

(assert (not b!7533836))

(assert (not b!7533816))

(assert (not d!2310145))

(assert (not b!7533909))

(assert (not b!7533922))

(assert (not b!7533893))

(assert (not b!7533913))

(assert (not b!7533844))

(assert (not b!7533709))

(assert (not b!7533962))

(assert (not bm!691204))

(assert (not b!7533787))

(assert (not b!7533711))

(assert (not b!7533976))

(assert (not b!7533848))

(assert (not b!7533837))

(assert (not b!7534007))

(assert (not b!7533971))

(assert (not b!7533767))

(assert (not b!7533834))

(assert (not b!7533958))

(assert (not b!7534004))

(assert (not b!7533996))

(assert (not b!7533630))

(assert (not b!7533720))

(assert (not b!7534006))

(assert (not b!7533798))

(assert (not b!7533852))

(assert (not bm!691172))

(assert (not b!7533880))

(assert (not b!7533975))

(assert (not b!7533817))

(assert (not b!7533987))

(assert (not b!7534008))

(assert (not b!7533986))

(assert (not b!7533931))

(assert (not b!7533906))

(assert (not b!7533860))

(assert (not b!7533829))

(assert (not b!7533830))

(assert (not bm!691192))

(assert (not bm!691186))

(assert (not b!7533637))

(assert (not b!7533841))

(assert (not b!7533840))

(assert (not b!7533952))

(assert (not b!7533955))

(assert (not b!7533928))

(assert (not b!7533842))

(assert (not b!7533998))

(assert (not b!7533780))

(assert (not b!7533947))

(assert (not b!7533832))

(assert (not d!2310143))

(assert (not b!7533773))

(assert (not d!2310073))

(assert (not b!7533924))

(assert (not b!7533794))

(assert (not bm!691183))

(assert (not b!7533826))

(assert (not b!7533783))

(assert (not b!7533741))

(assert (not b!7533951))

(assert (not b!7534000))

(assert (not b!7533885))

(assert (not b!7533932))

(assert (not b!7533828))

(assert (not d!2310141))

(assert (not b!7533665))

(assert (not b!7533833))

(assert (not b!7534002))

(assert (not b!7533936))

(assert (not b!7533935))

(assert (not d!2310107))

(assert (not bm!691174))

(assert (not b!7533979))

(assert (not b!7533982))

(assert (not b!7533858))

(assert (not d!2310115))

(assert (not b!7533849))

(assert (not b!7533873))

(assert (not b!7533824))

(assert (not b!7533820))

(assert (not b!7533732))

(assert (not b!7533857))

(assert (not b!7533864))

(assert (not b!7533838))

(assert (not b!7533919))

(assert (not b!7533705))

(assert (not b!7533972))

(assert (not bm!691191))

(assert (not bm!691202))

(assert (not b!7533927))

(assert (not b!7533784))

(assert (not b!7533938))

(assert (not b!7533999))

(assert (not b!7533696))

(assert (not b!7533876))

(assert (not b!7533918))

(assert (not b!7533813))

(assert (not b!7533915))

(assert (not d!2310099))

(assert (not bm!691203))

(assert (not b!7533625))

(assert (not b!7533990))

(assert (not b!7533920))

(assert (not b!7533888))

(assert (not d!2310089))

(assert (not b!7533889))

(assert (not b!7533818))

(assert (not b!7533940))

(assert (not b!7533916))

(assert (not bm!691169))

(assert (not b!7533907))

(assert (not b!7533978))

(assert (not b!7533988))

(assert (not b!7533825))

(assert (not b!7533966))

(assert tp_is_empty!50103)

(assert (not d!2310101))

(assert (not b!7533649))

(assert (not b!7533970))

(assert (not b!7533959))

(assert (not b!7533892))

(assert (not b!7533878))

(assert (not b!7533995))

(assert (not bm!691168))

(assert (not b!7533622))

(assert (not b!7533950))

(assert (not bm!691205))

(assert (not b!7533983))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

