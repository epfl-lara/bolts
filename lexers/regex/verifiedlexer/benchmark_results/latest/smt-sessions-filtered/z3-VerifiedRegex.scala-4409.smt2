; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!234664 () Bool)

(assert start!234664)

(declare-fun b!2391420 () Bool)

(assert (=> b!2391420 true))

(assert (=> b!2391420 true))

(declare-fun lambda!89595 () Int)

(declare-fun lambda!89594 () Int)

(assert (=> b!2391420 (not (= lambda!89595 lambda!89594))))

(assert (=> b!2391420 true))

(assert (=> b!2391420 true))

(declare-fun b!2391405 () Bool)

(declare-fun e!1524366 () Bool)

(declare-fun call!145620 () Bool)

(assert (=> b!2391405 (= e!1524366 call!145620)))

(declare-fun b!2391406 () Bool)

(declare-fun e!1524356 () Bool)

(declare-fun call!145622 () Bool)

(assert (=> b!2391406 (= e!1524356 call!145622)))

(declare-fun res!1015949 () Bool)

(declare-fun e!1524365 () Bool)

(assert (=> start!234664 (=> (not res!1015949) (not e!1524365))))

(declare-datatypes ((C!14180 0))(
  ( (C!14181 (val!8332 Int)) )
))
(declare-datatypes ((Regex!7011 0))(
  ( (ElementMatch!7011 (c!380393 C!14180)) (Concat!11647 (regOne!14534 Regex!7011) (regTwo!14534 Regex!7011)) (EmptyExpr!7011) (Star!7011 (reg!7340 Regex!7011)) (EmptyLang!7011) (Union!7011 (regOne!14535 Regex!7011) (regTwo!14535 Regex!7011)) )
))
(declare-datatypes ((List!28260 0))(
  ( (Nil!28162) (Cons!28162 (h!33563 Regex!7011) (t!208237 List!28260)) )
))
(declare-fun l!9164 () List!28260)

(declare-fun lambda!89593 () Int)

(declare-fun forall!5645 (List!28260 Int) Bool)

(assert (=> start!234664 (= res!1015949 (forall!5645 l!9164 lambda!89593))))

(assert (=> start!234664 e!1524365))

(declare-fun e!1524364 () Bool)

(assert (=> start!234664 e!1524364))

(declare-fun e!1524361 () Bool)

(assert (=> start!234664 e!1524361))

(declare-fun e!1524360 () Bool)

(assert (=> start!234664 e!1524360))

(declare-datatypes ((List!28261 0))(
  ( (Nil!28163) (Cons!28163 (h!33564 C!14180) (t!208238 List!28261)) )
))
(declare-fun s!9460 () List!28261)

(declare-fun c!380390 () Bool)

(declare-fun bm!145607 () Bool)

(declare-fun call!145613 () List!28261)

(declare-fun lt!870584 () Regex!7011)

(declare-fun lt!870586 () Regex!7011)

(declare-fun matchR!3128 (Regex!7011 List!28261) Bool)

(assert (=> bm!145607 (= call!145622 (matchR!3128 (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011)) (ite c!380390 s!9460 call!145613)))))

(declare-datatypes ((tuple2!27886 0))(
  ( (tuple2!27887 (_1!16484 List!28261) (_2!16484 List!28261)) )
))
(declare-datatypes ((Option!5554 0))(
  ( (None!5553) (Some!5553 (v!30961 tuple2!27886)) )
))
(declare-fun lt!870592 () Option!5554)

(declare-fun c!380389 () Bool)

(declare-fun call!145618 () Bool)

(declare-fun call!145616 () Option!5554)

(declare-fun call!145619 () Option!5554)

(declare-fun bm!145608 () Bool)

(declare-fun isDefined!4382 (Option!5554) Bool)

(assert (=> bm!145608 (= call!145618 (isDefined!4382 (ite c!380389 (ite c!380390 call!145619 lt!870592) call!145616)))))

(declare-fun b!2391407 () Bool)

(declare-fun e!1524355 () Bool)

(assert (=> b!2391407 (= e!1524365 (not e!1524355))))

(declare-fun res!1015950 () Bool)

(assert (=> b!2391407 (=> res!1015950 e!1524355)))

(declare-fun r!13927 () Regex!7011)

(get-info :version)

(assert (=> b!2391407 (= res!1015950 (not ((_ is Concat!11647) r!13927)))))

(declare-fun lt!870599 () Bool)

(declare-fun lt!870587 () Bool)

(assert (=> b!2391407 (= lt!870599 lt!870587)))

(declare-fun matchRSpec!860 (Regex!7011 List!28261) Bool)

(assert (=> b!2391407 (= lt!870587 (matchRSpec!860 r!13927 s!9460))))

(assert (=> b!2391407 (= lt!870599 (matchR!3128 r!13927 s!9460))))

(declare-datatypes ((Unit!41174 0))(
  ( (Unit!41175) )
))
(declare-fun lt!870589 () Unit!41174)

(declare-fun mainMatchTheorem!860 (Regex!7011 List!28261) Unit!41174)

(assert (=> b!2391407 (= lt!870589 (mainMatchTheorem!860 r!13927 s!9460))))

(declare-fun b!2391408 () Bool)

(declare-fun tp_is_empty!11435 () Bool)

(assert (=> b!2391408 (= e!1524361 tp_is_empty!11435)))

(declare-fun b!2391409 () Bool)

(declare-fun e!1524351 () Bool)

(declare-fun lt!870596 () Regex!7011)

(declare-fun validRegex!2736 (Regex!7011) Bool)

(assert (=> b!2391409 (= e!1524351 (validRegex!2736 lt!870596))))

(declare-fun b!2391410 () Bool)

(declare-fun e!1524353 () Unit!41174)

(declare-fun e!1524357 () Unit!41174)

(assert (=> b!2391410 (= e!1524353 e!1524357)))

(declare-fun lt!870594 () List!28260)

(declare-fun tail!3523 (List!28260) List!28260)

(assert (=> b!2391410 (= lt!870594 (tail!3523 l!9164))))

(declare-fun isEmpty!16140 (List!28260) Bool)

(assert (=> b!2391410 (= c!380389 (isEmpty!16140 lt!870594))))

(declare-fun b!2391411 () Bool)

(declare-fun tp!762237 () Bool)

(assert (=> b!2391411 (= e!1524360 (and tp_is_empty!11435 tp!762237))))

(declare-fun b!2391412 () Bool)

(declare-fun e!1524358 () Bool)

(assert (=> b!2391412 e!1524358))

(declare-fun res!1015944 () Bool)

(assert (=> b!2391412 (=> (not res!1015944) (not e!1524358))))

(assert (=> b!2391412 (= res!1015944 call!145622)))

(declare-fun lt!870595 () Unit!41174)

(declare-fun lt!870597 () tuple2!27886)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!30 (Regex!7011 Regex!7011 List!28261 List!28261 List!28261) Unit!41174)

(assert (=> b!2391412 (= lt!870595 (lemmaFindSeparationIsDefinedThenConcatMatches!30 lt!870586 EmptyExpr!7011 (_1!16484 lt!870597) (_2!16484 lt!870597) s!9460))))

(declare-fun get!8614 (Option!5554) tuple2!27886)

(assert (=> b!2391412 (= lt!870597 (get!8614 lt!870592))))

(declare-fun e!1524363 () Unit!41174)

(declare-fun Unit!41176 () Unit!41174)

(assert (=> b!2391412 (= e!1524363 Unit!41176)))

(declare-fun b!2391413 () Bool)

(declare-fun tp!762236 () Bool)

(declare-fun tp!762240 () Bool)

(assert (=> b!2391413 (= e!1524361 (and tp!762236 tp!762240))))

(declare-fun bm!145609 () Bool)

(declare-fun call!145615 () Regex!7011)

(declare-fun generalisedConcat!112 (List!28260) Regex!7011)

(assert (=> bm!145609 (= call!145615 (generalisedConcat!112 lt!870594))))

(declare-fun b!2391414 () Bool)

(declare-fun e!1524352 () Bool)

(assert (=> b!2391414 (= e!1524352 e!1524351)))

(declare-fun res!1015948 () Bool)

(assert (=> b!2391414 (=> res!1015948 e!1524351)))

(assert (=> b!2391414 (= res!1015948 (not (validRegex!2736 (h!33563 l!9164))))))

(assert (=> b!2391414 (= lt!870596 (generalisedConcat!112 (t!208237 l!9164)))))

(declare-fun b!2391415 () Bool)

(declare-fun e!1524362 () Unit!41174)

(declare-fun Unit!41177 () Unit!41174)

(assert (=> b!2391415 (= e!1524362 Unit!41177)))

(assert (=> b!2391415 (= lt!870592 call!145619)))

(declare-fun lt!870601 () Bool)

(declare-fun call!145612 () Bool)

(assert (=> b!2391415 (= lt!870601 call!145612)))

(declare-fun c!380391 () Bool)

(assert (=> b!2391415 (= c!380391 lt!870601)))

(declare-fun lt!870590 () Unit!41174)

(assert (=> b!2391415 (= lt!870590 e!1524363)))

(declare-fun res!1015946 () Bool)

(assert (=> b!2391415 (= res!1015946 (not lt!870601))))

(declare-fun e!1524359 () Bool)

(assert (=> b!2391415 (=> (not res!1015946) (not e!1524359))))

(assert (=> b!2391415 e!1524359))

(declare-fun b!2391416 () Bool)

(declare-fun e!1524354 () Bool)

(assert (=> b!2391416 (= e!1524354 e!1524352)))

(declare-fun res!1015942 () Bool)

(assert (=> b!2391416 (=> res!1015942 e!1524352)))

(assert (=> b!2391416 (= res!1015942 (not ((_ is Cons!28162) l!9164)))))

(declare-fun lt!870600 () Unit!41174)

(assert (=> b!2391416 (= lt!870600 e!1524353)))

(declare-fun c!380392 () Bool)

(assert (=> b!2391416 (= c!380392 (isEmpty!16140 l!9164))))

(declare-fun call!145617 () Regex!7011)

(declare-fun call!145621 () Regex!7011)

(declare-fun bm!145610 () Bool)

(declare-fun findConcatSeparation!662 (Regex!7011 Regex!7011 List!28261 List!28261 List!28261) Option!5554)

(assert (=> bm!145610 (= call!145616 (findConcatSeparation!662 (ite c!380389 lt!870586 call!145621) (ite c!380389 call!145617 call!145615) Nil!28163 s!9460 s!9460))))

(declare-fun b!2391417 () Bool)

(assert (=> b!2391417 (= e!1524358 false)))

(declare-fun b!2391418 () Bool)

(declare-fun tp!762239 () Bool)

(assert (=> b!2391418 (= e!1524361 tp!762239)))

(declare-fun bm!145611 () Bool)

(declare-fun call!145614 () Option!5554)

(assert (=> bm!145611 (= call!145620 (isDefined!4382 call!145614))))

(declare-fun b!2391419 () Bool)

(declare-fun Unit!41178 () Unit!41174)

(assert (=> b!2391419 (= e!1524362 Unit!41178)))

(declare-fun lt!870585 () Unit!41174)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!48 (Regex!7011 Regex!7011 List!28261 List!28261) Unit!41174)

(assert (=> b!2391419 (= lt!870585 (lemmaTwoRegexMatchThenConcatMatchesConcatString!48 lt!870586 EmptyExpr!7011 s!9460 Nil!28163))))

(assert (=> b!2391419 (= lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011))))

(declare-fun res!1015947 () Bool)

(assert (=> b!2391419 (= res!1015947 (matchR!3128 lt!870584 call!145613))))

(assert (=> b!2391419 (=> (not res!1015947) (not e!1524356))))

(assert (=> b!2391419 e!1524356))

(declare-fun lt!870593 () Unit!41174)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!30 (Regex!7011 Regex!7011 List!28261) Unit!41174)

(assert (=> b!2391419 (= lt!870593 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!30 lt!870586 EmptyExpr!7011 s!9460))))

(declare-fun res!1015945 () Bool)

(assert (=> b!2391419 (= res!1015945 call!145612)))

(assert (=> b!2391419 (=> (not res!1015945) (not e!1524366))))

(assert (=> b!2391419 e!1524366))

(assert (=> b!2391420 (= e!1524355 e!1524354)))

(declare-fun res!1015943 () Bool)

(assert (=> b!2391420 (=> res!1015943 e!1524354)))

(declare-fun lt!870588 () Bool)

(assert (=> b!2391420 (= res!1015943 (not (= lt!870587 lt!870588)))))

(declare-fun Exists!1073 (Int) Bool)

(assert (=> b!2391420 (= (Exists!1073 lambda!89594) (Exists!1073 lambda!89595))))

(declare-fun lt!870602 () Unit!41174)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!412 (Regex!7011 Regex!7011 List!28261) Unit!41174)

(assert (=> b!2391420 (= lt!870602 (lemmaExistCutMatchRandMatchRSpecEquivalent!412 (regOne!14534 r!13927) (regTwo!14534 r!13927) s!9460))))

(assert (=> b!2391420 (= lt!870588 (Exists!1073 lambda!89594))))

(assert (=> b!2391420 (= lt!870588 (isDefined!4382 (findConcatSeparation!662 (regOne!14534 r!13927) (regTwo!14534 r!13927) Nil!28163 s!9460 s!9460)))))

(declare-fun lt!870598 () Unit!41174)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!662 (Regex!7011 Regex!7011 List!28261) Unit!41174)

(assert (=> b!2391420 (= lt!870598 (lemmaFindConcatSeparationEquivalentToExists!662 (regOne!14534 r!13927) (regTwo!14534 r!13927) s!9460))))

(declare-fun bm!145612 () Bool)

(declare-fun head!5253 (List!28260) Regex!7011)

(assert (=> bm!145612 (= call!145621 (head!5253 l!9164))))

(declare-fun b!2391421 () Bool)

(declare-fun Unit!41179 () Unit!41174)

(assert (=> b!2391421 (= e!1524353 Unit!41179)))

(assert (=> b!2391421 false))

(declare-fun b!2391422 () Bool)

(assert (=> b!2391422 (= lt!870599 call!145618)))

(declare-fun Unit!41180 () Unit!41174)

(assert (=> b!2391422 (= e!1524357 Unit!41180)))

(declare-fun bm!145613 () Bool)

(assert (=> bm!145613 (= call!145614 call!145616)))

(declare-fun b!2391423 () Bool)

(assert (=> b!2391423 (= e!1524359 (not call!145620))))

(declare-fun bm!145614 () Bool)

(assert (=> bm!145614 (= call!145619 (findConcatSeparation!662 lt!870586 EmptyExpr!7011 Nil!28163 s!9460 s!9460))))

(declare-fun bm!145615 () Bool)

(assert (=> bm!145615 (= call!145617 call!145615)))

(declare-fun b!2391424 () Bool)

(declare-fun Unit!41181 () Unit!41174)

(assert (=> b!2391424 (= e!1524363 Unit!41181)))

(declare-fun bm!145616 () Bool)

(assert (=> bm!145616 (= call!145612 call!145618)))

(declare-fun b!2391425 () Bool)

(declare-fun res!1015941 () Bool)

(assert (=> b!2391425 (=> (not res!1015941) (not e!1524365))))

(assert (=> b!2391425 (= res!1015941 (= r!13927 (generalisedConcat!112 l!9164)))))

(declare-fun b!2391426 () Bool)

(declare-fun tp!762241 () Bool)

(declare-fun tp!762238 () Bool)

(assert (=> b!2391426 (= e!1524361 (and tp!762241 tp!762238))))

(declare-fun b!2391427 () Bool)

(assert (=> b!2391427 (= lt!870599 (isDefined!4382 (findConcatSeparation!662 lt!870586 call!145615 Nil!28163 s!9460 s!9460)))))

(declare-fun lt!870591 () Unit!41174)

(assert (=> b!2391427 (= lt!870591 e!1524362)))

(assert (=> b!2391427 (= c!380390 (matchR!3128 lt!870586 s!9460))))

(assert (=> b!2391427 (= lt!870586 call!145621)))

(declare-fun Unit!41182 () Unit!41174)

(assert (=> b!2391427 (= e!1524357 Unit!41182)))

(declare-fun b!2391428 () Bool)

(declare-fun tp!762234 () Bool)

(declare-fun tp!762235 () Bool)

(assert (=> b!2391428 (= e!1524364 (and tp!762234 tp!762235))))

(declare-fun bm!145617 () Bool)

(declare-fun ++!6965 (List!28261 List!28261) List!28261)

(assert (=> bm!145617 (= call!145613 (++!6965 (ite c!380390 s!9460 (_1!16484 lt!870597)) (ite c!380390 Nil!28163 (_2!16484 lt!870597))))))

(assert (= (and start!234664 res!1015949) b!2391425))

(assert (= (and b!2391425 res!1015941) b!2391407))

(assert (= (and b!2391407 (not res!1015950)) b!2391420))

(assert (= (and b!2391420 (not res!1015943)) b!2391416))

(assert (= (and b!2391416 c!380392) b!2391421))

(assert (= (and b!2391416 (not c!380392)) b!2391410))

(assert (= (and b!2391410 c!380389) b!2391427))

(assert (= (and b!2391410 (not c!380389)) b!2391422))

(assert (= (and b!2391427 c!380390) b!2391419))

(assert (= (and b!2391427 (not c!380390)) b!2391415))

(assert (= (and b!2391419 res!1015947) b!2391406))

(assert (= (and b!2391419 res!1015945) b!2391405))

(assert (= (and b!2391415 c!380391) b!2391412))

(assert (= (and b!2391415 (not c!380391)) b!2391424))

(assert (= (and b!2391412 res!1015944) b!2391417))

(assert (= (and b!2391415 res!1015946) b!2391423))

(assert (= (or b!2391419 b!2391412) bm!145617))

(assert (= (or b!2391419 b!2391415) bm!145614))

(assert (= (or b!2391405 b!2391423) bm!145615))

(assert (= (or b!2391406 b!2391412) bm!145607))

(assert (= (or b!2391419 b!2391415) bm!145616))

(assert (= (or b!2391405 b!2391423) bm!145613))

(assert (= (or b!2391405 b!2391423) bm!145611))

(assert (= (or b!2391427 b!2391422) bm!145612))

(assert (= (or b!2391427 bm!145615 b!2391422) bm!145609))

(assert (= (or bm!145613 b!2391422) bm!145610))

(assert (= (or bm!145616 b!2391422) bm!145608))

(assert (= (and b!2391416 (not res!1015942)) b!2391414))

(assert (= (and b!2391414 (not res!1015948)) b!2391409))

(assert (= (and start!234664 ((_ is Cons!28162) l!9164)) b!2391428))

(assert (= (and start!234664 ((_ is ElementMatch!7011) r!13927)) b!2391408))

(assert (= (and start!234664 ((_ is Concat!11647) r!13927)) b!2391426))

(assert (= (and start!234664 ((_ is Star!7011) r!13927)) b!2391418))

(assert (= (and start!234664 ((_ is Union!7011) r!13927)) b!2391413))

(assert (= (and start!234664 ((_ is Cons!28163) s!9460)) b!2391411))

(declare-fun m!2791349 () Bool)

(assert (=> bm!145610 m!2791349))

(declare-fun m!2791351 () Bool)

(assert (=> bm!145611 m!2791351))

(declare-fun m!2791353 () Bool)

(assert (=> bm!145612 m!2791353))

(declare-fun m!2791355 () Bool)

(assert (=> bm!145607 m!2791355))

(declare-fun m!2791357 () Bool)

(assert (=> b!2391419 m!2791357))

(declare-fun m!2791359 () Bool)

(assert (=> b!2391419 m!2791359))

(declare-fun m!2791361 () Bool)

(assert (=> b!2391419 m!2791361))

(declare-fun m!2791363 () Bool)

(assert (=> b!2391414 m!2791363))

(declare-fun m!2791365 () Bool)

(assert (=> b!2391414 m!2791365))

(declare-fun m!2791367 () Bool)

(assert (=> b!2391409 m!2791367))

(declare-fun m!2791369 () Bool)

(assert (=> bm!145617 m!2791369))

(declare-fun m!2791371 () Bool)

(assert (=> bm!145614 m!2791371))

(declare-fun m!2791373 () Bool)

(assert (=> bm!145609 m!2791373))

(declare-fun m!2791375 () Bool)

(assert (=> b!2391425 m!2791375))

(declare-fun m!2791377 () Bool)

(assert (=> start!234664 m!2791377))

(declare-fun m!2791379 () Bool)

(assert (=> b!2391420 m!2791379))

(declare-fun m!2791381 () Bool)

(assert (=> b!2391420 m!2791381))

(declare-fun m!2791383 () Bool)

(assert (=> b!2391420 m!2791383))

(declare-fun m!2791385 () Bool)

(assert (=> b!2391420 m!2791385))

(declare-fun m!2791387 () Bool)

(assert (=> b!2391420 m!2791387))

(assert (=> b!2391420 m!2791383))

(assert (=> b!2391420 m!2791381))

(declare-fun m!2791389 () Bool)

(assert (=> b!2391420 m!2791389))

(declare-fun m!2791391 () Bool)

(assert (=> bm!145608 m!2791391))

(declare-fun m!2791393 () Bool)

(assert (=> b!2391416 m!2791393))

(declare-fun m!2791395 () Bool)

(assert (=> b!2391412 m!2791395))

(declare-fun m!2791397 () Bool)

(assert (=> b!2391412 m!2791397))

(declare-fun m!2791399 () Bool)

(assert (=> b!2391427 m!2791399))

(assert (=> b!2391427 m!2791399))

(declare-fun m!2791401 () Bool)

(assert (=> b!2391427 m!2791401))

(declare-fun m!2791403 () Bool)

(assert (=> b!2391427 m!2791403))

(declare-fun m!2791405 () Bool)

(assert (=> b!2391407 m!2791405))

(declare-fun m!2791407 () Bool)

(assert (=> b!2391407 m!2791407))

(declare-fun m!2791409 () Bool)

(assert (=> b!2391407 m!2791409))

(declare-fun m!2791411 () Bool)

(assert (=> b!2391410 m!2791411))

(declare-fun m!2791413 () Bool)

(assert (=> b!2391410 m!2791413))

(check-sat (not bm!145607) (not b!2391409) (not b!2391410) (not b!2391425) (not b!2391407) (not b!2391419) (not bm!145612) (not b!2391426) (not bm!145610) (not b!2391427) (not b!2391420) (not b!2391412) (not start!234664) (not b!2391414) (not b!2391411) (not bm!145614) tp_is_empty!11435 (not b!2391416) (not bm!145617) (not b!2391413) (not b!2391428) (not bm!145611) (not bm!145609) (not b!2391418) (not bm!145608))
(check-sat)
(get-model)

(declare-fun d!698236 () Bool)

(declare-fun isEmpty!16143 (Option!5554) Bool)

(assert (=> d!698236 (= (isDefined!4382 (findConcatSeparation!662 lt!870586 call!145615 Nil!28163 s!9460 s!9460)) (not (isEmpty!16143 (findConcatSeparation!662 lt!870586 call!145615 Nil!28163 s!9460 s!9460))))))

(declare-fun bs!462572 () Bool)

(assert (= bs!462572 d!698236))

(assert (=> bs!462572 m!2791399))

(declare-fun m!2791441 () Bool)

(assert (=> bs!462572 m!2791441))

(assert (=> b!2391427 d!698236))

(declare-fun b!2391584 () Bool)

(declare-fun e!1524459 () Option!5554)

(assert (=> b!2391584 (= e!1524459 (Some!5553 (tuple2!27887 Nil!28163 s!9460)))))

(declare-fun b!2391585 () Bool)

(declare-fun res!1016040 () Bool)

(declare-fun e!1524457 () Bool)

(assert (=> b!2391585 (=> (not res!1016040) (not e!1524457))))

(declare-fun lt!870632 () Option!5554)

(assert (=> b!2391585 (= res!1016040 (matchR!3128 lt!870586 (_1!16484 (get!8614 lt!870632))))))

(declare-fun b!2391586 () Bool)

(declare-fun e!1524461 () Bool)

(assert (=> b!2391586 (= e!1524461 (matchR!3128 call!145615 s!9460))))

(declare-fun b!2391587 () Bool)

(declare-fun e!1524460 () Bool)

(assert (=> b!2391587 (= e!1524460 (not (isDefined!4382 lt!870632)))))

(declare-fun b!2391588 () Bool)

(declare-fun res!1016044 () Bool)

(assert (=> b!2391588 (=> (not res!1016044) (not e!1524457))))

(assert (=> b!2391588 (= res!1016044 (matchR!3128 call!145615 (_2!16484 (get!8614 lt!870632))))))

(declare-fun b!2391590 () Bool)

(declare-fun lt!870634 () Unit!41174)

(declare-fun lt!870633 () Unit!41174)

(assert (=> b!2391590 (= lt!870634 lt!870633)))

(assert (=> b!2391590 (= (++!6965 (++!6965 Nil!28163 (Cons!28163 (h!33564 s!9460) Nil!28163)) (t!208238 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!607 (List!28261 C!14180 List!28261 List!28261) Unit!41174)

(assert (=> b!2391590 (= lt!870633 (lemmaMoveElementToOtherListKeepsConcatEq!607 Nil!28163 (h!33564 s!9460) (t!208238 s!9460) s!9460))))

(declare-fun e!1524458 () Option!5554)

(assert (=> b!2391590 (= e!1524458 (findConcatSeparation!662 lt!870586 call!145615 (++!6965 Nil!28163 (Cons!28163 (h!33564 s!9460) Nil!28163)) (t!208238 s!9460) s!9460))))

(declare-fun b!2391591 () Bool)

(assert (=> b!2391591 (= e!1524457 (= (++!6965 (_1!16484 (get!8614 lt!870632)) (_2!16484 (get!8614 lt!870632))) s!9460))))

(declare-fun b!2391592 () Bool)

(assert (=> b!2391592 (= e!1524458 None!5553)))

(declare-fun d!698238 () Bool)

(assert (=> d!698238 e!1524460))

(declare-fun res!1016041 () Bool)

(assert (=> d!698238 (=> res!1016041 e!1524460)))

(assert (=> d!698238 (= res!1016041 e!1524457)))

(declare-fun res!1016043 () Bool)

(assert (=> d!698238 (=> (not res!1016043) (not e!1524457))))

(assert (=> d!698238 (= res!1016043 (isDefined!4382 lt!870632))))

(assert (=> d!698238 (= lt!870632 e!1524459)))

(declare-fun c!380425 () Bool)

(assert (=> d!698238 (= c!380425 e!1524461)))

(declare-fun res!1016042 () Bool)

(assert (=> d!698238 (=> (not res!1016042) (not e!1524461))))

(assert (=> d!698238 (= res!1016042 (matchR!3128 lt!870586 Nil!28163))))

(assert (=> d!698238 (validRegex!2736 lt!870586)))

(assert (=> d!698238 (= (findConcatSeparation!662 lt!870586 call!145615 Nil!28163 s!9460 s!9460) lt!870632)))

(declare-fun b!2391589 () Bool)

(assert (=> b!2391589 (= e!1524459 e!1524458)))

(declare-fun c!380426 () Bool)

(assert (=> b!2391589 (= c!380426 ((_ is Nil!28163) s!9460))))

(assert (= (and d!698238 res!1016042) b!2391586))

(assert (= (and d!698238 c!380425) b!2391584))

(assert (= (and d!698238 (not c!380425)) b!2391589))

(assert (= (and b!2391589 c!380426) b!2391592))

(assert (= (and b!2391589 (not c!380426)) b!2391590))

(assert (= (and d!698238 res!1016043) b!2391585))

(assert (= (and b!2391585 res!1016040) b!2391588))

(assert (= (and b!2391588 res!1016044) b!2391591))

(assert (= (and d!698238 (not res!1016041)) b!2391587))

(declare-fun m!2791519 () Bool)

(assert (=> d!698238 m!2791519))

(declare-fun m!2791521 () Bool)

(assert (=> d!698238 m!2791521))

(declare-fun m!2791523 () Bool)

(assert (=> d!698238 m!2791523))

(declare-fun m!2791525 () Bool)

(assert (=> b!2391585 m!2791525))

(declare-fun m!2791527 () Bool)

(assert (=> b!2391585 m!2791527))

(declare-fun m!2791529 () Bool)

(assert (=> b!2391590 m!2791529))

(assert (=> b!2391590 m!2791529))

(declare-fun m!2791531 () Bool)

(assert (=> b!2391590 m!2791531))

(declare-fun m!2791533 () Bool)

(assert (=> b!2391590 m!2791533))

(assert (=> b!2391590 m!2791529))

(declare-fun m!2791539 () Bool)

(assert (=> b!2391590 m!2791539))

(declare-fun m!2791547 () Bool)

(assert (=> b!2391586 m!2791547))

(assert (=> b!2391588 m!2791525))

(declare-fun m!2791553 () Bool)

(assert (=> b!2391588 m!2791553))

(assert (=> b!2391591 m!2791525))

(declare-fun m!2791557 () Bool)

(assert (=> b!2391591 m!2791557))

(assert (=> b!2391587 m!2791519))

(assert (=> b!2391427 d!698238))

(declare-fun b!2391690 () Bool)

(declare-fun res!1016100 () Bool)

(declare-fun e!1524514 () Bool)

(assert (=> b!2391690 (=> (not res!1016100) (not e!1524514))))

(declare-fun call!145646 () Bool)

(assert (=> b!2391690 (= res!1016100 (not call!145646))))

(declare-fun b!2391691 () Bool)

(declare-fun e!1524519 () Bool)

(declare-fun derivativeStep!1718 (Regex!7011 C!14180) Regex!7011)

(declare-fun head!5255 (List!28261) C!14180)

(declare-fun tail!3525 (List!28261) List!28261)

(assert (=> b!2391691 (= e!1524519 (matchR!3128 (derivativeStep!1718 lt!870586 (head!5255 s!9460)) (tail!3525 s!9460)))))

(declare-fun b!2391692 () Bool)

(assert (=> b!2391692 (= e!1524514 (= (head!5255 s!9460) (c!380393 lt!870586)))))

(declare-fun b!2391693 () Bool)

(declare-fun res!1016098 () Bool)

(assert (=> b!2391693 (=> (not res!1016098) (not e!1524514))))

(declare-fun isEmpty!16144 (List!28261) Bool)

(assert (=> b!2391693 (= res!1016098 (isEmpty!16144 (tail!3525 s!9460)))))

(declare-fun b!2391694 () Bool)

(declare-fun e!1524515 () Bool)

(declare-fun e!1524518 () Bool)

(assert (=> b!2391694 (= e!1524515 e!1524518)))

(declare-fun c!380453 () Bool)

(assert (=> b!2391694 (= c!380453 ((_ is EmptyLang!7011) lt!870586))))

(declare-fun b!2391695 () Bool)

(declare-fun res!1016097 () Bool)

(declare-fun e!1524520 () Bool)

(assert (=> b!2391695 (=> res!1016097 e!1524520)))

(assert (=> b!2391695 (= res!1016097 (not ((_ is ElementMatch!7011) lt!870586)))))

(assert (=> b!2391695 (= e!1524518 e!1524520)))

(declare-fun b!2391696 () Bool)

(declare-fun e!1524516 () Bool)

(declare-fun e!1524517 () Bool)

(assert (=> b!2391696 (= e!1524516 e!1524517)))

(declare-fun res!1016099 () Bool)

(assert (=> b!2391696 (=> res!1016099 e!1524517)))

(assert (=> b!2391696 (= res!1016099 call!145646)))

(declare-fun b!2391698 () Bool)

(assert (=> b!2391698 (= e!1524520 e!1524516)))

(declare-fun res!1016094 () Bool)

(assert (=> b!2391698 (=> (not res!1016094) (not e!1524516))))

(declare-fun lt!870644 () Bool)

(assert (=> b!2391698 (= res!1016094 (not lt!870644))))

(declare-fun b!2391699 () Bool)

(assert (=> b!2391699 (= e!1524517 (not (= (head!5255 s!9460) (c!380393 lt!870586))))))

(declare-fun b!2391700 () Bool)

(declare-fun nullable!2060 (Regex!7011) Bool)

(assert (=> b!2391700 (= e!1524519 (nullable!2060 lt!870586))))

(declare-fun b!2391701 () Bool)

(declare-fun res!1016095 () Bool)

(assert (=> b!2391701 (=> res!1016095 e!1524520)))

(assert (=> b!2391701 (= res!1016095 e!1524514)))

(declare-fun res!1016096 () Bool)

(assert (=> b!2391701 (=> (not res!1016096) (not e!1524514))))

(assert (=> b!2391701 (= res!1016096 lt!870644)))

(declare-fun b!2391702 () Bool)

(assert (=> b!2391702 (= e!1524515 (= lt!870644 call!145646))))

(declare-fun d!698270 () Bool)

(assert (=> d!698270 e!1524515))

(declare-fun c!380451 () Bool)

(assert (=> d!698270 (= c!380451 ((_ is EmptyExpr!7011) lt!870586))))

(assert (=> d!698270 (= lt!870644 e!1524519)))

(declare-fun c!380452 () Bool)

(assert (=> d!698270 (= c!380452 (isEmpty!16144 s!9460))))

(assert (=> d!698270 (validRegex!2736 lt!870586)))

(assert (=> d!698270 (= (matchR!3128 lt!870586 s!9460) lt!870644)))

(declare-fun b!2391697 () Bool)

(declare-fun res!1016101 () Bool)

(assert (=> b!2391697 (=> res!1016101 e!1524517)))

(assert (=> b!2391697 (= res!1016101 (not (isEmpty!16144 (tail!3525 s!9460))))))

(declare-fun bm!145641 () Bool)

(assert (=> bm!145641 (= call!145646 (isEmpty!16144 s!9460))))

(declare-fun b!2391703 () Bool)

(assert (=> b!2391703 (= e!1524518 (not lt!870644))))

(assert (= (and d!698270 c!380452) b!2391700))

(assert (= (and d!698270 (not c!380452)) b!2391691))

(assert (= (and d!698270 c!380451) b!2391702))

(assert (= (and d!698270 (not c!380451)) b!2391694))

(assert (= (and b!2391694 c!380453) b!2391703))

(assert (= (and b!2391694 (not c!380453)) b!2391695))

(assert (= (and b!2391695 (not res!1016097)) b!2391701))

(assert (= (and b!2391701 res!1016096) b!2391690))

(assert (= (and b!2391690 res!1016100) b!2391693))

(assert (= (and b!2391693 res!1016098) b!2391692))

(assert (= (and b!2391701 (not res!1016095)) b!2391698))

(assert (= (and b!2391698 res!1016094) b!2391696))

(assert (= (and b!2391696 (not res!1016099)) b!2391697))

(assert (= (and b!2391697 (not res!1016101)) b!2391699))

(assert (= (or b!2391702 b!2391690 b!2391696) bm!145641))

(declare-fun m!2791577 () Bool)

(assert (=> b!2391700 m!2791577))

(declare-fun m!2791579 () Bool)

(assert (=> b!2391691 m!2791579))

(assert (=> b!2391691 m!2791579))

(declare-fun m!2791581 () Bool)

(assert (=> b!2391691 m!2791581))

(declare-fun m!2791583 () Bool)

(assert (=> b!2391691 m!2791583))

(assert (=> b!2391691 m!2791581))

(assert (=> b!2391691 m!2791583))

(declare-fun m!2791585 () Bool)

(assert (=> b!2391691 m!2791585))

(assert (=> b!2391699 m!2791579))

(declare-fun m!2791587 () Bool)

(assert (=> bm!145641 m!2791587))

(assert (=> d!698270 m!2791587))

(assert (=> d!698270 m!2791523))

(assert (=> b!2391697 m!2791583))

(assert (=> b!2391697 m!2791583))

(declare-fun m!2791589 () Bool)

(assert (=> b!2391697 m!2791589))

(assert (=> b!2391693 m!2791583))

(assert (=> b!2391693 m!2791583))

(assert (=> b!2391693 m!2791589))

(assert (=> b!2391692 m!2791579))

(assert (=> b!2391427 d!698270))

(declare-fun bs!462593 () Bool)

(declare-fun d!698282 () Bool)

(assert (= bs!462593 (and d!698282 start!234664)))

(declare-fun lambda!89613 () Int)

(assert (=> bs!462593 (= lambda!89613 lambda!89593)))

(declare-fun b!2391755 () Bool)

(declare-fun e!1524550 () Bool)

(declare-fun e!1524554 () Bool)

(assert (=> b!2391755 (= e!1524550 e!1524554)))

(declare-fun c!380468 () Bool)

(assert (=> b!2391755 (= c!380468 (isEmpty!16140 lt!870594))))

(declare-fun b!2391756 () Bool)

(declare-fun lt!870659 () Regex!7011)

(declare-fun isEmptyExpr!80 (Regex!7011) Bool)

(assert (=> b!2391756 (= e!1524554 (isEmptyExpr!80 lt!870659))))

(declare-fun b!2391757 () Bool)

(declare-fun e!1524553 () Regex!7011)

(assert (=> b!2391757 (= e!1524553 (h!33563 lt!870594))))

(declare-fun b!2391758 () Bool)

(declare-fun e!1524551 () Bool)

(declare-fun isConcat!80 (Regex!7011) Bool)

(assert (=> b!2391758 (= e!1524551 (isConcat!80 lt!870659))))

(declare-fun b!2391759 () Bool)

(assert (=> b!2391759 (= e!1524554 e!1524551)))

(declare-fun c!380467 () Bool)

(assert (=> b!2391759 (= c!380467 (isEmpty!16140 (tail!3523 lt!870594)))))

(declare-fun b!2391760 () Bool)

(declare-fun e!1524549 () Regex!7011)

(assert (=> b!2391760 (= e!1524549 EmptyExpr!7011)))

(declare-fun b!2391761 () Bool)

(assert (=> b!2391761 (= e!1524551 (= lt!870659 (head!5253 lt!870594)))))

(declare-fun b!2391754 () Bool)

(declare-fun e!1524552 () Bool)

(assert (=> b!2391754 (= e!1524552 (isEmpty!16140 (t!208237 lt!870594)))))

(assert (=> d!698282 e!1524550))

(declare-fun res!1016128 () Bool)

(assert (=> d!698282 (=> (not res!1016128) (not e!1524550))))

(assert (=> d!698282 (= res!1016128 (validRegex!2736 lt!870659))))

(assert (=> d!698282 (= lt!870659 e!1524553)))

(declare-fun c!380469 () Bool)

(assert (=> d!698282 (= c!380469 e!1524552)))

(declare-fun res!1016129 () Bool)

(assert (=> d!698282 (=> (not res!1016129) (not e!1524552))))

(assert (=> d!698282 (= res!1016129 ((_ is Cons!28162) lt!870594))))

(assert (=> d!698282 (forall!5645 lt!870594 lambda!89613)))

(assert (=> d!698282 (= (generalisedConcat!112 lt!870594) lt!870659)))

(declare-fun b!2391762 () Bool)

(assert (=> b!2391762 (= e!1524553 e!1524549)))

(declare-fun c!380466 () Bool)

(assert (=> b!2391762 (= c!380466 ((_ is Cons!28162) lt!870594))))

(declare-fun b!2391763 () Bool)

(assert (=> b!2391763 (= e!1524549 (Concat!11647 (h!33563 lt!870594) (generalisedConcat!112 (t!208237 lt!870594))))))

(assert (= (and d!698282 res!1016129) b!2391754))

(assert (= (and d!698282 c!380469) b!2391757))

(assert (= (and d!698282 (not c!380469)) b!2391762))

(assert (= (and b!2391762 c!380466) b!2391763))

(assert (= (and b!2391762 (not c!380466)) b!2391760))

(assert (= (and d!698282 res!1016128) b!2391755))

(assert (= (and b!2391755 c!380468) b!2391756))

(assert (= (and b!2391755 (not c!380468)) b!2391759))

(assert (= (and b!2391759 c!380467) b!2391761))

(assert (= (and b!2391759 (not c!380467)) b!2391758))

(declare-fun m!2791647 () Bool)

(assert (=> b!2391763 m!2791647))

(declare-fun m!2791649 () Bool)

(assert (=> b!2391756 m!2791649))

(declare-fun m!2791651 () Bool)

(assert (=> b!2391758 m!2791651))

(declare-fun m!2791653 () Bool)

(assert (=> b!2391761 m!2791653))

(declare-fun m!2791655 () Bool)

(assert (=> b!2391759 m!2791655))

(assert (=> b!2391759 m!2791655))

(declare-fun m!2791657 () Bool)

(assert (=> b!2391759 m!2791657))

(assert (=> b!2391755 m!2791413))

(declare-fun m!2791659 () Bool)

(assert (=> b!2391754 m!2791659))

(declare-fun m!2791661 () Bool)

(assert (=> d!698282 m!2791661))

(declare-fun m!2791663 () Bool)

(assert (=> d!698282 m!2791663))

(assert (=> bm!145609 d!698282))

(declare-fun d!698298 () Bool)

(declare-fun res!1016143 () Bool)

(declare-fun e!1524578 () Bool)

(assert (=> d!698298 (=> res!1016143 e!1524578)))

(assert (=> d!698298 (= res!1016143 ((_ is Nil!28162) l!9164))))

(assert (=> d!698298 (= (forall!5645 l!9164 lambda!89593) e!1524578)))

(declare-fun b!2391797 () Bool)

(declare-fun e!1524579 () Bool)

(assert (=> b!2391797 (= e!1524578 e!1524579)))

(declare-fun res!1016144 () Bool)

(assert (=> b!2391797 (=> (not res!1016144) (not e!1524579))))

(declare-fun dynLambda!12126 (Int Regex!7011) Bool)

(assert (=> b!2391797 (= res!1016144 (dynLambda!12126 lambda!89593 (h!33563 l!9164)))))

(declare-fun b!2391798 () Bool)

(assert (=> b!2391798 (= e!1524579 (forall!5645 (t!208237 l!9164) lambda!89593))))

(assert (= (and d!698298 (not res!1016143)) b!2391797))

(assert (= (and b!2391797 res!1016144) b!2391798))

(declare-fun b_lambda!74205 () Bool)

(assert (=> (not b_lambda!74205) (not b!2391797)))

(declare-fun m!2791665 () Bool)

(assert (=> b!2391797 m!2791665))

(declare-fun m!2791667 () Bool)

(assert (=> b!2391798 m!2791667))

(assert (=> start!234664 d!698298))

(declare-fun bm!145651 () Bool)

(declare-fun call!145656 () Bool)

(declare-fun call!145657 () Bool)

(assert (=> bm!145651 (= call!145656 call!145657)))

(declare-fun b!2391900 () Bool)

(declare-fun e!1524633 () Bool)

(declare-fun e!1524636 () Bool)

(assert (=> b!2391900 (= e!1524633 e!1524636)))

(declare-fun res!1016170 () Bool)

(assert (=> b!2391900 (=> (not res!1016170) (not e!1524636))))

(declare-fun call!145658 () Bool)

(assert (=> b!2391900 (= res!1016170 call!145658)))

(declare-fun b!2391901 () Bool)

(declare-fun res!1016168 () Bool)

(assert (=> b!2391901 (=> res!1016168 e!1524633)))

(assert (=> b!2391901 (= res!1016168 (not ((_ is Concat!11647) (h!33563 l!9164))))))

(declare-fun e!1524631 () Bool)

(assert (=> b!2391901 (= e!1524631 e!1524633)))

(declare-fun b!2391902 () Bool)

(declare-fun res!1016166 () Bool)

(declare-fun e!1524632 () Bool)

(assert (=> b!2391902 (=> (not res!1016166) (not e!1524632))))

(assert (=> b!2391902 (= res!1016166 call!145656)))

(assert (=> b!2391902 (= e!1524631 e!1524632)))

(declare-fun b!2391903 () Bool)

(declare-fun e!1524635 () Bool)

(declare-fun e!1524637 () Bool)

(assert (=> b!2391903 (= e!1524635 e!1524637)))

(declare-fun res!1016167 () Bool)

(assert (=> b!2391903 (= res!1016167 (not (nullable!2060 (reg!7340 (h!33563 l!9164)))))))

(assert (=> b!2391903 (=> (not res!1016167) (not e!1524637))))

(declare-fun b!2391904 () Bool)

(declare-fun e!1524634 () Bool)

(assert (=> b!2391904 (= e!1524634 e!1524635)))

(declare-fun c!380498 () Bool)

(assert (=> b!2391904 (= c!380498 ((_ is Star!7011) (h!33563 l!9164)))))

(declare-fun b!2391905 () Bool)

(assert (=> b!2391905 (= e!1524636 call!145656)))

(declare-fun b!2391906 () Bool)

(assert (=> b!2391906 (= e!1524637 call!145657)))

(declare-fun b!2391907 () Bool)

(assert (=> b!2391907 (= e!1524632 call!145658)))

(declare-fun d!698300 () Bool)

(declare-fun res!1016169 () Bool)

(assert (=> d!698300 (=> res!1016169 e!1524634)))

(assert (=> d!698300 (= res!1016169 ((_ is ElementMatch!7011) (h!33563 l!9164)))))

(assert (=> d!698300 (= (validRegex!2736 (h!33563 l!9164)) e!1524634)))

(declare-fun bm!145652 () Bool)

(declare-fun c!380499 () Bool)

(assert (=> bm!145652 (= call!145658 (validRegex!2736 (ite c!380499 (regTwo!14535 (h!33563 l!9164)) (regOne!14534 (h!33563 l!9164)))))))

(declare-fun b!2391908 () Bool)

(assert (=> b!2391908 (= e!1524635 e!1524631)))

(assert (=> b!2391908 (= c!380499 ((_ is Union!7011) (h!33563 l!9164)))))

(declare-fun bm!145653 () Bool)

(assert (=> bm!145653 (= call!145657 (validRegex!2736 (ite c!380498 (reg!7340 (h!33563 l!9164)) (ite c!380499 (regOne!14535 (h!33563 l!9164)) (regTwo!14534 (h!33563 l!9164))))))))

(assert (= (and d!698300 (not res!1016169)) b!2391904))

(assert (= (and b!2391904 c!380498) b!2391903))

(assert (= (and b!2391904 (not c!380498)) b!2391908))

(assert (= (and b!2391903 res!1016167) b!2391906))

(assert (= (and b!2391908 c!380499) b!2391902))

(assert (= (and b!2391908 (not c!380499)) b!2391901))

(assert (= (and b!2391902 res!1016166) b!2391907))

(assert (= (and b!2391901 (not res!1016168)) b!2391900))

(assert (= (and b!2391900 res!1016170) b!2391905))

(assert (= (or b!2391902 b!2391905) bm!145651))

(assert (= (or b!2391907 b!2391900) bm!145652))

(assert (= (or b!2391906 bm!145651) bm!145653))

(declare-fun m!2791731 () Bool)

(assert (=> b!2391903 m!2791731))

(declare-fun m!2791733 () Bool)

(assert (=> bm!145652 m!2791733))

(declare-fun m!2791735 () Bool)

(assert (=> bm!145653 m!2791735))

(assert (=> b!2391414 d!698300))

(declare-fun bs!462601 () Bool)

(declare-fun d!698310 () Bool)

(assert (= bs!462601 (and d!698310 start!234664)))

(declare-fun lambda!89619 () Int)

(assert (=> bs!462601 (= lambda!89619 lambda!89593)))

(declare-fun bs!462602 () Bool)

(assert (= bs!462602 (and d!698310 d!698282)))

(assert (=> bs!462602 (= lambda!89619 lambda!89613)))

(declare-fun b!2391910 () Bool)

(declare-fun e!1524639 () Bool)

(declare-fun e!1524643 () Bool)

(assert (=> b!2391910 (= e!1524639 e!1524643)))

(declare-fun c!380502 () Bool)

(assert (=> b!2391910 (= c!380502 (isEmpty!16140 (t!208237 l!9164)))))

(declare-fun b!2391911 () Bool)

(declare-fun lt!870668 () Regex!7011)

(assert (=> b!2391911 (= e!1524643 (isEmptyExpr!80 lt!870668))))

(declare-fun b!2391912 () Bool)

(declare-fun e!1524642 () Regex!7011)

(assert (=> b!2391912 (= e!1524642 (h!33563 (t!208237 l!9164)))))

(declare-fun b!2391913 () Bool)

(declare-fun e!1524640 () Bool)

(assert (=> b!2391913 (= e!1524640 (isConcat!80 lt!870668))))

(declare-fun b!2391914 () Bool)

(assert (=> b!2391914 (= e!1524643 e!1524640)))

(declare-fun c!380501 () Bool)

(assert (=> b!2391914 (= c!380501 (isEmpty!16140 (tail!3523 (t!208237 l!9164))))))

(declare-fun b!2391915 () Bool)

(declare-fun e!1524638 () Regex!7011)

(assert (=> b!2391915 (= e!1524638 EmptyExpr!7011)))

(declare-fun b!2391916 () Bool)

(assert (=> b!2391916 (= e!1524640 (= lt!870668 (head!5253 (t!208237 l!9164))))))

(declare-fun b!2391909 () Bool)

(declare-fun e!1524641 () Bool)

(assert (=> b!2391909 (= e!1524641 (isEmpty!16140 (t!208237 (t!208237 l!9164))))))

(assert (=> d!698310 e!1524639))

(declare-fun res!1016171 () Bool)

(assert (=> d!698310 (=> (not res!1016171) (not e!1524639))))

(assert (=> d!698310 (= res!1016171 (validRegex!2736 lt!870668))))

(assert (=> d!698310 (= lt!870668 e!1524642)))

(declare-fun c!380503 () Bool)

(assert (=> d!698310 (= c!380503 e!1524641)))

(declare-fun res!1016172 () Bool)

(assert (=> d!698310 (=> (not res!1016172) (not e!1524641))))

(assert (=> d!698310 (= res!1016172 ((_ is Cons!28162) (t!208237 l!9164)))))

(assert (=> d!698310 (forall!5645 (t!208237 l!9164) lambda!89619)))

(assert (=> d!698310 (= (generalisedConcat!112 (t!208237 l!9164)) lt!870668)))

(declare-fun b!2391917 () Bool)

(assert (=> b!2391917 (= e!1524642 e!1524638)))

(declare-fun c!380500 () Bool)

(assert (=> b!2391917 (= c!380500 ((_ is Cons!28162) (t!208237 l!9164)))))

(declare-fun b!2391918 () Bool)

(assert (=> b!2391918 (= e!1524638 (Concat!11647 (h!33563 (t!208237 l!9164)) (generalisedConcat!112 (t!208237 (t!208237 l!9164)))))))

(assert (= (and d!698310 res!1016172) b!2391909))

(assert (= (and d!698310 c!380503) b!2391912))

(assert (= (and d!698310 (not c!380503)) b!2391917))

(assert (= (and b!2391917 c!380500) b!2391918))

(assert (= (and b!2391917 (not c!380500)) b!2391915))

(assert (= (and d!698310 res!1016171) b!2391910))

(assert (= (and b!2391910 c!380502) b!2391911))

(assert (= (and b!2391910 (not c!380502)) b!2391914))

(assert (= (and b!2391914 c!380501) b!2391916))

(assert (= (and b!2391914 (not c!380501)) b!2391913))

(declare-fun m!2791737 () Bool)

(assert (=> b!2391918 m!2791737))

(declare-fun m!2791739 () Bool)

(assert (=> b!2391911 m!2791739))

(declare-fun m!2791741 () Bool)

(assert (=> b!2391913 m!2791741))

(declare-fun m!2791743 () Bool)

(assert (=> b!2391916 m!2791743))

(declare-fun m!2791745 () Bool)

(assert (=> b!2391914 m!2791745))

(assert (=> b!2391914 m!2791745))

(declare-fun m!2791747 () Bool)

(assert (=> b!2391914 m!2791747))

(declare-fun m!2791749 () Bool)

(assert (=> b!2391910 m!2791749))

(declare-fun m!2791751 () Bool)

(assert (=> b!2391909 m!2791751))

(declare-fun m!2791753 () Bool)

(assert (=> d!698310 m!2791753))

(declare-fun m!2791755 () Bool)

(assert (=> d!698310 m!2791755))

(assert (=> b!2391414 d!698310))

(declare-fun e!1524649 () Bool)

(declare-fun b!2391930 () Bool)

(declare-fun lt!870671 () List!28261)

(assert (=> b!2391930 (= e!1524649 (or (not (= (ite c!380390 Nil!28163 (_2!16484 lt!870597)) Nil!28163)) (= lt!870671 (ite c!380390 s!9460 (_1!16484 lt!870597)))))))

(declare-fun d!698312 () Bool)

(assert (=> d!698312 e!1524649))

(declare-fun res!1016178 () Bool)

(assert (=> d!698312 (=> (not res!1016178) (not e!1524649))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3848 (List!28261) (InoxSet C!14180))

(assert (=> d!698312 (= res!1016178 (= (content!3848 lt!870671) ((_ map or) (content!3848 (ite c!380390 s!9460 (_1!16484 lt!870597))) (content!3848 (ite c!380390 Nil!28163 (_2!16484 lt!870597))))))))

(declare-fun e!1524648 () List!28261)

(assert (=> d!698312 (= lt!870671 e!1524648)))

(declare-fun c!380506 () Bool)

(assert (=> d!698312 (= c!380506 ((_ is Nil!28163) (ite c!380390 s!9460 (_1!16484 lt!870597))))))

(assert (=> d!698312 (= (++!6965 (ite c!380390 s!9460 (_1!16484 lt!870597)) (ite c!380390 Nil!28163 (_2!16484 lt!870597))) lt!870671)))

(declare-fun b!2391928 () Bool)

(assert (=> b!2391928 (= e!1524648 (Cons!28163 (h!33564 (ite c!380390 s!9460 (_1!16484 lt!870597))) (++!6965 (t!208238 (ite c!380390 s!9460 (_1!16484 lt!870597))) (ite c!380390 Nil!28163 (_2!16484 lt!870597)))))))

(declare-fun b!2391929 () Bool)

(declare-fun res!1016177 () Bool)

(assert (=> b!2391929 (=> (not res!1016177) (not e!1524649))))

(declare-fun size!22186 (List!28261) Int)

(assert (=> b!2391929 (= res!1016177 (= (size!22186 lt!870671) (+ (size!22186 (ite c!380390 s!9460 (_1!16484 lt!870597))) (size!22186 (ite c!380390 Nil!28163 (_2!16484 lt!870597))))))))

(declare-fun b!2391927 () Bool)

(assert (=> b!2391927 (= e!1524648 (ite c!380390 Nil!28163 (_2!16484 lt!870597)))))

(assert (= (and d!698312 c!380506) b!2391927))

(assert (= (and d!698312 (not c!380506)) b!2391928))

(assert (= (and d!698312 res!1016178) b!2391929))

(assert (= (and b!2391929 res!1016177) b!2391930))

(declare-fun m!2791757 () Bool)

(assert (=> d!698312 m!2791757))

(declare-fun m!2791759 () Bool)

(assert (=> d!698312 m!2791759))

(declare-fun m!2791761 () Bool)

(assert (=> d!698312 m!2791761))

(declare-fun m!2791763 () Bool)

(assert (=> b!2391928 m!2791763))

(declare-fun m!2791765 () Bool)

(assert (=> b!2391929 m!2791765))

(declare-fun m!2791767 () Bool)

(assert (=> b!2391929 m!2791767))

(declare-fun m!2791769 () Bool)

(assert (=> b!2391929 m!2791769))

(assert (=> bm!145617 d!698312))

(declare-fun b!2391931 () Bool)

(declare-fun res!1016185 () Bool)

(declare-fun e!1524650 () Bool)

(assert (=> b!2391931 (=> (not res!1016185) (not e!1524650))))

(declare-fun call!145659 () Bool)

(assert (=> b!2391931 (= res!1016185 (not call!145659))))

(declare-fun b!2391932 () Bool)

(declare-fun e!1524655 () Bool)

(assert (=> b!2391932 (= e!1524655 (matchR!3128 (derivativeStep!1718 (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011)) (head!5255 (ite c!380390 s!9460 call!145613))) (tail!3525 (ite c!380390 s!9460 call!145613))))))

(declare-fun b!2391933 () Bool)

(assert (=> b!2391933 (= e!1524650 (= (head!5255 (ite c!380390 s!9460 call!145613)) (c!380393 (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011)))))))

(declare-fun b!2391934 () Bool)

(declare-fun res!1016183 () Bool)

(assert (=> b!2391934 (=> (not res!1016183) (not e!1524650))))

(assert (=> b!2391934 (= res!1016183 (isEmpty!16144 (tail!3525 (ite c!380390 s!9460 call!145613))))))

(declare-fun b!2391935 () Bool)

(declare-fun e!1524651 () Bool)

(declare-fun e!1524654 () Bool)

(assert (=> b!2391935 (= e!1524651 e!1524654)))

(declare-fun c!380509 () Bool)

(assert (=> b!2391935 (= c!380509 ((_ is EmptyLang!7011) (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011))))))

(declare-fun b!2391936 () Bool)

(declare-fun res!1016182 () Bool)

(declare-fun e!1524656 () Bool)

(assert (=> b!2391936 (=> res!1016182 e!1524656)))

(assert (=> b!2391936 (= res!1016182 (not ((_ is ElementMatch!7011) (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011)))))))

(assert (=> b!2391936 (= e!1524654 e!1524656)))

(declare-fun b!2391937 () Bool)

(declare-fun e!1524652 () Bool)

(declare-fun e!1524653 () Bool)

(assert (=> b!2391937 (= e!1524652 e!1524653)))

(declare-fun res!1016184 () Bool)

(assert (=> b!2391937 (=> res!1016184 e!1524653)))

(assert (=> b!2391937 (= res!1016184 call!145659)))

(declare-fun b!2391939 () Bool)

(assert (=> b!2391939 (= e!1524656 e!1524652)))

(declare-fun res!1016179 () Bool)

(assert (=> b!2391939 (=> (not res!1016179) (not e!1524652))))

(declare-fun lt!870672 () Bool)

(assert (=> b!2391939 (= res!1016179 (not lt!870672))))

(declare-fun b!2391940 () Bool)

(assert (=> b!2391940 (= e!1524653 (not (= (head!5255 (ite c!380390 s!9460 call!145613)) (c!380393 (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011))))))))

(declare-fun b!2391941 () Bool)

(assert (=> b!2391941 (= e!1524655 (nullable!2060 (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011))))))

(declare-fun b!2391942 () Bool)

(declare-fun res!1016180 () Bool)

(assert (=> b!2391942 (=> res!1016180 e!1524656)))

(assert (=> b!2391942 (= res!1016180 e!1524650)))

(declare-fun res!1016181 () Bool)

(assert (=> b!2391942 (=> (not res!1016181) (not e!1524650))))

(assert (=> b!2391942 (= res!1016181 lt!870672)))

(declare-fun b!2391943 () Bool)

(assert (=> b!2391943 (= e!1524651 (= lt!870672 call!145659))))

(declare-fun d!698314 () Bool)

(assert (=> d!698314 e!1524651))

(declare-fun c!380507 () Bool)

(assert (=> d!698314 (= c!380507 ((_ is EmptyExpr!7011) (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011))))))

(assert (=> d!698314 (= lt!870672 e!1524655)))

(declare-fun c!380508 () Bool)

(assert (=> d!698314 (= c!380508 (isEmpty!16144 (ite c!380390 s!9460 call!145613)))))

(assert (=> d!698314 (validRegex!2736 (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011)))))

(assert (=> d!698314 (= (matchR!3128 (ite c!380390 lt!870584 (Concat!11647 lt!870586 EmptyExpr!7011)) (ite c!380390 s!9460 call!145613)) lt!870672)))

(declare-fun b!2391938 () Bool)

(declare-fun res!1016186 () Bool)

(assert (=> b!2391938 (=> res!1016186 e!1524653)))

(assert (=> b!2391938 (= res!1016186 (not (isEmpty!16144 (tail!3525 (ite c!380390 s!9460 call!145613)))))))

(declare-fun bm!145654 () Bool)

(assert (=> bm!145654 (= call!145659 (isEmpty!16144 (ite c!380390 s!9460 call!145613)))))

(declare-fun b!2391944 () Bool)

(assert (=> b!2391944 (= e!1524654 (not lt!870672))))

(assert (= (and d!698314 c!380508) b!2391941))

(assert (= (and d!698314 (not c!380508)) b!2391932))

(assert (= (and d!698314 c!380507) b!2391943))

(assert (= (and d!698314 (not c!380507)) b!2391935))

(assert (= (and b!2391935 c!380509) b!2391944))

(assert (= (and b!2391935 (not c!380509)) b!2391936))

(assert (= (and b!2391936 (not res!1016182)) b!2391942))

(assert (= (and b!2391942 res!1016181) b!2391931))

(assert (= (and b!2391931 res!1016185) b!2391934))

(assert (= (and b!2391934 res!1016183) b!2391933))

(assert (= (and b!2391942 (not res!1016180)) b!2391939))

(assert (= (and b!2391939 res!1016179) b!2391937))

(assert (= (and b!2391937 (not res!1016184)) b!2391938))

(assert (= (and b!2391938 (not res!1016186)) b!2391940))

(assert (= (or b!2391943 b!2391931 b!2391937) bm!145654))

(declare-fun m!2791771 () Bool)

(assert (=> b!2391941 m!2791771))

(declare-fun m!2791773 () Bool)

(assert (=> b!2391932 m!2791773))

(assert (=> b!2391932 m!2791773))

(declare-fun m!2791775 () Bool)

(assert (=> b!2391932 m!2791775))

(declare-fun m!2791777 () Bool)

(assert (=> b!2391932 m!2791777))

(assert (=> b!2391932 m!2791775))

(assert (=> b!2391932 m!2791777))

(declare-fun m!2791779 () Bool)

(assert (=> b!2391932 m!2791779))

(assert (=> b!2391940 m!2791773))

(declare-fun m!2791781 () Bool)

(assert (=> bm!145654 m!2791781))

(assert (=> d!698314 m!2791781))

(declare-fun m!2791783 () Bool)

(assert (=> d!698314 m!2791783))

(assert (=> b!2391938 m!2791777))

(assert (=> b!2391938 m!2791777))

(declare-fun m!2791785 () Bool)

(assert (=> b!2391938 m!2791785))

(assert (=> b!2391934 m!2791777))

(assert (=> b!2391934 m!2791777))

(assert (=> b!2391934 m!2791785))

(assert (=> b!2391933 m!2791773))

(assert (=> bm!145607 d!698314))

(declare-fun d!698316 () Bool)

(assert (=> d!698316 (matchR!3128 (Concat!11647 lt!870586 EmptyExpr!7011) (++!6965 s!9460 Nil!28163))))

(declare-fun lt!870675 () Unit!41174)

(declare-fun choose!14090 (Regex!7011 Regex!7011 List!28261 List!28261) Unit!41174)

(assert (=> d!698316 (= lt!870675 (choose!14090 lt!870586 EmptyExpr!7011 s!9460 Nil!28163))))

(declare-fun e!1524659 () Bool)

(assert (=> d!698316 e!1524659))

(declare-fun res!1016189 () Bool)

(assert (=> d!698316 (=> (not res!1016189) (not e!1524659))))

(assert (=> d!698316 (= res!1016189 (validRegex!2736 lt!870586))))

(assert (=> d!698316 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!48 lt!870586 EmptyExpr!7011 s!9460 Nil!28163) lt!870675)))

(declare-fun b!2391947 () Bool)

(assert (=> b!2391947 (= e!1524659 (validRegex!2736 EmptyExpr!7011))))

(assert (= (and d!698316 res!1016189) b!2391947))

(declare-fun m!2791787 () Bool)

(assert (=> d!698316 m!2791787))

(assert (=> d!698316 m!2791787))

(declare-fun m!2791789 () Bool)

(assert (=> d!698316 m!2791789))

(declare-fun m!2791791 () Bool)

(assert (=> d!698316 m!2791791))

(assert (=> d!698316 m!2791523))

(declare-fun m!2791793 () Bool)

(assert (=> b!2391947 m!2791793))

(assert (=> b!2391419 d!698316))

(declare-fun b!2391948 () Bool)

(declare-fun res!1016196 () Bool)

(declare-fun e!1524660 () Bool)

(assert (=> b!2391948 (=> (not res!1016196) (not e!1524660))))

(declare-fun call!145660 () Bool)

(assert (=> b!2391948 (= res!1016196 (not call!145660))))

(declare-fun b!2391949 () Bool)

(declare-fun e!1524665 () Bool)

(assert (=> b!2391949 (= e!1524665 (matchR!3128 (derivativeStep!1718 lt!870584 (head!5255 call!145613)) (tail!3525 call!145613)))))

(declare-fun b!2391950 () Bool)

(assert (=> b!2391950 (= e!1524660 (= (head!5255 call!145613) (c!380393 lt!870584)))))

(declare-fun b!2391951 () Bool)

(declare-fun res!1016194 () Bool)

(assert (=> b!2391951 (=> (not res!1016194) (not e!1524660))))

(assert (=> b!2391951 (= res!1016194 (isEmpty!16144 (tail!3525 call!145613)))))

(declare-fun b!2391952 () Bool)

(declare-fun e!1524661 () Bool)

(declare-fun e!1524664 () Bool)

(assert (=> b!2391952 (= e!1524661 e!1524664)))

(declare-fun c!380512 () Bool)

(assert (=> b!2391952 (= c!380512 ((_ is EmptyLang!7011) lt!870584))))

(declare-fun b!2391953 () Bool)

(declare-fun res!1016193 () Bool)

(declare-fun e!1524666 () Bool)

(assert (=> b!2391953 (=> res!1016193 e!1524666)))

(assert (=> b!2391953 (= res!1016193 (not ((_ is ElementMatch!7011) lt!870584)))))

(assert (=> b!2391953 (= e!1524664 e!1524666)))

(declare-fun b!2391954 () Bool)

(declare-fun e!1524662 () Bool)

(declare-fun e!1524663 () Bool)

(assert (=> b!2391954 (= e!1524662 e!1524663)))

(declare-fun res!1016195 () Bool)

(assert (=> b!2391954 (=> res!1016195 e!1524663)))

(assert (=> b!2391954 (= res!1016195 call!145660)))

(declare-fun b!2391956 () Bool)

(assert (=> b!2391956 (= e!1524666 e!1524662)))

(declare-fun res!1016190 () Bool)

(assert (=> b!2391956 (=> (not res!1016190) (not e!1524662))))

(declare-fun lt!870676 () Bool)

(assert (=> b!2391956 (= res!1016190 (not lt!870676))))

(declare-fun b!2391957 () Bool)

(assert (=> b!2391957 (= e!1524663 (not (= (head!5255 call!145613) (c!380393 lt!870584))))))

(declare-fun b!2391958 () Bool)

(assert (=> b!2391958 (= e!1524665 (nullable!2060 lt!870584))))

(declare-fun b!2391959 () Bool)

(declare-fun res!1016191 () Bool)

(assert (=> b!2391959 (=> res!1016191 e!1524666)))

(assert (=> b!2391959 (= res!1016191 e!1524660)))

(declare-fun res!1016192 () Bool)

(assert (=> b!2391959 (=> (not res!1016192) (not e!1524660))))

(assert (=> b!2391959 (= res!1016192 lt!870676)))

(declare-fun b!2391960 () Bool)

(assert (=> b!2391960 (= e!1524661 (= lt!870676 call!145660))))

(declare-fun d!698318 () Bool)

(assert (=> d!698318 e!1524661))

(declare-fun c!380510 () Bool)

(assert (=> d!698318 (= c!380510 ((_ is EmptyExpr!7011) lt!870584))))

(assert (=> d!698318 (= lt!870676 e!1524665)))

(declare-fun c!380511 () Bool)

(assert (=> d!698318 (= c!380511 (isEmpty!16144 call!145613))))

(assert (=> d!698318 (validRegex!2736 lt!870584)))

(assert (=> d!698318 (= (matchR!3128 lt!870584 call!145613) lt!870676)))

(declare-fun b!2391955 () Bool)

(declare-fun res!1016197 () Bool)

(assert (=> b!2391955 (=> res!1016197 e!1524663)))

(assert (=> b!2391955 (= res!1016197 (not (isEmpty!16144 (tail!3525 call!145613))))))

(declare-fun bm!145655 () Bool)

(assert (=> bm!145655 (= call!145660 (isEmpty!16144 call!145613))))

(declare-fun b!2391961 () Bool)

(assert (=> b!2391961 (= e!1524664 (not lt!870676))))

(assert (= (and d!698318 c!380511) b!2391958))

(assert (= (and d!698318 (not c!380511)) b!2391949))

(assert (= (and d!698318 c!380510) b!2391960))

(assert (= (and d!698318 (not c!380510)) b!2391952))

(assert (= (and b!2391952 c!380512) b!2391961))

(assert (= (and b!2391952 (not c!380512)) b!2391953))

(assert (= (and b!2391953 (not res!1016193)) b!2391959))

(assert (= (and b!2391959 res!1016192) b!2391948))

(assert (= (and b!2391948 res!1016196) b!2391951))

(assert (= (and b!2391951 res!1016194) b!2391950))

(assert (= (and b!2391959 (not res!1016191)) b!2391956))

(assert (= (and b!2391956 res!1016190) b!2391954))

(assert (= (and b!2391954 (not res!1016195)) b!2391955))

(assert (= (and b!2391955 (not res!1016197)) b!2391957))

(assert (= (or b!2391960 b!2391948 b!2391954) bm!145655))

(declare-fun m!2791795 () Bool)

(assert (=> b!2391958 m!2791795))

(declare-fun m!2791797 () Bool)

(assert (=> b!2391949 m!2791797))

(assert (=> b!2391949 m!2791797))

(declare-fun m!2791799 () Bool)

(assert (=> b!2391949 m!2791799))

(declare-fun m!2791801 () Bool)

(assert (=> b!2391949 m!2791801))

(assert (=> b!2391949 m!2791799))

(assert (=> b!2391949 m!2791801))

(declare-fun m!2791803 () Bool)

(assert (=> b!2391949 m!2791803))

(assert (=> b!2391957 m!2791797))

(declare-fun m!2791805 () Bool)

(assert (=> bm!145655 m!2791805))

(assert (=> d!698318 m!2791805))

(declare-fun m!2791807 () Bool)

(assert (=> d!698318 m!2791807))

(assert (=> b!2391955 m!2791801))

(assert (=> b!2391955 m!2791801))

(declare-fun m!2791809 () Bool)

(assert (=> b!2391955 m!2791809))

(assert (=> b!2391951 m!2791801))

(assert (=> b!2391951 m!2791801))

(assert (=> b!2391951 m!2791809))

(assert (=> b!2391950 m!2791797))

(assert (=> b!2391419 d!698318))

(declare-fun d!698320 () Bool)

(assert (=> d!698320 (isDefined!4382 (findConcatSeparation!662 lt!870586 EmptyExpr!7011 Nil!28163 s!9460 s!9460))))

(declare-fun lt!870679 () Unit!41174)

(declare-fun choose!14091 (Regex!7011 Regex!7011 List!28261) Unit!41174)

(assert (=> d!698320 (= lt!870679 (choose!14091 lt!870586 EmptyExpr!7011 s!9460))))

(assert (=> d!698320 (validRegex!2736 lt!870586)))

(assert (=> d!698320 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!30 lt!870586 EmptyExpr!7011 s!9460) lt!870679)))

(declare-fun bs!462603 () Bool)

(assert (= bs!462603 d!698320))

(assert (=> bs!462603 m!2791371))

(assert (=> bs!462603 m!2791371))

(declare-fun m!2791811 () Bool)

(assert (=> bs!462603 m!2791811))

(declare-fun m!2791813 () Bool)

(assert (=> bs!462603 m!2791813))

(assert (=> bs!462603 m!2791523))

(assert (=> b!2391419 d!698320))

(declare-fun bs!462604 () Bool)

(declare-fun d!698322 () Bool)

(assert (= bs!462604 (and d!698322 start!234664)))

(declare-fun lambda!89620 () Int)

(assert (=> bs!462604 (= lambda!89620 lambda!89593)))

(declare-fun bs!462605 () Bool)

(assert (= bs!462605 (and d!698322 d!698282)))

(assert (=> bs!462605 (= lambda!89620 lambda!89613)))

(declare-fun bs!462606 () Bool)

(assert (= bs!462606 (and d!698322 d!698310)))

(assert (=> bs!462606 (= lambda!89620 lambda!89619)))

(declare-fun b!2391963 () Bool)

(declare-fun e!1524668 () Bool)

(declare-fun e!1524672 () Bool)

(assert (=> b!2391963 (= e!1524668 e!1524672)))

(declare-fun c!380515 () Bool)

(assert (=> b!2391963 (= c!380515 (isEmpty!16140 l!9164))))

(declare-fun b!2391964 () Bool)

(declare-fun lt!870680 () Regex!7011)

(assert (=> b!2391964 (= e!1524672 (isEmptyExpr!80 lt!870680))))

(declare-fun b!2391965 () Bool)

(declare-fun e!1524671 () Regex!7011)

(assert (=> b!2391965 (= e!1524671 (h!33563 l!9164))))

(declare-fun b!2391966 () Bool)

(declare-fun e!1524669 () Bool)

(assert (=> b!2391966 (= e!1524669 (isConcat!80 lt!870680))))

(declare-fun b!2391967 () Bool)

(assert (=> b!2391967 (= e!1524672 e!1524669)))

(declare-fun c!380514 () Bool)

(assert (=> b!2391967 (= c!380514 (isEmpty!16140 (tail!3523 l!9164)))))

(declare-fun b!2391968 () Bool)

(declare-fun e!1524667 () Regex!7011)

(assert (=> b!2391968 (= e!1524667 EmptyExpr!7011)))

(declare-fun b!2391969 () Bool)

(assert (=> b!2391969 (= e!1524669 (= lt!870680 (head!5253 l!9164)))))

(declare-fun b!2391962 () Bool)

(declare-fun e!1524670 () Bool)

(assert (=> b!2391962 (= e!1524670 (isEmpty!16140 (t!208237 l!9164)))))

(assert (=> d!698322 e!1524668))

(declare-fun res!1016198 () Bool)

(assert (=> d!698322 (=> (not res!1016198) (not e!1524668))))

(assert (=> d!698322 (= res!1016198 (validRegex!2736 lt!870680))))

(assert (=> d!698322 (= lt!870680 e!1524671)))

(declare-fun c!380516 () Bool)

(assert (=> d!698322 (= c!380516 e!1524670)))

(declare-fun res!1016199 () Bool)

(assert (=> d!698322 (=> (not res!1016199) (not e!1524670))))

(assert (=> d!698322 (= res!1016199 ((_ is Cons!28162) l!9164))))

(assert (=> d!698322 (forall!5645 l!9164 lambda!89620)))

(assert (=> d!698322 (= (generalisedConcat!112 l!9164) lt!870680)))

(declare-fun b!2391970 () Bool)

(assert (=> b!2391970 (= e!1524671 e!1524667)))

(declare-fun c!380513 () Bool)

(assert (=> b!2391970 (= c!380513 ((_ is Cons!28162) l!9164))))

(declare-fun b!2391971 () Bool)

(assert (=> b!2391971 (= e!1524667 (Concat!11647 (h!33563 l!9164) (generalisedConcat!112 (t!208237 l!9164))))))

(assert (= (and d!698322 res!1016199) b!2391962))

(assert (= (and d!698322 c!380516) b!2391965))

(assert (= (and d!698322 (not c!380516)) b!2391970))

(assert (= (and b!2391970 c!380513) b!2391971))

(assert (= (and b!2391970 (not c!380513)) b!2391968))

(assert (= (and d!698322 res!1016198) b!2391963))

(assert (= (and b!2391963 c!380515) b!2391964))

(assert (= (and b!2391963 (not c!380515)) b!2391967))

(assert (= (and b!2391967 c!380514) b!2391969))

(assert (= (and b!2391967 (not c!380514)) b!2391966))

(assert (=> b!2391971 m!2791365))

(declare-fun m!2791815 () Bool)

(assert (=> b!2391964 m!2791815))

(declare-fun m!2791817 () Bool)

(assert (=> b!2391966 m!2791817))

(assert (=> b!2391969 m!2791353))

(assert (=> b!2391967 m!2791411))

(assert (=> b!2391967 m!2791411))

(declare-fun m!2791819 () Bool)

(assert (=> b!2391967 m!2791819))

(assert (=> b!2391963 m!2791393))

(assert (=> b!2391962 m!2791749))

(declare-fun m!2791821 () Bool)

(assert (=> d!698322 m!2791821))

(declare-fun m!2791823 () Bool)

(assert (=> d!698322 m!2791823))

(assert (=> b!2391425 d!698322))

(declare-fun d!698324 () Bool)

(assert (=> d!698324 (matchR!3128 (Concat!11647 lt!870586 EmptyExpr!7011) (++!6965 (_1!16484 lt!870597) (_2!16484 lt!870597)))))

(declare-fun lt!870683 () Unit!41174)

(declare-fun choose!14092 (Regex!7011 Regex!7011 List!28261 List!28261 List!28261) Unit!41174)

(assert (=> d!698324 (= lt!870683 (choose!14092 lt!870586 EmptyExpr!7011 (_1!16484 lt!870597) (_2!16484 lt!870597) s!9460))))

(assert (=> d!698324 (validRegex!2736 lt!870586)))

(assert (=> d!698324 (= (lemmaFindSeparationIsDefinedThenConcatMatches!30 lt!870586 EmptyExpr!7011 (_1!16484 lt!870597) (_2!16484 lt!870597) s!9460) lt!870683)))

(declare-fun bs!462607 () Bool)

(assert (= bs!462607 d!698324))

(declare-fun m!2791825 () Bool)

(assert (=> bs!462607 m!2791825))

(assert (=> bs!462607 m!2791825))

(declare-fun m!2791827 () Bool)

(assert (=> bs!462607 m!2791827))

(declare-fun m!2791829 () Bool)

(assert (=> bs!462607 m!2791829))

(assert (=> bs!462607 m!2791523))

(assert (=> b!2391412 d!698324))

(declare-fun d!698326 () Bool)

(assert (=> d!698326 (= (get!8614 lt!870592) (v!30961 lt!870592))))

(assert (=> b!2391412 d!698326))

(declare-fun d!698328 () Bool)

(assert (=> d!698328 (= (isDefined!4382 (findConcatSeparation!662 (regOne!14534 r!13927) (regTwo!14534 r!13927) Nil!28163 s!9460 s!9460)) (not (isEmpty!16143 (findConcatSeparation!662 (regOne!14534 r!13927) (regTwo!14534 r!13927) Nil!28163 s!9460 s!9460))))))

(declare-fun bs!462608 () Bool)

(assert (= bs!462608 d!698328))

(assert (=> bs!462608 m!2791381))

(declare-fun m!2791831 () Bool)

(assert (=> bs!462608 m!2791831))

(assert (=> b!2391420 d!698328))

(declare-fun d!698330 () Bool)

(declare-fun choose!14093 (Int) Bool)

(assert (=> d!698330 (= (Exists!1073 lambda!89594) (choose!14093 lambda!89594))))

(declare-fun bs!462609 () Bool)

(assert (= bs!462609 d!698330))

(declare-fun m!2791833 () Bool)

(assert (=> bs!462609 m!2791833))

(assert (=> b!2391420 d!698330))

(declare-fun bs!462610 () Bool)

(declare-fun d!698332 () Bool)

(assert (= bs!462610 (and d!698332 b!2391420)))

(declare-fun lambda!89623 () Int)

(assert (=> bs!462610 (= lambda!89623 lambda!89594)))

(assert (=> bs!462610 (not (= lambda!89623 lambda!89595))))

(assert (=> d!698332 true))

(assert (=> d!698332 true))

(assert (=> d!698332 true))

(assert (=> d!698332 (= (isDefined!4382 (findConcatSeparation!662 (regOne!14534 r!13927) (regTwo!14534 r!13927) Nil!28163 s!9460 s!9460)) (Exists!1073 lambda!89623))))

(declare-fun lt!870686 () Unit!41174)

(declare-fun choose!14094 (Regex!7011 Regex!7011 List!28261) Unit!41174)

(assert (=> d!698332 (= lt!870686 (choose!14094 (regOne!14534 r!13927) (regTwo!14534 r!13927) s!9460))))

(assert (=> d!698332 (validRegex!2736 (regOne!14534 r!13927))))

(assert (=> d!698332 (= (lemmaFindConcatSeparationEquivalentToExists!662 (regOne!14534 r!13927) (regTwo!14534 r!13927) s!9460) lt!870686)))

(declare-fun bs!462611 () Bool)

(assert (= bs!462611 d!698332))

(assert (=> bs!462611 m!2791381))

(declare-fun m!2791835 () Bool)

(assert (=> bs!462611 m!2791835))

(declare-fun m!2791837 () Bool)

(assert (=> bs!462611 m!2791837))

(declare-fun m!2791839 () Bool)

(assert (=> bs!462611 m!2791839))

(assert (=> bs!462611 m!2791381))

(assert (=> bs!462611 m!2791389))

(assert (=> b!2391420 d!698332))

(declare-fun bs!462612 () Bool)

(declare-fun d!698334 () Bool)

(assert (= bs!462612 (and d!698334 b!2391420)))

(declare-fun lambda!89628 () Int)

(assert (=> bs!462612 (= lambda!89628 lambda!89594)))

(assert (=> bs!462612 (not (= lambda!89628 lambda!89595))))

(declare-fun bs!462613 () Bool)

(assert (= bs!462613 (and d!698334 d!698332)))

(assert (=> bs!462613 (= lambda!89628 lambda!89623)))

(assert (=> d!698334 true))

(assert (=> d!698334 true))

(assert (=> d!698334 true))

(declare-fun lambda!89629 () Int)

(assert (=> bs!462612 (not (= lambda!89629 lambda!89594))))

(assert (=> bs!462612 (= lambda!89629 lambda!89595)))

(assert (=> bs!462613 (not (= lambda!89629 lambda!89623))))

(declare-fun bs!462614 () Bool)

(assert (= bs!462614 d!698334))

(assert (=> bs!462614 (not (= lambda!89629 lambda!89628))))

(assert (=> d!698334 true))

(assert (=> d!698334 true))

(assert (=> d!698334 true))

(assert (=> d!698334 (= (Exists!1073 lambda!89628) (Exists!1073 lambda!89629))))

(declare-fun lt!870689 () Unit!41174)

(declare-fun choose!14095 (Regex!7011 Regex!7011 List!28261) Unit!41174)

(assert (=> d!698334 (= lt!870689 (choose!14095 (regOne!14534 r!13927) (regTwo!14534 r!13927) s!9460))))

(assert (=> d!698334 (validRegex!2736 (regOne!14534 r!13927))))

(assert (=> d!698334 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!412 (regOne!14534 r!13927) (regTwo!14534 r!13927) s!9460) lt!870689)))

(declare-fun m!2791841 () Bool)

(assert (=> bs!462614 m!2791841))

(declare-fun m!2791843 () Bool)

(assert (=> bs!462614 m!2791843))

(declare-fun m!2791845 () Bool)

(assert (=> bs!462614 m!2791845))

(assert (=> bs!462614 m!2791839))

(assert (=> b!2391420 d!698334))

(declare-fun b!2391984 () Bool)

(declare-fun e!1524681 () Option!5554)

(assert (=> b!2391984 (= e!1524681 (Some!5553 (tuple2!27887 Nil!28163 s!9460)))))

(declare-fun b!2391985 () Bool)

(declare-fun res!1016212 () Bool)

(declare-fun e!1524679 () Bool)

(assert (=> b!2391985 (=> (not res!1016212) (not e!1524679))))

(declare-fun lt!870690 () Option!5554)

(assert (=> b!2391985 (= res!1016212 (matchR!3128 (regOne!14534 r!13927) (_1!16484 (get!8614 lt!870690))))))

(declare-fun b!2391986 () Bool)

(declare-fun e!1524683 () Bool)

(assert (=> b!2391986 (= e!1524683 (matchR!3128 (regTwo!14534 r!13927) s!9460))))

(declare-fun b!2391987 () Bool)

(declare-fun e!1524682 () Bool)

(assert (=> b!2391987 (= e!1524682 (not (isDefined!4382 lt!870690)))))

(declare-fun b!2391988 () Bool)

(declare-fun res!1016216 () Bool)

(assert (=> b!2391988 (=> (not res!1016216) (not e!1524679))))

(assert (=> b!2391988 (= res!1016216 (matchR!3128 (regTwo!14534 r!13927) (_2!16484 (get!8614 lt!870690))))))

(declare-fun b!2391990 () Bool)

(declare-fun lt!870692 () Unit!41174)

(declare-fun lt!870691 () Unit!41174)

(assert (=> b!2391990 (= lt!870692 lt!870691)))

(assert (=> b!2391990 (= (++!6965 (++!6965 Nil!28163 (Cons!28163 (h!33564 s!9460) Nil!28163)) (t!208238 s!9460)) s!9460)))

(assert (=> b!2391990 (= lt!870691 (lemmaMoveElementToOtherListKeepsConcatEq!607 Nil!28163 (h!33564 s!9460) (t!208238 s!9460) s!9460))))

(declare-fun e!1524680 () Option!5554)

(assert (=> b!2391990 (= e!1524680 (findConcatSeparation!662 (regOne!14534 r!13927) (regTwo!14534 r!13927) (++!6965 Nil!28163 (Cons!28163 (h!33564 s!9460) Nil!28163)) (t!208238 s!9460) s!9460))))

(declare-fun b!2391991 () Bool)

(assert (=> b!2391991 (= e!1524679 (= (++!6965 (_1!16484 (get!8614 lt!870690)) (_2!16484 (get!8614 lt!870690))) s!9460))))

(declare-fun b!2391992 () Bool)

(assert (=> b!2391992 (= e!1524680 None!5553)))

(declare-fun d!698336 () Bool)

(assert (=> d!698336 e!1524682))

(declare-fun res!1016213 () Bool)

(assert (=> d!698336 (=> res!1016213 e!1524682)))

(assert (=> d!698336 (= res!1016213 e!1524679)))

(declare-fun res!1016215 () Bool)

(assert (=> d!698336 (=> (not res!1016215) (not e!1524679))))

(assert (=> d!698336 (= res!1016215 (isDefined!4382 lt!870690))))

(assert (=> d!698336 (= lt!870690 e!1524681)))

(declare-fun c!380517 () Bool)

(assert (=> d!698336 (= c!380517 e!1524683)))

(declare-fun res!1016214 () Bool)

(assert (=> d!698336 (=> (not res!1016214) (not e!1524683))))

(assert (=> d!698336 (= res!1016214 (matchR!3128 (regOne!14534 r!13927) Nil!28163))))

(assert (=> d!698336 (validRegex!2736 (regOne!14534 r!13927))))

(assert (=> d!698336 (= (findConcatSeparation!662 (regOne!14534 r!13927) (regTwo!14534 r!13927) Nil!28163 s!9460 s!9460) lt!870690)))

(declare-fun b!2391989 () Bool)

(assert (=> b!2391989 (= e!1524681 e!1524680)))

(declare-fun c!380518 () Bool)

(assert (=> b!2391989 (= c!380518 ((_ is Nil!28163) s!9460))))

(assert (= (and d!698336 res!1016214) b!2391986))

(assert (= (and d!698336 c!380517) b!2391984))

(assert (= (and d!698336 (not c!380517)) b!2391989))

(assert (= (and b!2391989 c!380518) b!2391992))

(assert (= (and b!2391989 (not c!380518)) b!2391990))

(assert (= (and d!698336 res!1016215) b!2391985))

(assert (= (and b!2391985 res!1016212) b!2391988))

(assert (= (and b!2391988 res!1016216) b!2391991))

(assert (= (and d!698336 (not res!1016213)) b!2391987))

(declare-fun m!2791847 () Bool)

(assert (=> d!698336 m!2791847))

(declare-fun m!2791849 () Bool)

(assert (=> d!698336 m!2791849))

(assert (=> d!698336 m!2791839))

(declare-fun m!2791851 () Bool)

(assert (=> b!2391985 m!2791851))

(declare-fun m!2791853 () Bool)

(assert (=> b!2391985 m!2791853))

(assert (=> b!2391990 m!2791529))

(assert (=> b!2391990 m!2791529))

(assert (=> b!2391990 m!2791531))

(assert (=> b!2391990 m!2791533))

(assert (=> b!2391990 m!2791529))

(declare-fun m!2791855 () Bool)

(assert (=> b!2391990 m!2791855))

(declare-fun m!2791857 () Bool)

(assert (=> b!2391986 m!2791857))

(assert (=> b!2391988 m!2791851))

(declare-fun m!2791859 () Bool)

(assert (=> b!2391988 m!2791859))

(assert (=> b!2391991 m!2791851))

(declare-fun m!2791861 () Bool)

(assert (=> b!2391991 m!2791861))

(assert (=> b!2391987 m!2791847))

(assert (=> b!2391420 d!698336))

(declare-fun d!698338 () Bool)

(assert (=> d!698338 (= (Exists!1073 lambda!89595) (choose!14093 lambda!89595))))

(declare-fun bs!462615 () Bool)

(assert (= bs!462615 d!698338))

(declare-fun m!2791863 () Bool)

(assert (=> bs!462615 m!2791863))

(assert (=> b!2391420 d!698338))

(declare-fun d!698340 () Bool)

(assert (=> d!698340 (= (head!5253 l!9164) (h!33563 l!9164))))

(assert (=> bm!145612 d!698340))

(declare-fun bm!145656 () Bool)

(declare-fun call!145661 () Bool)

(declare-fun call!145662 () Bool)

(assert (=> bm!145656 (= call!145661 call!145662)))

(declare-fun b!2391993 () Bool)

(declare-fun e!1524686 () Bool)

(declare-fun e!1524689 () Bool)

(assert (=> b!2391993 (= e!1524686 e!1524689)))

(declare-fun res!1016221 () Bool)

(assert (=> b!2391993 (=> (not res!1016221) (not e!1524689))))

(declare-fun call!145663 () Bool)

(assert (=> b!2391993 (= res!1016221 call!145663)))

(declare-fun b!2391994 () Bool)

(declare-fun res!1016219 () Bool)

(assert (=> b!2391994 (=> res!1016219 e!1524686)))

(assert (=> b!2391994 (= res!1016219 (not ((_ is Concat!11647) lt!870596)))))

(declare-fun e!1524684 () Bool)

(assert (=> b!2391994 (= e!1524684 e!1524686)))

(declare-fun b!2391995 () Bool)

(declare-fun res!1016217 () Bool)

(declare-fun e!1524685 () Bool)

(assert (=> b!2391995 (=> (not res!1016217) (not e!1524685))))

(assert (=> b!2391995 (= res!1016217 call!145661)))

(assert (=> b!2391995 (= e!1524684 e!1524685)))

(declare-fun b!2391996 () Bool)

(declare-fun e!1524688 () Bool)

(declare-fun e!1524690 () Bool)

(assert (=> b!2391996 (= e!1524688 e!1524690)))

(declare-fun res!1016218 () Bool)

(assert (=> b!2391996 (= res!1016218 (not (nullable!2060 (reg!7340 lt!870596))))))

(assert (=> b!2391996 (=> (not res!1016218) (not e!1524690))))

(declare-fun b!2391997 () Bool)

(declare-fun e!1524687 () Bool)

(assert (=> b!2391997 (= e!1524687 e!1524688)))

(declare-fun c!380519 () Bool)

(assert (=> b!2391997 (= c!380519 ((_ is Star!7011) lt!870596))))

(declare-fun b!2391998 () Bool)

(assert (=> b!2391998 (= e!1524689 call!145661)))

(declare-fun b!2391999 () Bool)

(assert (=> b!2391999 (= e!1524690 call!145662)))

(declare-fun b!2392000 () Bool)

(assert (=> b!2392000 (= e!1524685 call!145663)))

(declare-fun d!698342 () Bool)

(declare-fun res!1016220 () Bool)

(assert (=> d!698342 (=> res!1016220 e!1524687)))

(assert (=> d!698342 (= res!1016220 ((_ is ElementMatch!7011) lt!870596))))

(assert (=> d!698342 (= (validRegex!2736 lt!870596) e!1524687)))

(declare-fun bm!145657 () Bool)

(declare-fun c!380520 () Bool)

(assert (=> bm!145657 (= call!145663 (validRegex!2736 (ite c!380520 (regTwo!14535 lt!870596) (regOne!14534 lt!870596))))))

(declare-fun b!2392001 () Bool)

(assert (=> b!2392001 (= e!1524688 e!1524684)))

(assert (=> b!2392001 (= c!380520 ((_ is Union!7011) lt!870596))))

(declare-fun bm!145658 () Bool)

(assert (=> bm!145658 (= call!145662 (validRegex!2736 (ite c!380519 (reg!7340 lt!870596) (ite c!380520 (regOne!14535 lt!870596) (regTwo!14534 lt!870596)))))))

(assert (= (and d!698342 (not res!1016220)) b!2391997))

(assert (= (and b!2391997 c!380519) b!2391996))

(assert (= (and b!2391997 (not c!380519)) b!2392001))

(assert (= (and b!2391996 res!1016218) b!2391999))

(assert (= (and b!2392001 c!380520) b!2391995))

(assert (= (and b!2392001 (not c!380520)) b!2391994))

(assert (= (and b!2391995 res!1016217) b!2392000))

(assert (= (and b!2391994 (not res!1016219)) b!2391993))

(assert (= (and b!2391993 res!1016221) b!2391998))

(assert (= (or b!2391995 b!2391998) bm!145656))

(assert (= (or b!2392000 b!2391993) bm!145657))

(assert (= (or b!2391999 bm!145656) bm!145658))

(declare-fun m!2791865 () Bool)

(assert (=> b!2391996 m!2791865))

(declare-fun m!2791867 () Bool)

(assert (=> bm!145657 m!2791867))

(declare-fun m!2791869 () Bool)

(assert (=> bm!145658 m!2791869))

(assert (=> b!2391409 d!698342))

(declare-fun d!698344 () Bool)

(assert (=> d!698344 (= (tail!3523 l!9164) (t!208237 l!9164))))

(assert (=> b!2391410 d!698344))

(declare-fun d!698346 () Bool)

(assert (=> d!698346 (= (isEmpty!16140 lt!870594) ((_ is Nil!28162) lt!870594))))

(assert (=> b!2391410 d!698346))

(declare-fun d!698348 () Bool)

(assert (=> d!698348 (= (isDefined!4382 call!145614) (not (isEmpty!16143 call!145614)))))

(declare-fun bs!462616 () Bool)

(assert (= bs!462616 d!698348))

(declare-fun m!2791871 () Bool)

(assert (=> bs!462616 m!2791871))

(assert (=> bm!145611 d!698348))

(declare-fun d!698350 () Bool)

(assert (=> d!698350 (= (isDefined!4382 (ite c!380389 (ite c!380390 call!145619 lt!870592) call!145616)) (not (isEmpty!16143 (ite c!380389 (ite c!380390 call!145619 lt!870592) call!145616))))))

(declare-fun bs!462617 () Bool)

(assert (= bs!462617 d!698350))

(declare-fun m!2791873 () Bool)

(assert (=> bs!462617 m!2791873))

(assert (=> bm!145608 d!698350))

(declare-fun d!698352 () Bool)

(assert (=> d!698352 (= (isEmpty!16140 l!9164) ((_ is Nil!28162) l!9164))))

(assert (=> b!2391416 d!698352))

(declare-fun bs!462618 () Bool)

(declare-fun b!2392040 () Bool)

(assert (= bs!462618 (and b!2392040 b!2391420)))

(declare-fun lambda!89634 () Int)

(assert (=> bs!462618 (not (= lambda!89634 lambda!89595))))

(assert (=> bs!462618 (not (= lambda!89634 lambda!89594))))

(declare-fun bs!462619 () Bool)

(assert (= bs!462619 (and b!2392040 d!698334)))

(assert (=> bs!462619 (not (= lambda!89634 lambda!89628))))

(assert (=> bs!462619 (not (= lambda!89634 lambda!89629))))

(declare-fun bs!462620 () Bool)

(assert (= bs!462620 (and b!2392040 d!698332)))

(assert (=> bs!462620 (not (= lambda!89634 lambda!89623))))

(assert (=> b!2392040 true))

(assert (=> b!2392040 true))

(declare-fun bs!462621 () Bool)

(declare-fun b!2392043 () Bool)

(assert (= bs!462621 (and b!2392043 b!2391420)))

(declare-fun lambda!89635 () Int)

(assert (=> bs!462621 (= lambda!89635 lambda!89595)))

(declare-fun bs!462622 () Bool)

(assert (= bs!462622 (and b!2392043 b!2392040)))

(assert (=> bs!462622 (not (= lambda!89635 lambda!89634))))

(assert (=> bs!462621 (not (= lambda!89635 lambda!89594))))

(declare-fun bs!462623 () Bool)

(assert (= bs!462623 (and b!2392043 d!698334)))

(assert (=> bs!462623 (not (= lambda!89635 lambda!89628))))

(assert (=> bs!462623 (= lambda!89635 lambda!89629)))

(declare-fun bs!462624 () Bool)

(assert (= bs!462624 (and b!2392043 d!698332)))

(assert (=> bs!462624 (not (= lambda!89635 lambda!89623))))

(assert (=> b!2392043 true))

(assert (=> b!2392043 true))

(declare-fun b!2392034 () Bool)

(declare-fun e!1524710 () Bool)

(assert (=> b!2392034 (= e!1524710 (matchRSpec!860 (regTwo!14535 r!13927) s!9460))))

(declare-fun b!2392035 () Bool)

(declare-fun e!1524713 () Bool)

(declare-fun e!1524709 () Bool)

(assert (=> b!2392035 (= e!1524713 e!1524709)))

(declare-fun res!1016239 () Bool)

(assert (=> b!2392035 (= res!1016239 (not ((_ is EmptyLang!7011) r!13927)))))

(assert (=> b!2392035 (=> (not res!1016239) (not e!1524709))))

(declare-fun b!2392036 () Bool)

(declare-fun e!1524712 () Bool)

(assert (=> b!2392036 (= e!1524712 (= s!9460 (Cons!28163 (c!380393 r!13927) Nil!28163)))))

(declare-fun b!2392037 () Bool)

(declare-fun res!1016238 () Bool)

(declare-fun e!1524711 () Bool)

(assert (=> b!2392037 (=> res!1016238 e!1524711)))

(declare-fun call!145669 () Bool)

(assert (=> b!2392037 (= res!1016238 call!145669)))

(declare-fun e!1524715 () Bool)

(assert (=> b!2392037 (= e!1524715 e!1524711)))

(declare-fun d!698354 () Bool)

(declare-fun c!380531 () Bool)

(assert (=> d!698354 (= c!380531 ((_ is EmptyExpr!7011) r!13927))))

(assert (=> d!698354 (= (matchRSpec!860 r!13927 s!9460) e!1524713)))

(declare-fun b!2392038 () Bool)

(declare-fun e!1524714 () Bool)

(assert (=> b!2392038 (= e!1524714 e!1524715)))

(declare-fun c!380532 () Bool)

(assert (=> b!2392038 (= c!380532 ((_ is Star!7011) r!13927))))

(declare-fun b!2392039 () Bool)

(assert (=> b!2392039 (= e!1524713 call!145669)))

(declare-fun call!145668 () Bool)

(assert (=> b!2392040 (= e!1524711 call!145668)))

(declare-fun b!2392041 () Bool)

(declare-fun c!380529 () Bool)

(assert (=> b!2392041 (= c!380529 ((_ is ElementMatch!7011) r!13927))))

(assert (=> b!2392041 (= e!1524709 e!1524712)))

(declare-fun b!2392042 () Bool)

(declare-fun c!380530 () Bool)

(assert (=> b!2392042 (= c!380530 ((_ is Union!7011) r!13927))))

(assert (=> b!2392042 (= e!1524712 e!1524714)))

(declare-fun bm!145663 () Bool)

(assert (=> bm!145663 (= call!145669 (isEmpty!16144 s!9460))))

(assert (=> b!2392043 (= e!1524715 call!145668)))

(declare-fun bm!145664 () Bool)

(assert (=> bm!145664 (= call!145668 (Exists!1073 (ite c!380532 lambda!89634 lambda!89635)))))

(declare-fun b!2392044 () Bool)

(assert (=> b!2392044 (= e!1524714 e!1524710)))

(declare-fun res!1016240 () Bool)

(assert (=> b!2392044 (= res!1016240 (matchRSpec!860 (regOne!14535 r!13927) s!9460))))

(assert (=> b!2392044 (=> res!1016240 e!1524710)))

(assert (= (and d!698354 c!380531) b!2392039))

(assert (= (and d!698354 (not c!380531)) b!2392035))

(assert (= (and b!2392035 res!1016239) b!2392041))

(assert (= (and b!2392041 c!380529) b!2392036))

(assert (= (and b!2392041 (not c!380529)) b!2392042))

(assert (= (and b!2392042 c!380530) b!2392044))

(assert (= (and b!2392042 (not c!380530)) b!2392038))

(assert (= (and b!2392044 (not res!1016240)) b!2392034))

(assert (= (and b!2392038 c!380532) b!2392037))

(assert (= (and b!2392038 (not c!380532)) b!2392043))

(assert (= (and b!2392037 (not res!1016238)) b!2392040))

(assert (= (or b!2392040 b!2392043) bm!145664))

(assert (= (or b!2392039 b!2392037) bm!145663))

(declare-fun m!2791875 () Bool)

(assert (=> b!2392034 m!2791875))

(assert (=> bm!145663 m!2791587))

(declare-fun m!2791877 () Bool)

(assert (=> bm!145664 m!2791877))

(declare-fun m!2791879 () Bool)

(assert (=> b!2392044 m!2791879))

(assert (=> b!2391407 d!698354))

(declare-fun b!2392045 () Bool)

(declare-fun res!1016247 () Bool)

(declare-fun e!1524716 () Bool)

(assert (=> b!2392045 (=> (not res!1016247) (not e!1524716))))

(declare-fun call!145670 () Bool)

(assert (=> b!2392045 (= res!1016247 (not call!145670))))

(declare-fun b!2392046 () Bool)

(declare-fun e!1524721 () Bool)

(assert (=> b!2392046 (= e!1524721 (matchR!3128 (derivativeStep!1718 r!13927 (head!5255 s!9460)) (tail!3525 s!9460)))))

(declare-fun b!2392047 () Bool)

(assert (=> b!2392047 (= e!1524716 (= (head!5255 s!9460) (c!380393 r!13927)))))

(declare-fun b!2392048 () Bool)

(declare-fun res!1016245 () Bool)

(assert (=> b!2392048 (=> (not res!1016245) (not e!1524716))))

(assert (=> b!2392048 (= res!1016245 (isEmpty!16144 (tail!3525 s!9460)))))

(declare-fun b!2392049 () Bool)

(declare-fun e!1524717 () Bool)

(declare-fun e!1524720 () Bool)

(assert (=> b!2392049 (= e!1524717 e!1524720)))

(declare-fun c!380535 () Bool)

(assert (=> b!2392049 (= c!380535 ((_ is EmptyLang!7011) r!13927))))

(declare-fun b!2392050 () Bool)

(declare-fun res!1016244 () Bool)

(declare-fun e!1524722 () Bool)

(assert (=> b!2392050 (=> res!1016244 e!1524722)))

(assert (=> b!2392050 (= res!1016244 (not ((_ is ElementMatch!7011) r!13927)))))

(assert (=> b!2392050 (= e!1524720 e!1524722)))

(declare-fun b!2392051 () Bool)

(declare-fun e!1524718 () Bool)

(declare-fun e!1524719 () Bool)

(assert (=> b!2392051 (= e!1524718 e!1524719)))

(declare-fun res!1016246 () Bool)

(assert (=> b!2392051 (=> res!1016246 e!1524719)))

(assert (=> b!2392051 (= res!1016246 call!145670)))

(declare-fun b!2392053 () Bool)

(assert (=> b!2392053 (= e!1524722 e!1524718)))

(declare-fun res!1016241 () Bool)

(assert (=> b!2392053 (=> (not res!1016241) (not e!1524718))))

(declare-fun lt!870693 () Bool)

(assert (=> b!2392053 (= res!1016241 (not lt!870693))))

(declare-fun b!2392054 () Bool)

(assert (=> b!2392054 (= e!1524719 (not (= (head!5255 s!9460) (c!380393 r!13927))))))

(declare-fun b!2392055 () Bool)

(assert (=> b!2392055 (= e!1524721 (nullable!2060 r!13927))))

(declare-fun b!2392056 () Bool)

(declare-fun res!1016242 () Bool)

(assert (=> b!2392056 (=> res!1016242 e!1524722)))

(assert (=> b!2392056 (= res!1016242 e!1524716)))

(declare-fun res!1016243 () Bool)

(assert (=> b!2392056 (=> (not res!1016243) (not e!1524716))))

(assert (=> b!2392056 (= res!1016243 lt!870693)))

(declare-fun b!2392057 () Bool)

(assert (=> b!2392057 (= e!1524717 (= lt!870693 call!145670))))

(declare-fun d!698356 () Bool)

(assert (=> d!698356 e!1524717))

(declare-fun c!380533 () Bool)

(assert (=> d!698356 (= c!380533 ((_ is EmptyExpr!7011) r!13927))))

(assert (=> d!698356 (= lt!870693 e!1524721)))

(declare-fun c!380534 () Bool)

(assert (=> d!698356 (= c!380534 (isEmpty!16144 s!9460))))

(assert (=> d!698356 (validRegex!2736 r!13927)))

(assert (=> d!698356 (= (matchR!3128 r!13927 s!9460) lt!870693)))

(declare-fun b!2392052 () Bool)

(declare-fun res!1016248 () Bool)

(assert (=> b!2392052 (=> res!1016248 e!1524719)))

(assert (=> b!2392052 (= res!1016248 (not (isEmpty!16144 (tail!3525 s!9460))))))

(declare-fun bm!145665 () Bool)

(assert (=> bm!145665 (= call!145670 (isEmpty!16144 s!9460))))

(declare-fun b!2392058 () Bool)

(assert (=> b!2392058 (= e!1524720 (not lt!870693))))

(assert (= (and d!698356 c!380534) b!2392055))

(assert (= (and d!698356 (not c!380534)) b!2392046))

(assert (= (and d!698356 c!380533) b!2392057))

(assert (= (and d!698356 (not c!380533)) b!2392049))

(assert (= (and b!2392049 c!380535) b!2392058))

(assert (= (and b!2392049 (not c!380535)) b!2392050))

(assert (= (and b!2392050 (not res!1016244)) b!2392056))

(assert (= (and b!2392056 res!1016243) b!2392045))

(assert (= (and b!2392045 res!1016247) b!2392048))

(assert (= (and b!2392048 res!1016245) b!2392047))

(assert (= (and b!2392056 (not res!1016242)) b!2392053))

(assert (= (and b!2392053 res!1016241) b!2392051))

(assert (= (and b!2392051 (not res!1016246)) b!2392052))

(assert (= (and b!2392052 (not res!1016248)) b!2392054))

(assert (= (or b!2392057 b!2392045 b!2392051) bm!145665))

(declare-fun m!2791881 () Bool)

(assert (=> b!2392055 m!2791881))

(assert (=> b!2392046 m!2791579))

(assert (=> b!2392046 m!2791579))

(declare-fun m!2791883 () Bool)

(assert (=> b!2392046 m!2791883))

(assert (=> b!2392046 m!2791583))

(assert (=> b!2392046 m!2791883))

(assert (=> b!2392046 m!2791583))

(declare-fun m!2791885 () Bool)

(assert (=> b!2392046 m!2791885))

(assert (=> b!2392054 m!2791579))

(assert (=> bm!145665 m!2791587))

(assert (=> d!698356 m!2791587))

(declare-fun m!2791887 () Bool)

(assert (=> d!698356 m!2791887))

(assert (=> b!2392052 m!2791583))

(assert (=> b!2392052 m!2791583))

(assert (=> b!2392052 m!2791589))

(assert (=> b!2392048 m!2791583))

(assert (=> b!2392048 m!2791583))

(assert (=> b!2392048 m!2791589))

(assert (=> b!2392047 m!2791579))

(assert (=> b!2391407 d!698356))

(declare-fun d!698358 () Bool)

(assert (=> d!698358 (= (matchR!3128 r!13927 s!9460) (matchRSpec!860 r!13927 s!9460))))

(declare-fun lt!870696 () Unit!41174)

(declare-fun choose!14096 (Regex!7011 List!28261) Unit!41174)

(assert (=> d!698358 (= lt!870696 (choose!14096 r!13927 s!9460))))

(assert (=> d!698358 (validRegex!2736 r!13927)))

(assert (=> d!698358 (= (mainMatchTheorem!860 r!13927 s!9460) lt!870696)))

(declare-fun bs!462625 () Bool)

(assert (= bs!462625 d!698358))

(assert (=> bs!462625 m!2791407))

(assert (=> bs!462625 m!2791405))

(declare-fun m!2791889 () Bool)

(assert (=> bs!462625 m!2791889))

(assert (=> bs!462625 m!2791887))

(assert (=> b!2391407 d!698358))

(declare-fun b!2392059 () Bool)

(declare-fun e!1524725 () Option!5554)

(assert (=> b!2392059 (= e!1524725 (Some!5553 (tuple2!27887 Nil!28163 s!9460)))))

(declare-fun b!2392060 () Bool)

(declare-fun res!1016249 () Bool)

(declare-fun e!1524723 () Bool)

(assert (=> b!2392060 (=> (not res!1016249) (not e!1524723))))

(declare-fun lt!870697 () Option!5554)

(assert (=> b!2392060 (= res!1016249 (matchR!3128 (ite c!380389 lt!870586 call!145621) (_1!16484 (get!8614 lt!870697))))))

(declare-fun b!2392061 () Bool)

(declare-fun e!1524727 () Bool)

(assert (=> b!2392061 (= e!1524727 (matchR!3128 (ite c!380389 call!145617 call!145615) s!9460))))

(declare-fun b!2392062 () Bool)

(declare-fun e!1524726 () Bool)

(assert (=> b!2392062 (= e!1524726 (not (isDefined!4382 lt!870697)))))

(declare-fun b!2392063 () Bool)

(declare-fun res!1016253 () Bool)

(assert (=> b!2392063 (=> (not res!1016253) (not e!1524723))))

(assert (=> b!2392063 (= res!1016253 (matchR!3128 (ite c!380389 call!145617 call!145615) (_2!16484 (get!8614 lt!870697))))))

(declare-fun b!2392065 () Bool)

(declare-fun lt!870699 () Unit!41174)

(declare-fun lt!870698 () Unit!41174)

(assert (=> b!2392065 (= lt!870699 lt!870698)))

(assert (=> b!2392065 (= (++!6965 (++!6965 Nil!28163 (Cons!28163 (h!33564 s!9460) Nil!28163)) (t!208238 s!9460)) s!9460)))

(assert (=> b!2392065 (= lt!870698 (lemmaMoveElementToOtherListKeepsConcatEq!607 Nil!28163 (h!33564 s!9460) (t!208238 s!9460) s!9460))))

(declare-fun e!1524724 () Option!5554)

(assert (=> b!2392065 (= e!1524724 (findConcatSeparation!662 (ite c!380389 lt!870586 call!145621) (ite c!380389 call!145617 call!145615) (++!6965 Nil!28163 (Cons!28163 (h!33564 s!9460) Nil!28163)) (t!208238 s!9460) s!9460))))

(declare-fun b!2392066 () Bool)

(assert (=> b!2392066 (= e!1524723 (= (++!6965 (_1!16484 (get!8614 lt!870697)) (_2!16484 (get!8614 lt!870697))) s!9460))))

(declare-fun b!2392067 () Bool)

(assert (=> b!2392067 (= e!1524724 None!5553)))

(declare-fun d!698360 () Bool)

(assert (=> d!698360 e!1524726))

(declare-fun res!1016250 () Bool)

(assert (=> d!698360 (=> res!1016250 e!1524726)))

(assert (=> d!698360 (= res!1016250 e!1524723)))

(declare-fun res!1016252 () Bool)

(assert (=> d!698360 (=> (not res!1016252) (not e!1524723))))

(assert (=> d!698360 (= res!1016252 (isDefined!4382 lt!870697))))

(assert (=> d!698360 (= lt!870697 e!1524725)))

(declare-fun c!380536 () Bool)

(assert (=> d!698360 (= c!380536 e!1524727)))

(declare-fun res!1016251 () Bool)

(assert (=> d!698360 (=> (not res!1016251) (not e!1524727))))

(assert (=> d!698360 (= res!1016251 (matchR!3128 (ite c!380389 lt!870586 call!145621) Nil!28163))))

(assert (=> d!698360 (validRegex!2736 (ite c!380389 lt!870586 call!145621))))

(assert (=> d!698360 (= (findConcatSeparation!662 (ite c!380389 lt!870586 call!145621) (ite c!380389 call!145617 call!145615) Nil!28163 s!9460 s!9460) lt!870697)))

(declare-fun b!2392064 () Bool)

(assert (=> b!2392064 (= e!1524725 e!1524724)))

(declare-fun c!380537 () Bool)

(assert (=> b!2392064 (= c!380537 ((_ is Nil!28163) s!9460))))

(assert (= (and d!698360 res!1016251) b!2392061))

(assert (= (and d!698360 c!380536) b!2392059))

(assert (= (and d!698360 (not c!380536)) b!2392064))

(assert (= (and b!2392064 c!380537) b!2392067))

(assert (= (and b!2392064 (not c!380537)) b!2392065))

(assert (= (and d!698360 res!1016252) b!2392060))

(assert (= (and b!2392060 res!1016249) b!2392063))

(assert (= (and b!2392063 res!1016253) b!2392066))

(assert (= (and d!698360 (not res!1016250)) b!2392062))

(declare-fun m!2791891 () Bool)

(assert (=> d!698360 m!2791891))

(declare-fun m!2791893 () Bool)

(assert (=> d!698360 m!2791893))

(declare-fun m!2791895 () Bool)

(assert (=> d!698360 m!2791895))

(declare-fun m!2791897 () Bool)

(assert (=> b!2392060 m!2791897))

(declare-fun m!2791899 () Bool)

(assert (=> b!2392060 m!2791899))

(assert (=> b!2392065 m!2791529))

(assert (=> b!2392065 m!2791529))

(assert (=> b!2392065 m!2791531))

(assert (=> b!2392065 m!2791533))

(assert (=> b!2392065 m!2791529))

(declare-fun m!2791901 () Bool)

(assert (=> b!2392065 m!2791901))

(declare-fun m!2791903 () Bool)

(assert (=> b!2392061 m!2791903))

(assert (=> b!2392063 m!2791897))

(declare-fun m!2791905 () Bool)

(assert (=> b!2392063 m!2791905))

(assert (=> b!2392066 m!2791897))

(declare-fun m!2791907 () Bool)

(assert (=> b!2392066 m!2791907))

(assert (=> b!2392062 m!2791891))

(assert (=> bm!145610 d!698360))

(declare-fun b!2392068 () Bool)

(declare-fun e!1524730 () Option!5554)

(assert (=> b!2392068 (= e!1524730 (Some!5553 (tuple2!27887 Nil!28163 s!9460)))))

(declare-fun b!2392069 () Bool)

(declare-fun res!1016254 () Bool)

(declare-fun e!1524728 () Bool)

(assert (=> b!2392069 (=> (not res!1016254) (not e!1524728))))

(declare-fun lt!870700 () Option!5554)

(assert (=> b!2392069 (= res!1016254 (matchR!3128 lt!870586 (_1!16484 (get!8614 lt!870700))))))

(declare-fun b!2392070 () Bool)

(declare-fun e!1524732 () Bool)

(assert (=> b!2392070 (= e!1524732 (matchR!3128 EmptyExpr!7011 s!9460))))

(declare-fun b!2392071 () Bool)

(declare-fun e!1524731 () Bool)

(assert (=> b!2392071 (= e!1524731 (not (isDefined!4382 lt!870700)))))

(declare-fun b!2392072 () Bool)

(declare-fun res!1016258 () Bool)

(assert (=> b!2392072 (=> (not res!1016258) (not e!1524728))))

(assert (=> b!2392072 (= res!1016258 (matchR!3128 EmptyExpr!7011 (_2!16484 (get!8614 lt!870700))))))

(declare-fun b!2392074 () Bool)

(declare-fun lt!870702 () Unit!41174)

(declare-fun lt!870701 () Unit!41174)

(assert (=> b!2392074 (= lt!870702 lt!870701)))

(assert (=> b!2392074 (= (++!6965 (++!6965 Nil!28163 (Cons!28163 (h!33564 s!9460) Nil!28163)) (t!208238 s!9460)) s!9460)))

(assert (=> b!2392074 (= lt!870701 (lemmaMoveElementToOtherListKeepsConcatEq!607 Nil!28163 (h!33564 s!9460) (t!208238 s!9460) s!9460))))

(declare-fun e!1524729 () Option!5554)

(assert (=> b!2392074 (= e!1524729 (findConcatSeparation!662 lt!870586 EmptyExpr!7011 (++!6965 Nil!28163 (Cons!28163 (h!33564 s!9460) Nil!28163)) (t!208238 s!9460) s!9460))))

(declare-fun b!2392075 () Bool)

(assert (=> b!2392075 (= e!1524728 (= (++!6965 (_1!16484 (get!8614 lt!870700)) (_2!16484 (get!8614 lt!870700))) s!9460))))

(declare-fun b!2392076 () Bool)

(assert (=> b!2392076 (= e!1524729 None!5553)))

(declare-fun d!698362 () Bool)

(assert (=> d!698362 e!1524731))

(declare-fun res!1016255 () Bool)

(assert (=> d!698362 (=> res!1016255 e!1524731)))

(assert (=> d!698362 (= res!1016255 e!1524728)))

(declare-fun res!1016257 () Bool)

(assert (=> d!698362 (=> (not res!1016257) (not e!1524728))))

(assert (=> d!698362 (= res!1016257 (isDefined!4382 lt!870700))))

(assert (=> d!698362 (= lt!870700 e!1524730)))

(declare-fun c!380538 () Bool)

(assert (=> d!698362 (= c!380538 e!1524732)))

(declare-fun res!1016256 () Bool)

(assert (=> d!698362 (=> (not res!1016256) (not e!1524732))))

(assert (=> d!698362 (= res!1016256 (matchR!3128 lt!870586 Nil!28163))))

(assert (=> d!698362 (validRegex!2736 lt!870586)))

(assert (=> d!698362 (= (findConcatSeparation!662 lt!870586 EmptyExpr!7011 Nil!28163 s!9460 s!9460) lt!870700)))

(declare-fun b!2392073 () Bool)

(assert (=> b!2392073 (= e!1524730 e!1524729)))

(declare-fun c!380539 () Bool)

(assert (=> b!2392073 (= c!380539 ((_ is Nil!28163) s!9460))))

(assert (= (and d!698362 res!1016256) b!2392070))

(assert (= (and d!698362 c!380538) b!2392068))

(assert (= (and d!698362 (not c!380538)) b!2392073))

(assert (= (and b!2392073 c!380539) b!2392076))

(assert (= (and b!2392073 (not c!380539)) b!2392074))

(assert (= (and d!698362 res!1016257) b!2392069))

(assert (= (and b!2392069 res!1016254) b!2392072))

(assert (= (and b!2392072 res!1016258) b!2392075))

(assert (= (and d!698362 (not res!1016255)) b!2392071))

(declare-fun m!2791909 () Bool)

(assert (=> d!698362 m!2791909))

(assert (=> d!698362 m!2791521))

(assert (=> d!698362 m!2791523))

(declare-fun m!2791911 () Bool)

(assert (=> b!2392069 m!2791911))

(declare-fun m!2791913 () Bool)

(assert (=> b!2392069 m!2791913))

(assert (=> b!2392074 m!2791529))

(assert (=> b!2392074 m!2791529))

(assert (=> b!2392074 m!2791531))

(assert (=> b!2392074 m!2791533))

(assert (=> b!2392074 m!2791529))

(declare-fun m!2791915 () Bool)

(assert (=> b!2392074 m!2791915))

(declare-fun m!2791917 () Bool)

(assert (=> b!2392070 m!2791917))

(assert (=> b!2392072 m!2791911))

(declare-fun m!2791919 () Bool)

(assert (=> b!2392072 m!2791919))

(assert (=> b!2392075 m!2791911))

(declare-fun m!2791921 () Bool)

(assert (=> b!2392075 m!2791921))

(assert (=> b!2392071 m!2791909))

(assert (=> bm!145614 d!698362))

(declare-fun b!2392090 () Bool)

(declare-fun e!1524735 () Bool)

(declare-fun tp!762305 () Bool)

(declare-fun tp!762304 () Bool)

(assert (=> b!2392090 (= e!1524735 (and tp!762305 tp!762304))))

(declare-fun b!2392089 () Bool)

(declare-fun tp!762303 () Bool)

(assert (=> b!2392089 (= e!1524735 tp!762303)))

(assert (=> b!2391428 (= tp!762234 e!1524735)))

(declare-fun b!2392088 () Bool)

(declare-fun tp!762302 () Bool)

(declare-fun tp!762301 () Bool)

(assert (=> b!2392088 (= e!1524735 (and tp!762302 tp!762301))))

(declare-fun b!2392087 () Bool)

(assert (=> b!2392087 (= e!1524735 tp_is_empty!11435)))

(assert (= (and b!2391428 ((_ is ElementMatch!7011) (h!33563 l!9164))) b!2392087))

(assert (= (and b!2391428 ((_ is Concat!11647) (h!33563 l!9164))) b!2392088))

(assert (= (and b!2391428 ((_ is Star!7011) (h!33563 l!9164))) b!2392089))

(assert (= (and b!2391428 ((_ is Union!7011) (h!33563 l!9164))) b!2392090))

(declare-fun b!2392095 () Bool)

(declare-fun e!1524738 () Bool)

(declare-fun tp!762310 () Bool)

(declare-fun tp!762311 () Bool)

(assert (=> b!2392095 (= e!1524738 (and tp!762310 tp!762311))))

(assert (=> b!2391428 (= tp!762235 e!1524738)))

(assert (= (and b!2391428 ((_ is Cons!28162) (t!208237 l!9164))) b!2392095))

(declare-fun b!2392099 () Bool)

(declare-fun e!1524739 () Bool)

(declare-fun tp!762316 () Bool)

(declare-fun tp!762315 () Bool)

(assert (=> b!2392099 (= e!1524739 (and tp!762316 tp!762315))))

(declare-fun b!2392098 () Bool)

(declare-fun tp!762314 () Bool)

(assert (=> b!2392098 (= e!1524739 tp!762314)))

(assert (=> b!2391418 (= tp!762239 e!1524739)))

(declare-fun b!2392097 () Bool)

(declare-fun tp!762313 () Bool)

(declare-fun tp!762312 () Bool)

(assert (=> b!2392097 (= e!1524739 (and tp!762313 tp!762312))))

(declare-fun b!2392096 () Bool)

(assert (=> b!2392096 (= e!1524739 tp_is_empty!11435)))

(assert (= (and b!2391418 ((_ is ElementMatch!7011) (reg!7340 r!13927))) b!2392096))

(assert (= (and b!2391418 ((_ is Concat!11647) (reg!7340 r!13927))) b!2392097))

(assert (= (and b!2391418 ((_ is Star!7011) (reg!7340 r!13927))) b!2392098))

(assert (= (and b!2391418 ((_ is Union!7011) (reg!7340 r!13927))) b!2392099))

(declare-fun b!2392104 () Bool)

(declare-fun e!1524742 () Bool)

(declare-fun tp!762319 () Bool)

(assert (=> b!2392104 (= e!1524742 (and tp_is_empty!11435 tp!762319))))

(assert (=> b!2391411 (= tp!762237 e!1524742)))

(assert (= (and b!2391411 ((_ is Cons!28163) (t!208238 s!9460))) b!2392104))

(declare-fun b!2392108 () Bool)

(declare-fun e!1524743 () Bool)

(declare-fun tp!762324 () Bool)

(declare-fun tp!762323 () Bool)

(assert (=> b!2392108 (= e!1524743 (and tp!762324 tp!762323))))

(declare-fun b!2392107 () Bool)

(declare-fun tp!762322 () Bool)

(assert (=> b!2392107 (= e!1524743 tp!762322)))

(assert (=> b!2391426 (= tp!762241 e!1524743)))

(declare-fun b!2392106 () Bool)

(declare-fun tp!762321 () Bool)

(declare-fun tp!762320 () Bool)

(assert (=> b!2392106 (= e!1524743 (and tp!762321 tp!762320))))

(declare-fun b!2392105 () Bool)

(assert (=> b!2392105 (= e!1524743 tp_is_empty!11435)))

(assert (= (and b!2391426 ((_ is ElementMatch!7011) (regOne!14534 r!13927))) b!2392105))

(assert (= (and b!2391426 ((_ is Concat!11647) (regOne!14534 r!13927))) b!2392106))

(assert (= (and b!2391426 ((_ is Star!7011) (regOne!14534 r!13927))) b!2392107))

(assert (= (and b!2391426 ((_ is Union!7011) (regOne!14534 r!13927))) b!2392108))

(declare-fun b!2392112 () Bool)

(declare-fun e!1524744 () Bool)

(declare-fun tp!762329 () Bool)

(declare-fun tp!762328 () Bool)

(assert (=> b!2392112 (= e!1524744 (and tp!762329 tp!762328))))

(declare-fun b!2392111 () Bool)

(declare-fun tp!762327 () Bool)

(assert (=> b!2392111 (= e!1524744 tp!762327)))

(assert (=> b!2391426 (= tp!762238 e!1524744)))

(declare-fun b!2392110 () Bool)

(declare-fun tp!762326 () Bool)

(declare-fun tp!762325 () Bool)

(assert (=> b!2392110 (= e!1524744 (and tp!762326 tp!762325))))

(declare-fun b!2392109 () Bool)

(assert (=> b!2392109 (= e!1524744 tp_is_empty!11435)))

(assert (= (and b!2391426 ((_ is ElementMatch!7011) (regTwo!14534 r!13927))) b!2392109))

(assert (= (and b!2391426 ((_ is Concat!11647) (regTwo!14534 r!13927))) b!2392110))

(assert (= (and b!2391426 ((_ is Star!7011) (regTwo!14534 r!13927))) b!2392111))

(assert (= (and b!2391426 ((_ is Union!7011) (regTwo!14534 r!13927))) b!2392112))

(declare-fun b!2392116 () Bool)

(declare-fun e!1524745 () Bool)

(declare-fun tp!762334 () Bool)

(declare-fun tp!762333 () Bool)

(assert (=> b!2392116 (= e!1524745 (and tp!762334 tp!762333))))

(declare-fun b!2392115 () Bool)

(declare-fun tp!762332 () Bool)

(assert (=> b!2392115 (= e!1524745 tp!762332)))

(assert (=> b!2391413 (= tp!762236 e!1524745)))

(declare-fun b!2392114 () Bool)

(declare-fun tp!762331 () Bool)

(declare-fun tp!762330 () Bool)

(assert (=> b!2392114 (= e!1524745 (and tp!762331 tp!762330))))

(declare-fun b!2392113 () Bool)

(assert (=> b!2392113 (= e!1524745 tp_is_empty!11435)))

(assert (= (and b!2391413 ((_ is ElementMatch!7011) (regOne!14535 r!13927))) b!2392113))

(assert (= (and b!2391413 ((_ is Concat!11647) (regOne!14535 r!13927))) b!2392114))

(assert (= (and b!2391413 ((_ is Star!7011) (regOne!14535 r!13927))) b!2392115))

(assert (= (and b!2391413 ((_ is Union!7011) (regOne!14535 r!13927))) b!2392116))

(declare-fun b!2392120 () Bool)

(declare-fun e!1524746 () Bool)

(declare-fun tp!762339 () Bool)

(declare-fun tp!762338 () Bool)

(assert (=> b!2392120 (= e!1524746 (and tp!762339 tp!762338))))

(declare-fun b!2392119 () Bool)

(declare-fun tp!762337 () Bool)

(assert (=> b!2392119 (= e!1524746 tp!762337)))

(assert (=> b!2391413 (= tp!762240 e!1524746)))

(declare-fun b!2392118 () Bool)

(declare-fun tp!762336 () Bool)

(declare-fun tp!762335 () Bool)

(assert (=> b!2392118 (= e!1524746 (and tp!762336 tp!762335))))

(declare-fun b!2392117 () Bool)

(assert (=> b!2392117 (= e!1524746 tp_is_empty!11435)))

(assert (= (and b!2391413 ((_ is ElementMatch!7011) (regTwo!14535 r!13927))) b!2392117))

(assert (= (and b!2391413 ((_ is Concat!11647) (regTwo!14535 r!13927))) b!2392118))

(assert (= (and b!2391413 ((_ is Star!7011) (regTwo!14535 r!13927))) b!2392119))

(assert (= (and b!2391413 ((_ is Union!7011) (regTwo!14535 r!13927))) b!2392120))

(declare-fun b_lambda!74209 () Bool)

(assert (= b_lambda!74205 (or start!234664 b_lambda!74209)))

(declare-fun bs!462626 () Bool)

(declare-fun d!698364 () Bool)

(assert (= bs!462626 (and d!698364 start!234664)))

(assert (=> bs!462626 (= (dynLambda!12126 lambda!89593 (h!33563 l!9164)) (validRegex!2736 (h!33563 l!9164)))))

(assert (=> bs!462626 m!2791363))

(assert (=> b!2391797 d!698364))

(check-sat (not b!2391699) (not b!2391691) (not bm!145663) (not b!2392061) (not b!2391932) (not b!2392070) (not d!698318) (not b!2392034) (not b!2392054) (not b!2392104) (not b!2392111) (not b!2391914) (not b!2392107) (not d!698334) (not bm!145658) (not b!2392062) (not b!2392069) (not b!2391986) (not d!698238) (not b!2391903) (not b!2392072) (not b!2391941) (not b!2391591) (not b!2392116) (not b!2391971) (not d!698282) (not b!2391967) (not b!2392063) (not b!2391962) (not b!2391761) (not b!2391909) (not b!2392090) (not b!2391988) (not b!2391963) (not d!698350) (not b!2392060) (not b!2392055) (not b!2392066) (not b!2391990) (not b!2391951) (not b!2392065) (not d!698358) (not b!2391586) (not bm!145653) tp_is_empty!11435 (not b!2391969) (not b!2392097) (not d!698338) (not d!698310) (not b!2391991) (not bm!145664) (not b!2391958) (not b!2391950) (not b!2392052) (not b!2391693) (not b!2391910) (not b!2391933) (not b!2391928) (not b!2392115) (not d!698328) (not b!2391759) (not b!2392118) (not d!698324) (not d!698270) (not b!2392074) (not bm!145654) (not b_lambda!74209) (not b!2392044) (not b!2392119) (not b!2392088) (not b!2392120) (not d!698356) (not b!2391947) (not bm!145652) (not b!2391929) (not b!2392048) (not b!2392075) (not b!2392071) (not b!2391758) (not b!2391590) (not b!2392112) (not bm!145657) (not d!698332) (not b!2392106) (not b!2392046) (not d!698320) (not d!698348) (not b!2391957) (not bm!145641) (not b!2392089) (not b!2391987) (not b!2391966) (not bm!145665) (not b!2392098) (not b!2392047) (not b!2391763) (not b!2392114) (not b!2391964) (not b!2391588) (not b!2391949) (not b!2391996) (not b!2391911) (not bs!462626) (not b!2392099) (not d!698312) (not d!698316) (not b!2391700) (not b!2391692) (not b!2391985) (not b!2391585) (not d!698330) (not b!2391918) (not b!2391798) (not d!698336) (not d!698322) (not b!2391587) (not b!2391934) (not b!2391940) (not b!2391916) (not d!698362) (not d!698314) (not b!2392108) (not b!2392095) (not bm!145655) (not b!2391754) (not b!2391913) (not b!2391697) (not b!2392110) (not d!698360) (not b!2391955) (not b!2391755) (not d!698236) (not b!2391938) (not b!2391756))
(check-sat)
