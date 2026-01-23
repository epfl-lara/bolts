; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738598 () Bool)

(assert start!738598)

(declare-fun b!7746374 () Bool)

(assert (=> b!7746374 true))

(assert (=> b!7746374 true))

(declare-fun bs!1965517 () Bool)

(declare-fun b!7746379 () Bool)

(assert (= bs!1965517 (and b!7746379 b!7746374)))

(declare-fun lambda!471721 () Int)

(declare-fun lambda!471720 () Int)

(assert (=> bs!1965517 (not (= lambda!471721 lambda!471720))))

(assert (=> b!7746379 true))

(assert (=> b!7746379 true))

(declare-fun b!7746364 () Bool)

(declare-fun e!4592552 () Bool)

(declare-datatypes ((C!41502 0))(
  ( (C!41503 (val!31191 Int)) )
))
(declare-datatypes ((List!73435 0))(
  ( (Nil!73311) (Cons!73311 (h!79759 C!41502) (t!388170 List!73435)) )
))
(declare-datatypes ((tuple2!69630 0))(
  ( (tuple2!69631 (_1!38118 List!73435) (_2!38118 List!73435)) )
))
(declare-fun lt!2668676 () tuple2!69630)

(declare-fun isPrefix!6232 (List!73435 List!73435) Bool)

(assert (=> b!7746364 (= e!4592552 (isPrefix!6232 Nil!73311 (_1!38118 lt!2668676)))))

(declare-fun b!7746365 () Bool)

(declare-fun e!4592555 () Bool)

(declare-fun e!4592553 () Bool)

(assert (=> b!7746365 (= e!4592555 e!4592553)))

(declare-fun res!3088491 () Bool)

(assert (=> b!7746365 (=> res!3088491 e!4592553)))

(declare-fun Exists!4709 (Int) Bool)

(assert (=> b!7746365 (= res!3088491 (Exists!4709 lambda!471720))))

(declare-datatypes ((Unit!168276 0))(
  ( (Unit!168277) )
))
(declare-fun lt!2668672 () Unit!168276)

(declare-fun e!4592550 () Unit!168276)

(assert (=> b!7746365 (= lt!2668672 e!4592550)))

(declare-fun c!1428803 () Bool)

(declare-fun lt!2668677 () Bool)

(assert (=> b!7746365 (= c!1428803 lt!2668677)))

(declare-fun b!7746366 () Bool)

(declare-fun res!3088492 () Bool)

(declare-fun e!4592554 () Bool)

(assert (=> b!7746366 (=> (not res!3088492) (not e!4592554))))

(declare-datatypes ((Regex!20588 0))(
  ( (ElementMatch!20588 (c!1428804 C!41502)) (Concat!29433 (regOne!41688 Regex!20588) (regTwo!41688 Regex!20588)) (EmptyExpr!20588) (Star!20588 (reg!20917 Regex!20588)) (EmptyLang!20588) (Union!20588 (regOne!41689 Regex!20588) (regTwo!41689 Regex!20588)) )
))
(declare-fun r!14126 () Regex!20588)

(assert (=> b!7746366 (= res!3088492 (and (not (is-EmptyExpr!20588 r!14126)) (not (is-EmptyLang!20588 r!14126)) (not (is-ElementMatch!20588 r!14126)) (not (is-Union!20588 r!14126)) (not (is-Star!20588 r!14126))))))

(declare-fun b!7746367 () Bool)

(declare-fun Unit!168278 () Unit!168276)

(assert (=> b!7746367 (= e!4592550 Unit!168278)))

(declare-fun lt!2668673 () tuple2!69630)

(declare-datatypes ((Option!17609 0))(
  ( (None!17608) (Some!17608 (v!54743 tuple2!69630)) )
))
(declare-fun lt!2668675 () Option!17609)

(declare-fun get!26073 (Option!17609) tuple2!69630)

(assert (=> b!7746367 (= lt!2668673 (get!26073 lt!2668675))))

(declare-fun s!9605 () List!73435)

(declare-fun lt!2668671 () Unit!168276)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!213 (Regex!20588 Regex!20588 List!73435 List!73435 List!73435) Unit!168276)

(assert (=> b!7746367 (= lt!2668671 (lemmaFindSeparationIsDefinedThenConcatMatches!213 (regOne!41688 r!14126) (regTwo!41688 r!14126) (_1!38118 lt!2668673) (_2!38118 lt!2668673) s!9605))))

(declare-fun res!3088488 () Bool)

(declare-fun matchR!10080 (Regex!20588 List!73435) Bool)

(declare-fun ++!17787 (List!73435 List!73435) List!73435)

(assert (=> b!7746367 (= res!3088488 (matchR!10080 r!14126 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673))))))

(declare-fun e!4592557 () Bool)

(assert (=> b!7746367 (=> (not res!3088488) (not e!4592557))))

(assert (=> b!7746367 e!4592557))

(declare-fun b!7746368 () Bool)

(declare-fun res!3088489 () Bool)

(assert (=> b!7746368 (=> res!3088489 e!4592552)))

(assert (=> b!7746368 (= res!3088489 (not (= (++!17787 (_1!38118 lt!2668676) (_2!38118 lt!2668676)) s!9605)))))

(declare-fun b!7746369 () Bool)

(assert (=> b!7746369 (= e!4592553 e!4592552)))

(declare-fun res!3088495 () Bool)

(assert (=> b!7746369 (=> res!3088495 e!4592552)))

(declare-fun validRegex!11006 (Regex!20588) Bool)

(assert (=> b!7746369 (= res!3088495 (not (validRegex!11006 (regOne!41688 r!14126))))))

(declare-fun matchRSpec!4653 (Regex!20588 List!73435) Bool)

(assert (=> b!7746369 (= (matchR!10080 (regTwo!41688 r!14126) (_2!38118 lt!2668676)) (matchRSpec!4653 (regTwo!41688 r!14126) (_2!38118 lt!2668676)))))

(declare-fun lt!2668679 () Unit!168276)

(declare-fun mainMatchTheorem!4623 (Regex!20588 List!73435) Unit!168276)

(assert (=> b!7746369 (= lt!2668679 (mainMatchTheorem!4623 (regTwo!41688 r!14126) (_2!38118 lt!2668676)))))

(assert (=> b!7746369 (= (matchR!10080 (regOne!41688 r!14126) (_1!38118 lt!2668676)) (matchRSpec!4653 (regOne!41688 r!14126) (_1!38118 lt!2668676)))))

(declare-fun lt!2668674 () Unit!168276)

(assert (=> b!7746369 (= lt!2668674 (mainMatchTheorem!4623 (regOne!41688 r!14126) (_1!38118 lt!2668676)))))

(declare-fun pickWitness!545 (Int) tuple2!69630)

(assert (=> b!7746369 (= lt!2668676 (pickWitness!545 lambda!471721))))

(declare-fun b!7746371 () Bool)

(declare-fun e!4592551 () Bool)

(declare-fun tp_is_empty!51531 () Bool)

(declare-fun tp!2272979 () Bool)

(assert (=> b!7746371 (= e!4592551 (and tp_is_empty!51531 tp!2272979))))

(declare-fun b!7746372 () Bool)

(declare-fun res!3088490 () Bool)

(assert (=> b!7746372 (=> res!3088490 e!4592552)))

(assert (=> b!7746372 (= res!3088490 (not (validRegex!11006 (regTwo!41688 r!14126))))))

(declare-fun b!7746373 () Bool)

(declare-fun e!4592556 () Bool)

(declare-fun tp!2272978 () Bool)

(declare-fun tp!2272981 () Bool)

(assert (=> b!7746373 (= e!4592556 (and tp!2272978 tp!2272981))))

(assert (=> b!7746374 (= e!4592554 (not e!4592555))))

(declare-fun res!3088487 () Bool)

(assert (=> b!7746374 (=> res!3088487 e!4592555)))

(assert (=> b!7746374 (= res!3088487 (matchR!10080 r!14126 s!9605))))

(assert (=> b!7746374 (= lt!2668677 (Exists!4709 lambda!471720))))

(declare-fun isDefined!14225 (Option!17609) Bool)

(assert (=> b!7746374 (= lt!2668677 (isDefined!14225 lt!2668675))))

(declare-fun findConcatSeparation!3639 (Regex!20588 Regex!20588 List!73435 List!73435 List!73435) Option!17609)

(assert (=> b!7746374 (= lt!2668675 (findConcatSeparation!3639 (regOne!41688 r!14126) (regTwo!41688 r!14126) Nil!73311 s!9605 s!9605))))

(declare-fun lt!2668678 () Unit!168276)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3397 (Regex!20588 Regex!20588 List!73435) Unit!168276)

(assert (=> b!7746374 (= lt!2668678 (lemmaFindConcatSeparationEquivalentToExists!3397 (regOne!41688 r!14126) (regTwo!41688 r!14126) s!9605))))

(declare-fun b!7746375 () Bool)

(declare-fun tp!2272982 () Bool)

(declare-fun tp!2272980 () Bool)

(assert (=> b!7746375 (= e!4592556 (and tp!2272982 tp!2272980))))

(declare-fun b!7746376 () Bool)

(assert (=> b!7746376 (= e!4592556 tp_is_empty!51531)))

(declare-fun b!7746377 () Bool)

(declare-fun Unit!168279 () Unit!168276)

(assert (=> b!7746377 (= e!4592550 Unit!168279)))

(declare-fun b!7746378 () Bool)

(assert (=> b!7746378 (= e!4592557 false)))

(declare-fun res!3088494 () Bool)

(assert (=> b!7746379 (=> res!3088494 e!4592553)))

(assert (=> b!7746379 (= res!3088494 (not (Exists!4709 lambda!471721)))))

(declare-fun b!7746370 () Bool)

(declare-fun tp!2272983 () Bool)

(assert (=> b!7746370 (= e!4592556 tp!2272983)))

(declare-fun res!3088493 () Bool)

(assert (=> start!738598 (=> (not res!3088493) (not e!4592554))))

(assert (=> start!738598 (= res!3088493 (validRegex!11006 r!14126))))

(assert (=> start!738598 e!4592554))

(assert (=> start!738598 e!4592556))

(assert (=> start!738598 e!4592551))

(assert (= (and start!738598 res!3088493) b!7746366))

(assert (= (and b!7746366 res!3088492) b!7746374))

(assert (= (and b!7746374 (not res!3088487)) b!7746365))

(assert (= (and b!7746365 c!1428803) b!7746367))

(assert (= (and b!7746365 (not c!1428803)) b!7746377))

(assert (= (and b!7746367 res!3088488) b!7746378))

(assert (= (and b!7746365 (not res!3088491)) b!7746379))

(assert (= (and b!7746379 (not res!3088494)) b!7746369))

(assert (= (and b!7746369 (not res!3088495)) b!7746372))

(assert (= (and b!7746372 (not res!3088490)) b!7746368))

(assert (= (and b!7746368 (not res!3088489)) b!7746364))

(assert (= (and start!738598 (is-ElementMatch!20588 r!14126)) b!7746376))

(assert (= (and start!738598 (is-Concat!29433 r!14126)) b!7746373))

(assert (= (and start!738598 (is-Star!20588 r!14126)) b!7746370))

(assert (= (and start!738598 (is-Union!20588 r!14126)) b!7746375))

(assert (= (and start!738598 (is-Cons!73311 s!9605)) b!7746371))

(declare-fun m!8214170 () Bool)

(assert (=> b!7746367 m!8214170))

(declare-fun m!8214172 () Bool)

(assert (=> b!7746367 m!8214172))

(declare-fun m!8214174 () Bool)

(assert (=> b!7746367 m!8214174))

(assert (=> b!7746367 m!8214174))

(declare-fun m!8214176 () Bool)

(assert (=> b!7746367 m!8214176))

(declare-fun m!8214178 () Bool)

(assert (=> b!7746368 m!8214178))

(declare-fun m!8214180 () Bool)

(assert (=> b!7746372 m!8214180))

(declare-fun m!8214182 () Bool)

(assert (=> b!7746379 m!8214182))

(declare-fun m!8214184 () Bool)

(assert (=> b!7746364 m!8214184))

(declare-fun m!8214186 () Bool)

(assert (=> b!7746374 m!8214186))

(declare-fun m!8214188 () Bool)

(assert (=> b!7746374 m!8214188))

(declare-fun m!8214190 () Bool)

(assert (=> b!7746374 m!8214190))

(declare-fun m!8214192 () Bool)

(assert (=> b!7746374 m!8214192))

(declare-fun m!8214194 () Bool)

(assert (=> b!7746374 m!8214194))

(declare-fun m!8214196 () Bool)

(assert (=> start!738598 m!8214196))

(assert (=> b!7746365 m!8214192))

(declare-fun m!8214198 () Bool)

(assert (=> b!7746369 m!8214198))

(declare-fun m!8214200 () Bool)

(assert (=> b!7746369 m!8214200))

(declare-fun m!8214202 () Bool)

(assert (=> b!7746369 m!8214202))

(declare-fun m!8214204 () Bool)

(assert (=> b!7746369 m!8214204))

(declare-fun m!8214206 () Bool)

(assert (=> b!7746369 m!8214206))

(declare-fun m!8214208 () Bool)

(assert (=> b!7746369 m!8214208))

(declare-fun m!8214210 () Bool)

(assert (=> b!7746369 m!8214210))

(declare-fun m!8214212 () Bool)

(assert (=> b!7746369 m!8214212))

(push 1)

(assert (not b!7746373))

(assert (not start!738598))

(assert tp_is_empty!51531)

(assert (not b!7746371))

(assert (not b!7746379))

(assert (not b!7746372))

(assert (not b!7746367))

(assert (not b!7746364))

(assert (not b!7746370))

(assert (not b!7746368))

(assert (not b!7746369))

(assert (not b!7746365))

(assert (not b!7746375))

(assert (not b!7746374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2342202 () Bool)

(declare-fun res!3088551 () Bool)

(declare-fun e!4592610 () Bool)

(assert (=> d!2342202 (=> res!3088551 e!4592610)))

(assert (=> d!2342202 (= res!3088551 (is-ElementMatch!20588 r!14126))))

(assert (=> d!2342202 (= (validRegex!11006 r!14126) e!4592610)))

(declare-fun b!7746470 () Bool)

(declare-fun e!4592606 () Bool)

(declare-fun e!4592609 () Bool)

(assert (=> b!7746470 (= e!4592606 e!4592609)))

(declare-fun res!3088550 () Bool)

(declare-fun nullable!9061 (Regex!20588) Bool)

(assert (=> b!7746470 (= res!3088550 (not (nullable!9061 (reg!20917 r!14126))))))

(assert (=> b!7746470 (=> (not res!3088550) (not e!4592609))))

(declare-fun b!7746471 () Bool)

(declare-fun e!4592605 () Bool)

(assert (=> b!7746471 (= e!4592606 e!4592605)))

(declare-fun c!1428814 () Bool)

(assert (=> b!7746471 (= c!1428814 (is-Union!20588 r!14126))))

(declare-fun bm!717940 () Bool)

(declare-fun call!717947 () Bool)

(declare-fun call!717945 () Bool)

(assert (=> bm!717940 (= call!717947 call!717945)))

(declare-fun b!7746472 () Bool)

(declare-fun e!4592608 () Bool)

(declare-fun e!4592604 () Bool)

(assert (=> b!7746472 (= e!4592608 e!4592604)))

(declare-fun res!3088553 () Bool)

(assert (=> b!7746472 (=> (not res!3088553) (not e!4592604))))

(declare-fun call!717946 () Bool)

(assert (=> b!7746472 (= res!3088553 call!717946)))

(declare-fun c!1428813 () Bool)

(declare-fun bm!717941 () Bool)

(assert (=> bm!717941 (= call!717945 (validRegex!11006 (ite c!1428813 (reg!20917 r!14126) (ite c!1428814 (regTwo!41689 r!14126) (regTwo!41688 r!14126)))))))

(declare-fun b!7746473 () Bool)

(assert (=> b!7746473 (= e!4592610 e!4592606)))

(assert (=> b!7746473 (= c!1428813 (is-Star!20588 r!14126))))

(declare-fun bm!717942 () Bool)

(assert (=> bm!717942 (= call!717946 (validRegex!11006 (ite c!1428814 (regOne!41689 r!14126) (regOne!41688 r!14126))))))

(declare-fun b!7746474 () Bool)

(declare-fun e!4592607 () Bool)

(assert (=> b!7746474 (= e!4592607 call!717947)))

(declare-fun b!7746475 () Bool)

(assert (=> b!7746475 (= e!4592609 call!717945)))

(declare-fun b!7746476 () Bool)

(assert (=> b!7746476 (= e!4592604 call!717947)))

(declare-fun b!7746477 () Bool)

(declare-fun res!3088549 () Bool)

(assert (=> b!7746477 (=> res!3088549 e!4592608)))

(assert (=> b!7746477 (= res!3088549 (not (is-Concat!29433 r!14126)))))

(assert (=> b!7746477 (= e!4592605 e!4592608)))

(declare-fun b!7746478 () Bool)

(declare-fun res!3088552 () Bool)

(assert (=> b!7746478 (=> (not res!3088552) (not e!4592607))))

(assert (=> b!7746478 (= res!3088552 call!717946)))

(assert (=> b!7746478 (= e!4592605 e!4592607)))

(assert (= (and d!2342202 (not res!3088551)) b!7746473))

(assert (= (and b!7746473 c!1428813) b!7746470))

(assert (= (and b!7746473 (not c!1428813)) b!7746471))

(assert (= (and b!7746470 res!3088550) b!7746475))

(assert (= (and b!7746471 c!1428814) b!7746478))

(assert (= (and b!7746471 (not c!1428814)) b!7746477))

(assert (= (and b!7746478 res!3088552) b!7746474))

(assert (= (and b!7746477 (not res!3088549)) b!7746472))

(assert (= (and b!7746472 res!3088553) b!7746476))

(assert (= (or b!7746478 b!7746472) bm!717942))

(assert (= (or b!7746474 b!7746476) bm!717940))

(assert (= (or b!7746475 bm!717940) bm!717941))

(declare-fun m!8214258 () Bool)

(assert (=> b!7746470 m!8214258))

(declare-fun m!8214260 () Bool)

(assert (=> bm!717941 m!8214260))

(declare-fun m!8214262 () Bool)

(assert (=> bm!717942 m!8214262))

(assert (=> start!738598 d!2342202))

(declare-fun d!2342204 () Bool)

(declare-fun res!3088556 () Bool)

(declare-fun e!4592617 () Bool)

(assert (=> d!2342204 (=> res!3088556 e!4592617)))

(assert (=> d!2342204 (= res!3088556 (is-ElementMatch!20588 (regTwo!41688 r!14126)))))

(assert (=> d!2342204 (= (validRegex!11006 (regTwo!41688 r!14126)) e!4592617)))

(declare-fun b!7746479 () Bool)

(declare-fun e!4592613 () Bool)

(declare-fun e!4592616 () Bool)

(assert (=> b!7746479 (= e!4592613 e!4592616)))

(declare-fun res!3088555 () Bool)

(assert (=> b!7746479 (= res!3088555 (not (nullable!9061 (reg!20917 (regTwo!41688 r!14126)))))))

(assert (=> b!7746479 (=> (not res!3088555) (not e!4592616))))

(declare-fun b!7746480 () Bool)

(declare-fun e!4592612 () Bool)

(assert (=> b!7746480 (= e!4592613 e!4592612)))

(declare-fun c!1428816 () Bool)

(assert (=> b!7746480 (= c!1428816 (is-Union!20588 (regTwo!41688 r!14126)))))

(declare-fun bm!717943 () Bool)

(declare-fun call!717950 () Bool)

(declare-fun call!717948 () Bool)

(assert (=> bm!717943 (= call!717950 call!717948)))

(declare-fun b!7746481 () Bool)

(declare-fun e!4592615 () Bool)

(declare-fun e!4592611 () Bool)

(assert (=> b!7746481 (= e!4592615 e!4592611)))

(declare-fun res!3088558 () Bool)

(assert (=> b!7746481 (=> (not res!3088558) (not e!4592611))))

(declare-fun call!717949 () Bool)

(assert (=> b!7746481 (= res!3088558 call!717949)))

(declare-fun c!1428815 () Bool)

(declare-fun bm!717944 () Bool)

(assert (=> bm!717944 (= call!717948 (validRegex!11006 (ite c!1428815 (reg!20917 (regTwo!41688 r!14126)) (ite c!1428816 (regTwo!41689 (regTwo!41688 r!14126)) (regTwo!41688 (regTwo!41688 r!14126))))))))

(declare-fun b!7746482 () Bool)

(assert (=> b!7746482 (= e!4592617 e!4592613)))

(assert (=> b!7746482 (= c!1428815 (is-Star!20588 (regTwo!41688 r!14126)))))

(declare-fun bm!717945 () Bool)

(assert (=> bm!717945 (= call!717949 (validRegex!11006 (ite c!1428816 (regOne!41689 (regTwo!41688 r!14126)) (regOne!41688 (regTwo!41688 r!14126)))))))

(declare-fun b!7746483 () Bool)

(declare-fun e!4592614 () Bool)

(assert (=> b!7746483 (= e!4592614 call!717950)))

(declare-fun b!7746484 () Bool)

(assert (=> b!7746484 (= e!4592616 call!717948)))

(declare-fun b!7746485 () Bool)

(assert (=> b!7746485 (= e!4592611 call!717950)))

(declare-fun b!7746486 () Bool)

(declare-fun res!3088554 () Bool)

(assert (=> b!7746486 (=> res!3088554 e!4592615)))

(assert (=> b!7746486 (= res!3088554 (not (is-Concat!29433 (regTwo!41688 r!14126))))))

(assert (=> b!7746486 (= e!4592612 e!4592615)))

(declare-fun b!7746487 () Bool)

(declare-fun res!3088557 () Bool)

(assert (=> b!7746487 (=> (not res!3088557) (not e!4592614))))

(assert (=> b!7746487 (= res!3088557 call!717949)))

(assert (=> b!7746487 (= e!4592612 e!4592614)))

(assert (= (and d!2342204 (not res!3088556)) b!7746482))

(assert (= (and b!7746482 c!1428815) b!7746479))

(assert (= (and b!7746482 (not c!1428815)) b!7746480))

(assert (= (and b!7746479 res!3088555) b!7746484))

(assert (= (and b!7746480 c!1428816) b!7746487))

(assert (= (and b!7746480 (not c!1428816)) b!7746486))

(assert (= (and b!7746487 res!3088557) b!7746483))

(assert (= (and b!7746486 (not res!3088554)) b!7746481))

(assert (= (and b!7746481 res!3088558) b!7746485))

(assert (= (or b!7746487 b!7746481) bm!717945))

(assert (= (or b!7746483 b!7746485) bm!717943))

(assert (= (or b!7746484 bm!717943) bm!717944))

(declare-fun m!8214264 () Bool)

(assert (=> b!7746479 m!8214264))

(declare-fun m!8214266 () Bool)

(assert (=> bm!717944 m!8214266))

(declare-fun m!8214268 () Bool)

(assert (=> bm!717945 m!8214268))

(assert (=> b!7746372 d!2342204))

(declare-fun d!2342206 () Bool)

(assert (=> d!2342206 (= (get!26073 lt!2668675) (v!54743 lt!2668675))))

(assert (=> b!7746367 d!2342206))

(declare-fun d!2342208 () Bool)

(assert (=> d!2342208 (matchR!10080 (Concat!29433 (regOne!41688 r!14126) (regTwo!41688 r!14126)) (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673)))))

(declare-fun lt!2668709 () Unit!168276)

(declare-fun choose!59386 (Regex!20588 Regex!20588 List!73435 List!73435 List!73435) Unit!168276)

(assert (=> d!2342208 (= lt!2668709 (choose!59386 (regOne!41688 r!14126) (regTwo!41688 r!14126) (_1!38118 lt!2668673) (_2!38118 lt!2668673) s!9605))))

(assert (=> d!2342208 (validRegex!11006 (regOne!41688 r!14126))))

(assert (=> d!2342208 (= (lemmaFindSeparationIsDefinedThenConcatMatches!213 (regOne!41688 r!14126) (regTwo!41688 r!14126) (_1!38118 lt!2668673) (_2!38118 lt!2668673) s!9605) lt!2668709)))

(declare-fun bs!1965519 () Bool)

(assert (= bs!1965519 d!2342208))

(assert (=> bs!1965519 m!8214174))

(assert (=> bs!1965519 m!8214174))

(declare-fun m!8214270 () Bool)

(assert (=> bs!1965519 m!8214270))

(declare-fun m!8214272 () Bool)

(assert (=> bs!1965519 m!8214272))

(assert (=> bs!1965519 m!8214208))

(assert (=> b!7746367 d!2342208))

(declare-fun b!7746522 () Bool)

(declare-fun e!4592640 () Bool)

(declare-fun head!15820 (List!73435) C!41502)

(assert (=> b!7746522 (= e!4592640 (= (head!15820 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673))) (c!1428804 r!14126)))))

(declare-fun b!7746523 () Bool)

(declare-fun e!4592641 () Bool)

(declare-fun lt!2668714 () Bool)

(declare-fun call!717953 () Bool)

(assert (=> b!7746523 (= e!4592641 (= lt!2668714 call!717953))))

(declare-fun b!7746524 () Bool)

(declare-fun res!3088579 () Bool)

(assert (=> b!7746524 (=> (not res!3088579) (not e!4592640))))

(declare-fun isEmpty!42001 (List!73435) Bool)

(declare-fun tail!15360 (List!73435) List!73435)

(assert (=> b!7746524 (= res!3088579 (isEmpty!42001 (tail!15360 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673)))))))

(declare-fun b!7746525 () Bool)

(declare-fun res!3088585 () Bool)

(declare-fun e!4592637 () Bool)

(assert (=> b!7746525 (=> res!3088585 e!4592637)))

(assert (=> b!7746525 (= res!3088585 e!4592640)))

(declare-fun res!3088582 () Bool)

(assert (=> b!7746525 (=> (not res!3088582) (not e!4592640))))

(assert (=> b!7746525 (= res!3088582 lt!2668714)))

(declare-fun b!7746526 () Bool)

(declare-fun res!3088586 () Bool)

(assert (=> b!7746526 (=> res!3088586 e!4592637)))

(assert (=> b!7746526 (= res!3088586 (not (is-ElementMatch!20588 r!14126)))))

(declare-fun e!4592639 () Bool)

(assert (=> b!7746526 (= e!4592639 e!4592637)))

(declare-fun b!7746527 () Bool)

(declare-fun e!4592636 () Bool)

(assert (=> b!7746527 (= e!4592636 (nullable!9061 r!14126))))

(declare-fun b!7746528 () Bool)

(declare-fun e!4592638 () Bool)

(assert (=> b!7746528 (= e!4592637 e!4592638)))

(declare-fun res!3088581 () Bool)

(assert (=> b!7746528 (=> (not res!3088581) (not e!4592638))))

(assert (=> b!7746528 (= res!3088581 (not lt!2668714))))

(declare-fun b!7746529 () Bool)

(assert (=> b!7746529 (= e!4592641 e!4592639)))

(declare-fun c!1428826 () Bool)

(assert (=> b!7746529 (= c!1428826 (is-EmptyLang!20588 r!14126))))

(declare-fun b!7746531 () Bool)

(declare-fun e!4592642 () Bool)

(assert (=> b!7746531 (= e!4592638 e!4592642)))

(declare-fun res!3088580 () Bool)

(assert (=> b!7746531 (=> res!3088580 e!4592642)))

(assert (=> b!7746531 (= res!3088580 call!717953)))

(declare-fun b!7746532 () Bool)

(declare-fun res!3088584 () Bool)

(assert (=> b!7746532 (=> (not res!3088584) (not e!4592640))))

(assert (=> b!7746532 (= res!3088584 (not call!717953))))

(declare-fun bm!717948 () Bool)

(assert (=> bm!717948 (= call!717953 (isEmpty!42001 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673))))))

(declare-fun b!7746533 () Bool)

(declare-fun res!3088583 () Bool)

(assert (=> b!7746533 (=> res!3088583 e!4592642)))

(assert (=> b!7746533 (= res!3088583 (not (isEmpty!42001 (tail!15360 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673))))))))

(declare-fun b!7746534 () Bool)

(assert (=> b!7746534 (= e!4592639 (not lt!2668714))))

(declare-fun b!7746535 () Bool)

(assert (=> b!7746535 (= e!4592642 (not (= (head!15820 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673))) (c!1428804 r!14126))))))

(declare-fun b!7746530 () Bool)

(declare-fun derivativeStep!6020 (Regex!20588 C!41502) Regex!20588)

(assert (=> b!7746530 (= e!4592636 (matchR!10080 (derivativeStep!6020 r!14126 (head!15820 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673)))) (tail!15360 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673)))))))

(declare-fun d!2342210 () Bool)

(assert (=> d!2342210 e!4592641))

(declare-fun c!1428827 () Bool)

(assert (=> d!2342210 (= c!1428827 (is-EmptyExpr!20588 r!14126))))

(assert (=> d!2342210 (= lt!2668714 e!4592636)))

(declare-fun c!1428825 () Bool)

(assert (=> d!2342210 (= c!1428825 (isEmpty!42001 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673))))))

(assert (=> d!2342210 (validRegex!11006 r!14126)))

(assert (=> d!2342210 (= (matchR!10080 r!14126 (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673))) lt!2668714)))

(assert (= (and d!2342210 c!1428825) b!7746527))

(assert (= (and d!2342210 (not c!1428825)) b!7746530))

(assert (= (and d!2342210 c!1428827) b!7746523))

(assert (= (and d!2342210 (not c!1428827)) b!7746529))

(assert (= (and b!7746529 c!1428826) b!7746534))

(assert (= (and b!7746529 (not c!1428826)) b!7746526))

(assert (= (and b!7746526 (not res!3088586)) b!7746525))

(assert (= (and b!7746525 res!3088582) b!7746532))

(assert (= (and b!7746532 res!3088584) b!7746524))

(assert (= (and b!7746524 res!3088579) b!7746522))

(assert (= (and b!7746525 (not res!3088585)) b!7746528))

(assert (= (and b!7746528 res!3088581) b!7746531))

(assert (= (and b!7746531 (not res!3088580)) b!7746533))

(assert (= (and b!7746533 (not res!3088583)) b!7746535))

(assert (= (or b!7746523 b!7746531 b!7746532) bm!717948))

(assert (=> bm!717948 m!8214174))

(declare-fun m!8214274 () Bool)

(assert (=> bm!717948 m!8214274))

(assert (=> b!7746524 m!8214174))

(declare-fun m!8214276 () Bool)

(assert (=> b!7746524 m!8214276))

(assert (=> b!7746524 m!8214276))

(declare-fun m!8214278 () Bool)

(assert (=> b!7746524 m!8214278))

(assert (=> d!2342210 m!8214174))

(assert (=> d!2342210 m!8214274))

(assert (=> d!2342210 m!8214196))

(assert (=> b!7746530 m!8214174))

(declare-fun m!8214280 () Bool)

(assert (=> b!7746530 m!8214280))

(assert (=> b!7746530 m!8214280))

(declare-fun m!8214282 () Bool)

(assert (=> b!7746530 m!8214282))

(assert (=> b!7746530 m!8214174))

(assert (=> b!7746530 m!8214276))

(assert (=> b!7746530 m!8214282))

(assert (=> b!7746530 m!8214276))

(declare-fun m!8214284 () Bool)

(assert (=> b!7746530 m!8214284))

(assert (=> b!7746533 m!8214174))

(assert (=> b!7746533 m!8214276))

(assert (=> b!7746533 m!8214276))

(assert (=> b!7746533 m!8214278))

(assert (=> b!7746535 m!8214174))

(assert (=> b!7746535 m!8214280))

(assert (=> b!7746522 m!8214174))

(assert (=> b!7746522 m!8214280))

(declare-fun m!8214286 () Bool)

(assert (=> b!7746527 m!8214286))

(assert (=> b!7746367 d!2342210))

(declare-fun b!7746551 () Bool)

(declare-fun e!4592650 () List!73435)

(assert (=> b!7746551 (= e!4592650 (Cons!73311 (h!79759 (_1!38118 lt!2668673)) (++!17787 (t!388170 (_1!38118 lt!2668673)) (_2!38118 lt!2668673))))))

(declare-fun b!7746552 () Bool)

(declare-fun res!3088594 () Bool)

(declare-fun e!4592649 () Bool)

(assert (=> b!7746552 (=> (not res!3088594) (not e!4592649))))

(declare-fun lt!2668718 () List!73435)

(declare-fun size!42646 (List!73435) Int)

(assert (=> b!7746552 (= res!3088594 (= (size!42646 lt!2668718) (+ (size!42646 (_1!38118 lt!2668673)) (size!42646 (_2!38118 lt!2668673)))))))

(declare-fun d!2342214 () Bool)

(assert (=> d!2342214 e!4592649))

(declare-fun res!3088593 () Bool)

(assert (=> d!2342214 (=> (not res!3088593) (not e!4592649))))

(declare-fun content!15543 (List!73435) (Set C!41502))

(assert (=> d!2342214 (= res!3088593 (= (content!15543 lt!2668718) (set.union (content!15543 (_1!38118 lt!2668673)) (content!15543 (_2!38118 lt!2668673)))))))

(assert (=> d!2342214 (= lt!2668718 e!4592650)))

(declare-fun c!1428831 () Bool)

(assert (=> d!2342214 (= c!1428831 (is-Nil!73311 (_1!38118 lt!2668673)))))

(assert (=> d!2342214 (= (++!17787 (_1!38118 lt!2668673) (_2!38118 lt!2668673)) lt!2668718)))

(declare-fun b!7746553 () Bool)

(assert (=> b!7746553 (= e!4592649 (or (not (= (_2!38118 lt!2668673) Nil!73311)) (= lt!2668718 (_1!38118 lt!2668673))))))

(declare-fun b!7746550 () Bool)

(assert (=> b!7746550 (= e!4592650 (_2!38118 lt!2668673))))

(assert (= (and d!2342214 c!1428831) b!7746550))

(assert (= (and d!2342214 (not c!1428831)) b!7746551))

(assert (= (and d!2342214 res!3088593) b!7746552))

(assert (= (and b!7746552 res!3088594) b!7746553))

(declare-fun m!8214302 () Bool)

(assert (=> b!7746551 m!8214302))

(declare-fun m!8214304 () Bool)

(assert (=> b!7746552 m!8214304))

(declare-fun m!8214306 () Bool)

(assert (=> b!7746552 m!8214306))

(declare-fun m!8214308 () Bool)

(assert (=> b!7746552 m!8214308))

(declare-fun m!8214310 () Bool)

(assert (=> d!2342214 m!8214310))

(declare-fun m!8214312 () Bool)

(assert (=> d!2342214 m!8214312))

(declare-fun m!8214314 () Bool)

(assert (=> d!2342214 m!8214314))

(assert (=> b!7746367 d!2342214))

(declare-fun b!7746555 () Bool)

(declare-fun e!4592652 () List!73435)

(assert (=> b!7746555 (= e!4592652 (Cons!73311 (h!79759 (_1!38118 lt!2668676)) (++!17787 (t!388170 (_1!38118 lt!2668676)) (_2!38118 lt!2668676))))))

(declare-fun b!7746556 () Bool)

(declare-fun res!3088596 () Bool)

(declare-fun e!4592651 () Bool)

(assert (=> b!7746556 (=> (not res!3088596) (not e!4592651))))

(declare-fun lt!2668719 () List!73435)

(assert (=> b!7746556 (= res!3088596 (= (size!42646 lt!2668719) (+ (size!42646 (_1!38118 lt!2668676)) (size!42646 (_2!38118 lt!2668676)))))))

(declare-fun d!2342218 () Bool)

(assert (=> d!2342218 e!4592651))

(declare-fun res!3088595 () Bool)

(assert (=> d!2342218 (=> (not res!3088595) (not e!4592651))))

(assert (=> d!2342218 (= res!3088595 (= (content!15543 lt!2668719) (set.union (content!15543 (_1!38118 lt!2668676)) (content!15543 (_2!38118 lt!2668676)))))))

(assert (=> d!2342218 (= lt!2668719 e!4592652)))

(declare-fun c!1428832 () Bool)

(assert (=> d!2342218 (= c!1428832 (is-Nil!73311 (_1!38118 lt!2668676)))))

(assert (=> d!2342218 (= (++!17787 (_1!38118 lt!2668676) (_2!38118 lt!2668676)) lt!2668719)))

(declare-fun b!7746557 () Bool)

(assert (=> b!7746557 (= e!4592651 (or (not (= (_2!38118 lt!2668676) Nil!73311)) (= lt!2668719 (_1!38118 lt!2668676))))))

(declare-fun b!7746554 () Bool)

(assert (=> b!7746554 (= e!4592652 (_2!38118 lt!2668676))))

(assert (= (and d!2342218 c!1428832) b!7746554))

(assert (= (and d!2342218 (not c!1428832)) b!7746555))

(assert (= (and d!2342218 res!3088595) b!7746556))

(assert (= (and b!7746556 res!3088596) b!7746557))

(declare-fun m!8214316 () Bool)

(assert (=> b!7746555 m!8214316))

(declare-fun m!8214318 () Bool)

(assert (=> b!7746556 m!8214318))

(declare-fun m!8214320 () Bool)

(assert (=> b!7746556 m!8214320))

(declare-fun m!8214322 () Bool)

(assert (=> b!7746556 m!8214322))

(declare-fun m!8214324 () Bool)

(assert (=> d!2342218 m!8214324))

(declare-fun m!8214326 () Bool)

(assert (=> d!2342218 m!8214326))

(declare-fun m!8214328 () Bool)

(assert (=> d!2342218 m!8214328))

(assert (=> b!7746368 d!2342218))

(declare-fun b!7746558 () Bool)

(declare-fun e!4592657 () Bool)

(assert (=> b!7746558 (= e!4592657 (= (head!15820 s!9605) (c!1428804 r!14126)))))

(declare-fun b!7746559 () Bool)

(declare-fun e!4592658 () Bool)

(declare-fun lt!2668720 () Bool)

(declare-fun call!717954 () Bool)

(assert (=> b!7746559 (= e!4592658 (= lt!2668720 call!717954))))

(declare-fun b!7746560 () Bool)

(declare-fun res!3088597 () Bool)

(assert (=> b!7746560 (=> (not res!3088597) (not e!4592657))))

(assert (=> b!7746560 (= res!3088597 (isEmpty!42001 (tail!15360 s!9605)))))

(declare-fun b!7746561 () Bool)

(declare-fun res!3088603 () Bool)

(declare-fun e!4592654 () Bool)

(assert (=> b!7746561 (=> res!3088603 e!4592654)))

(assert (=> b!7746561 (= res!3088603 e!4592657)))

(declare-fun res!3088600 () Bool)

(assert (=> b!7746561 (=> (not res!3088600) (not e!4592657))))

(assert (=> b!7746561 (= res!3088600 lt!2668720)))

(declare-fun b!7746562 () Bool)

(declare-fun res!3088604 () Bool)

(assert (=> b!7746562 (=> res!3088604 e!4592654)))

(assert (=> b!7746562 (= res!3088604 (not (is-ElementMatch!20588 r!14126)))))

(declare-fun e!4592656 () Bool)

(assert (=> b!7746562 (= e!4592656 e!4592654)))

(declare-fun b!7746563 () Bool)

(declare-fun e!4592653 () Bool)

(assert (=> b!7746563 (= e!4592653 (nullable!9061 r!14126))))

(declare-fun b!7746564 () Bool)

(declare-fun e!4592655 () Bool)

(assert (=> b!7746564 (= e!4592654 e!4592655)))

(declare-fun res!3088599 () Bool)

(assert (=> b!7746564 (=> (not res!3088599) (not e!4592655))))

(assert (=> b!7746564 (= res!3088599 (not lt!2668720))))

(declare-fun b!7746565 () Bool)

(assert (=> b!7746565 (= e!4592658 e!4592656)))

(declare-fun c!1428834 () Bool)

(assert (=> b!7746565 (= c!1428834 (is-EmptyLang!20588 r!14126))))

(declare-fun b!7746567 () Bool)

(declare-fun e!4592659 () Bool)

(assert (=> b!7746567 (= e!4592655 e!4592659)))

(declare-fun res!3088598 () Bool)

(assert (=> b!7746567 (=> res!3088598 e!4592659)))

(assert (=> b!7746567 (= res!3088598 call!717954)))

(declare-fun b!7746568 () Bool)

(declare-fun res!3088602 () Bool)

(assert (=> b!7746568 (=> (not res!3088602) (not e!4592657))))

(assert (=> b!7746568 (= res!3088602 (not call!717954))))

(declare-fun bm!717949 () Bool)

(assert (=> bm!717949 (= call!717954 (isEmpty!42001 s!9605))))

(declare-fun b!7746569 () Bool)

(declare-fun res!3088601 () Bool)

(assert (=> b!7746569 (=> res!3088601 e!4592659)))

(assert (=> b!7746569 (= res!3088601 (not (isEmpty!42001 (tail!15360 s!9605))))))

(declare-fun b!7746570 () Bool)

(assert (=> b!7746570 (= e!4592656 (not lt!2668720))))

(declare-fun b!7746571 () Bool)

(assert (=> b!7746571 (= e!4592659 (not (= (head!15820 s!9605) (c!1428804 r!14126))))))

(declare-fun b!7746566 () Bool)

(assert (=> b!7746566 (= e!4592653 (matchR!10080 (derivativeStep!6020 r!14126 (head!15820 s!9605)) (tail!15360 s!9605)))))

(declare-fun d!2342220 () Bool)

(assert (=> d!2342220 e!4592658))

(declare-fun c!1428835 () Bool)

(assert (=> d!2342220 (= c!1428835 (is-EmptyExpr!20588 r!14126))))

(assert (=> d!2342220 (= lt!2668720 e!4592653)))

(declare-fun c!1428833 () Bool)

(assert (=> d!2342220 (= c!1428833 (isEmpty!42001 s!9605))))

(assert (=> d!2342220 (validRegex!11006 r!14126)))

(assert (=> d!2342220 (= (matchR!10080 r!14126 s!9605) lt!2668720)))

(assert (= (and d!2342220 c!1428833) b!7746563))

(assert (= (and d!2342220 (not c!1428833)) b!7746566))

(assert (= (and d!2342220 c!1428835) b!7746559))

(assert (= (and d!2342220 (not c!1428835)) b!7746565))

(assert (= (and b!7746565 c!1428834) b!7746570))

(assert (= (and b!7746565 (not c!1428834)) b!7746562))

(assert (= (and b!7746562 (not res!3088604)) b!7746561))

(assert (= (and b!7746561 res!3088600) b!7746568))

(assert (= (and b!7746568 res!3088602) b!7746560))

(assert (= (and b!7746560 res!3088597) b!7746558))

(assert (= (and b!7746561 (not res!3088603)) b!7746564))

(assert (= (and b!7746564 res!3088599) b!7746567))

(assert (= (and b!7746567 (not res!3088598)) b!7746569))

(assert (= (and b!7746569 (not res!3088601)) b!7746571))

(assert (= (or b!7746559 b!7746567 b!7746568) bm!717949))

(declare-fun m!8214330 () Bool)

(assert (=> bm!717949 m!8214330))

(declare-fun m!8214332 () Bool)

(assert (=> b!7746560 m!8214332))

(assert (=> b!7746560 m!8214332))

(declare-fun m!8214334 () Bool)

(assert (=> b!7746560 m!8214334))

(assert (=> d!2342220 m!8214330))

(assert (=> d!2342220 m!8214196))

(declare-fun m!8214336 () Bool)

(assert (=> b!7746566 m!8214336))

(assert (=> b!7746566 m!8214336))

(declare-fun m!8214338 () Bool)

(assert (=> b!7746566 m!8214338))

(assert (=> b!7746566 m!8214332))

(assert (=> b!7746566 m!8214338))

(assert (=> b!7746566 m!8214332))

(declare-fun m!8214340 () Bool)

(assert (=> b!7746566 m!8214340))

(assert (=> b!7746569 m!8214332))

(assert (=> b!7746569 m!8214332))

(assert (=> b!7746569 m!8214334))

(assert (=> b!7746571 m!8214336))

(assert (=> b!7746558 m!8214336))

(assert (=> b!7746563 m!8214286))

(assert (=> b!7746374 d!2342220))

(declare-fun bs!1965520 () Bool)

(declare-fun d!2342222 () Bool)

(assert (= bs!1965520 (and d!2342222 b!7746374)))

(declare-fun lambda!471734 () Int)

(assert (=> bs!1965520 (= lambda!471734 lambda!471720)))

(declare-fun bs!1965521 () Bool)

(assert (= bs!1965521 (and d!2342222 b!7746379)))

(assert (=> bs!1965521 (not (= lambda!471734 lambda!471721))))

(assert (=> d!2342222 true))

(assert (=> d!2342222 true))

(assert (=> d!2342222 true))

(assert (=> d!2342222 (= (isDefined!14225 (findConcatSeparation!3639 (regOne!41688 r!14126) (regTwo!41688 r!14126) Nil!73311 s!9605 s!9605)) (Exists!4709 lambda!471734))))

(declare-fun lt!2668723 () Unit!168276)

(declare-fun choose!59387 (Regex!20588 Regex!20588 List!73435) Unit!168276)

(assert (=> d!2342222 (= lt!2668723 (choose!59387 (regOne!41688 r!14126) (regTwo!41688 r!14126) s!9605))))

(assert (=> d!2342222 (validRegex!11006 (regOne!41688 r!14126))))

(assert (=> d!2342222 (= (lemmaFindConcatSeparationEquivalentToExists!3397 (regOne!41688 r!14126) (regTwo!41688 r!14126) s!9605) lt!2668723)))

(declare-fun bs!1965522 () Bool)

(assert (= bs!1965522 d!2342222))

(assert (=> bs!1965522 m!8214188))

(assert (=> bs!1965522 m!8214188))

(declare-fun m!8214342 () Bool)

(assert (=> bs!1965522 m!8214342))

(declare-fun m!8214344 () Bool)

(assert (=> bs!1965522 m!8214344))

(declare-fun m!8214346 () Bool)

(assert (=> bs!1965522 m!8214346))

(assert (=> bs!1965522 m!8214208))

(assert (=> b!7746374 d!2342222))

(declare-fun b!7746621 () Bool)

(declare-fun e!4592694 () Option!17609)

(assert (=> b!7746621 (= e!4592694 (Some!17608 (tuple2!69631 Nil!73311 s!9605)))))

(declare-fun b!7746622 () Bool)

(declare-fun e!4592693 () Bool)

(declare-fun lt!2668732 () Option!17609)

(assert (=> b!7746622 (= e!4592693 (= (++!17787 (_1!38118 (get!26073 lt!2668732)) (_2!38118 (get!26073 lt!2668732))) s!9605))))

(declare-fun b!7746623 () Bool)

(declare-fun e!4592697 () Bool)

(assert (=> b!7746623 (= e!4592697 (matchR!10080 (regTwo!41688 r!14126) s!9605))))

(declare-fun b!7746624 () Bool)

(declare-fun res!3088634 () Bool)

(assert (=> b!7746624 (=> (not res!3088634) (not e!4592693))))

(assert (=> b!7746624 (= res!3088634 (matchR!10080 (regOne!41688 r!14126) (_1!38118 (get!26073 lt!2668732))))))

(declare-fun d!2342224 () Bool)

(declare-fun e!4592695 () Bool)

(assert (=> d!2342224 e!4592695))

(declare-fun res!3088637 () Bool)

(assert (=> d!2342224 (=> res!3088637 e!4592695)))

(assert (=> d!2342224 (= res!3088637 e!4592693)))

(declare-fun res!3088635 () Bool)

(assert (=> d!2342224 (=> (not res!3088635) (not e!4592693))))

(assert (=> d!2342224 (= res!3088635 (isDefined!14225 lt!2668732))))

(assert (=> d!2342224 (= lt!2668732 e!4592694)))

(declare-fun c!1428846 () Bool)

(assert (=> d!2342224 (= c!1428846 e!4592697)))

(declare-fun res!3088636 () Bool)

(assert (=> d!2342224 (=> (not res!3088636) (not e!4592697))))

(assert (=> d!2342224 (= res!3088636 (matchR!10080 (regOne!41688 r!14126) Nil!73311))))

(assert (=> d!2342224 (validRegex!11006 (regOne!41688 r!14126))))

(assert (=> d!2342224 (= (findConcatSeparation!3639 (regOne!41688 r!14126) (regTwo!41688 r!14126) Nil!73311 s!9605 s!9605) lt!2668732)))

(declare-fun b!7746625 () Bool)

(declare-fun e!4592696 () Option!17609)

(assert (=> b!7746625 (= e!4592694 e!4592696)))

(declare-fun c!1428847 () Bool)

(assert (=> b!7746625 (= c!1428847 (is-Nil!73311 s!9605))))

(declare-fun b!7746626 () Bool)

(declare-fun lt!2668730 () Unit!168276)

(declare-fun lt!2668731 () Unit!168276)

(assert (=> b!7746626 (= lt!2668730 lt!2668731)))

(assert (=> b!7746626 (= (++!17787 (++!17787 Nil!73311 (Cons!73311 (h!79759 s!9605) Nil!73311)) (t!388170 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3333 (List!73435 C!41502 List!73435 List!73435) Unit!168276)

(assert (=> b!7746626 (= lt!2668731 (lemmaMoveElementToOtherListKeepsConcatEq!3333 Nil!73311 (h!79759 s!9605) (t!388170 s!9605) s!9605))))

(assert (=> b!7746626 (= e!4592696 (findConcatSeparation!3639 (regOne!41688 r!14126) (regTwo!41688 r!14126) (++!17787 Nil!73311 (Cons!73311 (h!79759 s!9605) Nil!73311)) (t!388170 s!9605) s!9605))))

(declare-fun b!7746627 () Bool)

(declare-fun res!3088638 () Bool)

(assert (=> b!7746627 (=> (not res!3088638) (not e!4592693))))

(assert (=> b!7746627 (= res!3088638 (matchR!10080 (regTwo!41688 r!14126) (_2!38118 (get!26073 lt!2668732))))))

(declare-fun b!7746628 () Bool)

(assert (=> b!7746628 (= e!4592696 None!17608)))

(declare-fun b!7746629 () Bool)

(assert (=> b!7746629 (= e!4592695 (not (isDefined!14225 lt!2668732)))))

(assert (= (and d!2342224 res!3088636) b!7746623))

(assert (= (and d!2342224 c!1428846) b!7746621))

(assert (= (and d!2342224 (not c!1428846)) b!7746625))

(assert (= (and b!7746625 c!1428847) b!7746628))

(assert (= (and b!7746625 (not c!1428847)) b!7746626))

(assert (= (and d!2342224 res!3088635) b!7746624))

(assert (= (and b!7746624 res!3088634) b!7746627))

(assert (= (and b!7746627 res!3088638) b!7746622))

(assert (= (and d!2342224 (not res!3088637)) b!7746629))

(declare-fun m!8214354 () Bool)

(assert (=> b!7746626 m!8214354))

(assert (=> b!7746626 m!8214354))

(declare-fun m!8214356 () Bool)

(assert (=> b!7746626 m!8214356))

(declare-fun m!8214358 () Bool)

(assert (=> b!7746626 m!8214358))

(assert (=> b!7746626 m!8214354))

(declare-fun m!8214360 () Bool)

(assert (=> b!7746626 m!8214360))

(declare-fun m!8214362 () Bool)

(assert (=> d!2342224 m!8214362))

(declare-fun m!8214364 () Bool)

(assert (=> d!2342224 m!8214364))

(assert (=> d!2342224 m!8214208))

(declare-fun m!8214366 () Bool)

(assert (=> b!7746627 m!8214366))

(declare-fun m!8214368 () Bool)

(assert (=> b!7746627 m!8214368))

(assert (=> b!7746624 m!8214366))

(declare-fun m!8214370 () Bool)

(assert (=> b!7746624 m!8214370))

(assert (=> b!7746622 m!8214366))

(declare-fun m!8214372 () Bool)

(assert (=> b!7746622 m!8214372))

(declare-fun m!8214374 () Bool)

(assert (=> b!7746623 m!8214374))

(assert (=> b!7746629 m!8214362))

(assert (=> b!7746374 d!2342224))

(declare-fun d!2342228 () Bool)

(declare-fun choose!59388 (Int) Bool)

(assert (=> d!2342228 (= (Exists!4709 lambda!471720) (choose!59388 lambda!471720))))

(declare-fun bs!1965523 () Bool)

(assert (= bs!1965523 d!2342228))

(declare-fun m!8214376 () Bool)

(assert (=> bs!1965523 m!8214376))

(assert (=> b!7746374 d!2342228))

(declare-fun d!2342230 () Bool)

(declare-fun isEmpty!42002 (Option!17609) Bool)

(assert (=> d!2342230 (= (isDefined!14225 lt!2668675) (not (isEmpty!42002 lt!2668675)))))

(declare-fun bs!1965524 () Bool)

(assert (= bs!1965524 d!2342230))

(declare-fun m!8214378 () Bool)

(assert (=> bs!1965524 m!8214378))

(assert (=> b!7746374 d!2342230))

(declare-fun d!2342232 () Bool)

(assert (=> d!2342232 (= (Exists!4709 lambda!471721) (choose!59388 lambda!471721))))

(declare-fun bs!1965525 () Bool)

(assert (= bs!1965525 d!2342232))

(declare-fun m!8214380 () Bool)

(assert (=> bs!1965525 m!8214380))

(assert (=> b!7746379 d!2342232))

(declare-fun b!7746666 () Bool)

(declare-fun e!4592719 () Bool)

(declare-fun e!4592718 () Bool)

(assert (=> b!7746666 (= e!4592719 e!4592718)))

(declare-fun res!3088665 () Bool)

(assert (=> b!7746666 (=> (not res!3088665) (not e!4592718))))

(assert (=> b!7746666 (= res!3088665 (not (is-Nil!73311 (_1!38118 lt!2668676))))))

(declare-fun b!7746667 () Bool)

(declare-fun res!3088663 () Bool)

(assert (=> b!7746667 (=> (not res!3088663) (not e!4592718))))

(assert (=> b!7746667 (= res!3088663 (= (head!15820 Nil!73311) (head!15820 (_1!38118 lt!2668676))))))

(declare-fun d!2342234 () Bool)

(declare-fun e!4592720 () Bool)

(assert (=> d!2342234 e!4592720))

(declare-fun res!3088666 () Bool)

(assert (=> d!2342234 (=> res!3088666 e!4592720)))

(declare-fun lt!2668737 () Bool)

(assert (=> d!2342234 (= res!3088666 (not lt!2668737))))

(assert (=> d!2342234 (= lt!2668737 e!4592719)))

(declare-fun res!3088664 () Bool)

(assert (=> d!2342234 (=> res!3088664 e!4592719)))

(assert (=> d!2342234 (= res!3088664 (is-Nil!73311 Nil!73311))))

(assert (=> d!2342234 (= (isPrefix!6232 Nil!73311 (_1!38118 lt!2668676)) lt!2668737)))

(declare-fun b!7746668 () Bool)

(assert (=> b!7746668 (= e!4592718 (isPrefix!6232 (tail!15360 Nil!73311) (tail!15360 (_1!38118 lt!2668676))))))

(declare-fun b!7746669 () Bool)

(assert (=> b!7746669 (= e!4592720 (>= (size!42646 (_1!38118 lt!2668676)) (size!42646 Nil!73311)))))

(assert (= (and d!2342234 (not res!3088664)) b!7746666))

(assert (= (and b!7746666 res!3088665) b!7746667))

(assert (= (and b!7746667 res!3088663) b!7746668))

(assert (= (and d!2342234 (not res!3088666)) b!7746669))

(declare-fun m!8214382 () Bool)

(assert (=> b!7746667 m!8214382))

(declare-fun m!8214384 () Bool)

(assert (=> b!7746667 m!8214384))

(declare-fun m!8214386 () Bool)

(assert (=> b!7746668 m!8214386))

(declare-fun m!8214388 () Bool)

(assert (=> b!7746668 m!8214388))

(assert (=> b!7746668 m!8214386))

(assert (=> b!7746668 m!8214388))

(declare-fun m!8214390 () Bool)

(assert (=> b!7746668 m!8214390))

(assert (=> b!7746669 m!8214320))

(declare-fun m!8214392 () Bool)

(assert (=> b!7746669 m!8214392))

(assert (=> b!7746364 d!2342234))

(declare-fun d!2342236 () Bool)

(assert (=> d!2342236 (= (matchR!10080 (regOne!41688 r!14126) (_1!38118 lt!2668676)) (matchRSpec!4653 (regOne!41688 r!14126) (_1!38118 lt!2668676)))))

(declare-fun lt!2668740 () Unit!168276)

(declare-fun choose!59389 (Regex!20588 List!73435) Unit!168276)

(assert (=> d!2342236 (= lt!2668740 (choose!59389 (regOne!41688 r!14126) (_1!38118 lt!2668676)))))

(assert (=> d!2342236 (validRegex!11006 (regOne!41688 r!14126))))

(assert (=> d!2342236 (= (mainMatchTheorem!4623 (regOne!41688 r!14126) (_1!38118 lt!2668676)) lt!2668740)))

(declare-fun bs!1965526 () Bool)

(assert (= bs!1965526 d!2342236))

(assert (=> bs!1965526 m!8214210))

(assert (=> bs!1965526 m!8214198))

(declare-fun m!8214394 () Bool)

(assert (=> bs!1965526 m!8214394))

(assert (=> bs!1965526 m!8214208))

(assert (=> b!7746369 d!2342236))

(declare-fun d!2342238 () Bool)

(declare-fun lt!2668743 () tuple2!69630)

(declare-fun dynLambda!29980 (Int tuple2!69630) Bool)

(assert (=> d!2342238 (dynLambda!29980 lambda!471721 lt!2668743)))

(declare-fun choose!59390 (Int) tuple2!69630)

(assert (=> d!2342238 (= lt!2668743 (choose!59390 lambda!471721))))

(assert (=> d!2342238 (Exists!4709 lambda!471721)))

(assert (=> d!2342238 (= (pickWitness!545 lambda!471721) lt!2668743)))

(declare-fun b_lambda!289403 () Bool)

(assert (=> (not b_lambda!289403) (not d!2342238)))

(declare-fun bs!1965527 () Bool)

(assert (= bs!1965527 d!2342238))

(declare-fun m!8214396 () Bool)

(assert (=> bs!1965527 m!8214396))

(declare-fun m!8214398 () Bool)

(assert (=> bs!1965527 m!8214398))

(assert (=> bs!1965527 m!8214182))

(assert (=> b!7746369 d!2342238))

(declare-fun b!7746670 () Bool)

(declare-fun e!4592725 () Bool)

(assert (=> b!7746670 (= e!4592725 (= (head!15820 (_1!38118 lt!2668676)) (c!1428804 (regOne!41688 r!14126))))))

(declare-fun b!7746671 () Bool)

(declare-fun e!4592726 () Bool)

(declare-fun lt!2668744 () Bool)

(declare-fun call!717966 () Bool)

(assert (=> b!7746671 (= e!4592726 (= lt!2668744 call!717966))))

(declare-fun b!7746672 () Bool)

(declare-fun res!3088667 () Bool)

(assert (=> b!7746672 (=> (not res!3088667) (not e!4592725))))

(assert (=> b!7746672 (= res!3088667 (isEmpty!42001 (tail!15360 (_1!38118 lt!2668676))))))

(declare-fun b!7746673 () Bool)

(declare-fun res!3088673 () Bool)

(declare-fun e!4592722 () Bool)

(assert (=> b!7746673 (=> res!3088673 e!4592722)))

(assert (=> b!7746673 (= res!3088673 e!4592725)))

(declare-fun res!3088670 () Bool)

(assert (=> b!7746673 (=> (not res!3088670) (not e!4592725))))

(assert (=> b!7746673 (= res!3088670 lt!2668744)))

(declare-fun b!7746674 () Bool)

(declare-fun res!3088674 () Bool)

(assert (=> b!7746674 (=> res!3088674 e!4592722)))

(assert (=> b!7746674 (= res!3088674 (not (is-ElementMatch!20588 (regOne!41688 r!14126))))))

(declare-fun e!4592724 () Bool)

(assert (=> b!7746674 (= e!4592724 e!4592722)))

(declare-fun b!7746675 () Bool)

(declare-fun e!4592721 () Bool)

(assert (=> b!7746675 (= e!4592721 (nullable!9061 (regOne!41688 r!14126)))))

(declare-fun b!7746676 () Bool)

(declare-fun e!4592723 () Bool)

(assert (=> b!7746676 (= e!4592722 e!4592723)))

(declare-fun res!3088669 () Bool)

(assert (=> b!7746676 (=> (not res!3088669) (not e!4592723))))

(assert (=> b!7746676 (= res!3088669 (not lt!2668744))))

(declare-fun b!7746677 () Bool)

(assert (=> b!7746677 (= e!4592726 e!4592724)))

(declare-fun c!1428855 () Bool)

(assert (=> b!7746677 (= c!1428855 (is-EmptyLang!20588 (regOne!41688 r!14126)))))

(declare-fun b!7746679 () Bool)

(declare-fun e!4592727 () Bool)

(assert (=> b!7746679 (= e!4592723 e!4592727)))

(declare-fun res!3088668 () Bool)

(assert (=> b!7746679 (=> res!3088668 e!4592727)))

(assert (=> b!7746679 (= res!3088668 call!717966)))

(declare-fun b!7746680 () Bool)

(declare-fun res!3088672 () Bool)

(assert (=> b!7746680 (=> (not res!3088672) (not e!4592725))))

(assert (=> b!7746680 (= res!3088672 (not call!717966))))

(declare-fun bm!717961 () Bool)

(assert (=> bm!717961 (= call!717966 (isEmpty!42001 (_1!38118 lt!2668676)))))

(declare-fun b!7746681 () Bool)

(declare-fun res!3088671 () Bool)

(assert (=> b!7746681 (=> res!3088671 e!4592727)))

(assert (=> b!7746681 (= res!3088671 (not (isEmpty!42001 (tail!15360 (_1!38118 lt!2668676)))))))

(declare-fun b!7746682 () Bool)

(assert (=> b!7746682 (= e!4592724 (not lt!2668744))))

(declare-fun b!7746683 () Bool)

(assert (=> b!7746683 (= e!4592727 (not (= (head!15820 (_1!38118 lt!2668676)) (c!1428804 (regOne!41688 r!14126)))))))

(declare-fun b!7746678 () Bool)

(assert (=> b!7746678 (= e!4592721 (matchR!10080 (derivativeStep!6020 (regOne!41688 r!14126) (head!15820 (_1!38118 lt!2668676))) (tail!15360 (_1!38118 lt!2668676))))))

(declare-fun d!2342240 () Bool)

(assert (=> d!2342240 e!4592726))

(declare-fun c!1428856 () Bool)

(assert (=> d!2342240 (= c!1428856 (is-EmptyExpr!20588 (regOne!41688 r!14126)))))

(assert (=> d!2342240 (= lt!2668744 e!4592721)))

(declare-fun c!1428854 () Bool)

(assert (=> d!2342240 (= c!1428854 (isEmpty!42001 (_1!38118 lt!2668676)))))

(assert (=> d!2342240 (validRegex!11006 (regOne!41688 r!14126))))

(assert (=> d!2342240 (= (matchR!10080 (regOne!41688 r!14126) (_1!38118 lt!2668676)) lt!2668744)))

(assert (= (and d!2342240 c!1428854) b!7746675))

(assert (= (and d!2342240 (not c!1428854)) b!7746678))

(assert (= (and d!2342240 c!1428856) b!7746671))

(assert (= (and d!2342240 (not c!1428856)) b!7746677))

(assert (= (and b!7746677 c!1428855) b!7746682))

(assert (= (and b!7746677 (not c!1428855)) b!7746674))

(assert (= (and b!7746674 (not res!3088674)) b!7746673))

(assert (= (and b!7746673 res!3088670) b!7746680))

(assert (= (and b!7746680 res!3088672) b!7746672))

(assert (= (and b!7746672 res!3088667) b!7746670))

(assert (= (and b!7746673 (not res!3088673)) b!7746676))

(assert (= (and b!7746676 res!3088669) b!7746679))

(assert (= (and b!7746679 (not res!3088668)) b!7746681))

(assert (= (and b!7746681 (not res!3088671)) b!7746683))

(assert (= (or b!7746671 b!7746679 b!7746680) bm!717961))

(declare-fun m!8214400 () Bool)

(assert (=> bm!717961 m!8214400))

(assert (=> b!7746672 m!8214388))

(assert (=> b!7746672 m!8214388))

(declare-fun m!8214402 () Bool)

(assert (=> b!7746672 m!8214402))

(assert (=> d!2342240 m!8214400))

(assert (=> d!2342240 m!8214208))

(assert (=> b!7746678 m!8214384))

(assert (=> b!7746678 m!8214384))

(declare-fun m!8214404 () Bool)

(assert (=> b!7746678 m!8214404))

(assert (=> b!7746678 m!8214388))

(assert (=> b!7746678 m!8214404))

(assert (=> b!7746678 m!8214388))

(declare-fun m!8214406 () Bool)

(assert (=> b!7746678 m!8214406))

(assert (=> b!7746681 m!8214388))

(assert (=> b!7746681 m!8214388))

(assert (=> b!7746681 m!8214402))

(assert (=> b!7746683 m!8214384))

(assert (=> b!7746670 m!8214384))

(declare-fun m!8214408 () Bool)

(assert (=> b!7746675 m!8214408))

(assert (=> b!7746369 d!2342240))

(declare-fun b!7746684 () Bool)

(declare-fun e!4592732 () Bool)

(assert (=> b!7746684 (= e!4592732 (= (head!15820 (_2!38118 lt!2668676)) (c!1428804 (regTwo!41688 r!14126))))))

(declare-fun b!7746685 () Bool)

(declare-fun e!4592733 () Bool)

(declare-fun lt!2668745 () Bool)

(declare-fun call!717967 () Bool)

(assert (=> b!7746685 (= e!4592733 (= lt!2668745 call!717967))))

(declare-fun b!7746686 () Bool)

(declare-fun res!3088675 () Bool)

(assert (=> b!7746686 (=> (not res!3088675) (not e!4592732))))

(assert (=> b!7746686 (= res!3088675 (isEmpty!42001 (tail!15360 (_2!38118 lt!2668676))))))

(declare-fun b!7746687 () Bool)

(declare-fun res!3088681 () Bool)

(declare-fun e!4592729 () Bool)

(assert (=> b!7746687 (=> res!3088681 e!4592729)))

(assert (=> b!7746687 (= res!3088681 e!4592732)))

(declare-fun res!3088678 () Bool)

(assert (=> b!7746687 (=> (not res!3088678) (not e!4592732))))

(assert (=> b!7746687 (= res!3088678 lt!2668745)))

(declare-fun b!7746688 () Bool)

(declare-fun res!3088682 () Bool)

(assert (=> b!7746688 (=> res!3088682 e!4592729)))

(assert (=> b!7746688 (= res!3088682 (not (is-ElementMatch!20588 (regTwo!41688 r!14126))))))

(declare-fun e!4592731 () Bool)

(assert (=> b!7746688 (= e!4592731 e!4592729)))

(declare-fun b!7746689 () Bool)

(declare-fun e!4592728 () Bool)

(assert (=> b!7746689 (= e!4592728 (nullable!9061 (regTwo!41688 r!14126)))))

(declare-fun b!7746690 () Bool)

(declare-fun e!4592730 () Bool)

(assert (=> b!7746690 (= e!4592729 e!4592730)))

(declare-fun res!3088677 () Bool)

(assert (=> b!7746690 (=> (not res!3088677) (not e!4592730))))

(assert (=> b!7746690 (= res!3088677 (not lt!2668745))))

(declare-fun b!7746691 () Bool)

(assert (=> b!7746691 (= e!4592733 e!4592731)))

(declare-fun c!1428858 () Bool)

(assert (=> b!7746691 (= c!1428858 (is-EmptyLang!20588 (regTwo!41688 r!14126)))))

(declare-fun b!7746693 () Bool)

(declare-fun e!4592734 () Bool)

(assert (=> b!7746693 (= e!4592730 e!4592734)))

(declare-fun res!3088676 () Bool)

(assert (=> b!7746693 (=> res!3088676 e!4592734)))

(assert (=> b!7746693 (= res!3088676 call!717967)))

(declare-fun b!7746694 () Bool)

(declare-fun res!3088680 () Bool)

(assert (=> b!7746694 (=> (not res!3088680) (not e!4592732))))

(assert (=> b!7746694 (= res!3088680 (not call!717967))))

(declare-fun bm!717962 () Bool)

(assert (=> bm!717962 (= call!717967 (isEmpty!42001 (_2!38118 lt!2668676)))))

(declare-fun b!7746695 () Bool)

(declare-fun res!3088679 () Bool)

(assert (=> b!7746695 (=> res!3088679 e!4592734)))

(assert (=> b!7746695 (= res!3088679 (not (isEmpty!42001 (tail!15360 (_2!38118 lt!2668676)))))))

(declare-fun b!7746696 () Bool)

(assert (=> b!7746696 (= e!4592731 (not lt!2668745))))

(declare-fun b!7746697 () Bool)

(assert (=> b!7746697 (= e!4592734 (not (= (head!15820 (_2!38118 lt!2668676)) (c!1428804 (regTwo!41688 r!14126)))))))

(declare-fun b!7746692 () Bool)

(assert (=> b!7746692 (= e!4592728 (matchR!10080 (derivativeStep!6020 (regTwo!41688 r!14126) (head!15820 (_2!38118 lt!2668676))) (tail!15360 (_2!38118 lt!2668676))))))

(declare-fun d!2342242 () Bool)

(assert (=> d!2342242 e!4592733))

(declare-fun c!1428859 () Bool)

(assert (=> d!2342242 (= c!1428859 (is-EmptyExpr!20588 (regTwo!41688 r!14126)))))

(assert (=> d!2342242 (= lt!2668745 e!4592728)))

(declare-fun c!1428857 () Bool)

(assert (=> d!2342242 (= c!1428857 (isEmpty!42001 (_2!38118 lt!2668676)))))

(assert (=> d!2342242 (validRegex!11006 (regTwo!41688 r!14126))))

(assert (=> d!2342242 (= (matchR!10080 (regTwo!41688 r!14126) (_2!38118 lt!2668676)) lt!2668745)))

(assert (= (and d!2342242 c!1428857) b!7746689))

(assert (= (and d!2342242 (not c!1428857)) b!7746692))

(assert (= (and d!2342242 c!1428859) b!7746685))

(assert (= (and d!2342242 (not c!1428859)) b!7746691))

(assert (= (and b!7746691 c!1428858) b!7746696))

(assert (= (and b!7746691 (not c!1428858)) b!7746688))

(assert (= (and b!7746688 (not res!3088682)) b!7746687))

(assert (= (and b!7746687 res!3088678) b!7746694))

(assert (= (and b!7746694 res!3088680) b!7746686))

(assert (= (and b!7746686 res!3088675) b!7746684))

(assert (= (and b!7746687 (not res!3088681)) b!7746690))

(assert (= (and b!7746690 res!3088677) b!7746693))

(assert (= (and b!7746693 (not res!3088676)) b!7746695))

(assert (= (and b!7746695 (not res!3088679)) b!7746697))

(assert (= (or b!7746685 b!7746693 b!7746694) bm!717962))

(declare-fun m!8214410 () Bool)

(assert (=> bm!717962 m!8214410))

(declare-fun m!8214412 () Bool)

(assert (=> b!7746686 m!8214412))

(assert (=> b!7746686 m!8214412))

(declare-fun m!8214414 () Bool)

(assert (=> b!7746686 m!8214414))

(assert (=> d!2342242 m!8214410))

(assert (=> d!2342242 m!8214180))

(declare-fun m!8214416 () Bool)

(assert (=> b!7746692 m!8214416))

(assert (=> b!7746692 m!8214416))

(declare-fun m!8214418 () Bool)

(assert (=> b!7746692 m!8214418))

(assert (=> b!7746692 m!8214412))

(assert (=> b!7746692 m!8214418))

(assert (=> b!7746692 m!8214412))

(declare-fun m!8214420 () Bool)

(assert (=> b!7746692 m!8214420))

(assert (=> b!7746695 m!8214412))

(assert (=> b!7746695 m!8214412))

(assert (=> b!7746695 m!8214414))

(assert (=> b!7746697 m!8214416))

(assert (=> b!7746684 m!8214416))

(declare-fun m!8214422 () Bool)

(assert (=> b!7746689 m!8214422))

(assert (=> b!7746369 d!2342242))

(declare-fun d!2342244 () Bool)

(declare-fun res!3088693 () Bool)

(declare-fun e!4592748 () Bool)

(assert (=> d!2342244 (=> res!3088693 e!4592748)))

(assert (=> d!2342244 (= res!3088693 (is-ElementMatch!20588 (regOne!41688 r!14126)))))

(assert (=> d!2342244 (= (validRegex!11006 (regOne!41688 r!14126)) e!4592748)))

(declare-fun b!7746712 () Bool)

(declare-fun e!4592744 () Bool)

(declare-fun e!4592747 () Bool)

(assert (=> b!7746712 (= e!4592744 e!4592747)))

(declare-fun res!3088692 () Bool)

(assert (=> b!7746712 (= res!3088692 (not (nullable!9061 (reg!20917 (regOne!41688 r!14126)))))))

(assert (=> b!7746712 (=> (not res!3088692) (not e!4592747))))

(declare-fun b!7746713 () Bool)

(declare-fun e!4592743 () Bool)

(assert (=> b!7746713 (= e!4592744 e!4592743)))

(declare-fun c!1428864 () Bool)

(assert (=> b!7746713 (= c!1428864 (is-Union!20588 (regOne!41688 r!14126)))))

(declare-fun bm!717964 () Bool)

(declare-fun call!717971 () Bool)

(declare-fun call!717969 () Bool)

(assert (=> bm!717964 (= call!717971 call!717969)))

(declare-fun b!7746714 () Bool)

(declare-fun e!4592746 () Bool)

(declare-fun e!4592742 () Bool)

(assert (=> b!7746714 (= e!4592746 e!4592742)))

(declare-fun res!3088695 () Bool)

(assert (=> b!7746714 (=> (not res!3088695) (not e!4592742))))

(declare-fun call!717970 () Bool)

(assert (=> b!7746714 (= res!3088695 call!717970)))

(declare-fun c!1428863 () Bool)

(declare-fun bm!717965 () Bool)

(assert (=> bm!717965 (= call!717969 (validRegex!11006 (ite c!1428863 (reg!20917 (regOne!41688 r!14126)) (ite c!1428864 (regTwo!41689 (regOne!41688 r!14126)) (regTwo!41688 (regOne!41688 r!14126))))))))

(declare-fun b!7746715 () Bool)

(assert (=> b!7746715 (= e!4592748 e!4592744)))

(assert (=> b!7746715 (= c!1428863 (is-Star!20588 (regOne!41688 r!14126)))))

(declare-fun bm!717966 () Bool)

(assert (=> bm!717966 (= call!717970 (validRegex!11006 (ite c!1428864 (regOne!41689 (regOne!41688 r!14126)) (regOne!41688 (regOne!41688 r!14126)))))))

(declare-fun b!7746716 () Bool)

(declare-fun e!4592745 () Bool)

(assert (=> b!7746716 (= e!4592745 call!717971)))

(declare-fun b!7746717 () Bool)

(assert (=> b!7746717 (= e!4592747 call!717969)))

(declare-fun b!7746718 () Bool)

(assert (=> b!7746718 (= e!4592742 call!717971)))

(declare-fun b!7746719 () Bool)

(declare-fun res!3088691 () Bool)

(assert (=> b!7746719 (=> res!3088691 e!4592746)))

(assert (=> b!7746719 (= res!3088691 (not (is-Concat!29433 (regOne!41688 r!14126))))))

(assert (=> b!7746719 (= e!4592743 e!4592746)))

(declare-fun b!7746720 () Bool)

(declare-fun res!3088694 () Bool)

(assert (=> b!7746720 (=> (not res!3088694) (not e!4592745))))

(assert (=> b!7746720 (= res!3088694 call!717970)))

(assert (=> b!7746720 (= e!4592743 e!4592745)))

(assert (= (and d!2342244 (not res!3088693)) b!7746715))

(assert (= (and b!7746715 c!1428863) b!7746712))

(assert (= (and b!7746715 (not c!1428863)) b!7746713))

(assert (= (and b!7746712 res!3088692) b!7746717))

(assert (= (and b!7746713 c!1428864) b!7746720))

(assert (= (and b!7746713 (not c!1428864)) b!7746719))

(assert (= (and b!7746720 res!3088694) b!7746716))

(assert (= (and b!7746719 (not res!3088691)) b!7746714))

(assert (= (and b!7746714 res!3088695) b!7746718))

(assert (= (or b!7746720 b!7746714) bm!717966))

(assert (= (or b!7746716 b!7746718) bm!717964))

(assert (= (or b!7746717 bm!717964) bm!717965))

(declare-fun m!8214424 () Bool)

(assert (=> b!7746712 m!8214424))

(declare-fun m!8214426 () Bool)

(assert (=> bm!717965 m!8214426))

(declare-fun m!8214428 () Bool)

(assert (=> bm!717966 m!8214428))

(assert (=> b!7746369 d!2342244))

(declare-fun bs!1965528 () Bool)

(declare-fun b!7746760 () Bool)

(assert (= bs!1965528 (and b!7746760 b!7746374)))

(declare-fun lambda!471740 () Int)

(assert (=> bs!1965528 (not (= lambda!471740 lambda!471720))))

(declare-fun bs!1965529 () Bool)

(assert (= bs!1965529 (and b!7746760 b!7746379)))

(assert (=> bs!1965529 (not (= lambda!471740 lambda!471721))))

(declare-fun bs!1965530 () Bool)

(assert (= bs!1965530 (and b!7746760 d!2342222)))

(assert (=> bs!1965530 (not (= lambda!471740 lambda!471734))))

(assert (=> b!7746760 true))

(assert (=> b!7746760 true))

(declare-fun bs!1965531 () Bool)

(declare-fun b!7746754 () Bool)

(assert (= bs!1965531 (and b!7746754 b!7746374)))

(declare-fun lambda!471742 () Int)

(assert (=> bs!1965531 (not (= lambda!471742 lambda!471720))))

(declare-fun bs!1965532 () Bool)

(assert (= bs!1965532 (and b!7746754 b!7746379)))

(assert (=> bs!1965532 (= (and (= (_2!38118 lt!2668676) s!9605) (= (regOne!41688 (regTwo!41688 r!14126)) (regOne!41688 r!14126)) (= (regTwo!41688 (regTwo!41688 r!14126)) (regTwo!41688 r!14126))) (= lambda!471742 lambda!471721))))

(declare-fun bs!1965533 () Bool)

(assert (= bs!1965533 (and b!7746754 d!2342222)))

(assert (=> bs!1965533 (not (= lambda!471742 lambda!471734))))

(declare-fun bs!1965534 () Bool)

(assert (= bs!1965534 (and b!7746754 b!7746760)))

(assert (=> bs!1965534 (not (= lambda!471742 lambda!471740))))

(assert (=> b!7746754 true))

(assert (=> b!7746754 true))

(declare-fun b!7746753 () Bool)

(declare-fun res!3088714 () Bool)

(declare-fun e!4592767 () Bool)

(assert (=> b!7746753 (=> res!3088714 e!4592767)))

(declare-fun call!717976 () Bool)

(assert (=> b!7746753 (= res!3088714 call!717976)))

(declare-fun e!4592768 () Bool)

(assert (=> b!7746753 (= e!4592768 e!4592767)))

(declare-fun call!717977 () Bool)

(assert (=> b!7746754 (= e!4592768 call!717977)))

(declare-fun b!7746755 () Bool)

(declare-fun e!4592773 () Bool)

(declare-fun e!4592772 () Bool)

(assert (=> b!7746755 (= e!4592773 e!4592772)))

(declare-fun res!3088712 () Bool)

(assert (=> b!7746755 (= res!3088712 (not (is-EmptyLang!20588 (regTwo!41688 r!14126))))))

(assert (=> b!7746755 (=> (not res!3088712) (not e!4592772))))

(declare-fun d!2342246 () Bool)

(declare-fun c!1428875 () Bool)

(assert (=> d!2342246 (= c!1428875 (is-EmptyExpr!20588 (regTwo!41688 r!14126)))))

(assert (=> d!2342246 (= (matchRSpec!4653 (regTwo!41688 r!14126) (_2!38118 lt!2668676)) e!4592773)))

(declare-fun b!7746756 () Bool)

(declare-fun e!4592771 () Bool)

(assert (=> b!7746756 (= e!4592771 (matchRSpec!4653 (regTwo!41689 (regTwo!41688 r!14126)) (_2!38118 lt!2668676)))))

(declare-fun b!7746757 () Bool)

(assert (=> b!7746757 (= e!4592773 call!717976)))

(declare-fun b!7746758 () Bool)

(declare-fun e!4592770 () Bool)

(assert (=> b!7746758 (= e!4592770 e!4592768)))

(declare-fun c!1428874 () Bool)

(assert (=> b!7746758 (= c!1428874 (is-Star!20588 (regTwo!41688 r!14126)))))

(declare-fun bm!717971 () Bool)

(assert (=> bm!717971 (= call!717976 (isEmpty!42001 (_2!38118 lt!2668676)))))

(declare-fun bm!717972 () Bool)

(assert (=> bm!717972 (= call!717977 (Exists!4709 (ite c!1428874 lambda!471740 lambda!471742)))))

(declare-fun b!7746759 () Bool)

(declare-fun c!1428873 () Bool)

(assert (=> b!7746759 (= c!1428873 (is-Union!20588 (regTwo!41688 r!14126)))))

(declare-fun e!4592769 () Bool)

(assert (=> b!7746759 (= e!4592769 e!4592770)))

(assert (=> b!7746760 (= e!4592767 call!717977)))

(declare-fun b!7746761 () Bool)

(assert (=> b!7746761 (= e!4592770 e!4592771)))

(declare-fun res!3088713 () Bool)

(assert (=> b!7746761 (= res!3088713 (matchRSpec!4653 (regOne!41689 (regTwo!41688 r!14126)) (_2!38118 lt!2668676)))))

(assert (=> b!7746761 (=> res!3088713 e!4592771)))

(declare-fun b!7746762 () Bool)

(declare-fun c!1428876 () Bool)

(assert (=> b!7746762 (= c!1428876 (is-ElementMatch!20588 (regTwo!41688 r!14126)))))

(assert (=> b!7746762 (= e!4592772 e!4592769)))

(declare-fun b!7746763 () Bool)

(assert (=> b!7746763 (= e!4592769 (= (_2!38118 lt!2668676) (Cons!73311 (c!1428804 (regTwo!41688 r!14126)) Nil!73311)))))

(assert (= (and d!2342246 c!1428875) b!7746757))

(assert (= (and d!2342246 (not c!1428875)) b!7746755))

(assert (= (and b!7746755 res!3088712) b!7746762))

(assert (= (and b!7746762 c!1428876) b!7746763))

(assert (= (and b!7746762 (not c!1428876)) b!7746759))

(assert (= (and b!7746759 c!1428873) b!7746761))

(assert (= (and b!7746759 (not c!1428873)) b!7746758))

(assert (= (and b!7746761 (not res!3088713)) b!7746756))

(assert (= (and b!7746758 c!1428874) b!7746753))

(assert (= (and b!7746758 (not c!1428874)) b!7746754))

(assert (= (and b!7746753 (not res!3088714)) b!7746760))

(assert (= (or b!7746760 b!7746754) bm!717972))

(assert (= (or b!7746757 b!7746753) bm!717971))

(declare-fun m!8214444 () Bool)

(assert (=> b!7746756 m!8214444))

(assert (=> bm!717971 m!8214410))

(declare-fun m!8214446 () Bool)

(assert (=> bm!717972 m!8214446))

(declare-fun m!8214448 () Bool)

(assert (=> b!7746761 m!8214448))

(assert (=> b!7746369 d!2342246))

(declare-fun bs!1965535 () Bool)

(declare-fun b!7746775 () Bool)

(assert (= bs!1965535 (and b!7746775 b!7746374)))

(declare-fun lambda!471743 () Int)

(assert (=> bs!1965535 (not (= lambda!471743 lambda!471720))))

(declare-fun bs!1965536 () Bool)

(assert (= bs!1965536 (and b!7746775 b!7746379)))

(assert (=> bs!1965536 (not (= lambda!471743 lambda!471721))))

(declare-fun bs!1965537 () Bool)

(assert (= bs!1965537 (and b!7746775 b!7746754)))

(assert (=> bs!1965537 (not (= lambda!471743 lambda!471742))))

(declare-fun bs!1965538 () Bool)

(assert (= bs!1965538 (and b!7746775 b!7746760)))

(assert (=> bs!1965538 (= (and (= (_1!38118 lt!2668676) (_2!38118 lt!2668676)) (= (reg!20917 (regOne!41688 r!14126)) (reg!20917 (regTwo!41688 r!14126))) (= (regOne!41688 r!14126) (regTwo!41688 r!14126))) (= lambda!471743 lambda!471740))))

(declare-fun bs!1965539 () Bool)

(assert (= bs!1965539 (and b!7746775 d!2342222)))

(assert (=> bs!1965539 (not (= lambda!471743 lambda!471734))))

(assert (=> b!7746775 true))

(assert (=> b!7746775 true))

(declare-fun bs!1965540 () Bool)

(declare-fun b!7746769 () Bool)

(assert (= bs!1965540 (and b!7746769 b!7746374)))

(declare-fun lambda!471744 () Int)

(assert (=> bs!1965540 (not (= lambda!471744 lambda!471720))))

(declare-fun bs!1965541 () Bool)

(assert (= bs!1965541 (and b!7746769 b!7746775)))

(assert (=> bs!1965541 (not (= lambda!471744 lambda!471743))))

(declare-fun bs!1965542 () Bool)

(assert (= bs!1965542 (and b!7746769 b!7746379)))

(assert (=> bs!1965542 (= (and (= (_1!38118 lt!2668676) s!9605) (= (regOne!41688 (regOne!41688 r!14126)) (regOne!41688 r!14126)) (= (regTwo!41688 (regOne!41688 r!14126)) (regTwo!41688 r!14126))) (= lambda!471744 lambda!471721))))

(declare-fun bs!1965543 () Bool)

(assert (= bs!1965543 (and b!7746769 b!7746754)))

(assert (=> bs!1965543 (= (and (= (_1!38118 lt!2668676) (_2!38118 lt!2668676)) (= (regOne!41688 (regOne!41688 r!14126)) (regOne!41688 (regTwo!41688 r!14126))) (= (regTwo!41688 (regOne!41688 r!14126)) (regTwo!41688 (regTwo!41688 r!14126)))) (= lambda!471744 lambda!471742))))

(declare-fun bs!1965544 () Bool)

(assert (= bs!1965544 (and b!7746769 b!7746760)))

(assert (=> bs!1965544 (not (= lambda!471744 lambda!471740))))

(declare-fun bs!1965545 () Bool)

(assert (= bs!1965545 (and b!7746769 d!2342222)))

(assert (=> bs!1965545 (not (= lambda!471744 lambda!471734))))

(assert (=> b!7746769 true))

(assert (=> b!7746769 true))

(declare-fun b!7746768 () Bool)

(declare-fun res!3088721 () Bool)

(declare-fun e!4592776 () Bool)

(assert (=> b!7746768 (=> res!3088721 e!4592776)))

(declare-fun call!717978 () Bool)

(assert (=> b!7746768 (= res!3088721 call!717978)))

(declare-fun e!4592777 () Bool)

(assert (=> b!7746768 (= e!4592777 e!4592776)))

(declare-fun call!717979 () Bool)

(assert (=> b!7746769 (= e!4592777 call!717979)))

(declare-fun b!7746770 () Bool)

(declare-fun e!4592782 () Bool)

(declare-fun e!4592781 () Bool)

(assert (=> b!7746770 (= e!4592782 e!4592781)))

(declare-fun res!3088719 () Bool)

(assert (=> b!7746770 (= res!3088719 (not (is-EmptyLang!20588 (regOne!41688 r!14126))))))

(assert (=> b!7746770 (=> (not res!3088719) (not e!4592781))))

(declare-fun d!2342250 () Bool)

(declare-fun c!1428879 () Bool)

(assert (=> d!2342250 (= c!1428879 (is-EmptyExpr!20588 (regOne!41688 r!14126)))))

(assert (=> d!2342250 (= (matchRSpec!4653 (regOne!41688 r!14126) (_1!38118 lt!2668676)) e!4592782)))

(declare-fun b!7746771 () Bool)

(declare-fun e!4592780 () Bool)

(assert (=> b!7746771 (= e!4592780 (matchRSpec!4653 (regTwo!41689 (regOne!41688 r!14126)) (_1!38118 lt!2668676)))))

(declare-fun b!7746772 () Bool)

(assert (=> b!7746772 (= e!4592782 call!717978)))

(declare-fun b!7746773 () Bool)

(declare-fun e!4592779 () Bool)

(assert (=> b!7746773 (= e!4592779 e!4592777)))

(declare-fun c!1428878 () Bool)

(assert (=> b!7746773 (= c!1428878 (is-Star!20588 (regOne!41688 r!14126)))))

(declare-fun bm!717973 () Bool)

(assert (=> bm!717973 (= call!717978 (isEmpty!42001 (_1!38118 lt!2668676)))))

(declare-fun bm!717974 () Bool)

(assert (=> bm!717974 (= call!717979 (Exists!4709 (ite c!1428878 lambda!471743 lambda!471744)))))

(declare-fun b!7746774 () Bool)

(declare-fun c!1428877 () Bool)

(assert (=> b!7746774 (= c!1428877 (is-Union!20588 (regOne!41688 r!14126)))))

(declare-fun e!4592778 () Bool)

(assert (=> b!7746774 (= e!4592778 e!4592779)))

(assert (=> b!7746775 (= e!4592776 call!717979)))

(declare-fun b!7746776 () Bool)

(assert (=> b!7746776 (= e!4592779 e!4592780)))

(declare-fun res!3088720 () Bool)

(assert (=> b!7746776 (= res!3088720 (matchRSpec!4653 (regOne!41689 (regOne!41688 r!14126)) (_1!38118 lt!2668676)))))

(assert (=> b!7746776 (=> res!3088720 e!4592780)))

(declare-fun b!7746777 () Bool)

(declare-fun c!1428880 () Bool)

(assert (=> b!7746777 (= c!1428880 (is-ElementMatch!20588 (regOne!41688 r!14126)))))

(assert (=> b!7746777 (= e!4592781 e!4592778)))

(declare-fun b!7746778 () Bool)

(assert (=> b!7746778 (= e!4592778 (= (_1!38118 lt!2668676) (Cons!73311 (c!1428804 (regOne!41688 r!14126)) Nil!73311)))))

(assert (= (and d!2342250 c!1428879) b!7746772))

(assert (= (and d!2342250 (not c!1428879)) b!7746770))

(assert (= (and b!7746770 res!3088719) b!7746777))

(assert (= (and b!7746777 c!1428880) b!7746778))

(assert (= (and b!7746777 (not c!1428880)) b!7746774))

(assert (= (and b!7746774 c!1428877) b!7746776))

(assert (= (and b!7746774 (not c!1428877)) b!7746773))

(assert (= (and b!7746776 (not res!3088720)) b!7746771))

(assert (= (and b!7746773 c!1428878) b!7746768))

(assert (= (and b!7746773 (not c!1428878)) b!7746769))

(assert (= (and b!7746768 (not res!3088721)) b!7746775))

(assert (= (or b!7746775 b!7746769) bm!717974))

(assert (= (or b!7746772 b!7746768) bm!717973))

(declare-fun m!8214450 () Bool)

(assert (=> b!7746771 m!8214450))

(assert (=> bm!717973 m!8214400))

(declare-fun m!8214452 () Bool)

(assert (=> bm!717974 m!8214452))

(declare-fun m!8214454 () Bool)

(assert (=> b!7746776 m!8214454))

(assert (=> b!7746369 d!2342250))

(declare-fun d!2342252 () Bool)

(assert (=> d!2342252 (= (matchR!10080 (regTwo!41688 r!14126) (_2!38118 lt!2668676)) (matchRSpec!4653 (regTwo!41688 r!14126) (_2!38118 lt!2668676)))))

(declare-fun lt!2668750 () Unit!168276)

(assert (=> d!2342252 (= lt!2668750 (choose!59389 (regTwo!41688 r!14126) (_2!38118 lt!2668676)))))

(assert (=> d!2342252 (validRegex!11006 (regTwo!41688 r!14126))))

(assert (=> d!2342252 (= (mainMatchTheorem!4623 (regTwo!41688 r!14126) (_2!38118 lt!2668676)) lt!2668750)))

(declare-fun bs!1965546 () Bool)

(assert (= bs!1965546 d!2342252))

(assert (=> bs!1965546 m!8214204))

(assert (=> bs!1965546 m!8214200))

(declare-fun m!8214456 () Bool)

(assert (=> bs!1965546 m!8214456))

(assert (=> bs!1965546 m!8214180))

(assert (=> b!7746369 d!2342252))

(assert (=> b!7746365 d!2342228))

(declare-fun b!7746783 () Bool)

(declare-fun e!4592785 () Bool)

(declare-fun tp!2273004 () Bool)

(assert (=> b!7746783 (= e!4592785 (and tp_is_empty!51531 tp!2273004))))

(assert (=> b!7746371 (= tp!2272979 e!4592785)))

(assert (= (and b!7746371 (is-Cons!73311 (t!388170 s!9605))) b!7746783))

(declare-fun b!7746795 () Bool)

(declare-fun e!4592788 () Bool)

(declare-fun tp!2273017 () Bool)

(declare-fun tp!2273019 () Bool)

(assert (=> b!7746795 (= e!4592788 (and tp!2273017 tp!2273019))))

(declare-fun b!7746796 () Bool)

(declare-fun tp!2273015 () Bool)

(assert (=> b!7746796 (= e!4592788 tp!2273015)))

(declare-fun b!7746797 () Bool)

(declare-fun tp!2273018 () Bool)

(declare-fun tp!2273016 () Bool)

(assert (=> b!7746797 (= e!4592788 (and tp!2273018 tp!2273016))))

(declare-fun b!7746794 () Bool)

(assert (=> b!7746794 (= e!4592788 tp_is_empty!51531)))

(assert (=> b!7746373 (= tp!2272978 e!4592788)))

(assert (= (and b!7746373 (is-ElementMatch!20588 (regOne!41688 r!14126))) b!7746794))

(assert (= (and b!7746373 (is-Concat!29433 (regOne!41688 r!14126))) b!7746795))

(assert (= (and b!7746373 (is-Star!20588 (regOne!41688 r!14126))) b!7746796))

(assert (= (and b!7746373 (is-Union!20588 (regOne!41688 r!14126))) b!7746797))

(declare-fun b!7746799 () Bool)

(declare-fun e!4592789 () Bool)

(declare-fun tp!2273022 () Bool)

(declare-fun tp!2273024 () Bool)

(assert (=> b!7746799 (= e!4592789 (and tp!2273022 tp!2273024))))

(declare-fun b!7746800 () Bool)

(declare-fun tp!2273020 () Bool)

(assert (=> b!7746800 (= e!4592789 tp!2273020)))

(declare-fun b!7746801 () Bool)

(declare-fun tp!2273023 () Bool)

(declare-fun tp!2273021 () Bool)

(assert (=> b!7746801 (= e!4592789 (and tp!2273023 tp!2273021))))

(declare-fun b!7746798 () Bool)

(assert (=> b!7746798 (= e!4592789 tp_is_empty!51531)))

(assert (=> b!7746373 (= tp!2272981 e!4592789)))

(assert (= (and b!7746373 (is-ElementMatch!20588 (regTwo!41688 r!14126))) b!7746798))

(assert (= (and b!7746373 (is-Concat!29433 (regTwo!41688 r!14126))) b!7746799))

(assert (= (and b!7746373 (is-Star!20588 (regTwo!41688 r!14126))) b!7746800))

(assert (= (and b!7746373 (is-Union!20588 (regTwo!41688 r!14126))) b!7746801))

(declare-fun b!7746803 () Bool)

(declare-fun e!4592790 () Bool)

(declare-fun tp!2273027 () Bool)

(declare-fun tp!2273029 () Bool)

(assert (=> b!7746803 (= e!4592790 (and tp!2273027 tp!2273029))))

(declare-fun b!7746804 () Bool)

(declare-fun tp!2273025 () Bool)

(assert (=> b!7746804 (= e!4592790 tp!2273025)))

(declare-fun b!7746805 () Bool)

(declare-fun tp!2273028 () Bool)

(declare-fun tp!2273026 () Bool)

(assert (=> b!7746805 (= e!4592790 (and tp!2273028 tp!2273026))))

(declare-fun b!7746802 () Bool)

(assert (=> b!7746802 (= e!4592790 tp_is_empty!51531)))

(assert (=> b!7746370 (= tp!2272983 e!4592790)))

(assert (= (and b!7746370 (is-ElementMatch!20588 (reg!20917 r!14126))) b!7746802))

(assert (= (and b!7746370 (is-Concat!29433 (reg!20917 r!14126))) b!7746803))

(assert (= (and b!7746370 (is-Star!20588 (reg!20917 r!14126))) b!7746804))

(assert (= (and b!7746370 (is-Union!20588 (reg!20917 r!14126))) b!7746805))

(declare-fun b!7746807 () Bool)

(declare-fun e!4592791 () Bool)

(declare-fun tp!2273032 () Bool)

(declare-fun tp!2273034 () Bool)

(assert (=> b!7746807 (= e!4592791 (and tp!2273032 tp!2273034))))

(declare-fun b!7746808 () Bool)

(declare-fun tp!2273030 () Bool)

(assert (=> b!7746808 (= e!4592791 tp!2273030)))

(declare-fun b!7746809 () Bool)

(declare-fun tp!2273033 () Bool)

(declare-fun tp!2273031 () Bool)

(assert (=> b!7746809 (= e!4592791 (and tp!2273033 tp!2273031))))

(declare-fun b!7746806 () Bool)

(assert (=> b!7746806 (= e!4592791 tp_is_empty!51531)))

(assert (=> b!7746375 (= tp!2272982 e!4592791)))

(assert (= (and b!7746375 (is-ElementMatch!20588 (regOne!41689 r!14126))) b!7746806))

(assert (= (and b!7746375 (is-Concat!29433 (regOne!41689 r!14126))) b!7746807))

(assert (= (and b!7746375 (is-Star!20588 (regOne!41689 r!14126))) b!7746808))

(assert (= (and b!7746375 (is-Union!20588 (regOne!41689 r!14126))) b!7746809))

(declare-fun b!7746811 () Bool)

(declare-fun e!4592792 () Bool)

(declare-fun tp!2273037 () Bool)

(declare-fun tp!2273039 () Bool)

(assert (=> b!7746811 (= e!4592792 (and tp!2273037 tp!2273039))))

(declare-fun b!7746812 () Bool)

(declare-fun tp!2273035 () Bool)

(assert (=> b!7746812 (= e!4592792 tp!2273035)))

(declare-fun b!7746813 () Bool)

(declare-fun tp!2273038 () Bool)

(declare-fun tp!2273036 () Bool)

(assert (=> b!7746813 (= e!4592792 (and tp!2273038 tp!2273036))))

(declare-fun b!7746810 () Bool)

(assert (=> b!7746810 (= e!4592792 tp_is_empty!51531)))

(assert (=> b!7746375 (= tp!2272980 e!4592792)))

(assert (= (and b!7746375 (is-ElementMatch!20588 (regTwo!41689 r!14126))) b!7746810))

(assert (= (and b!7746375 (is-Concat!29433 (regTwo!41689 r!14126))) b!7746811))

(assert (= (and b!7746375 (is-Star!20588 (regTwo!41689 r!14126))) b!7746812))

(assert (= (and b!7746375 (is-Union!20588 (regTwo!41689 r!14126))) b!7746813))

(declare-fun b_lambda!289405 () Bool)

(assert (= b_lambda!289403 (or b!7746379 b_lambda!289405)))

(declare-fun bs!1965550 () Bool)

(declare-fun d!2342256 () Bool)

(assert (= bs!1965550 (and d!2342256 b!7746379)))

(declare-fun res!3088722 () Bool)

(declare-fun e!4592793 () Bool)

(assert (=> bs!1965550 (=> (not res!3088722) (not e!4592793))))

(assert (=> bs!1965550 (= res!3088722 (= (++!17787 (_1!38118 lt!2668743) (_2!38118 lt!2668743)) s!9605))))

(assert (=> bs!1965550 (= (dynLambda!29980 lambda!471721 lt!2668743) e!4592793)))

(declare-fun b!7746814 () Bool)

(declare-fun res!3088723 () Bool)

(assert (=> b!7746814 (=> (not res!3088723) (not e!4592793))))

(assert (=> b!7746814 (= res!3088723 (matchRSpec!4653 (regOne!41688 r!14126) (_1!38118 lt!2668743)))))

(declare-fun b!7746815 () Bool)

(assert (=> b!7746815 (= e!4592793 (matchRSpec!4653 (regTwo!41688 r!14126) (_2!38118 lt!2668743)))))

(assert (= (and bs!1965550 res!3088722) b!7746814))

(assert (= (and b!7746814 res!3088723) b!7746815))

(declare-fun m!8214466 () Bool)

(assert (=> bs!1965550 m!8214466))

(declare-fun m!8214468 () Bool)

(assert (=> b!7746814 m!8214468))

(declare-fun m!8214470 () Bool)

(assert (=> b!7746815 m!8214470))

(assert (=> d!2342238 d!2342256))

(push 1)

(assert (not b!7746815))

(assert (not b!7746801))

(assert (not b!7746814))

(assert (not b!7746678))

(assert (not b!7746796))

(assert (not b!7746800))

(assert (not b!7746569))

(assert (not bm!717974))

(assert (not d!2342252))

(assert (not bm!717948))

(assert (not b!7746672))

(assert (not b!7746797))

(assert (not b!7746571))

(assert (not b!7746556))

(assert (not b!7746555))

(assert (not d!2342214))

(assert (not b!7746795))

(assert (not bs!1965550))

(assert (not b!7746809))

(assert (not b!7746670))

(assert (not b!7746807))

(assert (not b!7746783))

(assert (not d!2342218))

(assert (not b_lambda!289405))

(assert (not b!7746522))

(assert tp_is_empty!51531)

(assert (not b!7746629))

(assert (not b!7746479))

(assert (not bm!717962))

(assert (not b!7746689))

(assert (not b!7746624))

(assert (not b!7746533))

(assert (not b!7746667))

(assert (not d!2342222))

(assert (not b!7746535))

(assert (not b!7746683))

(assert (not b!7746668))

(assert (not b!7746560))

(assert (not b!7746622))

(assert (not b!7746811))

(assert (not b!7746812))

(assert (not d!2342232))

(assert (not b!7746776))

(assert (not b!7746558))

(assert (not b!7746627))

(assert (not b!7746808))

(assert (not b!7746761))

(assert (not b!7746563))

(assert (not b!7746675))

(assert (not b!7746566))

(assert (not b!7746692))

(assert (not b!7746686))

(assert (not bm!717945))

(assert (not b!7746551))

(assert (not b!7746695))

(assert (not bm!717971))

(assert (not b!7746681))

(assert (not d!2342240))

(assert (not bm!717966))

(assert (not b!7746623))

(assert (not bm!717972))

(assert (not d!2342210))

(assert (not d!2342208))

(assert (not bm!717942))

(assert (not b!7746669))

(assert (not d!2342220))

(assert (not d!2342224))

(assert (not b!7746805))

(assert (not b!7746470))

(assert (not d!2342238))

(assert (not bm!717973))

(assert (not d!2342228))

(assert (not b!7746771))

(assert (not b!7746527))

(assert (not d!2342236))

(assert (not bm!717961))

(assert (not b!7746813))

(assert (not bm!717949))

(assert (not b!7746530))

(assert (not bm!717944))

(assert (not b!7746803))

(assert (not b!7746626))

(assert (not b!7746684))

(assert (not b!7746804))

(assert (not b!7746552))

(assert (not b!7746697))

(assert (not b!7746712))

(assert (not bm!717941))

(assert (not bm!717965))

(assert (not b!7746799))

(assert (not b!7746524))

(assert (not d!2342242))

(assert (not b!7746756))

(assert (not d!2342230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

