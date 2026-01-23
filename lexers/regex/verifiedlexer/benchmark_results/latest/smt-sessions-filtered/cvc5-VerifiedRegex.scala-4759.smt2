; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!245402 () Bool)

(assert start!245402)

(declare-fun b!2516823 () Bool)

(declare-fun e!1594361 () Bool)

(declare-fun tp!804421 () Bool)

(assert (=> b!2516823 (= e!1594361 tp!804421)))

(declare-fun b!2516824 () Bool)

(declare-fun e!1594363 () Bool)

(declare-fun e!1594364 () Bool)

(assert (=> b!2516824 (= e!1594363 e!1594364)))

(declare-fun res!1063778 () Bool)

(assert (=> b!2516824 (=> (not res!1063778) (not e!1594364))))

(declare-datatypes ((C!15142 0))(
  ( (C!15143 (val!9223 Int)) )
))
(declare-datatypes ((Regex!7492 0))(
  ( (ElementMatch!7492 (c!401186 C!15142)) (Concat!12188 (regOne!15496 Regex!7492) (regTwo!15496 Regex!7492)) (EmptyExpr!7492) (Star!7492 (reg!7821 Regex!7492)) (EmptyLang!7492) (Union!7492 (regOne!15497 Regex!7492) (regTwo!15497 Regex!7492)) )
))
(declare-fun lt!899017 () Regex!7492)

(declare-datatypes ((List!29557 0))(
  ( (Nil!29457) (Cons!29457 (h!34877 C!15142) (t!211256 List!29557)) )
))
(declare-fun tl!4068 () List!29557)

(declare-fun nullable!2409 (Regex!7492) Bool)

(declare-fun derivative!187 (Regex!7492 List!29557) Regex!7492)

(assert (=> b!2516824 (= res!1063778 (nullable!2409 (derivative!187 lt!899017 tl!4068)))))

(declare-fun r!27340 () Regex!7492)

(declare-fun c!14016 () C!15142)

(declare-fun derivativeStep!2061 (Regex!7492 C!15142) Regex!7492)

(assert (=> b!2516824 (= lt!899017 (derivativeStep!2061 r!27340 c!14016))))

(declare-fun b!2516825 () Bool)

(declare-fun res!1063780 () Bool)

(assert (=> b!2516825 (=> (not res!1063780) (not e!1594364))))

(assert (=> b!2516825 (= res!1063780 (and (not (is-EmptyExpr!7492 r!27340)) (not (is-EmptyLang!7492 r!27340)) (is-ElementMatch!7492 r!27340) (= c!14016 (c!401186 r!27340)) (= lt!899017 EmptyExpr!7492)))))

(declare-fun res!1063777 () Bool)

(assert (=> start!245402 (=> (not res!1063777) (not e!1594363))))

(declare-fun validRegex!3118 (Regex!7492) Bool)

(assert (=> start!245402 (= res!1063777 (validRegex!3118 r!27340))))

(assert (=> start!245402 e!1594363))

(assert (=> start!245402 e!1594361))

(declare-fun tp_is_empty!12839 () Bool)

(assert (=> start!245402 tp_is_empty!12839))

(declare-fun e!1594362 () Bool)

(assert (=> start!245402 e!1594362))

(declare-fun b!2516826 () Bool)

(assert (=> b!2516826 (= e!1594361 tp_is_empty!12839)))

(declare-fun b!2516827 () Bool)

(declare-fun res!1063779 () Bool)

(assert (=> b!2516827 (=> (not res!1063779) (not e!1594364))))

(declare-fun isEmpty!16919 (List!29557) Bool)

(assert (=> b!2516827 (= res!1063779 (isEmpty!16919 tl!4068))))

(declare-fun b!2516828 () Bool)

(declare-fun tp!804422 () Bool)

(declare-fun tp!804419 () Bool)

(assert (=> b!2516828 (= e!1594361 (and tp!804422 tp!804419))))

(declare-fun b!2516829 () Bool)

(declare-fun contains!5294 (List!29557 C!15142) Bool)

(declare-fun firstChars!85 (Regex!7492) List!29557)

(assert (=> b!2516829 (= e!1594364 (not (contains!5294 (firstChars!85 r!27340) c!14016)))))

(declare-fun b!2516830 () Bool)

(declare-fun tp!804424 () Bool)

(assert (=> b!2516830 (= e!1594362 (and tp_is_empty!12839 tp!804424))))

(declare-fun b!2516831 () Bool)

(declare-fun tp!804420 () Bool)

(declare-fun tp!804423 () Bool)

(assert (=> b!2516831 (= e!1594361 (and tp!804420 tp!804423))))

(assert (= (and start!245402 res!1063777) b!2516824))

(assert (= (and b!2516824 res!1063778) b!2516825))

(assert (= (and b!2516825 res!1063780) b!2516827))

(assert (= (and b!2516827 res!1063779) b!2516829))

(assert (= (and start!245402 (is-ElementMatch!7492 r!27340)) b!2516826))

(assert (= (and start!245402 (is-Concat!12188 r!27340)) b!2516831))

(assert (= (and start!245402 (is-Star!7492 r!27340)) b!2516823))

(assert (= (and start!245402 (is-Union!7492 r!27340)) b!2516828))

(assert (= (and start!245402 (is-Cons!29457 tl!4068)) b!2516830))

(declare-fun m!2873393 () Bool)

(assert (=> b!2516824 m!2873393))

(assert (=> b!2516824 m!2873393))

(declare-fun m!2873395 () Bool)

(assert (=> b!2516824 m!2873395))

(declare-fun m!2873397 () Bool)

(assert (=> b!2516824 m!2873397))

(declare-fun m!2873399 () Bool)

(assert (=> start!245402 m!2873399))

(declare-fun m!2873401 () Bool)

(assert (=> b!2516827 m!2873401))

(declare-fun m!2873403 () Bool)

(assert (=> b!2516829 m!2873403))

(assert (=> b!2516829 m!2873403))

(declare-fun m!2873405 () Bool)

(assert (=> b!2516829 m!2873405))

(push 1)

(assert tp_is_empty!12839)

(assert (not b!2516830))

(assert (not b!2516829))

(assert (not b!2516828))

(assert (not b!2516827))

(assert (not b!2516824))

(assert (not start!245402))

(assert (not b!2516823))

(assert (not b!2516831))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!717424 () Bool)

(assert (=> d!717424 (= (isEmpty!16919 tl!4068) (is-Nil!29457 tl!4068))))

(assert (=> b!2516827 d!717424))

(declare-fun b!2516877 () Bool)

(declare-fun e!1594394 () Bool)

(declare-fun call!156473 () Bool)

(assert (=> b!2516877 (= e!1594394 call!156473)))

(declare-fun bm!156467 () Bool)

(declare-fun call!156472 () Bool)

(assert (=> bm!156467 (= call!156473 call!156472)))

(declare-fun bm!156468 () Bool)

(declare-fun call!156474 () Bool)

(declare-fun c!401192 () Bool)

(assert (=> bm!156468 (= call!156474 (validRegex!3118 (ite c!401192 (regTwo!15497 r!27340) (regOne!15496 r!27340))))))

(declare-fun b!2516878 () Bool)

(declare-fun res!1063805 () Bool)

(declare-fun e!1594396 () Bool)

(assert (=> b!2516878 (=> (not res!1063805) (not e!1594396))))

(assert (=> b!2516878 (= res!1063805 call!156473)))

(declare-fun e!1594393 () Bool)

(assert (=> b!2516878 (= e!1594393 e!1594396)))

(declare-fun b!2516879 () Bool)

(declare-fun e!1594395 () Bool)

(declare-fun e!1594391 () Bool)

(assert (=> b!2516879 (= e!1594395 e!1594391)))

(declare-fun res!1063804 () Bool)

(assert (=> b!2516879 (= res!1063804 (not (nullable!2409 (reg!7821 r!27340))))))

(assert (=> b!2516879 (=> (not res!1063804) (not e!1594391))))

(declare-fun b!2516880 () Bool)

(assert (=> b!2516880 (= e!1594395 e!1594393)))

(assert (=> b!2516880 (= c!401192 (is-Union!7492 r!27340))))

(declare-fun b!2516881 () Bool)

(declare-fun e!1594392 () Bool)

(assert (=> b!2516881 (= e!1594392 e!1594394)))

(declare-fun res!1063806 () Bool)

(assert (=> b!2516881 (=> (not res!1063806) (not e!1594394))))

(assert (=> b!2516881 (= res!1063806 call!156474)))

(declare-fun d!717426 () Bool)

(declare-fun res!1063807 () Bool)

(declare-fun e!1594397 () Bool)

(assert (=> d!717426 (=> res!1063807 e!1594397)))

(assert (=> d!717426 (= res!1063807 (is-ElementMatch!7492 r!27340))))

(assert (=> d!717426 (= (validRegex!3118 r!27340) e!1594397)))

(declare-fun b!2516882 () Bool)

(assert (=> b!2516882 (= e!1594396 call!156474)))

(declare-fun bm!156469 () Bool)

(declare-fun c!401193 () Bool)

(assert (=> bm!156469 (= call!156472 (validRegex!3118 (ite c!401193 (reg!7821 r!27340) (ite c!401192 (regOne!15497 r!27340) (regTwo!15496 r!27340)))))))

(declare-fun b!2516883 () Bool)

(assert (=> b!2516883 (= e!1594397 e!1594395)))

(assert (=> b!2516883 (= c!401193 (is-Star!7492 r!27340))))

(declare-fun b!2516884 () Bool)

(declare-fun res!1063803 () Bool)

(assert (=> b!2516884 (=> res!1063803 e!1594392)))

(assert (=> b!2516884 (= res!1063803 (not (is-Concat!12188 r!27340)))))

(assert (=> b!2516884 (= e!1594393 e!1594392)))

(declare-fun b!2516885 () Bool)

(assert (=> b!2516885 (= e!1594391 call!156472)))

(assert (= (and d!717426 (not res!1063807)) b!2516883))

(assert (= (and b!2516883 c!401193) b!2516879))

(assert (= (and b!2516883 (not c!401193)) b!2516880))

(assert (= (and b!2516879 res!1063804) b!2516885))

(assert (= (and b!2516880 c!401192) b!2516878))

(assert (= (and b!2516880 (not c!401192)) b!2516884))

(assert (= (and b!2516878 res!1063805) b!2516882))

(assert (= (and b!2516884 (not res!1063803)) b!2516881))

(assert (= (and b!2516881 res!1063806) b!2516877))

(assert (= (or b!2516878 b!2516877) bm!156467))

(assert (= (or b!2516882 b!2516881) bm!156468))

(assert (= (or b!2516885 bm!156467) bm!156469))

(declare-fun m!2873421 () Bool)

(assert (=> bm!156468 m!2873421))

(declare-fun m!2873423 () Bool)

(assert (=> b!2516879 m!2873423))

(declare-fun m!2873425 () Bool)

(assert (=> bm!156469 m!2873425))

(assert (=> start!245402 d!717426))

(declare-fun d!717430 () Bool)

(declare-fun lt!899023 () Bool)

(declare-fun content!4027 (List!29557) (Set C!15142))

(assert (=> d!717430 (= lt!899023 (set.member c!14016 (content!4027 (firstChars!85 r!27340))))))

(declare-fun e!1594416 () Bool)

(assert (=> d!717430 (= lt!899023 e!1594416)))

(declare-fun res!1063822 () Bool)

(assert (=> d!717430 (=> (not res!1063822) (not e!1594416))))

(assert (=> d!717430 (= res!1063822 (is-Cons!29457 (firstChars!85 r!27340)))))

(assert (=> d!717430 (= (contains!5294 (firstChars!85 r!27340) c!14016) lt!899023)))

(declare-fun b!2516908 () Bool)

(declare-fun e!1594417 () Bool)

(assert (=> b!2516908 (= e!1594416 e!1594417)))

(declare-fun res!1063823 () Bool)

(assert (=> b!2516908 (=> res!1063823 e!1594417)))

(assert (=> b!2516908 (= res!1063823 (= (h!34877 (firstChars!85 r!27340)) c!14016))))

(declare-fun b!2516909 () Bool)

(assert (=> b!2516909 (= e!1594417 (contains!5294 (t!211256 (firstChars!85 r!27340)) c!14016))))

(assert (= (and d!717430 res!1063822) b!2516908))

(assert (= (and b!2516908 (not res!1063823)) b!2516909))

(assert (=> d!717430 m!2873403))

(declare-fun m!2873427 () Bool)

(assert (=> d!717430 m!2873427))

(declare-fun m!2873429 () Bool)

(assert (=> d!717430 m!2873429))

(declare-fun m!2873431 () Bool)

(assert (=> b!2516909 m!2873431))

(assert (=> b!2516829 d!717430))

(declare-fun bm!156486 () Bool)

(declare-fun call!156495 () List!29557)

(declare-fun call!156492 () List!29557)

(assert (=> bm!156486 (= call!156495 call!156492)))

(declare-fun b!2516930 () Bool)

(declare-fun e!1594431 () List!29557)

(declare-fun e!1594428 () List!29557)

(assert (=> b!2516930 (= e!1594431 e!1594428)))

(declare-fun c!401210 () Bool)

(assert (=> b!2516930 (= c!401210 (is-ElementMatch!7492 r!27340))))

(declare-fun bm!156487 () Bool)

(declare-fun call!156493 () List!29557)

(declare-fun call!156494 () List!29557)

(assert (=> bm!156487 (= call!156493 call!156494)))

(declare-fun d!717432 () Bool)

(declare-fun c!401209 () Bool)

(assert (=> d!717432 (= c!401209 (or (is-EmptyExpr!7492 r!27340) (is-EmptyLang!7492 r!27340)))))

(assert (=> d!717432 (= (firstChars!85 r!27340) e!1594431)))

(declare-fun b!2516931 () Bool)

(declare-fun e!1594429 () List!29557)

(declare-fun call!156491 () List!29557)

(assert (=> b!2516931 (= e!1594429 call!156491)))

(declare-fun bm!156488 () Bool)

(declare-fun c!401212 () Bool)

(declare-fun c!401208 () Bool)

(assert (=> bm!156488 (= call!156492 (firstChars!85 (ite c!401208 (reg!7821 r!27340) (ite c!401212 (regTwo!15497 r!27340) (regOne!15496 r!27340)))))))

(declare-fun b!2516932 () Bool)

(declare-fun e!1594432 () List!29557)

(declare-fun e!1594430 () List!29557)

(assert (=> b!2516932 (= e!1594432 e!1594430)))

(assert (=> b!2516932 (= c!401212 (is-Union!7492 r!27340))))

(declare-fun b!2516933 () Bool)

(assert (=> b!2516933 (= e!1594428 (Cons!29457 (c!401186 r!27340) Nil!29457))))

(declare-fun bm!156489 () Bool)

(declare-fun ++!7220 (List!29557 List!29557) List!29557)

(assert (=> bm!156489 (= call!156491 (++!7220 (ite c!401212 call!156494 call!156495) (ite c!401212 call!156495 call!156493)))))

(declare-fun b!2516934 () Bool)

(declare-fun c!401211 () Bool)

(assert (=> b!2516934 (= c!401211 (nullable!2409 (regOne!15496 r!27340)))))

(assert (=> b!2516934 (= e!1594430 e!1594429)))

(declare-fun b!2516935 () Bool)

(assert (=> b!2516935 (= e!1594432 call!156492)))

(declare-fun b!2516936 () Bool)

(assert (=> b!2516936 (= e!1594430 call!156491)))

(declare-fun b!2516937 () Bool)

(assert (=> b!2516937 (= e!1594431 Nil!29457)))

(declare-fun b!2516938 () Bool)

(assert (=> b!2516938 (= c!401208 (is-Star!7492 r!27340))))

(assert (=> b!2516938 (= e!1594428 e!1594432)))

(declare-fun bm!156490 () Bool)

(assert (=> bm!156490 (= call!156494 (firstChars!85 (ite c!401212 (regOne!15497 r!27340) (ite c!401211 (regTwo!15496 r!27340) (regOne!15496 r!27340)))))))

(declare-fun b!2516939 () Bool)

(assert (=> b!2516939 (= e!1594429 call!156493)))

(assert (= (and d!717432 c!401209) b!2516937))

(assert (= (and d!717432 (not c!401209)) b!2516930))

(assert (= (and b!2516930 c!401210) b!2516933))

(assert (= (and b!2516930 (not c!401210)) b!2516938))

(assert (= (and b!2516938 c!401208) b!2516935))

(assert (= (and b!2516938 (not c!401208)) b!2516932))

(assert (= (and b!2516932 c!401212) b!2516936))

(assert (= (and b!2516932 (not c!401212)) b!2516934))

(assert (= (and b!2516934 c!401211) b!2516931))

(assert (= (and b!2516934 (not c!401211)) b!2516939))

(assert (= (or b!2516931 b!2516939) bm!156487))

(assert (= (or b!2516936 bm!156487) bm!156490))

(assert (= (or b!2516936 b!2516931) bm!156486))

(assert (= (or b!2516936 b!2516931) bm!156489))

(assert (= (or b!2516935 bm!156486) bm!156488))

(declare-fun m!2873433 () Bool)

(assert (=> bm!156488 m!2873433))

(declare-fun m!2873435 () Bool)

(assert (=> bm!156489 m!2873435))

(declare-fun m!2873437 () Bool)

(assert (=> b!2516934 m!2873437))

(declare-fun m!2873439 () Bool)

(assert (=> bm!156490 m!2873439))

(assert (=> b!2516829 d!717432))

(declare-fun d!717434 () Bool)

(declare-fun nullableFct!651 (Regex!7492) Bool)

(assert (=> d!717434 (= (nullable!2409 (derivative!187 lt!899017 tl!4068)) (nullableFct!651 (derivative!187 lt!899017 tl!4068)))))

(declare-fun bs!468908 () Bool)

(assert (= bs!468908 d!717434))

(assert (=> bs!468908 m!2873393))

(declare-fun m!2873441 () Bool)

(assert (=> bs!468908 m!2873441))

(assert (=> b!2516824 d!717434))

(declare-fun d!717436 () Bool)

(declare-fun lt!899026 () Regex!7492)

(assert (=> d!717436 (validRegex!3118 lt!899026)))

(declare-fun e!1594435 () Regex!7492)

(assert (=> d!717436 (= lt!899026 e!1594435)))

(declare-fun c!401215 () Bool)

(assert (=> d!717436 (= c!401215 (is-Cons!29457 tl!4068))))

(assert (=> d!717436 (validRegex!3118 lt!899017)))

(assert (=> d!717436 (= (derivative!187 lt!899017 tl!4068) lt!899026)))

(declare-fun b!2516944 () Bool)

(assert (=> b!2516944 (= e!1594435 (derivative!187 (derivativeStep!2061 lt!899017 (h!34877 tl!4068)) (t!211256 tl!4068)))))

(declare-fun b!2516945 () Bool)

(assert (=> b!2516945 (= e!1594435 lt!899017)))

(assert (= (and d!717436 c!401215) b!2516944))

(assert (= (and d!717436 (not c!401215)) b!2516945))

(declare-fun m!2873443 () Bool)

(assert (=> d!717436 m!2873443))

(declare-fun m!2873445 () Bool)

(assert (=> d!717436 m!2873445))

(declare-fun m!2873447 () Bool)

(assert (=> b!2516944 m!2873447))

(assert (=> b!2516944 m!2873447))

(declare-fun m!2873449 () Bool)

(assert (=> b!2516944 m!2873449))

(assert (=> b!2516824 d!717436))

(declare-fun d!717438 () Bool)

(declare-fun lt!899029 () Regex!7492)

(assert (=> d!717438 (validRegex!3118 lt!899029)))

(declare-fun e!1594457 () Regex!7492)

(assert (=> d!717438 (= lt!899029 e!1594457)))

(declare-fun c!401229 () Bool)

(assert (=> d!717438 (= c!401229 (or (is-EmptyExpr!7492 r!27340) (is-EmptyLang!7492 r!27340)))))

(assert (=> d!717438 (validRegex!3118 r!27340)))

(assert (=> d!717438 (= (derivativeStep!2061 r!27340 c!14016) lt!899029)))

(declare-fun b!2516975 () Bool)

(declare-fun e!1594456 () Regex!7492)

(assert (=> b!2516975 (= e!1594456 (ite (= c!14016 (c!401186 r!27340)) EmptyExpr!7492 EmptyLang!7492))))

(declare-fun b!2516976 () Bool)

(declare-fun e!1594453 () Regex!7492)

(declare-fun e!1594455 () Regex!7492)

(assert (=> b!2516976 (= e!1594453 e!1594455)))

(declare-fun c!401228 () Bool)

(assert (=> b!2516976 (= c!401228 (is-Star!7492 r!27340))))

(declare-fun b!2516977 () Bool)

(declare-fun c!401231 () Bool)

(assert (=> b!2516977 (= c!401231 (is-Union!7492 r!27340))))

(assert (=> b!2516977 (= e!1594456 e!1594453)))

(declare-fun b!2516978 () Bool)

(declare-fun e!1594454 () Regex!7492)

(declare-fun call!156507 () Regex!7492)

(declare-fun call!156509 () Regex!7492)

(assert (=> b!2516978 (= e!1594454 (Union!7492 (Concat!12188 call!156507 (regTwo!15496 r!27340)) call!156509))))

(declare-fun b!2516979 () Bool)

(assert (=> b!2516979 (= e!1594457 e!1594456)))

(declare-fun c!401232 () Bool)

(assert (=> b!2516979 (= c!401232 (is-ElementMatch!7492 r!27340))))

(declare-fun bm!156502 () Bool)

(declare-fun call!156510 () Regex!7492)

(assert (=> bm!156502 (= call!156507 call!156510)))

(declare-fun bm!156503 () Bool)

(assert (=> bm!156503 (= call!156509 (derivativeStep!2061 (ite c!401231 (regTwo!15497 r!27340) (regTwo!15496 r!27340)) c!14016))))

(declare-fun b!2516980 () Bool)

(declare-fun c!401230 () Bool)

(assert (=> b!2516980 (= c!401230 (nullable!2409 (regOne!15496 r!27340)))))

(assert (=> b!2516980 (= e!1594455 e!1594454)))

(declare-fun b!2516981 () Bool)

(declare-fun call!156508 () Regex!7492)

(assert (=> b!2516981 (= e!1594453 (Union!7492 call!156508 call!156509))))

(declare-fun bm!156504 () Bool)

(assert (=> bm!156504 (= call!156510 call!156508)))

(declare-fun b!2516982 () Bool)

(assert (=> b!2516982 (= e!1594455 (Concat!12188 call!156510 r!27340))))

(declare-fun b!2516983 () Bool)

(assert (=> b!2516983 (= e!1594457 EmptyLang!7492)))

(declare-fun bm!156505 () Bool)

(assert (=> bm!156505 (= call!156508 (derivativeStep!2061 (ite c!401231 (regOne!15497 r!27340) (ite c!401228 (reg!7821 r!27340) (regOne!15496 r!27340))) c!14016))))

(declare-fun b!2516984 () Bool)

(assert (=> b!2516984 (= e!1594454 (Union!7492 (Concat!12188 call!156507 (regTwo!15496 r!27340)) EmptyLang!7492))))

(assert (= (and d!717438 c!401229) b!2516983))

(assert (= (and d!717438 (not c!401229)) b!2516979))

(assert (= (and b!2516979 c!401232) b!2516975))

(assert (= (and b!2516979 (not c!401232)) b!2516977))

(assert (= (and b!2516977 c!401231) b!2516981))

(assert (= (and b!2516977 (not c!401231)) b!2516976))

(assert (= (and b!2516976 c!401228) b!2516982))

(assert (= (and b!2516976 (not c!401228)) b!2516980))

(assert (= (and b!2516980 c!401230) b!2516978))

(assert (= (and b!2516980 (not c!401230)) b!2516984))

(assert (= (or b!2516978 b!2516984) bm!156502))

(assert (= (or b!2516982 bm!156502) bm!156504))

(assert (= (or b!2516981 b!2516978) bm!156503))

(assert (= (or b!2516981 bm!156504) bm!156505))

(declare-fun m!2873459 () Bool)

(assert (=> d!717438 m!2873459))

(assert (=> d!717438 m!2873399))

(declare-fun m!2873461 () Bool)

(assert (=> bm!156503 m!2873461))

(assert (=> b!2516980 m!2873437))

(declare-fun m!2873463 () Bool)

(assert (=> bm!156505 m!2873463))

(assert (=> b!2516824 d!717438))

(declare-fun b!2516997 () Bool)

(declare-fun e!1594460 () Bool)

(declare-fun tp!804453 () Bool)

(assert (=> b!2516997 (= e!1594460 tp!804453)))

(declare-fun b!2516996 () Bool)

(declare-fun tp!804456 () Bool)

(declare-fun tp!804455 () Bool)

(assert (=> b!2516996 (= e!1594460 (and tp!804456 tp!804455))))

(assert (=> b!2516831 (= tp!804420 e!1594460)))

(declare-fun b!2516998 () Bool)

(declare-fun tp!804457 () Bool)

(declare-fun tp!804454 () Bool)

(assert (=> b!2516998 (= e!1594460 (and tp!804457 tp!804454))))

(declare-fun b!2516995 () Bool)

(assert (=> b!2516995 (= e!1594460 tp_is_empty!12839)))

(assert (= (and b!2516831 (is-ElementMatch!7492 (regOne!15496 r!27340))) b!2516995))

(assert (= (and b!2516831 (is-Concat!12188 (regOne!15496 r!27340))) b!2516996))

(assert (= (and b!2516831 (is-Star!7492 (regOne!15496 r!27340))) b!2516997))

(assert (= (and b!2516831 (is-Union!7492 (regOne!15496 r!27340))) b!2516998))

(declare-fun b!2517001 () Bool)

(declare-fun e!1594461 () Bool)

(declare-fun tp!804458 () Bool)

(assert (=> b!2517001 (= e!1594461 tp!804458)))

(declare-fun b!2517000 () Bool)

(declare-fun tp!804461 () Bool)

(declare-fun tp!804460 () Bool)

(assert (=> b!2517000 (= e!1594461 (and tp!804461 tp!804460))))

(assert (=> b!2516831 (= tp!804423 e!1594461)))

(declare-fun b!2517002 () Bool)

(declare-fun tp!804462 () Bool)

(declare-fun tp!804459 () Bool)

(assert (=> b!2517002 (= e!1594461 (and tp!804462 tp!804459))))

(declare-fun b!2516999 () Bool)

(assert (=> b!2516999 (= e!1594461 tp_is_empty!12839)))

(assert (= (and b!2516831 (is-ElementMatch!7492 (regTwo!15496 r!27340))) b!2516999))

(assert (= (and b!2516831 (is-Concat!12188 (regTwo!15496 r!27340))) b!2517000))

(assert (= (and b!2516831 (is-Star!7492 (regTwo!15496 r!27340))) b!2517001))

(assert (= (and b!2516831 (is-Union!7492 (regTwo!15496 r!27340))) b!2517002))

(declare-fun b!2517007 () Bool)

(declare-fun e!1594464 () Bool)

(declare-fun tp!804465 () Bool)

(assert (=> b!2517007 (= e!1594464 (and tp_is_empty!12839 tp!804465))))

(assert (=> b!2516830 (= tp!804424 e!1594464)))

(assert (= (and b!2516830 (is-Cons!29457 (t!211256 tl!4068))) b!2517007))

(declare-fun b!2517010 () Bool)

(declare-fun e!1594465 () Bool)

(declare-fun tp!804466 () Bool)

(assert (=> b!2517010 (= e!1594465 tp!804466)))

(declare-fun b!2517009 () Bool)

(declare-fun tp!804469 () Bool)

(declare-fun tp!804468 () Bool)

(assert (=> b!2517009 (= e!1594465 (and tp!804469 tp!804468))))

(assert (=> b!2516823 (= tp!804421 e!1594465)))

(declare-fun b!2517011 () Bool)

(declare-fun tp!804470 () Bool)

(declare-fun tp!804467 () Bool)

(assert (=> b!2517011 (= e!1594465 (and tp!804470 tp!804467))))

(declare-fun b!2517008 () Bool)

(assert (=> b!2517008 (= e!1594465 tp_is_empty!12839)))

(assert (= (and b!2516823 (is-ElementMatch!7492 (reg!7821 r!27340))) b!2517008))

(assert (= (and b!2516823 (is-Concat!12188 (reg!7821 r!27340))) b!2517009))

(assert (= (and b!2516823 (is-Star!7492 (reg!7821 r!27340))) b!2517010))

(assert (= (and b!2516823 (is-Union!7492 (reg!7821 r!27340))) b!2517011))

(declare-fun b!2517014 () Bool)

(declare-fun e!1594466 () Bool)

(declare-fun tp!804471 () Bool)

(assert (=> b!2517014 (= e!1594466 tp!804471)))

(declare-fun b!2517013 () Bool)

(declare-fun tp!804474 () Bool)

(declare-fun tp!804473 () Bool)

(assert (=> b!2517013 (= e!1594466 (and tp!804474 tp!804473))))

(assert (=> b!2516828 (= tp!804422 e!1594466)))

(declare-fun b!2517015 () Bool)

(declare-fun tp!804475 () Bool)

(declare-fun tp!804472 () Bool)

(assert (=> b!2517015 (= e!1594466 (and tp!804475 tp!804472))))

(declare-fun b!2517012 () Bool)

(assert (=> b!2517012 (= e!1594466 tp_is_empty!12839)))

(assert (= (and b!2516828 (is-ElementMatch!7492 (regOne!15497 r!27340))) b!2517012))

(assert (= (and b!2516828 (is-Concat!12188 (regOne!15497 r!27340))) b!2517013))

(assert (= (and b!2516828 (is-Star!7492 (regOne!15497 r!27340))) b!2517014))

(assert (= (and b!2516828 (is-Union!7492 (regOne!15497 r!27340))) b!2517015))

(declare-fun b!2517018 () Bool)

(declare-fun e!1594467 () Bool)

(declare-fun tp!804476 () Bool)

(assert (=> b!2517018 (= e!1594467 tp!804476)))

(declare-fun b!2517017 () Bool)

(declare-fun tp!804479 () Bool)

(declare-fun tp!804478 () Bool)

(assert (=> b!2517017 (= e!1594467 (and tp!804479 tp!804478))))

(assert (=> b!2516828 (= tp!804419 e!1594467)))

(declare-fun b!2517019 () Bool)

(declare-fun tp!804480 () Bool)

(declare-fun tp!804477 () Bool)

(assert (=> b!2517019 (= e!1594467 (and tp!804480 tp!804477))))

(declare-fun b!2517016 () Bool)

(assert (=> b!2517016 (= e!1594467 tp_is_empty!12839)))

(assert (= (and b!2516828 (is-ElementMatch!7492 (regTwo!15497 r!27340))) b!2517016))

(assert (= (and b!2516828 (is-Concat!12188 (regTwo!15497 r!27340))) b!2517017))

(assert (= (and b!2516828 (is-Star!7492 (regTwo!15497 r!27340))) b!2517018))

(assert (= (and b!2516828 (is-Union!7492 (regTwo!15497 r!27340))) b!2517019))

(push 1)

(assert (not b!2517002))

(assert (not b!2516944))

(assert (not b!2517014))

(assert (not bm!156469))

(assert (not b!2517015))

(assert (not b!2516879))

(assert (not b!2516980))

(assert (not b!2517007))

(assert (not b!2517000))

(assert (not b!2516996))

(assert (not b!2516997))

(assert (not bm!156489))

(assert (not b!2517017))

(assert (not bm!156490))

(assert (not bm!156503))

(assert (not b!2516909))

(assert (not d!717434))

(assert (not d!717430))

(assert tp_is_empty!12839)

(assert (not b!2517018))

(assert (not b!2517010))

(assert (not b!2517001))

(assert (not b!2517019))

(assert (not b!2516998))

(assert (not bm!156505))

(assert (not b!2517013))

(assert (not b!2517009))

(assert (not b!2516934))

(assert (not d!717436))

(assert (not d!717438))

(assert (not b!2517011))

(assert (not bm!156488))

(assert (not bm!156468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

