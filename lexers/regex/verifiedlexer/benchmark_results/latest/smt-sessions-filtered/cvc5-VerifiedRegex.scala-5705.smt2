; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283878 () Bool)

(assert start!283878)

(declare-fun b!2913203 () Bool)

(assert (=> b!2913203 true))

(assert (=> b!2913203 true))

(declare-fun lambda!108228 () Int)

(declare-fun lambda!108227 () Int)

(assert (=> b!2913203 (not (= lambda!108228 lambda!108227))))

(assert (=> b!2913203 true))

(assert (=> b!2913203 true))

(declare-fun b!2913198 () Bool)

(declare-fun e!1838619 () Bool)

(declare-fun tp!935841 () Bool)

(declare-fun tp!935842 () Bool)

(assert (=> b!2913198 (= e!1838619 (and tp!935841 tp!935842))))

(declare-fun b!2913199 () Bool)

(declare-fun tp!935838 () Bool)

(declare-fun tp!935839 () Bool)

(assert (=> b!2913199 (= e!1838619 (and tp!935838 tp!935839))))

(declare-fun b!2913200 () Bool)

(declare-fun tp_is_empty!15483 () Bool)

(assert (=> b!2913200 (= e!1838619 tp_is_empty!15483)))

(declare-fun b!2913201 () Bool)

(declare-fun e!1838616 () Bool)

(declare-fun tp!935843 () Bool)

(assert (=> b!2913201 (= e!1838616 (and tp_is_empty!15483 tp!935843))))

(declare-fun b!2913202 () Bool)

(declare-fun res!1202583 () Bool)

(declare-fun e!1838618 () Bool)

(assert (=> b!2913202 (=> res!1202583 e!1838618)))

(declare-datatypes ((C!18106 0))(
  ( (C!18107 (val!11089 Int)) )
))
(declare-datatypes ((List!34825 0))(
  ( (Nil!34701) (Cons!34701 (h!40121 C!18106) (t!233890 List!34825)) )
))
(declare-fun s!11993 () List!34825)

(declare-fun isEmpty!18947 (List!34825) Bool)

(assert (=> b!2913202 (= res!1202583 (isEmpty!18947 s!11993))))

(declare-fun lt!1024145 () Bool)

(assert (=> b!2913203 (= e!1838618 lt!1024145)))

(declare-fun Exists!1340 (Int) Bool)

(assert (=> b!2913203 (= (Exists!1340 lambda!108227) (Exists!1340 lambda!108228))))

(declare-datatypes ((Unit!48259 0))(
  ( (Unit!48260) )
))
(declare-fun lt!1024147 () Unit!48259)

(declare-datatypes ((Regex!8960 0))(
  ( (ElementMatch!8960 (c!475052 C!18106)) (Concat!14281 (regOne!18432 Regex!8960) (regTwo!18432 Regex!8960)) (EmptyExpr!8960) (Star!8960 (reg!9289 Regex!8960)) (EmptyLang!8960) (Union!8960 (regOne!18433 Regex!8960) (regTwo!18433 Regex!8960)) )
))
(declare-fun r!17423 () Regex!8960)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!481 (Regex!8960 Regex!8960 List!34825) Unit!48259)

(assert (=> b!2913203 (= lt!1024147 (lemmaExistCutMatchRandMatchRSpecEquivalent!481 (regOne!18432 r!17423) (regTwo!18432 r!17423) s!11993))))

(assert (=> b!2913203 (= lt!1024145 (Exists!1340 lambda!108227))))

(declare-datatypes ((tuple2!33658 0))(
  ( (tuple2!33659 (_1!19961 List!34825) (_2!19961 List!34825)) )
))
(declare-datatypes ((Option!6561 0))(
  ( (None!6560) (Some!6560 (v!34694 tuple2!33658)) )
))
(declare-fun isDefined!5112 (Option!6561) Bool)

(declare-fun findConcatSeparation!955 (Regex!8960 Regex!8960 List!34825 List!34825 List!34825) Option!6561)

(assert (=> b!2913203 (= lt!1024145 (isDefined!5112 (findConcatSeparation!955 (regOne!18432 r!17423) (regTwo!18432 r!17423) Nil!34701 s!11993 s!11993)))))

(declare-fun lt!1024148 () Unit!48259)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!737 (Regex!8960 Regex!8960 List!34825) Unit!48259)

(assert (=> b!2913203 (= lt!1024148 (lemmaFindConcatSeparationEquivalentToExists!737 (regOne!18432 r!17423) (regTwo!18432 r!17423) s!11993))))

(declare-fun b!2913204 () Bool)

(declare-fun e!1838617 () Bool)

(assert (=> b!2913204 (= e!1838617 (not e!1838618))))

(declare-fun res!1202581 () Bool)

(assert (=> b!2913204 (=> res!1202581 e!1838618)))

(declare-fun lt!1024146 () Bool)

(assert (=> b!2913204 (= res!1202581 (or (not lt!1024146) (not (is-Concat!14281 r!17423))))))

(declare-fun matchRSpec!1097 (Regex!8960 List!34825) Bool)

(assert (=> b!2913204 (= lt!1024146 (matchRSpec!1097 r!17423 s!11993))))

(declare-fun matchR!3842 (Regex!8960 List!34825) Bool)

(assert (=> b!2913204 (= lt!1024146 (matchR!3842 r!17423 s!11993))))

(declare-fun lt!1024144 () Unit!48259)

(declare-fun mainMatchTheorem!1097 (Regex!8960 List!34825) Unit!48259)

(assert (=> b!2913204 (= lt!1024144 (mainMatchTheorem!1097 r!17423 s!11993))))

(declare-fun res!1202582 () Bool)

(assert (=> start!283878 (=> (not res!1202582) (not e!1838617))))

(declare-fun validRegex!3693 (Regex!8960) Bool)

(assert (=> start!283878 (= res!1202582 (validRegex!3693 r!17423))))

(assert (=> start!283878 e!1838617))

(assert (=> start!283878 e!1838619))

(assert (=> start!283878 e!1838616))

(declare-fun b!2913205 () Bool)

(declare-fun tp!935840 () Bool)

(assert (=> b!2913205 (= e!1838619 tp!935840)))

(assert (= (and start!283878 res!1202582) b!2913204))

(assert (= (and b!2913204 (not res!1202581)) b!2913202))

(assert (= (and b!2913202 (not res!1202583)) b!2913203))

(assert (= (and start!283878 (is-ElementMatch!8960 r!17423)) b!2913200))

(assert (= (and start!283878 (is-Concat!14281 r!17423)) b!2913199))

(assert (= (and start!283878 (is-Star!8960 r!17423)) b!2913205))

(assert (= (and start!283878 (is-Union!8960 r!17423)) b!2913198))

(assert (= (and start!283878 (is-Cons!34701 s!11993)) b!2913201))

(declare-fun m!3313397 () Bool)

(assert (=> b!2913202 m!3313397))

(declare-fun m!3313399 () Bool)

(assert (=> b!2913203 m!3313399))

(declare-fun m!3313401 () Bool)

(assert (=> b!2913203 m!3313401))

(declare-fun m!3313403 () Bool)

(assert (=> b!2913203 m!3313403))

(declare-fun m!3313405 () Bool)

(assert (=> b!2913203 m!3313405))

(assert (=> b!2913203 m!3313405))

(assert (=> b!2913203 m!3313401))

(declare-fun m!3313407 () Bool)

(assert (=> b!2913203 m!3313407))

(declare-fun m!3313409 () Bool)

(assert (=> b!2913203 m!3313409))

(declare-fun m!3313411 () Bool)

(assert (=> b!2913204 m!3313411))

(declare-fun m!3313413 () Bool)

(assert (=> b!2913204 m!3313413))

(declare-fun m!3313415 () Bool)

(assert (=> b!2913204 m!3313415))

(declare-fun m!3313417 () Bool)

(assert (=> start!283878 m!3313417))

(push 1)

(assert (not start!283878))

(assert (not b!2913201))

(assert (not b!2913199))

(assert (not b!2913203))

(assert (not b!2913202))

(assert (not b!2913198))

(assert tp_is_empty!15483)

(assert (not b!2913204))

(assert (not b!2913205))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!524657 () Bool)

(declare-fun b!2913301 () Bool)

(assert (= bs!524657 (and b!2913301 b!2913203)))

(declare-fun lambda!108241 () Int)

(assert (=> bs!524657 (not (= lambda!108241 lambda!108227))))

(assert (=> bs!524657 (not (= lambda!108241 lambda!108228))))

(assert (=> b!2913301 true))

(assert (=> b!2913301 true))

(declare-fun bs!524658 () Bool)

(declare-fun b!2913304 () Bool)

(assert (= bs!524658 (and b!2913304 b!2913203)))

(declare-fun lambda!108242 () Int)

(assert (=> bs!524658 (not (= lambda!108242 lambda!108227))))

(assert (=> bs!524658 (= lambda!108242 lambda!108228)))

(declare-fun bs!524659 () Bool)

(assert (= bs!524659 (and b!2913304 b!2913301)))

(assert (=> bs!524659 (not (= lambda!108242 lambda!108241))))

(assert (=> b!2913304 true))

(assert (=> b!2913304 true))

(declare-fun b!2913300 () Bool)

(declare-fun e!1838670 () Bool)

(assert (=> b!2913300 (= e!1838670 (= s!11993 (Cons!34701 (c!475052 r!17423) Nil!34701)))))

(declare-fun e!1838671 () Bool)

(declare-fun call!190225 () Bool)

(assert (=> b!2913301 (= e!1838671 call!190225)))

(declare-fun b!2913302 () Bool)

(declare-fun e!1838672 () Bool)

(assert (=> b!2913302 (= e!1838672 (matchRSpec!1097 (regTwo!18433 r!17423) s!11993))))

(declare-fun b!2913303 () Bool)

(declare-fun e!1838676 () Bool)

(assert (=> b!2913303 (= e!1838676 e!1838672)))

(declare-fun res!1202632 () Bool)

(assert (=> b!2913303 (= res!1202632 (matchRSpec!1097 (regOne!18433 r!17423) s!11993))))

(assert (=> b!2913303 (=> res!1202632 e!1838672)))

(declare-fun bm!190220 () Bool)

(declare-fun call!190226 () Bool)

(assert (=> bm!190220 (= call!190226 (isEmpty!18947 s!11993))))

(declare-fun e!1838675 () Bool)

(assert (=> b!2913304 (= e!1838675 call!190225)))

(declare-fun b!2913306 () Bool)

(declare-fun c!475067 () Bool)

(assert (=> b!2913306 (= c!475067 (is-ElementMatch!8960 r!17423))))

(declare-fun e!1838673 () Bool)

(assert (=> b!2913306 (= e!1838673 e!1838670)))

(declare-fun c!475066 () Bool)

(declare-fun bm!190221 () Bool)

(assert (=> bm!190221 (= call!190225 (Exists!1340 (ite c!475066 lambda!108241 lambda!108242)))))

(declare-fun b!2913307 () Bool)

(declare-fun res!1202633 () Bool)

(assert (=> b!2913307 (=> res!1202633 e!1838671)))

(assert (=> b!2913307 (= res!1202633 call!190226)))

(assert (=> b!2913307 (= e!1838675 e!1838671)))

(declare-fun b!2913308 () Bool)

(declare-fun e!1838674 () Bool)

(assert (=> b!2913308 (= e!1838674 e!1838673)))

(declare-fun res!1202631 () Bool)

(assert (=> b!2913308 (= res!1202631 (not (is-EmptyLang!8960 r!17423)))))

(assert (=> b!2913308 (=> (not res!1202631) (not e!1838673))))

(declare-fun b!2913309 () Bool)

(declare-fun c!475068 () Bool)

(assert (=> b!2913309 (= c!475068 (is-Union!8960 r!17423))))

(assert (=> b!2913309 (= e!1838670 e!1838676)))

(declare-fun b!2913310 () Bool)

(assert (=> b!2913310 (= e!1838674 call!190226)))

(declare-fun d!837834 () Bool)

(declare-fun c!475069 () Bool)

(assert (=> d!837834 (= c!475069 (is-EmptyExpr!8960 r!17423))))

(assert (=> d!837834 (= (matchRSpec!1097 r!17423 s!11993) e!1838674)))

(declare-fun b!2913305 () Bool)

(assert (=> b!2913305 (= e!1838676 e!1838675)))

(assert (=> b!2913305 (= c!475066 (is-Star!8960 r!17423))))

(assert (= (and d!837834 c!475069) b!2913310))

(assert (= (and d!837834 (not c!475069)) b!2913308))

(assert (= (and b!2913308 res!1202631) b!2913306))

(assert (= (and b!2913306 c!475067) b!2913300))

(assert (= (and b!2913306 (not c!475067)) b!2913309))

(assert (= (and b!2913309 c!475068) b!2913303))

(assert (= (and b!2913309 (not c!475068)) b!2913305))

(assert (= (and b!2913303 (not res!1202632)) b!2913302))

(assert (= (and b!2913305 c!475066) b!2913307))

(assert (= (and b!2913305 (not c!475066)) b!2913304))

(assert (= (and b!2913307 (not res!1202633)) b!2913301))

(assert (= (or b!2913301 b!2913304) bm!190221))

(assert (= (or b!2913310 b!2913307) bm!190220))

(declare-fun m!3313441 () Bool)

(assert (=> b!2913302 m!3313441))

(declare-fun m!3313443 () Bool)

(assert (=> b!2913303 m!3313443))

(assert (=> bm!190220 m!3313397))

(declare-fun m!3313445 () Bool)

(assert (=> bm!190221 m!3313445))

(assert (=> b!2913204 d!837834))

(declare-fun b!2913348 () Bool)

(declare-fun res!1202662 () Bool)

(declare-fun e!1838699 () Bool)

(assert (=> b!2913348 (=> res!1202662 e!1838699)))

(assert (=> b!2913348 (= res!1202662 (not (is-ElementMatch!8960 r!17423)))))

(declare-fun e!1838702 () Bool)

(assert (=> b!2913348 (= e!1838702 e!1838699)))

(declare-fun b!2913349 () Bool)

(declare-fun e!1838703 () Bool)

(declare-fun head!6471 (List!34825) C!18106)

(assert (=> b!2913349 (= e!1838703 (= (head!6471 s!11993) (c!475052 r!17423)))))

(declare-fun bm!190233 () Bool)

(declare-fun call!190238 () Bool)

(assert (=> bm!190233 (= call!190238 (isEmpty!18947 s!11993))))

(declare-fun b!2913350 () Bool)

(declare-fun e!1838698 () Bool)

(declare-fun nullable!2798 (Regex!8960) Bool)

(assert (=> b!2913350 (= e!1838698 (nullable!2798 r!17423))))

(declare-fun b!2913351 () Bool)

(declare-fun e!1838701 () Bool)

(declare-fun lt!1024166 () Bool)

(assert (=> b!2913351 (= e!1838701 (= lt!1024166 call!190238))))

(declare-fun b!2913352 () Bool)

(declare-fun res!1202660 () Bool)

(assert (=> b!2913352 (=> res!1202660 e!1838699)))

(assert (=> b!2913352 (= res!1202660 e!1838703)))

(declare-fun res!1202655 () Bool)

(assert (=> b!2913352 (=> (not res!1202655) (not e!1838703))))

(assert (=> b!2913352 (= res!1202655 lt!1024166)))

(declare-fun b!2913353 () Bool)

(declare-fun res!1202657 () Bool)

(declare-fun e!1838700 () Bool)

(assert (=> b!2913353 (=> res!1202657 e!1838700)))

(declare-fun tail!4698 (List!34825) List!34825)

(assert (=> b!2913353 (= res!1202657 (not (isEmpty!18947 (tail!4698 s!11993))))))

(declare-fun b!2913354 () Bool)

(assert (=> b!2913354 (= e!1838702 (not lt!1024166))))

(declare-fun d!837838 () Bool)

(assert (=> d!837838 e!1838701))

(declare-fun c!475079 () Bool)

(assert (=> d!837838 (= c!475079 (is-EmptyExpr!8960 r!17423))))

(assert (=> d!837838 (= lt!1024166 e!1838698)))

(declare-fun c!475078 () Bool)

(assert (=> d!837838 (= c!475078 (isEmpty!18947 s!11993))))

(assert (=> d!837838 (validRegex!3693 r!17423)))

(assert (=> d!837838 (= (matchR!3842 r!17423 s!11993) lt!1024166)))

(declare-fun b!2913355 () Bool)

(assert (=> b!2913355 (= e!1838701 e!1838702)))

(declare-fun c!475080 () Bool)

(assert (=> b!2913355 (= c!475080 (is-EmptyLang!8960 r!17423))))

(declare-fun b!2913356 () Bool)

(declare-fun res!1202656 () Bool)

(assert (=> b!2913356 (=> (not res!1202656) (not e!1838703))))

(assert (=> b!2913356 (= res!1202656 (not call!190238))))

(declare-fun b!2913357 () Bool)

(assert (=> b!2913357 (= e!1838700 (not (= (head!6471 s!11993) (c!475052 r!17423))))))

(declare-fun b!2913358 () Bool)

(declare-fun res!1202659 () Bool)

(assert (=> b!2913358 (=> (not res!1202659) (not e!1838703))))

(assert (=> b!2913358 (= res!1202659 (isEmpty!18947 (tail!4698 s!11993)))))

(declare-fun b!2913359 () Bool)

(declare-fun derivativeStep!2413 (Regex!8960 C!18106) Regex!8960)

(assert (=> b!2913359 (= e!1838698 (matchR!3842 (derivativeStep!2413 r!17423 (head!6471 s!11993)) (tail!4698 s!11993)))))

(declare-fun b!2913360 () Bool)

(declare-fun e!1838704 () Bool)

(assert (=> b!2913360 (= e!1838699 e!1838704)))

(declare-fun res!1202661 () Bool)

(assert (=> b!2913360 (=> (not res!1202661) (not e!1838704))))

(assert (=> b!2913360 (= res!1202661 (not lt!1024166))))

(declare-fun b!2913361 () Bool)

(assert (=> b!2913361 (= e!1838704 e!1838700)))

(declare-fun res!1202658 () Bool)

(assert (=> b!2913361 (=> res!1202658 e!1838700)))

(assert (=> b!2913361 (= res!1202658 call!190238)))

(assert (= (and d!837838 c!475078) b!2913350))

(assert (= (and d!837838 (not c!475078)) b!2913359))

(assert (= (and d!837838 c!475079) b!2913351))

(assert (= (and d!837838 (not c!475079)) b!2913355))

(assert (= (and b!2913355 c!475080) b!2913354))

(assert (= (and b!2913355 (not c!475080)) b!2913348))

(assert (= (and b!2913348 (not res!1202662)) b!2913352))

(assert (= (and b!2913352 res!1202655) b!2913356))

(assert (= (and b!2913356 res!1202656) b!2913358))

(assert (= (and b!2913358 res!1202659) b!2913349))

(assert (= (and b!2913352 (not res!1202660)) b!2913360))

(assert (= (and b!2913360 res!1202661) b!2913361))

(assert (= (and b!2913361 (not res!1202658)) b!2913353))

(assert (= (and b!2913353 (not res!1202657)) b!2913357))

(assert (= (or b!2913351 b!2913356 b!2913361) bm!190233))

(declare-fun m!3313453 () Bool)

(assert (=> b!2913353 m!3313453))

(assert (=> b!2913353 m!3313453))

(declare-fun m!3313455 () Bool)

(assert (=> b!2913353 m!3313455))

(declare-fun m!3313457 () Bool)

(assert (=> b!2913349 m!3313457))

(assert (=> d!837838 m!3313397))

(assert (=> d!837838 m!3313417))

(assert (=> b!2913359 m!3313457))

(assert (=> b!2913359 m!3313457))

(declare-fun m!3313459 () Bool)

(assert (=> b!2913359 m!3313459))

(assert (=> b!2913359 m!3313453))

(assert (=> b!2913359 m!3313459))

(assert (=> b!2913359 m!3313453))

(declare-fun m!3313461 () Bool)

(assert (=> b!2913359 m!3313461))

(assert (=> b!2913358 m!3313453))

(assert (=> b!2913358 m!3313453))

(assert (=> b!2913358 m!3313455))

(assert (=> b!2913357 m!3313457))

(declare-fun m!3313463 () Bool)

(assert (=> b!2913350 m!3313463))

(assert (=> bm!190233 m!3313397))

(assert (=> b!2913204 d!837838))

(declare-fun d!837842 () Bool)

(assert (=> d!837842 (= (matchR!3842 r!17423 s!11993) (matchRSpec!1097 r!17423 s!11993))))

(declare-fun lt!1024169 () Unit!48259)

(declare-fun choose!17140 (Regex!8960 List!34825) Unit!48259)

(assert (=> d!837842 (= lt!1024169 (choose!17140 r!17423 s!11993))))

(assert (=> d!837842 (validRegex!3693 r!17423)))

(assert (=> d!837842 (= (mainMatchTheorem!1097 r!17423 s!11993) lt!1024169)))

(declare-fun bs!524660 () Bool)

(assert (= bs!524660 d!837842))

(assert (=> bs!524660 m!3313413))

(assert (=> bs!524660 m!3313411))

(declare-fun m!3313465 () Bool)

(assert (=> bs!524660 m!3313465))

(assert (=> bs!524660 m!3313417))

(assert (=> b!2913204 d!837842))

(declare-fun bs!524661 () Bool)

(declare-fun d!837844 () Bool)

(assert (= bs!524661 (and d!837844 b!2913203)))

(declare-fun lambda!108247 () Int)

(assert (=> bs!524661 (= lambda!108247 lambda!108227)))

(assert (=> bs!524661 (not (= lambda!108247 lambda!108228))))

(declare-fun bs!524662 () Bool)

(assert (= bs!524662 (and d!837844 b!2913301)))

(assert (=> bs!524662 (not (= lambda!108247 lambda!108241))))

(declare-fun bs!524663 () Bool)

(assert (= bs!524663 (and d!837844 b!2913304)))

(assert (=> bs!524663 (not (= lambda!108247 lambda!108242))))

(assert (=> d!837844 true))

(assert (=> d!837844 true))

(assert (=> d!837844 true))

(declare-fun bs!524664 () Bool)

(assert (= bs!524664 d!837844))

(declare-fun lambda!108250 () Int)

(assert (=> bs!524664 (not (= lambda!108250 lambda!108247))))

(assert (=> bs!524661 (not (= lambda!108250 lambda!108227))))

(assert (=> bs!524661 (= lambda!108250 lambda!108228)))

(assert (=> bs!524663 (= lambda!108250 lambda!108242)))

(assert (=> bs!524662 (not (= lambda!108250 lambda!108241))))

(assert (=> d!837844 true))

(assert (=> d!837844 true))

(assert (=> d!837844 true))

(assert (=> d!837844 (= (Exists!1340 lambda!108247) (Exists!1340 lambda!108250))))

(declare-fun lt!1024172 () Unit!48259)

(declare-fun choose!17141 (Regex!8960 Regex!8960 List!34825) Unit!48259)

(assert (=> d!837844 (= lt!1024172 (choose!17141 (regOne!18432 r!17423) (regTwo!18432 r!17423) s!11993))))

(assert (=> d!837844 (validRegex!3693 (regOne!18432 r!17423))))

(assert (=> d!837844 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!481 (regOne!18432 r!17423) (regTwo!18432 r!17423) s!11993) lt!1024172)))

(declare-fun m!3313467 () Bool)

(assert (=> bs!524664 m!3313467))

(declare-fun m!3313469 () Bool)

(assert (=> bs!524664 m!3313469))

(declare-fun m!3313471 () Bool)

(assert (=> bs!524664 m!3313471))

(declare-fun m!3313473 () Bool)

(assert (=> bs!524664 m!3313473))

(assert (=> b!2913203 d!837844))

(declare-fun d!837846 () Bool)

(declare-fun choose!17142 (Int) Bool)

(assert (=> d!837846 (= (Exists!1340 lambda!108228) (choose!17142 lambda!108228))))

(declare-fun bs!524665 () Bool)

(assert (= bs!524665 d!837846))

(declare-fun m!3313475 () Bool)

(assert (=> bs!524665 m!3313475))

(assert (=> b!2913203 d!837846))

(declare-fun d!837848 () Bool)

(declare-fun isEmpty!18949 (Option!6561) Bool)

(assert (=> d!837848 (= (isDefined!5112 (findConcatSeparation!955 (regOne!18432 r!17423) (regTwo!18432 r!17423) Nil!34701 s!11993 s!11993)) (not (isEmpty!18949 (findConcatSeparation!955 (regOne!18432 r!17423) (regTwo!18432 r!17423) Nil!34701 s!11993 s!11993))))))

(declare-fun bs!524666 () Bool)

(assert (= bs!524666 d!837848))

(assert (=> bs!524666 m!3313401))

(declare-fun m!3313477 () Bool)

(assert (=> bs!524666 m!3313477))

(assert (=> b!2913203 d!837848))

(declare-fun d!837850 () Bool)

(assert (=> d!837850 (= (Exists!1340 lambda!108227) (choose!17142 lambda!108227))))

(declare-fun bs!524667 () Bool)

(assert (= bs!524667 d!837850))

(declare-fun m!3313479 () Bool)

(assert (=> bs!524667 m!3313479))

(assert (=> b!2913203 d!837850))

(declare-fun b!2913420 () Bool)

(declare-fun e!1838740 () Bool)

(declare-fun lt!1024180 () Option!6561)

(declare-fun ++!8273 (List!34825 List!34825) List!34825)

(declare-fun get!10543 (Option!6561) tuple2!33658)

(assert (=> b!2913420 (= e!1838740 (= (++!8273 (_1!19961 (get!10543 lt!1024180)) (_2!19961 (get!10543 lt!1024180))) s!11993))))

(declare-fun b!2913421 () Bool)

(declare-fun lt!1024179 () Unit!48259)

(declare-fun lt!1024181 () Unit!48259)

(assert (=> b!2913421 (= lt!1024179 lt!1024181)))

(assert (=> b!2913421 (= (++!8273 (++!8273 Nil!34701 (Cons!34701 (h!40121 s!11993) Nil!34701)) (t!233890 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!909 (List!34825 C!18106 List!34825 List!34825) Unit!48259)

(assert (=> b!2913421 (= lt!1024181 (lemmaMoveElementToOtherListKeepsConcatEq!909 Nil!34701 (h!40121 s!11993) (t!233890 s!11993) s!11993))))

(declare-fun e!1838741 () Option!6561)

(assert (=> b!2913421 (= e!1838741 (findConcatSeparation!955 (regOne!18432 r!17423) (regTwo!18432 r!17423) (++!8273 Nil!34701 (Cons!34701 (h!40121 s!11993) Nil!34701)) (t!233890 s!11993) s!11993))))

(declare-fun b!2913422 () Bool)

(declare-fun res!1202701 () Bool)

(assert (=> b!2913422 (=> (not res!1202701) (not e!1838740))))

(assert (=> b!2913422 (= res!1202701 (matchR!3842 (regTwo!18432 r!17423) (_2!19961 (get!10543 lt!1024180))))))

(declare-fun d!837852 () Bool)

(declare-fun e!1838739 () Bool)

(assert (=> d!837852 e!1838739))

(declare-fun res!1202700 () Bool)

(assert (=> d!837852 (=> res!1202700 e!1838739)))

(assert (=> d!837852 (= res!1202700 e!1838740)))

(declare-fun res!1202698 () Bool)

(assert (=> d!837852 (=> (not res!1202698) (not e!1838740))))

(assert (=> d!837852 (= res!1202698 (isDefined!5112 lt!1024180))))

(declare-fun e!1838738 () Option!6561)

(assert (=> d!837852 (= lt!1024180 e!1838738)))

(declare-fun c!475094 () Bool)

(declare-fun e!1838737 () Bool)

(assert (=> d!837852 (= c!475094 e!1838737)))

(declare-fun res!1202697 () Bool)

(assert (=> d!837852 (=> (not res!1202697) (not e!1838737))))

(assert (=> d!837852 (= res!1202697 (matchR!3842 (regOne!18432 r!17423) Nil!34701))))

(assert (=> d!837852 (validRegex!3693 (regOne!18432 r!17423))))

(assert (=> d!837852 (= (findConcatSeparation!955 (regOne!18432 r!17423) (regTwo!18432 r!17423) Nil!34701 s!11993 s!11993) lt!1024180)))

(declare-fun b!2913423 () Bool)

(declare-fun res!1202699 () Bool)

(assert (=> b!2913423 (=> (not res!1202699) (not e!1838740))))

(assert (=> b!2913423 (= res!1202699 (matchR!3842 (regOne!18432 r!17423) (_1!19961 (get!10543 lt!1024180))))))

(declare-fun b!2913424 () Bool)

(assert (=> b!2913424 (= e!1838738 e!1838741)))

(declare-fun c!475093 () Bool)

(assert (=> b!2913424 (= c!475093 (is-Nil!34701 s!11993))))

(declare-fun b!2913425 () Bool)

(assert (=> b!2913425 (= e!1838737 (matchR!3842 (regTwo!18432 r!17423) s!11993))))

(declare-fun b!2913426 () Bool)

(assert (=> b!2913426 (= e!1838739 (not (isDefined!5112 lt!1024180)))))

(declare-fun b!2913427 () Bool)

(assert (=> b!2913427 (= e!1838738 (Some!6560 (tuple2!33659 Nil!34701 s!11993)))))

(declare-fun b!2913428 () Bool)

(assert (=> b!2913428 (= e!1838741 None!6560)))

(assert (= (and d!837852 res!1202697) b!2913425))

(assert (= (and d!837852 c!475094) b!2913427))

(assert (= (and d!837852 (not c!475094)) b!2913424))

(assert (= (and b!2913424 c!475093) b!2913428))

(assert (= (and b!2913424 (not c!475093)) b!2913421))

(assert (= (and d!837852 res!1202698) b!2913423))

(assert (= (and b!2913423 res!1202699) b!2913422))

(assert (= (and b!2913422 res!1202701) b!2913420))

(assert (= (and d!837852 (not res!1202700)) b!2913426))

(declare-fun m!3313481 () Bool)

(assert (=> d!837852 m!3313481))

(declare-fun m!3313483 () Bool)

(assert (=> d!837852 m!3313483))

(assert (=> d!837852 m!3313473))

(declare-fun m!3313485 () Bool)

(assert (=> b!2913420 m!3313485))

(declare-fun m!3313487 () Bool)

(assert (=> b!2913420 m!3313487))

(declare-fun m!3313489 () Bool)

(assert (=> b!2913425 m!3313489))

(assert (=> b!2913423 m!3313485))

(declare-fun m!3313491 () Bool)

(assert (=> b!2913423 m!3313491))

(declare-fun m!3313493 () Bool)

(assert (=> b!2913421 m!3313493))

(assert (=> b!2913421 m!3313493))

(declare-fun m!3313495 () Bool)

(assert (=> b!2913421 m!3313495))

(declare-fun m!3313497 () Bool)

(assert (=> b!2913421 m!3313497))

(assert (=> b!2913421 m!3313493))

(declare-fun m!3313499 () Bool)

(assert (=> b!2913421 m!3313499))

(assert (=> b!2913426 m!3313481))

(assert (=> b!2913422 m!3313485))

(declare-fun m!3313501 () Bool)

(assert (=> b!2913422 m!3313501))

(assert (=> b!2913203 d!837852))

(declare-fun bs!524671 () Bool)

(declare-fun d!837854 () Bool)

(assert (= bs!524671 (and d!837854 d!837844)))

(declare-fun lambda!108257 () Int)

(assert (=> bs!524671 (= lambda!108257 lambda!108247)))

(assert (=> bs!524671 (not (= lambda!108257 lambda!108250))))

(declare-fun bs!524672 () Bool)

(assert (= bs!524672 (and d!837854 b!2913203)))

(assert (=> bs!524672 (= lambda!108257 lambda!108227)))

(assert (=> bs!524672 (not (= lambda!108257 lambda!108228))))

(declare-fun bs!524673 () Bool)

(assert (= bs!524673 (and d!837854 b!2913304)))

(assert (=> bs!524673 (not (= lambda!108257 lambda!108242))))

(declare-fun bs!524674 () Bool)

(assert (= bs!524674 (and d!837854 b!2913301)))

(assert (=> bs!524674 (not (= lambda!108257 lambda!108241))))

(assert (=> d!837854 true))

(assert (=> d!837854 true))

(assert (=> d!837854 true))

(assert (=> d!837854 (= (isDefined!5112 (findConcatSeparation!955 (regOne!18432 r!17423) (regTwo!18432 r!17423) Nil!34701 s!11993 s!11993)) (Exists!1340 lambda!108257))))

(declare-fun lt!1024184 () Unit!48259)

(declare-fun choose!17143 (Regex!8960 Regex!8960 List!34825) Unit!48259)

(assert (=> d!837854 (= lt!1024184 (choose!17143 (regOne!18432 r!17423) (regTwo!18432 r!17423) s!11993))))

(assert (=> d!837854 (validRegex!3693 (regOne!18432 r!17423))))

(assert (=> d!837854 (= (lemmaFindConcatSeparationEquivalentToExists!737 (regOne!18432 r!17423) (regTwo!18432 r!17423) s!11993) lt!1024184)))

(declare-fun bs!524675 () Bool)

(assert (= bs!524675 d!837854))

(declare-fun m!3313509 () Bool)

(assert (=> bs!524675 m!3313509))

(assert (=> bs!524675 m!3313401))

(assert (=> bs!524675 m!3313473))

(declare-fun m!3313511 () Bool)

(assert (=> bs!524675 m!3313511))

(assert (=> bs!524675 m!3313401))

(assert (=> bs!524675 m!3313403))

(assert (=> b!2913203 d!837854))

(declare-fun bm!190246 () Bool)

(declare-fun call!190253 () Bool)

(declare-fun call!190251 () Bool)

(assert (=> bm!190246 (= call!190253 call!190251)))

(declare-fun b!2913462 () Bool)

(declare-fun e!1838768 () Bool)

(declare-fun e!1838769 () Bool)

(assert (=> b!2913462 (= e!1838768 e!1838769)))

(declare-fun c!475104 () Bool)

(assert (=> b!2913462 (= c!475104 (is-Union!8960 r!17423))))

(declare-fun b!2913463 () Bool)

(declare-fun e!1838767 () Bool)

(assert (=> b!2913463 (= e!1838767 call!190253)))

(declare-fun b!2913464 () Bool)

(declare-fun e!1838771 () Bool)

(assert (=> b!2913464 (= e!1838768 e!1838771)))

(declare-fun res!1202723 () Bool)

(assert (=> b!2913464 (= res!1202723 (not (nullable!2798 (reg!9289 r!17423))))))

(assert (=> b!2913464 (=> (not res!1202723) (not e!1838771))))

(declare-fun b!2913465 () Bool)

(assert (=> b!2913465 (= e!1838771 call!190251)))

(declare-fun bm!190247 () Bool)

(declare-fun call!190252 () Bool)

(assert (=> bm!190247 (= call!190252 (validRegex!3693 (ite c!475104 (regOne!18433 r!17423) (regTwo!18432 r!17423))))))

(declare-fun bm!190248 () Bool)

(declare-fun c!475103 () Bool)

(assert (=> bm!190248 (= call!190251 (validRegex!3693 (ite c!475103 (reg!9289 r!17423) (ite c!475104 (regTwo!18433 r!17423) (regOne!18432 r!17423)))))))

(declare-fun d!837858 () Bool)

(declare-fun res!1202721 () Bool)

(declare-fun e!1838765 () Bool)

(assert (=> d!837858 (=> res!1202721 e!1838765)))

(assert (=> d!837858 (= res!1202721 (is-ElementMatch!8960 r!17423))))

(assert (=> d!837858 (= (validRegex!3693 r!17423) e!1838765)))

(declare-fun b!2913466 () Bool)

(assert (=> b!2913466 (= e!1838765 e!1838768)))

(assert (=> b!2913466 (= c!475103 (is-Star!8960 r!17423))))

(declare-fun b!2913467 () Bool)

(declare-fun res!1202719 () Bool)

(declare-fun e!1838766 () Bool)

(assert (=> b!2913467 (=> res!1202719 e!1838766)))

(assert (=> b!2913467 (= res!1202719 (not (is-Concat!14281 r!17423)))))

(assert (=> b!2913467 (= e!1838769 e!1838766)))

(declare-fun b!2913468 () Bool)

(declare-fun e!1838770 () Bool)

(assert (=> b!2913468 (= e!1838770 call!190252)))

(declare-fun b!2913469 () Bool)

(assert (=> b!2913469 (= e!1838766 e!1838770)))

(declare-fun res!1202720 () Bool)

(assert (=> b!2913469 (=> (not res!1202720) (not e!1838770))))

(assert (=> b!2913469 (= res!1202720 call!190253)))

(declare-fun b!2913470 () Bool)

(declare-fun res!1202722 () Bool)

(assert (=> b!2913470 (=> (not res!1202722) (not e!1838767))))

(assert (=> b!2913470 (= res!1202722 call!190252)))

(assert (=> b!2913470 (= e!1838769 e!1838767)))

(assert (= (and d!837858 (not res!1202721)) b!2913466))

(assert (= (and b!2913466 c!475103) b!2913464))

(assert (= (and b!2913466 (not c!475103)) b!2913462))

(assert (= (and b!2913464 res!1202723) b!2913465))

(assert (= (and b!2913462 c!475104) b!2913470))

(assert (= (and b!2913462 (not c!475104)) b!2913467))

(assert (= (and b!2913470 res!1202722) b!2913463))

(assert (= (and b!2913467 (not res!1202719)) b!2913469))

(assert (= (and b!2913469 res!1202720) b!2913468))

(assert (= (or b!2913470 b!2913468) bm!190247))

(assert (= (or b!2913463 b!2913469) bm!190246))

(assert (= (or b!2913465 bm!190246) bm!190248))

(declare-fun m!3313513 () Bool)

(assert (=> b!2913464 m!3313513))

(declare-fun m!3313515 () Bool)

(assert (=> bm!190247 m!3313515))

(declare-fun m!3313517 () Bool)

(assert (=> bm!190248 m!3313517))

(assert (=> start!283878 d!837858))

(declare-fun d!837860 () Bool)

(assert (=> d!837860 (= (isEmpty!18947 s!11993) (is-Nil!34701 s!11993))))

(assert (=> b!2913202 d!837860))

(declare-fun b!2913482 () Bool)

(declare-fun e!1838774 () Bool)

(declare-fun tp!935874 () Bool)

(declare-fun tp!935873 () Bool)

(assert (=> b!2913482 (= e!1838774 (and tp!935874 tp!935873))))

(declare-fun b!2913484 () Bool)

(declare-fun tp!935872 () Bool)

(declare-fun tp!935876 () Bool)

(assert (=> b!2913484 (= e!1838774 (and tp!935872 tp!935876))))

(assert (=> b!2913199 (= tp!935838 e!1838774)))

(declare-fun b!2913481 () Bool)

(assert (=> b!2913481 (= e!1838774 tp_is_empty!15483)))

(declare-fun b!2913483 () Bool)

(declare-fun tp!935875 () Bool)

(assert (=> b!2913483 (= e!1838774 tp!935875)))

(assert (= (and b!2913199 (is-ElementMatch!8960 (regOne!18432 r!17423))) b!2913481))

(assert (= (and b!2913199 (is-Concat!14281 (regOne!18432 r!17423))) b!2913482))

(assert (= (and b!2913199 (is-Star!8960 (regOne!18432 r!17423))) b!2913483))

(assert (= (and b!2913199 (is-Union!8960 (regOne!18432 r!17423))) b!2913484))

(declare-fun b!2913486 () Bool)

(declare-fun e!1838775 () Bool)

(declare-fun tp!935879 () Bool)

(declare-fun tp!935878 () Bool)

(assert (=> b!2913486 (= e!1838775 (and tp!935879 tp!935878))))

(declare-fun b!2913488 () Bool)

(declare-fun tp!935877 () Bool)

(declare-fun tp!935881 () Bool)

(assert (=> b!2913488 (= e!1838775 (and tp!935877 tp!935881))))

(assert (=> b!2913199 (= tp!935839 e!1838775)))

(declare-fun b!2913485 () Bool)

(assert (=> b!2913485 (= e!1838775 tp_is_empty!15483)))

(declare-fun b!2913487 () Bool)

(declare-fun tp!935880 () Bool)

(assert (=> b!2913487 (= e!1838775 tp!935880)))

(assert (= (and b!2913199 (is-ElementMatch!8960 (regTwo!18432 r!17423))) b!2913485))

(assert (= (and b!2913199 (is-Concat!14281 (regTwo!18432 r!17423))) b!2913486))

(assert (= (and b!2913199 (is-Star!8960 (regTwo!18432 r!17423))) b!2913487))

(assert (= (and b!2913199 (is-Union!8960 (regTwo!18432 r!17423))) b!2913488))

(declare-fun b!2913490 () Bool)

(declare-fun e!1838776 () Bool)

(declare-fun tp!935884 () Bool)

(declare-fun tp!935883 () Bool)

(assert (=> b!2913490 (= e!1838776 (and tp!935884 tp!935883))))

(declare-fun b!2913492 () Bool)

(declare-fun tp!935882 () Bool)

(declare-fun tp!935886 () Bool)

(assert (=> b!2913492 (= e!1838776 (and tp!935882 tp!935886))))

(assert (=> b!2913205 (= tp!935840 e!1838776)))

(declare-fun b!2913489 () Bool)

(assert (=> b!2913489 (= e!1838776 tp_is_empty!15483)))

(declare-fun b!2913491 () Bool)

(declare-fun tp!935885 () Bool)

(assert (=> b!2913491 (= e!1838776 tp!935885)))

(assert (= (and b!2913205 (is-ElementMatch!8960 (reg!9289 r!17423))) b!2913489))

(assert (= (and b!2913205 (is-Concat!14281 (reg!9289 r!17423))) b!2913490))

(assert (= (and b!2913205 (is-Star!8960 (reg!9289 r!17423))) b!2913491))

(assert (= (and b!2913205 (is-Union!8960 (reg!9289 r!17423))) b!2913492))

(declare-fun b!2913494 () Bool)

(declare-fun e!1838777 () Bool)

(declare-fun tp!935889 () Bool)

(declare-fun tp!935888 () Bool)

(assert (=> b!2913494 (= e!1838777 (and tp!935889 tp!935888))))

(declare-fun b!2913496 () Bool)

(declare-fun tp!935887 () Bool)

(declare-fun tp!935891 () Bool)

(assert (=> b!2913496 (= e!1838777 (and tp!935887 tp!935891))))

(assert (=> b!2913198 (= tp!935841 e!1838777)))

(declare-fun b!2913493 () Bool)

(assert (=> b!2913493 (= e!1838777 tp_is_empty!15483)))

(declare-fun b!2913495 () Bool)

(declare-fun tp!935890 () Bool)

(assert (=> b!2913495 (= e!1838777 tp!935890)))

(assert (= (and b!2913198 (is-ElementMatch!8960 (regOne!18433 r!17423))) b!2913493))

(assert (= (and b!2913198 (is-Concat!14281 (regOne!18433 r!17423))) b!2913494))

(assert (= (and b!2913198 (is-Star!8960 (regOne!18433 r!17423))) b!2913495))

(assert (= (and b!2913198 (is-Union!8960 (regOne!18433 r!17423))) b!2913496))

(declare-fun b!2913498 () Bool)

(declare-fun e!1838778 () Bool)

(declare-fun tp!935894 () Bool)

(declare-fun tp!935893 () Bool)

(assert (=> b!2913498 (= e!1838778 (and tp!935894 tp!935893))))

(declare-fun b!2913500 () Bool)

(declare-fun tp!935892 () Bool)

(declare-fun tp!935896 () Bool)

(assert (=> b!2913500 (= e!1838778 (and tp!935892 tp!935896))))

(assert (=> b!2913198 (= tp!935842 e!1838778)))

(declare-fun b!2913497 () Bool)

(assert (=> b!2913497 (= e!1838778 tp_is_empty!15483)))

(declare-fun b!2913499 () Bool)

(declare-fun tp!935895 () Bool)

(assert (=> b!2913499 (= e!1838778 tp!935895)))

(assert (= (and b!2913198 (is-ElementMatch!8960 (regTwo!18433 r!17423))) b!2913497))

(assert (= (and b!2913198 (is-Concat!14281 (regTwo!18433 r!17423))) b!2913498))

(assert (= (and b!2913198 (is-Star!8960 (regTwo!18433 r!17423))) b!2913499))

(assert (= (and b!2913198 (is-Union!8960 (regTwo!18433 r!17423))) b!2913500))

(declare-fun b!2913505 () Bool)

(declare-fun e!1838781 () Bool)

(declare-fun tp!935899 () Bool)

(assert (=> b!2913505 (= e!1838781 (and tp_is_empty!15483 tp!935899))))

(assert (=> b!2913201 (= tp!935843 e!1838781)))

(assert (= (and b!2913201 (is-Cons!34701 (t!233890 s!11993))) b!2913505))

(push 1)

(assert (not b!2913423))

(assert (not b!2913498))

(assert (not b!2913302))

(assert (not bm!190233))

(assert (not b!2913303))

(assert (not d!837846))

(assert (not bm!190221))

(assert (not b!2913358))

(assert (not bm!190220))

(assert (not b!2913490))

(assert (not b!2913420))

(assert (not d!837844))

(assert (not b!2913357))

(assert (not b!2913353))

(assert (not b!2913495))

(assert (not b!2913487))

(assert (not d!837848))

(assert (not b!2913349))

(assert (not b!2913494))

(assert (not d!837852))

(assert (not bm!190247))

(assert (not b!2913499))

(assert (not b!2913482))

(assert (not d!837854))

(assert (not b!2913488))

(assert (not b!2913422))

(assert (not b!2913496))

(assert (not b!2913492))

(assert (not b!2913486))

(assert (not b!2913359))

(assert (not d!837838))

(assert (not d!837850))

(assert (not b!2913505))

(assert tp_is_empty!15483)

(assert (not b!2913464))

(assert (not b!2913500))

(assert (not b!2913491))

(assert (not d!837842))

(assert (not b!2913426))

(assert (not b!2913425))

(assert (not b!2913483))

(assert (not b!2913350))

(assert (not b!2913484))

(assert (not bm!190248))

(assert (not b!2913421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

