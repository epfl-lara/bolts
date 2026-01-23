; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88740 () Bool)

(assert start!88740)

(declare-fun b!1019451 () Bool)

(assert (=> b!1019451 true))

(assert (=> b!1019451 true))

(declare-fun lambda!36156 () Int)

(declare-fun lambda!36155 () Int)

(assert (=> b!1019451 (not (= lambda!36156 lambda!36155))))

(assert (=> b!1019451 true))

(assert (=> b!1019451 true))

(declare-fun b!1019444 () Bool)

(declare-fun e!651194 () Bool)

(declare-fun tp_is_empty!5271 () Bool)

(assert (=> b!1019444 (= e!651194 tp_is_empty!5271)))

(declare-fun b!1019445 () Bool)

(declare-fun e!651192 () Bool)

(declare-datatypes ((C!6198 0))(
  ( (C!6199 (val!3347 Int)) )
))
(declare-datatypes ((Regex!2814 0))(
  ( (ElementMatch!2814 (c!168923 C!6198)) (Concat!4647 (regOne!6140 Regex!2814) (regTwo!6140 Regex!2814)) (EmptyExpr!2814) (Star!2814 (reg!3143 Regex!2814)) (EmptyLang!2814) (Union!2814 (regOne!6141 Regex!2814) (regTwo!6141 Regex!2814)) )
))
(declare-fun r!15766 () Regex!2814)

(declare-fun validRegex!1283 (Regex!2814) Bool)

(assert (=> b!1019445 (= e!651192 (validRegex!1283 (regTwo!6140 r!15766)))))

(declare-fun b!1019446 () Bool)

(declare-fun tp!309890 () Bool)

(declare-fun tp!309889 () Bool)

(assert (=> b!1019446 (= e!651194 (and tp!309890 tp!309889))))

(declare-fun b!1019447 () Bool)

(declare-fun e!651195 () Bool)

(declare-fun e!651193 () Bool)

(assert (=> b!1019447 (= e!651195 (not e!651193))))

(declare-fun res!458077 () Bool)

(assert (=> b!1019447 (=> res!458077 e!651193)))

(declare-fun lt!354034 () Bool)

(assert (=> b!1019447 (= res!458077 (or lt!354034 (not (is-Concat!4647 r!15766)) (not (is-EmptyExpr!2814 (regOne!6140 r!15766)))))))

(declare-datatypes ((List!10044 0))(
  ( (Nil!10028) (Cons!10028 (h!15429 C!6198) (t!101090 List!10044)) )
))
(declare-fun s!10566 () List!10044)

(declare-fun matchRSpec!613 (Regex!2814 List!10044) Bool)

(assert (=> b!1019447 (= lt!354034 (matchRSpec!613 r!15766 s!10566))))

(declare-fun matchR!1350 (Regex!2814 List!10044) Bool)

(assert (=> b!1019447 (= lt!354034 (matchR!1350 r!15766 s!10566))))

(declare-datatypes ((Unit!15303 0))(
  ( (Unit!15304) )
))
(declare-fun lt!354037 () Unit!15303)

(declare-fun mainMatchTheorem!613 (Regex!2814 List!10044) Unit!15303)

(assert (=> b!1019447 (= lt!354037 (mainMatchTheorem!613 r!15766 s!10566))))

(declare-fun b!1019448 () Bool)

(declare-fun e!651196 () Bool)

(declare-fun tp!309886 () Bool)

(assert (=> b!1019448 (= e!651196 (and tp_is_empty!5271 tp!309886))))

(declare-fun res!458078 () Bool)

(assert (=> start!88740 (=> (not res!458078) (not e!651195))))

(assert (=> start!88740 (= res!458078 (validRegex!1283 r!15766))))

(assert (=> start!88740 e!651195))

(assert (=> start!88740 e!651194))

(assert (=> start!88740 e!651196))

(declare-fun b!1019449 () Bool)

(declare-fun tp!309888 () Bool)

(declare-fun tp!309885 () Bool)

(assert (=> b!1019449 (= e!651194 (and tp!309888 tp!309885))))

(declare-fun b!1019450 () Bool)

(declare-fun tp!309887 () Bool)

(assert (=> b!1019450 (= e!651194 tp!309887)))

(assert (=> b!1019451 (= e!651193 e!651192)))

(declare-fun res!458079 () Bool)

(assert (=> b!1019451 (=> res!458079 e!651192)))

(declare-fun isEmpty!6375 (List!10044) Bool)

(assert (=> b!1019451 (= res!458079 (isEmpty!6375 s!10566))))

(declare-fun Exists!543 (Int) Bool)

(assert (=> b!1019451 (= (Exists!543 lambda!36155) (Exists!543 lambda!36156))))

(declare-fun lt!354036 () Unit!15303)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!245 (Regex!2814 Regex!2814 List!10044) Unit!15303)

(assert (=> b!1019451 (= lt!354036 (lemmaExistCutMatchRandMatchRSpecEquivalent!245 EmptyExpr!2814 (regTwo!6140 r!15766) s!10566))))

(declare-datatypes ((tuple2!11410 0))(
  ( (tuple2!11411 (_1!6531 List!10044) (_2!6531 List!10044)) )
))
(declare-datatypes ((Option!2347 0))(
  ( (None!2346) (Some!2346 (v!19763 tuple2!11410)) )
))
(declare-fun lt!354035 () Option!2347)

(declare-fun isDefined!1989 (Option!2347) Bool)

(assert (=> b!1019451 (= (isDefined!1989 lt!354035) (Exists!543 lambda!36155))))

(declare-fun findConcatSeparation!453 (Regex!2814 Regex!2814 List!10044 List!10044 List!10044) Option!2347)

(assert (=> b!1019451 (= lt!354035 (findConcatSeparation!453 EmptyExpr!2814 (regTwo!6140 r!15766) Nil!10028 s!10566 s!10566))))

(declare-fun lt!354038 () Unit!15303)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!453 (Regex!2814 Regex!2814 List!10044) Unit!15303)

(assert (=> b!1019451 (= lt!354038 (lemmaFindConcatSeparationEquivalentToExists!453 EmptyExpr!2814 (regTwo!6140 r!15766) s!10566))))

(declare-fun b!1019452 () Bool)

(declare-fun res!458080 () Bool)

(assert (=> b!1019452 (=> res!458080 e!651192)))

(declare-fun isEmpty!6376 (Option!2347) Bool)

(assert (=> b!1019452 (= res!458080 (not (isEmpty!6376 lt!354035)))))

(assert (= (and start!88740 res!458078) b!1019447))

(assert (= (and b!1019447 (not res!458077)) b!1019451))

(assert (= (and b!1019451 (not res!458079)) b!1019452))

(assert (= (and b!1019452 (not res!458080)) b!1019445))

(assert (= (and start!88740 (is-ElementMatch!2814 r!15766)) b!1019444))

(assert (= (and start!88740 (is-Concat!4647 r!15766)) b!1019449))

(assert (= (and start!88740 (is-Star!2814 r!15766)) b!1019450))

(assert (= (and start!88740 (is-Union!2814 r!15766)) b!1019446))

(assert (= (and start!88740 (is-Cons!10028 s!10566)) b!1019448))

(declare-fun m!1199325 () Bool)

(assert (=> b!1019452 m!1199325))

(declare-fun m!1199327 () Bool)

(assert (=> b!1019451 m!1199327))

(declare-fun m!1199329 () Bool)

(assert (=> b!1019451 m!1199329))

(assert (=> b!1019451 m!1199327))

(declare-fun m!1199331 () Bool)

(assert (=> b!1019451 m!1199331))

(declare-fun m!1199333 () Bool)

(assert (=> b!1019451 m!1199333))

(declare-fun m!1199335 () Bool)

(assert (=> b!1019451 m!1199335))

(declare-fun m!1199337 () Bool)

(assert (=> b!1019451 m!1199337))

(declare-fun m!1199339 () Bool)

(assert (=> b!1019451 m!1199339))

(declare-fun m!1199341 () Bool)

(assert (=> start!88740 m!1199341))

(declare-fun m!1199343 () Bool)

(assert (=> b!1019447 m!1199343))

(declare-fun m!1199345 () Bool)

(assert (=> b!1019447 m!1199345))

(declare-fun m!1199347 () Bool)

(assert (=> b!1019447 m!1199347))

(declare-fun m!1199349 () Bool)

(assert (=> b!1019445 m!1199349))

(push 1)

(assert (not start!88740))

(assert (not b!1019446))

(assert (not b!1019447))

(assert (not b!1019450))

(assert (not b!1019445))

(assert tp_is_empty!5271)

(assert (not b!1019449))

(assert (not b!1019452))

(assert (not b!1019451))

(assert (not b!1019448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!294231 () Bool)

(declare-fun choose!6439 (Int) Bool)

(assert (=> d!294231 (= (Exists!543 lambda!36155) (choose!6439 lambda!36155))))

(declare-fun bs!246586 () Bool)

(assert (= bs!246586 d!294231))

(declare-fun m!1199377 () Bool)

(assert (=> bs!246586 m!1199377))

(assert (=> b!1019451 d!294231))

(declare-fun d!294233 () Bool)

(assert (=> d!294233 (= (isEmpty!6375 s!10566) (is-Nil!10028 s!10566))))

(assert (=> b!1019451 d!294233))

(declare-fun b!1019518 () Bool)

(declare-fun e!651229 () Bool)

(declare-fun lt!354062 () Option!2347)

(declare-fun ++!2735 (List!10044 List!10044) List!10044)

(declare-fun get!3526 (Option!2347) tuple2!11410)

(assert (=> b!1019518 (= e!651229 (= (++!2735 (_1!6531 (get!3526 lt!354062)) (_2!6531 (get!3526 lt!354062))) s!10566))))

(declare-fun b!1019519 () Bool)

(declare-fun res!458115 () Bool)

(assert (=> b!1019519 (=> (not res!458115) (not e!651229))))

(assert (=> b!1019519 (= res!458115 (matchR!1350 (regTwo!6140 r!15766) (_2!6531 (get!3526 lt!354062))))))

(declare-fun b!1019520 () Bool)

(declare-fun e!651228 () Bool)

(assert (=> b!1019520 (= e!651228 (matchR!1350 (regTwo!6140 r!15766) s!10566))))

(declare-fun b!1019521 () Bool)

(declare-fun res!458117 () Bool)

(assert (=> b!1019521 (=> (not res!458117) (not e!651229))))

(assert (=> b!1019521 (= res!458117 (matchR!1350 EmptyExpr!2814 (_1!6531 (get!3526 lt!354062))))))

(declare-fun d!294235 () Bool)

(declare-fun e!651232 () Bool)

(assert (=> d!294235 e!651232))

(declare-fun res!458119 () Bool)

(assert (=> d!294235 (=> res!458119 e!651232)))

(assert (=> d!294235 (= res!458119 e!651229)))

(declare-fun res!458118 () Bool)

(assert (=> d!294235 (=> (not res!458118) (not e!651229))))

(assert (=> d!294235 (= res!458118 (isDefined!1989 lt!354062))))

(declare-fun e!651230 () Option!2347)

(assert (=> d!294235 (= lt!354062 e!651230)))

(declare-fun c!168929 () Bool)

(assert (=> d!294235 (= c!168929 e!651228)))

(declare-fun res!458116 () Bool)

(assert (=> d!294235 (=> (not res!458116) (not e!651228))))

(assert (=> d!294235 (= res!458116 (matchR!1350 EmptyExpr!2814 Nil!10028))))

(assert (=> d!294235 (validRegex!1283 EmptyExpr!2814)))

(assert (=> d!294235 (= (findConcatSeparation!453 EmptyExpr!2814 (regTwo!6140 r!15766) Nil!10028 s!10566 s!10566) lt!354062)))

(declare-fun b!1019522 () Bool)

(assert (=> b!1019522 (= e!651232 (not (isDefined!1989 lt!354062)))))

(declare-fun b!1019523 () Bool)

(declare-fun lt!354060 () Unit!15303)

(declare-fun lt!354061 () Unit!15303)

(assert (=> b!1019523 (= lt!354060 lt!354061)))

(assert (=> b!1019523 (= (++!2735 (++!2735 Nil!10028 (Cons!10028 (h!15429 s!10566) Nil!10028)) (t!101090 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!335 (List!10044 C!6198 List!10044 List!10044) Unit!15303)

(assert (=> b!1019523 (= lt!354061 (lemmaMoveElementToOtherListKeepsConcatEq!335 Nil!10028 (h!15429 s!10566) (t!101090 s!10566) s!10566))))

(declare-fun e!651231 () Option!2347)

(assert (=> b!1019523 (= e!651231 (findConcatSeparation!453 EmptyExpr!2814 (regTwo!6140 r!15766) (++!2735 Nil!10028 (Cons!10028 (h!15429 s!10566) Nil!10028)) (t!101090 s!10566) s!10566))))

(declare-fun b!1019524 () Bool)

(assert (=> b!1019524 (= e!651230 e!651231)))

(declare-fun c!168930 () Bool)

(assert (=> b!1019524 (= c!168930 (is-Nil!10028 s!10566))))

(declare-fun b!1019525 () Bool)

(assert (=> b!1019525 (= e!651230 (Some!2346 (tuple2!11411 Nil!10028 s!10566)))))

(declare-fun b!1019526 () Bool)

(assert (=> b!1019526 (= e!651231 None!2346)))

(assert (= (and d!294235 res!458116) b!1019520))

(assert (= (and d!294235 c!168929) b!1019525))

(assert (= (and d!294235 (not c!168929)) b!1019524))

(assert (= (and b!1019524 c!168930) b!1019526))

(assert (= (and b!1019524 (not c!168930)) b!1019523))

(assert (= (and d!294235 res!458118) b!1019521))

(assert (= (and b!1019521 res!458117) b!1019519))

(assert (= (and b!1019519 res!458115) b!1019518))

(assert (= (and d!294235 (not res!458119)) b!1019522))

(declare-fun m!1199381 () Bool)

(assert (=> b!1019522 m!1199381))

(declare-fun m!1199383 () Bool)

(assert (=> b!1019521 m!1199383))

(declare-fun m!1199385 () Bool)

(assert (=> b!1019521 m!1199385))

(declare-fun m!1199387 () Bool)

(assert (=> b!1019520 m!1199387))

(declare-fun m!1199389 () Bool)

(assert (=> b!1019523 m!1199389))

(assert (=> b!1019523 m!1199389))

(declare-fun m!1199391 () Bool)

(assert (=> b!1019523 m!1199391))

(declare-fun m!1199393 () Bool)

(assert (=> b!1019523 m!1199393))

(assert (=> b!1019523 m!1199389))

(declare-fun m!1199395 () Bool)

(assert (=> b!1019523 m!1199395))

(assert (=> b!1019518 m!1199383))

(declare-fun m!1199397 () Bool)

(assert (=> b!1019518 m!1199397))

(assert (=> b!1019519 m!1199383))

(declare-fun m!1199399 () Bool)

(assert (=> b!1019519 m!1199399))

(assert (=> d!294235 m!1199381))

(declare-fun m!1199401 () Bool)

(assert (=> d!294235 m!1199401))

(declare-fun m!1199403 () Bool)

(assert (=> d!294235 m!1199403))

(assert (=> b!1019451 d!294235))

(declare-fun bs!246588 () Bool)

(declare-fun d!294245 () Bool)

(assert (= bs!246588 (and d!294245 b!1019451)))

(declare-fun lambda!36167 () Int)

(assert (=> bs!246588 (= lambda!36167 lambda!36155)))

(assert (=> bs!246588 (not (= lambda!36167 lambda!36156))))

(assert (=> d!294245 true))

(assert (=> d!294245 true))

(assert (=> d!294245 true))

(assert (=> d!294245 (= (isDefined!1989 (findConcatSeparation!453 EmptyExpr!2814 (regTwo!6140 r!15766) Nil!10028 s!10566 s!10566)) (Exists!543 lambda!36167))))

(declare-fun lt!354065 () Unit!15303)

(declare-fun choose!6440 (Regex!2814 Regex!2814 List!10044) Unit!15303)

(assert (=> d!294245 (= lt!354065 (choose!6440 EmptyExpr!2814 (regTwo!6140 r!15766) s!10566))))

(assert (=> d!294245 (validRegex!1283 EmptyExpr!2814)))

(assert (=> d!294245 (= (lemmaFindConcatSeparationEquivalentToExists!453 EmptyExpr!2814 (regTwo!6140 r!15766) s!10566) lt!354065)))

(declare-fun bs!246589 () Bool)

(assert (= bs!246589 d!294245))

(assert (=> bs!246589 m!1199339))

(assert (=> bs!246589 m!1199339))

(declare-fun m!1199405 () Bool)

(assert (=> bs!246589 m!1199405))

(declare-fun m!1199407 () Bool)

(assert (=> bs!246589 m!1199407))

(assert (=> bs!246589 m!1199403))

(declare-fun m!1199409 () Bool)

(assert (=> bs!246589 m!1199409))

(assert (=> b!1019451 d!294245))

(declare-fun bs!246590 () Bool)

(declare-fun d!294247 () Bool)

(assert (= bs!246590 (and d!294247 b!1019451)))

(declare-fun lambda!36172 () Int)

(assert (=> bs!246590 (= lambda!36172 lambda!36155)))

(assert (=> bs!246590 (not (= lambda!36172 lambda!36156))))

(declare-fun bs!246591 () Bool)

(assert (= bs!246591 (and d!294247 d!294245)))

(assert (=> bs!246591 (= lambda!36172 lambda!36167)))

(assert (=> d!294247 true))

(assert (=> d!294247 true))

(assert (=> d!294247 true))

(declare-fun lambda!36173 () Int)

(assert (=> bs!246590 (not (= lambda!36173 lambda!36155))))

(assert (=> bs!246590 (= lambda!36173 lambda!36156)))

(assert (=> bs!246591 (not (= lambda!36173 lambda!36167))))

(declare-fun bs!246592 () Bool)

(assert (= bs!246592 d!294247))

(assert (=> bs!246592 (not (= lambda!36173 lambda!36172))))

(assert (=> d!294247 true))

(assert (=> d!294247 true))

(assert (=> d!294247 true))

(assert (=> d!294247 (= (Exists!543 lambda!36172) (Exists!543 lambda!36173))))

(declare-fun lt!354068 () Unit!15303)

(declare-fun choose!6441 (Regex!2814 Regex!2814 List!10044) Unit!15303)

(assert (=> d!294247 (= lt!354068 (choose!6441 EmptyExpr!2814 (regTwo!6140 r!15766) s!10566))))

(assert (=> d!294247 (validRegex!1283 EmptyExpr!2814)))

(assert (=> d!294247 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!245 EmptyExpr!2814 (regTwo!6140 r!15766) s!10566) lt!354068)))

(declare-fun m!1199411 () Bool)

(assert (=> bs!246592 m!1199411))

(declare-fun m!1199413 () Bool)

(assert (=> bs!246592 m!1199413))

(declare-fun m!1199415 () Bool)

(assert (=> bs!246592 m!1199415))

(assert (=> bs!246592 m!1199403))

(assert (=> b!1019451 d!294247))

(declare-fun d!294249 () Bool)

(assert (=> d!294249 (= (isDefined!1989 lt!354035) (not (isEmpty!6376 lt!354035)))))

(declare-fun bs!246593 () Bool)

(assert (= bs!246593 d!294249))

(assert (=> bs!246593 m!1199325))

(assert (=> b!1019451 d!294249))

(declare-fun d!294251 () Bool)

(assert (=> d!294251 (= (Exists!543 lambda!36156) (choose!6439 lambda!36156))))

(declare-fun bs!246594 () Bool)

(assert (= bs!246594 d!294251))

(declare-fun m!1199417 () Bool)

(assert (=> bs!246594 m!1199417))

(assert (=> b!1019451 d!294251))

(declare-fun bs!246595 () Bool)

(declare-fun b!1019602 () Bool)

(assert (= bs!246595 (and b!1019602 b!1019451)))

(declare-fun lambda!36178 () Int)

(assert (=> bs!246595 (not (= lambda!36178 lambda!36156))))

(declare-fun bs!246596 () Bool)

(assert (= bs!246596 (and b!1019602 d!294245)))

(assert (=> bs!246596 (not (= lambda!36178 lambda!36167))))

(declare-fun bs!246597 () Bool)

(assert (= bs!246597 (and b!1019602 d!294247)))

(assert (=> bs!246597 (not (= lambda!36178 lambda!36172))))

(assert (=> bs!246597 (not (= lambda!36178 lambda!36173))))

(assert (=> bs!246595 (not (= lambda!36178 lambda!36155))))

(assert (=> b!1019602 true))

(assert (=> b!1019602 true))

(declare-fun bs!246598 () Bool)

(declare-fun b!1019607 () Bool)

(assert (= bs!246598 (and b!1019607 b!1019451)))

(declare-fun lambda!36179 () Int)

(assert (=> bs!246598 (= (= (regOne!6140 r!15766) EmptyExpr!2814) (= lambda!36179 lambda!36156))))

(declare-fun bs!246599 () Bool)

(assert (= bs!246599 (and b!1019607 d!294245)))

(assert (=> bs!246599 (not (= lambda!36179 lambda!36167))))

(declare-fun bs!246600 () Bool)

(assert (= bs!246600 (and b!1019607 d!294247)))

(assert (=> bs!246600 (not (= lambda!36179 lambda!36172))))

(declare-fun bs!246601 () Bool)

(assert (= bs!246601 (and b!1019607 b!1019602)))

(assert (=> bs!246601 (not (= lambda!36179 lambda!36178))))

(assert (=> bs!246600 (= (= (regOne!6140 r!15766) EmptyExpr!2814) (= lambda!36179 lambda!36173))))

(assert (=> bs!246598 (not (= lambda!36179 lambda!36155))))

(assert (=> b!1019607 true))

(assert (=> b!1019607 true))

(declare-fun b!1019598 () Bool)

(declare-fun e!651275 () Bool)

(declare-fun e!651277 () Bool)

(assert (=> b!1019598 (= e!651275 e!651277)))

(declare-fun res!458164 () Bool)

(assert (=> b!1019598 (= res!458164 (matchRSpec!613 (regOne!6141 r!15766) s!10566))))

(assert (=> b!1019598 (=> res!458164 e!651277)))

(declare-fun bm!69701 () Bool)

(declare-fun call!69706 () Bool)

(assert (=> bm!69701 (= call!69706 (isEmpty!6375 s!10566))))

(declare-fun b!1019599 () Bool)

(declare-fun e!651274 () Bool)

(assert (=> b!1019599 (= e!651274 call!69706)))

(declare-fun b!1019600 () Bool)

(declare-fun res!458163 () Bool)

(declare-fun e!651272 () Bool)

(assert (=> b!1019600 (=> res!458163 e!651272)))

(assert (=> b!1019600 (= res!458163 call!69706)))

(declare-fun e!651278 () Bool)

(assert (=> b!1019600 (= e!651278 e!651272)))

(declare-fun b!1019601 () Bool)

(assert (=> b!1019601 (= e!651277 (matchRSpec!613 (regTwo!6141 r!15766) s!10566))))

(declare-fun call!69707 () Bool)

(assert (=> b!1019602 (= e!651272 call!69707)))

(declare-fun b!1019603 () Bool)

(assert (=> b!1019603 (= e!651275 e!651278)))

(declare-fun c!168948 () Bool)

(assert (=> b!1019603 (= c!168948 (is-Star!2814 r!15766))))

(declare-fun b!1019604 () Bool)

(declare-fun e!651273 () Bool)

(assert (=> b!1019604 (= e!651274 e!651273)))

(declare-fun res!458165 () Bool)

(assert (=> b!1019604 (= res!458165 (not (is-EmptyLang!2814 r!15766)))))

(assert (=> b!1019604 (=> (not res!458165) (not e!651273))))

(declare-fun bm!69702 () Bool)

(assert (=> bm!69702 (= call!69707 (Exists!543 (ite c!168948 lambda!36178 lambda!36179)))))

(declare-fun b!1019605 () Bool)

(declare-fun c!168946 () Bool)

(assert (=> b!1019605 (= c!168946 (is-Union!2814 r!15766))))

(declare-fun e!651276 () Bool)

(assert (=> b!1019605 (= e!651276 e!651275)))

(declare-fun b!1019606 () Bool)

(declare-fun c!168945 () Bool)

(assert (=> b!1019606 (= c!168945 (is-ElementMatch!2814 r!15766))))

(assert (=> b!1019606 (= e!651273 e!651276)))

(declare-fun d!294253 () Bool)

(declare-fun c!168947 () Bool)

(assert (=> d!294253 (= c!168947 (is-EmptyExpr!2814 r!15766))))

(assert (=> d!294253 (= (matchRSpec!613 r!15766 s!10566) e!651274)))

(assert (=> b!1019607 (= e!651278 call!69707)))

(declare-fun b!1019608 () Bool)

(assert (=> b!1019608 (= e!651276 (= s!10566 (Cons!10028 (c!168923 r!15766) Nil!10028)))))

(assert (= (and d!294253 c!168947) b!1019599))

(assert (= (and d!294253 (not c!168947)) b!1019604))

(assert (= (and b!1019604 res!458165) b!1019606))

(assert (= (and b!1019606 c!168945) b!1019608))

(assert (= (and b!1019606 (not c!168945)) b!1019605))

(assert (= (and b!1019605 c!168946) b!1019598))

(assert (= (and b!1019605 (not c!168946)) b!1019603))

(assert (= (and b!1019598 (not res!458164)) b!1019601))

(assert (= (and b!1019603 c!168948) b!1019600))

(assert (= (and b!1019603 (not c!168948)) b!1019607))

(assert (= (and b!1019600 (not res!458163)) b!1019602))

(assert (= (or b!1019602 b!1019607) bm!69702))

(assert (= (or b!1019599 b!1019600) bm!69701))

(declare-fun m!1199443 () Bool)

(assert (=> b!1019598 m!1199443))

(assert (=> bm!69701 m!1199337))

(declare-fun m!1199445 () Bool)

(assert (=> b!1019601 m!1199445))

(declare-fun m!1199447 () Bool)

(assert (=> bm!69702 m!1199447))

(assert (=> b!1019447 d!294253))

(declare-fun b!1019637 () Bool)

(declare-fun e!651293 () Bool)

(declare-fun lt!354082 () Bool)

(assert (=> b!1019637 (= e!651293 (not lt!354082))))

(declare-fun b!1019638 () Bool)

(declare-fun e!651296 () Bool)

(declare-fun nullable!919 (Regex!2814) Bool)

(assert (=> b!1019638 (= e!651296 (nullable!919 r!15766))))

(declare-fun b!1019639 () Bool)

(declare-fun res!458184 () Bool)

(declare-fun e!651299 () Bool)

(assert (=> b!1019639 (=> res!458184 e!651299)))

(declare-fun e!651298 () Bool)

(assert (=> b!1019639 (= res!458184 e!651298)))

(declare-fun res!458189 () Bool)

(assert (=> b!1019639 (=> (not res!458189) (not e!651298))))

(assert (=> b!1019639 (= res!458189 lt!354082)))

(declare-fun b!1019640 () Bool)

(declare-fun res!458187 () Bool)

(assert (=> b!1019640 (=> (not res!458187) (not e!651298))))

(declare-fun tail!1438 (List!10044) List!10044)

(assert (=> b!1019640 (= res!458187 (isEmpty!6375 (tail!1438 s!10566)))))

(declare-fun b!1019641 () Bool)

(declare-fun e!651294 () Bool)

(declare-fun e!651295 () Bool)

(assert (=> b!1019641 (= e!651294 e!651295)))

(declare-fun res!458186 () Bool)

(assert (=> b!1019641 (=> res!458186 e!651295)))

(declare-fun call!69710 () Bool)

(assert (=> b!1019641 (= res!458186 call!69710)))

(declare-fun b!1019642 () Bool)

(assert (=> b!1019642 (= e!651299 e!651294)))

(declare-fun res!458188 () Bool)

(assert (=> b!1019642 (=> (not res!458188) (not e!651294))))

(assert (=> b!1019642 (= res!458188 (not lt!354082))))

(declare-fun b!1019643 () Bool)

(declare-fun res!458183 () Bool)

(assert (=> b!1019643 (=> res!458183 e!651299)))

(assert (=> b!1019643 (= res!458183 (not (is-ElementMatch!2814 r!15766)))))

(assert (=> b!1019643 (= e!651293 e!651299)))

(declare-fun b!1019644 () Bool)

(declare-fun e!651297 () Bool)

(assert (=> b!1019644 (= e!651297 (= lt!354082 call!69710))))

(declare-fun d!294257 () Bool)

(assert (=> d!294257 e!651297))

(declare-fun c!168957 () Bool)

(assert (=> d!294257 (= c!168957 (is-EmptyExpr!2814 r!15766))))

(assert (=> d!294257 (= lt!354082 e!651296)))

(declare-fun c!168956 () Bool)

(assert (=> d!294257 (= c!168956 (isEmpty!6375 s!10566))))

(assert (=> d!294257 (validRegex!1283 r!15766)))

(assert (=> d!294257 (= (matchR!1350 r!15766 s!10566) lt!354082)))

(declare-fun b!1019645 () Bool)

(declare-fun res!458185 () Bool)

(assert (=> b!1019645 (=> res!458185 e!651295)))

(assert (=> b!1019645 (= res!458185 (not (isEmpty!6375 (tail!1438 s!10566))))))

(declare-fun b!1019646 () Bool)

(assert (=> b!1019646 (= e!651297 e!651293)))

(declare-fun c!168955 () Bool)

(assert (=> b!1019646 (= c!168955 (is-EmptyLang!2814 r!15766))))

(declare-fun b!1019647 () Bool)

(declare-fun head!1876 (List!10044) C!6198)

(assert (=> b!1019647 (= e!651295 (not (= (head!1876 s!10566) (c!168923 r!15766))))))

(declare-fun b!1019648 () Bool)

(declare-fun res!458182 () Bool)

(assert (=> b!1019648 (=> (not res!458182) (not e!651298))))

(assert (=> b!1019648 (= res!458182 (not call!69710))))

(declare-fun bm!69705 () Bool)

(assert (=> bm!69705 (= call!69710 (isEmpty!6375 s!10566))))

(declare-fun b!1019649 () Bool)

(assert (=> b!1019649 (= e!651298 (= (head!1876 s!10566) (c!168923 r!15766)))))

(declare-fun b!1019650 () Bool)

(declare-fun derivativeStep!722 (Regex!2814 C!6198) Regex!2814)

(assert (=> b!1019650 (= e!651296 (matchR!1350 (derivativeStep!722 r!15766 (head!1876 s!10566)) (tail!1438 s!10566)))))

(assert (= (and d!294257 c!168956) b!1019638))

(assert (= (and d!294257 (not c!168956)) b!1019650))

(assert (= (and d!294257 c!168957) b!1019644))

(assert (= (and d!294257 (not c!168957)) b!1019646))

(assert (= (and b!1019646 c!168955) b!1019637))

(assert (= (and b!1019646 (not c!168955)) b!1019643))

(assert (= (and b!1019643 (not res!458183)) b!1019639))

(assert (= (and b!1019639 res!458189) b!1019648))

(assert (= (and b!1019648 res!458182) b!1019640))

(assert (= (and b!1019640 res!458187) b!1019649))

(assert (= (and b!1019639 (not res!458184)) b!1019642))

(assert (= (and b!1019642 res!458188) b!1019641))

(assert (= (and b!1019641 (not res!458186)) b!1019645))

(assert (= (and b!1019645 (not res!458185)) b!1019647))

(assert (= (or b!1019644 b!1019641 b!1019648) bm!69705))

(declare-fun m!1199449 () Bool)

(assert (=> b!1019638 m!1199449))

(declare-fun m!1199451 () Bool)

(assert (=> b!1019645 m!1199451))

(assert (=> b!1019645 m!1199451))

(declare-fun m!1199453 () Bool)

(assert (=> b!1019645 m!1199453))

(assert (=> b!1019640 m!1199451))

(assert (=> b!1019640 m!1199451))

(assert (=> b!1019640 m!1199453))

(declare-fun m!1199455 () Bool)

(assert (=> b!1019647 m!1199455))

(assert (=> bm!69705 m!1199337))

(assert (=> b!1019649 m!1199455))

(assert (=> b!1019650 m!1199455))

(assert (=> b!1019650 m!1199455))

(declare-fun m!1199457 () Bool)

(assert (=> b!1019650 m!1199457))

(assert (=> b!1019650 m!1199451))

(assert (=> b!1019650 m!1199457))

(assert (=> b!1019650 m!1199451))

(declare-fun m!1199459 () Bool)

(assert (=> b!1019650 m!1199459))

(assert (=> d!294257 m!1199337))

(assert (=> d!294257 m!1199341))

(assert (=> b!1019447 d!294257))

(declare-fun d!294259 () Bool)

(assert (=> d!294259 (= (matchR!1350 r!15766 s!10566) (matchRSpec!613 r!15766 s!10566))))

(declare-fun lt!354085 () Unit!15303)

(declare-fun choose!6442 (Regex!2814 List!10044) Unit!15303)

(assert (=> d!294259 (= lt!354085 (choose!6442 r!15766 s!10566))))

(assert (=> d!294259 (validRegex!1283 r!15766)))

(assert (=> d!294259 (= (mainMatchTheorem!613 r!15766 s!10566) lt!354085)))

(declare-fun bs!246602 () Bool)

(assert (= bs!246602 d!294259))

(assert (=> bs!246602 m!1199345))

(assert (=> bs!246602 m!1199343))

(declare-fun m!1199461 () Bool)

(assert (=> bs!246602 m!1199461))

(assert (=> bs!246602 m!1199341))

(assert (=> b!1019447 d!294259))

(declare-fun c!168963 () Bool)

(declare-fun call!69718 () Bool)

(declare-fun c!168962 () Bool)

(declare-fun bm!69712 () Bool)

(assert (=> bm!69712 (= call!69718 (validRegex!1283 (ite c!168962 (reg!3143 r!15766) (ite c!168963 (regTwo!6141 r!15766) (regTwo!6140 r!15766)))))))

(declare-fun b!1019673 () Bool)

(declare-fun res!458205 () Bool)

(declare-fun e!651322 () Bool)

(assert (=> b!1019673 (=> (not res!458205) (not e!651322))))

(declare-fun call!69717 () Bool)

(assert (=> b!1019673 (= res!458205 call!69717)))

(declare-fun e!651320 () Bool)

(assert (=> b!1019673 (= e!651320 e!651322)))

(declare-fun b!1019674 () Bool)

(declare-fun res!458204 () Bool)

(declare-fun e!651319 () Bool)

(assert (=> b!1019674 (=> res!458204 e!651319)))

(assert (=> b!1019674 (= res!458204 (not (is-Concat!4647 r!15766)))))

(assert (=> b!1019674 (= e!651320 e!651319)))

(declare-fun d!294261 () Bool)

(declare-fun res!458208 () Bool)

(declare-fun e!651321 () Bool)

(assert (=> d!294261 (=> res!458208 e!651321)))

(assert (=> d!294261 (= res!458208 (is-ElementMatch!2814 r!15766))))

(assert (=> d!294261 (= (validRegex!1283 r!15766) e!651321)))

(declare-fun bm!69713 () Bool)

(assert (=> bm!69713 (= call!69717 (validRegex!1283 (ite c!168963 (regOne!6141 r!15766) (regOne!6140 r!15766))))))

(declare-fun b!1019675 () Bool)

(declare-fun e!651316 () Bool)

(assert (=> b!1019675 (= e!651321 e!651316)))

(assert (=> b!1019675 (= c!168962 (is-Star!2814 r!15766))))

(declare-fun b!1019676 () Bool)

(declare-fun e!651318 () Bool)

(declare-fun call!69719 () Bool)

(assert (=> b!1019676 (= e!651318 call!69719)))

(declare-fun b!1019677 () Bool)

(declare-fun e!651317 () Bool)

(assert (=> b!1019677 (= e!651316 e!651317)))

(declare-fun res!458206 () Bool)

(assert (=> b!1019677 (= res!458206 (not (nullable!919 (reg!3143 r!15766))))))

(assert (=> b!1019677 (=> (not res!458206) (not e!651317))))

(declare-fun b!1019678 () Bool)

(assert (=> b!1019678 (= e!651319 e!651318)))

(declare-fun res!458207 () Bool)

(assert (=> b!1019678 (=> (not res!458207) (not e!651318))))

(assert (=> b!1019678 (= res!458207 call!69717)))

(declare-fun b!1019679 () Bool)

(assert (=> b!1019679 (= e!651316 e!651320)))

(assert (=> b!1019679 (= c!168963 (is-Union!2814 r!15766))))

(declare-fun b!1019680 () Bool)

(assert (=> b!1019680 (= e!651317 call!69718)))

(declare-fun bm!69714 () Bool)

(assert (=> bm!69714 (= call!69719 call!69718)))

(declare-fun b!1019681 () Bool)

(assert (=> b!1019681 (= e!651322 call!69719)))

(assert (= (and d!294261 (not res!458208)) b!1019675))

(assert (= (and b!1019675 c!168962) b!1019677))

(assert (= (and b!1019675 (not c!168962)) b!1019679))

(assert (= (and b!1019677 res!458206) b!1019680))

(assert (= (and b!1019679 c!168963) b!1019673))

(assert (= (and b!1019679 (not c!168963)) b!1019674))

(assert (= (and b!1019673 res!458205) b!1019681))

(assert (= (and b!1019674 (not res!458204)) b!1019678))

(assert (= (and b!1019678 res!458207) b!1019676))

(assert (= (or b!1019681 b!1019676) bm!69714))

(assert (= (or b!1019673 b!1019678) bm!69713))

(assert (= (or b!1019680 bm!69714) bm!69712))

(declare-fun m!1199469 () Bool)

(assert (=> bm!69712 m!1199469))

(declare-fun m!1199471 () Bool)

(assert (=> bm!69713 m!1199471))

(declare-fun m!1199473 () Bool)

(assert (=> b!1019677 m!1199473))

(assert (=> start!88740 d!294261))

(declare-fun d!294265 () Bool)

(assert (=> d!294265 (= (isEmpty!6376 lt!354035) (not (is-Some!2346 lt!354035)))))

(assert (=> b!1019452 d!294265))

(declare-fun bm!69715 () Bool)

(declare-fun call!69721 () Bool)

(declare-fun c!168965 () Bool)

(declare-fun c!168964 () Bool)

(assert (=> bm!69715 (= call!69721 (validRegex!1283 (ite c!168964 (reg!3143 (regTwo!6140 r!15766)) (ite c!168965 (regTwo!6141 (regTwo!6140 r!15766)) (regTwo!6140 (regTwo!6140 r!15766))))))))

(declare-fun b!1019682 () Bool)

(declare-fun res!458210 () Bool)

(declare-fun e!651329 () Bool)

(assert (=> b!1019682 (=> (not res!458210) (not e!651329))))

(declare-fun call!69720 () Bool)

(assert (=> b!1019682 (= res!458210 call!69720)))

(declare-fun e!651327 () Bool)

(assert (=> b!1019682 (= e!651327 e!651329)))

(declare-fun b!1019683 () Bool)

(declare-fun res!458209 () Bool)

(declare-fun e!651326 () Bool)

(assert (=> b!1019683 (=> res!458209 e!651326)))

(assert (=> b!1019683 (= res!458209 (not (is-Concat!4647 (regTwo!6140 r!15766))))))

(assert (=> b!1019683 (= e!651327 e!651326)))

(declare-fun d!294267 () Bool)

(declare-fun res!458213 () Bool)

(declare-fun e!651328 () Bool)

(assert (=> d!294267 (=> res!458213 e!651328)))

(assert (=> d!294267 (= res!458213 (is-ElementMatch!2814 (regTwo!6140 r!15766)))))

(assert (=> d!294267 (= (validRegex!1283 (regTwo!6140 r!15766)) e!651328)))

(declare-fun bm!69716 () Bool)

(assert (=> bm!69716 (= call!69720 (validRegex!1283 (ite c!168965 (regOne!6141 (regTwo!6140 r!15766)) (regOne!6140 (regTwo!6140 r!15766)))))))

(declare-fun b!1019684 () Bool)

(declare-fun e!651323 () Bool)

(assert (=> b!1019684 (= e!651328 e!651323)))

(assert (=> b!1019684 (= c!168964 (is-Star!2814 (regTwo!6140 r!15766)))))

(declare-fun b!1019685 () Bool)

(declare-fun e!651325 () Bool)

(declare-fun call!69722 () Bool)

(assert (=> b!1019685 (= e!651325 call!69722)))

(declare-fun b!1019686 () Bool)

(declare-fun e!651324 () Bool)

(assert (=> b!1019686 (= e!651323 e!651324)))

(declare-fun res!458211 () Bool)

(assert (=> b!1019686 (= res!458211 (not (nullable!919 (reg!3143 (regTwo!6140 r!15766)))))))

(assert (=> b!1019686 (=> (not res!458211) (not e!651324))))

(declare-fun b!1019687 () Bool)

(assert (=> b!1019687 (= e!651326 e!651325)))

(declare-fun res!458212 () Bool)

(assert (=> b!1019687 (=> (not res!458212) (not e!651325))))

(assert (=> b!1019687 (= res!458212 call!69720)))

(declare-fun b!1019688 () Bool)

(assert (=> b!1019688 (= e!651323 e!651327)))

(assert (=> b!1019688 (= c!168965 (is-Union!2814 (regTwo!6140 r!15766)))))

(declare-fun b!1019689 () Bool)

(assert (=> b!1019689 (= e!651324 call!69721)))

(declare-fun bm!69717 () Bool)

(assert (=> bm!69717 (= call!69722 call!69721)))

(declare-fun b!1019690 () Bool)

(assert (=> b!1019690 (= e!651329 call!69722)))

(assert (= (and d!294267 (not res!458213)) b!1019684))

(assert (= (and b!1019684 c!168964) b!1019686))

(assert (= (and b!1019684 (not c!168964)) b!1019688))

(assert (= (and b!1019686 res!458211) b!1019689))

(assert (= (and b!1019688 c!168965) b!1019682))

(assert (= (and b!1019688 (not c!168965)) b!1019683))

(assert (= (and b!1019682 res!458210) b!1019690))

(assert (= (and b!1019683 (not res!458209)) b!1019687))

(assert (= (and b!1019687 res!458212) b!1019685))

(assert (= (or b!1019690 b!1019685) bm!69717))

(assert (= (or b!1019682 b!1019687) bm!69716))

(assert (= (or b!1019689 bm!69717) bm!69715))

(declare-fun m!1199475 () Bool)

(assert (=> bm!69715 m!1199475))

(declare-fun m!1199477 () Bool)

(assert (=> bm!69716 m!1199477))

(declare-fun m!1199479 () Bool)

(assert (=> b!1019686 m!1199479))

(assert (=> b!1019445 d!294267))

(declare-fun b!1019703 () Bool)

(declare-fun e!651332 () Bool)

(declare-fun tp!309922 () Bool)

(assert (=> b!1019703 (= e!651332 tp!309922)))

(declare-fun b!1019704 () Bool)

(declare-fun tp!309919 () Bool)

(declare-fun tp!309920 () Bool)

(assert (=> b!1019704 (= e!651332 (and tp!309919 tp!309920))))

(declare-fun b!1019702 () Bool)

(declare-fun tp!309921 () Bool)

(declare-fun tp!309923 () Bool)

(assert (=> b!1019702 (= e!651332 (and tp!309921 tp!309923))))

(assert (=> b!1019446 (= tp!309890 e!651332)))

(declare-fun b!1019701 () Bool)

(assert (=> b!1019701 (= e!651332 tp_is_empty!5271)))

(assert (= (and b!1019446 (is-ElementMatch!2814 (regOne!6141 r!15766))) b!1019701))

(assert (= (and b!1019446 (is-Concat!4647 (regOne!6141 r!15766))) b!1019702))

(assert (= (and b!1019446 (is-Star!2814 (regOne!6141 r!15766))) b!1019703))

(assert (= (and b!1019446 (is-Union!2814 (regOne!6141 r!15766))) b!1019704))

(declare-fun b!1019707 () Bool)

(declare-fun e!651333 () Bool)

(declare-fun tp!309927 () Bool)

(assert (=> b!1019707 (= e!651333 tp!309927)))

(declare-fun b!1019708 () Bool)

(declare-fun tp!309924 () Bool)

(declare-fun tp!309925 () Bool)

(assert (=> b!1019708 (= e!651333 (and tp!309924 tp!309925))))

(declare-fun b!1019706 () Bool)

(declare-fun tp!309926 () Bool)

(declare-fun tp!309928 () Bool)

(assert (=> b!1019706 (= e!651333 (and tp!309926 tp!309928))))

(assert (=> b!1019446 (= tp!309889 e!651333)))

(declare-fun b!1019705 () Bool)

(assert (=> b!1019705 (= e!651333 tp_is_empty!5271)))

(assert (= (and b!1019446 (is-ElementMatch!2814 (regTwo!6141 r!15766))) b!1019705))

(assert (= (and b!1019446 (is-Concat!4647 (regTwo!6141 r!15766))) b!1019706))

(assert (= (and b!1019446 (is-Star!2814 (regTwo!6141 r!15766))) b!1019707))

(assert (= (and b!1019446 (is-Union!2814 (regTwo!6141 r!15766))) b!1019708))

(declare-fun b!1019711 () Bool)

(declare-fun e!651334 () Bool)

(declare-fun tp!309932 () Bool)

(assert (=> b!1019711 (= e!651334 tp!309932)))

(declare-fun b!1019712 () Bool)

(declare-fun tp!309929 () Bool)

(declare-fun tp!309930 () Bool)

(assert (=> b!1019712 (= e!651334 (and tp!309929 tp!309930))))

(declare-fun b!1019710 () Bool)

(declare-fun tp!309931 () Bool)

(declare-fun tp!309933 () Bool)

(assert (=> b!1019710 (= e!651334 (and tp!309931 tp!309933))))

(assert (=> b!1019449 (= tp!309888 e!651334)))

(declare-fun b!1019709 () Bool)

(assert (=> b!1019709 (= e!651334 tp_is_empty!5271)))

(assert (= (and b!1019449 (is-ElementMatch!2814 (regOne!6140 r!15766))) b!1019709))

(assert (= (and b!1019449 (is-Concat!4647 (regOne!6140 r!15766))) b!1019710))

(assert (= (and b!1019449 (is-Star!2814 (regOne!6140 r!15766))) b!1019711))

(assert (= (and b!1019449 (is-Union!2814 (regOne!6140 r!15766))) b!1019712))

(declare-fun b!1019715 () Bool)

(declare-fun e!651335 () Bool)

(declare-fun tp!309937 () Bool)

(assert (=> b!1019715 (= e!651335 tp!309937)))

(declare-fun b!1019716 () Bool)

(declare-fun tp!309934 () Bool)

(declare-fun tp!309935 () Bool)

(assert (=> b!1019716 (= e!651335 (and tp!309934 tp!309935))))

(declare-fun b!1019714 () Bool)

(declare-fun tp!309936 () Bool)

(declare-fun tp!309938 () Bool)

(assert (=> b!1019714 (= e!651335 (and tp!309936 tp!309938))))

(assert (=> b!1019449 (= tp!309885 e!651335)))

(declare-fun b!1019713 () Bool)

(assert (=> b!1019713 (= e!651335 tp_is_empty!5271)))

(assert (= (and b!1019449 (is-ElementMatch!2814 (regTwo!6140 r!15766))) b!1019713))

(assert (= (and b!1019449 (is-Concat!4647 (regTwo!6140 r!15766))) b!1019714))

(assert (= (and b!1019449 (is-Star!2814 (regTwo!6140 r!15766))) b!1019715))

(assert (= (and b!1019449 (is-Union!2814 (regTwo!6140 r!15766))) b!1019716))

(declare-fun b!1019721 () Bool)

(declare-fun e!651338 () Bool)

(declare-fun tp!309941 () Bool)

(assert (=> b!1019721 (= e!651338 (and tp_is_empty!5271 tp!309941))))

(assert (=> b!1019448 (= tp!309886 e!651338)))

(assert (= (and b!1019448 (is-Cons!10028 (t!101090 s!10566))) b!1019721))

(declare-fun b!1019724 () Bool)

(declare-fun e!651339 () Bool)

(declare-fun tp!309945 () Bool)

(assert (=> b!1019724 (= e!651339 tp!309945)))

(declare-fun b!1019725 () Bool)

(declare-fun tp!309942 () Bool)

(declare-fun tp!309943 () Bool)

(assert (=> b!1019725 (= e!651339 (and tp!309942 tp!309943))))

(declare-fun b!1019723 () Bool)

(declare-fun tp!309944 () Bool)

(declare-fun tp!309946 () Bool)

(assert (=> b!1019723 (= e!651339 (and tp!309944 tp!309946))))

(assert (=> b!1019450 (= tp!309887 e!651339)))

(declare-fun b!1019722 () Bool)

(assert (=> b!1019722 (= e!651339 tp_is_empty!5271)))

(assert (= (and b!1019450 (is-ElementMatch!2814 (reg!3143 r!15766))) b!1019722))

(assert (= (and b!1019450 (is-Concat!4647 (reg!3143 r!15766))) b!1019723))

(assert (= (and b!1019450 (is-Star!2814 (reg!3143 r!15766))) b!1019724))

(assert (= (and b!1019450 (is-Union!2814 (reg!3143 r!15766))) b!1019725))

(push 1)

(assert (not b!1019714))

(assert (not bm!69705))

(assert (not bm!69715))

(assert (not b!1019721))

(assert (not b!1019710))

(assert tp_is_empty!5271)

(assert (not b!1019704))

(assert (not b!1019640))

(assert (not d!294231))

(assert (not d!294259))

(assert (not b!1019521))

(assert (not b!1019520))

(assert (not b!1019725))

(assert (not bm!69713))

(assert (not bm!69702))

(assert (not b!1019523))

(assert (not bm!69701))

(assert (not d!294251))

(assert (not d!294247))

(assert (not b!1019706))

(assert (not b!1019522))

(assert (not d!294249))

(assert (not b!1019519))

(assert (not b!1019708))

(assert (not b!1019601))

(assert (not b!1019677))

(assert (not b!1019711))

(assert (not bm!69716))

(assert (not b!1019647))

(assert (not b!1019703))

(assert (not d!294257))

(assert (not b!1019649))

(assert (not bm!69712))

(assert (not b!1019707))

(assert (not b!1019716))

(assert (not b!1019723))

(assert (not b!1019724))

(assert (not b!1019702))

(assert (not b!1019598))

(assert (not d!294235))

(assert (not b!1019715))

(assert (not b!1019518))

(assert (not b!1019650))

(assert (not b!1019686))

(assert (not d!294245))

(assert (not b!1019638))

(assert (not b!1019645))

(assert (not b!1019712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

