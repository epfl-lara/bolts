; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81596 () Bool)

(assert start!81596)

(declare-fun b!907368 () Bool)

(assert (=> b!907368 true))

(assert (=> b!907368 true))

(declare-fun lambda!28708 () Int)

(declare-fun lambda!28707 () Int)

(assert (=> b!907368 (not (= lambda!28708 lambda!28707))))

(assert (=> b!907368 true))

(assert (=> b!907368 true))

(declare-fun b!907362 () Bool)

(declare-fun e!592384 () Bool)

(declare-fun e!592381 () Bool)

(assert (=> b!907362 (= e!592384 e!592381)))

(declare-fun res!412627 () Bool)

(assert (=> b!907362 (=> res!412627 e!592381)))

(declare-fun lt!336001 () Bool)

(assert (=> b!907362 (= res!412627 lt!336001)))

(declare-fun lt!336004 () Bool)

(assert (=> b!907362 (= lt!336004 lt!336001)))

(declare-datatypes ((C!5382 0))(
  ( (C!5383 (val!2939 Int)) )
))
(declare-datatypes ((Regex!2406 0))(
  ( (ElementMatch!2406 (c!146975 C!5382)) (Concat!4239 (regOne!5324 Regex!2406) (regTwo!5324 Regex!2406)) (EmptyExpr!2406) (Star!2406 (reg!2735 Regex!2406)) (EmptyLang!2406) (Union!2406 (regOne!5325 Regex!2406) (regTwo!5325 Regex!2406)) )
))
(declare-fun lt!336008 () Regex!2406)

(declare-datatypes ((List!9636 0))(
  ( (Nil!9620) (Cons!9620 (h!15021 C!5382) (t!100682 List!9636)) )
))
(declare-fun s!10566 () List!9636)

(declare-fun matchR!944 (Regex!2406 List!9636) Bool)

(assert (=> b!907362 (= lt!336001 (matchR!944 lt!336008 s!10566))))

(declare-fun r!15766 () Regex!2406)

(assert (=> b!907362 (= lt!336004 (matchR!944 (regTwo!5324 r!15766) s!10566))))

(declare-fun removeUselessConcat!105 (Regex!2406) Regex!2406)

(assert (=> b!907362 (= lt!336008 (removeUselessConcat!105 (regTwo!5324 r!15766)))))

(declare-datatypes ((Unit!14431 0))(
  ( (Unit!14432) )
))
(declare-fun lt!336002 () Unit!14431)

(declare-fun lemmaRemoveUselessConcatSound!93 (Regex!2406 List!9636) Unit!14431)

(assert (=> b!907362 (= lt!336002 (lemmaRemoveUselessConcatSound!93 (regTwo!5324 r!15766) s!10566))))

(declare-fun b!907363 () Bool)

(declare-fun e!592383 () Bool)

(declare-fun tp!284025 () Bool)

(declare-fun tp!284023 () Bool)

(assert (=> b!907363 (= e!592383 (and tp!284025 tp!284023))))

(declare-fun b!907364 () Bool)

(declare-fun tp!284026 () Bool)

(declare-fun tp!284021 () Bool)

(assert (=> b!907364 (= e!592383 (and tp!284026 tp!284021))))

(declare-fun b!907365 () Bool)

(declare-fun tp_is_empty!4455 () Bool)

(assert (=> b!907365 (= e!592383 tp_is_empty!4455)))

(declare-fun b!907366 () Bool)

(declare-fun e!592385 () Bool)

(declare-fun e!592382 () Bool)

(assert (=> b!907366 (= e!592385 (not e!592382))))

(declare-fun res!412624 () Bool)

(assert (=> b!907366 (=> res!412624 e!592382)))

(declare-fun lt!336007 () Bool)

(assert (=> b!907366 (= res!412624 (or lt!336007 (not (is-Concat!4239 r!15766)) (not (is-EmptyExpr!2406 (regOne!5324 r!15766)))))))

(declare-fun matchRSpec!207 (Regex!2406 List!9636) Bool)

(assert (=> b!907366 (= lt!336007 (matchRSpec!207 r!15766 s!10566))))

(assert (=> b!907366 (= lt!336007 (matchR!944 r!15766 s!10566))))

(declare-fun lt!336006 () Unit!14431)

(declare-fun mainMatchTheorem!207 (Regex!2406 List!9636) Unit!14431)

(assert (=> b!907366 (= lt!336006 (mainMatchTheorem!207 r!15766 s!10566))))

(declare-fun b!907367 () Bool)

(declare-fun e!592380 () Bool)

(declare-fun tp!284022 () Bool)

(assert (=> b!907367 (= e!592380 (and tp_is_empty!4455 tp!284022))))

(assert (=> b!907368 (= e!592382 e!592384)))

(declare-fun res!412626 () Bool)

(assert (=> b!907368 (=> res!412626 e!592384)))

(declare-fun isEmpty!5834 (List!9636) Bool)

(assert (=> b!907368 (= res!412626 (isEmpty!5834 s!10566))))

(declare-fun Exists!181 (Int) Bool)

(assert (=> b!907368 (= (Exists!181 lambda!28707) (Exists!181 lambda!28708))))

(declare-fun lt!336000 () Unit!14431)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!97 (Regex!2406 Regex!2406 List!9636) Unit!14431)

(assert (=> b!907368 (= lt!336000 (lemmaExistCutMatchRandMatchRSpecEquivalent!97 EmptyExpr!2406 (regTwo!5324 r!15766) s!10566))))

(declare-datatypes ((tuple2!10806 0))(
  ( (tuple2!10807 (_1!6229 List!9636) (_2!6229 List!9636)) )
))
(declare-datatypes ((Option!2045 0))(
  ( (None!2044) (Some!2044 (v!19461 tuple2!10806)) )
))
(declare-fun lt!336005 () Option!2045)

(declare-fun isDefined!1687 (Option!2045) Bool)

(assert (=> b!907368 (= (isDefined!1687 lt!336005) (Exists!181 lambda!28707))))

(declare-fun findConcatSeparation!151 (Regex!2406 Regex!2406 List!9636 List!9636 List!9636) Option!2045)

(assert (=> b!907368 (= lt!336005 (findConcatSeparation!151 EmptyExpr!2406 (regTwo!5324 r!15766) Nil!9620 s!10566 s!10566))))

(declare-fun lt!336003 () Unit!14431)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!151 (Regex!2406 Regex!2406 List!9636) Unit!14431)

(assert (=> b!907368 (= lt!336003 (lemmaFindConcatSeparationEquivalentToExists!151 EmptyExpr!2406 (regTwo!5324 r!15766) s!10566))))

(declare-fun b!907369 () Bool)

(declare-fun validRegex!875 (Regex!2406) Bool)

(assert (=> b!907369 (= e!592381 (validRegex!875 (removeUselessConcat!105 r!15766)))))

(declare-fun res!412623 () Bool)

(assert (=> start!81596 (=> (not res!412623) (not e!592385))))

(assert (=> start!81596 (= res!412623 (validRegex!875 r!15766))))

(assert (=> start!81596 e!592385))

(assert (=> start!81596 e!592383))

(assert (=> start!81596 e!592380))

(declare-fun b!907370 () Bool)

(declare-fun tp!284024 () Bool)

(assert (=> b!907370 (= e!592383 tp!284024)))

(declare-fun b!907371 () Bool)

(declare-fun res!412625 () Bool)

(assert (=> b!907371 (=> res!412625 e!592384)))

(declare-fun isEmpty!5835 (Option!2045) Bool)

(assert (=> b!907371 (= res!412625 (not (isEmpty!5835 lt!336005)))))

(assert (= (and start!81596 res!412623) b!907366))

(assert (= (and b!907366 (not res!412624)) b!907368))

(assert (= (and b!907368 (not res!412626)) b!907371))

(assert (= (and b!907371 (not res!412625)) b!907362))

(assert (= (and b!907362 (not res!412627)) b!907369))

(assert (= (and start!81596 (is-ElementMatch!2406 r!15766)) b!907365))

(assert (= (and start!81596 (is-Concat!4239 r!15766)) b!907364))

(assert (= (and start!81596 (is-Star!2406 r!15766)) b!907370))

(assert (= (and start!81596 (is-Union!2406 r!15766)) b!907363))

(assert (= (and start!81596 (is-Cons!9620 s!10566)) b!907367))

(declare-fun m!1141665 () Bool)

(assert (=> start!81596 m!1141665))

(declare-fun m!1141667 () Bool)

(assert (=> b!907371 m!1141667))

(declare-fun m!1141669 () Bool)

(assert (=> b!907368 m!1141669))

(declare-fun m!1141671 () Bool)

(assert (=> b!907368 m!1141671))

(declare-fun m!1141673 () Bool)

(assert (=> b!907368 m!1141673))

(declare-fun m!1141675 () Bool)

(assert (=> b!907368 m!1141675))

(declare-fun m!1141677 () Bool)

(assert (=> b!907368 m!1141677))

(declare-fun m!1141679 () Bool)

(assert (=> b!907368 m!1141679))

(assert (=> b!907368 m!1141669))

(declare-fun m!1141681 () Bool)

(assert (=> b!907368 m!1141681))

(declare-fun m!1141683 () Bool)

(assert (=> b!907369 m!1141683))

(assert (=> b!907369 m!1141683))

(declare-fun m!1141685 () Bool)

(assert (=> b!907369 m!1141685))

(declare-fun m!1141687 () Bool)

(assert (=> b!907362 m!1141687))

(declare-fun m!1141689 () Bool)

(assert (=> b!907362 m!1141689))

(declare-fun m!1141691 () Bool)

(assert (=> b!907362 m!1141691))

(declare-fun m!1141693 () Bool)

(assert (=> b!907362 m!1141693))

(declare-fun m!1141695 () Bool)

(assert (=> b!907366 m!1141695))

(declare-fun m!1141697 () Bool)

(assert (=> b!907366 m!1141697))

(declare-fun m!1141699 () Bool)

(assert (=> b!907366 m!1141699))

(push 1)

(assert (not start!81596))

(assert (not b!907368))

(assert (not b!907371))

(assert (not b!907366))

(assert tp_is_empty!4455)

(assert (not b!907367))

(assert (not b!907363))

(assert (not b!907370))

(assert (not b!907362))

(assert (not b!907364))

(assert (not b!907369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!907440 () Bool)

(declare-fun res!412669 () Bool)

(declare-fun e!592429 () Bool)

(assert (=> b!907440 (=> res!412669 e!592429)))

(assert (=> b!907440 (= res!412669 (not (is-Concat!4239 r!15766)))))

(declare-fun e!592430 () Bool)

(assert (=> b!907440 (= e!592430 e!592429)))

(declare-fun b!907441 () Bool)

(declare-fun e!592428 () Bool)

(declare-fun call!54377 () Bool)

(assert (=> b!907441 (= e!592428 call!54377)))

(declare-fun b!907442 () Bool)

(declare-fun res!412665 () Bool)

(declare-fun e!592424 () Bool)

(assert (=> b!907442 (=> (not res!412665) (not e!592424))))

(declare-fun call!54376 () Bool)

(assert (=> b!907442 (= res!412665 call!54376)))

(assert (=> b!907442 (= e!592430 e!592424)))

(declare-fun bm!54371 () Bool)

(declare-fun call!54378 () Bool)

(assert (=> bm!54371 (= call!54376 call!54378)))

(declare-fun b!907443 () Bool)

(assert (=> b!907443 (= e!592429 e!592428)))

(declare-fun res!412668 () Bool)

(assert (=> b!907443 (=> (not res!412668) (not e!592428))))

(assert (=> b!907443 (= res!412668 call!54376)))

(declare-fun b!907444 () Bool)

(declare-fun e!592426 () Bool)

(declare-fun e!592425 () Bool)

(assert (=> b!907444 (= e!592426 e!592425)))

(declare-fun res!412666 () Bool)

(declare-fun nullable!648 (Regex!2406) Bool)

(assert (=> b!907444 (= res!412666 (not (nullable!648 (reg!2735 r!15766))))))

(assert (=> b!907444 (=> (not res!412666) (not e!592425))))

(declare-fun d!278947 () Bool)

(declare-fun res!412667 () Bool)

(declare-fun e!592427 () Bool)

(assert (=> d!278947 (=> res!412667 e!592427)))

(assert (=> d!278947 (= res!412667 (is-ElementMatch!2406 r!15766))))

(assert (=> d!278947 (= (validRegex!875 r!15766) e!592427)))

(declare-fun b!907445 () Bool)

(assert (=> b!907445 (= e!592427 e!592426)))

(declare-fun c!146981 () Bool)

(assert (=> b!907445 (= c!146981 (is-Star!2406 r!15766))))

(declare-fun b!907446 () Bool)

(assert (=> b!907446 (= e!592425 call!54378)))

(declare-fun b!907447 () Bool)

(assert (=> b!907447 (= e!592426 e!592430)))

(declare-fun c!146982 () Bool)

(assert (=> b!907447 (= c!146982 (is-Union!2406 r!15766))))

(declare-fun bm!54372 () Bool)

(assert (=> bm!54372 (= call!54378 (validRegex!875 (ite c!146981 (reg!2735 r!15766) (ite c!146982 (regOne!5325 r!15766) (regOne!5324 r!15766)))))))

(declare-fun bm!54373 () Bool)

(assert (=> bm!54373 (= call!54377 (validRegex!875 (ite c!146982 (regTwo!5325 r!15766) (regTwo!5324 r!15766))))))

(declare-fun b!907448 () Bool)

(assert (=> b!907448 (= e!592424 call!54377)))

(assert (= (and d!278947 (not res!412667)) b!907445))

(assert (= (and b!907445 c!146981) b!907444))

(assert (= (and b!907445 (not c!146981)) b!907447))

(assert (= (and b!907444 res!412666) b!907446))

(assert (= (and b!907447 c!146982) b!907442))

(assert (= (and b!907447 (not c!146982)) b!907440))

(assert (= (and b!907442 res!412665) b!907448))

(assert (= (and b!907440 (not res!412669)) b!907443))

(assert (= (and b!907443 res!412668) b!907441))

(assert (= (or b!907448 b!907441) bm!54373))

(assert (= (or b!907442 b!907443) bm!54371))

(assert (= (or b!907446 bm!54371) bm!54372))

(declare-fun m!1141737 () Bool)

(assert (=> b!907444 m!1141737))

(declare-fun m!1141739 () Bool)

(assert (=> bm!54372 m!1141739))

(declare-fun m!1141741 () Bool)

(assert (=> bm!54373 m!1141741))

(assert (=> start!81596 d!278947))

(declare-fun bs!235552 () Bool)

(declare-fun b!907482 () Bool)

(assert (= bs!235552 (and b!907482 b!907368)))

(declare-fun lambda!28721 () Int)

(assert (=> bs!235552 (not (= lambda!28721 lambda!28707))))

(assert (=> bs!235552 (not (= lambda!28721 lambda!28708))))

(assert (=> b!907482 true))

(assert (=> b!907482 true))

(declare-fun bs!235553 () Bool)

(declare-fun b!907484 () Bool)

(assert (= bs!235553 (and b!907484 b!907368)))

(declare-fun lambda!28722 () Int)

(assert (=> bs!235553 (not (= lambda!28722 lambda!28707))))

(assert (=> bs!235553 (= (= (regOne!5324 r!15766) EmptyExpr!2406) (= lambda!28722 lambda!28708))))

(declare-fun bs!235554 () Bool)

(assert (= bs!235554 (and b!907484 b!907482)))

(assert (=> bs!235554 (not (= lambda!28722 lambda!28721))))

(assert (=> b!907484 true))

(assert (=> b!907484 true))

(declare-fun b!907481 () Bool)

(declare-fun e!592454 () Bool)

(declare-fun call!54384 () Bool)

(assert (=> b!907481 (= e!592454 call!54384)))

(declare-fun e!592452 () Bool)

(declare-fun call!54383 () Bool)

(assert (=> b!907482 (= e!592452 call!54383)))

(declare-fun b!907483 () Bool)

(declare-fun e!592453 () Bool)

(assert (=> b!907483 (= e!592454 e!592453)))

(declare-fun res!412688 () Bool)

(assert (=> b!907483 (= res!412688 (not (is-EmptyLang!2406 r!15766)))))

(assert (=> b!907483 (=> (not res!412688) (not e!592453))))

(declare-fun bm!54378 () Bool)

(declare-fun c!146994 () Bool)

(assert (=> bm!54378 (= call!54383 (Exists!181 (ite c!146994 lambda!28721 lambda!28722)))))

(declare-fun e!592449 () Bool)

(assert (=> b!907484 (= e!592449 call!54383)))

(declare-fun d!278949 () Bool)

(declare-fun c!146993 () Bool)

(assert (=> d!278949 (= c!146993 (is-EmptyExpr!2406 r!15766))))

(assert (=> d!278949 (= (matchRSpec!207 r!15766 s!10566) e!592454)))

(declare-fun b!907485 () Bool)

(declare-fun c!146991 () Bool)

(assert (=> b!907485 (= c!146991 (is-Union!2406 r!15766))))

(declare-fun e!592451 () Bool)

(declare-fun e!592455 () Bool)

(assert (=> b!907485 (= e!592451 e!592455)))

(declare-fun b!907486 () Bool)

(declare-fun res!412687 () Bool)

(assert (=> b!907486 (=> res!412687 e!592452)))

(assert (=> b!907486 (= res!412687 call!54384)))

(assert (=> b!907486 (= e!592449 e!592452)))

(declare-fun b!907487 () Bool)

(declare-fun c!146992 () Bool)

(assert (=> b!907487 (= c!146992 (is-ElementMatch!2406 r!15766))))

(assert (=> b!907487 (= e!592453 e!592451)))

(declare-fun b!907488 () Bool)

(declare-fun e!592450 () Bool)

(assert (=> b!907488 (= e!592455 e!592450)))

(declare-fun res!412686 () Bool)

(assert (=> b!907488 (= res!412686 (matchRSpec!207 (regOne!5325 r!15766) s!10566))))

(assert (=> b!907488 (=> res!412686 e!592450)))

(declare-fun b!907489 () Bool)

(assert (=> b!907489 (= e!592450 (matchRSpec!207 (regTwo!5325 r!15766) s!10566))))

(declare-fun b!907490 () Bool)

(assert (=> b!907490 (= e!592451 (= s!10566 (Cons!9620 (c!146975 r!15766) Nil!9620)))))

(declare-fun bm!54379 () Bool)

(assert (=> bm!54379 (= call!54384 (isEmpty!5834 s!10566))))

(declare-fun b!907491 () Bool)

(assert (=> b!907491 (= e!592455 e!592449)))

(assert (=> b!907491 (= c!146994 (is-Star!2406 r!15766))))

(assert (= (and d!278949 c!146993) b!907481))

(assert (= (and d!278949 (not c!146993)) b!907483))

(assert (= (and b!907483 res!412688) b!907487))

(assert (= (and b!907487 c!146992) b!907490))

(assert (= (and b!907487 (not c!146992)) b!907485))

(assert (= (and b!907485 c!146991) b!907488))

(assert (= (and b!907485 (not c!146991)) b!907491))

(assert (= (and b!907488 (not res!412686)) b!907489))

(assert (= (and b!907491 c!146994) b!907486))

(assert (= (and b!907491 (not c!146994)) b!907484))

(assert (= (and b!907486 (not res!412687)) b!907482))

(assert (= (or b!907482 b!907484) bm!54378))

(assert (= (or b!907481 b!907486) bm!54379))

(declare-fun m!1141743 () Bool)

(assert (=> bm!54378 m!1141743))

(declare-fun m!1141745 () Bool)

(assert (=> b!907488 m!1141745))

(declare-fun m!1141747 () Bool)

(assert (=> b!907489 m!1141747))

(assert (=> bm!54379 m!1141677))

(assert (=> b!907366 d!278949))

(declare-fun b!907536 () Bool)

(declare-fun res!412718 () Bool)

(declare-fun e!592483 () Bool)

(assert (=> b!907536 (=> res!412718 e!592483)))

(declare-fun e!592480 () Bool)

(assert (=> b!907536 (= res!412718 e!592480)))

(declare-fun res!412722 () Bool)

(assert (=> b!907536 (=> (not res!412722) (not e!592480))))

(declare-fun lt!336044 () Bool)

(assert (=> b!907536 (= res!412722 lt!336044)))

(declare-fun b!907537 () Bool)

(declare-fun e!592482 () Bool)

(declare-fun e!592484 () Bool)

(assert (=> b!907537 (= e!592482 e!592484)))

(declare-fun c!147006 () Bool)

(assert (=> b!907537 (= c!147006 (is-EmptyLang!2406 r!15766))))

(declare-fun b!907538 () Bool)

(declare-fun e!592486 () Bool)

(declare-fun derivativeStep!459 (Regex!2406 C!5382) Regex!2406)

(declare-fun head!1612 (List!9636) C!5382)

(declare-fun tail!1174 (List!9636) List!9636)

(assert (=> b!907538 (= e!592486 (matchR!944 (derivativeStep!459 r!15766 (head!1612 s!10566)) (tail!1174 s!10566)))))

(declare-fun b!907539 () Bool)

(declare-fun res!412716 () Bool)

(assert (=> b!907539 (=> (not res!412716) (not e!592480))))

(assert (=> b!907539 (= res!412716 (isEmpty!5834 (tail!1174 s!10566)))))

(declare-fun b!907540 () Bool)

(assert (=> b!907540 (= e!592486 (nullable!648 r!15766))))

(declare-fun b!907541 () Bool)

(declare-fun e!592481 () Bool)

(assert (=> b!907541 (= e!592483 e!592481)))

(declare-fun res!412719 () Bool)

(assert (=> b!907541 (=> (not res!412719) (not e!592481))))

(assert (=> b!907541 (= res!412719 (not lt!336044))))

(declare-fun b!907542 () Bool)

(declare-fun e!592485 () Bool)

(assert (=> b!907542 (= e!592481 e!592485)))

(declare-fun res!412715 () Bool)

(assert (=> b!907542 (=> res!412715 e!592485)))

(declare-fun call!54387 () Bool)

(assert (=> b!907542 (= res!412715 call!54387)))

(declare-fun b!907543 () Bool)

(declare-fun res!412717 () Bool)

(assert (=> b!907543 (=> (not res!412717) (not e!592480))))

(assert (=> b!907543 (= res!412717 (not call!54387))))

(declare-fun b!907544 () Bool)

(declare-fun res!412721 () Bool)

(assert (=> b!907544 (=> res!412721 e!592485)))

(assert (=> b!907544 (= res!412721 (not (isEmpty!5834 (tail!1174 s!10566))))))

(declare-fun d!278955 () Bool)

(assert (=> d!278955 e!592482))

(declare-fun c!147007 () Bool)

(assert (=> d!278955 (= c!147007 (is-EmptyExpr!2406 r!15766))))

(assert (=> d!278955 (= lt!336044 e!592486)))

(declare-fun c!147005 () Bool)

(assert (=> d!278955 (= c!147005 (isEmpty!5834 s!10566))))

(assert (=> d!278955 (validRegex!875 r!15766)))

(assert (=> d!278955 (= (matchR!944 r!15766 s!10566) lt!336044)))

(declare-fun b!907545 () Bool)

(assert (=> b!907545 (= e!592482 (= lt!336044 call!54387))))

(declare-fun b!907546 () Bool)

(assert (=> b!907546 (= e!592480 (= (head!1612 s!10566) (c!146975 r!15766)))))

(declare-fun b!907547 () Bool)

(assert (=> b!907547 (= e!592484 (not lt!336044))))

(declare-fun b!907548 () Bool)

(assert (=> b!907548 (= e!592485 (not (= (head!1612 s!10566) (c!146975 r!15766))))))

(declare-fun b!907549 () Bool)

(declare-fun res!412720 () Bool)

(assert (=> b!907549 (=> res!412720 e!592483)))

(assert (=> b!907549 (= res!412720 (not (is-ElementMatch!2406 r!15766)))))

(assert (=> b!907549 (= e!592484 e!592483)))

(declare-fun bm!54382 () Bool)

(assert (=> bm!54382 (= call!54387 (isEmpty!5834 s!10566))))

(assert (= (and d!278955 c!147005) b!907540))

(assert (= (and d!278955 (not c!147005)) b!907538))

(assert (= (and d!278955 c!147007) b!907545))

(assert (= (and d!278955 (not c!147007)) b!907537))

(assert (= (and b!907537 c!147006) b!907547))

(assert (= (and b!907537 (not c!147006)) b!907549))

(assert (= (and b!907549 (not res!412720)) b!907536))

(assert (= (and b!907536 res!412722) b!907543))

(assert (= (and b!907543 res!412717) b!907539))

(assert (= (and b!907539 res!412716) b!907546))

(assert (= (and b!907536 (not res!412718)) b!907541))

(assert (= (and b!907541 res!412719) b!907542))

(assert (= (and b!907542 (not res!412715)) b!907544))

(assert (= (and b!907544 (not res!412721)) b!907548))

(assert (= (or b!907545 b!907542 b!907543) bm!54382))

(declare-fun m!1141749 () Bool)

(assert (=> b!907540 m!1141749))

(assert (=> bm!54382 m!1141677))

(declare-fun m!1141751 () Bool)

(assert (=> b!907539 m!1141751))

(assert (=> b!907539 m!1141751))

(declare-fun m!1141753 () Bool)

(assert (=> b!907539 m!1141753))

(declare-fun m!1141755 () Bool)

(assert (=> b!907548 m!1141755))

(assert (=> d!278955 m!1141677))

(assert (=> d!278955 m!1141665))

(assert (=> b!907546 m!1141755))

(assert (=> b!907538 m!1141755))

(assert (=> b!907538 m!1141755))

(declare-fun m!1141757 () Bool)

(assert (=> b!907538 m!1141757))

(assert (=> b!907538 m!1141751))

(assert (=> b!907538 m!1141757))

(assert (=> b!907538 m!1141751))

(declare-fun m!1141759 () Bool)

(assert (=> b!907538 m!1141759))

(assert (=> b!907544 m!1141751))

(assert (=> b!907544 m!1141751))

(assert (=> b!907544 m!1141753))

(assert (=> b!907366 d!278955))

(declare-fun d!278957 () Bool)

(assert (=> d!278957 (= (matchR!944 r!15766 s!10566) (matchRSpec!207 r!15766 s!10566))))

(declare-fun lt!336047 () Unit!14431)

(declare-fun choose!5497 (Regex!2406 List!9636) Unit!14431)

(assert (=> d!278957 (= lt!336047 (choose!5497 r!15766 s!10566))))

(assert (=> d!278957 (validRegex!875 r!15766)))

(assert (=> d!278957 (= (mainMatchTheorem!207 r!15766 s!10566) lt!336047)))

(declare-fun bs!235555 () Bool)

(assert (= bs!235555 d!278957))

(assert (=> bs!235555 m!1141697))

(assert (=> bs!235555 m!1141695))

(declare-fun m!1141761 () Bool)

(assert (=> bs!235555 m!1141761))

(assert (=> bs!235555 m!1141665))

(assert (=> b!907366 d!278957))

(declare-fun b!907552 () Bool)

(declare-fun res!412726 () Bool)

(declare-fun e!592490 () Bool)

(assert (=> b!907552 (=> res!412726 e!592490)))

(declare-fun e!592487 () Bool)

(assert (=> b!907552 (= res!412726 e!592487)))

(declare-fun res!412730 () Bool)

(assert (=> b!907552 (=> (not res!412730) (not e!592487))))

(declare-fun lt!336048 () Bool)

(assert (=> b!907552 (= res!412730 lt!336048)))

(declare-fun b!907553 () Bool)

(declare-fun e!592489 () Bool)

(declare-fun e!592491 () Bool)

(assert (=> b!907553 (= e!592489 e!592491)))

(declare-fun c!147009 () Bool)

(assert (=> b!907553 (= c!147009 (is-EmptyLang!2406 lt!336008))))

(declare-fun b!907554 () Bool)

(declare-fun e!592493 () Bool)

(assert (=> b!907554 (= e!592493 (matchR!944 (derivativeStep!459 lt!336008 (head!1612 s!10566)) (tail!1174 s!10566)))))

(declare-fun b!907555 () Bool)

(declare-fun res!412724 () Bool)

(assert (=> b!907555 (=> (not res!412724) (not e!592487))))

(assert (=> b!907555 (= res!412724 (isEmpty!5834 (tail!1174 s!10566)))))

(declare-fun b!907556 () Bool)

(assert (=> b!907556 (= e!592493 (nullable!648 lt!336008))))

(declare-fun b!907557 () Bool)

(declare-fun e!592488 () Bool)

(assert (=> b!907557 (= e!592490 e!592488)))

(declare-fun res!412727 () Bool)

(assert (=> b!907557 (=> (not res!412727) (not e!592488))))

(assert (=> b!907557 (= res!412727 (not lt!336048))))

(declare-fun b!907558 () Bool)

(declare-fun e!592492 () Bool)

(assert (=> b!907558 (= e!592488 e!592492)))

(declare-fun res!412723 () Bool)

(assert (=> b!907558 (=> res!412723 e!592492)))

(declare-fun call!54388 () Bool)

(assert (=> b!907558 (= res!412723 call!54388)))

(declare-fun b!907559 () Bool)

(declare-fun res!412725 () Bool)

(assert (=> b!907559 (=> (not res!412725) (not e!592487))))

(assert (=> b!907559 (= res!412725 (not call!54388))))

(declare-fun b!907560 () Bool)

(declare-fun res!412729 () Bool)

(assert (=> b!907560 (=> res!412729 e!592492)))

(assert (=> b!907560 (= res!412729 (not (isEmpty!5834 (tail!1174 s!10566))))))

(declare-fun d!278959 () Bool)

(assert (=> d!278959 e!592489))

(declare-fun c!147010 () Bool)

(assert (=> d!278959 (= c!147010 (is-EmptyExpr!2406 lt!336008))))

(assert (=> d!278959 (= lt!336048 e!592493)))

(declare-fun c!147008 () Bool)

(assert (=> d!278959 (= c!147008 (isEmpty!5834 s!10566))))

(assert (=> d!278959 (validRegex!875 lt!336008)))

(assert (=> d!278959 (= (matchR!944 lt!336008 s!10566) lt!336048)))

(declare-fun b!907561 () Bool)

(assert (=> b!907561 (= e!592489 (= lt!336048 call!54388))))

(declare-fun b!907562 () Bool)

(assert (=> b!907562 (= e!592487 (= (head!1612 s!10566) (c!146975 lt!336008)))))

(declare-fun b!907563 () Bool)

(assert (=> b!907563 (= e!592491 (not lt!336048))))

(declare-fun b!907564 () Bool)

(assert (=> b!907564 (= e!592492 (not (= (head!1612 s!10566) (c!146975 lt!336008))))))

(declare-fun b!907565 () Bool)

(declare-fun res!412728 () Bool)

(assert (=> b!907565 (=> res!412728 e!592490)))

(assert (=> b!907565 (= res!412728 (not (is-ElementMatch!2406 lt!336008)))))

(assert (=> b!907565 (= e!592491 e!592490)))

(declare-fun bm!54383 () Bool)

(assert (=> bm!54383 (= call!54388 (isEmpty!5834 s!10566))))

(assert (= (and d!278959 c!147008) b!907556))

(assert (= (and d!278959 (not c!147008)) b!907554))

(assert (= (and d!278959 c!147010) b!907561))

(assert (= (and d!278959 (not c!147010)) b!907553))

(assert (= (and b!907553 c!147009) b!907563))

(assert (= (and b!907553 (not c!147009)) b!907565))

(assert (= (and b!907565 (not res!412728)) b!907552))

(assert (= (and b!907552 res!412730) b!907559))

(assert (= (and b!907559 res!412725) b!907555))

(assert (= (and b!907555 res!412724) b!907562))

(assert (= (and b!907552 (not res!412726)) b!907557))

(assert (= (and b!907557 res!412727) b!907558))

(assert (= (and b!907558 (not res!412723)) b!907560))

(assert (= (and b!907560 (not res!412729)) b!907564))

(assert (= (or b!907561 b!907558 b!907559) bm!54383))

(declare-fun m!1141763 () Bool)

(assert (=> b!907556 m!1141763))

(assert (=> bm!54383 m!1141677))

(assert (=> b!907555 m!1141751))

(assert (=> b!907555 m!1141751))

(assert (=> b!907555 m!1141753))

(assert (=> b!907564 m!1141755))

(assert (=> d!278959 m!1141677))

(declare-fun m!1141765 () Bool)

(assert (=> d!278959 m!1141765))

(assert (=> b!907562 m!1141755))

(assert (=> b!907554 m!1141755))

(assert (=> b!907554 m!1141755))

(declare-fun m!1141767 () Bool)

(assert (=> b!907554 m!1141767))

(assert (=> b!907554 m!1141751))

(assert (=> b!907554 m!1141767))

(assert (=> b!907554 m!1141751))

(declare-fun m!1141769 () Bool)

(assert (=> b!907554 m!1141769))

(assert (=> b!907560 m!1141751))

(assert (=> b!907560 m!1141751))

(assert (=> b!907560 m!1141753))

(assert (=> b!907362 d!278959))

(declare-fun b!907566 () Bool)

(declare-fun res!412734 () Bool)

(declare-fun e!592497 () Bool)

(assert (=> b!907566 (=> res!412734 e!592497)))

(declare-fun e!592494 () Bool)

(assert (=> b!907566 (= res!412734 e!592494)))

(declare-fun res!412738 () Bool)

(assert (=> b!907566 (=> (not res!412738) (not e!592494))))

(declare-fun lt!336049 () Bool)

(assert (=> b!907566 (= res!412738 lt!336049)))

(declare-fun b!907567 () Bool)

(declare-fun e!592496 () Bool)

(declare-fun e!592498 () Bool)

(assert (=> b!907567 (= e!592496 e!592498)))

(declare-fun c!147012 () Bool)

(assert (=> b!907567 (= c!147012 (is-EmptyLang!2406 (regTwo!5324 r!15766)))))

(declare-fun b!907568 () Bool)

(declare-fun e!592500 () Bool)

(assert (=> b!907568 (= e!592500 (matchR!944 (derivativeStep!459 (regTwo!5324 r!15766) (head!1612 s!10566)) (tail!1174 s!10566)))))

(declare-fun b!907569 () Bool)

(declare-fun res!412732 () Bool)

(assert (=> b!907569 (=> (not res!412732) (not e!592494))))

(assert (=> b!907569 (= res!412732 (isEmpty!5834 (tail!1174 s!10566)))))

(declare-fun b!907570 () Bool)

(assert (=> b!907570 (= e!592500 (nullable!648 (regTwo!5324 r!15766)))))

(declare-fun b!907571 () Bool)

(declare-fun e!592495 () Bool)

(assert (=> b!907571 (= e!592497 e!592495)))

(declare-fun res!412735 () Bool)

(assert (=> b!907571 (=> (not res!412735) (not e!592495))))

(assert (=> b!907571 (= res!412735 (not lt!336049))))

(declare-fun b!907572 () Bool)

(declare-fun e!592499 () Bool)

(assert (=> b!907572 (= e!592495 e!592499)))

(declare-fun res!412731 () Bool)

(assert (=> b!907572 (=> res!412731 e!592499)))

(declare-fun call!54389 () Bool)

(assert (=> b!907572 (= res!412731 call!54389)))

(declare-fun b!907573 () Bool)

(declare-fun res!412733 () Bool)

(assert (=> b!907573 (=> (not res!412733) (not e!592494))))

(assert (=> b!907573 (= res!412733 (not call!54389))))

(declare-fun b!907574 () Bool)

(declare-fun res!412737 () Bool)

(assert (=> b!907574 (=> res!412737 e!592499)))

(assert (=> b!907574 (= res!412737 (not (isEmpty!5834 (tail!1174 s!10566))))))

(declare-fun d!278961 () Bool)

(assert (=> d!278961 e!592496))

(declare-fun c!147013 () Bool)

(assert (=> d!278961 (= c!147013 (is-EmptyExpr!2406 (regTwo!5324 r!15766)))))

(assert (=> d!278961 (= lt!336049 e!592500)))

(declare-fun c!147011 () Bool)

(assert (=> d!278961 (= c!147011 (isEmpty!5834 s!10566))))

(assert (=> d!278961 (validRegex!875 (regTwo!5324 r!15766))))

(assert (=> d!278961 (= (matchR!944 (regTwo!5324 r!15766) s!10566) lt!336049)))

(declare-fun b!907575 () Bool)

(assert (=> b!907575 (= e!592496 (= lt!336049 call!54389))))

(declare-fun b!907576 () Bool)

(assert (=> b!907576 (= e!592494 (= (head!1612 s!10566) (c!146975 (regTwo!5324 r!15766))))))

(declare-fun b!907577 () Bool)

(assert (=> b!907577 (= e!592498 (not lt!336049))))

(declare-fun b!907578 () Bool)

(assert (=> b!907578 (= e!592499 (not (= (head!1612 s!10566) (c!146975 (regTwo!5324 r!15766)))))))

(declare-fun b!907579 () Bool)

(declare-fun res!412736 () Bool)

(assert (=> b!907579 (=> res!412736 e!592497)))

(assert (=> b!907579 (= res!412736 (not (is-ElementMatch!2406 (regTwo!5324 r!15766))))))

(assert (=> b!907579 (= e!592498 e!592497)))

(declare-fun bm!54384 () Bool)

(assert (=> bm!54384 (= call!54389 (isEmpty!5834 s!10566))))

(assert (= (and d!278961 c!147011) b!907570))

(assert (= (and d!278961 (not c!147011)) b!907568))

(assert (= (and d!278961 c!147013) b!907575))

(assert (= (and d!278961 (not c!147013)) b!907567))

(assert (= (and b!907567 c!147012) b!907577))

(assert (= (and b!907567 (not c!147012)) b!907579))

(assert (= (and b!907579 (not res!412736)) b!907566))

(assert (= (and b!907566 res!412738) b!907573))

(assert (= (and b!907573 res!412733) b!907569))

(assert (= (and b!907569 res!412732) b!907576))

(assert (= (and b!907566 (not res!412734)) b!907571))

(assert (= (and b!907571 res!412735) b!907572))

(assert (= (and b!907572 (not res!412731)) b!907574))

(assert (= (and b!907574 (not res!412737)) b!907578))

(assert (= (or b!907575 b!907572 b!907573) bm!54384))

(declare-fun m!1141771 () Bool)

(assert (=> b!907570 m!1141771))

(assert (=> bm!54384 m!1141677))

(assert (=> b!907569 m!1141751))

(assert (=> b!907569 m!1141751))

(assert (=> b!907569 m!1141753))

(assert (=> b!907578 m!1141755))

(assert (=> d!278961 m!1141677))

(declare-fun m!1141773 () Bool)

(assert (=> d!278961 m!1141773))

(assert (=> b!907576 m!1141755))

(assert (=> b!907568 m!1141755))

(assert (=> b!907568 m!1141755))

(declare-fun m!1141775 () Bool)

(assert (=> b!907568 m!1141775))

(assert (=> b!907568 m!1141751))

(assert (=> b!907568 m!1141775))

(assert (=> b!907568 m!1141751))

(declare-fun m!1141777 () Bool)

(assert (=> b!907568 m!1141777))

(assert (=> b!907574 m!1141751))

(assert (=> b!907574 m!1141751))

(assert (=> b!907574 m!1141753))

(assert (=> b!907362 d!278961))

(declare-fun b!907611 () Bool)

(declare-fun e!592518 () Regex!2406)

(declare-fun call!54402 () Regex!2406)

(declare-fun call!54400 () Regex!2406)

(assert (=> b!907611 (= e!592518 (Union!2406 call!54402 call!54400))))

(declare-fun b!907612 () Bool)

(declare-fun e!592521 () Regex!2406)

(assert (=> b!907612 (= e!592521 (regTwo!5324 r!15766))))

(declare-fun b!907613 () Bool)

(declare-fun e!592519 () Regex!2406)

(declare-fun call!54404 () Regex!2406)

(assert (=> b!907613 (= e!592519 call!54404)))

(declare-fun d!278963 () Bool)

(declare-fun e!592522 () Bool)

(assert (=> d!278963 e!592522))

(declare-fun res!412746 () Bool)

(assert (=> d!278963 (=> (not res!412746) (not e!592522))))

(declare-fun lt!336055 () Regex!2406)

(assert (=> d!278963 (= res!412746 (validRegex!875 lt!336055))))

(assert (=> d!278963 (= lt!336055 e!592519)))

(declare-fun c!147027 () Bool)

(assert (=> d!278963 (= c!147027 (and (is-Concat!4239 (regTwo!5324 r!15766)) (is-EmptyExpr!2406 (regOne!5324 (regTwo!5324 r!15766)))))))

(assert (=> d!278963 (validRegex!875 (regTwo!5324 r!15766))))

(assert (=> d!278963 (= (removeUselessConcat!105 (regTwo!5324 r!15766)) lt!336055)))

(declare-fun c!147029 () Bool)

(declare-fun call!54403 () Regex!2406)

(declare-fun bm!54395 () Bool)

(declare-fun c!147030 () Bool)

(declare-fun c!147028 () Bool)

(assert (=> bm!54395 (= call!54403 (removeUselessConcat!105 (ite c!147029 (regOne!5324 (regTwo!5324 r!15766)) (ite c!147030 (regTwo!5324 (regTwo!5324 r!15766)) (ite c!147028 (regTwo!5325 (regTwo!5324 r!15766)) (reg!2735 (regTwo!5324 r!15766)))))))))

(declare-fun bm!54396 () Bool)

(declare-fun call!54401 () Regex!2406)

(assert (=> bm!54396 (= call!54400 call!54401)))

(declare-fun b!907614 () Bool)

(declare-fun c!147026 () Bool)

(assert (=> b!907614 (= c!147026 (is-Star!2406 (regTwo!5324 r!15766)))))

(assert (=> b!907614 (= e!592518 e!592521)))

(declare-fun b!907615 () Bool)

(declare-fun e!592523 () Regex!2406)

(assert (=> b!907615 (= e!592523 call!54403)))

(declare-fun b!907616 () Bool)

(assert (=> b!907616 (= e!592522 (= (nullable!648 lt!336055) (nullable!648 (regTwo!5324 r!15766))))))

(declare-fun bm!54397 () Bool)

(assert (=> bm!54397 (= call!54404 (removeUselessConcat!105 (ite c!147027 (regTwo!5324 (regTwo!5324 r!15766)) (ite c!147030 (regOne!5324 (regTwo!5324 r!15766)) (regOne!5325 (regTwo!5324 r!15766))))))))

(declare-fun b!907617 () Bool)

(assert (=> b!907617 (= e!592521 (Star!2406 call!54400))))

(declare-fun b!907618 () Bool)

(declare-fun e!592520 () Regex!2406)

(assert (=> b!907618 (= e!592520 (Concat!4239 call!54402 call!54401))))

(declare-fun b!907619 () Bool)

(assert (=> b!907619 (= c!147030 (is-Concat!4239 (regTwo!5324 r!15766)))))

(assert (=> b!907619 (= e!592523 e!592520)))

(declare-fun b!907620 () Bool)

(assert (=> b!907620 (= e!592519 e!592523)))

(assert (=> b!907620 (= c!147029 (and (is-Concat!4239 (regTwo!5324 r!15766)) (is-EmptyExpr!2406 (regTwo!5324 (regTwo!5324 r!15766)))))))

(declare-fun bm!54398 () Bool)

(assert (=> bm!54398 (= call!54401 call!54403)))

(declare-fun bm!54399 () Bool)

(assert (=> bm!54399 (= call!54402 call!54404)))

(declare-fun b!907621 () Bool)

(assert (=> b!907621 (= e!592520 e!592518)))

(assert (=> b!907621 (= c!147028 (is-Union!2406 (regTwo!5324 r!15766)))))

(assert (= (and d!278963 c!147027) b!907613))

(assert (= (and d!278963 (not c!147027)) b!907620))

(assert (= (and b!907620 c!147029) b!907615))

(assert (= (and b!907620 (not c!147029)) b!907619))

(assert (= (and b!907619 c!147030) b!907618))

(assert (= (and b!907619 (not c!147030)) b!907621))

(assert (= (and b!907621 c!147028) b!907611))

(assert (= (and b!907621 (not c!147028)) b!907614))

(assert (= (and b!907614 c!147026) b!907617))

(assert (= (and b!907614 (not c!147026)) b!907612))

(assert (= (or b!907611 b!907617) bm!54396))

(assert (= (or b!907618 bm!54396) bm!54398))

(assert (= (or b!907618 b!907611) bm!54399))

(assert (= (or b!907615 bm!54398) bm!54395))

(assert (= (or b!907613 bm!54399) bm!54397))

(assert (= (and d!278963 res!412746) b!907616))

(declare-fun m!1141801 () Bool)

(assert (=> d!278963 m!1141801))

(assert (=> d!278963 m!1141773))

(declare-fun m!1141803 () Bool)

(assert (=> bm!54395 m!1141803))

(declare-fun m!1141805 () Bool)

(assert (=> b!907616 m!1141805))

(assert (=> b!907616 m!1141771))

(declare-fun m!1141807 () Bool)

(assert (=> bm!54397 m!1141807))

(assert (=> b!907362 d!278963))

(declare-fun d!278967 () Bool)

(assert (=> d!278967 (= (matchR!944 (regTwo!5324 r!15766) s!10566) (matchR!944 (removeUselessConcat!105 (regTwo!5324 r!15766)) s!10566))))

(declare-fun lt!336058 () Unit!14431)

(declare-fun choose!5498 (Regex!2406 List!9636) Unit!14431)

(assert (=> d!278967 (= lt!336058 (choose!5498 (regTwo!5324 r!15766) s!10566))))

(assert (=> d!278967 (validRegex!875 (regTwo!5324 r!15766))))

(assert (=> d!278967 (= (lemmaRemoveUselessConcatSound!93 (regTwo!5324 r!15766) s!10566) lt!336058)))

(declare-fun bs!235556 () Bool)

(assert (= bs!235556 d!278967))

(assert (=> bs!235556 m!1141691))

(assert (=> bs!235556 m!1141691))

(declare-fun m!1141809 () Bool)

(assert (=> bs!235556 m!1141809))

(declare-fun m!1141811 () Bool)

(assert (=> bs!235556 m!1141811))

(assert (=> bs!235556 m!1141773))

(assert (=> bs!235556 m!1141689))

(assert (=> b!907362 d!278967))

(declare-fun d!278969 () Bool)

(assert (=> d!278969 (= (isDefined!1687 lt!336005) (not (isEmpty!5835 lt!336005)))))

(declare-fun bs!235557 () Bool)

(assert (= bs!235557 d!278969))

(assert (=> bs!235557 m!1141667))

(assert (=> b!907368 d!278969))

(declare-fun d!278971 () Bool)

(declare-fun choose!5499 (Int) Bool)

(assert (=> d!278971 (= (Exists!181 lambda!28707) (choose!5499 lambda!28707))))

(declare-fun bs!235558 () Bool)

(assert (= bs!235558 d!278971))

(declare-fun m!1141813 () Bool)

(assert (=> bs!235558 m!1141813))

(assert (=> b!907368 d!278971))

(declare-fun d!278973 () Bool)

(assert (=> d!278973 (= (isEmpty!5834 s!10566) (is-Nil!9620 s!10566))))

(assert (=> b!907368 d!278973))

(declare-fun b!907644 () Bool)

(declare-fun e!592540 () Option!2045)

(declare-fun e!592539 () Option!2045)

(assert (=> b!907644 (= e!592540 e!592539)))

(declare-fun c!147035 () Bool)

(assert (=> b!907644 (= c!147035 (is-Nil!9620 s!10566))))

(declare-fun b!907645 () Bool)

(declare-fun res!412765 () Bool)

(declare-fun e!592536 () Bool)

(assert (=> b!907645 (=> (not res!412765) (not e!592536))))

(declare-fun lt!336068 () Option!2045)

(declare-fun get!3088 (Option!2045) tuple2!10806)

(assert (=> b!907645 (= res!412765 (matchR!944 EmptyExpr!2406 (_1!6229 (get!3088 lt!336068))))))

(declare-fun b!907646 () Bool)

(assert (=> b!907646 (= e!592540 (Some!2044 (tuple2!10807 Nil!9620 s!10566)))))

(declare-fun b!907647 () Bool)

(declare-fun e!592538 () Bool)

(assert (=> b!907647 (= e!592538 (not (isDefined!1687 lt!336068)))))

(declare-fun b!907648 () Bool)

(declare-fun ++!2527 (List!9636 List!9636) List!9636)

(assert (=> b!907648 (= e!592536 (= (++!2527 (_1!6229 (get!3088 lt!336068)) (_2!6229 (get!3088 lt!336068))) s!10566))))

(declare-fun b!907649 () Bool)

(assert (=> b!907649 (= e!592539 None!2044)))

(declare-fun d!278975 () Bool)

(assert (=> d!278975 e!592538))

(declare-fun res!412763 () Bool)

(assert (=> d!278975 (=> res!412763 e!592538)))

(assert (=> d!278975 (= res!412763 e!592536)))

(declare-fun res!412764 () Bool)

(assert (=> d!278975 (=> (not res!412764) (not e!592536))))

(assert (=> d!278975 (= res!412764 (isDefined!1687 lt!336068))))

(assert (=> d!278975 (= lt!336068 e!592540)))

(declare-fun c!147036 () Bool)

(declare-fun e!592537 () Bool)

(assert (=> d!278975 (= c!147036 e!592537)))

(declare-fun res!412761 () Bool)

(assert (=> d!278975 (=> (not res!412761) (not e!592537))))

(assert (=> d!278975 (= res!412761 (matchR!944 EmptyExpr!2406 Nil!9620))))

(assert (=> d!278975 (validRegex!875 EmptyExpr!2406)))

(assert (=> d!278975 (= (findConcatSeparation!151 EmptyExpr!2406 (regTwo!5324 r!15766) Nil!9620 s!10566 s!10566) lt!336068)))

(declare-fun b!907650 () Bool)

(declare-fun res!412762 () Bool)

(assert (=> b!907650 (=> (not res!412762) (not e!592536))))

(assert (=> b!907650 (= res!412762 (matchR!944 (regTwo!5324 r!15766) (_2!6229 (get!3088 lt!336068))))))

(declare-fun b!907651 () Bool)

(assert (=> b!907651 (= e!592537 (matchR!944 (regTwo!5324 r!15766) s!10566))))

(declare-fun b!907652 () Bool)

(declare-fun lt!336070 () Unit!14431)

(declare-fun lt!336069 () Unit!14431)

(assert (=> b!907652 (= lt!336070 lt!336069)))

(assert (=> b!907652 (= (++!2527 (++!2527 Nil!9620 (Cons!9620 (h!15021 s!10566) Nil!9620)) (t!100682 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!144 (List!9636 C!5382 List!9636 List!9636) Unit!14431)

(assert (=> b!907652 (= lt!336069 (lemmaMoveElementToOtherListKeepsConcatEq!144 Nil!9620 (h!15021 s!10566) (t!100682 s!10566) s!10566))))

(assert (=> b!907652 (= e!592539 (findConcatSeparation!151 EmptyExpr!2406 (regTwo!5324 r!15766) (++!2527 Nil!9620 (Cons!9620 (h!15021 s!10566) Nil!9620)) (t!100682 s!10566) s!10566))))

(assert (= (and d!278975 res!412761) b!907651))

(assert (= (and d!278975 c!147036) b!907646))

(assert (= (and d!278975 (not c!147036)) b!907644))

(assert (= (and b!907644 c!147035) b!907649))

(assert (= (and b!907644 (not c!147035)) b!907652))

(assert (= (and d!278975 res!412764) b!907645))

(assert (= (and b!907645 res!412765) b!907650))

(assert (= (and b!907650 res!412762) b!907648))

(assert (= (and d!278975 (not res!412763)) b!907647))

(declare-fun m!1141821 () Bool)

(assert (=> b!907648 m!1141821))

(declare-fun m!1141823 () Bool)

(assert (=> b!907648 m!1141823))

(declare-fun m!1141825 () Bool)

(assert (=> b!907647 m!1141825))

(declare-fun m!1141827 () Bool)

(assert (=> b!907652 m!1141827))

(assert (=> b!907652 m!1141827))

(declare-fun m!1141829 () Bool)

(assert (=> b!907652 m!1141829))

(declare-fun m!1141831 () Bool)

(assert (=> b!907652 m!1141831))

(assert (=> b!907652 m!1141827))

(declare-fun m!1141833 () Bool)

(assert (=> b!907652 m!1141833))

(assert (=> b!907651 m!1141689))

(assert (=> b!907645 m!1141821))

(declare-fun m!1141835 () Bool)

(assert (=> b!907645 m!1141835))

(assert (=> b!907650 m!1141821))

(declare-fun m!1141837 () Bool)

(assert (=> b!907650 m!1141837))

(assert (=> d!278975 m!1141825))

(declare-fun m!1141839 () Bool)

(assert (=> d!278975 m!1141839))

(declare-fun m!1141841 () Bool)

(assert (=> d!278975 m!1141841))

(assert (=> b!907368 d!278975))

(declare-fun bs!235561 () Bool)

(declare-fun d!278979 () Bool)

(assert (= bs!235561 (and d!278979 b!907368)))

(declare-fun lambda!28728 () Int)

(assert (=> bs!235561 (= lambda!28728 lambda!28707)))

(assert (=> bs!235561 (not (= lambda!28728 lambda!28708))))

(declare-fun bs!235562 () Bool)

(assert (= bs!235562 (and d!278979 b!907482)))

(assert (=> bs!235562 (not (= lambda!28728 lambda!28721))))

(declare-fun bs!235563 () Bool)

(assert (= bs!235563 (and d!278979 b!907484)))

(assert (=> bs!235563 (not (= lambda!28728 lambda!28722))))

(assert (=> d!278979 true))

(assert (=> d!278979 true))

(assert (=> d!278979 true))

(assert (=> d!278979 (= (isDefined!1687 (findConcatSeparation!151 EmptyExpr!2406 (regTwo!5324 r!15766) Nil!9620 s!10566 s!10566)) (Exists!181 lambda!28728))))

(declare-fun lt!336073 () Unit!14431)

(declare-fun choose!5500 (Regex!2406 Regex!2406 List!9636) Unit!14431)

(assert (=> d!278979 (= lt!336073 (choose!5500 EmptyExpr!2406 (regTwo!5324 r!15766) s!10566))))

(assert (=> d!278979 (validRegex!875 EmptyExpr!2406)))

(assert (=> d!278979 (= (lemmaFindConcatSeparationEquivalentToExists!151 EmptyExpr!2406 (regTwo!5324 r!15766) s!10566) lt!336073)))

(declare-fun bs!235564 () Bool)

(assert (= bs!235564 d!278979))

(assert (=> bs!235564 m!1141679))

(declare-fun m!1141843 () Bool)

(assert (=> bs!235564 m!1141843))

(declare-fun m!1141845 () Bool)

(assert (=> bs!235564 m!1141845))

(assert (=> bs!235564 m!1141841))

(assert (=> bs!235564 m!1141679))

(declare-fun m!1141847 () Bool)

(assert (=> bs!235564 m!1141847))

(assert (=> b!907368 d!278979))

(declare-fun bs!235565 () Bool)

(declare-fun d!278981 () Bool)

(assert (= bs!235565 (and d!278981 b!907482)))

(declare-fun lambda!28737 () Int)

(assert (=> bs!235565 (not (= lambda!28737 lambda!28721))))

(declare-fun bs!235566 () Bool)

(assert (= bs!235566 (and d!278981 b!907368)))

(assert (=> bs!235566 (not (= lambda!28737 lambda!28708))))

(declare-fun bs!235567 () Bool)

(assert (= bs!235567 (and d!278981 d!278979)))

(assert (=> bs!235567 (= lambda!28737 lambda!28728)))

(assert (=> bs!235566 (= lambda!28737 lambda!28707)))

(declare-fun bs!235568 () Bool)

(assert (= bs!235568 (and d!278981 b!907484)))

(assert (=> bs!235568 (not (= lambda!28737 lambda!28722))))

(assert (=> d!278981 true))

(assert (=> d!278981 true))

(assert (=> d!278981 true))

(declare-fun lambda!28738 () Int)

(assert (=> bs!235566 (= lambda!28738 lambda!28708)))

(assert (=> bs!235567 (not (= lambda!28738 lambda!28728))))

(assert (=> bs!235566 (not (= lambda!28738 lambda!28707))))

(assert (=> bs!235568 (= (= EmptyExpr!2406 (regOne!5324 r!15766)) (= lambda!28738 lambda!28722))))

(declare-fun bs!235569 () Bool)

(assert (= bs!235569 d!278981))

(assert (=> bs!235569 (not (= lambda!28738 lambda!28737))))

(assert (=> bs!235565 (not (= lambda!28738 lambda!28721))))

(assert (=> d!278981 true))

(assert (=> d!278981 true))

(assert (=> d!278981 true))

(assert (=> d!278981 (= (Exists!181 lambda!28737) (Exists!181 lambda!28738))))

(declare-fun lt!336078 () Unit!14431)

(declare-fun choose!5501 (Regex!2406 Regex!2406 List!9636) Unit!14431)

(assert (=> d!278981 (= lt!336078 (choose!5501 EmptyExpr!2406 (regTwo!5324 r!15766) s!10566))))

(assert (=> d!278981 (validRegex!875 EmptyExpr!2406)))

(assert (=> d!278981 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!97 EmptyExpr!2406 (regTwo!5324 r!15766) s!10566) lt!336078)))

(declare-fun m!1141849 () Bool)

(assert (=> bs!235569 m!1141849))

(declare-fun m!1141851 () Bool)

(assert (=> bs!235569 m!1141851))

(declare-fun m!1141853 () Bool)

(assert (=> bs!235569 m!1141853))

(assert (=> bs!235569 m!1141841))

(assert (=> b!907368 d!278981))

(declare-fun d!278983 () Bool)

(assert (=> d!278983 (= (Exists!181 lambda!28708) (choose!5499 lambda!28708))))

(declare-fun bs!235571 () Bool)

(assert (= bs!235571 d!278983))

(declare-fun m!1141855 () Bool)

(assert (=> bs!235571 m!1141855))

(assert (=> b!907368 d!278983))

(declare-fun b!907673 () Bool)

(declare-fun res!412790 () Bool)

(declare-fun e!592556 () Bool)

(assert (=> b!907673 (=> res!412790 e!592556)))

(assert (=> b!907673 (= res!412790 (not (is-Concat!4239 (removeUselessConcat!105 r!15766))))))

(declare-fun e!592557 () Bool)

(assert (=> b!907673 (= e!592557 e!592556)))

(declare-fun b!907674 () Bool)

(declare-fun e!592555 () Bool)

(declare-fun call!54406 () Bool)

(assert (=> b!907674 (= e!592555 call!54406)))

(declare-fun b!907675 () Bool)

(declare-fun res!412786 () Bool)

(declare-fun e!592551 () Bool)

(assert (=> b!907675 (=> (not res!412786) (not e!592551))))

(declare-fun call!54405 () Bool)

(assert (=> b!907675 (= res!412786 call!54405)))

(assert (=> b!907675 (= e!592557 e!592551)))

(declare-fun bm!54400 () Bool)

(declare-fun call!54407 () Bool)

(assert (=> bm!54400 (= call!54405 call!54407)))

(declare-fun b!907676 () Bool)

(assert (=> b!907676 (= e!592556 e!592555)))

(declare-fun res!412789 () Bool)

(assert (=> b!907676 (=> (not res!412789) (not e!592555))))

(assert (=> b!907676 (= res!412789 call!54405)))

(declare-fun b!907677 () Bool)

(declare-fun e!592553 () Bool)

(declare-fun e!592552 () Bool)

(assert (=> b!907677 (= e!592553 e!592552)))

(declare-fun res!412787 () Bool)

(assert (=> b!907677 (= res!412787 (not (nullable!648 (reg!2735 (removeUselessConcat!105 r!15766)))))))

(assert (=> b!907677 (=> (not res!412787) (not e!592552))))

(declare-fun d!278985 () Bool)

(declare-fun res!412788 () Bool)

(declare-fun e!592554 () Bool)

(assert (=> d!278985 (=> res!412788 e!592554)))

(assert (=> d!278985 (= res!412788 (is-ElementMatch!2406 (removeUselessConcat!105 r!15766)))))

(assert (=> d!278985 (= (validRegex!875 (removeUselessConcat!105 r!15766)) e!592554)))

(declare-fun b!907678 () Bool)

(assert (=> b!907678 (= e!592554 e!592553)))

(declare-fun c!147037 () Bool)

(assert (=> b!907678 (= c!147037 (is-Star!2406 (removeUselessConcat!105 r!15766)))))

(declare-fun b!907679 () Bool)

(assert (=> b!907679 (= e!592552 call!54407)))

(declare-fun b!907680 () Bool)

(assert (=> b!907680 (= e!592553 e!592557)))

(declare-fun c!147038 () Bool)

(assert (=> b!907680 (= c!147038 (is-Union!2406 (removeUselessConcat!105 r!15766)))))

(declare-fun bm!54401 () Bool)

(assert (=> bm!54401 (= call!54407 (validRegex!875 (ite c!147037 (reg!2735 (removeUselessConcat!105 r!15766)) (ite c!147038 (regOne!5325 (removeUselessConcat!105 r!15766)) (regOne!5324 (removeUselessConcat!105 r!15766))))))))

(declare-fun bm!54402 () Bool)

(assert (=> bm!54402 (= call!54406 (validRegex!875 (ite c!147038 (regTwo!5325 (removeUselessConcat!105 r!15766)) (regTwo!5324 (removeUselessConcat!105 r!15766)))))))

(declare-fun b!907681 () Bool)

(assert (=> b!907681 (= e!592551 call!54406)))

(assert (= (and d!278985 (not res!412788)) b!907678))

(assert (= (and b!907678 c!147037) b!907677))

(assert (= (and b!907678 (not c!147037)) b!907680))

(assert (= (and b!907677 res!412787) b!907679))

(assert (= (and b!907680 c!147038) b!907675))

(assert (= (and b!907680 (not c!147038)) b!907673))

(assert (= (and b!907675 res!412786) b!907681))

(assert (= (and b!907673 (not res!412790)) b!907676))

(assert (= (and b!907676 res!412789) b!907674))

(assert (= (or b!907681 b!907674) bm!54402))

(assert (= (or b!907675 b!907676) bm!54400))

(assert (= (or b!907679 bm!54400) bm!54401))

(declare-fun m!1141857 () Bool)

(assert (=> b!907677 m!1141857))

(declare-fun m!1141859 () Bool)

(assert (=> bm!54401 m!1141859))

(declare-fun m!1141861 () Bool)

(assert (=> bm!54402 m!1141861))

(assert (=> b!907369 d!278985))

(declare-fun b!907682 () Bool)

(declare-fun e!592558 () Regex!2406)

(declare-fun call!54410 () Regex!2406)

(declare-fun call!54408 () Regex!2406)

(assert (=> b!907682 (= e!592558 (Union!2406 call!54410 call!54408))))

(declare-fun b!907683 () Bool)

(declare-fun e!592561 () Regex!2406)

(assert (=> b!907683 (= e!592561 r!15766)))

(declare-fun b!907684 () Bool)

(declare-fun e!592559 () Regex!2406)

(declare-fun call!54412 () Regex!2406)

(assert (=> b!907684 (= e!592559 call!54412)))

(declare-fun d!278987 () Bool)

(declare-fun e!592562 () Bool)

(assert (=> d!278987 e!592562))

(declare-fun res!412791 () Bool)

(assert (=> d!278987 (=> (not res!412791) (not e!592562))))

(declare-fun lt!336080 () Regex!2406)

(assert (=> d!278987 (= res!412791 (validRegex!875 lt!336080))))

(assert (=> d!278987 (= lt!336080 e!592559)))

(declare-fun c!147040 () Bool)

(assert (=> d!278987 (= c!147040 (and (is-Concat!4239 r!15766) (is-EmptyExpr!2406 (regOne!5324 r!15766))))))

(assert (=> d!278987 (validRegex!875 r!15766)))

(assert (=> d!278987 (= (removeUselessConcat!105 r!15766) lt!336080)))

(declare-fun bm!54403 () Bool)

(declare-fun c!147041 () Bool)

(declare-fun c!147043 () Bool)

(declare-fun c!147042 () Bool)

(declare-fun call!54411 () Regex!2406)

(assert (=> bm!54403 (= call!54411 (removeUselessConcat!105 (ite c!147042 (regOne!5324 r!15766) (ite c!147043 (regTwo!5324 r!15766) (ite c!147041 (regTwo!5325 r!15766) (reg!2735 r!15766))))))))

(declare-fun bm!54404 () Bool)

(declare-fun call!54409 () Regex!2406)

(assert (=> bm!54404 (= call!54408 call!54409)))

(declare-fun b!907685 () Bool)

(declare-fun c!147039 () Bool)

(assert (=> b!907685 (= c!147039 (is-Star!2406 r!15766))))

(assert (=> b!907685 (= e!592558 e!592561)))

(declare-fun b!907686 () Bool)

(declare-fun e!592563 () Regex!2406)

(assert (=> b!907686 (= e!592563 call!54411)))

(declare-fun b!907687 () Bool)

(assert (=> b!907687 (= e!592562 (= (nullable!648 lt!336080) (nullable!648 r!15766)))))

(declare-fun bm!54405 () Bool)

(assert (=> bm!54405 (= call!54412 (removeUselessConcat!105 (ite c!147040 (regTwo!5324 r!15766) (ite c!147043 (regOne!5324 r!15766) (regOne!5325 r!15766)))))))

(declare-fun b!907688 () Bool)

(assert (=> b!907688 (= e!592561 (Star!2406 call!54408))))

(declare-fun b!907689 () Bool)

(declare-fun e!592560 () Regex!2406)

(assert (=> b!907689 (= e!592560 (Concat!4239 call!54410 call!54409))))

(declare-fun b!907690 () Bool)

(assert (=> b!907690 (= c!147043 (is-Concat!4239 r!15766))))

(assert (=> b!907690 (= e!592563 e!592560)))

(declare-fun b!907691 () Bool)

(assert (=> b!907691 (= e!592559 e!592563)))

(assert (=> b!907691 (= c!147042 (and (is-Concat!4239 r!15766) (is-EmptyExpr!2406 (regTwo!5324 r!15766))))))

(declare-fun bm!54406 () Bool)

(assert (=> bm!54406 (= call!54409 call!54411)))

(declare-fun bm!54407 () Bool)

(assert (=> bm!54407 (= call!54410 call!54412)))

(declare-fun b!907692 () Bool)

(assert (=> b!907692 (= e!592560 e!592558)))

(assert (=> b!907692 (= c!147041 (is-Union!2406 r!15766))))

(assert (= (and d!278987 c!147040) b!907684))

(assert (= (and d!278987 (not c!147040)) b!907691))

(assert (= (and b!907691 c!147042) b!907686))

(assert (= (and b!907691 (not c!147042)) b!907690))

(assert (= (and b!907690 c!147043) b!907689))

(assert (= (and b!907690 (not c!147043)) b!907692))

(assert (= (and b!907692 c!147041) b!907682))

(assert (= (and b!907692 (not c!147041)) b!907685))

(assert (= (and b!907685 c!147039) b!907688))

(assert (= (and b!907685 (not c!147039)) b!907683))

(assert (= (or b!907682 b!907688) bm!54404))

(assert (= (or b!907689 bm!54404) bm!54406))

(assert (= (or b!907689 b!907682) bm!54407))

(assert (= (or b!907686 bm!54406) bm!54403))

(assert (= (or b!907684 bm!54407) bm!54405))

(assert (= (and d!278987 res!412791) b!907687))

(declare-fun m!1141863 () Bool)

(assert (=> d!278987 m!1141863))

(assert (=> d!278987 m!1141665))

(declare-fun m!1141865 () Bool)

(assert (=> bm!54403 m!1141865))

(declare-fun m!1141867 () Bool)

(assert (=> b!907687 m!1141867))

(assert (=> b!907687 m!1141749))

(declare-fun m!1141869 () Bool)

(assert (=> bm!54405 m!1141869))

(assert (=> b!907369 d!278987))

(declare-fun d!278989 () Bool)

(assert (=> d!278989 (= (isEmpty!5835 lt!336005) (not (is-Some!2044 lt!336005)))))

(assert (=> b!907371 d!278989))

(declare-fun b!907697 () Bool)

(declare-fun e!592566 () Bool)

(declare-fun tp!284047 () Bool)

(assert (=> b!907697 (= e!592566 (and tp_is_empty!4455 tp!284047))))

(assert (=> b!907367 (= tp!284022 e!592566)))

(assert (= (and b!907367 (is-Cons!9620 (t!100682 s!10566))) b!907697))

(declare-fun e!592569 () Bool)

(assert (=> b!907363 (= tp!284025 e!592569)))

(declare-fun b!907710 () Bool)

(declare-fun tp!284061 () Bool)

(assert (=> b!907710 (= e!592569 tp!284061)))

(declare-fun b!907708 () Bool)

(assert (=> b!907708 (= e!592569 tp_is_empty!4455)))

(declare-fun b!907709 () Bool)

(declare-fun tp!284060 () Bool)

(declare-fun tp!284058 () Bool)

(assert (=> b!907709 (= e!592569 (and tp!284060 tp!284058))))

(declare-fun b!907711 () Bool)

(declare-fun tp!284059 () Bool)

(declare-fun tp!284062 () Bool)

(assert (=> b!907711 (= e!592569 (and tp!284059 tp!284062))))

(assert (= (and b!907363 (is-ElementMatch!2406 (regOne!5325 r!15766))) b!907708))

(assert (= (and b!907363 (is-Concat!4239 (regOne!5325 r!15766))) b!907709))

(assert (= (and b!907363 (is-Star!2406 (regOne!5325 r!15766))) b!907710))

(assert (= (and b!907363 (is-Union!2406 (regOne!5325 r!15766))) b!907711))

(declare-fun e!592570 () Bool)

(assert (=> b!907363 (= tp!284023 e!592570)))

(declare-fun b!907714 () Bool)

(declare-fun tp!284066 () Bool)

(assert (=> b!907714 (= e!592570 tp!284066)))

(declare-fun b!907712 () Bool)

(assert (=> b!907712 (= e!592570 tp_is_empty!4455)))

(declare-fun b!907713 () Bool)

(declare-fun tp!284065 () Bool)

(declare-fun tp!284063 () Bool)

(assert (=> b!907713 (= e!592570 (and tp!284065 tp!284063))))

(declare-fun b!907715 () Bool)

(declare-fun tp!284064 () Bool)

(declare-fun tp!284067 () Bool)

(assert (=> b!907715 (= e!592570 (and tp!284064 tp!284067))))

(assert (= (and b!907363 (is-ElementMatch!2406 (regTwo!5325 r!15766))) b!907712))

(assert (= (and b!907363 (is-Concat!4239 (regTwo!5325 r!15766))) b!907713))

(assert (= (and b!907363 (is-Star!2406 (regTwo!5325 r!15766))) b!907714))

(assert (= (and b!907363 (is-Union!2406 (regTwo!5325 r!15766))) b!907715))

(declare-fun e!592571 () Bool)

(assert (=> b!907364 (= tp!284026 e!592571)))

(declare-fun b!907718 () Bool)

(declare-fun tp!284071 () Bool)

(assert (=> b!907718 (= e!592571 tp!284071)))

(declare-fun b!907716 () Bool)

(assert (=> b!907716 (= e!592571 tp_is_empty!4455)))

(declare-fun b!907717 () Bool)

(declare-fun tp!284070 () Bool)

(declare-fun tp!284068 () Bool)

(assert (=> b!907717 (= e!592571 (and tp!284070 tp!284068))))

(declare-fun b!907719 () Bool)

(declare-fun tp!284069 () Bool)

(declare-fun tp!284072 () Bool)

(assert (=> b!907719 (= e!592571 (and tp!284069 tp!284072))))

(assert (= (and b!907364 (is-ElementMatch!2406 (regOne!5324 r!15766))) b!907716))

(assert (= (and b!907364 (is-Concat!4239 (regOne!5324 r!15766))) b!907717))

(assert (= (and b!907364 (is-Star!2406 (regOne!5324 r!15766))) b!907718))

(assert (= (and b!907364 (is-Union!2406 (regOne!5324 r!15766))) b!907719))

(declare-fun e!592572 () Bool)

(assert (=> b!907364 (= tp!284021 e!592572)))

(declare-fun b!907722 () Bool)

(declare-fun tp!284076 () Bool)

(assert (=> b!907722 (= e!592572 tp!284076)))

(declare-fun b!907720 () Bool)

(assert (=> b!907720 (= e!592572 tp_is_empty!4455)))

(declare-fun b!907721 () Bool)

(declare-fun tp!284075 () Bool)

(declare-fun tp!284073 () Bool)

(assert (=> b!907721 (= e!592572 (and tp!284075 tp!284073))))

(declare-fun b!907723 () Bool)

(declare-fun tp!284074 () Bool)

(declare-fun tp!284077 () Bool)

(assert (=> b!907723 (= e!592572 (and tp!284074 tp!284077))))

(assert (= (and b!907364 (is-ElementMatch!2406 (regTwo!5324 r!15766))) b!907720))

(assert (= (and b!907364 (is-Concat!4239 (regTwo!5324 r!15766))) b!907721))

(assert (= (and b!907364 (is-Star!2406 (regTwo!5324 r!15766))) b!907722))

(assert (= (and b!907364 (is-Union!2406 (regTwo!5324 r!15766))) b!907723))

(declare-fun e!592573 () Bool)

(assert (=> b!907370 (= tp!284024 e!592573)))

(declare-fun b!907726 () Bool)

(declare-fun tp!284081 () Bool)

(assert (=> b!907726 (= e!592573 tp!284081)))

(declare-fun b!907724 () Bool)

(assert (=> b!907724 (= e!592573 tp_is_empty!4455)))

(declare-fun b!907725 () Bool)

(declare-fun tp!284080 () Bool)

(declare-fun tp!284078 () Bool)

(assert (=> b!907725 (= e!592573 (and tp!284080 tp!284078))))

(declare-fun b!907727 () Bool)

(declare-fun tp!284079 () Bool)

(declare-fun tp!284082 () Bool)

(assert (=> b!907727 (= e!592573 (and tp!284079 tp!284082))))

(assert (= (and b!907370 (is-ElementMatch!2406 (reg!2735 r!15766))) b!907724))

(assert (= (and b!907370 (is-Concat!4239 (reg!2735 r!15766))) b!907725))

(assert (= (and b!907370 (is-Star!2406 (reg!2735 r!15766))) b!907726))

(assert (= (and b!907370 (is-Union!2406 (reg!2735 r!15766))) b!907727))

(push 1)

(assert (not b!907444))

(assert (not b!907711))

(assert (not bm!54397))

(assert (not b!907489))

(assert (not b!907727))

(assert (not b!907554))

(assert (not d!278981))

(assert (not b!907723))

(assert (not b!907616))

(assert (not b!907713))

(assert (not d!278959))

(assert (not b!907538))

(assert (not bm!54383))

(assert (not b!907570))

(assert (not bm!54379))

(assert (not bm!54395))

(assert (not b!907719))

(assert (not b!907721))

(assert (not d!278969))

(assert (not b!907648))

(assert (not b!907560))

(assert (not b!907546))

(assert (not b!907488))

(assert (not b!907687))

(assert (not bm!54378))

(assert (not bm!54403))

(assert (not b!907709))

(assert (not b!907555))

(assert (not b!907726))

(assert (not b!907652))

(assert (not b!907564))

(assert (not b!907651))

(assert (not bm!54405))

(assert (not b!907714))

(assert (not d!278987))

(assert (not bm!54401))

(assert (not b!907568))

(assert (not b!907677))

(assert (not b!907576))

(assert (not b!907578))

(assert (not b!907650))

(assert (not d!278955))

(assert (not d!278967))

(assert (not b!907562))

(assert (not b!907540))

(assert (not b!907710))

(assert (not b!907725))

(assert (not b!907718))

(assert (not b!907569))

(assert (not bm!54382))

(assert tp_is_empty!4455)

(assert (not b!907574))

(assert (not bm!54373))

(assert (not bm!54384))

(assert (not d!278957))

(assert (not bm!54402))

(assert (not b!907647))

(assert (not d!278971))

(assert (not d!278983))

(assert (not d!278961))

(assert (not d!278963))

(assert (not b!907697))

(assert (not bm!54372))

(assert (not b!907544))

(assert (not b!907539))

(assert (not b!907548))

(assert (not b!907715))

(assert (not d!278975))

(assert (not b!907717))

(assert (not b!907722))

(assert (not d!278979))

(assert (not b!907556))

(assert (not b!907645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

