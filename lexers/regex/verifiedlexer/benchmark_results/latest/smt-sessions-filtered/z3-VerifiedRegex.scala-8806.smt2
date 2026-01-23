; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471272 () Bool)

(assert start!471272)

(declare-fun res!1966692 () Bool)

(declare-fun e!2915230 () Bool)

(assert (=> start!471272 (=> (not res!1966692) (not e!2915230))))

(declare-datatypes ((K!13435 0))(
  ( (K!13436 (val!19019 Int)) )
))
(declare-datatypes ((V!13681 0))(
  ( (V!13682 (val!19020 Int)) )
))
(declare-datatypes ((tuple2!53252 0))(
  ( (tuple2!53253 (_1!29920 K!13435) (_2!29920 V!13681)) )
))
(declare-datatypes ((List!52187 0))(
  ( (Nil!52063) (Cons!52063 (h!58243 tuple2!53252) (t!359325 List!52187)) )
))
(declare-fun l!12991 () List!52187)

(declare-fun key!4532 () K!13435)

(declare-fun containsKey!2858 (List!52187 K!13435) Bool)

(assert (=> start!471272 (= res!1966692 (not (containsKey!2858 l!12991 key!4532)))))

(assert (=> start!471272 e!2915230))

(declare-fun e!2915228 () Bool)

(assert (=> start!471272 e!2915228))

(declare-fun tp_is_empty!30149 () Bool)

(assert (=> start!471272 tp_is_empty!30149))

(declare-datatypes ((ListMap!4689 0))(
  ( (ListMap!4690 (toList!5322 List!52187)) )
))
(declare-fun lhm!57 () ListMap!4689)

(declare-fun e!2915229 () Bool)

(declare-fun inv!67309 (ListMap!4689) Bool)

(assert (=> start!471272 (and (inv!67309 lhm!57) e!2915229)))

(declare-fun b!4671464 () Bool)

(declare-fun res!1966693 () Bool)

(assert (=> b!4671464 (=> (not res!1966693) (not e!2915230))))

(get-info :version)

(assert (=> b!4671464 (= res!1966693 (not ((_ is Cons!52063) l!12991)))))

(declare-fun b!4671465 () Bool)

(declare-fun res!1966694 () Bool)

(assert (=> b!4671465 (=> (not res!1966694) (not e!2915230))))

(declare-fun noDuplicateKeys!1714 (List!52187) Bool)

(assert (=> b!4671465 (= res!1966694 (noDuplicateKeys!1714 l!12991))))

(declare-fun b!4671466 () Bool)

(declare-fun addToMapMapFromBucket!1153 (List!52187 ListMap!4689) ListMap!4689)

(declare-fun -!642 (ListMap!4689 K!13435) ListMap!4689)

(assert (=> b!4671466 (= e!2915230 (not (= (addToMapMapFromBucket!1153 l!12991 (-!642 lhm!57 key!4532)) (-!642 (addToMapMapFromBucket!1153 l!12991 lhm!57) key!4532))))))

(declare-fun tp!1343969 () Bool)

(declare-fun b!4671467 () Bool)

(declare-fun tp_is_empty!30151 () Bool)

(assert (=> b!4671467 (= e!2915228 (and tp_is_empty!30149 tp_is_empty!30151 tp!1343969))))

(declare-fun b!4671468 () Bool)

(declare-fun tp!1343968 () Bool)

(assert (=> b!4671468 (= e!2915229 tp!1343968)))

(assert (= (and start!471272 res!1966692) b!4671465))

(assert (= (and b!4671465 res!1966694) b!4671464))

(assert (= (and b!4671464 res!1966693) b!4671466))

(assert (= (and start!471272 ((_ is Cons!52063) l!12991)) b!4671467))

(assert (= start!471272 b!4671468))

(declare-fun m!5565261 () Bool)

(assert (=> start!471272 m!5565261))

(declare-fun m!5565263 () Bool)

(assert (=> start!471272 m!5565263))

(declare-fun m!5565265 () Bool)

(assert (=> b!4671465 m!5565265))

(declare-fun m!5565267 () Bool)

(assert (=> b!4671466 m!5565267))

(assert (=> b!4671466 m!5565267))

(declare-fun m!5565269 () Bool)

(assert (=> b!4671466 m!5565269))

(declare-fun m!5565271 () Bool)

(assert (=> b!4671466 m!5565271))

(assert (=> b!4671466 m!5565271))

(declare-fun m!5565273 () Bool)

(assert (=> b!4671466 m!5565273))

(check-sat (not b!4671468) (not b!4671467) tp_is_empty!30149 (not start!471272) tp_is_empty!30151 (not b!4671465) (not b!4671466))
(check-sat)
(get-model)

(declare-fun d!1485513 () Bool)

(declare-fun res!1966699 () Bool)

(declare-fun e!2915235 () Bool)

(assert (=> d!1485513 (=> res!1966699 e!2915235)))

(assert (=> d!1485513 (= res!1966699 (not ((_ is Cons!52063) l!12991)))))

(assert (=> d!1485513 (= (noDuplicateKeys!1714 l!12991) e!2915235)))

(declare-fun b!4671473 () Bool)

(declare-fun e!2915236 () Bool)

(assert (=> b!4671473 (= e!2915235 e!2915236)))

(declare-fun res!1966700 () Bool)

(assert (=> b!4671473 (=> (not res!1966700) (not e!2915236))))

(assert (=> b!4671473 (= res!1966700 (not (containsKey!2858 (t!359325 l!12991) (_1!29920 (h!58243 l!12991)))))))

(declare-fun b!4671474 () Bool)

(assert (=> b!4671474 (= e!2915236 (noDuplicateKeys!1714 (t!359325 l!12991)))))

(assert (= (and d!1485513 (not res!1966699)) b!4671473))

(assert (= (and b!4671473 res!1966700) b!4671474))

(declare-fun m!5565275 () Bool)

(assert (=> b!4671473 m!5565275))

(declare-fun m!5565277 () Bool)

(assert (=> b!4671474 m!5565277))

(assert (=> b!4671465 d!1485513))

(declare-fun b!4671517 () Bool)

(assert (=> b!4671517 true))

(declare-fun bs!1078997 () Bool)

(declare-fun b!4671516 () Bool)

(assert (= bs!1078997 (and b!4671516 b!4671517)))

(declare-fun lambda!202630 () Int)

(declare-fun lambda!202629 () Int)

(assert (=> bs!1078997 (= lambda!202630 lambda!202629)))

(assert (=> b!4671516 true))

(declare-fun lt!1833528 () ListMap!4689)

(declare-fun lambda!202631 () Int)

(assert (=> bs!1078997 (= (= lt!1833528 (-!642 lhm!57 key!4532)) (= lambda!202631 lambda!202629))))

(assert (=> b!4671516 (= (= lt!1833528 (-!642 lhm!57 key!4532)) (= lambda!202631 lambda!202630))))

(assert (=> b!4671516 true))

(declare-fun bs!1078998 () Bool)

(declare-fun d!1485517 () Bool)

(assert (= bs!1078998 (and d!1485517 b!4671517)))

(declare-fun lambda!202632 () Int)

(declare-fun lt!1833533 () ListMap!4689)

(assert (=> bs!1078998 (= (= lt!1833533 (-!642 lhm!57 key!4532)) (= lambda!202632 lambda!202629))))

(declare-fun bs!1078999 () Bool)

(assert (= bs!1078999 (and d!1485517 b!4671516)))

(assert (=> bs!1078999 (= (= lt!1833533 (-!642 lhm!57 key!4532)) (= lambda!202632 lambda!202630))))

(assert (=> bs!1078999 (= (= lt!1833533 lt!1833528) (= lambda!202632 lambda!202631))))

(assert (=> d!1485517 true))

(declare-fun b!4671514 () Bool)

(declare-fun e!2915266 () Bool)

(declare-fun invariantList!1344 (List!52187) Bool)

(assert (=> b!4671514 (= e!2915266 (invariantList!1344 (toList!5322 lt!1833533)))))

(declare-fun e!2915264 () Bool)

(declare-fun b!4671515 () Bool)

(declare-fun forall!11114 (List!52187 Int) Bool)

(assert (=> b!4671515 (= e!2915264 (forall!11114 (toList!5322 (-!642 lhm!57 key!4532)) lambda!202631))))

(declare-fun bm!326506 () Bool)

(declare-fun call!326513 () Bool)

(declare-fun c!799658 () Bool)

(assert (=> bm!326506 (= call!326513 (forall!11114 (ite c!799658 (toList!5322 (-!642 lhm!57 key!4532)) l!12991) (ite c!799658 lambda!202629 lambda!202631)))))

(declare-fun e!2915265 () ListMap!4689)

(assert (=> b!4671516 (= e!2915265 lt!1833528)))

(declare-fun lt!1833537 () ListMap!4689)

(declare-fun +!2042 (ListMap!4689 tuple2!53252) ListMap!4689)

(assert (=> b!4671516 (= lt!1833537 (+!2042 (-!642 lhm!57 key!4532) (h!58243 l!12991)))))

(assert (=> b!4671516 (= lt!1833528 (addToMapMapFromBucket!1153 (t!359325 l!12991) (+!2042 (-!642 lhm!57 key!4532) (h!58243 l!12991))))))

(declare-datatypes ((Unit!121244 0))(
  ( (Unit!121245) )
))
(declare-fun lt!1833534 () Unit!121244)

(declare-fun call!326512 () Unit!121244)

(assert (=> b!4671516 (= lt!1833534 call!326512)))

(assert (=> b!4671516 (forall!11114 (toList!5322 (-!642 lhm!57 key!4532)) lambda!202630)))

(declare-fun lt!1833538 () Unit!121244)

(assert (=> b!4671516 (= lt!1833538 lt!1833534)))

(assert (=> b!4671516 (forall!11114 (toList!5322 lt!1833537) lambda!202631)))

(declare-fun lt!1833535 () Unit!121244)

(declare-fun Unit!121248 () Unit!121244)

(assert (=> b!4671516 (= lt!1833535 Unit!121248)))

(assert (=> b!4671516 (forall!11114 (t!359325 l!12991) lambda!202631)))

(declare-fun lt!1833541 () Unit!121244)

(declare-fun Unit!121250 () Unit!121244)

(assert (=> b!4671516 (= lt!1833541 Unit!121250)))

(declare-fun lt!1833523 () Unit!121244)

(declare-fun Unit!121252 () Unit!121244)

(assert (=> b!4671516 (= lt!1833523 Unit!121252)))

(declare-fun lt!1833525 () Unit!121244)

(declare-fun forallContained!3318 (List!52187 Int tuple2!53252) Unit!121244)

(assert (=> b!4671516 (= lt!1833525 (forallContained!3318 (toList!5322 lt!1833537) lambda!202631 (h!58243 l!12991)))))

(declare-fun contains!15259 (ListMap!4689 K!13435) Bool)

(assert (=> b!4671516 (contains!15259 lt!1833537 (_1!29920 (h!58243 l!12991)))))

(declare-fun lt!1833527 () Unit!121244)

(declare-fun Unit!121256 () Unit!121244)

(assert (=> b!4671516 (= lt!1833527 Unit!121256)))

(assert (=> b!4671516 (contains!15259 lt!1833528 (_1!29920 (h!58243 l!12991)))))

(declare-fun lt!1833522 () Unit!121244)

(declare-fun Unit!121257 () Unit!121244)

(assert (=> b!4671516 (= lt!1833522 Unit!121257)))

(assert (=> b!4671516 call!326513))

(declare-fun lt!1833526 () Unit!121244)

(declare-fun Unit!121259 () Unit!121244)

(assert (=> b!4671516 (= lt!1833526 Unit!121259)))

(assert (=> b!4671516 (forall!11114 (toList!5322 lt!1833537) lambda!202631)))

(declare-fun lt!1833530 () Unit!121244)

(declare-fun Unit!121260 () Unit!121244)

(assert (=> b!4671516 (= lt!1833530 Unit!121260)))

(declare-fun lt!1833532 () Unit!121244)

(declare-fun Unit!121262 () Unit!121244)

(assert (=> b!4671516 (= lt!1833532 Unit!121262)))

(declare-fun lt!1833536 () Unit!121244)

(declare-fun addForallContainsKeyThenBeforeAdding!635 (ListMap!4689 ListMap!4689 K!13435 V!13681) Unit!121244)

(assert (=> b!4671516 (= lt!1833536 (addForallContainsKeyThenBeforeAdding!635 (-!642 lhm!57 key!4532) lt!1833528 (_1!29920 (h!58243 l!12991)) (_2!29920 (h!58243 l!12991))))))

(assert (=> b!4671516 (forall!11114 (toList!5322 (-!642 lhm!57 key!4532)) lambda!202631)))

(declare-fun lt!1833529 () Unit!121244)

(assert (=> b!4671516 (= lt!1833529 lt!1833536)))

(assert (=> b!4671516 (forall!11114 (toList!5322 (-!642 lhm!57 key!4532)) lambda!202631)))

(declare-fun lt!1833531 () Unit!121244)

(declare-fun Unit!121263 () Unit!121244)

(assert (=> b!4671516 (= lt!1833531 Unit!121263)))

(declare-fun res!1966729 () Bool)

(declare-fun call!326511 () Bool)

(assert (=> b!4671516 (= res!1966729 call!326511)))

(assert (=> b!4671516 (=> (not res!1966729) (not e!2915264))))

(assert (=> b!4671516 e!2915264))

(declare-fun lt!1833539 () Unit!121244)

(declare-fun Unit!121264 () Unit!121244)

(assert (=> b!4671516 (= lt!1833539 Unit!121264)))

(declare-fun bm!326507 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!636 (ListMap!4689) Unit!121244)

(assert (=> bm!326507 (= call!326512 (lemmaContainsAllItsOwnKeys!636 (-!642 lhm!57 key!4532)))))

(assert (=> d!1485517 e!2915266))

(declare-fun res!1966730 () Bool)

(assert (=> d!1485517 (=> (not res!1966730) (not e!2915266))))

(assert (=> d!1485517 (= res!1966730 (forall!11114 l!12991 lambda!202632))))

(assert (=> d!1485517 (= lt!1833533 e!2915265)))

(assert (=> d!1485517 (= c!799658 ((_ is Nil!52063) l!12991))))

(assert (=> d!1485517 (noDuplicateKeys!1714 l!12991)))

(assert (=> d!1485517 (= (addToMapMapFromBucket!1153 l!12991 (-!642 lhm!57 key!4532)) lt!1833533)))

(declare-fun bm!326508 () Bool)

(assert (=> bm!326508 (= call!326511 (forall!11114 (ite c!799658 (toList!5322 (-!642 lhm!57 key!4532)) l!12991) (ite c!799658 lambda!202629 lambda!202631)))))

(assert (=> b!4671517 (= e!2915265 (-!642 lhm!57 key!4532))))

(declare-fun lt!1833540 () Unit!121244)

(assert (=> b!4671517 (= lt!1833540 call!326512)))

(assert (=> b!4671517 call!326513))

(declare-fun lt!1833524 () Unit!121244)

(assert (=> b!4671517 (= lt!1833524 lt!1833540)))

(assert (=> b!4671517 call!326511))

(declare-fun lt!1833521 () Unit!121244)

(declare-fun Unit!121265 () Unit!121244)

(assert (=> b!4671517 (= lt!1833521 Unit!121265)))

(declare-fun b!4671518 () Bool)

(declare-fun res!1966728 () Bool)

(assert (=> b!4671518 (=> (not res!1966728) (not e!2915266))))

(assert (=> b!4671518 (= res!1966728 (forall!11114 (toList!5322 (-!642 lhm!57 key!4532)) lambda!202632))))

(assert (= (and d!1485517 c!799658) b!4671517))

(assert (= (and d!1485517 (not c!799658)) b!4671516))

(assert (= (and b!4671516 res!1966729) b!4671515))

(assert (= (or b!4671517 b!4671516) bm!326508))

(assert (= (or b!4671517 b!4671516) bm!326506))

(assert (= (or b!4671517 b!4671516) bm!326507))

(assert (= (and d!1485517 res!1966730) b!4671518))

(assert (= (and b!4671518 res!1966728) b!4671514))

(declare-fun m!5565321 () Bool)

(assert (=> b!4671518 m!5565321))

(declare-fun m!5565323 () Bool)

(assert (=> bm!326508 m!5565323))

(declare-fun m!5565325 () Bool)

(assert (=> b!4671516 m!5565325))

(declare-fun m!5565327 () Bool)

(assert (=> b!4671516 m!5565327))

(declare-fun m!5565329 () Bool)

(assert (=> b!4671516 m!5565329))

(declare-fun m!5565331 () Bool)

(assert (=> b!4671516 m!5565331))

(assert (=> b!4671516 m!5565267))

(assert (=> b!4671516 m!5565329))

(declare-fun m!5565333 () Bool)

(assert (=> b!4671516 m!5565333))

(declare-fun m!5565335 () Bool)

(assert (=> b!4671516 m!5565335))

(assert (=> b!4671516 m!5565325))

(declare-fun m!5565337 () Bool)

(assert (=> b!4671516 m!5565337))

(assert (=> b!4671516 m!5565333))

(declare-fun m!5565339 () Bool)

(assert (=> b!4671516 m!5565339))

(declare-fun m!5565341 () Bool)

(assert (=> b!4671516 m!5565341))

(assert (=> b!4671516 m!5565267))

(declare-fun m!5565343 () Bool)

(assert (=> b!4671516 m!5565343))

(assert (=> b!4671515 m!5565333))

(declare-fun m!5565345 () Bool)

(assert (=> d!1485517 m!5565345))

(assert (=> d!1485517 m!5565265))

(assert (=> bm!326506 m!5565323))

(declare-fun m!5565347 () Bool)

(assert (=> b!4671514 m!5565347))

(assert (=> bm!326507 m!5565267))

(declare-fun m!5565349 () Bool)

(assert (=> bm!326507 m!5565349))

(assert (=> b!4671466 d!1485517))

(declare-fun d!1485527 () Bool)

(declare-fun e!2915276 () Bool)

(assert (=> d!1485527 e!2915276))

(declare-fun res!1966740 () Bool)

(assert (=> d!1485527 (=> (not res!1966740) (not e!2915276))))

(declare-fun lt!1833569 () ListMap!4689)

(assert (=> d!1485527 (= res!1966740 (not (contains!15259 lt!1833569 key!4532)))))

(declare-fun removePresrvNoDuplicatedKeys!319 (List!52187 K!13435) List!52187)

(assert (=> d!1485527 (= lt!1833569 (ListMap!4690 (removePresrvNoDuplicatedKeys!319 (toList!5322 lhm!57) key!4532)))))

(assert (=> d!1485527 (= (-!642 lhm!57 key!4532) lt!1833569)))

(declare-fun b!4671532 () Bool)

(declare-datatypes ((List!52189 0))(
  ( (Nil!52065) (Cons!52065 (h!58245 K!13435) (t!359327 List!52189)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9079 (List!52189) (InoxSet K!13435))

(declare-fun keys!18506 (ListMap!4689) List!52189)

(assert (=> b!4671532 (= e!2915276 (= ((_ map and) (content!9079 (keys!18506 lhm!57)) ((_ map not) (store ((as const (Array K!13435 Bool)) false) key!4532 true))) (content!9079 (keys!18506 lt!1833569))))))

(assert (= (and d!1485527 res!1966740) b!4671532))

(declare-fun m!5565377 () Bool)

(assert (=> d!1485527 m!5565377))

(declare-fun m!5565379 () Bool)

(assert (=> d!1485527 m!5565379))

(declare-fun m!5565381 () Bool)

(assert (=> b!4671532 m!5565381))

(assert (=> b!4671532 m!5565381))

(declare-fun m!5565383 () Bool)

(assert (=> b!4671532 m!5565383))

(declare-fun m!5565385 () Bool)

(assert (=> b!4671532 m!5565385))

(declare-fun m!5565387 () Bool)

(assert (=> b!4671532 m!5565387))

(assert (=> b!4671532 m!5565385))

(declare-fun m!5565389 () Bool)

(assert (=> b!4671532 m!5565389))

(assert (=> b!4671466 d!1485527))

(declare-fun d!1485533 () Bool)

(declare-fun e!2915277 () Bool)

(assert (=> d!1485533 e!2915277))

(declare-fun res!1966741 () Bool)

(assert (=> d!1485533 (=> (not res!1966741) (not e!2915277))))

(declare-fun lt!1833570 () ListMap!4689)

(assert (=> d!1485533 (= res!1966741 (not (contains!15259 lt!1833570 key!4532)))))

(assert (=> d!1485533 (= lt!1833570 (ListMap!4690 (removePresrvNoDuplicatedKeys!319 (toList!5322 (addToMapMapFromBucket!1153 l!12991 lhm!57)) key!4532)))))

(assert (=> d!1485533 (= (-!642 (addToMapMapFromBucket!1153 l!12991 lhm!57) key!4532) lt!1833570)))

(declare-fun b!4671533 () Bool)

(assert (=> b!4671533 (= e!2915277 (= ((_ map and) (content!9079 (keys!18506 (addToMapMapFromBucket!1153 l!12991 lhm!57))) ((_ map not) (store ((as const (Array K!13435 Bool)) false) key!4532 true))) (content!9079 (keys!18506 lt!1833570))))))

(assert (= (and d!1485533 res!1966741) b!4671533))

(declare-fun m!5565391 () Bool)

(assert (=> d!1485533 m!5565391))

(declare-fun m!5565393 () Bool)

(assert (=> d!1485533 m!5565393))

(declare-fun m!5565395 () Bool)

(assert (=> b!4671533 m!5565395))

(assert (=> b!4671533 m!5565395))

(declare-fun m!5565397 () Bool)

(assert (=> b!4671533 m!5565397))

(declare-fun m!5565399 () Bool)

(assert (=> b!4671533 m!5565399))

(declare-fun m!5565401 () Bool)

(assert (=> b!4671533 m!5565401))

(assert (=> b!4671533 m!5565271))

(assert (=> b!4671533 m!5565399))

(assert (=> b!4671533 m!5565389))

(assert (=> b!4671466 d!1485533))

(declare-fun bs!1079012 () Bool)

(declare-fun b!4671537 () Bool)

(assert (= bs!1079012 (and b!4671537 b!4671517)))

(declare-fun lambda!202637 () Int)

(assert (=> bs!1079012 (= (= lhm!57 (-!642 lhm!57 key!4532)) (= lambda!202637 lambda!202629))))

(declare-fun bs!1079013 () Bool)

(assert (= bs!1079013 (and b!4671537 b!4671516)))

(assert (=> bs!1079013 (= (= lhm!57 (-!642 lhm!57 key!4532)) (= lambda!202637 lambda!202630))))

(assert (=> bs!1079013 (= (= lhm!57 lt!1833528) (= lambda!202637 lambda!202631))))

(declare-fun bs!1079014 () Bool)

(assert (= bs!1079014 (and b!4671537 d!1485517)))

(assert (=> bs!1079014 (= (= lhm!57 lt!1833533) (= lambda!202637 lambda!202632))))

(assert (=> b!4671537 true))

(declare-fun bs!1079015 () Bool)

(declare-fun b!4671536 () Bool)

(assert (= bs!1079015 (and b!4671536 d!1485517)))

(declare-fun lambda!202638 () Int)

(assert (=> bs!1079015 (= (= lhm!57 lt!1833533) (= lambda!202638 lambda!202632))))

(declare-fun bs!1079016 () Bool)

(assert (= bs!1079016 (and b!4671536 b!4671516)))

(assert (=> bs!1079016 (= (= lhm!57 (-!642 lhm!57 key!4532)) (= lambda!202638 lambda!202630))))

(declare-fun bs!1079017 () Bool)

(assert (= bs!1079017 (and b!4671536 b!4671517)))

(assert (=> bs!1079017 (= (= lhm!57 (-!642 lhm!57 key!4532)) (= lambda!202638 lambda!202629))))

(declare-fun bs!1079018 () Bool)

(assert (= bs!1079018 (and b!4671536 b!4671537)))

(assert (=> bs!1079018 (= lambda!202638 lambda!202637)))

(assert (=> bs!1079016 (= (= lhm!57 lt!1833528) (= lambda!202638 lambda!202631))))

(assert (=> b!4671536 true))

(declare-fun lambda!202639 () Int)

(declare-fun lt!1833578 () ListMap!4689)

(assert (=> bs!1079015 (= (= lt!1833578 lt!1833533) (= lambda!202639 lambda!202632))))

(assert (=> bs!1079016 (= (= lt!1833578 (-!642 lhm!57 key!4532)) (= lambda!202639 lambda!202630))))

(assert (=> bs!1079017 (= (= lt!1833578 (-!642 lhm!57 key!4532)) (= lambda!202639 lambda!202629))))

(assert (=> b!4671536 (= (= lt!1833578 lhm!57) (= lambda!202639 lambda!202638))))

(assert (=> bs!1079018 (= (= lt!1833578 lhm!57) (= lambda!202639 lambda!202637))))

(assert (=> bs!1079016 (= (= lt!1833578 lt!1833528) (= lambda!202639 lambda!202631))))

(assert (=> b!4671536 true))

(declare-fun bs!1079019 () Bool)

(declare-fun d!1485535 () Bool)

(assert (= bs!1079019 (and d!1485535 d!1485517)))

(declare-fun lt!1833583 () ListMap!4689)

(declare-fun lambda!202640 () Int)

(assert (=> bs!1079019 (= (= lt!1833583 lt!1833533) (= lambda!202640 lambda!202632))))

(declare-fun bs!1079020 () Bool)

(assert (= bs!1079020 (and d!1485535 b!4671516)))

(assert (=> bs!1079020 (= (= lt!1833583 (-!642 lhm!57 key!4532)) (= lambda!202640 lambda!202630))))

(declare-fun bs!1079021 () Bool)

(assert (= bs!1079021 (and d!1485535 b!4671517)))

(assert (=> bs!1079021 (= (= lt!1833583 (-!642 lhm!57 key!4532)) (= lambda!202640 lambda!202629))))

(declare-fun bs!1079022 () Bool)

(assert (= bs!1079022 (and d!1485535 b!4671536)))

(assert (=> bs!1079022 (= (= lt!1833583 lhm!57) (= lambda!202640 lambda!202638))))

(declare-fun bs!1079023 () Bool)

(assert (= bs!1079023 (and d!1485535 b!4671537)))

(assert (=> bs!1079023 (= (= lt!1833583 lhm!57) (= lambda!202640 lambda!202637))))

(assert (=> bs!1079022 (= (= lt!1833583 lt!1833578) (= lambda!202640 lambda!202639))))

(assert (=> bs!1079020 (= (= lt!1833583 lt!1833528) (= lambda!202640 lambda!202631))))

(assert (=> d!1485535 true))

(declare-fun b!4671534 () Bool)

(declare-fun e!2915280 () Bool)

(assert (=> b!4671534 (= e!2915280 (invariantList!1344 (toList!5322 lt!1833583)))))

(declare-fun b!4671535 () Bool)

(declare-fun e!2915278 () Bool)

(assert (=> b!4671535 (= e!2915278 (forall!11114 (toList!5322 lhm!57) lambda!202639))))

(declare-fun c!799660 () Bool)

(declare-fun bm!326512 () Bool)

(declare-fun call!326519 () Bool)

(assert (=> bm!326512 (= call!326519 (forall!11114 (ite c!799660 (toList!5322 lhm!57) l!12991) (ite c!799660 lambda!202637 lambda!202639)))))

(declare-fun e!2915279 () ListMap!4689)

(assert (=> b!4671536 (= e!2915279 lt!1833578)))

(declare-fun lt!1833587 () ListMap!4689)

(assert (=> b!4671536 (= lt!1833587 (+!2042 lhm!57 (h!58243 l!12991)))))

(assert (=> b!4671536 (= lt!1833578 (addToMapMapFromBucket!1153 (t!359325 l!12991) (+!2042 lhm!57 (h!58243 l!12991))))))

(declare-fun lt!1833584 () Unit!121244)

(declare-fun call!326518 () Unit!121244)

(assert (=> b!4671536 (= lt!1833584 call!326518)))

(assert (=> b!4671536 (forall!11114 (toList!5322 lhm!57) lambda!202638)))

(declare-fun lt!1833588 () Unit!121244)

(assert (=> b!4671536 (= lt!1833588 lt!1833584)))

(assert (=> b!4671536 (forall!11114 (toList!5322 lt!1833587) lambda!202639)))

(declare-fun lt!1833585 () Unit!121244)

(declare-fun Unit!121277 () Unit!121244)

(assert (=> b!4671536 (= lt!1833585 Unit!121277)))

(assert (=> b!4671536 (forall!11114 (t!359325 l!12991) lambda!202639)))

(declare-fun lt!1833591 () Unit!121244)

(declare-fun Unit!121278 () Unit!121244)

(assert (=> b!4671536 (= lt!1833591 Unit!121278)))

(declare-fun lt!1833573 () Unit!121244)

(declare-fun Unit!121279 () Unit!121244)

(assert (=> b!4671536 (= lt!1833573 Unit!121279)))

(declare-fun lt!1833575 () Unit!121244)

(assert (=> b!4671536 (= lt!1833575 (forallContained!3318 (toList!5322 lt!1833587) lambda!202639 (h!58243 l!12991)))))

(assert (=> b!4671536 (contains!15259 lt!1833587 (_1!29920 (h!58243 l!12991)))))

(declare-fun lt!1833577 () Unit!121244)

(declare-fun Unit!121280 () Unit!121244)

(assert (=> b!4671536 (= lt!1833577 Unit!121280)))

(assert (=> b!4671536 (contains!15259 lt!1833578 (_1!29920 (h!58243 l!12991)))))

(declare-fun lt!1833572 () Unit!121244)

(declare-fun Unit!121281 () Unit!121244)

(assert (=> b!4671536 (= lt!1833572 Unit!121281)))

(assert (=> b!4671536 call!326519))

(declare-fun lt!1833576 () Unit!121244)

(declare-fun Unit!121282 () Unit!121244)

(assert (=> b!4671536 (= lt!1833576 Unit!121282)))

(assert (=> b!4671536 (forall!11114 (toList!5322 lt!1833587) lambda!202639)))

(declare-fun lt!1833580 () Unit!121244)

(declare-fun Unit!121283 () Unit!121244)

(assert (=> b!4671536 (= lt!1833580 Unit!121283)))

(declare-fun lt!1833582 () Unit!121244)

(declare-fun Unit!121284 () Unit!121244)

(assert (=> b!4671536 (= lt!1833582 Unit!121284)))

(declare-fun lt!1833586 () Unit!121244)

(assert (=> b!4671536 (= lt!1833586 (addForallContainsKeyThenBeforeAdding!635 lhm!57 lt!1833578 (_1!29920 (h!58243 l!12991)) (_2!29920 (h!58243 l!12991))))))

(assert (=> b!4671536 (forall!11114 (toList!5322 lhm!57) lambda!202639)))

(declare-fun lt!1833579 () Unit!121244)

(assert (=> b!4671536 (= lt!1833579 lt!1833586)))

(assert (=> b!4671536 (forall!11114 (toList!5322 lhm!57) lambda!202639)))

(declare-fun lt!1833581 () Unit!121244)

(declare-fun Unit!121285 () Unit!121244)

(assert (=> b!4671536 (= lt!1833581 Unit!121285)))

(declare-fun res!1966743 () Bool)

(declare-fun call!326517 () Bool)

(assert (=> b!4671536 (= res!1966743 call!326517)))

(assert (=> b!4671536 (=> (not res!1966743) (not e!2915278))))

(assert (=> b!4671536 e!2915278))

(declare-fun lt!1833589 () Unit!121244)

(declare-fun Unit!121286 () Unit!121244)

(assert (=> b!4671536 (= lt!1833589 Unit!121286)))

(declare-fun bm!326513 () Bool)

(assert (=> bm!326513 (= call!326518 (lemmaContainsAllItsOwnKeys!636 lhm!57))))

(assert (=> d!1485535 e!2915280))

(declare-fun res!1966744 () Bool)

(assert (=> d!1485535 (=> (not res!1966744) (not e!2915280))))

(assert (=> d!1485535 (= res!1966744 (forall!11114 l!12991 lambda!202640))))

(assert (=> d!1485535 (= lt!1833583 e!2915279)))

(assert (=> d!1485535 (= c!799660 ((_ is Nil!52063) l!12991))))

(assert (=> d!1485535 (noDuplicateKeys!1714 l!12991)))

(assert (=> d!1485535 (= (addToMapMapFromBucket!1153 l!12991 lhm!57) lt!1833583)))

(declare-fun bm!326514 () Bool)

(assert (=> bm!326514 (= call!326517 (forall!11114 (ite c!799660 (toList!5322 lhm!57) l!12991) (ite c!799660 lambda!202637 lambda!202639)))))

(assert (=> b!4671537 (= e!2915279 lhm!57)))

(declare-fun lt!1833590 () Unit!121244)

(assert (=> b!4671537 (= lt!1833590 call!326518)))

(assert (=> b!4671537 call!326519))

(declare-fun lt!1833574 () Unit!121244)

(assert (=> b!4671537 (= lt!1833574 lt!1833590)))

(assert (=> b!4671537 call!326517))

(declare-fun lt!1833571 () Unit!121244)

(declare-fun Unit!121287 () Unit!121244)

(assert (=> b!4671537 (= lt!1833571 Unit!121287)))

(declare-fun b!4671538 () Bool)

(declare-fun res!1966742 () Bool)

(assert (=> b!4671538 (=> (not res!1966742) (not e!2915280))))

(assert (=> b!4671538 (= res!1966742 (forall!11114 (toList!5322 lhm!57) lambda!202640))))

(assert (= (and d!1485535 c!799660) b!4671537))

(assert (= (and d!1485535 (not c!799660)) b!4671536))

(assert (= (and b!4671536 res!1966743) b!4671535))

(assert (= (or b!4671537 b!4671536) bm!326514))

(assert (= (or b!4671537 b!4671536) bm!326512))

(assert (= (or b!4671537 b!4671536) bm!326513))

(assert (= (and d!1485535 res!1966744) b!4671538))

(assert (= (and b!4671538 res!1966742) b!4671534))

(declare-fun m!5565437 () Bool)

(assert (=> b!4671538 m!5565437))

(declare-fun m!5565439 () Bool)

(assert (=> bm!326514 m!5565439))

(declare-fun m!5565441 () Bool)

(assert (=> b!4671536 m!5565441))

(declare-fun m!5565443 () Bool)

(assert (=> b!4671536 m!5565443))

(declare-fun m!5565445 () Bool)

(assert (=> b!4671536 m!5565445))

(declare-fun m!5565447 () Bool)

(assert (=> b!4671536 m!5565447))

(assert (=> b!4671536 m!5565445))

(declare-fun m!5565449 () Bool)

(assert (=> b!4671536 m!5565449))

(declare-fun m!5565451 () Bool)

(assert (=> b!4671536 m!5565451))

(assert (=> b!4671536 m!5565441))

(declare-fun m!5565453 () Bool)

(assert (=> b!4671536 m!5565453))

(assert (=> b!4671536 m!5565449))

(declare-fun m!5565455 () Bool)

(assert (=> b!4671536 m!5565455))

(declare-fun m!5565457 () Bool)

(assert (=> b!4671536 m!5565457))

(declare-fun m!5565459 () Bool)

(assert (=> b!4671536 m!5565459))

(assert (=> b!4671535 m!5565449))

(declare-fun m!5565461 () Bool)

(assert (=> d!1485535 m!5565461))

(assert (=> d!1485535 m!5565265))

(assert (=> bm!326512 m!5565439))

(declare-fun m!5565463 () Bool)

(assert (=> b!4671534 m!5565463))

(declare-fun m!5565465 () Bool)

(assert (=> bm!326513 m!5565465))

(assert (=> b!4671466 d!1485535))

(declare-fun d!1485537 () Bool)

(declare-fun res!1966749 () Bool)

(declare-fun e!2915289 () Bool)

(assert (=> d!1485537 (=> res!1966749 e!2915289)))

(assert (=> d!1485537 (= res!1966749 (and ((_ is Cons!52063) l!12991) (= (_1!29920 (h!58243 l!12991)) key!4532)))))

(assert (=> d!1485537 (= (containsKey!2858 l!12991 key!4532) e!2915289)))

(declare-fun b!4671549 () Bool)

(declare-fun e!2915290 () Bool)

(assert (=> b!4671549 (= e!2915289 e!2915290)))

(declare-fun res!1966750 () Bool)

(assert (=> b!4671549 (=> (not res!1966750) (not e!2915290))))

(assert (=> b!4671549 (= res!1966750 ((_ is Cons!52063) l!12991))))

(declare-fun b!4671550 () Bool)

(assert (=> b!4671550 (= e!2915290 (containsKey!2858 (t!359325 l!12991) key!4532))))

(assert (= (and d!1485537 (not res!1966749)) b!4671549))

(assert (= (and b!4671549 res!1966750) b!4671550))

(declare-fun m!5565467 () Bool)

(assert (=> b!4671550 m!5565467))

(assert (=> start!471272 d!1485537))

(declare-fun d!1485539 () Bool)

(assert (=> d!1485539 (= (inv!67309 lhm!57) (invariantList!1344 (toList!5322 lhm!57)))))

(declare-fun bs!1079024 () Bool)

(assert (= bs!1079024 d!1485539))

(declare-fun m!5565469 () Bool)

(assert (=> bs!1079024 m!5565469))

(assert (=> start!471272 d!1485539))

(declare-fun b!4671555 () Bool)

(declare-fun e!2915293 () Bool)

(declare-fun tp!1343976 () Bool)

(assert (=> b!4671555 (= e!2915293 (and tp_is_empty!30149 tp_is_empty!30151 tp!1343976))))

(assert (=> b!4671468 (= tp!1343968 e!2915293)))

(assert (= (and b!4671468 ((_ is Cons!52063) (toList!5322 lhm!57))) b!4671555))

(declare-fun e!2915294 () Bool)

(declare-fun b!4671556 () Bool)

(declare-fun tp!1343977 () Bool)

(assert (=> b!4671556 (= e!2915294 (and tp_is_empty!30149 tp_is_empty!30151 tp!1343977))))

(assert (=> b!4671467 (= tp!1343969 e!2915294)))

(assert (= (and b!4671467 ((_ is Cons!52063) (t!359325 l!12991))) b!4671556))

(check-sat (not d!1485533) tp_is_empty!30149 (not d!1485527) (not bm!326506) (not b!4671550) (not b!4671514) tp_is_empty!30151 (not bm!326513) (not b!4671538) (not b!4671473) (not b!4671535) (not b!4671556) (not b!4671534) (not d!1485535) (not b!4671536) (not b!4671516) (not b!4671518) (not bm!326514) (not bm!326508) (not b!4671515) (not b!4671555) (not b!4671474) (not d!1485539) (not b!4671532) (not bm!326507) (not b!4671533) (not bm!326512) (not d!1485517))
(check-sat)
