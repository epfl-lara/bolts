; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232340 () Bool)

(assert start!232340)

(declare-fun b!2367360 () Bool)

(assert (=> b!2367360 true))

(assert (=> b!2367360 true))

(declare-fun lambda!87418 () Int)

(declare-fun lambda!87417 () Int)

(assert (=> b!2367360 (not (= lambda!87418 lambda!87417))))

(assert (=> b!2367360 true))

(assert (=> b!2367360 true))

(declare-fun b!2367351 () Bool)

(declare-fun e!1511365 () Bool)

(declare-fun e!1511363 () Bool)

(assert (=> b!2367351 (= e!1511365 (not e!1511363))))

(declare-fun res!1004689 () Bool)

(assert (=> b!2367351 (=> res!1004689 e!1511363)))

(declare-datatypes ((C!14022 0))(
  ( (C!14023 (val!8253 Int)) )
))
(declare-datatypes ((Regex!6932 0))(
  ( (ElementMatch!6932 (c!376274 C!14022)) (Concat!11568 (regOne!14376 Regex!6932) (regTwo!14376 Regex!6932)) (EmptyExpr!6932) (Star!6932 (reg!7261 Regex!6932)) (EmptyLang!6932) (Union!6932 (regOne!14377 Regex!6932) (regTwo!14377 Regex!6932)) )
))
(declare-fun r!13927 () Regex!6932)

(assert (=> b!2367351 (= res!1004689 (not (is-Concat!11568 r!13927)))))

(declare-fun lt!865362 () Bool)

(declare-fun lt!865367 () Bool)

(assert (=> b!2367351 (= lt!865362 lt!865367)))

(declare-datatypes ((List!28102 0))(
  ( (Nil!28004) (Cons!28004 (h!33405 C!14022) (t!208079 List!28102)) )
))
(declare-fun s!9460 () List!28102)

(declare-fun matchRSpec!781 (Regex!6932 List!28102) Bool)

(assert (=> b!2367351 (= lt!865367 (matchRSpec!781 r!13927 s!9460))))

(declare-fun matchR!3049 (Regex!6932 List!28102) Bool)

(assert (=> b!2367351 (= lt!865362 (matchR!3049 r!13927 s!9460))))

(declare-datatypes ((Unit!40899 0))(
  ( (Unit!40900) )
))
(declare-fun lt!865361 () Unit!40899)

(declare-fun mainMatchTheorem!781 (Regex!6932 List!28102) Unit!40899)

(assert (=> b!2367351 (= lt!865361 (mainMatchTheorem!781 r!13927 s!9460))))

(declare-fun b!2367352 () Bool)

(declare-fun e!1511369 () Bool)

(declare-fun tp_is_empty!11277 () Bool)

(declare-fun tp!757006 () Bool)

(assert (=> b!2367352 (= e!1511369 (and tp_is_empty!11277 tp!757006))))

(declare-fun b!2367353 () Bool)

(declare-fun e!1511368 () Bool)

(declare-fun tp!757011 () Bool)

(declare-fun tp!757013 () Bool)

(assert (=> b!2367353 (= e!1511368 (and tp!757011 tp!757013))))

(declare-fun b!2367354 () Bool)

(declare-fun res!1004690 () Bool)

(assert (=> b!2367354 (=> (not res!1004690) (not e!1511365))))

(declare-datatypes ((List!28103 0))(
  ( (Nil!28005) (Cons!28005 (h!33406 Regex!6932) (t!208080 List!28103)) )
))
(declare-fun l!9164 () List!28103)

(declare-fun generalisedConcat!33 (List!28103) Regex!6932)

(assert (=> b!2367354 (= res!1004690 (= r!13927 (generalisedConcat!33 l!9164)))))

(declare-fun b!2367355 () Bool)

(declare-fun e!1511366 () Bool)

(declare-fun tp!757009 () Bool)

(assert (=> b!2367355 (= e!1511366 tp!757009)))

(declare-fun b!2367357 () Bool)

(declare-fun res!1004695 () Bool)

(declare-fun e!1511364 () Bool)

(assert (=> b!2367357 (=> res!1004695 e!1511364)))

(declare-fun lt!865364 () List!28103)

(assert (=> b!2367357 (= res!1004695 (not (= (generalisedConcat!33 lt!865364) EmptyExpr!6932)))))

(declare-fun b!2367358 () Bool)

(declare-fun tp!757010 () Bool)

(declare-fun tp!757008 () Bool)

(assert (=> b!2367358 (= e!1511366 (and tp!757010 tp!757008))))

(declare-fun b!2367359 () Bool)

(declare-fun res!1004692 () Bool)

(declare-fun e!1511367 () Bool)

(assert (=> b!2367359 (=> res!1004692 e!1511367)))

(declare-fun isEmpty!15930 (List!28103) Bool)

(assert (=> b!2367359 (= res!1004692 (isEmpty!15930 l!9164))))

(assert (=> b!2367360 (= e!1511363 e!1511367)))

(declare-fun res!1004693 () Bool)

(assert (=> b!2367360 (=> res!1004693 e!1511367)))

(declare-fun lt!865363 () Bool)

(assert (=> b!2367360 (= res!1004693 (not (= lt!865367 lt!865363)))))

(declare-fun Exists!994 (Int) Bool)

(assert (=> b!2367360 (= (Exists!994 lambda!87417) (Exists!994 lambda!87418))))

(declare-fun lt!865365 () Unit!40899)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!333 (Regex!6932 Regex!6932 List!28102) Unit!40899)

(assert (=> b!2367360 (= lt!865365 (lemmaExistCutMatchRandMatchRSpecEquivalent!333 (regOne!14376 r!13927) (regTwo!14376 r!13927) s!9460))))

(assert (=> b!2367360 (= lt!865363 (Exists!994 lambda!87417))))

(declare-datatypes ((tuple2!27728 0))(
  ( (tuple2!27729 (_1!16405 List!28102) (_2!16405 List!28102)) )
))
(declare-datatypes ((Option!5475 0))(
  ( (None!5474) (Some!5474 (v!30882 tuple2!27728)) )
))
(declare-fun isDefined!4303 (Option!5475) Bool)

(declare-fun findConcatSeparation!583 (Regex!6932 Regex!6932 List!28102 List!28102 List!28102) Option!5475)

(assert (=> b!2367360 (= lt!865363 (isDefined!4303 (findConcatSeparation!583 (regOne!14376 r!13927) (regTwo!14376 r!13927) Nil!28004 s!9460 s!9460)))))

(declare-fun lt!865366 () Unit!40899)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!583 (Regex!6932 Regex!6932 List!28102) Unit!40899)

(assert (=> b!2367360 (= lt!865366 (lemmaFindConcatSeparationEquivalentToExists!583 (regOne!14376 r!13927) (regTwo!14376 r!13927) s!9460))))

(declare-fun b!2367361 () Bool)

(declare-fun validRegex!2662 (Regex!6932) Bool)

(declare-fun head!5109 (List!28103) Regex!6932)

(assert (=> b!2367361 (= e!1511364 (validRegex!2662 (head!5109 l!9164)))))

(declare-fun b!2367356 () Bool)

(declare-fun tp!757007 () Bool)

(declare-fun tp!757012 () Bool)

(assert (=> b!2367356 (= e!1511366 (and tp!757007 tp!757012))))

(declare-fun res!1004691 () Bool)

(assert (=> start!232340 (=> (not res!1004691) (not e!1511365))))

(declare-fun lambda!87416 () Int)

(declare-fun forall!5566 (List!28103 Int) Bool)

(assert (=> start!232340 (= res!1004691 (forall!5566 l!9164 lambda!87416))))

(assert (=> start!232340 e!1511365))

(assert (=> start!232340 e!1511368))

(assert (=> start!232340 e!1511366))

(assert (=> start!232340 e!1511369))

(declare-fun b!2367362 () Bool)

(assert (=> b!2367362 (= e!1511367 e!1511364)))

(declare-fun res!1004694 () Bool)

(assert (=> b!2367362 (=> res!1004694 e!1511364)))

(assert (=> b!2367362 (= res!1004694 (not (isEmpty!15930 lt!865364)))))

(declare-fun tail!3379 (List!28103) List!28103)

(assert (=> b!2367362 (= lt!865364 (tail!3379 l!9164))))

(declare-fun b!2367363 () Bool)

(assert (=> b!2367363 (= e!1511366 tp_is_empty!11277)))

(assert (= (and start!232340 res!1004691) b!2367354))

(assert (= (and b!2367354 res!1004690) b!2367351))

(assert (= (and b!2367351 (not res!1004689)) b!2367360))

(assert (= (and b!2367360 (not res!1004693)) b!2367359))

(assert (= (and b!2367359 (not res!1004692)) b!2367362))

(assert (= (and b!2367362 (not res!1004694)) b!2367357))

(assert (= (and b!2367357 (not res!1004695)) b!2367361))

(assert (= (and start!232340 (is-Cons!28005 l!9164)) b!2367353))

(assert (= (and start!232340 (is-ElementMatch!6932 r!13927)) b!2367363))

(assert (= (and start!232340 (is-Concat!11568 r!13927)) b!2367358))

(assert (= (and start!232340 (is-Star!6932 r!13927)) b!2367355))

(assert (= (and start!232340 (is-Union!6932 r!13927)) b!2367356))

(assert (= (and start!232340 (is-Cons!28004 s!9460)) b!2367352))

(declare-fun m!2776751 () Bool)

(assert (=> b!2367360 m!2776751))

(declare-fun m!2776753 () Bool)

(assert (=> b!2367360 m!2776753))

(declare-fun m!2776755 () Bool)

(assert (=> b!2367360 m!2776755))

(declare-fun m!2776757 () Bool)

(assert (=> b!2367360 m!2776757))

(declare-fun m!2776759 () Bool)

(assert (=> b!2367360 m!2776759))

(assert (=> b!2367360 m!2776751))

(declare-fun m!2776761 () Bool)

(assert (=> b!2367360 m!2776761))

(assert (=> b!2367360 m!2776755))

(declare-fun m!2776763 () Bool)

(assert (=> b!2367362 m!2776763))

(declare-fun m!2776765 () Bool)

(assert (=> b!2367362 m!2776765))

(declare-fun m!2776767 () Bool)

(assert (=> b!2367354 m!2776767))

(declare-fun m!2776769 () Bool)

(assert (=> start!232340 m!2776769))

(declare-fun m!2776771 () Bool)

(assert (=> b!2367357 m!2776771))

(declare-fun m!2776773 () Bool)

(assert (=> b!2367359 m!2776773))

(declare-fun m!2776775 () Bool)

(assert (=> b!2367361 m!2776775))

(assert (=> b!2367361 m!2776775))

(declare-fun m!2776777 () Bool)

(assert (=> b!2367361 m!2776777))

(declare-fun m!2776779 () Bool)

(assert (=> b!2367351 m!2776779))

(declare-fun m!2776781 () Bool)

(assert (=> b!2367351 m!2776781))

(declare-fun m!2776783 () Bool)

(assert (=> b!2367351 m!2776783))

(push 1)

(assert (not b!2367359))

(assert (not b!2367360))

(assert (not b!2367354))

(assert (not b!2367361))

(assert (not b!2367353))

(assert (not b!2367351))

(assert (not start!232340))

(assert (not b!2367358))

(assert (not b!2367352))

(assert (not b!2367356))

(assert (not b!2367357))

(assert tp_is_empty!11277)

(assert (not b!2367355))

(assert (not b!2367362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!461010 () Bool)

(declare-fun b!2367455 () Bool)

(assert (= bs!461010 (and b!2367455 b!2367360)))

(declare-fun lambda!87434 () Int)

(assert (=> bs!461010 (not (= lambda!87434 lambda!87417))))

(assert (=> bs!461010 (not (= lambda!87434 lambda!87418))))

(assert (=> b!2367455 true))

(assert (=> b!2367455 true))

(declare-fun bs!461011 () Bool)

(declare-fun b!2367456 () Bool)

(assert (= bs!461011 (and b!2367456 b!2367360)))

(declare-fun lambda!87435 () Int)

(assert (=> bs!461011 (not (= lambda!87435 lambda!87417))))

(assert (=> bs!461011 (= lambda!87435 lambda!87418)))

(declare-fun bs!461012 () Bool)

(assert (= bs!461012 (and b!2367456 b!2367455)))

(assert (=> bs!461012 (not (= lambda!87435 lambda!87434))))

(assert (=> b!2367456 true))

(assert (=> b!2367456 true))

(declare-fun e!1511417 () Bool)

(declare-fun call!143999 () Bool)

(assert (=> b!2367455 (= e!1511417 call!143999)))

(declare-fun e!1511421 () Bool)

(assert (=> b!2367456 (= e!1511421 call!143999)))

(declare-fun b!2367457 () Bool)

(declare-fun e!1511415 () Bool)

(assert (=> b!2367457 (= e!1511415 (matchRSpec!781 (regTwo!14377 r!13927) s!9460))))

(declare-fun bm!143994 () Bool)

(declare-fun call!144000 () Bool)

(declare-fun isEmpty!15932 (List!28102) Bool)

(assert (=> bm!143994 (= call!144000 (isEmpty!15932 s!9460))))

(declare-fun b!2367458 () Bool)

(declare-fun e!1511416 () Bool)

(assert (=> b!2367458 (= e!1511416 e!1511421)))

(declare-fun c!376285 () Bool)

(assert (=> b!2367458 (= c!376285 (is-Star!6932 r!13927))))

(declare-fun d!694897 () Bool)

(declare-fun c!376284 () Bool)

(assert (=> d!694897 (= c!376284 (is-EmptyExpr!6932 r!13927))))

(declare-fun e!1511419 () Bool)

(assert (=> d!694897 (= (matchRSpec!781 r!13927 s!9460) e!1511419)))

(declare-fun b!2367459 () Bool)

(assert (=> b!2367459 (= e!1511416 e!1511415)))

(declare-fun res!1004746 () Bool)

(assert (=> b!2367459 (= res!1004746 (matchRSpec!781 (regOne!14377 r!13927) s!9460))))

(assert (=> b!2367459 (=> res!1004746 e!1511415)))

(declare-fun b!2367460 () Bool)

(declare-fun e!1511420 () Bool)

(assert (=> b!2367460 (= e!1511419 e!1511420)))

(declare-fun res!1004747 () Bool)

(assert (=> b!2367460 (= res!1004747 (not (is-EmptyLang!6932 r!13927)))))

(assert (=> b!2367460 (=> (not res!1004747) (not e!1511420))))

(declare-fun b!2367461 () Bool)

(declare-fun c!376286 () Bool)

(assert (=> b!2367461 (= c!376286 (is-Union!6932 r!13927))))

(declare-fun e!1511418 () Bool)

(assert (=> b!2367461 (= e!1511418 e!1511416)))

(declare-fun b!2367462 () Bool)

(declare-fun c!376287 () Bool)

(assert (=> b!2367462 (= c!376287 (is-ElementMatch!6932 r!13927))))

(assert (=> b!2367462 (= e!1511420 e!1511418)))

(declare-fun b!2367463 () Bool)

(declare-fun res!1004745 () Bool)

(assert (=> b!2367463 (=> res!1004745 e!1511417)))

(assert (=> b!2367463 (= res!1004745 call!144000)))

(assert (=> b!2367463 (= e!1511421 e!1511417)))

(declare-fun b!2367464 () Bool)

(assert (=> b!2367464 (= e!1511419 call!144000)))

(declare-fun b!2367465 () Bool)

(assert (=> b!2367465 (= e!1511418 (= s!9460 (Cons!28004 (c!376274 r!13927) Nil!28004)))))

(declare-fun bm!143995 () Bool)

(assert (=> bm!143995 (= call!143999 (Exists!994 (ite c!376285 lambda!87434 lambda!87435)))))

(assert (= (and d!694897 c!376284) b!2367464))

(assert (= (and d!694897 (not c!376284)) b!2367460))

(assert (= (and b!2367460 res!1004747) b!2367462))

(assert (= (and b!2367462 c!376287) b!2367465))

(assert (= (and b!2367462 (not c!376287)) b!2367461))

(assert (= (and b!2367461 c!376286) b!2367459))

(assert (= (and b!2367461 (not c!376286)) b!2367458))

(assert (= (and b!2367459 (not res!1004746)) b!2367457))

(assert (= (and b!2367458 c!376285) b!2367463))

(assert (= (and b!2367458 (not c!376285)) b!2367456))

(assert (= (and b!2367463 (not res!1004745)) b!2367455))

(assert (= (or b!2367455 b!2367456) bm!143995))

(assert (= (or b!2367464 b!2367463) bm!143994))

(declare-fun m!2776819 () Bool)

(assert (=> b!2367457 m!2776819))

(declare-fun m!2776821 () Bool)

(assert (=> bm!143994 m!2776821))

(declare-fun m!2776823 () Bool)

(assert (=> b!2367459 m!2776823))

(declare-fun m!2776825 () Bool)

(assert (=> bm!143995 m!2776825))

(assert (=> b!2367351 d!694897))

(declare-fun b!2367500 () Bool)

(declare-fun e!1511448 () Bool)

(declare-fun nullable!1995 (Regex!6932) Bool)

(assert (=> b!2367500 (= e!1511448 (nullable!1995 r!13927))))

(declare-fun b!2367501 () Bool)

(declare-fun res!1004774 () Bool)

(declare-fun e!1511446 () Bool)

(assert (=> b!2367501 (=> (not res!1004774) (not e!1511446))))

(declare-fun tail!3381 (List!28102) List!28102)

(assert (=> b!2367501 (= res!1004774 (isEmpty!15932 (tail!3381 s!9460)))))

(declare-fun bm!143998 () Bool)

(declare-fun call!144003 () Bool)

(assert (=> bm!143998 (= call!144003 (isEmpty!15932 s!9460))))

(declare-fun b!2367502 () Bool)

(declare-fun res!1004772 () Bool)

(declare-fun e!1511444 () Bool)

(assert (=> b!2367502 (=> res!1004772 e!1511444)))

(assert (=> b!2367502 (= res!1004772 (not (is-ElementMatch!6932 r!13927)))))

(declare-fun e!1511442 () Bool)

(assert (=> b!2367502 (= e!1511442 e!1511444)))

(declare-fun b!2367503 () Bool)

(declare-fun lt!865391 () Bool)

(assert (=> b!2367503 (= e!1511442 (not lt!865391))))

(declare-fun b!2367504 () Bool)

(declare-fun head!5111 (List!28102) C!14022)

(assert (=> b!2367504 (= e!1511446 (= (head!5111 s!9460) (c!376274 r!13927)))))

(declare-fun b!2367505 () Bool)

(declare-fun res!1004775 () Bool)

(declare-fun e!1511443 () Bool)

(assert (=> b!2367505 (=> res!1004775 e!1511443)))

(assert (=> b!2367505 (= res!1004775 (not (isEmpty!15932 (tail!3381 s!9460))))))

(declare-fun b!2367506 () Bool)

(declare-fun res!1004777 () Bool)

(assert (=> b!2367506 (=> (not res!1004777) (not e!1511446))))

(assert (=> b!2367506 (= res!1004777 (not call!144003))))

(declare-fun b!2367507 () Bool)

(declare-fun e!1511447 () Bool)

(assert (=> b!2367507 (= e!1511447 e!1511443)))

(declare-fun res!1004773 () Bool)

(assert (=> b!2367507 (=> res!1004773 e!1511443)))

(assert (=> b!2367507 (= res!1004773 call!144003)))

(declare-fun b!2367508 () Bool)

(declare-fun e!1511445 () Bool)

(assert (=> b!2367508 (= e!1511445 e!1511442)))

(declare-fun c!376294 () Bool)

(assert (=> b!2367508 (= c!376294 (is-EmptyLang!6932 r!13927))))

(declare-fun b!2367509 () Bool)

(assert (=> b!2367509 (= e!1511443 (not (= (head!5111 s!9460) (c!376274 r!13927))))))

(declare-fun b!2367510 () Bool)

(declare-fun res!1004771 () Bool)

(assert (=> b!2367510 (=> res!1004771 e!1511444)))

(assert (=> b!2367510 (= res!1004771 e!1511446)))

(declare-fun res!1004770 () Bool)

(assert (=> b!2367510 (=> (not res!1004770) (not e!1511446))))

(assert (=> b!2367510 (= res!1004770 lt!865391)))

(declare-fun d!694899 () Bool)

(assert (=> d!694899 e!1511445))

(declare-fun c!376295 () Bool)

(assert (=> d!694899 (= c!376295 (is-EmptyExpr!6932 r!13927))))

(assert (=> d!694899 (= lt!865391 e!1511448)))

(declare-fun c!376296 () Bool)

(assert (=> d!694899 (= c!376296 (isEmpty!15932 s!9460))))

(assert (=> d!694899 (validRegex!2662 r!13927)))

(assert (=> d!694899 (= (matchR!3049 r!13927 s!9460) lt!865391)))

(declare-fun b!2367511 () Bool)

(assert (=> b!2367511 (= e!1511445 (= lt!865391 call!144003))))

(declare-fun b!2367512 () Bool)

(declare-fun derivativeStep!1653 (Regex!6932 C!14022) Regex!6932)

(assert (=> b!2367512 (= e!1511448 (matchR!3049 (derivativeStep!1653 r!13927 (head!5111 s!9460)) (tail!3381 s!9460)))))

(declare-fun b!2367513 () Bool)

(assert (=> b!2367513 (= e!1511444 e!1511447)))

(declare-fun res!1004776 () Bool)

(assert (=> b!2367513 (=> (not res!1004776) (not e!1511447))))

(assert (=> b!2367513 (= res!1004776 (not lt!865391))))

(assert (= (and d!694899 c!376296) b!2367500))

(assert (= (and d!694899 (not c!376296)) b!2367512))

(assert (= (and d!694899 c!376295) b!2367511))

(assert (= (and d!694899 (not c!376295)) b!2367508))

(assert (= (and b!2367508 c!376294) b!2367503))

(assert (= (and b!2367508 (not c!376294)) b!2367502))

(assert (= (and b!2367502 (not res!1004772)) b!2367510))

(assert (= (and b!2367510 res!1004770) b!2367506))

(assert (= (and b!2367506 res!1004777) b!2367501))

(assert (= (and b!2367501 res!1004774) b!2367504))

(assert (= (and b!2367510 (not res!1004771)) b!2367513))

(assert (= (and b!2367513 res!1004776) b!2367507))

(assert (= (and b!2367507 (not res!1004773)) b!2367505))

(assert (= (and b!2367505 (not res!1004775)) b!2367509))

(assert (= (or b!2367511 b!2367506 b!2367507) bm!143998))

(declare-fun m!2776831 () Bool)

(assert (=> b!2367512 m!2776831))

(assert (=> b!2367512 m!2776831))

(declare-fun m!2776833 () Bool)

(assert (=> b!2367512 m!2776833))

(declare-fun m!2776835 () Bool)

(assert (=> b!2367512 m!2776835))

(assert (=> b!2367512 m!2776833))

(assert (=> b!2367512 m!2776835))

(declare-fun m!2776837 () Bool)

(assert (=> b!2367512 m!2776837))

(declare-fun m!2776839 () Bool)

(assert (=> b!2367500 m!2776839))

(assert (=> d!694899 m!2776821))

(declare-fun m!2776841 () Bool)

(assert (=> d!694899 m!2776841))

(assert (=> bm!143998 m!2776821))

(assert (=> b!2367504 m!2776831))

(assert (=> b!2367501 m!2776835))

(assert (=> b!2367501 m!2776835))

(declare-fun m!2776843 () Bool)

(assert (=> b!2367501 m!2776843))

(assert (=> b!2367509 m!2776831))

(assert (=> b!2367505 m!2776835))

(assert (=> b!2367505 m!2776835))

(assert (=> b!2367505 m!2776843))

(assert (=> b!2367351 d!694899))

(declare-fun d!694905 () Bool)

(assert (=> d!694905 (= (matchR!3049 r!13927 s!9460) (matchRSpec!781 r!13927 s!9460))))

(declare-fun lt!865394 () Unit!40899)

(declare-fun choose!13752 (Regex!6932 List!28102) Unit!40899)

(assert (=> d!694905 (= lt!865394 (choose!13752 r!13927 s!9460))))

(assert (=> d!694905 (validRegex!2662 r!13927)))

(assert (=> d!694905 (= (mainMatchTheorem!781 r!13927 s!9460) lt!865394)))

(declare-fun bs!461013 () Bool)

(assert (= bs!461013 d!694905))

(assert (=> bs!461013 m!2776781))

(assert (=> bs!461013 m!2776779))

(declare-fun m!2776845 () Bool)

(assert (=> bs!461013 m!2776845))

(assert (=> bs!461013 m!2776841))

(assert (=> b!2367351 d!694905))

(declare-fun d!694907 () Bool)

(assert (=> d!694907 (= (isEmpty!15930 lt!865364) (is-Nil!28005 lt!865364))))

(assert (=> b!2367362 d!694907))

(declare-fun d!694909 () Bool)

(assert (=> d!694909 (= (tail!3379 l!9164) (t!208080 l!9164))))

(assert (=> b!2367362 d!694909))

(declare-fun bs!461014 () Bool)

(declare-fun d!694911 () Bool)

(assert (= bs!461014 (and d!694911 start!232340)))

(declare-fun lambda!87440 () Int)

(assert (=> bs!461014 (= lambda!87440 lambda!87416)))

(declare-fun b!2367554 () Bool)

(declare-fun e!1511476 () Regex!6932)

(assert (=> b!2367554 (= e!1511476 (Concat!11568 (h!33406 lt!865364) (generalisedConcat!33 (t!208080 lt!865364))))))

(declare-fun b!2367555 () Bool)

(declare-fun e!1511474 () Regex!6932)

(assert (=> b!2367555 (= e!1511474 e!1511476)))

(declare-fun c!376315 () Bool)

(assert (=> b!2367555 (= c!376315 (is-Cons!28005 lt!865364))))

(declare-fun b!2367556 () Bool)

(declare-fun e!1511473 () Bool)

(declare-fun lt!865399 () Regex!6932)

(assert (=> b!2367556 (= e!1511473 (= lt!865399 (head!5109 lt!865364)))))

(declare-fun e!1511478 () Bool)

(assert (=> d!694911 e!1511478))

(declare-fun res!1004787 () Bool)

(assert (=> d!694911 (=> (not res!1004787) (not e!1511478))))

(assert (=> d!694911 (= res!1004787 (validRegex!2662 lt!865399))))

(assert (=> d!694911 (= lt!865399 e!1511474)))

(declare-fun c!376316 () Bool)

(declare-fun e!1511477 () Bool)

(assert (=> d!694911 (= c!376316 e!1511477)))

(declare-fun res!1004786 () Bool)

(assert (=> d!694911 (=> (not res!1004786) (not e!1511477))))

(assert (=> d!694911 (= res!1004786 (is-Cons!28005 lt!865364))))

(assert (=> d!694911 (forall!5566 lt!865364 lambda!87440)))

(assert (=> d!694911 (= (generalisedConcat!33 lt!865364) lt!865399)))

(declare-fun b!2367557 () Bool)

(declare-fun isConcat!17 (Regex!6932) Bool)

(assert (=> b!2367557 (= e!1511473 (isConcat!17 lt!865399))))

(declare-fun b!2367558 () Bool)

(declare-fun e!1511475 () Bool)

(assert (=> b!2367558 (= e!1511478 e!1511475)))

(declare-fun c!376314 () Bool)

(assert (=> b!2367558 (= c!376314 (isEmpty!15930 lt!865364))))

(declare-fun b!2367559 () Bool)

(assert (=> b!2367559 (= e!1511474 (h!33406 lt!865364))))

(declare-fun b!2367560 () Bool)

(declare-fun isEmptyExpr!17 (Regex!6932) Bool)

(assert (=> b!2367560 (= e!1511475 (isEmptyExpr!17 lt!865399))))

(declare-fun b!2367561 () Bool)

(assert (=> b!2367561 (= e!1511477 (isEmpty!15930 (t!208080 lt!865364)))))

(declare-fun b!2367562 () Bool)

(assert (=> b!2367562 (= e!1511475 e!1511473)))

(declare-fun c!376313 () Bool)

(assert (=> b!2367562 (= c!376313 (isEmpty!15930 (tail!3379 lt!865364)))))

(declare-fun b!2367563 () Bool)

(assert (=> b!2367563 (= e!1511476 EmptyExpr!6932)))

(assert (= (and d!694911 res!1004786) b!2367561))

(assert (= (and d!694911 c!376316) b!2367559))

(assert (= (and d!694911 (not c!376316)) b!2367555))

(assert (= (and b!2367555 c!376315) b!2367554))

(assert (= (and b!2367555 (not c!376315)) b!2367563))

(assert (= (and d!694911 res!1004787) b!2367558))

(assert (= (and b!2367558 c!376314) b!2367560))

(assert (= (and b!2367558 (not c!376314)) b!2367562))

(assert (= (and b!2367562 c!376313) b!2367556))

(assert (= (and b!2367562 (not c!376313)) b!2367557))

(declare-fun m!2776847 () Bool)

(assert (=> d!694911 m!2776847))

(declare-fun m!2776849 () Bool)

(assert (=> d!694911 m!2776849))

(declare-fun m!2776851 () Bool)

(assert (=> b!2367557 m!2776851))

(declare-fun m!2776853 () Bool)

(assert (=> b!2367554 m!2776853))

(declare-fun m!2776855 () Bool)

(assert (=> b!2367556 m!2776855))

(declare-fun m!2776857 () Bool)

(assert (=> b!2367561 m!2776857))

(declare-fun m!2776859 () Bool)

(assert (=> b!2367562 m!2776859))

(assert (=> b!2367562 m!2776859))

(declare-fun m!2776861 () Bool)

(assert (=> b!2367562 m!2776861))

(assert (=> b!2367558 m!2776763))

(declare-fun m!2776863 () Bool)

(assert (=> b!2367560 m!2776863))

(assert (=> b!2367357 d!694911))

(declare-fun d!694913 () Bool)

(declare-fun isEmpty!15933 (Option!5475) Bool)

(assert (=> d!694913 (= (isDefined!4303 (findConcatSeparation!583 (regOne!14376 r!13927) (regTwo!14376 r!13927) Nil!28004 s!9460 s!9460)) (not (isEmpty!15933 (findConcatSeparation!583 (regOne!14376 r!13927) (regTwo!14376 r!13927) Nil!28004 s!9460 s!9460))))))

(declare-fun bs!461015 () Bool)

(assert (= bs!461015 d!694913))

(assert (=> bs!461015 m!2776751))

(declare-fun m!2776865 () Bool)

(assert (=> bs!461015 m!2776865))

(assert (=> b!2367360 d!694913))

(declare-fun d!694915 () Bool)

(declare-fun choose!13753 (Int) Bool)

(assert (=> d!694915 (= (Exists!994 lambda!87417) (choose!13753 lambda!87417))))

(declare-fun bs!461016 () Bool)

(assert (= bs!461016 d!694915))

(declare-fun m!2776867 () Bool)

(assert (=> bs!461016 m!2776867))

(assert (=> b!2367360 d!694915))

(declare-fun bs!461020 () Bool)

(declare-fun d!694917 () Bool)

(assert (= bs!461020 (and d!694917 b!2367360)))

(declare-fun lambda!87445 () Int)

(assert (=> bs!461020 (= lambda!87445 lambda!87417)))

(assert (=> bs!461020 (not (= lambda!87445 lambda!87418))))

(declare-fun bs!461021 () Bool)

(assert (= bs!461021 (and d!694917 b!2367455)))

(assert (=> bs!461021 (not (= lambda!87445 lambda!87434))))

(declare-fun bs!461022 () Bool)

(assert (= bs!461022 (and d!694917 b!2367456)))

(assert (=> bs!461022 (not (= lambda!87445 lambda!87435))))

(assert (=> d!694917 true))

(assert (=> d!694917 true))

(assert (=> d!694917 true))

(assert (=> d!694917 (= (isDefined!4303 (findConcatSeparation!583 (regOne!14376 r!13927) (regTwo!14376 r!13927) Nil!28004 s!9460 s!9460)) (Exists!994 lambda!87445))))

(declare-fun lt!865404 () Unit!40899)

(declare-fun choose!13754 (Regex!6932 Regex!6932 List!28102) Unit!40899)

(assert (=> d!694917 (= lt!865404 (choose!13754 (regOne!14376 r!13927) (regTwo!14376 r!13927) s!9460))))

(assert (=> d!694917 (validRegex!2662 (regOne!14376 r!13927))))

(assert (=> d!694917 (= (lemmaFindConcatSeparationEquivalentToExists!583 (regOne!14376 r!13927) (regTwo!14376 r!13927) s!9460) lt!865404)))

(declare-fun bs!461023 () Bool)

(assert (= bs!461023 d!694917))

(assert (=> bs!461023 m!2776751))

(assert (=> bs!461023 m!2776753))

(assert (=> bs!461023 m!2776751))

(declare-fun m!2776901 () Bool)

(assert (=> bs!461023 m!2776901))

(declare-fun m!2776903 () Bool)

(assert (=> bs!461023 m!2776903))

(declare-fun m!2776905 () Bool)

(assert (=> bs!461023 m!2776905))

(assert (=> b!2367360 d!694917))

(declare-fun bs!461026 () Bool)

(declare-fun d!694923 () Bool)

(assert (= bs!461026 (and d!694923 d!694917)))

(declare-fun lambda!87450 () Int)

(assert (=> bs!461026 (= lambda!87450 lambda!87445)))

(declare-fun bs!461027 () Bool)

(assert (= bs!461027 (and d!694923 b!2367455)))

(assert (=> bs!461027 (not (= lambda!87450 lambda!87434))))

(declare-fun bs!461028 () Bool)

(assert (= bs!461028 (and d!694923 b!2367360)))

(assert (=> bs!461028 (not (= lambda!87450 lambda!87418))))

(assert (=> bs!461028 (= lambda!87450 lambda!87417)))

(declare-fun bs!461029 () Bool)

(assert (= bs!461029 (and d!694923 b!2367456)))

(assert (=> bs!461029 (not (= lambda!87450 lambda!87435))))

(assert (=> d!694923 true))

(assert (=> d!694923 true))

(assert (=> d!694923 true))

(declare-fun bs!461030 () Bool)

(assert (= bs!461030 d!694923))

(declare-fun lambda!87451 () Int)

(assert (=> bs!461030 (not (= lambda!87451 lambda!87450))))

(assert (=> bs!461026 (not (= lambda!87451 lambda!87445))))

(assert (=> bs!461027 (not (= lambda!87451 lambda!87434))))

(assert (=> bs!461028 (= lambda!87451 lambda!87418)))

(assert (=> bs!461028 (not (= lambda!87451 lambda!87417))))

(assert (=> bs!461029 (= lambda!87451 lambda!87435)))

(assert (=> d!694923 true))

(assert (=> d!694923 true))

(assert (=> d!694923 true))

(assert (=> d!694923 (= (Exists!994 lambda!87450) (Exists!994 lambda!87451))))

(declare-fun lt!865407 () Unit!40899)

(declare-fun choose!13755 (Regex!6932 Regex!6932 List!28102) Unit!40899)

(assert (=> d!694923 (= lt!865407 (choose!13755 (regOne!14376 r!13927) (regTwo!14376 r!13927) s!9460))))

(assert (=> d!694923 (validRegex!2662 (regOne!14376 r!13927))))

(assert (=> d!694923 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!333 (regOne!14376 r!13927) (regTwo!14376 r!13927) s!9460) lt!865407)))

(declare-fun m!2776911 () Bool)

(assert (=> bs!461030 m!2776911))

(declare-fun m!2776913 () Bool)

(assert (=> bs!461030 m!2776913))

(declare-fun m!2776915 () Bool)

(assert (=> bs!461030 m!2776915))

(assert (=> bs!461030 m!2776901))

(assert (=> b!2367360 d!694923))

(declare-fun d!694933 () Bool)

(assert (=> d!694933 (= (Exists!994 lambda!87418) (choose!13753 lambda!87418))))

(declare-fun bs!461031 () Bool)

(assert (= bs!461031 d!694933))

(declare-fun m!2776917 () Bool)

(assert (=> bs!461031 m!2776917))

(assert (=> b!2367360 d!694933))

(declare-fun d!694935 () Bool)

(declare-fun e!1511510 () Bool)

(assert (=> d!694935 e!1511510))

(declare-fun res!1004820 () Bool)

(assert (=> d!694935 (=> res!1004820 e!1511510)))

(declare-fun e!1511509 () Bool)

(assert (=> d!694935 (= res!1004820 e!1511509)))

(declare-fun res!1004819 () Bool)

(assert (=> d!694935 (=> (not res!1004819) (not e!1511509))))

(declare-fun lt!865419 () Option!5475)

(assert (=> d!694935 (= res!1004819 (isDefined!4303 lt!865419))))

(declare-fun e!1511511 () Option!5475)

(assert (=> d!694935 (= lt!865419 e!1511511)))

(declare-fun c!376330 () Bool)

(declare-fun e!1511512 () Bool)

(assert (=> d!694935 (= c!376330 e!1511512)))

(declare-fun res!1004822 () Bool)

(assert (=> d!694935 (=> (not res!1004822) (not e!1511512))))

(assert (=> d!694935 (= res!1004822 (matchR!3049 (regOne!14376 r!13927) Nil!28004))))

(assert (=> d!694935 (validRegex!2662 (regOne!14376 r!13927))))

(assert (=> d!694935 (= (findConcatSeparation!583 (regOne!14376 r!13927) (regTwo!14376 r!13927) Nil!28004 s!9460 s!9460) lt!865419)))

(declare-fun b!2367618 () Bool)

(declare-fun ++!6896 (List!28102 List!28102) List!28102)

(declare-fun get!8508 (Option!5475) tuple2!27728)

(assert (=> b!2367618 (= e!1511509 (= (++!6896 (_1!16405 (get!8508 lt!865419)) (_2!16405 (get!8508 lt!865419))) s!9460))))

(declare-fun b!2367619 () Bool)

(assert (=> b!2367619 (= e!1511511 (Some!5474 (tuple2!27729 Nil!28004 s!9460)))))

(declare-fun b!2367620 () Bool)

(declare-fun e!1511513 () Option!5475)

(assert (=> b!2367620 (= e!1511511 e!1511513)))

(declare-fun c!376329 () Bool)

(assert (=> b!2367620 (= c!376329 (is-Nil!28004 s!9460))))

(declare-fun b!2367621 () Bool)

(declare-fun res!1004818 () Bool)

(assert (=> b!2367621 (=> (not res!1004818) (not e!1511509))))

(assert (=> b!2367621 (= res!1004818 (matchR!3049 (regTwo!14376 r!13927) (_2!16405 (get!8508 lt!865419))))))

(declare-fun b!2367622 () Bool)

(assert (=> b!2367622 (= e!1511512 (matchR!3049 (regTwo!14376 r!13927) s!9460))))

(declare-fun b!2367623 () Bool)

(declare-fun lt!865417 () Unit!40899)

(declare-fun lt!865418 () Unit!40899)

(assert (=> b!2367623 (= lt!865417 lt!865418)))

(assert (=> b!2367623 (= (++!6896 (++!6896 Nil!28004 (Cons!28004 (h!33405 s!9460) Nil!28004)) (t!208079 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!542 (List!28102 C!14022 List!28102 List!28102) Unit!40899)

(assert (=> b!2367623 (= lt!865418 (lemmaMoveElementToOtherListKeepsConcatEq!542 Nil!28004 (h!33405 s!9460) (t!208079 s!9460) s!9460))))

(assert (=> b!2367623 (= e!1511513 (findConcatSeparation!583 (regOne!14376 r!13927) (regTwo!14376 r!13927) (++!6896 Nil!28004 (Cons!28004 (h!33405 s!9460) Nil!28004)) (t!208079 s!9460) s!9460))))

(declare-fun b!2367624 () Bool)

(assert (=> b!2367624 (= e!1511510 (not (isDefined!4303 lt!865419)))))

(declare-fun b!2367625 () Bool)

(assert (=> b!2367625 (= e!1511513 None!5474)))

(declare-fun b!2367626 () Bool)

(declare-fun res!1004821 () Bool)

(assert (=> b!2367626 (=> (not res!1004821) (not e!1511509))))

(assert (=> b!2367626 (= res!1004821 (matchR!3049 (regOne!14376 r!13927) (_1!16405 (get!8508 lt!865419))))))

(assert (= (and d!694935 res!1004822) b!2367622))

(assert (= (and d!694935 c!376330) b!2367619))

(assert (= (and d!694935 (not c!376330)) b!2367620))

(assert (= (and b!2367620 c!376329) b!2367625))

(assert (= (and b!2367620 (not c!376329)) b!2367623))

(assert (= (and d!694935 res!1004819) b!2367626))

(assert (= (and b!2367626 res!1004821) b!2367621))

(assert (= (and b!2367621 res!1004818) b!2367618))

(assert (= (and d!694935 (not res!1004820)) b!2367624))

(declare-fun m!2776919 () Bool)

(assert (=> d!694935 m!2776919))

(declare-fun m!2776921 () Bool)

(assert (=> d!694935 m!2776921))

(assert (=> d!694935 m!2776901))

(assert (=> b!2367624 m!2776919))

(declare-fun m!2776923 () Bool)

(assert (=> b!2367623 m!2776923))

(assert (=> b!2367623 m!2776923))

(declare-fun m!2776925 () Bool)

(assert (=> b!2367623 m!2776925))

(declare-fun m!2776929 () Bool)

(assert (=> b!2367623 m!2776929))

(assert (=> b!2367623 m!2776923))

(declare-fun m!2776931 () Bool)

(assert (=> b!2367623 m!2776931))

(declare-fun m!2776933 () Bool)

(assert (=> b!2367621 m!2776933))

(declare-fun m!2776935 () Bool)

(assert (=> b!2367621 m!2776935))

(assert (=> b!2367618 m!2776933))

(declare-fun m!2776939 () Bool)

(assert (=> b!2367618 m!2776939))

(declare-fun m!2776941 () Bool)

(assert (=> b!2367622 m!2776941))

(assert (=> b!2367626 m!2776933))

(declare-fun m!2776945 () Bool)

(assert (=> b!2367626 m!2776945))

(assert (=> b!2367360 d!694935))

(declare-fun b!2367645 () Bool)

(declare-fun e!1511528 () Bool)

(declare-fun e!1511530 () Bool)

(assert (=> b!2367645 (= e!1511528 e!1511530)))

(declare-fun res!1004835 () Bool)

(assert (=> b!2367645 (=> (not res!1004835) (not e!1511530))))

(declare-fun call!144012 () Bool)

(assert (=> b!2367645 (= res!1004835 call!144012)))

(declare-fun d!694937 () Bool)

(declare-fun res!1004833 () Bool)

(declare-fun e!1511529 () Bool)

(assert (=> d!694937 (=> res!1004833 e!1511529)))

(assert (=> d!694937 (= res!1004833 (is-ElementMatch!6932 (head!5109 l!9164)))))

(assert (=> d!694937 (= (validRegex!2662 (head!5109 l!9164)) e!1511529)))

(declare-fun b!2367646 () Bool)

(declare-fun call!144011 () Bool)

(assert (=> b!2367646 (= e!1511530 call!144011)))

(declare-fun b!2367647 () Bool)

(declare-fun res!1004836 () Bool)

(declare-fun e!1511532 () Bool)

(assert (=> b!2367647 (=> (not res!1004836) (not e!1511532))))

(assert (=> b!2367647 (= res!1004836 call!144011)))

(declare-fun e!1511534 () Bool)

(assert (=> b!2367647 (= e!1511534 e!1511532)))

(declare-fun call!144010 () Bool)

(declare-fun c!376336 () Bool)

(declare-fun c!376335 () Bool)

(declare-fun bm!144005 () Bool)

(assert (=> bm!144005 (= call!144010 (validRegex!2662 (ite c!376335 (reg!7261 (head!5109 l!9164)) (ite c!376336 (regOne!14377 (head!5109 l!9164)) (regTwo!14376 (head!5109 l!9164))))))))

(declare-fun b!2367648 () Bool)

(declare-fun e!1511531 () Bool)

(declare-fun e!1511533 () Bool)

(assert (=> b!2367648 (= e!1511531 e!1511533)))

(declare-fun res!1004834 () Bool)

(assert (=> b!2367648 (= res!1004834 (not (nullable!1995 (reg!7261 (head!5109 l!9164)))))))

(assert (=> b!2367648 (=> (not res!1004834) (not e!1511533))))

(declare-fun b!2367649 () Bool)

(assert (=> b!2367649 (= e!1511529 e!1511531)))

(assert (=> b!2367649 (= c!376335 (is-Star!6932 (head!5109 l!9164)))))

(declare-fun b!2367650 () Bool)

(assert (=> b!2367650 (= e!1511532 call!144012)))

(declare-fun b!2367651 () Bool)

(declare-fun res!1004837 () Bool)

(assert (=> b!2367651 (=> res!1004837 e!1511528)))

(assert (=> b!2367651 (= res!1004837 (not (is-Concat!11568 (head!5109 l!9164))))))

(assert (=> b!2367651 (= e!1511534 e!1511528)))

(declare-fun b!2367652 () Bool)

(assert (=> b!2367652 (= e!1511531 e!1511534)))

(assert (=> b!2367652 (= c!376336 (is-Union!6932 (head!5109 l!9164)))))

(declare-fun b!2367653 () Bool)

(assert (=> b!2367653 (= e!1511533 call!144010)))

(declare-fun bm!144006 () Bool)

(assert (=> bm!144006 (= call!144011 call!144010)))

(declare-fun bm!144007 () Bool)

(assert (=> bm!144007 (= call!144012 (validRegex!2662 (ite c!376336 (regTwo!14377 (head!5109 l!9164)) (regOne!14376 (head!5109 l!9164)))))))

(assert (= (and d!694937 (not res!1004833)) b!2367649))

(assert (= (and b!2367649 c!376335) b!2367648))

(assert (= (and b!2367649 (not c!376335)) b!2367652))

(assert (= (and b!2367648 res!1004834) b!2367653))

(assert (= (and b!2367652 c!376336) b!2367647))

(assert (= (and b!2367652 (not c!376336)) b!2367651))

(assert (= (and b!2367647 res!1004836) b!2367650))

(assert (= (and b!2367651 (not res!1004837)) b!2367645))

(assert (= (and b!2367645 res!1004835) b!2367646))

(assert (= (or b!2367647 b!2367646) bm!144006))

(assert (= (or b!2367650 b!2367645) bm!144007))

(assert (= (or b!2367653 bm!144006) bm!144005))

(declare-fun m!2776947 () Bool)

(assert (=> bm!144005 m!2776947))

(declare-fun m!2776949 () Bool)

(assert (=> b!2367648 m!2776949))

(declare-fun m!2776951 () Bool)

(assert (=> bm!144007 m!2776951))

(assert (=> b!2367361 d!694937))

(declare-fun d!694941 () Bool)

(assert (=> d!694941 (= (head!5109 l!9164) (h!33406 l!9164))))

(assert (=> b!2367361 d!694941))

(declare-fun d!694943 () Bool)

(declare-fun res!1004842 () Bool)

(declare-fun e!1511539 () Bool)

(assert (=> d!694943 (=> res!1004842 e!1511539)))

(assert (=> d!694943 (= res!1004842 (is-Nil!28005 l!9164))))

(assert (=> d!694943 (= (forall!5566 l!9164 lambda!87416) e!1511539)))

(declare-fun b!2367658 () Bool)

(declare-fun e!1511540 () Bool)

(assert (=> b!2367658 (= e!1511539 e!1511540)))

(declare-fun res!1004843 () Bool)

(assert (=> b!2367658 (=> (not res!1004843) (not e!1511540))))

(declare-fun dynLambda!12063 (Int Regex!6932) Bool)

(assert (=> b!2367658 (= res!1004843 (dynLambda!12063 lambda!87416 (h!33406 l!9164)))))

(declare-fun b!2367659 () Bool)

(assert (=> b!2367659 (= e!1511540 (forall!5566 (t!208080 l!9164) lambda!87416))))

(assert (= (and d!694943 (not res!1004842)) b!2367658))

(assert (= (and b!2367658 res!1004843) b!2367659))

(declare-fun b_lambda!73893 () Bool)

(assert (=> (not b_lambda!73893) (not b!2367658)))

(declare-fun m!2776953 () Bool)

(assert (=> b!2367658 m!2776953))

(declare-fun m!2776955 () Bool)

(assert (=> b!2367659 m!2776955))

(assert (=> start!232340 d!694943))

(declare-fun d!694945 () Bool)

(assert (=> d!694945 (= (isEmpty!15930 l!9164) (is-Nil!28005 l!9164))))

(assert (=> b!2367359 d!694945))

(declare-fun bs!461034 () Bool)

(declare-fun d!694947 () Bool)

(assert (= bs!461034 (and d!694947 start!232340)))

(declare-fun lambda!87455 () Int)

(assert (=> bs!461034 (= lambda!87455 lambda!87416)))

(declare-fun bs!461035 () Bool)

(assert (= bs!461035 (and d!694947 d!694911)))

(assert (=> bs!461035 (= lambda!87455 lambda!87440)))

(declare-fun b!2367660 () Bool)

(declare-fun e!1511544 () Regex!6932)

(assert (=> b!2367660 (= e!1511544 (Concat!11568 (h!33406 l!9164) (generalisedConcat!33 (t!208080 l!9164))))))

(declare-fun b!2367661 () Bool)

(declare-fun e!1511542 () Regex!6932)

(assert (=> b!2367661 (= e!1511542 e!1511544)))

(declare-fun c!376339 () Bool)

(assert (=> b!2367661 (= c!376339 (is-Cons!28005 l!9164))))

(declare-fun b!2367662 () Bool)

(declare-fun e!1511541 () Bool)

(declare-fun lt!865420 () Regex!6932)

(assert (=> b!2367662 (= e!1511541 (= lt!865420 (head!5109 l!9164)))))

(declare-fun e!1511546 () Bool)

(assert (=> d!694947 e!1511546))

(declare-fun res!1004845 () Bool)

(assert (=> d!694947 (=> (not res!1004845) (not e!1511546))))

(assert (=> d!694947 (= res!1004845 (validRegex!2662 lt!865420))))

(assert (=> d!694947 (= lt!865420 e!1511542)))

(declare-fun c!376340 () Bool)

(declare-fun e!1511545 () Bool)

(assert (=> d!694947 (= c!376340 e!1511545)))

(declare-fun res!1004844 () Bool)

(assert (=> d!694947 (=> (not res!1004844) (not e!1511545))))

(assert (=> d!694947 (= res!1004844 (is-Cons!28005 l!9164))))

(assert (=> d!694947 (forall!5566 l!9164 lambda!87455)))

(assert (=> d!694947 (= (generalisedConcat!33 l!9164) lt!865420)))

(declare-fun b!2367663 () Bool)

(assert (=> b!2367663 (= e!1511541 (isConcat!17 lt!865420))))

(declare-fun b!2367664 () Bool)

(declare-fun e!1511543 () Bool)

(assert (=> b!2367664 (= e!1511546 e!1511543)))

(declare-fun c!376338 () Bool)

(assert (=> b!2367664 (= c!376338 (isEmpty!15930 l!9164))))

(declare-fun b!2367665 () Bool)

(assert (=> b!2367665 (= e!1511542 (h!33406 l!9164))))

(declare-fun b!2367666 () Bool)

(assert (=> b!2367666 (= e!1511543 (isEmptyExpr!17 lt!865420))))

(declare-fun b!2367667 () Bool)

(assert (=> b!2367667 (= e!1511545 (isEmpty!15930 (t!208080 l!9164)))))

(declare-fun b!2367668 () Bool)

(assert (=> b!2367668 (= e!1511543 e!1511541)))

(declare-fun c!376337 () Bool)

(assert (=> b!2367668 (= c!376337 (isEmpty!15930 (tail!3379 l!9164)))))

(declare-fun b!2367669 () Bool)

(assert (=> b!2367669 (= e!1511544 EmptyExpr!6932)))

(assert (= (and d!694947 res!1004844) b!2367667))

(assert (= (and d!694947 c!376340) b!2367665))

(assert (= (and d!694947 (not c!376340)) b!2367661))

(assert (= (and b!2367661 c!376339) b!2367660))

(assert (= (and b!2367661 (not c!376339)) b!2367669))

(assert (= (and d!694947 res!1004845) b!2367664))

(assert (= (and b!2367664 c!376338) b!2367666))

(assert (= (and b!2367664 (not c!376338)) b!2367668))

(assert (= (and b!2367668 c!376337) b!2367662))

(assert (= (and b!2367668 (not c!376337)) b!2367663))

(declare-fun m!2776957 () Bool)

(assert (=> d!694947 m!2776957))

(declare-fun m!2776959 () Bool)

(assert (=> d!694947 m!2776959))

(declare-fun m!2776961 () Bool)

(assert (=> b!2367663 m!2776961))

(declare-fun m!2776963 () Bool)

(assert (=> b!2367660 m!2776963))

(assert (=> b!2367662 m!2776775))

(declare-fun m!2776965 () Bool)

(assert (=> b!2367667 m!2776965))

(assert (=> b!2367668 m!2776765))

(assert (=> b!2367668 m!2776765))

(declare-fun m!2776967 () Bool)

(assert (=> b!2367668 m!2776967))

(assert (=> b!2367664 m!2776773))

(declare-fun m!2776969 () Bool)

(assert (=> b!2367666 m!2776969))

(assert (=> b!2367354 d!694947))

(declare-fun b!2367680 () Bool)

(declare-fun e!1511549 () Bool)

(assert (=> b!2367680 (= e!1511549 tp_is_empty!11277)))

(declare-fun b!2367683 () Bool)

(declare-fun tp!757051 () Bool)

(declare-fun tp!757048 () Bool)

(assert (=> b!2367683 (= e!1511549 (and tp!757051 tp!757048))))

(declare-fun b!2367682 () Bool)

(declare-fun tp!757049 () Bool)

(assert (=> b!2367682 (= e!1511549 tp!757049)))

(declare-fun b!2367681 () Bool)

(declare-fun tp!757050 () Bool)

(declare-fun tp!757052 () Bool)

(assert (=> b!2367681 (= e!1511549 (and tp!757050 tp!757052))))

(assert (=> b!2367356 (= tp!757007 e!1511549)))

(assert (= (and b!2367356 (is-ElementMatch!6932 (regOne!14377 r!13927))) b!2367680))

(assert (= (and b!2367356 (is-Concat!11568 (regOne!14377 r!13927))) b!2367681))

(assert (= (and b!2367356 (is-Star!6932 (regOne!14377 r!13927))) b!2367682))

(assert (= (and b!2367356 (is-Union!6932 (regOne!14377 r!13927))) b!2367683))

(declare-fun b!2367684 () Bool)

(declare-fun e!1511550 () Bool)

(assert (=> b!2367684 (= e!1511550 tp_is_empty!11277)))

(declare-fun b!2367687 () Bool)

(declare-fun tp!757056 () Bool)

(declare-fun tp!757053 () Bool)

(assert (=> b!2367687 (= e!1511550 (and tp!757056 tp!757053))))

(declare-fun b!2367686 () Bool)

(declare-fun tp!757054 () Bool)

(assert (=> b!2367686 (= e!1511550 tp!757054)))

(declare-fun b!2367685 () Bool)

(declare-fun tp!757055 () Bool)

(declare-fun tp!757057 () Bool)

(assert (=> b!2367685 (= e!1511550 (and tp!757055 tp!757057))))

(assert (=> b!2367356 (= tp!757012 e!1511550)))

(assert (= (and b!2367356 (is-ElementMatch!6932 (regTwo!14377 r!13927))) b!2367684))

(assert (= (and b!2367356 (is-Concat!11568 (regTwo!14377 r!13927))) b!2367685))

(assert (= (and b!2367356 (is-Star!6932 (regTwo!14377 r!13927))) b!2367686))

(assert (= (and b!2367356 (is-Union!6932 (regTwo!14377 r!13927))) b!2367687))

(declare-fun b!2367688 () Bool)

(declare-fun e!1511551 () Bool)

(assert (=> b!2367688 (= e!1511551 tp_is_empty!11277)))

(declare-fun b!2367691 () Bool)

(declare-fun tp!757061 () Bool)

(declare-fun tp!757058 () Bool)

(assert (=> b!2367691 (= e!1511551 (and tp!757061 tp!757058))))

(declare-fun b!2367690 () Bool)

(declare-fun tp!757059 () Bool)

(assert (=> b!2367690 (= e!1511551 tp!757059)))

(declare-fun b!2367689 () Bool)

(declare-fun tp!757060 () Bool)

(declare-fun tp!757062 () Bool)

(assert (=> b!2367689 (= e!1511551 (and tp!757060 tp!757062))))

(assert (=> b!2367355 (= tp!757009 e!1511551)))

(assert (= (and b!2367355 (is-ElementMatch!6932 (reg!7261 r!13927))) b!2367688))

(assert (= (and b!2367355 (is-Concat!11568 (reg!7261 r!13927))) b!2367689))

(assert (= (and b!2367355 (is-Star!6932 (reg!7261 r!13927))) b!2367690))

(assert (= (and b!2367355 (is-Union!6932 (reg!7261 r!13927))) b!2367691))

(declare-fun b!2367696 () Bool)

(declare-fun e!1511554 () Bool)

(declare-fun tp!757065 () Bool)

(assert (=> b!2367696 (= e!1511554 (and tp_is_empty!11277 tp!757065))))

(assert (=> b!2367352 (= tp!757006 e!1511554)))

(assert (= (and b!2367352 (is-Cons!28004 (t!208079 s!9460))) b!2367696))

(declare-fun b!2367697 () Bool)

(declare-fun e!1511555 () Bool)

(assert (=> b!2367697 (= e!1511555 tp_is_empty!11277)))

(declare-fun b!2367700 () Bool)

(declare-fun tp!757069 () Bool)

(declare-fun tp!757066 () Bool)

(assert (=> b!2367700 (= e!1511555 (and tp!757069 tp!757066))))

(declare-fun b!2367699 () Bool)

(declare-fun tp!757067 () Bool)

(assert (=> b!2367699 (= e!1511555 tp!757067)))

(declare-fun b!2367698 () Bool)

(declare-fun tp!757068 () Bool)

(declare-fun tp!757070 () Bool)

(assert (=> b!2367698 (= e!1511555 (and tp!757068 tp!757070))))

(assert (=> b!2367358 (= tp!757010 e!1511555)))

(assert (= (and b!2367358 (is-ElementMatch!6932 (regOne!14376 r!13927))) b!2367697))

(assert (= (and b!2367358 (is-Concat!11568 (regOne!14376 r!13927))) b!2367698))

(assert (= (and b!2367358 (is-Star!6932 (regOne!14376 r!13927))) b!2367699))

(assert (= (and b!2367358 (is-Union!6932 (regOne!14376 r!13927))) b!2367700))

(declare-fun b!2367701 () Bool)

(declare-fun e!1511556 () Bool)

(assert (=> b!2367701 (= e!1511556 tp_is_empty!11277)))

(declare-fun b!2367704 () Bool)

(declare-fun tp!757074 () Bool)

(declare-fun tp!757071 () Bool)

(assert (=> b!2367704 (= e!1511556 (and tp!757074 tp!757071))))

(declare-fun b!2367703 () Bool)

(declare-fun tp!757072 () Bool)

(assert (=> b!2367703 (= e!1511556 tp!757072)))

(declare-fun b!2367702 () Bool)

(declare-fun tp!757073 () Bool)

(declare-fun tp!757075 () Bool)

(assert (=> b!2367702 (= e!1511556 (and tp!757073 tp!757075))))

(assert (=> b!2367358 (= tp!757008 e!1511556)))

(assert (= (and b!2367358 (is-ElementMatch!6932 (regTwo!14376 r!13927))) b!2367701))

(assert (= (and b!2367358 (is-Concat!11568 (regTwo!14376 r!13927))) b!2367702))

(assert (= (and b!2367358 (is-Star!6932 (regTwo!14376 r!13927))) b!2367703))

(assert (= (and b!2367358 (is-Union!6932 (regTwo!14376 r!13927))) b!2367704))

(declare-fun b!2367705 () Bool)

(declare-fun e!1511557 () Bool)

(assert (=> b!2367705 (= e!1511557 tp_is_empty!11277)))

(declare-fun b!2367708 () Bool)

(declare-fun tp!757079 () Bool)

(declare-fun tp!757076 () Bool)

(assert (=> b!2367708 (= e!1511557 (and tp!757079 tp!757076))))

(declare-fun b!2367707 () Bool)

(declare-fun tp!757077 () Bool)

(assert (=> b!2367707 (= e!1511557 tp!757077)))

(declare-fun b!2367706 () Bool)

(declare-fun tp!757078 () Bool)

(declare-fun tp!757080 () Bool)

(assert (=> b!2367706 (= e!1511557 (and tp!757078 tp!757080))))

(assert (=> b!2367353 (= tp!757011 e!1511557)))

(assert (= (and b!2367353 (is-ElementMatch!6932 (h!33406 l!9164))) b!2367705))

(assert (= (and b!2367353 (is-Concat!11568 (h!33406 l!9164))) b!2367706))

(assert (= (and b!2367353 (is-Star!6932 (h!33406 l!9164))) b!2367707))

(assert (= (and b!2367353 (is-Union!6932 (h!33406 l!9164))) b!2367708))

(declare-fun b!2367713 () Bool)

(declare-fun e!1511560 () Bool)

(declare-fun tp!757085 () Bool)

(declare-fun tp!757086 () Bool)

(assert (=> b!2367713 (= e!1511560 (and tp!757085 tp!757086))))

(assert (=> b!2367353 (= tp!757013 e!1511560)))

(assert (= (and b!2367353 (is-Cons!28005 (t!208080 l!9164))) b!2367713))

(declare-fun b_lambda!73895 () Bool)

(assert (= b_lambda!73893 (or start!232340 b_lambda!73895)))

(declare-fun bs!461036 () Bool)

(declare-fun d!694949 () Bool)

(assert (= bs!461036 (and d!694949 start!232340)))

(assert (=> bs!461036 (= (dynLambda!12063 lambda!87416 (h!33406 l!9164)) (validRegex!2662 (h!33406 l!9164)))))

(declare-fun m!2776971 () Bool)

(assert (=> bs!461036 m!2776971))

(assert (=> b!2367658 d!694949))

(push 1)

(assert (not b!2367660))

(assert (not b!2367689))

(assert (not b!2367457))

(assert (not b!2367686))

(assert (not b!2367666))

(assert (not d!694905))

(assert (not b!2367624))

(assert (not b!2367663))

(assert (not b!2367459))

(assert (not b!2367560))

(assert (not b!2367659))

(assert (not d!694923))

(assert (not bm!144007))

(assert (not b!2367562))

(assert (not b_lambda!73895))

(assert (not b!2367708))

(assert (not b!2367706))

(assert (not b!2367699))

(assert tp_is_empty!11277)

(assert (not b!2367512))

(assert (not b!2367623))

(assert (not b!2367509))

(assert (not b!2367662))

(assert (not b!2367667))

(assert (not d!694913))

(assert (not b!2367554))

(assert (not b!2367648))

(assert (not b!2367702))

(assert (not b!2367505))

(assert (not d!694947))

(assert (not d!694915))

(assert (not b!2367696))

(assert (not b!2367668))

(assert (not b!2367690))

(assert (not b!2367504))

(assert (not b!2367685))

(assert (not b!2367561))

(assert (not b!2367713))

(assert (not bs!461036))

(assert (not b!2367698))

(assert (not d!694911))

(assert (not bm!143998))

(assert (not bm!143995))

(assert (not bm!144005))

(assert (not b!2367626))

(assert (not b!2367703))

(assert (not b!2367683))

(assert (not b!2367501))

(assert (not b!2367691))

(assert (not d!694935))

(assert (not b!2367704))

(assert (not b!2367557))

(assert (not d!694917))

(assert (not b!2367664))

(assert (not b!2367700))

(assert (not b!2367618))

(assert (not bm!143994))

(assert (not b!2367556))

(assert (not d!694933))

(assert (not b!2367622))

(assert (not b!2367681))

(assert (not b!2367500))

(assert (not b!2367682))

(assert (not b!2367707))

(assert (not b!2367558))

(assert (not b!2367621))

(assert (not d!694899))

(assert (not b!2367687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

