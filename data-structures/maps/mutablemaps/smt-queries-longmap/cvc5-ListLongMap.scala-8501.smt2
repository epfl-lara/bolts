; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103644 () Bool)

(assert start!103644)

(declare-datatypes ((B!1832 0))(
  ( (B!1833 (val!15678 Int)) )
))
(declare-datatypes ((tuple2!20384 0))(
  ( (tuple2!20385 (_1!10202 (_ BitVec 64)) (_2!10202 B!1832)) )
))
(declare-datatypes ((List!27507 0))(
  ( (Nil!27504) (Cons!27503 (h!28712 tuple2!20384) (t!40977 List!27507)) )
))
(declare-fun l!644 () List!27507)

(declare-fun v1!20 () B!1832)

(declare-fun b!1241063 () Bool)

(declare-fun e!703474 () Bool)

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun isStrictlySorted!741 (List!27507) Bool)

(declare-fun insertStrictlySorted!431 (List!27507 (_ BitVec 64) B!1832) List!27507)

(assert (=> b!1241063 (= e!703474 (not (isStrictlySorted!741 (insertStrictlySorted!431 l!644 key1!25 v1!20))))))

(declare-fun key2!15 () (_ BitVec 64))

(declare-fun removeStrictlySorted!125 (List!27507 (_ BitVec 64)) List!27507)

(assert (=> b!1241063 (= (insertStrictlySorted!431 (removeStrictlySorted!125 (t!40977 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!125 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41197 0))(
  ( (Unit!41198) )
))
(declare-fun lt!562036 () Unit!41197)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!13 (List!27507 (_ BitVec 64) B!1832 (_ BitVec 64)) Unit!41197)

(assert (=> b!1241063 (= lt!562036 (lemmaInsertAndRemoveStrictlySortedCommutative!13 (t!40977 l!644) key1!25 v1!20 key2!15))))

(declare-fun res!828048 () Bool)

(assert (=> start!103644 (=> (not res!828048) (not e!703474))))

(assert (=> start!103644 (= res!828048 (not (= key1!25 key2!15)))))

(assert (=> start!103644 e!703474))

(assert (=> start!103644 true))

(declare-fun e!703475 () Bool)

(assert (=> start!103644 e!703475))

(declare-fun tp_is_empty!31231 () Bool)

(assert (=> start!103644 tp_is_empty!31231))

(declare-fun b!1241064 () Bool)

(declare-fun res!828049 () Bool)

(assert (=> b!1241064 (=> (not res!828049) (not e!703474))))

(assert (=> b!1241064 (= res!828049 (is-Cons!27503 l!644))))

(declare-fun b!1241065 () Bool)

(declare-fun tp!92610 () Bool)

(assert (=> b!1241065 (= e!703475 (and tp_is_empty!31231 tp!92610))))

(declare-fun b!1241066 () Bool)

(declare-fun res!828047 () Bool)

(assert (=> b!1241066 (=> (not res!828047) (not e!703474))))

(assert (=> b!1241066 (= res!828047 (isStrictlySorted!741 l!644))))

(declare-fun b!1241067 () Bool)

(declare-fun res!828046 () Bool)

(assert (=> b!1241067 (=> (not res!828046) (not e!703474))))

(assert (=> b!1241067 (= res!828046 (isStrictlySorted!741 (t!40977 l!644)))))

(assert (= (and start!103644 res!828048) b!1241066))

(assert (= (and b!1241066 res!828047) b!1241064))

(assert (= (and b!1241064 res!828049) b!1241067))

(assert (= (and b!1241067 res!828046) b!1241063))

(assert (= (and start!103644 (is-Cons!27503 l!644)) b!1241065))

(declare-fun m!1144271 () Bool)

(assert (=> b!1241063 m!1144271))

(declare-fun m!1144273 () Bool)

(assert (=> b!1241063 m!1144273))

(assert (=> b!1241063 m!1144271))

(declare-fun m!1144275 () Bool)

(assert (=> b!1241063 m!1144275))

(declare-fun m!1144277 () Bool)

(assert (=> b!1241063 m!1144277))

(assert (=> b!1241063 m!1144275))

(declare-fun m!1144279 () Bool)

(assert (=> b!1241063 m!1144279))

(declare-fun m!1144281 () Bool)

(assert (=> b!1241063 m!1144281))

(assert (=> b!1241063 m!1144279))

(declare-fun m!1144283 () Bool)

(assert (=> b!1241063 m!1144283))

(declare-fun m!1144285 () Bool)

(assert (=> b!1241066 m!1144285))

(declare-fun m!1144287 () Bool)

(assert (=> b!1241067 m!1144287))

(push 1)

(assert (not b!1241066))

(assert (not b!1241067))

(assert (not b!1241065))

(assert tp_is_empty!31231)

(assert (not b!1241063))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136341 () Bool)

(declare-fun res!828082 () Bool)

(declare-fun e!703496 () Bool)

(assert (=> d!136341 (=> res!828082 e!703496)))

(assert (=> d!136341 (= res!828082 (or (is-Nil!27504 l!644) (is-Nil!27504 (t!40977 l!644))))))

(assert (=> d!136341 (= (isStrictlySorted!741 l!644) e!703496)))

(declare-fun b!1241106 () Bool)

(declare-fun e!703497 () Bool)

(assert (=> b!1241106 (= e!703496 e!703497)))

(declare-fun res!828083 () Bool)

(assert (=> b!1241106 (=> (not res!828083) (not e!703497))))

(assert (=> b!1241106 (= res!828083 (bvslt (_1!10202 (h!28712 l!644)) (_1!10202 (h!28712 (t!40977 l!644)))))))

(declare-fun b!1241107 () Bool)

(assert (=> b!1241107 (= e!703497 (isStrictlySorted!741 (t!40977 l!644)))))

(assert (= (and d!136341 (not res!828082)) b!1241106))

(assert (= (and b!1241106 res!828083) b!1241107))

(assert (=> b!1241107 m!1144287))

(assert (=> b!1241066 d!136341))

(declare-fun d!136345 () Bool)

(declare-fun res!828084 () Bool)

(declare-fun e!703498 () Bool)

(assert (=> d!136345 (=> res!828084 e!703498)))

(assert (=> d!136345 (= res!828084 (or (is-Nil!27504 (t!40977 l!644)) (is-Nil!27504 (t!40977 (t!40977 l!644)))))))

(assert (=> d!136345 (= (isStrictlySorted!741 (t!40977 l!644)) e!703498)))

(declare-fun b!1241108 () Bool)

(declare-fun e!703500 () Bool)

(assert (=> b!1241108 (= e!703498 e!703500)))

(declare-fun res!828086 () Bool)

(assert (=> b!1241108 (=> (not res!828086) (not e!703500))))

(assert (=> b!1241108 (= res!828086 (bvslt (_1!10202 (h!28712 (t!40977 l!644))) (_1!10202 (h!28712 (t!40977 (t!40977 l!644))))))))

(declare-fun b!1241109 () Bool)

(assert (=> b!1241109 (= e!703500 (isStrictlySorted!741 (t!40977 (t!40977 l!644))))))

(assert (= (and d!136345 (not res!828084)) b!1241108))

(assert (= (and b!1241108 res!828086) b!1241109))

(declare-fun m!1144325 () Bool)

(assert (=> b!1241109 m!1144325))

(assert (=> b!1241067 d!136345))

(declare-fun e!703527 () List!27507)

(declare-fun b!1241149 () Bool)

(assert (=> b!1241149 (= e!703527 (t!40977 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20)))))

(declare-fun b!1241150 () Bool)

(declare-fun e!703525 () List!27507)

(assert (=> b!1241150 (= e!703525 Nil!27504)))

(declare-fun b!1241152 () Bool)

(assert (=> b!1241152 (= e!703527 e!703525)))

(declare-fun c!121322 () Bool)

(assert (=> b!1241152 (= c!121322 (and (is-Cons!27503 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20)) (not (= (_1!10202 (h!28712 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20))) key2!15))))))

(declare-fun b!1241153 () Bool)

(declare-fun e!703526 () Bool)

(declare-fun lt!562050 () List!27507)

(declare-fun containsKey!605 (List!27507 (_ BitVec 64)) Bool)

(assert (=> b!1241153 (= e!703526 (not (containsKey!605 lt!562050 key2!15)))))

(declare-fun d!136347 () Bool)

(assert (=> d!136347 e!703526))

(declare-fun res!828097 () Bool)

(assert (=> d!136347 (=> (not res!828097) (not e!703526))))

(assert (=> d!136347 (= res!828097 (isStrictlySorted!741 lt!562050))))

(assert (=> d!136347 (= lt!562050 e!703527)))

(declare-fun c!121321 () Bool)

(assert (=> d!136347 (= c!121321 (and (is-Cons!27503 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20)) (= (_1!10202 (h!28712 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20))) key2!15)))))

(assert (=> d!136347 (isStrictlySorted!741 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20))))

(assert (=> d!136347 (= (removeStrictlySorted!125 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20) key2!15) lt!562050)))

(declare-fun b!1241151 () Bool)

(declare-fun $colon$colon!622 (List!27507 tuple2!20384) List!27507)

(assert (=> b!1241151 (= e!703525 ($colon$colon!622 (removeStrictlySorted!125 (t!40977 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20)) key2!15) (h!28712 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20))))))

(assert (= (and d!136347 c!121321) b!1241149))

(assert (= (and d!136347 (not c!121321)) b!1241152))

(assert (= (and b!1241152 c!121322) b!1241151))

(assert (= (and b!1241152 (not c!121322)) b!1241150))

(assert (= (and d!136347 res!828097) b!1241153))

(declare-fun m!1144339 () Bool)

(assert (=> b!1241153 m!1144339))

(declare-fun m!1144341 () Bool)

(assert (=> d!136347 m!1144341))

(assert (=> d!136347 m!1144275))

(declare-fun m!1144343 () Bool)

(assert (=> d!136347 m!1144343))

(declare-fun m!1144345 () Bool)

(assert (=> b!1241151 m!1144345))

(assert (=> b!1241151 m!1144345))

(declare-fun m!1144347 () Bool)

(assert (=> b!1241151 m!1144347))

(assert (=> b!1241063 d!136347))

(declare-fun b!1241245 () Bool)

(declare-fun c!121360 () Bool)

(assert (=> b!1241245 (= c!121360 (and (is-Cons!27503 (removeStrictlySorted!125 (t!40977 l!644) key2!15)) (bvsgt (_1!10202 (h!28712 (removeStrictlySorted!125 (t!40977 l!644) key2!15))) key1!25)))))

(declare-fun e!703577 () List!27507)

(declare-fun e!703580 () List!27507)

(assert (=> b!1241245 (= e!703577 e!703580)))

(declare-fun bm!61219 () Bool)

(declare-fun call!61222 () List!27507)

(declare-fun call!61224 () List!27507)

(assert (=> bm!61219 (= call!61222 call!61224)))

(declare-fun b!1241246 () Bool)

(declare-fun e!703579 () Bool)

(declare-fun lt!562060 () List!27507)

(declare-fun contains!7404 (List!27507 tuple2!20384) Bool)

(assert (=> b!1241246 (= e!703579 (contains!7404 lt!562060 (tuple2!20385 key1!25 v1!20)))))

(declare-fun b!1241247 () Bool)

(declare-fun e!703581 () List!27507)

(assert (=> b!1241247 (= e!703581 e!703577)))

(declare-fun c!121359 () Bool)

(assert (=> b!1241247 (= c!121359 (and (is-Cons!27503 (removeStrictlySorted!125 (t!40977 l!644) key2!15)) (= (_1!10202 (h!28712 (removeStrictlySorted!125 (t!40977 l!644) key2!15))) key1!25)))))

(declare-fun e!703578 () List!27507)

(declare-fun b!1241248 () Bool)

(assert (=> b!1241248 (= e!703578 (insertStrictlySorted!431 (t!40977 (removeStrictlySorted!125 (t!40977 l!644) key2!15)) key1!25 v1!20))))

(declare-fun b!1241249 () Bool)

(assert (=> b!1241249 (= e!703577 call!61222)))

(declare-fun b!1241250 () Bool)

(assert (=> b!1241250 (= e!703578 (ite c!121359 (t!40977 (removeStrictlySorted!125 (t!40977 l!644) key2!15)) (ite c!121360 (Cons!27503 (h!28712 (removeStrictlySorted!125 (t!40977 l!644) key2!15)) (t!40977 (removeStrictlySorted!125 (t!40977 l!644) key2!15))) Nil!27504)))))

(declare-fun b!1241251 () Bool)

(declare-fun call!61223 () List!27507)

(assert (=> b!1241251 (= e!703580 call!61223)))

(declare-fun bm!61221 () Bool)

(declare-fun c!121357 () Bool)

(assert (=> bm!61221 (= call!61224 ($colon$colon!622 e!703578 (ite c!121357 (h!28712 (removeStrictlySorted!125 (t!40977 l!644) key2!15)) (tuple2!20385 key1!25 v1!20))))))

(declare-fun c!121358 () Bool)

(assert (=> bm!61221 (= c!121358 c!121357)))

(declare-fun b!1241252 () Bool)

(assert (=> b!1241252 (= e!703580 call!61223)))

(declare-fun bm!61220 () Bool)

(assert (=> bm!61220 (= call!61223 call!61222)))

(declare-fun d!136355 () Bool)

(assert (=> d!136355 e!703579))

(declare-fun res!828121 () Bool)

(assert (=> d!136355 (=> (not res!828121) (not e!703579))))

(assert (=> d!136355 (= res!828121 (isStrictlySorted!741 lt!562060))))

(assert (=> d!136355 (= lt!562060 e!703581)))

(assert (=> d!136355 (= c!121357 (and (is-Cons!27503 (removeStrictlySorted!125 (t!40977 l!644) key2!15)) (bvslt (_1!10202 (h!28712 (removeStrictlySorted!125 (t!40977 l!644) key2!15))) key1!25)))))

(assert (=> d!136355 (isStrictlySorted!741 (removeStrictlySorted!125 (t!40977 l!644) key2!15))))

(assert (=> d!136355 (= (insertStrictlySorted!431 (removeStrictlySorted!125 (t!40977 l!644) key2!15) key1!25 v1!20) lt!562060)))

(declare-fun b!1241253 () Bool)

(declare-fun res!828122 () Bool)

(assert (=> b!1241253 (=> (not res!828122) (not e!703579))))

(assert (=> b!1241253 (= res!828122 (containsKey!605 lt!562060 key1!25))))

(declare-fun b!1241254 () Bool)

(assert (=> b!1241254 (= e!703581 call!61224)))

(assert (= (and d!136355 c!121357) b!1241254))

(assert (= (and d!136355 (not c!121357)) b!1241247))

(assert (= (and b!1241247 c!121359) b!1241249))

(assert (= (and b!1241247 (not c!121359)) b!1241245))

(assert (= (and b!1241245 c!121360) b!1241251))

(assert (= (and b!1241245 (not c!121360)) b!1241252))

(assert (= (or b!1241251 b!1241252) bm!61220))

(assert (= (or b!1241249 bm!61220) bm!61219))

(assert (= (or b!1241254 bm!61219) bm!61221))

(assert (= (and bm!61221 c!121358) b!1241248))

(assert (= (and bm!61221 (not c!121358)) b!1241250))

(assert (= (and d!136355 res!828121) b!1241253))

(assert (= (and b!1241253 res!828122) b!1241246))

(declare-fun m!1144379 () Bool)

(assert (=> d!136355 m!1144379))

(assert (=> d!136355 m!1144279))

(declare-fun m!1144383 () Bool)

(assert (=> d!136355 m!1144383))

(declare-fun m!1144385 () Bool)

(assert (=> b!1241246 m!1144385))

(declare-fun m!1144387 () Bool)

(assert (=> bm!61221 m!1144387))

(declare-fun m!1144389 () Bool)

(assert (=> b!1241248 m!1144389))

(declare-fun m!1144391 () Bool)

(assert (=> b!1241253 m!1144391))

(assert (=> b!1241063 d!136355))

(declare-fun d!136365 () Bool)

(declare-fun res!828125 () Bool)

(declare-fun e!703587 () Bool)

(assert (=> d!136365 (=> res!828125 e!703587)))

(assert (=> d!136365 (= res!828125 (or (is-Nil!27504 (insertStrictlySorted!431 l!644 key1!25 v1!20)) (is-Nil!27504 (t!40977 (insertStrictlySorted!431 l!644 key1!25 v1!20)))))))

(assert (=> d!136365 (= (isStrictlySorted!741 (insertStrictlySorted!431 l!644 key1!25 v1!20)) e!703587)))

(declare-fun b!1241265 () Bool)

(declare-fun e!703588 () Bool)

(assert (=> b!1241265 (= e!703587 e!703588)))

(declare-fun res!828126 () Bool)

(assert (=> b!1241265 (=> (not res!828126) (not e!703588))))

(assert (=> b!1241265 (= res!828126 (bvslt (_1!10202 (h!28712 (insertStrictlySorted!431 l!644 key1!25 v1!20))) (_1!10202 (h!28712 (t!40977 (insertStrictlySorted!431 l!644 key1!25 v1!20))))))))

(declare-fun b!1241266 () Bool)

(assert (=> b!1241266 (= e!703588 (isStrictlySorted!741 (t!40977 (insertStrictlySorted!431 l!644 key1!25 v1!20))))))

(assert (= (and d!136365 (not res!828125)) b!1241265))

(assert (= (and b!1241265 res!828126) b!1241266))

(declare-fun m!1144405 () Bool)

(assert (=> b!1241266 m!1144405))

(assert (=> b!1241063 d!136365))

(declare-fun b!1241267 () Bool)

(declare-fun c!121368 () Bool)

(assert (=> b!1241267 (= c!121368 (and (is-Cons!27503 l!644) (bvsgt (_1!10202 (h!28712 l!644)) key1!25)))))

(declare-fun e!703589 () List!27507)

(declare-fun e!703592 () List!27507)

(assert (=> b!1241267 (= e!703589 e!703592)))

(declare-fun bm!61225 () Bool)

(declare-fun call!61228 () List!27507)

(declare-fun call!61230 () List!27507)

(assert (=> bm!61225 (= call!61228 call!61230)))

(declare-fun lt!562062 () List!27507)

(declare-fun b!1241268 () Bool)

(declare-fun e!703591 () Bool)

(assert (=> b!1241268 (= e!703591 (contains!7404 lt!562062 (tuple2!20385 key1!25 v1!20)))))

(declare-fun b!1241269 () Bool)

(declare-fun e!703593 () List!27507)

(assert (=> b!1241269 (= e!703593 e!703589)))

(declare-fun c!121367 () Bool)

(assert (=> b!1241269 (= c!121367 (and (is-Cons!27503 l!644) (= (_1!10202 (h!28712 l!644)) key1!25)))))

(declare-fun e!703590 () List!27507)

(declare-fun b!1241270 () Bool)

(assert (=> b!1241270 (= e!703590 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20))))

(declare-fun b!1241272 () Bool)

(assert (=> b!1241272 (= e!703589 call!61228)))

(declare-fun b!1241274 () Bool)

(assert (=> b!1241274 (= e!703590 (ite c!121367 (t!40977 l!644) (ite c!121368 (Cons!27503 (h!28712 l!644) (t!40977 l!644)) Nil!27504)))))

(declare-fun b!1241275 () Bool)

(declare-fun call!61229 () List!27507)

(assert (=> b!1241275 (= e!703592 call!61229)))

(declare-fun bm!61227 () Bool)

(declare-fun c!121365 () Bool)

(assert (=> bm!61227 (= call!61230 ($colon$colon!622 e!703590 (ite c!121365 (h!28712 l!644) (tuple2!20385 key1!25 v1!20))))))

(declare-fun c!121366 () Bool)

(assert (=> bm!61227 (= c!121366 c!121365)))

(declare-fun b!1241276 () Bool)

(assert (=> b!1241276 (= e!703592 call!61229)))

(declare-fun bm!61226 () Bool)

(assert (=> bm!61226 (= call!61229 call!61228)))

(declare-fun d!136369 () Bool)

(assert (=> d!136369 e!703591))

(declare-fun res!828127 () Bool)

(assert (=> d!136369 (=> (not res!828127) (not e!703591))))

(assert (=> d!136369 (= res!828127 (isStrictlySorted!741 lt!562062))))

(assert (=> d!136369 (= lt!562062 e!703593)))

(assert (=> d!136369 (= c!121365 (and (is-Cons!27503 l!644) (bvslt (_1!10202 (h!28712 l!644)) key1!25)))))

(assert (=> d!136369 (isStrictlySorted!741 l!644)))

(assert (=> d!136369 (= (insertStrictlySorted!431 l!644 key1!25 v1!20) lt!562062)))

(declare-fun b!1241277 () Bool)

(declare-fun res!828128 () Bool)

(assert (=> b!1241277 (=> (not res!828128) (not e!703591))))

(assert (=> b!1241277 (= res!828128 (containsKey!605 lt!562062 key1!25))))

(declare-fun b!1241278 () Bool)

(assert (=> b!1241278 (= e!703593 call!61230)))

(assert (= (and d!136369 c!121365) b!1241278))

(assert (= (and d!136369 (not c!121365)) b!1241269))

(assert (= (and b!1241269 c!121367) b!1241272))

(assert (= (and b!1241269 (not c!121367)) b!1241267))

(assert (= (and b!1241267 c!121368) b!1241275))

(assert (= (and b!1241267 (not c!121368)) b!1241276))

(assert (= (or b!1241275 b!1241276) bm!61226))

(assert (= (or b!1241272 bm!61226) bm!61225))

(assert (= (or b!1241278 bm!61225) bm!61227))

(assert (= (and bm!61227 c!121366) b!1241270))

(assert (= (and bm!61227 (not c!121366)) b!1241274))

(assert (= (and d!136369 res!828127) b!1241277))

(assert (= (and b!1241277 res!828128) b!1241268))

(declare-fun m!1144409 () Bool)

(assert (=> d!136369 m!1144409))

(assert (=> d!136369 m!1144285))

(declare-fun m!1144411 () Bool)

(assert (=> b!1241268 m!1144411))

(declare-fun m!1144413 () Bool)

(assert (=> bm!61227 m!1144413))

(assert (=> b!1241270 m!1144275))

(declare-fun m!1144415 () Bool)

(assert (=> b!1241277 m!1144415))

(assert (=> b!1241063 d!136369))

(declare-fun d!136373 () Bool)

(assert (=> d!136373 (= (insertStrictlySorted!431 (removeStrictlySorted!125 (t!40977 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!125 (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20) key2!15))))

(declare-fun lt!562072 () Unit!41197)

(declare-fun choose!1847 (List!27507 (_ BitVec 64) B!1832 (_ BitVec 64)) Unit!41197)

(assert (=> d!136373 (= lt!562072 (choose!1847 (t!40977 l!644) key1!25 v1!20 key2!15))))

(assert (=> d!136373 (not (= key1!25 key2!15))))

(assert (=> d!136373 (= (lemmaInsertAndRemoveStrictlySortedCommutative!13 (t!40977 l!644) key1!25 v1!20 key2!15) lt!562072)))

(declare-fun bs!34940 () Bool)

(assert (= bs!34940 d!136373))

(assert (=> bs!34940 m!1144275))

(assert (=> bs!34940 m!1144277))

(assert (=> bs!34940 m!1144275))

(assert (=> bs!34940 m!1144279))

(assert (=> bs!34940 m!1144279))

(assert (=> bs!34940 m!1144281))

(declare-fun m!1144437 () Bool)

(assert (=> bs!34940 m!1144437))

(assert (=> b!1241063 d!136373))

(declare-fun b!1241304 () Bool)

(declare-fun c!121382 () Bool)

(assert (=> b!1241304 (= c!121382 (and (is-Cons!27503 (t!40977 l!644)) (bvsgt (_1!10202 (h!28712 (t!40977 l!644))) key1!25)))))

(declare-fun e!703609 () List!27507)

(declare-fun e!703612 () List!27507)

(assert (=> b!1241304 (= e!703609 e!703612)))

(declare-fun bm!61234 () Bool)

(declare-fun call!61237 () List!27507)

(declare-fun call!61239 () List!27507)

(assert (=> bm!61234 (= call!61237 call!61239)))

(declare-fun lt!562075 () List!27507)

(declare-fun e!703611 () Bool)

(declare-fun b!1241305 () Bool)

(assert (=> b!1241305 (= e!703611 (contains!7404 lt!562075 (tuple2!20385 key1!25 v1!20)))))

(declare-fun b!1241306 () Bool)

(declare-fun e!703613 () List!27507)

(assert (=> b!1241306 (= e!703613 e!703609)))

(declare-fun c!121381 () Bool)

(assert (=> b!1241306 (= c!121381 (and (is-Cons!27503 (t!40977 l!644)) (= (_1!10202 (h!28712 (t!40977 l!644))) key1!25)))))

(declare-fun e!703610 () List!27507)

(declare-fun b!1241307 () Bool)

(assert (=> b!1241307 (= e!703610 (insertStrictlySorted!431 (t!40977 (t!40977 l!644)) key1!25 v1!20))))

(declare-fun b!1241308 () Bool)

(assert (=> b!1241308 (= e!703609 call!61237)))

(declare-fun b!1241309 () Bool)

(assert (=> b!1241309 (= e!703610 (ite c!121381 (t!40977 (t!40977 l!644)) (ite c!121382 (Cons!27503 (h!28712 (t!40977 l!644)) (t!40977 (t!40977 l!644))) Nil!27504)))))

(declare-fun b!1241310 () Bool)

(declare-fun call!61238 () List!27507)

(assert (=> b!1241310 (= e!703612 call!61238)))

(declare-fun c!121379 () Bool)

(declare-fun bm!61236 () Bool)

(assert (=> bm!61236 (= call!61239 ($colon$colon!622 e!703610 (ite c!121379 (h!28712 (t!40977 l!644)) (tuple2!20385 key1!25 v1!20))))))

(declare-fun c!121380 () Bool)

(assert (=> bm!61236 (= c!121380 c!121379)))

(declare-fun b!1241311 () Bool)

(assert (=> b!1241311 (= e!703612 call!61238)))

(declare-fun bm!61235 () Bool)

(assert (=> bm!61235 (= call!61238 call!61237)))

(declare-fun d!136381 () Bool)

(assert (=> d!136381 e!703611))

(declare-fun res!828136 () Bool)

(assert (=> d!136381 (=> (not res!828136) (not e!703611))))

(assert (=> d!136381 (= res!828136 (isStrictlySorted!741 lt!562075))))

(assert (=> d!136381 (= lt!562075 e!703613)))

(assert (=> d!136381 (= c!121379 (and (is-Cons!27503 (t!40977 l!644)) (bvslt (_1!10202 (h!28712 (t!40977 l!644))) key1!25)))))

(assert (=> d!136381 (isStrictlySorted!741 (t!40977 l!644))))

(assert (=> d!136381 (= (insertStrictlySorted!431 (t!40977 l!644) key1!25 v1!20) lt!562075)))

(declare-fun b!1241312 () Bool)

(declare-fun res!828137 () Bool)

(assert (=> b!1241312 (=> (not res!828137) (not e!703611))))

(assert (=> b!1241312 (= res!828137 (containsKey!605 lt!562075 key1!25))))

(declare-fun b!1241313 () Bool)

(assert (=> b!1241313 (= e!703613 call!61239)))

(assert (= (and d!136381 c!121379) b!1241313))

(assert (= (and d!136381 (not c!121379)) b!1241306))

(assert (= (and b!1241306 c!121381) b!1241308))

(assert (= (and b!1241306 (not c!121381)) b!1241304))

(assert (= (and b!1241304 c!121382) b!1241310))

(assert (= (and b!1241304 (not c!121382)) b!1241311))

(assert (= (or b!1241310 b!1241311) bm!61235))

(assert (= (or b!1241308 bm!61235) bm!61234))

(assert (= (or b!1241313 bm!61234) bm!61236))

(assert (= (and bm!61236 c!121380) b!1241307))

(assert (= (and bm!61236 (not c!121380)) b!1241309))

(assert (= (and d!136381 res!828136) b!1241312))

(assert (= (and b!1241312 res!828137) b!1241305))

(declare-fun m!1144451 () Bool)

(assert (=> d!136381 m!1144451))

(assert (=> d!136381 m!1144287))

(declare-fun m!1144453 () Bool)

(assert (=> b!1241305 m!1144453))

(declare-fun m!1144455 () Bool)

(assert (=> bm!61236 m!1144455))

(declare-fun m!1144457 () Bool)

(assert (=> b!1241307 m!1144457))

(declare-fun m!1144459 () Bool)

(assert (=> b!1241312 m!1144459))

(assert (=> b!1241063 d!136381))

(declare-fun b!1241332 () Bool)

(declare-fun e!703627 () List!27507)

(assert (=> b!1241332 (= e!703627 (t!40977 (t!40977 l!644)))))

(declare-fun b!1241333 () Bool)

(declare-fun e!703625 () List!27507)

(assert (=> b!1241333 (= e!703625 Nil!27504)))

(declare-fun b!1241335 () Bool)

(assert (=> b!1241335 (= e!703627 e!703625)))

(declare-fun c!121388 () Bool)

(assert (=> b!1241335 (= c!121388 (and (is-Cons!27503 (t!40977 l!644)) (not (= (_1!10202 (h!28712 (t!40977 l!644))) key2!15))))))

(declare-fun b!1241336 () Bool)

(declare-fun e!703626 () Bool)

(declare-fun lt!562077 () List!27507)

(assert (=> b!1241336 (= e!703626 (not (containsKey!605 lt!562077 key2!15)))))

(declare-fun d!136389 () Bool)

(assert (=> d!136389 e!703626))

(declare-fun res!828144 () Bool)

(assert (=> d!136389 (=> (not res!828144) (not e!703626))))

(assert (=> d!136389 (= res!828144 (isStrictlySorted!741 lt!562077))))

(assert (=> d!136389 (= lt!562077 e!703627)))

(declare-fun c!121387 () Bool)

(assert (=> d!136389 (= c!121387 (and (is-Cons!27503 (t!40977 l!644)) (= (_1!10202 (h!28712 (t!40977 l!644))) key2!15)))))

(assert (=> d!136389 (isStrictlySorted!741 (t!40977 l!644))))

(assert (=> d!136389 (= (removeStrictlySorted!125 (t!40977 l!644) key2!15) lt!562077)))

(declare-fun b!1241334 () Bool)

(assert (=> b!1241334 (= e!703625 ($colon$colon!622 (removeStrictlySorted!125 (t!40977 (t!40977 l!644)) key2!15) (h!28712 (t!40977 l!644))))))

(assert (= (and d!136389 c!121387) b!1241332))

(assert (= (and d!136389 (not c!121387)) b!1241335))

(assert (= (and b!1241335 c!121388) b!1241334))

(assert (= (and b!1241335 (not c!121388)) b!1241333))

(assert (= (and d!136389 res!828144) b!1241336))

(declare-fun m!1144471 () Bool)

(assert (=> b!1241336 m!1144471))

(declare-fun m!1144473 () Bool)

(assert (=> d!136389 m!1144473))

(assert (=> d!136389 m!1144287))

(declare-fun m!1144475 () Bool)

(assert (=> b!1241334 m!1144475))

(assert (=> b!1241334 m!1144475))

(declare-fun m!1144477 () Bool)

(assert (=> b!1241334 m!1144477))

(assert (=> b!1241063 d!136389))

(declare-fun b!1241351 () Bool)

(declare-fun e!703636 () Bool)

(declare-fun tp!92624 () Bool)

(assert (=> b!1241351 (= e!703636 (and tp_is_empty!31231 tp!92624))))

(assert (=> b!1241065 (= tp!92610 e!703636)))

(assert (= (and b!1241065 (is-Cons!27503 (t!40977 l!644))) b!1241351))

(push 1)

