; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!468488 () Bool)

(assert start!468488)

(declare-fun b!4655205 () Bool)

(declare-fun tp!1343310 () Bool)

(declare-fun tp_is_empty!29853 () Bool)

(declare-fun tp_is_empty!29855 () Bool)

(declare-fun e!2904458 () Bool)

(assert (=> b!4655205 (= e!2904458 (and tp_is_empty!29853 tp_is_empty!29855 tp!1343310))))

(declare-fun b!4655206 () Bool)

(declare-fun e!2904457 () Bool)

(declare-fun e!2904456 () Bool)

(assert (=> b!4655206 (= e!2904457 (not e!2904456))))

(declare-fun res!1957279 () Bool)

(assert (=> b!4655206 (=> res!1957279 e!2904456)))

(declare-datatypes ((K!13250 0))(
  ( (K!13251 (val!18871 Int)) )
))
(declare-datatypes ((V!13496 0))(
  ( (V!13497 (val!18872 Int)) )
))
(declare-datatypes ((tuple2!53006 0))(
  ( (tuple2!53007 (_1!29797 K!13250) (_2!29797 V!13496)) )
))
(declare-datatypes ((List!52020 0))(
  ( (Nil!51896) (Cons!51896 (h!58040 tuple2!53006) (t!359136 List!52020)) )
))
(declare-fun oldBucket!40 () List!52020)

(declare-fun key!4968 () K!13250)

(get-info :version)

(assert (=> b!4655206 (= res!1957279 (or (and ((_ is Cons!51896) oldBucket!40) (= (_1!29797 (h!58040 oldBucket!40)) key!4968)) (not ((_ is Cons!51896) oldBucket!40)) (= (_1!29797 (h!58040 oldBucket!40)) key!4968)))))

(declare-fun e!2904455 () Bool)

(assert (=> b!4655206 e!2904455))

(declare-fun res!1957287 () Bool)

(assert (=> b!4655206 (=> (not res!1957287) (not e!2904455))))

(declare-datatypes ((ListMap!4549 0))(
  ( (ListMap!4550 (toList!5209 List!52020)) )
))
(declare-fun lt!1818237 () ListMap!4549)

(declare-fun lt!1818236 () ListMap!4549)

(declare-fun addToMapMapFromBucket!1097 (List!52020 ListMap!4549) ListMap!4549)

(assert (=> b!4655206 (= res!1957287 (= lt!1818236 (addToMapMapFromBucket!1097 oldBucket!40 lt!1818237)))))

(declare-datatypes ((tuple2!53008 0))(
  ( (tuple2!53009 (_1!29798 (_ BitVec 64)) (_2!29798 List!52020)) )
))
(declare-datatypes ((List!52021 0))(
  ( (Nil!51897) (Cons!51897 (h!58041 tuple2!53008) (t!359137 List!52021)) )
))
(declare-fun extractMap!1696 (List!52021) ListMap!4549)

(assert (=> b!4655206 (= lt!1818237 (extractMap!1696 Nil!51897))))

(assert (=> b!4655206 true))

(declare-fun b!4655207 () Bool)

(declare-fun res!1957280 () Bool)

(declare-fun e!2904453 () Bool)

(assert (=> b!4655207 (=> (not res!1957280) (not e!2904453))))

(declare-fun newBucket!224 () List!52020)

(declare-fun noDuplicateKeys!1640 (List!52020) Bool)

(assert (=> b!4655207 (= res!1957280 (noDuplicateKeys!1640 newBucket!224))))

(declare-fun b!4655208 () Bool)

(assert (=> b!4655208 (= e!2904455 (= lt!1818237 (ListMap!4550 Nil!51896)))))

(declare-fun b!4655209 () Bool)

(declare-fun res!1957285 () Bool)

(assert (=> b!4655209 (=> res!1957285 e!2904456)))

(declare-fun lt!1818235 () List!52021)

(declare-fun lambda!199226 () Int)

(declare-fun forall!11024 (List!52021 Int) Bool)

(assert (=> b!4655209 (= res!1957285 (not (forall!11024 lt!1818235 lambda!199226)))))

(declare-fun res!1957282 () Bool)

(assert (=> start!468488 (=> (not res!1957282) (not e!2904453))))

(assert (=> start!468488 (= res!1957282 (noDuplicateKeys!1640 oldBucket!40))))

(assert (=> start!468488 e!2904453))

(assert (=> start!468488 true))

(assert (=> start!468488 e!2904458))

(assert (=> start!468488 tp_is_empty!29853))

(declare-fun e!2904454 () Bool)

(assert (=> start!468488 e!2904454))

(declare-fun b!4655210 () Bool)

(declare-datatypes ((Hashable!6037 0))(
  ( (HashableExt!6036 (__x!31740 Int)) )
))
(declare-fun hashF!1389 () Hashable!6037)

(declare-datatypes ((ListLongMap!3763 0))(
  ( (ListLongMap!3764 (toList!5210 List!52021)) )
))
(declare-fun allKeysSameHashInMap!1598 (ListLongMap!3763 Hashable!6037) Bool)

(assert (=> b!4655210 (= e!2904456 (allKeysSameHashInMap!1598 (ListLongMap!3764 lt!1818235) hashF!1389))))

(declare-fun b!4655211 () Bool)

(assert (=> b!4655211 (= e!2904453 e!2904457)))

(declare-fun res!1957288 () Bool)

(assert (=> b!4655211 (=> (not res!1957288) (not e!2904457))))

(declare-fun contains!15037 (ListMap!4549 K!13250) Bool)

(assert (=> b!4655211 (= res!1957288 (contains!15037 lt!1818236 key!4968))))

(assert (=> b!4655211 (= lt!1818236 (extractMap!1696 lt!1818235))))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4655211 (= lt!1818235 (Cons!51897 (tuple2!53009 hash!414 oldBucket!40) Nil!51897))))

(declare-fun b!4655212 () Bool)

(declare-fun res!1957281 () Bool)

(assert (=> b!4655212 (=> (not res!1957281) (not e!2904457))))

(declare-fun allKeysSameHash!1494 (List!52020 (_ BitVec 64) Hashable!6037) Bool)

(assert (=> b!4655212 (= res!1957281 (allKeysSameHash!1494 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4655213 () Bool)

(declare-fun res!1957283 () Bool)

(assert (=> b!4655213 (=> (not res!1957283) (not e!2904457))))

(declare-fun hash!3777 (Hashable!6037 K!13250) (_ BitVec 64))

(assert (=> b!4655213 (= res!1957283 (= (hash!3777 hashF!1389 key!4968) hash!414))))

(declare-fun tp!1343311 () Bool)

(declare-fun b!4655214 () Bool)

(assert (=> b!4655214 (= e!2904454 (and tp_is_empty!29853 tp_is_empty!29855 tp!1343311))))

(declare-fun b!4655215 () Bool)

(declare-fun res!1957284 () Bool)

(assert (=> b!4655215 (=> (not res!1957284) (not e!2904453))))

(declare-fun removePairForKey!1263 (List!52020 K!13250) List!52020)

(assert (=> b!4655215 (= res!1957284 (= (removePairForKey!1263 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4655216 () Bool)

(declare-fun res!1957286 () Bool)

(assert (=> b!4655216 (=> (not res!1957286) (not e!2904453))))

(assert (=> b!4655216 (= res!1957286 (allKeysSameHash!1494 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!468488 res!1957282) b!4655207))

(assert (= (and b!4655207 res!1957280) b!4655215))

(assert (= (and b!4655215 res!1957284) b!4655216))

(assert (= (and b!4655216 res!1957286) b!4655211))

(assert (= (and b!4655211 res!1957288) b!4655213))

(assert (= (and b!4655213 res!1957283) b!4655212))

(assert (= (and b!4655212 res!1957281) b!4655206))

(assert (= (and b!4655206 res!1957287) b!4655208))

(assert (= (and b!4655206 (not res!1957279)) b!4655209))

(assert (= (and b!4655209 (not res!1957285)) b!4655210))

(assert (= (and start!468488 ((_ is Cons!51896) oldBucket!40)) b!4655205))

(assert (= (and start!468488 ((_ is Cons!51896) newBucket!224)) b!4655214))

(declare-fun m!5534115 () Bool)

(assert (=> b!4655213 m!5534115))

(declare-fun m!5534117 () Bool)

(assert (=> start!468488 m!5534117))

(declare-fun m!5534119 () Bool)

(assert (=> b!4655212 m!5534119))

(declare-fun m!5534121 () Bool)

(assert (=> b!4655206 m!5534121))

(declare-fun m!5534123 () Bool)

(assert (=> b!4655206 m!5534123))

(declare-fun m!5534125 () Bool)

(assert (=> b!4655209 m!5534125))

(declare-fun m!5534127 () Bool)

(assert (=> b!4655215 m!5534127))

(declare-fun m!5534129 () Bool)

(assert (=> b!4655211 m!5534129))

(declare-fun m!5534131 () Bool)

(assert (=> b!4655211 m!5534131))

(declare-fun m!5534133 () Bool)

(assert (=> b!4655210 m!5534133))

(declare-fun m!5534135 () Bool)

(assert (=> b!4655207 m!5534135))

(declare-fun m!5534137 () Bool)

(assert (=> b!4655216 m!5534137))

(check-sat (not b!4655212) (not start!468488) (not b!4655207) (not b!4655209) (not b!4655206) (not b!4655210) (not b!4655216) tp_is_empty!29853 (not b!4655213) (not b!4655211) (not b!4655214) (not b!4655205) (not b!4655215) tp_is_empty!29855)
(check-sat)
(get-model)

(declare-fun d!1476348 () Bool)

(declare-fun res!1957293 () Bool)

(declare-fun e!2904463 () Bool)

(assert (=> d!1476348 (=> res!1957293 e!2904463)))

(assert (=> d!1476348 (= res!1957293 (not ((_ is Cons!51896) newBucket!224)))))

(assert (=> d!1476348 (= (noDuplicateKeys!1640 newBucket!224) e!2904463)))

(declare-fun b!4655221 () Bool)

(declare-fun e!2904464 () Bool)

(assert (=> b!4655221 (= e!2904463 e!2904464)))

(declare-fun res!1957294 () Bool)

(assert (=> b!4655221 (=> (not res!1957294) (not e!2904464))))

(declare-fun containsKey!2725 (List!52020 K!13250) Bool)

(assert (=> b!4655221 (= res!1957294 (not (containsKey!2725 (t!359136 newBucket!224) (_1!29797 (h!58040 newBucket!224)))))))

(declare-fun b!4655222 () Bool)

(assert (=> b!4655222 (= e!2904464 (noDuplicateKeys!1640 (t!359136 newBucket!224)))))

(assert (= (and d!1476348 (not res!1957293)) b!4655221))

(assert (= (and b!4655221 res!1957294) b!4655222))

(declare-fun m!5534139 () Bool)

(assert (=> b!4655221 m!5534139))

(declare-fun m!5534141 () Bool)

(assert (=> b!4655222 m!5534141))

(assert (=> b!4655207 d!1476348))

(declare-fun d!1476352 () Bool)

(assert (=> d!1476352 true))

(assert (=> d!1476352 true))

(declare-fun lambda!199229 () Int)

(declare-fun forall!11026 (List!52020 Int) Bool)

(assert (=> d!1476352 (= (allKeysSameHash!1494 newBucket!224 hash!414 hashF!1389) (forall!11026 newBucket!224 lambda!199229))))

(declare-fun bs!1064419 () Bool)

(assert (= bs!1064419 d!1476352))

(declare-fun m!5534147 () Bool)

(assert (=> bs!1064419 m!5534147))

(assert (=> b!4655212 d!1476352))

(declare-fun bs!1064441 () Bool)

(declare-fun b!4655329 () Bool)

(assert (= bs!1064441 (and b!4655329 d!1476352)))

(declare-fun lambda!199301 () Int)

(assert (=> bs!1064441 (not (= lambda!199301 lambda!199229))))

(assert (=> b!4655329 true))

(declare-fun bs!1064442 () Bool)

(declare-fun b!4655328 () Bool)

(assert (= bs!1064442 (and b!4655328 d!1476352)))

(declare-fun lambda!199302 () Int)

(assert (=> bs!1064442 (not (= lambda!199302 lambda!199229))))

(declare-fun bs!1064443 () Bool)

(assert (= bs!1064443 (and b!4655328 b!4655329)))

(assert (=> bs!1064443 (= lambda!199302 lambda!199301)))

(assert (=> b!4655328 true))

(declare-fun lambda!199303 () Int)

(assert (=> bs!1064442 (not (= lambda!199303 lambda!199229))))

(declare-fun lt!1818394 () ListMap!4549)

(assert (=> bs!1064443 (= (= lt!1818394 lt!1818237) (= lambda!199303 lambda!199301))))

(assert (=> b!4655328 (= (= lt!1818394 lt!1818237) (= lambda!199303 lambda!199302))))

(assert (=> b!4655328 true))

(declare-fun bs!1064444 () Bool)

(declare-fun d!1476356 () Bool)

(assert (= bs!1064444 (and d!1476356 d!1476352)))

(declare-fun lambda!199304 () Int)

(assert (=> bs!1064444 (not (= lambda!199304 lambda!199229))))

(declare-fun bs!1064445 () Bool)

(assert (= bs!1064445 (and d!1476356 b!4655329)))

(declare-fun lt!1818393 () ListMap!4549)

(assert (=> bs!1064445 (= (= lt!1818393 lt!1818237) (= lambda!199304 lambda!199301))))

(declare-fun bs!1064446 () Bool)

(assert (= bs!1064446 (and d!1476356 b!4655328)))

(assert (=> bs!1064446 (= (= lt!1818393 lt!1818237) (= lambda!199304 lambda!199302))))

(assert (=> bs!1064446 (= (= lt!1818393 lt!1818394) (= lambda!199304 lambda!199303))))

(assert (=> d!1476356 true))

(declare-fun e!2904527 () Bool)

(assert (=> d!1476356 e!2904527))

(declare-fun res!1957333 () Bool)

(assert (=> d!1476356 (=> (not res!1957333) (not e!2904527))))

(assert (=> d!1476356 (= res!1957333 (forall!11026 oldBucket!40 lambda!199304))))

(declare-fun e!2904526 () ListMap!4549)

(assert (=> d!1476356 (= lt!1818393 e!2904526)))

(declare-fun c!796811 () Bool)

(assert (=> d!1476356 (= c!796811 ((_ is Nil!51896) oldBucket!40))))

(assert (=> d!1476356 (noDuplicateKeys!1640 oldBucket!40)))

(assert (=> d!1476356 (= (addToMapMapFromBucket!1097 oldBucket!40 lt!1818237) lt!1818393)))

(declare-fun b!4655327 () Bool)

(declare-fun e!2904528 () Bool)

(assert (=> b!4655327 (= e!2904528 (forall!11026 (toList!5209 lt!1818237) lambda!199303))))

(declare-fun call!325334 () Bool)

(declare-fun bm!325327 () Bool)

(assert (=> bm!325327 (= call!325334 (forall!11026 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40) (ite c!796811 lambda!199301 lambda!199303)))))

(declare-fun bm!325328 () Bool)

(declare-fun call!325332 () Bool)

(declare-fun lt!1818389 () ListMap!4549)

(assert (=> bm!325328 (= call!325332 (forall!11026 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)) (ite c!796811 lambda!199301 lambda!199303)))))

(assert (=> b!4655328 (= e!2904526 lt!1818394)))

(declare-fun +!1984 (ListMap!4549 tuple2!53006) ListMap!4549)

(assert (=> b!4655328 (= lt!1818389 (+!1984 lt!1818237 (h!58040 oldBucket!40)))))

(assert (=> b!4655328 (= lt!1818394 (addToMapMapFromBucket!1097 (t!359136 oldBucket!40) (+!1984 lt!1818237 (h!58040 oldBucket!40))))))

(declare-datatypes ((Unit!118533 0))(
  ( (Unit!118534) )
))
(declare-fun lt!1818374 () Unit!118533)

(declare-fun call!325333 () Unit!118533)

(assert (=> b!4655328 (= lt!1818374 call!325333)))

(assert (=> b!4655328 (forall!11026 (toList!5209 lt!1818237) lambda!199302)))

(declare-fun lt!1818381 () Unit!118533)

(assert (=> b!4655328 (= lt!1818381 lt!1818374)))

(assert (=> b!4655328 (forall!11026 (toList!5209 lt!1818389) lambda!199303)))

(declare-fun lt!1818385 () Unit!118533)

(declare-fun Unit!118535 () Unit!118533)

(assert (=> b!4655328 (= lt!1818385 Unit!118535)))

(assert (=> b!4655328 (forall!11026 (t!359136 oldBucket!40) lambda!199303)))

(declare-fun lt!1818384 () Unit!118533)

(declare-fun Unit!118536 () Unit!118533)

(assert (=> b!4655328 (= lt!1818384 Unit!118536)))

(declare-fun lt!1818387 () Unit!118533)

(declare-fun Unit!118537 () Unit!118533)

(assert (=> b!4655328 (= lt!1818387 Unit!118537)))

(declare-fun lt!1818392 () Unit!118533)

(declare-fun forallContained!3226 (List!52020 Int tuple2!53006) Unit!118533)

(assert (=> b!4655328 (= lt!1818392 (forallContained!3226 (toList!5209 lt!1818389) lambda!199303 (h!58040 oldBucket!40)))))

(assert (=> b!4655328 (contains!15037 lt!1818389 (_1!29797 (h!58040 oldBucket!40)))))

(declare-fun lt!1818377 () Unit!118533)

(declare-fun Unit!118538 () Unit!118533)

(assert (=> b!4655328 (= lt!1818377 Unit!118538)))

(assert (=> b!4655328 (contains!15037 lt!1818394 (_1!29797 (h!58040 oldBucket!40)))))

(declare-fun lt!1818388 () Unit!118533)

(declare-fun Unit!118539 () Unit!118533)

(assert (=> b!4655328 (= lt!1818388 Unit!118539)))

(assert (=> b!4655328 (forall!11026 oldBucket!40 lambda!199303)))

(declare-fun lt!1818376 () Unit!118533)

(declare-fun Unit!118540 () Unit!118533)

(assert (=> b!4655328 (= lt!1818376 Unit!118540)))

(assert (=> b!4655328 call!325332))

(declare-fun lt!1818382 () Unit!118533)

(declare-fun Unit!118541 () Unit!118533)

(assert (=> b!4655328 (= lt!1818382 Unit!118541)))

(declare-fun lt!1818380 () Unit!118533)

(declare-fun Unit!118542 () Unit!118533)

(assert (=> b!4655328 (= lt!1818380 Unit!118542)))

(declare-fun lt!1818390 () Unit!118533)

(declare-fun addForallContainsKeyThenBeforeAdding!597 (ListMap!4549 ListMap!4549 K!13250 V!13496) Unit!118533)

(assert (=> b!4655328 (= lt!1818390 (addForallContainsKeyThenBeforeAdding!597 lt!1818237 lt!1818394 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))

(assert (=> b!4655328 (forall!11026 (toList!5209 lt!1818237) lambda!199303)))

(declare-fun lt!1818378 () Unit!118533)

(assert (=> b!4655328 (= lt!1818378 lt!1818390)))

(assert (=> b!4655328 (forall!11026 (toList!5209 lt!1818237) lambda!199303)))

(declare-fun lt!1818379 () Unit!118533)

(declare-fun Unit!118543 () Unit!118533)

(assert (=> b!4655328 (= lt!1818379 Unit!118543)))

(declare-fun res!1957334 () Bool)

(assert (=> b!4655328 (= res!1957334 call!325334)))

(assert (=> b!4655328 (=> (not res!1957334) (not e!2904528))))

(assert (=> b!4655328 e!2904528))

(declare-fun lt!1818375 () Unit!118533)

(declare-fun Unit!118544 () Unit!118533)

(assert (=> b!4655328 (= lt!1818375 Unit!118544)))

(declare-fun bm!325329 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!598 (ListMap!4549) Unit!118533)

(assert (=> bm!325329 (= call!325333 (lemmaContainsAllItsOwnKeys!598 lt!1818237))))

(assert (=> b!4655329 (= e!2904526 lt!1818237)))

(declare-fun lt!1818391 () Unit!118533)

(assert (=> b!4655329 (= lt!1818391 call!325333)))

(assert (=> b!4655329 call!325334))

(declare-fun lt!1818383 () Unit!118533)

(assert (=> b!4655329 (= lt!1818383 lt!1818391)))

(assert (=> b!4655329 call!325332))

(declare-fun lt!1818386 () Unit!118533)

(declare-fun Unit!118545 () Unit!118533)

(assert (=> b!4655329 (= lt!1818386 Unit!118545)))

(declare-fun b!4655330 () Bool)

(declare-fun res!1957335 () Bool)

(assert (=> b!4655330 (=> (not res!1957335) (not e!2904527))))

(assert (=> b!4655330 (= res!1957335 (forall!11026 (toList!5209 lt!1818237) lambda!199304))))

(declare-fun b!4655331 () Bool)

(declare-fun invariantList!1298 (List!52020) Bool)

(assert (=> b!4655331 (= e!2904527 (invariantList!1298 (toList!5209 lt!1818393)))))

(assert (= (and d!1476356 c!796811) b!4655329))

(assert (= (and d!1476356 (not c!796811)) b!4655328))

(assert (= (and b!4655328 res!1957334) b!4655327))

(assert (= (or b!4655329 b!4655328) bm!325329))

(assert (= (or b!4655329 b!4655328) bm!325327))

(assert (= (or b!4655329 b!4655328) bm!325328))

(assert (= (and d!1476356 res!1957333) b!4655330))

(assert (= (and b!4655330 res!1957335) b!4655331))

(declare-fun m!5534241 () Bool)

(assert (=> bm!325327 m!5534241))

(declare-fun m!5534243 () Bool)

(assert (=> b!4655328 m!5534243))

(declare-fun m!5534245 () Bool)

(assert (=> b!4655328 m!5534245))

(declare-fun m!5534247 () Bool)

(assert (=> b!4655328 m!5534247))

(assert (=> b!4655328 m!5534243))

(declare-fun m!5534249 () Bool)

(assert (=> b!4655328 m!5534249))

(declare-fun m!5534251 () Bool)

(assert (=> b!4655328 m!5534251))

(declare-fun m!5534253 () Bool)

(assert (=> b!4655328 m!5534253))

(declare-fun m!5534255 () Bool)

(assert (=> b!4655328 m!5534255))

(declare-fun m!5534257 () Bool)

(assert (=> b!4655328 m!5534257))

(declare-fun m!5534259 () Bool)

(assert (=> b!4655328 m!5534259))

(declare-fun m!5534261 () Bool)

(assert (=> b!4655328 m!5534261))

(assert (=> b!4655328 m!5534247))

(declare-fun m!5534263 () Bool)

(assert (=> b!4655328 m!5534263))

(assert (=> b!4655327 m!5534247))

(declare-fun m!5534265 () Bool)

(assert (=> bm!325329 m!5534265))

(declare-fun m!5534267 () Bool)

(assert (=> b!4655331 m!5534267))

(declare-fun m!5534269 () Bool)

(assert (=> bm!325328 m!5534269))

(declare-fun m!5534271 () Bool)

(assert (=> b!4655330 m!5534271))

(declare-fun m!5534273 () Bool)

(assert (=> d!1476356 m!5534273))

(assert (=> d!1476356 m!5534117))

(assert (=> b!4655206 d!1476356))

(declare-fun bs!1064447 () Bool)

(declare-fun d!1476380 () Bool)

(assert (= bs!1064447 (and d!1476380 b!4655209)))

(declare-fun lambda!199307 () Int)

(assert (=> bs!1064447 (= lambda!199307 lambda!199226)))

(declare-fun lt!1818397 () ListMap!4549)

(assert (=> d!1476380 (invariantList!1298 (toList!5209 lt!1818397))))

(declare-fun e!2904531 () ListMap!4549)

(assert (=> d!1476380 (= lt!1818397 e!2904531)))

(declare-fun c!796814 () Bool)

(assert (=> d!1476380 (= c!796814 ((_ is Cons!51897) Nil!51897))))

(assert (=> d!1476380 (forall!11024 Nil!51897 lambda!199307)))

(assert (=> d!1476380 (= (extractMap!1696 Nil!51897) lt!1818397)))

(declare-fun b!4655338 () Bool)

(assert (=> b!4655338 (= e!2904531 (addToMapMapFromBucket!1097 (_2!29798 (h!58041 Nil!51897)) (extractMap!1696 (t!359137 Nil!51897))))))

(declare-fun b!4655339 () Bool)

(assert (=> b!4655339 (= e!2904531 (ListMap!4550 Nil!51896))))

(assert (= (and d!1476380 c!796814) b!4655338))

(assert (= (and d!1476380 (not c!796814)) b!4655339))

(declare-fun m!5534275 () Bool)

(assert (=> d!1476380 m!5534275))

(declare-fun m!5534277 () Bool)

(assert (=> d!1476380 m!5534277))

(declare-fun m!5534279 () Bool)

(assert (=> b!4655338 m!5534279))

(assert (=> b!4655338 m!5534279))

(declare-fun m!5534281 () Bool)

(assert (=> b!4655338 m!5534281))

(assert (=> b!4655206 d!1476380))

(declare-fun b!4655358 () Bool)

(declare-fun e!2904545 () Bool)

(declare-datatypes ((List!52023 0))(
  ( (Nil!51899) (Cons!51899 (h!58045 K!13250) (t!359139 List!52023)) )
))
(declare-fun contains!15039 (List!52023 K!13250) Bool)

(declare-fun keys!18384 (ListMap!4549) List!52023)

(assert (=> b!4655358 (= e!2904545 (not (contains!15039 (keys!18384 lt!1818236) key!4968)))))

(declare-fun b!4655359 () Bool)

(declare-fun e!2904546 () Bool)

(assert (=> b!4655359 (= e!2904546 (contains!15039 (keys!18384 lt!1818236) key!4968))))

(declare-fun b!4655360 () Bool)

(declare-fun e!2904547 () Bool)

(assert (=> b!4655360 (= e!2904547 e!2904546)))

(declare-fun res!1957342 () Bool)

(assert (=> b!4655360 (=> (not res!1957342) (not e!2904546))))

(declare-datatypes ((Option!11822 0))(
  ( (None!11821) (Some!11821 (v!46091 V!13496)) )
))
(declare-fun isDefined!9087 (Option!11822) Bool)

(declare-fun getValueByKey!1610 (List!52020 K!13250) Option!11822)

(assert (=> b!4655360 (= res!1957342 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818236) key!4968)))))

(declare-fun b!4655361 () Bool)

(declare-fun e!2904549 () Unit!118533)

(declare-fun lt!1818414 () Unit!118533)

(assert (=> b!4655361 (= e!2904549 lt!1818414)))

(declare-fun lt!1818417 () Unit!118533)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (List!52020 K!13250) Unit!118533)

(assert (=> b!4655361 (= lt!1818417 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818236) key!4968))))

(assert (=> b!4655361 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818236) key!4968))))

(declare-fun lt!1818415 () Unit!118533)

(assert (=> b!4655361 (= lt!1818415 lt!1818417)))

(declare-fun lemmaInListThenGetKeysListContains!744 (List!52020 K!13250) Unit!118533)

(assert (=> b!4655361 (= lt!1818414 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818236) key!4968))))

(declare-fun call!325337 () Bool)

(assert (=> b!4655361 call!325337))

(declare-fun b!4655362 () Bool)

(declare-fun e!2904544 () List!52023)

(assert (=> b!4655362 (= e!2904544 (keys!18384 lt!1818236))))

(declare-fun b!4655363 () Bool)

(declare-fun getKeysList!749 (List!52020) List!52023)

(assert (=> b!4655363 (= e!2904544 (getKeysList!749 (toList!5209 lt!1818236)))))

(declare-fun d!1476382 () Bool)

(assert (=> d!1476382 e!2904547))

(declare-fun res!1957343 () Bool)

(assert (=> d!1476382 (=> res!1957343 e!2904547)))

(assert (=> d!1476382 (= res!1957343 e!2904545)))

(declare-fun res!1957344 () Bool)

(assert (=> d!1476382 (=> (not res!1957344) (not e!2904545))))

(declare-fun lt!1818416 () Bool)

(assert (=> d!1476382 (= res!1957344 (not lt!1818416))))

(declare-fun lt!1818421 () Bool)

(assert (=> d!1476382 (= lt!1818416 lt!1818421)))

(declare-fun lt!1818419 () Unit!118533)

(assert (=> d!1476382 (= lt!1818419 e!2904549)))

(declare-fun c!796821 () Bool)

(assert (=> d!1476382 (= c!796821 lt!1818421)))

(declare-fun containsKey!2726 (List!52020 K!13250) Bool)

(assert (=> d!1476382 (= lt!1818421 (containsKey!2726 (toList!5209 lt!1818236) key!4968))))

(assert (=> d!1476382 (= (contains!15037 lt!1818236 key!4968) lt!1818416)))

(declare-fun bm!325332 () Bool)

(assert (=> bm!325332 (= call!325337 (contains!15039 e!2904544 key!4968))))

(declare-fun c!796823 () Bool)

(assert (=> bm!325332 (= c!796823 c!796821)))

(declare-fun b!4655364 () Bool)

(declare-fun e!2904548 () Unit!118533)

(declare-fun Unit!118546 () Unit!118533)

(assert (=> b!4655364 (= e!2904548 Unit!118546)))

(declare-fun b!4655365 () Bool)

(assert (=> b!4655365 (= e!2904549 e!2904548)))

(declare-fun c!796822 () Bool)

(assert (=> b!4655365 (= c!796822 call!325337)))

(declare-fun b!4655366 () Bool)

(assert (=> b!4655366 false))

(declare-fun lt!1818420 () Unit!118533)

(declare-fun lt!1818418 () Unit!118533)

(assert (=> b!4655366 (= lt!1818420 lt!1818418)))

(assert (=> b!4655366 (containsKey!2726 (toList!5209 lt!1818236) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!748 (List!52020 K!13250) Unit!118533)

(assert (=> b!4655366 (= lt!1818418 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818236) key!4968))))

(declare-fun Unit!118547 () Unit!118533)

(assert (=> b!4655366 (= e!2904548 Unit!118547)))

(assert (= (and d!1476382 c!796821) b!4655361))

(assert (= (and d!1476382 (not c!796821)) b!4655365))

(assert (= (and b!4655365 c!796822) b!4655366))

(assert (= (and b!4655365 (not c!796822)) b!4655364))

(assert (= (or b!4655361 b!4655365) bm!325332))

(assert (= (and bm!325332 c!796823) b!4655363))

(assert (= (and bm!325332 (not c!796823)) b!4655362))

(assert (= (and d!1476382 res!1957344) b!4655358))

(assert (= (and d!1476382 (not res!1957343)) b!4655360))

(assert (= (and b!4655360 res!1957342) b!4655359))

(declare-fun m!5534283 () Bool)

(assert (=> b!4655362 m!5534283))

(declare-fun m!5534285 () Bool)

(assert (=> d!1476382 m!5534285))

(declare-fun m!5534287 () Bool)

(assert (=> b!4655363 m!5534287))

(declare-fun m!5534289 () Bool)

(assert (=> bm!325332 m!5534289))

(declare-fun m!5534291 () Bool)

(assert (=> b!4655361 m!5534291))

(declare-fun m!5534293 () Bool)

(assert (=> b!4655361 m!5534293))

(assert (=> b!4655361 m!5534293))

(declare-fun m!5534295 () Bool)

(assert (=> b!4655361 m!5534295))

(declare-fun m!5534297 () Bool)

(assert (=> b!4655361 m!5534297))

(assert (=> b!4655366 m!5534285))

(declare-fun m!5534299 () Bool)

(assert (=> b!4655366 m!5534299))

(assert (=> b!4655360 m!5534293))

(assert (=> b!4655360 m!5534293))

(assert (=> b!4655360 m!5534295))

(assert (=> b!4655359 m!5534283))

(assert (=> b!4655359 m!5534283))

(declare-fun m!5534301 () Bool)

(assert (=> b!4655359 m!5534301))

(assert (=> b!4655358 m!5534283))

(assert (=> b!4655358 m!5534283))

(assert (=> b!4655358 m!5534301))

(assert (=> b!4655211 d!1476382))

(declare-fun bs!1064448 () Bool)

(declare-fun d!1476384 () Bool)

(assert (= bs!1064448 (and d!1476384 b!4655209)))

(declare-fun lambda!199308 () Int)

(assert (=> bs!1064448 (= lambda!199308 lambda!199226)))

(declare-fun bs!1064449 () Bool)

(assert (= bs!1064449 (and d!1476384 d!1476380)))

(assert (=> bs!1064449 (= lambda!199308 lambda!199307)))

(declare-fun lt!1818422 () ListMap!4549)

(assert (=> d!1476384 (invariantList!1298 (toList!5209 lt!1818422))))

(declare-fun e!2904550 () ListMap!4549)

(assert (=> d!1476384 (= lt!1818422 e!2904550)))

(declare-fun c!796824 () Bool)

(assert (=> d!1476384 (= c!796824 ((_ is Cons!51897) lt!1818235))))

(assert (=> d!1476384 (forall!11024 lt!1818235 lambda!199308)))

(assert (=> d!1476384 (= (extractMap!1696 lt!1818235) lt!1818422)))

(declare-fun b!4655367 () Bool)

(assert (=> b!4655367 (= e!2904550 (addToMapMapFromBucket!1097 (_2!29798 (h!58041 lt!1818235)) (extractMap!1696 (t!359137 lt!1818235))))))

(declare-fun b!4655368 () Bool)

(assert (=> b!4655368 (= e!2904550 (ListMap!4550 Nil!51896))))

(assert (= (and d!1476384 c!796824) b!4655367))

(assert (= (and d!1476384 (not c!796824)) b!4655368))

(declare-fun m!5534303 () Bool)

(assert (=> d!1476384 m!5534303))

(declare-fun m!5534305 () Bool)

(assert (=> d!1476384 m!5534305))

(declare-fun m!5534307 () Bool)

(assert (=> b!4655367 m!5534307))

(assert (=> b!4655367 m!5534307))

(declare-fun m!5534309 () Bool)

(assert (=> b!4655367 m!5534309))

(assert (=> b!4655211 d!1476384))

(declare-fun bs!1064450 () Bool)

(declare-fun d!1476386 () Bool)

(assert (= bs!1064450 (and d!1476386 d!1476352)))

(declare-fun lambda!199309 () Int)

(assert (=> bs!1064450 (= lambda!199309 lambda!199229)))

(declare-fun bs!1064451 () Bool)

(assert (= bs!1064451 (and d!1476386 b!4655328)))

(assert (=> bs!1064451 (not (= lambda!199309 lambda!199303))))

(declare-fun bs!1064452 () Bool)

(assert (= bs!1064452 (and d!1476386 b!4655329)))

(assert (=> bs!1064452 (not (= lambda!199309 lambda!199301))))

(assert (=> bs!1064451 (not (= lambda!199309 lambda!199302))))

(declare-fun bs!1064453 () Bool)

(assert (= bs!1064453 (and d!1476386 d!1476356)))

(assert (=> bs!1064453 (not (= lambda!199309 lambda!199304))))

(assert (=> d!1476386 true))

(assert (=> d!1476386 true))

(assert (=> d!1476386 (= (allKeysSameHash!1494 oldBucket!40 hash!414 hashF!1389) (forall!11026 oldBucket!40 lambda!199309))))

(declare-fun bs!1064454 () Bool)

(assert (= bs!1064454 d!1476386))

(declare-fun m!5534311 () Bool)

(assert (=> bs!1064454 m!5534311))

(assert (=> b!4655216 d!1476386))

(declare-fun d!1476388 () Bool)

(declare-fun res!1957345 () Bool)

(declare-fun e!2904551 () Bool)

(assert (=> d!1476388 (=> res!1957345 e!2904551)))

(assert (=> d!1476388 (= res!1957345 (not ((_ is Cons!51896) oldBucket!40)))))

(assert (=> d!1476388 (= (noDuplicateKeys!1640 oldBucket!40) e!2904551)))

(declare-fun b!4655369 () Bool)

(declare-fun e!2904552 () Bool)

(assert (=> b!4655369 (= e!2904551 e!2904552)))

(declare-fun res!1957346 () Bool)

(assert (=> b!4655369 (=> (not res!1957346) (not e!2904552))))

(assert (=> b!4655369 (= res!1957346 (not (containsKey!2725 (t!359136 oldBucket!40) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4655370 () Bool)

(assert (=> b!4655370 (= e!2904552 (noDuplicateKeys!1640 (t!359136 oldBucket!40)))))

(assert (= (and d!1476388 (not res!1957345)) b!4655369))

(assert (= (and b!4655369 res!1957346) b!4655370))

(declare-fun m!5534313 () Bool)

(assert (=> b!4655369 m!5534313))

(declare-fun m!5534315 () Bool)

(assert (=> b!4655370 m!5534315))

(assert (=> start!468488 d!1476388))

(declare-fun bs!1064455 () Bool)

(declare-fun d!1476390 () Bool)

(assert (= bs!1064455 (and d!1476390 b!4655209)))

(declare-fun lambda!199312 () Int)

(assert (=> bs!1064455 (not (= lambda!199312 lambda!199226))))

(declare-fun bs!1064456 () Bool)

(assert (= bs!1064456 (and d!1476390 d!1476380)))

(assert (=> bs!1064456 (not (= lambda!199312 lambda!199307))))

(declare-fun bs!1064457 () Bool)

(assert (= bs!1064457 (and d!1476390 d!1476384)))

(assert (=> bs!1064457 (not (= lambda!199312 lambda!199308))))

(assert (=> d!1476390 true))

(assert (=> d!1476390 (= (allKeysSameHashInMap!1598 (ListLongMap!3764 lt!1818235) hashF!1389) (forall!11024 (toList!5210 (ListLongMap!3764 lt!1818235)) lambda!199312))))

(declare-fun bs!1064458 () Bool)

(assert (= bs!1064458 d!1476390))

(declare-fun m!5534317 () Bool)

(assert (=> bs!1064458 m!5534317))

(assert (=> b!4655210 d!1476390))

(declare-fun d!1476392 () Bool)

(declare-fun lt!1818425 () List!52020)

(assert (=> d!1476392 (not (containsKey!2725 lt!1818425 key!4968))))

(declare-fun e!2904557 () List!52020)

(assert (=> d!1476392 (= lt!1818425 e!2904557)))

(declare-fun c!796829 () Bool)

(assert (=> d!1476392 (= c!796829 (and ((_ is Cons!51896) oldBucket!40) (= (_1!29797 (h!58040 oldBucket!40)) key!4968)))))

(assert (=> d!1476392 (noDuplicateKeys!1640 oldBucket!40)))

(assert (=> d!1476392 (= (removePairForKey!1263 oldBucket!40 key!4968) lt!1818425)))

(declare-fun b!4655383 () Bool)

(declare-fun e!2904558 () List!52020)

(assert (=> b!4655383 (= e!2904558 (Cons!51896 (h!58040 oldBucket!40) (removePairForKey!1263 (t!359136 oldBucket!40) key!4968)))))

(declare-fun b!4655381 () Bool)

(assert (=> b!4655381 (= e!2904557 (t!359136 oldBucket!40))))

(declare-fun b!4655384 () Bool)

(assert (=> b!4655384 (= e!2904558 Nil!51896)))

(declare-fun b!4655382 () Bool)

(assert (=> b!4655382 (= e!2904557 e!2904558)))

(declare-fun c!796830 () Bool)

(assert (=> b!4655382 (= c!796830 ((_ is Cons!51896) oldBucket!40))))

(assert (= (and d!1476392 c!796829) b!4655381))

(assert (= (and d!1476392 (not c!796829)) b!4655382))

(assert (= (and b!4655382 c!796830) b!4655383))

(assert (= (and b!4655382 (not c!796830)) b!4655384))

(declare-fun m!5534319 () Bool)

(assert (=> d!1476392 m!5534319))

(assert (=> d!1476392 m!5534117))

(declare-fun m!5534321 () Bool)

(assert (=> b!4655383 m!5534321))

(assert (=> b!4655215 d!1476392))

(declare-fun d!1476394 () Bool)

(declare-fun res!1957351 () Bool)

(declare-fun e!2904563 () Bool)

(assert (=> d!1476394 (=> res!1957351 e!2904563)))

(assert (=> d!1476394 (= res!1957351 ((_ is Nil!51897) lt!1818235))))

(assert (=> d!1476394 (= (forall!11024 lt!1818235 lambda!199226) e!2904563)))

(declare-fun b!4655389 () Bool)

(declare-fun e!2904564 () Bool)

(assert (=> b!4655389 (= e!2904563 e!2904564)))

(declare-fun res!1957352 () Bool)

(assert (=> b!4655389 (=> (not res!1957352) (not e!2904564))))

(declare-fun dynLambda!21588 (Int tuple2!53008) Bool)

(assert (=> b!4655389 (= res!1957352 (dynLambda!21588 lambda!199226 (h!58041 lt!1818235)))))

(declare-fun b!4655390 () Bool)

(assert (=> b!4655390 (= e!2904564 (forall!11024 (t!359137 lt!1818235) lambda!199226))))

(assert (= (and d!1476394 (not res!1957351)) b!4655389))

(assert (= (and b!4655389 res!1957352) b!4655390))

(declare-fun b_lambda!173883 () Bool)

(assert (=> (not b_lambda!173883) (not b!4655389)))

(declare-fun m!5534323 () Bool)

(assert (=> b!4655389 m!5534323))

(declare-fun m!5534325 () Bool)

(assert (=> b!4655390 m!5534325))

(assert (=> b!4655209 d!1476394))

(declare-fun d!1476396 () Bool)

(declare-fun hash!3779 (Hashable!6037 K!13250) (_ BitVec 64))

(assert (=> d!1476396 (= (hash!3777 hashF!1389 key!4968) (hash!3779 hashF!1389 key!4968))))

(declare-fun bs!1064459 () Bool)

(assert (= bs!1064459 d!1476396))

(declare-fun m!5534327 () Bool)

(assert (=> bs!1064459 m!5534327))

(assert (=> b!4655213 d!1476396))

(declare-fun tp!1343318 () Bool)

(declare-fun b!4655395 () Bool)

(declare-fun e!2904567 () Bool)

(assert (=> b!4655395 (= e!2904567 (and tp_is_empty!29853 tp_is_empty!29855 tp!1343318))))

(assert (=> b!4655205 (= tp!1343310 e!2904567)))

(assert (= (and b!4655205 ((_ is Cons!51896) (t!359136 oldBucket!40))) b!4655395))

(declare-fun b!4655396 () Bool)

(declare-fun e!2904568 () Bool)

(declare-fun tp!1343319 () Bool)

(assert (=> b!4655396 (= e!2904568 (and tp_is_empty!29853 tp_is_empty!29855 tp!1343319))))

(assert (=> b!4655214 (= tp!1343311 e!2904568)))

(assert (= (and b!4655214 ((_ is Cons!51896) (t!359136 newBucket!224))) b!4655396))

(declare-fun b_lambda!173885 () Bool)

(assert (= b_lambda!173883 (or b!4655209 b_lambda!173885)))

(declare-fun bs!1064460 () Bool)

(declare-fun d!1476398 () Bool)

(assert (= bs!1064460 (and d!1476398 b!4655209)))

(assert (=> bs!1064460 (= (dynLambda!21588 lambda!199226 (h!58041 lt!1818235)) (noDuplicateKeys!1640 (_2!29798 (h!58041 lt!1818235))))))

(declare-fun m!5534329 () Bool)

(assert (=> bs!1064460 m!5534329))

(assert (=> b!4655389 d!1476398))

(check-sat (not b!4655358) (not d!1476352) (not b!4655359) (not b!4655390) (not b!4655383) (not d!1476392) (not d!1476396) (not b!4655362) (not b!4655361) (not b!4655222) (not b!4655360) (not b!4655330) (not d!1476386) (not bs!1064460) (not b!4655367) (not b!4655366) (not bm!325332) (not bm!325329) (not d!1476390) (not bm!325327) tp_is_empty!29853 (not d!1476384) (not d!1476382) (not b!4655363) (not b!4655327) (not b!4655369) (not b!4655396) tp_is_empty!29855 (not bm!325328) (not b!4655328) (not d!1476380) (not b_lambda!173885) (not b!4655331) (not b!4655221) (not b!4655338) (not b!4655370) (not d!1476356) (not b!4655395))
(check-sat)
(get-model)

(declare-fun d!1476480 () Bool)

(declare-fun res!1957451 () Bool)

(declare-fun e!2904673 () Bool)

(assert (=> d!1476480 (=> res!1957451 e!2904673)))

(assert (=> d!1476480 (= res!1957451 ((_ is Nil!51896) oldBucket!40))))

(assert (=> d!1476480 (= (forall!11026 oldBucket!40 lambda!199309) e!2904673)))

(declare-fun b!4655532 () Bool)

(declare-fun e!2904674 () Bool)

(assert (=> b!4655532 (= e!2904673 e!2904674)))

(declare-fun res!1957452 () Bool)

(assert (=> b!4655532 (=> (not res!1957452) (not e!2904674))))

(declare-fun dynLambda!21590 (Int tuple2!53006) Bool)

(assert (=> b!4655532 (= res!1957452 (dynLambda!21590 lambda!199309 (h!58040 oldBucket!40)))))

(declare-fun b!4655533 () Bool)

(assert (=> b!4655533 (= e!2904674 (forall!11026 (t!359136 oldBucket!40) lambda!199309))))

(assert (= (and d!1476480 (not res!1957451)) b!4655532))

(assert (= (and b!4655532 res!1957452) b!4655533))

(declare-fun b_lambda!173919 () Bool)

(assert (=> (not b_lambda!173919) (not b!4655532)))

(declare-fun m!5534605 () Bool)

(assert (=> b!4655532 m!5534605))

(declare-fun m!5534607 () Bool)

(assert (=> b!4655533 m!5534607))

(assert (=> d!1476386 d!1476480))

(declare-fun d!1476496 () Bool)

(declare-fun lt!1818525 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8994 (List!52023) (InoxSet K!13250))

(assert (=> d!1476496 (= lt!1818525 (select (content!8994 e!2904544) key!4968))))

(declare-fun e!2904680 () Bool)

(assert (=> d!1476496 (= lt!1818525 e!2904680)))

(declare-fun res!1957458 () Bool)

(assert (=> d!1476496 (=> (not res!1957458) (not e!2904680))))

(assert (=> d!1476496 (= res!1957458 ((_ is Cons!51899) e!2904544))))

(assert (=> d!1476496 (= (contains!15039 e!2904544 key!4968) lt!1818525)))

(declare-fun b!4655538 () Bool)

(declare-fun e!2904679 () Bool)

(assert (=> b!4655538 (= e!2904680 e!2904679)))

(declare-fun res!1957457 () Bool)

(assert (=> b!4655538 (=> res!1957457 e!2904679)))

(assert (=> b!4655538 (= res!1957457 (= (h!58045 e!2904544) key!4968))))

(declare-fun b!4655539 () Bool)

(assert (=> b!4655539 (= e!2904679 (contains!15039 (t!359139 e!2904544) key!4968))))

(assert (= (and d!1476496 res!1957458) b!4655538))

(assert (= (and b!4655538 (not res!1957457)) b!4655539))

(declare-fun m!5534609 () Bool)

(assert (=> d!1476496 m!5534609))

(declare-fun m!5534611 () Bool)

(assert (=> d!1476496 m!5534611))

(declare-fun m!5534613 () Bool)

(assert (=> b!4655539 m!5534613))

(assert (=> bm!325332 d!1476496))

(declare-fun d!1476498 () Bool)

(declare-fun res!1957459 () Bool)

(declare-fun e!2904681 () Bool)

(assert (=> d!1476498 (=> res!1957459 e!2904681)))

(assert (=> d!1476498 (= res!1957459 ((_ is Nil!51897) (toList!5210 (ListLongMap!3764 lt!1818235))))))

(assert (=> d!1476498 (= (forall!11024 (toList!5210 (ListLongMap!3764 lt!1818235)) lambda!199312) e!2904681)))

(declare-fun b!4655540 () Bool)

(declare-fun e!2904682 () Bool)

(assert (=> b!4655540 (= e!2904681 e!2904682)))

(declare-fun res!1957460 () Bool)

(assert (=> b!4655540 (=> (not res!1957460) (not e!2904682))))

(assert (=> b!4655540 (= res!1957460 (dynLambda!21588 lambda!199312 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235)))))))

(declare-fun b!4655541 () Bool)

(assert (=> b!4655541 (= e!2904682 (forall!11024 (t!359137 (toList!5210 (ListLongMap!3764 lt!1818235))) lambda!199312))))

(assert (= (and d!1476498 (not res!1957459)) b!4655540))

(assert (= (and b!4655540 res!1957460) b!4655541))

(declare-fun b_lambda!173921 () Bool)

(assert (=> (not b_lambda!173921) (not b!4655540)))

(declare-fun m!5534615 () Bool)

(assert (=> b!4655540 m!5534615))

(declare-fun m!5534617 () Bool)

(assert (=> b!4655541 m!5534617))

(assert (=> d!1476390 d!1476498))

(declare-fun d!1476500 () Bool)

(assert (not d!1476500))

(assert (=> b!4655338 d!1476500))

(declare-fun d!1476502 () Bool)

(assert (not d!1476502))

(assert (=> b!4655338 d!1476502))

(declare-fun d!1476504 () Bool)

(declare-fun res!1957461 () Bool)

(declare-fun e!2904683 () Bool)

(assert (=> d!1476504 (=> res!1957461 e!2904683)))

(assert (=> d!1476504 (= res!1957461 ((_ is Nil!51897) (t!359137 lt!1818235)))))

(assert (=> d!1476504 (= (forall!11024 (t!359137 lt!1818235) lambda!199226) e!2904683)))

(declare-fun b!4655542 () Bool)

(declare-fun e!2904684 () Bool)

(assert (=> b!4655542 (= e!2904683 e!2904684)))

(declare-fun res!1957462 () Bool)

(assert (=> b!4655542 (=> (not res!1957462) (not e!2904684))))

(assert (=> b!4655542 (= res!1957462 (dynLambda!21588 lambda!199226 (h!58041 (t!359137 lt!1818235))))))

(declare-fun b!4655543 () Bool)

(assert (=> b!4655543 (= e!2904684 (forall!11024 (t!359137 (t!359137 lt!1818235)) lambda!199226))))

(assert (= (and d!1476504 (not res!1957461)) b!4655542))

(assert (= (and b!4655542 res!1957462) b!4655543))

(declare-fun b_lambda!173923 () Bool)

(assert (=> (not b_lambda!173923) (not b!4655542)))

(declare-fun m!5534619 () Bool)

(assert (=> b!4655542 m!5534619))

(declare-fun m!5534621 () Bool)

(assert (=> b!4655543 m!5534621))

(assert (=> b!4655390 d!1476504))

(declare-fun d!1476506 () Bool)

(declare-fun noDuplicatedKeys!351 (List!52020) Bool)

(assert (=> d!1476506 (= (invariantList!1298 (toList!5209 lt!1818393)) (noDuplicatedKeys!351 (toList!5209 lt!1818393)))))

(declare-fun bs!1064543 () Bool)

(assert (= bs!1064543 d!1476506))

(declare-fun m!5534623 () Bool)

(assert (=> bs!1064543 m!5534623))

(assert (=> b!4655331 d!1476506))

(declare-fun b!4655599 () Bool)

(assert (=> b!4655599 true))

(declare-fun bs!1064564 () Bool)

(declare-fun b!4655601 () Bool)

(assert (= bs!1064564 (and b!4655601 b!4655599)))

(declare-fun lambda!199357 () Int)

(declare-fun lambda!199356 () Int)

(assert (=> bs!1064564 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (t!359136 (toList!5209 lt!1818236))) (= lambda!199357 lambda!199356))))

(assert (=> b!4655601 true))

(declare-fun bs!1064565 () Bool)

(declare-fun b!4655595 () Bool)

(assert (= bs!1064565 (and b!4655595 b!4655599)))

(declare-fun lambda!199358 () Int)

(assert (=> bs!1064565 (= (= (toList!5209 lt!1818236) (t!359136 (toList!5209 lt!1818236))) (= lambda!199358 lambda!199356))))

(declare-fun bs!1064566 () Bool)

(assert (= bs!1064566 (and b!4655595 b!4655601)))

(assert (=> bs!1064566 (= (= (toList!5209 lt!1818236) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199358 lambda!199357))))

(assert (=> b!4655595 true))

(declare-fun b!4655593 () Bool)

(declare-fun res!1957480 () Bool)

(declare-fun e!2904708 () Bool)

(assert (=> b!4655593 (=> (not res!1957480) (not e!2904708))))

(declare-fun lt!1818567 () List!52023)

(declare-fun length!530 (List!52023) Int)

(declare-fun length!531 (List!52020) Int)

(assert (=> b!4655593 (= res!1957480 (= (length!530 lt!1818567) (length!531 (toList!5209 lt!1818236))))))

(declare-fun b!4655594 () Bool)

(assert (=> b!4655594 false))

(declare-fun e!2904710 () Unit!118533)

(declare-fun Unit!118563 () Unit!118533)

(assert (=> b!4655594 (= e!2904710 Unit!118563)))

(declare-fun res!1957479 () Bool)

(assert (=> b!4655595 (=> (not res!1957479) (not e!2904708))))

(declare-fun forall!11027 (List!52023 Int) Bool)

(assert (=> b!4655595 (= res!1957479 (forall!11027 lt!1818567 lambda!199358))))

(declare-fun d!1476508 () Bool)

(assert (=> d!1476508 e!2904708))

(declare-fun res!1957478 () Bool)

(assert (=> d!1476508 (=> (not res!1957478) (not e!2904708))))

(declare-fun noDuplicate!837 (List!52023) Bool)

(assert (=> d!1476508 (= res!1957478 (noDuplicate!837 lt!1818567))))

(declare-fun e!2904709 () List!52023)

(assert (=> d!1476508 (= lt!1818567 e!2904709)))

(declare-fun c!796864 () Bool)

(assert (=> d!1476508 (= c!796864 ((_ is Cons!51896) (toList!5209 lt!1818236)))))

(assert (=> d!1476508 (invariantList!1298 (toList!5209 lt!1818236))))

(assert (=> d!1476508 (= (getKeysList!749 (toList!5209 lt!1818236)) lt!1818567)))

(declare-fun b!4655596 () Bool)

(declare-fun e!2904707 () Unit!118533)

(declare-fun Unit!118564 () Unit!118533)

(assert (=> b!4655596 (= e!2904707 Unit!118564)))

(declare-fun b!4655597 () Bool)

(declare-fun Unit!118565 () Unit!118533)

(assert (=> b!4655597 (= e!2904710 Unit!118565)))

(declare-fun b!4655598 () Bool)

(declare-fun lambda!199359 () Int)

(declare-fun map!11470 (List!52020 Int) List!52023)

(assert (=> b!4655598 (= e!2904708 (= (content!8994 lt!1818567) (content!8994 (map!11470 (toList!5209 lt!1818236) lambda!199359))))))

(assert (=> b!4655599 false))

(declare-fun lt!1818561 () Unit!118533)

(declare-fun forallContained!3227 (List!52023 Int K!13250) Unit!118533)

(assert (=> b!4655599 (= lt!1818561 (forallContained!3227 (getKeysList!749 (t!359136 (toList!5209 lt!1818236))) lambda!199356 (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(declare-fun Unit!118566 () Unit!118533)

(assert (=> b!4655599 (= e!2904707 Unit!118566)))

(declare-fun b!4655600 () Bool)

(assert (=> b!4655600 (= e!2904709 Nil!51899)))

(assert (=> b!4655601 (= e!2904709 (Cons!51899 (_1!29797 (h!58040 (toList!5209 lt!1818236))) (getKeysList!749 (t!359136 (toList!5209 lt!1818236)))))))

(declare-fun c!796865 () Bool)

(assert (=> b!4655601 (= c!796865 (containsKey!2726 (t!359136 (toList!5209 lt!1818236)) (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(declare-fun lt!1818562 () Unit!118533)

(assert (=> b!4655601 (= lt!1818562 e!2904710)))

(declare-fun c!796863 () Bool)

(assert (=> b!4655601 (= c!796863 (contains!15039 (getKeysList!749 (t!359136 (toList!5209 lt!1818236))) (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(declare-fun lt!1818563 () Unit!118533)

(assert (=> b!4655601 (= lt!1818563 e!2904707)))

(declare-fun lt!1818565 () List!52023)

(assert (=> b!4655601 (= lt!1818565 (getKeysList!749 (t!359136 (toList!5209 lt!1818236))))))

(declare-fun lt!1818566 () Unit!118533)

(declare-fun lemmaForallContainsAddHeadPreserves!257 (List!52020 List!52023 tuple2!53006) Unit!118533)

(assert (=> b!4655601 (= lt!1818566 (lemmaForallContainsAddHeadPreserves!257 (t!359136 (toList!5209 lt!1818236)) lt!1818565 (h!58040 (toList!5209 lt!1818236))))))

(assert (=> b!4655601 (forall!11027 lt!1818565 lambda!199357)))

(declare-fun lt!1818564 () Unit!118533)

(assert (=> b!4655601 (= lt!1818564 lt!1818566)))

(assert (= (and d!1476508 c!796864) b!4655601))

(assert (= (and d!1476508 (not c!796864)) b!4655600))

(assert (= (and b!4655601 c!796865) b!4655594))

(assert (= (and b!4655601 (not c!796865)) b!4655597))

(assert (= (and b!4655601 c!796863) b!4655599))

(assert (= (and b!4655601 (not c!796863)) b!4655596))

(assert (= (and d!1476508 res!1957478) b!4655593))

(assert (= (and b!4655593 res!1957480) b!4655595))

(assert (= (and b!4655595 res!1957479) b!4655598))

(declare-fun m!5534671 () Bool)

(assert (=> d!1476508 m!5534671))

(declare-fun m!5534673 () Bool)

(assert (=> d!1476508 m!5534673))

(declare-fun m!5534675 () Bool)

(assert (=> b!4655595 m!5534675))

(declare-fun m!5534677 () Bool)

(assert (=> b!4655599 m!5534677))

(assert (=> b!4655599 m!5534677))

(declare-fun m!5534679 () Bool)

(assert (=> b!4655599 m!5534679))

(declare-fun m!5534681 () Bool)

(assert (=> b!4655593 m!5534681))

(declare-fun m!5534683 () Bool)

(assert (=> b!4655593 m!5534683))

(assert (=> b!4655601 m!5534677))

(declare-fun m!5534685 () Bool)

(assert (=> b!4655601 m!5534685))

(declare-fun m!5534687 () Bool)

(assert (=> b!4655601 m!5534687))

(declare-fun m!5534689 () Bool)

(assert (=> b!4655601 m!5534689))

(assert (=> b!4655601 m!5534677))

(declare-fun m!5534691 () Bool)

(assert (=> b!4655601 m!5534691))

(declare-fun m!5534693 () Bool)

(assert (=> b!4655598 m!5534693))

(declare-fun m!5534695 () Bool)

(assert (=> b!4655598 m!5534695))

(assert (=> b!4655598 m!5534695))

(declare-fun m!5534697 () Bool)

(assert (=> b!4655598 m!5534697))

(assert (=> b!4655363 d!1476508))

(declare-fun d!1476536 () Bool)

(declare-fun res!1957485 () Bool)

(declare-fun e!2904715 () Bool)

(assert (=> d!1476536 (=> res!1957485 e!2904715)))

(assert (=> d!1476536 (= res!1957485 (and ((_ is Cons!51896) lt!1818425) (= (_1!29797 (h!58040 lt!1818425)) key!4968)))))

(assert (=> d!1476536 (= (containsKey!2725 lt!1818425 key!4968) e!2904715)))

(declare-fun b!4655608 () Bool)

(declare-fun e!2904716 () Bool)

(assert (=> b!4655608 (= e!2904715 e!2904716)))

(declare-fun res!1957486 () Bool)

(assert (=> b!4655608 (=> (not res!1957486) (not e!2904716))))

(assert (=> b!4655608 (= res!1957486 ((_ is Cons!51896) lt!1818425))))

(declare-fun b!4655609 () Bool)

(assert (=> b!4655609 (= e!2904716 (containsKey!2725 (t!359136 lt!1818425) key!4968))))

(assert (= (and d!1476536 (not res!1957485)) b!4655608))

(assert (= (and b!4655608 res!1957486) b!4655609))

(declare-fun m!5534699 () Bool)

(assert (=> b!4655609 m!5534699))

(assert (=> d!1476392 d!1476536))

(assert (=> d!1476392 d!1476388))

(declare-fun d!1476538 () Bool)

(assert (=> d!1476538 (= (invariantList!1298 (toList!5209 lt!1818422)) (noDuplicatedKeys!351 (toList!5209 lt!1818422)))))

(declare-fun bs!1064567 () Bool)

(assert (= bs!1064567 d!1476538))

(declare-fun m!5534701 () Bool)

(assert (=> bs!1064567 m!5534701))

(assert (=> d!1476384 d!1476538))

(declare-fun d!1476540 () Bool)

(declare-fun res!1957487 () Bool)

(declare-fun e!2904717 () Bool)

(assert (=> d!1476540 (=> res!1957487 e!2904717)))

(assert (=> d!1476540 (= res!1957487 ((_ is Nil!51897) lt!1818235))))

(assert (=> d!1476540 (= (forall!11024 lt!1818235 lambda!199308) e!2904717)))

(declare-fun b!4655610 () Bool)

(declare-fun e!2904718 () Bool)

(assert (=> b!4655610 (= e!2904717 e!2904718)))

(declare-fun res!1957488 () Bool)

(assert (=> b!4655610 (=> (not res!1957488) (not e!2904718))))

(assert (=> b!4655610 (= res!1957488 (dynLambda!21588 lambda!199308 (h!58041 lt!1818235)))))

(declare-fun b!4655611 () Bool)

(assert (=> b!4655611 (= e!2904718 (forall!11024 (t!359137 lt!1818235) lambda!199308))))

(assert (= (and d!1476540 (not res!1957487)) b!4655610))

(assert (= (and b!4655610 res!1957488) b!4655611))

(declare-fun b_lambda!173953 () Bool)

(assert (=> (not b_lambda!173953) (not b!4655610)))

(declare-fun m!5534703 () Bool)

(assert (=> b!4655610 m!5534703))

(declare-fun m!5534705 () Bool)

(assert (=> b!4655611 m!5534705))

(assert (=> d!1476384 d!1476540))

(declare-fun d!1476542 () Bool)

(declare-fun res!1957493 () Bool)

(declare-fun e!2904723 () Bool)

(assert (=> d!1476542 (=> res!1957493 e!2904723)))

(assert (=> d!1476542 (= res!1957493 (and ((_ is Cons!51896) (toList!5209 lt!1818236)) (= (_1!29797 (h!58040 (toList!5209 lt!1818236))) key!4968)))))

(assert (=> d!1476542 (= (containsKey!2726 (toList!5209 lt!1818236) key!4968) e!2904723)))

(declare-fun b!4655616 () Bool)

(declare-fun e!2904724 () Bool)

(assert (=> b!4655616 (= e!2904723 e!2904724)))

(declare-fun res!1957494 () Bool)

(assert (=> b!4655616 (=> (not res!1957494) (not e!2904724))))

(assert (=> b!4655616 (= res!1957494 ((_ is Cons!51896) (toList!5209 lt!1818236)))))

(declare-fun b!4655617 () Bool)

(assert (=> b!4655617 (= e!2904724 (containsKey!2726 (t!359136 (toList!5209 lt!1818236)) key!4968))))

(assert (= (and d!1476542 (not res!1957493)) b!4655616))

(assert (= (and b!4655616 res!1957494) b!4655617))

(declare-fun m!5534707 () Bool)

(assert (=> b!4655617 m!5534707))

(assert (=> b!4655366 d!1476542))

(declare-fun d!1476544 () Bool)

(assert (=> d!1476544 (containsKey!2726 (toList!5209 lt!1818236) key!4968)))

(declare-fun lt!1818570 () Unit!118533)

(declare-fun choose!31999 (List!52020 K!13250) Unit!118533)

(assert (=> d!1476544 (= lt!1818570 (choose!31999 (toList!5209 lt!1818236) key!4968))))

(assert (=> d!1476544 (invariantList!1298 (toList!5209 lt!1818236))))

(assert (=> d!1476544 (= (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818236) key!4968) lt!1818570)))

(declare-fun bs!1064568 () Bool)

(assert (= bs!1064568 d!1476544))

(assert (=> bs!1064568 m!5534285))

(declare-fun m!5534709 () Bool)

(assert (=> bs!1064568 m!5534709))

(assert (=> bs!1064568 m!5534673))

(assert (=> b!4655366 d!1476544))

(declare-fun d!1476546 () Bool)

(declare-fun res!1957495 () Bool)

(declare-fun e!2904725 () Bool)

(assert (=> d!1476546 (=> res!1957495 e!2904725)))

(assert (=> d!1476546 (= res!1957495 (not ((_ is Cons!51896) (t!359136 oldBucket!40))))))

(assert (=> d!1476546 (= (noDuplicateKeys!1640 (t!359136 oldBucket!40)) e!2904725)))

(declare-fun b!4655618 () Bool)

(declare-fun e!2904726 () Bool)

(assert (=> b!4655618 (= e!2904725 e!2904726)))

(declare-fun res!1957496 () Bool)

(assert (=> b!4655618 (=> (not res!1957496) (not e!2904726))))

(assert (=> b!4655618 (= res!1957496 (not (containsKey!2725 (t!359136 (t!359136 oldBucket!40)) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))))

(declare-fun b!4655619 () Bool)

(assert (=> b!4655619 (= e!2904726 (noDuplicateKeys!1640 (t!359136 (t!359136 oldBucket!40))))))

(assert (= (and d!1476546 (not res!1957495)) b!4655618))

(assert (= (and b!4655618 res!1957496) b!4655619))

(declare-fun m!5534711 () Bool)

(assert (=> b!4655618 m!5534711))

(declare-fun m!5534713 () Bool)

(assert (=> b!4655619 m!5534713))

(assert (=> b!4655370 d!1476546))

(declare-fun b!4655620 () Bool)

(declare-fun e!2904728 () Bool)

(assert (=> b!4655620 (= e!2904728 (not (contains!15039 (keys!18384 lt!1818394) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4655621 () Bool)

(declare-fun e!2904729 () Bool)

(assert (=> b!4655621 (= e!2904729 (contains!15039 (keys!18384 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4655622 () Bool)

(declare-fun e!2904730 () Bool)

(assert (=> b!4655622 (= e!2904730 e!2904729)))

(declare-fun res!1957497 () Bool)

(assert (=> b!4655622 (=> (not res!1957497) (not e!2904729))))

(assert (=> b!4655622 (= res!1957497 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4655623 () Bool)

(declare-fun e!2904732 () Unit!118533)

(declare-fun lt!1818571 () Unit!118533)

(assert (=> b!4655623 (= e!2904732 lt!1818571)))

(declare-fun lt!1818574 () Unit!118533)

(assert (=> b!4655623 (= lt!1818574 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> b!4655623 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun lt!1818572 () Unit!118533)

(assert (=> b!4655623 (= lt!1818572 lt!1818574)))

(assert (=> b!4655623 (= lt!1818571 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun call!325346 () Bool)

(assert (=> b!4655623 call!325346))

(declare-fun b!4655624 () Bool)

(declare-fun e!2904727 () List!52023)

(assert (=> b!4655624 (= e!2904727 (keys!18384 lt!1818394))))

(declare-fun b!4655625 () Bool)

(assert (=> b!4655625 (= e!2904727 (getKeysList!749 (toList!5209 lt!1818394)))))

(declare-fun d!1476548 () Bool)

(assert (=> d!1476548 e!2904730))

(declare-fun res!1957498 () Bool)

(assert (=> d!1476548 (=> res!1957498 e!2904730)))

(assert (=> d!1476548 (= res!1957498 e!2904728)))

(declare-fun res!1957499 () Bool)

(assert (=> d!1476548 (=> (not res!1957499) (not e!2904728))))

(declare-fun lt!1818573 () Bool)

(assert (=> d!1476548 (= res!1957499 (not lt!1818573))))

(declare-fun lt!1818578 () Bool)

(assert (=> d!1476548 (= lt!1818573 lt!1818578)))

(declare-fun lt!1818576 () Unit!118533)

(assert (=> d!1476548 (= lt!1818576 e!2904732)))

(declare-fun c!796866 () Bool)

(assert (=> d!1476548 (= c!796866 lt!1818578)))

(assert (=> d!1476548 (= lt!1818578 (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1476548 (= (contains!15037 lt!1818394 (_1!29797 (h!58040 oldBucket!40))) lt!1818573)))

(declare-fun bm!325341 () Bool)

(assert (=> bm!325341 (= call!325346 (contains!15039 e!2904727 (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun c!796868 () Bool)

(assert (=> bm!325341 (= c!796868 c!796866)))

(declare-fun b!4655626 () Bool)

(declare-fun e!2904731 () Unit!118533)

(declare-fun Unit!118567 () Unit!118533)

(assert (=> b!4655626 (= e!2904731 Unit!118567)))

(declare-fun b!4655627 () Bool)

(assert (=> b!4655627 (= e!2904732 e!2904731)))

(declare-fun c!796867 () Bool)

(assert (=> b!4655627 (= c!796867 call!325346)))

(declare-fun b!4655628 () Bool)

(assert (=> b!4655628 false))

(declare-fun lt!1818577 () Unit!118533)

(declare-fun lt!1818575 () Unit!118533)

(assert (=> b!4655628 (= lt!1818577 lt!1818575)))

(assert (=> b!4655628 (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40)))))

(assert (=> b!4655628 (= lt!1818575 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun Unit!118568 () Unit!118533)

(assert (=> b!4655628 (= e!2904731 Unit!118568)))

(assert (= (and d!1476548 c!796866) b!4655623))

(assert (= (and d!1476548 (not c!796866)) b!4655627))

(assert (= (and b!4655627 c!796867) b!4655628))

(assert (= (and b!4655627 (not c!796867)) b!4655626))

(assert (= (or b!4655623 b!4655627) bm!325341))

(assert (= (and bm!325341 c!796868) b!4655625))

(assert (= (and bm!325341 (not c!796868)) b!4655624))

(assert (= (and d!1476548 res!1957499) b!4655620))

(assert (= (and d!1476548 (not res!1957498)) b!4655622))

(assert (= (and b!4655622 res!1957497) b!4655621))

(declare-fun m!5534715 () Bool)

(assert (=> b!4655624 m!5534715))

(declare-fun m!5534717 () Bool)

(assert (=> d!1476548 m!5534717))

(declare-fun m!5534719 () Bool)

(assert (=> b!4655625 m!5534719))

(declare-fun m!5534721 () Bool)

(assert (=> bm!325341 m!5534721))

(declare-fun m!5534723 () Bool)

(assert (=> b!4655623 m!5534723))

(declare-fun m!5534725 () Bool)

(assert (=> b!4655623 m!5534725))

(assert (=> b!4655623 m!5534725))

(declare-fun m!5534727 () Bool)

(assert (=> b!4655623 m!5534727))

(declare-fun m!5534729 () Bool)

(assert (=> b!4655623 m!5534729))

(assert (=> b!4655628 m!5534717))

(declare-fun m!5534731 () Bool)

(assert (=> b!4655628 m!5534731))

(assert (=> b!4655622 m!5534725))

(assert (=> b!4655622 m!5534725))

(assert (=> b!4655622 m!5534727))

(assert (=> b!4655621 m!5534715))

(assert (=> b!4655621 m!5534715))

(declare-fun m!5534733 () Bool)

(assert (=> b!4655621 m!5534733))

(assert (=> b!4655620 m!5534715))

(assert (=> b!4655620 m!5534715))

(assert (=> b!4655620 m!5534733))

(assert (=> b!4655328 d!1476548))

(declare-fun d!1476550 () Bool)

(declare-fun res!1957500 () Bool)

(declare-fun e!2904733 () Bool)

(assert (=> d!1476550 (=> res!1957500 e!2904733)))

(assert (=> d!1476550 (= res!1957500 ((_ is Nil!51896) oldBucket!40))))

(assert (=> d!1476550 (= (forall!11026 oldBucket!40 lambda!199303) e!2904733)))

(declare-fun b!4655629 () Bool)

(declare-fun e!2904734 () Bool)

(assert (=> b!4655629 (= e!2904733 e!2904734)))

(declare-fun res!1957501 () Bool)

(assert (=> b!4655629 (=> (not res!1957501) (not e!2904734))))

(assert (=> b!4655629 (= res!1957501 (dynLambda!21590 lambda!199303 (h!58040 oldBucket!40)))))

(declare-fun b!4655630 () Bool)

(assert (=> b!4655630 (= e!2904734 (forall!11026 (t!359136 oldBucket!40) lambda!199303))))

(assert (= (and d!1476550 (not res!1957500)) b!4655629))

(assert (= (and b!4655629 res!1957501) b!4655630))

(declare-fun b_lambda!173955 () Bool)

(assert (=> (not b_lambda!173955) (not b!4655629)))

(declare-fun m!5534735 () Bool)

(assert (=> b!4655629 m!5534735))

(assert (=> b!4655630 m!5534263))

(assert (=> b!4655328 d!1476550))

(declare-fun d!1476552 () Bool)

(assert (=> d!1476552 (dynLambda!21590 lambda!199303 (h!58040 oldBucket!40))))

(declare-fun lt!1818581 () Unit!118533)

(declare-fun choose!32001 (List!52020 Int tuple2!53006) Unit!118533)

(assert (=> d!1476552 (= lt!1818581 (choose!32001 (toList!5209 lt!1818389) lambda!199303 (h!58040 oldBucket!40)))))

(declare-fun e!2904737 () Bool)

(assert (=> d!1476552 e!2904737))

(declare-fun res!1957504 () Bool)

(assert (=> d!1476552 (=> (not res!1957504) (not e!2904737))))

(assert (=> d!1476552 (= res!1957504 (forall!11026 (toList!5209 lt!1818389) lambda!199303))))

(assert (=> d!1476552 (= (forallContained!3226 (toList!5209 lt!1818389) lambda!199303 (h!58040 oldBucket!40)) lt!1818581)))

(declare-fun b!4655633 () Bool)

(declare-fun contains!15041 (List!52020 tuple2!53006) Bool)

(assert (=> b!4655633 (= e!2904737 (contains!15041 (toList!5209 lt!1818389) (h!58040 oldBucket!40)))))

(assert (= (and d!1476552 res!1957504) b!4655633))

(declare-fun b_lambda!173957 () Bool)

(assert (=> (not b_lambda!173957) (not d!1476552)))

(assert (=> d!1476552 m!5534735))

(declare-fun m!5534737 () Bool)

(assert (=> d!1476552 m!5534737))

(assert (=> d!1476552 m!5534261))

(declare-fun m!5534739 () Bool)

(assert (=> b!4655633 m!5534739))

(assert (=> b!4655328 d!1476552))

(declare-fun b!4655634 () Bool)

(declare-fun e!2904739 () Bool)

(assert (=> b!4655634 (= e!2904739 (not (contains!15039 (keys!18384 lt!1818389) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4655635 () Bool)

(declare-fun e!2904740 () Bool)

(assert (=> b!4655635 (= e!2904740 (contains!15039 (keys!18384 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4655636 () Bool)

(declare-fun e!2904741 () Bool)

(assert (=> b!4655636 (= e!2904741 e!2904740)))

(declare-fun res!1957505 () Bool)

(assert (=> b!4655636 (=> (not res!1957505) (not e!2904740))))

(assert (=> b!4655636 (= res!1957505 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4655637 () Bool)

(declare-fun e!2904743 () Unit!118533)

(declare-fun lt!1818582 () Unit!118533)

(assert (=> b!4655637 (= e!2904743 lt!1818582)))

(declare-fun lt!1818585 () Unit!118533)

(assert (=> b!4655637 (= lt!1818585 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> b!4655637 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun lt!1818583 () Unit!118533)

(assert (=> b!4655637 (= lt!1818583 lt!1818585)))

(assert (=> b!4655637 (= lt!1818582 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun call!325347 () Bool)

(assert (=> b!4655637 call!325347))

(declare-fun b!4655638 () Bool)

(declare-fun e!2904738 () List!52023)

(assert (=> b!4655638 (= e!2904738 (keys!18384 lt!1818389))))

(declare-fun b!4655639 () Bool)

(assert (=> b!4655639 (= e!2904738 (getKeysList!749 (toList!5209 lt!1818389)))))

(declare-fun d!1476554 () Bool)

(assert (=> d!1476554 e!2904741))

(declare-fun res!1957506 () Bool)

(assert (=> d!1476554 (=> res!1957506 e!2904741)))

(assert (=> d!1476554 (= res!1957506 e!2904739)))

(declare-fun res!1957507 () Bool)

(assert (=> d!1476554 (=> (not res!1957507) (not e!2904739))))

(declare-fun lt!1818584 () Bool)

(assert (=> d!1476554 (= res!1957507 (not lt!1818584))))

(declare-fun lt!1818589 () Bool)

(assert (=> d!1476554 (= lt!1818584 lt!1818589)))

(declare-fun lt!1818587 () Unit!118533)

(assert (=> d!1476554 (= lt!1818587 e!2904743)))

(declare-fun c!796869 () Bool)

(assert (=> d!1476554 (= c!796869 lt!1818589)))

(assert (=> d!1476554 (= lt!1818589 (containsKey!2726 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1476554 (= (contains!15037 lt!1818389 (_1!29797 (h!58040 oldBucket!40))) lt!1818584)))

(declare-fun bm!325342 () Bool)

(assert (=> bm!325342 (= call!325347 (contains!15039 e!2904738 (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun c!796871 () Bool)

(assert (=> bm!325342 (= c!796871 c!796869)))

(declare-fun b!4655640 () Bool)

(declare-fun e!2904742 () Unit!118533)

(declare-fun Unit!118569 () Unit!118533)

(assert (=> b!4655640 (= e!2904742 Unit!118569)))

(declare-fun b!4655641 () Bool)

(assert (=> b!4655641 (= e!2904743 e!2904742)))

(declare-fun c!796870 () Bool)

(assert (=> b!4655641 (= c!796870 call!325347)))

(declare-fun b!4655642 () Bool)

(assert (=> b!4655642 false))

(declare-fun lt!1818588 () Unit!118533)

(declare-fun lt!1818586 () Unit!118533)

(assert (=> b!4655642 (= lt!1818588 lt!1818586)))

(assert (=> b!4655642 (containsKey!2726 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40)))))

(assert (=> b!4655642 (= lt!1818586 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun Unit!118570 () Unit!118533)

(assert (=> b!4655642 (= e!2904742 Unit!118570)))

(assert (= (and d!1476554 c!796869) b!4655637))

(assert (= (and d!1476554 (not c!796869)) b!4655641))

(assert (= (and b!4655641 c!796870) b!4655642))

(assert (= (and b!4655641 (not c!796870)) b!4655640))

(assert (= (or b!4655637 b!4655641) bm!325342))

(assert (= (and bm!325342 c!796871) b!4655639))

(assert (= (and bm!325342 (not c!796871)) b!4655638))

(assert (= (and d!1476554 res!1957507) b!4655634))

(assert (= (and d!1476554 (not res!1957506)) b!4655636))

(assert (= (and b!4655636 res!1957505) b!4655635))

(declare-fun m!5534741 () Bool)

(assert (=> b!4655638 m!5534741))

(declare-fun m!5534743 () Bool)

(assert (=> d!1476554 m!5534743))

(declare-fun m!5534745 () Bool)

(assert (=> b!4655639 m!5534745))

(declare-fun m!5534747 () Bool)

(assert (=> bm!325342 m!5534747))

(declare-fun m!5534749 () Bool)

(assert (=> b!4655637 m!5534749))

(declare-fun m!5534751 () Bool)

(assert (=> b!4655637 m!5534751))

(assert (=> b!4655637 m!5534751))

(declare-fun m!5534753 () Bool)

(assert (=> b!4655637 m!5534753))

(declare-fun m!5534755 () Bool)

(assert (=> b!4655637 m!5534755))

(assert (=> b!4655642 m!5534743))

(declare-fun m!5534757 () Bool)

(assert (=> b!4655642 m!5534757))

(assert (=> b!4655636 m!5534751))

(assert (=> b!4655636 m!5534751))

(assert (=> b!4655636 m!5534753))

(assert (=> b!4655635 m!5534741))

(assert (=> b!4655635 m!5534741))

(declare-fun m!5534759 () Bool)

(assert (=> b!4655635 m!5534759))

(assert (=> b!4655634 m!5534741))

(assert (=> b!4655634 m!5534741))

(assert (=> b!4655634 m!5534759))

(assert (=> b!4655328 d!1476554))

(declare-fun d!1476556 () Bool)

(declare-fun e!2904746 () Bool)

(assert (=> d!1476556 e!2904746))

(declare-fun res!1957512 () Bool)

(assert (=> d!1476556 (=> (not res!1957512) (not e!2904746))))

(declare-fun lt!1818598 () ListMap!4549)

(assert (=> d!1476556 (= res!1957512 (contains!15037 lt!1818598 (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun lt!1818600 () List!52020)

(assert (=> d!1476556 (= lt!1818598 (ListMap!4550 lt!1818600))))

(declare-fun lt!1818601 () Unit!118533)

(declare-fun lt!1818599 () Unit!118533)

(assert (=> d!1476556 (= lt!1818601 lt!1818599)))

(assert (=> d!1476556 (= (getValueByKey!1610 lt!1818600 (_1!29797 (h!58040 oldBucket!40))) (Some!11821 (_2!29797 (h!58040 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!924 (List!52020 K!13250 V!13496) Unit!118533)

(assert (=> d!1476556 (= lt!1818599 (lemmaContainsTupThenGetReturnValue!924 lt!1818600 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!432 (List!52020 K!13250 V!13496) List!52020)

(assert (=> d!1476556 (= lt!1818600 (insertNoDuplicatedKeys!432 (toList!5209 lt!1818237) (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1476556 (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818598)))

(declare-fun b!4655647 () Bool)

(declare-fun res!1957513 () Bool)

(assert (=> b!4655647 (=> (not res!1957513) (not e!2904746))))

(assert (=> b!4655647 (= res!1957513 (= (getValueByKey!1610 (toList!5209 lt!1818598) (_1!29797 (h!58040 oldBucket!40))) (Some!11821 (_2!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4655648 () Bool)

(assert (=> b!4655648 (= e!2904746 (contains!15041 (toList!5209 lt!1818598) (h!58040 oldBucket!40)))))

(assert (= (and d!1476556 res!1957512) b!4655647))

(assert (= (and b!4655647 res!1957513) b!4655648))

(declare-fun m!5534761 () Bool)

(assert (=> d!1476556 m!5534761))

(declare-fun m!5534763 () Bool)

(assert (=> d!1476556 m!5534763))

(declare-fun m!5534765 () Bool)

(assert (=> d!1476556 m!5534765))

(declare-fun m!5534767 () Bool)

(assert (=> d!1476556 m!5534767))

(declare-fun m!5534769 () Bool)

(assert (=> b!4655647 m!5534769))

(declare-fun m!5534771 () Bool)

(assert (=> b!4655648 m!5534771))

(assert (=> b!4655328 d!1476556))

(declare-fun d!1476558 () Bool)

(declare-fun res!1957514 () Bool)

(declare-fun e!2904747 () Bool)

(assert (=> d!1476558 (=> res!1957514 e!2904747)))

(assert (=> d!1476558 (= res!1957514 ((_ is Nil!51896) (toList!5209 lt!1818237)))))

(assert (=> d!1476558 (= (forall!11026 (toList!5209 lt!1818237) lambda!199303) e!2904747)))

(declare-fun b!4655649 () Bool)

(declare-fun e!2904748 () Bool)

(assert (=> b!4655649 (= e!2904747 e!2904748)))

(declare-fun res!1957515 () Bool)

(assert (=> b!4655649 (=> (not res!1957515) (not e!2904748))))

(assert (=> b!4655649 (= res!1957515 (dynLambda!21590 lambda!199303 (h!58040 (toList!5209 lt!1818237))))))

(declare-fun b!4655650 () Bool)

(assert (=> b!4655650 (= e!2904748 (forall!11026 (t!359136 (toList!5209 lt!1818237)) lambda!199303))))

(assert (= (and d!1476558 (not res!1957514)) b!4655649))

(assert (= (and b!4655649 res!1957515) b!4655650))

(declare-fun b_lambda!173959 () Bool)

(assert (=> (not b_lambda!173959) (not b!4655649)))

(declare-fun m!5534773 () Bool)

(assert (=> b!4655649 m!5534773))

(declare-fun m!5534775 () Bool)

(assert (=> b!4655650 m!5534775))

(assert (=> b!4655328 d!1476558))

(declare-fun bs!1064569 () Bool)

(declare-fun d!1476560 () Bool)

(assert (= bs!1064569 (and d!1476560 d!1476352)))

(declare-fun lambda!199364 () Int)

(assert (=> bs!1064569 (not (= lambda!199364 lambda!199229))))

(declare-fun bs!1064570 () Bool)

(assert (= bs!1064570 (and d!1476560 b!4655328)))

(assert (=> bs!1064570 (= lambda!199364 lambda!199303)))

(declare-fun bs!1064571 () Bool)

(assert (= bs!1064571 (and d!1476560 b!4655329)))

(assert (=> bs!1064571 (= (= lt!1818394 lt!1818237) (= lambda!199364 lambda!199301))))

(declare-fun bs!1064572 () Bool)

(assert (= bs!1064572 (and d!1476560 d!1476386)))

(assert (=> bs!1064572 (not (= lambda!199364 lambda!199309))))

(assert (=> bs!1064570 (= (= lt!1818394 lt!1818237) (= lambda!199364 lambda!199302))))

(declare-fun bs!1064573 () Bool)

(assert (= bs!1064573 (and d!1476560 d!1476356)))

(assert (=> bs!1064573 (= (= lt!1818394 lt!1818393) (= lambda!199364 lambda!199304))))

(assert (=> d!1476560 true))

(assert (=> d!1476560 (forall!11026 (toList!5209 lt!1818237) lambda!199364)))

(declare-fun lt!1818604 () Unit!118533)

(declare-fun choose!32002 (ListMap!4549 ListMap!4549 K!13250 V!13496) Unit!118533)

(assert (=> d!1476560 (= lt!1818604 (choose!32002 lt!1818237 lt!1818394 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1476560 (forall!11026 (toList!5209 (+!1984 lt!1818237 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))) lambda!199364)))

(assert (=> d!1476560 (= (addForallContainsKeyThenBeforeAdding!597 lt!1818237 lt!1818394 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))) lt!1818604)))

(declare-fun bs!1064574 () Bool)

(assert (= bs!1064574 d!1476560))

(declare-fun m!5534777 () Bool)

(assert (=> bs!1064574 m!5534777))

(declare-fun m!5534779 () Bool)

(assert (=> bs!1064574 m!5534779))

(declare-fun m!5534781 () Bool)

(assert (=> bs!1064574 m!5534781))

(declare-fun m!5534783 () Bool)

(assert (=> bs!1064574 m!5534783))

(assert (=> b!4655328 d!1476560))

(declare-fun d!1476562 () Bool)

(declare-fun res!1957516 () Bool)

(declare-fun e!2904749 () Bool)

(assert (=> d!1476562 (=> res!1957516 e!2904749)))

(assert (=> d!1476562 (= res!1957516 ((_ is Nil!51896) (t!359136 oldBucket!40)))))

(assert (=> d!1476562 (= (forall!11026 (t!359136 oldBucket!40) lambda!199303) e!2904749)))

(declare-fun b!4655652 () Bool)

(declare-fun e!2904750 () Bool)

(assert (=> b!4655652 (= e!2904749 e!2904750)))

(declare-fun res!1957517 () Bool)

(assert (=> b!4655652 (=> (not res!1957517) (not e!2904750))))

(assert (=> b!4655652 (= res!1957517 (dynLambda!21590 lambda!199303 (h!58040 (t!359136 oldBucket!40))))))

(declare-fun b!4655653 () Bool)

(assert (=> b!4655653 (= e!2904750 (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199303))))

(assert (= (and d!1476562 (not res!1957516)) b!4655652))

(assert (= (and b!4655652 res!1957517) b!4655653))

(declare-fun b_lambda!173961 () Bool)

(assert (=> (not b_lambda!173961) (not b!4655652)))

(declare-fun m!5534785 () Bool)

(assert (=> b!4655652 m!5534785))

(declare-fun m!5534787 () Bool)

(assert (=> b!4655653 m!5534787))

(assert (=> b!4655328 d!1476562))

(declare-fun bs!1064575 () Bool)

(declare-fun b!4655656 () Bool)

(assert (= bs!1064575 (and b!4655656 d!1476352)))

(declare-fun lambda!199365 () Int)

(assert (=> bs!1064575 (not (= lambda!199365 lambda!199229))))

(declare-fun bs!1064576 () Bool)

(assert (= bs!1064576 (and b!4655656 b!4655328)))

(assert (=> bs!1064576 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818394) (= lambda!199365 lambda!199303))))

(declare-fun bs!1064577 () Bool)

(assert (= bs!1064577 (and b!4655656 b!4655329)))

(assert (=> bs!1064577 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818237) (= lambda!199365 lambda!199301))))

(declare-fun bs!1064578 () Bool)

(assert (= bs!1064578 (and b!4655656 d!1476386)))

(assert (=> bs!1064578 (not (= lambda!199365 lambda!199309))))

(declare-fun bs!1064579 () Bool)

(assert (= bs!1064579 (and b!4655656 d!1476560)))

(assert (=> bs!1064579 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818394) (= lambda!199365 lambda!199364))))

(assert (=> bs!1064576 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818237) (= lambda!199365 lambda!199302))))

(declare-fun bs!1064580 () Bool)

(assert (= bs!1064580 (and b!4655656 d!1476356)))

(assert (=> bs!1064580 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818393) (= lambda!199365 lambda!199304))))

(assert (=> b!4655656 true))

(declare-fun bs!1064581 () Bool)

(declare-fun b!4655655 () Bool)

(assert (= bs!1064581 (and b!4655655 d!1476352)))

(declare-fun lambda!199366 () Int)

(assert (=> bs!1064581 (not (= lambda!199366 lambda!199229))))

(declare-fun bs!1064582 () Bool)

(assert (= bs!1064582 (and b!4655655 b!4655328)))

(assert (=> bs!1064582 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818394) (= lambda!199366 lambda!199303))))

(declare-fun bs!1064583 () Bool)

(assert (= bs!1064583 (and b!4655655 b!4655329)))

(assert (=> bs!1064583 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818237) (= lambda!199366 lambda!199301))))

(declare-fun bs!1064584 () Bool)

(assert (= bs!1064584 (and b!4655655 d!1476386)))

(assert (=> bs!1064584 (not (= lambda!199366 lambda!199309))))

(declare-fun bs!1064585 () Bool)

(assert (= bs!1064585 (and b!4655655 d!1476560)))

(assert (=> bs!1064585 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818394) (= lambda!199366 lambda!199364))))

(assert (=> bs!1064582 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818237) (= lambda!199366 lambda!199302))))

(declare-fun bs!1064586 () Bool)

(assert (= bs!1064586 (and b!4655655 b!4655656)))

(assert (=> bs!1064586 (= lambda!199366 lambda!199365)))

(declare-fun bs!1064587 () Bool)

(assert (= bs!1064587 (and b!4655655 d!1476356)))

(assert (=> bs!1064587 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818393) (= lambda!199366 lambda!199304))))

(assert (=> b!4655655 true))

(declare-fun lambda!199367 () Int)

(assert (=> bs!1064581 (not (= lambda!199367 lambda!199229))))

(declare-fun lt!1818625 () ListMap!4549)

(assert (=> bs!1064582 (= (= lt!1818625 lt!1818394) (= lambda!199367 lambda!199303))))

(assert (=> bs!1064583 (= (= lt!1818625 lt!1818237) (= lambda!199367 lambda!199301))))

(assert (=> bs!1064584 (not (= lambda!199367 lambda!199309))))

(assert (=> bs!1064585 (= (= lt!1818625 lt!1818394) (= lambda!199367 lambda!199364))))

(assert (=> bs!1064582 (= (= lt!1818625 lt!1818237) (= lambda!199367 lambda!199302))))

(assert (=> b!4655655 (= (= lt!1818625 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199367 lambda!199366))))

(assert (=> bs!1064586 (= (= lt!1818625 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199367 lambda!199365))))

(assert (=> bs!1064587 (= (= lt!1818625 lt!1818393) (= lambda!199367 lambda!199304))))

(assert (=> b!4655655 true))

(declare-fun bs!1064588 () Bool)

(declare-fun d!1476564 () Bool)

(assert (= bs!1064588 (and d!1476564 d!1476352)))

(declare-fun lambda!199368 () Int)

(assert (=> bs!1064588 (not (= lambda!199368 lambda!199229))))

(declare-fun bs!1064589 () Bool)

(assert (= bs!1064589 (and d!1476564 b!4655328)))

(declare-fun lt!1818624 () ListMap!4549)

(assert (=> bs!1064589 (= (= lt!1818624 lt!1818394) (= lambda!199368 lambda!199303))))

(declare-fun bs!1064590 () Bool)

(assert (= bs!1064590 (and d!1476564 b!4655329)))

(assert (=> bs!1064590 (= (= lt!1818624 lt!1818237) (= lambda!199368 lambda!199301))))

(declare-fun bs!1064591 () Bool)

(assert (= bs!1064591 (and d!1476564 d!1476386)))

(assert (=> bs!1064591 (not (= lambda!199368 lambda!199309))))

(declare-fun bs!1064592 () Bool)

(assert (= bs!1064592 (and d!1476564 d!1476560)))

(assert (=> bs!1064592 (= (= lt!1818624 lt!1818394) (= lambda!199368 lambda!199364))))

(assert (=> bs!1064589 (= (= lt!1818624 lt!1818237) (= lambda!199368 lambda!199302))))

(declare-fun bs!1064593 () Bool)

(assert (= bs!1064593 (and d!1476564 b!4655655)))

(assert (=> bs!1064593 (= (= lt!1818624 lt!1818625) (= lambda!199368 lambda!199367))))

(assert (=> bs!1064593 (= (= lt!1818624 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199368 lambda!199366))))

(declare-fun bs!1064594 () Bool)

(assert (= bs!1064594 (and d!1476564 b!4655656)))

(assert (=> bs!1064594 (= (= lt!1818624 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199368 lambda!199365))))

(declare-fun bs!1064595 () Bool)

(assert (= bs!1064595 (and d!1476564 d!1476356)))

(assert (=> bs!1064595 (= (= lt!1818624 lt!1818393) (= lambda!199368 lambda!199304))))

(assert (=> d!1476564 true))

(declare-fun e!2904752 () Bool)

(assert (=> d!1476564 e!2904752))

(declare-fun res!1957518 () Bool)

(assert (=> d!1476564 (=> (not res!1957518) (not e!2904752))))

(assert (=> d!1476564 (= res!1957518 (forall!11026 (t!359136 oldBucket!40) lambda!199368))))

(declare-fun e!2904751 () ListMap!4549)

(assert (=> d!1476564 (= lt!1818624 e!2904751)))

(declare-fun c!796872 () Bool)

(assert (=> d!1476564 (= c!796872 ((_ is Nil!51896) (t!359136 oldBucket!40)))))

(assert (=> d!1476564 (noDuplicateKeys!1640 (t!359136 oldBucket!40))))

(assert (=> d!1476564 (= (addToMapMapFromBucket!1097 (t!359136 oldBucket!40) (+!1984 lt!1818237 (h!58040 oldBucket!40))) lt!1818624)))

(declare-fun b!4655654 () Bool)

(declare-fun e!2904753 () Bool)

(assert (=> b!4655654 (= e!2904753 (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199367))))

(declare-fun bm!325343 () Bool)

(declare-fun call!325350 () Bool)

(assert (=> bm!325343 (= call!325350 (forall!11026 (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (t!359136 oldBucket!40)) (ite c!796872 lambda!199365 lambda!199367)))))

(declare-fun lt!1818620 () ListMap!4549)

(declare-fun call!325348 () Bool)

(declare-fun bm!325344 () Bool)

(assert (=> bm!325344 (= call!325348 (forall!11026 (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (toList!5209 lt!1818620)) (ite c!796872 lambda!199365 lambda!199367)))))

(assert (=> b!4655655 (= e!2904751 lt!1818625)))

(assert (=> b!4655655 (= lt!1818620 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))))))

(assert (=> b!4655655 (= lt!1818625 (addToMapMapFromBucket!1097 (t!359136 (t!359136 oldBucket!40)) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun lt!1818605 () Unit!118533)

(declare-fun call!325349 () Unit!118533)

(assert (=> b!4655655 (= lt!1818605 call!325349)))

(assert (=> b!4655655 (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199366)))

(declare-fun lt!1818612 () Unit!118533)

(assert (=> b!4655655 (= lt!1818612 lt!1818605)))

(assert (=> b!4655655 (forall!11026 (toList!5209 lt!1818620) lambda!199367)))

(declare-fun lt!1818616 () Unit!118533)

(declare-fun Unit!118582 () Unit!118533)

(assert (=> b!4655655 (= lt!1818616 Unit!118582)))

(assert (=> b!4655655 (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199367)))

(declare-fun lt!1818615 () Unit!118533)

(declare-fun Unit!118583 () Unit!118533)

(assert (=> b!4655655 (= lt!1818615 Unit!118583)))

(declare-fun lt!1818618 () Unit!118533)

(declare-fun Unit!118584 () Unit!118533)

(assert (=> b!4655655 (= lt!1818618 Unit!118584)))

(declare-fun lt!1818623 () Unit!118533)

(assert (=> b!4655655 (= lt!1818623 (forallContained!3226 (toList!5209 lt!1818620) lambda!199367 (h!58040 (t!359136 oldBucket!40))))))

(assert (=> b!4655655 (contains!15037 lt!1818620 (_1!29797 (h!58040 (t!359136 oldBucket!40))))))

(declare-fun lt!1818608 () Unit!118533)

(declare-fun Unit!118585 () Unit!118533)

(assert (=> b!4655655 (= lt!1818608 Unit!118585)))

(assert (=> b!4655655 (contains!15037 lt!1818625 (_1!29797 (h!58040 (t!359136 oldBucket!40))))))

(declare-fun lt!1818619 () Unit!118533)

(declare-fun Unit!118586 () Unit!118533)

(assert (=> b!4655655 (= lt!1818619 Unit!118586)))

(assert (=> b!4655655 (forall!11026 (t!359136 oldBucket!40) lambda!199367)))

(declare-fun lt!1818607 () Unit!118533)

(declare-fun Unit!118587 () Unit!118533)

(assert (=> b!4655655 (= lt!1818607 Unit!118587)))

(assert (=> b!4655655 call!325348))

(declare-fun lt!1818613 () Unit!118533)

(declare-fun Unit!118588 () Unit!118533)

(assert (=> b!4655655 (= lt!1818613 Unit!118588)))

(declare-fun lt!1818611 () Unit!118533)

(declare-fun Unit!118589 () Unit!118533)

(assert (=> b!4655655 (= lt!1818611 Unit!118589)))

(declare-fun lt!1818621 () Unit!118533)

(assert (=> b!4655655 (= lt!1818621 (addForallContainsKeyThenBeforeAdding!597 (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818625 (_1!29797 (h!58040 (t!359136 oldBucket!40))) (_2!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> b!4655655 (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199367)))

(declare-fun lt!1818609 () Unit!118533)

(assert (=> b!4655655 (= lt!1818609 lt!1818621)))

(assert (=> b!4655655 (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199367)))

(declare-fun lt!1818610 () Unit!118533)

(declare-fun Unit!118590 () Unit!118533)

(assert (=> b!4655655 (= lt!1818610 Unit!118590)))

(declare-fun res!1957519 () Bool)

(assert (=> b!4655655 (= res!1957519 call!325350)))

(assert (=> b!4655655 (=> (not res!1957519) (not e!2904753))))

(assert (=> b!4655655 e!2904753))

(declare-fun lt!1818606 () Unit!118533)

(declare-fun Unit!118591 () Unit!118533)

(assert (=> b!4655655 (= lt!1818606 Unit!118591)))

(declare-fun bm!325345 () Bool)

(assert (=> bm!325345 (= call!325349 (lemmaContainsAllItsOwnKeys!598 (+!1984 lt!1818237 (h!58040 oldBucket!40))))))

(assert (=> b!4655656 (= e!2904751 (+!1984 lt!1818237 (h!58040 oldBucket!40)))))

(declare-fun lt!1818622 () Unit!118533)

(assert (=> b!4655656 (= lt!1818622 call!325349)))

(assert (=> b!4655656 call!325350))

(declare-fun lt!1818614 () Unit!118533)

(assert (=> b!4655656 (= lt!1818614 lt!1818622)))

(assert (=> b!4655656 call!325348))

(declare-fun lt!1818617 () Unit!118533)

(declare-fun Unit!118592 () Unit!118533)

(assert (=> b!4655656 (= lt!1818617 Unit!118592)))

(declare-fun b!4655657 () Bool)

(declare-fun res!1957520 () Bool)

(assert (=> b!4655657 (=> (not res!1957520) (not e!2904752))))

(assert (=> b!4655657 (= res!1957520 (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199368))))

(declare-fun b!4655658 () Bool)

(assert (=> b!4655658 (= e!2904752 (invariantList!1298 (toList!5209 lt!1818624)))))

(assert (= (and d!1476564 c!796872) b!4655656))

(assert (= (and d!1476564 (not c!796872)) b!4655655))

(assert (= (and b!4655655 res!1957519) b!4655654))

(assert (= (or b!4655656 b!4655655) bm!325345))

(assert (= (or b!4655656 b!4655655) bm!325343))

(assert (= (or b!4655656 b!4655655) bm!325344))

(assert (= (and d!1476564 res!1957518) b!4655657))

(assert (= (and b!4655657 res!1957520) b!4655658))

(declare-fun m!5534789 () Bool)

(assert (=> bm!325343 m!5534789))

(assert (=> b!4655655 m!5534243))

(declare-fun m!5534791 () Bool)

(assert (=> b!4655655 m!5534791))

(assert (=> b!4655655 m!5534243))

(declare-fun m!5534793 () Bool)

(assert (=> b!4655655 m!5534793))

(declare-fun m!5534795 () Bool)

(assert (=> b!4655655 m!5534795))

(assert (=> b!4655655 m!5534791))

(declare-fun m!5534797 () Bool)

(assert (=> b!4655655 m!5534797))

(declare-fun m!5534799 () Bool)

(assert (=> b!4655655 m!5534799))

(declare-fun m!5534801 () Bool)

(assert (=> b!4655655 m!5534801))

(declare-fun m!5534803 () Bool)

(assert (=> b!4655655 m!5534803))

(declare-fun m!5534805 () Bool)

(assert (=> b!4655655 m!5534805))

(declare-fun m!5534807 () Bool)

(assert (=> b!4655655 m!5534807))

(declare-fun m!5534809 () Bool)

(assert (=> b!4655655 m!5534809))

(assert (=> b!4655655 m!5534795))

(declare-fun m!5534811 () Bool)

(assert (=> b!4655655 m!5534811))

(assert (=> b!4655654 m!5534795))

(assert (=> bm!325345 m!5534243))

(declare-fun m!5534813 () Bool)

(assert (=> bm!325345 m!5534813))

(declare-fun m!5534815 () Bool)

(assert (=> b!4655658 m!5534815))

(declare-fun m!5534817 () Bool)

(assert (=> bm!325344 m!5534817))

(declare-fun m!5534819 () Bool)

(assert (=> b!4655657 m!5534819))

(declare-fun m!5534821 () Bool)

(assert (=> d!1476564 m!5534821))

(assert (=> d!1476564 m!5534315))

(assert (=> b!4655328 d!1476564))

(declare-fun d!1476566 () Bool)

(declare-fun res!1957521 () Bool)

(declare-fun e!2904754 () Bool)

(assert (=> d!1476566 (=> res!1957521 e!2904754)))

(assert (=> d!1476566 (= res!1957521 ((_ is Nil!51896) (toList!5209 lt!1818389)))))

(assert (=> d!1476566 (= (forall!11026 (toList!5209 lt!1818389) lambda!199303) e!2904754)))

(declare-fun b!4655659 () Bool)

(declare-fun e!2904755 () Bool)

(assert (=> b!4655659 (= e!2904754 e!2904755)))

(declare-fun res!1957522 () Bool)

(assert (=> b!4655659 (=> (not res!1957522) (not e!2904755))))

(assert (=> b!4655659 (= res!1957522 (dynLambda!21590 lambda!199303 (h!58040 (toList!5209 lt!1818389))))))

(declare-fun b!4655660 () Bool)

(assert (=> b!4655660 (= e!2904755 (forall!11026 (t!359136 (toList!5209 lt!1818389)) lambda!199303))))

(assert (= (and d!1476566 (not res!1957521)) b!4655659))

(assert (= (and b!4655659 res!1957522) b!4655660))

(declare-fun b_lambda!173963 () Bool)

(assert (=> (not b_lambda!173963) (not b!4655659)))

(declare-fun m!5534823 () Bool)

(assert (=> b!4655659 m!5534823))

(declare-fun m!5534825 () Bool)

(assert (=> b!4655660 m!5534825))

(assert (=> b!4655328 d!1476566))

(declare-fun d!1476568 () Bool)

(declare-fun res!1957523 () Bool)

(declare-fun e!2904756 () Bool)

(assert (=> d!1476568 (=> res!1957523 e!2904756)))

(assert (=> d!1476568 (= res!1957523 ((_ is Nil!51896) (toList!5209 lt!1818237)))))

(assert (=> d!1476568 (= (forall!11026 (toList!5209 lt!1818237) lambda!199302) e!2904756)))

(declare-fun b!4655661 () Bool)

(declare-fun e!2904757 () Bool)

(assert (=> b!4655661 (= e!2904756 e!2904757)))

(declare-fun res!1957524 () Bool)

(assert (=> b!4655661 (=> (not res!1957524) (not e!2904757))))

(assert (=> b!4655661 (= res!1957524 (dynLambda!21590 lambda!199302 (h!58040 (toList!5209 lt!1818237))))))

(declare-fun b!4655662 () Bool)

(assert (=> b!4655662 (= e!2904757 (forall!11026 (t!359136 (toList!5209 lt!1818237)) lambda!199302))))

(assert (= (and d!1476568 (not res!1957523)) b!4655661))

(assert (= (and b!4655661 res!1957524) b!4655662))

(declare-fun b_lambda!173965 () Bool)

(assert (=> (not b_lambda!173965) (not b!4655661)))

(declare-fun m!5534827 () Bool)

(assert (=> b!4655661 m!5534827))

(declare-fun m!5534829 () Bool)

(assert (=> b!4655662 m!5534829))

(assert (=> b!4655328 d!1476568))

(declare-fun d!1476570 () Bool)

(declare-fun lt!1818626 () Bool)

(assert (=> d!1476570 (= lt!1818626 (select (content!8994 (keys!18384 lt!1818236)) key!4968))))

(declare-fun e!2904759 () Bool)

(assert (=> d!1476570 (= lt!1818626 e!2904759)))

(declare-fun res!1957526 () Bool)

(assert (=> d!1476570 (=> (not res!1957526) (not e!2904759))))

(assert (=> d!1476570 (= res!1957526 ((_ is Cons!51899) (keys!18384 lt!1818236)))))

(assert (=> d!1476570 (= (contains!15039 (keys!18384 lt!1818236) key!4968) lt!1818626)))

(declare-fun b!4655663 () Bool)

(declare-fun e!2904758 () Bool)

(assert (=> b!4655663 (= e!2904759 e!2904758)))

(declare-fun res!1957525 () Bool)

(assert (=> b!4655663 (=> res!1957525 e!2904758)))

(assert (=> b!4655663 (= res!1957525 (= (h!58045 (keys!18384 lt!1818236)) key!4968))))

(declare-fun b!4655664 () Bool)

(assert (=> b!4655664 (= e!2904758 (contains!15039 (t!359139 (keys!18384 lt!1818236)) key!4968))))

(assert (= (and d!1476570 res!1957526) b!4655663))

(assert (= (and b!4655663 (not res!1957525)) b!4655664))

(assert (=> d!1476570 m!5534283))

(declare-fun m!5534831 () Bool)

(assert (=> d!1476570 m!5534831))

(declare-fun m!5534833 () Bool)

(assert (=> d!1476570 m!5534833))

(declare-fun m!5534835 () Bool)

(assert (=> b!4655664 m!5534835))

(assert (=> b!4655359 d!1476570))

(declare-fun bs!1064596 () Bool)

(declare-fun b!4655672 () Bool)

(assert (= bs!1064596 (and b!4655672 b!4655599)))

(declare-fun lambda!199373 () Int)

(assert (=> bs!1064596 (= (= (toList!5209 lt!1818236) (t!359136 (toList!5209 lt!1818236))) (= lambda!199373 lambda!199356))))

(declare-fun bs!1064597 () Bool)

(assert (= bs!1064597 (and b!4655672 b!4655601)))

(assert (=> bs!1064597 (= (= (toList!5209 lt!1818236) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199373 lambda!199357))))

(declare-fun bs!1064598 () Bool)

(assert (= bs!1064598 (and b!4655672 b!4655595)))

(assert (=> bs!1064598 (= lambda!199373 lambda!199358)))

(assert (=> b!4655672 true))

(declare-fun bs!1064599 () Bool)

(declare-fun b!4655673 () Bool)

(assert (= bs!1064599 (and b!4655673 b!4655598)))

(declare-fun lambda!199374 () Int)

(assert (=> bs!1064599 (= lambda!199374 lambda!199359)))

(declare-fun d!1476572 () Bool)

(declare-fun e!2904762 () Bool)

(assert (=> d!1476572 e!2904762))

(declare-fun res!1957535 () Bool)

(assert (=> d!1476572 (=> (not res!1957535) (not e!2904762))))

(declare-fun lt!1818629 () List!52023)

(assert (=> d!1476572 (= res!1957535 (noDuplicate!837 lt!1818629))))

(assert (=> d!1476572 (= lt!1818629 (getKeysList!749 (toList!5209 lt!1818236)))))

(assert (=> d!1476572 (= (keys!18384 lt!1818236) lt!1818629)))

(declare-fun b!4655671 () Bool)

(declare-fun res!1957533 () Bool)

(assert (=> b!4655671 (=> (not res!1957533) (not e!2904762))))

(assert (=> b!4655671 (= res!1957533 (= (length!530 lt!1818629) (length!531 (toList!5209 lt!1818236))))))

(declare-fun res!1957534 () Bool)

(assert (=> b!4655672 (=> (not res!1957534) (not e!2904762))))

(assert (=> b!4655672 (= res!1957534 (forall!11027 lt!1818629 lambda!199373))))

(assert (=> b!4655673 (= e!2904762 (= (content!8994 lt!1818629) (content!8994 (map!11470 (toList!5209 lt!1818236) lambda!199374))))))

(assert (= (and d!1476572 res!1957535) b!4655671))

(assert (= (and b!4655671 res!1957533) b!4655672))

(assert (= (and b!4655672 res!1957534) b!4655673))

(declare-fun m!5534837 () Bool)

(assert (=> d!1476572 m!5534837))

(assert (=> d!1476572 m!5534287))

(declare-fun m!5534839 () Bool)

(assert (=> b!4655671 m!5534839))

(assert (=> b!4655671 m!5534683))

(declare-fun m!5534841 () Bool)

(assert (=> b!4655672 m!5534841))

(declare-fun m!5534843 () Bool)

(assert (=> b!4655673 m!5534843))

(declare-fun m!5534845 () Bool)

(assert (=> b!4655673 m!5534845))

(assert (=> b!4655673 m!5534845))

(declare-fun m!5534847 () Bool)

(assert (=> b!4655673 m!5534847))

(assert (=> b!4655359 d!1476572))

(declare-fun d!1476574 () Bool)

(declare-fun res!1957536 () Bool)

(declare-fun e!2904763 () Bool)

(assert (=> d!1476574 (=> res!1957536 e!2904763)))

(assert (=> d!1476574 (= res!1957536 ((_ is Nil!51896) (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))

(assert (=> d!1476574 (= (forall!11026 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)) (ite c!796811 lambda!199301 lambda!199303)) e!2904763)))

(declare-fun b!4655676 () Bool)

(declare-fun e!2904764 () Bool)

(assert (=> b!4655676 (= e!2904763 e!2904764)))

(declare-fun res!1957537 () Bool)

(assert (=> b!4655676 (=> (not res!1957537) (not e!2904764))))

(assert (=> b!4655676 (= res!1957537 (dynLambda!21590 (ite c!796811 lambda!199301 lambda!199303) (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))))))

(declare-fun b!4655677 () Bool)

(assert (=> b!4655677 (= e!2904764 (forall!11026 (t!359136 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))) (ite c!796811 lambda!199301 lambda!199303)))))

(assert (= (and d!1476574 (not res!1957536)) b!4655676))

(assert (= (and b!4655676 res!1957537) b!4655677))

(declare-fun b_lambda!173967 () Bool)

(assert (=> (not b_lambda!173967) (not b!4655676)))

(declare-fun m!5534849 () Bool)

(assert (=> b!4655676 m!5534849))

(declare-fun m!5534851 () Bool)

(assert (=> b!4655677 m!5534851))

(assert (=> bm!325328 d!1476574))

(assert (=> b!4655358 d!1476570))

(assert (=> b!4655358 d!1476572))

(declare-fun d!1476576 () Bool)

(declare-fun res!1957538 () Bool)

(declare-fun e!2904765 () Bool)

(assert (=> d!1476576 (=> res!1957538 e!2904765)))

(assert (=> d!1476576 (= res!1957538 (and ((_ is Cons!51896) (t!359136 oldBucket!40)) (= (_1!29797 (h!58040 (t!359136 oldBucket!40))) (_1!29797 (h!58040 oldBucket!40)))))))

(assert (=> d!1476576 (= (containsKey!2725 (t!359136 oldBucket!40) (_1!29797 (h!58040 oldBucket!40))) e!2904765)))

(declare-fun b!4655678 () Bool)

(declare-fun e!2904766 () Bool)

(assert (=> b!4655678 (= e!2904765 e!2904766)))

(declare-fun res!1957539 () Bool)

(assert (=> b!4655678 (=> (not res!1957539) (not e!2904766))))

(assert (=> b!4655678 (= res!1957539 ((_ is Cons!51896) (t!359136 oldBucket!40)))))

(declare-fun b!4655679 () Bool)

(assert (=> b!4655679 (= e!2904766 (containsKey!2725 (t!359136 (t!359136 oldBucket!40)) (_1!29797 (h!58040 oldBucket!40))))))

(assert (= (and d!1476576 (not res!1957538)) b!4655678))

(assert (= (and b!4655678 res!1957539) b!4655679))

(declare-fun m!5534853 () Bool)

(assert (=> b!4655679 m!5534853))

(assert (=> b!4655369 d!1476576))

(declare-fun d!1476578 () Bool)

(declare-fun res!1957540 () Bool)

(declare-fun e!2904767 () Bool)

(assert (=> d!1476578 (=> res!1957540 e!2904767)))

(assert (=> d!1476578 (= res!1957540 (not ((_ is Cons!51896) (_2!29798 (h!58041 lt!1818235)))))))

(assert (=> d!1476578 (= (noDuplicateKeys!1640 (_2!29798 (h!58041 lt!1818235))) e!2904767)))

(declare-fun b!4655680 () Bool)

(declare-fun e!2904768 () Bool)

(assert (=> b!4655680 (= e!2904767 e!2904768)))

(declare-fun res!1957541 () Bool)

(assert (=> b!4655680 (=> (not res!1957541) (not e!2904768))))

(assert (=> b!4655680 (= res!1957541 (not (containsKey!2725 (t!359136 (_2!29798 (h!58041 lt!1818235))) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))))

(declare-fun b!4655681 () Bool)

(assert (=> b!4655681 (= e!2904768 (noDuplicateKeys!1640 (t!359136 (_2!29798 (h!58041 lt!1818235)))))))

(assert (= (and d!1476578 (not res!1957540)) b!4655680))

(assert (= (and b!4655680 res!1957541) b!4655681))

(declare-fun m!5534855 () Bool)

(assert (=> b!4655680 m!5534855))

(declare-fun m!5534857 () Bool)

(assert (=> b!4655681 m!5534857))

(assert (=> bs!1064460 d!1476578))

(declare-fun d!1476580 () Bool)

(declare-fun res!1957542 () Bool)

(declare-fun e!2904769 () Bool)

(assert (=> d!1476580 (=> res!1957542 e!2904769)))

(assert (=> d!1476580 (= res!1957542 ((_ is Nil!51896) (toList!5209 lt!1818237)))))

(assert (=> d!1476580 (= (forall!11026 (toList!5209 lt!1818237) lambda!199304) e!2904769)))

(declare-fun b!4655682 () Bool)

(declare-fun e!2904770 () Bool)

(assert (=> b!4655682 (= e!2904769 e!2904770)))

(declare-fun res!1957543 () Bool)

(assert (=> b!4655682 (=> (not res!1957543) (not e!2904770))))

(assert (=> b!4655682 (= res!1957543 (dynLambda!21590 lambda!199304 (h!58040 (toList!5209 lt!1818237))))))

(declare-fun b!4655683 () Bool)

(assert (=> b!4655683 (= e!2904770 (forall!11026 (t!359136 (toList!5209 lt!1818237)) lambda!199304))))

(assert (= (and d!1476580 (not res!1957542)) b!4655682))

(assert (= (and b!4655682 res!1957543) b!4655683))

(declare-fun b_lambda!173969 () Bool)

(assert (=> (not b_lambda!173969) (not b!4655682)))

(declare-fun m!5534859 () Bool)

(assert (=> b!4655682 m!5534859))

(declare-fun m!5534861 () Bool)

(assert (=> b!4655683 m!5534861))

(assert (=> b!4655330 d!1476580))

(assert (=> b!4655362 d!1476572))

(declare-fun d!1476582 () Bool)

(assert (=> d!1476582 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818236) key!4968))))

(declare-fun lt!1818632 () Unit!118533)

(declare-fun choose!32005 (List!52020 K!13250) Unit!118533)

(assert (=> d!1476582 (= lt!1818632 (choose!32005 (toList!5209 lt!1818236) key!4968))))

(assert (=> d!1476582 (invariantList!1298 (toList!5209 lt!1818236))))

(assert (=> d!1476582 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818236) key!4968) lt!1818632)))

(declare-fun bs!1064600 () Bool)

(assert (= bs!1064600 d!1476582))

(assert (=> bs!1064600 m!5534293))

(assert (=> bs!1064600 m!5534293))

(assert (=> bs!1064600 m!5534295))

(declare-fun m!5534863 () Bool)

(assert (=> bs!1064600 m!5534863))

(assert (=> bs!1064600 m!5534673))

(assert (=> b!4655361 d!1476582))

(declare-fun d!1476584 () Bool)

(declare-fun isEmpty!29005 (Option!11822) Bool)

(assert (=> d!1476584 (= (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818236) key!4968)) (not (isEmpty!29005 (getValueByKey!1610 (toList!5209 lt!1818236) key!4968))))))

(declare-fun bs!1064601 () Bool)

(assert (= bs!1064601 d!1476584))

(assert (=> bs!1064601 m!5534293))

(declare-fun m!5534865 () Bool)

(assert (=> bs!1064601 m!5534865))

(assert (=> b!4655361 d!1476584))

(declare-fun b!4655692 () Bool)

(declare-fun e!2904775 () Option!11822)

(assert (=> b!4655692 (= e!2904775 (Some!11821 (_2!29797 (h!58040 (toList!5209 lt!1818236)))))))

(declare-fun b!4655694 () Bool)

(declare-fun e!2904776 () Option!11822)

(assert (=> b!4655694 (= e!2904776 (getValueByKey!1610 (t!359136 (toList!5209 lt!1818236)) key!4968))))

(declare-fun b!4655695 () Bool)

(assert (=> b!4655695 (= e!2904776 None!11821)))

(declare-fun b!4655693 () Bool)

(assert (=> b!4655693 (= e!2904775 e!2904776)))

(declare-fun c!796878 () Bool)

(assert (=> b!4655693 (= c!796878 (and ((_ is Cons!51896) (toList!5209 lt!1818236)) (not (= (_1!29797 (h!58040 (toList!5209 lt!1818236))) key!4968))))))

(declare-fun d!1476586 () Bool)

(declare-fun c!796877 () Bool)

(assert (=> d!1476586 (= c!796877 (and ((_ is Cons!51896) (toList!5209 lt!1818236)) (= (_1!29797 (h!58040 (toList!5209 lt!1818236))) key!4968)))))

(assert (=> d!1476586 (= (getValueByKey!1610 (toList!5209 lt!1818236) key!4968) e!2904775)))

(assert (= (and d!1476586 c!796877) b!4655692))

(assert (= (and d!1476586 (not c!796877)) b!4655693))

(assert (= (and b!4655693 c!796878) b!4655694))

(assert (= (and b!4655693 (not c!796878)) b!4655695))

(declare-fun m!5534867 () Bool)

(assert (=> b!4655694 m!5534867))

(assert (=> b!4655361 d!1476586))

(declare-fun d!1476588 () Bool)

(assert (=> d!1476588 (contains!15039 (getKeysList!749 (toList!5209 lt!1818236)) key!4968)))

(declare-fun lt!1818635 () Unit!118533)

(declare-fun choose!32006 (List!52020 K!13250) Unit!118533)

(assert (=> d!1476588 (= lt!1818635 (choose!32006 (toList!5209 lt!1818236) key!4968))))

(assert (=> d!1476588 (invariantList!1298 (toList!5209 lt!1818236))))

(assert (=> d!1476588 (= (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818236) key!4968) lt!1818635)))

(declare-fun bs!1064602 () Bool)

(assert (= bs!1064602 d!1476588))

(assert (=> bs!1064602 m!5534287))

(assert (=> bs!1064602 m!5534287))

(declare-fun m!5534869 () Bool)

(assert (=> bs!1064602 m!5534869))

(declare-fun m!5534871 () Bool)

(assert (=> bs!1064602 m!5534871))

(assert (=> bs!1064602 m!5534673))

(assert (=> b!4655361 d!1476588))

(declare-fun d!1476590 () Bool)

(assert (=> d!1476590 (= (invariantList!1298 (toList!5209 lt!1818397)) (noDuplicatedKeys!351 (toList!5209 lt!1818397)))))

(declare-fun bs!1064603 () Bool)

(assert (= bs!1064603 d!1476590))

(declare-fun m!5534873 () Bool)

(assert (=> bs!1064603 m!5534873))

(assert (=> d!1476380 d!1476590))

(declare-fun d!1476592 () Bool)

(declare-fun res!1957544 () Bool)

(declare-fun e!2904777 () Bool)

(assert (=> d!1476592 (=> res!1957544 e!2904777)))

(assert (=> d!1476592 (= res!1957544 ((_ is Nil!51897) Nil!51897))))

(assert (=> d!1476592 (= (forall!11024 Nil!51897 lambda!199307) e!2904777)))

(declare-fun b!4655696 () Bool)

(declare-fun e!2904778 () Bool)

(assert (=> b!4655696 (= e!2904777 e!2904778)))

(declare-fun res!1957545 () Bool)

(assert (=> b!4655696 (=> (not res!1957545) (not e!2904778))))

(assert (=> b!4655696 (= res!1957545 (dynLambda!21588 lambda!199307 (h!58041 Nil!51897)))))

(declare-fun b!4655697 () Bool)

(assert (=> b!4655697 (= e!2904778 (forall!11024 (t!359137 Nil!51897) lambda!199307))))

(assert (= (and d!1476592 (not res!1957544)) b!4655696))

(assert (= (and b!4655696 res!1957545) b!4655697))

(declare-fun b_lambda!173971 () Bool)

(assert (=> (not b_lambda!173971) (not b!4655696)))

(declare-fun m!5534875 () Bool)

(assert (=> b!4655696 m!5534875))

(declare-fun m!5534877 () Bool)

(assert (=> b!4655697 m!5534877))

(assert (=> d!1476380 d!1476592))

(declare-fun bs!1064604 () Bool)

(declare-fun d!1476594 () Bool)

(assert (= bs!1064604 (and d!1476594 d!1476352)))

(declare-fun lambda!199377 () Int)

(assert (=> bs!1064604 (not (= lambda!199377 lambda!199229))))

(declare-fun bs!1064605 () Bool)

(assert (= bs!1064605 (and d!1476594 b!4655328)))

(assert (=> bs!1064605 (= (= lt!1818237 lt!1818394) (= lambda!199377 lambda!199303))))

(declare-fun bs!1064606 () Bool)

(assert (= bs!1064606 (and d!1476594 b!4655329)))

(assert (=> bs!1064606 (= lambda!199377 lambda!199301)))

(declare-fun bs!1064607 () Bool)

(assert (= bs!1064607 (and d!1476594 d!1476386)))

(assert (=> bs!1064607 (not (= lambda!199377 lambda!199309))))

(declare-fun bs!1064608 () Bool)

(assert (= bs!1064608 (and d!1476594 d!1476560)))

(assert (=> bs!1064608 (= (= lt!1818237 lt!1818394) (= lambda!199377 lambda!199364))))

(assert (=> bs!1064605 (= lambda!199377 lambda!199302)))

(declare-fun bs!1064609 () Bool)

(assert (= bs!1064609 (and d!1476594 b!4655655)))

(assert (=> bs!1064609 (= (= lt!1818237 lt!1818625) (= lambda!199377 lambda!199367))))

(declare-fun bs!1064610 () Bool)

(assert (= bs!1064610 (and d!1476594 d!1476564)))

(assert (=> bs!1064610 (= (= lt!1818237 lt!1818624) (= lambda!199377 lambda!199368))))

(assert (=> bs!1064609 (= (= lt!1818237 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199377 lambda!199366))))

(declare-fun bs!1064611 () Bool)

(assert (= bs!1064611 (and d!1476594 b!4655656)))

(assert (=> bs!1064611 (= (= lt!1818237 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199377 lambda!199365))))

(declare-fun bs!1064612 () Bool)

(assert (= bs!1064612 (and d!1476594 d!1476356)))

(assert (=> bs!1064612 (= (= lt!1818237 lt!1818393) (= lambda!199377 lambda!199304))))

(assert (=> d!1476594 true))

(assert (=> d!1476594 (forall!11026 (toList!5209 lt!1818237) lambda!199377)))

(declare-fun lt!1818638 () Unit!118533)

(declare-fun choose!32007 (ListMap!4549) Unit!118533)

(assert (=> d!1476594 (= lt!1818638 (choose!32007 lt!1818237))))

(assert (=> d!1476594 (= (lemmaContainsAllItsOwnKeys!598 lt!1818237) lt!1818638)))

(declare-fun bs!1064613 () Bool)

(assert (= bs!1064613 d!1476594))

(declare-fun m!5534879 () Bool)

(assert (=> bs!1064613 m!5534879))

(declare-fun m!5534881 () Bool)

(assert (=> bs!1064613 m!5534881))

(assert (=> bm!325329 d!1476594))

(assert (=> b!4655360 d!1476584))

(assert (=> b!4655360 d!1476586))

(declare-fun d!1476596 () Bool)

(declare-fun res!1957546 () Bool)

(declare-fun e!2904779 () Bool)

(assert (=> d!1476596 (=> res!1957546 e!2904779)))

(assert (=> d!1476596 (= res!1957546 ((_ is Nil!51896) (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))

(assert (=> d!1476596 (= (forall!11026 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40) (ite c!796811 lambda!199301 lambda!199303)) e!2904779)))

(declare-fun b!4655698 () Bool)

(declare-fun e!2904780 () Bool)

(assert (=> b!4655698 (= e!2904779 e!2904780)))

(declare-fun res!1957547 () Bool)

(assert (=> b!4655698 (=> (not res!1957547) (not e!2904780))))

(assert (=> b!4655698 (= res!1957547 (dynLambda!21590 (ite c!796811 lambda!199301 lambda!199303) (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))))))

(declare-fun b!4655699 () Bool)

(assert (=> b!4655699 (= e!2904780 (forall!11026 (t!359136 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)) (ite c!796811 lambda!199301 lambda!199303)))))

(assert (= (and d!1476596 (not res!1957546)) b!4655698))

(assert (= (and b!4655698 res!1957547) b!4655699))

(declare-fun b_lambda!173973 () Bool)

(assert (=> (not b_lambda!173973) (not b!4655698)))

(declare-fun m!5534883 () Bool)

(assert (=> b!4655698 m!5534883))

(declare-fun m!5534885 () Bool)

(assert (=> b!4655699 m!5534885))

(assert (=> bm!325327 d!1476596))

(assert (=> b!4655327 d!1476558))

(declare-fun d!1476598 () Bool)

(declare-fun res!1957548 () Bool)

(declare-fun e!2904781 () Bool)

(assert (=> d!1476598 (=> res!1957548 e!2904781)))

(assert (=> d!1476598 (= res!1957548 ((_ is Nil!51896) newBucket!224))))

(assert (=> d!1476598 (= (forall!11026 newBucket!224 lambda!199229) e!2904781)))

(declare-fun b!4655700 () Bool)

(declare-fun e!2904782 () Bool)

(assert (=> b!4655700 (= e!2904781 e!2904782)))

(declare-fun res!1957549 () Bool)

(assert (=> b!4655700 (=> (not res!1957549) (not e!2904782))))

(assert (=> b!4655700 (= res!1957549 (dynLambda!21590 lambda!199229 (h!58040 newBucket!224)))))

(declare-fun b!4655701 () Bool)

(assert (=> b!4655701 (= e!2904782 (forall!11026 (t!359136 newBucket!224) lambda!199229))))

(assert (= (and d!1476598 (not res!1957548)) b!4655700))

(assert (= (and b!4655700 res!1957549) b!4655701))

(declare-fun b_lambda!173975 () Bool)

(assert (=> (not b_lambda!173975) (not b!4655700)))

(declare-fun m!5534887 () Bool)

(assert (=> b!4655700 m!5534887))

(declare-fun m!5534889 () Bool)

(assert (=> b!4655701 m!5534889))

(assert (=> d!1476352 d!1476598))

(assert (=> d!1476382 d!1476542))

(declare-fun d!1476600 () Bool)

(declare-fun lt!1818639 () List!52020)

(assert (=> d!1476600 (not (containsKey!2725 lt!1818639 key!4968))))

(declare-fun e!2904783 () List!52020)

(assert (=> d!1476600 (= lt!1818639 e!2904783)))

(declare-fun c!796879 () Bool)

(assert (=> d!1476600 (= c!796879 (and ((_ is Cons!51896) (t!359136 oldBucket!40)) (= (_1!29797 (h!58040 (t!359136 oldBucket!40))) key!4968)))))

(assert (=> d!1476600 (noDuplicateKeys!1640 (t!359136 oldBucket!40))))

(assert (=> d!1476600 (= (removePairForKey!1263 (t!359136 oldBucket!40) key!4968) lt!1818639)))

(declare-fun b!4655704 () Bool)

(declare-fun e!2904784 () List!52020)

(assert (=> b!4655704 (= e!2904784 (Cons!51896 (h!58040 (t!359136 oldBucket!40)) (removePairForKey!1263 (t!359136 (t!359136 oldBucket!40)) key!4968)))))

(declare-fun b!4655702 () Bool)

(assert (=> b!4655702 (= e!2904783 (t!359136 (t!359136 oldBucket!40)))))

(declare-fun b!4655705 () Bool)

(assert (=> b!4655705 (= e!2904784 Nil!51896)))

(declare-fun b!4655703 () Bool)

(assert (=> b!4655703 (= e!2904783 e!2904784)))

(declare-fun c!796880 () Bool)

(assert (=> b!4655703 (= c!796880 ((_ is Cons!51896) (t!359136 oldBucket!40)))))

(assert (= (and d!1476600 c!796879) b!4655702))

(assert (= (and d!1476600 (not c!796879)) b!4655703))

(assert (= (and b!4655703 c!796880) b!4655704))

(assert (= (and b!4655703 (not c!796880)) b!4655705))

(declare-fun m!5534891 () Bool)

(assert (=> d!1476600 m!5534891))

(assert (=> d!1476600 m!5534315))

(declare-fun m!5534893 () Bool)

(assert (=> b!4655704 m!5534893))

(assert (=> b!4655383 d!1476600))

(declare-fun d!1476602 () Bool)

(declare-fun res!1957550 () Bool)

(declare-fun e!2904785 () Bool)

(assert (=> d!1476602 (=> res!1957550 e!2904785)))

(assert (=> d!1476602 (= res!1957550 (not ((_ is Cons!51896) (t!359136 newBucket!224))))))

(assert (=> d!1476602 (= (noDuplicateKeys!1640 (t!359136 newBucket!224)) e!2904785)))

(declare-fun b!4655706 () Bool)

(declare-fun e!2904786 () Bool)

(assert (=> b!4655706 (= e!2904785 e!2904786)))

(declare-fun res!1957551 () Bool)

(assert (=> b!4655706 (=> (not res!1957551) (not e!2904786))))

(assert (=> b!4655706 (= res!1957551 (not (containsKey!2725 (t!359136 (t!359136 newBucket!224)) (_1!29797 (h!58040 (t!359136 newBucket!224))))))))

(declare-fun b!4655707 () Bool)

(assert (=> b!4655707 (= e!2904786 (noDuplicateKeys!1640 (t!359136 (t!359136 newBucket!224))))))

(assert (= (and d!1476602 (not res!1957550)) b!4655706))

(assert (= (and b!4655706 res!1957551) b!4655707))

(declare-fun m!5534895 () Bool)

(assert (=> b!4655706 m!5534895))

(declare-fun m!5534897 () Bool)

(assert (=> b!4655707 m!5534897))

(assert (=> b!4655222 d!1476602))

(declare-fun d!1476604 () Bool)

(declare-fun res!1957552 () Bool)

(declare-fun e!2904787 () Bool)

(assert (=> d!1476604 (=> res!1957552 e!2904787)))

(assert (=> d!1476604 (= res!1957552 (and ((_ is Cons!51896) (t!359136 newBucket!224)) (= (_1!29797 (h!58040 (t!359136 newBucket!224))) (_1!29797 (h!58040 newBucket!224)))))))

(assert (=> d!1476604 (= (containsKey!2725 (t!359136 newBucket!224) (_1!29797 (h!58040 newBucket!224))) e!2904787)))

(declare-fun b!4655708 () Bool)

(declare-fun e!2904788 () Bool)

(assert (=> b!4655708 (= e!2904787 e!2904788)))

(declare-fun res!1957553 () Bool)

(assert (=> b!4655708 (=> (not res!1957553) (not e!2904788))))

(assert (=> b!4655708 (= res!1957553 ((_ is Cons!51896) (t!359136 newBucket!224)))))

(declare-fun b!4655709 () Bool)

(assert (=> b!4655709 (= e!2904788 (containsKey!2725 (t!359136 (t!359136 newBucket!224)) (_1!29797 (h!58040 newBucket!224))))))

(assert (= (and d!1476604 (not res!1957552)) b!4655708))

(assert (= (and b!4655708 res!1957553) b!4655709))

(declare-fun m!5534899 () Bool)

(assert (=> b!4655709 m!5534899))

(assert (=> b!4655221 d!1476604))

(declare-fun d!1476606 () Bool)

(declare-fun res!1957554 () Bool)

(declare-fun e!2904789 () Bool)

(assert (=> d!1476606 (=> res!1957554 e!2904789)))

(assert (=> d!1476606 (= res!1957554 ((_ is Nil!51896) oldBucket!40))))

(assert (=> d!1476606 (= (forall!11026 oldBucket!40 lambda!199304) e!2904789)))

(declare-fun b!4655710 () Bool)

(declare-fun e!2904790 () Bool)

(assert (=> b!4655710 (= e!2904789 e!2904790)))

(declare-fun res!1957555 () Bool)

(assert (=> b!4655710 (=> (not res!1957555) (not e!2904790))))

(assert (=> b!4655710 (= res!1957555 (dynLambda!21590 lambda!199304 (h!58040 oldBucket!40)))))

(declare-fun b!4655711 () Bool)

(assert (=> b!4655711 (= e!2904790 (forall!11026 (t!359136 oldBucket!40) lambda!199304))))

(assert (= (and d!1476606 (not res!1957554)) b!4655710))

(assert (= (and b!4655710 res!1957555) b!4655711))

(declare-fun b_lambda!173977 () Bool)

(assert (=> (not b_lambda!173977) (not b!4655710)))

(declare-fun m!5534901 () Bool)

(assert (=> b!4655710 m!5534901))

(declare-fun m!5534903 () Bool)

(assert (=> b!4655711 m!5534903))

(assert (=> d!1476356 d!1476606))

(assert (=> d!1476356 d!1476388))

(declare-fun d!1476608 () Bool)

(declare-fun choose!32008 (Hashable!6037 K!13250) (_ BitVec 64))

(assert (=> d!1476608 (= (hash!3779 hashF!1389 key!4968) (choose!32008 hashF!1389 key!4968))))

(declare-fun bs!1064614 () Bool)

(assert (= bs!1064614 d!1476608))

(declare-fun m!5534905 () Bool)

(assert (=> bs!1064614 m!5534905))

(assert (=> d!1476396 d!1476608))

(declare-fun bs!1064615 () Bool)

(declare-fun b!4655714 () Bool)

(assert (= bs!1064615 (and b!4655714 d!1476352)))

(declare-fun lambda!199378 () Int)

(assert (=> bs!1064615 (not (= lambda!199378 lambda!199229))))

(declare-fun bs!1064616 () Bool)

(assert (= bs!1064616 (and b!4655714 b!4655328)))

(assert (=> bs!1064616 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818394) (= lambda!199378 lambda!199303))))

(declare-fun bs!1064617 () Bool)

(assert (= bs!1064617 (and b!4655714 d!1476386)))

(assert (=> bs!1064617 (not (= lambda!199378 lambda!199309))))

(declare-fun bs!1064618 () Bool)

(assert (= bs!1064618 (and b!4655714 d!1476560)))

(assert (=> bs!1064618 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818394) (= lambda!199378 lambda!199364))))

(assert (=> bs!1064616 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199378 lambda!199302))))

(declare-fun bs!1064619 () Bool)

(assert (= bs!1064619 (and b!4655714 b!4655655)))

(assert (=> bs!1064619 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818625) (= lambda!199378 lambda!199367))))

(declare-fun bs!1064620 () Bool)

(assert (= bs!1064620 (and b!4655714 d!1476564)))

(assert (=> bs!1064620 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818624) (= lambda!199378 lambda!199368))))

(assert (=> bs!1064619 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199378 lambda!199366))))

(declare-fun bs!1064621 () Bool)

(assert (= bs!1064621 (and b!4655714 d!1476594)))

(assert (=> bs!1064621 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199378 lambda!199377))))

(declare-fun bs!1064622 () Bool)

(assert (= bs!1064622 (and b!4655714 b!4655329)))

(assert (=> bs!1064622 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199378 lambda!199301))))

(declare-fun bs!1064623 () Bool)

(assert (= bs!1064623 (and b!4655714 b!4655656)))

(assert (=> bs!1064623 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199378 lambda!199365))))

(declare-fun bs!1064624 () Bool)

(assert (= bs!1064624 (and b!4655714 d!1476356)))

(assert (=> bs!1064624 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818393) (= lambda!199378 lambda!199304))))

(assert (=> b!4655714 true))

(declare-fun bs!1064625 () Bool)

(declare-fun b!4655713 () Bool)

(assert (= bs!1064625 (and b!4655713 d!1476352)))

(declare-fun lambda!199379 () Int)

(assert (=> bs!1064625 (not (= lambda!199379 lambda!199229))))

(declare-fun bs!1064626 () Bool)

(assert (= bs!1064626 (and b!4655713 b!4655328)))

(assert (=> bs!1064626 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818394) (= lambda!199379 lambda!199303))))

(declare-fun bs!1064627 () Bool)

(assert (= bs!1064627 (and b!4655713 d!1476386)))

(assert (=> bs!1064627 (not (= lambda!199379 lambda!199309))))

(declare-fun bs!1064628 () Bool)

(assert (= bs!1064628 (and b!4655713 d!1476560)))

(assert (=> bs!1064628 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818394) (= lambda!199379 lambda!199364))))

(assert (=> bs!1064626 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199379 lambda!199302))))

(declare-fun bs!1064629 () Bool)

(assert (= bs!1064629 (and b!4655713 b!4655655)))

(assert (=> bs!1064629 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818625) (= lambda!199379 lambda!199367))))

(declare-fun bs!1064630 () Bool)

(assert (= bs!1064630 (and b!4655713 d!1476564)))

(assert (=> bs!1064630 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818624) (= lambda!199379 lambda!199368))))

(assert (=> bs!1064629 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199379 lambda!199366))))

(declare-fun bs!1064631 () Bool)

(assert (= bs!1064631 (and b!4655713 b!4655714)))

(assert (=> bs!1064631 (= lambda!199379 lambda!199378)))

(declare-fun bs!1064632 () Bool)

(assert (= bs!1064632 (and b!4655713 d!1476594)))

(assert (=> bs!1064632 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199379 lambda!199377))))

(declare-fun bs!1064633 () Bool)

(assert (= bs!1064633 (and b!4655713 b!4655329)))

(assert (=> bs!1064633 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199379 lambda!199301))))

(declare-fun bs!1064634 () Bool)

(assert (= bs!1064634 (and b!4655713 b!4655656)))

(assert (=> bs!1064634 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199379 lambda!199365))))

(declare-fun bs!1064635 () Bool)

(assert (= bs!1064635 (and b!4655713 d!1476356)))

(assert (=> bs!1064635 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818393) (= lambda!199379 lambda!199304))))

(assert (=> b!4655713 true))

(declare-fun lambda!199380 () Int)

(assert (=> bs!1064625 (not (= lambda!199380 lambda!199229))))

(declare-fun lt!1818660 () ListMap!4549)

(assert (=> bs!1064626 (= (= lt!1818660 lt!1818394) (= lambda!199380 lambda!199303))))

(assert (=> bs!1064627 (not (= lambda!199380 lambda!199309))))

(assert (=> bs!1064628 (= (= lt!1818660 lt!1818394) (= lambda!199380 lambda!199364))))

(assert (=> bs!1064626 (= (= lt!1818660 lt!1818237) (= lambda!199380 lambda!199302))))

(assert (=> bs!1064630 (= (= lt!1818660 lt!1818624) (= lambda!199380 lambda!199368))))

(assert (=> bs!1064629 (= (= lt!1818660 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199380 lambda!199366))))

(assert (=> bs!1064631 (= (= lt!1818660 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199380 lambda!199378))))

(assert (=> bs!1064632 (= (= lt!1818660 lt!1818237) (= lambda!199380 lambda!199377))))

(assert (=> bs!1064633 (= (= lt!1818660 lt!1818237) (= lambda!199380 lambda!199301))))

(assert (=> bs!1064629 (= (= lt!1818660 lt!1818625) (= lambda!199380 lambda!199367))))

(assert (=> b!4655713 (= (= lt!1818660 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199380 lambda!199379))))

(assert (=> bs!1064634 (= (= lt!1818660 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199380 lambda!199365))))

(assert (=> bs!1064635 (= (= lt!1818660 lt!1818393) (= lambda!199380 lambda!199304))))

(assert (=> b!4655713 true))

(declare-fun bs!1064636 () Bool)

(declare-fun d!1476610 () Bool)

(assert (= bs!1064636 (and d!1476610 d!1476352)))

(declare-fun lambda!199381 () Int)

(assert (=> bs!1064636 (not (= lambda!199381 lambda!199229))))

(declare-fun bs!1064637 () Bool)

(assert (= bs!1064637 (and d!1476610 b!4655328)))

(declare-fun lt!1818659 () ListMap!4549)

(assert (=> bs!1064637 (= (= lt!1818659 lt!1818394) (= lambda!199381 lambda!199303))))

(declare-fun bs!1064638 () Bool)

(assert (= bs!1064638 (and d!1476610 d!1476386)))

(assert (=> bs!1064638 (not (= lambda!199381 lambda!199309))))

(declare-fun bs!1064639 () Bool)

(assert (= bs!1064639 (and d!1476610 d!1476560)))

(assert (=> bs!1064639 (= (= lt!1818659 lt!1818394) (= lambda!199381 lambda!199364))))

(assert (=> bs!1064637 (= (= lt!1818659 lt!1818237) (= lambda!199381 lambda!199302))))

(declare-fun bs!1064640 () Bool)

(assert (= bs!1064640 (and d!1476610 d!1476564)))

(assert (=> bs!1064640 (= (= lt!1818659 lt!1818624) (= lambda!199381 lambda!199368))))

(declare-fun bs!1064641 () Bool)

(assert (= bs!1064641 (and d!1476610 b!4655655)))

(assert (=> bs!1064641 (= (= lt!1818659 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199381 lambda!199366))))

(declare-fun bs!1064642 () Bool)

(assert (= bs!1064642 (and d!1476610 d!1476594)))

(assert (=> bs!1064642 (= (= lt!1818659 lt!1818237) (= lambda!199381 lambda!199377))))

(declare-fun bs!1064643 () Bool)

(assert (= bs!1064643 (and d!1476610 b!4655329)))

(assert (=> bs!1064643 (= (= lt!1818659 lt!1818237) (= lambda!199381 lambda!199301))))

(assert (=> bs!1064641 (= (= lt!1818659 lt!1818625) (= lambda!199381 lambda!199367))))

(declare-fun bs!1064644 () Bool)

(assert (= bs!1064644 (and d!1476610 b!4655713)))

(assert (=> bs!1064644 (= (= lt!1818659 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199381 lambda!199379))))

(declare-fun bs!1064645 () Bool)

(assert (= bs!1064645 (and d!1476610 b!4655656)))

(assert (=> bs!1064645 (= (= lt!1818659 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199381 lambda!199365))))

(declare-fun bs!1064646 () Bool)

(assert (= bs!1064646 (and d!1476610 d!1476356)))

(assert (=> bs!1064646 (= (= lt!1818659 lt!1818393) (= lambda!199381 lambda!199304))))

(declare-fun bs!1064647 () Bool)

(assert (= bs!1064647 (and d!1476610 b!4655714)))

(assert (=> bs!1064647 (= (= lt!1818659 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199381 lambda!199378))))

(assert (=> bs!1064644 (= (= lt!1818659 lt!1818660) (= lambda!199381 lambda!199380))))

(assert (=> d!1476610 true))

(declare-fun e!2904792 () Bool)

(assert (=> d!1476610 e!2904792))

(declare-fun res!1957556 () Bool)

(assert (=> d!1476610 (=> (not res!1957556) (not e!2904792))))

(assert (=> d!1476610 (= res!1957556 (forall!11026 (_2!29798 (h!58041 lt!1818235)) lambda!199381))))

(declare-fun e!2904791 () ListMap!4549)

(assert (=> d!1476610 (= lt!1818659 e!2904791)))

(declare-fun c!796881 () Bool)

(assert (=> d!1476610 (= c!796881 ((_ is Nil!51896) (_2!29798 (h!58041 lt!1818235))))))

(assert (=> d!1476610 (noDuplicateKeys!1640 (_2!29798 (h!58041 lt!1818235)))))

(assert (=> d!1476610 (= (addToMapMapFromBucket!1097 (_2!29798 (h!58041 lt!1818235)) (extractMap!1696 (t!359137 lt!1818235))) lt!1818659)))

(declare-fun b!4655712 () Bool)

(declare-fun e!2904793 () Bool)

(assert (=> b!4655712 (= e!2904793 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199380))))

(declare-fun call!325353 () Bool)

(declare-fun bm!325346 () Bool)

(assert (=> bm!325346 (= call!325353 (forall!11026 (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (_2!29798 (h!58041 lt!1818235))) (ite c!796881 lambda!199378 lambda!199380)))))

(declare-fun call!325351 () Bool)

(declare-fun bm!325347 () Bool)

(declare-fun lt!1818655 () ListMap!4549)

(assert (=> bm!325347 (= call!325351 (forall!11026 (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (toList!5209 lt!1818655)) (ite c!796881 lambda!199378 lambda!199380)))))

(assert (=> b!4655713 (= e!2904791 lt!1818660)))

(assert (=> b!4655713 (= lt!1818655 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(assert (=> b!4655713 (= lt!1818660 (addToMapMapFromBucket!1097 (t!359136 (_2!29798 (h!58041 lt!1818235))) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun lt!1818640 () Unit!118533)

(declare-fun call!325352 () Unit!118533)

(assert (=> b!4655713 (= lt!1818640 call!325352)))

(assert (=> b!4655713 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199379)))

(declare-fun lt!1818647 () Unit!118533)

(assert (=> b!4655713 (= lt!1818647 lt!1818640)))

(assert (=> b!4655713 (forall!11026 (toList!5209 lt!1818655) lambda!199380)))

(declare-fun lt!1818651 () Unit!118533)

(declare-fun Unit!118597 () Unit!118533)

(assert (=> b!4655713 (= lt!1818651 Unit!118597)))

(assert (=> b!4655713 (forall!11026 (t!359136 (_2!29798 (h!58041 lt!1818235))) lambda!199380)))

(declare-fun lt!1818650 () Unit!118533)

(declare-fun Unit!118598 () Unit!118533)

(assert (=> b!4655713 (= lt!1818650 Unit!118598)))

(declare-fun lt!1818653 () Unit!118533)

(declare-fun Unit!118599 () Unit!118533)

(assert (=> b!4655713 (= lt!1818653 Unit!118599)))

(declare-fun lt!1818658 () Unit!118533)

(assert (=> b!4655713 (= lt!1818658 (forallContained!3226 (toList!5209 lt!1818655) lambda!199380 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(assert (=> b!4655713 (contains!15037 lt!1818655 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(declare-fun lt!1818643 () Unit!118533)

(declare-fun Unit!118600 () Unit!118533)

(assert (=> b!4655713 (= lt!1818643 Unit!118600)))

(assert (=> b!4655713 (contains!15037 lt!1818660 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(declare-fun lt!1818654 () Unit!118533)

(declare-fun Unit!118601 () Unit!118533)

(assert (=> b!4655713 (= lt!1818654 Unit!118601)))

(assert (=> b!4655713 (forall!11026 (_2!29798 (h!58041 lt!1818235)) lambda!199380)))

(declare-fun lt!1818642 () Unit!118533)

(declare-fun Unit!118602 () Unit!118533)

(assert (=> b!4655713 (= lt!1818642 Unit!118602)))

(assert (=> b!4655713 call!325351))

(declare-fun lt!1818648 () Unit!118533)

(declare-fun Unit!118603 () Unit!118533)

(assert (=> b!4655713 (= lt!1818648 Unit!118603)))

(declare-fun lt!1818646 () Unit!118533)

(declare-fun Unit!118604 () Unit!118533)

(assert (=> b!4655713 (= lt!1818646 Unit!118604)))

(declare-fun lt!1818656 () Unit!118533)

(assert (=> b!4655713 (= lt!1818656 (addForallContainsKeyThenBeforeAdding!597 (extractMap!1696 (t!359137 lt!1818235)) lt!1818660 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_2!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> b!4655713 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199380)))

(declare-fun lt!1818644 () Unit!118533)

(assert (=> b!4655713 (= lt!1818644 lt!1818656)))

(assert (=> b!4655713 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199380)))

(declare-fun lt!1818645 () Unit!118533)

(declare-fun Unit!118605 () Unit!118533)

(assert (=> b!4655713 (= lt!1818645 Unit!118605)))

(declare-fun res!1957557 () Bool)

(assert (=> b!4655713 (= res!1957557 call!325353)))

(assert (=> b!4655713 (=> (not res!1957557) (not e!2904793))))

(assert (=> b!4655713 e!2904793))

(declare-fun lt!1818641 () Unit!118533)

(declare-fun Unit!118606 () Unit!118533)

(assert (=> b!4655713 (= lt!1818641 Unit!118606)))

(declare-fun bm!325348 () Bool)

(assert (=> bm!325348 (= call!325352 (lemmaContainsAllItsOwnKeys!598 (extractMap!1696 (t!359137 lt!1818235))))))

(assert (=> b!4655714 (= e!2904791 (extractMap!1696 (t!359137 lt!1818235)))))

(declare-fun lt!1818657 () Unit!118533)

(assert (=> b!4655714 (= lt!1818657 call!325352)))

(assert (=> b!4655714 call!325353))

(declare-fun lt!1818649 () Unit!118533)

(assert (=> b!4655714 (= lt!1818649 lt!1818657)))

(assert (=> b!4655714 call!325351))

(declare-fun lt!1818652 () Unit!118533)

(declare-fun Unit!118607 () Unit!118533)

(assert (=> b!4655714 (= lt!1818652 Unit!118607)))

(declare-fun b!4655715 () Bool)

(declare-fun res!1957558 () Bool)

(assert (=> b!4655715 (=> (not res!1957558) (not e!2904792))))

(assert (=> b!4655715 (= res!1957558 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199381))))

(declare-fun b!4655716 () Bool)

(assert (=> b!4655716 (= e!2904792 (invariantList!1298 (toList!5209 lt!1818659)))))

(assert (= (and d!1476610 c!796881) b!4655714))

(assert (= (and d!1476610 (not c!796881)) b!4655713))

(assert (= (and b!4655713 res!1957557) b!4655712))

(assert (= (or b!4655714 b!4655713) bm!325348))

(assert (= (or b!4655714 b!4655713) bm!325346))

(assert (= (or b!4655714 b!4655713) bm!325347))

(assert (= (and d!1476610 res!1957556) b!4655715))

(assert (= (and b!4655715 res!1957558) b!4655716))

(declare-fun m!5534907 () Bool)

(assert (=> bm!325346 m!5534907))

(assert (=> b!4655713 m!5534307))

(declare-fun m!5534909 () Bool)

(assert (=> b!4655713 m!5534909))

(assert (=> b!4655713 m!5534307))

(declare-fun m!5534911 () Bool)

(assert (=> b!4655713 m!5534911))

(declare-fun m!5534913 () Bool)

(assert (=> b!4655713 m!5534913))

(assert (=> b!4655713 m!5534909))

(declare-fun m!5534915 () Bool)

(assert (=> b!4655713 m!5534915))

(declare-fun m!5534917 () Bool)

(assert (=> b!4655713 m!5534917))

(declare-fun m!5534919 () Bool)

(assert (=> b!4655713 m!5534919))

(declare-fun m!5534921 () Bool)

(assert (=> b!4655713 m!5534921))

(declare-fun m!5534923 () Bool)

(assert (=> b!4655713 m!5534923))

(declare-fun m!5534925 () Bool)

(assert (=> b!4655713 m!5534925))

(declare-fun m!5534927 () Bool)

(assert (=> b!4655713 m!5534927))

(assert (=> b!4655713 m!5534913))

(declare-fun m!5534929 () Bool)

(assert (=> b!4655713 m!5534929))

(assert (=> b!4655712 m!5534913))

(assert (=> bm!325348 m!5534307))

(declare-fun m!5534931 () Bool)

(assert (=> bm!325348 m!5534931))

(declare-fun m!5534933 () Bool)

(assert (=> b!4655716 m!5534933))

(declare-fun m!5534935 () Bool)

(assert (=> bm!325347 m!5534935))

(declare-fun m!5534937 () Bool)

(assert (=> b!4655715 m!5534937))

(declare-fun m!5534939 () Bool)

(assert (=> d!1476610 m!5534939))

(assert (=> d!1476610 m!5534329))

(assert (=> b!4655367 d!1476610))

(declare-fun bs!1064648 () Bool)

(declare-fun d!1476612 () Bool)

(assert (= bs!1064648 (and d!1476612 b!4655209)))

(declare-fun lambda!199382 () Int)

(assert (=> bs!1064648 (= lambda!199382 lambda!199226)))

(declare-fun bs!1064649 () Bool)

(assert (= bs!1064649 (and d!1476612 d!1476380)))

(assert (=> bs!1064649 (= lambda!199382 lambda!199307)))

(declare-fun bs!1064650 () Bool)

(assert (= bs!1064650 (and d!1476612 d!1476384)))

(assert (=> bs!1064650 (= lambda!199382 lambda!199308)))

(declare-fun bs!1064651 () Bool)

(assert (= bs!1064651 (and d!1476612 d!1476390)))

(assert (=> bs!1064651 (not (= lambda!199382 lambda!199312))))

(declare-fun lt!1818661 () ListMap!4549)

(assert (=> d!1476612 (invariantList!1298 (toList!5209 lt!1818661))))

(declare-fun e!2904794 () ListMap!4549)

(assert (=> d!1476612 (= lt!1818661 e!2904794)))

(declare-fun c!796882 () Bool)

(assert (=> d!1476612 (= c!796882 ((_ is Cons!51897) (t!359137 lt!1818235)))))

(assert (=> d!1476612 (forall!11024 (t!359137 lt!1818235) lambda!199382)))

(assert (=> d!1476612 (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818661)))

(declare-fun b!4655717 () Bool)

(assert (=> b!4655717 (= e!2904794 (addToMapMapFromBucket!1097 (_2!29798 (h!58041 (t!359137 lt!1818235))) (extractMap!1696 (t!359137 (t!359137 lt!1818235)))))))

(declare-fun b!4655718 () Bool)

(assert (=> b!4655718 (= e!2904794 (ListMap!4550 Nil!51896))))

(assert (= (and d!1476612 c!796882) b!4655717))

(assert (= (and d!1476612 (not c!796882)) b!4655718))

(declare-fun m!5534941 () Bool)

(assert (=> d!1476612 m!5534941))

(declare-fun m!5534943 () Bool)

(assert (=> d!1476612 m!5534943))

(declare-fun m!5534945 () Bool)

(assert (=> b!4655717 m!5534945))

(assert (=> b!4655717 m!5534945))

(declare-fun m!5534947 () Bool)

(assert (=> b!4655717 m!5534947))

(assert (=> b!4655367 d!1476612))

(declare-fun e!2904795 () Bool)

(declare-fun tp!1343322 () Bool)

(declare-fun b!4655719 () Bool)

(assert (=> b!4655719 (= e!2904795 (and tp_is_empty!29853 tp_is_empty!29855 tp!1343322))))

(assert (=> b!4655396 (= tp!1343319 e!2904795)))

(assert (= (and b!4655396 ((_ is Cons!51896) (t!359136 (t!359136 newBucket!224)))) b!4655719))

(declare-fun e!2904796 () Bool)

(declare-fun b!4655720 () Bool)

(declare-fun tp!1343323 () Bool)

(assert (=> b!4655720 (= e!2904796 (and tp_is_empty!29853 tp_is_empty!29855 tp!1343323))))

(assert (=> b!4655395 (= tp!1343318 e!2904796)))

(assert (= (and b!4655395 ((_ is Cons!51896) (t!359136 (t!359136 oldBucket!40)))) b!4655720))

(declare-fun b_lambda!173979 () Bool)

(assert (= b_lambda!173921 (or d!1476390 b_lambda!173979)))

(declare-fun bs!1064652 () Bool)

(declare-fun d!1476614 () Bool)

(assert (= bs!1064652 (and d!1476614 d!1476390)))

(assert (=> bs!1064652 (= (dynLambda!21588 lambda!199312 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235)))) (allKeysSameHash!1494 (_2!29798 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235)))) (_1!29798 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235)))) hashF!1389))))

(declare-fun m!5534949 () Bool)

(assert (=> bs!1064652 m!5534949))

(assert (=> b!4655540 d!1476614))

(declare-fun b_lambda!173981 () Bool)

(assert (= b_lambda!173969 (or d!1476356 b_lambda!173981)))

(declare-fun bs!1064653 () Bool)

(declare-fun d!1476616 () Bool)

(assert (= bs!1064653 (and d!1476616 d!1476356)))

(assert (=> bs!1064653 (= (dynLambda!21590 lambda!199304 (h!58040 (toList!5209 lt!1818237))) (contains!15037 lt!1818393 (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun m!5534951 () Bool)

(assert (=> bs!1064653 m!5534951))

(assert (=> b!4655682 d!1476616))

(declare-fun b_lambda!173983 () Bool)

(assert (= b_lambda!173953 (or d!1476384 b_lambda!173983)))

(declare-fun bs!1064654 () Bool)

(declare-fun d!1476618 () Bool)

(assert (= bs!1064654 (and d!1476618 d!1476384)))

(assert (=> bs!1064654 (= (dynLambda!21588 lambda!199308 (h!58041 lt!1818235)) (noDuplicateKeys!1640 (_2!29798 (h!58041 lt!1818235))))))

(assert (=> bs!1064654 m!5534329))

(assert (=> b!4655610 d!1476618))

(declare-fun b_lambda!173985 () Bool)

(assert (= b_lambda!173961 (or b!4655328 b_lambda!173985)))

(declare-fun bs!1064655 () Bool)

(declare-fun d!1476620 () Bool)

(assert (= bs!1064655 (and d!1476620 b!4655328)))

(assert (=> bs!1064655 (= (dynLambda!21590 lambda!199303 (h!58040 (t!359136 oldBucket!40))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun m!5534953 () Bool)

(assert (=> bs!1064655 m!5534953))

(assert (=> b!4655652 d!1476620))

(declare-fun b_lambda!173987 () Bool)

(assert (= b_lambda!173965 (or b!4655328 b_lambda!173987)))

(declare-fun bs!1064656 () Bool)

(declare-fun d!1476622 () Bool)

(assert (= bs!1064656 (and d!1476622 b!4655328)))

(assert (=> bs!1064656 (= (dynLambda!21590 lambda!199302 (h!58040 (toList!5209 lt!1818237))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun m!5534955 () Bool)

(assert (=> bs!1064656 m!5534955))

(assert (=> b!4655661 d!1476622))

(declare-fun b_lambda!173989 () Bool)

(assert (= b_lambda!173919 (or d!1476386 b_lambda!173989)))

(declare-fun bs!1064657 () Bool)

(declare-fun d!1476624 () Bool)

(assert (= bs!1064657 (and d!1476624 d!1476386)))

(assert (=> bs!1064657 (= (dynLambda!21590 lambda!199309 (h!58040 oldBucket!40)) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 oldBucket!40))) hash!414))))

(declare-fun m!5534957 () Bool)

(assert (=> bs!1064657 m!5534957))

(assert (=> b!4655532 d!1476624))

(declare-fun b_lambda!173991 () Bool)

(assert (= b_lambda!173975 (or d!1476352 b_lambda!173991)))

(declare-fun bs!1064658 () Bool)

(declare-fun d!1476626 () Bool)

(assert (= bs!1064658 (and d!1476626 d!1476352)))

(assert (=> bs!1064658 (= (dynLambda!21590 lambda!199229 (h!58040 newBucket!224)) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 newBucket!224))) hash!414))))

(declare-fun m!5534959 () Bool)

(assert (=> bs!1064658 m!5534959))

(assert (=> b!4655700 d!1476626))

(declare-fun b_lambda!173993 () Bool)

(assert (= b_lambda!173971 (or d!1476380 b_lambda!173993)))

(declare-fun bs!1064659 () Bool)

(declare-fun d!1476628 () Bool)

(assert (= bs!1064659 (and d!1476628 d!1476380)))

(assert (=> bs!1064659 (= (dynLambda!21588 lambda!199307 (h!58041 Nil!51897)) (noDuplicateKeys!1640 (_2!29798 (h!58041 Nil!51897))))))

(declare-fun m!5534961 () Bool)

(assert (=> bs!1064659 m!5534961))

(assert (=> b!4655696 d!1476628))

(declare-fun b_lambda!173995 () Bool)

(assert (= b_lambda!173923 (or b!4655209 b_lambda!173995)))

(declare-fun bs!1064660 () Bool)

(declare-fun d!1476630 () Bool)

(assert (= bs!1064660 (and d!1476630 b!4655209)))

(assert (=> bs!1064660 (= (dynLambda!21588 lambda!199226 (h!58041 (t!359137 lt!1818235))) (noDuplicateKeys!1640 (_2!29798 (h!58041 (t!359137 lt!1818235)))))))

(declare-fun m!5534963 () Bool)

(assert (=> bs!1064660 m!5534963))

(assert (=> b!4655542 d!1476630))

(declare-fun b_lambda!173997 () Bool)

(assert (= b_lambda!173963 (or b!4655328 b_lambda!173997)))

(declare-fun bs!1064661 () Bool)

(declare-fun d!1476632 () Bool)

(assert (= bs!1064661 (and d!1476632 b!4655328)))

(assert (=> bs!1064661 (= (dynLambda!21590 lambda!199303 (h!58040 (toList!5209 lt!1818389))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun m!5534965 () Bool)

(assert (=> bs!1064661 m!5534965))

(assert (=> b!4655659 d!1476632))

(declare-fun b_lambda!173999 () Bool)

(assert (= b_lambda!173957 (or b!4655328 b_lambda!173999)))

(declare-fun bs!1064662 () Bool)

(declare-fun d!1476634 () Bool)

(assert (= bs!1064662 (and d!1476634 b!4655328)))

(assert (=> bs!1064662 (= (dynLambda!21590 lambda!199303 (h!58040 oldBucket!40)) (contains!15037 lt!1818394 (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> bs!1064662 m!5534253))

(assert (=> d!1476552 d!1476634))

(declare-fun b_lambda!174001 () Bool)

(assert (= b_lambda!173977 (or d!1476356 b_lambda!174001)))

(declare-fun bs!1064663 () Bool)

(declare-fun d!1476636 () Bool)

(assert (= bs!1064663 (and d!1476636 d!1476356)))

(assert (=> bs!1064663 (= (dynLambda!21590 lambda!199304 (h!58040 oldBucket!40)) (contains!15037 lt!1818393 (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun m!5534967 () Bool)

(assert (=> bs!1064663 m!5534967))

(assert (=> b!4655710 d!1476636))

(declare-fun b_lambda!174003 () Bool)

(assert (= b_lambda!173955 (or b!4655328 b_lambda!174003)))

(assert (=> b!4655629 d!1476634))

(declare-fun b_lambda!174005 () Bool)

(assert (= b_lambda!173959 (or b!4655328 b_lambda!174005)))

(declare-fun bs!1064664 () Bool)

(declare-fun d!1476638 () Bool)

(assert (= bs!1064664 (and d!1476638 b!4655328)))

(assert (=> bs!1064664 (= (dynLambda!21590 lambda!199303 (h!58040 (toList!5209 lt!1818237))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun m!5534969 () Bool)

(assert (=> bs!1064664 m!5534969))

(assert (=> b!4655649 d!1476638))

(check-sat (not b!4655709) (not b_lambda!173979) (not d!1476538) (not d!1476572) (not d!1476612) (not bs!1064661) (not b!4655642) (not b!4655679) (not b!4655717) (not b_lambda!173993) (not b!4655609) (not b!4655539) (not b!4655599) (not d!1476584) (not bs!1064663) (not bs!1064653) (not bm!325347) (not b!4655711) (not b!4655683) (not d!1476594) (not b!4655637) (not d!1476508) (not b!4655677) (not b!4655636) (not b!4655639) (not b!4655634) (not bs!1064652) (not b!4655650) (not b!4655658) (not b!4655635) (not b!4655720) (not d!1476560) (not bs!1064657) (not d!1476570) (not b!4655638) (not b!4655593) (not bs!1064662) (not b!4655595) (not d!1476582) (not b_lambda!174005) (not b!4655618) (not b!4655672) (not bm!325348) (not b!4655660) (not b!4655648) (not d!1476544) (not d!1476554) (not b!4655628) (not b!4655671) (not b!4655601) (not b!4655630) tp_is_empty!29853 (not d!1476610) (not b!4655533) (not bs!1064655) (not b!4655624) (not b!4655655) (not bs!1064656) (not b!4655541) (not b_lambda!173985) (not b_lambda!173967) (not d!1476590) (not b!4655617) (not b_lambda!173981) (not bm!325345) (not b!4655623) (not b!4655713) (not b!4655647) (not bs!1064659) (not b!4655716) (not bs!1064658) tp_is_empty!29855 (not b!4655706) (not b!4655704) (not b!4655625) (not b_lambda!173987) (not b_lambda!173983) (not d!1476564) (not bm!325342) (not b!4655611) (not b_lambda!173991) (not b!4655619) (not b!4655657) (not bs!1064664) (not b!4655543) (not b!4655719) (not d!1476552) (not b!4655598) (not d!1476608) (not b_lambda!173973) (not b!4655707) (not b!4655712) (not b!4655633) (not b!4655621) (not b!4655681) (not d!1476506) (not bm!325346) (not d!1476600) (not b!4655664) (not bs!1064660) (not b!4655673) (not d!1476588) (not d!1476556) (not b!4655715) (not b!4655701) (not bs!1064654) (not b!4655662) (not b_lambda!173989) (not b_lambda!173999) (not b_lambda!173885) (not bm!325343) (not d!1476496) (not b!4655697) (not b!4655620) (not b_lambda!173997) (not b_lambda!173995) (not bm!325341) (not b!4655654) (not b_lambda!174001) (not d!1476548) (not bm!325344) (not b!4655653) (not b!4655699) (not b!4655680) (not b_lambda!174003) (not b!4655622) (not b!4655694))
(check-sat)
(get-model)

(declare-fun d!1476640 () Bool)

(declare-fun res!1957559 () Bool)

(declare-fun e!2904797 () Bool)

(assert (=> d!1476640 (=> res!1957559 e!2904797)))

(assert (=> d!1476640 (= res!1957559 ((_ is Nil!51897) (t!359137 (t!359137 lt!1818235))))))

(assert (=> d!1476640 (= (forall!11024 (t!359137 (t!359137 lt!1818235)) lambda!199226) e!2904797)))

(declare-fun b!4655721 () Bool)

(declare-fun e!2904798 () Bool)

(assert (=> b!4655721 (= e!2904797 e!2904798)))

(declare-fun res!1957560 () Bool)

(assert (=> b!4655721 (=> (not res!1957560) (not e!2904798))))

(assert (=> b!4655721 (= res!1957560 (dynLambda!21588 lambda!199226 (h!58041 (t!359137 (t!359137 lt!1818235)))))))

(declare-fun b!4655722 () Bool)

(assert (=> b!4655722 (= e!2904798 (forall!11024 (t!359137 (t!359137 (t!359137 lt!1818235))) lambda!199226))))

(assert (= (and d!1476640 (not res!1957559)) b!4655721))

(assert (= (and b!4655721 res!1957560) b!4655722))

(declare-fun b_lambda!174007 () Bool)

(assert (=> (not b_lambda!174007) (not b!4655721)))

(declare-fun m!5534971 () Bool)

(assert (=> b!4655721 m!5534971))

(declare-fun m!5534973 () Bool)

(assert (=> b!4655722 m!5534973))

(assert (=> b!4655543 d!1476640))

(declare-fun bs!1064665 () Bool)

(declare-fun b!4655724 () Bool)

(assert (= bs!1064665 (and b!4655724 b!4655599)))

(declare-fun lambda!199383 () Int)

(assert (=> bs!1064665 (= (= (toList!5209 lt!1818389) (t!359136 (toList!5209 lt!1818236))) (= lambda!199383 lambda!199356))))

(declare-fun bs!1064666 () Bool)

(assert (= bs!1064666 (and b!4655724 b!4655601)))

(assert (=> bs!1064666 (= (= (toList!5209 lt!1818389) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199383 lambda!199357))))

(declare-fun bs!1064667 () Bool)

(assert (= bs!1064667 (and b!4655724 b!4655595)))

(assert (=> bs!1064667 (= (= (toList!5209 lt!1818389) (toList!5209 lt!1818236)) (= lambda!199383 lambda!199358))))

(declare-fun bs!1064668 () Bool)

(assert (= bs!1064668 (and b!4655724 b!4655672)))

(assert (=> bs!1064668 (= (= (toList!5209 lt!1818389) (toList!5209 lt!1818236)) (= lambda!199383 lambda!199373))))

(assert (=> b!4655724 true))

(declare-fun bs!1064669 () Bool)

(declare-fun b!4655725 () Bool)

(assert (= bs!1064669 (and b!4655725 b!4655598)))

(declare-fun lambda!199384 () Int)

(assert (=> bs!1064669 (= lambda!199384 lambda!199359)))

(declare-fun bs!1064670 () Bool)

(assert (= bs!1064670 (and b!4655725 b!4655673)))

(assert (=> bs!1064670 (= lambda!199384 lambda!199374)))

(declare-fun d!1476642 () Bool)

(declare-fun e!2904799 () Bool)

(assert (=> d!1476642 e!2904799))

(declare-fun res!1957563 () Bool)

(assert (=> d!1476642 (=> (not res!1957563) (not e!2904799))))

(declare-fun lt!1818662 () List!52023)

(assert (=> d!1476642 (= res!1957563 (noDuplicate!837 lt!1818662))))

(assert (=> d!1476642 (= lt!1818662 (getKeysList!749 (toList!5209 lt!1818389)))))

(assert (=> d!1476642 (= (keys!18384 lt!1818389) lt!1818662)))

(declare-fun b!4655723 () Bool)

(declare-fun res!1957561 () Bool)

(assert (=> b!4655723 (=> (not res!1957561) (not e!2904799))))

(assert (=> b!4655723 (= res!1957561 (= (length!530 lt!1818662) (length!531 (toList!5209 lt!1818389))))))

(declare-fun res!1957562 () Bool)

(assert (=> b!4655724 (=> (not res!1957562) (not e!2904799))))

(assert (=> b!4655724 (= res!1957562 (forall!11027 lt!1818662 lambda!199383))))

(assert (=> b!4655725 (= e!2904799 (= (content!8994 lt!1818662) (content!8994 (map!11470 (toList!5209 lt!1818389) lambda!199384))))))

(assert (= (and d!1476642 res!1957563) b!4655723))

(assert (= (and b!4655723 res!1957561) b!4655724))

(assert (= (and b!4655724 res!1957562) b!4655725))

(declare-fun m!5534975 () Bool)

(assert (=> d!1476642 m!5534975))

(assert (=> d!1476642 m!5534745))

(declare-fun m!5534977 () Bool)

(assert (=> b!4655723 m!5534977))

(declare-fun m!5534979 () Bool)

(assert (=> b!4655723 m!5534979))

(declare-fun m!5534981 () Bool)

(assert (=> b!4655724 m!5534981))

(declare-fun m!5534983 () Bool)

(assert (=> b!4655725 m!5534983))

(declare-fun m!5534985 () Bool)

(assert (=> b!4655725 m!5534985))

(assert (=> b!4655725 m!5534985))

(declare-fun m!5534987 () Bool)

(assert (=> b!4655725 m!5534987))

(assert (=> b!4655638 d!1476642))

(declare-fun d!1476644 () Bool)

(declare-fun res!1957564 () Bool)

(declare-fun e!2904800 () Bool)

(assert (=> d!1476644 (=> res!1957564 e!2904800)))

(assert (=> d!1476644 (= res!1957564 ((_ is Nil!51896) (t!359136 (t!359136 oldBucket!40))))))

(assert (=> d!1476644 (= (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199303) e!2904800)))

(declare-fun b!4655726 () Bool)

(declare-fun e!2904801 () Bool)

(assert (=> b!4655726 (= e!2904800 e!2904801)))

(declare-fun res!1957565 () Bool)

(assert (=> b!4655726 (=> (not res!1957565) (not e!2904801))))

(assert (=> b!4655726 (= res!1957565 (dynLambda!21590 lambda!199303 (h!58040 (t!359136 (t!359136 oldBucket!40)))))))

(declare-fun b!4655727 () Bool)

(assert (=> b!4655727 (= e!2904801 (forall!11026 (t!359136 (t!359136 (t!359136 oldBucket!40))) lambda!199303))))

(assert (= (and d!1476644 (not res!1957564)) b!4655726))

(assert (= (and b!4655726 res!1957565) b!4655727))

(declare-fun b_lambda!174009 () Bool)

(assert (=> (not b_lambda!174009) (not b!4655726)))

(declare-fun m!5534989 () Bool)

(assert (=> b!4655726 m!5534989))

(declare-fun m!5534991 () Bool)

(assert (=> b!4655727 m!5534991))

(assert (=> b!4655653 d!1476644))

(declare-fun d!1476646 () Bool)

(declare-fun res!1957566 () Bool)

(declare-fun e!2904802 () Bool)

(assert (=> d!1476646 (=> res!1957566 e!2904802)))

(assert (=> d!1476646 (= res!1957566 ((_ is Nil!51896) (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (toList!5209 lt!1818620))))))

(assert (=> d!1476646 (= (forall!11026 (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (toList!5209 lt!1818620)) (ite c!796872 lambda!199365 lambda!199367)) e!2904802)))

(declare-fun b!4655728 () Bool)

(declare-fun e!2904803 () Bool)

(assert (=> b!4655728 (= e!2904802 e!2904803)))

(declare-fun res!1957567 () Bool)

(assert (=> b!4655728 (=> (not res!1957567) (not e!2904803))))

(assert (=> b!4655728 (= res!1957567 (dynLambda!21590 (ite c!796872 lambda!199365 lambda!199367) (h!58040 (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (toList!5209 lt!1818620)))))))

(declare-fun b!4655729 () Bool)

(assert (=> b!4655729 (= e!2904803 (forall!11026 (t!359136 (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (toList!5209 lt!1818620))) (ite c!796872 lambda!199365 lambda!199367)))))

(assert (= (and d!1476646 (not res!1957566)) b!4655728))

(assert (= (and b!4655728 res!1957567) b!4655729))

(declare-fun b_lambda!174011 () Bool)

(assert (=> (not b_lambda!174011) (not b!4655728)))

(declare-fun m!5534993 () Bool)

(assert (=> b!4655728 m!5534993))

(declare-fun m!5534995 () Bool)

(assert (=> b!4655729 m!5534995))

(assert (=> bm!325344 d!1476646))

(declare-fun d!1476648 () Bool)

(declare-fun res!1957568 () Bool)

(declare-fun e!2904804 () Bool)

(assert (=> d!1476648 (=> res!1957568 e!2904804)))

(assert (=> d!1476648 (= res!1957568 ((_ is Nil!51896) (t!359136 newBucket!224)))))

(assert (=> d!1476648 (= (forall!11026 (t!359136 newBucket!224) lambda!199229) e!2904804)))

(declare-fun b!4655730 () Bool)

(declare-fun e!2904805 () Bool)

(assert (=> b!4655730 (= e!2904804 e!2904805)))

(declare-fun res!1957569 () Bool)

(assert (=> b!4655730 (=> (not res!1957569) (not e!2904805))))

(assert (=> b!4655730 (= res!1957569 (dynLambda!21590 lambda!199229 (h!58040 (t!359136 newBucket!224))))))

(declare-fun b!4655731 () Bool)

(assert (=> b!4655731 (= e!2904805 (forall!11026 (t!359136 (t!359136 newBucket!224)) lambda!199229))))

(assert (= (and d!1476648 (not res!1957568)) b!4655730))

(assert (= (and b!4655730 res!1957569) b!4655731))

(declare-fun b_lambda!174013 () Bool)

(assert (=> (not b_lambda!174013) (not b!4655730)))

(declare-fun m!5534997 () Bool)

(assert (=> b!4655730 m!5534997))

(declare-fun m!5534999 () Bool)

(assert (=> b!4655731 m!5534999))

(assert (=> b!4655701 d!1476648))

(declare-fun d!1476650 () Bool)

(declare-fun res!1957574 () Bool)

(declare-fun e!2904810 () Bool)

(assert (=> d!1476650 (=> res!1957574 e!2904810)))

(assert (=> d!1476650 (= res!1957574 ((_ is Nil!51899) lt!1818629))))

(assert (=> d!1476650 (= (noDuplicate!837 lt!1818629) e!2904810)))

(declare-fun b!4655736 () Bool)

(declare-fun e!2904811 () Bool)

(assert (=> b!4655736 (= e!2904810 e!2904811)))

(declare-fun res!1957575 () Bool)

(assert (=> b!4655736 (=> (not res!1957575) (not e!2904811))))

(assert (=> b!4655736 (= res!1957575 (not (contains!15039 (t!359139 lt!1818629) (h!58045 lt!1818629))))))

(declare-fun b!4655737 () Bool)

(assert (=> b!4655737 (= e!2904811 (noDuplicate!837 (t!359139 lt!1818629)))))

(assert (= (and d!1476650 (not res!1957574)) b!4655736))

(assert (= (and b!4655736 res!1957575) b!4655737))

(declare-fun m!5535001 () Bool)

(assert (=> b!4655736 m!5535001))

(declare-fun m!5535003 () Bool)

(assert (=> b!4655737 m!5535003))

(assert (=> d!1476572 d!1476650))

(assert (=> d!1476572 d!1476508))

(declare-fun b!4655738 () Bool)

(declare-fun e!2904813 () Bool)

(assert (=> b!4655738 (= e!2904813 (not (contains!15039 (keys!18384 lt!1818237) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))))

(declare-fun b!4655739 () Bool)

(declare-fun e!2904814 () Bool)

(assert (=> b!4655739 (= e!2904814 (contains!15039 (keys!18384 lt!1818237) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun b!4655740 () Bool)

(declare-fun e!2904815 () Bool)

(assert (=> b!4655740 (= e!2904815 e!2904814)))

(declare-fun res!1957576 () Bool)

(assert (=> b!4655740 (=> (not res!1957576) (not e!2904814))))

(assert (=> b!4655740 (= res!1957576 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818237) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))))

(declare-fun b!4655741 () Bool)

(declare-fun e!2904817 () Unit!118533)

(declare-fun lt!1818663 () Unit!118533)

(assert (=> b!4655741 (= e!2904817 lt!1818663)))

(declare-fun lt!1818666 () Unit!118533)

(assert (=> b!4655741 (= lt!1818666 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818237) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(assert (=> b!4655741 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818237) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun lt!1818664 () Unit!118533)

(assert (=> b!4655741 (= lt!1818664 lt!1818666)))

(assert (=> b!4655741 (= lt!1818663 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818237) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun call!325354 () Bool)

(assert (=> b!4655741 call!325354))

(declare-fun b!4655742 () Bool)

(declare-fun e!2904812 () List!52023)

(assert (=> b!4655742 (= e!2904812 (keys!18384 lt!1818237))))

(declare-fun b!4655743 () Bool)

(assert (=> b!4655743 (= e!2904812 (getKeysList!749 (toList!5209 lt!1818237)))))

(declare-fun d!1476652 () Bool)

(assert (=> d!1476652 e!2904815))

(declare-fun res!1957577 () Bool)

(assert (=> d!1476652 (=> res!1957577 e!2904815)))

(assert (=> d!1476652 (= res!1957577 e!2904813)))

(declare-fun res!1957578 () Bool)

(assert (=> d!1476652 (=> (not res!1957578) (not e!2904813))))

(declare-fun lt!1818665 () Bool)

(assert (=> d!1476652 (= res!1957578 (not lt!1818665))))

(declare-fun lt!1818670 () Bool)

(assert (=> d!1476652 (= lt!1818665 lt!1818670)))

(declare-fun lt!1818668 () Unit!118533)

(assert (=> d!1476652 (= lt!1818668 e!2904817)))

(declare-fun c!796883 () Bool)

(assert (=> d!1476652 (= c!796883 lt!1818670)))

(assert (=> d!1476652 (= lt!1818670 (containsKey!2726 (toList!5209 lt!1818237) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(assert (=> d!1476652 (= (contains!15037 lt!1818237 (_1!29797 (h!58040 (toList!5209 lt!1818237)))) lt!1818665)))

(declare-fun bm!325349 () Bool)

(assert (=> bm!325349 (= call!325354 (contains!15039 e!2904812 (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun c!796885 () Bool)

(assert (=> bm!325349 (= c!796885 c!796883)))

(declare-fun b!4655744 () Bool)

(declare-fun e!2904816 () Unit!118533)

(declare-fun Unit!118608 () Unit!118533)

(assert (=> b!4655744 (= e!2904816 Unit!118608)))

(declare-fun b!4655745 () Bool)

(assert (=> b!4655745 (= e!2904817 e!2904816)))

(declare-fun c!796884 () Bool)

(assert (=> b!4655745 (= c!796884 call!325354)))

(declare-fun b!4655746 () Bool)

(assert (=> b!4655746 false))

(declare-fun lt!1818669 () Unit!118533)

(declare-fun lt!1818667 () Unit!118533)

(assert (=> b!4655746 (= lt!1818669 lt!1818667)))

(assert (=> b!4655746 (containsKey!2726 (toList!5209 lt!1818237) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))

(assert (=> b!4655746 (= lt!1818667 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818237) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun Unit!118609 () Unit!118533)

(assert (=> b!4655746 (= e!2904816 Unit!118609)))

(assert (= (and d!1476652 c!796883) b!4655741))

(assert (= (and d!1476652 (not c!796883)) b!4655745))

(assert (= (and b!4655745 c!796884) b!4655746))

(assert (= (and b!4655745 (not c!796884)) b!4655744))

(assert (= (or b!4655741 b!4655745) bm!325349))

(assert (= (and bm!325349 c!796885) b!4655743))

(assert (= (and bm!325349 (not c!796885)) b!4655742))

(assert (= (and d!1476652 res!1957578) b!4655738))

(assert (= (and d!1476652 (not res!1957577)) b!4655740))

(assert (= (and b!4655740 res!1957576) b!4655739))

(declare-fun m!5535005 () Bool)

(assert (=> b!4655742 m!5535005))

(declare-fun m!5535007 () Bool)

(assert (=> d!1476652 m!5535007))

(declare-fun m!5535009 () Bool)

(assert (=> b!4655743 m!5535009))

(declare-fun m!5535011 () Bool)

(assert (=> bm!325349 m!5535011))

(declare-fun m!5535013 () Bool)

(assert (=> b!4655741 m!5535013))

(declare-fun m!5535015 () Bool)

(assert (=> b!4655741 m!5535015))

(assert (=> b!4655741 m!5535015))

(declare-fun m!5535017 () Bool)

(assert (=> b!4655741 m!5535017))

(declare-fun m!5535019 () Bool)

(assert (=> b!4655741 m!5535019))

(assert (=> b!4655746 m!5535007))

(declare-fun m!5535021 () Bool)

(assert (=> b!4655746 m!5535021))

(assert (=> b!4655740 m!5535015))

(assert (=> b!4655740 m!5535015))

(assert (=> b!4655740 m!5535017))

(assert (=> b!4655739 m!5535005))

(assert (=> b!4655739 m!5535005))

(declare-fun m!5535023 () Bool)

(assert (=> b!4655739 m!5535023))

(assert (=> b!4655738 m!5535005))

(assert (=> b!4655738 m!5535005))

(assert (=> b!4655738 m!5535023))

(assert (=> bs!1064656 d!1476652))

(declare-fun d!1476654 () Bool)

(assert (not d!1476654))

(assert (=> b!4655697 d!1476654))

(declare-fun d!1476656 () Bool)

(declare-fun lt!1818671 () Bool)

(assert (=> d!1476656 (= lt!1818671 (select (content!8994 (keys!18384 lt!1818389)) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun e!2904819 () Bool)

(assert (=> d!1476656 (= lt!1818671 e!2904819)))

(declare-fun res!1957580 () Bool)

(assert (=> d!1476656 (=> (not res!1957580) (not e!2904819))))

(assert (=> d!1476656 (= res!1957580 ((_ is Cons!51899) (keys!18384 lt!1818389)))))

(assert (=> d!1476656 (= (contains!15039 (keys!18384 lt!1818389) (_1!29797 (h!58040 oldBucket!40))) lt!1818671)))

(declare-fun b!4655747 () Bool)

(declare-fun e!2904818 () Bool)

(assert (=> b!4655747 (= e!2904819 e!2904818)))

(declare-fun res!1957579 () Bool)

(assert (=> b!4655747 (=> res!1957579 e!2904818)))

(assert (=> b!4655747 (= res!1957579 (= (h!58045 (keys!18384 lt!1818389)) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4655748 () Bool)

(assert (=> b!4655748 (= e!2904818 (contains!15039 (t!359139 (keys!18384 lt!1818389)) (_1!29797 (h!58040 oldBucket!40))))))

(assert (= (and d!1476656 res!1957580) b!4655747))

(assert (= (and b!4655747 (not res!1957579)) b!4655748))

(assert (=> d!1476656 m!5534741))

(declare-fun m!5535025 () Bool)

(assert (=> d!1476656 m!5535025))

(declare-fun m!5535027 () Bool)

(assert (=> d!1476656 m!5535027))

(declare-fun m!5535029 () Bool)

(assert (=> b!4655748 m!5535029))

(assert (=> b!4655634 d!1476656))

(assert (=> b!4655634 d!1476642))

(declare-fun d!1476658 () Bool)

(declare-fun c!796888 () Bool)

(assert (=> d!1476658 (= c!796888 ((_ is Nil!51899) lt!1818567))))

(declare-fun e!2904822 () (InoxSet K!13250))

(assert (=> d!1476658 (= (content!8994 lt!1818567) e!2904822)))

(declare-fun b!4655753 () Bool)

(assert (=> b!4655753 (= e!2904822 ((as const (Array K!13250 Bool)) false))))

(declare-fun b!4655754 () Bool)

(assert (=> b!4655754 (= e!2904822 ((_ map or) (store ((as const (Array K!13250 Bool)) false) (h!58045 lt!1818567) true) (content!8994 (t!359139 lt!1818567))))))

(assert (= (and d!1476658 c!796888) b!4655753))

(assert (= (and d!1476658 (not c!796888)) b!4655754))

(declare-fun m!5535031 () Bool)

(assert (=> b!4655754 m!5535031))

(declare-fun m!5535033 () Bool)

(assert (=> b!4655754 m!5535033))

(assert (=> b!4655598 d!1476658))

(declare-fun d!1476660 () Bool)

(declare-fun c!796889 () Bool)

(assert (=> d!1476660 (= c!796889 ((_ is Nil!51899) (map!11470 (toList!5209 lt!1818236) lambda!199359)))))

(declare-fun e!2904823 () (InoxSet K!13250))

(assert (=> d!1476660 (= (content!8994 (map!11470 (toList!5209 lt!1818236) lambda!199359)) e!2904823)))

(declare-fun b!4655755 () Bool)

(assert (=> b!4655755 (= e!2904823 ((as const (Array K!13250 Bool)) false))))

(declare-fun b!4655756 () Bool)

(assert (=> b!4655756 (= e!2904823 ((_ map or) (store ((as const (Array K!13250 Bool)) false) (h!58045 (map!11470 (toList!5209 lt!1818236) lambda!199359)) true) (content!8994 (t!359139 (map!11470 (toList!5209 lt!1818236) lambda!199359)))))))

(assert (= (and d!1476660 c!796889) b!4655755))

(assert (= (and d!1476660 (not c!796889)) b!4655756))

(declare-fun m!5535035 () Bool)

(assert (=> b!4655756 m!5535035))

(declare-fun m!5535037 () Bool)

(assert (=> b!4655756 m!5535037))

(assert (=> b!4655598 d!1476660))

(declare-fun d!1476662 () Bool)

(declare-fun lt!1818674 () List!52023)

(declare-fun size!35969 (List!52023) Int)

(declare-fun size!35970 (List!52020) Int)

(assert (=> d!1476662 (= (size!35969 lt!1818674) (size!35970 (toList!5209 lt!1818236)))))

(declare-fun e!2904826 () List!52023)

(assert (=> d!1476662 (= lt!1818674 e!2904826)))

(declare-fun c!796892 () Bool)

(assert (=> d!1476662 (= c!796892 ((_ is Nil!51896) (toList!5209 lt!1818236)))))

(assert (=> d!1476662 (= (map!11470 (toList!5209 lt!1818236) lambda!199359) lt!1818674)))

(declare-fun b!4655761 () Bool)

(assert (=> b!4655761 (= e!2904826 Nil!51899)))

(declare-fun b!4655762 () Bool)

(declare-fun $colon$colon!1061 (List!52023 K!13250) List!52023)

(declare-fun dynLambda!21591 (Int tuple2!53006) K!13250)

(assert (=> b!4655762 (= e!2904826 ($colon$colon!1061 (map!11470 (t!359136 (toList!5209 lt!1818236)) lambda!199359) (dynLambda!21591 lambda!199359 (h!58040 (toList!5209 lt!1818236)))))))

(assert (= (and d!1476662 c!796892) b!4655761))

(assert (= (and d!1476662 (not c!796892)) b!4655762))

(declare-fun b_lambda!174015 () Bool)

(assert (=> (not b_lambda!174015) (not b!4655762)))

(declare-fun m!5535039 () Bool)

(assert (=> d!1476662 m!5535039))

(declare-fun m!5535041 () Bool)

(assert (=> d!1476662 m!5535041))

(declare-fun m!5535043 () Bool)

(assert (=> b!4655762 m!5535043))

(declare-fun m!5535045 () Bool)

(assert (=> b!4655762 m!5535045))

(assert (=> b!4655762 m!5535043))

(assert (=> b!4655762 m!5535045))

(declare-fun m!5535047 () Bool)

(assert (=> b!4655762 m!5535047))

(assert (=> b!4655598 d!1476662))

(declare-fun d!1476664 () Bool)

(declare-fun lt!1818675 () Bool)

(assert (=> d!1476664 (= lt!1818675 (select (content!8994 (t!359139 (keys!18384 lt!1818236))) key!4968))))

(declare-fun e!2904828 () Bool)

(assert (=> d!1476664 (= lt!1818675 e!2904828)))

(declare-fun res!1957582 () Bool)

(assert (=> d!1476664 (=> (not res!1957582) (not e!2904828))))

(assert (=> d!1476664 (= res!1957582 ((_ is Cons!51899) (t!359139 (keys!18384 lt!1818236))))))

(assert (=> d!1476664 (= (contains!15039 (t!359139 (keys!18384 lt!1818236)) key!4968) lt!1818675)))

(declare-fun b!4655763 () Bool)

(declare-fun e!2904827 () Bool)

(assert (=> b!4655763 (= e!2904828 e!2904827)))

(declare-fun res!1957581 () Bool)

(assert (=> b!4655763 (=> res!1957581 e!2904827)))

(assert (=> b!4655763 (= res!1957581 (= (h!58045 (t!359139 (keys!18384 lt!1818236))) key!4968))))

(declare-fun b!4655764 () Bool)

(assert (=> b!4655764 (= e!2904827 (contains!15039 (t!359139 (t!359139 (keys!18384 lt!1818236))) key!4968))))

(assert (= (and d!1476664 res!1957582) b!4655763))

(assert (= (and b!4655763 (not res!1957581)) b!4655764))

(declare-fun m!5535049 () Bool)

(assert (=> d!1476664 m!5535049))

(declare-fun m!5535051 () Bool)

(assert (=> d!1476664 m!5535051))

(declare-fun m!5535053 () Bool)

(assert (=> b!4655764 m!5535053))

(assert (=> b!4655664 d!1476664))

(assert (=> bs!1064654 d!1476578))

(declare-fun d!1476666 () Bool)

(assert (=> d!1476666 (= (length!530 lt!1818629) (size!35969 lt!1818629))))

(declare-fun bs!1064671 () Bool)

(assert (= bs!1064671 d!1476666))

(declare-fun m!5535055 () Bool)

(assert (=> bs!1064671 m!5535055))

(assert (=> b!4655671 d!1476666))

(declare-fun d!1476668 () Bool)

(assert (=> d!1476668 (= (length!531 (toList!5209 lt!1818236)) (size!35970 (toList!5209 lt!1818236)))))

(declare-fun bs!1064672 () Bool)

(assert (= bs!1064672 d!1476668))

(assert (=> bs!1064672 m!5535041))

(assert (=> b!4655671 d!1476668))

(declare-fun d!1476670 () Bool)

(declare-fun res!1957583 () Bool)

(declare-fun e!2904829 () Bool)

(assert (=> d!1476670 (=> res!1957583 e!2904829)))

(assert (=> d!1476670 (= res!1957583 ((_ is Nil!51897) (t!359137 lt!1818235)))))

(assert (=> d!1476670 (= (forall!11024 (t!359137 lt!1818235) lambda!199308) e!2904829)))

(declare-fun b!4655765 () Bool)

(declare-fun e!2904830 () Bool)

(assert (=> b!4655765 (= e!2904829 e!2904830)))

(declare-fun res!1957584 () Bool)

(assert (=> b!4655765 (=> (not res!1957584) (not e!2904830))))

(assert (=> b!4655765 (= res!1957584 (dynLambda!21588 lambda!199308 (h!58041 (t!359137 lt!1818235))))))

(declare-fun b!4655766 () Bool)

(assert (=> b!4655766 (= e!2904830 (forall!11024 (t!359137 (t!359137 lt!1818235)) lambda!199308))))

(assert (= (and d!1476670 (not res!1957583)) b!4655765))

(assert (= (and b!4655765 res!1957584) b!4655766))

(declare-fun b_lambda!174017 () Bool)

(assert (=> (not b_lambda!174017) (not b!4655765)))

(declare-fun m!5535057 () Bool)

(assert (=> b!4655765 m!5535057))

(declare-fun m!5535059 () Bool)

(assert (=> b!4655766 m!5535059))

(assert (=> b!4655611 d!1476670))

(declare-fun d!1476672 () Bool)

(declare-fun lt!1818678 () Bool)

(declare-fun content!8996 (List!52020) (InoxSet tuple2!53006))

(assert (=> d!1476672 (= lt!1818678 (select (content!8996 (toList!5209 lt!1818598)) (h!58040 oldBucket!40)))))

(declare-fun e!2904836 () Bool)

(assert (=> d!1476672 (= lt!1818678 e!2904836)))

(declare-fun res!1957590 () Bool)

(assert (=> d!1476672 (=> (not res!1957590) (not e!2904836))))

(assert (=> d!1476672 (= res!1957590 ((_ is Cons!51896) (toList!5209 lt!1818598)))))

(assert (=> d!1476672 (= (contains!15041 (toList!5209 lt!1818598) (h!58040 oldBucket!40)) lt!1818678)))

(declare-fun b!4655771 () Bool)

(declare-fun e!2904835 () Bool)

(assert (=> b!4655771 (= e!2904836 e!2904835)))

(declare-fun res!1957589 () Bool)

(assert (=> b!4655771 (=> res!1957589 e!2904835)))

(assert (=> b!4655771 (= res!1957589 (= (h!58040 (toList!5209 lt!1818598)) (h!58040 oldBucket!40)))))

(declare-fun b!4655772 () Bool)

(assert (=> b!4655772 (= e!2904835 (contains!15041 (t!359136 (toList!5209 lt!1818598)) (h!58040 oldBucket!40)))))

(assert (= (and d!1476672 res!1957590) b!4655771))

(assert (= (and b!4655771 (not res!1957589)) b!4655772))

(declare-fun m!5535061 () Bool)

(assert (=> d!1476672 m!5535061))

(declare-fun m!5535063 () Bool)

(assert (=> d!1476672 m!5535063))

(declare-fun m!5535065 () Bool)

(assert (=> b!4655772 m!5535065))

(assert (=> b!4655648 d!1476672))

(declare-fun d!1476674 () Bool)

(declare-fun res!1957591 () Bool)

(declare-fun e!2904837 () Bool)

(assert (=> d!1476674 (=> res!1957591 e!2904837)))

(assert (=> d!1476674 (= res!1957591 ((_ is Nil!51896) (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (_2!29798 (h!58041 lt!1818235)))))))

(assert (=> d!1476674 (= (forall!11026 (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (_2!29798 (h!58041 lt!1818235))) (ite c!796881 lambda!199378 lambda!199380)) e!2904837)))

(declare-fun b!4655773 () Bool)

(declare-fun e!2904838 () Bool)

(assert (=> b!4655773 (= e!2904837 e!2904838)))

(declare-fun res!1957592 () Bool)

(assert (=> b!4655773 (=> (not res!1957592) (not e!2904838))))

(assert (=> b!4655773 (= res!1957592 (dynLambda!21590 (ite c!796881 lambda!199378 lambda!199380) (h!58040 (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun b!4655774 () Bool)

(assert (=> b!4655774 (= e!2904838 (forall!11026 (t!359136 (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (_2!29798 (h!58041 lt!1818235)))) (ite c!796881 lambda!199378 lambda!199380)))))

(assert (= (and d!1476674 (not res!1957591)) b!4655773))

(assert (= (and b!4655773 res!1957592) b!4655774))

(declare-fun b_lambda!174019 () Bool)

(assert (=> (not b_lambda!174019) (not b!4655773)))

(declare-fun m!5535067 () Bool)

(assert (=> b!4655773 m!5535067))

(declare-fun m!5535069 () Bool)

(assert (=> b!4655774 m!5535069))

(assert (=> bm!325346 d!1476674))

(declare-fun b!4655775 () Bool)

(declare-fun e!2904840 () Bool)

(assert (=> b!4655775 (= e!2904840 (not (contains!15039 (keys!18384 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))))

(declare-fun b!4655776 () Bool)

(declare-fun e!2904841 () Bool)

(assert (=> b!4655776 (= e!2904841 (contains!15039 (keys!18384 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun b!4655777 () Bool)

(declare-fun e!2904842 () Bool)

(assert (=> b!4655777 (= e!2904842 e!2904841)))

(declare-fun res!1957593 () Bool)

(assert (=> b!4655777 (=> (not res!1957593) (not e!2904841))))

(assert (=> b!4655777 (= res!1957593 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))))

(declare-fun b!4655778 () Bool)

(declare-fun e!2904844 () Unit!118533)

(declare-fun lt!1818679 () Unit!118533)

(assert (=> b!4655778 (= e!2904844 lt!1818679)))

(declare-fun lt!1818682 () Unit!118533)

(assert (=> b!4655778 (= lt!1818682 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(assert (=> b!4655778 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun lt!1818680 () Unit!118533)

(assert (=> b!4655778 (= lt!1818680 lt!1818682)))

(assert (=> b!4655778 (= lt!1818679 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun call!325355 () Bool)

(assert (=> b!4655778 call!325355))

(declare-fun b!4655779 () Bool)

(declare-fun e!2904839 () List!52023)

(assert (=> b!4655779 (= e!2904839 (keys!18384 lt!1818394))))

(declare-fun b!4655780 () Bool)

(assert (=> b!4655780 (= e!2904839 (getKeysList!749 (toList!5209 lt!1818394)))))

(declare-fun d!1476676 () Bool)

(assert (=> d!1476676 e!2904842))

(declare-fun res!1957594 () Bool)

(assert (=> d!1476676 (=> res!1957594 e!2904842)))

(assert (=> d!1476676 (= res!1957594 e!2904840)))

(declare-fun res!1957595 () Bool)

(assert (=> d!1476676 (=> (not res!1957595) (not e!2904840))))

(declare-fun lt!1818681 () Bool)

(assert (=> d!1476676 (= res!1957595 (not lt!1818681))))

(declare-fun lt!1818686 () Bool)

(assert (=> d!1476676 (= lt!1818681 lt!1818686)))

(declare-fun lt!1818684 () Unit!118533)

(assert (=> d!1476676 (= lt!1818684 e!2904844)))

(declare-fun c!796893 () Bool)

(assert (=> d!1476676 (= c!796893 lt!1818686)))

(assert (=> d!1476676 (= lt!1818686 (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(assert (=> d!1476676 (= (contains!15037 lt!1818394 (_1!29797 (h!58040 (toList!5209 lt!1818237)))) lt!1818681)))

(declare-fun bm!325350 () Bool)

(assert (=> bm!325350 (= call!325355 (contains!15039 e!2904839 (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun c!796895 () Bool)

(assert (=> bm!325350 (= c!796895 c!796893)))

(declare-fun b!4655781 () Bool)

(declare-fun e!2904843 () Unit!118533)

(declare-fun Unit!118610 () Unit!118533)

(assert (=> b!4655781 (= e!2904843 Unit!118610)))

(declare-fun b!4655782 () Bool)

(assert (=> b!4655782 (= e!2904844 e!2904843)))

(declare-fun c!796894 () Bool)

(assert (=> b!4655782 (= c!796894 call!325355)))

(declare-fun b!4655783 () Bool)

(assert (=> b!4655783 false))

(declare-fun lt!1818685 () Unit!118533)

(declare-fun lt!1818683 () Unit!118533)

(assert (=> b!4655783 (= lt!1818685 lt!1818683)))

(assert (=> b!4655783 (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))

(assert (=> b!4655783 (= lt!1818683 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun Unit!118611 () Unit!118533)

(assert (=> b!4655783 (= e!2904843 Unit!118611)))

(assert (= (and d!1476676 c!796893) b!4655778))

(assert (= (and d!1476676 (not c!796893)) b!4655782))

(assert (= (and b!4655782 c!796894) b!4655783))

(assert (= (and b!4655782 (not c!796894)) b!4655781))

(assert (= (or b!4655778 b!4655782) bm!325350))

(assert (= (and bm!325350 c!796895) b!4655780))

(assert (= (and bm!325350 (not c!796895)) b!4655779))

(assert (= (and d!1476676 res!1957595) b!4655775))

(assert (= (and d!1476676 (not res!1957594)) b!4655777))

(assert (= (and b!4655777 res!1957593) b!4655776))

(assert (=> b!4655779 m!5534715))

(declare-fun m!5535071 () Bool)

(assert (=> d!1476676 m!5535071))

(assert (=> b!4655780 m!5534719))

(declare-fun m!5535073 () Bool)

(assert (=> bm!325350 m!5535073))

(declare-fun m!5535075 () Bool)

(assert (=> b!4655778 m!5535075))

(declare-fun m!5535077 () Bool)

(assert (=> b!4655778 m!5535077))

(assert (=> b!4655778 m!5535077))

(declare-fun m!5535079 () Bool)

(assert (=> b!4655778 m!5535079))

(declare-fun m!5535081 () Bool)

(assert (=> b!4655778 m!5535081))

(assert (=> b!4655783 m!5535071))

(declare-fun m!5535083 () Bool)

(assert (=> b!4655783 m!5535083))

(assert (=> b!4655777 m!5535077))

(assert (=> b!4655777 m!5535077))

(assert (=> b!4655777 m!5535079))

(assert (=> b!4655776 m!5534715))

(assert (=> b!4655776 m!5534715))

(declare-fun m!5535085 () Bool)

(assert (=> b!4655776 m!5535085))

(assert (=> b!4655775 m!5534715))

(assert (=> b!4655775 m!5534715))

(assert (=> b!4655775 m!5535085))

(assert (=> bs!1064664 d!1476676))

(declare-fun d!1476678 () Bool)

(assert (=> d!1476678 true))

(assert (=> d!1476678 true))

(declare-fun res!1957598 () (_ BitVec 64))

(assert (=> d!1476678 (= (choose!32008 hashF!1389 key!4968) res!1957598)))

(assert (=> d!1476608 d!1476678))

(declare-fun d!1476680 () Bool)

(declare-fun res!1957599 () Bool)

(declare-fun e!2904845 () Bool)

(assert (=> d!1476680 (=> res!1957599 e!2904845)))

(assert (=> d!1476680 (= res!1957599 (and ((_ is Cons!51896) (toList!5209 lt!1818394)) (= (_1!29797 (h!58040 (toList!5209 lt!1818394))) (_1!29797 (h!58040 oldBucket!40)))))))

(assert (=> d!1476680 (= (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))) e!2904845)))

(declare-fun b!4655784 () Bool)

(declare-fun e!2904846 () Bool)

(assert (=> b!4655784 (= e!2904845 e!2904846)))

(declare-fun res!1957600 () Bool)

(assert (=> b!4655784 (=> (not res!1957600) (not e!2904846))))

(assert (=> b!4655784 (= res!1957600 ((_ is Cons!51896) (toList!5209 lt!1818394)))))

(declare-fun b!4655785 () Bool)

(assert (=> b!4655785 (= e!2904846 (containsKey!2726 (t!359136 (toList!5209 lt!1818394)) (_1!29797 (h!58040 oldBucket!40))))))

(assert (= (and d!1476680 (not res!1957599)) b!4655784))

(assert (= (and b!4655784 res!1957600) b!4655785))

(declare-fun m!5535087 () Bool)

(assert (=> b!4655785 m!5535087))

(assert (=> d!1476548 d!1476680))

(assert (=> bs!1064662 d!1476548))

(declare-fun d!1476682 () Bool)

(declare-fun res!1957601 () Bool)

(declare-fun e!2904847 () Bool)

(assert (=> d!1476682 (=> res!1957601 e!2904847)))

(assert (=> d!1476682 (= res!1957601 ((_ is Nil!51896) (t!359136 oldBucket!40)))))

(assert (=> d!1476682 (= (forall!11026 (t!359136 oldBucket!40) lambda!199304) e!2904847)))

(declare-fun b!4655786 () Bool)

(declare-fun e!2904848 () Bool)

(assert (=> b!4655786 (= e!2904847 e!2904848)))

(declare-fun res!1957602 () Bool)

(assert (=> b!4655786 (=> (not res!1957602) (not e!2904848))))

(assert (=> b!4655786 (= res!1957602 (dynLambda!21590 lambda!199304 (h!58040 (t!359136 oldBucket!40))))))

(declare-fun b!4655787 () Bool)

(assert (=> b!4655787 (= e!2904848 (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199304))))

(assert (= (and d!1476682 (not res!1957601)) b!4655786))

(assert (= (and b!4655786 res!1957602) b!4655787))

(declare-fun b_lambda!174021 () Bool)

(assert (=> (not b_lambda!174021) (not b!4655786)))

(declare-fun m!5535089 () Bool)

(assert (=> b!4655786 m!5535089))

(declare-fun m!5535091 () Bool)

(assert (=> b!4655787 m!5535091))

(assert (=> b!4655711 d!1476682))

(declare-fun d!1476684 () Bool)

(assert (=> d!1476684 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun lt!1818687 () Unit!118533)

(assert (=> d!1476684 (= lt!1818687 (choose!32005 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1476684 (invariantList!1298 (toList!5209 lt!1818394))))

(assert (=> d!1476684 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))) lt!1818687)))

(declare-fun bs!1064673 () Bool)

(assert (= bs!1064673 d!1476684))

(assert (=> bs!1064673 m!5534725))

(assert (=> bs!1064673 m!5534725))

(assert (=> bs!1064673 m!5534727))

(declare-fun m!5535093 () Bool)

(assert (=> bs!1064673 m!5535093))

(declare-fun m!5535095 () Bool)

(assert (=> bs!1064673 m!5535095))

(assert (=> b!4655623 d!1476684))

(declare-fun d!1476686 () Bool)

(assert (=> d!1476686 (= (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40)))) (not (isEmpty!29005 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))))

(declare-fun bs!1064674 () Bool)

(assert (= bs!1064674 d!1476686))

(assert (=> bs!1064674 m!5534725))

(declare-fun m!5535097 () Bool)

(assert (=> bs!1064674 m!5535097))

(assert (=> b!4655623 d!1476686))

(declare-fun b!4655788 () Bool)

(declare-fun e!2904849 () Option!11822)

(assert (=> b!4655788 (= e!2904849 (Some!11821 (_2!29797 (h!58040 (toList!5209 lt!1818394)))))))

(declare-fun b!4655790 () Bool)

(declare-fun e!2904850 () Option!11822)

(assert (=> b!4655790 (= e!2904850 (getValueByKey!1610 (t!359136 (toList!5209 lt!1818394)) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4655791 () Bool)

(assert (=> b!4655791 (= e!2904850 None!11821)))

(declare-fun b!4655789 () Bool)

(assert (=> b!4655789 (= e!2904849 e!2904850)))

(declare-fun c!796897 () Bool)

(assert (=> b!4655789 (= c!796897 (and ((_ is Cons!51896) (toList!5209 lt!1818394)) (not (= (_1!29797 (h!58040 (toList!5209 lt!1818394))) (_1!29797 (h!58040 oldBucket!40))))))))

(declare-fun d!1476688 () Bool)

(declare-fun c!796896 () Bool)

(assert (=> d!1476688 (= c!796896 (and ((_ is Cons!51896) (toList!5209 lt!1818394)) (= (_1!29797 (h!58040 (toList!5209 lt!1818394))) (_1!29797 (h!58040 oldBucket!40)))))))

(assert (=> d!1476688 (= (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))) e!2904849)))

(assert (= (and d!1476688 c!796896) b!4655788))

(assert (= (and d!1476688 (not c!796896)) b!4655789))

(assert (= (and b!4655789 c!796897) b!4655790))

(assert (= (and b!4655789 (not c!796897)) b!4655791))

(declare-fun m!5535099 () Bool)

(assert (=> b!4655790 m!5535099))

(assert (=> b!4655623 d!1476688))

(declare-fun d!1476690 () Bool)

(assert (=> d!1476690 (contains!15039 (getKeysList!749 (toList!5209 lt!1818394)) (_1!29797 (h!58040 oldBucket!40)))))

(declare-fun lt!1818688 () Unit!118533)

(assert (=> d!1476690 (= lt!1818688 (choose!32006 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1476690 (invariantList!1298 (toList!5209 lt!1818394))))

(assert (=> d!1476690 (= (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))) lt!1818688)))

(declare-fun bs!1064675 () Bool)

(assert (= bs!1064675 d!1476690))

(assert (=> bs!1064675 m!5534719))

(assert (=> bs!1064675 m!5534719))

(declare-fun m!5535101 () Bool)

(assert (=> bs!1064675 m!5535101))

(declare-fun m!5535103 () Bool)

(assert (=> bs!1064675 m!5535103))

(assert (=> bs!1064675 m!5535095))

(assert (=> b!4655623 d!1476690))

(declare-fun b!4655792 () Bool)

(declare-fun e!2904851 () Option!11822)

(assert (=> b!4655792 (= e!2904851 (Some!11821 (_2!29797 (h!58040 (t!359136 (toList!5209 lt!1818236))))))))

(declare-fun b!4655794 () Bool)

(declare-fun e!2904852 () Option!11822)

(assert (=> b!4655794 (= e!2904852 (getValueByKey!1610 (t!359136 (t!359136 (toList!5209 lt!1818236))) key!4968))))

(declare-fun b!4655795 () Bool)

(assert (=> b!4655795 (= e!2904852 None!11821)))

(declare-fun b!4655793 () Bool)

(assert (=> b!4655793 (= e!2904851 e!2904852)))

(declare-fun c!796899 () Bool)

(assert (=> b!4655793 (= c!796899 (and ((_ is Cons!51896) (t!359136 (toList!5209 lt!1818236))) (not (= (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818236)))) key!4968))))))

(declare-fun d!1476692 () Bool)

(declare-fun c!796898 () Bool)

(assert (=> d!1476692 (= c!796898 (and ((_ is Cons!51896) (t!359136 (toList!5209 lt!1818236))) (= (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818236)))) key!4968)))))

(assert (=> d!1476692 (= (getValueByKey!1610 (t!359136 (toList!5209 lt!1818236)) key!4968) e!2904851)))

(assert (= (and d!1476692 c!796898) b!4655792))

(assert (= (and d!1476692 (not c!796898)) b!4655793))

(assert (= (and b!4655793 c!796899) b!4655794))

(assert (= (and b!4655793 (not c!796899)) b!4655795))

(declare-fun m!5535105 () Bool)

(assert (=> b!4655794 m!5535105))

(assert (=> b!4655694 d!1476692))

(declare-fun d!1476694 () Bool)

(declare-fun res!1957603 () Bool)

(declare-fun e!2904853 () Bool)

(assert (=> d!1476694 (=> res!1957603 e!2904853)))

(assert (=> d!1476694 (= res!1957603 ((_ is Nil!51896) (toList!5209 lt!1818237)))))

(assert (=> d!1476694 (= (forall!11026 (toList!5209 lt!1818237) lambda!199377) e!2904853)))

(declare-fun b!4655796 () Bool)

(declare-fun e!2904854 () Bool)

(assert (=> b!4655796 (= e!2904853 e!2904854)))

(declare-fun res!1957604 () Bool)

(assert (=> b!4655796 (=> (not res!1957604) (not e!2904854))))

(assert (=> b!4655796 (= res!1957604 (dynLambda!21590 lambda!199377 (h!58040 (toList!5209 lt!1818237))))))

(declare-fun b!4655797 () Bool)

(assert (=> b!4655797 (= e!2904854 (forall!11026 (t!359136 (toList!5209 lt!1818237)) lambda!199377))))

(assert (= (and d!1476694 (not res!1957603)) b!4655796))

(assert (= (and b!4655796 res!1957604) b!4655797))

(declare-fun b_lambda!174023 () Bool)

(assert (=> (not b_lambda!174023) (not b!4655796)))

(declare-fun m!5535107 () Bool)

(assert (=> b!4655796 m!5535107))

(declare-fun m!5535109 () Bool)

(assert (=> b!4655797 m!5535109))

(assert (=> d!1476594 d!1476694))

(declare-fun bs!1064676 () Bool)

(declare-fun d!1476696 () Bool)

(assert (= bs!1064676 (and d!1476696 d!1476352)))

(declare-fun lambda!199387 () Int)

(assert (=> bs!1064676 (not (= lambda!199387 lambda!199229))))

(declare-fun bs!1064677 () Bool)

(assert (= bs!1064677 (and d!1476696 b!4655328)))

(assert (=> bs!1064677 (= (= lt!1818237 lt!1818394) (= lambda!199387 lambda!199303))))

(declare-fun bs!1064678 () Bool)

(assert (= bs!1064678 (and d!1476696 d!1476386)))

(assert (=> bs!1064678 (not (= lambda!199387 lambda!199309))))

(declare-fun bs!1064679 () Bool)

(assert (= bs!1064679 (and d!1476696 d!1476560)))

(assert (=> bs!1064679 (= (= lt!1818237 lt!1818394) (= lambda!199387 lambda!199364))))

(assert (=> bs!1064677 (= lambda!199387 lambda!199302)))

(declare-fun bs!1064680 () Bool)

(assert (= bs!1064680 (and d!1476696 d!1476564)))

(assert (=> bs!1064680 (= (= lt!1818237 lt!1818624) (= lambda!199387 lambda!199368))))

(declare-fun bs!1064681 () Bool)

(assert (= bs!1064681 (and d!1476696 d!1476594)))

(assert (=> bs!1064681 (= lambda!199387 lambda!199377)))

(declare-fun bs!1064682 () Bool)

(assert (= bs!1064682 (and d!1476696 b!4655329)))

(assert (=> bs!1064682 (= lambda!199387 lambda!199301)))

(declare-fun bs!1064683 () Bool)

(assert (= bs!1064683 (and d!1476696 b!4655655)))

(assert (=> bs!1064683 (= (= lt!1818237 lt!1818625) (= lambda!199387 lambda!199367))))

(declare-fun bs!1064684 () Bool)

(assert (= bs!1064684 (and d!1476696 b!4655713)))

(assert (=> bs!1064684 (= (= lt!1818237 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199387 lambda!199379))))

(declare-fun bs!1064685 () Bool)

(assert (= bs!1064685 (and d!1476696 d!1476610)))

(assert (=> bs!1064685 (= (= lt!1818237 lt!1818659) (= lambda!199387 lambda!199381))))

(assert (=> bs!1064683 (= (= lt!1818237 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199387 lambda!199366))))

(declare-fun bs!1064686 () Bool)

(assert (= bs!1064686 (and d!1476696 b!4655656)))

(assert (=> bs!1064686 (= (= lt!1818237 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199387 lambda!199365))))

(declare-fun bs!1064687 () Bool)

(assert (= bs!1064687 (and d!1476696 d!1476356)))

(assert (=> bs!1064687 (= (= lt!1818237 lt!1818393) (= lambda!199387 lambda!199304))))

(declare-fun bs!1064688 () Bool)

(assert (= bs!1064688 (and d!1476696 b!4655714)))

(assert (=> bs!1064688 (= (= lt!1818237 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199387 lambda!199378))))

(assert (=> bs!1064684 (= (= lt!1818237 lt!1818660) (= lambda!199387 lambda!199380))))

(assert (=> d!1476696 true))

(assert (=> d!1476696 (forall!11026 (toList!5209 lt!1818237) lambda!199387)))

(assert (=> d!1476696 true))

(declare-fun _$58!725 () Unit!118533)

(assert (=> d!1476696 (= (choose!32007 lt!1818237) _$58!725)))

(declare-fun bs!1064689 () Bool)

(assert (= bs!1064689 d!1476696))

(declare-fun m!5535111 () Bool)

(assert (=> bs!1064689 m!5535111))

(assert (=> d!1476594 d!1476696))

(declare-fun d!1476698 () Bool)

(assert (=> d!1476698 (= (invariantList!1298 (toList!5209 lt!1818624)) (noDuplicatedKeys!351 (toList!5209 lt!1818624)))))

(declare-fun bs!1064690 () Bool)

(assert (= bs!1064690 d!1476698))

(declare-fun m!5535113 () Bool)

(assert (=> bs!1064690 m!5535113))

(assert (=> b!4655658 d!1476698))

(declare-fun d!1476700 () Bool)

(declare-fun res!1957605 () Bool)

(declare-fun e!2904855 () Bool)

(assert (=> d!1476700 (=> res!1957605 e!2904855)))

(assert (=> d!1476700 (= res!1957605 ((_ is Nil!51896) (_2!29798 (h!58041 lt!1818235))))))

(assert (=> d!1476700 (= (forall!11026 (_2!29798 (h!58041 lt!1818235)) lambda!199381) e!2904855)))

(declare-fun b!4655798 () Bool)

(declare-fun e!2904856 () Bool)

(assert (=> b!4655798 (= e!2904855 e!2904856)))

(declare-fun res!1957606 () Bool)

(assert (=> b!4655798 (=> (not res!1957606) (not e!2904856))))

(assert (=> b!4655798 (= res!1957606 (dynLambda!21590 lambda!199381 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(declare-fun b!4655799 () Bool)

(assert (=> b!4655799 (= e!2904856 (forall!11026 (t!359136 (_2!29798 (h!58041 lt!1818235))) lambda!199381))))

(assert (= (and d!1476700 (not res!1957605)) b!4655798))

(assert (= (and b!4655798 res!1957606) b!4655799))

(declare-fun b_lambda!174025 () Bool)

(assert (=> (not b_lambda!174025) (not b!4655798)))

(declare-fun m!5535115 () Bool)

(assert (=> b!4655798 m!5535115))

(declare-fun m!5535117 () Bool)

(assert (=> b!4655799 m!5535117))

(assert (=> d!1476610 d!1476700))

(assert (=> d!1476610 d!1476578))

(declare-fun d!1476702 () Bool)

(declare-fun res!1957607 () Bool)

(declare-fun e!2904857 () Bool)

(assert (=> d!1476702 (=> res!1957607 e!2904857)))

(assert (=> d!1476702 (= res!1957607 ((_ is Nil!51896) (t!359136 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))))))

(assert (=> d!1476702 (= (forall!11026 (t!359136 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))) (ite c!796811 lambda!199301 lambda!199303)) e!2904857)))

(declare-fun b!4655800 () Bool)

(declare-fun e!2904858 () Bool)

(assert (=> b!4655800 (= e!2904857 e!2904858)))

(declare-fun res!1957608 () Bool)

(assert (=> b!4655800 (=> (not res!1957608) (not e!2904858))))

(assert (=> b!4655800 (= res!1957608 (dynLambda!21590 (ite c!796811 lambda!199301 lambda!199303) (h!58040 (t!359136 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun b!4655801 () Bool)

(assert (=> b!4655801 (= e!2904858 (forall!11026 (t!359136 (t!359136 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (ite c!796811 lambda!199301 lambda!199303)))))

(assert (= (and d!1476702 (not res!1957607)) b!4655800))

(assert (= (and b!4655800 res!1957608) b!4655801))

(declare-fun b_lambda!174027 () Bool)

(assert (=> (not b_lambda!174027) (not b!4655800)))

(declare-fun m!5535119 () Bool)

(assert (=> b!4655800 m!5535119))

(declare-fun m!5535121 () Bool)

(assert (=> b!4655801 m!5535121))

(assert (=> b!4655677 d!1476702))

(assert (=> b!4655630 d!1476562))

(declare-fun d!1476704 () Bool)

(assert (=> d!1476704 (= (hash!3777 hashF!1389 (_1!29797 (h!58040 oldBucket!40))) (hash!3779 hashF!1389 (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun bs!1064691 () Bool)

(assert (= bs!1064691 d!1476704))

(declare-fun m!5535123 () Bool)

(assert (=> bs!1064691 m!5535123))

(assert (=> bs!1064657 d!1476704))

(declare-fun d!1476706 () Bool)

(declare-fun res!1957609 () Bool)

(declare-fun e!2904859 () Bool)

(assert (=> d!1476706 (=> res!1957609 e!2904859)))

(assert (=> d!1476706 (= res!1957609 ((_ is Nil!51896) (t!359136 (toList!5209 lt!1818389))))))

(assert (=> d!1476706 (= (forall!11026 (t!359136 (toList!5209 lt!1818389)) lambda!199303) e!2904859)))

(declare-fun b!4655802 () Bool)

(declare-fun e!2904860 () Bool)

(assert (=> b!4655802 (= e!2904859 e!2904860)))

(declare-fun res!1957610 () Bool)

(assert (=> b!4655802 (=> (not res!1957610) (not e!2904860))))

(assert (=> b!4655802 (= res!1957610 (dynLambda!21590 lambda!199303 (h!58040 (t!359136 (toList!5209 lt!1818389)))))))

(declare-fun b!4655803 () Bool)

(assert (=> b!4655803 (= e!2904860 (forall!11026 (t!359136 (t!359136 (toList!5209 lt!1818389))) lambda!199303))))

(assert (= (and d!1476706 (not res!1957609)) b!4655802))

(assert (= (and b!4655802 res!1957610) b!4655803))

(declare-fun b_lambda!174029 () Bool)

(assert (=> (not b_lambda!174029) (not b!4655802)))

(declare-fun m!5535125 () Bool)

(assert (=> b!4655802 m!5535125))

(declare-fun m!5535127 () Bool)

(assert (=> b!4655803 m!5535127))

(assert (=> b!4655660 d!1476706))

(declare-fun d!1476708 () Bool)

(assert (=> d!1476708 (dynLambda!21590 lambda!199367 (h!58040 (t!359136 oldBucket!40)))))

(declare-fun lt!1818689 () Unit!118533)

(assert (=> d!1476708 (= lt!1818689 (choose!32001 (toList!5209 lt!1818620) lambda!199367 (h!58040 (t!359136 oldBucket!40))))))

(declare-fun e!2904861 () Bool)

(assert (=> d!1476708 e!2904861))

(declare-fun res!1957611 () Bool)

(assert (=> d!1476708 (=> (not res!1957611) (not e!2904861))))

(assert (=> d!1476708 (= res!1957611 (forall!11026 (toList!5209 lt!1818620) lambda!199367))))

(assert (=> d!1476708 (= (forallContained!3226 (toList!5209 lt!1818620) lambda!199367 (h!58040 (t!359136 oldBucket!40))) lt!1818689)))

(declare-fun b!4655804 () Bool)

(assert (=> b!4655804 (= e!2904861 (contains!15041 (toList!5209 lt!1818620) (h!58040 (t!359136 oldBucket!40))))))

(assert (= (and d!1476708 res!1957611) b!4655804))

(declare-fun b_lambda!174031 () Bool)

(assert (=> (not b_lambda!174031) (not d!1476708)))

(declare-fun m!5535129 () Bool)

(assert (=> d!1476708 m!5535129))

(declare-fun m!5535131 () Bool)

(assert (=> d!1476708 m!5535131))

(assert (=> d!1476708 m!5534809))

(declare-fun m!5535133 () Bool)

(assert (=> b!4655804 m!5535133))

(assert (=> b!4655655 d!1476708))

(declare-fun d!1476710 () Bool)

(declare-fun res!1957612 () Bool)

(declare-fun e!2904862 () Bool)

(assert (=> d!1476710 (=> res!1957612 e!2904862)))

(assert (=> d!1476710 (= res!1957612 ((_ is Nil!51896) (toList!5209 lt!1818620)))))

(assert (=> d!1476710 (= (forall!11026 (toList!5209 lt!1818620) lambda!199367) e!2904862)))

(declare-fun b!4655805 () Bool)

(declare-fun e!2904863 () Bool)

(assert (=> b!4655805 (= e!2904862 e!2904863)))

(declare-fun res!1957613 () Bool)

(assert (=> b!4655805 (=> (not res!1957613) (not e!2904863))))

(assert (=> b!4655805 (= res!1957613 (dynLambda!21590 lambda!199367 (h!58040 (toList!5209 lt!1818620))))))

(declare-fun b!4655806 () Bool)

(assert (=> b!4655806 (= e!2904863 (forall!11026 (t!359136 (toList!5209 lt!1818620)) lambda!199367))))

(assert (= (and d!1476710 (not res!1957612)) b!4655805))

(assert (= (and b!4655805 res!1957613) b!4655806))

(declare-fun b_lambda!174033 () Bool)

(assert (=> (not b_lambda!174033) (not b!4655805)))

(declare-fun m!5535135 () Bool)

(assert (=> b!4655805 m!5535135))

(declare-fun m!5535137 () Bool)

(assert (=> b!4655806 m!5535137))

(assert (=> b!4655655 d!1476710))

(declare-fun bs!1064692 () Bool)

(declare-fun b!4655809 () Bool)

(assert (= bs!1064692 (and b!4655809 d!1476352)))

(declare-fun lambda!199388 () Int)

(assert (=> bs!1064692 (not (= lambda!199388 lambda!199229))))

(declare-fun bs!1064693 () Bool)

(assert (= bs!1064693 (and b!4655809 d!1476386)))

(assert (=> bs!1064693 (not (= lambda!199388 lambda!199309))))

(declare-fun bs!1064694 () Bool)

(assert (= bs!1064694 (and b!4655809 d!1476560)))

(assert (=> bs!1064694 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818394) (= lambda!199388 lambda!199364))))

(declare-fun bs!1064695 () Bool)

(assert (= bs!1064695 (and b!4655809 b!4655328)))

(assert (=> bs!1064695 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818237) (= lambda!199388 lambda!199302))))

(declare-fun bs!1064696 () Bool)

(assert (= bs!1064696 (and b!4655809 d!1476564)))

(assert (=> bs!1064696 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818624) (= lambda!199388 lambda!199368))))

(declare-fun bs!1064697 () Bool)

(assert (= bs!1064697 (and b!4655809 d!1476696)))

(assert (=> bs!1064697 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818237) (= lambda!199388 lambda!199387))))

(assert (=> bs!1064695 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818394) (= lambda!199388 lambda!199303))))

(declare-fun bs!1064698 () Bool)

(assert (= bs!1064698 (and b!4655809 d!1476594)))

(assert (=> bs!1064698 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818237) (= lambda!199388 lambda!199377))))

(declare-fun bs!1064699 () Bool)

(assert (= bs!1064699 (and b!4655809 b!4655329)))

(assert (=> bs!1064699 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818237) (= lambda!199388 lambda!199301))))

(declare-fun bs!1064700 () Bool)

(assert (= bs!1064700 (and b!4655809 b!4655655)))

(assert (=> bs!1064700 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818625) (= lambda!199388 lambda!199367))))

(declare-fun bs!1064701 () Bool)

(assert (= bs!1064701 (and b!4655809 b!4655713)))

(assert (=> bs!1064701 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199388 lambda!199379))))

(declare-fun bs!1064702 () Bool)

(assert (= bs!1064702 (and b!4655809 d!1476610)))

(assert (=> bs!1064702 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818659) (= lambda!199388 lambda!199381))))

(assert (=> bs!1064700 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199388 lambda!199366))))

(declare-fun bs!1064703 () Bool)

(assert (= bs!1064703 (and b!4655809 b!4655656)))

(assert (=> bs!1064703 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199388 lambda!199365))))

(declare-fun bs!1064704 () Bool)

(assert (= bs!1064704 (and b!4655809 d!1476356)))

(assert (=> bs!1064704 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818393) (= lambda!199388 lambda!199304))))

(declare-fun bs!1064705 () Bool)

(assert (= bs!1064705 (and b!4655809 b!4655714)))

(assert (=> bs!1064705 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199388 lambda!199378))))

(assert (=> bs!1064701 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818660) (= lambda!199388 lambda!199380))))

(assert (=> b!4655809 true))

(declare-fun bs!1064706 () Bool)

(declare-fun b!4655808 () Bool)

(assert (= bs!1064706 (and b!4655808 d!1476352)))

(declare-fun lambda!199389 () Int)

(assert (=> bs!1064706 (not (= lambda!199389 lambda!199229))))

(declare-fun bs!1064707 () Bool)

(assert (= bs!1064707 (and b!4655808 d!1476386)))

(assert (=> bs!1064707 (not (= lambda!199389 lambda!199309))))

(declare-fun bs!1064708 () Bool)

(assert (= bs!1064708 (and b!4655808 d!1476560)))

(assert (=> bs!1064708 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818394) (= lambda!199389 lambda!199364))))

(declare-fun bs!1064709 () Bool)

(assert (= bs!1064709 (and b!4655808 b!4655328)))

(assert (=> bs!1064709 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818237) (= lambda!199389 lambda!199302))))

(declare-fun bs!1064710 () Bool)

(assert (= bs!1064710 (and b!4655808 d!1476564)))

(assert (=> bs!1064710 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818624) (= lambda!199389 lambda!199368))))

(declare-fun bs!1064711 () Bool)

(assert (= bs!1064711 (and b!4655808 d!1476696)))

(assert (=> bs!1064711 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818237) (= lambda!199389 lambda!199387))))

(assert (=> bs!1064709 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818394) (= lambda!199389 lambda!199303))))

(declare-fun bs!1064712 () Bool)

(assert (= bs!1064712 (and b!4655808 d!1476594)))

(assert (=> bs!1064712 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818237) (= lambda!199389 lambda!199377))))

(declare-fun bs!1064713 () Bool)

(assert (= bs!1064713 (and b!4655808 b!4655329)))

(assert (=> bs!1064713 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818237) (= lambda!199389 lambda!199301))))

(declare-fun bs!1064714 () Bool)

(assert (= bs!1064714 (and b!4655808 b!4655655)))

(assert (=> bs!1064714 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818625) (= lambda!199389 lambda!199367))))

(declare-fun bs!1064715 () Bool)

(assert (= bs!1064715 (and b!4655808 b!4655713)))

(assert (=> bs!1064715 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199389 lambda!199379))))

(declare-fun bs!1064716 () Bool)

(assert (= bs!1064716 (and b!4655808 d!1476610)))

(assert (=> bs!1064716 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818659) (= lambda!199389 lambda!199381))))

(assert (=> bs!1064714 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199389 lambda!199366))))

(declare-fun bs!1064717 () Bool)

(assert (= bs!1064717 (and b!4655808 b!4655809)))

(assert (=> bs!1064717 (= lambda!199389 lambda!199388)))

(declare-fun bs!1064718 () Bool)

(assert (= bs!1064718 (and b!4655808 b!4655656)))

(assert (=> bs!1064718 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199389 lambda!199365))))

(declare-fun bs!1064719 () Bool)

(assert (= bs!1064719 (and b!4655808 d!1476356)))

(assert (=> bs!1064719 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818393) (= lambda!199389 lambda!199304))))

(declare-fun bs!1064720 () Bool)

(assert (= bs!1064720 (and b!4655808 b!4655714)))

(assert (=> bs!1064720 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199389 lambda!199378))))

(assert (=> bs!1064715 (= (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818660) (= lambda!199389 lambda!199380))))

(assert (=> b!4655808 true))

(declare-fun lambda!199390 () Int)

(declare-fun lt!1818710 () ListMap!4549)

(assert (=> b!4655808 (= (= lt!1818710 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199390 lambda!199389))))

(assert (=> bs!1064706 (not (= lambda!199390 lambda!199229))))

(assert (=> bs!1064707 (not (= lambda!199390 lambda!199309))))

(assert (=> bs!1064708 (= (= lt!1818710 lt!1818394) (= lambda!199390 lambda!199364))))

(assert (=> bs!1064709 (= (= lt!1818710 lt!1818237) (= lambda!199390 lambda!199302))))

(assert (=> bs!1064710 (= (= lt!1818710 lt!1818624) (= lambda!199390 lambda!199368))))

(assert (=> bs!1064711 (= (= lt!1818710 lt!1818237) (= lambda!199390 lambda!199387))))

(assert (=> bs!1064709 (= (= lt!1818710 lt!1818394) (= lambda!199390 lambda!199303))))

(assert (=> bs!1064712 (= (= lt!1818710 lt!1818237) (= lambda!199390 lambda!199377))))

(assert (=> bs!1064713 (= (= lt!1818710 lt!1818237) (= lambda!199390 lambda!199301))))

(assert (=> bs!1064714 (= (= lt!1818710 lt!1818625) (= lambda!199390 lambda!199367))))

(assert (=> bs!1064715 (= (= lt!1818710 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199390 lambda!199379))))

(assert (=> bs!1064716 (= (= lt!1818710 lt!1818659) (= lambda!199390 lambda!199381))))

(assert (=> bs!1064714 (= (= lt!1818710 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199390 lambda!199366))))

(assert (=> bs!1064717 (= (= lt!1818710 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199390 lambda!199388))))

(assert (=> bs!1064718 (= (= lt!1818710 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199390 lambda!199365))))

(assert (=> bs!1064719 (= (= lt!1818710 lt!1818393) (= lambda!199390 lambda!199304))))

(assert (=> bs!1064720 (= (= lt!1818710 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199390 lambda!199378))))

(assert (=> bs!1064715 (= (= lt!1818710 lt!1818660) (= lambda!199390 lambda!199380))))

(assert (=> b!4655808 true))

(declare-fun bs!1064721 () Bool)

(declare-fun d!1476712 () Bool)

(assert (= bs!1064721 (and d!1476712 b!4655808)))

(declare-fun lt!1818709 () ListMap!4549)

(declare-fun lambda!199391 () Int)

(assert (=> bs!1064721 (= (= lt!1818709 lt!1818710) (= lambda!199391 lambda!199390))))

(assert (=> bs!1064721 (= (= lt!1818709 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199391 lambda!199389))))

(declare-fun bs!1064722 () Bool)

(assert (= bs!1064722 (and d!1476712 d!1476352)))

(assert (=> bs!1064722 (not (= lambda!199391 lambda!199229))))

(declare-fun bs!1064723 () Bool)

(assert (= bs!1064723 (and d!1476712 d!1476386)))

(assert (=> bs!1064723 (not (= lambda!199391 lambda!199309))))

(declare-fun bs!1064724 () Bool)

(assert (= bs!1064724 (and d!1476712 d!1476560)))

(assert (=> bs!1064724 (= (= lt!1818709 lt!1818394) (= lambda!199391 lambda!199364))))

(declare-fun bs!1064725 () Bool)

(assert (= bs!1064725 (and d!1476712 b!4655328)))

(assert (=> bs!1064725 (= (= lt!1818709 lt!1818237) (= lambda!199391 lambda!199302))))

(declare-fun bs!1064726 () Bool)

(assert (= bs!1064726 (and d!1476712 d!1476564)))

(assert (=> bs!1064726 (= (= lt!1818709 lt!1818624) (= lambda!199391 lambda!199368))))

(declare-fun bs!1064727 () Bool)

(assert (= bs!1064727 (and d!1476712 d!1476696)))

(assert (=> bs!1064727 (= (= lt!1818709 lt!1818237) (= lambda!199391 lambda!199387))))

(assert (=> bs!1064725 (= (= lt!1818709 lt!1818394) (= lambda!199391 lambda!199303))))

(declare-fun bs!1064728 () Bool)

(assert (= bs!1064728 (and d!1476712 d!1476594)))

(assert (=> bs!1064728 (= (= lt!1818709 lt!1818237) (= lambda!199391 lambda!199377))))

(declare-fun bs!1064729 () Bool)

(assert (= bs!1064729 (and d!1476712 b!4655329)))

(assert (=> bs!1064729 (= (= lt!1818709 lt!1818237) (= lambda!199391 lambda!199301))))

(declare-fun bs!1064730 () Bool)

(assert (= bs!1064730 (and d!1476712 b!4655655)))

(assert (=> bs!1064730 (= (= lt!1818709 lt!1818625) (= lambda!199391 lambda!199367))))

(declare-fun bs!1064731 () Bool)

(assert (= bs!1064731 (and d!1476712 b!4655713)))

(assert (=> bs!1064731 (= (= lt!1818709 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199391 lambda!199379))))

(declare-fun bs!1064732 () Bool)

(assert (= bs!1064732 (and d!1476712 d!1476610)))

(assert (=> bs!1064732 (= (= lt!1818709 lt!1818659) (= lambda!199391 lambda!199381))))

(assert (=> bs!1064730 (= (= lt!1818709 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199391 lambda!199366))))

(declare-fun bs!1064733 () Bool)

(assert (= bs!1064733 (and d!1476712 b!4655809)))

(assert (=> bs!1064733 (= (= lt!1818709 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199391 lambda!199388))))

(declare-fun bs!1064734 () Bool)

(assert (= bs!1064734 (and d!1476712 b!4655656)))

(assert (=> bs!1064734 (= (= lt!1818709 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199391 lambda!199365))))

(declare-fun bs!1064735 () Bool)

(assert (= bs!1064735 (and d!1476712 d!1476356)))

(assert (=> bs!1064735 (= (= lt!1818709 lt!1818393) (= lambda!199391 lambda!199304))))

(declare-fun bs!1064736 () Bool)

(assert (= bs!1064736 (and d!1476712 b!4655714)))

(assert (=> bs!1064736 (= (= lt!1818709 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199391 lambda!199378))))

(assert (=> bs!1064731 (= (= lt!1818709 lt!1818660) (= lambda!199391 lambda!199380))))

(assert (=> d!1476712 true))

(declare-fun e!2904865 () Bool)

(assert (=> d!1476712 e!2904865))

(declare-fun res!1957614 () Bool)

(assert (=> d!1476712 (=> (not res!1957614) (not e!2904865))))

(assert (=> d!1476712 (= res!1957614 (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199391))))

(declare-fun e!2904864 () ListMap!4549)

(assert (=> d!1476712 (= lt!1818709 e!2904864)))

(declare-fun c!796900 () Bool)

(assert (=> d!1476712 (= c!796900 ((_ is Nil!51896) (t!359136 (t!359136 oldBucket!40))))))

(assert (=> d!1476712 (noDuplicateKeys!1640 (t!359136 (t!359136 oldBucket!40)))))

(assert (=> d!1476712 (= (addToMapMapFromBucket!1097 (t!359136 (t!359136 oldBucket!40)) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) lt!1818709)))

(declare-fun e!2904866 () Bool)

(declare-fun b!4655807 () Bool)

(assert (=> b!4655807 (= e!2904866 (forall!11026 (toList!5209 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) lambda!199390))))

(declare-fun bm!325351 () Bool)

(declare-fun call!325358 () Bool)

(assert (=> bm!325351 (= call!325358 (forall!11026 (ite c!796900 (toList!5209 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (t!359136 (t!359136 oldBucket!40))) (ite c!796900 lambda!199388 lambda!199390)))))

(declare-fun bm!325352 () Bool)

(declare-fun lt!1818705 () ListMap!4549)

(declare-fun call!325356 () Bool)

(assert (=> bm!325352 (= call!325356 (forall!11026 (ite c!796900 (toList!5209 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (toList!5209 lt!1818705)) (ite c!796900 lambda!199388 lambda!199390)))))

(assert (=> b!4655808 (= e!2904864 lt!1818710)))

(assert (=> b!4655808 (= lt!1818705 (+!1984 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (h!58040 (t!359136 (t!359136 oldBucket!40)))))))

(assert (=> b!4655808 (= lt!1818710 (addToMapMapFromBucket!1097 (t!359136 (t!359136 (t!359136 oldBucket!40))) (+!1984 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (h!58040 (t!359136 (t!359136 oldBucket!40))))))))

(declare-fun lt!1818690 () Unit!118533)

(declare-fun call!325357 () Unit!118533)

(assert (=> b!4655808 (= lt!1818690 call!325357)))

(assert (=> b!4655808 (forall!11026 (toList!5209 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) lambda!199389)))

(declare-fun lt!1818697 () Unit!118533)

(assert (=> b!4655808 (= lt!1818697 lt!1818690)))

(assert (=> b!4655808 (forall!11026 (toList!5209 lt!1818705) lambda!199390)))

(declare-fun lt!1818701 () Unit!118533)

(declare-fun Unit!118627 () Unit!118533)

(assert (=> b!4655808 (= lt!1818701 Unit!118627)))

(assert (=> b!4655808 (forall!11026 (t!359136 (t!359136 (t!359136 oldBucket!40))) lambda!199390)))

(declare-fun lt!1818700 () Unit!118533)

(declare-fun Unit!118628 () Unit!118533)

(assert (=> b!4655808 (= lt!1818700 Unit!118628)))

(declare-fun lt!1818703 () Unit!118533)

(declare-fun Unit!118629 () Unit!118533)

(assert (=> b!4655808 (= lt!1818703 Unit!118629)))

(declare-fun lt!1818708 () Unit!118533)

(assert (=> b!4655808 (= lt!1818708 (forallContained!3226 (toList!5209 lt!1818705) lambda!199390 (h!58040 (t!359136 (t!359136 oldBucket!40)))))))

(assert (=> b!4655808 (contains!15037 lt!1818705 (_1!29797 (h!58040 (t!359136 (t!359136 oldBucket!40)))))))

(declare-fun lt!1818693 () Unit!118533)

(declare-fun Unit!118630 () Unit!118533)

(assert (=> b!4655808 (= lt!1818693 Unit!118630)))

(assert (=> b!4655808 (contains!15037 lt!1818710 (_1!29797 (h!58040 (t!359136 (t!359136 oldBucket!40)))))))

(declare-fun lt!1818704 () Unit!118533)

(declare-fun Unit!118631 () Unit!118533)

(assert (=> b!4655808 (= lt!1818704 Unit!118631)))

(assert (=> b!4655808 (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199390)))

(declare-fun lt!1818692 () Unit!118533)

(declare-fun Unit!118632 () Unit!118533)

(assert (=> b!4655808 (= lt!1818692 Unit!118632)))

(assert (=> b!4655808 call!325356))

(declare-fun lt!1818698 () Unit!118533)

(declare-fun Unit!118633 () Unit!118533)

(assert (=> b!4655808 (= lt!1818698 Unit!118633)))

(declare-fun lt!1818696 () Unit!118533)

(declare-fun Unit!118634 () Unit!118533)

(assert (=> b!4655808 (= lt!1818696 Unit!118634)))

(declare-fun lt!1818706 () Unit!118533)

(assert (=> b!4655808 (= lt!1818706 (addForallContainsKeyThenBeforeAdding!597 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818710 (_1!29797 (h!58040 (t!359136 (t!359136 oldBucket!40)))) (_2!29797 (h!58040 (t!359136 (t!359136 oldBucket!40))))))))

(assert (=> b!4655808 (forall!11026 (toList!5209 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) lambda!199390)))

(declare-fun lt!1818694 () Unit!118533)

(assert (=> b!4655808 (= lt!1818694 lt!1818706)))

(assert (=> b!4655808 (forall!11026 (toList!5209 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) lambda!199390)))

(declare-fun lt!1818695 () Unit!118533)

(declare-fun Unit!118635 () Unit!118533)

(assert (=> b!4655808 (= lt!1818695 Unit!118635)))

(declare-fun res!1957615 () Bool)

(assert (=> b!4655808 (= res!1957615 call!325358)))

(assert (=> b!4655808 (=> (not res!1957615) (not e!2904866))))

(assert (=> b!4655808 e!2904866))

(declare-fun lt!1818691 () Unit!118533)

(declare-fun Unit!118636 () Unit!118533)

(assert (=> b!4655808 (= lt!1818691 Unit!118636)))

(declare-fun bm!325353 () Bool)

(assert (=> bm!325353 (= call!325357 (lemmaContainsAllItsOwnKeys!598 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> b!4655809 (= e!2904864 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))))))

(declare-fun lt!1818707 () Unit!118533)

(assert (=> b!4655809 (= lt!1818707 call!325357)))

(assert (=> b!4655809 call!325358))

(declare-fun lt!1818699 () Unit!118533)

(assert (=> b!4655809 (= lt!1818699 lt!1818707)))

(assert (=> b!4655809 call!325356))

(declare-fun lt!1818702 () Unit!118533)

(declare-fun Unit!118637 () Unit!118533)

(assert (=> b!4655809 (= lt!1818702 Unit!118637)))

(declare-fun b!4655810 () Bool)

(declare-fun res!1957616 () Bool)

(assert (=> b!4655810 (=> (not res!1957616) (not e!2904865))))

(assert (=> b!4655810 (= res!1957616 (forall!11026 (toList!5209 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) lambda!199391))))

(declare-fun b!4655811 () Bool)

(assert (=> b!4655811 (= e!2904865 (invariantList!1298 (toList!5209 lt!1818709)))))

(assert (= (and d!1476712 c!796900) b!4655809))

(assert (= (and d!1476712 (not c!796900)) b!4655808))

(assert (= (and b!4655808 res!1957615) b!4655807))

(assert (= (or b!4655809 b!4655808) bm!325353))

(assert (= (or b!4655809 b!4655808) bm!325351))

(assert (= (or b!4655809 b!4655808) bm!325352))

(assert (= (and d!1476712 res!1957614) b!4655810))

(assert (= (and b!4655810 res!1957616) b!4655811))

(declare-fun m!5535139 () Bool)

(assert (=> bm!325351 m!5535139))

(assert (=> b!4655808 m!5534791))

(declare-fun m!5535141 () Bool)

(assert (=> b!4655808 m!5535141))

(assert (=> b!4655808 m!5534791))

(declare-fun m!5535143 () Bool)

(assert (=> b!4655808 m!5535143))

(declare-fun m!5535145 () Bool)

(assert (=> b!4655808 m!5535145))

(assert (=> b!4655808 m!5535141))

(declare-fun m!5535147 () Bool)

(assert (=> b!4655808 m!5535147))

(declare-fun m!5535149 () Bool)

(assert (=> b!4655808 m!5535149))

(declare-fun m!5535151 () Bool)

(assert (=> b!4655808 m!5535151))

(declare-fun m!5535153 () Bool)

(assert (=> b!4655808 m!5535153))

(declare-fun m!5535155 () Bool)

(assert (=> b!4655808 m!5535155))

(declare-fun m!5535157 () Bool)

(assert (=> b!4655808 m!5535157))

(declare-fun m!5535159 () Bool)

(assert (=> b!4655808 m!5535159))

(assert (=> b!4655808 m!5535145))

(declare-fun m!5535161 () Bool)

(assert (=> b!4655808 m!5535161))

(assert (=> b!4655807 m!5535145))

(assert (=> bm!325353 m!5534791))

(declare-fun m!5535163 () Bool)

(assert (=> bm!325353 m!5535163))

(declare-fun m!5535165 () Bool)

(assert (=> b!4655811 m!5535165))

(declare-fun m!5535167 () Bool)

(assert (=> bm!325352 m!5535167))

(declare-fun m!5535169 () Bool)

(assert (=> b!4655810 m!5535169))

(declare-fun m!5535171 () Bool)

(assert (=> d!1476712 m!5535171))

(assert (=> d!1476712 m!5534713))

(assert (=> b!4655655 d!1476712))

(declare-fun d!1476714 () Bool)

(declare-fun res!1957617 () Bool)

(declare-fun e!2904867 () Bool)

(assert (=> d!1476714 (=> res!1957617 e!2904867)))

(assert (=> d!1476714 (= res!1957617 ((_ is Nil!51896) (t!359136 oldBucket!40)))))

(assert (=> d!1476714 (= (forall!11026 (t!359136 oldBucket!40) lambda!199367) e!2904867)))

(declare-fun b!4655812 () Bool)

(declare-fun e!2904868 () Bool)

(assert (=> b!4655812 (= e!2904867 e!2904868)))

(declare-fun res!1957618 () Bool)

(assert (=> b!4655812 (=> (not res!1957618) (not e!2904868))))

(assert (=> b!4655812 (= res!1957618 (dynLambda!21590 lambda!199367 (h!58040 (t!359136 oldBucket!40))))))

(declare-fun b!4655813 () Bool)

(assert (=> b!4655813 (= e!2904868 (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199367))))

(assert (= (and d!1476714 (not res!1957617)) b!4655812))

(assert (= (and b!4655812 res!1957618) b!4655813))

(declare-fun b_lambda!174035 () Bool)

(assert (=> (not b_lambda!174035) (not b!4655812)))

(assert (=> b!4655812 m!5535129))

(assert (=> b!4655813 m!5534811))

(assert (=> b!4655655 d!1476714))

(declare-fun bs!1064737 () Bool)

(declare-fun d!1476716 () Bool)

(assert (= bs!1064737 (and d!1476716 b!4655808)))

(declare-fun lambda!199392 () Int)

(assert (=> bs!1064737 (= (= lt!1818625 lt!1818710) (= lambda!199392 lambda!199390))))

(assert (=> bs!1064737 (= (= lt!1818625 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199392 lambda!199389))))

(declare-fun bs!1064738 () Bool)

(assert (= bs!1064738 (and d!1476716 d!1476352)))

(assert (=> bs!1064738 (not (= lambda!199392 lambda!199229))))

(declare-fun bs!1064739 () Bool)

(assert (= bs!1064739 (and d!1476716 d!1476386)))

(assert (=> bs!1064739 (not (= lambda!199392 lambda!199309))))

(declare-fun bs!1064740 () Bool)

(assert (= bs!1064740 (and d!1476716 d!1476560)))

(assert (=> bs!1064740 (= (= lt!1818625 lt!1818394) (= lambda!199392 lambda!199364))))

(declare-fun bs!1064741 () Bool)

(assert (= bs!1064741 (and d!1476716 b!4655328)))

(assert (=> bs!1064741 (= (= lt!1818625 lt!1818237) (= lambda!199392 lambda!199302))))

(declare-fun bs!1064742 () Bool)

(assert (= bs!1064742 (and d!1476716 d!1476564)))

(assert (=> bs!1064742 (= (= lt!1818625 lt!1818624) (= lambda!199392 lambda!199368))))

(declare-fun bs!1064743 () Bool)

(assert (= bs!1064743 (and d!1476716 d!1476696)))

(assert (=> bs!1064743 (= (= lt!1818625 lt!1818237) (= lambda!199392 lambda!199387))))

(assert (=> bs!1064741 (= (= lt!1818625 lt!1818394) (= lambda!199392 lambda!199303))))

(declare-fun bs!1064744 () Bool)

(assert (= bs!1064744 (and d!1476716 d!1476594)))

(assert (=> bs!1064744 (= (= lt!1818625 lt!1818237) (= lambda!199392 lambda!199377))))

(declare-fun bs!1064745 () Bool)

(assert (= bs!1064745 (and d!1476716 b!4655329)))

(assert (=> bs!1064745 (= (= lt!1818625 lt!1818237) (= lambda!199392 lambda!199301))))

(declare-fun bs!1064746 () Bool)

(assert (= bs!1064746 (and d!1476716 b!4655655)))

(assert (=> bs!1064746 (= lambda!199392 lambda!199367)))

(declare-fun bs!1064747 () Bool)

(assert (= bs!1064747 (and d!1476716 b!4655713)))

(assert (=> bs!1064747 (= (= lt!1818625 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199392 lambda!199379))))

(declare-fun bs!1064748 () Bool)

(assert (= bs!1064748 (and d!1476716 d!1476610)))

(assert (=> bs!1064748 (= (= lt!1818625 lt!1818659) (= lambda!199392 lambda!199381))))

(assert (=> bs!1064746 (= (= lt!1818625 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199392 lambda!199366))))

(declare-fun bs!1064749 () Bool)

(assert (= bs!1064749 (and d!1476716 b!4655809)))

(assert (=> bs!1064749 (= (= lt!1818625 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199392 lambda!199388))))

(declare-fun bs!1064750 () Bool)

(assert (= bs!1064750 (and d!1476716 d!1476712)))

(assert (=> bs!1064750 (= (= lt!1818625 lt!1818709) (= lambda!199392 lambda!199391))))

(declare-fun bs!1064751 () Bool)

(assert (= bs!1064751 (and d!1476716 b!4655656)))

(assert (=> bs!1064751 (= (= lt!1818625 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199392 lambda!199365))))

(declare-fun bs!1064752 () Bool)

(assert (= bs!1064752 (and d!1476716 d!1476356)))

(assert (=> bs!1064752 (= (= lt!1818625 lt!1818393) (= lambda!199392 lambda!199304))))

(declare-fun bs!1064753 () Bool)

(assert (= bs!1064753 (and d!1476716 b!4655714)))

(assert (=> bs!1064753 (= (= lt!1818625 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199392 lambda!199378))))

(assert (=> bs!1064747 (= (= lt!1818625 lt!1818660) (= lambda!199392 lambda!199380))))

(assert (=> d!1476716 true))

(assert (=> d!1476716 (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199392)))

(declare-fun lt!1818711 () Unit!118533)

(assert (=> d!1476716 (= lt!1818711 (choose!32002 (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818625 (_1!29797 (h!58040 (t!359136 oldBucket!40))) (_2!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> d!1476716 (forall!11026 (toList!5209 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (tuple2!53007 (_1!29797 (h!58040 (t!359136 oldBucket!40))) (_2!29797 (h!58040 (t!359136 oldBucket!40)))))) lambda!199392)))

(assert (=> d!1476716 (= (addForallContainsKeyThenBeforeAdding!597 (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818625 (_1!29797 (h!58040 (t!359136 oldBucket!40))) (_2!29797 (h!58040 (t!359136 oldBucket!40)))) lt!1818711)))

(declare-fun bs!1064754 () Bool)

(assert (= bs!1064754 d!1476716))

(declare-fun m!5535173 () Bool)

(assert (=> bs!1064754 m!5535173))

(assert (=> bs!1064754 m!5534243))

(declare-fun m!5535175 () Bool)

(assert (=> bs!1064754 m!5535175))

(assert (=> bs!1064754 m!5534243))

(declare-fun m!5535177 () Bool)

(assert (=> bs!1064754 m!5535177))

(declare-fun m!5535179 () Bool)

(assert (=> bs!1064754 m!5535179))

(assert (=> b!4655655 d!1476716))

(declare-fun d!1476718 () Bool)

(declare-fun e!2904869 () Bool)

(assert (=> d!1476718 e!2904869))

(declare-fun res!1957619 () Bool)

(assert (=> d!1476718 (=> (not res!1957619) (not e!2904869))))

(declare-fun lt!1818712 () ListMap!4549)

(assert (=> d!1476718 (= res!1957619 (contains!15037 lt!1818712 (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun lt!1818714 () List!52020)

(assert (=> d!1476718 (= lt!1818712 (ListMap!4550 lt!1818714))))

(declare-fun lt!1818715 () Unit!118533)

(declare-fun lt!1818713 () Unit!118533)

(assert (=> d!1476718 (= lt!1818715 lt!1818713)))

(assert (=> d!1476718 (= (getValueByKey!1610 lt!1818714 (_1!29797 (h!58040 (t!359136 oldBucket!40)))) (Some!11821 (_2!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> d!1476718 (= lt!1818713 (lemmaContainsTupThenGetReturnValue!924 lt!1818714 (_1!29797 (h!58040 (t!359136 oldBucket!40))) (_2!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> d!1476718 (= lt!1818714 (insertNoDuplicatedKeys!432 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (_1!29797 (h!58040 (t!359136 oldBucket!40))) (_2!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> d!1476718 (= (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) lt!1818712)))

(declare-fun b!4655814 () Bool)

(declare-fun res!1957620 () Bool)

(assert (=> b!4655814 (=> (not res!1957620) (not e!2904869))))

(assert (=> b!4655814 (= res!1957620 (= (getValueByKey!1610 (toList!5209 lt!1818712) (_1!29797 (h!58040 (t!359136 oldBucket!40)))) (Some!11821 (_2!29797 (h!58040 (t!359136 oldBucket!40))))))))

(declare-fun b!4655815 () Bool)

(assert (=> b!4655815 (= e!2904869 (contains!15041 (toList!5209 lt!1818712) (h!58040 (t!359136 oldBucket!40))))))

(assert (= (and d!1476718 res!1957619) b!4655814))

(assert (= (and b!4655814 res!1957620) b!4655815))

(declare-fun m!5535181 () Bool)

(assert (=> d!1476718 m!5535181))

(declare-fun m!5535183 () Bool)

(assert (=> d!1476718 m!5535183))

(declare-fun m!5535185 () Bool)

(assert (=> d!1476718 m!5535185))

(declare-fun m!5535187 () Bool)

(assert (=> d!1476718 m!5535187))

(declare-fun m!5535189 () Bool)

(assert (=> b!4655814 m!5535189))

(declare-fun m!5535191 () Bool)

(assert (=> b!4655815 m!5535191))

(assert (=> b!4655655 d!1476718))

(declare-fun d!1476720 () Bool)

(declare-fun res!1957621 () Bool)

(declare-fun e!2904870 () Bool)

(assert (=> d!1476720 (=> res!1957621 e!2904870)))

(assert (=> d!1476720 (= res!1957621 ((_ is Nil!51896) (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40)))))))

(assert (=> d!1476720 (= (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199366) e!2904870)))

(declare-fun b!4655816 () Bool)

(declare-fun e!2904871 () Bool)

(assert (=> b!4655816 (= e!2904870 e!2904871)))

(declare-fun res!1957622 () Bool)

(assert (=> b!4655816 (=> (not res!1957622) (not e!2904871))))

(assert (=> b!4655816 (= res!1957622 (dynLambda!21590 lambda!199366 (h!58040 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))))))))

(declare-fun b!4655817 () Bool)

(assert (=> b!4655817 (= e!2904871 (forall!11026 (t!359136 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40)))) lambda!199366))))

(assert (= (and d!1476720 (not res!1957621)) b!4655816))

(assert (= (and b!4655816 res!1957622) b!4655817))

(declare-fun b_lambda!174037 () Bool)

(assert (=> (not b_lambda!174037) (not b!4655816)))

(declare-fun m!5535193 () Bool)

(assert (=> b!4655816 m!5535193))

(declare-fun m!5535195 () Bool)

(assert (=> b!4655817 m!5535195))

(assert (=> b!4655655 d!1476720))

(declare-fun b!4655818 () Bool)

(declare-fun e!2904873 () Bool)

(assert (=> b!4655818 (= e!2904873 (not (contains!15039 (keys!18384 lt!1818625) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))))

(declare-fun b!4655819 () Bool)

(declare-fun e!2904874 () Bool)

(assert (=> b!4655819 (= e!2904874 (contains!15039 (keys!18384 lt!1818625) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun b!4655820 () Bool)

(declare-fun e!2904875 () Bool)

(assert (=> b!4655820 (= e!2904875 e!2904874)))

(declare-fun res!1957623 () Bool)

(assert (=> b!4655820 (=> (not res!1957623) (not e!2904874))))

(assert (=> b!4655820 (= res!1957623 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818625) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))))

(declare-fun b!4655821 () Bool)

(declare-fun e!2904877 () Unit!118533)

(declare-fun lt!1818716 () Unit!118533)

(assert (=> b!4655821 (= e!2904877 lt!1818716)))

(declare-fun lt!1818719 () Unit!118533)

(assert (=> b!4655821 (= lt!1818719 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818625) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> b!4655821 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818625) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun lt!1818717 () Unit!118533)

(assert (=> b!4655821 (= lt!1818717 lt!1818719)))

(assert (=> b!4655821 (= lt!1818716 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818625) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun call!325359 () Bool)

(assert (=> b!4655821 call!325359))

(declare-fun b!4655822 () Bool)

(declare-fun e!2904872 () List!52023)

(assert (=> b!4655822 (= e!2904872 (keys!18384 lt!1818625))))

(declare-fun b!4655823 () Bool)

(assert (=> b!4655823 (= e!2904872 (getKeysList!749 (toList!5209 lt!1818625)))))

(declare-fun d!1476722 () Bool)

(assert (=> d!1476722 e!2904875))

(declare-fun res!1957624 () Bool)

(assert (=> d!1476722 (=> res!1957624 e!2904875)))

(assert (=> d!1476722 (= res!1957624 e!2904873)))

(declare-fun res!1957625 () Bool)

(assert (=> d!1476722 (=> (not res!1957625) (not e!2904873))))

(declare-fun lt!1818718 () Bool)

(assert (=> d!1476722 (= res!1957625 (not lt!1818718))))

(declare-fun lt!1818723 () Bool)

(assert (=> d!1476722 (= lt!1818718 lt!1818723)))

(declare-fun lt!1818721 () Unit!118533)

(assert (=> d!1476722 (= lt!1818721 e!2904877)))

(declare-fun c!796901 () Bool)

(assert (=> d!1476722 (= c!796901 lt!1818723)))

(assert (=> d!1476722 (= lt!1818723 (containsKey!2726 (toList!5209 lt!1818625) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> d!1476722 (= (contains!15037 lt!1818625 (_1!29797 (h!58040 (t!359136 oldBucket!40)))) lt!1818718)))

(declare-fun bm!325354 () Bool)

(assert (=> bm!325354 (= call!325359 (contains!15039 e!2904872 (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun c!796903 () Bool)

(assert (=> bm!325354 (= c!796903 c!796901)))

(declare-fun b!4655824 () Bool)

(declare-fun e!2904876 () Unit!118533)

(declare-fun Unit!118640 () Unit!118533)

(assert (=> b!4655824 (= e!2904876 Unit!118640)))

(declare-fun b!4655825 () Bool)

(assert (=> b!4655825 (= e!2904877 e!2904876)))

(declare-fun c!796902 () Bool)

(assert (=> b!4655825 (= c!796902 call!325359)))

(declare-fun b!4655826 () Bool)

(assert (=> b!4655826 false))

(declare-fun lt!1818722 () Unit!118533)

(declare-fun lt!1818720 () Unit!118533)

(assert (=> b!4655826 (= lt!1818722 lt!1818720)))

(assert (=> b!4655826 (containsKey!2726 (toList!5209 lt!1818625) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))

(assert (=> b!4655826 (= lt!1818720 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818625) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun Unit!118641 () Unit!118533)

(assert (=> b!4655826 (= e!2904876 Unit!118641)))

(assert (= (and d!1476722 c!796901) b!4655821))

(assert (= (and d!1476722 (not c!796901)) b!4655825))

(assert (= (and b!4655825 c!796902) b!4655826))

(assert (= (and b!4655825 (not c!796902)) b!4655824))

(assert (= (or b!4655821 b!4655825) bm!325354))

(assert (= (and bm!325354 c!796903) b!4655823))

(assert (= (and bm!325354 (not c!796903)) b!4655822))

(assert (= (and d!1476722 res!1957625) b!4655818))

(assert (= (and d!1476722 (not res!1957624)) b!4655820))

(assert (= (and b!4655820 res!1957623) b!4655819))

(declare-fun m!5535197 () Bool)

(assert (=> b!4655822 m!5535197))

(declare-fun m!5535199 () Bool)

(assert (=> d!1476722 m!5535199))

(declare-fun m!5535201 () Bool)

(assert (=> b!4655823 m!5535201))

(declare-fun m!5535203 () Bool)

(assert (=> bm!325354 m!5535203))

(declare-fun m!5535205 () Bool)

(assert (=> b!4655821 m!5535205))

(declare-fun m!5535207 () Bool)

(assert (=> b!4655821 m!5535207))

(assert (=> b!4655821 m!5535207))

(declare-fun m!5535209 () Bool)

(assert (=> b!4655821 m!5535209))

(declare-fun m!5535211 () Bool)

(assert (=> b!4655821 m!5535211))

(assert (=> b!4655826 m!5535199))

(declare-fun m!5535213 () Bool)

(assert (=> b!4655826 m!5535213))

(assert (=> b!4655820 m!5535207))

(assert (=> b!4655820 m!5535207))

(assert (=> b!4655820 m!5535209))

(assert (=> b!4655819 m!5535197))

(assert (=> b!4655819 m!5535197))

(declare-fun m!5535215 () Bool)

(assert (=> b!4655819 m!5535215))

(assert (=> b!4655818 m!5535197))

(assert (=> b!4655818 m!5535197))

(assert (=> b!4655818 m!5535215))

(assert (=> b!4655655 d!1476722))

(declare-fun b!4655827 () Bool)

(declare-fun e!2904879 () Bool)

(assert (=> b!4655827 (= e!2904879 (not (contains!15039 (keys!18384 lt!1818620) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))))

(declare-fun b!4655828 () Bool)

(declare-fun e!2904880 () Bool)

(assert (=> b!4655828 (= e!2904880 (contains!15039 (keys!18384 lt!1818620) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun b!4655829 () Bool)

(declare-fun e!2904881 () Bool)

(assert (=> b!4655829 (= e!2904881 e!2904880)))

(declare-fun res!1957626 () Bool)

(assert (=> b!4655829 (=> (not res!1957626) (not e!2904880))))

(assert (=> b!4655829 (= res!1957626 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818620) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))))

(declare-fun b!4655830 () Bool)

(declare-fun e!2904883 () Unit!118533)

(declare-fun lt!1818724 () Unit!118533)

(assert (=> b!4655830 (= e!2904883 lt!1818724)))

(declare-fun lt!1818727 () Unit!118533)

(assert (=> b!4655830 (= lt!1818727 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818620) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> b!4655830 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818620) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun lt!1818725 () Unit!118533)

(assert (=> b!4655830 (= lt!1818725 lt!1818727)))

(assert (=> b!4655830 (= lt!1818724 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818620) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun call!325360 () Bool)

(assert (=> b!4655830 call!325360))

(declare-fun b!4655831 () Bool)

(declare-fun e!2904878 () List!52023)

(assert (=> b!4655831 (= e!2904878 (keys!18384 lt!1818620))))

(declare-fun b!4655832 () Bool)

(assert (=> b!4655832 (= e!2904878 (getKeysList!749 (toList!5209 lt!1818620)))))

(declare-fun d!1476724 () Bool)

(assert (=> d!1476724 e!2904881))

(declare-fun res!1957627 () Bool)

(assert (=> d!1476724 (=> res!1957627 e!2904881)))

(assert (=> d!1476724 (= res!1957627 e!2904879)))

(declare-fun res!1957628 () Bool)

(assert (=> d!1476724 (=> (not res!1957628) (not e!2904879))))

(declare-fun lt!1818726 () Bool)

(assert (=> d!1476724 (= res!1957628 (not lt!1818726))))

(declare-fun lt!1818731 () Bool)

(assert (=> d!1476724 (= lt!1818726 lt!1818731)))

(declare-fun lt!1818729 () Unit!118533)

(assert (=> d!1476724 (= lt!1818729 e!2904883)))

(declare-fun c!796904 () Bool)

(assert (=> d!1476724 (= c!796904 lt!1818731)))

(assert (=> d!1476724 (= lt!1818731 (containsKey!2726 (toList!5209 lt!1818620) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> d!1476724 (= (contains!15037 lt!1818620 (_1!29797 (h!58040 (t!359136 oldBucket!40)))) lt!1818726)))

(declare-fun bm!325355 () Bool)

(assert (=> bm!325355 (= call!325360 (contains!15039 e!2904878 (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun c!796906 () Bool)

(assert (=> bm!325355 (= c!796906 c!796904)))

(declare-fun b!4655833 () Bool)

(declare-fun e!2904882 () Unit!118533)

(declare-fun Unit!118644 () Unit!118533)

(assert (=> b!4655833 (= e!2904882 Unit!118644)))

(declare-fun b!4655834 () Bool)

(assert (=> b!4655834 (= e!2904883 e!2904882)))

(declare-fun c!796905 () Bool)

(assert (=> b!4655834 (= c!796905 call!325360)))

(declare-fun b!4655835 () Bool)

(assert (=> b!4655835 false))

(declare-fun lt!1818730 () Unit!118533)

(declare-fun lt!1818728 () Unit!118533)

(assert (=> b!4655835 (= lt!1818730 lt!1818728)))

(assert (=> b!4655835 (containsKey!2726 (toList!5209 lt!1818620) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))

(assert (=> b!4655835 (= lt!1818728 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818620) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun Unit!118645 () Unit!118533)

(assert (=> b!4655835 (= e!2904882 Unit!118645)))

(assert (= (and d!1476724 c!796904) b!4655830))

(assert (= (and d!1476724 (not c!796904)) b!4655834))

(assert (= (and b!4655834 c!796905) b!4655835))

(assert (= (and b!4655834 (not c!796905)) b!4655833))

(assert (= (or b!4655830 b!4655834) bm!325355))

(assert (= (and bm!325355 c!796906) b!4655832))

(assert (= (and bm!325355 (not c!796906)) b!4655831))

(assert (= (and d!1476724 res!1957628) b!4655827))

(assert (= (and d!1476724 (not res!1957627)) b!4655829))

(assert (= (and b!4655829 res!1957626) b!4655828))

(declare-fun m!5535217 () Bool)

(assert (=> b!4655831 m!5535217))

(declare-fun m!5535219 () Bool)

(assert (=> d!1476724 m!5535219))

(declare-fun m!5535221 () Bool)

(assert (=> b!4655832 m!5535221))

(declare-fun m!5535223 () Bool)

(assert (=> bm!325355 m!5535223))

(declare-fun m!5535225 () Bool)

(assert (=> b!4655830 m!5535225))

(declare-fun m!5535227 () Bool)

(assert (=> b!4655830 m!5535227))

(assert (=> b!4655830 m!5535227))

(declare-fun m!5535229 () Bool)

(assert (=> b!4655830 m!5535229))

(declare-fun m!5535231 () Bool)

(assert (=> b!4655830 m!5535231))

(assert (=> b!4655835 m!5535219))

(declare-fun m!5535233 () Bool)

(assert (=> b!4655835 m!5535233))

(assert (=> b!4655829 m!5535227))

(assert (=> b!4655829 m!5535227))

(assert (=> b!4655829 m!5535229))

(assert (=> b!4655828 m!5535217))

(assert (=> b!4655828 m!5535217))

(declare-fun m!5535235 () Bool)

(assert (=> b!4655828 m!5535235))

(assert (=> b!4655827 m!5535217))

(assert (=> b!4655827 m!5535217))

(assert (=> b!4655827 m!5535235))

(assert (=> b!4655655 d!1476724))

(declare-fun d!1476726 () Bool)

(declare-fun res!1957629 () Bool)

(declare-fun e!2904884 () Bool)

(assert (=> d!1476726 (=> res!1957629 e!2904884)))

(assert (=> d!1476726 (= res!1957629 ((_ is Nil!51896) (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40)))))))

(assert (=> d!1476726 (= (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199367) e!2904884)))

(declare-fun b!4655836 () Bool)

(declare-fun e!2904885 () Bool)

(assert (=> b!4655836 (= e!2904884 e!2904885)))

(declare-fun res!1957630 () Bool)

(assert (=> b!4655836 (=> (not res!1957630) (not e!2904885))))

(assert (=> b!4655836 (= res!1957630 (dynLambda!21590 lambda!199367 (h!58040 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))))))))

(declare-fun b!4655837 () Bool)

(assert (=> b!4655837 (= e!2904885 (forall!11026 (t!359136 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40)))) lambda!199367))))

(assert (= (and d!1476726 (not res!1957629)) b!4655836))

(assert (= (and b!4655836 res!1957630) b!4655837))

(declare-fun b_lambda!174039 () Bool)

(assert (=> (not b_lambda!174039) (not b!4655836)))

(declare-fun m!5535237 () Bool)

(assert (=> b!4655836 m!5535237))

(declare-fun m!5535239 () Bool)

(assert (=> b!4655837 m!5535239))

(assert (=> b!4655655 d!1476726))

(declare-fun d!1476728 () Bool)

(declare-fun res!1957631 () Bool)

(declare-fun e!2904886 () Bool)

(assert (=> d!1476728 (=> res!1957631 e!2904886)))

(assert (=> d!1476728 (= res!1957631 ((_ is Nil!51896) (t!359136 (t!359136 oldBucket!40))))))

(assert (=> d!1476728 (= (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199367) e!2904886)))

(declare-fun b!4655838 () Bool)

(declare-fun e!2904887 () Bool)

(assert (=> b!4655838 (= e!2904886 e!2904887)))

(declare-fun res!1957632 () Bool)

(assert (=> b!4655838 (=> (not res!1957632) (not e!2904887))))

(assert (=> b!4655838 (= res!1957632 (dynLambda!21590 lambda!199367 (h!58040 (t!359136 (t!359136 oldBucket!40)))))))

(declare-fun b!4655839 () Bool)

(assert (=> b!4655839 (= e!2904887 (forall!11026 (t!359136 (t!359136 (t!359136 oldBucket!40))) lambda!199367))))

(assert (= (and d!1476728 (not res!1957631)) b!4655838))

(assert (= (and b!4655838 res!1957632) b!4655839))

(declare-fun b_lambda!174041 () Bool)

(assert (=> (not b_lambda!174041) (not b!4655838)))

(declare-fun m!5535241 () Bool)

(assert (=> b!4655838 m!5535241))

(declare-fun m!5535243 () Bool)

(assert (=> b!4655839 m!5535243))

(assert (=> b!4655655 d!1476728))

(declare-fun bs!1064755 () Bool)

(declare-fun b!4655846 () Bool)

(assert (= bs!1064755 (and b!4655846 b!4655672)))

(declare-fun lambda!199393 () Int)

(assert (=> bs!1064755 (= (= (t!359136 (toList!5209 lt!1818389)) (toList!5209 lt!1818236)) (= lambda!199393 lambda!199373))))

(declare-fun bs!1064756 () Bool)

(assert (= bs!1064756 (and b!4655846 b!4655724)))

(assert (=> bs!1064756 (= (= (t!359136 (toList!5209 lt!1818389)) (toList!5209 lt!1818389)) (= lambda!199393 lambda!199383))))

(declare-fun bs!1064757 () Bool)

(assert (= bs!1064757 (and b!4655846 b!4655599)))

(assert (=> bs!1064757 (= (= (t!359136 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818236))) (= lambda!199393 lambda!199356))))

(declare-fun bs!1064758 () Bool)

(assert (= bs!1064758 (and b!4655846 b!4655595)))

(assert (=> bs!1064758 (= (= (t!359136 (toList!5209 lt!1818389)) (toList!5209 lt!1818236)) (= lambda!199393 lambda!199358))))

(declare-fun bs!1064759 () Bool)

(assert (= bs!1064759 (and b!4655846 b!4655601)))

(assert (=> bs!1064759 (= (= (t!359136 (toList!5209 lt!1818389)) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199393 lambda!199357))))

(assert (=> b!4655846 true))

(declare-fun bs!1064760 () Bool)

(declare-fun b!4655848 () Bool)

(assert (= bs!1064760 (and b!4655848 b!4655672)))

(declare-fun lambda!199394 () Int)

(assert (=> bs!1064760 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389))) (toList!5209 lt!1818236)) (= lambda!199394 lambda!199373))))

(declare-fun bs!1064761 () Bool)

(assert (= bs!1064761 (and b!4655848 b!4655724)))

(assert (=> bs!1064761 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389))) (toList!5209 lt!1818389)) (= lambda!199394 lambda!199383))))

(declare-fun bs!1064762 () Bool)

(assert (= bs!1064762 (and b!4655848 b!4655599)))

(assert (=> bs!1064762 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389))) (t!359136 (toList!5209 lt!1818236))) (= lambda!199394 lambda!199356))))

(declare-fun bs!1064763 () Bool)

(assert (= bs!1064763 (and b!4655848 b!4655595)))

(assert (=> bs!1064763 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389))) (toList!5209 lt!1818236)) (= lambda!199394 lambda!199358))))

(declare-fun bs!1064764 () Bool)

(assert (= bs!1064764 (and b!4655848 b!4655601)))

(assert (=> bs!1064764 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389))) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199394 lambda!199357))))

(declare-fun bs!1064765 () Bool)

(assert (= bs!1064765 (and b!4655848 b!4655846)))

(assert (=> bs!1064765 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389))) (t!359136 (toList!5209 lt!1818389))) (= lambda!199394 lambda!199393))))

(assert (=> b!4655848 true))

(declare-fun bs!1064766 () Bool)

(declare-fun b!4655842 () Bool)

(assert (= bs!1064766 (and b!4655842 b!4655672)))

(declare-fun lambda!199395 () Int)

(assert (=> bs!1064766 (= (= (toList!5209 lt!1818389) (toList!5209 lt!1818236)) (= lambda!199395 lambda!199373))))

(declare-fun bs!1064767 () Bool)

(assert (= bs!1064767 (and b!4655842 b!4655724)))

(assert (=> bs!1064767 (= lambda!199395 lambda!199383)))

(declare-fun bs!1064768 () Bool)

(assert (= bs!1064768 (and b!4655842 b!4655599)))

(assert (=> bs!1064768 (= (= (toList!5209 lt!1818389) (t!359136 (toList!5209 lt!1818236))) (= lambda!199395 lambda!199356))))

(declare-fun bs!1064769 () Bool)

(assert (= bs!1064769 (and b!4655842 b!4655595)))

(assert (=> bs!1064769 (= (= (toList!5209 lt!1818389) (toList!5209 lt!1818236)) (= lambda!199395 lambda!199358))))

(declare-fun bs!1064770 () Bool)

(assert (= bs!1064770 (and b!4655842 b!4655848)))

(assert (=> bs!1064770 (= (= (toList!5209 lt!1818389) (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389)))) (= lambda!199395 lambda!199394))))

(declare-fun bs!1064772 () Bool)

(assert (= bs!1064772 (and b!4655842 b!4655601)))

(assert (=> bs!1064772 (= (= (toList!5209 lt!1818389) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199395 lambda!199357))))

(declare-fun bs!1064773 () Bool)

(assert (= bs!1064773 (and b!4655842 b!4655846)))

(assert (=> bs!1064773 (= (= (toList!5209 lt!1818389) (t!359136 (toList!5209 lt!1818389))) (= lambda!199395 lambda!199393))))

(assert (=> b!4655842 true))

(declare-fun bs!1064775 () Bool)

(declare-fun b!4655845 () Bool)

(assert (= bs!1064775 (and b!4655845 b!4655598)))

(declare-fun lambda!199397 () Int)

(assert (=> bs!1064775 (= lambda!199397 lambda!199359)))

(declare-fun bs!1064776 () Bool)

(assert (= bs!1064776 (and b!4655845 b!4655673)))

(assert (=> bs!1064776 (= lambda!199397 lambda!199374)))

(declare-fun bs!1064778 () Bool)

(assert (= bs!1064778 (and b!4655845 b!4655725)))

(assert (=> bs!1064778 (= lambda!199397 lambda!199384)))

(declare-fun b!4655840 () Bool)

(declare-fun res!1957635 () Bool)

(declare-fun e!2904889 () Bool)

(assert (=> b!4655840 (=> (not res!1957635) (not e!2904889))))

(declare-fun lt!1818738 () List!52023)

(assert (=> b!4655840 (= res!1957635 (= (length!530 lt!1818738) (length!531 (toList!5209 lt!1818389))))))

(declare-fun b!4655841 () Bool)

(assert (=> b!4655841 false))

(declare-fun e!2904891 () Unit!118533)

(declare-fun Unit!118646 () Unit!118533)

(assert (=> b!4655841 (= e!2904891 Unit!118646)))

(declare-fun res!1957634 () Bool)

(assert (=> b!4655842 (=> (not res!1957634) (not e!2904889))))

(assert (=> b!4655842 (= res!1957634 (forall!11027 lt!1818738 lambda!199395))))

(declare-fun d!1476730 () Bool)

(assert (=> d!1476730 e!2904889))

(declare-fun res!1957633 () Bool)

(assert (=> d!1476730 (=> (not res!1957633) (not e!2904889))))

(assert (=> d!1476730 (= res!1957633 (noDuplicate!837 lt!1818738))))

(declare-fun e!2904890 () List!52023)

(assert (=> d!1476730 (= lt!1818738 e!2904890)))

(declare-fun c!796908 () Bool)

(assert (=> d!1476730 (= c!796908 ((_ is Cons!51896) (toList!5209 lt!1818389)))))

(assert (=> d!1476730 (invariantList!1298 (toList!5209 lt!1818389))))

(assert (=> d!1476730 (= (getKeysList!749 (toList!5209 lt!1818389)) lt!1818738)))

(declare-fun b!4655843 () Bool)

(declare-fun e!2904888 () Unit!118533)

(declare-fun Unit!118647 () Unit!118533)

(assert (=> b!4655843 (= e!2904888 Unit!118647)))

(declare-fun b!4655844 () Bool)

(declare-fun Unit!118648 () Unit!118533)

(assert (=> b!4655844 (= e!2904891 Unit!118648)))

(assert (=> b!4655845 (= e!2904889 (= (content!8994 lt!1818738) (content!8994 (map!11470 (toList!5209 lt!1818389) lambda!199397))))))

(assert (=> b!4655846 false))

(declare-fun lt!1818732 () Unit!118533)

(assert (=> b!4655846 (= lt!1818732 (forallContained!3227 (getKeysList!749 (t!359136 (toList!5209 lt!1818389))) lambda!199393 (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun Unit!118649 () Unit!118533)

(assert (=> b!4655846 (= e!2904888 Unit!118649)))

(declare-fun b!4655847 () Bool)

(assert (=> b!4655847 (= e!2904890 Nil!51899)))

(assert (=> b!4655848 (= e!2904890 (Cons!51899 (_1!29797 (h!58040 (toList!5209 lt!1818389))) (getKeysList!749 (t!359136 (toList!5209 lt!1818389)))))))

(declare-fun c!796909 () Bool)

(assert (=> b!4655848 (= c!796909 (containsKey!2726 (t!359136 (toList!5209 lt!1818389)) (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun lt!1818733 () Unit!118533)

(assert (=> b!4655848 (= lt!1818733 e!2904891)))

(declare-fun c!796907 () Bool)

(assert (=> b!4655848 (= c!796907 (contains!15039 (getKeysList!749 (t!359136 (toList!5209 lt!1818389))) (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun lt!1818734 () Unit!118533)

(assert (=> b!4655848 (= lt!1818734 e!2904888)))

(declare-fun lt!1818736 () List!52023)

(assert (=> b!4655848 (= lt!1818736 (getKeysList!749 (t!359136 (toList!5209 lt!1818389))))))

(declare-fun lt!1818737 () Unit!118533)

(assert (=> b!4655848 (= lt!1818737 (lemmaForallContainsAddHeadPreserves!257 (t!359136 (toList!5209 lt!1818389)) lt!1818736 (h!58040 (toList!5209 lt!1818389))))))

(assert (=> b!4655848 (forall!11027 lt!1818736 lambda!199394)))

(declare-fun lt!1818735 () Unit!118533)

(assert (=> b!4655848 (= lt!1818735 lt!1818737)))

(assert (= (and d!1476730 c!796908) b!4655848))

(assert (= (and d!1476730 (not c!796908)) b!4655847))

(assert (= (and b!4655848 c!796909) b!4655841))

(assert (= (and b!4655848 (not c!796909)) b!4655844))

(assert (= (and b!4655848 c!796907) b!4655846))

(assert (= (and b!4655848 (not c!796907)) b!4655843))

(assert (= (and d!1476730 res!1957633) b!4655840))

(assert (= (and b!4655840 res!1957635) b!4655842))

(assert (= (and b!4655842 res!1957634) b!4655845))

(declare-fun m!5535245 () Bool)

(assert (=> d!1476730 m!5535245))

(declare-fun m!5535247 () Bool)

(assert (=> d!1476730 m!5535247))

(declare-fun m!5535249 () Bool)

(assert (=> b!4655842 m!5535249))

(declare-fun m!5535251 () Bool)

(assert (=> b!4655846 m!5535251))

(assert (=> b!4655846 m!5535251))

(declare-fun m!5535253 () Bool)

(assert (=> b!4655846 m!5535253))

(declare-fun m!5535255 () Bool)

(assert (=> b!4655840 m!5535255))

(assert (=> b!4655840 m!5534979))

(assert (=> b!4655848 m!5535251))

(declare-fun m!5535257 () Bool)

(assert (=> b!4655848 m!5535257))

(declare-fun m!5535259 () Bool)

(assert (=> b!4655848 m!5535259))

(declare-fun m!5535261 () Bool)

(assert (=> b!4655848 m!5535261))

(assert (=> b!4655848 m!5535251))

(declare-fun m!5535263 () Bool)

(assert (=> b!4655848 m!5535263))

(declare-fun m!5535265 () Bool)

(assert (=> b!4655845 m!5535265))

(declare-fun m!5535267 () Bool)

(assert (=> b!4655845 m!5535267))

(assert (=> b!4655845 m!5535267))

(declare-fun m!5535269 () Bool)

(assert (=> b!4655845 m!5535269))

(assert (=> b!4655639 d!1476730))

(declare-fun d!1476734 () Bool)

(declare-fun res!1957639 () Bool)

(declare-fun e!2904895 () Bool)

(assert (=> d!1476734 (=> res!1957639 e!2904895)))

(assert (=> d!1476734 (= res!1957639 ((_ is Nil!51896) (toList!5209 (extractMap!1696 (t!359137 lt!1818235)))))))

(assert (=> d!1476734 (= (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199381) e!2904895)))

(declare-fun b!4655854 () Bool)

(declare-fun e!2904896 () Bool)

(assert (=> b!4655854 (= e!2904895 e!2904896)))

(declare-fun res!1957640 () Bool)

(assert (=> b!4655854 (=> (not res!1957640) (not e!2904896))))

(assert (=> b!4655854 (= res!1957640 (dynLambda!21590 lambda!199381 (h!58040 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))))))))

(declare-fun b!4655855 () Bool)

(assert (=> b!4655855 (= e!2904896 (forall!11026 (t!359136 (toList!5209 (extractMap!1696 (t!359137 lt!1818235)))) lambda!199381))))

(assert (= (and d!1476734 (not res!1957639)) b!4655854))

(assert (= (and b!4655854 res!1957640) b!4655855))

(declare-fun b_lambda!174043 () Bool)

(assert (=> (not b_lambda!174043) (not b!4655854)))

(declare-fun m!5535271 () Bool)

(assert (=> b!4655854 m!5535271))

(declare-fun m!5535273 () Bool)

(assert (=> b!4655855 m!5535273))

(assert (=> b!4655715 d!1476734))

(declare-fun d!1476736 () Bool)

(declare-fun res!1957641 () Bool)

(declare-fun e!2904897 () Bool)

(assert (=> d!1476736 (=> res!1957641 e!2904897)))

(assert (=> d!1476736 (= res!1957641 (and ((_ is Cons!51896) (toList!5209 lt!1818389)) (= (_1!29797 (h!58040 (toList!5209 lt!1818389))) (_1!29797 (h!58040 oldBucket!40)))))))

(assert (=> d!1476736 (= (containsKey!2726 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))) e!2904897)))

(declare-fun b!4655856 () Bool)

(declare-fun e!2904898 () Bool)

(assert (=> b!4655856 (= e!2904897 e!2904898)))

(declare-fun res!1957642 () Bool)

(assert (=> b!4655856 (=> (not res!1957642) (not e!2904898))))

(assert (=> b!4655856 (= res!1957642 ((_ is Cons!51896) (toList!5209 lt!1818389)))))

(declare-fun b!4655857 () Bool)

(assert (=> b!4655857 (= e!2904898 (containsKey!2726 (t!359136 (toList!5209 lt!1818389)) (_1!29797 (h!58040 oldBucket!40))))))

(assert (= (and d!1476736 (not res!1957641)) b!4655856))

(assert (= (and b!4655856 res!1957642) b!4655857))

(declare-fun m!5535275 () Bool)

(assert (=> b!4655857 m!5535275))

(assert (=> b!4655642 d!1476736))

(declare-fun d!1476738 () Bool)

(assert (=> d!1476738 (containsKey!2726 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40)))))

(declare-fun lt!1818760 () Unit!118533)

(assert (=> d!1476738 (= lt!1818760 (choose!31999 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1476738 (invariantList!1298 (toList!5209 lt!1818389))))

(assert (=> d!1476738 (= (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))) lt!1818760)))

(declare-fun bs!1064789 () Bool)

(assert (= bs!1064789 d!1476738))

(assert (=> bs!1064789 m!5534743))

(declare-fun m!5535277 () Bool)

(assert (=> bs!1064789 m!5535277))

(assert (=> bs!1064789 m!5535247))

(assert (=> b!4655642 d!1476738))

(assert (=> b!4655635 d!1476656))

(assert (=> b!4655635 d!1476642))

(declare-fun d!1476740 () Bool)

(declare-fun dynLambda!21592 (Int K!13250) Bool)

(assert (=> d!1476740 (dynLambda!21592 lambda!199356 (_1!29797 (h!58040 (toList!5209 lt!1818236))))))

(declare-fun lt!1818763 () Unit!118533)

(declare-fun choose!32009 (List!52023 Int K!13250) Unit!118533)

(assert (=> d!1476740 (= lt!1818763 (choose!32009 (getKeysList!749 (t!359136 (toList!5209 lt!1818236))) lambda!199356 (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(declare-fun e!2904901 () Bool)

(assert (=> d!1476740 e!2904901))

(declare-fun res!1957645 () Bool)

(assert (=> d!1476740 (=> (not res!1957645) (not e!2904901))))

(assert (=> d!1476740 (= res!1957645 (forall!11027 (getKeysList!749 (t!359136 (toList!5209 lt!1818236))) lambda!199356))))

(assert (=> d!1476740 (= (forallContained!3227 (getKeysList!749 (t!359136 (toList!5209 lt!1818236))) lambda!199356 (_1!29797 (h!58040 (toList!5209 lt!1818236)))) lt!1818763)))

(declare-fun b!4655860 () Bool)

(assert (=> b!4655860 (= e!2904901 (contains!15039 (getKeysList!749 (t!359136 (toList!5209 lt!1818236))) (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(assert (= (and d!1476740 res!1957645) b!4655860))

(declare-fun b_lambda!174045 () Bool)

(assert (=> (not b_lambda!174045) (not d!1476740)))

(declare-fun m!5535279 () Bool)

(assert (=> d!1476740 m!5535279))

(assert (=> d!1476740 m!5534677))

(declare-fun m!5535281 () Bool)

(assert (=> d!1476740 m!5535281))

(assert (=> d!1476740 m!5534677))

(declare-fun m!5535283 () Bool)

(assert (=> d!1476740 m!5535283))

(assert (=> b!4655860 m!5534677))

(assert (=> b!4655860 m!5534685))

(assert (=> b!4655599 d!1476740))

(declare-fun bs!1064804 () Bool)

(declare-fun b!4655867 () Bool)

(assert (= bs!1064804 (and b!4655867 b!4655672)))

(declare-fun lambda!199399 () Int)

(assert (=> bs!1064804 (= (= (t!359136 (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818236)) (= lambda!199399 lambda!199373))))

(declare-fun bs!1064805 () Bool)

(assert (= bs!1064805 (and b!4655867 b!4655599)))

(assert (=> bs!1064805 (= (= (t!359136 (t!359136 (toList!5209 lt!1818236))) (t!359136 (toList!5209 lt!1818236))) (= lambda!199399 lambda!199356))))

(declare-fun bs!1064806 () Bool)

(assert (= bs!1064806 (and b!4655867 b!4655595)))

(assert (=> bs!1064806 (= (= (t!359136 (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818236)) (= lambda!199399 lambda!199358))))

(declare-fun bs!1064807 () Bool)

(assert (= bs!1064807 (and b!4655867 b!4655848)))

(assert (=> bs!1064807 (= (= (t!359136 (t!359136 (toList!5209 lt!1818236))) (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389)))) (= lambda!199399 lambda!199394))))

(declare-fun bs!1064808 () Bool)

(assert (= bs!1064808 (and b!4655867 b!4655601)))

(assert (=> bs!1064808 (= (= (t!359136 (t!359136 (toList!5209 lt!1818236))) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199399 lambda!199357))))

(declare-fun bs!1064809 () Bool)

(assert (= bs!1064809 (and b!4655867 b!4655846)))

(assert (=> bs!1064809 (= (= (t!359136 (t!359136 (toList!5209 lt!1818236))) (t!359136 (toList!5209 lt!1818389))) (= lambda!199399 lambda!199393))))

(declare-fun bs!1064810 () Bool)

(assert (= bs!1064810 (and b!4655867 b!4655842)))

(assert (=> bs!1064810 (= (= (t!359136 (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818389)) (= lambda!199399 lambda!199395))))

(declare-fun bs!1064811 () Bool)

(assert (= bs!1064811 (and b!4655867 b!4655724)))

(assert (=> bs!1064811 (= (= (t!359136 (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818389)) (= lambda!199399 lambda!199383))))

(assert (=> b!4655867 true))

(declare-fun bs!1064812 () Bool)

(declare-fun b!4655869 () Bool)

(assert (= bs!1064812 (and b!4655869 b!4655672)))

(declare-fun lambda!199401 () Int)

(assert (=> bs!1064812 (= (= (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (toList!5209 lt!1818236)) (= lambda!199401 lambda!199373))))

(declare-fun bs!1064813 () Bool)

(assert (= bs!1064813 (and b!4655869 b!4655599)))

(assert (=> bs!1064813 (= (= (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (t!359136 (toList!5209 lt!1818236))) (= lambda!199401 lambda!199356))))

(declare-fun bs!1064814 () Bool)

(assert (= bs!1064814 (and b!4655869 b!4655867)))

(assert (=> bs!1064814 (= (= (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (= lambda!199401 lambda!199399))))

(declare-fun bs!1064815 () Bool)

(assert (= bs!1064815 (and b!4655869 b!4655595)))

(assert (=> bs!1064815 (= (= (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (toList!5209 lt!1818236)) (= lambda!199401 lambda!199358))))

(declare-fun bs!1064816 () Bool)

(assert (= bs!1064816 (and b!4655869 b!4655848)))

(assert (=> bs!1064816 (= (= (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389)))) (= lambda!199401 lambda!199394))))

(declare-fun bs!1064817 () Bool)

(assert (= bs!1064817 (and b!4655869 b!4655601)))

(assert (=> bs!1064817 (= (= (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199401 lambda!199357))))

(declare-fun bs!1064818 () Bool)

(assert (= bs!1064818 (and b!4655869 b!4655846)))

(assert (=> bs!1064818 (= (= (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (t!359136 (toList!5209 lt!1818389))) (= lambda!199401 lambda!199393))))

(declare-fun bs!1064819 () Bool)

(assert (= bs!1064819 (and b!4655869 b!4655842)))

(assert (=> bs!1064819 (= (= (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (toList!5209 lt!1818389)) (= lambda!199401 lambda!199395))))

(declare-fun bs!1064820 () Bool)

(assert (= bs!1064820 (and b!4655869 b!4655724)))

(assert (=> bs!1064820 (= (= (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (toList!5209 lt!1818389)) (= lambda!199401 lambda!199383))))

(assert (=> b!4655869 true))

(declare-fun bs!1064821 () Bool)

(declare-fun b!4655863 () Bool)

(assert (= bs!1064821 (and b!4655863 b!4655672)))

(declare-fun lambda!199402 () Int)

(assert (=> bs!1064821 (= (= (t!359136 (toList!5209 lt!1818236)) (toList!5209 lt!1818236)) (= lambda!199402 lambda!199373))))

(declare-fun bs!1064822 () Bool)

(assert (= bs!1064822 (and b!4655863 b!4655869)))

(assert (=> bs!1064822 (= (= (t!359136 (toList!5209 lt!1818236)) (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236))))) (= lambda!199402 lambda!199401))))

(declare-fun bs!1064823 () Bool)

(assert (= bs!1064823 (and b!4655863 b!4655599)))

(assert (=> bs!1064823 (= lambda!199402 lambda!199356)))

(declare-fun bs!1064824 () Bool)

(assert (= bs!1064824 (and b!4655863 b!4655867)))

(assert (=> bs!1064824 (= (= (t!359136 (toList!5209 lt!1818236)) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (= lambda!199402 lambda!199399))))

(declare-fun bs!1064825 () Bool)

(assert (= bs!1064825 (and b!4655863 b!4655595)))

(assert (=> bs!1064825 (= (= (t!359136 (toList!5209 lt!1818236)) (toList!5209 lt!1818236)) (= lambda!199402 lambda!199358))))

(declare-fun bs!1064826 () Bool)

(assert (= bs!1064826 (and b!4655863 b!4655848)))

(assert (=> bs!1064826 (= (= (t!359136 (toList!5209 lt!1818236)) (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389)))) (= lambda!199402 lambda!199394))))

(declare-fun bs!1064827 () Bool)

(assert (= bs!1064827 (and b!4655863 b!4655601)))

(assert (=> bs!1064827 (= (= (t!359136 (toList!5209 lt!1818236)) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199402 lambda!199357))))

(declare-fun bs!1064828 () Bool)

(assert (= bs!1064828 (and b!4655863 b!4655846)))

(assert (=> bs!1064828 (= (= (t!359136 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818389))) (= lambda!199402 lambda!199393))))

(declare-fun bs!1064829 () Bool)

(assert (= bs!1064829 (and b!4655863 b!4655842)))

(assert (=> bs!1064829 (= (= (t!359136 (toList!5209 lt!1818236)) (toList!5209 lt!1818389)) (= lambda!199402 lambda!199395))))

(declare-fun bs!1064830 () Bool)

(assert (= bs!1064830 (and b!4655863 b!4655724)))

(assert (=> bs!1064830 (= (= (t!359136 (toList!5209 lt!1818236)) (toList!5209 lt!1818389)) (= lambda!199402 lambda!199383))))

(assert (=> b!4655863 true))

(declare-fun bs!1064831 () Bool)

(declare-fun b!4655866 () Bool)

(assert (= bs!1064831 (and b!4655866 b!4655598)))

(declare-fun lambda!199403 () Int)

(assert (=> bs!1064831 (= lambda!199403 lambda!199359)))

(declare-fun bs!1064832 () Bool)

(assert (= bs!1064832 (and b!4655866 b!4655673)))

(assert (=> bs!1064832 (= lambda!199403 lambda!199374)))

(declare-fun bs!1064833 () Bool)

(assert (= bs!1064833 (and b!4655866 b!4655725)))

(assert (=> bs!1064833 (= lambda!199403 lambda!199384)))

(declare-fun bs!1064834 () Bool)

(assert (= bs!1064834 (and b!4655866 b!4655845)))

(assert (=> bs!1064834 (= lambda!199403 lambda!199397)))

(declare-fun b!4655861 () Bool)

(declare-fun res!1957648 () Bool)

(declare-fun e!2904903 () Bool)

(assert (=> b!4655861 (=> (not res!1957648) (not e!2904903))))

(declare-fun lt!1818770 () List!52023)

(assert (=> b!4655861 (= res!1957648 (= (length!530 lt!1818770) (length!531 (t!359136 (toList!5209 lt!1818236)))))))

(declare-fun b!4655862 () Bool)

(assert (=> b!4655862 false))

(declare-fun e!2904905 () Unit!118533)

(declare-fun Unit!118652 () Unit!118533)

(assert (=> b!4655862 (= e!2904905 Unit!118652)))

(declare-fun res!1957647 () Bool)

(assert (=> b!4655863 (=> (not res!1957647) (not e!2904903))))

(assert (=> b!4655863 (= res!1957647 (forall!11027 lt!1818770 lambda!199402))))

(declare-fun d!1476742 () Bool)

(assert (=> d!1476742 e!2904903))

(declare-fun res!1957646 () Bool)

(assert (=> d!1476742 (=> (not res!1957646) (not e!2904903))))

(assert (=> d!1476742 (= res!1957646 (noDuplicate!837 lt!1818770))))

(declare-fun e!2904904 () List!52023)

(assert (=> d!1476742 (= lt!1818770 e!2904904)))

(declare-fun c!796912 () Bool)

(assert (=> d!1476742 (= c!796912 ((_ is Cons!51896) (t!359136 (toList!5209 lt!1818236))))))

(assert (=> d!1476742 (invariantList!1298 (t!359136 (toList!5209 lt!1818236)))))

(assert (=> d!1476742 (= (getKeysList!749 (t!359136 (toList!5209 lt!1818236))) lt!1818770)))

(declare-fun b!4655864 () Bool)

(declare-fun e!2904902 () Unit!118533)

(declare-fun Unit!118653 () Unit!118533)

(assert (=> b!4655864 (= e!2904902 Unit!118653)))

(declare-fun b!4655865 () Bool)

(declare-fun Unit!118654 () Unit!118533)

(assert (=> b!4655865 (= e!2904905 Unit!118654)))

(assert (=> b!4655866 (= e!2904903 (= (content!8994 lt!1818770) (content!8994 (map!11470 (t!359136 (toList!5209 lt!1818236)) lambda!199403))))))

(assert (=> b!4655867 false))

(declare-fun lt!1818764 () Unit!118533)

(assert (=> b!4655867 (= lt!1818764 (forallContained!3227 (getKeysList!749 (t!359136 (t!359136 (toList!5209 lt!1818236)))) lambda!199399 (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818236))))))))

(declare-fun Unit!118655 () Unit!118533)

(assert (=> b!4655867 (= e!2904902 Unit!118655)))

(declare-fun b!4655868 () Bool)

(assert (=> b!4655868 (= e!2904904 Nil!51899)))

(assert (=> b!4655869 (= e!2904904 (Cons!51899 (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818236)))) (getKeysList!749 (t!359136 (t!359136 (toList!5209 lt!1818236))))))))

(declare-fun c!796913 () Bool)

(assert (=> b!4655869 (= c!796913 (containsKey!2726 (t!359136 (t!359136 (toList!5209 lt!1818236))) (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818236))))))))

(declare-fun lt!1818765 () Unit!118533)

(assert (=> b!4655869 (= lt!1818765 e!2904905)))

(declare-fun c!796911 () Bool)

(assert (=> b!4655869 (= c!796911 (contains!15039 (getKeysList!749 (t!359136 (t!359136 (toList!5209 lt!1818236)))) (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818236))))))))

(declare-fun lt!1818766 () Unit!118533)

(assert (=> b!4655869 (= lt!1818766 e!2904902)))

(declare-fun lt!1818768 () List!52023)

(assert (=> b!4655869 (= lt!1818768 (getKeysList!749 (t!359136 (t!359136 (toList!5209 lt!1818236)))))))

(declare-fun lt!1818769 () Unit!118533)

(assert (=> b!4655869 (= lt!1818769 (lemmaForallContainsAddHeadPreserves!257 (t!359136 (t!359136 (toList!5209 lt!1818236))) lt!1818768 (h!58040 (t!359136 (toList!5209 lt!1818236)))))))

(assert (=> b!4655869 (forall!11027 lt!1818768 lambda!199401)))

(declare-fun lt!1818767 () Unit!118533)

(assert (=> b!4655869 (= lt!1818767 lt!1818769)))

(assert (= (and d!1476742 c!796912) b!4655869))

(assert (= (and d!1476742 (not c!796912)) b!4655868))

(assert (= (and b!4655869 c!796913) b!4655862))

(assert (= (and b!4655869 (not c!796913)) b!4655865))

(assert (= (and b!4655869 c!796911) b!4655867))

(assert (= (and b!4655869 (not c!796911)) b!4655864))

(assert (= (and d!1476742 res!1957646) b!4655861))

(assert (= (and b!4655861 res!1957648) b!4655863))

(assert (= (and b!4655863 res!1957647) b!4655866))

(declare-fun m!5535285 () Bool)

(assert (=> d!1476742 m!5535285))

(declare-fun m!5535287 () Bool)

(assert (=> d!1476742 m!5535287))

(declare-fun m!5535289 () Bool)

(assert (=> b!4655863 m!5535289))

(declare-fun m!5535291 () Bool)

(assert (=> b!4655867 m!5535291))

(assert (=> b!4655867 m!5535291))

(declare-fun m!5535293 () Bool)

(assert (=> b!4655867 m!5535293))

(declare-fun m!5535295 () Bool)

(assert (=> b!4655861 m!5535295))

(declare-fun m!5535297 () Bool)

(assert (=> b!4655861 m!5535297))

(assert (=> b!4655869 m!5535291))

(declare-fun m!5535299 () Bool)

(assert (=> b!4655869 m!5535299))

(declare-fun m!5535301 () Bool)

(assert (=> b!4655869 m!5535301))

(declare-fun m!5535303 () Bool)

(assert (=> b!4655869 m!5535303))

(assert (=> b!4655869 m!5535291))

(declare-fun m!5535305 () Bool)

(assert (=> b!4655869 m!5535305))

(declare-fun m!5535307 () Bool)

(assert (=> b!4655866 m!5535307))

(declare-fun m!5535309 () Bool)

(assert (=> b!4655866 m!5535309))

(assert (=> b!4655866 m!5535309))

(declare-fun m!5535311 () Bool)

(assert (=> b!4655866 m!5535311))

(assert (=> b!4655599 d!1476742))

(declare-fun d!1476744 () Bool)

(declare-fun res!1957653 () Bool)

(declare-fun e!2904910 () Bool)

(assert (=> d!1476744 (=> res!1957653 e!2904910)))

(assert (=> d!1476744 (= res!1957653 ((_ is Nil!51899) lt!1818629))))

(assert (=> d!1476744 (= (forall!11027 lt!1818629 lambda!199373) e!2904910)))

(declare-fun b!4655874 () Bool)

(declare-fun e!2904911 () Bool)

(assert (=> b!4655874 (= e!2904910 e!2904911)))

(declare-fun res!1957654 () Bool)

(assert (=> b!4655874 (=> (not res!1957654) (not e!2904911))))

(assert (=> b!4655874 (= res!1957654 (dynLambda!21592 lambda!199373 (h!58045 lt!1818629)))))

(declare-fun b!4655875 () Bool)

(assert (=> b!4655875 (= e!2904911 (forall!11027 (t!359139 lt!1818629) lambda!199373))))

(assert (= (and d!1476744 (not res!1957653)) b!4655874))

(assert (= (and b!4655874 res!1957654) b!4655875))

(declare-fun b_lambda!174047 () Bool)

(assert (=> (not b_lambda!174047) (not b!4655874)))

(declare-fun m!5535313 () Bool)

(assert (=> b!4655874 m!5535313))

(declare-fun m!5535315 () Bool)

(assert (=> b!4655875 m!5535315))

(assert (=> b!4655672 d!1476744))

(declare-fun d!1476746 () Bool)

(declare-fun lt!1818771 () Bool)

(assert (=> d!1476746 (= lt!1818771 (select (content!8994 (getKeysList!749 (toList!5209 lt!1818236))) key!4968))))

(declare-fun e!2904913 () Bool)

(assert (=> d!1476746 (= lt!1818771 e!2904913)))

(declare-fun res!1957656 () Bool)

(assert (=> d!1476746 (=> (not res!1957656) (not e!2904913))))

(assert (=> d!1476746 (= res!1957656 ((_ is Cons!51899) (getKeysList!749 (toList!5209 lt!1818236))))))

(assert (=> d!1476746 (= (contains!15039 (getKeysList!749 (toList!5209 lt!1818236)) key!4968) lt!1818771)))

(declare-fun b!4655876 () Bool)

(declare-fun e!2904912 () Bool)

(assert (=> b!4655876 (= e!2904913 e!2904912)))

(declare-fun res!1957655 () Bool)

(assert (=> b!4655876 (=> res!1957655 e!2904912)))

(assert (=> b!4655876 (= res!1957655 (= (h!58045 (getKeysList!749 (toList!5209 lt!1818236))) key!4968))))

(declare-fun b!4655877 () Bool)

(assert (=> b!4655877 (= e!2904912 (contains!15039 (t!359139 (getKeysList!749 (toList!5209 lt!1818236))) key!4968))))

(assert (= (and d!1476746 res!1957656) b!4655876))

(assert (= (and b!4655876 (not res!1957655)) b!4655877))

(assert (=> d!1476746 m!5534287))

(declare-fun m!5535317 () Bool)

(assert (=> d!1476746 m!5535317))

(declare-fun m!5535319 () Bool)

(assert (=> d!1476746 m!5535319))

(declare-fun m!5535321 () Bool)

(assert (=> b!4655877 m!5535321))

(assert (=> d!1476588 d!1476746))

(assert (=> d!1476588 d!1476508))

(declare-fun d!1476748 () Bool)

(assert (=> d!1476748 (contains!15039 (getKeysList!749 (toList!5209 lt!1818236)) key!4968)))

(assert (=> d!1476748 true))

(declare-fun _$14!1529 () Unit!118533)

(assert (=> d!1476748 (= (choose!32006 (toList!5209 lt!1818236) key!4968) _$14!1529)))

(declare-fun bs!1064850 () Bool)

(assert (= bs!1064850 d!1476748))

(assert (=> bs!1064850 m!5534287))

(assert (=> bs!1064850 m!5534287))

(assert (=> bs!1064850 m!5534869))

(assert (=> d!1476588 d!1476748))

(declare-fun d!1476750 () Bool)

(assert (=> d!1476750 (= (invariantList!1298 (toList!5209 lt!1818236)) (noDuplicatedKeys!351 (toList!5209 lt!1818236)))))

(declare-fun bs!1064851 () Bool)

(assert (= bs!1064851 d!1476750))

(declare-fun m!5535323 () Bool)

(assert (=> bs!1064851 m!5535323))

(assert (=> d!1476588 d!1476750))

(declare-fun d!1476752 () Bool)

(declare-fun res!1957657 () Bool)

(declare-fun e!2904914 () Bool)

(assert (=> d!1476752 (=> res!1957657 e!2904914)))

(assert (=> d!1476752 (= res!1957657 ((_ is Nil!51896) (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (toList!5209 lt!1818655))))))

(assert (=> d!1476752 (= (forall!11026 (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (toList!5209 lt!1818655)) (ite c!796881 lambda!199378 lambda!199380)) e!2904914)))

(declare-fun b!4655878 () Bool)

(declare-fun e!2904915 () Bool)

(assert (=> b!4655878 (= e!2904914 e!2904915)))

(declare-fun res!1957658 () Bool)

(assert (=> b!4655878 (=> (not res!1957658) (not e!2904915))))

(assert (=> b!4655878 (= res!1957658 (dynLambda!21590 (ite c!796881 lambda!199378 lambda!199380) (h!58040 (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (toList!5209 lt!1818655)))))))

(declare-fun b!4655879 () Bool)

(assert (=> b!4655879 (= e!2904915 (forall!11026 (t!359136 (ite c!796881 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (toList!5209 lt!1818655))) (ite c!796881 lambda!199378 lambda!199380)))))

(assert (= (and d!1476752 (not res!1957657)) b!4655878))

(assert (= (and b!4655878 res!1957658) b!4655879))

(declare-fun b_lambda!174049 () Bool)

(assert (=> (not b_lambda!174049) (not b!4655878)))

(declare-fun m!5535325 () Bool)

(assert (=> b!4655878 m!5535325))

(declare-fun m!5535327 () Bool)

(assert (=> b!4655879 m!5535327))

(assert (=> bm!325347 d!1476752))

(declare-fun d!1476754 () Bool)

(declare-fun lt!1818772 () Bool)

(assert (=> d!1476754 (= lt!1818772 (select (content!8994 (t!359139 e!2904544)) key!4968))))

(declare-fun e!2904917 () Bool)

(assert (=> d!1476754 (= lt!1818772 e!2904917)))

(declare-fun res!1957660 () Bool)

(assert (=> d!1476754 (=> (not res!1957660) (not e!2904917))))

(assert (=> d!1476754 (= res!1957660 ((_ is Cons!51899) (t!359139 e!2904544)))))

(assert (=> d!1476754 (= (contains!15039 (t!359139 e!2904544) key!4968) lt!1818772)))

(declare-fun b!4655880 () Bool)

(declare-fun e!2904916 () Bool)

(assert (=> b!4655880 (= e!2904917 e!2904916)))

(declare-fun res!1957659 () Bool)

(assert (=> b!4655880 (=> res!1957659 e!2904916)))

(assert (=> b!4655880 (= res!1957659 (= (h!58045 (t!359139 e!2904544)) key!4968))))

(declare-fun b!4655881 () Bool)

(assert (=> b!4655881 (= e!2904916 (contains!15039 (t!359139 (t!359139 e!2904544)) key!4968))))

(assert (= (and d!1476754 res!1957660) b!4655880))

(assert (= (and b!4655880 (not res!1957659)) b!4655881))

(declare-fun m!5535329 () Bool)

(assert (=> d!1476754 m!5535329))

(declare-fun m!5535331 () Bool)

(assert (=> d!1476754 m!5535331))

(declare-fun m!5535333 () Bool)

(assert (=> b!4655881 m!5535333))

(assert (=> b!4655539 d!1476754))

(declare-fun d!1476756 () Bool)

(declare-fun lt!1818773 () Bool)

(assert (=> d!1476756 (= lt!1818773 (select (content!8994 (keys!18384 lt!1818394)) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun e!2904919 () Bool)

(assert (=> d!1476756 (= lt!1818773 e!2904919)))

(declare-fun res!1957662 () Bool)

(assert (=> d!1476756 (=> (not res!1957662) (not e!2904919))))

(assert (=> d!1476756 (= res!1957662 ((_ is Cons!51899) (keys!18384 lt!1818394)))))

(assert (=> d!1476756 (= (contains!15039 (keys!18384 lt!1818394) (_1!29797 (h!58040 oldBucket!40))) lt!1818773)))

(declare-fun b!4655882 () Bool)

(declare-fun e!2904918 () Bool)

(assert (=> b!4655882 (= e!2904919 e!2904918)))

(declare-fun res!1957661 () Bool)

(assert (=> b!4655882 (=> res!1957661 e!2904918)))

(assert (=> b!4655882 (= res!1957661 (= (h!58045 (keys!18384 lt!1818394)) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4655883 () Bool)

(assert (=> b!4655883 (= e!2904918 (contains!15039 (t!359139 (keys!18384 lt!1818394)) (_1!29797 (h!58040 oldBucket!40))))))

(assert (= (and d!1476756 res!1957662) b!4655882))

(assert (= (and b!4655882 (not res!1957661)) b!4655883))

(assert (=> d!1476756 m!5534715))

(declare-fun m!5535339 () Bool)

(assert (=> d!1476756 m!5535339))

(declare-fun m!5535341 () Bool)

(assert (=> d!1476756 m!5535341))

(declare-fun m!5535343 () Bool)

(assert (=> b!4655883 m!5535343))

(assert (=> b!4655620 d!1476756))

(declare-fun bs!1064852 () Bool)

(declare-fun b!4655885 () Bool)

(assert (= bs!1064852 (and b!4655885 b!4655672)))

(declare-fun lambda!199405 () Int)

(assert (=> bs!1064852 (= (= (toList!5209 lt!1818394) (toList!5209 lt!1818236)) (= lambda!199405 lambda!199373))))

(declare-fun bs!1064853 () Bool)

(assert (= bs!1064853 (and b!4655885 b!4655869)))

(assert (=> bs!1064853 (= (= (toList!5209 lt!1818394) (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236))))) (= lambda!199405 lambda!199401))))

(declare-fun bs!1064854 () Bool)

(assert (= bs!1064854 (and b!4655885 b!4655599)))

(assert (=> bs!1064854 (= (= (toList!5209 lt!1818394) (t!359136 (toList!5209 lt!1818236))) (= lambda!199405 lambda!199356))))

(declare-fun bs!1064855 () Bool)

(assert (= bs!1064855 (and b!4655885 b!4655867)))

(assert (=> bs!1064855 (= (= (toList!5209 lt!1818394) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (= lambda!199405 lambda!199399))))

(declare-fun bs!1064856 () Bool)

(assert (= bs!1064856 (and b!4655885 b!4655595)))

(assert (=> bs!1064856 (= (= (toList!5209 lt!1818394) (toList!5209 lt!1818236)) (= lambda!199405 lambda!199358))))

(declare-fun bs!1064857 () Bool)

(assert (= bs!1064857 (and b!4655885 b!4655848)))

(assert (=> bs!1064857 (= (= (toList!5209 lt!1818394) (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389)))) (= lambda!199405 lambda!199394))))

(declare-fun bs!1064858 () Bool)

(assert (= bs!1064858 (and b!4655885 b!4655846)))

(assert (=> bs!1064858 (= (= (toList!5209 lt!1818394) (t!359136 (toList!5209 lt!1818389))) (= lambda!199405 lambda!199393))))

(declare-fun bs!1064859 () Bool)

(assert (= bs!1064859 (and b!4655885 b!4655842)))

(assert (=> bs!1064859 (= (= (toList!5209 lt!1818394) (toList!5209 lt!1818389)) (= lambda!199405 lambda!199395))))

(declare-fun bs!1064860 () Bool)

(assert (= bs!1064860 (and b!4655885 b!4655724)))

(assert (=> bs!1064860 (= (= (toList!5209 lt!1818394) (toList!5209 lt!1818389)) (= lambda!199405 lambda!199383))))

(declare-fun bs!1064861 () Bool)

(assert (= bs!1064861 (and b!4655885 b!4655601)))

(assert (=> bs!1064861 (= (= (toList!5209 lt!1818394) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199405 lambda!199357))))

(declare-fun bs!1064862 () Bool)

(assert (= bs!1064862 (and b!4655885 b!4655863)))

(assert (=> bs!1064862 (= (= (toList!5209 lt!1818394) (t!359136 (toList!5209 lt!1818236))) (= lambda!199405 lambda!199402))))

(assert (=> b!4655885 true))

(declare-fun bs!1064863 () Bool)

(declare-fun b!4655886 () Bool)

(assert (= bs!1064863 (and b!4655886 b!4655598)))

(declare-fun lambda!199406 () Int)

(assert (=> bs!1064863 (= lambda!199406 lambda!199359)))

(declare-fun bs!1064864 () Bool)

(assert (= bs!1064864 (and b!4655886 b!4655866)))

(assert (=> bs!1064864 (= lambda!199406 lambda!199403)))

(declare-fun bs!1064865 () Bool)

(assert (= bs!1064865 (and b!4655886 b!4655725)))

(assert (=> bs!1064865 (= lambda!199406 lambda!199384)))

(declare-fun bs!1064866 () Bool)

(assert (= bs!1064866 (and b!4655886 b!4655845)))

(assert (=> bs!1064866 (= lambda!199406 lambda!199397)))

(declare-fun bs!1064867 () Bool)

(assert (= bs!1064867 (and b!4655886 b!4655673)))

(assert (=> bs!1064867 (= lambda!199406 lambda!199374)))

(declare-fun d!1476758 () Bool)

(declare-fun e!2904920 () Bool)

(assert (=> d!1476758 e!2904920))

(declare-fun res!1957665 () Bool)

(assert (=> d!1476758 (=> (not res!1957665) (not e!2904920))))

(declare-fun lt!1818774 () List!52023)

(assert (=> d!1476758 (= res!1957665 (noDuplicate!837 lt!1818774))))

(assert (=> d!1476758 (= lt!1818774 (getKeysList!749 (toList!5209 lt!1818394)))))

(assert (=> d!1476758 (= (keys!18384 lt!1818394) lt!1818774)))

(declare-fun b!4655884 () Bool)

(declare-fun res!1957663 () Bool)

(assert (=> b!4655884 (=> (not res!1957663) (not e!2904920))))

(assert (=> b!4655884 (= res!1957663 (= (length!530 lt!1818774) (length!531 (toList!5209 lt!1818394))))))

(declare-fun res!1957664 () Bool)

(assert (=> b!4655885 (=> (not res!1957664) (not e!2904920))))

(assert (=> b!4655885 (= res!1957664 (forall!11027 lt!1818774 lambda!199405))))

(assert (=> b!4655886 (= e!2904920 (= (content!8994 lt!1818774) (content!8994 (map!11470 (toList!5209 lt!1818394) lambda!199406))))))

(assert (= (and d!1476758 res!1957665) b!4655884))

(assert (= (and b!4655884 res!1957663) b!4655885))

(assert (= (and b!4655885 res!1957664) b!4655886))

(declare-fun m!5535375 () Bool)

(assert (=> d!1476758 m!5535375))

(assert (=> d!1476758 m!5534719))

(declare-fun m!5535377 () Bool)

(assert (=> b!4655884 m!5535377))

(declare-fun m!5535379 () Bool)

(assert (=> b!4655884 m!5535379))

(declare-fun m!5535381 () Bool)

(assert (=> b!4655885 m!5535381))

(declare-fun m!5535383 () Bool)

(assert (=> b!4655886 m!5535383))

(declare-fun m!5535385 () Bool)

(assert (=> b!4655886 m!5535385))

(assert (=> b!4655886 m!5535385))

(declare-fun m!5535387 () Bool)

(assert (=> b!4655886 m!5535387))

(assert (=> b!4655620 d!1476758))

(declare-fun d!1476762 () Bool)

(assert (=> d!1476762 (= (hash!3777 hashF!1389 (_1!29797 (h!58040 newBucket!224))) (hash!3779 hashF!1389 (_1!29797 (h!58040 newBucket!224))))))

(declare-fun bs!1064868 () Bool)

(assert (= bs!1064868 d!1476762))

(declare-fun m!5535389 () Bool)

(assert (=> bs!1064868 m!5535389))

(assert (=> bs!1064658 d!1476762))

(assert (=> b!4655624 d!1476758))

(declare-fun d!1476764 () Bool)

(declare-fun res!1957673 () Bool)

(declare-fun e!2904931 () Bool)

(assert (=> d!1476764 (=> res!1957673 e!2904931)))

(assert (=> d!1476764 (= res!1957673 (or ((_ is Nil!51896) (toList!5209 lt!1818397)) ((_ is Nil!51896) (t!359136 (toList!5209 lt!1818397)))))))

(assert (=> d!1476764 (= (noDuplicatedKeys!351 (toList!5209 lt!1818397)) e!2904931)))

(declare-fun b!4655900 () Bool)

(declare-fun e!2904932 () Bool)

(assert (=> b!4655900 (= e!2904931 e!2904932)))

(declare-fun res!1957674 () Bool)

(assert (=> b!4655900 (=> (not res!1957674) (not e!2904932))))

(assert (=> b!4655900 (= res!1957674 (not (containsKey!2726 (t!359136 (toList!5209 lt!1818397)) (_1!29797 (h!58040 (toList!5209 lt!1818397))))))))

(declare-fun b!4655901 () Bool)

(assert (=> b!4655901 (= e!2904932 (noDuplicatedKeys!351 (t!359136 (toList!5209 lt!1818397))))))

(assert (= (and d!1476764 (not res!1957673)) b!4655900))

(assert (= (and b!4655900 res!1957674) b!4655901))

(declare-fun m!5535411 () Bool)

(assert (=> b!4655900 m!5535411))

(declare-fun m!5535413 () Bool)

(assert (=> b!4655901 m!5535413))

(assert (=> d!1476590 d!1476764))

(declare-fun d!1476768 () Bool)

(declare-fun res!1957675 () Bool)

(declare-fun e!2904933 () Bool)

(assert (=> d!1476768 (=> res!1957675 e!2904933)))

(assert (=> d!1476768 (= res!1957675 ((_ is Nil!51899) lt!1818567))))

(assert (=> d!1476768 (= (forall!11027 lt!1818567 lambda!199358) e!2904933)))

(declare-fun b!4655902 () Bool)

(declare-fun e!2904934 () Bool)

(assert (=> b!4655902 (= e!2904933 e!2904934)))

(declare-fun res!1957676 () Bool)

(assert (=> b!4655902 (=> (not res!1957676) (not e!2904934))))

(assert (=> b!4655902 (= res!1957676 (dynLambda!21592 lambda!199358 (h!58045 lt!1818567)))))

(declare-fun b!4655903 () Bool)

(assert (=> b!4655903 (= e!2904934 (forall!11027 (t!359139 lt!1818567) lambda!199358))))

(assert (= (and d!1476768 (not res!1957675)) b!4655902))

(assert (= (and b!4655902 res!1957676) b!4655903))

(declare-fun b_lambda!174051 () Bool)

(assert (=> (not b_lambda!174051) (not b!4655902)))

(declare-fun m!5535415 () Bool)

(assert (=> b!4655902 m!5535415))

(declare-fun m!5535417 () Bool)

(assert (=> b!4655903 m!5535417))

(assert (=> b!4655595 d!1476768))

(declare-fun b!4655904 () Bool)

(declare-fun e!2904936 () Bool)

(assert (=> b!4655904 (= e!2904936 (not (contains!15039 (keys!18384 lt!1818598) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4655905 () Bool)

(declare-fun e!2904937 () Bool)

(assert (=> b!4655905 (= e!2904937 (contains!15039 (keys!18384 lt!1818598) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4655906 () Bool)

(declare-fun e!2904938 () Bool)

(assert (=> b!4655906 (= e!2904938 e!2904937)))

(declare-fun res!1957677 () Bool)

(assert (=> b!4655906 (=> (not res!1957677) (not e!2904937))))

(assert (=> b!4655906 (= res!1957677 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818598) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4655907 () Bool)

(declare-fun e!2904940 () Unit!118533)

(declare-fun lt!1818784 () Unit!118533)

(assert (=> b!4655907 (= e!2904940 lt!1818784)))

(declare-fun lt!1818787 () Unit!118533)

(assert (=> b!4655907 (= lt!1818787 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818598) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> b!4655907 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818598) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun lt!1818785 () Unit!118533)

(assert (=> b!4655907 (= lt!1818785 lt!1818787)))

(assert (=> b!4655907 (= lt!1818784 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818598) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun call!325365 () Bool)

(assert (=> b!4655907 call!325365))

(declare-fun b!4655908 () Bool)

(declare-fun e!2904935 () List!52023)

(assert (=> b!4655908 (= e!2904935 (keys!18384 lt!1818598))))

(declare-fun b!4655909 () Bool)

(assert (=> b!4655909 (= e!2904935 (getKeysList!749 (toList!5209 lt!1818598)))))

(declare-fun d!1476770 () Bool)

(assert (=> d!1476770 e!2904938))

(declare-fun res!1957678 () Bool)

(assert (=> d!1476770 (=> res!1957678 e!2904938)))

(assert (=> d!1476770 (= res!1957678 e!2904936)))

(declare-fun res!1957679 () Bool)

(assert (=> d!1476770 (=> (not res!1957679) (not e!2904936))))

(declare-fun lt!1818786 () Bool)

(assert (=> d!1476770 (= res!1957679 (not lt!1818786))))

(declare-fun lt!1818791 () Bool)

(assert (=> d!1476770 (= lt!1818786 lt!1818791)))

(declare-fun lt!1818789 () Unit!118533)

(assert (=> d!1476770 (= lt!1818789 e!2904940)))

(declare-fun c!796917 () Bool)

(assert (=> d!1476770 (= c!796917 lt!1818791)))

(assert (=> d!1476770 (= lt!1818791 (containsKey!2726 (toList!5209 lt!1818598) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1476770 (= (contains!15037 lt!1818598 (_1!29797 (h!58040 oldBucket!40))) lt!1818786)))

(declare-fun bm!325360 () Bool)

(assert (=> bm!325360 (= call!325365 (contains!15039 e!2904935 (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun c!796919 () Bool)

(assert (=> bm!325360 (= c!796919 c!796917)))

(declare-fun b!4655910 () Bool)

(declare-fun e!2904939 () Unit!118533)

(declare-fun Unit!118658 () Unit!118533)

(assert (=> b!4655910 (= e!2904939 Unit!118658)))

(declare-fun b!4655911 () Bool)

(assert (=> b!4655911 (= e!2904940 e!2904939)))

(declare-fun c!796918 () Bool)

(assert (=> b!4655911 (= c!796918 call!325365)))

(declare-fun b!4655912 () Bool)

(assert (=> b!4655912 false))

(declare-fun lt!1818790 () Unit!118533)

(declare-fun lt!1818788 () Unit!118533)

(assert (=> b!4655912 (= lt!1818790 lt!1818788)))

(assert (=> b!4655912 (containsKey!2726 (toList!5209 lt!1818598) (_1!29797 (h!58040 oldBucket!40)))))

(assert (=> b!4655912 (= lt!1818788 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818598) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun Unit!118659 () Unit!118533)

(assert (=> b!4655912 (= e!2904939 Unit!118659)))

(assert (= (and d!1476770 c!796917) b!4655907))

(assert (= (and d!1476770 (not c!796917)) b!4655911))

(assert (= (and b!4655911 c!796918) b!4655912))

(assert (= (and b!4655911 (not c!796918)) b!4655910))

(assert (= (or b!4655907 b!4655911) bm!325360))

(assert (= (and bm!325360 c!796919) b!4655909))

(assert (= (and bm!325360 (not c!796919)) b!4655908))

(assert (= (and d!1476770 res!1957679) b!4655904))

(assert (= (and d!1476770 (not res!1957678)) b!4655906))

(assert (= (and b!4655906 res!1957677) b!4655905))

(declare-fun m!5535419 () Bool)

(assert (=> b!4655908 m!5535419))

(declare-fun m!5535421 () Bool)

(assert (=> d!1476770 m!5535421))

(declare-fun m!5535423 () Bool)

(assert (=> b!4655909 m!5535423))

(declare-fun m!5535425 () Bool)

(assert (=> bm!325360 m!5535425))

(declare-fun m!5535427 () Bool)

(assert (=> b!4655907 m!5535427))

(assert (=> b!4655907 m!5534769))

(assert (=> b!4655907 m!5534769))

(declare-fun m!5535429 () Bool)

(assert (=> b!4655907 m!5535429))

(declare-fun m!5535431 () Bool)

(assert (=> b!4655907 m!5535431))

(assert (=> b!4655912 m!5535421))

(declare-fun m!5535433 () Bool)

(assert (=> b!4655912 m!5535433))

(assert (=> b!4655906 m!5534769))

(assert (=> b!4655906 m!5534769))

(assert (=> b!4655906 m!5535429))

(assert (=> b!4655905 m!5535419))

(assert (=> b!4655905 m!5535419))

(declare-fun m!5535435 () Bool)

(assert (=> b!4655905 m!5535435))

(assert (=> b!4655904 m!5535419))

(assert (=> b!4655904 m!5535419))

(assert (=> b!4655904 m!5535435))

(assert (=> d!1476556 d!1476770))

(declare-fun b!4655913 () Bool)

(declare-fun e!2904941 () Option!11822)

(assert (=> b!4655913 (= e!2904941 (Some!11821 (_2!29797 (h!58040 lt!1818600))))))

(declare-fun b!4655915 () Bool)

(declare-fun e!2904942 () Option!11822)

(assert (=> b!4655915 (= e!2904942 (getValueByKey!1610 (t!359136 lt!1818600) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4655916 () Bool)

(assert (=> b!4655916 (= e!2904942 None!11821)))

(declare-fun b!4655914 () Bool)

(assert (=> b!4655914 (= e!2904941 e!2904942)))

(declare-fun c!796921 () Bool)

(assert (=> b!4655914 (= c!796921 (and ((_ is Cons!51896) lt!1818600) (not (= (_1!29797 (h!58040 lt!1818600)) (_1!29797 (h!58040 oldBucket!40))))))))

(declare-fun d!1476772 () Bool)

(declare-fun c!796920 () Bool)

(assert (=> d!1476772 (= c!796920 (and ((_ is Cons!51896) lt!1818600) (= (_1!29797 (h!58040 lt!1818600)) (_1!29797 (h!58040 oldBucket!40)))))))

(assert (=> d!1476772 (= (getValueByKey!1610 lt!1818600 (_1!29797 (h!58040 oldBucket!40))) e!2904941)))

(assert (= (and d!1476772 c!796920) b!4655913))

(assert (= (and d!1476772 (not c!796920)) b!4655914))

(assert (= (and b!4655914 c!796921) b!4655915))

(assert (= (and b!4655914 (not c!796921)) b!4655916))

(declare-fun m!5535437 () Bool)

(assert (=> b!4655915 m!5535437))

(assert (=> d!1476556 d!1476772))

(declare-fun d!1476774 () Bool)

(assert (=> d!1476774 (= (getValueByKey!1610 lt!1818600 (_1!29797 (h!58040 oldBucket!40))) (Some!11821 (_2!29797 (h!58040 oldBucket!40))))))

(declare-fun lt!1818802 () Unit!118533)

(declare-fun choose!32010 (List!52020 K!13250 V!13496) Unit!118533)

(assert (=> d!1476774 (= lt!1818802 (choose!32010 lt!1818600 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))

(declare-fun e!2904953 () Bool)

(assert (=> d!1476774 e!2904953))

(declare-fun res!1957689 () Bool)

(assert (=> d!1476774 (=> (not res!1957689) (not e!2904953))))

(assert (=> d!1476774 (= res!1957689 (invariantList!1298 lt!1818600))))

(assert (=> d!1476774 (= (lemmaContainsTupThenGetReturnValue!924 lt!1818600 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))) lt!1818802)))

(declare-fun b!4655932 () Bool)

(declare-fun res!1957690 () Bool)

(assert (=> b!4655932 (=> (not res!1957690) (not e!2904953))))

(assert (=> b!4655932 (= res!1957690 (containsKey!2726 lt!1818600 (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4655933 () Bool)

(assert (=> b!4655933 (= e!2904953 (contains!15041 lt!1818600 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))))))

(assert (= (and d!1476774 res!1957689) b!4655932))

(assert (= (and b!4655932 res!1957690) b!4655933))

(assert (=> d!1476774 m!5534763))

(declare-fun m!5535451 () Bool)

(assert (=> d!1476774 m!5535451))

(declare-fun m!5535453 () Bool)

(assert (=> d!1476774 m!5535453))

(declare-fun m!5535455 () Bool)

(assert (=> b!4655932 m!5535455))

(declare-fun m!5535457 () Bool)

(assert (=> b!4655933 m!5535457))

(assert (=> d!1476556 d!1476774))

(declare-fun d!1476780 () Bool)

(declare-fun e!2904999 () Bool)

(assert (=> d!1476780 e!2904999))

(declare-fun res!1957730 () Bool)

(assert (=> d!1476780 (=> (not res!1957730) (not e!2904999))))

(declare-fun lt!1818847 () List!52020)

(assert (=> d!1476780 (= res!1957730 (invariantList!1298 lt!1818847))))

(declare-fun e!2905002 () List!52020)

(assert (=> d!1476780 (= lt!1818847 e!2905002)))

(declare-fun c!796940 () Bool)

(assert (=> d!1476780 (= c!796940 (and ((_ is Cons!51896) (toList!5209 lt!1818237)) (= (_1!29797 (h!58040 (toList!5209 lt!1818237))) (_1!29797 (h!58040 oldBucket!40)))))))

(assert (=> d!1476780 (invariantList!1298 (toList!5209 lt!1818237))))

(assert (=> d!1476780 (= (insertNoDuplicatedKeys!432 (toList!5209 lt!1818237) (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))) lt!1818847)))

(declare-fun b!4655999 () Bool)

(assert (=> b!4655999 (= e!2904999 (= (content!8994 (getKeysList!749 lt!1818847)) ((_ map or) (content!8994 (getKeysList!749 (toList!5209 lt!1818237))) (store ((as const (Array K!13250 Bool)) false) (_1!29797 (h!58040 oldBucket!40)) true))))))

(declare-fun lt!1818841 () List!52020)

(declare-fun bm!325370 () Bool)

(declare-fun call!325377 () List!52023)

(assert (=> bm!325370 (= call!325377 (getKeysList!749 (ite c!796940 (toList!5209 lt!1818237) lt!1818841)))))

(declare-fun b!4656000 () Bool)

(declare-fun res!1957733 () Bool)

(assert (=> b!4656000 (=> (not res!1957733) (not e!2904999))))

(assert (=> b!4656000 (= res!1957733 (containsKey!2726 lt!1818847 (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4656001 () Bool)

(declare-fun e!2905000 () List!52020)

(declare-fun call!325378 () List!52020)

(assert (=> b!4656001 (= e!2905000 call!325378)))

(declare-fun b!4656002 () Bool)

(declare-fun e!2905003 () List!52020)

(assert (=> b!4656002 (= e!2905003 (insertNoDuplicatedKeys!432 (t!359136 (toList!5209 lt!1818237)) (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4656003 () Bool)

(declare-fun res!1957732 () Bool)

(assert (=> b!4656003 (=> (not res!1957732) (not e!2904999))))

(assert (=> b!4656003 (= res!1957732 (contains!15041 lt!1818847 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4656004 () Bool)

(assert (=> b!4656004 (= e!2905003 Nil!51896)))

(declare-fun b!4656005 () Bool)

(declare-fun c!796941 () Bool)

(assert (=> b!4656005 (= c!796941 ((_ is Cons!51896) (toList!5209 lt!1818237)))))

(declare-fun e!2904998 () List!52020)

(assert (=> b!4656005 (= e!2904998 e!2905000)))

(declare-fun bm!325371 () Bool)

(declare-fun call!325375 () List!52020)

(assert (=> bm!325371 (= call!325378 call!325375)))

(declare-fun c!796939 () Bool)

(assert (=> bm!325371 (= c!796939 c!796941)))

(declare-fun b!4656006 () Bool)

(declare-fun lt!1818849 () List!52020)

(assert (=> b!4656006 (= e!2905000 lt!1818849)))

(assert (=> b!4656006 (= lt!1818849 call!325378)))

(declare-fun c!796942 () Bool)

(assert (=> b!4656006 (= c!796942 (containsKey!2726 (insertNoDuplicatedKeys!432 (t!359136 (toList!5209 lt!1818237)) (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun lt!1818845 () Unit!118533)

(declare-fun e!2905001 () Unit!118533)

(assert (=> b!4656006 (= lt!1818845 e!2905001)))

(declare-fun b!4656007 () Bool)

(declare-fun call!325376 () List!52020)

(assert (=> b!4656007 (= e!2905002 call!325376)))

(declare-fun lt!1818848 () List!52023)

(assert (=> b!4656007 (= lt!1818848 call!325377)))

(declare-fun lt!1818840 () Unit!118533)

(declare-fun lemmaSubseqRefl!130 (List!52023) Unit!118533)

(assert (=> b!4656007 (= lt!1818840 (lemmaSubseqRefl!130 lt!1818848))))

(declare-fun subseq!646 (List!52023 List!52023) Bool)

(assert (=> b!4656007 (subseq!646 lt!1818848 lt!1818848)))

(declare-fun lt!1818846 () Unit!118533)

(assert (=> b!4656007 (= lt!1818846 lt!1818840)))

(declare-fun b!4656008 () Bool)

(assert (=> b!4656008 (= e!2904998 call!325375)))

(declare-fun b!4656009 () Bool)

(declare-fun Unit!118660 () Unit!118533)

(assert (=> b!4656009 (= e!2905001 Unit!118660)))

(declare-fun b!4656010 () Bool)

(declare-fun e!2904997 () Bool)

(assert (=> b!4656010 (= e!2904997 (not (containsKey!2726 (toList!5209 lt!1818237) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun bm!325372 () Bool)

(declare-fun c!796938 () Bool)

(declare-fun $colon$colon!1063 (List!52020 tuple2!53006) List!52020)

(assert (=> bm!325372 (= call!325376 ($colon$colon!1063 (ite c!796940 (t!359136 (toList!5209 lt!1818237)) (ite c!796938 (toList!5209 lt!1818237) e!2905003)) (ite (or c!796940 c!796938) (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))) (ite c!796941 (h!58040 (toList!5209 lt!1818237)) (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))))))))

(declare-fun b!4656011 () Bool)

(assert (=> b!4656011 false))

(declare-fun lt!1818839 () Unit!118533)

(declare-fun lt!1818843 () Unit!118533)

(assert (=> b!4656011 (= lt!1818839 lt!1818843)))

(assert (=> b!4656011 (containsKey!2726 (t!359136 (toList!5209 lt!1818237)) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))

(assert (=> b!4656011 (= lt!1818843 (lemmaInGetKeysListThenContainsKey!748 (t!359136 (toList!5209 lt!1818237)) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun lt!1818844 () Unit!118533)

(declare-fun lt!1818842 () Unit!118533)

(assert (=> b!4656011 (= lt!1818844 lt!1818842)))

(assert (=> b!4656011 (contains!15039 call!325377 (_1!29797 (h!58040 (toList!5209 lt!1818237))))))

(assert (=> b!4656011 (= lt!1818842 (lemmaInListThenGetKeysListContains!744 lt!1818841 (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(assert (=> b!4656011 (= lt!1818841 (insertNoDuplicatedKeys!432 (t!359136 (toList!5209 lt!1818237)) (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))

(declare-fun Unit!118661 () Unit!118533)

(assert (=> b!4656011 (= e!2905001 Unit!118661)))

(declare-fun bm!325373 () Bool)

(assert (=> bm!325373 (= call!325375 call!325376)))

(declare-fun b!4656012 () Bool)

(assert (=> b!4656012 (= e!2905002 e!2904998)))

(declare-fun res!1957731 () Bool)

(assert (=> b!4656012 (= res!1957731 ((_ is Cons!51896) (toList!5209 lt!1818237)))))

(assert (=> b!4656012 (=> (not res!1957731) (not e!2904997))))

(assert (=> b!4656012 (= c!796938 e!2904997)))

(assert (= (and d!1476780 c!796940) b!4656007))

(assert (= (and d!1476780 (not c!796940)) b!4656012))

(assert (= (and b!4656012 res!1957731) b!4656010))

(assert (= (and b!4656012 c!796938) b!4656008))

(assert (= (and b!4656012 (not c!796938)) b!4656005))

(assert (= (and b!4656005 c!796941) b!4656006))

(assert (= (and b!4656005 (not c!796941)) b!4656001))

(assert (= (and b!4656006 c!796942) b!4656011))

(assert (= (and b!4656006 (not c!796942)) b!4656009))

(assert (= (or b!4656006 b!4656001) bm!325371))

(assert (= (and bm!325371 c!796939) b!4656002))

(assert (= (and bm!325371 (not c!796939)) b!4656004))

(assert (= (or b!4656008 bm!325371) bm!325373))

(assert (= (or b!4656007 b!4656011) bm!325370))

(assert (= (or b!4656007 bm!325373) bm!325372))

(assert (= (and d!1476780 res!1957730) b!4656000))

(assert (= (and b!4656000 res!1957733) b!4656003))

(assert (= (and b!4656003 res!1957732) b!4655999))

(declare-fun m!5535579 () Bool)

(assert (=> b!4656007 m!5535579))

(declare-fun m!5535583 () Bool)

(assert (=> b!4656007 m!5535583))

(declare-fun m!5535585 () Bool)

(assert (=> b!4656002 m!5535585))

(declare-fun m!5535587 () Bool)

(assert (=> b!4656010 m!5535587))

(declare-fun m!5535589 () Bool)

(assert (=> d!1476780 m!5535589))

(declare-fun m!5535591 () Bool)

(assert (=> d!1476780 m!5535591))

(declare-fun m!5535593 () Bool)

(assert (=> b!4656000 m!5535593))

(declare-fun m!5535595 () Bool)

(assert (=> b!4656003 m!5535595))

(assert (=> b!4655999 m!5535009))

(declare-fun m!5535597 () Bool)

(assert (=> b!4655999 m!5535597))

(declare-fun m!5535601 () Bool)

(assert (=> b!4655999 m!5535601))

(declare-fun m!5535603 () Bool)

(assert (=> b!4655999 m!5535603))

(declare-fun m!5535605 () Bool)

(assert (=> b!4655999 m!5535605))

(assert (=> b!4655999 m!5535009))

(assert (=> b!4655999 m!5535601))

(assert (=> b!4656011 m!5535585))

(declare-fun m!5535607 () Bool)

(assert (=> b!4656011 m!5535607))

(declare-fun m!5535609 () Bool)

(assert (=> b!4656011 m!5535609))

(declare-fun m!5535611 () Bool)

(assert (=> b!4656011 m!5535611))

(declare-fun m!5535613 () Bool)

(assert (=> b!4656011 m!5535613))

(declare-fun m!5535615 () Bool)

(assert (=> bm!325370 m!5535615))

(assert (=> b!4656006 m!5535585))

(assert (=> b!4656006 m!5535585))

(declare-fun m!5535617 () Bool)

(assert (=> b!4656006 m!5535617))

(declare-fun m!5535619 () Bool)

(assert (=> bm!325372 m!5535619))

(assert (=> d!1476556 d!1476780))

(assert (=> d!1476544 d!1476542))

(declare-fun d!1476824 () Bool)

(assert (=> d!1476824 (containsKey!2726 (toList!5209 lt!1818236) key!4968)))

(assert (=> d!1476824 true))

(declare-fun _$15!822 () Unit!118533)

(assert (=> d!1476824 (= (choose!31999 (toList!5209 lt!1818236) key!4968) _$15!822)))

(declare-fun bs!1064919 () Bool)

(assert (= bs!1064919 d!1476824))

(assert (=> bs!1064919 m!5534285))

(assert (=> d!1476544 d!1476824))

(assert (=> d!1476544 d!1476750))

(declare-fun d!1476830 () Bool)

(declare-fun c!796945 () Bool)

(assert (=> d!1476830 (= c!796945 ((_ is Nil!51899) (keys!18384 lt!1818236)))))

(declare-fun e!2905012 () (InoxSet K!13250))

(assert (=> d!1476830 (= (content!8994 (keys!18384 lt!1818236)) e!2905012)))

(declare-fun b!4656023 () Bool)

(assert (=> b!4656023 (= e!2905012 ((as const (Array K!13250 Bool)) false))))

(declare-fun b!4656024 () Bool)

(assert (=> b!4656024 (= e!2905012 ((_ map or) (store ((as const (Array K!13250 Bool)) false) (h!58045 (keys!18384 lt!1818236)) true) (content!8994 (t!359139 (keys!18384 lt!1818236)))))))

(assert (= (and d!1476830 c!796945) b!4656023))

(assert (= (and d!1476830 (not c!796945)) b!4656024))

(declare-fun m!5535629 () Bool)

(assert (=> b!4656024 m!5535629))

(assert (=> b!4656024 m!5535049))

(assert (=> d!1476570 d!1476830))

(declare-fun d!1476832 () Bool)

(declare-fun c!796946 () Bool)

(assert (=> d!1476832 (= c!796946 ((_ is Nil!51899) e!2904544))))

(declare-fun e!2905013 () (InoxSet K!13250))

(assert (=> d!1476832 (= (content!8994 e!2904544) e!2905013)))

(declare-fun b!4656025 () Bool)

(assert (=> b!4656025 (= e!2905013 ((as const (Array K!13250 Bool)) false))))

(declare-fun b!4656026 () Bool)

(assert (=> b!4656026 (= e!2905013 ((_ map or) (store ((as const (Array K!13250 Bool)) false) (h!58045 e!2904544) true) (content!8994 (t!359139 e!2904544))))))

(assert (= (and d!1476832 c!796946) b!4656025))

(assert (= (and d!1476832 (not c!796946)) b!4656026))

(declare-fun m!5535631 () Bool)

(assert (=> b!4656026 m!5535631))

(assert (=> b!4656026 m!5535329))

(assert (=> d!1476496 d!1476832))

(declare-fun d!1476834 () Bool)

(declare-fun lt!1818851 () Bool)

(assert (=> d!1476834 (= lt!1818851 (select (content!8994 e!2904738) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun e!2905015 () Bool)

(assert (=> d!1476834 (= lt!1818851 e!2905015)))

(declare-fun res!1957741 () Bool)

(assert (=> d!1476834 (=> (not res!1957741) (not e!2905015))))

(assert (=> d!1476834 (= res!1957741 ((_ is Cons!51899) e!2904738))))

(assert (=> d!1476834 (= (contains!15039 e!2904738 (_1!29797 (h!58040 oldBucket!40))) lt!1818851)))

(declare-fun b!4656027 () Bool)

(declare-fun e!2905014 () Bool)

(assert (=> b!4656027 (= e!2905015 e!2905014)))

(declare-fun res!1957740 () Bool)

(assert (=> b!4656027 (=> res!1957740 e!2905014)))

(assert (=> b!4656027 (= res!1957740 (= (h!58045 e!2904738) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4656028 () Bool)

(assert (=> b!4656028 (= e!2905014 (contains!15039 (t!359139 e!2904738) (_1!29797 (h!58040 oldBucket!40))))))

(assert (= (and d!1476834 res!1957741) b!4656027))

(assert (= (and b!4656027 (not res!1957740)) b!4656028))

(declare-fun m!5535637 () Bool)

(assert (=> d!1476834 m!5535637))

(declare-fun m!5535639 () Bool)

(assert (=> d!1476834 m!5535639))

(declare-fun m!5535641 () Bool)

(assert (=> b!4656028 m!5535641))

(assert (=> bm!325342 d!1476834))

(declare-fun d!1476838 () Bool)

(declare-fun res!1957742 () Bool)

(declare-fun e!2905016 () Bool)

(assert (=> d!1476838 (=> res!1957742 e!2905016)))

(assert (=> d!1476838 (= res!1957742 (and ((_ is Cons!51896) (t!359136 (t!359136 oldBucket!40))) (= (_1!29797 (h!58040 (t!359136 (t!359136 oldBucket!40)))) (_1!29797 (h!58040 oldBucket!40)))))))

(assert (=> d!1476838 (= (containsKey!2725 (t!359136 (t!359136 oldBucket!40)) (_1!29797 (h!58040 oldBucket!40))) e!2905016)))

(declare-fun b!4656029 () Bool)

(declare-fun e!2905017 () Bool)

(assert (=> b!4656029 (= e!2905016 e!2905017)))

(declare-fun res!1957743 () Bool)

(assert (=> b!4656029 (=> (not res!1957743) (not e!2905017))))

(assert (=> b!4656029 (= res!1957743 ((_ is Cons!51896) (t!359136 (t!359136 oldBucket!40))))))

(declare-fun b!4656030 () Bool)

(assert (=> b!4656030 (= e!2905017 (containsKey!2725 (t!359136 (t!359136 (t!359136 oldBucket!40))) (_1!29797 (h!58040 oldBucket!40))))))

(assert (= (and d!1476838 (not res!1957742)) b!4656029))

(assert (= (and b!4656029 res!1957743) b!4656030))

(declare-fun m!5535643 () Bool)

(assert (=> b!4656030 m!5535643))

(assert (=> b!4655679 d!1476838))

(declare-fun d!1476840 () Bool)

(declare-fun res!1957744 () Bool)

(declare-fun e!2905018 () Bool)

(assert (=> d!1476840 (=> res!1957744 e!2905018)))

(assert (=> d!1476840 (= res!1957744 ((_ is Nil!51896) (toList!5209 (extractMap!1696 (t!359137 lt!1818235)))))))

(assert (=> d!1476840 (= (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199380) e!2905018)))

(declare-fun b!4656031 () Bool)

(declare-fun e!2905019 () Bool)

(assert (=> b!4656031 (= e!2905018 e!2905019)))

(declare-fun res!1957745 () Bool)

(assert (=> b!4656031 (=> (not res!1957745) (not e!2905019))))

(assert (=> b!4656031 (= res!1957745 (dynLambda!21590 lambda!199380 (h!58040 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))))))))

(declare-fun b!4656032 () Bool)

(assert (=> b!4656032 (= e!2905019 (forall!11026 (t!359136 (toList!5209 (extractMap!1696 (t!359137 lt!1818235)))) lambda!199380))))

(assert (= (and d!1476840 (not res!1957744)) b!4656031))

(assert (= (and b!4656031 res!1957745) b!4656032))

(declare-fun b_lambda!174071 () Bool)

(assert (=> (not b_lambda!174071) (not b!4656031)))

(declare-fun m!5535645 () Bool)

(assert (=> b!4656031 m!5535645))

(declare-fun m!5535647 () Bool)

(assert (=> b!4656032 m!5535647))

(assert (=> b!4655713 d!1476840))

(declare-fun bs!1064926 () Bool)

(declare-fun d!1476842 () Bool)

(assert (= bs!1064926 (and d!1476842 b!4655808)))

(declare-fun lambda!199415 () Int)

(assert (=> bs!1064926 (= (= lt!1818660 lt!1818710) (= lambda!199415 lambda!199390))))

(assert (=> bs!1064926 (= (= lt!1818660 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199415 lambda!199389))))

(declare-fun bs!1064929 () Bool)

(assert (= bs!1064929 (and d!1476842 d!1476352)))

(assert (=> bs!1064929 (not (= lambda!199415 lambda!199229))))

(declare-fun bs!1064930 () Bool)

(assert (= bs!1064930 (and d!1476842 d!1476386)))

(assert (=> bs!1064930 (not (= lambda!199415 lambda!199309))))

(declare-fun bs!1064932 () Bool)

(assert (= bs!1064932 (and d!1476842 d!1476560)))

(assert (=> bs!1064932 (= (= lt!1818660 lt!1818394) (= lambda!199415 lambda!199364))))

(declare-fun bs!1064933 () Bool)

(assert (= bs!1064933 (and d!1476842 b!4655328)))

(assert (=> bs!1064933 (= (= lt!1818660 lt!1818237) (= lambda!199415 lambda!199302))))

(declare-fun bs!1064934 () Bool)

(assert (= bs!1064934 (and d!1476842 d!1476564)))

(assert (=> bs!1064934 (= (= lt!1818660 lt!1818624) (= lambda!199415 lambda!199368))))

(declare-fun bs!1064935 () Bool)

(assert (= bs!1064935 (and d!1476842 d!1476696)))

(assert (=> bs!1064935 (= (= lt!1818660 lt!1818237) (= lambda!199415 lambda!199387))))

(assert (=> bs!1064933 (= (= lt!1818660 lt!1818394) (= lambda!199415 lambda!199303))))

(declare-fun bs!1064938 () Bool)

(assert (= bs!1064938 (and d!1476842 d!1476594)))

(assert (=> bs!1064938 (= (= lt!1818660 lt!1818237) (= lambda!199415 lambda!199377))))

(declare-fun bs!1064939 () Bool)

(assert (= bs!1064939 (and d!1476842 b!4655329)))

(assert (=> bs!1064939 (= (= lt!1818660 lt!1818237) (= lambda!199415 lambda!199301))))

(declare-fun bs!1064940 () Bool)

(assert (= bs!1064940 (and d!1476842 b!4655655)))

(assert (=> bs!1064940 (= (= lt!1818660 lt!1818625) (= lambda!199415 lambda!199367))))

(declare-fun bs!1064941 () Bool)

(assert (= bs!1064941 (and d!1476842 b!4655713)))

(assert (=> bs!1064941 (= (= lt!1818660 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199415 lambda!199379))))

(declare-fun bs!1064942 () Bool)

(assert (= bs!1064942 (and d!1476842 d!1476716)))

(assert (=> bs!1064942 (= (= lt!1818660 lt!1818625) (= lambda!199415 lambda!199392))))

(declare-fun bs!1064944 () Bool)

(assert (= bs!1064944 (and d!1476842 d!1476610)))

(assert (=> bs!1064944 (= (= lt!1818660 lt!1818659) (= lambda!199415 lambda!199381))))

(assert (=> bs!1064940 (= (= lt!1818660 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199415 lambda!199366))))

(declare-fun bs!1064946 () Bool)

(assert (= bs!1064946 (and d!1476842 b!4655809)))

(assert (=> bs!1064946 (= (= lt!1818660 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199415 lambda!199388))))

(declare-fun bs!1064947 () Bool)

(assert (= bs!1064947 (and d!1476842 d!1476712)))

(assert (=> bs!1064947 (= (= lt!1818660 lt!1818709) (= lambda!199415 lambda!199391))))

(declare-fun bs!1064949 () Bool)

(assert (= bs!1064949 (and d!1476842 b!4655656)))

(assert (=> bs!1064949 (= (= lt!1818660 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199415 lambda!199365))))

(declare-fun bs!1064950 () Bool)

(assert (= bs!1064950 (and d!1476842 d!1476356)))

(assert (=> bs!1064950 (= (= lt!1818660 lt!1818393) (= lambda!199415 lambda!199304))))

(declare-fun bs!1064951 () Bool)

(assert (= bs!1064951 (and d!1476842 b!4655714)))

(assert (=> bs!1064951 (= (= lt!1818660 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199415 lambda!199378))))

(assert (=> bs!1064941 (= lambda!199415 lambda!199380)))

(assert (=> d!1476842 true))

(assert (=> d!1476842 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199415)))

(declare-fun lt!1818853 () Unit!118533)

(assert (=> d!1476842 (= lt!1818853 (choose!32002 (extractMap!1696 (t!359137 lt!1818235)) lt!1818660 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_2!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> d!1476842 (forall!11026 (toList!5209 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (tuple2!53007 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_2!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))) lambda!199415)))

(assert (=> d!1476842 (= (addForallContainsKeyThenBeforeAdding!597 (extractMap!1696 (t!359137 lt!1818235)) lt!1818660 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_2!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))) lt!1818853)))

(declare-fun bs!1064955 () Bool)

(assert (= bs!1064955 d!1476842))

(declare-fun m!5535649 () Bool)

(assert (=> bs!1064955 m!5535649))

(assert (=> bs!1064955 m!5534307))

(declare-fun m!5535651 () Bool)

(assert (=> bs!1064955 m!5535651))

(assert (=> bs!1064955 m!5534307))

(declare-fun m!5535655 () Bool)

(assert (=> bs!1064955 m!5535655))

(declare-fun m!5535657 () Bool)

(assert (=> bs!1064955 m!5535657))

(assert (=> b!4655713 d!1476842))

(declare-fun d!1476844 () Bool)

(declare-fun res!1957746 () Bool)

(declare-fun e!2905020 () Bool)

(assert (=> d!1476844 (=> res!1957746 e!2905020)))

(assert (=> d!1476844 (= res!1957746 ((_ is Nil!51896) (toList!5209 (extractMap!1696 (t!359137 lt!1818235)))))))

(assert (=> d!1476844 (= (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199379) e!2905020)))

(declare-fun b!4656033 () Bool)

(declare-fun e!2905021 () Bool)

(assert (=> b!4656033 (= e!2905020 e!2905021)))

(declare-fun res!1957747 () Bool)

(assert (=> b!4656033 (=> (not res!1957747) (not e!2905021))))

(assert (=> b!4656033 (= res!1957747 (dynLambda!21590 lambda!199379 (h!58040 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))))))))

(declare-fun b!4656034 () Bool)

(assert (=> b!4656034 (= e!2905021 (forall!11026 (t!359136 (toList!5209 (extractMap!1696 (t!359137 lt!1818235)))) lambda!199379))))

(assert (= (and d!1476844 (not res!1957746)) b!4656033))

(assert (= (and b!4656033 res!1957747) b!4656034))

(declare-fun b_lambda!174073 () Bool)

(assert (=> (not b_lambda!174073) (not b!4656033)))

(declare-fun m!5535661 () Bool)

(assert (=> b!4656033 m!5535661))

(declare-fun m!5535663 () Bool)

(assert (=> b!4656034 m!5535663))

(assert (=> b!4655713 d!1476844))

(declare-fun b!4656037 () Bool)

(declare-fun e!2905025 () Bool)

(assert (=> b!4656037 (= e!2905025 (not (contains!15039 (keys!18384 lt!1818655) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))))

(declare-fun b!4656038 () Bool)

(declare-fun e!2905026 () Bool)

(assert (=> b!4656038 (= e!2905026 (contains!15039 (keys!18384 lt!1818655) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun b!4656039 () Bool)

(declare-fun e!2905027 () Bool)

(assert (=> b!4656039 (= e!2905027 e!2905026)))

(declare-fun res!1957750 () Bool)

(assert (=> b!4656039 (=> (not res!1957750) (not e!2905026))))

(assert (=> b!4656039 (= res!1957750 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818655) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))))

(declare-fun b!4656040 () Bool)

(declare-fun e!2905029 () Unit!118533)

(declare-fun lt!1818854 () Unit!118533)

(assert (=> b!4656040 (= e!2905029 lt!1818854)))

(declare-fun lt!1818857 () Unit!118533)

(assert (=> b!4656040 (= lt!1818857 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818655) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> b!4656040 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818655) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun lt!1818855 () Unit!118533)

(assert (=> b!4656040 (= lt!1818855 lt!1818857)))

(assert (=> b!4656040 (= lt!1818854 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818655) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun call!325379 () Bool)

(assert (=> b!4656040 call!325379))

(declare-fun b!4656041 () Bool)

(declare-fun e!2905024 () List!52023)

(assert (=> b!4656041 (= e!2905024 (keys!18384 lt!1818655))))

(declare-fun b!4656042 () Bool)

(assert (=> b!4656042 (= e!2905024 (getKeysList!749 (toList!5209 lt!1818655)))))

(declare-fun d!1476848 () Bool)

(assert (=> d!1476848 e!2905027))

(declare-fun res!1957751 () Bool)

(assert (=> d!1476848 (=> res!1957751 e!2905027)))

(assert (=> d!1476848 (= res!1957751 e!2905025)))

(declare-fun res!1957752 () Bool)

(assert (=> d!1476848 (=> (not res!1957752) (not e!2905025))))

(declare-fun lt!1818856 () Bool)

(assert (=> d!1476848 (= res!1957752 (not lt!1818856))))

(declare-fun lt!1818861 () Bool)

(assert (=> d!1476848 (= lt!1818856 lt!1818861)))

(declare-fun lt!1818859 () Unit!118533)

(assert (=> d!1476848 (= lt!1818859 e!2905029)))

(declare-fun c!796947 () Bool)

(assert (=> d!1476848 (= c!796947 lt!1818861)))

(assert (=> d!1476848 (= lt!1818861 (containsKey!2726 (toList!5209 lt!1818655) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> d!1476848 (= (contains!15037 lt!1818655 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))) lt!1818856)))

(declare-fun bm!325374 () Bool)

(assert (=> bm!325374 (= call!325379 (contains!15039 e!2905024 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun c!796949 () Bool)

(assert (=> bm!325374 (= c!796949 c!796947)))

(declare-fun b!4656043 () Bool)

(declare-fun e!2905028 () Unit!118533)

(declare-fun Unit!118666 () Unit!118533)

(assert (=> b!4656043 (= e!2905028 Unit!118666)))

(declare-fun b!4656044 () Bool)

(assert (=> b!4656044 (= e!2905029 e!2905028)))

(declare-fun c!796948 () Bool)

(assert (=> b!4656044 (= c!796948 call!325379)))

(declare-fun b!4656045 () Bool)

(assert (=> b!4656045 false))

(declare-fun lt!1818860 () Unit!118533)

(declare-fun lt!1818858 () Unit!118533)

(assert (=> b!4656045 (= lt!1818860 lt!1818858)))

(assert (=> b!4656045 (containsKey!2726 (toList!5209 lt!1818655) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(assert (=> b!4656045 (= lt!1818858 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818655) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun Unit!118667 () Unit!118533)

(assert (=> b!4656045 (= e!2905028 Unit!118667)))

(assert (= (and d!1476848 c!796947) b!4656040))

(assert (= (and d!1476848 (not c!796947)) b!4656044))

(assert (= (and b!4656044 c!796948) b!4656045))

(assert (= (and b!4656044 (not c!796948)) b!4656043))

(assert (= (or b!4656040 b!4656044) bm!325374))

(assert (= (and bm!325374 c!796949) b!4656042))

(assert (= (and bm!325374 (not c!796949)) b!4656041))

(assert (= (and d!1476848 res!1957752) b!4656037))

(assert (= (and d!1476848 (not res!1957751)) b!4656039))

(assert (= (and b!4656039 res!1957750) b!4656038))

(declare-fun m!5535669 () Bool)

(assert (=> b!4656041 m!5535669))

(declare-fun m!5535671 () Bool)

(assert (=> d!1476848 m!5535671))

(declare-fun m!5535673 () Bool)

(assert (=> b!4656042 m!5535673))

(declare-fun m!5535675 () Bool)

(assert (=> bm!325374 m!5535675))

(declare-fun m!5535677 () Bool)

(assert (=> b!4656040 m!5535677))

(declare-fun m!5535679 () Bool)

(assert (=> b!4656040 m!5535679))

(assert (=> b!4656040 m!5535679))

(declare-fun m!5535681 () Bool)

(assert (=> b!4656040 m!5535681))

(declare-fun m!5535683 () Bool)

(assert (=> b!4656040 m!5535683))

(assert (=> b!4656045 m!5535671))

(declare-fun m!5535685 () Bool)

(assert (=> b!4656045 m!5535685))

(assert (=> b!4656039 m!5535679))

(assert (=> b!4656039 m!5535679))

(assert (=> b!4656039 m!5535681))

(assert (=> b!4656038 m!5535669))

(assert (=> b!4656038 m!5535669))

(declare-fun m!5535687 () Bool)

(assert (=> b!4656038 m!5535687))

(assert (=> b!4656037 m!5535669))

(assert (=> b!4656037 m!5535669))

(assert (=> b!4656037 m!5535687))

(assert (=> b!4655713 d!1476848))

(declare-fun d!1476852 () Bool)

(declare-fun res!1957756 () Bool)

(declare-fun e!2905036 () Bool)

(assert (=> d!1476852 (=> res!1957756 e!2905036)))

(assert (=> d!1476852 (= res!1957756 ((_ is Nil!51896) (toList!5209 lt!1818655)))))

(assert (=> d!1476852 (= (forall!11026 (toList!5209 lt!1818655) lambda!199380) e!2905036)))

(declare-fun b!4656055 () Bool)

(declare-fun e!2905037 () Bool)

(assert (=> b!4656055 (= e!2905036 e!2905037)))

(declare-fun res!1957757 () Bool)

(assert (=> b!4656055 (=> (not res!1957757) (not e!2905037))))

(assert (=> b!4656055 (= res!1957757 (dynLambda!21590 lambda!199380 (h!58040 (toList!5209 lt!1818655))))))

(declare-fun b!4656056 () Bool)

(assert (=> b!4656056 (= e!2905037 (forall!11026 (t!359136 (toList!5209 lt!1818655)) lambda!199380))))

(assert (= (and d!1476852 (not res!1957756)) b!4656055))

(assert (= (and b!4656055 res!1957757) b!4656056))

(declare-fun b_lambda!174077 () Bool)

(assert (=> (not b_lambda!174077) (not b!4656055)))

(declare-fun m!5535689 () Bool)

(assert (=> b!4656055 m!5535689))

(declare-fun m!5535691 () Bool)

(assert (=> b!4656056 m!5535691))

(assert (=> b!4655713 d!1476852))

(declare-fun bs!1064957 () Bool)

(declare-fun b!4656059 () Bool)

(assert (= bs!1064957 (and b!4656059 b!4655808)))

(declare-fun lambda!199416 () Int)

(assert (=> bs!1064957 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818710) (= lambda!199416 lambda!199390))))

(assert (=> bs!1064957 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199416 lambda!199389))))

(declare-fun bs!1064958 () Bool)

(assert (= bs!1064958 (and b!4656059 d!1476386)))

(assert (=> bs!1064958 (not (= lambda!199416 lambda!199309))))

(declare-fun bs!1064959 () Bool)

(assert (= bs!1064959 (and b!4656059 d!1476560)))

(assert (=> bs!1064959 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818394) (= lambda!199416 lambda!199364))))

(declare-fun bs!1064960 () Bool)

(assert (= bs!1064960 (and b!4656059 b!4655328)))

(assert (=> bs!1064960 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818237) (= lambda!199416 lambda!199302))))

(declare-fun bs!1064961 () Bool)

(assert (= bs!1064961 (and b!4656059 d!1476564)))

(assert (=> bs!1064961 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818624) (= lambda!199416 lambda!199368))))

(declare-fun bs!1064962 () Bool)

(assert (= bs!1064962 (and b!4656059 d!1476352)))

(assert (=> bs!1064962 (not (= lambda!199416 lambda!199229))))

(declare-fun bs!1064963 () Bool)

(assert (= bs!1064963 (and b!4656059 d!1476842)))

(assert (=> bs!1064963 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818660) (= lambda!199416 lambda!199415))))

(declare-fun bs!1064964 () Bool)

(assert (= bs!1064964 (and b!4656059 d!1476696)))

(assert (=> bs!1064964 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818237) (= lambda!199416 lambda!199387))))

(assert (=> bs!1064960 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818394) (= lambda!199416 lambda!199303))))

(declare-fun bs!1064966 () Bool)

(assert (= bs!1064966 (and b!4656059 d!1476594)))

(assert (=> bs!1064966 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818237) (= lambda!199416 lambda!199377))))

(declare-fun bs!1064967 () Bool)

(assert (= bs!1064967 (and b!4656059 b!4655329)))

(assert (=> bs!1064967 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818237) (= lambda!199416 lambda!199301))))

(declare-fun bs!1064969 () Bool)

(assert (= bs!1064969 (and b!4656059 b!4655655)))

(assert (=> bs!1064969 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818625) (= lambda!199416 lambda!199367))))

(declare-fun bs!1064970 () Bool)

(assert (= bs!1064970 (and b!4656059 b!4655713)))

(assert (=> bs!1064970 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199416 lambda!199379))))

(declare-fun bs!1064972 () Bool)

(assert (= bs!1064972 (and b!4656059 d!1476716)))

(assert (=> bs!1064972 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818625) (= lambda!199416 lambda!199392))))

(declare-fun bs!1064973 () Bool)

(assert (= bs!1064973 (and b!4656059 d!1476610)))

(assert (=> bs!1064973 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818659) (= lambda!199416 lambda!199381))))

(assert (=> bs!1064969 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199416 lambda!199366))))

(declare-fun bs!1064975 () Bool)

(assert (= bs!1064975 (and b!4656059 b!4655809)))

(assert (=> bs!1064975 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199416 lambda!199388))))

(declare-fun bs!1064977 () Bool)

(assert (= bs!1064977 (and b!4656059 d!1476712)))

(assert (=> bs!1064977 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818709) (= lambda!199416 lambda!199391))))

(declare-fun bs!1064979 () Bool)

(assert (= bs!1064979 (and b!4656059 b!4655656)))

(assert (=> bs!1064979 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199416 lambda!199365))))

(declare-fun bs!1064980 () Bool)

(assert (= bs!1064980 (and b!4656059 d!1476356)))

(assert (=> bs!1064980 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818393) (= lambda!199416 lambda!199304))))

(declare-fun bs!1064982 () Bool)

(assert (= bs!1064982 (and b!4656059 b!4655714)))

(assert (=> bs!1064982 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199416 lambda!199378))))

(assert (=> bs!1064970 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818660) (= lambda!199416 lambda!199380))))

(assert (=> b!4656059 true))

(declare-fun bs!1064987 () Bool)

(declare-fun b!4656058 () Bool)

(assert (= bs!1064987 (and b!4656058 b!4655808)))

(declare-fun lambda!199419 () Int)

(assert (=> bs!1064987 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818710) (= lambda!199419 lambda!199390))))

(assert (=> bs!1064987 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199419 lambda!199389))))

(declare-fun bs!1064989 () Bool)

(assert (= bs!1064989 (and b!4656058 d!1476386)))

(assert (=> bs!1064989 (not (= lambda!199419 lambda!199309))))

(declare-fun bs!1064990 () Bool)

(assert (= bs!1064990 (and b!4656058 b!4656059)))

(assert (=> bs!1064990 (= lambda!199419 lambda!199416)))

(declare-fun bs!1064991 () Bool)

(assert (= bs!1064991 (and b!4656058 d!1476560)))

(assert (=> bs!1064991 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818394) (= lambda!199419 lambda!199364))))

(declare-fun bs!1064992 () Bool)

(assert (= bs!1064992 (and b!4656058 b!4655328)))

(assert (=> bs!1064992 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818237) (= lambda!199419 lambda!199302))))

(declare-fun bs!1064993 () Bool)

(assert (= bs!1064993 (and b!4656058 d!1476564)))

(assert (=> bs!1064993 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818624) (= lambda!199419 lambda!199368))))

(declare-fun bs!1064994 () Bool)

(assert (= bs!1064994 (and b!4656058 d!1476352)))

(assert (=> bs!1064994 (not (= lambda!199419 lambda!199229))))

(declare-fun bs!1064995 () Bool)

(assert (= bs!1064995 (and b!4656058 d!1476842)))

(assert (=> bs!1064995 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818660) (= lambda!199419 lambda!199415))))

(declare-fun bs!1064996 () Bool)

(assert (= bs!1064996 (and b!4656058 d!1476696)))

(assert (=> bs!1064996 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818237) (= lambda!199419 lambda!199387))))

(assert (=> bs!1064992 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818394) (= lambda!199419 lambda!199303))))

(declare-fun bs!1064997 () Bool)

(assert (= bs!1064997 (and b!4656058 d!1476594)))

(assert (=> bs!1064997 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818237) (= lambda!199419 lambda!199377))))

(declare-fun bs!1064998 () Bool)

(assert (= bs!1064998 (and b!4656058 b!4655329)))

(assert (=> bs!1064998 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818237) (= lambda!199419 lambda!199301))))

(declare-fun bs!1064999 () Bool)

(assert (= bs!1064999 (and b!4656058 b!4655655)))

(assert (=> bs!1064999 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818625) (= lambda!199419 lambda!199367))))

(declare-fun bs!1065000 () Bool)

(assert (= bs!1065000 (and b!4656058 b!4655713)))

(assert (=> bs!1065000 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199419 lambda!199379))))

(declare-fun bs!1065001 () Bool)

(assert (= bs!1065001 (and b!4656058 d!1476716)))

(assert (=> bs!1065001 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818625) (= lambda!199419 lambda!199392))))

(declare-fun bs!1065002 () Bool)

(assert (= bs!1065002 (and b!4656058 d!1476610)))

(assert (=> bs!1065002 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818659) (= lambda!199419 lambda!199381))))

(assert (=> bs!1064999 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199419 lambda!199366))))

(declare-fun bs!1065003 () Bool)

(assert (= bs!1065003 (and b!4656058 b!4655809)))

(assert (=> bs!1065003 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199419 lambda!199388))))

(declare-fun bs!1065004 () Bool)

(assert (= bs!1065004 (and b!4656058 d!1476712)))

(assert (=> bs!1065004 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818709) (= lambda!199419 lambda!199391))))

(declare-fun bs!1065005 () Bool)

(assert (= bs!1065005 (and b!4656058 b!4655656)))

(assert (=> bs!1065005 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199419 lambda!199365))))

(declare-fun bs!1065006 () Bool)

(assert (= bs!1065006 (and b!4656058 d!1476356)))

(assert (=> bs!1065006 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818393) (= lambda!199419 lambda!199304))))

(declare-fun bs!1065007 () Bool)

(assert (= bs!1065007 (and b!4656058 b!4655714)))

(assert (=> bs!1065007 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199419 lambda!199378))))

(assert (=> bs!1065000 (= (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818660) (= lambda!199419 lambda!199380))))

(assert (=> b!4656058 true))

(declare-fun lambda!199420 () Int)

(declare-fun lt!1818890 () ListMap!4549)

(assert (=> bs!1064987 (= (= lt!1818890 lt!1818710) (= lambda!199420 lambda!199390))))

(assert (=> bs!1064987 (= (= lt!1818890 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199420 lambda!199389))))

(assert (=> bs!1064989 (not (= lambda!199420 lambda!199309))))

(assert (=> bs!1064991 (= (= lt!1818890 lt!1818394) (= lambda!199420 lambda!199364))))

(assert (=> bs!1064992 (= (= lt!1818890 lt!1818237) (= lambda!199420 lambda!199302))))

(assert (=> bs!1064993 (= (= lt!1818890 lt!1818624) (= lambda!199420 lambda!199368))))

(assert (=> bs!1064994 (not (= lambda!199420 lambda!199229))))

(assert (=> bs!1064995 (= (= lt!1818890 lt!1818660) (= lambda!199420 lambda!199415))))

(assert (=> bs!1064996 (= (= lt!1818890 lt!1818237) (= lambda!199420 lambda!199387))))

(assert (=> bs!1064992 (= (= lt!1818890 lt!1818394) (= lambda!199420 lambda!199303))))

(assert (=> bs!1064997 (= (= lt!1818890 lt!1818237) (= lambda!199420 lambda!199377))))

(assert (=> bs!1064998 (= (= lt!1818890 lt!1818237) (= lambda!199420 lambda!199301))))

(assert (=> bs!1064990 (= (= lt!1818890 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199420 lambda!199416))))

(assert (=> b!4656058 (= (= lt!1818890 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199420 lambda!199419))))

(assert (=> bs!1064999 (= (= lt!1818890 lt!1818625) (= lambda!199420 lambda!199367))))

(assert (=> bs!1065000 (= (= lt!1818890 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199420 lambda!199379))))

(assert (=> bs!1065001 (= (= lt!1818890 lt!1818625) (= lambda!199420 lambda!199392))))

(assert (=> bs!1065002 (= (= lt!1818890 lt!1818659) (= lambda!199420 lambda!199381))))

(assert (=> bs!1064999 (= (= lt!1818890 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199420 lambda!199366))))

(assert (=> bs!1065003 (= (= lt!1818890 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199420 lambda!199388))))

(assert (=> bs!1065004 (= (= lt!1818890 lt!1818709) (= lambda!199420 lambda!199391))))

(assert (=> bs!1065005 (= (= lt!1818890 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199420 lambda!199365))))

(assert (=> bs!1065006 (= (= lt!1818890 lt!1818393) (= lambda!199420 lambda!199304))))

(assert (=> bs!1065007 (= (= lt!1818890 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199420 lambda!199378))))

(assert (=> bs!1065000 (= (= lt!1818890 lt!1818660) (= lambda!199420 lambda!199380))))

(assert (=> b!4656058 true))

(declare-fun bs!1065008 () Bool)

(declare-fun d!1476854 () Bool)

(assert (= bs!1065008 (and d!1476854 b!4655808)))

(declare-fun lambda!199421 () Int)

(declare-fun lt!1818889 () ListMap!4549)

(assert (=> bs!1065008 (= (= lt!1818889 lt!1818710) (= lambda!199421 lambda!199390))))

(assert (=> bs!1065008 (= (= lt!1818889 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199421 lambda!199389))))

(declare-fun bs!1065009 () Bool)

(assert (= bs!1065009 (and d!1476854 d!1476386)))

(assert (=> bs!1065009 (not (= lambda!199421 lambda!199309))))

(declare-fun bs!1065010 () Bool)

(assert (= bs!1065010 (and d!1476854 d!1476560)))

(assert (=> bs!1065010 (= (= lt!1818889 lt!1818394) (= lambda!199421 lambda!199364))))

(declare-fun bs!1065011 () Bool)

(assert (= bs!1065011 (and d!1476854 b!4655328)))

(assert (=> bs!1065011 (= (= lt!1818889 lt!1818237) (= lambda!199421 lambda!199302))))

(declare-fun bs!1065012 () Bool)

(assert (= bs!1065012 (and d!1476854 d!1476564)))

(assert (=> bs!1065012 (= (= lt!1818889 lt!1818624) (= lambda!199421 lambda!199368))))

(declare-fun bs!1065013 () Bool)

(assert (= bs!1065013 (and d!1476854 d!1476352)))

(assert (=> bs!1065013 (not (= lambda!199421 lambda!199229))))

(declare-fun bs!1065014 () Bool)

(assert (= bs!1065014 (and d!1476854 d!1476842)))

(assert (=> bs!1065014 (= (= lt!1818889 lt!1818660) (= lambda!199421 lambda!199415))))

(declare-fun bs!1065015 () Bool)

(assert (= bs!1065015 (and d!1476854 d!1476696)))

(assert (=> bs!1065015 (= (= lt!1818889 lt!1818237) (= lambda!199421 lambda!199387))))

(assert (=> bs!1065011 (= (= lt!1818889 lt!1818394) (= lambda!199421 lambda!199303))))

(declare-fun bs!1065016 () Bool)

(assert (= bs!1065016 (and d!1476854 d!1476594)))

(assert (=> bs!1065016 (= (= lt!1818889 lt!1818237) (= lambda!199421 lambda!199377))))

(declare-fun bs!1065017 () Bool)

(assert (= bs!1065017 (and d!1476854 b!4655329)))

(assert (=> bs!1065017 (= (= lt!1818889 lt!1818237) (= lambda!199421 lambda!199301))))

(declare-fun bs!1065018 () Bool)

(assert (= bs!1065018 (and d!1476854 b!4656058)))

(assert (=> bs!1065018 (= (= lt!1818889 lt!1818890) (= lambda!199421 lambda!199420))))

(declare-fun bs!1065019 () Bool)

(assert (= bs!1065019 (and d!1476854 b!4656059)))

(assert (=> bs!1065019 (= (= lt!1818889 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199421 lambda!199416))))

(assert (=> bs!1065018 (= (= lt!1818889 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199421 lambda!199419))))

(declare-fun bs!1065020 () Bool)

(assert (= bs!1065020 (and d!1476854 b!4655655)))

(assert (=> bs!1065020 (= (= lt!1818889 lt!1818625) (= lambda!199421 lambda!199367))))

(declare-fun bs!1065021 () Bool)

(assert (= bs!1065021 (and d!1476854 b!4655713)))

(assert (=> bs!1065021 (= (= lt!1818889 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199421 lambda!199379))))

(declare-fun bs!1065022 () Bool)

(assert (= bs!1065022 (and d!1476854 d!1476716)))

(assert (=> bs!1065022 (= (= lt!1818889 lt!1818625) (= lambda!199421 lambda!199392))))

(declare-fun bs!1065023 () Bool)

(assert (= bs!1065023 (and d!1476854 d!1476610)))

(assert (=> bs!1065023 (= (= lt!1818889 lt!1818659) (= lambda!199421 lambda!199381))))

(assert (=> bs!1065020 (= (= lt!1818889 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199421 lambda!199366))))

(declare-fun bs!1065024 () Bool)

(assert (= bs!1065024 (and d!1476854 b!4655809)))

(assert (=> bs!1065024 (= (= lt!1818889 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199421 lambda!199388))))

(declare-fun bs!1065025 () Bool)

(assert (= bs!1065025 (and d!1476854 d!1476712)))

(assert (=> bs!1065025 (= (= lt!1818889 lt!1818709) (= lambda!199421 lambda!199391))))

(declare-fun bs!1065026 () Bool)

(assert (= bs!1065026 (and d!1476854 b!4655656)))

(assert (=> bs!1065026 (= (= lt!1818889 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199421 lambda!199365))))

(declare-fun bs!1065027 () Bool)

(assert (= bs!1065027 (and d!1476854 d!1476356)))

(assert (=> bs!1065027 (= (= lt!1818889 lt!1818393) (= lambda!199421 lambda!199304))))

(declare-fun bs!1065028 () Bool)

(assert (= bs!1065028 (and d!1476854 b!4655714)))

(assert (=> bs!1065028 (= (= lt!1818889 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199421 lambda!199378))))

(assert (=> bs!1065021 (= (= lt!1818889 lt!1818660) (= lambda!199421 lambda!199380))))

(assert (=> d!1476854 true))

(declare-fun e!2905039 () Bool)

(assert (=> d!1476854 e!2905039))

(declare-fun res!1957758 () Bool)

(assert (=> d!1476854 (=> (not res!1957758) (not e!2905039))))

(assert (=> d!1476854 (= res!1957758 (forall!11026 (t!359136 (_2!29798 (h!58041 lt!1818235))) lambda!199421))))

(declare-fun e!2905038 () ListMap!4549)

(assert (=> d!1476854 (= lt!1818889 e!2905038)))

(declare-fun c!796953 () Bool)

(assert (=> d!1476854 (= c!796953 ((_ is Nil!51896) (t!359136 (_2!29798 (h!58041 lt!1818235)))))))

(assert (=> d!1476854 (noDuplicateKeys!1640 (t!359136 (_2!29798 (h!58041 lt!1818235))))))

(assert (=> d!1476854 (= (addToMapMapFromBucket!1097 (t!359136 (_2!29798 (h!58041 lt!1818235))) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) lt!1818889)))

(declare-fun b!4656057 () Bool)

(declare-fun e!2905040 () Bool)

(assert (=> b!4656057 (= e!2905040 (forall!11026 (toList!5209 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) lambda!199420))))

(declare-fun bm!325376 () Bool)

(declare-fun call!325383 () Bool)

(assert (=> bm!325376 (= call!325383 (forall!11026 (ite c!796953 (toList!5209 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (t!359136 (_2!29798 (h!58041 lt!1818235)))) (ite c!796953 lambda!199416 lambda!199420)))))

(declare-fun lt!1818885 () ListMap!4549)

(declare-fun call!325381 () Bool)

(declare-fun bm!325377 () Bool)

(assert (=> bm!325377 (= call!325381 (forall!11026 (ite c!796953 (toList!5209 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (toList!5209 lt!1818885)) (ite c!796953 lambda!199416 lambda!199420)))))

(assert (=> b!4656058 (= e!2905038 lt!1818890)))

(assert (=> b!4656058 (= lt!1818885 (+!1984 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> b!4656058 (= lt!1818890 (addToMapMapFromBucket!1097 (t!359136 (t!359136 (_2!29798 (h!58041 lt!1818235)))) (+!1984 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235)))))))))

(declare-fun lt!1818870 () Unit!118533)

(declare-fun call!325382 () Unit!118533)

(assert (=> b!4656058 (= lt!1818870 call!325382)))

(assert (=> b!4656058 (forall!11026 (toList!5209 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) lambda!199419)))

(declare-fun lt!1818877 () Unit!118533)

(assert (=> b!4656058 (= lt!1818877 lt!1818870)))

(assert (=> b!4656058 (forall!11026 (toList!5209 lt!1818885) lambda!199420)))

(declare-fun lt!1818881 () Unit!118533)

(declare-fun Unit!118672 () Unit!118533)

(assert (=> b!4656058 (= lt!1818881 Unit!118672)))

(assert (=> b!4656058 (forall!11026 (t!359136 (t!359136 (_2!29798 (h!58041 lt!1818235)))) lambda!199420)))

(declare-fun lt!1818880 () Unit!118533)

(declare-fun Unit!118674 () Unit!118533)

(assert (=> b!4656058 (= lt!1818880 Unit!118674)))

(declare-fun lt!1818883 () Unit!118533)

(declare-fun Unit!118675 () Unit!118533)

(assert (=> b!4656058 (= lt!1818883 Unit!118675)))

(declare-fun lt!1818888 () Unit!118533)

(assert (=> b!4656058 (= lt!1818888 (forallContained!3226 (toList!5209 lt!1818885) lambda!199420 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> b!4656058 (contains!15037 lt!1818885 (_1!29797 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun lt!1818873 () Unit!118533)

(declare-fun Unit!118678 () Unit!118533)

(assert (=> b!4656058 (= lt!1818873 Unit!118678)))

(assert (=> b!4656058 (contains!15037 lt!1818890 (_1!29797 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun lt!1818884 () Unit!118533)

(declare-fun Unit!118680 () Unit!118533)

(assert (=> b!4656058 (= lt!1818884 Unit!118680)))

(assert (=> b!4656058 (forall!11026 (t!359136 (_2!29798 (h!58041 lt!1818235))) lambda!199420)))

(declare-fun lt!1818872 () Unit!118533)

(declare-fun Unit!118682 () Unit!118533)

(assert (=> b!4656058 (= lt!1818872 Unit!118682)))

(assert (=> b!4656058 call!325381))

(declare-fun lt!1818878 () Unit!118533)

(declare-fun Unit!118683 () Unit!118533)

(assert (=> b!4656058 (= lt!1818878 Unit!118683)))

(declare-fun lt!1818876 () Unit!118533)

(declare-fun Unit!118684 () Unit!118533)

(assert (=> b!4656058 (= lt!1818876 Unit!118684)))

(declare-fun lt!1818886 () Unit!118533)

(assert (=> b!4656058 (= lt!1818886 (addForallContainsKeyThenBeforeAdding!597 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818890 (_1!29797 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235))))) (_2!29797 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235)))))))))

(assert (=> b!4656058 (forall!11026 (toList!5209 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) lambda!199420)))

(declare-fun lt!1818874 () Unit!118533)

(assert (=> b!4656058 (= lt!1818874 lt!1818886)))

(assert (=> b!4656058 (forall!11026 (toList!5209 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) lambda!199420)))

(declare-fun lt!1818875 () Unit!118533)

(declare-fun Unit!118687 () Unit!118533)

(assert (=> b!4656058 (= lt!1818875 Unit!118687)))

(declare-fun res!1957759 () Bool)

(assert (=> b!4656058 (= res!1957759 call!325383)))

(assert (=> b!4656058 (=> (not res!1957759) (not e!2905040))))

(assert (=> b!4656058 e!2905040))

(declare-fun lt!1818871 () Unit!118533)

(declare-fun Unit!118688 () Unit!118533)

(assert (=> b!4656058 (= lt!1818871 Unit!118688)))

(declare-fun bm!325378 () Bool)

(assert (=> bm!325378 (= call!325382 (lemmaContainsAllItsOwnKeys!598 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> b!4656059 (= e!2905038 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(declare-fun lt!1818887 () Unit!118533)

(assert (=> b!4656059 (= lt!1818887 call!325382)))

(assert (=> b!4656059 call!325383))

(declare-fun lt!1818879 () Unit!118533)

(assert (=> b!4656059 (= lt!1818879 lt!1818887)))

(assert (=> b!4656059 call!325381))

(declare-fun lt!1818882 () Unit!118533)

(declare-fun Unit!118689 () Unit!118533)

(assert (=> b!4656059 (= lt!1818882 Unit!118689)))

(declare-fun b!4656060 () Bool)

(declare-fun res!1957760 () Bool)

(assert (=> b!4656060 (=> (not res!1957760) (not e!2905039))))

(assert (=> b!4656060 (= res!1957760 (forall!11026 (toList!5209 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) lambda!199421))))

(declare-fun b!4656061 () Bool)

(assert (=> b!4656061 (= e!2905039 (invariantList!1298 (toList!5209 lt!1818889)))))

(assert (= (and d!1476854 c!796953) b!4656059))

(assert (= (and d!1476854 (not c!796953)) b!4656058))

(assert (= (and b!4656058 res!1957759) b!4656057))

(assert (= (or b!4656059 b!4656058) bm!325378))

(assert (= (or b!4656059 b!4656058) bm!325376))

(assert (= (or b!4656059 b!4656058) bm!325377))

(assert (= (and d!1476854 res!1957758) b!4656060))

(assert (= (and b!4656060 res!1957760) b!4656061))

(declare-fun m!5535735 () Bool)

(assert (=> bm!325376 m!5535735))

(assert (=> b!4656058 m!5534909))

(declare-fun m!5535737 () Bool)

(assert (=> b!4656058 m!5535737))

(assert (=> b!4656058 m!5534909))

(declare-fun m!5535739 () Bool)

(assert (=> b!4656058 m!5535739))

(declare-fun m!5535741 () Bool)

(assert (=> b!4656058 m!5535741))

(assert (=> b!4656058 m!5535737))

(declare-fun m!5535743 () Bool)

(assert (=> b!4656058 m!5535743))

(declare-fun m!5535745 () Bool)

(assert (=> b!4656058 m!5535745))

(declare-fun m!5535747 () Bool)

(assert (=> b!4656058 m!5535747))

(declare-fun m!5535749 () Bool)

(assert (=> b!4656058 m!5535749))

(declare-fun m!5535751 () Bool)

(assert (=> b!4656058 m!5535751))

(declare-fun m!5535753 () Bool)

(assert (=> b!4656058 m!5535753))

(declare-fun m!5535755 () Bool)

(assert (=> b!4656058 m!5535755))

(assert (=> b!4656058 m!5535741))

(declare-fun m!5535757 () Bool)

(assert (=> b!4656058 m!5535757))

(assert (=> b!4656057 m!5535741))

(assert (=> bm!325378 m!5534909))

(declare-fun m!5535759 () Bool)

(assert (=> bm!325378 m!5535759))

(declare-fun m!5535761 () Bool)

(assert (=> b!4656061 m!5535761))

(declare-fun m!5535763 () Bool)

(assert (=> bm!325377 m!5535763))

(declare-fun m!5535765 () Bool)

(assert (=> b!4656060 m!5535765))

(declare-fun m!5535767 () Bool)

(assert (=> d!1476854 m!5535767))

(assert (=> d!1476854 m!5534857))

(assert (=> b!4655713 d!1476854))

(declare-fun d!1476868 () Bool)

(assert (=> d!1476868 (dynLambda!21590 lambda!199380 (h!58040 (_2!29798 (h!58041 lt!1818235))))))

(declare-fun lt!1818893 () Unit!118533)

(assert (=> d!1476868 (= lt!1818893 (choose!32001 (toList!5209 lt!1818655) lambda!199380 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(declare-fun e!2905050 () Bool)

(assert (=> d!1476868 e!2905050))

(declare-fun res!1957775 () Bool)

(assert (=> d!1476868 (=> (not res!1957775) (not e!2905050))))

(assert (=> d!1476868 (= res!1957775 (forall!11026 (toList!5209 lt!1818655) lambda!199380))))

(assert (=> d!1476868 (= (forallContained!3226 (toList!5209 lt!1818655) lambda!199380 (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818893)))

(declare-fun b!4656073 () Bool)

(assert (=> b!4656073 (= e!2905050 (contains!15041 (toList!5209 lt!1818655) (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(assert (= (and d!1476868 res!1957775) b!4656073))

(declare-fun b_lambda!174079 () Bool)

(assert (=> (not b_lambda!174079) (not d!1476868)))

(declare-fun m!5535769 () Bool)

(assert (=> d!1476868 m!5535769))

(declare-fun m!5535771 () Bool)

(assert (=> d!1476868 m!5535771))

(assert (=> d!1476868 m!5534927))

(declare-fun m!5535773 () Bool)

(assert (=> b!4656073 m!5535773))

(assert (=> b!4655713 d!1476868))

(declare-fun d!1476870 () Bool)

(declare-fun e!2905051 () Bool)

(assert (=> d!1476870 e!2905051))

(declare-fun res!1957776 () Bool)

(assert (=> d!1476870 (=> (not res!1957776) (not e!2905051))))

(declare-fun lt!1818894 () ListMap!4549)

(assert (=> d!1476870 (= res!1957776 (contains!15037 lt!1818894 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun lt!1818896 () List!52020)

(assert (=> d!1476870 (= lt!1818894 (ListMap!4550 lt!1818896))))

(declare-fun lt!1818897 () Unit!118533)

(declare-fun lt!1818895 () Unit!118533)

(assert (=> d!1476870 (= lt!1818897 lt!1818895)))

(assert (=> d!1476870 (= (getValueByKey!1610 lt!1818896 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))) (Some!11821 (_2!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> d!1476870 (= lt!1818895 (lemmaContainsTupThenGetReturnValue!924 lt!1818896 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_2!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> d!1476870 (= lt!1818896 (insertNoDuplicatedKeys!432 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_2!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> d!1476870 (= (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) lt!1818894)))

(declare-fun b!4656074 () Bool)

(declare-fun res!1957777 () Bool)

(assert (=> b!4656074 (=> (not res!1957777) (not e!2905051))))

(assert (=> b!4656074 (= res!1957777 (= (getValueByKey!1610 (toList!5209 lt!1818894) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))) (Some!11821 (_2!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))))

(declare-fun b!4656075 () Bool)

(assert (=> b!4656075 (= e!2905051 (contains!15041 (toList!5209 lt!1818894) (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(assert (= (and d!1476870 res!1957776) b!4656074))

(assert (= (and b!4656074 res!1957777) b!4656075))

(declare-fun m!5535775 () Bool)

(assert (=> d!1476870 m!5535775))

(declare-fun m!5535777 () Bool)

(assert (=> d!1476870 m!5535777))

(declare-fun m!5535779 () Bool)

(assert (=> d!1476870 m!5535779))

(declare-fun m!5535781 () Bool)

(assert (=> d!1476870 m!5535781))

(declare-fun m!5535783 () Bool)

(assert (=> b!4656074 m!5535783))

(declare-fun m!5535785 () Bool)

(assert (=> b!4656075 m!5535785))

(assert (=> b!4655713 d!1476870))

(declare-fun d!1476872 () Bool)

(declare-fun res!1957778 () Bool)

(declare-fun e!2905052 () Bool)

(assert (=> d!1476872 (=> res!1957778 e!2905052)))

(assert (=> d!1476872 (= res!1957778 ((_ is Nil!51896) (t!359136 (_2!29798 (h!58041 lt!1818235)))))))

(assert (=> d!1476872 (= (forall!11026 (t!359136 (_2!29798 (h!58041 lt!1818235))) lambda!199380) e!2905052)))

(declare-fun b!4656076 () Bool)

(declare-fun e!2905053 () Bool)

(assert (=> b!4656076 (= e!2905052 e!2905053)))

(declare-fun res!1957779 () Bool)

(assert (=> b!4656076 (=> (not res!1957779) (not e!2905053))))

(assert (=> b!4656076 (= res!1957779 (dynLambda!21590 lambda!199380 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun b!4656077 () Bool)

(assert (=> b!4656077 (= e!2905053 (forall!11026 (t!359136 (t!359136 (_2!29798 (h!58041 lt!1818235)))) lambda!199380))))

(assert (= (and d!1476872 (not res!1957778)) b!4656076))

(assert (= (and b!4656076 res!1957779) b!4656077))

(declare-fun b_lambda!174081 () Bool)

(assert (=> (not b_lambda!174081) (not b!4656076)))

(declare-fun m!5535787 () Bool)

(assert (=> b!4656076 m!5535787))

(declare-fun m!5535789 () Bool)

(assert (=> b!4656077 m!5535789))

(assert (=> b!4655713 d!1476872))

(declare-fun d!1476874 () Bool)

(declare-fun res!1957784 () Bool)

(declare-fun e!2905058 () Bool)

(assert (=> d!1476874 (=> res!1957784 e!2905058)))

(assert (=> d!1476874 (= res!1957784 ((_ is Nil!51896) (_2!29798 (h!58041 lt!1818235))))))

(assert (=> d!1476874 (= (forall!11026 (_2!29798 (h!58041 lt!1818235)) lambda!199380) e!2905058)))

(declare-fun b!4656082 () Bool)

(declare-fun e!2905059 () Bool)

(assert (=> b!4656082 (= e!2905058 e!2905059)))

(declare-fun res!1957785 () Bool)

(assert (=> b!4656082 (=> (not res!1957785) (not e!2905059))))

(assert (=> b!4656082 (= res!1957785 (dynLambda!21590 lambda!199380 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(declare-fun b!4656083 () Bool)

(assert (=> b!4656083 (= e!2905059 (forall!11026 (t!359136 (_2!29798 (h!58041 lt!1818235))) lambda!199380))))

(assert (= (and d!1476874 (not res!1957784)) b!4656082))

(assert (= (and b!4656082 res!1957785) b!4656083))

(declare-fun b_lambda!174083 () Bool)

(assert (=> (not b_lambda!174083) (not b!4656082)))

(assert (=> b!4656082 m!5535769))

(assert (=> b!4656083 m!5534929))

(assert (=> b!4655713 d!1476874))

(declare-fun b!4656084 () Bool)

(declare-fun e!2905061 () Bool)

(assert (=> b!4656084 (= e!2905061 (not (contains!15039 (keys!18384 lt!1818660) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))))

(declare-fun b!4656085 () Bool)

(declare-fun e!2905062 () Bool)

(assert (=> b!4656085 (= e!2905062 (contains!15039 (keys!18384 lt!1818660) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun b!4656086 () Bool)

(declare-fun e!2905063 () Bool)

(assert (=> b!4656086 (= e!2905063 e!2905062)))

(declare-fun res!1957786 () Bool)

(assert (=> b!4656086 (=> (not res!1957786) (not e!2905062))))

(assert (=> b!4656086 (= res!1957786 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818660) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))))

(declare-fun b!4656087 () Bool)

(declare-fun e!2905065 () Unit!118533)

(declare-fun lt!1818900 () Unit!118533)

(assert (=> b!4656087 (= e!2905065 lt!1818900)))

(declare-fun lt!1818903 () Unit!118533)

(assert (=> b!4656087 (= lt!1818903 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818660) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> b!4656087 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818660) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun lt!1818901 () Unit!118533)

(assert (=> b!4656087 (= lt!1818901 lt!1818903)))

(assert (=> b!4656087 (= lt!1818900 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818660) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun call!325384 () Bool)

(assert (=> b!4656087 call!325384))

(declare-fun b!4656088 () Bool)

(declare-fun e!2905060 () List!52023)

(assert (=> b!4656088 (= e!2905060 (keys!18384 lt!1818660))))

(declare-fun b!4656089 () Bool)

(assert (=> b!4656089 (= e!2905060 (getKeysList!749 (toList!5209 lt!1818660)))))

(declare-fun d!1476876 () Bool)

(assert (=> d!1476876 e!2905063))

(declare-fun res!1957787 () Bool)

(assert (=> d!1476876 (=> res!1957787 e!2905063)))

(assert (=> d!1476876 (= res!1957787 e!2905061)))

(declare-fun res!1957788 () Bool)

(assert (=> d!1476876 (=> (not res!1957788) (not e!2905061))))

(declare-fun lt!1818902 () Bool)

(assert (=> d!1476876 (= res!1957788 (not lt!1818902))))

(declare-fun lt!1818907 () Bool)

(assert (=> d!1476876 (= lt!1818902 lt!1818907)))

(declare-fun lt!1818905 () Unit!118533)

(assert (=> d!1476876 (= lt!1818905 e!2905065)))

(declare-fun c!796954 () Bool)

(assert (=> d!1476876 (= c!796954 lt!1818907)))

(assert (=> d!1476876 (= lt!1818907 (containsKey!2726 (toList!5209 lt!1818660) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> d!1476876 (= (contains!15037 lt!1818660 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))) lt!1818902)))

(declare-fun bm!325379 () Bool)

(assert (=> bm!325379 (= call!325384 (contains!15039 e!2905060 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun c!796956 () Bool)

(assert (=> bm!325379 (= c!796956 c!796954)))

(declare-fun b!4656090 () Bool)

(declare-fun e!2905064 () Unit!118533)

(declare-fun Unit!118690 () Unit!118533)

(assert (=> b!4656090 (= e!2905064 Unit!118690)))

(declare-fun b!4656091 () Bool)

(assert (=> b!4656091 (= e!2905065 e!2905064)))

(declare-fun c!796955 () Bool)

(assert (=> b!4656091 (= c!796955 call!325384)))

(declare-fun b!4656092 () Bool)

(assert (=> b!4656092 false))

(declare-fun lt!1818906 () Unit!118533)

(declare-fun lt!1818904 () Unit!118533)

(assert (=> b!4656092 (= lt!1818906 lt!1818904)))

(assert (=> b!4656092 (containsKey!2726 (toList!5209 lt!1818660) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))

(assert (=> b!4656092 (= lt!1818904 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818660) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun Unit!118691 () Unit!118533)

(assert (=> b!4656092 (= e!2905064 Unit!118691)))

(assert (= (and d!1476876 c!796954) b!4656087))

(assert (= (and d!1476876 (not c!796954)) b!4656091))

(assert (= (and b!4656091 c!796955) b!4656092))

(assert (= (and b!4656091 (not c!796955)) b!4656090))

(assert (= (or b!4656087 b!4656091) bm!325379))

(assert (= (and bm!325379 c!796956) b!4656089))

(assert (= (and bm!325379 (not c!796956)) b!4656088))

(assert (= (and d!1476876 res!1957788) b!4656084))

(assert (= (and d!1476876 (not res!1957787)) b!4656086))

(assert (= (and b!4656086 res!1957786) b!4656085))

(declare-fun m!5535791 () Bool)

(assert (=> b!4656088 m!5535791))

(declare-fun m!5535793 () Bool)

(assert (=> d!1476876 m!5535793))

(declare-fun m!5535795 () Bool)

(assert (=> b!4656089 m!5535795))

(declare-fun m!5535797 () Bool)

(assert (=> bm!325379 m!5535797))

(declare-fun m!5535799 () Bool)

(assert (=> b!4656087 m!5535799))

(declare-fun m!5535801 () Bool)

(assert (=> b!4656087 m!5535801))

(assert (=> b!4656087 m!5535801))

(declare-fun m!5535803 () Bool)

(assert (=> b!4656087 m!5535803))

(declare-fun m!5535805 () Bool)

(assert (=> b!4656087 m!5535805))

(assert (=> b!4656092 m!5535793))

(declare-fun m!5535807 () Bool)

(assert (=> b!4656092 m!5535807))

(assert (=> b!4656086 m!5535801))

(assert (=> b!4656086 m!5535801))

(assert (=> b!4656086 m!5535803))

(assert (=> b!4656085 m!5535791))

(assert (=> b!4656085 m!5535791))

(declare-fun m!5535809 () Bool)

(assert (=> b!4656085 m!5535809))

(assert (=> b!4656084 m!5535791))

(assert (=> b!4656084 m!5535791))

(assert (=> b!4656084 m!5535809))

(assert (=> b!4655713 d!1476876))

(declare-fun d!1476878 () Bool)

(declare-fun res!1957791 () Bool)

(declare-fun e!2905068 () Bool)

(assert (=> d!1476878 (=> res!1957791 e!2905068)))

(assert (=> d!1476878 (= res!1957791 ((_ is Nil!51896) (t!359136 (toList!5209 lt!1818237))))))

(assert (=> d!1476878 (= (forall!11026 (t!359136 (toList!5209 lt!1818237)) lambda!199302) e!2905068)))

(declare-fun b!4656095 () Bool)

(declare-fun e!2905069 () Bool)

(assert (=> b!4656095 (= e!2905068 e!2905069)))

(declare-fun res!1957792 () Bool)

(assert (=> b!4656095 (=> (not res!1957792) (not e!2905069))))

(assert (=> b!4656095 (= res!1957792 (dynLambda!21590 lambda!199302 (h!58040 (t!359136 (toList!5209 lt!1818237)))))))

(declare-fun b!4656096 () Bool)

(assert (=> b!4656096 (= e!2905069 (forall!11026 (t!359136 (t!359136 (toList!5209 lt!1818237))) lambda!199302))))

(assert (= (and d!1476878 (not res!1957791)) b!4656095))

(assert (= (and b!4656095 res!1957792) b!4656096))

(declare-fun b_lambda!174085 () Bool)

(assert (=> (not b_lambda!174085) (not b!4656095)))

(declare-fun m!5535817 () Bool)

(assert (=> b!4656095 m!5535817))

(declare-fun m!5535819 () Bool)

(assert (=> b!4656096 m!5535819))

(assert (=> b!4655662 d!1476878))

(declare-fun d!1476882 () Bool)

(declare-fun res!1957793 () Bool)

(declare-fun e!2905070 () Bool)

(assert (=> d!1476882 (=> res!1957793 e!2905070)))

(assert (=> d!1476882 (= res!1957793 (and ((_ is Cons!51896) (t!359136 lt!1818425)) (= (_1!29797 (h!58040 (t!359136 lt!1818425))) key!4968)))))

(assert (=> d!1476882 (= (containsKey!2725 (t!359136 lt!1818425) key!4968) e!2905070)))

(declare-fun b!4656097 () Bool)

(declare-fun e!2905071 () Bool)

(assert (=> b!4656097 (= e!2905070 e!2905071)))

(declare-fun res!1957794 () Bool)

(assert (=> b!4656097 (=> (not res!1957794) (not e!2905071))))

(assert (=> b!4656097 (= res!1957794 ((_ is Cons!51896) (t!359136 lt!1818425)))))

(declare-fun b!4656098 () Bool)

(assert (=> b!4656098 (= e!2905071 (containsKey!2725 (t!359136 (t!359136 lt!1818425)) key!4968))))

(assert (= (and d!1476882 (not res!1957793)) b!4656097))

(assert (= (and b!4656097 res!1957794) b!4656098))

(declare-fun m!5535823 () Bool)

(assert (=> b!4656098 m!5535823))

(assert (=> b!4655609 d!1476882))

(declare-fun d!1476886 () Bool)

(declare-fun res!1957795 () Bool)

(declare-fun e!2905072 () Bool)

(assert (=> d!1476886 (=> res!1957795 e!2905072)))

(assert (=> d!1476886 (= res!1957795 (and ((_ is Cons!51896) (t!359136 (t!359136 oldBucket!40))) (= (_1!29797 (h!58040 (t!359136 (t!359136 oldBucket!40)))) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))))

(assert (=> d!1476886 (= (containsKey!2725 (t!359136 (t!359136 oldBucket!40)) (_1!29797 (h!58040 (t!359136 oldBucket!40)))) e!2905072)))

(declare-fun b!4656099 () Bool)

(declare-fun e!2905073 () Bool)

(assert (=> b!4656099 (= e!2905072 e!2905073)))

(declare-fun res!1957796 () Bool)

(assert (=> b!4656099 (=> (not res!1957796) (not e!2905073))))

(assert (=> b!4656099 (= res!1957796 ((_ is Cons!51896) (t!359136 (t!359136 oldBucket!40))))))

(declare-fun b!4656100 () Bool)

(assert (=> b!4656100 (= e!2905073 (containsKey!2725 (t!359136 (t!359136 (t!359136 oldBucket!40))) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (= (and d!1476886 (not res!1957795)) b!4656099))

(assert (= (and b!4656099 res!1957796) b!4656100))

(declare-fun m!5535827 () Bool)

(assert (=> b!4656100 m!5535827))

(assert (=> b!4655618 d!1476886))

(declare-fun d!1476890 () Bool)

(declare-fun res!1957797 () Bool)

(declare-fun e!2905076 () Bool)

(assert (=> d!1476890 (=> res!1957797 e!2905076)))

(assert (=> d!1476890 (= res!1957797 (and ((_ is Cons!51896) (t!359136 (toList!5209 lt!1818236))) (= (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818236)))) key!4968)))))

(assert (=> d!1476890 (= (containsKey!2726 (t!359136 (toList!5209 lt!1818236)) key!4968) e!2905076)))

(declare-fun b!4656105 () Bool)

(declare-fun e!2905077 () Bool)

(assert (=> b!4656105 (= e!2905076 e!2905077)))

(declare-fun res!1957798 () Bool)

(assert (=> b!4656105 (=> (not res!1957798) (not e!2905077))))

(assert (=> b!4656105 (= res!1957798 ((_ is Cons!51896) (t!359136 (toList!5209 lt!1818236))))))

(declare-fun b!4656106 () Bool)

(assert (=> b!4656106 (= e!2905077 (containsKey!2726 (t!359136 (t!359136 (toList!5209 lt!1818236))) key!4968))))

(assert (= (and d!1476890 (not res!1957797)) b!4656105))

(assert (= (and b!4656105 res!1957798) b!4656106))

(declare-fun m!5535831 () Bool)

(assert (=> b!4656106 m!5535831))

(assert (=> b!4655617 d!1476890))

(declare-fun bs!1065032 () Bool)

(declare-fun d!1476894 () Bool)

(assert (= bs!1065032 (and d!1476894 b!4655808)))

(declare-fun lambda!199422 () Int)

(assert (=> bs!1065032 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818710) (= lambda!199422 lambda!199390))))

(assert (=> bs!1065032 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199422 lambda!199389))))

(declare-fun bs!1065034 () Bool)

(assert (= bs!1065034 (and d!1476894 d!1476854)))

(assert (=> bs!1065034 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818889) (= lambda!199422 lambda!199421))))

(declare-fun bs!1065036 () Bool)

(assert (= bs!1065036 (and d!1476894 d!1476386)))

(assert (=> bs!1065036 (not (= lambda!199422 lambda!199309))))

(declare-fun bs!1065038 () Bool)

(assert (= bs!1065038 (and d!1476894 d!1476560)))

(assert (=> bs!1065038 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818394) (= lambda!199422 lambda!199364))))

(declare-fun bs!1065040 () Bool)

(assert (= bs!1065040 (and d!1476894 b!4655328)))

(assert (=> bs!1065040 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818237) (= lambda!199422 lambda!199302))))

(declare-fun bs!1065042 () Bool)

(assert (= bs!1065042 (and d!1476894 d!1476564)))

(assert (=> bs!1065042 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818624) (= lambda!199422 lambda!199368))))

(declare-fun bs!1065044 () Bool)

(assert (= bs!1065044 (and d!1476894 d!1476352)))

(assert (=> bs!1065044 (not (= lambda!199422 lambda!199229))))

(declare-fun bs!1065046 () Bool)

(assert (= bs!1065046 (and d!1476894 d!1476842)))

(assert (=> bs!1065046 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818660) (= lambda!199422 lambda!199415))))

(declare-fun bs!1065048 () Bool)

(assert (= bs!1065048 (and d!1476894 d!1476696)))

(assert (=> bs!1065048 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818237) (= lambda!199422 lambda!199387))))

(assert (=> bs!1065040 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818394) (= lambda!199422 lambda!199303))))

(declare-fun bs!1065051 () Bool)

(assert (= bs!1065051 (and d!1476894 d!1476594)))

(assert (=> bs!1065051 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818237) (= lambda!199422 lambda!199377))))

(declare-fun bs!1065052 () Bool)

(assert (= bs!1065052 (and d!1476894 b!4655329)))

(assert (=> bs!1065052 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818237) (= lambda!199422 lambda!199301))))

(declare-fun bs!1065054 () Bool)

(assert (= bs!1065054 (and d!1476894 b!4656058)))

(assert (=> bs!1065054 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818890) (= lambda!199422 lambda!199420))))

(declare-fun bs!1065056 () Bool)

(assert (= bs!1065056 (and d!1476894 b!4656059)))

(assert (=> bs!1065056 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199422 lambda!199416))))

(assert (=> bs!1065054 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199422 lambda!199419))))

(declare-fun bs!1065057 () Bool)

(assert (= bs!1065057 (and d!1476894 b!4655655)))

(assert (=> bs!1065057 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818625) (= lambda!199422 lambda!199367))))

(declare-fun bs!1065059 () Bool)

(assert (= bs!1065059 (and d!1476894 b!4655713)))

(assert (=> bs!1065059 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199422 lambda!199379))))

(declare-fun bs!1065061 () Bool)

(assert (= bs!1065061 (and d!1476894 d!1476716)))

(assert (=> bs!1065061 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818625) (= lambda!199422 lambda!199392))))

(declare-fun bs!1065063 () Bool)

(assert (= bs!1065063 (and d!1476894 d!1476610)))

(assert (=> bs!1065063 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818659) (= lambda!199422 lambda!199381))))

(assert (=> bs!1065057 (= lambda!199422 lambda!199366)))

(declare-fun bs!1065065 () Bool)

(assert (= bs!1065065 (and d!1476894 b!4655809)))

(assert (=> bs!1065065 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199422 lambda!199388))))

(declare-fun bs!1065067 () Bool)

(assert (= bs!1065067 (and d!1476894 d!1476712)))

(assert (=> bs!1065067 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818709) (= lambda!199422 lambda!199391))))

(declare-fun bs!1065069 () Bool)

(assert (= bs!1065069 (and d!1476894 b!4655656)))

(assert (=> bs!1065069 (= lambda!199422 lambda!199365)))

(declare-fun bs!1065071 () Bool)

(assert (= bs!1065071 (and d!1476894 d!1476356)))

(assert (=> bs!1065071 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818393) (= lambda!199422 lambda!199304))))

(declare-fun bs!1065072 () Bool)

(assert (= bs!1065072 (and d!1476894 b!4655714)))

(assert (=> bs!1065072 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199422 lambda!199378))))

(assert (=> bs!1065059 (= (= (+!1984 lt!1818237 (h!58040 oldBucket!40)) lt!1818660) (= lambda!199422 lambda!199380))))

(assert (=> d!1476894 true))

(assert (=> d!1476894 (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199422)))

(declare-fun lt!1818911 () Unit!118533)

(assert (=> d!1476894 (= lt!1818911 (choose!32007 (+!1984 lt!1818237 (h!58040 oldBucket!40))))))

(assert (=> d!1476894 (= (lemmaContainsAllItsOwnKeys!598 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lt!1818911)))

(declare-fun bs!1065073 () Bool)

(assert (= bs!1065073 d!1476894))

(declare-fun m!5535841 () Bool)

(assert (=> bs!1065073 m!5535841))

(assert (=> bs!1065073 m!5534243))

(declare-fun m!5535843 () Bool)

(assert (=> bs!1065073 m!5535843))

(assert (=> bm!325345 d!1476894))

(declare-fun d!1476900 () Bool)

(declare-fun res!1957802 () Bool)

(declare-fun e!2905084 () Bool)

(assert (=> d!1476900 (=> res!1957802 e!2905084)))

(assert (=> d!1476900 (= res!1957802 (or ((_ is Nil!51896) (toList!5209 lt!1818422)) ((_ is Nil!51896) (t!359136 (toList!5209 lt!1818422)))))))

(assert (=> d!1476900 (= (noDuplicatedKeys!351 (toList!5209 lt!1818422)) e!2905084)))

(declare-fun b!4656116 () Bool)

(declare-fun e!2905085 () Bool)

(assert (=> b!4656116 (= e!2905084 e!2905085)))

(declare-fun res!1957803 () Bool)

(assert (=> b!4656116 (=> (not res!1957803) (not e!2905085))))

(assert (=> b!4656116 (= res!1957803 (not (containsKey!2726 (t!359136 (toList!5209 lt!1818422)) (_1!29797 (h!58040 (toList!5209 lt!1818422))))))))

(declare-fun b!4656117 () Bool)

(assert (=> b!4656117 (= e!2905085 (noDuplicatedKeys!351 (t!359136 (toList!5209 lt!1818422))))))

(assert (= (and d!1476900 (not res!1957802)) b!4656116))

(assert (= (and b!4656116 res!1957803) b!4656117))

(declare-fun m!5535847 () Bool)

(assert (=> b!4656116 m!5535847))

(declare-fun m!5535849 () Bool)

(assert (=> b!4656117 m!5535849))

(assert (=> d!1476538 d!1476900))

(declare-fun d!1476902 () Bool)

(assert (=> d!1476902 (= (invariantList!1298 (toList!5209 lt!1818659)) (noDuplicatedKeys!351 (toList!5209 lt!1818659)))))

(declare-fun bs!1065074 () Bool)

(assert (= bs!1065074 d!1476902))

(declare-fun m!5535857 () Bool)

(assert (=> bs!1065074 m!5535857))

(assert (=> b!4655716 d!1476902))

(declare-fun d!1476904 () Bool)

(assert (=> d!1476904 (= (invariantList!1298 (toList!5209 lt!1818661)) (noDuplicatedKeys!351 (toList!5209 lt!1818661)))))

(declare-fun bs!1065075 () Bool)

(assert (= bs!1065075 d!1476904))

(declare-fun m!5535863 () Bool)

(assert (=> bs!1065075 m!5535863))

(assert (=> d!1476612 d!1476904))

(declare-fun d!1476906 () Bool)

(declare-fun res!1957804 () Bool)

(declare-fun e!2905086 () Bool)

(assert (=> d!1476906 (=> res!1957804 e!2905086)))

(assert (=> d!1476906 (= res!1957804 ((_ is Nil!51897) (t!359137 lt!1818235)))))

(assert (=> d!1476906 (= (forall!11024 (t!359137 lt!1818235) lambda!199382) e!2905086)))

(declare-fun b!4656118 () Bool)

(declare-fun e!2905087 () Bool)

(assert (=> b!4656118 (= e!2905086 e!2905087)))

(declare-fun res!1957805 () Bool)

(assert (=> b!4656118 (=> (not res!1957805) (not e!2905087))))

(assert (=> b!4656118 (= res!1957805 (dynLambda!21588 lambda!199382 (h!58041 (t!359137 lt!1818235))))))

(declare-fun b!4656119 () Bool)

(assert (=> b!4656119 (= e!2905087 (forall!11024 (t!359137 (t!359137 lt!1818235)) lambda!199382))))

(assert (= (and d!1476906 (not res!1957804)) b!4656118))

(assert (= (and b!4656118 res!1957805) b!4656119))

(declare-fun b_lambda!174087 () Bool)

(assert (=> (not b_lambda!174087) (not b!4656118)))

(declare-fun m!5535873 () Bool)

(assert (=> b!4656118 m!5535873))

(declare-fun m!5535875 () Bool)

(assert (=> b!4656119 m!5535875))

(assert (=> d!1476612 d!1476906))

(declare-fun d!1476910 () Bool)

(declare-fun c!796962 () Bool)

(assert (=> d!1476910 (= c!796962 ((_ is Nil!51899) lt!1818629))))

(declare-fun e!2905088 () (InoxSet K!13250))

(assert (=> d!1476910 (= (content!8994 lt!1818629) e!2905088)))

(declare-fun b!4656120 () Bool)

(assert (=> b!4656120 (= e!2905088 ((as const (Array K!13250 Bool)) false))))

(declare-fun b!4656121 () Bool)

(assert (=> b!4656121 (= e!2905088 ((_ map or) (store ((as const (Array K!13250 Bool)) false) (h!58045 lt!1818629) true) (content!8994 (t!359139 lt!1818629))))))

(assert (= (and d!1476910 c!796962) b!4656120))

(assert (= (and d!1476910 (not c!796962)) b!4656121))

(declare-fun m!5535877 () Bool)

(assert (=> b!4656121 m!5535877))

(declare-fun m!5535879 () Bool)

(assert (=> b!4656121 m!5535879))

(assert (=> b!4655673 d!1476910))

(declare-fun d!1476912 () Bool)

(declare-fun c!796963 () Bool)

(assert (=> d!1476912 (= c!796963 ((_ is Nil!51899) (map!11470 (toList!5209 lt!1818236) lambda!199374)))))

(declare-fun e!2905089 () (InoxSet K!13250))

(assert (=> d!1476912 (= (content!8994 (map!11470 (toList!5209 lt!1818236) lambda!199374)) e!2905089)))

(declare-fun b!4656122 () Bool)

(assert (=> b!4656122 (= e!2905089 ((as const (Array K!13250 Bool)) false))))

(declare-fun b!4656123 () Bool)

(assert (=> b!4656123 (= e!2905089 ((_ map or) (store ((as const (Array K!13250 Bool)) false) (h!58045 (map!11470 (toList!5209 lt!1818236) lambda!199374)) true) (content!8994 (t!359139 (map!11470 (toList!5209 lt!1818236) lambda!199374)))))))

(assert (= (and d!1476912 c!796963) b!4656122))

(assert (= (and d!1476912 (not c!796963)) b!4656123))

(declare-fun m!5535881 () Bool)

(assert (=> b!4656123 m!5535881))

(declare-fun m!5535883 () Bool)

(assert (=> b!4656123 m!5535883))

(assert (=> b!4655673 d!1476912))

(declare-fun d!1476914 () Bool)

(declare-fun lt!1818921 () List!52023)

(assert (=> d!1476914 (= (size!35969 lt!1818921) (size!35970 (toList!5209 lt!1818236)))))

(declare-fun e!2905094 () List!52023)

(assert (=> d!1476914 (= lt!1818921 e!2905094)))

(declare-fun c!796964 () Bool)

(assert (=> d!1476914 (= c!796964 ((_ is Nil!51896) (toList!5209 lt!1818236)))))

(assert (=> d!1476914 (= (map!11470 (toList!5209 lt!1818236) lambda!199374) lt!1818921)))

(declare-fun b!4656128 () Bool)

(assert (=> b!4656128 (= e!2905094 Nil!51899)))

(declare-fun b!4656129 () Bool)

(assert (=> b!4656129 (= e!2905094 ($colon$colon!1061 (map!11470 (t!359136 (toList!5209 lt!1818236)) lambda!199374) (dynLambda!21591 lambda!199374 (h!58040 (toList!5209 lt!1818236)))))))

(assert (= (and d!1476914 c!796964) b!4656128))

(assert (= (and d!1476914 (not c!796964)) b!4656129))

(declare-fun b_lambda!174089 () Bool)

(assert (=> (not b_lambda!174089) (not b!4656129)))

(declare-fun m!5535885 () Bool)

(assert (=> d!1476914 m!5535885))

(assert (=> d!1476914 m!5535041))

(declare-fun m!5535887 () Bool)

(assert (=> b!4656129 m!5535887))

(declare-fun m!5535889 () Bool)

(assert (=> b!4656129 m!5535889))

(assert (=> b!4656129 m!5535887))

(assert (=> b!4656129 m!5535889))

(declare-fun m!5535891 () Bool)

(assert (=> b!4656129 m!5535891))

(assert (=> b!4655673 d!1476914))

(declare-fun bs!1065076 () Bool)

(declare-fun b!4656136 () Bool)

(assert (= bs!1065076 (and b!4656136 b!4655672)))

(declare-fun lambda!199424 () Int)

(assert (=> bs!1065076 (= (= (t!359136 (toList!5209 lt!1818394)) (toList!5209 lt!1818236)) (= lambda!199424 lambda!199373))))

(declare-fun bs!1065077 () Bool)

(assert (= bs!1065077 (and b!4656136 b!4655869)))

(assert (=> bs!1065077 (= (= (t!359136 (toList!5209 lt!1818394)) (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236))))) (= lambda!199424 lambda!199401))))

(declare-fun bs!1065078 () Bool)

(assert (= bs!1065078 (and b!4656136 b!4655599)))

(assert (=> bs!1065078 (= (= (t!359136 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818236))) (= lambda!199424 lambda!199356))))

(declare-fun bs!1065079 () Bool)

(assert (= bs!1065079 (and b!4656136 b!4655885)))

(assert (=> bs!1065079 (= (= (t!359136 (toList!5209 lt!1818394)) (toList!5209 lt!1818394)) (= lambda!199424 lambda!199405))))

(declare-fun bs!1065080 () Bool)

(assert (= bs!1065080 (and b!4656136 b!4655867)))

(assert (=> bs!1065080 (= (= (t!359136 (toList!5209 lt!1818394)) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (= lambda!199424 lambda!199399))))

(declare-fun bs!1065081 () Bool)

(assert (= bs!1065081 (and b!4656136 b!4655595)))

(assert (=> bs!1065081 (= (= (t!359136 (toList!5209 lt!1818394)) (toList!5209 lt!1818236)) (= lambda!199424 lambda!199358))))

(declare-fun bs!1065082 () Bool)

(assert (= bs!1065082 (and b!4656136 b!4655848)))

(assert (=> bs!1065082 (= (= (t!359136 (toList!5209 lt!1818394)) (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389)))) (= lambda!199424 lambda!199394))))

(declare-fun bs!1065083 () Bool)

(assert (= bs!1065083 (and b!4656136 b!4655846)))

(assert (=> bs!1065083 (= (= (t!359136 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818389))) (= lambda!199424 lambda!199393))))

(declare-fun bs!1065084 () Bool)

(assert (= bs!1065084 (and b!4656136 b!4655842)))

(assert (=> bs!1065084 (= (= (t!359136 (toList!5209 lt!1818394)) (toList!5209 lt!1818389)) (= lambda!199424 lambda!199395))))

(declare-fun bs!1065085 () Bool)

(assert (= bs!1065085 (and b!4656136 b!4655724)))

(assert (=> bs!1065085 (= (= (t!359136 (toList!5209 lt!1818394)) (toList!5209 lt!1818389)) (= lambda!199424 lambda!199383))))

(declare-fun bs!1065086 () Bool)

(assert (= bs!1065086 (and b!4656136 b!4655601)))

(assert (=> bs!1065086 (= (= (t!359136 (toList!5209 lt!1818394)) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199424 lambda!199357))))

(declare-fun bs!1065087 () Bool)

(assert (= bs!1065087 (and b!4656136 b!4655863)))

(assert (=> bs!1065087 (= (= (t!359136 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818236))) (= lambda!199424 lambda!199402))))

(assert (=> b!4656136 true))

(declare-fun bs!1065088 () Bool)

(declare-fun b!4656138 () Bool)

(assert (= bs!1065088 (and b!4656138 b!4655672)))

(declare-fun lambda!199425 () Int)

(assert (=> bs!1065088 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (toList!5209 lt!1818236)) (= lambda!199425 lambda!199373))))

(declare-fun bs!1065089 () Bool)

(assert (= bs!1065089 (and b!4656138 b!4655869)))

(assert (=> bs!1065089 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236))))) (= lambda!199425 lambda!199401))))

(declare-fun bs!1065090 () Bool)

(assert (= bs!1065090 (and b!4656138 b!4655599)))

(assert (=> bs!1065090 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (t!359136 (toList!5209 lt!1818236))) (= lambda!199425 lambda!199356))))

(declare-fun bs!1065091 () Bool)

(assert (= bs!1065091 (and b!4656138 b!4655885)))

(assert (=> bs!1065091 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (toList!5209 lt!1818394)) (= lambda!199425 lambda!199405))))

(declare-fun bs!1065092 () Bool)

(assert (= bs!1065092 (and b!4656138 b!4655595)))

(assert (=> bs!1065092 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (toList!5209 lt!1818236)) (= lambda!199425 lambda!199358))))

(declare-fun bs!1065093 () Bool)

(assert (= bs!1065093 (and b!4656138 b!4655848)))

(assert (=> bs!1065093 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389)))) (= lambda!199425 lambda!199394))))

(declare-fun bs!1065094 () Bool)

(assert (= bs!1065094 (and b!4656138 b!4655846)))

(assert (=> bs!1065094 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (t!359136 (toList!5209 lt!1818389))) (= lambda!199425 lambda!199393))))

(declare-fun bs!1065095 () Bool)

(assert (= bs!1065095 (and b!4656138 b!4655842)))

(assert (=> bs!1065095 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (toList!5209 lt!1818389)) (= lambda!199425 lambda!199395))))

(declare-fun bs!1065096 () Bool)

(assert (= bs!1065096 (and b!4656138 b!4655724)))

(assert (=> bs!1065096 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (toList!5209 lt!1818389)) (= lambda!199425 lambda!199383))))

(declare-fun bs!1065097 () Bool)

(assert (= bs!1065097 (and b!4656138 b!4655867)))

(assert (=> bs!1065097 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (= lambda!199425 lambda!199399))))

(declare-fun bs!1065098 () Bool)

(assert (= bs!1065098 (and b!4656138 b!4656136)))

(assert (=> bs!1065098 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (t!359136 (toList!5209 lt!1818394))) (= lambda!199425 lambda!199424))))

(declare-fun bs!1065099 () Bool)

(assert (= bs!1065099 (and b!4656138 b!4655601)))

(assert (=> bs!1065099 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199425 lambda!199357))))

(declare-fun bs!1065100 () Bool)

(assert (= bs!1065100 (and b!4656138 b!4655863)))

(assert (=> bs!1065100 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394))) (t!359136 (toList!5209 lt!1818236))) (= lambda!199425 lambda!199402))))

(assert (=> b!4656138 true))

(declare-fun bs!1065101 () Bool)

(declare-fun b!4656132 () Bool)

(assert (= bs!1065101 (and b!4656132 b!4655672)))

(declare-fun lambda!199426 () Int)

(assert (=> bs!1065101 (= (= (toList!5209 lt!1818394) (toList!5209 lt!1818236)) (= lambda!199426 lambda!199373))))

(declare-fun bs!1065102 () Bool)

(assert (= bs!1065102 (and b!4656132 b!4655869)))

(assert (=> bs!1065102 (= (= (toList!5209 lt!1818394) (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236))))) (= lambda!199426 lambda!199401))))

(declare-fun bs!1065103 () Bool)

(assert (= bs!1065103 (and b!4656132 b!4656138)))

(assert (=> bs!1065103 (= (= (toList!5209 lt!1818394) (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394)))) (= lambda!199426 lambda!199425))))

(declare-fun bs!1065104 () Bool)

(assert (= bs!1065104 (and b!4656132 b!4655599)))

(assert (=> bs!1065104 (= (= (toList!5209 lt!1818394) (t!359136 (toList!5209 lt!1818236))) (= lambda!199426 lambda!199356))))

(declare-fun bs!1065105 () Bool)

(assert (= bs!1065105 (and b!4656132 b!4655885)))

(assert (=> bs!1065105 (= lambda!199426 lambda!199405)))

(declare-fun bs!1065106 () Bool)

(assert (= bs!1065106 (and b!4656132 b!4655595)))

(assert (=> bs!1065106 (= (= (toList!5209 lt!1818394) (toList!5209 lt!1818236)) (= lambda!199426 lambda!199358))))

(declare-fun bs!1065107 () Bool)

(assert (= bs!1065107 (and b!4656132 b!4655848)))

(assert (=> bs!1065107 (= (= (toList!5209 lt!1818394) (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389)))) (= lambda!199426 lambda!199394))))

(declare-fun bs!1065108 () Bool)

(assert (= bs!1065108 (and b!4656132 b!4655846)))

(assert (=> bs!1065108 (= (= (toList!5209 lt!1818394) (t!359136 (toList!5209 lt!1818389))) (= lambda!199426 lambda!199393))))

(declare-fun bs!1065109 () Bool)

(assert (= bs!1065109 (and b!4656132 b!4655842)))

(assert (=> bs!1065109 (= (= (toList!5209 lt!1818394) (toList!5209 lt!1818389)) (= lambda!199426 lambda!199395))))

(declare-fun bs!1065110 () Bool)

(assert (= bs!1065110 (and b!4656132 b!4655724)))

(assert (=> bs!1065110 (= (= (toList!5209 lt!1818394) (toList!5209 lt!1818389)) (= lambda!199426 lambda!199383))))

(declare-fun bs!1065111 () Bool)

(assert (= bs!1065111 (and b!4656132 b!4655867)))

(assert (=> bs!1065111 (= (= (toList!5209 lt!1818394) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (= lambda!199426 lambda!199399))))

(declare-fun bs!1065112 () Bool)

(assert (= bs!1065112 (and b!4656132 b!4656136)))

(assert (=> bs!1065112 (= (= (toList!5209 lt!1818394) (t!359136 (toList!5209 lt!1818394))) (= lambda!199426 lambda!199424))))

(declare-fun bs!1065113 () Bool)

(assert (= bs!1065113 (and b!4656132 b!4655601)))

(assert (=> bs!1065113 (= (= (toList!5209 lt!1818394) (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236)))) (= lambda!199426 lambda!199357))))

(declare-fun bs!1065114 () Bool)

(assert (= bs!1065114 (and b!4656132 b!4655863)))

(assert (=> bs!1065114 (= (= (toList!5209 lt!1818394) (t!359136 (toList!5209 lt!1818236))) (= lambda!199426 lambda!199402))))

(assert (=> b!4656132 true))

(declare-fun bs!1065115 () Bool)

(declare-fun b!4656135 () Bool)

(assert (= bs!1065115 (and b!4656135 b!4655598)))

(declare-fun lambda!199427 () Int)

(assert (=> bs!1065115 (= lambda!199427 lambda!199359)))

(declare-fun bs!1065116 () Bool)

(assert (= bs!1065116 (and b!4656135 b!4655866)))

(assert (=> bs!1065116 (= lambda!199427 lambda!199403)))

(declare-fun bs!1065117 () Bool)

(assert (= bs!1065117 (and b!4656135 b!4655725)))

(assert (=> bs!1065117 (= lambda!199427 lambda!199384)))

(declare-fun bs!1065118 () Bool)

(assert (= bs!1065118 (and b!4656135 b!4655845)))

(assert (=> bs!1065118 (= lambda!199427 lambda!199397)))

(declare-fun bs!1065119 () Bool)

(assert (= bs!1065119 (and b!4656135 b!4655886)))

(assert (=> bs!1065119 (= lambda!199427 lambda!199406)))

(declare-fun bs!1065120 () Bool)

(assert (= bs!1065120 (and b!4656135 b!4655673)))

(assert (=> bs!1065120 (= lambda!199427 lambda!199374)))

(declare-fun b!4656130 () Bool)

(declare-fun res!1957812 () Bool)

(declare-fun e!2905096 () Bool)

(assert (=> b!4656130 (=> (not res!1957812) (not e!2905096))))

(declare-fun lt!1818928 () List!52023)

(assert (=> b!4656130 (= res!1957812 (= (length!530 lt!1818928) (length!531 (toList!5209 lt!1818394))))))

(declare-fun b!4656131 () Bool)

(assert (=> b!4656131 false))

(declare-fun e!2905098 () Unit!118533)

(declare-fun Unit!118694 () Unit!118533)

(assert (=> b!4656131 (= e!2905098 Unit!118694)))

(declare-fun res!1957811 () Bool)

(assert (=> b!4656132 (=> (not res!1957811) (not e!2905096))))

(assert (=> b!4656132 (= res!1957811 (forall!11027 lt!1818928 lambda!199426))))

(declare-fun d!1476916 () Bool)

(assert (=> d!1476916 e!2905096))

(declare-fun res!1957810 () Bool)

(assert (=> d!1476916 (=> (not res!1957810) (not e!2905096))))

(assert (=> d!1476916 (= res!1957810 (noDuplicate!837 lt!1818928))))

(declare-fun e!2905097 () List!52023)

(assert (=> d!1476916 (= lt!1818928 e!2905097)))

(declare-fun c!796966 () Bool)

(assert (=> d!1476916 (= c!796966 ((_ is Cons!51896) (toList!5209 lt!1818394)))))

(assert (=> d!1476916 (invariantList!1298 (toList!5209 lt!1818394))))

(assert (=> d!1476916 (= (getKeysList!749 (toList!5209 lt!1818394)) lt!1818928)))

(declare-fun b!4656133 () Bool)

(declare-fun e!2905095 () Unit!118533)

(declare-fun Unit!118695 () Unit!118533)

(assert (=> b!4656133 (= e!2905095 Unit!118695)))

(declare-fun b!4656134 () Bool)

(declare-fun Unit!118696 () Unit!118533)

(assert (=> b!4656134 (= e!2905098 Unit!118696)))

(assert (=> b!4656135 (= e!2905096 (= (content!8994 lt!1818928) (content!8994 (map!11470 (toList!5209 lt!1818394) lambda!199427))))))

(assert (=> b!4656136 false))

(declare-fun lt!1818922 () Unit!118533)

(assert (=> b!4656136 (= lt!1818922 (forallContained!3227 (getKeysList!749 (t!359136 (toList!5209 lt!1818394))) lambda!199424 (_1!29797 (h!58040 (toList!5209 lt!1818394)))))))

(declare-fun Unit!118697 () Unit!118533)

(assert (=> b!4656136 (= e!2905095 Unit!118697)))

(declare-fun b!4656137 () Bool)

(assert (=> b!4656137 (= e!2905097 Nil!51899)))

(assert (=> b!4656138 (= e!2905097 (Cons!51899 (_1!29797 (h!58040 (toList!5209 lt!1818394))) (getKeysList!749 (t!359136 (toList!5209 lt!1818394)))))))

(declare-fun c!796967 () Bool)

(assert (=> b!4656138 (= c!796967 (containsKey!2726 (t!359136 (toList!5209 lt!1818394)) (_1!29797 (h!58040 (toList!5209 lt!1818394)))))))

(declare-fun lt!1818923 () Unit!118533)

(assert (=> b!4656138 (= lt!1818923 e!2905098)))

(declare-fun c!796965 () Bool)

(assert (=> b!4656138 (= c!796965 (contains!15039 (getKeysList!749 (t!359136 (toList!5209 lt!1818394))) (_1!29797 (h!58040 (toList!5209 lt!1818394)))))))

(declare-fun lt!1818924 () Unit!118533)

(assert (=> b!4656138 (= lt!1818924 e!2905095)))

(declare-fun lt!1818926 () List!52023)

(assert (=> b!4656138 (= lt!1818926 (getKeysList!749 (t!359136 (toList!5209 lt!1818394))))))

(declare-fun lt!1818927 () Unit!118533)

(assert (=> b!4656138 (= lt!1818927 (lemmaForallContainsAddHeadPreserves!257 (t!359136 (toList!5209 lt!1818394)) lt!1818926 (h!58040 (toList!5209 lt!1818394))))))

(assert (=> b!4656138 (forall!11027 lt!1818926 lambda!199425)))

(declare-fun lt!1818925 () Unit!118533)

(assert (=> b!4656138 (= lt!1818925 lt!1818927)))

(assert (= (and d!1476916 c!796966) b!4656138))

(assert (= (and d!1476916 (not c!796966)) b!4656137))

(assert (= (and b!4656138 c!796967) b!4656131))

(assert (= (and b!4656138 (not c!796967)) b!4656134))

(assert (= (and b!4656138 c!796965) b!4656136))

(assert (= (and b!4656138 (not c!796965)) b!4656133))

(assert (= (and d!1476916 res!1957810) b!4656130))

(assert (= (and b!4656130 res!1957812) b!4656132))

(assert (= (and b!4656132 res!1957811) b!4656135))

(declare-fun m!5535905 () Bool)

(assert (=> d!1476916 m!5535905))

(assert (=> d!1476916 m!5535095))

(declare-fun m!5535907 () Bool)

(assert (=> b!4656132 m!5535907))

(declare-fun m!5535909 () Bool)

(assert (=> b!4656136 m!5535909))

(assert (=> b!4656136 m!5535909))

(declare-fun m!5535911 () Bool)

(assert (=> b!4656136 m!5535911))

(declare-fun m!5535913 () Bool)

(assert (=> b!4656130 m!5535913))

(assert (=> b!4656130 m!5535379))

(assert (=> b!4656138 m!5535909))

(declare-fun m!5535915 () Bool)

(assert (=> b!4656138 m!5535915))

(declare-fun m!5535917 () Bool)

(assert (=> b!4656138 m!5535917))

(declare-fun m!5535919 () Bool)

(assert (=> b!4656138 m!5535919))

(assert (=> b!4656138 m!5535909))

(declare-fun m!5535921 () Bool)

(assert (=> b!4656138 m!5535921))

(declare-fun m!5535923 () Bool)

(assert (=> b!4656135 m!5535923))

(declare-fun m!5535925 () Bool)

(assert (=> b!4656135 m!5535925))

(assert (=> b!4656135 m!5535925))

(declare-fun m!5535927 () Bool)

(assert (=> b!4656135 m!5535927))

(assert (=> b!4655625 d!1476916))

(assert (=> b!4655628 d!1476680))

(declare-fun d!1476924 () Bool)

(assert (=> d!1476924 (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40)))))

(declare-fun lt!1818932 () Unit!118533)

(assert (=> d!1476924 (= lt!1818932 (choose!31999 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1476924 (invariantList!1298 (toList!5209 lt!1818394))))

(assert (=> d!1476924 (= (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818394) (_1!29797 (h!58040 oldBucket!40))) lt!1818932)))

(declare-fun bs!1065121 () Bool)

(assert (= bs!1065121 d!1476924))

(assert (=> bs!1065121 m!5534717))

(declare-fun m!5535929 () Bool)

(assert (=> bs!1065121 m!5535929))

(assert (=> bs!1065121 m!5535095))

(assert (=> b!4655628 d!1476924))

(declare-fun d!1476926 () Bool)

(assert (not d!1476926))

(assert (=> bs!1064659 d!1476926))

(assert (=> b!4655654 d!1476726))

(declare-fun d!1476930 () Bool)

(assert (=> d!1476930 (= (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40)))) (not (isEmpty!29005 (getValueByKey!1610 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))))

(declare-fun bs!1065122 () Bool)

(assert (= bs!1065122 d!1476930))

(assert (=> bs!1065122 m!5534751))

(declare-fun m!5535941 () Bool)

(assert (=> bs!1065122 m!5535941))

(assert (=> b!4655636 d!1476930))

(declare-fun b!4656157 () Bool)

(declare-fun e!2905110 () Option!11822)

(assert (=> b!4656157 (= e!2905110 (Some!11821 (_2!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun b!4656159 () Bool)

(declare-fun e!2905111 () Option!11822)

(assert (=> b!4656159 (= e!2905111 (getValueByKey!1610 (t!359136 (toList!5209 lt!1818389)) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4656160 () Bool)

(assert (=> b!4656160 (= e!2905111 None!11821)))

(declare-fun b!4656158 () Bool)

(assert (=> b!4656158 (= e!2905110 e!2905111)))

(declare-fun c!796976 () Bool)

(assert (=> b!4656158 (= c!796976 (and ((_ is Cons!51896) (toList!5209 lt!1818389)) (not (= (_1!29797 (h!58040 (toList!5209 lt!1818389))) (_1!29797 (h!58040 oldBucket!40))))))))

(declare-fun d!1476934 () Bool)

(declare-fun c!796975 () Bool)

(assert (=> d!1476934 (= c!796975 (and ((_ is Cons!51896) (toList!5209 lt!1818389)) (= (_1!29797 (h!58040 (toList!5209 lt!1818389))) (_1!29797 (h!58040 oldBucket!40)))))))

(assert (=> d!1476934 (= (getValueByKey!1610 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))) e!2905110)))

(assert (= (and d!1476934 c!796975) b!4656157))

(assert (= (and d!1476934 (not c!796975)) b!4656158))

(assert (= (and b!4656158 c!796976) b!4656159))

(assert (= (and b!4656158 (not c!796976)) b!4656160))

(declare-fun m!5535945 () Bool)

(assert (=> b!4656159 m!5535945))

(assert (=> b!4655636 d!1476934))

(declare-fun bs!1065124 () Bool)

(declare-fun b!4656167 () Bool)

(assert (= bs!1065124 (and b!4656167 b!4655808)))

(declare-fun lambda!199428 () Int)

(assert (=> bs!1065124 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818710) (= lambda!199428 lambda!199390))))

(assert (=> bs!1065124 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199428 lambda!199389))))

(declare-fun bs!1065125 () Bool)

(assert (= bs!1065125 (and b!4656167 d!1476854)))

(assert (=> bs!1065125 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818889) (= lambda!199428 lambda!199421))))

(declare-fun bs!1065126 () Bool)

(assert (= bs!1065126 (and b!4656167 d!1476386)))

(assert (=> bs!1065126 (not (= lambda!199428 lambda!199309))))

(declare-fun bs!1065127 () Bool)

(assert (= bs!1065127 (and b!4656167 d!1476560)))

(assert (=> bs!1065127 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818394) (= lambda!199428 lambda!199364))))

(declare-fun bs!1065128 () Bool)

(assert (= bs!1065128 (and b!4656167 b!4655328)))

(assert (=> bs!1065128 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818237) (= lambda!199428 lambda!199302))))

(declare-fun bs!1065129 () Bool)

(assert (= bs!1065129 (and b!4656167 d!1476564)))

(assert (=> bs!1065129 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818624) (= lambda!199428 lambda!199368))))

(declare-fun bs!1065130 () Bool)

(assert (= bs!1065130 (and b!4656167 d!1476352)))

(assert (=> bs!1065130 (not (= lambda!199428 lambda!199229))))

(declare-fun bs!1065131 () Bool)

(assert (= bs!1065131 (and b!4656167 d!1476842)))

(assert (=> bs!1065131 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818660) (= lambda!199428 lambda!199415))))

(declare-fun bs!1065132 () Bool)

(assert (= bs!1065132 (and b!4656167 d!1476696)))

(assert (=> bs!1065132 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818237) (= lambda!199428 lambda!199387))))

(assert (=> bs!1065128 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818394) (= lambda!199428 lambda!199303))))

(declare-fun bs!1065133 () Bool)

(assert (= bs!1065133 (and b!4656167 d!1476594)))

(assert (=> bs!1065133 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818237) (= lambda!199428 lambda!199377))))

(declare-fun bs!1065134 () Bool)

(assert (= bs!1065134 (and b!4656167 b!4655329)))

(assert (=> bs!1065134 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818237) (= lambda!199428 lambda!199301))))

(declare-fun bs!1065135 () Bool)

(assert (= bs!1065135 (and b!4656167 b!4656058)))

(assert (=> bs!1065135 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818890) (= lambda!199428 lambda!199420))))

(declare-fun bs!1065136 () Bool)

(assert (= bs!1065136 (and b!4656167 b!4656059)))

(assert (=> bs!1065136 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199428 lambda!199416))))

(assert (=> bs!1065135 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199428 lambda!199419))))

(declare-fun bs!1065137 () Bool)

(assert (= bs!1065137 (and b!4656167 b!4655655)))

(assert (=> bs!1065137 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818625) (= lambda!199428 lambda!199367))))

(declare-fun bs!1065138 () Bool)

(assert (= bs!1065138 (and b!4656167 b!4655713)))

(assert (=> bs!1065138 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199428 lambda!199379))))

(declare-fun bs!1065139 () Bool)

(assert (= bs!1065139 (and b!4656167 d!1476716)))

(assert (=> bs!1065139 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818625) (= lambda!199428 lambda!199392))))

(assert (=> bs!1065137 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199428 lambda!199366))))

(declare-fun bs!1065140 () Bool)

(assert (= bs!1065140 (and b!4656167 b!4655809)))

(assert (=> bs!1065140 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199428 lambda!199388))))

(declare-fun bs!1065141 () Bool)

(assert (= bs!1065141 (and b!4656167 d!1476894)))

(assert (=> bs!1065141 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199428 lambda!199422))))

(declare-fun bs!1065142 () Bool)

(assert (= bs!1065142 (and b!4656167 d!1476610)))

(assert (=> bs!1065142 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818659) (= lambda!199428 lambda!199381))))

(declare-fun bs!1065143 () Bool)

(assert (= bs!1065143 (and b!4656167 d!1476712)))

(assert (=> bs!1065143 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818709) (= lambda!199428 lambda!199391))))

(declare-fun bs!1065144 () Bool)

(assert (= bs!1065144 (and b!4656167 b!4655656)))

(assert (=> bs!1065144 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199428 lambda!199365))))

(declare-fun bs!1065145 () Bool)

(assert (= bs!1065145 (and b!4656167 d!1476356)))

(assert (=> bs!1065145 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818393) (= lambda!199428 lambda!199304))))

(declare-fun bs!1065146 () Bool)

(assert (= bs!1065146 (and b!4656167 b!4655714)))

(assert (=> bs!1065146 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199428 lambda!199378))))

(assert (=> bs!1065138 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818660) (= lambda!199428 lambda!199380))))

(assert (=> b!4656167 true))

(declare-fun bs!1065150 () Bool)

(declare-fun b!4656166 () Bool)

(assert (= bs!1065150 (and b!4656166 b!4655808)))

(declare-fun lambda!199430 () Int)

(assert (=> bs!1065150 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818710) (= lambda!199430 lambda!199390))))

(assert (=> bs!1065150 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199430 lambda!199389))))

(declare-fun bs!1065153 () Bool)

(assert (= bs!1065153 (and b!4656166 d!1476854)))

(assert (=> bs!1065153 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818889) (= lambda!199430 lambda!199421))))

(declare-fun bs!1065155 () Bool)

(assert (= bs!1065155 (and b!4656166 d!1476386)))

(assert (=> bs!1065155 (not (= lambda!199430 lambda!199309))))

(declare-fun bs!1065157 () Bool)

(assert (= bs!1065157 (and b!4656166 d!1476560)))

(assert (=> bs!1065157 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818394) (= lambda!199430 lambda!199364))))

(declare-fun bs!1065158 () Bool)

(assert (= bs!1065158 (and b!4656166 b!4656167)))

(assert (=> bs!1065158 (= lambda!199430 lambda!199428)))

(declare-fun bs!1065160 () Bool)

(assert (= bs!1065160 (and b!4656166 b!4655328)))

(assert (=> bs!1065160 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818237) (= lambda!199430 lambda!199302))))

(declare-fun bs!1065162 () Bool)

(assert (= bs!1065162 (and b!4656166 d!1476564)))

(assert (=> bs!1065162 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818624) (= lambda!199430 lambda!199368))))

(declare-fun bs!1065163 () Bool)

(assert (= bs!1065163 (and b!4656166 d!1476352)))

(assert (=> bs!1065163 (not (= lambda!199430 lambda!199229))))

(declare-fun bs!1065164 () Bool)

(assert (= bs!1065164 (and b!4656166 d!1476842)))

(assert (=> bs!1065164 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818660) (= lambda!199430 lambda!199415))))

(declare-fun bs!1065165 () Bool)

(assert (= bs!1065165 (and b!4656166 d!1476696)))

(assert (=> bs!1065165 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818237) (= lambda!199430 lambda!199387))))

(assert (=> bs!1065160 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818394) (= lambda!199430 lambda!199303))))

(declare-fun bs!1065167 () Bool)

(assert (= bs!1065167 (and b!4656166 d!1476594)))

(assert (=> bs!1065167 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818237) (= lambda!199430 lambda!199377))))

(declare-fun bs!1065169 () Bool)

(assert (= bs!1065169 (and b!4656166 b!4655329)))

(assert (=> bs!1065169 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818237) (= lambda!199430 lambda!199301))))

(declare-fun bs!1065171 () Bool)

(assert (= bs!1065171 (and b!4656166 b!4656058)))

(assert (=> bs!1065171 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818890) (= lambda!199430 lambda!199420))))

(declare-fun bs!1065173 () Bool)

(assert (= bs!1065173 (and b!4656166 b!4656059)))

(assert (=> bs!1065173 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199430 lambda!199416))))

(assert (=> bs!1065171 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199430 lambda!199419))))

(declare-fun bs!1065176 () Bool)

(assert (= bs!1065176 (and b!4656166 b!4655655)))

(assert (=> bs!1065176 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818625) (= lambda!199430 lambda!199367))))

(declare-fun bs!1065178 () Bool)

(assert (= bs!1065178 (and b!4656166 b!4655713)))

(assert (=> bs!1065178 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199430 lambda!199379))))

(declare-fun bs!1065180 () Bool)

(assert (= bs!1065180 (and b!4656166 d!1476716)))

(assert (=> bs!1065180 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818625) (= lambda!199430 lambda!199392))))

(assert (=> bs!1065176 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199430 lambda!199366))))

(declare-fun bs!1065183 () Bool)

(assert (= bs!1065183 (and b!4656166 b!4655809)))

(assert (=> bs!1065183 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199430 lambda!199388))))

(declare-fun bs!1065184 () Bool)

(assert (= bs!1065184 (and b!4656166 d!1476894)))

(assert (=> bs!1065184 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199430 lambda!199422))))

(declare-fun bs!1065185 () Bool)

(assert (= bs!1065185 (and b!4656166 d!1476610)))

(assert (=> bs!1065185 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818659) (= lambda!199430 lambda!199381))))

(declare-fun bs!1065187 () Bool)

(assert (= bs!1065187 (and b!4656166 d!1476712)))

(assert (=> bs!1065187 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818709) (= lambda!199430 lambda!199391))))

(declare-fun bs!1065189 () Bool)

(assert (= bs!1065189 (and b!4656166 b!4655656)))

(assert (=> bs!1065189 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199430 lambda!199365))))

(declare-fun bs!1065191 () Bool)

(assert (= bs!1065191 (and b!4656166 d!1476356)))

(assert (=> bs!1065191 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818393) (= lambda!199430 lambda!199304))))

(declare-fun bs!1065193 () Bool)

(assert (= bs!1065193 (and b!4656166 b!4655714)))

(assert (=> bs!1065193 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199430 lambda!199378))))

(assert (=> bs!1065178 (= (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818660) (= lambda!199430 lambda!199380))))

(assert (=> b!4656166 true))

(declare-fun lt!1818954 () ListMap!4549)

(declare-fun lambda!199433 () Int)

(assert (=> bs!1065150 (= (= lt!1818954 lt!1818710) (= lambda!199433 lambda!199390))))

(assert (=> bs!1065150 (= (= lt!1818954 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199433 lambda!199389))))

(assert (=> bs!1065153 (= (= lt!1818954 lt!1818889) (= lambda!199433 lambda!199421))))

(assert (=> bs!1065155 (not (= lambda!199433 lambda!199309))))

(assert (=> bs!1065157 (= (= lt!1818954 lt!1818394) (= lambda!199433 lambda!199364))))

(assert (=> bs!1065158 (= (= lt!1818954 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (= lambda!199433 lambda!199428))))

(assert (=> bs!1065160 (= (= lt!1818954 lt!1818237) (= lambda!199433 lambda!199302))))

(assert (=> b!4656166 (= (= lt!1818954 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (= lambda!199433 lambda!199430))))

(assert (=> bs!1065162 (= (= lt!1818954 lt!1818624) (= lambda!199433 lambda!199368))))

(assert (=> bs!1065163 (not (= lambda!199433 lambda!199229))))

(assert (=> bs!1065164 (= (= lt!1818954 lt!1818660) (= lambda!199433 lambda!199415))))

(assert (=> bs!1065165 (= (= lt!1818954 lt!1818237) (= lambda!199433 lambda!199387))))

(assert (=> bs!1065160 (= (= lt!1818954 lt!1818394) (= lambda!199433 lambda!199303))))

(assert (=> bs!1065167 (= (= lt!1818954 lt!1818237) (= lambda!199433 lambda!199377))))

(assert (=> bs!1065169 (= (= lt!1818954 lt!1818237) (= lambda!199433 lambda!199301))))

(assert (=> bs!1065171 (= (= lt!1818954 lt!1818890) (= lambda!199433 lambda!199420))))

(assert (=> bs!1065173 (= (= lt!1818954 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199433 lambda!199416))))

(assert (=> bs!1065171 (= (= lt!1818954 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199433 lambda!199419))))

(assert (=> bs!1065176 (= (= lt!1818954 lt!1818625) (= lambda!199433 lambda!199367))))

(assert (=> bs!1065178 (= (= lt!1818954 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199433 lambda!199379))))

(assert (=> bs!1065180 (= (= lt!1818954 lt!1818625) (= lambda!199433 lambda!199392))))

(assert (=> bs!1065176 (= (= lt!1818954 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199433 lambda!199366))))

(assert (=> bs!1065183 (= (= lt!1818954 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199433 lambda!199388))))

(assert (=> bs!1065184 (= (= lt!1818954 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199433 lambda!199422))))

(assert (=> bs!1065185 (= (= lt!1818954 lt!1818659) (= lambda!199433 lambda!199381))))

(assert (=> bs!1065187 (= (= lt!1818954 lt!1818709) (= lambda!199433 lambda!199391))))

(assert (=> bs!1065189 (= (= lt!1818954 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199433 lambda!199365))))

(assert (=> bs!1065191 (= (= lt!1818954 lt!1818393) (= lambda!199433 lambda!199304))))

(assert (=> bs!1065193 (= (= lt!1818954 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199433 lambda!199378))))

(assert (=> bs!1065178 (= (= lt!1818954 lt!1818660) (= lambda!199433 lambda!199380))))

(assert (=> b!4656166 true))

(declare-fun bs!1065217 () Bool)

(declare-fun d!1476938 () Bool)

(assert (= bs!1065217 (and d!1476938 b!4655808)))

(declare-fun lambda!199436 () Int)

(declare-fun lt!1818953 () ListMap!4549)

(assert (=> bs!1065217 (= (= lt!1818953 lt!1818710) (= lambda!199436 lambda!199390))))

(assert (=> bs!1065217 (= (= lt!1818953 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199436 lambda!199389))))

(declare-fun bs!1065219 () Bool)

(assert (= bs!1065219 (and d!1476938 b!4656166)))

(assert (=> bs!1065219 (= (= lt!1818953 lt!1818954) (= lambda!199436 lambda!199433))))

(declare-fun bs!1065221 () Bool)

(assert (= bs!1065221 (and d!1476938 d!1476854)))

(assert (=> bs!1065221 (= (= lt!1818953 lt!1818889) (= lambda!199436 lambda!199421))))

(declare-fun bs!1065223 () Bool)

(assert (= bs!1065223 (and d!1476938 d!1476386)))

(assert (=> bs!1065223 (not (= lambda!199436 lambda!199309))))

(declare-fun bs!1065225 () Bool)

(assert (= bs!1065225 (and d!1476938 d!1476560)))

(assert (=> bs!1065225 (= (= lt!1818953 lt!1818394) (= lambda!199436 lambda!199364))))

(declare-fun bs!1065227 () Bool)

(assert (= bs!1065227 (and d!1476938 b!4656167)))

(assert (=> bs!1065227 (= (= lt!1818953 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (= lambda!199436 lambda!199428))))

(declare-fun bs!1065228 () Bool)

(assert (= bs!1065228 (and d!1476938 b!4655328)))

(assert (=> bs!1065228 (= (= lt!1818953 lt!1818237) (= lambda!199436 lambda!199302))))

(assert (=> bs!1065219 (= (= lt!1818953 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (= lambda!199436 lambda!199430))))

(declare-fun bs!1065231 () Bool)

(assert (= bs!1065231 (and d!1476938 d!1476564)))

(assert (=> bs!1065231 (= (= lt!1818953 lt!1818624) (= lambda!199436 lambda!199368))))

(declare-fun bs!1065233 () Bool)

(assert (= bs!1065233 (and d!1476938 d!1476352)))

(assert (=> bs!1065233 (not (= lambda!199436 lambda!199229))))

(declare-fun bs!1065234 () Bool)

(assert (= bs!1065234 (and d!1476938 d!1476842)))

(assert (=> bs!1065234 (= (= lt!1818953 lt!1818660) (= lambda!199436 lambda!199415))))

(declare-fun bs!1065235 () Bool)

(assert (= bs!1065235 (and d!1476938 d!1476696)))

(assert (=> bs!1065235 (= (= lt!1818953 lt!1818237) (= lambda!199436 lambda!199387))))

(assert (=> bs!1065228 (= (= lt!1818953 lt!1818394) (= lambda!199436 lambda!199303))))

(declare-fun bs!1065236 () Bool)

(assert (= bs!1065236 (and d!1476938 d!1476594)))

(assert (=> bs!1065236 (= (= lt!1818953 lt!1818237) (= lambda!199436 lambda!199377))))

(declare-fun bs!1065237 () Bool)

(assert (= bs!1065237 (and d!1476938 b!4655329)))

(assert (=> bs!1065237 (= (= lt!1818953 lt!1818237) (= lambda!199436 lambda!199301))))

(declare-fun bs!1065238 () Bool)

(assert (= bs!1065238 (and d!1476938 b!4656058)))

(assert (=> bs!1065238 (= (= lt!1818953 lt!1818890) (= lambda!199436 lambda!199420))))

(declare-fun bs!1065240 () Bool)

(assert (= bs!1065240 (and d!1476938 b!4656059)))

(assert (=> bs!1065240 (= (= lt!1818953 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199436 lambda!199416))))

(assert (=> bs!1065238 (= (= lt!1818953 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199436 lambda!199419))))

(declare-fun bs!1065242 () Bool)

(assert (= bs!1065242 (and d!1476938 b!4655655)))

(assert (=> bs!1065242 (= (= lt!1818953 lt!1818625) (= lambda!199436 lambda!199367))))

(declare-fun bs!1065244 () Bool)

(assert (= bs!1065244 (and d!1476938 b!4655713)))

(assert (=> bs!1065244 (= (= lt!1818953 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199436 lambda!199379))))

(declare-fun bs!1065246 () Bool)

(assert (= bs!1065246 (and d!1476938 d!1476716)))

(assert (=> bs!1065246 (= (= lt!1818953 lt!1818625) (= lambda!199436 lambda!199392))))

(assert (=> bs!1065242 (= (= lt!1818953 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199436 lambda!199366))))

(declare-fun bs!1065249 () Bool)

(assert (= bs!1065249 (and d!1476938 b!4655809)))

(assert (=> bs!1065249 (= (= lt!1818953 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199436 lambda!199388))))

(declare-fun bs!1065251 () Bool)

(assert (= bs!1065251 (and d!1476938 d!1476894)))

(assert (=> bs!1065251 (= (= lt!1818953 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199436 lambda!199422))))

(declare-fun bs!1065253 () Bool)

(assert (= bs!1065253 (and d!1476938 d!1476610)))

(assert (=> bs!1065253 (= (= lt!1818953 lt!1818659) (= lambda!199436 lambda!199381))))

(declare-fun bs!1065255 () Bool)

(assert (= bs!1065255 (and d!1476938 d!1476712)))

(assert (=> bs!1065255 (= (= lt!1818953 lt!1818709) (= lambda!199436 lambda!199391))))

(declare-fun bs!1065257 () Bool)

(assert (= bs!1065257 (and d!1476938 b!4655656)))

(assert (=> bs!1065257 (= (= lt!1818953 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199436 lambda!199365))))

(declare-fun bs!1065258 () Bool)

(assert (= bs!1065258 (and d!1476938 d!1476356)))

(assert (=> bs!1065258 (= (= lt!1818953 lt!1818393) (= lambda!199436 lambda!199304))))

(declare-fun bs!1065260 () Bool)

(assert (= bs!1065260 (and d!1476938 b!4655714)))

(assert (=> bs!1065260 (= (= lt!1818953 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199436 lambda!199378))))

(assert (=> bs!1065244 (= (= lt!1818953 lt!1818660) (= lambda!199436 lambda!199380))))

(assert (=> d!1476938 true))

(declare-fun e!2905115 () Bool)

(assert (=> d!1476938 e!2905115))

(declare-fun res!1957817 () Bool)

(assert (=> d!1476938 (=> (not res!1957817) (not e!2905115))))

(assert (=> d!1476938 (= res!1957817 (forall!11026 (_2!29798 (h!58041 (t!359137 lt!1818235))) lambda!199436))))

(declare-fun e!2905114 () ListMap!4549)

(assert (=> d!1476938 (= lt!1818953 e!2905114)))

(declare-fun c!796979 () Bool)

(assert (=> d!1476938 (= c!796979 ((_ is Nil!51896) (_2!29798 (h!58041 (t!359137 lt!1818235)))))))

(assert (=> d!1476938 (noDuplicateKeys!1640 (_2!29798 (h!58041 (t!359137 lt!1818235))))))

(assert (=> d!1476938 (= (addToMapMapFromBucket!1097 (_2!29798 (h!58041 (t!359137 lt!1818235))) (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) lt!1818953)))

(declare-fun b!4656165 () Bool)

(declare-fun e!2905116 () Bool)

(assert (=> b!4656165 (= e!2905116 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) lambda!199433))))

(declare-fun bm!325381 () Bool)

(declare-fun call!325388 () Bool)

(assert (=> bm!325381 (= call!325388 (forall!11026 (ite c!796979 (toList!5209 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (_2!29798 (h!58041 (t!359137 lt!1818235)))) (ite c!796979 lambda!199428 lambda!199433)))))

(declare-fun lt!1818949 () ListMap!4549)

(declare-fun bm!325382 () Bool)

(declare-fun call!325386 () Bool)

(assert (=> bm!325382 (= call!325386 (forall!11026 (ite c!796979 (toList!5209 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (toList!5209 lt!1818949)) (ite c!796979 lambda!199428 lambda!199433)))))

(assert (=> b!4656166 (= e!2905114 lt!1818954)))

(assert (=> b!4656166 (= lt!1818949 (+!1984 (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (h!58040 (_2!29798 (h!58041 (t!359137 lt!1818235))))))))

(assert (=> b!4656166 (= lt!1818954 (addToMapMapFromBucket!1097 (t!359136 (_2!29798 (h!58041 (t!359137 lt!1818235)))) (+!1984 (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (h!58040 (_2!29798 (h!58041 (t!359137 lt!1818235)))))))))

(declare-fun lt!1818934 () Unit!118533)

(declare-fun call!325387 () Unit!118533)

(assert (=> b!4656166 (= lt!1818934 call!325387)))

(assert (=> b!4656166 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) lambda!199430)))

(declare-fun lt!1818941 () Unit!118533)

(assert (=> b!4656166 (= lt!1818941 lt!1818934)))

(assert (=> b!4656166 (forall!11026 (toList!5209 lt!1818949) lambda!199433)))

(declare-fun lt!1818945 () Unit!118533)

(declare-fun Unit!118702 () Unit!118533)

(assert (=> b!4656166 (= lt!1818945 Unit!118702)))

(assert (=> b!4656166 (forall!11026 (t!359136 (_2!29798 (h!58041 (t!359137 lt!1818235)))) lambda!199433)))

(declare-fun lt!1818944 () Unit!118533)

(declare-fun Unit!118703 () Unit!118533)

(assert (=> b!4656166 (= lt!1818944 Unit!118703)))

(declare-fun lt!1818947 () Unit!118533)

(declare-fun Unit!118704 () Unit!118533)

(assert (=> b!4656166 (= lt!1818947 Unit!118704)))

(declare-fun lt!1818952 () Unit!118533)

(assert (=> b!4656166 (= lt!1818952 (forallContained!3226 (toList!5209 lt!1818949) lambda!199433 (h!58040 (_2!29798 (h!58041 (t!359137 lt!1818235))))))))

(assert (=> b!4656166 (contains!15037 lt!1818949 (_1!29797 (h!58040 (_2!29798 (h!58041 (t!359137 lt!1818235))))))))

(declare-fun lt!1818937 () Unit!118533)

(declare-fun Unit!118705 () Unit!118533)

(assert (=> b!4656166 (= lt!1818937 Unit!118705)))

(assert (=> b!4656166 (contains!15037 lt!1818954 (_1!29797 (h!58040 (_2!29798 (h!58041 (t!359137 lt!1818235))))))))

(declare-fun lt!1818948 () Unit!118533)

(declare-fun Unit!118706 () Unit!118533)

(assert (=> b!4656166 (= lt!1818948 Unit!118706)))

(assert (=> b!4656166 (forall!11026 (_2!29798 (h!58041 (t!359137 lt!1818235))) lambda!199433)))

(declare-fun lt!1818936 () Unit!118533)

(declare-fun Unit!118707 () Unit!118533)

(assert (=> b!4656166 (= lt!1818936 Unit!118707)))

(assert (=> b!4656166 call!325386))

(declare-fun lt!1818942 () Unit!118533)

(declare-fun Unit!118708 () Unit!118533)

(assert (=> b!4656166 (= lt!1818942 Unit!118708)))

(declare-fun lt!1818940 () Unit!118533)

(declare-fun Unit!118709 () Unit!118533)

(assert (=> b!4656166 (= lt!1818940 Unit!118709)))

(declare-fun lt!1818950 () Unit!118533)

(assert (=> b!4656166 (= lt!1818950 (addForallContainsKeyThenBeforeAdding!597 (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818954 (_1!29797 (h!58040 (_2!29798 (h!58041 (t!359137 lt!1818235))))) (_2!29797 (h!58040 (_2!29798 (h!58041 (t!359137 lt!1818235)))))))))

(assert (=> b!4656166 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) lambda!199433)))

(declare-fun lt!1818938 () Unit!118533)

(assert (=> b!4656166 (= lt!1818938 lt!1818950)))

(assert (=> b!4656166 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) lambda!199433)))

(declare-fun lt!1818939 () Unit!118533)

(declare-fun Unit!118710 () Unit!118533)

(assert (=> b!4656166 (= lt!1818939 Unit!118710)))

(declare-fun res!1957818 () Bool)

(assert (=> b!4656166 (= res!1957818 call!325388)))

(assert (=> b!4656166 (=> (not res!1957818) (not e!2905116))))

(assert (=> b!4656166 e!2905116))

(declare-fun lt!1818935 () Unit!118533)

(declare-fun Unit!118711 () Unit!118533)

(assert (=> b!4656166 (= lt!1818935 Unit!118711)))

(declare-fun bm!325383 () Bool)

(assert (=> bm!325383 (= call!325387 (lemmaContainsAllItsOwnKeys!598 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))))))

(assert (=> b!4656167 (= e!2905114 (extractMap!1696 (t!359137 (t!359137 lt!1818235))))))

(declare-fun lt!1818951 () Unit!118533)

(assert (=> b!4656167 (= lt!1818951 call!325387)))

(assert (=> b!4656167 call!325388))

(declare-fun lt!1818943 () Unit!118533)

(assert (=> b!4656167 (= lt!1818943 lt!1818951)))

(assert (=> b!4656167 call!325386))

(declare-fun lt!1818946 () Unit!118533)

(declare-fun Unit!118712 () Unit!118533)

(assert (=> b!4656167 (= lt!1818946 Unit!118712)))

(declare-fun b!4656168 () Bool)

(declare-fun res!1957819 () Bool)

(assert (=> b!4656168 (=> (not res!1957819) (not e!2905115))))

(assert (=> b!4656168 (= res!1957819 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) lambda!199436))))

(declare-fun b!4656169 () Bool)

(assert (=> b!4656169 (= e!2905115 (invariantList!1298 (toList!5209 lt!1818953)))))

(assert (= (and d!1476938 c!796979) b!4656167))

(assert (= (and d!1476938 (not c!796979)) b!4656166))

(assert (= (and b!4656166 res!1957818) b!4656165))

(assert (= (or b!4656167 b!4656166) bm!325383))

(assert (= (or b!4656167 b!4656166) bm!325381))

(assert (= (or b!4656167 b!4656166) bm!325382))

(assert (= (and d!1476938 res!1957817) b!4656168))

(assert (= (and b!4656168 res!1957819) b!4656169))

(declare-fun m!5535993 () Bool)

(assert (=> bm!325381 m!5535993))

(assert (=> b!4656166 m!5534945))

(declare-fun m!5535995 () Bool)

(assert (=> b!4656166 m!5535995))

(assert (=> b!4656166 m!5534945))

(declare-fun m!5535997 () Bool)

(assert (=> b!4656166 m!5535997))

(declare-fun m!5535999 () Bool)

(assert (=> b!4656166 m!5535999))

(assert (=> b!4656166 m!5535995))

(declare-fun m!5536001 () Bool)

(assert (=> b!4656166 m!5536001))

(declare-fun m!5536003 () Bool)

(assert (=> b!4656166 m!5536003))

(declare-fun m!5536005 () Bool)

(assert (=> b!4656166 m!5536005))

(declare-fun m!5536007 () Bool)

(assert (=> b!4656166 m!5536007))

(declare-fun m!5536009 () Bool)

(assert (=> b!4656166 m!5536009))

(declare-fun m!5536011 () Bool)

(assert (=> b!4656166 m!5536011))

(declare-fun m!5536013 () Bool)

(assert (=> b!4656166 m!5536013))

(assert (=> b!4656166 m!5535999))

(declare-fun m!5536015 () Bool)

(assert (=> b!4656166 m!5536015))

(assert (=> b!4656165 m!5535999))

(assert (=> bm!325383 m!5534945))

(declare-fun m!5536017 () Bool)

(assert (=> bm!325383 m!5536017))

(declare-fun m!5536019 () Bool)

(assert (=> b!4656169 m!5536019))

(declare-fun m!5536021 () Bool)

(assert (=> bm!325382 m!5536021))

(declare-fun m!5536023 () Bool)

(assert (=> b!4656168 m!5536023))

(declare-fun m!5536025 () Bool)

(assert (=> d!1476938 m!5536025))

(assert (=> d!1476938 m!5534963))

(assert (=> b!4655717 d!1476938))

(declare-fun bs!1065270 () Bool)

(declare-fun d!1476954 () Bool)

(assert (= bs!1065270 (and d!1476954 d!1476390)))

(declare-fun lambda!199439 () Int)

(assert (=> bs!1065270 (not (= lambda!199439 lambda!199312))))

(declare-fun bs!1065271 () Bool)

(assert (= bs!1065271 (and d!1476954 d!1476380)))

(assert (=> bs!1065271 (= lambda!199439 lambda!199307)))

(declare-fun bs!1065272 () Bool)

(assert (= bs!1065272 (and d!1476954 d!1476384)))

(assert (=> bs!1065272 (= lambda!199439 lambda!199308)))

(declare-fun bs!1065273 () Bool)

(assert (= bs!1065273 (and d!1476954 b!4655209)))

(assert (=> bs!1065273 (= lambda!199439 lambda!199226)))

(declare-fun bs!1065274 () Bool)

(assert (= bs!1065274 (and d!1476954 d!1476612)))

(assert (=> bs!1065274 (= lambda!199439 lambda!199382)))

(declare-fun lt!1818984 () ListMap!4549)

(assert (=> d!1476954 (invariantList!1298 (toList!5209 lt!1818984))))

(declare-fun e!2905134 () ListMap!4549)

(assert (=> d!1476954 (= lt!1818984 e!2905134)))

(declare-fun c!796984 () Bool)

(assert (=> d!1476954 (= c!796984 ((_ is Cons!51897) (t!359137 (t!359137 lt!1818235))))))

(assert (=> d!1476954 (forall!11024 (t!359137 (t!359137 lt!1818235)) lambda!199439)))

(assert (=> d!1476954 (= (extractMap!1696 (t!359137 (t!359137 lt!1818235))) lt!1818984)))

(declare-fun b!4656194 () Bool)

(assert (=> b!4656194 (= e!2905134 (addToMapMapFromBucket!1097 (_2!29798 (h!58041 (t!359137 (t!359137 lt!1818235)))) (extractMap!1696 (t!359137 (t!359137 (t!359137 lt!1818235))))))))

(declare-fun b!4656195 () Bool)

(assert (=> b!4656195 (= e!2905134 (ListMap!4550 Nil!51896))))

(assert (= (and d!1476954 c!796984) b!4656194))

(assert (= (and d!1476954 (not c!796984)) b!4656195))

(declare-fun m!5536027 () Bool)

(assert (=> d!1476954 m!5536027))

(declare-fun m!5536029 () Bool)

(assert (=> d!1476954 m!5536029))

(declare-fun m!5536031 () Bool)

(assert (=> b!4656194 m!5536031))

(assert (=> b!4656194 m!5536031))

(declare-fun m!5536033 () Bool)

(assert (=> b!4656194 m!5536033))

(assert (=> b!4655717 d!1476954))

(declare-fun d!1476956 () Bool)

(assert (=> d!1476956 (dynLambda!21590 lambda!199303 (h!58040 oldBucket!40))))

(assert (=> d!1476956 true))

(declare-fun _$7!2196 () Unit!118533)

(assert (=> d!1476956 (= (choose!32001 (toList!5209 lt!1818389) lambda!199303 (h!58040 oldBucket!40)) _$7!2196)))

(declare-fun b_lambda!174097 () Bool)

(assert (=> (not b_lambda!174097) (not d!1476956)))

(declare-fun bs!1065286 () Bool)

(assert (= bs!1065286 d!1476956))

(assert (=> bs!1065286 m!5534735))

(assert (=> d!1476552 d!1476956))

(assert (=> d!1476552 d!1476566))

(assert (=> b!4655621 d!1476756))

(assert (=> b!4655621 d!1476758))

(declare-fun d!1476958 () Bool)

(declare-fun res!1957836 () Bool)

(declare-fun e!2905135 () Bool)

(assert (=> d!1476958 (=> res!1957836 e!2905135)))

(assert (=> d!1476958 (= res!1957836 ((_ is Nil!51896) (t!359136 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))))))

(assert (=> d!1476958 (= (forall!11026 (t!359136 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)) (ite c!796811 lambda!199301 lambda!199303)) e!2905135)))

(declare-fun b!4656196 () Bool)

(declare-fun e!2905136 () Bool)

(assert (=> b!4656196 (= e!2905135 e!2905136)))

(declare-fun res!1957837 () Bool)

(assert (=> b!4656196 (=> (not res!1957837) (not e!2905136))))

(assert (=> b!4656196 (= res!1957837 (dynLambda!21590 (ite c!796811 lambda!199301 lambda!199303) (h!58040 (t!359136 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun b!4656197 () Bool)

(assert (=> b!4656197 (= e!2905136 (forall!11026 (t!359136 (t!359136 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (ite c!796811 lambda!199301 lambda!199303)))))

(assert (= (and d!1476958 (not res!1957836)) b!4656196))

(assert (= (and b!4656196 res!1957837) b!4656197))

(declare-fun b_lambda!174099 () Bool)

(assert (=> (not b_lambda!174099) (not b!4656196)))

(declare-fun m!5536035 () Bool)

(assert (=> b!4656196 m!5536035))

(declare-fun m!5536037 () Bool)

(assert (=> b!4656197 m!5536037))

(assert (=> b!4655699 d!1476958))

(declare-fun d!1476960 () Bool)

(declare-fun res!1957838 () Bool)

(declare-fun e!2905137 () Bool)

(assert (=> d!1476960 (=> res!1957838 e!2905137)))

(assert (=> d!1476960 (= res!1957838 ((_ is Nil!51896) (t!359136 oldBucket!40)))))

(assert (=> d!1476960 (= (forall!11026 (t!359136 oldBucket!40) lambda!199309) e!2905137)))

(declare-fun b!4656198 () Bool)

(declare-fun e!2905138 () Bool)

(assert (=> b!4656198 (= e!2905137 e!2905138)))

(declare-fun res!1957839 () Bool)

(assert (=> b!4656198 (=> (not res!1957839) (not e!2905138))))

(assert (=> b!4656198 (= res!1957839 (dynLambda!21590 lambda!199309 (h!58040 (t!359136 oldBucket!40))))))

(declare-fun b!4656199 () Bool)

(assert (=> b!4656199 (= e!2905138 (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199309))))

(assert (= (and d!1476960 (not res!1957838)) b!4656198))

(assert (= (and b!4656198 res!1957839) b!4656199))

(declare-fun b_lambda!174101 () Bool)

(assert (=> (not b_lambda!174101) (not b!4656198)))

(declare-fun m!5536039 () Bool)

(assert (=> b!4656198 m!5536039))

(declare-fun m!5536041 () Bool)

(assert (=> b!4656199 m!5536041))

(assert (=> b!4655533 d!1476960))

(declare-fun bs!1065297 () Bool)

(declare-fun d!1476962 () Bool)

(assert (= bs!1065297 (and d!1476962 b!4655808)))

(declare-fun lambda!199441 () Int)

(assert (=> bs!1065297 (not (= lambda!199441 lambda!199390))))

(assert (=> bs!1065297 (not (= lambda!199441 lambda!199389))))

(declare-fun bs!1065298 () Bool)

(assert (= bs!1065298 (and d!1476962 b!4656166)))

(assert (=> bs!1065298 (not (= lambda!199441 lambda!199433))))

(declare-fun bs!1065299 () Bool)

(assert (= bs!1065299 (and d!1476962 d!1476386)))

(assert (=> bs!1065299 (= (= (_1!29798 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235)))) hash!414) (= lambda!199441 lambda!199309))))

(declare-fun bs!1065300 () Bool)

(assert (= bs!1065300 (and d!1476962 d!1476560)))

(assert (=> bs!1065300 (not (= lambda!199441 lambda!199364))))

(declare-fun bs!1065301 () Bool)

(assert (= bs!1065301 (and d!1476962 b!4656167)))

(assert (=> bs!1065301 (not (= lambda!199441 lambda!199428))))

(declare-fun bs!1065302 () Bool)

(assert (= bs!1065302 (and d!1476962 b!4655328)))

(assert (=> bs!1065302 (not (= lambda!199441 lambda!199302))))

(assert (=> bs!1065298 (not (= lambda!199441 lambda!199430))))

(declare-fun bs!1065303 () Bool)

(assert (= bs!1065303 (and d!1476962 d!1476564)))

(assert (=> bs!1065303 (not (= lambda!199441 lambda!199368))))

(declare-fun bs!1065304 () Bool)

(assert (= bs!1065304 (and d!1476962 d!1476352)))

(assert (=> bs!1065304 (= (= (_1!29798 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235)))) hash!414) (= lambda!199441 lambda!199229))))

(declare-fun bs!1065305 () Bool)

(assert (= bs!1065305 (and d!1476962 d!1476842)))

(assert (=> bs!1065305 (not (= lambda!199441 lambda!199415))))

(declare-fun bs!1065306 () Bool)

(assert (= bs!1065306 (and d!1476962 d!1476696)))

(assert (=> bs!1065306 (not (= lambda!199441 lambda!199387))))

(assert (=> bs!1065302 (not (= lambda!199441 lambda!199303))))

(declare-fun bs!1065307 () Bool)

(assert (= bs!1065307 (and d!1476962 d!1476594)))

(assert (=> bs!1065307 (not (= lambda!199441 lambda!199377))))

(declare-fun bs!1065308 () Bool)

(assert (= bs!1065308 (and d!1476962 b!4655329)))

(assert (=> bs!1065308 (not (= lambda!199441 lambda!199301))))

(declare-fun bs!1065309 () Bool)

(assert (= bs!1065309 (and d!1476962 d!1476854)))

(assert (=> bs!1065309 (not (= lambda!199441 lambda!199421))))

(declare-fun bs!1065310 () Bool)

(assert (= bs!1065310 (and d!1476962 d!1476938)))

(assert (=> bs!1065310 (not (= lambda!199441 lambda!199436))))

(declare-fun bs!1065311 () Bool)

(assert (= bs!1065311 (and d!1476962 b!4656058)))

(assert (=> bs!1065311 (not (= lambda!199441 lambda!199420))))

(declare-fun bs!1065312 () Bool)

(assert (= bs!1065312 (and d!1476962 b!4656059)))

(assert (=> bs!1065312 (not (= lambda!199441 lambda!199416))))

(assert (=> bs!1065311 (not (= lambda!199441 lambda!199419))))

(declare-fun bs!1065313 () Bool)

(assert (= bs!1065313 (and d!1476962 b!4655655)))

(assert (=> bs!1065313 (not (= lambda!199441 lambda!199367))))

(declare-fun bs!1065314 () Bool)

(assert (= bs!1065314 (and d!1476962 b!4655713)))

(assert (=> bs!1065314 (not (= lambda!199441 lambda!199379))))

(declare-fun bs!1065315 () Bool)

(assert (= bs!1065315 (and d!1476962 d!1476716)))

(assert (=> bs!1065315 (not (= lambda!199441 lambda!199392))))

(assert (=> bs!1065313 (not (= lambda!199441 lambda!199366))))

(declare-fun bs!1065317 () Bool)

(assert (= bs!1065317 (and d!1476962 b!4655809)))

(assert (=> bs!1065317 (not (= lambda!199441 lambda!199388))))

(declare-fun bs!1065319 () Bool)

(assert (= bs!1065319 (and d!1476962 d!1476894)))

(assert (=> bs!1065319 (not (= lambda!199441 lambda!199422))))

(declare-fun bs!1065321 () Bool)

(assert (= bs!1065321 (and d!1476962 d!1476610)))

(assert (=> bs!1065321 (not (= lambda!199441 lambda!199381))))

(declare-fun bs!1065323 () Bool)

(assert (= bs!1065323 (and d!1476962 d!1476712)))

(assert (=> bs!1065323 (not (= lambda!199441 lambda!199391))))

(declare-fun bs!1065325 () Bool)

(assert (= bs!1065325 (and d!1476962 b!4655656)))

(assert (=> bs!1065325 (not (= lambda!199441 lambda!199365))))

(declare-fun bs!1065326 () Bool)

(assert (= bs!1065326 (and d!1476962 d!1476356)))

(assert (=> bs!1065326 (not (= lambda!199441 lambda!199304))))

(declare-fun bs!1065327 () Bool)

(assert (= bs!1065327 (and d!1476962 b!4655714)))

(assert (=> bs!1065327 (not (= lambda!199441 lambda!199378))))

(assert (=> bs!1065314 (not (= lambda!199441 lambda!199380))))

(assert (=> d!1476962 true))

(assert (=> d!1476962 true))

(assert (=> d!1476962 (= (allKeysSameHash!1494 (_2!29798 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235)))) (_1!29798 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235)))) hashF!1389) (forall!11026 (_2!29798 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235)))) lambda!199441))))

(declare-fun bs!1065328 () Bool)

(assert (= bs!1065328 d!1476962))

(declare-fun m!5536085 () Bool)

(assert (=> bs!1065328 m!5536085))

(assert (=> bs!1064652 d!1476962))

(assert (=> d!1476582 d!1476584))

(assert (=> d!1476582 d!1476586))

(declare-fun d!1476968 () Bool)

(assert (=> d!1476968 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818236) key!4968))))

(assert (=> d!1476968 true))

(declare-fun _$29!734 () Unit!118533)

(assert (=> d!1476968 (= (choose!32005 (toList!5209 lt!1818236) key!4968) _$29!734)))

(declare-fun bs!1065329 () Bool)

(assert (= bs!1065329 d!1476968))

(assert (=> bs!1065329 m!5534293))

(assert (=> bs!1065329 m!5534293))

(assert (=> bs!1065329 m!5534295))

(assert (=> d!1476582 d!1476968))

(assert (=> d!1476582 d!1476750))

(declare-fun d!1476974 () Bool)

(declare-fun res!1957844 () Bool)

(declare-fun e!2905144 () Bool)

(assert (=> d!1476974 (=> res!1957844 e!2905144)))

(assert (=> d!1476974 (= res!1957844 (and ((_ is Cons!51896) (t!359136 (t!359136 newBucket!224))) (= (_1!29797 (h!58040 (t!359136 (t!359136 newBucket!224)))) (_1!29797 (h!58040 (t!359136 newBucket!224))))))))

(assert (=> d!1476974 (= (containsKey!2725 (t!359136 (t!359136 newBucket!224)) (_1!29797 (h!58040 (t!359136 newBucket!224)))) e!2905144)))

(declare-fun b!4656206 () Bool)

(declare-fun e!2905145 () Bool)

(assert (=> b!4656206 (= e!2905144 e!2905145)))

(declare-fun res!1957845 () Bool)

(assert (=> b!4656206 (=> (not res!1957845) (not e!2905145))))

(assert (=> b!4656206 (= res!1957845 ((_ is Cons!51896) (t!359136 (t!359136 newBucket!224))))))

(declare-fun b!4656207 () Bool)

(assert (=> b!4656207 (= e!2905145 (containsKey!2725 (t!359136 (t!359136 (t!359136 newBucket!224))) (_1!29797 (h!58040 (t!359136 newBucket!224)))))))

(assert (= (and d!1476974 (not res!1957844)) b!4656206))

(assert (= (and b!4656206 res!1957845) b!4656207))

(declare-fun m!5536097 () Bool)

(assert (=> b!4656207 m!5536097))

(assert (=> b!4655706 d!1476974))

(declare-fun d!1476978 () Bool)

(declare-fun res!1957848 () Bool)

(declare-fun e!2905148 () Bool)

(assert (=> d!1476978 (=> res!1957848 e!2905148)))

(assert (=> d!1476978 (= res!1957848 (and ((_ is Cons!51896) (t!359136 (_2!29798 (h!58041 lt!1818235)))) (= (_1!29797 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235))))) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235)))))))))

(assert (=> d!1476978 (= (containsKey!2725 (t!359136 (_2!29798 (h!58041 lt!1818235))) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))) e!2905148)))

(declare-fun b!4656210 () Bool)

(declare-fun e!2905149 () Bool)

(assert (=> b!4656210 (= e!2905148 e!2905149)))

(declare-fun res!1957849 () Bool)

(assert (=> b!4656210 (=> (not res!1957849) (not e!2905149))))

(assert (=> b!4656210 (= res!1957849 ((_ is Cons!51896) (t!359136 (_2!29798 (h!58041 lt!1818235)))))))

(declare-fun b!4656211 () Bool)

(assert (=> b!4656211 (= e!2905149 (containsKey!2725 (t!359136 (t!359136 (_2!29798 (h!58041 lt!1818235)))) (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (= (and d!1476978 (not res!1957848)) b!4656210))

(assert (= (and b!4656210 res!1957849) b!4656211))

(declare-fun m!5536099 () Bool)

(assert (=> b!4656211 m!5536099))

(assert (=> b!4655680 d!1476978))

(declare-fun d!1476980 () Bool)

(declare-fun res!1957850 () Bool)

(declare-fun e!2905150 () Bool)

(assert (=> d!1476980 (=> res!1957850 e!2905150)))

(assert (=> d!1476980 (= res!1957850 ((_ is Nil!51896) (t!359136 (toList!5209 lt!1818237))))))

(assert (=> d!1476980 (= (forall!11026 (t!359136 (toList!5209 lt!1818237)) lambda!199304) e!2905150)))

(declare-fun b!4656212 () Bool)

(declare-fun e!2905151 () Bool)

(assert (=> b!4656212 (= e!2905150 e!2905151)))

(declare-fun res!1957851 () Bool)

(assert (=> b!4656212 (=> (not res!1957851) (not e!2905151))))

(assert (=> b!4656212 (= res!1957851 (dynLambda!21590 lambda!199304 (h!58040 (t!359136 (toList!5209 lt!1818237)))))))

(declare-fun b!4656213 () Bool)

(assert (=> b!4656213 (= e!2905151 (forall!11026 (t!359136 (t!359136 (toList!5209 lt!1818237))) lambda!199304))))

(assert (= (and d!1476980 (not res!1957850)) b!4656212))

(assert (= (and b!4656212 res!1957851) b!4656213))

(declare-fun b_lambda!174105 () Bool)

(assert (=> (not b_lambda!174105) (not b!4656212)))

(declare-fun m!5536101 () Bool)

(assert (=> b!4656212 m!5536101))

(declare-fun m!5536103 () Bool)

(assert (=> b!4656213 m!5536103))

(assert (=> b!4655683 d!1476980))

(declare-fun bs!1065330 () Bool)

(declare-fun d!1476982 () Bool)

(assert (= bs!1065330 (and d!1476982 b!4655808)))

(declare-fun lambda!199443 () Int)

(assert (=> bs!1065330 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818710) (= lambda!199443 lambda!199390))))

(assert (=> bs!1065330 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199443 lambda!199389))))

(declare-fun bs!1065331 () Bool)

(assert (= bs!1065331 (and d!1476982 b!4656166)))

(assert (=> bs!1065331 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818954) (= lambda!199443 lambda!199433))))

(declare-fun bs!1065332 () Bool)

(assert (= bs!1065332 (and d!1476982 d!1476386)))

(assert (=> bs!1065332 (not (= lambda!199443 lambda!199309))))

(declare-fun bs!1065333 () Bool)

(assert (= bs!1065333 (and d!1476982 d!1476560)))

(assert (=> bs!1065333 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818394) (= lambda!199443 lambda!199364))))

(declare-fun bs!1065334 () Bool)

(assert (= bs!1065334 (and d!1476982 b!4656167)))

(assert (=> bs!1065334 (= (= (extractMap!1696 (t!359137 lt!1818235)) (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (= lambda!199443 lambda!199428))))

(declare-fun bs!1065335 () Bool)

(assert (= bs!1065335 (and d!1476982 b!4655328)))

(assert (=> bs!1065335 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199443 lambda!199302))))

(assert (=> bs!1065331 (= (= (extractMap!1696 (t!359137 lt!1818235)) (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (= lambda!199443 lambda!199430))))

(declare-fun bs!1065337 () Bool)

(assert (= bs!1065337 (and d!1476982 d!1476352)))

(assert (=> bs!1065337 (not (= lambda!199443 lambda!199229))))

(declare-fun bs!1065338 () Bool)

(assert (= bs!1065338 (and d!1476982 d!1476842)))

(assert (=> bs!1065338 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818660) (= lambda!199443 lambda!199415))))

(declare-fun bs!1065339 () Bool)

(assert (= bs!1065339 (and d!1476982 d!1476696)))

(assert (=> bs!1065339 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199443 lambda!199387))))

(assert (=> bs!1065335 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818394) (= lambda!199443 lambda!199303))))

(declare-fun bs!1065340 () Bool)

(assert (= bs!1065340 (and d!1476982 d!1476594)))

(assert (=> bs!1065340 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199443 lambda!199377))))

(declare-fun bs!1065341 () Bool)

(assert (= bs!1065341 (and d!1476982 b!4655329)))

(assert (=> bs!1065341 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818237) (= lambda!199443 lambda!199301))))

(declare-fun bs!1065342 () Bool)

(assert (= bs!1065342 (and d!1476982 d!1476854)))

(assert (=> bs!1065342 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818889) (= lambda!199443 lambda!199421))))

(declare-fun bs!1065343 () Bool)

(assert (= bs!1065343 (and d!1476982 d!1476938)))

(assert (=> bs!1065343 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818953) (= lambda!199443 lambda!199436))))

(declare-fun bs!1065344 () Bool)

(assert (= bs!1065344 (and d!1476982 b!4656058)))

(assert (=> bs!1065344 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818890) (= lambda!199443 lambda!199420))))

(declare-fun bs!1065345 () Bool)

(assert (= bs!1065345 (and d!1476982 b!4656059)))

(assert (=> bs!1065345 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199443 lambda!199416))))

(assert (=> bs!1065344 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199443 lambda!199419))))

(declare-fun bs!1065346 () Bool)

(assert (= bs!1065346 (and d!1476982 b!4655655)))

(assert (=> bs!1065346 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818625) (= lambda!199443 lambda!199367))))

(declare-fun bs!1065347 () Bool)

(assert (= bs!1065347 (and d!1476982 b!4655713)))

(assert (=> bs!1065347 (= lambda!199443 lambda!199379)))

(declare-fun bs!1065348 () Bool)

(assert (= bs!1065348 (and d!1476982 d!1476716)))

(assert (=> bs!1065348 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818625) (= lambda!199443 lambda!199392))))

(declare-fun bs!1065349 () Bool)

(assert (= bs!1065349 (and d!1476982 d!1476564)))

(assert (=> bs!1065349 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818624) (= lambda!199443 lambda!199368))))

(declare-fun bs!1065350 () Bool)

(assert (= bs!1065350 (and d!1476982 d!1476962)))

(assert (=> bs!1065350 (not (= lambda!199443 lambda!199441))))

(assert (=> bs!1065346 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199443 lambda!199366))))

(declare-fun bs!1065351 () Bool)

(assert (= bs!1065351 (and d!1476982 b!4655809)))

(assert (=> bs!1065351 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199443 lambda!199388))))

(declare-fun bs!1065352 () Bool)

(assert (= bs!1065352 (and d!1476982 d!1476894)))

(assert (=> bs!1065352 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199443 lambda!199422))))

(declare-fun bs!1065353 () Bool)

(assert (= bs!1065353 (and d!1476982 d!1476610)))

(assert (=> bs!1065353 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818659) (= lambda!199443 lambda!199381))))

(declare-fun bs!1065354 () Bool)

(assert (= bs!1065354 (and d!1476982 d!1476712)))

(assert (=> bs!1065354 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818709) (= lambda!199443 lambda!199391))))

(declare-fun bs!1065355 () Bool)

(assert (= bs!1065355 (and d!1476982 b!4655656)))

(assert (=> bs!1065355 (= (= (extractMap!1696 (t!359137 lt!1818235)) (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199443 lambda!199365))))

(declare-fun bs!1065356 () Bool)

(assert (= bs!1065356 (and d!1476982 d!1476356)))

(assert (=> bs!1065356 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818393) (= lambda!199443 lambda!199304))))

(declare-fun bs!1065357 () Bool)

(assert (= bs!1065357 (and d!1476982 b!4655714)))

(assert (=> bs!1065357 (= lambda!199443 lambda!199378)))

(assert (=> bs!1065347 (= (= (extractMap!1696 (t!359137 lt!1818235)) lt!1818660) (= lambda!199443 lambda!199380))))

(assert (=> d!1476982 true))

(assert (=> d!1476982 (forall!11026 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))) lambda!199443)))

(declare-fun lt!1818987 () Unit!118533)

(assert (=> d!1476982 (= lt!1818987 (choose!32007 (extractMap!1696 (t!359137 lt!1818235))))))

(assert (=> d!1476982 (= (lemmaContainsAllItsOwnKeys!598 (extractMap!1696 (t!359137 lt!1818235))) lt!1818987)))

(declare-fun bs!1065358 () Bool)

(assert (= bs!1065358 d!1476982))

(declare-fun m!5536131 () Bool)

(assert (=> bs!1065358 m!5536131))

(assert (=> bs!1065358 m!5534307))

(declare-fun m!5536133 () Bool)

(assert (=> bs!1065358 m!5536133))

(assert (=> bm!325348 d!1476982))

(declare-fun d!1476998 () Bool)

(declare-fun res!1957862 () Bool)

(declare-fun e!2905162 () Bool)

(assert (=> d!1476998 (=> res!1957862 e!2905162)))

(assert (=> d!1476998 (= res!1957862 ((_ is Nil!51896) (toList!5209 lt!1818237)))))

(assert (=> d!1476998 (= (forall!11026 (toList!5209 lt!1818237) lambda!199364) e!2905162)))

(declare-fun b!4656224 () Bool)

(declare-fun e!2905163 () Bool)

(assert (=> b!4656224 (= e!2905162 e!2905163)))

(declare-fun res!1957863 () Bool)

(assert (=> b!4656224 (=> (not res!1957863) (not e!2905163))))

(assert (=> b!4656224 (= res!1957863 (dynLambda!21590 lambda!199364 (h!58040 (toList!5209 lt!1818237))))))

(declare-fun b!4656225 () Bool)

(assert (=> b!4656225 (= e!2905163 (forall!11026 (t!359136 (toList!5209 lt!1818237)) lambda!199364))))

(assert (= (and d!1476998 (not res!1957862)) b!4656224))

(assert (= (and b!4656224 res!1957863) b!4656225))

(declare-fun b_lambda!174113 () Bool)

(assert (=> (not b_lambda!174113) (not b!4656224)))

(declare-fun m!5536135 () Bool)

(assert (=> b!4656224 m!5536135))

(declare-fun m!5536137 () Bool)

(assert (=> b!4656225 m!5536137))

(assert (=> d!1476560 d!1476998))

(declare-fun bs!1065375 () Bool)

(declare-fun d!1477000 () Bool)

(assert (= bs!1065375 (and d!1477000 b!4655808)))

(declare-fun lambda!199449 () Int)

(assert (=> bs!1065375 (= (= lt!1818394 lt!1818710) (= lambda!199449 lambda!199390))))

(assert (=> bs!1065375 (= (= lt!1818394 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199449 lambda!199389))))

(declare-fun bs!1065378 () Bool)

(assert (= bs!1065378 (and d!1477000 b!4656166)))

(assert (=> bs!1065378 (= (= lt!1818394 lt!1818954) (= lambda!199449 lambda!199433))))

(declare-fun bs!1065380 () Bool)

(assert (= bs!1065380 (and d!1477000 d!1476386)))

(assert (=> bs!1065380 (not (= lambda!199449 lambda!199309))))

(declare-fun bs!1065381 () Bool)

(assert (= bs!1065381 (and d!1477000 d!1476560)))

(assert (=> bs!1065381 (= lambda!199449 lambda!199364)))

(declare-fun bs!1065382 () Bool)

(assert (= bs!1065382 (and d!1477000 b!4656167)))

(assert (=> bs!1065382 (= (= lt!1818394 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (= lambda!199449 lambda!199428))))

(declare-fun bs!1065384 () Bool)

(assert (= bs!1065384 (and d!1477000 b!4655328)))

(assert (=> bs!1065384 (= (= lt!1818394 lt!1818237) (= lambda!199449 lambda!199302))))

(assert (=> bs!1065378 (= (= lt!1818394 (extractMap!1696 (t!359137 (t!359137 lt!1818235)))) (= lambda!199449 lambda!199430))))

(declare-fun bs!1065387 () Bool)

(assert (= bs!1065387 (and d!1477000 d!1476352)))

(assert (=> bs!1065387 (not (= lambda!199449 lambda!199229))))

(declare-fun bs!1065388 () Bool)

(assert (= bs!1065388 (and d!1477000 d!1476842)))

(assert (=> bs!1065388 (= (= lt!1818394 lt!1818660) (= lambda!199449 lambda!199415))))

(declare-fun bs!1065389 () Bool)

(assert (= bs!1065389 (and d!1477000 d!1476696)))

(assert (=> bs!1065389 (= (= lt!1818394 lt!1818237) (= lambda!199449 lambda!199387))))

(assert (=> bs!1065384 (= lambda!199449 lambda!199303)))

(declare-fun bs!1065390 () Bool)

(assert (= bs!1065390 (and d!1477000 d!1476594)))

(assert (=> bs!1065390 (= (= lt!1818394 lt!1818237) (= lambda!199449 lambda!199377))))

(declare-fun bs!1065392 () Bool)

(assert (= bs!1065392 (and d!1477000 b!4655329)))

(assert (=> bs!1065392 (= (= lt!1818394 lt!1818237) (= lambda!199449 lambda!199301))))

(declare-fun bs!1065393 () Bool)

(assert (= bs!1065393 (and d!1477000 d!1476854)))

(assert (=> bs!1065393 (= (= lt!1818394 lt!1818889) (= lambda!199449 lambda!199421))))

(declare-fun bs!1065394 () Bool)

(assert (= bs!1065394 (and d!1477000 d!1476938)))

(assert (=> bs!1065394 (= (= lt!1818394 lt!1818953) (= lambda!199449 lambda!199436))))

(declare-fun bs!1065395 () Bool)

(assert (= bs!1065395 (and d!1477000 b!4656058)))

(assert (=> bs!1065395 (= (= lt!1818394 lt!1818890) (= lambda!199449 lambda!199420))))

(declare-fun bs!1065396 () Bool)

(assert (= bs!1065396 (and d!1477000 b!4656059)))

(assert (=> bs!1065396 (= (= lt!1818394 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199449 lambda!199416))))

(assert (=> bs!1065395 (= (= lt!1818394 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235))))) (= lambda!199449 lambda!199419))))

(declare-fun bs!1065397 () Bool)

(assert (= bs!1065397 (and d!1477000 b!4655655)))

(assert (=> bs!1065397 (= (= lt!1818394 lt!1818625) (= lambda!199449 lambda!199367))))

(declare-fun bs!1065398 () Bool)

(assert (= bs!1065398 (and d!1477000 b!4655713)))

(assert (=> bs!1065398 (= (= lt!1818394 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199449 lambda!199379))))

(declare-fun bs!1065399 () Bool)

(assert (= bs!1065399 (and d!1477000 d!1476716)))

(assert (=> bs!1065399 (= (= lt!1818394 lt!1818625) (= lambda!199449 lambda!199392))))

(declare-fun bs!1065400 () Bool)

(assert (= bs!1065400 (and d!1477000 d!1476564)))

(assert (=> bs!1065400 (= (= lt!1818394 lt!1818624) (= lambda!199449 lambda!199368))))

(declare-fun bs!1065401 () Bool)

(assert (= bs!1065401 (and d!1477000 d!1476962)))

(assert (=> bs!1065401 (not (= lambda!199449 lambda!199441))))

(assert (=> bs!1065397 (= (= lt!1818394 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199449 lambda!199366))))

(declare-fun bs!1065402 () Bool)

(assert (= bs!1065402 (and d!1477000 b!4655809)))

(assert (=> bs!1065402 (= (= lt!1818394 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40)))) (= lambda!199449 lambda!199388))))

(declare-fun bs!1065403 () Bool)

(assert (= bs!1065403 (and d!1477000 d!1476982)))

(assert (=> bs!1065403 (= (= lt!1818394 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199449 lambda!199443))))

(declare-fun bs!1065404 () Bool)

(assert (= bs!1065404 (and d!1477000 d!1476894)))

(assert (=> bs!1065404 (= (= lt!1818394 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199449 lambda!199422))))

(declare-fun bs!1065405 () Bool)

(assert (= bs!1065405 (and d!1477000 d!1476610)))

(assert (=> bs!1065405 (= (= lt!1818394 lt!1818659) (= lambda!199449 lambda!199381))))

(declare-fun bs!1065406 () Bool)

(assert (= bs!1065406 (and d!1477000 d!1476712)))

(assert (=> bs!1065406 (= (= lt!1818394 lt!1818709) (= lambda!199449 lambda!199391))))

(declare-fun bs!1065407 () Bool)

(assert (= bs!1065407 (and d!1477000 b!4655656)))

(assert (=> bs!1065407 (= (= lt!1818394 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (= lambda!199449 lambda!199365))))

(declare-fun bs!1065408 () Bool)

(assert (= bs!1065408 (and d!1477000 d!1476356)))

(assert (=> bs!1065408 (= (= lt!1818394 lt!1818393) (= lambda!199449 lambda!199304))))

(declare-fun bs!1065409 () Bool)

(assert (= bs!1065409 (and d!1477000 b!4655714)))

(assert (=> bs!1065409 (= (= lt!1818394 (extractMap!1696 (t!359137 lt!1818235))) (= lambda!199449 lambda!199378))))

(assert (=> bs!1065398 (= (= lt!1818394 lt!1818660) (= lambda!199449 lambda!199380))))

(assert (=> d!1477000 true))

(assert (=> d!1477000 (forall!11026 (toList!5209 lt!1818237) lambda!199449)))

(assert (=> d!1477000 true))

(declare-fun _$61!488 () Unit!118533)

(assert (=> d!1477000 (= (choose!32002 lt!1818237 lt!1818394 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))) _$61!488)))

(declare-fun bs!1065410 () Bool)

(assert (= bs!1065410 d!1477000))

(declare-fun m!5536155 () Bool)

(assert (=> bs!1065410 m!5536155))

(assert (=> d!1476560 d!1477000))

(declare-fun d!1477016 () Bool)

(declare-fun res!1957874 () Bool)

(declare-fun e!2905176 () Bool)

(assert (=> d!1477016 (=> res!1957874 e!2905176)))

(assert (=> d!1477016 (= res!1957874 ((_ is Nil!51896) (toList!5209 (+!1984 lt!1818237 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))))))))

(assert (=> d!1477016 (= (forall!11026 (toList!5209 (+!1984 lt!1818237 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))) lambda!199364) e!2905176)))

(declare-fun b!4656241 () Bool)

(declare-fun e!2905177 () Bool)

(assert (=> b!4656241 (= e!2905176 e!2905177)))

(declare-fun res!1957875 () Bool)

(assert (=> b!4656241 (=> (not res!1957875) (not e!2905177))))

(assert (=> b!4656241 (= res!1957875 (dynLambda!21590 lambda!199364 (h!58040 (toList!5209 (+!1984 lt!1818237 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))))))

(declare-fun b!4656242 () Bool)

(assert (=> b!4656242 (= e!2905177 (forall!11026 (t!359136 (toList!5209 (+!1984 lt!1818237 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))))) lambda!199364))))

(assert (= (and d!1477016 (not res!1957874)) b!4656241))

(assert (= (and b!4656241 res!1957875) b!4656242))

(declare-fun b_lambda!174119 () Bool)

(assert (=> (not b_lambda!174119) (not b!4656241)))

(declare-fun m!5536165 () Bool)

(assert (=> b!4656241 m!5536165))

(declare-fun m!5536167 () Bool)

(assert (=> b!4656242 m!5536167))

(assert (=> d!1476560 d!1477016))

(declare-fun d!1477022 () Bool)

(declare-fun e!2905182 () Bool)

(assert (=> d!1477022 e!2905182))

(declare-fun res!1957880 () Bool)

(assert (=> d!1477022 (=> (not res!1957880) (not e!2905182))))

(declare-fun lt!1818989 () ListMap!4549)

(assert (=> d!1477022 (= res!1957880 (contains!15037 lt!1818989 (_1!29797 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))))

(declare-fun lt!1818991 () List!52020)

(assert (=> d!1477022 (= lt!1818989 (ListMap!4550 lt!1818991))))

(declare-fun lt!1818992 () Unit!118533)

(declare-fun lt!1818990 () Unit!118533)

(assert (=> d!1477022 (= lt!1818992 lt!1818990)))

(assert (=> d!1477022 (= (getValueByKey!1610 lt!1818991 (_1!29797 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))) (Some!11821 (_2!29797 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))))

(assert (=> d!1477022 (= lt!1818990 (lemmaContainsTupThenGetReturnValue!924 lt!1818991 (_1!29797 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))) (_2!29797 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))))

(assert (=> d!1477022 (= lt!1818991 (insertNoDuplicatedKeys!432 (toList!5209 lt!1818237) (_1!29797 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))) (_2!29797 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))))

(assert (=> d!1477022 (= (+!1984 lt!1818237 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))) lt!1818989)))

(declare-fun b!4656247 () Bool)

(declare-fun res!1957881 () Bool)

(assert (=> b!4656247 (=> (not res!1957881) (not e!2905182))))

(assert (=> b!4656247 (= res!1957881 (= (getValueByKey!1610 (toList!5209 lt!1818989) (_1!29797 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))) (Some!11821 (_2!29797 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))))))))

(declare-fun b!4656248 () Bool)

(assert (=> b!4656248 (= e!2905182 (contains!15041 (toList!5209 lt!1818989) (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))))))

(assert (= (and d!1477022 res!1957880) b!4656247))

(assert (= (and b!4656247 res!1957881) b!4656248))

(declare-fun m!5536175 () Bool)

(assert (=> d!1477022 m!5536175))

(declare-fun m!5536177 () Bool)

(assert (=> d!1477022 m!5536177))

(declare-fun m!5536181 () Bool)

(assert (=> d!1477022 m!5536181))

(declare-fun m!5536183 () Bool)

(assert (=> d!1477022 m!5536183))

(declare-fun m!5536185 () Bool)

(assert (=> b!4656247 m!5536185))

(declare-fun m!5536187 () Bool)

(assert (=> b!4656248 m!5536187))

(assert (=> d!1476560 d!1477022))

(declare-fun d!1477030 () Bool)

(assert (=> d!1477030 (= (isEmpty!29005 (getValueByKey!1610 (toList!5209 lt!1818236) key!4968)) (not ((_ is Some!11821) (getValueByKey!1610 (toList!5209 lt!1818236) key!4968))))))

(assert (=> d!1476584 d!1477030))

(declare-fun d!1477032 () Bool)

(declare-fun res!1957885 () Bool)

(declare-fun e!2905189 () Bool)

(assert (=> d!1477032 (=> res!1957885 e!2905189)))

(assert (=> d!1477032 (= res!1957885 ((_ is Nil!51896) (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (t!359136 oldBucket!40))))))

(assert (=> d!1477032 (= (forall!11026 (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (t!359136 oldBucket!40)) (ite c!796872 lambda!199365 lambda!199367)) e!2905189)))

(declare-fun b!4656258 () Bool)

(declare-fun e!2905190 () Bool)

(assert (=> b!4656258 (= e!2905189 e!2905190)))

(declare-fun res!1957886 () Bool)

(assert (=> b!4656258 (=> (not res!1957886) (not e!2905190))))

(assert (=> b!4656258 (= res!1957886 (dynLambda!21590 (ite c!796872 lambda!199365 lambda!199367) (h!58040 (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (t!359136 oldBucket!40)))))))

(declare-fun b!4656259 () Bool)

(assert (=> b!4656259 (= e!2905190 (forall!11026 (t!359136 (ite c!796872 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) (t!359136 oldBucket!40))) (ite c!796872 lambda!199365 lambda!199367)))))

(assert (= (and d!1477032 (not res!1957885)) b!4656258))

(assert (= (and b!4656258 res!1957886) b!4656259))

(declare-fun b_lambda!174123 () Bool)

(assert (=> (not b_lambda!174123) (not b!4656258)))

(declare-fun m!5536211 () Bool)

(assert (=> b!4656258 m!5536211))

(declare-fun m!5536215 () Bool)

(assert (=> b!4656259 m!5536215))

(assert (=> bm!325343 d!1477032))

(declare-fun d!1477040 () Bool)

(declare-fun res!1957891 () Bool)

(declare-fun e!2905195 () Bool)

(assert (=> d!1477040 (=> res!1957891 e!2905195)))

(assert (=> d!1477040 (= res!1957891 (not ((_ is Cons!51896) (_2!29798 (h!58041 (t!359137 lt!1818235))))))))

(assert (=> d!1477040 (= (noDuplicateKeys!1640 (_2!29798 (h!58041 (t!359137 lt!1818235)))) e!2905195)))

(declare-fun b!4656264 () Bool)

(declare-fun e!2905196 () Bool)

(assert (=> b!4656264 (= e!2905195 e!2905196)))

(declare-fun res!1957892 () Bool)

(assert (=> b!4656264 (=> (not res!1957892) (not e!2905196))))

(assert (=> b!4656264 (= res!1957892 (not (containsKey!2725 (t!359136 (_2!29798 (h!58041 (t!359137 lt!1818235)))) (_1!29797 (h!58040 (_2!29798 (h!58041 (t!359137 lt!1818235))))))))))

(declare-fun b!4656265 () Bool)

(assert (=> b!4656265 (= e!2905196 (noDuplicateKeys!1640 (t!359136 (_2!29798 (h!58041 (t!359137 lt!1818235))))))))

(assert (= (and d!1477040 (not res!1957891)) b!4656264))

(assert (= (and b!4656264 res!1957892) b!4656265))

(declare-fun m!5536217 () Bool)

(assert (=> b!4656264 m!5536217))

(declare-fun m!5536219 () Bool)

(assert (=> b!4656265 m!5536219))

(assert (=> bs!1064660 d!1477040))

(declare-fun d!1477042 () Bool)

(declare-fun res!1957893 () Bool)

(declare-fun e!2905197 () Bool)

(assert (=> d!1477042 (=> res!1957893 e!2905197)))

(assert (=> d!1477042 (= res!1957893 (and ((_ is Cons!51896) (t!359136 (t!359136 newBucket!224))) (= (_1!29797 (h!58040 (t!359136 (t!359136 newBucket!224)))) (_1!29797 (h!58040 newBucket!224)))))))

(assert (=> d!1477042 (= (containsKey!2725 (t!359136 (t!359136 newBucket!224)) (_1!29797 (h!58040 newBucket!224))) e!2905197)))

(declare-fun b!4656266 () Bool)

(declare-fun e!2905198 () Bool)

(assert (=> b!4656266 (= e!2905197 e!2905198)))

(declare-fun res!1957894 () Bool)

(assert (=> b!4656266 (=> (not res!1957894) (not e!2905198))))

(assert (=> b!4656266 (= res!1957894 ((_ is Cons!51896) (t!359136 (t!359136 newBucket!224))))))

(declare-fun b!4656267 () Bool)

(assert (=> b!4656267 (= e!2905198 (containsKey!2725 (t!359136 (t!359136 (t!359136 newBucket!224))) (_1!29797 (h!58040 newBucket!224))))))

(assert (= (and d!1477042 (not res!1957893)) b!4656266))

(assert (= (and b!4656266 res!1957894) b!4656267))

(declare-fun m!5536221 () Bool)

(assert (=> b!4656267 m!5536221))

(assert (=> b!4655709 d!1477042))

(declare-fun d!1477044 () Bool)

(declare-fun res!1957895 () Bool)

(declare-fun e!2905199 () Bool)

(assert (=> d!1477044 (=> res!1957895 e!2905199)))

(assert (=> d!1477044 (= res!1957895 ((_ is Nil!51897) (t!359137 (toList!5210 (ListLongMap!3764 lt!1818235)))))))

(assert (=> d!1477044 (= (forall!11024 (t!359137 (toList!5210 (ListLongMap!3764 lt!1818235))) lambda!199312) e!2905199)))

(declare-fun b!4656268 () Bool)

(declare-fun e!2905200 () Bool)

(assert (=> b!4656268 (= e!2905199 e!2905200)))

(declare-fun res!1957896 () Bool)

(assert (=> b!4656268 (=> (not res!1957896) (not e!2905200))))

(assert (=> b!4656268 (= res!1957896 (dynLambda!21588 lambda!199312 (h!58041 (t!359137 (toList!5210 (ListLongMap!3764 lt!1818235))))))))

(declare-fun b!4656269 () Bool)

(assert (=> b!4656269 (= e!2905200 (forall!11024 (t!359137 (t!359137 (toList!5210 (ListLongMap!3764 lt!1818235)))) lambda!199312))))

(assert (= (and d!1477044 (not res!1957895)) b!4656268))

(assert (= (and b!4656268 res!1957896) b!4656269))

(declare-fun b_lambda!174129 () Bool)

(assert (=> (not b_lambda!174129) (not b!4656268)))

(declare-fun m!5536223 () Bool)

(assert (=> b!4656268 m!5536223))

(declare-fun m!5536225 () Bool)

(assert (=> b!4656269 m!5536225))

(assert (=> b!4655541 d!1477044))

(declare-fun d!1477046 () Bool)

(declare-fun res!1957897 () Bool)

(declare-fun e!2905201 () Bool)

(assert (=> d!1477046 (=> res!1957897 e!2905201)))

(assert (=> d!1477046 (= res!1957897 (not ((_ is Cons!51896) (t!359136 (t!359136 oldBucket!40)))))))

(assert (=> d!1477046 (= (noDuplicateKeys!1640 (t!359136 (t!359136 oldBucket!40))) e!2905201)))

(declare-fun b!4656270 () Bool)

(declare-fun e!2905202 () Bool)

(assert (=> b!4656270 (= e!2905201 e!2905202)))

(declare-fun res!1957898 () Bool)

(assert (=> b!4656270 (=> (not res!1957898) (not e!2905202))))

(assert (=> b!4656270 (= res!1957898 (not (containsKey!2725 (t!359136 (t!359136 (t!359136 oldBucket!40))) (_1!29797 (h!58040 (t!359136 (t!359136 oldBucket!40)))))))))

(declare-fun b!4656271 () Bool)

(assert (=> b!4656271 (= e!2905202 (noDuplicateKeys!1640 (t!359136 (t!359136 (t!359136 oldBucket!40)))))))

(assert (= (and d!1477046 (not res!1957897)) b!4656270))

(assert (= (and b!4656270 res!1957898) b!4656271))

(declare-fun m!5536227 () Bool)

(assert (=> b!4656270 m!5536227))

(declare-fun m!5536229 () Bool)

(assert (=> b!4656271 m!5536229))

(assert (=> b!4655619 d!1477046))

(declare-fun d!1477048 () Bool)

(declare-fun res!1957899 () Bool)

(declare-fun e!2905203 () Bool)

(assert (=> d!1477048 (=> res!1957899 e!2905203)))

(assert (=> d!1477048 (= res!1957899 ((_ is Nil!51899) lt!1818567))))

(assert (=> d!1477048 (= (noDuplicate!837 lt!1818567) e!2905203)))

(declare-fun b!4656272 () Bool)

(declare-fun e!2905204 () Bool)

(assert (=> b!4656272 (= e!2905203 e!2905204)))

(declare-fun res!1957900 () Bool)

(assert (=> b!4656272 (=> (not res!1957900) (not e!2905204))))

(assert (=> b!4656272 (= res!1957900 (not (contains!15039 (t!359139 lt!1818567) (h!58045 lt!1818567))))))

(declare-fun b!4656273 () Bool)

(assert (=> b!4656273 (= e!2905204 (noDuplicate!837 (t!359139 lt!1818567)))))

(assert (= (and d!1477048 (not res!1957899)) b!4656272))

(assert (= (and b!4656272 res!1957900) b!4656273))

(declare-fun m!5536231 () Bool)

(assert (=> b!4656272 m!5536231))

(declare-fun m!5536233 () Bool)

(assert (=> b!4656273 m!5536233))

(assert (=> d!1476508 d!1477048))

(assert (=> d!1476508 d!1476750))

(declare-fun d!1477050 () Bool)

(declare-fun lt!1819002 () Bool)

(assert (=> d!1477050 (= lt!1819002 (select (content!8994 e!2904727) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun e!2905206 () Bool)

(assert (=> d!1477050 (= lt!1819002 e!2905206)))

(declare-fun res!1957902 () Bool)

(assert (=> d!1477050 (=> (not res!1957902) (not e!2905206))))

(assert (=> d!1477050 (= res!1957902 ((_ is Cons!51899) e!2904727))))

(assert (=> d!1477050 (= (contains!15039 e!2904727 (_1!29797 (h!58040 oldBucket!40))) lt!1819002)))

(declare-fun b!4656274 () Bool)

(declare-fun e!2905205 () Bool)

(assert (=> b!4656274 (= e!2905206 e!2905205)))

(declare-fun res!1957901 () Bool)

(assert (=> b!4656274 (=> res!1957901 e!2905205)))

(assert (=> b!4656274 (= res!1957901 (= (h!58045 e!2904727) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4656275 () Bool)

(assert (=> b!4656275 (= e!2905205 (contains!15039 (t!359139 e!2904727) (_1!29797 (h!58040 oldBucket!40))))))

(assert (= (and d!1477050 res!1957902) b!4656274))

(assert (= (and b!4656274 (not res!1957901)) b!4656275))

(declare-fun m!5536235 () Bool)

(assert (=> d!1477050 m!5536235))

(declare-fun m!5536237 () Bool)

(assert (=> d!1477050 m!5536237))

(declare-fun m!5536239 () Bool)

(assert (=> b!4656275 m!5536239))

(assert (=> bm!325341 d!1477050))

(assert (=> b!4655712 d!1476840))

(assert (=> d!1476554 d!1476736))

(declare-fun d!1477052 () Bool)

(declare-fun lt!1819005 () List!52020)

(assert (=> d!1477052 (not (containsKey!2725 lt!1819005 key!4968))))

(declare-fun e!2905207 () List!52020)

(assert (=> d!1477052 (= lt!1819005 e!2905207)))

(declare-fun c!796991 () Bool)

(assert (=> d!1477052 (= c!796991 (and ((_ is Cons!51896) (t!359136 (t!359136 oldBucket!40))) (= (_1!29797 (h!58040 (t!359136 (t!359136 oldBucket!40)))) key!4968)))))

(assert (=> d!1477052 (noDuplicateKeys!1640 (t!359136 (t!359136 oldBucket!40)))))

(assert (=> d!1477052 (= (removePairForKey!1263 (t!359136 (t!359136 oldBucket!40)) key!4968) lt!1819005)))

(declare-fun b!4656278 () Bool)

(declare-fun e!2905208 () List!52020)

(assert (=> b!4656278 (= e!2905208 (Cons!51896 (h!58040 (t!359136 (t!359136 oldBucket!40))) (removePairForKey!1263 (t!359136 (t!359136 (t!359136 oldBucket!40))) key!4968)))))

(declare-fun b!4656276 () Bool)

(assert (=> b!4656276 (= e!2905207 (t!359136 (t!359136 (t!359136 oldBucket!40))))))

(declare-fun b!4656279 () Bool)

(assert (=> b!4656279 (= e!2905208 Nil!51896)))

(declare-fun b!4656277 () Bool)

(assert (=> b!4656277 (= e!2905207 e!2905208)))

(declare-fun c!796992 () Bool)

(assert (=> b!4656277 (= c!796992 ((_ is Cons!51896) (t!359136 (t!359136 oldBucket!40))))))

(assert (= (and d!1477052 c!796991) b!4656276))

(assert (= (and d!1477052 (not c!796991)) b!4656277))

(assert (= (and b!4656277 c!796992) b!4656278))

(assert (= (and b!4656277 (not c!796992)) b!4656279))

(declare-fun m!5536241 () Bool)

(assert (=> d!1477052 m!5536241))

(assert (=> d!1477052 m!5534713))

(declare-fun m!5536243 () Bool)

(assert (=> b!4656278 m!5536243))

(assert (=> b!4655704 d!1477052))

(declare-fun d!1477054 () Bool)

(assert (=> d!1477054 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun lt!1819006 () Unit!118533)

(assert (=> d!1477054 (= lt!1819006 (choose!32005 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1477054 (invariantList!1298 (toList!5209 lt!1818389))))

(assert (=> d!1477054 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))) lt!1819006)))

(declare-fun bs!1065413 () Bool)

(assert (= bs!1065413 d!1477054))

(assert (=> bs!1065413 m!5534751))

(assert (=> bs!1065413 m!5534751))

(assert (=> bs!1065413 m!5534753))

(declare-fun m!5536245 () Bool)

(assert (=> bs!1065413 m!5536245))

(assert (=> bs!1065413 m!5535247))

(assert (=> b!4655637 d!1477054))

(assert (=> b!4655637 d!1476930))

(assert (=> b!4655637 d!1476934))

(declare-fun d!1477056 () Bool)

(assert (=> d!1477056 (contains!15039 (getKeysList!749 (toList!5209 lt!1818389)) (_1!29797 (h!58040 oldBucket!40)))))

(declare-fun lt!1819007 () Unit!118533)

(assert (=> d!1477056 (= lt!1819007 (choose!32006 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1477056 (invariantList!1298 (toList!5209 lt!1818389))))

(assert (=> d!1477056 (= (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818389) (_1!29797 (h!58040 oldBucket!40))) lt!1819007)))

(declare-fun bs!1065414 () Bool)

(assert (= bs!1065414 d!1477056))

(assert (=> bs!1065414 m!5534745))

(assert (=> bs!1065414 m!5534745))

(declare-fun m!5536247 () Bool)

(assert (=> bs!1065414 m!5536247))

(declare-fun m!5536249 () Bool)

(assert (=> bs!1065414 m!5536249))

(assert (=> bs!1065414 m!5535247))

(assert (=> b!4655637 d!1477056))

(declare-fun d!1477058 () Bool)

(declare-fun res!1957903 () Bool)

(declare-fun e!2905209 () Bool)

(assert (=> d!1477058 (=> res!1957903 e!2905209)))

(assert (=> d!1477058 (= res!1957903 ((_ is Nil!51899) lt!1818565))))

(assert (=> d!1477058 (= (forall!11027 lt!1818565 lambda!199357) e!2905209)))

(declare-fun b!4656280 () Bool)

(declare-fun e!2905210 () Bool)

(assert (=> b!4656280 (= e!2905209 e!2905210)))

(declare-fun res!1957904 () Bool)

(assert (=> b!4656280 (=> (not res!1957904) (not e!2905210))))

(assert (=> b!4656280 (= res!1957904 (dynLambda!21592 lambda!199357 (h!58045 lt!1818565)))))

(declare-fun b!4656281 () Bool)

(assert (=> b!4656281 (= e!2905210 (forall!11027 (t!359139 lt!1818565) lambda!199357))))

(assert (= (and d!1477058 (not res!1957903)) b!4656280))

(assert (= (and b!4656280 res!1957904) b!4656281))

(declare-fun b_lambda!174131 () Bool)

(assert (=> (not b_lambda!174131) (not b!4656280)))

(declare-fun m!5536251 () Bool)

(assert (=> b!4656280 m!5536251))

(declare-fun m!5536253 () Bool)

(assert (=> b!4656281 m!5536253))

(assert (=> b!4655601 d!1477058))

(declare-fun d!1477060 () Bool)

(declare-fun res!1957905 () Bool)

(declare-fun e!2905211 () Bool)

(assert (=> d!1477060 (=> res!1957905 e!2905211)))

(assert (=> d!1477060 (= res!1957905 (and ((_ is Cons!51896) (t!359136 (toList!5209 lt!1818236))) (= (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818236)))) (_1!29797 (h!58040 (toList!5209 lt!1818236))))))))

(assert (=> d!1477060 (= (containsKey!2726 (t!359136 (toList!5209 lt!1818236)) (_1!29797 (h!58040 (toList!5209 lt!1818236)))) e!2905211)))

(declare-fun b!4656284 () Bool)

(declare-fun e!2905212 () Bool)

(assert (=> b!4656284 (= e!2905211 e!2905212)))

(declare-fun res!1957906 () Bool)

(assert (=> b!4656284 (=> (not res!1957906) (not e!2905212))))

(assert (=> b!4656284 (= res!1957906 ((_ is Cons!51896) (t!359136 (toList!5209 lt!1818236))))))

(declare-fun b!4656285 () Bool)

(assert (=> b!4656285 (= e!2905212 (containsKey!2726 (t!359136 (t!359136 (toList!5209 lt!1818236))) (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(assert (= (and d!1477060 (not res!1957905)) b!4656284))

(assert (= (and b!4656284 res!1957906) b!4656285))

(declare-fun m!5536255 () Bool)

(assert (=> b!4656285 m!5536255))

(assert (=> b!4655601 d!1477060))

(declare-fun d!1477062 () Bool)

(declare-fun lt!1819009 () Bool)

(assert (=> d!1477062 (= lt!1819009 (select (content!8994 (getKeysList!749 (t!359136 (toList!5209 lt!1818236)))) (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(declare-fun e!2905214 () Bool)

(assert (=> d!1477062 (= lt!1819009 e!2905214)))

(declare-fun res!1957908 () Bool)

(assert (=> d!1477062 (=> (not res!1957908) (not e!2905214))))

(assert (=> d!1477062 (= res!1957908 ((_ is Cons!51899) (getKeysList!749 (t!359136 (toList!5209 lt!1818236)))))))

(assert (=> d!1477062 (= (contains!15039 (getKeysList!749 (t!359136 (toList!5209 lt!1818236))) (_1!29797 (h!58040 (toList!5209 lt!1818236)))) lt!1819009)))

(declare-fun b!4656286 () Bool)

(declare-fun e!2905213 () Bool)

(assert (=> b!4656286 (= e!2905214 e!2905213)))

(declare-fun res!1957907 () Bool)

(assert (=> b!4656286 (=> res!1957907 e!2905213)))

(assert (=> b!4656286 (= res!1957907 (= (h!58045 (getKeysList!749 (t!359136 (toList!5209 lt!1818236)))) (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(declare-fun b!4656287 () Bool)

(assert (=> b!4656287 (= e!2905213 (contains!15039 (t!359139 (getKeysList!749 (t!359136 (toList!5209 lt!1818236)))) (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(assert (= (and d!1477062 res!1957908) b!4656286))

(assert (= (and b!4656286 (not res!1957907)) b!4656287))

(assert (=> d!1477062 m!5534677))

(declare-fun m!5536257 () Bool)

(assert (=> d!1477062 m!5536257))

(declare-fun m!5536259 () Bool)

(assert (=> d!1477062 m!5536259))

(declare-fun m!5536261 () Bool)

(assert (=> b!4656287 m!5536261))

(assert (=> b!4655601 d!1477062))

(declare-fun bs!1065456 () Bool)

(declare-fun d!1477064 () Bool)

(assert (= bs!1065456 (and d!1477064 b!4655672)))

(declare-fun lambda!199457 () Int)

(assert (=> bs!1065456 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818236)) (= lambda!199457 lambda!199373))))

(declare-fun bs!1065458 () Bool)

(assert (= bs!1065458 (and d!1477064 b!4655869)))

(assert (=> bs!1065458 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (Cons!51896 (h!58040 (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236))))) (= lambda!199457 lambda!199401))))

(declare-fun bs!1065460 () Bool)

(assert (= bs!1065460 (and d!1477064 b!4656138)))

(assert (=> bs!1065460 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (Cons!51896 (h!58040 (toList!5209 lt!1818394)) (t!359136 (toList!5209 lt!1818394)))) (= lambda!199457 lambda!199425))))

(declare-fun bs!1065462 () Bool)

(assert (= bs!1065462 (and d!1477064 b!4656132)))

(assert (=> bs!1065462 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818394)) (= lambda!199457 lambda!199426))))

(declare-fun bs!1065464 () Bool)

(assert (= bs!1065464 (and d!1477064 b!4655599)))

(assert (=> bs!1065464 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (t!359136 (toList!5209 lt!1818236))) (= lambda!199457 lambda!199356))))

(declare-fun bs!1065466 () Bool)

(assert (= bs!1065466 (and d!1477064 b!4655885)))

(assert (=> bs!1065466 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818394)) (= lambda!199457 lambda!199405))))

(declare-fun bs!1065468 () Bool)

(assert (= bs!1065468 (and d!1477064 b!4655595)))

(assert (=> bs!1065468 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818236)) (= lambda!199457 lambda!199358))))

(declare-fun bs!1065470 () Bool)

(assert (= bs!1065470 (and d!1477064 b!4655848)))

(assert (=> bs!1065470 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (Cons!51896 (h!58040 (toList!5209 lt!1818389)) (t!359136 (toList!5209 lt!1818389)))) (= lambda!199457 lambda!199394))))

(declare-fun bs!1065472 () Bool)

(assert (= bs!1065472 (and d!1477064 b!4655846)))

(assert (=> bs!1065472 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (t!359136 (toList!5209 lt!1818389))) (= lambda!199457 lambda!199393))))

(declare-fun bs!1065474 () Bool)

(assert (= bs!1065474 (and d!1477064 b!4655842)))

(assert (=> bs!1065474 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818389)) (= lambda!199457 lambda!199395))))

(declare-fun bs!1065476 () Bool)

(assert (= bs!1065476 (and d!1477064 b!4655724)))

(assert (=> bs!1065476 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (toList!5209 lt!1818389)) (= lambda!199457 lambda!199383))))

(declare-fun bs!1065478 () Bool)

(assert (= bs!1065478 (and d!1477064 b!4655867)))

(assert (=> bs!1065478 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (t!359136 (t!359136 (toList!5209 lt!1818236)))) (= lambda!199457 lambda!199399))))

(declare-fun bs!1065480 () Bool)

(assert (= bs!1065480 (and d!1477064 b!4656136)))

(assert (=> bs!1065480 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (t!359136 (toList!5209 lt!1818394))) (= lambda!199457 lambda!199424))))

(declare-fun bs!1065482 () Bool)

(assert (= bs!1065482 (and d!1477064 b!4655601)))

(assert (=> bs!1065482 (= lambda!199457 lambda!199357)))

(declare-fun bs!1065484 () Bool)

(assert (= bs!1065484 (and d!1477064 b!4655863)))

(assert (=> bs!1065484 (= (= (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (t!359136 (toList!5209 lt!1818236))) (= lambda!199457 lambda!199402))))

(assert (=> d!1477064 true))

(assert (=> d!1477064 true))

(assert (=> d!1477064 (forall!11027 lt!1818565 lambda!199457)))

(declare-fun lt!1819019 () Unit!118533)

(declare-fun choose!32012 (List!52020 List!52023 tuple2!53006) Unit!118533)

(assert (=> d!1477064 (= lt!1819019 (choose!32012 (t!359136 (toList!5209 lt!1818236)) lt!1818565 (h!58040 (toList!5209 lt!1818236))))))

(assert (=> d!1477064 (invariantList!1298 (t!359136 (toList!5209 lt!1818236)))))

(assert (=> d!1477064 (= (lemmaForallContainsAddHeadPreserves!257 (t!359136 (toList!5209 lt!1818236)) lt!1818565 (h!58040 (toList!5209 lt!1818236))) lt!1819019)))

(declare-fun bs!1065487 () Bool)

(assert (= bs!1065487 d!1477064))

(declare-fun m!5536269 () Bool)

(assert (=> bs!1065487 m!5536269))

(declare-fun m!5536271 () Bool)

(assert (=> bs!1065487 m!5536271))

(assert (=> bs!1065487 m!5535287))

(assert (=> b!4655601 d!1477064))

(assert (=> b!4655601 d!1476742))

(declare-fun b!4656299 () Bool)

(declare-fun e!2905220 () Bool)

(assert (=> b!4656299 (= e!2905220 (not (contains!15039 (keys!18384 lt!1818394) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))))

(declare-fun b!4656300 () Bool)

(declare-fun e!2905221 () Bool)

(assert (=> b!4656300 (= e!2905221 (contains!15039 (keys!18384 lt!1818394) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun b!4656301 () Bool)

(declare-fun e!2905222 () Bool)

(assert (=> b!4656301 (= e!2905222 e!2905221)))

(declare-fun res!1957912 () Bool)

(assert (=> b!4656301 (=> (not res!1957912) (not e!2905221))))

(assert (=> b!4656301 (= res!1957912 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))))

(declare-fun b!4656302 () Bool)

(declare-fun e!2905224 () Unit!118533)

(declare-fun lt!1819020 () Unit!118533)

(assert (=> b!4656302 (= e!2905224 lt!1819020)))

(declare-fun lt!1819023 () Unit!118533)

(assert (=> b!4656302 (= lt!1819023 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818394) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> b!4656302 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun lt!1819021 () Unit!118533)

(assert (=> b!4656302 (= lt!1819021 lt!1819023)))

(assert (=> b!4656302 (= lt!1819020 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818394) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun call!325393 () Bool)

(assert (=> b!4656302 call!325393))

(declare-fun b!4656303 () Bool)

(declare-fun e!2905219 () List!52023)

(assert (=> b!4656303 (= e!2905219 (keys!18384 lt!1818394))))

(declare-fun b!4656304 () Bool)

(assert (=> b!4656304 (= e!2905219 (getKeysList!749 (toList!5209 lt!1818394)))))

(declare-fun d!1477068 () Bool)

(assert (=> d!1477068 e!2905222))

(declare-fun res!1957913 () Bool)

(assert (=> d!1477068 (=> res!1957913 e!2905222)))

(assert (=> d!1477068 (= res!1957913 e!2905220)))

(declare-fun res!1957914 () Bool)

(assert (=> d!1477068 (=> (not res!1957914) (not e!2905220))))

(declare-fun lt!1819022 () Bool)

(assert (=> d!1477068 (= res!1957914 (not lt!1819022))))

(declare-fun lt!1819027 () Bool)

(assert (=> d!1477068 (= lt!1819022 lt!1819027)))

(declare-fun lt!1819025 () Unit!118533)

(assert (=> d!1477068 (= lt!1819025 e!2905224)))

(declare-fun c!796996 () Bool)

(assert (=> d!1477068 (= c!796996 lt!1819027)))

(assert (=> d!1477068 (= lt!1819027 (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> d!1477068 (= (contains!15037 lt!1818394 (_1!29797 (h!58040 (t!359136 oldBucket!40)))) lt!1819022)))

(declare-fun bm!325388 () Bool)

(assert (=> bm!325388 (= call!325393 (contains!15039 e!2905219 (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun c!796998 () Bool)

(assert (=> bm!325388 (= c!796998 c!796996)))

(declare-fun b!4656305 () Bool)

(declare-fun e!2905223 () Unit!118533)

(declare-fun Unit!118719 () Unit!118533)

(assert (=> b!4656305 (= e!2905223 Unit!118719)))

(declare-fun b!4656306 () Bool)

(assert (=> b!4656306 (= e!2905224 e!2905223)))

(declare-fun c!796997 () Bool)

(assert (=> b!4656306 (= c!796997 call!325393)))

(declare-fun b!4656307 () Bool)

(assert (=> b!4656307 false))

(declare-fun lt!1819026 () Unit!118533)

(declare-fun lt!1819024 () Unit!118533)

(assert (=> b!4656307 (= lt!1819026 lt!1819024)))

(assert (=> b!4656307 (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 (t!359136 oldBucket!40))))))

(assert (=> b!4656307 (= lt!1819024 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818394) (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun Unit!118720 () Unit!118533)

(assert (=> b!4656307 (= e!2905223 Unit!118720)))

(assert (= (and d!1477068 c!796996) b!4656302))

(assert (= (and d!1477068 (not c!796996)) b!4656306))

(assert (= (and b!4656306 c!796997) b!4656307))

(assert (= (and b!4656306 (not c!796997)) b!4656305))

(assert (= (or b!4656302 b!4656306) bm!325388))

(assert (= (and bm!325388 c!796998) b!4656304))

(assert (= (and bm!325388 (not c!796998)) b!4656303))

(assert (= (and d!1477068 res!1957914) b!4656299))

(assert (= (and d!1477068 (not res!1957913)) b!4656301))

(assert (= (and b!4656301 res!1957912) b!4656300))

(assert (=> b!4656303 m!5534715))

(declare-fun m!5536275 () Bool)

(assert (=> d!1477068 m!5536275))

(assert (=> b!4656304 m!5534719))

(declare-fun m!5536279 () Bool)

(assert (=> bm!325388 m!5536279))

(declare-fun m!5536283 () Bool)

(assert (=> b!4656302 m!5536283))

(declare-fun m!5536285 () Bool)

(assert (=> b!4656302 m!5536285))

(assert (=> b!4656302 m!5536285))

(declare-fun m!5536289 () Bool)

(assert (=> b!4656302 m!5536289))

(declare-fun m!5536293 () Bool)

(assert (=> b!4656302 m!5536293))

(assert (=> b!4656307 m!5536275))

(declare-fun m!5536297 () Bool)

(assert (=> b!4656307 m!5536297))

(assert (=> b!4656301 m!5536285))

(assert (=> b!4656301 m!5536285))

(assert (=> b!4656301 m!5536289))

(assert (=> b!4656300 m!5534715))

(assert (=> b!4656300 m!5534715))

(declare-fun m!5536309 () Bool)

(assert (=> b!4656300 m!5536309))

(assert (=> b!4656299 m!5534715))

(assert (=> b!4656299 m!5534715))

(assert (=> b!4656299 m!5536309))

(assert (=> bs!1064655 d!1477068))

(declare-fun d!1477070 () Bool)

(declare-fun res!1957915 () Bool)

(declare-fun e!2905225 () Bool)

(assert (=> d!1477070 (=> res!1957915 e!2905225)))

(assert (=> d!1477070 (= res!1957915 (and ((_ is Cons!51896) lt!1818639) (= (_1!29797 (h!58040 lt!1818639)) key!4968)))))

(assert (=> d!1477070 (= (containsKey!2725 lt!1818639 key!4968) e!2905225)))

(declare-fun b!4656308 () Bool)

(declare-fun e!2905226 () Bool)

(assert (=> b!4656308 (= e!2905225 e!2905226)))

(declare-fun res!1957916 () Bool)

(assert (=> b!4656308 (=> (not res!1957916) (not e!2905226))))

(assert (=> b!4656308 (= res!1957916 ((_ is Cons!51896) lt!1818639))))

(declare-fun b!4656309 () Bool)

(assert (=> b!4656309 (= e!2905226 (containsKey!2725 (t!359136 lt!1818639) key!4968))))

(assert (= (and d!1477070 (not res!1957915)) b!4656308))

(assert (= (and b!4656308 res!1957916) b!4656309))

(declare-fun m!5536315 () Bool)

(assert (=> b!4656309 m!5536315))

(assert (=> d!1476600 d!1477070))

(assert (=> d!1476600 d!1476546))

(declare-fun d!1477074 () Bool)

(assert (=> d!1477074 (= (length!530 lt!1818567) (size!35969 lt!1818567))))

(declare-fun bs!1065492 () Bool)

(assert (= bs!1065492 d!1477074))

(declare-fun m!5536317 () Bool)

(assert (=> bs!1065492 m!5536317))

(assert (=> b!4655593 d!1477074))

(assert (=> b!4655593 d!1476668))

(declare-fun d!1477076 () Bool)

(declare-fun res!1957919 () Bool)

(declare-fun e!2905229 () Bool)

(assert (=> d!1477076 (=> res!1957919 e!2905229)))

(assert (=> d!1477076 (= res!1957919 (not ((_ is Cons!51896) (t!359136 (t!359136 newBucket!224)))))))

(assert (=> d!1477076 (= (noDuplicateKeys!1640 (t!359136 (t!359136 newBucket!224))) e!2905229)))

(declare-fun b!4656312 () Bool)

(declare-fun e!2905230 () Bool)

(assert (=> b!4656312 (= e!2905229 e!2905230)))

(declare-fun res!1957920 () Bool)

(assert (=> b!4656312 (=> (not res!1957920) (not e!2905230))))

(assert (=> b!4656312 (= res!1957920 (not (containsKey!2725 (t!359136 (t!359136 (t!359136 newBucket!224))) (_1!29797 (h!58040 (t!359136 (t!359136 newBucket!224)))))))))

(declare-fun b!4656313 () Bool)

(assert (=> b!4656313 (= e!2905230 (noDuplicateKeys!1640 (t!359136 (t!359136 (t!359136 newBucket!224)))))))

(assert (= (and d!1477076 (not res!1957919)) b!4656312))

(assert (= (and b!4656312 res!1957920) b!4656313))

(declare-fun m!5536323 () Bool)

(assert (=> b!4656312 m!5536323))

(declare-fun m!5536325 () Bool)

(assert (=> b!4656313 m!5536325))

(assert (=> b!4655707 d!1477076))

(declare-fun b!4656316 () Bool)

(declare-fun e!2905234 () Bool)

(assert (=> b!4656316 (= e!2905234 (not (contains!15039 (keys!18384 lt!1818393) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))))

(declare-fun b!4656317 () Bool)

(declare-fun e!2905235 () Bool)

(assert (=> b!4656317 (= e!2905235 (contains!15039 (keys!18384 lt!1818393) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun b!4656318 () Bool)

(declare-fun e!2905236 () Bool)

(assert (=> b!4656318 (= e!2905236 e!2905235)))

(declare-fun res!1957923 () Bool)

(assert (=> b!4656318 (=> (not res!1957923) (not e!2905235))))

(assert (=> b!4656318 (= res!1957923 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818393) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))))

(declare-fun b!4656319 () Bool)

(declare-fun e!2905238 () Unit!118533)

(declare-fun lt!1819029 () Unit!118533)

(assert (=> b!4656319 (= e!2905238 lt!1819029)))

(declare-fun lt!1819032 () Unit!118533)

(assert (=> b!4656319 (= lt!1819032 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818393) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(assert (=> b!4656319 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818393) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun lt!1819030 () Unit!118533)

(assert (=> b!4656319 (= lt!1819030 lt!1819032)))

(assert (=> b!4656319 (= lt!1819029 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818393) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun call!325394 () Bool)

(assert (=> b!4656319 call!325394))

(declare-fun b!4656320 () Bool)

(declare-fun e!2905233 () List!52023)

(assert (=> b!4656320 (= e!2905233 (keys!18384 lt!1818393))))

(declare-fun b!4656321 () Bool)

(assert (=> b!4656321 (= e!2905233 (getKeysList!749 (toList!5209 lt!1818393)))))

(declare-fun d!1477080 () Bool)

(assert (=> d!1477080 e!2905236))

(declare-fun res!1957924 () Bool)

(assert (=> d!1477080 (=> res!1957924 e!2905236)))

(assert (=> d!1477080 (= res!1957924 e!2905234)))

(declare-fun res!1957925 () Bool)

(assert (=> d!1477080 (=> (not res!1957925) (not e!2905234))))

(declare-fun lt!1819031 () Bool)

(assert (=> d!1477080 (= res!1957925 (not lt!1819031))))

(declare-fun lt!1819036 () Bool)

(assert (=> d!1477080 (= lt!1819031 lt!1819036)))

(declare-fun lt!1819034 () Unit!118533)

(assert (=> d!1477080 (= lt!1819034 e!2905238)))

(declare-fun c!796999 () Bool)

(assert (=> d!1477080 (= c!796999 lt!1819036)))

(assert (=> d!1477080 (= lt!1819036 (containsKey!2726 (toList!5209 lt!1818393) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(assert (=> d!1477080 (= (contains!15037 lt!1818393 (_1!29797 (h!58040 (toList!5209 lt!1818237)))) lt!1819031)))

(declare-fun bm!325389 () Bool)

(assert (=> bm!325389 (= call!325394 (contains!15039 e!2905233 (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun c!797001 () Bool)

(assert (=> bm!325389 (= c!797001 c!796999)))

(declare-fun b!4656322 () Bool)

(declare-fun e!2905237 () Unit!118533)

(declare-fun Unit!118721 () Unit!118533)

(assert (=> b!4656322 (= e!2905237 Unit!118721)))

(declare-fun b!4656323 () Bool)

(assert (=> b!4656323 (= e!2905238 e!2905237)))

(declare-fun c!797000 () Bool)

(assert (=> b!4656323 (= c!797000 call!325394)))

(declare-fun b!4656324 () Bool)

(assert (=> b!4656324 false))

(declare-fun lt!1819035 () Unit!118533)

(declare-fun lt!1819033 () Unit!118533)

(assert (=> b!4656324 (= lt!1819035 lt!1819033)))

(assert (=> b!4656324 (containsKey!2726 (toList!5209 lt!1818393) (_1!29797 (h!58040 (toList!5209 lt!1818237))))))

(assert (=> b!4656324 (= lt!1819033 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818393) (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(declare-fun Unit!118722 () Unit!118533)

(assert (=> b!4656324 (= e!2905237 Unit!118722)))

(assert (= (and d!1477080 c!796999) b!4656319))

(assert (= (and d!1477080 (not c!796999)) b!4656323))

(assert (= (and b!4656323 c!797000) b!4656324))

(assert (= (and b!4656323 (not c!797000)) b!4656322))

(assert (= (or b!4656319 b!4656323) bm!325389))

(assert (= (and bm!325389 c!797001) b!4656321))

(assert (= (and bm!325389 (not c!797001)) b!4656320))

(assert (= (and d!1477080 res!1957925) b!4656316))

(assert (= (and d!1477080 (not res!1957924)) b!4656318))

(assert (= (and b!4656318 res!1957923) b!4656317))

(declare-fun m!5536339 () Bool)

(assert (=> b!4656320 m!5536339))

(declare-fun m!5536341 () Bool)

(assert (=> d!1477080 m!5536341))

(declare-fun m!5536343 () Bool)

(assert (=> b!4656321 m!5536343))

(declare-fun m!5536345 () Bool)

(assert (=> bm!325389 m!5536345))

(declare-fun m!5536347 () Bool)

(assert (=> b!4656319 m!5536347))

(declare-fun m!5536349 () Bool)

(assert (=> b!4656319 m!5536349))

(assert (=> b!4656319 m!5536349))

(declare-fun m!5536353 () Bool)

(assert (=> b!4656319 m!5536353))

(declare-fun m!5536357 () Bool)

(assert (=> b!4656319 m!5536357))

(assert (=> b!4656324 m!5536341))

(declare-fun m!5536359 () Bool)

(assert (=> b!4656324 m!5536359))

(assert (=> b!4656318 m!5536349))

(assert (=> b!4656318 m!5536349))

(assert (=> b!4656318 m!5536353))

(assert (=> b!4656317 m!5536339))

(assert (=> b!4656317 m!5536339))

(declare-fun m!5536361 () Bool)

(assert (=> b!4656317 m!5536361))

(assert (=> b!4656316 m!5536339))

(assert (=> b!4656316 m!5536339))

(assert (=> b!4656316 m!5536361))

(assert (=> bs!1064653 d!1477080))

(declare-fun d!1477090 () Bool)

(declare-fun res!1957932 () Bool)

(declare-fun e!2905245 () Bool)

(assert (=> d!1477090 (=> res!1957932 e!2905245)))

(assert (=> d!1477090 (= res!1957932 ((_ is Nil!51896) (t!359136 (toList!5209 lt!1818237))))))

(assert (=> d!1477090 (= (forall!11026 (t!359136 (toList!5209 lt!1818237)) lambda!199303) e!2905245)))

(declare-fun b!4656331 () Bool)

(declare-fun e!2905246 () Bool)

(assert (=> b!4656331 (= e!2905245 e!2905246)))

(declare-fun res!1957933 () Bool)

(assert (=> b!4656331 (=> (not res!1957933) (not e!2905246))))

(assert (=> b!4656331 (= res!1957933 (dynLambda!21590 lambda!199303 (h!58040 (t!359136 (toList!5209 lt!1818237)))))))

(declare-fun b!4656332 () Bool)

(assert (=> b!4656332 (= e!2905246 (forall!11026 (t!359136 (t!359136 (toList!5209 lt!1818237))) lambda!199303))))

(assert (= (and d!1477090 (not res!1957932)) b!4656331))

(assert (= (and b!4656331 res!1957933) b!4656332))

(declare-fun b_lambda!174135 () Bool)

(assert (=> (not b_lambda!174135) (not b!4656331)))

(declare-fun m!5536363 () Bool)

(assert (=> b!4656331 m!5536363))

(declare-fun m!5536365 () Bool)

(assert (=> b!4656332 m!5536365))

(assert (=> b!4655650 d!1477090))

(declare-fun b!4656333 () Bool)

(declare-fun e!2905247 () Option!11822)

(assert (=> b!4656333 (= e!2905247 (Some!11821 (_2!29797 (h!58040 (toList!5209 lt!1818598)))))))

(declare-fun b!4656335 () Bool)

(declare-fun e!2905248 () Option!11822)

(assert (=> b!4656335 (= e!2905248 (getValueByKey!1610 (t!359136 (toList!5209 lt!1818598)) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4656336 () Bool)

(assert (=> b!4656336 (= e!2905248 None!11821)))

(declare-fun b!4656334 () Bool)

(assert (=> b!4656334 (= e!2905247 e!2905248)))

(declare-fun c!797003 () Bool)

(assert (=> b!4656334 (= c!797003 (and ((_ is Cons!51896) (toList!5209 lt!1818598)) (not (= (_1!29797 (h!58040 (toList!5209 lt!1818598))) (_1!29797 (h!58040 oldBucket!40))))))))

(declare-fun d!1477092 () Bool)

(declare-fun c!797002 () Bool)

(assert (=> d!1477092 (= c!797002 (and ((_ is Cons!51896) (toList!5209 lt!1818598)) (= (_1!29797 (h!58040 (toList!5209 lt!1818598))) (_1!29797 (h!58040 oldBucket!40)))))))

(assert (=> d!1477092 (= (getValueByKey!1610 (toList!5209 lt!1818598) (_1!29797 (h!58040 oldBucket!40))) e!2905247)))

(assert (= (and d!1477092 c!797002) b!4656333))

(assert (= (and d!1477092 (not c!797002)) b!4656334))

(assert (= (and b!4656334 c!797003) b!4656335))

(assert (= (and b!4656334 (not c!797003)) b!4656336))

(declare-fun m!5536367 () Bool)

(assert (=> b!4656335 m!5536367))

(assert (=> b!4655647 d!1477092))

(assert (=> b!4655622 d!1476686))

(assert (=> b!4655622 d!1476688))

(declare-fun b!4656337 () Bool)

(declare-fun e!2905250 () Bool)

(assert (=> b!4656337 (= e!2905250 (not (contains!15039 (keys!18384 lt!1818393) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4656338 () Bool)

(declare-fun e!2905251 () Bool)

(assert (=> b!4656338 (= e!2905251 (contains!15039 (keys!18384 lt!1818393) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun b!4656339 () Bool)

(declare-fun e!2905252 () Bool)

(assert (=> b!4656339 (= e!2905252 e!2905251)))

(declare-fun res!1957934 () Bool)

(assert (=> b!4656339 (=> (not res!1957934) (not e!2905251))))

(assert (=> b!4656339 (= res!1957934 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818393) (_1!29797 (h!58040 oldBucket!40)))))))

(declare-fun b!4656340 () Bool)

(declare-fun e!2905254 () Unit!118533)

(declare-fun lt!1819037 () Unit!118533)

(assert (=> b!4656340 (= e!2905254 lt!1819037)))

(declare-fun lt!1819040 () Unit!118533)

(assert (=> b!4656340 (= lt!1819040 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818393) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> b!4656340 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818393) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun lt!1819038 () Unit!118533)

(assert (=> b!4656340 (= lt!1819038 lt!1819040)))

(assert (=> b!4656340 (= lt!1819037 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818393) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun call!325395 () Bool)

(assert (=> b!4656340 call!325395))

(declare-fun b!4656341 () Bool)

(declare-fun e!2905249 () List!52023)

(assert (=> b!4656341 (= e!2905249 (keys!18384 lt!1818393))))

(declare-fun b!4656342 () Bool)

(assert (=> b!4656342 (= e!2905249 (getKeysList!749 (toList!5209 lt!1818393)))))

(declare-fun d!1477094 () Bool)

(assert (=> d!1477094 e!2905252))

(declare-fun res!1957935 () Bool)

(assert (=> d!1477094 (=> res!1957935 e!2905252)))

(assert (=> d!1477094 (= res!1957935 e!2905250)))

(declare-fun res!1957936 () Bool)

(assert (=> d!1477094 (=> (not res!1957936) (not e!2905250))))

(declare-fun lt!1819039 () Bool)

(assert (=> d!1477094 (= res!1957936 (not lt!1819039))))

(declare-fun lt!1819044 () Bool)

(assert (=> d!1477094 (= lt!1819039 lt!1819044)))

(declare-fun lt!1819042 () Unit!118533)

(assert (=> d!1477094 (= lt!1819042 e!2905254)))

(declare-fun c!797004 () Bool)

(assert (=> d!1477094 (= c!797004 lt!1819044)))

(assert (=> d!1477094 (= lt!1819044 (containsKey!2726 (toList!5209 lt!1818393) (_1!29797 (h!58040 oldBucket!40))))))

(assert (=> d!1477094 (= (contains!15037 lt!1818393 (_1!29797 (h!58040 oldBucket!40))) lt!1819039)))

(declare-fun bm!325390 () Bool)

(assert (=> bm!325390 (= call!325395 (contains!15039 e!2905249 (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun c!797006 () Bool)

(assert (=> bm!325390 (= c!797006 c!797004)))

(declare-fun b!4656343 () Bool)

(declare-fun e!2905253 () Unit!118533)

(declare-fun Unit!118725 () Unit!118533)

(assert (=> b!4656343 (= e!2905253 Unit!118725)))

(declare-fun b!4656344 () Bool)

(assert (=> b!4656344 (= e!2905254 e!2905253)))

(declare-fun c!797005 () Bool)

(assert (=> b!4656344 (= c!797005 call!325395)))

(declare-fun b!4656345 () Bool)

(assert (=> b!4656345 false))

(declare-fun lt!1819043 () Unit!118533)

(declare-fun lt!1819041 () Unit!118533)

(assert (=> b!4656345 (= lt!1819043 lt!1819041)))

(assert (=> b!4656345 (containsKey!2726 (toList!5209 lt!1818393) (_1!29797 (h!58040 oldBucket!40)))))

(assert (=> b!4656345 (= lt!1819041 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818393) (_1!29797 (h!58040 oldBucket!40))))))

(declare-fun Unit!118726 () Unit!118533)

(assert (=> b!4656345 (= e!2905253 Unit!118726)))

(assert (= (and d!1477094 c!797004) b!4656340))

(assert (= (and d!1477094 (not c!797004)) b!4656344))

(assert (= (and b!4656344 c!797005) b!4656345))

(assert (= (and b!4656344 (not c!797005)) b!4656343))

(assert (= (or b!4656340 b!4656344) bm!325390))

(assert (= (and bm!325390 c!797006) b!4656342))

(assert (= (and bm!325390 (not c!797006)) b!4656341))

(assert (= (and d!1477094 res!1957936) b!4656337))

(assert (= (and d!1477094 (not res!1957935)) b!4656339))

(assert (= (and b!4656339 res!1957934) b!4656338))

(assert (=> b!4656341 m!5536339))

(declare-fun m!5536369 () Bool)

(assert (=> d!1477094 m!5536369))

(assert (=> b!4656342 m!5536343))

(declare-fun m!5536371 () Bool)

(assert (=> bm!325390 m!5536371))

(declare-fun m!5536373 () Bool)

(assert (=> b!4656340 m!5536373))

(declare-fun m!5536375 () Bool)

(assert (=> b!4656340 m!5536375))

(assert (=> b!4656340 m!5536375))

(declare-fun m!5536377 () Bool)

(assert (=> b!4656340 m!5536377))

(declare-fun m!5536379 () Bool)

(assert (=> b!4656340 m!5536379))

(assert (=> b!4656345 m!5536369))

(declare-fun m!5536381 () Bool)

(assert (=> b!4656345 m!5536381))

(assert (=> b!4656339 m!5536375))

(assert (=> b!4656339 m!5536375))

(assert (=> b!4656339 m!5536377))

(assert (=> b!4656338 m!5536339))

(assert (=> b!4656338 m!5536339))

(declare-fun m!5536383 () Bool)

(assert (=> b!4656338 m!5536383))

(assert (=> b!4656337 m!5536339))

(assert (=> b!4656337 m!5536339))

(assert (=> b!4656337 m!5536383))

(assert (=> bs!1064663 d!1477094))

(declare-fun d!1477096 () Bool)

(declare-fun res!1957937 () Bool)

(declare-fun e!2905255 () Bool)

(assert (=> d!1477096 (=> res!1957937 e!2905255)))

(assert (=> d!1477096 (= res!1957937 ((_ is Nil!51896) (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40)))))))

(assert (=> d!1477096 (= (forall!11026 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))) lambda!199368) e!2905255)))

(declare-fun b!4656346 () Bool)

(declare-fun e!2905256 () Bool)

(assert (=> b!4656346 (= e!2905255 e!2905256)))

(declare-fun res!1957938 () Bool)

(assert (=> b!4656346 (=> (not res!1957938) (not e!2905256))))

(assert (=> b!4656346 (= res!1957938 (dynLambda!21590 lambda!199368 (h!58040 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))))))))

(declare-fun b!4656347 () Bool)

(assert (=> b!4656347 (= e!2905256 (forall!11026 (t!359136 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40)))) lambda!199368))))

(assert (= (and d!1477096 (not res!1957937)) b!4656346))

(assert (= (and b!4656346 res!1957938) b!4656347))

(declare-fun b_lambda!174137 () Bool)

(assert (=> (not b_lambda!174137) (not b!4656346)))

(declare-fun m!5536385 () Bool)

(assert (=> b!4656346 m!5536385))

(declare-fun m!5536389 () Bool)

(assert (=> b!4656347 m!5536389))

(assert (=> b!4655657 d!1477096))

(declare-fun b!4656350 () Bool)

(declare-fun e!2905258 () Bool)

(assert (=> b!4656350 (= e!2905258 (not (contains!15039 (keys!18384 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818389))))))))

(declare-fun b!4656351 () Bool)

(declare-fun e!2905259 () Bool)

(assert (=> b!4656351 (= e!2905259 (contains!15039 (keys!18384 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun b!4656352 () Bool)

(declare-fun e!2905262 () Bool)

(assert (=> b!4656352 (= e!2905262 e!2905259)))

(declare-fun res!1957939 () Bool)

(assert (=> b!4656352 (=> (not res!1957939) (not e!2905259))))

(assert (=> b!4656352 (= res!1957939 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818389))))))))

(declare-fun b!4656353 () Bool)

(declare-fun e!2905264 () Unit!118533)

(declare-fun lt!1819045 () Unit!118533)

(assert (=> b!4656353 (= e!2905264 lt!1819045)))

(declare-fun lt!1819048 () Unit!118533)

(assert (=> b!4656353 (= lt!1819048 (lemmaContainsKeyImpliesGetValueByKeyDefined!1512 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(assert (=> b!4656353 (isDefined!9087 (getValueByKey!1610 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun lt!1819046 () Unit!118533)

(assert (=> b!4656353 (= lt!1819046 lt!1819048)))

(assert (=> b!4656353 (= lt!1819045 (lemmaInListThenGetKeysListContains!744 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun call!325396 () Bool)

(assert (=> b!4656353 call!325396))

(declare-fun b!4656354 () Bool)

(declare-fun e!2905257 () List!52023)

(assert (=> b!4656354 (= e!2905257 (keys!18384 lt!1818394))))

(declare-fun b!4656355 () Bool)

(assert (=> b!4656355 (= e!2905257 (getKeysList!749 (toList!5209 lt!1818394)))))

(declare-fun d!1477098 () Bool)

(assert (=> d!1477098 e!2905262))

(declare-fun res!1957940 () Bool)

(assert (=> d!1477098 (=> res!1957940 e!2905262)))

(assert (=> d!1477098 (= res!1957940 e!2905258)))

(declare-fun res!1957942 () Bool)

(assert (=> d!1477098 (=> (not res!1957942) (not e!2905258))))

(declare-fun lt!1819047 () Bool)

(assert (=> d!1477098 (= res!1957942 (not lt!1819047))))

(declare-fun lt!1819053 () Bool)

(assert (=> d!1477098 (= lt!1819047 lt!1819053)))

(declare-fun lt!1819050 () Unit!118533)

(assert (=> d!1477098 (= lt!1819050 e!2905264)))

(declare-fun c!797007 () Bool)

(assert (=> d!1477098 (= c!797007 lt!1819053)))

(assert (=> d!1477098 (= lt!1819053 (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(assert (=> d!1477098 (= (contains!15037 lt!1818394 (_1!29797 (h!58040 (toList!5209 lt!1818389)))) lt!1819047)))

(declare-fun bm!325391 () Bool)

(assert (=> bm!325391 (= call!325396 (contains!15039 e!2905257 (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun c!797009 () Bool)

(assert (=> bm!325391 (= c!797009 c!797007)))

(declare-fun b!4656356 () Bool)

(declare-fun e!2905263 () Unit!118533)

(declare-fun Unit!118729 () Unit!118533)

(assert (=> b!4656356 (= e!2905263 Unit!118729)))

(declare-fun b!4656357 () Bool)

(assert (=> b!4656357 (= e!2905264 e!2905263)))

(declare-fun c!797008 () Bool)

(assert (=> b!4656357 (= c!797008 call!325396)))

(declare-fun b!4656358 () Bool)

(assert (=> b!4656358 false))

(declare-fun lt!1819052 () Unit!118533)

(declare-fun lt!1819049 () Unit!118533)

(assert (=> b!4656358 (= lt!1819052 lt!1819049)))

(assert (=> b!4656358 (containsKey!2726 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818389))))))

(assert (=> b!4656358 (= lt!1819049 (lemmaInGetKeysListThenContainsKey!748 (toList!5209 lt!1818394) (_1!29797 (h!58040 (toList!5209 lt!1818389)))))))

(declare-fun Unit!118730 () Unit!118533)

(assert (=> b!4656358 (= e!2905263 Unit!118730)))

(assert (= (and d!1477098 c!797007) b!4656353))

(assert (= (and d!1477098 (not c!797007)) b!4656357))

(assert (= (and b!4656357 c!797008) b!4656358))

(assert (= (and b!4656357 (not c!797008)) b!4656356))

(assert (= (or b!4656353 b!4656357) bm!325391))

(assert (= (and bm!325391 c!797009) b!4656355))

(assert (= (and bm!325391 (not c!797009)) b!4656354))

(assert (= (and d!1477098 res!1957942) b!4656350))

(assert (= (and d!1477098 (not res!1957940)) b!4656352))

(assert (= (and b!4656352 res!1957939) b!4656351))

(assert (=> b!4656354 m!5534715))

(declare-fun m!5536397 () Bool)

(assert (=> d!1477098 m!5536397))

(assert (=> b!4656355 m!5534719))

(declare-fun m!5536399 () Bool)

(assert (=> bm!325391 m!5536399))

(declare-fun m!5536401 () Bool)

(assert (=> b!4656353 m!5536401))

(declare-fun m!5536403 () Bool)

(assert (=> b!4656353 m!5536403))

(assert (=> b!4656353 m!5536403))

(declare-fun m!5536405 () Bool)

(assert (=> b!4656353 m!5536405))

(declare-fun m!5536407 () Bool)

(assert (=> b!4656353 m!5536407))

(assert (=> b!4656358 m!5536397))

(declare-fun m!5536409 () Bool)

(assert (=> b!4656358 m!5536409))

(assert (=> b!4656352 m!5536403))

(assert (=> b!4656352 m!5536403))

(assert (=> b!4656352 m!5536405))

(assert (=> b!4656351 m!5534715))

(assert (=> b!4656351 m!5534715))

(declare-fun m!5536411 () Bool)

(assert (=> b!4656351 m!5536411))

(assert (=> b!4656350 m!5534715))

(assert (=> b!4656350 m!5534715))

(assert (=> b!4656350 m!5536411))

(assert (=> bs!1064661 d!1477098))

(declare-fun d!1477104 () Bool)

(declare-fun res!1957946 () Bool)

(declare-fun e!2905267 () Bool)

(assert (=> d!1477104 (=> res!1957946 e!2905267)))

(assert (=> d!1477104 (= res!1957946 (or ((_ is Nil!51896) (toList!5209 lt!1818393)) ((_ is Nil!51896) (t!359136 (toList!5209 lt!1818393)))))))

(assert (=> d!1477104 (= (noDuplicatedKeys!351 (toList!5209 lt!1818393)) e!2905267)))

(declare-fun b!4656361 () Bool)

(declare-fun e!2905268 () Bool)

(assert (=> b!4656361 (= e!2905267 e!2905268)))

(declare-fun res!1957947 () Bool)

(assert (=> b!4656361 (=> (not res!1957947) (not e!2905268))))

(assert (=> b!4656361 (= res!1957947 (not (containsKey!2726 (t!359136 (toList!5209 lt!1818393)) (_1!29797 (h!58040 (toList!5209 lt!1818393))))))))

(declare-fun b!4656362 () Bool)

(assert (=> b!4656362 (= e!2905268 (noDuplicatedKeys!351 (t!359136 (toList!5209 lt!1818393))))))

(assert (= (and d!1477104 (not res!1957946)) b!4656361))

(assert (= (and b!4656361 res!1957947) b!4656362))

(declare-fun m!5536413 () Bool)

(assert (=> b!4656361 m!5536413))

(declare-fun m!5536415 () Bool)

(assert (=> b!4656362 m!5536415))

(assert (=> d!1476506 d!1477104))

(declare-fun d!1477106 () Bool)

(declare-fun res!1957948 () Bool)

(declare-fun e!2905269 () Bool)

(assert (=> d!1477106 (=> res!1957948 e!2905269)))

(assert (=> d!1477106 (= res!1957948 (not ((_ is Cons!51896) (t!359136 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> d!1477106 (= (noDuplicateKeys!1640 (t!359136 (_2!29798 (h!58041 lt!1818235)))) e!2905269)))

(declare-fun b!4656363 () Bool)

(declare-fun e!2905270 () Bool)

(assert (=> b!4656363 (= e!2905269 e!2905270)))

(declare-fun res!1957949 () Bool)

(assert (=> b!4656363 (=> (not res!1957949) (not e!2905270))))

(assert (=> b!4656363 (= res!1957949 (not (containsKey!2725 (t!359136 (t!359136 (_2!29798 (h!58041 lt!1818235)))) (_1!29797 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235))))))))))

(declare-fun b!4656364 () Bool)

(assert (=> b!4656364 (= e!2905270 (noDuplicateKeys!1640 (t!359136 (t!359136 (_2!29798 (h!58041 lt!1818235))))))))

(assert (= (and d!1477106 (not res!1957948)) b!4656363))

(assert (= (and b!4656363 res!1957949) b!4656364))

(declare-fun m!5536421 () Bool)

(assert (=> b!4656363 m!5536421))

(declare-fun m!5536423 () Bool)

(assert (=> b!4656364 m!5536423))

(assert (=> b!4655681 d!1477106))

(declare-fun d!1477110 () Bool)

(declare-fun res!1957953 () Bool)

(declare-fun e!2905277 () Bool)

(assert (=> d!1477110 (=> res!1957953 e!2905277)))

(assert (=> d!1477110 (= res!1957953 ((_ is Nil!51896) (t!359136 oldBucket!40)))))

(assert (=> d!1477110 (= (forall!11026 (t!359136 oldBucket!40) lambda!199368) e!2905277)))

(declare-fun b!4656374 () Bool)

(declare-fun e!2905278 () Bool)

(assert (=> b!4656374 (= e!2905277 e!2905278)))

(declare-fun res!1957954 () Bool)

(assert (=> b!4656374 (=> (not res!1957954) (not e!2905278))))

(assert (=> b!4656374 (= res!1957954 (dynLambda!21590 lambda!199368 (h!58040 (t!359136 oldBucket!40))))))

(declare-fun b!4656375 () Bool)

(assert (=> b!4656375 (= e!2905278 (forall!11026 (t!359136 (t!359136 oldBucket!40)) lambda!199368))))

(assert (= (and d!1477110 (not res!1957953)) b!4656374))

(assert (= (and b!4656374 res!1957954) b!4656375))

(declare-fun b_lambda!174141 () Bool)

(assert (=> (not b_lambda!174141) (not b!4656374)))

(declare-fun m!5536425 () Bool)

(assert (=> b!4656374 m!5536425))

(declare-fun m!5536427 () Bool)

(assert (=> b!4656375 m!5536427))

(assert (=> d!1476564 d!1477110))

(assert (=> d!1476564 d!1476546))

(declare-fun d!1477112 () Bool)

(declare-fun lt!1819062 () Bool)

(assert (=> d!1477112 (= lt!1819062 (select (content!8996 (toList!5209 lt!1818389)) (h!58040 oldBucket!40)))))

(declare-fun e!2905280 () Bool)

(assert (=> d!1477112 (= lt!1819062 e!2905280)))

(declare-fun res!1957956 () Bool)

(assert (=> d!1477112 (=> (not res!1957956) (not e!2905280))))

(assert (=> d!1477112 (= res!1957956 ((_ is Cons!51896) (toList!5209 lt!1818389)))))

(assert (=> d!1477112 (= (contains!15041 (toList!5209 lt!1818389) (h!58040 oldBucket!40)) lt!1819062)))

(declare-fun b!4656376 () Bool)

(declare-fun e!2905279 () Bool)

(assert (=> b!4656376 (= e!2905280 e!2905279)))

(declare-fun res!1957955 () Bool)

(assert (=> b!4656376 (=> res!1957955 e!2905279)))

(assert (=> b!4656376 (= res!1957955 (= (h!58040 (toList!5209 lt!1818389)) (h!58040 oldBucket!40)))))

(declare-fun b!4656377 () Bool)

(assert (=> b!4656377 (= e!2905279 (contains!15041 (t!359136 (toList!5209 lt!1818389)) (h!58040 oldBucket!40)))))

(assert (= (and d!1477112 res!1957956) b!4656376))

(assert (= (and b!4656376 (not res!1957955)) b!4656377))

(declare-fun m!5536429 () Bool)

(assert (=> d!1477112 m!5536429))

(declare-fun m!5536431 () Bool)

(assert (=> d!1477112 m!5536431))

(declare-fun m!5536433 () Bool)

(assert (=> b!4656377 m!5536433))

(assert (=> b!4655633 d!1477112))

(declare-fun tp!1343324 () Bool)

(declare-fun b!4656378 () Bool)

(declare-fun e!2905281 () Bool)

(assert (=> b!4656378 (= e!2905281 (and tp_is_empty!29853 tp_is_empty!29855 tp!1343324))))

(assert (=> b!4655720 (= tp!1343323 e!2905281)))

(assert (= (and b!4655720 ((_ is Cons!51896) (t!359136 (t!359136 (t!359136 oldBucket!40))))) b!4656378))

(declare-fun e!2905282 () Bool)

(declare-fun tp!1343325 () Bool)

(declare-fun b!4656379 () Bool)

(assert (=> b!4656379 (= e!2905282 (and tp_is_empty!29853 tp_is_empty!29855 tp!1343325))))

(assert (=> b!4655719 (= tp!1343322 e!2905282)))

(assert (= (and b!4655719 ((_ is Cons!51896) (t!359136 (t!359136 (t!359136 newBucket!224))))) b!4656379))

(declare-fun b_lambda!174145 () Bool)

(assert (= b_lambda!174031 (or b!4655655 b_lambda!174145)))

(declare-fun bs!1065520 () Bool)

(declare-fun d!1477126 () Bool)

(assert (= bs!1065520 (and d!1477126 b!4655655)))

(assert (=> bs!1065520 (= (dynLambda!21590 lambda!199367 (h!58040 (t!359136 oldBucket!40))) (contains!15037 lt!1818625 (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(assert (=> bs!1065520 m!5534801))

(assert (=> d!1476708 d!1477126))

(declare-fun b_lambda!174147 () Bool)

(assert (= b_lambda!174083 (or b!4655713 b_lambda!174147)))

(declare-fun bs!1065521 () Bool)

(declare-fun d!1477128 () Bool)

(assert (= bs!1065521 (and d!1477128 b!4655713)))

(assert (=> bs!1065521 (= (dynLambda!21590 lambda!199380 (h!58040 (_2!29798 (h!58041 lt!1818235)))) (contains!15037 lt!1818660 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(assert (=> bs!1065521 m!5534919))

(assert (=> b!4656082 d!1477128))

(declare-fun b_lambda!174149 () Bool)

(assert (= b_lambda!174035 (or b!4655655 b_lambda!174149)))

(assert (=> b!4655812 d!1477126))

(declare-fun b_lambda!174151 () Bool)

(assert (= b_lambda!174087 (or d!1476612 b_lambda!174151)))

(declare-fun bs!1065522 () Bool)

(declare-fun d!1477130 () Bool)

(assert (= bs!1065522 (and d!1477130 d!1476612)))

(assert (=> bs!1065522 (= (dynLambda!21588 lambda!199382 (h!58041 (t!359137 lt!1818235))) (noDuplicateKeys!1640 (_2!29798 (h!58041 (t!359137 lt!1818235)))))))

(assert (=> bs!1065522 m!5534963))

(assert (=> b!4656118 d!1477130))

(declare-fun b_lambda!174153 () Bool)

(assert (= b_lambda!174097 (or b!4655328 b_lambda!174153)))

(assert (=> d!1476956 d!1476634))

(declare-fun b_lambda!174155 () Bool)

(assert (= b_lambda!174081 (or b!4655713 b_lambda!174155)))

(declare-fun bs!1065523 () Bool)

(declare-fun d!1477132 () Bool)

(assert (= bs!1065523 (and d!1477132 b!4655713)))

(assert (=> bs!1065523 (= (dynLambda!21590 lambda!199380 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235))))) (contains!15037 lt!1818660 (_1!29797 (h!58040 (t!359136 (_2!29798 (h!58041 lt!1818235)))))))))

(declare-fun m!5536465 () Bool)

(assert (=> bs!1065523 m!5536465))

(assert (=> b!4656076 d!1477132))

(declare-fun b_lambda!174157 () Bool)

(assert (= b_lambda!174141 (or d!1476564 b_lambda!174157)))

(declare-fun bs!1065524 () Bool)

(declare-fun d!1477134 () Bool)

(assert (= bs!1065524 (and d!1477134 d!1476564)))

(assert (=> bs!1065524 (= (dynLambda!21590 lambda!199368 (h!58040 (t!359136 oldBucket!40))) (contains!15037 lt!1818624 (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun m!5536467 () Bool)

(assert (=> bs!1065524 m!5536467))

(assert (=> b!4656374 d!1477134))

(declare-fun b_lambda!174159 () Bool)

(assert (= b_lambda!174051 (or b!4655595 b_lambda!174159)))

(declare-fun bs!1065525 () Bool)

(declare-fun d!1477136 () Bool)

(assert (= bs!1065525 (and d!1477136 b!4655595)))

(assert (=> bs!1065525 (= (dynLambda!21592 lambda!199358 (h!58045 lt!1818567)) (containsKey!2726 (toList!5209 lt!1818236) (h!58045 lt!1818567)))))

(declare-fun m!5536469 () Bool)

(assert (=> bs!1065525 m!5536469))

(assert (=> b!4655902 d!1477136))

(declare-fun b_lambda!174161 () Bool)

(assert (= b_lambda!174007 (or b!4655209 b_lambda!174161)))

(declare-fun bs!1065526 () Bool)

(declare-fun d!1477138 () Bool)

(assert (= bs!1065526 (and d!1477138 b!4655209)))

(assert (=> bs!1065526 (= (dynLambda!21588 lambda!199226 (h!58041 (t!359137 (t!359137 lt!1818235)))) (noDuplicateKeys!1640 (_2!29798 (h!58041 (t!359137 (t!359137 lt!1818235))))))))

(declare-fun m!5536471 () Bool)

(assert (=> bs!1065526 m!5536471))

(assert (=> b!4655721 d!1477138))

(declare-fun b_lambda!174163 () Bool)

(assert (= b_lambda!174013 (or d!1476352 b_lambda!174163)))

(declare-fun bs!1065527 () Bool)

(declare-fun d!1477140 () Bool)

(assert (= bs!1065527 (and d!1477140 d!1476352)))

(assert (=> bs!1065527 (= (dynLambda!21590 lambda!199229 (h!58040 (t!359136 newBucket!224))) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 (t!359136 newBucket!224)))) hash!414))))

(declare-fun m!5536473 () Bool)

(assert (=> bs!1065527 m!5536473))

(assert (=> b!4655730 d!1477140))

(declare-fun b_lambda!174165 () Bool)

(assert (= b_lambda!174071 (or b!4655713 b_lambda!174165)))

(declare-fun bs!1065529 () Bool)

(declare-fun d!1477144 () Bool)

(assert (= bs!1065529 (and d!1477144 b!4655713)))

(assert (=> bs!1065529 (= (dynLambda!21590 lambda!199380 (h!58040 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))))) (contains!15037 lt!1818660 (_1!29797 (h!58040 (toList!5209 (extractMap!1696 (t!359137 lt!1818235)))))))))

(declare-fun m!5536475 () Bool)

(assert (=> bs!1065529 m!5536475))

(assert (=> b!4656031 d!1477144))

(declare-fun b_lambda!174167 () Bool)

(assert (= b_lambda!174021 (or d!1476356 b_lambda!174167)))

(declare-fun bs!1065530 () Bool)

(declare-fun d!1477146 () Bool)

(assert (= bs!1065530 (and d!1477146 d!1476356)))

(assert (=> bs!1065530 (= (dynLambda!21590 lambda!199304 (h!58040 (t!359136 oldBucket!40))) (contains!15037 lt!1818393 (_1!29797 (h!58040 (t!359136 oldBucket!40)))))))

(declare-fun m!5536477 () Bool)

(assert (=> bs!1065530 m!5536477))

(assert (=> b!4655786 d!1477146))

(declare-fun b_lambda!174169 () Bool)

(assert (= b_lambda!174105 (or d!1476356 b_lambda!174169)))

(declare-fun bs!1065531 () Bool)

(declare-fun d!1477148 () Bool)

(assert (= bs!1065531 (and d!1477148 d!1476356)))

(assert (=> bs!1065531 (= (dynLambda!21590 lambda!199304 (h!58040 (t!359136 (toList!5209 lt!1818237)))) (contains!15037 lt!1818393 (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818237))))))))

(declare-fun m!5536479 () Bool)

(assert (=> bs!1065531 m!5536479))

(assert (=> b!4656212 d!1477148))

(declare-fun b_lambda!174171 () Bool)

(assert (= b_lambda!174043 (or d!1476610 b_lambda!174171)))

(declare-fun bs!1065532 () Bool)

(declare-fun d!1477150 () Bool)

(assert (= bs!1065532 (and d!1477150 d!1476610)))

(assert (=> bs!1065532 (= (dynLambda!21590 lambda!199381 (h!58040 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))))) (contains!15037 lt!1818659 (_1!29797 (h!58040 (toList!5209 (extractMap!1696 (t!359137 lt!1818235)))))))))

(declare-fun m!5536481 () Bool)

(assert (=> bs!1065532 m!5536481))

(assert (=> b!4655854 d!1477150))

(declare-fun b_lambda!174173 () Bool)

(assert (= b_lambda!173973 (or (and d!1476594 (= lambda!199377 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476982 (= lambda!199443 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476716 (= lambda!199392 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655808 (= lambda!199389 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655714 (= lambda!199378 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476386 (= lambda!199309 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476854 (= lambda!199421 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476696 (= lambda!199387 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476712 (= lambda!199391 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655808 (= lambda!199390 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656059 (= lambda!199416 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476356 (= lambda!199304 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655656 (= lambda!199365 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476560 (= lambda!199364 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655329 (= lambda!199301 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655328 (= lambda!199302 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656166 (= lambda!199430 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655655 (= lambda!199367 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656166 (= lambda!199433 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476352 (= lambda!199229 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656058 (= lambda!199420 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655328 (= lambda!199303 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476938 (= lambda!199436 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655655 (= lambda!199366 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476962 (= lambda!199441 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655809 (= lambda!199388 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476564 (= lambda!199368 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476842 (= lambda!199415 (ite c!796811 lambda!199301 lambda!199303))) (and d!1477000 (= lambda!199449 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655713 (= lambda!199379 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655713 (= lambda!199380 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656058 (= lambda!199419 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476610 (= lambda!199381 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656167 (= lambda!199428 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476894 (= lambda!199422 (ite c!796811 lambda!199301 lambda!199303))) b_lambda!174173)))

(declare-fun bs!1065533 () Bool)

(declare-fun d!1477154 () Bool)

(assert (= bs!1065533 (and d!1477154 b!4655655)))

(assert (=> bs!1065533 (= (dynLambda!21590 lambda!199366 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065533 m!5534243))

(declare-fun m!5536487 () Bool)

(assert (=> bs!1065533 m!5536487))

(assert (=> (and b!4655655 (= lambda!199366 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477154))

(declare-fun bs!1065534 () Bool)

(declare-fun d!1477156 () Bool)

(assert (= bs!1065534 (and d!1477156 b!4655713)))

(assert (=> bs!1065534 (= (dynLambda!21590 lambda!199380 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818660 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536489 () Bool)

(assert (=> bs!1065534 m!5536489))

(assert (=> (and b!4655713 (= lambda!199380 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477156))

(declare-fun bs!1065535 () Bool)

(declare-fun d!1477158 () Bool)

(assert (= bs!1065535 (and d!1477158 b!4655329)))

(assert (=> bs!1065535 (= (dynLambda!21590 lambda!199301 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536491 () Bool)

(assert (=> bs!1065535 m!5536491))

(assert (=> (and b!4655329 (= lambda!199301 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477158))

(declare-fun bs!1065536 () Bool)

(declare-fun d!1477160 () Bool)

(assert (= bs!1065536 (and d!1477160 d!1477000)))

(assert (=> bs!1065536 (= (dynLambda!21590 lambda!199449 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536493 () Bool)

(assert (=> bs!1065536 m!5536493))

(assert (=> (and d!1477000 (= lambda!199449 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477160))

(declare-fun bs!1065537 () Bool)

(declare-fun d!1477162 () Bool)

(assert (= bs!1065537 (and d!1477162 b!4655656)))

(assert (=> bs!1065537 (= (dynLambda!21590 lambda!199365 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065537 m!5534243))

(assert (=> bs!1065537 m!5536487))

(assert (=> (and b!4655656 (= lambda!199365 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477162))

(declare-fun bs!1065538 () Bool)

(declare-fun d!1477164 () Bool)

(assert (= bs!1065538 (and d!1477164 b!4656058)))

(assert (=> bs!1065538 (= (dynLambda!21590 lambda!199420 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818890 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536497 () Bool)

(assert (=> bs!1065538 m!5536497))

(assert (=> (and b!4656058 (= lambda!199420 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477164))

(declare-fun bs!1065539 () Bool)

(declare-fun d!1477166 () Bool)

(assert (= bs!1065539 (and d!1477166 b!4655809)))

(assert (=> bs!1065539 (= (dynLambda!21590 lambda!199388 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065539 m!5534791))

(declare-fun m!5536501 () Bool)

(assert (=> bs!1065539 m!5536501))

(assert (=> (and b!4655809 (= lambda!199388 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477166))

(declare-fun bs!1065540 () Bool)

(declare-fun d!1477170 () Bool)

(assert (= bs!1065540 (and d!1477170 b!4656166)))

(assert (=> bs!1065540 (= (dynLambda!21590 lambda!199430 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065540 m!5534945))

(declare-fun m!5536503 () Bool)

(assert (=> bs!1065540 m!5536503))

(assert (=> (and b!4656166 (= lambda!199430 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477170))

(declare-fun bs!1065541 () Bool)

(declare-fun d!1477172 () Bool)

(assert (= bs!1065541 (and d!1477172 d!1476352)))

(assert (=> bs!1065541 (= (dynLambda!21590 lambda!199229 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))) hash!414))))

(declare-fun m!5536507 () Bool)

(assert (=> bs!1065541 m!5536507))

(assert (=> (and d!1476352 (= lambda!199229 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477172))

(declare-fun bs!1065542 () Bool)

(declare-fun d!1477176 () Bool)

(assert (= bs!1065542 (and d!1477176 b!4656167)))

(assert (=> bs!1065542 (= (dynLambda!21590 lambda!199428 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065542 m!5534945))

(assert (=> bs!1065542 m!5536503))

(assert (=> (and b!4656167 (= lambda!199428 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477176))

(declare-fun bs!1065543 () Bool)

(declare-fun d!1477178 () Bool)

(assert (= bs!1065543 (and d!1477178 b!4655808)))

(assert (=> bs!1065543 (= (dynLambda!21590 lambda!199390 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818710 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536509 () Bool)

(assert (=> bs!1065543 m!5536509))

(assert (=> (and b!4655808 (= lambda!199390 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477178))

(declare-fun bs!1065544 () Bool)

(declare-fun d!1477180 () Bool)

(assert (= bs!1065544 (and d!1477180 b!4656059)))

(assert (=> bs!1065544 (= (dynLambda!21590 lambda!199416 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065544 m!5534909))

(declare-fun m!5536515 () Bool)

(assert (=> bs!1065544 m!5536515))

(assert (=> (and b!4656059 (= lambda!199416 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477180))

(declare-fun bs!1065545 () Bool)

(declare-fun d!1477184 () Bool)

(assert (= bs!1065545 (and d!1477184 b!4656166)))

(assert (=> bs!1065545 (= (dynLambda!21590 lambda!199433 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818954 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536517 () Bool)

(assert (=> bs!1065545 m!5536517))

(assert (=> (and b!4656166 (= lambda!199433 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477184))

(declare-fun bs!1065546 () Bool)

(declare-fun d!1477186 () Bool)

(assert (= bs!1065546 (and d!1477186 d!1476356)))

(assert (=> bs!1065546 (= (dynLambda!21590 lambda!199304 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818393 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536519 () Bool)

(assert (=> bs!1065546 m!5536519))

(assert (=> (and d!1476356 (= lambda!199304 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477186))

(declare-fun bs!1065547 () Bool)

(declare-fun d!1477188 () Bool)

(assert (= bs!1065547 (and d!1477188 d!1476564)))

(assert (=> bs!1065547 (= (dynLambda!21590 lambda!199368 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818624 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536521 () Bool)

(assert (=> bs!1065547 m!5536521))

(assert (=> (and d!1476564 (= lambda!199368 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477188))

(declare-fun bs!1065548 () Bool)

(declare-fun d!1477192 () Bool)

(assert (= bs!1065548 (and d!1477192 b!4656058)))

(assert (=> bs!1065548 (= (dynLambda!21590 lambda!199419 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065548 m!5534909))

(assert (=> bs!1065548 m!5536515))

(assert (=> (and b!4656058 (= lambda!199419 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477192))

(declare-fun bs!1065549 () Bool)

(declare-fun d!1477194 () Bool)

(assert (= bs!1065549 (and d!1477194 d!1476894)))

(assert (=> bs!1065549 (= (dynLambda!21590 lambda!199422 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065549 m!5534243))

(assert (=> bs!1065549 m!5536487))

(assert (=> (and d!1476894 (= lambda!199422 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477194))

(declare-fun bs!1065550 () Bool)

(declare-fun d!1477196 () Bool)

(assert (= bs!1065550 (and d!1477196 d!1476716)))

(assert (=> bs!1065550 (= (dynLambda!21590 lambda!199392 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818625 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536523 () Bool)

(assert (=> bs!1065550 m!5536523))

(assert (=> (and d!1476716 (= lambda!199392 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477196))

(declare-fun bs!1065551 () Bool)

(declare-fun d!1477198 () Bool)

(assert (= bs!1065551 (and d!1477198 b!4655713)))

(assert (=> bs!1065551 (= (dynLambda!21590 lambda!199379 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (extractMap!1696 (t!359137 lt!1818235)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065551 m!5534307))

(declare-fun m!5536525 () Bool)

(assert (=> bs!1065551 m!5536525))

(assert (=> (and b!4655713 (= lambda!199379 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477198))

(declare-fun bs!1065552 () Bool)

(declare-fun d!1477200 () Bool)

(assert (= bs!1065552 (and d!1477200 b!4655655)))

(assert (=> bs!1065552 (= (dynLambda!21590 lambda!199367 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818625 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065552 m!5536523))

(assert (=> (and b!4655655 (= lambda!199367 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477200))

(declare-fun bs!1065553 () Bool)

(declare-fun d!1477202 () Bool)

(assert (= bs!1065553 (and d!1477202 d!1476962)))

(assert (=> bs!1065553 (= (dynLambda!21590 lambda!199441 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))) (_1!29798 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235))))))))

(assert (=> bs!1065553 m!5536507))

(assert (=> (and d!1476962 (= lambda!199441 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477202))

(declare-fun bs!1065554 () Bool)

(declare-fun d!1477204 () Bool)

(assert (= bs!1065554 (and d!1477204 b!4655808)))

(assert (=> bs!1065554 (= (dynLambda!21590 lambda!199389 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065554 m!5534791))

(assert (=> bs!1065554 m!5536501))

(assert (=> (and b!4655808 (= lambda!199389 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477204))

(declare-fun bs!1065555 () Bool)

(declare-fun d!1477206 () Bool)

(assert (= bs!1065555 (and d!1477206 d!1476386)))

(assert (=> bs!1065555 (= (dynLambda!21590 lambda!199309 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))) hash!414))))

(assert (=> bs!1065555 m!5536507))

(assert (=> (and d!1476386 (= lambda!199309 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477206))

(declare-fun bs!1065556 () Bool)

(declare-fun d!1477208 () Bool)

(assert (= bs!1065556 (and d!1477208 d!1476982)))

(assert (=> bs!1065556 (= (dynLambda!21590 lambda!199443 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (extractMap!1696 (t!359137 lt!1818235)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065556 m!5534307))

(assert (=> bs!1065556 m!5536525))

(assert (=> (and d!1476982 (= lambda!199443 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477208))

(declare-fun bs!1065557 () Bool)

(declare-fun d!1477212 () Bool)

(assert (= bs!1065557 (and d!1477212 d!1476696)))

(assert (=> bs!1065557 (= (dynLambda!21590 lambda!199387 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065557 m!5536491))

(assert (=> (and d!1476696 (= lambda!199387 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477212))

(declare-fun bs!1065558 () Bool)

(declare-fun d!1477214 () Bool)

(assert (= bs!1065558 (and d!1477214 d!1476854)))

(assert (=> bs!1065558 (= (dynLambda!21590 lambda!199421 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818889 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536531 () Bool)

(assert (=> bs!1065558 m!5536531))

(assert (=> (and d!1476854 (= lambda!199421 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477214))

(declare-fun bs!1065559 () Bool)

(declare-fun d!1477216 () Bool)

(assert (= bs!1065559 (and d!1477216 d!1476560)))

(assert (=> bs!1065559 (= (dynLambda!21590 lambda!199364 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065559 m!5536493))

(assert (=> (and d!1476560 (= lambda!199364 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477216))

(declare-fun bs!1065560 () Bool)

(declare-fun d!1477218 () Bool)

(assert (= bs!1065560 (and d!1477218 d!1476610)))

(assert (=> bs!1065560 (= (dynLambda!21590 lambda!199381 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818659 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536537 () Bool)

(assert (=> bs!1065560 m!5536537))

(assert (=> (and d!1476610 (= lambda!199381 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477218))

(declare-fun bs!1065561 () Bool)

(declare-fun d!1477222 () Bool)

(assert (= bs!1065561 (and d!1477222 d!1476842)))

(assert (=> bs!1065561 (= (dynLambda!21590 lambda!199415 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818660 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065561 m!5536489))

(assert (=> (and d!1476842 (= lambda!199415 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477222))

(declare-fun bs!1065562 () Bool)

(declare-fun d!1477224 () Bool)

(assert (= bs!1065562 (and d!1477224 b!4655328)))

(assert (=> bs!1065562 (= (dynLambda!21590 lambda!199303 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065562 m!5536493))

(assert (=> (and b!4655328 (= lambda!199303 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477224))

(declare-fun bs!1065563 () Bool)

(declare-fun d!1477226 () Bool)

(assert (= bs!1065563 (and d!1477226 d!1476712)))

(assert (=> bs!1065563 (= (dynLambda!21590 lambda!199391 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818709 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536539 () Bool)

(assert (=> bs!1065563 m!5536539))

(assert (=> (and d!1476712 (= lambda!199391 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477226))

(declare-fun bs!1065564 () Bool)

(declare-fun d!1477228 () Bool)

(assert (= bs!1065564 (and d!1477228 b!4655714)))

(assert (=> bs!1065564 (= (dynLambda!21590 lambda!199378 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 (extractMap!1696 (t!359137 lt!1818235)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065564 m!5534307))

(assert (=> bs!1065564 m!5536525))

(assert (=> (and b!4655714 (= lambda!199378 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477228))

(declare-fun bs!1065565 () Bool)

(declare-fun d!1477230 () Bool)

(assert (= bs!1065565 (and d!1477230 d!1476594)))

(assert (=> bs!1065565 (= (dynLambda!21590 lambda!199377 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065565 m!5536491))

(assert (=> (and d!1476594 (= lambda!199377 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477230))

(declare-fun bs!1065566 () Bool)

(declare-fun d!1477232 () Bool)

(assert (= bs!1065566 (and d!1477232 d!1476938)))

(assert (=> bs!1065566 (= (dynLambda!21590 lambda!199436 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818953 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(declare-fun m!5536541 () Bool)

(assert (=> bs!1065566 m!5536541))

(assert (=> (and d!1476938 (= lambda!199436 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477232))

(declare-fun bs!1065567 () Bool)

(declare-fun d!1477234 () Bool)

(assert (= bs!1065567 (and d!1477234 b!4655328)))

(assert (=> bs!1065567 (= (dynLambda!21590 lambda!199302 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) oldBucket!40)))))))

(assert (=> bs!1065567 m!5536491))

(assert (=> (and b!4655328 (= lambda!199302 (ite c!796811 lambda!199301 lambda!199303)) b!4655698) d!1477234))

(declare-fun b_lambda!174175 () Bool)

(assert (= b_lambda!174073 (or b!4655713 b_lambda!174175)))

(declare-fun bs!1065568 () Bool)

(declare-fun d!1477236 () Bool)

(assert (= bs!1065568 (and d!1477236 b!4655713)))

(assert (=> bs!1065568 (= (dynLambda!21590 lambda!199379 (h!58040 (toList!5209 (extractMap!1696 (t!359137 lt!1818235))))) (contains!15037 (extractMap!1696 (t!359137 lt!1818235)) (_1!29797 (h!58040 (toList!5209 (extractMap!1696 (t!359137 lt!1818235)))))))))

(assert (=> bs!1065568 m!5534307))

(declare-fun m!5536543 () Bool)

(assert (=> bs!1065568 m!5536543))

(assert (=> b!4656033 d!1477236))

(declare-fun b_lambda!174177 () Bool)

(assert (= b_lambda!174135 (or b!4655328 b_lambda!174177)))

(declare-fun bs!1065569 () Bool)

(declare-fun d!1477238 () Bool)

(assert (= bs!1065569 (and d!1477238 b!4655328)))

(assert (=> bs!1065569 (= (dynLambda!21590 lambda!199303 (h!58040 (t!359136 (toList!5209 lt!1818237)))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818237))))))))

(declare-fun m!5536545 () Bool)

(assert (=> bs!1065569 m!5536545))

(assert (=> b!4656331 d!1477238))

(declare-fun b_lambda!174179 () Bool)

(assert (= b_lambda!174039 (or b!4655655 b_lambda!174179)))

(declare-fun bs!1065570 () Bool)

(declare-fun d!1477240 () Bool)

(assert (= bs!1065570 (and d!1477240 b!4655655)))

(assert (=> bs!1065570 (= (dynLambda!21590 lambda!199367 (h!58040 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))))) (contains!15037 lt!1818625 (_1!29797 (h!58040 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40)))))))))

(declare-fun m!5536547 () Bool)

(assert (=> bs!1065570 m!5536547))

(assert (=> b!4655836 d!1477240))

(declare-fun b_lambda!174181 () Bool)

(assert (= b_lambda!174041 (or b!4655655 b_lambda!174181)))

(declare-fun bs!1065571 () Bool)

(declare-fun d!1477242 () Bool)

(assert (= bs!1065571 (and d!1477242 b!4655655)))

(assert (=> bs!1065571 (= (dynLambda!21590 lambda!199367 (h!58040 (t!359136 (t!359136 oldBucket!40)))) (contains!15037 lt!1818625 (_1!29797 (h!58040 (t!359136 (t!359136 oldBucket!40))))))))

(declare-fun m!5536549 () Bool)

(assert (=> bs!1065571 m!5536549))

(assert (=> b!4655838 d!1477242))

(declare-fun b_lambda!174183 () Bool)

(assert (= b_lambda!174025 (or d!1476610 b_lambda!174183)))

(declare-fun bs!1065572 () Bool)

(declare-fun d!1477244 () Bool)

(assert (= bs!1065572 (and d!1477244 d!1476610)))

(assert (=> bs!1065572 (= (dynLambda!21590 lambda!199381 (h!58040 (_2!29798 (h!58041 lt!1818235)))) (contains!15037 lt!1818659 (_1!29797 (h!58040 (_2!29798 (h!58041 lt!1818235))))))))

(declare-fun m!5536551 () Bool)

(assert (=> bs!1065572 m!5536551))

(assert (=> b!4655798 d!1477244))

(declare-fun b_lambda!174185 () Bool)

(assert (= b_lambda!174029 (or b!4655328 b_lambda!174185)))

(declare-fun bs!1065573 () Bool)

(declare-fun d!1477246 () Bool)

(assert (= bs!1065573 (and d!1477246 b!4655328)))

(assert (=> bs!1065573 (= (dynLambda!21590 lambda!199303 (h!58040 (t!359136 (toList!5209 lt!1818389)))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818389))))))))

(declare-fun m!5536553 () Bool)

(assert (=> bs!1065573 m!5536553))

(assert (=> b!4655802 d!1477246))

(declare-fun b_lambda!174187 () Bool)

(assert (= b_lambda!174017 (or d!1476384 b_lambda!174187)))

(declare-fun bs!1065574 () Bool)

(declare-fun d!1477248 () Bool)

(assert (= bs!1065574 (and d!1477248 d!1476384)))

(assert (=> bs!1065574 (= (dynLambda!21588 lambda!199308 (h!58041 (t!359137 lt!1818235))) (noDuplicateKeys!1640 (_2!29798 (h!58041 (t!359137 lt!1818235)))))))

(assert (=> bs!1065574 m!5534963))

(assert (=> b!4655765 d!1477248))

(declare-fun b_lambda!174189 () Bool)

(assert (= b_lambda!174131 (or b!4655601 b_lambda!174189)))

(declare-fun bs!1065575 () Bool)

(declare-fun d!1477250 () Bool)

(assert (= bs!1065575 (and d!1477250 b!4655601)))

(assert (=> bs!1065575 (= (dynLambda!21592 lambda!199357 (h!58045 lt!1818565)) (containsKey!2726 (Cons!51896 (h!58040 (toList!5209 lt!1818236)) (t!359136 (toList!5209 lt!1818236))) (h!58045 lt!1818565)))))

(declare-fun m!5536555 () Bool)

(assert (=> bs!1065575 m!5536555))

(assert (=> b!4656280 d!1477250))

(declare-fun b_lambda!174191 () Bool)

(assert (= b_lambda!174137 (or d!1476564 b_lambda!174191)))

(declare-fun bs!1065576 () Bool)

(declare-fun d!1477252 () Bool)

(assert (= bs!1065576 (and d!1477252 d!1476564)))

(assert (=> bs!1065576 (= (dynLambda!21590 lambda!199368 (h!58040 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))))) (contains!15037 lt!1818624 (_1!29797 (h!58040 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40)))))))))

(declare-fun m!5536557 () Bool)

(assert (=> bs!1065576 m!5536557))

(assert (=> b!4656346 d!1477252))

(declare-fun b_lambda!174193 () Bool)

(assert (= b_lambda!174119 (or d!1476560 b_lambda!174193)))

(declare-fun bs!1065577 () Bool)

(declare-fun d!1477254 () Bool)

(assert (= bs!1065577 (and d!1477254 d!1476560)))

(assert (=> bs!1065577 (= (dynLambda!21590 lambda!199364 (h!58040 (toList!5209 (+!1984 lt!1818237 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40))))))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (toList!5209 (+!1984 lt!1818237 (tuple2!53007 (_1!29797 (h!58040 oldBucket!40)) (_2!29797 (h!58040 oldBucket!40)))))))))))

(declare-fun m!5536559 () Bool)

(assert (=> bs!1065577 m!5536559))

(assert (=> b!4656241 d!1477254))

(declare-fun b_lambda!174195 () Bool)

(assert (= b_lambda!174047 (or b!4655672 b_lambda!174195)))

(declare-fun bs!1065578 () Bool)

(declare-fun d!1477256 () Bool)

(assert (= bs!1065578 (and d!1477256 b!4655672)))

(assert (=> bs!1065578 (= (dynLambda!21592 lambda!199373 (h!58045 lt!1818629)) (containsKey!2726 (toList!5209 lt!1818236) (h!58045 lt!1818629)))))

(declare-fun m!5536561 () Bool)

(assert (=> bs!1065578 m!5536561))

(assert (=> b!4655874 d!1477256))

(declare-fun b_lambda!174197 () Bool)

(assert (= b_lambda!174079 (or b!4655713 b_lambda!174197)))

(assert (=> d!1476868 d!1477128))

(declare-fun b_lambda!174199 () Bool)

(assert (= b_lambda!174045 (or b!4655599 b_lambda!174199)))

(declare-fun bs!1065579 () Bool)

(declare-fun d!1477258 () Bool)

(assert (= bs!1065579 (and d!1477258 b!4655599)))

(assert (=> bs!1065579 (= (dynLambda!21592 lambda!199356 (_1!29797 (h!58040 (toList!5209 lt!1818236)))) (containsKey!2726 (t!359136 (toList!5209 lt!1818236)) (_1!29797 (h!58040 (toList!5209 lt!1818236)))))))

(assert (=> bs!1065579 m!5534687))

(assert (=> d!1476740 d!1477258))

(declare-fun b_lambda!174201 () Bool)

(assert (= b_lambda!174085 (or b!4655328 b_lambda!174201)))

(declare-fun bs!1065580 () Bool)

(declare-fun d!1477260 () Bool)

(assert (= bs!1065580 (and d!1477260 b!4655328)))

(assert (=> bs!1065580 (= (dynLambda!21590 lambda!199302 (h!58040 (t!359136 (toList!5209 lt!1818237)))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (t!359136 (toList!5209 lt!1818237))))))))

(declare-fun m!5536563 () Bool)

(assert (=> bs!1065580 m!5536563))

(assert (=> b!4656095 d!1477260))

(declare-fun b_lambda!174203 () Bool)

(assert (= b_lambda!174009 (or b!4655328 b_lambda!174203)))

(declare-fun bs!1065581 () Bool)

(declare-fun d!1477262 () Bool)

(assert (= bs!1065581 (and d!1477262 b!4655328)))

(assert (=> bs!1065581 (= (dynLambda!21590 lambda!199303 (h!58040 (t!359136 (t!359136 oldBucket!40)))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (t!359136 (t!359136 oldBucket!40))))))))

(declare-fun m!5536565 () Bool)

(assert (=> bs!1065581 m!5536565))

(assert (=> b!4655726 d!1477262))

(declare-fun b_lambda!174205 () Bool)

(assert (= b_lambda!174023 (or d!1476594 b_lambda!174205)))

(declare-fun bs!1065582 () Bool)

(declare-fun d!1477264 () Bool)

(assert (= bs!1065582 (and d!1477264 d!1476594)))

(assert (=> bs!1065582 (= (dynLambda!21590 lambda!199377 (h!58040 (toList!5209 lt!1818237))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(assert (=> bs!1065582 m!5534955))

(assert (=> b!4655796 d!1477264))

(declare-fun b_lambda!174207 () Bool)

(assert (= b_lambda!174129 (or d!1476390 b_lambda!174207)))

(declare-fun bs!1065583 () Bool)

(declare-fun d!1477266 () Bool)

(assert (= bs!1065583 (and d!1477266 d!1476390)))

(assert (=> bs!1065583 (= (dynLambda!21588 lambda!199312 (h!58041 (t!359137 (toList!5210 (ListLongMap!3764 lt!1818235))))) (allKeysSameHash!1494 (_2!29798 (h!58041 (t!359137 (toList!5210 (ListLongMap!3764 lt!1818235))))) (_1!29798 (h!58041 (t!359137 (toList!5210 (ListLongMap!3764 lt!1818235))))) hashF!1389))))

(declare-fun m!5536567 () Bool)

(assert (=> bs!1065583 m!5536567))

(assert (=> b!4656268 d!1477266))

(declare-fun b_lambda!174209 () Bool)

(assert (= b_lambda!174037 (or b!4655655 b_lambda!174209)))

(declare-fun bs!1065584 () Bool)

(declare-fun d!1477268 () Bool)

(assert (= bs!1065584 (and d!1477268 b!4655655)))

(assert (=> bs!1065584 (= (dynLambda!21590 lambda!199366 (h!58040 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40))))) (contains!15037 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (_1!29797 (h!58040 (toList!5209 (+!1984 lt!1818237 (h!58040 oldBucket!40)))))))))

(assert (=> bs!1065584 m!5534243))

(declare-fun m!5536569 () Bool)

(assert (=> bs!1065584 m!5536569))

(assert (=> b!4655816 d!1477268))

(declare-fun b_lambda!174211 () Bool)

(assert (= b_lambda!174089 (or b!4655673 b_lambda!174211)))

(declare-fun bs!1065585 () Bool)

(declare-fun d!1477270 () Bool)

(assert (= bs!1065585 (and d!1477270 b!4655673)))

(assert (=> bs!1065585 (= (dynLambda!21591 lambda!199374 (h!58040 (toList!5209 lt!1818236))) (_1!29797 (h!58040 (toList!5209 lt!1818236))))))

(assert (=> b!4656129 d!1477270))

(declare-fun b_lambda!174213 () Bool)

(assert (= b_lambda!174015 (or b!4655598 b_lambda!174213)))

(declare-fun bs!1065586 () Bool)

(declare-fun d!1477272 () Bool)

(assert (= bs!1065586 (and d!1477272 b!4655598)))

(assert (=> bs!1065586 (= (dynLambda!21591 lambda!199359 (h!58040 (toList!5209 lt!1818236))) (_1!29797 (h!58040 (toList!5209 lt!1818236))))))

(assert (=> b!4655762 d!1477272))

(declare-fun b_lambda!174215 () Bool)

(assert (= b_lambda!174077 (or b!4655713 b_lambda!174215)))

(declare-fun bs!1065587 () Bool)

(declare-fun d!1477274 () Bool)

(assert (= bs!1065587 (and d!1477274 b!4655713)))

(assert (=> bs!1065587 (= (dynLambda!21590 lambda!199380 (h!58040 (toList!5209 lt!1818655))) (contains!15037 lt!1818660 (_1!29797 (h!58040 (toList!5209 lt!1818655)))))))

(declare-fun m!5536571 () Bool)

(assert (=> bs!1065587 m!5536571))

(assert (=> b!4656055 d!1477274))

(declare-fun b_lambda!174217 () Bool)

(assert (= b_lambda!174113 (or d!1476560 b_lambda!174217)))

(declare-fun bs!1065588 () Bool)

(declare-fun d!1477276 () Bool)

(assert (= bs!1065588 (and d!1477276 d!1476560)))

(assert (=> bs!1065588 (= (dynLambda!21590 lambda!199364 (h!58040 (toList!5209 lt!1818237))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (toList!5209 lt!1818237)))))))

(assert (=> bs!1065588 m!5534969))

(assert (=> b!4656224 d!1477276))

(declare-fun b_lambda!174219 () Bool)

(assert (= b_lambda!174033 (or b!4655655 b_lambda!174219)))

(declare-fun bs!1065589 () Bool)

(declare-fun d!1477278 () Bool)

(assert (= bs!1065589 (and d!1477278 b!4655655)))

(assert (=> bs!1065589 (= (dynLambda!21590 lambda!199367 (h!58040 (toList!5209 lt!1818620))) (contains!15037 lt!1818625 (_1!29797 (h!58040 (toList!5209 lt!1818620)))))))

(declare-fun m!5536573 () Bool)

(assert (=> bs!1065589 m!5536573))

(assert (=> b!4655805 d!1477278))

(declare-fun b_lambda!174221 () Bool)

(assert (= b_lambda!173967 (or (and d!1476594 (= lambda!199377 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476982 (= lambda!199443 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476716 (= lambda!199392 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655808 (= lambda!199389 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655714 (= lambda!199378 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476386 (= lambda!199309 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476854 (= lambda!199421 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476696 (= lambda!199387 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476712 (= lambda!199391 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655808 (= lambda!199390 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656059 (= lambda!199416 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476356 (= lambda!199304 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655656 (= lambda!199365 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476560 (= lambda!199364 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655329 (= lambda!199301 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655328 (= lambda!199302 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656166 (= lambda!199430 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655655 (= lambda!199367 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656166 (= lambda!199433 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476352 (= lambda!199229 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656058 (= lambda!199420 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655328 (= lambda!199303 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476938 (= lambda!199436 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655655 (= lambda!199366 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476962 (= lambda!199441 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655809 (= lambda!199388 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476564 (= lambda!199368 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476842 (= lambda!199415 (ite c!796811 lambda!199301 lambda!199303))) (and d!1477000 (= lambda!199449 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655713 (= lambda!199379 (ite c!796811 lambda!199301 lambda!199303))) (and b!4655713 (= lambda!199380 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656058 (= lambda!199419 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476610 (= lambda!199381 (ite c!796811 lambda!199301 lambda!199303))) (and b!4656167 (= lambda!199428 (ite c!796811 lambda!199301 lambda!199303))) (and d!1476894 (= lambda!199422 (ite c!796811 lambda!199301 lambda!199303))) b_lambda!174221)))

(declare-fun bs!1065590 () Bool)

(declare-fun d!1477280 () Bool)

(assert (= bs!1065590 (and d!1477280 b!4655655)))

(assert (=> bs!1065590 (= (dynLambda!21590 lambda!199367 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818625 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536575 () Bool)

(assert (=> bs!1065590 m!5536575))

(assert (=> (and b!4655655 (= lambda!199367 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477280))

(declare-fun bs!1065591 () Bool)

(declare-fun d!1477282 () Bool)

(assert (= bs!1065591 (and d!1477282 b!4656058)))

(assert (=> bs!1065591 (= (dynLambda!21590 lambda!199419 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065591 m!5534909))

(declare-fun m!5536577 () Bool)

(assert (=> bs!1065591 m!5536577))

(assert (=> (and b!4656058 (= lambda!199419 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477282))

(declare-fun bs!1065592 () Bool)

(declare-fun d!1477284 () Bool)

(assert (= bs!1065592 (and d!1477284 d!1476962)))

(assert (=> bs!1065592 (= (dynLambda!21590 lambda!199441 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))) (_1!29798 (h!58041 (toList!5210 (ListLongMap!3764 lt!1818235))))))))

(declare-fun m!5536579 () Bool)

(assert (=> bs!1065592 m!5536579))

(assert (=> (and d!1476962 (= lambda!199441 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477284))

(declare-fun bs!1065593 () Bool)

(declare-fun d!1477286 () Bool)

(assert (= bs!1065593 (and d!1477286 d!1476716)))

(assert (=> bs!1065593 (= (dynLambda!21590 lambda!199392 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818625 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065593 m!5536575))

(assert (=> (and d!1476716 (= lambda!199392 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477286))

(declare-fun bs!1065594 () Bool)

(declare-fun d!1477288 () Bool)

(assert (= bs!1065594 (and d!1477288 b!4656059)))

(assert (=> bs!1065594 (= (dynLambda!21590 lambda!199416 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (+!1984 (extractMap!1696 (t!359137 lt!1818235)) (h!58040 (_2!29798 (h!58041 lt!1818235)))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065594 m!5534909))

(assert (=> bs!1065594 m!5536577))

(assert (=> (and b!4656059 (= lambda!199416 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477288))

(declare-fun bs!1065595 () Bool)

(declare-fun d!1477290 () Bool)

(assert (= bs!1065595 (and d!1477290 d!1476610)))

(assert (=> bs!1065595 (= (dynLambda!21590 lambda!199381 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818659 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536581 () Bool)

(assert (=> bs!1065595 m!5536581))

(assert (=> (and d!1476610 (= lambda!199381 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477290))

(declare-fun bs!1065596 () Bool)

(declare-fun d!1477292 () Bool)

(assert (= bs!1065596 (and d!1477292 d!1476356)))

(assert (=> bs!1065596 (= (dynLambda!21590 lambda!199304 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818393 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536583 () Bool)

(assert (=> bs!1065596 m!5536583))

(assert (=> (and d!1476356 (= lambda!199304 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477292))

(declare-fun bs!1065597 () Bool)

(declare-fun d!1477294 () Bool)

(assert (= bs!1065597 (and d!1477294 d!1476386)))

(assert (=> bs!1065597 (= (dynLambda!21590 lambda!199309 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))) hash!414))))

(assert (=> bs!1065597 m!5536579))

(assert (=> (and d!1476386 (= lambda!199309 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477294))

(declare-fun bs!1065598 () Bool)

(declare-fun d!1477296 () Bool)

(assert (= bs!1065598 (and d!1477296 b!4655329)))

(assert (=> bs!1065598 (= (dynLambda!21590 lambda!199301 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536585 () Bool)

(assert (=> bs!1065598 m!5536585))

(assert (=> (and b!4655329 (= lambda!199301 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477296))

(declare-fun bs!1065599 () Bool)

(declare-fun d!1477298 () Bool)

(assert (= bs!1065599 (and d!1477298 b!4656058)))

(assert (=> bs!1065599 (= (dynLambda!21590 lambda!199420 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818890 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536587 () Bool)

(assert (=> bs!1065599 m!5536587))

(assert (=> (and b!4656058 (= lambda!199420 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477298))

(declare-fun bs!1065600 () Bool)

(declare-fun d!1477300 () Bool)

(assert (= bs!1065600 (and d!1477300 d!1476696)))

(assert (=> bs!1065600 (= (dynLambda!21590 lambda!199387 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065600 m!5536585))

(assert (=> (and d!1476696 (= lambda!199387 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477300))

(declare-fun bs!1065601 () Bool)

(declare-fun d!1477302 () Bool)

(assert (= bs!1065601 (and d!1477302 b!4655328)))

(assert (=> bs!1065601 (= (dynLambda!21590 lambda!199302 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065601 m!5536585))

(assert (=> (and b!4655328 (= lambda!199302 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477302))

(declare-fun bs!1065602 () Bool)

(declare-fun d!1477304 () Bool)

(assert (= bs!1065602 (and d!1477304 d!1476938)))

(assert (=> bs!1065602 (= (dynLambda!21590 lambda!199436 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818953 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536589 () Bool)

(assert (=> bs!1065602 m!5536589))

(assert (=> (and d!1476938 (= lambda!199436 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477304))

(declare-fun bs!1065603 () Bool)

(declare-fun d!1477306 () Bool)

(assert (= bs!1065603 (and d!1477306 b!4655655)))

(assert (=> bs!1065603 (= (dynLambda!21590 lambda!199366 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065603 m!5534243))

(declare-fun m!5536591 () Bool)

(assert (=> bs!1065603 m!5536591))

(assert (=> (and b!4655655 (= lambda!199366 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477306))

(declare-fun bs!1065604 () Bool)

(declare-fun d!1477308 () Bool)

(assert (= bs!1065604 (and d!1477308 d!1476842)))

(assert (=> bs!1065604 (= (dynLambda!21590 lambda!199415 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818660 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536593 () Bool)

(assert (=> bs!1065604 m!5536593))

(assert (=> (and d!1476842 (= lambda!199415 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477308))

(declare-fun bs!1065606 () Bool)

(declare-fun d!1477310 () Bool)

(assert (= bs!1065606 (and d!1477310 d!1476854)))

(assert (=> bs!1065606 (= (dynLambda!21590 lambda!199421 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818889 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536595 () Bool)

(assert (=> bs!1065606 m!5536595))

(assert (=> (and d!1476854 (= lambda!199421 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477310))

(declare-fun bs!1065608 () Bool)

(declare-fun d!1477312 () Bool)

(assert (= bs!1065608 (and d!1477312 d!1477000)))

(assert (=> bs!1065608 (= (dynLambda!21590 lambda!199449 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536597 () Bool)

(assert (=> bs!1065608 m!5536597))

(assert (=> (and d!1477000 (= lambda!199449 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477312))

(declare-fun bs!1065610 () Bool)

(declare-fun d!1477314 () Bool)

(assert (= bs!1065610 (and d!1477314 d!1476594)))

(assert (=> bs!1065610 (= (dynLambda!21590 lambda!199377 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818237 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065610 m!5536585))

(assert (=> (and d!1476594 (= lambda!199377 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477314))

(declare-fun bs!1065612 () Bool)

(declare-fun d!1477316 () Bool)

(assert (= bs!1065612 (and d!1477316 b!4656167)))

(assert (=> bs!1065612 (= (dynLambda!21590 lambda!199428 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065612 m!5534945))

(declare-fun m!5536599 () Bool)

(assert (=> bs!1065612 m!5536599))

(assert (=> (and b!4656167 (= lambda!199428 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477316))

(declare-fun bs!1065614 () Bool)

(declare-fun d!1477318 () Bool)

(assert (= bs!1065614 (and d!1477318 b!4656166)))

(assert (=> bs!1065614 (= (dynLambda!21590 lambda!199433 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818954 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536601 () Bool)

(assert (=> bs!1065614 m!5536601))

(assert (=> (and b!4656166 (= lambda!199433 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477318))

(declare-fun bs!1065617 () Bool)

(declare-fun d!1477320 () Bool)

(assert (= bs!1065617 (and d!1477320 b!4655714)))

(assert (=> bs!1065617 (= (dynLambda!21590 lambda!199378 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (extractMap!1696 (t!359137 lt!1818235)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065617 m!5534307))

(declare-fun m!5536603 () Bool)

(assert (=> bs!1065617 m!5536603))

(assert (=> (and b!4655714 (= lambda!199378 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477320))

(declare-fun bs!1065619 () Bool)

(declare-fun d!1477322 () Bool)

(assert (= bs!1065619 (and d!1477322 d!1476564)))

(assert (=> bs!1065619 (= (dynLambda!21590 lambda!199368 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818624 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536605 () Bool)

(assert (=> bs!1065619 m!5536605))

(assert (=> (and d!1476564 (= lambda!199368 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477322))

(declare-fun bs!1065621 () Bool)

(declare-fun d!1477324 () Bool)

(assert (= bs!1065621 (and d!1477324 d!1476560)))

(assert (=> bs!1065621 (= (dynLambda!21590 lambda!199364 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065621 m!5536597))

(assert (=> (and d!1476560 (= lambda!199364 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477324))

(declare-fun bs!1065623 () Bool)

(declare-fun d!1477326 () Bool)

(assert (= bs!1065623 (and d!1477326 b!4655713)))

(assert (=> bs!1065623 (= (dynLambda!21590 lambda!199379 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (extractMap!1696 (t!359137 lt!1818235)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065623 m!5534307))

(assert (=> bs!1065623 m!5536603))

(assert (=> (and b!4655713 (= lambda!199379 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477326))

(declare-fun bs!1065625 () Bool)

(declare-fun d!1477328 () Bool)

(assert (= bs!1065625 (and d!1477328 b!4655809)))

(assert (=> bs!1065625 (= (dynLambda!21590 lambda!199388 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065625 m!5534791))

(declare-fun m!5536607 () Bool)

(assert (=> bs!1065625 m!5536607))

(assert (=> (and b!4655809 (= lambda!199388 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477328))

(declare-fun bs!1065628 () Bool)

(declare-fun d!1477330 () Bool)

(assert (= bs!1065628 (and d!1477330 b!4656166)))

(assert (=> bs!1065628 (= (dynLambda!21590 lambda!199430 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (extractMap!1696 (t!359137 (t!359137 lt!1818235))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065628 m!5534945))

(assert (=> bs!1065628 m!5536599))

(assert (=> (and b!4656166 (= lambda!199430 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477330))

(declare-fun bs!1065630 () Bool)

(declare-fun d!1477332 () Bool)

(assert (= bs!1065630 (and d!1477332 d!1476352)))

(assert (=> bs!1065630 (= (dynLambda!21590 lambda!199229 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))) hash!414))))

(assert (=> bs!1065630 m!5536579))

(assert (=> (and d!1476352 (= lambda!199229 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477332))

(declare-fun bs!1065632 () Bool)

(declare-fun d!1477334 () Bool)

(assert (= bs!1065632 (and d!1477334 b!4655808)))

(assert (=> bs!1065632 (= (dynLambda!21590 lambda!199389 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (+!1984 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (h!58040 (t!359136 oldBucket!40))) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065632 m!5534791))

(assert (=> bs!1065632 m!5536607))

(assert (=> (and b!4655808 (= lambda!199389 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477334))

(declare-fun bs!1065634 () Bool)

(declare-fun d!1477336 () Bool)

(assert (= bs!1065634 (and d!1477336 b!4655656)))

(assert (=> bs!1065634 (= (dynLambda!21590 lambda!199365 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065634 m!5534243))

(assert (=> bs!1065634 m!5536591))

(assert (=> (and b!4655656 (= lambda!199365 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477336))

(declare-fun bs!1065635 () Bool)

(declare-fun d!1477338 () Bool)

(assert (= bs!1065635 (and d!1477338 d!1476982)))

(assert (=> bs!1065635 (= (dynLambda!21590 lambda!199443 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (extractMap!1696 (t!359137 lt!1818235)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065635 m!5534307))

(assert (=> bs!1065635 m!5536603))

(assert (=> (and d!1476982 (= lambda!199443 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477338))

(declare-fun bs!1065638 () Bool)

(declare-fun d!1477340 () Bool)

(assert (= bs!1065638 (and d!1477340 d!1476894)))

(assert (=> bs!1065638 (= (dynLambda!21590 lambda!199422 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 (+!1984 lt!1818237 (h!58040 oldBucket!40)) (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065638 m!5534243))

(assert (=> bs!1065638 m!5536591))

(assert (=> (and d!1476894 (= lambda!199422 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477340))

(declare-fun bs!1065640 () Bool)

(declare-fun d!1477342 () Bool)

(assert (= bs!1065640 (and d!1477342 b!4655808)))

(assert (=> bs!1065640 (= (dynLambda!21590 lambda!199390 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818710 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536609 () Bool)

(assert (=> bs!1065640 m!5536609))

(assert (=> (and b!4655808 (= lambda!199390 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477342))

(declare-fun bs!1065642 () Bool)

(declare-fun d!1477344 () Bool)

(assert (= bs!1065642 (and d!1477344 b!4655328)))

(assert (=> bs!1065642 (= (dynLambda!21590 lambda!199303 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818394 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065642 m!5536597))

(assert (=> (and b!4655328 (= lambda!199303 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477344))

(declare-fun bs!1065644 () Bool)

(declare-fun d!1477346 () Bool)

(assert (= bs!1065644 (and d!1477346 d!1476712)))

(assert (=> bs!1065644 (= (dynLambda!21590 lambda!199391 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818709 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(declare-fun m!5536611 () Bool)

(assert (=> bs!1065644 m!5536611))

(assert (=> (and d!1476712 (= lambda!199391 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477346))

(declare-fun bs!1065645 () Bool)

(declare-fun d!1477348 () Bool)

(assert (= bs!1065645 (and d!1477348 b!4655713)))

(assert (=> bs!1065645 (= (dynLambda!21590 lambda!199380 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389)))) (contains!15037 lt!1818660 (_1!29797 (h!58040 (ite c!796811 (toList!5209 lt!1818237) (toList!5209 lt!1818389))))))))

(assert (=> bs!1065645 m!5536593))

(assert (=> (and b!4655713 (= lambda!199380 (ite c!796811 lambda!199301 lambda!199303)) b!4655676) d!1477348))

(declare-fun b_lambda!174223 () Bool)

(assert (= b_lambda!174101 (or d!1476386 b_lambda!174223)))

(declare-fun bs!1065647 () Bool)

(declare-fun d!1477350 () Bool)

(assert (= bs!1065647 (and d!1477350 d!1476386)))

(assert (=> bs!1065647 (= (dynLambda!21590 lambda!199309 (h!58040 (t!359136 oldBucket!40))) (= (hash!3777 hashF!1389 (_1!29797 (h!58040 (t!359136 oldBucket!40)))) hash!414))))

(declare-fun m!5536613 () Bool)

(assert (=> bs!1065647 m!5536613))

(assert (=> b!4656198 d!1477350))

(check-sat (not b_lambda!174191) (not d!1476656) (not bs!1065521) (not b!4656319) (not d!1476842) (not bs!1065583) (not bs!1065647) (not d!1477112) (not b_lambda!174147) (not b!4656034) (not bs!1065550) (not bs!1065524) (not bs!1065541) (not b!4656320) (not d!1476930) (not b_lambda!173993) (not bm!325378) (not b!4655860) (not bs!1065549) (not bs!1065578) (not bs!1065623) (not bs!1065621) (not b!4656273) (not b!4655912) (not b!4655823) (not b_lambda!174175) (not bs!1065552) (not d!1476746) (not b!4655915) (not b!4655742) (not b_lambda!174099) (not b!4655830) (not b!4655729) (not b!4655783) (not b_lambda!174151) (not bs!1065625) (not d!1476982) (not b!4655835) (not b!4655903) (not b!4655811) (not bm!325349) (not b!4655801) (not b!4656096) (not bm!325351) (not bs!1065534) (not b!4656347) (not b!4656039) (not b!4656136) (not b!4656194) (not b!4655813) (not b!4656321) (not d!1476748) (not bs!1065571) (not b!4656086) (not b!4655819) (not b!4656270) (not bm!325388) (not b!4655754) (not b!4656165) (not bm!325350) (not b!4656132) (not b!4656117) (not b!4655828) (not b!4656313) (not b!4656092) (not b!4656316) (not b!4656169) (not bs!1065628) (not d!1477056) (not d!1476724) (not d!1476722) (not b!4656100) (not b!4656037) (not b!4656299) (not b_lambda!174163) (not b!4656026) (not bs!1065523) (not d!1476938) (not bm!325390) (not bm!325376) (not b!4656123) (not b!4656061) (not b_lambda!174221) (not b!4655826) (not bs!1065632) (not b!4656345) (not bs!1065638) (not d!1477050) (not b!4655821) (not b!4656358) (not b!4655901) (not b!4656287) (not d!1476750) (not b!4655736) (not b!4656271) (not d!1476698) (not b_lambda!174155) (not b_lambda!174211) (not b!4656166) (not b_lambda!174169) (not bm!325374) (not b!4655794) (not bs!1065540) (not b!4655724) (not bm!325353) (not bs!1065558) (not b!4655778) (not bs!1065568) (not b!4656377) (not b!4655866) (not b_lambda!174123) (not b_lambda!174189) (not b!4655814) (not b!4656339) (not b!4656317) (not bs!1065548) (not b_lambda!174005) (not bs!1065599) (not b!4656272) (not d!1476902) (not bs!1065572) (not bs!1065587) (not bs!1065573) (not bs!1065539) (not b!4656098) (not b_lambda!174159) (not bs!1065553) (not bs!1065576) (not b!4656000) (not b_lambda!174203) (not b!4656135) (not bs!1065590) (not b!4656361) (not bs!1065597) (not b!4656041) (not bs!1065535) (not bs!1065547) (not b!4656301) (not bs!1065591) (not d!1476690) (not b_lambda!174179) (not b!4656087) (not b_lambda!174049) (not d!1476686) (not bs!1065596) (not bs!1065527) (not b_lambda!174177) (not bm!325382) (not d!1477054) (not bs!1065525) (not b!4655829) (not bs!1065582) (not b!4655780) (not d!1476758) (not bs!1065543) (not d!1476676) (not b!4656285) (not b!4656225) (not bs!1065565) (not b!4655820) (not b!4655779) (not b!4656275) (not b!4655807) (not b!4655875) (not b!4655808) (not bs!1065557) (not bm!325381) (not bs!1065522) (not d!1476664) (not b!4656247) (not b!4656077) (not b_lambda!174199) (not b_lambda!174161) (not b!4656378) (not b!4655785) (not bs!1065546) (not d!1476762) (not d!1477094) (not d!1476754) tp_is_empty!29853 (not bs!1065600) (not bm!325354) (not bs!1065533) (not bs!1065608) (not bs!1065529) (not bs!1065601) (not d!1476704) (not b!4656060) (not b!4656058) (not b!4655790) (not d!1476652) (not b!4655815) (not b!4655797) (not bs!1065617) (not b!4655861) (not b_lambda!174165) (not b!4655738) (not bs!1065554) (not d!1476876) (not b!4655885) (not bs!1065538) (not b_lambda!174167) (not b!4656242) (not b!4655908) (not d!1476834) (not b!4656024) (not b!4656267) (not d!1476742) (not b!4655842) (not b!4656083) (not b!4655999) (not b!4656028) (not b!4656264) (not b!4656119) (not b_lambda!173985) (not bs!1065612) (not bs!1065642) (not d!1477098) (not d!1476868) (not b_lambda!174181) (not b!4656045) (not b!4656010) (not b_lambda!173981) (not bs!1065634) (not bs!1065551) (not b!4656129) (not b!4656338) (not b_lambda!174213) (not b!4655827) (not b!4656038) (not b_lambda!174173) (not d!1476870) (not bm!325360) (not b!4655832) (not b!4656002) (not b!4655746) (not bm!325352) (not bs!1065614) (not bs!1065560) (not d!1476662) (not bs!1065595) (not d!1476738) (not b!4656211) (not b!4656011) (not b!4656003) (not d!1476718) (not d!1476672) (not b!4655863) (not b_lambda!174201) (not bs!1065635) (not d!1476730) (not bs!1065610) (not bs!1065562) (not bs!1065563) (not b!4655817) (not b!4655879) (not d!1476894) tp_is_empty!29855 (not bs!1065530) (not b!4655822) (not b_lambda!174205) (not b_lambda!173987) (not d!1476712) (not b!4656352) (not bs!1065630) (not b_lambda!174027) (not b!4656088) (not bs!1065645) (not b!4656300) (not b!4656341) (not b!4656121) (not b_lambda!173983) (not d!1476708) (not b!4656040) (not b!4655772) (not d!1476962) (not b_lambda!174223) (not b!4655818) (not b!4656265) (not b!4656007) (not b!4656312) (not b!4655748) (not b!4655764) (not b_lambda!173991) (not b_lambda!174153) (not bs!1065579) (not b_lambda!174187) (not d!1476684) (not d!1476914) (not b_lambda!174149) (not bs!1065542) (not bs!1065556) (not bs!1065520) (not bs!1065640) (not b_lambda!174171) (not bs!1065588) (not b!4655909) (not b!4656379) (not b!4656332) (not bs!1065566) (not b!4656030) (not bs!1065569) (not b!4656138) (not b_lambda!174011) (not b!4655846) (not d!1476774) (not b_lambda!174207) (not b_lambda!174185) (not b!4655766) (not b!4656355) (not b!4655907) (not b!4655731) (not b!4655933) (not b!4655855) (not b_lambda!174219) (not bs!1065602) (not b!4656363) (not b!4655777) (not b!4655804) (not b!4655723) (not d!1476666) (not b!4656116) (not b_lambda!174157) (not b!4656304) (not b!4656056) (not d!1476916) (not b!4656159) (not d!1476756) (not bs!1065570) (not b!4655848) (not b!4655881) (not b!4656350) (not bs!1065606) (not b!4655839) (not d!1476740) (not b!4655810) (not d!1476780) (not b!4655740) (not b!4656248) (not bs!1065564) (not b!4655831) (not b!4655845) (not b!4656309) (not b!4656042) (not bs!1065567) (not bs!1065594) (not b!4656057) (not b!4655756) (not b_lambda!174183) (not b!4656340) (not b!4656085) (not b!4656207) (not b_lambda!174019) (not b!4656199) (not b!4655840) (not bs!1065619) (not d!1476696) (not bs!1065577) (not b!4655867) (not d!1476642) (not b!4655739) (not b!4656354) (not bm!325355) (not bs!1065537) (not bs!1065536) (not d!1476954) (not bs!1065559) (not b!4655725) (not b!4655775) (not b!4655857) (not b!4655883) (not d!1476904) (not bm!325391) (not b!4656106) (not d!1477062) (not b_lambda!174217) (not d!1477052) (not d!1476848) (not bs!1065603) (not b!4655877) (not b_lambda!174209) (not b!4655869) (not bs!1065531) (not b_lambda!173989) (not b!4655905) (not b_lambda!173999) (not b!4655799) (not b!4656302) (not b!4655803) (not b!4656324) (not b!4656318) (not bs!1065532) (not d!1476716) (not bs!1065544) (not b_lambda!173885) (not d!1476824) (not b!4655776) (not b!4655774) (not bm!325370) (not b!4655904) (not bm!325379) (not b!4655932) (not b!4656335) (not b!4656259) (not bm!325372) (not b!4655900) (not b!4656307) (not b!4655886) (not b!4655737) (not b!4656073) (not b_lambda!173997) (not b!4655884) (not bs!1065555) (not b_lambda!173995) (not b!4656337) (not b_lambda!174195) (not b!4656342) (not b!4656074) (not bs!1065574) (not b!4656351) (not bs!1065589) (not d!1477068) (not b!4655837) (not d!1477000) (not d!1477022) (not d!1476924) (not bs!1065598) (not b!4656362) (not b_lambda!174001) (not b!4656213) (not bs!1065526) (not b!4656278) (not b!4656197) (not bs!1065644) (not b!4656269) (not b!4655787) (not b!4656168) (not b_lambda!174215) (not d!1476770) (not b!4655727) (not b!4656006) (not b!4656303) (not b_lambda!174193) (not bs!1065580) (not b!4656281) (not d!1476968) (not b!4656084) (not bs!1065593) (not bs!1065592) (not b!4656375) (not bm!325377) (not bs!1065561) (not b!4656364) (not b_lambda!174197) (not b!4655743) (not b!4656130) (not b!4656089) (not b!4656075) (not d!1476668) (not bm!325389) (not bs!1065545) (not bs!1065575) (not d!1477080) (not b!4655741) (not b!4655762) (not b_lambda!173979) (not b!4655806) (not d!1476854) (not b_lambda!174003) (not bs!1065604) (not bs!1065581) (not bs!1065584) (not b!4655722) (not b!4655906) (not bm!325383) (not d!1477064) (not d!1477074) (not b!4656353) (not b!4656032) (not b_lambda!174145))
(check-sat)
