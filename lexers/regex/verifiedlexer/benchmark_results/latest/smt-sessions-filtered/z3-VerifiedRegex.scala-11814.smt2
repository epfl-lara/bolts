; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664926 () Bool)

(assert start!664926)

(declare-fun b!6905410 () Bool)

(assert (=> b!6905410 true))

(assert (=> b!6905410 true))

(assert (=> b!6905410 true))

(declare-fun lambda!392212 () Int)

(declare-fun lambda!392211 () Int)

(assert (=> b!6905410 (not (= lambda!392212 lambda!392211))))

(assert (=> b!6905410 true))

(assert (=> b!6905410 true))

(assert (=> b!6905410 true))

(declare-fun bs!1843437 () Bool)

(declare-fun b!6905399 () Bool)

(assert (= bs!1843437 (and b!6905399 b!6905410)))

(declare-datatypes ((C!34020 0))(
  ( (C!34021 (val!26712 Int)) )
))
(declare-datatypes ((Regex!16875 0))(
  ( (ElementMatch!16875 (c!1282865 C!34020)) (Concat!25720 (regOne!34262 Regex!16875) (regTwo!34262 Regex!16875)) (EmptyExpr!16875) (Star!16875 (reg!17204 Regex!16875)) (EmptyLang!16875) (Union!16875 (regOne!34263 Regex!16875) (regTwo!34263 Regex!16875)) )
))
(declare-fun lt!2467374 () Regex!16875)

(declare-fun r3!135 () Regex!16875)

(declare-fun lambda!392213 () Int)

(declare-datatypes ((List!66632 0))(
  ( (Nil!66508) (Cons!66508 (h!72956 C!34020) (t!380375 List!66632)) )
))
(declare-fun s!14361 () List!66632)

(declare-datatypes ((tuple2!67484 0))(
  ( (tuple2!67485 (_1!37045 List!66632) (_2!37045 List!66632)) )
))
(declare-fun lt!2467362 () tuple2!67484)

(declare-fun r2!6280 () Regex!16875)

(declare-fun r1!6342 () Regex!16875)

(assert (=> bs!1843437 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392213 lambda!392211))))

(assert (=> bs!1843437 (not (= lambda!392213 lambda!392212))))

(assert (=> b!6905399 true))

(assert (=> b!6905399 true))

(assert (=> b!6905399 true))

(declare-fun lambda!392214 () Int)

(assert (=> bs!1843437 (not (= lambda!392214 lambda!392211))))

(assert (=> bs!1843437 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392214 lambda!392212))))

(assert (=> b!6905399 (not (= lambda!392214 lambda!392213))))

(assert (=> b!6905399 true))

(assert (=> b!6905399 true))

(assert (=> b!6905399 true))

(declare-fun b!6905392 () Bool)

(declare-fun e!4158119 () Bool)

(declare-fun tp_is_empty!42975 () Bool)

(assert (=> b!6905392 (= e!4158119 tp_is_empty!42975)))

(declare-fun b!6905393 () Bool)

(declare-fun e!4158120 () Bool)

(declare-fun tp!1901393 () Bool)

(declare-fun tp!1901390 () Bool)

(assert (=> b!6905393 (= e!4158120 (and tp!1901393 tp!1901390))))

(declare-fun b!6905394 () Bool)

(declare-fun tp!1901396 () Bool)

(declare-fun tp!1901384 () Bool)

(assert (=> b!6905394 (= e!4158120 (and tp!1901396 tp!1901384))))

(declare-fun b!6905396 () Bool)

(declare-fun tp!1901385 () Bool)

(declare-fun tp!1901395 () Bool)

(assert (=> b!6905396 (= e!4158119 (and tp!1901385 tp!1901395))))

(declare-fun b!6905397 () Bool)

(declare-fun res!2815966 () Bool)

(declare-fun e!4158118 () Bool)

(assert (=> b!6905397 (=> (not res!2815966) (not e!4158118))))

(declare-fun validRegex!8583 (Regex!16875) Bool)

(assert (=> b!6905397 (= res!2815966 (validRegex!8583 r3!135))))

(declare-fun b!6905398 () Bool)

(declare-fun e!4158122 () Bool)

(declare-fun tp!1901399 () Bool)

(declare-fun tp!1901397 () Bool)

(assert (=> b!6905398 (= e!4158122 (and tp!1901399 tp!1901397))))

(declare-fun e!4158117 () Bool)

(declare-fun e!4158121 () Bool)

(assert (=> b!6905399 (= e!4158117 e!4158121)))

(declare-fun res!2815972 () Bool)

(assert (=> b!6905399 (=> res!2815972 e!4158121)))

(declare-fun lt!2467361 () tuple2!67484)

(declare-fun matchR!9020 (Regex!16875 List!66632) Bool)

(assert (=> b!6905399 (= res!2815972 (not (matchR!9020 r1!6342 (_1!37045 lt!2467361))))))

(declare-datatypes ((Option!16654 0))(
  ( (None!16653) (Some!16653 (v!52925 tuple2!67484)) )
))
(declare-fun lt!2467363 () Option!16654)

(declare-fun get!23263 (Option!16654) tuple2!67484)

(assert (=> b!6905399 (= lt!2467361 (get!23263 lt!2467363))))

(declare-fun Exists!3883 (Int) Bool)

(assert (=> b!6905399 (= (Exists!3883 lambda!392213) (Exists!3883 lambda!392214))))

(declare-datatypes ((Unit!160486 0))(
  ( (Unit!160487) )
))
(declare-fun lt!2467367 () Unit!160486)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2356 (Regex!16875 Regex!16875 List!66632) Unit!160486)

(assert (=> b!6905399 (= lt!2467367 (lemmaExistCutMatchRandMatchRSpecEquivalent!2356 r1!6342 r2!6280 (_1!37045 lt!2467362)))))

(declare-fun isDefined!13357 (Option!16654) Bool)

(assert (=> b!6905399 (= (isDefined!13357 lt!2467363) (Exists!3883 lambda!392213))))

(declare-fun findConcatSeparation!3068 (Regex!16875 Regex!16875 List!66632 List!66632 List!66632) Option!16654)

(assert (=> b!6905399 (= lt!2467363 (findConcatSeparation!3068 r1!6342 r2!6280 Nil!66508 (_1!37045 lt!2467362) (_1!37045 lt!2467362)))))

(declare-fun lt!2467368 () Unit!160486)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2830 (Regex!16875 Regex!16875 List!66632) Unit!160486)

(assert (=> b!6905399 (= lt!2467368 (lemmaFindConcatSeparationEquivalentToExists!2830 r1!6342 r2!6280 (_1!37045 lt!2467362)))))

(declare-fun b!6905400 () Bool)

(declare-fun tp!1901394 () Bool)

(declare-fun tp!1901386 () Bool)

(assert (=> b!6905400 (= e!4158122 (and tp!1901394 tp!1901386))))

(declare-fun b!6905401 () Bool)

(assert (=> b!6905401 (= e!4158121 (matchR!9020 r2!6280 (_2!37045 lt!2467361)))))

(declare-fun b!6905402 () Bool)

(assert (=> b!6905402 (= e!4158122 tp_is_empty!42975)))

(declare-fun b!6905403 () Bool)

(declare-fun tp!1901388 () Bool)

(assert (=> b!6905403 (= e!4158120 tp!1901388)))

(declare-fun b!6905404 () Bool)

(declare-fun e!4158123 () Bool)

(declare-fun tp!1901389 () Bool)

(assert (=> b!6905404 (= e!4158123 (and tp_is_empty!42975 tp!1901389))))

(declare-fun b!6905395 () Bool)

(assert (=> b!6905395 (= e!4158120 tp_is_empty!42975)))

(declare-fun res!2815967 () Bool)

(assert (=> start!664926 (=> (not res!2815967) (not e!4158118))))

(assert (=> start!664926 (= res!2815967 (validRegex!8583 r1!6342))))

(assert (=> start!664926 e!4158118))

(assert (=> start!664926 e!4158119))

(assert (=> start!664926 e!4158122))

(assert (=> start!664926 e!4158120))

(assert (=> start!664926 e!4158123))

(declare-fun b!6905405 () Bool)

(declare-fun e!4158124 () Bool)

(assert (=> b!6905405 (= e!4158118 (not e!4158124))))

(declare-fun res!2815971 () Bool)

(assert (=> b!6905405 (=> res!2815971 e!4158124)))

(declare-fun lt!2467364 () Bool)

(assert (=> b!6905405 (= res!2815971 (not lt!2467364))))

(declare-fun lt!2467370 () Regex!16875)

(declare-fun matchRSpec!3938 (Regex!16875 List!66632) Bool)

(assert (=> b!6905405 (= (matchR!9020 lt!2467370 s!14361) (matchRSpec!3938 lt!2467370 s!14361))))

(declare-fun lt!2467365 () Unit!160486)

(declare-fun mainMatchTheorem!3938 (Regex!16875 List!66632) Unit!160486)

(assert (=> b!6905405 (= lt!2467365 (mainMatchTheorem!3938 lt!2467370 s!14361))))

(declare-fun lt!2467360 () Regex!16875)

(assert (=> b!6905405 (= lt!2467364 (matchRSpec!3938 lt!2467360 s!14361))))

(assert (=> b!6905405 (= lt!2467364 (matchR!9020 lt!2467360 s!14361))))

(declare-fun lt!2467366 () Unit!160486)

(assert (=> b!6905405 (= lt!2467366 (mainMatchTheorem!3938 lt!2467360 s!14361))))

(assert (=> b!6905405 (= lt!2467370 (Concat!25720 r1!6342 (Concat!25720 r2!6280 r3!135)))))

(assert (=> b!6905405 (= lt!2467360 (Concat!25720 lt!2467374 r3!135))))

(assert (=> b!6905405 (= lt!2467374 (Concat!25720 r1!6342 r2!6280))))

(declare-fun b!6905406 () Bool)

(declare-fun tp!1901398 () Bool)

(assert (=> b!6905406 (= e!4158119 tp!1901398)))

(declare-fun b!6905407 () Bool)

(declare-fun res!2815968 () Bool)

(assert (=> b!6905407 (=> (not res!2815968) (not e!4158118))))

(assert (=> b!6905407 (= res!2815968 (validRegex!8583 r2!6280))))

(declare-fun b!6905408 () Bool)

(declare-fun tp!1901392 () Bool)

(assert (=> b!6905408 (= e!4158122 tp!1901392)))

(declare-fun b!6905409 () Bool)

(declare-fun res!2815970 () Bool)

(assert (=> b!6905409 (=> res!2815970 e!4158117)))

(assert (=> b!6905409 (= res!2815970 (not (matchR!9020 r3!135 (_2!37045 lt!2467362))))))

(assert (=> b!6905410 (= e!4158124 e!4158117)))

(declare-fun res!2815969 () Bool)

(assert (=> b!6905410 (=> res!2815969 e!4158117)))

(declare-fun lt!2467375 () Bool)

(assert (=> b!6905410 (= res!2815969 (not lt!2467375))))

(assert (=> b!6905410 (= lt!2467375 (matchRSpec!3938 lt!2467374 (_1!37045 lt!2467362)))))

(assert (=> b!6905410 (= lt!2467375 (matchR!9020 lt!2467374 (_1!37045 lt!2467362)))))

(declare-fun lt!2467373 () Unit!160486)

(assert (=> b!6905410 (= lt!2467373 (mainMatchTheorem!3938 lt!2467374 (_1!37045 lt!2467362)))))

(declare-fun lt!2467371 () Option!16654)

(assert (=> b!6905410 (= lt!2467362 (get!23263 lt!2467371))))

(assert (=> b!6905410 (= (Exists!3883 lambda!392211) (Exists!3883 lambda!392212))))

(declare-fun lt!2467369 () Unit!160486)

(assert (=> b!6905410 (= lt!2467369 (lemmaExistCutMatchRandMatchRSpecEquivalent!2356 lt!2467374 r3!135 s!14361))))

(assert (=> b!6905410 (= (isDefined!13357 lt!2467371) (Exists!3883 lambda!392211))))

(assert (=> b!6905410 (= lt!2467371 (findConcatSeparation!3068 lt!2467374 r3!135 Nil!66508 s!14361 s!14361))))

(declare-fun lt!2467372 () Unit!160486)

(assert (=> b!6905410 (= lt!2467372 (lemmaFindConcatSeparationEquivalentToExists!2830 lt!2467374 r3!135 s!14361))))

(declare-fun b!6905411 () Bool)

(declare-fun tp!1901387 () Bool)

(declare-fun tp!1901391 () Bool)

(assert (=> b!6905411 (= e!4158119 (and tp!1901387 tp!1901391))))

(assert (= (and start!664926 res!2815967) b!6905407))

(assert (= (and b!6905407 res!2815968) b!6905397))

(assert (= (and b!6905397 res!2815966) b!6905405))

(assert (= (and b!6905405 (not res!2815971)) b!6905410))

(assert (= (and b!6905410 (not res!2815969)) b!6905409))

(assert (= (and b!6905409 (not res!2815970)) b!6905399))

(assert (= (and b!6905399 (not res!2815972)) b!6905401))

(get-info :version)

(assert (= (and start!664926 ((_ is ElementMatch!16875) r1!6342)) b!6905392))

(assert (= (and start!664926 ((_ is Concat!25720) r1!6342)) b!6905396))

(assert (= (and start!664926 ((_ is Star!16875) r1!6342)) b!6905406))

(assert (= (and start!664926 ((_ is Union!16875) r1!6342)) b!6905411))

(assert (= (and start!664926 ((_ is ElementMatch!16875) r2!6280)) b!6905402))

(assert (= (and start!664926 ((_ is Concat!25720) r2!6280)) b!6905398))

(assert (= (and start!664926 ((_ is Star!16875) r2!6280)) b!6905408))

(assert (= (and start!664926 ((_ is Union!16875) r2!6280)) b!6905400))

(assert (= (and start!664926 ((_ is ElementMatch!16875) r3!135)) b!6905395))

(assert (= (and start!664926 ((_ is Concat!25720) r3!135)) b!6905393))

(assert (= (and start!664926 ((_ is Star!16875) r3!135)) b!6905403))

(assert (= (and start!664926 ((_ is Union!16875) r3!135)) b!6905394))

(assert (= (and start!664926 ((_ is Cons!66508) s!14361)) b!6905404))

(declare-fun m!7622066 () Bool)

(assert (=> b!6905401 m!7622066))

(declare-fun m!7622068 () Bool)

(assert (=> b!6905399 m!7622068))

(declare-fun m!7622070 () Bool)

(assert (=> b!6905399 m!7622070))

(declare-fun m!7622072 () Bool)

(assert (=> b!6905399 m!7622072))

(declare-fun m!7622074 () Bool)

(assert (=> b!6905399 m!7622074))

(declare-fun m!7622076 () Bool)

(assert (=> b!6905399 m!7622076))

(assert (=> b!6905399 m!7622068))

(declare-fun m!7622078 () Bool)

(assert (=> b!6905399 m!7622078))

(declare-fun m!7622080 () Bool)

(assert (=> b!6905399 m!7622080))

(declare-fun m!7622082 () Bool)

(assert (=> b!6905399 m!7622082))

(declare-fun m!7622084 () Bool)

(assert (=> b!6905409 m!7622084))

(declare-fun m!7622086 () Bool)

(assert (=> b!6905405 m!7622086))

(declare-fun m!7622088 () Bool)

(assert (=> b!6905405 m!7622088))

(declare-fun m!7622090 () Bool)

(assert (=> b!6905405 m!7622090))

(declare-fun m!7622092 () Bool)

(assert (=> b!6905405 m!7622092))

(declare-fun m!7622094 () Bool)

(assert (=> b!6905405 m!7622094))

(declare-fun m!7622096 () Bool)

(assert (=> b!6905405 m!7622096))

(declare-fun m!7622098 () Bool)

(assert (=> b!6905410 m!7622098))

(declare-fun m!7622100 () Bool)

(assert (=> b!6905410 m!7622100))

(declare-fun m!7622102 () Bool)

(assert (=> b!6905410 m!7622102))

(declare-fun m!7622104 () Bool)

(assert (=> b!6905410 m!7622104))

(declare-fun m!7622106 () Bool)

(assert (=> b!6905410 m!7622106))

(declare-fun m!7622108 () Bool)

(assert (=> b!6905410 m!7622108))

(declare-fun m!7622110 () Bool)

(assert (=> b!6905410 m!7622110))

(declare-fun m!7622112 () Bool)

(assert (=> b!6905410 m!7622112))

(declare-fun m!7622114 () Bool)

(assert (=> b!6905410 m!7622114))

(assert (=> b!6905410 m!7622110))

(declare-fun m!7622116 () Bool)

(assert (=> b!6905410 m!7622116))

(declare-fun m!7622118 () Bool)

(assert (=> start!664926 m!7622118))

(declare-fun m!7622120 () Bool)

(assert (=> b!6905407 m!7622120))

(declare-fun m!7622122 () Bool)

(assert (=> b!6905397 m!7622122))

(check-sat (not b!6905398) (not b!6905401) (not b!6905393) (not b!6905407) (not b!6905410) (not b!6905404) (not start!664926) (not b!6905400) (not b!6905406) (not b!6905403) (not b!6905399) (not b!6905408) (not b!6905397) tp_is_empty!42975 (not b!6905405) (not b!6905394) (not b!6905411) (not b!6905396) (not b!6905409))
(check-sat)
(get-model)

(declare-fun bs!1843448 () Bool)

(declare-fun b!6905582 () Bool)

(assert (= bs!1843448 (and b!6905582 b!6905410)))

(declare-fun lambda!392228 () Int)

(assert (=> bs!1843448 (not (= lambda!392228 lambda!392211))))

(assert (=> bs!1843448 (not (= lambda!392228 lambda!392212))))

(declare-fun bs!1843449 () Bool)

(assert (= bs!1843449 (and b!6905582 b!6905399)))

(assert (=> bs!1843449 (not (= lambda!392228 lambda!392213))))

(assert (=> bs!1843449 (not (= lambda!392228 lambda!392214))))

(assert (=> b!6905582 true))

(assert (=> b!6905582 true))

(declare-fun bs!1843450 () Bool)

(declare-fun b!6905584 () Bool)

(assert (= bs!1843450 (and b!6905584 b!6905582)))

(declare-fun lambda!392231 () Int)

(assert (=> bs!1843450 (not (= lambda!392231 lambda!392228))))

(declare-fun bs!1843451 () Bool)

(assert (= bs!1843451 (and b!6905584 b!6905410)))

(assert (=> bs!1843451 (= (and (= (regOne!34262 lt!2467370) lt!2467374) (= (regTwo!34262 lt!2467370) r3!135)) (= lambda!392231 lambda!392212))))

(declare-fun bs!1843452 () Bool)

(assert (= bs!1843452 (and b!6905584 b!6905399)))

(assert (=> bs!1843452 (= (and (= s!14361 (_1!37045 lt!2467362)) (= (regOne!34262 lt!2467370) r1!6342) (= (regTwo!34262 lt!2467370) r2!6280)) (= lambda!392231 lambda!392214))))

(assert (=> bs!1843452 (not (= lambda!392231 lambda!392213))))

(assert (=> bs!1843451 (not (= lambda!392231 lambda!392211))))

(assert (=> b!6905584 true))

(assert (=> b!6905584 true))

(declare-fun bm!627927 () Bool)

(declare-fun call!627932 () Bool)

(declare-fun isEmpty!38746 (List!66632) Bool)

(assert (=> bm!627927 (= call!627932 (isEmpty!38746 s!14361))))

(declare-fun b!6905577 () Bool)

(declare-fun e!4158221 () Bool)

(assert (=> b!6905577 (= e!4158221 call!627932)))

(declare-fun b!6905579 () Bool)

(declare-fun e!4158225 () Bool)

(declare-fun e!4158223 () Bool)

(assert (=> b!6905579 (= e!4158225 e!4158223)))

(declare-fun res!2816067 () Bool)

(assert (=> b!6905579 (= res!2816067 (matchRSpec!3938 (regOne!34263 lt!2467370) s!14361))))

(assert (=> b!6905579 (=> res!2816067 e!4158223)))

(declare-fun b!6905580 () Bool)

(declare-fun e!4158219 () Bool)

(assert (=> b!6905580 (= e!4158219 (= s!14361 (Cons!66508 (c!1282865 lt!2467370) Nil!66508)))))

(declare-fun b!6905581 () Bool)

(declare-fun e!4158220 () Bool)

(assert (=> b!6905581 (= e!4158221 e!4158220)))

(declare-fun res!2816066 () Bool)

(assert (=> b!6905581 (= res!2816066 (not ((_ is EmptyLang!16875) lt!2467370)))))

(assert (=> b!6905581 (=> (not res!2816066) (not e!4158220))))

(declare-fun c!1282902 () Bool)

(declare-fun bm!627928 () Bool)

(declare-fun call!627933 () Bool)

(assert (=> bm!627928 (= call!627933 (Exists!3883 (ite c!1282902 lambda!392228 lambda!392231)))))

(declare-fun e!4158222 () Bool)

(assert (=> b!6905582 (= e!4158222 call!627933)))

(declare-fun b!6905583 () Bool)

(declare-fun c!1282899 () Bool)

(assert (=> b!6905583 (= c!1282899 ((_ is ElementMatch!16875) lt!2467370))))

(assert (=> b!6905583 (= e!4158220 e!4158219)))

(declare-fun b!6905578 () Bool)

(declare-fun c!1282900 () Bool)

(assert (=> b!6905578 (= c!1282900 ((_ is Union!16875) lt!2467370))))

(assert (=> b!6905578 (= e!4158219 e!4158225)))

(declare-fun d!2162623 () Bool)

(declare-fun c!1282901 () Bool)

(assert (=> d!2162623 (= c!1282901 ((_ is EmptyExpr!16875) lt!2467370))))

(assert (=> d!2162623 (= (matchRSpec!3938 lt!2467370 s!14361) e!4158221)))

(declare-fun e!4158224 () Bool)

(assert (=> b!6905584 (= e!4158224 call!627933)))

(declare-fun b!6905585 () Bool)

(assert (=> b!6905585 (= e!4158225 e!4158224)))

(assert (=> b!6905585 (= c!1282902 ((_ is Star!16875) lt!2467370))))

(declare-fun b!6905586 () Bool)

(assert (=> b!6905586 (= e!4158223 (matchRSpec!3938 (regTwo!34263 lt!2467370) s!14361))))

(declare-fun b!6905587 () Bool)

(declare-fun res!2816068 () Bool)

(assert (=> b!6905587 (=> res!2816068 e!4158222)))

(assert (=> b!6905587 (= res!2816068 call!627932)))

(assert (=> b!6905587 (= e!4158224 e!4158222)))

(assert (= (and d!2162623 c!1282901) b!6905577))

(assert (= (and d!2162623 (not c!1282901)) b!6905581))

(assert (= (and b!6905581 res!2816066) b!6905583))

(assert (= (and b!6905583 c!1282899) b!6905580))

(assert (= (and b!6905583 (not c!1282899)) b!6905578))

(assert (= (and b!6905578 c!1282900) b!6905579))

(assert (= (and b!6905578 (not c!1282900)) b!6905585))

(assert (= (and b!6905579 (not res!2816067)) b!6905586))

(assert (= (and b!6905585 c!1282902) b!6905587))

(assert (= (and b!6905585 (not c!1282902)) b!6905584))

(assert (= (and b!6905587 (not res!2816068)) b!6905582))

(assert (= (or b!6905582 b!6905584) bm!627928))

(assert (= (or b!6905577 b!6905587) bm!627927))

(declare-fun m!7622204 () Bool)

(assert (=> bm!627927 m!7622204))

(declare-fun m!7622206 () Bool)

(assert (=> b!6905579 m!7622206))

(declare-fun m!7622208 () Bool)

(assert (=> bm!627928 m!7622208))

(declare-fun m!7622210 () Bool)

(assert (=> b!6905586 m!7622210))

(assert (=> b!6905405 d!2162623))

(declare-fun b!6905677 () Bool)

(declare-fun res!2816117 () Bool)

(declare-fun e!4158277 () Bool)

(assert (=> b!6905677 (=> res!2816117 e!4158277)))

(assert (=> b!6905677 (= res!2816117 (not ((_ is ElementMatch!16875) lt!2467370)))))

(declare-fun e!4158275 () Bool)

(assert (=> b!6905677 (= e!4158275 e!4158277)))

(declare-fun b!6905678 () Bool)

(declare-fun e!4158276 () Bool)

(assert (=> b!6905678 (= e!4158277 e!4158276)))

(declare-fun res!2816116 () Bool)

(assert (=> b!6905678 (=> (not res!2816116) (not e!4158276))))

(declare-fun lt!2467398 () Bool)

(assert (=> b!6905678 (= res!2816116 (not lt!2467398))))

(declare-fun b!6905679 () Bool)

(declare-fun e!4158280 () Bool)

(declare-fun head!13848 (List!66632) C!34020)

(assert (=> b!6905679 (= e!4158280 (not (= (head!13848 s!14361) (c!1282865 lt!2467370))))))

(declare-fun b!6905680 () Bool)

(declare-fun e!4158281 () Bool)

(declare-fun derivativeStep!5395 (Regex!16875 C!34020) Regex!16875)

(declare-fun tail!12900 (List!66632) List!66632)

(assert (=> b!6905680 (= e!4158281 (matchR!9020 (derivativeStep!5395 lt!2467370 (head!13848 s!14361)) (tail!12900 s!14361)))))

(declare-fun bm!627937 () Bool)

(declare-fun call!627942 () Bool)

(assert (=> bm!627937 (= call!627942 (isEmpty!38746 s!14361))))

(declare-fun b!6905681 () Bool)

(assert (=> b!6905681 (= e!4158275 (not lt!2467398))))

(declare-fun d!2162641 () Bool)

(declare-fun e!4158278 () Bool)

(assert (=> d!2162641 e!4158278))

(declare-fun c!1282925 () Bool)

(assert (=> d!2162641 (= c!1282925 ((_ is EmptyExpr!16875) lt!2467370))))

(assert (=> d!2162641 (= lt!2467398 e!4158281)))

(declare-fun c!1282926 () Bool)

(assert (=> d!2162641 (= c!1282926 (isEmpty!38746 s!14361))))

(assert (=> d!2162641 (validRegex!8583 lt!2467370)))

(assert (=> d!2162641 (= (matchR!9020 lt!2467370 s!14361) lt!2467398)))

(declare-fun b!6905682 () Bool)

(assert (=> b!6905682 (= e!4158278 e!4158275)))

(declare-fun c!1282927 () Bool)

(assert (=> b!6905682 (= c!1282927 ((_ is EmptyLang!16875) lt!2467370))))

(declare-fun b!6905683 () Bool)

(declare-fun res!2816118 () Bool)

(assert (=> b!6905683 (=> res!2816118 e!4158280)))

(assert (=> b!6905683 (= res!2816118 (not (isEmpty!38746 (tail!12900 s!14361))))))

(declare-fun b!6905684 () Bool)

(assert (=> b!6905684 (= e!4158276 e!4158280)))

(declare-fun res!2816121 () Bool)

(assert (=> b!6905684 (=> res!2816121 e!4158280)))

(assert (=> b!6905684 (= res!2816121 call!627942)))

(declare-fun b!6905685 () Bool)

(declare-fun nullable!6716 (Regex!16875) Bool)

(assert (=> b!6905685 (= e!4158281 (nullable!6716 lt!2467370))))

(declare-fun b!6905686 () Bool)

(declare-fun res!2816115 () Bool)

(assert (=> b!6905686 (=> res!2816115 e!4158277)))

(declare-fun e!4158279 () Bool)

(assert (=> b!6905686 (= res!2816115 e!4158279)))

(declare-fun res!2816114 () Bool)

(assert (=> b!6905686 (=> (not res!2816114) (not e!4158279))))

(assert (=> b!6905686 (= res!2816114 lt!2467398)))

(declare-fun b!6905687 () Bool)

(assert (=> b!6905687 (= e!4158279 (= (head!13848 s!14361) (c!1282865 lt!2467370)))))

(declare-fun b!6905688 () Bool)

(declare-fun res!2816119 () Bool)

(assert (=> b!6905688 (=> (not res!2816119) (not e!4158279))))

(assert (=> b!6905688 (= res!2816119 (isEmpty!38746 (tail!12900 s!14361)))))

(declare-fun b!6905689 () Bool)

(assert (=> b!6905689 (= e!4158278 (= lt!2467398 call!627942))))

(declare-fun b!6905690 () Bool)

(declare-fun res!2816120 () Bool)

(assert (=> b!6905690 (=> (not res!2816120) (not e!4158279))))

(assert (=> b!6905690 (= res!2816120 (not call!627942))))

(assert (= (and d!2162641 c!1282926) b!6905685))

(assert (= (and d!2162641 (not c!1282926)) b!6905680))

(assert (= (and d!2162641 c!1282925) b!6905689))

(assert (= (and d!2162641 (not c!1282925)) b!6905682))

(assert (= (and b!6905682 c!1282927) b!6905681))

(assert (= (and b!6905682 (not c!1282927)) b!6905677))

(assert (= (and b!6905677 (not res!2816117)) b!6905686))

(assert (= (and b!6905686 res!2816114) b!6905690))

(assert (= (and b!6905690 res!2816120) b!6905688))

(assert (= (and b!6905688 res!2816119) b!6905687))

(assert (= (and b!6905686 (not res!2816115)) b!6905678))

(assert (= (and b!6905678 res!2816116) b!6905684))

(assert (= (and b!6905684 (not res!2816121)) b!6905683))

(assert (= (and b!6905683 (not res!2816118)) b!6905679))

(assert (= (or b!6905689 b!6905690 b!6905684) bm!627937))

(declare-fun m!7622242 () Bool)

(assert (=> b!6905680 m!7622242))

(assert (=> b!6905680 m!7622242))

(declare-fun m!7622244 () Bool)

(assert (=> b!6905680 m!7622244))

(declare-fun m!7622248 () Bool)

(assert (=> b!6905680 m!7622248))

(assert (=> b!6905680 m!7622244))

(assert (=> b!6905680 m!7622248))

(declare-fun m!7622252 () Bool)

(assert (=> b!6905680 m!7622252))

(assert (=> d!2162641 m!7622204))

(declare-fun m!7622254 () Bool)

(assert (=> d!2162641 m!7622254))

(assert (=> b!6905679 m!7622242))

(assert (=> b!6905688 m!7622248))

(assert (=> b!6905688 m!7622248))

(declare-fun m!7622256 () Bool)

(assert (=> b!6905688 m!7622256))

(declare-fun m!7622258 () Bool)

(assert (=> b!6905685 m!7622258))

(assert (=> b!6905687 m!7622242))

(assert (=> b!6905683 m!7622248))

(assert (=> b!6905683 m!7622248))

(assert (=> b!6905683 m!7622256))

(assert (=> bm!627937 m!7622204))

(assert (=> b!6905405 d!2162641))

(declare-fun bs!1843465 () Bool)

(declare-fun b!6905719 () Bool)

(assert (= bs!1843465 (and b!6905719 b!6905582)))

(declare-fun lambda!392236 () Int)

(assert (=> bs!1843465 (= (and (= (reg!17204 lt!2467360) (reg!17204 lt!2467370)) (= lt!2467360 lt!2467370)) (= lambda!392236 lambda!392228))))

(declare-fun bs!1843466 () Bool)

(assert (= bs!1843466 (and b!6905719 b!6905410)))

(assert (=> bs!1843466 (not (= lambda!392236 lambda!392212))))

(declare-fun bs!1843467 () Bool)

(assert (= bs!1843467 (and b!6905719 b!6905399)))

(assert (=> bs!1843467 (not (= lambda!392236 lambda!392213))))

(assert (=> bs!1843466 (not (= lambda!392236 lambda!392211))))

(declare-fun bs!1843468 () Bool)

(assert (= bs!1843468 (and b!6905719 b!6905584)))

(assert (=> bs!1843468 (not (= lambda!392236 lambda!392231))))

(assert (=> bs!1843467 (not (= lambda!392236 lambda!392214))))

(assert (=> b!6905719 true))

(assert (=> b!6905719 true))

(declare-fun bs!1843476 () Bool)

(declare-fun b!6905721 () Bool)

(assert (= bs!1843476 (and b!6905721 b!6905582)))

(declare-fun lambda!392238 () Int)

(assert (=> bs!1843476 (not (= lambda!392238 lambda!392228))))

(declare-fun bs!1843477 () Bool)

(assert (= bs!1843477 (and b!6905721 b!6905719)))

(assert (=> bs!1843477 (not (= lambda!392238 lambda!392236))))

(declare-fun bs!1843478 () Bool)

(assert (= bs!1843478 (and b!6905721 b!6905410)))

(assert (=> bs!1843478 (= (and (= (regOne!34262 lt!2467360) lt!2467374) (= (regTwo!34262 lt!2467360) r3!135)) (= lambda!392238 lambda!392212))))

(declare-fun bs!1843480 () Bool)

(assert (= bs!1843480 (and b!6905721 b!6905399)))

(assert (=> bs!1843480 (not (= lambda!392238 lambda!392213))))

(assert (=> bs!1843478 (not (= lambda!392238 lambda!392211))))

(declare-fun bs!1843485 () Bool)

(assert (= bs!1843485 (and b!6905721 b!6905584)))

(assert (=> bs!1843485 (= (and (= (regOne!34262 lt!2467360) (regOne!34262 lt!2467370)) (= (regTwo!34262 lt!2467360) (regTwo!34262 lt!2467370))) (= lambda!392238 lambda!392231))))

(assert (=> bs!1843480 (= (and (= s!14361 (_1!37045 lt!2467362)) (= (regOne!34262 lt!2467360) r1!6342) (= (regTwo!34262 lt!2467360) r2!6280)) (= lambda!392238 lambda!392214))))

(assert (=> b!6905721 true))

(assert (=> b!6905721 true))

(declare-fun bm!627939 () Bool)

(declare-fun call!627944 () Bool)

(assert (=> bm!627939 (= call!627944 (isEmpty!38746 s!14361))))

(declare-fun b!6905714 () Bool)

(declare-fun e!4158296 () Bool)

(assert (=> b!6905714 (= e!4158296 call!627944)))

(declare-fun b!6905716 () Bool)

(declare-fun e!4158300 () Bool)

(declare-fun e!4158298 () Bool)

(assert (=> b!6905716 (= e!4158300 e!4158298)))

(declare-fun res!2816136 () Bool)

(assert (=> b!6905716 (= res!2816136 (matchRSpec!3938 (regOne!34263 lt!2467360) s!14361))))

(assert (=> b!6905716 (=> res!2816136 e!4158298)))

(declare-fun b!6905717 () Bool)

(declare-fun e!4158294 () Bool)

(assert (=> b!6905717 (= e!4158294 (= s!14361 (Cons!66508 (c!1282865 lt!2467360) Nil!66508)))))

(declare-fun b!6905718 () Bool)

(declare-fun e!4158295 () Bool)

(assert (=> b!6905718 (= e!4158296 e!4158295)))

(declare-fun res!2816135 () Bool)

(assert (=> b!6905718 (= res!2816135 (not ((_ is EmptyLang!16875) lt!2467360)))))

(assert (=> b!6905718 (=> (not res!2816135) (not e!4158295))))

(declare-fun bm!627940 () Bool)

(declare-fun call!627945 () Bool)

(declare-fun c!1282936 () Bool)

(assert (=> bm!627940 (= call!627945 (Exists!3883 (ite c!1282936 lambda!392236 lambda!392238)))))

(declare-fun e!4158297 () Bool)

(assert (=> b!6905719 (= e!4158297 call!627945)))

(declare-fun b!6905720 () Bool)

(declare-fun c!1282933 () Bool)

(assert (=> b!6905720 (= c!1282933 ((_ is ElementMatch!16875) lt!2467360))))

(assert (=> b!6905720 (= e!4158295 e!4158294)))

(declare-fun b!6905715 () Bool)

(declare-fun c!1282934 () Bool)

(assert (=> b!6905715 (= c!1282934 ((_ is Union!16875) lt!2467360))))

(assert (=> b!6905715 (= e!4158294 e!4158300)))

(declare-fun d!2162655 () Bool)

(declare-fun c!1282935 () Bool)

(assert (=> d!2162655 (= c!1282935 ((_ is EmptyExpr!16875) lt!2467360))))

(assert (=> d!2162655 (= (matchRSpec!3938 lt!2467360 s!14361) e!4158296)))

(declare-fun e!4158299 () Bool)

(assert (=> b!6905721 (= e!4158299 call!627945)))

(declare-fun b!6905722 () Bool)

(assert (=> b!6905722 (= e!4158300 e!4158299)))

(assert (=> b!6905722 (= c!1282936 ((_ is Star!16875) lt!2467360))))

(declare-fun b!6905723 () Bool)

(assert (=> b!6905723 (= e!4158298 (matchRSpec!3938 (regTwo!34263 lt!2467360) s!14361))))

(declare-fun b!6905724 () Bool)

(declare-fun res!2816137 () Bool)

(assert (=> b!6905724 (=> res!2816137 e!4158297)))

(assert (=> b!6905724 (= res!2816137 call!627944)))

(assert (=> b!6905724 (= e!4158299 e!4158297)))

(assert (= (and d!2162655 c!1282935) b!6905714))

(assert (= (and d!2162655 (not c!1282935)) b!6905718))

(assert (= (and b!6905718 res!2816135) b!6905720))

(assert (= (and b!6905720 c!1282933) b!6905717))

(assert (= (and b!6905720 (not c!1282933)) b!6905715))

(assert (= (and b!6905715 c!1282934) b!6905716))

(assert (= (and b!6905715 (not c!1282934)) b!6905722))

(assert (= (and b!6905716 (not res!2816136)) b!6905723))

(assert (= (and b!6905722 c!1282936) b!6905724))

(assert (= (and b!6905722 (not c!1282936)) b!6905721))

(assert (= (and b!6905724 (not res!2816137)) b!6905719))

(assert (= (or b!6905719 b!6905721) bm!627940))

(assert (= (or b!6905714 b!6905724) bm!627939))

(assert (=> bm!627939 m!7622204))

(declare-fun m!7622302 () Bool)

(assert (=> b!6905716 m!7622302))

(declare-fun m!7622304 () Bool)

(assert (=> bm!627940 m!7622304))

(declare-fun m!7622306 () Bool)

(assert (=> b!6905723 m!7622306))

(assert (=> b!6905405 d!2162655))

(declare-fun d!2162663 () Bool)

(assert (=> d!2162663 (= (matchR!9020 lt!2467360 s!14361) (matchRSpec!3938 lt!2467360 s!14361))))

(declare-fun lt!2467412 () Unit!160486)

(declare-fun choose!51424 (Regex!16875 List!66632) Unit!160486)

(assert (=> d!2162663 (= lt!2467412 (choose!51424 lt!2467360 s!14361))))

(assert (=> d!2162663 (validRegex!8583 lt!2467360)))

(assert (=> d!2162663 (= (mainMatchTheorem!3938 lt!2467360 s!14361) lt!2467412)))

(declare-fun bs!1843508 () Bool)

(assert (= bs!1843508 d!2162663))

(assert (=> bs!1843508 m!7622090))

(assert (=> bs!1843508 m!7622092))

(declare-fun m!7622340 () Bool)

(assert (=> bs!1843508 m!7622340))

(declare-fun m!7622342 () Bool)

(assert (=> bs!1843508 m!7622342))

(assert (=> b!6905405 d!2162663))

(declare-fun b!6905773 () Bool)

(declare-fun res!2816165 () Bool)

(declare-fun e!4158329 () Bool)

(assert (=> b!6905773 (=> res!2816165 e!4158329)))

(assert (=> b!6905773 (= res!2816165 (not ((_ is ElementMatch!16875) lt!2467360)))))

(declare-fun e!4158327 () Bool)

(assert (=> b!6905773 (= e!4158327 e!4158329)))

(declare-fun b!6905774 () Bool)

(declare-fun e!4158328 () Bool)

(assert (=> b!6905774 (= e!4158329 e!4158328)))

(declare-fun res!2816164 () Bool)

(assert (=> b!6905774 (=> (not res!2816164) (not e!4158328))))

(declare-fun lt!2467414 () Bool)

(assert (=> b!6905774 (= res!2816164 (not lt!2467414))))

(declare-fun b!6905775 () Bool)

(declare-fun e!4158332 () Bool)

(assert (=> b!6905775 (= e!4158332 (not (= (head!13848 s!14361) (c!1282865 lt!2467360))))))

(declare-fun b!6905776 () Bool)

(declare-fun e!4158333 () Bool)

(assert (=> b!6905776 (= e!4158333 (matchR!9020 (derivativeStep!5395 lt!2467360 (head!13848 s!14361)) (tail!12900 s!14361)))))

(declare-fun bm!627945 () Bool)

(declare-fun call!627950 () Bool)

(assert (=> bm!627945 (= call!627950 (isEmpty!38746 s!14361))))

(declare-fun b!6905777 () Bool)

(assert (=> b!6905777 (= e!4158327 (not lt!2467414))))

(declare-fun d!2162675 () Bool)

(declare-fun e!4158330 () Bool)

(assert (=> d!2162675 e!4158330))

(declare-fun c!1282949 () Bool)

(assert (=> d!2162675 (= c!1282949 ((_ is EmptyExpr!16875) lt!2467360))))

(assert (=> d!2162675 (= lt!2467414 e!4158333)))

(declare-fun c!1282950 () Bool)

(assert (=> d!2162675 (= c!1282950 (isEmpty!38746 s!14361))))

(assert (=> d!2162675 (validRegex!8583 lt!2467360)))

(assert (=> d!2162675 (= (matchR!9020 lt!2467360 s!14361) lt!2467414)))

(declare-fun b!6905778 () Bool)

(assert (=> b!6905778 (= e!4158330 e!4158327)))

(declare-fun c!1282951 () Bool)

(assert (=> b!6905778 (= c!1282951 ((_ is EmptyLang!16875) lt!2467360))))

(declare-fun b!6905779 () Bool)

(declare-fun res!2816166 () Bool)

(assert (=> b!6905779 (=> res!2816166 e!4158332)))

(assert (=> b!6905779 (= res!2816166 (not (isEmpty!38746 (tail!12900 s!14361))))))

(declare-fun b!6905780 () Bool)

(assert (=> b!6905780 (= e!4158328 e!4158332)))

(declare-fun res!2816169 () Bool)

(assert (=> b!6905780 (=> res!2816169 e!4158332)))

(assert (=> b!6905780 (= res!2816169 call!627950)))

(declare-fun b!6905781 () Bool)

(assert (=> b!6905781 (= e!4158333 (nullable!6716 lt!2467360))))

(declare-fun b!6905782 () Bool)

(declare-fun res!2816163 () Bool)

(assert (=> b!6905782 (=> res!2816163 e!4158329)))

(declare-fun e!4158331 () Bool)

(assert (=> b!6905782 (= res!2816163 e!4158331)))

(declare-fun res!2816162 () Bool)

(assert (=> b!6905782 (=> (not res!2816162) (not e!4158331))))

(assert (=> b!6905782 (= res!2816162 lt!2467414)))

(declare-fun b!6905783 () Bool)

(assert (=> b!6905783 (= e!4158331 (= (head!13848 s!14361) (c!1282865 lt!2467360)))))

(declare-fun b!6905784 () Bool)

(declare-fun res!2816167 () Bool)

(assert (=> b!6905784 (=> (not res!2816167) (not e!4158331))))

(assert (=> b!6905784 (= res!2816167 (isEmpty!38746 (tail!12900 s!14361)))))

(declare-fun b!6905785 () Bool)

(assert (=> b!6905785 (= e!4158330 (= lt!2467414 call!627950))))

(declare-fun b!6905786 () Bool)

(declare-fun res!2816168 () Bool)

(assert (=> b!6905786 (=> (not res!2816168) (not e!4158331))))

(assert (=> b!6905786 (= res!2816168 (not call!627950))))

(assert (= (and d!2162675 c!1282950) b!6905781))

(assert (= (and d!2162675 (not c!1282950)) b!6905776))

(assert (= (and d!2162675 c!1282949) b!6905785))

(assert (= (and d!2162675 (not c!1282949)) b!6905778))

(assert (= (and b!6905778 c!1282951) b!6905777))

(assert (= (and b!6905778 (not c!1282951)) b!6905773))

(assert (= (and b!6905773 (not res!2816165)) b!6905782))

(assert (= (and b!6905782 res!2816162) b!6905786))

(assert (= (and b!6905786 res!2816168) b!6905784))

(assert (= (and b!6905784 res!2816167) b!6905783))

(assert (= (and b!6905782 (not res!2816163)) b!6905774))

(assert (= (and b!6905774 res!2816164) b!6905780))

(assert (= (and b!6905780 (not res!2816169)) b!6905779))

(assert (= (and b!6905779 (not res!2816166)) b!6905775))

(assert (= (or b!6905785 b!6905786 b!6905780) bm!627945))

(assert (=> b!6905776 m!7622242))

(assert (=> b!6905776 m!7622242))

(declare-fun m!7622354 () Bool)

(assert (=> b!6905776 m!7622354))

(assert (=> b!6905776 m!7622248))

(assert (=> b!6905776 m!7622354))

(assert (=> b!6905776 m!7622248))

(declare-fun m!7622356 () Bool)

(assert (=> b!6905776 m!7622356))

(assert (=> d!2162675 m!7622204))

(assert (=> d!2162675 m!7622342))

(assert (=> b!6905775 m!7622242))

(assert (=> b!6905784 m!7622248))

(assert (=> b!6905784 m!7622248))

(assert (=> b!6905784 m!7622256))

(declare-fun m!7622358 () Bool)

(assert (=> b!6905781 m!7622358))

(assert (=> b!6905783 m!7622242))

(assert (=> b!6905779 m!7622248))

(assert (=> b!6905779 m!7622248))

(assert (=> b!6905779 m!7622256))

(assert (=> bm!627945 m!7622204))

(assert (=> b!6905405 d!2162675))

(declare-fun d!2162681 () Bool)

(assert (=> d!2162681 (= (matchR!9020 lt!2467370 s!14361) (matchRSpec!3938 lt!2467370 s!14361))))

(declare-fun lt!2467416 () Unit!160486)

(assert (=> d!2162681 (= lt!2467416 (choose!51424 lt!2467370 s!14361))))

(assert (=> d!2162681 (validRegex!8583 lt!2467370)))

(assert (=> d!2162681 (= (mainMatchTheorem!3938 lt!2467370 s!14361) lt!2467416)))

(declare-fun bs!1843515 () Bool)

(assert (= bs!1843515 d!2162681))

(assert (=> bs!1843515 m!7622094))

(assert (=> bs!1843515 m!7622088))

(declare-fun m!7622360 () Bool)

(assert (=> bs!1843515 m!7622360))

(assert (=> bs!1843515 m!7622254))

(assert (=> b!6905405 d!2162681))

(declare-fun b!6905891 () Bool)

(declare-fun e!4158375 () Bool)

(declare-fun e!4158381 () Bool)

(assert (=> b!6905891 (= e!4158375 e!4158381)))

(declare-fun res!2816184 () Bool)

(assert (=> b!6905891 (=> (not res!2816184) (not e!4158381))))

(declare-fun call!627961 () Bool)

(assert (=> b!6905891 (= res!2816184 call!627961)))

(declare-fun b!6905892 () Bool)

(declare-fun call!627959 () Bool)

(assert (=> b!6905892 (= e!4158381 call!627959)))

(declare-fun bm!627954 () Bool)

(declare-fun call!627960 () Bool)

(assert (=> bm!627954 (= call!627959 call!627960)))

(declare-fun b!6905893 () Bool)

(declare-fun e!4158380 () Bool)

(declare-fun e!4158377 () Bool)

(assert (=> b!6905893 (= e!4158380 e!4158377)))

(declare-fun res!2816187 () Bool)

(assert (=> b!6905893 (= res!2816187 (not (nullable!6716 (reg!17204 r2!6280))))))

(assert (=> b!6905893 (=> (not res!2816187) (not e!4158377))))

(declare-fun b!6905894 () Bool)

(assert (=> b!6905894 (= e!4158377 call!627960)))

(declare-fun b!6905895 () Bool)

(declare-fun res!2816183 () Bool)

(assert (=> b!6905895 (=> res!2816183 e!4158375)))

(assert (=> b!6905895 (= res!2816183 (not ((_ is Concat!25720) r2!6280)))))

(declare-fun e!4158379 () Bool)

(assert (=> b!6905895 (= e!4158379 e!4158375)))

(declare-fun d!2162683 () Bool)

(declare-fun res!2816186 () Bool)

(declare-fun e!4158376 () Bool)

(assert (=> d!2162683 (=> res!2816186 e!4158376)))

(assert (=> d!2162683 (= res!2816186 ((_ is ElementMatch!16875) r2!6280))))

(assert (=> d!2162683 (= (validRegex!8583 r2!6280) e!4158376)))

(declare-fun b!6905896 () Bool)

(declare-fun res!2816185 () Bool)

(declare-fun e!4158378 () Bool)

(assert (=> b!6905896 (=> (not res!2816185) (not e!4158378))))

(assert (=> b!6905896 (= res!2816185 call!627959)))

(assert (=> b!6905896 (= e!4158379 e!4158378)))

(declare-fun b!6905897 () Bool)

(assert (=> b!6905897 (= e!4158378 call!627961)))

(declare-fun c!1282960 () Bool)

(declare-fun c!1282961 () Bool)

(declare-fun bm!627955 () Bool)

(assert (=> bm!627955 (= call!627960 (validRegex!8583 (ite c!1282961 (reg!17204 r2!6280) (ite c!1282960 (regOne!34263 r2!6280) (regTwo!34262 r2!6280)))))))

(declare-fun b!6905898 () Bool)

(assert (=> b!6905898 (= e!4158376 e!4158380)))

(assert (=> b!6905898 (= c!1282961 ((_ is Star!16875) r2!6280))))

(declare-fun b!6905899 () Bool)

(assert (=> b!6905899 (= e!4158380 e!4158379)))

(assert (=> b!6905899 (= c!1282960 ((_ is Union!16875) r2!6280))))

(declare-fun bm!627956 () Bool)

(assert (=> bm!627956 (= call!627961 (validRegex!8583 (ite c!1282960 (regTwo!34263 r2!6280) (regOne!34262 r2!6280))))))

(assert (= (and d!2162683 (not res!2816186)) b!6905898))

(assert (= (and b!6905898 c!1282961) b!6905893))

(assert (= (and b!6905898 (not c!1282961)) b!6905899))

(assert (= (and b!6905893 res!2816187) b!6905894))

(assert (= (and b!6905899 c!1282960) b!6905896))

(assert (= (and b!6905899 (not c!1282960)) b!6905895))

(assert (= (and b!6905896 res!2816185) b!6905897))

(assert (= (and b!6905895 (not res!2816183)) b!6905891))

(assert (= (and b!6905891 res!2816184) b!6905892))

(assert (= (or b!6905896 b!6905892) bm!627954))

(assert (= (or b!6905897 b!6905891) bm!627956))

(assert (= (or b!6905894 bm!627954) bm!627955))

(declare-fun m!7622368 () Bool)

(assert (=> b!6905893 m!7622368))

(declare-fun m!7622370 () Bool)

(assert (=> bm!627955 m!7622370))

(declare-fun m!7622372 () Bool)

(assert (=> bm!627956 m!7622372))

(assert (=> b!6905407 d!2162683))

(declare-fun b!6905900 () Bool)

(declare-fun e!4158382 () Bool)

(declare-fun e!4158388 () Bool)

(assert (=> b!6905900 (= e!4158382 e!4158388)))

(declare-fun res!2816189 () Bool)

(assert (=> b!6905900 (=> (not res!2816189) (not e!4158388))))

(declare-fun call!627964 () Bool)

(assert (=> b!6905900 (= res!2816189 call!627964)))

(declare-fun b!6905901 () Bool)

(declare-fun call!627962 () Bool)

(assert (=> b!6905901 (= e!4158388 call!627962)))

(declare-fun bm!627957 () Bool)

(declare-fun call!627963 () Bool)

(assert (=> bm!627957 (= call!627962 call!627963)))

(declare-fun b!6905902 () Bool)

(declare-fun e!4158387 () Bool)

(declare-fun e!4158384 () Bool)

(assert (=> b!6905902 (= e!4158387 e!4158384)))

(declare-fun res!2816192 () Bool)

(assert (=> b!6905902 (= res!2816192 (not (nullable!6716 (reg!17204 r1!6342))))))

(assert (=> b!6905902 (=> (not res!2816192) (not e!4158384))))

(declare-fun b!6905903 () Bool)

(assert (=> b!6905903 (= e!4158384 call!627963)))

(declare-fun b!6905904 () Bool)

(declare-fun res!2816188 () Bool)

(assert (=> b!6905904 (=> res!2816188 e!4158382)))

(assert (=> b!6905904 (= res!2816188 (not ((_ is Concat!25720) r1!6342)))))

(declare-fun e!4158386 () Bool)

(assert (=> b!6905904 (= e!4158386 e!4158382)))

(declare-fun d!2162685 () Bool)

(declare-fun res!2816191 () Bool)

(declare-fun e!4158383 () Bool)

(assert (=> d!2162685 (=> res!2816191 e!4158383)))

(assert (=> d!2162685 (= res!2816191 ((_ is ElementMatch!16875) r1!6342))))

(assert (=> d!2162685 (= (validRegex!8583 r1!6342) e!4158383)))

(declare-fun b!6905905 () Bool)

(declare-fun res!2816190 () Bool)

(declare-fun e!4158385 () Bool)

(assert (=> b!6905905 (=> (not res!2816190) (not e!4158385))))

(assert (=> b!6905905 (= res!2816190 call!627962)))

(assert (=> b!6905905 (= e!4158386 e!4158385)))

(declare-fun b!6905906 () Bool)

(assert (=> b!6905906 (= e!4158385 call!627964)))

(declare-fun bm!627958 () Bool)

(declare-fun c!1282962 () Bool)

(declare-fun c!1282963 () Bool)

(assert (=> bm!627958 (= call!627963 (validRegex!8583 (ite c!1282963 (reg!17204 r1!6342) (ite c!1282962 (regOne!34263 r1!6342) (regTwo!34262 r1!6342)))))))

(declare-fun b!6905907 () Bool)

(assert (=> b!6905907 (= e!4158383 e!4158387)))

(assert (=> b!6905907 (= c!1282963 ((_ is Star!16875) r1!6342))))

(declare-fun b!6905908 () Bool)

(assert (=> b!6905908 (= e!4158387 e!4158386)))

(assert (=> b!6905908 (= c!1282962 ((_ is Union!16875) r1!6342))))

(declare-fun bm!627959 () Bool)

(assert (=> bm!627959 (= call!627964 (validRegex!8583 (ite c!1282962 (regTwo!34263 r1!6342) (regOne!34262 r1!6342))))))

(assert (= (and d!2162685 (not res!2816191)) b!6905907))

(assert (= (and b!6905907 c!1282963) b!6905902))

(assert (= (and b!6905907 (not c!1282963)) b!6905908))

(assert (= (and b!6905902 res!2816192) b!6905903))

(assert (= (and b!6905908 c!1282962) b!6905905))

(assert (= (and b!6905908 (not c!1282962)) b!6905904))

(assert (= (and b!6905905 res!2816190) b!6905906))

(assert (= (and b!6905904 (not res!2816188)) b!6905900))

(assert (= (and b!6905900 res!2816189) b!6905901))

(assert (= (or b!6905905 b!6905901) bm!627957))

(assert (= (or b!6905906 b!6905900) bm!627959))

(assert (= (or b!6905903 bm!627957) bm!627958))

(declare-fun m!7622374 () Bool)

(assert (=> b!6905902 m!7622374))

(declare-fun m!7622376 () Bool)

(assert (=> bm!627958 m!7622376))

(declare-fun m!7622378 () Bool)

(assert (=> bm!627959 m!7622378))

(assert (=> start!664926 d!2162685))

(declare-fun b!6905909 () Bool)

(declare-fun res!2816196 () Bool)

(declare-fun e!4158391 () Bool)

(assert (=> b!6905909 (=> res!2816196 e!4158391)))

(assert (=> b!6905909 (= res!2816196 (not ((_ is ElementMatch!16875) r2!6280)))))

(declare-fun e!4158389 () Bool)

(assert (=> b!6905909 (= e!4158389 e!4158391)))

(declare-fun b!6905910 () Bool)

(declare-fun e!4158390 () Bool)

(assert (=> b!6905910 (= e!4158391 e!4158390)))

(declare-fun res!2816195 () Bool)

(assert (=> b!6905910 (=> (not res!2816195) (not e!4158390))))

(declare-fun lt!2467417 () Bool)

(assert (=> b!6905910 (= res!2816195 (not lt!2467417))))

(declare-fun b!6905911 () Bool)

(declare-fun e!4158394 () Bool)

(assert (=> b!6905911 (= e!4158394 (not (= (head!13848 (_2!37045 lt!2467361)) (c!1282865 r2!6280))))))

(declare-fun b!6905912 () Bool)

(declare-fun e!4158395 () Bool)

(assert (=> b!6905912 (= e!4158395 (matchR!9020 (derivativeStep!5395 r2!6280 (head!13848 (_2!37045 lt!2467361))) (tail!12900 (_2!37045 lt!2467361))))))

(declare-fun bm!627960 () Bool)

(declare-fun call!627965 () Bool)

(assert (=> bm!627960 (= call!627965 (isEmpty!38746 (_2!37045 lt!2467361)))))

(declare-fun b!6905913 () Bool)

(assert (=> b!6905913 (= e!4158389 (not lt!2467417))))

(declare-fun d!2162687 () Bool)

(declare-fun e!4158392 () Bool)

(assert (=> d!2162687 e!4158392))

(declare-fun c!1282964 () Bool)

(assert (=> d!2162687 (= c!1282964 ((_ is EmptyExpr!16875) r2!6280))))

(assert (=> d!2162687 (= lt!2467417 e!4158395)))

(declare-fun c!1282965 () Bool)

(assert (=> d!2162687 (= c!1282965 (isEmpty!38746 (_2!37045 lt!2467361)))))

(assert (=> d!2162687 (validRegex!8583 r2!6280)))

(assert (=> d!2162687 (= (matchR!9020 r2!6280 (_2!37045 lt!2467361)) lt!2467417)))

(declare-fun b!6905914 () Bool)

(assert (=> b!6905914 (= e!4158392 e!4158389)))

(declare-fun c!1282966 () Bool)

(assert (=> b!6905914 (= c!1282966 ((_ is EmptyLang!16875) r2!6280))))

(declare-fun b!6905915 () Bool)

(declare-fun res!2816197 () Bool)

(assert (=> b!6905915 (=> res!2816197 e!4158394)))

(assert (=> b!6905915 (= res!2816197 (not (isEmpty!38746 (tail!12900 (_2!37045 lt!2467361)))))))

(declare-fun b!6905916 () Bool)

(assert (=> b!6905916 (= e!4158390 e!4158394)))

(declare-fun res!2816200 () Bool)

(assert (=> b!6905916 (=> res!2816200 e!4158394)))

(assert (=> b!6905916 (= res!2816200 call!627965)))

(declare-fun b!6905917 () Bool)

(assert (=> b!6905917 (= e!4158395 (nullable!6716 r2!6280))))

(declare-fun b!6905918 () Bool)

(declare-fun res!2816194 () Bool)

(assert (=> b!6905918 (=> res!2816194 e!4158391)))

(declare-fun e!4158393 () Bool)

(assert (=> b!6905918 (= res!2816194 e!4158393)))

(declare-fun res!2816193 () Bool)

(assert (=> b!6905918 (=> (not res!2816193) (not e!4158393))))

(assert (=> b!6905918 (= res!2816193 lt!2467417)))

(declare-fun b!6905919 () Bool)

(assert (=> b!6905919 (= e!4158393 (= (head!13848 (_2!37045 lt!2467361)) (c!1282865 r2!6280)))))

(declare-fun b!6905920 () Bool)

(declare-fun res!2816198 () Bool)

(assert (=> b!6905920 (=> (not res!2816198) (not e!4158393))))

(assert (=> b!6905920 (= res!2816198 (isEmpty!38746 (tail!12900 (_2!37045 lt!2467361))))))

(declare-fun b!6905921 () Bool)

(assert (=> b!6905921 (= e!4158392 (= lt!2467417 call!627965))))

(declare-fun b!6905922 () Bool)

(declare-fun res!2816199 () Bool)

(assert (=> b!6905922 (=> (not res!2816199) (not e!4158393))))

(assert (=> b!6905922 (= res!2816199 (not call!627965))))

(assert (= (and d!2162687 c!1282965) b!6905917))

(assert (= (and d!2162687 (not c!1282965)) b!6905912))

(assert (= (and d!2162687 c!1282964) b!6905921))

(assert (= (and d!2162687 (not c!1282964)) b!6905914))

(assert (= (and b!6905914 c!1282966) b!6905913))

(assert (= (and b!6905914 (not c!1282966)) b!6905909))

(assert (= (and b!6905909 (not res!2816196)) b!6905918))

(assert (= (and b!6905918 res!2816193) b!6905922))

(assert (= (and b!6905922 res!2816199) b!6905920))

(assert (= (and b!6905920 res!2816198) b!6905919))

(assert (= (and b!6905918 (not res!2816194)) b!6905910))

(assert (= (and b!6905910 res!2816195) b!6905916))

(assert (= (and b!6905916 (not res!2816200)) b!6905915))

(assert (= (and b!6905915 (not res!2816197)) b!6905911))

(assert (= (or b!6905921 b!6905922 b!6905916) bm!627960))

(declare-fun m!7622380 () Bool)

(assert (=> b!6905912 m!7622380))

(assert (=> b!6905912 m!7622380))

(declare-fun m!7622382 () Bool)

(assert (=> b!6905912 m!7622382))

(declare-fun m!7622384 () Bool)

(assert (=> b!6905912 m!7622384))

(assert (=> b!6905912 m!7622382))

(assert (=> b!6905912 m!7622384))

(declare-fun m!7622386 () Bool)

(assert (=> b!6905912 m!7622386))

(declare-fun m!7622388 () Bool)

(assert (=> d!2162687 m!7622388))

(assert (=> d!2162687 m!7622120))

(assert (=> b!6905911 m!7622380))

(assert (=> b!6905920 m!7622384))

(assert (=> b!6905920 m!7622384))

(declare-fun m!7622390 () Bool)

(assert (=> b!6905920 m!7622390))

(declare-fun m!7622392 () Bool)

(assert (=> b!6905917 m!7622392))

(assert (=> b!6905919 m!7622380))

(assert (=> b!6905915 m!7622384))

(assert (=> b!6905915 m!7622384))

(assert (=> b!6905915 m!7622390))

(assert (=> bm!627960 m!7622388))

(assert (=> b!6905401 d!2162687))

(declare-fun b!6905923 () Bool)

(declare-fun e!4158396 () Bool)

(declare-fun e!4158402 () Bool)

(assert (=> b!6905923 (= e!4158396 e!4158402)))

(declare-fun res!2816202 () Bool)

(assert (=> b!6905923 (=> (not res!2816202) (not e!4158402))))

(declare-fun call!627968 () Bool)

(assert (=> b!6905923 (= res!2816202 call!627968)))

(declare-fun b!6905924 () Bool)

(declare-fun call!627966 () Bool)

(assert (=> b!6905924 (= e!4158402 call!627966)))

(declare-fun bm!627961 () Bool)

(declare-fun call!627967 () Bool)

(assert (=> bm!627961 (= call!627966 call!627967)))

(declare-fun b!6905925 () Bool)

(declare-fun e!4158401 () Bool)

(declare-fun e!4158398 () Bool)

(assert (=> b!6905925 (= e!4158401 e!4158398)))

(declare-fun res!2816205 () Bool)

(assert (=> b!6905925 (= res!2816205 (not (nullable!6716 (reg!17204 r3!135))))))

(assert (=> b!6905925 (=> (not res!2816205) (not e!4158398))))

(declare-fun b!6905926 () Bool)

(assert (=> b!6905926 (= e!4158398 call!627967)))

(declare-fun b!6905927 () Bool)

(declare-fun res!2816201 () Bool)

(assert (=> b!6905927 (=> res!2816201 e!4158396)))

(assert (=> b!6905927 (= res!2816201 (not ((_ is Concat!25720) r3!135)))))

(declare-fun e!4158400 () Bool)

(assert (=> b!6905927 (= e!4158400 e!4158396)))

(declare-fun d!2162689 () Bool)

(declare-fun res!2816204 () Bool)

(declare-fun e!4158397 () Bool)

(assert (=> d!2162689 (=> res!2816204 e!4158397)))

(assert (=> d!2162689 (= res!2816204 ((_ is ElementMatch!16875) r3!135))))

(assert (=> d!2162689 (= (validRegex!8583 r3!135) e!4158397)))

(declare-fun b!6905928 () Bool)

(declare-fun res!2816203 () Bool)

(declare-fun e!4158399 () Bool)

(assert (=> b!6905928 (=> (not res!2816203) (not e!4158399))))

(assert (=> b!6905928 (= res!2816203 call!627966)))

(assert (=> b!6905928 (= e!4158400 e!4158399)))

(declare-fun b!6905929 () Bool)

(assert (=> b!6905929 (= e!4158399 call!627968)))

(declare-fun bm!627962 () Bool)

(declare-fun c!1282967 () Bool)

(declare-fun c!1282968 () Bool)

(assert (=> bm!627962 (= call!627967 (validRegex!8583 (ite c!1282968 (reg!17204 r3!135) (ite c!1282967 (regOne!34263 r3!135) (regTwo!34262 r3!135)))))))

(declare-fun b!6905930 () Bool)

(assert (=> b!6905930 (= e!4158397 e!4158401)))

(assert (=> b!6905930 (= c!1282968 ((_ is Star!16875) r3!135))))

(declare-fun b!6905931 () Bool)

(assert (=> b!6905931 (= e!4158401 e!4158400)))

(assert (=> b!6905931 (= c!1282967 ((_ is Union!16875) r3!135))))

(declare-fun bm!627963 () Bool)

(assert (=> bm!627963 (= call!627968 (validRegex!8583 (ite c!1282967 (regTwo!34263 r3!135) (regOne!34262 r3!135))))))

(assert (= (and d!2162689 (not res!2816204)) b!6905930))

(assert (= (and b!6905930 c!1282968) b!6905925))

(assert (= (and b!6905930 (not c!1282968)) b!6905931))

(assert (= (and b!6905925 res!2816205) b!6905926))

(assert (= (and b!6905931 c!1282967) b!6905928))

(assert (= (and b!6905931 (not c!1282967)) b!6905927))

(assert (= (and b!6905928 res!2816203) b!6905929))

(assert (= (and b!6905927 (not res!2816201)) b!6905923))

(assert (= (and b!6905923 res!2816202) b!6905924))

(assert (= (or b!6905928 b!6905924) bm!627961))

(assert (= (or b!6905929 b!6905923) bm!627963))

(assert (= (or b!6905926 bm!627961) bm!627962))

(declare-fun m!7622394 () Bool)

(assert (=> b!6905925 m!7622394))

(declare-fun m!7622396 () Bool)

(assert (=> bm!627962 m!7622396))

(declare-fun m!7622398 () Bool)

(assert (=> bm!627963 m!7622398))

(assert (=> b!6905397 d!2162689))

(declare-fun d!2162691 () Bool)

(declare-fun choose!51425 (Int) Bool)

(assert (=> d!2162691 (= (Exists!3883 lambda!392212) (choose!51425 lambda!392212))))

(declare-fun bs!1843532 () Bool)

(assert (= bs!1843532 d!2162691))

(declare-fun m!7622400 () Bool)

(assert (=> bs!1843532 m!7622400))

(assert (=> b!6905410 d!2162691))

(declare-fun d!2162693 () Bool)

(assert (=> d!2162693 (= (Exists!3883 lambda!392211) (choose!51425 lambda!392211))))

(declare-fun bs!1843533 () Bool)

(assert (= bs!1843533 d!2162693))

(declare-fun m!7622402 () Bool)

(assert (=> bs!1843533 m!7622402))

(assert (=> b!6905410 d!2162693))

(declare-fun b!6905932 () Bool)

(declare-fun res!2816209 () Bool)

(declare-fun e!4158405 () Bool)

(assert (=> b!6905932 (=> res!2816209 e!4158405)))

(assert (=> b!6905932 (= res!2816209 (not ((_ is ElementMatch!16875) lt!2467374)))))

(declare-fun e!4158403 () Bool)

(assert (=> b!6905932 (= e!4158403 e!4158405)))

(declare-fun b!6905933 () Bool)

(declare-fun e!4158404 () Bool)

(assert (=> b!6905933 (= e!4158405 e!4158404)))

(declare-fun res!2816208 () Bool)

(assert (=> b!6905933 (=> (not res!2816208) (not e!4158404))))

(declare-fun lt!2467418 () Bool)

(assert (=> b!6905933 (= res!2816208 (not lt!2467418))))

(declare-fun b!6905934 () Bool)

(declare-fun e!4158408 () Bool)

(assert (=> b!6905934 (= e!4158408 (not (= (head!13848 (_1!37045 lt!2467362)) (c!1282865 lt!2467374))))))

(declare-fun b!6905935 () Bool)

(declare-fun e!4158409 () Bool)

(assert (=> b!6905935 (= e!4158409 (matchR!9020 (derivativeStep!5395 lt!2467374 (head!13848 (_1!37045 lt!2467362))) (tail!12900 (_1!37045 lt!2467362))))))

(declare-fun bm!627964 () Bool)

(declare-fun call!627969 () Bool)

(assert (=> bm!627964 (= call!627969 (isEmpty!38746 (_1!37045 lt!2467362)))))

(declare-fun b!6905936 () Bool)

(assert (=> b!6905936 (= e!4158403 (not lt!2467418))))

(declare-fun d!2162695 () Bool)

(declare-fun e!4158406 () Bool)

(assert (=> d!2162695 e!4158406))

(declare-fun c!1282969 () Bool)

(assert (=> d!2162695 (= c!1282969 ((_ is EmptyExpr!16875) lt!2467374))))

(assert (=> d!2162695 (= lt!2467418 e!4158409)))

(declare-fun c!1282970 () Bool)

(assert (=> d!2162695 (= c!1282970 (isEmpty!38746 (_1!37045 lt!2467362)))))

(assert (=> d!2162695 (validRegex!8583 lt!2467374)))

(assert (=> d!2162695 (= (matchR!9020 lt!2467374 (_1!37045 lt!2467362)) lt!2467418)))

(declare-fun b!6905937 () Bool)

(assert (=> b!6905937 (= e!4158406 e!4158403)))

(declare-fun c!1282971 () Bool)

(assert (=> b!6905937 (= c!1282971 ((_ is EmptyLang!16875) lt!2467374))))

(declare-fun b!6905938 () Bool)

(declare-fun res!2816210 () Bool)

(assert (=> b!6905938 (=> res!2816210 e!4158408)))

(assert (=> b!6905938 (= res!2816210 (not (isEmpty!38746 (tail!12900 (_1!37045 lt!2467362)))))))

(declare-fun b!6905939 () Bool)

(assert (=> b!6905939 (= e!4158404 e!4158408)))

(declare-fun res!2816213 () Bool)

(assert (=> b!6905939 (=> res!2816213 e!4158408)))

(assert (=> b!6905939 (= res!2816213 call!627969)))

(declare-fun b!6905940 () Bool)

(assert (=> b!6905940 (= e!4158409 (nullable!6716 lt!2467374))))

(declare-fun b!6905941 () Bool)

(declare-fun res!2816207 () Bool)

(assert (=> b!6905941 (=> res!2816207 e!4158405)))

(declare-fun e!4158407 () Bool)

(assert (=> b!6905941 (= res!2816207 e!4158407)))

(declare-fun res!2816206 () Bool)

(assert (=> b!6905941 (=> (not res!2816206) (not e!4158407))))

(assert (=> b!6905941 (= res!2816206 lt!2467418)))

(declare-fun b!6905942 () Bool)

(assert (=> b!6905942 (= e!4158407 (= (head!13848 (_1!37045 lt!2467362)) (c!1282865 lt!2467374)))))

(declare-fun b!6905943 () Bool)

(declare-fun res!2816211 () Bool)

(assert (=> b!6905943 (=> (not res!2816211) (not e!4158407))))

(assert (=> b!6905943 (= res!2816211 (isEmpty!38746 (tail!12900 (_1!37045 lt!2467362))))))

(declare-fun b!6905944 () Bool)

(assert (=> b!6905944 (= e!4158406 (= lt!2467418 call!627969))))

(declare-fun b!6905945 () Bool)

(declare-fun res!2816212 () Bool)

(assert (=> b!6905945 (=> (not res!2816212) (not e!4158407))))

(assert (=> b!6905945 (= res!2816212 (not call!627969))))

(assert (= (and d!2162695 c!1282970) b!6905940))

(assert (= (and d!2162695 (not c!1282970)) b!6905935))

(assert (= (and d!2162695 c!1282969) b!6905944))

(assert (= (and d!2162695 (not c!1282969)) b!6905937))

(assert (= (and b!6905937 c!1282971) b!6905936))

(assert (= (and b!6905937 (not c!1282971)) b!6905932))

(assert (= (and b!6905932 (not res!2816209)) b!6905941))

(assert (= (and b!6905941 res!2816206) b!6905945))

(assert (= (and b!6905945 res!2816212) b!6905943))

(assert (= (and b!6905943 res!2816211) b!6905942))

(assert (= (and b!6905941 (not res!2816207)) b!6905933))

(assert (= (and b!6905933 res!2816208) b!6905939))

(assert (= (and b!6905939 (not res!2816213)) b!6905938))

(assert (= (and b!6905938 (not res!2816210)) b!6905934))

(assert (= (or b!6905944 b!6905945 b!6905939) bm!627964))

(declare-fun m!7622404 () Bool)

(assert (=> b!6905935 m!7622404))

(assert (=> b!6905935 m!7622404))

(declare-fun m!7622406 () Bool)

(assert (=> b!6905935 m!7622406))

(declare-fun m!7622408 () Bool)

(assert (=> b!6905935 m!7622408))

(assert (=> b!6905935 m!7622406))

(assert (=> b!6905935 m!7622408))

(declare-fun m!7622410 () Bool)

(assert (=> b!6905935 m!7622410))

(declare-fun m!7622412 () Bool)

(assert (=> d!2162695 m!7622412))

(declare-fun m!7622414 () Bool)

(assert (=> d!2162695 m!7622414))

(assert (=> b!6905934 m!7622404))

(assert (=> b!6905943 m!7622408))

(assert (=> b!6905943 m!7622408))

(declare-fun m!7622416 () Bool)

(assert (=> b!6905943 m!7622416))

(declare-fun m!7622418 () Bool)

(assert (=> b!6905940 m!7622418))

(assert (=> b!6905942 m!7622404))

(assert (=> b!6905938 m!7622408))

(assert (=> b!6905938 m!7622408))

(assert (=> b!6905938 m!7622416))

(assert (=> bm!627964 m!7622412))

(assert (=> b!6905410 d!2162695))

(declare-fun bs!1843534 () Bool)

(declare-fun b!6905951 () Bool)

(assert (= bs!1843534 (and b!6905951 b!6905582)))

(declare-fun lambda!392245 () Int)

(assert (=> bs!1843534 (= (and (= (_1!37045 lt!2467362) s!14361) (= (reg!17204 lt!2467374) (reg!17204 lt!2467370)) (= lt!2467374 lt!2467370)) (= lambda!392245 lambda!392228))))

(declare-fun bs!1843535 () Bool)

(assert (= bs!1843535 (and b!6905951 b!6905719)))

(assert (=> bs!1843535 (= (and (= (_1!37045 lt!2467362) s!14361) (= (reg!17204 lt!2467374) (reg!17204 lt!2467360)) (= lt!2467374 lt!2467360)) (= lambda!392245 lambda!392236))))

(declare-fun bs!1843536 () Bool)

(assert (= bs!1843536 (and b!6905951 b!6905721)))

(assert (=> bs!1843536 (not (= lambda!392245 lambda!392238))))

(declare-fun bs!1843537 () Bool)

(assert (= bs!1843537 (and b!6905951 b!6905410)))

(assert (=> bs!1843537 (not (= lambda!392245 lambda!392212))))

(declare-fun bs!1843538 () Bool)

(assert (= bs!1843538 (and b!6905951 b!6905399)))

(assert (=> bs!1843538 (not (= lambda!392245 lambda!392213))))

(assert (=> bs!1843537 (not (= lambda!392245 lambda!392211))))

(declare-fun bs!1843539 () Bool)

(assert (= bs!1843539 (and b!6905951 b!6905584)))

(assert (=> bs!1843539 (not (= lambda!392245 lambda!392231))))

(assert (=> bs!1843538 (not (= lambda!392245 lambda!392214))))

(assert (=> b!6905951 true))

(assert (=> b!6905951 true))

(declare-fun bs!1843540 () Bool)

(declare-fun b!6905953 () Bool)

(assert (= bs!1843540 (and b!6905953 b!6905582)))

(declare-fun lambda!392246 () Int)

(assert (=> bs!1843540 (not (= lambda!392246 lambda!392228))))

(declare-fun bs!1843541 () Bool)

(assert (= bs!1843541 (and b!6905953 b!6905951)))

(assert (=> bs!1843541 (not (= lambda!392246 lambda!392245))))

(declare-fun bs!1843542 () Bool)

(assert (= bs!1843542 (and b!6905953 b!6905719)))

(assert (=> bs!1843542 (not (= lambda!392246 lambda!392236))))

(declare-fun bs!1843543 () Bool)

(assert (= bs!1843543 (and b!6905953 b!6905721)))

(assert (=> bs!1843543 (= (and (= (_1!37045 lt!2467362) s!14361) (= (regOne!34262 lt!2467374) (regOne!34262 lt!2467360)) (= (regTwo!34262 lt!2467374) (regTwo!34262 lt!2467360))) (= lambda!392246 lambda!392238))))

(declare-fun bs!1843544 () Bool)

(assert (= bs!1843544 (and b!6905953 b!6905410)))

(assert (=> bs!1843544 (= (and (= (_1!37045 lt!2467362) s!14361) (= (regOne!34262 lt!2467374) lt!2467374) (= (regTwo!34262 lt!2467374) r3!135)) (= lambda!392246 lambda!392212))))

(declare-fun bs!1843545 () Bool)

(assert (= bs!1843545 (and b!6905953 b!6905399)))

(assert (=> bs!1843545 (not (= lambda!392246 lambda!392213))))

(assert (=> bs!1843544 (not (= lambda!392246 lambda!392211))))

(declare-fun bs!1843546 () Bool)

(assert (= bs!1843546 (and b!6905953 b!6905584)))

(assert (=> bs!1843546 (= (and (= (_1!37045 lt!2467362) s!14361) (= (regOne!34262 lt!2467374) (regOne!34262 lt!2467370)) (= (regTwo!34262 lt!2467374) (regTwo!34262 lt!2467370))) (= lambda!392246 lambda!392231))))

(assert (=> bs!1843545 (= (and (= (regOne!34262 lt!2467374) r1!6342) (= (regTwo!34262 lt!2467374) r2!6280)) (= lambda!392246 lambda!392214))))

(assert (=> b!6905953 true))

(assert (=> b!6905953 true))

(declare-fun bm!627965 () Bool)

(declare-fun call!627970 () Bool)

(assert (=> bm!627965 (= call!627970 (isEmpty!38746 (_1!37045 lt!2467362)))))

(declare-fun b!6905946 () Bool)

(declare-fun e!4158412 () Bool)

(assert (=> b!6905946 (= e!4158412 call!627970)))

(declare-fun b!6905948 () Bool)

(declare-fun e!4158416 () Bool)

(declare-fun e!4158414 () Bool)

(assert (=> b!6905948 (= e!4158416 e!4158414)))

(declare-fun res!2816215 () Bool)

(assert (=> b!6905948 (= res!2816215 (matchRSpec!3938 (regOne!34263 lt!2467374) (_1!37045 lt!2467362)))))

(assert (=> b!6905948 (=> res!2816215 e!4158414)))

(declare-fun b!6905949 () Bool)

(declare-fun e!4158410 () Bool)

(assert (=> b!6905949 (= e!4158410 (= (_1!37045 lt!2467362) (Cons!66508 (c!1282865 lt!2467374) Nil!66508)))))

(declare-fun b!6905950 () Bool)

(declare-fun e!4158411 () Bool)

(assert (=> b!6905950 (= e!4158412 e!4158411)))

(declare-fun res!2816214 () Bool)

(assert (=> b!6905950 (= res!2816214 (not ((_ is EmptyLang!16875) lt!2467374)))))

(assert (=> b!6905950 (=> (not res!2816214) (not e!4158411))))

(declare-fun call!627971 () Bool)

(declare-fun bm!627966 () Bool)

(declare-fun c!1282975 () Bool)

(assert (=> bm!627966 (= call!627971 (Exists!3883 (ite c!1282975 lambda!392245 lambda!392246)))))

(declare-fun e!4158413 () Bool)

(assert (=> b!6905951 (= e!4158413 call!627971)))

(declare-fun b!6905952 () Bool)

(declare-fun c!1282972 () Bool)

(assert (=> b!6905952 (= c!1282972 ((_ is ElementMatch!16875) lt!2467374))))

(assert (=> b!6905952 (= e!4158411 e!4158410)))

(declare-fun b!6905947 () Bool)

(declare-fun c!1282973 () Bool)

(assert (=> b!6905947 (= c!1282973 ((_ is Union!16875) lt!2467374))))

(assert (=> b!6905947 (= e!4158410 e!4158416)))

(declare-fun d!2162697 () Bool)

(declare-fun c!1282974 () Bool)

(assert (=> d!2162697 (= c!1282974 ((_ is EmptyExpr!16875) lt!2467374))))

(assert (=> d!2162697 (= (matchRSpec!3938 lt!2467374 (_1!37045 lt!2467362)) e!4158412)))

(declare-fun e!4158415 () Bool)

(assert (=> b!6905953 (= e!4158415 call!627971)))

(declare-fun b!6905954 () Bool)

(assert (=> b!6905954 (= e!4158416 e!4158415)))

(assert (=> b!6905954 (= c!1282975 ((_ is Star!16875) lt!2467374))))

(declare-fun b!6905955 () Bool)

(assert (=> b!6905955 (= e!4158414 (matchRSpec!3938 (regTwo!34263 lt!2467374) (_1!37045 lt!2467362)))))

(declare-fun b!6905956 () Bool)

(declare-fun res!2816216 () Bool)

(assert (=> b!6905956 (=> res!2816216 e!4158413)))

(assert (=> b!6905956 (= res!2816216 call!627970)))

(assert (=> b!6905956 (= e!4158415 e!4158413)))

(assert (= (and d!2162697 c!1282974) b!6905946))

(assert (= (and d!2162697 (not c!1282974)) b!6905950))

(assert (= (and b!6905950 res!2816214) b!6905952))

(assert (= (and b!6905952 c!1282972) b!6905949))

(assert (= (and b!6905952 (not c!1282972)) b!6905947))

(assert (= (and b!6905947 c!1282973) b!6905948))

(assert (= (and b!6905947 (not c!1282973)) b!6905954))

(assert (= (and b!6905948 (not res!2816215)) b!6905955))

(assert (= (and b!6905954 c!1282975) b!6905956))

(assert (= (and b!6905954 (not c!1282975)) b!6905953))

(assert (= (and b!6905956 (not res!2816216)) b!6905951))

(assert (= (or b!6905951 b!6905953) bm!627966))

(assert (= (or b!6905946 b!6905956) bm!627965))

(assert (=> bm!627965 m!7622412))

(declare-fun m!7622420 () Bool)

(assert (=> b!6905948 m!7622420))

(declare-fun m!7622422 () Bool)

(assert (=> bm!627966 m!7622422))

(declare-fun m!7622424 () Bool)

(assert (=> b!6905955 m!7622424))

(assert (=> b!6905410 d!2162697))

(declare-fun d!2162699 () Bool)

(declare-fun isEmpty!38747 (Option!16654) Bool)

(assert (=> d!2162699 (= (isDefined!13357 lt!2467371) (not (isEmpty!38747 lt!2467371)))))

(declare-fun bs!1843547 () Bool)

(assert (= bs!1843547 d!2162699))

(declare-fun m!7622426 () Bool)

(assert (=> bs!1843547 m!7622426))

(assert (=> b!6905410 d!2162699))

(declare-fun bs!1843548 () Bool)

(declare-fun d!2162701 () Bool)

(assert (= bs!1843548 (and d!2162701 b!6905582)))

(declare-fun lambda!392249 () Int)

(assert (=> bs!1843548 (not (= lambda!392249 lambda!392228))))

(declare-fun bs!1843549 () Bool)

(assert (= bs!1843549 (and d!2162701 b!6905953)))

(assert (=> bs!1843549 (not (= lambda!392249 lambda!392246))))

(declare-fun bs!1843550 () Bool)

(assert (= bs!1843550 (and d!2162701 b!6905951)))

(assert (=> bs!1843550 (not (= lambda!392249 lambda!392245))))

(declare-fun bs!1843551 () Bool)

(assert (= bs!1843551 (and d!2162701 b!6905719)))

(assert (=> bs!1843551 (not (= lambda!392249 lambda!392236))))

(declare-fun bs!1843552 () Bool)

(assert (= bs!1843552 (and d!2162701 b!6905721)))

(assert (=> bs!1843552 (not (= lambda!392249 lambda!392238))))

(declare-fun bs!1843553 () Bool)

(assert (= bs!1843553 (and d!2162701 b!6905410)))

(assert (=> bs!1843553 (not (= lambda!392249 lambda!392212))))

(declare-fun bs!1843554 () Bool)

(assert (= bs!1843554 (and d!2162701 b!6905399)))

(assert (=> bs!1843554 (= (and (= s!14361 (_1!37045 lt!2467362)) (= lt!2467374 r1!6342) (= r3!135 r2!6280)) (= lambda!392249 lambda!392213))))

(assert (=> bs!1843553 (= lambda!392249 lambda!392211)))

(declare-fun bs!1843555 () Bool)

(assert (= bs!1843555 (and d!2162701 b!6905584)))

(assert (=> bs!1843555 (not (= lambda!392249 lambda!392231))))

(assert (=> bs!1843554 (not (= lambda!392249 lambda!392214))))

(assert (=> d!2162701 true))

(assert (=> d!2162701 true))

(assert (=> d!2162701 true))

(assert (=> d!2162701 (= (isDefined!13357 (findConcatSeparation!3068 lt!2467374 r3!135 Nil!66508 s!14361 s!14361)) (Exists!3883 lambda!392249))))

(declare-fun lt!2467421 () Unit!160486)

(declare-fun choose!51426 (Regex!16875 Regex!16875 List!66632) Unit!160486)

(assert (=> d!2162701 (= lt!2467421 (choose!51426 lt!2467374 r3!135 s!14361))))

(assert (=> d!2162701 (validRegex!8583 lt!2467374)))

(assert (=> d!2162701 (= (lemmaFindConcatSeparationEquivalentToExists!2830 lt!2467374 r3!135 s!14361) lt!2467421)))

(declare-fun bs!1843556 () Bool)

(assert (= bs!1843556 d!2162701))

(assert (=> bs!1843556 m!7622116))

(assert (=> bs!1843556 m!7622116))

(declare-fun m!7622428 () Bool)

(assert (=> bs!1843556 m!7622428))

(declare-fun m!7622430 () Bool)

(assert (=> bs!1843556 m!7622430))

(declare-fun m!7622432 () Bool)

(assert (=> bs!1843556 m!7622432))

(assert (=> bs!1843556 m!7622414))

(assert (=> b!6905410 d!2162701))

(declare-fun bs!1843557 () Bool)

(declare-fun d!2162703 () Bool)

(assert (= bs!1843557 (and d!2162703 d!2162701)))

(declare-fun lambda!392254 () Int)

(assert (=> bs!1843557 (= lambda!392254 lambda!392249)))

(declare-fun bs!1843558 () Bool)

(assert (= bs!1843558 (and d!2162703 b!6905582)))

(assert (=> bs!1843558 (not (= lambda!392254 lambda!392228))))

(declare-fun bs!1843559 () Bool)

(assert (= bs!1843559 (and d!2162703 b!6905953)))

(assert (=> bs!1843559 (not (= lambda!392254 lambda!392246))))

(declare-fun bs!1843560 () Bool)

(assert (= bs!1843560 (and d!2162703 b!6905951)))

(assert (=> bs!1843560 (not (= lambda!392254 lambda!392245))))

(declare-fun bs!1843561 () Bool)

(assert (= bs!1843561 (and d!2162703 b!6905719)))

(assert (=> bs!1843561 (not (= lambda!392254 lambda!392236))))

(declare-fun bs!1843562 () Bool)

(assert (= bs!1843562 (and d!2162703 b!6905721)))

(assert (=> bs!1843562 (not (= lambda!392254 lambda!392238))))

(declare-fun bs!1843563 () Bool)

(assert (= bs!1843563 (and d!2162703 b!6905410)))

(assert (=> bs!1843563 (not (= lambda!392254 lambda!392212))))

(declare-fun bs!1843564 () Bool)

(assert (= bs!1843564 (and d!2162703 b!6905399)))

(assert (=> bs!1843564 (= (and (= s!14361 (_1!37045 lt!2467362)) (= lt!2467374 r1!6342) (= r3!135 r2!6280)) (= lambda!392254 lambda!392213))))

(assert (=> bs!1843563 (= lambda!392254 lambda!392211)))

(declare-fun bs!1843565 () Bool)

(assert (= bs!1843565 (and d!2162703 b!6905584)))

(assert (=> bs!1843565 (not (= lambda!392254 lambda!392231))))

(assert (=> bs!1843564 (not (= lambda!392254 lambda!392214))))

(assert (=> d!2162703 true))

(assert (=> d!2162703 true))

(assert (=> d!2162703 true))

(declare-fun lambda!392255 () Int)

(assert (=> bs!1843557 (not (= lambda!392255 lambda!392249))))

(assert (=> bs!1843558 (not (= lambda!392255 lambda!392228))))

(assert (=> bs!1843559 (= (and (= s!14361 (_1!37045 lt!2467362)) (= lt!2467374 (regOne!34262 lt!2467374)) (= r3!135 (regTwo!34262 lt!2467374))) (= lambda!392255 lambda!392246))))

(assert (=> bs!1843560 (not (= lambda!392255 lambda!392245))))

(assert (=> bs!1843561 (not (= lambda!392255 lambda!392236))))

(assert (=> bs!1843562 (= (and (= lt!2467374 (regOne!34262 lt!2467360)) (= r3!135 (regTwo!34262 lt!2467360))) (= lambda!392255 lambda!392238))))

(declare-fun bs!1843566 () Bool)

(assert (= bs!1843566 d!2162703))

(assert (=> bs!1843566 (not (= lambda!392255 lambda!392254))))

(assert (=> bs!1843563 (= lambda!392255 lambda!392212)))

(assert (=> bs!1843564 (not (= lambda!392255 lambda!392213))))

(assert (=> bs!1843563 (not (= lambda!392255 lambda!392211))))

(assert (=> bs!1843565 (= (and (= lt!2467374 (regOne!34262 lt!2467370)) (= r3!135 (regTwo!34262 lt!2467370))) (= lambda!392255 lambda!392231))))

(assert (=> bs!1843564 (= (and (= s!14361 (_1!37045 lt!2467362)) (= lt!2467374 r1!6342) (= r3!135 r2!6280)) (= lambda!392255 lambda!392214))))

(assert (=> d!2162703 true))

(assert (=> d!2162703 true))

(assert (=> d!2162703 true))

(assert (=> d!2162703 (= (Exists!3883 lambda!392254) (Exists!3883 lambda!392255))))

(declare-fun lt!2467424 () Unit!160486)

(declare-fun choose!51427 (Regex!16875 Regex!16875 List!66632) Unit!160486)

(assert (=> d!2162703 (= lt!2467424 (choose!51427 lt!2467374 r3!135 s!14361))))

(assert (=> d!2162703 (validRegex!8583 lt!2467374)))

(assert (=> d!2162703 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2356 lt!2467374 r3!135 s!14361) lt!2467424)))

(declare-fun m!7622434 () Bool)

(assert (=> bs!1843566 m!7622434))

(declare-fun m!7622436 () Bool)

(assert (=> bs!1843566 m!7622436))

(declare-fun m!7622438 () Bool)

(assert (=> bs!1843566 m!7622438))

(assert (=> bs!1843566 m!7622414))

(assert (=> b!6905410 d!2162703))

(declare-fun b!6905987 () Bool)

(declare-fun e!4158436 () Option!16654)

(assert (=> b!6905987 (= e!4158436 None!16653)))

(declare-fun b!6905988 () Bool)

(declare-fun lt!2467431 () Unit!160486)

(declare-fun lt!2467432 () Unit!160486)

(assert (=> b!6905988 (= lt!2467431 lt!2467432)))

(declare-fun ++!14928 (List!66632 List!66632) List!66632)

(assert (=> b!6905988 (= (++!14928 (++!14928 Nil!66508 (Cons!66508 (h!72956 s!14361) Nil!66508)) (t!380375 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2803 (List!66632 C!34020 List!66632 List!66632) Unit!160486)

(assert (=> b!6905988 (= lt!2467432 (lemmaMoveElementToOtherListKeepsConcatEq!2803 Nil!66508 (h!72956 s!14361) (t!380375 s!14361) s!14361))))

(assert (=> b!6905988 (= e!4158436 (findConcatSeparation!3068 lt!2467374 r3!135 (++!14928 Nil!66508 (Cons!66508 (h!72956 s!14361) Nil!66508)) (t!380375 s!14361) s!14361))))

(declare-fun b!6905989 () Bool)

(declare-fun e!4158433 () Bool)

(declare-fun lt!2467433 () Option!16654)

(assert (=> b!6905989 (= e!4158433 (not (isDefined!13357 lt!2467433)))))

(declare-fun b!6905990 () Bool)

(declare-fun e!4158434 () Option!16654)

(assert (=> b!6905990 (= e!4158434 e!4158436)))

(declare-fun c!1282981 () Bool)

(assert (=> b!6905990 (= c!1282981 ((_ is Nil!66508) s!14361))))

(declare-fun b!6905991 () Bool)

(declare-fun e!4158435 () Bool)

(assert (=> b!6905991 (= e!4158435 (= (++!14928 (_1!37045 (get!23263 lt!2467433)) (_2!37045 (get!23263 lt!2467433))) s!14361))))

(declare-fun b!6905992 () Bool)

(declare-fun res!2816239 () Bool)

(assert (=> b!6905992 (=> (not res!2816239) (not e!4158435))))

(assert (=> b!6905992 (= res!2816239 (matchR!9020 lt!2467374 (_1!37045 (get!23263 lt!2467433))))))

(declare-fun d!2162705 () Bool)

(assert (=> d!2162705 e!4158433))

(declare-fun res!2816241 () Bool)

(assert (=> d!2162705 (=> res!2816241 e!4158433)))

(assert (=> d!2162705 (= res!2816241 e!4158435)))

(declare-fun res!2816242 () Bool)

(assert (=> d!2162705 (=> (not res!2816242) (not e!4158435))))

(assert (=> d!2162705 (= res!2816242 (isDefined!13357 lt!2467433))))

(assert (=> d!2162705 (= lt!2467433 e!4158434)))

(declare-fun c!1282980 () Bool)

(declare-fun e!4158437 () Bool)

(assert (=> d!2162705 (= c!1282980 e!4158437)))

(declare-fun res!2816243 () Bool)

(assert (=> d!2162705 (=> (not res!2816243) (not e!4158437))))

(assert (=> d!2162705 (= res!2816243 (matchR!9020 lt!2467374 Nil!66508))))

(assert (=> d!2162705 (validRegex!8583 lt!2467374)))

(assert (=> d!2162705 (= (findConcatSeparation!3068 lt!2467374 r3!135 Nil!66508 s!14361 s!14361) lt!2467433)))

(declare-fun b!6905993 () Bool)

(assert (=> b!6905993 (= e!4158434 (Some!16653 (tuple2!67485 Nil!66508 s!14361)))))

(declare-fun b!6905994 () Bool)

(assert (=> b!6905994 (= e!4158437 (matchR!9020 r3!135 s!14361))))

(declare-fun b!6905995 () Bool)

(declare-fun res!2816240 () Bool)

(assert (=> b!6905995 (=> (not res!2816240) (not e!4158435))))

(assert (=> b!6905995 (= res!2816240 (matchR!9020 r3!135 (_2!37045 (get!23263 lt!2467433))))))

(assert (= (and d!2162705 res!2816243) b!6905994))

(assert (= (and d!2162705 c!1282980) b!6905993))

(assert (= (and d!2162705 (not c!1282980)) b!6905990))

(assert (= (and b!6905990 c!1282981) b!6905987))

(assert (= (and b!6905990 (not c!1282981)) b!6905988))

(assert (= (and d!2162705 res!2816242) b!6905992))

(assert (= (and b!6905992 res!2816239) b!6905995))

(assert (= (and b!6905995 res!2816240) b!6905991))

(assert (= (and d!2162705 (not res!2816241)) b!6905989))

(declare-fun m!7622440 () Bool)

(assert (=> b!6905988 m!7622440))

(assert (=> b!6905988 m!7622440))

(declare-fun m!7622442 () Bool)

(assert (=> b!6905988 m!7622442))

(declare-fun m!7622444 () Bool)

(assert (=> b!6905988 m!7622444))

(assert (=> b!6905988 m!7622440))

(declare-fun m!7622446 () Bool)

(assert (=> b!6905988 m!7622446))

(declare-fun m!7622448 () Bool)

(assert (=> d!2162705 m!7622448))

(declare-fun m!7622450 () Bool)

(assert (=> d!2162705 m!7622450))

(assert (=> d!2162705 m!7622414))

(declare-fun m!7622452 () Bool)

(assert (=> b!6905994 m!7622452))

(declare-fun m!7622454 () Bool)

(assert (=> b!6905991 m!7622454))

(declare-fun m!7622456 () Bool)

(assert (=> b!6905991 m!7622456))

(assert (=> b!6905989 m!7622448))

(assert (=> b!6905995 m!7622454))

(declare-fun m!7622458 () Bool)

(assert (=> b!6905995 m!7622458))

(assert (=> b!6905992 m!7622454))

(declare-fun m!7622460 () Bool)

(assert (=> b!6905992 m!7622460))

(assert (=> b!6905410 d!2162705))

(declare-fun d!2162707 () Bool)

(assert (=> d!2162707 (= (matchR!9020 lt!2467374 (_1!37045 lt!2467362)) (matchRSpec!3938 lt!2467374 (_1!37045 lt!2467362)))))

(declare-fun lt!2467434 () Unit!160486)

(assert (=> d!2162707 (= lt!2467434 (choose!51424 lt!2467374 (_1!37045 lt!2467362)))))

(assert (=> d!2162707 (validRegex!8583 lt!2467374)))

(assert (=> d!2162707 (= (mainMatchTheorem!3938 lt!2467374 (_1!37045 lt!2467362)) lt!2467434)))

(declare-fun bs!1843567 () Bool)

(assert (= bs!1843567 d!2162707))

(assert (=> bs!1843567 m!7622098))

(assert (=> bs!1843567 m!7622100))

(declare-fun m!7622462 () Bool)

(assert (=> bs!1843567 m!7622462))

(assert (=> bs!1843567 m!7622414))

(assert (=> b!6905410 d!2162707))

(declare-fun d!2162709 () Bool)

(assert (=> d!2162709 (= (get!23263 lt!2467371) (v!52925 lt!2467371))))

(assert (=> b!6905410 d!2162709))

(declare-fun d!2162711 () Bool)

(assert (=> d!2162711 (= (Exists!3883 lambda!392213) (choose!51425 lambda!392213))))

(declare-fun bs!1843568 () Bool)

(assert (= bs!1843568 d!2162711))

(declare-fun m!7622464 () Bool)

(assert (=> bs!1843568 m!7622464))

(assert (=> b!6905399 d!2162711))

(declare-fun d!2162713 () Bool)

(assert (=> d!2162713 (= (isDefined!13357 lt!2467363) (not (isEmpty!38747 lt!2467363)))))

(declare-fun bs!1843569 () Bool)

(assert (= bs!1843569 d!2162713))

(declare-fun m!7622466 () Bool)

(assert (=> bs!1843569 m!7622466))

(assert (=> b!6905399 d!2162713))

(declare-fun bs!1843570 () Bool)

(declare-fun d!2162715 () Bool)

(assert (= bs!1843570 (and d!2162715 d!2162701)))

(declare-fun lambda!392256 () Int)

(assert (=> bs!1843570 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392256 lambda!392249))))

(declare-fun bs!1843571 () Bool)

(assert (= bs!1843571 (and d!2162715 b!6905953)))

(assert (=> bs!1843571 (not (= lambda!392256 lambda!392246))))

(declare-fun bs!1843572 () Bool)

(assert (= bs!1843572 (and d!2162715 b!6905951)))

(assert (=> bs!1843572 (not (= lambda!392256 lambda!392245))))

(declare-fun bs!1843573 () Bool)

(assert (= bs!1843573 (and d!2162715 b!6905719)))

(assert (=> bs!1843573 (not (= lambda!392256 lambda!392236))))

(declare-fun bs!1843574 () Bool)

(assert (= bs!1843574 (and d!2162715 b!6905721)))

(assert (=> bs!1843574 (not (= lambda!392256 lambda!392238))))

(declare-fun bs!1843575 () Bool)

(assert (= bs!1843575 (and d!2162715 d!2162703)))

(assert (=> bs!1843575 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392256 lambda!392254))))

(declare-fun bs!1843576 () Bool)

(assert (= bs!1843576 (and d!2162715 b!6905410)))

(assert (=> bs!1843576 (not (= lambda!392256 lambda!392212))))

(declare-fun bs!1843577 () Bool)

(assert (= bs!1843577 (and d!2162715 b!6905582)))

(assert (=> bs!1843577 (not (= lambda!392256 lambda!392228))))

(assert (=> bs!1843575 (not (= lambda!392256 lambda!392255))))

(declare-fun bs!1843578 () Bool)

(assert (= bs!1843578 (and d!2162715 b!6905399)))

(assert (=> bs!1843578 (= lambda!392256 lambda!392213)))

(assert (=> bs!1843576 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392256 lambda!392211))))

(declare-fun bs!1843579 () Bool)

(assert (= bs!1843579 (and d!2162715 b!6905584)))

(assert (=> bs!1843579 (not (= lambda!392256 lambda!392231))))

(assert (=> bs!1843578 (not (= lambda!392256 lambda!392214))))

(assert (=> d!2162715 true))

(assert (=> d!2162715 true))

(assert (=> d!2162715 true))

(declare-fun lambda!392257 () Int)

(assert (=> bs!1843570 (not (= lambda!392257 lambda!392249))))

(assert (=> bs!1843571 (= (and (= r1!6342 (regOne!34262 lt!2467374)) (= r2!6280 (regTwo!34262 lt!2467374))) (= lambda!392257 lambda!392246))))

(assert (=> bs!1843572 (not (= lambda!392257 lambda!392245))))

(assert (=> bs!1843574 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 (regOne!34262 lt!2467360)) (= r2!6280 (regTwo!34262 lt!2467360))) (= lambda!392257 lambda!392238))))

(assert (=> bs!1843575 (not (= lambda!392257 lambda!392254))))

(assert (=> bs!1843576 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392257 lambda!392212))))

(assert (=> bs!1843577 (not (= lambda!392257 lambda!392228))))

(assert (=> bs!1843575 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392257 lambda!392255))))

(assert (=> bs!1843573 (not (= lambda!392257 lambda!392236))))

(declare-fun bs!1843580 () Bool)

(assert (= bs!1843580 d!2162715))

(assert (=> bs!1843580 (not (= lambda!392257 lambda!392256))))

(assert (=> bs!1843578 (not (= lambda!392257 lambda!392213))))

(assert (=> bs!1843576 (not (= lambda!392257 lambda!392211))))

(assert (=> bs!1843579 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 (regOne!34262 lt!2467370)) (= r2!6280 (regTwo!34262 lt!2467370))) (= lambda!392257 lambda!392231))))

(assert (=> bs!1843578 (= lambda!392257 lambda!392214)))

(assert (=> d!2162715 true))

(assert (=> d!2162715 true))

(assert (=> d!2162715 true))

(assert (=> d!2162715 (= (Exists!3883 lambda!392256) (Exists!3883 lambda!392257))))

(declare-fun lt!2467435 () Unit!160486)

(assert (=> d!2162715 (= lt!2467435 (choose!51427 r1!6342 r2!6280 (_1!37045 lt!2467362)))))

(assert (=> d!2162715 (validRegex!8583 r1!6342)))

(assert (=> d!2162715 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2356 r1!6342 r2!6280 (_1!37045 lt!2467362)) lt!2467435)))

(declare-fun m!7622468 () Bool)

(assert (=> bs!1843580 m!7622468))

(declare-fun m!7622470 () Bool)

(assert (=> bs!1843580 m!7622470))

(declare-fun m!7622472 () Bool)

(assert (=> bs!1843580 m!7622472))

(assert (=> bs!1843580 m!7622118))

(assert (=> b!6905399 d!2162715))

(declare-fun d!2162717 () Bool)

(assert (=> d!2162717 (= (get!23263 lt!2467363) (v!52925 lt!2467363))))

(assert (=> b!6905399 d!2162717))

(declare-fun d!2162719 () Bool)

(assert (=> d!2162719 (= (Exists!3883 lambda!392214) (choose!51425 lambda!392214))))

(declare-fun bs!1843581 () Bool)

(assert (= bs!1843581 d!2162719))

(declare-fun m!7622474 () Bool)

(assert (=> bs!1843581 m!7622474))

(assert (=> b!6905399 d!2162719))

(declare-fun bs!1843582 () Bool)

(declare-fun d!2162721 () Bool)

(assert (= bs!1843582 (and d!2162721 d!2162701)))

(declare-fun lambda!392258 () Int)

(assert (=> bs!1843582 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392258 lambda!392249))))

(declare-fun bs!1843583 () Bool)

(assert (= bs!1843583 (and d!2162721 d!2162715)))

(assert (=> bs!1843583 (not (= lambda!392258 lambda!392257))))

(declare-fun bs!1843584 () Bool)

(assert (= bs!1843584 (and d!2162721 b!6905953)))

(assert (=> bs!1843584 (not (= lambda!392258 lambda!392246))))

(declare-fun bs!1843585 () Bool)

(assert (= bs!1843585 (and d!2162721 b!6905951)))

(assert (=> bs!1843585 (not (= lambda!392258 lambda!392245))))

(declare-fun bs!1843586 () Bool)

(assert (= bs!1843586 (and d!2162721 b!6905721)))

(assert (=> bs!1843586 (not (= lambda!392258 lambda!392238))))

(declare-fun bs!1843587 () Bool)

(assert (= bs!1843587 (and d!2162721 d!2162703)))

(assert (=> bs!1843587 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392258 lambda!392254))))

(declare-fun bs!1843588 () Bool)

(assert (= bs!1843588 (and d!2162721 b!6905410)))

(assert (=> bs!1843588 (not (= lambda!392258 lambda!392212))))

(declare-fun bs!1843589 () Bool)

(assert (= bs!1843589 (and d!2162721 b!6905582)))

(assert (=> bs!1843589 (not (= lambda!392258 lambda!392228))))

(assert (=> bs!1843587 (not (= lambda!392258 lambda!392255))))

(declare-fun bs!1843590 () Bool)

(assert (= bs!1843590 (and d!2162721 b!6905719)))

(assert (=> bs!1843590 (not (= lambda!392258 lambda!392236))))

(assert (=> bs!1843583 (= lambda!392258 lambda!392256)))

(declare-fun bs!1843591 () Bool)

(assert (= bs!1843591 (and d!2162721 b!6905399)))

(assert (=> bs!1843591 (= lambda!392258 lambda!392213)))

(assert (=> bs!1843588 (= (and (= (_1!37045 lt!2467362) s!14361) (= r1!6342 lt!2467374) (= r2!6280 r3!135)) (= lambda!392258 lambda!392211))))

(declare-fun bs!1843592 () Bool)

(assert (= bs!1843592 (and d!2162721 b!6905584)))

(assert (=> bs!1843592 (not (= lambda!392258 lambda!392231))))

(assert (=> bs!1843591 (not (= lambda!392258 lambda!392214))))

(assert (=> d!2162721 true))

(assert (=> d!2162721 true))

(assert (=> d!2162721 true))

(assert (=> d!2162721 (= (isDefined!13357 (findConcatSeparation!3068 r1!6342 r2!6280 Nil!66508 (_1!37045 lt!2467362) (_1!37045 lt!2467362))) (Exists!3883 lambda!392258))))

(declare-fun lt!2467436 () Unit!160486)

(assert (=> d!2162721 (= lt!2467436 (choose!51426 r1!6342 r2!6280 (_1!37045 lt!2467362)))))

(assert (=> d!2162721 (validRegex!8583 r1!6342)))

(assert (=> d!2162721 (= (lemmaFindConcatSeparationEquivalentToExists!2830 r1!6342 r2!6280 (_1!37045 lt!2467362)) lt!2467436)))

(declare-fun bs!1843593 () Bool)

(assert (= bs!1843593 d!2162721))

(assert (=> bs!1843593 m!7622074))

(assert (=> bs!1843593 m!7622074))

(declare-fun m!7622476 () Bool)

(assert (=> bs!1843593 m!7622476))

(declare-fun m!7622478 () Bool)

(assert (=> bs!1843593 m!7622478))

(declare-fun m!7622480 () Bool)

(assert (=> bs!1843593 m!7622480))

(assert (=> bs!1843593 m!7622118))

(assert (=> b!6905399 d!2162721))

(declare-fun b!6905996 () Bool)

(declare-fun e!4158441 () Option!16654)

(assert (=> b!6905996 (= e!4158441 None!16653)))

(declare-fun b!6905997 () Bool)

(declare-fun lt!2467437 () Unit!160486)

(declare-fun lt!2467438 () Unit!160486)

(assert (=> b!6905997 (= lt!2467437 lt!2467438)))

(assert (=> b!6905997 (= (++!14928 (++!14928 Nil!66508 (Cons!66508 (h!72956 (_1!37045 lt!2467362)) Nil!66508)) (t!380375 (_1!37045 lt!2467362))) (_1!37045 lt!2467362))))

(assert (=> b!6905997 (= lt!2467438 (lemmaMoveElementToOtherListKeepsConcatEq!2803 Nil!66508 (h!72956 (_1!37045 lt!2467362)) (t!380375 (_1!37045 lt!2467362)) (_1!37045 lt!2467362)))))

(assert (=> b!6905997 (= e!4158441 (findConcatSeparation!3068 r1!6342 r2!6280 (++!14928 Nil!66508 (Cons!66508 (h!72956 (_1!37045 lt!2467362)) Nil!66508)) (t!380375 (_1!37045 lt!2467362)) (_1!37045 lt!2467362)))))

(declare-fun b!6905998 () Bool)

(declare-fun e!4158438 () Bool)

(declare-fun lt!2467439 () Option!16654)

(assert (=> b!6905998 (= e!4158438 (not (isDefined!13357 lt!2467439)))))

(declare-fun b!6905999 () Bool)

(declare-fun e!4158439 () Option!16654)

(assert (=> b!6905999 (= e!4158439 e!4158441)))

(declare-fun c!1282983 () Bool)

(assert (=> b!6905999 (= c!1282983 ((_ is Nil!66508) (_1!37045 lt!2467362)))))

(declare-fun b!6906000 () Bool)

(declare-fun e!4158440 () Bool)

(assert (=> b!6906000 (= e!4158440 (= (++!14928 (_1!37045 (get!23263 lt!2467439)) (_2!37045 (get!23263 lt!2467439))) (_1!37045 lt!2467362)))))

(declare-fun b!6906001 () Bool)

(declare-fun res!2816244 () Bool)

(assert (=> b!6906001 (=> (not res!2816244) (not e!4158440))))

(assert (=> b!6906001 (= res!2816244 (matchR!9020 r1!6342 (_1!37045 (get!23263 lt!2467439))))))

(declare-fun d!2162723 () Bool)

(assert (=> d!2162723 e!4158438))

(declare-fun res!2816246 () Bool)

(assert (=> d!2162723 (=> res!2816246 e!4158438)))

(assert (=> d!2162723 (= res!2816246 e!4158440)))

(declare-fun res!2816247 () Bool)

(assert (=> d!2162723 (=> (not res!2816247) (not e!4158440))))

(assert (=> d!2162723 (= res!2816247 (isDefined!13357 lt!2467439))))

(assert (=> d!2162723 (= lt!2467439 e!4158439)))

(declare-fun c!1282982 () Bool)

(declare-fun e!4158442 () Bool)

(assert (=> d!2162723 (= c!1282982 e!4158442)))

(declare-fun res!2816248 () Bool)

(assert (=> d!2162723 (=> (not res!2816248) (not e!4158442))))

(assert (=> d!2162723 (= res!2816248 (matchR!9020 r1!6342 Nil!66508))))

(assert (=> d!2162723 (validRegex!8583 r1!6342)))

(assert (=> d!2162723 (= (findConcatSeparation!3068 r1!6342 r2!6280 Nil!66508 (_1!37045 lt!2467362) (_1!37045 lt!2467362)) lt!2467439)))

(declare-fun b!6906002 () Bool)

(assert (=> b!6906002 (= e!4158439 (Some!16653 (tuple2!67485 Nil!66508 (_1!37045 lt!2467362))))))

(declare-fun b!6906003 () Bool)

(assert (=> b!6906003 (= e!4158442 (matchR!9020 r2!6280 (_1!37045 lt!2467362)))))

(declare-fun b!6906004 () Bool)

(declare-fun res!2816245 () Bool)

(assert (=> b!6906004 (=> (not res!2816245) (not e!4158440))))

(assert (=> b!6906004 (= res!2816245 (matchR!9020 r2!6280 (_2!37045 (get!23263 lt!2467439))))))

(assert (= (and d!2162723 res!2816248) b!6906003))

(assert (= (and d!2162723 c!1282982) b!6906002))

(assert (= (and d!2162723 (not c!1282982)) b!6905999))

(assert (= (and b!6905999 c!1282983) b!6905996))

(assert (= (and b!6905999 (not c!1282983)) b!6905997))

(assert (= (and d!2162723 res!2816247) b!6906001))

(assert (= (and b!6906001 res!2816244) b!6906004))

(assert (= (and b!6906004 res!2816245) b!6906000))

(assert (= (and d!2162723 (not res!2816246)) b!6905998))

(declare-fun m!7622482 () Bool)

(assert (=> b!6905997 m!7622482))

(assert (=> b!6905997 m!7622482))

(declare-fun m!7622484 () Bool)

(assert (=> b!6905997 m!7622484))

(declare-fun m!7622486 () Bool)

(assert (=> b!6905997 m!7622486))

(assert (=> b!6905997 m!7622482))

(declare-fun m!7622488 () Bool)

(assert (=> b!6905997 m!7622488))

(declare-fun m!7622490 () Bool)

(assert (=> d!2162723 m!7622490))

(declare-fun m!7622492 () Bool)

(assert (=> d!2162723 m!7622492))

(assert (=> d!2162723 m!7622118))

(declare-fun m!7622494 () Bool)

(assert (=> b!6906003 m!7622494))

(declare-fun m!7622496 () Bool)

(assert (=> b!6906000 m!7622496))

(declare-fun m!7622498 () Bool)

(assert (=> b!6906000 m!7622498))

(assert (=> b!6905998 m!7622490))

(assert (=> b!6906004 m!7622496))

(declare-fun m!7622500 () Bool)

(assert (=> b!6906004 m!7622500))

(assert (=> b!6906001 m!7622496))

(declare-fun m!7622502 () Bool)

(assert (=> b!6906001 m!7622502))

(assert (=> b!6905399 d!2162723))

(declare-fun b!6906005 () Bool)

(declare-fun res!2816252 () Bool)

(declare-fun e!4158445 () Bool)

(assert (=> b!6906005 (=> res!2816252 e!4158445)))

(assert (=> b!6906005 (= res!2816252 (not ((_ is ElementMatch!16875) r1!6342)))))

(declare-fun e!4158443 () Bool)

(assert (=> b!6906005 (= e!4158443 e!4158445)))

(declare-fun b!6906006 () Bool)

(declare-fun e!4158444 () Bool)

(assert (=> b!6906006 (= e!4158445 e!4158444)))

(declare-fun res!2816251 () Bool)

(assert (=> b!6906006 (=> (not res!2816251) (not e!4158444))))

(declare-fun lt!2467440 () Bool)

(assert (=> b!6906006 (= res!2816251 (not lt!2467440))))

(declare-fun b!6906007 () Bool)

(declare-fun e!4158448 () Bool)

(assert (=> b!6906007 (= e!4158448 (not (= (head!13848 (_1!37045 lt!2467361)) (c!1282865 r1!6342))))))

(declare-fun b!6906008 () Bool)

(declare-fun e!4158449 () Bool)

(assert (=> b!6906008 (= e!4158449 (matchR!9020 (derivativeStep!5395 r1!6342 (head!13848 (_1!37045 lt!2467361))) (tail!12900 (_1!37045 lt!2467361))))))

(declare-fun bm!627967 () Bool)

(declare-fun call!627972 () Bool)

(assert (=> bm!627967 (= call!627972 (isEmpty!38746 (_1!37045 lt!2467361)))))

(declare-fun b!6906009 () Bool)

(assert (=> b!6906009 (= e!4158443 (not lt!2467440))))

(declare-fun d!2162725 () Bool)

(declare-fun e!4158446 () Bool)

(assert (=> d!2162725 e!4158446))

(declare-fun c!1282984 () Bool)

(assert (=> d!2162725 (= c!1282984 ((_ is EmptyExpr!16875) r1!6342))))

(assert (=> d!2162725 (= lt!2467440 e!4158449)))

(declare-fun c!1282985 () Bool)

(assert (=> d!2162725 (= c!1282985 (isEmpty!38746 (_1!37045 lt!2467361)))))

(assert (=> d!2162725 (validRegex!8583 r1!6342)))

(assert (=> d!2162725 (= (matchR!9020 r1!6342 (_1!37045 lt!2467361)) lt!2467440)))

(declare-fun b!6906010 () Bool)

(assert (=> b!6906010 (= e!4158446 e!4158443)))

(declare-fun c!1282986 () Bool)

(assert (=> b!6906010 (= c!1282986 ((_ is EmptyLang!16875) r1!6342))))

(declare-fun b!6906011 () Bool)

(declare-fun res!2816253 () Bool)

(assert (=> b!6906011 (=> res!2816253 e!4158448)))

(assert (=> b!6906011 (= res!2816253 (not (isEmpty!38746 (tail!12900 (_1!37045 lt!2467361)))))))

(declare-fun b!6906012 () Bool)

(assert (=> b!6906012 (= e!4158444 e!4158448)))

(declare-fun res!2816256 () Bool)

(assert (=> b!6906012 (=> res!2816256 e!4158448)))

(assert (=> b!6906012 (= res!2816256 call!627972)))

(declare-fun b!6906013 () Bool)

(assert (=> b!6906013 (= e!4158449 (nullable!6716 r1!6342))))

(declare-fun b!6906014 () Bool)

(declare-fun res!2816250 () Bool)

(assert (=> b!6906014 (=> res!2816250 e!4158445)))

(declare-fun e!4158447 () Bool)

(assert (=> b!6906014 (= res!2816250 e!4158447)))

(declare-fun res!2816249 () Bool)

(assert (=> b!6906014 (=> (not res!2816249) (not e!4158447))))

(assert (=> b!6906014 (= res!2816249 lt!2467440)))

(declare-fun b!6906015 () Bool)

(assert (=> b!6906015 (= e!4158447 (= (head!13848 (_1!37045 lt!2467361)) (c!1282865 r1!6342)))))

(declare-fun b!6906016 () Bool)

(declare-fun res!2816254 () Bool)

(assert (=> b!6906016 (=> (not res!2816254) (not e!4158447))))

(assert (=> b!6906016 (= res!2816254 (isEmpty!38746 (tail!12900 (_1!37045 lt!2467361))))))

(declare-fun b!6906017 () Bool)

(assert (=> b!6906017 (= e!4158446 (= lt!2467440 call!627972))))

(declare-fun b!6906018 () Bool)

(declare-fun res!2816255 () Bool)

(assert (=> b!6906018 (=> (not res!2816255) (not e!4158447))))

(assert (=> b!6906018 (= res!2816255 (not call!627972))))

(assert (= (and d!2162725 c!1282985) b!6906013))

(assert (= (and d!2162725 (not c!1282985)) b!6906008))

(assert (= (and d!2162725 c!1282984) b!6906017))

(assert (= (and d!2162725 (not c!1282984)) b!6906010))

(assert (= (and b!6906010 c!1282986) b!6906009))

(assert (= (and b!6906010 (not c!1282986)) b!6906005))

(assert (= (and b!6906005 (not res!2816252)) b!6906014))

(assert (= (and b!6906014 res!2816249) b!6906018))

(assert (= (and b!6906018 res!2816255) b!6906016))

(assert (= (and b!6906016 res!2816254) b!6906015))

(assert (= (and b!6906014 (not res!2816250)) b!6906006))

(assert (= (and b!6906006 res!2816251) b!6906012))

(assert (= (and b!6906012 (not res!2816256)) b!6906011))

(assert (= (and b!6906011 (not res!2816253)) b!6906007))

(assert (= (or b!6906017 b!6906018 b!6906012) bm!627967))

(declare-fun m!7622504 () Bool)

(assert (=> b!6906008 m!7622504))

(assert (=> b!6906008 m!7622504))

(declare-fun m!7622506 () Bool)

(assert (=> b!6906008 m!7622506))

(declare-fun m!7622508 () Bool)

(assert (=> b!6906008 m!7622508))

(assert (=> b!6906008 m!7622506))

(assert (=> b!6906008 m!7622508))

(declare-fun m!7622510 () Bool)

(assert (=> b!6906008 m!7622510))

(declare-fun m!7622512 () Bool)

(assert (=> d!2162725 m!7622512))

(assert (=> d!2162725 m!7622118))

(assert (=> b!6906007 m!7622504))

(assert (=> b!6906016 m!7622508))

(assert (=> b!6906016 m!7622508))

(declare-fun m!7622514 () Bool)

(assert (=> b!6906016 m!7622514))

(declare-fun m!7622516 () Bool)

(assert (=> b!6906013 m!7622516))

(assert (=> b!6906015 m!7622504))

(assert (=> b!6906011 m!7622508))

(assert (=> b!6906011 m!7622508))

(assert (=> b!6906011 m!7622514))

(assert (=> bm!627967 m!7622512))

(assert (=> b!6905399 d!2162725))

(declare-fun b!6906019 () Bool)

(declare-fun res!2816260 () Bool)

(declare-fun e!4158452 () Bool)

(assert (=> b!6906019 (=> res!2816260 e!4158452)))

(assert (=> b!6906019 (= res!2816260 (not ((_ is ElementMatch!16875) r3!135)))))

(declare-fun e!4158450 () Bool)

(assert (=> b!6906019 (= e!4158450 e!4158452)))

(declare-fun b!6906020 () Bool)

(declare-fun e!4158451 () Bool)

(assert (=> b!6906020 (= e!4158452 e!4158451)))

(declare-fun res!2816259 () Bool)

(assert (=> b!6906020 (=> (not res!2816259) (not e!4158451))))

(declare-fun lt!2467441 () Bool)

(assert (=> b!6906020 (= res!2816259 (not lt!2467441))))

(declare-fun b!6906021 () Bool)

(declare-fun e!4158455 () Bool)

(assert (=> b!6906021 (= e!4158455 (not (= (head!13848 (_2!37045 lt!2467362)) (c!1282865 r3!135))))))

(declare-fun b!6906022 () Bool)

(declare-fun e!4158456 () Bool)

(assert (=> b!6906022 (= e!4158456 (matchR!9020 (derivativeStep!5395 r3!135 (head!13848 (_2!37045 lt!2467362))) (tail!12900 (_2!37045 lt!2467362))))))

(declare-fun bm!627968 () Bool)

(declare-fun call!627973 () Bool)

(assert (=> bm!627968 (= call!627973 (isEmpty!38746 (_2!37045 lt!2467362)))))

(declare-fun b!6906023 () Bool)

(assert (=> b!6906023 (= e!4158450 (not lt!2467441))))

(declare-fun d!2162727 () Bool)

(declare-fun e!4158453 () Bool)

(assert (=> d!2162727 e!4158453))

(declare-fun c!1282987 () Bool)

(assert (=> d!2162727 (= c!1282987 ((_ is EmptyExpr!16875) r3!135))))

(assert (=> d!2162727 (= lt!2467441 e!4158456)))

(declare-fun c!1282988 () Bool)

(assert (=> d!2162727 (= c!1282988 (isEmpty!38746 (_2!37045 lt!2467362)))))

(assert (=> d!2162727 (validRegex!8583 r3!135)))

(assert (=> d!2162727 (= (matchR!9020 r3!135 (_2!37045 lt!2467362)) lt!2467441)))

(declare-fun b!6906024 () Bool)

(assert (=> b!6906024 (= e!4158453 e!4158450)))

(declare-fun c!1282989 () Bool)

(assert (=> b!6906024 (= c!1282989 ((_ is EmptyLang!16875) r3!135))))

(declare-fun b!6906025 () Bool)

(declare-fun res!2816261 () Bool)

(assert (=> b!6906025 (=> res!2816261 e!4158455)))

(assert (=> b!6906025 (= res!2816261 (not (isEmpty!38746 (tail!12900 (_2!37045 lt!2467362)))))))

(declare-fun b!6906026 () Bool)

(assert (=> b!6906026 (= e!4158451 e!4158455)))

(declare-fun res!2816264 () Bool)

(assert (=> b!6906026 (=> res!2816264 e!4158455)))

(assert (=> b!6906026 (= res!2816264 call!627973)))

(declare-fun b!6906027 () Bool)

(assert (=> b!6906027 (= e!4158456 (nullable!6716 r3!135))))

(declare-fun b!6906028 () Bool)

(declare-fun res!2816258 () Bool)

(assert (=> b!6906028 (=> res!2816258 e!4158452)))

(declare-fun e!4158454 () Bool)

(assert (=> b!6906028 (= res!2816258 e!4158454)))

(declare-fun res!2816257 () Bool)

(assert (=> b!6906028 (=> (not res!2816257) (not e!4158454))))

(assert (=> b!6906028 (= res!2816257 lt!2467441)))

(declare-fun b!6906029 () Bool)

(assert (=> b!6906029 (= e!4158454 (= (head!13848 (_2!37045 lt!2467362)) (c!1282865 r3!135)))))

(declare-fun b!6906030 () Bool)

(declare-fun res!2816262 () Bool)

(assert (=> b!6906030 (=> (not res!2816262) (not e!4158454))))

(assert (=> b!6906030 (= res!2816262 (isEmpty!38746 (tail!12900 (_2!37045 lt!2467362))))))

(declare-fun b!6906031 () Bool)

(assert (=> b!6906031 (= e!4158453 (= lt!2467441 call!627973))))

(declare-fun b!6906032 () Bool)

(declare-fun res!2816263 () Bool)

(assert (=> b!6906032 (=> (not res!2816263) (not e!4158454))))

(assert (=> b!6906032 (= res!2816263 (not call!627973))))

(assert (= (and d!2162727 c!1282988) b!6906027))

(assert (= (and d!2162727 (not c!1282988)) b!6906022))

(assert (= (and d!2162727 c!1282987) b!6906031))

(assert (= (and d!2162727 (not c!1282987)) b!6906024))

(assert (= (and b!6906024 c!1282989) b!6906023))

(assert (= (and b!6906024 (not c!1282989)) b!6906019))

(assert (= (and b!6906019 (not res!2816260)) b!6906028))

(assert (= (and b!6906028 res!2816257) b!6906032))

(assert (= (and b!6906032 res!2816263) b!6906030))

(assert (= (and b!6906030 res!2816262) b!6906029))

(assert (= (and b!6906028 (not res!2816258)) b!6906020))

(assert (= (and b!6906020 res!2816259) b!6906026))

(assert (= (and b!6906026 (not res!2816264)) b!6906025))

(assert (= (and b!6906025 (not res!2816261)) b!6906021))

(assert (= (or b!6906031 b!6906032 b!6906026) bm!627968))

(declare-fun m!7622518 () Bool)

(assert (=> b!6906022 m!7622518))

(assert (=> b!6906022 m!7622518))

(declare-fun m!7622520 () Bool)

(assert (=> b!6906022 m!7622520))

(declare-fun m!7622522 () Bool)

(assert (=> b!6906022 m!7622522))

(assert (=> b!6906022 m!7622520))

(assert (=> b!6906022 m!7622522))

(declare-fun m!7622524 () Bool)

(assert (=> b!6906022 m!7622524))

(declare-fun m!7622526 () Bool)

(assert (=> d!2162727 m!7622526))

(assert (=> d!2162727 m!7622122))

(assert (=> b!6906021 m!7622518))

(assert (=> b!6906030 m!7622522))

(assert (=> b!6906030 m!7622522))

(declare-fun m!7622528 () Bool)

(assert (=> b!6906030 m!7622528))

(declare-fun m!7622530 () Bool)

(assert (=> b!6906027 m!7622530))

(assert (=> b!6906029 m!7622518))

(assert (=> b!6906025 m!7622522))

(assert (=> b!6906025 m!7622522))

(assert (=> b!6906025 m!7622528))

(assert (=> bm!627968 m!7622526))

(assert (=> b!6905409 d!2162727))

(declare-fun b!6906044 () Bool)

(declare-fun e!4158459 () Bool)

(declare-fun tp!1901502 () Bool)

(declare-fun tp!1901499 () Bool)

(assert (=> b!6906044 (= e!4158459 (and tp!1901502 tp!1901499))))

(assert (=> b!6905406 (= tp!1901398 e!4158459)))

(declare-fun b!6906043 () Bool)

(assert (=> b!6906043 (= e!4158459 tp_is_empty!42975)))

(declare-fun b!6906046 () Bool)

(declare-fun tp!1901498 () Bool)

(declare-fun tp!1901501 () Bool)

(assert (=> b!6906046 (= e!4158459 (and tp!1901498 tp!1901501))))

(declare-fun b!6906045 () Bool)

(declare-fun tp!1901500 () Bool)

(assert (=> b!6906045 (= e!4158459 tp!1901500)))

(assert (= (and b!6905406 ((_ is ElementMatch!16875) (reg!17204 r1!6342))) b!6906043))

(assert (= (and b!6905406 ((_ is Concat!25720) (reg!17204 r1!6342))) b!6906044))

(assert (= (and b!6905406 ((_ is Star!16875) (reg!17204 r1!6342))) b!6906045))

(assert (= (and b!6905406 ((_ is Union!16875) (reg!17204 r1!6342))) b!6906046))

(declare-fun b!6906048 () Bool)

(declare-fun e!4158460 () Bool)

(declare-fun tp!1901507 () Bool)

(declare-fun tp!1901504 () Bool)

(assert (=> b!6906048 (= e!4158460 (and tp!1901507 tp!1901504))))

(assert (=> b!6905411 (= tp!1901387 e!4158460)))

(declare-fun b!6906047 () Bool)

(assert (=> b!6906047 (= e!4158460 tp_is_empty!42975)))

(declare-fun b!6906050 () Bool)

(declare-fun tp!1901503 () Bool)

(declare-fun tp!1901506 () Bool)

(assert (=> b!6906050 (= e!4158460 (and tp!1901503 tp!1901506))))

(declare-fun b!6906049 () Bool)

(declare-fun tp!1901505 () Bool)

(assert (=> b!6906049 (= e!4158460 tp!1901505)))

(assert (= (and b!6905411 ((_ is ElementMatch!16875) (regOne!34263 r1!6342))) b!6906047))

(assert (= (and b!6905411 ((_ is Concat!25720) (regOne!34263 r1!6342))) b!6906048))

(assert (= (and b!6905411 ((_ is Star!16875) (regOne!34263 r1!6342))) b!6906049))

(assert (= (and b!6905411 ((_ is Union!16875) (regOne!34263 r1!6342))) b!6906050))

(declare-fun b!6906052 () Bool)

(declare-fun e!4158461 () Bool)

(declare-fun tp!1901512 () Bool)

(declare-fun tp!1901509 () Bool)

(assert (=> b!6906052 (= e!4158461 (and tp!1901512 tp!1901509))))

(assert (=> b!6905411 (= tp!1901391 e!4158461)))

(declare-fun b!6906051 () Bool)

(assert (=> b!6906051 (= e!4158461 tp_is_empty!42975)))

(declare-fun b!6906054 () Bool)

(declare-fun tp!1901508 () Bool)

(declare-fun tp!1901511 () Bool)

(assert (=> b!6906054 (= e!4158461 (and tp!1901508 tp!1901511))))

(declare-fun b!6906053 () Bool)

(declare-fun tp!1901510 () Bool)

(assert (=> b!6906053 (= e!4158461 tp!1901510)))

(assert (= (and b!6905411 ((_ is ElementMatch!16875) (regTwo!34263 r1!6342))) b!6906051))

(assert (= (and b!6905411 ((_ is Concat!25720) (regTwo!34263 r1!6342))) b!6906052))

(assert (= (and b!6905411 ((_ is Star!16875) (regTwo!34263 r1!6342))) b!6906053))

(assert (= (and b!6905411 ((_ is Union!16875) (regTwo!34263 r1!6342))) b!6906054))

(declare-fun b!6906056 () Bool)

(declare-fun e!4158462 () Bool)

(declare-fun tp!1901517 () Bool)

(declare-fun tp!1901514 () Bool)

(assert (=> b!6906056 (= e!4158462 (and tp!1901517 tp!1901514))))

(assert (=> b!6905400 (= tp!1901394 e!4158462)))

(declare-fun b!6906055 () Bool)

(assert (=> b!6906055 (= e!4158462 tp_is_empty!42975)))

(declare-fun b!6906058 () Bool)

(declare-fun tp!1901513 () Bool)

(declare-fun tp!1901516 () Bool)

(assert (=> b!6906058 (= e!4158462 (and tp!1901513 tp!1901516))))

(declare-fun b!6906057 () Bool)

(declare-fun tp!1901515 () Bool)

(assert (=> b!6906057 (= e!4158462 tp!1901515)))

(assert (= (and b!6905400 ((_ is ElementMatch!16875) (regOne!34263 r2!6280))) b!6906055))

(assert (= (and b!6905400 ((_ is Concat!25720) (regOne!34263 r2!6280))) b!6906056))

(assert (= (and b!6905400 ((_ is Star!16875) (regOne!34263 r2!6280))) b!6906057))

(assert (= (and b!6905400 ((_ is Union!16875) (regOne!34263 r2!6280))) b!6906058))

(declare-fun b!6906060 () Bool)

(declare-fun e!4158463 () Bool)

(declare-fun tp!1901522 () Bool)

(declare-fun tp!1901519 () Bool)

(assert (=> b!6906060 (= e!4158463 (and tp!1901522 tp!1901519))))

(assert (=> b!6905400 (= tp!1901386 e!4158463)))

(declare-fun b!6906059 () Bool)

(assert (=> b!6906059 (= e!4158463 tp_is_empty!42975)))

(declare-fun b!6906062 () Bool)

(declare-fun tp!1901518 () Bool)

(declare-fun tp!1901521 () Bool)

(assert (=> b!6906062 (= e!4158463 (and tp!1901518 tp!1901521))))

(declare-fun b!6906061 () Bool)

(declare-fun tp!1901520 () Bool)

(assert (=> b!6906061 (= e!4158463 tp!1901520)))

(assert (= (and b!6905400 ((_ is ElementMatch!16875) (regTwo!34263 r2!6280))) b!6906059))

(assert (= (and b!6905400 ((_ is Concat!25720) (regTwo!34263 r2!6280))) b!6906060))

(assert (= (and b!6905400 ((_ is Star!16875) (regTwo!34263 r2!6280))) b!6906061))

(assert (= (and b!6905400 ((_ is Union!16875) (regTwo!34263 r2!6280))) b!6906062))

(declare-fun b!6906064 () Bool)

(declare-fun e!4158464 () Bool)

(declare-fun tp!1901527 () Bool)

(declare-fun tp!1901524 () Bool)

(assert (=> b!6906064 (= e!4158464 (and tp!1901527 tp!1901524))))

(assert (=> b!6905396 (= tp!1901385 e!4158464)))

(declare-fun b!6906063 () Bool)

(assert (=> b!6906063 (= e!4158464 tp_is_empty!42975)))

(declare-fun b!6906066 () Bool)

(declare-fun tp!1901523 () Bool)

(declare-fun tp!1901526 () Bool)

(assert (=> b!6906066 (= e!4158464 (and tp!1901523 tp!1901526))))

(declare-fun b!6906065 () Bool)

(declare-fun tp!1901525 () Bool)

(assert (=> b!6906065 (= e!4158464 tp!1901525)))

(assert (= (and b!6905396 ((_ is ElementMatch!16875) (regOne!34262 r1!6342))) b!6906063))

(assert (= (and b!6905396 ((_ is Concat!25720) (regOne!34262 r1!6342))) b!6906064))

(assert (= (and b!6905396 ((_ is Star!16875) (regOne!34262 r1!6342))) b!6906065))

(assert (= (and b!6905396 ((_ is Union!16875) (regOne!34262 r1!6342))) b!6906066))

(declare-fun b!6906068 () Bool)

(declare-fun e!4158465 () Bool)

(declare-fun tp!1901532 () Bool)

(declare-fun tp!1901529 () Bool)

(assert (=> b!6906068 (= e!4158465 (and tp!1901532 tp!1901529))))

(assert (=> b!6905396 (= tp!1901395 e!4158465)))

(declare-fun b!6906067 () Bool)

(assert (=> b!6906067 (= e!4158465 tp_is_empty!42975)))

(declare-fun b!6906070 () Bool)

(declare-fun tp!1901528 () Bool)

(declare-fun tp!1901531 () Bool)

(assert (=> b!6906070 (= e!4158465 (and tp!1901528 tp!1901531))))

(declare-fun b!6906069 () Bool)

(declare-fun tp!1901530 () Bool)

(assert (=> b!6906069 (= e!4158465 tp!1901530)))

(assert (= (and b!6905396 ((_ is ElementMatch!16875) (regTwo!34262 r1!6342))) b!6906067))

(assert (= (and b!6905396 ((_ is Concat!25720) (regTwo!34262 r1!6342))) b!6906068))

(assert (= (and b!6905396 ((_ is Star!16875) (regTwo!34262 r1!6342))) b!6906069))

(assert (= (and b!6905396 ((_ is Union!16875) (regTwo!34262 r1!6342))) b!6906070))

(declare-fun b!6906072 () Bool)

(declare-fun e!4158466 () Bool)

(declare-fun tp!1901537 () Bool)

(declare-fun tp!1901534 () Bool)

(assert (=> b!6906072 (= e!4158466 (and tp!1901537 tp!1901534))))

(assert (=> b!6905398 (= tp!1901399 e!4158466)))

(declare-fun b!6906071 () Bool)

(assert (=> b!6906071 (= e!4158466 tp_is_empty!42975)))

(declare-fun b!6906074 () Bool)

(declare-fun tp!1901533 () Bool)

(declare-fun tp!1901536 () Bool)

(assert (=> b!6906074 (= e!4158466 (and tp!1901533 tp!1901536))))

(declare-fun b!6906073 () Bool)

(declare-fun tp!1901535 () Bool)

(assert (=> b!6906073 (= e!4158466 tp!1901535)))

(assert (= (and b!6905398 ((_ is ElementMatch!16875) (regOne!34262 r2!6280))) b!6906071))

(assert (= (and b!6905398 ((_ is Concat!25720) (regOne!34262 r2!6280))) b!6906072))

(assert (= (and b!6905398 ((_ is Star!16875) (regOne!34262 r2!6280))) b!6906073))

(assert (= (and b!6905398 ((_ is Union!16875) (regOne!34262 r2!6280))) b!6906074))

(declare-fun b!6906076 () Bool)

(declare-fun e!4158467 () Bool)

(declare-fun tp!1901542 () Bool)

(declare-fun tp!1901539 () Bool)

(assert (=> b!6906076 (= e!4158467 (and tp!1901542 tp!1901539))))

(assert (=> b!6905398 (= tp!1901397 e!4158467)))

(declare-fun b!6906075 () Bool)

(assert (=> b!6906075 (= e!4158467 tp_is_empty!42975)))

(declare-fun b!6906078 () Bool)

(declare-fun tp!1901538 () Bool)

(declare-fun tp!1901541 () Bool)

(assert (=> b!6906078 (= e!4158467 (and tp!1901538 tp!1901541))))

(declare-fun b!6906077 () Bool)

(declare-fun tp!1901540 () Bool)

(assert (=> b!6906077 (= e!4158467 tp!1901540)))

(assert (= (and b!6905398 ((_ is ElementMatch!16875) (regTwo!34262 r2!6280))) b!6906075))

(assert (= (and b!6905398 ((_ is Concat!25720) (regTwo!34262 r2!6280))) b!6906076))

(assert (= (and b!6905398 ((_ is Star!16875) (regTwo!34262 r2!6280))) b!6906077))

(assert (= (and b!6905398 ((_ is Union!16875) (regTwo!34262 r2!6280))) b!6906078))

(declare-fun b!6906080 () Bool)

(declare-fun e!4158468 () Bool)

(declare-fun tp!1901547 () Bool)

(declare-fun tp!1901544 () Bool)

(assert (=> b!6906080 (= e!4158468 (and tp!1901547 tp!1901544))))

(assert (=> b!6905403 (= tp!1901388 e!4158468)))

(declare-fun b!6906079 () Bool)

(assert (=> b!6906079 (= e!4158468 tp_is_empty!42975)))

(declare-fun b!6906082 () Bool)

(declare-fun tp!1901543 () Bool)

(declare-fun tp!1901546 () Bool)

(assert (=> b!6906082 (= e!4158468 (and tp!1901543 tp!1901546))))

(declare-fun b!6906081 () Bool)

(declare-fun tp!1901545 () Bool)

(assert (=> b!6906081 (= e!4158468 tp!1901545)))

(assert (= (and b!6905403 ((_ is ElementMatch!16875) (reg!17204 r3!135))) b!6906079))

(assert (= (and b!6905403 ((_ is Concat!25720) (reg!17204 r3!135))) b!6906080))

(assert (= (and b!6905403 ((_ is Star!16875) (reg!17204 r3!135))) b!6906081))

(assert (= (and b!6905403 ((_ is Union!16875) (reg!17204 r3!135))) b!6906082))

(declare-fun b!6906084 () Bool)

(declare-fun e!4158469 () Bool)

(declare-fun tp!1901552 () Bool)

(declare-fun tp!1901549 () Bool)

(assert (=> b!6906084 (= e!4158469 (and tp!1901552 tp!1901549))))

(assert (=> b!6905408 (= tp!1901392 e!4158469)))

(declare-fun b!6906083 () Bool)

(assert (=> b!6906083 (= e!4158469 tp_is_empty!42975)))

(declare-fun b!6906086 () Bool)

(declare-fun tp!1901548 () Bool)

(declare-fun tp!1901551 () Bool)

(assert (=> b!6906086 (= e!4158469 (and tp!1901548 tp!1901551))))

(declare-fun b!6906085 () Bool)

(declare-fun tp!1901550 () Bool)

(assert (=> b!6906085 (= e!4158469 tp!1901550)))

(assert (= (and b!6905408 ((_ is ElementMatch!16875) (reg!17204 r2!6280))) b!6906083))

(assert (= (and b!6905408 ((_ is Concat!25720) (reg!17204 r2!6280))) b!6906084))

(assert (= (and b!6905408 ((_ is Star!16875) (reg!17204 r2!6280))) b!6906085))

(assert (= (and b!6905408 ((_ is Union!16875) (reg!17204 r2!6280))) b!6906086))

(declare-fun b!6906088 () Bool)

(declare-fun e!4158470 () Bool)

(declare-fun tp!1901557 () Bool)

(declare-fun tp!1901554 () Bool)

(assert (=> b!6906088 (= e!4158470 (and tp!1901557 tp!1901554))))

(assert (=> b!6905394 (= tp!1901396 e!4158470)))

(declare-fun b!6906087 () Bool)

(assert (=> b!6906087 (= e!4158470 tp_is_empty!42975)))

(declare-fun b!6906090 () Bool)

(declare-fun tp!1901553 () Bool)

(declare-fun tp!1901556 () Bool)

(assert (=> b!6906090 (= e!4158470 (and tp!1901553 tp!1901556))))

(declare-fun b!6906089 () Bool)

(declare-fun tp!1901555 () Bool)

(assert (=> b!6906089 (= e!4158470 tp!1901555)))

(assert (= (and b!6905394 ((_ is ElementMatch!16875) (regOne!34263 r3!135))) b!6906087))

(assert (= (and b!6905394 ((_ is Concat!25720) (regOne!34263 r3!135))) b!6906088))

(assert (= (and b!6905394 ((_ is Star!16875) (regOne!34263 r3!135))) b!6906089))

(assert (= (and b!6905394 ((_ is Union!16875) (regOne!34263 r3!135))) b!6906090))

(declare-fun b!6906092 () Bool)

(declare-fun e!4158471 () Bool)

(declare-fun tp!1901562 () Bool)

(declare-fun tp!1901559 () Bool)

(assert (=> b!6906092 (= e!4158471 (and tp!1901562 tp!1901559))))

(assert (=> b!6905394 (= tp!1901384 e!4158471)))

(declare-fun b!6906091 () Bool)

(assert (=> b!6906091 (= e!4158471 tp_is_empty!42975)))

(declare-fun b!6906094 () Bool)

(declare-fun tp!1901558 () Bool)

(declare-fun tp!1901561 () Bool)

(assert (=> b!6906094 (= e!4158471 (and tp!1901558 tp!1901561))))

(declare-fun b!6906093 () Bool)

(declare-fun tp!1901560 () Bool)

(assert (=> b!6906093 (= e!4158471 tp!1901560)))

(assert (= (and b!6905394 ((_ is ElementMatch!16875) (regTwo!34263 r3!135))) b!6906091))

(assert (= (and b!6905394 ((_ is Concat!25720) (regTwo!34263 r3!135))) b!6906092))

(assert (= (and b!6905394 ((_ is Star!16875) (regTwo!34263 r3!135))) b!6906093))

(assert (= (and b!6905394 ((_ is Union!16875) (regTwo!34263 r3!135))) b!6906094))

(declare-fun b!6906099 () Bool)

(declare-fun e!4158474 () Bool)

(declare-fun tp!1901565 () Bool)

(assert (=> b!6906099 (= e!4158474 (and tp_is_empty!42975 tp!1901565))))

(assert (=> b!6905404 (= tp!1901389 e!4158474)))

(assert (= (and b!6905404 ((_ is Cons!66508) (t!380375 s!14361))) b!6906099))

(declare-fun b!6906101 () Bool)

(declare-fun e!4158475 () Bool)

(declare-fun tp!1901570 () Bool)

(declare-fun tp!1901567 () Bool)

(assert (=> b!6906101 (= e!4158475 (and tp!1901570 tp!1901567))))

(assert (=> b!6905393 (= tp!1901393 e!4158475)))

(declare-fun b!6906100 () Bool)

(assert (=> b!6906100 (= e!4158475 tp_is_empty!42975)))

(declare-fun b!6906103 () Bool)

(declare-fun tp!1901566 () Bool)

(declare-fun tp!1901569 () Bool)

(assert (=> b!6906103 (= e!4158475 (and tp!1901566 tp!1901569))))

(declare-fun b!6906102 () Bool)

(declare-fun tp!1901568 () Bool)

(assert (=> b!6906102 (= e!4158475 tp!1901568)))

(assert (= (and b!6905393 ((_ is ElementMatch!16875) (regOne!34262 r3!135))) b!6906100))

(assert (= (and b!6905393 ((_ is Concat!25720) (regOne!34262 r3!135))) b!6906101))

(assert (= (and b!6905393 ((_ is Star!16875) (regOne!34262 r3!135))) b!6906102))

(assert (= (and b!6905393 ((_ is Union!16875) (regOne!34262 r3!135))) b!6906103))

(declare-fun b!6906105 () Bool)

(declare-fun e!4158476 () Bool)

(declare-fun tp!1901575 () Bool)

(declare-fun tp!1901572 () Bool)

(assert (=> b!6906105 (= e!4158476 (and tp!1901575 tp!1901572))))

(assert (=> b!6905393 (= tp!1901390 e!4158476)))

(declare-fun b!6906104 () Bool)

(assert (=> b!6906104 (= e!4158476 tp_is_empty!42975)))

(declare-fun b!6906107 () Bool)

(declare-fun tp!1901571 () Bool)

(declare-fun tp!1901574 () Bool)

(assert (=> b!6906107 (= e!4158476 (and tp!1901571 tp!1901574))))

(declare-fun b!6906106 () Bool)

(declare-fun tp!1901573 () Bool)

(assert (=> b!6906106 (= e!4158476 tp!1901573)))

(assert (= (and b!6905393 ((_ is ElementMatch!16875) (regTwo!34262 r3!135))) b!6906104))

(assert (= (and b!6905393 ((_ is Concat!25720) (regTwo!34262 r3!135))) b!6906105))

(assert (= (and b!6905393 ((_ is Star!16875) (regTwo!34262 r3!135))) b!6906106))

(assert (= (and b!6905393 ((_ is Union!16875) (regTwo!34262 r3!135))) b!6906107))

(check-sat (not b!6905685) (not b!6905992) (not b!6906044) (not b!6905919) (not b!6905687) (not b!6906007) (not b!6906076) (not b!6906030) (not d!2162715) (not d!2162687) (not b!6906016) (not bm!627937) (not b!6906101) (not b!6906070) (not b!6906085) (not b!6906102) (not b!6906064) (not b!6905911) (not d!2162707) (not d!2162721) (not b!6906092) (not b!6906081) (not b!6905942) (not b!6906058) (not bm!627963) (not b!6906077) (not b!6905680) (not bm!627927) (not b!6906073) (not b!6905688) (not d!2162705) (not b!6906003) (not b!6906048) (not b!6905917) (not d!2162681) (not b!6906082) (not bm!627968) (not b!6906054) (not bm!627959) (not b!6905586) (not d!2162675) (not b!6905935) (not b!6905679) (not b!6906106) (not b!6905579) (not b!6906068) (not d!2162713) (not b!6906105) (not b!6905943) (not b!6906093) (not b!6906000) (not d!2162699) (not b!6905915) (not b!6905997) (not b!6906015) (not b!6905912) (not b!6905940) (not b!6905925) (not b!6905991) (not b!6905723) (not b!6906086) (not bm!627945) (not d!2162641) (not b!6905783) (not b!6906069) (not b!6905716) (not b!6906053) (not b!6905776) (not bm!627960) (not bm!627965) (not d!2162727) (not b!6906001) (not bm!627928) (not b!6905934) (not b!6906074) (not b!6906025) (not bm!627956) (not b!6905989) (not b!6905893) (not bm!627955) (not bm!627967) (not b!6905995) (not b!6906099) (not b!6905948) (not b!6906021) (not bm!627939) (not b!6905784) (not b!6905683) (not b!6906072) (not d!2162693) (not d!2162725) (not b!6906029) (not b!6905775) (not b!6906084) (not b!6905781) (not d!2162691) (not b!6906022) (not b!6906089) (not bm!627966) (not b!6906004) (not b!6906107) (not b!6906090) (not b!6906103) (not b!6906061) (not b!6906045) (not b!6905998) (not b!6906078) (not d!2162695) (not b!6906062) (not d!2162711) (not b!6906052) (not b!6906008) (not b!6906050) (not b!6905779) (not b!6905994) (not d!2162719) (not b!6905920) (not b!6906065) (not b!6906066) (not b!6906094) (not d!2162663) (not bm!627940) (not bm!627962) (not b!6905902) (not b!6905988) (not d!2162701) (not d!2162723) (not b!6906011) (not b!6906080) (not b!6906046) (not bm!627964) (not b!6906027) (not b!6905938) (not b!6906088) (not b!6906057) (not d!2162703) (not b!6906056) (not b!6906060) tp_is_empty!42975 (not b!6906013) (not bm!627958) (not b!6906049) (not b!6905955))
(check-sat)
