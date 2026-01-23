; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!664028 () Bool)

(assert start!664028)

(declare-fun b!6884451 () Bool)

(assert (=> b!6884451 true))

(assert (=> b!6884451 true))

(assert (=> b!6884451 true))

(declare-fun lambda!389788 () Int)

(declare-fun lambda!389787 () Int)

(assert (=> b!6884451 (not (= lambda!389788 lambda!389787))))

(assert (=> b!6884451 true))

(assert (=> b!6884451 true))

(assert (=> b!6884451 true))

(declare-fun bs!1838440 () Bool)

(declare-fun b!6884466 () Bool)

(assert (= bs!1838440 (and b!6884466 b!6884451)))

(declare-datatypes ((C!33826 0))(
  ( (C!33827 (val!26615 Int)) )
))
(declare-datatypes ((Regex!16778 0))(
  ( (ElementMatch!16778 (c!1280498 C!33826)) (Concat!25623 (regOne!34068 Regex!16778) (regTwo!34068 Regex!16778)) (EmptyExpr!16778) (Star!16778 (reg!17107 Regex!16778)) (EmptyLang!16778) (Union!16778 (regOne!34069 Regex!16778) (regTwo!34069 Regex!16778)) )
))
(declare-fun r1!6342 () Regex!16778)

(declare-fun lt!2460495 () Regex!16778)

(declare-fun r3!135 () Regex!16778)

(declare-datatypes ((List!66535 0))(
  ( (Nil!66411) (Cons!66411 (h!72859 C!33826) (t!380278 List!66535)) )
))
(declare-datatypes ((tuple2!67302 0))(
  ( (tuple2!67303 (_1!36954 List!66535) (_2!36954 List!66535)) )
))
(declare-fun lt!2460490 () tuple2!67302)

(declare-fun s!14361 () List!66535)

(declare-fun r2!6280 () Regex!16778)

(declare-fun lambda!389789 () Int)

(assert (=> bs!1838440 (= (and (= (_1!36954 lt!2460490) s!14361) (= r1!6342 lt!2460495) (= r2!6280 r3!135)) (= lambda!389789 lambda!389787))))

(assert (=> bs!1838440 (not (= lambda!389789 lambda!389788))))

(assert (=> b!6884466 true))

(assert (=> b!6884466 true))

(assert (=> b!6884466 true))

(declare-fun lambda!389790 () Int)

(assert (=> bs!1838440 (not (= lambda!389790 lambda!389787))))

(assert (=> bs!1838440 (= (and (= (_1!36954 lt!2460490) s!14361) (= r1!6342 lt!2460495) (= r2!6280 r3!135)) (= lambda!389790 lambda!389788))))

(assert (=> b!6884466 (not (= lambda!389790 lambda!389789))))

(assert (=> b!6884466 true))

(assert (=> b!6884466 true))

(assert (=> b!6884466 true))

(declare-fun b!6884448 () Bool)

(declare-fun e!4148230 () Bool)

(declare-fun tp!1893748 () Bool)

(declare-fun tp!1893744 () Bool)

(assert (=> b!6884448 (= e!4148230 (and tp!1893748 tp!1893744))))

(declare-fun b!6884449 () Bool)

(declare-fun e!4148231 () Bool)

(declare-fun tp!1893751 () Bool)

(declare-fun tp!1893738 () Bool)

(assert (=> b!6884449 (= e!4148231 (and tp!1893751 tp!1893738))))

(declare-fun b!6884450 () Bool)

(declare-fun res!2806405 () Bool)

(declare-fun e!4148232 () Bool)

(assert (=> b!6884450 (=> (not res!2806405) (not e!4148232))))

(declare-fun validRegex!8486 (Regex!16778) Bool)

(assert (=> b!6884450 (= res!2806405 (validRegex!8486 r2!6280))))

(declare-fun e!4148229 () Bool)

(declare-fun e!4148227 () Bool)

(assert (=> b!6884451 (= e!4148229 e!4148227)))

(declare-fun res!2806407 () Bool)

(assert (=> b!6884451 (=> res!2806407 e!4148227)))

(declare-fun lt!2460489 () Bool)

(assert (=> b!6884451 (= res!2806407 (not lt!2460489))))

(declare-fun matchRSpec!3841 (Regex!16778 List!66535) Bool)

(assert (=> b!6884451 (= lt!2460489 (matchRSpec!3841 lt!2460495 (_1!36954 lt!2460490)))))

(declare-fun matchR!8923 (Regex!16778 List!66535) Bool)

(assert (=> b!6884451 (= lt!2460489 (matchR!8923 lt!2460495 (_1!36954 lt!2460490)))))

(declare-datatypes ((Unit!160276 0))(
  ( (Unit!160277) )
))
(declare-fun lt!2460485 () Unit!160276)

(declare-fun mainMatchTheorem!3841 (Regex!16778 List!66535) Unit!160276)

(assert (=> b!6884451 (= lt!2460485 (mainMatchTheorem!3841 lt!2460495 (_1!36954 lt!2460490)))))

(declare-datatypes ((Option!16563 0))(
  ( (None!16562) (Some!16562 (v!52834 tuple2!67302)) )
))
(declare-fun lt!2460491 () Option!16563)

(declare-fun get!23130 (Option!16563) tuple2!67302)

(assert (=> b!6884451 (= lt!2460490 (get!23130 lt!2460491))))

(declare-fun Exists!3790 (Int) Bool)

(assert (=> b!6884451 (= (Exists!3790 lambda!389787) (Exists!3790 lambda!389788))))

(declare-fun lt!2460482 () Unit!160276)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2269 (Regex!16778 Regex!16778 List!66535) Unit!160276)

(assert (=> b!6884451 (= lt!2460482 (lemmaExistCutMatchRandMatchRSpecEquivalent!2269 lt!2460495 r3!135 s!14361))))

(declare-fun isDefined!13266 (Option!16563) Bool)

(assert (=> b!6884451 (= (isDefined!13266 lt!2460491) (Exists!3790 lambda!389787))))

(declare-fun findConcatSeparation!2977 (Regex!16778 Regex!16778 List!66535 List!66535 List!66535) Option!16563)

(assert (=> b!6884451 (= lt!2460491 (findConcatSeparation!2977 lt!2460495 r3!135 Nil!66411 s!14361 s!14361))))

(declare-fun lt!2460484 () Unit!160276)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2741 (Regex!16778 Regex!16778 List!66535) Unit!160276)

(assert (=> b!6884451 (= lt!2460484 (lemmaFindConcatSeparationEquivalentToExists!2741 lt!2460495 r3!135 s!14361))))

(declare-fun b!6884452 () Bool)

(declare-fun tp_is_empty!42781 () Bool)

(assert (=> b!6884452 (= e!4148230 tp_is_empty!42781)))

(declare-fun res!2806410 () Bool)

(assert (=> start!664028 (=> (not res!2806410) (not e!4148232))))

(assert (=> start!664028 (= res!2806410 (validRegex!8486 r1!6342))))

(assert (=> start!664028 e!4148232))

(declare-fun e!4148233 () Bool)

(assert (=> start!664028 e!4148233))

(assert (=> start!664028 e!4148230))

(assert (=> start!664028 e!4148231))

(declare-fun e!4148228 () Bool)

(assert (=> start!664028 e!4148228))

(declare-fun b!6884453 () Bool)

(assert (=> b!6884453 (= e!4148231 tp_is_empty!42781)))

(declare-fun b!6884454 () Bool)

(declare-fun tp!1893750 () Bool)

(assert (=> b!6884454 (= e!4148231 tp!1893750)))

(declare-fun b!6884455 () Bool)

(declare-fun res!2806406 () Bool)

(assert (=> b!6884455 (=> (not res!2806406) (not e!4148232))))

(assert (=> b!6884455 (= res!2806406 (validRegex!8486 r3!135))))

(declare-fun b!6884456 () Bool)

(declare-fun tp!1893736 () Bool)

(assert (=> b!6884456 (= e!4148228 (and tp_is_empty!42781 tp!1893736))))

(declare-fun b!6884457 () Bool)

(declare-fun tp!1893740 () Bool)

(assert (=> b!6884457 (= e!4148233 tp!1893740)))

(declare-fun b!6884458 () Bool)

(assert (=> b!6884458 (= e!4148233 tp_is_empty!42781)))

(declare-fun b!6884459 () Bool)

(declare-fun tp!1893743 () Bool)

(assert (=> b!6884459 (= e!4148230 tp!1893743)))

(declare-fun b!6884460 () Bool)

(declare-fun res!2806409 () Bool)

(assert (=> b!6884460 (=> res!2806409 e!4148227)))

(assert (=> b!6884460 (= res!2806409 (not (matchR!8923 r3!135 (_2!36954 lt!2460490))))))

(declare-fun b!6884461 () Bool)

(declare-fun tp!1893749 () Bool)

(declare-fun tp!1893739 () Bool)

(assert (=> b!6884461 (= e!4148233 (and tp!1893749 tp!1893739))))

(declare-fun b!6884462 () Bool)

(declare-fun tp!1893746 () Bool)

(declare-fun tp!1893741 () Bool)

(assert (=> b!6884462 (= e!4148231 (and tp!1893746 tp!1893741))))

(declare-fun b!6884463 () Bool)

(declare-fun tp!1893742 () Bool)

(declare-fun tp!1893745 () Bool)

(assert (=> b!6884463 (= e!4148233 (and tp!1893742 tp!1893745))))

(declare-fun b!6884464 () Bool)

(assert (=> b!6884464 (= e!4148232 (not e!4148229))))

(declare-fun res!2806408 () Bool)

(assert (=> b!6884464 (=> res!2806408 e!4148229)))

(declare-fun lt!2460493 () Bool)

(assert (=> b!6884464 (= res!2806408 (not lt!2460493))))

(declare-fun lt!2460492 () Regex!16778)

(assert (=> b!6884464 (= (matchR!8923 lt!2460492 s!14361) (matchRSpec!3841 lt!2460492 s!14361))))

(declare-fun lt!2460486 () Unit!160276)

(assert (=> b!6884464 (= lt!2460486 (mainMatchTheorem!3841 lt!2460492 s!14361))))

(declare-fun lt!2460496 () Regex!16778)

(assert (=> b!6884464 (= lt!2460493 (matchRSpec!3841 lt!2460496 s!14361))))

(assert (=> b!6884464 (= lt!2460493 (matchR!8923 lt!2460496 s!14361))))

(declare-fun lt!2460487 () Unit!160276)

(assert (=> b!6884464 (= lt!2460487 (mainMatchTheorem!3841 lt!2460496 s!14361))))

(assert (=> b!6884464 (= lt!2460492 (Concat!25623 r1!6342 (Concat!25623 r2!6280 r3!135)))))

(assert (=> b!6884464 (= lt!2460496 (Concat!25623 lt!2460495 r3!135))))

(assert (=> b!6884464 (= lt!2460495 (Concat!25623 r1!6342 r2!6280))))

(declare-fun b!6884465 () Bool)

(declare-fun tp!1893737 () Bool)

(declare-fun tp!1893747 () Bool)

(assert (=> b!6884465 (= e!4148230 (and tp!1893737 tp!1893747))))

(declare-fun lt!2460488 () Bool)

(assert (=> b!6884466 (= e!4148227 lt!2460488)))

(assert (=> b!6884466 (= (Exists!3790 lambda!389789) (Exists!3790 lambda!389790))))

(declare-fun lt!2460483 () Unit!160276)

(assert (=> b!6884466 (= lt!2460483 (lemmaExistCutMatchRandMatchRSpecEquivalent!2269 r1!6342 r2!6280 (_1!36954 lt!2460490)))))

(assert (=> b!6884466 (= lt!2460488 (Exists!3790 lambda!389789))))

(assert (=> b!6884466 (= lt!2460488 (isDefined!13266 (findConcatSeparation!2977 r1!6342 r2!6280 Nil!66411 (_1!36954 lt!2460490) (_1!36954 lt!2460490))))))

(declare-fun lt!2460494 () Unit!160276)

(assert (=> b!6884466 (= lt!2460494 (lemmaFindConcatSeparationEquivalentToExists!2741 r1!6342 r2!6280 (_1!36954 lt!2460490)))))

(assert (= (and start!664028 res!2806410) b!6884450))

(assert (= (and b!6884450 res!2806405) b!6884455))

(assert (= (and b!6884455 res!2806406) b!6884464))

(assert (= (and b!6884464 (not res!2806408)) b!6884451))

(assert (= (and b!6884451 (not res!2806407)) b!6884460))

(assert (= (and b!6884460 (not res!2806409)) b!6884466))

(assert (= (and start!664028 (is-ElementMatch!16778 r1!6342)) b!6884458))

(assert (= (and start!664028 (is-Concat!25623 r1!6342)) b!6884463))

(assert (= (and start!664028 (is-Star!16778 r1!6342)) b!6884457))

(assert (= (and start!664028 (is-Union!16778 r1!6342)) b!6884461))

(assert (= (and start!664028 (is-ElementMatch!16778 r2!6280)) b!6884452))

(assert (= (and start!664028 (is-Concat!25623 r2!6280)) b!6884448))

(assert (= (and start!664028 (is-Star!16778 r2!6280)) b!6884459))

(assert (= (and start!664028 (is-Union!16778 r2!6280)) b!6884465))

(assert (= (and start!664028 (is-ElementMatch!16778 r3!135)) b!6884453))

(assert (= (and start!664028 (is-Concat!25623 r3!135)) b!6884462))

(assert (= (and start!664028 (is-Star!16778 r3!135)) b!6884454))

(assert (= (and start!664028 (is-Union!16778 r3!135)) b!6884449))

(assert (= (and start!664028 (is-Cons!66411 s!14361)) b!6884456))

(declare-fun m!7607988 () Bool)

(assert (=> b!6884466 m!7607988))

(declare-fun m!7607990 () Bool)

(assert (=> b!6884466 m!7607990))

(declare-fun m!7607992 () Bool)

(assert (=> b!6884466 m!7607992))

(declare-fun m!7607994 () Bool)

(assert (=> b!6884466 m!7607994))

(assert (=> b!6884466 m!7607992))

(declare-fun m!7607996 () Bool)

(assert (=> b!6884466 m!7607996))

(assert (=> b!6884466 m!7607988))

(declare-fun m!7607998 () Bool)

(assert (=> b!6884466 m!7607998))

(declare-fun m!7608000 () Bool)

(assert (=> b!6884460 m!7608000))

(declare-fun m!7608002 () Bool)

(assert (=> start!664028 m!7608002))

(declare-fun m!7608004 () Bool)

(assert (=> b!6884464 m!7608004))

(declare-fun m!7608006 () Bool)

(assert (=> b!6884464 m!7608006))

(declare-fun m!7608008 () Bool)

(assert (=> b!6884464 m!7608008))

(declare-fun m!7608010 () Bool)

(assert (=> b!6884464 m!7608010))

(declare-fun m!7608012 () Bool)

(assert (=> b!6884464 m!7608012))

(declare-fun m!7608014 () Bool)

(assert (=> b!6884464 m!7608014))

(declare-fun m!7608016 () Bool)

(assert (=> b!6884451 m!7608016))

(declare-fun m!7608018 () Bool)

(assert (=> b!6884451 m!7608018))

(declare-fun m!7608020 () Bool)

(assert (=> b!6884451 m!7608020))

(declare-fun m!7608022 () Bool)

(assert (=> b!6884451 m!7608022))

(assert (=> b!6884451 m!7608018))

(declare-fun m!7608024 () Bool)

(assert (=> b!6884451 m!7608024))

(declare-fun m!7608026 () Bool)

(assert (=> b!6884451 m!7608026))

(declare-fun m!7608028 () Bool)

(assert (=> b!6884451 m!7608028))

(declare-fun m!7608030 () Bool)

(assert (=> b!6884451 m!7608030))

(declare-fun m!7608032 () Bool)

(assert (=> b!6884451 m!7608032))

(declare-fun m!7608034 () Bool)

(assert (=> b!6884451 m!7608034))

(declare-fun m!7608036 () Bool)

(assert (=> b!6884455 m!7608036))

(declare-fun m!7608038 () Bool)

(assert (=> b!6884450 m!7608038))

(push 1)

(assert (not b!6884451))

(assert (not b!6884459))

(assert (not b!6884463))

(assert (not b!6884460))

(assert tp_is_empty!42781)

(assert (not b!6884449))

(assert (not b!6884448))

(assert (not b!6884457))

(assert (not b!6884454))

(assert (not b!6884462))

(assert (not b!6884461))

(assert (not start!664028))

(assert (not b!6884466))

(assert (not b!6884456))

(assert (not b!6884465))

(assert (not b!6884464))

(assert (not b!6884455))

(assert (not b!6884450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2160341 () Bool)

(assert (=> d!2160341 (= (matchR!8923 lt!2460496 s!14361) (matchRSpec!3841 lt!2460496 s!14361))))

(declare-fun lt!2460544 () Unit!160276)

(declare-fun choose!51274 (Regex!16778 List!66535) Unit!160276)

(assert (=> d!2160341 (= lt!2460544 (choose!51274 lt!2460496 s!14361))))

(assert (=> d!2160341 (validRegex!8486 lt!2460496)))

(assert (=> d!2160341 (= (mainMatchTheorem!3841 lt!2460496 s!14361) lt!2460544)))

(declare-fun bs!1838442 () Bool)

(assert (= bs!1838442 d!2160341))

(assert (=> bs!1838442 m!7608008))

(assert (=> bs!1838442 m!7608014))

(declare-fun m!7608092 () Bool)

(assert (=> bs!1838442 m!7608092))

(declare-fun m!7608094 () Bool)

(assert (=> bs!1838442 m!7608094))

(assert (=> b!6884464 d!2160341))

(declare-fun bm!626667 () Bool)

(declare-fun call!626672 () Bool)

(declare-fun isEmpty!38680 (List!66535) Bool)

(assert (=> bm!626667 (= call!626672 (isEmpty!38680 s!14361))))

(declare-fun d!2160343 () Bool)

(declare-fun e!4148282 () Bool)

(assert (=> d!2160343 e!4148282))

(declare-fun c!1280507 () Bool)

(assert (=> d!2160343 (= c!1280507 (is-EmptyExpr!16778 lt!2460492))))

(declare-fun lt!2460547 () Bool)

(declare-fun e!4148286 () Bool)

(assert (=> d!2160343 (= lt!2460547 e!4148286)))

(declare-fun c!1280506 () Bool)

(assert (=> d!2160343 (= c!1280506 (isEmpty!38680 s!14361))))

(assert (=> d!2160343 (validRegex!8486 lt!2460492)))

(assert (=> d!2160343 (= (matchR!8923 lt!2460492 s!14361) lt!2460547)))

(declare-fun b!6884588 () Bool)

(declare-fun e!4148287 () Bool)

(declare-fun head!13813 (List!66535) C!33826)

(assert (=> b!6884588 (= e!4148287 (not (= (head!13813 s!14361) (c!1280498 lt!2460492))))))

(declare-fun b!6884589 () Bool)

(declare-fun res!2806471 () Bool)

(assert (=> b!6884589 (=> res!2806471 e!4148287)))

(declare-fun tail!12865 (List!66535) List!66535)

(assert (=> b!6884589 (= res!2806471 (not (isEmpty!38680 (tail!12865 s!14361))))))

(declare-fun b!6884590 () Bool)

(declare-fun e!4148281 () Bool)

(assert (=> b!6884590 (= e!4148281 e!4148287)))

(declare-fun res!2806472 () Bool)

(assert (=> b!6884590 (=> res!2806472 e!4148287)))

(assert (=> b!6884590 (= res!2806472 call!626672)))

(declare-fun b!6884591 () Bool)

(declare-fun res!2806470 () Bool)

(declare-fun e!4148284 () Bool)

(assert (=> b!6884591 (=> (not res!2806470) (not e!4148284))))

(assert (=> b!6884591 (= res!2806470 (not call!626672))))

(declare-fun b!6884592 () Bool)

(declare-fun e!4148285 () Bool)

(assert (=> b!6884592 (= e!4148285 e!4148281)))

(declare-fun res!2806476 () Bool)

(assert (=> b!6884592 (=> (not res!2806476) (not e!4148281))))

(assert (=> b!6884592 (= res!2806476 (not lt!2460547))))

(declare-fun b!6884593 () Bool)

(assert (=> b!6884593 (= e!4148284 (= (head!13813 s!14361) (c!1280498 lt!2460492)))))

(declare-fun b!6884594 () Bool)

(declare-fun res!2806473 () Bool)

(assert (=> b!6884594 (=> res!2806473 e!4148285)))

(assert (=> b!6884594 (= res!2806473 (not (is-ElementMatch!16778 lt!2460492)))))

(declare-fun e!4148283 () Bool)

(assert (=> b!6884594 (= e!4148283 e!4148285)))

(declare-fun b!6884595 () Bool)

(declare-fun res!2806474 () Bool)

(assert (=> b!6884595 (=> res!2806474 e!4148285)))

(assert (=> b!6884595 (= res!2806474 e!4148284)))

(declare-fun res!2806475 () Bool)

(assert (=> b!6884595 (=> (not res!2806475) (not e!4148284))))

(assert (=> b!6884595 (= res!2806475 lt!2460547)))

(declare-fun b!6884596 () Bool)

(assert (=> b!6884596 (= e!4148282 e!4148283)))

(declare-fun c!1280508 () Bool)

(assert (=> b!6884596 (= c!1280508 (is-EmptyLang!16778 lt!2460492))))

(declare-fun b!6884597 () Bool)

(assert (=> b!6884597 (= e!4148283 (not lt!2460547))))

(declare-fun b!6884598 () Bool)

(declare-fun res!2806469 () Bool)

(assert (=> b!6884598 (=> (not res!2806469) (not e!4148284))))

(assert (=> b!6884598 (= res!2806469 (isEmpty!38680 (tail!12865 s!14361)))))

(declare-fun b!6884599 () Bool)

(assert (=> b!6884599 (= e!4148282 (= lt!2460547 call!626672))))

(declare-fun b!6884600 () Bool)

(declare-fun derivativeStep!5360 (Regex!16778 C!33826) Regex!16778)

(assert (=> b!6884600 (= e!4148286 (matchR!8923 (derivativeStep!5360 lt!2460492 (head!13813 s!14361)) (tail!12865 s!14361)))))

(declare-fun b!6884601 () Bool)

(declare-fun nullable!6681 (Regex!16778) Bool)

(assert (=> b!6884601 (= e!4148286 (nullable!6681 lt!2460492))))

(assert (= (and d!2160343 c!1280506) b!6884601))

(assert (= (and d!2160343 (not c!1280506)) b!6884600))

(assert (= (and d!2160343 c!1280507) b!6884599))

(assert (= (and d!2160343 (not c!1280507)) b!6884596))

(assert (= (and b!6884596 c!1280508) b!6884597))

(assert (= (and b!6884596 (not c!1280508)) b!6884594))

(assert (= (and b!6884594 (not res!2806473)) b!6884595))

(assert (= (and b!6884595 res!2806475) b!6884591))

(assert (= (and b!6884591 res!2806470) b!6884598))

(assert (= (and b!6884598 res!2806469) b!6884593))

(assert (= (and b!6884595 (not res!2806474)) b!6884592))

(assert (= (and b!6884592 res!2806476) b!6884590))

(assert (= (and b!6884590 (not res!2806472)) b!6884589))

(assert (= (and b!6884589 (not res!2806471)) b!6884588))

(assert (= (or b!6884599 b!6884590 b!6884591) bm!626667))

(declare-fun m!7608096 () Bool)

(assert (=> b!6884593 m!7608096))

(declare-fun m!7608098 () Bool)

(assert (=> b!6884601 m!7608098))

(declare-fun m!7608100 () Bool)

(assert (=> b!6884589 m!7608100))

(assert (=> b!6884589 m!7608100))

(declare-fun m!7608102 () Bool)

(assert (=> b!6884589 m!7608102))

(declare-fun m!7608104 () Bool)

(assert (=> d!2160343 m!7608104))

(declare-fun m!7608106 () Bool)

(assert (=> d!2160343 m!7608106))

(assert (=> b!6884600 m!7608096))

(assert (=> b!6884600 m!7608096))

(declare-fun m!7608108 () Bool)

(assert (=> b!6884600 m!7608108))

(assert (=> b!6884600 m!7608100))

(assert (=> b!6884600 m!7608108))

(assert (=> b!6884600 m!7608100))

(declare-fun m!7608110 () Bool)

(assert (=> b!6884600 m!7608110))

(assert (=> b!6884598 m!7608100))

(assert (=> b!6884598 m!7608100))

(assert (=> b!6884598 m!7608102))

(assert (=> b!6884588 m!7608096))

(assert (=> bm!626667 m!7608104))

(assert (=> b!6884464 d!2160343))

(declare-fun bs!1838443 () Bool)

(declare-fun b!6884663 () Bool)

(assert (= bs!1838443 (and b!6884663 b!6884451)))

(declare-fun lambda!389811 () Int)

(assert (=> bs!1838443 (not (= lambda!389811 lambda!389787))))

(assert (=> bs!1838443 (not (= lambda!389811 lambda!389788))))

(declare-fun bs!1838444 () Bool)

(assert (= bs!1838444 (and b!6884663 b!6884466)))

(assert (=> bs!1838444 (not (= lambda!389811 lambda!389789))))

(assert (=> bs!1838444 (not (= lambda!389811 lambda!389790))))

(assert (=> b!6884663 true))

(assert (=> b!6884663 true))

(declare-fun bs!1838445 () Bool)

(declare-fun b!6884668 () Bool)

(assert (= bs!1838445 (and b!6884668 b!6884466)))

(declare-fun lambda!389812 () Int)

(assert (=> bs!1838445 (= (and (= s!14361 (_1!36954 lt!2460490)) (= (regOne!34068 lt!2460496) r1!6342) (= (regTwo!34068 lt!2460496) r2!6280)) (= lambda!389812 lambda!389790))))

(declare-fun bs!1838446 () Bool)

(assert (= bs!1838446 (and b!6884668 b!6884451)))

(assert (=> bs!1838446 (not (= lambda!389812 lambda!389787))))

(assert (=> bs!1838445 (not (= lambda!389812 lambda!389789))))

(assert (=> bs!1838446 (= (and (= (regOne!34068 lt!2460496) lt!2460495) (= (regTwo!34068 lt!2460496) r3!135)) (= lambda!389812 lambda!389788))))

(declare-fun bs!1838447 () Bool)

(assert (= bs!1838447 (and b!6884668 b!6884663)))

(assert (=> bs!1838447 (not (= lambda!389812 lambda!389811))))

(assert (=> b!6884668 true))

(assert (=> b!6884668 true))

(declare-fun b!6884661 () Bool)

(declare-fun res!2806510 () Bool)

(declare-fun e!4148332 () Bool)

(assert (=> b!6884661 (=> res!2806510 e!4148332)))

(declare-fun call!626687 () Bool)

(assert (=> b!6884661 (= res!2806510 call!626687)))

(declare-fun e!4148328 () Bool)

(assert (=> b!6884661 (= e!4148328 e!4148332)))

(declare-fun b!6884662 () Bool)

(declare-fun c!1280526 () Bool)

(assert (=> b!6884662 (= c!1280526 (is-ElementMatch!16778 lt!2460496))))

(declare-fun e!4148330 () Bool)

(declare-fun e!4148333 () Bool)

(assert (=> b!6884662 (= e!4148330 e!4148333)))

(declare-fun call!626686 () Bool)

(assert (=> b!6884663 (= e!4148332 call!626686)))

(declare-fun b!6884664 () Bool)

(declare-fun e!4148331 () Bool)

(assert (=> b!6884664 (= e!4148331 e!4148330)))

(declare-fun res!2806509 () Bool)

(assert (=> b!6884664 (= res!2806509 (not (is-EmptyLang!16778 lt!2460496)))))

(assert (=> b!6884664 (=> (not res!2806509) (not e!4148330))))

(declare-fun d!2160347 () Bool)

(declare-fun c!1280525 () Bool)

(assert (=> d!2160347 (= c!1280525 (is-EmptyExpr!16778 lt!2460496))))

(assert (=> d!2160347 (= (matchRSpec!3841 lt!2460496 s!14361) e!4148331)))

(declare-fun c!1280523 () Bool)

(declare-fun bm!626681 () Bool)

(assert (=> bm!626681 (= call!626686 (Exists!3790 (ite c!1280523 lambda!389811 lambda!389812)))))

(declare-fun b!6884665 () Bool)

(assert (=> b!6884665 (= e!4148333 (= s!14361 (Cons!66411 (c!1280498 lt!2460496) Nil!66411)))))

(declare-fun b!6884666 () Bool)

(declare-fun e!4148329 () Bool)

(assert (=> b!6884666 (= e!4148329 (matchRSpec!3841 (regTwo!34069 lt!2460496) s!14361))))

(declare-fun b!6884667 () Bool)

(assert (=> b!6884667 (= e!4148331 call!626687)))

(assert (=> b!6884668 (= e!4148328 call!626686)))

(declare-fun b!6884669 () Bool)

(declare-fun e!4148327 () Bool)

(assert (=> b!6884669 (= e!4148327 e!4148329)))

(declare-fun res!2806508 () Bool)

(assert (=> b!6884669 (= res!2806508 (matchRSpec!3841 (regOne!34069 lt!2460496) s!14361))))

(assert (=> b!6884669 (=> res!2806508 e!4148329)))

(declare-fun b!6884670 () Bool)

(assert (=> b!6884670 (= e!4148327 e!4148328)))

(assert (=> b!6884670 (= c!1280523 (is-Star!16778 lt!2460496))))

(declare-fun b!6884671 () Bool)

(declare-fun c!1280524 () Bool)

(assert (=> b!6884671 (= c!1280524 (is-Union!16778 lt!2460496))))

(assert (=> b!6884671 (= e!4148333 e!4148327)))

(declare-fun bm!626682 () Bool)

(assert (=> bm!626682 (= call!626687 (isEmpty!38680 s!14361))))

(assert (= (and d!2160347 c!1280525) b!6884667))

(assert (= (and d!2160347 (not c!1280525)) b!6884664))

(assert (= (and b!6884664 res!2806509) b!6884662))

(assert (= (and b!6884662 c!1280526) b!6884665))

(assert (= (and b!6884662 (not c!1280526)) b!6884671))

(assert (= (and b!6884671 c!1280524) b!6884669))

(assert (= (and b!6884671 (not c!1280524)) b!6884670))

(assert (= (and b!6884669 (not res!2806508)) b!6884666))

(assert (= (and b!6884670 c!1280523) b!6884661))

(assert (= (and b!6884670 (not c!1280523)) b!6884668))

(assert (= (and b!6884661 (not res!2806510)) b!6884663))

(assert (= (or b!6884663 b!6884668) bm!626681))

(assert (= (or b!6884667 b!6884661) bm!626682))

(declare-fun m!7608118 () Bool)

(assert (=> bm!626681 m!7608118))

(declare-fun m!7608120 () Bool)

(assert (=> b!6884666 m!7608120))

(declare-fun m!7608122 () Bool)

(assert (=> b!6884669 m!7608122))

(assert (=> bm!626682 m!7608104))

(assert (=> b!6884464 d!2160347))

(declare-fun bm!626683 () Bool)

(declare-fun call!626688 () Bool)

(assert (=> bm!626683 (= call!626688 (isEmpty!38680 s!14361))))

(declare-fun d!2160351 () Bool)

(declare-fun e!4148335 () Bool)

(assert (=> d!2160351 e!4148335))

(declare-fun c!1280528 () Bool)

(assert (=> d!2160351 (= c!1280528 (is-EmptyExpr!16778 lt!2460496))))

(declare-fun lt!2460548 () Bool)

(declare-fun e!4148339 () Bool)

(assert (=> d!2160351 (= lt!2460548 e!4148339)))

(declare-fun c!1280527 () Bool)

(assert (=> d!2160351 (= c!1280527 (isEmpty!38680 s!14361))))

(assert (=> d!2160351 (validRegex!8486 lt!2460496)))

(assert (=> d!2160351 (= (matchR!8923 lt!2460496 s!14361) lt!2460548)))

(declare-fun b!6884672 () Bool)

(declare-fun e!4148340 () Bool)

(assert (=> b!6884672 (= e!4148340 (not (= (head!13813 s!14361) (c!1280498 lt!2460496))))))

(declare-fun b!6884673 () Bool)

(declare-fun res!2806513 () Bool)

(assert (=> b!6884673 (=> res!2806513 e!4148340)))

(assert (=> b!6884673 (= res!2806513 (not (isEmpty!38680 (tail!12865 s!14361))))))

(declare-fun b!6884674 () Bool)

(declare-fun e!4148334 () Bool)

(assert (=> b!6884674 (= e!4148334 e!4148340)))

(declare-fun res!2806514 () Bool)

(assert (=> b!6884674 (=> res!2806514 e!4148340)))

(assert (=> b!6884674 (= res!2806514 call!626688)))

(declare-fun b!6884675 () Bool)

(declare-fun res!2806512 () Bool)

(declare-fun e!4148337 () Bool)

(assert (=> b!6884675 (=> (not res!2806512) (not e!4148337))))

(assert (=> b!6884675 (= res!2806512 (not call!626688))))

(declare-fun b!6884676 () Bool)

(declare-fun e!4148338 () Bool)

(assert (=> b!6884676 (= e!4148338 e!4148334)))

(declare-fun res!2806518 () Bool)

(assert (=> b!6884676 (=> (not res!2806518) (not e!4148334))))

(assert (=> b!6884676 (= res!2806518 (not lt!2460548))))

(declare-fun b!6884677 () Bool)

(assert (=> b!6884677 (= e!4148337 (= (head!13813 s!14361) (c!1280498 lt!2460496)))))

(declare-fun b!6884678 () Bool)

(declare-fun res!2806515 () Bool)

(assert (=> b!6884678 (=> res!2806515 e!4148338)))

(assert (=> b!6884678 (= res!2806515 (not (is-ElementMatch!16778 lt!2460496)))))

(declare-fun e!4148336 () Bool)

(assert (=> b!6884678 (= e!4148336 e!4148338)))

(declare-fun b!6884679 () Bool)

(declare-fun res!2806516 () Bool)

(assert (=> b!6884679 (=> res!2806516 e!4148338)))

(assert (=> b!6884679 (= res!2806516 e!4148337)))

(declare-fun res!2806517 () Bool)

(assert (=> b!6884679 (=> (not res!2806517) (not e!4148337))))

(assert (=> b!6884679 (= res!2806517 lt!2460548)))

(declare-fun b!6884680 () Bool)

(assert (=> b!6884680 (= e!4148335 e!4148336)))

(declare-fun c!1280529 () Bool)

(assert (=> b!6884680 (= c!1280529 (is-EmptyLang!16778 lt!2460496))))

(declare-fun b!6884681 () Bool)

(assert (=> b!6884681 (= e!4148336 (not lt!2460548))))

(declare-fun b!6884682 () Bool)

(declare-fun res!2806511 () Bool)

(assert (=> b!6884682 (=> (not res!2806511) (not e!4148337))))

(assert (=> b!6884682 (= res!2806511 (isEmpty!38680 (tail!12865 s!14361)))))

(declare-fun b!6884683 () Bool)

(assert (=> b!6884683 (= e!4148335 (= lt!2460548 call!626688))))

(declare-fun b!6884684 () Bool)

(assert (=> b!6884684 (= e!4148339 (matchR!8923 (derivativeStep!5360 lt!2460496 (head!13813 s!14361)) (tail!12865 s!14361)))))

(declare-fun b!6884685 () Bool)

(assert (=> b!6884685 (= e!4148339 (nullable!6681 lt!2460496))))

(assert (= (and d!2160351 c!1280527) b!6884685))

(assert (= (and d!2160351 (not c!1280527)) b!6884684))

(assert (= (and d!2160351 c!1280528) b!6884683))

(assert (= (and d!2160351 (not c!1280528)) b!6884680))

(assert (= (and b!6884680 c!1280529) b!6884681))

(assert (= (and b!6884680 (not c!1280529)) b!6884678))

(assert (= (and b!6884678 (not res!2806515)) b!6884679))

(assert (= (and b!6884679 res!2806517) b!6884675))

(assert (= (and b!6884675 res!2806512) b!6884682))

(assert (= (and b!6884682 res!2806511) b!6884677))

(assert (= (and b!6884679 (not res!2806516)) b!6884676))

(assert (= (and b!6884676 res!2806518) b!6884674))

(assert (= (and b!6884674 (not res!2806514)) b!6884673))

(assert (= (and b!6884673 (not res!2806513)) b!6884672))

(assert (= (or b!6884683 b!6884674 b!6884675) bm!626683))

(assert (=> b!6884677 m!7608096))

(declare-fun m!7608124 () Bool)

(assert (=> b!6884685 m!7608124))

(assert (=> b!6884673 m!7608100))

(assert (=> b!6884673 m!7608100))

(assert (=> b!6884673 m!7608102))

(assert (=> d!2160351 m!7608104))

(assert (=> d!2160351 m!7608094))

(assert (=> b!6884684 m!7608096))

(assert (=> b!6884684 m!7608096))

(declare-fun m!7608126 () Bool)

(assert (=> b!6884684 m!7608126))

(assert (=> b!6884684 m!7608100))

(assert (=> b!6884684 m!7608126))

(assert (=> b!6884684 m!7608100))

(declare-fun m!7608128 () Bool)

(assert (=> b!6884684 m!7608128))

(assert (=> b!6884682 m!7608100))

(assert (=> b!6884682 m!7608100))

(assert (=> b!6884682 m!7608102))

(assert (=> b!6884672 m!7608096))

(assert (=> bm!626683 m!7608104))

(assert (=> b!6884464 d!2160351))

(declare-fun d!2160353 () Bool)

(assert (=> d!2160353 (= (matchR!8923 lt!2460492 s!14361) (matchRSpec!3841 lt!2460492 s!14361))))

(declare-fun lt!2460549 () Unit!160276)

(assert (=> d!2160353 (= lt!2460549 (choose!51274 lt!2460492 s!14361))))

(assert (=> d!2160353 (validRegex!8486 lt!2460492)))

(assert (=> d!2160353 (= (mainMatchTheorem!3841 lt!2460492 s!14361) lt!2460549)))

(declare-fun bs!1838448 () Bool)

(assert (= bs!1838448 d!2160353))

(assert (=> bs!1838448 m!7608012))

(assert (=> bs!1838448 m!7608010))

(declare-fun m!7608130 () Bool)

(assert (=> bs!1838448 m!7608130))

(assert (=> bs!1838448 m!7608106))

(assert (=> b!6884464 d!2160353))

(declare-fun bs!1838449 () Bool)

(declare-fun b!6884688 () Bool)

(assert (= bs!1838449 (and b!6884688 b!6884668)))

(declare-fun lambda!389813 () Int)

(assert (=> bs!1838449 (not (= lambda!389813 lambda!389812))))

(declare-fun bs!1838450 () Bool)

(assert (= bs!1838450 (and b!6884688 b!6884466)))

(assert (=> bs!1838450 (not (= lambda!389813 lambda!389790))))

(declare-fun bs!1838451 () Bool)

(assert (= bs!1838451 (and b!6884688 b!6884451)))

(assert (=> bs!1838451 (not (= lambda!389813 lambda!389787))))

(assert (=> bs!1838450 (not (= lambda!389813 lambda!389789))))

(assert (=> bs!1838451 (not (= lambda!389813 lambda!389788))))

(declare-fun bs!1838452 () Bool)

(assert (= bs!1838452 (and b!6884688 b!6884663)))

(assert (=> bs!1838452 (= (and (= (reg!17107 lt!2460492) (reg!17107 lt!2460496)) (= lt!2460492 lt!2460496)) (= lambda!389813 lambda!389811))))

(assert (=> b!6884688 true))

(assert (=> b!6884688 true))

(declare-fun bs!1838453 () Bool)

(declare-fun b!6884693 () Bool)

(assert (= bs!1838453 (and b!6884693 b!6884668)))

(declare-fun lambda!389814 () Int)

(assert (=> bs!1838453 (= (and (= (regOne!34068 lt!2460492) (regOne!34068 lt!2460496)) (= (regTwo!34068 lt!2460492) (regTwo!34068 lt!2460496))) (= lambda!389814 lambda!389812))))

(declare-fun bs!1838454 () Bool)

(assert (= bs!1838454 (and b!6884693 b!6884466)))

(assert (=> bs!1838454 (= (and (= s!14361 (_1!36954 lt!2460490)) (= (regOne!34068 lt!2460492) r1!6342) (= (regTwo!34068 lt!2460492) r2!6280)) (= lambda!389814 lambda!389790))))

(declare-fun bs!1838455 () Bool)

(assert (= bs!1838455 (and b!6884693 b!6884451)))

(assert (=> bs!1838455 (not (= lambda!389814 lambda!389787))))

(declare-fun bs!1838456 () Bool)

(assert (= bs!1838456 (and b!6884693 b!6884688)))

(assert (=> bs!1838456 (not (= lambda!389814 lambda!389813))))

(assert (=> bs!1838454 (not (= lambda!389814 lambda!389789))))

(assert (=> bs!1838455 (= (and (= (regOne!34068 lt!2460492) lt!2460495) (= (regTwo!34068 lt!2460492) r3!135)) (= lambda!389814 lambda!389788))))

(declare-fun bs!1838457 () Bool)

(assert (= bs!1838457 (and b!6884693 b!6884663)))

(assert (=> bs!1838457 (not (= lambda!389814 lambda!389811))))

(assert (=> b!6884693 true))

(assert (=> b!6884693 true))

(declare-fun b!6884686 () Bool)

(declare-fun res!2806521 () Bool)

(declare-fun e!4148346 () Bool)

(assert (=> b!6884686 (=> res!2806521 e!4148346)))

(declare-fun call!626690 () Bool)

(assert (=> b!6884686 (= res!2806521 call!626690)))

(declare-fun e!4148342 () Bool)

(assert (=> b!6884686 (= e!4148342 e!4148346)))

(declare-fun b!6884687 () Bool)

(declare-fun c!1280533 () Bool)

(assert (=> b!6884687 (= c!1280533 (is-ElementMatch!16778 lt!2460492))))

(declare-fun e!4148344 () Bool)

(declare-fun e!4148347 () Bool)

(assert (=> b!6884687 (= e!4148344 e!4148347)))

(declare-fun call!626689 () Bool)

(assert (=> b!6884688 (= e!4148346 call!626689)))

(declare-fun b!6884689 () Bool)

(declare-fun e!4148345 () Bool)

(assert (=> b!6884689 (= e!4148345 e!4148344)))

(declare-fun res!2806520 () Bool)

(assert (=> b!6884689 (= res!2806520 (not (is-EmptyLang!16778 lt!2460492)))))

(assert (=> b!6884689 (=> (not res!2806520) (not e!4148344))))

(declare-fun d!2160355 () Bool)

(declare-fun c!1280532 () Bool)

(assert (=> d!2160355 (= c!1280532 (is-EmptyExpr!16778 lt!2460492))))

(assert (=> d!2160355 (= (matchRSpec!3841 lt!2460492 s!14361) e!4148345)))

(declare-fun c!1280530 () Bool)

(declare-fun bm!626684 () Bool)

(assert (=> bm!626684 (= call!626689 (Exists!3790 (ite c!1280530 lambda!389813 lambda!389814)))))

(declare-fun b!6884690 () Bool)

(assert (=> b!6884690 (= e!4148347 (= s!14361 (Cons!66411 (c!1280498 lt!2460492) Nil!66411)))))

(declare-fun b!6884691 () Bool)

(declare-fun e!4148343 () Bool)

(assert (=> b!6884691 (= e!4148343 (matchRSpec!3841 (regTwo!34069 lt!2460492) s!14361))))

(declare-fun b!6884692 () Bool)

(assert (=> b!6884692 (= e!4148345 call!626690)))

(assert (=> b!6884693 (= e!4148342 call!626689)))

(declare-fun b!6884694 () Bool)

(declare-fun e!4148341 () Bool)

(assert (=> b!6884694 (= e!4148341 e!4148343)))

(declare-fun res!2806519 () Bool)

(assert (=> b!6884694 (= res!2806519 (matchRSpec!3841 (regOne!34069 lt!2460492) s!14361))))

(assert (=> b!6884694 (=> res!2806519 e!4148343)))

(declare-fun b!6884695 () Bool)

(assert (=> b!6884695 (= e!4148341 e!4148342)))

(assert (=> b!6884695 (= c!1280530 (is-Star!16778 lt!2460492))))

(declare-fun b!6884696 () Bool)

(declare-fun c!1280531 () Bool)

(assert (=> b!6884696 (= c!1280531 (is-Union!16778 lt!2460492))))

(assert (=> b!6884696 (= e!4148347 e!4148341)))

(declare-fun bm!626685 () Bool)

(assert (=> bm!626685 (= call!626690 (isEmpty!38680 s!14361))))

(assert (= (and d!2160355 c!1280532) b!6884692))

(assert (= (and d!2160355 (not c!1280532)) b!6884689))

(assert (= (and b!6884689 res!2806520) b!6884687))

(assert (= (and b!6884687 c!1280533) b!6884690))

(assert (= (and b!6884687 (not c!1280533)) b!6884696))

(assert (= (and b!6884696 c!1280531) b!6884694))

(assert (= (and b!6884696 (not c!1280531)) b!6884695))

(assert (= (and b!6884694 (not res!2806519)) b!6884691))

(assert (= (and b!6884695 c!1280530) b!6884686))

(assert (= (and b!6884695 (not c!1280530)) b!6884693))

(assert (= (and b!6884686 (not res!2806521)) b!6884688))

(assert (= (or b!6884688 b!6884693) bm!626684))

(assert (= (or b!6884692 b!6884686) bm!626685))

(declare-fun m!7608132 () Bool)

(assert (=> bm!626684 m!7608132))

(declare-fun m!7608134 () Bool)

(assert (=> b!6884691 m!7608134))

(declare-fun m!7608136 () Bool)

(assert (=> b!6884694 m!7608136))

(assert (=> bm!626685 m!7608104))

(assert (=> b!6884464 d!2160355))

(declare-fun b!6884715 () Bool)

(declare-fun e!4148368 () Bool)

(declare-fun e!4148367 () Bool)

(assert (=> b!6884715 (= e!4148368 e!4148367)))

(declare-fun c!1280538 () Bool)

(assert (=> b!6884715 (= c!1280538 (is-Star!16778 r2!6280))))

(declare-fun bm!626692 () Bool)

(declare-fun call!626699 () Bool)

(declare-fun c!1280539 () Bool)

(assert (=> bm!626692 (= call!626699 (validRegex!8486 (ite c!1280539 (regOne!34069 r2!6280) (regTwo!34068 r2!6280))))))

(declare-fun b!6884717 () Bool)

(declare-fun res!2806535 () Bool)

(declare-fun e!4148364 () Bool)

(assert (=> b!6884717 (=> (not res!2806535) (not e!4148364))))

(assert (=> b!6884717 (= res!2806535 call!626699)))

(declare-fun e!4148365 () Bool)

(assert (=> b!6884717 (= e!4148365 e!4148364)))

(declare-fun b!6884718 () Bool)

(declare-fun res!2806533 () Bool)

(declare-fun e!4148366 () Bool)

(assert (=> b!6884718 (=> res!2806533 e!4148366)))

(assert (=> b!6884718 (= res!2806533 (not (is-Concat!25623 r2!6280)))))

(assert (=> b!6884718 (= e!4148365 e!4148366)))

(declare-fun bm!626693 () Bool)

(declare-fun call!626697 () Bool)

(declare-fun call!626698 () Bool)

(assert (=> bm!626693 (= call!626697 call!626698)))

(declare-fun b!6884719 () Bool)

(assert (=> b!6884719 (= e!4148367 e!4148365)))

(assert (=> b!6884719 (= c!1280539 (is-Union!16778 r2!6280))))

(declare-fun b!6884720 () Bool)

(assert (=> b!6884720 (= e!4148364 call!626697)))

(declare-fun d!2160357 () Bool)

(declare-fun res!2806536 () Bool)

(assert (=> d!2160357 (=> res!2806536 e!4148368)))

(assert (=> d!2160357 (= res!2806536 (is-ElementMatch!16778 r2!6280))))

(assert (=> d!2160357 (= (validRegex!8486 r2!6280) e!4148368)))

(declare-fun b!6884716 () Bool)

(declare-fun e!4148362 () Bool)

(assert (=> b!6884716 (= e!4148362 call!626699)))

(declare-fun b!6884721 () Bool)

(assert (=> b!6884721 (= e!4148366 e!4148362)))

(declare-fun res!2806532 () Bool)

(assert (=> b!6884721 (=> (not res!2806532) (not e!4148362))))

(assert (=> b!6884721 (= res!2806532 call!626697)))

(declare-fun b!6884722 () Bool)

(declare-fun e!4148363 () Bool)

(assert (=> b!6884722 (= e!4148367 e!4148363)))

(declare-fun res!2806534 () Bool)

(assert (=> b!6884722 (= res!2806534 (not (nullable!6681 (reg!17107 r2!6280))))))

(assert (=> b!6884722 (=> (not res!2806534) (not e!4148363))))

(declare-fun b!6884723 () Bool)

(assert (=> b!6884723 (= e!4148363 call!626698)))

(declare-fun bm!626694 () Bool)

(assert (=> bm!626694 (= call!626698 (validRegex!8486 (ite c!1280538 (reg!17107 r2!6280) (ite c!1280539 (regTwo!34069 r2!6280) (regOne!34068 r2!6280)))))))

(assert (= (and d!2160357 (not res!2806536)) b!6884715))

(assert (= (and b!6884715 c!1280538) b!6884722))

(assert (= (and b!6884715 (not c!1280538)) b!6884719))

(assert (= (and b!6884722 res!2806534) b!6884723))

(assert (= (and b!6884719 c!1280539) b!6884717))

(assert (= (and b!6884719 (not c!1280539)) b!6884718))

(assert (= (and b!6884717 res!2806535) b!6884720))

(assert (= (and b!6884718 (not res!2806533)) b!6884721))

(assert (= (and b!6884721 res!2806532) b!6884716))

(assert (= (or b!6884717 b!6884716) bm!626692))

(assert (= (or b!6884720 b!6884721) bm!626693))

(assert (= (or b!6884723 bm!626693) bm!626694))

(declare-fun m!7608138 () Bool)

(assert (=> bm!626692 m!7608138))

(declare-fun m!7608140 () Bool)

(assert (=> b!6884722 m!7608140))

(declare-fun m!7608142 () Bool)

(assert (=> bm!626694 m!7608142))

(assert (=> b!6884450 d!2160357))

(declare-fun bs!1838461 () Bool)

(declare-fun d!2160359 () Bool)

(assert (= bs!1838461 (and d!2160359 b!6884693)))

(declare-fun lambda!389820 () Int)

(assert (=> bs!1838461 (not (= lambda!389820 lambda!389814))))

(declare-fun bs!1838462 () Bool)

(assert (= bs!1838462 (and d!2160359 b!6884668)))

(assert (=> bs!1838462 (not (= lambda!389820 lambda!389812))))

(declare-fun bs!1838463 () Bool)

(assert (= bs!1838463 (and d!2160359 b!6884466)))

(assert (=> bs!1838463 (not (= lambda!389820 lambda!389790))))

(declare-fun bs!1838464 () Bool)

(assert (= bs!1838464 (and d!2160359 b!6884451)))

(assert (=> bs!1838464 (= (and (= (_1!36954 lt!2460490) s!14361) (= r1!6342 lt!2460495) (= r2!6280 r3!135)) (= lambda!389820 lambda!389787))))

(declare-fun bs!1838465 () Bool)

(assert (= bs!1838465 (and d!2160359 b!6884688)))

(assert (=> bs!1838465 (not (= lambda!389820 lambda!389813))))

(assert (=> bs!1838463 (= lambda!389820 lambda!389789)))

(assert (=> bs!1838464 (not (= lambda!389820 lambda!389788))))

(declare-fun bs!1838466 () Bool)

(assert (= bs!1838466 (and d!2160359 b!6884663)))

(assert (=> bs!1838466 (not (= lambda!389820 lambda!389811))))

(assert (=> d!2160359 true))

(assert (=> d!2160359 true))

(assert (=> d!2160359 true))

(assert (=> d!2160359 (= (isDefined!13266 (findConcatSeparation!2977 r1!6342 r2!6280 Nil!66411 (_1!36954 lt!2460490) (_1!36954 lt!2460490))) (Exists!3790 lambda!389820))))

(declare-fun lt!2460555 () Unit!160276)

(declare-fun choose!51275 (Regex!16778 Regex!16778 List!66535) Unit!160276)

(assert (=> d!2160359 (= lt!2460555 (choose!51275 r1!6342 r2!6280 (_1!36954 lt!2460490)))))

(assert (=> d!2160359 (validRegex!8486 r1!6342)))

(assert (=> d!2160359 (= (lemmaFindConcatSeparationEquivalentToExists!2741 r1!6342 r2!6280 (_1!36954 lt!2460490)) lt!2460555)))

(declare-fun bs!1838467 () Bool)

(assert (= bs!1838467 d!2160359))

(assert (=> bs!1838467 m!7607992))

(assert (=> bs!1838467 m!7608002))

(declare-fun m!7608152 () Bool)

(assert (=> bs!1838467 m!7608152))

(assert (=> bs!1838467 m!7607992))

(assert (=> bs!1838467 m!7607996))

(declare-fun m!7608154 () Bool)

(assert (=> bs!1838467 m!7608154))

(assert (=> b!6884466 d!2160359))

(declare-fun d!2160363 () Bool)

(declare-fun isEmpty!38681 (Option!16563) Bool)

(assert (=> d!2160363 (= (isDefined!13266 (findConcatSeparation!2977 r1!6342 r2!6280 Nil!66411 (_1!36954 lt!2460490) (_1!36954 lt!2460490))) (not (isEmpty!38681 (findConcatSeparation!2977 r1!6342 r2!6280 Nil!66411 (_1!36954 lt!2460490) (_1!36954 lt!2460490)))))))

(declare-fun bs!1838468 () Bool)

(assert (= bs!1838468 d!2160363))

(assert (=> bs!1838468 m!7607992))

(declare-fun m!7608156 () Bool)

(assert (=> bs!1838468 m!7608156))

(assert (=> b!6884466 d!2160363))

(declare-fun b!6884778 () Bool)

(declare-fun e!4148401 () Option!16563)

(assert (=> b!6884778 (= e!4148401 (Some!16562 (tuple2!67303 Nil!66411 (_1!36954 lt!2460490))))))

(declare-fun b!6884779 () Bool)

(declare-fun e!4148399 () Option!16563)

(assert (=> b!6884779 (= e!4148401 e!4148399)))

(declare-fun c!1280552 () Bool)

(assert (=> b!6884779 (= c!1280552 (is-Nil!66411 (_1!36954 lt!2460490)))))

(declare-fun d!2160365 () Bool)

(declare-fun e!4148402 () Bool)

(assert (=> d!2160365 e!4148402))

(declare-fun res!2806570 () Bool)

(assert (=> d!2160365 (=> res!2806570 e!4148402)))

(declare-fun e!4148403 () Bool)

(assert (=> d!2160365 (= res!2806570 e!4148403)))

(declare-fun res!2806569 () Bool)

(assert (=> d!2160365 (=> (not res!2806569) (not e!4148403))))

(declare-fun lt!2460562 () Option!16563)

(assert (=> d!2160365 (= res!2806569 (isDefined!13266 lt!2460562))))

(assert (=> d!2160365 (= lt!2460562 e!4148401)))

(declare-fun c!1280553 () Bool)

(declare-fun e!4148400 () Bool)

(assert (=> d!2160365 (= c!1280553 e!4148400)))

(declare-fun res!2806567 () Bool)

(assert (=> d!2160365 (=> (not res!2806567) (not e!4148400))))

(assert (=> d!2160365 (= res!2806567 (matchR!8923 r1!6342 Nil!66411))))

(assert (=> d!2160365 (validRegex!8486 r1!6342)))

(assert (=> d!2160365 (= (findConcatSeparation!2977 r1!6342 r2!6280 Nil!66411 (_1!36954 lt!2460490) (_1!36954 lt!2460490)) lt!2460562)))

(declare-fun b!6884780 () Bool)

(assert (=> b!6884780 (= e!4148402 (not (isDefined!13266 lt!2460562)))))

(declare-fun b!6884781 () Bool)

(declare-fun res!2806571 () Bool)

(assert (=> b!6884781 (=> (not res!2806571) (not e!4148403))))

(assert (=> b!6884781 (= res!2806571 (matchR!8923 r1!6342 (_1!36954 (get!23130 lt!2460562))))))

(declare-fun b!6884782 () Bool)

(declare-fun res!2806568 () Bool)

(assert (=> b!6884782 (=> (not res!2806568) (not e!4148403))))

(assert (=> b!6884782 (= res!2806568 (matchR!8923 r2!6280 (_2!36954 (get!23130 lt!2460562))))))

(declare-fun b!6884783 () Bool)

(assert (=> b!6884783 (= e!4148399 None!16562)))

(declare-fun b!6884784 () Bool)

(declare-fun lt!2460564 () Unit!160276)

(declare-fun lt!2460563 () Unit!160276)

(assert (=> b!6884784 (= lt!2460564 lt!2460563)))

(declare-fun ++!14863 (List!66535 List!66535) List!66535)

(assert (=> b!6884784 (= (++!14863 (++!14863 Nil!66411 (Cons!66411 (h!72859 (_1!36954 lt!2460490)) Nil!66411)) (t!380278 (_1!36954 lt!2460490))) (_1!36954 lt!2460490))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2772 (List!66535 C!33826 List!66535 List!66535) Unit!160276)

(assert (=> b!6884784 (= lt!2460563 (lemmaMoveElementToOtherListKeepsConcatEq!2772 Nil!66411 (h!72859 (_1!36954 lt!2460490)) (t!380278 (_1!36954 lt!2460490)) (_1!36954 lt!2460490)))))

(assert (=> b!6884784 (= e!4148399 (findConcatSeparation!2977 r1!6342 r2!6280 (++!14863 Nil!66411 (Cons!66411 (h!72859 (_1!36954 lt!2460490)) Nil!66411)) (t!380278 (_1!36954 lt!2460490)) (_1!36954 lt!2460490)))))

(declare-fun b!6884785 () Bool)

(assert (=> b!6884785 (= e!4148403 (= (++!14863 (_1!36954 (get!23130 lt!2460562)) (_2!36954 (get!23130 lt!2460562))) (_1!36954 lt!2460490)))))

(declare-fun b!6884786 () Bool)

(assert (=> b!6884786 (= e!4148400 (matchR!8923 r2!6280 (_1!36954 lt!2460490)))))

(assert (= (and d!2160365 res!2806567) b!6884786))

(assert (= (and d!2160365 c!1280553) b!6884778))

(assert (= (and d!2160365 (not c!1280553)) b!6884779))

(assert (= (and b!6884779 c!1280552) b!6884783))

(assert (= (and b!6884779 (not c!1280552)) b!6884784))

(assert (= (and d!2160365 res!2806569) b!6884781))

(assert (= (and b!6884781 res!2806571) b!6884782))

(assert (= (and b!6884782 res!2806568) b!6884785))

(assert (= (and d!2160365 (not res!2806570)) b!6884780))

(declare-fun m!7608158 () Bool)

(assert (=> b!6884786 m!7608158))

(declare-fun m!7608160 () Bool)

(assert (=> b!6884780 m!7608160))

(declare-fun m!7608162 () Bool)

(assert (=> b!6884785 m!7608162))

(declare-fun m!7608164 () Bool)

(assert (=> b!6884785 m!7608164))

(assert (=> d!2160365 m!7608160))

(declare-fun m!7608166 () Bool)

(assert (=> d!2160365 m!7608166))

(assert (=> d!2160365 m!7608002))

(assert (=> b!6884782 m!7608162))

(declare-fun m!7608168 () Bool)

(assert (=> b!6884782 m!7608168))

(assert (=> b!6884781 m!7608162))

(declare-fun m!7608170 () Bool)

(assert (=> b!6884781 m!7608170))

(declare-fun m!7608172 () Bool)

(assert (=> b!6884784 m!7608172))

(assert (=> b!6884784 m!7608172))

(declare-fun m!7608174 () Bool)

(assert (=> b!6884784 m!7608174))

(declare-fun m!7608176 () Bool)

(assert (=> b!6884784 m!7608176))

(assert (=> b!6884784 m!7608172))

(declare-fun m!7608178 () Bool)

(assert (=> b!6884784 m!7608178))

(assert (=> b!6884466 d!2160365))

(declare-fun bs!1838469 () Bool)

(declare-fun d!2160367 () Bool)

(assert (= bs!1838469 (and d!2160367 b!6884693)))

(declare-fun lambda!389829 () Int)

(assert (=> bs!1838469 (not (= lambda!389829 lambda!389814))))

(declare-fun bs!1838470 () Bool)

(assert (= bs!1838470 (and d!2160367 b!6884668)))

(assert (=> bs!1838470 (not (= lambda!389829 lambda!389812))))

(declare-fun bs!1838471 () Bool)

(assert (= bs!1838471 (and d!2160367 b!6884466)))

(assert (=> bs!1838471 (not (= lambda!389829 lambda!389790))))

(declare-fun bs!1838472 () Bool)

(assert (= bs!1838472 (and d!2160367 d!2160359)))

(assert (=> bs!1838472 (= lambda!389829 lambda!389820)))

(declare-fun bs!1838473 () Bool)

(assert (= bs!1838473 (and d!2160367 b!6884451)))

(assert (=> bs!1838473 (= (and (= (_1!36954 lt!2460490) s!14361) (= r1!6342 lt!2460495) (= r2!6280 r3!135)) (= lambda!389829 lambda!389787))))

(declare-fun bs!1838474 () Bool)

(assert (= bs!1838474 (and d!2160367 b!6884688)))

(assert (=> bs!1838474 (not (= lambda!389829 lambda!389813))))

(assert (=> bs!1838471 (= lambda!389829 lambda!389789)))

(assert (=> bs!1838473 (not (= lambda!389829 lambda!389788))))

(declare-fun bs!1838475 () Bool)

(assert (= bs!1838475 (and d!2160367 b!6884663)))

(assert (=> bs!1838475 (not (= lambda!389829 lambda!389811))))

(assert (=> d!2160367 true))

(assert (=> d!2160367 true))

(assert (=> d!2160367 true))

(declare-fun lambda!389830 () Int)

(assert (=> bs!1838469 (= (and (= (_1!36954 lt!2460490) s!14361) (= r1!6342 (regOne!34068 lt!2460492)) (= r2!6280 (regTwo!34068 lt!2460492))) (= lambda!389830 lambda!389814))))

(assert (=> bs!1838470 (= (and (= (_1!36954 lt!2460490) s!14361) (= r1!6342 (regOne!34068 lt!2460496)) (= r2!6280 (regTwo!34068 lt!2460496))) (= lambda!389830 lambda!389812))))

(assert (=> bs!1838471 (= lambda!389830 lambda!389790)))

(assert (=> bs!1838472 (not (= lambda!389830 lambda!389820))))

(assert (=> bs!1838473 (not (= lambda!389830 lambda!389787))))

(assert (=> bs!1838474 (not (= lambda!389830 lambda!389813))))

(assert (=> bs!1838471 (not (= lambda!389830 lambda!389789))))

(assert (=> bs!1838473 (= (and (= (_1!36954 lt!2460490) s!14361) (= r1!6342 lt!2460495) (= r2!6280 r3!135)) (= lambda!389830 lambda!389788))))

(declare-fun bs!1838476 () Bool)

(assert (= bs!1838476 d!2160367))

(assert (=> bs!1838476 (not (= lambda!389830 lambda!389829))))

(assert (=> bs!1838475 (not (= lambda!389830 lambda!389811))))

(assert (=> d!2160367 true))

(assert (=> d!2160367 true))

(assert (=> d!2160367 true))

(assert (=> d!2160367 (= (Exists!3790 lambda!389829) (Exists!3790 lambda!389830))))

(declare-fun lt!2460567 () Unit!160276)

(declare-fun choose!51276 (Regex!16778 Regex!16778 List!66535) Unit!160276)

(assert (=> d!2160367 (= lt!2460567 (choose!51276 r1!6342 r2!6280 (_1!36954 lt!2460490)))))

(assert (=> d!2160367 (validRegex!8486 r1!6342)))

(assert (=> d!2160367 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2269 r1!6342 r2!6280 (_1!36954 lt!2460490)) lt!2460567)))

(declare-fun m!7608180 () Bool)

(assert (=> bs!1838476 m!7608180))

(declare-fun m!7608182 () Bool)

(assert (=> bs!1838476 m!7608182))

(declare-fun m!7608184 () Bool)

(assert (=> bs!1838476 m!7608184))

(assert (=> bs!1838476 m!7608002))

(assert (=> b!6884466 d!2160367))

(declare-fun d!2160369 () Bool)

(declare-fun choose!51277 (Int) Bool)

(assert (=> d!2160369 (= (Exists!3790 lambda!389789) (choose!51277 lambda!389789))))

(declare-fun bs!1838477 () Bool)

(assert (= bs!1838477 d!2160369))

(declare-fun m!7608186 () Bool)

(assert (=> bs!1838477 m!7608186))

(assert (=> b!6884466 d!2160369))

(declare-fun d!2160371 () Bool)

(assert (=> d!2160371 (= (Exists!3790 lambda!389790) (choose!51277 lambda!389790))))

(declare-fun bs!1838478 () Bool)

(assert (= bs!1838478 d!2160371))

(declare-fun m!7608188 () Bool)

(assert (=> bs!1838478 m!7608188))

(assert (=> b!6884466 d!2160371))

(declare-fun bm!626699 () Bool)

(declare-fun call!626704 () Bool)

(assert (=> bm!626699 (= call!626704 (isEmpty!38680 (_2!36954 lt!2460490)))))

(declare-fun d!2160373 () Bool)

(declare-fun e!4148411 () Bool)

(assert (=> d!2160373 e!4148411))

(declare-fun c!1280555 () Bool)

(assert (=> d!2160373 (= c!1280555 (is-EmptyExpr!16778 r3!135))))

(declare-fun lt!2460568 () Bool)

(declare-fun e!4148415 () Bool)

(assert (=> d!2160373 (= lt!2460568 e!4148415)))

(declare-fun c!1280554 () Bool)

(assert (=> d!2160373 (= c!1280554 (isEmpty!38680 (_2!36954 lt!2460490)))))

(assert (=> d!2160373 (validRegex!8486 r3!135)))

(assert (=> d!2160373 (= (matchR!8923 r3!135 (_2!36954 lt!2460490)) lt!2460568)))

(declare-fun b!6884799 () Bool)

(declare-fun e!4148416 () Bool)

(assert (=> b!6884799 (= e!4148416 (not (= (head!13813 (_2!36954 lt!2460490)) (c!1280498 r3!135))))))

(declare-fun b!6884800 () Bool)

(declare-fun res!2806586 () Bool)

(assert (=> b!6884800 (=> res!2806586 e!4148416)))

(assert (=> b!6884800 (= res!2806586 (not (isEmpty!38680 (tail!12865 (_2!36954 lt!2460490)))))))

(declare-fun b!6884801 () Bool)

(declare-fun e!4148410 () Bool)

(assert (=> b!6884801 (= e!4148410 e!4148416)))

(declare-fun res!2806587 () Bool)

(assert (=> b!6884801 (=> res!2806587 e!4148416)))

(assert (=> b!6884801 (= res!2806587 call!626704)))

(declare-fun b!6884802 () Bool)

(declare-fun res!2806585 () Bool)

(declare-fun e!4148413 () Bool)

(assert (=> b!6884802 (=> (not res!2806585) (not e!4148413))))

(assert (=> b!6884802 (= res!2806585 (not call!626704))))

(declare-fun b!6884803 () Bool)

(declare-fun e!4148414 () Bool)

(assert (=> b!6884803 (= e!4148414 e!4148410)))

(declare-fun res!2806591 () Bool)

(assert (=> b!6884803 (=> (not res!2806591) (not e!4148410))))

(assert (=> b!6884803 (= res!2806591 (not lt!2460568))))

(declare-fun b!6884804 () Bool)

(assert (=> b!6884804 (= e!4148413 (= (head!13813 (_2!36954 lt!2460490)) (c!1280498 r3!135)))))

(declare-fun b!6884805 () Bool)

(declare-fun res!2806588 () Bool)

(assert (=> b!6884805 (=> res!2806588 e!4148414)))

(assert (=> b!6884805 (= res!2806588 (not (is-ElementMatch!16778 r3!135)))))

(declare-fun e!4148412 () Bool)

(assert (=> b!6884805 (= e!4148412 e!4148414)))

(declare-fun b!6884806 () Bool)

(declare-fun res!2806589 () Bool)

(assert (=> b!6884806 (=> res!2806589 e!4148414)))

(assert (=> b!6884806 (= res!2806589 e!4148413)))

(declare-fun res!2806590 () Bool)

(assert (=> b!6884806 (=> (not res!2806590) (not e!4148413))))

(assert (=> b!6884806 (= res!2806590 lt!2460568)))

(declare-fun b!6884807 () Bool)

(assert (=> b!6884807 (= e!4148411 e!4148412)))

(declare-fun c!1280556 () Bool)

(assert (=> b!6884807 (= c!1280556 (is-EmptyLang!16778 r3!135))))

(declare-fun b!6884808 () Bool)

(assert (=> b!6884808 (= e!4148412 (not lt!2460568))))

(declare-fun b!6884809 () Bool)

(declare-fun res!2806584 () Bool)

(assert (=> b!6884809 (=> (not res!2806584) (not e!4148413))))

(assert (=> b!6884809 (= res!2806584 (isEmpty!38680 (tail!12865 (_2!36954 lt!2460490))))))

(declare-fun b!6884810 () Bool)

(assert (=> b!6884810 (= e!4148411 (= lt!2460568 call!626704))))

(declare-fun b!6884811 () Bool)

(assert (=> b!6884811 (= e!4148415 (matchR!8923 (derivativeStep!5360 r3!135 (head!13813 (_2!36954 lt!2460490))) (tail!12865 (_2!36954 lt!2460490))))))

(declare-fun b!6884812 () Bool)

(assert (=> b!6884812 (= e!4148415 (nullable!6681 r3!135))))

(assert (= (and d!2160373 c!1280554) b!6884812))

(assert (= (and d!2160373 (not c!1280554)) b!6884811))

(assert (= (and d!2160373 c!1280555) b!6884810))

(assert (= (and d!2160373 (not c!1280555)) b!6884807))

(assert (= (and b!6884807 c!1280556) b!6884808))

(assert (= (and b!6884807 (not c!1280556)) b!6884805))

(assert (= (and b!6884805 (not res!2806588)) b!6884806))

(assert (= (and b!6884806 res!2806590) b!6884802))

(assert (= (and b!6884802 res!2806585) b!6884809))

(assert (= (and b!6884809 res!2806584) b!6884804))

(assert (= (and b!6884806 (not res!2806589)) b!6884803))

(assert (= (and b!6884803 res!2806591) b!6884801))

(assert (= (and b!6884801 (not res!2806587)) b!6884800))

(assert (= (and b!6884800 (not res!2806586)) b!6884799))

(assert (= (or b!6884810 b!6884801 b!6884802) bm!626699))

(declare-fun m!7608190 () Bool)

(assert (=> b!6884804 m!7608190))

(declare-fun m!7608192 () Bool)

(assert (=> b!6884812 m!7608192))

(declare-fun m!7608194 () Bool)

(assert (=> b!6884800 m!7608194))

(assert (=> b!6884800 m!7608194))

(declare-fun m!7608196 () Bool)

(assert (=> b!6884800 m!7608196))

(declare-fun m!7608198 () Bool)

(assert (=> d!2160373 m!7608198))

(assert (=> d!2160373 m!7608036))

(assert (=> b!6884811 m!7608190))

(assert (=> b!6884811 m!7608190))

(declare-fun m!7608200 () Bool)

(assert (=> b!6884811 m!7608200))

(assert (=> b!6884811 m!7608194))

(assert (=> b!6884811 m!7608200))

(assert (=> b!6884811 m!7608194))

(declare-fun m!7608202 () Bool)

(assert (=> b!6884811 m!7608202))

(assert (=> b!6884809 m!7608194))

(assert (=> b!6884809 m!7608194))

(assert (=> b!6884809 m!7608196))

(assert (=> b!6884799 m!7608190))

(assert (=> bm!626699 m!7608198))

(assert (=> b!6884460 d!2160373))

(declare-fun b!6884813 () Bool)

(declare-fun e!4148423 () Bool)

(declare-fun e!4148422 () Bool)

(assert (=> b!6884813 (= e!4148423 e!4148422)))

(declare-fun c!1280557 () Bool)

(assert (=> b!6884813 (= c!1280557 (is-Star!16778 r3!135))))

(declare-fun bm!626700 () Bool)

(declare-fun call!626707 () Bool)

(declare-fun c!1280558 () Bool)

(assert (=> bm!626700 (= call!626707 (validRegex!8486 (ite c!1280558 (regOne!34069 r3!135) (regTwo!34068 r3!135))))))

(declare-fun b!6884815 () Bool)

(declare-fun res!2806595 () Bool)

(declare-fun e!4148419 () Bool)

(assert (=> b!6884815 (=> (not res!2806595) (not e!4148419))))

(assert (=> b!6884815 (= res!2806595 call!626707)))

(declare-fun e!4148420 () Bool)

(assert (=> b!6884815 (= e!4148420 e!4148419)))

(declare-fun b!6884816 () Bool)

(declare-fun res!2806593 () Bool)

(declare-fun e!4148421 () Bool)

(assert (=> b!6884816 (=> res!2806593 e!4148421)))

(assert (=> b!6884816 (= res!2806593 (not (is-Concat!25623 r3!135)))))

(assert (=> b!6884816 (= e!4148420 e!4148421)))

(declare-fun bm!626701 () Bool)

(declare-fun call!626705 () Bool)

(declare-fun call!626706 () Bool)

(assert (=> bm!626701 (= call!626705 call!626706)))

(declare-fun b!6884817 () Bool)

(assert (=> b!6884817 (= e!4148422 e!4148420)))

(assert (=> b!6884817 (= c!1280558 (is-Union!16778 r3!135))))

(declare-fun b!6884818 () Bool)

(assert (=> b!6884818 (= e!4148419 call!626705)))

(declare-fun d!2160375 () Bool)

(declare-fun res!2806596 () Bool)

(assert (=> d!2160375 (=> res!2806596 e!4148423)))

(assert (=> d!2160375 (= res!2806596 (is-ElementMatch!16778 r3!135))))

(assert (=> d!2160375 (= (validRegex!8486 r3!135) e!4148423)))

(declare-fun b!6884814 () Bool)

(declare-fun e!4148417 () Bool)

(assert (=> b!6884814 (= e!4148417 call!626707)))

(declare-fun b!6884819 () Bool)

(assert (=> b!6884819 (= e!4148421 e!4148417)))

(declare-fun res!2806592 () Bool)

(assert (=> b!6884819 (=> (not res!2806592) (not e!4148417))))

(assert (=> b!6884819 (= res!2806592 call!626705)))

(declare-fun b!6884820 () Bool)

(declare-fun e!4148418 () Bool)

(assert (=> b!6884820 (= e!4148422 e!4148418)))

(declare-fun res!2806594 () Bool)

(assert (=> b!6884820 (= res!2806594 (not (nullable!6681 (reg!17107 r3!135))))))

(assert (=> b!6884820 (=> (not res!2806594) (not e!4148418))))

(declare-fun b!6884821 () Bool)

(assert (=> b!6884821 (= e!4148418 call!626706)))

(declare-fun bm!626702 () Bool)

(assert (=> bm!626702 (= call!626706 (validRegex!8486 (ite c!1280557 (reg!17107 r3!135) (ite c!1280558 (regTwo!34069 r3!135) (regOne!34068 r3!135)))))))

(assert (= (and d!2160375 (not res!2806596)) b!6884813))

(assert (= (and b!6884813 c!1280557) b!6884820))

(assert (= (and b!6884813 (not c!1280557)) b!6884817))

(assert (= (and b!6884820 res!2806594) b!6884821))

(assert (= (and b!6884817 c!1280558) b!6884815))

(assert (= (and b!6884817 (not c!1280558)) b!6884816))

(assert (= (and b!6884815 res!2806595) b!6884818))

(assert (= (and b!6884816 (not res!2806593)) b!6884819))

(assert (= (and b!6884819 res!2806592) b!6884814))

(assert (= (or b!6884815 b!6884814) bm!626700))

(assert (= (or b!6884818 b!6884819) bm!626701))

(assert (= (or b!6884821 bm!626701) bm!626702))

(declare-fun m!7608204 () Bool)

(assert (=> bm!626700 m!7608204))

(declare-fun m!7608206 () Bool)

(assert (=> b!6884820 m!7608206))

(declare-fun m!7608208 () Bool)

(assert (=> bm!626702 m!7608208))

(assert (=> b!6884455 d!2160375))

(declare-fun b!6884833 () Bool)

(declare-fun e!4148437 () Bool)

(declare-fun e!4148436 () Bool)

(assert (=> b!6884833 (= e!4148437 e!4148436)))

(declare-fun c!1280563 () Bool)

(assert (=> b!6884833 (= c!1280563 (is-Star!16778 r1!6342))))

(declare-fun bm!626705 () Bool)

(declare-fun call!626712 () Bool)

(declare-fun c!1280564 () Bool)

(assert (=> bm!626705 (= call!626712 (validRegex!8486 (ite c!1280564 (regOne!34069 r1!6342) (regTwo!34068 r1!6342))))))

(declare-fun b!6884835 () Bool)

(declare-fun res!2806603 () Bool)

(declare-fun e!4148433 () Bool)

(assert (=> b!6884835 (=> (not res!2806603) (not e!4148433))))

(assert (=> b!6884835 (= res!2806603 call!626712)))

(declare-fun e!4148434 () Bool)

(assert (=> b!6884835 (= e!4148434 e!4148433)))

(declare-fun b!6884836 () Bool)

(declare-fun res!2806601 () Bool)

(declare-fun e!4148435 () Bool)

(assert (=> b!6884836 (=> res!2806601 e!4148435)))

(assert (=> b!6884836 (= res!2806601 (not (is-Concat!25623 r1!6342)))))

(assert (=> b!6884836 (= e!4148434 e!4148435)))

(declare-fun bm!626706 () Bool)

(declare-fun call!626710 () Bool)

(declare-fun call!626711 () Bool)

(assert (=> bm!626706 (= call!626710 call!626711)))

(declare-fun b!6884837 () Bool)

(assert (=> b!6884837 (= e!4148436 e!4148434)))

(assert (=> b!6884837 (= c!1280564 (is-Union!16778 r1!6342))))

(declare-fun b!6884838 () Bool)

(assert (=> b!6884838 (= e!4148433 call!626710)))

(declare-fun d!2160377 () Bool)

(declare-fun res!2806604 () Bool)

(assert (=> d!2160377 (=> res!2806604 e!4148437)))

(assert (=> d!2160377 (= res!2806604 (is-ElementMatch!16778 r1!6342))))

(assert (=> d!2160377 (= (validRegex!8486 r1!6342) e!4148437)))

(declare-fun b!6884834 () Bool)

(declare-fun e!4148431 () Bool)

(assert (=> b!6884834 (= e!4148431 call!626712)))

(declare-fun b!6884839 () Bool)

(assert (=> b!6884839 (= e!4148435 e!4148431)))

(declare-fun res!2806600 () Bool)

(assert (=> b!6884839 (=> (not res!2806600) (not e!4148431))))

(assert (=> b!6884839 (= res!2806600 call!626710)))

(declare-fun b!6884840 () Bool)

(declare-fun e!4148432 () Bool)

(assert (=> b!6884840 (= e!4148436 e!4148432)))

(declare-fun res!2806602 () Bool)

(assert (=> b!6884840 (= res!2806602 (not (nullable!6681 (reg!17107 r1!6342))))))

(assert (=> b!6884840 (=> (not res!2806602) (not e!4148432))))

(declare-fun b!6884841 () Bool)

(assert (=> b!6884841 (= e!4148432 call!626711)))

(declare-fun bm!626707 () Bool)

(assert (=> bm!626707 (= call!626711 (validRegex!8486 (ite c!1280563 (reg!17107 r1!6342) (ite c!1280564 (regTwo!34069 r1!6342) (regOne!34068 r1!6342)))))))

(assert (= (and d!2160377 (not res!2806604)) b!6884833))

(assert (= (and b!6884833 c!1280563) b!6884840))

(assert (= (and b!6884833 (not c!1280563)) b!6884837))

(assert (= (and b!6884840 res!2806602) b!6884841))

(assert (= (and b!6884837 c!1280564) b!6884835))

(assert (= (and b!6884837 (not c!1280564)) b!6884836))

(assert (= (and b!6884835 res!2806603) b!6884838))

(assert (= (and b!6884836 (not res!2806601)) b!6884839))

(assert (= (and b!6884839 res!2806600) b!6884834))

(assert (= (or b!6884835 b!6884834) bm!626705))

(assert (= (or b!6884838 b!6884839) bm!626706))

(assert (= (or b!6884841 bm!626706) bm!626707))

(declare-fun m!7608210 () Bool)

(assert (=> bm!626705 m!7608210))

(declare-fun m!7608212 () Bool)

(assert (=> b!6884840 m!7608212))

(declare-fun m!7608214 () Bool)

(assert (=> bm!626707 m!7608214))

(assert (=> start!664028 d!2160377))

(declare-fun d!2160379 () Bool)

(assert (=> d!2160379 (= (matchR!8923 lt!2460495 (_1!36954 lt!2460490)) (matchRSpec!3841 lt!2460495 (_1!36954 lt!2460490)))))

(declare-fun lt!2460569 () Unit!160276)

(assert (=> d!2160379 (= lt!2460569 (choose!51274 lt!2460495 (_1!36954 lt!2460490)))))

(assert (=> d!2160379 (validRegex!8486 lt!2460495)))

(assert (=> d!2160379 (= (mainMatchTheorem!3841 lt!2460495 (_1!36954 lt!2460490)) lt!2460569)))

(declare-fun bs!1838479 () Bool)

(assert (= bs!1838479 d!2160379))

(assert (=> bs!1838479 m!7608034))

(assert (=> bs!1838479 m!7608028))

(declare-fun m!7608216 () Bool)

(assert (=> bs!1838479 m!7608216))

(declare-fun m!7608218 () Bool)

(assert (=> bs!1838479 m!7608218))

(assert (=> b!6884451 d!2160379))

(declare-fun b!6884842 () Bool)

(declare-fun e!4148440 () Option!16563)

(assert (=> b!6884842 (= e!4148440 (Some!16562 (tuple2!67303 Nil!66411 s!14361)))))

(declare-fun b!6884843 () Bool)

(declare-fun e!4148438 () Option!16563)

(assert (=> b!6884843 (= e!4148440 e!4148438)))

(declare-fun c!1280565 () Bool)

(assert (=> b!6884843 (= c!1280565 (is-Nil!66411 s!14361))))

(declare-fun d!2160381 () Bool)

(declare-fun e!4148441 () Bool)

(assert (=> d!2160381 e!4148441))

(declare-fun res!2806608 () Bool)

(assert (=> d!2160381 (=> res!2806608 e!4148441)))

(declare-fun e!4148442 () Bool)

(assert (=> d!2160381 (= res!2806608 e!4148442)))

(declare-fun res!2806607 () Bool)

(assert (=> d!2160381 (=> (not res!2806607) (not e!4148442))))

(declare-fun lt!2460570 () Option!16563)

(assert (=> d!2160381 (= res!2806607 (isDefined!13266 lt!2460570))))

(assert (=> d!2160381 (= lt!2460570 e!4148440)))

(declare-fun c!1280566 () Bool)

(declare-fun e!4148439 () Bool)

(assert (=> d!2160381 (= c!1280566 e!4148439)))

(declare-fun res!2806605 () Bool)

(assert (=> d!2160381 (=> (not res!2806605) (not e!4148439))))

(assert (=> d!2160381 (= res!2806605 (matchR!8923 lt!2460495 Nil!66411))))

(assert (=> d!2160381 (validRegex!8486 lt!2460495)))

(assert (=> d!2160381 (= (findConcatSeparation!2977 lt!2460495 r3!135 Nil!66411 s!14361 s!14361) lt!2460570)))

(declare-fun b!6884844 () Bool)

(assert (=> b!6884844 (= e!4148441 (not (isDefined!13266 lt!2460570)))))

(declare-fun b!6884845 () Bool)

(declare-fun res!2806609 () Bool)

(assert (=> b!6884845 (=> (not res!2806609) (not e!4148442))))

(assert (=> b!6884845 (= res!2806609 (matchR!8923 lt!2460495 (_1!36954 (get!23130 lt!2460570))))))

(declare-fun b!6884846 () Bool)

(declare-fun res!2806606 () Bool)

(assert (=> b!6884846 (=> (not res!2806606) (not e!4148442))))

(assert (=> b!6884846 (= res!2806606 (matchR!8923 r3!135 (_2!36954 (get!23130 lt!2460570))))))

(declare-fun b!6884847 () Bool)

(assert (=> b!6884847 (= e!4148438 None!16562)))

(declare-fun b!6884848 () Bool)

(declare-fun lt!2460572 () Unit!160276)

(declare-fun lt!2460571 () Unit!160276)

(assert (=> b!6884848 (= lt!2460572 lt!2460571)))

(assert (=> b!6884848 (= (++!14863 (++!14863 Nil!66411 (Cons!66411 (h!72859 s!14361) Nil!66411)) (t!380278 s!14361)) s!14361)))

(assert (=> b!6884848 (= lt!2460571 (lemmaMoveElementToOtherListKeepsConcatEq!2772 Nil!66411 (h!72859 s!14361) (t!380278 s!14361) s!14361))))

(assert (=> b!6884848 (= e!4148438 (findConcatSeparation!2977 lt!2460495 r3!135 (++!14863 Nil!66411 (Cons!66411 (h!72859 s!14361) Nil!66411)) (t!380278 s!14361) s!14361))))

(declare-fun b!6884849 () Bool)

(assert (=> b!6884849 (= e!4148442 (= (++!14863 (_1!36954 (get!23130 lt!2460570)) (_2!36954 (get!23130 lt!2460570))) s!14361))))

(declare-fun b!6884850 () Bool)

(assert (=> b!6884850 (= e!4148439 (matchR!8923 r3!135 s!14361))))

(assert (= (and d!2160381 res!2806605) b!6884850))

(assert (= (and d!2160381 c!1280566) b!6884842))

(assert (= (and d!2160381 (not c!1280566)) b!6884843))

(assert (= (and b!6884843 c!1280565) b!6884847))

(assert (= (and b!6884843 (not c!1280565)) b!6884848))

(assert (= (and d!2160381 res!2806607) b!6884845))

(assert (= (and b!6884845 res!2806609) b!6884846))

(assert (= (and b!6884846 res!2806606) b!6884849))

(assert (= (and d!2160381 (not res!2806608)) b!6884844))

(declare-fun m!7608220 () Bool)

(assert (=> b!6884850 m!7608220))

(declare-fun m!7608222 () Bool)

(assert (=> b!6884844 m!7608222))

(declare-fun m!7608224 () Bool)

(assert (=> b!6884849 m!7608224))

(declare-fun m!7608226 () Bool)

(assert (=> b!6884849 m!7608226))

(assert (=> d!2160381 m!7608222))

(declare-fun m!7608228 () Bool)

(assert (=> d!2160381 m!7608228))

(assert (=> d!2160381 m!7608218))

(assert (=> b!6884846 m!7608224))

(declare-fun m!7608230 () Bool)

(assert (=> b!6884846 m!7608230))

(assert (=> b!6884845 m!7608224))

(declare-fun m!7608232 () Bool)

(assert (=> b!6884845 m!7608232))

(declare-fun m!7608234 () Bool)

(assert (=> b!6884848 m!7608234))

(assert (=> b!6884848 m!7608234))

(declare-fun m!7608236 () Bool)

(assert (=> b!6884848 m!7608236))

(declare-fun m!7608238 () Bool)

(assert (=> b!6884848 m!7608238))

(assert (=> b!6884848 m!7608234))

(declare-fun m!7608240 () Bool)

(assert (=> b!6884848 m!7608240))

(assert (=> b!6884451 d!2160381))

(declare-fun d!2160383 () Bool)

(assert (=> d!2160383 (= (get!23130 lt!2460491) (v!52834 lt!2460491))))

(assert (=> b!6884451 d!2160383))

(declare-fun bs!1838483 () Bool)

(declare-fun b!6884853 () Bool)

(assert (= bs!1838483 (and b!6884853 b!6884693)))

(declare-fun lambda!389832 () Int)

(assert (=> bs!1838483 (not (= lambda!389832 lambda!389814))))

(declare-fun bs!1838484 () Bool)

(assert (= bs!1838484 (and b!6884853 b!6884668)))

(assert (=> bs!1838484 (not (= lambda!389832 lambda!389812))))

(declare-fun bs!1838485 () Bool)

(assert (= bs!1838485 (and b!6884853 b!6884466)))

(assert (=> bs!1838485 (not (= lambda!389832 lambda!389790))))

(declare-fun bs!1838486 () Bool)

(assert (= bs!1838486 (and b!6884853 d!2160359)))

(assert (=> bs!1838486 (not (= lambda!389832 lambda!389820))))

(declare-fun bs!1838488 () Bool)

(assert (= bs!1838488 (and b!6884853 b!6884451)))

(assert (=> bs!1838488 (not (= lambda!389832 lambda!389787))))

(declare-fun bs!1838489 () Bool)

(assert (= bs!1838489 (and b!6884853 b!6884688)))

(assert (=> bs!1838489 (= (and (= (_1!36954 lt!2460490) s!14361) (= (reg!17107 lt!2460495) (reg!17107 lt!2460492)) (= lt!2460495 lt!2460492)) (= lambda!389832 lambda!389813))))

(assert (=> bs!1838485 (not (= lambda!389832 lambda!389789))))

(assert (=> bs!1838488 (not (= lambda!389832 lambda!389788))))

(declare-fun bs!1838491 () Bool)

(assert (= bs!1838491 (and b!6884853 d!2160367)))

(assert (=> bs!1838491 (not (= lambda!389832 lambda!389829))))

(assert (=> bs!1838491 (not (= lambda!389832 lambda!389830))))

(declare-fun bs!1838493 () Bool)

(assert (= bs!1838493 (and b!6884853 b!6884663)))

(assert (=> bs!1838493 (= (and (= (_1!36954 lt!2460490) s!14361) (= (reg!17107 lt!2460495) (reg!17107 lt!2460496)) (= lt!2460495 lt!2460496)) (= lambda!389832 lambda!389811))))

(assert (=> b!6884853 true))

(assert (=> b!6884853 true))

(declare-fun bs!1838495 () Bool)

(declare-fun b!6884858 () Bool)

(assert (= bs!1838495 (and b!6884858 b!6884693)))

(declare-fun lambda!389834 () Int)

(assert (=> bs!1838495 (= (and (= (_1!36954 lt!2460490) s!14361) (= (regOne!34068 lt!2460495) (regOne!34068 lt!2460492)) (= (regTwo!34068 lt!2460495) (regTwo!34068 lt!2460492))) (= lambda!389834 lambda!389814))))

(declare-fun bs!1838496 () Bool)

(assert (= bs!1838496 (and b!6884858 b!6884668)))

(assert (=> bs!1838496 (= (and (= (_1!36954 lt!2460490) s!14361) (= (regOne!34068 lt!2460495) (regOne!34068 lt!2460496)) (= (regTwo!34068 lt!2460495) (regTwo!34068 lt!2460496))) (= lambda!389834 lambda!389812))))

(declare-fun bs!1838497 () Bool)

(assert (= bs!1838497 (and b!6884858 b!6884853)))

(assert (=> bs!1838497 (not (= lambda!389834 lambda!389832))))

(declare-fun bs!1838498 () Bool)

(assert (= bs!1838498 (and b!6884858 b!6884466)))

(assert (=> bs!1838498 (= (and (= (regOne!34068 lt!2460495) r1!6342) (= (regTwo!34068 lt!2460495) r2!6280)) (= lambda!389834 lambda!389790))))

(declare-fun bs!1838499 () Bool)

(assert (= bs!1838499 (and b!6884858 d!2160359)))

(assert (=> bs!1838499 (not (= lambda!389834 lambda!389820))))

(declare-fun bs!1838500 () Bool)

(assert (= bs!1838500 (and b!6884858 b!6884451)))

(assert (=> bs!1838500 (not (= lambda!389834 lambda!389787))))

(declare-fun bs!1838501 () Bool)

(assert (= bs!1838501 (and b!6884858 b!6884688)))

(assert (=> bs!1838501 (not (= lambda!389834 lambda!389813))))

(assert (=> bs!1838498 (not (= lambda!389834 lambda!389789))))

(assert (=> bs!1838500 (= (and (= (_1!36954 lt!2460490) s!14361) (= (regOne!34068 lt!2460495) lt!2460495) (= (regTwo!34068 lt!2460495) r3!135)) (= lambda!389834 lambda!389788))))

(declare-fun bs!1838502 () Bool)

(assert (= bs!1838502 (and b!6884858 d!2160367)))

(assert (=> bs!1838502 (not (= lambda!389834 lambda!389829))))

(assert (=> bs!1838502 (= (and (= (regOne!34068 lt!2460495) r1!6342) (= (regTwo!34068 lt!2460495) r2!6280)) (= lambda!389834 lambda!389830))))

(declare-fun bs!1838503 () Bool)

(assert (= bs!1838503 (and b!6884858 b!6884663)))

(assert (=> bs!1838503 (not (= lambda!389834 lambda!389811))))

(assert (=> b!6884858 true))

(assert (=> b!6884858 true))

(declare-fun b!6884851 () Bool)

(declare-fun res!2806612 () Bool)

(declare-fun e!4148448 () Bool)

(assert (=> b!6884851 (=> res!2806612 e!4148448)))

(declare-fun call!626714 () Bool)

(assert (=> b!6884851 (= res!2806612 call!626714)))

(declare-fun e!4148444 () Bool)

(assert (=> b!6884851 (= e!4148444 e!4148448)))

(declare-fun b!6884852 () Bool)

(declare-fun c!1280570 () Bool)

(assert (=> b!6884852 (= c!1280570 (is-ElementMatch!16778 lt!2460495))))

(declare-fun e!4148446 () Bool)

(declare-fun e!4148449 () Bool)

(assert (=> b!6884852 (= e!4148446 e!4148449)))

(declare-fun call!626713 () Bool)

(assert (=> b!6884853 (= e!4148448 call!626713)))

(declare-fun b!6884854 () Bool)

(declare-fun e!4148447 () Bool)

(assert (=> b!6884854 (= e!4148447 e!4148446)))

(declare-fun res!2806611 () Bool)

(assert (=> b!6884854 (= res!2806611 (not (is-EmptyLang!16778 lt!2460495)))))

(assert (=> b!6884854 (=> (not res!2806611) (not e!4148446))))

(declare-fun d!2160385 () Bool)

(declare-fun c!1280569 () Bool)

(assert (=> d!2160385 (= c!1280569 (is-EmptyExpr!16778 lt!2460495))))

(assert (=> d!2160385 (= (matchRSpec!3841 lt!2460495 (_1!36954 lt!2460490)) e!4148447)))

(declare-fun c!1280567 () Bool)

(declare-fun bm!626708 () Bool)

(assert (=> bm!626708 (= call!626713 (Exists!3790 (ite c!1280567 lambda!389832 lambda!389834)))))

(declare-fun b!6884855 () Bool)

(assert (=> b!6884855 (= e!4148449 (= (_1!36954 lt!2460490) (Cons!66411 (c!1280498 lt!2460495) Nil!66411)))))

(declare-fun b!6884856 () Bool)

(declare-fun e!4148445 () Bool)

(assert (=> b!6884856 (= e!4148445 (matchRSpec!3841 (regTwo!34069 lt!2460495) (_1!36954 lt!2460490)))))

(declare-fun b!6884857 () Bool)

(assert (=> b!6884857 (= e!4148447 call!626714)))

(assert (=> b!6884858 (= e!4148444 call!626713)))

(declare-fun b!6884859 () Bool)

(declare-fun e!4148443 () Bool)

(assert (=> b!6884859 (= e!4148443 e!4148445)))

(declare-fun res!2806610 () Bool)

(assert (=> b!6884859 (= res!2806610 (matchRSpec!3841 (regOne!34069 lt!2460495) (_1!36954 lt!2460490)))))

(assert (=> b!6884859 (=> res!2806610 e!4148445)))

(declare-fun b!6884860 () Bool)

(assert (=> b!6884860 (= e!4148443 e!4148444)))

(assert (=> b!6884860 (= c!1280567 (is-Star!16778 lt!2460495))))

(declare-fun b!6884861 () Bool)

(declare-fun c!1280568 () Bool)

(assert (=> b!6884861 (= c!1280568 (is-Union!16778 lt!2460495))))

(assert (=> b!6884861 (= e!4148449 e!4148443)))

(declare-fun bm!626709 () Bool)

(assert (=> bm!626709 (= call!626714 (isEmpty!38680 (_1!36954 lt!2460490)))))

(assert (= (and d!2160385 c!1280569) b!6884857))

(assert (= (and d!2160385 (not c!1280569)) b!6884854))

(assert (= (and b!6884854 res!2806611) b!6884852))

(assert (= (and b!6884852 c!1280570) b!6884855))

(assert (= (and b!6884852 (not c!1280570)) b!6884861))

(assert (= (and b!6884861 c!1280568) b!6884859))

(assert (= (and b!6884861 (not c!1280568)) b!6884860))

(assert (= (and b!6884859 (not res!2806610)) b!6884856))

(assert (= (and b!6884860 c!1280567) b!6884851))

(assert (= (and b!6884860 (not c!1280567)) b!6884858))

(assert (= (and b!6884851 (not res!2806612)) b!6884853))

(assert (= (or b!6884853 b!6884858) bm!626708))

(assert (= (or b!6884857 b!6884851) bm!626709))

(declare-fun m!7608250 () Bool)

(assert (=> bm!626708 m!7608250))

(declare-fun m!7608252 () Bool)

(assert (=> b!6884856 m!7608252))

(declare-fun m!7608254 () Bool)

(assert (=> b!6884859 m!7608254))

(declare-fun m!7608256 () Bool)

(assert (=> bm!626709 m!7608256))

(assert (=> b!6884451 d!2160385))

(declare-fun d!2160389 () Bool)

(assert (=> d!2160389 (= (Exists!3790 lambda!389788) (choose!51277 lambda!389788))))

(declare-fun bs!1838504 () Bool)

(assert (= bs!1838504 d!2160389))

(declare-fun m!7608258 () Bool)

(assert (=> bs!1838504 m!7608258))

(assert (=> b!6884451 d!2160389))

(declare-fun bs!1838505 () Bool)

(declare-fun d!2160391 () Bool)

(assert (= bs!1838505 (and d!2160391 b!6884693)))

(declare-fun lambda!389835 () Int)

(assert (=> bs!1838505 (not (= lambda!389835 lambda!389814))))

(declare-fun bs!1838506 () Bool)

(assert (= bs!1838506 (and d!2160391 b!6884668)))

(assert (=> bs!1838506 (not (= lambda!389835 lambda!389812))))

(declare-fun bs!1838507 () Bool)

(assert (= bs!1838507 (and d!2160391 b!6884853)))

(assert (=> bs!1838507 (not (= lambda!389835 lambda!389832))))

(declare-fun bs!1838508 () Bool)

(assert (= bs!1838508 (and d!2160391 b!6884466)))

(assert (=> bs!1838508 (not (= lambda!389835 lambda!389790))))

(declare-fun bs!1838510 () Bool)

(assert (= bs!1838510 (and d!2160391 d!2160359)))

(assert (=> bs!1838510 (= (and (= s!14361 (_1!36954 lt!2460490)) (= lt!2460495 r1!6342) (= r3!135 r2!6280)) (= lambda!389835 lambda!389820))))

(declare-fun bs!1838511 () Bool)

(assert (= bs!1838511 (and d!2160391 b!6884451)))

(assert (=> bs!1838511 (= lambda!389835 lambda!389787)))

(declare-fun bs!1838513 () Bool)

(assert (= bs!1838513 (and d!2160391 b!6884688)))

(assert (=> bs!1838513 (not (= lambda!389835 lambda!389813))))

(assert (=> bs!1838508 (= (and (= s!14361 (_1!36954 lt!2460490)) (= lt!2460495 r1!6342) (= r3!135 r2!6280)) (= lambda!389835 lambda!389789))))

(assert (=> bs!1838511 (not (= lambda!389835 lambda!389788))))

(declare-fun bs!1838514 () Bool)

(assert (= bs!1838514 (and d!2160391 d!2160367)))

(assert (=> bs!1838514 (= (and (= s!14361 (_1!36954 lt!2460490)) (= lt!2460495 r1!6342) (= r3!135 r2!6280)) (= lambda!389835 lambda!389829))))

(declare-fun bs!1838515 () Bool)

(assert (= bs!1838515 (and d!2160391 b!6884858)))

(assert (=> bs!1838515 (not (= lambda!389835 lambda!389834))))

(assert (=> bs!1838514 (not (= lambda!389835 lambda!389830))))

(declare-fun bs!1838516 () Bool)

(assert (= bs!1838516 (and d!2160391 b!6884663)))

(assert (=> bs!1838516 (not (= lambda!389835 lambda!389811))))

(assert (=> d!2160391 true))

(assert (=> d!2160391 true))

(assert (=> d!2160391 true))

(declare-fun lambda!389836 () Int)

(assert (=> bs!1838505 (= (and (= lt!2460495 (regOne!34068 lt!2460492)) (= r3!135 (regTwo!34068 lt!2460492))) (= lambda!389836 lambda!389814))))

(assert (=> bs!1838506 (= (and (= lt!2460495 (regOne!34068 lt!2460496)) (= r3!135 (regTwo!34068 lt!2460496))) (= lambda!389836 lambda!389812))))

(assert (=> bs!1838507 (not (= lambda!389836 lambda!389832))))

(assert (=> bs!1838508 (= (and (= s!14361 (_1!36954 lt!2460490)) (= lt!2460495 r1!6342) (= r3!135 r2!6280)) (= lambda!389836 lambda!389790))))

(assert (=> bs!1838510 (not (= lambda!389836 lambda!389820))))

(assert (=> bs!1838511 (not (= lambda!389836 lambda!389787))))

(declare-fun bs!1838518 () Bool)

(assert (= bs!1838518 d!2160391))

(assert (=> bs!1838518 (not (= lambda!389836 lambda!389835))))

(assert (=> bs!1838513 (not (= lambda!389836 lambda!389813))))

(assert (=> bs!1838508 (not (= lambda!389836 lambda!389789))))

(assert (=> bs!1838511 (= lambda!389836 lambda!389788)))

(assert (=> bs!1838514 (not (= lambda!389836 lambda!389829))))

(assert (=> bs!1838515 (= (and (= s!14361 (_1!36954 lt!2460490)) (= lt!2460495 (regOne!34068 lt!2460495)) (= r3!135 (regTwo!34068 lt!2460495))) (= lambda!389836 lambda!389834))))

(assert (=> bs!1838514 (= (and (= s!14361 (_1!36954 lt!2460490)) (= lt!2460495 r1!6342) (= r3!135 r2!6280)) (= lambda!389836 lambda!389830))))

(assert (=> bs!1838516 (not (= lambda!389836 lambda!389811))))

(assert (=> d!2160391 true))

(assert (=> d!2160391 true))

(assert (=> d!2160391 true))

(assert (=> d!2160391 (= (Exists!3790 lambda!389835) (Exists!3790 lambda!389836))))

(declare-fun lt!2460573 () Unit!160276)

(assert (=> d!2160391 (= lt!2460573 (choose!51276 lt!2460495 r3!135 s!14361))))

(assert (=> d!2160391 (validRegex!8486 lt!2460495)))

(assert (=> d!2160391 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2269 lt!2460495 r3!135 s!14361) lt!2460573)))

(declare-fun m!7608266 () Bool)

(assert (=> bs!1838518 m!7608266))

(declare-fun m!7608268 () Bool)

(assert (=> bs!1838518 m!7608268))

(declare-fun m!7608270 () Bool)

(assert (=> bs!1838518 m!7608270))

(assert (=> bs!1838518 m!7608218))

(assert (=> b!6884451 d!2160391))

(declare-fun bm!626710 () Bool)

(declare-fun call!626715 () Bool)

(assert (=> bm!626710 (= call!626715 (isEmpty!38680 (_1!36954 lt!2460490)))))

(declare-fun d!2160401 () Bool)

(declare-fun e!4148451 () Bool)

(assert (=> d!2160401 e!4148451))

(declare-fun c!1280572 () Bool)

(assert (=> d!2160401 (= c!1280572 (is-EmptyExpr!16778 lt!2460495))))

(declare-fun lt!2460574 () Bool)

(declare-fun e!4148455 () Bool)

(assert (=> d!2160401 (= lt!2460574 e!4148455)))

(declare-fun c!1280571 () Bool)

(assert (=> d!2160401 (= c!1280571 (isEmpty!38680 (_1!36954 lt!2460490)))))

(assert (=> d!2160401 (validRegex!8486 lt!2460495)))

(assert (=> d!2160401 (= (matchR!8923 lt!2460495 (_1!36954 lt!2460490)) lt!2460574)))

(declare-fun b!6884862 () Bool)

(declare-fun e!4148456 () Bool)

(assert (=> b!6884862 (= e!4148456 (not (= (head!13813 (_1!36954 lt!2460490)) (c!1280498 lt!2460495))))))

(declare-fun b!6884863 () Bool)

(declare-fun res!2806615 () Bool)

(assert (=> b!6884863 (=> res!2806615 e!4148456)))

(assert (=> b!6884863 (= res!2806615 (not (isEmpty!38680 (tail!12865 (_1!36954 lt!2460490)))))))

(declare-fun b!6884864 () Bool)

(declare-fun e!4148450 () Bool)

(assert (=> b!6884864 (= e!4148450 e!4148456)))

(declare-fun res!2806616 () Bool)

(assert (=> b!6884864 (=> res!2806616 e!4148456)))

(assert (=> b!6884864 (= res!2806616 call!626715)))

(declare-fun b!6884865 () Bool)

(declare-fun res!2806614 () Bool)

(declare-fun e!4148453 () Bool)

(assert (=> b!6884865 (=> (not res!2806614) (not e!4148453))))

(assert (=> b!6884865 (= res!2806614 (not call!626715))))

(declare-fun b!6884866 () Bool)

(declare-fun e!4148454 () Bool)

(assert (=> b!6884866 (= e!4148454 e!4148450)))

(declare-fun res!2806620 () Bool)

(assert (=> b!6884866 (=> (not res!2806620) (not e!4148450))))

(assert (=> b!6884866 (= res!2806620 (not lt!2460574))))

(declare-fun b!6884867 () Bool)

(assert (=> b!6884867 (= e!4148453 (= (head!13813 (_1!36954 lt!2460490)) (c!1280498 lt!2460495)))))

(declare-fun b!6884868 () Bool)

(declare-fun res!2806617 () Bool)

(assert (=> b!6884868 (=> res!2806617 e!4148454)))

(assert (=> b!6884868 (= res!2806617 (not (is-ElementMatch!16778 lt!2460495)))))

(declare-fun e!4148452 () Bool)

(assert (=> b!6884868 (= e!4148452 e!4148454)))

(declare-fun b!6884869 () Bool)

(declare-fun res!2806618 () Bool)

(assert (=> b!6884869 (=> res!2806618 e!4148454)))

(assert (=> b!6884869 (= res!2806618 e!4148453)))

(declare-fun res!2806619 () Bool)

(assert (=> b!6884869 (=> (not res!2806619) (not e!4148453))))

(assert (=> b!6884869 (= res!2806619 lt!2460574)))

(declare-fun b!6884870 () Bool)

(assert (=> b!6884870 (= e!4148451 e!4148452)))

(declare-fun c!1280573 () Bool)

(assert (=> b!6884870 (= c!1280573 (is-EmptyLang!16778 lt!2460495))))

(declare-fun b!6884871 () Bool)

(assert (=> b!6884871 (= e!4148452 (not lt!2460574))))

(declare-fun b!6884872 () Bool)

(declare-fun res!2806613 () Bool)

(assert (=> b!6884872 (=> (not res!2806613) (not e!4148453))))

(assert (=> b!6884872 (= res!2806613 (isEmpty!38680 (tail!12865 (_1!36954 lt!2460490))))))

(declare-fun b!6884873 () Bool)

(assert (=> b!6884873 (= e!4148451 (= lt!2460574 call!626715))))

(declare-fun b!6884874 () Bool)

(assert (=> b!6884874 (= e!4148455 (matchR!8923 (derivativeStep!5360 lt!2460495 (head!13813 (_1!36954 lt!2460490))) (tail!12865 (_1!36954 lt!2460490))))))

(declare-fun b!6884875 () Bool)

(assert (=> b!6884875 (= e!4148455 (nullable!6681 lt!2460495))))

(assert (= (and d!2160401 c!1280571) b!6884875))

(assert (= (and d!2160401 (not c!1280571)) b!6884874))

(assert (= (and d!2160401 c!1280572) b!6884873))

(assert (= (and d!2160401 (not c!1280572)) b!6884870))

(assert (= (and b!6884870 c!1280573) b!6884871))

(assert (= (and b!6884870 (not c!1280573)) b!6884868))

(assert (= (and b!6884868 (not res!2806617)) b!6884869))

(assert (= (and b!6884869 res!2806619) b!6884865))

(assert (= (and b!6884865 res!2806614) b!6884872))

(assert (= (and b!6884872 res!2806613) b!6884867))

(assert (= (and b!6884869 (not res!2806618)) b!6884866))

(assert (= (and b!6884866 res!2806620) b!6884864))

(assert (= (and b!6884864 (not res!2806616)) b!6884863))

(assert (= (and b!6884863 (not res!2806615)) b!6884862))

(assert (= (or b!6884873 b!6884864 b!6884865) bm!626710))

(declare-fun m!7608272 () Bool)

(assert (=> b!6884867 m!7608272))

(declare-fun m!7608274 () Bool)

(assert (=> b!6884875 m!7608274))

(declare-fun m!7608276 () Bool)

(assert (=> b!6884863 m!7608276))

(assert (=> b!6884863 m!7608276))

(declare-fun m!7608278 () Bool)

(assert (=> b!6884863 m!7608278))

(assert (=> d!2160401 m!7608256))

(assert (=> d!2160401 m!7608218))

(assert (=> b!6884874 m!7608272))

(assert (=> b!6884874 m!7608272))

(declare-fun m!7608280 () Bool)

(assert (=> b!6884874 m!7608280))

(assert (=> b!6884874 m!7608276))

(assert (=> b!6884874 m!7608280))

(assert (=> b!6884874 m!7608276))

(declare-fun m!7608282 () Bool)

(assert (=> b!6884874 m!7608282))

(assert (=> b!6884872 m!7608276))

(assert (=> b!6884872 m!7608276))

(assert (=> b!6884872 m!7608278))

(assert (=> b!6884862 m!7608272))

(assert (=> bm!626710 m!7608256))

(assert (=> b!6884451 d!2160401))

(declare-fun bs!1838519 () Bool)

(declare-fun d!2160403 () Bool)

(assert (= bs!1838519 (and d!2160403 b!6884693)))

(declare-fun lambda!389837 () Int)

(assert (=> bs!1838519 (not (= lambda!389837 lambda!389814))))

(declare-fun bs!1838520 () Bool)

(assert (= bs!1838520 (and d!2160403 d!2160391)))

(assert (=> bs!1838520 (not (= lambda!389837 lambda!389836))))

(declare-fun bs!1838521 () Bool)

(assert (= bs!1838521 (and d!2160403 b!6884668)))

(assert (=> bs!1838521 (not (= lambda!389837 lambda!389812))))

(declare-fun bs!1838522 () Bool)

(assert (= bs!1838522 (and d!2160403 b!6884853)))

(assert (=> bs!1838522 (not (= lambda!389837 lambda!389832))))

(declare-fun bs!1838523 () Bool)

(assert (= bs!1838523 (and d!2160403 b!6884466)))

(assert (=> bs!1838523 (not (= lambda!389837 lambda!389790))))

(declare-fun bs!1838524 () Bool)

(assert (= bs!1838524 (and d!2160403 d!2160359)))

(assert (=> bs!1838524 (= (and (= s!14361 (_1!36954 lt!2460490)) (= lt!2460495 r1!6342) (= r3!135 r2!6280)) (= lambda!389837 lambda!389820))))

(declare-fun bs!1838525 () Bool)

(assert (= bs!1838525 (and d!2160403 b!6884451)))

(assert (=> bs!1838525 (= lambda!389837 lambda!389787)))

(assert (=> bs!1838520 (= lambda!389837 lambda!389835)))

(declare-fun bs!1838526 () Bool)

(assert (= bs!1838526 (and d!2160403 b!6884688)))

(assert (=> bs!1838526 (not (= lambda!389837 lambda!389813))))

(assert (=> bs!1838523 (= (and (= s!14361 (_1!36954 lt!2460490)) (= lt!2460495 r1!6342) (= r3!135 r2!6280)) (= lambda!389837 lambda!389789))))

(assert (=> bs!1838525 (not (= lambda!389837 lambda!389788))))

(declare-fun bs!1838527 () Bool)

(assert (= bs!1838527 (and d!2160403 d!2160367)))

(assert (=> bs!1838527 (= (and (= s!14361 (_1!36954 lt!2460490)) (= lt!2460495 r1!6342) (= r3!135 r2!6280)) (= lambda!389837 lambda!389829))))

(declare-fun bs!1838528 () Bool)

(assert (= bs!1838528 (and d!2160403 b!6884858)))

(assert (=> bs!1838528 (not (= lambda!389837 lambda!389834))))

(assert (=> bs!1838527 (not (= lambda!389837 lambda!389830))))

(declare-fun bs!1838529 () Bool)

(assert (= bs!1838529 (and d!2160403 b!6884663)))

(assert (=> bs!1838529 (not (= lambda!389837 lambda!389811))))

(assert (=> d!2160403 true))

(assert (=> d!2160403 true))

(assert (=> d!2160403 true))

(assert (=> d!2160403 (= (isDefined!13266 (findConcatSeparation!2977 lt!2460495 r3!135 Nil!66411 s!14361 s!14361)) (Exists!3790 lambda!389837))))

(declare-fun lt!2460575 () Unit!160276)

(assert (=> d!2160403 (= lt!2460575 (choose!51275 lt!2460495 r3!135 s!14361))))

(assert (=> d!2160403 (validRegex!8486 lt!2460495)))

(assert (=> d!2160403 (= (lemmaFindConcatSeparationEquivalentToExists!2741 lt!2460495 r3!135 s!14361) lt!2460575)))

(declare-fun bs!1838530 () Bool)

(assert (= bs!1838530 d!2160403))

(assert (=> bs!1838530 m!7608016))

(assert (=> bs!1838530 m!7608218))

(declare-fun m!7608284 () Bool)

(assert (=> bs!1838530 m!7608284))

(assert (=> bs!1838530 m!7608016))

(declare-fun m!7608286 () Bool)

(assert (=> bs!1838530 m!7608286))

(declare-fun m!7608288 () Bool)

(assert (=> bs!1838530 m!7608288))

(assert (=> b!6884451 d!2160403))

(declare-fun d!2160405 () Bool)

(assert (=> d!2160405 (= (Exists!3790 lambda!389787) (choose!51277 lambda!389787))))

(declare-fun bs!1838531 () Bool)

(assert (= bs!1838531 d!2160405))

(declare-fun m!7608290 () Bool)

(assert (=> bs!1838531 m!7608290))

(assert (=> b!6884451 d!2160405))

(declare-fun d!2160407 () Bool)

(assert (=> d!2160407 (= (isDefined!13266 lt!2460491) (not (isEmpty!38681 lt!2460491)))))

(declare-fun bs!1838532 () Bool)

(assert (= bs!1838532 d!2160407))

(declare-fun m!7608292 () Bool)

(assert (=> bs!1838532 m!7608292))

(assert (=> b!6884451 d!2160407))

(declare-fun b!6884889 () Bool)

(declare-fun e!4148459 () Bool)

(declare-fun tp!1893811 () Bool)

(declare-fun tp!1893813 () Bool)

(assert (=> b!6884889 (= e!4148459 (and tp!1893811 tp!1893813))))

(declare-fun b!6884887 () Bool)

(declare-fun tp!1893814 () Bool)

(declare-fun tp!1893810 () Bool)

(assert (=> b!6884887 (= e!4148459 (and tp!1893814 tp!1893810))))

(declare-fun b!6884886 () Bool)

(assert (=> b!6884886 (= e!4148459 tp_is_empty!42781)))

(declare-fun b!6884888 () Bool)

(declare-fun tp!1893812 () Bool)

(assert (=> b!6884888 (= e!4148459 tp!1893812)))

(assert (=> b!6884454 (= tp!1893750 e!4148459)))

(assert (= (and b!6884454 (is-ElementMatch!16778 (reg!17107 r3!135))) b!6884886))

(assert (= (and b!6884454 (is-Concat!25623 (reg!17107 r3!135))) b!6884887))

(assert (= (and b!6884454 (is-Star!16778 (reg!17107 r3!135))) b!6884888))

(assert (= (and b!6884454 (is-Union!16778 (reg!17107 r3!135))) b!6884889))

(declare-fun b!6884893 () Bool)

(declare-fun e!4148460 () Bool)

(declare-fun tp!1893816 () Bool)

(declare-fun tp!1893818 () Bool)

(assert (=> b!6884893 (= e!4148460 (and tp!1893816 tp!1893818))))

(declare-fun b!6884891 () Bool)

(declare-fun tp!1893819 () Bool)

(declare-fun tp!1893815 () Bool)

(assert (=> b!6884891 (= e!4148460 (and tp!1893819 tp!1893815))))

(declare-fun b!6884890 () Bool)

(assert (=> b!6884890 (= e!4148460 tp_is_empty!42781)))

(declare-fun b!6884892 () Bool)

(declare-fun tp!1893817 () Bool)

(assert (=> b!6884892 (= e!4148460 tp!1893817)))

(assert (=> b!6884449 (= tp!1893751 e!4148460)))

(assert (= (and b!6884449 (is-ElementMatch!16778 (regOne!34069 r3!135))) b!6884890))

(assert (= (and b!6884449 (is-Concat!25623 (regOne!34069 r3!135))) b!6884891))

(assert (= (and b!6884449 (is-Star!16778 (regOne!34069 r3!135))) b!6884892))

(assert (= (and b!6884449 (is-Union!16778 (regOne!34069 r3!135))) b!6884893))

(declare-fun b!6884897 () Bool)

(declare-fun e!4148461 () Bool)

(declare-fun tp!1893821 () Bool)

(declare-fun tp!1893823 () Bool)

(assert (=> b!6884897 (= e!4148461 (and tp!1893821 tp!1893823))))

(declare-fun b!6884895 () Bool)

(declare-fun tp!1893824 () Bool)

(declare-fun tp!1893820 () Bool)

(assert (=> b!6884895 (= e!4148461 (and tp!1893824 tp!1893820))))

(declare-fun b!6884894 () Bool)

(assert (=> b!6884894 (= e!4148461 tp_is_empty!42781)))

(declare-fun b!6884896 () Bool)

(declare-fun tp!1893822 () Bool)

(assert (=> b!6884896 (= e!4148461 tp!1893822)))

(assert (=> b!6884449 (= tp!1893738 e!4148461)))

(assert (= (and b!6884449 (is-ElementMatch!16778 (regTwo!34069 r3!135))) b!6884894))

(assert (= (and b!6884449 (is-Concat!25623 (regTwo!34069 r3!135))) b!6884895))

(assert (= (and b!6884449 (is-Star!16778 (regTwo!34069 r3!135))) b!6884896))

(assert (= (and b!6884449 (is-Union!16778 (regTwo!34069 r3!135))) b!6884897))

(declare-fun b!6884901 () Bool)

(declare-fun e!4148462 () Bool)

(declare-fun tp!1893826 () Bool)

(declare-fun tp!1893828 () Bool)

(assert (=> b!6884901 (= e!4148462 (and tp!1893826 tp!1893828))))

(declare-fun b!6884899 () Bool)

(declare-fun tp!1893829 () Bool)

(declare-fun tp!1893825 () Bool)

(assert (=> b!6884899 (= e!4148462 (and tp!1893829 tp!1893825))))

(declare-fun b!6884898 () Bool)

(assert (=> b!6884898 (= e!4148462 tp_is_empty!42781)))

(declare-fun b!6884900 () Bool)

(declare-fun tp!1893827 () Bool)

(assert (=> b!6884900 (= e!4148462 tp!1893827)))

(assert (=> b!6884465 (= tp!1893737 e!4148462)))

(assert (= (and b!6884465 (is-ElementMatch!16778 (regOne!34069 r2!6280))) b!6884898))

(assert (= (and b!6884465 (is-Concat!25623 (regOne!34069 r2!6280))) b!6884899))

(assert (= (and b!6884465 (is-Star!16778 (regOne!34069 r2!6280))) b!6884900))

(assert (= (and b!6884465 (is-Union!16778 (regOne!34069 r2!6280))) b!6884901))

(declare-fun b!6884905 () Bool)

(declare-fun e!4148463 () Bool)

(declare-fun tp!1893831 () Bool)

(declare-fun tp!1893833 () Bool)

(assert (=> b!6884905 (= e!4148463 (and tp!1893831 tp!1893833))))

(declare-fun b!6884903 () Bool)

(declare-fun tp!1893834 () Bool)

(declare-fun tp!1893830 () Bool)

(assert (=> b!6884903 (= e!4148463 (and tp!1893834 tp!1893830))))

(declare-fun b!6884902 () Bool)

(assert (=> b!6884902 (= e!4148463 tp_is_empty!42781)))

(declare-fun b!6884904 () Bool)

(declare-fun tp!1893832 () Bool)

(assert (=> b!6884904 (= e!4148463 tp!1893832)))

(assert (=> b!6884465 (= tp!1893747 e!4148463)))

(assert (= (and b!6884465 (is-ElementMatch!16778 (regTwo!34069 r2!6280))) b!6884902))

(assert (= (and b!6884465 (is-Concat!25623 (regTwo!34069 r2!6280))) b!6884903))

(assert (= (and b!6884465 (is-Star!16778 (regTwo!34069 r2!6280))) b!6884904))

(assert (= (and b!6884465 (is-Union!16778 (regTwo!34069 r2!6280))) b!6884905))

(declare-fun b!6884909 () Bool)

(declare-fun e!4148464 () Bool)

(declare-fun tp!1893836 () Bool)

(declare-fun tp!1893838 () Bool)

(assert (=> b!6884909 (= e!4148464 (and tp!1893836 tp!1893838))))

(declare-fun b!6884907 () Bool)

(declare-fun tp!1893839 () Bool)

(declare-fun tp!1893835 () Bool)

(assert (=> b!6884907 (= e!4148464 (and tp!1893839 tp!1893835))))

(declare-fun b!6884906 () Bool)

(assert (=> b!6884906 (= e!4148464 tp_is_empty!42781)))

(declare-fun b!6884908 () Bool)

(declare-fun tp!1893837 () Bool)

(assert (=> b!6884908 (= e!4148464 tp!1893837)))

(assert (=> b!6884448 (= tp!1893748 e!4148464)))

(assert (= (and b!6884448 (is-ElementMatch!16778 (regOne!34068 r2!6280))) b!6884906))

(assert (= (and b!6884448 (is-Concat!25623 (regOne!34068 r2!6280))) b!6884907))

(assert (= (and b!6884448 (is-Star!16778 (regOne!34068 r2!6280))) b!6884908))

(assert (= (and b!6884448 (is-Union!16778 (regOne!34068 r2!6280))) b!6884909))

(declare-fun b!6884913 () Bool)

(declare-fun e!4148465 () Bool)

(declare-fun tp!1893841 () Bool)

(declare-fun tp!1893843 () Bool)

(assert (=> b!6884913 (= e!4148465 (and tp!1893841 tp!1893843))))

(declare-fun b!6884911 () Bool)

(declare-fun tp!1893844 () Bool)

(declare-fun tp!1893840 () Bool)

(assert (=> b!6884911 (= e!4148465 (and tp!1893844 tp!1893840))))

(declare-fun b!6884910 () Bool)

(assert (=> b!6884910 (= e!4148465 tp_is_empty!42781)))

(declare-fun b!6884912 () Bool)

(declare-fun tp!1893842 () Bool)

(assert (=> b!6884912 (= e!4148465 tp!1893842)))

(assert (=> b!6884448 (= tp!1893744 e!4148465)))

(assert (= (and b!6884448 (is-ElementMatch!16778 (regTwo!34068 r2!6280))) b!6884910))

(assert (= (and b!6884448 (is-Concat!25623 (regTwo!34068 r2!6280))) b!6884911))

(assert (= (and b!6884448 (is-Star!16778 (regTwo!34068 r2!6280))) b!6884912))

(assert (= (and b!6884448 (is-Union!16778 (regTwo!34068 r2!6280))) b!6884913))

(declare-fun b!6884917 () Bool)

(declare-fun e!4148466 () Bool)

(declare-fun tp!1893846 () Bool)

(declare-fun tp!1893848 () Bool)

(assert (=> b!6884917 (= e!4148466 (and tp!1893846 tp!1893848))))

(declare-fun b!6884915 () Bool)

(declare-fun tp!1893849 () Bool)

(declare-fun tp!1893845 () Bool)

(assert (=> b!6884915 (= e!4148466 (and tp!1893849 tp!1893845))))

(declare-fun b!6884914 () Bool)

(assert (=> b!6884914 (= e!4148466 tp_is_empty!42781)))

(declare-fun b!6884916 () Bool)

(declare-fun tp!1893847 () Bool)

(assert (=> b!6884916 (= e!4148466 tp!1893847)))

(assert (=> b!6884459 (= tp!1893743 e!4148466)))

(assert (= (and b!6884459 (is-ElementMatch!16778 (reg!17107 r2!6280))) b!6884914))

(assert (= (and b!6884459 (is-Concat!25623 (reg!17107 r2!6280))) b!6884915))

(assert (= (and b!6884459 (is-Star!16778 (reg!17107 r2!6280))) b!6884916))

(assert (= (and b!6884459 (is-Union!16778 (reg!17107 r2!6280))) b!6884917))

(declare-fun b!6884921 () Bool)

(declare-fun e!4148467 () Bool)

(declare-fun tp!1893851 () Bool)

(declare-fun tp!1893853 () Bool)

(assert (=> b!6884921 (= e!4148467 (and tp!1893851 tp!1893853))))

(declare-fun b!6884919 () Bool)

(declare-fun tp!1893854 () Bool)

(declare-fun tp!1893850 () Bool)

(assert (=> b!6884919 (= e!4148467 (and tp!1893854 tp!1893850))))

(declare-fun b!6884918 () Bool)

(assert (=> b!6884918 (= e!4148467 tp_is_empty!42781)))

(declare-fun b!6884920 () Bool)

(declare-fun tp!1893852 () Bool)

(assert (=> b!6884920 (= e!4148467 tp!1893852)))

(assert (=> b!6884461 (= tp!1893749 e!4148467)))

(assert (= (and b!6884461 (is-ElementMatch!16778 (regOne!34069 r1!6342))) b!6884918))

(assert (= (and b!6884461 (is-Concat!25623 (regOne!34069 r1!6342))) b!6884919))

(assert (= (and b!6884461 (is-Star!16778 (regOne!34069 r1!6342))) b!6884920))

(assert (= (and b!6884461 (is-Union!16778 (regOne!34069 r1!6342))) b!6884921))

(declare-fun b!6884925 () Bool)

(declare-fun e!4148468 () Bool)

(declare-fun tp!1893856 () Bool)

(declare-fun tp!1893858 () Bool)

(assert (=> b!6884925 (= e!4148468 (and tp!1893856 tp!1893858))))

(declare-fun b!6884923 () Bool)

(declare-fun tp!1893859 () Bool)

(declare-fun tp!1893855 () Bool)

(assert (=> b!6884923 (= e!4148468 (and tp!1893859 tp!1893855))))

(declare-fun b!6884922 () Bool)

(assert (=> b!6884922 (= e!4148468 tp_is_empty!42781)))

(declare-fun b!6884924 () Bool)

(declare-fun tp!1893857 () Bool)

(assert (=> b!6884924 (= e!4148468 tp!1893857)))

(assert (=> b!6884461 (= tp!1893739 e!4148468)))

(assert (= (and b!6884461 (is-ElementMatch!16778 (regTwo!34069 r1!6342))) b!6884922))

(assert (= (and b!6884461 (is-Concat!25623 (regTwo!34069 r1!6342))) b!6884923))

(assert (= (and b!6884461 (is-Star!16778 (regTwo!34069 r1!6342))) b!6884924))

(assert (= (and b!6884461 (is-Union!16778 (regTwo!34069 r1!6342))) b!6884925))

(declare-fun b!6884929 () Bool)

(declare-fun e!4148469 () Bool)

(declare-fun tp!1893861 () Bool)

(declare-fun tp!1893863 () Bool)

(assert (=> b!6884929 (= e!4148469 (and tp!1893861 tp!1893863))))

(declare-fun b!6884927 () Bool)

(declare-fun tp!1893864 () Bool)

(declare-fun tp!1893860 () Bool)

(assert (=> b!6884927 (= e!4148469 (and tp!1893864 tp!1893860))))

(declare-fun b!6884926 () Bool)

(assert (=> b!6884926 (= e!4148469 tp_is_empty!42781)))

(declare-fun b!6884928 () Bool)

(declare-fun tp!1893862 () Bool)

(assert (=> b!6884928 (= e!4148469 tp!1893862)))

(assert (=> b!6884462 (= tp!1893746 e!4148469)))

(assert (= (and b!6884462 (is-ElementMatch!16778 (regOne!34068 r3!135))) b!6884926))

(assert (= (and b!6884462 (is-Concat!25623 (regOne!34068 r3!135))) b!6884927))

(assert (= (and b!6884462 (is-Star!16778 (regOne!34068 r3!135))) b!6884928))

(assert (= (and b!6884462 (is-Union!16778 (regOne!34068 r3!135))) b!6884929))

(declare-fun b!6884933 () Bool)

(declare-fun e!4148470 () Bool)

(declare-fun tp!1893866 () Bool)

(declare-fun tp!1893868 () Bool)

(assert (=> b!6884933 (= e!4148470 (and tp!1893866 tp!1893868))))

(declare-fun b!6884931 () Bool)

(declare-fun tp!1893869 () Bool)

(declare-fun tp!1893865 () Bool)

(assert (=> b!6884931 (= e!4148470 (and tp!1893869 tp!1893865))))

(declare-fun b!6884930 () Bool)

(assert (=> b!6884930 (= e!4148470 tp_is_empty!42781)))

(declare-fun b!6884932 () Bool)

(declare-fun tp!1893867 () Bool)

(assert (=> b!6884932 (= e!4148470 tp!1893867)))

(assert (=> b!6884462 (= tp!1893741 e!4148470)))

(assert (= (and b!6884462 (is-ElementMatch!16778 (regTwo!34068 r3!135))) b!6884930))

(assert (= (and b!6884462 (is-Concat!25623 (regTwo!34068 r3!135))) b!6884931))

(assert (= (and b!6884462 (is-Star!16778 (regTwo!34068 r3!135))) b!6884932))

(assert (= (and b!6884462 (is-Union!16778 (regTwo!34068 r3!135))) b!6884933))

(declare-fun b!6884937 () Bool)

(declare-fun e!4148471 () Bool)

(declare-fun tp!1893871 () Bool)

(declare-fun tp!1893873 () Bool)

(assert (=> b!6884937 (= e!4148471 (and tp!1893871 tp!1893873))))

(declare-fun b!6884935 () Bool)

(declare-fun tp!1893874 () Bool)

(declare-fun tp!1893870 () Bool)

(assert (=> b!6884935 (= e!4148471 (and tp!1893874 tp!1893870))))

(declare-fun b!6884934 () Bool)

(assert (=> b!6884934 (= e!4148471 tp_is_empty!42781)))

(declare-fun b!6884936 () Bool)

(declare-fun tp!1893872 () Bool)

(assert (=> b!6884936 (= e!4148471 tp!1893872)))

(assert (=> b!6884457 (= tp!1893740 e!4148471)))

(assert (= (and b!6884457 (is-ElementMatch!16778 (reg!17107 r1!6342))) b!6884934))

(assert (= (and b!6884457 (is-Concat!25623 (reg!17107 r1!6342))) b!6884935))

(assert (= (and b!6884457 (is-Star!16778 (reg!17107 r1!6342))) b!6884936))

(assert (= (and b!6884457 (is-Union!16778 (reg!17107 r1!6342))) b!6884937))

(declare-fun b!6884942 () Bool)

(declare-fun e!4148474 () Bool)

(declare-fun tp!1893877 () Bool)

(assert (=> b!6884942 (= e!4148474 (and tp_is_empty!42781 tp!1893877))))

(assert (=> b!6884456 (= tp!1893736 e!4148474)))

(assert (= (and b!6884456 (is-Cons!66411 (t!380278 s!14361))) b!6884942))

(declare-fun b!6884946 () Bool)

(declare-fun e!4148475 () Bool)

(declare-fun tp!1893879 () Bool)

(declare-fun tp!1893881 () Bool)

(assert (=> b!6884946 (= e!4148475 (and tp!1893879 tp!1893881))))

(declare-fun b!6884944 () Bool)

(declare-fun tp!1893882 () Bool)

(declare-fun tp!1893878 () Bool)

(assert (=> b!6884944 (= e!4148475 (and tp!1893882 tp!1893878))))

(declare-fun b!6884943 () Bool)

(assert (=> b!6884943 (= e!4148475 tp_is_empty!42781)))

(declare-fun b!6884945 () Bool)

(declare-fun tp!1893880 () Bool)

(assert (=> b!6884945 (= e!4148475 tp!1893880)))

(assert (=> b!6884463 (= tp!1893742 e!4148475)))

(assert (= (and b!6884463 (is-ElementMatch!16778 (regOne!34068 r1!6342))) b!6884943))

(assert (= (and b!6884463 (is-Concat!25623 (regOne!34068 r1!6342))) b!6884944))

(assert (= (and b!6884463 (is-Star!16778 (regOne!34068 r1!6342))) b!6884945))

(assert (= (and b!6884463 (is-Union!16778 (regOne!34068 r1!6342))) b!6884946))

(declare-fun b!6884950 () Bool)

(declare-fun e!4148476 () Bool)

(declare-fun tp!1893884 () Bool)

(declare-fun tp!1893886 () Bool)

(assert (=> b!6884950 (= e!4148476 (and tp!1893884 tp!1893886))))

(declare-fun b!6884948 () Bool)

(declare-fun tp!1893887 () Bool)

(declare-fun tp!1893883 () Bool)

(assert (=> b!6884948 (= e!4148476 (and tp!1893887 tp!1893883))))

(declare-fun b!6884947 () Bool)

(assert (=> b!6884947 (= e!4148476 tp_is_empty!42781)))

(declare-fun b!6884949 () Bool)

(declare-fun tp!1893885 () Bool)

(assert (=> b!6884949 (= e!4148476 tp!1893885)))

(assert (=> b!6884463 (= tp!1893745 e!4148476)))

(assert (= (and b!6884463 (is-ElementMatch!16778 (regTwo!34068 r1!6342))) b!6884947))

(assert (= (and b!6884463 (is-Concat!25623 (regTwo!34068 r1!6342))) b!6884948))

(assert (= (and b!6884463 (is-Star!16778 (regTwo!34068 r1!6342))) b!6884949))

(assert (= (and b!6884463 (is-Union!16778 (regTwo!34068 r1!6342))) b!6884950))

(push 1)

(assert (not b!6884915))

(assert (not b!6884872))

(assert (not b!6884911))

(assert (not b!6884684))

(assert (not d!2160405))

(assert (not d!2160363))

(assert (not d!2160365))

(assert (not b!6884945))

(assert (not bm!626702))

(assert (not b!6884893))

(assert (not b!6884677))

(assert (not b!6884849))

(assert (not b!6884874))

(assert (not b!6884948))

(assert (not bm!626683))

(assert (not b!6884928))

(assert (not d!2160369))

(assert (not b!6884875))

(assert (not b!6884916))

(assert (not b!6884887))

(assert (not d!2160353))

(assert (not d!2160403))

(assert (not bm!626694))

(assert (not b!6884844))

(assert (not b!6884691))

(assert (not b!6884588))

(assert (not bm!626681))

(assert (not bm!626710))

(assert (not d!2160359))

(assert (not b!6884812))

(assert (not b!6884694))

(assert (not b!6884901))

(assert (not b!6884589))

(assert (not b!6884942))

(assert (not b!6884936))

(assert (not d!2160371))

(assert (not bm!626700))

(assert (not b!6884919))

(assert (not bm!626667))

(assert (not b!6884935))

(assert (not d!2160389))

(assert (not b!6884811))

(assert (not b!6884927))

(assert (not b!6884781))

(assert (not bm!626709))

(assert (not d!2160381))

(assert (not b!6884673))

(assert (not b!6884848))

(assert (not b!6884900))

(assert (not b!6884917))

(assert (not bm!626708))

(assert (not b!6884666))

(assert (not b!6884949))

(assert (not bm!626685))

(assert (not b!6884669))

(assert (not b!6884600))

(assert (not b!6884856))

(assert (not b!6884598))

(assert (not d!2160401))

(assert (not d!2160373))

(assert (not b!6884682))

(assert (not b!6884904))

(assert (not b!6884921))

(assert (not b!6884931))

(assert (not bm!626705))

(assert (not b!6884897))

(assert (not b!6884859))

(assert (not d!2160351))

(assert (not b!6884924))

(assert (not b!6884785))

(assert (not b!6884920))

(assert (not b!6884909))

(assert (not b!6884862))

(assert tp_is_empty!42781)

(assert (not b!6884929))

(assert (not b!6884786))

(assert (not b!6884863))

(assert (not b!6884809))

(assert (not bm!626707))

(assert (not b!6884867))

(assert (not bm!626684))

(assert (not bm!626692))

(assert (not d!2160379))

(assert (not b!6884780))

(assert (not b!6884937))

(assert (not b!6884899))

(assert (not b!6884892))

(assert (not b!6884932))

(assert (not b!6884891))

(assert (not b!6884804))

(assert (not b!6884593))

(assert (not b!6884933))

(assert (not d!2160341))

(assert (not d!2160407))

(assert (not b!6884850))

(assert (not b!6884913))

(assert (not b!6884840))

(assert (not b!6884888))

(assert (not b!6884845))

(assert (not d!2160367))

(assert (not b!6884925))

(assert (not b!6884896))

(assert (not b!6884782))

(assert (not b!6884950))

(assert (not b!6884944))

(assert (not d!2160343))

(assert (not b!6884601))

(assert (not bm!626699))

(assert (not b!6884903))

(assert (not b!6884672))

(assert (not b!6884800))

(assert (not b!6884820))

(assert (not b!6884685))

(assert (not b!6884846))

(assert (not b!6884799))

(assert (not b!6884784))

(assert (not b!6884905))

(assert (not b!6884722))

(assert (not d!2160391))

(assert (not b!6884907))

(assert (not b!6884889))

(assert (not b!6884912))

(assert (not b!6884908))

(assert (not b!6884895))

(assert (not b!6884946))

(assert (not b!6884923))

(assert (not bm!626682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

