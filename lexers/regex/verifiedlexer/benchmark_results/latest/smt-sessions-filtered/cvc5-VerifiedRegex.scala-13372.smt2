; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724648 () Bool)

(assert start!724648)

(declare-fun b!7478340 () Bool)

(assert (=> b!7478340 true))

(assert (=> b!7478340 true))

(assert (=> b!7478340 true))

(declare-fun lambda!463329 () Int)

(declare-fun lambda!463328 () Int)

(assert (=> b!7478340 (not (= lambda!463329 lambda!463328))))

(assert (=> b!7478340 true))

(assert (=> b!7478340 true))

(assert (=> b!7478340 true))

(declare-fun b!7478330 () Bool)

(declare-fun e!4460947 () Bool)

(declare-fun tp!2168977 () Bool)

(declare-fun tp!2168980 () Bool)

(assert (=> b!7478330 (= e!4460947 (and tp!2168977 tp!2168980))))

(declare-fun b!7478331 () Bool)

(declare-fun e!4460950 () Bool)

(declare-fun tp!2168984 () Bool)

(declare-fun tp!2168986 () Bool)

(assert (=> b!7478331 (= e!4460950 (and tp!2168984 tp!2168986))))

(declare-fun b!7478332 () Bool)

(declare-fun tp!2168979 () Bool)

(assert (=> b!7478332 (= e!4460950 tp!2168979)))

(declare-fun b!7478333 () Bool)

(declare-fun e!4460948 () Bool)

(declare-fun tp!2168975 () Bool)

(declare-fun tp!2168982 () Bool)

(assert (=> b!7478333 (= e!4460948 (and tp!2168975 tp!2168982))))

(declare-fun b!7478334 () Bool)

(declare-fun res!3000233 () Bool)

(declare-fun e!4460951 () Bool)

(assert (=> b!7478334 (=> (not res!3000233) (not e!4460951))))

(declare-datatypes ((C!39486 0))(
  ( (C!39487 (val!30141 Int)) )
))
(declare-datatypes ((Regex!19606 0))(
  ( (ElementMatch!19606 (c!1381411 C!39486)) (Concat!28451 (regOne!39724 Regex!19606) (regTwo!39724 Regex!19606)) (EmptyExpr!19606) (Star!19606 (reg!19935 Regex!19606)) (EmptyLang!19606) (Union!19606 (regOne!39725 Regex!19606) (regTwo!39725 Regex!19606)) )
))
(declare-fun r2!5783 () Regex!19606)

(declare-fun validRegex!10120 (Regex!19606) Bool)

(assert (=> b!7478334 (= res!3000233 (validRegex!10120 r2!5783))))

(declare-fun b!7478335 () Bool)

(declare-fun tp_is_empty!49501 () Bool)

(assert (=> b!7478335 (= e!4460950 tp_is_empty!49501)))

(declare-fun b!7478336 () Bool)

(declare-fun tp!2168987 () Bool)

(assert (=> b!7478336 (= e!4460947 tp!2168987)))

(declare-fun b!7478337 () Bool)

(declare-fun e!4460949 () Bool)

(declare-fun tp!2168974 () Bool)

(assert (=> b!7478337 (= e!4460949 (and tp_is_empty!49501 tp!2168974))))

(declare-fun b!7478338 () Bool)

(declare-fun e!4460945 () Bool)

(declare-fun lt!2627575 () Bool)

(declare-fun lt!2627580 () Bool)

(assert (=> b!7478338 (= e!4460945 (or lt!2627575 lt!2627580))))

(declare-fun lt!2627579 () Regex!19606)

(declare-datatypes ((List!72322 0))(
  ( (Nil!72198) (Cons!72198 (h!78646 C!39486) (t!386891 List!72322)) )
))
(declare-fun s!13591 () List!72322)

(declare-fun matchRSpec!4285 (Regex!19606 List!72322) Bool)

(assert (=> b!7478338 (= lt!2627580 (matchRSpec!4285 lt!2627579 s!13591))))

(declare-fun matchR!9370 (Regex!19606 List!72322) Bool)

(assert (=> b!7478338 (= lt!2627580 (matchR!9370 lt!2627579 s!13591))))

(declare-datatypes ((Unit!166047 0))(
  ( (Unit!166048) )
))
(declare-fun lt!2627587 () Unit!166047)

(declare-fun mainMatchTheorem!4279 (Regex!19606 List!72322) Unit!166047)

(assert (=> b!7478338 (= lt!2627587 (mainMatchTheorem!4279 lt!2627579 s!13591))))

(declare-fun lt!2627588 () Regex!19606)

(assert (=> b!7478338 (= lt!2627575 (matchRSpec!4285 lt!2627588 s!13591))))

(assert (=> b!7478338 (= lt!2627575 (matchR!9370 lt!2627588 s!13591))))

(declare-fun lt!2627583 () Unit!166047)

(assert (=> b!7478338 (= lt!2627583 (mainMatchTheorem!4279 lt!2627588 s!13591))))

(declare-fun b!7478339 () Bool)

(assert (=> b!7478339 (= e!4460947 tp_is_empty!49501)))

(declare-fun e!4460946 () Bool)

(assert (=> b!7478340 (= e!4460946 e!4460945)))

(declare-fun res!3000234 () Bool)

(assert (=> b!7478340 (=> res!3000234 e!4460945)))

(declare-fun lt!2627589 () Bool)

(declare-fun lt!2627581 () Bool)

(assert (=> b!7478340 (= res!3000234 (or lt!2627589 (not lt!2627581)))))

(declare-fun Exists!4225 (Int) Bool)

(assert (=> b!7478340 (= (Exists!4225 lambda!463328) (Exists!4225 lambda!463329))))

(declare-fun lt!2627577 () Unit!166047)

(declare-fun lt!2627578 () Regex!19606)

(declare-fun rTail!78 () Regex!19606)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2559 (Regex!19606 Regex!19606 List!72322) Unit!166047)

(assert (=> b!7478340 (= lt!2627577 (lemmaExistCutMatchRandMatchRSpecEquivalent!2559 lt!2627578 rTail!78 s!13591))))

(assert (=> b!7478340 (= lt!2627589 (Exists!4225 lambda!463328))))

(declare-datatypes ((tuple2!68662 0))(
  ( (tuple2!68663 (_1!37634 List!72322) (_2!37634 List!72322)) )
))
(declare-datatypes ((Option!17163 0))(
  ( (None!17162) (Some!17162 (v!54291 tuple2!68662)) )
))
(declare-fun isDefined!13852 (Option!17163) Bool)

(declare-fun findConcatSeparation!3285 (Regex!19606 Regex!19606 List!72322 List!72322 List!72322) Option!17163)

(assert (=> b!7478340 (= lt!2627589 (isDefined!13852 (findConcatSeparation!3285 lt!2627578 rTail!78 Nil!72198 s!13591 s!13591)))))

(declare-fun lt!2627586 () Unit!166047)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3043 (Regex!19606 Regex!19606 List!72322) Unit!166047)

(assert (=> b!7478340 (= lt!2627586 (lemmaFindConcatSeparationEquivalentToExists!3043 lt!2627578 rTail!78 s!13591))))

(declare-fun b!7478341 () Bool)

(declare-fun tp!2168981 () Bool)

(declare-fun tp!2168972 () Bool)

(assert (=> b!7478341 (= e!4460950 (and tp!2168981 tp!2168972))))

(declare-fun b!7478342 () Bool)

(declare-fun tp!2168985 () Bool)

(assert (=> b!7478342 (= e!4460948 tp!2168985)))

(declare-fun res!3000237 () Bool)

(assert (=> start!724648 (=> (not res!3000237) (not e!4460951))))

(declare-fun r1!5845 () Regex!19606)

(assert (=> start!724648 (= res!3000237 (validRegex!10120 r1!5845))))

(assert (=> start!724648 e!4460951))

(assert (=> start!724648 e!4460950))

(assert (=> start!724648 e!4460947))

(assert (=> start!724648 e!4460948))

(assert (=> start!724648 e!4460949))

(declare-fun b!7478343 () Bool)

(assert (=> b!7478343 (= e!4460951 (not e!4460946))))

(declare-fun res!3000236 () Bool)

(assert (=> b!7478343 (=> res!3000236 e!4460946)))

(declare-fun lt!2627584 () Bool)

(assert (=> b!7478343 (= res!3000236 lt!2627584)))

(declare-fun lt!2627585 () Regex!19606)

(assert (=> b!7478343 (= lt!2627581 (matchRSpec!4285 lt!2627585 s!13591))))

(assert (=> b!7478343 (= lt!2627581 (matchR!9370 lt!2627585 s!13591))))

(declare-fun lt!2627576 () Unit!166047)

(assert (=> b!7478343 (= lt!2627576 (mainMatchTheorem!4279 lt!2627585 s!13591))))

(declare-fun lt!2627574 () Regex!19606)

(assert (=> b!7478343 (= lt!2627584 (matchRSpec!4285 lt!2627574 s!13591))))

(assert (=> b!7478343 (= lt!2627584 (matchR!9370 lt!2627574 s!13591))))

(declare-fun lt!2627582 () Unit!166047)

(assert (=> b!7478343 (= lt!2627582 (mainMatchTheorem!4279 lt!2627574 s!13591))))

(assert (=> b!7478343 (= lt!2627585 (Union!19606 lt!2627588 lt!2627579))))

(assert (=> b!7478343 (= lt!2627579 (Concat!28451 r2!5783 rTail!78))))

(assert (=> b!7478343 (= lt!2627588 (Concat!28451 r1!5845 rTail!78))))

(assert (=> b!7478343 (= lt!2627574 (Concat!28451 lt!2627578 rTail!78))))

(assert (=> b!7478343 (= lt!2627578 (Union!19606 r1!5845 r2!5783))))

(declare-fun b!7478344 () Bool)

(declare-fun res!3000235 () Bool)

(assert (=> b!7478344 (=> (not res!3000235) (not e!4460951))))

(assert (=> b!7478344 (= res!3000235 (validRegex!10120 rTail!78))))

(declare-fun b!7478345 () Bool)

(assert (=> b!7478345 (= e!4460948 tp_is_empty!49501)))

(declare-fun b!7478346 () Bool)

(declare-fun tp!2168976 () Bool)

(declare-fun tp!2168973 () Bool)

(assert (=> b!7478346 (= e!4460948 (and tp!2168976 tp!2168973))))

(declare-fun b!7478347 () Bool)

(declare-fun tp!2168983 () Bool)

(declare-fun tp!2168978 () Bool)

(assert (=> b!7478347 (= e!4460947 (and tp!2168983 tp!2168978))))

(assert (= (and start!724648 res!3000237) b!7478334))

(assert (= (and b!7478334 res!3000233) b!7478344))

(assert (= (and b!7478344 res!3000235) b!7478343))

(assert (= (and b!7478343 (not res!3000236)) b!7478340))

(assert (= (and b!7478340 (not res!3000234)) b!7478338))

(assert (= (and start!724648 (is-ElementMatch!19606 r1!5845)) b!7478335))

(assert (= (and start!724648 (is-Concat!28451 r1!5845)) b!7478341))

(assert (= (and start!724648 (is-Star!19606 r1!5845)) b!7478332))

(assert (= (and start!724648 (is-Union!19606 r1!5845)) b!7478331))

(assert (= (and start!724648 (is-ElementMatch!19606 r2!5783)) b!7478339))

(assert (= (and start!724648 (is-Concat!28451 r2!5783)) b!7478330))

(assert (= (and start!724648 (is-Star!19606 r2!5783)) b!7478336))

(assert (= (and start!724648 (is-Union!19606 r2!5783)) b!7478347))

(assert (= (and start!724648 (is-ElementMatch!19606 rTail!78)) b!7478345))

(assert (= (and start!724648 (is-Concat!28451 rTail!78)) b!7478333))

(assert (= (and start!724648 (is-Star!19606 rTail!78)) b!7478342))

(assert (= (and start!724648 (is-Union!19606 rTail!78)) b!7478346))

(assert (= (and start!724648 (is-Cons!72198 s!13591)) b!7478337))

(declare-fun m!8071692 () Bool)

(assert (=> b!7478343 m!8071692))

(declare-fun m!8071694 () Bool)

(assert (=> b!7478343 m!8071694))

(declare-fun m!8071696 () Bool)

(assert (=> b!7478343 m!8071696))

(declare-fun m!8071698 () Bool)

(assert (=> b!7478343 m!8071698))

(declare-fun m!8071700 () Bool)

(assert (=> b!7478343 m!8071700))

(declare-fun m!8071702 () Bool)

(assert (=> b!7478343 m!8071702))

(declare-fun m!8071704 () Bool)

(assert (=> b!7478338 m!8071704))

(declare-fun m!8071706 () Bool)

(assert (=> b!7478338 m!8071706))

(declare-fun m!8071708 () Bool)

(assert (=> b!7478338 m!8071708))

(declare-fun m!8071710 () Bool)

(assert (=> b!7478338 m!8071710))

(declare-fun m!8071712 () Bool)

(assert (=> b!7478338 m!8071712))

(declare-fun m!8071714 () Bool)

(assert (=> b!7478338 m!8071714))

(declare-fun m!8071716 () Bool)

(assert (=> b!7478334 m!8071716))

(declare-fun m!8071718 () Bool)

(assert (=> b!7478340 m!8071718))

(declare-fun m!8071720 () Bool)

(assert (=> b!7478340 m!8071720))

(declare-fun m!8071722 () Bool)

(assert (=> b!7478340 m!8071722))

(declare-fun m!8071724 () Bool)

(assert (=> b!7478340 m!8071724))

(declare-fun m!8071726 () Bool)

(assert (=> b!7478340 m!8071726))

(declare-fun m!8071728 () Bool)

(assert (=> b!7478340 m!8071728))

(assert (=> b!7478340 m!8071720))

(assert (=> b!7478340 m!8071726))

(declare-fun m!8071730 () Bool)

(assert (=> b!7478344 m!8071730))

(declare-fun m!8071732 () Bool)

(assert (=> start!724648 m!8071732))

(push 1)

(assert (not b!7478338))

(assert (not b!7478333))

(assert (not b!7478331))

(assert (not b!7478340))

(assert (not b!7478346))

(assert tp_is_empty!49501)

(assert (not b!7478343))

(assert (not b!7478341))

(assert (not b!7478337))

(assert (not start!724648))

(assert (not b!7478336))

(assert (not b!7478347))

(assert (not b!7478330))

(assert (not b!7478332))

(assert (not b!7478334))

(assert (not b!7478344))

(assert (not b!7478342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!686566 () Bool)

(declare-fun call!686571 () Bool)

(declare-fun call!686573 () Bool)

(assert (=> bm!686566 (= call!686571 call!686573)))

(declare-fun c!1381417 () Bool)

(declare-fun c!1381418 () Bool)

(declare-fun bm!686567 () Bool)

(assert (=> bm!686567 (= call!686573 (validRegex!10120 (ite c!1381418 (reg!19935 r2!5783) (ite c!1381417 (regOne!39725 r2!5783) (regOne!39724 r2!5783)))))))

(declare-fun b!7478440 () Bool)

(declare-fun e!4460993 () Bool)

(declare-fun e!4460998 () Bool)

(assert (=> b!7478440 (= e!4460993 e!4460998)))

(assert (=> b!7478440 (= c!1381417 (is-Union!19606 r2!5783))))

(declare-fun bm!686568 () Bool)

(declare-fun call!686572 () Bool)

(assert (=> bm!686568 (= call!686572 (validRegex!10120 (ite c!1381417 (regTwo!39725 r2!5783) (regTwo!39724 r2!5783))))))

(declare-fun b!7478441 () Bool)

(declare-fun e!4460994 () Bool)

(assert (=> b!7478441 (= e!4460994 call!686572)))

(declare-fun b!7478442 () Bool)

(declare-fun e!4460999 () Bool)

(assert (=> b!7478442 (= e!4460999 e!4460993)))

(assert (=> b!7478442 (= c!1381418 (is-Star!19606 r2!5783))))

(declare-fun b!7478444 () Bool)

(declare-fun e!4460997 () Bool)

(assert (=> b!7478444 (= e!4460997 call!686572)))

(declare-fun b!7478445 () Bool)

(declare-fun res!3000277 () Bool)

(assert (=> b!7478445 (=> (not res!3000277) (not e!4460997))))

(assert (=> b!7478445 (= res!3000277 call!686571)))

(assert (=> b!7478445 (= e!4460998 e!4460997)))

(declare-fun b!7478446 () Bool)

(declare-fun e!4460996 () Bool)

(assert (=> b!7478446 (= e!4460996 call!686573)))

(declare-fun b!7478447 () Bool)

(declare-fun res!3000279 () Bool)

(declare-fun e!4460995 () Bool)

(assert (=> b!7478447 (=> res!3000279 e!4460995)))

(assert (=> b!7478447 (= res!3000279 (not (is-Concat!28451 r2!5783)))))

(assert (=> b!7478447 (= e!4460998 e!4460995)))

(declare-fun b!7478448 () Bool)

(assert (=> b!7478448 (= e!4460995 e!4460994)))

(declare-fun res!3000278 () Bool)

(assert (=> b!7478448 (=> (not res!3000278) (not e!4460994))))

(assert (=> b!7478448 (= res!3000278 call!686571)))

(declare-fun d!2299777 () Bool)

(declare-fun res!3000276 () Bool)

(assert (=> d!2299777 (=> res!3000276 e!4460999)))

(assert (=> d!2299777 (= res!3000276 (is-ElementMatch!19606 r2!5783))))

(assert (=> d!2299777 (= (validRegex!10120 r2!5783) e!4460999)))

(declare-fun b!7478443 () Bool)

(assert (=> b!7478443 (= e!4460993 e!4460996)))

(declare-fun res!3000275 () Bool)

(declare-fun nullable!8544 (Regex!19606) Bool)

(assert (=> b!7478443 (= res!3000275 (not (nullable!8544 (reg!19935 r2!5783))))))

(assert (=> b!7478443 (=> (not res!3000275) (not e!4460996))))

(assert (= (and d!2299777 (not res!3000276)) b!7478442))

(assert (= (and b!7478442 c!1381418) b!7478443))

(assert (= (and b!7478442 (not c!1381418)) b!7478440))

(assert (= (and b!7478443 res!3000275) b!7478446))

(assert (= (and b!7478440 c!1381417) b!7478445))

(assert (= (and b!7478440 (not c!1381417)) b!7478447))

(assert (= (and b!7478445 res!3000277) b!7478444))

(assert (= (and b!7478447 (not res!3000279)) b!7478448))

(assert (= (and b!7478448 res!3000278) b!7478441))

(assert (= (or b!7478444 b!7478441) bm!686568))

(assert (= (or b!7478445 b!7478448) bm!686566))

(assert (= (or b!7478446 bm!686566) bm!686567))

(declare-fun m!8071776 () Bool)

(assert (=> bm!686567 m!8071776))

(declare-fun m!8071778 () Bool)

(assert (=> bm!686568 m!8071778))

(declare-fun m!8071780 () Bool)

(assert (=> b!7478443 m!8071780))

(assert (=> b!7478334 d!2299777))

(declare-fun bs!1932502 () Bool)

(declare-fun d!2299781 () Bool)

(assert (= bs!1932502 (and d!2299781 b!7478340)))

(declare-fun lambda!463342 () Int)

(assert (=> bs!1932502 (= lambda!463342 lambda!463328)))

(assert (=> bs!1932502 (not (= lambda!463342 lambda!463329))))

(assert (=> d!2299781 true))

(assert (=> d!2299781 true))

(assert (=> d!2299781 true))

(declare-fun lambda!463343 () Int)

(assert (=> bs!1932502 (not (= lambda!463343 lambda!463328))))

(assert (=> bs!1932502 (= lambda!463343 lambda!463329)))

(declare-fun bs!1932503 () Bool)

(assert (= bs!1932503 d!2299781))

(assert (=> bs!1932503 (not (= lambda!463343 lambda!463342))))

(assert (=> d!2299781 true))

(assert (=> d!2299781 true))

(assert (=> d!2299781 true))

(assert (=> d!2299781 (= (Exists!4225 lambda!463342) (Exists!4225 lambda!463343))))

(declare-fun lt!2627642 () Unit!166047)

(declare-fun choose!57810 (Regex!19606 Regex!19606 List!72322) Unit!166047)

(assert (=> d!2299781 (= lt!2627642 (choose!57810 lt!2627578 rTail!78 s!13591))))

(assert (=> d!2299781 (validRegex!10120 lt!2627578)))

(assert (=> d!2299781 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2559 lt!2627578 rTail!78 s!13591) lt!2627642)))

(declare-fun m!8071782 () Bool)

(assert (=> bs!1932503 m!8071782))

(declare-fun m!8071784 () Bool)

(assert (=> bs!1932503 m!8071784))

(declare-fun m!8071786 () Bool)

(assert (=> bs!1932503 m!8071786))

(declare-fun m!8071788 () Bool)

(assert (=> bs!1932503 m!8071788))

(assert (=> b!7478340 d!2299781))

(declare-fun bs!1932504 () Bool)

(declare-fun d!2299783 () Bool)

(assert (= bs!1932504 (and d!2299783 b!7478340)))

(declare-fun lambda!463346 () Int)

(assert (=> bs!1932504 (= lambda!463346 lambda!463328)))

(assert (=> bs!1932504 (not (= lambda!463346 lambda!463329))))

(declare-fun bs!1932505 () Bool)

(assert (= bs!1932505 (and d!2299783 d!2299781)))

(assert (=> bs!1932505 (= lambda!463346 lambda!463342)))

(assert (=> bs!1932505 (not (= lambda!463346 lambda!463343))))

(assert (=> d!2299783 true))

(assert (=> d!2299783 true))

(assert (=> d!2299783 true))

(assert (=> d!2299783 (= (isDefined!13852 (findConcatSeparation!3285 lt!2627578 rTail!78 Nil!72198 s!13591 s!13591)) (Exists!4225 lambda!463346))))

(declare-fun lt!2627645 () Unit!166047)

(declare-fun choose!57811 (Regex!19606 Regex!19606 List!72322) Unit!166047)

(assert (=> d!2299783 (= lt!2627645 (choose!57811 lt!2627578 rTail!78 s!13591))))

(assert (=> d!2299783 (validRegex!10120 lt!2627578)))

(assert (=> d!2299783 (= (lemmaFindConcatSeparationEquivalentToExists!3043 lt!2627578 rTail!78 s!13591) lt!2627645)))

(declare-fun bs!1932506 () Bool)

(assert (= bs!1932506 d!2299783))

(declare-fun m!8071790 () Bool)

(assert (=> bs!1932506 m!8071790))

(assert (=> bs!1932506 m!8071720))

(assert (=> bs!1932506 m!8071720))

(assert (=> bs!1932506 m!8071722))

(declare-fun m!8071792 () Bool)

(assert (=> bs!1932506 m!8071792))

(assert (=> bs!1932506 m!8071788))

(assert (=> b!7478340 d!2299783))

(declare-fun d!2299785 () Bool)

(declare-fun isEmpty!41203 (Option!17163) Bool)

(assert (=> d!2299785 (= (isDefined!13852 (findConcatSeparation!3285 lt!2627578 rTail!78 Nil!72198 s!13591 s!13591)) (not (isEmpty!41203 (findConcatSeparation!3285 lt!2627578 rTail!78 Nil!72198 s!13591 s!13591))))))

(declare-fun bs!1932507 () Bool)

(assert (= bs!1932507 d!2299785))

(assert (=> bs!1932507 m!8071720))

(declare-fun m!8071796 () Bool)

(assert (=> bs!1932507 m!8071796))

(assert (=> b!7478340 d!2299785))

(declare-fun d!2299787 () Bool)

(declare-fun choose!57812 (Int) Bool)

(assert (=> d!2299787 (= (Exists!4225 lambda!463328) (choose!57812 lambda!463328))))

(declare-fun bs!1932508 () Bool)

(assert (= bs!1932508 d!2299787))

(declare-fun m!8071810 () Bool)

(assert (=> bs!1932508 m!8071810))

(assert (=> b!7478340 d!2299787))

(declare-fun b!7478535 () Bool)

(declare-fun lt!2627658 () Unit!166047)

(declare-fun lt!2627659 () Unit!166047)

(assert (=> b!7478535 (= lt!2627658 lt!2627659)))

(declare-fun ++!17220 (List!72322 List!72322) List!72322)

(assert (=> b!7478535 (= (++!17220 (++!17220 Nil!72198 (Cons!72198 (h!78646 s!13591) Nil!72198)) (t!386891 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3096 (List!72322 C!39486 List!72322 List!72322) Unit!166047)

(assert (=> b!7478535 (= lt!2627659 (lemmaMoveElementToOtherListKeepsConcatEq!3096 Nil!72198 (h!78646 s!13591) (t!386891 s!13591) s!13591))))

(declare-fun e!4461045 () Option!17163)

(assert (=> b!7478535 (= e!4461045 (findConcatSeparation!3285 lt!2627578 rTail!78 (++!17220 Nil!72198 (Cons!72198 (h!78646 s!13591) Nil!72198)) (t!386891 s!13591) s!13591))))

(declare-fun b!7478536 () Bool)

(declare-fun e!4461046 () Bool)

(assert (=> b!7478536 (= e!4461046 (matchR!9370 rTail!78 s!13591))))

(declare-fun b!7478537 () Bool)

(declare-fun res!3000335 () Bool)

(declare-fun e!4461044 () Bool)

(assert (=> b!7478537 (=> (not res!3000335) (not e!4461044))))

(declare-fun lt!2627657 () Option!17163)

(declare-fun get!25273 (Option!17163) tuple2!68662)

(assert (=> b!7478537 (= res!3000335 (matchR!9370 rTail!78 (_2!37634 (get!25273 lt!2627657))))))

(declare-fun b!7478538 () Bool)

(declare-fun e!4461047 () Option!17163)

(assert (=> b!7478538 (= e!4461047 (Some!17162 (tuple2!68663 Nil!72198 s!13591)))))

(declare-fun b!7478539 () Bool)

(assert (=> b!7478539 (= e!4461044 (= (++!17220 (_1!37634 (get!25273 lt!2627657)) (_2!37634 (get!25273 lt!2627657))) s!13591))))

(declare-fun d!2299789 () Bool)

(declare-fun e!4461048 () Bool)

(assert (=> d!2299789 e!4461048))

(declare-fun res!3000338 () Bool)

(assert (=> d!2299789 (=> res!3000338 e!4461048)))

(assert (=> d!2299789 (= res!3000338 e!4461044)))

(declare-fun res!3000334 () Bool)

(assert (=> d!2299789 (=> (not res!3000334) (not e!4461044))))

(assert (=> d!2299789 (= res!3000334 (isDefined!13852 lt!2627657))))

(assert (=> d!2299789 (= lt!2627657 e!4461047)))

(declare-fun c!1381435 () Bool)

(assert (=> d!2299789 (= c!1381435 e!4461046)))

(declare-fun res!3000336 () Bool)

(assert (=> d!2299789 (=> (not res!3000336) (not e!4461046))))

(assert (=> d!2299789 (= res!3000336 (matchR!9370 lt!2627578 Nil!72198))))

(assert (=> d!2299789 (validRegex!10120 lt!2627578)))

(assert (=> d!2299789 (= (findConcatSeparation!3285 lt!2627578 rTail!78 Nil!72198 s!13591 s!13591) lt!2627657)))

(declare-fun b!7478540 () Bool)

(assert (=> b!7478540 (= e!4461045 None!17162)))

(declare-fun b!7478541 () Bool)

(declare-fun res!3000337 () Bool)

(assert (=> b!7478541 (=> (not res!3000337) (not e!4461044))))

(assert (=> b!7478541 (= res!3000337 (matchR!9370 lt!2627578 (_1!37634 (get!25273 lt!2627657))))))

(declare-fun b!7478542 () Bool)

(assert (=> b!7478542 (= e!4461047 e!4461045)))

(declare-fun c!1381436 () Bool)

(assert (=> b!7478542 (= c!1381436 (is-Nil!72198 s!13591))))

(declare-fun b!7478543 () Bool)

(assert (=> b!7478543 (= e!4461048 (not (isDefined!13852 lt!2627657)))))

(assert (= (and d!2299789 res!3000336) b!7478536))

(assert (= (and d!2299789 c!1381435) b!7478538))

(assert (= (and d!2299789 (not c!1381435)) b!7478542))

(assert (= (and b!7478542 c!1381436) b!7478540))

(assert (= (and b!7478542 (not c!1381436)) b!7478535))

(assert (= (and d!2299789 res!3000334) b!7478541))

(assert (= (and b!7478541 res!3000337) b!7478537))

(assert (= (and b!7478537 res!3000335) b!7478539))

(assert (= (and d!2299789 (not res!3000338)) b!7478543))

(declare-fun m!8071824 () Bool)

(assert (=> b!7478541 m!8071824))

(declare-fun m!8071826 () Bool)

(assert (=> b!7478541 m!8071826))

(declare-fun m!8071828 () Bool)

(assert (=> b!7478535 m!8071828))

(assert (=> b!7478535 m!8071828))

(declare-fun m!8071830 () Bool)

(assert (=> b!7478535 m!8071830))

(declare-fun m!8071832 () Bool)

(assert (=> b!7478535 m!8071832))

(assert (=> b!7478535 m!8071828))

(declare-fun m!8071834 () Bool)

(assert (=> b!7478535 m!8071834))

(declare-fun m!8071836 () Bool)

(assert (=> d!2299789 m!8071836))

(declare-fun m!8071838 () Bool)

(assert (=> d!2299789 m!8071838))

(assert (=> d!2299789 m!8071788))

(declare-fun m!8071840 () Bool)

(assert (=> b!7478536 m!8071840))

(assert (=> b!7478537 m!8071824))

(declare-fun m!8071842 () Bool)

(assert (=> b!7478537 m!8071842))

(assert (=> b!7478543 m!8071836))

(assert (=> b!7478539 m!8071824))

(declare-fun m!8071844 () Bool)

(assert (=> b!7478539 m!8071844))

(assert (=> b!7478340 d!2299789))

(declare-fun d!2299797 () Bool)

(assert (=> d!2299797 (= (Exists!4225 lambda!463329) (choose!57812 lambda!463329))))

(declare-fun bs!1932510 () Bool)

(assert (= bs!1932510 d!2299797))

(declare-fun m!8071846 () Bool)

(assert (=> bs!1932510 m!8071846))

(assert (=> b!7478340 d!2299797))

(declare-fun bs!1932511 () Bool)

(declare-fun b!7478613 () Bool)

(assert (= bs!1932511 (and b!7478613 d!2299781)))

(declare-fun lambda!463353 () Int)

(assert (=> bs!1932511 (not (= lambda!463353 lambda!463342))))

(assert (=> bs!1932511 (not (= lambda!463353 lambda!463343))))

(declare-fun bs!1932512 () Bool)

(assert (= bs!1932512 (and b!7478613 b!7478340)))

(assert (=> bs!1932512 (not (= lambda!463353 lambda!463329))))

(assert (=> bs!1932512 (not (= lambda!463353 lambda!463328))))

(declare-fun bs!1932513 () Bool)

(assert (= bs!1932513 (and b!7478613 d!2299783)))

(assert (=> bs!1932513 (not (= lambda!463353 lambda!463346))))

(assert (=> b!7478613 true))

(assert (=> b!7478613 true))

(declare-fun bs!1932514 () Bool)

(declare-fun b!7478610 () Bool)

(assert (= bs!1932514 (and b!7478610 d!2299781)))

(declare-fun lambda!463355 () Int)

(assert (=> bs!1932514 (not (= lambda!463355 lambda!463342))))

(assert (=> bs!1932514 (= (and (= (regOne!39724 lt!2627579) lt!2627578) (= (regTwo!39724 lt!2627579) rTail!78)) (= lambda!463355 lambda!463343))))

(declare-fun bs!1932515 () Bool)

(assert (= bs!1932515 (and b!7478610 b!7478340)))

(assert (=> bs!1932515 (= (and (= (regOne!39724 lt!2627579) lt!2627578) (= (regTwo!39724 lt!2627579) rTail!78)) (= lambda!463355 lambda!463329))))

(assert (=> bs!1932515 (not (= lambda!463355 lambda!463328))))

(declare-fun bs!1932516 () Bool)

(assert (= bs!1932516 (and b!7478610 d!2299783)))

(assert (=> bs!1932516 (not (= lambda!463355 lambda!463346))))

(declare-fun bs!1932517 () Bool)

(assert (= bs!1932517 (and b!7478610 b!7478613)))

(assert (=> bs!1932517 (not (= lambda!463355 lambda!463353))))

(assert (=> b!7478610 true))

(assert (=> b!7478610 true))

(declare-fun b!7478604 () Bool)

(declare-fun c!1381454 () Bool)

(assert (=> b!7478604 (= c!1381454 (is-Union!19606 lt!2627579))))

(declare-fun e!4461085 () Bool)

(declare-fun e!4461089 () Bool)

(assert (=> b!7478604 (= e!4461085 e!4461089)))

(declare-fun b!7478605 () Bool)

(declare-fun res!3000368 () Bool)

(declare-fun e!4461086 () Bool)

(assert (=> b!7478605 (=> res!3000368 e!4461086)))

(declare-fun call!686582 () Bool)

(assert (=> b!7478605 (= res!3000368 call!686582)))

(declare-fun e!4461084 () Bool)

(assert (=> b!7478605 (= e!4461084 e!4461086)))

(declare-fun c!1381455 () Bool)

(declare-fun bm!686577 () Bool)

(declare-fun call!686583 () Bool)

(assert (=> bm!686577 (= call!686583 (Exists!4225 (ite c!1381455 lambda!463353 lambda!463355)))))

(declare-fun d!2299799 () Bool)

(declare-fun c!1381456 () Bool)

(assert (=> d!2299799 (= c!1381456 (is-EmptyExpr!19606 lt!2627579))))

(declare-fun e!4461087 () Bool)

(assert (=> d!2299799 (= (matchRSpec!4285 lt!2627579 s!13591) e!4461087)))

(declare-fun b!7478606 () Bool)

(assert (=> b!7478606 (= e!4461085 (= s!13591 (Cons!72198 (c!1381411 lt!2627579) Nil!72198)))))

(declare-fun b!7478607 () Bool)

(declare-fun e!4461088 () Bool)

(assert (=> b!7478607 (= e!4461089 e!4461088)))

(declare-fun res!3000367 () Bool)

(assert (=> b!7478607 (= res!3000367 (matchRSpec!4285 (regOne!39725 lt!2627579) s!13591))))

(assert (=> b!7478607 (=> res!3000367 e!4461088)))

(declare-fun b!7478608 () Bool)

(assert (=> b!7478608 (= e!4461088 (matchRSpec!4285 (regTwo!39725 lt!2627579) s!13591))))

(declare-fun b!7478609 () Bool)

(declare-fun c!1381453 () Bool)

(assert (=> b!7478609 (= c!1381453 (is-ElementMatch!19606 lt!2627579))))

(declare-fun e!4461083 () Bool)

(assert (=> b!7478609 (= e!4461083 e!4461085)))

(assert (=> b!7478610 (= e!4461084 call!686583)))

(declare-fun b!7478611 () Bool)

(assert (=> b!7478611 (= e!4461089 e!4461084)))

(assert (=> b!7478611 (= c!1381455 (is-Star!19606 lt!2627579))))

(declare-fun b!7478612 () Bool)

(assert (=> b!7478612 (= e!4461087 e!4461083)))

(declare-fun res!3000369 () Bool)

(assert (=> b!7478612 (= res!3000369 (not (is-EmptyLang!19606 lt!2627579)))))

(assert (=> b!7478612 (=> (not res!3000369) (not e!4461083))))

(assert (=> b!7478613 (= e!4461086 call!686583)))

(declare-fun b!7478614 () Bool)

(assert (=> b!7478614 (= e!4461087 call!686582)))

(declare-fun bm!686578 () Bool)

(declare-fun isEmpty!41204 (List!72322) Bool)

(assert (=> bm!686578 (= call!686582 (isEmpty!41204 s!13591))))

(assert (= (and d!2299799 c!1381456) b!7478614))

(assert (= (and d!2299799 (not c!1381456)) b!7478612))

(assert (= (and b!7478612 res!3000369) b!7478609))

(assert (= (and b!7478609 c!1381453) b!7478606))

(assert (= (and b!7478609 (not c!1381453)) b!7478604))

(assert (= (and b!7478604 c!1381454) b!7478607))

(assert (= (and b!7478604 (not c!1381454)) b!7478611))

(assert (= (and b!7478607 (not res!3000367)) b!7478608))

(assert (= (and b!7478611 c!1381455) b!7478605))

(assert (= (and b!7478611 (not c!1381455)) b!7478610))

(assert (= (and b!7478605 (not res!3000368)) b!7478613))

(assert (= (or b!7478613 b!7478610) bm!686577))

(assert (= (or b!7478614 b!7478605) bm!686578))

(declare-fun m!8071848 () Bool)

(assert (=> bm!686577 m!8071848))

(declare-fun m!8071850 () Bool)

(assert (=> b!7478607 m!8071850))

(declare-fun m!8071852 () Bool)

(assert (=> b!7478608 m!8071852))

(declare-fun m!8071854 () Bool)

(assert (=> bm!686578 m!8071854))

(assert (=> b!7478338 d!2299799))

(declare-fun d!2299801 () Bool)

(assert (=> d!2299801 (= (matchR!9370 lt!2627579 s!13591) (matchRSpec!4285 lt!2627579 s!13591))))

(declare-fun lt!2627662 () Unit!166047)

(declare-fun choose!57813 (Regex!19606 List!72322) Unit!166047)

(assert (=> d!2299801 (= lt!2627662 (choose!57813 lt!2627579 s!13591))))

(assert (=> d!2299801 (validRegex!10120 lt!2627579)))

(assert (=> d!2299801 (= (mainMatchTheorem!4279 lt!2627579 s!13591) lt!2627662)))

(declare-fun bs!1932518 () Bool)

(assert (= bs!1932518 d!2299801))

(assert (=> bs!1932518 m!8071704))

(assert (=> bs!1932518 m!8071712))

(declare-fun m!8071856 () Bool)

(assert (=> bs!1932518 m!8071856))

(declare-fun m!8071858 () Bool)

(assert (=> bs!1932518 m!8071858))

(assert (=> b!7478338 d!2299801))

(declare-fun b!7478658 () Bool)

(declare-fun e!4461118 () Bool)

(assert (=> b!7478658 (= e!4461118 (nullable!8544 lt!2627579))))

(declare-fun b!7478659 () Bool)

(declare-fun res!3000399 () Bool)

(declare-fun e!4461116 () Bool)

(assert (=> b!7478659 (=> res!3000399 e!4461116)))

(assert (=> b!7478659 (= res!3000399 (not (is-ElementMatch!19606 lt!2627579)))))

(declare-fun e!4461115 () Bool)

(assert (=> b!7478659 (= e!4461115 e!4461116)))

(declare-fun b!7478660 () Bool)

(declare-fun derivativeStep!5603 (Regex!19606 C!39486) Regex!19606)

(declare-fun head!15343 (List!72322) C!39486)

(declare-fun tail!14912 (List!72322) List!72322)

(assert (=> b!7478660 (= e!4461118 (matchR!9370 (derivativeStep!5603 lt!2627579 (head!15343 s!13591)) (tail!14912 s!13591)))))

(declare-fun b!7478661 () Bool)

(declare-fun e!4461113 () Bool)

(assert (=> b!7478661 (= e!4461113 e!4461115)))

(declare-fun c!1381469 () Bool)

(assert (=> b!7478661 (= c!1381469 (is-EmptyLang!19606 lt!2627579))))

(declare-fun b!7478662 () Bool)

(declare-fun e!4461114 () Bool)

(assert (=> b!7478662 (= e!4461116 e!4461114)))

(declare-fun res!3000395 () Bool)

(assert (=> b!7478662 (=> (not res!3000395) (not e!4461114))))

(declare-fun lt!2627665 () Bool)

(assert (=> b!7478662 (= res!3000395 (not lt!2627665))))

(declare-fun b!7478663 () Bool)

(declare-fun call!686592 () Bool)

(assert (=> b!7478663 (= e!4461113 (= lt!2627665 call!686592))))

(declare-fun b!7478664 () Bool)

(assert (=> b!7478664 (= e!4461115 (not lt!2627665))))

(declare-fun b!7478665 () Bool)

(declare-fun res!3000398 () Bool)

(declare-fun e!4461119 () Bool)

(assert (=> b!7478665 (=> (not res!3000398) (not e!4461119))))

(assert (=> b!7478665 (= res!3000398 (isEmpty!41204 (tail!14912 s!13591)))))

(declare-fun d!2299803 () Bool)

(assert (=> d!2299803 e!4461113))

(declare-fun c!1381468 () Bool)

(assert (=> d!2299803 (= c!1381468 (is-EmptyExpr!19606 lt!2627579))))

(assert (=> d!2299803 (= lt!2627665 e!4461118)))

(declare-fun c!1381467 () Bool)

(assert (=> d!2299803 (= c!1381467 (isEmpty!41204 s!13591))))

(assert (=> d!2299803 (validRegex!10120 lt!2627579)))

(assert (=> d!2299803 (= (matchR!9370 lt!2627579 s!13591) lt!2627665)))

(declare-fun bm!686587 () Bool)

(assert (=> bm!686587 (= call!686592 (isEmpty!41204 s!13591))))

(declare-fun b!7478666 () Bool)

(declare-fun res!3000400 () Bool)

(declare-fun e!4461117 () Bool)

(assert (=> b!7478666 (=> res!3000400 e!4461117)))

(assert (=> b!7478666 (= res!3000400 (not (isEmpty!41204 (tail!14912 s!13591))))))

(declare-fun b!7478667 () Bool)

(declare-fun res!3000396 () Bool)

(assert (=> b!7478667 (=> res!3000396 e!4461116)))

(assert (=> b!7478667 (= res!3000396 e!4461119)))

(declare-fun res!3000393 () Bool)

(assert (=> b!7478667 (=> (not res!3000393) (not e!4461119))))

(assert (=> b!7478667 (= res!3000393 lt!2627665)))

(declare-fun b!7478668 () Bool)

(declare-fun res!3000394 () Bool)

(assert (=> b!7478668 (=> (not res!3000394) (not e!4461119))))

(assert (=> b!7478668 (= res!3000394 (not call!686592))))

(declare-fun b!7478669 () Bool)

(assert (=> b!7478669 (= e!4461114 e!4461117)))

(declare-fun res!3000397 () Bool)

(assert (=> b!7478669 (=> res!3000397 e!4461117)))

(assert (=> b!7478669 (= res!3000397 call!686592)))

(declare-fun b!7478670 () Bool)

(assert (=> b!7478670 (= e!4461117 (not (= (head!15343 s!13591) (c!1381411 lt!2627579))))))

(declare-fun b!7478671 () Bool)

(assert (=> b!7478671 (= e!4461119 (= (head!15343 s!13591) (c!1381411 lt!2627579)))))

(assert (= (and d!2299803 c!1381467) b!7478658))

(assert (= (and d!2299803 (not c!1381467)) b!7478660))

(assert (= (and d!2299803 c!1381468) b!7478663))

(assert (= (and d!2299803 (not c!1381468)) b!7478661))

(assert (= (and b!7478661 c!1381469) b!7478664))

(assert (= (and b!7478661 (not c!1381469)) b!7478659))

(assert (= (and b!7478659 (not res!3000399)) b!7478667))

(assert (= (and b!7478667 res!3000393) b!7478668))

(assert (= (and b!7478668 res!3000394) b!7478665))

(assert (= (and b!7478665 res!3000398) b!7478671))

(assert (= (and b!7478667 (not res!3000396)) b!7478662))

(assert (= (and b!7478662 res!3000395) b!7478669))

(assert (= (and b!7478669 (not res!3000397)) b!7478666))

(assert (= (and b!7478666 (not res!3000400)) b!7478670))

(assert (= (or b!7478663 b!7478668 b!7478669) bm!686587))

(declare-fun m!8071860 () Bool)

(assert (=> b!7478670 m!8071860))

(declare-fun m!8071862 () Bool)

(assert (=> b!7478666 m!8071862))

(assert (=> b!7478666 m!8071862))

(declare-fun m!8071864 () Bool)

(assert (=> b!7478666 m!8071864))

(assert (=> b!7478665 m!8071862))

(assert (=> b!7478665 m!8071862))

(assert (=> b!7478665 m!8071864))

(assert (=> d!2299803 m!8071854))

(assert (=> d!2299803 m!8071858))

(declare-fun m!8071866 () Bool)

(assert (=> b!7478658 m!8071866))

(assert (=> b!7478660 m!8071860))

(assert (=> b!7478660 m!8071860))

(declare-fun m!8071868 () Bool)

(assert (=> b!7478660 m!8071868))

(assert (=> b!7478660 m!8071862))

(assert (=> b!7478660 m!8071868))

(assert (=> b!7478660 m!8071862))

(declare-fun m!8071870 () Bool)

(assert (=> b!7478660 m!8071870))

(assert (=> b!7478671 m!8071860))

(assert (=> bm!686587 m!8071854))

(assert (=> b!7478338 d!2299803))

(declare-fun d!2299805 () Bool)

(assert (=> d!2299805 (= (matchR!9370 lt!2627588 s!13591) (matchRSpec!4285 lt!2627588 s!13591))))

(declare-fun lt!2627666 () Unit!166047)

(assert (=> d!2299805 (= lt!2627666 (choose!57813 lt!2627588 s!13591))))

(assert (=> d!2299805 (validRegex!10120 lt!2627588)))

(assert (=> d!2299805 (= (mainMatchTheorem!4279 lt!2627588 s!13591) lt!2627666)))

(declare-fun bs!1932521 () Bool)

(assert (= bs!1932521 d!2299805))

(assert (=> bs!1932521 m!8071714))

(assert (=> bs!1932521 m!8071706))

(declare-fun m!8071872 () Bool)

(assert (=> bs!1932521 m!8071872))

(declare-fun m!8071874 () Bool)

(assert (=> bs!1932521 m!8071874))

(assert (=> b!7478338 d!2299805))

(declare-fun bs!1932523 () Bool)

(declare-fun b!7478681 () Bool)

(assert (= bs!1932523 (and b!7478681 d!2299781)))

(declare-fun lambda!463359 () Int)

(assert (=> bs!1932523 (not (= lambda!463359 lambda!463342))))

(declare-fun bs!1932524 () Bool)

(assert (= bs!1932524 (and b!7478681 b!7478610)))

(assert (=> bs!1932524 (not (= lambda!463359 lambda!463355))))

(assert (=> bs!1932523 (not (= lambda!463359 lambda!463343))))

(declare-fun bs!1932525 () Bool)

(assert (= bs!1932525 (and b!7478681 b!7478340)))

(assert (=> bs!1932525 (not (= lambda!463359 lambda!463329))))

(assert (=> bs!1932525 (not (= lambda!463359 lambda!463328))))

(declare-fun bs!1932526 () Bool)

(assert (= bs!1932526 (and b!7478681 d!2299783)))

(assert (=> bs!1932526 (not (= lambda!463359 lambda!463346))))

(declare-fun bs!1932527 () Bool)

(assert (= bs!1932527 (and b!7478681 b!7478613)))

(assert (=> bs!1932527 (= (and (= (reg!19935 lt!2627588) (reg!19935 lt!2627579)) (= lt!2627588 lt!2627579)) (= lambda!463359 lambda!463353))))

(assert (=> b!7478681 true))

(assert (=> b!7478681 true))

(declare-fun bs!1932529 () Bool)

(declare-fun b!7478678 () Bool)

(assert (= bs!1932529 (and b!7478678 d!2299781)))

(declare-fun lambda!463360 () Int)

(assert (=> bs!1932529 (not (= lambda!463360 lambda!463342))))

(declare-fun bs!1932530 () Bool)

(assert (= bs!1932530 (and b!7478678 b!7478610)))

(assert (=> bs!1932530 (= (and (= (regOne!39724 lt!2627588) (regOne!39724 lt!2627579)) (= (regTwo!39724 lt!2627588) (regTwo!39724 lt!2627579))) (= lambda!463360 lambda!463355))))

(assert (=> bs!1932529 (= (and (= (regOne!39724 lt!2627588) lt!2627578) (= (regTwo!39724 lt!2627588) rTail!78)) (= lambda!463360 lambda!463343))))

(declare-fun bs!1932531 () Bool)

(assert (= bs!1932531 (and b!7478678 b!7478340)))

(assert (=> bs!1932531 (not (= lambda!463360 lambda!463328))))

(declare-fun bs!1932532 () Bool)

(assert (= bs!1932532 (and b!7478678 d!2299783)))

(assert (=> bs!1932532 (not (= lambda!463360 lambda!463346))))

(declare-fun bs!1932533 () Bool)

(assert (= bs!1932533 (and b!7478678 b!7478613)))

(assert (=> bs!1932533 (not (= lambda!463360 lambda!463353))))

(assert (=> bs!1932531 (= (and (= (regOne!39724 lt!2627588) lt!2627578) (= (regTwo!39724 lt!2627588) rTail!78)) (= lambda!463360 lambda!463329))))

(declare-fun bs!1932534 () Bool)

(assert (= bs!1932534 (and b!7478678 b!7478681)))

(assert (=> bs!1932534 (not (= lambda!463360 lambda!463359))))

(assert (=> b!7478678 true))

(assert (=> b!7478678 true))

(declare-fun b!7478672 () Bool)

(declare-fun c!1381471 () Bool)

(assert (=> b!7478672 (= c!1381471 (is-Union!19606 lt!2627588))))

(declare-fun e!4461122 () Bool)

(declare-fun e!4461126 () Bool)

(assert (=> b!7478672 (= e!4461122 e!4461126)))

(declare-fun b!7478673 () Bool)

(declare-fun res!3000402 () Bool)

(declare-fun e!4461123 () Bool)

(assert (=> b!7478673 (=> res!3000402 e!4461123)))

(declare-fun call!686593 () Bool)

(assert (=> b!7478673 (= res!3000402 call!686593)))

(declare-fun e!4461121 () Bool)

(assert (=> b!7478673 (= e!4461121 e!4461123)))

(declare-fun bm!686588 () Bool)

(declare-fun call!686594 () Bool)

(declare-fun c!1381472 () Bool)

(assert (=> bm!686588 (= call!686594 (Exists!4225 (ite c!1381472 lambda!463359 lambda!463360)))))

(declare-fun d!2299807 () Bool)

(declare-fun c!1381473 () Bool)

(assert (=> d!2299807 (= c!1381473 (is-EmptyExpr!19606 lt!2627588))))

(declare-fun e!4461124 () Bool)

(assert (=> d!2299807 (= (matchRSpec!4285 lt!2627588 s!13591) e!4461124)))

(declare-fun b!7478674 () Bool)

(assert (=> b!7478674 (= e!4461122 (= s!13591 (Cons!72198 (c!1381411 lt!2627588) Nil!72198)))))

(declare-fun b!7478675 () Bool)

(declare-fun e!4461125 () Bool)

(assert (=> b!7478675 (= e!4461126 e!4461125)))

(declare-fun res!3000401 () Bool)

(assert (=> b!7478675 (= res!3000401 (matchRSpec!4285 (regOne!39725 lt!2627588) s!13591))))

(assert (=> b!7478675 (=> res!3000401 e!4461125)))

(declare-fun b!7478676 () Bool)

(assert (=> b!7478676 (= e!4461125 (matchRSpec!4285 (regTwo!39725 lt!2627588) s!13591))))

(declare-fun b!7478677 () Bool)

(declare-fun c!1381470 () Bool)

(assert (=> b!7478677 (= c!1381470 (is-ElementMatch!19606 lt!2627588))))

(declare-fun e!4461120 () Bool)

(assert (=> b!7478677 (= e!4461120 e!4461122)))

(assert (=> b!7478678 (= e!4461121 call!686594)))

(declare-fun b!7478679 () Bool)

(assert (=> b!7478679 (= e!4461126 e!4461121)))

(assert (=> b!7478679 (= c!1381472 (is-Star!19606 lt!2627588))))

(declare-fun b!7478680 () Bool)

(assert (=> b!7478680 (= e!4461124 e!4461120)))

(declare-fun res!3000403 () Bool)

(assert (=> b!7478680 (= res!3000403 (not (is-EmptyLang!19606 lt!2627588)))))

(assert (=> b!7478680 (=> (not res!3000403) (not e!4461120))))

(assert (=> b!7478681 (= e!4461123 call!686594)))

(declare-fun b!7478682 () Bool)

(assert (=> b!7478682 (= e!4461124 call!686593)))

(declare-fun bm!686589 () Bool)

(assert (=> bm!686589 (= call!686593 (isEmpty!41204 s!13591))))

(assert (= (and d!2299807 c!1381473) b!7478682))

(assert (= (and d!2299807 (not c!1381473)) b!7478680))

(assert (= (and b!7478680 res!3000403) b!7478677))

(assert (= (and b!7478677 c!1381470) b!7478674))

(assert (= (and b!7478677 (not c!1381470)) b!7478672))

(assert (= (and b!7478672 c!1381471) b!7478675))

(assert (= (and b!7478672 (not c!1381471)) b!7478679))

(assert (= (and b!7478675 (not res!3000401)) b!7478676))

(assert (= (and b!7478679 c!1381472) b!7478673))

(assert (= (and b!7478679 (not c!1381472)) b!7478678))

(assert (= (and b!7478673 (not res!3000402)) b!7478681))

(assert (= (or b!7478681 b!7478678) bm!686588))

(assert (= (or b!7478682 b!7478673) bm!686589))

(declare-fun m!8071884 () Bool)

(assert (=> bm!686588 m!8071884))

(declare-fun m!8071886 () Bool)

(assert (=> b!7478675 m!8071886))

(declare-fun m!8071888 () Bool)

(assert (=> b!7478676 m!8071888))

(assert (=> bm!686589 m!8071854))

(assert (=> b!7478338 d!2299807))

(declare-fun b!7478694 () Bool)

(declare-fun e!4461139 () Bool)

(assert (=> b!7478694 (= e!4461139 (nullable!8544 lt!2627588))))

(declare-fun b!7478695 () Bool)

(declare-fun res!3000413 () Bool)

(declare-fun e!4461137 () Bool)

(assert (=> b!7478695 (=> res!3000413 e!4461137)))

(assert (=> b!7478695 (= res!3000413 (not (is-ElementMatch!19606 lt!2627588)))))

(declare-fun e!4461136 () Bool)

(assert (=> b!7478695 (= e!4461136 e!4461137)))

(declare-fun b!7478696 () Bool)

(assert (=> b!7478696 (= e!4461139 (matchR!9370 (derivativeStep!5603 lt!2627588 (head!15343 s!13591)) (tail!14912 s!13591)))))

(declare-fun b!7478697 () Bool)

(declare-fun e!4461134 () Bool)

(assert (=> b!7478697 (= e!4461134 e!4461136)))

(declare-fun c!1381480 () Bool)

(assert (=> b!7478697 (= c!1381480 (is-EmptyLang!19606 lt!2627588))))

(declare-fun b!7478698 () Bool)

(declare-fun e!4461135 () Bool)

(assert (=> b!7478698 (= e!4461137 e!4461135)))

(declare-fun res!3000409 () Bool)

(assert (=> b!7478698 (=> (not res!3000409) (not e!4461135))))

(declare-fun lt!2627668 () Bool)

(assert (=> b!7478698 (= res!3000409 (not lt!2627668))))

(declare-fun b!7478699 () Bool)

(declare-fun call!686597 () Bool)

(assert (=> b!7478699 (= e!4461134 (= lt!2627668 call!686597))))

(declare-fun b!7478700 () Bool)

(assert (=> b!7478700 (= e!4461136 (not lt!2627668))))

(declare-fun b!7478701 () Bool)

(declare-fun res!3000412 () Bool)

(declare-fun e!4461140 () Bool)

(assert (=> b!7478701 (=> (not res!3000412) (not e!4461140))))

(assert (=> b!7478701 (= res!3000412 (isEmpty!41204 (tail!14912 s!13591)))))

(declare-fun d!2299813 () Bool)

(assert (=> d!2299813 e!4461134))

(declare-fun c!1381479 () Bool)

(assert (=> d!2299813 (= c!1381479 (is-EmptyExpr!19606 lt!2627588))))

(assert (=> d!2299813 (= lt!2627668 e!4461139)))

(declare-fun c!1381478 () Bool)

(assert (=> d!2299813 (= c!1381478 (isEmpty!41204 s!13591))))

(assert (=> d!2299813 (validRegex!10120 lt!2627588)))

(assert (=> d!2299813 (= (matchR!9370 lt!2627588 s!13591) lt!2627668)))

(declare-fun bm!686592 () Bool)

(assert (=> bm!686592 (= call!686597 (isEmpty!41204 s!13591))))

(declare-fun b!7478702 () Bool)

(declare-fun res!3000414 () Bool)

(declare-fun e!4461138 () Bool)

(assert (=> b!7478702 (=> res!3000414 e!4461138)))

(assert (=> b!7478702 (= res!3000414 (not (isEmpty!41204 (tail!14912 s!13591))))))

(declare-fun b!7478703 () Bool)

(declare-fun res!3000410 () Bool)

(assert (=> b!7478703 (=> res!3000410 e!4461137)))

(assert (=> b!7478703 (= res!3000410 e!4461140)))

(declare-fun res!3000407 () Bool)

(assert (=> b!7478703 (=> (not res!3000407) (not e!4461140))))

(assert (=> b!7478703 (= res!3000407 lt!2627668)))

(declare-fun b!7478704 () Bool)

(declare-fun res!3000408 () Bool)

(assert (=> b!7478704 (=> (not res!3000408) (not e!4461140))))

(assert (=> b!7478704 (= res!3000408 (not call!686597))))

(declare-fun b!7478705 () Bool)

(assert (=> b!7478705 (= e!4461135 e!4461138)))

(declare-fun res!3000411 () Bool)

(assert (=> b!7478705 (=> res!3000411 e!4461138)))

(assert (=> b!7478705 (= res!3000411 call!686597)))

(declare-fun b!7478706 () Bool)

(assert (=> b!7478706 (= e!4461138 (not (= (head!15343 s!13591) (c!1381411 lt!2627588))))))

(declare-fun b!7478707 () Bool)

(assert (=> b!7478707 (= e!4461140 (= (head!15343 s!13591) (c!1381411 lt!2627588)))))

(assert (= (and d!2299813 c!1381478) b!7478694))

(assert (= (and d!2299813 (not c!1381478)) b!7478696))

(assert (= (and d!2299813 c!1381479) b!7478699))

(assert (= (and d!2299813 (not c!1381479)) b!7478697))

(assert (= (and b!7478697 c!1381480) b!7478700))

(assert (= (and b!7478697 (not c!1381480)) b!7478695))

(assert (= (and b!7478695 (not res!3000413)) b!7478703))

(assert (= (and b!7478703 res!3000407) b!7478704))

(assert (= (and b!7478704 res!3000408) b!7478701))

(assert (= (and b!7478701 res!3000412) b!7478707))

(assert (= (and b!7478703 (not res!3000410)) b!7478698))

(assert (= (and b!7478698 res!3000409) b!7478705))

(assert (= (and b!7478705 (not res!3000411)) b!7478702))

(assert (= (and b!7478702 (not res!3000414)) b!7478706))

(assert (= (or b!7478699 b!7478704 b!7478705) bm!686592))

(assert (=> b!7478706 m!8071860))

(assert (=> b!7478702 m!8071862))

(assert (=> b!7478702 m!8071862))

(assert (=> b!7478702 m!8071864))

(assert (=> b!7478701 m!8071862))

(assert (=> b!7478701 m!8071862))

(assert (=> b!7478701 m!8071864))

(assert (=> d!2299813 m!8071854))

(assert (=> d!2299813 m!8071874))

(declare-fun m!8071890 () Bool)

(assert (=> b!7478694 m!8071890))

(assert (=> b!7478696 m!8071860))

(assert (=> b!7478696 m!8071860))

(declare-fun m!8071892 () Bool)

(assert (=> b!7478696 m!8071892))

(assert (=> b!7478696 m!8071862))

(assert (=> b!7478696 m!8071892))

(assert (=> b!7478696 m!8071862))

(declare-fun m!8071894 () Bool)

(assert (=> b!7478696 m!8071894))

(assert (=> b!7478707 m!8071860))

(assert (=> bm!686592 m!8071854))

(assert (=> b!7478338 d!2299813))

(declare-fun bm!686593 () Bool)

(declare-fun call!686598 () Bool)

(declare-fun call!686600 () Bool)

(assert (=> bm!686593 (= call!686598 call!686600)))

(declare-fun c!1381482 () Bool)

(declare-fun c!1381481 () Bool)

(declare-fun bm!686594 () Bool)

(assert (=> bm!686594 (= call!686600 (validRegex!10120 (ite c!1381482 (reg!19935 r1!5845) (ite c!1381481 (regOne!39725 r1!5845) (regOne!39724 r1!5845)))))))

(declare-fun b!7478708 () Bool)

(declare-fun e!4461141 () Bool)

(declare-fun e!4461146 () Bool)

(assert (=> b!7478708 (= e!4461141 e!4461146)))

(assert (=> b!7478708 (= c!1381481 (is-Union!19606 r1!5845))))

(declare-fun bm!686595 () Bool)

(declare-fun call!686599 () Bool)

(assert (=> bm!686595 (= call!686599 (validRegex!10120 (ite c!1381481 (regTwo!39725 r1!5845) (regTwo!39724 r1!5845))))))

(declare-fun b!7478709 () Bool)

(declare-fun e!4461142 () Bool)

(assert (=> b!7478709 (= e!4461142 call!686599)))

(declare-fun b!7478710 () Bool)

(declare-fun e!4461147 () Bool)

(assert (=> b!7478710 (= e!4461147 e!4461141)))

(assert (=> b!7478710 (= c!1381482 (is-Star!19606 r1!5845))))

(declare-fun b!7478712 () Bool)

(declare-fun e!4461145 () Bool)

(assert (=> b!7478712 (= e!4461145 call!686599)))

(declare-fun b!7478713 () Bool)

(declare-fun res!3000417 () Bool)

(assert (=> b!7478713 (=> (not res!3000417) (not e!4461145))))

(assert (=> b!7478713 (= res!3000417 call!686598)))

(assert (=> b!7478713 (= e!4461146 e!4461145)))

(declare-fun b!7478714 () Bool)

(declare-fun e!4461144 () Bool)

(assert (=> b!7478714 (= e!4461144 call!686600)))

(declare-fun b!7478715 () Bool)

(declare-fun res!3000419 () Bool)

(declare-fun e!4461143 () Bool)

(assert (=> b!7478715 (=> res!3000419 e!4461143)))

(assert (=> b!7478715 (= res!3000419 (not (is-Concat!28451 r1!5845)))))

(assert (=> b!7478715 (= e!4461146 e!4461143)))

(declare-fun b!7478716 () Bool)

(assert (=> b!7478716 (= e!4461143 e!4461142)))

(declare-fun res!3000418 () Bool)

(assert (=> b!7478716 (=> (not res!3000418) (not e!4461142))))

(assert (=> b!7478716 (= res!3000418 call!686598)))

(declare-fun d!2299815 () Bool)

(declare-fun res!3000416 () Bool)

(assert (=> d!2299815 (=> res!3000416 e!4461147)))

(assert (=> d!2299815 (= res!3000416 (is-ElementMatch!19606 r1!5845))))

(assert (=> d!2299815 (= (validRegex!10120 r1!5845) e!4461147)))

(declare-fun b!7478711 () Bool)

(assert (=> b!7478711 (= e!4461141 e!4461144)))

(declare-fun res!3000415 () Bool)

(assert (=> b!7478711 (= res!3000415 (not (nullable!8544 (reg!19935 r1!5845))))))

(assert (=> b!7478711 (=> (not res!3000415) (not e!4461144))))

(assert (= (and d!2299815 (not res!3000416)) b!7478710))

(assert (= (and b!7478710 c!1381482) b!7478711))

(assert (= (and b!7478710 (not c!1381482)) b!7478708))

(assert (= (and b!7478711 res!3000415) b!7478714))

(assert (= (and b!7478708 c!1381481) b!7478713))

(assert (= (and b!7478708 (not c!1381481)) b!7478715))

(assert (= (and b!7478713 res!3000417) b!7478712))

(assert (= (and b!7478715 (not res!3000419)) b!7478716))

(assert (= (and b!7478716 res!3000418) b!7478709))

(assert (= (or b!7478712 b!7478709) bm!686595))

(assert (= (or b!7478713 b!7478716) bm!686593))

(assert (= (or b!7478714 bm!686593) bm!686594))

(declare-fun m!8071896 () Bool)

(assert (=> bm!686594 m!8071896))

(declare-fun m!8071898 () Bool)

(assert (=> bm!686595 m!8071898))

(declare-fun m!8071900 () Bool)

(assert (=> b!7478711 m!8071900))

(assert (=> start!724648 d!2299815))

(declare-fun d!2299817 () Bool)

(assert (=> d!2299817 (= (matchR!9370 lt!2627585 s!13591) (matchRSpec!4285 lt!2627585 s!13591))))

(declare-fun lt!2627669 () Unit!166047)

(assert (=> d!2299817 (= lt!2627669 (choose!57813 lt!2627585 s!13591))))

(assert (=> d!2299817 (validRegex!10120 lt!2627585)))

(assert (=> d!2299817 (= (mainMatchTheorem!4279 lt!2627585 s!13591) lt!2627669)))

(declare-fun bs!1932538 () Bool)

(assert (= bs!1932538 d!2299817))

(assert (=> bs!1932538 m!8071694))

(assert (=> bs!1932538 m!8071702))

(declare-fun m!8071902 () Bool)

(assert (=> bs!1932538 m!8071902))

(declare-fun m!8071904 () Bool)

(assert (=> bs!1932538 m!8071904))

(assert (=> b!7478343 d!2299817))

(declare-fun b!7478717 () Bool)

(declare-fun e!4461153 () Bool)

(assert (=> b!7478717 (= e!4461153 (nullable!8544 lt!2627574))))

(declare-fun b!7478718 () Bool)

(declare-fun res!3000426 () Bool)

(declare-fun e!4461151 () Bool)

(assert (=> b!7478718 (=> res!3000426 e!4461151)))

(assert (=> b!7478718 (= res!3000426 (not (is-ElementMatch!19606 lt!2627574)))))

(declare-fun e!4461150 () Bool)

(assert (=> b!7478718 (= e!4461150 e!4461151)))

(declare-fun b!7478719 () Bool)

(assert (=> b!7478719 (= e!4461153 (matchR!9370 (derivativeStep!5603 lt!2627574 (head!15343 s!13591)) (tail!14912 s!13591)))))

(declare-fun b!7478720 () Bool)

(declare-fun e!4461148 () Bool)

(assert (=> b!7478720 (= e!4461148 e!4461150)))

(declare-fun c!1381485 () Bool)

(assert (=> b!7478720 (= c!1381485 (is-EmptyLang!19606 lt!2627574))))

(declare-fun b!7478721 () Bool)

(declare-fun e!4461149 () Bool)

(assert (=> b!7478721 (= e!4461151 e!4461149)))

(declare-fun res!3000422 () Bool)

(assert (=> b!7478721 (=> (not res!3000422) (not e!4461149))))

(declare-fun lt!2627670 () Bool)

(assert (=> b!7478721 (= res!3000422 (not lt!2627670))))

(declare-fun b!7478722 () Bool)

(declare-fun call!686601 () Bool)

(assert (=> b!7478722 (= e!4461148 (= lt!2627670 call!686601))))

(declare-fun b!7478723 () Bool)

(assert (=> b!7478723 (= e!4461150 (not lt!2627670))))

(declare-fun b!7478724 () Bool)

(declare-fun res!3000425 () Bool)

(declare-fun e!4461154 () Bool)

(assert (=> b!7478724 (=> (not res!3000425) (not e!4461154))))

(assert (=> b!7478724 (= res!3000425 (isEmpty!41204 (tail!14912 s!13591)))))

(declare-fun d!2299819 () Bool)

(assert (=> d!2299819 e!4461148))

(declare-fun c!1381484 () Bool)

(assert (=> d!2299819 (= c!1381484 (is-EmptyExpr!19606 lt!2627574))))

(assert (=> d!2299819 (= lt!2627670 e!4461153)))

(declare-fun c!1381483 () Bool)

(assert (=> d!2299819 (= c!1381483 (isEmpty!41204 s!13591))))

(assert (=> d!2299819 (validRegex!10120 lt!2627574)))

(assert (=> d!2299819 (= (matchR!9370 lt!2627574 s!13591) lt!2627670)))

(declare-fun bm!686596 () Bool)

(assert (=> bm!686596 (= call!686601 (isEmpty!41204 s!13591))))

(declare-fun b!7478725 () Bool)

(declare-fun res!3000427 () Bool)

(declare-fun e!4461152 () Bool)

(assert (=> b!7478725 (=> res!3000427 e!4461152)))

(assert (=> b!7478725 (= res!3000427 (not (isEmpty!41204 (tail!14912 s!13591))))))

(declare-fun b!7478726 () Bool)

(declare-fun res!3000423 () Bool)

(assert (=> b!7478726 (=> res!3000423 e!4461151)))

(assert (=> b!7478726 (= res!3000423 e!4461154)))

(declare-fun res!3000420 () Bool)

(assert (=> b!7478726 (=> (not res!3000420) (not e!4461154))))

(assert (=> b!7478726 (= res!3000420 lt!2627670)))

(declare-fun b!7478727 () Bool)

(declare-fun res!3000421 () Bool)

(assert (=> b!7478727 (=> (not res!3000421) (not e!4461154))))

(assert (=> b!7478727 (= res!3000421 (not call!686601))))

(declare-fun b!7478728 () Bool)

(assert (=> b!7478728 (= e!4461149 e!4461152)))

(declare-fun res!3000424 () Bool)

(assert (=> b!7478728 (=> res!3000424 e!4461152)))

(assert (=> b!7478728 (= res!3000424 call!686601)))

(declare-fun b!7478729 () Bool)

(assert (=> b!7478729 (= e!4461152 (not (= (head!15343 s!13591) (c!1381411 lt!2627574))))))

(declare-fun b!7478730 () Bool)

(assert (=> b!7478730 (= e!4461154 (= (head!15343 s!13591) (c!1381411 lt!2627574)))))

(assert (= (and d!2299819 c!1381483) b!7478717))

(assert (= (and d!2299819 (not c!1381483)) b!7478719))

(assert (= (and d!2299819 c!1381484) b!7478722))

(assert (= (and d!2299819 (not c!1381484)) b!7478720))

(assert (= (and b!7478720 c!1381485) b!7478723))

(assert (= (and b!7478720 (not c!1381485)) b!7478718))

(assert (= (and b!7478718 (not res!3000426)) b!7478726))

(assert (= (and b!7478726 res!3000420) b!7478727))

(assert (= (and b!7478727 res!3000421) b!7478724))

(assert (= (and b!7478724 res!3000425) b!7478730))

(assert (= (and b!7478726 (not res!3000423)) b!7478721))

(assert (= (and b!7478721 res!3000422) b!7478728))

(assert (= (and b!7478728 (not res!3000424)) b!7478725))

(assert (= (and b!7478725 (not res!3000427)) b!7478729))

(assert (= (or b!7478722 b!7478727 b!7478728) bm!686596))

(assert (=> b!7478729 m!8071860))

(assert (=> b!7478725 m!8071862))

(assert (=> b!7478725 m!8071862))

(assert (=> b!7478725 m!8071864))

(assert (=> b!7478724 m!8071862))

(assert (=> b!7478724 m!8071862))

(assert (=> b!7478724 m!8071864))

(assert (=> d!2299819 m!8071854))

(declare-fun m!8071906 () Bool)

(assert (=> d!2299819 m!8071906))

(declare-fun m!8071908 () Bool)

(assert (=> b!7478717 m!8071908))

(assert (=> b!7478719 m!8071860))

(assert (=> b!7478719 m!8071860))

(declare-fun m!8071910 () Bool)

(assert (=> b!7478719 m!8071910))

(assert (=> b!7478719 m!8071862))

(assert (=> b!7478719 m!8071910))

(assert (=> b!7478719 m!8071862))

(declare-fun m!8071912 () Bool)

(assert (=> b!7478719 m!8071912))

(assert (=> b!7478730 m!8071860))

(assert (=> bm!686596 m!8071854))

(assert (=> b!7478343 d!2299819))

(declare-fun bs!1932543 () Bool)

(declare-fun b!7478740 () Bool)

(assert (= bs!1932543 (and b!7478740 d!2299781)))

(declare-fun lambda!463363 () Int)

(assert (=> bs!1932543 (not (= lambda!463363 lambda!463342))))

(declare-fun bs!1932544 () Bool)

(assert (= bs!1932544 (and b!7478740 b!7478610)))

(assert (=> bs!1932544 (not (= lambda!463363 lambda!463355))))

(assert (=> bs!1932543 (not (= lambda!463363 lambda!463343))))

(declare-fun bs!1932545 () Bool)

(assert (= bs!1932545 (and b!7478740 b!7478340)))

(assert (=> bs!1932545 (not (= lambda!463363 lambda!463328))))

(declare-fun bs!1932546 () Bool)

(assert (= bs!1932546 (and b!7478740 d!2299783)))

(assert (=> bs!1932546 (not (= lambda!463363 lambda!463346))))

(assert (=> bs!1932545 (not (= lambda!463363 lambda!463329))))

(declare-fun bs!1932547 () Bool)

(assert (= bs!1932547 (and b!7478740 b!7478681)))

(assert (=> bs!1932547 (= (and (= (reg!19935 lt!2627585) (reg!19935 lt!2627588)) (= lt!2627585 lt!2627588)) (= lambda!463363 lambda!463359))))

(declare-fun bs!1932548 () Bool)

(assert (= bs!1932548 (and b!7478740 b!7478613)))

(assert (=> bs!1932548 (= (and (= (reg!19935 lt!2627585) (reg!19935 lt!2627579)) (= lt!2627585 lt!2627579)) (= lambda!463363 lambda!463353))))

(declare-fun bs!1932549 () Bool)

(assert (= bs!1932549 (and b!7478740 b!7478678)))

(assert (=> bs!1932549 (not (= lambda!463363 lambda!463360))))

(assert (=> b!7478740 true))

(assert (=> b!7478740 true))

(declare-fun bs!1932550 () Bool)

(declare-fun b!7478737 () Bool)

(assert (= bs!1932550 (and b!7478737 d!2299781)))

(declare-fun lambda!463364 () Int)

(assert (=> bs!1932550 (not (= lambda!463364 lambda!463342))))

(declare-fun bs!1932551 () Bool)

(assert (= bs!1932551 (and b!7478737 b!7478610)))

(assert (=> bs!1932551 (= (and (= (regOne!39724 lt!2627585) (regOne!39724 lt!2627579)) (= (regTwo!39724 lt!2627585) (regTwo!39724 lt!2627579))) (= lambda!463364 lambda!463355))))

(assert (=> bs!1932550 (= (and (= (regOne!39724 lt!2627585) lt!2627578) (= (regTwo!39724 lt!2627585) rTail!78)) (= lambda!463364 lambda!463343))))

(declare-fun bs!1932552 () Bool)

(assert (= bs!1932552 (and b!7478737 b!7478740)))

(assert (=> bs!1932552 (not (= lambda!463364 lambda!463363))))

(declare-fun bs!1932553 () Bool)

(assert (= bs!1932553 (and b!7478737 b!7478340)))

(assert (=> bs!1932553 (not (= lambda!463364 lambda!463328))))

(declare-fun bs!1932554 () Bool)

(assert (= bs!1932554 (and b!7478737 d!2299783)))

(assert (=> bs!1932554 (not (= lambda!463364 lambda!463346))))

(assert (=> bs!1932553 (= (and (= (regOne!39724 lt!2627585) lt!2627578) (= (regTwo!39724 lt!2627585) rTail!78)) (= lambda!463364 lambda!463329))))

(declare-fun bs!1932555 () Bool)

(assert (= bs!1932555 (and b!7478737 b!7478681)))

(assert (=> bs!1932555 (not (= lambda!463364 lambda!463359))))

(declare-fun bs!1932556 () Bool)

(assert (= bs!1932556 (and b!7478737 b!7478613)))

(assert (=> bs!1932556 (not (= lambda!463364 lambda!463353))))

(declare-fun bs!1932557 () Bool)

(assert (= bs!1932557 (and b!7478737 b!7478678)))

(assert (=> bs!1932557 (= (and (= (regOne!39724 lt!2627585) (regOne!39724 lt!2627588)) (= (regTwo!39724 lt!2627585) (regTwo!39724 lt!2627588))) (= lambda!463364 lambda!463360))))

(assert (=> b!7478737 true))

(assert (=> b!7478737 true))

(declare-fun b!7478731 () Bool)

(declare-fun c!1381487 () Bool)

(assert (=> b!7478731 (= c!1381487 (is-Union!19606 lt!2627585))))

(declare-fun e!4461157 () Bool)

(declare-fun e!4461161 () Bool)

(assert (=> b!7478731 (= e!4461157 e!4461161)))

(declare-fun b!7478732 () Bool)

(declare-fun res!3000429 () Bool)

(declare-fun e!4461158 () Bool)

(assert (=> b!7478732 (=> res!3000429 e!4461158)))

(declare-fun call!686602 () Bool)

(assert (=> b!7478732 (= res!3000429 call!686602)))

(declare-fun e!4461156 () Bool)

(assert (=> b!7478732 (= e!4461156 e!4461158)))

(declare-fun c!1381488 () Bool)

(declare-fun call!686603 () Bool)

(declare-fun bm!686597 () Bool)

(assert (=> bm!686597 (= call!686603 (Exists!4225 (ite c!1381488 lambda!463363 lambda!463364)))))

(declare-fun d!2299821 () Bool)

(declare-fun c!1381489 () Bool)

(assert (=> d!2299821 (= c!1381489 (is-EmptyExpr!19606 lt!2627585))))

(declare-fun e!4461159 () Bool)

(assert (=> d!2299821 (= (matchRSpec!4285 lt!2627585 s!13591) e!4461159)))

(declare-fun b!7478733 () Bool)

(assert (=> b!7478733 (= e!4461157 (= s!13591 (Cons!72198 (c!1381411 lt!2627585) Nil!72198)))))

(declare-fun b!7478734 () Bool)

(declare-fun e!4461160 () Bool)

(assert (=> b!7478734 (= e!4461161 e!4461160)))

(declare-fun res!3000428 () Bool)

(assert (=> b!7478734 (= res!3000428 (matchRSpec!4285 (regOne!39725 lt!2627585) s!13591))))

(assert (=> b!7478734 (=> res!3000428 e!4461160)))

(declare-fun b!7478735 () Bool)

(assert (=> b!7478735 (= e!4461160 (matchRSpec!4285 (regTwo!39725 lt!2627585) s!13591))))

(declare-fun b!7478736 () Bool)

(declare-fun c!1381486 () Bool)

(assert (=> b!7478736 (= c!1381486 (is-ElementMatch!19606 lt!2627585))))

(declare-fun e!4461155 () Bool)

(assert (=> b!7478736 (= e!4461155 e!4461157)))

(assert (=> b!7478737 (= e!4461156 call!686603)))

(declare-fun b!7478738 () Bool)

(assert (=> b!7478738 (= e!4461161 e!4461156)))

(assert (=> b!7478738 (= c!1381488 (is-Star!19606 lt!2627585))))

(declare-fun b!7478739 () Bool)

(assert (=> b!7478739 (= e!4461159 e!4461155)))

(declare-fun res!3000430 () Bool)

(assert (=> b!7478739 (= res!3000430 (not (is-EmptyLang!19606 lt!2627585)))))

(assert (=> b!7478739 (=> (not res!3000430) (not e!4461155))))

(assert (=> b!7478740 (= e!4461158 call!686603)))

(declare-fun b!7478741 () Bool)

(assert (=> b!7478741 (= e!4461159 call!686602)))

(declare-fun bm!686598 () Bool)

(assert (=> bm!686598 (= call!686602 (isEmpty!41204 s!13591))))

(assert (= (and d!2299821 c!1381489) b!7478741))

(assert (= (and d!2299821 (not c!1381489)) b!7478739))

(assert (= (and b!7478739 res!3000430) b!7478736))

(assert (= (and b!7478736 c!1381486) b!7478733))

(assert (= (and b!7478736 (not c!1381486)) b!7478731))

(assert (= (and b!7478731 c!1381487) b!7478734))

(assert (= (and b!7478731 (not c!1381487)) b!7478738))

(assert (= (and b!7478734 (not res!3000428)) b!7478735))

(assert (= (and b!7478738 c!1381488) b!7478732))

(assert (= (and b!7478738 (not c!1381488)) b!7478737))

(assert (= (and b!7478732 (not res!3000429)) b!7478740))

(assert (= (or b!7478740 b!7478737) bm!686597))

(assert (= (or b!7478741 b!7478732) bm!686598))

(declare-fun m!8071922 () Bool)

(assert (=> bm!686597 m!8071922))

(declare-fun m!8071926 () Bool)

(assert (=> b!7478734 m!8071926))

(declare-fun m!8071928 () Bool)

(assert (=> b!7478735 m!8071928))

(assert (=> bm!686598 m!8071854))

(assert (=> b!7478343 d!2299821))

(declare-fun b!7478756 () Bool)

(declare-fun e!4461174 () Bool)

(assert (=> b!7478756 (= e!4461174 (nullable!8544 lt!2627585))))

(declare-fun b!7478757 () Bool)

(declare-fun res!3000445 () Bool)

(declare-fun e!4461172 () Bool)

(assert (=> b!7478757 (=> res!3000445 e!4461172)))

(assert (=> b!7478757 (= res!3000445 (not (is-ElementMatch!19606 lt!2627585)))))

(declare-fun e!4461171 () Bool)

(assert (=> b!7478757 (= e!4461171 e!4461172)))

(declare-fun b!7478758 () Bool)

(assert (=> b!7478758 (= e!4461174 (matchR!9370 (derivativeStep!5603 lt!2627585 (head!15343 s!13591)) (tail!14912 s!13591)))))

(declare-fun b!7478759 () Bool)

(declare-fun e!4461169 () Bool)

(assert (=> b!7478759 (= e!4461169 e!4461171)))

(declare-fun c!1381495 () Bool)

(assert (=> b!7478759 (= c!1381495 (is-EmptyLang!19606 lt!2627585))))

(declare-fun b!7478760 () Bool)

(declare-fun e!4461170 () Bool)

(assert (=> b!7478760 (= e!4461172 e!4461170)))

(declare-fun res!3000441 () Bool)

(assert (=> b!7478760 (=> (not res!3000441) (not e!4461170))))

(declare-fun lt!2627672 () Bool)

(assert (=> b!7478760 (= res!3000441 (not lt!2627672))))

(declare-fun b!7478761 () Bool)

(declare-fun call!686605 () Bool)

(assert (=> b!7478761 (= e!4461169 (= lt!2627672 call!686605))))

(declare-fun b!7478762 () Bool)

(assert (=> b!7478762 (= e!4461171 (not lt!2627672))))

(declare-fun b!7478763 () Bool)

(declare-fun res!3000444 () Bool)

(declare-fun e!4461175 () Bool)

(assert (=> b!7478763 (=> (not res!3000444) (not e!4461175))))

(assert (=> b!7478763 (= res!3000444 (isEmpty!41204 (tail!14912 s!13591)))))

(declare-fun d!2299825 () Bool)

(assert (=> d!2299825 e!4461169))

(declare-fun c!1381494 () Bool)

(assert (=> d!2299825 (= c!1381494 (is-EmptyExpr!19606 lt!2627585))))

(assert (=> d!2299825 (= lt!2627672 e!4461174)))

(declare-fun c!1381493 () Bool)

(assert (=> d!2299825 (= c!1381493 (isEmpty!41204 s!13591))))

(assert (=> d!2299825 (validRegex!10120 lt!2627585)))

(assert (=> d!2299825 (= (matchR!9370 lt!2627585 s!13591) lt!2627672)))

(declare-fun bm!686600 () Bool)

(assert (=> bm!686600 (= call!686605 (isEmpty!41204 s!13591))))

(declare-fun b!7478764 () Bool)

(declare-fun res!3000446 () Bool)

(declare-fun e!4461173 () Bool)

(assert (=> b!7478764 (=> res!3000446 e!4461173)))

(assert (=> b!7478764 (= res!3000446 (not (isEmpty!41204 (tail!14912 s!13591))))))

(declare-fun b!7478765 () Bool)

(declare-fun res!3000442 () Bool)

(assert (=> b!7478765 (=> res!3000442 e!4461172)))

(assert (=> b!7478765 (= res!3000442 e!4461175)))

(declare-fun res!3000439 () Bool)

(assert (=> b!7478765 (=> (not res!3000439) (not e!4461175))))

(assert (=> b!7478765 (= res!3000439 lt!2627672)))

(declare-fun b!7478766 () Bool)

(declare-fun res!3000440 () Bool)

(assert (=> b!7478766 (=> (not res!3000440) (not e!4461175))))

(assert (=> b!7478766 (= res!3000440 (not call!686605))))

(declare-fun b!7478767 () Bool)

(assert (=> b!7478767 (= e!4461170 e!4461173)))

(declare-fun res!3000443 () Bool)

(assert (=> b!7478767 (=> res!3000443 e!4461173)))

(assert (=> b!7478767 (= res!3000443 call!686605)))

(declare-fun b!7478768 () Bool)

(assert (=> b!7478768 (= e!4461173 (not (= (head!15343 s!13591) (c!1381411 lt!2627585))))))

(declare-fun b!7478769 () Bool)

(assert (=> b!7478769 (= e!4461175 (= (head!15343 s!13591) (c!1381411 lt!2627585)))))

(assert (= (and d!2299825 c!1381493) b!7478756))

(assert (= (and d!2299825 (not c!1381493)) b!7478758))

(assert (= (and d!2299825 c!1381494) b!7478761))

(assert (= (and d!2299825 (not c!1381494)) b!7478759))

(assert (= (and b!7478759 c!1381495) b!7478762))

(assert (= (and b!7478759 (not c!1381495)) b!7478757))

(assert (= (and b!7478757 (not res!3000445)) b!7478765))

(assert (= (and b!7478765 res!3000439) b!7478766))

(assert (= (and b!7478766 res!3000440) b!7478763))

(assert (= (and b!7478763 res!3000444) b!7478769))

(assert (= (and b!7478765 (not res!3000442)) b!7478760))

(assert (= (and b!7478760 res!3000441) b!7478767))

(assert (= (and b!7478767 (not res!3000443)) b!7478764))

(assert (= (and b!7478764 (not res!3000446)) b!7478768))

(assert (= (or b!7478761 b!7478766 b!7478767) bm!686600))

(assert (=> b!7478768 m!8071860))

(assert (=> b!7478764 m!8071862))

(assert (=> b!7478764 m!8071862))

(assert (=> b!7478764 m!8071864))

(assert (=> b!7478763 m!8071862))

(assert (=> b!7478763 m!8071862))

(assert (=> b!7478763 m!8071864))

(assert (=> d!2299825 m!8071854))

(assert (=> d!2299825 m!8071904))

(declare-fun m!8071934 () Bool)

(assert (=> b!7478756 m!8071934))

(assert (=> b!7478758 m!8071860))

(assert (=> b!7478758 m!8071860))

(declare-fun m!8071936 () Bool)

(assert (=> b!7478758 m!8071936))

(assert (=> b!7478758 m!8071862))

(assert (=> b!7478758 m!8071936))

(assert (=> b!7478758 m!8071862))

(declare-fun m!8071938 () Bool)

(assert (=> b!7478758 m!8071938))

(assert (=> b!7478769 m!8071860))

(assert (=> bm!686600 m!8071854))

(assert (=> b!7478343 d!2299825))

(declare-fun d!2299829 () Bool)

(assert (=> d!2299829 (= (matchR!9370 lt!2627574 s!13591) (matchRSpec!4285 lt!2627574 s!13591))))

(declare-fun lt!2627673 () Unit!166047)

(assert (=> d!2299829 (= lt!2627673 (choose!57813 lt!2627574 s!13591))))

(assert (=> d!2299829 (validRegex!10120 lt!2627574)))

(assert (=> d!2299829 (= (mainMatchTheorem!4279 lt!2627574 s!13591) lt!2627673)))

(declare-fun bs!1932558 () Bool)

(assert (= bs!1932558 d!2299829))

(assert (=> bs!1932558 m!8071692))

(assert (=> bs!1932558 m!8071700))

(declare-fun m!8071940 () Bool)

(assert (=> bs!1932558 m!8071940))

(assert (=> bs!1932558 m!8071906))

(assert (=> b!7478343 d!2299829))

(declare-fun bs!1932559 () Bool)

(declare-fun b!7478790 () Bool)

(assert (= bs!1932559 (and b!7478790 d!2299781)))

(declare-fun lambda!463366 () Int)

(assert (=> bs!1932559 (not (= lambda!463366 lambda!463342))))

(declare-fun bs!1932561 () Bool)

(assert (= bs!1932561 (and b!7478790 b!7478610)))

(assert (=> bs!1932561 (not (= lambda!463366 lambda!463355))))

(assert (=> bs!1932559 (not (= lambda!463366 lambda!463343))))

(declare-fun bs!1932562 () Bool)

(assert (= bs!1932562 (and b!7478790 b!7478340)))

(assert (=> bs!1932562 (not (= lambda!463366 lambda!463328))))

(declare-fun bs!1932564 () Bool)

(assert (= bs!1932564 (and b!7478790 d!2299783)))

(assert (=> bs!1932564 (not (= lambda!463366 lambda!463346))))

(assert (=> bs!1932562 (not (= lambda!463366 lambda!463329))))

(declare-fun bs!1932565 () Bool)

(assert (= bs!1932565 (and b!7478790 b!7478681)))

(assert (=> bs!1932565 (= (and (= (reg!19935 lt!2627574) (reg!19935 lt!2627588)) (= lt!2627574 lt!2627588)) (= lambda!463366 lambda!463359))))

(declare-fun bs!1932566 () Bool)

(assert (= bs!1932566 (and b!7478790 b!7478740)))

(assert (=> bs!1932566 (= (and (= (reg!19935 lt!2627574) (reg!19935 lt!2627585)) (= lt!2627574 lt!2627585)) (= lambda!463366 lambda!463363))))

(declare-fun bs!1932567 () Bool)

(assert (= bs!1932567 (and b!7478790 b!7478737)))

(assert (=> bs!1932567 (not (= lambda!463366 lambda!463364))))

(declare-fun bs!1932569 () Bool)

(assert (= bs!1932569 (and b!7478790 b!7478613)))

(assert (=> bs!1932569 (= (and (= (reg!19935 lt!2627574) (reg!19935 lt!2627579)) (= lt!2627574 lt!2627579)) (= lambda!463366 lambda!463353))))

(declare-fun bs!1932570 () Bool)

(assert (= bs!1932570 (and b!7478790 b!7478678)))

(assert (=> bs!1932570 (not (= lambda!463366 lambda!463360))))

(assert (=> b!7478790 true))

(assert (=> b!7478790 true))

(declare-fun bs!1932573 () Bool)

(declare-fun b!7478787 () Bool)

(assert (= bs!1932573 (and b!7478787 d!2299781)))

(declare-fun lambda!463367 () Int)

(assert (=> bs!1932573 (not (= lambda!463367 lambda!463342))))

(declare-fun bs!1932574 () Bool)

(assert (= bs!1932574 (and b!7478787 b!7478610)))

(assert (=> bs!1932574 (= (and (= (regOne!39724 lt!2627574) (regOne!39724 lt!2627579)) (= (regTwo!39724 lt!2627574) (regTwo!39724 lt!2627579))) (= lambda!463367 lambda!463355))))

(assert (=> bs!1932573 (= (and (= (regOne!39724 lt!2627574) lt!2627578) (= (regTwo!39724 lt!2627574) rTail!78)) (= lambda!463367 lambda!463343))))

(declare-fun bs!1932575 () Bool)

(assert (= bs!1932575 (and b!7478787 b!7478340)))

(assert (=> bs!1932575 (not (= lambda!463367 lambda!463328))))

(declare-fun bs!1932576 () Bool)

(assert (= bs!1932576 (and b!7478787 b!7478790)))

(assert (=> bs!1932576 (not (= lambda!463367 lambda!463366))))

(declare-fun bs!1932577 () Bool)

(assert (= bs!1932577 (and b!7478787 d!2299783)))

(assert (=> bs!1932577 (not (= lambda!463367 lambda!463346))))

(assert (=> bs!1932575 (= (and (= (regOne!39724 lt!2627574) lt!2627578) (= (regTwo!39724 lt!2627574) rTail!78)) (= lambda!463367 lambda!463329))))

(declare-fun bs!1932578 () Bool)

(assert (= bs!1932578 (and b!7478787 b!7478681)))

(assert (=> bs!1932578 (not (= lambda!463367 lambda!463359))))

(declare-fun bs!1932579 () Bool)

(assert (= bs!1932579 (and b!7478787 b!7478740)))

(assert (=> bs!1932579 (not (= lambda!463367 lambda!463363))))

(declare-fun bs!1932580 () Bool)

(assert (= bs!1932580 (and b!7478787 b!7478737)))

(assert (=> bs!1932580 (= (and (= (regOne!39724 lt!2627574) (regOne!39724 lt!2627585)) (= (regTwo!39724 lt!2627574) (regTwo!39724 lt!2627585))) (= lambda!463367 lambda!463364))))

(declare-fun bs!1932581 () Bool)

(assert (= bs!1932581 (and b!7478787 b!7478613)))

(assert (=> bs!1932581 (not (= lambda!463367 lambda!463353))))

(declare-fun bs!1932583 () Bool)

(assert (= bs!1932583 (and b!7478787 b!7478678)))

(assert (=> bs!1932583 (= (and (= (regOne!39724 lt!2627574) (regOne!39724 lt!2627588)) (= (regTwo!39724 lt!2627574) (regTwo!39724 lt!2627588))) (= lambda!463367 lambda!463360))))

(assert (=> b!7478787 true))

(assert (=> b!7478787 true))

(declare-fun b!7478781 () Bool)

(declare-fun c!1381501 () Bool)

(assert (=> b!7478781 (= c!1381501 (is-Union!19606 lt!2627574))))

(declare-fun e!4461185 () Bool)

(declare-fun e!4461189 () Bool)

(assert (=> b!7478781 (= e!4461185 e!4461189)))

(declare-fun b!7478782 () Bool)

(declare-fun res!3000451 () Bool)

(declare-fun e!4461186 () Bool)

(assert (=> b!7478782 (=> res!3000451 e!4461186)))

(declare-fun call!686608 () Bool)

(assert (=> b!7478782 (= res!3000451 call!686608)))

(declare-fun e!4461184 () Bool)

(assert (=> b!7478782 (= e!4461184 e!4461186)))

(declare-fun call!686609 () Bool)

(declare-fun bm!686603 () Bool)

(declare-fun c!1381502 () Bool)

(assert (=> bm!686603 (= call!686609 (Exists!4225 (ite c!1381502 lambda!463366 lambda!463367)))))

(declare-fun d!2299831 () Bool)

(declare-fun c!1381503 () Bool)

(assert (=> d!2299831 (= c!1381503 (is-EmptyExpr!19606 lt!2627574))))

(declare-fun e!4461187 () Bool)

(assert (=> d!2299831 (= (matchRSpec!4285 lt!2627574 s!13591) e!4461187)))

(declare-fun b!7478783 () Bool)

(assert (=> b!7478783 (= e!4461185 (= s!13591 (Cons!72198 (c!1381411 lt!2627574) Nil!72198)))))

(declare-fun b!7478784 () Bool)

(declare-fun e!4461188 () Bool)

(assert (=> b!7478784 (= e!4461189 e!4461188)))

(declare-fun res!3000450 () Bool)

(assert (=> b!7478784 (= res!3000450 (matchRSpec!4285 (regOne!39725 lt!2627574) s!13591))))

(assert (=> b!7478784 (=> res!3000450 e!4461188)))

(declare-fun b!7478785 () Bool)

(assert (=> b!7478785 (= e!4461188 (matchRSpec!4285 (regTwo!39725 lt!2627574) s!13591))))

(declare-fun b!7478786 () Bool)

(declare-fun c!1381500 () Bool)

(assert (=> b!7478786 (= c!1381500 (is-ElementMatch!19606 lt!2627574))))

(declare-fun e!4461183 () Bool)

(assert (=> b!7478786 (= e!4461183 e!4461185)))

(assert (=> b!7478787 (= e!4461184 call!686609)))

(declare-fun b!7478788 () Bool)

(assert (=> b!7478788 (= e!4461189 e!4461184)))

(assert (=> b!7478788 (= c!1381502 (is-Star!19606 lt!2627574))))

(declare-fun b!7478789 () Bool)

(assert (=> b!7478789 (= e!4461187 e!4461183)))

(declare-fun res!3000452 () Bool)

(assert (=> b!7478789 (= res!3000452 (not (is-EmptyLang!19606 lt!2627574)))))

(assert (=> b!7478789 (=> (not res!3000452) (not e!4461183))))

(assert (=> b!7478790 (= e!4461186 call!686609)))

(declare-fun b!7478791 () Bool)

(assert (=> b!7478791 (= e!4461187 call!686608)))

(declare-fun bm!686604 () Bool)

(assert (=> bm!686604 (= call!686608 (isEmpty!41204 s!13591))))

(assert (= (and d!2299831 c!1381503) b!7478791))

(assert (= (and d!2299831 (not c!1381503)) b!7478789))

(assert (= (and b!7478789 res!3000452) b!7478786))

(assert (= (and b!7478786 c!1381500) b!7478783))

(assert (= (and b!7478786 (not c!1381500)) b!7478781))

(assert (= (and b!7478781 c!1381501) b!7478784))

(assert (= (and b!7478781 (not c!1381501)) b!7478788))

(assert (= (and b!7478784 (not res!3000450)) b!7478785))

(assert (= (and b!7478788 c!1381502) b!7478782))

(assert (= (and b!7478788 (not c!1381502)) b!7478787))

(assert (= (and b!7478782 (not res!3000451)) b!7478790))

(assert (= (or b!7478790 b!7478787) bm!686603))

(assert (= (or b!7478791 b!7478782) bm!686604))

(declare-fun m!8071942 () Bool)

(assert (=> bm!686603 m!8071942))

(declare-fun m!8071944 () Bool)

(assert (=> b!7478784 m!8071944))

(declare-fun m!8071946 () Bool)

(assert (=> b!7478785 m!8071946))

(assert (=> bm!686604 m!8071854))

(assert (=> b!7478343 d!2299831))

(declare-fun bm!686605 () Bool)

(declare-fun call!686610 () Bool)

(declare-fun call!686612 () Bool)

(assert (=> bm!686605 (= call!686610 call!686612)))

(declare-fun c!1381504 () Bool)

(declare-fun c!1381505 () Bool)

(declare-fun bm!686606 () Bool)

(assert (=> bm!686606 (= call!686612 (validRegex!10120 (ite c!1381505 (reg!19935 rTail!78) (ite c!1381504 (regOne!39725 rTail!78) (regOne!39724 rTail!78)))))))

(declare-fun b!7478792 () Bool)

(declare-fun e!4461190 () Bool)

(declare-fun e!4461195 () Bool)

(assert (=> b!7478792 (= e!4461190 e!4461195)))

(assert (=> b!7478792 (= c!1381504 (is-Union!19606 rTail!78))))

(declare-fun bm!686607 () Bool)

(declare-fun call!686611 () Bool)

(assert (=> bm!686607 (= call!686611 (validRegex!10120 (ite c!1381504 (regTwo!39725 rTail!78) (regTwo!39724 rTail!78))))))

(declare-fun b!7478793 () Bool)

(declare-fun e!4461191 () Bool)

(assert (=> b!7478793 (= e!4461191 call!686611)))

(declare-fun b!7478794 () Bool)

(declare-fun e!4461196 () Bool)

(assert (=> b!7478794 (= e!4461196 e!4461190)))

(assert (=> b!7478794 (= c!1381505 (is-Star!19606 rTail!78))))

(declare-fun b!7478796 () Bool)

(declare-fun e!4461194 () Bool)

(assert (=> b!7478796 (= e!4461194 call!686611)))

(declare-fun b!7478797 () Bool)

(declare-fun res!3000455 () Bool)

(assert (=> b!7478797 (=> (not res!3000455) (not e!4461194))))

(assert (=> b!7478797 (= res!3000455 call!686610)))

(assert (=> b!7478797 (= e!4461195 e!4461194)))

(declare-fun b!7478798 () Bool)

(declare-fun e!4461193 () Bool)

(assert (=> b!7478798 (= e!4461193 call!686612)))

(declare-fun b!7478799 () Bool)

(declare-fun res!3000457 () Bool)

(declare-fun e!4461192 () Bool)

(assert (=> b!7478799 (=> res!3000457 e!4461192)))

(assert (=> b!7478799 (= res!3000457 (not (is-Concat!28451 rTail!78)))))

(assert (=> b!7478799 (= e!4461195 e!4461192)))

(declare-fun b!7478800 () Bool)

(assert (=> b!7478800 (= e!4461192 e!4461191)))

(declare-fun res!3000456 () Bool)

(assert (=> b!7478800 (=> (not res!3000456) (not e!4461191))))

(assert (=> b!7478800 (= res!3000456 call!686610)))

(declare-fun d!2299833 () Bool)

(declare-fun res!3000454 () Bool)

(assert (=> d!2299833 (=> res!3000454 e!4461196)))

(assert (=> d!2299833 (= res!3000454 (is-ElementMatch!19606 rTail!78))))

(assert (=> d!2299833 (= (validRegex!10120 rTail!78) e!4461196)))

(declare-fun b!7478795 () Bool)

(assert (=> b!7478795 (= e!4461190 e!4461193)))

(declare-fun res!3000453 () Bool)

(assert (=> b!7478795 (= res!3000453 (not (nullable!8544 (reg!19935 rTail!78))))))

(assert (=> b!7478795 (=> (not res!3000453) (not e!4461193))))

(assert (= (and d!2299833 (not res!3000454)) b!7478794))

(assert (= (and b!7478794 c!1381505) b!7478795))

(assert (= (and b!7478794 (not c!1381505)) b!7478792))

(assert (= (and b!7478795 res!3000453) b!7478798))

(assert (= (and b!7478792 c!1381504) b!7478797))

(assert (= (and b!7478792 (not c!1381504)) b!7478799))

(assert (= (and b!7478797 res!3000455) b!7478796))

(assert (= (and b!7478799 (not res!3000457)) b!7478800))

(assert (= (and b!7478800 res!3000456) b!7478793))

(assert (= (or b!7478796 b!7478793) bm!686607))

(assert (= (or b!7478797 b!7478800) bm!686605))

(assert (= (or b!7478798 bm!686605) bm!686606))

(declare-fun m!8071948 () Bool)

(assert (=> bm!686606 m!8071948))

(declare-fun m!8071950 () Bool)

(assert (=> bm!686607 m!8071950))

(declare-fun m!8071952 () Bool)

(assert (=> b!7478795 m!8071952))

(assert (=> b!7478344 d!2299833))

(declare-fun b!7478813 () Bool)

(declare-fun e!4461199 () Bool)

(declare-fun tp!2169049 () Bool)

(assert (=> b!7478813 (= e!4461199 tp!2169049)))

(declare-fun b!7478814 () Bool)

(declare-fun tp!2169048 () Bool)

(declare-fun tp!2169047 () Bool)

(assert (=> b!7478814 (= e!4461199 (and tp!2169048 tp!2169047))))

(assert (=> b!7478330 (= tp!2168977 e!4461199)))

(declare-fun b!7478811 () Bool)

(assert (=> b!7478811 (= e!4461199 tp_is_empty!49501)))

(declare-fun b!7478812 () Bool)

(declare-fun tp!2169050 () Bool)

(declare-fun tp!2169046 () Bool)

(assert (=> b!7478812 (= e!4461199 (and tp!2169050 tp!2169046))))

(assert (= (and b!7478330 (is-ElementMatch!19606 (regOne!39724 r2!5783))) b!7478811))

(assert (= (and b!7478330 (is-Concat!28451 (regOne!39724 r2!5783))) b!7478812))

(assert (= (and b!7478330 (is-Star!19606 (regOne!39724 r2!5783))) b!7478813))

(assert (= (and b!7478330 (is-Union!19606 (regOne!39724 r2!5783))) b!7478814))

(declare-fun b!7478817 () Bool)

(declare-fun e!4461200 () Bool)

(declare-fun tp!2169054 () Bool)

(assert (=> b!7478817 (= e!4461200 tp!2169054)))

(declare-fun b!7478818 () Bool)

(declare-fun tp!2169053 () Bool)

(declare-fun tp!2169052 () Bool)

(assert (=> b!7478818 (= e!4461200 (and tp!2169053 tp!2169052))))

(assert (=> b!7478330 (= tp!2168980 e!4461200)))

(declare-fun b!7478815 () Bool)

(assert (=> b!7478815 (= e!4461200 tp_is_empty!49501)))

(declare-fun b!7478816 () Bool)

(declare-fun tp!2169055 () Bool)

(declare-fun tp!2169051 () Bool)

(assert (=> b!7478816 (= e!4461200 (and tp!2169055 tp!2169051))))

(assert (= (and b!7478330 (is-ElementMatch!19606 (regTwo!39724 r2!5783))) b!7478815))

(assert (= (and b!7478330 (is-Concat!28451 (regTwo!39724 r2!5783))) b!7478816))

(assert (= (and b!7478330 (is-Star!19606 (regTwo!39724 r2!5783))) b!7478817))

(assert (= (and b!7478330 (is-Union!19606 (regTwo!39724 r2!5783))) b!7478818))

(declare-fun b!7478821 () Bool)

(declare-fun e!4461201 () Bool)

(declare-fun tp!2169059 () Bool)

(assert (=> b!7478821 (= e!4461201 tp!2169059)))

(declare-fun b!7478822 () Bool)

(declare-fun tp!2169058 () Bool)

(declare-fun tp!2169057 () Bool)

(assert (=> b!7478822 (= e!4461201 (and tp!2169058 tp!2169057))))

(assert (=> b!7478346 (= tp!2168976 e!4461201)))

(declare-fun b!7478819 () Bool)

(assert (=> b!7478819 (= e!4461201 tp_is_empty!49501)))

(declare-fun b!7478820 () Bool)

(declare-fun tp!2169060 () Bool)

(declare-fun tp!2169056 () Bool)

(assert (=> b!7478820 (= e!4461201 (and tp!2169060 tp!2169056))))

(assert (= (and b!7478346 (is-ElementMatch!19606 (regOne!39725 rTail!78))) b!7478819))

(assert (= (and b!7478346 (is-Concat!28451 (regOne!39725 rTail!78))) b!7478820))

(assert (= (and b!7478346 (is-Star!19606 (regOne!39725 rTail!78))) b!7478821))

(assert (= (and b!7478346 (is-Union!19606 (regOne!39725 rTail!78))) b!7478822))

(declare-fun b!7478825 () Bool)

(declare-fun e!4461202 () Bool)

(declare-fun tp!2169064 () Bool)

(assert (=> b!7478825 (= e!4461202 tp!2169064)))

(declare-fun b!7478826 () Bool)

(declare-fun tp!2169063 () Bool)

(declare-fun tp!2169062 () Bool)

(assert (=> b!7478826 (= e!4461202 (and tp!2169063 tp!2169062))))

(assert (=> b!7478346 (= tp!2168973 e!4461202)))

(declare-fun b!7478823 () Bool)

(assert (=> b!7478823 (= e!4461202 tp_is_empty!49501)))

(declare-fun b!7478824 () Bool)

(declare-fun tp!2169065 () Bool)

(declare-fun tp!2169061 () Bool)

(assert (=> b!7478824 (= e!4461202 (and tp!2169065 tp!2169061))))

(assert (= (and b!7478346 (is-ElementMatch!19606 (regTwo!39725 rTail!78))) b!7478823))

(assert (= (and b!7478346 (is-Concat!28451 (regTwo!39725 rTail!78))) b!7478824))

(assert (= (and b!7478346 (is-Star!19606 (regTwo!39725 rTail!78))) b!7478825))

(assert (= (and b!7478346 (is-Union!19606 (regTwo!39725 rTail!78))) b!7478826))

(declare-fun b!7478829 () Bool)

(declare-fun e!4461203 () Bool)

(declare-fun tp!2169069 () Bool)

(assert (=> b!7478829 (= e!4461203 tp!2169069)))

(declare-fun b!7478830 () Bool)

(declare-fun tp!2169068 () Bool)

(declare-fun tp!2169067 () Bool)

(assert (=> b!7478830 (= e!4461203 (and tp!2169068 tp!2169067))))

(assert (=> b!7478336 (= tp!2168987 e!4461203)))

(declare-fun b!7478827 () Bool)

(assert (=> b!7478827 (= e!4461203 tp_is_empty!49501)))

(declare-fun b!7478828 () Bool)

(declare-fun tp!2169070 () Bool)

(declare-fun tp!2169066 () Bool)

(assert (=> b!7478828 (= e!4461203 (and tp!2169070 tp!2169066))))

(assert (= (and b!7478336 (is-ElementMatch!19606 (reg!19935 r2!5783))) b!7478827))

(assert (= (and b!7478336 (is-Concat!28451 (reg!19935 r2!5783))) b!7478828))

(assert (= (and b!7478336 (is-Star!19606 (reg!19935 r2!5783))) b!7478829))

(assert (= (and b!7478336 (is-Union!19606 (reg!19935 r2!5783))) b!7478830))

(declare-fun b!7478833 () Bool)

(declare-fun e!4461204 () Bool)

(declare-fun tp!2169074 () Bool)

(assert (=> b!7478833 (= e!4461204 tp!2169074)))

(declare-fun b!7478834 () Bool)

(declare-fun tp!2169073 () Bool)

(declare-fun tp!2169072 () Bool)

(assert (=> b!7478834 (= e!4461204 (and tp!2169073 tp!2169072))))

(assert (=> b!7478341 (= tp!2168981 e!4461204)))

(declare-fun b!7478831 () Bool)

(assert (=> b!7478831 (= e!4461204 tp_is_empty!49501)))

(declare-fun b!7478832 () Bool)

(declare-fun tp!2169075 () Bool)

(declare-fun tp!2169071 () Bool)

(assert (=> b!7478832 (= e!4461204 (and tp!2169075 tp!2169071))))

(assert (= (and b!7478341 (is-ElementMatch!19606 (regOne!39724 r1!5845))) b!7478831))

(assert (= (and b!7478341 (is-Concat!28451 (regOne!39724 r1!5845))) b!7478832))

(assert (= (and b!7478341 (is-Star!19606 (regOne!39724 r1!5845))) b!7478833))

(assert (= (and b!7478341 (is-Union!19606 (regOne!39724 r1!5845))) b!7478834))

(declare-fun b!7478837 () Bool)

(declare-fun e!4461205 () Bool)

(declare-fun tp!2169079 () Bool)

(assert (=> b!7478837 (= e!4461205 tp!2169079)))

(declare-fun b!7478838 () Bool)

(declare-fun tp!2169078 () Bool)

(declare-fun tp!2169077 () Bool)

(assert (=> b!7478838 (= e!4461205 (and tp!2169078 tp!2169077))))

(assert (=> b!7478341 (= tp!2168972 e!4461205)))

(declare-fun b!7478835 () Bool)

(assert (=> b!7478835 (= e!4461205 tp_is_empty!49501)))

(declare-fun b!7478836 () Bool)

(declare-fun tp!2169080 () Bool)

(declare-fun tp!2169076 () Bool)

(assert (=> b!7478836 (= e!4461205 (and tp!2169080 tp!2169076))))

(assert (= (and b!7478341 (is-ElementMatch!19606 (regTwo!39724 r1!5845))) b!7478835))

(assert (= (and b!7478341 (is-Concat!28451 (regTwo!39724 r1!5845))) b!7478836))

(assert (= (and b!7478341 (is-Star!19606 (regTwo!39724 r1!5845))) b!7478837))

(assert (= (and b!7478341 (is-Union!19606 (regTwo!39724 r1!5845))) b!7478838))

(declare-fun b!7478841 () Bool)

(declare-fun e!4461206 () Bool)

(declare-fun tp!2169084 () Bool)

(assert (=> b!7478841 (= e!4461206 tp!2169084)))

(declare-fun b!7478842 () Bool)

(declare-fun tp!2169083 () Bool)

(declare-fun tp!2169082 () Bool)

(assert (=> b!7478842 (= e!4461206 (and tp!2169083 tp!2169082))))

(assert (=> b!7478342 (= tp!2168985 e!4461206)))

(declare-fun b!7478839 () Bool)

(assert (=> b!7478839 (= e!4461206 tp_is_empty!49501)))

(declare-fun b!7478840 () Bool)

(declare-fun tp!2169085 () Bool)

(declare-fun tp!2169081 () Bool)

(assert (=> b!7478840 (= e!4461206 (and tp!2169085 tp!2169081))))

(assert (= (and b!7478342 (is-ElementMatch!19606 (reg!19935 rTail!78))) b!7478839))

(assert (= (and b!7478342 (is-Concat!28451 (reg!19935 rTail!78))) b!7478840))

(assert (= (and b!7478342 (is-Star!19606 (reg!19935 rTail!78))) b!7478841))

(assert (= (and b!7478342 (is-Union!19606 (reg!19935 rTail!78))) b!7478842))

(declare-fun b!7478856 () Bool)

(declare-fun e!4461214 () Bool)

(declare-fun tp!2169089 () Bool)

(assert (=> b!7478856 (= e!4461214 tp!2169089)))

(declare-fun b!7478857 () Bool)

(declare-fun tp!2169088 () Bool)

(declare-fun tp!2169087 () Bool)

(assert (=> b!7478857 (= e!4461214 (and tp!2169088 tp!2169087))))

(assert (=> b!7478331 (= tp!2168984 e!4461214)))

(declare-fun b!7478854 () Bool)

(assert (=> b!7478854 (= e!4461214 tp_is_empty!49501)))

(declare-fun b!7478855 () Bool)

(declare-fun tp!2169090 () Bool)

(declare-fun tp!2169086 () Bool)

(assert (=> b!7478855 (= e!4461214 (and tp!2169090 tp!2169086))))

(assert (= (and b!7478331 (is-ElementMatch!19606 (regOne!39725 r1!5845))) b!7478854))

(assert (= (and b!7478331 (is-Concat!28451 (regOne!39725 r1!5845))) b!7478855))

(assert (= (and b!7478331 (is-Star!19606 (regOne!39725 r1!5845))) b!7478856))

(assert (= (and b!7478331 (is-Union!19606 (regOne!39725 r1!5845))) b!7478857))

(declare-fun b!7478860 () Bool)

(declare-fun e!4461215 () Bool)

(declare-fun tp!2169094 () Bool)

(assert (=> b!7478860 (= e!4461215 tp!2169094)))

(declare-fun b!7478861 () Bool)

(declare-fun tp!2169093 () Bool)

(declare-fun tp!2169092 () Bool)

(assert (=> b!7478861 (= e!4461215 (and tp!2169093 tp!2169092))))

(assert (=> b!7478331 (= tp!2168986 e!4461215)))

(declare-fun b!7478858 () Bool)

(assert (=> b!7478858 (= e!4461215 tp_is_empty!49501)))

(declare-fun b!7478859 () Bool)

(declare-fun tp!2169095 () Bool)

(declare-fun tp!2169091 () Bool)

(assert (=> b!7478859 (= e!4461215 (and tp!2169095 tp!2169091))))

(assert (= (and b!7478331 (is-ElementMatch!19606 (regTwo!39725 r1!5845))) b!7478858))

(assert (= (and b!7478331 (is-Concat!28451 (regTwo!39725 r1!5845))) b!7478859))

(assert (= (and b!7478331 (is-Star!19606 (regTwo!39725 r1!5845))) b!7478860))

(assert (= (and b!7478331 (is-Union!19606 (regTwo!39725 r1!5845))) b!7478861))

(declare-fun b!7478864 () Bool)

(declare-fun e!4461216 () Bool)

(declare-fun tp!2169099 () Bool)

(assert (=> b!7478864 (= e!4461216 tp!2169099)))

(declare-fun b!7478865 () Bool)

(declare-fun tp!2169098 () Bool)

(declare-fun tp!2169097 () Bool)

(assert (=> b!7478865 (= e!4461216 (and tp!2169098 tp!2169097))))

(assert (=> b!7478347 (= tp!2168983 e!4461216)))

(declare-fun b!7478862 () Bool)

(assert (=> b!7478862 (= e!4461216 tp_is_empty!49501)))

(declare-fun b!7478863 () Bool)

(declare-fun tp!2169100 () Bool)

(declare-fun tp!2169096 () Bool)

(assert (=> b!7478863 (= e!4461216 (and tp!2169100 tp!2169096))))

(assert (= (and b!7478347 (is-ElementMatch!19606 (regOne!39725 r2!5783))) b!7478862))

(assert (= (and b!7478347 (is-Concat!28451 (regOne!39725 r2!5783))) b!7478863))

(assert (= (and b!7478347 (is-Star!19606 (regOne!39725 r2!5783))) b!7478864))

(assert (= (and b!7478347 (is-Union!19606 (regOne!39725 r2!5783))) b!7478865))

(declare-fun b!7478868 () Bool)

(declare-fun e!4461217 () Bool)

(declare-fun tp!2169104 () Bool)

(assert (=> b!7478868 (= e!4461217 tp!2169104)))

(declare-fun b!7478869 () Bool)

(declare-fun tp!2169103 () Bool)

(declare-fun tp!2169102 () Bool)

(assert (=> b!7478869 (= e!4461217 (and tp!2169103 tp!2169102))))

(assert (=> b!7478347 (= tp!2168978 e!4461217)))

(declare-fun b!7478866 () Bool)

(assert (=> b!7478866 (= e!4461217 tp_is_empty!49501)))

(declare-fun b!7478867 () Bool)

(declare-fun tp!2169105 () Bool)

(declare-fun tp!2169101 () Bool)

(assert (=> b!7478867 (= e!4461217 (and tp!2169105 tp!2169101))))

(assert (= (and b!7478347 (is-ElementMatch!19606 (regTwo!39725 r2!5783))) b!7478866))

(assert (= (and b!7478347 (is-Concat!28451 (regTwo!39725 r2!5783))) b!7478867))

(assert (= (and b!7478347 (is-Star!19606 (regTwo!39725 r2!5783))) b!7478868))

(assert (= (and b!7478347 (is-Union!19606 (regTwo!39725 r2!5783))) b!7478869))

(declare-fun b!7478872 () Bool)

(declare-fun e!4461218 () Bool)

(declare-fun tp!2169109 () Bool)

(assert (=> b!7478872 (= e!4461218 tp!2169109)))

(declare-fun b!7478873 () Bool)

(declare-fun tp!2169108 () Bool)

(declare-fun tp!2169107 () Bool)

(assert (=> b!7478873 (= e!4461218 (and tp!2169108 tp!2169107))))

(assert (=> b!7478332 (= tp!2168979 e!4461218)))

(declare-fun b!7478870 () Bool)

(assert (=> b!7478870 (= e!4461218 tp_is_empty!49501)))

(declare-fun b!7478871 () Bool)

(declare-fun tp!2169110 () Bool)

(declare-fun tp!2169106 () Bool)

(assert (=> b!7478871 (= e!4461218 (and tp!2169110 tp!2169106))))

(assert (= (and b!7478332 (is-ElementMatch!19606 (reg!19935 r1!5845))) b!7478870))

(assert (= (and b!7478332 (is-Concat!28451 (reg!19935 r1!5845))) b!7478871))

(assert (= (and b!7478332 (is-Star!19606 (reg!19935 r1!5845))) b!7478872))

(assert (= (and b!7478332 (is-Union!19606 (reg!19935 r1!5845))) b!7478873))

(declare-fun b!7478878 () Bool)

(declare-fun e!4461221 () Bool)

(declare-fun tp!2169113 () Bool)

(assert (=> b!7478878 (= e!4461221 (and tp_is_empty!49501 tp!2169113))))

(assert (=> b!7478337 (= tp!2168974 e!4461221)))

(assert (= (and b!7478337 (is-Cons!72198 (t!386891 s!13591))) b!7478878))

(declare-fun b!7478881 () Bool)

(declare-fun e!4461222 () Bool)

(declare-fun tp!2169117 () Bool)

(assert (=> b!7478881 (= e!4461222 tp!2169117)))

(declare-fun b!7478882 () Bool)

(declare-fun tp!2169116 () Bool)

(declare-fun tp!2169115 () Bool)

(assert (=> b!7478882 (= e!4461222 (and tp!2169116 tp!2169115))))

(assert (=> b!7478333 (= tp!2168975 e!4461222)))

(declare-fun b!7478879 () Bool)

(assert (=> b!7478879 (= e!4461222 tp_is_empty!49501)))

(declare-fun b!7478880 () Bool)

(declare-fun tp!2169118 () Bool)

(declare-fun tp!2169114 () Bool)

(assert (=> b!7478880 (= e!4461222 (and tp!2169118 tp!2169114))))

(assert (= (and b!7478333 (is-ElementMatch!19606 (regOne!39724 rTail!78))) b!7478879))

(assert (= (and b!7478333 (is-Concat!28451 (regOne!39724 rTail!78))) b!7478880))

(assert (= (and b!7478333 (is-Star!19606 (regOne!39724 rTail!78))) b!7478881))

(assert (= (and b!7478333 (is-Union!19606 (regOne!39724 rTail!78))) b!7478882))

(declare-fun b!7478885 () Bool)

(declare-fun e!4461223 () Bool)

(declare-fun tp!2169122 () Bool)

(assert (=> b!7478885 (= e!4461223 tp!2169122)))

(declare-fun b!7478886 () Bool)

(declare-fun tp!2169121 () Bool)

(declare-fun tp!2169120 () Bool)

(assert (=> b!7478886 (= e!4461223 (and tp!2169121 tp!2169120))))

(assert (=> b!7478333 (= tp!2168982 e!4461223)))

(declare-fun b!7478883 () Bool)

(assert (=> b!7478883 (= e!4461223 tp_is_empty!49501)))

(declare-fun b!7478884 () Bool)

(declare-fun tp!2169123 () Bool)

(declare-fun tp!2169119 () Bool)

(assert (=> b!7478884 (= e!4461223 (and tp!2169123 tp!2169119))))

(assert (= (and b!7478333 (is-ElementMatch!19606 (regTwo!39724 rTail!78))) b!7478883))

(assert (= (and b!7478333 (is-Concat!28451 (regTwo!39724 rTail!78))) b!7478884))

(assert (= (and b!7478333 (is-Star!19606 (regTwo!39724 rTail!78))) b!7478885))

(assert (= (and b!7478333 (is-Union!19606 (regTwo!39724 rTail!78))) b!7478886))

(push 1)

(assert (not bm!686596))

(assert (not b!7478730))

(assert tp_is_empty!49501)

(assert (not b!7478856))

(assert (not b!7478838))

(assert (not b!7478543))

(assert (not bm!686603))

(assert (not b!7478724))

(assert (not bm!686600))

(assert (not b!7478443))

(assert (not b!7478658))

(assert (not bm!686607))

(assert (not bm!686606))

(assert (not bm!686597))

(assert (not b!7478825))

(assert (not b!7478607))

(assert (not b!7478756))

(assert (not d!2299805))

(assert (not b!7478869))

(assert (not b!7478814))

(assert (not b!7478864))

(assert (not d!2299787))

(assert (not b!7478881))

(assert (not b!7478694))

(assert (not b!7478865))

(assert (not d!2299797))

(assert (not b!7478725))

(assert (not b!7478884))

(assert (not d!2299813))

(assert (not b!7478882))

(assert (not b!7478735))

(assert (not b!7478536))

(assert (not b!7478769))

(assert (not b!7478812))

(assert (not d!2299781))

(assert (not d!2299819))

(assert (not d!2299825))

(assert (not bm!686588))

(assert (not b!7478764))

(assert (not bm!686592))

(assert (not b!7478842))

(assert (not b!7478855))

(assert (not b!7478840))

(assert (not b!7478861))

(assert (not b!7478828))

(assert (not b!7478702))

(assert (not bm!686594))

(assert (not b!7478829))

(assert (not b!7478795))

(assert (not b!7478885))

(assert (not b!7478873))

(assert (not b!7478665))

(assert (not b!7478758))

(assert (not b!7478763))

(assert (not b!7478537))

(assert (not b!7478872))

(assert (not b!7478666))

(assert (not b!7478734))

(assert (not b!7478860))

(assert (not b!7478707))

(assert (not b!7478820))

(assert (not b!7478768))

(assert (not b!7478711))

(assert (not b!7478834))

(assert (not bm!686567))

(assert (not b!7478676))

(assert (not d!2299785))

(assert (not b!7478821))

(assert (not bm!686587))

(assert (not b!7478670))

(assert (not b!7478868))

(assert (not b!7478826))

(assert (not b!7478817))

(assert (not b!7478717))

(assert (not d!2299817))

(assert (not b!7478784))

(assert (not b!7478675))

(assert (not b!7478880))

(assert (not bm!686595))

(assert (not b!7478729))

(assert (not b!7478785))

(assert (not d!2299783))

(assert (not b!7478706))

(assert (not b!7478822))

(assert (not d!2299803))

(assert (not b!7478671))

(assert (not b!7478863))

(assert (not b!7478535))

(assert (not b!7478836))

(assert (not b!7478701))

(assert (not b!7478696))

(assert (not b!7478539))

(assert (not b!7478660))

(assert (not b!7478608))

(assert (not bm!686578))

(assert (not bm!686598))

(assert (not b!7478816))

(assert (not bm!686568))

(assert (not b!7478833))

(assert (not b!7478813))

(assert (not bm!686604))

(assert (not b!7478541))

(assert (not b!7478841))

(assert (not d!2299829))

(assert (not b!7478832))

(assert (not b!7478878))

(assert (not b!7478867))

(assert (not d!2299801))

(assert (not b!7478830))

(assert (not d!2299789))

(assert (not b!7478857))

(assert (not bm!686577))

(assert (not b!7478818))

(assert (not b!7478859))

(assert (not b!7478871))

(assert (not b!7478719))

(assert (not b!7478837))

(assert (not bm!686589))

(assert (not b!7478824))

(assert (not b!7478886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

