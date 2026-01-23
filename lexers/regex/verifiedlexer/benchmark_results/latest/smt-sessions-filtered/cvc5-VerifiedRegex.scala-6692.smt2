; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!350936 () Bool)

(assert start!350936)

(declare-fun b!3729327 () Bool)

(declare-datatypes ((C!22030 0))(
  ( (C!22031 (val!13063 Int)) )
))
(declare-fun c!13797 () C!22030)

(declare-datatypes ((Regex!10922 0))(
  ( (ElementMatch!10922 (c!645484 C!22030)) (Concat!17193 (regOne!22356 Regex!10922) (regTwo!22356 Regex!10922)) (EmptyExpr!10922) (Star!10922 (reg!11251 Regex!10922)) (EmptyLang!10922) (Union!10922 (regOne!22357 Regex!10922) (regTwo!22357 Regex!10922)) )
))
(declare-fun r!26968 () Regex!10922)

(declare-fun e!2307546 () Bool)

(declare-fun cNot!42 () C!22030)

(declare-datatypes ((List!39803 0))(
  ( (Nil!39679) (Cons!39679 (h!45099 C!22030) (t!302486 List!39803)) )
))
(declare-fun contains!8015 (List!39803 C!22030) Bool)

(declare-fun usedCharacters!1185 (Regex!10922) List!39803)

(declare-fun derivativeStep!3363 (Regex!10922 C!22030) Regex!10922)

(assert (=> b!3729327 (= e!2307546 (not (not (contains!8015 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797)) cNot!42))))))

(assert (=> b!3729327 (not (contains!8015 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57582 0))(
  ( (Unit!57583) )
))
(declare-fun lt!1298599 () Unit!57582)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!47 (Regex!10922 C!22030 C!22030) Unit!57582)

(assert (=> b!3729327 (= lt!1298599 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!47 (reg!11251 r!26968) c!13797 cNot!42))))

(declare-fun b!3729328 () Bool)

(declare-fun e!2307545 () Bool)

(declare-fun tp!1134767 () Bool)

(declare-fun tp!1134766 () Bool)

(assert (=> b!3729328 (= e!2307545 (and tp!1134767 tp!1134766))))

(declare-fun res!1514337 () Bool)

(assert (=> start!350936 (=> (not res!1514337) (not e!2307546))))

(declare-fun validRegex!5029 (Regex!10922) Bool)

(assert (=> start!350936 (= res!1514337 (validRegex!5029 r!26968))))

(assert (=> start!350936 e!2307546))

(assert (=> start!350936 e!2307545))

(declare-fun tp_is_empty!18859 () Bool)

(assert (=> start!350936 tp_is_empty!18859))

(declare-fun b!3729329 () Bool)

(declare-fun res!1514333 () Bool)

(assert (=> b!3729329 (=> (not res!1514333) (not e!2307546))))

(assert (=> b!3729329 (= res!1514333 (not (contains!8015 (usedCharacters!1185 r!26968) cNot!42)))))

(declare-fun b!3729330 () Bool)

(declare-fun res!1514335 () Bool)

(assert (=> b!3729330 (=> (not res!1514335) (not e!2307546))))

(assert (=> b!3729330 (= res!1514335 (not (contains!8015 (usedCharacters!1185 (reg!11251 r!26968)) cNot!42)))))

(declare-fun b!3729331 () Bool)

(declare-fun res!1514336 () Bool)

(assert (=> b!3729331 (=> (not res!1514336) (not e!2307546))))

(assert (=> b!3729331 (= res!1514336 (validRegex!5029 (reg!11251 r!26968)))))

(declare-fun b!3729332 () Bool)

(declare-fun res!1514334 () Bool)

(assert (=> b!3729332 (=> (not res!1514334) (not e!2307546))))

(assert (=> b!3729332 (= res!1514334 (and (not (is-EmptyExpr!10922 r!26968)) (not (is-EmptyLang!10922 r!26968)) (not (is-ElementMatch!10922 r!26968)) (not (is-Union!10922 r!26968)) (is-Star!10922 r!26968)))))

(declare-fun b!3729333 () Bool)

(declare-fun tp!1134765 () Bool)

(assert (=> b!3729333 (= e!2307545 tp!1134765)))

(declare-fun b!3729334 () Bool)

(assert (=> b!3729334 (= e!2307545 tp_is_empty!18859)))

(declare-fun b!3729335 () Bool)

(declare-fun tp!1134769 () Bool)

(declare-fun tp!1134768 () Bool)

(assert (=> b!3729335 (= e!2307545 (and tp!1134769 tp!1134768))))

(assert (= (and start!350936 res!1514337) b!3729329))

(assert (= (and b!3729329 res!1514333) b!3729332))

(assert (= (and b!3729332 res!1514334) b!3729331))

(assert (= (and b!3729331 res!1514336) b!3729330))

(assert (= (and b!3729330 res!1514335) b!3729327))

(assert (= (and start!350936 (is-ElementMatch!10922 r!26968)) b!3729334))

(assert (= (and start!350936 (is-Concat!17193 r!26968)) b!3729328))

(assert (= (and start!350936 (is-Star!10922 r!26968)) b!3729333))

(assert (= (and start!350936 (is-Union!10922 r!26968)) b!3729335))

(declare-fun m!4229405 () Bool)

(assert (=> b!3729327 m!4229405))

(declare-fun m!4229407 () Bool)

(assert (=> b!3729327 m!4229407))

(declare-fun m!4229409 () Bool)

(assert (=> b!3729327 m!4229409))

(declare-fun m!4229411 () Bool)

(assert (=> b!3729327 m!4229411))

(declare-fun m!4229413 () Bool)

(assert (=> b!3729327 m!4229413))

(assert (=> b!3729327 m!4229413))

(declare-fun m!4229415 () Bool)

(assert (=> b!3729327 m!4229415))

(assert (=> b!3729327 m!4229411))

(declare-fun m!4229417 () Bool)

(assert (=> b!3729327 m!4229417))

(assert (=> b!3729327 m!4229407))

(assert (=> b!3729327 m!4229417))

(declare-fun m!4229419 () Bool)

(assert (=> start!350936 m!4229419))

(declare-fun m!4229421 () Bool)

(assert (=> b!3729330 m!4229421))

(assert (=> b!3729330 m!4229421))

(declare-fun m!4229423 () Bool)

(assert (=> b!3729330 m!4229423))

(declare-fun m!4229425 () Bool)

(assert (=> b!3729329 m!4229425))

(assert (=> b!3729329 m!4229425))

(declare-fun m!4229427 () Bool)

(assert (=> b!3729329 m!4229427))

(declare-fun m!4229429 () Bool)

(assert (=> b!3729331 m!4229429))

(push 1)

(assert tp_is_empty!18859)

(assert (not b!3729329))

(assert (not b!3729331))

(assert (not b!3729330))

(assert (not b!3729333))

(assert (not b!3729327))

(assert (not b!3729328))

(assert (not start!350936))

(assert (not b!3729335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1090363 () Bool)

(declare-fun lt!1298605 () Bool)

(declare-fun content!5779 (List!39803) (Set C!22030))

(assert (=> d!1090363 (= lt!1298605 (set.member cNot!42 (content!5779 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))))

(declare-fun e!2307558 () Bool)

(assert (=> d!1090363 (= lt!1298605 e!2307558)))

(declare-fun res!1514357 () Bool)

(assert (=> d!1090363 (=> (not res!1514357) (not e!2307558))))

(assert (=> d!1090363 (= res!1514357 (is-Cons!39679 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))

(assert (=> d!1090363 (= (contains!8015 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) cNot!42) lt!1298605)))

(declare-fun b!3729367 () Bool)

(declare-fun e!2307557 () Bool)

(assert (=> b!3729367 (= e!2307558 e!2307557)))

(declare-fun res!1514358 () Bool)

(assert (=> b!3729367 (=> res!1514358 e!2307557)))

(assert (=> b!3729367 (= res!1514358 (= (h!45099 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797))) cNot!42))))

(declare-fun b!3729368 () Bool)

(assert (=> b!3729368 (= e!2307557 (contains!8015 (t!302486 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1090363 res!1514357) b!3729367))

(assert (= (and b!3729367 (not res!1514358)) b!3729368))

(assert (=> d!1090363 m!4229407))

(declare-fun m!4229457 () Bool)

(assert (=> d!1090363 m!4229457))

(declare-fun m!4229459 () Bool)

(assert (=> d!1090363 m!4229459))

(declare-fun m!4229461 () Bool)

(assert (=> b!3729368 m!4229461))

(assert (=> b!3729327 d!1090363))

(declare-fun b!3729385 () Bool)

(declare-fun e!2307569 () List!39803)

(declare-fun call!272161 () List!39803)

(assert (=> b!3729385 (= e!2307569 call!272161)))

(declare-fun b!3729386 () Bool)

(declare-fun e!2307567 () List!39803)

(assert (=> b!3729386 (= e!2307567 e!2307569)))

(declare-fun c!645495 () Bool)

(assert (=> b!3729386 (= c!645495 (is-Union!10922 (derivativeStep!3363 r!26968 c!13797)))))

(declare-fun bm!272156 () Bool)

(declare-fun call!272163 () List!39803)

(assert (=> bm!272156 (= call!272163 (usedCharacters!1185 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))))))

(declare-fun d!1090365 () Bool)

(declare-fun c!645496 () Bool)

(assert (=> d!1090365 (= c!645496 (or (is-EmptyExpr!10922 (derivativeStep!3363 r!26968 c!13797)) (is-EmptyLang!10922 (derivativeStep!3363 r!26968 c!13797))))))

(declare-fun e!2307568 () List!39803)

(assert (=> d!1090365 (= (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797)) e!2307568)))

(declare-fun b!3729387 () Bool)

(declare-fun e!2307570 () List!39803)

(assert (=> b!3729387 (= e!2307568 e!2307570)))

(declare-fun c!645497 () Bool)

(assert (=> b!3729387 (= c!645497 (is-ElementMatch!10922 (derivativeStep!3363 r!26968 c!13797)))))

(declare-fun b!3729388 () Bool)

(assert (=> b!3729388 (= e!2307568 Nil!39679)))

(declare-fun b!3729389 () Bool)

(assert (=> b!3729389 (= e!2307569 call!272161)))

(declare-fun b!3729390 () Bool)

(assert (=> b!3729390 (= e!2307570 (Cons!39679 (c!645484 (derivativeStep!3363 r!26968 c!13797)) Nil!39679))))

(declare-fun bm!272157 () Bool)

(declare-fun call!272164 () List!39803)

(declare-fun call!272162 () List!39803)

(assert (=> bm!272157 (= call!272164 call!272162)))

(declare-fun bm!272158 () Bool)

(declare-fun ++!9846 (List!39803 List!39803) List!39803)

(assert (=> bm!272158 (= call!272161 (++!9846 (ite c!645495 call!272164 call!272163) (ite c!645495 call!272163 call!272164)))))

(declare-fun b!3729391 () Bool)

(declare-fun c!645494 () Bool)

(assert (=> b!3729391 (= c!645494 (is-Star!10922 (derivativeStep!3363 r!26968 c!13797)))))

(assert (=> b!3729391 (= e!2307570 e!2307567)))

(declare-fun b!3729392 () Bool)

(assert (=> b!3729392 (= e!2307567 call!272162)))

(declare-fun bm!272159 () Bool)

(assert (=> bm!272159 (= call!272162 (usedCharacters!1185 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))))))

(assert (= (and d!1090365 c!645496) b!3729388))

(assert (= (and d!1090365 (not c!645496)) b!3729387))

(assert (= (and b!3729387 c!645497) b!3729390))

(assert (= (and b!3729387 (not c!645497)) b!3729391))

(assert (= (and b!3729391 c!645494) b!3729392))

(assert (= (and b!3729391 (not c!645494)) b!3729386))

(assert (= (and b!3729386 c!645495) b!3729385))

(assert (= (and b!3729386 (not c!645495)) b!3729389))

(assert (= (or b!3729385 b!3729389) bm!272157))

(assert (= (or b!3729385 b!3729389) bm!272156))

(assert (= (or b!3729385 b!3729389) bm!272158))

(assert (= (or b!3729392 bm!272157) bm!272159))

(declare-fun m!4229463 () Bool)

(assert (=> bm!272156 m!4229463))

(declare-fun m!4229465 () Bool)

(assert (=> bm!272158 m!4229465))

(declare-fun m!4229467 () Bool)

(assert (=> bm!272159 m!4229467))

(assert (=> b!3729327 d!1090365))

(declare-fun d!1090369 () Bool)

(declare-fun lt!1298606 () Bool)

(assert (=> d!1090369 (= lt!1298606 (set.member cNot!42 (content!5779 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797)))))))

(declare-fun e!2307572 () Bool)

(assert (=> d!1090369 (= lt!1298606 e!2307572)))

(declare-fun res!1514359 () Bool)

(assert (=> d!1090369 (=> (not res!1514359) (not e!2307572))))

(assert (=> d!1090369 (= res!1514359 (is-Cons!39679 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797))))))

(assert (=> d!1090369 (= (contains!8015 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797)) cNot!42) lt!1298606)))

(declare-fun b!3729393 () Bool)

(declare-fun e!2307571 () Bool)

(assert (=> b!3729393 (= e!2307572 e!2307571)))

(declare-fun res!1514360 () Bool)

(assert (=> b!3729393 (=> res!1514360 e!2307571)))

(assert (=> b!3729393 (= res!1514360 (= (h!45099 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797))) cNot!42))))

(declare-fun b!3729394 () Bool)

(assert (=> b!3729394 (= e!2307571 (contains!8015 (t!302486 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797))) cNot!42))))

(assert (= (and d!1090369 res!1514359) b!3729393))

(assert (= (and b!3729393 (not res!1514360)) b!3729394))

(assert (=> d!1090369 m!4229413))

(declare-fun m!4229469 () Bool)

(assert (=> d!1090369 m!4229469))

(declare-fun m!4229471 () Bool)

(assert (=> d!1090369 m!4229471))

(declare-fun m!4229473 () Bool)

(assert (=> b!3729394 m!4229473))

(assert (=> b!3729327 d!1090369))

(declare-fun d!1090371 () Bool)

(assert (=> d!1090371 (not (contains!8015 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298611 () Unit!57582)

(declare-fun choose!22230 (Regex!10922 C!22030 C!22030) Unit!57582)

(assert (=> d!1090371 (= lt!1298611 (choose!22230 (reg!11251 r!26968) c!13797 cNot!42))))

(assert (=> d!1090371 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!47 (reg!11251 r!26968) c!13797 cNot!42) lt!1298611)))

(declare-fun bs!575072 () Bool)

(assert (= bs!575072 d!1090371))

(assert (=> bs!575072 m!4229417))

(assert (=> bs!575072 m!4229417))

(assert (=> bs!575072 m!4229407))

(assert (=> bs!575072 m!4229407))

(assert (=> bs!575072 m!4229409))

(declare-fun m!4229475 () Bool)

(assert (=> bs!575072 m!4229475))

(assert (=> b!3729327 d!1090371))

(declare-fun b!3729437 () Bool)

(declare-fun e!2307598 () Regex!10922)

(declare-fun call!272182 () Regex!10922)

(declare-fun call!272181 () Regex!10922)

(assert (=> b!3729437 (= e!2307598 (Union!10922 call!272182 call!272181))))

(declare-fun bm!272176 () Bool)

(declare-fun call!272183 () Regex!10922)

(assert (=> bm!272176 (= call!272183 call!272181)))

(declare-fun bm!272177 () Bool)

(declare-fun call!272184 () Regex!10922)

(assert (=> bm!272177 (= call!272184 call!272182)))

(declare-fun b!3729438 () Bool)

(declare-fun e!2307597 () Regex!10922)

(assert (=> b!3729438 (= e!2307597 (Union!10922 (Concat!17193 call!272183 (regTwo!22356 r!26968)) EmptyLang!10922))))

(declare-fun b!3729439 () Bool)

(declare-fun e!2307600 () Regex!10922)

(assert (=> b!3729439 (= e!2307598 e!2307600)))

(declare-fun c!645518 () Bool)

(assert (=> b!3729439 (= c!645518 (is-Star!10922 r!26968))))

(declare-fun bm!272178 () Bool)

(declare-fun c!645521 () Bool)

(declare-fun c!645519 () Bool)

(assert (=> bm!272178 (= call!272181 (derivativeStep!3363 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968))) c!13797))))

(declare-fun b!3729440 () Bool)

(declare-fun e!2307599 () Regex!10922)

(assert (=> b!3729440 (= e!2307599 (ite (= c!13797 (c!645484 r!26968)) EmptyExpr!10922 EmptyLang!10922))))

(declare-fun b!3729441 () Bool)

(assert (=> b!3729441 (= e!2307597 (Union!10922 (Concat!17193 call!272184 (regTwo!22356 r!26968)) call!272183))))

(declare-fun bm!272179 () Bool)

(assert (=> bm!272179 (= call!272182 (derivativeStep!3363 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968))) c!13797))))

(declare-fun d!1090373 () Bool)

(declare-fun lt!1298615 () Regex!10922)

(assert (=> d!1090373 (validRegex!5029 lt!1298615)))

(declare-fun e!2307601 () Regex!10922)

(assert (=> d!1090373 (= lt!1298615 e!2307601)))

(declare-fun c!645517 () Bool)

(assert (=> d!1090373 (= c!645517 (or (is-EmptyExpr!10922 r!26968) (is-EmptyLang!10922 r!26968)))))

(assert (=> d!1090373 (validRegex!5029 r!26968)))

(assert (=> d!1090373 (= (derivativeStep!3363 r!26968 c!13797) lt!1298615)))

(declare-fun b!3729442 () Bool)

(assert (=> b!3729442 (= e!2307601 EmptyLang!10922)))

(declare-fun b!3729443 () Bool)

(assert (=> b!3729443 (= e!2307601 e!2307599)))

(declare-fun c!645520 () Bool)

(assert (=> b!3729443 (= c!645520 (is-ElementMatch!10922 r!26968))))

(declare-fun b!3729444 () Bool)

(declare-fun nullable!3830 (Regex!10922) Bool)

(assert (=> b!3729444 (= c!645519 (nullable!3830 (regOne!22356 r!26968)))))

(assert (=> b!3729444 (= e!2307600 e!2307597)))

(declare-fun b!3729445 () Bool)

(assert (=> b!3729445 (= e!2307600 (Concat!17193 call!272184 r!26968))))

(declare-fun b!3729446 () Bool)

(assert (=> b!3729446 (= c!645521 (is-Union!10922 r!26968))))

(assert (=> b!3729446 (= e!2307599 e!2307598)))

(assert (= (and d!1090373 c!645517) b!3729442))

(assert (= (and d!1090373 (not c!645517)) b!3729443))

(assert (= (and b!3729443 c!645520) b!3729440))

(assert (= (and b!3729443 (not c!645520)) b!3729446))

(assert (= (and b!3729446 c!645521) b!3729437))

(assert (= (and b!3729446 (not c!645521)) b!3729439))

(assert (= (and b!3729439 c!645518) b!3729445))

(assert (= (and b!3729439 (not c!645518)) b!3729444))

(assert (= (and b!3729444 c!645519) b!3729441))

(assert (= (and b!3729444 (not c!645519)) b!3729438))

(assert (= (or b!3729441 b!3729438) bm!272176))

(assert (= (or b!3729445 b!3729441) bm!272177))

(assert (= (or b!3729437 bm!272177) bm!272179))

(assert (= (or b!3729437 bm!272176) bm!272178))

(declare-fun m!4229483 () Bool)

(assert (=> bm!272178 m!4229483))

(declare-fun m!4229485 () Bool)

(assert (=> bm!272179 m!4229485))

(declare-fun m!4229487 () Bool)

(assert (=> d!1090373 m!4229487))

(assert (=> d!1090373 m!4229419))

(declare-fun m!4229489 () Bool)

(assert (=> b!3729444 m!4229489))

(assert (=> b!3729327 d!1090373))

(declare-fun b!3729447 () Bool)

(declare-fun e!2307603 () Regex!10922)

(declare-fun call!272186 () Regex!10922)

(declare-fun call!272185 () Regex!10922)

(assert (=> b!3729447 (= e!2307603 (Union!10922 call!272186 call!272185))))

(declare-fun bm!272180 () Bool)

(declare-fun call!272187 () Regex!10922)

(assert (=> bm!272180 (= call!272187 call!272185)))

(declare-fun bm!272181 () Bool)

(declare-fun call!272188 () Regex!10922)

(assert (=> bm!272181 (= call!272188 call!272186)))

(declare-fun b!3729448 () Bool)

(declare-fun e!2307602 () Regex!10922)

(assert (=> b!3729448 (= e!2307602 (Union!10922 (Concat!17193 call!272187 (regTwo!22356 (reg!11251 r!26968))) EmptyLang!10922))))

(declare-fun b!3729449 () Bool)

(declare-fun e!2307605 () Regex!10922)

(assert (=> b!3729449 (= e!2307603 e!2307605)))

(declare-fun c!645523 () Bool)

(assert (=> b!3729449 (= c!645523 (is-Star!10922 (reg!11251 r!26968)))))

(declare-fun bm!272182 () Bool)

(declare-fun c!645524 () Bool)

(declare-fun c!645526 () Bool)

(assert (=> bm!272182 (= call!272185 (derivativeStep!3363 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) c!13797))))

(declare-fun b!3729450 () Bool)

(declare-fun e!2307604 () Regex!10922)

(assert (=> b!3729450 (= e!2307604 (ite (= c!13797 (c!645484 (reg!11251 r!26968))) EmptyExpr!10922 EmptyLang!10922))))

(declare-fun b!3729451 () Bool)

(assert (=> b!3729451 (= e!2307602 (Union!10922 (Concat!17193 call!272188 (regTwo!22356 (reg!11251 r!26968))) call!272187))))

(declare-fun bm!272183 () Bool)

(assert (=> bm!272183 (= call!272186 (derivativeStep!3363 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) c!13797))))

(declare-fun d!1090377 () Bool)

(declare-fun lt!1298616 () Regex!10922)

(assert (=> d!1090377 (validRegex!5029 lt!1298616)))

(declare-fun e!2307606 () Regex!10922)

(assert (=> d!1090377 (= lt!1298616 e!2307606)))

(declare-fun c!645522 () Bool)

(assert (=> d!1090377 (= c!645522 (or (is-EmptyExpr!10922 (reg!11251 r!26968)) (is-EmptyLang!10922 (reg!11251 r!26968))))))

(assert (=> d!1090377 (validRegex!5029 (reg!11251 r!26968))))

(assert (=> d!1090377 (= (derivativeStep!3363 (reg!11251 r!26968) c!13797) lt!1298616)))

(declare-fun b!3729452 () Bool)

(assert (=> b!3729452 (= e!2307606 EmptyLang!10922)))

(declare-fun b!3729453 () Bool)

(assert (=> b!3729453 (= e!2307606 e!2307604)))

(declare-fun c!645525 () Bool)

(assert (=> b!3729453 (= c!645525 (is-ElementMatch!10922 (reg!11251 r!26968)))))

(declare-fun b!3729454 () Bool)

(assert (=> b!3729454 (= c!645524 (nullable!3830 (regOne!22356 (reg!11251 r!26968))))))

(assert (=> b!3729454 (= e!2307605 e!2307602)))

(declare-fun b!3729455 () Bool)

(assert (=> b!3729455 (= e!2307605 (Concat!17193 call!272188 (reg!11251 r!26968)))))

(declare-fun b!3729456 () Bool)

(assert (=> b!3729456 (= c!645526 (is-Union!10922 (reg!11251 r!26968)))))

(assert (=> b!3729456 (= e!2307604 e!2307603)))

(assert (= (and d!1090377 c!645522) b!3729452))

(assert (= (and d!1090377 (not c!645522)) b!3729453))

(assert (= (and b!3729453 c!645525) b!3729450))

(assert (= (and b!3729453 (not c!645525)) b!3729456))

(assert (= (and b!3729456 c!645526) b!3729447))

(assert (= (and b!3729456 (not c!645526)) b!3729449))

(assert (= (and b!3729449 c!645523) b!3729455))

(assert (= (and b!3729449 (not c!645523)) b!3729454))

(assert (= (and b!3729454 c!645524) b!3729451))

(assert (= (and b!3729454 (not c!645524)) b!3729448))

(assert (= (or b!3729451 b!3729448) bm!272180))

(assert (= (or b!3729455 b!3729451) bm!272181))

(assert (= (or b!3729447 bm!272181) bm!272183))

(assert (= (or b!3729447 bm!272180) bm!272182))

(declare-fun m!4229491 () Bool)

(assert (=> bm!272182 m!4229491))

(declare-fun m!4229493 () Bool)

(assert (=> bm!272183 m!4229493))

(declare-fun m!4229495 () Bool)

(assert (=> d!1090377 m!4229495))

(assert (=> d!1090377 m!4229429))

(declare-fun m!4229497 () Bool)

(assert (=> b!3729454 m!4229497))

(assert (=> b!3729327 d!1090377))

(declare-fun b!3729457 () Bool)

(declare-fun e!2307609 () List!39803)

(declare-fun call!272189 () List!39803)

(assert (=> b!3729457 (= e!2307609 call!272189)))

(declare-fun b!3729458 () Bool)

(declare-fun e!2307607 () List!39803)

(assert (=> b!3729458 (= e!2307607 e!2307609)))

(declare-fun c!645528 () Bool)

(assert (=> b!3729458 (= c!645528 (is-Union!10922 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))

(declare-fun call!272191 () List!39803)

(declare-fun bm!272184 () Bool)

(assert (=> bm!272184 (= call!272191 (usedCharacters!1185 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))))

(declare-fun d!1090379 () Bool)

(declare-fun c!645529 () Bool)

(assert (=> d!1090379 (= c!645529 (or (is-EmptyExpr!10922 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (is-EmptyLang!10922 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))

(declare-fun e!2307608 () List!39803)

(assert (=> d!1090379 (= (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) e!2307608)))

(declare-fun b!3729459 () Bool)

(declare-fun e!2307610 () List!39803)

(assert (=> b!3729459 (= e!2307608 e!2307610)))

(declare-fun c!645530 () Bool)

(assert (=> b!3729459 (= c!645530 (is-ElementMatch!10922 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))

(declare-fun b!3729460 () Bool)

(assert (=> b!3729460 (= e!2307608 Nil!39679)))

(declare-fun b!3729461 () Bool)

(assert (=> b!3729461 (= e!2307609 call!272189)))

(declare-fun b!3729462 () Bool)

(assert (=> b!3729462 (= e!2307610 (Cons!39679 (c!645484 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) Nil!39679))))

(declare-fun bm!272185 () Bool)

(declare-fun call!272192 () List!39803)

(declare-fun call!272190 () List!39803)

(assert (=> bm!272185 (= call!272192 call!272190)))

(declare-fun bm!272186 () Bool)

(assert (=> bm!272186 (= call!272189 (++!9846 (ite c!645528 call!272192 call!272191) (ite c!645528 call!272191 call!272192)))))

(declare-fun b!3729463 () Bool)

(declare-fun c!645527 () Bool)

(assert (=> b!3729463 (= c!645527 (is-Star!10922 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))

(assert (=> b!3729463 (= e!2307610 e!2307607)))

(declare-fun b!3729464 () Bool)

(assert (=> b!3729464 (= e!2307607 call!272190)))

(declare-fun bm!272187 () Bool)

(assert (=> bm!272187 (= call!272190 (usedCharacters!1185 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))))

(assert (= (and d!1090379 c!645529) b!3729460))

(assert (= (and d!1090379 (not c!645529)) b!3729459))

(assert (= (and b!3729459 c!645530) b!3729462))

(assert (= (and b!3729459 (not c!645530)) b!3729463))

(assert (= (and b!3729463 c!645527) b!3729464))

(assert (= (and b!3729463 (not c!645527)) b!3729458))

(assert (= (and b!3729458 c!645528) b!3729457))

(assert (= (and b!3729458 (not c!645528)) b!3729461))

(assert (= (or b!3729457 b!3729461) bm!272185))

(assert (= (or b!3729457 b!3729461) bm!272184))

(assert (= (or b!3729457 b!3729461) bm!272186))

(assert (= (or b!3729464 bm!272185) bm!272187))

(declare-fun m!4229499 () Bool)

(assert (=> bm!272184 m!4229499))

(declare-fun m!4229501 () Bool)

(assert (=> bm!272186 m!4229501))

(declare-fun m!4229503 () Bool)

(assert (=> bm!272187 m!4229503))

(assert (=> b!3729327 d!1090379))

(declare-fun bm!272202 () Bool)

(declare-fun call!272209 () Bool)

(declare-fun call!272207 () Bool)

(assert (=> bm!272202 (= call!272209 call!272207)))

(declare-fun b!3729502 () Bool)

(declare-fun res!1514381 () Bool)

(declare-fun e!2307638 () Bool)

(assert (=> b!3729502 (=> (not res!1514381) (not e!2307638))))

(declare-fun call!272208 () Bool)

(assert (=> b!3729502 (= res!1514381 call!272208)))

(declare-fun e!2307637 () Bool)

(assert (=> b!3729502 (= e!2307637 e!2307638)))

(declare-fun b!3729503 () Bool)

(declare-fun e!2307636 () Bool)

(assert (=> b!3729503 (= e!2307636 e!2307637)))

(declare-fun c!645544 () Bool)

(assert (=> b!3729503 (= c!645544 (is-Union!10922 (reg!11251 r!26968)))))

(declare-fun b!3729504 () Bool)

(declare-fun e!2307640 () Bool)

(declare-fun e!2307639 () Bool)

(assert (=> b!3729504 (= e!2307640 e!2307639)))

(declare-fun res!1514382 () Bool)

(assert (=> b!3729504 (=> (not res!1514382) (not e!2307639))))

(assert (=> b!3729504 (= res!1514382 call!272208)))

(declare-fun b!3729505 () Bool)

(assert (=> b!3729505 (= e!2307638 call!272209)))

(declare-fun b!3729506 () Bool)

(declare-fun e!2307635 () Bool)

(assert (=> b!3729506 (= e!2307635 call!272207)))

(declare-fun b!3729507 () Bool)

(assert (=> b!3729507 (= e!2307639 call!272209)))

(declare-fun bm!272203 () Bool)

(assert (=> bm!272203 (= call!272208 (validRegex!5029 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(declare-fun bm!272204 () Bool)

(declare-fun c!645543 () Bool)

(assert (=> bm!272204 (= call!272207 (validRegex!5029 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))

(declare-fun d!1090381 () Bool)

(declare-fun res!1514380 () Bool)

(declare-fun e!2307641 () Bool)

(assert (=> d!1090381 (=> res!1514380 e!2307641)))

(assert (=> d!1090381 (= res!1514380 (is-ElementMatch!10922 (reg!11251 r!26968)))))

(assert (=> d!1090381 (= (validRegex!5029 (reg!11251 r!26968)) e!2307641)))

(declare-fun b!3729501 () Bool)

(assert (=> b!3729501 (= e!2307641 e!2307636)))

(assert (=> b!3729501 (= c!645543 (is-Star!10922 (reg!11251 r!26968)))))

(declare-fun b!3729508 () Bool)

(assert (=> b!3729508 (= e!2307636 e!2307635)))

(declare-fun res!1514383 () Bool)

(assert (=> b!3729508 (= res!1514383 (not (nullable!3830 (reg!11251 (reg!11251 r!26968)))))))

(assert (=> b!3729508 (=> (not res!1514383) (not e!2307635))))

(declare-fun b!3729509 () Bool)

(declare-fun res!1514379 () Bool)

(assert (=> b!3729509 (=> res!1514379 e!2307640)))

(assert (=> b!3729509 (= res!1514379 (not (is-Concat!17193 (reg!11251 r!26968))))))

(assert (=> b!3729509 (= e!2307637 e!2307640)))

(assert (= (and d!1090381 (not res!1514380)) b!3729501))

(assert (= (and b!3729501 c!645543) b!3729508))

(assert (= (and b!3729501 (not c!645543)) b!3729503))

(assert (= (and b!3729508 res!1514383) b!3729506))

(assert (= (and b!3729503 c!645544) b!3729502))

(assert (= (and b!3729503 (not c!645544)) b!3729509))

(assert (= (and b!3729502 res!1514381) b!3729505))

(assert (= (and b!3729509 (not res!1514379)) b!3729504))

(assert (= (and b!3729504 res!1514382) b!3729507))

(assert (= (or b!3729505 b!3729507) bm!272202))

(assert (= (or b!3729502 b!3729504) bm!272203))

(assert (= (or b!3729506 bm!272202) bm!272204))

(declare-fun m!4229517 () Bool)

(assert (=> bm!272203 m!4229517))

(declare-fun m!4229519 () Bool)

(assert (=> bm!272204 m!4229519))

(declare-fun m!4229521 () Bool)

(assert (=> b!3729508 m!4229521))

(assert (=> b!3729331 d!1090381))

(declare-fun bm!272205 () Bool)

(declare-fun call!272212 () Bool)

(declare-fun call!272210 () Bool)

(assert (=> bm!272205 (= call!272212 call!272210)))

(declare-fun b!3729511 () Bool)

(declare-fun res!1514386 () Bool)

(declare-fun e!2307645 () Bool)

(assert (=> b!3729511 (=> (not res!1514386) (not e!2307645))))

(declare-fun call!272211 () Bool)

(assert (=> b!3729511 (= res!1514386 call!272211)))

(declare-fun e!2307644 () Bool)

(assert (=> b!3729511 (= e!2307644 e!2307645)))

(declare-fun b!3729512 () Bool)

(declare-fun e!2307643 () Bool)

(assert (=> b!3729512 (= e!2307643 e!2307644)))

(declare-fun c!645546 () Bool)

(assert (=> b!3729512 (= c!645546 (is-Union!10922 r!26968))))

(declare-fun b!3729513 () Bool)

(declare-fun e!2307647 () Bool)

(declare-fun e!2307646 () Bool)

(assert (=> b!3729513 (= e!2307647 e!2307646)))

(declare-fun res!1514387 () Bool)

(assert (=> b!3729513 (=> (not res!1514387) (not e!2307646))))

(assert (=> b!3729513 (= res!1514387 call!272211)))

(declare-fun b!3729514 () Bool)

(assert (=> b!3729514 (= e!2307645 call!272212)))

(declare-fun b!3729515 () Bool)

(declare-fun e!2307642 () Bool)

(assert (=> b!3729515 (= e!2307642 call!272210)))

(declare-fun b!3729516 () Bool)

(assert (=> b!3729516 (= e!2307646 call!272212)))

(declare-fun bm!272206 () Bool)

(assert (=> bm!272206 (= call!272211 (validRegex!5029 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))))))

(declare-fun c!645545 () Bool)

(declare-fun bm!272207 () Bool)

(assert (=> bm!272207 (= call!272210 (validRegex!5029 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))))))

(declare-fun d!1090387 () Bool)

(declare-fun res!1514385 () Bool)

(declare-fun e!2307648 () Bool)

(assert (=> d!1090387 (=> res!1514385 e!2307648)))

(assert (=> d!1090387 (= res!1514385 (is-ElementMatch!10922 r!26968))))

(assert (=> d!1090387 (= (validRegex!5029 r!26968) e!2307648)))

(declare-fun b!3729510 () Bool)

(assert (=> b!3729510 (= e!2307648 e!2307643)))

(assert (=> b!3729510 (= c!645545 (is-Star!10922 r!26968))))

(declare-fun b!3729517 () Bool)

(assert (=> b!3729517 (= e!2307643 e!2307642)))

(declare-fun res!1514388 () Bool)

(assert (=> b!3729517 (= res!1514388 (not (nullable!3830 (reg!11251 r!26968))))))

(assert (=> b!3729517 (=> (not res!1514388) (not e!2307642))))

(declare-fun b!3729518 () Bool)

(declare-fun res!1514384 () Bool)

(assert (=> b!3729518 (=> res!1514384 e!2307647)))

(assert (=> b!3729518 (= res!1514384 (not (is-Concat!17193 r!26968)))))

(assert (=> b!3729518 (= e!2307644 e!2307647)))

(assert (= (and d!1090387 (not res!1514385)) b!3729510))

(assert (= (and b!3729510 c!645545) b!3729517))

(assert (= (and b!3729510 (not c!645545)) b!3729512))

(assert (= (and b!3729517 res!1514388) b!3729515))

(assert (= (and b!3729512 c!645546) b!3729511))

(assert (= (and b!3729512 (not c!645546)) b!3729518))

(assert (= (and b!3729511 res!1514386) b!3729514))

(assert (= (and b!3729518 (not res!1514384)) b!3729513))

(assert (= (and b!3729513 res!1514387) b!3729516))

(assert (= (or b!3729514 b!3729516) bm!272205))

(assert (= (or b!3729511 b!3729513) bm!272206))

(assert (= (or b!3729515 bm!272205) bm!272207))

(declare-fun m!4229529 () Bool)

(assert (=> bm!272206 m!4229529))

(declare-fun m!4229531 () Bool)

(assert (=> bm!272207 m!4229531))

(declare-fun m!4229533 () Bool)

(assert (=> b!3729517 m!4229533))

(assert (=> start!350936 d!1090387))

(declare-fun d!1090391 () Bool)

(declare-fun lt!1298619 () Bool)

(assert (=> d!1090391 (= lt!1298619 (set.member cNot!42 (content!5779 (usedCharacters!1185 (reg!11251 r!26968)))))))

(declare-fun e!2307652 () Bool)

(assert (=> d!1090391 (= lt!1298619 e!2307652)))

(declare-fun res!1514391 () Bool)

(assert (=> d!1090391 (=> (not res!1514391) (not e!2307652))))

(assert (=> d!1090391 (= res!1514391 (is-Cons!39679 (usedCharacters!1185 (reg!11251 r!26968))))))

(assert (=> d!1090391 (= (contains!8015 (usedCharacters!1185 (reg!11251 r!26968)) cNot!42) lt!1298619)))

(declare-fun b!3729521 () Bool)

(declare-fun e!2307651 () Bool)

(assert (=> b!3729521 (= e!2307652 e!2307651)))

(declare-fun res!1514392 () Bool)

(assert (=> b!3729521 (=> res!1514392 e!2307651)))

(assert (=> b!3729521 (= res!1514392 (= (h!45099 (usedCharacters!1185 (reg!11251 r!26968))) cNot!42))))

(declare-fun b!3729522 () Bool)

(assert (=> b!3729522 (= e!2307651 (contains!8015 (t!302486 (usedCharacters!1185 (reg!11251 r!26968))) cNot!42))))

(assert (= (and d!1090391 res!1514391) b!3729521))

(assert (= (and b!3729521 (not res!1514392)) b!3729522))

(assert (=> d!1090391 m!4229421))

(declare-fun m!4229535 () Bool)

(assert (=> d!1090391 m!4229535))

(declare-fun m!4229537 () Bool)

(assert (=> d!1090391 m!4229537))

(declare-fun m!4229539 () Bool)

(assert (=> b!3729522 m!4229539))

(assert (=> b!3729330 d!1090391))

(declare-fun b!3729523 () Bool)

(declare-fun e!2307655 () List!39803)

(declare-fun call!272213 () List!39803)

(assert (=> b!3729523 (= e!2307655 call!272213)))

(declare-fun b!3729524 () Bool)

(declare-fun e!2307653 () List!39803)

(assert (=> b!3729524 (= e!2307653 e!2307655)))

(declare-fun c!645548 () Bool)

(assert (=> b!3729524 (= c!645548 (is-Union!10922 (reg!11251 r!26968)))))

(declare-fun bm!272208 () Bool)

(declare-fun call!272215 () List!39803)

(assert (=> bm!272208 (= call!272215 (usedCharacters!1185 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(declare-fun d!1090393 () Bool)

(declare-fun c!645549 () Bool)

(assert (=> d!1090393 (= c!645549 (or (is-EmptyExpr!10922 (reg!11251 r!26968)) (is-EmptyLang!10922 (reg!11251 r!26968))))))

(declare-fun e!2307654 () List!39803)

(assert (=> d!1090393 (= (usedCharacters!1185 (reg!11251 r!26968)) e!2307654)))

(declare-fun b!3729525 () Bool)

(declare-fun e!2307656 () List!39803)

(assert (=> b!3729525 (= e!2307654 e!2307656)))

(declare-fun c!645550 () Bool)

(assert (=> b!3729525 (= c!645550 (is-ElementMatch!10922 (reg!11251 r!26968)))))

(declare-fun b!3729526 () Bool)

(assert (=> b!3729526 (= e!2307654 Nil!39679)))

(declare-fun b!3729527 () Bool)

(assert (=> b!3729527 (= e!2307655 call!272213)))

(declare-fun b!3729528 () Bool)

(assert (=> b!3729528 (= e!2307656 (Cons!39679 (c!645484 (reg!11251 r!26968)) Nil!39679))))

(declare-fun bm!272209 () Bool)

(declare-fun call!272216 () List!39803)

(declare-fun call!272214 () List!39803)

(assert (=> bm!272209 (= call!272216 call!272214)))

(declare-fun bm!272210 () Bool)

(assert (=> bm!272210 (= call!272213 (++!9846 (ite c!645548 call!272216 call!272215) (ite c!645548 call!272215 call!272216)))))

(declare-fun b!3729529 () Bool)

(declare-fun c!645547 () Bool)

(assert (=> b!3729529 (= c!645547 (is-Star!10922 (reg!11251 r!26968)))))

(assert (=> b!3729529 (= e!2307656 e!2307653)))

(declare-fun b!3729530 () Bool)

(assert (=> b!3729530 (= e!2307653 call!272214)))

(declare-fun bm!272211 () Bool)

(assert (=> bm!272211 (= call!272214 (usedCharacters!1185 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))

(assert (= (and d!1090393 c!645549) b!3729526))

(assert (= (and d!1090393 (not c!645549)) b!3729525))

(assert (= (and b!3729525 c!645550) b!3729528))

(assert (= (and b!3729525 (not c!645550)) b!3729529))

(assert (= (and b!3729529 c!645547) b!3729530))

(assert (= (and b!3729529 (not c!645547)) b!3729524))

(assert (= (and b!3729524 c!645548) b!3729523))

(assert (= (and b!3729524 (not c!645548)) b!3729527))

(assert (= (or b!3729523 b!3729527) bm!272209))

(assert (= (or b!3729523 b!3729527) bm!272208))

(assert (= (or b!3729523 b!3729527) bm!272210))

(assert (= (or b!3729530 bm!272209) bm!272211))

(declare-fun m!4229547 () Bool)

(assert (=> bm!272208 m!4229547))

(declare-fun m!4229549 () Bool)

(assert (=> bm!272210 m!4229549))

(declare-fun m!4229551 () Bool)

(assert (=> bm!272211 m!4229551))

(assert (=> b!3729330 d!1090393))

(declare-fun d!1090397 () Bool)

(declare-fun lt!1298620 () Bool)

(assert (=> d!1090397 (= lt!1298620 (set.member cNot!42 (content!5779 (usedCharacters!1185 r!26968))))))

(declare-fun e!2307658 () Bool)

(assert (=> d!1090397 (= lt!1298620 e!2307658)))

(declare-fun res!1514393 () Bool)

(assert (=> d!1090397 (=> (not res!1514393) (not e!2307658))))

(assert (=> d!1090397 (= res!1514393 (is-Cons!39679 (usedCharacters!1185 r!26968)))))

(assert (=> d!1090397 (= (contains!8015 (usedCharacters!1185 r!26968) cNot!42) lt!1298620)))

(declare-fun b!3729531 () Bool)

(declare-fun e!2307657 () Bool)

(assert (=> b!3729531 (= e!2307658 e!2307657)))

(declare-fun res!1514394 () Bool)

(assert (=> b!3729531 (=> res!1514394 e!2307657)))

(assert (=> b!3729531 (= res!1514394 (= (h!45099 (usedCharacters!1185 r!26968)) cNot!42))))

(declare-fun b!3729532 () Bool)

(assert (=> b!3729532 (= e!2307657 (contains!8015 (t!302486 (usedCharacters!1185 r!26968)) cNot!42))))

(assert (= (and d!1090397 res!1514393) b!3729531))

(assert (= (and b!3729531 (not res!1514394)) b!3729532))

(assert (=> d!1090397 m!4229425))

(declare-fun m!4229553 () Bool)

(assert (=> d!1090397 m!4229553))

(declare-fun m!4229555 () Bool)

(assert (=> d!1090397 m!4229555))

(declare-fun m!4229557 () Bool)

(assert (=> b!3729532 m!4229557))

(assert (=> b!3729329 d!1090397))

(declare-fun b!3729533 () Bool)

(declare-fun e!2307661 () List!39803)

(declare-fun call!272217 () List!39803)

(assert (=> b!3729533 (= e!2307661 call!272217)))

(declare-fun b!3729534 () Bool)

(declare-fun e!2307659 () List!39803)

(assert (=> b!3729534 (= e!2307659 e!2307661)))

(declare-fun c!645552 () Bool)

(assert (=> b!3729534 (= c!645552 (is-Union!10922 r!26968))))

(declare-fun bm!272212 () Bool)

(declare-fun call!272219 () List!39803)

(assert (=> bm!272212 (= call!272219 (usedCharacters!1185 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))))))

(declare-fun d!1090399 () Bool)

(declare-fun c!645553 () Bool)

(assert (=> d!1090399 (= c!645553 (or (is-EmptyExpr!10922 r!26968) (is-EmptyLang!10922 r!26968)))))

(declare-fun e!2307660 () List!39803)

(assert (=> d!1090399 (= (usedCharacters!1185 r!26968) e!2307660)))

(declare-fun b!3729535 () Bool)

(declare-fun e!2307662 () List!39803)

(assert (=> b!3729535 (= e!2307660 e!2307662)))

(declare-fun c!645554 () Bool)

(assert (=> b!3729535 (= c!645554 (is-ElementMatch!10922 r!26968))))

(declare-fun b!3729536 () Bool)

(assert (=> b!3729536 (= e!2307660 Nil!39679)))

(declare-fun b!3729537 () Bool)

(assert (=> b!3729537 (= e!2307661 call!272217)))

(declare-fun b!3729538 () Bool)

(assert (=> b!3729538 (= e!2307662 (Cons!39679 (c!645484 r!26968) Nil!39679))))

(declare-fun bm!272213 () Bool)

(declare-fun call!272220 () List!39803)

(declare-fun call!272218 () List!39803)

(assert (=> bm!272213 (= call!272220 call!272218)))

(declare-fun bm!272214 () Bool)

(assert (=> bm!272214 (= call!272217 (++!9846 (ite c!645552 call!272220 call!272219) (ite c!645552 call!272219 call!272220)))))

(declare-fun b!3729539 () Bool)

(declare-fun c!645551 () Bool)

(assert (=> b!3729539 (= c!645551 (is-Star!10922 r!26968))))

(assert (=> b!3729539 (= e!2307662 e!2307659)))

(declare-fun b!3729540 () Bool)

(assert (=> b!3729540 (= e!2307659 call!272218)))

(declare-fun bm!272215 () Bool)

(assert (=> bm!272215 (= call!272218 (usedCharacters!1185 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))))))

(assert (= (and d!1090399 c!645553) b!3729536))

(assert (= (and d!1090399 (not c!645553)) b!3729535))

(assert (= (and b!3729535 c!645554) b!3729538))

(assert (= (and b!3729535 (not c!645554)) b!3729539))

(assert (= (and b!3729539 c!645551) b!3729540))

(assert (= (and b!3729539 (not c!645551)) b!3729534))

(assert (= (and b!3729534 c!645552) b!3729533))

(assert (= (and b!3729534 (not c!645552)) b!3729537))

(assert (= (or b!3729533 b!3729537) bm!272213))

(assert (= (or b!3729533 b!3729537) bm!272212))

(assert (= (or b!3729533 b!3729537) bm!272214))

(assert (= (or b!3729540 bm!272213) bm!272215))

(declare-fun m!4229559 () Bool)

(assert (=> bm!272212 m!4229559))

(declare-fun m!4229561 () Bool)

(assert (=> bm!272214 m!4229561))

(declare-fun m!4229563 () Bool)

(assert (=> bm!272215 m!4229563))

(assert (=> b!3729329 d!1090399))

(declare-fun b!3729553 () Bool)

(declare-fun e!2307665 () Bool)

(declare-fun tp!1134797 () Bool)

(assert (=> b!3729553 (= e!2307665 tp!1134797)))

(declare-fun b!3729551 () Bool)

(assert (=> b!3729551 (= e!2307665 tp_is_empty!18859)))

(assert (=> b!3729328 (= tp!1134767 e!2307665)))

(declare-fun b!3729554 () Bool)

(declare-fun tp!1134798 () Bool)

(declare-fun tp!1134796 () Bool)

(assert (=> b!3729554 (= e!2307665 (and tp!1134798 tp!1134796))))

(declare-fun b!3729552 () Bool)

(declare-fun tp!1134795 () Bool)

(declare-fun tp!1134799 () Bool)

(assert (=> b!3729552 (= e!2307665 (and tp!1134795 tp!1134799))))

(assert (= (and b!3729328 (is-ElementMatch!10922 (regOne!22356 r!26968))) b!3729551))

(assert (= (and b!3729328 (is-Concat!17193 (regOne!22356 r!26968))) b!3729552))

(assert (= (and b!3729328 (is-Star!10922 (regOne!22356 r!26968))) b!3729553))

(assert (= (and b!3729328 (is-Union!10922 (regOne!22356 r!26968))) b!3729554))

(declare-fun b!3729557 () Bool)

(declare-fun e!2307666 () Bool)

(declare-fun tp!1134802 () Bool)

(assert (=> b!3729557 (= e!2307666 tp!1134802)))

(declare-fun b!3729555 () Bool)

(assert (=> b!3729555 (= e!2307666 tp_is_empty!18859)))

(assert (=> b!3729328 (= tp!1134766 e!2307666)))

(declare-fun b!3729558 () Bool)

(declare-fun tp!1134803 () Bool)

(declare-fun tp!1134801 () Bool)

(assert (=> b!3729558 (= e!2307666 (and tp!1134803 tp!1134801))))

(declare-fun b!3729556 () Bool)

(declare-fun tp!1134800 () Bool)

(declare-fun tp!1134804 () Bool)

(assert (=> b!3729556 (= e!2307666 (and tp!1134800 tp!1134804))))

(assert (= (and b!3729328 (is-ElementMatch!10922 (regTwo!22356 r!26968))) b!3729555))

(assert (= (and b!3729328 (is-Concat!17193 (regTwo!22356 r!26968))) b!3729556))

(assert (= (and b!3729328 (is-Star!10922 (regTwo!22356 r!26968))) b!3729557))

(assert (= (and b!3729328 (is-Union!10922 (regTwo!22356 r!26968))) b!3729558))

(declare-fun b!3729561 () Bool)

(declare-fun e!2307667 () Bool)

(declare-fun tp!1134807 () Bool)

(assert (=> b!3729561 (= e!2307667 tp!1134807)))

(declare-fun b!3729559 () Bool)

(assert (=> b!3729559 (= e!2307667 tp_is_empty!18859)))

(assert (=> b!3729333 (= tp!1134765 e!2307667)))

(declare-fun b!3729562 () Bool)

(declare-fun tp!1134808 () Bool)

(declare-fun tp!1134806 () Bool)

(assert (=> b!3729562 (= e!2307667 (and tp!1134808 tp!1134806))))

(declare-fun b!3729560 () Bool)

(declare-fun tp!1134805 () Bool)

(declare-fun tp!1134809 () Bool)

(assert (=> b!3729560 (= e!2307667 (and tp!1134805 tp!1134809))))

(assert (= (and b!3729333 (is-ElementMatch!10922 (reg!11251 r!26968))) b!3729559))

(assert (= (and b!3729333 (is-Concat!17193 (reg!11251 r!26968))) b!3729560))

(assert (= (and b!3729333 (is-Star!10922 (reg!11251 r!26968))) b!3729561))

(assert (= (and b!3729333 (is-Union!10922 (reg!11251 r!26968))) b!3729562))

(declare-fun b!3729565 () Bool)

(declare-fun e!2307668 () Bool)

(declare-fun tp!1134812 () Bool)

(assert (=> b!3729565 (= e!2307668 tp!1134812)))

(declare-fun b!3729563 () Bool)

(assert (=> b!3729563 (= e!2307668 tp_is_empty!18859)))

(assert (=> b!3729335 (= tp!1134769 e!2307668)))

(declare-fun b!3729566 () Bool)

(declare-fun tp!1134813 () Bool)

(declare-fun tp!1134811 () Bool)

(assert (=> b!3729566 (= e!2307668 (and tp!1134813 tp!1134811))))

(declare-fun b!3729564 () Bool)

(declare-fun tp!1134810 () Bool)

(declare-fun tp!1134814 () Bool)

(assert (=> b!3729564 (= e!2307668 (and tp!1134810 tp!1134814))))

(assert (= (and b!3729335 (is-ElementMatch!10922 (regOne!22357 r!26968))) b!3729563))

(assert (= (and b!3729335 (is-Concat!17193 (regOne!22357 r!26968))) b!3729564))

(assert (= (and b!3729335 (is-Star!10922 (regOne!22357 r!26968))) b!3729565))

(assert (= (and b!3729335 (is-Union!10922 (regOne!22357 r!26968))) b!3729566))

(declare-fun b!3729569 () Bool)

(declare-fun e!2307669 () Bool)

(declare-fun tp!1134817 () Bool)

(assert (=> b!3729569 (= e!2307669 tp!1134817)))

(declare-fun b!3729567 () Bool)

(assert (=> b!3729567 (= e!2307669 tp_is_empty!18859)))

(assert (=> b!3729335 (= tp!1134768 e!2307669)))

(declare-fun b!3729570 () Bool)

(declare-fun tp!1134818 () Bool)

(declare-fun tp!1134816 () Bool)

(assert (=> b!3729570 (= e!2307669 (and tp!1134818 tp!1134816))))

(declare-fun b!3729568 () Bool)

(declare-fun tp!1134815 () Bool)

(declare-fun tp!1134819 () Bool)

(assert (=> b!3729568 (= e!2307669 (and tp!1134815 tp!1134819))))

(assert (= (and b!3729335 (is-ElementMatch!10922 (regTwo!22357 r!26968))) b!3729567))

(assert (= (and b!3729335 (is-Concat!17193 (regTwo!22357 r!26968))) b!3729568))

(assert (= (and b!3729335 (is-Star!10922 (regTwo!22357 r!26968))) b!3729569))

(assert (= (and b!3729335 (is-Union!10922 (regTwo!22357 r!26968))) b!3729570))

(push 1)

(assert (not b!3729558))

(assert (not bm!272178))

(assert (not b!3729444))

(assert (not b!3729570))

(assert (not b!3729569))

(assert (not bm!272212))

(assert (not b!3729562))

(assert (not bm!272182))

(assert (not d!1090377))

(assert (not b!3729552))

(assert (not bm!272184))

(assert (not b!3729554))

(assert (not bm!272159))

(assert tp_is_empty!18859)

(assert (not bm!272183))

(assert (not b!3729560))

(assert (not b!3729564))

(assert (not bm!272187))

(assert (not d!1090391))

(assert (not b!3729568))

(assert (not b!3729368))

(assert (not bm!272214))

(assert (not b!3729522))

(assert (not bm!272207))

(assert (not b!3729394))

(assert (not b!3729561))

(assert (not bm!272210))

(assert (not bm!272186))

(assert (not b!3729517))

(assert (not bm!272156))

(assert (not b!3729553))

(assert (not bm!272158))

(assert (not b!3729454))

(assert (not bm!272211))

(assert (not b!3729565))

(assert (not d!1090373))

(assert (not bm!272179))

(assert (not bm!272215))

(assert (not d!1090369))

(assert (not bm!272206))

(assert (not d!1090363))

(assert (not b!3729556))

(assert (not d!1090397))

(assert (not d!1090371))

(assert (not bm!272203))

(assert (not bm!272208))

(assert (not b!3729557))

(assert (not bm!272204))

(assert (not b!3729508))

(assert (not b!3729532))

(assert (not b!3729566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3729695 () Bool)

(declare-fun e!2307737 () List!39803)

(declare-fun call!272257 () List!39803)

(assert (=> b!3729695 (= e!2307737 call!272257)))

(declare-fun b!3729696 () Bool)

(declare-fun e!2307735 () List!39803)

(assert (=> b!3729696 (= e!2307735 e!2307737)))

(declare-fun c!645593 () Bool)

(assert (=> b!3729696 (= c!645593 (is-Union!10922 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))))

(declare-fun bm!272252 () Bool)

(declare-fun call!272259 () List!39803)

(assert (=> bm!272252 (= call!272259 (usedCharacters!1185 (ite c!645593 (regTwo!22357 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))) (regOne!22356 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))))))

(declare-fun c!645594 () Bool)

(declare-fun d!1090415 () Bool)

(assert (=> d!1090415 (= c!645594 (or (is-EmptyExpr!10922 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))) (is-EmptyLang!10922 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))))))

(declare-fun e!2307736 () List!39803)

(assert (=> d!1090415 (= (usedCharacters!1185 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))) e!2307736)))

(declare-fun b!3729697 () Bool)

(declare-fun e!2307738 () List!39803)

(assert (=> b!3729697 (= e!2307736 e!2307738)))

(declare-fun c!645595 () Bool)

(assert (=> b!3729697 (= c!645595 (is-ElementMatch!10922 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))))

(declare-fun b!3729698 () Bool)

(assert (=> b!3729698 (= e!2307736 Nil!39679)))

(declare-fun b!3729699 () Bool)

(assert (=> b!3729699 (= e!2307737 call!272257)))

(declare-fun b!3729700 () Bool)

(assert (=> b!3729700 (= e!2307738 (Cons!39679 (c!645484 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))) Nil!39679))))

(declare-fun bm!272253 () Bool)

(declare-fun call!272260 () List!39803)

(declare-fun call!272258 () List!39803)

(assert (=> bm!272253 (= call!272260 call!272258)))

(declare-fun bm!272254 () Bool)

(assert (=> bm!272254 (= call!272257 (++!9846 (ite c!645593 call!272260 call!272259) (ite c!645593 call!272259 call!272260)))))

(declare-fun b!3729701 () Bool)

(declare-fun c!645592 () Bool)

(assert (=> b!3729701 (= c!645592 (is-Star!10922 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))))

(assert (=> b!3729701 (= e!2307738 e!2307735)))

(declare-fun b!3729702 () Bool)

(assert (=> b!3729702 (= e!2307735 call!272258)))

(declare-fun bm!272255 () Bool)

(assert (=> bm!272255 (= call!272258 (usedCharacters!1185 (ite c!645592 (reg!11251 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))) (ite c!645593 (regOne!22357 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))) (regTwo!22356 (ite c!645527 (reg!11251 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (ite c!645528 (regOne!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regTwo!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))))))))

(assert (= (and d!1090415 c!645594) b!3729698))

(assert (= (and d!1090415 (not c!645594)) b!3729697))

(assert (= (and b!3729697 c!645595) b!3729700))

(assert (= (and b!3729697 (not c!645595)) b!3729701))

(assert (= (and b!3729701 c!645592) b!3729702))

(assert (= (and b!3729701 (not c!645592)) b!3729696))

(assert (= (and b!3729696 c!645593) b!3729695))

(assert (= (and b!3729696 (not c!645593)) b!3729699))

(assert (= (or b!3729695 b!3729699) bm!272253))

(assert (= (or b!3729695 b!3729699) bm!272252))

(assert (= (or b!3729695 b!3729699) bm!272254))

(assert (= (or b!3729702 bm!272253) bm!272255))

(declare-fun m!4229613 () Bool)

(assert (=> bm!272252 m!4229613))

(declare-fun m!4229615 () Bool)

(assert (=> bm!272254 m!4229615))

(declare-fun m!4229617 () Bool)

(assert (=> bm!272255 m!4229617))

(assert (=> bm!272187 d!1090415))

(declare-fun lt!1298631 () List!39803)

(declare-fun b!3729714 () Bool)

(declare-fun e!2307743 () Bool)

(assert (=> b!3729714 (= e!2307743 (or (not (= (ite c!645552 call!272219 call!272220) Nil!39679)) (= lt!1298631 (ite c!645552 call!272220 call!272219))))))

(declare-fun e!2307744 () List!39803)

(declare-fun b!3729711 () Bool)

(assert (=> b!3729711 (= e!2307744 (ite c!645552 call!272219 call!272220))))

(declare-fun d!1090417 () Bool)

(assert (=> d!1090417 e!2307743))

(declare-fun res!1514421 () Bool)

(assert (=> d!1090417 (=> (not res!1514421) (not e!2307743))))

(assert (=> d!1090417 (= res!1514421 (= (content!5779 lt!1298631) (set.union (content!5779 (ite c!645552 call!272220 call!272219)) (content!5779 (ite c!645552 call!272219 call!272220)))))))

(assert (=> d!1090417 (= lt!1298631 e!2307744)))

(declare-fun c!645598 () Bool)

(assert (=> d!1090417 (= c!645598 (is-Nil!39679 (ite c!645552 call!272220 call!272219)))))

(assert (=> d!1090417 (= (++!9846 (ite c!645552 call!272220 call!272219) (ite c!645552 call!272219 call!272220)) lt!1298631)))

(declare-fun b!3729712 () Bool)

(assert (=> b!3729712 (= e!2307744 (Cons!39679 (h!45099 (ite c!645552 call!272220 call!272219)) (++!9846 (t!302486 (ite c!645552 call!272220 call!272219)) (ite c!645552 call!272219 call!272220))))))

(declare-fun b!3729713 () Bool)

(declare-fun res!1514422 () Bool)

(assert (=> b!3729713 (=> (not res!1514422) (not e!2307743))))

(declare-fun size!30035 (List!39803) Int)

(assert (=> b!3729713 (= res!1514422 (= (size!30035 lt!1298631) (+ (size!30035 (ite c!645552 call!272220 call!272219)) (size!30035 (ite c!645552 call!272219 call!272220)))))))

(assert (= (and d!1090417 c!645598) b!3729711))

(assert (= (and d!1090417 (not c!645598)) b!3729712))

(assert (= (and d!1090417 res!1514421) b!3729713))

(assert (= (and b!3729713 res!1514422) b!3729714))

(declare-fun m!4229619 () Bool)

(assert (=> d!1090417 m!4229619))

(declare-fun m!4229621 () Bool)

(assert (=> d!1090417 m!4229621))

(declare-fun m!4229623 () Bool)

(assert (=> d!1090417 m!4229623))

(declare-fun m!4229625 () Bool)

(assert (=> b!3729712 m!4229625))

(declare-fun m!4229627 () Bool)

(assert (=> b!3729713 m!4229627))

(declare-fun m!4229629 () Bool)

(assert (=> b!3729713 m!4229629))

(declare-fun m!4229631 () Bool)

(assert (=> b!3729713 m!4229631))

(assert (=> bm!272214 d!1090417))

(assert (=> d!1090371 d!1090363))

(assert (=> d!1090371 d!1090379))

(assert (=> d!1090371 d!1090377))

(declare-fun d!1090419 () Bool)

(assert (=> d!1090419 (not (contains!8015 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) cNot!42))))

(assert (=> d!1090419 true))

(declare-fun _$133!110 () Unit!57582)

(assert (=> d!1090419 (= (choose!22230 (reg!11251 r!26968) c!13797 cNot!42) _$133!110)))

(declare-fun bs!575074 () Bool)

(assert (= bs!575074 d!1090419))

(assert (=> bs!575074 m!4229417))

(assert (=> bs!575074 m!4229417))

(assert (=> bs!575074 m!4229407))

(assert (=> bs!575074 m!4229407))

(assert (=> bs!575074 m!4229409))

(assert (=> d!1090371 d!1090419))

(declare-fun d!1090421 () Bool)

(declare-fun nullableFct!1084 (Regex!10922) Bool)

(assert (=> d!1090421 (= (nullable!3830 (reg!11251 (reg!11251 r!26968))) (nullableFct!1084 (reg!11251 (reg!11251 r!26968))))))

(declare-fun bs!575075 () Bool)

(assert (= bs!575075 d!1090421))

(declare-fun m!4229633 () Bool)

(assert (=> bs!575075 m!4229633))

(assert (=> b!3729508 d!1090421))

(declare-fun b!3729718 () Bool)

(declare-fun lt!1298632 () List!39803)

(declare-fun e!2307745 () Bool)

(assert (=> b!3729718 (= e!2307745 (or (not (= (ite c!645528 call!272191 call!272192) Nil!39679)) (= lt!1298632 (ite c!645528 call!272192 call!272191))))))

(declare-fun b!3729715 () Bool)

(declare-fun e!2307746 () List!39803)

(assert (=> b!3729715 (= e!2307746 (ite c!645528 call!272191 call!272192))))

(declare-fun d!1090423 () Bool)

(assert (=> d!1090423 e!2307745))

(declare-fun res!1514423 () Bool)

(assert (=> d!1090423 (=> (not res!1514423) (not e!2307745))))

(assert (=> d!1090423 (= res!1514423 (= (content!5779 lt!1298632) (set.union (content!5779 (ite c!645528 call!272192 call!272191)) (content!5779 (ite c!645528 call!272191 call!272192)))))))

(assert (=> d!1090423 (= lt!1298632 e!2307746)))

(declare-fun c!645600 () Bool)

(assert (=> d!1090423 (= c!645600 (is-Nil!39679 (ite c!645528 call!272192 call!272191)))))

(assert (=> d!1090423 (= (++!9846 (ite c!645528 call!272192 call!272191) (ite c!645528 call!272191 call!272192)) lt!1298632)))

(declare-fun b!3729716 () Bool)

(assert (=> b!3729716 (= e!2307746 (Cons!39679 (h!45099 (ite c!645528 call!272192 call!272191)) (++!9846 (t!302486 (ite c!645528 call!272192 call!272191)) (ite c!645528 call!272191 call!272192))))))

(declare-fun b!3729717 () Bool)

(declare-fun res!1514424 () Bool)

(assert (=> b!3729717 (=> (not res!1514424) (not e!2307745))))

(assert (=> b!3729717 (= res!1514424 (= (size!30035 lt!1298632) (+ (size!30035 (ite c!645528 call!272192 call!272191)) (size!30035 (ite c!645528 call!272191 call!272192)))))))

(assert (= (and d!1090423 c!645600) b!3729715))

(assert (= (and d!1090423 (not c!645600)) b!3729716))

(assert (= (and d!1090423 res!1514423) b!3729717))

(assert (= (and b!3729717 res!1514424) b!3729718))

(declare-fun m!4229635 () Bool)

(assert (=> d!1090423 m!4229635))

(declare-fun m!4229637 () Bool)

(assert (=> d!1090423 m!4229637))

(declare-fun m!4229639 () Bool)

(assert (=> d!1090423 m!4229639))

(declare-fun m!4229641 () Bool)

(assert (=> b!3729716 m!4229641))

(declare-fun m!4229643 () Bool)

(assert (=> b!3729717 m!4229643))

(declare-fun m!4229645 () Bool)

(assert (=> b!3729717 m!4229645))

(declare-fun m!4229647 () Bool)

(assert (=> b!3729717 m!4229647))

(assert (=> bm!272186 d!1090423))

(declare-fun bm!272256 () Bool)

(declare-fun call!272263 () Bool)

(declare-fun call!272261 () Bool)

(assert (=> bm!272256 (= call!272263 call!272261)))

(declare-fun b!3729720 () Bool)

(declare-fun res!1514427 () Bool)

(declare-fun e!2307750 () Bool)

(assert (=> b!3729720 (=> (not res!1514427) (not e!2307750))))

(declare-fun call!272262 () Bool)

(assert (=> b!3729720 (= res!1514427 call!272262)))

(declare-fun e!2307749 () Bool)

(assert (=> b!3729720 (= e!2307749 e!2307750)))

(declare-fun b!3729721 () Bool)

(declare-fun e!2307748 () Bool)

(assert (=> b!3729721 (= e!2307748 e!2307749)))

(declare-fun c!645602 () Bool)

(assert (=> b!3729721 (= c!645602 (is-Union!10922 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))

(declare-fun b!3729722 () Bool)

(declare-fun e!2307752 () Bool)

(declare-fun e!2307751 () Bool)

(assert (=> b!3729722 (= e!2307752 e!2307751)))

(declare-fun res!1514428 () Bool)

(assert (=> b!3729722 (=> (not res!1514428) (not e!2307751))))

(assert (=> b!3729722 (= res!1514428 call!272262)))

(declare-fun b!3729723 () Bool)

(assert (=> b!3729723 (= e!2307750 call!272263)))

(declare-fun b!3729724 () Bool)

(declare-fun e!2307747 () Bool)

(assert (=> b!3729724 (= e!2307747 call!272261)))

(declare-fun b!3729725 () Bool)

(assert (=> b!3729725 (= e!2307751 call!272263)))

(declare-fun bm!272257 () Bool)

(assert (=> bm!272257 (= call!272262 (validRegex!5029 (ite c!645602 (regOne!22357 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) (regOne!22356 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))))

(declare-fun c!645601 () Bool)

(declare-fun bm!272258 () Bool)

(assert (=> bm!272258 (= call!272261 (validRegex!5029 (ite c!645601 (reg!11251 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) (ite c!645602 (regTwo!22357 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) (regTwo!22356 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968)))))))))))

(declare-fun d!1090425 () Bool)

(declare-fun res!1514426 () Bool)

(declare-fun e!2307753 () Bool)

(assert (=> d!1090425 (=> res!1514426 e!2307753)))

(assert (=> d!1090425 (= res!1514426 (is-ElementMatch!10922 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))

(assert (=> d!1090425 (= (validRegex!5029 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) e!2307753)))

(declare-fun b!3729719 () Bool)

(assert (=> b!3729719 (= e!2307753 e!2307748)))

(assert (=> b!3729719 (= c!645601 (is-Star!10922 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))

(declare-fun b!3729726 () Bool)

(assert (=> b!3729726 (= e!2307748 e!2307747)))

(declare-fun res!1514429 () Bool)

(assert (=> b!3729726 (= res!1514429 (not (nullable!3830 (reg!11251 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))))

(assert (=> b!3729726 (=> (not res!1514429) (not e!2307747))))

(declare-fun b!3729727 () Bool)

(declare-fun res!1514425 () Bool)

(assert (=> b!3729727 (=> res!1514425 e!2307752)))

(assert (=> b!3729727 (= res!1514425 (not (is-Concat!17193 (ite c!645543 (reg!11251 (reg!11251 r!26968)) (ite c!645544 (regTwo!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968)))))))))

(assert (=> b!3729727 (= e!2307749 e!2307752)))

(assert (= (and d!1090425 (not res!1514426)) b!3729719))

(assert (= (and b!3729719 c!645601) b!3729726))

(assert (= (and b!3729719 (not c!645601)) b!3729721))

(assert (= (and b!3729726 res!1514429) b!3729724))

(assert (= (and b!3729721 c!645602) b!3729720))

(assert (= (and b!3729721 (not c!645602)) b!3729727))

(assert (= (and b!3729720 res!1514427) b!3729723))

(assert (= (and b!3729727 (not res!1514425)) b!3729722))

(assert (= (and b!3729722 res!1514428) b!3729725))

(assert (= (or b!3729723 b!3729725) bm!272256))

(assert (= (or b!3729720 b!3729722) bm!272257))

(assert (= (or b!3729724 bm!272256) bm!272258))

(declare-fun m!4229649 () Bool)

(assert (=> bm!272257 m!4229649))

(declare-fun m!4229651 () Bool)

(assert (=> bm!272258 m!4229651))

(declare-fun m!4229653 () Bool)

(assert (=> b!3729726 m!4229653))

(assert (=> bm!272204 d!1090425))

(declare-fun bm!272259 () Bool)

(declare-fun call!272266 () Bool)

(declare-fun call!272264 () Bool)

(assert (=> bm!272259 (= call!272266 call!272264)))

(declare-fun b!3729729 () Bool)

(declare-fun res!1514432 () Bool)

(declare-fun e!2307757 () Bool)

(assert (=> b!3729729 (=> (not res!1514432) (not e!2307757))))

(declare-fun call!272265 () Bool)

(assert (=> b!3729729 (= res!1514432 call!272265)))

(declare-fun e!2307756 () Bool)

(assert (=> b!3729729 (= e!2307756 e!2307757)))

(declare-fun b!3729730 () Bool)

(declare-fun e!2307755 () Bool)

(assert (=> b!3729730 (= e!2307755 e!2307756)))

(declare-fun c!645604 () Bool)

(assert (=> b!3729730 (= c!645604 (is-Union!10922 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(declare-fun b!3729731 () Bool)

(declare-fun e!2307759 () Bool)

(declare-fun e!2307758 () Bool)

(assert (=> b!3729731 (= e!2307759 e!2307758)))

(declare-fun res!1514433 () Bool)

(assert (=> b!3729731 (=> (not res!1514433) (not e!2307758))))

(assert (=> b!3729731 (= res!1514433 call!272265)))

(declare-fun b!3729732 () Bool)

(assert (=> b!3729732 (= e!2307757 call!272266)))

(declare-fun b!3729733 () Bool)

(declare-fun e!2307754 () Bool)

(assert (=> b!3729733 (= e!2307754 call!272264)))

(declare-fun b!3729734 () Bool)

(assert (=> b!3729734 (= e!2307758 call!272266)))

(declare-fun bm!272260 () Bool)

(assert (=> bm!272260 (= call!272265 (validRegex!5029 (ite c!645604 (regOne!22357 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) (regOne!22356 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))))

(declare-fun c!645603 () Bool)

(declare-fun bm!272261 () Bool)

(assert (=> bm!272261 (= call!272264 (validRegex!5029 (ite c!645603 (reg!11251 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) (ite c!645604 (regTwo!22357 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) (regTwo!22356 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))))

(declare-fun d!1090427 () Bool)

(declare-fun res!1514431 () Bool)

(declare-fun e!2307760 () Bool)

(assert (=> d!1090427 (=> res!1514431 e!2307760)))

(assert (=> d!1090427 (= res!1514431 (is-ElementMatch!10922 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(assert (=> d!1090427 (= (validRegex!5029 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) e!2307760)))

(declare-fun b!3729728 () Bool)

(assert (=> b!3729728 (= e!2307760 e!2307755)))

(assert (=> b!3729728 (= c!645603 (is-Star!10922 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(declare-fun b!3729735 () Bool)

(assert (=> b!3729735 (= e!2307755 e!2307754)))

(declare-fun res!1514434 () Bool)

(assert (=> b!3729735 (= res!1514434 (not (nullable!3830 (reg!11251 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))))

(assert (=> b!3729735 (=> (not res!1514434) (not e!2307754))))

(declare-fun b!3729736 () Bool)

(declare-fun res!1514430 () Bool)

(assert (=> b!3729736 (=> res!1514430 e!2307759)))

(assert (=> b!3729736 (= res!1514430 (not (is-Concat!17193 (ite c!645544 (regOne!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(assert (=> b!3729736 (= e!2307756 e!2307759)))

(assert (= (and d!1090427 (not res!1514431)) b!3729728))

(assert (= (and b!3729728 c!645603) b!3729735))

(assert (= (and b!3729728 (not c!645603)) b!3729730))

(assert (= (and b!3729735 res!1514434) b!3729733))

(assert (= (and b!3729730 c!645604) b!3729729))

(assert (= (and b!3729730 (not c!645604)) b!3729736))

(assert (= (and b!3729729 res!1514432) b!3729732))

(assert (= (and b!3729736 (not res!1514430)) b!3729731))

(assert (= (and b!3729731 res!1514433) b!3729734))

(assert (= (or b!3729732 b!3729734) bm!272259))

(assert (= (or b!3729729 b!3729731) bm!272260))

(assert (= (or b!3729733 bm!272259) bm!272261))

(declare-fun m!4229655 () Bool)

(assert (=> bm!272260 m!4229655))

(declare-fun m!4229657 () Bool)

(assert (=> bm!272261 m!4229657))

(declare-fun m!4229659 () Bool)

(assert (=> b!3729735 m!4229659))

(assert (=> bm!272203 d!1090427))

(declare-fun b!3729737 () Bool)

(declare-fun e!2307763 () List!39803)

(declare-fun call!272267 () List!39803)

(assert (=> b!3729737 (= e!2307763 call!272267)))

(declare-fun b!3729738 () Bool)

(declare-fun e!2307761 () List!39803)

(assert (=> b!3729738 (= e!2307761 e!2307763)))

(declare-fun c!645606 () Bool)

(assert (=> b!3729738 (= c!645606 (is-Union!10922 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))))))

(declare-fun bm!272262 () Bool)

(declare-fun call!272269 () List!39803)

(assert (=> bm!272262 (= call!272269 (usedCharacters!1185 (ite c!645606 (regTwo!22357 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))) (regOne!22356 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))))))))

(declare-fun d!1090429 () Bool)

(declare-fun c!645607 () Bool)

(assert (=> d!1090429 (= c!645607 (or (is-EmptyExpr!10922 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))) (is-EmptyLang!10922 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968)))))))

(declare-fun e!2307762 () List!39803)

(assert (=> d!1090429 (= (usedCharacters!1185 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))) e!2307762)))

(declare-fun b!3729739 () Bool)

(declare-fun e!2307764 () List!39803)

(assert (=> b!3729739 (= e!2307762 e!2307764)))

(declare-fun c!645608 () Bool)

(assert (=> b!3729739 (= c!645608 (is-ElementMatch!10922 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))))))

(declare-fun b!3729740 () Bool)

(assert (=> b!3729740 (= e!2307762 Nil!39679)))

(declare-fun b!3729741 () Bool)

(assert (=> b!3729741 (= e!2307763 call!272267)))

(declare-fun b!3729742 () Bool)

(assert (=> b!3729742 (= e!2307764 (Cons!39679 (c!645484 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))) Nil!39679))))

(declare-fun bm!272263 () Bool)

(declare-fun call!272270 () List!39803)

(declare-fun call!272268 () List!39803)

(assert (=> bm!272263 (= call!272270 call!272268)))

(declare-fun bm!272264 () Bool)

(assert (=> bm!272264 (= call!272267 (++!9846 (ite c!645606 call!272270 call!272269) (ite c!645606 call!272269 call!272270)))))

(declare-fun b!3729743 () Bool)

(declare-fun c!645605 () Bool)

(assert (=> b!3729743 (= c!645605 (is-Star!10922 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))))))

(assert (=> b!3729743 (= e!2307764 e!2307761)))

(declare-fun b!3729744 () Bool)

(assert (=> b!3729744 (= e!2307761 call!272268)))

(declare-fun bm!272265 () Bool)

(assert (=> bm!272265 (= call!272268 (usedCharacters!1185 (ite c!645605 (reg!11251 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))) (ite c!645606 (regOne!22357 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968))) (regTwo!22356 (ite c!645552 (regTwo!22357 r!26968) (regOne!22356 r!26968)))))))))

(assert (= (and d!1090429 c!645607) b!3729740))

(assert (= (and d!1090429 (not c!645607)) b!3729739))

(assert (= (and b!3729739 c!645608) b!3729742))

(assert (= (and b!3729739 (not c!645608)) b!3729743))

(assert (= (and b!3729743 c!645605) b!3729744))

(assert (= (and b!3729743 (not c!645605)) b!3729738))

(assert (= (and b!3729738 c!645606) b!3729737))

(assert (= (and b!3729738 (not c!645606)) b!3729741))

(assert (= (or b!3729737 b!3729741) bm!272263))

(assert (= (or b!3729737 b!3729741) bm!272262))

(assert (= (or b!3729737 b!3729741) bm!272264))

(assert (= (or b!3729744 bm!272263) bm!272265))

(declare-fun m!4229661 () Bool)

(assert (=> bm!272262 m!4229661))

(declare-fun m!4229663 () Bool)

(assert (=> bm!272264 m!4229663))

(declare-fun m!4229665 () Bool)

(assert (=> bm!272265 m!4229665))

(assert (=> bm!272212 d!1090429))

(declare-fun d!1090431 () Bool)

(declare-fun c!645611 () Bool)

(assert (=> d!1090431 (= c!645611 (is-Nil!39679 (usedCharacters!1185 (reg!11251 r!26968))))))

(declare-fun e!2307767 () (Set C!22030))

(assert (=> d!1090431 (= (content!5779 (usedCharacters!1185 (reg!11251 r!26968))) e!2307767)))

(declare-fun b!3729749 () Bool)

(assert (=> b!3729749 (= e!2307767 (as set.empty (Set C!22030)))))

(declare-fun b!3729750 () Bool)

(assert (=> b!3729750 (= e!2307767 (set.union (set.insert (h!45099 (usedCharacters!1185 (reg!11251 r!26968))) (as set.empty (Set C!22030))) (content!5779 (t!302486 (usedCharacters!1185 (reg!11251 r!26968))))))))

(assert (= (and d!1090431 c!645611) b!3729749))

(assert (= (and d!1090431 (not c!645611)) b!3729750))

(declare-fun m!4229667 () Bool)

(assert (=> b!3729750 m!4229667))

(declare-fun m!4229669 () Bool)

(assert (=> b!3729750 m!4229669))

(assert (=> d!1090391 d!1090431))

(declare-fun d!1090433 () Bool)

(declare-fun lt!1298633 () Bool)

(assert (=> d!1090433 (= lt!1298633 (set.member cNot!42 (content!5779 (t!302486 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))))

(declare-fun e!2307769 () Bool)

(assert (=> d!1090433 (= lt!1298633 e!2307769)))

(declare-fun res!1514435 () Bool)

(assert (=> d!1090433 (=> (not res!1514435) (not e!2307769))))

(assert (=> d!1090433 (= res!1514435 (is-Cons!39679 (t!302486 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))))

(assert (=> d!1090433 (= (contains!8015 (t!302486 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797))) cNot!42) lt!1298633)))

(declare-fun b!3729751 () Bool)

(declare-fun e!2307768 () Bool)

(assert (=> b!3729751 (= e!2307769 e!2307768)))

(declare-fun res!1514436 () Bool)

(assert (=> b!3729751 (=> res!1514436 e!2307768)))

(assert (=> b!3729751 (= res!1514436 (= (h!45099 (t!302486 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))) cNot!42))))

(declare-fun b!3729752 () Bool)

(assert (=> b!3729752 (= e!2307768 (contains!8015 (t!302486 (t!302486 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))) cNot!42))))

(assert (= (and d!1090433 res!1514435) b!3729751))

(assert (= (and b!3729751 (not res!1514436)) b!3729752))

(declare-fun m!4229671 () Bool)

(assert (=> d!1090433 m!4229671))

(declare-fun m!4229673 () Bool)

(assert (=> d!1090433 m!4229673))

(declare-fun m!4229675 () Bool)

(assert (=> b!3729752 m!4229675))

(assert (=> b!3729368 d!1090433))

(declare-fun b!3729753 () Bool)

(declare-fun e!2307772 () List!39803)

(declare-fun call!272271 () List!39803)

(assert (=> b!3729753 (= e!2307772 call!272271)))

(declare-fun b!3729754 () Bool)

(declare-fun e!2307770 () List!39803)

(assert (=> b!3729754 (= e!2307770 e!2307772)))

(declare-fun c!645613 () Bool)

(assert (=> b!3729754 (= c!645613 (is-Union!10922 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))))))

(declare-fun bm!272266 () Bool)

(declare-fun call!272273 () List!39803)

(assert (=> bm!272266 (= call!272273 (usedCharacters!1185 (ite c!645613 (regTwo!22357 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))) (regOne!22356 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))))))))

(declare-fun d!1090435 () Bool)

(declare-fun c!645614 () Bool)

(assert (=> d!1090435 (= c!645614 (or (is-EmptyExpr!10922 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))) (is-EmptyLang!10922 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797)))))))))

(declare-fun e!2307771 () List!39803)

(assert (=> d!1090435 (= (usedCharacters!1185 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))) e!2307771)))

(declare-fun b!3729755 () Bool)

(declare-fun e!2307773 () List!39803)

(assert (=> b!3729755 (= e!2307771 e!2307773)))

(declare-fun c!645615 () Bool)

(assert (=> b!3729755 (= c!645615 (is-ElementMatch!10922 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))))))

(declare-fun b!3729756 () Bool)

(assert (=> b!3729756 (= e!2307771 Nil!39679)))

(declare-fun b!3729757 () Bool)

(assert (=> b!3729757 (= e!2307772 call!272271)))

(declare-fun b!3729758 () Bool)

(assert (=> b!3729758 (= e!2307773 (Cons!39679 (c!645484 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))) Nil!39679))))

(declare-fun bm!272267 () Bool)

(declare-fun call!272274 () List!39803)

(declare-fun call!272272 () List!39803)

(assert (=> bm!272267 (= call!272274 call!272272)))

(declare-fun bm!272268 () Bool)

(assert (=> bm!272268 (= call!272271 (++!9846 (ite c!645613 call!272274 call!272273) (ite c!645613 call!272273 call!272274)))))

(declare-fun c!645612 () Bool)

(declare-fun b!3729759 () Bool)

(assert (=> b!3729759 (= c!645612 (is-Star!10922 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))))))

(assert (=> b!3729759 (= e!2307773 e!2307770)))

(declare-fun b!3729760 () Bool)

(assert (=> b!3729760 (= e!2307770 call!272272)))

(declare-fun bm!272269 () Bool)

(assert (=> bm!272269 (= call!272272 (usedCharacters!1185 (ite c!645612 (reg!11251 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))) (ite c!645613 (regOne!22357 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797))))) (regTwo!22356 (ite c!645494 (reg!11251 (derivativeStep!3363 r!26968 c!13797)) (ite c!645495 (regOne!22357 (derivativeStep!3363 r!26968 c!13797)) (regTwo!22356 (derivativeStep!3363 r!26968 c!13797)))))))))))

(assert (= (and d!1090435 c!645614) b!3729756))

(assert (= (and d!1090435 (not c!645614)) b!3729755))

(assert (= (and b!3729755 c!645615) b!3729758))

(assert (= (and b!3729755 (not c!645615)) b!3729759))

(assert (= (and b!3729759 c!645612) b!3729760))

(assert (= (and b!3729759 (not c!645612)) b!3729754))

(assert (= (and b!3729754 c!645613) b!3729753))

(assert (= (and b!3729754 (not c!645613)) b!3729757))

(assert (= (or b!3729753 b!3729757) bm!272267))

(assert (= (or b!3729753 b!3729757) bm!272266))

(assert (= (or b!3729753 b!3729757) bm!272268))

(assert (= (or b!3729760 bm!272267) bm!272269))

(declare-fun m!4229677 () Bool)

(assert (=> bm!272266 m!4229677))

(declare-fun m!4229679 () Bool)

(assert (=> bm!272268 m!4229679))

(declare-fun m!4229681 () Bool)

(assert (=> bm!272269 m!4229681))

(assert (=> bm!272159 d!1090435))

(declare-fun d!1090437 () Bool)

(declare-fun lt!1298634 () Bool)

(assert (=> d!1090437 (= lt!1298634 (set.member cNot!42 (content!5779 (t!302486 (usedCharacters!1185 r!26968)))))))

(declare-fun e!2307775 () Bool)

(assert (=> d!1090437 (= lt!1298634 e!2307775)))

(declare-fun res!1514437 () Bool)

(assert (=> d!1090437 (=> (not res!1514437) (not e!2307775))))

(assert (=> d!1090437 (= res!1514437 (is-Cons!39679 (t!302486 (usedCharacters!1185 r!26968))))))

(assert (=> d!1090437 (= (contains!8015 (t!302486 (usedCharacters!1185 r!26968)) cNot!42) lt!1298634)))

(declare-fun b!3729761 () Bool)

(declare-fun e!2307774 () Bool)

(assert (=> b!3729761 (= e!2307775 e!2307774)))

(declare-fun res!1514438 () Bool)

(assert (=> b!3729761 (=> res!1514438 e!2307774)))

(assert (=> b!3729761 (= res!1514438 (= (h!45099 (t!302486 (usedCharacters!1185 r!26968))) cNot!42))))

(declare-fun b!3729762 () Bool)

(assert (=> b!3729762 (= e!2307774 (contains!8015 (t!302486 (t!302486 (usedCharacters!1185 r!26968))) cNot!42))))

(assert (= (and d!1090437 res!1514437) b!3729761))

(assert (= (and b!3729761 (not res!1514438)) b!3729762))

(declare-fun m!4229683 () Bool)

(assert (=> d!1090437 m!4229683))

(declare-fun m!4229685 () Bool)

(assert (=> d!1090437 m!4229685))

(declare-fun m!4229687 () Bool)

(assert (=> b!3729762 m!4229687))

(assert (=> b!3729532 d!1090437))

(declare-fun d!1090439 () Bool)

(assert (=> d!1090439 (= (nullable!3830 (reg!11251 r!26968)) (nullableFct!1084 (reg!11251 r!26968)))))

(declare-fun bs!575076 () Bool)

(assert (= bs!575076 d!1090439))

(declare-fun m!4229689 () Bool)

(assert (=> bs!575076 m!4229689))

(assert (=> b!3729517 d!1090439))

(declare-fun b!3729763 () Bool)

(declare-fun e!2307778 () List!39803)

(declare-fun call!272275 () List!39803)

(assert (=> b!3729763 (= e!2307778 call!272275)))

(declare-fun b!3729764 () Bool)

(declare-fun e!2307776 () List!39803)

(assert (=> b!3729764 (= e!2307776 e!2307778)))

(declare-fun c!645617 () Bool)

(assert (=> b!3729764 (= c!645617 (is-Union!10922 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))

(declare-fun call!272277 () List!39803)

(declare-fun bm!272270 () Bool)

(assert (=> bm!272270 (= call!272277 (usedCharacters!1185 (ite c!645617 (regTwo!22357 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) (regOne!22356 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))))

(declare-fun d!1090441 () Bool)

(declare-fun c!645618 () Bool)

(assert (=> d!1090441 (= c!645618 (or (is-EmptyExpr!10922 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) (is-EmptyLang!10922 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968)))))))))

(declare-fun e!2307777 () List!39803)

(assert (=> d!1090441 (= (usedCharacters!1185 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) e!2307777)))

(declare-fun b!3729765 () Bool)

(declare-fun e!2307779 () List!39803)

(assert (=> b!3729765 (= e!2307777 e!2307779)))

(declare-fun c!645619 () Bool)

(assert (=> b!3729765 (= c!645619 (is-ElementMatch!10922 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))

(declare-fun b!3729766 () Bool)

(assert (=> b!3729766 (= e!2307777 Nil!39679)))

(declare-fun b!3729767 () Bool)

(assert (=> b!3729767 (= e!2307778 call!272275)))

(declare-fun b!3729768 () Bool)

(assert (=> b!3729768 (= e!2307779 (Cons!39679 (c!645484 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) Nil!39679))))

(declare-fun bm!272271 () Bool)

(declare-fun call!272278 () List!39803)

(declare-fun call!272276 () List!39803)

(assert (=> bm!272271 (= call!272278 call!272276)))

(declare-fun bm!272272 () Bool)

(assert (=> bm!272272 (= call!272275 (++!9846 (ite c!645617 call!272278 call!272277) (ite c!645617 call!272277 call!272278)))))

(declare-fun c!645616 () Bool)

(declare-fun b!3729769 () Bool)

(assert (=> b!3729769 (= c!645616 (is-Star!10922 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))))))

(assert (=> b!3729769 (= e!2307779 e!2307776)))

(declare-fun b!3729770 () Bool)

(assert (=> b!3729770 (= e!2307776 call!272276)))

(declare-fun bm!272273 () Bool)

(assert (=> bm!272273 (= call!272276 (usedCharacters!1185 (ite c!645616 (reg!11251 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) (ite c!645617 (regOne!22357 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968))))) (regTwo!22356 (ite c!645547 (reg!11251 (reg!11251 r!26968)) (ite c!645548 (regOne!22357 (reg!11251 r!26968)) (regTwo!22356 (reg!11251 r!26968)))))))))))

(assert (= (and d!1090441 c!645618) b!3729766))

(assert (= (and d!1090441 (not c!645618)) b!3729765))

(assert (= (and b!3729765 c!645619) b!3729768))

(assert (= (and b!3729765 (not c!645619)) b!3729769))

(assert (= (and b!3729769 c!645616) b!3729770))

(assert (= (and b!3729769 (not c!645616)) b!3729764))

(assert (= (and b!3729764 c!645617) b!3729763))

(assert (= (and b!3729764 (not c!645617)) b!3729767))

(assert (= (or b!3729763 b!3729767) bm!272271))

(assert (= (or b!3729763 b!3729767) bm!272270))

(assert (= (or b!3729763 b!3729767) bm!272272))

(assert (= (or b!3729770 bm!272271) bm!272273))

(declare-fun m!4229691 () Bool)

(assert (=> bm!272270 m!4229691))

(declare-fun m!4229693 () Bool)

(assert (=> bm!272272 m!4229693))

(declare-fun m!4229695 () Bool)

(assert (=> bm!272273 m!4229695))

(assert (=> bm!272211 d!1090441))

(declare-fun bm!272274 () Bool)

(declare-fun call!272281 () Bool)

(declare-fun call!272279 () Bool)

(assert (=> bm!272274 (= call!272281 call!272279)))

(declare-fun b!3729772 () Bool)

(declare-fun res!1514441 () Bool)

(declare-fun e!2307783 () Bool)

(assert (=> b!3729772 (=> (not res!1514441) (not e!2307783))))

(declare-fun call!272280 () Bool)

(assert (=> b!3729772 (= res!1514441 call!272280)))

(declare-fun e!2307782 () Bool)

(assert (=> b!3729772 (= e!2307782 e!2307783)))

(declare-fun b!3729773 () Bool)

(declare-fun e!2307781 () Bool)

(assert (=> b!3729773 (= e!2307781 e!2307782)))

(declare-fun c!645621 () Bool)

(assert (=> b!3729773 (= c!645621 (is-Union!10922 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))))))

(declare-fun b!3729774 () Bool)

(declare-fun e!2307785 () Bool)

(declare-fun e!2307784 () Bool)

(assert (=> b!3729774 (= e!2307785 e!2307784)))

(declare-fun res!1514442 () Bool)

(assert (=> b!3729774 (=> (not res!1514442) (not e!2307784))))

(assert (=> b!3729774 (= res!1514442 call!272280)))

(declare-fun b!3729775 () Bool)

(assert (=> b!3729775 (= e!2307783 call!272281)))

(declare-fun b!3729776 () Bool)

(declare-fun e!2307780 () Bool)

(assert (=> b!3729776 (= e!2307780 call!272279)))

(declare-fun b!3729777 () Bool)

(assert (=> b!3729777 (= e!2307784 call!272281)))

(declare-fun bm!272275 () Bool)

(assert (=> bm!272275 (= call!272280 (validRegex!5029 (ite c!645621 (regOne!22357 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))) (regOne!22356 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))))))))

(declare-fun c!645620 () Bool)

(declare-fun bm!272276 () Bool)

(assert (=> bm!272276 (= call!272279 (validRegex!5029 (ite c!645620 (reg!11251 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))) (ite c!645621 (regTwo!22357 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))) (regTwo!22356 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968))))))))))

(declare-fun d!1090443 () Bool)

(declare-fun res!1514440 () Bool)

(declare-fun e!2307786 () Bool)

(assert (=> d!1090443 (=> res!1514440 e!2307786)))

(assert (=> d!1090443 (= res!1514440 (is-ElementMatch!10922 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))))))

(assert (=> d!1090443 (= (validRegex!5029 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))) e!2307786)))

(declare-fun b!3729771 () Bool)

(assert (=> b!3729771 (= e!2307786 e!2307781)))

(assert (=> b!3729771 (= c!645620 (is-Star!10922 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))))))

(declare-fun b!3729778 () Bool)

(assert (=> b!3729778 (= e!2307781 e!2307780)))

(declare-fun res!1514443 () Bool)

(assert (=> b!3729778 (= res!1514443 (not (nullable!3830 (reg!11251 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968)))))))))

(assert (=> b!3729778 (=> (not res!1514443) (not e!2307780))))

(declare-fun b!3729779 () Bool)

(declare-fun res!1514439 () Bool)

(assert (=> b!3729779 (=> res!1514439 e!2307785)))

(assert (=> b!3729779 (= res!1514439 (not (is-Concat!17193 (ite c!645545 (reg!11251 r!26968) (ite c!645546 (regTwo!22357 r!26968) (regTwo!22356 r!26968))))))))

(assert (=> b!3729779 (= e!2307782 e!2307785)))

(assert (= (and d!1090443 (not res!1514440)) b!3729771))

(assert (= (and b!3729771 c!645620) b!3729778))

(assert (= (and b!3729771 (not c!645620)) b!3729773))

(assert (= (and b!3729778 res!1514443) b!3729776))

(assert (= (and b!3729773 c!645621) b!3729772))

(assert (= (and b!3729773 (not c!645621)) b!3729779))

(assert (= (and b!3729772 res!1514441) b!3729775))

(assert (= (and b!3729779 (not res!1514439)) b!3729774))

(assert (= (and b!3729774 res!1514442) b!3729777))

(assert (= (or b!3729775 b!3729777) bm!272274))

(assert (= (or b!3729772 b!3729774) bm!272275))

(assert (= (or b!3729776 bm!272274) bm!272276))

(declare-fun m!4229697 () Bool)

(assert (=> bm!272275 m!4229697))

(declare-fun m!4229699 () Bool)

(assert (=> bm!272276 m!4229699))

(declare-fun m!4229701 () Bool)

(assert (=> b!3729778 m!4229701))

(assert (=> bm!272207 d!1090443))

(declare-fun b!3729780 () Bool)

(declare-fun e!2307789 () List!39803)

(declare-fun call!272282 () List!39803)

(assert (=> b!3729780 (= e!2307789 call!272282)))

(declare-fun b!3729781 () Bool)

(declare-fun e!2307787 () List!39803)

(assert (=> b!3729781 (= e!2307787 e!2307789)))

(declare-fun c!645623 () Bool)

(assert (=> b!3729781 (= c!645623 (is-Union!10922 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))))

(declare-fun call!272284 () List!39803)

(declare-fun bm!272277 () Bool)

(assert (=> bm!272277 (= call!272284 (usedCharacters!1185 (ite c!645623 (regTwo!22357 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))) (regOne!22356 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))))))

(declare-fun d!1090445 () Bool)

(declare-fun c!645624 () Bool)

(assert (=> d!1090445 (= c!645624 (or (is-EmptyExpr!10922 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))) (is-EmptyLang!10922 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))))

(declare-fun e!2307788 () List!39803)

(assert (=> d!1090445 (= (usedCharacters!1185 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))) e!2307788)))

(declare-fun b!3729782 () Bool)

(declare-fun e!2307790 () List!39803)

(assert (=> b!3729782 (= e!2307788 e!2307790)))

(declare-fun c!645625 () Bool)

(assert (=> b!3729782 (= c!645625 (is-ElementMatch!10922 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))))

(declare-fun b!3729783 () Bool)

(assert (=> b!3729783 (= e!2307788 Nil!39679)))

(declare-fun b!3729784 () Bool)

(assert (=> b!3729784 (= e!2307789 call!272282)))

(declare-fun b!3729785 () Bool)

(assert (=> b!3729785 (= e!2307790 (Cons!39679 (c!645484 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))) Nil!39679))))

(declare-fun bm!272278 () Bool)

(declare-fun call!272285 () List!39803)

(declare-fun call!272283 () List!39803)

(assert (=> bm!272278 (= call!272285 call!272283)))

(declare-fun bm!272279 () Bool)

(assert (=> bm!272279 (= call!272282 (++!9846 (ite c!645623 call!272285 call!272284) (ite c!645623 call!272284 call!272285)))))

(declare-fun b!3729786 () Bool)

(declare-fun c!645622 () Bool)

(assert (=> b!3729786 (= c!645622 (is-Star!10922 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))))))

(assert (=> b!3729786 (= e!2307790 e!2307787)))

(declare-fun b!3729787 () Bool)

(assert (=> b!3729787 (= e!2307787 call!272283)))

(declare-fun bm!272280 () Bool)

(assert (=> bm!272280 (= call!272283 (usedCharacters!1185 (ite c!645622 (reg!11251 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))) (ite c!645623 (regOne!22357 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797)))) (regTwo!22356 (ite c!645528 (regTwo!22357 (derivativeStep!3363 (reg!11251 r!26968) c!13797)) (regOne!22356 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))))))

(assert (= (and d!1090445 c!645624) b!3729783))

(assert (= (and d!1090445 (not c!645624)) b!3729782))

(assert (= (and b!3729782 c!645625) b!3729785))

(assert (= (and b!3729782 (not c!645625)) b!3729786))

(assert (= (and b!3729786 c!645622) b!3729787))

(assert (= (and b!3729786 (not c!645622)) b!3729781))

(assert (= (and b!3729781 c!645623) b!3729780))

(assert (= (and b!3729781 (not c!645623)) b!3729784))

(assert (= (or b!3729780 b!3729784) bm!272278))

(assert (= (or b!3729780 b!3729784) bm!272277))

(assert (= (or b!3729780 b!3729784) bm!272279))

(assert (= (or b!3729787 bm!272278) bm!272280))

(declare-fun m!4229703 () Bool)

(assert (=> bm!272277 m!4229703))

(declare-fun m!4229705 () Bool)

(assert (=> bm!272279 m!4229705))

(declare-fun m!4229707 () Bool)

(assert (=> bm!272280 m!4229707))

(assert (=> bm!272184 d!1090445))

(declare-fun lt!1298635 () List!39803)

(declare-fun b!3729791 () Bool)

(declare-fun e!2307791 () Bool)

(assert (=> b!3729791 (= e!2307791 (or (not (= (ite c!645495 call!272163 call!272164) Nil!39679)) (= lt!1298635 (ite c!645495 call!272164 call!272163))))))

(declare-fun e!2307792 () List!39803)

(declare-fun b!3729788 () Bool)

(assert (=> b!3729788 (= e!2307792 (ite c!645495 call!272163 call!272164))))

(declare-fun d!1090447 () Bool)

(assert (=> d!1090447 e!2307791))

(declare-fun res!1514444 () Bool)

(assert (=> d!1090447 (=> (not res!1514444) (not e!2307791))))

(assert (=> d!1090447 (= res!1514444 (= (content!5779 lt!1298635) (set.union (content!5779 (ite c!645495 call!272164 call!272163)) (content!5779 (ite c!645495 call!272163 call!272164)))))))

(assert (=> d!1090447 (= lt!1298635 e!2307792)))

(declare-fun c!645626 () Bool)

(assert (=> d!1090447 (= c!645626 (is-Nil!39679 (ite c!645495 call!272164 call!272163)))))

(assert (=> d!1090447 (= (++!9846 (ite c!645495 call!272164 call!272163) (ite c!645495 call!272163 call!272164)) lt!1298635)))

(declare-fun b!3729789 () Bool)

(assert (=> b!3729789 (= e!2307792 (Cons!39679 (h!45099 (ite c!645495 call!272164 call!272163)) (++!9846 (t!302486 (ite c!645495 call!272164 call!272163)) (ite c!645495 call!272163 call!272164))))))

(declare-fun b!3729790 () Bool)

(declare-fun res!1514445 () Bool)

(assert (=> b!3729790 (=> (not res!1514445) (not e!2307791))))

(assert (=> b!3729790 (= res!1514445 (= (size!30035 lt!1298635) (+ (size!30035 (ite c!645495 call!272164 call!272163)) (size!30035 (ite c!645495 call!272163 call!272164)))))))

(assert (= (and d!1090447 c!645626) b!3729788))

(assert (= (and d!1090447 (not c!645626)) b!3729789))

(assert (= (and d!1090447 res!1514444) b!3729790))

(assert (= (and b!3729790 res!1514445) b!3729791))

(declare-fun m!4229709 () Bool)

(assert (=> d!1090447 m!4229709))

(declare-fun m!4229711 () Bool)

(assert (=> d!1090447 m!4229711))

(declare-fun m!4229713 () Bool)

(assert (=> d!1090447 m!4229713))

(declare-fun m!4229715 () Bool)

(assert (=> b!3729789 m!4229715))

(declare-fun m!4229717 () Bool)

(assert (=> b!3729790 m!4229717))

(declare-fun m!4229719 () Bool)

(assert (=> b!3729790 m!4229719))

(declare-fun m!4229721 () Bool)

(assert (=> b!3729790 m!4229721))

(assert (=> bm!272158 d!1090447))

(declare-fun d!1090449 () Bool)

(declare-fun c!645627 () Bool)

(assert (=> d!1090449 (= c!645627 (is-Nil!39679 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))

(declare-fun e!2307793 () (Set C!22030))

(assert (=> d!1090449 (= (content!5779 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797))) e!2307793)))

(declare-fun b!3729792 () Bool)

(assert (=> b!3729792 (= e!2307793 (as set.empty (Set C!22030)))))

(declare-fun b!3729793 () Bool)

(assert (=> b!3729793 (= e!2307793 (set.union (set.insert (h!45099 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797))) (as set.empty (Set C!22030))) (content!5779 (t!302486 (usedCharacters!1185 (derivativeStep!3363 (reg!11251 r!26968) c!13797))))))))

(assert (= (and d!1090449 c!645627) b!3729792))

(assert (= (and d!1090449 (not c!645627)) b!3729793))

(declare-fun m!4229723 () Bool)

(assert (=> b!3729793 m!4229723))

(assert (=> b!3729793 m!4229671))

(assert (=> d!1090363 d!1090449))

(declare-fun bm!272281 () Bool)

(declare-fun call!272288 () Bool)

(declare-fun call!272286 () Bool)

(assert (=> bm!272281 (= call!272288 call!272286)))

(declare-fun b!3729795 () Bool)

(declare-fun res!1514448 () Bool)

(declare-fun e!2307797 () Bool)

(assert (=> b!3729795 (=> (not res!1514448) (not e!2307797))))

(declare-fun call!272287 () Bool)

(assert (=> b!3729795 (= res!1514448 call!272287)))

(declare-fun e!2307796 () Bool)

(assert (=> b!3729795 (= e!2307796 e!2307797)))

(declare-fun b!3729796 () Bool)

(declare-fun e!2307795 () Bool)

(assert (=> b!3729796 (= e!2307795 e!2307796)))

(declare-fun c!645629 () Bool)

(assert (=> b!3729796 (= c!645629 (is-Union!10922 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))))))

(declare-fun b!3729797 () Bool)

(declare-fun e!2307799 () Bool)

(declare-fun e!2307798 () Bool)

(assert (=> b!3729797 (= e!2307799 e!2307798)))

(declare-fun res!1514449 () Bool)

(assert (=> b!3729797 (=> (not res!1514449) (not e!2307798))))

(assert (=> b!3729797 (= res!1514449 call!272287)))

(declare-fun b!3729798 () Bool)

(assert (=> b!3729798 (= e!2307797 call!272288)))

(declare-fun b!3729799 () Bool)

(declare-fun e!2307794 () Bool)

(assert (=> b!3729799 (= e!2307794 call!272286)))

(declare-fun b!3729800 () Bool)

(assert (=> b!3729800 (= e!2307798 call!272288)))

(declare-fun bm!272282 () Bool)

(assert (=> bm!272282 (= call!272287 (validRegex!5029 (ite c!645629 (regOne!22357 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))) (regOne!22356 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))))))))

(declare-fun c!645628 () Bool)

(declare-fun bm!272283 () Bool)

(assert (=> bm!272283 (= call!272286 (validRegex!5029 (ite c!645628 (reg!11251 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))) (ite c!645629 (regTwo!22357 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))) (regTwo!22356 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968)))))))))

(declare-fun d!1090451 () Bool)

(declare-fun res!1514447 () Bool)

(declare-fun e!2307800 () Bool)

(assert (=> d!1090451 (=> res!1514447 e!2307800)))

(assert (=> d!1090451 (= res!1514447 (is-ElementMatch!10922 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))))))

(assert (=> d!1090451 (= (validRegex!5029 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))) e!2307800)))

(declare-fun b!3729794 () Bool)

(assert (=> b!3729794 (= e!2307800 e!2307795)))

(assert (=> b!3729794 (= c!645628 (is-Star!10922 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))))))

(declare-fun b!3729801 () Bool)

(assert (=> b!3729801 (= e!2307795 e!2307794)))

(declare-fun res!1514450 () Bool)

(assert (=> b!3729801 (= res!1514450 (not (nullable!3830 (reg!11251 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968))))))))

(assert (=> b!3729801 (=> (not res!1514450) (not e!2307794))))

(declare-fun b!3729802 () Bool)

(declare-fun res!1514446 () Bool)

(assert (=> b!3729802 (=> res!1514446 e!2307799)))

(assert (=> b!3729802 (= res!1514446 (not (is-Concat!17193 (ite c!645546 (regOne!22357 r!26968) (regOne!22356 r!26968)))))))

(assert (=> b!3729802 (= e!2307796 e!2307799)))

(assert (= (and d!1090451 (not res!1514447)) b!3729794))

(assert (= (and b!3729794 c!645628) b!3729801))

(assert (= (and b!3729794 (not c!645628)) b!3729796))

(assert (= (and b!3729801 res!1514450) b!3729799))

(assert (= (and b!3729796 c!645629) b!3729795))

(assert (= (and b!3729796 (not c!645629)) b!3729802))

(assert (= (and b!3729795 res!1514448) b!3729798))

(assert (= (and b!3729802 (not res!1514446)) b!3729797))

(assert (= (and b!3729797 res!1514449) b!3729800))

(assert (= (or b!3729798 b!3729800) bm!272281))

(assert (= (or b!3729795 b!3729797) bm!272282))

(assert (= (or b!3729799 bm!272281) bm!272283))

(declare-fun m!4229725 () Bool)

(assert (=> bm!272282 m!4229725))

(declare-fun m!4229727 () Bool)

(assert (=> bm!272283 m!4229727))

(declare-fun m!4229729 () Bool)

(assert (=> b!3729801 m!4229729))

(assert (=> bm!272206 d!1090451))

(declare-fun d!1090453 () Bool)

(assert (=> d!1090453 (= (nullable!3830 (regOne!22356 r!26968)) (nullableFct!1084 (regOne!22356 r!26968)))))

(declare-fun bs!575077 () Bool)

(assert (= bs!575077 d!1090453))

(declare-fun m!4229731 () Bool)

(assert (=> bs!575077 m!4229731))

(assert (=> b!3729444 d!1090453))

(declare-fun e!2307801 () Bool)

(declare-fun b!3729806 () Bool)

(declare-fun lt!1298636 () List!39803)

(assert (=> b!3729806 (= e!2307801 (or (not (= (ite c!645548 call!272215 call!272216) Nil!39679)) (= lt!1298636 (ite c!645548 call!272216 call!272215))))))

(declare-fun b!3729803 () Bool)

(declare-fun e!2307802 () List!39803)

(assert (=> b!3729803 (= e!2307802 (ite c!645548 call!272215 call!272216))))

(declare-fun d!1090455 () Bool)

(assert (=> d!1090455 e!2307801))

(declare-fun res!1514451 () Bool)

(assert (=> d!1090455 (=> (not res!1514451) (not e!2307801))))

(assert (=> d!1090455 (= res!1514451 (= (content!5779 lt!1298636) (set.union (content!5779 (ite c!645548 call!272216 call!272215)) (content!5779 (ite c!645548 call!272215 call!272216)))))))

(assert (=> d!1090455 (= lt!1298636 e!2307802)))

(declare-fun c!645630 () Bool)

(assert (=> d!1090455 (= c!645630 (is-Nil!39679 (ite c!645548 call!272216 call!272215)))))

(assert (=> d!1090455 (= (++!9846 (ite c!645548 call!272216 call!272215) (ite c!645548 call!272215 call!272216)) lt!1298636)))

(declare-fun b!3729804 () Bool)

(assert (=> b!3729804 (= e!2307802 (Cons!39679 (h!45099 (ite c!645548 call!272216 call!272215)) (++!9846 (t!302486 (ite c!645548 call!272216 call!272215)) (ite c!645548 call!272215 call!272216))))))

(declare-fun b!3729805 () Bool)

(declare-fun res!1514452 () Bool)

(assert (=> b!3729805 (=> (not res!1514452) (not e!2307801))))

(assert (=> b!3729805 (= res!1514452 (= (size!30035 lt!1298636) (+ (size!30035 (ite c!645548 call!272216 call!272215)) (size!30035 (ite c!645548 call!272215 call!272216)))))))

(assert (= (and d!1090455 c!645630) b!3729803))

(assert (= (and d!1090455 (not c!645630)) b!3729804))

(assert (= (and d!1090455 res!1514451) b!3729805))

(assert (= (and b!3729805 res!1514452) b!3729806))

(declare-fun m!4229733 () Bool)

(assert (=> d!1090455 m!4229733))

(declare-fun m!4229735 () Bool)

(assert (=> d!1090455 m!4229735))

(declare-fun m!4229737 () Bool)

(assert (=> d!1090455 m!4229737))

(declare-fun m!4229739 () Bool)

(assert (=> b!3729804 m!4229739))

(declare-fun m!4229741 () Bool)

(assert (=> b!3729805 m!4229741))

(declare-fun m!4229743 () Bool)

(assert (=> b!3729805 m!4229743))

(declare-fun m!4229745 () Bool)

(assert (=> b!3729805 m!4229745))

(assert (=> bm!272210 d!1090455))

(declare-fun d!1090457 () Bool)

(declare-fun lt!1298637 () Bool)

(assert (=> d!1090457 (= lt!1298637 (set.member cNot!42 (content!5779 (t!302486 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797))))))))

(declare-fun e!2307804 () Bool)

(assert (=> d!1090457 (= lt!1298637 e!2307804)))

(declare-fun res!1514453 () Bool)

(assert (=> d!1090457 (=> (not res!1514453) (not e!2307804))))

(assert (=> d!1090457 (= res!1514453 (is-Cons!39679 (t!302486 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797)))))))

(assert (=> d!1090457 (= (contains!8015 (t!302486 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797))) cNot!42) lt!1298637)))

(declare-fun b!3729807 () Bool)

(declare-fun e!2307803 () Bool)

(assert (=> b!3729807 (= e!2307804 e!2307803)))

(declare-fun res!1514454 () Bool)

(assert (=> b!3729807 (=> res!1514454 e!2307803)))

(assert (=> b!3729807 (= res!1514454 (= (h!45099 (t!302486 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797)))) cNot!42))))

(declare-fun b!3729808 () Bool)

(assert (=> b!3729808 (= e!2307803 (contains!8015 (t!302486 (t!302486 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797)))) cNot!42))))

(assert (= (and d!1090457 res!1514453) b!3729807))

(assert (= (and b!3729807 (not res!1514454)) b!3729808))

(declare-fun m!4229747 () Bool)

(assert (=> d!1090457 m!4229747))

(declare-fun m!4229749 () Bool)

(assert (=> d!1090457 m!4229749))

(declare-fun m!4229751 () Bool)

(assert (=> b!3729808 m!4229751))

(assert (=> b!3729394 d!1090457))

(declare-fun b!3729809 () Bool)

(declare-fun e!2307806 () Regex!10922)

(declare-fun call!272290 () Regex!10922)

(declare-fun call!272289 () Regex!10922)

(assert (=> b!3729809 (= e!2307806 (Union!10922 call!272290 call!272289))))

(declare-fun bm!272284 () Bool)

(declare-fun call!272291 () Regex!10922)

(assert (=> bm!272284 (= call!272291 call!272289)))

(declare-fun bm!272285 () Bool)

(declare-fun call!272292 () Regex!10922)

(assert (=> bm!272285 (= call!272292 call!272290)))

(declare-fun b!3729810 () Bool)

(declare-fun e!2307805 () Regex!10922)

(assert (=> b!3729810 (= e!2307805 (Union!10922 (Concat!17193 call!272291 (regTwo!22356 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968))))) EmptyLang!10922))))

(declare-fun b!3729811 () Bool)

(declare-fun e!2307808 () Regex!10922)

(assert (=> b!3729811 (= e!2307806 e!2307808)))

(declare-fun c!645632 () Bool)

(assert (=> b!3729811 (= c!645632 (is-Star!10922 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))))))

(declare-fun c!645635 () Bool)

(declare-fun bm!272286 () Bool)

(declare-fun c!645633 () Bool)

(assert (=> bm!272286 (= call!272289 (derivativeStep!3363 (ite c!645635 (regTwo!22357 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))) (ite c!645633 (regTwo!22356 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))) (regOne!22356 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))))) c!13797))))

(declare-fun e!2307807 () Regex!10922)

(declare-fun b!3729812 () Bool)

(assert (=> b!3729812 (= e!2307807 (ite (= c!13797 (c!645484 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968))))) EmptyExpr!10922 EmptyLang!10922))))

(declare-fun b!3729813 () Bool)

(assert (=> b!3729813 (= e!2307805 (Union!10922 (Concat!17193 call!272292 (regTwo!22356 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968))))) call!272291))))

(declare-fun bm!272287 () Bool)

(assert (=> bm!272287 (= call!272290 (derivativeStep!3363 (ite c!645635 (regOne!22357 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))) (ite c!645632 (reg!11251 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))) (regOne!22356 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))))) c!13797))))

(declare-fun d!1090459 () Bool)

(declare-fun lt!1298638 () Regex!10922)

(assert (=> d!1090459 (validRegex!5029 lt!1298638)))

(declare-fun e!2307809 () Regex!10922)

(assert (=> d!1090459 (= lt!1298638 e!2307809)))

(declare-fun c!645631 () Bool)

(assert (=> d!1090459 (= c!645631 (or (is-EmptyExpr!10922 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))) (is-EmptyLang!10922 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968))))))))

(assert (=> d!1090459 (validRegex!5029 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968))))))

(assert (=> d!1090459 (= (derivativeStep!3363 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968))) c!13797) lt!1298638)))

(declare-fun b!3729814 () Bool)

(assert (=> b!3729814 (= e!2307809 EmptyLang!10922)))

(declare-fun b!3729815 () Bool)

(assert (=> b!3729815 (= e!2307809 e!2307807)))

(declare-fun c!645634 () Bool)

(assert (=> b!3729815 (= c!645634 (is-ElementMatch!10922 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))))))

(declare-fun b!3729816 () Bool)

(assert (=> b!3729816 (= c!645633 (nullable!3830 (regOne!22356 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968))))))))

(assert (=> b!3729816 (= e!2307808 e!2307805)))

(declare-fun b!3729817 () Bool)

(assert (=> b!3729817 (= e!2307808 (Concat!17193 call!272292 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))))))

(declare-fun b!3729818 () Bool)

(assert (=> b!3729818 (= c!645635 (is-Union!10922 (ite c!645521 (regOne!22357 r!26968) (ite c!645518 (reg!11251 r!26968) (regOne!22356 r!26968)))))))

(assert (=> b!3729818 (= e!2307807 e!2307806)))

(assert (= (and d!1090459 c!645631) b!3729814))

(assert (= (and d!1090459 (not c!645631)) b!3729815))

(assert (= (and b!3729815 c!645634) b!3729812))

(assert (= (and b!3729815 (not c!645634)) b!3729818))

(assert (= (and b!3729818 c!645635) b!3729809))

(assert (= (and b!3729818 (not c!645635)) b!3729811))

(assert (= (and b!3729811 c!645632) b!3729817))

(assert (= (and b!3729811 (not c!645632)) b!3729816))

(assert (= (and b!3729816 c!645633) b!3729813))

(assert (= (and b!3729816 (not c!645633)) b!3729810))

(assert (= (or b!3729813 b!3729810) bm!272284))

(assert (= (or b!3729817 b!3729813) bm!272285))

(assert (= (or b!3729809 bm!272285) bm!272287))

(assert (= (or b!3729809 bm!272284) bm!272286))

(declare-fun m!4229753 () Bool)

(assert (=> bm!272286 m!4229753))

(declare-fun m!4229755 () Bool)

(assert (=> bm!272287 m!4229755))

(declare-fun m!4229757 () Bool)

(assert (=> d!1090459 m!4229757))

(declare-fun m!4229759 () Bool)

(assert (=> d!1090459 m!4229759))

(declare-fun m!4229761 () Bool)

(assert (=> b!3729816 m!4229761))

(assert (=> bm!272179 d!1090459))

(declare-fun d!1090461 () Bool)

(assert (=> d!1090461 (= (nullable!3830 (regOne!22356 (reg!11251 r!26968))) (nullableFct!1084 (regOne!22356 (reg!11251 r!26968))))))

(declare-fun bs!575078 () Bool)

(assert (= bs!575078 d!1090461))

(declare-fun m!4229763 () Bool)

(assert (=> bs!575078 m!4229763))

(assert (=> b!3729454 d!1090461))

(declare-fun d!1090463 () Bool)

(declare-fun c!645636 () Bool)

(assert (=> d!1090463 (= c!645636 (is-Nil!39679 (usedCharacters!1185 r!26968)))))

(declare-fun e!2307810 () (Set C!22030))

(assert (=> d!1090463 (= (content!5779 (usedCharacters!1185 r!26968)) e!2307810)))

(declare-fun b!3729819 () Bool)

(assert (=> b!3729819 (= e!2307810 (as set.empty (Set C!22030)))))

(declare-fun b!3729820 () Bool)

(assert (=> b!3729820 (= e!2307810 (set.union (set.insert (h!45099 (usedCharacters!1185 r!26968)) (as set.empty (Set C!22030))) (content!5779 (t!302486 (usedCharacters!1185 r!26968)))))))

(assert (= (and d!1090463 c!645636) b!3729819))

(assert (= (and d!1090463 (not c!645636)) b!3729820))

(declare-fun m!4229765 () Bool)

(assert (=> b!3729820 m!4229765))

(assert (=> b!3729820 m!4229683))

(assert (=> d!1090397 d!1090463))

(declare-fun b!3729821 () Bool)

(declare-fun e!2307813 () List!39803)

(declare-fun call!272293 () List!39803)

(assert (=> b!3729821 (= e!2307813 call!272293)))

(declare-fun b!3729822 () Bool)

(declare-fun e!2307811 () List!39803)

(assert (=> b!3729822 (= e!2307811 e!2307813)))

(declare-fun c!645638 () Bool)

(assert (=> b!3729822 (= c!645638 (is-Union!10922 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))))))

(declare-fun call!272295 () List!39803)

(declare-fun bm!272288 () Bool)

(assert (=> bm!272288 (= call!272295 (usedCharacters!1185 (ite c!645638 (regTwo!22357 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))) (regOne!22356 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))))))))

(declare-fun d!1090465 () Bool)

(declare-fun c!645639 () Bool)

(assert (=> d!1090465 (= c!645639 (or (is-EmptyExpr!10922 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))) (is-EmptyLang!10922 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797))))))))

(declare-fun e!2307812 () List!39803)

(assert (=> d!1090465 (= (usedCharacters!1185 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))) e!2307812)))

(declare-fun b!3729823 () Bool)

(declare-fun e!2307814 () List!39803)

(assert (=> b!3729823 (= e!2307812 e!2307814)))

(declare-fun c!645640 () Bool)

(assert (=> b!3729823 (= c!645640 (is-ElementMatch!10922 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))))))

(declare-fun b!3729824 () Bool)

(assert (=> b!3729824 (= e!2307812 Nil!39679)))

(declare-fun b!3729825 () Bool)

(assert (=> b!3729825 (= e!2307813 call!272293)))

(declare-fun b!3729826 () Bool)

(assert (=> b!3729826 (= e!2307814 (Cons!39679 (c!645484 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))) Nil!39679))))

(declare-fun bm!272289 () Bool)

(declare-fun call!272296 () List!39803)

(declare-fun call!272294 () List!39803)

(assert (=> bm!272289 (= call!272296 call!272294)))

(declare-fun bm!272290 () Bool)

(assert (=> bm!272290 (= call!272293 (++!9846 (ite c!645638 call!272296 call!272295) (ite c!645638 call!272295 call!272296)))))

(declare-fun c!645637 () Bool)

(declare-fun b!3729827 () Bool)

(assert (=> b!3729827 (= c!645637 (is-Star!10922 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))))))

(assert (=> b!3729827 (= e!2307814 e!2307811)))

(declare-fun b!3729828 () Bool)

(assert (=> b!3729828 (= e!2307811 call!272294)))

(declare-fun bm!272291 () Bool)

(assert (=> bm!272291 (= call!272294 (usedCharacters!1185 (ite c!645637 (reg!11251 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))) (ite c!645638 (regOne!22357 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797)))) (regTwo!22356 (ite c!645495 (regTwo!22357 (derivativeStep!3363 r!26968 c!13797)) (regOne!22356 (derivativeStep!3363 r!26968 c!13797))))))))))

(assert (= (and d!1090465 c!645639) b!3729824))

(assert (= (and d!1090465 (not c!645639)) b!3729823))

(assert (= (and b!3729823 c!645640) b!3729826))

(assert (= (and b!3729823 (not c!645640)) b!3729827))

(assert (= (and b!3729827 c!645637) b!3729828))

(assert (= (and b!3729827 (not c!645637)) b!3729822))

(assert (= (and b!3729822 c!645638) b!3729821))

(assert (= (and b!3729822 (not c!645638)) b!3729825))

(assert (= (or b!3729821 b!3729825) bm!272289))

(assert (= (or b!3729821 b!3729825) bm!272288))

(assert (= (or b!3729821 b!3729825) bm!272290))

(assert (= (or b!3729828 bm!272289) bm!272291))

(declare-fun m!4229767 () Bool)

(assert (=> bm!272288 m!4229767))

(declare-fun m!4229769 () Bool)

(assert (=> bm!272290 m!4229769))

(declare-fun m!4229771 () Bool)

(assert (=> bm!272291 m!4229771))

(assert (=> bm!272156 d!1090465))

(declare-fun bm!272292 () Bool)

(declare-fun call!272299 () Bool)

(declare-fun call!272297 () Bool)

(assert (=> bm!272292 (= call!272299 call!272297)))

(declare-fun b!3729830 () Bool)

(declare-fun res!1514457 () Bool)

(declare-fun e!2307818 () Bool)

(assert (=> b!3729830 (=> (not res!1514457) (not e!2307818))))

(declare-fun call!272298 () Bool)

(assert (=> b!3729830 (= res!1514457 call!272298)))

(declare-fun e!2307817 () Bool)

(assert (=> b!3729830 (= e!2307817 e!2307818)))

(declare-fun b!3729831 () Bool)

(declare-fun e!2307816 () Bool)

(assert (=> b!3729831 (= e!2307816 e!2307817)))

(declare-fun c!645642 () Bool)

(assert (=> b!3729831 (= c!645642 (is-Union!10922 lt!1298615))))

(declare-fun b!3729832 () Bool)

(declare-fun e!2307820 () Bool)

(declare-fun e!2307819 () Bool)

(assert (=> b!3729832 (= e!2307820 e!2307819)))

(declare-fun res!1514458 () Bool)

(assert (=> b!3729832 (=> (not res!1514458) (not e!2307819))))

(assert (=> b!3729832 (= res!1514458 call!272298)))

(declare-fun b!3729833 () Bool)

(assert (=> b!3729833 (= e!2307818 call!272299)))

(declare-fun b!3729834 () Bool)

(declare-fun e!2307815 () Bool)

(assert (=> b!3729834 (= e!2307815 call!272297)))

(declare-fun b!3729835 () Bool)

(assert (=> b!3729835 (= e!2307819 call!272299)))

(declare-fun bm!272293 () Bool)

(assert (=> bm!272293 (= call!272298 (validRegex!5029 (ite c!645642 (regOne!22357 lt!1298615) (regOne!22356 lt!1298615))))))

(declare-fun bm!272294 () Bool)

(declare-fun c!645641 () Bool)

(assert (=> bm!272294 (= call!272297 (validRegex!5029 (ite c!645641 (reg!11251 lt!1298615) (ite c!645642 (regTwo!22357 lt!1298615) (regTwo!22356 lt!1298615)))))))

(declare-fun d!1090467 () Bool)

(declare-fun res!1514456 () Bool)

(declare-fun e!2307821 () Bool)

(assert (=> d!1090467 (=> res!1514456 e!2307821)))

(assert (=> d!1090467 (= res!1514456 (is-ElementMatch!10922 lt!1298615))))

(assert (=> d!1090467 (= (validRegex!5029 lt!1298615) e!2307821)))

(declare-fun b!3729829 () Bool)

(assert (=> b!3729829 (= e!2307821 e!2307816)))

(assert (=> b!3729829 (= c!645641 (is-Star!10922 lt!1298615))))

(declare-fun b!3729836 () Bool)

(assert (=> b!3729836 (= e!2307816 e!2307815)))

(declare-fun res!1514459 () Bool)

(assert (=> b!3729836 (= res!1514459 (not (nullable!3830 (reg!11251 lt!1298615))))))

(assert (=> b!3729836 (=> (not res!1514459) (not e!2307815))))

(declare-fun b!3729837 () Bool)

(declare-fun res!1514455 () Bool)

(assert (=> b!3729837 (=> res!1514455 e!2307820)))

(assert (=> b!3729837 (= res!1514455 (not (is-Concat!17193 lt!1298615)))))

(assert (=> b!3729837 (= e!2307817 e!2307820)))

(assert (= (and d!1090467 (not res!1514456)) b!3729829))

(assert (= (and b!3729829 c!645641) b!3729836))

(assert (= (and b!3729829 (not c!645641)) b!3729831))

(assert (= (and b!3729836 res!1514459) b!3729834))

(assert (= (and b!3729831 c!645642) b!3729830))

(assert (= (and b!3729831 (not c!645642)) b!3729837))

(assert (= (and b!3729830 res!1514457) b!3729833))

(assert (= (and b!3729837 (not res!1514455)) b!3729832))

(assert (= (and b!3729832 res!1514458) b!3729835))

(assert (= (or b!3729833 b!3729835) bm!272292))

(assert (= (or b!3729830 b!3729832) bm!272293))

(assert (= (or b!3729834 bm!272292) bm!272294))

(declare-fun m!4229773 () Bool)

(assert (=> bm!272293 m!4229773))

(declare-fun m!4229775 () Bool)

(assert (=> bm!272294 m!4229775))

(declare-fun m!4229777 () Bool)

(assert (=> b!3729836 m!4229777))

(assert (=> d!1090373 d!1090467))

(assert (=> d!1090373 d!1090387))

(declare-fun b!3729838 () Bool)

(declare-fun e!2307823 () Regex!10922)

(declare-fun call!272301 () Regex!10922)

(declare-fun call!272300 () Regex!10922)

(assert (=> b!3729838 (= e!2307823 (Union!10922 call!272301 call!272300))))

(declare-fun bm!272295 () Bool)

(declare-fun call!272302 () Regex!10922)

(assert (=> bm!272295 (= call!272302 call!272300)))

(declare-fun bm!272296 () Bool)

(declare-fun call!272303 () Regex!10922)

(assert (=> bm!272296 (= call!272303 call!272301)))

(declare-fun e!2307822 () Regex!10922)

(declare-fun b!3729839 () Bool)

(assert (=> b!3729839 (= e!2307822 (Union!10922 (Concat!17193 call!272302 (regTwo!22356 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968))))) EmptyLang!10922))))

(declare-fun b!3729840 () Bool)

(declare-fun e!2307825 () Regex!10922)

(assert (=> b!3729840 (= e!2307823 e!2307825)))

(declare-fun c!645644 () Bool)

(assert (=> b!3729840 (= c!645644 (is-Star!10922 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))))))

(declare-fun c!645647 () Bool)

(declare-fun c!645645 () Bool)

(declare-fun bm!272297 () Bool)

(assert (=> bm!272297 (= call!272300 (derivativeStep!3363 (ite c!645647 (regTwo!22357 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))) (ite c!645645 (regTwo!22356 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))) (regOne!22356 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))))) c!13797))))

(declare-fun b!3729841 () Bool)

(declare-fun e!2307824 () Regex!10922)

(assert (=> b!3729841 (= e!2307824 (ite (= c!13797 (c!645484 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968))))) EmptyExpr!10922 EmptyLang!10922))))

(declare-fun b!3729842 () Bool)

(assert (=> b!3729842 (= e!2307822 (Union!10922 (Concat!17193 call!272303 (regTwo!22356 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968))))) call!272302))))

(declare-fun bm!272298 () Bool)

(assert (=> bm!272298 (= call!272301 (derivativeStep!3363 (ite c!645647 (regOne!22357 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))) (ite c!645644 (reg!11251 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))) (regOne!22356 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))))) c!13797))))

(declare-fun d!1090469 () Bool)

(declare-fun lt!1298639 () Regex!10922)

(assert (=> d!1090469 (validRegex!5029 lt!1298639)))

(declare-fun e!2307826 () Regex!10922)

(assert (=> d!1090469 (= lt!1298639 e!2307826)))

(declare-fun c!645643 () Bool)

(assert (=> d!1090469 (= c!645643 (or (is-EmptyExpr!10922 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))) (is-EmptyLang!10922 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968))))))))

(assert (=> d!1090469 (validRegex!5029 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968))))))

(assert (=> d!1090469 (= (derivativeStep!3363 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968))) c!13797) lt!1298639)))

(declare-fun b!3729843 () Bool)

(assert (=> b!3729843 (= e!2307826 EmptyLang!10922)))

(declare-fun b!3729844 () Bool)

(assert (=> b!3729844 (= e!2307826 e!2307824)))

(declare-fun c!645646 () Bool)

(assert (=> b!3729844 (= c!645646 (is-ElementMatch!10922 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))))))

(declare-fun b!3729845 () Bool)

(assert (=> b!3729845 (= c!645645 (nullable!3830 (regOne!22356 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968))))))))

(assert (=> b!3729845 (= e!2307825 e!2307822)))

(declare-fun b!3729846 () Bool)

(assert (=> b!3729846 (= e!2307825 (Concat!17193 call!272303 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))))))

(declare-fun b!3729847 () Bool)

(assert (=> b!3729847 (= c!645647 (is-Union!10922 (ite c!645521 (regTwo!22357 r!26968) (ite c!645519 (regTwo!22356 r!26968) (regOne!22356 r!26968)))))))

(assert (=> b!3729847 (= e!2307824 e!2307823)))

(assert (= (and d!1090469 c!645643) b!3729843))

(assert (= (and d!1090469 (not c!645643)) b!3729844))

(assert (= (and b!3729844 c!645646) b!3729841))

(assert (= (and b!3729844 (not c!645646)) b!3729847))

(assert (= (and b!3729847 c!645647) b!3729838))

(assert (= (and b!3729847 (not c!645647)) b!3729840))

(assert (= (and b!3729840 c!645644) b!3729846))

(assert (= (and b!3729840 (not c!645644)) b!3729845))

(assert (= (and b!3729845 c!645645) b!3729842))

(assert (= (and b!3729845 (not c!645645)) b!3729839))

(assert (= (or b!3729842 b!3729839) bm!272295))

(assert (= (or b!3729846 b!3729842) bm!272296))

(assert (= (or b!3729838 bm!272296) bm!272298))

(assert (= (or b!3729838 bm!272295) bm!272297))

(declare-fun m!4229779 () Bool)

(assert (=> bm!272297 m!4229779))

(declare-fun m!4229781 () Bool)

(assert (=> bm!272298 m!4229781))

(declare-fun m!4229783 () Bool)

(assert (=> d!1090469 m!4229783))

(declare-fun m!4229785 () Bool)

(assert (=> d!1090469 m!4229785))

(declare-fun m!4229787 () Bool)

(assert (=> b!3729845 m!4229787))

(assert (=> bm!272178 d!1090469))

(declare-fun b!3729848 () Bool)

(declare-fun e!2307828 () Regex!10922)

(declare-fun call!272305 () Regex!10922)

(declare-fun call!272304 () Regex!10922)

(assert (=> b!3729848 (= e!2307828 (Union!10922 call!272305 call!272304))))

(declare-fun bm!272299 () Bool)

(declare-fun call!272306 () Regex!10922)

(assert (=> bm!272299 (= call!272306 call!272304)))

(declare-fun bm!272300 () Bool)

(declare-fun call!272307 () Regex!10922)

(assert (=> bm!272300 (= call!272307 call!272305)))

(declare-fun b!3729849 () Bool)

(declare-fun e!2307827 () Regex!10922)

(assert (=> b!3729849 (= e!2307827 (Union!10922 (Concat!17193 call!272306 (regTwo!22356 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))) EmptyLang!10922))))

(declare-fun b!3729850 () Bool)

(declare-fun e!2307830 () Regex!10922)

(assert (=> b!3729850 (= e!2307828 e!2307830)))

(declare-fun c!645649 () Bool)

(assert (=> b!3729850 (= c!645649 (is-Star!10922 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(declare-fun c!645650 () Bool)

(declare-fun bm!272301 () Bool)

(declare-fun c!645652 () Bool)

(assert (=> bm!272301 (= call!272304 (derivativeStep!3363 (ite c!645652 (regTwo!22357 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (ite c!645650 (regTwo!22356 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (regOne!22356 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))) c!13797))))

(declare-fun b!3729851 () Bool)

(declare-fun e!2307829 () Regex!10922)

(assert (=> b!3729851 (= e!2307829 (ite (= c!13797 (c!645484 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))) EmptyExpr!10922 EmptyLang!10922))))

(declare-fun b!3729852 () Bool)

(assert (=> b!3729852 (= e!2307827 (Union!10922 (Concat!17193 call!272307 (regTwo!22356 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))) call!272306))))

(declare-fun bm!272302 () Bool)

(assert (=> bm!272302 (= call!272305 (derivativeStep!3363 (ite c!645652 (regOne!22357 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (ite c!645649 (reg!11251 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (regOne!22356 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))) c!13797))))

(declare-fun d!1090471 () Bool)

(declare-fun lt!1298640 () Regex!10922)

(assert (=> d!1090471 (validRegex!5029 lt!1298640)))

(declare-fun e!2307831 () Regex!10922)

(assert (=> d!1090471 (= lt!1298640 e!2307831)))

(declare-fun c!645648 () Bool)

(assert (=> d!1090471 (= c!645648 (or (is-EmptyExpr!10922 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (is-EmptyLang!10922 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))))

(assert (=> d!1090471 (validRegex!5029 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(assert (=> d!1090471 (= (derivativeStep!3363 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) c!13797) lt!1298640)))

(declare-fun b!3729853 () Bool)

(assert (=> b!3729853 (= e!2307831 EmptyLang!10922)))

(declare-fun b!3729854 () Bool)

(assert (=> b!3729854 (= e!2307831 e!2307829)))

(declare-fun c!645651 () Bool)

(assert (=> b!3729854 (= c!645651 (is-ElementMatch!10922 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(declare-fun b!3729855 () Bool)

(assert (=> b!3729855 (= c!645650 (nullable!3830 (regOne!22356 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))))

(assert (=> b!3729855 (= e!2307830 e!2307827)))

(declare-fun b!3729856 () Bool)

(assert (=> b!3729856 (= e!2307830 (Concat!17193 call!272307 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(declare-fun b!3729857 () Bool)

(assert (=> b!3729857 (= c!645652 (is-Union!10922 (ite c!645526 (regOne!22357 (reg!11251 r!26968)) (ite c!645523 (reg!11251 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(assert (=> b!3729857 (= e!2307829 e!2307828)))

(assert (= (and d!1090471 c!645648) b!3729853))

(assert (= (and d!1090471 (not c!645648)) b!3729854))

(assert (= (and b!3729854 c!645651) b!3729851))

(assert (= (and b!3729854 (not c!645651)) b!3729857))

(assert (= (and b!3729857 c!645652) b!3729848))

(assert (= (and b!3729857 (not c!645652)) b!3729850))

(assert (= (and b!3729850 c!645649) b!3729856))

(assert (= (and b!3729850 (not c!645649)) b!3729855))

(assert (= (and b!3729855 c!645650) b!3729852))

(assert (= (and b!3729855 (not c!645650)) b!3729849))

(assert (= (or b!3729852 b!3729849) bm!272299))

(assert (= (or b!3729856 b!3729852) bm!272300))

(assert (= (or b!3729848 bm!272300) bm!272302))

(assert (= (or b!3729848 bm!272299) bm!272301))

(declare-fun m!4229789 () Bool)

(assert (=> bm!272301 m!4229789))

(declare-fun m!4229791 () Bool)

(assert (=> bm!272302 m!4229791))

(declare-fun m!4229793 () Bool)

(assert (=> d!1090471 m!4229793))

(declare-fun m!4229795 () Bool)

(assert (=> d!1090471 m!4229795))

(declare-fun m!4229797 () Bool)

(assert (=> b!3729855 m!4229797))

(assert (=> bm!272183 d!1090471))

(declare-fun b!3729858 () Bool)

(declare-fun e!2307834 () List!39803)

(declare-fun call!272308 () List!39803)

(assert (=> b!3729858 (= e!2307834 call!272308)))

(declare-fun b!3729859 () Bool)

(declare-fun e!2307832 () List!39803)

(assert (=> b!3729859 (= e!2307832 e!2307834)))

(declare-fun c!645654 () Bool)

(assert (=> b!3729859 (= c!645654 (is-Union!10922 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))))))

(declare-fun call!272310 () List!39803)

(declare-fun bm!272303 () Bool)

(assert (=> bm!272303 (= call!272310 (usedCharacters!1185 (ite c!645654 (regTwo!22357 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))) (regOne!22356 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))))))))

(declare-fun d!1090473 () Bool)

(declare-fun c!645655 () Bool)

(assert (=> d!1090473 (= c!645655 (or (is-EmptyExpr!10922 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))) (is-EmptyLang!10922 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968))))))))

(declare-fun e!2307833 () List!39803)

(assert (=> d!1090473 (= (usedCharacters!1185 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))) e!2307833)))

(declare-fun b!3729860 () Bool)

(declare-fun e!2307835 () List!39803)

(assert (=> b!3729860 (= e!2307833 e!2307835)))

(declare-fun c!645656 () Bool)

(assert (=> b!3729860 (= c!645656 (is-ElementMatch!10922 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))))))

(declare-fun b!3729861 () Bool)

(assert (=> b!3729861 (= e!2307833 Nil!39679)))

(declare-fun b!3729862 () Bool)

(assert (=> b!3729862 (= e!2307834 call!272308)))

(declare-fun b!3729863 () Bool)

(assert (=> b!3729863 (= e!2307835 (Cons!39679 (c!645484 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))) Nil!39679))))

(declare-fun bm!272304 () Bool)

(declare-fun call!272311 () List!39803)

(declare-fun call!272309 () List!39803)

(assert (=> bm!272304 (= call!272311 call!272309)))

(declare-fun bm!272305 () Bool)

(assert (=> bm!272305 (= call!272308 (++!9846 (ite c!645654 call!272311 call!272310) (ite c!645654 call!272310 call!272311)))))

(declare-fun b!3729864 () Bool)

(declare-fun c!645653 () Bool)

(assert (=> b!3729864 (= c!645653 (is-Star!10922 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))))))

(assert (=> b!3729864 (= e!2307835 e!2307832)))

(declare-fun b!3729865 () Bool)

(assert (=> b!3729865 (= e!2307832 call!272309)))

(declare-fun bm!272306 () Bool)

(assert (=> bm!272306 (= call!272309 (usedCharacters!1185 (ite c!645653 (reg!11251 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))) (ite c!645654 (regOne!22357 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968)))) (regTwo!22356 (ite c!645551 (reg!11251 r!26968) (ite c!645552 (regOne!22357 r!26968) (regTwo!22356 r!26968))))))))))

(assert (= (and d!1090473 c!645655) b!3729861))

(assert (= (and d!1090473 (not c!645655)) b!3729860))

(assert (= (and b!3729860 c!645656) b!3729863))

(assert (= (and b!3729860 (not c!645656)) b!3729864))

(assert (= (and b!3729864 c!645653) b!3729865))

(assert (= (and b!3729864 (not c!645653)) b!3729859))

(assert (= (and b!3729859 c!645654) b!3729858))

(assert (= (and b!3729859 (not c!645654)) b!3729862))

(assert (= (or b!3729858 b!3729862) bm!272304))

(assert (= (or b!3729858 b!3729862) bm!272303))

(assert (= (or b!3729858 b!3729862) bm!272305))

(assert (= (or b!3729865 bm!272304) bm!272306))

(declare-fun m!4229799 () Bool)

(assert (=> bm!272303 m!4229799))

(declare-fun m!4229801 () Bool)

(assert (=> bm!272305 m!4229801))

(declare-fun m!4229803 () Bool)

(assert (=> bm!272306 m!4229803))

(assert (=> bm!272215 d!1090473))

(declare-fun b!3729866 () Bool)

(declare-fun e!2307838 () List!39803)

(declare-fun call!272312 () List!39803)

(assert (=> b!3729866 (= e!2307838 call!272312)))

(declare-fun b!3729867 () Bool)

(declare-fun e!2307836 () List!39803)

(assert (=> b!3729867 (= e!2307836 e!2307838)))

(declare-fun c!645658 () Bool)

(assert (=> b!3729867 (= c!645658 (is-Union!10922 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(declare-fun call!272314 () List!39803)

(declare-fun bm!272307 () Bool)

(assert (=> bm!272307 (= call!272314 (usedCharacters!1185 (ite c!645658 (regTwo!22357 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) (regOne!22356 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))))

(declare-fun d!1090475 () Bool)

(declare-fun c!645659 () Bool)

(assert (=> d!1090475 (= c!645659 (or (is-EmptyExpr!10922 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) (is-EmptyLang!10922 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(declare-fun e!2307837 () List!39803)

(assert (=> d!1090475 (= (usedCharacters!1185 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) e!2307837)))

(declare-fun b!3729868 () Bool)

(declare-fun e!2307839 () List!39803)

(assert (=> b!3729868 (= e!2307837 e!2307839)))

(declare-fun c!645660 () Bool)

(assert (=> b!3729868 (= c!645660 (is-ElementMatch!10922 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(declare-fun b!3729869 () Bool)

(assert (=> b!3729869 (= e!2307837 Nil!39679)))

(declare-fun b!3729870 () Bool)

(assert (=> b!3729870 (= e!2307838 call!272312)))

(declare-fun b!3729871 () Bool)

(assert (=> b!3729871 (= e!2307839 (Cons!39679 (c!645484 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) Nil!39679))))

(declare-fun bm!272308 () Bool)

(declare-fun call!272315 () List!39803)

(declare-fun call!272313 () List!39803)

(assert (=> bm!272308 (= call!272315 call!272313)))

(declare-fun bm!272309 () Bool)

(assert (=> bm!272309 (= call!272312 (++!9846 (ite c!645658 call!272315 call!272314) (ite c!645658 call!272314 call!272315)))))

(declare-fun b!3729872 () Bool)

(declare-fun c!645657 () Bool)

(assert (=> b!3729872 (= c!645657 (is-Star!10922 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(assert (=> b!3729872 (= e!2307839 e!2307836)))

(declare-fun b!3729873 () Bool)

(assert (=> b!3729873 (= e!2307836 call!272313)))

(declare-fun bm!272310 () Bool)

(assert (=> bm!272310 (= call!272313 (usedCharacters!1185 (ite c!645657 (reg!11251 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) (ite c!645658 (regOne!22357 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) (regTwo!22356 (ite c!645548 (regTwo!22357 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))))

(assert (= (and d!1090475 c!645659) b!3729869))

(assert (= (and d!1090475 (not c!645659)) b!3729868))

(assert (= (and b!3729868 c!645660) b!3729871))

(assert (= (and b!3729868 (not c!645660)) b!3729872))

(assert (= (and b!3729872 c!645657) b!3729873))

(assert (= (and b!3729872 (not c!645657)) b!3729867))

(assert (= (and b!3729867 c!645658) b!3729866))

(assert (= (and b!3729867 (not c!645658)) b!3729870))

(assert (= (or b!3729866 b!3729870) bm!272308))

(assert (= (or b!3729866 b!3729870) bm!272307))

(assert (= (or b!3729866 b!3729870) bm!272309))

(assert (= (or b!3729873 bm!272308) bm!272310))

(declare-fun m!4229805 () Bool)

(assert (=> bm!272307 m!4229805))

(declare-fun m!4229807 () Bool)

(assert (=> bm!272309 m!4229807))

(declare-fun m!4229809 () Bool)

(assert (=> bm!272310 m!4229809))

(assert (=> bm!272208 d!1090475))

(declare-fun d!1090477 () Bool)

(declare-fun lt!1298641 () Bool)

(assert (=> d!1090477 (= lt!1298641 (set.member cNot!42 (content!5779 (t!302486 (usedCharacters!1185 (reg!11251 r!26968))))))))

(declare-fun e!2307841 () Bool)

(assert (=> d!1090477 (= lt!1298641 e!2307841)))

(declare-fun res!1514460 () Bool)

(assert (=> d!1090477 (=> (not res!1514460) (not e!2307841))))

(assert (=> d!1090477 (= res!1514460 (is-Cons!39679 (t!302486 (usedCharacters!1185 (reg!11251 r!26968)))))))

(assert (=> d!1090477 (= (contains!8015 (t!302486 (usedCharacters!1185 (reg!11251 r!26968))) cNot!42) lt!1298641)))

(declare-fun b!3729874 () Bool)

(declare-fun e!2307840 () Bool)

(assert (=> b!3729874 (= e!2307841 e!2307840)))

(declare-fun res!1514461 () Bool)

(assert (=> b!3729874 (=> res!1514461 e!2307840)))

(assert (=> b!3729874 (= res!1514461 (= (h!45099 (t!302486 (usedCharacters!1185 (reg!11251 r!26968)))) cNot!42))))

(declare-fun b!3729875 () Bool)

(assert (=> b!3729875 (= e!2307840 (contains!8015 (t!302486 (t!302486 (usedCharacters!1185 (reg!11251 r!26968)))) cNot!42))))

(assert (= (and d!1090477 res!1514460) b!3729874))

(assert (= (and b!3729874 (not res!1514461)) b!3729875))

(assert (=> d!1090477 m!4229669))

(declare-fun m!4229811 () Bool)

(assert (=> d!1090477 m!4229811))

(declare-fun m!4229813 () Bool)

(assert (=> b!3729875 m!4229813))

(assert (=> b!3729522 d!1090477))

(declare-fun d!1090479 () Bool)

(declare-fun c!645661 () Bool)

(assert (=> d!1090479 (= c!645661 (is-Nil!39679 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797))))))

(declare-fun e!2307842 () (Set C!22030))

(assert (=> d!1090479 (= (content!5779 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797))) e!2307842)))

(declare-fun b!3729876 () Bool)

(assert (=> b!3729876 (= e!2307842 (as set.empty (Set C!22030)))))

(declare-fun b!3729877 () Bool)

(assert (=> b!3729877 (= e!2307842 (set.union (set.insert (h!45099 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797))) (as set.empty (Set C!22030))) (content!5779 (t!302486 (usedCharacters!1185 (derivativeStep!3363 r!26968 c!13797))))))))

(assert (= (and d!1090479 c!645661) b!3729876))

(assert (= (and d!1090479 (not c!645661)) b!3729877))

(declare-fun m!4229815 () Bool)

(assert (=> b!3729877 m!4229815))

(assert (=> b!3729877 m!4229747))

(assert (=> d!1090369 d!1090479))

(declare-fun b!3729878 () Bool)

(declare-fun e!2307844 () Regex!10922)

(declare-fun call!272317 () Regex!10922)

(declare-fun call!272316 () Regex!10922)

(assert (=> b!3729878 (= e!2307844 (Union!10922 call!272317 call!272316))))

(declare-fun bm!272311 () Bool)

(declare-fun call!272318 () Regex!10922)

(assert (=> bm!272311 (= call!272318 call!272316)))

(declare-fun bm!272312 () Bool)

(declare-fun call!272319 () Regex!10922)

(assert (=> bm!272312 (= call!272319 call!272317)))

(declare-fun e!2307843 () Regex!10922)

(declare-fun b!3729879 () Bool)

(assert (=> b!3729879 (= e!2307843 (Union!10922 (Concat!17193 call!272318 (regTwo!22356 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))) EmptyLang!10922))))

(declare-fun b!3729880 () Bool)

(declare-fun e!2307846 () Regex!10922)

(assert (=> b!3729880 (= e!2307844 e!2307846)))

(declare-fun c!645663 () Bool)

(assert (=> b!3729880 (= c!645663 (is-Star!10922 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(declare-fun c!645664 () Bool)

(declare-fun c!645666 () Bool)

(declare-fun bm!272313 () Bool)

(assert (=> bm!272313 (= call!272316 (derivativeStep!3363 (ite c!645666 (regTwo!22357 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (ite c!645664 (regTwo!22356 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (regOne!22356 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))) c!13797))))

(declare-fun e!2307845 () Regex!10922)

(declare-fun b!3729881 () Bool)

(assert (=> b!3729881 (= e!2307845 (ite (= c!13797 (c!645484 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))) EmptyExpr!10922 EmptyLang!10922))))

(declare-fun b!3729882 () Bool)

(assert (=> b!3729882 (= e!2307843 (Union!10922 (Concat!17193 call!272319 (regTwo!22356 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))) call!272318))))

(declare-fun bm!272314 () Bool)

(assert (=> bm!272314 (= call!272317 (derivativeStep!3363 (ite c!645666 (regOne!22357 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (ite c!645663 (reg!11251 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (regOne!22356 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))) c!13797))))

(declare-fun d!1090481 () Bool)

(declare-fun lt!1298642 () Regex!10922)

(assert (=> d!1090481 (validRegex!5029 lt!1298642)))

(declare-fun e!2307847 () Regex!10922)

(assert (=> d!1090481 (= lt!1298642 e!2307847)))

(declare-fun c!645662 () Bool)

(assert (=> d!1090481 (= c!645662 (or (is-EmptyExpr!10922 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))) (is-EmptyLang!10922 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))))

(assert (=> d!1090481 (validRegex!5029 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))

(assert (=> d!1090481 (= (derivativeStep!3363 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))) c!13797) lt!1298642)))

(declare-fun b!3729883 () Bool)

(assert (=> b!3729883 (= e!2307847 EmptyLang!10922)))

(declare-fun b!3729884 () Bool)

(assert (=> b!3729884 (= e!2307847 e!2307845)))

(declare-fun c!645665 () Bool)

(assert (=> b!3729884 (= c!645665 (is-ElementMatch!10922 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(declare-fun b!3729885 () Bool)

(assert (=> b!3729885 (= c!645664 (nullable!3830 (regOne!22356 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968)))))))))

(assert (=> b!3729885 (= e!2307846 e!2307843)))

(declare-fun b!3729886 () Bool)

(assert (=> b!3729886 (= e!2307846 (Concat!17193 call!272319 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(declare-fun b!3729887 () Bool)

(assert (=> b!3729887 (= c!645666 (is-Union!10922 (ite c!645526 (regTwo!22357 (reg!11251 r!26968)) (ite c!645524 (regTwo!22356 (reg!11251 r!26968)) (regOne!22356 (reg!11251 r!26968))))))))

(assert (=> b!3729887 (= e!2307845 e!2307844)))

(assert (= (and d!1090481 c!645662) b!3729883))

(assert (= (and d!1090481 (not c!645662)) b!3729884))

(assert (= (and b!3729884 c!645665) b!3729881))

(assert (= (and b!3729884 (not c!645665)) b!3729887))

(assert (= (and b!3729887 c!645666) b!3729878))

(assert (= (and b!3729887 (not c!645666)) b!3729880))

(assert (= (and b!3729880 c!645663) b!3729886))

(assert (= (and b!3729880 (not c!645663)) b!3729885))

(assert (= (and b!3729885 c!645664) b!3729882))

(assert (= (and b!3729885 (not c!645664)) b!3729879))

(assert (= (or b!3729882 b!3729879) bm!272311))

(assert (= (or b!3729886 b!3729882) bm!272312))

(assert (= (or b!3729878 bm!272312) bm!272314))

(assert (= (or b!3729878 bm!272311) bm!272313))

(declare-fun m!4229817 () Bool)

(assert (=> bm!272313 m!4229817))

(declare-fun m!4229819 () Bool)

(assert (=> bm!272314 m!4229819))

(declare-fun m!4229821 () Bool)

(assert (=> d!1090481 m!4229821))

(declare-fun m!4229823 () Bool)

(assert (=> d!1090481 m!4229823))

(declare-fun m!4229825 () Bool)

(assert (=> b!3729885 m!4229825))

(assert (=> bm!272182 d!1090481))

(declare-fun bm!272315 () Bool)

(declare-fun call!272322 () Bool)

(declare-fun call!272320 () Bool)

(assert (=> bm!272315 (= call!272322 call!272320)))

(declare-fun b!3729889 () Bool)

(declare-fun res!1514464 () Bool)

(declare-fun e!2307851 () Bool)

(assert (=> b!3729889 (=> (not res!1514464) (not e!2307851))))

(declare-fun call!272321 () Bool)

(assert (=> b!3729889 (= res!1514464 call!272321)))

(declare-fun e!2307850 () Bool)

(assert (=> b!3729889 (= e!2307850 e!2307851)))

(declare-fun b!3729890 () Bool)

(declare-fun e!2307849 () Bool)

(assert (=> b!3729890 (= e!2307849 e!2307850)))

(declare-fun c!645668 () Bool)

(assert (=> b!3729890 (= c!645668 (is-Union!10922 lt!1298616))))

(declare-fun b!3729891 () Bool)

(declare-fun e!2307853 () Bool)

(declare-fun e!2307852 () Bool)

(assert (=> b!3729891 (= e!2307853 e!2307852)))

(declare-fun res!1514465 () Bool)

(assert (=> b!3729891 (=> (not res!1514465) (not e!2307852))))

(assert (=> b!3729891 (= res!1514465 call!272321)))

(declare-fun b!3729892 () Bool)

(assert (=> b!3729892 (= e!2307851 call!272322)))

(declare-fun b!3729893 () Bool)

(declare-fun e!2307848 () Bool)

(assert (=> b!3729893 (= e!2307848 call!272320)))

(declare-fun b!3729894 () Bool)

(assert (=> b!3729894 (= e!2307852 call!272322)))

(declare-fun bm!272316 () Bool)

(assert (=> bm!272316 (= call!272321 (validRegex!5029 (ite c!645668 (regOne!22357 lt!1298616) (regOne!22356 lt!1298616))))))

(declare-fun bm!272317 () Bool)

(declare-fun c!645667 () Bool)

(assert (=> bm!272317 (= call!272320 (validRegex!5029 (ite c!645667 (reg!11251 lt!1298616) (ite c!645668 (regTwo!22357 lt!1298616) (regTwo!22356 lt!1298616)))))))

(declare-fun d!1090483 () Bool)

(declare-fun res!1514463 () Bool)

(declare-fun e!2307854 () Bool)

(assert (=> d!1090483 (=> res!1514463 e!2307854)))

(assert (=> d!1090483 (= res!1514463 (is-ElementMatch!10922 lt!1298616))))

(assert (=> d!1090483 (= (validRegex!5029 lt!1298616) e!2307854)))

(declare-fun b!3729888 () Bool)

(assert (=> b!3729888 (= e!2307854 e!2307849)))

(assert (=> b!3729888 (= c!645667 (is-Star!10922 lt!1298616))))

(declare-fun b!3729895 () Bool)

(assert (=> b!3729895 (= e!2307849 e!2307848)))

(declare-fun res!1514466 () Bool)

(assert (=> b!3729895 (= res!1514466 (not (nullable!3830 (reg!11251 lt!1298616))))))

(assert (=> b!3729895 (=> (not res!1514466) (not e!2307848))))

(declare-fun b!3729896 () Bool)

(declare-fun res!1514462 () Bool)

(assert (=> b!3729896 (=> res!1514462 e!2307853)))

(assert (=> b!3729896 (= res!1514462 (not (is-Concat!17193 lt!1298616)))))

(assert (=> b!3729896 (= e!2307850 e!2307853)))

(assert (= (and d!1090483 (not res!1514463)) b!3729888))

(assert (= (and b!3729888 c!645667) b!3729895))

(assert (= (and b!3729888 (not c!645667)) b!3729890))

(assert (= (and b!3729895 res!1514466) b!3729893))

(assert (= (and b!3729890 c!645668) b!3729889))

(assert (= (and b!3729890 (not c!645668)) b!3729896))

(assert (= (and b!3729889 res!1514464) b!3729892))

(assert (= (and b!3729896 (not res!1514462)) b!3729891))

(assert (= (and b!3729891 res!1514465) b!3729894))

(assert (= (or b!3729892 b!3729894) bm!272315))

(assert (= (or b!3729889 b!3729891) bm!272316))

(assert (= (or b!3729893 bm!272315) bm!272317))

(declare-fun m!4229827 () Bool)

(assert (=> bm!272316 m!4229827))

(declare-fun m!4229829 () Bool)

(assert (=> bm!272317 m!4229829))

(declare-fun m!4229831 () Bool)

(assert (=> b!3729895 m!4229831))

(assert (=> d!1090377 d!1090483))

(assert (=> d!1090377 d!1090381))

(declare-fun b!3729899 () Bool)

(declare-fun e!2307855 () Bool)

(declare-fun tp!1134857 () Bool)

(assert (=> b!3729899 (= e!2307855 tp!1134857)))

(declare-fun b!3729897 () Bool)

(assert (=> b!3729897 (= e!2307855 tp_is_empty!18859)))

(assert (=> b!3729561 (= tp!1134807 e!2307855)))

(declare-fun b!3729900 () Bool)

(declare-fun tp!1134858 () Bool)

(declare-fun tp!1134856 () Bool)

(assert (=> b!3729900 (= e!2307855 (and tp!1134858 tp!1134856))))

(declare-fun b!3729898 () Bool)

(declare-fun tp!1134855 () Bool)

(declare-fun tp!1134859 () Bool)

(assert (=> b!3729898 (= e!2307855 (and tp!1134855 tp!1134859))))

(assert (= (and b!3729561 (is-ElementMatch!10922 (reg!11251 (reg!11251 r!26968)))) b!3729897))

(assert (= (and b!3729561 (is-Concat!17193 (reg!11251 (reg!11251 r!26968)))) b!3729898))

(assert (= (and b!3729561 (is-Star!10922 (reg!11251 (reg!11251 r!26968)))) b!3729899))

(assert (= (and b!3729561 (is-Union!10922 (reg!11251 (reg!11251 r!26968)))) b!3729900))

(declare-fun b!3729903 () Bool)

(declare-fun e!2307856 () Bool)

(declare-fun tp!1134862 () Bool)

(assert (=> b!3729903 (= e!2307856 tp!1134862)))

(declare-fun b!3729901 () Bool)

(assert (=> b!3729901 (= e!2307856 tp_is_empty!18859)))

(assert (=> b!3729566 (= tp!1134813 e!2307856)))

(declare-fun b!3729904 () Bool)

(declare-fun tp!1134863 () Bool)

(declare-fun tp!1134861 () Bool)

(assert (=> b!3729904 (= e!2307856 (and tp!1134863 tp!1134861))))

(declare-fun b!3729902 () Bool)

(declare-fun tp!1134860 () Bool)

(declare-fun tp!1134864 () Bool)

(assert (=> b!3729902 (= e!2307856 (and tp!1134860 tp!1134864))))

(assert (= (and b!3729566 (is-ElementMatch!10922 (regOne!22357 (regOne!22357 r!26968)))) b!3729901))

(assert (= (and b!3729566 (is-Concat!17193 (regOne!22357 (regOne!22357 r!26968)))) b!3729902))

(assert (= (and b!3729566 (is-Star!10922 (regOne!22357 (regOne!22357 r!26968)))) b!3729903))

(assert (= (and b!3729566 (is-Union!10922 (regOne!22357 (regOne!22357 r!26968)))) b!3729904))

(declare-fun b!3729907 () Bool)

(declare-fun e!2307857 () Bool)

(declare-fun tp!1134867 () Bool)

(assert (=> b!3729907 (= e!2307857 tp!1134867)))

(declare-fun b!3729905 () Bool)

(assert (=> b!3729905 (= e!2307857 tp_is_empty!18859)))

(assert (=> b!3729566 (= tp!1134811 e!2307857)))

(declare-fun b!3729908 () Bool)

(declare-fun tp!1134868 () Bool)

(declare-fun tp!1134866 () Bool)

(assert (=> b!3729908 (= e!2307857 (and tp!1134868 tp!1134866))))

(declare-fun b!3729906 () Bool)

(declare-fun tp!1134865 () Bool)

(declare-fun tp!1134869 () Bool)

(assert (=> b!3729906 (= e!2307857 (and tp!1134865 tp!1134869))))

(assert (= (and b!3729566 (is-ElementMatch!10922 (regTwo!22357 (regOne!22357 r!26968)))) b!3729905))

(assert (= (and b!3729566 (is-Concat!17193 (regTwo!22357 (regOne!22357 r!26968)))) b!3729906))

(assert (= (and b!3729566 (is-Star!10922 (regTwo!22357 (regOne!22357 r!26968)))) b!3729907))

(assert (= (and b!3729566 (is-Union!10922 (regTwo!22357 (regOne!22357 r!26968)))) b!3729908))

(declare-fun b!3729911 () Bool)

(declare-fun e!2307858 () Bool)

(declare-fun tp!1134872 () Bool)

(assert (=> b!3729911 (= e!2307858 tp!1134872)))

(declare-fun b!3729909 () Bool)

(assert (=> b!3729909 (= e!2307858 tp_is_empty!18859)))

(assert (=> b!3729552 (= tp!1134795 e!2307858)))

(declare-fun b!3729912 () Bool)

(declare-fun tp!1134873 () Bool)

(declare-fun tp!1134871 () Bool)

(assert (=> b!3729912 (= e!2307858 (and tp!1134873 tp!1134871))))

(declare-fun b!3729910 () Bool)

(declare-fun tp!1134870 () Bool)

(declare-fun tp!1134874 () Bool)

(assert (=> b!3729910 (= e!2307858 (and tp!1134870 tp!1134874))))

(assert (= (and b!3729552 (is-ElementMatch!10922 (regOne!22356 (regOne!22356 r!26968)))) b!3729909))

(assert (= (and b!3729552 (is-Concat!17193 (regOne!22356 (regOne!22356 r!26968)))) b!3729910))

(assert (= (and b!3729552 (is-Star!10922 (regOne!22356 (regOne!22356 r!26968)))) b!3729911))

(assert (= (and b!3729552 (is-Union!10922 (regOne!22356 (regOne!22356 r!26968)))) b!3729912))

(declare-fun b!3729915 () Bool)

(declare-fun e!2307859 () Bool)

(declare-fun tp!1134877 () Bool)

(assert (=> b!3729915 (= e!2307859 tp!1134877)))

(declare-fun b!3729913 () Bool)

(assert (=> b!3729913 (= e!2307859 tp_is_empty!18859)))

(assert (=> b!3729552 (= tp!1134799 e!2307859)))

(declare-fun b!3729916 () Bool)

(declare-fun tp!1134878 () Bool)

(declare-fun tp!1134876 () Bool)

(assert (=> b!3729916 (= e!2307859 (and tp!1134878 tp!1134876))))

(declare-fun b!3729914 () Bool)

(declare-fun tp!1134875 () Bool)

(declare-fun tp!1134879 () Bool)

(assert (=> b!3729914 (= e!2307859 (and tp!1134875 tp!1134879))))

(assert (= (and b!3729552 (is-ElementMatch!10922 (regTwo!22356 (regOne!22356 r!26968)))) b!3729913))

(assert (= (and b!3729552 (is-Concat!17193 (regTwo!22356 (regOne!22356 r!26968)))) b!3729914))

(assert (= (and b!3729552 (is-Star!10922 (regTwo!22356 (regOne!22356 r!26968)))) b!3729915))

(assert (= (and b!3729552 (is-Union!10922 (regTwo!22356 (regOne!22356 r!26968)))) b!3729916))

(declare-fun b!3729919 () Bool)

(declare-fun e!2307860 () Bool)

(declare-fun tp!1134882 () Bool)

(assert (=> b!3729919 (= e!2307860 tp!1134882)))

(declare-fun b!3729917 () Bool)

(assert (=> b!3729917 (= e!2307860 tp_is_empty!18859)))

(assert (=> b!3729565 (= tp!1134812 e!2307860)))

(declare-fun b!3729920 () Bool)

(declare-fun tp!1134883 () Bool)

(declare-fun tp!1134881 () Bool)

(assert (=> b!3729920 (= e!2307860 (and tp!1134883 tp!1134881))))

(declare-fun b!3729918 () Bool)

(declare-fun tp!1134880 () Bool)

(declare-fun tp!1134884 () Bool)

(assert (=> b!3729918 (= e!2307860 (and tp!1134880 tp!1134884))))

(assert (= (and b!3729565 (is-ElementMatch!10922 (reg!11251 (regOne!22357 r!26968)))) b!3729917))

(assert (= (and b!3729565 (is-Concat!17193 (reg!11251 (regOne!22357 r!26968)))) b!3729918))

(assert (= (and b!3729565 (is-Star!10922 (reg!11251 (regOne!22357 r!26968)))) b!3729919))

(assert (= (and b!3729565 (is-Union!10922 (reg!11251 (regOne!22357 r!26968)))) b!3729920))

(declare-fun b!3729923 () Bool)

(declare-fun e!2307861 () Bool)

(declare-fun tp!1134887 () Bool)

(assert (=> b!3729923 (= e!2307861 tp!1134887)))

(declare-fun b!3729921 () Bool)

(assert (=> b!3729921 (= e!2307861 tp_is_empty!18859)))

(assert (=> b!3729556 (= tp!1134800 e!2307861)))

(declare-fun b!3729924 () Bool)

(declare-fun tp!1134888 () Bool)

(declare-fun tp!1134886 () Bool)

(assert (=> b!3729924 (= e!2307861 (and tp!1134888 tp!1134886))))

(declare-fun b!3729922 () Bool)

(declare-fun tp!1134885 () Bool)

(declare-fun tp!1134889 () Bool)

(assert (=> b!3729922 (= e!2307861 (and tp!1134885 tp!1134889))))

(assert (= (and b!3729556 (is-ElementMatch!10922 (regOne!22356 (regTwo!22356 r!26968)))) b!3729921))

(assert (= (and b!3729556 (is-Concat!17193 (regOne!22356 (regTwo!22356 r!26968)))) b!3729922))

(assert (= (and b!3729556 (is-Star!10922 (regOne!22356 (regTwo!22356 r!26968)))) b!3729923))

(assert (= (and b!3729556 (is-Union!10922 (regOne!22356 (regTwo!22356 r!26968)))) b!3729924))

(declare-fun b!3729927 () Bool)

(declare-fun e!2307862 () Bool)

(declare-fun tp!1134892 () Bool)

(assert (=> b!3729927 (= e!2307862 tp!1134892)))

(declare-fun b!3729925 () Bool)

(assert (=> b!3729925 (= e!2307862 tp_is_empty!18859)))

(assert (=> b!3729556 (= tp!1134804 e!2307862)))

(declare-fun b!3729928 () Bool)

(declare-fun tp!1134893 () Bool)

(declare-fun tp!1134891 () Bool)

(assert (=> b!3729928 (= e!2307862 (and tp!1134893 tp!1134891))))

(declare-fun b!3729926 () Bool)

(declare-fun tp!1134890 () Bool)

(declare-fun tp!1134894 () Bool)

(assert (=> b!3729926 (= e!2307862 (and tp!1134890 tp!1134894))))

(assert (= (and b!3729556 (is-ElementMatch!10922 (regTwo!22356 (regTwo!22356 r!26968)))) b!3729925))

(assert (= (and b!3729556 (is-Concat!17193 (regTwo!22356 (regTwo!22356 r!26968)))) b!3729926))

(assert (= (and b!3729556 (is-Star!10922 (regTwo!22356 (regTwo!22356 r!26968)))) b!3729927))

(assert (= (and b!3729556 (is-Union!10922 (regTwo!22356 (regTwo!22356 r!26968)))) b!3729928))

(declare-fun b!3729931 () Bool)

(declare-fun e!2307863 () Bool)

(declare-fun tp!1134897 () Bool)

(assert (=> b!3729931 (= e!2307863 tp!1134897)))

(declare-fun b!3729929 () Bool)

(assert (=> b!3729929 (= e!2307863 tp_is_empty!18859)))

(assert (=> b!3729570 (= tp!1134818 e!2307863)))

(declare-fun b!3729932 () Bool)

(declare-fun tp!1134898 () Bool)

(declare-fun tp!1134896 () Bool)

(assert (=> b!3729932 (= e!2307863 (and tp!1134898 tp!1134896))))

(declare-fun b!3729930 () Bool)

(declare-fun tp!1134895 () Bool)

(declare-fun tp!1134899 () Bool)

(assert (=> b!3729930 (= e!2307863 (and tp!1134895 tp!1134899))))

(assert (= (and b!3729570 (is-ElementMatch!10922 (regOne!22357 (regTwo!22357 r!26968)))) b!3729929))

(assert (= (and b!3729570 (is-Concat!17193 (regOne!22357 (regTwo!22357 r!26968)))) b!3729930))

(assert (= (and b!3729570 (is-Star!10922 (regOne!22357 (regTwo!22357 r!26968)))) b!3729931))

(assert (= (and b!3729570 (is-Union!10922 (regOne!22357 (regTwo!22357 r!26968)))) b!3729932))

(declare-fun b!3729935 () Bool)

(declare-fun e!2307864 () Bool)

(declare-fun tp!1134902 () Bool)

(assert (=> b!3729935 (= e!2307864 tp!1134902)))

(declare-fun b!3729933 () Bool)

(assert (=> b!3729933 (= e!2307864 tp_is_empty!18859)))

(assert (=> b!3729570 (= tp!1134816 e!2307864)))

(declare-fun b!3729936 () Bool)

(declare-fun tp!1134903 () Bool)

(declare-fun tp!1134901 () Bool)

(assert (=> b!3729936 (= e!2307864 (and tp!1134903 tp!1134901))))

(declare-fun b!3729934 () Bool)

(declare-fun tp!1134900 () Bool)

(declare-fun tp!1134904 () Bool)

(assert (=> b!3729934 (= e!2307864 (and tp!1134900 tp!1134904))))

(assert (= (and b!3729570 (is-ElementMatch!10922 (regTwo!22357 (regTwo!22357 r!26968)))) b!3729933))

(assert (= (and b!3729570 (is-Concat!17193 (regTwo!22357 (regTwo!22357 r!26968)))) b!3729934))

(assert (= (and b!3729570 (is-Star!10922 (regTwo!22357 (regTwo!22357 r!26968)))) b!3729935))

(assert (= (and b!3729570 (is-Union!10922 (regTwo!22357 (regTwo!22357 r!26968)))) b!3729936))

(declare-fun b!3729939 () Bool)

(declare-fun e!2307865 () Bool)

(declare-fun tp!1134907 () Bool)

(assert (=> b!3729939 (= e!2307865 tp!1134907)))

(declare-fun b!3729937 () Bool)

(assert (=> b!3729937 (= e!2307865 tp_is_empty!18859)))

(assert (=> b!3729569 (= tp!1134817 e!2307865)))

(declare-fun b!3729940 () Bool)

(declare-fun tp!1134908 () Bool)

(declare-fun tp!1134906 () Bool)

(assert (=> b!3729940 (= e!2307865 (and tp!1134908 tp!1134906))))

(declare-fun b!3729938 () Bool)

(declare-fun tp!1134905 () Bool)

(declare-fun tp!1134909 () Bool)

(assert (=> b!3729938 (= e!2307865 (and tp!1134905 tp!1134909))))

(assert (= (and b!3729569 (is-ElementMatch!10922 (reg!11251 (regTwo!22357 r!26968)))) b!3729937))

(assert (= (and b!3729569 (is-Concat!17193 (reg!11251 (regTwo!22357 r!26968)))) b!3729938))

(assert (= (and b!3729569 (is-Star!10922 (reg!11251 (regTwo!22357 r!26968)))) b!3729939))

(assert (= (and b!3729569 (is-Union!10922 (reg!11251 (regTwo!22357 r!26968)))) b!3729940))

(declare-fun b!3729943 () Bool)

(declare-fun e!2307866 () Bool)

(declare-fun tp!1134912 () Bool)

(assert (=> b!3729943 (= e!2307866 tp!1134912)))

(declare-fun b!3729941 () Bool)

(assert (=> b!3729941 (= e!2307866 tp_is_empty!18859)))

(assert (=> b!3729560 (= tp!1134805 e!2307866)))

(declare-fun b!3729944 () Bool)

(declare-fun tp!1134913 () Bool)

(declare-fun tp!1134911 () Bool)

(assert (=> b!3729944 (= e!2307866 (and tp!1134913 tp!1134911))))

(declare-fun b!3729942 () Bool)

(declare-fun tp!1134910 () Bool)

(declare-fun tp!1134914 () Bool)

(assert (=> b!3729942 (= e!2307866 (and tp!1134910 tp!1134914))))

(assert (= (and b!3729560 (is-ElementMatch!10922 (regOne!22356 (reg!11251 r!26968)))) b!3729941))

(assert (= (and b!3729560 (is-Concat!17193 (regOne!22356 (reg!11251 r!26968)))) b!3729942))

(assert (= (and b!3729560 (is-Star!10922 (regOne!22356 (reg!11251 r!26968)))) b!3729943))

(assert (= (and b!3729560 (is-Union!10922 (regOne!22356 (reg!11251 r!26968)))) b!3729944))

(declare-fun b!3729947 () Bool)

(declare-fun e!2307867 () Bool)

(declare-fun tp!1134917 () Bool)

(assert (=> b!3729947 (= e!2307867 tp!1134917)))

(declare-fun b!3729945 () Bool)

(assert (=> b!3729945 (= e!2307867 tp_is_empty!18859)))

(assert (=> b!3729560 (= tp!1134809 e!2307867)))

(declare-fun b!3729948 () Bool)

(declare-fun tp!1134918 () Bool)

(declare-fun tp!1134916 () Bool)

(assert (=> b!3729948 (= e!2307867 (and tp!1134918 tp!1134916))))

(declare-fun b!3729946 () Bool)

(declare-fun tp!1134915 () Bool)

(declare-fun tp!1134919 () Bool)

(assert (=> b!3729946 (= e!2307867 (and tp!1134915 tp!1134919))))

(assert (= (and b!3729560 (is-ElementMatch!10922 (regTwo!22356 (reg!11251 r!26968)))) b!3729945))

(assert (= (and b!3729560 (is-Concat!17193 (regTwo!22356 (reg!11251 r!26968)))) b!3729946))

(assert (= (and b!3729560 (is-Star!10922 (regTwo!22356 (reg!11251 r!26968)))) b!3729947))

(assert (= (and b!3729560 (is-Union!10922 (regTwo!22356 (reg!11251 r!26968)))) b!3729948))

(declare-fun b!3729951 () Bool)

(declare-fun e!2307868 () Bool)

(declare-fun tp!1134922 () Bool)

(assert (=> b!3729951 (= e!2307868 tp!1134922)))

(declare-fun b!3729949 () Bool)

(assert (=> b!3729949 (= e!2307868 tp_is_empty!18859)))

(assert (=> b!3729564 (= tp!1134810 e!2307868)))

(declare-fun b!3729952 () Bool)

(declare-fun tp!1134923 () Bool)

(declare-fun tp!1134921 () Bool)

(assert (=> b!3729952 (= e!2307868 (and tp!1134923 tp!1134921))))

(declare-fun b!3729950 () Bool)

(declare-fun tp!1134920 () Bool)

(declare-fun tp!1134924 () Bool)

(assert (=> b!3729950 (= e!2307868 (and tp!1134920 tp!1134924))))

(assert (= (and b!3729564 (is-ElementMatch!10922 (regOne!22356 (regOne!22357 r!26968)))) b!3729949))

(assert (= (and b!3729564 (is-Concat!17193 (regOne!22356 (regOne!22357 r!26968)))) b!3729950))

(assert (= (and b!3729564 (is-Star!10922 (regOne!22356 (regOne!22357 r!26968)))) b!3729951))

(assert (= (and b!3729564 (is-Union!10922 (regOne!22356 (regOne!22357 r!26968)))) b!3729952))

(declare-fun b!3729955 () Bool)

(declare-fun e!2307869 () Bool)

(declare-fun tp!1134927 () Bool)

(assert (=> b!3729955 (= e!2307869 tp!1134927)))

(declare-fun b!3729953 () Bool)

(assert (=> b!3729953 (= e!2307869 tp_is_empty!18859)))

(assert (=> b!3729564 (= tp!1134814 e!2307869)))

(declare-fun b!3729956 () Bool)

(declare-fun tp!1134928 () Bool)

(declare-fun tp!1134926 () Bool)

(assert (=> b!3729956 (= e!2307869 (and tp!1134928 tp!1134926))))

(declare-fun b!3729954 () Bool)

(declare-fun tp!1134925 () Bool)

(declare-fun tp!1134929 () Bool)

(assert (=> b!3729954 (= e!2307869 (and tp!1134925 tp!1134929))))

(assert (= (and b!3729564 (is-ElementMatch!10922 (regTwo!22356 (regOne!22357 r!26968)))) b!3729953))

(assert (= (and b!3729564 (is-Concat!17193 (regTwo!22356 (regOne!22357 r!26968)))) b!3729954))

(assert (= (and b!3729564 (is-Star!10922 (regTwo!22356 (regOne!22357 r!26968)))) b!3729955))

(assert (= (and b!3729564 (is-Union!10922 (regTwo!22356 (regOne!22357 r!26968)))) b!3729956))

(declare-fun b!3729959 () Bool)

(declare-fun e!2307870 () Bool)

(declare-fun tp!1134932 () Bool)

(assert (=> b!3729959 (= e!2307870 tp!1134932)))

(declare-fun b!3729957 () Bool)

(assert (=> b!3729957 (= e!2307870 tp_is_empty!18859)))

(assert (=> b!3729568 (= tp!1134815 e!2307870)))

(declare-fun b!3729960 () Bool)

(declare-fun tp!1134933 () Bool)

(declare-fun tp!1134931 () Bool)

(assert (=> b!3729960 (= e!2307870 (and tp!1134933 tp!1134931))))

(declare-fun b!3729958 () Bool)

(declare-fun tp!1134930 () Bool)

(declare-fun tp!1134934 () Bool)

(assert (=> b!3729958 (= e!2307870 (and tp!1134930 tp!1134934))))

(assert (= (and b!3729568 (is-ElementMatch!10922 (regOne!22356 (regTwo!22357 r!26968)))) b!3729957))

(assert (= (and b!3729568 (is-Concat!17193 (regOne!22356 (regTwo!22357 r!26968)))) b!3729958))

(assert (= (and b!3729568 (is-Star!10922 (regOne!22356 (regTwo!22357 r!26968)))) b!3729959))

(assert (= (and b!3729568 (is-Union!10922 (regOne!22356 (regTwo!22357 r!26968)))) b!3729960))

(declare-fun b!3729963 () Bool)

(declare-fun e!2307871 () Bool)

(declare-fun tp!1134937 () Bool)

(assert (=> b!3729963 (= e!2307871 tp!1134937)))

(declare-fun b!3729961 () Bool)

(assert (=> b!3729961 (= e!2307871 tp_is_empty!18859)))

(assert (=> b!3729568 (= tp!1134819 e!2307871)))

(declare-fun b!3729964 () Bool)

(declare-fun tp!1134938 () Bool)

(declare-fun tp!1134936 () Bool)

(assert (=> b!3729964 (= e!2307871 (and tp!1134938 tp!1134936))))

(declare-fun b!3729962 () Bool)

(declare-fun tp!1134935 () Bool)

(declare-fun tp!1134939 () Bool)

(assert (=> b!3729962 (= e!2307871 (and tp!1134935 tp!1134939))))

(assert (= (and b!3729568 (is-ElementMatch!10922 (regTwo!22356 (regTwo!22357 r!26968)))) b!3729961))

(assert (= (and b!3729568 (is-Concat!17193 (regTwo!22356 (regTwo!22357 r!26968)))) b!3729962))

(assert (= (and b!3729568 (is-Star!10922 (regTwo!22356 (regTwo!22357 r!26968)))) b!3729963))

(assert (= (and b!3729568 (is-Union!10922 (regTwo!22356 (regTwo!22357 r!26968)))) b!3729964))

(declare-fun b!3729967 () Bool)

(declare-fun e!2307872 () Bool)

(declare-fun tp!1134942 () Bool)

(assert (=> b!3729967 (= e!2307872 tp!1134942)))

(declare-fun b!3729965 () Bool)

(assert (=> b!3729965 (= e!2307872 tp_is_empty!18859)))

(assert (=> b!3729554 (= tp!1134798 e!2307872)))

(declare-fun b!3729968 () Bool)

(declare-fun tp!1134943 () Bool)

(declare-fun tp!1134941 () Bool)

(assert (=> b!3729968 (= e!2307872 (and tp!1134943 tp!1134941))))

(declare-fun b!3729966 () Bool)

(declare-fun tp!1134940 () Bool)

(declare-fun tp!1134944 () Bool)

(assert (=> b!3729966 (= e!2307872 (and tp!1134940 tp!1134944))))

(assert (= (and b!3729554 (is-ElementMatch!10922 (regOne!22357 (regOne!22356 r!26968)))) b!3729965))

(assert (= (and b!3729554 (is-Concat!17193 (regOne!22357 (regOne!22356 r!26968)))) b!3729966))

(assert (= (and b!3729554 (is-Star!10922 (regOne!22357 (regOne!22356 r!26968)))) b!3729967))

(assert (= (and b!3729554 (is-Union!10922 (regOne!22357 (regOne!22356 r!26968)))) b!3729968))

(declare-fun b!3729971 () Bool)

(declare-fun e!2307873 () Bool)

(declare-fun tp!1134947 () Bool)

(assert (=> b!3729971 (= e!2307873 tp!1134947)))

(declare-fun b!3729969 () Bool)

(assert (=> b!3729969 (= e!2307873 tp_is_empty!18859)))

(assert (=> b!3729554 (= tp!1134796 e!2307873)))

(declare-fun b!3729972 () Bool)

(declare-fun tp!1134948 () Bool)

(declare-fun tp!1134946 () Bool)

(assert (=> b!3729972 (= e!2307873 (and tp!1134948 tp!1134946))))

(declare-fun b!3729970 () Bool)

(declare-fun tp!1134945 () Bool)

(declare-fun tp!1134949 () Bool)

(assert (=> b!3729970 (= e!2307873 (and tp!1134945 tp!1134949))))

(assert (= (and b!3729554 (is-ElementMatch!10922 (regTwo!22357 (regOne!22356 r!26968)))) b!3729969))

(assert (= (and b!3729554 (is-Concat!17193 (regTwo!22357 (regOne!22356 r!26968)))) b!3729970))

(assert (= (and b!3729554 (is-Star!10922 (regTwo!22357 (regOne!22356 r!26968)))) b!3729971))

(assert (= (and b!3729554 (is-Union!10922 (regTwo!22357 (regOne!22356 r!26968)))) b!3729972))

(declare-fun b!3729975 () Bool)

(declare-fun e!2307874 () Bool)

(declare-fun tp!1134952 () Bool)

(assert (=> b!3729975 (= e!2307874 tp!1134952)))

(declare-fun b!3729973 () Bool)

(assert (=> b!3729973 (= e!2307874 tp_is_empty!18859)))

(assert (=> b!3729553 (= tp!1134797 e!2307874)))

(declare-fun b!3729976 () Bool)

(declare-fun tp!1134953 () Bool)

(declare-fun tp!1134951 () Bool)

(assert (=> b!3729976 (= e!2307874 (and tp!1134953 tp!1134951))))

(declare-fun b!3729974 () Bool)

(declare-fun tp!1134950 () Bool)

(declare-fun tp!1134954 () Bool)

(assert (=> b!3729974 (= e!2307874 (and tp!1134950 tp!1134954))))

(assert (= (and b!3729553 (is-ElementMatch!10922 (reg!11251 (regOne!22356 r!26968)))) b!3729973))

(assert (= (and b!3729553 (is-Concat!17193 (reg!11251 (regOne!22356 r!26968)))) b!3729974))

(assert (= (and b!3729553 (is-Star!10922 (reg!11251 (regOne!22356 r!26968)))) b!3729975))

(assert (= (and b!3729553 (is-Union!10922 (reg!11251 (regOne!22356 r!26968)))) b!3729976))

(declare-fun b!3729979 () Bool)

(declare-fun e!2307875 () Bool)

(declare-fun tp!1134957 () Bool)

(assert (=> b!3729979 (= e!2307875 tp!1134957)))

(declare-fun b!3729977 () Bool)

(assert (=> b!3729977 (= e!2307875 tp_is_empty!18859)))

(assert (=> b!3729558 (= tp!1134803 e!2307875)))

(declare-fun b!3729980 () Bool)

(declare-fun tp!1134958 () Bool)

(declare-fun tp!1134956 () Bool)

(assert (=> b!3729980 (= e!2307875 (and tp!1134958 tp!1134956))))

(declare-fun b!3729978 () Bool)

(declare-fun tp!1134955 () Bool)

(declare-fun tp!1134959 () Bool)

(assert (=> b!3729978 (= e!2307875 (and tp!1134955 tp!1134959))))

(assert (= (and b!3729558 (is-ElementMatch!10922 (regOne!22357 (regTwo!22356 r!26968)))) b!3729977))

(assert (= (and b!3729558 (is-Concat!17193 (regOne!22357 (regTwo!22356 r!26968)))) b!3729978))

(assert (= (and b!3729558 (is-Star!10922 (regOne!22357 (regTwo!22356 r!26968)))) b!3729979))

(assert (= (and b!3729558 (is-Union!10922 (regOne!22357 (regTwo!22356 r!26968)))) b!3729980))

(declare-fun b!3729983 () Bool)

(declare-fun e!2307876 () Bool)

(declare-fun tp!1134962 () Bool)

(assert (=> b!3729983 (= e!2307876 tp!1134962)))

(declare-fun b!3729981 () Bool)

(assert (=> b!3729981 (= e!2307876 tp_is_empty!18859)))

(assert (=> b!3729558 (= tp!1134801 e!2307876)))

(declare-fun b!3729984 () Bool)

(declare-fun tp!1134963 () Bool)

(declare-fun tp!1134961 () Bool)

(assert (=> b!3729984 (= e!2307876 (and tp!1134963 tp!1134961))))

(declare-fun b!3729982 () Bool)

(declare-fun tp!1134960 () Bool)

(declare-fun tp!1134964 () Bool)

(assert (=> b!3729982 (= e!2307876 (and tp!1134960 tp!1134964))))

(assert (= (and b!3729558 (is-ElementMatch!10922 (regTwo!22357 (regTwo!22356 r!26968)))) b!3729981))

(assert (= (and b!3729558 (is-Concat!17193 (regTwo!22357 (regTwo!22356 r!26968)))) b!3729982))

(assert (= (and b!3729558 (is-Star!10922 (regTwo!22357 (regTwo!22356 r!26968)))) b!3729983))

(assert (= (and b!3729558 (is-Union!10922 (regTwo!22357 (regTwo!22356 r!26968)))) b!3729984))

(declare-fun b!3729987 () Bool)

(declare-fun e!2307877 () Bool)

(declare-fun tp!1134967 () Bool)

(assert (=> b!3729987 (= e!2307877 tp!1134967)))

(declare-fun b!3729985 () Bool)

(assert (=> b!3729985 (= e!2307877 tp_is_empty!18859)))

(assert (=> b!3729557 (= tp!1134802 e!2307877)))

(declare-fun b!3729988 () Bool)

(declare-fun tp!1134968 () Bool)

(declare-fun tp!1134966 () Bool)

(assert (=> b!3729988 (= e!2307877 (and tp!1134968 tp!1134966))))

(declare-fun b!3729986 () Bool)

(declare-fun tp!1134965 () Bool)

(declare-fun tp!1134969 () Bool)

(assert (=> b!3729986 (= e!2307877 (and tp!1134965 tp!1134969))))

(assert (= (and b!3729557 (is-ElementMatch!10922 (reg!11251 (regTwo!22356 r!26968)))) b!3729985))

(assert (= (and b!3729557 (is-Concat!17193 (reg!11251 (regTwo!22356 r!26968)))) b!3729986))

(assert (= (and b!3729557 (is-Star!10922 (reg!11251 (regTwo!22356 r!26968)))) b!3729987))

(assert (= (and b!3729557 (is-Union!10922 (reg!11251 (regTwo!22356 r!26968)))) b!3729988))

(declare-fun b!3729991 () Bool)

(declare-fun e!2307878 () Bool)

(declare-fun tp!1134972 () Bool)

(assert (=> b!3729991 (= e!2307878 tp!1134972)))

(declare-fun b!3729989 () Bool)

(assert (=> b!3729989 (= e!2307878 tp_is_empty!18859)))

(assert (=> b!3729562 (= tp!1134808 e!2307878)))

(declare-fun b!3729992 () Bool)

(declare-fun tp!1134973 () Bool)

(declare-fun tp!1134971 () Bool)

(assert (=> b!3729992 (= e!2307878 (and tp!1134973 tp!1134971))))

(declare-fun b!3729990 () Bool)

(declare-fun tp!1134970 () Bool)

(declare-fun tp!1134974 () Bool)

(assert (=> b!3729990 (= e!2307878 (and tp!1134970 tp!1134974))))

(assert (= (and b!3729562 (is-ElementMatch!10922 (regOne!22357 (reg!11251 r!26968)))) b!3729989))

(assert (= (and b!3729562 (is-Concat!17193 (regOne!22357 (reg!11251 r!26968)))) b!3729990))

(assert (= (and b!3729562 (is-Star!10922 (regOne!22357 (reg!11251 r!26968)))) b!3729991))

(assert (= (and b!3729562 (is-Union!10922 (regOne!22357 (reg!11251 r!26968)))) b!3729992))

(declare-fun b!3729995 () Bool)

(declare-fun e!2307879 () Bool)

(declare-fun tp!1134977 () Bool)

(assert (=> b!3729995 (= e!2307879 tp!1134977)))

(declare-fun b!3729993 () Bool)

(assert (=> b!3729993 (= e!2307879 tp_is_empty!18859)))

(assert (=> b!3729562 (= tp!1134806 e!2307879)))

(declare-fun b!3729996 () Bool)

(declare-fun tp!1134978 () Bool)

(declare-fun tp!1134976 () Bool)

(assert (=> b!3729996 (= e!2307879 (and tp!1134978 tp!1134976))))

(declare-fun b!3729994 () Bool)

(declare-fun tp!1134975 () Bool)

(declare-fun tp!1134979 () Bool)

(assert (=> b!3729994 (= e!2307879 (and tp!1134975 tp!1134979))))

(assert (= (and b!3729562 (is-ElementMatch!10922 (regTwo!22357 (reg!11251 r!26968)))) b!3729993))

(assert (= (and b!3729562 (is-Concat!17193 (regTwo!22357 (reg!11251 r!26968)))) b!3729994))

(assert (= (and b!3729562 (is-Star!10922 (regTwo!22357 (reg!11251 r!26968)))) b!3729995))

(assert (= (and b!3729562 (is-Union!10922 (regTwo!22357 (reg!11251 r!26968)))) b!3729996))

(push 1)

(assert (not b!3729750))

(assert (not bm!272265))

(assert (not b!3729967))

(assert (not b!3729992))

(assert (not b!3729986))

(assert (not b!3729716))

(assert (not b!3729947))

(assert (not bm!272290))

(assert (not b!3729908))

(assert (not bm!272282))

(assert (not bm!272294))

(assert (not bm!272309))

(assert (not b!3729955))

(assert (not b!3729914))

(assert (not b!3729954))

(assert (not bm!272279))

(assert (not b!3729987))

(assert (not b!3729726))

(assert (not bm!272261))

(assert (not b!3729923))

(assert (not bm!272272))

(assert (not b!3729968))

(assert (not b!3729930))

(assert (not bm!272262))

(assert (not d!1090477))

(assert (not b!3729919))

(assert (not bm!272313))

(assert (not bm!272276))

(assert (not b!3729984))

(assert (not b!3729982))

(assert (not d!1090481))

(assert (not b!3729790))

(assert (not b!3729939))

(assert (not b!3729964))

(assert (not bm!272297))

(assert (not b!3729820))

(assert (not b!3729962))

(assert (not d!1090417))

(assert (not bm!272258))

(assert (not b!3729976))

(assert (not b!3729994))

(assert (not bm!272283))

(assert (not bm!272275))

(assert (not b!3729936))

(assert tp_is_empty!18859)

(assert (not b!3729932))

(assert (not b!3729959))

(assert (not bm!272317))

(assert (not bm!272298))

(assert (not bm!272316))

(assert (not bm!272266))

(assert (not b!3729996))

(assert (not b!3729877))

(assert (not b!3729952))

(assert (not b!3729995))

(assert (not b!3729910))

(assert (not bm!272252))

(assert (not bm!272286))

(assert (not b!3729983))

(assert (not b!3729958))

(assert (not b!3729960))

(assert (not b!3729918))

(assert (not d!1090455))

(assert (not d!1090447))

(assert (not d!1090459))

(assert (not b!3729899))

(assert (not b!3729934))

(assert (not b!3729972))

(assert (not d!1090453))

(assert (not b!3729717))

(assert (not b!3729836))

(assert (not b!3729974))

(assert (not bm!272270))

(assert (not bm!272307))

(assert (not d!1090439))

(assert (not b!3729950))

(assert (not b!3729906))

(assert (not bm!272254))

(assert (not b!3729927))

(assert (not b!3729911))

(assert (not b!3729713))

(assert (not b!3729966))

(assert (not b!3729924))

(assert (not b!3729980))

(assert (not bm!272264))

(assert (not b!3729940))

(assert (not b!3729789))

(assert (not bm!272277))

(assert (not bm!272268))

(assert (not b!3729902))

(assert (not b!3729712))

(assert (not b!3729942))

(assert (not b!3729793))

(assert (not b!3729916))

(assert (not b!3729808))

(assert (not b!3729804))

(assert (not b!3729931))

(assert (not bm!272257))

(assert (not bm!272260))

(assert (not bm!272269))

(assert (not b!3729990))

(assert (not d!1090419))

(assert (not bm!272273))

(assert (not b!3729946))

(assert (not b!3729885))

(assert (not b!3729875))

(assert (not b!3729903))

(assert (not bm!272293))

(assert (not b!3729963))

(assert (not b!3729915))

(assert (not b!3729935))

(assert (not d!1090461))

(assert (not b!3729991))

(assert (not bm!272310))

(assert (not d!1090471))

(assert (not b!3729922))

(assert (not d!1090457))

(assert (not bm!272255))

(assert (not d!1090423))

(assert (not b!3729978))

(assert (not b!3729845))

(assert (not b!3729816))

(assert (not b!3729900))

(assert (not bm!272303))

(assert (not bm!272288))

(assert (not b!3729920))

(assert (not b!3729907))

(assert (not b!3729778))

(assert (not b!3729898))

(assert (not bm!272306))

(assert (not b!3729948))

(assert (not b!3729938))

(assert (not bm!272301))

(assert (not bm!272314))

(assert (not b!3729752))

(assert (not bm!272305))

(assert (not b!3729956))

(assert (not d!1090433))

(assert (not b!3729928))

(assert (not b!3729951))

(assert (not b!3729975))

(assert (not b!3729943))

(assert (not b!3729895))

(assert (not d!1090469))

(assert (not b!3729805))

(assert (not bm!272287))

(assert (not b!3729979))

(assert (not b!3729801))

(assert (not b!3729762))

(assert (not d!1090421))

(assert (not b!3729926))

(assert (not b!3729971))

(assert (not b!3729735))

(assert (not bm!272280))

(assert (not bm!272302))

(assert (not bm!272291))

(assert (not b!3729855))

(assert (not b!3729944))

(assert (not b!3729912))

(assert (not d!1090437))

(assert (not b!3729970))

(assert (not b!3729904))

(assert (not b!3729988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

