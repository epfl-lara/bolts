; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429842 () Bool)

(assert start!429842)

(declare-datatypes ((V!11026 0))(
  ( (V!11027 (val!16895 Int)) )
))
(declare-fun newValue!93 () V!11026)

(declare-datatypes ((K!10780 0))(
  ( (K!10781 (val!16896 Int)) )
))
(declare-fun key!3717 () K!10780)

(declare-fun b!4414669 () Bool)

(declare-fun e!2749054 () Bool)

(declare-datatypes ((tuple2!49110 0))(
  ( (tuple2!49111 (_1!27849 K!10780) (_2!27849 V!11026)) )
))
(declare-datatypes ((List!49545 0))(
  ( (Nil!49421) (Cons!49421 (h!55076 tuple2!49110) (t!356483 List!49545)) )
))
(declare-fun newBucket!194 () List!49545)

(declare-fun lt!1616471 () Bool)

(assert (=> b!4414669 (= e!2749054 (and (not lt!1616471) (= newBucket!194 (Cons!49421 (tuple2!49111 key!3717 newValue!93) Nil!49421))))))

(declare-fun b!4414670 () Bool)

(declare-fun res!1823094 () Bool)

(declare-fun e!2749049 () Bool)

(assert (=> b!4414670 (=> (not res!1823094) (not e!2749049))))

(declare-datatypes ((tuple2!49112 0))(
  ( (tuple2!49113 (_1!27850 (_ BitVec 64)) (_2!27850 List!49545)) )
))
(declare-datatypes ((List!49546 0))(
  ( (Nil!49422) (Cons!49422 (h!55077 tuple2!49112) (t!356484 List!49546)) )
))
(declare-datatypes ((ListLongMap!2003 0))(
  ( (ListLongMap!2004 (toList!3353 List!49546)) )
))
(declare-fun lm!1616 () ListLongMap!2003)

(declare-datatypes ((ListMap!2597 0))(
  ( (ListMap!2598 (toList!3354 List!49545)) )
))
(declare-fun contains!11867 (ListMap!2597 K!10780) Bool)

(declare-fun extractMap!744 (List!49546) ListMap!2597)

(assert (=> b!4414670 (= res!1823094 (not (contains!11867 (extractMap!744 (toList!3353 lm!1616)) key!3717)))))

(declare-fun b!4414671 () Bool)

(declare-fun res!1823090 () Bool)

(assert (=> b!4414671 (=> (not res!1823090) (not e!2749049))))

(declare-datatypes ((Hashable!5077 0))(
  ( (HashableExt!5076 (__x!30780 Int)) )
))
(declare-fun hashF!1220 () Hashable!5077)

(declare-fun allKeysSameHashInMap!789 (ListLongMap!2003 Hashable!5077) Bool)

(assert (=> b!4414671 (= res!1823090 (allKeysSameHashInMap!789 lm!1616 hashF!1220))))

(declare-fun b!4414672 () Bool)

(declare-fun res!1823097 () Bool)

(declare-fun e!2749058 () Bool)

(assert (=> b!4414672 (=> res!1823097 e!2749058)))

(declare-fun lt!1616469 () Bool)

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4414672 (= res!1823097 (or (not ((_ is Cons!49422) (toList!3353 lm!1616))) (not (= (_1!27850 (h!55077 (toList!3353 lm!1616))) hash!366)) lt!1616469))))

(declare-fun b!4414673 () Bool)

(declare-fun res!1823093 () Bool)

(assert (=> b!4414673 (=> res!1823093 e!2749058)))

(declare-fun lt!1616470 () ListLongMap!2003)

(declare-fun tail!7171 (List!49546) List!49546)

(assert (=> b!4414673 (= res!1823093 (not (= (tail!7171 (toList!3353 lt!1616470)) (t!356484 (toList!3353 lm!1616)))))))

(declare-fun b!4414674 () Bool)

(declare-fun e!2749053 () Bool)

(declare-fun e!2749051 () Bool)

(assert (=> b!4414674 (= e!2749053 e!2749051)))

(declare-fun res!1823083 () Bool)

(assert (=> b!4414674 (=> res!1823083 e!2749051)))

(declare-fun lt!1616472 () tuple2!49110)

(declare-fun lt!1616467 () List!49545)

(assert (=> b!4414674 (= res!1823083 (not (= newBucket!194 (Cons!49421 lt!1616472 lt!1616467))))))

(declare-fun apply!11535 (ListLongMap!2003 (_ BitVec 64)) List!49545)

(assert (=> b!4414674 (= lt!1616467 (apply!11535 lm!1616 hash!366))))

(assert (=> b!4414674 (= lt!1616472 (tuple2!49111 key!3717 newValue!93))))

(declare-fun b!4414675 () Bool)

(declare-fun e!2749050 () Bool)

(assert (=> b!4414675 (= e!2749051 e!2749050)))

(declare-fun res!1823095 () Bool)

(assert (=> b!4414675 (=> res!1823095 e!2749050)))

(declare-fun lt!1616473 () ListMap!2597)

(declare-fun lt!1616465 () ListMap!2597)

(assert (=> b!4414675 (= res!1823095 (not (= lt!1616473 lt!1616465)))))

(declare-fun lt!1616462 () ListMap!2597)

(declare-fun addToMapMapFromBucket!337 (List!49545 ListMap!2597) ListMap!2597)

(declare-fun +!966 (ListMap!2597 tuple2!49110) ListMap!2597)

(assert (=> b!4414675 (= lt!1616465 (addToMapMapFromBucket!337 lt!1616467 (+!966 lt!1616462 lt!1616472)))))

(declare-fun res!1823096 () Bool)

(assert (=> start!429842 (=> (not res!1823096) (not e!2749049))))

(declare-fun lambda!151566 () Int)

(declare-fun forall!9460 (List!49546 Int) Bool)

(assert (=> start!429842 (= res!1823096 (forall!9460 (toList!3353 lm!1616) lambda!151566))))

(assert (=> start!429842 e!2749049))

(declare-fun tp_is_empty!25977 () Bool)

(assert (=> start!429842 tp_is_empty!25977))

(declare-fun tp_is_empty!25979 () Bool)

(assert (=> start!429842 tp_is_empty!25979))

(declare-fun e!2749056 () Bool)

(assert (=> start!429842 e!2749056))

(declare-fun e!2749057 () Bool)

(declare-fun inv!64966 (ListLongMap!2003) Bool)

(assert (=> start!429842 (and (inv!64966 lm!1616) e!2749057)))

(assert (=> start!429842 true))

(declare-fun e!2749052 () Bool)

(declare-fun b!4414676 () Bool)

(assert (=> b!4414676 (= e!2749052 (= newBucket!194 (Cons!49421 (tuple2!49111 key!3717 newValue!93) (apply!11535 lm!1616 hash!366))))))

(declare-fun b!4414677 () Bool)

(declare-fun res!1823091 () Bool)

(declare-fun e!2749055 () Bool)

(assert (=> b!4414677 (=> (not res!1823091) (not e!2749055))))

(assert (=> b!4414677 (= res!1823091 (forall!9460 (toList!3353 lm!1616) lambda!151566))))

(declare-fun b!4414678 () Bool)

(assert (=> b!4414678 (= e!2749058 e!2749053)))

(declare-fun res!1823087 () Bool)

(assert (=> b!4414678 (=> res!1823087 e!2749053)))

(declare-fun lt!1616468 () ListMap!2597)

(assert (=> b!4414678 (= res!1823087 (not (= lt!1616468 lt!1616473)))))

(assert (=> b!4414678 (= lt!1616473 (addToMapMapFromBucket!337 newBucket!194 lt!1616462))))

(assert (=> b!4414678 (= lt!1616468 (extractMap!744 (toList!3353 lt!1616470)))))

(assert (=> b!4414678 (= lt!1616462 (extractMap!744 (t!356484 (toList!3353 lm!1616))))))

(declare-fun b!4414679 () Bool)

(assert (=> b!4414679 (= e!2749050 (forall!9460 (t!356484 (toList!3353 lm!1616)) lambda!151566))))

(declare-fun eq!359 (ListMap!2597 ListMap!2597) Bool)

(assert (=> b!4414679 (eq!359 lt!1616465 (+!966 (addToMapMapFromBucket!337 lt!1616467 lt!1616462) lt!1616472))))

(declare-datatypes ((Unit!80663 0))(
  ( (Unit!80664) )
))
(declare-fun lt!1616463 () Unit!80663)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!154 (ListMap!2597 K!10780 V!11026 List!49545) Unit!80663)

(assert (=> b!4414679 (= lt!1616463 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!154 lt!1616462 key!3717 newValue!93 lt!1616467))))

(declare-fun b!4414680 () Bool)

(assert (=> b!4414680 (= e!2749049 e!2749055)))

(declare-fun res!1823088 () Bool)

(assert (=> b!4414680 (=> (not res!1823088) (not e!2749055))))

(assert (=> b!4414680 (= res!1823088 e!2749054)))

(declare-fun res!1823086 () Bool)

(assert (=> b!4414680 (=> res!1823086 e!2749054)))

(assert (=> b!4414680 (= res!1823086 e!2749052)))

(declare-fun res!1823089 () Bool)

(assert (=> b!4414680 (=> (not res!1823089) (not e!2749052))))

(assert (=> b!4414680 (= res!1823089 (not lt!1616469))))

(assert (=> b!4414680 (= lt!1616469 (not lt!1616471))))

(declare-fun contains!11868 (ListLongMap!2003 (_ BitVec 64)) Bool)

(assert (=> b!4414680 (= lt!1616471 (contains!11868 lm!1616 hash!366))))

(declare-fun b!4414681 () Bool)

(declare-fun res!1823099 () Bool)

(assert (=> b!4414681 (=> (not res!1823099) (not e!2749049))))

(declare-fun allKeysSameHash!643 (List!49545 (_ BitVec 64) Hashable!5077) Bool)

(assert (=> b!4414681 (= res!1823099 (allKeysSameHash!643 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4414682 () Bool)

(declare-fun res!1823084 () Bool)

(assert (=> b!4414682 (=> (not res!1823084) (not e!2749055))))

(declare-fun noDuplicateKeys!683 (List!49545) Bool)

(assert (=> b!4414682 (= res!1823084 (noDuplicateKeys!683 newBucket!194))))

(declare-fun b!4414683 () Bool)

(declare-fun res!1823092 () Bool)

(assert (=> b!4414683 (=> res!1823092 e!2749058)))

(declare-fun lt!1616466 () tuple2!49112)

(declare-fun head!9162 (List!49546) tuple2!49112)

(assert (=> b!4414683 (= res!1823092 (not (= (head!9162 (toList!3353 lt!1616470)) lt!1616466)))))

(declare-fun b!4414684 () Bool)

(assert (=> b!4414684 (= e!2749055 (not e!2749058))))

(declare-fun res!1823098 () Bool)

(assert (=> b!4414684 (=> res!1823098 e!2749058)))

(assert (=> b!4414684 (= res!1823098 (not (forall!9460 (toList!3353 lt!1616470) lambda!151566)))))

(assert (=> b!4414684 (forall!9460 (toList!3353 lt!1616470) lambda!151566)))

(declare-fun +!967 (ListLongMap!2003 tuple2!49112) ListLongMap!2003)

(assert (=> b!4414684 (= lt!1616470 (+!967 lm!1616 lt!1616466))))

(assert (=> b!4414684 (= lt!1616466 (tuple2!49113 hash!366 newBucket!194))))

(declare-fun lt!1616464 () Unit!80663)

(declare-fun addValidProp!327 (ListLongMap!2003 Int (_ BitVec 64) List!49545) Unit!80663)

(assert (=> b!4414684 (= lt!1616464 (addValidProp!327 lm!1616 lambda!151566 hash!366 newBucket!194))))

(declare-fun b!4414685 () Bool)

(declare-fun tp!1332487 () Bool)

(assert (=> b!4414685 (= e!2749057 tp!1332487)))

(declare-fun b!4414686 () Bool)

(declare-fun res!1823085 () Bool)

(assert (=> b!4414686 (=> (not res!1823085) (not e!2749049))))

(declare-fun hash!1992 (Hashable!5077 K!10780) (_ BitVec 64))

(assert (=> b!4414686 (= res!1823085 (= (hash!1992 hashF!1220 key!3717) hash!366))))

(declare-fun b!4414687 () Bool)

(declare-fun tp!1332488 () Bool)

(assert (=> b!4414687 (= e!2749056 (and tp_is_empty!25979 tp_is_empty!25977 tp!1332488))))

(assert (= (and start!429842 res!1823096) b!4414671))

(assert (= (and b!4414671 res!1823090) b!4414686))

(assert (= (and b!4414686 res!1823085) b!4414681))

(assert (= (and b!4414681 res!1823099) b!4414670))

(assert (= (and b!4414670 res!1823094) b!4414680))

(assert (= (and b!4414680 res!1823089) b!4414676))

(assert (= (and b!4414680 (not res!1823086)) b!4414669))

(assert (= (and b!4414680 res!1823088) b!4414682))

(assert (= (and b!4414682 res!1823084) b!4414677))

(assert (= (and b!4414677 res!1823091) b!4414684))

(assert (= (and b!4414684 (not res!1823098)) b!4414672))

(assert (= (and b!4414672 (not res!1823097)) b!4414683))

(assert (= (and b!4414683 (not res!1823092)) b!4414673))

(assert (= (and b!4414673 (not res!1823093)) b!4414678))

(assert (= (and b!4414678 (not res!1823087)) b!4414674))

(assert (= (and b!4414674 (not res!1823083)) b!4414675))

(assert (= (and b!4414675 (not res!1823095)) b!4414679))

(assert (= (and start!429842 ((_ is Cons!49421) newBucket!194)) b!4414687))

(assert (= start!429842 b!4414685))

(declare-fun m!5090341 () Bool)

(assert (=> b!4414673 m!5090341))

(declare-fun m!5090343 () Bool)

(assert (=> b!4414686 m!5090343))

(declare-fun m!5090345 () Bool)

(assert (=> b!4414675 m!5090345))

(assert (=> b!4414675 m!5090345))

(declare-fun m!5090347 () Bool)

(assert (=> b!4414675 m!5090347))

(declare-fun m!5090349 () Bool)

(assert (=> b!4414678 m!5090349))

(declare-fun m!5090351 () Bool)

(assert (=> b!4414678 m!5090351))

(declare-fun m!5090353 () Bool)

(assert (=> b!4414678 m!5090353))

(declare-fun m!5090355 () Bool)

(assert (=> b!4414684 m!5090355))

(assert (=> b!4414684 m!5090355))

(declare-fun m!5090357 () Bool)

(assert (=> b!4414684 m!5090357))

(declare-fun m!5090359 () Bool)

(assert (=> b!4414684 m!5090359))

(declare-fun m!5090361 () Bool)

(assert (=> b!4414679 m!5090361))

(declare-fun m!5090363 () Bool)

(assert (=> b!4414679 m!5090363))

(declare-fun m!5090365 () Bool)

(assert (=> b!4414679 m!5090365))

(declare-fun m!5090367 () Bool)

(assert (=> b!4414679 m!5090367))

(declare-fun m!5090369 () Bool)

(assert (=> b!4414679 m!5090369))

(assert (=> b!4414679 m!5090367))

(assert (=> b!4414679 m!5090361))

(declare-fun m!5090371 () Bool)

(assert (=> b!4414674 m!5090371))

(assert (=> b!4414676 m!5090371))

(declare-fun m!5090373 () Bool)

(assert (=> b!4414681 m!5090373))

(declare-fun m!5090375 () Bool)

(assert (=> b!4414670 m!5090375))

(assert (=> b!4414670 m!5090375))

(declare-fun m!5090377 () Bool)

(assert (=> b!4414670 m!5090377))

(declare-fun m!5090379 () Bool)

(assert (=> b!4414677 m!5090379))

(declare-fun m!5090381 () Bool)

(assert (=> b!4414671 m!5090381))

(assert (=> start!429842 m!5090379))

(declare-fun m!5090383 () Bool)

(assert (=> start!429842 m!5090383))

(declare-fun m!5090385 () Bool)

(assert (=> b!4414683 m!5090385))

(declare-fun m!5090387 () Bool)

(assert (=> b!4414680 m!5090387))

(declare-fun m!5090389 () Bool)

(assert (=> b!4414682 m!5090389))

(check-sat (not start!429842) tp_is_empty!25979 tp_is_empty!25977 (not b!4414673) (not b!4414679) (not b!4414678) (not b!4414676) (not b!4414674) (not b!4414686) (not b!4414685) (not b!4414670) (not b!4414682) (not b!4414677) (not b!4414675) (not b!4414684) (not b!4414681) (not b!4414671) (not b!4414680) (not b!4414687) (not b!4414683))
(check-sat)
(get-model)

(declare-fun d!1337664 () Bool)

(assert (=> d!1337664 (= (head!9162 (toList!3353 lt!1616470)) (h!55077 (toList!3353 lt!1616470)))))

(assert (=> b!4414683 d!1337664))

(declare-fun d!1337666 () Bool)

(declare-fun res!1823104 () Bool)

(declare-fun e!2749063 () Bool)

(assert (=> d!1337666 (=> res!1823104 e!2749063)))

(assert (=> d!1337666 (= res!1823104 (not ((_ is Cons!49421) newBucket!194)))))

(assert (=> d!1337666 (= (noDuplicateKeys!683 newBucket!194) e!2749063)))

(declare-fun b!4414692 () Bool)

(declare-fun e!2749064 () Bool)

(assert (=> b!4414692 (= e!2749063 e!2749064)))

(declare-fun res!1823105 () Bool)

(assert (=> b!4414692 (=> (not res!1823105) (not e!2749064))))

(declare-fun containsKey!1027 (List!49545 K!10780) Bool)

(assert (=> b!4414692 (= res!1823105 (not (containsKey!1027 (t!356483 newBucket!194) (_1!27849 (h!55076 newBucket!194)))))))

(declare-fun b!4414693 () Bool)

(assert (=> b!4414693 (= e!2749064 (noDuplicateKeys!683 (t!356483 newBucket!194)))))

(assert (= (and d!1337666 (not res!1823104)) b!4414692))

(assert (= (and b!4414692 res!1823105) b!4414693))

(declare-fun m!5090395 () Bool)

(assert (=> b!4414692 m!5090395))

(declare-fun m!5090397 () Bool)

(assert (=> b!4414693 m!5090397))

(assert (=> b!4414682 d!1337666))

(declare-fun bs!753145 () Bool)

(declare-fun d!1337668 () Bool)

(assert (= bs!753145 (and d!1337668 start!429842)))

(declare-fun lambda!151569 () Int)

(assert (=> bs!753145 (not (= lambda!151569 lambda!151566))))

(assert (=> d!1337668 true))

(assert (=> d!1337668 (= (allKeysSameHashInMap!789 lm!1616 hashF!1220) (forall!9460 (toList!3353 lm!1616) lambda!151569))))

(declare-fun bs!753146 () Bool)

(assert (= bs!753146 d!1337668))

(declare-fun m!5090399 () Bool)

(assert (=> bs!753146 m!5090399))

(assert (=> b!4414671 d!1337668))

(declare-fun d!1337670 () Bool)

(declare-fun res!1823110 () Bool)

(declare-fun e!2749069 () Bool)

(assert (=> d!1337670 (=> res!1823110 e!2749069)))

(assert (=> d!1337670 (= res!1823110 ((_ is Nil!49422) (toList!3353 lm!1616)))))

(assert (=> d!1337670 (= (forall!9460 (toList!3353 lm!1616) lambda!151566) e!2749069)))

(declare-fun b!4414700 () Bool)

(declare-fun e!2749070 () Bool)

(assert (=> b!4414700 (= e!2749069 e!2749070)))

(declare-fun res!1823111 () Bool)

(assert (=> b!4414700 (=> (not res!1823111) (not e!2749070))))

(declare-fun dynLambda!20807 (Int tuple2!49112) Bool)

(assert (=> b!4414700 (= res!1823111 (dynLambda!20807 lambda!151566 (h!55077 (toList!3353 lm!1616))))))

(declare-fun b!4414701 () Bool)

(assert (=> b!4414701 (= e!2749070 (forall!9460 (t!356484 (toList!3353 lm!1616)) lambda!151566))))

(assert (= (and d!1337670 (not res!1823110)) b!4414700))

(assert (= (and b!4414700 res!1823111) b!4414701))

(declare-fun b_lambda!142119 () Bool)

(assert (=> (not b_lambda!142119) (not b!4414700)))

(declare-fun m!5090401 () Bool)

(assert (=> b!4414700 m!5090401))

(assert (=> b!4414701 m!5090365))

(assert (=> start!429842 d!1337670))

(declare-fun d!1337672 () Bool)

(declare-fun isStrictlySorted!202 (List!49546) Bool)

(assert (=> d!1337672 (= (inv!64966 lm!1616) (isStrictlySorted!202 (toList!3353 lm!1616)))))

(declare-fun bs!753147 () Bool)

(assert (= bs!753147 d!1337672))

(declare-fun m!5090403 () Bool)

(assert (=> bs!753147 m!5090403))

(assert (=> start!429842 d!1337672))

(declare-fun d!1337674 () Bool)

(assert (=> d!1337674 true))

(assert (=> d!1337674 true))

(declare-fun lambda!151572 () Int)

(declare-fun forall!9462 (List!49545 Int) Bool)

(assert (=> d!1337674 (= (allKeysSameHash!643 newBucket!194 hash!366 hashF!1220) (forall!9462 newBucket!194 lambda!151572))))

(declare-fun bs!753148 () Bool)

(assert (= bs!753148 d!1337674))

(declare-fun m!5090405 () Bool)

(assert (=> bs!753148 m!5090405))

(assert (=> b!4414681 d!1337674))

(declare-fun d!1337676 () Bool)

(declare-fun e!2749087 () Bool)

(assert (=> d!1337676 e!2749087))

(declare-fun res!1823119 () Bool)

(assert (=> d!1337676 (=> res!1823119 e!2749087)))

(declare-fun e!2749084 () Bool)

(assert (=> d!1337676 (= res!1823119 e!2749084)))

(declare-fun res!1823120 () Bool)

(assert (=> d!1337676 (=> (not res!1823120) (not e!2749084))))

(declare-fun lt!1616493 () Bool)

(assert (=> d!1337676 (= res!1823120 (not lt!1616493))))

(declare-fun lt!1616499 () Bool)

(assert (=> d!1337676 (= lt!1616493 lt!1616499)))

(declare-fun lt!1616492 () Unit!80663)

(declare-fun e!2749086 () Unit!80663)

(assert (=> d!1337676 (= lt!1616492 e!2749086)))

(declare-fun c!751718 () Bool)

(assert (=> d!1337676 (= c!751718 lt!1616499)))

(declare-fun containsKey!1028 (List!49545 K!10780) Bool)

(assert (=> d!1337676 (= lt!1616499 (containsKey!1028 (toList!3354 (extractMap!744 (toList!3353 lm!1616))) key!3717))))

(assert (=> d!1337676 (= (contains!11867 (extractMap!744 (toList!3353 lm!1616)) key!3717) lt!1616493)))

(declare-fun b!4414728 () Bool)

(declare-datatypes ((List!49548 0))(
  ( (Nil!49424) (Cons!49424 (h!55081 K!10780) (t!356486 List!49548)) )
))
(declare-fun e!2749089 () List!49548)

(declare-fun getKeysList!224 (List!49545) List!49548)

(assert (=> b!4414728 (= e!2749089 (getKeysList!224 (toList!3354 (extractMap!744 (toList!3353 lm!1616)))))))

(declare-fun b!4414729 () Bool)

(declare-fun e!2749085 () Unit!80663)

(declare-fun Unit!80690 () Unit!80663)

(assert (=> b!4414729 (= e!2749085 Unit!80690)))

(declare-fun b!4414730 () Bool)

(assert (=> b!4414730 (= e!2749086 e!2749085)))

(declare-fun c!751720 () Bool)

(declare-fun call!307231 () Bool)

(assert (=> b!4414730 (= c!751720 call!307231)))

(declare-fun bm!307226 () Bool)

(declare-fun contains!11872 (List!49548 K!10780) Bool)

(assert (=> bm!307226 (= call!307231 (contains!11872 e!2749089 key!3717))))

(declare-fun c!751719 () Bool)

(assert (=> bm!307226 (= c!751719 c!751718)))

(declare-fun b!4414731 () Bool)

(declare-fun keys!16834 (ListMap!2597) List!49548)

(assert (=> b!4414731 (= e!2749084 (not (contains!11872 (keys!16834 (extractMap!744 (toList!3353 lm!1616))) key!3717)))))

(declare-fun b!4414732 () Bool)

(declare-fun e!2749083 () Bool)

(assert (=> b!4414732 (= e!2749083 (contains!11872 (keys!16834 (extractMap!744 (toList!3353 lm!1616))) key!3717))))

(declare-fun b!4414733 () Bool)

(assert (=> b!4414733 false))

(declare-fun lt!1616494 () Unit!80663)

(declare-fun lt!1616495 () Unit!80663)

(assert (=> b!4414733 (= lt!1616494 lt!1616495)))

(assert (=> b!4414733 (containsKey!1028 (toList!3354 (extractMap!744 (toList!3353 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!222 (List!49545 K!10780) Unit!80663)

(assert (=> b!4414733 (= lt!1616495 (lemmaInGetKeysListThenContainsKey!222 (toList!3354 (extractMap!744 (toList!3353 lm!1616))) key!3717))))

(declare-fun Unit!80691 () Unit!80663)

(assert (=> b!4414733 (= e!2749085 Unit!80691)))

(declare-fun b!4414734 () Bool)

(assert (=> b!4414734 (= e!2749089 (keys!16834 (extractMap!744 (toList!3353 lm!1616))))))

(declare-fun b!4414735 () Bool)

(declare-fun lt!1616496 () Unit!80663)

(assert (=> b!4414735 (= e!2749086 lt!1616496)))

(declare-fun lt!1616497 () Unit!80663)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!563 (List!49545 K!10780) Unit!80663)

(assert (=> b!4414735 (= lt!1616497 (lemmaContainsKeyImpliesGetValueByKeyDefined!563 (toList!3354 (extractMap!744 (toList!3353 lm!1616))) key!3717))))

(declare-datatypes ((Option!10667 0))(
  ( (None!10666) (Some!10666 (v!43826 V!11026)) )
))
(declare-fun isDefined!7960 (Option!10667) Bool)

(declare-fun getValueByKey!653 (List!49545 K!10780) Option!10667)

(assert (=> b!4414735 (isDefined!7960 (getValueByKey!653 (toList!3354 (extractMap!744 (toList!3353 lm!1616))) key!3717))))

(declare-fun lt!1616498 () Unit!80663)

(assert (=> b!4414735 (= lt!1616498 lt!1616497)))

(declare-fun lemmaInListThenGetKeysListContains!221 (List!49545 K!10780) Unit!80663)

(assert (=> b!4414735 (= lt!1616496 (lemmaInListThenGetKeysListContains!221 (toList!3354 (extractMap!744 (toList!3353 lm!1616))) key!3717))))

(assert (=> b!4414735 call!307231))

(declare-fun b!4414736 () Bool)

(assert (=> b!4414736 (= e!2749087 e!2749083)))

(declare-fun res!1823118 () Bool)

(assert (=> b!4414736 (=> (not res!1823118) (not e!2749083))))

(assert (=> b!4414736 (= res!1823118 (isDefined!7960 (getValueByKey!653 (toList!3354 (extractMap!744 (toList!3353 lm!1616))) key!3717)))))

(assert (= (and d!1337676 c!751718) b!4414735))

(assert (= (and d!1337676 (not c!751718)) b!4414730))

(assert (= (and b!4414730 c!751720) b!4414733))

(assert (= (and b!4414730 (not c!751720)) b!4414729))

(assert (= (or b!4414735 b!4414730) bm!307226))

(assert (= (and bm!307226 c!751719) b!4414728))

(assert (= (and bm!307226 (not c!751719)) b!4414734))

(assert (= (and d!1337676 res!1823120) b!4414731))

(assert (= (and d!1337676 (not res!1823119)) b!4414736))

(assert (= (and b!4414736 res!1823118) b!4414732))

(assert (=> b!4414734 m!5090375))

(declare-fun m!5090407 () Bool)

(assert (=> b!4414734 m!5090407))

(declare-fun m!5090409 () Bool)

(assert (=> bm!307226 m!5090409))

(declare-fun m!5090411 () Bool)

(assert (=> b!4414733 m!5090411))

(declare-fun m!5090413 () Bool)

(assert (=> b!4414733 m!5090413))

(assert (=> d!1337676 m!5090411))

(assert (=> b!4414731 m!5090375))

(assert (=> b!4414731 m!5090407))

(assert (=> b!4414731 m!5090407))

(declare-fun m!5090415 () Bool)

(assert (=> b!4414731 m!5090415))

(declare-fun m!5090417 () Bool)

(assert (=> b!4414735 m!5090417))

(declare-fun m!5090419 () Bool)

(assert (=> b!4414735 m!5090419))

(assert (=> b!4414735 m!5090419))

(declare-fun m!5090421 () Bool)

(assert (=> b!4414735 m!5090421))

(declare-fun m!5090423 () Bool)

(assert (=> b!4414735 m!5090423))

(assert (=> b!4414732 m!5090375))

(assert (=> b!4414732 m!5090407))

(assert (=> b!4414732 m!5090407))

(assert (=> b!4414732 m!5090415))

(assert (=> b!4414736 m!5090419))

(assert (=> b!4414736 m!5090419))

(assert (=> b!4414736 m!5090421))

(declare-fun m!5090425 () Bool)

(assert (=> b!4414728 m!5090425))

(assert (=> b!4414670 d!1337676))

(declare-fun bs!753152 () Bool)

(declare-fun d!1337678 () Bool)

(assert (= bs!753152 (and d!1337678 start!429842)))

(declare-fun lambda!151607 () Int)

(assert (=> bs!753152 (= lambda!151607 lambda!151566)))

(declare-fun bs!753153 () Bool)

(assert (= bs!753153 (and d!1337678 d!1337668)))

(assert (=> bs!753153 (not (= lambda!151607 lambda!151569))))

(declare-fun lt!1616571 () ListMap!2597)

(declare-fun invariantList!776 (List!49545) Bool)

(assert (=> d!1337678 (invariantList!776 (toList!3354 lt!1616571))))

(declare-fun e!2749102 () ListMap!2597)

(assert (=> d!1337678 (= lt!1616571 e!2749102)))

(declare-fun c!751726 () Bool)

(assert (=> d!1337678 (= c!751726 ((_ is Cons!49422) (toList!3353 lm!1616)))))

(assert (=> d!1337678 (forall!9460 (toList!3353 lm!1616) lambda!151607)))

(assert (=> d!1337678 (= (extractMap!744 (toList!3353 lm!1616)) lt!1616571)))

(declare-fun b!4414758 () Bool)

(assert (=> b!4414758 (= e!2749102 (addToMapMapFromBucket!337 (_2!27850 (h!55077 (toList!3353 lm!1616))) (extractMap!744 (t!356484 (toList!3353 lm!1616)))))))

(declare-fun b!4414759 () Bool)

(assert (=> b!4414759 (= e!2749102 (ListMap!2598 Nil!49421))))

(assert (= (and d!1337678 c!751726) b!4414758))

(assert (= (and d!1337678 (not c!751726)) b!4414759))

(declare-fun m!5090463 () Bool)

(assert (=> d!1337678 m!5090463))

(declare-fun m!5090465 () Bool)

(assert (=> d!1337678 m!5090465))

(assert (=> b!4414758 m!5090353))

(assert (=> b!4414758 m!5090353))

(declare-fun m!5090467 () Bool)

(assert (=> b!4414758 m!5090467))

(assert (=> b!4414670 d!1337678))

(declare-fun d!1337682 () Bool)

(declare-fun e!2749114 () Bool)

(assert (=> d!1337682 e!2749114))

(declare-fun res!1823144 () Bool)

(assert (=> d!1337682 (=> res!1823144 e!2749114)))

(declare-fun lt!1616584 () Bool)

(assert (=> d!1337682 (= res!1823144 (not lt!1616584))))

(declare-fun lt!1616587 () Bool)

(assert (=> d!1337682 (= lt!1616584 lt!1616587)))

(declare-fun lt!1616585 () Unit!80663)

(declare-fun e!2749115 () Unit!80663)

(assert (=> d!1337682 (= lt!1616585 e!2749115)))

(declare-fun c!751729 () Bool)

(assert (=> d!1337682 (= c!751729 lt!1616587)))

(declare-fun containsKey!1029 (List!49546 (_ BitVec 64)) Bool)

(assert (=> d!1337682 (= lt!1616587 (containsKey!1029 (toList!3353 lm!1616) hash!366))))

(assert (=> d!1337682 (= (contains!11868 lm!1616 hash!366) lt!1616584)))

(declare-fun b!4414774 () Bool)

(declare-fun lt!1616586 () Unit!80663)

(assert (=> b!4414774 (= e!2749115 lt!1616586)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!564 (List!49546 (_ BitVec 64)) Unit!80663)

(assert (=> b!4414774 (= lt!1616586 (lemmaContainsKeyImpliesGetValueByKeyDefined!564 (toList!3353 lm!1616) hash!366))))

(declare-datatypes ((Option!10668 0))(
  ( (None!10667) (Some!10667 (v!43827 List!49545)) )
))
(declare-fun isDefined!7961 (Option!10668) Bool)

(declare-fun getValueByKey!654 (List!49546 (_ BitVec 64)) Option!10668)

(assert (=> b!4414774 (isDefined!7961 (getValueByKey!654 (toList!3353 lm!1616) hash!366))))

(declare-fun b!4414775 () Bool)

(declare-fun Unit!80692 () Unit!80663)

(assert (=> b!4414775 (= e!2749115 Unit!80692)))

(declare-fun b!4414776 () Bool)

(assert (=> b!4414776 (= e!2749114 (isDefined!7961 (getValueByKey!654 (toList!3353 lm!1616) hash!366)))))

(assert (= (and d!1337682 c!751729) b!4414774))

(assert (= (and d!1337682 (not c!751729)) b!4414775))

(assert (= (and d!1337682 (not res!1823144)) b!4414776))

(declare-fun m!5090485 () Bool)

(assert (=> d!1337682 m!5090485))

(declare-fun m!5090487 () Bool)

(assert (=> b!4414774 m!5090487))

(declare-fun m!5090489 () Bool)

(assert (=> b!4414774 m!5090489))

(assert (=> b!4414774 m!5090489))

(declare-fun m!5090491 () Bool)

(assert (=> b!4414774 m!5090491))

(assert (=> b!4414776 m!5090489))

(assert (=> b!4414776 m!5090489))

(assert (=> b!4414776 m!5090491))

(assert (=> b!4414680 d!1337682))

(declare-fun d!1337688 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7912 (List!49545) (InoxSet tuple2!49110))

(assert (=> d!1337688 (= (eq!359 lt!1616465 (+!966 (addToMapMapFromBucket!337 lt!1616467 lt!1616462) lt!1616472)) (= (content!7912 (toList!3354 lt!1616465)) (content!7912 (toList!3354 (+!966 (addToMapMapFromBucket!337 lt!1616467 lt!1616462) lt!1616472)))))))

(declare-fun bs!753155 () Bool)

(assert (= bs!753155 d!1337688))

(declare-fun m!5090505 () Bool)

(assert (=> bs!753155 m!5090505))

(declare-fun m!5090507 () Bool)

(assert (=> bs!753155 m!5090507))

(assert (=> b!4414679 d!1337688))

(declare-fun bs!753217 () Bool)

(declare-fun b!4414885 () Bool)

(assert (= bs!753217 (and b!4414885 d!1337674)))

(declare-fun lambda!151655 () Int)

(assert (=> bs!753217 (not (= lambda!151655 lambda!151572))))

(assert (=> b!4414885 true))

(declare-fun bs!753218 () Bool)

(declare-fun b!4414881 () Bool)

(assert (= bs!753218 (and b!4414881 d!1337674)))

(declare-fun lambda!151656 () Int)

(assert (=> bs!753218 (not (= lambda!151656 lambda!151572))))

(declare-fun bs!753219 () Bool)

(assert (= bs!753219 (and b!4414881 b!4414885)))

(assert (=> bs!753219 (= lambda!151656 lambda!151655)))

(assert (=> b!4414881 true))

(declare-fun lambda!151657 () Int)

(assert (=> bs!753218 (not (= lambda!151657 lambda!151572))))

(declare-fun lt!1616736 () ListMap!2597)

(assert (=> bs!753219 (= (= lt!1616736 lt!1616462) (= lambda!151657 lambda!151655))))

(assert (=> b!4414881 (= (= lt!1616736 lt!1616462) (= lambda!151657 lambda!151656))))

(assert (=> b!4414881 true))

(declare-fun bs!753220 () Bool)

(declare-fun d!1337692 () Bool)

(assert (= bs!753220 (and d!1337692 d!1337674)))

(declare-fun lambda!151658 () Int)

(assert (=> bs!753220 (not (= lambda!151658 lambda!151572))))

(declare-fun bs!753221 () Bool)

(assert (= bs!753221 (and d!1337692 b!4414885)))

(declare-fun lt!1616753 () ListMap!2597)

(assert (=> bs!753221 (= (= lt!1616753 lt!1616462) (= lambda!151658 lambda!151655))))

(declare-fun bs!753222 () Bool)

(assert (= bs!753222 (and d!1337692 b!4414881)))

(assert (=> bs!753222 (= (= lt!1616753 lt!1616462) (= lambda!151658 lambda!151656))))

(assert (=> bs!753222 (= (= lt!1616753 lt!1616736) (= lambda!151658 lambda!151657))))

(assert (=> d!1337692 true))

(declare-fun e!2749180 () ListMap!2597)

(assert (=> b!4414881 (= e!2749180 lt!1616736)))

(declare-fun lt!1616742 () ListMap!2597)

(assert (=> b!4414881 (= lt!1616742 (+!966 lt!1616462 (h!55076 lt!1616467)))))

(assert (=> b!4414881 (= lt!1616736 (addToMapMapFromBucket!337 (t!356483 lt!1616467) (+!966 lt!1616462 (h!55076 lt!1616467))))))

(declare-fun lt!1616739 () Unit!80663)

(declare-fun call!307257 () Unit!80663)

(assert (=> b!4414881 (= lt!1616739 call!307257)))

(assert (=> b!4414881 (forall!9462 (toList!3354 lt!1616462) lambda!151656)))

(declare-fun lt!1616749 () Unit!80663)

(assert (=> b!4414881 (= lt!1616749 lt!1616739)))

(assert (=> b!4414881 (forall!9462 (toList!3354 lt!1616742) lambda!151657)))

(declare-fun lt!1616751 () Unit!80663)

(declare-fun Unit!80693 () Unit!80663)

(assert (=> b!4414881 (= lt!1616751 Unit!80693)))

(declare-fun call!307256 () Bool)

(assert (=> b!4414881 call!307256))

(declare-fun lt!1616748 () Unit!80663)

(declare-fun Unit!80694 () Unit!80663)

(assert (=> b!4414881 (= lt!1616748 Unit!80694)))

(declare-fun lt!1616738 () Unit!80663)

(declare-fun Unit!80695 () Unit!80663)

(assert (=> b!4414881 (= lt!1616738 Unit!80695)))

(declare-fun lt!1616752 () Unit!80663)

(declare-fun forallContained!2063 (List!49545 Int tuple2!49110) Unit!80663)

(assert (=> b!4414881 (= lt!1616752 (forallContained!2063 (toList!3354 lt!1616742) lambda!151657 (h!55076 lt!1616467)))))

(assert (=> b!4414881 (contains!11867 lt!1616742 (_1!27849 (h!55076 lt!1616467)))))

(declare-fun lt!1616754 () Unit!80663)

(declare-fun Unit!80698 () Unit!80663)

(assert (=> b!4414881 (= lt!1616754 Unit!80698)))

(assert (=> b!4414881 (contains!11867 lt!1616736 (_1!27849 (h!55076 lt!1616467)))))

(declare-fun lt!1616735 () Unit!80663)

(declare-fun Unit!80700 () Unit!80663)

(assert (=> b!4414881 (= lt!1616735 Unit!80700)))

(assert (=> b!4414881 (forall!9462 lt!1616467 lambda!151657)))

(declare-fun lt!1616746 () Unit!80663)

(declare-fun Unit!80702 () Unit!80663)

(assert (=> b!4414881 (= lt!1616746 Unit!80702)))

(assert (=> b!4414881 (forall!9462 (toList!3354 lt!1616742) lambda!151657)))

(declare-fun lt!1616745 () Unit!80663)

(declare-fun Unit!80703 () Unit!80663)

(assert (=> b!4414881 (= lt!1616745 Unit!80703)))

(declare-fun lt!1616737 () Unit!80663)

(declare-fun Unit!80705 () Unit!80663)

(assert (=> b!4414881 (= lt!1616737 Unit!80705)))

(declare-fun lt!1616755 () Unit!80663)

(declare-fun addForallContainsKeyThenBeforeAdding!153 (ListMap!2597 ListMap!2597 K!10780 V!11026) Unit!80663)

(assert (=> b!4414881 (= lt!1616755 (addForallContainsKeyThenBeforeAdding!153 lt!1616462 lt!1616736 (_1!27849 (h!55076 lt!1616467)) (_2!27849 (h!55076 lt!1616467))))))

(assert (=> b!4414881 (forall!9462 (toList!3354 lt!1616462) lambda!151657)))

(declare-fun lt!1616741 () Unit!80663)

(assert (=> b!4414881 (= lt!1616741 lt!1616755)))

(assert (=> b!4414881 (forall!9462 (toList!3354 lt!1616462) lambda!151657)))

(declare-fun lt!1616750 () Unit!80663)

(declare-fun Unit!80709 () Unit!80663)

(assert (=> b!4414881 (= lt!1616750 Unit!80709)))

(declare-fun res!1823191 () Bool)

(declare-fun call!307258 () Bool)

(assert (=> b!4414881 (= res!1823191 call!307258)))

(declare-fun e!2749181 () Bool)

(assert (=> b!4414881 (=> (not res!1823191) (not e!2749181))))

(assert (=> b!4414881 e!2749181))

(declare-fun lt!1616744 () Unit!80663)

(declare-fun Unit!80710 () Unit!80663)

(assert (=> b!4414881 (= lt!1616744 Unit!80710)))

(declare-fun bm!307251 () Bool)

(declare-fun c!751751 () Bool)

(assert (=> bm!307251 (= call!307258 (forall!9462 (ite c!751751 (toList!3354 lt!1616462) lt!1616467) (ite c!751751 lambda!151655 lambda!151657)))))

(declare-fun b!4414882 () Bool)

(declare-fun res!1823192 () Bool)

(declare-fun e!2749182 () Bool)

(assert (=> b!4414882 (=> (not res!1823192) (not e!2749182))))

(assert (=> b!4414882 (= res!1823192 (forall!9462 (toList!3354 lt!1616462) lambda!151658))))

(declare-fun bm!307252 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!153 (ListMap!2597) Unit!80663)

(assert (=> bm!307252 (= call!307257 (lemmaContainsAllItsOwnKeys!153 lt!1616462))))

(declare-fun b!4414883 () Bool)

(assert (=> b!4414883 (= e!2749181 (forall!9462 (toList!3354 lt!1616462) lambda!151657))))

(declare-fun b!4414884 () Bool)

(assert (=> b!4414884 (= e!2749182 (invariantList!776 (toList!3354 lt!1616753)))))

(assert (=> b!4414885 (= e!2749180 lt!1616462)))

(declare-fun lt!1616743 () Unit!80663)

(assert (=> b!4414885 (= lt!1616743 call!307257)))

(assert (=> b!4414885 call!307258))

(declare-fun lt!1616740 () Unit!80663)

(assert (=> b!4414885 (= lt!1616740 lt!1616743)))

(assert (=> b!4414885 call!307256))

(declare-fun lt!1616747 () Unit!80663)

(declare-fun Unit!80713 () Unit!80663)

(assert (=> b!4414885 (= lt!1616747 Unit!80713)))

(declare-fun bm!307253 () Bool)

(assert (=> bm!307253 (= call!307256 (forall!9462 (ite c!751751 (toList!3354 lt!1616462) (t!356483 lt!1616467)) (ite c!751751 lambda!151655 lambda!151657)))))

(assert (=> d!1337692 e!2749182))

(declare-fun res!1823190 () Bool)

(assert (=> d!1337692 (=> (not res!1823190) (not e!2749182))))

(assert (=> d!1337692 (= res!1823190 (forall!9462 lt!1616467 lambda!151658))))

(assert (=> d!1337692 (= lt!1616753 e!2749180)))

(assert (=> d!1337692 (= c!751751 ((_ is Nil!49421) lt!1616467))))

(assert (=> d!1337692 (noDuplicateKeys!683 lt!1616467)))

(assert (=> d!1337692 (= (addToMapMapFromBucket!337 lt!1616467 lt!1616462) lt!1616753)))

(assert (= (and d!1337692 c!751751) b!4414885))

(assert (= (and d!1337692 (not c!751751)) b!4414881))

(assert (= (and b!4414881 res!1823191) b!4414883))

(assert (= (or b!4414885 b!4414881) bm!307252))

(assert (= (or b!4414885 b!4414881) bm!307253))

(assert (= (or b!4414885 b!4414881) bm!307251))

(assert (= (and d!1337692 res!1823190) b!4414882))

(assert (= (and b!4414882 res!1823192) b!4414884))

(declare-fun m!5090685 () Bool)

(assert (=> b!4414883 m!5090685))

(declare-fun m!5090687 () Bool)

(assert (=> bm!307253 m!5090687))

(declare-fun m!5090689 () Bool)

(assert (=> b!4414882 m!5090689))

(declare-fun m!5090691 () Bool)

(assert (=> b!4414884 m!5090691))

(declare-fun m!5090693 () Bool)

(assert (=> d!1337692 m!5090693))

(declare-fun m!5090695 () Bool)

(assert (=> d!1337692 m!5090695))

(declare-fun m!5090697 () Bool)

(assert (=> bm!307251 m!5090697))

(declare-fun m!5090699 () Bool)

(assert (=> bm!307252 m!5090699))

(declare-fun m!5090701 () Bool)

(assert (=> b!4414881 m!5090701))

(assert (=> b!4414881 m!5090685))

(declare-fun m!5090703 () Bool)

(assert (=> b!4414881 m!5090703))

(declare-fun m!5090705 () Bool)

(assert (=> b!4414881 m!5090705))

(declare-fun m!5090707 () Bool)

(assert (=> b!4414881 m!5090707))

(declare-fun m!5090709 () Bool)

(assert (=> b!4414881 m!5090709))

(declare-fun m!5090711 () Bool)

(assert (=> b!4414881 m!5090711))

(assert (=> b!4414881 m!5090685))

(declare-fun m!5090713 () Bool)

(assert (=> b!4414881 m!5090713))

(assert (=> b!4414881 m!5090707))

(declare-fun m!5090715 () Bool)

(assert (=> b!4414881 m!5090715))

(assert (=> b!4414881 m!5090709))

(declare-fun m!5090717 () Bool)

(assert (=> b!4414881 m!5090717))

(assert (=> b!4414679 d!1337692))

(declare-fun d!1337740 () Bool)

(assert (=> d!1337740 (eq!359 (addToMapMapFromBucket!337 lt!1616467 (+!966 lt!1616462 (tuple2!49111 key!3717 newValue!93))) (+!966 (addToMapMapFromBucket!337 lt!1616467 lt!1616462) (tuple2!49111 key!3717 newValue!93)))))

(declare-fun lt!1616758 () Unit!80663)

(declare-fun choose!27783 (ListMap!2597 K!10780 V!11026 List!49545) Unit!80663)

(assert (=> d!1337740 (= lt!1616758 (choose!27783 lt!1616462 key!3717 newValue!93 lt!1616467))))

(assert (=> d!1337740 (not (containsKey!1027 lt!1616467 key!3717))))

(assert (=> d!1337740 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!154 lt!1616462 key!3717 newValue!93 lt!1616467) lt!1616758)))

(declare-fun bs!753223 () Bool)

(assert (= bs!753223 d!1337740))

(declare-fun m!5090719 () Bool)

(assert (=> bs!753223 m!5090719))

(declare-fun m!5090721 () Bool)

(assert (=> bs!753223 m!5090721))

(declare-fun m!5090723 () Bool)

(assert (=> bs!753223 m!5090723))

(declare-fun m!5090725 () Bool)

(assert (=> bs!753223 m!5090725))

(declare-fun m!5090727 () Bool)

(assert (=> bs!753223 m!5090727))

(assert (=> bs!753223 m!5090719))

(assert (=> bs!753223 m!5090723))

(assert (=> bs!753223 m!5090367))

(assert (=> bs!753223 m!5090725))

(declare-fun m!5090729 () Bool)

(assert (=> bs!753223 m!5090729))

(assert (=> bs!753223 m!5090367))

(assert (=> b!4414679 d!1337740))

(declare-fun d!1337742 () Bool)

(declare-fun res!1823193 () Bool)

(declare-fun e!2749183 () Bool)

(assert (=> d!1337742 (=> res!1823193 e!2749183)))

(assert (=> d!1337742 (= res!1823193 ((_ is Nil!49422) (t!356484 (toList!3353 lm!1616))))))

(assert (=> d!1337742 (= (forall!9460 (t!356484 (toList!3353 lm!1616)) lambda!151566) e!2749183)))

(declare-fun b!4414888 () Bool)

(declare-fun e!2749184 () Bool)

(assert (=> b!4414888 (= e!2749183 e!2749184)))

(declare-fun res!1823194 () Bool)

(assert (=> b!4414888 (=> (not res!1823194) (not e!2749184))))

(assert (=> b!4414888 (= res!1823194 (dynLambda!20807 lambda!151566 (h!55077 (t!356484 (toList!3353 lm!1616)))))))

(declare-fun b!4414889 () Bool)

(assert (=> b!4414889 (= e!2749184 (forall!9460 (t!356484 (t!356484 (toList!3353 lm!1616))) lambda!151566))))

(assert (= (and d!1337742 (not res!1823193)) b!4414888))

(assert (= (and b!4414888 res!1823194) b!4414889))

(declare-fun b_lambda!142137 () Bool)

(assert (=> (not b_lambda!142137) (not b!4414888)))

(declare-fun m!5090731 () Bool)

(assert (=> b!4414888 m!5090731))

(declare-fun m!5090733 () Bool)

(assert (=> b!4414889 m!5090733))

(assert (=> b!4414679 d!1337742))

(declare-fun d!1337744 () Bool)

(declare-fun e!2749187 () Bool)

(assert (=> d!1337744 e!2749187))

(declare-fun res!1823200 () Bool)

(assert (=> d!1337744 (=> (not res!1823200) (not e!2749187))))

(declare-fun lt!1616770 () ListMap!2597)

(assert (=> d!1337744 (= res!1823200 (contains!11867 lt!1616770 (_1!27849 lt!1616472)))))

(declare-fun lt!1616767 () List!49545)

(assert (=> d!1337744 (= lt!1616770 (ListMap!2598 lt!1616767))))

(declare-fun lt!1616768 () Unit!80663)

(declare-fun lt!1616769 () Unit!80663)

(assert (=> d!1337744 (= lt!1616768 lt!1616769)))

(assert (=> d!1337744 (= (getValueByKey!653 lt!1616767 (_1!27849 lt!1616472)) (Some!10666 (_2!27849 lt!1616472)))))

(declare-fun lemmaContainsTupThenGetReturnValue!391 (List!49545 K!10780 V!11026) Unit!80663)

(assert (=> d!1337744 (= lt!1616769 (lemmaContainsTupThenGetReturnValue!391 lt!1616767 (_1!27849 lt!1616472) (_2!27849 lt!1616472)))))

(declare-fun insertNoDuplicatedKeys!169 (List!49545 K!10780 V!11026) List!49545)

(assert (=> d!1337744 (= lt!1616767 (insertNoDuplicatedKeys!169 (toList!3354 (addToMapMapFromBucket!337 lt!1616467 lt!1616462)) (_1!27849 lt!1616472) (_2!27849 lt!1616472)))))

(assert (=> d!1337744 (= (+!966 (addToMapMapFromBucket!337 lt!1616467 lt!1616462) lt!1616472) lt!1616770)))

(declare-fun b!4414894 () Bool)

(declare-fun res!1823199 () Bool)

(assert (=> b!4414894 (=> (not res!1823199) (not e!2749187))))

(assert (=> b!4414894 (= res!1823199 (= (getValueByKey!653 (toList!3354 lt!1616770) (_1!27849 lt!1616472)) (Some!10666 (_2!27849 lt!1616472))))))

(declare-fun b!4414895 () Bool)

(declare-fun contains!11873 (List!49545 tuple2!49110) Bool)

(assert (=> b!4414895 (= e!2749187 (contains!11873 (toList!3354 lt!1616770) lt!1616472))))

(assert (= (and d!1337744 res!1823200) b!4414894))

(assert (= (and b!4414894 res!1823199) b!4414895))

(declare-fun m!5090735 () Bool)

(assert (=> d!1337744 m!5090735))

(declare-fun m!5090737 () Bool)

(assert (=> d!1337744 m!5090737))

(declare-fun m!5090739 () Bool)

(assert (=> d!1337744 m!5090739))

(declare-fun m!5090741 () Bool)

(assert (=> d!1337744 m!5090741))

(declare-fun m!5090743 () Bool)

(assert (=> b!4414894 m!5090743))

(declare-fun m!5090745 () Bool)

(assert (=> b!4414895 m!5090745))

(assert (=> b!4414679 d!1337744))

(declare-fun bs!753224 () Bool)

(declare-fun b!4414900 () Bool)

(assert (= bs!753224 (and b!4414900 d!1337692)))

(declare-fun lambda!151659 () Int)

(assert (=> bs!753224 (= (= lt!1616462 lt!1616753) (= lambda!151659 lambda!151658))))

(declare-fun bs!753225 () Bool)

(assert (= bs!753225 (and b!4414900 b!4414885)))

(assert (=> bs!753225 (= lambda!151659 lambda!151655)))

(declare-fun bs!753226 () Bool)

(assert (= bs!753226 (and b!4414900 b!4414881)))

(assert (=> bs!753226 (= (= lt!1616462 lt!1616736) (= lambda!151659 lambda!151657))))

(declare-fun bs!753227 () Bool)

(assert (= bs!753227 (and b!4414900 d!1337674)))

(assert (=> bs!753227 (not (= lambda!151659 lambda!151572))))

(assert (=> bs!753226 (= lambda!151659 lambda!151656)))

(assert (=> b!4414900 true))

(declare-fun bs!753228 () Bool)

(declare-fun b!4414896 () Bool)

(assert (= bs!753228 (and b!4414896 d!1337692)))

(declare-fun lambda!151660 () Int)

(assert (=> bs!753228 (= (= lt!1616462 lt!1616753) (= lambda!151660 lambda!151658))))

(declare-fun bs!753229 () Bool)

(assert (= bs!753229 (and b!4414896 b!4414885)))

(assert (=> bs!753229 (= lambda!151660 lambda!151655)))

(declare-fun bs!753230 () Bool)

(assert (= bs!753230 (and b!4414896 b!4414881)))

(assert (=> bs!753230 (= (= lt!1616462 lt!1616736) (= lambda!151660 lambda!151657))))

(declare-fun bs!753231 () Bool)

(assert (= bs!753231 (and b!4414896 d!1337674)))

(assert (=> bs!753231 (not (= lambda!151660 lambda!151572))))

(declare-fun bs!753232 () Bool)

(assert (= bs!753232 (and b!4414896 b!4414900)))

(assert (=> bs!753232 (= lambda!151660 lambda!151659)))

(assert (=> bs!753230 (= lambda!151660 lambda!151656)))

(assert (=> b!4414896 true))

(declare-fun lt!1616772 () ListMap!2597)

(declare-fun lambda!151661 () Int)

(assert (=> bs!753228 (= (= lt!1616772 lt!1616753) (= lambda!151661 lambda!151658))))

(assert (=> b!4414896 (= (= lt!1616772 lt!1616462) (= lambda!151661 lambda!151660))))

(assert (=> bs!753229 (= (= lt!1616772 lt!1616462) (= lambda!151661 lambda!151655))))

(assert (=> bs!753230 (= (= lt!1616772 lt!1616736) (= lambda!151661 lambda!151657))))

(assert (=> bs!753231 (not (= lambda!151661 lambda!151572))))

(assert (=> bs!753232 (= (= lt!1616772 lt!1616462) (= lambda!151661 lambda!151659))))

(assert (=> bs!753230 (= (= lt!1616772 lt!1616462) (= lambda!151661 lambda!151656))))

(assert (=> b!4414896 true))

(declare-fun bs!753233 () Bool)

(declare-fun d!1337746 () Bool)

(assert (= bs!753233 (and d!1337746 d!1337692)))

(declare-fun lambda!151662 () Int)

(declare-fun lt!1616789 () ListMap!2597)

(assert (=> bs!753233 (= (= lt!1616789 lt!1616753) (= lambda!151662 lambda!151658))))

(declare-fun bs!753234 () Bool)

(assert (= bs!753234 (and d!1337746 b!4414896)))

(assert (=> bs!753234 (= (= lt!1616789 lt!1616772) (= lambda!151662 lambda!151661))))

(assert (=> bs!753234 (= (= lt!1616789 lt!1616462) (= lambda!151662 lambda!151660))))

(declare-fun bs!753235 () Bool)

(assert (= bs!753235 (and d!1337746 b!4414885)))

(assert (=> bs!753235 (= (= lt!1616789 lt!1616462) (= lambda!151662 lambda!151655))))

(declare-fun bs!753236 () Bool)

(assert (= bs!753236 (and d!1337746 b!4414881)))

(assert (=> bs!753236 (= (= lt!1616789 lt!1616736) (= lambda!151662 lambda!151657))))

(declare-fun bs!753237 () Bool)

(assert (= bs!753237 (and d!1337746 d!1337674)))

(assert (=> bs!753237 (not (= lambda!151662 lambda!151572))))

(declare-fun bs!753238 () Bool)

(assert (= bs!753238 (and d!1337746 b!4414900)))

(assert (=> bs!753238 (= (= lt!1616789 lt!1616462) (= lambda!151662 lambda!151659))))

(assert (=> bs!753236 (= (= lt!1616789 lt!1616462) (= lambda!151662 lambda!151656))))

(assert (=> d!1337746 true))

(declare-fun e!2749188 () ListMap!2597)

(assert (=> b!4414896 (= e!2749188 lt!1616772)))

(declare-fun lt!1616778 () ListMap!2597)

(assert (=> b!4414896 (= lt!1616778 (+!966 lt!1616462 (h!55076 newBucket!194)))))

(assert (=> b!4414896 (= lt!1616772 (addToMapMapFromBucket!337 (t!356483 newBucket!194) (+!966 lt!1616462 (h!55076 newBucket!194))))))

(declare-fun lt!1616775 () Unit!80663)

(declare-fun call!307260 () Unit!80663)

(assert (=> b!4414896 (= lt!1616775 call!307260)))

(assert (=> b!4414896 (forall!9462 (toList!3354 lt!1616462) lambda!151660)))

(declare-fun lt!1616785 () Unit!80663)

(assert (=> b!4414896 (= lt!1616785 lt!1616775)))

(assert (=> b!4414896 (forall!9462 (toList!3354 lt!1616778) lambda!151661)))

(declare-fun lt!1616787 () Unit!80663)

(declare-fun Unit!80715 () Unit!80663)

(assert (=> b!4414896 (= lt!1616787 Unit!80715)))

(declare-fun call!307259 () Bool)

(assert (=> b!4414896 call!307259))

(declare-fun lt!1616784 () Unit!80663)

(declare-fun Unit!80716 () Unit!80663)

(assert (=> b!4414896 (= lt!1616784 Unit!80716)))

(declare-fun lt!1616774 () Unit!80663)

(declare-fun Unit!80717 () Unit!80663)

(assert (=> b!4414896 (= lt!1616774 Unit!80717)))

(declare-fun lt!1616788 () Unit!80663)

(assert (=> b!4414896 (= lt!1616788 (forallContained!2063 (toList!3354 lt!1616778) lambda!151661 (h!55076 newBucket!194)))))

(assert (=> b!4414896 (contains!11867 lt!1616778 (_1!27849 (h!55076 newBucket!194)))))

(declare-fun lt!1616790 () Unit!80663)

(declare-fun Unit!80718 () Unit!80663)

(assert (=> b!4414896 (= lt!1616790 Unit!80718)))

(assert (=> b!4414896 (contains!11867 lt!1616772 (_1!27849 (h!55076 newBucket!194)))))

(declare-fun lt!1616771 () Unit!80663)

(declare-fun Unit!80719 () Unit!80663)

(assert (=> b!4414896 (= lt!1616771 Unit!80719)))

(assert (=> b!4414896 (forall!9462 newBucket!194 lambda!151661)))

(declare-fun lt!1616782 () Unit!80663)

(declare-fun Unit!80720 () Unit!80663)

(assert (=> b!4414896 (= lt!1616782 Unit!80720)))

(assert (=> b!4414896 (forall!9462 (toList!3354 lt!1616778) lambda!151661)))

(declare-fun lt!1616781 () Unit!80663)

(declare-fun Unit!80721 () Unit!80663)

(assert (=> b!4414896 (= lt!1616781 Unit!80721)))

(declare-fun lt!1616773 () Unit!80663)

(declare-fun Unit!80722 () Unit!80663)

(assert (=> b!4414896 (= lt!1616773 Unit!80722)))

(declare-fun lt!1616791 () Unit!80663)

(assert (=> b!4414896 (= lt!1616791 (addForallContainsKeyThenBeforeAdding!153 lt!1616462 lt!1616772 (_1!27849 (h!55076 newBucket!194)) (_2!27849 (h!55076 newBucket!194))))))

(assert (=> b!4414896 (forall!9462 (toList!3354 lt!1616462) lambda!151661)))

(declare-fun lt!1616777 () Unit!80663)

(assert (=> b!4414896 (= lt!1616777 lt!1616791)))

(assert (=> b!4414896 (forall!9462 (toList!3354 lt!1616462) lambda!151661)))

(declare-fun lt!1616786 () Unit!80663)

(declare-fun Unit!80723 () Unit!80663)

(assert (=> b!4414896 (= lt!1616786 Unit!80723)))

(declare-fun res!1823202 () Bool)

(declare-fun call!307261 () Bool)

(assert (=> b!4414896 (= res!1823202 call!307261)))

(declare-fun e!2749189 () Bool)

(assert (=> b!4414896 (=> (not res!1823202) (not e!2749189))))

(assert (=> b!4414896 e!2749189))

(declare-fun lt!1616780 () Unit!80663)

(declare-fun Unit!80724 () Unit!80663)

(assert (=> b!4414896 (= lt!1616780 Unit!80724)))

(declare-fun bm!307254 () Bool)

(declare-fun c!751752 () Bool)

(assert (=> bm!307254 (= call!307261 (forall!9462 (ite c!751752 (toList!3354 lt!1616462) newBucket!194) (ite c!751752 lambda!151659 lambda!151661)))))

(declare-fun b!4414897 () Bool)

(declare-fun res!1823203 () Bool)

(declare-fun e!2749190 () Bool)

(assert (=> b!4414897 (=> (not res!1823203) (not e!2749190))))

(assert (=> b!4414897 (= res!1823203 (forall!9462 (toList!3354 lt!1616462) lambda!151662))))

(declare-fun bm!307255 () Bool)

(assert (=> bm!307255 (= call!307260 (lemmaContainsAllItsOwnKeys!153 lt!1616462))))

(declare-fun b!4414898 () Bool)

(assert (=> b!4414898 (= e!2749189 (forall!9462 (toList!3354 lt!1616462) lambda!151661))))

(declare-fun b!4414899 () Bool)

(assert (=> b!4414899 (= e!2749190 (invariantList!776 (toList!3354 lt!1616789)))))

(assert (=> b!4414900 (= e!2749188 lt!1616462)))

(declare-fun lt!1616779 () Unit!80663)

(assert (=> b!4414900 (= lt!1616779 call!307260)))

(assert (=> b!4414900 call!307261))

(declare-fun lt!1616776 () Unit!80663)

(assert (=> b!4414900 (= lt!1616776 lt!1616779)))

(assert (=> b!4414900 call!307259))

(declare-fun lt!1616783 () Unit!80663)

(declare-fun Unit!80725 () Unit!80663)

(assert (=> b!4414900 (= lt!1616783 Unit!80725)))

(declare-fun bm!307256 () Bool)

(assert (=> bm!307256 (= call!307259 (forall!9462 (ite c!751752 (toList!3354 lt!1616462) (t!356483 newBucket!194)) (ite c!751752 lambda!151659 lambda!151661)))))

(assert (=> d!1337746 e!2749190))

(declare-fun res!1823201 () Bool)

(assert (=> d!1337746 (=> (not res!1823201) (not e!2749190))))

(assert (=> d!1337746 (= res!1823201 (forall!9462 newBucket!194 lambda!151662))))

(assert (=> d!1337746 (= lt!1616789 e!2749188)))

(assert (=> d!1337746 (= c!751752 ((_ is Nil!49421) newBucket!194))))

(assert (=> d!1337746 (noDuplicateKeys!683 newBucket!194)))

(assert (=> d!1337746 (= (addToMapMapFromBucket!337 newBucket!194 lt!1616462) lt!1616789)))

(assert (= (and d!1337746 c!751752) b!4414900))

(assert (= (and d!1337746 (not c!751752)) b!4414896))

(assert (= (and b!4414896 res!1823202) b!4414898))

(assert (= (or b!4414900 b!4414896) bm!307255))

(assert (= (or b!4414900 b!4414896) bm!307256))

(assert (= (or b!4414900 b!4414896) bm!307254))

(assert (= (and d!1337746 res!1823201) b!4414897))

(assert (= (and b!4414897 res!1823203) b!4414899))

(declare-fun m!5090747 () Bool)

(assert (=> b!4414898 m!5090747))

(declare-fun m!5090749 () Bool)

(assert (=> bm!307256 m!5090749))

(declare-fun m!5090751 () Bool)

(assert (=> b!4414897 m!5090751))

(declare-fun m!5090753 () Bool)

(assert (=> b!4414899 m!5090753))

(declare-fun m!5090755 () Bool)

(assert (=> d!1337746 m!5090755))

(assert (=> d!1337746 m!5090389))

(declare-fun m!5090757 () Bool)

(assert (=> bm!307254 m!5090757))

(assert (=> bm!307255 m!5090699))

(declare-fun m!5090759 () Bool)

(assert (=> b!4414896 m!5090759))

(assert (=> b!4414896 m!5090747))

(declare-fun m!5090761 () Bool)

(assert (=> b!4414896 m!5090761))

(declare-fun m!5090763 () Bool)

(assert (=> b!4414896 m!5090763))

(declare-fun m!5090765 () Bool)

(assert (=> b!4414896 m!5090765))

(declare-fun m!5090767 () Bool)

(assert (=> b!4414896 m!5090767))

(declare-fun m!5090769 () Bool)

(assert (=> b!4414896 m!5090769))

(assert (=> b!4414896 m!5090747))

(declare-fun m!5090771 () Bool)

(assert (=> b!4414896 m!5090771))

(assert (=> b!4414896 m!5090765))

(declare-fun m!5090773 () Bool)

(assert (=> b!4414896 m!5090773))

(assert (=> b!4414896 m!5090767))

(declare-fun m!5090775 () Bool)

(assert (=> b!4414896 m!5090775))

(assert (=> b!4414678 d!1337746))

(declare-fun bs!753239 () Bool)

(declare-fun d!1337748 () Bool)

(assert (= bs!753239 (and d!1337748 start!429842)))

(declare-fun lambda!151663 () Int)

(assert (=> bs!753239 (= lambda!151663 lambda!151566)))

(declare-fun bs!753240 () Bool)

(assert (= bs!753240 (and d!1337748 d!1337668)))

(assert (=> bs!753240 (not (= lambda!151663 lambda!151569))))

(declare-fun bs!753241 () Bool)

(assert (= bs!753241 (and d!1337748 d!1337678)))

(assert (=> bs!753241 (= lambda!151663 lambda!151607)))

(declare-fun lt!1616792 () ListMap!2597)

(assert (=> d!1337748 (invariantList!776 (toList!3354 lt!1616792))))

(declare-fun e!2749191 () ListMap!2597)

(assert (=> d!1337748 (= lt!1616792 e!2749191)))

(declare-fun c!751753 () Bool)

(assert (=> d!1337748 (= c!751753 ((_ is Cons!49422) (toList!3353 lt!1616470)))))

(assert (=> d!1337748 (forall!9460 (toList!3353 lt!1616470) lambda!151663)))

(assert (=> d!1337748 (= (extractMap!744 (toList!3353 lt!1616470)) lt!1616792)))

(declare-fun b!4414901 () Bool)

(assert (=> b!4414901 (= e!2749191 (addToMapMapFromBucket!337 (_2!27850 (h!55077 (toList!3353 lt!1616470))) (extractMap!744 (t!356484 (toList!3353 lt!1616470)))))))

(declare-fun b!4414902 () Bool)

(assert (=> b!4414902 (= e!2749191 (ListMap!2598 Nil!49421))))

(assert (= (and d!1337748 c!751753) b!4414901))

(assert (= (and d!1337748 (not c!751753)) b!4414902))

(declare-fun m!5090777 () Bool)

(assert (=> d!1337748 m!5090777))

(declare-fun m!5090779 () Bool)

(assert (=> d!1337748 m!5090779))

(declare-fun m!5090781 () Bool)

(assert (=> b!4414901 m!5090781))

(assert (=> b!4414901 m!5090781))

(declare-fun m!5090783 () Bool)

(assert (=> b!4414901 m!5090783))

(assert (=> b!4414678 d!1337748))

(declare-fun bs!753242 () Bool)

(declare-fun d!1337750 () Bool)

(assert (= bs!753242 (and d!1337750 start!429842)))

(declare-fun lambda!151664 () Int)

(assert (=> bs!753242 (= lambda!151664 lambda!151566)))

(declare-fun bs!753243 () Bool)

(assert (= bs!753243 (and d!1337750 d!1337668)))

(assert (=> bs!753243 (not (= lambda!151664 lambda!151569))))

(declare-fun bs!753244 () Bool)

(assert (= bs!753244 (and d!1337750 d!1337678)))

(assert (=> bs!753244 (= lambda!151664 lambda!151607)))

(declare-fun bs!753245 () Bool)

(assert (= bs!753245 (and d!1337750 d!1337748)))

(assert (=> bs!753245 (= lambda!151664 lambda!151663)))

(declare-fun lt!1616793 () ListMap!2597)

(assert (=> d!1337750 (invariantList!776 (toList!3354 lt!1616793))))

(declare-fun e!2749192 () ListMap!2597)

(assert (=> d!1337750 (= lt!1616793 e!2749192)))

(declare-fun c!751754 () Bool)

(assert (=> d!1337750 (= c!751754 ((_ is Cons!49422) (t!356484 (toList!3353 lm!1616))))))

(assert (=> d!1337750 (forall!9460 (t!356484 (toList!3353 lm!1616)) lambda!151664)))

(assert (=> d!1337750 (= (extractMap!744 (t!356484 (toList!3353 lm!1616))) lt!1616793)))

(declare-fun b!4414903 () Bool)

(assert (=> b!4414903 (= e!2749192 (addToMapMapFromBucket!337 (_2!27850 (h!55077 (t!356484 (toList!3353 lm!1616)))) (extractMap!744 (t!356484 (t!356484 (toList!3353 lm!1616))))))))

(declare-fun b!4414904 () Bool)

(assert (=> b!4414904 (= e!2749192 (ListMap!2598 Nil!49421))))

(assert (= (and d!1337750 c!751754) b!4414903))

(assert (= (and d!1337750 (not c!751754)) b!4414904))

(declare-fun m!5090785 () Bool)

(assert (=> d!1337750 m!5090785))

(declare-fun m!5090787 () Bool)

(assert (=> d!1337750 m!5090787))

(declare-fun m!5090789 () Bool)

(assert (=> b!4414903 m!5090789))

(assert (=> b!4414903 m!5090789))

(declare-fun m!5090791 () Bool)

(assert (=> b!4414903 m!5090791))

(assert (=> b!4414678 d!1337750))

(assert (=> b!4414677 d!1337670))

(declare-fun d!1337752 () Bool)

(declare-fun get!16098 (Option!10668) List!49545)

(assert (=> d!1337752 (= (apply!11535 lm!1616 hash!366) (get!16098 (getValueByKey!654 (toList!3353 lm!1616) hash!366)))))

(declare-fun bs!753246 () Bool)

(assert (= bs!753246 d!1337752))

(assert (=> bs!753246 m!5090489))

(assert (=> bs!753246 m!5090489))

(declare-fun m!5090793 () Bool)

(assert (=> bs!753246 m!5090793))

(assert (=> b!4414676 d!1337752))

(declare-fun d!1337754 () Bool)

(declare-fun hash!1994 (Hashable!5077 K!10780) (_ BitVec 64))

(assert (=> d!1337754 (= (hash!1992 hashF!1220 key!3717) (hash!1994 hashF!1220 key!3717))))

(declare-fun bs!753247 () Bool)

(assert (= bs!753247 d!1337754))

(declare-fun m!5090795 () Bool)

(assert (=> bs!753247 m!5090795))

(assert (=> b!4414686 d!1337754))

(declare-fun bs!753248 () Bool)

(declare-fun b!4414909 () Bool)

(assert (= bs!753248 (and b!4414909 d!1337692)))

(declare-fun lambda!151665 () Int)

(assert (=> bs!753248 (= (= (+!966 lt!1616462 lt!1616472) lt!1616753) (= lambda!151665 lambda!151658))))

(declare-fun bs!753249 () Bool)

(assert (= bs!753249 (and b!4414909 b!4414896)))

(assert (=> bs!753249 (= (= (+!966 lt!1616462 lt!1616472) lt!1616772) (= lambda!151665 lambda!151661))))

(assert (=> bs!753249 (= (= (+!966 lt!1616462 lt!1616472) lt!1616462) (= lambda!151665 lambda!151660))))

(declare-fun bs!753250 () Bool)

(assert (= bs!753250 (and b!4414909 b!4414885)))

(assert (=> bs!753250 (= (= (+!966 lt!1616462 lt!1616472) lt!1616462) (= lambda!151665 lambda!151655))))

(declare-fun bs!753251 () Bool)

(assert (= bs!753251 (and b!4414909 b!4414881)))

(assert (=> bs!753251 (= (= (+!966 lt!1616462 lt!1616472) lt!1616736) (= lambda!151665 lambda!151657))))

(declare-fun bs!753252 () Bool)

(assert (= bs!753252 (and b!4414909 d!1337674)))

(assert (=> bs!753252 (not (= lambda!151665 lambda!151572))))

(declare-fun bs!753253 () Bool)

(assert (= bs!753253 (and b!4414909 d!1337746)))

(assert (=> bs!753253 (= (= (+!966 lt!1616462 lt!1616472) lt!1616789) (= lambda!151665 lambda!151662))))

(declare-fun bs!753254 () Bool)

(assert (= bs!753254 (and b!4414909 b!4414900)))

(assert (=> bs!753254 (= (= (+!966 lt!1616462 lt!1616472) lt!1616462) (= lambda!151665 lambda!151659))))

(assert (=> bs!753251 (= (= (+!966 lt!1616462 lt!1616472) lt!1616462) (= lambda!151665 lambda!151656))))

(assert (=> b!4414909 true))

(declare-fun bs!753255 () Bool)

(declare-fun b!4414905 () Bool)

(assert (= bs!753255 (and b!4414905 d!1337692)))

(declare-fun lambda!151666 () Int)

(assert (=> bs!753255 (= (= (+!966 lt!1616462 lt!1616472) lt!1616753) (= lambda!151666 lambda!151658))))

(declare-fun bs!753256 () Bool)

(assert (= bs!753256 (and b!4414905 b!4414909)))

(assert (=> bs!753256 (= lambda!151666 lambda!151665)))

(declare-fun bs!753257 () Bool)

(assert (= bs!753257 (and b!4414905 b!4414896)))

(assert (=> bs!753257 (= (= (+!966 lt!1616462 lt!1616472) lt!1616772) (= lambda!151666 lambda!151661))))

(assert (=> bs!753257 (= (= (+!966 lt!1616462 lt!1616472) lt!1616462) (= lambda!151666 lambda!151660))))

(declare-fun bs!753258 () Bool)

(assert (= bs!753258 (and b!4414905 b!4414885)))

(assert (=> bs!753258 (= (= (+!966 lt!1616462 lt!1616472) lt!1616462) (= lambda!151666 lambda!151655))))

(declare-fun bs!753259 () Bool)

(assert (= bs!753259 (and b!4414905 b!4414881)))

(assert (=> bs!753259 (= (= (+!966 lt!1616462 lt!1616472) lt!1616736) (= lambda!151666 lambda!151657))))

(declare-fun bs!753260 () Bool)

(assert (= bs!753260 (and b!4414905 d!1337674)))

(assert (=> bs!753260 (not (= lambda!151666 lambda!151572))))

(declare-fun bs!753261 () Bool)

(assert (= bs!753261 (and b!4414905 d!1337746)))

(assert (=> bs!753261 (= (= (+!966 lt!1616462 lt!1616472) lt!1616789) (= lambda!151666 lambda!151662))))

(declare-fun bs!753262 () Bool)

(assert (= bs!753262 (and b!4414905 b!4414900)))

(assert (=> bs!753262 (= (= (+!966 lt!1616462 lt!1616472) lt!1616462) (= lambda!151666 lambda!151659))))

(assert (=> bs!753259 (= (= (+!966 lt!1616462 lt!1616472) lt!1616462) (= lambda!151666 lambda!151656))))

(assert (=> b!4414905 true))

(declare-fun lt!1616795 () ListMap!2597)

(declare-fun lambda!151667 () Int)

(assert (=> bs!753255 (= (= lt!1616795 lt!1616753) (= lambda!151667 lambda!151658))))

(assert (=> bs!753256 (= (= lt!1616795 (+!966 lt!1616462 lt!1616472)) (= lambda!151667 lambda!151665))))

(assert (=> bs!753257 (= (= lt!1616795 lt!1616772) (= lambda!151667 lambda!151661))))

(assert (=> bs!753257 (= (= lt!1616795 lt!1616462) (= lambda!151667 lambda!151660))))

(assert (=> bs!753258 (= (= lt!1616795 lt!1616462) (= lambda!151667 lambda!151655))))

(assert (=> bs!753259 (= (= lt!1616795 lt!1616736) (= lambda!151667 lambda!151657))))

(assert (=> bs!753260 (not (= lambda!151667 lambda!151572))))

(assert (=> bs!753261 (= (= lt!1616795 lt!1616789) (= lambda!151667 lambda!151662))))

(assert (=> bs!753262 (= (= lt!1616795 lt!1616462) (= lambda!151667 lambda!151659))))

(assert (=> b!4414905 (= (= lt!1616795 (+!966 lt!1616462 lt!1616472)) (= lambda!151667 lambda!151666))))

(assert (=> bs!753259 (= (= lt!1616795 lt!1616462) (= lambda!151667 lambda!151656))))

(assert (=> b!4414905 true))

(declare-fun bs!753263 () Bool)

(declare-fun d!1337756 () Bool)

(assert (= bs!753263 (and d!1337756 d!1337692)))

(declare-fun lt!1616812 () ListMap!2597)

(declare-fun lambda!151668 () Int)

(assert (=> bs!753263 (= (= lt!1616812 lt!1616753) (= lambda!151668 lambda!151658))))

(declare-fun bs!753264 () Bool)

(assert (= bs!753264 (and d!1337756 b!4414909)))

(assert (=> bs!753264 (= (= lt!1616812 (+!966 lt!1616462 lt!1616472)) (= lambda!151668 lambda!151665))))

(declare-fun bs!753265 () Bool)

(assert (= bs!753265 (and d!1337756 b!4414896)))

(assert (=> bs!753265 (= (= lt!1616812 lt!1616772) (= lambda!151668 lambda!151661))))

(assert (=> bs!753265 (= (= lt!1616812 lt!1616462) (= lambda!151668 lambda!151660))))

(declare-fun bs!753266 () Bool)

(assert (= bs!753266 (and d!1337756 b!4414905)))

(assert (=> bs!753266 (= (= lt!1616812 lt!1616795) (= lambda!151668 lambda!151667))))

(declare-fun bs!753267 () Bool)

(assert (= bs!753267 (and d!1337756 b!4414885)))

(assert (=> bs!753267 (= (= lt!1616812 lt!1616462) (= lambda!151668 lambda!151655))))

(declare-fun bs!753268 () Bool)

(assert (= bs!753268 (and d!1337756 b!4414881)))

(assert (=> bs!753268 (= (= lt!1616812 lt!1616736) (= lambda!151668 lambda!151657))))

(declare-fun bs!753269 () Bool)

(assert (= bs!753269 (and d!1337756 d!1337674)))

(assert (=> bs!753269 (not (= lambda!151668 lambda!151572))))

(declare-fun bs!753270 () Bool)

(assert (= bs!753270 (and d!1337756 d!1337746)))

(assert (=> bs!753270 (= (= lt!1616812 lt!1616789) (= lambda!151668 lambda!151662))))

(declare-fun bs!753271 () Bool)

(assert (= bs!753271 (and d!1337756 b!4414900)))

(assert (=> bs!753271 (= (= lt!1616812 lt!1616462) (= lambda!151668 lambda!151659))))

(assert (=> bs!753266 (= (= lt!1616812 (+!966 lt!1616462 lt!1616472)) (= lambda!151668 lambda!151666))))

(assert (=> bs!753268 (= (= lt!1616812 lt!1616462) (= lambda!151668 lambda!151656))))

(assert (=> d!1337756 true))

(declare-fun e!2749193 () ListMap!2597)

(assert (=> b!4414905 (= e!2749193 lt!1616795)))

(declare-fun lt!1616801 () ListMap!2597)

(assert (=> b!4414905 (= lt!1616801 (+!966 (+!966 lt!1616462 lt!1616472) (h!55076 lt!1616467)))))

(assert (=> b!4414905 (= lt!1616795 (addToMapMapFromBucket!337 (t!356483 lt!1616467) (+!966 (+!966 lt!1616462 lt!1616472) (h!55076 lt!1616467))))))

(declare-fun lt!1616798 () Unit!80663)

(declare-fun call!307263 () Unit!80663)

(assert (=> b!4414905 (= lt!1616798 call!307263)))

(assert (=> b!4414905 (forall!9462 (toList!3354 (+!966 lt!1616462 lt!1616472)) lambda!151666)))

(declare-fun lt!1616808 () Unit!80663)

(assert (=> b!4414905 (= lt!1616808 lt!1616798)))

(assert (=> b!4414905 (forall!9462 (toList!3354 lt!1616801) lambda!151667)))

(declare-fun lt!1616810 () Unit!80663)

(declare-fun Unit!80726 () Unit!80663)

(assert (=> b!4414905 (= lt!1616810 Unit!80726)))

(declare-fun call!307262 () Bool)

(assert (=> b!4414905 call!307262))

(declare-fun lt!1616807 () Unit!80663)

(declare-fun Unit!80727 () Unit!80663)

(assert (=> b!4414905 (= lt!1616807 Unit!80727)))

(declare-fun lt!1616797 () Unit!80663)

(declare-fun Unit!80728 () Unit!80663)

(assert (=> b!4414905 (= lt!1616797 Unit!80728)))

(declare-fun lt!1616811 () Unit!80663)

(assert (=> b!4414905 (= lt!1616811 (forallContained!2063 (toList!3354 lt!1616801) lambda!151667 (h!55076 lt!1616467)))))

(assert (=> b!4414905 (contains!11867 lt!1616801 (_1!27849 (h!55076 lt!1616467)))))

(declare-fun lt!1616813 () Unit!80663)

(declare-fun Unit!80729 () Unit!80663)

(assert (=> b!4414905 (= lt!1616813 Unit!80729)))

(assert (=> b!4414905 (contains!11867 lt!1616795 (_1!27849 (h!55076 lt!1616467)))))

(declare-fun lt!1616794 () Unit!80663)

(declare-fun Unit!80730 () Unit!80663)

(assert (=> b!4414905 (= lt!1616794 Unit!80730)))

(assert (=> b!4414905 (forall!9462 lt!1616467 lambda!151667)))

(declare-fun lt!1616805 () Unit!80663)

(declare-fun Unit!80731 () Unit!80663)

(assert (=> b!4414905 (= lt!1616805 Unit!80731)))

(assert (=> b!4414905 (forall!9462 (toList!3354 lt!1616801) lambda!151667)))

(declare-fun lt!1616804 () Unit!80663)

(declare-fun Unit!80732 () Unit!80663)

(assert (=> b!4414905 (= lt!1616804 Unit!80732)))

(declare-fun lt!1616796 () Unit!80663)

(declare-fun Unit!80733 () Unit!80663)

(assert (=> b!4414905 (= lt!1616796 Unit!80733)))

(declare-fun lt!1616814 () Unit!80663)

(assert (=> b!4414905 (= lt!1616814 (addForallContainsKeyThenBeforeAdding!153 (+!966 lt!1616462 lt!1616472) lt!1616795 (_1!27849 (h!55076 lt!1616467)) (_2!27849 (h!55076 lt!1616467))))))

(assert (=> b!4414905 (forall!9462 (toList!3354 (+!966 lt!1616462 lt!1616472)) lambda!151667)))

(declare-fun lt!1616800 () Unit!80663)

(assert (=> b!4414905 (= lt!1616800 lt!1616814)))

(assert (=> b!4414905 (forall!9462 (toList!3354 (+!966 lt!1616462 lt!1616472)) lambda!151667)))

(declare-fun lt!1616809 () Unit!80663)

(declare-fun Unit!80734 () Unit!80663)

(assert (=> b!4414905 (= lt!1616809 Unit!80734)))

(declare-fun res!1823205 () Bool)

(declare-fun call!307264 () Bool)

(assert (=> b!4414905 (= res!1823205 call!307264)))

(declare-fun e!2749194 () Bool)

(assert (=> b!4414905 (=> (not res!1823205) (not e!2749194))))

(assert (=> b!4414905 e!2749194))

(declare-fun lt!1616803 () Unit!80663)

(declare-fun Unit!80735 () Unit!80663)

(assert (=> b!4414905 (= lt!1616803 Unit!80735)))

(declare-fun bm!307257 () Bool)

(declare-fun c!751755 () Bool)

(assert (=> bm!307257 (= call!307264 (forall!9462 (ite c!751755 (toList!3354 (+!966 lt!1616462 lt!1616472)) lt!1616467) (ite c!751755 lambda!151665 lambda!151667)))))

(declare-fun b!4414906 () Bool)

(declare-fun res!1823206 () Bool)

(declare-fun e!2749195 () Bool)

(assert (=> b!4414906 (=> (not res!1823206) (not e!2749195))))

(assert (=> b!4414906 (= res!1823206 (forall!9462 (toList!3354 (+!966 lt!1616462 lt!1616472)) lambda!151668))))

(declare-fun bm!307258 () Bool)

(assert (=> bm!307258 (= call!307263 (lemmaContainsAllItsOwnKeys!153 (+!966 lt!1616462 lt!1616472)))))

(declare-fun b!4414907 () Bool)

(assert (=> b!4414907 (= e!2749194 (forall!9462 (toList!3354 (+!966 lt!1616462 lt!1616472)) lambda!151667))))

(declare-fun b!4414908 () Bool)

(assert (=> b!4414908 (= e!2749195 (invariantList!776 (toList!3354 lt!1616812)))))

(assert (=> b!4414909 (= e!2749193 (+!966 lt!1616462 lt!1616472))))

(declare-fun lt!1616802 () Unit!80663)

(assert (=> b!4414909 (= lt!1616802 call!307263)))

(assert (=> b!4414909 call!307264))

(declare-fun lt!1616799 () Unit!80663)

(assert (=> b!4414909 (= lt!1616799 lt!1616802)))

(assert (=> b!4414909 call!307262))

(declare-fun lt!1616806 () Unit!80663)

(declare-fun Unit!80736 () Unit!80663)

(assert (=> b!4414909 (= lt!1616806 Unit!80736)))

(declare-fun bm!307259 () Bool)

(assert (=> bm!307259 (= call!307262 (forall!9462 (ite c!751755 (toList!3354 (+!966 lt!1616462 lt!1616472)) (t!356483 lt!1616467)) (ite c!751755 lambda!151665 lambda!151667)))))

(assert (=> d!1337756 e!2749195))

(declare-fun res!1823204 () Bool)

(assert (=> d!1337756 (=> (not res!1823204) (not e!2749195))))

(assert (=> d!1337756 (= res!1823204 (forall!9462 lt!1616467 lambda!151668))))

(assert (=> d!1337756 (= lt!1616812 e!2749193)))

(assert (=> d!1337756 (= c!751755 ((_ is Nil!49421) lt!1616467))))

(assert (=> d!1337756 (noDuplicateKeys!683 lt!1616467)))

(assert (=> d!1337756 (= (addToMapMapFromBucket!337 lt!1616467 (+!966 lt!1616462 lt!1616472)) lt!1616812)))

(assert (= (and d!1337756 c!751755) b!4414909))

(assert (= (and d!1337756 (not c!751755)) b!4414905))

(assert (= (and b!4414905 res!1823205) b!4414907))

(assert (= (or b!4414909 b!4414905) bm!307258))

(assert (= (or b!4414909 b!4414905) bm!307259))

(assert (= (or b!4414909 b!4414905) bm!307257))

(assert (= (and d!1337756 res!1823204) b!4414906))

(assert (= (and b!4414906 res!1823206) b!4414908))

(declare-fun m!5090797 () Bool)

(assert (=> b!4414907 m!5090797))

(declare-fun m!5090799 () Bool)

(assert (=> bm!307259 m!5090799))

(declare-fun m!5090801 () Bool)

(assert (=> b!4414906 m!5090801))

(declare-fun m!5090803 () Bool)

(assert (=> b!4414908 m!5090803))

(declare-fun m!5090805 () Bool)

(assert (=> d!1337756 m!5090805))

(assert (=> d!1337756 m!5090695))

(declare-fun m!5090807 () Bool)

(assert (=> bm!307257 m!5090807))

(assert (=> bm!307258 m!5090345))

(declare-fun m!5090809 () Bool)

(assert (=> bm!307258 m!5090809))

(declare-fun m!5090811 () Bool)

(assert (=> b!4414905 m!5090811))

(assert (=> b!4414905 m!5090797))

(declare-fun m!5090813 () Bool)

(assert (=> b!4414905 m!5090813))

(declare-fun m!5090815 () Bool)

(assert (=> b!4414905 m!5090815))

(declare-fun m!5090817 () Bool)

(assert (=> b!4414905 m!5090817))

(declare-fun m!5090819 () Bool)

(assert (=> b!4414905 m!5090819))

(declare-fun m!5090821 () Bool)

(assert (=> b!4414905 m!5090821))

(assert (=> b!4414905 m!5090797))

(declare-fun m!5090823 () Bool)

(assert (=> b!4414905 m!5090823))

(assert (=> b!4414905 m!5090817))

(declare-fun m!5090825 () Bool)

(assert (=> b!4414905 m!5090825))

(assert (=> b!4414905 m!5090345))

(assert (=> b!4414905 m!5090819))

(assert (=> b!4414905 m!5090345))

(declare-fun m!5090827 () Bool)

(assert (=> b!4414905 m!5090827))

(assert (=> b!4414675 d!1337756))

(declare-fun d!1337758 () Bool)

(declare-fun e!2749196 () Bool)

(assert (=> d!1337758 e!2749196))

(declare-fun res!1823208 () Bool)

(assert (=> d!1337758 (=> (not res!1823208) (not e!2749196))))

(declare-fun lt!1616818 () ListMap!2597)

(assert (=> d!1337758 (= res!1823208 (contains!11867 lt!1616818 (_1!27849 lt!1616472)))))

(declare-fun lt!1616815 () List!49545)

(assert (=> d!1337758 (= lt!1616818 (ListMap!2598 lt!1616815))))

(declare-fun lt!1616816 () Unit!80663)

(declare-fun lt!1616817 () Unit!80663)

(assert (=> d!1337758 (= lt!1616816 lt!1616817)))

(assert (=> d!1337758 (= (getValueByKey!653 lt!1616815 (_1!27849 lt!1616472)) (Some!10666 (_2!27849 lt!1616472)))))

(assert (=> d!1337758 (= lt!1616817 (lemmaContainsTupThenGetReturnValue!391 lt!1616815 (_1!27849 lt!1616472) (_2!27849 lt!1616472)))))

(assert (=> d!1337758 (= lt!1616815 (insertNoDuplicatedKeys!169 (toList!3354 lt!1616462) (_1!27849 lt!1616472) (_2!27849 lt!1616472)))))

(assert (=> d!1337758 (= (+!966 lt!1616462 lt!1616472) lt!1616818)))

(declare-fun b!4414910 () Bool)

(declare-fun res!1823207 () Bool)

(assert (=> b!4414910 (=> (not res!1823207) (not e!2749196))))

(assert (=> b!4414910 (= res!1823207 (= (getValueByKey!653 (toList!3354 lt!1616818) (_1!27849 lt!1616472)) (Some!10666 (_2!27849 lt!1616472))))))

(declare-fun b!4414911 () Bool)

(assert (=> b!4414911 (= e!2749196 (contains!11873 (toList!3354 lt!1616818) lt!1616472))))

(assert (= (and d!1337758 res!1823208) b!4414910))

(assert (= (and b!4414910 res!1823207) b!4414911))

(declare-fun m!5090829 () Bool)

(assert (=> d!1337758 m!5090829))

(declare-fun m!5090831 () Bool)

(assert (=> d!1337758 m!5090831))

(declare-fun m!5090833 () Bool)

(assert (=> d!1337758 m!5090833))

(declare-fun m!5090835 () Bool)

(assert (=> d!1337758 m!5090835))

(declare-fun m!5090837 () Bool)

(assert (=> b!4414910 m!5090837))

(declare-fun m!5090839 () Bool)

(assert (=> b!4414911 m!5090839))

(assert (=> b!4414675 d!1337758))

(assert (=> b!4414674 d!1337752))

(declare-fun d!1337760 () Bool)

(declare-fun res!1823209 () Bool)

(declare-fun e!2749197 () Bool)

(assert (=> d!1337760 (=> res!1823209 e!2749197)))

(assert (=> d!1337760 (= res!1823209 ((_ is Nil!49422) (toList!3353 lt!1616470)))))

(assert (=> d!1337760 (= (forall!9460 (toList!3353 lt!1616470) lambda!151566) e!2749197)))

(declare-fun b!4414912 () Bool)

(declare-fun e!2749198 () Bool)

(assert (=> b!4414912 (= e!2749197 e!2749198)))

(declare-fun res!1823210 () Bool)

(assert (=> b!4414912 (=> (not res!1823210) (not e!2749198))))

(assert (=> b!4414912 (= res!1823210 (dynLambda!20807 lambda!151566 (h!55077 (toList!3353 lt!1616470))))))

(declare-fun b!4414913 () Bool)

(assert (=> b!4414913 (= e!2749198 (forall!9460 (t!356484 (toList!3353 lt!1616470)) lambda!151566))))

(assert (= (and d!1337760 (not res!1823209)) b!4414912))

(assert (= (and b!4414912 res!1823210) b!4414913))

(declare-fun b_lambda!142139 () Bool)

(assert (=> (not b_lambda!142139) (not b!4414912)))

(declare-fun m!5090841 () Bool)

(assert (=> b!4414912 m!5090841))

(declare-fun m!5090843 () Bool)

(assert (=> b!4414913 m!5090843))

(assert (=> b!4414684 d!1337760))

(declare-fun d!1337762 () Bool)

(declare-fun e!2749201 () Bool)

(assert (=> d!1337762 e!2749201))

(declare-fun res!1823215 () Bool)

(assert (=> d!1337762 (=> (not res!1823215) (not e!2749201))))

(declare-fun lt!1616827 () ListLongMap!2003)

(assert (=> d!1337762 (= res!1823215 (contains!11868 lt!1616827 (_1!27850 lt!1616466)))))

(declare-fun lt!1616830 () List!49546)

(assert (=> d!1337762 (= lt!1616827 (ListLongMap!2004 lt!1616830))))

(declare-fun lt!1616829 () Unit!80663)

(declare-fun lt!1616828 () Unit!80663)

(assert (=> d!1337762 (= lt!1616829 lt!1616828)))

(assert (=> d!1337762 (= (getValueByKey!654 lt!1616830 (_1!27850 lt!1616466)) (Some!10667 (_2!27850 lt!1616466)))))

(declare-fun lemmaContainsTupThenGetReturnValue!392 (List!49546 (_ BitVec 64) List!49545) Unit!80663)

(assert (=> d!1337762 (= lt!1616828 (lemmaContainsTupThenGetReturnValue!392 lt!1616830 (_1!27850 lt!1616466) (_2!27850 lt!1616466)))))

(declare-fun insertStrictlySorted!231 (List!49546 (_ BitVec 64) List!49545) List!49546)

(assert (=> d!1337762 (= lt!1616830 (insertStrictlySorted!231 (toList!3353 lm!1616) (_1!27850 lt!1616466) (_2!27850 lt!1616466)))))

(assert (=> d!1337762 (= (+!967 lm!1616 lt!1616466) lt!1616827)))

(declare-fun b!4414918 () Bool)

(declare-fun res!1823216 () Bool)

(assert (=> b!4414918 (=> (not res!1823216) (not e!2749201))))

(assert (=> b!4414918 (= res!1823216 (= (getValueByKey!654 (toList!3353 lt!1616827) (_1!27850 lt!1616466)) (Some!10667 (_2!27850 lt!1616466))))))

(declare-fun b!4414919 () Bool)

(declare-fun contains!11874 (List!49546 tuple2!49112) Bool)

(assert (=> b!4414919 (= e!2749201 (contains!11874 (toList!3353 lt!1616827) lt!1616466))))

(assert (= (and d!1337762 res!1823215) b!4414918))

(assert (= (and b!4414918 res!1823216) b!4414919))

(declare-fun m!5090845 () Bool)

(assert (=> d!1337762 m!5090845))

(declare-fun m!5090847 () Bool)

(assert (=> d!1337762 m!5090847))

(declare-fun m!5090849 () Bool)

(assert (=> d!1337762 m!5090849))

(declare-fun m!5090851 () Bool)

(assert (=> d!1337762 m!5090851))

(declare-fun m!5090853 () Bool)

(assert (=> b!4414918 m!5090853))

(declare-fun m!5090855 () Bool)

(assert (=> b!4414919 m!5090855))

(assert (=> b!4414684 d!1337762))

(declare-fun d!1337764 () Bool)

(assert (=> d!1337764 (forall!9460 (toList!3353 (+!967 lm!1616 (tuple2!49113 hash!366 newBucket!194))) lambda!151566)))

(declare-fun lt!1616833 () Unit!80663)

(declare-fun choose!27784 (ListLongMap!2003 Int (_ BitVec 64) List!49545) Unit!80663)

(assert (=> d!1337764 (= lt!1616833 (choose!27784 lm!1616 lambda!151566 hash!366 newBucket!194))))

(declare-fun e!2749204 () Bool)

(assert (=> d!1337764 e!2749204))

(declare-fun res!1823219 () Bool)

(assert (=> d!1337764 (=> (not res!1823219) (not e!2749204))))

(assert (=> d!1337764 (= res!1823219 (forall!9460 (toList!3353 lm!1616) lambda!151566))))

(assert (=> d!1337764 (= (addValidProp!327 lm!1616 lambda!151566 hash!366 newBucket!194) lt!1616833)))

(declare-fun b!4414923 () Bool)

(assert (=> b!4414923 (= e!2749204 (dynLambda!20807 lambda!151566 (tuple2!49113 hash!366 newBucket!194)))))

(assert (= (and d!1337764 res!1823219) b!4414923))

(declare-fun b_lambda!142141 () Bool)

(assert (=> (not b_lambda!142141) (not b!4414923)))

(declare-fun m!5090857 () Bool)

(assert (=> d!1337764 m!5090857))

(declare-fun m!5090859 () Bool)

(assert (=> d!1337764 m!5090859))

(declare-fun m!5090861 () Bool)

(assert (=> d!1337764 m!5090861))

(assert (=> d!1337764 m!5090379))

(declare-fun m!5090863 () Bool)

(assert (=> b!4414923 m!5090863))

(assert (=> b!4414684 d!1337764))

(declare-fun d!1337766 () Bool)

(assert (=> d!1337766 (= (tail!7171 (toList!3353 lt!1616470)) (t!356484 (toList!3353 lt!1616470)))))

(assert (=> b!4414673 d!1337766))

(declare-fun tp!1332500 () Bool)

(declare-fun e!2749207 () Bool)

(declare-fun b!4414928 () Bool)

(assert (=> b!4414928 (= e!2749207 (and tp_is_empty!25979 tp_is_empty!25977 tp!1332500))))

(assert (=> b!4414687 (= tp!1332488 e!2749207)))

(assert (= (and b!4414687 ((_ is Cons!49421) (t!356483 newBucket!194))) b!4414928))

(declare-fun b!4414933 () Bool)

(declare-fun e!2749210 () Bool)

(declare-fun tp!1332505 () Bool)

(declare-fun tp!1332506 () Bool)

(assert (=> b!4414933 (= e!2749210 (and tp!1332505 tp!1332506))))

(assert (=> b!4414685 (= tp!1332487 e!2749210)))

(assert (= (and b!4414685 ((_ is Cons!49422) (toList!3353 lm!1616))) b!4414933))

(declare-fun b_lambda!142143 () Bool)

(assert (= b_lambda!142141 (or start!429842 b_lambda!142143)))

(declare-fun bs!753272 () Bool)

(declare-fun d!1337768 () Bool)

(assert (= bs!753272 (and d!1337768 start!429842)))

(assert (=> bs!753272 (= (dynLambda!20807 lambda!151566 (tuple2!49113 hash!366 newBucket!194)) (noDuplicateKeys!683 (_2!27850 (tuple2!49113 hash!366 newBucket!194))))))

(declare-fun m!5090865 () Bool)

(assert (=> bs!753272 m!5090865))

(assert (=> b!4414923 d!1337768))

(declare-fun b_lambda!142145 () Bool)

(assert (= b_lambda!142119 (or start!429842 b_lambda!142145)))

(declare-fun bs!753273 () Bool)

(declare-fun d!1337770 () Bool)

(assert (= bs!753273 (and d!1337770 start!429842)))

(assert (=> bs!753273 (= (dynLambda!20807 lambda!151566 (h!55077 (toList!3353 lm!1616))) (noDuplicateKeys!683 (_2!27850 (h!55077 (toList!3353 lm!1616)))))))

(declare-fun m!5090867 () Bool)

(assert (=> bs!753273 m!5090867))

(assert (=> b!4414700 d!1337770))

(declare-fun b_lambda!142147 () Bool)

(assert (= b_lambda!142139 (or start!429842 b_lambda!142147)))

(declare-fun bs!753274 () Bool)

(declare-fun d!1337772 () Bool)

(assert (= bs!753274 (and d!1337772 start!429842)))

(assert (=> bs!753274 (= (dynLambda!20807 lambda!151566 (h!55077 (toList!3353 lt!1616470))) (noDuplicateKeys!683 (_2!27850 (h!55077 (toList!3353 lt!1616470)))))))

(declare-fun m!5090869 () Bool)

(assert (=> bs!753274 m!5090869))

(assert (=> b!4414912 d!1337772))

(declare-fun b_lambda!142149 () Bool)

(assert (= b_lambda!142137 (or start!429842 b_lambda!142149)))

(declare-fun bs!753275 () Bool)

(declare-fun d!1337774 () Bool)

(assert (= bs!753275 (and d!1337774 start!429842)))

(assert (=> bs!753275 (= (dynLambda!20807 lambda!151566 (h!55077 (t!356484 (toList!3353 lm!1616)))) (noDuplicateKeys!683 (_2!27850 (h!55077 (t!356484 (toList!3353 lm!1616))))))))

(declare-fun m!5090871 () Bool)

(assert (=> bs!753275 m!5090871))

(assert (=> b!4414888 d!1337774))

(check-sat (not b!4414896) (not d!1337764) (not b!4414732) (not b!4414908) (not bm!307226) (not d!1337752) (not b_lambda!142149) (not b!4414895) (not b!4414882) (not b!4414897) (not b!4414919) (not d!1337750) (not d!1337754) (not b!4414881) (not b!4414889) (not bs!753272) (not b!4414906) (not b!4414693) (not b!4414913) (not b!4414899) (not b!4414731) tp_is_empty!25979 (not b!4414692) (not bs!753275) (not b!4414883) (not d!1337678) (not b!4414776) (not bm!307258) (not b_lambda!142147) (not bm!307257) (not bm!307259) tp_is_empty!25977 (not b!4414884) (not d!1337692) (not b!4414894) (not b!4414728) (not b!4414911) (not b_lambda!142145) (not d!1337744) (not d!1337674) (not b!4414736) (not b!4414903) (not b!4414735) (not bs!753273) (not d!1337762) (not d!1337688) (not b!4414733) (not bs!753274) (not d!1337748) (not d!1337758) (not b!4414901) (not bm!307256) (not d!1337676) (not d!1337740) (not b!4414774) (not b!4414907) (not d!1337672) (not bm!307255) (not d!1337746) (not b!4414905) (not b!4414701) (not d!1337668) (not b!4414734) (not bm!307252) (not b!4414933) (not b!4414898) (not b!4414758) (not bm!307254) (not b!4414918) (not b!4414928) (not d!1337756) (not d!1337682) (not b!4414910) (not b_lambda!142143) (not bm!307253) (not bm!307251))
(check-sat)
