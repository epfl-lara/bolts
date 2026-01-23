; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!664484 () Bool)

(assert start!664484)

(declare-fun b!6895363 () Bool)

(assert (=> b!6895363 true))

(assert (=> b!6895363 true))

(assert (=> b!6895363 true))

(declare-fun lambda!390944 () Int)

(declare-fun lambda!390943 () Int)

(assert (=> b!6895363 (not (= lambda!390944 lambda!390943))))

(assert (=> b!6895363 true))

(assert (=> b!6895363 true))

(assert (=> b!6895363 true))

(declare-fun bs!1840716 () Bool)

(declare-fun b!6895355 () Bool)

(assert (= bs!1840716 (and b!6895355 b!6895363)))

(declare-datatypes ((C!33938 0))(
  ( (C!33939 (val!26671 Int)) )
))
(declare-datatypes ((Regex!16834 0))(
  ( (ElementMatch!16834 (c!1281664 C!33938)) (Concat!25679 (regOne!34180 Regex!16834) (regTwo!34180 Regex!16834)) (EmptyExpr!16834) (Star!16834 (reg!17163 Regex!16834)) (EmptyLang!16834) (Union!16834 (regOne!34181 Regex!16834) (regTwo!34181 Regex!16834)) )
))
(declare-fun r1!6342 () Regex!16834)

(declare-datatypes ((List!66591 0))(
  ( (Nil!66467) (Cons!66467 (h!72915 C!33938) (t!380334 List!66591)) )
))
(declare-fun s!14361 () List!66591)

(declare-fun lt!2463848 () Regex!16834)

(declare-datatypes ((tuple2!67402 0))(
  ( (tuple2!67403 (_1!37004 List!66591) (_2!37004 List!66591)) )
))
(declare-fun lt!2463840 () tuple2!67402)

(declare-fun r2!6280 () Regex!16834)

(declare-fun r3!135 () Regex!16834)

(declare-fun lambda!390945 () Int)

(assert (=> bs!1840716 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390945 lambda!390943))))

(assert (=> bs!1840716 (not (= lambda!390945 lambda!390944))))

(assert (=> b!6895355 true))

(assert (=> b!6895355 true))

(assert (=> b!6895355 true))

(declare-fun lambda!390946 () Int)

(assert (=> bs!1840716 (not (= lambda!390946 lambda!390943))))

(assert (=> bs!1840716 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390946 lambda!390944))))

(assert (=> b!6895355 (not (= lambda!390946 lambda!390945))))

(assert (=> b!6895355 true))

(assert (=> b!6895355 true))

(assert (=> b!6895355 true))

(declare-fun b!6895344 () Bool)

(declare-fun e!4153312 () Bool)

(declare-fun tp!1898016 () Bool)

(declare-fun tp!1898020 () Bool)

(assert (=> b!6895344 (= e!4153312 (and tp!1898016 tp!1898020))))

(declare-fun b!6895345 () Bool)

(declare-fun tp_is_empty!42893 () Bool)

(assert (=> b!6895345 (= e!4153312 tp_is_empty!42893)))

(declare-fun b!6895346 () Bool)

(declare-fun res!2811278 () Bool)

(declare-fun e!4153314 () Bool)

(assert (=> b!6895346 (=> res!2811278 e!4153314)))

(declare-fun matchR!8979 (Regex!16834 List!66591) Bool)

(assert (=> b!6895346 (= res!2811278 (not (matchR!8979 lt!2463848 (_2!37004 lt!2463840))))))

(declare-fun b!6895347 () Bool)

(declare-fun e!4153318 () Bool)

(declare-fun tp!1898017 () Bool)

(assert (=> b!6895347 (= e!4153318 tp!1898017)))

(declare-fun b!6895348 () Bool)

(declare-fun e!4153313 () Bool)

(declare-fun e!4153317 () Bool)

(assert (=> b!6895348 (= e!4153313 e!4153317)))

(declare-fun res!2811280 () Bool)

(assert (=> b!6895348 (=> res!2811280 e!4153317)))

(declare-datatypes ((Option!16613 0))(
  ( (None!16612) (Some!16612 (v!52884 tuple2!67402)) )
))
(declare-fun lt!2463838 () Option!16613)

(declare-fun isDefined!13316 (Option!16613) Bool)

(assert (=> b!6895348 (= res!2811280 (not (isDefined!13316 lt!2463838)))))

(declare-fun findConcatSeparation!3027 (Regex!16834 Regex!16834 List!66591 List!66591 List!66591) Option!16613)

(assert (=> b!6895348 (= lt!2463838 (findConcatSeparation!3027 r1!6342 lt!2463848 Nil!66467 s!14361 s!14361))))

(declare-fun b!6895349 () Bool)

(declare-fun e!4153316 () Bool)

(assert (=> b!6895349 (= e!4153316 tp_is_empty!42893)))

(declare-fun b!6895350 () Bool)

(declare-fun tp!1898011 () Bool)

(declare-fun tp!1898015 () Bool)

(assert (=> b!6895350 (= e!4153316 (and tp!1898011 tp!1898015))))

(declare-fun b!6895351 () Bool)

(declare-fun tp!1898009 () Bool)

(declare-fun tp!1898008 () Bool)

(assert (=> b!6895351 (= e!4153318 (and tp!1898009 tp!1898008))))

(declare-fun b!6895352 () Bool)

(declare-fun res!2811276 () Bool)

(declare-fun e!4153311 () Bool)

(assert (=> b!6895352 (=> (not res!2811276) (not e!4153311))))

(declare-fun validRegex!8542 (Regex!16834) Bool)

(assert (=> b!6895352 (= res!2811276 (validRegex!8542 r2!6280))))

(declare-fun b!6895353 () Bool)

(declare-fun e!4153315 () Bool)

(declare-fun tp!1898014 () Bool)

(assert (=> b!6895353 (= e!4153315 (and tp_is_empty!42893 tp!1898014))))

(declare-fun b!6895354 () Bool)

(declare-fun res!2811275 () Bool)

(assert (=> b!6895354 (=> (not res!2811275) (not e!4153311))))

(assert (=> b!6895354 (= res!2811275 (validRegex!8542 r3!135))))

(declare-fun ++!14893 (List!66591 List!66591) List!66591)

(assert (=> b!6895355 (= e!4153314 (= (++!14893 Nil!66467 (_2!37004 lt!2463840)) (_2!37004 lt!2463840)))))

(declare-fun Exists!3842 (Int) Bool)

(assert (=> b!6895355 (= (Exists!3842 lambda!390945) (Exists!3842 lambda!390946))))

(declare-datatypes ((Unit!160388 0))(
  ( (Unit!160389) )
))
(declare-fun lt!2463845 () Unit!160388)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2315 (Regex!16834 Regex!16834 List!66591) Unit!160388)

(assert (=> b!6895355 (= lt!2463845 (lemmaExistCutMatchRandMatchRSpecEquivalent!2315 r2!6280 r3!135 (_2!37004 lt!2463840)))))

(assert (=> b!6895355 (= (isDefined!13316 (findConcatSeparation!3027 r2!6280 r3!135 Nil!66467 (_2!37004 lt!2463840) (_2!37004 lt!2463840))) (Exists!3842 lambda!390945))))

(declare-fun lt!2463837 () Unit!160388)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2789 (Regex!16834 Regex!16834 List!66591) Unit!160388)

(assert (=> b!6895355 (= lt!2463837 (lemmaFindConcatSeparationEquivalentToExists!2789 r2!6280 r3!135 (_2!37004 lt!2463840)))))

(declare-fun matchRSpec!3897 (Regex!16834 List!66591) Bool)

(assert (=> b!6895355 (matchRSpec!3897 lt!2463848 (_2!37004 lt!2463840))))

(declare-fun lt!2463841 () Unit!160388)

(declare-fun mainMatchTheorem!3897 (Regex!16834 List!66591) Unit!160388)

(assert (=> b!6895355 (= lt!2463841 (mainMatchTheorem!3897 lt!2463848 (_2!37004 lt!2463840)))))

(declare-fun b!6895356 () Bool)

(declare-fun tp!1898012 () Bool)

(declare-fun tp!1898022 () Bool)

(assert (=> b!6895356 (= e!4153316 (and tp!1898012 tp!1898022))))

(declare-fun b!6895357 () Bool)

(declare-fun tp!1898019 () Bool)

(assert (=> b!6895357 (= e!4153316 tp!1898019)))

(declare-fun b!6895358 () Bool)

(declare-fun tp!1898023 () Bool)

(declare-fun tp!1898010 () Bool)

(assert (=> b!6895358 (= e!4153318 (and tp!1898023 tp!1898010))))

(declare-fun b!6895359 () Bool)

(assert (=> b!6895359 (= e!4153311 (not e!4153313))))

(declare-fun res!2811279 () Bool)

(assert (=> b!6895359 (=> res!2811279 e!4153313)))

(declare-fun lt!2463849 () Bool)

(assert (=> b!6895359 (= res!2811279 lt!2463849)))

(declare-fun lt!2463839 () Regex!16834)

(assert (=> b!6895359 (= (matchR!8979 lt!2463839 s!14361) (matchRSpec!3897 lt!2463839 s!14361))))

(declare-fun lt!2463844 () Unit!160388)

(assert (=> b!6895359 (= lt!2463844 (mainMatchTheorem!3897 lt!2463839 s!14361))))

(declare-fun lt!2463846 () Regex!16834)

(assert (=> b!6895359 (= lt!2463849 (matchRSpec!3897 lt!2463846 s!14361))))

(assert (=> b!6895359 (= lt!2463849 (matchR!8979 lt!2463846 s!14361))))

(declare-fun lt!2463836 () Unit!160388)

(assert (=> b!6895359 (= lt!2463836 (mainMatchTheorem!3897 lt!2463846 s!14361))))

(assert (=> b!6895359 (= lt!2463839 (Concat!25679 r1!6342 lt!2463848))))

(assert (=> b!6895359 (= lt!2463848 (Concat!25679 r2!6280 r3!135))))

(assert (=> b!6895359 (= lt!2463846 (Concat!25679 (Concat!25679 r1!6342 r2!6280) r3!135))))

(declare-fun b!6895360 () Bool)

(declare-fun tp!1898013 () Bool)

(assert (=> b!6895360 (= e!4153312 tp!1898013)))

(declare-fun b!6895361 () Bool)

(declare-fun tp!1898021 () Bool)

(declare-fun tp!1898018 () Bool)

(assert (=> b!6895361 (= e!4153312 (and tp!1898021 tp!1898018))))

(declare-fun b!6895362 () Bool)

(assert (=> b!6895362 (= e!4153318 tp_is_empty!42893)))

(declare-fun res!2811277 () Bool)

(assert (=> start!664484 (=> (not res!2811277) (not e!4153311))))

(assert (=> start!664484 (= res!2811277 (validRegex!8542 r1!6342))))

(assert (=> start!664484 e!4153311))

(assert (=> start!664484 e!4153318))

(assert (=> start!664484 e!4153312))

(assert (=> start!664484 e!4153316))

(assert (=> start!664484 e!4153315))

(assert (=> b!6895363 (= e!4153317 e!4153314)))

(declare-fun res!2811281 () Bool)

(assert (=> b!6895363 (=> res!2811281 e!4153314)))

(declare-fun lt!2463850 () Bool)

(assert (=> b!6895363 (= res!2811281 (not lt!2463850))))

(assert (=> b!6895363 (= lt!2463850 (matchRSpec!3897 r1!6342 (_1!37004 lt!2463840)))))

(assert (=> b!6895363 (= lt!2463850 (matchR!8979 r1!6342 (_1!37004 lt!2463840)))))

(declare-fun lt!2463847 () Unit!160388)

(assert (=> b!6895363 (= lt!2463847 (mainMatchTheorem!3897 r1!6342 (_1!37004 lt!2463840)))))

(declare-fun get!23202 (Option!16613) tuple2!67402)

(assert (=> b!6895363 (= lt!2463840 (get!23202 lt!2463838))))

(assert (=> b!6895363 (= (Exists!3842 lambda!390943) (Exists!3842 lambda!390944))))

(declare-fun lt!2463843 () Unit!160388)

(assert (=> b!6895363 (= lt!2463843 (lemmaExistCutMatchRandMatchRSpecEquivalent!2315 r1!6342 lt!2463848 s!14361))))

(assert (=> b!6895363 (Exists!3842 lambda!390943)))

(declare-fun lt!2463842 () Unit!160388)

(assert (=> b!6895363 (= lt!2463842 (lemmaFindConcatSeparationEquivalentToExists!2789 r1!6342 lt!2463848 s!14361))))

(assert (= (and start!664484 res!2811277) b!6895352))

(assert (= (and b!6895352 res!2811276) b!6895354))

(assert (= (and b!6895354 res!2811275) b!6895359))

(assert (= (and b!6895359 (not res!2811279)) b!6895348))

(assert (= (and b!6895348 (not res!2811280)) b!6895363))

(assert (= (and b!6895363 (not res!2811281)) b!6895346))

(assert (= (and b!6895346 (not res!2811278)) b!6895355))

(assert (= (and start!664484 (is-ElementMatch!16834 r1!6342)) b!6895362))

(assert (= (and start!664484 (is-Concat!25679 r1!6342)) b!6895358))

(assert (= (and start!664484 (is-Star!16834 r1!6342)) b!6895347))

(assert (= (and start!664484 (is-Union!16834 r1!6342)) b!6895351))

(assert (= (and start!664484 (is-ElementMatch!16834 r2!6280)) b!6895345))

(assert (= (and start!664484 (is-Concat!25679 r2!6280)) b!6895361))

(assert (= (and start!664484 (is-Star!16834 r2!6280)) b!6895360))

(assert (= (and start!664484 (is-Union!16834 r2!6280)) b!6895344))

(assert (= (and start!664484 (is-ElementMatch!16834 r3!135)) b!6895349))

(assert (= (and start!664484 (is-Concat!25679 r3!135)) b!6895356))

(assert (= (and start!664484 (is-Star!16834 r3!135)) b!6895357))

(assert (= (and start!664484 (is-Union!16834 r3!135)) b!6895350))

(assert (= (and start!664484 (is-Cons!66467 s!14361)) b!6895353))

(declare-fun m!7614768 () Bool)

(assert (=> b!6895355 m!7614768))

(assert (=> b!6895355 m!7614768))

(declare-fun m!7614770 () Bool)

(assert (=> b!6895355 m!7614770))

(declare-fun m!7614772 () Bool)

(assert (=> b!6895355 m!7614772))

(declare-fun m!7614774 () Bool)

(assert (=> b!6895355 m!7614774))

(declare-fun m!7614776 () Bool)

(assert (=> b!6895355 m!7614776))

(declare-fun m!7614778 () Bool)

(assert (=> b!6895355 m!7614778))

(declare-fun m!7614780 () Bool)

(assert (=> b!6895355 m!7614780))

(declare-fun m!7614782 () Bool)

(assert (=> b!6895355 m!7614782))

(assert (=> b!6895355 m!7614776))

(declare-fun m!7614784 () Bool)

(assert (=> b!6895355 m!7614784))

(declare-fun m!7614786 () Bool)

(assert (=> b!6895352 m!7614786))

(declare-fun m!7614788 () Bool)

(assert (=> b!6895363 m!7614788))

(declare-fun m!7614790 () Bool)

(assert (=> b!6895363 m!7614790))

(declare-fun m!7614792 () Bool)

(assert (=> b!6895363 m!7614792))

(declare-fun m!7614794 () Bool)

(assert (=> b!6895363 m!7614794))

(declare-fun m!7614796 () Bool)

(assert (=> b!6895363 m!7614796))

(declare-fun m!7614798 () Bool)

(assert (=> b!6895363 m!7614798))

(declare-fun m!7614800 () Bool)

(assert (=> b!6895363 m!7614800))

(declare-fun m!7614802 () Bool)

(assert (=> b!6895363 m!7614802))

(assert (=> b!6895363 m!7614794))

(declare-fun m!7614804 () Bool)

(assert (=> b!6895346 m!7614804))

(declare-fun m!7614806 () Bool)

(assert (=> b!6895348 m!7614806))

(declare-fun m!7614808 () Bool)

(assert (=> b!6895348 m!7614808))

(declare-fun m!7614810 () Bool)

(assert (=> b!6895359 m!7614810))

(declare-fun m!7614812 () Bool)

(assert (=> b!6895359 m!7614812))

(declare-fun m!7614814 () Bool)

(assert (=> b!6895359 m!7614814))

(declare-fun m!7614816 () Bool)

(assert (=> b!6895359 m!7614816))

(declare-fun m!7614818 () Bool)

(assert (=> b!6895359 m!7614818))

(declare-fun m!7614820 () Bool)

(assert (=> b!6895359 m!7614820))

(declare-fun m!7614822 () Bool)

(assert (=> start!664484 m!7614822))

(declare-fun m!7614824 () Bool)

(assert (=> b!6895354 m!7614824))

(push 1)

(assert (not b!6895355))

(assert (not b!6895348))

(assert (not b!6895347))

(assert (not b!6895353))

(assert (not b!6895361))

(assert tp_is_empty!42893)

(assert (not b!6895352))

(assert (not b!6895358))

(assert (not b!6895357))

(assert (not b!6895363))

(assert (not b!6895359))

(assert (not b!6895344))

(assert (not b!6895351))

(assert (not b!6895354))

(assert (not b!6895350))

(assert (not b!6895346))

(assert (not b!6895356))

(assert (not start!664484))

(assert (not b!6895360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!627309 () Bool)

(declare-fun call!627315 () Bool)

(declare-fun c!1281670 () Bool)

(assert (=> bm!627309 (= call!627315 (validRegex!8542 (ite c!1281670 (regTwo!34181 r2!6280) (regOne!34180 r2!6280))))))

(declare-fun bm!627310 () Bool)

(declare-fun c!1281671 () Bool)

(declare-fun call!627316 () Bool)

(assert (=> bm!627310 (= call!627316 (validRegex!8542 (ite c!1281671 (reg!17163 r2!6280) (ite c!1281670 (regOne!34181 r2!6280) (regTwo!34180 r2!6280)))))))

(declare-fun b!6895478 () Bool)

(declare-fun e!4153372 () Bool)

(assert (=> b!6895478 (= e!4153372 call!627315)))

(declare-fun b!6895479 () Bool)

(declare-fun res!2811337 () Bool)

(assert (=> b!6895479 (=> (not res!2811337) (not e!4153372))))

(declare-fun call!627314 () Bool)

(assert (=> b!6895479 (= res!2811337 call!627314)))

(declare-fun e!4153370 () Bool)

(assert (=> b!6895479 (= e!4153370 e!4153372)))

(declare-fun d!2161413 () Bool)

(declare-fun res!2811341 () Bool)

(declare-fun e!4153369 () Bool)

(assert (=> d!2161413 (=> res!2811341 e!4153369)))

(assert (=> d!2161413 (= res!2811341 (is-ElementMatch!16834 r2!6280))))

(assert (=> d!2161413 (= (validRegex!8542 r2!6280) e!4153369)))

(declare-fun b!6895480 () Bool)

(declare-fun e!4153373 () Bool)

(assert (=> b!6895480 (= e!4153373 call!627314)))

(declare-fun b!6895481 () Bool)

(declare-fun e!4153374 () Bool)

(declare-fun e!4153375 () Bool)

(assert (=> b!6895481 (= e!4153374 e!4153375)))

(declare-fun res!2811339 () Bool)

(declare-fun nullable!6699 (Regex!16834) Bool)

(assert (=> b!6895481 (= res!2811339 (not (nullable!6699 (reg!17163 r2!6280))))))

(assert (=> b!6895481 (=> (not res!2811339) (not e!4153375))))

(declare-fun b!6895482 () Bool)

(declare-fun res!2811340 () Bool)

(declare-fun e!4153371 () Bool)

(assert (=> b!6895482 (=> res!2811340 e!4153371)))

(assert (=> b!6895482 (= res!2811340 (not (is-Concat!25679 r2!6280)))))

(assert (=> b!6895482 (= e!4153370 e!4153371)))

(declare-fun b!6895483 () Bool)

(assert (=> b!6895483 (= e!4153375 call!627316)))

(declare-fun bm!627311 () Bool)

(assert (=> bm!627311 (= call!627314 call!627316)))

(declare-fun b!6895484 () Bool)

(assert (=> b!6895484 (= e!4153369 e!4153374)))

(assert (=> b!6895484 (= c!1281671 (is-Star!16834 r2!6280))))

(declare-fun b!6895485 () Bool)

(assert (=> b!6895485 (= e!4153374 e!4153370)))

(assert (=> b!6895485 (= c!1281670 (is-Union!16834 r2!6280))))

(declare-fun b!6895486 () Bool)

(assert (=> b!6895486 (= e!4153371 e!4153373)))

(declare-fun res!2811338 () Bool)

(assert (=> b!6895486 (=> (not res!2811338) (not e!4153373))))

(assert (=> b!6895486 (= res!2811338 call!627315)))

(assert (= (and d!2161413 (not res!2811341)) b!6895484))

(assert (= (and b!6895484 c!1281671) b!6895481))

(assert (= (and b!6895484 (not c!1281671)) b!6895485))

(assert (= (and b!6895481 res!2811339) b!6895483))

(assert (= (and b!6895485 c!1281670) b!6895479))

(assert (= (and b!6895485 (not c!1281670)) b!6895482))

(assert (= (and b!6895479 res!2811337) b!6895478))

(assert (= (and b!6895482 (not res!2811340)) b!6895486))

(assert (= (and b!6895486 res!2811338) b!6895480))

(assert (= (or b!6895479 b!6895480) bm!627311))

(assert (= (or b!6895478 b!6895486) bm!627309))

(assert (= (or b!6895483 bm!627311) bm!627310))

(declare-fun m!7614884 () Bool)

(assert (=> bm!627309 m!7614884))

(declare-fun m!7614886 () Bool)

(assert (=> bm!627310 m!7614886))

(declare-fun m!7614888 () Bool)

(assert (=> b!6895481 m!7614888))

(assert (=> b!6895352 d!2161413))

(declare-fun d!2161415 () Bool)

(declare-fun choose!51344 (Int) Bool)

(assert (=> d!2161415 (= (Exists!3842 lambda!390944) (choose!51344 lambda!390944))))

(declare-fun bs!1840718 () Bool)

(assert (= bs!1840718 d!2161415))

(declare-fun m!7614890 () Bool)

(assert (=> bs!1840718 m!7614890))

(assert (=> b!6895363 d!2161415))

(declare-fun d!2161417 () Bool)

(declare-fun e!4153394 () Bool)

(assert (=> d!2161417 e!4153394))

(declare-fun c!1281679 () Bool)

(assert (=> d!2161417 (= c!1281679 (is-EmptyExpr!16834 r1!6342))))

(declare-fun lt!2463898 () Bool)

(declare-fun e!4153396 () Bool)

(assert (=> d!2161417 (= lt!2463898 e!4153396)))

(declare-fun c!1281678 () Bool)

(declare-fun isEmpty!38712 (List!66591) Bool)

(assert (=> d!2161417 (= c!1281678 (isEmpty!38712 (_1!37004 lt!2463840)))))

(assert (=> d!2161417 (validRegex!8542 r1!6342)))

(assert (=> d!2161417 (= (matchR!8979 r1!6342 (_1!37004 lt!2463840)) lt!2463898)))

(declare-fun bm!627314 () Bool)

(declare-fun call!627319 () Bool)

(assert (=> bm!627314 (= call!627319 (isEmpty!38712 (_1!37004 lt!2463840)))))

(declare-fun b!6895515 () Bool)

(declare-fun e!4153390 () Bool)

(declare-fun e!4153391 () Bool)

(assert (=> b!6895515 (= e!4153390 e!4153391)))

(declare-fun res!2811364 () Bool)

(assert (=> b!6895515 (=> res!2811364 e!4153391)))

(assert (=> b!6895515 (= res!2811364 call!627319)))

(declare-fun b!6895516 () Bool)

(declare-fun e!4153395 () Bool)

(declare-fun head!13831 (List!66591) C!33938)

(assert (=> b!6895516 (= e!4153395 (= (head!13831 (_1!37004 lt!2463840)) (c!1281664 r1!6342)))))

(declare-fun b!6895517 () Bool)

(declare-fun e!4153392 () Bool)

(assert (=> b!6895517 (= e!4153392 (not lt!2463898))))

(declare-fun b!6895518 () Bool)

(declare-fun res!2811360 () Bool)

(assert (=> b!6895518 (=> res!2811360 e!4153391)))

(declare-fun tail!12883 (List!66591) List!66591)

(assert (=> b!6895518 (= res!2811360 (not (isEmpty!38712 (tail!12883 (_1!37004 lt!2463840)))))))

(declare-fun b!6895519 () Bool)

(declare-fun res!2811359 () Bool)

(declare-fun e!4153393 () Bool)

(assert (=> b!6895519 (=> res!2811359 e!4153393)))

(assert (=> b!6895519 (= res!2811359 (not (is-ElementMatch!16834 r1!6342)))))

(assert (=> b!6895519 (= e!4153392 e!4153393)))

(declare-fun b!6895520 () Bool)

(assert (=> b!6895520 (= e!4153393 e!4153390)))

(declare-fun res!2811363 () Bool)

(assert (=> b!6895520 (=> (not res!2811363) (not e!4153390))))

(assert (=> b!6895520 (= res!2811363 (not lt!2463898))))

(declare-fun b!6895521 () Bool)

(declare-fun derivativeStep!5378 (Regex!16834 C!33938) Regex!16834)

(assert (=> b!6895521 (= e!4153396 (matchR!8979 (derivativeStep!5378 r1!6342 (head!13831 (_1!37004 lt!2463840))) (tail!12883 (_1!37004 lt!2463840))))))

(declare-fun b!6895522 () Bool)

(assert (=> b!6895522 (= e!4153394 (= lt!2463898 call!627319))))

(declare-fun b!6895523 () Bool)

(declare-fun res!2811365 () Bool)

(assert (=> b!6895523 (=> (not res!2811365) (not e!4153395))))

(assert (=> b!6895523 (= res!2811365 (isEmpty!38712 (tail!12883 (_1!37004 lt!2463840))))))

(declare-fun b!6895524 () Bool)

(declare-fun res!2811361 () Bool)

(assert (=> b!6895524 (=> res!2811361 e!4153393)))

(assert (=> b!6895524 (= res!2811361 e!4153395)))

(declare-fun res!2811358 () Bool)

(assert (=> b!6895524 (=> (not res!2811358) (not e!4153395))))

(assert (=> b!6895524 (= res!2811358 lt!2463898)))

(declare-fun b!6895525 () Bool)

(assert (=> b!6895525 (= e!4153396 (nullable!6699 r1!6342))))

(declare-fun b!6895526 () Bool)

(assert (=> b!6895526 (= e!4153394 e!4153392)))

(declare-fun c!1281680 () Bool)

(assert (=> b!6895526 (= c!1281680 (is-EmptyLang!16834 r1!6342))))

(declare-fun b!6895527 () Bool)

(assert (=> b!6895527 (= e!4153391 (not (= (head!13831 (_1!37004 lt!2463840)) (c!1281664 r1!6342))))))

(declare-fun b!6895528 () Bool)

(declare-fun res!2811362 () Bool)

(assert (=> b!6895528 (=> (not res!2811362) (not e!4153395))))

(assert (=> b!6895528 (= res!2811362 (not call!627319))))

(assert (= (and d!2161417 c!1281678) b!6895525))

(assert (= (and d!2161417 (not c!1281678)) b!6895521))

(assert (= (and d!2161417 c!1281679) b!6895522))

(assert (= (and d!2161417 (not c!1281679)) b!6895526))

(assert (= (and b!6895526 c!1281680) b!6895517))

(assert (= (and b!6895526 (not c!1281680)) b!6895519))

(assert (= (and b!6895519 (not res!2811359)) b!6895524))

(assert (= (and b!6895524 res!2811358) b!6895528))

(assert (= (and b!6895528 res!2811362) b!6895523))

(assert (= (and b!6895523 res!2811365) b!6895516))

(assert (= (and b!6895524 (not res!2811361)) b!6895520))

(assert (= (and b!6895520 res!2811363) b!6895515))

(assert (= (and b!6895515 (not res!2811364)) b!6895518))

(assert (= (and b!6895518 (not res!2811360)) b!6895527))

(assert (= (or b!6895522 b!6895515 b!6895528) bm!627314))

(declare-fun m!7614892 () Bool)

(assert (=> b!6895525 m!7614892))

(declare-fun m!7614894 () Bool)

(assert (=> b!6895527 m!7614894))

(assert (=> b!6895521 m!7614894))

(assert (=> b!6895521 m!7614894))

(declare-fun m!7614896 () Bool)

(assert (=> b!6895521 m!7614896))

(declare-fun m!7614898 () Bool)

(assert (=> b!6895521 m!7614898))

(assert (=> b!6895521 m!7614896))

(assert (=> b!6895521 m!7614898))

(declare-fun m!7614900 () Bool)

(assert (=> b!6895521 m!7614900))

(declare-fun m!7614902 () Bool)

(assert (=> d!2161417 m!7614902))

(assert (=> d!2161417 m!7614822))

(assert (=> b!6895518 m!7614898))

(assert (=> b!6895518 m!7614898))

(declare-fun m!7614904 () Bool)

(assert (=> b!6895518 m!7614904))

(assert (=> b!6895516 m!7614894))

(assert (=> bm!627314 m!7614902))

(assert (=> b!6895523 m!7614898))

(assert (=> b!6895523 m!7614898))

(assert (=> b!6895523 m!7614904))

(assert (=> b!6895363 d!2161417))

(declare-fun d!2161419 () Bool)

(assert (=> d!2161419 (= (Exists!3842 lambda!390943) (choose!51344 lambda!390943))))

(declare-fun bs!1840719 () Bool)

(assert (= bs!1840719 d!2161419))

(declare-fun m!7614906 () Bool)

(assert (=> bs!1840719 m!7614906))

(assert (=> b!6895363 d!2161419))

(declare-fun d!2161421 () Bool)

(assert (=> d!2161421 (= (matchR!8979 r1!6342 (_1!37004 lt!2463840)) (matchRSpec!3897 r1!6342 (_1!37004 lt!2463840)))))

(declare-fun lt!2463901 () Unit!160388)

(declare-fun choose!51345 (Regex!16834 List!66591) Unit!160388)

(assert (=> d!2161421 (= lt!2463901 (choose!51345 r1!6342 (_1!37004 lt!2463840)))))

(assert (=> d!2161421 (validRegex!8542 r1!6342)))

(assert (=> d!2161421 (= (mainMatchTheorem!3897 r1!6342 (_1!37004 lt!2463840)) lt!2463901)))

(declare-fun bs!1840720 () Bool)

(assert (= bs!1840720 d!2161421))

(assert (=> bs!1840720 m!7614798))

(assert (=> bs!1840720 m!7614792))

(declare-fun m!7614908 () Bool)

(assert (=> bs!1840720 m!7614908))

(assert (=> bs!1840720 m!7614822))

(assert (=> b!6895363 d!2161421))

(declare-fun bs!1840721 () Bool)

(declare-fun b!6895564 () Bool)

(assert (= bs!1840721 (and b!6895564 b!6895363)))

(declare-fun lambda!390967 () Int)

(assert (=> bs!1840721 (not (= lambda!390967 lambda!390943))))

(assert (=> bs!1840721 (not (= lambda!390967 lambda!390944))))

(declare-fun bs!1840722 () Bool)

(assert (= bs!1840722 (and b!6895564 b!6895355)))

(assert (=> bs!1840722 (not (= lambda!390967 lambda!390945))))

(assert (=> bs!1840722 (not (= lambda!390967 lambda!390946))))

(assert (=> b!6895564 true))

(assert (=> b!6895564 true))

(declare-fun bs!1840723 () Bool)

(declare-fun b!6895571 () Bool)

(assert (= bs!1840723 (and b!6895571 b!6895355)))

(declare-fun lambda!390968 () Int)

(assert (=> bs!1840723 (= (and (= (_1!37004 lt!2463840) (_2!37004 lt!2463840)) (= (regOne!34180 r1!6342) r2!6280) (= (regTwo!34180 r1!6342) r3!135)) (= lambda!390968 lambda!390946))))

(declare-fun bs!1840724 () Bool)

(assert (= bs!1840724 (and b!6895571 b!6895363)))

(assert (=> bs!1840724 (= (and (= (_1!37004 lt!2463840) s!14361) (= (regOne!34180 r1!6342) r1!6342) (= (regTwo!34180 r1!6342) lt!2463848)) (= lambda!390968 lambda!390944))))

(assert (=> bs!1840724 (not (= lambda!390968 lambda!390943))))

(declare-fun bs!1840725 () Bool)

(assert (= bs!1840725 (and b!6895571 b!6895564)))

(assert (=> bs!1840725 (not (= lambda!390968 lambda!390967))))

(assert (=> bs!1840723 (not (= lambda!390968 lambda!390945))))

(assert (=> b!6895571 true))

(assert (=> b!6895571 true))

(declare-fun b!6895561 () Bool)

(declare-fun e!4153417 () Bool)

(assert (=> b!6895561 (= e!4153417 (matchRSpec!3897 (regTwo!34181 r1!6342) (_1!37004 lt!2463840)))))

(declare-fun b!6895562 () Bool)

(declare-fun e!4153421 () Bool)

(declare-fun call!627324 () Bool)

(assert (=> b!6895562 (= e!4153421 call!627324)))

(declare-fun bm!627319 () Bool)

(assert (=> bm!627319 (= call!627324 (isEmpty!38712 (_1!37004 lt!2463840)))))

(declare-fun b!6895563 () Bool)

(declare-fun e!4153416 () Bool)

(assert (=> b!6895563 (= e!4153421 e!4153416)))

(declare-fun res!2811384 () Bool)

(assert (=> b!6895563 (= res!2811384 (not (is-EmptyLang!16834 r1!6342)))))

(assert (=> b!6895563 (=> (not res!2811384) (not e!4153416))))

(declare-fun e!4153419 () Bool)

(declare-fun call!627325 () Bool)

(assert (=> b!6895564 (= e!4153419 call!627325)))

(declare-fun b!6895565 () Bool)

(declare-fun e!4153418 () Bool)

(declare-fun e!4153420 () Bool)

(assert (=> b!6895565 (= e!4153418 e!4153420)))

(declare-fun c!1281692 () Bool)

(assert (=> b!6895565 (= c!1281692 (is-Star!16834 r1!6342))))

(declare-fun b!6895566 () Bool)

(declare-fun res!2811383 () Bool)

(assert (=> b!6895566 (=> res!2811383 e!4153419)))

(assert (=> b!6895566 (= res!2811383 call!627324)))

(assert (=> b!6895566 (= e!4153420 e!4153419)))

(declare-fun b!6895567 () Bool)

(declare-fun c!1281689 () Bool)

(assert (=> b!6895567 (= c!1281689 (is-ElementMatch!16834 r1!6342))))

(declare-fun e!4153415 () Bool)

(assert (=> b!6895567 (= e!4153416 e!4153415)))

(declare-fun b!6895568 () Bool)

(declare-fun c!1281690 () Bool)

(assert (=> b!6895568 (= c!1281690 (is-Union!16834 r1!6342))))

(assert (=> b!6895568 (= e!4153415 e!4153418)))

(declare-fun b!6895569 () Bool)

(assert (=> b!6895569 (= e!4153418 e!4153417)))

(declare-fun res!2811382 () Bool)

(assert (=> b!6895569 (= res!2811382 (matchRSpec!3897 (regOne!34181 r1!6342) (_1!37004 lt!2463840)))))

(assert (=> b!6895569 (=> res!2811382 e!4153417)))

(declare-fun b!6895570 () Bool)

(assert (=> b!6895570 (= e!4153415 (= (_1!37004 lt!2463840) (Cons!66467 (c!1281664 r1!6342) Nil!66467)))))

(assert (=> b!6895571 (= e!4153420 call!627325)))

(declare-fun bm!627320 () Bool)

(assert (=> bm!627320 (= call!627325 (Exists!3842 (ite c!1281692 lambda!390967 lambda!390968)))))

(declare-fun d!2161423 () Bool)

(declare-fun c!1281691 () Bool)

(assert (=> d!2161423 (= c!1281691 (is-EmptyExpr!16834 r1!6342))))

(assert (=> d!2161423 (= (matchRSpec!3897 r1!6342 (_1!37004 lt!2463840)) e!4153421)))

(assert (= (and d!2161423 c!1281691) b!6895562))

(assert (= (and d!2161423 (not c!1281691)) b!6895563))

(assert (= (and b!6895563 res!2811384) b!6895567))

(assert (= (and b!6895567 c!1281689) b!6895570))

(assert (= (and b!6895567 (not c!1281689)) b!6895568))

(assert (= (and b!6895568 c!1281690) b!6895569))

(assert (= (and b!6895568 (not c!1281690)) b!6895565))

(assert (= (and b!6895569 (not res!2811382)) b!6895561))

(assert (= (and b!6895565 c!1281692) b!6895566))

(assert (= (and b!6895565 (not c!1281692)) b!6895571))

(assert (= (and b!6895566 (not res!2811383)) b!6895564))

(assert (= (or b!6895564 b!6895571) bm!627320))

(assert (= (or b!6895562 b!6895566) bm!627319))

(declare-fun m!7614910 () Bool)

(assert (=> b!6895561 m!7614910))

(assert (=> bm!627319 m!7614902))

(declare-fun m!7614912 () Bool)

(assert (=> b!6895569 m!7614912))

(declare-fun m!7614914 () Bool)

(assert (=> bm!627320 m!7614914))

(assert (=> b!6895363 d!2161423))

(declare-fun bs!1840726 () Bool)

(declare-fun d!2161427 () Bool)

(assert (= bs!1840726 (and d!2161427 b!6895571)))

(declare-fun lambda!390971 () Int)

(assert (=> bs!1840726 (not (= lambda!390971 lambda!390968))))

(declare-fun bs!1840727 () Bool)

(assert (= bs!1840727 (and d!2161427 b!6895355)))

(assert (=> bs!1840727 (not (= lambda!390971 lambda!390946))))

(declare-fun bs!1840728 () Bool)

(assert (= bs!1840728 (and d!2161427 b!6895363)))

(assert (=> bs!1840728 (not (= lambda!390971 lambda!390944))))

(assert (=> bs!1840728 (= lambda!390971 lambda!390943)))

(declare-fun bs!1840729 () Bool)

(assert (= bs!1840729 (and d!2161427 b!6895564)))

(assert (=> bs!1840729 (not (= lambda!390971 lambda!390967))))

(assert (=> bs!1840727 (= (and (= s!14361 (_2!37004 lt!2463840)) (= r1!6342 r2!6280) (= lt!2463848 r3!135)) (= lambda!390971 lambda!390945))))

(assert (=> d!2161427 true))

(assert (=> d!2161427 true))

(assert (=> d!2161427 true))

(assert (=> d!2161427 (= (isDefined!13316 (findConcatSeparation!3027 r1!6342 lt!2463848 Nil!66467 s!14361 s!14361)) (Exists!3842 lambda!390971))))

(declare-fun lt!2463906 () Unit!160388)

(declare-fun choose!51346 (Regex!16834 Regex!16834 List!66591) Unit!160388)

(assert (=> d!2161427 (= lt!2463906 (choose!51346 r1!6342 lt!2463848 s!14361))))

(assert (=> d!2161427 (validRegex!8542 r1!6342)))

(assert (=> d!2161427 (= (lemmaFindConcatSeparationEquivalentToExists!2789 r1!6342 lt!2463848 s!14361) lt!2463906)))

(declare-fun bs!1840730 () Bool)

(assert (= bs!1840730 d!2161427))

(assert (=> bs!1840730 m!7614808))

(declare-fun m!7614916 () Bool)

(assert (=> bs!1840730 m!7614916))

(assert (=> bs!1840730 m!7614808))

(declare-fun m!7614918 () Bool)

(assert (=> bs!1840730 m!7614918))

(assert (=> bs!1840730 m!7614822))

(declare-fun m!7614920 () Bool)

(assert (=> bs!1840730 m!7614920))

(assert (=> b!6895363 d!2161427))

(declare-fun d!2161429 () Bool)

(assert (=> d!2161429 (= (get!23202 lt!2463838) (v!52884 lt!2463838))))

(assert (=> b!6895363 d!2161429))

(declare-fun bs!1840731 () Bool)

(declare-fun d!2161431 () Bool)

(assert (= bs!1840731 (and d!2161431 b!6895571)))

(declare-fun lambda!390976 () Int)

(assert (=> bs!1840731 (not (= lambda!390976 lambda!390968))))

(declare-fun bs!1840732 () Bool)

(assert (= bs!1840732 (and d!2161431 d!2161427)))

(assert (=> bs!1840732 (= lambda!390976 lambda!390971)))

(declare-fun bs!1840733 () Bool)

(assert (= bs!1840733 (and d!2161431 b!6895355)))

(assert (=> bs!1840733 (not (= lambda!390976 lambda!390946))))

(declare-fun bs!1840734 () Bool)

(assert (= bs!1840734 (and d!2161431 b!6895363)))

(assert (=> bs!1840734 (not (= lambda!390976 lambda!390944))))

(assert (=> bs!1840734 (= lambda!390976 lambda!390943)))

(declare-fun bs!1840735 () Bool)

(assert (= bs!1840735 (and d!2161431 b!6895564)))

(assert (=> bs!1840735 (not (= lambda!390976 lambda!390967))))

(assert (=> bs!1840733 (= (and (= s!14361 (_2!37004 lt!2463840)) (= r1!6342 r2!6280) (= lt!2463848 r3!135)) (= lambda!390976 lambda!390945))))

(assert (=> d!2161431 true))

(assert (=> d!2161431 true))

(assert (=> d!2161431 true))

(declare-fun lambda!390977 () Int)

(assert (=> bs!1840731 (= (and (= s!14361 (_1!37004 lt!2463840)) (= r1!6342 (regOne!34180 r1!6342)) (= lt!2463848 (regTwo!34180 r1!6342))) (= lambda!390977 lambda!390968))))

(assert (=> bs!1840732 (not (= lambda!390977 lambda!390971))))

(declare-fun bs!1840736 () Bool)

(assert (= bs!1840736 d!2161431))

(assert (=> bs!1840736 (not (= lambda!390977 lambda!390976))))

(assert (=> bs!1840733 (= (and (= s!14361 (_2!37004 lt!2463840)) (= r1!6342 r2!6280) (= lt!2463848 r3!135)) (= lambda!390977 lambda!390946))))

(assert (=> bs!1840734 (= lambda!390977 lambda!390944)))

(assert (=> bs!1840734 (not (= lambda!390977 lambda!390943))))

(assert (=> bs!1840735 (not (= lambda!390977 lambda!390967))))

(assert (=> bs!1840733 (not (= lambda!390977 lambda!390945))))

(assert (=> d!2161431 true))

(assert (=> d!2161431 true))

(assert (=> d!2161431 true))

(assert (=> d!2161431 (= (Exists!3842 lambda!390976) (Exists!3842 lambda!390977))))

(declare-fun lt!2463910 () Unit!160388)

(declare-fun choose!51347 (Regex!16834 Regex!16834 List!66591) Unit!160388)

(assert (=> d!2161431 (= lt!2463910 (choose!51347 r1!6342 lt!2463848 s!14361))))

(assert (=> d!2161431 (validRegex!8542 r1!6342)))

(assert (=> d!2161431 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2315 r1!6342 lt!2463848 s!14361) lt!2463910)))

(declare-fun m!7614938 () Bool)

(assert (=> bs!1840736 m!7614938))

(declare-fun m!7614940 () Bool)

(assert (=> bs!1840736 m!7614940))

(declare-fun m!7614942 () Bool)

(assert (=> bs!1840736 m!7614942))

(assert (=> bs!1840736 m!7614822))

(assert (=> b!6895363 d!2161431))

(declare-fun d!2161435 () Bool)

(declare-fun e!4153467 () Bool)

(assert (=> d!2161435 e!4153467))

(declare-fun c!1281707 () Bool)

(assert (=> d!2161435 (= c!1281707 (is-EmptyExpr!16834 lt!2463848))))

(declare-fun lt!2463911 () Bool)

(declare-fun e!4153469 () Bool)

(assert (=> d!2161435 (= lt!2463911 e!4153469)))

(declare-fun c!1281706 () Bool)

(assert (=> d!2161435 (= c!1281706 (isEmpty!38712 (_2!37004 lt!2463840)))))

(assert (=> d!2161435 (validRegex!8542 lt!2463848)))

(assert (=> d!2161435 (= (matchR!8979 lt!2463848 (_2!37004 lt!2463840)) lt!2463911)))

(declare-fun bm!627324 () Bool)

(declare-fun call!627329 () Bool)

(assert (=> bm!627324 (= call!627329 (isEmpty!38712 (_2!37004 lt!2463840)))))

(declare-fun b!6895644 () Bool)

(declare-fun e!4153463 () Bool)

(declare-fun e!4153464 () Bool)

(assert (=> b!6895644 (= e!4153463 e!4153464)))

(declare-fun res!2811437 () Bool)

(assert (=> b!6895644 (=> res!2811437 e!4153464)))

(assert (=> b!6895644 (= res!2811437 call!627329)))

(declare-fun b!6895645 () Bool)

(declare-fun e!4153468 () Bool)

(assert (=> b!6895645 (= e!4153468 (= (head!13831 (_2!37004 lt!2463840)) (c!1281664 lt!2463848)))))

(declare-fun b!6895646 () Bool)

(declare-fun e!4153465 () Bool)

(assert (=> b!6895646 (= e!4153465 (not lt!2463911))))

(declare-fun b!6895647 () Bool)

(declare-fun res!2811433 () Bool)

(assert (=> b!6895647 (=> res!2811433 e!4153464)))

(assert (=> b!6895647 (= res!2811433 (not (isEmpty!38712 (tail!12883 (_2!37004 lt!2463840)))))))

(declare-fun b!6895648 () Bool)

(declare-fun res!2811432 () Bool)

(declare-fun e!4153466 () Bool)

(assert (=> b!6895648 (=> res!2811432 e!4153466)))

(assert (=> b!6895648 (= res!2811432 (not (is-ElementMatch!16834 lt!2463848)))))

(assert (=> b!6895648 (= e!4153465 e!4153466)))

(declare-fun b!6895649 () Bool)

(assert (=> b!6895649 (= e!4153466 e!4153463)))

(declare-fun res!2811436 () Bool)

(assert (=> b!6895649 (=> (not res!2811436) (not e!4153463))))

(assert (=> b!6895649 (= res!2811436 (not lt!2463911))))

(declare-fun b!6895650 () Bool)

(assert (=> b!6895650 (= e!4153469 (matchR!8979 (derivativeStep!5378 lt!2463848 (head!13831 (_2!37004 lt!2463840))) (tail!12883 (_2!37004 lt!2463840))))))

(declare-fun b!6895651 () Bool)

(assert (=> b!6895651 (= e!4153467 (= lt!2463911 call!627329))))

(declare-fun b!6895652 () Bool)

(declare-fun res!2811438 () Bool)

(assert (=> b!6895652 (=> (not res!2811438) (not e!4153468))))

(assert (=> b!6895652 (= res!2811438 (isEmpty!38712 (tail!12883 (_2!37004 lt!2463840))))))

(declare-fun b!6895653 () Bool)

(declare-fun res!2811434 () Bool)

(assert (=> b!6895653 (=> res!2811434 e!4153466)))

(assert (=> b!6895653 (= res!2811434 e!4153468)))

(declare-fun res!2811431 () Bool)

(assert (=> b!6895653 (=> (not res!2811431) (not e!4153468))))

(assert (=> b!6895653 (= res!2811431 lt!2463911)))

(declare-fun b!6895654 () Bool)

(assert (=> b!6895654 (= e!4153469 (nullable!6699 lt!2463848))))

(declare-fun b!6895655 () Bool)

(assert (=> b!6895655 (= e!4153467 e!4153465)))

(declare-fun c!1281708 () Bool)

(assert (=> b!6895655 (= c!1281708 (is-EmptyLang!16834 lt!2463848))))

(declare-fun b!6895656 () Bool)

(assert (=> b!6895656 (= e!4153464 (not (= (head!13831 (_2!37004 lt!2463840)) (c!1281664 lt!2463848))))))

(declare-fun b!6895657 () Bool)

(declare-fun res!2811435 () Bool)

(assert (=> b!6895657 (=> (not res!2811435) (not e!4153468))))

(assert (=> b!6895657 (= res!2811435 (not call!627329))))

(assert (= (and d!2161435 c!1281706) b!6895654))

(assert (= (and d!2161435 (not c!1281706)) b!6895650))

(assert (= (and d!2161435 c!1281707) b!6895651))

(assert (= (and d!2161435 (not c!1281707)) b!6895655))

(assert (= (and b!6895655 c!1281708) b!6895646))

(assert (= (and b!6895655 (not c!1281708)) b!6895648))

(assert (= (and b!6895648 (not res!2811432)) b!6895653))

(assert (= (and b!6895653 res!2811431) b!6895657))

(assert (= (and b!6895657 res!2811435) b!6895652))

(assert (= (and b!6895652 res!2811438) b!6895645))

(assert (= (and b!6895653 (not res!2811434)) b!6895649))

(assert (= (and b!6895649 res!2811436) b!6895644))

(assert (= (and b!6895644 (not res!2811437)) b!6895647))

(assert (= (and b!6895647 (not res!2811433)) b!6895656))

(assert (= (or b!6895651 b!6895644 b!6895657) bm!627324))

(declare-fun m!7614944 () Bool)

(assert (=> b!6895654 m!7614944))

(declare-fun m!7614946 () Bool)

(assert (=> b!6895656 m!7614946))

(assert (=> b!6895650 m!7614946))

(assert (=> b!6895650 m!7614946))

(declare-fun m!7614948 () Bool)

(assert (=> b!6895650 m!7614948))

(declare-fun m!7614950 () Bool)

(assert (=> b!6895650 m!7614950))

(assert (=> b!6895650 m!7614948))

(assert (=> b!6895650 m!7614950))

(declare-fun m!7614952 () Bool)

(assert (=> b!6895650 m!7614952))

(declare-fun m!7614954 () Bool)

(assert (=> d!2161435 m!7614954))

(declare-fun m!7614956 () Bool)

(assert (=> d!2161435 m!7614956))

(assert (=> b!6895647 m!7614950))

(assert (=> b!6895647 m!7614950))

(declare-fun m!7614958 () Bool)

(assert (=> b!6895647 m!7614958))

(assert (=> b!6895645 m!7614946))

(assert (=> bm!627324 m!7614954))

(assert (=> b!6895652 m!7614950))

(assert (=> b!6895652 m!7614950))

(assert (=> b!6895652 m!7614958))

(assert (=> b!6895346 d!2161435))

(declare-fun d!2161437 () Bool)

(declare-fun isEmpty!38713 (Option!16613) Bool)

(assert (=> d!2161437 (= (isDefined!13316 lt!2463838) (not (isEmpty!38713 lt!2463838)))))

(declare-fun bs!1840737 () Bool)

(assert (= bs!1840737 d!2161437))

(declare-fun m!7614960 () Bool)

(assert (=> bs!1840737 m!7614960))

(assert (=> b!6895348 d!2161437))

(declare-fun b!6895694 () Bool)

(declare-fun e!4153498 () Option!16613)

(assert (=> b!6895694 (= e!4153498 None!16612)))

(declare-fun b!6895695 () Bool)

(declare-fun e!4153496 () Bool)

(declare-fun lt!2463919 () Option!16613)

(assert (=> b!6895695 (= e!4153496 (= (++!14893 (_1!37004 (get!23202 lt!2463919)) (_2!37004 (get!23202 lt!2463919))) s!14361))))

(declare-fun d!2161439 () Bool)

(declare-fun e!4153497 () Bool)

(assert (=> d!2161439 e!4153497))

(declare-fun res!2811459 () Bool)

(assert (=> d!2161439 (=> res!2811459 e!4153497)))

(assert (=> d!2161439 (= res!2811459 e!4153496)))

(declare-fun res!2811462 () Bool)

(assert (=> d!2161439 (=> (not res!2811462) (not e!4153496))))

(assert (=> d!2161439 (= res!2811462 (isDefined!13316 lt!2463919))))

(declare-fun e!4153495 () Option!16613)

(assert (=> d!2161439 (= lt!2463919 e!4153495)))

(declare-fun c!1281717 () Bool)

(declare-fun e!4153494 () Bool)

(assert (=> d!2161439 (= c!1281717 e!4153494)))

(declare-fun res!2811460 () Bool)

(assert (=> d!2161439 (=> (not res!2811460) (not e!4153494))))

(assert (=> d!2161439 (= res!2811460 (matchR!8979 r1!6342 Nil!66467))))

(assert (=> d!2161439 (validRegex!8542 r1!6342)))

(assert (=> d!2161439 (= (findConcatSeparation!3027 r1!6342 lt!2463848 Nil!66467 s!14361 s!14361) lt!2463919)))

(declare-fun b!6895696 () Bool)

(declare-fun lt!2463918 () Unit!160388)

(declare-fun lt!2463920 () Unit!160388)

(assert (=> b!6895696 (= lt!2463918 lt!2463920)))

(assert (=> b!6895696 (= (++!14893 (++!14893 Nil!66467 (Cons!66467 (h!72915 s!14361) Nil!66467)) (t!380334 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2786 (List!66591 C!33938 List!66591 List!66591) Unit!160388)

(assert (=> b!6895696 (= lt!2463920 (lemmaMoveElementToOtherListKeepsConcatEq!2786 Nil!66467 (h!72915 s!14361) (t!380334 s!14361) s!14361))))

(assert (=> b!6895696 (= e!4153498 (findConcatSeparation!3027 r1!6342 lt!2463848 (++!14893 Nil!66467 (Cons!66467 (h!72915 s!14361) Nil!66467)) (t!380334 s!14361) s!14361))))

(declare-fun b!6895697 () Bool)

(assert (=> b!6895697 (= e!4153495 e!4153498)))

(declare-fun c!1281718 () Bool)

(assert (=> b!6895697 (= c!1281718 (is-Nil!66467 s!14361))))

(declare-fun b!6895698 () Bool)

(assert (=> b!6895698 (= e!4153495 (Some!16612 (tuple2!67403 Nil!66467 s!14361)))))

(declare-fun b!6895699 () Bool)

(assert (=> b!6895699 (= e!4153494 (matchR!8979 lt!2463848 s!14361))))

(declare-fun b!6895700 () Bool)

(assert (=> b!6895700 (= e!4153497 (not (isDefined!13316 lt!2463919)))))

(declare-fun b!6895701 () Bool)

(declare-fun res!2811463 () Bool)

(assert (=> b!6895701 (=> (not res!2811463) (not e!4153496))))

(assert (=> b!6895701 (= res!2811463 (matchR!8979 lt!2463848 (_2!37004 (get!23202 lt!2463919))))))

(declare-fun b!6895702 () Bool)

(declare-fun res!2811461 () Bool)

(assert (=> b!6895702 (=> (not res!2811461) (not e!4153496))))

(assert (=> b!6895702 (= res!2811461 (matchR!8979 r1!6342 (_1!37004 (get!23202 lt!2463919))))))

(assert (= (and d!2161439 res!2811460) b!6895699))

(assert (= (and d!2161439 c!1281717) b!6895698))

(assert (= (and d!2161439 (not c!1281717)) b!6895697))

(assert (= (and b!6895697 c!1281718) b!6895694))

(assert (= (and b!6895697 (not c!1281718)) b!6895696))

(assert (= (and d!2161439 res!2811462) b!6895702))

(assert (= (and b!6895702 res!2811461) b!6895701))

(assert (= (and b!6895701 res!2811463) b!6895695))

(assert (= (and d!2161439 (not res!2811459)) b!6895700))

(declare-fun m!7614974 () Bool)

(assert (=> b!6895702 m!7614974))

(declare-fun m!7614976 () Bool)

(assert (=> b!6895702 m!7614976))

(declare-fun m!7614978 () Bool)

(assert (=> d!2161439 m!7614978))

(declare-fun m!7614980 () Bool)

(assert (=> d!2161439 m!7614980))

(assert (=> d!2161439 m!7614822))

(assert (=> b!6895700 m!7614978))

(declare-fun m!7614982 () Bool)

(assert (=> b!6895696 m!7614982))

(assert (=> b!6895696 m!7614982))

(declare-fun m!7614984 () Bool)

(assert (=> b!6895696 m!7614984))

(declare-fun m!7614986 () Bool)

(assert (=> b!6895696 m!7614986))

(assert (=> b!6895696 m!7614982))

(declare-fun m!7614988 () Bool)

(assert (=> b!6895696 m!7614988))

(declare-fun m!7614990 () Bool)

(assert (=> b!6895699 m!7614990))

(assert (=> b!6895695 m!7614974))

(declare-fun m!7614992 () Bool)

(assert (=> b!6895695 m!7614992))

(assert (=> b!6895701 m!7614974))

(declare-fun m!7614994 () Bool)

(assert (=> b!6895701 m!7614994))

(assert (=> b!6895348 d!2161439))

(declare-fun bs!1840738 () Bool)

(declare-fun b!6895706 () Bool)

(assert (= bs!1840738 (and b!6895706 d!2161431)))

(declare-fun lambda!390978 () Int)

(assert (=> bs!1840738 (not (= lambda!390978 lambda!390977))))

(declare-fun bs!1840739 () Bool)

(assert (= bs!1840739 (and b!6895706 b!6895571)))

(assert (=> bs!1840739 (not (= lambda!390978 lambda!390968))))

(declare-fun bs!1840740 () Bool)

(assert (= bs!1840740 (and b!6895706 d!2161427)))

(assert (=> bs!1840740 (not (= lambda!390978 lambda!390971))))

(assert (=> bs!1840738 (not (= lambda!390978 lambda!390976))))

(declare-fun bs!1840741 () Bool)

(assert (= bs!1840741 (and b!6895706 b!6895355)))

(assert (=> bs!1840741 (not (= lambda!390978 lambda!390946))))

(declare-fun bs!1840742 () Bool)

(assert (= bs!1840742 (and b!6895706 b!6895363)))

(assert (=> bs!1840742 (not (= lambda!390978 lambda!390944))))

(assert (=> bs!1840742 (not (= lambda!390978 lambda!390943))))

(declare-fun bs!1840743 () Bool)

(assert (= bs!1840743 (and b!6895706 b!6895564)))

(assert (=> bs!1840743 (= (and (= s!14361 (_1!37004 lt!2463840)) (= (reg!17163 lt!2463846) (reg!17163 r1!6342)) (= lt!2463846 r1!6342)) (= lambda!390978 lambda!390967))))

(assert (=> bs!1840741 (not (= lambda!390978 lambda!390945))))

(assert (=> b!6895706 true))

(assert (=> b!6895706 true))

(declare-fun bs!1840744 () Bool)

(declare-fun b!6895713 () Bool)

(assert (= bs!1840744 (and b!6895713 d!2161431)))

(declare-fun lambda!390979 () Int)

(assert (=> bs!1840744 (= (and (= (regOne!34180 lt!2463846) r1!6342) (= (regTwo!34180 lt!2463846) lt!2463848)) (= lambda!390979 lambda!390977))))

(declare-fun bs!1840745 () Bool)

(assert (= bs!1840745 (and b!6895713 b!6895571)))

(assert (=> bs!1840745 (= (and (= s!14361 (_1!37004 lt!2463840)) (= (regOne!34180 lt!2463846) (regOne!34180 r1!6342)) (= (regTwo!34180 lt!2463846) (regTwo!34180 r1!6342))) (= lambda!390979 lambda!390968))))

(declare-fun bs!1840746 () Bool)

(assert (= bs!1840746 (and b!6895713 d!2161427)))

(assert (=> bs!1840746 (not (= lambda!390979 lambda!390971))))

(assert (=> bs!1840744 (not (= lambda!390979 lambda!390976))))

(declare-fun bs!1840747 () Bool)

(assert (= bs!1840747 (and b!6895713 b!6895706)))

(assert (=> bs!1840747 (not (= lambda!390979 lambda!390978))))

(declare-fun bs!1840748 () Bool)

(assert (= bs!1840748 (and b!6895713 b!6895355)))

(assert (=> bs!1840748 (= (and (= s!14361 (_2!37004 lt!2463840)) (= (regOne!34180 lt!2463846) r2!6280) (= (regTwo!34180 lt!2463846) r3!135)) (= lambda!390979 lambda!390946))))

(declare-fun bs!1840749 () Bool)

(assert (= bs!1840749 (and b!6895713 b!6895363)))

(assert (=> bs!1840749 (= (and (= (regOne!34180 lt!2463846) r1!6342) (= (regTwo!34180 lt!2463846) lt!2463848)) (= lambda!390979 lambda!390944))))

(assert (=> bs!1840749 (not (= lambda!390979 lambda!390943))))

(declare-fun bs!1840750 () Bool)

(assert (= bs!1840750 (and b!6895713 b!6895564)))

(assert (=> bs!1840750 (not (= lambda!390979 lambda!390967))))

(assert (=> bs!1840748 (not (= lambda!390979 lambda!390945))))

(assert (=> b!6895713 true))

(assert (=> b!6895713 true))

(declare-fun b!6895703 () Bool)

(declare-fun e!4153501 () Bool)

(assert (=> b!6895703 (= e!4153501 (matchRSpec!3897 (regTwo!34181 lt!2463846) s!14361))))

(declare-fun b!6895704 () Bool)

(declare-fun e!4153505 () Bool)

(declare-fun call!627342 () Bool)

(assert (=> b!6895704 (= e!4153505 call!627342)))

(declare-fun bm!627337 () Bool)

(assert (=> bm!627337 (= call!627342 (isEmpty!38712 s!14361))))

(declare-fun b!6895705 () Bool)

(declare-fun e!4153500 () Bool)

(assert (=> b!6895705 (= e!4153505 e!4153500)))

(declare-fun res!2811466 () Bool)

(assert (=> b!6895705 (= res!2811466 (not (is-EmptyLang!16834 lt!2463846)))))

(assert (=> b!6895705 (=> (not res!2811466) (not e!4153500))))

(declare-fun e!4153503 () Bool)

(declare-fun call!627343 () Bool)

(assert (=> b!6895706 (= e!4153503 call!627343)))

(declare-fun b!6895707 () Bool)

(declare-fun e!4153502 () Bool)

(declare-fun e!4153504 () Bool)

(assert (=> b!6895707 (= e!4153502 e!4153504)))

(declare-fun c!1281722 () Bool)

(assert (=> b!6895707 (= c!1281722 (is-Star!16834 lt!2463846))))

(declare-fun b!6895708 () Bool)

(declare-fun res!2811465 () Bool)

(assert (=> b!6895708 (=> res!2811465 e!4153503)))

(assert (=> b!6895708 (= res!2811465 call!627342)))

(assert (=> b!6895708 (= e!4153504 e!4153503)))

(declare-fun b!6895709 () Bool)

(declare-fun c!1281719 () Bool)

(assert (=> b!6895709 (= c!1281719 (is-ElementMatch!16834 lt!2463846))))

(declare-fun e!4153499 () Bool)

(assert (=> b!6895709 (= e!4153500 e!4153499)))

(declare-fun b!6895710 () Bool)

(declare-fun c!1281720 () Bool)

(assert (=> b!6895710 (= c!1281720 (is-Union!16834 lt!2463846))))

(assert (=> b!6895710 (= e!4153499 e!4153502)))

(declare-fun b!6895711 () Bool)

(assert (=> b!6895711 (= e!4153502 e!4153501)))

(declare-fun res!2811464 () Bool)

(assert (=> b!6895711 (= res!2811464 (matchRSpec!3897 (regOne!34181 lt!2463846) s!14361))))

(assert (=> b!6895711 (=> res!2811464 e!4153501)))

(declare-fun b!6895712 () Bool)

(assert (=> b!6895712 (= e!4153499 (= s!14361 (Cons!66467 (c!1281664 lt!2463846) Nil!66467)))))

(assert (=> b!6895713 (= e!4153504 call!627343)))

(declare-fun bm!627338 () Bool)

(assert (=> bm!627338 (= call!627343 (Exists!3842 (ite c!1281722 lambda!390978 lambda!390979)))))

(declare-fun d!2161445 () Bool)

(declare-fun c!1281721 () Bool)

(assert (=> d!2161445 (= c!1281721 (is-EmptyExpr!16834 lt!2463846))))

(assert (=> d!2161445 (= (matchRSpec!3897 lt!2463846 s!14361) e!4153505)))

(assert (= (and d!2161445 c!1281721) b!6895704))

(assert (= (and d!2161445 (not c!1281721)) b!6895705))

(assert (= (and b!6895705 res!2811466) b!6895709))

(assert (= (and b!6895709 c!1281719) b!6895712))

(assert (= (and b!6895709 (not c!1281719)) b!6895710))

(assert (= (and b!6895710 c!1281720) b!6895711))

(assert (= (and b!6895710 (not c!1281720)) b!6895707))

(assert (= (and b!6895711 (not res!2811464)) b!6895703))

(assert (= (and b!6895707 c!1281722) b!6895708))

(assert (= (and b!6895707 (not c!1281722)) b!6895713))

(assert (= (and b!6895708 (not res!2811465)) b!6895706))

(assert (= (or b!6895706 b!6895713) bm!627338))

(assert (= (or b!6895704 b!6895708) bm!627337))

(declare-fun m!7614996 () Bool)

(assert (=> b!6895703 m!7614996))

(declare-fun m!7614998 () Bool)

(assert (=> bm!627337 m!7614998))

(declare-fun m!7615000 () Bool)

(assert (=> b!6895711 m!7615000))

(declare-fun m!7615002 () Bool)

(assert (=> bm!627338 m!7615002))

(assert (=> b!6895359 d!2161445))

(declare-fun d!2161447 () Bool)

(declare-fun e!4153510 () Bool)

(assert (=> d!2161447 e!4153510))

(declare-fun c!1281724 () Bool)

(assert (=> d!2161447 (= c!1281724 (is-EmptyExpr!16834 lt!2463839))))

(declare-fun lt!2463921 () Bool)

(declare-fun e!4153512 () Bool)

(assert (=> d!2161447 (= lt!2463921 e!4153512)))

(declare-fun c!1281723 () Bool)

(assert (=> d!2161447 (= c!1281723 (isEmpty!38712 s!14361))))

(assert (=> d!2161447 (validRegex!8542 lt!2463839)))

(assert (=> d!2161447 (= (matchR!8979 lt!2463839 s!14361) lt!2463921)))

(declare-fun bm!627339 () Bool)

(declare-fun call!627344 () Bool)

(assert (=> bm!627339 (= call!627344 (isEmpty!38712 s!14361))))

(declare-fun b!6895714 () Bool)

(declare-fun e!4153506 () Bool)

(declare-fun e!4153507 () Bool)

(assert (=> b!6895714 (= e!4153506 e!4153507)))

(declare-fun res!2811473 () Bool)

(assert (=> b!6895714 (=> res!2811473 e!4153507)))

(assert (=> b!6895714 (= res!2811473 call!627344)))

(declare-fun b!6895715 () Bool)

(declare-fun e!4153511 () Bool)

(assert (=> b!6895715 (= e!4153511 (= (head!13831 s!14361) (c!1281664 lt!2463839)))))

(declare-fun b!6895716 () Bool)

(declare-fun e!4153508 () Bool)

(assert (=> b!6895716 (= e!4153508 (not lt!2463921))))

(declare-fun b!6895717 () Bool)

(declare-fun res!2811469 () Bool)

(assert (=> b!6895717 (=> res!2811469 e!4153507)))

(assert (=> b!6895717 (= res!2811469 (not (isEmpty!38712 (tail!12883 s!14361))))))

(declare-fun b!6895718 () Bool)

(declare-fun res!2811468 () Bool)

(declare-fun e!4153509 () Bool)

(assert (=> b!6895718 (=> res!2811468 e!4153509)))

(assert (=> b!6895718 (= res!2811468 (not (is-ElementMatch!16834 lt!2463839)))))

(assert (=> b!6895718 (= e!4153508 e!4153509)))

(declare-fun b!6895719 () Bool)

(assert (=> b!6895719 (= e!4153509 e!4153506)))

(declare-fun res!2811472 () Bool)

(assert (=> b!6895719 (=> (not res!2811472) (not e!4153506))))

(assert (=> b!6895719 (= res!2811472 (not lt!2463921))))

(declare-fun b!6895720 () Bool)

(assert (=> b!6895720 (= e!4153512 (matchR!8979 (derivativeStep!5378 lt!2463839 (head!13831 s!14361)) (tail!12883 s!14361)))))

(declare-fun b!6895721 () Bool)

(assert (=> b!6895721 (= e!4153510 (= lt!2463921 call!627344))))

(declare-fun b!6895722 () Bool)

(declare-fun res!2811474 () Bool)

(assert (=> b!6895722 (=> (not res!2811474) (not e!4153511))))

(assert (=> b!6895722 (= res!2811474 (isEmpty!38712 (tail!12883 s!14361)))))

(declare-fun b!6895723 () Bool)

(declare-fun res!2811470 () Bool)

(assert (=> b!6895723 (=> res!2811470 e!4153509)))

(assert (=> b!6895723 (= res!2811470 e!4153511)))

(declare-fun res!2811467 () Bool)

(assert (=> b!6895723 (=> (not res!2811467) (not e!4153511))))

(assert (=> b!6895723 (= res!2811467 lt!2463921)))

(declare-fun b!6895724 () Bool)

(assert (=> b!6895724 (= e!4153512 (nullable!6699 lt!2463839))))

(declare-fun b!6895725 () Bool)

(assert (=> b!6895725 (= e!4153510 e!4153508)))

(declare-fun c!1281725 () Bool)

(assert (=> b!6895725 (= c!1281725 (is-EmptyLang!16834 lt!2463839))))

(declare-fun b!6895726 () Bool)

(assert (=> b!6895726 (= e!4153507 (not (= (head!13831 s!14361) (c!1281664 lt!2463839))))))

(declare-fun b!6895727 () Bool)

(declare-fun res!2811471 () Bool)

(assert (=> b!6895727 (=> (not res!2811471) (not e!4153511))))

(assert (=> b!6895727 (= res!2811471 (not call!627344))))

(assert (= (and d!2161447 c!1281723) b!6895724))

(assert (= (and d!2161447 (not c!1281723)) b!6895720))

(assert (= (and d!2161447 c!1281724) b!6895721))

(assert (= (and d!2161447 (not c!1281724)) b!6895725))

(assert (= (and b!6895725 c!1281725) b!6895716))

(assert (= (and b!6895725 (not c!1281725)) b!6895718))

(assert (= (and b!6895718 (not res!2811468)) b!6895723))

(assert (= (and b!6895723 res!2811467) b!6895727))

(assert (= (and b!6895727 res!2811471) b!6895722))

(assert (= (and b!6895722 res!2811474) b!6895715))

(assert (= (and b!6895723 (not res!2811470)) b!6895719))

(assert (= (and b!6895719 res!2811472) b!6895714))

(assert (= (and b!6895714 (not res!2811473)) b!6895717))

(assert (= (and b!6895717 (not res!2811469)) b!6895726))

(assert (= (or b!6895721 b!6895714 b!6895727) bm!627339))

(declare-fun m!7615004 () Bool)

(assert (=> b!6895724 m!7615004))

(declare-fun m!7615006 () Bool)

(assert (=> b!6895726 m!7615006))

(assert (=> b!6895720 m!7615006))

(assert (=> b!6895720 m!7615006))

(declare-fun m!7615008 () Bool)

(assert (=> b!6895720 m!7615008))

(declare-fun m!7615010 () Bool)

(assert (=> b!6895720 m!7615010))

(assert (=> b!6895720 m!7615008))

(assert (=> b!6895720 m!7615010))

(declare-fun m!7615012 () Bool)

(assert (=> b!6895720 m!7615012))

(assert (=> d!2161447 m!7614998))

(declare-fun m!7615014 () Bool)

(assert (=> d!2161447 m!7615014))

(assert (=> b!6895717 m!7615010))

(assert (=> b!6895717 m!7615010))

(declare-fun m!7615016 () Bool)

(assert (=> b!6895717 m!7615016))

(assert (=> b!6895715 m!7615006))

(assert (=> bm!627339 m!7614998))

(assert (=> b!6895722 m!7615010))

(assert (=> b!6895722 m!7615010))

(assert (=> b!6895722 m!7615016))

(assert (=> b!6895359 d!2161447))

(declare-fun d!2161449 () Bool)

(assert (=> d!2161449 (= (matchR!8979 lt!2463839 s!14361) (matchRSpec!3897 lt!2463839 s!14361))))

(declare-fun lt!2463922 () Unit!160388)

(assert (=> d!2161449 (= lt!2463922 (choose!51345 lt!2463839 s!14361))))

(assert (=> d!2161449 (validRegex!8542 lt!2463839)))

(assert (=> d!2161449 (= (mainMatchTheorem!3897 lt!2463839 s!14361) lt!2463922)))

(declare-fun bs!1840751 () Bool)

(assert (= bs!1840751 d!2161449))

(assert (=> bs!1840751 m!7614810))

(assert (=> bs!1840751 m!7614818))

(declare-fun m!7615018 () Bool)

(assert (=> bs!1840751 m!7615018))

(assert (=> bs!1840751 m!7615014))

(assert (=> b!6895359 d!2161449))

(declare-fun bs!1840752 () Bool)

(declare-fun b!6895731 () Bool)

(assert (= bs!1840752 (and b!6895731 d!2161431)))

(declare-fun lambda!390980 () Int)

(assert (=> bs!1840752 (not (= lambda!390980 lambda!390977))))

(declare-fun bs!1840753 () Bool)

(assert (= bs!1840753 (and b!6895731 b!6895571)))

(assert (=> bs!1840753 (not (= lambda!390980 lambda!390968))))

(declare-fun bs!1840754 () Bool)

(assert (= bs!1840754 (and b!6895731 d!2161427)))

(assert (=> bs!1840754 (not (= lambda!390980 lambda!390971))))

(assert (=> bs!1840752 (not (= lambda!390980 lambda!390976))))

(declare-fun bs!1840755 () Bool)

(assert (= bs!1840755 (and b!6895731 b!6895706)))

(assert (=> bs!1840755 (= (and (= (reg!17163 lt!2463839) (reg!17163 lt!2463846)) (= lt!2463839 lt!2463846)) (= lambda!390980 lambda!390978))))

(declare-fun bs!1840756 () Bool)

(assert (= bs!1840756 (and b!6895731 b!6895355)))

(assert (=> bs!1840756 (not (= lambda!390980 lambda!390946))))

(declare-fun bs!1840757 () Bool)

(assert (= bs!1840757 (and b!6895731 b!6895363)))

(assert (=> bs!1840757 (not (= lambda!390980 lambda!390943))))

(declare-fun bs!1840758 () Bool)

(assert (= bs!1840758 (and b!6895731 b!6895564)))

(assert (=> bs!1840758 (= (and (= s!14361 (_1!37004 lt!2463840)) (= (reg!17163 lt!2463839) (reg!17163 r1!6342)) (= lt!2463839 r1!6342)) (= lambda!390980 lambda!390967))))

(assert (=> bs!1840756 (not (= lambda!390980 lambda!390945))))

(assert (=> bs!1840757 (not (= lambda!390980 lambda!390944))))

(declare-fun bs!1840759 () Bool)

(assert (= bs!1840759 (and b!6895731 b!6895713)))

(assert (=> bs!1840759 (not (= lambda!390980 lambda!390979))))

(assert (=> b!6895731 true))

(assert (=> b!6895731 true))

(declare-fun bs!1840760 () Bool)

(declare-fun b!6895738 () Bool)

(assert (= bs!1840760 (and b!6895738 d!2161431)))

(declare-fun lambda!390981 () Int)

(assert (=> bs!1840760 (= (and (= (regOne!34180 lt!2463839) r1!6342) (= (regTwo!34180 lt!2463839) lt!2463848)) (= lambda!390981 lambda!390977))))

(declare-fun bs!1840761 () Bool)

(assert (= bs!1840761 (and b!6895738 b!6895571)))

(assert (=> bs!1840761 (= (and (= s!14361 (_1!37004 lt!2463840)) (= (regOne!34180 lt!2463839) (regOne!34180 r1!6342)) (= (regTwo!34180 lt!2463839) (regTwo!34180 r1!6342))) (= lambda!390981 lambda!390968))))

(declare-fun bs!1840762 () Bool)

(assert (= bs!1840762 (and b!6895738 d!2161427)))

(assert (=> bs!1840762 (not (= lambda!390981 lambda!390971))))

(assert (=> bs!1840760 (not (= lambda!390981 lambda!390976))))

(declare-fun bs!1840763 () Bool)

(assert (= bs!1840763 (and b!6895738 b!6895706)))

(assert (=> bs!1840763 (not (= lambda!390981 lambda!390978))))

(declare-fun bs!1840764 () Bool)

(assert (= bs!1840764 (and b!6895738 b!6895731)))

(assert (=> bs!1840764 (not (= lambda!390981 lambda!390980))))

(declare-fun bs!1840765 () Bool)

(assert (= bs!1840765 (and b!6895738 b!6895355)))

(assert (=> bs!1840765 (= (and (= s!14361 (_2!37004 lt!2463840)) (= (regOne!34180 lt!2463839) r2!6280) (= (regTwo!34180 lt!2463839) r3!135)) (= lambda!390981 lambda!390946))))

(declare-fun bs!1840766 () Bool)

(assert (= bs!1840766 (and b!6895738 b!6895363)))

(assert (=> bs!1840766 (not (= lambda!390981 lambda!390943))))

(declare-fun bs!1840767 () Bool)

(assert (= bs!1840767 (and b!6895738 b!6895564)))

(assert (=> bs!1840767 (not (= lambda!390981 lambda!390967))))

(assert (=> bs!1840765 (not (= lambda!390981 lambda!390945))))

(assert (=> bs!1840766 (= (and (= (regOne!34180 lt!2463839) r1!6342) (= (regTwo!34180 lt!2463839) lt!2463848)) (= lambda!390981 lambda!390944))))

(declare-fun bs!1840768 () Bool)

(assert (= bs!1840768 (and b!6895738 b!6895713)))

(assert (=> bs!1840768 (= (and (= (regOne!34180 lt!2463839) (regOne!34180 lt!2463846)) (= (regTwo!34180 lt!2463839) (regTwo!34180 lt!2463846))) (= lambda!390981 lambda!390979))))

(assert (=> b!6895738 true))

(assert (=> b!6895738 true))

(declare-fun b!6895728 () Bool)

(declare-fun e!4153515 () Bool)

(assert (=> b!6895728 (= e!4153515 (matchRSpec!3897 (regTwo!34181 lt!2463839) s!14361))))

(declare-fun b!6895729 () Bool)

(declare-fun e!4153519 () Bool)

(declare-fun call!627345 () Bool)

(assert (=> b!6895729 (= e!4153519 call!627345)))

(declare-fun bm!627340 () Bool)

(assert (=> bm!627340 (= call!627345 (isEmpty!38712 s!14361))))

(declare-fun b!6895730 () Bool)

(declare-fun e!4153514 () Bool)

(assert (=> b!6895730 (= e!4153519 e!4153514)))

(declare-fun res!2811477 () Bool)

(assert (=> b!6895730 (= res!2811477 (not (is-EmptyLang!16834 lt!2463839)))))

(assert (=> b!6895730 (=> (not res!2811477) (not e!4153514))))

(declare-fun e!4153517 () Bool)

(declare-fun call!627346 () Bool)

(assert (=> b!6895731 (= e!4153517 call!627346)))

(declare-fun b!6895732 () Bool)

(declare-fun e!4153516 () Bool)

(declare-fun e!4153518 () Bool)

(assert (=> b!6895732 (= e!4153516 e!4153518)))

(declare-fun c!1281729 () Bool)

(assert (=> b!6895732 (= c!1281729 (is-Star!16834 lt!2463839))))

(declare-fun b!6895733 () Bool)

(declare-fun res!2811476 () Bool)

(assert (=> b!6895733 (=> res!2811476 e!4153517)))

(assert (=> b!6895733 (= res!2811476 call!627345)))

(assert (=> b!6895733 (= e!4153518 e!4153517)))

(declare-fun b!6895734 () Bool)

(declare-fun c!1281726 () Bool)

(assert (=> b!6895734 (= c!1281726 (is-ElementMatch!16834 lt!2463839))))

(declare-fun e!4153513 () Bool)

(assert (=> b!6895734 (= e!4153514 e!4153513)))

(declare-fun b!6895735 () Bool)

(declare-fun c!1281727 () Bool)

(assert (=> b!6895735 (= c!1281727 (is-Union!16834 lt!2463839))))

(assert (=> b!6895735 (= e!4153513 e!4153516)))

(declare-fun b!6895736 () Bool)

(assert (=> b!6895736 (= e!4153516 e!4153515)))

(declare-fun res!2811475 () Bool)

(assert (=> b!6895736 (= res!2811475 (matchRSpec!3897 (regOne!34181 lt!2463839) s!14361))))

(assert (=> b!6895736 (=> res!2811475 e!4153515)))

(declare-fun b!6895737 () Bool)

(assert (=> b!6895737 (= e!4153513 (= s!14361 (Cons!66467 (c!1281664 lt!2463839) Nil!66467)))))

(assert (=> b!6895738 (= e!4153518 call!627346)))

(declare-fun bm!627341 () Bool)

(assert (=> bm!627341 (= call!627346 (Exists!3842 (ite c!1281729 lambda!390980 lambda!390981)))))

(declare-fun d!2161451 () Bool)

(declare-fun c!1281728 () Bool)

(assert (=> d!2161451 (= c!1281728 (is-EmptyExpr!16834 lt!2463839))))

(assert (=> d!2161451 (= (matchRSpec!3897 lt!2463839 s!14361) e!4153519)))

(assert (= (and d!2161451 c!1281728) b!6895729))

(assert (= (and d!2161451 (not c!1281728)) b!6895730))

(assert (= (and b!6895730 res!2811477) b!6895734))

(assert (= (and b!6895734 c!1281726) b!6895737))

(assert (= (and b!6895734 (not c!1281726)) b!6895735))

(assert (= (and b!6895735 c!1281727) b!6895736))

(assert (= (and b!6895735 (not c!1281727)) b!6895732))

(assert (= (and b!6895736 (not res!2811475)) b!6895728))

(assert (= (and b!6895732 c!1281729) b!6895733))

(assert (= (and b!6895732 (not c!1281729)) b!6895738))

(assert (= (and b!6895733 (not res!2811476)) b!6895731))

(assert (= (or b!6895731 b!6895738) bm!627341))

(assert (= (or b!6895729 b!6895733) bm!627340))

(declare-fun m!7615020 () Bool)

(assert (=> b!6895728 m!7615020))

(assert (=> bm!627340 m!7614998))

(declare-fun m!7615022 () Bool)

(assert (=> b!6895736 m!7615022))

(declare-fun m!7615024 () Bool)

(assert (=> bm!627341 m!7615024))

(assert (=> b!6895359 d!2161451))

(declare-fun d!2161453 () Bool)

(declare-fun e!4153526 () Bool)

(assert (=> d!2161453 e!4153526))

(declare-fun c!1281731 () Bool)

(assert (=> d!2161453 (= c!1281731 (is-EmptyExpr!16834 lt!2463846))))

(declare-fun lt!2463925 () Bool)

(declare-fun e!4153528 () Bool)

(assert (=> d!2161453 (= lt!2463925 e!4153528)))

(declare-fun c!1281730 () Bool)

(assert (=> d!2161453 (= c!1281730 (isEmpty!38712 s!14361))))

(assert (=> d!2161453 (validRegex!8542 lt!2463846)))

(assert (=> d!2161453 (= (matchR!8979 lt!2463846 s!14361) lt!2463925)))

(declare-fun bm!627342 () Bool)

(declare-fun call!627347 () Bool)

(assert (=> bm!627342 (= call!627347 (isEmpty!38712 s!14361))))

(declare-fun b!6895743 () Bool)

(declare-fun e!4153522 () Bool)

(declare-fun e!4153523 () Bool)

(assert (=> b!6895743 (= e!4153522 e!4153523)))

(declare-fun res!2811488 () Bool)

(assert (=> b!6895743 (=> res!2811488 e!4153523)))

(assert (=> b!6895743 (= res!2811488 call!627347)))

(declare-fun b!6895744 () Bool)

(declare-fun e!4153527 () Bool)

(assert (=> b!6895744 (= e!4153527 (= (head!13831 s!14361) (c!1281664 lt!2463846)))))

(declare-fun b!6895745 () Bool)

(declare-fun e!4153524 () Bool)

(assert (=> b!6895745 (= e!4153524 (not lt!2463925))))

(declare-fun b!6895746 () Bool)

(declare-fun res!2811484 () Bool)

(assert (=> b!6895746 (=> res!2811484 e!4153523)))

(assert (=> b!6895746 (= res!2811484 (not (isEmpty!38712 (tail!12883 s!14361))))))

(declare-fun b!6895747 () Bool)

(declare-fun res!2811483 () Bool)

(declare-fun e!4153525 () Bool)

(assert (=> b!6895747 (=> res!2811483 e!4153525)))

(assert (=> b!6895747 (= res!2811483 (not (is-ElementMatch!16834 lt!2463846)))))

(assert (=> b!6895747 (= e!4153524 e!4153525)))

(declare-fun b!6895748 () Bool)

(assert (=> b!6895748 (= e!4153525 e!4153522)))

(declare-fun res!2811487 () Bool)

(assert (=> b!6895748 (=> (not res!2811487) (not e!4153522))))

(assert (=> b!6895748 (= res!2811487 (not lt!2463925))))

(declare-fun b!6895749 () Bool)

(assert (=> b!6895749 (= e!4153528 (matchR!8979 (derivativeStep!5378 lt!2463846 (head!13831 s!14361)) (tail!12883 s!14361)))))

(declare-fun b!6895750 () Bool)

(assert (=> b!6895750 (= e!4153526 (= lt!2463925 call!627347))))

(declare-fun b!6895751 () Bool)

(declare-fun res!2811489 () Bool)

(assert (=> b!6895751 (=> (not res!2811489) (not e!4153527))))

(assert (=> b!6895751 (= res!2811489 (isEmpty!38712 (tail!12883 s!14361)))))

(declare-fun b!6895752 () Bool)

(declare-fun res!2811485 () Bool)

(assert (=> b!6895752 (=> res!2811485 e!4153525)))

(assert (=> b!6895752 (= res!2811485 e!4153527)))

(declare-fun res!2811482 () Bool)

(assert (=> b!6895752 (=> (not res!2811482) (not e!4153527))))

(assert (=> b!6895752 (= res!2811482 lt!2463925)))

(declare-fun b!6895753 () Bool)

(assert (=> b!6895753 (= e!4153528 (nullable!6699 lt!2463846))))

(declare-fun b!6895754 () Bool)

(assert (=> b!6895754 (= e!4153526 e!4153524)))

(declare-fun c!1281732 () Bool)

(assert (=> b!6895754 (= c!1281732 (is-EmptyLang!16834 lt!2463846))))

(declare-fun b!6895755 () Bool)

(assert (=> b!6895755 (= e!4153523 (not (= (head!13831 s!14361) (c!1281664 lt!2463846))))))

(declare-fun b!6895756 () Bool)

(declare-fun res!2811486 () Bool)

(assert (=> b!6895756 (=> (not res!2811486) (not e!4153527))))

(assert (=> b!6895756 (= res!2811486 (not call!627347))))

(assert (= (and d!2161453 c!1281730) b!6895753))

(assert (= (and d!2161453 (not c!1281730)) b!6895749))

(assert (= (and d!2161453 c!1281731) b!6895750))

(assert (= (and d!2161453 (not c!1281731)) b!6895754))

(assert (= (and b!6895754 c!1281732) b!6895745))

(assert (= (and b!6895754 (not c!1281732)) b!6895747))

(assert (= (and b!6895747 (not res!2811483)) b!6895752))

(assert (= (and b!6895752 res!2811482) b!6895756))

(assert (= (and b!6895756 res!2811486) b!6895751))

(assert (= (and b!6895751 res!2811489) b!6895744))

(assert (= (and b!6895752 (not res!2811485)) b!6895748))

(assert (= (and b!6895748 res!2811487) b!6895743))

(assert (= (and b!6895743 (not res!2811488)) b!6895746))

(assert (= (and b!6895746 (not res!2811484)) b!6895755))

(assert (= (or b!6895750 b!6895743 b!6895756) bm!627342))

(declare-fun m!7615026 () Bool)

(assert (=> b!6895753 m!7615026))

(assert (=> b!6895755 m!7615006))

(assert (=> b!6895749 m!7615006))

(assert (=> b!6895749 m!7615006))

(declare-fun m!7615028 () Bool)

(assert (=> b!6895749 m!7615028))

(assert (=> b!6895749 m!7615010))

(assert (=> b!6895749 m!7615028))

(assert (=> b!6895749 m!7615010))

(declare-fun m!7615030 () Bool)

(assert (=> b!6895749 m!7615030))

(assert (=> d!2161453 m!7614998))

(declare-fun m!7615032 () Bool)

(assert (=> d!2161453 m!7615032))

(assert (=> b!6895746 m!7615010))

(assert (=> b!6895746 m!7615010))

(assert (=> b!6895746 m!7615016))

(assert (=> b!6895744 m!7615006))

(assert (=> bm!627342 m!7614998))

(assert (=> b!6895751 m!7615010))

(assert (=> b!6895751 m!7615010))

(assert (=> b!6895751 m!7615016))

(assert (=> b!6895359 d!2161453))

(declare-fun d!2161455 () Bool)

(assert (=> d!2161455 (= (matchR!8979 lt!2463846 s!14361) (matchRSpec!3897 lt!2463846 s!14361))))

(declare-fun lt!2463926 () Unit!160388)

(assert (=> d!2161455 (= lt!2463926 (choose!51345 lt!2463846 s!14361))))

(assert (=> d!2161455 (validRegex!8542 lt!2463846)))

(assert (=> d!2161455 (= (mainMatchTheorem!3897 lt!2463846 s!14361) lt!2463926)))

(declare-fun bs!1840769 () Bool)

(assert (= bs!1840769 d!2161455))

(assert (=> bs!1840769 m!7614812))

(assert (=> bs!1840769 m!7614820))

(declare-fun m!7615034 () Bool)

(assert (=> bs!1840769 m!7615034))

(assert (=> bs!1840769 m!7615032))

(assert (=> b!6895359 d!2161455))

(declare-fun bs!1840770 () Bool)

(declare-fun b!6895760 () Bool)

(assert (= bs!1840770 (and b!6895760 d!2161431)))

(declare-fun lambda!390984 () Int)

(assert (=> bs!1840770 (not (= lambda!390984 lambda!390977))))

(declare-fun bs!1840771 () Bool)

(assert (= bs!1840771 (and b!6895760 b!6895571)))

(assert (=> bs!1840771 (not (= lambda!390984 lambda!390968))))

(declare-fun bs!1840772 () Bool)

(assert (= bs!1840772 (and b!6895760 d!2161427)))

(assert (=> bs!1840772 (not (= lambda!390984 lambda!390971))))

(assert (=> bs!1840770 (not (= lambda!390984 lambda!390976))))

(declare-fun bs!1840773 () Bool)

(assert (= bs!1840773 (and b!6895760 b!6895706)))

(assert (=> bs!1840773 (= (and (= (_2!37004 lt!2463840) s!14361) (= (reg!17163 lt!2463848) (reg!17163 lt!2463846)) (= lt!2463848 lt!2463846)) (= lambda!390984 lambda!390978))))

(declare-fun bs!1840774 () Bool)

(assert (= bs!1840774 (and b!6895760 b!6895738)))

(assert (=> bs!1840774 (not (= lambda!390984 lambda!390981))))

(declare-fun bs!1840775 () Bool)

(assert (= bs!1840775 (and b!6895760 b!6895731)))

(assert (=> bs!1840775 (= (and (= (_2!37004 lt!2463840) s!14361) (= (reg!17163 lt!2463848) (reg!17163 lt!2463839)) (= lt!2463848 lt!2463839)) (= lambda!390984 lambda!390980))))

(declare-fun bs!1840776 () Bool)

(assert (= bs!1840776 (and b!6895760 b!6895355)))

(assert (=> bs!1840776 (not (= lambda!390984 lambda!390946))))

(declare-fun bs!1840777 () Bool)

(assert (= bs!1840777 (and b!6895760 b!6895363)))

(assert (=> bs!1840777 (not (= lambda!390984 lambda!390943))))

(declare-fun bs!1840778 () Bool)

(assert (= bs!1840778 (and b!6895760 b!6895564)))

(assert (=> bs!1840778 (= (and (= (_2!37004 lt!2463840) (_1!37004 lt!2463840)) (= (reg!17163 lt!2463848) (reg!17163 r1!6342)) (= lt!2463848 r1!6342)) (= lambda!390984 lambda!390967))))

(assert (=> bs!1840776 (not (= lambda!390984 lambda!390945))))

(assert (=> bs!1840777 (not (= lambda!390984 lambda!390944))))

(declare-fun bs!1840779 () Bool)

(assert (= bs!1840779 (and b!6895760 b!6895713)))

(assert (=> bs!1840779 (not (= lambda!390984 lambda!390979))))

(assert (=> b!6895760 true))

(assert (=> b!6895760 true))

(declare-fun bs!1840780 () Bool)

(declare-fun b!6895767 () Bool)

(assert (= bs!1840780 (and b!6895767 d!2161431)))

(declare-fun lambda!390985 () Int)

(assert (=> bs!1840780 (= (and (= (_2!37004 lt!2463840) s!14361) (= (regOne!34180 lt!2463848) r1!6342) (= (regTwo!34180 lt!2463848) lt!2463848)) (= lambda!390985 lambda!390977))))

(declare-fun bs!1840781 () Bool)

(assert (= bs!1840781 (and b!6895767 b!6895571)))

(assert (=> bs!1840781 (= (and (= (_2!37004 lt!2463840) (_1!37004 lt!2463840)) (= (regOne!34180 lt!2463848) (regOne!34180 r1!6342)) (= (regTwo!34180 lt!2463848) (regTwo!34180 r1!6342))) (= lambda!390985 lambda!390968))))

(declare-fun bs!1840782 () Bool)

(assert (= bs!1840782 (and b!6895767 d!2161427)))

(assert (=> bs!1840782 (not (= lambda!390985 lambda!390971))))

(assert (=> bs!1840780 (not (= lambda!390985 lambda!390976))))

(declare-fun bs!1840783 () Bool)

(assert (= bs!1840783 (and b!6895767 b!6895706)))

(assert (=> bs!1840783 (not (= lambda!390985 lambda!390978))))

(declare-fun bs!1840784 () Bool)

(assert (= bs!1840784 (and b!6895767 b!6895738)))

(assert (=> bs!1840784 (= (and (= (_2!37004 lt!2463840) s!14361) (= (regOne!34180 lt!2463848) (regOne!34180 lt!2463839)) (= (regTwo!34180 lt!2463848) (regTwo!34180 lt!2463839))) (= lambda!390985 lambda!390981))))

(declare-fun bs!1840785 () Bool)

(assert (= bs!1840785 (and b!6895767 b!6895731)))

(assert (=> bs!1840785 (not (= lambda!390985 lambda!390980))))

(declare-fun bs!1840786 () Bool)

(assert (= bs!1840786 (and b!6895767 b!6895355)))

(assert (=> bs!1840786 (= (and (= (regOne!34180 lt!2463848) r2!6280) (= (regTwo!34180 lt!2463848) r3!135)) (= lambda!390985 lambda!390946))))

(declare-fun bs!1840787 () Bool)

(assert (= bs!1840787 (and b!6895767 b!6895760)))

(assert (=> bs!1840787 (not (= lambda!390985 lambda!390984))))

(declare-fun bs!1840788 () Bool)

(assert (= bs!1840788 (and b!6895767 b!6895363)))

(assert (=> bs!1840788 (not (= lambda!390985 lambda!390943))))

(declare-fun bs!1840789 () Bool)

(assert (= bs!1840789 (and b!6895767 b!6895564)))

(assert (=> bs!1840789 (not (= lambda!390985 lambda!390967))))

(assert (=> bs!1840786 (not (= lambda!390985 lambda!390945))))

(assert (=> bs!1840788 (= (and (= (_2!37004 lt!2463840) s!14361) (= (regOne!34180 lt!2463848) r1!6342) (= (regTwo!34180 lt!2463848) lt!2463848)) (= lambda!390985 lambda!390944))))

(declare-fun bs!1840790 () Bool)

(assert (= bs!1840790 (and b!6895767 b!6895713)))

(assert (=> bs!1840790 (= (and (= (_2!37004 lt!2463840) s!14361) (= (regOne!34180 lt!2463848) (regOne!34180 lt!2463846)) (= (regTwo!34180 lt!2463848) (regTwo!34180 lt!2463846))) (= lambda!390985 lambda!390979))))

(assert (=> b!6895767 true))

(assert (=> b!6895767 true))

(declare-fun b!6895757 () Bool)

(declare-fun e!4153531 () Bool)

(assert (=> b!6895757 (= e!4153531 (matchRSpec!3897 (regTwo!34181 lt!2463848) (_2!37004 lt!2463840)))))

(declare-fun b!6895758 () Bool)

(declare-fun e!4153535 () Bool)

(declare-fun call!627348 () Bool)

(assert (=> b!6895758 (= e!4153535 call!627348)))

(declare-fun bm!627343 () Bool)

(assert (=> bm!627343 (= call!627348 (isEmpty!38712 (_2!37004 lt!2463840)))))

(declare-fun b!6895759 () Bool)

(declare-fun e!4153530 () Bool)

(assert (=> b!6895759 (= e!4153535 e!4153530)))

(declare-fun res!2811492 () Bool)

(assert (=> b!6895759 (= res!2811492 (not (is-EmptyLang!16834 lt!2463848)))))

(assert (=> b!6895759 (=> (not res!2811492) (not e!4153530))))

(declare-fun e!4153533 () Bool)

(declare-fun call!627349 () Bool)

(assert (=> b!6895760 (= e!4153533 call!627349)))

(declare-fun b!6895761 () Bool)

(declare-fun e!4153532 () Bool)

(declare-fun e!4153534 () Bool)

(assert (=> b!6895761 (= e!4153532 e!4153534)))

(declare-fun c!1281736 () Bool)

(assert (=> b!6895761 (= c!1281736 (is-Star!16834 lt!2463848))))

(declare-fun b!6895762 () Bool)

(declare-fun res!2811491 () Bool)

(assert (=> b!6895762 (=> res!2811491 e!4153533)))

(assert (=> b!6895762 (= res!2811491 call!627348)))

(assert (=> b!6895762 (= e!4153534 e!4153533)))

(declare-fun b!6895763 () Bool)

(declare-fun c!1281733 () Bool)

(assert (=> b!6895763 (= c!1281733 (is-ElementMatch!16834 lt!2463848))))

(declare-fun e!4153529 () Bool)

(assert (=> b!6895763 (= e!4153530 e!4153529)))

(declare-fun b!6895764 () Bool)

(declare-fun c!1281734 () Bool)

(assert (=> b!6895764 (= c!1281734 (is-Union!16834 lt!2463848))))

(assert (=> b!6895764 (= e!4153529 e!4153532)))

(declare-fun b!6895765 () Bool)

(assert (=> b!6895765 (= e!4153532 e!4153531)))

(declare-fun res!2811490 () Bool)

(assert (=> b!6895765 (= res!2811490 (matchRSpec!3897 (regOne!34181 lt!2463848) (_2!37004 lt!2463840)))))

(assert (=> b!6895765 (=> res!2811490 e!4153531)))

(declare-fun b!6895766 () Bool)

(assert (=> b!6895766 (= e!4153529 (= (_2!37004 lt!2463840) (Cons!66467 (c!1281664 lt!2463848) Nil!66467)))))

(assert (=> b!6895767 (= e!4153534 call!627349)))

(declare-fun bm!627344 () Bool)

(assert (=> bm!627344 (= call!627349 (Exists!3842 (ite c!1281736 lambda!390984 lambda!390985)))))

(declare-fun d!2161457 () Bool)

(declare-fun c!1281735 () Bool)

(assert (=> d!2161457 (= c!1281735 (is-EmptyExpr!16834 lt!2463848))))

(assert (=> d!2161457 (= (matchRSpec!3897 lt!2463848 (_2!37004 lt!2463840)) e!4153535)))

(assert (= (and d!2161457 c!1281735) b!6895758))

(assert (= (and d!2161457 (not c!1281735)) b!6895759))

(assert (= (and b!6895759 res!2811492) b!6895763))

(assert (= (and b!6895763 c!1281733) b!6895766))

(assert (= (and b!6895763 (not c!1281733)) b!6895764))

(assert (= (and b!6895764 c!1281734) b!6895765))

(assert (= (and b!6895764 (not c!1281734)) b!6895761))

(assert (= (and b!6895765 (not res!2811490)) b!6895757))

(assert (= (and b!6895761 c!1281736) b!6895762))

(assert (= (and b!6895761 (not c!1281736)) b!6895767))

(assert (= (and b!6895762 (not res!2811491)) b!6895760))

(assert (= (or b!6895760 b!6895767) bm!627344))

(assert (= (or b!6895758 b!6895762) bm!627343))

(declare-fun m!7615036 () Bool)

(assert (=> b!6895757 m!7615036))

(assert (=> bm!627343 m!7614954))

(declare-fun m!7615038 () Bool)

(assert (=> b!6895765 m!7615038))

(declare-fun m!7615040 () Bool)

(assert (=> bm!627344 m!7615040))

(assert (=> b!6895355 d!2161457))

(declare-fun d!2161459 () Bool)

(assert (=> d!2161459 (= (matchR!8979 lt!2463848 (_2!37004 lt!2463840)) (matchRSpec!3897 lt!2463848 (_2!37004 lt!2463840)))))

(declare-fun lt!2463927 () Unit!160388)

(assert (=> d!2161459 (= lt!2463927 (choose!51345 lt!2463848 (_2!37004 lt!2463840)))))

(assert (=> d!2161459 (validRegex!8542 lt!2463848)))

(assert (=> d!2161459 (= (mainMatchTheorem!3897 lt!2463848 (_2!37004 lt!2463840)) lt!2463927)))

(declare-fun bs!1840791 () Bool)

(assert (= bs!1840791 d!2161459))

(assert (=> bs!1840791 m!7614804))

(assert (=> bs!1840791 m!7614770))

(declare-fun m!7615042 () Bool)

(assert (=> bs!1840791 m!7615042))

(assert (=> bs!1840791 m!7614956))

(assert (=> b!6895355 d!2161459))

(declare-fun d!2161461 () Bool)

(assert (=> d!2161461 (= (Exists!3842 lambda!390946) (choose!51344 lambda!390946))))

(declare-fun bs!1840792 () Bool)

(assert (= bs!1840792 d!2161461))

(declare-fun m!7615044 () Bool)

(assert (=> bs!1840792 m!7615044))

(assert (=> b!6895355 d!2161461))

(declare-fun d!2161463 () Bool)

(assert (=> d!2161463 (= (Exists!3842 lambda!390945) (choose!51344 lambda!390945))))

(declare-fun bs!1840793 () Bool)

(assert (= bs!1840793 d!2161463))

(declare-fun m!7615046 () Bool)

(assert (=> bs!1840793 m!7615046))

(assert (=> b!6895355 d!2161463))

(declare-fun b!6895772 () Bool)

(declare-fun e!4153542 () Option!16613)

(assert (=> b!6895772 (= e!4153542 None!16612)))

(declare-fun b!6895773 () Bool)

(declare-fun e!4153540 () Bool)

(declare-fun lt!2463929 () Option!16613)

(assert (=> b!6895773 (= e!4153540 (= (++!14893 (_1!37004 (get!23202 lt!2463929)) (_2!37004 (get!23202 lt!2463929))) (_2!37004 lt!2463840)))))

(declare-fun d!2161465 () Bool)

(declare-fun e!4153541 () Bool)

(assert (=> d!2161465 e!4153541))

(declare-fun res!2811497 () Bool)

(assert (=> d!2161465 (=> res!2811497 e!4153541)))

(assert (=> d!2161465 (= res!2811497 e!4153540)))

(declare-fun res!2811500 () Bool)

(assert (=> d!2161465 (=> (not res!2811500) (not e!4153540))))

(assert (=> d!2161465 (= res!2811500 (isDefined!13316 lt!2463929))))

(declare-fun e!4153539 () Option!16613)

(assert (=> d!2161465 (= lt!2463929 e!4153539)))

(declare-fun c!1281737 () Bool)

(declare-fun e!4153538 () Bool)

(assert (=> d!2161465 (= c!1281737 e!4153538)))

(declare-fun res!2811498 () Bool)

(assert (=> d!2161465 (=> (not res!2811498) (not e!4153538))))

(assert (=> d!2161465 (= res!2811498 (matchR!8979 r2!6280 Nil!66467))))

(assert (=> d!2161465 (validRegex!8542 r2!6280)))

(assert (=> d!2161465 (= (findConcatSeparation!3027 r2!6280 r3!135 Nil!66467 (_2!37004 lt!2463840) (_2!37004 lt!2463840)) lt!2463929)))

(declare-fun b!6895774 () Bool)

(declare-fun lt!2463928 () Unit!160388)

(declare-fun lt!2463930 () Unit!160388)

(assert (=> b!6895774 (= lt!2463928 lt!2463930)))

(assert (=> b!6895774 (= (++!14893 (++!14893 Nil!66467 (Cons!66467 (h!72915 (_2!37004 lt!2463840)) Nil!66467)) (t!380334 (_2!37004 lt!2463840))) (_2!37004 lt!2463840))))

(assert (=> b!6895774 (= lt!2463930 (lemmaMoveElementToOtherListKeepsConcatEq!2786 Nil!66467 (h!72915 (_2!37004 lt!2463840)) (t!380334 (_2!37004 lt!2463840)) (_2!37004 lt!2463840)))))

(assert (=> b!6895774 (= e!4153542 (findConcatSeparation!3027 r2!6280 r3!135 (++!14893 Nil!66467 (Cons!66467 (h!72915 (_2!37004 lt!2463840)) Nil!66467)) (t!380334 (_2!37004 lt!2463840)) (_2!37004 lt!2463840)))))

(declare-fun b!6895775 () Bool)

(assert (=> b!6895775 (= e!4153539 e!4153542)))

(declare-fun c!1281738 () Bool)

(assert (=> b!6895775 (= c!1281738 (is-Nil!66467 (_2!37004 lt!2463840)))))

(declare-fun b!6895776 () Bool)

(assert (=> b!6895776 (= e!4153539 (Some!16612 (tuple2!67403 Nil!66467 (_2!37004 lt!2463840))))))

(declare-fun b!6895777 () Bool)

(assert (=> b!6895777 (= e!4153538 (matchR!8979 r3!135 (_2!37004 lt!2463840)))))

(declare-fun b!6895778 () Bool)

(assert (=> b!6895778 (= e!4153541 (not (isDefined!13316 lt!2463929)))))

(declare-fun b!6895779 () Bool)

(declare-fun res!2811501 () Bool)

(assert (=> b!6895779 (=> (not res!2811501) (not e!4153540))))

(assert (=> b!6895779 (= res!2811501 (matchR!8979 r3!135 (_2!37004 (get!23202 lt!2463929))))))

(declare-fun b!6895780 () Bool)

(declare-fun res!2811499 () Bool)

(assert (=> b!6895780 (=> (not res!2811499) (not e!4153540))))

(assert (=> b!6895780 (= res!2811499 (matchR!8979 r2!6280 (_1!37004 (get!23202 lt!2463929))))))

(assert (= (and d!2161465 res!2811498) b!6895777))

(assert (= (and d!2161465 c!1281737) b!6895776))

(assert (= (and d!2161465 (not c!1281737)) b!6895775))

(assert (= (and b!6895775 c!1281738) b!6895772))

(assert (= (and b!6895775 (not c!1281738)) b!6895774))

(assert (= (and d!2161465 res!2811500) b!6895780))

(assert (= (and b!6895780 res!2811499) b!6895779))

(assert (= (and b!6895779 res!2811501) b!6895773))

(assert (= (and d!2161465 (not res!2811497)) b!6895778))

(declare-fun m!7615048 () Bool)

(assert (=> b!6895780 m!7615048))

(declare-fun m!7615050 () Bool)

(assert (=> b!6895780 m!7615050))

(declare-fun m!7615052 () Bool)

(assert (=> d!2161465 m!7615052))

(declare-fun m!7615054 () Bool)

(assert (=> d!2161465 m!7615054))

(assert (=> d!2161465 m!7614786))

(assert (=> b!6895778 m!7615052))

(declare-fun m!7615056 () Bool)

(assert (=> b!6895774 m!7615056))

(assert (=> b!6895774 m!7615056))

(declare-fun m!7615058 () Bool)

(assert (=> b!6895774 m!7615058))

(declare-fun m!7615060 () Bool)

(assert (=> b!6895774 m!7615060))

(assert (=> b!6895774 m!7615056))

(declare-fun m!7615062 () Bool)

(assert (=> b!6895774 m!7615062))

(declare-fun m!7615064 () Bool)

(assert (=> b!6895777 m!7615064))

(assert (=> b!6895773 m!7615048))

(declare-fun m!7615066 () Bool)

(assert (=> b!6895773 m!7615066))

(assert (=> b!6895779 m!7615048))

(declare-fun m!7615068 () Bool)

(assert (=> b!6895779 m!7615068))

(assert (=> b!6895355 d!2161465))

(declare-fun d!2161467 () Bool)

(assert (=> d!2161467 (= (isDefined!13316 (findConcatSeparation!3027 r2!6280 r3!135 Nil!66467 (_2!37004 lt!2463840) (_2!37004 lt!2463840))) (not (isEmpty!38713 (findConcatSeparation!3027 r2!6280 r3!135 Nil!66467 (_2!37004 lt!2463840) (_2!37004 lt!2463840)))))))

(declare-fun bs!1840794 () Bool)

(assert (= bs!1840794 d!2161467))

(assert (=> bs!1840794 m!7614776))

(declare-fun m!7615070 () Bool)

(assert (=> bs!1840794 m!7615070))

(assert (=> b!6895355 d!2161467))

(declare-fun bs!1840795 () Bool)

(declare-fun d!2161469 () Bool)

(assert (= bs!1840795 (and d!2161469 d!2161431)))

(declare-fun lambda!390988 () Int)

(assert (=> bs!1840795 (not (= lambda!390988 lambda!390977))))

(declare-fun bs!1840796 () Bool)

(assert (= bs!1840796 (and d!2161469 b!6895571)))

(assert (=> bs!1840796 (not (= lambda!390988 lambda!390968))))

(declare-fun bs!1840797 () Bool)

(assert (= bs!1840797 (and d!2161469 d!2161427)))

(assert (=> bs!1840797 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390988 lambda!390971))))

(declare-fun bs!1840798 () Bool)

(assert (= bs!1840798 (and d!2161469 b!6895767)))

(assert (=> bs!1840798 (not (= lambda!390988 lambda!390985))))

(assert (=> bs!1840795 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390988 lambda!390976))))

(declare-fun bs!1840799 () Bool)

(assert (= bs!1840799 (and d!2161469 b!6895706)))

(assert (=> bs!1840799 (not (= lambda!390988 lambda!390978))))

(declare-fun bs!1840800 () Bool)

(assert (= bs!1840800 (and d!2161469 b!6895738)))

(assert (=> bs!1840800 (not (= lambda!390988 lambda!390981))))

(declare-fun bs!1840801 () Bool)

(assert (= bs!1840801 (and d!2161469 b!6895731)))

(assert (=> bs!1840801 (not (= lambda!390988 lambda!390980))))

(declare-fun bs!1840802 () Bool)

(assert (= bs!1840802 (and d!2161469 b!6895355)))

(assert (=> bs!1840802 (not (= lambda!390988 lambda!390946))))

(declare-fun bs!1840803 () Bool)

(assert (= bs!1840803 (and d!2161469 b!6895760)))

(assert (=> bs!1840803 (not (= lambda!390988 lambda!390984))))

(declare-fun bs!1840804 () Bool)

(assert (= bs!1840804 (and d!2161469 b!6895363)))

(assert (=> bs!1840804 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390988 lambda!390943))))

(declare-fun bs!1840805 () Bool)

(assert (= bs!1840805 (and d!2161469 b!6895564)))

(assert (=> bs!1840805 (not (= lambda!390988 lambda!390967))))

(assert (=> bs!1840802 (= lambda!390988 lambda!390945)))

(assert (=> bs!1840804 (not (= lambda!390988 lambda!390944))))

(declare-fun bs!1840807 () Bool)

(assert (= bs!1840807 (and d!2161469 b!6895713)))

(assert (=> bs!1840807 (not (= lambda!390988 lambda!390979))))

(assert (=> d!2161469 true))

(assert (=> d!2161469 true))

(assert (=> d!2161469 true))

(declare-fun lambda!390990 () Int)

(assert (=> bs!1840795 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390990 lambda!390977))))

(assert (=> bs!1840796 (= (and (= (_2!37004 lt!2463840) (_1!37004 lt!2463840)) (= r2!6280 (regOne!34180 r1!6342)) (= r3!135 (regTwo!34180 r1!6342))) (= lambda!390990 lambda!390968))))

(declare-fun bs!1840809 () Bool)

(assert (= bs!1840809 d!2161469))

(assert (=> bs!1840809 (not (= lambda!390990 lambda!390988))))

(assert (=> bs!1840797 (not (= lambda!390990 lambda!390971))))

(assert (=> bs!1840798 (= (and (= r2!6280 (regOne!34180 lt!2463848)) (= r3!135 (regTwo!34180 lt!2463848))) (= lambda!390990 lambda!390985))))

(assert (=> bs!1840795 (not (= lambda!390990 lambda!390976))))

(assert (=> bs!1840799 (not (= lambda!390990 lambda!390978))))

(assert (=> bs!1840800 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 (regOne!34180 lt!2463839)) (= r3!135 (regTwo!34180 lt!2463839))) (= lambda!390990 lambda!390981))))

(assert (=> bs!1840801 (not (= lambda!390990 lambda!390980))))

(assert (=> bs!1840802 (= lambda!390990 lambda!390946)))

(assert (=> bs!1840803 (not (= lambda!390990 lambda!390984))))

(assert (=> bs!1840804 (not (= lambda!390990 lambda!390943))))

(assert (=> bs!1840805 (not (= lambda!390990 lambda!390967))))

(assert (=> bs!1840802 (not (= lambda!390990 lambda!390945))))

(assert (=> bs!1840804 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390990 lambda!390944))))

(assert (=> bs!1840807 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 (regOne!34180 lt!2463846)) (= r3!135 (regTwo!34180 lt!2463846))) (= lambda!390990 lambda!390979))))

(assert (=> d!2161469 true))

(assert (=> d!2161469 true))

(assert (=> d!2161469 true))

(assert (=> d!2161469 (= (Exists!3842 lambda!390988) (Exists!3842 lambda!390990))))

(declare-fun lt!2463931 () Unit!160388)

(assert (=> d!2161469 (= lt!2463931 (choose!51347 r2!6280 r3!135 (_2!37004 lt!2463840)))))

(assert (=> d!2161469 (validRegex!8542 r2!6280)))

(assert (=> d!2161469 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2315 r2!6280 r3!135 (_2!37004 lt!2463840)) lt!2463931)))

(declare-fun m!7615072 () Bool)

(assert (=> bs!1840809 m!7615072))

(declare-fun m!7615074 () Bool)

(assert (=> bs!1840809 m!7615074))

(declare-fun m!7615076 () Bool)

(assert (=> bs!1840809 m!7615076))

(assert (=> bs!1840809 m!7614786))

(assert (=> b!6895355 d!2161469))

(declare-fun bs!1840811 () Bool)

(declare-fun d!2161471 () Bool)

(assert (= bs!1840811 (and d!2161471 d!2161431)))

(declare-fun lambda!390992 () Int)

(assert (=> bs!1840811 (not (= lambda!390992 lambda!390977))))

(declare-fun bs!1840812 () Bool)

(assert (= bs!1840812 (and d!2161471 d!2161469)))

(assert (=> bs!1840812 (not (= lambda!390992 lambda!390990))))

(declare-fun bs!1840813 () Bool)

(assert (= bs!1840813 (and d!2161471 b!6895571)))

(assert (=> bs!1840813 (not (= lambda!390992 lambda!390968))))

(assert (=> bs!1840812 (= lambda!390992 lambda!390988)))

(declare-fun bs!1840814 () Bool)

(assert (= bs!1840814 (and d!2161471 d!2161427)))

(assert (=> bs!1840814 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390992 lambda!390971))))

(declare-fun bs!1840815 () Bool)

(assert (= bs!1840815 (and d!2161471 b!6895767)))

(assert (=> bs!1840815 (not (= lambda!390992 lambda!390985))))

(assert (=> bs!1840811 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390992 lambda!390976))))

(declare-fun bs!1840816 () Bool)

(assert (= bs!1840816 (and d!2161471 b!6895706)))

(assert (=> bs!1840816 (not (= lambda!390992 lambda!390978))))

(declare-fun bs!1840817 () Bool)

(assert (= bs!1840817 (and d!2161471 b!6895738)))

(assert (=> bs!1840817 (not (= lambda!390992 lambda!390981))))

(declare-fun bs!1840818 () Bool)

(assert (= bs!1840818 (and d!2161471 b!6895731)))

(assert (=> bs!1840818 (not (= lambda!390992 lambda!390980))))

(declare-fun bs!1840819 () Bool)

(assert (= bs!1840819 (and d!2161471 b!6895355)))

(assert (=> bs!1840819 (not (= lambda!390992 lambda!390946))))

(declare-fun bs!1840820 () Bool)

(assert (= bs!1840820 (and d!2161471 b!6895760)))

(assert (=> bs!1840820 (not (= lambda!390992 lambda!390984))))

(declare-fun bs!1840821 () Bool)

(assert (= bs!1840821 (and d!2161471 b!6895363)))

(assert (=> bs!1840821 (= (and (= (_2!37004 lt!2463840) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2463848)) (= lambda!390992 lambda!390943))))

(declare-fun bs!1840822 () Bool)

(assert (= bs!1840822 (and d!2161471 b!6895564)))

(assert (=> bs!1840822 (not (= lambda!390992 lambda!390967))))

(assert (=> bs!1840819 (= lambda!390992 lambda!390945)))

(assert (=> bs!1840821 (not (= lambda!390992 lambda!390944))))

(declare-fun bs!1840823 () Bool)

(assert (= bs!1840823 (and d!2161471 b!6895713)))

(assert (=> bs!1840823 (not (= lambda!390992 lambda!390979))))

(assert (=> d!2161471 true))

(assert (=> d!2161471 true))

(assert (=> d!2161471 true))

(assert (=> d!2161471 (= (isDefined!13316 (findConcatSeparation!3027 r2!6280 r3!135 Nil!66467 (_2!37004 lt!2463840) (_2!37004 lt!2463840))) (Exists!3842 lambda!390992))))

(declare-fun lt!2463933 () Unit!160388)

(assert (=> d!2161471 (= lt!2463933 (choose!51346 r2!6280 r3!135 (_2!37004 lt!2463840)))))

(assert (=> d!2161471 (validRegex!8542 r2!6280)))

(assert (=> d!2161471 (= (lemmaFindConcatSeparationEquivalentToExists!2789 r2!6280 r3!135 (_2!37004 lt!2463840)) lt!2463933)))

(declare-fun bs!1840824 () Bool)

(assert (= bs!1840824 d!2161471))

(assert (=> bs!1840824 m!7614776))

(assert (=> bs!1840824 m!7614784))

(assert (=> bs!1840824 m!7614776))

(declare-fun m!7615084 () Bool)

(assert (=> bs!1840824 m!7615084))

(assert (=> bs!1840824 m!7614786))

(declare-fun m!7615086 () Bool)

(assert (=> bs!1840824 m!7615086))

(assert (=> b!6895355 d!2161471))

(declare-fun d!2161475 () Bool)

(declare-fun e!4153548 () Bool)

(assert (=> d!2161475 e!4153548))

(declare-fun res!2811506 () Bool)

(assert (=> d!2161475 (=> (not res!2811506) (not e!4153548))))

(declare-fun lt!2463936 () List!66591)

(declare-fun content!13055 (List!66591) (Set C!33938))

(assert (=> d!2161475 (= res!2811506 (= (content!13055 lt!2463936) (set.union (content!13055 Nil!66467) (content!13055 (_2!37004 lt!2463840)))))))

(declare-fun e!4153547 () List!66591)

(assert (=> d!2161475 (= lt!2463936 e!4153547)))

(declare-fun c!1281741 () Bool)

(assert (=> d!2161475 (= c!1281741 (is-Nil!66467 Nil!66467))))

(assert (=> d!2161475 (= (++!14893 Nil!66467 (_2!37004 lt!2463840)) lt!2463936)))

(declare-fun b!6895791 () Bool)

(declare-fun res!2811507 () Bool)

(assert (=> b!6895791 (=> (not res!2811507) (not e!4153548))))

(declare-fun size!40752 (List!66591) Int)

(assert (=> b!6895791 (= res!2811507 (= (size!40752 lt!2463936) (+ (size!40752 Nil!66467) (size!40752 (_2!37004 lt!2463840)))))))

(declare-fun b!6895789 () Bool)

(assert (=> b!6895789 (= e!4153547 (_2!37004 lt!2463840))))

(declare-fun b!6895792 () Bool)

(assert (=> b!6895792 (= e!4153548 (or (not (= (_2!37004 lt!2463840) Nil!66467)) (= lt!2463936 Nil!66467)))))

(declare-fun b!6895790 () Bool)

(assert (=> b!6895790 (= e!4153547 (Cons!66467 (h!72915 Nil!66467) (++!14893 (t!380334 Nil!66467) (_2!37004 lt!2463840))))))

(assert (= (and d!2161475 c!1281741) b!6895789))

(assert (= (and d!2161475 (not c!1281741)) b!6895790))

(assert (= (and d!2161475 res!2811506) b!6895791))

(assert (= (and b!6895791 res!2811507) b!6895792))

(declare-fun m!7615088 () Bool)

(assert (=> d!2161475 m!7615088))

(declare-fun m!7615090 () Bool)

(assert (=> d!2161475 m!7615090))

(declare-fun m!7615092 () Bool)

(assert (=> d!2161475 m!7615092))

(declare-fun m!7615094 () Bool)

(assert (=> b!6895791 m!7615094))

(declare-fun m!7615096 () Bool)

(assert (=> b!6895791 m!7615096))

(declare-fun m!7615098 () Bool)

(assert (=> b!6895791 m!7615098))

(declare-fun m!7615100 () Bool)

(assert (=> b!6895790 m!7615100))

(assert (=> b!6895355 d!2161475))

(declare-fun bm!627345 () Bool)

(declare-fun call!627351 () Bool)

(declare-fun c!1281742 () Bool)

(assert (=> bm!627345 (= call!627351 (validRegex!8542 (ite c!1281742 (regTwo!34181 r3!135) (regOne!34180 r3!135))))))

(declare-fun bm!627346 () Bool)

(declare-fun call!627352 () Bool)

(declare-fun c!1281743 () Bool)

(assert (=> bm!627346 (= call!627352 (validRegex!8542 (ite c!1281743 (reg!17163 r3!135) (ite c!1281742 (regOne!34181 r3!135) (regTwo!34180 r3!135)))))))

(declare-fun b!6895793 () Bool)

(declare-fun e!4153552 () Bool)

(assert (=> b!6895793 (= e!4153552 call!627351)))

(declare-fun b!6895794 () Bool)

(declare-fun res!2811508 () Bool)

(assert (=> b!6895794 (=> (not res!2811508) (not e!4153552))))

(declare-fun call!627350 () Bool)

(assert (=> b!6895794 (= res!2811508 call!627350)))

(declare-fun e!4153550 () Bool)

(assert (=> b!6895794 (= e!4153550 e!4153552)))

(declare-fun d!2161479 () Bool)

(declare-fun res!2811512 () Bool)

(declare-fun e!4153549 () Bool)

(assert (=> d!2161479 (=> res!2811512 e!4153549)))

(assert (=> d!2161479 (= res!2811512 (is-ElementMatch!16834 r3!135))))

(assert (=> d!2161479 (= (validRegex!8542 r3!135) e!4153549)))

(declare-fun b!6895795 () Bool)

(declare-fun e!4153553 () Bool)

(assert (=> b!6895795 (= e!4153553 call!627350)))

(declare-fun b!6895796 () Bool)

(declare-fun e!4153554 () Bool)

(declare-fun e!4153555 () Bool)

(assert (=> b!6895796 (= e!4153554 e!4153555)))

(declare-fun res!2811510 () Bool)

(assert (=> b!6895796 (= res!2811510 (not (nullable!6699 (reg!17163 r3!135))))))

(assert (=> b!6895796 (=> (not res!2811510) (not e!4153555))))

(declare-fun b!6895797 () Bool)

(declare-fun res!2811511 () Bool)

(declare-fun e!4153551 () Bool)

(assert (=> b!6895797 (=> res!2811511 e!4153551)))

(assert (=> b!6895797 (= res!2811511 (not (is-Concat!25679 r3!135)))))

(assert (=> b!6895797 (= e!4153550 e!4153551)))

(declare-fun b!6895798 () Bool)

(assert (=> b!6895798 (= e!4153555 call!627352)))

(declare-fun bm!627347 () Bool)

(assert (=> bm!627347 (= call!627350 call!627352)))

(declare-fun b!6895799 () Bool)

(assert (=> b!6895799 (= e!4153549 e!4153554)))

(assert (=> b!6895799 (= c!1281743 (is-Star!16834 r3!135))))

(declare-fun b!6895800 () Bool)

(assert (=> b!6895800 (= e!4153554 e!4153550)))

(assert (=> b!6895800 (= c!1281742 (is-Union!16834 r3!135))))

(declare-fun b!6895801 () Bool)

(assert (=> b!6895801 (= e!4153551 e!4153553)))

(declare-fun res!2811509 () Bool)

(assert (=> b!6895801 (=> (not res!2811509) (not e!4153553))))

(assert (=> b!6895801 (= res!2811509 call!627351)))

(assert (= (and d!2161479 (not res!2811512)) b!6895799))

(assert (= (and b!6895799 c!1281743) b!6895796))

(assert (= (and b!6895799 (not c!1281743)) b!6895800))

(assert (= (and b!6895796 res!2811510) b!6895798))

(assert (= (and b!6895800 c!1281742) b!6895794))

(assert (= (and b!6895800 (not c!1281742)) b!6895797))

(assert (= (and b!6895794 res!2811508) b!6895793))

(assert (= (and b!6895797 (not res!2811511)) b!6895801))

(assert (= (and b!6895801 res!2811509) b!6895795))

(assert (= (or b!6895794 b!6895795) bm!627347))

(assert (= (or b!6895793 b!6895801) bm!627345))

(assert (= (or b!6895798 bm!627347) bm!627346))

(declare-fun m!7615102 () Bool)

(assert (=> bm!627345 m!7615102))

(declare-fun m!7615104 () Bool)

(assert (=> bm!627346 m!7615104))

(declare-fun m!7615106 () Bool)

(assert (=> b!6895796 m!7615106))

(assert (=> b!6895354 d!2161479))

(declare-fun bm!627348 () Bool)

(declare-fun call!627354 () Bool)

(declare-fun c!1281744 () Bool)

(assert (=> bm!627348 (= call!627354 (validRegex!8542 (ite c!1281744 (regTwo!34181 r1!6342) (regOne!34180 r1!6342))))))

(declare-fun c!1281745 () Bool)

(declare-fun bm!627349 () Bool)

(declare-fun call!627355 () Bool)

(assert (=> bm!627349 (= call!627355 (validRegex!8542 (ite c!1281745 (reg!17163 r1!6342) (ite c!1281744 (regOne!34181 r1!6342) (regTwo!34180 r1!6342)))))))

(declare-fun b!6895802 () Bool)

(declare-fun e!4153559 () Bool)

(assert (=> b!6895802 (= e!4153559 call!627354)))

(declare-fun b!6895803 () Bool)

(declare-fun res!2811513 () Bool)

(assert (=> b!6895803 (=> (not res!2811513) (not e!4153559))))

(declare-fun call!627353 () Bool)

(assert (=> b!6895803 (= res!2811513 call!627353)))

(declare-fun e!4153557 () Bool)

(assert (=> b!6895803 (= e!4153557 e!4153559)))

(declare-fun d!2161481 () Bool)

(declare-fun res!2811517 () Bool)

(declare-fun e!4153556 () Bool)

(assert (=> d!2161481 (=> res!2811517 e!4153556)))

(assert (=> d!2161481 (= res!2811517 (is-ElementMatch!16834 r1!6342))))

(assert (=> d!2161481 (= (validRegex!8542 r1!6342) e!4153556)))

(declare-fun b!6895804 () Bool)

(declare-fun e!4153560 () Bool)

(assert (=> b!6895804 (= e!4153560 call!627353)))

(declare-fun b!6895805 () Bool)

(declare-fun e!4153561 () Bool)

(declare-fun e!4153562 () Bool)

(assert (=> b!6895805 (= e!4153561 e!4153562)))

(declare-fun res!2811515 () Bool)

(assert (=> b!6895805 (= res!2811515 (not (nullable!6699 (reg!17163 r1!6342))))))

(assert (=> b!6895805 (=> (not res!2811515) (not e!4153562))))

(declare-fun b!6895806 () Bool)

(declare-fun res!2811516 () Bool)

(declare-fun e!4153558 () Bool)

(assert (=> b!6895806 (=> res!2811516 e!4153558)))

(assert (=> b!6895806 (= res!2811516 (not (is-Concat!25679 r1!6342)))))

(assert (=> b!6895806 (= e!4153557 e!4153558)))

(declare-fun b!6895807 () Bool)

(assert (=> b!6895807 (= e!4153562 call!627355)))

(declare-fun bm!627350 () Bool)

(assert (=> bm!627350 (= call!627353 call!627355)))

(declare-fun b!6895808 () Bool)

(assert (=> b!6895808 (= e!4153556 e!4153561)))

(assert (=> b!6895808 (= c!1281745 (is-Star!16834 r1!6342))))

(declare-fun b!6895809 () Bool)

(assert (=> b!6895809 (= e!4153561 e!4153557)))

(assert (=> b!6895809 (= c!1281744 (is-Union!16834 r1!6342))))

(declare-fun b!6895810 () Bool)

(assert (=> b!6895810 (= e!4153558 e!4153560)))

(declare-fun res!2811514 () Bool)

(assert (=> b!6895810 (=> (not res!2811514) (not e!4153560))))

(assert (=> b!6895810 (= res!2811514 call!627354)))

(assert (= (and d!2161481 (not res!2811517)) b!6895808))

(assert (= (and b!6895808 c!1281745) b!6895805))

(assert (= (and b!6895808 (not c!1281745)) b!6895809))

(assert (= (and b!6895805 res!2811515) b!6895807))

(assert (= (and b!6895809 c!1281744) b!6895803))

(assert (= (and b!6895809 (not c!1281744)) b!6895806))

(assert (= (and b!6895803 res!2811513) b!6895802))

(assert (= (and b!6895806 (not res!2811516)) b!6895810))

(assert (= (and b!6895810 res!2811514) b!6895804))

(assert (= (or b!6895803 b!6895804) bm!627350))

(assert (= (or b!6895802 b!6895810) bm!627348))

(assert (= (or b!6895807 bm!627350) bm!627349))

(declare-fun m!7615108 () Bool)

(assert (=> bm!627348 m!7615108))

(declare-fun m!7615110 () Bool)

(assert (=> bm!627349 m!7615110))

(declare-fun m!7615112 () Bool)

(assert (=> b!6895805 m!7615112))

(assert (=> start!664484 d!2161481))

(declare-fun b!6895822 () Bool)

(declare-fun e!4153565 () Bool)

(declare-fun tp!1898083 () Bool)

(declare-fun tp!1898085 () Bool)

(assert (=> b!6895822 (= e!4153565 (and tp!1898083 tp!1898085))))

(declare-fun b!6895821 () Bool)

(assert (=> b!6895821 (= e!4153565 tp_is_empty!42893)))

(assert (=> b!6895347 (= tp!1898017 e!4153565)))

(declare-fun b!6895823 () Bool)

(declare-fun tp!1898086 () Bool)

(assert (=> b!6895823 (= e!4153565 tp!1898086)))

(declare-fun b!6895824 () Bool)

(declare-fun tp!1898084 () Bool)

(declare-fun tp!1898082 () Bool)

(assert (=> b!6895824 (= e!4153565 (and tp!1898084 tp!1898082))))

(assert (= (and b!6895347 (is-ElementMatch!16834 (reg!17163 r1!6342))) b!6895821))

(assert (= (and b!6895347 (is-Concat!25679 (reg!17163 r1!6342))) b!6895822))

(assert (= (and b!6895347 (is-Star!16834 (reg!17163 r1!6342))) b!6895823))

(assert (= (and b!6895347 (is-Union!16834 (reg!17163 r1!6342))) b!6895824))

(declare-fun b!6895826 () Bool)

(declare-fun e!4153566 () Bool)

(declare-fun tp!1898088 () Bool)

(declare-fun tp!1898090 () Bool)

(assert (=> b!6895826 (= e!4153566 (and tp!1898088 tp!1898090))))

(declare-fun b!6895825 () Bool)

(assert (=> b!6895825 (= e!4153566 tp_is_empty!42893)))

(assert (=> b!6895357 (= tp!1898019 e!4153566)))

(declare-fun b!6895827 () Bool)

(declare-fun tp!1898091 () Bool)

(assert (=> b!6895827 (= e!4153566 tp!1898091)))

(declare-fun b!6895828 () Bool)

(declare-fun tp!1898089 () Bool)

(declare-fun tp!1898087 () Bool)

(assert (=> b!6895828 (= e!4153566 (and tp!1898089 tp!1898087))))

(assert (= (and b!6895357 (is-ElementMatch!16834 (reg!17163 r3!135))) b!6895825))

(assert (= (and b!6895357 (is-Concat!25679 (reg!17163 r3!135))) b!6895826))

(assert (= (and b!6895357 (is-Star!16834 (reg!17163 r3!135))) b!6895827))

(assert (= (and b!6895357 (is-Union!16834 (reg!17163 r3!135))) b!6895828))

(declare-fun b!6895830 () Bool)

(declare-fun e!4153567 () Bool)

(declare-fun tp!1898093 () Bool)

(declare-fun tp!1898095 () Bool)

(assert (=> b!6895830 (= e!4153567 (and tp!1898093 tp!1898095))))

(declare-fun b!6895829 () Bool)

(assert (=> b!6895829 (= e!4153567 tp_is_empty!42893)))

(assert (=> b!6895358 (= tp!1898023 e!4153567)))

(declare-fun b!6895831 () Bool)

(declare-fun tp!1898096 () Bool)

(assert (=> b!6895831 (= e!4153567 tp!1898096)))

(declare-fun b!6895832 () Bool)

(declare-fun tp!1898094 () Bool)

(declare-fun tp!1898092 () Bool)

(assert (=> b!6895832 (= e!4153567 (and tp!1898094 tp!1898092))))

(assert (= (and b!6895358 (is-ElementMatch!16834 (regOne!34180 r1!6342))) b!6895829))

(assert (= (and b!6895358 (is-Concat!25679 (regOne!34180 r1!6342))) b!6895830))

(assert (= (and b!6895358 (is-Star!16834 (regOne!34180 r1!6342))) b!6895831))

(assert (= (and b!6895358 (is-Union!16834 (regOne!34180 r1!6342))) b!6895832))

(declare-fun b!6895834 () Bool)

(declare-fun e!4153568 () Bool)

(declare-fun tp!1898098 () Bool)

(declare-fun tp!1898100 () Bool)

(assert (=> b!6895834 (= e!4153568 (and tp!1898098 tp!1898100))))

(declare-fun b!6895833 () Bool)

(assert (=> b!6895833 (= e!4153568 tp_is_empty!42893)))

(assert (=> b!6895358 (= tp!1898010 e!4153568)))

(declare-fun b!6895835 () Bool)

(declare-fun tp!1898101 () Bool)

(assert (=> b!6895835 (= e!4153568 tp!1898101)))

(declare-fun b!6895836 () Bool)

(declare-fun tp!1898099 () Bool)

(declare-fun tp!1898097 () Bool)

(assert (=> b!6895836 (= e!4153568 (and tp!1898099 tp!1898097))))

(assert (= (and b!6895358 (is-ElementMatch!16834 (regTwo!34180 r1!6342))) b!6895833))

(assert (= (and b!6895358 (is-Concat!25679 (regTwo!34180 r1!6342))) b!6895834))

(assert (= (and b!6895358 (is-Star!16834 (regTwo!34180 r1!6342))) b!6895835))

(assert (= (and b!6895358 (is-Union!16834 (regTwo!34180 r1!6342))) b!6895836))

(declare-fun b!6895841 () Bool)

(declare-fun e!4153571 () Bool)

(declare-fun tp!1898104 () Bool)

(assert (=> b!6895841 (= e!4153571 (and tp_is_empty!42893 tp!1898104))))

(assert (=> b!6895353 (= tp!1898014 e!4153571)))

(assert (= (and b!6895353 (is-Cons!66467 (t!380334 s!14361))) b!6895841))

(declare-fun b!6895843 () Bool)

(declare-fun e!4153572 () Bool)

(declare-fun tp!1898106 () Bool)

(declare-fun tp!1898108 () Bool)

(assert (=> b!6895843 (= e!4153572 (and tp!1898106 tp!1898108))))

(declare-fun b!6895842 () Bool)

(assert (=> b!6895842 (= e!4153572 tp_is_empty!42893)))

(assert (=> b!6895360 (= tp!1898013 e!4153572)))

(declare-fun b!6895844 () Bool)

(declare-fun tp!1898109 () Bool)

(assert (=> b!6895844 (= e!4153572 tp!1898109)))

(declare-fun b!6895845 () Bool)

(declare-fun tp!1898107 () Bool)

(declare-fun tp!1898105 () Bool)

(assert (=> b!6895845 (= e!4153572 (and tp!1898107 tp!1898105))))

(assert (= (and b!6895360 (is-ElementMatch!16834 (reg!17163 r2!6280))) b!6895842))

(assert (= (and b!6895360 (is-Concat!25679 (reg!17163 r2!6280))) b!6895843))

(assert (= (and b!6895360 (is-Star!16834 (reg!17163 r2!6280))) b!6895844))

(assert (= (and b!6895360 (is-Union!16834 (reg!17163 r2!6280))) b!6895845))

(declare-fun b!6895847 () Bool)

(declare-fun e!4153573 () Bool)

(declare-fun tp!1898111 () Bool)

(declare-fun tp!1898113 () Bool)

(assert (=> b!6895847 (= e!4153573 (and tp!1898111 tp!1898113))))

(declare-fun b!6895846 () Bool)

(assert (=> b!6895846 (= e!4153573 tp_is_empty!42893)))

(assert (=> b!6895344 (= tp!1898016 e!4153573)))

(declare-fun b!6895848 () Bool)

(declare-fun tp!1898114 () Bool)

(assert (=> b!6895848 (= e!4153573 tp!1898114)))

(declare-fun b!6895849 () Bool)

(declare-fun tp!1898112 () Bool)

(declare-fun tp!1898110 () Bool)

(assert (=> b!6895849 (= e!4153573 (and tp!1898112 tp!1898110))))

(assert (= (and b!6895344 (is-ElementMatch!16834 (regOne!34181 r2!6280))) b!6895846))

(assert (= (and b!6895344 (is-Concat!25679 (regOne!34181 r2!6280))) b!6895847))

(assert (= (and b!6895344 (is-Star!16834 (regOne!34181 r2!6280))) b!6895848))

(assert (= (and b!6895344 (is-Union!16834 (regOne!34181 r2!6280))) b!6895849))

(declare-fun b!6895851 () Bool)

(declare-fun e!4153574 () Bool)

(declare-fun tp!1898116 () Bool)

(declare-fun tp!1898118 () Bool)

(assert (=> b!6895851 (= e!4153574 (and tp!1898116 tp!1898118))))

(declare-fun b!6895850 () Bool)

(assert (=> b!6895850 (= e!4153574 tp_is_empty!42893)))

(assert (=> b!6895344 (= tp!1898020 e!4153574)))

(declare-fun b!6895852 () Bool)

(declare-fun tp!1898119 () Bool)

(assert (=> b!6895852 (= e!4153574 tp!1898119)))

(declare-fun b!6895853 () Bool)

(declare-fun tp!1898117 () Bool)

(declare-fun tp!1898115 () Bool)

(assert (=> b!6895853 (= e!4153574 (and tp!1898117 tp!1898115))))

(assert (= (and b!6895344 (is-ElementMatch!16834 (regTwo!34181 r2!6280))) b!6895850))

(assert (= (and b!6895344 (is-Concat!25679 (regTwo!34181 r2!6280))) b!6895851))

(assert (= (and b!6895344 (is-Star!16834 (regTwo!34181 r2!6280))) b!6895852))

(assert (= (and b!6895344 (is-Union!16834 (regTwo!34181 r2!6280))) b!6895853))

(declare-fun b!6895855 () Bool)

(declare-fun e!4153575 () Bool)

(declare-fun tp!1898121 () Bool)

(declare-fun tp!1898123 () Bool)

(assert (=> b!6895855 (= e!4153575 (and tp!1898121 tp!1898123))))

(declare-fun b!6895854 () Bool)

(assert (=> b!6895854 (= e!4153575 tp_is_empty!42893)))

(assert (=> b!6895356 (= tp!1898012 e!4153575)))

(declare-fun b!6895856 () Bool)

(declare-fun tp!1898124 () Bool)

(assert (=> b!6895856 (= e!4153575 tp!1898124)))

(declare-fun b!6895857 () Bool)

(declare-fun tp!1898122 () Bool)

(declare-fun tp!1898120 () Bool)

(assert (=> b!6895857 (= e!4153575 (and tp!1898122 tp!1898120))))

(assert (= (and b!6895356 (is-ElementMatch!16834 (regOne!34180 r3!135))) b!6895854))

(assert (= (and b!6895356 (is-Concat!25679 (regOne!34180 r3!135))) b!6895855))

(assert (= (and b!6895356 (is-Star!16834 (regOne!34180 r3!135))) b!6895856))

(assert (= (and b!6895356 (is-Union!16834 (regOne!34180 r3!135))) b!6895857))

(declare-fun b!6895859 () Bool)

(declare-fun e!4153576 () Bool)

(declare-fun tp!1898126 () Bool)

(declare-fun tp!1898128 () Bool)

(assert (=> b!6895859 (= e!4153576 (and tp!1898126 tp!1898128))))

(declare-fun b!6895858 () Bool)

(assert (=> b!6895858 (= e!4153576 tp_is_empty!42893)))

(assert (=> b!6895356 (= tp!1898022 e!4153576)))

(declare-fun b!6895860 () Bool)

(declare-fun tp!1898129 () Bool)

(assert (=> b!6895860 (= e!4153576 tp!1898129)))

(declare-fun b!6895861 () Bool)

(declare-fun tp!1898127 () Bool)

(declare-fun tp!1898125 () Bool)

(assert (=> b!6895861 (= e!4153576 (and tp!1898127 tp!1898125))))

(assert (= (and b!6895356 (is-ElementMatch!16834 (regTwo!34180 r3!135))) b!6895858))

(assert (= (and b!6895356 (is-Concat!25679 (regTwo!34180 r3!135))) b!6895859))

(assert (= (and b!6895356 (is-Star!16834 (regTwo!34180 r3!135))) b!6895860))

(assert (= (and b!6895356 (is-Union!16834 (regTwo!34180 r3!135))) b!6895861))

(declare-fun b!6895863 () Bool)

(declare-fun e!4153577 () Bool)

(declare-fun tp!1898131 () Bool)

(declare-fun tp!1898133 () Bool)

(assert (=> b!6895863 (= e!4153577 (and tp!1898131 tp!1898133))))

(declare-fun b!6895862 () Bool)

(assert (=> b!6895862 (= e!4153577 tp_is_empty!42893)))

(assert (=> b!6895351 (= tp!1898009 e!4153577)))

(declare-fun b!6895864 () Bool)

(declare-fun tp!1898134 () Bool)

(assert (=> b!6895864 (= e!4153577 tp!1898134)))

(declare-fun b!6895865 () Bool)

(declare-fun tp!1898132 () Bool)

(declare-fun tp!1898130 () Bool)

(assert (=> b!6895865 (= e!4153577 (and tp!1898132 tp!1898130))))

(assert (= (and b!6895351 (is-ElementMatch!16834 (regOne!34181 r1!6342))) b!6895862))

(assert (= (and b!6895351 (is-Concat!25679 (regOne!34181 r1!6342))) b!6895863))

(assert (= (and b!6895351 (is-Star!16834 (regOne!34181 r1!6342))) b!6895864))

(assert (= (and b!6895351 (is-Union!16834 (regOne!34181 r1!6342))) b!6895865))

(declare-fun b!6895867 () Bool)

(declare-fun e!4153578 () Bool)

(declare-fun tp!1898136 () Bool)

(declare-fun tp!1898138 () Bool)

(assert (=> b!6895867 (= e!4153578 (and tp!1898136 tp!1898138))))

(declare-fun b!6895866 () Bool)

(assert (=> b!6895866 (= e!4153578 tp_is_empty!42893)))

(assert (=> b!6895351 (= tp!1898008 e!4153578)))

(declare-fun b!6895868 () Bool)

(declare-fun tp!1898139 () Bool)

(assert (=> b!6895868 (= e!4153578 tp!1898139)))

(declare-fun b!6895869 () Bool)

(declare-fun tp!1898137 () Bool)

(declare-fun tp!1898135 () Bool)

(assert (=> b!6895869 (= e!4153578 (and tp!1898137 tp!1898135))))

(assert (= (and b!6895351 (is-ElementMatch!16834 (regTwo!34181 r1!6342))) b!6895866))

(assert (= (and b!6895351 (is-Concat!25679 (regTwo!34181 r1!6342))) b!6895867))

(assert (= (and b!6895351 (is-Star!16834 (regTwo!34181 r1!6342))) b!6895868))

(assert (= (and b!6895351 (is-Union!16834 (regTwo!34181 r1!6342))) b!6895869))

(declare-fun b!6895871 () Bool)

(declare-fun e!4153579 () Bool)

(declare-fun tp!1898141 () Bool)

(declare-fun tp!1898143 () Bool)

(assert (=> b!6895871 (= e!4153579 (and tp!1898141 tp!1898143))))

(declare-fun b!6895870 () Bool)

(assert (=> b!6895870 (= e!4153579 tp_is_empty!42893)))

(assert (=> b!6895350 (= tp!1898011 e!4153579)))

(declare-fun b!6895872 () Bool)

(declare-fun tp!1898144 () Bool)

(assert (=> b!6895872 (= e!4153579 tp!1898144)))

(declare-fun b!6895873 () Bool)

(declare-fun tp!1898142 () Bool)

(declare-fun tp!1898140 () Bool)

(assert (=> b!6895873 (= e!4153579 (and tp!1898142 tp!1898140))))

(assert (= (and b!6895350 (is-ElementMatch!16834 (regOne!34181 r3!135))) b!6895870))

(assert (= (and b!6895350 (is-Concat!25679 (regOne!34181 r3!135))) b!6895871))

(assert (= (and b!6895350 (is-Star!16834 (regOne!34181 r3!135))) b!6895872))

(assert (= (and b!6895350 (is-Union!16834 (regOne!34181 r3!135))) b!6895873))

(declare-fun b!6895875 () Bool)

(declare-fun e!4153580 () Bool)

(declare-fun tp!1898146 () Bool)

(declare-fun tp!1898148 () Bool)

(assert (=> b!6895875 (= e!4153580 (and tp!1898146 tp!1898148))))

(declare-fun b!6895874 () Bool)

(assert (=> b!6895874 (= e!4153580 tp_is_empty!42893)))

(assert (=> b!6895350 (= tp!1898015 e!4153580)))

(declare-fun b!6895876 () Bool)

(declare-fun tp!1898149 () Bool)

(assert (=> b!6895876 (= e!4153580 tp!1898149)))

(declare-fun b!6895877 () Bool)

(declare-fun tp!1898147 () Bool)

(declare-fun tp!1898145 () Bool)

(assert (=> b!6895877 (= e!4153580 (and tp!1898147 tp!1898145))))

(assert (= (and b!6895350 (is-ElementMatch!16834 (regTwo!34181 r3!135))) b!6895874))

(assert (= (and b!6895350 (is-Concat!25679 (regTwo!34181 r3!135))) b!6895875))

(assert (= (and b!6895350 (is-Star!16834 (regTwo!34181 r3!135))) b!6895876))

(assert (= (and b!6895350 (is-Union!16834 (regTwo!34181 r3!135))) b!6895877))

(declare-fun b!6895879 () Bool)

(declare-fun e!4153581 () Bool)

(declare-fun tp!1898151 () Bool)

(declare-fun tp!1898153 () Bool)

(assert (=> b!6895879 (= e!4153581 (and tp!1898151 tp!1898153))))

(declare-fun b!6895878 () Bool)

(assert (=> b!6895878 (= e!4153581 tp_is_empty!42893)))

(assert (=> b!6895361 (= tp!1898021 e!4153581)))

(declare-fun b!6895880 () Bool)

(declare-fun tp!1898154 () Bool)

(assert (=> b!6895880 (= e!4153581 tp!1898154)))

(declare-fun b!6895881 () Bool)

(declare-fun tp!1898152 () Bool)

(declare-fun tp!1898150 () Bool)

(assert (=> b!6895881 (= e!4153581 (and tp!1898152 tp!1898150))))

(assert (= (and b!6895361 (is-ElementMatch!16834 (regOne!34180 r2!6280))) b!6895878))

(assert (= (and b!6895361 (is-Concat!25679 (regOne!34180 r2!6280))) b!6895879))

(assert (= (and b!6895361 (is-Star!16834 (regOne!34180 r2!6280))) b!6895880))

(assert (= (and b!6895361 (is-Union!16834 (regOne!34180 r2!6280))) b!6895881))

(declare-fun b!6895883 () Bool)

(declare-fun e!4153582 () Bool)

(declare-fun tp!1898156 () Bool)

(declare-fun tp!1898158 () Bool)

(assert (=> b!6895883 (= e!4153582 (and tp!1898156 tp!1898158))))

(declare-fun b!6895882 () Bool)

(assert (=> b!6895882 (= e!4153582 tp_is_empty!42893)))

(assert (=> b!6895361 (= tp!1898018 e!4153582)))

(declare-fun b!6895884 () Bool)

(declare-fun tp!1898159 () Bool)

(assert (=> b!6895884 (= e!4153582 tp!1898159)))

(declare-fun b!6895885 () Bool)

(declare-fun tp!1898157 () Bool)

(declare-fun tp!1898155 () Bool)

(assert (=> b!6895885 (= e!4153582 (and tp!1898157 tp!1898155))))

(assert (= (and b!6895361 (is-ElementMatch!16834 (regTwo!34180 r2!6280))) b!6895882))

(assert (= (and b!6895361 (is-Concat!25679 (regTwo!34180 r2!6280))) b!6895883))

(assert (= (and b!6895361 (is-Star!16834 (regTwo!34180 r2!6280))) b!6895884))

(assert (= (and b!6895361 (is-Union!16834 (regTwo!34180 r2!6280))) b!6895885))

(push 1)

(assert (not b!6895521))

(assert (not b!6895827))

(assert (not b!6895777))

(assert (not b!6895853))

(assert (not bm!627340))

(assert (not b!6895844))

(assert (not d!2161469))

(assert (not b!6895702))

(assert (not bm!627344))

(assert (not b!6895860))

(assert (not b!6895654))

(assert (not b!6895876))

(assert (not b!6895527))

(assert (not b!6895841))

(assert (not b!6895746))

(assert (not d!2161459))

(assert (not b!6895647))

(assert (not bm!627345))

(assert (not d!2161427))

(assert (not b!6895852))

(assert (not b!6895757))

(assert (not b!6895826))

(assert (not b!6895805))

(assert (not b!6895724))

(assert (not d!2161417))

(assert (not d!2161461))

(assert (not b!6895869))

(assert (not b!6895722))

(assert (not d!2161415))

(assert (not b!6895856))

(assert (not b!6895516))

(assert (not d!2161463))

(assert (not b!6895834))

(assert (not b!6895851))

(assert (not bm!627337))

(assert (not b!6895822))

(assert (not b!6895728))

(assert (not b!6895863))

(assert (not bm!627342))

(assert tp_is_empty!42893)

(assert (not b!6895650))

(assert (not b!6895717))

(assert (not b!6895848))

(assert (not b!6895828))

(assert (not b!6895873))

(assert (not bm!627341))

(assert (not b!6895765))

(assert (not b!6895701))

(assert (not d!2161447))

(assert (not b!6895525))

(assert (not b!6895885))

(assert (not b!6895755))

(assert (not b!6895773))

(assert (not b!6895861))

(assert (not d!2161475))

(assert (not b!6895855))

(assert (not b!6895871))

(assert (not b!6895864))

(assert (not d!2161421))

(assert (not b!6895518))

(assert (not b!6895700))

(assert (not b!6895656))

(assert (not b!6895744))

(assert (not b!6895778))

(assert (not b!6895836))

(assert (not d!2161465))

(assert (not b!6895774))

(assert (not b!6895872))

(assert (not d!2161431))

(assert (not b!6895843))

(assert (not b!6895711))

(assert (not b!6895830))

(assert (not b!6895726))

(assert (not d!2161437))

(assert (not b!6895883))

(assert (not b!6895884))

(assert (not b!6895835))

(assert (not bm!627348))

(assert (not bm!627310))

(assert (not b!6895790))

(assert (not b!6895791))

(assert (not b!6895720))

(assert (not b!6895832))

(assert (not b!6895699))

(assert (not b!6895823))

(assert (not b!6895561))

(assert (not d!2161419))

(assert (not b!6895780))

(assert (not b!6895875))

(assert (not b!6895868))

(assert (not b!6895695))

(assert (not bm!627319))

(assert (not b!6895523))

(assert (not bm!627320))

(assert (not b!6895824))

(assert (not b!6895849))

(assert (not b!6895753))

(assert (not b!6895879))

(assert (not d!2161455))

(assert (not b!6895859))

(assert (not bm!627339))

(assert (not bm!627346))

(assert (not d!2161439))

(assert (not d!2161467))

(assert (not b!6895796))

(assert (not b!6895715))

(assert (not d!2161453))

(assert (not b!6895847))

(assert (not b!6895751))

(assert (not b!6895880))

(assert (not b!6895845))

(assert (not bm!627338))

(assert (not b!6895779))

(assert (not bm!627349))

(assert (not b!6895867))

(assert (not bm!627314))

(assert (not b!6895749))

(assert (not b!6895881))

(assert (not b!6895736))

(assert (not d!2161435))

(assert (not bm!627343))

(assert (not b!6895865))

(assert (not b!6895696))

(assert (not b!6895645))

(assert (not b!6895831))

(assert (not d!2161449))

(assert (not b!6895481))

(assert (not b!6895652))

(assert (not d!2161471))

(assert (not b!6895877))

(assert (not b!6895569))

(assert (not bm!627324))

(assert (not b!6895703))

(assert (not b!6895857))

(assert (not bm!627309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

