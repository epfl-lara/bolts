; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81416 () Bool)

(assert start!81416)

(declare-fun b!905277 () Bool)

(assert (=> b!905277 true))

(assert (=> b!905277 true))

(declare-fun lambda!28522 () Int)

(declare-fun lambda!28521 () Int)

(assert (=> b!905277 (not (= lambda!28522 lambda!28521))))

(assert (=> b!905277 true))

(assert (=> b!905277 true))

(declare-fun b!905272 () Bool)

(declare-fun res!411646 () Bool)

(declare-fun e!591289 () Bool)

(assert (=> b!905272 (=> res!411646 e!591289)))

(declare-datatypes ((C!5358 0))(
  ( (C!5359 (val!2927 Int)) )
))
(declare-datatypes ((List!9624 0))(
  ( (Nil!9608) (Cons!9608 (h!15009 C!5358) (t!100670 List!9624)) )
))
(declare-datatypes ((tuple2!10782 0))(
  ( (tuple2!10783 (_1!6217 List!9624) (_2!6217 List!9624)) )
))
(declare-datatypes ((Option!2033 0))(
  ( (None!2032) (Some!2032 (v!19449 tuple2!10782)) )
))
(declare-fun lt!335527 () Option!2033)

(declare-fun isEmpty!5810 (Option!2033) Bool)

(assert (=> b!905272 (= res!411646 (not (isEmpty!5810 lt!335527)))))

(declare-fun b!905273 () Bool)

(declare-fun e!591290 () Bool)

(declare-fun e!591288 () Bool)

(assert (=> b!905273 (= e!591290 (not e!591288))))

(declare-fun res!411645 () Bool)

(assert (=> b!905273 (=> res!411645 e!591288)))

(declare-fun lt!335530 () Bool)

(declare-datatypes ((Regex!2394 0))(
  ( (ElementMatch!2394 (c!146627 C!5358)) (Concat!4227 (regOne!5300 Regex!2394) (regTwo!5300 Regex!2394)) (EmptyExpr!2394) (Star!2394 (reg!2723 Regex!2394)) (EmptyLang!2394) (Union!2394 (regOne!5301 Regex!2394) (regTwo!5301 Regex!2394)) )
))
(declare-fun r!15766 () Regex!2394)

(assert (=> b!905273 (= res!411645 (or lt!335530 (not (is-Concat!4227 r!15766)) (not (is-EmptyExpr!2394 (regOne!5300 r!15766)))))))

(declare-fun s!10566 () List!9624)

(declare-fun matchRSpec!195 (Regex!2394 List!9624) Bool)

(assert (=> b!905273 (= lt!335530 (matchRSpec!195 r!15766 s!10566))))

(declare-fun matchR!932 (Regex!2394 List!9624) Bool)

(assert (=> b!905273 (= lt!335530 (matchR!932 r!15766 s!10566))))

(declare-datatypes ((Unit!14407 0))(
  ( (Unit!14408) )
))
(declare-fun lt!335529 () Unit!14407)

(declare-fun mainMatchTheorem!195 (Regex!2394 List!9624) Unit!14407)

(assert (=> b!905273 (= lt!335529 (mainMatchTheorem!195 r!15766 s!10566))))

(declare-fun b!905274 () Bool)

(declare-fun e!591287 () Bool)

(declare-fun tp_is_empty!4431 () Bool)

(declare-fun tp!283579 () Bool)

(assert (=> b!905274 (= e!591287 (and tp_is_empty!4431 tp!283579))))

(declare-fun b!905275 () Bool)

(declare-fun e!591286 () Bool)

(assert (=> b!905275 (= e!591286 tp_is_empty!4431)))

(declare-fun b!905276 () Bool)

(declare-fun validRegex!863 (Regex!2394) Bool)

(assert (=> b!905276 (= e!591289 (validRegex!863 (regTwo!5300 r!15766)))))

(declare-fun removeUselessConcat!93 (Regex!2394) Regex!2394)

(assert (=> b!905276 (= (matchR!932 (regTwo!5300 r!15766) s!10566) (matchR!932 (removeUselessConcat!93 (regTwo!5300 r!15766)) s!10566))))

(declare-fun lt!335528 () Unit!14407)

(declare-fun lemmaRemoveUselessConcatSound!81 (Regex!2394 List!9624) Unit!14407)

(assert (=> b!905276 (= lt!335528 (lemmaRemoveUselessConcatSound!81 (regTwo!5300 r!15766) s!10566))))

(assert (=> b!905277 (= e!591288 e!591289)))

(declare-fun res!411644 () Bool)

(assert (=> b!905277 (=> res!411644 e!591289)))

(declare-fun isEmpty!5811 (List!9624) Bool)

(assert (=> b!905277 (= res!411644 (isEmpty!5811 s!10566))))

(declare-fun Exists!169 (Int) Bool)

(assert (=> b!905277 (= (Exists!169 lambda!28521) (Exists!169 lambda!28522))))

(declare-fun lt!335531 () Unit!14407)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!85 (Regex!2394 Regex!2394 List!9624) Unit!14407)

(assert (=> b!905277 (= lt!335531 (lemmaExistCutMatchRandMatchRSpecEquivalent!85 EmptyExpr!2394 (regTwo!5300 r!15766) s!10566))))

(declare-fun isDefined!1675 (Option!2033) Bool)

(assert (=> b!905277 (= (isDefined!1675 lt!335527) (Exists!169 lambda!28521))))

(declare-fun findConcatSeparation!139 (Regex!2394 Regex!2394 List!9624 List!9624 List!9624) Option!2033)

(assert (=> b!905277 (= lt!335527 (findConcatSeparation!139 EmptyExpr!2394 (regTwo!5300 r!15766) Nil!9608 s!10566 s!10566))))

(declare-fun lt!335526 () Unit!14407)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!139 (Regex!2394 Regex!2394 List!9624) Unit!14407)

(assert (=> b!905277 (= lt!335526 (lemmaFindConcatSeparationEquivalentToExists!139 EmptyExpr!2394 (regTwo!5300 r!15766) s!10566))))

(declare-fun res!411643 () Bool)

(assert (=> start!81416 (=> (not res!411643) (not e!591290))))

(assert (=> start!81416 (= res!411643 (validRegex!863 r!15766))))

(assert (=> start!81416 e!591290))

(assert (=> start!81416 e!591286))

(assert (=> start!81416 e!591287))

(declare-fun b!905278 () Bool)

(declare-fun tp!283581 () Bool)

(assert (=> b!905278 (= e!591286 tp!283581)))

(declare-fun b!905279 () Bool)

(declare-fun tp!283578 () Bool)

(declare-fun tp!283580 () Bool)

(assert (=> b!905279 (= e!591286 (and tp!283578 tp!283580))))

(declare-fun b!905280 () Bool)

(declare-fun tp!283582 () Bool)

(declare-fun tp!283577 () Bool)

(assert (=> b!905280 (= e!591286 (and tp!283582 tp!283577))))

(assert (= (and start!81416 res!411643) b!905273))

(assert (= (and b!905273 (not res!411645)) b!905277))

(assert (= (and b!905277 (not res!411644)) b!905272))

(assert (= (and b!905272 (not res!411646)) b!905276))

(assert (= (and start!81416 (is-ElementMatch!2394 r!15766)) b!905275))

(assert (= (and start!81416 (is-Concat!4227 r!15766)) b!905280))

(assert (= (and start!81416 (is-Star!2394 r!15766)) b!905278))

(assert (= (and start!81416 (is-Union!2394 r!15766)) b!905279))

(assert (= (and start!81416 (is-Cons!9608 s!10566)) b!905274))

(declare-fun m!1140677 () Bool)

(assert (=> b!905277 m!1140677))

(declare-fun m!1140679 () Bool)

(assert (=> b!905277 m!1140679))

(declare-fun m!1140681 () Bool)

(assert (=> b!905277 m!1140681))

(declare-fun m!1140683 () Bool)

(assert (=> b!905277 m!1140683))

(assert (=> b!905277 m!1140681))

(declare-fun m!1140685 () Bool)

(assert (=> b!905277 m!1140685))

(declare-fun m!1140687 () Bool)

(assert (=> b!905277 m!1140687))

(declare-fun m!1140689 () Bool)

(assert (=> b!905277 m!1140689))

(declare-fun m!1140691 () Bool)

(assert (=> b!905276 m!1140691))

(declare-fun m!1140693 () Bool)

(assert (=> b!905276 m!1140693))

(declare-fun m!1140695 () Bool)

(assert (=> b!905276 m!1140695))

(assert (=> b!905276 m!1140691))

(declare-fun m!1140697 () Bool)

(assert (=> b!905276 m!1140697))

(declare-fun m!1140699 () Bool)

(assert (=> b!905276 m!1140699))

(declare-fun m!1140701 () Bool)

(assert (=> start!81416 m!1140701))

(declare-fun m!1140703 () Bool)

(assert (=> b!905273 m!1140703))

(declare-fun m!1140705 () Bool)

(assert (=> b!905273 m!1140705))

(declare-fun m!1140707 () Bool)

(assert (=> b!905273 m!1140707))

(declare-fun m!1140709 () Bool)

(assert (=> b!905272 m!1140709))

(push 1)

(assert (not b!905273))

(assert (not b!905272))

(assert (not b!905274))

(assert (not b!905280))

(assert (not b!905276))

(assert (not start!81416))

(assert tp_is_empty!4431)

(assert (not b!905277))

(assert (not b!905278))

(assert (not b!905279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!278737 () Bool)

(assert (=> d!278737 (= (isEmpty!5810 lt!335527) (not (is-Some!2032 lt!335527)))))

(assert (=> b!905272 d!278737))

(declare-fun b!905346 () Bool)

(declare-fun e!591327 () Bool)

(declare-fun e!591326 () Bool)

(assert (=> b!905346 (= e!591327 e!591326)))

(declare-fun c!146634 () Bool)

(assert (=> b!905346 (= c!146634 (is-Star!2394 r!15766))))

(declare-fun bm!54143 () Bool)

(declare-fun call!54148 () Bool)

(declare-fun call!54149 () Bool)

(assert (=> bm!54143 (= call!54148 call!54149)))

(declare-fun b!905347 () Bool)

(declare-fun e!591330 () Bool)

(assert (=> b!905347 (= e!591326 e!591330)))

(declare-fun c!146633 () Bool)

(assert (=> b!905347 (= c!146633 (is-Union!2394 r!15766))))

(declare-fun b!905348 () Bool)

(declare-fun res!411685 () Bool)

(declare-fun e!591331 () Bool)

(assert (=> b!905348 (=> res!411685 e!591331)))

(assert (=> b!905348 (= res!411685 (not (is-Concat!4227 r!15766)))))

(assert (=> b!905348 (= e!591330 e!591331)))

(declare-fun b!905350 () Bool)

(declare-fun res!411684 () Bool)

(declare-fun e!591329 () Bool)

(assert (=> b!905350 (=> (not res!411684) (not e!591329))))

(assert (=> b!905350 (= res!411684 call!54148)))

(assert (=> b!905350 (= e!591330 e!591329)))

(declare-fun b!905351 () Bool)

(declare-fun e!591332 () Bool)

(assert (=> b!905351 (= e!591332 call!54149)))

(declare-fun b!905352 () Bool)

(declare-fun e!591328 () Bool)

(declare-fun call!54150 () Bool)

(assert (=> b!905352 (= e!591328 call!54150)))

(declare-fun b!905353 () Bool)

(assert (=> b!905353 (= e!591329 call!54150)))

(declare-fun b!905354 () Bool)

(assert (=> b!905354 (= e!591331 e!591328)))

(declare-fun res!411681 () Bool)

(assert (=> b!905354 (=> (not res!411681) (not e!591328))))

(assert (=> b!905354 (= res!411681 call!54148)))

(declare-fun bm!54144 () Bool)

(assert (=> bm!54144 (= call!54150 (validRegex!863 (ite c!146633 (regTwo!5301 r!15766) (regTwo!5300 r!15766))))))

(declare-fun bm!54145 () Bool)

(assert (=> bm!54145 (= call!54149 (validRegex!863 (ite c!146634 (reg!2723 r!15766) (ite c!146633 (regOne!5301 r!15766) (regOne!5300 r!15766)))))))

(declare-fun d!278739 () Bool)

(declare-fun res!411682 () Bool)

(assert (=> d!278739 (=> res!411682 e!591327)))

(assert (=> d!278739 (= res!411682 (is-ElementMatch!2394 r!15766))))

(assert (=> d!278739 (= (validRegex!863 r!15766) e!591327)))

(declare-fun b!905349 () Bool)

(assert (=> b!905349 (= e!591326 e!591332)))

(declare-fun res!411683 () Bool)

(declare-fun nullable!642 (Regex!2394) Bool)

(assert (=> b!905349 (= res!411683 (not (nullable!642 (reg!2723 r!15766))))))

(assert (=> b!905349 (=> (not res!411683) (not e!591332))))

(assert (= (and d!278739 (not res!411682)) b!905346))

(assert (= (and b!905346 c!146634) b!905349))

(assert (= (and b!905346 (not c!146634)) b!905347))

(assert (= (and b!905349 res!411683) b!905351))

(assert (= (and b!905347 c!146633) b!905350))

(assert (= (and b!905347 (not c!146633)) b!905348))

(assert (= (and b!905350 res!411684) b!905353))

(assert (= (and b!905348 (not res!411685)) b!905354))

(assert (= (and b!905354 res!411681) b!905352))

(assert (= (or b!905353 b!905352) bm!54144))

(assert (= (or b!905350 b!905354) bm!54143))

(assert (= (or b!905351 bm!54143) bm!54145))

(declare-fun m!1140745 () Bool)

(assert (=> bm!54144 m!1140745))

(declare-fun m!1140747 () Bool)

(assert (=> bm!54145 m!1140747))

(declare-fun m!1140749 () Bool)

(assert (=> b!905349 m!1140749))

(assert (=> start!81416 d!278739))

(declare-fun b!905391 () Bool)

(declare-fun e!591360 () Option!2033)

(assert (=> b!905391 (= e!591360 (Some!2032 (tuple2!10783 Nil!9608 s!10566)))))

(declare-fun b!905392 () Bool)

(declare-fun e!591357 () Option!2033)

(assert (=> b!905392 (= e!591360 e!591357)))

(declare-fun c!146644 () Bool)

(assert (=> b!905392 (= c!146644 (is-Nil!9608 s!10566))))

(declare-fun d!278741 () Bool)

(declare-fun e!591361 () Bool)

(assert (=> d!278741 e!591361))

(declare-fun res!411707 () Bool)

(assert (=> d!278741 (=> res!411707 e!591361)))

(declare-fun e!591358 () Bool)

(assert (=> d!278741 (= res!411707 e!591358)))

(declare-fun res!411706 () Bool)

(assert (=> d!278741 (=> (not res!411706) (not e!591358))))

(declare-fun lt!335556 () Option!2033)

(assert (=> d!278741 (= res!411706 (isDefined!1675 lt!335556))))

(assert (=> d!278741 (= lt!335556 e!591360)))

(declare-fun c!146643 () Bool)

(declare-fun e!591359 () Bool)

(assert (=> d!278741 (= c!146643 e!591359)))

(declare-fun res!411709 () Bool)

(assert (=> d!278741 (=> (not res!411709) (not e!591359))))

(assert (=> d!278741 (= res!411709 (matchR!932 EmptyExpr!2394 Nil!9608))))

(assert (=> d!278741 (validRegex!863 EmptyExpr!2394)))

(assert (=> d!278741 (= (findConcatSeparation!139 EmptyExpr!2394 (regTwo!5300 r!15766) Nil!9608 s!10566 s!10566) lt!335556)))

(declare-fun b!905393 () Bool)

(assert (=> b!905393 (= e!591359 (matchR!932 (regTwo!5300 r!15766) s!10566))))

(declare-fun b!905394 () Bool)

(assert (=> b!905394 (= e!591361 (not (isDefined!1675 lt!335556)))))

(declare-fun b!905395 () Bool)

(assert (=> b!905395 (= e!591357 None!2032)))

(declare-fun b!905396 () Bool)

(declare-fun res!411710 () Bool)

(assert (=> b!905396 (=> (not res!411710) (not e!591358))))

(declare-fun get!3076 (Option!2033) tuple2!10782)

(assert (=> b!905396 (= res!411710 (matchR!932 (regTwo!5300 r!15766) (_2!6217 (get!3076 lt!335556))))))

(declare-fun b!905397 () Bool)

(declare-fun lt!335557 () Unit!14407)

(declare-fun lt!335558 () Unit!14407)

(assert (=> b!905397 (= lt!335557 lt!335558)))

(declare-fun ++!2519 (List!9624 List!9624) List!9624)

(assert (=> b!905397 (= (++!2519 (++!2519 Nil!9608 (Cons!9608 (h!15009 s!10566) Nil!9608)) (t!100670 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!138 (List!9624 C!5358 List!9624 List!9624) Unit!14407)

(assert (=> b!905397 (= lt!335558 (lemmaMoveElementToOtherListKeepsConcatEq!138 Nil!9608 (h!15009 s!10566) (t!100670 s!10566) s!10566))))

(assert (=> b!905397 (= e!591357 (findConcatSeparation!139 EmptyExpr!2394 (regTwo!5300 r!15766) (++!2519 Nil!9608 (Cons!9608 (h!15009 s!10566) Nil!9608)) (t!100670 s!10566) s!10566))))

(declare-fun b!905398 () Bool)

(assert (=> b!905398 (= e!591358 (= (++!2519 (_1!6217 (get!3076 lt!335556)) (_2!6217 (get!3076 lt!335556))) s!10566))))

(declare-fun b!905399 () Bool)

(declare-fun res!411708 () Bool)

(assert (=> b!905399 (=> (not res!411708) (not e!591358))))

(assert (=> b!905399 (= res!411708 (matchR!932 EmptyExpr!2394 (_1!6217 (get!3076 lt!335556))))))

(assert (= (and d!278741 res!411709) b!905393))

(assert (= (and d!278741 c!146643) b!905391))

(assert (= (and d!278741 (not c!146643)) b!905392))

(assert (= (and b!905392 c!146644) b!905395))

(assert (= (and b!905392 (not c!146644)) b!905397))

(assert (= (and d!278741 res!411706) b!905399))

(assert (= (and b!905399 res!411708) b!905396))

(assert (= (and b!905396 res!411710) b!905398))

(assert (= (and d!278741 (not res!411707)) b!905394))

(declare-fun m!1140751 () Bool)

(assert (=> b!905399 m!1140751))

(declare-fun m!1140753 () Bool)

(assert (=> b!905399 m!1140753))

(declare-fun m!1140755 () Bool)

(assert (=> d!278741 m!1140755))

(declare-fun m!1140757 () Bool)

(assert (=> d!278741 m!1140757))

(declare-fun m!1140759 () Bool)

(assert (=> d!278741 m!1140759))

(assert (=> b!905396 m!1140751))

(declare-fun m!1140761 () Bool)

(assert (=> b!905396 m!1140761))

(declare-fun m!1140763 () Bool)

(assert (=> b!905397 m!1140763))

(assert (=> b!905397 m!1140763))

(declare-fun m!1140765 () Bool)

(assert (=> b!905397 m!1140765))

(declare-fun m!1140767 () Bool)

(assert (=> b!905397 m!1140767))

(assert (=> b!905397 m!1140763))

(declare-fun m!1140769 () Bool)

(assert (=> b!905397 m!1140769))

(assert (=> b!905398 m!1140751))

(declare-fun m!1140771 () Bool)

(assert (=> b!905398 m!1140771))

(assert (=> b!905393 m!1140697))

(assert (=> b!905394 m!1140755))

(assert (=> b!905277 d!278741))

(declare-fun bs!235438 () Bool)

(declare-fun d!278745 () Bool)

(assert (= bs!235438 (and d!278745 b!905277)))

(declare-fun lambda!28533 () Int)

(assert (=> bs!235438 (= lambda!28533 lambda!28521)))

(assert (=> bs!235438 (not (= lambda!28533 lambda!28522))))

(assert (=> d!278745 true))

(assert (=> d!278745 true))

(assert (=> d!278745 true))

(assert (=> d!278745 (= (isDefined!1675 (findConcatSeparation!139 EmptyExpr!2394 (regTwo!5300 r!15766) Nil!9608 s!10566 s!10566)) (Exists!169 lambda!28533))))

(declare-fun lt!335561 () Unit!14407)

(declare-fun choose!5474 (Regex!2394 Regex!2394 List!9624) Unit!14407)

(assert (=> d!278745 (= lt!335561 (choose!5474 EmptyExpr!2394 (regTwo!5300 r!15766) s!10566))))

(assert (=> d!278745 (validRegex!863 EmptyExpr!2394)))

(assert (=> d!278745 (= (lemmaFindConcatSeparationEquivalentToExists!139 EmptyExpr!2394 (regTwo!5300 r!15766) s!10566) lt!335561)))

(declare-fun bs!235439 () Bool)

(assert (= bs!235439 d!278745))

(declare-fun m!1140779 () Bool)

(assert (=> bs!235439 m!1140779))

(assert (=> bs!235439 m!1140685))

(assert (=> bs!235439 m!1140759))

(declare-fun m!1140781 () Bool)

(assert (=> bs!235439 m!1140781))

(assert (=> bs!235439 m!1140685))

(declare-fun m!1140783 () Bool)

(assert (=> bs!235439 m!1140783))

(assert (=> b!905277 d!278745))

(declare-fun bs!235441 () Bool)

(declare-fun d!278749 () Bool)

(assert (= bs!235441 (and d!278749 b!905277)))

(declare-fun lambda!28538 () Int)

(assert (=> bs!235441 (= lambda!28538 lambda!28521)))

(assert (=> bs!235441 (not (= lambda!28538 lambda!28522))))

(declare-fun bs!235442 () Bool)

(assert (= bs!235442 (and d!278749 d!278745)))

(assert (=> bs!235442 (= lambda!28538 lambda!28533)))

(assert (=> d!278749 true))

(assert (=> d!278749 true))

(assert (=> d!278749 true))

(declare-fun lambda!28539 () Int)

(assert (=> bs!235441 (not (= lambda!28539 lambda!28521))))

(assert (=> bs!235441 (= lambda!28539 lambda!28522)))

(assert (=> bs!235442 (not (= lambda!28539 lambda!28533))))

(declare-fun bs!235443 () Bool)

(assert (= bs!235443 d!278749))

(assert (=> bs!235443 (not (= lambda!28539 lambda!28538))))

(assert (=> d!278749 true))

(assert (=> d!278749 true))

(assert (=> d!278749 true))

(assert (=> d!278749 (= (Exists!169 lambda!28538) (Exists!169 lambda!28539))))

(declare-fun lt!335564 () Unit!14407)

(declare-fun choose!5475 (Regex!2394 Regex!2394 List!9624) Unit!14407)

(assert (=> d!278749 (= lt!335564 (choose!5475 EmptyExpr!2394 (regTwo!5300 r!15766) s!10566))))

(assert (=> d!278749 (validRegex!863 EmptyExpr!2394)))

(assert (=> d!278749 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!85 EmptyExpr!2394 (regTwo!5300 r!15766) s!10566) lt!335564)))

(declare-fun m!1140785 () Bool)

(assert (=> bs!235443 m!1140785))

(declare-fun m!1140787 () Bool)

(assert (=> bs!235443 m!1140787))

(declare-fun m!1140789 () Bool)

(assert (=> bs!235443 m!1140789))

(assert (=> bs!235443 m!1140759))

(assert (=> b!905277 d!278749))

(declare-fun d!278755 () Bool)

(assert (=> d!278755 (= (isDefined!1675 lt!335527) (not (isEmpty!5810 lt!335527)))))

(declare-fun bs!235444 () Bool)

(assert (= bs!235444 d!278755))

(assert (=> bs!235444 m!1140709))

(assert (=> b!905277 d!278755))

(declare-fun d!278757 () Bool)

(declare-fun choose!5476 (Int) Bool)

(assert (=> d!278757 (= (Exists!169 lambda!28521) (choose!5476 lambda!28521))))

(declare-fun bs!235445 () Bool)

(assert (= bs!235445 d!278757))

(declare-fun m!1140791 () Bool)

(assert (=> bs!235445 m!1140791))

(assert (=> b!905277 d!278757))

(declare-fun d!278759 () Bool)

(assert (=> d!278759 (= (isEmpty!5811 s!10566) (is-Nil!9608 s!10566))))

(assert (=> b!905277 d!278759))

(declare-fun d!278761 () Bool)

(assert (=> d!278761 (= (Exists!169 lambda!28522) (choose!5476 lambda!28522))))

(declare-fun bs!235446 () Bool)

(assert (= bs!235446 d!278761))

(declare-fun m!1140793 () Bool)

(assert (=> bs!235446 m!1140793))

(assert (=> b!905277 d!278761))

(declare-fun bs!235447 () Bool)

(declare-fun b!905472 () Bool)

(assert (= bs!235447 (and b!905472 d!278749)))

(declare-fun lambda!28544 () Int)

(assert (=> bs!235447 (not (= lambda!28544 lambda!28538))))

(assert (=> bs!235447 (not (= lambda!28544 lambda!28539))))

(declare-fun bs!235448 () Bool)

(assert (= bs!235448 (and b!905472 b!905277)))

(assert (=> bs!235448 (not (= lambda!28544 lambda!28521))))

(assert (=> bs!235448 (not (= lambda!28544 lambda!28522))))

(declare-fun bs!235449 () Bool)

(assert (= bs!235449 (and b!905472 d!278745)))

(assert (=> bs!235449 (not (= lambda!28544 lambda!28533))))

(assert (=> b!905472 true))

(assert (=> b!905472 true))

(declare-fun bs!235450 () Bool)

(declare-fun b!905473 () Bool)

(assert (= bs!235450 (and b!905473 d!278749)))

(declare-fun lambda!28545 () Int)

(assert (=> bs!235450 (not (= lambda!28545 lambda!28538))))

(declare-fun bs!235451 () Bool)

(assert (= bs!235451 (and b!905473 b!905472)))

(assert (=> bs!235451 (not (= lambda!28545 lambda!28544))))

(assert (=> bs!235450 (= (= (regOne!5300 r!15766) EmptyExpr!2394) (= lambda!28545 lambda!28539))))

(declare-fun bs!235452 () Bool)

(assert (= bs!235452 (and b!905473 b!905277)))

(assert (=> bs!235452 (not (= lambda!28545 lambda!28521))))

(assert (=> bs!235452 (= (= (regOne!5300 r!15766) EmptyExpr!2394) (= lambda!28545 lambda!28522))))

(declare-fun bs!235453 () Bool)

(assert (= bs!235453 (and b!905473 d!278745)))

(assert (=> bs!235453 (not (= lambda!28545 lambda!28533))))

(assert (=> b!905473 true))

(assert (=> b!905473 true))

(declare-fun b!905471 () Bool)

(declare-fun e!591409 () Bool)

(assert (=> b!905471 (= e!591409 (= s!10566 (Cons!9608 (c!146627 r!15766) Nil!9608)))))

(declare-fun e!591406 () Bool)

(declare-fun call!54165 () Bool)

(assert (=> b!905472 (= e!591406 call!54165)))

(declare-fun e!591405 () Bool)

(assert (=> b!905473 (= e!591405 call!54165)))

(declare-fun b!905474 () Bool)

(declare-fun e!591403 () Bool)

(assert (=> b!905474 (= e!591403 (matchRSpec!195 (regTwo!5301 r!15766) s!10566))))

(declare-fun b!905475 () Bool)

(declare-fun e!591408 () Bool)

(assert (=> b!905475 (= e!591408 e!591405)))

(declare-fun c!146659 () Bool)

(assert (=> b!905475 (= c!146659 (is-Star!2394 r!15766))))

(declare-fun bm!54159 () Bool)

(declare-fun call!54164 () Bool)

(assert (=> bm!54159 (= call!54164 (isEmpty!5811 s!10566))))

(declare-fun b!905476 () Bool)

(declare-fun c!146660 () Bool)

(assert (=> b!905476 (= c!146660 (is-Union!2394 r!15766))))

(assert (=> b!905476 (= e!591409 e!591408)))

(declare-fun b!905477 () Bool)

(assert (=> b!905477 (= e!591408 e!591403)))

(declare-fun res!411756 () Bool)

(assert (=> b!905477 (= res!411756 (matchRSpec!195 (regOne!5301 r!15766) s!10566))))

(assert (=> b!905477 (=> res!411756 e!591403)))

(declare-fun b!905478 () Bool)

(declare-fun e!591404 () Bool)

(assert (=> b!905478 (= e!591404 call!54164)))

(declare-fun bm!54160 () Bool)

(assert (=> bm!54160 (= call!54165 (Exists!169 (ite c!146659 lambda!28544 lambda!28545)))))

(declare-fun b!905479 () Bool)

(declare-fun res!411755 () Bool)

(assert (=> b!905479 (=> res!411755 e!591406)))

(assert (=> b!905479 (= res!411755 call!54164)))

(assert (=> b!905479 (= e!591405 e!591406)))

(declare-fun b!905480 () Bool)

(declare-fun c!146661 () Bool)

(assert (=> b!905480 (= c!146661 (is-ElementMatch!2394 r!15766))))

(declare-fun e!591407 () Bool)

(assert (=> b!905480 (= e!591407 e!591409)))

(declare-fun b!905481 () Bool)

(assert (=> b!905481 (= e!591404 e!591407)))

(declare-fun res!411754 () Bool)

(assert (=> b!905481 (= res!411754 (not (is-EmptyLang!2394 r!15766)))))

(assert (=> b!905481 (=> (not res!411754) (not e!591407))))

(declare-fun d!278763 () Bool)

(declare-fun c!146662 () Bool)

(assert (=> d!278763 (= c!146662 (is-EmptyExpr!2394 r!15766))))

(assert (=> d!278763 (= (matchRSpec!195 r!15766 s!10566) e!591404)))

(assert (= (and d!278763 c!146662) b!905478))

(assert (= (and d!278763 (not c!146662)) b!905481))

(assert (= (and b!905481 res!411754) b!905480))

(assert (= (and b!905480 c!146661) b!905471))

(assert (= (and b!905480 (not c!146661)) b!905476))

(assert (= (and b!905476 c!146660) b!905477))

(assert (= (and b!905476 (not c!146660)) b!905475))

(assert (= (and b!905477 (not res!411756)) b!905474))

(assert (= (and b!905475 c!146659) b!905479))

(assert (= (and b!905475 (not c!146659)) b!905473))

(assert (= (and b!905479 (not res!411755)) b!905472))

(assert (= (or b!905472 b!905473) bm!54160))

(assert (= (or b!905478 b!905479) bm!54159))

(declare-fun m!1140795 () Bool)

(assert (=> b!905474 m!1140795))

(assert (=> bm!54159 m!1140679))

(declare-fun m!1140797 () Bool)

(assert (=> b!905477 m!1140797))

(declare-fun m!1140799 () Bool)

(assert (=> bm!54160 m!1140799))

(assert (=> b!905273 d!278763))

(declare-fun d!278765 () Bool)

(declare-fun e!591429 () Bool)

(assert (=> d!278765 e!591429))

(declare-fun c!146671 () Bool)

(assert (=> d!278765 (= c!146671 (is-EmptyExpr!2394 r!15766))))

(declare-fun lt!335576 () Bool)

(declare-fun e!591432 () Bool)

(assert (=> d!278765 (= lt!335576 e!591432)))

(declare-fun c!146673 () Bool)

(assert (=> d!278765 (= c!146673 (isEmpty!5811 s!10566))))

(assert (=> d!278765 (validRegex!863 r!15766)))

(assert (=> d!278765 (= (matchR!932 r!15766 s!10566) lt!335576)))

(declare-fun bm!54163 () Bool)

(declare-fun call!54168 () Bool)

(assert (=> bm!54163 (= call!54168 (isEmpty!5811 s!10566))))

(declare-fun b!905519 () Bool)

(declare-fun res!411783 () Bool)

(declare-fun e!591433 () Bool)

(assert (=> b!905519 (=> (not res!411783) (not e!591433))))

(assert (=> b!905519 (= res!411783 (not call!54168))))

(declare-fun b!905520 () Bool)

(declare-fun res!411784 () Bool)

(declare-fun e!591435 () Bool)

(assert (=> b!905520 (=> res!411784 e!591435)))

(assert (=> b!905520 (= res!411784 e!591433)))

(declare-fun res!411779 () Bool)

(assert (=> b!905520 (=> (not res!411779) (not e!591433))))

(assert (=> b!905520 (= res!411779 lt!335576)))

(declare-fun b!905521 () Bool)

(declare-fun res!411785 () Bool)

(declare-fun e!591434 () Bool)

(assert (=> b!905521 (=> res!411785 e!591434)))

(declare-fun tail!1169 (List!9624) List!9624)

(assert (=> b!905521 (= res!411785 (not (isEmpty!5811 (tail!1169 s!10566))))))

(declare-fun b!905522 () Bool)

(declare-fun e!591430 () Bool)

(assert (=> b!905522 (= e!591429 e!591430)))

(declare-fun c!146672 () Bool)

(assert (=> b!905522 (= c!146672 (is-EmptyLang!2394 r!15766))))

(declare-fun b!905523 () Bool)

(declare-fun derivativeStep!454 (Regex!2394 C!5358) Regex!2394)

(declare-fun head!1607 (List!9624) C!5358)

(assert (=> b!905523 (= e!591432 (matchR!932 (derivativeStep!454 r!15766 (head!1607 s!10566)) (tail!1169 s!10566)))))

(declare-fun b!905524 () Bool)

(assert (=> b!905524 (= e!591434 (not (= (head!1607 s!10566) (c!146627 r!15766))))))

(declare-fun b!905525 () Bool)

(assert (=> b!905525 (= e!591429 (= lt!335576 call!54168))))

(declare-fun b!905526 () Bool)

(assert (=> b!905526 (= e!591432 (nullable!642 r!15766))))

(declare-fun b!905527 () Bool)

(declare-fun res!411780 () Bool)

(assert (=> b!905527 (=> res!411780 e!591435)))

(assert (=> b!905527 (= res!411780 (not (is-ElementMatch!2394 r!15766)))))

(assert (=> b!905527 (= e!591430 e!591435)))

(declare-fun b!905528 () Bool)

(declare-fun e!591431 () Bool)

(assert (=> b!905528 (= e!591431 e!591434)))

(declare-fun res!411781 () Bool)

(assert (=> b!905528 (=> res!411781 e!591434)))

(assert (=> b!905528 (= res!411781 call!54168)))

(declare-fun b!905529 () Bool)

(assert (=> b!905529 (= e!591435 e!591431)))

(declare-fun res!411782 () Bool)

(assert (=> b!905529 (=> (not res!411782) (not e!591431))))

(assert (=> b!905529 (= res!411782 (not lt!335576))))

(declare-fun b!905530 () Bool)

(assert (=> b!905530 (= e!591433 (= (head!1607 s!10566) (c!146627 r!15766)))))

(declare-fun b!905531 () Bool)

(declare-fun res!411778 () Bool)

(assert (=> b!905531 (=> (not res!411778) (not e!591433))))

(assert (=> b!905531 (= res!411778 (isEmpty!5811 (tail!1169 s!10566)))))

(declare-fun b!905532 () Bool)

(assert (=> b!905532 (= e!591430 (not lt!335576))))

(assert (= (and d!278765 c!146673) b!905526))

(assert (= (and d!278765 (not c!146673)) b!905523))

(assert (= (and d!278765 c!146671) b!905525))

(assert (= (and d!278765 (not c!146671)) b!905522))

(assert (= (and b!905522 c!146672) b!905532))

(assert (= (and b!905522 (not c!146672)) b!905527))

(assert (= (and b!905527 (not res!411780)) b!905520))

(assert (= (and b!905520 res!411779) b!905519))

(assert (= (and b!905519 res!411783) b!905531))

(assert (= (and b!905531 res!411778) b!905530))

(assert (= (and b!905520 (not res!411784)) b!905529))

(assert (= (and b!905529 res!411782) b!905528))

(assert (= (and b!905528 (not res!411781)) b!905521))

(assert (= (and b!905521 (not res!411785)) b!905524))

(assert (= (or b!905525 b!905519 b!905528) bm!54163))

(declare-fun m!1140823 () Bool)

(assert (=> b!905523 m!1140823))

(assert (=> b!905523 m!1140823))

(declare-fun m!1140825 () Bool)

(assert (=> b!905523 m!1140825))

(declare-fun m!1140827 () Bool)

(assert (=> b!905523 m!1140827))

(assert (=> b!905523 m!1140825))

(assert (=> b!905523 m!1140827))

(declare-fun m!1140829 () Bool)

(assert (=> b!905523 m!1140829))

(assert (=> b!905524 m!1140823))

(assert (=> bm!54163 m!1140679))

(declare-fun m!1140831 () Bool)

(assert (=> b!905526 m!1140831))

(assert (=> b!905521 m!1140827))

(assert (=> b!905521 m!1140827))

(declare-fun m!1140833 () Bool)

(assert (=> b!905521 m!1140833))

(assert (=> b!905530 m!1140823))

(assert (=> d!278765 m!1140679))

(assert (=> d!278765 m!1140701))

(assert (=> b!905531 m!1140827))

(assert (=> b!905531 m!1140827))

(assert (=> b!905531 m!1140833))

(assert (=> b!905273 d!278765))

(declare-fun d!278769 () Bool)

(assert (=> d!278769 (= (matchR!932 r!15766 s!10566) (matchRSpec!195 r!15766 s!10566))))

(declare-fun lt!335579 () Unit!14407)

(declare-fun choose!5477 (Regex!2394 List!9624) Unit!14407)

(assert (=> d!278769 (= lt!335579 (choose!5477 r!15766 s!10566))))

(assert (=> d!278769 (validRegex!863 r!15766)))

(assert (=> d!278769 (= (mainMatchTheorem!195 r!15766 s!10566) lt!335579)))

(declare-fun bs!235454 () Bool)

(assert (= bs!235454 d!278769))

(assert (=> bs!235454 m!1140705))

(assert (=> bs!235454 m!1140703))

(declare-fun m!1140835 () Bool)

(assert (=> bs!235454 m!1140835))

(assert (=> bs!235454 m!1140701))

(assert (=> b!905273 d!278769))

(declare-fun b!905533 () Bool)

(declare-fun e!591437 () Bool)

(declare-fun e!591436 () Bool)

(assert (=> b!905533 (= e!591437 e!591436)))

(declare-fun c!146675 () Bool)

(assert (=> b!905533 (= c!146675 (is-Star!2394 (regTwo!5300 r!15766)))))

(declare-fun bm!54164 () Bool)

(declare-fun call!54169 () Bool)

(declare-fun call!54170 () Bool)

(assert (=> bm!54164 (= call!54169 call!54170)))

(declare-fun b!905534 () Bool)

(declare-fun e!591440 () Bool)

(assert (=> b!905534 (= e!591436 e!591440)))

(declare-fun c!146674 () Bool)

(assert (=> b!905534 (= c!146674 (is-Union!2394 (regTwo!5300 r!15766)))))

(declare-fun b!905535 () Bool)

(declare-fun res!411790 () Bool)

(declare-fun e!591441 () Bool)

(assert (=> b!905535 (=> res!411790 e!591441)))

(assert (=> b!905535 (= res!411790 (not (is-Concat!4227 (regTwo!5300 r!15766))))))

(assert (=> b!905535 (= e!591440 e!591441)))

(declare-fun b!905537 () Bool)

(declare-fun res!411789 () Bool)

(declare-fun e!591439 () Bool)

(assert (=> b!905537 (=> (not res!411789) (not e!591439))))

(assert (=> b!905537 (= res!411789 call!54169)))

(assert (=> b!905537 (= e!591440 e!591439)))

(declare-fun b!905538 () Bool)

(declare-fun e!591442 () Bool)

(assert (=> b!905538 (= e!591442 call!54170)))

(declare-fun b!905539 () Bool)

(declare-fun e!591438 () Bool)

(declare-fun call!54171 () Bool)

(assert (=> b!905539 (= e!591438 call!54171)))

(declare-fun b!905540 () Bool)

(assert (=> b!905540 (= e!591439 call!54171)))

(declare-fun b!905541 () Bool)

(assert (=> b!905541 (= e!591441 e!591438)))

(declare-fun res!411786 () Bool)

(assert (=> b!905541 (=> (not res!411786) (not e!591438))))

(assert (=> b!905541 (= res!411786 call!54169)))

(declare-fun bm!54165 () Bool)

(assert (=> bm!54165 (= call!54171 (validRegex!863 (ite c!146674 (regTwo!5301 (regTwo!5300 r!15766)) (regTwo!5300 (regTwo!5300 r!15766)))))))

(declare-fun bm!54166 () Bool)

(assert (=> bm!54166 (= call!54170 (validRegex!863 (ite c!146675 (reg!2723 (regTwo!5300 r!15766)) (ite c!146674 (regOne!5301 (regTwo!5300 r!15766)) (regOne!5300 (regTwo!5300 r!15766))))))))

(declare-fun d!278771 () Bool)

(declare-fun res!411787 () Bool)

(assert (=> d!278771 (=> res!411787 e!591437)))

(assert (=> d!278771 (= res!411787 (is-ElementMatch!2394 (regTwo!5300 r!15766)))))

(assert (=> d!278771 (= (validRegex!863 (regTwo!5300 r!15766)) e!591437)))

(declare-fun b!905536 () Bool)

(assert (=> b!905536 (= e!591436 e!591442)))

(declare-fun res!411788 () Bool)

(assert (=> b!905536 (= res!411788 (not (nullable!642 (reg!2723 (regTwo!5300 r!15766)))))))

(assert (=> b!905536 (=> (not res!411788) (not e!591442))))

(assert (= (and d!278771 (not res!411787)) b!905533))

(assert (= (and b!905533 c!146675) b!905536))

(assert (= (and b!905533 (not c!146675)) b!905534))

(assert (= (and b!905536 res!411788) b!905538))

(assert (= (and b!905534 c!146674) b!905537))

(assert (= (and b!905534 (not c!146674)) b!905535))

(assert (= (and b!905537 res!411789) b!905540))

(assert (= (and b!905535 (not res!411790)) b!905541))

(assert (= (and b!905541 res!411786) b!905539))

(assert (= (or b!905540 b!905539) bm!54165))

(assert (= (or b!905537 b!905541) bm!54164))

(assert (= (or b!905538 bm!54164) bm!54166))

(declare-fun m!1140837 () Bool)

(assert (=> bm!54165 m!1140837))

(declare-fun m!1140839 () Bool)

(assert (=> bm!54166 m!1140839))

(declare-fun m!1140841 () Bool)

(assert (=> b!905536 m!1140841))

(assert (=> b!905276 d!278771))

(declare-fun d!278773 () Bool)

(assert (=> d!278773 (= (matchR!932 (regTwo!5300 r!15766) s!10566) (matchR!932 (removeUselessConcat!93 (regTwo!5300 r!15766)) s!10566))))

(declare-fun lt!335584 () Unit!14407)

(declare-fun choose!5478 (Regex!2394 List!9624) Unit!14407)

(assert (=> d!278773 (= lt!335584 (choose!5478 (regTwo!5300 r!15766) s!10566))))

(assert (=> d!278773 (validRegex!863 (regTwo!5300 r!15766))))

(assert (=> d!278773 (= (lemmaRemoveUselessConcatSound!81 (regTwo!5300 r!15766) s!10566) lt!335584)))

(declare-fun bs!235455 () Bool)

(assert (= bs!235455 d!278773))

(declare-fun m!1140843 () Bool)

(assert (=> bs!235455 m!1140843))

(assert (=> bs!235455 m!1140697))

(assert (=> bs!235455 m!1140691))

(assert (=> bs!235455 m!1140693))

(assert (=> bs!235455 m!1140695))

(assert (=> bs!235455 m!1140691))

(assert (=> b!905276 d!278773))

(declare-fun d!278775 () Bool)

(declare-fun e!591443 () Bool)

(assert (=> d!278775 e!591443))

(declare-fun c!146676 () Bool)

(assert (=> d!278775 (= c!146676 (is-EmptyExpr!2394 (removeUselessConcat!93 (regTwo!5300 r!15766))))))

(declare-fun lt!335585 () Bool)

(declare-fun e!591446 () Bool)

(assert (=> d!278775 (= lt!335585 e!591446)))

(declare-fun c!146678 () Bool)

(assert (=> d!278775 (= c!146678 (isEmpty!5811 s!10566))))

(assert (=> d!278775 (validRegex!863 (removeUselessConcat!93 (regTwo!5300 r!15766)))))

(assert (=> d!278775 (= (matchR!932 (removeUselessConcat!93 (regTwo!5300 r!15766)) s!10566) lt!335585)))

(declare-fun bm!54167 () Bool)

(declare-fun call!54172 () Bool)

(assert (=> bm!54167 (= call!54172 (isEmpty!5811 s!10566))))

(declare-fun b!905542 () Bool)

(declare-fun res!411796 () Bool)

(declare-fun e!591447 () Bool)

(assert (=> b!905542 (=> (not res!411796) (not e!591447))))

(assert (=> b!905542 (= res!411796 (not call!54172))))

(declare-fun b!905543 () Bool)

(declare-fun res!411797 () Bool)

(declare-fun e!591449 () Bool)

(assert (=> b!905543 (=> res!411797 e!591449)))

(assert (=> b!905543 (= res!411797 e!591447)))

(declare-fun res!411792 () Bool)

(assert (=> b!905543 (=> (not res!411792) (not e!591447))))

(assert (=> b!905543 (= res!411792 lt!335585)))

(declare-fun b!905544 () Bool)

(declare-fun res!411798 () Bool)

(declare-fun e!591448 () Bool)

(assert (=> b!905544 (=> res!411798 e!591448)))

(assert (=> b!905544 (= res!411798 (not (isEmpty!5811 (tail!1169 s!10566))))))

(declare-fun b!905545 () Bool)

(declare-fun e!591444 () Bool)

(assert (=> b!905545 (= e!591443 e!591444)))

(declare-fun c!146677 () Bool)

(assert (=> b!905545 (= c!146677 (is-EmptyLang!2394 (removeUselessConcat!93 (regTwo!5300 r!15766))))))

(declare-fun b!905546 () Bool)

(assert (=> b!905546 (= e!591446 (matchR!932 (derivativeStep!454 (removeUselessConcat!93 (regTwo!5300 r!15766)) (head!1607 s!10566)) (tail!1169 s!10566)))))

(declare-fun b!905547 () Bool)

(assert (=> b!905547 (= e!591448 (not (= (head!1607 s!10566) (c!146627 (removeUselessConcat!93 (regTwo!5300 r!15766))))))))

(declare-fun b!905548 () Bool)

(assert (=> b!905548 (= e!591443 (= lt!335585 call!54172))))

(declare-fun b!905549 () Bool)

(assert (=> b!905549 (= e!591446 (nullable!642 (removeUselessConcat!93 (regTwo!5300 r!15766))))))

(declare-fun b!905550 () Bool)

(declare-fun res!411793 () Bool)

(assert (=> b!905550 (=> res!411793 e!591449)))

(assert (=> b!905550 (= res!411793 (not (is-ElementMatch!2394 (removeUselessConcat!93 (regTwo!5300 r!15766)))))))

(assert (=> b!905550 (= e!591444 e!591449)))

(declare-fun b!905551 () Bool)

(declare-fun e!591445 () Bool)

(assert (=> b!905551 (= e!591445 e!591448)))

(declare-fun res!411794 () Bool)

(assert (=> b!905551 (=> res!411794 e!591448)))

(assert (=> b!905551 (= res!411794 call!54172)))

(declare-fun b!905552 () Bool)

(assert (=> b!905552 (= e!591449 e!591445)))

(declare-fun res!411795 () Bool)

(assert (=> b!905552 (=> (not res!411795) (not e!591445))))

(assert (=> b!905552 (= res!411795 (not lt!335585))))

(declare-fun b!905553 () Bool)

(assert (=> b!905553 (= e!591447 (= (head!1607 s!10566) (c!146627 (removeUselessConcat!93 (regTwo!5300 r!15766)))))))

(declare-fun b!905554 () Bool)

(declare-fun res!411791 () Bool)

(assert (=> b!905554 (=> (not res!411791) (not e!591447))))

(assert (=> b!905554 (= res!411791 (isEmpty!5811 (tail!1169 s!10566)))))

(declare-fun b!905555 () Bool)

(assert (=> b!905555 (= e!591444 (not lt!335585))))

(assert (= (and d!278775 c!146678) b!905549))

(assert (= (and d!278775 (not c!146678)) b!905546))

(assert (= (and d!278775 c!146676) b!905548))

(assert (= (and d!278775 (not c!146676)) b!905545))

(assert (= (and b!905545 c!146677) b!905555))

(assert (= (and b!905545 (not c!146677)) b!905550))

(assert (= (and b!905550 (not res!411793)) b!905543))

(assert (= (and b!905543 res!411792) b!905542))

(assert (= (and b!905542 res!411796) b!905554))

(assert (= (and b!905554 res!411791) b!905553))

(assert (= (and b!905543 (not res!411797)) b!905552))

(assert (= (and b!905552 res!411795) b!905551))

(assert (= (and b!905551 (not res!411794)) b!905544))

(assert (= (and b!905544 (not res!411798)) b!905547))

(assert (= (or b!905548 b!905542 b!905551) bm!54167))

(assert (=> b!905546 m!1140823))

(assert (=> b!905546 m!1140691))

(assert (=> b!905546 m!1140823))

(declare-fun m!1140845 () Bool)

(assert (=> b!905546 m!1140845))

(assert (=> b!905546 m!1140827))

(assert (=> b!905546 m!1140845))

(assert (=> b!905546 m!1140827))

(declare-fun m!1140847 () Bool)

(assert (=> b!905546 m!1140847))

(assert (=> b!905547 m!1140823))

(assert (=> bm!54167 m!1140679))

(assert (=> b!905549 m!1140691))

(declare-fun m!1140849 () Bool)

(assert (=> b!905549 m!1140849))

(assert (=> b!905544 m!1140827))

(assert (=> b!905544 m!1140827))

(assert (=> b!905544 m!1140833))

(assert (=> b!905553 m!1140823))

(assert (=> d!278775 m!1140679))

(assert (=> d!278775 m!1140691))

(declare-fun m!1140851 () Bool)

(assert (=> d!278775 m!1140851))

(assert (=> b!905554 m!1140827))

(assert (=> b!905554 m!1140827))

(assert (=> b!905554 m!1140833))

(assert (=> b!905276 d!278775))

(declare-fun d!278777 () Bool)

(declare-fun e!591450 () Bool)

(assert (=> d!278777 e!591450))

(declare-fun c!146679 () Bool)

(assert (=> d!278777 (= c!146679 (is-EmptyExpr!2394 (regTwo!5300 r!15766)))))

(declare-fun lt!335586 () Bool)

(declare-fun e!591453 () Bool)

(assert (=> d!278777 (= lt!335586 e!591453)))

(declare-fun c!146681 () Bool)

(assert (=> d!278777 (= c!146681 (isEmpty!5811 s!10566))))

(assert (=> d!278777 (validRegex!863 (regTwo!5300 r!15766))))

(assert (=> d!278777 (= (matchR!932 (regTwo!5300 r!15766) s!10566) lt!335586)))

(declare-fun bm!54168 () Bool)

(declare-fun call!54173 () Bool)

(assert (=> bm!54168 (= call!54173 (isEmpty!5811 s!10566))))

(declare-fun b!905556 () Bool)

(declare-fun res!411804 () Bool)

(declare-fun e!591454 () Bool)

(assert (=> b!905556 (=> (not res!411804) (not e!591454))))

(assert (=> b!905556 (= res!411804 (not call!54173))))

(declare-fun b!905557 () Bool)

(declare-fun res!411805 () Bool)

(declare-fun e!591456 () Bool)

(assert (=> b!905557 (=> res!411805 e!591456)))

(assert (=> b!905557 (= res!411805 e!591454)))

(declare-fun res!411800 () Bool)

(assert (=> b!905557 (=> (not res!411800) (not e!591454))))

(assert (=> b!905557 (= res!411800 lt!335586)))

(declare-fun b!905558 () Bool)

(declare-fun res!411806 () Bool)

(declare-fun e!591455 () Bool)

(assert (=> b!905558 (=> res!411806 e!591455)))

(assert (=> b!905558 (= res!411806 (not (isEmpty!5811 (tail!1169 s!10566))))))

(declare-fun b!905559 () Bool)

(declare-fun e!591451 () Bool)

(assert (=> b!905559 (= e!591450 e!591451)))

(declare-fun c!146680 () Bool)

(assert (=> b!905559 (= c!146680 (is-EmptyLang!2394 (regTwo!5300 r!15766)))))

(declare-fun b!905560 () Bool)

(assert (=> b!905560 (= e!591453 (matchR!932 (derivativeStep!454 (regTwo!5300 r!15766) (head!1607 s!10566)) (tail!1169 s!10566)))))

(declare-fun b!905561 () Bool)

(assert (=> b!905561 (= e!591455 (not (= (head!1607 s!10566) (c!146627 (regTwo!5300 r!15766)))))))

(declare-fun b!905562 () Bool)

(assert (=> b!905562 (= e!591450 (= lt!335586 call!54173))))

(declare-fun b!905563 () Bool)

(assert (=> b!905563 (= e!591453 (nullable!642 (regTwo!5300 r!15766)))))

(declare-fun b!905564 () Bool)

(declare-fun res!411801 () Bool)

(assert (=> b!905564 (=> res!411801 e!591456)))

(assert (=> b!905564 (= res!411801 (not (is-ElementMatch!2394 (regTwo!5300 r!15766))))))

(assert (=> b!905564 (= e!591451 e!591456)))

(declare-fun b!905565 () Bool)

(declare-fun e!591452 () Bool)

(assert (=> b!905565 (= e!591452 e!591455)))

(declare-fun res!411802 () Bool)

(assert (=> b!905565 (=> res!411802 e!591455)))

(assert (=> b!905565 (= res!411802 call!54173)))

(declare-fun b!905566 () Bool)

(assert (=> b!905566 (= e!591456 e!591452)))

(declare-fun res!411803 () Bool)

(assert (=> b!905566 (=> (not res!411803) (not e!591452))))

(assert (=> b!905566 (= res!411803 (not lt!335586))))

(declare-fun b!905567 () Bool)

(assert (=> b!905567 (= e!591454 (= (head!1607 s!10566) (c!146627 (regTwo!5300 r!15766))))))

(declare-fun b!905568 () Bool)

(declare-fun res!411799 () Bool)

(assert (=> b!905568 (=> (not res!411799) (not e!591454))))

(assert (=> b!905568 (= res!411799 (isEmpty!5811 (tail!1169 s!10566)))))

(declare-fun b!905569 () Bool)

(assert (=> b!905569 (= e!591451 (not lt!335586))))

(assert (= (and d!278777 c!146681) b!905563))

(assert (= (and d!278777 (not c!146681)) b!905560))

(assert (= (and d!278777 c!146679) b!905562))

(assert (= (and d!278777 (not c!146679)) b!905559))

(assert (= (and b!905559 c!146680) b!905569))

(assert (= (and b!905559 (not c!146680)) b!905564))

(assert (= (and b!905564 (not res!411801)) b!905557))

(assert (= (and b!905557 res!411800) b!905556))

(assert (= (and b!905556 res!411804) b!905568))

(assert (= (and b!905568 res!411799) b!905567))

(assert (= (and b!905557 (not res!411805)) b!905566))

(assert (= (and b!905566 res!411803) b!905565))

(assert (= (and b!905565 (not res!411802)) b!905558))

(assert (= (and b!905558 (not res!411806)) b!905561))

(assert (= (or b!905562 b!905556 b!905565) bm!54168))

(assert (=> b!905560 m!1140823))

(assert (=> b!905560 m!1140823))

(declare-fun m!1140853 () Bool)

(assert (=> b!905560 m!1140853))

(assert (=> b!905560 m!1140827))

(assert (=> b!905560 m!1140853))

(assert (=> b!905560 m!1140827))

(declare-fun m!1140855 () Bool)

(assert (=> b!905560 m!1140855))

(assert (=> b!905561 m!1140823))

(assert (=> bm!54168 m!1140679))

(declare-fun m!1140857 () Bool)

(assert (=> b!905563 m!1140857))

(assert (=> b!905558 m!1140827))

(assert (=> b!905558 m!1140827))

(assert (=> b!905558 m!1140833))

(assert (=> b!905567 m!1140823))

(assert (=> d!278777 m!1140679))

(assert (=> d!278777 m!1140695))

(assert (=> b!905568 m!1140827))

(assert (=> b!905568 m!1140827))

(assert (=> b!905568 m!1140833))

(assert (=> b!905276 d!278777))

(declare-fun b!905596 () Bool)

(declare-fun e!591473 () Bool)

(declare-fun lt!335590 () Regex!2394)

(assert (=> b!905596 (= e!591473 (= (nullable!642 lt!335590) (nullable!642 (regTwo!5300 r!15766))))))

(declare-fun b!905597 () Bool)

(declare-fun c!146695 () Bool)

(assert (=> b!905597 (= c!146695 (is-Star!2394 (regTwo!5300 r!15766)))))

(declare-fun e!591471 () Regex!2394)

(declare-fun e!591474 () Regex!2394)

(assert (=> b!905597 (= e!591471 e!591474)))

(declare-fun c!146692 () Bool)

(declare-fun bm!54179 () Bool)

(declare-fun c!146694 () Bool)

(declare-fun call!54187 () Regex!2394)

(assert (=> bm!54179 (= call!54187 (removeUselessConcat!93 (ite c!146694 (regTwo!5300 (regTwo!5300 r!15766)) (ite c!146692 (regTwo!5301 (regTwo!5300 r!15766)) (reg!2723 (regTwo!5300 r!15766))))))))

(declare-fun d!278779 () Bool)

(assert (=> d!278779 e!591473))

(declare-fun res!411813 () Bool)

(assert (=> d!278779 (=> (not res!411813) (not e!591473))))

(assert (=> d!278779 (= res!411813 (validRegex!863 lt!335590))))

(declare-fun e!591476 () Regex!2394)

(assert (=> d!278779 (= lt!335590 e!591476)))

(declare-fun c!146696 () Bool)

(assert (=> d!278779 (= c!146696 (and (is-Concat!4227 (regTwo!5300 r!15766)) (is-EmptyExpr!2394 (regOne!5300 (regTwo!5300 r!15766)))))))

(assert (=> d!278779 (validRegex!863 (regTwo!5300 r!15766))))

(assert (=> d!278779 (= (removeUselessConcat!93 (regTwo!5300 r!15766)) lt!335590)))

(declare-fun b!905598 () Bool)

(declare-fun call!54186 () Regex!2394)

(assert (=> b!905598 (= e!591476 call!54186)))

(declare-fun b!905599 () Bool)

(assert (=> b!905599 (= e!591474 (regTwo!5300 r!15766))))

(declare-fun bm!54180 () Bool)

(declare-fun call!54184 () Regex!2394)

(declare-fun call!54185 () Regex!2394)

(assert (=> bm!54180 (= call!54184 call!54185)))

(declare-fun bm!54181 () Bool)

(declare-fun call!54188 () Regex!2394)

(assert (=> bm!54181 (= call!54188 call!54187)))

(declare-fun b!905600 () Bool)

(declare-fun e!591475 () Regex!2394)

(assert (=> b!905600 (= e!591475 call!54185)))

(declare-fun b!905601 () Bool)

(assert (=> b!905601 (= e!591474 (Star!2394 call!54188))))

(declare-fun b!905602 () Bool)

(assert (=> b!905602 (= e!591476 e!591475)))

(declare-fun c!146693 () Bool)

(assert (=> b!905602 (= c!146693 (and (is-Concat!4227 (regTwo!5300 r!15766)) (is-EmptyExpr!2394 (regTwo!5300 (regTwo!5300 r!15766)))))))

(declare-fun b!905603 () Bool)

(assert (=> b!905603 (= e!591471 (Union!2394 call!54184 call!54188))))

(declare-fun bm!54182 () Bool)

(assert (=> bm!54182 (= call!54185 call!54186)))

(declare-fun bm!54183 () Bool)

(assert (=> bm!54183 (= call!54186 (removeUselessConcat!93 (ite c!146696 (regTwo!5300 (regTwo!5300 r!15766)) (ite (or c!146693 c!146694) (regOne!5300 (regTwo!5300 r!15766)) (regOne!5301 (regTwo!5300 r!15766))))))))

(declare-fun b!905604 () Bool)

(declare-fun e!591472 () Regex!2394)

(assert (=> b!905604 (= e!591472 e!591471)))

(assert (=> b!905604 (= c!146692 (is-Union!2394 (regTwo!5300 r!15766)))))

(declare-fun b!905605 () Bool)

(assert (=> b!905605 (= c!146694 (is-Concat!4227 (regTwo!5300 r!15766)))))

(assert (=> b!905605 (= e!591475 e!591472)))

(declare-fun b!905606 () Bool)

(assert (=> b!905606 (= e!591472 (Concat!4227 call!54184 call!54187))))

(assert (= (and d!278779 c!146696) b!905598))

(assert (= (and d!278779 (not c!146696)) b!905602))

(assert (= (and b!905602 c!146693) b!905600))

(assert (= (and b!905602 (not c!146693)) b!905605))

(assert (= (and b!905605 c!146694) b!905606))

(assert (= (and b!905605 (not c!146694)) b!905604))

(assert (= (and b!905604 c!146692) b!905603))

(assert (= (and b!905604 (not c!146692)) b!905597))

(assert (= (and b!905597 c!146695) b!905601))

(assert (= (and b!905597 (not c!146695)) b!905599))

(assert (= (or b!905603 b!905601) bm!54181))

(assert (= (or b!905606 bm!54181) bm!54179))

(assert (= (or b!905606 b!905603) bm!54180))

(assert (= (or b!905600 bm!54180) bm!54182))

(assert (= (or b!905598 bm!54182) bm!54183))

(assert (= (and d!278779 res!411813) b!905596))

(declare-fun m!1140865 () Bool)

(assert (=> b!905596 m!1140865))

(assert (=> b!905596 m!1140857))

(declare-fun m!1140867 () Bool)

(assert (=> bm!54179 m!1140867))

(declare-fun m!1140869 () Bool)

(assert (=> d!278779 m!1140869))

(assert (=> d!278779 m!1140695))

(declare-fun m!1140871 () Bool)

(assert (=> bm!54183 m!1140871))

(assert (=> b!905276 d!278779))

(declare-fun e!591479 () Bool)

(assert (=> b!905278 (= tp!283581 e!591479)))

(declare-fun b!905619 () Bool)

(declare-fun tp!283611 () Bool)

(assert (=> b!905619 (= e!591479 tp!283611)))

(declare-fun b!905620 () Bool)

(declare-fun tp!283615 () Bool)

(declare-fun tp!283614 () Bool)

(assert (=> b!905620 (= e!591479 (and tp!283615 tp!283614))))

(declare-fun b!905617 () Bool)

(assert (=> b!905617 (= e!591479 tp_is_empty!4431)))

(declare-fun b!905618 () Bool)

(declare-fun tp!283612 () Bool)

(declare-fun tp!283613 () Bool)

(assert (=> b!905618 (= e!591479 (and tp!283612 tp!283613))))

(assert (= (and b!905278 (is-ElementMatch!2394 (reg!2723 r!15766))) b!905617))

(assert (= (and b!905278 (is-Concat!4227 (reg!2723 r!15766))) b!905618))

(assert (= (and b!905278 (is-Star!2394 (reg!2723 r!15766))) b!905619))

(assert (= (and b!905278 (is-Union!2394 (reg!2723 r!15766))) b!905620))

(declare-fun b!905625 () Bool)

(declare-fun e!591482 () Bool)

(declare-fun tp!283618 () Bool)

(assert (=> b!905625 (= e!591482 (and tp_is_empty!4431 tp!283618))))

(assert (=> b!905274 (= tp!283579 e!591482)))

(assert (= (and b!905274 (is-Cons!9608 (t!100670 s!10566))) b!905625))

(declare-fun e!591483 () Bool)

(assert (=> b!905279 (= tp!283578 e!591483)))

(declare-fun b!905628 () Bool)

(declare-fun tp!283619 () Bool)

(assert (=> b!905628 (= e!591483 tp!283619)))

(declare-fun b!905629 () Bool)

(declare-fun tp!283623 () Bool)

(declare-fun tp!283622 () Bool)

(assert (=> b!905629 (= e!591483 (and tp!283623 tp!283622))))

(declare-fun b!905626 () Bool)

(assert (=> b!905626 (= e!591483 tp_is_empty!4431)))

(declare-fun b!905627 () Bool)

(declare-fun tp!283620 () Bool)

(declare-fun tp!283621 () Bool)

(assert (=> b!905627 (= e!591483 (and tp!283620 tp!283621))))

(assert (= (and b!905279 (is-ElementMatch!2394 (regOne!5301 r!15766))) b!905626))

(assert (= (and b!905279 (is-Concat!4227 (regOne!5301 r!15766))) b!905627))

(assert (= (and b!905279 (is-Star!2394 (regOne!5301 r!15766))) b!905628))

(assert (= (and b!905279 (is-Union!2394 (regOne!5301 r!15766))) b!905629))

(declare-fun e!591484 () Bool)

(assert (=> b!905279 (= tp!283580 e!591484)))

(declare-fun b!905632 () Bool)

(declare-fun tp!283624 () Bool)

(assert (=> b!905632 (= e!591484 tp!283624)))

(declare-fun b!905633 () Bool)

(declare-fun tp!283628 () Bool)

(declare-fun tp!283627 () Bool)

(assert (=> b!905633 (= e!591484 (and tp!283628 tp!283627))))

(declare-fun b!905630 () Bool)

(assert (=> b!905630 (= e!591484 tp_is_empty!4431)))

(declare-fun b!905631 () Bool)

(declare-fun tp!283625 () Bool)

(declare-fun tp!283626 () Bool)

(assert (=> b!905631 (= e!591484 (and tp!283625 tp!283626))))

(assert (= (and b!905279 (is-ElementMatch!2394 (regTwo!5301 r!15766))) b!905630))

(assert (= (and b!905279 (is-Concat!4227 (regTwo!5301 r!15766))) b!905631))

(assert (= (and b!905279 (is-Star!2394 (regTwo!5301 r!15766))) b!905632))

(assert (= (and b!905279 (is-Union!2394 (regTwo!5301 r!15766))) b!905633))

(declare-fun e!591485 () Bool)

(assert (=> b!905280 (= tp!283582 e!591485)))

(declare-fun b!905636 () Bool)

(declare-fun tp!283629 () Bool)

(assert (=> b!905636 (= e!591485 tp!283629)))

(declare-fun b!905637 () Bool)

(declare-fun tp!283633 () Bool)

(declare-fun tp!283632 () Bool)

(assert (=> b!905637 (= e!591485 (and tp!283633 tp!283632))))

(declare-fun b!905634 () Bool)

(assert (=> b!905634 (= e!591485 tp_is_empty!4431)))

(declare-fun b!905635 () Bool)

(declare-fun tp!283630 () Bool)

(declare-fun tp!283631 () Bool)

(assert (=> b!905635 (= e!591485 (and tp!283630 tp!283631))))

(assert (= (and b!905280 (is-ElementMatch!2394 (regOne!5300 r!15766))) b!905634))

(assert (= (and b!905280 (is-Concat!4227 (regOne!5300 r!15766))) b!905635))

(assert (= (and b!905280 (is-Star!2394 (regOne!5300 r!15766))) b!905636))

(assert (= (and b!905280 (is-Union!2394 (regOne!5300 r!15766))) b!905637))

(declare-fun e!591486 () Bool)

(assert (=> b!905280 (= tp!283577 e!591486)))

(declare-fun b!905640 () Bool)

(declare-fun tp!283634 () Bool)

(assert (=> b!905640 (= e!591486 tp!283634)))

(declare-fun b!905641 () Bool)

(declare-fun tp!283638 () Bool)

(declare-fun tp!283637 () Bool)

(assert (=> b!905641 (= e!591486 (and tp!283638 tp!283637))))

(declare-fun b!905638 () Bool)

(assert (=> b!905638 (= e!591486 tp_is_empty!4431)))

(declare-fun b!905639 () Bool)

(declare-fun tp!283635 () Bool)

(declare-fun tp!283636 () Bool)

(assert (=> b!905639 (= e!591486 (and tp!283635 tp!283636))))

(assert (= (and b!905280 (is-ElementMatch!2394 (regTwo!5300 r!15766))) b!905638))

(assert (= (and b!905280 (is-Concat!4227 (regTwo!5300 r!15766))) b!905639))

(assert (= (and b!905280 (is-Star!2394 (regTwo!5300 r!15766))) b!905640))

(assert (= (and b!905280 (is-Union!2394 (regTwo!5300 r!15766))) b!905641))

(push 1)

(assert (not b!905536))

(assert (not bm!54183))

(assert (not b!905524))

(assert (not bm!54159))

(assert (not bm!54165))

(assert (not b!905399))

(assert (not bm!54145))

(assert (not b!905632))

(assert (not d!278773))

(assert (not b!905625))

(assert (not b!905553))

(assert (not d!278761))

(assert (not b!905477))

(assert (not b!905619))

(assert (not b!905530))

(assert (not b!905567))

(assert (not b!905596))

(assert (not b!905560))

(assert (not d!278775))

(assert (not bm!54179))

(assert (not b!905398))

(assert (not bm!54163))

(assert (not b!905618))

(assert (not b!905546))

(assert (not b!905563))

(assert (not bm!54167))

(assert (not d!278757))

(assert (not b!905549))

(assert (not b!905554))

(assert (not b!905633))

(assert (not d!278779))

(assert (not b!905526))

(assert (not d!278765))

(assert (not b!905640))

(assert (not b!905629))

(assert (not b!905628))

(assert (not bm!54166))

(assert (not bm!54160))

(assert (not b!905568))

(assert (not b!905531))

(assert (not b!905521))

(assert (not bm!54144))

(assert (not b!905631))

(assert (not b!905636))

(assert (not b!905639))

(assert (not b!905637))

(assert (not b!905558))

(assert (not b!905561))

(assert (not bm!54168))

(assert (not b!905635))

(assert (not b!905620))

(assert (not b!905393))

(assert (not d!278769))

(assert (not b!905544))

(assert (not d!278755))

(assert (not b!905349))

(assert (not b!905523))

(assert tp_is_empty!4431)

(assert (not d!278777))

(assert (not b!905397))

(assert (not b!905547))

(assert (not b!905627))

(assert (not d!278741))

(assert (not b!905396))

(assert (not b!905474))

(assert (not d!278749))

(assert (not b!905641))

(assert (not d!278745))

(assert (not b!905394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

