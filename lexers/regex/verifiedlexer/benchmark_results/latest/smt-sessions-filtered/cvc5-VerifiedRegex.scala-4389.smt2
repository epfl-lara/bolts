; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!233258 () Bool)

(assert start!233258)

(declare-fun b!2377221 () Bool)

(assert (=> b!2377221 true))

(assert (=> b!2377221 true))

(declare-fun lambda!88372 () Int)

(declare-fun lambda!88371 () Int)

(assert (=> b!2377221 (not (= lambda!88372 lambda!88371))))

(assert (=> b!2377221 true))

(assert (=> b!2377221 true))

(declare-fun b!2377217 () Bool)

(declare-fun e!1516608 () Bool)

(declare-fun tp!759296 () Bool)

(declare-fun tp!759290 () Bool)

(assert (=> b!2377217 (= e!1516608 (and tp!759296 tp!759290))))

(declare-fun b!2377218 () Bool)

(declare-fun e!1516609 () Bool)

(declare-fun tp_is_empty!11353 () Bool)

(declare-fun tp!759294 () Bool)

(assert (=> b!2377218 (= e!1516609 (and tp_is_empty!11353 tp!759294))))

(declare-fun b!2377219 () Bool)

(declare-fun tp!759295 () Bool)

(declare-fun tp!759291 () Bool)

(assert (=> b!2377219 (= e!1516608 (and tp!759295 tp!759291))))

(declare-fun b!2377220 () Bool)

(declare-fun e!1516605 () Bool)

(declare-fun tp!759293 () Bool)

(declare-fun tp!759297 () Bool)

(assert (=> b!2377220 (= e!1516605 (and tp!759293 tp!759297))))

(declare-fun e!1516603 () Bool)

(declare-fun e!1516602 () Bool)

(assert (=> b!2377221 (= e!1516603 e!1516602)))

(declare-fun res!1009413 () Bool)

(assert (=> b!2377221 (=> res!1009413 e!1516602)))

(declare-fun lt!867366 () Bool)

(declare-fun lt!867372 () Bool)

(assert (=> b!2377221 (= res!1009413 (not (= lt!867366 lt!867372)))))

(declare-fun Exists!1032 (Int) Bool)

(assert (=> b!2377221 (= (Exists!1032 lambda!88371) (Exists!1032 lambda!88372))))

(declare-datatypes ((Unit!40975 0))(
  ( (Unit!40976) )
))
(declare-fun lt!867367 () Unit!40975)

(declare-datatypes ((C!14098 0))(
  ( (C!14099 (val!8291 Int)) )
))
(declare-datatypes ((Regex!6970 0))(
  ( (ElementMatch!6970 (c!377853 C!14098)) (Concat!11606 (regOne!14452 Regex!6970) (regTwo!14452 Regex!6970)) (EmptyExpr!6970) (Star!6970 (reg!7299 Regex!6970)) (EmptyLang!6970) (Union!6970 (regOne!14453 Regex!6970) (regTwo!14453 Regex!6970)) )
))
(declare-fun r!13927 () Regex!6970)

(declare-datatypes ((List!28178 0))(
  ( (Nil!28080) (Cons!28080 (h!33481 C!14098) (t!208155 List!28178)) )
))
(declare-fun s!9460 () List!28178)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!371 (Regex!6970 Regex!6970 List!28178) Unit!40975)

(assert (=> b!2377221 (= lt!867367 (lemmaExistCutMatchRandMatchRSpecEquivalent!371 (regOne!14452 r!13927) (regTwo!14452 r!13927) s!9460))))

(assert (=> b!2377221 (= lt!867372 (Exists!1032 lambda!88371))))

(declare-datatypes ((tuple2!27804 0))(
  ( (tuple2!27805 (_1!16443 List!28178) (_2!16443 List!28178)) )
))
(declare-datatypes ((Option!5513 0))(
  ( (None!5512) (Some!5512 (v!30920 tuple2!27804)) )
))
(declare-fun isDefined!4341 (Option!5513) Bool)

(declare-fun findConcatSeparation!621 (Regex!6970 Regex!6970 List!28178 List!28178 List!28178) Option!5513)

(assert (=> b!2377221 (= lt!867372 (isDefined!4341 (findConcatSeparation!621 (regOne!14452 r!13927) (regTwo!14452 r!13927) Nil!28080 s!9460 s!9460)))))

(declare-fun lt!867365 () Unit!40975)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!621 (Regex!6970 Regex!6970 List!28178) Unit!40975)

(assert (=> b!2377221 (= lt!867365 (lemmaFindConcatSeparationEquivalentToExists!621 (regOne!14452 r!13927) (regTwo!14452 r!13927) s!9460))))

(declare-fun res!1009408 () Bool)

(declare-fun e!1516610 () Bool)

(assert (=> start!233258 (=> (not res!1009408) (not e!1516610))))

(declare-datatypes ((List!28179 0))(
  ( (Nil!28081) (Cons!28081 (h!33482 Regex!6970) (t!208156 List!28179)) )
))
(declare-fun l!9164 () List!28179)

(declare-fun lambda!88370 () Int)

(declare-fun forall!5604 (List!28179 Int) Bool)

(assert (=> start!233258 (= res!1009408 (forall!5604 l!9164 lambda!88370))))

(assert (=> start!233258 e!1516610))

(assert (=> start!233258 e!1516605))

(assert (=> start!233258 e!1516608))

(assert (=> start!233258 e!1516609))

(declare-fun b!2377222 () Bool)

(assert (=> b!2377222 (= e!1516610 (not e!1516603))))

(declare-fun res!1009409 () Bool)

(assert (=> b!2377222 (=> res!1009409 e!1516603)))

(assert (=> b!2377222 (= res!1009409 (not (is-Concat!11606 r!13927)))))

(declare-fun lt!867370 () Bool)

(assert (=> b!2377222 (= lt!867370 lt!867366)))

(declare-fun matchRSpec!819 (Regex!6970 List!28178) Bool)

(assert (=> b!2377222 (= lt!867366 (matchRSpec!819 r!13927 s!9460))))

(declare-fun matchR!3087 (Regex!6970 List!28178) Bool)

(assert (=> b!2377222 (= lt!867370 (matchR!3087 r!13927 s!9460))))

(declare-fun lt!867377 () Unit!40975)

(declare-fun mainMatchTheorem!819 (Regex!6970 List!28178) Unit!40975)

(assert (=> b!2377222 (= lt!867377 (mainMatchTheorem!819 r!13927 s!9460))))

(declare-fun b!2377223 () Bool)

(declare-fun res!1009411 () Bool)

(assert (=> b!2377223 (=> res!1009411 e!1516602)))

(declare-fun isEmpty!16020 (List!28179) Bool)

(assert (=> b!2377223 (= res!1009411 (isEmpty!16020 l!9164))))

(declare-fun b!2377224 () Bool)

(declare-fun e!1516601 () Unit!40975)

(declare-fun Unit!40977 () Unit!40975)

(assert (=> b!2377224 (= e!1516601 Unit!40977)))

(declare-fun lt!867368 () tuple2!27804)

(declare-fun lt!867376 () Option!5513)

(declare-fun get!8554 (Option!5513) tuple2!27804)

(assert (=> b!2377224 (= lt!867368 (get!8554 lt!867376))))

(declare-fun lt!867371 () Regex!6970)

(declare-fun lt!867375 () Unit!40975)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!1 (Regex!6970 Regex!6970 List!28178 List!28178 List!28178) Unit!40975)

(assert (=> b!2377224 (= lt!867375 (lemmaFindSeparationIsDefinedThenConcatMatches!1 lt!867371 EmptyExpr!6970 (_1!16443 lt!867368) (_2!16443 lt!867368) s!9460))))

(declare-fun res!1009407 () Bool)

(declare-fun ++!6925 (List!28178 List!28178) List!28178)

(assert (=> b!2377224 (= res!1009407 (matchR!3087 (Concat!11606 lt!867371 EmptyExpr!6970) (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368))))))

(declare-fun e!1516607 () Bool)

(assert (=> b!2377224 (=> (not res!1009407) (not e!1516607))))

(assert (=> b!2377224 e!1516607))

(declare-fun b!2377225 () Bool)

(assert (=> b!2377225 (= e!1516607 false)))

(declare-fun b!2377226 () Bool)

(declare-fun e!1516604 () Bool)

(declare-fun e!1516606 () Bool)

(assert (=> b!2377226 (= e!1516604 e!1516606)))

(declare-fun res!1009412 () Bool)

(assert (=> b!2377226 (=> res!1009412 e!1516606)))

(assert (=> b!2377226 (= res!1009412 (matchR!3087 lt!867371 s!9460))))

(declare-fun head!5173 (List!28179) Regex!6970)

(assert (=> b!2377226 (= lt!867371 (head!5173 l!9164))))

(declare-fun b!2377227 () Bool)

(declare-fun tp!759292 () Bool)

(assert (=> b!2377227 (= e!1516608 tp!759292)))

(declare-fun b!2377228 () Bool)

(assert (=> b!2377228 (= e!1516602 e!1516604)))

(declare-fun res!1009414 () Bool)

(assert (=> b!2377228 (=> res!1009414 e!1516604)))

(declare-fun lt!867374 () List!28179)

(assert (=> b!2377228 (= res!1009414 (not (isEmpty!16020 lt!867374)))))

(declare-fun tail!3443 (List!28179) List!28179)

(assert (=> b!2377228 (= lt!867374 (tail!3443 l!9164))))

(declare-fun b!2377229 () Bool)

(declare-fun Unit!40978 () Unit!40975)

(assert (=> b!2377229 (= e!1516601 Unit!40978)))

(declare-fun b!2377230 () Bool)

(assert (=> b!2377230 (= e!1516606 (not (= l!9164 Nil!28081)))))

(declare-fun lt!867369 () Bool)

(assert (=> b!2377230 (not lt!867369)))

(declare-fun lt!867373 () Unit!40975)

(assert (=> b!2377230 (= lt!867373 e!1516601)))

(declare-fun c!377852 () Bool)

(assert (=> b!2377230 (= c!377852 lt!867369)))

(assert (=> b!2377230 (= lt!867369 (isDefined!4341 lt!867376))))

(assert (=> b!2377230 (= lt!867376 (findConcatSeparation!621 lt!867371 EmptyExpr!6970 Nil!28080 s!9460 s!9460))))

(declare-fun b!2377231 () Bool)

(assert (=> b!2377231 (= e!1516608 tp_is_empty!11353)))

(declare-fun b!2377232 () Bool)

(declare-fun res!1009410 () Bool)

(assert (=> b!2377232 (=> res!1009410 e!1516604)))

(declare-fun generalisedConcat!71 (List!28179) Regex!6970)

(assert (=> b!2377232 (= res!1009410 (not (= (generalisedConcat!71 lt!867374) EmptyExpr!6970)))))

(declare-fun b!2377233 () Bool)

(declare-fun res!1009415 () Bool)

(assert (=> b!2377233 (=> (not res!1009415) (not e!1516610))))

(assert (=> b!2377233 (= res!1009415 (= r!13927 (generalisedConcat!71 l!9164)))))

(assert (= (and start!233258 res!1009408) b!2377233))

(assert (= (and b!2377233 res!1009415) b!2377222))

(assert (= (and b!2377222 (not res!1009409)) b!2377221))

(assert (= (and b!2377221 (not res!1009413)) b!2377223))

(assert (= (and b!2377223 (not res!1009411)) b!2377228))

(assert (= (and b!2377228 (not res!1009414)) b!2377232))

(assert (= (and b!2377232 (not res!1009410)) b!2377226))

(assert (= (and b!2377226 (not res!1009412)) b!2377230))

(assert (= (and b!2377230 c!377852) b!2377224))

(assert (= (and b!2377230 (not c!377852)) b!2377229))

(assert (= (and b!2377224 res!1009407) b!2377225))

(assert (= (and start!233258 (is-Cons!28081 l!9164)) b!2377220))

(assert (= (and start!233258 (is-ElementMatch!6970 r!13927)) b!2377231))

(assert (= (and start!233258 (is-Concat!11606 r!13927)) b!2377219))

(assert (= (and start!233258 (is-Star!6970 r!13927)) b!2377227))

(assert (= (and start!233258 (is-Union!6970 r!13927)) b!2377217))

(assert (= (and start!233258 (is-Cons!28080 s!9460)) b!2377218))

(declare-fun m!2782375 () Bool)

(assert (=> b!2377224 m!2782375))

(declare-fun m!2782377 () Bool)

(assert (=> b!2377224 m!2782377))

(declare-fun m!2782379 () Bool)

(assert (=> b!2377224 m!2782379))

(assert (=> b!2377224 m!2782379))

(declare-fun m!2782381 () Bool)

(assert (=> b!2377224 m!2782381))

(declare-fun m!2782383 () Bool)

(assert (=> b!2377232 m!2782383))

(declare-fun m!2782385 () Bool)

(assert (=> b!2377223 m!2782385))

(declare-fun m!2782387 () Bool)

(assert (=> b!2377233 m!2782387))

(declare-fun m!2782389 () Bool)

(assert (=> b!2377228 m!2782389))

(declare-fun m!2782391 () Bool)

(assert (=> b!2377228 m!2782391))

(declare-fun m!2782393 () Bool)

(assert (=> b!2377222 m!2782393))

(declare-fun m!2782395 () Bool)

(assert (=> b!2377222 m!2782395))

(declare-fun m!2782397 () Bool)

(assert (=> b!2377222 m!2782397))

(declare-fun m!2782399 () Bool)

(assert (=> b!2377226 m!2782399))

(declare-fun m!2782401 () Bool)

(assert (=> b!2377226 m!2782401))

(declare-fun m!2782403 () Bool)

(assert (=> start!233258 m!2782403))

(declare-fun m!2782405 () Bool)

(assert (=> b!2377230 m!2782405))

(declare-fun m!2782407 () Bool)

(assert (=> b!2377230 m!2782407))

(declare-fun m!2782409 () Bool)

(assert (=> b!2377221 m!2782409))

(declare-fun m!2782411 () Bool)

(assert (=> b!2377221 m!2782411))

(declare-fun m!2782413 () Bool)

(assert (=> b!2377221 m!2782413))

(assert (=> b!2377221 m!2782409))

(declare-fun m!2782415 () Bool)

(assert (=> b!2377221 m!2782415))

(declare-fun m!2782417 () Bool)

(assert (=> b!2377221 m!2782417))

(assert (=> b!2377221 m!2782415))

(declare-fun m!2782419 () Bool)

(assert (=> b!2377221 m!2782419))

(push 1)

(assert (not b!2377230))

(assert (not b!2377219))

(assert (not b!2377218))

(assert (not b!2377223))

(assert (not b!2377221))

(assert (not b!2377228))

(assert (not b!2377224))

(assert (not b!2377226))

(assert (not start!233258))

(assert (not b!2377222))

(assert tp_is_empty!11353)

(assert (not b!2377220))

(assert (not b!2377233))

(assert (not b!2377227))

(assert (not b!2377217))

(assert (not b!2377232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!461631 () Bool)

(declare-fun b!2377339 () Bool)

(assert (= bs!461631 (and b!2377339 b!2377221)))

(declare-fun lambda!88388 () Int)

(assert (=> bs!461631 (not (= lambda!88388 lambda!88371))))

(assert (=> bs!461631 (not (= lambda!88388 lambda!88372))))

(assert (=> b!2377339 true))

(assert (=> b!2377339 true))

(declare-fun bs!461632 () Bool)

(declare-fun b!2377347 () Bool)

(assert (= bs!461632 (and b!2377347 b!2377221)))

(declare-fun lambda!88389 () Int)

(assert (=> bs!461632 (not (= lambda!88389 lambda!88371))))

(assert (=> bs!461632 (= lambda!88389 lambda!88372)))

(declare-fun bs!461633 () Bool)

(assert (= bs!461633 (and b!2377347 b!2377339)))

(assert (=> bs!461633 (not (= lambda!88389 lambda!88388))))

(assert (=> b!2377347 true))

(assert (=> b!2377347 true))

(declare-fun b!2377337 () Bool)

(declare-fun e!1516671 () Bool)

(declare-fun e!1516667 () Bool)

(assert (=> b!2377337 (= e!1516671 e!1516667)))

(declare-fun c!377868 () Bool)

(assert (=> b!2377337 (= c!377868 (is-Star!6970 r!13927))))

(declare-fun e!1516665 () Bool)

(declare-fun call!144443 () Bool)

(assert (=> b!2377339 (= e!1516665 call!144443)))

(declare-fun bm!144438 () Bool)

(assert (=> bm!144438 (= call!144443 (Exists!1032 (ite c!377868 lambda!88388 lambda!88389)))))

(declare-fun bm!144439 () Bool)

(declare-fun call!144444 () Bool)

(declare-fun isEmpty!16022 (List!28178) Bool)

(assert (=> bm!144439 (= call!144444 (isEmpty!16022 s!9460))))

(declare-fun b!2377340 () Bool)

(declare-fun e!1516670 () Bool)

(assert (=> b!2377340 (= e!1516670 call!144444)))

(declare-fun b!2377341 () Bool)

(declare-fun e!1516669 () Bool)

(assert (=> b!2377341 (= e!1516671 e!1516669)))

(declare-fun res!1009472 () Bool)

(assert (=> b!2377341 (= res!1009472 (matchRSpec!819 (regOne!14453 r!13927) s!9460))))

(assert (=> b!2377341 (=> res!1009472 e!1516669)))

(declare-fun b!2377342 () Bool)

(declare-fun e!1516666 () Bool)

(assert (=> b!2377342 (= e!1516666 (= s!9460 (Cons!28080 (c!377853 r!13927) Nil!28080)))))

(declare-fun b!2377343 () Bool)

(declare-fun e!1516668 () Bool)

(assert (=> b!2377343 (= e!1516670 e!1516668)))

(declare-fun res!1009473 () Bool)

(assert (=> b!2377343 (= res!1009473 (not (is-EmptyLang!6970 r!13927)))))

(assert (=> b!2377343 (=> (not res!1009473) (not e!1516668))))

(declare-fun b!2377344 () Bool)

(declare-fun c!377866 () Bool)

(assert (=> b!2377344 (= c!377866 (is-ElementMatch!6970 r!13927))))

(assert (=> b!2377344 (= e!1516668 e!1516666)))

(declare-fun b!2377345 () Bool)

(declare-fun res!1009471 () Bool)

(assert (=> b!2377345 (=> res!1009471 e!1516665)))

(assert (=> b!2377345 (= res!1009471 call!144444)))

(assert (=> b!2377345 (= e!1516667 e!1516665)))

(declare-fun b!2377346 () Bool)

(declare-fun c!377869 () Bool)

(assert (=> b!2377346 (= c!377869 (is-Union!6970 r!13927))))

(assert (=> b!2377346 (= e!1516666 e!1516671)))

(assert (=> b!2377347 (= e!1516667 call!144443)))

(declare-fun d!696154 () Bool)

(declare-fun c!377867 () Bool)

(assert (=> d!696154 (= c!377867 (is-EmptyExpr!6970 r!13927))))

(assert (=> d!696154 (= (matchRSpec!819 r!13927 s!9460) e!1516670)))

(declare-fun b!2377338 () Bool)

(assert (=> b!2377338 (= e!1516669 (matchRSpec!819 (regTwo!14453 r!13927) s!9460))))

(assert (= (and d!696154 c!377867) b!2377340))

(assert (= (and d!696154 (not c!377867)) b!2377343))

(assert (= (and b!2377343 res!1009473) b!2377344))

(assert (= (and b!2377344 c!377866) b!2377342))

(assert (= (and b!2377344 (not c!377866)) b!2377346))

(assert (= (and b!2377346 c!377869) b!2377341))

(assert (= (and b!2377346 (not c!377869)) b!2377337))

(assert (= (and b!2377341 (not res!1009472)) b!2377338))

(assert (= (and b!2377337 c!377868) b!2377345))

(assert (= (and b!2377337 (not c!377868)) b!2377347))

(assert (= (and b!2377345 (not res!1009471)) b!2377339))

(assert (= (or b!2377339 b!2377347) bm!144438))

(assert (= (or b!2377340 b!2377345) bm!144439))

(declare-fun m!2782467 () Bool)

(assert (=> bm!144438 m!2782467))

(declare-fun m!2782469 () Bool)

(assert (=> bm!144439 m!2782469))

(declare-fun m!2782471 () Bool)

(assert (=> b!2377341 m!2782471))

(declare-fun m!2782473 () Bool)

(assert (=> b!2377338 m!2782473))

(assert (=> b!2377222 d!696154))

(declare-fun b!2377376 () Bool)

(declare-fun res!1009491 () Bool)

(declare-fun e!1516689 () Bool)

(assert (=> b!2377376 (=> res!1009491 e!1516689)))

(declare-fun e!1516686 () Bool)

(assert (=> b!2377376 (= res!1009491 e!1516686)))

(declare-fun res!1009494 () Bool)

(assert (=> b!2377376 (=> (not res!1009494) (not e!1516686))))

(declare-fun lt!867419 () Bool)

(assert (=> b!2377376 (= res!1009494 lt!867419)))

(declare-fun b!2377377 () Bool)

(declare-fun e!1516692 () Bool)

(declare-fun derivativeStep!1678 (Regex!6970 C!14098) Regex!6970)

(declare-fun head!5175 (List!28178) C!14098)

(declare-fun tail!3445 (List!28178) List!28178)

(assert (=> b!2377377 (= e!1516692 (matchR!3087 (derivativeStep!1678 r!13927 (head!5175 s!9460)) (tail!3445 s!9460)))))

(declare-fun b!2377378 () Bool)

(declare-fun res!1009496 () Bool)

(assert (=> b!2377378 (=> res!1009496 e!1516689)))

(assert (=> b!2377378 (= res!1009496 (not (is-ElementMatch!6970 r!13927)))))

(declare-fun e!1516687 () Bool)

(assert (=> b!2377378 (= e!1516687 e!1516689)))

(declare-fun b!2377379 () Bool)

(declare-fun res!1009493 () Bool)

(assert (=> b!2377379 (=> (not res!1009493) (not e!1516686))))

(assert (=> b!2377379 (= res!1009493 (isEmpty!16022 (tail!3445 s!9460)))))

(declare-fun b!2377380 () Bool)

(assert (=> b!2377380 (= e!1516687 (not lt!867419))))

(declare-fun d!696158 () Bool)

(declare-fun e!1516690 () Bool)

(assert (=> d!696158 e!1516690))

(declare-fun c!377878 () Bool)

(assert (=> d!696158 (= c!377878 (is-EmptyExpr!6970 r!13927))))

(assert (=> d!696158 (= lt!867419 e!1516692)))

(declare-fun c!377876 () Bool)

(assert (=> d!696158 (= c!377876 (isEmpty!16022 s!9460))))

(declare-fun validRegex!2695 (Regex!6970) Bool)

(assert (=> d!696158 (validRegex!2695 r!13927)))

(assert (=> d!696158 (= (matchR!3087 r!13927 s!9460) lt!867419)))

(declare-fun b!2377381 () Bool)

(declare-fun e!1516688 () Bool)

(assert (=> b!2377381 (= e!1516688 (not (= (head!5175 s!9460) (c!377853 r!13927))))))

(declare-fun b!2377382 () Bool)

(declare-fun nullable!2020 (Regex!6970) Bool)

(assert (=> b!2377382 (= e!1516692 (nullable!2020 r!13927))))

(declare-fun b!2377383 () Bool)

(assert (=> b!2377383 (= e!1516690 e!1516687)))

(declare-fun c!377877 () Bool)

(assert (=> b!2377383 (= c!377877 (is-EmptyLang!6970 r!13927))))

(declare-fun b!2377384 () Bool)

(declare-fun res!1009495 () Bool)

(assert (=> b!2377384 (=> res!1009495 e!1516688)))

(assert (=> b!2377384 (= res!1009495 (not (isEmpty!16022 (tail!3445 s!9460))))))

(declare-fun b!2377385 () Bool)

(declare-fun e!1516691 () Bool)

(assert (=> b!2377385 (= e!1516689 e!1516691)))

(declare-fun res!1009497 () Bool)

(assert (=> b!2377385 (=> (not res!1009497) (not e!1516691))))

(assert (=> b!2377385 (= res!1009497 (not lt!867419))))

(declare-fun b!2377386 () Bool)

(assert (=> b!2377386 (= e!1516691 e!1516688)))

(declare-fun res!1009490 () Bool)

(assert (=> b!2377386 (=> res!1009490 e!1516688)))

(declare-fun call!144447 () Bool)

(assert (=> b!2377386 (= res!1009490 call!144447)))

(declare-fun b!2377387 () Bool)

(declare-fun res!1009492 () Bool)

(assert (=> b!2377387 (=> (not res!1009492) (not e!1516686))))

(assert (=> b!2377387 (= res!1009492 (not call!144447))))

(declare-fun bm!144442 () Bool)

(assert (=> bm!144442 (= call!144447 (isEmpty!16022 s!9460))))

(declare-fun b!2377388 () Bool)

(assert (=> b!2377388 (= e!1516690 (= lt!867419 call!144447))))

(declare-fun b!2377389 () Bool)

(assert (=> b!2377389 (= e!1516686 (= (head!5175 s!9460) (c!377853 r!13927)))))

(assert (= (and d!696158 c!377876) b!2377382))

(assert (= (and d!696158 (not c!377876)) b!2377377))

(assert (= (and d!696158 c!377878) b!2377388))

(assert (= (and d!696158 (not c!377878)) b!2377383))

(assert (= (and b!2377383 c!377877) b!2377380))

(assert (= (and b!2377383 (not c!377877)) b!2377378))

(assert (= (and b!2377378 (not res!1009496)) b!2377376))

(assert (= (and b!2377376 res!1009494) b!2377387))

(assert (= (and b!2377387 res!1009492) b!2377379))

(assert (= (and b!2377379 res!1009493) b!2377389))

(assert (= (and b!2377376 (not res!1009491)) b!2377385))

(assert (= (and b!2377385 res!1009497) b!2377386))

(assert (= (and b!2377386 (not res!1009490)) b!2377384))

(assert (= (and b!2377384 (not res!1009495)) b!2377381))

(assert (= (or b!2377388 b!2377387 b!2377386) bm!144442))

(assert (=> d!696158 m!2782469))

(declare-fun m!2782475 () Bool)

(assert (=> d!696158 m!2782475))

(declare-fun m!2782477 () Bool)

(assert (=> b!2377382 m!2782477))

(declare-fun m!2782479 () Bool)

(assert (=> b!2377379 m!2782479))

(assert (=> b!2377379 m!2782479))

(declare-fun m!2782481 () Bool)

(assert (=> b!2377379 m!2782481))

(declare-fun m!2782483 () Bool)

(assert (=> b!2377381 m!2782483))

(assert (=> b!2377389 m!2782483))

(assert (=> b!2377384 m!2782479))

(assert (=> b!2377384 m!2782479))

(assert (=> b!2377384 m!2782481))

(assert (=> bm!144442 m!2782469))

(assert (=> b!2377377 m!2782483))

(assert (=> b!2377377 m!2782483))

(declare-fun m!2782485 () Bool)

(assert (=> b!2377377 m!2782485))

(assert (=> b!2377377 m!2782479))

(assert (=> b!2377377 m!2782485))

(assert (=> b!2377377 m!2782479))

(declare-fun m!2782487 () Bool)

(assert (=> b!2377377 m!2782487))

(assert (=> b!2377222 d!696158))

(declare-fun d!696160 () Bool)

(assert (=> d!696160 (= (matchR!3087 r!13927 s!9460) (matchRSpec!819 r!13927 s!9460))))

(declare-fun lt!867424 () Unit!40975)

(declare-fun choose!13871 (Regex!6970 List!28178) Unit!40975)

(assert (=> d!696160 (= lt!867424 (choose!13871 r!13927 s!9460))))

(assert (=> d!696160 (validRegex!2695 r!13927)))

(assert (=> d!696160 (= (mainMatchTheorem!819 r!13927 s!9460) lt!867424)))

(declare-fun bs!461634 () Bool)

(assert (= bs!461634 d!696160))

(assert (=> bs!461634 m!2782395))

(assert (=> bs!461634 m!2782393))

(declare-fun m!2782489 () Bool)

(assert (=> bs!461634 m!2782489))

(assert (=> bs!461634 m!2782475))

(assert (=> b!2377222 d!696160))

(declare-fun bs!461636 () Bool)

(declare-fun d!696162 () Bool)

(assert (= bs!461636 (and d!696162 start!233258)))

(declare-fun lambda!88395 () Int)

(assert (=> bs!461636 (= lambda!88395 lambda!88370)))

(declare-fun b!2377440 () Bool)

(declare-fun e!1516727 () Bool)

(declare-fun lt!867428 () Regex!6970)

(declare-fun isEmptyExpr!40 (Regex!6970) Bool)

(assert (=> b!2377440 (= e!1516727 (isEmptyExpr!40 lt!867428))))

(declare-fun b!2377441 () Bool)

(declare-fun e!1516726 () Bool)

(assert (=> b!2377441 (= e!1516727 e!1516726)))

(declare-fun c!377900 () Bool)

(assert (=> b!2377441 (= c!377900 (isEmpty!16020 (tail!3443 lt!867374)))))

(declare-fun b!2377442 () Bool)

(declare-fun e!1516723 () Regex!6970)

(assert (=> b!2377442 (= e!1516723 EmptyExpr!6970)))

(declare-fun b!2377443 () Bool)

(declare-fun e!1516725 () Bool)

(assert (=> b!2377443 (= e!1516725 e!1516727)))

(declare-fun c!377899 () Bool)

(assert (=> b!2377443 (= c!377899 (isEmpty!16020 lt!867374))))

(declare-fun b!2377444 () Bool)

(declare-fun e!1516728 () Bool)

(assert (=> b!2377444 (= e!1516728 (isEmpty!16020 (t!208156 lt!867374)))))

(declare-fun b!2377445 () Bool)

(declare-fun e!1516724 () Regex!6970)

(assert (=> b!2377445 (= e!1516724 e!1516723)))

(declare-fun c!377902 () Bool)

(assert (=> b!2377445 (= c!377902 (is-Cons!28081 lt!867374))))

(declare-fun b!2377446 () Bool)

(assert (=> b!2377446 (= e!1516723 (Concat!11606 (h!33482 lt!867374) (generalisedConcat!71 (t!208156 lt!867374))))))

(declare-fun b!2377447 () Bool)

(declare-fun isConcat!40 (Regex!6970) Bool)

(assert (=> b!2377447 (= e!1516726 (isConcat!40 lt!867428))))

(declare-fun b!2377448 () Bool)

(assert (=> b!2377448 (= e!1516726 (= lt!867428 (head!5173 lt!867374)))))

(declare-fun b!2377449 () Bool)

(assert (=> b!2377449 (= e!1516724 (h!33482 lt!867374))))

(assert (=> d!696162 e!1516725))

(declare-fun res!1009508 () Bool)

(assert (=> d!696162 (=> (not res!1009508) (not e!1516725))))

(assert (=> d!696162 (= res!1009508 (validRegex!2695 lt!867428))))

(assert (=> d!696162 (= lt!867428 e!1516724)))

(declare-fun c!377901 () Bool)

(assert (=> d!696162 (= c!377901 e!1516728)))

(declare-fun res!1009509 () Bool)

(assert (=> d!696162 (=> (not res!1009509) (not e!1516728))))

(assert (=> d!696162 (= res!1009509 (is-Cons!28081 lt!867374))))

(assert (=> d!696162 (forall!5604 lt!867374 lambda!88395)))

(assert (=> d!696162 (= (generalisedConcat!71 lt!867374) lt!867428)))

(assert (= (and d!696162 res!1009509) b!2377444))

(assert (= (and d!696162 c!377901) b!2377449))

(assert (= (and d!696162 (not c!377901)) b!2377445))

(assert (= (and b!2377445 c!377902) b!2377446))

(assert (= (and b!2377445 (not c!377902)) b!2377442))

(assert (= (and d!696162 res!1009508) b!2377443))

(assert (= (and b!2377443 c!377899) b!2377440))

(assert (= (and b!2377443 (not c!377899)) b!2377441))

(assert (= (and b!2377441 c!377900) b!2377448))

(assert (= (and b!2377441 (not c!377900)) b!2377447))

(declare-fun m!2782509 () Bool)

(assert (=> b!2377440 m!2782509))

(declare-fun m!2782511 () Bool)

(assert (=> b!2377444 m!2782511))

(assert (=> b!2377443 m!2782389))

(declare-fun m!2782513 () Bool)

(assert (=> b!2377446 m!2782513))

(declare-fun m!2782515 () Bool)

(assert (=> d!696162 m!2782515))

(declare-fun m!2782517 () Bool)

(assert (=> d!696162 m!2782517))

(declare-fun m!2782519 () Bool)

(assert (=> b!2377448 m!2782519))

(declare-fun m!2782521 () Bool)

(assert (=> b!2377441 m!2782521))

(assert (=> b!2377441 m!2782521))

(declare-fun m!2782523 () Bool)

(assert (=> b!2377441 m!2782523))

(declare-fun m!2782525 () Bool)

(assert (=> b!2377447 m!2782525))

(assert (=> b!2377232 d!696162))

(declare-fun d!696166 () Bool)

(declare-fun res!1009514 () Bool)

(declare-fun e!1516733 () Bool)

(assert (=> d!696166 (=> res!1009514 e!1516733)))

(assert (=> d!696166 (= res!1009514 (is-Nil!28081 l!9164))))

(assert (=> d!696166 (= (forall!5604 l!9164 lambda!88370) e!1516733)))

(declare-fun b!2377454 () Bool)

(declare-fun e!1516734 () Bool)

(assert (=> b!2377454 (= e!1516733 e!1516734)))

(declare-fun res!1009515 () Bool)

(assert (=> b!2377454 (=> (not res!1009515) (not e!1516734))))

(declare-fun dynLambda!12087 (Int Regex!6970) Bool)

(assert (=> b!2377454 (= res!1009515 (dynLambda!12087 lambda!88370 (h!33482 l!9164)))))

(declare-fun b!2377455 () Bool)

(assert (=> b!2377455 (= e!1516734 (forall!5604 (t!208156 l!9164) lambda!88370))))

(assert (= (and d!696166 (not res!1009514)) b!2377454))

(assert (= (and b!2377454 res!1009515) b!2377455))

(declare-fun b_lambda!74011 () Bool)

(assert (=> (not b_lambda!74011) (not b!2377454)))

(declare-fun m!2782527 () Bool)

(assert (=> b!2377454 m!2782527))

(declare-fun m!2782529 () Bool)

(assert (=> b!2377455 m!2782529))

(assert (=> start!233258 d!696166))

(declare-fun d!696168 () Bool)

(declare-fun choose!13872 (Int) Bool)

(assert (=> d!696168 (= (Exists!1032 lambda!88371) (choose!13872 lambda!88371))))

(declare-fun bs!461637 () Bool)

(assert (= bs!461637 d!696168))

(declare-fun m!2782531 () Bool)

(assert (=> bs!461637 m!2782531))

(assert (=> b!2377221 d!696168))

(declare-fun d!696170 () Bool)

(declare-fun isEmpty!16023 (Option!5513) Bool)

(assert (=> d!696170 (= (isDefined!4341 (findConcatSeparation!621 (regOne!14452 r!13927) (regTwo!14452 r!13927) Nil!28080 s!9460 s!9460)) (not (isEmpty!16023 (findConcatSeparation!621 (regOne!14452 r!13927) (regTwo!14452 r!13927) Nil!28080 s!9460 s!9460))))))

(declare-fun bs!461638 () Bool)

(assert (= bs!461638 d!696170))

(assert (=> bs!461638 m!2782409))

(declare-fun m!2782533 () Bool)

(assert (=> bs!461638 m!2782533))

(assert (=> b!2377221 d!696170))

(declare-fun bs!461639 () Bool)

(declare-fun d!696172 () Bool)

(assert (= bs!461639 (and d!696172 b!2377221)))

(declare-fun lambda!88398 () Int)

(assert (=> bs!461639 (= lambda!88398 lambda!88371)))

(assert (=> bs!461639 (not (= lambda!88398 lambda!88372))))

(declare-fun bs!461640 () Bool)

(assert (= bs!461640 (and d!696172 b!2377339)))

(assert (=> bs!461640 (not (= lambda!88398 lambda!88388))))

(declare-fun bs!461641 () Bool)

(assert (= bs!461641 (and d!696172 b!2377347)))

(assert (=> bs!461641 (not (= lambda!88398 lambda!88389))))

(assert (=> d!696172 true))

(assert (=> d!696172 true))

(assert (=> d!696172 true))

(assert (=> d!696172 (= (isDefined!4341 (findConcatSeparation!621 (regOne!14452 r!13927) (regTwo!14452 r!13927) Nil!28080 s!9460 s!9460)) (Exists!1032 lambda!88398))))

(declare-fun lt!867431 () Unit!40975)

(declare-fun choose!13873 (Regex!6970 Regex!6970 List!28178) Unit!40975)

(assert (=> d!696172 (= lt!867431 (choose!13873 (regOne!14452 r!13927) (regTwo!14452 r!13927) s!9460))))

(assert (=> d!696172 (validRegex!2695 (regOne!14452 r!13927))))

(assert (=> d!696172 (= (lemmaFindConcatSeparationEquivalentToExists!621 (regOne!14452 r!13927) (regTwo!14452 r!13927) s!9460) lt!867431)))

(declare-fun bs!461642 () Bool)

(assert (= bs!461642 d!696172))

(declare-fun m!2782535 () Bool)

(assert (=> bs!461642 m!2782535))

(assert (=> bs!461642 m!2782409))

(declare-fun m!2782537 () Bool)

(assert (=> bs!461642 m!2782537))

(declare-fun m!2782539 () Bool)

(assert (=> bs!461642 m!2782539))

(assert (=> bs!461642 m!2782409))

(assert (=> bs!461642 m!2782411))

(assert (=> b!2377221 d!696172))

(declare-fun d!696174 () Bool)

(assert (=> d!696174 (= (Exists!1032 lambda!88372) (choose!13872 lambda!88372))))

(declare-fun bs!461643 () Bool)

(assert (= bs!461643 d!696174))

(declare-fun m!2782541 () Bool)

(assert (=> bs!461643 m!2782541))

(assert (=> b!2377221 d!696174))

(declare-fun bs!461644 () Bool)

(declare-fun d!696176 () Bool)

(assert (= bs!461644 (and d!696176 b!2377339)))

(declare-fun lambda!88407 () Int)

(assert (=> bs!461644 (not (= lambda!88407 lambda!88388))))

(declare-fun bs!461645 () Bool)

(assert (= bs!461645 (and d!696176 b!2377347)))

(assert (=> bs!461645 (not (= lambda!88407 lambda!88389))))

(declare-fun bs!461646 () Bool)

(assert (= bs!461646 (and d!696176 b!2377221)))

(assert (=> bs!461646 (not (= lambda!88407 lambda!88372))))

(assert (=> bs!461646 (= lambda!88407 lambda!88371)))

(declare-fun bs!461647 () Bool)

(assert (= bs!461647 (and d!696176 d!696172)))

(assert (=> bs!461647 (= lambda!88407 lambda!88398)))

(assert (=> d!696176 true))

(assert (=> d!696176 true))

(assert (=> d!696176 true))

(declare-fun lambda!88408 () Int)

(assert (=> bs!461644 (not (= lambda!88408 lambda!88388))))

(assert (=> bs!461646 (= lambda!88408 lambda!88372)))

(assert (=> bs!461646 (not (= lambda!88408 lambda!88371))))

(assert (=> bs!461647 (not (= lambda!88408 lambda!88398))))

(declare-fun bs!461648 () Bool)

(assert (= bs!461648 d!696176))

(assert (=> bs!461648 (not (= lambda!88408 lambda!88407))))

(assert (=> bs!461645 (= lambda!88408 lambda!88389)))

(assert (=> d!696176 true))

(assert (=> d!696176 true))

(assert (=> d!696176 true))

(assert (=> d!696176 (= (Exists!1032 lambda!88407) (Exists!1032 lambda!88408))))

(declare-fun lt!867434 () Unit!40975)

(declare-fun choose!13874 (Regex!6970 Regex!6970 List!28178) Unit!40975)

(assert (=> d!696176 (= lt!867434 (choose!13874 (regOne!14452 r!13927) (regTwo!14452 r!13927) s!9460))))

(assert (=> d!696176 (validRegex!2695 (regOne!14452 r!13927))))

(assert (=> d!696176 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!371 (regOne!14452 r!13927) (regTwo!14452 r!13927) s!9460) lt!867434)))

(declare-fun m!2782543 () Bool)

(assert (=> bs!461648 m!2782543))

(declare-fun m!2782545 () Bool)

(assert (=> bs!461648 m!2782545))

(declare-fun m!2782547 () Bool)

(assert (=> bs!461648 m!2782547))

(assert (=> bs!461648 m!2782539))

(assert (=> b!2377221 d!696176))

(declare-fun b!2377529 () Bool)

(declare-fun e!1516777 () Bool)

(declare-fun lt!867441 () Option!5513)

(assert (=> b!2377529 (= e!1516777 (not (isDefined!4341 lt!867441)))))

(declare-fun b!2377530 () Bool)

(declare-fun res!1009561 () Bool)

(declare-fun e!1516776 () Bool)

(assert (=> b!2377530 (=> (not res!1009561) (not e!1516776))))

(assert (=> b!2377530 (= res!1009561 (matchR!3087 (regTwo!14452 r!13927) (_2!16443 (get!8554 lt!867441))))))

(declare-fun d!696178 () Bool)

(assert (=> d!696178 e!1516777))

(declare-fun res!1009560 () Bool)

(assert (=> d!696178 (=> res!1009560 e!1516777)))

(assert (=> d!696178 (= res!1009560 e!1516776)))

(declare-fun res!1009557 () Bool)

(assert (=> d!696178 (=> (not res!1009557) (not e!1516776))))

(assert (=> d!696178 (= res!1009557 (isDefined!4341 lt!867441))))

(declare-fun e!1516778 () Option!5513)

(assert (=> d!696178 (= lt!867441 e!1516778)))

(declare-fun c!377919 () Bool)

(declare-fun e!1516779 () Bool)

(assert (=> d!696178 (= c!377919 e!1516779)))

(declare-fun res!1009559 () Bool)

(assert (=> d!696178 (=> (not res!1009559) (not e!1516779))))

(assert (=> d!696178 (= res!1009559 (matchR!3087 (regOne!14452 r!13927) Nil!28080))))

(assert (=> d!696178 (validRegex!2695 (regOne!14452 r!13927))))

(assert (=> d!696178 (= (findConcatSeparation!621 (regOne!14452 r!13927) (regTwo!14452 r!13927) Nil!28080 s!9460 s!9460) lt!867441)))

(declare-fun b!2377531 () Bool)

(declare-fun e!1516780 () Option!5513)

(assert (=> b!2377531 (= e!1516780 None!5512)))

(declare-fun b!2377532 () Bool)

(assert (=> b!2377532 (= e!1516779 (matchR!3087 (regTwo!14452 r!13927) s!9460))))

(declare-fun b!2377533 () Bool)

(assert (=> b!2377533 (= e!1516778 e!1516780)))

(declare-fun c!377920 () Bool)

(assert (=> b!2377533 (= c!377920 (is-Nil!28080 s!9460))))

(declare-fun b!2377534 () Bool)

(declare-fun lt!867443 () Unit!40975)

(declare-fun lt!867442 () Unit!40975)

(assert (=> b!2377534 (= lt!867443 lt!867442)))

(assert (=> b!2377534 (= (++!6925 (++!6925 Nil!28080 (Cons!28080 (h!33481 s!9460) Nil!28080)) (t!208155 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!567 (List!28178 C!14098 List!28178 List!28178) Unit!40975)

(assert (=> b!2377534 (= lt!867442 (lemmaMoveElementToOtherListKeepsConcatEq!567 Nil!28080 (h!33481 s!9460) (t!208155 s!9460) s!9460))))

(assert (=> b!2377534 (= e!1516780 (findConcatSeparation!621 (regOne!14452 r!13927) (regTwo!14452 r!13927) (++!6925 Nil!28080 (Cons!28080 (h!33481 s!9460) Nil!28080)) (t!208155 s!9460) s!9460))))

(declare-fun b!2377535 () Bool)

(assert (=> b!2377535 (= e!1516776 (= (++!6925 (_1!16443 (get!8554 lt!867441)) (_2!16443 (get!8554 lt!867441))) s!9460))))

(declare-fun b!2377536 () Bool)

(assert (=> b!2377536 (= e!1516778 (Some!5512 (tuple2!27805 Nil!28080 s!9460)))))

(declare-fun b!2377537 () Bool)

(declare-fun res!1009558 () Bool)

(assert (=> b!2377537 (=> (not res!1009558) (not e!1516776))))

(assert (=> b!2377537 (= res!1009558 (matchR!3087 (regOne!14452 r!13927) (_1!16443 (get!8554 lt!867441))))))

(assert (= (and d!696178 res!1009559) b!2377532))

(assert (= (and d!696178 c!377919) b!2377536))

(assert (= (and d!696178 (not c!377919)) b!2377533))

(assert (= (and b!2377533 c!377920) b!2377531))

(assert (= (and b!2377533 (not c!377920)) b!2377534))

(assert (= (and d!696178 res!1009557) b!2377537))

(assert (= (and b!2377537 res!1009558) b!2377530))

(assert (= (and b!2377530 res!1009561) b!2377535))

(assert (= (and d!696178 (not res!1009560)) b!2377529))

(declare-fun m!2782557 () Bool)

(assert (=> b!2377537 m!2782557))

(declare-fun m!2782559 () Bool)

(assert (=> b!2377537 m!2782559))

(assert (=> b!2377535 m!2782557))

(declare-fun m!2782561 () Bool)

(assert (=> b!2377535 m!2782561))

(declare-fun m!2782563 () Bool)

(assert (=> b!2377529 m!2782563))

(assert (=> d!696178 m!2782563))

(declare-fun m!2782565 () Bool)

(assert (=> d!696178 m!2782565))

(assert (=> d!696178 m!2782539))

(declare-fun m!2782567 () Bool)

(assert (=> b!2377534 m!2782567))

(assert (=> b!2377534 m!2782567))

(declare-fun m!2782569 () Bool)

(assert (=> b!2377534 m!2782569))

(declare-fun m!2782571 () Bool)

(assert (=> b!2377534 m!2782571))

(assert (=> b!2377534 m!2782567))

(declare-fun m!2782573 () Bool)

(assert (=> b!2377534 m!2782573))

(declare-fun m!2782575 () Bool)

(assert (=> b!2377532 m!2782575))

(assert (=> b!2377530 m!2782557))

(declare-fun m!2782577 () Bool)

(assert (=> b!2377530 m!2782577))

(assert (=> b!2377221 d!696178))

(declare-fun d!696182 () Bool)

(assert (=> d!696182 (= (isEmpty!16020 l!9164) (is-Nil!28081 l!9164))))

(assert (=> b!2377223 d!696182))

(declare-fun d!696184 () Bool)

(assert (=> d!696184 (= (isEmpty!16020 lt!867374) (is-Nil!28081 lt!867374))))

(assert (=> b!2377228 d!696184))

(declare-fun d!696186 () Bool)

(assert (=> d!696186 (= (tail!3443 l!9164) (t!208156 l!9164))))

(assert (=> b!2377228 d!696186))

(declare-fun bs!461652 () Bool)

(declare-fun d!696188 () Bool)

(assert (= bs!461652 (and d!696188 start!233258)))

(declare-fun lambda!88411 () Int)

(assert (=> bs!461652 (= lambda!88411 lambda!88370)))

(declare-fun bs!461653 () Bool)

(assert (= bs!461653 (and d!696188 d!696162)))

(assert (=> bs!461653 (= lambda!88411 lambda!88395)))

(declare-fun b!2377538 () Bool)

(declare-fun e!1516785 () Bool)

(declare-fun lt!867444 () Regex!6970)

(assert (=> b!2377538 (= e!1516785 (isEmptyExpr!40 lt!867444))))

(declare-fun b!2377539 () Bool)

(declare-fun e!1516784 () Bool)

(assert (=> b!2377539 (= e!1516785 e!1516784)))

(declare-fun c!377922 () Bool)

(assert (=> b!2377539 (= c!377922 (isEmpty!16020 (tail!3443 l!9164)))))

(declare-fun b!2377540 () Bool)

(declare-fun e!1516781 () Regex!6970)

(assert (=> b!2377540 (= e!1516781 EmptyExpr!6970)))

(declare-fun b!2377541 () Bool)

(declare-fun e!1516783 () Bool)

(assert (=> b!2377541 (= e!1516783 e!1516785)))

(declare-fun c!377921 () Bool)

(assert (=> b!2377541 (= c!377921 (isEmpty!16020 l!9164))))

(declare-fun b!2377542 () Bool)

(declare-fun e!1516786 () Bool)

(assert (=> b!2377542 (= e!1516786 (isEmpty!16020 (t!208156 l!9164)))))

(declare-fun b!2377543 () Bool)

(declare-fun e!1516782 () Regex!6970)

(assert (=> b!2377543 (= e!1516782 e!1516781)))

(declare-fun c!377924 () Bool)

(assert (=> b!2377543 (= c!377924 (is-Cons!28081 l!9164))))

(declare-fun b!2377544 () Bool)

(assert (=> b!2377544 (= e!1516781 (Concat!11606 (h!33482 l!9164) (generalisedConcat!71 (t!208156 l!9164))))))

(declare-fun b!2377545 () Bool)

(assert (=> b!2377545 (= e!1516784 (isConcat!40 lt!867444))))

(declare-fun b!2377546 () Bool)

(assert (=> b!2377546 (= e!1516784 (= lt!867444 (head!5173 l!9164)))))

(declare-fun b!2377547 () Bool)

(assert (=> b!2377547 (= e!1516782 (h!33482 l!9164))))

(assert (=> d!696188 e!1516783))

(declare-fun res!1009562 () Bool)

(assert (=> d!696188 (=> (not res!1009562) (not e!1516783))))

(assert (=> d!696188 (= res!1009562 (validRegex!2695 lt!867444))))

(assert (=> d!696188 (= lt!867444 e!1516782)))

(declare-fun c!377923 () Bool)

(assert (=> d!696188 (= c!377923 e!1516786)))

(declare-fun res!1009563 () Bool)

(assert (=> d!696188 (=> (not res!1009563) (not e!1516786))))

(assert (=> d!696188 (= res!1009563 (is-Cons!28081 l!9164))))

(assert (=> d!696188 (forall!5604 l!9164 lambda!88411)))

(assert (=> d!696188 (= (generalisedConcat!71 l!9164) lt!867444)))

(assert (= (and d!696188 res!1009563) b!2377542))

(assert (= (and d!696188 c!377923) b!2377547))

(assert (= (and d!696188 (not c!377923)) b!2377543))

(assert (= (and b!2377543 c!377924) b!2377544))

(assert (= (and b!2377543 (not c!377924)) b!2377540))

(assert (= (and d!696188 res!1009562) b!2377541))

(assert (= (and b!2377541 c!377921) b!2377538))

(assert (= (and b!2377541 (not c!377921)) b!2377539))

(assert (= (and b!2377539 c!377922) b!2377546))

(assert (= (and b!2377539 (not c!377922)) b!2377545))

(declare-fun m!2782579 () Bool)

(assert (=> b!2377538 m!2782579))

(declare-fun m!2782581 () Bool)

(assert (=> b!2377542 m!2782581))

(assert (=> b!2377541 m!2782385))

(declare-fun m!2782583 () Bool)

(assert (=> b!2377544 m!2782583))

(declare-fun m!2782585 () Bool)

(assert (=> d!696188 m!2782585))

(declare-fun m!2782587 () Bool)

(assert (=> d!696188 m!2782587))

(assert (=> b!2377546 m!2782401))

(assert (=> b!2377539 m!2782391))

(assert (=> b!2377539 m!2782391))

(declare-fun m!2782589 () Bool)

(assert (=> b!2377539 m!2782589))

(declare-fun m!2782591 () Bool)

(assert (=> b!2377545 m!2782591))

(assert (=> b!2377233 d!696188))

(declare-fun d!696190 () Bool)

(assert (=> d!696190 (= (isDefined!4341 lt!867376) (not (isEmpty!16023 lt!867376)))))

(declare-fun bs!461654 () Bool)

(assert (= bs!461654 d!696190))

(declare-fun m!2782593 () Bool)

(assert (=> bs!461654 m!2782593))

(assert (=> b!2377230 d!696190))

(declare-fun b!2377548 () Bool)

(declare-fun e!1516788 () Bool)

(declare-fun lt!867445 () Option!5513)

(assert (=> b!2377548 (= e!1516788 (not (isDefined!4341 lt!867445)))))

(declare-fun b!2377549 () Bool)

(declare-fun res!1009568 () Bool)

(declare-fun e!1516787 () Bool)

(assert (=> b!2377549 (=> (not res!1009568) (not e!1516787))))

(assert (=> b!2377549 (= res!1009568 (matchR!3087 EmptyExpr!6970 (_2!16443 (get!8554 lt!867445))))))

(declare-fun d!696192 () Bool)

(assert (=> d!696192 e!1516788))

(declare-fun res!1009567 () Bool)

(assert (=> d!696192 (=> res!1009567 e!1516788)))

(assert (=> d!696192 (= res!1009567 e!1516787)))

(declare-fun res!1009564 () Bool)

(assert (=> d!696192 (=> (not res!1009564) (not e!1516787))))

(assert (=> d!696192 (= res!1009564 (isDefined!4341 lt!867445))))

(declare-fun e!1516789 () Option!5513)

(assert (=> d!696192 (= lt!867445 e!1516789)))

(declare-fun c!377925 () Bool)

(declare-fun e!1516790 () Bool)

(assert (=> d!696192 (= c!377925 e!1516790)))

(declare-fun res!1009566 () Bool)

(assert (=> d!696192 (=> (not res!1009566) (not e!1516790))))

(assert (=> d!696192 (= res!1009566 (matchR!3087 lt!867371 Nil!28080))))

(assert (=> d!696192 (validRegex!2695 lt!867371)))

(assert (=> d!696192 (= (findConcatSeparation!621 lt!867371 EmptyExpr!6970 Nil!28080 s!9460 s!9460) lt!867445)))

(declare-fun b!2377550 () Bool)

(declare-fun e!1516791 () Option!5513)

(assert (=> b!2377550 (= e!1516791 None!5512)))

(declare-fun b!2377551 () Bool)

(assert (=> b!2377551 (= e!1516790 (matchR!3087 EmptyExpr!6970 s!9460))))

(declare-fun b!2377552 () Bool)

(assert (=> b!2377552 (= e!1516789 e!1516791)))

(declare-fun c!377926 () Bool)

(assert (=> b!2377552 (= c!377926 (is-Nil!28080 s!9460))))

(declare-fun b!2377553 () Bool)

(declare-fun lt!867447 () Unit!40975)

(declare-fun lt!867446 () Unit!40975)

(assert (=> b!2377553 (= lt!867447 lt!867446)))

(assert (=> b!2377553 (= (++!6925 (++!6925 Nil!28080 (Cons!28080 (h!33481 s!9460) Nil!28080)) (t!208155 s!9460)) s!9460)))

(assert (=> b!2377553 (= lt!867446 (lemmaMoveElementToOtherListKeepsConcatEq!567 Nil!28080 (h!33481 s!9460) (t!208155 s!9460) s!9460))))

(assert (=> b!2377553 (= e!1516791 (findConcatSeparation!621 lt!867371 EmptyExpr!6970 (++!6925 Nil!28080 (Cons!28080 (h!33481 s!9460) Nil!28080)) (t!208155 s!9460) s!9460))))

(declare-fun b!2377554 () Bool)

(assert (=> b!2377554 (= e!1516787 (= (++!6925 (_1!16443 (get!8554 lt!867445)) (_2!16443 (get!8554 lt!867445))) s!9460))))

(declare-fun b!2377555 () Bool)

(assert (=> b!2377555 (= e!1516789 (Some!5512 (tuple2!27805 Nil!28080 s!9460)))))

(declare-fun b!2377556 () Bool)

(declare-fun res!1009565 () Bool)

(assert (=> b!2377556 (=> (not res!1009565) (not e!1516787))))

(assert (=> b!2377556 (= res!1009565 (matchR!3087 lt!867371 (_1!16443 (get!8554 lt!867445))))))

(assert (= (and d!696192 res!1009566) b!2377551))

(assert (= (and d!696192 c!377925) b!2377555))

(assert (= (and d!696192 (not c!377925)) b!2377552))

(assert (= (and b!2377552 c!377926) b!2377550))

(assert (= (and b!2377552 (not c!377926)) b!2377553))

(assert (= (and d!696192 res!1009564) b!2377556))

(assert (= (and b!2377556 res!1009565) b!2377549))

(assert (= (and b!2377549 res!1009568) b!2377554))

(assert (= (and d!696192 (not res!1009567)) b!2377548))

(declare-fun m!2782595 () Bool)

(assert (=> b!2377556 m!2782595))

(declare-fun m!2782597 () Bool)

(assert (=> b!2377556 m!2782597))

(assert (=> b!2377554 m!2782595))

(declare-fun m!2782599 () Bool)

(assert (=> b!2377554 m!2782599))

(declare-fun m!2782601 () Bool)

(assert (=> b!2377548 m!2782601))

(assert (=> d!696192 m!2782601))

(declare-fun m!2782603 () Bool)

(assert (=> d!696192 m!2782603))

(declare-fun m!2782605 () Bool)

(assert (=> d!696192 m!2782605))

(assert (=> b!2377553 m!2782567))

(assert (=> b!2377553 m!2782567))

(assert (=> b!2377553 m!2782569))

(assert (=> b!2377553 m!2782571))

(assert (=> b!2377553 m!2782567))

(declare-fun m!2782607 () Bool)

(assert (=> b!2377553 m!2782607))

(declare-fun m!2782609 () Bool)

(assert (=> b!2377551 m!2782609))

(assert (=> b!2377549 m!2782595))

(declare-fun m!2782611 () Bool)

(assert (=> b!2377549 m!2782611))

(assert (=> b!2377230 d!696192))

(declare-fun d!696194 () Bool)

(assert (=> d!696194 (= (get!8554 lt!867376) (v!30920 lt!867376))))

(assert (=> b!2377224 d!696194))

(declare-fun d!696196 () Bool)

(assert (=> d!696196 (matchR!3087 (Concat!11606 lt!867371 EmptyExpr!6970) (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368)))))

(declare-fun lt!867450 () Unit!40975)

(declare-fun choose!13875 (Regex!6970 Regex!6970 List!28178 List!28178 List!28178) Unit!40975)

(assert (=> d!696196 (= lt!867450 (choose!13875 lt!867371 EmptyExpr!6970 (_1!16443 lt!867368) (_2!16443 lt!867368) s!9460))))

(assert (=> d!696196 (validRegex!2695 lt!867371)))

(assert (=> d!696196 (= (lemmaFindSeparationIsDefinedThenConcatMatches!1 lt!867371 EmptyExpr!6970 (_1!16443 lt!867368) (_2!16443 lt!867368) s!9460) lt!867450)))

(declare-fun bs!461655 () Bool)

(assert (= bs!461655 d!696196))

(assert (=> bs!461655 m!2782379))

(assert (=> bs!461655 m!2782379))

(assert (=> bs!461655 m!2782381))

(declare-fun m!2782613 () Bool)

(assert (=> bs!461655 m!2782613))

(assert (=> bs!461655 m!2782605))

(assert (=> b!2377224 d!696196))

(declare-fun b!2377557 () Bool)

(declare-fun res!1009570 () Bool)

(declare-fun e!1516795 () Bool)

(assert (=> b!2377557 (=> res!1009570 e!1516795)))

(declare-fun e!1516792 () Bool)

(assert (=> b!2377557 (= res!1009570 e!1516792)))

(declare-fun res!1009573 () Bool)

(assert (=> b!2377557 (=> (not res!1009573) (not e!1516792))))

(declare-fun lt!867451 () Bool)

(assert (=> b!2377557 (= res!1009573 lt!867451)))

(declare-fun b!2377558 () Bool)

(declare-fun e!1516798 () Bool)

(assert (=> b!2377558 (= e!1516798 (matchR!3087 (derivativeStep!1678 (Concat!11606 lt!867371 EmptyExpr!6970) (head!5175 (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368)))) (tail!3445 (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368)))))))

(declare-fun b!2377559 () Bool)

(declare-fun res!1009575 () Bool)

(assert (=> b!2377559 (=> res!1009575 e!1516795)))

(assert (=> b!2377559 (= res!1009575 (not (is-ElementMatch!6970 (Concat!11606 lt!867371 EmptyExpr!6970))))))

(declare-fun e!1516793 () Bool)

(assert (=> b!2377559 (= e!1516793 e!1516795)))

(declare-fun b!2377560 () Bool)

(declare-fun res!1009572 () Bool)

(assert (=> b!2377560 (=> (not res!1009572) (not e!1516792))))

(assert (=> b!2377560 (= res!1009572 (isEmpty!16022 (tail!3445 (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368)))))))

(declare-fun b!2377561 () Bool)

(assert (=> b!2377561 (= e!1516793 (not lt!867451))))

(declare-fun d!696198 () Bool)

(declare-fun e!1516796 () Bool)

(assert (=> d!696198 e!1516796))

(declare-fun c!377929 () Bool)

(assert (=> d!696198 (= c!377929 (is-EmptyExpr!6970 (Concat!11606 lt!867371 EmptyExpr!6970)))))

(assert (=> d!696198 (= lt!867451 e!1516798)))

(declare-fun c!377927 () Bool)

(assert (=> d!696198 (= c!377927 (isEmpty!16022 (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368))))))

(assert (=> d!696198 (validRegex!2695 (Concat!11606 lt!867371 EmptyExpr!6970))))

(assert (=> d!696198 (= (matchR!3087 (Concat!11606 lt!867371 EmptyExpr!6970) (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368))) lt!867451)))

(declare-fun b!2377562 () Bool)

(declare-fun e!1516794 () Bool)

(assert (=> b!2377562 (= e!1516794 (not (= (head!5175 (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368))) (c!377853 (Concat!11606 lt!867371 EmptyExpr!6970)))))))

(declare-fun b!2377563 () Bool)

(assert (=> b!2377563 (= e!1516798 (nullable!2020 (Concat!11606 lt!867371 EmptyExpr!6970)))))

(declare-fun b!2377564 () Bool)

(assert (=> b!2377564 (= e!1516796 e!1516793)))

(declare-fun c!377928 () Bool)

(assert (=> b!2377564 (= c!377928 (is-EmptyLang!6970 (Concat!11606 lt!867371 EmptyExpr!6970)))))

(declare-fun b!2377565 () Bool)

(declare-fun res!1009574 () Bool)

(assert (=> b!2377565 (=> res!1009574 e!1516794)))

(assert (=> b!2377565 (= res!1009574 (not (isEmpty!16022 (tail!3445 (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368))))))))

(declare-fun b!2377566 () Bool)

(declare-fun e!1516797 () Bool)

(assert (=> b!2377566 (= e!1516795 e!1516797)))

(declare-fun res!1009576 () Bool)

(assert (=> b!2377566 (=> (not res!1009576) (not e!1516797))))

(assert (=> b!2377566 (= res!1009576 (not lt!867451))))

(declare-fun b!2377567 () Bool)

(assert (=> b!2377567 (= e!1516797 e!1516794)))

(declare-fun res!1009569 () Bool)

(assert (=> b!2377567 (=> res!1009569 e!1516794)))

(declare-fun call!144454 () Bool)

(assert (=> b!2377567 (= res!1009569 call!144454)))

(declare-fun b!2377568 () Bool)

(declare-fun res!1009571 () Bool)

(assert (=> b!2377568 (=> (not res!1009571) (not e!1516792))))

(assert (=> b!2377568 (= res!1009571 (not call!144454))))

(declare-fun bm!144449 () Bool)

(assert (=> bm!144449 (= call!144454 (isEmpty!16022 (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368))))))

(declare-fun b!2377569 () Bool)

(assert (=> b!2377569 (= e!1516796 (= lt!867451 call!144454))))

(declare-fun b!2377570 () Bool)

(assert (=> b!2377570 (= e!1516792 (= (head!5175 (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368))) (c!377853 (Concat!11606 lt!867371 EmptyExpr!6970))))))

(assert (= (and d!696198 c!377927) b!2377563))

(assert (= (and d!696198 (not c!377927)) b!2377558))

(assert (= (and d!696198 c!377929) b!2377569))

(assert (= (and d!696198 (not c!377929)) b!2377564))

(assert (= (and b!2377564 c!377928) b!2377561))

(assert (= (and b!2377564 (not c!377928)) b!2377559))

(assert (= (and b!2377559 (not res!1009575)) b!2377557))

(assert (= (and b!2377557 res!1009573) b!2377568))

(assert (= (and b!2377568 res!1009571) b!2377560))

(assert (= (and b!2377560 res!1009572) b!2377570))

(assert (= (and b!2377557 (not res!1009570)) b!2377566))

(assert (= (and b!2377566 res!1009576) b!2377567))

(assert (= (and b!2377567 (not res!1009569)) b!2377565))

(assert (= (and b!2377565 (not res!1009574)) b!2377562))

(assert (= (or b!2377569 b!2377568 b!2377567) bm!144449))

(assert (=> d!696198 m!2782379))

(declare-fun m!2782615 () Bool)

(assert (=> d!696198 m!2782615))

(declare-fun m!2782617 () Bool)

(assert (=> d!696198 m!2782617))

(declare-fun m!2782619 () Bool)

(assert (=> b!2377563 m!2782619))

(assert (=> b!2377560 m!2782379))

(declare-fun m!2782621 () Bool)

(assert (=> b!2377560 m!2782621))

(assert (=> b!2377560 m!2782621))

(declare-fun m!2782623 () Bool)

(assert (=> b!2377560 m!2782623))

(assert (=> b!2377562 m!2782379))

(declare-fun m!2782625 () Bool)

(assert (=> b!2377562 m!2782625))

(assert (=> b!2377570 m!2782379))

(assert (=> b!2377570 m!2782625))

(assert (=> b!2377565 m!2782379))

(assert (=> b!2377565 m!2782621))

(assert (=> b!2377565 m!2782621))

(assert (=> b!2377565 m!2782623))

(assert (=> bm!144449 m!2782379))

(assert (=> bm!144449 m!2782615))

(assert (=> b!2377558 m!2782379))

(assert (=> b!2377558 m!2782625))

(assert (=> b!2377558 m!2782625))

(declare-fun m!2782627 () Bool)

(assert (=> b!2377558 m!2782627))

(assert (=> b!2377558 m!2782379))

(assert (=> b!2377558 m!2782621))

(assert (=> b!2377558 m!2782627))

(assert (=> b!2377558 m!2782621))

(declare-fun m!2782629 () Bool)

(assert (=> b!2377558 m!2782629))

(assert (=> b!2377224 d!696198))

(declare-fun b!2377608 () Bool)

(declare-fun e!1516817 () List!28178)

(assert (=> b!2377608 (= e!1516817 (Cons!28080 (h!33481 (_1!16443 lt!867368)) (++!6925 (t!208155 (_1!16443 lt!867368)) (_2!16443 lt!867368))))))

(declare-fun b!2377610 () Bool)

(declare-fun e!1516818 () Bool)

(declare-fun lt!867456 () List!28178)

(assert (=> b!2377610 (= e!1516818 (or (not (= (_2!16443 lt!867368) Nil!28080)) (= lt!867456 (_1!16443 lt!867368))))))

(declare-fun b!2377609 () Bool)

(declare-fun res!1009598 () Bool)

(assert (=> b!2377609 (=> (not res!1009598) (not e!1516818))))

(declare-fun size!22158 (List!28178) Int)

(assert (=> b!2377609 (= res!1009598 (= (size!22158 lt!867456) (+ (size!22158 (_1!16443 lt!867368)) (size!22158 (_2!16443 lt!867368)))))))

(declare-fun b!2377607 () Bool)

(assert (=> b!2377607 (= e!1516817 (_2!16443 lt!867368))))

(declare-fun d!696200 () Bool)

(assert (=> d!696200 e!1516818))

(declare-fun res!1009597 () Bool)

(assert (=> d!696200 (=> (not res!1009597) (not e!1516818))))

(declare-fun content!3820 (List!28178) (Set C!14098))

(assert (=> d!696200 (= res!1009597 (= (content!3820 lt!867456) (set.union (content!3820 (_1!16443 lt!867368)) (content!3820 (_2!16443 lt!867368)))))))

(assert (=> d!696200 (= lt!867456 e!1516817)))

(declare-fun c!377938 () Bool)

(assert (=> d!696200 (= c!377938 (is-Nil!28080 (_1!16443 lt!867368)))))

(assert (=> d!696200 (= (++!6925 (_1!16443 lt!867368) (_2!16443 lt!867368)) lt!867456)))

(assert (= (and d!696200 c!377938) b!2377607))

(assert (= (and d!696200 (not c!377938)) b!2377608))

(assert (= (and d!696200 res!1009597) b!2377609))

(assert (= (and b!2377609 res!1009598) b!2377610))

(declare-fun m!2782631 () Bool)

(assert (=> b!2377608 m!2782631))

(declare-fun m!2782633 () Bool)

(assert (=> b!2377609 m!2782633))

(declare-fun m!2782635 () Bool)

(assert (=> b!2377609 m!2782635))

(declare-fun m!2782637 () Bool)

(assert (=> b!2377609 m!2782637))

(declare-fun m!2782639 () Bool)

(assert (=> d!696200 m!2782639))

(declare-fun m!2782641 () Bool)

(assert (=> d!696200 m!2782641))

(declare-fun m!2782643 () Bool)

(assert (=> d!696200 m!2782643))

(assert (=> b!2377224 d!696200))

(declare-fun b!2377611 () Bool)

(declare-fun res!1009600 () Bool)

(declare-fun e!1516822 () Bool)

(assert (=> b!2377611 (=> res!1009600 e!1516822)))

(declare-fun e!1516819 () Bool)

(assert (=> b!2377611 (= res!1009600 e!1516819)))

(declare-fun res!1009603 () Bool)

(assert (=> b!2377611 (=> (not res!1009603) (not e!1516819))))

(declare-fun lt!867457 () Bool)

(assert (=> b!2377611 (= res!1009603 lt!867457)))

(declare-fun b!2377612 () Bool)

(declare-fun e!1516825 () Bool)

(assert (=> b!2377612 (= e!1516825 (matchR!3087 (derivativeStep!1678 lt!867371 (head!5175 s!9460)) (tail!3445 s!9460)))))

(declare-fun b!2377613 () Bool)

(declare-fun res!1009605 () Bool)

(assert (=> b!2377613 (=> res!1009605 e!1516822)))

(assert (=> b!2377613 (= res!1009605 (not (is-ElementMatch!6970 lt!867371)))))

(declare-fun e!1516820 () Bool)

(assert (=> b!2377613 (= e!1516820 e!1516822)))

(declare-fun b!2377614 () Bool)

(declare-fun res!1009602 () Bool)

(assert (=> b!2377614 (=> (not res!1009602) (not e!1516819))))

(assert (=> b!2377614 (= res!1009602 (isEmpty!16022 (tail!3445 s!9460)))))

(declare-fun b!2377615 () Bool)

(assert (=> b!2377615 (= e!1516820 (not lt!867457))))

(declare-fun d!696202 () Bool)

(declare-fun e!1516823 () Bool)

(assert (=> d!696202 e!1516823))

(declare-fun c!377941 () Bool)

(assert (=> d!696202 (= c!377941 (is-EmptyExpr!6970 lt!867371))))

(assert (=> d!696202 (= lt!867457 e!1516825)))

(declare-fun c!377939 () Bool)

(assert (=> d!696202 (= c!377939 (isEmpty!16022 s!9460))))

(assert (=> d!696202 (validRegex!2695 lt!867371)))

(assert (=> d!696202 (= (matchR!3087 lt!867371 s!9460) lt!867457)))

(declare-fun b!2377616 () Bool)

(declare-fun e!1516821 () Bool)

(assert (=> b!2377616 (= e!1516821 (not (= (head!5175 s!9460) (c!377853 lt!867371))))))

(declare-fun b!2377617 () Bool)

(assert (=> b!2377617 (= e!1516825 (nullable!2020 lt!867371))))

(declare-fun b!2377618 () Bool)

(assert (=> b!2377618 (= e!1516823 e!1516820)))

(declare-fun c!377940 () Bool)

(assert (=> b!2377618 (= c!377940 (is-EmptyLang!6970 lt!867371))))

(declare-fun b!2377619 () Bool)

(declare-fun res!1009604 () Bool)

(assert (=> b!2377619 (=> res!1009604 e!1516821)))

(assert (=> b!2377619 (= res!1009604 (not (isEmpty!16022 (tail!3445 s!9460))))))

(declare-fun b!2377620 () Bool)

(declare-fun e!1516824 () Bool)

(assert (=> b!2377620 (= e!1516822 e!1516824)))

(declare-fun res!1009606 () Bool)

(assert (=> b!2377620 (=> (not res!1009606) (not e!1516824))))

(assert (=> b!2377620 (= res!1009606 (not lt!867457))))

(declare-fun b!2377621 () Bool)

(assert (=> b!2377621 (= e!1516824 e!1516821)))

(declare-fun res!1009599 () Bool)

(assert (=> b!2377621 (=> res!1009599 e!1516821)))

(declare-fun call!144457 () Bool)

(assert (=> b!2377621 (= res!1009599 call!144457)))

(declare-fun b!2377622 () Bool)

(declare-fun res!1009601 () Bool)

(assert (=> b!2377622 (=> (not res!1009601) (not e!1516819))))

(assert (=> b!2377622 (= res!1009601 (not call!144457))))

(declare-fun bm!144452 () Bool)

(assert (=> bm!144452 (= call!144457 (isEmpty!16022 s!9460))))

(declare-fun b!2377623 () Bool)

(assert (=> b!2377623 (= e!1516823 (= lt!867457 call!144457))))

(declare-fun b!2377624 () Bool)

(assert (=> b!2377624 (= e!1516819 (= (head!5175 s!9460) (c!377853 lt!867371)))))

(assert (= (and d!696202 c!377939) b!2377617))

(assert (= (and d!696202 (not c!377939)) b!2377612))

(assert (= (and d!696202 c!377941) b!2377623))

(assert (= (and d!696202 (not c!377941)) b!2377618))

(assert (= (and b!2377618 c!377940) b!2377615))

(assert (= (and b!2377618 (not c!377940)) b!2377613))

(assert (= (and b!2377613 (not res!1009605)) b!2377611))

(assert (= (and b!2377611 res!1009603) b!2377622))

(assert (= (and b!2377622 res!1009601) b!2377614))

(assert (= (and b!2377614 res!1009602) b!2377624))

(assert (= (and b!2377611 (not res!1009600)) b!2377620))

(assert (= (and b!2377620 res!1009606) b!2377621))

(assert (= (and b!2377621 (not res!1009599)) b!2377619))

(assert (= (and b!2377619 (not res!1009604)) b!2377616))

(assert (= (or b!2377623 b!2377622 b!2377621) bm!144452))

(assert (=> d!696202 m!2782469))

(assert (=> d!696202 m!2782605))

(declare-fun m!2782645 () Bool)

(assert (=> b!2377617 m!2782645))

(assert (=> b!2377614 m!2782479))

(assert (=> b!2377614 m!2782479))

(assert (=> b!2377614 m!2782481))

(assert (=> b!2377616 m!2782483))

(assert (=> b!2377624 m!2782483))

(assert (=> b!2377619 m!2782479))

(assert (=> b!2377619 m!2782479))

(assert (=> b!2377619 m!2782481))

(assert (=> bm!144452 m!2782469))

(assert (=> b!2377612 m!2782483))

(assert (=> b!2377612 m!2782483))

(declare-fun m!2782647 () Bool)

(assert (=> b!2377612 m!2782647))

(assert (=> b!2377612 m!2782479))

(assert (=> b!2377612 m!2782647))

(assert (=> b!2377612 m!2782479))

(declare-fun m!2782649 () Bool)

(assert (=> b!2377612 m!2782649))

(assert (=> b!2377226 d!696202))

(declare-fun d!696204 () Bool)

(assert (=> d!696204 (= (head!5173 l!9164) (h!33482 l!9164))))

(assert (=> b!2377226 d!696204))

(declare-fun b!2377637 () Bool)

(declare-fun e!1516828 () Bool)

(declare-fun tp!759332 () Bool)

(assert (=> b!2377637 (= e!1516828 tp!759332)))

(declare-fun b!2377638 () Bool)

(declare-fun tp!759333 () Bool)

(declare-fun tp!759336 () Bool)

(assert (=> b!2377638 (= e!1516828 (and tp!759333 tp!759336))))

(assert (=> b!2377227 (= tp!759292 e!1516828)))

(declare-fun b!2377635 () Bool)

(assert (=> b!2377635 (= e!1516828 tp_is_empty!11353)))

(declare-fun b!2377636 () Bool)

(declare-fun tp!759335 () Bool)

(declare-fun tp!759334 () Bool)

(assert (=> b!2377636 (= e!1516828 (and tp!759335 tp!759334))))

(assert (= (and b!2377227 (is-ElementMatch!6970 (reg!7299 r!13927))) b!2377635))

(assert (= (and b!2377227 (is-Concat!11606 (reg!7299 r!13927))) b!2377636))

(assert (= (and b!2377227 (is-Star!6970 (reg!7299 r!13927))) b!2377637))

(assert (= (and b!2377227 (is-Union!6970 (reg!7299 r!13927))) b!2377638))

(declare-fun b!2377643 () Bool)

(declare-fun e!1516831 () Bool)

(declare-fun tp!759339 () Bool)

(assert (=> b!2377643 (= e!1516831 (and tp_is_empty!11353 tp!759339))))

(assert (=> b!2377218 (= tp!759294 e!1516831)))

(assert (= (and b!2377218 (is-Cons!28080 (t!208155 s!9460))) b!2377643))

(declare-fun b!2377646 () Bool)

(declare-fun e!1516832 () Bool)

(declare-fun tp!759340 () Bool)

(assert (=> b!2377646 (= e!1516832 tp!759340)))

(declare-fun b!2377647 () Bool)

(declare-fun tp!759341 () Bool)

(declare-fun tp!759344 () Bool)

(assert (=> b!2377647 (= e!1516832 (and tp!759341 tp!759344))))

(assert (=> b!2377217 (= tp!759296 e!1516832)))

(declare-fun b!2377644 () Bool)

(assert (=> b!2377644 (= e!1516832 tp_is_empty!11353)))

(declare-fun b!2377645 () Bool)

(declare-fun tp!759343 () Bool)

(declare-fun tp!759342 () Bool)

(assert (=> b!2377645 (= e!1516832 (and tp!759343 tp!759342))))

(assert (= (and b!2377217 (is-ElementMatch!6970 (regOne!14453 r!13927))) b!2377644))

(assert (= (and b!2377217 (is-Concat!11606 (regOne!14453 r!13927))) b!2377645))

(assert (= (and b!2377217 (is-Star!6970 (regOne!14453 r!13927))) b!2377646))

(assert (= (and b!2377217 (is-Union!6970 (regOne!14453 r!13927))) b!2377647))

(declare-fun b!2377650 () Bool)

(declare-fun e!1516833 () Bool)

(declare-fun tp!759345 () Bool)

(assert (=> b!2377650 (= e!1516833 tp!759345)))

(declare-fun b!2377651 () Bool)

(declare-fun tp!759346 () Bool)

(declare-fun tp!759349 () Bool)

(assert (=> b!2377651 (= e!1516833 (and tp!759346 tp!759349))))

(assert (=> b!2377217 (= tp!759290 e!1516833)))

(declare-fun b!2377648 () Bool)

(assert (=> b!2377648 (= e!1516833 tp_is_empty!11353)))

(declare-fun b!2377649 () Bool)

(declare-fun tp!759348 () Bool)

(declare-fun tp!759347 () Bool)

(assert (=> b!2377649 (= e!1516833 (and tp!759348 tp!759347))))

(assert (= (and b!2377217 (is-ElementMatch!6970 (regTwo!14453 r!13927))) b!2377648))

(assert (= (and b!2377217 (is-Concat!11606 (regTwo!14453 r!13927))) b!2377649))

(assert (= (and b!2377217 (is-Star!6970 (regTwo!14453 r!13927))) b!2377650))

(assert (= (and b!2377217 (is-Union!6970 (regTwo!14453 r!13927))) b!2377651))

(declare-fun b!2377654 () Bool)

(declare-fun e!1516834 () Bool)

(declare-fun tp!759350 () Bool)

(assert (=> b!2377654 (= e!1516834 tp!759350)))

(declare-fun b!2377655 () Bool)

(declare-fun tp!759351 () Bool)

(declare-fun tp!759354 () Bool)

(assert (=> b!2377655 (= e!1516834 (and tp!759351 tp!759354))))

(assert (=> b!2377219 (= tp!759295 e!1516834)))

(declare-fun b!2377652 () Bool)

(assert (=> b!2377652 (= e!1516834 tp_is_empty!11353)))

(declare-fun b!2377653 () Bool)

(declare-fun tp!759353 () Bool)

(declare-fun tp!759352 () Bool)

(assert (=> b!2377653 (= e!1516834 (and tp!759353 tp!759352))))

(assert (= (and b!2377219 (is-ElementMatch!6970 (regOne!14452 r!13927))) b!2377652))

(assert (= (and b!2377219 (is-Concat!11606 (regOne!14452 r!13927))) b!2377653))

(assert (= (and b!2377219 (is-Star!6970 (regOne!14452 r!13927))) b!2377654))

(assert (= (and b!2377219 (is-Union!6970 (regOne!14452 r!13927))) b!2377655))

(declare-fun b!2377658 () Bool)

(declare-fun e!1516835 () Bool)

(declare-fun tp!759355 () Bool)

(assert (=> b!2377658 (= e!1516835 tp!759355)))

(declare-fun b!2377659 () Bool)

(declare-fun tp!759356 () Bool)

(declare-fun tp!759359 () Bool)

(assert (=> b!2377659 (= e!1516835 (and tp!759356 tp!759359))))

(assert (=> b!2377219 (= tp!759291 e!1516835)))

(declare-fun b!2377656 () Bool)

(assert (=> b!2377656 (= e!1516835 tp_is_empty!11353)))

(declare-fun b!2377657 () Bool)

(declare-fun tp!759358 () Bool)

(declare-fun tp!759357 () Bool)

(assert (=> b!2377657 (= e!1516835 (and tp!759358 tp!759357))))

(assert (= (and b!2377219 (is-ElementMatch!6970 (regTwo!14452 r!13927))) b!2377656))

(assert (= (and b!2377219 (is-Concat!11606 (regTwo!14452 r!13927))) b!2377657))

(assert (= (and b!2377219 (is-Star!6970 (regTwo!14452 r!13927))) b!2377658))

(assert (= (and b!2377219 (is-Union!6970 (regTwo!14452 r!13927))) b!2377659))

(declare-fun b!2377662 () Bool)

(declare-fun e!1516836 () Bool)

(declare-fun tp!759360 () Bool)

(assert (=> b!2377662 (= e!1516836 tp!759360)))

(declare-fun b!2377663 () Bool)

(declare-fun tp!759361 () Bool)

(declare-fun tp!759364 () Bool)

(assert (=> b!2377663 (= e!1516836 (and tp!759361 tp!759364))))

(assert (=> b!2377220 (= tp!759293 e!1516836)))

(declare-fun b!2377660 () Bool)

(assert (=> b!2377660 (= e!1516836 tp_is_empty!11353)))

(declare-fun b!2377661 () Bool)

(declare-fun tp!759363 () Bool)

(declare-fun tp!759362 () Bool)

(assert (=> b!2377661 (= e!1516836 (and tp!759363 tp!759362))))

(assert (= (and b!2377220 (is-ElementMatch!6970 (h!33482 l!9164))) b!2377660))

(assert (= (and b!2377220 (is-Concat!11606 (h!33482 l!9164))) b!2377661))

(assert (= (and b!2377220 (is-Star!6970 (h!33482 l!9164))) b!2377662))

(assert (= (and b!2377220 (is-Union!6970 (h!33482 l!9164))) b!2377663))

(declare-fun b!2377668 () Bool)

(declare-fun e!1516839 () Bool)

(declare-fun tp!759369 () Bool)

(declare-fun tp!759370 () Bool)

(assert (=> b!2377668 (= e!1516839 (and tp!759369 tp!759370))))

(assert (=> b!2377220 (= tp!759297 e!1516839)))

(assert (= (and b!2377220 (is-Cons!28081 (t!208156 l!9164))) b!2377668))

(declare-fun b_lambda!74013 () Bool)

(assert (= b_lambda!74011 (or start!233258 b_lambda!74013)))

(declare-fun bs!461656 () Bool)

(declare-fun d!696206 () Bool)

(assert (= bs!461656 (and d!696206 start!233258)))

(assert (=> bs!461656 (= (dynLambda!12087 lambda!88370 (h!33482 l!9164)) (validRegex!2695 (h!33482 l!9164)))))

(declare-fun m!2782651 () Bool)

(assert (=> bs!461656 m!2782651))

(assert (=> b!2377454 d!696206))

(push 1)

(assert (not b!2377654))

(assert (not b!2377338))

(assert (not d!696178))

(assert (not bm!144439))

(assert (not b!2377637))

(assert (not b!2377535))

(assert (not b!2377616))

(assert (not b!2377617))

(assert (not b!2377377))

(assert (not b!2377650))

(assert (not b!2377549))

(assert (not bm!144452))

(assert (not b!2377389))

(assert (not b!2377609))

(assert (not b!2377624))

(assert (not b!2377441))

(assert (not b!2377551))

(assert (not b!2377646))

(assert (not d!696160))

(assert (not d!696162))

(assert (not b!2377662))

(assert (not b!2377443))

(assert (not b!2377643))

(assert (not b!2377661))

(assert (not bm!144449))

(assert (not b!2377554))

(assert (not d!696192))

(assert (not bs!461656))

(assert (not b_lambda!74013))

(assert (not b!2377658))

(assert (not b!2377532))

(assert (not b!2377542))

(assert (not b!2377655))

(assert (not b!2377651))

(assert (not b!2377546))

(assert (not d!696158))

(assert (not b!2377448))

(assert (not d!696168))

(assert (not b!2377647))

(assert (not d!696172))

(assert (not b!2377541))

(assert (not d!696190))

(assert (not b!2377537))

(assert (not d!696196))

(assert (not b!2377659))

(assert (not d!696176))

(assert (not b!2377638))

(assert (not b!2377447))

(assert (not b!2377545))

(assert (not bm!144438))

(assert (not d!696198))

(assert (not b!2377636))

(assert (not b!2377534))

(assert (not b!2377562))

(assert (not b!2377455))

(assert (not b!2377565))

(assert (not d!696202))

(assert (not b!2377553))

(assert (not d!696174))

(assert (not b!2377612))

(assert (not b!2377544))

(assert (not b!2377444))

(assert (not b!2377384))

(assert (not b!2377539))

(assert (not b!2377570))

(assert (not b!2377530))

(assert (not b!2377663))

(assert (not b!2377563))

(assert (not b!2377619))

(assert (not d!696170))

(assert (not bm!144442))

(assert (not b!2377556))

(assert (not d!696200))

(assert (not b!2377440))

(assert (not b!2377529))

(assert (not b!2377560))

(assert (not b!2377381))

(assert (not b!2377608))

(assert (not b!2377379))

(assert (not b!2377668))

(assert (not d!696188))

(assert (not b!2377657))

(assert (not b!2377558))

(assert (not b!2377538))

(assert (not b!2377645))

(assert (not b!2377382))

(assert (not b!2377649))

(assert (not b!2377614))

(assert (not b!2377446))

(assert tp_is_empty!11353)

(assert (not b!2377548))

(assert (not b!2377341))

(assert (not b!2377653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

