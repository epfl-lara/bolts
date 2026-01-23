; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238490 () Bool)

(assert start!238490)

(declare-fun b!2436468 () Bool)

(assert (=> b!2436468 true))

(assert (=> b!2436468 true))

(declare-fun lambda!92031 () Int)

(declare-fun lambda!92030 () Int)

(assert (=> b!2436468 (not (= lambda!92031 lambda!92030))))

(assert (=> b!2436468 true))

(assert (=> b!2436468 true))

(declare-fun b!2436455 () Bool)

(declare-fun e!1548497 () Bool)

(declare-fun e!1548491 () Bool)

(assert (=> b!2436455 (= e!1548497 e!1548491)))

(declare-fun res!1034271 () Bool)

(assert (=> b!2436455 (=> res!1034271 e!1548491)))

(declare-datatypes ((C!14480 0))(
  ( (C!14481 (val!8482 Int)) )
))
(declare-datatypes ((Regex!7161 0))(
  ( (ElementMatch!7161 (c!388749 C!14480)) (Concat!11797 (regOne!14834 Regex!7161) (regTwo!14834 Regex!7161)) (EmptyExpr!7161) (Star!7161 (reg!7490 Regex!7161)) (EmptyLang!7161) (Union!7161 (regOne!14835 Regex!7161) (regTwo!14835 Regex!7161)) )
))
(declare-fun lt!877496 () Regex!7161)

(declare-datatypes ((List!28558 0))(
  ( (Nil!28460) (Cons!28460 (h!33861 C!14480) (t!208535 List!28558)) )
))
(declare-fun s!9460 () List!28558)

(declare-fun matchR!3276 (Regex!7161 List!28558) Bool)

(assert (=> b!2436455 (= res!1034271 (not (matchR!3276 lt!877496 s!9460)))))

(declare-datatypes ((List!28559 0))(
  ( (Nil!28461) (Cons!28461 (h!33862 Regex!7161) (t!208536 List!28559)) )
))
(declare-fun l!9164 () List!28559)

(declare-fun head!5519 (List!28559) Regex!7161)

(assert (=> b!2436455 (= lt!877496 (head!5519 l!9164))))

(declare-fun res!1034270 () Bool)

(declare-fun e!1548496 () Bool)

(assert (=> start!238490 (=> (not res!1034270) (not e!1548496))))

(declare-fun lambda!92029 () Int)

(declare-fun forall!5795 (List!28559 Int) Bool)

(assert (=> start!238490 (= res!1034270 (forall!5795 l!9164 lambda!92029))))

(assert (=> start!238490 e!1548496))

(declare-fun e!1548492 () Bool)

(assert (=> start!238490 e!1548492))

(declare-fun e!1548498 () Bool)

(assert (=> start!238490 e!1548498))

(declare-fun e!1548495 () Bool)

(assert (=> start!238490 e!1548495))

(declare-fun b!2436456 () Bool)

(declare-fun tp_is_empty!11735 () Bool)

(declare-fun tp!773855 () Bool)

(assert (=> b!2436456 (= e!1548495 (and tp_is_empty!11735 tp!773855))))

(declare-fun b!2436457 () Bool)

(assert (=> b!2436457 (= e!1548498 tp_is_empty!11735)))

(declare-fun b!2436458 () Bool)

(declare-fun lt!877492 () Regex!7161)

(assert (=> b!2436458 (= e!1548491 (matchR!3276 lt!877492 s!9460))))

(declare-fun ++!7066 (List!28558 List!28558) List!28558)

(assert (=> b!2436458 (matchR!3276 lt!877492 (++!7066 s!9460 Nil!28460))))

(assert (=> b!2436458 (= lt!877492 (Concat!11797 lt!877496 EmptyExpr!7161))))

(declare-datatypes ((Unit!41705 0))(
  ( (Unit!41706) )
))
(declare-fun lt!877495 () Unit!41705)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!108 (Regex!7161 Regex!7161 List!28558 List!28558) Unit!41705)

(assert (=> b!2436458 (= lt!877495 (lemmaTwoRegexMatchThenConcatMatchesConcatString!108 lt!877496 EmptyExpr!7161 s!9460 Nil!28460))))

(declare-fun b!2436459 () Bool)

(declare-fun tp!773852 () Bool)

(declare-fun tp!773854 () Bool)

(assert (=> b!2436459 (= e!1548492 (and tp!773852 tp!773854))))

(declare-fun b!2436460 () Bool)

(declare-fun tp!773851 () Bool)

(declare-fun tp!773849 () Bool)

(assert (=> b!2436460 (= e!1548498 (and tp!773851 tp!773849))))

(declare-fun b!2436461 () Bool)

(declare-fun tp!773850 () Bool)

(declare-fun tp!773853 () Bool)

(assert (=> b!2436461 (= e!1548498 (and tp!773850 tp!773853))))

(declare-fun b!2436462 () Bool)

(declare-fun e!1548493 () Bool)

(assert (=> b!2436462 (= e!1548496 (not e!1548493))))

(declare-fun res!1034272 () Bool)

(assert (=> b!2436462 (=> res!1034272 e!1548493)))

(declare-fun r!13927 () Regex!7161)

(get-info :version)

(assert (=> b!2436462 (= res!1034272 (not ((_ is Concat!11797) r!13927)))))

(declare-fun lt!877497 () Bool)

(declare-fun lt!877491 () Bool)

(assert (=> b!2436462 (= lt!877497 lt!877491)))

(declare-fun matchRSpec!1008 (Regex!7161 List!28558) Bool)

(assert (=> b!2436462 (= lt!877491 (matchRSpec!1008 r!13927 s!9460))))

(assert (=> b!2436462 (= lt!877497 (matchR!3276 r!13927 s!9460))))

(declare-fun lt!877494 () Unit!41705)

(declare-fun mainMatchTheorem!1008 (Regex!7161 List!28558) Unit!41705)

(assert (=> b!2436462 (= lt!877494 (mainMatchTheorem!1008 r!13927 s!9460))))

(declare-fun b!2436463 () Bool)

(declare-fun e!1548494 () Bool)

(assert (=> b!2436463 (= e!1548494 e!1548497)))

(declare-fun res!1034273 () Bool)

(assert (=> b!2436463 (=> res!1034273 e!1548497)))

(declare-fun lt!877493 () List!28559)

(declare-fun isEmpty!16500 (List!28559) Bool)

(assert (=> b!2436463 (= res!1034273 (not (isEmpty!16500 lt!877493)))))

(declare-fun tail!3792 (List!28559) List!28559)

(assert (=> b!2436463 (= lt!877493 (tail!3792 l!9164))))

(declare-fun b!2436464 () Bool)

(declare-fun res!1034276 () Bool)

(assert (=> b!2436464 (=> res!1034276 e!1548497)))

(declare-fun generalisedConcat!262 (List!28559) Regex!7161)

(assert (=> b!2436464 (= res!1034276 (not (= (generalisedConcat!262 lt!877493) EmptyExpr!7161)))))

(declare-fun b!2436465 () Bool)

(declare-fun tp!773848 () Bool)

(assert (=> b!2436465 (= e!1548498 tp!773848)))

(declare-fun b!2436466 () Bool)

(declare-fun res!1034269 () Bool)

(assert (=> b!2436466 (=> (not res!1034269) (not e!1548496))))

(assert (=> b!2436466 (= res!1034269 (= r!13927 (generalisedConcat!262 l!9164)))))

(declare-fun b!2436467 () Bool)

(declare-fun res!1034274 () Bool)

(assert (=> b!2436467 (=> res!1034274 e!1548494)))

(assert (=> b!2436467 (= res!1034274 (isEmpty!16500 l!9164))))

(assert (=> b!2436468 (= e!1548493 e!1548494)))

(declare-fun res!1034275 () Bool)

(assert (=> b!2436468 (=> res!1034275 e!1548494)))

(declare-fun lt!877499 () Bool)

(assert (=> b!2436468 (= res!1034275 (not (= lt!877491 lt!877499)))))

(declare-fun Exists!1197 (Int) Bool)

(assert (=> b!2436468 (= (Exists!1197 lambda!92030) (Exists!1197 lambda!92031))))

(declare-fun lt!877500 () Unit!41705)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!442 (Regex!7161 Regex!7161 List!28558) Unit!41705)

(assert (=> b!2436468 (= lt!877500 (lemmaExistCutMatchRandMatchRSpecEquivalent!442 (regOne!14834 r!13927) (regTwo!14834 r!13927) s!9460))))

(assert (=> b!2436468 (= lt!877499 (Exists!1197 lambda!92030))))

(declare-datatypes ((tuple2!28078 0))(
  ( (tuple2!28079 (_1!16580 List!28558) (_2!16580 List!28558)) )
))
(declare-datatypes ((Option!5650 0))(
  ( (None!5649) (Some!5649 (v!31057 tuple2!28078)) )
))
(declare-fun isDefined!4476 (Option!5650) Bool)

(declare-fun findConcatSeparation!758 (Regex!7161 Regex!7161 List!28558 List!28558 List!28558) Option!5650)

(assert (=> b!2436468 (= lt!877499 (isDefined!4476 (findConcatSeparation!758 (regOne!14834 r!13927) (regTwo!14834 r!13927) Nil!28460 s!9460 s!9460)))))

(declare-fun lt!877498 () Unit!41705)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!696 (Regex!7161 Regex!7161 List!28558) Unit!41705)

(assert (=> b!2436468 (= lt!877498 (lemmaFindConcatSeparationEquivalentToExists!696 (regOne!14834 r!13927) (regTwo!14834 r!13927) s!9460))))

(assert (= (and start!238490 res!1034270) b!2436466))

(assert (= (and b!2436466 res!1034269) b!2436462))

(assert (= (and b!2436462 (not res!1034272)) b!2436468))

(assert (= (and b!2436468 (not res!1034275)) b!2436467))

(assert (= (and b!2436467 (not res!1034274)) b!2436463))

(assert (= (and b!2436463 (not res!1034273)) b!2436464))

(assert (= (and b!2436464 (not res!1034276)) b!2436455))

(assert (= (and b!2436455 (not res!1034271)) b!2436458))

(assert (= (and start!238490 ((_ is Cons!28461) l!9164)) b!2436459))

(assert (= (and start!238490 ((_ is ElementMatch!7161) r!13927)) b!2436457))

(assert (= (and start!238490 ((_ is Concat!11797) r!13927)) b!2436461))

(assert (= (and start!238490 ((_ is Star!7161) r!13927)) b!2436465))

(assert (= (and start!238490 ((_ is Union!7161) r!13927)) b!2436460))

(assert (= (and start!238490 ((_ is Cons!28460) s!9460)) b!2436456))

(declare-fun m!2816191 () Bool)

(assert (=> b!2436458 m!2816191))

(declare-fun m!2816193 () Bool)

(assert (=> b!2436458 m!2816193))

(assert (=> b!2436458 m!2816193))

(declare-fun m!2816195 () Bool)

(assert (=> b!2436458 m!2816195))

(declare-fun m!2816197 () Bool)

(assert (=> b!2436458 m!2816197))

(declare-fun m!2816199 () Bool)

(assert (=> b!2436468 m!2816199))

(declare-fun m!2816201 () Bool)

(assert (=> b!2436468 m!2816201))

(declare-fun m!2816203 () Bool)

(assert (=> b!2436468 m!2816203))

(assert (=> b!2436468 m!2816199))

(declare-fun m!2816205 () Bool)

(assert (=> b!2436468 m!2816205))

(declare-fun m!2816207 () Bool)

(assert (=> b!2436468 m!2816207))

(assert (=> b!2436468 m!2816205))

(declare-fun m!2816209 () Bool)

(assert (=> b!2436468 m!2816209))

(declare-fun m!2816211 () Bool)

(assert (=> b!2436466 m!2816211))

(declare-fun m!2816213 () Bool)

(assert (=> b!2436463 m!2816213))

(declare-fun m!2816215 () Bool)

(assert (=> b!2436463 m!2816215))

(declare-fun m!2816217 () Bool)

(assert (=> start!238490 m!2816217))

(declare-fun m!2816219 () Bool)

(assert (=> b!2436462 m!2816219))

(declare-fun m!2816221 () Bool)

(assert (=> b!2436462 m!2816221))

(declare-fun m!2816223 () Bool)

(assert (=> b!2436462 m!2816223))

(declare-fun m!2816225 () Bool)

(assert (=> b!2436455 m!2816225))

(declare-fun m!2816227 () Bool)

(assert (=> b!2436455 m!2816227))

(declare-fun m!2816229 () Bool)

(assert (=> b!2436467 m!2816229))

(declare-fun m!2816231 () Bool)

(assert (=> b!2436464 m!2816231))

(check-sat (not b!2436455) tp_is_empty!11735 (not b!2436468) (not b!2436461) (not b!2436464) (not b!2436467) (not b!2436456) (not start!238490) (not b!2436460) (not b!2436465) (not b!2436459) (not b!2436463) (not b!2436466) (not b!2436458) (not b!2436462))
(check-sat)
(get-model)

(declare-fun d!704085 () Bool)

(assert (=> d!704085 (= (isEmpty!16500 l!9164) ((_ is Nil!28461) l!9164))))

(assert (=> b!2436467 d!704085))

(declare-fun d!704087 () Bool)

(declare-fun res!1034281 () Bool)

(declare-fun e!1548503 () Bool)

(assert (=> d!704087 (=> res!1034281 e!1548503)))

(assert (=> d!704087 (= res!1034281 ((_ is Nil!28461) l!9164))))

(assert (=> d!704087 (= (forall!5795 l!9164 lambda!92029) e!1548503)))

(declare-fun b!2436477 () Bool)

(declare-fun e!1548504 () Bool)

(assert (=> b!2436477 (= e!1548503 e!1548504)))

(declare-fun res!1034282 () Bool)

(assert (=> b!2436477 (=> (not res!1034282) (not e!1548504))))

(declare-fun dynLambda!12247 (Int Regex!7161) Bool)

(assert (=> b!2436477 (= res!1034282 (dynLambda!12247 lambda!92029 (h!33862 l!9164)))))

(declare-fun b!2436478 () Bool)

(assert (=> b!2436478 (= e!1548504 (forall!5795 (t!208536 l!9164) lambda!92029))))

(assert (= (and d!704087 (not res!1034281)) b!2436477))

(assert (= (and b!2436477 res!1034282) b!2436478))

(declare-fun b_lambda!74887 () Bool)

(assert (=> (not b_lambda!74887) (not b!2436477)))

(declare-fun m!2816233 () Bool)

(assert (=> b!2436477 m!2816233))

(declare-fun m!2816235 () Bool)

(assert (=> b!2436478 m!2816235))

(assert (=> start!238490 d!704087))

(declare-fun bs!464595 () Bool)

(declare-fun b!2436518 () Bool)

(assert (= bs!464595 (and b!2436518 b!2436468)))

(declare-fun lambda!92036 () Int)

(assert (=> bs!464595 (not (= lambda!92036 lambda!92030))))

(assert (=> bs!464595 (not (= lambda!92036 lambda!92031))))

(assert (=> b!2436518 true))

(assert (=> b!2436518 true))

(declare-fun bs!464596 () Bool)

(declare-fun b!2436521 () Bool)

(assert (= bs!464596 (and b!2436521 b!2436468)))

(declare-fun lambda!92037 () Int)

(assert (=> bs!464596 (not (= lambda!92037 lambda!92030))))

(assert (=> bs!464596 (= lambda!92037 lambda!92031)))

(declare-fun bs!464597 () Bool)

(assert (= bs!464597 (and b!2436521 b!2436518)))

(assert (=> bs!464597 (not (= lambda!92037 lambda!92036))))

(assert (=> b!2436521 true))

(assert (=> b!2436521 true))

(declare-fun b!2436511 () Bool)

(declare-fun e!1548526 () Bool)

(declare-fun e!1548524 () Bool)

(assert (=> b!2436511 (= e!1548526 e!1548524)))

(declare-fun c!388760 () Bool)

(assert (=> b!2436511 (= c!388760 ((_ is Star!7161) r!13927))))

(declare-fun b!2436512 () Bool)

(declare-fun e!1548529 () Bool)

(assert (=> b!2436512 (= e!1548529 (matchRSpec!1008 (regTwo!14835 r!13927) s!9460))))

(declare-fun b!2436513 () Bool)

(assert (=> b!2436513 (= e!1548526 e!1548529)))

(declare-fun res!1034299 () Bool)

(assert (=> b!2436513 (= res!1034299 (matchRSpec!1008 (regOne!14835 r!13927) s!9460))))

(assert (=> b!2436513 (=> res!1034299 e!1548529)))

(declare-fun d!704089 () Bool)

(declare-fun c!388758 () Bool)

(assert (=> d!704089 (= c!388758 ((_ is EmptyExpr!7161) r!13927))))

(declare-fun e!1548527 () Bool)

(assert (=> d!704089 (= (matchRSpec!1008 r!13927 s!9460) e!1548527)))

(declare-fun b!2436514 () Bool)

(declare-fun res!1034300 () Bool)

(declare-fun e!1548525 () Bool)

(assert (=> b!2436514 (=> res!1034300 e!1548525)))

(declare-fun call!149253 () Bool)

(assert (=> b!2436514 (= res!1034300 call!149253)))

(assert (=> b!2436514 (= e!1548524 e!1548525)))

(declare-fun b!2436515 () Bool)

(declare-fun e!1548528 () Bool)

(assert (=> b!2436515 (= e!1548528 (= s!9460 (Cons!28460 (c!388749 r!13927) Nil!28460)))))

(declare-fun b!2436516 () Bool)

(assert (=> b!2436516 (= e!1548527 call!149253)))

(declare-fun b!2436517 () Bool)

(declare-fun e!1548523 () Bool)

(assert (=> b!2436517 (= e!1548527 e!1548523)))

(declare-fun res!1034301 () Bool)

(assert (=> b!2436517 (= res!1034301 (not ((_ is EmptyLang!7161) r!13927)))))

(assert (=> b!2436517 (=> (not res!1034301) (not e!1548523))))

(declare-fun call!149254 () Bool)

(assert (=> b!2436518 (= e!1548525 call!149254)))

(declare-fun bm!149248 () Bool)

(declare-fun isEmpty!16501 (List!28558) Bool)

(assert (=> bm!149248 (= call!149253 (isEmpty!16501 s!9460))))

(declare-fun bm!149249 () Bool)

(assert (=> bm!149249 (= call!149254 (Exists!1197 (ite c!388760 lambda!92036 lambda!92037)))))

(declare-fun b!2436519 () Bool)

(declare-fun c!388761 () Bool)

(assert (=> b!2436519 (= c!388761 ((_ is ElementMatch!7161) r!13927))))

(assert (=> b!2436519 (= e!1548523 e!1548528)))

(declare-fun b!2436520 () Bool)

(declare-fun c!388759 () Bool)

(assert (=> b!2436520 (= c!388759 ((_ is Union!7161) r!13927))))

(assert (=> b!2436520 (= e!1548528 e!1548526)))

(assert (=> b!2436521 (= e!1548524 call!149254)))

(assert (= (and d!704089 c!388758) b!2436516))

(assert (= (and d!704089 (not c!388758)) b!2436517))

(assert (= (and b!2436517 res!1034301) b!2436519))

(assert (= (and b!2436519 c!388761) b!2436515))

(assert (= (and b!2436519 (not c!388761)) b!2436520))

(assert (= (and b!2436520 c!388759) b!2436513))

(assert (= (and b!2436520 (not c!388759)) b!2436511))

(assert (= (and b!2436513 (not res!1034299)) b!2436512))

(assert (= (and b!2436511 c!388760) b!2436514))

(assert (= (and b!2436511 (not c!388760)) b!2436521))

(assert (= (and b!2436514 (not res!1034300)) b!2436518))

(assert (= (or b!2436518 b!2436521) bm!149249))

(assert (= (or b!2436516 b!2436514) bm!149248))

(declare-fun m!2816237 () Bool)

(assert (=> b!2436512 m!2816237))

(declare-fun m!2816239 () Bool)

(assert (=> b!2436513 m!2816239))

(declare-fun m!2816241 () Bool)

(assert (=> bm!149248 m!2816241))

(declare-fun m!2816243 () Bool)

(assert (=> bm!149249 m!2816243))

(assert (=> b!2436462 d!704089))

(declare-fun b!2436592 () Bool)

(declare-fun res!1034346 () Bool)

(declare-fun e!1548570 () Bool)

(assert (=> b!2436592 (=> res!1034346 e!1548570)))

(declare-fun e!1548567 () Bool)

(assert (=> b!2436592 (= res!1034346 e!1548567)))

(declare-fun res!1034344 () Bool)

(assert (=> b!2436592 (=> (not res!1034344) (not e!1548567))))

(declare-fun lt!877506 () Bool)

(assert (=> b!2436592 (= res!1034344 lt!877506)))

(declare-fun b!2436593 () Bool)

(declare-fun e!1548569 () Bool)

(declare-fun head!5520 (List!28558) C!14480)

(assert (=> b!2436593 (= e!1548569 (not (= (head!5520 s!9460) (c!388749 r!13927))))))

(declare-fun b!2436594 () Bool)

(declare-fun e!1548568 () Bool)

(declare-fun derivativeStep!1843 (Regex!7161 C!14480) Regex!7161)

(declare-fun tail!3793 (List!28558) List!28558)

(assert (=> b!2436594 (= e!1548568 (matchR!3276 (derivativeStep!1843 r!13927 (head!5520 s!9460)) (tail!3793 s!9460)))))

(declare-fun b!2436595 () Bool)

(declare-fun res!1034349 () Bool)

(assert (=> b!2436595 (=> (not res!1034349) (not e!1548567))))

(declare-fun call!149260 () Bool)

(assert (=> b!2436595 (= res!1034349 (not call!149260))))

(declare-fun b!2436596 () Bool)

(declare-fun e!1548565 () Bool)

(assert (=> b!2436596 (= e!1548565 e!1548569)))

(declare-fun res!1034347 () Bool)

(assert (=> b!2436596 (=> res!1034347 e!1548569)))

(assert (=> b!2436596 (= res!1034347 call!149260)))

(declare-fun b!2436597 () Bool)

(declare-fun e!1548566 () Bool)

(assert (=> b!2436597 (= e!1548566 (not lt!877506))))

(declare-fun b!2436598 () Bool)

(declare-fun e!1548571 () Bool)

(assert (=> b!2436598 (= e!1548571 (= lt!877506 call!149260))))

(declare-fun b!2436599 () Bool)

(declare-fun nullable!2189 (Regex!7161) Bool)

(assert (=> b!2436599 (= e!1548568 (nullable!2189 r!13927))))

(declare-fun b!2436600 () Bool)

(declare-fun res!1034343 () Bool)

(assert (=> b!2436600 (=> res!1034343 e!1548570)))

(assert (=> b!2436600 (= res!1034343 (not ((_ is ElementMatch!7161) r!13927)))))

(assert (=> b!2436600 (= e!1548566 e!1548570)))

(declare-fun b!2436601 () Bool)

(assert (=> b!2436601 (= e!1548570 e!1548565)))

(declare-fun res!1034345 () Bool)

(assert (=> b!2436601 (=> (not res!1034345) (not e!1548565))))

(assert (=> b!2436601 (= res!1034345 (not lt!877506))))

(declare-fun b!2436602 () Bool)

(declare-fun res!1034348 () Bool)

(assert (=> b!2436602 (=> res!1034348 e!1548569)))

(assert (=> b!2436602 (= res!1034348 (not (isEmpty!16501 (tail!3793 s!9460))))))

(declare-fun d!704095 () Bool)

(assert (=> d!704095 e!1548571))

(declare-fun c!388779 () Bool)

(assert (=> d!704095 (= c!388779 ((_ is EmptyExpr!7161) r!13927))))

(assert (=> d!704095 (= lt!877506 e!1548568)))

(declare-fun c!388778 () Bool)

(assert (=> d!704095 (= c!388778 (isEmpty!16501 s!9460))))

(declare-fun validRegex!2874 (Regex!7161) Bool)

(assert (=> d!704095 (validRegex!2874 r!13927)))

(assert (=> d!704095 (= (matchR!3276 r!13927 s!9460) lt!877506)))

(declare-fun b!2436603 () Bool)

(assert (=> b!2436603 (= e!1548571 e!1548566)))

(declare-fun c!388777 () Bool)

(assert (=> b!2436603 (= c!388777 ((_ is EmptyLang!7161) r!13927))))

(declare-fun b!2436604 () Bool)

(assert (=> b!2436604 (= e!1548567 (= (head!5520 s!9460) (c!388749 r!13927)))))

(declare-fun b!2436605 () Bool)

(declare-fun res!1034342 () Bool)

(assert (=> b!2436605 (=> (not res!1034342) (not e!1548567))))

(assert (=> b!2436605 (= res!1034342 (isEmpty!16501 (tail!3793 s!9460)))))

(declare-fun bm!149255 () Bool)

(assert (=> bm!149255 (= call!149260 (isEmpty!16501 s!9460))))

(assert (= (and d!704095 c!388778) b!2436599))

(assert (= (and d!704095 (not c!388778)) b!2436594))

(assert (= (and d!704095 c!388779) b!2436598))

(assert (= (and d!704095 (not c!388779)) b!2436603))

(assert (= (and b!2436603 c!388777) b!2436597))

(assert (= (and b!2436603 (not c!388777)) b!2436600))

(assert (= (and b!2436600 (not res!1034343)) b!2436592))

(assert (= (and b!2436592 res!1034344) b!2436595))

(assert (= (and b!2436595 res!1034349) b!2436605))

(assert (= (and b!2436605 res!1034342) b!2436604))

(assert (= (and b!2436592 (not res!1034346)) b!2436601))

(assert (= (and b!2436601 res!1034345) b!2436596))

(assert (= (and b!2436596 (not res!1034347)) b!2436602))

(assert (= (and b!2436602 (not res!1034348)) b!2436593))

(assert (= (or b!2436598 b!2436595 b!2436596) bm!149255))

(declare-fun m!2816261 () Bool)

(assert (=> b!2436602 m!2816261))

(assert (=> b!2436602 m!2816261))

(declare-fun m!2816263 () Bool)

(assert (=> b!2436602 m!2816263))

(declare-fun m!2816265 () Bool)

(assert (=> b!2436599 m!2816265))

(declare-fun m!2816267 () Bool)

(assert (=> b!2436604 m!2816267))

(assert (=> b!2436594 m!2816267))

(assert (=> b!2436594 m!2816267))

(declare-fun m!2816269 () Bool)

(assert (=> b!2436594 m!2816269))

(assert (=> b!2436594 m!2816261))

(assert (=> b!2436594 m!2816269))

(assert (=> b!2436594 m!2816261))

(declare-fun m!2816271 () Bool)

(assert (=> b!2436594 m!2816271))

(assert (=> bm!149255 m!2816241))

(assert (=> b!2436605 m!2816261))

(assert (=> b!2436605 m!2816261))

(assert (=> b!2436605 m!2816263))

(assert (=> d!704095 m!2816241))

(declare-fun m!2816273 () Bool)

(assert (=> d!704095 m!2816273))

(assert (=> b!2436593 m!2816267))

(assert (=> b!2436462 d!704095))

(declare-fun d!704101 () Bool)

(assert (=> d!704101 (= (matchR!3276 r!13927 s!9460) (matchRSpec!1008 r!13927 s!9460))))

(declare-fun lt!877509 () Unit!41705)

(declare-fun choose!14445 (Regex!7161 List!28558) Unit!41705)

(assert (=> d!704101 (= lt!877509 (choose!14445 r!13927 s!9460))))

(assert (=> d!704101 (validRegex!2874 r!13927)))

(assert (=> d!704101 (= (mainMatchTheorem!1008 r!13927 s!9460) lt!877509)))

(declare-fun bs!464598 () Bool)

(assert (= bs!464598 d!704101))

(assert (=> bs!464598 m!2816221))

(assert (=> bs!464598 m!2816219))

(declare-fun m!2816275 () Bool)

(assert (=> bs!464598 m!2816275))

(assert (=> bs!464598 m!2816273))

(assert (=> b!2436462 d!704101))

(declare-fun d!704103 () Bool)

(declare-fun isEmpty!16503 (Option!5650) Bool)

(assert (=> d!704103 (= (isDefined!4476 (findConcatSeparation!758 (regOne!14834 r!13927) (regTwo!14834 r!13927) Nil!28460 s!9460 s!9460)) (not (isEmpty!16503 (findConcatSeparation!758 (regOne!14834 r!13927) (regTwo!14834 r!13927) Nil!28460 s!9460 s!9460))))))

(declare-fun bs!464599 () Bool)

(assert (= bs!464599 d!704103))

(assert (=> bs!464599 m!2816199))

(declare-fun m!2816277 () Bool)

(assert (=> bs!464599 m!2816277))

(assert (=> b!2436468 d!704103))

(declare-fun bs!464602 () Bool)

(declare-fun d!704105 () Bool)

(assert (= bs!464602 (and d!704105 b!2436468)))

(declare-fun lambda!92043 () Int)

(assert (=> bs!464602 (= lambda!92043 lambda!92030)))

(assert (=> bs!464602 (not (= lambda!92043 lambda!92031))))

(declare-fun bs!464603 () Bool)

(assert (= bs!464603 (and d!704105 b!2436518)))

(assert (=> bs!464603 (not (= lambda!92043 lambda!92036))))

(declare-fun bs!464604 () Bool)

(assert (= bs!464604 (and d!704105 b!2436521)))

(assert (=> bs!464604 (not (= lambda!92043 lambda!92037))))

(assert (=> d!704105 true))

(assert (=> d!704105 true))

(assert (=> d!704105 true))

(assert (=> d!704105 (= (isDefined!4476 (findConcatSeparation!758 (regOne!14834 r!13927) (regTwo!14834 r!13927) Nil!28460 s!9460 s!9460)) (Exists!1197 lambda!92043))))

(declare-fun lt!877515 () Unit!41705)

(declare-fun choose!14446 (Regex!7161 Regex!7161 List!28558) Unit!41705)

(assert (=> d!704105 (= lt!877515 (choose!14446 (regOne!14834 r!13927) (regTwo!14834 r!13927) s!9460))))

(assert (=> d!704105 (validRegex!2874 (regOne!14834 r!13927))))

(assert (=> d!704105 (= (lemmaFindConcatSeparationEquivalentToExists!696 (regOne!14834 r!13927) (regTwo!14834 r!13927) s!9460) lt!877515)))

(declare-fun bs!464605 () Bool)

(assert (= bs!464605 d!704105))

(assert (=> bs!464605 m!2816199))

(declare-fun m!2816299 () Bool)

(assert (=> bs!464605 m!2816299))

(declare-fun m!2816301 () Bool)

(assert (=> bs!464605 m!2816301))

(declare-fun m!2816303 () Bool)

(assert (=> bs!464605 m!2816303))

(assert (=> bs!464605 m!2816199))

(assert (=> bs!464605 m!2816201))

(assert (=> b!2436468 d!704105))

(declare-fun bs!464608 () Bool)

(declare-fun d!704111 () Bool)

(assert (= bs!464608 (and d!704111 b!2436518)))

(declare-fun lambda!92051 () Int)

(assert (=> bs!464608 (not (= lambda!92051 lambda!92036))))

(declare-fun bs!464609 () Bool)

(assert (= bs!464609 (and d!704111 b!2436468)))

(assert (=> bs!464609 (= lambda!92051 lambda!92030)))

(assert (=> bs!464609 (not (= lambda!92051 lambda!92031))))

(declare-fun bs!464610 () Bool)

(assert (= bs!464610 (and d!704111 b!2436521)))

(assert (=> bs!464610 (not (= lambda!92051 lambda!92037))))

(declare-fun bs!464611 () Bool)

(assert (= bs!464611 (and d!704111 d!704105)))

(assert (=> bs!464611 (= lambda!92051 lambda!92043)))

(assert (=> d!704111 true))

(assert (=> d!704111 true))

(assert (=> d!704111 true))

(declare-fun lambda!92054 () Int)

(assert (=> bs!464608 (not (= lambda!92054 lambda!92036))))

(declare-fun bs!464612 () Bool)

(assert (= bs!464612 d!704111))

(assert (=> bs!464612 (not (= lambda!92054 lambda!92051))))

(assert (=> bs!464609 (not (= lambda!92054 lambda!92030))))

(assert (=> bs!464609 (= lambda!92054 lambda!92031)))

(assert (=> bs!464610 (= lambda!92054 lambda!92037)))

(assert (=> bs!464611 (not (= lambda!92054 lambda!92043))))

(assert (=> d!704111 true))

(assert (=> d!704111 true))

(assert (=> d!704111 true))

(assert (=> d!704111 (= (Exists!1197 lambda!92051) (Exists!1197 lambda!92054))))

(declare-fun lt!877523 () Unit!41705)

(declare-fun choose!14447 (Regex!7161 Regex!7161 List!28558) Unit!41705)

(assert (=> d!704111 (= lt!877523 (choose!14447 (regOne!14834 r!13927) (regTwo!14834 r!13927) s!9460))))

(assert (=> d!704111 (validRegex!2874 (regOne!14834 r!13927))))

(assert (=> d!704111 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!442 (regOne!14834 r!13927) (regTwo!14834 r!13927) s!9460) lt!877523)))

(declare-fun m!2816311 () Bool)

(assert (=> bs!464612 m!2816311))

(declare-fun m!2816313 () Bool)

(assert (=> bs!464612 m!2816313))

(declare-fun m!2816315 () Bool)

(assert (=> bs!464612 m!2816315))

(assert (=> bs!464612 m!2816301))

(assert (=> b!2436468 d!704111))

(declare-fun d!704115 () Bool)

(declare-fun choose!14448 (Int) Bool)

(assert (=> d!704115 (= (Exists!1197 lambda!92031) (choose!14448 lambda!92031))))

(declare-fun bs!464613 () Bool)

(assert (= bs!464613 d!704115))

(declare-fun m!2816317 () Bool)

(assert (=> bs!464613 m!2816317))

(assert (=> b!2436468 d!704115))

(declare-fun b!2436696 () Bool)

(declare-fun e!1548624 () Option!5650)

(assert (=> b!2436696 (= e!1548624 None!5649)))

(declare-fun b!2436697 () Bool)

(declare-fun e!1548622 () Bool)

(assert (=> b!2436697 (= e!1548622 (matchR!3276 (regTwo!14834 r!13927) s!9460))))

(declare-fun b!2436698 () Bool)

(declare-fun e!1548626 () Option!5650)

(assert (=> b!2436698 (= e!1548626 (Some!5649 (tuple2!28079 Nil!28460 s!9460)))))

(declare-fun b!2436699 () Bool)

(declare-fun lt!877539 () Unit!41705)

(declare-fun lt!877537 () Unit!41705)

(assert (=> b!2436699 (= lt!877539 lt!877537)))

(assert (=> b!2436699 (= (++!7066 (++!7066 Nil!28460 (Cons!28460 (h!33861 s!9460) Nil!28460)) (t!208535 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!691 (List!28558 C!14480 List!28558 List!28558) Unit!41705)

(assert (=> b!2436699 (= lt!877537 (lemmaMoveElementToOtherListKeepsConcatEq!691 Nil!28460 (h!33861 s!9460) (t!208535 s!9460) s!9460))))

(assert (=> b!2436699 (= e!1548624 (findConcatSeparation!758 (regOne!14834 r!13927) (regTwo!14834 r!13927) (++!7066 Nil!28460 (Cons!28460 (h!33861 s!9460) Nil!28460)) (t!208535 s!9460) s!9460))))

(declare-fun b!2436700 () Bool)

(assert (=> b!2436700 (= e!1548626 e!1548624)))

(declare-fun c!388801 () Bool)

(assert (=> b!2436700 (= c!388801 ((_ is Nil!28460) s!9460))))

(declare-fun b!2436701 () Bool)

(declare-fun res!1034402 () Bool)

(declare-fun e!1548623 () Bool)

(assert (=> b!2436701 (=> (not res!1034402) (not e!1548623))))

(declare-fun lt!877538 () Option!5650)

(declare-fun get!8777 (Option!5650) tuple2!28078)

(assert (=> b!2436701 (= res!1034402 (matchR!3276 (regTwo!14834 r!13927) (_2!16580 (get!8777 lt!877538))))))

(declare-fun b!2436702 () Bool)

(declare-fun res!1034401 () Bool)

(assert (=> b!2436702 (=> (not res!1034401) (not e!1548623))))

(assert (=> b!2436702 (= res!1034401 (matchR!3276 (regOne!14834 r!13927) (_1!16580 (get!8777 lt!877538))))))

(declare-fun d!704117 () Bool)

(declare-fun e!1548625 () Bool)

(assert (=> d!704117 e!1548625))

(declare-fun res!1034403 () Bool)

(assert (=> d!704117 (=> res!1034403 e!1548625)))

(assert (=> d!704117 (= res!1034403 e!1548623)))

(declare-fun res!1034404 () Bool)

(assert (=> d!704117 (=> (not res!1034404) (not e!1548623))))

(assert (=> d!704117 (= res!1034404 (isDefined!4476 lt!877538))))

(assert (=> d!704117 (= lt!877538 e!1548626)))

(declare-fun c!388800 () Bool)

(assert (=> d!704117 (= c!388800 e!1548622)))

(declare-fun res!1034400 () Bool)

(assert (=> d!704117 (=> (not res!1034400) (not e!1548622))))

(assert (=> d!704117 (= res!1034400 (matchR!3276 (regOne!14834 r!13927) Nil!28460))))

(assert (=> d!704117 (validRegex!2874 (regOne!14834 r!13927))))

(assert (=> d!704117 (= (findConcatSeparation!758 (regOne!14834 r!13927) (regTwo!14834 r!13927) Nil!28460 s!9460 s!9460) lt!877538)))

(declare-fun b!2436703 () Bool)

(assert (=> b!2436703 (= e!1548623 (= (++!7066 (_1!16580 (get!8777 lt!877538)) (_2!16580 (get!8777 lt!877538))) s!9460))))

(declare-fun b!2436704 () Bool)

(assert (=> b!2436704 (= e!1548625 (not (isDefined!4476 lt!877538)))))

(assert (= (and d!704117 res!1034400) b!2436697))

(assert (= (and d!704117 c!388800) b!2436698))

(assert (= (and d!704117 (not c!388800)) b!2436700))

(assert (= (and b!2436700 c!388801) b!2436696))

(assert (= (and b!2436700 (not c!388801)) b!2436699))

(assert (= (and d!704117 res!1034404) b!2436702))

(assert (= (and b!2436702 res!1034401) b!2436701))

(assert (= (and b!2436701 res!1034402) b!2436703))

(assert (= (and d!704117 (not res!1034403)) b!2436704))

(declare-fun m!2816325 () Bool)

(assert (=> b!2436697 m!2816325))

(declare-fun m!2816327 () Bool)

(assert (=> d!704117 m!2816327))

(declare-fun m!2816329 () Bool)

(assert (=> d!704117 m!2816329))

(assert (=> d!704117 m!2816301))

(declare-fun m!2816331 () Bool)

(assert (=> b!2436699 m!2816331))

(assert (=> b!2436699 m!2816331))

(declare-fun m!2816333 () Bool)

(assert (=> b!2436699 m!2816333))

(declare-fun m!2816335 () Bool)

(assert (=> b!2436699 m!2816335))

(assert (=> b!2436699 m!2816331))

(declare-fun m!2816337 () Bool)

(assert (=> b!2436699 m!2816337))

(assert (=> b!2436704 m!2816327))

(declare-fun m!2816339 () Bool)

(assert (=> b!2436701 m!2816339))

(declare-fun m!2816341 () Bool)

(assert (=> b!2436701 m!2816341))

(assert (=> b!2436702 m!2816339))

(declare-fun m!2816343 () Bool)

(assert (=> b!2436702 m!2816343))

(assert (=> b!2436703 m!2816339))

(declare-fun m!2816345 () Bool)

(assert (=> b!2436703 m!2816345))

(assert (=> b!2436468 d!704117))

(declare-fun d!704121 () Bool)

(assert (=> d!704121 (= (Exists!1197 lambda!92030) (choose!14448 lambda!92030))))

(declare-fun bs!464617 () Bool)

(assert (= bs!464617 d!704121))

(declare-fun m!2816347 () Bool)

(assert (=> bs!464617 m!2816347))

(assert (=> b!2436468 d!704121))

(declare-fun d!704123 () Bool)

(assert (=> d!704123 (= (isEmpty!16500 lt!877493) ((_ is Nil!28461) lt!877493))))

(assert (=> b!2436463 d!704123))

(declare-fun d!704125 () Bool)

(assert (=> d!704125 (= (tail!3792 l!9164) (t!208536 l!9164))))

(assert (=> b!2436463 d!704125))

(declare-fun b!2436714 () Bool)

(declare-fun res!1034414 () Bool)

(declare-fun e!1548637 () Bool)

(assert (=> b!2436714 (=> res!1034414 e!1548637)))

(declare-fun e!1548634 () Bool)

(assert (=> b!2436714 (= res!1034414 e!1548634)))

(declare-fun res!1034412 () Bool)

(assert (=> b!2436714 (=> (not res!1034412) (not e!1548634))))

(declare-fun lt!877543 () Bool)

(assert (=> b!2436714 (= res!1034412 lt!877543)))

(declare-fun b!2436715 () Bool)

(declare-fun e!1548636 () Bool)

(assert (=> b!2436715 (= e!1548636 (not (= (head!5520 s!9460) (c!388749 lt!877492))))))

(declare-fun b!2436716 () Bool)

(declare-fun e!1548635 () Bool)

(assert (=> b!2436716 (= e!1548635 (matchR!3276 (derivativeStep!1843 lt!877492 (head!5520 s!9460)) (tail!3793 s!9460)))))

(declare-fun b!2436717 () Bool)

(declare-fun res!1034417 () Bool)

(assert (=> b!2436717 (=> (not res!1034417) (not e!1548634))))

(declare-fun call!149261 () Bool)

(assert (=> b!2436717 (= res!1034417 (not call!149261))))

(declare-fun b!2436718 () Bool)

(declare-fun e!1548632 () Bool)

(assert (=> b!2436718 (= e!1548632 e!1548636)))

(declare-fun res!1034415 () Bool)

(assert (=> b!2436718 (=> res!1034415 e!1548636)))

(assert (=> b!2436718 (= res!1034415 call!149261)))

(declare-fun b!2436719 () Bool)

(declare-fun e!1548633 () Bool)

(assert (=> b!2436719 (= e!1548633 (not lt!877543))))

(declare-fun b!2436720 () Bool)

(declare-fun e!1548638 () Bool)

(assert (=> b!2436720 (= e!1548638 (= lt!877543 call!149261))))

(declare-fun b!2436721 () Bool)

(assert (=> b!2436721 (= e!1548635 (nullable!2189 lt!877492))))

(declare-fun b!2436722 () Bool)

(declare-fun res!1034411 () Bool)

(assert (=> b!2436722 (=> res!1034411 e!1548637)))

(assert (=> b!2436722 (= res!1034411 (not ((_ is ElementMatch!7161) lt!877492)))))

(assert (=> b!2436722 (= e!1548633 e!1548637)))

(declare-fun b!2436723 () Bool)

(assert (=> b!2436723 (= e!1548637 e!1548632)))

(declare-fun res!1034413 () Bool)

(assert (=> b!2436723 (=> (not res!1034413) (not e!1548632))))

(assert (=> b!2436723 (= res!1034413 (not lt!877543))))

(declare-fun b!2436724 () Bool)

(declare-fun res!1034416 () Bool)

(assert (=> b!2436724 (=> res!1034416 e!1548636)))

(assert (=> b!2436724 (= res!1034416 (not (isEmpty!16501 (tail!3793 s!9460))))))

(declare-fun d!704127 () Bool)

(assert (=> d!704127 e!1548638))

(declare-fun c!388806 () Bool)

(assert (=> d!704127 (= c!388806 ((_ is EmptyExpr!7161) lt!877492))))

(assert (=> d!704127 (= lt!877543 e!1548635)))

(declare-fun c!388805 () Bool)

(assert (=> d!704127 (= c!388805 (isEmpty!16501 s!9460))))

(assert (=> d!704127 (validRegex!2874 lt!877492)))

(assert (=> d!704127 (= (matchR!3276 lt!877492 s!9460) lt!877543)))

(declare-fun b!2436725 () Bool)

(assert (=> b!2436725 (= e!1548638 e!1548633)))

(declare-fun c!388804 () Bool)

(assert (=> b!2436725 (= c!388804 ((_ is EmptyLang!7161) lt!877492))))

(declare-fun b!2436726 () Bool)

(assert (=> b!2436726 (= e!1548634 (= (head!5520 s!9460) (c!388749 lt!877492)))))

(declare-fun b!2436727 () Bool)

(declare-fun res!1034410 () Bool)

(assert (=> b!2436727 (=> (not res!1034410) (not e!1548634))))

(assert (=> b!2436727 (= res!1034410 (isEmpty!16501 (tail!3793 s!9460)))))

(declare-fun bm!149256 () Bool)

(assert (=> bm!149256 (= call!149261 (isEmpty!16501 s!9460))))

(assert (= (and d!704127 c!388805) b!2436721))

(assert (= (and d!704127 (not c!388805)) b!2436716))

(assert (= (and d!704127 c!388806) b!2436720))

(assert (= (and d!704127 (not c!388806)) b!2436725))

(assert (= (and b!2436725 c!388804) b!2436719))

(assert (= (and b!2436725 (not c!388804)) b!2436722))

(assert (= (and b!2436722 (not res!1034411)) b!2436714))

(assert (= (and b!2436714 res!1034412) b!2436717))

(assert (= (and b!2436717 res!1034417) b!2436727))

(assert (= (and b!2436727 res!1034410) b!2436726))

(assert (= (and b!2436714 (not res!1034414)) b!2436723))

(assert (= (and b!2436723 res!1034413) b!2436718))

(assert (= (and b!2436718 (not res!1034415)) b!2436724))

(assert (= (and b!2436724 (not res!1034416)) b!2436715))

(assert (= (or b!2436720 b!2436717 b!2436718) bm!149256))

(assert (=> b!2436724 m!2816261))

(assert (=> b!2436724 m!2816261))

(assert (=> b!2436724 m!2816263))

(declare-fun m!2816349 () Bool)

(assert (=> b!2436721 m!2816349))

(assert (=> b!2436726 m!2816267))

(assert (=> b!2436716 m!2816267))

(assert (=> b!2436716 m!2816267))

(declare-fun m!2816351 () Bool)

(assert (=> b!2436716 m!2816351))

(assert (=> b!2436716 m!2816261))

(assert (=> b!2436716 m!2816351))

(assert (=> b!2436716 m!2816261))

(declare-fun m!2816353 () Bool)

(assert (=> b!2436716 m!2816353))

(assert (=> bm!149256 m!2816241))

(assert (=> b!2436727 m!2816261))

(assert (=> b!2436727 m!2816261))

(assert (=> b!2436727 m!2816263))

(assert (=> d!704127 m!2816241))

(declare-fun m!2816357 () Bool)

(assert (=> d!704127 m!2816357))

(assert (=> b!2436715 m!2816267))

(assert (=> b!2436458 d!704127))

(declare-fun b!2436728 () Bool)

(declare-fun res!1034422 () Bool)

(declare-fun e!1548644 () Bool)

(assert (=> b!2436728 (=> res!1034422 e!1548644)))

(declare-fun e!1548641 () Bool)

(assert (=> b!2436728 (= res!1034422 e!1548641)))

(declare-fun res!1034420 () Bool)

(assert (=> b!2436728 (=> (not res!1034420) (not e!1548641))))

(declare-fun lt!877544 () Bool)

(assert (=> b!2436728 (= res!1034420 lt!877544)))

(declare-fun b!2436729 () Bool)

(declare-fun e!1548643 () Bool)

(assert (=> b!2436729 (= e!1548643 (not (= (head!5520 (++!7066 s!9460 Nil!28460)) (c!388749 lt!877492))))))

(declare-fun b!2436730 () Bool)

(declare-fun e!1548642 () Bool)

(assert (=> b!2436730 (= e!1548642 (matchR!3276 (derivativeStep!1843 lt!877492 (head!5520 (++!7066 s!9460 Nil!28460))) (tail!3793 (++!7066 s!9460 Nil!28460))))))

(declare-fun b!2436731 () Bool)

(declare-fun res!1034425 () Bool)

(assert (=> b!2436731 (=> (not res!1034425) (not e!1548641))))

(declare-fun call!149262 () Bool)

(assert (=> b!2436731 (= res!1034425 (not call!149262))))

(declare-fun b!2436732 () Bool)

(declare-fun e!1548639 () Bool)

(assert (=> b!2436732 (= e!1548639 e!1548643)))

(declare-fun res!1034423 () Bool)

(assert (=> b!2436732 (=> res!1034423 e!1548643)))

(assert (=> b!2436732 (= res!1034423 call!149262)))

(declare-fun b!2436733 () Bool)

(declare-fun e!1548640 () Bool)

(assert (=> b!2436733 (= e!1548640 (not lt!877544))))

(declare-fun b!2436734 () Bool)

(declare-fun e!1548645 () Bool)

(assert (=> b!2436734 (= e!1548645 (= lt!877544 call!149262))))

(declare-fun b!2436735 () Bool)

(assert (=> b!2436735 (= e!1548642 (nullable!2189 lt!877492))))

(declare-fun b!2436736 () Bool)

(declare-fun res!1034419 () Bool)

(assert (=> b!2436736 (=> res!1034419 e!1548644)))

(assert (=> b!2436736 (= res!1034419 (not ((_ is ElementMatch!7161) lt!877492)))))

(assert (=> b!2436736 (= e!1548640 e!1548644)))

(declare-fun b!2436737 () Bool)

(assert (=> b!2436737 (= e!1548644 e!1548639)))

(declare-fun res!1034421 () Bool)

(assert (=> b!2436737 (=> (not res!1034421) (not e!1548639))))

(assert (=> b!2436737 (= res!1034421 (not lt!877544))))

(declare-fun b!2436738 () Bool)

(declare-fun res!1034424 () Bool)

(assert (=> b!2436738 (=> res!1034424 e!1548643)))

(assert (=> b!2436738 (= res!1034424 (not (isEmpty!16501 (tail!3793 (++!7066 s!9460 Nil!28460)))))))

(declare-fun d!704129 () Bool)

(assert (=> d!704129 e!1548645))

(declare-fun c!388809 () Bool)

(assert (=> d!704129 (= c!388809 ((_ is EmptyExpr!7161) lt!877492))))

(assert (=> d!704129 (= lt!877544 e!1548642)))

(declare-fun c!388808 () Bool)

(assert (=> d!704129 (= c!388808 (isEmpty!16501 (++!7066 s!9460 Nil!28460)))))

(assert (=> d!704129 (validRegex!2874 lt!877492)))

(assert (=> d!704129 (= (matchR!3276 lt!877492 (++!7066 s!9460 Nil!28460)) lt!877544)))

(declare-fun b!2436739 () Bool)

(assert (=> b!2436739 (= e!1548645 e!1548640)))

(declare-fun c!388807 () Bool)

(assert (=> b!2436739 (= c!388807 ((_ is EmptyLang!7161) lt!877492))))

(declare-fun b!2436740 () Bool)

(assert (=> b!2436740 (= e!1548641 (= (head!5520 (++!7066 s!9460 Nil!28460)) (c!388749 lt!877492)))))

(declare-fun b!2436741 () Bool)

(declare-fun res!1034418 () Bool)

(assert (=> b!2436741 (=> (not res!1034418) (not e!1548641))))

(assert (=> b!2436741 (= res!1034418 (isEmpty!16501 (tail!3793 (++!7066 s!9460 Nil!28460))))))

(declare-fun bm!149257 () Bool)

(assert (=> bm!149257 (= call!149262 (isEmpty!16501 (++!7066 s!9460 Nil!28460)))))

(assert (= (and d!704129 c!388808) b!2436735))

(assert (= (and d!704129 (not c!388808)) b!2436730))

(assert (= (and d!704129 c!388809) b!2436734))

(assert (= (and d!704129 (not c!388809)) b!2436739))

(assert (= (and b!2436739 c!388807) b!2436733))

(assert (= (and b!2436739 (not c!388807)) b!2436736))

(assert (= (and b!2436736 (not res!1034419)) b!2436728))

(assert (= (and b!2436728 res!1034420) b!2436731))

(assert (= (and b!2436731 res!1034425) b!2436741))

(assert (= (and b!2436741 res!1034418) b!2436740))

(assert (= (and b!2436728 (not res!1034422)) b!2436737))

(assert (= (and b!2436737 res!1034421) b!2436732))

(assert (= (and b!2436732 (not res!1034423)) b!2436738))

(assert (= (and b!2436738 (not res!1034424)) b!2436729))

(assert (= (or b!2436734 b!2436731 b!2436732) bm!149257))

(assert (=> b!2436738 m!2816193))

(declare-fun m!2816379 () Bool)

(assert (=> b!2436738 m!2816379))

(assert (=> b!2436738 m!2816379))

(declare-fun m!2816381 () Bool)

(assert (=> b!2436738 m!2816381))

(assert (=> b!2436735 m!2816349))

(assert (=> b!2436740 m!2816193))

(declare-fun m!2816383 () Bool)

(assert (=> b!2436740 m!2816383))

(assert (=> b!2436730 m!2816193))

(assert (=> b!2436730 m!2816383))

(assert (=> b!2436730 m!2816383))

(declare-fun m!2816385 () Bool)

(assert (=> b!2436730 m!2816385))

(assert (=> b!2436730 m!2816193))

(assert (=> b!2436730 m!2816379))

(assert (=> b!2436730 m!2816385))

(assert (=> b!2436730 m!2816379))

(declare-fun m!2816389 () Bool)

(assert (=> b!2436730 m!2816389))

(assert (=> bm!149257 m!2816193))

(declare-fun m!2816391 () Bool)

(assert (=> bm!149257 m!2816391))

(assert (=> b!2436741 m!2816193))

(assert (=> b!2436741 m!2816379))

(assert (=> b!2436741 m!2816379))

(assert (=> b!2436741 m!2816381))

(assert (=> d!704129 m!2816193))

(assert (=> d!704129 m!2816391))

(assert (=> d!704129 m!2816357))

(assert (=> b!2436729 m!2816193))

(assert (=> b!2436729 m!2816383))

(assert (=> b!2436458 d!704129))

(declare-fun b!2436766 () Bool)

(declare-fun e!1548663 () List!28558)

(assert (=> b!2436766 (= e!1548663 Nil!28460)))

(declare-fun b!2436768 () Bool)

(declare-fun res!1034439 () Bool)

(declare-fun e!1548662 () Bool)

(assert (=> b!2436768 (=> (not res!1034439) (not e!1548662))))

(declare-fun lt!877548 () List!28558)

(declare-fun size!22257 (List!28558) Int)

(assert (=> b!2436768 (= res!1034439 (= (size!22257 lt!877548) (+ (size!22257 s!9460) (size!22257 Nil!28460))))))

(declare-fun b!2436769 () Bool)

(assert (=> b!2436769 (= e!1548662 (or (not (= Nil!28460 Nil!28460)) (= lt!877548 s!9460)))))

(declare-fun d!704137 () Bool)

(assert (=> d!704137 e!1548662))

(declare-fun res!1034438 () Bool)

(assert (=> d!704137 (=> (not res!1034438) (not e!1548662))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3919 (List!28558) (InoxSet C!14480))

(assert (=> d!704137 (= res!1034438 (= (content!3919 lt!877548) ((_ map or) (content!3919 s!9460) (content!3919 Nil!28460))))))

(assert (=> d!704137 (= lt!877548 e!1548663)))

(declare-fun c!388816 () Bool)

(assert (=> d!704137 (= c!388816 ((_ is Nil!28460) s!9460))))

(assert (=> d!704137 (= (++!7066 s!9460 Nil!28460) lt!877548)))

(declare-fun b!2436767 () Bool)

(assert (=> b!2436767 (= e!1548663 (Cons!28460 (h!33861 s!9460) (++!7066 (t!208535 s!9460) Nil!28460)))))

(assert (= (and d!704137 c!388816) b!2436766))

(assert (= (and d!704137 (not c!388816)) b!2436767))

(assert (= (and d!704137 res!1034438) b!2436768))

(assert (= (and b!2436768 res!1034439) b!2436769))

(declare-fun m!2816413 () Bool)

(assert (=> b!2436768 m!2816413))

(declare-fun m!2816415 () Bool)

(assert (=> b!2436768 m!2816415))

(declare-fun m!2816417 () Bool)

(assert (=> b!2436768 m!2816417))

(declare-fun m!2816419 () Bool)

(assert (=> d!704137 m!2816419))

(declare-fun m!2816421 () Bool)

(assert (=> d!704137 m!2816421))

(declare-fun m!2816423 () Bool)

(assert (=> d!704137 m!2816423))

(declare-fun m!2816425 () Bool)

(assert (=> b!2436767 m!2816425))

(assert (=> b!2436458 d!704137))

(declare-fun d!704143 () Bool)

(assert (=> d!704143 (matchR!3276 (Concat!11797 lt!877496 EmptyExpr!7161) (++!7066 s!9460 Nil!28460))))

(declare-fun lt!877551 () Unit!41705)

(declare-fun choose!14451 (Regex!7161 Regex!7161 List!28558 List!28558) Unit!41705)

(assert (=> d!704143 (= lt!877551 (choose!14451 lt!877496 EmptyExpr!7161 s!9460 Nil!28460))))

(declare-fun e!1548680 () Bool)

(assert (=> d!704143 e!1548680))

(declare-fun res!1034448 () Bool)

(assert (=> d!704143 (=> (not res!1034448) (not e!1548680))))

(assert (=> d!704143 (= res!1034448 (validRegex!2874 lt!877496))))

(assert (=> d!704143 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!108 lt!877496 EmptyExpr!7161 s!9460 Nil!28460) lt!877551)))

(declare-fun b!2436794 () Bool)

(assert (=> b!2436794 (= e!1548680 (validRegex!2874 EmptyExpr!7161))))

(assert (= (and d!704143 res!1034448) b!2436794))

(assert (=> d!704143 m!2816193))

(assert (=> d!704143 m!2816193))

(declare-fun m!2816427 () Bool)

(assert (=> d!704143 m!2816427))

(declare-fun m!2816429 () Bool)

(assert (=> d!704143 m!2816429))

(declare-fun m!2816431 () Bool)

(assert (=> d!704143 m!2816431))

(declare-fun m!2816433 () Bool)

(assert (=> b!2436794 m!2816433))

(assert (=> b!2436458 d!704143))

(declare-fun bs!464622 () Bool)

(declare-fun d!704145 () Bool)

(assert (= bs!464622 (and d!704145 start!238490)))

(declare-fun lambda!92066 () Int)

(assert (=> bs!464622 (= lambda!92066 lambda!92029)))

(declare-fun b!2436825 () Bool)

(declare-fun e!1548704 () Regex!7161)

(assert (=> b!2436825 (= e!1548704 (Concat!11797 (h!33862 lt!877493) (generalisedConcat!262 (t!208536 lt!877493))))))

(declare-fun b!2436826 () Bool)

(declare-fun e!1548697 () Regex!7161)

(assert (=> b!2436826 (= e!1548697 (h!33862 lt!877493))))

(declare-fun b!2436827 () Bool)

(declare-fun e!1548705 () Bool)

(declare-fun e!1548700 () Bool)

(assert (=> b!2436827 (= e!1548705 e!1548700)))

(declare-fun c!388833 () Bool)

(assert (=> b!2436827 (= c!388833 (isEmpty!16500 (tail!3792 lt!877493)))))

(declare-fun b!2436829 () Bool)

(declare-fun lt!877554 () Regex!7161)

(assert (=> b!2436829 (= e!1548700 (= lt!877554 (head!5519 lt!877493)))))

(declare-fun e!1548702 () Bool)

(assert (=> d!704145 e!1548702))

(declare-fun res!1034466 () Bool)

(assert (=> d!704145 (=> (not res!1034466) (not e!1548702))))

(assert (=> d!704145 (= res!1034466 (validRegex!2874 lt!877554))))

(assert (=> d!704145 (= lt!877554 e!1548697)))

(declare-fun c!388840 () Bool)

(declare-fun e!1548708 () Bool)

(assert (=> d!704145 (= c!388840 e!1548708)))

(declare-fun res!1034465 () Bool)

(assert (=> d!704145 (=> (not res!1034465) (not e!1548708))))

(assert (=> d!704145 (= res!1034465 ((_ is Cons!28461) lt!877493))))

(assert (=> d!704145 (forall!5795 lt!877493 lambda!92066)))

(assert (=> d!704145 (= (generalisedConcat!262 lt!877493) lt!877554)))

(declare-fun b!2436831 () Bool)

(assert (=> b!2436831 (= e!1548702 e!1548705)))

(declare-fun c!388838 () Bool)

(assert (=> b!2436831 (= c!388838 (isEmpty!16500 lt!877493))))

(declare-fun b!2436833 () Bool)

(assert (=> b!2436833 (= e!1548704 EmptyExpr!7161)))

(declare-fun b!2436835 () Bool)

(declare-fun isEmptyExpr!208 (Regex!7161) Bool)

(assert (=> b!2436835 (= e!1548705 (isEmptyExpr!208 lt!877554))))

(declare-fun b!2436837 () Bool)

(assert (=> b!2436837 (= e!1548697 e!1548704)))

(declare-fun c!388836 () Bool)

(assert (=> b!2436837 (= c!388836 ((_ is Cons!28461) lt!877493))))

(declare-fun b!2436839 () Bool)

(assert (=> b!2436839 (= e!1548708 (isEmpty!16500 (t!208536 lt!877493)))))

(declare-fun b!2436841 () Bool)

(declare-fun isConcat!208 (Regex!7161) Bool)

(assert (=> b!2436841 (= e!1548700 (isConcat!208 lt!877554))))

(assert (= (and d!704145 res!1034465) b!2436839))

(assert (= (and d!704145 c!388840) b!2436826))

(assert (= (and d!704145 (not c!388840)) b!2436837))

(assert (= (and b!2436837 c!388836) b!2436825))

(assert (= (and b!2436837 (not c!388836)) b!2436833))

(assert (= (and d!704145 res!1034466) b!2436831))

(assert (= (and b!2436831 c!388838) b!2436835))

(assert (= (and b!2436831 (not c!388838)) b!2436827))

(assert (= (and b!2436827 c!388833) b!2436829))

(assert (= (and b!2436827 (not c!388833)) b!2436841))

(declare-fun m!2816435 () Bool)

(assert (=> b!2436825 m!2816435))

(declare-fun m!2816437 () Bool)

(assert (=> b!2436835 m!2816437))

(declare-fun m!2816439 () Bool)

(assert (=> b!2436827 m!2816439))

(assert (=> b!2436827 m!2816439))

(declare-fun m!2816441 () Bool)

(assert (=> b!2436827 m!2816441))

(declare-fun m!2816443 () Bool)

(assert (=> b!2436829 m!2816443))

(assert (=> b!2436831 m!2816213))

(declare-fun m!2816445 () Bool)

(assert (=> b!2436839 m!2816445))

(declare-fun m!2816447 () Bool)

(assert (=> b!2436841 m!2816447))

(declare-fun m!2816449 () Bool)

(assert (=> d!704145 m!2816449))

(declare-fun m!2816451 () Bool)

(assert (=> d!704145 m!2816451))

(assert (=> b!2436464 d!704145))

(declare-fun b!2436846 () Bool)

(declare-fun res!1034472 () Bool)

(declare-fun e!1548715 () Bool)

(assert (=> b!2436846 (=> res!1034472 e!1548715)))

(declare-fun e!1548712 () Bool)

(assert (=> b!2436846 (= res!1034472 e!1548712)))

(declare-fun res!1034470 () Bool)

(assert (=> b!2436846 (=> (not res!1034470) (not e!1548712))))

(declare-fun lt!877555 () Bool)

(assert (=> b!2436846 (= res!1034470 lt!877555)))

(declare-fun b!2436847 () Bool)

(declare-fun e!1548714 () Bool)

(assert (=> b!2436847 (= e!1548714 (not (= (head!5520 s!9460) (c!388749 lt!877496))))))

(declare-fun b!2436848 () Bool)

(declare-fun e!1548713 () Bool)

(assert (=> b!2436848 (= e!1548713 (matchR!3276 (derivativeStep!1843 lt!877496 (head!5520 s!9460)) (tail!3793 s!9460)))))

(declare-fun b!2436849 () Bool)

(declare-fun res!1034475 () Bool)

(assert (=> b!2436849 (=> (not res!1034475) (not e!1548712))))

(declare-fun call!149269 () Bool)

(assert (=> b!2436849 (= res!1034475 (not call!149269))))

(declare-fun b!2436850 () Bool)

(declare-fun e!1548710 () Bool)

(assert (=> b!2436850 (= e!1548710 e!1548714)))

(declare-fun res!1034473 () Bool)

(assert (=> b!2436850 (=> res!1034473 e!1548714)))

(assert (=> b!2436850 (= res!1034473 call!149269)))

(declare-fun b!2436851 () Bool)

(declare-fun e!1548711 () Bool)

(assert (=> b!2436851 (= e!1548711 (not lt!877555))))

(declare-fun b!2436852 () Bool)

(declare-fun e!1548716 () Bool)

(assert (=> b!2436852 (= e!1548716 (= lt!877555 call!149269))))

(declare-fun b!2436853 () Bool)

(assert (=> b!2436853 (= e!1548713 (nullable!2189 lt!877496))))

(declare-fun b!2436854 () Bool)

(declare-fun res!1034469 () Bool)

(assert (=> b!2436854 (=> res!1034469 e!1548715)))

(assert (=> b!2436854 (= res!1034469 (not ((_ is ElementMatch!7161) lt!877496)))))

(assert (=> b!2436854 (= e!1548711 e!1548715)))

(declare-fun b!2436855 () Bool)

(assert (=> b!2436855 (= e!1548715 e!1548710)))

(declare-fun res!1034471 () Bool)

(assert (=> b!2436855 (=> (not res!1034471) (not e!1548710))))

(assert (=> b!2436855 (= res!1034471 (not lt!877555))))

(declare-fun b!2436856 () Bool)

(declare-fun res!1034474 () Bool)

(assert (=> b!2436856 (=> res!1034474 e!1548714)))

(assert (=> b!2436856 (= res!1034474 (not (isEmpty!16501 (tail!3793 s!9460))))))

(declare-fun d!704147 () Bool)

(assert (=> d!704147 e!1548716))

(declare-fun c!388843 () Bool)

(assert (=> d!704147 (= c!388843 ((_ is EmptyExpr!7161) lt!877496))))

(assert (=> d!704147 (= lt!877555 e!1548713)))

(declare-fun c!388842 () Bool)

(assert (=> d!704147 (= c!388842 (isEmpty!16501 s!9460))))

(assert (=> d!704147 (validRegex!2874 lt!877496)))

(assert (=> d!704147 (= (matchR!3276 lt!877496 s!9460) lt!877555)))

(declare-fun b!2436857 () Bool)

(assert (=> b!2436857 (= e!1548716 e!1548711)))

(declare-fun c!388841 () Bool)

(assert (=> b!2436857 (= c!388841 ((_ is EmptyLang!7161) lt!877496))))

(declare-fun b!2436858 () Bool)

(assert (=> b!2436858 (= e!1548712 (= (head!5520 s!9460) (c!388749 lt!877496)))))

(declare-fun b!2436859 () Bool)

(declare-fun res!1034468 () Bool)

(assert (=> b!2436859 (=> (not res!1034468) (not e!1548712))))

(assert (=> b!2436859 (= res!1034468 (isEmpty!16501 (tail!3793 s!9460)))))

(declare-fun bm!149264 () Bool)

(assert (=> bm!149264 (= call!149269 (isEmpty!16501 s!9460))))

(assert (= (and d!704147 c!388842) b!2436853))

(assert (= (and d!704147 (not c!388842)) b!2436848))

(assert (= (and d!704147 c!388843) b!2436852))

(assert (= (and d!704147 (not c!388843)) b!2436857))

(assert (= (and b!2436857 c!388841) b!2436851))

(assert (= (and b!2436857 (not c!388841)) b!2436854))

(assert (= (and b!2436854 (not res!1034469)) b!2436846))

(assert (= (and b!2436846 res!1034470) b!2436849))

(assert (= (and b!2436849 res!1034475) b!2436859))

(assert (= (and b!2436859 res!1034468) b!2436858))

(assert (= (and b!2436846 (not res!1034472)) b!2436855))

(assert (= (and b!2436855 res!1034471) b!2436850))

(assert (= (and b!2436850 (not res!1034473)) b!2436856))

(assert (= (and b!2436856 (not res!1034474)) b!2436847))

(assert (= (or b!2436852 b!2436849 b!2436850) bm!149264))

(assert (=> b!2436856 m!2816261))

(assert (=> b!2436856 m!2816261))

(assert (=> b!2436856 m!2816263))

(declare-fun m!2816453 () Bool)

(assert (=> b!2436853 m!2816453))

(assert (=> b!2436858 m!2816267))

(assert (=> b!2436848 m!2816267))

(assert (=> b!2436848 m!2816267))

(declare-fun m!2816455 () Bool)

(assert (=> b!2436848 m!2816455))

(assert (=> b!2436848 m!2816261))

(assert (=> b!2436848 m!2816455))

(assert (=> b!2436848 m!2816261))

(declare-fun m!2816457 () Bool)

(assert (=> b!2436848 m!2816457))

(assert (=> bm!149264 m!2816241))

(assert (=> b!2436859 m!2816261))

(assert (=> b!2436859 m!2816261))

(assert (=> b!2436859 m!2816263))

(assert (=> d!704147 m!2816241))

(assert (=> d!704147 m!2816431))

(assert (=> b!2436847 m!2816267))

(assert (=> b!2436455 d!704147))

(declare-fun d!704149 () Bool)

(assert (=> d!704149 (= (head!5519 l!9164) (h!33862 l!9164))))

(assert (=> b!2436455 d!704149))

(declare-fun bs!464630 () Bool)

(declare-fun d!704151 () Bool)

(assert (= bs!464630 (and d!704151 start!238490)))

(declare-fun lambda!92069 () Int)

(assert (=> bs!464630 (= lambda!92069 lambda!92029)))

(declare-fun bs!464631 () Bool)

(assert (= bs!464631 (and d!704151 d!704145)))

(assert (=> bs!464631 (= lambda!92069 lambda!92066)))

(declare-fun b!2436860 () Bool)

(declare-fun e!1548720 () Regex!7161)

(assert (=> b!2436860 (= e!1548720 (Concat!11797 (h!33862 l!9164) (generalisedConcat!262 (t!208536 l!9164))))))

(declare-fun b!2436861 () Bool)

(declare-fun e!1548717 () Regex!7161)

(assert (=> b!2436861 (= e!1548717 (h!33862 l!9164))))

(declare-fun b!2436862 () Bool)

(declare-fun e!1548721 () Bool)

(declare-fun e!1548718 () Bool)

(assert (=> b!2436862 (= e!1548721 e!1548718)))

(declare-fun c!388844 () Bool)

(assert (=> b!2436862 (= c!388844 (isEmpty!16500 (tail!3792 l!9164)))))

(declare-fun b!2436863 () Bool)

(declare-fun lt!877556 () Regex!7161)

(assert (=> b!2436863 (= e!1548718 (= lt!877556 (head!5519 l!9164)))))

(declare-fun e!1548719 () Bool)

(assert (=> d!704151 e!1548719))

(declare-fun res!1034477 () Bool)

(assert (=> d!704151 (=> (not res!1034477) (not e!1548719))))

(assert (=> d!704151 (= res!1034477 (validRegex!2874 lt!877556))))

(assert (=> d!704151 (= lt!877556 e!1548717)))

(declare-fun c!388847 () Bool)

(declare-fun e!1548722 () Bool)

(assert (=> d!704151 (= c!388847 e!1548722)))

(declare-fun res!1034476 () Bool)

(assert (=> d!704151 (=> (not res!1034476) (not e!1548722))))

(assert (=> d!704151 (= res!1034476 ((_ is Cons!28461) l!9164))))

(assert (=> d!704151 (forall!5795 l!9164 lambda!92069)))

(assert (=> d!704151 (= (generalisedConcat!262 l!9164) lt!877556)))

(declare-fun b!2436864 () Bool)

(assert (=> b!2436864 (= e!1548719 e!1548721)))

(declare-fun c!388846 () Bool)

(assert (=> b!2436864 (= c!388846 (isEmpty!16500 l!9164))))

(declare-fun b!2436865 () Bool)

(assert (=> b!2436865 (= e!1548720 EmptyExpr!7161)))

(declare-fun b!2436866 () Bool)

(assert (=> b!2436866 (= e!1548721 (isEmptyExpr!208 lt!877556))))

(declare-fun b!2436867 () Bool)

(assert (=> b!2436867 (= e!1548717 e!1548720)))

(declare-fun c!388845 () Bool)

(assert (=> b!2436867 (= c!388845 ((_ is Cons!28461) l!9164))))

(declare-fun b!2436868 () Bool)

(assert (=> b!2436868 (= e!1548722 (isEmpty!16500 (t!208536 l!9164)))))

(declare-fun b!2436869 () Bool)

(assert (=> b!2436869 (= e!1548718 (isConcat!208 lt!877556))))

(assert (= (and d!704151 res!1034476) b!2436868))

(assert (= (and d!704151 c!388847) b!2436861))

(assert (= (and d!704151 (not c!388847)) b!2436867))

(assert (= (and b!2436867 c!388845) b!2436860))

(assert (= (and b!2436867 (not c!388845)) b!2436865))

(assert (= (and d!704151 res!1034477) b!2436864))

(assert (= (and b!2436864 c!388846) b!2436866))

(assert (= (and b!2436864 (not c!388846)) b!2436862))

(assert (= (and b!2436862 c!388844) b!2436863))

(assert (= (and b!2436862 (not c!388844)) b!2436869))

(declare-fun m!2816465 () Bool)

(assert (=> b!2436860 m!2816465))

(declare-fun m!2816467 () Bool)

(assert (=> b!2436866 m!2816467))

(assert (=> b!2436862 m!2816215))

(assert (=> b!2436862 m!2816215))

(declare-fun m!2816469 () Bool)

(assert (=> b!2436862 m!2816469))

(assert (=> b!2436863 m!2816227))

(assert (=> b!2436864 m!2816229))

(declare-fun m!2816471 () Bool)

(assert (=> b!2436868 m!2816471))

(declare-fun m!2816473 () Bool)

(assert (=> b!2436869 m!2816473))

(declare-fun m!2816475 () Bool)

(assert (=> d!704151 m!2816475))

(declare-fun m!2816477 () Bool)

(assert (=> d!704151 m!2816477))

(assert (=> b!2436466 d!704151))

(declare-fun b!2436888 () Bool)

(declare-fun e!1548732 () Bool)

(declare-fun tp!773858 () Bool)

(assert (=> b!2436888 (= e!1548732 (and tp_is_empty!11735 tp!773858))))

(assert (=> b!2436456 (= tp!773855 e!1548732)))

(assert (= (and b!2436456 ((_ is Cons!28460) (t!208535 s!9460))) b!2436888))

(declare-fun e!1548735 () Bool)

(assert (=> b!2436459 (= tp!773852 e!1548735)))

(declare-fun b!2436899 () Bool)

(assert (=> b!2436899 (= e!1548735 tp_is_empty!11735)))

(declare-fun b!2436901 () Bool)

(declare-fun tp!773872 () Bool)

(assert (=> b!2436901 (= e!1548735 tp!773872)))

(declare-fun b!2436900 () Bool)

(declare-fun tp!773870 () Bool)

(declare-fun tp!773869 () Bool)

(assert (=> b!2436900 (= e!1548735 (and tp!773870 tp!773869))))

(declare-fun b!2436902 () Bool)

(declare-fun tp!773873 () Bool)

(declare-fun tp!773871 () Bool)

(assert (=> b!2436902 (= e!1548735 (and tp!773873 tp!773871))))

(assert (= (and b!2436459 ((_ is ElementMatch!7161) (h!33862 l!9164))) b!2436899))

(assert (= (and b!2436459 ((_ is Concat!11797) (h!33862 l!9164))) b!2436900))

(assert (= (and b!2436459 ((_ is Star!7161) (h!33862 l!9164))) b!2436901))

(assert (= (and b!2436459 ((_ is Union!7161) (h!33862 l!9164))) b!2436902))

(declare-fun b!2436907 () Bool)

(declare-fun e!1548738 () Bool)

(declare-fun tp!773878 () Bool)

(declare-fun tp!773879 () Bool)

(assert (=> b!2436907 (= e!1548738 (and tp!773878 tp!773879))))

(assert (=> b!2436459 (= tp!773854 e!1548738)))

(assert (= (and b!2436459 ((_ is Cons!28461) (t!208536 l!9164))) b!2436907))

(declare-fun e!1548739 () Bool)

(assert (=> b!2436465 (= tp!773848 e!1548739)))

(declare-fun b!2436908 () Bool)

(assert (=> b!2436908 (= e!1548739 tp_is_empty!11735)))

(declare-fun b!2436910 () Bool)

(declare-fun tp!773883 () Bool)

(assert (=> b!2436910 (= e!1548739 tp!773883)))

(declare-fun b!2436909 () Bool)

(declare-fun tp!773881 () Bool)

(declare-fun tp!773880 () Bool)

(assert (=> b!2436909 (= e!1548739 (and tp!773881 tp!773880))))

(declare-fun b!2436911 () Bool)

(declare-fun tp!773884 () Bool)

(declare-fun tp!773882 () Bool)

(assert (=> b!2436911 (= e!1548739 (and tp!773884 tp!773882))))

(assert (= (and b!2436465 ((_ is ElementMatch!7161) (reg!7490 r!13927))) b!2436908))

(assert (= (and b!2436465 ((_ is Concat!11797) (reg!7490 r!13927))) b!2436909))

(assert (= (and b!2436465 ((_ is Star!7161) (reg!7490 r!13927))) b!2436910))

(assert (= (and b!2436465 ((_ is Union!7161) (reg!7490 r!13927))) b!2436911))

(declare-fun e!1548740 () Bool)

(assert (=> b!2436460 (= tp!773851 e!1548740)))

(declare-fun b!2436912 () Bool)

(assert (=> b!2436912 (= e!1548740 tp_is_empty!11735)))

(declare-fun b!2436914 () Bool)

(declare-fun tp!773888 () Bool)

(assert (=> b!2436914 (= e!1548740 tp!773888)))

(declare-fun b!2436913 () Bool)

(declare-fun tp!773886 () Bool)

(declare-fun tp!773885 () Bool)

(assert (=> b!2436913 (= e!1548740 (and tp!773886 tp!773885))))

(declare-fun b!2436915 () Bool)

(declare-fun tp!773889 () Bool)

(declare-fun tp!773887 () Bool)

(assert (=> b!2436915 (= e!1548740 (and tp!773889 tp!773887))))

(assert (= (and b!2436460 ((_ is ElementMatch!7161) (regOne!14835 r!13927))) b!2436912))

(assert (= (and b!2436460 ((_ is Concat!11797) (regOne!14835 r!13927))) b!2436913))

(assert (= (and b!2436460 ((_ is Star!7161) (regOne!14835 r!13927))) b!2436914))

(assert (= (and b!2436460 ((_ is Union!7161) (regOne!14835 r!13927))) b!2436915))

(declare-fun e!1548741 () Bool)

(assert (=> b!2436460 (= tp!773849 e!1548741)))

(declare-fun b!2436916 () Bool)

(assert (=> b!2436916 (= e!1548741 tp_is_empty!11735)))

(declare-fun b!2436918 () Bool)

(declare-fun tp!773893 () Bool)

(assert (=> b!2436918 (= e!1548741 tp!773893)))

(declare-fun b!2436917 () Bool)

(declare-fun tp!773891 () Bool)

(declare-fun tp!773890 () Bool)

(assert (=> b!2436917 (= e!1548741 (and tp!773891 tp!773890))))

(declare-fun b!2436919 () Bool)

(declare-fun tp!773894 () Bool)

(declare-fun tp!773892 () Bool)

(assert (=> b!2436919 (= e!1548741 (and tp!773894 tp!773892))))

(assert (= (and b!2436460 ((_ is ElementMatch!7161) (regTwo!14835 r!13927))) b!2436916))

(assert (= (and b!2436460 ((_ is Concat!11797) (regTwo!14835 r!13927))) b!2436917))

(assert (= (and b!2436460 ((_ is Star!7161) (regTwo!14835 r!13927))) b!2436918))

(assert (= (and b!2436460 ((_ is Union!7161) (regTwo!14835 r!13927))) b!2436919))

(declare-fun e!1548742 () Bool)

(assert (=> b!2436461 (= tp!773850 e!1548742)))

(declare-fun b!2436920 () Bool)

(assert (=> b!2436920 (= e!1548742 tp_is_empty!11735)))

(declare-fun b!2436922 () Bool)

(declare-fun tp!773898 () Bool)

(assert (=> b!2436922 (= e!1548742 tp!773898)))

(declare-fun b!2436921 () Bool)

(declare-fun tp!773896 () Bool)

(declare-fun tp!773895 () Bool)

(assert (=> b!2436921 (= e!1548742 (and tp!773896 tp!773895))))

(declare-fun b!2436923 () Bool)

(declare-fun tp!773899 () Bool)

(declare-fun tp!773897 () Bool)

(assert (=> b!2436923 (= e!1548742 (and tp!773899 tp!773897))))

(assert (= (and b!2436461 ((_ is ElementMatch!7161) (regOne!14834 r!13927))) b!2436920))

(assert (= (and b!2436461 ((_ is Concat!11797) (regOne!14834 r!13927))) b!2436921))

(assert (= (and b!2436461 ((_ is Star!7161) (regOne!14834 r!13927))) b!2436922))

(assert (= (and b!2436461 ((_ is Union!7161) (regOne!14834 r!13927))) b!2436923))

(declare-fun e!1548743 () Bool)

(assert (=> b!2436461 (= tp!773853 e!1548743)))

(declare-fun b!2436924 () Bool)

(assert (=> b!2436924 (= e!1548743 tp_is_empty!11735)))

(declare-fun b!2436926 () Bool)

(declare-fun tp!773903 () Bool)

(assert (=> b!2436926 (= e!1548743 tp!773903)))

(declare-fun b!2436925 () Bool)

(declare-fun tp!773901 () Bool)

(declare-fun tp!773900 () Bool)

(assert (=> b!2436925 (= e!1548743 (and tp!773901 tp!773900))))

(declare-fun b!2436927 () Bool)

(declare-fun tp!773904 () Bool)

(declare-fun tp!773902 () Bool)

(assert (=> b!2436927 (= e!1548743 (and tp!773904 tp!773902))))

(assert (= (and b!2436461 ((_ is ElementMatch!7161) (regTwo!14834 r!13927))) b!2436924))

(assert (= (and b!2436461 ((_ is Concat!11797) (regTwo!14834 r!13927))) b!2436925))

(assert (= (and b!2436461 ((_ is Star!7161) (regTwo!14834 r!13927))) b!2436926))

(assert (= (and b!2436461 ((_ is Union!7161) (regTwo!14834 r!13927))) b!2436927))

(declare-fun b_lambda!74891 () Bool)

(assert (= b_lambda!74887 (or start!238490 b_lambda!74891)))

(declare-fun bs!464632 () Bool)

(declare-fun d!704157 () Bool)

(assert (= bs!464632 (and d!704157 start!238490)))

(assert (=> bs!464632 (= (dynLambda!12247 lambda!92029 (h!33862 l!9164)) (validRegex!2874 (h!33862 l!9164)))))

(declare-fun m!2816487 () Bool)

(assert (=> bs!464632 m!2816487))

(assert (=> b!2436477 d!704157))

(check-sat (not b!2436729) (not b!2436478) (not d!704117) (not b!2436699) (not b!2436605) (not b!2436835) (not b!2436839) (not d!704103) (not b!2436767) (not b!2436868) (not b!2436703) (not b!2436702) (not b!2436715) (not b!2436900) (not d!704147) (not d!704145) (not b!2436866) (not b!2436829) (not b!2436794) (not bm!149255) (not b!2436917) (not b_lambda!74891) (not b!2436860) (not b!2436513) (not b!2436862) (not d!704127) (not bm!149264) (not b!2436602) (not b!2436738) (not b!2436927) (not b!2436768) (not b!2436901) (not b!2436923) (not b!2436921) (not b!2436911) (not b!2436827) (not d!704121) (not b!2436727) tp_is_empty!11735 (not d!704115) (not b!2436856) (not b!2436512) (not b!2436925) (not d!704129) (not b!2436848) (not bm!149257) (not b!2436869) (not d!704151) (not b!2436847) (not d!704101) (not d!704105) (not bm!149248) (not b!2436914) (not b!2436907) (not b!2436721) (not b!2436599) (not b!2436593) (not d!704111) (not b!2436825) (not b!2436858) (not b!2436730) (not b!2436915) (not b!2436922) (not b!2436701) (not b!2436909) (not b!2436863) (not b!2436913) (not b!2436926) (not d!704137) (not b!2436918) (not b!2436594) (not b!2436704) (not b!2436902) (not b!2436831) (not b!2436919) (not bs!464632) (not b!2436853) (not b!2436864) (not b!2436697) (not bm!149249) (not d!704143) (not b!2436740) (not b!2436888) (not b!2436604) (not b!2436859) (not b!2436716) (not b!2436735) (not b!2436910) (not b!2436741) (not b!2436841) (not bm!149256) (not b!2436724) (not d!704095) (not b!2436726))
(check-sat)
