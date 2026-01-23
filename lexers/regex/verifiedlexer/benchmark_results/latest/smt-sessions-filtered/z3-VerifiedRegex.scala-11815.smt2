; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664970 () Bool)

(assert start!664970)

(declare-fun b!6906284 () Bool)

(assert (=> b!6906284 true))

(assert (=> b!6906284 true))

(assert (=> b!6906284 true))

(declare-fun lambda!392288 () Int)

(declare-fun lambda!392287 () Int)

(assert (=> b!6906284 (not (= lambda!392288 lambda!392287))))

(assert (=> b!6906284 true))

(assert (=> b!6906284 true))

(assert (=> b!6906284 true))

(declare-fun bs!1843597 () Bool)

(declare-fun b!6906287 () Bool)

(assert (= bs!1843597 (and b!6906287 b!6906284)))

(declare-datatypes ((C!34024 0))(
  ( (C!34025 (val!26714 Int)) )
))
(declare-datatypes ((Regex!16877 0))(
  ( (ElementMatch!16877 (c!1282991 C!34024)) (Concat!25722 (regOne!34266 Regex!16877) (regTwo!34266 Regex!16877)) (EmptyExpr!16877) (Star!16877 (reg!17206 Regex!16877)) (EmptyLang!16877) (Union!16877 (regOne!34267 Regex!16877) (regTwo!34267 Regex!16877)) )
))
(declare-fun r1!6342 () Regex!16877)

(declare-datatypes ((List!66634 0))(
  ( (Nil!66510) (Cons!66510 (h!72958 C!34024) (t!380377 List!66634)) )
))
(declare-datatypes ((tuple2!67488 0))(
  ( (tuple2!67489 (_1!37047 List!66634) (_2!37047 List!66634)) )
))
(declare-fun lt!2467535 () tuple2!67488)

(declare-fun lambda!392289 () Int)

(declare-fun r3!135 () Regex!16877)

(declare-fun s!14361 () List!66634)

(declare-fun lt!2467536 () Regex!16877)

(declare-fun r2!6280 () Regex!16877)

(assert (=> bs!1843597 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392289 lambda!392287))))

(assert (=> bs!1843597 (not (= lambda!392289 lambda!392288))))

(assert (=> b!6906287 true))

(assert (=> b!6906287 true))

(assert (=> b!6906287 true))

(declare-fun lambda!392290 () Int)

(assert (=> bs!1843597 (not (= lambda!392290 lambda!392287))))

(assert (=> bs!1843597 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392290 lambda!392288))))

(assert (=> b!6906287 (not (= lambda!392290 lambda!392289))))

(assert (=> b!6906287 true))

(assert (=> b!6906287 true))

(assert (=> b!6906287 true))

(declare-fun b!6906267 () Bool)

(declare-fun e!4158542 () Bool)

(declare-fun tp_is_empty!42979 () Bool)

(declare-fun tp!1901656 () Bool)

(assert (=> b!6906267 (= e!4158542 (and tp_is_empty!42979 tp!1901656))))

(declare-fun b!6906268 () Bool)

(declare-fun e!4158541 () Bool)

(declare-fun tp!1901662 () Bool)

(declare-fun tp!1901659 () Bool)

(assert (=> b!6906268 (= e!4158541 (and tp!1901662 tp!1901659))))

(declare-fun b!6906269 () Bool)

(declare-fun e!4158544 () Bool)

(declare-fun tp!1901665 () Bool)

(declare-fun tp!1901670 () Bool)

(assert (=> b!6906269 (= e!4158544 (and tp!1901665 tp!1901670))))

(declare-fun b!6906270 () Bool)

(assert (=> b!6906270 (= e!4158541 tp_is_empty!42979)))

(declare-fun b!6906271 () Bool)

(declare-fun res!2816360 () Bool)

(declare-fun e!4158543 () Bool)

(assert (=> b!6906271 (=> res!2816360 e!4158543)))

(declare-fun lt!2467549 () tuple2!67488)

(declare-fun matchR!9022 (Regex!16877 List!66634) Bool)

(assert (=> b!6906271 (= res!2816360 (not (matchR!9022 r2!6280 (_2!37047 lt!2467549))))))

(declare-fun b!6906272 () Bool)

(declare-fun e!4158545 () Bool)

(declare-fun tp!1901658 () Bool)

(assert (=> b!6906272 (= e!4158545 tp!1901658)))

(declare-fun b!6906273 () Bool)

(declare-fun tp!1901664 () Bool)

(declare-fun tp!1901666 () Bool)

(assert (=> b!6906273 (= e!4158541 (and tp!1901664 tp!1901666))))

(declare-fun b!6906274 () Bool)

(declare-fun tp!1901668 () Bool)

(declare-fun tp!1901657 () Bool)

(assert (=> b!6906274 (= e!4158545 (and tp!1901668 tp!1901657))))

(declare-fun b!6906275 () Bool)

(assert (=> b!6906275 (= e!4158545 tp_is_empty!42979)))

(declare-fun b!6906276 () Bool)

(declare-fun tp!1901663 () Bool)

(declare-fun tp!1901661 () Bool)

(assert (=> b!6906276 (= e!4158545 (and tp!1901663 tp!1901661))))

(declare-fun b!6906277 () Bool)

(declare-fun res!2816353 () Bool)

(declare-fun e!4158546 () Bool)

(assert (=> b!6906277 (=> (not res!2816353) (not e!4158546))))

(declare-fun validRegex!8585 (Regex!16877) Bool)

(assert (=> b!6906277 (= res!2816353 (validRegex!8585 r2!6280))))

(declare-fun b!6906278 () Bool)

(declare-fun ++!14930 (List!66634 List!66634) List!66634)

(assert (=> b!6906278 (= e!4158543 (= (++!14930 (++!14930 (_1!37047 lt!2467549) (_2!37047 lt!2467549)) (_2!37047 lt!2467535)) s!14361))))

(declare-fun matchRSpec!3940 (Regex!16877 List!66634) Bool)

(assert (=> b!6906278 (matchRSpec!3940 r2!6280 (_2!37047 lt!2467549))))

(declare-datatypes ((Unit!160490 0))(
  ( (Unit!160491) )
))
(declare-fun lt!2467532 () Unit!160490)

(declare-fun mainMatchTheorem!3940 (Regex!16877 List!66634) Unit!160490)

(assert (=> b!6906278 (= lt!2467532 (mainMatchTheorem!3940 r2!6280 (_2!37047 lt!2467549)))))

(assert (=> b!6906278 (matchRSpec!3940 r1!6342 (_1!37047 lt!2467549))))

(declare-fun lt!2467539 () Unit!160490)

(assert (=> b!6906278 (= lt!2467539 (mainMatchTheorem!3940 r1!6342 (_1!37047 lt!2467549)))))

(declare-fun res!2816355 () Bool)

(assert (=> start!664970 (=> (not res!2816355) (not e!4158546))))

(assert (=> start!664970 (= res!2816355 (validRegex!8585 r1!6342))))

(assert (=> start!664970 e!4158546))

(assert (=> start!664970 e!4158541))

(assert (=> start!664970 e!4158544))

(assert (=> start!664970 e!4158545))

(assert (=> start!664970 e!4158542))

(declare-fun b!6906279 () Bool)

(declare-fun tp!1901667 () Bool)

(assert (=> b!6906279 (= e!4158541 tp!1901667)))

(declare-fun b!6906280 () Bool)

(declare-fun tp!1901669 () Bool)

(declare-fun tp!1901671 () Bool)

(assert (=> b!6906280 (= e!4158544 (and tp!1901669 tp!1901671))))

(declare-fun b!6906281 () Bool)

(declare-fun tp!1901660 () Bool)

(assert (=> b!6906281 (= e!4158544 tp!1901660)))

(declare-fun b!6906282 () Bool)

(assert (=> b!6906282 (= e!4158544 tp_is_empty!42979)))

(declare-fun b!6906283 () Bool)

(declare-fun e!4158547 () Bool)

(assert (=> b!6906283 (= e!4158546 (not e!4158547))))

(declare-fun res!2816358 () Bool)

(assert (=> b!6906283 (=> res!2816358 e!4158547)))

(declare-fun lt!2467544 () Bool)

(assert (=> b!6906283 (= res!2816358 (not lt!2467544))))

(declare-fun lt!2467543 () Regex!16877)

(assert (=> b!6906283 (= (matchR!9022 lt!2467543 s!14361) (matchRSpec!3940 lt!2467543 s!14361))))

(declare-fun lt!2467545 () Unit!160490)

(assert (=> b!6906283 (= lt!2467545 (mainMatchTheorem!3940 lt!2467543 s!14361))))

(declare-fun lt!2467546 () Regex!16877)

(assert (=> b!6906283 (= lt!2467544 (matchRSpec!3940 lt!2467546 s!14361))))

(assert (=> b!6906283 (= lt!2467544 (matchR!9022 lt!2467546 s!14361))))

(declare-fun lt!2467542 () Unit!160490)

(assert (=> b!6906283 (= lt!2467542 (mainMatchTheorem!3940 lt!2467546 s!14361))))

(assert (=> b!6906283 (= lt!2467543 (Concat!25722 r1!6342 (Concat!25722 r2!6280 r3!135)))))

(assert (=> b!6906283 (= lt!2467546 (Concat!25722 lt!2467536 r3!135))))

(assert (=> b!6906283 (= lt!2467536 (Concat!25722 r1!6342 r2!6280))))

(declare-fun e!4158548 () Bool)

(assert (=> b!6906284 (= e!4158547 e!4158548)))

(declare-fun res!2816356 () Bool)

(assert (=> b!6906284 (=> res!2816356 e!4158548)))

(declare-fun lt!2467548 () Bool)

(assert (=> b!6906284 (= res!2816356 (not lt!2467548))))

(assert (=> b!6906284 (= lt!2467548 (matchRSpec!3940 lt!2467536 (_1!37047 lt!2467535)))))

(assert (=> b!6906284 (= lt!2467548 (matchR!9022 lt!2467536 (_1!37047 lt!2467535)))))

(declare-fun lt!2467534 () Unit!160490)

(assert (=> b!6906284 (= lt!2467534 (mainMatchTheorem!3940 lt!2467536 (_1!37047 lt!2467535)))))

(declare-datatypes ((Option!16656 0))(
  ( (None!16655) (Some!16655 (v!52927 tuple2!67488)) )
))
(declare-fun lt!2467537 () Option!16656)

(declare-fun get!23266 (Option!16656) tuple2!67488)

(assert (=> b!6906284 (= lt!2467535 (get!23266 lt!2467537))))

(declare-fun Exists!3885 (Int) Bool)

(assert (=> b!6906284 (= (Exists!3885 lambda!392287) (Exists!3885 lambda!392288))))

(declare-fun lt!2467541 () Unit!160490)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2358 (Regex!16877 Regex!16877 List!66634) Unit!160490)

(assert (=> b!6906284 (= lt!2467541 (lemmaExistCutMatchRandMatchRSpecEquivalent!2358 lt!2467536 r3!135 s!14361))))

(declare-fun isDefined!13359 (Option!16656) Bool)

(assert (=> b!6906284 (= (isDefined!13359 lt!2467537) (Exists!3885 lambda!392287))))

(declare-fun findConcatSeparation!3070 (Regex!16877 Regex!16877 List!66634 List!66634 List!66634) Option!16656)

(assert (=> b!6906284 (= lt!2467537 (findConcatSeparation!3070 lt!2467536 r3!135 Nil!66510 s!14361 s!14361))))

(declare-fun lt!2467538 () Unit!160490)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2832 (Regex!16877 Regex!16877 List!66634) Unit!160490)

(assert (=> b!6906284 (= lt!2467538 (lemmaFindConcatSeparationEquivalentToExists!2832 lt!2467536 r3!135 s!14361))))

(declare-fun b!6906285 () Bool)

(declare-fun res!2816354 () Bool)

(assert (=> b!6906285 (=> (not res!2816354) (not e!4158546))))

(assert (=> b!6906285 (= res!2816354 (validRegex!8585 r3!135))))

(declare-fun b!6906286 () Bool)

(declare-fun res!2816359 () Bool)

(assert (=> b!6906286 (=> res!2816359 e!4158548)))

(assert (=> b!6906286 (= res!2816359 (not (matchR!9022 r3!135 (_2!37047 lt!2467535))))))

(assert (=> b!6906287 (= e!4158548 e!4158543)))

(declare-fun res!2816357 () Bool)

(assert (=> b!6906287 (=> res!2816357 e!4158543)))

(assert (=> b!6906287 (= res!2816357 (not (matchR!9022 r1!6342 (_1!37047 lt!2467549))))))

(declare-fun lt!2467547 () Option!16656)

(assert (=> b!6906287 (= lt!2467549 (get!23266 lt!2467547))))

(assert (=> b!6906287 (= (Exists!3885 lambda!392289) (Exists!3885 lambda!392290))))

(declare-fun lt!2467540 () Unit!160490)

(assert (=> b!6906287 (= lt!2467540 (lemmaExistCutMatchRandMatchRSpecEquivalent!2358 r1!6342 r2!6280 (_1!37047 lt!2467535)))))

(assert (=> b!6906287 (= (isDefined!13359 lt!2467547) (Exists!3885 lambda!392289))))

(assert (=> b!6906287 (= lt!2467547 (findConcatSeparation!3070 r1!6342 r2!6280 Nil!66510 (_1!37047 lt!2467535) (_1!37047 lt!2467535)))))

(declare-fun lt!2467533 () Unit!160490)

(assert (=> b!6906287 (= lt!2467533 (lemmaFindConcatSeparationEquivalentToExists!2832 r1!6342 r2!6280 (_1!37047 lt!2467535)))))

(assert (= (and start!664970 res!2816355) b!6906277))

(assert (= (and b!6906277 res!2816353) b!6906285))

(assert (= (and b!6906285 res!2816354) b!6906283))

(assert (= (and b!6906283 (not res!2816358)) b!6906284))

(assert (= (and b!6906284 (not res!2816356)) b!6906286))

(assert (= (and b!6906286 (not res!2816359)) b!6906287))

(assert (= (and b!6906287 (not res!2816357)) b!6906271))

(assert (= (and b!6906271 (not res!2816360)) b!6906278))

(get-info :version)

(assert (= (and start!664970 ((_ is ElementMatch!16877) r1!6342)) b!6906270))

(assert (= (and start!664970 ((_ is Concat!25722) r1!6342)) b!6906273))

(assert (= (and start!664970 ((_ is Star!16877) r1!6342)) b!6906279))

(assert (= (and start!664970 ((_ is Union!16877) r1!6342)) b!6906268))

(assert (= (and start!664970 ((_ is ElementMatch!16877) r2!6280)) b!6906282))

(assert (= (and start!664970 ((_ is Concat!25722) r2!6280)) b!6906280))

(assert (= (and start!664970 ((_ is Star!16877) r2!6280)) b!6906281))

(assert (= (and start!664970 ((_ is Union!16877) r2!6280)) b!6906269))

(assert (= (and start!664970 ((_ is ElementMatch!16877) r3!135)) b!6906275))

(assert (= (and start!664970 ((_ is Concat!25722) r3!135)) b!6906276))

(assert (= (and start!664970 ((_ is Star!16877) r3!135)) b!6906272))

(assert (= (and start!664970 ((_ is Union!16877) r3!135)) b!6906274))

(assert (= (and start!664970 ((_ is Cons!66510) s!14361)) b!6906267))

(declare-fun m!7622602 () Bool)

(assert (=> b!6906277 m!7622602))

(declare-fun m!7622604 () Bool)

(assert (=> b!6906283 m!7622604))

(declare-fun m!7622606 () Bool)

(assert (=> b!6906283 m!7622606))

(declare-fun m!7622608 () Bool)

(assert (=> b!6906283 m!7622608))

(declare-fun m!7622610 () Bool)

(assert (=> b!6906283 m!7622610))

(declare-fun m!7622612 () Bool)

(assert (=> b!6906283 m!7622612))

(declare-fun m!7622614 () Bool)

(assert (=> b!6906283 m!7622614))

(declare-fun m!7622616 () Bool)

(assert (=> b!6906287 m!7622616))

(declare-fun m!7622618 () Bool)

(assert (=> b!6906287 m!7622618))

(declare-fun m!7622620 () Bool)

(assert (=> b!6906287 m!7622620))

(declare-fun m!7622622 () Bool)

(assert (=> b!6906287 m!7622622))

(declare-fun m!7622624 () Bool)

(assert (=> b!6906287 m!7622624))

(declare-fun m!7622626 () Bool)

(assert (=> b!6906287 m!7622626))

(declare-fun m!7622628 () Bool)

(assert (=> b!6906287 m!7622628))

(assert (=> b!6906287 m!7622616))

(declare-fun m!7622630 () Bool)

(assert (=> b!6906287 m!7622630))

(declare-fun m!7622632 () Bool)

(assert (=> b!6906285 m!7622632))

(declare-fun m!7622634 () Bool)

(assert (=> b!6906284 m!7622634))

(declare-fun m!7622636 () Bool)

(assert (=> b!6906284 m!7622636))

(declare-fun m!7622638 () Bool)

(assert (=> b!6906284 m!7622638))

(declare-fun m!7622640 () Bool)

(assert (=> b!6906284 m!7622640))

(declare-fun m!7622642 () Bool)

(assert (=> b!6906284 m!7622642))

(declare-fun m!7622644 () Bool)

(assert (=> b!6906284 m!7622644))

(declare-fun m!7622646 () Bool)

(assert (=> b!6906284 m!7622646))

(declare-fun m!7622648 () Bool)

(assert (=> b!6906284 m!7622648))

(declare-fun m!7622650 () Bool)

(assert (=> b!6906284 m!7622650))

(declare-fun m!7622652 () Bool)

(assert (=> b!6906284 m!7622652))

(assert (=> b!6906284 m!7622636))

(declare-fun m!7622654 () Bool)

(assert (=> start!664970 m!7622654))

(declare-fun m!7622656 () Bool)

(assert (=> b!6906278 m!7622656))

(declare-fun m!7622658 () Bool)

(assert (=> b!6906278 m!7622658))

(assert (=> b!6906278 m!7622658))

(declare-fun m!7622660 () Bool)

(assert (=> b!6906278 m!7622660))

(declare-fun m!7622662 () Bool)

(assert (=> b!6906278 m!7622662))

(declare-fun m!7622664 () Bool)

(assert (=> b!6906278 m!7622664))

(declare-fun m!7622666 () Bool)

(assert (=> b!6906278 m!7622666))

(declare-fun m!7622668 () Bool)

(assert (=> b!6906271 m!7622668))

(declare-fun m!7622670 () Bool)

(assert (=> b!6906286 m!7622670))

(check-sat (not b!6906269) (not b!6906268) (not b!6906274) (not start!664970) (not b!6906276) (not b!6906277) (not b!6906272) (not b!6906287) (not b!6906279) (not b!6906267) (not b!6906271) (not b!6906284) (not b!6906280) (not b!6906278) (not b!6906285) (not b!6906283) (not b!6906286) tp_is_empty!42979 (not b!6906273) (not b!6906281))
(check-sat)
(get-model)

(declare-fun bs!1843602 () Bool)

(declare-fun b!6906382 () Bool)

(assert (= bs!1843602 (and b!6906382 b!6906284)))

(declare-fun lambda!392298 () Int)

(assert (=> bs!1843602 (not (= lambda!392298 lambda!392287))))

(assert (=> bs!1843602 (not (= lambda!392298 lambda!392288))))

(declare-fun bs!1843603 () Bool)

(assert (= bs!1843603 (and b!6906382 b!6906287)))

(assert (=> bs!1843603 (not (= lambda!392298 lambda!392289))))

(assert (=> bs!1843603 (not (= lambda!392298 lambda!392290))))

(assert (=> b!6906382 true))

(assert (=> b!6906382 true))

(declare-fun bs!1843604 () Bool)

(declare-fun b!6906380 () Bool)

(assert (= bs!1843604 (and b!6906380 b!6906287)))

(declare-fun lambda!392299 () Int)

(assert (=> bs!1843604 (= (and (= (_1!37047 lt!2467549) (_1!37047 lt!2467535)) (= (regOne!34266 r1!6342) r1!6342) (= (regTwo!34266 r1!6342) r2!6280)) (= lambda!392299 lambda!392290))))

(declare-fun bs!1843605 () Bool)

(assert (= bs!1843605 (and b!6906380 b!6906382)))

(assert (=> bs!1843605 (not (= lambda!392299 lambda!392298))))

(declare-fun bs!1843606 () Bool)

(assert (= bs!1843606 (and b!6906380 b!6906284)))

(assert (=> bs!1843606 (= (and (= (_1!37047 lt!2467549) s!14361) (= (regOne!34266 r1!6342) lt!2467536) (= (regTwo!34266 r1!6342) r3!135)) (= lambda!392299 lambda!392288))))

(assert (=> bs!1843606 (not (= lambda!392299 lambda!392287))))

(assert (=> bs!1843604 (not (= lambda!392299 lambda!392289))))

(assert (=> b!6906380 true))

(assert (=> b!6906380 true))

(declare-fun b!6906374 () Bool)

(declare-fun c!1283009 () Bool)

(assert (=> b!6906374 (= c!1283009 ((_ is Union!16877) r1!6342))))

(declare-fun e!4158591 () Bool)

(declare-fun e!4158590 () Bool)

(assert (=> b!6906374 (= e!4158591 e!4158590)))

(declare-fun b!6906375 () Bool)

(assert (=> b!6906375 (= e!4158591 (= (_1!37047 lt!2467549) (Cons!66510 (c!1282991 r1!6342) Nil!66510)))))

(declare-fun d!2162734 () Bool)

(declare-fun c!1283011 () Bool)

(assert (=> d!2162734 (= c!1283011 ((_ is EmptyExpr!16877) r1!6342))))

(declare-fun e!4158594 () Bool)

(assert (=> d!2162734 (= (matchRSpec!3940 r1!6342 (_1!37047 lt!2467549)) e!4158594)))

(declare-fun b!6906376 () Bool)

(declare-fun e!4158593 () Bool)

(assert (=> b!6906376 (= e!4158593 (matchRSpec!3940 (regTwo!34267 r1!6342) (_1!37047 lt!2467549)))))

(declare-fun b!6906377 () Bool)

(declare-fun e!4158595 () Bool)

(assert (=> b!6906377 (= e!4158594 e!4158595)))

(declare-fun res!2816406 () Bool)

(assert (=> b!6906377 (= res!2816406 (not ((_ is EmptyLang!16877) r1!6342)))))

(assert (=> b!6906377 (=> (not res!2816406) (not e!4158595))))

(declare-fun b!6906378 () Bool)

(declare-fun res!2816407 () Bool)

(declare-fun e!4158596 () Bool)

(assert (=> b!6906378 (=> res!2816407 e!4158596)))

(declare-fun call!627981 () Bool)

(assert (=> b!6906378 (= res!2816407 call!627981)))

(declare-fun e!4158592 () Bool)

(assert (=> b!6906378 (= e!4158592 e!4158596)))

(declare-fun b!6906379 () Bool)

(assert (=> b!6906379 (= e!4158590 e!4158593)))

(declare-fun res!2816405 () Bool)

(assert (=> b!6906379 (= res!2816405 (matchRSpec!3940 (regOne!34267 r1!6342) (_1!37047 lt!2467549)))))

(assert (=> b!6906379 (=> res!2816405 e!4158593)))

(declare-fun call!627982 () Bool)

(assert (=> b!6906380 (= e!4158592 call!627982)))

(declare-fun bm!627976 () Bool)

(declare-fun isEmpty!38750 (List!66634) Bool)

(assert (=> bm!627976 (= call!627981 (isEmpty!38750 (_1!37047 lt!2467549)))))

(declare-fun c!1283010 () Bool)

(declare-fun bm!627977 () Bool)

(assert (=> bm!627977 (= call!627982 (Exists!3885 (ite c!1283010 lambda!392298 lambda!392299)))))

(declare-fun b!6906381 () Bool)

(assert (=> b!6906381 (= e!4158590 e!4158592)))

(assert (=> b!6906381 (= c!1283010 ((_ is Star!16877) r1!6342))))

(assert (=> b!6906382 (= e!4158596 call!627982)))

(declare-fun b!6906383 () Bool)

(declare-fun c!1283012 () Bool)

(assert (=> b!6906383 (= c!1283012 ((_ is ElementMatch!16877) r1!6342))))

(assert (=> b!6906383 (= e!4158595 e!4158591)))

(declare-fun b!6906384 () Bool)

(assert (=> b!6906384 (= e!4158594 call!627981)))

(assert (= (and d!2162734 c!1283011) b!6906384))

(assert (= (and d!2162734 (not c!1283011)) b!6906377))

(assert (= (and b!6906377 res!2816406) b!6906383))

(assert (= (and b!6906383 c!1283012) b!6906375))

(assert (= (and b!6906383 (not c!1283012)) b!6906374))

(assert (= (and b!6906374 c!1283009) b!6906379))

(assert (= (and b!6906374 (not c!1283009)) b!6906381))

(assert (= (and b!6906379 (not res!2816405)) b!6906376))

(assert (= (and b!6906381 c!1283010) b!6906378))

(assert (= (and b!6906381 (not c!1283010)) b!6906380))

(assert (= (and b!6906378 (not res!2816407)) b!6906382))

(assert (= (or b!6906382 b!6906380) bm!627977))

(assert (= (or b!6906384 b!6906378) bm!627976))

(declare-fun m!7622720 () Bool)

(assert (=> b!6906376 m!7622720))

(declare-fun m!7622722 () Bool)

(assert (=> b!6906379 m!7622722))

(declare-fun m!7622724 () Bool)

(assert (=> bm!627976 m!7622724))

(declare-fun m!7622726 () Bool)

(assert (=> bm!627977 m!7622726))

(assert (=> b!6906278 d!2162734))

(declare-fun d!2162748 () Bool)

(assert (=> d!2162748 (= (matchR!9022 r2!6280 (_2!37047 lt!2467549)) (matchRSpec!3940 r2!6280 (_2!37047 lt!2467549)))))

(declare-fun lt!2467569 () Unit!160490)

(declare-fun choose!51432 (Regex!16877 List!66634) Unit!160490)

(assert (=> d!2162748 (= lt!2467569 (choose!51432 r2!6280 (_2!37047 lt!2467549)))))

(assert (=> d!2162748 (validRegex!8585 r2!6280)))

(assert (=> d!2162748 (= (mainMatchTheorem!3940 r2!6280 (_2!37047 lt!2467549)) lt!2467569)))

(declare-fun bs!1843609 () Bool)

(assert (= bs!1843609 d!2162748))

(assert (=> bs!1843609 m!7622668))

(assert (=> bs!1843609 m!7622656))

(declare-fun m!7622728 () Bool)

(assert (=> bs!1843609 m!7622728))

(assert (=> bs!1843609 m!7622602))

(assert (=> b!6906278 d!2162748))

(declare-fun d!2162750 () Bool)

(assert (=> d!2162750 (= (matchR!9022 r1!6342 (_1!37047 lt!2467549)) (matchRSpec!3940 r1!6342 (_1!37047 lt!2467549)))))

(declare-fun lt!2467570 () Unit!160490)

(assert (=> d!2162750 (= lt!2467570 (choose!51432 r1!6342 (_1!37047 lt!2467549)))))

(assert (=> d!2162750 (validRegex!8585 r1!6342)))

(assert (=> d!2162750 (= (mainMatchTheorem!3940 r1!6342 (_1!37047 lt!2467549)) lt!2467570)))

(declare-fun bs!1843610 () Bool)

(assert (= bs!1843610 d!2162750))

(assert (=> bs!1843610 m!7622618))

(assert (=> bs!1843610 m!7622662))

(declare-fun m!7622730 () Bool)

(assert (=> bs!1843610 m!7622730))

(assert (=> bs!1843610 m!7622654))

(assert (=> b!6906278 d!2162750))

(declare-fun bs!1843611 () Bool)

(declare-fun b!6906422 () Bool)

(assert (= bs!1843611 (and b!6906422 b!6906287)))

(declare-fun lambda!392304 () Int)

(assert (=> bs!1843611 (not (= lambda!392304 lambda!392290))))

(declare-fun bs!1843612 () Bool)

(assert (= bs!1843612 (and b!6906422 b!6906380)))

(assert (=> bs!1843612 (not (= lambda!392304 lambda!392299))))

(declare-fun bs!1843615 () Bool)

(assert (= bs!1843615 (and b!6906422 b!6906382)))

(assert (=> bs!1843615 (= (and (= (_2!37047 lt!2467549) (_1!37047 lt!2467549)) (= (reg!17206 r2!6280) (reg!17206 r1!6342)) (= r2!6280 r1!6342)) (= lambda!392304 lambda!392298))))

(declare-fun bs!1843617 () Bool)

(assert (= bs!1843617 (and b!6906422 b!6906284)))

(assert (=> bs!1843617 (not (= lambda!392304 lambda!392288))))

(assert (=> bs!1843617 (not (= lambda!392304 lambda!392287))))

(assert (=> bs!1843611 (not (= lambda!392304 lambda!392289))))

(assert (=> b!6906422 true))

(assert (=> b!6906422 true))

(declare-fun bs!1843619 () Bool)

(declare-fun b!6906420 () Bool)

(assert (= bs!1843619 (and b!6906420 b!6906287)))

(declare-fun lambda!392307 () Int)

(assert (=> bs!1843619 (= (and (= (_2!37047 lt!2467549) (_1!37047 lt!2467535)) (= (regOne!34266 r2!6280) r1!6342) (= (regTwo!34266 r2!6280) r2!6280)) (= lambda!392307 lambda!392290))))

(declare-fun bs!1843620 () Bool)

(assert (= bs!1843620 (and b!6906420 b!6906422)))

(assert (=> bs!1843620 (not (= lambda!392307 lambda!392304))))

(declare-fun bs!1843621 () Bool)

(assert (= bs!1843621 (and b!6906420 b!6906380)))

(assert (=> bs!1843621 (= (and (= (_2!37047 lt!2467549) (_1!37047 lt!2467549)) (= (regOne!34266 r2!6280) (regOne!34266 r1!6342)) (= (regTwo!34266 r2!6280) (regTwo!34266 r1!6342))) (= lambda!392307 lambda!392299))))

(declare-fun bs!1843622 () Bool)

(assert (= bs!1843622 (and b!6906420 b!6906382)))

(assert (=> bs!1843622 (not (= lambda!392307 lambda!392298))))

(declare-fun bs!1843623 () Bool)

(assert (= bs!1843623 (and b!6906420 b!6906284)))

(assert (=> bs!1843623 (= (and (= (_2!37047 lt!2467549) s!14361) (= (regOne!34266 r2!6280) lt!2467536) (= (regTwo!34266 r2!6280) r3!135)) (= lambda!392307 lambda!392288))))

(assert (=> bs!1843623 (not (= lambda!392307 lambda!392287))))

(assert (=> bs!1843619 (not (= lambda!392307 lambda!392289))))

(assert (=> b!6906420 true))

(assert (=> b!6906420 true))

(declare-fun b!6906414 () Bool)

(declare-fun c!1283019 () Bool)

(assert (=> b!6906414 (= c!1283019 ((_ is Union!16877) r2!6280))))

(declare-fun e!4158615 () Bool)

(declare-fun e!4158614 () Bool)

(assert (=> b!6906414 (= e!4158615 e!4158614)))

(declare-fun b!6906415 () Bool)

(assert (=> b!6906415 (= e!4158615 (= (_2!37047 lt!2467549) (Cons!66510 (c!1282991 r2!6280) Nil!66510)))))

(declare-fun d!2162752 () Bool)

(declare-fun c!1283021 () Bool)

(assert (=> d!2162752 (= c!1283021 ((_ is EmptyExpr!16877) r2!6280))))

(declare-fun e!4158618 () Bool)

(assert (=> d!2162752 (= (matchRSpec!3940 r2!6280 (_2!37047 lt!2467549)) e!4158618)))

(declare-fun b!6906416 () Bool)

(declare-fun e!4158617 () Bool)

(assert (=> b!6906416 (= e!4158617 (matchRSpec!3940 (regTwo!34267 r2!6280) (_2!37047 lt!2467549)))))

(declare-fun b!6906417 () Bool)

(declare-fun e!4158619 () Bool)

(assert (=> b!6906417 (= e!4158618 e!4158619)))

(declare-fun res!2816428 () Bool)

(assert (=> b!6906417 (= res!2816428 (not ((_ is EmptyLang!16877) r2!6280)))))

(assert (=> b!6906417 (=> (not res!2816428) (not e!4158619))))

(declare-fun b!6906418 () Bool)

(declare-fun res!2816429 () Bool)

(declare-fun e!4158620 () Bool)

(assert (=> b!6906418 (=> res!2816429 e!4158620)))

(declare-fun call!627983 () Bool)

(assert (=> b!6906418 (= res!2816429 call!627983)))

(declare-fun e!4158616 () Bool)

(assert (=> b!6906418 (= e!4158616 e!4158620)))

(declare-fun b!6906419 () Bool)

(assert (=> b!6906419 (= e!4158614 e!4158617)))

(declare-fun res!2816427 () Bool)

(assert (=> b!6906419 (= res!2816427 (matchRSpec!3940 (regOne!34267 r2!6280) (_2!37047 lt!2467549)))))

(assert (=> b!6906419 (=> res!2816427 e!4158617)))

(declare-fun call!627984 () Bool)

(assert (=> b!6906420 (= e!4158616 call!627984)))

(declare-fun bm!627978 () Bool)

(assert (=> bm!627978 (= call!627983 (isEmpty!38750 (_2!37047 lt!2467549)))))

(declare-fun c!1283020 () Bool)

(declare-fun bm!627979 () Bool)

(assert (=> bm!627979 (= call!627984 (Exists!3885 (ite c!1283020 lambda!392304 lambda!392307)))))

(declare-fun b!6906421 () Bool)

(assert (=> b!6906421 (= e!4158614 e!4158616)))

(assert (=> b!6906421 (= c!1283020 ((_ is Star!16877) r2!6280))))

(assert (=> b!6906422 (= e!4158620 call!627984)))

(declare-fun b!6906423 () Bool)

(declare-fun c!1283022 () Bool)

(assert (=> b!6906423 (= c!1283022 ((_ is ElementMatch!16877) r2!6280))))

(assert (=> b!6906423 (= e!4158619 e!4158615)))

(declare-fun b!6906424 () Bool)

(assert (=> b!6906424 (= e!4158618 call!627983)))

(assert (= (and d!2162752 c!1283021) b!6906424))

(assert (= (and d!2162752 (not c!1283021)) b!6906417))

(assert (= (and b!6906417 res!2816428) b!6906423))

(assert (= (and b!6906423 c!1283022) b!6906415))

(assert (= (and b!6906423 (not c!1283022)) b!6906414))

(assert (= (and b!6906414 c!1283019) b!6906419))

(assert (= (and b!6906414 (not c!1283019)) b!6906421))

(assert (= (and b!6906419 (not res!2816427)) b!6906416))

(assert (= (and b!6906421 c!1283020) b!6906418))

(assert (= (and b!6906421 (not c!1283020)) b!6906420))

(assert (= (and b!6906418 (not res!2816429)) b!6906422))

(assert (= (or b!6906422 b!6906420) bm!627979))

(assert (= (or b!6906424 b!6906418) bm!627978))

(declare-fun m!7622738 () Bool)

(assert (=> b!6906416 m!7622738))

(declare-fun m!7622740 () Bool)

(assert (=> b!6906419 m!7622740))

(declare-fun m!7622742 () Bool)

(assert (=> bm!627978 m!7622742))

(declare-fun m!7622744 () Bool)

(assert (=> bm!627979 m!7622744))

(assert (=> b!6906278 d!2162752))

(declare-fun b!6906479 () Bool)

(declare-fun e!4158655 () List!66634)

(assert (=> b!6906479 (= e!4158655 (Cons!66510 (h!72958 (_1!37047 lt!2467549)) (++!14930 (t!380377 (_1!37047 lt!2467549)) (_2!37047 lt!2467549))))))

(declare-fun d!2162756 () Bool)

(declare-fun e!4158656 () Bool)

(assert (=> d!2162756 e!4158656))

(declare-fun res!2816462 () Bool)

(assert (=> d!2162756 (=> (not res!2816462) (not e!4158656))))

(declare-fun lt!2467575 () List!66634)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13063 (List!66634) (InoxSet C!34024))

(assert (=> d!2162756 (= res!2816462 (= (content!13063 lt!2467575) ((_ map or) (content!13063 (_1!37047 lt!2467549)) (content!13063 (_2!37047 lt!2467549)))))))

(assert (=> d!2162756 (= lt!2467575 e!4158655)))

(declare-fun c!1283034 () Bool)

(assert (=> d!2162756 (= c!1283034 ((_ is Nil!66510) (_1!37047 lt!2467549)))))

(assert (=> d!2162756 (= (++!14930 (_1!37047 lt!2467549) (_2!37047 lt!2467549)) lt!2467575)))

(declare-fun b!6906480 () Bool)

(declare-fun res!2816461 () Bool)

(assert (=> b!6906480 (=> (not res!2816461) (not e!4158656))))

(declare-fun size!40760 (List!66634) Int)

(assert (=> b!6906480 (= res!2816461 (= (size!40760 lt!2467575) (+ (size!40760 (_1!37047 lt!2467549)) (size!40760 (_2!37047 lt!2467549)))))))

(declare-fun b!6906481 () Bool)

(assert (=> b!6906481 (= e!4158656 (or (not (= (_2!37047 lt!2467549) Nil!66510)) (= lt!2467575 (_1!37047 lt!2467549))))))

(declare-fun b!6906478 () Bool)

(assert (=> b!6906478 (= e!4158655 (_2!37047 lt!2467549))))

(assert (= (and d!2162756 c!1283034) b!6906478))

(assert (= (and d!2162756 (not c!1283034)) b!6906479))

(assert (= (and d!2162756 res!2816462) b!6906480))

(assert (= (and b!6906480 res!2816461) b!6906481))

(declare-fun m!7622766 () Bool)

(assert (=> b!6906479 m!7622766))

(declare-fun m!7622768 () Bool)

(assert (=> d!2162756 m!7622768))

(declare-fun m!7622770 () Bool)

(assert (=> d!2162756 m!7622770))

(declare-fun m!7622772 () Bool)

(assert (=> d!2162756 m!7622772))

(declare-fun m!7622774 () Bool)

(assert (=> b!6906480 m!7622774))

(declare-fun m!7622776 () Bool)

(assert (=> b!6906480 m!7622776))

(declare-fun m!7622778 () Bool)

(assert (=> b!6906480 m!7622778))

(assert (=> b!6906278 d!2162756))

(declare-fun b!6906505 () Bool)

(declare-fun e!4158671 () List!66634)

(assert (=> b!6906505 (= e!4158671 (Cons!66510 (h!72958 (++!14930 (_1!37047 lt!2467549) (_2!37047 lt!2467549))) (++!14930 (t!380377 (++!14930 (_1!37047 lt!2467549) (_2!37047 lt!2467549))) (_2!37047 lt!2467535))))))

(declare-fun d!2162762 () Bool)

(declare-fun e!4158672 () Bool)

(assert (=> d!2162762 e!4158672))

(declare-fun res!2816470 () Bool)

(assert (=> d!2162762 (=> (not res!2816470) (not e!4158672))))

(declare-fun lt!2467576 () List!66634)

(assert (=> d!2162762 (= res!2816470 (= (content!13063 lt!2467576) ((_ map or) (content!13063 (++!14930 (_1!37047 lt!2467549) (_2!37047 lt!2467549))) (content!13063 (_2!37047 lt!2467535)))))))

(assert (=> d!2162762 (= lt!2467576 e!4158671)))

(declare-fun c!1283043 () Bool)

(assert (=> d!2162762 (= c!1283043 ((_ is Nil!66510) (++!14930 (_1!37047 lt!2467549) (_2!37047 lt!2467549))))))

(assert (=> d!2162762 (= (++!14930 (++!14930 (_1!37047 lt!2467549) (_2!37047 lt!2467549)) (_2!37047 lt!2467535)) lt!2467576)))

(declare-fun b!6906506 () Bool)

(declare-fun res!2816469 () Bool)

(assert (=> b!6906506 (=> (not res!2816469) (not e!4158672))))

(assert (=> b!6906506 (= res!2816469 (= (size!40760 lt!2467576) (+ (size!40760 (++!14930 (_1!37047 lt!2467549) (_2!37047 lt!2467549))) (size!40760 (_2!37047 lt!2467535)))))))

(declare-fun b!6906507 () Bool)

(assert (=> b!6906507 (= e!4158672 (or (not (= (_2!37047 lt!2467535) Nil!66510)) (= lt!2467576 (++!14930 (_1!37047 lt!2467549) (_2!37047 lt!2467549)))))))

(declare-fun b!6906504 () Bool)

(assert (=> b!6906504 (= e!4158671 (_2!37047 lt!2467535))))

(assert (= (and d!2162762 c!1283043) b!6906504))

(assert (= (and d!2162762 (not c!1283043)) b!6906505))

(assert (= (and d!2162762 res!2816470) b!6906506))

(assert (= (and b!6906506 res!2816469) b!6906507))

(declare-fun m!7622780 () Bool)

(assert (=> b!6906505 m!7622780))

(declare-fun m!7622782 () Bool)

(assert (=> d!2162762 m!7622782))

(assert (=> d!2162762 m!7622658))

(declare-fun m!7622784 () Bool)

(assert (=> d!2162762 m!7622784))

(declare-fun m!7622786 () Bool)

(assert (=> d!2162762 m!7622786))

(declare-fun m!7622788 () Bool)

(assert (=> b!6906506 m!7622788))

(assert (=> b!6906506 m!7622658))

(declare-fun m!7622790 () Bool)

(assert (=> b!6906506 m!7622790))

(declare-fun m!7622792 () Bool)

(assert (=> b!6906506 m!7622792))

(assert (=> b!6906278 d!2162762))

(declare-fun d!2162764 () Bool)

(declare-fun choose!51433 (Int) Bool)

(assert (=> d!2162764 (= (Exists!3885 lambda!392288) (choose!51433 lambda!392288))))

(declare-fun bs!1843624 () Bool)

(assert (= bs!1843624 d!2162764))

(declare-fun m!7622794 () Bool)

(assert (=> bs!1843624 m!7622794))

(assert (=> b!6906284 d!2162764))

(declare-fun d!2162766 () Bool)

(assert (=> d!2162766 (= (Exists!3885 lambda!392287) (choose!51433 lambda!392287))))

(declare-fun bs!1843625 () Bool)

(assert (= bs!1843625 d!2162766))

(declare-fun m!7622796 () Bool)

(assert (=> bs!1843625 m!7622796))

(assert (=> b!6906284 d!2162766))

(declare-fun d!2162768 () Bool)

(assert (=> d!2162768 (= (matchR!9022 lt!2467536 (_1!37047 lt!2467535)) (matchRSpec!3940 lt!2467536 (_1!37047 lt!2467535)))))

(declare-fun lt!2467577 () Unit!160490)

(assert (=> d!2162768 (= lt!2467577 (choose!51432 lt!2467536 (_1!37047 lt!2467535)))))

(assert (=> d!2162768 (validRegex!8585 lt!2467536)))

(assert (=> d!2162768 (= (mainMatchTheorem!3940 lt!2467536 (_1!37047 lt!2467535)) lt!2467577)))

(declare-fun bs!1843626 () Bool)

(assert (= bs!1843626 d!2162768))

(assert (=> bs!1843626 m!7622648))

(assert (=> bs!1843626 m!7622644))

(declare-fun m!7622798 () Bool)

(assert (=> bs!1843626 m!7622798))

(declare-fun m!7622800 () Bool)

(assert (=> bs!1843626 m!7622800))

(assert (=> b!6906284 d!2162768))

(declare-fun bs!1843649 () Bool)

(declare-fun d!2162770 () Bool)

(assert (= bs!1843649 (and d!2162770 b!6906287)))

(declare-fun lambda!392318 () Int)

(assert (=> bs!1843649 (not (= lambda!392318 lambda!392290))))

(declare-fun bs!1843651 () Bool)

(assert (= bs!1843651 (and d!2162770 b!6906422)))

(assert (=> bs!1843651 (not (= lambda!392318 lambda!392304))))

(declare-fun bs!1843652 () Bool)

(assert (= bs!1843652 (and d!2162770 b!6906380)))

(assert (=> bs!1843652 (not (= lambda!392318 lambda!392299))))

(declare-fun bs!1843653 () Bool)

(assert (= bs!1843653 (and d!2162770 b!6906284)))

(assert (=> bs!1843653 (not (= lambda!392318 lambda!392288))))

(assert (=> bs!1843653 (= lambda!392318 lambda!392287)))

(assert (=> bs!1843649 (= (and (= s!14361 (_1!37047 lt!2467535)) (= lt!2467536 r1!6342) (= r3!135 r2!6280)) (= lambda!392318 lambda!392289))))

(declare-fun bs!1843654 () Bool)

(assert (= bs!1843654 (and d!2162770 b!6906420)))

(assert (=> bs!1843654 (not (= lambda!392318 lambda!392307))))

(declare-fun bs!1843655 () Bool)

(assert (= bs!1843655 (and d!2162770 b!6906382)))

(assert (=> bs!1843655 (not (= lambda!392318 lambda!392298))))

(assert (=> d!2162770 true))

(assert (=> d!2162770 true))

(assert (=> d!2162770 true))

(assert (=> d!2162770 (= (isDefined!13359 (findConcatSeparation!3070 lt!2467536 r3!135 Nil!66510 s!14361 s!14361)) (Exists!3885 lambda!392318))))

(declare-fun lt!2467584 () Unit!160490)

(declare-fun choose!51434 (Regex!16877 Regex!16877 List!66634) Unit!160490)

(assert (=> d!2162770 (= lt!2467584 (choose!51434 lt!2467536 r3!135 s!14361))))

(assert (=> d!2162770 (validRegex!8585 lt!2467536)))

(assert (=> d!2162770 (= (lemmaFindConcatSeparationEquivalentToExists!2832 lt!2467536 r3!135 s!14361) lt!2467584)))

(declare-fun bs!1843657 () Bool)

(assert (= bs!1843657 d!2162770))

(assert (=> bs!1843657 m!7622800))

(declare-fun m!7622842 () Bool)

(assert (=> bs!1843657 m!7622842))

(declare-fun m!7622844 () Bool)

(assert (=> bs!1843657 m!7622844))

(assert (=> bs!1843657 m!7622642))

(assert (=> bs!1843657 m!7622642))

(declare-fun m!7622846 () Bool)

(assert (=> bs!1843657 m!7622846))

(assert (=> b!6906284 d!2162770))

(declare-fun bs!1843658 () Bool)

(declare-fun b!6906594 () Bool)

(assert (= bs!1843658 (and b!6906594 b!6906287)))

(declare-fun lambda!392319 () Int)

(assert (=> bs!1843658 (not (= lambda!392319 lambda!392290))))

(declare-fun bs!1843659 () Bool)

(assert (= bs!1843659 (and b!6906594 b!6906422)))

(assert (=> bs!1843659 (= (and (= (_1!37047 lt!2467535) (_2!37047 lt!2467549)) (= (reg!17206 lt!2467536) (reg!17206 r2!6280)) (= lt!2467536 r2!6280)) (= lambda!392319 lambda!392304))))

(declare-fun bs!1843661 () Bool)

(assert (= bs!1843661 (and b!6906594 b!6906380)))

(assert (=> bs!1843661 (not (= lambda!392319 lambda!392299))))

(declare-fun bs!1843664 () Bool)

(assert (= bs!1843664 (and b!6906594 d!2162770)))

(assert (=> bs!1843664 (not (= lambda!392319 lambda!392318))))

(declare-fun bs!1843667 () Bool)

(assert (= bs!1843667 (and b!6906594 b!6906284)))

(assert (=> bs!1843667 (not (= lambda!392319 lambda!392288))))

(assert (=> bs!1843667 (not (= lambda!392319 lambda!392287))))

(assert (=> bs!1843658 (not (= lambda!392319 lambda!392289))))

(declare-fun bs!1843671 () Bool)

(assert (= bs!1843671 (and b!6906594 b!6906420)))

(assert (=> bs!1843671 (not (= lambda!392319 lambda!392307))))

(declare-fun bs!1843672 () Bool)

(assert (= bs!1843672 (and b!6906594 b!6906382)))

(assert (=> bs!1843672 (= (and (= (_1!37047 lt!2467535) (_1!37047 lt!2467549)) (= (reg!17206 lt!2467536) (reg!17206 r1!6342)) (= lt!2467536 r1!6342)) (= lambda!392319 lambda!392298))))

(assert (=> b!6906594 true))

(assert (=> b!6906594 true))

(declare-fun bs!1843678 () Bool)

(declare-fun b!6906592 () Bool)

(assert (= bs!1843678 (and b!6906592 b!6906287)))

(declare-fun lambda!392322 () Int)

(assert (=> bs!1843678 (= (and (= (regOne!34266 lt!2467536) r1!6342) (= (regTwo!34266 lt!2467536) r2!6280)) (= lambda!392322 lambda!392290))))

(declare-fun bs!1843682 () Bool)

(assert (= bs!1843682 (and b!6906592 b!6906422)))

(assert (=> bs!1843682 (not (= lambda!392322 lambda!392304))))

(declare-fun bs!1843684 () Bool)

(assert (= bs!1843684 (and b!6906592 b!6906380)))

(assert (=> bs!1843684 (= (and (= (_1!37047 lt!2467535) (_1!37047 lt!2467549)) (= (regOne!34266 lt!2467536) (regOne!34266 r1!6342)) (= (regTwo!34266 lt!2467536) (regTwo!34266 r1!6342))) (= lambda!392322 lambda!392299))))

(declare-fun bs!1843685 () Bool)

(assert (= bs!1843685 (and b!6906592 d!2162770)))

(assert (=> bs!1843685 (not (= lambda!392322 lambda!392318))))

(declare-fun bs!1843686 () Bool)

(assert (= bs!1843686 (and b!6906592 b!6906594)))

(assert (=> bs!1843686 (not (= lambda!392322 lambda!392319))))

(declare-fun bs!1843687 () Bool)

(assert (= bs!1843687 (and b!6906592 b!6906284)))

(assert (=> bs!1843687 (= (and (= (_1!37047 lt!2467535) s!14361) (= (regOne!34266 lt!2467536) lt!2467536) (= (regTwo!34266 lt!2467536) r3!135)) (= lambda!392322 lambda!392288))))

(assert (=> bs!1843687 (not (= lambda!392322 lambda!392287))))

(assert (=> bs!1843678 (not (= lambda!392322 lambda!392289))))

(declare-fun bs!1843688 () Bool)

(assert (= bs!1843688 (and b!6906592 b!6906420)))

(assert (=> bs!1843688 (= (and (= (_1!37047 lt!2467535) (_2!37047 lt!2467549)) (= (regOne!34266 lt!2467536) (regOne!34266 r2!6280)) (= (regTwo!34266 lt!2467536) (regTwo!34266 r2!6280))) (= lambda!392322 lambda!392307))))

(declare-fun bs!1843689 () Bool)

(assert (= bs!1843689 (and b!6906592 b!6906382)))

(assert (=> bs!1843689 (not (= lambda!392322 lambda!392298))))

(assert (=> b!6906592 true))

(assert (=> b!6906592 true))

(declare-fun b!6906586 () Bool)

(declare-fun c!1283061 () Bool)

(assert (=> b!6906586 (= c!1283061 ((_ is Union!16877) lt!2467536))))

(declare-fun e!4158715 () Bool)

(declare-fun e!4158714 () Bool)

(assert (=> b!6906586 (= e!4158715 e!4158714)))

(declare-fun b!6906587 () Bool)

(assert (=> b!6906587 (= e!4158715 (= (_1!37047 lt!2467535) (Cons!66510 (c!1282991 lt!2467536) Nil!66510)))))

(declare-fun d!2162784 () Bool)

(declare-fun c!1283063 () Bool)

(assert (=> d!2162784 (= c!1283063 ((_ is EmptyExpr!16877) lt!2467536))))

(declare-fun e!4158718 () Bool)

(assert (=> d!2162784 (= (matchRSpec!3940 lt!2467536 (_1!37047 lt!2467535)) e!4158718)))

(declare-fun b!6906588 () Bool)

(declare-fun e!4158717 () Bool)

(assert (=> b!6906588 (= e!4158717 (matchRSpec!3940 (regTwo!34267 lt!2467536) (_1!37047 lt!2467535)))))

(declare-fun b!6906589 () Bool)

(declare-fun e!4158719 () Bool)

(assert (=> b!6906589 (= e!4158718 e!4158719)))

(declare-fun res!2816516 () Bool)

(assert (=> b!6906589 (= res!2816516 (not ((_ is EmptyLang!16877) lt!2467536)))))

(assert (=> b!6906589 (=> (not res!2816516) (not e!4158719))))

(declare-fun b!6906590 () Bool)

(declare-fun res!2816517 () Bool)

(declare-fun e!4158720 () Bool)

(assert (=> b!6906590 (=> res!2816517 e!4158720)))

(declare-fun call!628006 () Bool)

(assert (=> b!6906590 (= res!2816517 call!628006)))

(declare-fun e!4158716 () Bool)

(assert (=> b!6906590 (= e!4158716 e!4158720)))

(declare-fun b!6906591 () Bool)

(assert (=> b!6906591 (= e!4158714 e!4158717)))

(declare-fun res!2816515 () Bool)

(assert (=> b!6906591 (= res!2816515 (matchRSpec!3940 (regOne!34267 lt!2467536) (_1!37047 lt!2467535)))))

(assert (=> b!6906591 (=> res!2816515 e!4158717)))

(declare-fun call!628007 () Bool)

(assert (=> b!6906592 (= e!4158716 call!628007)))

(declare-fun bm!628001 () Bool)

(assert (=> bm!628001 (= call!628006 (isEmpty!38750 (_1!37047 lt!2467535)))))

(declare-fun c!1283062 () Bool)

(declare-fun bm!628002 () Bool)

(assert (=> bm!628002 (= call!628007 (Exists!3885 (ite c!1283062 lambda!392319 lambda!392322)))))

(declare-fun b!6906593 () Bool)

(assert (=> b!6906593 (= e!4158714 e!4158716)))

(assert (=> b!6906593 (= c!1283062 ((_ is Star!16877) lt!2467536))))

(assert (=> b!6906594 (= e!4158720 call!628007)))

(declare-fun b!6906595 () Bool)

(declare-fun c!1283064 () Bool)

(assert (=> b!6906595 (= c!1283064 ((_ is ElementMatch!16877) lt!2467536))))

(assert (=> b!6906595 (= e!4158719 e!4158715)))

(declare-fun b!6906596 () Bool)

(assert (=> b!6906596 (= e!4158718 call!628006)))

(assert (= (and d!2162784 c!1283063) b!6906596))

(assert (= (and d!2162784 (not c!1283063)) b!6906589))

(assert (= (and b!6906589 res!2816516) b!6906595))

(assert (= (and b!6906595 c!1283064) b!6906587))

(assert (= (and b!6906595 (not c!1283064)) b!6906586))

(assert (= (and b!6906586 c!1283061) b!6906591))

(assert (= (and b!6906586 (not c!1283061)) b!6906593))

(assert (= (and b!6906591 (not res!2816515)) b!6906588))

(assert (= (and b!6906593 c!1283062) b!6906590))

(assert (= (and b!6906593 (not c!1283062)) b!6906592))

(assert (= (and b!6906590 (not res!2816517)) b!6906594))

(assert (= (or b!6906594 b!6906592) bm!628002))

(assert (= (or b!6906596 b!6906590) bm!628001))

(declare-fun m!7622874 () Bool)

(assert (=> b!6906588 m!7622874))

(declare-fun m!7622876 () Bool)

(assert (=> b!6906591 m!7622876))

(declare-fun m!7622878 () Bool)

(assert (=> bm!628001 m!7622878))

(declare-fun m!7622880 () Bool)

(assert (=> bm!628002 m!7622880))

(assert (=> b!6906284 d!2162784))

(declare-fun d!2162792 () Bool)

(assert (=> d!2162792 (= (get!23266 lt!2467537) (v!52927 lt!2467537))))

(assert (=> b!6906284 d!2162792))

(declare-fun b!6906715 () Bool)

(declare-fun res!2816578 () Bool)

(declare-fun e!4158794 () Bool)

(assert (=> b!6906715 (=> (not res!2816578) (not e!4158794))))

(declare-fun call!628023 () Bool)

(assert (=> b!6906715 (= res!2816578 (not call!628023))))

(declare-fun b!6906716 () Bool)

(declare-fun res!2816575 () Bool)

(declare-fun e!4158792 () Bool)

(assert (=> b!6906716 (=> res!2816575 e!4158792)))

(declare-fun tail!12902 (List!66634) List!66634)

(assert (=> b!6906716 (= res!2816575 (not (isEmpty!38750 (tail!12902 (_1!37047 lt!2467535)))))))

(declare-fun b!6906717 () Bool)

(declare-fun e!4158791 () Bool)

(declare-fun nullable!6718 (Regex!16877) Bool)

(assert (=> b!6906717 (= e!4158791 (nullable!6718 lt!2467536))))

(declare-fun b!6906718 () Bool)

(declare-fun res!2816580 () Bool)

(assert (=> b!6906718 (=> (not res!2816580) (not e!4158794))))

(assert (=> b!6906718 (= res!2816580 (isEmpty!38750 (tail!12902 (_1!37047 lt!2467535))))))

(declare-fun b!6906719 () Bool)

(declare-fun res!2816577 () Bool)

(declare-fun e!4158790 () Bool)

(assert (=> b!6906719 (=> res!2816577 e!4158790)))

(assert (=> b!6906719 (= res!2816577 e!4158794)))

(declare-fun res!2816576 () Bool)

(assert (=> b!6906719 (=> (not res!2816576) (not e!4158794))))

(declare-fun lt!2467601 () Bool)

(assert (=> b!6906719 (= res!2816576 lt!2467601)))

(declare-fun b!6906720 () Bool)

(declare-fun e!4158793 () Bool)

(assert (=> b!6906720 (= e!4158790 e!4158793)))

(declare-fun res!2816574 () Bool)

(assert (=> b!6906720 (=> (not res!2816574) (not e!4158793))))

(assert (=> b!6906720 (= res!2816574 (not lt!2467601))))

(declare-fun b!6906721 () Bool)

(declare-fun head!13850 (List!66634) C!34024)

(assert (=> b!6906721 (= e!4158794 (= (head!13850 (_1!37047 lt!2467535)) (c!1282991 lt!2467536)))))

(declare-fun b!6906722 () Bool)

(declare-fun res!2816581 () Bool)

(assert (=> b!6906722 (=> res!2816581 e!4158790)))

(assert (=> b!6906722 (= res!2816581 (not ((_ is ElementMatch!16877) lt!2467536)))))

(declare-fun e!4158796 () Bool)

(assert (=> b!6906722 (= e!4158796 e!4158790)))

(declare-fun b!6906723 () Bool)

(declare-fun e!4158795 () Bool)

(assert (=> b!6906723 (= e!4158795 (= lt!2467601 call!628023))))

(declare-fun bm!628018 () Bool)

(assert (=> bm!628018 (= call!628023 (isEmpty!38750 (_1!37047 lt!2467535)))))

(declare-fun b!6906724 () Bool)

(assert (=> b!6906724 (= e!4158792 (not (= (head!13850 (_1!37047 lt!2467535)) (c!1282991 lt!2467536))))))

(declare-fun d!2162794 () Bool)

(assert (=> d!2162794 e!4158795))

(declare-fun c!1283097 () Bool)

(assert (=> d!2162794 (= c!1283097 ((_ is EmptyExpr!16877) lt!2467536))))

(assert (=> d!2162794 (= lt!2467601 e!4158791)))

(declare-fun c!1283096 () Bool)

(assert (=> d!2162794 (= c!1283096 (isEmpty!38750 (_1!37047 lt!2467535)))))

(assert (=> d!2162794 (validRegex!8585 lt!2467536)))

(assert (=> d!2162794 (= (matchR!9022 lt!2467536 (_1!37047 lt!2467535)) lt!2467601)))

(declare-fun b!6906725 () Bool)

(declare-fun derivativeStep!5397 (Regex!16877 C!34024) Regex!16877)

(assert (=> b!6906725 (= e!4158791 (matchR!9022 (derivativeStep!5397 lt!2467536 (head!13850 (_1!37047 lt!2467535))) (tail!12902 (_1!37047 lt!2467535))))))

(declare-fun b!6906726 () Bool)

(assert (=> b!6906726 (= e!4158796 (not lt!2467601))))

(declare-fun b!6906727 () Bool)

(assert (=> b!6906727 (= e!4158793 e!4158792)))

(declare-fun res!2816579 () Bool)

(assert (=> b!6906727 (=> res!2816579 e!4158792)))

(assert (=> b!6906727 (= res!2816579 call!628023)))

(declare-fun b!6906728 () Bool)

(assert (=> b!6906728 (= e!4158795 e!4158796)))

(declare-fun c!1283098 () Bool)

(assert (=> b!6906728 (= c!1283098 ((_ is EmptyLang!16877) lt!2467536))))

(assert (= (and d!2162794 c!1283096) b!6906717))

(assert (= (and d!2162794 (not c!1283096)) b!6906725))

(assert (= (and d!2162794 c!1283097) b!6906723))

(assert (= (and d!2162794 (not c!1283097)) b!6906728))

(assert (= (and b!6906728 c!1283098) b!6906726))

(assert (= (and b!6906728 (not c!1283098)) b!6906722))

(assert (= (and b!6906722 (not res!2816581)) b!6906719))

(assert (= (and b!6906719 res!2816576) b!6906715))

(assert (= (and b!6906715 res!2816578) b!6906718))

(assert (= (and b!6906718 res!2816580) b!6906721))

(assert (= (and b!6906719 (not res!2816577)) b!6906720))

(assert (= (and b!6906720 res!2816574) b!6906727))

(assert (= (and b!6906727 (not res!2816579)) b!6906716))

(assert (= (and b!6906716 (not res!2816575)) b!6906724))

(assert (= (or b!6906723 b!6906715 b!6906727) bm!628018))

(assert (=> bm!628018 m!7622878))

(declare-fun m!7622974 () Bool)

(assert (=> b!6906718 m!7622974))

(assert (=> b!6906718 m!7622974))

(declare-fun m!7622976 () Bool)

(assert (=> b!6906718 m!7622976))

(assert (=> b!6906716 m!7622974))

(assert (=> b!6906716 m!7622974))

(assert (=> b!6906716 m!7622976))

(assert (=> d!2162794 m!7622878))

(assert (=> d!2162794 m!7622800))

(declare-fun m!7622978 () Bool)

(assert (=> b!6906725 m!7622978))

(assert (=> b!6906725 m!7622978))

(declare-fun m!7622980 () Bool)

(assert (=> b!6906725 m!7622980))

(assert (=> b!6906725 m!7622974))

(assert (=> b!6906725 m!7622980))

(assert (=> b!6906725 m!7622974))

(declare-fun m!7622982 () Bool)

(assert (=> b!6906725 m!7622982))

(assert (=> b!6906721 m!7622978))

(assert (=> b!6906724 m!7622978))

(declare-fun m!7622984 () Bool)

(assert (=> b!6906717 m!7622984))

(assert (=> b!6906284 d!2162794))

(declare-fun d!2162820 () Bool)

(declare-fun isEmpty!38751 (Option!16656) Bool)

(assert (=> d!2162820 (= (isDefined!13359 lt!2467537) (not (isEmpty!38751 lt!2467537)))))

(declare-fun bs!1843754 () Bool)

(assert (= bs!1843754 d!2162820))

(declare-fun m!7622986 () Bool)

(assert (=> bs!1843754 m!7622986))

(assert (=> b!6906284 d!2162820))

(declare-fun b!6906822 () Bool)

(declare-fun e!4158829 () Bool)

(declare-fun lt!2467611 () Option!16656)

(assert (=> b!6906822 (= e!4158829 (= (++!14930 (_1!37047 (get!23266 lt!2467611)) (_2!37047 (get!23266 lt!2467611))) s!14361))))

(declare-fun b!6906823 () Bool)

(declare-fun e!4158827 () Option!16656)

(assert (=> b!6906823 (= e!4158827 (Some!16655 (tuple2!67489 Nil!66510 s!14361)))))

(declare-fun b!6906824 () Bool)

(declare-fun e!4158831 () Bool)

(assert (=> b!6906824 (= e!4158831 (not (isDefined!13359 lt!2467611)))))

(declare-fun b!6906825 () Bool)

(declare-fun res!2816595 () Bool)

(assert (=> b!6906825 (=> (not res!2816595) (not e!4158829))))

(assert (=> b!6906825 (= res!2816595 (matchR!9022 lt!2467536 (_1!37047 (get!23266 lt!2467611))))))

(declare-fun b!6906826 () Bool)

(declare-fun res!2816596 () Bool)

(assert (=> b!6906826 (=> (not res!2816596) (not e!4158829))))

(assert (=> b!6906826 (= res!2816596 (matchR!9022 r3!135 (_2!37047 (get!23266 lt!2467611))))))

(declare-fun d!2162822 () Bool)

(assert (=> d!2162822 e!4158831))

(declare-fun res!2816593 () Bool)

(assert (=> d!2162822 (=> res!2816593 e!4158831)))

(assert (=> d!2162822 (= res!2816593 e!4158829)))

(declare-fun res!2816594 () Bool)

(assert (=> d!2162822 (=> (not res!2816594) (not e!4158829))))

(assert (=> d!2162822 (= res!2816594 (isDefined!13359 lt!2467611))))

(assert (=> d!2162822 (= lt!2467611 e!4158827)))

(declare-fun c!1283103 () Bool)

(declare-fun e!4158828 () Bool)

(assert (=> d!2162822 (= c!1283103 e!4158828)))

(declare-fun res!2816592 () Bool)

(assert (=> d!2162822 (=> (not res!2816592) (not e!4158828))))

(assert (=> d!2162822 (= res!2816592 (matchR!9022 lt!2467536 Nil!66510))))

(assert (=> d!2162822 (validRegex!8585 lt!2467536)))

(assert (=> d!2162822 (= (findConcatSeparation!3070 lt!2467536 r3!135 Nil!66510 s!14361 s!14361) lt!2467611)))

(declare-fun b!6906827 () Bool)

(assert (=> b!6906827 (= e!4158828 (matchR!9022 r3!135 s!14361))))

(declare-fun b!6906828 () Bool)

(declare-fun lt!2467610 () Unit!160490)

(declare-fun lt!2467612 () Unit!160490)

(assert (=> b!6906828 (= lt!2467610 lt!2467612)))

(assert (=> b!6906828 (= (++!14930 (++!14930 Nil!66510 (Cons!66510 (h!72958 s!14361) Nil!66510)) (t!380377 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2805 (List!66634 C!34024 List!66634 List!66634) Unit!160490)

(assert (=> b!6906828 (= lt!2467612 (lemmaMoveElementToOtherListKeepsConcatEq!2805 Nil!66510 (h!72958 s!14361) (t!380377 s!14361) s!14361))))

(declare-fun e!4158830 () Option!16656)

(assert (=> b!6906828 (= e!4158830 (findConcatSeparation!3070 lt!2467536 r3!135 (++!14930 Nil!66510 (Cons!66510 (h!72958 s!14361) Nil!66510)) (t!380377 s!14361) s!14361))))

(declare-fun b!6906829 () Bool)

(assert (=> b!6906829 (= e!4158830 None!16655)))

(declare-fun b!6906830 () Bool)

(assert (=> b!6906830 (= e!4158827 e!4158830)))

(declare-fun c!1283104 () Bool)

(assert (=> b!6906830 (= c!1283104 ((_ is Nil!66510) s!14361))))

(assert (= (and d!2162822 res!2816592) b!6906827))

(assert (= (and d!2162822 c!1283103) b!6906823))

(assert (= (and d!2162822 (not c!1283103)) b!6906830))

(assert (= (and b!6906830 c!1283104) b!6906829))

(assert (= (and b!6906830 (not c!1283104)) b!6906828))

(assert (= (and d!2162822 res!2816594) b!6906825))

(assert (= (and b!6906825 res!2816595) b!6906826))

(assert (= (and b!6906826 res!2816596) b!6906822))

(assert (= (and d!2162822 (not res!2816593)) b!6906824))

(declare-fun m!7623004 () Bool)

(assert (=> d!2162822 m!7623004))

(declare-fun m!7623006 () Bool)

(assert (=> d!2162822 m!7623006))

(assert (=> d!2162822 m!7622800))

(declare-fun m!7623008 () Bool)

(assert (=> b!6906826 m!7623008))

(declare-fun m!7623010 () Bool)

(assert (=> b!6906826 m!7623010))

(declare-fun m!7623012 () Bool)

(assert (=> b!6906828 m!7623012))

(assert (=> b!6906828 m!7623012))

(declare-fun m!7623014 () Bool)

(assert (=> b!6906828 m!7623014))

(declare-fun m!7623016 () Bool)

(assert (=> b!6906828 m!7623016))

(assert (=> b!6906828 m!7623012))

(declare-fun m!7623018 () Bool)

(assert (=> b!6906828 m!7623018))

(assert (=> b!6906822 m!7623008))

(declare-fun m!7623020 () Bool)

(assert (=> b!6906822 m!7623020))

(declare-fun m!7623022 () Bool)

(assert (=> b!6906827 m!7623022))

(assert (=> b!6906825 m!7623008))

(declare-fun m!7623024 () Bool)

(assert (=> b!6906825 m!7623024))

(assert (=> b!6906824 m!7623004))

(assert (=> b!6906284 d!2162822))

(declare-fun bs!1843774 () Bool)

(declare-fun d!2162830 () Bool)

(assert (= bs!1843774 (and d!2162830 b!6906287)))

(declare-fun lambda!392334 () Int)

(assert (=> bs!1843774 (not (= lambda!392334 lambda!392290))))

(declare-fun bs!1843775 () Bool)

(assert (= bs!1843775 (and d!2162830 b!6906422)))

(assert (=> bs!1843775 (not (= lambda!392334 lambda!392304))))

(declare-fun bs!1843776 () Bool)

(assert (= bs!1843776 (and d!2162830 b!6906380)))

(assert (=> bs!1843776 (not (= lambda!392334 lambda!392299))))

(declare-fun bs!1843777 () Bool)

(assert (= bs!1843777 (and d!2162830 d!2162770)))

(assert (=> bs!1843777 (= lambda!392334 lambda!392318)))

(declare-fun bs!1843778 () Bool)

(assert (= bs!1843778 (and d!2162830 b!6906592)))

(assert (=> bs!1843778 (not (= lambda!392334 lambda!392322))))

(declare-fun bs!1843779 () Bool)

(assert (= bs!1843779 (and d!2162830 b!6906594)))

(assert (=> bs!1843779 (not (= lambda!392334 lambda!392319))))

(declare-fun bs!1843780 () Bool)

(assert (= bs!1843780 (and d!2162830 b!6906284)))

(assert (=> bs!1843780 (not (= lambda!392334 lambda!392288))))

(assert (=> bs!1843780 (= lambda!392334 lambda!392287)))

(assert (=> bs!1843774 (= (and (= s!14361 (_1!37047 lt!2467535)) (= lt!2467536 r1!6342) (= r3!135 r2!6280)) (= lambda!392334 lambda!392289))))

(declare-fun bs!1843781 () Bool)

(assert (= bs!1843781 (and d!2162830 b!6906420)))

(assert (=> bs!1843781 (not (= lambda!392334 lambda!392307))))

(declare-fun bs!1843782 () Bool)

(assert (= bs!1843782 (and d!2162830 b!6906382)))

(assert (=> bs!1843782 (not (= lambda!392334 lambda!392298))))

(assert (=> d!2162830 true))

(assert (=> d!2162830 true))

(assert (=> d!2162830 true))

(declare-fun lambda!392335 () Int)

(assert (=> bs!1843774 (= (and (= s!14361 (_1!37047 lt!2467535)) (= lt!2467536 r1!6342) (= r3!135 r2!6280)) (= lambda!392335 lambda!392290))))

(assert (=> bs!1843775 (not (= lambda!392335 lambda!392304))))

(assert (=> bs!1843776 (= (and (= s!14361 (_1!37047 lt!2467549)) (= lt!2467536 (regOne!34266 r1!6342)) (= r3!135 (regTwo!34266 r1!6342))) (= lambda!392335 lambda!392299))))

(assert (=> bs!1843777 (not (= lambda!392335 lambda!392318))))

(assert (=> bs!1843778 (= (and (= s!14361 (_1!37047 lt!2467535)) (= lt!2467536 (regOne!34266 lt!2467536)) (= r3!135 (regTwo!34266 lt!2467536))) (= lambda!392335 lambda!392322))))

(assert (=> bs!1843779 (not (= lambda!392335 lambda!392319))))

(declare-fun bs!1843783 () Bool)

(assert (= bs!1843783 d!2162830))

(assert (=> bs!1843783 (not (= lambda!392335 lambda!392334))))

(assert (=> bs!1843780 (= lambda!392335 lambda!392288)))

(assert (=> bs!1843780 (not (= lambda!392335 lambda!392287))))

(assert (=> bs!1843774 (not (= lambda!392335 lambda!392289))))

(assert (=> bs!1843781 (= (and (= s!14361 (_2!37047 lt!2467549)) (= lt!2467536 (regOne!34266 r2!6280)) (= r3!135 (regTwo!34266 r2!6280))) (= lambda!392335 lambda!392307))))

(assert (=> bs!1843782 (not (= lambda!392335 lambda!392298))))

(assert (=> d!2162830 true))

(assert (=> d!2162830 true))

(assert (=> d!2162830 true))

(assert (=> d!2162830 (= (Exists!3885 lambda!392334) (Exists!3885 lambda!392335))))

(declare-fun lt!2467615 () Unit!160490)

(declare-fun choose!51435 (Regex!16877 Regex!16877 List!66634) Unit!160490)

(assert (=> d!2162830 (= lt!2467615 (choose!51435 lt!2467536 r3!135 s!14361))))

(assert (=> d!2162830 (validRegex!8585 lt!2467536)))

(assert (=> d!2162830 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2358 lt!2467536 r3!135 s!14361) lt!2467615)))

(declare-fun m!7623026 () Bool)

(assert (=> bs!1843783 m!7623026))

(declare-fun m!7623028 () Bool)

(assert (=> bs!1843783 m!7623028))

(declare-fun m!7623030 () Bool)

(assert (=> bs!1843783 m!7623030))

(assert (=> bs!1843783 m!7622800))

(assert (=> b!6906284 d!2162830))

(declare-fun bm!628025 () Bool)

(declare-fun call!628030 () Bool)

(declare-fun c!1283110 () Bool)

(assert (=> bm!628025 (= call!628030 (validRegex!8585 (ite c!1283110 (regOne!34267 r3!135) (regTwo!34266 r3!135))))))

(declare-fun d!2162832 () Bool)

(declare-fun res!2816616 () Bool)

(declare-fun e!4158855 () Bool)

(assert (=> d!2162832 (=> res!2816616 e!4158855)))

(assert (=> d!2162832 (= res!2816616 ((_ is ElementMatch!16877) r3!135))))

(assert (=> d!2162832 (= (validRegex!8585 r3!135) e!4158855)))

(declare-fun b!6906857 () Bool)

(declare-fun e!4158856 () Bool)

(declare-fun call!628032 () Bool)

(assert (=> b!6906857 (= e!4158856 call!628032)))

(declare-fun b!6906858 () Bool)

(declare-fun res!2816619 () Bool)

(assert (=> b!6906858 (=> (not res!2816619) (not e!4158856))))

(assert (=> b!6906858 (= res!2816619 call!628030)))

(declare-fun e!4158850 () Bool)

(assert (=> b!6906858 (= e!4158850 e!4158856)))

(declare-fun c!1283109 () Bool)

(declare-fun bm!628026 () Bool)

(declare-fun call!628031 () Bool)

(assert (=> bm!628026 (= call!628031 (validRegex!8585 (ite c!1283109 (reg!17206 r3!135) (ite c!1283110 (regTwo!34267 r3!135) (regOne!34266 r3!135)))))))

(declare-fun b!6906859 () Bool)

(declare-fun e!4158853 () Bool)

(assert (=> b!6906859 (= e!4158853 call!628030)))

(declare-fun b!6906860 () Bool)

(declare-fun e!4158851 () Bool)

(assert (=> b!6906860 (= e!4158851 call!628031)))

(declare-fun b!6906861 () Bool)

(declare-fun res!2816615 () Bool)

(declare-fun e!4158852 () Bool)

(assert (=> b!6906861 (=> res!2816615 e!4158852)))

(assert (=> b!6906861 (= res!2816615 (not ((_ is Concat!25722) r3!135)))))

(assert (=> b!6906861 (= e!4158850 e!4158852)))

(declare-fun b!6906862 () Bool)

(assert (=> b!6906862 (= e!4158852 e!4158853)))

(declare-fun res!2816617 () Bool)

(assert (=> b!6906862 (=> (not res!2816617) (not e!4158853))))

(assert (=> b!6906862 (= res!2816617 call!628032)))

(declare-fun b!6906863 () Bool)

(declare-fun e!4158854 () Bool)

(assert (=> b!6906863 (= e!4158854 e!4158851)))

(declare-fun res!2816618 () Bool)

(assert (=> b!6906863 (= res!2816618 (not (nullable!6718 (reg!17206 r3!135))))))

(assert (=> b!6906863 (=> (not res!2816618) (not e!4158851))))

(declare-fun b!6906864 () Bool)

(assert (=> b!6906864 (= e!4158854 e!4158850)))

(assert (=> b!6906864 (= c!1283110 ((_ is Union!16877) r3!135))))

(declare-fun b!6906865 () Bool)

(assert (=> b!6906865 (= e!4158855 e!4158854)))

(assert (=> b!6906865 (= c!1283109 ((_ is Star!16877) r3!135))))

(declare-fun bm!628027 () Bool)

(assert (=> bm!628027 (= call!628032 call!628031)))

(assert (= (and d!2162832 (not res!2816616)) b!6906865))

(assert (= (and b!6906865 c!1283109) b!6906863))

(assert (= (and b!6906865 (not c!1283109)) b!6906864))

(assert (= (and b!6906863 res!2816618) b!6906860))

(assert (= (and b!6906864 c!1283110) b!6906858))

(assert (= (and b!6906864 (not c!1283110)) b!6906861))

(assert (= (and b!6906858 res!2816619) b!6906857))

(assert (= (and b!6906861 (not res!2816615)) b!6906862))

(assert (= (and b!6906862 res!2816617) b!6906859))

(assert (= (or b!6906858 b!6906859) bm!628025))

(assert (= (or b!6906857 b!6906862) bm!628027))

(assert (= (or b!6906860 bm!628027) bm!628026))

(declare-fun m!7623032 () Bool)

(assert (=> bm!628025 m!7623032))

(declare-fun m!7623034 () Bool)

(assert (=> bm!628026 m!7623034))

(declare-fun m!7623036 () Bool)

(assert (=> b!6906863 m!7623036))

(assert (=> b!6906285 d!2162832))

(declare-fun b!6906866 () Bool)

(declare-fun res!2816624 () Bool)

(declare-fun e!4158861 () Bool)

(assert (=> b!6906866 (=> (not res!2816624) (not e!4158861))))

(declare-fun call!628033 () Bool)

(assert (=> b!6906866 (= res!2816624 (not call!628033))))

(declare-fun b!6906867 () Bool)

(declare-fun res!2816621 () Bool)

(declare-fun e!4158859 () Bool)

(assert (=> b!6906867 (=> res!2816621 e!4158859)))

(assert (=> b!6906867 (= res!2816621 (not (isEmpty!38750 (tail!12902 (_2!37047 lt!2467535)))))))

(declare-fun b!6906868 () Bool)

(declare-fun e!4158858 () Bool)

(assert (=> b!6906868 (= e!4158858 (nullable!6718 r3!135))))

(declare-fun b!6906869 () Bool)

(declare-fun res!2816626 () Bool)

(assert (=> b!6906869 (=> (not res!2816626) (not e!4158861))))

(assert (=> b!6906869 (= res!2816626 (isEmpty!38750 (tail!12902 (_2!37047 lt!2467535))))))

(declare-fun b!6906870 () Bool)

(declare-fun res!2816623 () Bool)

(declare-fun e!4158857 () Bool)

(assert (=> b!6906870 (=> res!2816623 e!4158857)))

(assert (=> b!6906870 (= res!2816623 e!4158861)))

(declare-fun res!2816622 () Bool)

(assert (=> b!6906870 (=> (not res!2816622) (not e!4158861))))

(declare-fun lt!2467616 () Bool)

(assert (=> b!6906870 (= res!2816622 lt!2467616)))

(declare-fun b!6906871 () Bool)

(declare-fun e!4158860 () Bool)

(assert (=> b!6906871 (= e!4158857 e!4158860)))

(declare-fun res!2816620 () Bool)

(assert (=> b!6906871 (=> (not res!2816620) (not e!4158860))))

(assert (=> b!6906871 (= res!2816620 (not lt!2467616))))

(declare-fun b!6906872 () Bool)

(assert (=> b!6906872 (= e!4158861 (= (head!13850 (_2!37047 lt!2467535)) (c!1282991 r3!135)))))

(declare-fun b!6906873 () Bool)

(declare-fun res!2816627 () Bool)

(assert (=> b!6906873 (=> res!2816627 e!4158857)))

(assert (=> b!6906873 (= res!2816627 (not ((_ is ElementMatch!16877) r3!135)))))

(declare-fun e!4158863 () Bool)

(assert (=> b!6906873 (= e!4158863 e!4158857)))

(declare-fun b!6906874 () Bool)

(declare-fun e!4158862 () Bool)

(assert (=> b!6906874 (= e!4158862 (= lt!2467616 call!628033))))

(declare-fun bm!628028 () Bool)

(assert (=> bm!628028 (= call!628033 (isEmpty!38750 (_2!37047 lt!2467535)))))

(declare-fun b!6906875 () Bool)

(assert (=> b!6906875 (= e!4158859 (not (= (head!13850 (_2!37047 lt!2467535)) (c!1282991 r3!135))))))

(declare-fun d!2162834 () Bool)

(assert (=> d!2162834 e!4158862))

(declare-fun c!1283112 () Bool)

(assert (=> d!2162834 (= c!1283112 ((_ is EmptyExpr!16877) r3!135))))

(assert (=> d!2162834 (= lt!2467616 e!4158858)))

(declare-fun c!1283111 () Bool)

(assert (=> d!2162834 (= c!1283111 (isEmpty!38750 (_2!37047 lt!2467535)))))

(assert (=> d!2162834 (validRegex!8585 r3!135)))

(assert (=> d!2162834 (= (matchR!9022 r3!135 (_2!37047 lt!2467535)) lt!2467616)))

(declare-fun b!6906876 () Bool)

(assert (=> b!6906876 (= e!4158858 (matchR!9022 (derivativeStep!5397 r3!135 (head!13850 (_2!37047 lt!2467535))) (tail!12902 (_2!37047 lt!2467535))))))

(declare-fun b!6906877 () Bool)

(assert (=> b!6906877 (= e!4158863 (not lt!2467616))))

(declare-fun b!6906878 () Bool)

(assert (=> b!6906878 (= e!4158860 e!4158859)))

(declare-fun res!2816625 () Bool)

(assert (=> b!6906878 (=> res!2816625 e!4158859)))

(assert (=> b!6906878 (= res!2816625 call!628033)))

(declare-fun b!6906879 () Bool)

(assert (=> b!6906879 (= e!4158862 e!4158863)))

(declare-fun c!1283113 () Bool)

(assert (=> b!6906879 (= c!1283113 ((_ is EmptyLang!16877) r3!135))))

(assert (= (and d!2162834 c!1283111) b!6906868))

(assert (= (and d!2162834 (not c!1283111)) b!6906876))

(assert (= (and d!2162834 c!1283112) b!6906874))

(assert (= (and d!2162834 (not c!1283112)) b!6906879))

(assert (= (and b!6906879 c!1283113) b!6906877))

(assert (= (and b!6906879 (not c!1283113)) b!6906873))

(assert (= (and b!6906873 (not res!2816627)) b!6906870))

(assert (= (and b!6906870 res!2816622) b!6906866))

(assert (= (and b!6906866 res!2816624) b!6906869))

(assert (= (and b!6906869 res!2816626) b!6906872))

(assert (= (and b!6906870 (not res!2816623)) b!6906871))

(assert (= (and b!6906871 res!2816620) b!6906878))

(assert (= (and b!6906878 (not res!2816625)) b!6906867))

(assert (= (and b!6906867 (not res!2816621)) b!6906875))

(assert (= (or b!6906874 b!6906866 b!6906878) bm!628028))

(declare-fun m!7623038 () Bool)

(assert (=> bm!628028 m!7623038))

(declare-fun m!7623040 () Bool)

(assert (=> b!6906869 m!7623040))

(assert (=> b!6906869 m!7623040))

(declare-fun m!7623042 () Bool)

(assert (=> b!6906869 m!7623042))

(assert (=> b!6906867 m!7623040))

(assert (=> b!6906867 m!7623040))

(assert (=> b!6906867 m!7623042))

(assert (=> d!2162834 m!7623038))

(assert (=> d!2162834 m!7622632))

(declare-fun m!7623044 () Bool)

(assert (=> b!6906876 m!7623044))

(assert (=> b!6906876 m!7623044))

(declare-fun m!7623046 () Bool)

(assert (=> b!6906876 m!7623046))

(assert (=> b!6906876 m!7623040))

(assert (=> b!6906876 m!7623046))

(assert (=> b!6906876 m!7623040))

(declare-fun m!7623048 () Bool)

(assert (=> b!6906876 m!7623048))

(assert (=> b!6906872 m!7623044))

(assert (=> b!6906875 m!7623044))

(declare-fun m!7623050 () Bool)

(assert (=> b!6906868 m!7623050))

(assert (=> b!6906286 d!2162834))

(declare-fun bm!628029 () Bool)

(declare-fun call!628034 () Bool)

(declare-fun c!1283115 () Bool)

(assert (=> bm!628029 (= call!628034 (validRegex!8585 (ite c!1283115 (regOne!34267 r1!6342) (regTwo!34266 r1!6342))))))

(declare-fun d!2162836 () Bool)

(declare-fun res!2816629 () Bool)

(declare-fun e!4158869 () Bool)

(assert (=> d!2162836 (=> res!2816629 e!4158869)))

(assert (=> d!2162836 (= res!2816629 ((_ is ElementMatch!16877) r1!6342))))

(assert (=> d!2162836 (= (validRegex!8585 r1!6342) e!4158869)))

(declare-fun b!6906880 () Bool)

(declare-fun e!4158870 () Bool)

(declare-fun call!628036 () Bool)

(assert (=> b!6906880 (= e!4158870 call!628036)))

(declare-fun b!6906881 () Bool)

(declare-fun res!2816632 () Bool)

(assert (=> b!6906881 (=> (not res!2816632) (not e!4158870))))

(assert (=> b!6906881 (= res!2816632 call!628034)))

(declare-fun e!4158864 () Bool)

(assert (=> b!6906881 (= e!4158864 e!4158870)))

(declare-fun call!628035 () Bool)

(declare-fun c!1283114 () Bool)

(declare-fun bm!628030 () Bool)

(assert (=> bm!628030 (= call!628035 (validRegex!8585 (ite c!1283114 (reg!17206 r1!6342) (ite c!1283115 (regTwo!34267 r1!6342) (regOne!34266 r1!6342)))))))

(declare-fun b!6906882 () Bool)

(declare-fun e!4158867 () Bool)

(assert (=> b!6906882 (= e!4158867 call!628034)))

(declare-fun b!6906883 () Bool)

(declare-fun e!4158865 () Bool)

(assert (=> b!6906883 (= e!4158865 call!628035)))

(declare-fun b!6906884 () Bool)

(declare-fun res!2816628 () Bool)

(declare-fun e!4158866 () Bool)

(assert (=> b!6906884 (=> res!2816628 e!4158866)))

(assert (=> b!6906884 (= res!2816628 (not ((_ is Concat!25722) r1!6342)))))

(assert (=> b!6906884 (= e!4158864 e!4158866)))

(declare-fun b!6906885 () Bool)

(assert (=> b!6906885 (= e!4158866 e!4158867)))

(declare-fun res!2816630 () Bool)

(assert (=> b!6906885 (=> (not res!2816630) (not e!4158867))))

(assert (=> b!6906885 (= res!2816630 call!628036)))

(declare-fun b!6906886 () Bool)

(declare-fun e!4158868 () Bool)

(assert (=> b!6906886 (= e!4158868 e!4158865)))

(declare-fun res!2816631 () Bool)

(assert (=> b!6906886 (= res!2816631 (not (nullable!6718 (reg!17206 r1!6342))))))

(assert (=> b!6906886 (=> (not res!2816631) (not e!4158865))))

(declare-fun b!6906887 () Bool)

(assert (=> b!6906887 (= e!4158868 e!4158864)))

(assert (=> b!6906887 (= c!1283115 ((_ is Union!16877) r1!6342))))

(declare-fun b!6906888 () Bool)

(assert (=> b!6906888 (= e!4158869 e!4158868)))

(assert (=> b!6906888 (= c!1283114 ((_ is Star!16877) r1!6342))))

(declare-fun bm!628031 () Bool)

(assert (=> bm!628031 (= call!628036 call!628035)))

(assert (= (and d!2162836 (not res!2816629)) b!6906888))

(assert (= (and b!6906888 c!1283114) b!6906886))

(assert (= (and b!6906888 (not c!1283114)) b!6906887))

(assert (= (and b!6906886 res!2816631) b!6906883))

(assert (= (and b!6906887 c!1283115) b!6906881))

(assert (= (and b!6906887 (not c!1283115)) b!6906884))

(assert (= (and b!6906881 res!2816632) b!6906880))

(assert (= (and b!6906884 (not res!2816628)) b!6906885))

(assert (= (and b!6906885 res!2816630) b!6906882))

(assert (= (or b!6906881 b!6906882) bm!628029))

(assert (= (or b!6906880 b!6906885) bm!628031))

(assert (= (or b!6906883 bm!628031) bm!628030))

(declare-fun m!7623052 () Bool)

(assert (=> bm!628029 m!7623052))

(declare-fun m!7623054 () Bool)

(assert (=> bm!628030 m!7623054))

(declare-fun m!7623056 () Bool)

(assert (=> b!6906886 m!7623056))

(assert (=> start!664970 d!2162836))

(declare-fun d!2162838 () Bool)

(assert (=> d!2162838 (= (isDefined!13359 lt!2467547) (not (isEmpty!38751 lt!2467547)))))

(declare-fun bs!1843784 () Bool)

(assert (= bs!1843784 d!2162838))

(declare-fun m!7623058 () Bool)

(assert (=> bs!1843784 m!7623058))

(assert (=> b!6906287 d!2162838))

(declare-fun b!6906889 () Bool)

(declare-fun res!2816637 () Bool)

(declare-fun e!4158875 () Bool)

(assert (=> b!6906889 (=> (not res!2816637) (not e!4158875))))

(declare-fun call!628037 () Bool)

(assert (=> b!6906889 (= res!2816637 (not call!628037))))

(declare-fun b!6906890 () Bool)

(declare-fun res!2816634 () Bool)

(declare-fun e!4158873 () Bool)

(assert (=> b!6906890 (=> res!2816634 e!4158873)))

(assert (=> b!6906890 (= res!2816634 (not (isEmpty!38750 (tail!12902 (_1!37047 lt!2467549)))))))

(declare-fun b!6906891 () Bool)

(declare-fun e!4158872 () Bool)

(assert (=> b!6906891 (= e!4158872 (nullable!6718 r1!6342))))

(declare-fun b!6906892 () Bool)

(declare-fun res!2816639 () Bool)

(assert (=> b!6906892 (=> (not res!2816639) (not e!4158875))))

(assert (=> b!6906892 (= res!2816639 (isEmpty!38750 (tail!12902 (_1!37047 lt!2467549))))))

(declare-fun b!6906893 () Bool)

(declare-fun res!2816636 () Bool)

(declare-fun e!4158871 () Bool)

(assert (=> b!6906893 (=> res!2816636 e!4158871)))

(assert (=> b!6906893 (= res!2816636 e!4158875)))

(declare-fun res!2816635 () Bool)

(assert (=> b!6906893 (=> (not res!2816635) (not e!4158875))))

(declare-fun lt!2467617 () Bool)

(assert (=> b!6906893 (= res!2816635 lt!2467617)))

(declare-fun b!6906894 () Bool)

(declare-fun e!4158874 () Bool)

(assert (=> b!6906894 (= e!4158871 e!4158874)))

(declare-fun res!2816633 () Bool)

(assert (=> b!6906894 (=> (not res!2816633) (not e!4158874))))

(assert (=> b!6906894 (= res!2816633 (not lt!2467617))))

(declare-fun b!6906895 () Bool)

(assert (=> b!6906895 (= e!4158875 (= (head!13850 (_1!37047 lt!2467549)) (c!1282991 r1!6342)))))

(declare-fun b!6906896 () Bool)

(declare-fun res!2816640 () Bool)

(assert (=> b!6906896 (=> res!2816640 e!4158871)))

(assert (=> b!6906896 (= res!2816640 (not ((_ is ElementMatch!16877) r1!6342)))))

(declare-fun e!4158877 () Bool)

(assert (=> b!6906896 (= e!4158877 e!4158871)))

(declare-fun b!6906897 () Bool)

(declare-fun e!4158876 () Bool)

(assert (=> b!6906897 (= e!4158876 (= lt!2467617 call!628037))))

(declare-fun bm!628032 () Bool)

(assert (=> bm!628032 (= call!628037 (isEmpty!38750 (_1!37047 lt!2467549)))))

(declare-fun b!6906898 () Bool)

(assert (=> b!6906898 (= e!4158873 (not (= (head!13850 (_1!37047 lt!2467549)) (c!1282991 r1!6342))))))

(declare-fun d!2162840 () Bool)

(assert (=> d!2162840 e!4158876))

(declare-fun c!1283117 () Bool)

(assert (=> d!2162840 (= c!1283117 ((_ is EmptyExpr!16877) r1!6342))))

(assert (=> d!2162840 (= lt!2467617 e!4158872)))

(declare-fun c!1283116 () Bool)

(assert (=> d!2162840 (= c!1283116 (isEmpty!38750 (_1!37047 lt!2467549)))))

(assert (=> d!2162840 (validRegex!8585 r1!6342)))

(assert (=> d!2162840 (= (matchR!9022 r1!6342 (_1!37047 lt!2467549)) lt!2467617)))

(declare-fun b!6906899 () Bool)

(assert (=> b!6906899 (= e!4158872 (matchR!9022 (derivativeStep!5397 r1!6342 (head!13850 (_1!37047 lt!2467549))) (tail!12902 (_1!37047 lt!2467549))))))

(declare-fun b!6906900 () Bool)

(assert (=> b!6906900 (= e!4158877 (not lt!2467617))))

(declare-fun b!6906901 () Bool)

(assert (=> b!6906901 (= e!4158874 e!4158873)))

(declare-fun res!2816638 () Bool)

(assert (=> b!6906901 (=> res!2816638 e!4158873)))

(assert (=> b!6906901 (= res!2816638 call!628037)))

(declare-fun b!6906902 () Bool)

(assert (=> b!6906902 (= e!4158876 e!4158877)))

(declare-fun c!1283118 () Bool)

(assert (=> b!6906902 (= c!1283118 ((_ is EmptyLang!16877) r1!6342))))

(assert (= (and d!2162840 c!1283116) b!6906891))

(assert (= (and d!2162840 (not c!1283116)) b!6906899))

(assert (= (and d!2162840 c!1283117) b!6906897))

(assert (= (and d!2162840 (not c!1283117)) b!6906902))

(assert (= (and b!6906902 c!1283118) b!6906900))

(assert (= (and b!6906902 (not c!1283118)) b!6906896))

(assert (= (and b!6906896 (not res!2816640)) b!6906893))

(assert (= (and b!6906893 res!2816635) b!6906889))

(assert (= (and b!6906889 res!2816637) b!6906892))

(assert (= (and b!6906892 res!2816639) b!6906895))

(assert (= (and b!6906893 (not res!2816636)) b!6906894))

(assert (= (and b!6906894 res!2816633) b!6906901))

(assert (= (and b!6906901 (not res!2816638)) b!6906890))

(assert (= (and b!6906890 (not res!2816634)) b!6906898))

(assert (= (or b!6906897 b!6906889 b!6906901) bm!628032))

(assert (=> bm!628032 m!7622724))

(declare-fun m!7623060 () Bool)

(assert (=> b!6906892 m!7623060))

(assert (=> b!6906892 m!7623060))

(declare-fun m!7623062 () Bool)

(assert (=> b!6906892 m!7623062))

(assert (=> b!6906890 m!7623060))

(assert (=> b!6906890 m!7623060))

(assert (=> b!6906890 m!7623062))

(assert (=> d!2162840 m!7622724))

(assert (=> d!2162840 m!7622654))

(declare-fun m!7623064 () Bool)

(assert (=> b!6906899 m!7623064))

(assert (=> b!6906899 m!7623064))

(declare-fun m!7623066 () Bool)

(assert (=> b!6906899 m!7623066))

(assert (=> b!6906899 m!7623060))

(assert (=> b!6906899 m!7623066))

(assert (=> b!6906899 m!7623060))

(declare-fun m!7623068 () Bool)

(assert (=> b!6906899 m!7623068))

(assert (=> b!6906895 m!7623064))

(assert (=> b!6906898 m!7623064))

(declare-fun m!7623070 () Bool)

(assert (=> b!6906891 m!7623070))

(assert (=> b!6906287 d!2162840))

(declare-fun bs!1843785 () Bool)

(declare-fun d!2162842 () Bool)

(assert (= bs!1843785 (and d!2162842 b!6906287)))

(declare-fun lambda!392336 () Int)

(assert (=> bs!1843785 (not (= lambda!392336 lambda!392290))))

(declare-fun bs!1843786 () Bool)

(assert (= bs!1843786 (and d!2162842 b!6906422)))

(assert (=> bs!1843786 (not (= lambda!392336 lambda!392304))))

(declare-fun bs!1843787 () Bool)

(assert (= bs!1843787 (and d!2162842 b!6906380)))

(assert (=> bs!1843787 (not (= lambda!392336 lambda!392299))))

(declare-fun bs!1843788 () Bool)

(assert (= bs!1843788 (and d!2162842 d!2162770)))

(assert (=> bs!1843788 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392336 lambda!392318))))

(declare-fun bs!1843789 () Bool)

(assert (= bs!1843789 (and d!2162842 b!6906592)))

(assert (=> bs!1843789 (not (= lambda!392336 lambda!392322))))

(declare-fun bs!1843790 () Bool)

(assert (= bs!1843790 (and d!2162842 b!6906594)))

(assert (=> bs!1843790 (not (= lambda!392336 lambda!392319))))

(declare-fun bs!1843791 () Bool)

(assert (= bs!1843791 (and d!2162842 d!2162830)))

(assert (=> bs!1843791 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392336 lambda!392334))))

(assert (=> bs!1843791 (not (= lambda!392336 lambda!392335))))

(declare-fun bs!1843792 () Bool)

(assert (= bs!1843792 (and d!2162842 b!6906284)))

(assert (=> bs!1843792 (not (= lambda!392336 lambda!392288))))

(assert (=> bs!1843792 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392336 lambda!392287))))

(assert (=> bs!1843785 (= lambda!392336 lambda!392289)))

(declare-fun bs!1843793 () Bool)

(assert (= bs!1843793 (and d!2162842 b!6906420)))

(assert (=> bs!1843793 (not (= lambda!392336 lambda!392307))))

(declare-fun bs!1843794 () Bool)

(assert (= bs!1843794 (and d!2162842 b!6906382)))

(assert (=> bs!1843794 (not (= lambda!392336 lambda!392298))))

(assert (=> d!2162842 true))

(assert (=> d!2162842 true))

(assert (=> d!2162842 true))

(assert (=> d!2162842 (= (isDefined!13359 (findConcatSeparation!3070 r1!6342 r2!6280 Nil!66510 (_1!37047 lt!2467535) (_1!37047 lt!2467535))) (Exists!3885 lambda!392336))))

(declare-fun lt!2467618 () Unit!160490)

(assert (=> d!2162842 (= lt!2467618 (choose!51434 r1!6342 r2!6280 (_1!37047 lt!2467535)))))

(assert (=> d!2162842 (validRegex!8585 r1!6342)))

(assert (=> d!2162842 (= (lemmaFindConcatSeparationEquivalentToExists!2832 r1!6342 r2!6280 (_1!37047 lt!2467535)) lt!2467618)))

(declare-fun bs!1843795 () Bool)

(assert (= bs!1843795 d!2162842))

(assert (=> bs!1843795 m!7622654))

(declare-fun m!7623072 () Bool)

(assert (=> bs!1843795 m!7623072))

(declare-fun m!7623074 () Bool)

(assert (=> bs!1843795 m!7623074))

(assert (=> bs!1843795 m!7622630))

(assert (=> bs!1843795 m!7622630))

(declare-fun m!7623076 () Bool)

(assert (=> bs!1843795 m!7623076))

(assert (=> b!6906287 d!2162842))

(declare-fun d!2162844 () Bool)

(assert (=> d!2162844 (= (get!23266 lt!2467547) (v!52927 lt!2467547))))

(assert (=> b!6906287 d!2162844))

(declare-fun bs!1843796 () Bool)

(declare-fun d!2162846 () Bool)

(assert (= bs!1843796 (and d!2162846 b!6906287)))

(declare-fun lambda!392337 () Int)

(assert (=> bs!1843796 (not (= lambda!392337 lambda!392290))))

(declare-fun bs!1843797 () Bool)

(assert (= bs!1843797 (and d!2162846 b!6906422)))

(assert (=> bs!1843797 (not (= lambda!392337 lambda!392304))))

(declare-fun bs!1843798 () Bool)

(assert (= bs!1843798 (and d!2162846 b!6906380)))

(assert (=> bs!1843798 (not (= lambda!392337 lambda!392299))))

(declare-fun bs!1843799 () Bool)

(assert (= bs!1843799 (and d!2162846 d!2162770)))

(assert (=> bs!1843799 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392337 lambda!392318))))

(declare-fun bs!1843800 () Bool)

(assert (= bs!1843800 (and d!2162846 b!6906592)))

(assert (=> bs!1843800 (not (= lambda!392337 lambda!392322))))

(declare-fun bs!1843801 () Bool)

(assert (= bs!1843801 (and d!2162846 b!6906594)))

(assert (=> bs!1843801 (not (= lambda!392337 lambda!392319))))

(declare-fun bs!1843802 () Bool)

(assert (= bs!1843802 (and d!2162846 d!2162830)))

(assert (=> bs!1843802 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392337 lambda!392334))))

(assert (=> bs!1843802 (not (= lambda!392337 lambda!392335))))

(declare-fun bs!1843803 () Bool)

(assert (= bs!1843803 (and d!2162846 b!6906284)))

(assert (=> bs!1843803 (not (= lambda!392337 lambda!392288))))

(declare-fun bs!1843804 () Bool)

(assert (= bs!1843804 (and d!2162846 d!2162842)))

(assert (=> bs!1843804 (= lambda!392337 lambda!392336)))

(assert (=> bs!1843803 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392337 lambda!392287))))

(assert (=> bs!1843796 (= lambda!392337 lambda!392289)))

(declare-fun bs!1843805 () Bool)

(assert (= bs!1843805 (and d!2162846 b!6906420)))

(assert (=> bs!1843805 (not (= lambda!392337 lambda!392307))))

(declare-fun bs!1843806 () Bool)

(assert (= bs!1843806 (and d!2162846 b!6906382)))

(assert (=> bs!1843806 (not (= lambda!392337 lambda!392298))))

(assert (=> d!2162846 true))

(assert (=> d!2162846 true))

(assert (=> d!2162846 true))

(declare-fun lambda!392338 () Int)

(assert (=> bs!1843796 (= lambda!392338 lambda!392290)))

(assert (=> bs!1843797 (not (= lambda!392338 lambda!392304))))

(assert (=> bs!1843798 (= (and (= (_1!37047 lt!2467535) (_1!37047 lt!2467549)) (= r1!6342 (regOne!34266 r1!6342)) (= r2!6280 (regTwo!34266 r1!6342))) (= lambda!392338 lambda!392299))))

(assert (=> bs!1843799 (not (= lambda!392338 lambda!392318))))

(assert (=> bs!1843800 (= (and (= r1!6342 (regOne!34266 lt!2467536)) (= r2!6280 (regTwo!34266 lt!2467536))) (= lambda!392338 lambda!392322))))

(assert (=> bs!1843801 (not (= lambda!392338 lambda!392319))))

(assert (=> bs!1843802 (not (= lambda!392338 lambda!392334))))

(assert (=> bs!1843802 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392338 lambda!392335))))

(assert (=> bs!1843803 (= (and (= (_1!37047 lt!2467535) s!14361) (= r1!6342 lt!2467536) (= r2!6280 r3!135)) (= lambda!392338 lambda!392288))))

(declare-fun bs!1843807 () Bool)

(assert (= bs!1843807 d!2162846))

(assert (=> bs!1843807 (not (= lambda!392338 lambda!392337))))

(assert (=> bs!1843804 (not (= lambda!392338 lambda!392336))))

(assert (=> bs!1843803 (not (= lambda!392338 lambda!392287))))

(assert (=> bs!1843796 (not (= lambda!392338 lambda!392289))))

(assert (=> bs!1843805 (= (and (= (_1!37047 lt!2467535) (_2!37047 lt!2467549)) (= r1!6342 (regOne!34266 r2!6280)) (= r2!6280 (regTwo!34266 r2!6280))) (= lambda!392338 lambda!392307))))

(assert (=> bs!1843806 (not (= lambda!392338 lambda!392298))))

(assert (=> d!2162846 true))

(assert (=> d!2162846 true))

(assert (=> d!2162846 true))

(assert (=> d!2162846 (= (Exists!3885 lambda!392337) (Exists!3885 lambda!392338))))

(declare-fun lt!2467619 () Unit!160490)

(assert (=> d!2162846 (= lt!2467619 (choose!51435 r1!6342 r2!6280 (_1!37047 lt!2467535)))))

(assert (=> d!2162846 (validRegex!8585 r1!6342)))

(assert (=> d!2162846 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2358 r1!6342 r2!6280 (_1!37047 lt!2467535)) lt!2467619)))

(declare-fun m!7623078 () Bool)

(assert (=> bs!1843807 m!7623078))

(declare-fun m!7623080 () Bool)

(assert (=> bs!1843807 m!7623080))

(declare-fun m!7623082 () Bool)

(assert (=> bs!1843807 m!7623082))

(assert (=> bs!1843807 m!7622654))

(assert (=> b!6906287 d!2162846))

(declare-fun d!2162848 () Bool)

(assert (=> d!2162848 (= (Exists!3885 lambda!392289) (choose!51433 lambda!392289))))

(declare-fun bs!1843808 () Bool)

(assert (= bs!1843808 d!2162848))

(declare-fun m!7623084 () Bool)

(assert (=> bs!1843808 m!7623084))

(assert (=> b!6906287 d!2162848))

(declare-fun d!2162850 () Bool)

(assert (=> d!2162850 (= (Exists!3885 lambda!392290) (choose!51433 lambda!392290))))

(declare-fun bs!1843809 () Bool)

(assert (= bs!1843809 d!2162850))

(declare-fun m!7623086 () Bool)

(assert (=> bs!1843809 m!7623086))

(assert (=> b!6906287 d!2162850))

(declare-fun b!6906903 () Bool)

(declare-fun e!4158880 () Bool)

(declare-fun lt!2467621 () Option!16656)

(assert (=> b!6906903 (= e!4158880 (= (++!14930 (_1!37047 (get!23266 lt!2467621)) (_2!37047 (get!23266 lt!2467621))) (_1!37047 lt!2467535)))))

(declare-fun b!6906904 () Bool)

(declare-fun e!4158878 () Option!16656)

(assert (=> b!6906904 (= e!4158878 (Some!16655 (tuple2!67489 Nil!66510 (_1!37047 lt!2467535))))))

(declare-fun b!6906905 () Bool)

(declare-fun e!4158882 () Bool)

(assert (=> b!6906905 (= e!4158882 (not (isDefined!13359 lt!2467621)))))

(declare-fun b!6906906 () Bool)

(declare-fun res!2816644 () Bool)

(assert (=> b!6906906 (=> (not res!2816644) (not e!4158880))))

(assert (=> b!6906906 (= res!2816644 (matchR!9022 r1!6342 (_1!37047 (get!23266 lt!2467621))))))

(declare-fun b!6906907 () Bool)

(declare-fun res!2816645 () Bool)

(assert (=> b!6906907 (=> (not res!2816645) (not e!4158880))))

(assert (=> b!6906907 (= res!2816645 (matchR!9022 r2!6280 (_2!37047 (get!23266 lt!2467621))))))

(declare-fun d!2162852 () Bool)

(assert (=> d!2162852 e!4158882))

(declare-fun res!2816642 () Bool)

(assert (=> d!2162852 (=> res!2816642 e!4158882)))

(assert (=> d!2162852 (= res!2816642 e!4158880)))

(declare-fun res!2816643 () Bool)

(assert (=> d!2162852 (=> (not res!2816643) (not e!4158880))))

(assert (=> d!2162852 (= res!2816643 (isDefined!13359 lt!2467621))))

(assert (=> d!2162852 (= lt!2467621 e!4158878)))

(declare-fun c!1283119 () Bool)

(declare-fun e!4158879 () Bool)

(assert (=> d!2162852 (= c!1283119 e!4158879)))

(declare-fun res!2816641 () Bool)

(assert (=> d!2162852 (=> (not res!2816641) (not e!4158879))))

(assert (=> d!2162852 (= res!2816641 (matchR!9022 r1!6342 Nil!66510))))

(assert (=> d!2162852 (validRegex!8585 r1!6342)))

(assert (=> d!2162852 (= (findConcatSeparation!3070 r1!6342 r2!6280 Nil!66510 (_1!37047 lt!2467535) (_1!37047 lt!2467535)) lt!2467621)))

(declare-fun b!6906908 () Bool)

(assert (=> b!6906908 (= e!4158879 (matchR!9022 r2!6280 (_1!37047 lt!2467535)))))

(declare-fun b!6906909 () Bool)

(declare-fun lt!2467620 () Unit!160490)

(declare-fun lt!2467622 () Unit!160490)

(assert (=> b!6906909 (= lt!2467620 lt!2467622)))

(assert (=> b!6906909 (= (++!14930 (++!14930 Nil!66510 (Cons!66510 (h!72958 (_1!37047 lt!2467535)) Nil!66510)) (t!380377 (_1!37047 lt!2467535))) (_1!37047 lt!2467535))))

(assert (=> b!6906909 (= lt!2467622 (lemmaMoveElementToOtherListKeepsConcatEq!2805 Nil!66510 (h!72958 (_1!37047 lt!2467535)) (t!380377 (_1!37047 lt!2467535)) (_1!37047 lt!2467535)))))

(declare-fun e!4158881 () Option!16656)

(assert (=> b!6906909 (= e!4158881 (findConcatSeparation!3070 r1!6342 r2!6280 (++!14930 Nil!66510 (Cons!66510 (h!72958 (_1!37047 lt!2467535)) Nil!66510)) (t!380377 (_1!37047 lt!2467535)) (_1!37047 lt!2467535)))))

(declare-fun b!6906910 () Bool)

(assert (=> b!6906910 (= e!4158881 None!16655)))

(declare-fun b!6906911 () Bool)

(assert (=> b!6906911 (= e!4158878 e!4158881)))

(declare-fun c!1283120 () Bool)

(assert (=> b!6906911 (= c!1283120 ((_ is Nil!66510) (_1!37047 lt!2467535)))))

(assert (= (and d!2162852 res!2816641) b!6906908))

(assert (= (and d!2162852 c!1283119) b!6906904))

(assert (= (and d!2162852 (not c!1283119)) b!6906911))

(assert (= (and b!6906911 c!1283120) b!6906910))

(assert (= (and b!6906911 (not c!1283120)) b!6906909))

(assert (= (and d!2162852 res!2816643) b!6906906))

(assert (= (and b!6906906 res!2816644) b!6906907))

(assert (= (and b!6906907 res!2816645) b!6906903))

(assert (= (and d!2162852 (not res!2816642)) b!6906905))

(declare-fun m!7623088 () Bool)

(assert (=> d!2162852 m!7623088))

(declare-fun m!7623090 () Bool)

(assert (=> d!2162852 m!7623090))

(assert (=> d!2162852 m!7622654))

(declare-fun m!7623092 () Bool)

(assert (=> b!6906907 m!7623092))

(declare-fun m!7623094 () Bool)

(assert (=> b!6906907 m!7623094))

(declare-fun m!7623096 () Bool)

(assert (=> b!6906909 m!7623096))

(assert (=> b!6906909 m!7623096))

(declare-fun m!7623098 () Bool)

(assert (=> b!6906909 m!7623098))

(declare-fun m!7623100 () Bool)

(assert (=> b!6906909 m!7623100))

(assert (=> b!6906909 m!7623096))

(declare-fun m!7623102 () Bool)

(assert (=> b!6906909 m!7623102))

(assert (=> b!6906903 m!7623092))

(declare-fun m!7623104 () Bool)

(assert (=> b!6906903 m!7623104))

(declare-fun m!7623106 () Bool)

(assert (=> b!6906908 m!7623106))

(assert (=> b!6906906 m!7623092))

(declare-fun m!7623108 () Bool)

(assert (=> b!6906906 m!7623108))

(assert (=> b!6906905 m!7623088))

(assert (=> b!6906287 d!2162852))

(declare-fun b!6906912 () Bool)

(declare-fun res!2816650 () Bool)

(declare-fun e!4158887 () Bool)

(assert (=> b!6906912 (=> (not res!2816650) (not e!4158887))))

(declare-fun call!628038 () Bool)

(assert (=> b!6906912 (= res!2816650 (not call!628038))))

(declare-fun b!6906913 () Bool)

(declare-fun res!2816647 () Bool)

(declare-fun e!4158885 () Bool)

(assert (=> b!6906913 (=> res!2816647 e!4158885)))

(assert (=> b!6906913 (= res!2816647 (not (isEmpty!38750 (tail!12902 (_2!37047 lt!2467549)))))))

(declare-fun b!6906914 () Bool)

(declare-fun e!4158884 () Bool)

(assert (=> b!6906914 (= e!4158884 (nullable!6718 r2!6280))))

(declare-fun b!6906915 () Bool)

(declare-fun res!2816652 () Bool)

(assert (=> b!6906915 (=> (not res!2816652) (not e!4158887))))

(assert (=> b!6906915 (= res!2816652 (isEmpty!38750 (tail!12902 (_2!37047 lt!2467549))))))

(declare-fun b!6906916 () Bool)

(declare-fun res!2816649 () Bool)

(declare-fun e!4158883 () Bool)

(assert (=> b!6906916 (=> res!2816649 e!4158883)))

(assert (=> b!6906916 (= res!2816649 e!4158887)))

(declare-fun res!2816648 () Bool)

(assert (=> b!6906916 (=> (not res!2816648) (not e!4158887))))

(declare-fun lt!2467623 () Bool)

(assert (=> b!6906916 (= res!2816648 lt!2467623)))

(declare-fun b!6906917 () Bool)

(declare-fun e!4158886 () Bool)

(assert (=> b!6906917 (= e!4158883 e!4158886)))

(declare-fun res!2816646 () Bool)

(assert (=> b!6906917 (=> (not res!2816646) (not e!4158886))))

(assert (=> b!6906917 (= res!2816646 (not lt!2467623))))

(declare-fun b!6906918 () Bool)

(assert (=> b!6906918 (= e!4158887 (= (head!13850 (_2!37047 lt!2467549)) (c!1282991 r2!6280)))))

(declare-fun b!6906919 () Bool)

(declare-fun res!2816653 () Bool)

(assert (=> b!6906919 (=> res!2816653 e!4158883)))

(assert (=> b!6906919 (= res!2816653 (not ((_ is ElementMatch!16877) r2!6280)))))

(declare-fun e!4158889 () Bool)

(assert (=> b!6906919 (= e!4158889 e!4158883)))

(declare-fun b!6906920 () Bool)

(declare-fun e!4158888 () Bool)

(assert (=> b!6906920 (= e!4158888 (= lt!2467623 call!628038))))

(declare-fun bm!628033 () Bool)

(assert (=> bm!628033 (= call!628038 (isEmpty!38750 (_2!37047 lt!2467549)))))

(declare-fun b!6906921 () Bool)

(assert (=> b!6906921 (= e!4158885 (not (= (head!13850 (_2!37047 lt!2467549)) (c!1282991 r2!6280))))))

(declare-fun d!2162854 () Bool)

(assert (=> d!2162854 e!4158888))

(declare-fun c!1283122 () Bool)

(assert (=> d!2162854 (= c!1283122 ((_ is EmptyExpr!16877) r2!6280))))

(assert (=> d!2162854 (= lt!2467623 e!4158884)))

(declare-fun c!1283121 () Bool)

(assert (=> d!2162854 (= c!1283121 (isEmpty!38750 (_2!37047 lt!2467549)))))

(assert (=> d!2162854 (validRegex!8585 r2!6280)))

(assert (=> d!2162854 (= (matchR!9022 r2!6280 (_2!37047 lt!2467549)) lt!2467623)))

(declare-fun b!6906922 () Bool)

(assert (=> b!6906922 (= e!4158884 (matchR!9022 (derivativeStep!5397 r2!6280 (head!13850 (_2!37047 lt!2467549))) (tail!12902 (_2!37047 lt!2467549))))))

(declare-fun b!6906923 () Bool)

(assert (=> b!6906923 (= e!4158889 (not lt!2467623))))

(declare-fun b!6906924 () Bool)

(assert (=> b!6906924 (= e!4158886 e!4158885)))

(declare-fun res!2816651 () Bool)

(assert (=> b!6906924 (=> res!2816651 e!4158885)))

(assert (=> b!6906924 (= res!2816651 call!628038)))

(declare-fun b!6906925 () Bool)

(assert (=> b!6906925 (= e!4158888 e!4158889)))

(declare-fun c!1283123 () Bool)

(assert (=> b!6906925 (= c!1283123 ((_ is EmptyLang!16877) r2!6280))))

(assert (= (and d!2162854 c!1283121) b!6906914))

(assert (= (and d!2162854 (not c!1283121)) b!6906922))

(assert (= (and d!2162854 c!1283122) b!6906920))

(assert (= (and d!2162854 (not c!1283122)) b!6906925))

(assert (= (and b!6906925 c!1283123) b!6906923))

(assert (= (and b!6906925 (not c!1283123)) b!6906919))

(assert (= (and b!6906919 (not res!2816653)) b!6906916))

(assert (= (and b!6906916 res!2816648) b!6906912))

(assert (= (and b!6906912 res!2816650) b!6906915))

(assert (= (and b!6906915 res!2816652) b!6906918))

(assert (= (and b!6906916 (not res!2816649)) b!6906917))

(assert (= (and b!6906917 res!2816646) b!6906924))

(assert (= (and b!6906924 (not res!2816651)) b!6906913))

(assert (= (and b!6906913 (not res!2816647)) b!6906921))

(assert (= (or b!6906920 b!6906912 b!6906924) bm!628033))

(assert (=> bm!628033 m!7622742))

(declare-fun m!7623110 () Bool)

(assert (=> b!6906915 m!7623110))

(assert (=> b!6906915 m!7623110))

(declare-fun m!7623112 () Bool)

(assert (=> b!6906915 m!7623112))

(assert (=> b!6906913 m!7623110))

(assert (=> b!6906913 m!7623110))

(assert (=> b!6906913 m!7623112))

(assert (=> d!2162854 m!7622742))

(assert (=> d!2162854 m!7622602))

(declare-fun m!7623114 () Bool)

(assert (=> b!6906922 m!7623114))

(assert (=> b!6906922 m!7623114))

(declare-fun m!7623116 () Bool)

(assert (=> b!6906922 m!7623116))

(assert (=> b!6906922 m!7623110))

(assert (=> b!6906922 m!7623116))

(assert (=> b!6906922 m!7623110))

(declare-fun m!7623118 () Bool)

(assert (=> b!6906922 m!7623118))

(assert (=> b!6906918 m!7623114))

(assert (=> b!6906921 m!7623114))

(declare-fun m!7623120 () Bool)

(assert (=> b!6906914 m!7623120))

(assert (=> b!6906271 d!2162854))

(declare-fun bm!628034 () Bool)

(declare-fun call!628039 () Bool)

(declare-fun c!1283125 () Bool)

(assert (=> bm!628034 (= call!628039 (validRegex!8585 (ite c!1283125 (regOne!34267 r2!6280) (regTwo!34266 r2!6280))))))

(declare-fun d!2162856 () Bool)

(declare-fun res!2816655 () Bool)

(declare-fun e!4158895 () Bool)

(assert (=> d!2162856 (=> res!2816655 e!4158895)))

(assert (=> d!2162856 (= res!2816655 ((_ is ElementMatch!16877) r2!6280))))

(assert (=> d!2162856 (= (validRegex!8585 r2!6280) e!4158895)))

(declare-fun b!6906926 () Bool)

(declare-fun e!4158896 () Bool)

(declare-fun call!628041 () Bool)

(assert (=> b!6906926 (= e!4158896 call!628041)))

(declare-fun b!6906927 () Bool)

(declare-fun res!2816658 () Bool)

(assert (=> b!6906927 (=> (not res!2816658) (not e!4158896))))

(assert (=> b!6906927 (= res!2816658 call!628039)))

(declare-fun e!4158890 () Bool)

(assert (=> b!6906927 (= e!4158890 e!4158896)))

(declare-fun call!628040 () Bool)

(declare-fun c!1283124 () Bool)

(declare-fun bm!628035 () Bool)

(assert (=> bm!628035 (= call!628040 (validRegex!8585 (ite c!1283124 (reg!17206 r2!6280) (ite c!1283125 (regTwo!34267 r2!6280) (regOne!34266 r2!6280)))))))

(declare-fun b!6906928 () Bool)

(declare-fun e!4158893 () Bool)

(assert (=> b!6906928 (= e!4158893 call!628039)))

(declare-fun b!6906929 () Bool)

(declare-fun e!4158891 () Bool)

(assert (=> b!6906929 (= e!4158891 call!628040)))

(declare-fun b!6906930 () Bool)

(declare-fun res!2816654 () Bool)

(declare-fun e!4158892 () Bool)

(assert (=> b!6906930 (=> res!2816654 e!4158892)))

(assert (=> b!6906930 (= res!2816654 (not ((_ is Concat!25722) r2!6280)))))

(assert (=> b!6906930 (= e!4158890 e!4158892)))

(declare-fun b!6906931 () Bool)

(assert (=> b!6906931 (= e!4158892 e!4158893)))

(declare-fun res!2816656 () Bool)

(assert (=> b!6906931 (=> (not res!2816656) (not e!4158893))))

(assert (=> b!6906931 (= res!2816656 call!628041)))

(declare-fun b!6906932 () Bool)

(declare-fun e!4158894 () Bool)

(assert (=> b!6906932 (= e!4158894 e!4158891)))

(declare-fun res!2816657 () Bool)

(assert (=> b!6906932 (= res!2816657 (not (nullable!6718 (reg!17206 r2!6280))))))

(assert (=> b!6906932 (=> (not res!2816657) (not e!4158891))))

(declare-fun b!6906933 () Bool)

(assert (=> b!6906933 (= e!4158894 e!4158890)))

(assert (=> b!6906933 (= c!1283125 ((_ is Union!16877) r2!6280))))

(declare-fun b!6906934 () Bool)

(assert (=> b!6906934 (= e!4158895 e!4158894)))

(assert (=> b!6906934 (= c!1283124 ((_ is Star!16877) r2!6280))))

(declare-fun bm!628036 () Bool)

(assert (=> bm!628036 (= call!628041 call!628040)))

(assert (= (and d!2162856 (not res!2816655)) b!6906934))

(assert (= (and b!6906934 c!1283124) b!6906932))

(assert (= (and b!6906934 (not c!1283124)) b!6906933))

(assert (= (and b!6906932 res!2816657) b!6906929))

(assert (= (and b!6906933 c!1283125) b!6906927))

(assert (= (and b!6906933 (not c!1283125)) b!6906930))

(assert (= (and b!6906927 res!2816658) b!6906926))

(assert (= (and b!6906930 (not res!2816654)) b!6906931))

(assert (= (and b!6906931 res!2816656) b!6906928))

(assert (= (or b!6906927 b!6906928) bm!628034))

(assert (= (or b!6906926 b!6906931) bm!628036))

(assert (= (or b!6906929 bm!628036) bm!628035))

(declare-fun m!7623122 () Bool)

(assert (=> bm!628034 m!7623122))

(declare-fun m!7623124 () Bool)

(assert (=> bm!628035 m!7623124))

(declare-fun m!7623126 () Bool)

(assert (=> b!6906932 m!7623126))

(assert (=> b!6906277 d!2162856))

(declare-fun bs!1843810 () Bool)

(declare-fun b!6906943 () Bool)

(assert (= bs!1843810 (and b!6906943 b!6906422)))

(declare-fun lambda!392339 () Int)

(assert (=> bs!1843810 (= (and (= s!14361 (_2!37047 lt!2467549)) (= (reg!17206 lt!2467543) (reg!17206 r2!6280)) (= lt!2467543 r2!6280)) (= lambda!392339 lambda!392304))))

(declare-fun bs!1843811 () Bool)

(assert (= bs!1843811 (and b!6906943 b!6906380)))

(assert (=> bs!1843811 (not (= lambda!392339 lambda!392299))))

(declare-fun bs!1843812 () Bool)

(assert (= bs!1843812 (and b!6906943 d!2162770)))

(assert (=> bs!1843812 (not (= lambda!392339 lambda!392318))))

(declare-fun bs!1843813 () Bool)

(assert (= bs!1843813 (and b!6906943 b!6906592)))

(assert (=> bs!1843813 (not (= lambda!392339 lambda!392322))))

(declare-fun bs!1843814 () Bool)

(assert (= bs!1843814 (and b!6906943 b!6906594)))

(assert (=> bs!1843814 (= (and (= s!14361 (_1!37047 lt!2467535)) (= (reg!17206 lt!2467543) (reg!17206 lt!2467536)) (= lt!2467543 lt!2467536)) (= lambda!392339 lambda!392319))))

(declare-fun bs!1843815 () Bool)

(assert (= bs!1843815 (and b!6906943 d!2162830)))

(assert (=> bs!1843815 (not (= lambda!392339 lambda!392334))))

(assert (=> bs!1843815 (not (= lambda!392339 lambda!392335))))

(declare-fun bs!1843816 () Bool)

(assert (= bs!1843816 (and b!6906943 b!6906284)))

(assert (=> bs!1843816 (not (= lambda!392339 lambda!392288))))

(declare-fun bs!1843817 () Bool)

(assert (= bs!1843817 (and b!6906943 d!2162846)))

(assert (=> bs!1843817 (not (= lambda!392339 lambda!392337))))

(declare-fun bs!1843818 () Bool)

(assert (= bs!1843818 (and b!6906943 b!6906287)))

(assert (=> bs!1843818 (not (= lambda!392339 lambda!392290))))

(assert (=> bs!1843817 (not (= lambda!392339 lambda!392338))))

(declare-fun bs!1843819 () Bool)

(assert (= bs!1843819 (and b!6906943 d!2162842)))

(assert (=> bs!1843819 (not (= lambda!392339 lambda!392336))))

(assert (=> bs!1843816 (not (= lambda!392339 lambda!392287))))

(assert (=> bs!1843818 (not (= lambda!392339 lambda!392289))))

(declare-fun bs!1843820 () Bool)

(assert (= bs!1843820 (and b!6906943 b!6906420)))

(assert (=> bs!1843820 (not (= lambda!392339 lambda!392307))))

(declare-fun bs!1843821 () Bool)

(assert (= bs!1843821 (and b!6906943 b!6906382)))

(assert (=> bs!1843821 (= (and (= s!14361 (_1!37047 lt!2467549)) (= (reg!17206 lt!2467543) (reg!17206 r1!6342)) (= lt!2467543 r1!6342)) (= lambda!392339 lambda!392298))))

(assert (=> b!6906943 true))

(assert (=> b!6906943 true))

(declare-fun bs!1843822 () Bool)

(declare-fun b!6906941 () Bool)

(assert (= bs!1843822 (and b!6906941 b!6906422)))

(declare-fun lambda!392340 () Int)

(assert (=> bs!1843822 (not (= lambda!392340 lambda!392304))))

(declare-fun bs!1843823 () Bool)

(assert (= bs!1843823 (and b!6906941 b!6906380)))

(assert (=> bs!1843823 (= (and (= s!14361 (_1!37047 lt!2467549)) (= (regOne!34266 lt!2467543) (regOne!34266 r1!6342)) (= (regTwo!34266 lt!2467543) (regTwo!34266 r1!6342))) (= lambda!392340 lambda!392299))))

(declare-fun bs!1843824 () Bool)

(assert (= bs!1843824 (and b!6906941 d!2162770)))

(assert (=> bs!1843824 (not (= lambda!392340 lambda!392318))))

(declare-fun bs!1843825 () Bool)

(assert (= bs!1843825 (and b!6906941 b!6906592)))

(assert (=> bs!1843825 (= (and (= s!14361 (_1!37047 lt!2467535)) (= (regOne!34266 lt!2467543) (regOne!34266 lt!2467536)) (= (regTwo!34266 lt!2467543) (regTwo!34266 lt!2467536))) (= lambda!392340 lambda!392322))))

(declare-fun bs!1843826 () Bool)

(assert (= bs!1843826 (and b!6906941 d!2162830)))

(assert (=> bs!1843826 (not (= lambda!392340 lambda!392334))))

(assert (=> bs!1843826 (= (and (= (regOne!34266 lt!2467543) lt!2467536) (= (regTwo!34266 lt!2467543) r3!135)) (= lambda!392340 lambda!392335))))

(declare-fun bs!1843827 () Bool)

(assert (= bs!1843827 (and b!6906941 b!6906284)))

(assert (=> bs!1843827 (= (and (= (regOne!34266 lt!2467543) lt!2467536) (= (regTwo!34266 lt!2467543) r3!135)) (= lambda!392340 lambda!392288))))

(declare-fun bs!1843828 () Bool)

(assert (= bs!1843828 (and b!6906941 d!2162846)))

(assert (=> bs!1843828 (not (= lambda!392340 lambda!392337))))

(declare-fun bs!1843829 () Bool)

(assert (= bs!1843829 (and b!6906941 b!6906287)))

(assert (=> bs!1843829 (= (and (= s!14361 (_1!37047 lt!2467535)) (= (regOne!34266 lt!2467543) r1!6342) (= (regTwo!34266 lt!2467543) r2!6280)) (= lambda!392340 lambda!392290))))

(assert (=> bs!1843828 (= (and (= s!14361 (_1!37047 lt!2467535)) (= (regOne!34266 lt!2467543) r1!6342) (= (regTwo!34266 lt!2467543) r2!6280)) (= lambda!392340 lambda!392338))))

(declare-fun bs!1843830 () Bool)

(assert (= bs!1843830 (and b!6906941 d!2162842)))

(assert (=> bs!1843830 (not (= lambda!392340 lambda!392336))))

(assert (=> bs!1843827 (not (= lambda!392340 lambda!392287))))

(assert (=> bs!1843829 (not (= lambda!392340 lambda!392289))))

(declare-fun bs!1843831 () Bool)

(assert (= bs!1843831 (and b!6906941 b!6906420)))

(assert (=> bs!1843831 (= (and (= s!14361 (_2!37047 lt!2467549)) (= (regOne!34266 lt!2467543) (regOne!34266 r2!6280)) (= (regTwo!34266 lt!2467543) (regTwo!34266 r2!6280))) (= lambda!392340 lambda!392307))))

(declare-fun bs!1843832 () Bool)

(assert (= bs!1843832 (and b!6906941 b!6906382)))

(assert (=> bs!1843832 (not (= lambda!392340 lambda!392298))))

(declare-fun bs!1843833 () Bool)

(assert (= bs!1843833 (and b!6906941 b!6906594)))

(assert (=> bs!1843833 (not (= lambda!392340 lambda!392319))))

(declare-fun bs!1843834 () Bool)

(assert (= bs!1843834 (and b!6906941 b!6906943)))

(assert (=> bs!1843834 (not (= lambda!392340 lambda!392339))))

(assert (=> b!6906941 true))

(assert (=> b!6906941 true))

(declare-fun b!6906935 () Bool)

(declare-fun c!1283126 () Bool)

(assert (=> b!6906935 (= c!1283126 ((_ is Union!16877) lt!2467543))))

(declare-fun e!4158898 () Bool)

(declare-fun e!4158897 () Bool)

(assert (=> b!6906935 (= e!4158898 e!4158897)))

(declare-fun b!6906936 () Bool)

(assert (=> b!6906936 (= e!4158898 (= s!14361 (Cons!66510 (c!1282991 lt!2467543) Nil!66510)))))

(declare-fun d!2162858 () Bool)

(declare-fun c!1283128 () Bool)

(assert (=> d!2162858 (= c!1283128 ((_ is EmptyExpr!16877) lt!2467543))))

(declare-fun e!4158901 () Bool)

(assert (=> d!2162858 (= (matchRSpec!3940 lt!2467543 s!14361) e!4158901)))

(declare-fun b!6906937 () Bool)

(declare-fun e!4158900 () Bool)

(assert (=> b!6906937 (= e!4158900 (matchRSpec!3940 (regTwo!34267 lt!2467543) s!14361))))

(declare-fun b!6906938 () Bool)

(declare-fun e!4158902 () Bool)

(assert (=> b!6906938 (= e!4158901 e!4158902)))

(declare-fun res!2816660 () Bool)

(assert (=> b!6906938 (= res!2816660 (not ((_ is EmptyLang!16877) lt!2467543)))))

(assert (=> b!6906938 (=> (not res!2816660) (not e!4158902))))

(declare-fun b!6906939 () Bool)

(declare-fun res!2816661 () Bool)

(declare-fun e!4158903 () Bool)

(assert (=> b!6906939 (=> res!2816661 e!4158903)))

(declare-fun call!628042 () Bool)

(assert (=> b!6906939 (= res!2816661 call!628042)))

(declare-fun e!4158899 () Bool)

(assert (=> b!6906939 (= e!4158899 e!4158903)))

(declare-fun b!6906940 () Bool)

(assert (=> b!6906940 (= e!4158897 e!4158900)))

(declare-fun res!2816659 () Bool)

(assert (=> b!6906940 (= res!2816659 (matchRSpec!3940 (regOne!34267 lt!2467543) s!14361))))

(assert (=> b!6906940 (=> res!2816659 e!4158900)))

(declare-fun call!628043 () Bool)

(assert (=> b!6906941 (= e!4158899 call!628043)))

(declare-fun bm!628037 () Bool)

(assert (=> bm!628037 (= call!628042 (isEmpty!38750 s!14361))))

(declare-fun bm!628038 () Bool)

(declare-fun c!1283127 () Bool)

(assert (=> bm!628038 (= call!628043 (Exists!3885 (ite c!1283127 lambda!392339 lambda!392340)))))

(declare-fun b!6906942 () Bool)

(assert (=> b!6906942 (= e!4158897 e!4158899)))

(assert (=> b!6906942 (= c!1283127 ((_ is Star!16877) lt!2467543))))

(assert (=> b!6906943 (= e!4158903 call!628043)))

(declare-fun b!6906944 () Bool)

(declare-fun c!1283129 () Bool)

(assert (=> b!6906944 (= c!1283129 ((_ is ElementMatch!16877) lt!2467543))))

(assert (=> b!6906944 (= e!4158902 e!4158898)))

(declare-fun b!6906945 () Bool)

(assert (=> b!6906945 (= e!4158901 call!628042)))

(assert (= (and d!2162858 c!1283128) b!6906945))

(assert (= (and d!2162858 (not c!1283128)) b!6906938))

(assert (= (and b!6906938 res!2816660) b!6906944))

(assert (= (and b!6906944 c!1283129) b!6906936))

(assert (= (and b!6906944 (not c!1283129)) b!6906935))

(assert (= (and b!6906935 c!1283126) b!6906940))

(assert (= (and b!6906935 (not c!1283126)) b!6906942))

(assert (= (and b!6906940 (not res!2816659)) b!6906937))

(assert (= (and b!6906942 c!1283127) b!6906939))

(assert (= (and b!6906942 (not c!1283127)) b!6906941))

(assert (= (and b!6906939 (not res!2816661)) b!6906943))

(assert (= (or b!6906943 b!6906941) bm!628038))

(assert (= (or b!6906945 b!6906939) bm!628037))

(declare-fun m!7623128 () Bool)

(assert (=> b!6906937 m!7623128))

(declare-fun m!7623130 () Bool)

(assert (=> b!6906940 m!7623130))

(declare-fun m!7623132 () Bool)

(assert (=> bm!628037 m!7623132))

(declare-fun m!7623134 () Bool)

(assert (=> bm!628038 m!7623134))

(assert (=> b!6906283 d!2162858))

(declare-fun bs!1843835 () Bool)

(declare-fun b!6906954 () Bool)

(assert (= bs!1843835 (and b!6906954 b!6906422)))

(declare-fun lambda!392341 () Int)

(assert (=> bs!1843835 (= (and (= s!14361 (_2!37047 lt!2467549)) (= (reg!17206 lt!2467546) (reg!17206 r2!6280)) (= lt!2467546 r2!6280)) (= lambda!392341 lambda!392304))))

(declare-fun bs!1843836 () Bool)

(assert (= bs!1843836 (and b!6906954 b!6906380)))

(assert (=> bs!1843836 (not (= lambda!392341 lambda!392299))))

(declare-fun bs!1843837 () Bool)

(assert (= bs!1843837 (and b!6906954 b!6906592)))

(assert (=> bs!1843837 (not (= lambda!392341 lambda!392322))))

(declare-fun bs!1843838 () Bool)

(assert (= bs!1843838 (and b!6906954 d!2162830)))

(assert (=> bs!1843838 (not (= lambda!392341 lambda!392334))))

(assert (=> bs!1843838 (not (= lambda!392341 lambda!392335))))

(declare-fun bs!1843839 () Bool)

(assert (= bs!1843839 (and b!6906954 b!6906284)))

(assert (=> bs!1843839 (not (= lambda!392341 lambda!392288))))

(declare-fun bs!1843840 () Bool)

(assert (= bs!1843840 (and b!6906954 d!2162846)))

(assert (=> bs!1843840 (not (= lambda!392341 lambda!392337))))

(declare-fun bs!1843841 () Bool)

(assert (= bs!1843841 (and b!6906954 b!6906287)))

(assert (=> bs!1843841 (not (= lambda!392341 lambda!392290))))

(assert (=> bs!1843840 (not (= lambda!392341 lambda!392338))))

(declare-fun bs!1843842 () Bool)

(assert (= bs!1843842 (and b!6906954 d!2162842)))

(assert (=> bs!1843842 (not (= lambda!392341 lambda!392336))))

(assert (=> bs!1843839 (not (= lambda!392341 lambda!392287))))

(assert (=> bs!1843841 (not (= lambda!392341 lambda!392289))))

(declare-fun bs!1843843 () Bool)

(assert (= bs!1843843 (and b!6906954 b!6906941)))

(assert (=> bs!1843843 (not (= lambda!392341 lambda!392340))))

(declare-fun bs!1843844 () Bool)

(assert (= bs!1843844 (and b!6906954 d!2162770)))

(assert (=> bs!1843844 (not (= lambda!392341 lambda!392318))))

(declare-fun bs!1843845 () Bool)

(assert (= bs!1843845 (and b!6906954 b!6906420)))

(assert (=> bs!1843845 (not (= lambda!392341 lambda!392307))))

(declare-fun bs!1843846 () Bool)

(assert (= bs!1843846 (and b!6906954 b!6906382)))

(assert (=> bs!1843846 (= (and (= s!14361 (_1!37047 lt!2467549)) (= (reg!17206 lt!2467546) (reg!17206 r1!6342)) (= lt!2467546 r1!6342)) (= lambda!392341 lambda!392298))))

(declare-fun bs!1843847 () Bool)

(assert (= bs!1843847 (and b!6906954 b!6906594)))

(assert (=> bs!1843847 (= (and (= s!14361 (_1!37047 lt!2467535)) (= (reg!17206 lt!2467546) (reg!17206 lt!2467536)) (= lt!2467546 lt!2467536)) (= lambda!392341 lambda!392319))))

(declare-fun bs!1843848 () Bool)

(assert (= bs!1843848 (and b!6906954 b!6906943)))

(assert (=> bs!1843848 (= (and (= (reg!17206 lt!2467546) (reg!17206 lt!2467543)) (= lt!2467546 lt!2467543)) (= lambda!392341 lambda!392339))))

(assert (=> b!6906954 true))

(assert (=> b!6906954 true))

(declare-fun bs!1843849 () Bool)

(declare-fun b!6906952 () Bool)

(assert (= bs!1843849 (and b!6906952 b!6906422)))

(declare-fun lambda!392342 () Int)

(assert (=> bs!1843849 (not (= lambda!392342 lambda!392304))))

(declare-fun bs!1843850 () Bool)

(assert (= bs!1843850 (and b!6906952 b!6906380)))

(assert (=> bs!1843850 (= (and (= s!14361 (_1!37047 lt!2467549)) (= (regOne!34266 lt!2467546) (regOne!34266 r1!6342)) (= (regTwo!34266 lt!2467546) (regTwo!34266 r1!6342))) (= lambda!392342 lambda!392299))))

(declare-fun bs!1843851 () Bool)

(assert (= bs!1843851 (and b!6906952 b!6906592)))

(assert (=> bs!1843851 (= (and (= s!14361 (_1!37047 lt!2467535)) (= (regOne!34266 lt!2467546) (regOne!34266 lt!2467536)) (= (regTwo!34266 lt!2467546) (regTwo!34266 lt!2467536))) (= lambda!392342 lambda!392322))))

(declare-fun bs!1843852 () Bool)

(assert (= bs!1843852 (and b!6906952 d!2162830)))

(assert (=> bs!1843852 (not (= lambda!392342 lambda!392334))))

(declare-fun bs!1843853 () Bool)

(assert (= bs!1843853 (and b!6906952 b!6906954)))

(assert (=> bs!1843853 (not (= lambda!392342 lambda!392341))))

(assert (=> bs!1843852 (= (and (= (regOne!34266 lt!2467546) lt!2467536) (= (regTwo!34266 lt!2467546) r3!135)) (= lambda!392342 lambda!392335))))

(declare-fun bs!1843854 () Bool)

(assert (= bs!1843854 (and b!6906952 b!6906284)))

(assert (=> bs!1843854 (= (and (= (regOne!34266 lt!2467546) lt!2467536) (= (regTwo!34266 lt!2467546) r3!135)) (= lambda!392342 lambda!392288))))

(declare-fun bs!1843855 () Bool)

(assert (= bs!1843855 (and b!6906952 d!2162846)))

(assert (=> bs!1843855 (not (= lambda!392342 lambda!392337))))

(declare-fun bs!1843856 () Bool)

(assert (= bs!1843856 (and b!6906952 b!6906287)))

(assert (=> bs!1843856 (= (and (= s!14361 (_1!37047 lt!2467535)) (= (regOne!34266 lt!2467546) r1!6342) (= (regTwo!34266 lt!2467546) r2!6280)) (= lambda!392342 lambda!392290))))

(assert (=> bs!1843855 (= (and (= s!14361 (_1!37047 lt!2467535)) (= (regOne!34266 lt!2467546) r1!6342) (= (regTwo!34266 lt!2467546) r2!6280)) (= lambda!392342 lambda!392338))))

(declare-fun bs!1843857 () Bool)

(assert (= bs!1843857 (and b!6906952 d!2162842)))

(assert (=> bs!1843857 (not (= lambda!392342 lambda!392336))))

(assert (=> bs!1843854 (not (= lambda!392342 lambda!392287))))

(assert (=> bs!1843856 (not (= lambda!392342 lambda!392289))))

(declare-fun bs!1843858 () Bool)

(assert (= bs!1843858 (and b!6906952 b!6906941)))

(assert (=> bs!1843858 (= (and (= (regOne!34266 lt!2467546) (regOne!34266 lt!2467543)) (= (regTwo!34266 lt!2467546) (regTwo!34266 lt!2467543))) (= lambda!392342 lambda!392340))))

(declare-fun bs!1843859 () Bool)

(assert (= bs!1843859 (and b!6906952 d!2162770)))

(assert (=> bs!1843859 (not (= lambda!392342 lambda!392318))))

(declare-fun bs!1843860 () Bool)

(assert (= bs!1843860 (and b!6906952 b!6906420)))

(assert (=> bs!1843860 (= (and (= s!14361 (_2!37047 lt!2467549)) (= (regOne!34266 lt!2467546) (regOne!34266 r2!6280)) (= (regTwo!34266 lt!2467546) (regTwo!34266 r2!6280))) (= lambda!392342 lambda!392307))))

(declare-fun bs!1843861 () Bool)

(assert (= bs!1843861 (and b!6906952 b!6906382)))

(assert (=> bs!1843861 (not (= lambda!392342 lambda!392298))))

(declare-fun bs!1843862 () Bool)

(assert (= bs!1843862 (and b!6906952 b!6906594)))

(assert (=> bs!1843862 (not (= lambda!392342 lambda!392319))))

(declare-fun bs!1843863 () Bool)

(assert (= bs!1843863 (and b!6906952 b!6906943)))

(assert (=> bs!1843863 (not (= lambda!392342 lambda!392339))))

(assert (=> b!6906952 true))

(assert (=> b!6906952 true))

(declare-fun b!6906946 () Bool)

(declare-fun c!1283130 () Bool)

(assert (=> b!6906946 (= c!1283130 ((_ is Union!16877) lt!2467546))))

(declare-fun e!4158905 () Bool)

(declare-fun e!4158904 () Bool)

(assert (=> b!6906946 (= e!4158905 e!4158904)))

(declare-fun b!6906947 () Bool)

(assert (=> b!6906947 (= e!4158905 (= s!14361 (Cons!66510 (c!1282991 lt!2467546) Nil!66510)))))

(declare-fun d!2162860 () Bool)

(declare-fun c!1283132 () Bool)

(assert (=> d!2162860 (= c!1283132 ((_ is EmptyExpr!16877) lt!2467546))))

(declare-fun e!4158908 () Bool)

(assert (=> d!2162860 (= (matchRSpec!3940 lt!2467546 s!14361) e!4158908)))

(declare-fun b!6906948 () Bool)

(declare-fun e!4158907 () Bool)

(assert (=> b!6906948 (= e!4158907 (matchRSpec!3940 (regTwo!34267 lt!2467546) s!14361))))

(declare-fun b!6906949 () Bool)

(declare-fun e!4158909 () Bool)

(assert (=> b!6906949 (= e!4158908 e!4158909)))

(declare-fun res!2816663 () Bool)

(assert (=> b!6906949 (= res!2816663 (not ((_ is EmptyLang!16877) lt!2467546)))))

(assert (=> b!6906949 (=> (not res!2816663) (not e!4158909))))

(declare-fun b!6906950 () Bool)

(declare-fun res!2816664 () Bool)

(declare-fun e!4158910 () Bool)

(assert (=> b!6906950 (=> res!2816664 e!4158910)))

(declare-fun call!628044 () Bool)

(assert (=> b!6906950 (= res!2816664 call!628044)))

(declare-fun e!4158906 () Bool)

(assert (=> b!6906950 (= e!4158906 e!4158910)))

(declare-fun b!6906951 () Bool)

(assert (=> b!6906951 (= e!4158904 e!4158907)))

(declare-fun res!2816662 () Bool)

(assert (=> b!6906951 (= res!2816662 (matchRSpec!3940 (regOne!34267 lt!2467546) s!14361))))

(assert (=> b!6906951 (=> res!2816662 e!4158907)))

(declare-fun call!628045 () Bool)

(assert (=> b!6906952 (= e!4158906 call!628045)))

(declare-fun bm!628039 () Bool)

(assert (=> bm!628039 (= call!628044 (isEmpty!38750 s!14361))))

(declare-fun c!1283131 () Bool)

(declare-fun bm!628040 () Bool)

(assert (=> bm!628040 (= call!628045 (Exists!3885 (ite c!1283131 lambda!392341 lambda!392342)))))

(declare-fun b!6906953 () Bool)

(assert (=> b!6906953 (= e!4158904 e!4158906)))

(assert (=> b!6906953 (= c!1283131 ((_ is Star!16877) lt!2467546))))

(assert (=> b!6906954 (= e!4158910 call!628045)))

(declare-fun b!6906955 () Bool)

(declare-fun c!1283133 () Bool)

(assert (=> b!6906955 (= c!1283133 ((_ is ElementMatch!16877) lt!2467546))))

(assert (=> b!6906955 (= e!4158909 e!4158905)))

(declare-fun b!6906956 () Bool)

(assert (=> b!6906956 (= e!4158908 call!628044)))

(assert (= (and d!2162860 c!1283132) b!6906956))

(assert (= (and d!2162860 (not c!1283132)) b!6906949))

(assert (= (and b!6906949 res!2816663) b!6906955))

(assert (= (and b!6906955 c!1283133) b!6906947))

(assert (= (and b!6906955 (not c!1283133)) b!6906946))

(assert (= (and b!6906946 c!1283130) b!6906951))

(assert (= (and b!6906946 (not c!1283130)) b!6906953))

(assert (= (and b!6906951 (not res!2816662)) b!6906948))

(assert (= (and b!6906953 c!1283131) b!6906950))

(assert (= (and b!6906953 (not c!1283131)) b!6906952))

(assert (= (and b!6906950 (not res!2816664)) b!6906954))

(assert (= (or b!6906954 b!6906952) bm!628040))

(assert (= (or b!6906956 b!6906950) bm!628039))

(declare-fun m!7623136 () Bool)

(assert (=> b!6906948 m!7623136))

(declare-fun m!7623138 () Bool)

(assert (=> b!6906951 m!7623138))

(assert (=> bm!628039 m!7623132))

(declare-fun m!7623140 () Bool)

(assert (=> bm!628040 m!7623140))

(assert (=> b!6906283 d!2162860))

(declare-fun d!2162862 () Bool)

(assert (=> d!2162862 (= (matchR!9022 lt!2467543 s!14361) (matchRSpec!3940 lt!2467543 s!14361))))

(declare-fun lt!2467624 () Unit!160490)

(assert (=> d!2162862 (= lt!2467624 (choose!51432 lt!2467543 s!14361))))

(assert (=> d!2162862 (validRegex!8585 lt!2467543)))

(assert (=> d!2162862 (= (mainMatchTheorem!3940 lt!2467543 s!14361) lt!2467624)))

(declare-fun bs!1843864 () Bool)

(assert (= bs!1843864 d!2162862))

(assert (=> bs!1843864 m!7622614))

(assert (=> bs!1843864 m!7622610))

(declare-fun m!7623142 () Bool)

(assert (=> bs!1843864 m!7623142))

(declare-fun m!7623144 () Bool)

(assert (=> bs!1843864 m!7623144))

(assert (=> b!6906283 d!2162862))

(declare-fun b!6906957 () Bool)

(declare-fun res!2816669 () Bool)

(declare-fun e!4158915 () Bool)

(assert (=> b!6906957 (=> (not res!2816669) (not e!4158915))))

(declare-fun call!628046 () Bool)

(assert (=> b!6906957 (= res!2816669 (not call!628046))))

(declare-fun b!6906958 () Bool)

(declare-fun res!2816666 () Bool)

(declare-fun e!4158913 () Bool)

(assert (=> b!6906958 (=> res!2816666 e!4158913)))

(assert (=> b!6906958 (= res!2816666 (not (isEmpty!38750 (tail!12902 s!14361))))))

(declare-fun b!6906959 () Bool)

(declare-fun e!4158912 () Bool)

(assert (=> b!6906959 (= e!4158912 (nullable!6718 lt!2467546))))

(declare-fun b!6906960 () Bool)

(declare-fun res!2816671 () Bool)

(assert (=> b!6906960 (=> (not res!2816671) (not e!4158915))))

(assert (=> b!6906960 (= res!2816671 (isEmpty!38750 (tail!12902 s!14361)))))

(declare-fun b!6906961 () Bool)

(declare-fun res!2816668 () Bool)

(declare-fun e!4158911 () Bool)

(assert (=> b!6906961 (=> res!2816668 e!4158911)))

(assert (=> b!6906961 (= res!2816668 e!4158915)))

(declare-fun res!2816667 () Bool)

(assert (=> b!6906961 (=> (not res!2816667) (not e!4158915))))

(declare-fun lt!2467625 () Bool)

(assert (=> b!6906961 (= res!2816667 lt!2467625)))

(declare-fun b!6906962 () Bool)

(declare-fun e!4158914 () Bool)

(assert (=> b!6906962 (= e!4158911 e!4158914)))

(declare-fun res!2816665 () Bool)

(assert (=> b!6906962 (=> (not res!2816665) (not e!4158914))))

(assert (=> b!6906962 (= res!2816665 (not lt!2467625))))

(declare-fun b!6906963 () Bool)

(assert (=> b!6906963 (= e!4158915 (= (head!13850 s!14361) (c!1282991 lt!2467546)))))

(declare-fun b!6906964 () Bool)

(declare-fun res!2816672 () Bool)

(assert (=> b!6906964 (=> res!2816672 e!4158911)))

(assert (=> b!6906964 (= res!2816672 (not ((_ is ElementMatch!16877) lt!2467546)))))

(declare-fun e!4158917 () Bool)

(assert (=> b!6906964 (= e!4158917 e!4158911)))

(declare-fun b!6906965 () Bool)

(declare-fun e!4158916 () Bool)

(assert (=> b!6906965 (= e!4158916 (= lt!2467625 call!628046))))

(declare-fun bm!628041 () Bool)

(assert (=> bm!628041 (= call!628046 (isEmpty!38750 s!14361))))

(declare-fun b!6906966 () Bool)

(assert (=> b!6906966 (= e!4158913 (not (= (head!13850 s!14361) (c!1282991 lt!2467546))))))

(declare-fun d!2162864 () Bool)

(assert (=> d!2162864 e!4158916))

(declare-fun c!1283135 () Bool)

(assert (=> d!2162864 (= c!1283135 ((_ is EmptyExpr!16877) lt!2467546))))

(assert (=> d!2162864 (= lt!2467625 e!4158912)))

(declare-fun c!1283134 () Bool)

(assert (=> d!2162864 (= c!1283134 (isEmpty!38750 s!14361))))

(assert (=> d!2162864 (validRegex!8585 lt!2467546)))

(assert (=> d!2162864 (= (matchR!9022 lt!2467546 s!14361) lt!2467625)))

(declare-fun b!6906967 () Bool)

(assert (=> b!6906967 (= e!4158912 (matchR!9022 (derivativeStep!5397 lt!2467546 (head!13850 s!14361)) (tail!12902 s!14361)))))

(declare-fun b!6906968 () Bool)

(assert (=> b!6906968 (= e!4158917 (not lt!2467625))))

(declare-fun b!6906969 () Bool)

(assert (=> b!6906969 (= e!4158914 e!4158913)))

(declare-fun res!2816670 () Bool)

(assert (=> b!6906969 (=> res!2816670 e!4158913)))

(assert (=> b!6906969 (= res!2816670 call!628046)))

(declare-fun b!6906970 () Bool)

(assert (=> b!6906970 (= e!4158916 e!4158917)))

(declare-fun c!1283136 () Bool)

(assert (=> b!6906970 (= c!1283136 ((_ is EmptyLang!16877) lt!2467546))))

(assert (= (and d!2162864 c!1283134) b!6906959))

(assert (= (and d!2162864 (not c!1283134)) b!6906967))

(assert (= (and d!2162864 c!1283135) b!6906965))

(assert (= (and d!2162864 (not c!1283135)) b!6906970))

(assert (= (and b!6906970 c!1283136) b!6906968))

(assert (= (and b!6906970 (not c!1283136)) b!6906964))

(assert (= (and b!6906964 (not res!2816672)) b!6906961))

(assert (= (and b!6906961 res!2816667) b!6906957))

(assert (= (and b!6906957 res!2816669) b!6906960))

(assert (= (and b!6906960 res!2816671) b!6906963))

(assert (= (and b!6906961 (not res!2816668)) b!6906962))

(assert (= (and b!6906962 res!2816665) b!6906969))

(assert (= (and b!6906969 (not res!2816670)) b!6906958))

(assert (= (and b!6906958 (not res!2816666)) b!6906966))

(assert (= (or b!6906965 b!6906957 b!6906969) bm!628041))

(assert (=> bm!628041 m!7623132))

(declare-fun m!7623146 () Bool)

(assert (=> b!6906960 m!7623146))

(assert (=> b!6906960 m!7623146))

(declare-fun m!7623148 () Bool)

(assert (=> b!6906960 m!7623148))

(assert (=> b!6906958 m!7623146))

(assert (=> b!6906958 m!7623146))

(assert (=> b!6906958 m!7623148))

(assert (=> d!2162864 m!7623132))

(declare-fun m!7623150 () Bool)

(assert (=> d!2162864 m!7623150))

(declare-fun m!7623152 () Bool)

(assert (=> b!6906967 m!7623152))

(assert (=> b!6906967 m!7623152))

(declare-fun m!7623154 () Bool)

(assert (=> b!6906967 m!7623154))

(assert (=> b!6906967 m!7623146))

(assert (=> b!6906967 m!7623154))

(assert (=> b!6906967 m!7623146))

(declare-fun m!7623156 () Bool)

(assert (=> b!6906967 m!7623156))

(assert (=> b!6906963 m!7623152))

(assert (=> b!6906966 m!7623152))

(declare-fun m!7623158 () Bool)

(assert (=> b!6906959 m!7623158))

(assert (=> b!6906283 d!2162864))

(declare-fun b!6906971 () Bool)

(declare-fun res!2816677 () Bool)

(declare-fun e!4158922 () Bool)

(assert (=> b!6906971 (=> (not res!2816677) (not e!4158922))))

(declare-fun call!628047 () Bool)

(assert (=> b!6906971 (= res!2816677 (not call!628047))))

(declare-fun b!6906972 () Bool)

(declare-fun res!2816674 () Bool)

(declare-fun e!4158920 () Bool)

(assert (=> b!6906972 (=> res!2816674 e!4158920)))

(assert (=> b!6906972 (= res!2816674 (not (isEmpty!38750 (tail!12902 s!14361))))))

(declare-fun b!6906973 () Bool)

(declare-fun e!4158919 () Bool)

(assert (=> b!6906973 (= e!4158919 (nullable!6718 lt!2467543))))

(declare-fun b!6906974 () Bool)

(declare-fun res!2816679 () Bool)

(assert (=> b!6906974 (=> (not res!2816679) (not e!4158922))))

(assert (=> b!6906974 (= res!2816679 (isEmpty!38750 (tail!12902 s!14361)))))

(declare-fun b!6906975 () Bool)

(declare-fun res!2816676 () Bool)

(declare-fun e!4158918 () Bool)

(assert (=> b!6906975 (=> res!2816676 e!4158918)))

(assert (=> b!6906975 (= res!2816676 e!4158922)))

(declare-fun res!2816675 () Bool)

(assert (=> b!6906975 (=> (not res!2816675) (not e!4158922))))

(declare-fun lt!2467626 () Bool)

(assert (=> b!6906975 (= res!2816675 lt!2467626)))

(declare-fun b!6906976 () Bool)

(declare-fun e!4158921 () Bool)

(assert (=> b!6906976 (= e!4158918 e!4158921)))

(declare-fun res!2816673 () Bool)

(assert (=> b!6906976 (=> (not res!2816673) (not e!4158921))))

(assert (=> b!6906976 (= res!2816673 (not lt!2467626))))

(declare-fun b!6906977 () Bool)

(assert (=> b!6906977 (= e!4158922 (= (head!13850 s!14361) (c!1282991 lt!2467543)))))

(declare-fun b!6906978 () Bool)

(declare-fun res!2816680 () Bool)

(assert (=> b!6906978 (=> res!2816680 e!4158918)))

(assert (=> b!6906978 (= res!2816680 (not ((_ is ElementMatch!16877) lt!2467543)))))

(declare-fun e!4158924 () Bool)

(assert (=> b!6906978 (= e!4158924 e!4158918)))

(declare-fun b!6906979 () Bool)

(declare-fun e!4158923 () Bool)

(assert (=> b!6906979 (= e!4158923 (= lt!2467626 call!628047))))

(declare-fun bm!628042 () Bool)

(assert (=> bm!628042 (= call!628047 (isEmpty!38750 s!14361))))

(declare-fun b!6906980 () Bool)

(assert (=> b!6906980 (= e!4158920 (not (= (head!13850 s!14361) (c!1282991 lt!2467543))))))

(declare-fun d!2162866 () Bool)

(assert (=> d!2162866 e!4158923))

(declare-fun c!1283138 () Bool)

(assert (=> d!2162866 (= c!1283138 ((_ is EmptyExpr!16877) lt!2467543))))

(assert (=> d!2162866 (= lt!2467626 e!4158919)))

(declare-fun c!1283137 () Bool)

(assert (=> d!2162866 (= c!1283137 (isEmpty!38750 s!14361))))

(assert (=> d!2162866 (validRegex!8585 lt!2467543)))

(assert (=> d!2162866 (= (matchR!9022 lt!2467543 s!14361) lt!2467626)))

(declare-fun b!6906981 () Bool)

(assert (=> b!6906981 (= e!4158919 (matchR!9022 (derivativeStep!5397 lt!2467543 (head!13850 s!14361)) (tail!12902 s!14361)))))

(declare-fun b!6906982 () Bool)

(assert (=> b!6906982 (= e!4158924 (not lt!2467626))))

(declare-fun b!6906983 () Bool)

(assert (=> b!6906983 (= e!4158921 e!4158920)))

(declare-fun res!2816678 () Bool)

(assert (=> b!6906983 (=> res!2816678 e!4158920)))

(assert (=> b!6906983 (= res!2816678 call!628047)))

(declare-fun b!6906984 () Bool)

(assert (=> b!6906984 (= e!4158923 e!4158924)))

(declare-fun c!1283139 () Bool)

(assert (=> b!6906984 (= c!1283139 ((_ is EmptyLang!16877) lt!2467543))))

(assert (= (and d!2162866 c!1283137) b!6906973))

(assert (= (and d!2162866 (not c!1283137)) b!6906981))

(assert (= (and d!2162866 c!1283138) b!6906979))

(assert (= (and d!2162866 (not c!1283138)) b!6906984))

(assert (= (and b!6906984 c!1283139) b!6906982))

(assert (= (and b!6906984 (not c!1283139)) b!6906978))

(assert (= (and b!6906978 (not res!2816680)) b!6906975))

(assert (= (and b!6906975 res!2816675) b!6906971))

(assert (= (and b!6906971 res!2816677) b!6906974))

(assert (= (and b!6906974 res!2816679) b!6906977))

(assert (= (and b!6906975 (not res!2816676)) b!6906976))

(assert (= (and b!6906976 res!2816673) b!6906983))

(assert (= (and b!6906983 (not res!2816678)) b!6906972))

(assert (= (and b!6906972 (not res!2816674)) b!6906980))

(assert (= (or b!6906979 b!6906971 b!6906983) bm!628042))

(assert (=> bm!628042 m!7623132))

(assert (=> b!6906974 m!7623146))

(assert (=> b!6906974 m!7623146))

(assert (=> b!6906974 m!7623148))

(assert (=> b!6906972 m!7623146))

(assert (=> b!6906972 m!7623146))

(assert (=> b!6906972 m!7623148))

(assert (=> d!2162866 m!7623132))

(assert (=> d!2162866 m!7623144))

(assert (=> b!6906981 m!7623152))

(assert (=> b!6906981 m!7623152))

(declare-fun m!7623160 () Bool)

(assert (=> b!6906981 m!7623160))

(assert (=> b!6906981 m!7623146))

(assert (=> b!6906981 m!7623160))

(assert (=> b!6906981 m!7623146))

(declare-fun m!7623162 () Bool)

(assert (=> b!6906981 m!7623162))

(assert (=> b!6906977 m!7623152))

(assert (=> b!6906980 m!7623152))

(declare-fun m!7623164 () Bool)

(assert (=> b!6906973 m!7623164))

(assert (=> b!6906283 d!2162866))

(declare-fun d!2162868 () Bool)

(assert (=> d!2162868 (= (matchR!9022 lt!2467546 s!14361) (matchRSpec!3940 lt!2467546 s!14361))))

(declare-fun lt!2467627 () Unit!160490)

(assert (=> d!2162868 (= lt!2467627 (choose!51432 lt!2467546 s!14361))))

(assert (=> d!2162868 (validRegex!8585 lt!2467546)))

(assert (=> d!2162868 (= (mainMatchTheorem!3940 lt!2467546 s!14361) lt!2467627)))

(declare-fun bs!1843865 () Bool)

(assert (= bs!1843865 d!2162868))

(assert (=> bs!1843865 m!7622612))

(assert (=> bs!1843865 m!7622606))

(declare-fun m!7623166 () Bool)

(assert (=> bs!1843865 m!7623166))

(assert (=> bs!1843865 m!7623150))

(assert (=> b!6906283 d!2162868))

(declare-fun b!6906995 () Bool)

(declare-fun e!4158927 () Bool)

(assert (=> b!6906995 (= e!4158927 tp_is_empty!42979)))

(declare-fun b!6906998 () Bool)

(declare-fun tp!1901774 () Bool)

(declare-fun tp!1901771 () Bool)

(assert (=> b!6906998 (= e!4158927 (and tp!1901774 tp!1901771))))

(declare-fun b!6906996 () Bool)

(declare-fun tp!1901770 () Bool)

(declare-fun tp!1901772 () Bool)

(assert (=> b!6906996 (= e!4158927 (and tp!1901770 tp!1901772))))

(assert (=> b!6906273 (= tp!1901664 e!4158927)))

(declare-fun b!6906997 () Bool)

(declare-fun tp!1901773 () Bool)

(assert (=> b!6906997 (= e!4158927 tp!1901773)))

(assert (= (and b!6906273 ((_ is ElementMatch!16877) (regOne!34266 r1!6342))) b!6906995))

(assert (= (and b!6906273 ((_ is Concat!25722) (regOne!34266 r1!6342))) b!6906996))

(assert (= (and b!6906273 ((_ is Star!16877) (regOne!34266 r1!6342))) b!6906997))

(assert (= (and b!6906273 ((_ is Union!16877) (regOne!34266 r1!6342))) b!6906998))

(declare-fun b!6906999 () Bool)

(declare-fun e!4158928 () Bool)

(assert (=> b!6906999 (= e!4158928 tp_is_empty!42979)))

(declare-fun b!6907002 () Bool)

(declare-fun tp!1901779 () Bool)

(declare-fun tp!1901776 () Bool)

(assert (=> b!6907002 (= e!4158928 (and tp!1901779 tp!1901776))))

(declare-fun b!6907000 () Bool)

(declare-fun tp!1901775 () Bool)

(declare-fun tp!1901777 () Bool)

(assert (=> b!6907000 (= e!4158928 (and tp!1901775 tp!1901777))))

(assert (=> b!6906273 (= tp!1901666 e!4158928)))

(declare-fun b!6907001 () Bool)

(declare-fun tp!1901778 () Bool)

(assert (=> b!6907001 (= e!4158928 tp!1901778)))

(assert (= (and b!6906273 ((_ is ElementMatch!16877) (regTwo!34266 r1!6342))) b!6906999))

(assert (= (and b!6906273 ((_ is Concat!25722) (regTwo!34266 r1!6342))) b!6907000))

(assert (= (and b!6906273 ((_ is Star!16877) (regTwo!34266 r1!6342))) b!6907001))

(assert (= (and b!6906273 ((_ is Union!16877) (regTwo!34266 r1!6342))) b!6907002))

(declare-fun b!6907003 () Bool)

(declare-fun e!4158929 () Bool)

(assert (=> b!6907003 (= e!4158929 tp_is_empty!42979)))

(declare-fun b!6907006 () Bool)

(declare-fun tp!1901784 () Bool)

(declare-fun tp!1901781 () Bool)

(assert (=> b!6907006 (= e!4158929 (and tp!1901784 tp!1901781))))

(declare-fun b!6907004 () Bool)

(declare-fun tp!1901780 () Bool)

(declare-fun tp!1901782 () Bool)

(assert (=> b!6907004 (= e!4158929 (and tp!1901780 tp!1901782))))

(assert (=> b!6906268 (= tp!1901662 e!4158929)))

(declare-fun b!6907005 () Bool)

(declare-fun tp!1901783 () Bool)

(assert (=> b!6907005 (= e!4158929 tp!1901783)))

(assert (= (and b!6906268 ((_ is ElementMatch!16877) (regOne!34267 r1!6342))) b!6907003))

(assert (= (and b!6906268 ((_ is Concat!25722) (regOne!34267 r1!6342))) b!6907004))

(assert (= (and b!6906268 ((_ is Star!16877) (regOne!34267 r1!6342))) b!6907005))

(assert (= (and b!6906268 ((_ is Union!16877) (regOne!34267 r1!6342))) b!6907006))

(declare-fun b!6907007 () Bool)

(declare-fun e!4158930 () Bool)

(assert (=> b!6907007 (= e!4158930 tp_is_empty!42979)))

(declare-fun b!6907010 () Bool)

(declare-fun tp!1901789 () Bool)

(declare-fun tp!1901786 () Bool)

(assert (=> b!6907010 (= e!4158930 (and tp!1901789 tp!1901786))))

(declare-fun b!6907008 () Bool)

(declare-fun tp!1901785 () Bool)

(declare-fun tp!1901787 () Bool)

(assert (=> b!6907008 (= e!4158930 (and tp!1901785 tp!1901787))))

(assert (=> b!6906268 (= tp!1901659 e!4158930)))

(declare-fun b!6907009 () Bool)

(declare-fun tp!1901788 () Bool)

(assert (=> b!6907009 (= e!4158930 tp!1901788)))

(assert (= (and b!6906268 ((_ is ElementMatch!16877) (regTwo!34267 r1!6342))) b!6907007))

(assert (= (and b!6906268 ((_ is Concat!25722) (regTwo!34267 r1!6342))) b!6907008))

(assert (= (and b!6906268 ((_ is Star!16877) (regTwo!34267 r1!6342))) b!6907009))

(assert (= (and b!6906268 ((_ is Union!16877) (regTwo!34267 r1!6342))) b!6907010))

(declare-fun b!6907011 () Bool)

(declare-fun e!4158931 () Bool)

(assert (=> b!6907011 (= e!4158931 tp_is_empty!42979)))

(declare-fun b!6907014 () Bool)

(declare-fun tp!1901794 () Bool)

(declare-fun tp!1901791 () Bool)

(assert (=> b!6907014 (= e!4158931 (and tp!1901794 tp!1901791))))

(declare-fun b!6907012 () Bool)

(declare-fun tp!1901790 () Bool)

(declare-fun tp!1901792 () Bool)

(assert (=> b!6907012 (= e!4158931 (and tp!1901790 tp!1901792))))

(assert (=> b!6906279 (= tp!1901667 e!4158931)))

(declare-fun b!6907013 () Bool)

(declare-fun tp!1901793 () Bool)

(assert (=> b!6907013 (= e!4158931 tp!1901793)))

(assert (= (and b!6906279 ((_ is ElementMatch!16877) (reg!17206 r1!6342))) b!6907011))

(assert (= (and b!6906279 ((_ is Concat!25722) (reg!17206 r1!6342))) b!6907012))

(assert (= (and b!6906279 ((_ is Star!16877) (reg!17206 r1!6342))) b!6907013))

(assert (= (and b!6906279 ((_ is Union!16877) (reg!17206 r1!6342))) b!6907014))

(declare-fun b!6907015 () Bool)

(declare-fun e!4158932 () Bool)

(assert (=> b!6907015 (= e!4158932 tp_is_empty!42979)))

(declare-fun b!6907018 () Bool)

(declare-fun tp!1901799 () Bool)

(declare-fun tp!1901796 () Bool)

(assert (=> b!6907018 (= e!4158932 (and tp!1901799 tp!1901796))))

(declare-fun b!6907016 () Bool)

(declare-fun tp!1901795 () Bool)

(declare-fun tp!1901797 () Bool)

(assert (=> b!6907016 (= e!4158932 (and tp!1901795 tp!1901797))))

(assert (=> b!6906274 (= tp!1901668 e!4158932)))

(declare-fun b!6907017 () Bool)

(declare-fun tp!1901798 () Bool)

(assert (=> b!6907017 (= e!4158932 tp!1901798)))

(assert (= (and b!6906274 ((_ is ElementMatch!16877) (regOne!34267 r3!135))) b!6907015))

(assert (= (and b!6906274 ((_ is Concat!25722) (regOne!34267 r3!135))) b!6907016))

(assert (= (and b!6906274 ((_ is Star!16877) (regOne!34267 r3!135))) b!6907017))

(assert (= (and b!6906274 ((_ is Union!16877) (regOne!34267 r3!135))) b!6907018))

(declare-fun b!6907019 () Bool)

(declare-fun e!4158933 () Bool)

(assert (=> b!6907019 (= e!4158933 tp_is_empty!42979)))

(declare-fun b!6907022 () Bool)

(declare-fun tp!1901804 () Bool)

(declare-fun tp!1901801 () Bool)

(assert (=> b!6907022 (= e!4158933 (and tp!1901804 tp!1901801))))

(declare-fun b!6907020 () Bool)

(declare-fun tp!1901800 () Bool)

(declare-fun tp!1901802 () Bool)

(assert (=> b!6907020 (= e!4158933 (and tp!1901800 tp!1901802))))

(assert (=> b!6906274 (= tp!1901657 e!4158933)))

(declare-fun b!6907021 () Bool)

(declare-fun tp!1901803 () Bool)

(assert (=> b!6907021 (= e!4158933 tp!1901803)))

(assert (= (and b!6906274 ((_ is ElementMatch!16877) (regTwo!34267 r3!135))) b!6907019))

(assert (= (and b!6906274 ((_ is Concat!25722) (regTwo!34267 r3!135))) b!6907020))

(assert (= (and b!6906274 ((_ is Star!16877) (regTwo!34267 r3!135))) b!6907021))

(assert (= (and b!6906274 ((_ is Union!16877) (regTwo!34267 r3!135))) b!6907022))

(declare-fun b!6907023 () Bool)

(declare-fun e!4158934 () Bool)

(assert (=> b!6907023 (= e!4158934 tp_is_empty!42979)))

(declare-fun b!6907026 () Bool)

(declare-fun tp!1901809 () Bool)

(declare-fun tp!1901806 () Bool)

(assert (=> b!6907026 (= e!4158934 (and tp!1901809 tp!1901806))))

(declare-fun b!6907024 () Bool)

(declare-fun tp!1901805 () Bool)

(declare-fun tp!1901807 () Bool)

(assert (=> b!6907024 (= e!4158934 (and tp!1901805 tp!1901807))))

(assert (=> b!6906269 (= tp!1901665 e!4158934)))

(declare-fun b!6907025 () Bool)

(declare-fun tp!1901808 () Bool)

(assert (=> b!6907025 (= e!4158934 tp!1901808)))

(assert (= (and b!6906269 ((_ is ElementMatch!16877) (regOne!34267 r2!6280))) b!6907023))

(assert (= (and b!6906269 ((_ is Concat!25722) (regOne!34267 r2!6280))) b!6907024))

(assert (= (and b!6906269 ((_ is Star!16877) (regOne!34267 r2!6280))) b!6907025))

(assert (= (and b!6906269 ((_ is Union!16877) (regOne!34267 r2!6280))) b!6907026))

(declare-fun b!6907027 () Bool)

(declare-fun e!4158935 () Bool)

(assert (=> b!6907027 (= e!4158935 tp_is_empty!42979)))

(declare-fun b!6907030 () Bool)

(declare-fun tp!1901814 () Bool)

(declare-fun tp!1901811 () Bool)

(assert (=> b!6907030 (= e!4158935 (and tp!1901814 tp!1901811))))

(declare-fun b!6907028 () Bool)

(declare-fun tp!1901810 () Bool)

(declare-fun tp!1901812 () Bool)

(assert (=> b!6907028 (= e!4158935 (and tp!1901810 tp!1901812))))

(assert (=> b!6906269 (= tp!1901670 e!4158935)))

(declare-fun b!6907029 () Bool)

(declare-fun tp!1901813 () Bool)

(assert (=> b!6907029 (= e!4158935 tp!1901813)))

(assert (= (and b!6906269 ((_ is ElementMatch!16877) (regTwo!34267 r2!6280))) b!6907027))

(assert (= (and b!6906269 ((_ is Concat!25722) (regTwo!34267 r2!6280))) b!6907028))

(assert (= (and b!6906269 ((_ is Star!16877) (regTwo!34267 r2!6280))) b!6907029))

(assert (= (and b!6906269 ((_ is Union!16877) (regTwo!34267 r2!6280))) b!6907030))

(declare-fun b!6907031 () Bool)

(declare-fun e!4158936 () Bool)

(assert (=> b!6907031 (= e!4158936 tp_is_empty!42979)))

(declare-fun b!6907034 () Bool)

(declare-fun tp!1901819 () Bool)

(declare-fun tp!1901816 () Bool)

(assert (=> b!6907034 (= e!4158936 (and tp!1901819 tp!1901816))))

(declare-fun b!6907032 () Bool)

(declare-fun tp!1901815 () Bool)

(declare-fun tp!1901817 () Bool)

(assert (=> b!6907032 (= e!4158936 (and tp!1901815 tp!1901817))))

(assert (=> b!6906280 (= tp!1901669 e!4158936)))

(declare-fun b!6907033 () Bool)

(declare-fun tp!1901818 () Bool)

(assert (=> b!6907033 (= e!4158936 tp!1901818)))

(assert (= (and b!6906280 ((_ is ElementMatch!16877) (regOne!34266 r2!6280))) b!6907031))

(assert (= (and b!6906280 ((_ is Concat!25722) (regOne!34266 r2!6280))) b!6907032))

(assert (= (and b!6906280 ((_ is Star!16877) (regOne!34266 r2!6280))) b!6907033))

(assert (= (and b!6906280 ((_ is Union!16877) (regOne!34266 r2!6280))) b!6907034))

(declare-fun b!6907035 () Bool)

(declare-fun e!4158937 () Bool)

(assert (=> b!6907035 (= e!4158937 tp_is_empty!42979)))

(declare-fun b!6907038 () Bool)

(declare-fun tp!1901824 () Bool)

(declare-fun tp!1901821 () Bool)

(assert (=> b!6907038 (= e!4158937 (and tp!1901824 tp!1901821))))

(declare-fun b!6907036 () Bool)

(declare-fun tp!1901820 () Bool)

(declare-fun tp!1901822 () Bool)

(assert (=> b!6907036 (= e!4158937 (and tp!1901820 tp!1901822))))

(assert (=> b!6906280 (= tp!1901671 e!4158937)))

(declare-fun b!6907037 () Bool)

(declare-fun tp!1901823 () Bool)

(assert (=> b!6907037 (= e!4158937 tp!1901823)))

(assert (= (and b!6906280 ((_ is ElementMatch!16877) (regTwo!34266 r2!6280))) b!6907035))

(assert (= (and b!6906280 ((_ is Concat!25722) (regTwo!34266 r2!6280))) b!6907036))

(assert (= (and b!6906280 ((_ is Star!16877) (regTwo!34266 r2!6280))) b!6907037))

(assert (= (and b!6906280 ((_ is Union!16877) (regTwo!34266 r2!6280))) b!6907038))

(declare-fun b!6907039 () Bool)

(declare-fun e!4158938 () Bool)

(assert (=> b!6907039 (= e!4158938 tp_is_empty!42979)))

(declare-fun b!6907042 () Bool)

(declare-fun tp!1901829 () Bool)

(declare-fun tp!1901826 () Bool)

(assert (=> b!6907042 (= e!4158938 (and tp!1901829 tp!1901826))))

(declare-fun b!6907040 () Bool)

(declare-fun tp!1901825 () Bool)

(declare-fun tp!1901827 () Bool)

(assert (=> b!6907040 (= e!4158938 (and tp!1901825 tp!1901827))))

(assert (=> b!6906281 (= tp!1901660 e!4158938)))

(declare-fun b!6907041 () Bool)

(declare-fun tp!1901828 () Bool)

(assert (=> b!6907041 (= e!4158938 tp!1901828)))

(assert (= (and b!6906281 ((_ is ElementMatch!16877) (reg!17206 r2!6280))) b!6907039))

(assert (= (and b!6906281 ((_ is Concat!25722) (reg!17206 r2!6280))) b!6907040))

(assert (= (and b!6906281 ((_ is Star!16877) (reg!17206 r2!6280))) b!6907041))

(assert (= (and b!6906281 ((_ is Union!16877) (reg!17206 r2!6280))) b!6907042))

(declare-fun b!6907043 () Bool)

(declare-fun e!4158939 () Bool)

(assert (=> b!6907043 (= e!4158939 tp_is_empty!42979)))

(declare-fun b!6907046 () Bool)

(declare-fun tp!1901834 () Bool)

(declare-fun tp!1901831 () Bool)

(assert (=> b!6907046 (= e!4158939 (and tp!1901834 tp!1901831))))

(declare-fun b!6907044 () Bool)

(declare-fun tp!1901830 () Bool)

(declare-fun tp!1901832 () Bool)

(assert (=> b!6907044 (= e!4158939 (and tp!1901830 tp!1901832))))

(assert (=> b!6906276 (= tp!1901663 e!4158939)))

(declare-fun b!6907045 () Bool)

(declare-fun tp!1901833 () Bool)

(assert (=> b!6907045 (= e!4158939 tp!1901833)))

(assert (= (and b!6906276 ((_ is ElementMatch!16877) (regOne!34266 r3!135))) b!6907043))

(assert (= (and b!6906276 ((_ is Concat!25722) (regOne!34266 r3!135))) b!6907044))

(assert (= (and b!6906276 ((_ is Star!16877) (regOne!34266 r3!135))) b!6907045))

(assert (= (and b!6906276 ((_ is Union!16877) (regOne!34266 r3!135))) b!6907046))

(declare-fun b!6907047 () Bool)

(declare-fun e!4158940 () Bool)

(assert (=> b!6907047 (= e!4158940 tp_is_empty!42979)))

(declare-fun b!6907050 () Bool)

(declare-fun tp!1901839 () Bool)

(declare-fun tp!1901836 () Bool)

(assert (=> b!6907050 (= e!4158940 (and tp!1901839 tp!1901836))))

(declare-fun b!6907048 () Bool)

(declare-fun tp!1901835 () Bool)

(declare-fun tp!1901837 () Bool)

(assert (=> b!6907048 (= e!4158940 (and tp!1901835 tp!1901837))))

(assert (=> b!6906276 (= tp!1901661 e!4158940)))

(declare-fun b!6907049 () Bool)

(declare-fun tp!1901838 () Bool)

(assert (=> b!6907049 (= e!4158940 tp!1901838)))

(assert (= (and b!6906276 ((_ is ElementMatch!16877) (regTwo!34266 r3!135))) b!6907047))

(assert (= (and b!6906276 ((_ is Concat!25722) (regTwo!34266 r3!135))) b!6907048))

(assert (= (and b!6906276 ((_ is Star!16877) (regTwo!34266 r3!135))) b!6907049))

(assert (= (and b!6906276 ((_ is Union!16877) (regTwo!34266 r3!135))) b!6907050))

(declare-fun b!6907051 () Bool)

(declare-fun e!4158941 () Bool)

(assert (=> b!6907051 (= e!4158941 tp_is_empty!42979)))

(declare-fun b!6907054 () Bool)

(declare-fun tp!1901844 () Bool)

(declare-fun tp!1901841 () Bool)

(assert (=> b!6907054 (= e!4158941 (and tp!1901844 tp!1901841))))

(declare-fun b!6907052 () Bool)

(declare-fun tp!1901840 () Bool)

(declare-fun tp!1901842 () Bool)

(assert (=> b!6907052 (= e!4158941 (and tp!1901840 tp!1901842))))

(assert (=> b!6906272 (= tp!1901658 e!4158941)))

(declare-fun b!6907053 () Bool)

(declare-fun tp!1901843 () Bool)

(assert (=> b!6907053 (= e!4158941 tp!1901843)))

(assert (= (and b!6906272 ((_ is ElementMatch!16877) (reg!17206 r3!135))) b!6907051))

(assert (= (and b!6906272 ((_ is Concat!25722) (reg!17206 r3!135))) b!6907052))

(assert (= (and b!6906272 ((_ is Star!16877) (reg!17206 r3!135))) b!6907053))

(assert (= (and b!6906272 ((_ is Union!16877) (reg!17206 r3!135))) b!6907054))

(declare-fun b!6907059 () Bool)

(declare-fun e!4158944 () Bool)

(declare-fun tp!1901847 () Bool)

(assert (=> b!6907059 (= e!4158944 (and tp_is_empty!42979 tp!1901847))))

(assert (=> b!6906267 (= tp!1901656 e!4158944)))

(assert (= (and b!6906267 ((_ is Cons!66510) (t!380377 s!14361))) b!6907059))

(check-sat (not bm!628037) (not b!6906977) (not b!6906588) (not b!6907020) (not b!6906997) (not d!2162838) (not b!6907059) (not b!6906963) (not b!6907002) (not b!6906376) (not b!6907001) (not d!2162794) (not b!6907004) (not d!2162866) (not b!6907041) (not b!6906937) (not b!6906506) (not d!2162764) (not b!6906959) (not b!6906876) (not b!6907013) (not b!6906981) (not bm!628042) (not bm!628040) (not b!6906951) (not b!6906905) (not b!6906725) (not bm!628034) (not b!6906913) (not d!2162770) (not b!6907005) (not b!6907016) (not bm!628041) (not d!2162830) (not b!6906721) (not bm!627978) (not b!6906890) (not bm!628025) (not bm!628032) (not b!6907026) (not d!2162762) (not b!6906921) (not b!6907033) (not b!6906940) (not d!2162852) (not b!6906379) (not b!6907024) (not b!6907018) (not b!6907025) (not b!6906960) (not bm!628028) (not b!6907028) (not d!2162846) (not b!6906875) (not bm!628038) (not d!2162750) (not d!2162748) (not b!6906898) (not b!6907010) (not b!6907032) (not b!6906827) (not b!6906416) (not b!6907052) (not b!6906872) (not b!6906716) (not b!6907046) (not b!6907022) (not b!6906863) (not bm!628029) (not b!6907029) (not bm!628033) (not b!6907042) (not d!2162840) (not bm!628026) (not bm!628002) (not b!6906868) (not b!6907040) (not b!6906998) (not b!6906932) (not b!6906996) (not bm!628039) (not b!6907037) (not d!2162756) (not b!6906718) (not d!2162822) (not b!6907048) (not b!6906886) (not d!2162868) (not b!6906906) (not b!6907054) (not b!6906907) (not b!6906724) (not bm!628018) (not b!6906867) tp_is_empty!42979 (not b!6907030) (not b!6906824) (not bm!628001) (not d!2162848) (not b!6907009) (not b!6906825) (not b!6906895) (not b!6906908) (not b!6906903) (not b!6907049) (not b!6906892) (not bm!628030) (not b!6906717) (not d!2162850) (not b!6906918) (not b!6906922) (not b!6906966) (not b!6906958) (not b!6906980) (not b!6907044) (not b!6906973) (not d!2162842) (not bm!627976) (not b!6906915) (not d!2162864) (not b!6906822) (not b!6906891) (not b!6907050) (not bm!628035) (not bm!627979) (not b!6906967) (not b!6906869) (not b!6907012) (not b!6906974) (not b!6906972) (not b!6907014) (not b!6907034) (not b!6906419) (not b!6906948) (not b!6907017) (not d!2162768) (not b!6907036) (not b!6906591) (not b!6907021) (not b!6907008) (not b!6906914) (not b!6907045) (not d!2162854) (not d!2162820) (not b!6906479) (not b!6906826) (not b!6906909) (not d!2162862) (not d!2162834) (not b!6907053) (not bm!627977) (not d!2162766) (not b!6906899) (not b!6906480) (not b!6907006) (not b!6907000) (not b!6907038) (not b!6906828) (not b!6906505))
(check-sat)
