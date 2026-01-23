; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723764 () Bool)

(assert start!723764)

(declare-fun b!7459313 () Bool)

(assert (=> b!7459313 true))

(assert (=> b!7459313 true))

(assert (=> b!7459313 true))

(declare-fun lambda!461491 () Int)

(declare-fun lambda!461490 () Int)

(assert (=> b!7459313 (not (= lambda!461491 lambda!461490))))

(assert (=> b!7459313 true))

(assert (=> b!7459313 true))

(assert (=> b!7459313 true))

(declare-fun b!7459298 () Bool)

(declare-fun e!4451808 () Bool)

(declare-fun tp_is_empty!49337 () Bool)

(assert (=> b!7459298 (= e!4451808 tp_is_empty!49337)))

(declare-fun b!7459299 () Bool)

(declare-fun res!2992098 () Bool)

(declare-fun e!4451807 () Bool)

(assert (=> b!7459299 (=> (not res!2992098) (not e!4451807))))

(declare-datatypes ((C!39322 0))(
  ( (C!39323 (val!30059 Int)) )
))
(declare-datatypes ((Regex!19524 0))(
  ( (ElementMatch!19524 (c!1379069 C!39322)) (Concat!28369 (regOne!39560 Regex!19524) (regTwo!39560 Regex!19524)) (EmptyExpr!19524) (Star!19524 (reg!19853 Regex!19524)) (EmptyLang!19524) (Union!19524 (regOne!39561 Regex!19524) (regTwo!39561 Regex!19524)) )
))
(declare-fun rTail!78 () Regex!19524)

(declare-fun validRegex!10038 (Regex!19524) Bool)

(assert (=> b!7459299 (= res!2992098 (validRegex!10038 rTail!78))))

(declare-fun b!7459300 () Bool)

(declare-fun e!4451804 () Bool)

(assert (=> b!7459300 (= e!4451807 (not e!4451804))))

(declare-fun res!2992099 () Bool)

(assert (=> b!7459300 (=> res!2992099 e!4451804)))

(declare-fun lt!2622281 () Bool)

(assert (=> b!7459300 (= res!2992099 lt!2622281)))

(declare-fun lt!2622279 () Regex!19524)

(declare-datatypes ((List!72240 0))(
  ( (Nil!72116) (Cons!72116 (h!78564 C!39322) (t!386809 List!72240)) )
))
(declare-fun s!13591 () List!72240)

(declare-fun matchR!9288 (Regex!19524 List!72240) Bool)

(declare-fun matchRSpec!4203 (Regex!19524 List!72240) Bool)

(assert (=> b!7459300 (= (matchR!9288 lt!2622279 s!13591) (matchRSpec!4203 lt!2622279 s!13591))))

(declare-datatypes ((Unit!165883 0))(
  ( (Unit!165884) )
))
(declare-fun lt!2622280 () Unit!165883)

(declare-fun mainMatchTheorem!4197 (Regex!19524 List!72240) Unit!165883)

(assert (=> b!7459300 (= lt!2622280 (mainMatchTheorem!4197 lt!2622279 s!13591))))

(declare-fun lt!2622282 () Regex!19524)

(assert (=> b!7459300 (= lt!2622281 (matchRSpec!4203 lt!2622282 s!13591))))

(assert (=> b!7459300 (= lt!2622281 (matchR!9288 lt!2622282 s!13591))))

(declare-fun lt!2622283 () Unit!165883)

(assert (=> b!7459300 (= lt!2622283 (mainMatchTheorem!4197 lt!2622282 s!13591))))

(declare-fun r2!5783 () Regex!19524)

(declare-fun r1!5845 () Regex!19524)

(assert (=> b!7459300 (= lt!2622279 (Union!19524 (Concat!28369 r1!5845 rTail!78) (Concat!28369 r2!5783 rTail!78)))))

(declare-fun lt!2622278 () Regex!19524)

(assert (=> b!7459300 (= lt!2622282 (Concat!28369 lt!2622278 rTail!78))))

(assert (=> b!7459300 (= lt!2622278 (Union!19524 r1!5845 r2!5783))))

(declare-fun b!7459301 () Bool)

(declare-fun e!4451806 () Bool)

(assert (=> b!7459301 (= e!4451806 tp_is_empty!49337)))

(declare-fun b!7459302 () Bool)

(declare-fun e!4451805 () Bool)

(declare-fun tp!2161694 () Bool)

(declare-fun tp!2161701 () Bool)

(assert (=> b!7459302 (= e!4451805 (and tp!2161694 tp!2161701))))

(declare-fun b!7459303 () Bool)

(declare-fun tp!2161696 () Bool)

(declare-fun tp!2161707 () Bool)

(assert (=> b!7459303 (= e!4451808 (and tp!2161696 tp!2161707))))

(declare-fun b!7459305 () Bool)

(declare-fun res!2992097 () Bool)

(assert (=> b!7459305 (=> (not res!2992097) (not e!4451807))))

(assert (=> b!7459305 (= res!2992097 (validRegex!10038 r2!5783))))

(declare-fun b!7459306 () Bool)

(declare-fun tp!2161698 () Bool)

(assert (=> b!7459306 (= e!4451808 tp!2161698)))

(declare-fun b!7459307 () Bool)

(declare-fun tp!2161692 () Bool)

(assert (=> b!7459307 (= e!4451806 tp!2161692)))

(declare-fun b!7459308 () Bool)

(declare-fun tp!2161704 () Bool)

(assert (=> b!7459308 (= e!4451805 tp!2161704)))

(declare-fun b!7459309 () Bool)

(declare-fun tp!2161695 () Bool)

(declare-fun tp!2161706 () Bool)

(assert (=> b!7459309 (= e!4451808 (and tp!2161695 tp!2161706))))

(declare-fun b!7459310 () Bool)

(declare-fun e!4451803 () Bool)

(declare-fun tp!2161702 () Bool)

(assert (=> b!7459310 (= e!4451803 (and tp_is_empty!49337 tp!2161702))))

(declare-fun b!7459304 () Bool)

(declare-fun tp!2161697 () Bool)

(declare-fun tp!2161705 () Bool)

(assert (=> b!7459304 (= e!4451806 (and tp!2161697 tp!2161705))))

(declare-fun res!2992100 () Bool)

(assert (=> start!723764 (=> (not res!2992100) (not e!4451807))))

(assert (=> start!723764 (= res!2992100 (validRegex!10038 r1!5845))))

(assert (=> start!723764 e!4451807))

(assert (=> start!723764 e!4451808))

(assert (=> start!723764 e!4451805))

(assert (=> start!723764 e!4451806))

(assert (=> start!723764 e!4451803))

(declare-fun b!7459311 () Bool)

(declare-fun tp!2161703 () Bool)

(declare-fun tp!2161699 () Bool)

(assert (=> b!7459311 (= e!4451806 (and tp!2161703 tp!2161699))))

(declare-fun b!7459312 () Bool)

(assert (=> b!7459312 (= e!4451805 tp_is_empty!49337)))

(assert (=> b!7459313 (= e!4451804 (validRegex!10038 lt!2622278))))

(declare-fun Exists!4143 (Int) Bool)

(assert (=> b!7459313 (= (Exists!4143 lambda!461490) (Exists!4143 lambda!461491))))

(declare-fun lt!2622284 () Unit!165883)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2477 (Regex!19524 Regex!19524 List!72240) Unit!165883)

(assert (=> b!7459313 (= lt!2622284 (lemmaExistCutMatchRandMatchRSpecEquivalent!2477 lt!2622278 rTail!78 s!13591))))

(declare-datatypes ((tuple2!68498 0))(
  ( (tuple2!68499 (_1!37552 List!72240) (_2!37552 List!72240)) )
))
(declare-datatypes ((Option!17081 0))(
  ( (None!17080) (Some!17080 (v!54209 tuple2!68498)) )
))
(declare-fun isDefined!13770 (Option!17081) Bool)

(declare-fun findConcatSeparation!3203 (Regex!19524 Regex!19524 List!72240 List!72240 List!72240) Option!17081)

(assert (=> b!7459313 (= (isDefined!13770 (findConcatSeparation!3203 lt!2622278 rTail!78 Nil!72116 s!13591 s!13591)) (Exists!4143 lambda!461490))))

(declare-fun lt!2622285 () Unit!165883)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2961 (Regex!19524 Regex!19524 List!72240) Unit!165883)

(assert (=> b!7459313 (= lt!2622285 (lemmaFindConcatSeparationEquivalentToExists!2961 lt!2622278 rTail!78 s!13591))))

(declare-fun b!7459314 () Bool)

(declare-fun tp!2161693 () Bool)

(declare-fun tp!2161700 () Bool)

(assert (=> b!7459314 (= e!4451805 (and tp!2161693 tp!2161700))))

(assert (= (and start!723764 res!2992100) b!7459305))

(assert (= (and b!7459305 res!2992097) b!7459299))

(assert (= (and b!7459299 res!2992098) b!7459300))

(assert (= (and b!7459300 (not res!2992099)) b!7459313))

(assert (= (and start!723764 (is-ElementMatch!19524 r1!5845)) b!7459298))

(assert (= (and start!723764 (is-Concat!28369 r1!5845)) b!7459309))

(assert (= (and start!723764 (is-Star!19524 r1!5845)) b!7459306))

(assert (= (and start!723764 (is-Union!19524 r1!5845)) b!7459303))

(assert (= (and start!723764 (is-ElementMatch!19524 r2!5783)) b!7459312))

(assert (= (and start!723764 (is-Concat!28369 r2!5783)) b!7459314))

(assert (= (and start!723764 (is-Star!19524 r2!5783)) b!7459308))

(assert (= (and start!723764 (is-Union!19524 r2!5783)) b!7459302))

(assert (= (and start!723764 (is-ElementMatch!19524 rTail!78)) b!7459301))

(assert (= (and start!723764 (is-Concat!28369 rTail!78)) b!7459304))

(assert (= (and start!723764 (is-Star!19524 rTail!78)) b!7459307))

(assert (= (and start!723764 (is-Union!19524 rTail!78)) b!7459311))

(assert (= (and start!723764 (is-Cons!72116 s!13591)) b!7459310))

(declare-fun m!8061716 () Bool)

(assert (=> b!7459313 m!8061716))

(declare-fun m!8061718 () Bool)

(assert (=> b!7459313 m!8061718))

(declare-fun m!8061720 () Bool)

(assert (=> b!7459313 m!8061720))

(assert (=> b!7459313 m!8061718))

(declare-fun m!8061722 () Bool)

(assert (=> b!7459313 m!8061722))

(assert (=> b!7459313 m!8061720))

(declare-fun m!8061724 () Bool)

(assert (=> b!7459313 m!8061724))

(declare-fun m!8061726 () Bool)

(assert (=> b!7459313 m!8061726))

(declare-fun m!8061728 () Bool)

(assert (=> b!7459313 m!8061728))

(declare-fun m!8061730 () Bool)

(assert (=> b!7459305 m!8061730))

(declare-fun m!8061732 () Bool)

(assert (=> start!723764 m!8061732))

(declare-fun m!8061734 () Bool)

(assert (=> b!7459299 m!8061734))

(declare-fun m!8061736 () Bool)

(assert (=> b!7459300 m!8061736))

(declare-fun m!8061738 () Bool)

(assert (=> b!7459300 m!8061738))

(declare-fun m!8061740 () Bool)

(assert (=> b!7459300 m!8061740))

(declare-fun m!8061742 () Bool)

(assert (=> b!7459300 m!8061742))

(declare-fun m!8061744 () Bool)

(assert (=> b!7459300 m!8061744))

(declare-fun m!8061746 () Bool)

(assert (=> b!7459300 m!8061746))

(push 1)

(assert (not b!7459306))

(assert (not b!7459310))

(assert tp_is_empty!49337)

(assert (not b!7459314))

(assert (not b!7459303))

(assert (not b!7459302))

(assert (not start!723764))

(assert (not b!7459311))

(assert (not b!7459313))

(assert (not b!7459304))

(assert (not b!7459299))

(assert (not b!7459309))

(assert (not b!7459307))

(assert (not b!7459308))

(assert (not b!7459305))

(assert (not b!7459300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7459414 () Bool)

(declare-fun e!4451852 () Bool)

(declare-fun e!4451851 () Bool)

(assert (=> b!7459414 (= e!4451852 e!4451851)))

(declare-fun res!2992145 () Bool)

(assert (=> b!7459414 (=> (not res!2992145) (not e!4451851))))

(declare-fun lt!2622312 () Bool)

(assert (=> b!7459414 (= res!2992145 (not lt!2622312))))

(declare-fun b!7459415 () Bool)

(declare-fun e!4451848 () Bool)

(assert (=> b!7459415 (= e!4451851 e!4451848)))

(declare-fun res!2992141 () Bool)

(assert (=> b!7459415 (=> res!2992141 e!4451848)))

(declare-fun call!685267 () Bool)

(assert (=> b!7459415 (= res!2992141 call!685267)))

(declare-fun b!7459416 () Bool)

(declare-fun e!4451847 () Bool)

(declare-fun nullable!8506 (Regex!19524) Bool)

(assert (=> b!7459416 (= e!4451847 (nullable!8506 lt!2622279))))

(declare-fun b!7459417 () Bool)

(declare-fun e!4451849 () Bool)

(declare-fun head!15305 (List!72240) C!39322)

(assert (=> b!7459417 (= e!4451849 (= (head!15305 s!13591) (c!1379069 lt!2622279)))))

(declare-fun b!7459418 () Bool)

(declare-fun res!2992144 () Bool)

(assert (=> b!7459418 (=> (not res!2992144) (not e!4451849))))

(declare-fun isEmpty!41127 (List!72240) Bool)

(declare-fun tail!14874 (List!72240) List!72240)

(assert (=> b!7459418 (= res!2992144 (isEmpty!41127 (tail!14874 s!13591)))))

(declare-fun b!7459419 () Bool)

(declare-fun res!2992147 () Bool)

(assert (=> b!7459419 (=> (not res!2992147) (not e!4451849))))

(assert (=> b!7459419 (= res!2992147 (not call!685267))))

(declare-fun b!7459421 () Bool)

(declare-fun res!2992142 () Bool)

(assert (=> b!7459421 (=> res!2992142 e!4451852)))

(assert (=> b!7459421 (= res!2992142 (not (is-ElementMatch!19524 lt!2622279)))))

(declare-fun e!4451853 () Bool)

(assert (=> b!7459421 (= e!4451853 e!4451852)))

(declare-fun bm!685262 () Bool)

(assert (=> bm!685262 (= call!685267 (isEmpty!41127 s!13591))))

(declare-fun b!7459422 () Bool)

(declare-fun derivativeStep!5565 (Regex!19524 C!39322) Regex!19524)

(assert (=> b!7459422 (= e!4451847 (matchR!9288 (derivativeStep!5565 lt!2622279 (head!15305 s!13591)) (tail!14874 s!13591)))))

(declare-fun b!7459423 () Bool)

(assert (=> b!7459423 (= e!4451848 (not (= (head!15305 s!13591) (c!1379069 lt!2622279))))))

(declare-fun b!7459424 () Bool)

(assert (=> b!7459424 (= e!4451853 (not lt!2622312))))

(declare-fun b!7459425 () Bool)

(declare-fun e!4451850 () Bool)

(assert (=> b!7459425 (= e!4451850 (= lt!2622312 call!685267))))

(declare-fun d!2297948 () Bool)

(assert (=> d!2297948 e!4451850))

(declare-fun c!1379078 () Bool)

(assert (=> d!2297948 (= c!1379078 (is-EmptyExpr!19524 lt!2622279))))

(assert (=> d!2297948 (= lt!2622312 e!4451847)))

(declare-fun c!1379079 () Bool)

(assert (=> d!2297948 (= c!1379079 (isEmpty!41127 s!13591))))

(assert (=> d!2297948 (validRegex!10038 lt!2622279)))

(assert (=> d!2297948 (= (matchR!9288 lt!2622279 s!13591) lt!2622312)))

(declare-fun b!7459420 () Bool)

(assert (=> b!7459420 (= e!4451850 e!4451853)))

(declare-fun c!1379077 () Bool)

(assert (=> b!7459420 (= c!1379077 (is-EmptyLang!19524 lt!2622279))))

(declare-fun b!7459426 () Bool)

(declare-fun res!2992143 () Bool)

(assert (=> b!7459426 (=> res!2992143 e!4451848)))

(assert (=> b!7459426 (= res!2992143 (not (isEmpty!41127 (tail!14874 s!13591))))))

(declare-fun b!7459427 () Bool)

(declare-fun res!2992146 () Bool)

(assert (=> b!7459427 (=> res!2992146 e!4451852)))

(assert (=> b!7459427 (= res!2992146 e!4451849)))

(declare-fun res!2992148 () Bool)

(assert (=> b!7459427 (=> (not res!2992148) (not e!4451849))))

(assert (=> b!7459427 (= res!2992148 lt!2622312)))

(assert (= (and d!2297948 c!1379079) b!7459416))

(assert (= (and d!2297948 (not c!1379079)) b!7459422))

(assert (= (and d!2297948 c!1379078) b!7459425))

(assert (= (and d!2297948 (not c!1379078)) b!7459420))

(assert (= (and b!7459420 c!1379077) b!7459424))

(assert (= (and b!7459420 (not c!1379077)) b!7459421))

(assert (= (and b!7459421 (not res!2992142)) b!7459427))

(assert (= (and b!7459427 res!2992148) b!7459419))

(assert (= (and b!7459419 res!2992147) b!7459418))

(assert (= (and b!7459418 res!2992144) b!7459417))

(assert (= (and b!7459427 (not res!2992146)) b!7459414))

(assert (= (and b!7459414 res!2992145) b!7459415))

(assert (= (and b!7459415 (not res!2992141)) b!7459426))

(assert (= (and b!7459426 (not res!2992143)) b!7459423))

(assert (= (or b!7459425 b!7459415 b!7459419) bm!685262))

(declare-fun m!8061780 () Bool)

(assert (=> d!2297948 m!8061780))

(declare-fun m!8061782 () Bool)

(assert (=> d!2297948 m!8061782))

(declare-fun m!8061784 () Bool)

(assert (=> b!7459416 m!8061784))

(declare-fun m!8061786 () Bool)

(assert (=> b!7459418 m!8061786))

(assert (=> b!7459418 m!8061786))

(declare-fun m!8061788 () Bool)

(assert (=> b!7459418 m!8061788))

(declare-fun m!8061790 () Bool)

(assert (=> b!7459422 m!8061790))

(assert (=> b!7459422 m!8061790))

(declare-fun m!8061792 () Bool)

(assert (=> b!7459422 m!8061792))

(assert (=> b!7459422 m!8061786))

(assert (=> b!7459422 m!8061792))

(assert (=> b!7459422 m!8061786))

(declare-fun m!8061794 () Bool)

(assert (=> b!7459422 m!8061794))

(assert (=> bm!685262 m!8061780))

(assert (=> b!7459417 m!8061790))

(assert (=> b!7459423 m!8061790))

(assert (=> b!7459426 m!8061786))

(assert (=> b!7459426 m!8061786))

(assert (=> b!7459426 m!8061788))

(assert (=> b!7459300 d!2297948))

(declare-fun d!2297952 () Bool)

(assert (=> d!2297952 (= (matchR!9288 lt!2622279 s!13591) (matchRSpec!4203 lt!2622279 s!13591))))

(declare-fun lt!2622315 () Unit!165883)

(declare-fun choose!57658 (Regex!19524 List!72240) Unit!165883)

(assert (=> d!2297952 (= lt!2622315 (choose!57658 lt!2622279 s!13591))))

(assert (=> d!2297952 (validRegex!10038 lt!2622279)))

(assert (=> d!2297952 (= (mainMatchTheorem!4197 lt!2622279 s!13591) lt!2622315)))

(declare-fun bs!1929284 () Bool)

(assert (= bs!1929284 d!2297952))

(assert (=> bs!1929284 m!8061740))

(assert (=> bs!1929284 m!8061746))

(declare-fun m!8061796 () Bool)

(assert (=> bs!1929284 m!8061796))

(assert (=> bs!1929284 m!8061782))

(assert (=> b!7459300 d!2297952))

(declare-fun d!2297954 () Bool)

(assert (=> d!2297954 (= (matchR!9288 lt!2622282 s!13591) (matchRSpec!4203 lt!2622282 s!13591))))

(declare-fun lt!2622316 () Unit!165883)

(assert (=> d!2297954 (= lt!2622316 (choose!57658 lt!2622282 s!13591))))

(assert (=> d!2297954 (validRegex!10038 lt!2622282)))

(assert (=> d!2297954 (= (mainMatchTheorem!4197 lt!2622282 s!13591) lt!2622316)))

(declare-fun bs!1929285 () Bool)

(assert (= bs!1929285 d!2297954))

(assert (=> bs!1929285 m!8061736))

(assert (=> bs!1929285 m!8061742))

(declare-fun m!8061798 () Bool)

(assert (=> bs!1929285 m!8061798))

(declare-fun m!8061800 () Bool)

(assert (=> bs!1929285 m!8061800))

(assert (=> b!7459300 d!2297954))

(declare-fun bs!1929287 () Bool)

(declare-fun b!7459497 () Bool)

(assert (= bs!1929287 (and b!7459497 b!7459313)))

(declare-fun lambda!461504 () Int)

(assert (=> bs!1929287 (not (= lambda!461504 lambda!461490))))

(assert (=> bs!1929287 (not (= lambda!461504 lambda!461491))))

(assert (=> b!7459497 true))

(assert (=> b!7459497 true))

(declare-fun bs!1929288 () Bool)

(declare-fun b!7459498 () Bool)

(assert (= bs!1929288 (and b!7459498 b!7459313)))

(declare-fun lambda!461505 () Int)

(assert (=> bs!1929288 (not (= lambda!461505 lambda!461490))))

(assert (=> bs!1929288 (= (and (= (regOne!39560 lt!2622279) lt!2622278) (= (regTwo!39560 lt!2622279) rTail!78)) (= lambda!461505 lambda!461491))))

(declare-fun bs!1929289 () Bool)

(assert (= bs!1929289 (and b!7459498 b!7459497)))

(assert (=> bs!1929289 (not (= lambda!461505 lambda!461504))))

(assert (=> b!7459498 true))

(assert (=> b!7459498 true))

(declare-fun b!7459496 () Bool)

(declare-fun c!1379097 () Bool)

(assert (=> b!7459496 (= c!1379097 (is-Union!19524 lt!2622279))))

(declare-fun e!4451901 () Bool)

(declare-fun e!4451900 () Bool)

(assert (=> b!7459496 (= e!4451901 e!4451900)))

(declare-fun e!4451904 () Bool)

(declare-fun call!685284 () Bool)

(assert (=> b!7459497 (= e!4451904 call!685284)))

(declare-fun e!4451902 () Bool)

(assert (=> b!7459498 (= e!4451902 call!685284)))

(declare-fun b!7459499 () Bool)

(assert (=> b!7459499 (= e!4451900 e!4451902)))

(declare-fun c!1379099 () Bool)

(assert (=> b!7459499 (= c!1379099 (is-Star!19524 lt!2622279))))

(declare-fun b!7459500 () Bool)

(declare-fun res!2992185 () Bool)

(assert (=> b!7459500 (=> res!2992185 e!4451904)))

(declare-fun call!685285 () Bool)

(assert (=> b!7459500 (= res!2992185 call!685285)))

(assert (=> b!7459500 (= e!4451902 e!4451904)))

(declare-fun bm!685279 () Bool)

(assert (=> bm!685279 (= call!685284 (Exists!4143 (ite c!1379099 lambda!461504 lambda!461505)))))

(declare-fun b!7459501 () Bool)

(declare-fun e!4451905 () Bool)

(declare-fun e!4451903 () Bool)

(assert (=> b!7459501 (= e!4451905 e!4451903)))

(declare-fun res!2992186 () Bool)

(assert (=> b!7459501 (= res!2992186 (not (is-EmptyLang!19524 lt!2622279)))))

(assert (=> b!7459501 (=> (not res!2992186) (not e!4451903))))

(declare-fun b!7459502 () Bool)

(declare-fun e!4451906 () Bool)

(assert (=> b!7459502 (= e!4451906 (matchRSpec!4203 (regTwo!39561 lt!2622279) s!13591))))

(declare-fun d!2297956 () Bool)

(declare-fun c!1379098 () Bool)

(assert (=> d!2297956 (= c!1379098 (is-EmptyExpr!19524 lt!2622279))))

(assert (=> d!2297956 (= (matchRSpec!4203 lt!2622279 s!13591) e!4451905)))

(declare-fun b!7459503 () Bool)

(assert (=> b!7459503 (= e!4451900 e!4451906)))

(declare-fun res!2992187 () Bool)

(assert (=> b!7459503 (= res!2992187 (matchRSpec!4203 (regOne!39561 lt!2622279) s!13591))))

(assert (=> b!7459503 (=> res!2992187 e!4451906)))

(declare-fun b!7459504 () Bool)

(assert (=> b!7459504 (= e!4451905 call!685285)))

(declare-fun bm!685280 () Bool)

(assert (=> bm!685280 (= call!685285 (isEmpty!41127 s!13591))))

(declare-fun b!7459505 () Bool)

(declare-fun c!1379096 () Bool)

(assert (=> b!7459505 (= c!1379096 (is-ElementMatch!19524 lt!2622279))))

(assert (=> b!7459505 (= e!4451903 e!4451901)))

(declare-fun b!7459506 () Bool)

(assert (=> b!7459506 (= e!4451901 (= s!13591 (Cons!72116 (c!1379069 lt!2622279) Nil!72116)))))

(assert (= (and d!2297956 c!1379098) b!7459504))

(assert (= (and d!2297956 (not c!1379098)) b!7459501))

(assert (= (and b!7459501 res!2992186) b!7459505))

(assert (= (and b!7459505 c!1379096) b!7459506))

(assert (= (and b!7459505 (not c!1379096)) b!7459496))

(assert (= (and b!7459496 c!1379097) b!7459503))

(assert (= (and b!7459496 (not c!1379097)) b!7459499))

(assert (= (and b!7459503 (not res!2992187)) b!7459502))

(assert (= (and b!7459499 c!1379099) b!7459500))

(assert (= (and b!7459499 (not c!1379099)) b!7459498))

(assert (= (and b!7459500 (not res!2992185)) b!7459497))

(assert (= (or b!7459497 b!7459498) bm!685279))

(assert (= (or b!7459504 b!7459500) bm!685280))

(declare-fun m!8061816 () Bool)

(assert (=> bm!685279 m!8061816))

(declare-fun m!8061818 () Bool)

(assert (=> b!7459502 m!8061818))

(declare-fun m!8061820 () Bool)

(assert (=> b!7459503 m!8061820))

(assert (=> bm!685280 m!8061780))

(assert (=> b!7459300 d!2297956))

(declare-fun b!7459507 () Bool)

(declare-fun e!4451912 () Bool)

(declare-fun e!4451911 () Bool)

(assert (=> b!7459507 (= e!4451912 e!4451911)))

(declare-fun res!2992192 () Bool)

(assert (=> b!7459507 (=> (not res!2992192) (not e!4451911))))

(declare-fun lt!2622317 () Bool)

(assert (=> b!7459507 (= res!2992192 (not lt!2622317))))

(declare-fun b!7459508 () Bool)

(declare-fun e!4451908 () Bool)

(assert (=> b!7459508 (= e!4451911 e!4451908)))

(declare-fun res!2992188 () Bool)

(assert (=> b!7459508 (=> res!2992188 e!4451908)))

(declare-fun call!685286 () Bool)

(assert (=> b!7459508 (= res!2992188 call!685286)))

(declare-fun b!7459509 () Bool)

(declare-fun e!4451907 () Bool)

(assert (=> b!7459509 (= e!4451907 (nullable!8506 lt!2622282))))

(declare-fun b!7459510 () Bool)

(declare-fun e!4451909 () Bool)

(assert (=> b!7459510 (= e!4451909 (= (head!15305 s!13591) (c!1379069 lt!2622282)))))

(declare-fun b!7459511 () Bool)

(declare-fun res!2992191 () Bool)

(assert (=> b!7459511 (=> (not res!2992191) (not e!4451909))))

(assert (=> b!7459511 (= res!2992191 (isEmpty!41127 (tail!14874 s!13591)))))

(declare-fun b!7459512 () Bool)

(declare-fun res!2992194 () Bool)

(assert (=> b!7459512 (=> (not res!2992194) (not e!4451909))))

(assert (=> b!7459512 (= res!2992194 (not call!685286))))

(declare-fun b!7459514 () Bool)

(declare-fun res!2992189 () Bool)

(assert (=> b!7459514 (=> res!2992189 e!4451912)))

(assert (=> b!7459514 (= res!2992189 (not (is-ElementMatch!19524 lt!2622282)))))

(declare-fun e!4451913 () Bool)

(assert (=> b!7459514 (= e!4451913 e!4451912)))

(declare-fun bm!685281 () Bool)

(assert (=> bm!685281 (= call!685286 (isEmpty!41127 s!13591))))

(declare-fun b!7459515 () Bool)

(assert (=> b!7459515 (= e!4451907 (matchR!9288 (derivativeStep!5565 lt!2622282 (head!15305 s!13591)) (tail!14874 s!13591)))))

(declare-fun b!7459516 () Bool)

(assert (=> b!7459516 (= e!4451908 (not (= (head!15305 s!13591) (c!1379069 lt!2622282))))))

(declare-fun b!7459517 () Bool)

(assert (=> b!7459517 (= e!4451913 (not lt!2622317))))

(declare-fun b!7459518 () Bool)

(declare-fun e!4451910 () Bool)

(assert (=> b!7459518 (= e!4451910 (= lt!2622317 call!685286))))

(declare-fun d!2297964 () Bool)

(assert (=> d!2297964 e!4451910))

(declare-fun c!1379101 () Bool)

(assert (=> d!2297964 (= c!1379101 (is-EmptyExpr!19524 lt!2622282))))

(assert (=> d!2297964 (= lt!2622317 e!4451907)))

(declare-fun c!1379102 () Bool)

(assert (=> d!2297964 (= c!1379102 (isEmpty!41127 s!13591))))

(assert (=> d!2297964 (validRegex!10038 lt!2622282)))

(assert (=> d!2297964 (= (matchR!9288 lt!2622282 s!13591) lt!2622317)))

(declare-fun b!7459513 () Bool)

(assert (=> b!7459513 (= e!4451910 e!4451913)))

(declare-fun c!1379100 () Bool)

(assert (=> b!7459513 (= c!1379100 (is-EmptyLang!19524 lt!2622282))))

(declare-fun b!7459519 () Bool)

(declare-fun res!2992190 () Bool)

(assert (=> b!7459519 (=> res!2992190 e!4451908)))

(assert (=> b!7459519 (= res!2992190 (not (isEmpty!41127 (tail!14874 s!13591))))))

(declare-fun b!7459520 () Bool)

(declare-fun res!2992193 () Bool)

(assert (=> b!7459520 (=> res!2992193 e!4451912)))

(assert (=> b!7459520 (= res!2992193 e!4451909)))

(declare-fun res!2992195 () Bool)

(assert (=> b!7459520 (=> (not res!2992195) (not e!4451909))))

(assert (=> b!7459520 (= res!2992195 lt!2622317)))

(assert (= (and d!2297964 c!1379102) b!7459509))

(assert (= (and d!2297964 (not c!1379102)) b!7459515))

(assert (= (and d!2297964 c!1379101) b!7459518))

(assert (= (and d!2297964 (not c!1379101)) b!7459513))

(assert (= (and b!7459513 c!1379100) b!7459517))

(assert (= (and b!7459513 (not c!1379100)) b!7459514))

(assert (= (and b!7459514 (not res!2992189)) b!7459520))

(assert (= (and b!7459520 res!2992195) b!7459512))

(assert (= (and b!7459512 res!2992194) b!7459511))

(assert (= (and b!7459511 res!2992191) b!7459510))

(assert (= (and b!7459520 (not res!2992193)) b!7459507))

(assert (= (and b!7459507 res!2992192) b!7459508))

(assert (= (and b!7459508 (not res!2992188)) b!7459519))

(assert (= (and b!7459519 (not res!2992190)) b!7459516))

(assert (= (or b!7459518 b!7459508 b!7459512) bm!685281))

(assert (=> d!2297964 m!8061780))

(assert (=> d!2297964 m!8061800))

(declare-fun m!8061822 () Bool)

(assert (=> b!7459509 m!8061822))

(assert (=> b!7459511 m!8061786))

(assert (=> b!7459511 m!8061786))

(assert (=> b!7459511 m!8061788))

(assert (=> b!7459515 m!8061790))

(assert (=> b!7459515 m!8061790))

(declare-fun m!8061824 () Bool)

(assert (=> b!7459515 m!8061824))

(assert (=> b!7459515 m!8061786))

(assert (=> b!7459515 m!8061824))

(assert (=> b!7459515 m!8061786))

(declare-fun m!8061826 () Bool)

(assert (=> b!7459515 m!8061826))

(assert (=> bm!685281 m!8061780))

(assert (=> b!7459510 m!8061790))

(assert (=> b!7459516 m!8061790))

(assert (=> b!7459519 m!8061786))

(assert (=> b!7459519 m!8061786))

(assert (=> b!7459519 m!8061788))

(assert (=> b!7459300 d!2297964))

(declare-fun bs!1929290 () Bool)

(declare-fun b!7459522 () Bool)

(assert (= bs!1929290 (and b!7459522 b!7459313)))

(declare-fun lambda!461506 () Int)

(assert (=> bs!1929290 (not (= lambda!461506 lambda!461490))))

(assert (=> bs!1929290 (not (= lambda!461506 lambda!461491))))

(declare-fun bs!1929291 () Bool)

(assert (= bs!1929291 (and b!7459522 b!7459497)))

(assert (=> bs!1929291 (= (and (= (reg!19853 lt!2622282) (reg!19853 lt!2622279)) (= lt!2622282 lt!2622279)) (= lambda!461506 lambda!461504))))

(declare-fun bs!1929292 () Bool)

(assert (= bs!1929292 (and b!7459522 b!7459498)))

(assert (=> bs!1929292 (not (= lambda!461506 lambda!461505))))

(assert (=> b!7459522 true))

(assert (=> b!7459522 true))

(declare-fun bs!1929293 () Bool)

(declare-fun b!7459523 () Bool)

(assert (= bs!1929293 (and b!7459523 b!7459522)))

(declare-fun lambda!461507 () Int)

(assert (=> bs!1929293 (not (= lambda!461507 lambda!461506))))

(declare-fun bs!1929294 () Bool)

(assert (= bs!1929294 (and b!7459523 b!7459313)))

(assert (=> bs!1929294 (= (and (= (regOne!39560 lt!2622282) lt!2622278) (= (regTwo!39560 lt!2622282) rTail!78)) (= lambda!461507 lambda!461491))))

(assert (=> bs!1929294 (not (= lambda!461507 lambda!461490))))

(declare-fun bs!1929295 () Bool)

(assert (= bs!1929295 (and b!7459523 b!7459498)))

(assert (=> bs!1929295 (= (and (= (regOne!39560 lt!2622282) (regOne!39560 lt!2622279)) (= (regTwo!39560 lt!2622282) (regTwo!39560 lt!2622279))) (= lambda!461507 lambda!461505))))

(declare-fun bs!1929296 () Bool)

(assert (= bs!1929296 (and b!7459523 b!7459497)))

(assert (=> bs!1929296 (not (= lambda!461507 lambda!461504))))

(assert (=> b!7459523 true))

(assert (=> b!7459523 true))

(declare-fun b!7459521 () Bool)

(declare-fun c!1379104 () Bool)

(assert (=> b!7459521 (= c!1379104 (is-Union!19524 lt!2622282))))

(declare-fun e!4451915 () Bool)

(declare-fun e!4451914 () Bool)

(assert (=> b!7459521 (= e!4451915 e!4451914)))

(declare-fun e!4451918 () Bool)

(declare-fun call!685287 () Bool)

(assert (=> b!7459522 (= e!4451918 call!685287)))

(declare-fun e!4451916 () Bool)

(assert (=> b!7459523 (= e!4451916 call!685287)))

(declare-fun b!7459524 () Bool)

(assert (=> b!7459524 (= e!4451914 e!4451916)))

(declare-fun c!1379106 () Bool)

(assert (=> b!7459524 (= c!1379106 (is-Star!19524 lt!2622282))))

(declare-fun b!7459525 () Bool)

(declare-fun res!2992196 () Bool)

(assert (=> b!7459525 (=> res!2992196 e!4451918)))

(declare-fun call!685288 () Bool)

(assert (=> b!7459525 (= res!2992196 call!685288)))

(assert (=> b!7459525 (= e!4451916 e!4451918)))

(declare-fun bm!685282 () Bool)

(assert (=> bm!685282 (= call!685287 (Exists!4143 (ite c!1379106 lambda!461506 lambda!461507)))))

(declare-fun b!7459526 () Bool)

(declare-fun e!4451919 () Bool)

(declare-fun e!4451917 () Bool)

(assert (=> b!7459526 (= e!4451919 e!4451917)))

(declare-fun res!2992197 () Bool)

(assert (=> b!7459526 (= res!2992197 (not (is-EmptyLang!19524 lt!2622282)))))

(assert (=> b!7459526 (=> (not res!2992197) (not e!4451917))))

(declare-fun b!7459527 () Bool)

(declare-fun e!4451920 () Bool)

(assert (=> b!7459527 (= e!4451920 (matchRSpec!4203 (regTwo!39561 lt!2622282) s!13591))))

(declare-fun d!2297966 () Bool)

(declare-fun c!1379105 () Bool)

(assert (=> d!2297966 (= c!1379105 (is-EmptyExpr!19524 lt!2622282))))

(assert (=> d!2297966 (= (matchRSpec!4203 lt!2622282 s!13591) e!4451919)))

(declare-fun b!7459528 () Bool)

(assert (=> b!7459528 (= e!4451914 e!4451920)))

(declare-fun res!2992198 () Bool)

(assert (=> b!7459528 (= res!2992198 (matchRSpec!4203 (regOne!39561 lt!2622282) s!13591))))

(assert (=> b!7459528 (=> res!2992198 e!4451920)))

(declare-fun b!7459529 () Bool)

(assert (=> b!7459529 (= e!4451919 call!685288)))

(declare-fun bm!685283 () Bool)

(assert (=> bm!685283 (= call!685288 (isEmpty!41127 s!13591))))

(declare-fun b!7459530 () Bool)

(declare-fun c!1379103 () Bool)

(assert (=> b!7459530 (= c!1379103 (is-ElementMatch!19524 lt!2622282))))

(assert (=> b!7459530 (= e!4451917 e!4451915)))

(declare-fun b!7459531 () Bool)

(assert (=> b!7459531 (= e!4451915 (= s!13591 (Cons!72116 (c!1379069 lt!2622282) Nil!72116)))))

(assert (= (and d!2297966 c!1379105) b!7459529))

(assert (= (and d!2297966 (not c!1379105)) b!7459526))

(assert (= (and b!7459526 res!2992197) b!7459530))

(assert (= (and b!7459530 c!1379103) b!7459531))

(assert (= (and b!7459530 (not c!1379103)) b!7459521))

(assert (= (and b!7459521 c!1379104) b!7459528))

(assert (= (and b!7459521 (not c!1379104)) b!7459524))

(assert (= (and b!7459528 (not res!2992198)) b!7459527))

(assert (= (and b!7459524 c!1379106) b!7459525))

(assert (= (and b!7459524 (not c!1379106)) b!7459523))

(assert (= (and b!7459525 (not res!2992196)) b!7459522))

(assert (= (or b!7459522 b!7459523) bm!685282))

(assert (= (or b!7459529 b!7459525) bm!685283))

(declare-fun m!8061828 () Bool)

(assert (=> bm!685282 m!8061828))

(declare-fun m!8061830 () Bool)

(assert (=> b!7459527 m!8061830))

(declare-fun m!8061832 () Bool)

(assert (=> b!7459528 m!8061832))

(assert (=> bm!685283 m!8061780))

(assert (=> b!7459300 d!2297966))

(declare-fun b!7459550 () Bool)

(declare-fun e!4451936 () Bool)

(declare-fun call!685297 () Bool)

(assert (=> b!7459550 (= e!4451936 call!685297)))

(declare-fun b!7459551 () Bool)

(declare-fun e!4451938 () Bool)

(assert (=> b!7459551 (= e!4451938 call!685297)))

(declare-fun b!7459552 () Bool)

(declare-fun e!4451939 () Bool)

(declare-fun call!685296 () Bool)

(assert (=> b!7459552 (= e!4451939 call!685296)))

(declare-fun b!7459553 () Bool)

(declare-fun e!4451937 () Bool)

(declare-fun e!4451935 () Bool)

(assert (=> b!7459553 (= e!4451937 e!4451935)))

(declare-fun c!1379111 () Bool)

(assert (=> b!7459553 (= c!1379111 (is-Star!19524 r2!5783))))

(declare-fun b!7459554 () Bool)

(assert (=> b!7459554 (= e!4451935 e!4451939)))

(declare-fun res!2992211 () Bool)

(assert (=> b!7459554 (= res!2992211 (not (nullable!8506 (reg!19853 r2!5783))))))

(assert (=> b!7459554 (=> (not res!2992211) (not e!4451939))))

(declare-fun c!1379112 () Bool)

(declare-fun bm!685290 () Bool)

(assert (=> bm!685290 (= call!685296 (validRegex!10038 (ite c!1379111 (reg!19853 r2!5783) (ite c!1379112 (regOne!39561 r2!5783) (regOne!39560 r2!5783)))))))

(declare-fun b!7459556 () Bool)

(declare-fun e!4451940 () Bool)

(assert (=> b!7459556 (= e!4451940 e!4451938)))

(declare-fun res!2992213 () Bool)

(assert (=> b!7459556 (=> (not res!2992213) (not e!4451938))))

(declare-fun call!685295 () Bool)

(assert (=> b!7459556 (= res!2992213 call!685295)))

(declare-fun bm!685291 () Bool)

(assert (=> bm!685291 (= call!685297 (validRegex!10038 (ite c!1379112 (regTwo!39561 r2!5783) (regTwo!39560 r2!5783))))))

(declare-fun b!7459557 () Bool)

(declare-fun res!2992212 () Bool)

(assert (=> b!7459557 (=> (not res!2992212) (not e!4451936))))

(assert (=> b!7459557 (= res!2992212 call!685295)))

(declare-fun e!4451941 () Bool)

(assert (=> b!7459557 (= e!4451941 e!4451936)))

(declare-fun b!7459558 () Bool)

(assert (=> b!7459558 (= e!4451935 e!4451941)))

(assert (=> b!7459558 (= c!1379112 (is-Union!19524 r2!5783))))

(declare-fun bm!685292 () Bool)

(assert (=> bm!685292 (= call!685295 call!685296)))

(declare-fun b!7459555 () Bool)

(declare-fun res!2992209 () Bool)

(assert (=> b!7459555 (=> res!2992209 e!4451940)))

(assert (=> b!7459555 (= res!2992209 (not (is-Concat!28369 r2!5783)))))

(assert (=> b!7459555 (= e!4451941 e!4451940)))

(declare-fun d!2297968 () Bool)

(declare-fun res!2992210 () Bool)

(assert (=> d!2297968 (=> res!2992210 e!4451937)))

(assert (=> d!2297968 (= res!2992210 (is-ElementMatch!19524 r2!5783))))

(assert (=> d!2297968 (= (validRegex!10038 r2!5783) e!4451937)))

(assert (= (and d!2297968 (not res!2992210)) b!7459553))

(assert (= (and b!7459553 c!1379111) b!7459554))

(assert (= (and b!7459553 (not c!1379111)) b!7459558))

(assert (= (and b!7459554 res!2992211) b!7459552))

(assert (= (and b!7459558 c!1379112) b!7459557))

(assert (= (and b!7459558 (not c!1379112)) b!7459555))

(assert (= (and b!7459557 res!2992212) b!7459550))

(assert (= (and b!7459555 (not res!2992209)) b!7459556))

(assert (= (and b!7459556 res!2992213) b!7459551))

(assert (= (or b!7459550 b!7459551) bm!685291))

(assert (= (or b!7459557 b!7459556) bm!685292))

(assert (= (or b!7459552 bm!685292) bm!685290))

(declare-fun m!8061834 () Bool)

(assert (=> b!7459554 m!8061834))

(declare-fun m!8061836 () Bool)

(assert (=> bm!685290 m!8061836))

(declare-fun m!8061838 () Bool)

(assert (=> bm!685291 m!8061838))

(assert (=> b!7459305 d!2297968))

(declare-fun b!7459559 () Bool)

(declare-fun e!4451943 () Bool)

(declare-fun call!685300 () Bool)

(assert (=> b!7459559 (= e!4451943 call!685300)))

(declare-fun b!7459560 () Bool)

(declare-fun e!4451945 () Bool)

(assert (=> b!7459560 (= e!4451945 call!685300)))

(declare-fun b!7459561 () Bool)

(declare-fun e!4451946 () Bool)

(declare-fun call!685299 () Bool)

(assert (=> b!7459561 (= e!4451946 call!685299)))

(declare-fun b!7459562 () Bool)

(declare-fun e!4451944 () Bool)

(declare-fun e!4451942 () Bool)

(assert (=> b!7459562 (= e!4451944 e!4451942)))

(declare-fun c!1379113 () Bool)

(assert (=> b!7459562 (= c!1379113 (is-Star!19524 r1!5845))))

(declare-fun b!7459563 () Bool)

(assert (=> b!7459563 (= e!4451942 e!4451946)))

(declare-fun res!2992216 () Bool)

(assert (=> b!7459563 (= res!2992216 (not (nullable!8506 (reg!19853 r1!5845))))))

(assert (=> b!7459563 (=> (not res!2992216) (not e!4451946))))

(declare-fun c!1379114 () Bool)

(declare-fun bm!685293 () Bool)

(assert (=> bm!685293 (= call!685299 (validRegex!10038 (ite c!1379113 (reg!19853 r1!5845) (ite c!1379114 (regOne!39561 r1!5845) (regOne!39560 r1!5845)))))))

(declare-fun b!7459565 () Bool)

(declare-fun e!4451947 () Bool)

(assert (=> b!7459565 (= e!4451947 e!4451945)))

(declare-fun res!2992218 () Bool)

(assert (=> b!7459565 (=> (not res!2992218) (not e!4451945))))

(declare-fun call!685298 () Bool)

(assert (=> b!7459565 (= res!2992218 call!685298)))

(declare-fun bm!685294 () Bool)

(assert (=> bm!685294 (= call!685300 (validRegex!10038 (ite c!1379114 (regTwo!39561 r1!5845) (regTwo!39560 r1!5845))))))

(declare-fun b!7459566 () Bool)

(declare-fun res!2992217 () Bool)

(assert (=> b!7459566 (=> (not res!2992217) (not e!4451943))))

(assert (=> b!7459566 (= res!2992217 call!685298)))

(declare-fun e!4451948 () Bool)

(assert (=> b!7459566 (= e!4451948 e!4451943)))

(declare-fun b!7459567 () Bool)

(assert (=> b!7459567 (= e!4451942 e!4451948)))

(assert (=> b!7459567 (= c!1379114 (is-Union!19524 r1!5845))))

(declare-fun bm!685295 () Bool)

(assert (=> bm!685295 (= call!685298 call!685299)))

(declare-fun b!7459564 () Bool)

(declare-fun res!2992214 () Bool)

(assert (=> b!7459564 (=> res!2992214 e!4451947)))

(assert (=> b!7459564 (= res!2992214 (not (is-Concat!28369 r1!5845)))))

(assert (=> b!7459564 (= e!4451948 e!4451947)))

(declare-fun d!2297970 () Bool)

(declare-fun res!2992215 () Bool)

(assert (=> d!2297970 (=> res!2992215 e!4451944)))

(assert (=> d!2297970 (= res!2992215 (is-ElementMatch!19524 r1!5845))))

(assert (=> d!2297970 (= (validRegex!10038 r1!5845) e!4451944)))

(assert (= (and d!2297970 (not res!2992215)) b!7459562))

(assert (= (and b!7459562 c!1379113) b!7459563))

(assert (= (and b!7459562 (not c!1379113)) b!7459567))

(assert (= (and b!7459563 res!2992216) b!7459561))

(assert (= (and b!7459567 c!1379114) b!7459566))

(assert (= (and b!7459567 (not c!1379114)) b!7459564))

(assert (= (and b!7459566 res!2992217) b!7459559))

(assert (= (and b!7459564 (not res!2992214)) b!7459565))

(assert (= (and b!7459565 res!2992218) b!7459560))

(assert (= (or b!7459559 b!7459560) bm!685294))

(assert (= (or b!7459566 b!7459565) bm!685295))

(assert (= (or b!7459561 bm!685295) bm!685293))

(declare-fun m!8061840 () Bool)

(assert (=> b!7459563 m!8061840))

(declare-fun m!8061842 () Bool)

(assert (=> bm!685293 m!8061842))

(declare-fun m!8061844 () Bool)

(assert (=> bm!685294 m!8061844))

(assert (=> start!723764 d!2297970))

(declare-fun d!2297972 () Bool)

(declare-fun choose!57659 (Int) Bool)

(assert (=> d!2297972 (= (Exists!4143 lambda!461490) (choose!57659 lambda!461490))))

(declare-fun bs!1929297 () Bool)

(assert (= bs!1929297 d!2297972))

(declare-fun m!8061846 () Bool)

(assert (=> bs!1929297 m!8061846))

(assert (=> b!7459313 d!2297972))

(declare-fun b!7459568 () Bool)

(declare-fun e!4451950 () Bool)

(declare-fun call!685303 () Bool)

(assert (=> b!7459568 (= e!4451950 call!685303)))

(declare-fun b!7459569 () Bool)

(declare-fun e!4451952 () Bool)

(assert (=> b!7459569 (= e!4451952 call!685303)))

(declare-fun b!7459570 () Bool)

(declare-fun e!4451953 () Bool)

(declare-fun call!685302 () Bool)

(assert (=> b!7459570 (= e!4451953 call!685302)))

(declare-fun b!7459571 () Bool)

(declare-fun e!4451951 () Bool)

(declare-fun e!4451949 () Bool)

(assert (=> b!7459571 (= e!4451951 e!4451949)))

(declare-fun c!1379115 () Bool)

(assert (=> b!7459571 (= c!1379115 (is-Star!19524 lt!2622278))))

(declare-fun b!7459572 () Bool)

(assert (=> b!7459572 (= e!4451949 e!4451953)))

(declare-fun res!2992221 () Bool)

(assert (=> b!7459572 (= res!2992221 (not (nullable!8506 (reg!19853 lt!2622278))))))

(assert (=> b!7459572 (=> (not res!2992221) (not e!4451953))))

(declare-fun bm!685296 () Bool)

(declare-fun c!1379116 () Bool)

(assert (=> bm!685296 (= call!685302 (validRegex!10038 (ite c!1379115 (reg!19853 lt!2622278) (ite c!1379116 (regOne!39561 lt!2622278) (regOne!39560 lt!2622278)))))))

(declare-fun b!7459574 () Bool)

(declare-fun e!4451954 () Bool)

(assert (=> b!7459574 (= e!4451954 e!4451952)))

(declare-fun res!2992223 () Bool)

(assert (=> b!7459574 (=> (not res!2992223) (not e!4451952))))

(declare-fun call!685301 () Bool)

(assert (=> b!7459574 (= res!2992223 call!685301)))

(declare-fun bm!685297 () Bool)

(assert (=> bm!685297 (= call!685303 (validRegex!10038 (ite c!1379116 (regTwo!39561 lt!2622278) (regTwo!39560 lt!2622278))))))

(declare-fun b!7459575 () Bool)

(declare-fun res!2992222 () Bool)

(assert (=> b!7459575 (=> (not res!2992222) (not e!4451950))))

(assert (=> b!7459575 (= res!2992222 call!685301)))

(declare-fun e!4451955 () Bool)

(assert (=> b!7459575 (= e!4451955 e!4451950)))

(declare-fun b!7459576 () Bool)

(assert (=> b!7459576 (= e!4451949 e!4451955)))

(assert (=> b!7459576 (= c!1379116 (is-Union!19524 lt!2622278))))

(declare-fun bm!685298 () Bool)

(assert (=> bm!685298 (= call!685301 call!685302)))

(declare-fun b!7459573 () Bool)

(declare-fun res!2992219 () Bool)

(assert (=> b!7459573 (=> res!2992219 e!4451954)))

(assert (=> b!7459573 (= res!2992219 (not (is-Concat!28369 lt!2622278)))))

(assert (=> b!7459573 (= e!4451955 e!4451954)))

(declare-fun d!2297974 () Bool)

(declare-fun res!2992220 () Bool)

(assert (=> d!2297974 (=> res!2992220 e!4451951)))

(assert (=> d!2297974 (= res!2992220 (is-ElementMatch!19524 lt!2622278))))

(assert (=> d!2297974 (= (validRegex!10038 lt!2622278) e!4451951)))

(assert (= (and d!2297974 (not res!2992220)) b!7459571))

(assert (= (and b!7459571 c!1379115) b!7459572))

(assert (= (and b!7459571 (not c!1379115)) b!7459576))

(assert (= (and b!7459572 res!2992221) b!7459570))

(assert (= (and b!7459576 c!1379116) b!7459575))

(assert (= (and b!7459576 (not c!1379116)) b!7459573))

(assert (= (and b!7459575 res!2992222) b!7459568))

(assert (= (and b!7459573 (not res!2992219)) b!7459574))

(assert (= (and b!7459574 res!2992223) b!7459569))

(assert (= (or b!7459568 b!7459569) bm!685297))

(assert (= (or b!7459575 b!7459574) bm!685298))

(assert (= (or b!7459570 bm!685298) bm!685296))

(declare-fun m!8061848 () Bool)

(assert (=> b!7459572 m!8061848))

(declare-fun m!8061850 () Bool)

(assert (=> bm!685296 m!8061850))

(declare-fun m!8061852 () Bool)

(assert (=> bm!685297 m!8061852))

(assert (=> b!7459313 d!2297974))

(declare-fun b!7459613 () Bool)

(declare-fun e!4451976 () Option!17081)

(assert (=> b!7459613 (= e!4451976 (Some!17080 (tuple2!68499 Nil!72116 s!13591)))))

(declare-fun b!7459614 () Bool)

(declare-fun lt!2622331 () Unit!165883)

(declare-fun lt!2622330 () Unit!165883)

(assert (=> b!7459614 (= lt!2622331 lt!2622330)))

(declare-fun ++!17178 (List!72240 List!72240) List!72240)

(assert (=> b!7459614 (= (++!17178 (++!17178 Nil!72116 (Cons!72116 (h!78564 s!13591) Nil!72116)) (t!386809 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3058 (List!72240 C!39322 List!72240 List!72240) Unit!165883)

(assert (=> b!7459614 (= lt!2622330 (lemmaMoveElementToOtherListKeepsConcatEq!3058 Nil!72116 (h!78564 s!13591) (t!386809 s!13591) s!13591))))

(declare-fun e!4451977 () Option!17081)

(assert (=> b!7459614 (= e!4451977 (findConcatSeparation!3203 lt!2622278 rTail!78 (++!17178 Nil!72116 (Cons!72116 (h!78564 s!13591) Nil!72116)) (t!386809 s!13591) s!13591))))

(declare-fun b!7459615 () Bool)

(assert (=> b!7459615 (= e!4451976 e!4451977)))

(declare-fun c!1379125 () Bool)

(assert (=> b!7459615 (= c!1379125 (is-Nil!72116 s!13591))))

(declare-fun d!2297976 () Bool)

(declare-fun e!4451979 () Bool)

(assert (=> d!2297976 e!4451979))

(declare-fun res!2992246 () Bool)

(assert (=> d!2297976 (=> res!2992246 e!4451979)))

(declare-fun e!4451980 () Bool)

(assert (=> d!2297976 (= res!2992246 e!4451980)))

(declare-fun res!2992247 () Bool)

(assert (=> d!2297976 (=> (not res!2992247) (not e!4451980))))

(declare-fun lt!2622332 () Option!17081)

(assert (=> d!2297976 (= res!2992247 (isDefined!13770 lt!2622332))))

(assert (=> d!2297976 (= lt!2622332 e!4451976)))

(declare-fun c!1379126 () Bool)

(declare-fun e!4451978 () Bool)

(assert (=> d!2297976 (= c!1379126 e!4451978)))

(declare-fun res!2992244 () Bool)

(assert (=> d!2297976 (=> (not res!2992244) (not e!4451978))))

(assert (=> d!2297976 (= res!2992244 (matchR!9288 lt!2622278 Nil!72116))))

(assert (=> d!2297976 (validRegex!10038 lt!2622278)))

(assert (=> d!2297976 (= (findConcatSeparation!3203 lt!2622278 rTail!78 Nil!72116 s!13591 s!13591) lt!2622332)))

(declare-fun b!7459616 () Bool)

(declare-fun res!2992248 () Bool)

(assert (=> b!7459616 (=> (not res!2992248) (not e!4451980))))

(declare-fun get!25166 (Option!17081) tuple2!68498)

(assert (=> b!7459616 (= res!2992248 (matchR!9288 rTail!78 (_2!37552 (get!25166 lt!2622332))))))

(declare-fun b!7459617 () Bool)

(assert (=> b!7459617 (= e!4451978 (matchR!9288 rTail!78 s!13591))))

(declare-fun b!7459618 () Bool)

(assert (=> b!7459618 (= e!4451980 (= (++!17178 (_1!37552 (get!25166 lt!2622332)) (_2!37552 (get!25166 lt!2622332))) s!13591))))

(declare-fun b!7459619 () Bool)

(assert (=> b!7459619 (= e!4451977 None!17080)))

(declare-fun b!7459620 () Bool)

(declare-fun res!2992245 () Bool)

(assert (=> b!7459620 (=> (not res!2992245) (not e!4451980))))

(assert (=> b!7459620 (= res!2992245 (matchR!9288 lt!2622278 (_1!37552 (get!25166 lt!2622332))))))

(declare-fun b!7459621 () Bool)

(assert (=> b!7459621 (= e!4451979 (not (isDefined!13770 lt!2622332)))))

(assert (= (and d!2297976 res!2992244) b!7459617))

(assert (= (and d!2297976 c!1379126) b!7459613))

(assert (= (and d!2297976 (not c!1379126)) b!7459615))

(assert (= (and b!7459615 c!1379125) b!7459619))

(assert (= (and b!7459615 (not c!1379125)) b!7459614))

(assert (= (and d!2297976 res!2992247) b!7459620))

(assert (= (and b!7459620 res!2992245) b!7459616))

(assert (= (and b!7459616 res!2992248) b!7459618))

(assert (= (and d!2297976 (not res!2992246)) b!7459621))

(declare-fun m!8061854 () Bool)

(assert (=> b!7459621 m!8061854))

(declare-fun m!8061856 () Bool)

(assert (=> b!7459617 m!8061856))

(declare-fun m!8061858 () Bool)

(assert (=> b!7459618 m!8061858))

(declare-fun m!8061860 () Bool)

(assert (=> b!7459618 m!8061860))

(assert (=> d!2297976 m!8061854))

(declare-fun m!8061862 () Bool)

(assert (=> d!2297976 m!8061862))

(assert (=> d!2297976 m!8061726))

(declare-fun m!8061864 () Bool)

(assert (=> b!7459614 m!8061864))

(assert (=> b!7459614 m!8061864))

(declare-fun m!8061866 () Bool)

(assert (=> b!7459614 m!8061866))

(declare-fun m!8061868 () Bool)

(assert (=> b!7459614 m!8061868))

(assert (=> b!7459614 m!8061864))

(declare-fun m!8061870 () Bool)

(assert (=> b!7459614 m!8061870))

(assert (=> b!7459616 m!8061858))

(declare-fun m!8061872 () Bool)

(assert (=> b!7459616 m!8061872))

(assert (=> b!7459620 m!8061858))

(declare-fun m!8061874 () Bool)

(assert (=> b!7459620 m!8061874))

(assert (=> b!7459313 d!2297976))

(declare-fun bs!1929298 () Bool)

(declare-fun d!2297978 () Bool)

(assert (= bs!1929298 (and d!2297978 b!7459523)))

(declare-fun lambda!461510 () Int)

(assert (=> bs!1929298 (not (= lambda!461510 lambda!461507))))

(declare-fun bs!1929299 () Bool)

(assert (= bs!1929299 (and d!2297978 b!7459522)))

(assert (=> bs!1929299 (not (= lambda!461510 lambda!461506))))

(declare-fun bs!1929300 () Bool)

(assert (= bs!1929300 (and d!2297978 b!7459313)))

(assert (=> bs!1929300 (not (= lambda!461510 lambda!461491))))

(assert (=> bs!1929300 (= lambda!461510 lambda!461490)))

(declare-fun bs!1929301 () Bool)

(assert (= bs!1929301 (and d!2297978 b!7459498)))

(assert (=> bs!1929301 (not (= lambda!461510 lambda!461505))))

(declare-fun bs!1929302 () Bool)

(assert (= bs!1929302 (and d!2297978 b!7459497)))

(assert (=> bs!1929302 (not (= lambda!461510 lambda!461504))))

(assert (=> d!2297978 true))

(assert (=> d!2297978 true))

(assert (=> d!2297978 true))

(assert (=> d!2297978 (= (isDefined!13770 (findConcatSeparation!3203 lt!2622278 rTail!78 Nil!72116 s!13591 s!13591)) (Exists!4143 lambda!461510))))

(declare-fun lt!2622338 () Unit!165883)

(declare-fun choose!57660 (Regex!19524 Regex!19524 List!72240) Unit!165883)

(assert (=> d!2297978 (= lt!2622338 (choose!57660 lt!2622278 rTail!78 s!13591))))

(assert (=> d!2297978 (validRegex!10038 lt!2622278)))

(assert (=> d!2297978 (= (lemmaFindConcatSeparationEquivalentToExists!2961 lt!2622278 rTail!78 s!13591) lt!2622338)))

(declare-fun bs!1929303 () Bool)

(assert (= bs!1929303 d!2297978))

(assert (=> bs!1929303 m!8061720))

(assert (=> bs!1929303 m!8061726))

(declare-fun m!8061876 () Bool)

(assert (=> bs!1929303 m!8061876))

(declare-fun m!8061878 () Bool)

(assert (=> bs!1929303 m!8061878))

(assert (=> bs!1929303 m!8061720))

(assert (=> bs!1929303 m!8061724))

(assert (=> b!7459313 d!2297978))

(declare-fun d!2297980 () Bool)

(assert (=> d!2297980 (= (Exists!4143 lambda!461491) (choose!57659 lambda!461491))))

(declare-fun bs!1929304 () Bool)

(assert (= bs!1929304 d!2297980))

(declare-fun m!8061882 () Bool)

(assert (=> bs!1929304 m!8061882))

(assert (=> b!7459313 d!2297980))

(declare-fun bs!1929307 () Bool)

(declare-fun d!2297982 () Bool)

(assert (= bs!1929307 (and d!2297982 b!7459522)))

(declare-fun lambda!461515 () Int)

(assert (=> bs!1929307 (not (= lambda!461515 lambda!461506))))

(declare-fun bs!1929308 () Bool)

(assert (= bs!1929308 (and d!2297982 b!7459313)))

(assert (=> bs!1929308 (not (= lambda!461515 lambda!461491))))

(assert (=> bs!1929308 (= lambda!461515 lambda!461490)))

(declare-fun bs!1929309 () Bool)

(assert (= bs!1929309 (and d!2297982 b!7459498)))

(assert (=> bs!1929309 (not (= lambda!461515 lambda!461505))))

(declare-fun bs!1929310 () Bool)

(assert (= bs!1929310 (and d!2297982 b!7459497)))

(assert (=> bs!1929310 (not (= lambda!461515 lambda!461504))))

(declare-fun bs!1929311 () Bool)

(assert (= bs!1929311 (and d!2297982 d!2297978)))

(assert (=> bs!1929311 (= lambda!461515 lambda!461510)))

(declare-fun bs!1929312 () Bool)

(assert (= bs!1929312 (and d!2297982 b!7459523)))

(assert (=> bs!1929312 (not (= lambda!461515 lambda!461507))))

(assert (=> d!2297982 true))

(assert (=> d!2297982 true))

(assert (=> d!2297982 true))

(declare-fun lambda!461516 () Int)

(assert (=> bs!1929307 (not (= lambda!461516 lambda!461506))))

(assert (=> bs!1929308 (= lambda!461516 lambda!461491)))

(assert (=> bs!1929308 (not (= lambda!461516 lambda!461490))))

(assert (=> bs!1929310 (not (= lambda!461516 lambda!461504))))

(assert (=> bs!1929311 (not (= lambda!461516 lambda!461510))))

(assert (=> bs!1929312 (= (and (= lt!2622278 (regOne!39560 lt!2622282)) (= rTail!78 (regTwo!39560 lt!2622282))) (= lambda!461516 lambda!461507))))

(assert (=> bs!1929309 (= (and (= lt!2622278 (regOne!39560 lt!2622279)) (= rTail!78 (regTwo!39560 lt!2622279))) (= lambda!461516 lambda!461505))))

(declare-fun bs!1929313 () Bool)

(assert (= bs!1929313 d!2297982))

(assert (=> bs!1929313 (not (= lambda!461516 lambda!461515))))

(assert (=> d!2297982 true))

(assert (=> d!2297982 true))

(assert (=> d!2297982 true))

(assert (=> d!2297982 (= (Exists!4143 lambda!461515) (Exists!4143 lambda!461516))))

(declare-fun lt!2622341 () Unit!165883)

(declare-fun choose!57661 (Regex!19524 Regex!19524 List!72240) Unit!165883)

(assert (=> d!2297982 (= lt!2622341 (choose!57661 lt!2622278 rTail!78 s!13591))))

(assert (=> d!2297982 (validRegex!10038 lt!2622278)))

(assert (=> d!2297982 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2477 lt!2622278 rTail!78 s!13591) lt!2622341)))

(declare-fun m!8061908 () Bool)

(assert (=> bs!1929313 m!8061908))

(declare-fun m!8061910 () Bool)

(assert (=> bs!1929313 m!8061910))

(declare-fun m!8061912 () Bool)

(assert (=> bs!1929313 m!8061912))

(assert (=> bs!1929313 m!8061726))

(assert (=> b!7459313 d!2297982))

(declare-fun d!2297990 () Bool)

(declare-fun isEmpty!41128 (Option!17081) Bool)

(assert (=> d!2297990 (= (isDefined!13770 (findConcatSeparation!3203 lt!2622278 rTail!78 Nil!72116 s!13591 s!13591)) (not (isEmpty!41128 (findConcatSeparation!3203 lt!2622278 rTail!78 Nil!72116 s!13591 s!13591))))))

(declare-fun bs!1929314 () Bool)

(assert (= bs!1929314 d!2297990))

(assert (=> bs!1929314 m!8061720))

(declare-fun m!8061914 () Bool)

(assert (=> bs!1929314 m!8061914))

(assert (=> b!7459313 d!2297990))

(declare-fun b!7459643 () Bool)

(declare-fun e!4451993 () Bool)

(declare-fun call!685306 () Bool)

(assert (=> b!7459643 (= e!4451993 call!685306)))

(declare-fun b!7459644 () Bool)

(declare-fun e!4451995 () Bool)

(assert (=> b!7459644 (= e!4451995 call!685306)))

(declare-fun b!7459645 () Bool)

(declare-fun e!4451996 () Bool)

(declare-fun call!685305 () Bool)

(assert (=> b!7459645 (= e!4451996 call!685305)))

(declare-fun b!7459646 () Bool)

(declare-fun e!4451994 () Bool)

(declare-fun e!4451992 () Bool)

(assert (=> b!7459646 (= e!4451994 e!4451992)))

(declare-fun c!1379129 () Bool)

(assert (=> b!7459646 (= c!1379129 (is-Star!19524 rTail!78))))

(declare-fun b!7459647 () Bool)

(assert (=> b!7459647 (= e!4451992 e!4451996)))

(declare-fun res!2992268 () Bool)

(assert (=> b!7459647 (= res!2992268 (not (nullable!8506 (reg!19853 rTail!78))))))

(assert (=> b!7459647 (=> (not res!2992268) (not e!4451996))))

(declare-fun bm!685299 () Bool)

(declare-fun c!1379130 () Bool)

(assert (=> bm!685299 (= call!685305 (validRegex!10038 (ite c!1379129 (reg!19853 rTail!78) (ite c!1379130 (regOne!39561 rTail!78) (regOne!39560 rTail!78)))))))

(declare-fun b!7459649 () Bool)

(declare-fun e!4451997 () Bool)

(assert (=> b!7459649 (= e!4451997 e!4451995)))

(declare-fun res!2992270 () Bool)

(assert (=> b!7459649 (=> (not res!2992270) (not e!4451995))))

(declare-fun call!685304 () Bool)

(assert (=> b!7459649 (= res!2992270 call!685304)))

(declare-fun bm!685300 () Bool)

(assert (=> bm!685300 (= call!685306 (validRegex!10038 (ite c!1379130 (regTwo!39561 rTail!78) (regTwo!39560 rTail!78))))))

(declare-fun b!7459650 () Bool)

(declare-fun res!2992269 () Bool)

(assert (=> b!7459650 (=> (not res!2992269) (not e!4451993))))

(assert (=> b!7459650 (= res!2992269 call!685304)))

(declare-fun e!4451998 () Bool)

(assert (=> b!7459650 (= e!4451998 e!4451993)))

(declare-fun b!7459651 () Bool)

(assert (=> b!7459651 (= e!4451992 e!4451998)))

(assert (=> b!7459651 (= c!1379130 (is-Union!19524 rTail!78))))

(declare-fun bm!685301 () Bool)

(assert (=> bm!685301 (= call!685304 call!685305)))

(declare-fun b!7459648 () Bool)

(declare-fun res!2992266 () Bool)

(assert (=> b!7459648 (=> res!2992266 e!4451997)))

(assert (=> b!7459648 (= res!2992266 (not (is-Concat!28369 rTail!78)))))

(assert (=> b!7459648 (= e!4451998 e!4451997)))

(declare-fun d!2297992 () Bool)

(declare-fun res!2992267 () Bool)

(assert (=> d!2297992 (=> res!2992267 e!4451994)))

(assert (=> d!2297992 (= res!2992267 (is-ElementMatch!19524 rTail!78))))

(assert (=> d!2297992 (= (validRegex!10038 rTail!78) e!4451994)))

(assert (= (and d!2297992 (not res!2992267)) b!7459646))

(assert (= (and b!7459646 c!1379129) b!7459647))

(assert (= (and b!7459646 (not c!1379129)) b!7459651))

(assert (= (and b!7459647 res!2992268) b!7459645))

(assert (= (and b!7459651 c!1379130) b!7459650))

(assert (= (and b!7459651 (not c!1379130)) b!7459648))

(assert (= (and b!7459650 res!2992269) b!7459643))

(assert (= (and b!7459648 (not res!2992266)) b!7459649))

(assert (= (and b!7459649 res!2992270) b!7459644))

(assert (= (or b!7459643 b!7459644) bm!685300))

(assert (= (or b!7459650 b!7459649) bm!685301))

(assert (= (or b!7459645 bm!685301) bm!685299))

(declare-fun m!8061916 () Bool)

(assert (=> b!7459647 m!8061916))

(declare-fun m!8061918 () Bool)

(assert (=> bm!685299 m!8061918))

(declare-fun m!8061920 () Bool)

(assert (=> bm!685300 m!8061920))

(assert (=> b!7459299 d!2297992))

(declare-fun e!4452001 () Bool)

(assert (=> b!7459306 (= tp!2161698 e!4452001)))

(declare-fun b!7459663 () Bool)

(declare-fun tp!2161769 () Bool)

(declare-fun tp!2161767 () Bool)

(assert (=> b!7459663 (= e!4452001 (and tp!2161769 tp!2161767))))

(declare-fun b!7459662 () Bool)

(assert (=> b!7459662 (= e!4452001 tp_is_empty!49337)))

(declare-fun b!7459664 () Bool)

(declare-fun tp!2161766 () Bool)

(assert (=> b!7459664 (= e!4452001 tp!2161766)))

(declare-fun b!7459665 () Bool)

(declare-fun tp!2161770 () Bool)

(declare-fun tp!2161768 () Bool)

(assert (=> b!7459665 (= e!4452001 (and tp!2161770 tp!2161768))))

(assert (= (and b!7459306 (is-ElementMatch!19524 (reg!19853 r1!5845))) b!7459662))

(assert (= (and b!7459306 (is-Concat!28369 (reg!19853 r1!5845))) b!7459663))

(assert (= (and b!7459306 (is-Star!19524 (reg!19853 r1!5845))) b!7459664))

(assert (= (and b!7459306 (is-Union!19524 (reg!19853 r1!5845))) b!7459665))

(declare-fun e!4452002 () Bool)

(assert (=> b!7459311 (= tp!2161703 e!4452002)))

(declare-fun b!7459667 () Bool)

(declare-fun tp!2161774 () Bool)

(declare-fun tp!2161772 () Bool)

(assert (=> b!7459667 (= e!4452002 (and tp!2161774 tp!2161772))))

(declare-fun b!7459666 () Bool)

(assert (=> b!7459666 (= e!4452002 tp_is_empty!49337)))

(declare-fun b!7459668 () Bool)

(declare-fun tp!2161771 () Bool)

(assert (=> b!7459668 (= e!4452002 tp!2161771)))

(declare-fun b!7459669 () Bool)

(declare-fun tp!2161775 () Bool)

(declare-fun tp!2161773 () Bool)

(assert (=> b!7459669 (= e!4452002 (and tp!2161775 tp!2161773))))

(assert (= (and b!7459311 (is-ElementMatch!19524 (regOne!39561 rTail!78))) b!7459666))

(assert (= (and b!7459311 (is-Concat!28369 (regOne!39561 rTail!78))) b!7459667))

(assert (= (and b!7459311 (is-Star!19524 (regOne!39561 rTail!78))) b!7459668))

(assert (= (and b!7459311 (is-Union!19524 (regOne!39561 rTail!78))) b!7459669))

(declare-fun e!4452003 () Bool)

(assert (=> b!7459311 (= tp!2161699 e!4452003)))

(declare-fun b!7459671 () Bool)

(declare-fun tp!2161779 () Bool)

(declare-fun tp!2161777 () Bool)

(assert (=> b!7459671 (= e!4452003 (and tp!2161779 tp!2161777))))

(declare-fun b!7459670 () Bool)

(assert (=> b!7459670 (= e!4452003 tp_is_empty!49337)))

(declare-fun b!7459672 () Bool)

(declare-fun tp!2161776 () Bool)

(assert (=> b!7459672 (= e!4452003 tp!2161776)))

(declare-fun b!7459673 () Bool)

(declare-fun tp!2161780 () Bool)

(declare-fun tp!2161778 () Bool)

(assert (=> b!7459673 (= e!4452003 (and tp!2161780 tp!2161778))))

(assert (= (and b!7459311 (is-ElementMatch!19524 (regTwo!39561 rTail!78))) b!7459670))

(assert (= (and b!7459311 (is-Concat!28369 (regTwo!39561 rTail!78))) b!7459671))

(assert (= (and b!7459311 (is-Star!19524 (regTwo!39561 rTail!78))) b!7459672))

(assert (= (and b!7459311 (is-Union!19524 (regTwo!39561 rTail!78))) b!7459673))

(declare-fun e!4452004 () Bool)

(assert (=> b!7459302 (= tp!2161694 e!4452004)))

(declare-fun b!7459675 () Bool)

(declare-fun tp!2161784 () Bool)

(declare-fun tp!2161782 () Bool)

(assert (=> b!7459675 (= e!4452004 (and tp!2161784 tp!2161782))))

(declare-fun b!7459674 () Bool)

(assert (=> b!7459674 (= e!4452004 tp_is_empty!49337)))

(declare-fun b!7459676 () Bool)

(declare-fun tp!2161781 () Bool)

(assert (=> b!7459676 (= e!4452004 tp!2161781)))

(declare-fun b!7459677 () Bool)

(declare-fun tp!2161785 () Bool)

(declare-fun tp!2161783 () Bool)

(assert (=> b!7459677 (= e!4452004 (and tp!2161785 tp!2161783))))

(assert (= (and b!7459302 (is-ElementMatch!19524 (regOne!39561 r2!5783))) b!7459674))

(assert (= (and b!7459302 (is-Concat!28369 (regOne!39561 r2!5783))) b!7459675))

(assert (= (and b!7459302 (is-Star!19524 (regOne!39561 r2!5783))) b!7459676))

(assert (= (and b!7459302 (is-Union!19524 (regOne!39561 r2!5783))) b!7459677))

(declare-fun e!4452005 () Bool)

(assert (=> b!7459302 (= tp!2161701 e!4452005)))

(declare-fun b!7459679 () Bool)

(declare-fun tp!2161789 () Bool)

(declare-fun tp!2161787 () Bool)

(assert (=> b!7459679 (= e!4452005 (and tp!2161789 tp!2161787))))

(declare-fun b!7459678 () Bool)

(assert (=> b!7459678 (= e!4452005 tp_is_empty!49337)))

(declare-fun b!7459680 () Bool)

(declare-fun tp!2161786 () Bool)

(assert (=> b!7459680 (= e!4452005 tp!2161786)))

(declare-fun b!7459681 () Bool)

(declare-fun tp!2161790 () Bool)

(declare-fun tp!2161788 () Bool)

(assert (=> b!7459681 (= e!4452005 (and tp!2161790 tp!2161788))))

(assert (= (and b!7459302 (is-ElementMatch!19524 (regTwo!39561 r2!5783))) b!7459678))

(assert (= (and b!7459302 (is-Concat!28369 (regTwo!39561 r2!5783))) b!7459679))

(assert (= (and b!7459302 (is-Star!19524 (regTwo!39561 r2!5783))) b!7459680))

(assert (= (and b!7459302 (is-Union!19524 (regTwo!39561 r2!5783))) b!7459681))

(declare-fun e!4452006 () Bool)

(assert (=> b!7459307 (= tp!2161692 e!4452006)))

(declare-fun b!7459683 () Bool)

(declare-fun tp!2161794 () Bool)

(declare-fun tp!2161792 () Bool)

(assert (=> b!7459683 (= e!4452006 (and tp!2161794 tp!2161792))))

(declare-fun b!7459682 () Bool)

(assert (=> b!7459682 (= e!4452006 tp_is_empty!49337)))

(declare-fun b!7459684 () Bool)

(declare-fun tp!2161791 () Bool)

(assert (=> b!7459684 (= e!4452006 tp!2161791)))

(declare-fun b!7459685 () Bool)

(declare-fun tp!2161795 () Bool)

(declare-fun tp!2161793 () Bool)

(assert (=> b!7459685 (= e!4452006 (and tp!2161795 tp!2161793))))

(assert (= (and b!7459307 (is-ElementMatch!19524 (reg!19853 rTail!78))) b!7459682))

(assert (= (and b!7459307 (is-Concat!28369 (reg!19853 rTail!78))) b!7459683))

(assert (= (and b!7459307 (is-Star!19524 (reg!19853 rTail!78))) b!7459684))

(assert (= (and b!7459307 (is-Union!19524 (reg!19853 rTail!78))) b!7459685))

(declare-fun e!4452007 () Bool)

(assert (=> b!7459308 (= tp!2161704 e!4452007)))

(declare-fun b!7459687 () Bool)

(declare-fun tp!2161799 () Bool)

(declare-fun tp!2161797 () Bool)

(assert (=> b!7459687 (= e!4452007 (and tp!2161799 tp!2161797))))

(declare-fun b!7459686 () Bool)

(assert (=> b!7459686 (= e!4452007 tp_is_empty!49337)))

(declare-fun b!7459688 () Bool)

(declare-fun tp!2161796 () Bool)

(assert (=> b!7459688 (= e!4452007 tp!2161796)))

(declare-fun b!7459689 () Bool)

(declare-fun tp!2161800 () Bool)

(declare-fun tp!2161798 () Bool)

(assert (=> b!7459689 (= e!4452007 (and tp!2161800 tp!2161798))))

(assert (= (and b!7459308 (is-ElementMatch!19524 (reg!19853 r2!5783))) b!7459686))

(assert (= (and b!7459308 (is-Concat!28369 (reg!19853 r2!5783))) b!7459687))

(assert (= (and b!7459308 (is-Star!19524 (reg!19853 r2!5783))) b!7459688))

(assert (= (and b!7459308 (is-Union!19524 (reg!19853 r2!5783))) b!7459689))

(declare-fun e!4452008 () Bool)

(assert (=> b!7459314 (= tp!2161693 e!4452008)))

(declare-fun b!7459691 () Bool)

(declare-fun tp!2161804 () Bool)

(declare-fun tp!2161802 () Bool)

(assert (=> b!7459691 (= e!4452008 (and tp!2161804 tp!2161802))))

(declare-fun b!7459690 () Bool)

(assert (=> b!7459690 (= e!4452008 tp_is_empty!49337)))

(declare-fun b!7459692 () Bool)

(declare-fun tp!2161801 () Bool)

(assert (=> b!7459692 (= e!4452008 tp!2161801)))

(declare-fun b!7459693 () Bool)

(declare-fun tp!2161805 () Bool)

(declare-fun tp!2161803 () Bool)

(assert (=> b!7459693 (= e!4452008 (and tp!2161805 tp!2161803))))

(assert (= (and b!7459314 (is-ElementMatch!19524 (regOne!39560 r2!5783))) b!7459690))

(assert (= (and b!7459314 (is-Concat!28369 (regOne!39560 r2!5783))) b!7459691))

(assert (= (and b!7459314 (is-Star!19524 (regOne!39560 r2!5783))) b!7459692))

(assert (= (and b!7459314 (is-Union!19524 (regOne!39560 r2!5783))) b!7459693))

(declare-fun e!4452009 () Bool)

(assert (=> b!7459314 (= tp!2161700 e!4452009)))

(declare-fun b!7459695 () Bool)

(declare-fun tp!2161809 () Bool)

(declare-fun tp!2161807 () Bool)

(assert (=> b!7459695 (= e!4452009 (and tp!2161809 tp!2161807))))

(declare-fun b!7459694 () Bool)

(assert (=> b!7459694 (= e!4452009 tp_is_empty!49337)))

(declare-fun b!7459696 () Bool)

(declare-fun tp!2161806 () Bool)

(assert (=> b!7459696 (= e!4452009 tp!2161806)))

(declare-fun b!7459697 () Bool)

(declare-fun tp!2161810 () Bool)

(declare-fun tp!2161808 () Bool)

(assert (=> b!7459697 (= e!4452009 (and tp!2161810 tp!2161808))))

(assert (= (and b!7459314 (is-ElementMatch!19524 (regTwo!39560 r2!5783))) b!7459694))

(assert (= (and b!7459314 (is-Concat!28369 (regTwo!39560 r2!5783))) b!7459695))

(assert (= (and b!7459314 (is-Star!19524 (regTwo!39560 r2!5783))) b!7459696))

(assert (= (and b!7459314 (is-Union!19524 (regTwo!39560 r2!5783))) b!7459697))

(declare-fun e!4452010 () Bool)

(assert (=> b!7459303 (= tp!2161696 e!4452010)))

(declare-fun b!7459699 () Bool)

(declare-fun tp!2161814 () Bool)

(declare-fun tp!2161812 () Bool)

(assert (=> b!7459699 (= e!4452010 (and tp!2161814 tp!2161812))))

(declare-fun b!7459698 () Bool)

(assert (=> b!7459698 (= e!4452010 tp_is_empty!49337)))

(declare-fun b!7459700 () Bool)

(declare-fun tp!2161811 () Bool)

(assert (=> b!7459700 (= e!4452010 tp!2161811)))

(declare-fun b!7459701 () Bool)

(declare-fun tp!2161815 () Bool)

(declare-fun tp!2161813 () Bool)

(assert (=> b!7459701 (= e!4452010 (and tp!2161815 tp!2161813))))

(assert (= (and b!7459303 (is-ElementMatch!19524 (regOne!39561 r1!5845))) b!7459698))

(assert (= (and b!7459303 (is-Concat!28369 (regOne!39561 r1!5845))) b!7459699))

(assert (= (and b!7459303 (is-Star!19524 (regOne!39561 r1!5845))) b!7459700))

(assert (= (and b!7459303 (is-Union!19524 (regOne!39561 r1!5845))) b!7459701))

(declare-fun e!4452011 () Bool)

(assert (=> b!7459303 (= tp!2161707 e!4452011)))

(declare-fun b!7459703 () Bool)

(declare-fun tp!2161819 () Bool)

(declare-fun tp!2161817 () Bool)

(assert (=> b!7459703 (= e!4452011 (and tp!2161819 tp!2161817))))

(declare-fun b!7459702 () Bool)

(assert (=> b!7459702 (= e!4452011 tp_is_empty!49337)))

(declare-fun b!7459704 () Bool)

(declare-fun tp!2161816 () Bool)

(assert (=> b!7459704 (= e!4452011 tp!2161816)))

(declare-fun b!7459705 () Bool)

(declare-fun tp!2161820 () Bool)

(declare-fun tp!2161818 () Bool)

(assert (=> b!7459705 (= e!4452011 (and tp!2161820 tp!2161818))))

(assert (= (and b!7459303 (is-ElementMatch!19524 (regTwo!39561 r1!5845))) b!7459702))

(assert (= (and b!7459303 (is-Concat!28369 (regTwo!39561 r1!5845))) b!7459703))

(assert (= (and b!7459303 (is-Star!19524 (regTwo!39561 r1!5845))) b!7459704))

(assert (= (and b!7459303 (is-Union!19524 (regTwo!39561 r1!5845))) b!7459705))

(declare-fun e!4452012 () Bool)

(assert (=> b!7459304 (= tp!2161697 e!4452012)))

(declare-fun b!7459707 () Bool)

(declare-fun tp!2161824 () Bool)

(declare-fun tp!2161822 () Bool)

(assert (=> b!7459707 (= e!4452012 (and tp!2161824 tp!2161822))))

(declare-fun b!7459706 () Bool)

(assert (=> b!7459706 (= e!4452012 tp_is_empty!49337)))

(declare-fun b!7459708 () Bool)

(declare-fun tp!2161821 () Bool)

(assert (=> b!7459708 (= e!4452012 tp!2161821)))

(declare-fun b!7459709 () Bool)

(declare-fun tp!2161825 () Bool)

(declare-fun tp!2161823 () Bool)

(assert (=> b!7459709 (= e!4452012 (and tp!2161825 tp!2161823))))

(assert (= (and b!7459304 (is-ElementMatch!19524 (regOne!39560 rTail!78))) b!7459706))

(assert (= (and b!7459304 (is-Concat!28369 (regOne!39560 rTail!78))) b!7459707))

(assert (= (and b!7459304 (is-Star!19524 (regOne!39560 rTail!78))) b!7459708))

(assert (= (and b!7459304 (is-Union!19524 (regOne!39560 rTail!78))) b!7459709))

(declare-fun e!4452013 () Bool)

(assert (=> b!7459304 (= tp!2161705 e!4452013)))

(declare-fun b!7459711 () Bool)

(declare-fun tp!2161829 () Bool)

(declare-fun tp!2161827 () Bool)

(assert (=> b!7459711 (= e!4452013 (and tp!2161829 tp!2161827))))

(declare-fun b!7459710 () Bool)

(assert (=> b!7459710 (= e!4452013 tp_is_empty!49337)))

(declare-fun b!7459712 () Bool)

(declare-fun tp!2161826 () Bool)

(assert (=> b!7459712 (= e!4452013 tp!2161826)))

(declare-fun b!7459713 () Bool)

(declare-fun tp!2161830 () Bool)

(declare-fun tp!2161828 () Bool)

(assert (=> b!7459713 (= e!4452013 (and tp!2161830 tp!2161828))))

(assert (= (and b!7459304 (is-ElementMatch!19524 (regTwo!39560 rTail!78))) b!7459710))

(assert (= (and b!7459304 (is-Concat!28369 (regTwo!39560 rTail!78))) b!7459711))

(assert (= (and b!7459304 (is-Star!19524 (regTwo!39560 rTail!78))) b!7459712))

(assert (= (and b!7459304 (is-Union!19524 (regTwo!39560 rTail!78))) b!7459713))

(declare-fun e!4452014 () Bool)

(assert (=> b!7459309 (= tp!2161695 e!4452014)))

(declare-fun b!7459715 () Bool)

(declare-fun tp!2161834 () Bool)

(declare-fun tp!2161832 () Bool)

(assert (=> b!7459715 (= e!4452014 (and tp!2161834 tp!2161832))))

(declare-fun b!7459714 () Bool)

(assert (=> b!7459714 (= e!4452014 tp_is_empty!49337)))

(declare-fun b!7459716 () Bool)

(declare-fun tp!2161831 () Bool)

(assert (=> b!7459716 (= e!4452014 tp!2161831)))

(declare-fun b!7459717 () Bool)

(declare-fun tp!2161835 () Bool)

(declare-fun tp!2161833 () Bool)

(assert (=> b!7459717 (= e!4452014 (and tp!2161835 tp!2161833))))

(assert (= (and b!7459309 (is-ElementMatch!19524 (regOne!39560 r1!5845))) b!7459714))

(assert (= (and b!7459309 (is-Concat!28369 (regOne!39560 r1!5845))) b!7459715))

(assert (= (and b!7459309 (is-Star!19524 (regOne!39560 r1!5845))) b!7459716))

(assert (= (and b!7459309 (is-Union!19524 (regOne!39560 r1!5845))) b!7459717))

(declare-fun e!4452015 () Bool)

(assert (=> b!7459309 (= tp!2161706 e!4452015)))

(declare-fun b!7459719 () Bool)

(declare-fun tp!2161839 () Bool)

(declare-fun tp!2161837 () Bool)

(assert (=> b!7459719 (= e!4452015 (and tp!2161839 tp!2161837))))

(declare-fun b!7459718 () Bool)

(assert (=> b!7459718 (= e!4452015 tp_is_empty!49337)))

(declare-fun b!7459720 () Bool)

(declare-fun tp!2161836 () Bool)

(assert (=> b!7459720 (= e!4452015 tp!2161836)))

(declare-fun b!7459721 () Bool)

(declare-fun tp!2161840 () Bool)

(declare-fun tp!2161838 () Bool)

(assert (=> b!7459721 (= e!4452015 (and tp!2161840 tp!2161838))))

(assert (= (and b!7459309 (is-ElementMatch!19524 (regTwo!39560 r1!5845))) b!7459718))

(assert (= (and b!7459309 (is-Concat!28369 (regTwo!39560 r1!5845))) b!7459719))

(assert (= (and b!7459309 (is-Star!19524 (regTwo!39560 r1!5845))) b!7459720))

(assert (= (and b!7459309 (is-Union!19524 (regTwo!39560 r1!5845))) b!7459721))

(declare-fun b!7459726 () Bool)

(declare-fun e!4452018 () Bool)

(declare-fun tp!2161843 () Bool)

(assert (=> b!7459726 (= e!4452018 (and tp_is_empty!49337 tp!2161843))))

(assert (=> b!7459310 (= tp!2161702 e!4452018)))

(assert (= (and b!7459310 (is-Cons!72116 (t!386809 s!13591))) b!7459726))

(push 1)

(assert (not b!7459701))

(assert (not b!7459503))

(assert (not bm!685293))

(assert (not b!7459688))

(assert (not b!7459675))

(assert (not b!7459672))

(assert (not bm!685300))

(assert (not b!7459716))

(assert (not b!7459704))

(assert (not b!7459681))

(assert (not b!7459621))

(assert (not bm!685283))

(assert (not bm!685281))

(assert (not b!7459620))

(assert (not bm!685296))

(assert tp_is_empty!49337)

(assert (not b!7459528))

(assert (not b!7459617))

(assert (not b!7459519))

(assert (not b!7459687))

(assert (not b!7459705))

(assert (not b!7459422))

(assert (not b!7459721))

(assert (not b!7459677))

(assert (not b!7459663))

(assert (not b!7459673))

(assert (not b!7459719))

(assert (not b!7459647))

(assert (not b!7459708))

(assert (not bm!685299))

(assert (not b!7459709))

(assert (not b!7459502))

(assert (not b!7459707))

(assert (not b!7459667))

(assert (not b!7459665))

(assert (not b!7459712))

(assert (not b!7459692))

(assert (not d!2297980))

(assert (not b!7459614))

(assert (not b!7459680))

(assert (not b!7459669))

(assert (not b!7459679))

(assert (not b!7459689))

(assert (not bm!685291))

(assert (not bm!685280))

(assert (not b!7459515))

(assert (not b!7459554))

(assert (not bm!685262))

(assert (not b!7459510))

(assert (not b!7459516))

(assert (not b!7459700))

(assert (not d!2297978))

(assert (not b!7459416))

(assert (not b!7459676))

(assert (not bm!685297))

(assert (not b!7459703))

(assert (not b!7459426))

(assert (not d!2297976))

(assert (not b!7459695))

(assert (not bm!685279))

(assert (not b!7459683))

(assert (not b!7459509))

(assert (not bm!685290))

(assert (not d!2297990))

(assert (not b!7459671))

(assert (not bm!685294))

(assert (not b!7459717))

(assert (not d!2297952))

(assert (not b!7459713))

(assert (not b!7459664))

(assert (not b!7459417))

(assert (not b!7459715))

(assert (not b!7459697))

(assert (not d!2297948))

(assert (not b!7459691))

(assert (not b!7459696))

(assert (not d!2297982))

(assert (not d!2297954))

(assert (not b!7459616))

(assert (not b!7459726))

(assert (not d!2297964))

(assert (not b!7459684))

(assert (not b!7459418))

(assert (not b!7459527))

(assert (not b!7459699))

(assert (not b!7459572))

(assert (not d!2297972))

(assert (not b!7459668))

(assert (not b!7459511))

(assert (not b!7459563))

(assert (not b!7459711))

(assert (not b!7459423))

(assert (not bm!685282))

(assert (not b!7459693))

(assert (not b!7459618))

(assert (not b!7459720))

(assert (not b!7459685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

