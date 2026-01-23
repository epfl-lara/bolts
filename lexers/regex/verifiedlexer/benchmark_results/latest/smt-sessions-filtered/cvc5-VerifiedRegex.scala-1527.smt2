; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80396 () Bool)

(assert start!80396)

(declare-fun res!405351 () Bool)

(declare-fun e!584070 () Bool)

(assert (=> start!80396 (=> (not res!405351) (not e!584070))))

(declare-datatypes ((C!5194 0))(
  ( (C!5195 (val!2845 Int)) )
))
(declare-datatypes ((Regex!2312 0))(
  ( (ElementMatch!2312 (c!144299 C!5194)) (Concat!4145 (regOne!5136 Regex!2312) (regTwo!5136 Regex!2312)) (EmptyExpr!2312) (Star!2312 (reg!2641 Regex!2312)) (EmptyLang!2312) (Union!2312 (regOne!5137 Regex!2312) (regTwo!5137 Regex!2312)) )
))
(declare-fun r!15766 () Regex!2312)

(declare-fun validRegex!781 (Regex!2312) Bool)

(assert (=> start!80396 (= res!405351 (validRegex!781 r!15766))))

(assert (=> start!80396 e!584070))

(declare-fun e!584074 () Bool)

(assert (=> start!80396 e!584074))

(declare-fun e!584076 () Bool)

(assert (=> start!80396 e!584076))

(declare-fun b!891570 () Bool)

(declare-fun tp!280581 () Bool)

(assert (=> b!891570 (= e!584074 tp!280581)))

(declare-fun b!891571 () Bool)

(declare-fun tp_is_empty!4267 () Bool)

(declare-fun tp!280585 () Bool)

(assert (=> b!891571 (= e!584076 (and tp_is_empty!4267 tp!280585))))

(declare-fun b!891572 () Bool)

(assert (=> b!891572 (= e!584074 tp_is_empty!4267)))

(declare-fun b!891573 () Bool)

(declare-fun e!584072 () Bool)

(assert (=> b!891573 (= e!584070 (not e!584072))))

(declare-fun res!405354 () Bool)

(assert (=> b!891573 (=> res!405354 e!584072)))

(declare-fun lt!332485 () Bool)

(assert (=> b!891573 (= res!405354 (or (not lt!332485) (and (is-Concat!4145 r!15766) (is-EmptyExpr!2312 (regOne!5136 r!15766))) (and (is-Concat!4145 r!15766) (is-EmptyExpr!2312 (regTwo!5136 r!15766))) (is-Concat!4145 r!15766) (not (is-Union!2312 r!15766))))))

(declare-datatypes ((List!9542 0))(
  ( (Nil!9526) (Cons!9526 (h!14927 C!5194) (t!100588 List!9542)) )
))
(declare-fun s!10566 () List!9542)

(declare-fun matchRSpec!113 (Regex!2312 List!9542) Bool)

(assert (=> b!891573 (= lt!332485 (matchRSpec!113 r!15766 s!10566))))

(declare-fun matchR!850 (Regex!2312 List!9542) Bool)

(assert (=> b!891573 (= lt!332485 (matchR!850 r!15766 s!10566))))

(declare-datatypes ((Unit!14203 0))(
  ( (Unit!14204) )
))
(declare-fun lt!332482 () Unit!14203)

(declare-fun mainMatchTheorem!113 (Regex!2312 List!9542) Unit!14203)

(assert (=> b!891573 (= lt!332482 (mainMatchTheorem!113 r!15766 s!10566))))

(declare-fun b!891574 () Bool)

(declare-fun e!584075 () Bool)

(assert (=> b!891574 (= e!584075 (validRegex!781 (regTwo!5137 r!15766)))))

(declare-fun b!891575 () Bool)

(declare-fun e!584071 () Bool)

(assert (=> b!891575 (= e!584071 e!584075)))

(declare-fun res!405353 () Bool)

(assert (=> b!891575 (=> res!405353 e!584075)))

(declare-fun lt!332483 () Bool)

(assert (=> b!891575 (= res!405353 (not lt!332483))))

(declare-fun lt!332488 () Bool)

(assert (=> b!891575 (= lt!332488 lt!332483)))

(declare-fun lt!332489 () Regex!2312)

(assert (=> b!891575 (= lt!332483 (matchR!850 lt!332489 s!10566))))

(assert (=> b!891575 (= lt!332488 (matchR!850 (regTwo!5137 r!15766) s!10566))))

(declare-fun removeUselessConcat!47 (Regex!2312) Regex!2312)

(assert (=> b!891575 (= lt!332489 (removeUselessConcat!47 (regTwo!5137 r!15766)))))

(declare-fun lt!332486 () Unit!14203)

(declare-fun lemmaRemoveUselessConcatSound!41 (Regex!2312 List!9542) Unit!14203)

(assert (=> b!891575 (= lt!332486 (lemmaRemoveUselessConcatSound!41 (regTwo!5137 r!15766) s!10566))))

(declare-fun b!891576 () Bool)

(declare-fun tp!280583 () Bool)

(declare-fun tp!280586 () Bool)

(assert (=> b!891576 (= e!584074 (and tp!280583 tp!280586))))

(declare-fun b!891577 () Bool)

(assert (=> b!891577 (= e!584072 e!584071)))

(declare-fun res!405355 () Bool)

(assert (=> b!891577 (=> res!405355 e!584071)))

(declare-fun lt!332484 () Bool)

(assert (=> b!891577 (= res!405355 lt!332484)))

(declare-fun e!584073 () Bool)

(assert (=> b!891577 e!584073))

(declare-fun res!405352 () Bool)

(assert (=> b!891577 (=> res!405352 e!584073)))

(assert (=> b!891577 (= res!405352 lt!332484)))

(assert (=> b!891577 (= lt!332484 (matchR!850 (regOne!5137 r!15766) s!10566))))

(declare-fun lt!332487 () Unit!14203)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!23 (Regex!2312 Regex!2312 List!9542) Unit!14203)

(assert (=> b!891577 (= lt!332487 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!23 (regOne!5137 r!15766) (regTwo!5137 r!15766) s!10566))))

(declare-fun b!891578 () Bool)

(assert (=> b!891578 (= e!584073 (matchR!850 (regTwo!5137 r!15766) s!10566))))

(declare-fun b!891579 () Bool)

(declare-fun tp!280584 () Bool)

(declare-fun tp!280582 () Bool)

(assert (=> b!891579 (= e!584074 (and tp!280584 tp!280582))))

(assert (= (and start!80396 res!405351) b!891573))

(assert (= (and b!891573 (not res!405354)) b!891577))

(assert (= (and b!891577 (not res!405352)) b!891578))

(assert (= (and b!891577 (not res!405355)) b!891575))

(assert (= (and b!891575 (not res!405353)) b!891574))

(assert (= (and start!80396 (is-ElementMatch!2312 r!15766)) b!891572))

(assert (= (and start!80396 (is-Concat!4145 r!15766)) b!891579))

(assert (= (and start!80396 (is-Star!2312 r!15766)) b!891570))

(assert (= (and start!80396 (is-Union!2312 r!15766)) b!891576))

(assert (= (and start!80396 (is-Cons!9526 s!10566)) b!891571))

(declare-fun m!1134177 () Bool)

(assert (=> b!891577 m!1134177))

(declare-fun m!1134179 () Bool)

(assert (=> b!891577 m!1134179))

(declare-fun m!1134181 () Bool)

(assert (=> start!80396 m!1134181))

(declare-fun m!1134183 () Bool)

(assert (=> b!891574 m!1134183))

(declare-fun m!1134185 () Bool)

(assert (=> b!891578 m!1134185))

(declare-fun m!1134187 () Bool)

(assert (=> b!891573 m!1134187))

(declare-fun m!1134189 () Bool)

(assert (=> b!891573 m!1134189))

(declare-fun m!1134191 () Bool)

(assert (=> b!891573 m!1134191))

(declare-fun m!1134193 () Bool)

(assert (=> b!891575 m!1134193))

(assert (=> b!891575 m!1134185))

(declare-fun m!1134195 () Bool)

(assert (=> b!891575 m!1134195))

(declare-fun m!1134197 () Bool)

(assert (=> b!891575 m!1134197))

(push 1)

(assert (not b!891570))

(assert tp_is_empty!4267)

(assert (not b!891578))

(assert (not b!891579))

(assert (not start!80396))

(assert (not b!891573))

(assert (not b!891574))

(assert (not b!891577))

(assert (not b!891576))

(assert (not b!891575))

(assert (not b!891571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!891628 () Bool)

(declare-fun res!405383 () Bool)

(declare-fun e!584116 () Bool)

(assert (=> b!891628 (=> (not res!405383) (not e!584116))))

(declare-fun call!52690 () Bool)

(assert (=> b!891628 (= res!405383 call!52690)))

(declare-fun e!584114 () Bool)

(assert (=> b!891628 (= e!584114 e!584116)))

(declare-fun b!891629 () Bool)

(declare-fun e!584118 () Bool)

(declare-fun call!52689 () Bool)

(assert (=> b!891629 (= e!584118 call!52689)))

(declare-fun bm!52683 () Bool)

(declare-fun call!52688 () Bool)

(declare-fun c!144306 () Bool)

(assert (=> bm!52683 (= call!52688 (validRegex!781 (ite c!144306 (regTwo!5137 (regTwo!5137 r!15766)) (regTwo!5136 (regTwo!5137 r!15766)))))))

(declare-fun b!891630 () Bool)

(declare-fun e!584113 () Bool)

(assert (=> b!891630 (= e!584113 e!584118)))

(declare-fun res!405382 () Bool)

(declare-fun nullable!604 (Regex!2312) Bool)

(assert (=> b!891630 (= res!405382 (not (nullable!604 (reg!2641 (regTwo!5137 r!15766)))))))

(assert (=> b!891630 (=> (not res!405382) (not e!584118))))

(declare-fun bm!52684 () Bool)

(assert (=> bm!52684 (= call!52690 call!52689)))

(declare-fun b!891631 () Bool)

(declare-fun e!584117 () Bool)

(declare-fun e!584112 () Bool)

(assert (=> b!891631 (= e!584117 e!584112)))

(declare-fun res!405384 () Bool)

(assert (=> b!891631 (=> (not res!405384) (not e!584112))))

(assert (=> b!891631 (= res!405384 call!52690)))

(declare-fun d!277408 () Bool)

(declare-fun res!405385 () Bool)

(declare-fun e!584115 () Bool)

(assert (=> d!277408 (=> res!405385 e!584115)))

(assert (=> d!277408 (= res!405385 (is-ElementMatch!2312 (regTwo!5137 r!15766)))))

(assert (=> d!277408 (= (validRegex!781 (regTwo!5137 r!15766)) e!584115)))

(declare-fun b!891632 () Bool)

(assert (=> b!891632 (= e!584113 e!584114)))

(assert (=> b!891632 (= c!144306 (is-Union!2312 (regTwo!5137 r!15766)))))

(declare-fun b!891633 () Bool)

(assert (=> b!891633 (= e!584116 call!52688)))

(declare-fun bm!52685 () Bool)

(declare-fun c!144305 () Bool)

(assert (=> bm!52685 (= call!52689 (validRegex!781 (ite c!144305 (reg!2641 (regTwo!5137 r!15766)) (ite c!144306 (regOne!5137 (regTwo!5137 r!15766)) (regOne!5136 (regTwo!5137 r!15766))))))))

(declare-fun b!891634 () Bool)

(assert (=> b!891634 (= e!584115 e!584113)))

(assert (=> b!891634 (= c!144305 (is-Star!2312 (regTwo!5137 r!15766)))))

(declare-fun b!891635 () Bool)

(declare-fun res!405381 () Bool)

(assert (=> b!891635 (=> res!405381 e!584117)))

(assert (=> b!891635 (= res!405381 (not (is-Concat!4145 (regTwo!5137 r!15766))))))

(assert (=> b!891635 (= e!584114 e!584117)))

(declare-fun b!891636 () Bool)

(assert (=> b!891636 (= e!584112 call!52688)))

(assert (= (and d!277408 (not res!405385)) b!891634))

(assert (= (and b!891634 c!144305) b!891630))

(assert (= (and b!891634 (not c!144305)) b!891632))

(assert (= (and b!891630 res!405382) b!891629))

(assert (= (and b!891632 c!144306) b!891628))

(assert (= (and b!891632 (not c!144306)) b!891635))

(assert (= (and b!891628 res!405383) b!891633))

(assert (= (and b!891635 (not res!405381)) b!891631))

(assert (= (and b!891631 res!405384) b!891636))

(assert (= (or b!891633 b!891636) bm!52683))

(assert (= (or b!891628 b!891631) bm!52684))

(assert (= (or b!891629 bm!52684) bm!52685))

(declare-fun m!1134221 () Bool)

(assert (=> bm!52683 m!1134221))

(declare-fun m!1134223 () Bool)

(assert (=> b!891630 m!1134223))

(declare-fun m!1134225 () Bool)

(assert (=> bm!52685 m!1134225))

(assert (=> b!891574 d!277408))

(declare-fun b!891683 () Bool)

(declare-fun res!405412 () Bool)

(declare-fun e!584148 () Bool)

(assert (=> b!891683 (=> (not res!405412) (not e!584148))))

(declare-fun call!52699 () Bool)

(assert (=> b!891683 (= res!405412 (not call!52699))))

(declare-fun b!891684 () Bool)

(declare-fun e!584149 () Bool)

(assert (=> b!891684 (= e!584149 (nullable!604 lt!332489))))

(declare-fun b!891685 () Bool)

(declare-fun res!405415 () Bool)

(declare-fun e!584147 () Bool)

(assert (=> b!891685 (=> res!405415 e!584147)))

(declare-fun isEmpty!5726 (List!9542) Bool)

(declare-fun tail!1131 (List!9542) List!9542)

(assert (=> b!891685 (= res!405415 (not (isEmpty!5726 (tail!1131 s!10566))))))

(declare-fun b!891686 () Bool)

(declare-fun e!584151 () Bool)

(declare-fun e!584153 () Bool)

(assert (=> b!891686 (= e!584151 e!584153)))

(declare-fun c!144319 () Bool)

(assert (=> b!891686 (= c!144319 (is-EmptyLang!2312 lt!332489))))

(declare-fun b!891687 () Bool)

(declare-fun derivativeStep!416 (Regex!2312 C!5194) Regex!2312)

(declare-fun head!1569 (List!9542) C!5194)

(assert (=> b!891687 (= e!584149 (matchR!850 (derivativeStep!416 lt!332489 (head!1569 s!10566)) (tail!1131 s!10566)))))

(declare-fun b!891688 () Bool)

(declare-fun res!405418 () Bool)

(assert (=> b!891688 (=> (not res!405418) (not e!584148))))

(assert (=> b!891688 (= res!405418 (isEmpty!5726 (tail!1131 s!10566)))))

(declare-fun b!891689 () Bool)

(declare-fun lt!332516 () Bool)

(assert (=> b!891689 (= e!584153 (not lt!332516))))

(declare-fun b!891690 () Bool)

(declare-fun e!584152 () Bool)

(declare-fun e!584150 () Bool)

(assert (=> b!891690 (= e!584152 e!584150)))

(declare-fun res!405413 () Bool)

(assert (=> b!891690 (=> (not res!405413) (not e!584150))))

(assert (=> b!891690 (= res!405413 (not lt!332516))))

(declare-fun b!891691 () Bool)

(assert (=> b!891691 (= e!584150 e!584147)))

(declare-fun res!405416 () Bool)

(assert (=> b!891691 (=> res!405416 e!584147)))

(assert (=> b!891691 (= res!405416 call!52699)))

(declare-fun b!891692 () Bool)

(declare-fun res!405414 () Bool)

(assert (=> b!891692 (=> res!405414 e!584152)))

(assert (=> b!891692 (= res!405414 e!584148)))

(declare-fun res!405417 () Bool)

(assert (=> b!891692 (=> (not res!405417) (not e!584148))))

(assert (=> b!891692 (= res!405417 lt!332516)))

(declare-fun b!891693 () Bool)

(assert (=> b!891693 (= e!584148 (= (head!1569 s!10566) (c!144299 lt!332489)))))

(declare-fun b!891694 () Bool)

(assert (=> b!891694 (= e!584151 (= lt!332516 call!52699))))

(declare-fun b!891695 () Bool)

(assert (=> b!891695 (= e!584147 (not (= (head!1569 s!10566) (c!144299 lt!332489))))))

(declare-fun d!277412 () Bool)

(assert (=> d!277412 e!584151))

(declare-fun c!144318 () Bool)

(assert (=> d!277412 (= c!144318 (is-EmptyExpr!2312 lt!332489))))

(assert (=> d!277412 (= lt!332516 e!584149)))

(declare-fun c!144317 () Bool)

(assert (=> d!277412 (= c!144317 (isEmpty!5726 s!10566))))

(assert (=> d!277412 (validRegex!781 lt!332489)))

(assert (=> d!277412 (= (matchR!850 lt!332489 s!10566) lt!332516)))

(declare-fun b!891696 () Bool)

(declare-fun res!405419 () Bool)

(assert (=> b!891696 (=> res!405419 e!584152)))

(assert (=> b!891696 (= res!405419 (not (is-ElementMatch!2312 lt!332489)))))

(assert (=> b!891696 (= e!584153 e!584152)))

(declare-fun bm!52694 () Bool)

(assert (=> bm!52694 (= call!52699 (isEmpty!5726 s!10566))))

(assert (= (and d!277412 c!144317) b!891684))

(assert (= (and d!277412 (not c!144317)) b!891687))

(assert (= (and d!277412 c!144318) b!891694))

(assert (= (and d!277412 (not c!144318)) b!891686))

(assert (= (and b!891686 c!144319) b!891689))

(assert (= (and b!891686 (not c!144319)) b!891696))

(assert (= (and b!891696 (not res!405419)) b!891692))

(assert (= (and b!891692 res!405417) b!891683))

(assert (= (and b!891683 res!405412) b!891688))

(assert (= (and b!891688 res!405418) b!891693))

(assert (= (and b!891692 (not res!405414)) b!891690))

(assert (= (and b!891690 res!405413) b!891691))

(assert (= (and b!891691 (not res!405416)) b!891685))

(assert (= (and b!891685 (not res!405415)) b!891695))

(assert (= (or b!891694 b!891683 b!891691) bm!52694))

(declare-fun m!1134227 () Bool)

(assert (=> bm!52694 m!1134227))

(declare-fun m!1134229 () Bool)

(assert (=> b!891684 m!1134229))

(declare-fun m!1134231 () Bool)

(assert (=> b!891693 m!1134231))

(assert (=> b!891687 m!1134231))

(assert (=> b!891687 m!1134231))

(declare-fun m!1134233 () Bool)

(assert (=> b!891687 m!1134233))

(declare-fun m!1134235 () Bool)

(assert (=> b!891687 m!1134235))

(assert (=> b!891687 m!1134233))

(assert (=> b!891687 m!1134235))

(declare-fun m!1134237 () Bool)

(assert (=> b!891687 m!1134237))

(assert (=> b!891695 m!1134231))

(assert (=> b!891688 m!1134235))

(assert (=> b!891688 m!1134235))

(declare-fun m!1134239 () Bool)

(assert (=> b!891688 m!1134239))

(assert (=> d!277412 m!1134227))

(declare-fun m!1134241 () Bool)

(assert (=> d!277412 m!1134241))

(assert (=> b!891685 m!1134235))

(assert (=> b!891685 m!1134235))

(assert (=> b!891685 m!1134239))

(assert (=> b!891575 d!277412))

(declare-fun b!891706 () Bool)

(declare-fun res!405425 () Bool)

(declare-fun e!584162 () Bool)

(assert (=> b!891706 (=> (not res!405425) (not e!584162))))

(declare-fun call!52703 () Bool)

(assert (=> b!891706 (= res!405425 (not call!52703))))

(declare-fun b!891707 () Bool)

(declare-fun e!584163 () Bool)

(assert (=> b!891707 (= e!584163 (nullable!604 (regTwo!5137 r!15766)))))

(declare-fun b!891708 () Bool)

(declare-fun res!405428 () Bool)

(declare-fun e!584161 () Bool)

(assert (=> b!891708 (=> res!405428 e!584161)))

(assert (=> b!891708 (= res!405428 (not (isEmpty!5726 (tail!1131 s!10566))))))

(declare-fun b!891709 () Bool)

(declare-fun e!584165 () Bool)

(declare-fun e!584167 () Bool)

(assert (=> b!891709 (= e!584165 e!584167)))

(declare-fun c!144324 () Bool)

(assert (=> b!891709 (= c!144324 (is-EmptyLang!2312 (regTwo!5137 r!15766)))))

(declare-fun b!891710 () Bool)

(assert (=> b!891710 (= e!584163 (matchR!850 (derivativeStep!416 (regTwo!5137 r!15766) (head!1569 s!10566)) (tail!1131 s!10566)))))

(declare-fun b!891711 () Bool)

(declare-fun res!405431 () Bool)

(assert (=> b!891711 (=> (not res!405431) (not e!584162))))

(assert (=> b!891711 (= res!405431 (isEmpty!5726 (tail!1131 s!10566)))))

(declare-fun b!891712 () Bool)

(declare-fun lt!332517 () Bool)

(assert (=> b!891712 (= e!584167 (not lt!332517))))

(declare-fun b!891713 () Bool)

(declare-fun e!584166 () Bool)

(declare-fun e!584164 () Bool)

(assert (=> b!891713 (= e!584166 e!584164)))

(declare-fun res!405426 () Bool)

(assert (=> b!891713 (=> (not res!405426) (not e!584164))))

(assert (=> b!891713 (= res!405426 (not lt!332517))))

(declare-fun b!891714 () Bool)

(assert (=> b!891714 (= e!584164 e!584161)))

(declare-fun res!405429 () Bool)

(assert (=> b!891714 (=> res!405429 e!584161)))

(assert (=> b!891714 (= res!405429 call!52703)))

(declare-fun b!891715 () Bool)

(declare-fun res!405427 () Bool)

(assert (=> b!891715 (=> res!405427 e!584166)))

(assert (=> b!891715 (= res!405427 e!584162)))

(declare-fun res!405430 () Bool)

(assert (=> b!891715 (=> (not res!405430) (not e!584162))))

(assert (=> b!891715 (= res!405430 lt!332517)))

(declare-fun b!891716 () Bool)

(assert (=> b!891716 (= e!584162 (= (head!1569 s!10566) (c!144299 (regTwo!5137 r!15766))))))

(declare-fun b!891717 () Bool)

(assert (=> b!891717 (= e!584165 (= lt!332517 call!52703))))

(declare-fun b!891718 () Bool)

(assert (=> b!891718 (= e!584161 (not (= (head!1569 s!10566) (c!144299 (regTwo!5137 r!15766)))))))

(declare-fun d!277414 () Bool)

(assert (=> d!277414 e!584165))

(declare-fun c!144323 () Bool)

(assert (=> d!277414 (= c!144323 (is-EmptyExpr!2312 (regTwo!5137 r!15766)))))

(assert (=> d!277414 (= lt!332517 e!584163)))

(declare-fun c!144322 () Bool)

(assert (=> d!277414 (= c!144322 (isEmpty!5726 s!10566))))

(assert (=> d!277414 (validRegex!781 (regTwo!5137 r!15766))))

(assert (=> d!277414 (= (matchR!850 (regTwo!5137 r!15766) s!10566) lt!332517)))

(declare-fun b!891719 () Bool)

(declare-fun res!405432 () Bool)

(assert (=> b!891719 (=> res!405432 e!584166)))

(assert (=> b!891719 (= res!405432 (not (is-ElementMatch!2312 (regTwo!5137 r!15766))))))

(assert (=> b!891719 (= e!584167 e!584166)))

(declare-fun bm!52698 () Bool)

(assert (=> bm!52698 (= call!52703 (isEmpty!5726 s!10566))))

(assert (= (and d!277414 c!144322) b!891707))

(assert (= (and d!277414 (not c!144322)) b!891710))

(assert (= (and d!277414 c!144323) b!891717))

(assert (= (and d!277414 (not c!144323)) b!891709))

(assert (= (and b!891709 c!144324) b!891712))

(assert (= (and b!891709 (not c!144324)) b!891719))

(assert (= (and b!891719 (not res!405432)) b!891715))

(assert (= (and b!891715 res!405430) b!891706))

(assert (= (and b!891706 res!405425) b!891711))

(assert (= (and b!891711 res!405431) b!891716))

(assert (= (and b!891715 (not res!405427)) b!891713))

(assert (= (and b!891713 res!405426) b!891714))

(assert (= (and b!891714 (not res!405429)) b!891708))

(assert (= (and b!891708 (not res!405428)) b!891718))

(assert (= (or b!891717 b!891706 b!891714) bm!52698))

(assert (=> bm!52698 m!1134227))

(declare-fun m!1134245 () Bool)

(assert (=> b!891707 m!1134245))

(assert (=> b!891716 m!1134231))

(assert (=> b!891710 m!1134231))

(assert (=> b!891710 m!1134231))

(declare-fun m!1134247 () Bool)

(assert (=> b!891710 m!1134247))

(assert (=> b!891710 m!1134235))

(assert (=> b!891710 m!1134247))

(assert (=> b!891710 m!1134235))

(declare-fun m!1134251 () Bool)

(assert (=> b!891710 m!1134251))

(assert (=> b!891718 m!1134231))

(assert (=> b!891711 m!1134235))

(assert (=> b!891711 m!1134235))

(assert (=> b!891711 m!1134239))

(assert (=> d!277414 m!1134227))

(assert (=> d!277414 m!1134183))

(assert (=> b!891708 m!1134235))

(assert (=> b!891708 m!1134235))

(assert (=> b!891708 m!1134239))

(assert (=> b!891575 d!277414))

(declare-fun bm!52709 () Bool)

(declare-fun call!52715 () Regex!2312)

(declare-fun c!144337 () Bool)

(assert (=> bm!52709 (= call!52715 (removeUselessConcat!47 (ite c!144337 (regTwo!5136 (regTwo!5137 r!15766)) (regOne!5137 (regTwo!5137 r!15766)))))))

(declare-fun bm!52710 () Bool)

(declare-fun call!52718 () Regex!2312)

(declare-fun call!52714 () Regex!2312)

(assert (=> bm!52710 (= call!52718 call!52714)))

(declare-fun b!891742 () Bool)

(declare-fun e!584185 () Regex!2312)

(declare-fun e!584181 () Regex!2312)

(assert (=> b!891742 (= e!584185 e!584181)))

(declare-fun c!144338 () Bool)

(assert (=> b!891742 (= c!144338 (and (is-Concat!4145 (regTwo!5137 r!15766)) (is-EmptyExpr!2312 (regTwo!5136 (regTwo!5137 r!15766)))))))

(declare-fun b!891743 () Bool)

(declare-fun call!52716 () Regex!2312)

(assert (=> b!891743 (= e!584185 call!52716)))

(declare-fun b!891744 () Bool)

(declare-fun e!584180 () Regex!2312)

(declare-fun call!52717 () Regex!2312)

(assert (=> b!891744 (= e!584180 (Union!2312 call!52715 call!52717))))

(declare-fun b!891745 () Bool)

(declare-fun c!144335 () Bool)

(assert (=> b!891745 (= c!144335 (is-Star!2312 (regTwo!5137 r!15766)))))

(declare-fun e!584182 () Regex!2312)

(assert (=> b!891745 (= e!584180 e!584182)))

(declare-fun b!891746 () Bool)

(declare-fun e!584184 () Regex!2312)

(assert (=> b!891746 (= e!584184 (Concat!4145 call!52718 call!52715))))

(declare-fun d!277416 () Bool)

(declare-fun e!584183 () Bool)

(assert (=> d!277416 e!584183))

(declare-fun res!405435 () Bool)

(assert (=> d!277416 (=> (not res!405435) (not e!584183))))

(declare-fun lt!332520 () Regex!2312)

(assert (=> d!277416 (= res!405435 (validRegex!781 lt!332520))))

(assert (=> d!277416 (= lt!332520 e!584185)))

(declare-fun c!144336 () Bool)

(assert (=> d!277416 (= c!144336 (and (is-Concat!4145 (regTwo!5137 r!15766)) (is-EmptyExpr!2312 (regOne!5136 (regTwo!5137 r!15766)))))))

(assert (=> d!277416 (validRegex!781 (regTwo!5137 r!15766))))

(assert (=> d!277416 (= (removeUselessConcat!47 (regTwo!5137 r!15766)) lt!332520)))

(declare-fun b!891747 () Bool)

(assert (=> b!891747 (= e!584182 (regTwo!5137 r!15766))))

(declare-fun b!891748 () Bool)

(assert (=> b!891748 (= e!584181 call!52714)))

(declare-fun b!891749 () Bool)

(assert (=> b!891749 (= e!584184 e!584180)))

(declare-fun c!144339 () Bool)

(assert (=> b!891749 (= c!144339 (is-Union!2312 (regTwo!5137 r!15766)))))

(declare-fun b!891750 () Bool)

(assert (=> b!891750 (= e!584182 (Star!2312 call!52717))))

(declare-fun bm!52711 () Bool)

(assert (=> bm!52711 (= call!52716 (removeUselessConcat!47 (ite c!144336 (regTwo!5136 (regTwo!5137 r!15766)) (ite (or c!144338 c!144337) (regOne!5136 (regTwo!5137 r!15766)) (ite c!144339 (regTwo!5137 (regTwo!5137 r!15766)) (reg!2641 (regTwo!5137 r!15766)))))))))

(declare-fun b!891751 () Bool)

(assert (=> b!891751 (= c!144337 (is-Concat!4145 (regTwo!5137 r!15766)))))

(assert (=> b!891751 (= e!584181 e!584184)))

(declare-fun bm!52712 () Bool)

(assert (=> bm!52712 (= call!52714 call!52716)))

(declare-fun b!891752 () Bool)

(assert (=> b!891752 (= e!584183 (= (nullable!604 lt!332520) (nullable!604 (regTwo!5137 r!15766))))))

(declare-fun bm!52713 () Bool)

(assert (=> bm!52713 (= call!52717 call!52718)))

(assert (= (and d!277416 c!144336) b!891743))

(assert (= (and d!277416 (not c!144336)) b!891742))

(assert (= (and b!891742 c!144338) b!891748))

(assert (= (and b!891742 (not c!144338)) b!891751))

(assert (= (and b!891751 c!144337) b!891746))

(assert (= (and b!891751 (not c!144337)) b!891749))

(assert (= (and b!891749 c!144339) b!891744))

(assert (= (and b!891749 (not c!144339)) b!891745))

(assert (= (and b!891745 c!144335) b!891750))

(assert (= (and b!891745 (not c!144335)) b!891747))

(assert (= (or b!891744 b!891750) bm!52713))

(assert (= (or b!891746 b!891744) bm!52709))

(assert (= (or b!891746 bm!52713) bm!52710))

(assert (= (or b!891748 bm!52710) bm!52712))

(assert (= (or b!891743 bm!52712) bm!52711))

(assert (= (and d!277416 res!405435) b!891752))

(declare-fun m!1134255 () Bool)

(assert (=> bm!52709 m!1134255))

(declare-fun m!1134257 () Bool)

(assert (=> d!277416 m!1134257))

(assert (=> d!277416 m!1134183))

(declare-fun m!1134259 () Bool)

(assert (=> bm!52711 m!1134259))

(declare-fun m!1134261 () Bool)

(assert (=> b!891752 m!1134261))

(assert (=> b!891752 m!1134245))

(assert (=> b!891575 d!277416))

(declare-fun d!277420 () Bool)

(assert (=> d!277420 (= (matchR!850 (regTwo!5137 r!15766) s!10566) (matchR!850 (removeUselessConcat!47 (regTwo!5137 r!15766)) s!10566))))

(declare-fun lt!332523 () Unit!14203)

(declare-fun choose!5332 (Regex!2312 List!9542) Unit!14203)

(assert (=> d!277420 (= lt!332523 (choose!5332 (regTwo!5137 r!15766) s!10566))))

(assert (=> d!277420 (validRegex!781 (regTwo!5137 r!15766))))

(assert (=> d!277420 (= (lemmaRemoveUselessConcatSound!41 (regTwo!5137 r!15766) s!10566) lt!332523)))

(declare-fun bs!234843 () Bool)

(assert (= bs!234843 d!277420))

(assert (=> bs!234843 m!1134185))

(assert (=> bs!234843 m!1134183))

(assert (=> bs!234843 m!1134195))

(declare-fun m!1134263 () Bool)

(assert (=> bs!234843 m!1134263))

(assert (=> bs!234843 m!1134195))

(declare-fun m!1134265 () Bool)

(assert (=> bs!234843 m!1134265))

(assert (=> b!891575 d!277420))

(declare-fun b!891775 () Bool)

(declare-fun res!405444 () Bool)

(declare-fun e!584204 () Bool)

(assert (=> b!891775 (=> (not res!405444) (not e!584204))))

(declare-fun call!52721 () Bool)

(assert (=> b!891775 (= res!405444 call!52721)))

(declare-fun e!584202 () Bool)

(assert (=> b!891775 (= e!584202 e!584204)))

(declare-fun b!891776 () Bool)

(declare-fun e!584206 () Bool)

(declare-fun call!52720 () Bool)

(assert (=> b!891776 (= e!584206 call!52720)))

(declare-fun bm!52714 () Bool)

(declare-fun call!52719 () Bool)

(declare-fun c!144349 () Bool)

(assert (=> bm!52714 (= call!52719 (validRegex!781 (ite c!144349 (regTwo!5137 r!15766) (regTwo!5136 r!15766))))))

(declare-fun b!891777 () Bool)

(declare-fun e!584201 () Bool)

(assert (=> b!891777 (= e!584201 e!584206)))

(declare-fun res!405443 () Bool)

(assert (=> b!891777 (= res!405443 (not (nullable!604 (reg!2641 r!15766))))))

(assert (=> b!891777 (=> (not res!405443) (not e!584206))))

(declare-fun bm!52715 () Bool)

(assert (=> bm!52715 (= call!52721 call!52720)))

(declare-fun b!891778 () Bool)

(declare-fun e!584205 () Bool)

(declare-fun e!584200 () Bool)

(assert (=> b!891778 (= e!584205 e!584200)))

(declare-fun res!405445 () Bool)

(assert (=> b!891778 (=> (not res!405445) (not e!584200))))

(assert (=> b!891778 (= res!405445 call!52721)))

(declare-fun d!277422 () Bool)

(declare-fun res!405446 () Bool)

(declare-fun e!584203 () Bool)

(assert (=> d!277422 (=> res!405446 e!584203)))

(assert (=> d!277422 (= res!405446 (is-ElementMatch!2312 r!15766))))

(assert (=> d!277422 (= (validRegex!781 r!15766) e!584203)))

(declare-fun b!891779 () Bool)

(assert (=> b!891779 (= e!584201 e!584202)))

(assert (=> b!891779 (= c!144349 (is-Union!2312 r!15766))))

(declare-fun b!891780 () Bool)

(assert (=> b!891780 (= e!584204 call!52719)))

(declare-fun c!144348 () Bool)

(declare-fun bm!52716 () Bool)

(assert (=> bm!52716 (= call!52720 (validRegex!781 (ite c!144348 (reg!2641 r!15766) (ite c!144349 (regOne!5137 r!15766) (regOne!5136 r!15766)))))))

(declare-fun b!891781 () Bool)

(assert (=> b!891781 (= e!584203 e!584201)))

(assert (=> b!891781 (= c!144348 (is-Star!2312 r!15766))))

(declare-fun b!891782 () Bool)

(declare-fun res!405442 () Bool)

(assert (=> b!891782 (=> res!405442 e!584205)))

(assert (=> b!891782 (= res!405442 (not (is-Concat!4145 r!15766)))))

(assert (=> b!891782 (= e!584202 e!584205)))

(declare-fun b!891783 () Bool)

(assert (=> b!891783 (= e!584200 call!52719)))

(assert (= (and d!277422 (not res!405446)) b!891781))

(assert (= (and b!891781 c!144348) b!891777))

(assert (= (and b!891781 (not c!144348)) b!891779))

(assert (= (and b!891777 res!405443) b!891776))

(assert (= (and b!891779 c!144349) b!891775))

(assert (= (and b!891779 (not c!144349)) b!891782))

(assert (= (and b!891775 res!405444) b!891780))

(assert (= (and b!891782 (not res!405442)) b!891778))

(assert (= (and b!891778 res!405445) b!891783))

(assert (= (or b!891780 b!891783) bm!52714))

(assert (= (or b!891775 b!891778) bm!52715))

(assert (= (or b!891776 bm!52715) bm!52716))

(declare-fun m!1134267 () Bool)

(assert (=> bm!52714 m!1134267))

(declare-fun m!1134269 () Bool)

(assert (=> b!891777 m!1134269))

(declare-fun m!1134271 () Bool)

(assert (=> bm!52716 m!1134271))

(assert (=> start!80396 d!277422))

(declare-fun b!891784 () Bool)

(declare-fun res!405447 () Bool)

(declare-fun e!584208 () Bool)

(assert (=> b!891784 (=> (not res!405447) (not e!584208))))

(declare-fun call!52722 () Bool)

(assert (=> b!891784 (= res!405447 (not call!52722))))

(declare-fun b!891785 () Bool)

(declare-fun e!584209 () Bool)

(assert (=> b!891785 (= e!584209 (nullable!604 (regOne!5137 r!15766)))))

(declare-fun b!891786 () Bool)

(declare-fun res!405450 () Bool)

(declare-fun e!584207 () Bool)

(assert (=> b!891786 (=> res!405450 e!584207)))

(assert (=> b!891786 (= res!405450 (not (isEmpty!5726 (tail!1131 s!10566))))))

(declare-fun b!891787 () Bool)

(declare-fun e!584211 () Bool)

(declare-fun e!584213 () Bool)

(assert (=> b!891787 (= e!584211 e!584213)))

(declare-fun c!144352 () Bool)

(assert (=> b!891787 (= c!144352 (is-EmptyLang!2312 (regOne!5137 r!15766)))))

(declare-fun b!891788 () Bool)

(assert (=> b!891788 (= e!584209 (matchR!850 (derivativeStep!416 (regOne!5137 r!15766) (head!1569 s!10566)) (tail!1131 s!10566)))))

(declare-fun b!891789 () Bool)

(declare-fun res!405453 () Bool)

(assert (=> b!891789 (=> (not res!405453) (not e!584208))))

(assert (=> b!891789 (= res!405453 (isEmpty!5726 (tail!1131 s!10566)))))

(declare-fun b!891790 () Bool)

(declare-fun lt!332524 () Bool)

(assert (=> b!891790 (= e!584213 (not lt!332524))))

(declare-fun b!891791 () Bool)

(declare-fun e!584212 () Bool)

(declare-fun e!584210 () Bool)

(assert (=> b!891791 (= e!584212 e!584210)))

(declare-fun res!405448 () Bool)

(assert (=> b!891791 (=> (not res!405448) (not e!584210))))

(assert (=> b!891791 (= res!405448 (not lt!332524))))

(declare-fun b!891792 () Bool)

(assert (=> b!891792 (= e!584210 e!584207)))

(declare-fun res!405451 () Bool)

(assert (=> b!891792 (=> res!405451 e!584207)))

(assert (=> b!891792 (= res!405451 call!52722)))

(declare-fun b!891793 () Bool)

(declare-fun res!405449 () Bool)

(assert (=> b!891793 (=> res!405449 e!584212)))

(assert (=> b!891793 (= res!405449 e!584208)))

(declare-fun res!405452 () Bool)

(assert (=> b!891793 (=> (not res!405452) (not e!584208))))

(assert (=> b!891793 (= res!405452 lt!332524)))

(declare-fun b!891794 () Bool)

(assert (=> b!891794 (= e!584208 (= (head!1569 s!10566) (c!144299 (regOne!5137 r!15766))))))

(declare-fun b!891795 () Bool)

(assert (=> b!891795 (= e!584211 (= lt!332524 call!52722))))

(declare-fun b!891796 () Bool)

(assert (=> b!891796 (= e!584207 (not (= (head!1569 s!10566) (c!144299 (regOne!5137 r!15766)))))))

(declare-fun d!277424 () Bool)

(assert (=> d!277424 e!584211))

(declare-fun c!144351 () Bool)

(assert (=> d!277424 (= c!144351 (is-EmptyExpr!2312 (regOne!5137 r!15766)))))

(assert (=> d!277424 (= lt!332524 e!584209)))

(declare-fun c!144350 () Bool)

(assert (=> d!277424 (= c!144350 (isEmpty!5726 s!10566))))

(assert (=> d!277424 (validRegex!781 (regOne!5137 r!15766))))

(assert (=> d!277424 (= (matchR!850 (regOne!5137 r!15766) s!10566) lt!332524)))

(declare-fun b!891797 () Bool)

(declare-fun res!405454 () Bool)

(assert (=> b!891797 (=> res!405454 e!584212)))

(assert (=> b!891797 (= res!405454 (not (is-ElementMatch!2312 (regOne!5137 r!15766))))))

(assert (=> b!891797 (= e!584213 e!584212)))

(declare-fun bm!52717 () Bool)

(assert (=> bm!52717 (= call!52722 (isEmpty!5726 s!10566))))

(assert (= (and d!277424 c!144350) b!891785))

(assert (= (and d!277424 (not c!144350)) b!891788))

(assert (= (and d!277424 c!144351) b!891795))

(assert (= (and d!277424 (not c!144351)) b!891787))

(assert (= (and b!891787 c!144352) b!891790))

(assert (= (and b!891787 (not c!144352)) b!891797))

(assert (= (and b!891797 (not res!405454)) b!891793))

(assert (= (and b!891793 res!405452) b!891784))

(assert (= (and b!891784 res!405447) b!891789))

(assert (= (and b!891789 res!405453) b!891794))

(assert (= (and b!891793 (not res!405449)) b!891791))

(assert (= (and b!891791 res!405448) b!891792))

(assert (= (and b!891792 (not res!405451)) b!891786))

(assert (= (and b!891786 (not res!405450)) b!891796))

(assert (= (or b!891795 b!891784 b!891792) bm!52717))

(assert (=> bm!52717 m!1134227))

(declare-fun m!1134273 () Bool)

(assert (=> b!891785 m!1134273))

(assert (=> b!891794 m!1134231))

(assert (=> b!891788 m!1134231))

(assert (=> b!891788 m!1134231))

(declare-fun m!1134275 () Bool)

(assert (=> b!891788 m!1134275))

(assert (=> b!891788 m!1134235))

(assert (=> b!891788 m!1134275))

(assert (=> b!891788 m!1134235))

(declare-fun m!1134277 () Bool)

(assert (=> b!891788 m!1134277))

(assert (=> b!891796 m!1134231))

(assert (=> b!891789 m!1134235))

(assert (=> b!891789 m!1134235))

(assert (=> b!891789 m!1134239))

(assert (=> d!277424 m!1134227))

(declare-fun m!1134279 () Bool)

(assert (=> d!277424 m!1134279))

(assert (=> b!891786 m!1134235))

(assert (=> b!891786 m!1134235))

(assert (=> b!891786 m!1134239))

(assert (=> b!891577 d!277424))

(declare-fun d!277426 () Bool)

(declare-fun e!584219 () Bool)

(assert (=> d!277426 e!584219))

(declare-fun res!405459 () Bool)

(assert (=> d!277426 (=> res!405459 e!584219)))

(assert (=> d!277426 (= res!405459 (matchR!850 (regOne!5137 r!15766) s!10566))))

(declare-fun lt!332527 () Unit!14203)

(declare-fun choose!5333 (Regex!2312 Regex!2312 List!9542) Unit!14203)

(assert (=> d!277426 (= lt!332527 (choose!5333 (regOne!5137 r!15766) (regTwo!5137 r!15766) s!10566))))

(declare-fun e!584218 () Bool)

(assert (=> d!277426 e!584218))

(declare-fun res!405460 () Bool)

(assert (=> d!277426 (=> (not res!405460) (not e!584218))))

(assert (=> d!277426 (= res!405460 (validRegex!781 (regOne!5137 r!15766)))))

(assert (=> d!277426 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!23 (regOne!5137 r!15766) (regTwo!5137 r!15766) s!10566) lt!332527)))

(declare-fun b!891802 () Bool)

(assert (=> b!891802 (= e!584218 (validRegex!781 (regTwo!5137 r!15766)))))

(declare-fun b!891803 () Bool)

(assert (=> b!891803 (= e!584219 (matchR!850 (regTwo!5137 r!15766) s!10566))))

(assert (= (and d!277426 res!405460) b!891802))

(assert (= (and d!277426 (not res!405459)) b!891803))

(assert (=> d!277426 m!1134177))

(declare-fun m!1134281 () Bool)

(assert (=> d!277426 m!1134281))

(assert (=> d!277426 m!1134279))

(assert (=> b!891802 m!1134183))

(assert (=> b!891803 m!1134185))

(assert (=> b!891577 d!277426))

(declare-fun b!891839 () Bool)

(assert (=> b!891839 true))

(assert (=> b!891839 true))

(declare-fun bs!234844 () Bool)

(declare-fun b!891845 () Bool)

(assert (= bs!234844 (and b!891845 b!891839)))

(declare-fun lambda!27568 () Int)

(declare-fun lambda!27567 () Int)

(assert (=> bs!234844 (not (= lambda!27568 lambda!27567))))

(assert (=> b!891845 true))

(assert (=> b!891845 true))

(declare-fun b!891836 () Bool)

(declare-fun res!405477 () Bool)

(declare-fun e!584244 () Bool)

(assert (=> b!891836 (=> res!405477 e!584244)))

(declare-fun call!52727 () Bool)

(assert (=> b!891836 (= res!405477 call!52727)))

(declare-fun e!584241 () Bool)

(assert (=> b!891836 (= e!584241 e!584244)))

(declare-fun b!891837 () Bool)

(declare-fun e!584243 () Bool)

(assert (=> b!891837 (= e!584243 call!52727)))

(declare-fun b!891838 () Bool)

(declare-fun e!584242 () Bool)

(assert (=> b!891838 (= e!584242 (matchRSpec!113 (regTwo!5137 r!15766) s!10566))))

(declare-fun bm!52722 () Bool)

(assert (=> bm!52722 (= call!52727 (isEmpty!5726 s!10566))))

(declare-fun call!52728 () Bool)

(assert (=> b!891839 (= e!584244 call!52728)))

(declare-fun d!277428 () Bool)

(declare-fun c!144361 () Bool)

(assert (=> d!277428 (= c!144361 (is-EmptyExpr!2312 r!15766))))

(assert (=> d!277428 (= (matchRSpec!113 r!15766 s!10566) e!584243)))

(declare-fun b!891840 () Bool)

(declare-fun e!584240 () Bool)

(assert (=> b!891840 (= e!584243 e!584240)))

(declare-fun res!405479 () Bool)

(assert (=> b!891840 (= res!405479 (not (is-EmptyLang!2312 r!15766)))))

(assert (=> b!891840 (=> (not res!405479) (not e!584240))))

(declare-fun b!891841 () Bool)

(declare-fun c!144364 () Bool)

(assert (=> b!891841 (= c!144364 (is-ElementMatch!2312 r!15766))))

(declare-fun e!584239 () Bool)

(assert (=> b!891841 (= e!584240 e!584239)))

(declare-fun b!891842 () Bool)

(declare-fun e!584238 () Bool)

(assert (=> b!891842 (= e!584238 e!584242)))

(declare-fun res!405478 () Bool)

(assert (=> b!891842 (= res!405478 (matchRSpec!113 (regOne!5137 r!15766) s!10566))))

(assert (=> b!891842 (=> res!405478 e!584242)))

(declare-fun b!891843 () Bool)

(declare-fun c!144362 () Bool)

(assert (=> b!891843 (= c!144362 (is-Union!2312 r!15766))))

(assert (=> b!891843 (= e!584239 e!584238)))

(declare-fun c!144363 () Bool)

(declare-fun bm!52723 () Bool)

(declare-fun Exists!97 (Int) Bool)

(assert (=> bm!52723 (= call!52728 (Exists!97 (ite c!144363 lambda!27567 lambda!27568)))))

(declare-fun b!891844 () Bool)

(assert (=> b!891844 (= e!584238 e!584241)))

(assert (=> b!891844 (= c!144363 (is-Star!2312 r!15766))))

(assert (=> b!891845 (= e!584241 call!52728)))

(declare-fun b!891846 () Bool)

(assert (=> b!891846 (= e!584239 (= s!10566 (Cons!9526 (c!144299 r!15766) Nil!9526)))))

(assert (= (and d!277428 c!144361) b!891837))

(assert (= (and d!277428 (not c!144361)) b!891840))

(assert (= (and b!891840 res!405479) b!891841))

(assert (= (and b!891841 c!144364) b!891846))

(assert (= (and b!891841 (not c!144364)) b!891843))

(assert (= (and b!891843 c!144362) b!891842))

(assert (= (and b!891843 (not c!144362)) b!891844))

(assert (= (and b!891842 (not res!405478)) b!891838))

(assert (= (and b!891844 c!144363) b!891836))

(assert (= (and b!891844 (not c!144363)) b!891845))

(assert (= (and b!891836 (not res!405477)) b!891839))

(assert (= (or b!891839 b!891845) bm!52723))

(assert (= (or b!891837 b!891836) bm!52722))

(declare-fun m!1134283 () Bool)

(assert (=> b!891838 m!1134283))

(assert (=> bm!52722 m!1134227))

(declare-fun m!1134285 () Bool)

(assert (=> b!891842 m!1134285))

(declare-fun m!1134287 () Bool)

(assert (=> bm!52723 m!1134287))

(assert (=> b!891573 d!277428))

(declare-fun b!891851 () Bool)

(declare-fun res!405480 () Bool)

(declare-fun e!584246 () Bool)

(assert (=> b!891851 (=> (not res!405480) (not e!584246))))

(declare-fun call!52729 () Bool)

(assert (=> b!891851 (= res!405480 (not call!52729))))

(declare-fun b!891852 () Bool)

(declare-fun e!584247 () Bool)

(assert (=> b!891852 (= e!584247 (nullable!604 r!15766))))

(declare-fun b!891853 () Bool)

(declare-fun res!405483 () Bool)

(declare-fun e!584245 () Bool)

(assert (=> b!891853 (=> res!405483 e!584245)))

(assert (=> b!891853 (= res!405483 (not (isEmpty!5726 (tail!1131 s!10566))))))

(declare-fun b!891854 () Bool)

(declare-fun e!584249 () Bool)

(declare-fun e!584251 () Bool)

(assert (=> b!891854 (= e!584249 e!584251)))

(declare-fun c!144367 () Bool)

(assert (=> b!891854 (= c!144367 (is-EmptyLang!2312 r!15766))))

(declare-fun b!891855 () Bool)

(assert (=> b!891855 (= e!584247 (matchR!850 (derivativeStep!416 r!15766 (head!1569 s!10566)) (tail!1131 s!10566)))))

(declare-fun b!891856 () Bool)

(declare-fun res!405486 () Bool)

(assert (=> b!891856 (=> (not res!405486) (not e!584246))))

(assert (=> b!891856 (= res!405486 (isEmpty!5726 (tail!1131 s!10566)))))

(declare-fun b!891857 () Bool)

(declare-fun lt!332528 () Bool)

(assert (=> b!891857 (= e!584251 (not lt!332528))))

(declare-fun b!891858 () Bool)

(declare-fun e!584250 () Bool)

(declare-fun e!584248 () Bool)

(assert (=> b!891858 (= e!584250 e!584248)))

(declare-fun res!405481 () Bool)

(assert (=> b!891858 (=> (not res!405481) (not e!584248))))

(assert (=> b!891858 (= res!405481 (not lt!332528))))

(declare-fun b!891859 () Bool)

(assert (=> b!891859 (= e!584248 e!584245)))

(declare-fun res!405484 () Bool)

(assert (=> b!891859 (=> res!405484 e!584245)))

(assert (=> b!891859 (= res!405484 call!52729)))

(declare-fun b!891860 () Bool)

(declare-fun res!405482 () Bool)

(assert (=> b!891860 (=> res!405482 e!584250)))

(assert (=> b!891860 (= res!405482 e!584246)))

(declare-fun res!405485 () Bool)

(assert (=> b!891860 (=> (not res!405485) (not e!584246))))

(assert (=> b!891860 (= res!405485 lt!332528)))

(declare-fun b!891861 () Bool)

(assert (=> b!891861 (= e!584246 (= (head!1569 s!10566) (c!144299 r!15766)))))

(declare-fun b!891862 () Bool)

(assert (=> b!891862 (= e!584249 (= lt!332528 call!52729))))

(declare-fun b!891863 () Bool)

(assert (=> b!891863 (= e!584245 (not (= (head!1569 s!10566) (c!144299 r!15766))))))

(declare-fun d!277430 () Bool)

(assert (=> d!277430 e!584249))

(declare-fun c!144366 () Bool)

(assert (=> d!277430 (= c!144366 (is-EmptyExpr!2312 r!15766))))

(assert (=> d!277430 (= lt!332528 e!584247)))

(declare-fun c!144365 () Bool)

(assert (=> d!277430 (= c!144365 (isEmpty!5726 s!10566))))

(assert (=> d!277430 (validRegex!781 r!15766)))

(assert (=> d!277430 (= (matchR!850 r!15766 s!10566) lt!332528)))

(declare-fun b!891864 () Bool)

(declare-fun res!405487 () Bool)

(assert (=> b!891864 (=> res!405487 e!584250)))

(assert (=> b!891864 (= res!405487 (not (is-ElementMatch!2312 r!15766)))))

(assert (=> b!891864 (= e!584251 e!584250)))

(declare-fun bm!52724 () Bool)

(assert (=> bm!52724 (= call!52729 (isEmpty!5726 s!10566))))

(assert (= (and d!277430 c!144365) b!891852))

(assert (= (and d!277430 (not c!144365)) b!891855))

(assert (= (and d!277430 c!144366) b!891862))

(assert (= (and d!277430 (not c!144366)) b!891854))

(assert (= (and b!891854 c!144367) b!891857))

(assert (= (and b!891854 (not c!144367)) b!891864))

(assert (= (and b!891864 (not res!405487)) b!891860))

(assert (= (and b!891860 res!405485) b!891851))

(assert (= (and b!891851 res!405480) b!891856))

(assert (= (and b!891856 res!405486) b!891861))

(assert (= (and b!891860 (not res!405482)) b!891858))

(assert (= (and b!891858 res!405481) b!891859))

(assert (= (and b!891859 (not res!405484)) b!891853))

(assert (= (and b!891853 (not res!405483)) b!891863))

(assert (= (or b!891862 b!891851 b!891859) bm!52724))

(assert (=> bm!52724 m!1134227))

(declare-fun m!1134289 () Bool)

(assert (=> b!891852 m!1134289))

(assert (=> b!891861 m!1134231))

(assert (=> b!891855 m!1134231))

(assert (=> b!891855 m!1134231))

(declare-fun m!1134291 () Bool)

(assert (=> b!891855 m!1134291))

(assert (=> b!891855 m!1134235))

(assert (=> b!891855 m!1134291))

(assert (=> b!891855 m!1134235))

(declare-fun m!1134293 () Bool)

(assert (=> b!891855 m!1134293))

(assert (=> b!891863 m!1134231))

(assert (=> b!891856 m!1134235))

(assert (=> b!891856 m!1134235))

(assert (=> b!891856 m!1134239))

(assert (=> d!277430 m!1134227))

(assert (=> d!277430 m!1134181))

(assert (=> b!891853 m!1134235))

(assert (=> b!891853 m!1134235))

(assert (=> b!891853 m!1134239))

(assert (=> b!891573 d!277430))

(declare-fun d!277432 () Bool)

(assert (=> d!277432 (= (matchR!850 r!15766 s!10566) (matchRSpec!113 r!15766 s!10566))))

(declare-fun lt!332531 () Unit!14203)

(declare-fun choose!5334 (Regex!2312 List!9542) Unit!14203)

(assert (=> d!277432 (= lt!332531 (choose!5334 r!15766 s!10566))))

(assert (=> d!277432 (validRegex!781 r!15766)))

(assert (=> d!277432 (= (mainMatchTheorem!113 r!15766 s!10566) lt!332531)))

(declare-fun bs!234845 () Bool)

(assert (= bs!234845 d!277432))

(assert (=> bs!234845 m!1134189))

(assert (=> bs!234845 m!1134187))

(declare-fun m!1134295 () Bool)

(assert (=> bs!234845 m!1134295))

(assert (=> bs!234845 m!1134181))

(assert (=> b!891573 d!277432))

(assert (=> b!891578 d!277414))

(declare-fun b!891876 () Bool)

(declare-fun e!584254 () Bool)

(declare-fun tp!280619 () Bool)

(declare-fun tp!280617 () Bool)

(assert (=> b!891876 (= e!584254 (and tp!280619 tp!280617))))

(declare-fun b!891877 () Bool)

(declare-fun tp!280616 () Bool)

(assert (=> b!891877 (= e!584254 tp!280616)))

(declare-fun b!891878 () Bool)

(declare-fun tp!280618 () Bool)

(declare-fun tp!280615 () Bool)

(assert (=> b!891878 (= e!584254 (and tp!280618 tp!280615))))

(assert (=> b!891579 (= tp!280584 e!584254)))

(declare-fun b!891875 () Bool)

(assert (=> b!891875 (= e!584254 tp_is_empty!4267)))

(assert (= (and b!891579 (is-ElementMatch!2312 (regOne!5136 r!15766))) b!891875))

(assert (= (and b!891579 (is-Concat!4145 (regOne!5136 r!15766))) b!891876))

(assert (= (and b!891579 (is-Star!2312 (regOne!5136 r!15766))) b!891877))

(assert (= (and b!891579 (is-Union!2312 (regOne!5136 r!15766))) b!891878))

(declare-fun b!891880 () Bool)

(declare-fun e!584255 () Bool)

(declare-fun tp!280624 () Bool)

(declare-fun tp!280622 () Bool)

(assert (=> b!891880 (= e!584255 (and tp!280624 tp!280622))))

(declare-fun b!891881 () Bool)

(declare-fun tp!280621 () Bool)

(assert (=> b!891881 (= e!584255 tp!280621)))

(declare-fun b!891882 () Bool)

(declare-fun tp!280623 () Bool)

(declare-fun tp!280620 () Bool)

(assert (=> b!891882 (= e!584255 (and tp!280623 tp!280620))))

(assert (=> b!891579 (= tp!280582 e!584255)))

(declare-fun b!891879 () Bool)

(assert (=> b!891879 (= e!584255 tp_is_empty!4267)))

(assert (= (and b!891579 (is-ElementMatch!2312 (regTwo!5136 r!15766))) b!891879))

(assert (= (and b!891579 (is-Concat!4145 (regTwo!5136 r!15766))) b!891880))

(assert (= (and b!891579 (is-Star!2312 (regTwo!5136 r!15766))) b!891881))

(assert (= (and b!891579 (is-Union!2312 (regTwo!5136 r!15766))) b!891882))

(declare-fun b!891884 () Bool)

(declare-fun e!584256 () Bool)

(declare-fun tp!280629 () Bool)

(declare-fun tp!280627 () Bool)

(assert (=> b!891884 (= e!584256 (and tp!280629 tp!280627))))

(declare-fun b!891885 () Bool)

(declare-fun tp!280626 () Bool)

(assert (=> b!891885 (= e!584256 tp!280626)))

(declare-fun b!891886 () Bool)

(declare-fun tp!280628 () Bool)

(declare-fun tp!280625 () Bool)

(assert (=> b!891886 (= e!584256 (and tp!280628 tp!280625))))

(assert (=> b!891570 (= tp!280581 e!584256)))

(declare-fun b!891883 () Bool)

(assert (=> b!891883 (= e!584256 tp_is_empty!4267)))

(assert (= (and b!891570 (is-ElementMatch!2312 (reg!2641 r!15766))) b!891883))

(assert (= (and b!891570 (is-Concat!4145 (reg!2641 r!15766))) b!891884))

(assert (= (and b!891570 (is-Star!2312 (reg!2641 r!15766))) b!891885))

(assert (= (and b!891570 (is-Union!2312 (reg!2641 r!15766))) b!891886))

(declare-fun b!891891 () Bool)

(declare-fun e!584259 () Bool)

(declare-fun tp!280632 () Bool)

(assert (=> b!891891 (= e!584259 (and tp_is_empty!4267 tp!280632))))

(assert (=> b!891571 (= tp!280585 e!584259)))

(assert (= (and b!891571 (is-Cons!9526 (t!100588 s!10566))) b!891891))

(declare-fun b!891893 () Bool)

(declare-fun e!584260 () Bool)

(declare-fun tp!280637 () Bool)

(declare-fun tp!280635 () Bool)

(assert (=> b!891893 (= e!584260 (and tp!280637 tp!280635))))

(declare-fun b!891894 () Bool)

(declare-fun tp!280634 () Bool)

(assert (=> b!891894 (= e!584260 tp!280634)))

(declare-fun b!891895 () Bool)

(declare-fun tp!280636 () Bool)

(declare-fun tp!280633 () Bool)

(assert (=> b!891895 (= e!584260 (and tp!280636 tp!280633))))

(assert (=> b!891576 (= tp!280583 e!584260)))

(declare-fun b!891892 () Bool)

(assert (=> b!891892 (= e!584260 tp_is_empty!4267)))

(assert (= (and b!891576 (is-ElementMatch!2312 (regOne!5137 r!15766))) b!891892))

(assert (= (and b!891576 (is-Concat!4145 (regOne!5137 r!15766))) b!891893))

(assert (= (and b!891576 (is-Star!2312 (regOne!5137 r!15766))) b!891894))

(assert (= (and b!891576 (is-Union!2312 (regOne!5137 r!15766))) b!891895))

(declare-fun b!891897 () Bool)

(declare-fun e!584261 () Bool)

(declare-fun tp!280642 () Bool)

(declare-fun tp!280640 () Bool)

(assert (=> b!891897 (= e!584261 (and tp!280642 tp!280640))))

(declare-fun b!891898 () Bool)

(declare-fun tp!280639 () Bool)

(assert (=> b!891898 (= e!584261 tp!280639)))

(declare-fun b!891899 () Bool)

(declare-fun tp!280641 () Bool)

(declare-fun tp!280638 () Bool)

(assert (=> b!891899 (= e!584261 (and tp!280641 tp!280638))))

(assert (=> b!891576 (= tp!280586 e!584261)))

(declare-fun b!891896 () Bool)

(assert (=> b!891896 (= e!584261 tp_is_empty!4267)))

(assert (= (and b!891576 (is-ElementMatch!2312 (regTwo!5137 r!15766))) b!891896))

(assert (= (and b!891576 (is-Concat!4145 (regTwo!5137 r!15766))) b!891897))

(assert (= (and b!891576 (is-Star!2312 (regTwo!5137 r!15766))) b!891898))

(assert (= (and b!891576 (is-Union!2312 (regTwo!5137 r!15766))) b!891899))

(push 1)

(assert (not b!891895))

(assert (not b!891718))

(assert (not bm!52724))

(assert (not b!891861))

(assert (not bm!52694))

(assert (not bm!52685))

(assert (not b!891897))

(assert (not b!891752))

(assert (not b!891880))

(assert (not b!891707))

(assert (not b!891789))

(assert (not b!891877))

(assert (not b!891708))

(assert (not bm!52723))

(assert (not d!277416))

(assert (not bm!52722))

(assert (not b!891894))

(assert (not b!891842))

(assert (not b!891863))

(assert (not b!891803))

(assert (not b!891855))

(assert tp_is_empty!4267)

(assert (not b!891695))

(assert (not b!891882))

(assert (not b!891796))

(assert (not b!891802))

(assert (not b!891898))

(assert (not b!891710))

(assert (not b!891777))

(assert (not b!891630))

(assert (not bm!52714))

(assert (not b!891794))

(assert (not d!277414))

(assert (not b!891684))

(assert (not b!891716))

(assert (not d!277424))

(assert (not b!891878))

(assert (not b!891884))

(assert (not bm!52683))

(assert (not b!891688))

(assert (not bm!52698))

(assert (not b!891885))

(assert (not b!891856))

(assert (not d!277430))

(assert (not b!891788))

(assert (not b!891899))

(assert (not b!891711))

(assert (not d!277432))

(assert (not d!277412))

(assert (not b!891876))

(assert (not b!891785))

(assert (not b!891852))

(assert (not bm!52716))

(assert (not b!891838))

(assert (not b!891853))

(assert (not b!891685))

(assert (not b!891891))

(assert (not b!891786))

(assert (not bm!52711))

(assert (not b!891881))

(assert (not d!277426))

(assert (not b!891687))

(assert (not bm!52709))

(assert (not b!891893))

(assert (not b!891693))

(assert (not bm!52717))

(assert (not d!277420))

(assert (not b!891886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

