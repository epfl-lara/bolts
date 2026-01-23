; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!290134 () Bool)

(assert start!290134)

(declare-fun b!3013303 () Bool)

(assert (=> b!3013303 true))

(assert (=> b!3013303 true))

(declare-fun lambda!112752 () Int)

(declare-fun lambda!112751 () Int)

(assert (=> b!3013303 (not (= lambda!112752 lambda!112751))))

(assert (=> b!3013303 true))

(assert (=> b!3013303 true))

(declare-fun b!3013296 () Bool)

(declare-fun e!1891733 () Bool)

(declare-datatypes ((C!18994 0))(
  ( (C!18995 (val!11533 Int)) )
))
(declare-datatypes ((Regex!9404 0))(
  ( (ElementMatch!9404 (c!496476 C!18994)) (Concat!14725 (regOne!19320 Regex!9404) (regTwo!19320 Regex!9404)) (EmptyExpr!9404) (Star!9404 (reg!9733 Regex!9404)) (EmptyLang!9404) (Union!9404 (regOne!19321 Regex!9404) (regTwo!19321 Regex!9404)) )
))
(declare-fun r!17423 () Regex!9404)

(declare-fun validRegex!4137 (Regex!9404) Bool)

(assert (=> b!3013296 (= e!1891733 (validRegex!4137 (regOne!19320 r!17423)))))

(declare-fun res!1241720 () Bool)

(declare-fun e!1891734 () Bool)

(assert (=> start!290134 (=> (not res!1241720) (not e!1891734))))

(assert (=> start!290134 (= res!1241720 (validRegex!4137 r!17423))))

(assert (=> start!290134 e!1891734))

(declare-fun e!1891730 () Bool)

(assert (=> start!290134 e!1891730))

(declare-fun e!1891732 () Bool)

(assert (=> start!290134 e!1891732))

(declare-fun b!3013297 () Bool)

(declare-fun tp!956174 () Bool)

(declare-fun tp!956175 () Bool)

(assert (=> b!3013297 (= e!1891730 (and tp!956174 tp!956175))))

(declare-fun b!3013298 () Bool)

(declare-fun res!1241723 () Bool)

(declare-fun e!1891731 () Bool)

(assert (=> b!3013298 (=> res!1241723 e!1891731)))

(declare-datatypes ((List!35269 0))(
  ( (Nil!35145) (Cons!35145 (h!40565 C!18994) (t!234334 List!35269)) )
))
(declare-fun s!11993 () List!35269)

(declare-fun isEmpty!19435 (List!35269) Bool)

(assert (=> b!3013298 (= res!1241723 (isEmpty!19435 s!11993))))

(declare-fun b!3013299 () Bool)

(declare-fun tp_is_empty!16371 () Bool)

(declare-fun tp!956172 () Bool)

(assert (=> b!3013299 (= e!1891732 (and tp_is_empty!16371 tp!956172))))

(declare-fun b!3013300 () Bool)

(declare-fun tp!956173 () Bool)

(declare-fun tp!956171 () Bool)

(assert (=> b!3013300 (= e!1891730 (and tp!956173 tp!956171))))

(declare-fun b!3013301 () Bool)

(declare-fun tp!956170 () Bool)

(assert (=> b!3013301 (= e!1891730 tp!956170)))

(declare-fun b!3013302 () Bool)

(assert (=> b!3013302 (= e!1891730 tp_is_empty!16371)))

(assert (=> b!3013303 (= e!1891731 e!1891733)))

(declare-fun res!1241722 () Bool)

(assert (=> b!3013303 (=> res!1241722 e!1891733)))

(declare-datatypes ((tuple2!34090 0))(
  ( (tuple2!34091 (_1!20177 List!35269) (_2!20177 List!35269)) )
))
(declare-fun lt!1044166 () tuple2!34090)

(declare-fun matchR!4286 (Regex!9404 List!35269) Bool)

(assert (=> b!3013303 (= res!1241722 (not (matchR!4286 (regOne!19320 r!17423) (_1!20177 lt!1044166))))))

(declare-datatypes ((Option!6777 0))(
  ( (None!6776) (Some!6776 (v!34910 tuple2!34090)) )
))
(declare-fun lt!1044169 () Option!6777)

(declare-fun get!10946 (Option!6777) tuple2!34090)

(assert (=> b!3013303 (= lt!1044166 (get!10946 lt!1044169))))

(declare-fun Exists!1672 (Int) Bool)

(assert (=> b!3013303 (= (Exists!1672 lambda!112751) (Exists!1672 lambda!112752))))

(declare-datatypes ((Unit!49231 0))(
  ( (Unit!49232) )
))
(declare-fun lt!1044167 () Unit!49231)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!545 (Regex!9404 Regex!9404 List!35269) Unit!49231)

(assert (=> b!3013303 (= lt!1044167 (lemmaExistCutMatchRandMatchRSpecEquivalent!545 (regOne!19320 r!17423) (regTwo!19320 r!17423) s!11993))))

(declare-fun isDefined!5328 (Option!6777) Bool)

(assert (=> b!3013303 (= (isDefined!5328 lt!1044169) (Exists!1672 lambda!112751))))

(declare-fun findConcatSeparation!1171 (Regex!9404 Regex!9404 List!35269 List!35269 List!35269) Option!6777)

(assert (=> b!3013303 (= lt!1044169 (findConcatSeparation!1171 (regOne!19320 r!17423) (regTwo!19320 r!17423) Nil!35145 s!11993 s!11993))))

(declare-fun lt!1044170 () Unit!49231)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!949 (Regex!9404 Regex!9404 List!35269) Unit!49231)

(assert (=> b!3013303 (= lt!1044170 (lemmaFindConcatSeparationEquivalentToExists!949 (regOne!19320 r!17423) (regTwo!19320 r!17423) s!11993))))

(declare-fun b!3013304 () Bool)

(assert (=> b!3013304 (= e!1891734 (not e!1891731))))

(declare-fun res!1241721 () Bool)

(assert (=> b!3013304 (=> res!1241721 e!1891731)))

(declare-fun lt!1044165 () Bool)

(assert (=> b!3013304 (= res!1241721 (or (not lt!1044165) (not (is-Concat!14725 r!17423))))))

(declare-fun matchRSpec!1541 (Regex!9404 List!35269) Bool)

(assert (=> b!3013304 (= lt!1044165 (matchRSpec!1541 r!17423 s!11993))))

(assert (=> b!3013304 (= lt!1044165 (matchR!4286 r!17423 s!11993))))

(declare-fun lt!1044168 () Unit!49231)

(declare-fun mainMatchTheorem!1541 (Regex!9404 List!35269) Unit!49231)

(assert (=> b!3013304 (= lt!1044168 (mainMatchTheorem!1541 r!17423 s!11993))))

(declare-fun b!3013305 () Bool)

(declare-fun res!1241719 () Bool)

(assert (=> b!3013305 (=> res!1241719 e!1891733)))

(assert (=> b!3013305 (= res!1241719 (not (matchR!4286 (regTwo!19320 r!17423) (_2!20177 lt!1044166))))))

(assert (= (and start!290134 res!1241720) b!3013304))

(assert (= (and b!3013304 (not res!1241721)) b!3013298))

(assert (= (and b!3013298 (not res!1241723)) b!3013303))

(assert (= (and b!3013303 (not res!1241722)) b!3013305))

(assert (= (and b!3013305 (not res!1241719)) b!3013296))

(assert (= (and start!290134 (is-ElementMatch!9404 r!17423)) b!3013302))

(assert (= (and start!290134 (is-Concat!14725 r!17423)) b!3013300))

(assert (= (and start!290134 (is-Star!9404 r!17423)) b!3013301))

(assert (= (and start!290134 (is-Union!9404 r!17423)) b!3013297))

(assert (= (and start!290134 (is-Cons!35145 s!11993)) b!3013299))

(declare-fun m!3358329 () Bool)

(assert (=> b!3013298 m!3358329))

(declare-fun m!3358331 () Bool)

(assert (=> start!290134 m!3358331))

(declare-fun m!3358333 () Bool)

(assert (=> b!3013304 m!3358333))

(declare-fun m!3358335 () Bool)

(assert (=> b!3013304 m!3358335))

(declare-fun m!3358337 () Bool)

(assert (=> b!3013304 m!3358337))

(declare-fun m!3358339 () Bool)

(assert (=> b!3013303 m!3358339))

(declare-fun m!3358341 () Bool)

(assert (=> b!3013303 m!3358341))

(assert (=> b!3013303 m!3358339))

(declare-fun m!3358343 () Bool)

(assert (=> b!3013303 m!3358343))

(declare-fun m!3358345 () Bool)

(assert (=> b!3013303 m!3358345))

(declare-fun m!3358347 () Bool)

(assert (=> b!3013303 m!3358347))

(declare-fun m!3358349 () Bool)

(assert (=> b!3013303 m!3358349))

(declare-fun m!3358351 () Bool)

(assert (=> b!3013303 m!3358351))

(declare-fun m!3358353 () Bool)

(assert (=> b!3013303 m!3358353))

(declare-fun m!3358355 () Bool)

(assert (=> b!3013305 m!3358355))

(declare-fun m!3358357 () Bool)

(assert (=> b!3013296 m!3358357))

(push 1)

(assert (not b!3013305))

(assert (not b!3013296))

(assert (not b!3013297))

(assert tp_is_empty!16371)

(assert (not b!3013301))

(assert (not start!290134))

(assert (not b!3013303))

(assert (not b!3013298))

(assert (not b!3013300))

(assert (not b!3013304))

(assert (not b!3013299))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!847968 () Bool)

(assert (=> d!847968 (= (isEmpty!19435 s!11993) (is-Nil!35145 s!11993))))

(assert (=> b!3013298 d!847968))

(declare-fun bs!529646 () Bool)

(declare-fun b!3013432 () Bool)

(assert (= bs!529646 (and b!3013432 b!3013303)))

(declare-fun lambda!112765 () Int)

(assert (=> bs!529646 (not (= lambda!112765 lambda!112751))))

(assert (=> bs!529646 (not (= lambda!112765 lambda!112752))))

(assert (=> b!3013432 true))

(assert (=> b!3013432 true))

(declare-fun bs!529648 () Bool)

(declare-fun b!3013431 () Bool)

(assert (= bs!529648 (and b!3013431 b!3013303)))

(declare-fun lambda!112766 () Int)

(assert (=> bs!529648 (not (= lambda!112766 lambda!112751))))

(assert (=> bs!529648 (= lambda!112766 lambda!112752)))

(declare-fun bs!529649 () Bool)

(assert (= bs!529649 (and b!3013431 b!3013432)))

(assert (=> bs!529649 (not (= lambda!112766 lambda!112765))))

(assert (=> b!3013431 true))

(assert (=> b!3013431 true))

(declare-fun b!3013430 () Bool)

(declare-fun e!1891800 () Bool)

(declare-fun e!1891801 () Bool)

(assert (=> b!3013430 (= e!1891800 e!1891801)))

(declare-fun res!1241793 () Bool)

(assert (=> b!3013430 (= res!1241793 (not (is-EmptyLang!9404 r!17423)))))

(assert (=> b!3013430 (=> (not res!1241793) (not e!1891801))))

(declare-fun e!1891798 () Bool)

(declare-fun call!203163 () Bool)

(assert (=> b!3013431 (= e!1891798 call!203163)))

(declare-fun e!1891799 () Bool)

(assert (=> b!3013432 (= e!1891799 call!203163)))

(declare-fun b!3013433 () Bool)

(declare-fun c!496495 () Bool)

(assert (=> b!3013433 (= c!496495 (is-Union!9404 r!17423))))

(declare-fun e!1891797 () Bool)

(declare-fun e!1891796 () Bool)

(assert (=> b!3013433 (= e!1891797 e!1891796)))

(declare-fun b!3013434 () Bool)

(declare-fun res!1241791 () Bool)

(assert (=> b!3013434 (=> res!1241791 e!1891799)))

(declare-fun call!203162 () Bool)

(assert (=> b!3013434 (= res!1241791 call!203162)))

(assert (=> b!3013434 (= e!1891798 e!1891799)))

(declare-fun c!496498 () Bool)

(declare-fun bm!203157 () Bool)

(assert (=> bm!203157 (= call!203163 (Exists!1672 (ite c!496498 lambda!112765 lambda!112766)))))

(declare-fun b!3013435 () Bool)

(assert (=> b!3013435 (= e!1891800 call!203162)))

(declare-fun b!3013436 () Bool)

(assert (=> b!3013436 (= e!1891797 (= s!11993 (Cons!35145 (c!496476 r!17423) Nil!35145)))))

(declare-fun b!3013437 () Bool)

(declare-fun e!1891795 () Bool)

(assert (=> b!3013437 (= e!1891796 e!1891795)))

(declare-fun res!1241792 () Bool)

(assert (=> b!3013437 (= res!1241792 (matchRSpec!1541 (regOne!19321 r!17423) s!11993))))

(assert (=> b!3013437 (=> res!1241792 e!1891795)))

(declare-fun d!847970 () Bool)

(declare-fun c!496496 () Bool)

(assert (=> d!847970 (= c!496496 (is-EmptyExpr!9404 r!17423))))

(assert (=> d!847970 (= (matchRSpec!1541 r!17423 s!11993) e!1891800)))

(declare-fun bm!203158 () Bool)

(assert (=> bm!203158 (= call!203162 (isEmpty!19435 s!11993))))

(declare-fun b!3013438 () Bool)

(assert (=> b!3013438 (= e!1891795 (matchRSpec!1541 (regTwo!19321 r!17423) s!11993))))

(declare-fun b!3013439 () Bool)

(declare-fun c!496497 () Bool)

(assert (=> b!3013439 (= c!496497 (is-ElementMatch!9404 r!17423))))

(assert (=> b!3013439 (= e!1891801 e!1891797)))

(declare-fun b!3013440 () Bool)

(assert (=> b!3013440 (= e!1891796 e!1891798)))

(assert (=> b!3013440 (= c!496498 (is-Star!9404 r!17423))))

(assert (= (and d!847970 c!496496) b!3013435))

(assert (= (and d!847970 (not c!496496)) b!3013430))

(assert (= (and b!3013430 res!1241793) b!3013439))

(assert (= (and b!3013439 c!496497) b!3013436))

(assert (= (and b!3013439 (not c!496497)) b!3013433))

(assert (= (and b!3013433 c!496495) b!3013437))

(assert (= (and b!3013433 (not c!496495)) b!3013440))

(assert (= (and b!3013437 (not res!1241792)) b!3013438))

(assert (= (and b!3013440 c!496498) b!3013434))

(assert (= (and b!3013440 (not c!496498)) b!3013431))

(assert (= (and b!3013434 (not res!1241791)) b!3013432))

(assert (= (or b!3013432 b!3013431) bm!203157))

(assert (= (or b!3013435 b!3013434) bm!203158))

(declare-fun m!3358407 () Bool)

(assert (=> bm!203157 m!3358407))

(declare-fun m!3358409 () Bool)

(assert (=> b!3013437 m!3358409))

(assert (=> bm!203158 m!3358329))

(declare-fun m!3358411 () Bool)

(assert (=> b!3013438 m!3358411))

(assert (=> b!3013304 d!847970))

(declare-fun b!3013473 () Bool)

(declare-fun e!1891820 () Bool)

(declare-fun e!1891818 () Bool)

(assert (=> b!3013473 (= e!1891820 e!1891818)))

(declare-fun c!496506 () Bool)

(assert (=> b!3013473 (= c!496506 (is-EmptyLang!9404 r!17423))))

(declare-fun b!3013474 () Bool)

(declare-fun e!1891819 () Bool)

(declare-fun e!1891822 () Bool)

(assert (=> b!3013474 (= e!1891819 e!1891822)))

(declare-fun res!1241814 () Bool)

(assert (=> b!3013474 (=> (not res!1241814) (not e!1891822))))

(declare-fun lt!1044196 () Bool)

(assert (=> b!3013474 (= res!1241814 (not lt!1044196))))

(declare-fun d!847976 () Bool)

(assert (=> d!847976 e!1891820))

(declare-fun c!496505 () Bool)

(assert (=> d!847976 (= c!496505 (is-EmptyExpr!9404 r!17423))))

(declare-fun e!1891823 () Bool)

(assert (=> d!847976 (= lt!1044196 e!1891823)))

(declare-fun c!496507 () Bool)

(assert (=> d!847976 (= c!496507 (isEmpty!19435 s!11993))))

(assert (=> d!847976 (validRegex!4137 r!17423)))

(assert (=> d!847976 (= (matchR!4286 r!17423 s!11993) lt!1044196)))

(declare-fun b!3013475 () Bool)

(declare-fun call!203166 () Bool)

(assert (=> b!3013475 (= e!1891820 (= lt!1044196 call!203166))))

(declare-fun b!3013476 () Bool)

(declare-fun res!1241821 () Bool)

(declare-fun e!1891821 () Bool)

(assert (=> b!3013476 (=> (not res!1241821) (not e!1891821))))

(declare-fun tail!4938 (List!35269) List!35269)

(assert (=> b!3013476 (= res!1241821 (isEmpty!19435 (tail!4938 s!11993)))))

(declare-fun bm!203161 () Bool)

(assert (=> bm!203161 (= call!203166 (isEmpty!19435 s!11993))))

(declare-fun b!3013477 () Bool)

(declare-fun nullable!3056 (Regex!9404) Bool)

(assert (=> b!3013477 (= e!1891823 (nullable!3056 r!17423))))

(declare-fun b!3013478 () Bool)

(assert (=> b!3013478 (= e!1891818 (not lt!1044196))))

(declare-fun b!3013479 () Bool)

(declare-fun res!1241816 () Bool)

(declare-fun e!1891824 () Bool)

(assert (=> b!3013479 (=> res!1241816 e!1891824)))

(assert (=> b!3013479 (= res!1241816 (not (isEmpty!19435 (tail!4938 s!11993))))))

(declare-fun b!3013480 () Bool)

(declare-fun res!1241815 () Bool)

(assert (=> b!3013480 (=> res!1241815 e!1891819)))

(assert (=> b!3013480 (= res!1241815 (not (is-ElementMatch!9404 r!17423)))))

(assert (=> b!3013480 (= e!1891818 e!1891819)))

(declare-fun b!3013481 () Bool)

(declare-fun res!1241820 () Bool)

(assert (=> b!3013481 (=> (not res!1241820) (not e!1891821))))

(assert (=> b!3013481 (= res!1241820 (not call!203166))))

(declare-fun b!3013482 () Bool)

(declare-fun head!6712 (List!35269) C!18994)

(assert (=> b!3013482 (= e!1891821 (= (head!6712 s!11993) (c!496476 r!17423)))))

(declare-fun b!3013483 () Bool)

(declare-fun res!1241819 () Bool)

(assert (=> b!3013483 (=> res!1241819 e!1891819)))

(assert (=> b!3013483 (= res!1241819 e!1891821)))

(declare-fun res!1241817 () Bool)

(assert (=> b!3013483 (=> (not res!1241817) (not e!1891821))))

(assert (=> b!3013483 (= res!1241817 lt!1044196)))

(declare-fun b!3013484 () Bool)

(assert (=> b!3013484 (= e!1891822 e!1891824)))

(declare-fun res!1241818 () Bool)

(assert (=> b!3013484 (=> res!1241818 e!1891824)))

(assert (=> b!3013484 (= res!1241818 call!203166)))

(declare-fun b!3013485 () Bool)

(assert (=> b!3013485 (= e!1891824 (not (= (head!6712 s!11993) (c!496476 r!17423))))))

(declare-fun b!3013486 () Bool)

(declare-fun derivativeStep!2653 (Regex!9404 C!18994) Regex!9404)

(assert (=> b!3013486 (= e!1891823 (matchR!4286 (derivativeStep!2653 r!17423 (head!6712 s!11993)) (tail!4938 s!11993)))))

(assert (= (and d!847976 c!496507) b!3013477))

(assert (= (and d!847976 (not c!496507)) b!3013486))

(assert (= (and d!847976 c!496505) b!3013475))

(assert (= (and d!847976 (not c!496505)) b!3013473))

(assert (= (and b!3013473 c!496506) b!3013478))

(assert (= (and b!3013473 (not c!496506)) b!3013480))

(assert (= (and b!3013480 (not res!1241815)) b!3013483))

(assert (= (and b!3013483 res!1241817) b!3013481))

(assert (= (and b!3013481 res!1241820) b!3013476))

(assert (= (and b!3013476 res!1241821) b!3013482))

(assert (= (and b!3013483 (not res!1241819)) b!3013474))

(assert (= (and b!3013474 res!1241814) b!3013484))

(assert (= (and b!3013484 (not res!1241818)) b!3013479))

(assert (= (and b!3013479 (not res!1241816)) b!3013485))

(assert (= (or b!3013475 b!3013481 b!3013484) bm!203161))

(declare-fun m!3358413 () Bool)

(assert (=> b!3013476 m!3358413))

(assert (=> b!3013476 m!3358413))

(declare-fun m!3358415 () Bool)

(assert (=> b!3013476 m!3358415))

(assert (=> b!3013479 m!3358413))

(assert (=> b!3013479 m!3358413))

(assert (=> b!3013479 m!3358415))

(assert (=> d!847976 m!3358329))

(assert (=> d!847976 m!3358331))

(declare-fun m!3358417 () Bool)

(assert (=> b!3013482 m!3358417))

(assert (=> b!3013485 m!3358417))

(declare-fun m!3358419 () Bool)

(assert (=> b!3013477 m!3358419))

(assert (=> bm!203161 m!3358329))

(assert (=> b!3013486 m!3358417))

(assert (=> b!3013486 m!3358417))

(declare-fun m!3358421 () Bool)

(assert (=> b!3013486 m!3358421))

(assert (=> b!3013486 m!3358413))

(assert (=> b!3013486 m!3358421))

(assert (=> b!3013486 m!3358413))

(declare-fun m!3358423 () Bool)

(assert (=> b!3013486 m!3358423))

(assert (=> b!3013304 d!847976))

(declare-fun d!847978 () Bool)

(assert (=> d!847978 (= (matchR!4286 r!17423 s!11993) (matchRSpec!1541 r!17423 s!11993))))

(declare-fun lt!1044199 () Unit!49231)

(declare-fun choose!17892 (Regex!9404 List!35269) Unit!49231)

(assert (=> d!847978 (= lt!1044199 (choose!17892 r!17423 s!11993))))

(assert (=> d!847978 (validRegex!4137 r!17423)))

(assert (=> d!847978 (= (mainMatchTheorem!1541 r!17423 s!11993) lt!1044199)))

(declare-fun bs!529650 () Bool)

(assert (= bs!529650 d!847978))

(assert (=> bs!529650 m!3358335))

(assert (=> bs!529650 m!3358333))

(declare-fun m!3358425 () Bool)

(assert (=> bs!529650 m!3358425))

(assert (=> bs!529650 m!3358331))

(assert (=> b!3013304 d!847978))

(declare-fun b!3013491 () Bool)

(declare-fun e!1891829 () Bool)

(declare-fun e!1891827 () Bool)

(assert (=> b!3013491 (= e!1891829 e!1891827)))

(declare-fun c!496509 () Bool)

(assert (=> b!3013491 (= c!496509 (is-EmptyLang!9404 (regTwo!19320 r!17423)))))

(declare-fun b!3013492 () Bool)

(declare-fun e!1891828 () Bool)

(declare-fun e!1891831 () Bool)

(assert (=> b!3013492 (= e!1891828 e!1891831)))

(declare-fun res!1241826 () Bool)

(assert (=> b!3013492 (=> (not res!1241826) (not e!1891831))))

(declare-fun lt!1044200 () Bool)

(assert (=> b!3013492 (= res!1241826 (not lt!1044200))))

(declare-fun d!847980 () Bool)

(assert (=> d!847980 e!1891829))

(declare-fun c!496508 () Bool)

(assert (=> d!847980 (= c!496508 (is-EmptyExpr!9404 (regTwo!19320 r!17423)))))

(declare-fun e!1891832 () Bool)

(assert (=> d!847980 (= lt!1044200 e!1891832)))

(declare-fun c!496510 () Bool)

(assert (=> d!847980 (= c!496510 (isEmpty!19435 (_2!20177 lt!1044166)))))

(assert (=> d!847980 (validRegex!4137 (regTwo!19320 r!17423))))

(assert (=> d!847980 (= (matchR!4286 (regTwo!19320 r!17423) (_2!20177 lt!1044166)) lt!1044200)))

(declare-fun b!3013493 () Bool)

(declare-fun call!203167 () Bool)

(assert (=> b!3013493 (= e!1891829 (= lt!1044200 call!203167))))

(declare-fun b!3013494 () Bool)

(declare-fun res!1241833 () Bool)

(declare-fun e!1891830 () Bool)

(assert (=> b!3013494 (=> (not res!1241833) (not e!1891830))))

(assert (=> b!3013494 (= res!1241833 (isEmpty!19435 (tail!4938 (_2!20177 lt!1044166))))))

(declare-fun bm!203162 () Bool)

(assert (=> bm!203162 (= call!203167 (isEmpty!19435 (_2!20177 lt!1044166)))))

(declare-fun b!3013495 () Bool)

(assert (=> b!3013495 (= e!1891832 (nullable!3056 (regTwo!19320 r!17423)))))

(declare-fun b!3013496 () Bool)

(assert (=> b!3013496 (= e!1891827 (not lt!1044200))))

(declare-fun b!3013497 () Bool)

(declare-fun res!1241828 () Bool)

(declare-fun e!1891833 () Bool)

(assert (=> b!3013497 (=> res!1241828 e!1891833)))

(assert (=> b!3013497 (= res!1241828 (not (isEmpty!19435 (tail!4938 (_2!20177 lt!1044166)))))))

(declare-fun b!3013498 () Bool)

(declare-fun res!1241827 () Bool)

(assert (=> b!3013498 (=> res!1241827 e!1891828)))

(assert (=> b!3013498 (= res!1241827 (not (is-ElementMatch!9404 (regTwo!19320 r!17423))))))

(assert (=> b!3013498 (= e!1891827 e!1891828)))

(declare-fun b!3013499 () Bool)

(declare-fun res!1241832 () Bool)

(assert (=> b!3013499 (=> (not res!1241832) (not e!1891830))))

(assert (=> b!3013499 (= res!1241832 (not call!203167))))

(declare-fun b!3013500 () Bool)

(assert (=> b!3013500 (= e!1891830 (= (head!6712 (_2!20177 lt!1044166)) (c!496476 (regTwo!19320 r!17423))))))

(declare-fun b!3013501 () Bool)

(declare-fun res!1241831 () Bool)

(assert (=> b!3013501 (=> res!1241831 e!1891828)))

(assert (=> b!3013501 (= res!1241831 e!1891830)))

(declare-fun res!1241829 () Bool)

(assert (=> b!3013501 (=> (not res!1241829) (not e!1891830))))

(assert (=> b!3013501 (= res!1241829 lt!1044200)))

(declare-fun b!3013502 () Bool)

(assert (=> b!3013502 (= e!1891831 e!1891833)))

(declare-fun res!1241830 () Bool)

(assert (=> b!3013502 (=> res!1241830 e!1891833)))

(assert (=> b!3013502 (= res!1241830 call!203167)))

(declare-fun b!3013503 () Bool)

(assert (=> b!3013503 (= e!1891833 (not (= (head!6712 (_2!20177 lt!1044166)) (c!496476 (regTwo!19320 r!17423)))))))

(declare-fun b!3013504 () Bool)

(assert (=> b!3013504 (= e!1891832 (matchR!4286 (derivativeStep!2653 (regTwo!19320 r!17423) (head!6712 (_2!20177 lt!1044166))) (tail!4938 (_2!20177 lt!1044166))))))

(assert (= (and d!847980 c!496510) b!3013495))

(assert (= (and d!847980 (not c!496510)) b!3013504))

(assert (= (and d!847980 c!496508) b!3013493))

(assert (= (and d!847980 (not c!496508)) b!3013491))

(assert (= (and b!3013491 c!496509) b!3013496))

(assert (= (and b!3013491 (not c!496509)) b!3013498))

(assert (= (and b!3013498 (not res!1241827)) b!3013501))

(assert (= (and b!3013501 res!1241829) b!3013499))

(assert (= (and b!3013499 res!1241832) b!3013494))

(assert (= (and b!3013494 res!1241833) b!3013500))

(assert (= (and b!3013501 (not res!1241831)) b!3013492))

(assert (= (and b!3013492 res!1241826) b!3013502))

(assert (= (and b!3013502 (not res!1241830)) b!3013497))

(assert (= (and b!3013497 (not res!1241828)) b!3013503))

(assert (= (or b!3013493 b!3013499 b!3013502) bm!203162))

(declare-fun m!3358427 () Bool)

(assert (=> b!3013494 m!3358427))

(assert (=> b!3013494 m!3358427))

(declare-fun m!3358429 () Bool)

(assert (=> b!3013494 m!3358429))

(assert (=> b!3013497 m!3358427))

(assert (=> b!3013497 m!3358427))

(assert (=> b!3013497 m!3358429))

(declare-fun m!3358431 () Bool)

(assert (=> d!847980 m!3358431))

(declare-fun m!3358433 () Bool)

(assert (=> d!847980 m!3358433))

(declare-fun m!3358435 () Bool)

(assert (=> b!3013500 m!3358435))

(assert (=> b!3013503 m!3358435))

(declare-fun m!3358437 () Bool)

(assert (=> b!3013495 m!3358437))

(assert (=> bm!203162 m!3358431))

(assert (=> b!3013504 m!3358435))

(assert (=> b!3013504 m!3358435))

(declare-fun m!3358439 () Bool)

(assert (=> b!3013504 m!3358439))

(assert (=> b!3013504 m!3358427))

(assert (=> b!3013504 m!3358439))

(assert (=> b!3013504 m!3358427))

(declare-fun m!3358441 () Bool)

(assert (=> b!3013504 m!3358441))

(assert (=> b!3013305 d!847980))

(declare-fun b!3013523 () Bool)

(declare-fun e!1891848 () Bool)

(declare-fun e!1891850 () Bool)

(assert (=> b!3013523 (= e!1891848 e!1891850)))

(declare-fun c!496516 () Bool)

(assert (=> b!3013523 (= c!496516 (is-Star!9404 r!17423))))

(declare-fun b!3013524 () Bool)

(declare-fun e!1891851 () Bool)

(declare-fun call!203175 () Bool)

(assert (=> b!3013524 (= e!1891851 call!203175)))

(declare-fun d!847982 () Bool)

(declare-fun res!1241848 () Bool)

(assert (=> d!847982 (=> res!1241848 e!1891848)))

(assert (=> d!847982 (= res!1241848 (is-ElementMatch!9404 r!17423))))

(assert (=> d!847982 (= (validRegex!4137 r!17423) e!1891848)))

(declare-fun b!3013525 () Bool)

(declare-fun res!1241844 () Bool)

(declare-fun e!1891853 () Bool)

(assert (=> b!3013525 (=> (not res!1241844) (not e!1891853))))

(declare-fun call!203174 () Bool)

(assert (=> b!3013525 (= res!1241844 call!203174)))

(declare-fun e!1891852 () Bool)

(assert (=> b!3013525 (= e!1891852 e!1891853)))

(declare-fun bm!203169 () Bool)

(declare-fun c!496515 () Bool)

(assert (=> bm!203169 (= call!203175 (validRegex!4137 (ite c!496516 (reg!9733 r!17423) (ite c!496515 (regOne!19321 r!17423) (regTwo!19320 r!17423)))))))

(declare-fun b!3013526 () Bool)

(assert (=> b!3013526 (= e!1891850 e!1891851)))

(declare-fun res!1241847 () Bool)

(assert (=> b!3013526 (= res!1241847 (not (nullable!3056 (reg!9733 r!17423))))))

(assert (=> b!3013526 (=> (not res!1241847) (not e!1891851))))

(declare-fun b!3013527 () Bool)

(assert (=> b!3013527 (= e!1891850 e!1891852)))

(assert (=> b!3013527 (= c!496515 (is-Union!9404 r!17423))))

(declare-fun b!3013528 () Bool)

(declare-fun call!203176 () Bool)

(assert (=> b!3013528 (= e!1891853 call!203176)))

(declare-fun b!3013529 () Bool)

(declare-fun e!1891854 () Bool)

(declare-fun e!1891849 () Bool)

(assert (=> b!3013529 (= e!1891854 e!1891849)))

(declare-fun res!1241845 () Bool)

(assert (=> b!3013529 (=> (not res!1241845) (not e!1891849))))

(assert (=> b!3013529 (= res!1241845 call!203176)))

(declare-fun b!3013530 () Bool)

(declare-fun res!1241846 () Bool)

(assert (=> b!3013530 (=> res!1241846 e!1891854)))

(assert (=> b!3013530 (= res!1241846 (not (is-Concat!14725 r!17423)))))

(assert (=> b!3013530 (= e!1891852 e!1891854)))

(declare-fun bm!203170 () Bool)

(assert (=> bm!203170 (= call!203176 (validRegex!4137 (ite c!496515 (regTwo!19321 r!17423) (regOne!19320 r!17423))))))

(declare-fun bm!203171 () Bool)

(assert (=> bm!203171 (= call!203174 call!203175)))

(declare-fun b!3013531 () Bool)

(assert (=> b!3013531 (= e!1891849 call!203174)))

(assert (= (and d!847982 (not res!1241848)) b!3013523))

(assert (= (and b!3013523 c!496516) b!3013526))

(assert (= (and b!3013523 (not c!496516)) b!3013527))

(assert (= (and b!3013526 res!1241847) b!3013524))

(assert (= (and b!3013527 c!496515) b!3013525))

(assert (= (and b!3013527 (not c!496515)) b!3013530))

(assert (= (and b!3013525 res!1241844) b!3013528))

(assert (= (and b!3013530 (not res!1241846)) b!3013529))

(assert (= (and b!3013529 res!1241845) b!3013531))

(assert (= (or b!3013525 b!3013531) bm!203171))

(assert (= (or b!3013528 b!3013529) bm!203170))

(assert (= (or b!3013524 bm!203171) bm!203169))

(declare-fun m!3358451 () Bool)

(assert (=> bm!203169 m!3358451))

(declare-fun m!3358453 () Bool)

(assert (=> b!3013526 m!3358453))

(declare-fun m!3358455 () Bool)

(assert (=> bm!203170 m!3358455))

(assert (=> start!290134 d!847982))

(declare-fun b!3013532 () Bool)

(declare-fun e!1891855 () Bool)

(declare-fun e!1891857 () Bool)

(assert (=> b!3013532 (= e!1891855 e!1891857)))

(declare-fun c!496518 () Bool)

(assert (=> b!3013532 (= c!496518 (is-Star!9404 (regOne!19320 r!17423)))))

(declare-fun b!3013533 () Bool)

(declare-fun e!1891858 () Bool)

(declare-fun call!203178 () Bool)

(assert (=> b!3013533 (= e!1891858 call!203178)))

(declare-fun d!847990 () Bool)

(declare-fun res!1241853 () Bool)

(assert (=> d!847990 (=> res!1241853 e!1891855)))

(assert (=> d!847990 (= res!1241853 (is-ElementMatch!9404 (regOne!19320 r!17423)))))

(assert (=> d!847990 (= (validRegex!4137 (regOne!19320 r!17423)) e!1891855)))

(declare-fun b!3013534 () Bool)

(declare-fun res!1241849 () Bool)

(declare-fun e!1891860 () Bool)

(assert (=> b!3013534 (=> (not res!1241849) (not e!1891860))))

(declare-fun call!203177 () Bool)

(assert (=> b!3013534 (= res!1241849 call!203177)))

(declare-fun e!1891859 () Bool)

(assert (=> b!3013534 (= e!1891859 e!1891860)))

(declare-fun bm!203172 () Bool)

(declare-fun c!496517 () Bool)

(assert (=> bm!203172 (= call!203178 (validRegex!4137 (ite c!496518 (reg!9733 (regOne!19320 r!17423)) (ite c!496517 (regOne!19321 (regOne!19320 r!17423)) (regTwo!19320 (regOne!19320 r!17423))))))))

(declare-fun b!3013535 () Bool)

(assert (=> b!3013535 (= e!1891857 e!1891858)))

(declare-fun res!1241852 () Bool)

(assert (=> b!3013535 (= res!1241852 (not (nullable!3056 (reg!9733 (regOne!19320 r!17423)))))))

(assert (=> b!3013535 (=> (not res!1241852) (not e!1891858))))

(declare-fun b!3013536 () Bool)

(assert (=> b!3013536 (= e!1891857 e!1891859)))

(assert (=> b!3013536 (= c!496517 (is-Union!9404 (regOne!19320 r!17423)))))

(declare-fun b!3013537 () Bool)

(declare-fun call!203179 () Bool)

(assert (=> b!3013537 (= e!1891860 call!203179)))

(declare-fun b!3013538 () Bool)

(declare-fun e!1891861 () Bool)

(declare-fun e!1891856 () Bool)

(assert (=> b!3013538 (= e!1891861 e!1891856)))

(declare-fun res!1241850 () Bool)

(assert (=> b!3013538 (=> (not res!1241850) (not e!1891856))))

(assert (=> b!3013538 (= res!1241850 call!203179)))

(declare-fun b!3013539 () Bool)

(declare-fun res!1241851 () Bool)

(assert (=> b!3013539 (=> res!1241851 e!1891861)))

(assert (=> b!3013539 (= res!1241851 (not (is-Concat!14725 (regOne!19320 r!17423))))))

(assert (=> b!3013539 (= e!1891859 e!1891861)))

(declare-fun bm!203173 () Bool)

(assert (=> bm!203173 (= call!203179 (validRegex!4137 (ite c!496517 (regTwo!19321 (regOne!19320 r!17423)) (regOne!19320 (regOne!19320 r!17423)))))))

(declare-fun bm!203174 () Bool)

(assert (=> bm!203174 (= call!203177 call!203178)))

(declare-fun b!3013540 () Bool)

(assert (=> b!3013540 (= e!1891856 call!203177)))

(assert (= (and d!847990 (not res!1241853)) b!3013532))

(assert (= (and b!3013532 c!496518) b!3013535))

(assert (= (and b!3013532 (not c!496518)) b!3013536))

(assert (= (and b!3013535 res!1241852) b!3013533))

(assert (= (and b!3013536 c!496517) b!3013534))

(assert (= (and b!3013536 (not c!496517)) b!3013539))

(assert (= (and b!3013534 res!1241849) b!3013537))

(assert (= (and b!3013539 (not res!1241851)) b!3013538))

(assert (= (and b!3013538 res!1241850) b!3013540))

(assert (= (or b!3013534 b!3013540) bm!203174))

(assert (= (or b!3013537 b!3013538) bm!203173))

(assert (= (or b!3013533 bm!203174) bm!203172))

(declare-fun m!3358457 () Bool)

(assert (=> bm!203172 m!3358457))

(declare-fun m!3358459 () Bool)

(assert (=> b!3013535 m!3358459))

(declare-fun m!3358461 () Bool)

(assert (=> bm!203173 m!3358461))

(assert (=> b!3013296 d!847990))

(declare-fun bs!529655 () Bool)

(declare-fun d!847992 () Bool)

(assert (= bs!529655 (and d!847992 b!3013303)))

(declare-fun lambda!112777 () Int)

(assert (=> bs!529655 (= lambda!112777 lambda!112751)))

(assert (=> bs!529655 (not (= lambda!112777 lambda!112752))))

(declare-fun bs!529656 () Bool)

(assert (= bs!529656 (and d!847992 b!3013432)))

(assert (=> bs!529656 (not (= lambda!112777 lambda!112765))))

(declare-fun bs!529657 () Bool)

(assert (= bs!529657 (and d!847992 b!3013431)))

(assert (=> bs!529657 (not (= lambda!112777 lambda!112766))))

(assert (=> d!847992 true))

(assert (=> d!847992 true))

(assert (=> d!847992 true))

(declare-fun bs!529658 () Bool)

(assert (= bs!529658 d!847992))

(declare-fun lambda!112778 () Int)

(assert (=> bs!529658 (not (= lambda!112778 lambda!112777))))

(assert (=> bs!529655 (not (= lambda!112778 lambda!112751))))

(assert (=> bs!529656 (not (= lambda!112778 lambda!112765))))

(assert (=> bs!529655 (= lambda!112778 lambda!112752)))

(assert (=> bs!529657 (= lambda!112778 lambda!112766)))

(assert (=> d!847992 true))

(assert (=> d!847992 true))

(assert (=> d!847992 true))

(assert (=> d!847992 (= (Exists!1672 lambda!112777) (Exists!1672 lambda!112778))))

(declare-fun lt!1044205 () Unit!49231)

(declare-fun choose!17893 (Regex!9404 Regex!9404 List!35269) Unit!49231)

(assert (=> d!847992 (= lt!1044205 (choose!17893 (regOne!19320 r!17423) (regTwo!19320 r!17423) s!11993))))

(assert (=> d!847992 (validRegex!4137 (regOne!19320 r!17423))))

(assert (=> d!847992 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!545 (regOne!19320 r!17423) (regTwo!19320 r!17423) s!11993) lt!1044205)))

(declare-fun m!3358479 () Bool)

(assert (=> bs!529658 m!3358479))

(declare-fun m!3358481 () Bool)

(assert (=> bs!529658 m!3358481))

(declare-fun m!3358483 () Bool)

(assert (=> bs!529658 m!3358483))

(assert (=> bs!529658 m!3358357))

(assert (=> b!3013303 d!847992))

(declare-fun d!847998 () Bool)

(declare-fun choose!17894 (Int) Bool)

(assert (=> d!847998 (= (Exists!1672 lambda!112751) (choose!17894 lambda!112751))))

(declare-fun bs!529659 () Bool)

(assert (= bs!529659 d!847998))

(declare-fun m!3358485 () Bool)

(assert (=> bs!529659 m!3358485))

(assert (=> b!3013303 d!847998))

(declare-fun d!848000 () Bool)

(declare-fun isEmpty!19437 (Option!6777) Bool)

(assert (=> d!848000 (= (isDefined!5328 lt!1044169) (not (isEmpty!19437 lt!1044169)))))

(declare-fun bs!529660 () Bool)

(assert (= bs!529660 d!848000))

(declare-fun m!3358487 () Bool)

(assert (=> bs!529660 m!3358487))

(assert (=> b!3013303 d!848000))

(declare-fun d!848002 () Bool)

(assert (=> d!848002 (= (Exists!1672 lambda!112752) (choose!17894 lambda!112752))))

(declare-fun bs!529661 () Bool)

(assert (= bs!529661 d!848002))

(declare-fun m!3358489 () Bool)

(assert (=> bs!529661 m!3358489))

(assert (=> b!3013303 d!848002))

(declare-fun d!848004 () Bool)

(assert (=> d!848004 (= (get!10946 lt!1044169) (v!34910 lt!1044169))))

(assert (=> b!3013303 d!848004))

(declare-fun b!3013563 () Bool)

(declare-fun e!1891875 () Bool)

(declare-fun e!1891873 () Bool)

(assert (=> b!3013563 (= e!1891875 e!1891873)))

(declare-fun c!496523 () Bool)

(assert (=> b!3013563 (= c!496523 (is-EmptyLang!9404 (regOne!19320 r!17423)))))

(declare-fun b!3013564 () Bool)

(declare-fun e!1891874 () Bool)

(declare-fun e!1891877 () Bool)

(assert (=> b!3013564 (= e!1891874 e!1891877)))

(declare-fun res!1241870 () Bool)

(assert (=> b!3013564 (=> (not res!1241870) (not e!1891877))))

(declare-fun lt!1044206 () Bool)

(assert (=> b!3013564 (= res!1241870 (not lt!1044206))))

(declare-fun d!848006 () Bool)

(assert (=> d!848006 e!1891875))

(declare-fun c!496522 () Bool)

(assert (=> d!848006 (= c!496522 (is-EmptyExpr!9404 (regOne!19320 r!17423)))))

(declare-fun e!1891878 () Bool)

(assert (=> d!848006 (= lt!1044206 e!1891878)))

(declare-fun c!496524 () Bool)

(assert (=> d!848006 (= c!496524 (isEmpty!19435 (_1!20177 lt!1044166)))))

(assert (=> d!848006 (validRegex!4137 (regOne!19320 r!17423))))

(assert (=> d!848006 (= (matchR!4286 (regOne!19320 r!17423) (_1!20177 lt!1044166)) lt!1044206)))

(declare-fun b!3013565 () Bool)

(declare-fun call!203181 () Bool)

(assert (=> b!3013565 (= e!1891875 (= lt!1044206 call!203181))))

(declare-fun b!3013566 () Bool)

(declare-fun res!1241877 () Bool)

(declare-fun e!1891876 () Bool)

(assert (=> b!3013566 (=> (not res!1241877) (not e!1891876))))

(assert (=> b!3013566 (= res!1241877 (isEmpty!19435 (tail!4938 (_1!20177 lt!1044166))))))

(declare-fun bm!203176 () Bool)

(assert (=> bm!203176 (= call!203181 (isEmpty!19435 (_1!20177 lt!1044166)))))

(declare-fun b!3013567 () Bool)

(assert (=> b!3013567 (= e!1891878 (nullable!3056 (regOne!19320 r!17423)))))

(declare-fun b!3013568 () Bool)

(assert (=> b!3013568 (= e!1891873 (not lt!1044206))))

(declare-fun b!3013569 () Bool)

(declare-fun res!1241872 () Bool)

(declare-fun e!1891879 () Bool)

(assert (=> b!3013569 (=> res!1241872 e!1891879)))

(assert (=> b!3013569 (= res!1241872 (not (isEmpty!19435 (tail!4938 (_1!20177 lt!1044166)))))))

(declare-fun b!3013570 () Bool)

(declare-fun res!1241871 () Bool)

(assert (=> b!3013570 (=> res!1241871 e!1891874)))

(assert (=> b!3013570 (= res!1241871 (not (is-ElementMatch!9404 (regOne!19320 r!17423))))))

(assert (=> b!3013570 (= e!1891873 e!1891874)))

(declare-fun b!3013571 () Bool)

(declare-fun res!1241876 () Bool)

(assert (=> b!3013571 (=> (not res!1241876) (not e!1891876))))

(assert (=> b!3013571 (= res!1241876 (not call!203181))))

(declare-fun b!3013572 () Bool)

(assert (=> b!3013572 (= e!1891876 (= (head!6712 (_1!20177 lt!1044166)) (c!496476 (regOne!19320 r!17423))))))

(declare-fun b!3013573 () Bool)

(declare-fun res!1241875 () Bool)

(assert (=> b!3013573 (=> res!1241875 e!1891874)))

(assert (=> b!3013573 (= res!1241875 e!1891876)))

(declare-fun res!1241873 () Bool)

(assert (=> b!3013573 (=> (not res!1241873) (not e!1891876))))

(assert (=> b!3013573 (= res!1241873 lt!1044206)))

(declare-fun b!3013574 () Bool)

(assert (=> b!3013574 (= e!1891877 e!1891879)))

(declare-fun res!1241874 () Bool)

(assert (=> b!3013574 (=> res!1241874 e!1891879)))

(assert (=> b!3013574 (= res!1241874 call!203181)))

(declare-fun b!3013575 () Bool)

(assert (=> b!3013575 (= e!1891879 (not (= (head!6712 (_1!20177 lt!1044166)) (c!496476 (regOne!19320 r!17423)))))))

(declare-fun b!3013576 () Bool)

(assert (=> b!3013576 (= e!1891878 (matchR!4286 (derivativeStep!2653 (regOne!19320 r!17423) (head!6712 (_1!20177 lt!1044166))) (tail!4938 (_1!20177 lt!1044166))))))

(assert (= (and d!848006 c!496524) b!3013567))

(assert (= (and d!848006 (not c!496524)) b!3013576))

(assert (= (and d!848006 c!496522) b!3013565))

(assert (= (and d!848006 (not c!496522)) b!3013563))

(assert (= (and b!3013563 c!496523) b!3013568))

(assert (= (and b!3013563 (not c!496523)) b!3013570))

(assert (= (and b!3013570 (not res!1241871)) b!3013573))

(assert (= (and b!3013573 res!1241873) b!3013571))

(assert (= (and b!3013571 res!1241876) b!3013566))

(assert (= (and b!3013566 res!1241877) b!3013572))

(assert (= (and b!3013573 (not res!1241875)) b!3013564))

(assert (= (and b!3013564 res!1241870) b!3013574))

(assert (= (and b!3013574 (not res!1241874)) b!3013569))

(assert (= (and b!3013569 (not res!1241872)) b!3013575))

(assert (= (or b!3013565 b!3013571 b!3013574) bm!203176))

(declare-fun m!3358491 () Bool)

(assert (=> b!3013566 m!3358491))

(assert (=> b!3013566 m!3358491))

(declare-fun m!3358493 () Bool)

(assert (=> b!3013566 m!3358493))

(assert (=> b!3013569 m!3358491))

(assert (=> b!3013569 m!3358491))

(assert (=> b!3013569 m!3358493))

(declare-fun m!3358495 () Bool)

(assert (=> d!848006 m!3358495))

(assert (=> d!848006 m!3358357))

(declare-fun m!3358497 () Bool)

(assert (=> b!3013572 m!3358497))

(assert (=> b!3013575 m!3358497))

(declare-fun m!3358499 () Bool)

(assert (=> b!3013567 m!3358499))

(assert (=> bm!203176 m!3358495))

(assert (=> b!3013576 m!3358497))

(assert (=> b!3013576 m!3358497))

(declare-fun m!3358501 () Bool)

(assert (=> b!3013576 m!3358501))

(assert (=> b!3013576 m!3358491))

(assert (=> b!3013576 m!3358501))

(assert (=> b!3013576 m!3358491))

(declare-fun m!3358503 () Bool)

(assert (=> b!3013576 m!3358503))

(assert (=> b!3013303 d!848006))

(declare-fun b!3013613 () Bool)

(declare-fun e!1891901 () Option!6777)

(assert (=> b!3013613 (= e!1891901 None!6776)))

(declare-fun d!848008 () Bool)

(declare-fun e!1891903 () Bool)

(assert (=> d!848008 e!1891903))

(declare-fun res!1241899 () Bool)

(assert (=> d!848008 (=> res!1241899 e!1891903)))

(declare-fun e!1891900 () Bool)

(assert (=> d!848008 (= res!1241899 e!1891900)))

(declare-fun res!1241902 () Bool)

(assert (=> d!848008 (=> (not res!1241902) (not e!1891900))))

(declare-fun lt!1044220 () Option!6777)

(assert (=> d!848008 (= res!1241902 (isDefined!5328 lt!1044220))))

(declare-fun e!1891904 () Option!6777)

(assert (=> d!848008 (= lt!1044220 e!1891904)))

(declare-fun c!496534 () Bool)

(declare-fun e!1891902 () Bool)

(assert (=> d!848008 (= c!496534 e!1891902)))

(declare-fun res!1241898 () Bool)

(assert (=> d!848008 (=> (not res!1241898) (not e!1891902))))

(assert (=> d!848008 (= res!1241898 (matchR!4286 (regOne!19320 r!17423) Nil!35145))))

(assert (=> d!848008 (validRegex!4137 (regOne!19320 r!17423))))

(assert (=> d!848008 (= (findConcatSeparation!1171 (regOne!19320 r!17423) (regTwo!19320 r!17423) Nil!35145 s!11993 s!11993) lt!1044220)))

(declare-fun b!3013614 () Bool)

(assert (=> b!3013614 (= e!1891904 (Some!6776 (tuple2!34091 Nil!35145 s!11993)))))

(declare-fun b!3013615 () Bool)

(assert (=> b!3013615 (= e!1891902 (matchR!4286 (regTwo!19320 r!17423) s!11993))))

(declare-fun b!3013616 () Bool)

(declare-fun lt!1044221 () Unit!49231)

(declare-fun lt!1044219 () Unit!49231)

(assert (=> b!3013616 (= lt!1044221 lt!1044219)))

(declare-fun ++!8423 (List!35269 List!35269) List!35269)

(assert (=> b!3013616 (= (++!8423 (++!8423 Nil!35145 (Cons!35145 (h!40565 s!11993) Nil!35145)) (t!234334 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1030 (List!35269 C!18994 List!35269 List!35269) Unit!49231)

(assert (=> b!3013616 (= lt!1044219 (lemmaMoveElementToOtherListKeepsConcatEq!1030 Nil!35145 (h!40565 s!11993) (t!234334 s!11993) s!11993))))

(assert (=> b!3013616 (= e!1891901 (findConcatSeparation!1171 (regOne!19320 r!17423) (regTwo!19320 r!17423) (++!8423 Nil!35145 (Cons!35145 (h!40565 s!11993) Nil!35145)) (t!234334 s!11993) s!11993))))

(declare-fun b!3013617 () Bool)

(declare-fun res!1241900 () Bool)

(assert (=> b!3013617 (=> (not res!1241900) (not e!1891900))))

(assert (=> b!3013617 (= res!1241900 (matchR!4286 (regTwo!19320 r!17423) (_2!20177 (get!10946 lt!1044220))))))

(declare-fun b!3013618 () Bool)

(declare-fun res!1241901 () Bool)

(assert (=> b!3013618 (=> (not res!1241901) (not e!1891900))))

(assert (=> b!3013618 (= res!1241901 (matchR!4286 (regOne!19320 r!17423) (_1!20177 (get!10946 lt!1044220))))))

(declare-fun b!3013619 () Bool)

(assert (=> b!3013619 (= e!1891904 e!1891901)))

(declare-fun c!496533 () Bool)

(assert (=> b!3013619 (= c!496533 (is-Nil!35145 s!11993))))

(declare-fun b!3013620 () Bool)

(assert (=> b!3013620 (= e!1891900 (= (++!8423 (_1!20177 (get!10946 lt!1044220)) (_2!20177 (get!10946 lt!1044220))) s!11993))))

(declare-fun b!3013621 () Bool)

(assert (=> b!3013621 (= e!1891903 (not (isDefined!5328 lt!1044220)))))

(assert (= (and d!848008 res!1241898) b!3013615))

(assert (= (and d!848008 c!496534) b!3013614))

(assert (= (and d!848008 (not c!496534)) b!3013619))

(assert (= (and b!3013619 c!496533) b!3013613))

(assert (= (and b!3013619 (not c!496533)) b!3013616))

(assert (= (and d!848008 res!1241902) b!3013618))

(assert (= (and b!3013618 res!1241901) b!3013617))

(assert (= (and b!3013617 res!1241900) b!3013620))

(assert (= (and d!848008 (not res!1241899)) b!3013621))

(declare-fun m!3358505 () Bool)

(assert (=> b!3013615 m!3358505))

(declare-fun m!3358507 () Bool)

(assert (=> b!3013618 m!3358507))

(declare-fun m!3358509 () Bool)

(assert (=> b!3013618 m!3358509))

(declare-fun m!3358511 () Bool)

(assert (=> d!848008 m!3358511))

(declare-fun m!3358513 () Bool)

(assert (=> d!848008 m!3358513))

(assert (=> d!848008 m!3358357))

(declare-fun m!3358515 () Bool)

(assert (=> b!3013616 m!3358515))

(assert (=> b!3013616 m!3358515))

(declare-fun m!3358517 () Bool)

(assert (=> b!3013616 m!3358517))

(declare-fun m!3358519 () Bool)

(assert (=> b!3013616 m!3358519))

(assert (=> b!3013616 m!3358515))

(declare-fun m!3358521 () Bool)

(assert (=> b!3013616 m!3358521))

(assert (=> b!3013620 m!3358507))

(declare-fun m!3358523 () Bool)

(assert (=> b!3013620 m!3358523))

(assert (=> b!3013621 m!3358511))

(assert (=> b!3013617 m!3358507))

(declare-fun m!3358525 () Bool)

(assert (=> b!3013617 m!3358525))

(assert (=> b!3013303 d!848008))

(declare-fun bs!529662 () Bool)

(declare-fun d!848010 () Bool)

(assert (= bs!529662 (and d!848010 d!847992)))

(declare-fun lambda!112781 () Int)

(assert (=> bs!529662 (= lambda!112781 lambda!112777)))

(declare-fun bs!529663 () Bool)

(assert (= bs!529663 (and d!848010 b!3013303)))

(assert (=> bs!529663 (= lambda!112781 lambda!112751)))

(declare-fun bs!529664 () Bool)

(assert (= bs!529664 (and d!848010 b!3013432)))

(assert (=> bs!529664 (not (= lambda!112781 lambda!112765))))

(assert (=> bs!529663 (not (= lambda!112781 lambda!112752))))

(declare-fun bs!529665 () Bool)

(assert (= bs!529665 (and d!848010 b!3013431)))

(assert (=> bs!529665 (not (= lambda!112781 lambda!112766))))

(assert (=> bs!529662 (not (= lambda!112781 lambda!112778))))

(assert (=> d!848010 true))

(assert (=> d!848010 true))

(assert (=> d!848010 true))

(assert (=> d!848010 (= (isDefined!5328 (findConcatSeparation!1171 (regOne!19320 r!17423) (regTwo!19320 r!17423) Nil!35145 s!11993 s!11993)) (Exists!1672 lambda!112781))))

(declare-fun lt!1044227 () Unit!49231)

(declare-fun choose!17897 (Regex!9404 Regex!9404 List!35269) Unit!49231)

(assert (=> d!848010 (= lt!1044227 (choose!17897 (regOne!19320 r!17423) (regTwo!19320 r!17423) s!11993))))

(assert (=> d!848010 (validRegex!4137 (regOne!19320 r!17423))))

(assert (=> d!848010 (= (lemmaFindConcatSeparationEquivalentToExists!949 (regOne!19320 r!17423) (regTwo!19320 r!17423) s!11993) lt!1044227)))

(declare-fun bs!529666 () Bool)

(assert (= bs!529666 d!848010))

(declare-fun m!3358549 () Bool)

(assert (=> bs!529666 m!3358549))

(assert (=> bs!529666 m!3358357))

(assert (=> bs!529666 m!3358345))

(assert (=> bs!529666 m!3358345))

(declare-fun m!3358551 () Bool)

(assert (=> bs!529666 m!3358551))

(declare-fun m!3358553 () Bool)

(assert (=> bs!529666 m!3358553))

(assert (=> b!3013303 d!848010))

(declare-fun b!3013639 () Bool)

(declare-fun e!1891914 () Bool)

(declare-fun tp!956196 () Bool)

(assert (=> b!3013639 (= e!1891914 (and tp_is_empty!16371 tp!956196))))

(assert (=> b!3013299 (= tp!956172 e!1891914)))

(assert (= (and b!3013299 (is-Cons!35145 (t!234334 s!11993))) b!3013639))

(declare-fun b!3013651 () Bool)

(declare-fun e!1891917 () Bool)

(declare-fun tp!956207 () Bool)

(declare-fun tp!956209 () Bool)

(assert (=> b!3013651 (= e!1891917 (and tp!956207 tp!956209))))

(declare-fun b!3013652 () Bool)

(declare-fun tp!956211 () Bool)

(assert (=> b!3013652 (= e!1891917 tp!956211)))

(declare-fun b!3013653 () Bool)

(declare-fun tp!956210 () Bool)

(declare-fun tp!956208 () Bool)

(assert (=> b!3013653 (= e!1891917 (and tp!956210 tp!956208))))

(assert (=> b!3013300 (= tp!956173 e!1891917)))

(declare-fun b!3013650 () Bool)

(assert (=> b!3013650 (= e!1891917 tp_is_empty!16371)))

(assert (= (and b!3013300 (is-ElementMatch!9404 (regOne!19320 r!17423))) b!3013650))

(assert (= (and b!3013300 (is-Concat!14725 (regOne!19320 r!17423))) b!3013651))

(assert (= (and b!3013300 (is-Star!9404 (regOne!19320 r!17423))) b!3013652))

(assert (= (and b!3013300 (is-Union!9404 (regOne!19320 r!17423))) b!3013653))

(declare-fun b!3013655 () Bool)

(declare-fun e!1891918 () Bool)

(declare-fun tp!956212 () Bool)

(declare-fun tp!956214 () Bool)

(assert (=> b!3013655 (= e!1891918 (and tp!956212 tp!956214))))

(declare-fun b!3013656 () Bool)

(declare-fun tp!956216 () Bool)

(assert (=> b!3013656 (= e!1891918 tp!956216)))

(declare-fun b!3013657 () Bool)

(declare-fun tp!956215 () Bool)

(declare-fun tp!956213 () Bool)

(assert (=> b!3013657 (= e!1891918 (and tp!956215 tp!956213))))

(assert (=> b!3013300 (= tp!956171 e!1891918)))

(declare-fun b!3013654 () Bool)

(assert (=> b!3013654 (= e!1891918 tp_is_empty!16371)))

(assert (= (and b!3013300 (is-ElementMatch!9404 (regTwo!19320 r!17423))) b!3013654))

(assert (= (and b!3013300 (is-Concat!14725 (regTwo!19320 r!17423))) b!3013655))

(assert (= (and b!3013300 (is-Star!9404 (regTwo!19320 r!17423))) b!3013656))

(assert (= (and b!3013300 (is-Union!9404 (regTwo!19320 r!17423))) b!3013657))

(declare-fun b!3013659 () Bool)

(declare-fun e!1891919 () Bool)

(declare-fun tp!956217 () Bool)

(declare-fun tp!956219 () Bool)

(assert (=> b!3013659 (= e!1891919 (and tp!956217 tp!956219))))

(declare-fun b!3013660 () Bool)

(declare-fun tp!956221 () Bool)

(assert (=> b!3013660 (= e!1891919 tp!956221)))

(declare-fun b!3013661 () Bool)

(declare-fun tp!956220 () Bool)

(declare-fun tp!956218 () Bool)

(assert (=> b!3013661 (= e!1891919 (and tp!956220 tp!956218))))

(assert (=> b!3013301 (= tp!956170 e!1891919)))

(declare-fun b!3013658 () Bool)

(assert (=> b!3013658 (= e!1891919 tp_is_empty!16371)))

(assert (= (and b!3013301 (is-ElementMatch!9404 (reg!9733 r!17423))) b!3013658))

(assert (= (and b!3013301 (is-Concat!14725 (reg!9733 r!17423))) b!3013659))

(assert (= (and b!3013301 (is-Star!9404 (reg!9733 r!17423))) b!3013660))

(assert (= (and b!3013301 (is-Union!9404 (reg!9733 r!17423))) b!3013661))

(declare-fun b!3013663 () Bool)

(declare-fun e!1891920 () Bool)

(declare-fun tp!956222 () Bool)

(declare-fun tp!956224 () Bool)

(assert (=> b!3013663 (= e!1891920 (and tp!956222 tp!956224))))

(declare-fun b!3013664 () Bool)

(declare-fun tp!956226 () Bool)

(assert (=> b!3013664 (= e!1891920 tp!956226)))

(declare-fun b!3013665 () Bool)

(declare-fun tp!956225 () Bool)

(declare-fun tp!956223 () Bool)

(assert (=> b!3013665 (= e!1891920 (and tp!956225 tp!956223))))

(assert (=> b!3013297 (= tp!956174 e!1891920)))

(declare-fun b!3013662 () Bool)

(assert (=> b!3013662 (= e!1891920 tp_is_empty!16371)))

(assert (= (and b!3013297 (is-ElementMatch!9404 (regOne!19321 r!17423))) b!3013662))

(assert (= (and b!3013297 (is-Concat!14725 (regOne!19321 r!17423))) b!3013663))

(assert (= (and b!3013297 (is-Star!9404 (regOne!19321 r!17423))) b!3013664))

(assert (= (and b!3013297 (is-Union!9404 (regOne!19321 r!17423))) b!3013665))

(declare-fun b!3013667 () Bool)

(declare-fun e!1891921 () Bool)

(declare-fun tp!956227 () Bool)

(declare-fun tp!956229 () Bool)

(assert (=> b!3013667 (= e!1891921 (and tp!956227 tp!956229))))

(declare-fun b!3013668 () Bool)

(declare-fun tp!956231 () Bool)

(assert (=> b!3013668 (= e!1891921 tp!956231)))

(declare-fun b!3013669 () Bool)

(declare-fun tp!956230 () Bool)

(declare-fun tp!956228 () Bool)

(assert (=> b!3013669 (= e!1891921 (and tp!956230 tp!956228))))

(assert (=> b!3013297 (= tp!956175 e!1891921)))

(declare-fun b!3013666 () Bool)

(assert (=> b!3013666 (= e!1891921 tp_is_empty!16371)))

(assert (= (and b!3013297 (is-ElementMatch!9404 (regTwo!19321 r!17423))) b!3013666))

(assert (= (and b!3013297 (is-Concat!14725 (regTwo!19321 r!17423))) b!3013667))

(assert (= (and b!3013297 (is-Star!9404 (regTwo!19321 r!17423))) b!3013668))

(assert (= (and b!3013297 (is-Union!9404 (regTwo!19321 r!17423))) b!3013669))

(push 1)

(assert (not bm!203176))

(assert (not bm!203170))

(assert (not bm!203172))

(assert (not bm!203158))

(assert (not b!3013621))

(assert (not b!3013655))

(assert (not b!3013566))

(assert (not b!3013495))

(assert (not bm!203173))

(assert (not bm!203161))

(assert (not d!847980))

(assert (not b!3013661))

(assert (not b!3013500))

(assert (not b!3013477))

(assert (not b!3013657))

(assert (not b!3013667))

(assert (not b!3013569))

(assert (not d!848010))

(assert tp_is_empty!16371)

(assert (not d!847976))

(assert (not b!3013526))

(assert (not bm!203157))

(assert (not b!3013437))

(assert (not d!848008))

(assert (not d!847998))

(assert (not b!3013659))

(assert (not b!3013482))

(assert (not b!3013497))

(assert (not b!3013567))

(assert (not d!847992))

(assert (not d!848000))

(assert (not b!3013494))

(assert (not b!3013615))

(assert (not b!3013656))

(assert (not b!3013504))

(assert (not b!3013476))

(assert (not b!3013651))

(assert (not b!3013438))

(assert (not bm!203162))

(assert (not b!3013479))

(assert (not b!3013575))

(assert (not b!3013503))

(assert (not b!3013616))

(assert (not b!3013660))

(assert (not b!3013653))

(assert (not b!3013486))

(assert (not d!847978))

(assert (not b!3013618))

(assert (not bm!203169))

(assert (not d!848002))

(assert (not b!3013639))

(assert (not b!3013663))

(assert (not b!3013617))

(assert (not b!3013572))

(assert (not b!3013535))

(assert (not b!3013664))

(assert (not b!3013576))

(assert (not b!3013668))

(assert (not b!3013669))

(assert (not b!3013620))

(assert (not b!3013485))

(assert (not b!3013665))

(assert (not b!3013652))

(assert (not d!848006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

