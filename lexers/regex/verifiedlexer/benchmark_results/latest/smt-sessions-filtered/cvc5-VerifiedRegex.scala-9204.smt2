; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489188 () Bool)

(assert start!489188)

(declare-fun b!4774309 () Bool)

(declare-fun e!2980555 () Bool)

(declare-fun tp!1356939 () Bool)

(assert (=> b!4774309 (= e!2980555 tp!1356939)))

(declare-fun b!4774310 () Bool)

(declare-fun res!2025663 () Bool)

(declare-fun e!2980558 () Bool)

(assert (=> b!4774310 (=> (not res!2025663) (not e!2980558))))

(declare-datatypes ((K!15307 0))(
  ( (K!15308 (val!20551 Int)) )
))
(declare-datatypes ((V!15553 0))(
  ( (V!15554 (val!20552 Int)) )
))
(declare-datatypes ((tuple2!56076 0))(
  ( (tuple2!56077 (_1!31332 K!15307) (_2!31332 V!15553)) )
))
(declare-datatypes ((List!53895 0))(
  ( (Nil!53771) (Cons!53771 (h!60185 tuple2!56076) (t!361345 List!53895)) )
))
(declare-datatypes ((tuple2!56078 0))(
  ( (tuple2!56079 (_1!31333 (_ BitVec 64)) (_2!31333 List!53895)) )
))
(declare-datatypes ((List!53896 0))(
  ( (Nil!53772) (Cons!53772 (h!60186 tuple2!56078) (t!361346 List!53896)) )
))
(declare-datatypes ((ListLongMap!4955 0))(
  ( (ListLongMap!4956 (toList!6541 List!53896)) )
))
(declare-fun lm!1309 () ListLongMap!4955)

(declare-datatypes ((Hashable!6727 0))(
  ( (HashableExt!6726 (__x!32750 Int)) )
))
(declare-fun hashF!980 () Hashable!6727)

(declare-fun allKeysSameHashInMap!2132 (ListLongMap!4955 Hashable!6727) Bool)

(assert (=> b!4774310 (= res!2025663 (allKeysSameHashInMap!2132 lm!1309 hashF!980))))

(declare-fun b!4774311 () Bool)

(declare-fun e!2980557 () Bool)

(declare-fun e!2980556 () Bool)

(assert (=> b!4774311 (= e!2980557 (not e!2980556))))

(declare-fun res!2025662 () Bool)

(assert (=> b!4774311 (=> res!2025662 e!2980556)))

(declare-fun lt!1937457 () tuple2!56076)

(declare-fun v!9615 () V!15553)

(assert (=> b!4774311 (= res!2025662 (not (= (_2!31332 lt!1937457) v!9615)))))

(declare-datatypes ((Option!12824 0))(
  ( (None!12823) (Some!12823 (v!47970 tuple2!56076)) )
))
(declare-fun lt!1937450 () Option!12824)

(declare-fun get!18224 (Option!12824) tuple2!56076)

(assert (=> b!4774311 (= lt!1937457 (get!18224 lt!1937450))))

(declare-fun isDefined!9969 (Option!12824) Bool)

(assert (=> b!4774311 (isDefined!9969 lt!1937450)))

(declare-fun lt!1937452 () List!53895)

(declare-fun key!2872 () K!15307)

(declare-fun getPair!735 (List!53895 K!15307) Option!12824)

(assert (=> b!4774311 (= lt!1937450 (getPair!735 lt!1937452 key!2872))))

(declare-fun lt!1937448 () tuple2!56078)

(declare-fun lambda!226224 () Int)

(declare-datatypes ((Unit!138763 0))(
  ( (Unit!138764) )
))
(declare-fun lt!1937445 () Unit!138763)

(declare-fun forallContained!3968 (List!53896 Int tuple2!56078) Unit!138763)

(assert (=> b!4774311 (= lt!1937445 (forallContained!3968 (toList!6541 lm!1309) lambda!226224 lt!1937448))))

(declare-fun lt!1937446 () Unit!138763)

(declare-fun lemmaInGenMapThenGetPairDefined!509 (ListLongMap!4955 K!15307 Hashable!6727) Unit!138763)

(assert (=> b!4774311 (= lt!1937446 (lemmaInGenMapThenGetPairDefined!509 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1937454 () Unit!138763)

(assert (=> b!4774311 (= lt!1937454 (forallContained!3968 (toList!6541 lm!1309) lambda!226224 lt!1937448))))

(declare-fun contains!17230 (List!53896 tuple2!56078) Bool)

(assert (=> b!4774311 (contains!17230 (toList!6541 lm!1309) lt!1937448)))

(declare-fun lt!1937453 () (_ BitVec 64))

(assert (=> b!4774311 (= lt!1937448 (tuple2!56079 lt!1937453 lt!1937452))))

(declare-fun lt!1937456 () Unit!138763)

(declare-fun lemmaGetValueImpliesTupleContained!530 (ListLongMap!4955 (_ BitVec 64) List!53895) Unit!138763)

(assert (=> b!4774311 (= lt!1937456 (lemmaGetValueImpliesTupleContained!530 lm!1309 lt!1937453 lt!1937452))))

(declare-fun apply!12798 (ListLongMap!4955 (_ BitVec 64)) List!53895)

(assert (=> b!4774311 (= lt!1937452 (apply!12798 lm!1309 lt!1937453))))

(declare-fun contains!17231 (ListLongMap!4955 (_ BitVec 64)) Bool)

(assert (=> b!4774311 (contains!17231 lm!1309 lt!1937453)))

(declare-fun hash!4703 (Hashable!6727 K!15307) (_ BitVec 64))

(assert (=> b!4774311 (= lt!1937453 (hash!4703 hashF!980 key!2872))))

(declare-fun lt!1937460 () Unit!138763)

(declare-fun lemmaInGenMapThenLongMapContainsHash!939 (ListLongMap!4955 K!15307 Hashable!6727) Unit!138763)

(assert (=> b!4774311 (= lt!1937460 (lemmaInGenMapThenLongMapContainsHash!939 lm!1309 key!2872 hashF!980))))

(declare-fun res!2025665 () Bool)

(assert (=> start!489188 (=> (not res!2025665) (not e!2980558))))

(declare-fun forall!11995 (List!53896 Int) Bool)

(assert (=> start!489188 (= res!2025665 (forall!11995 (toList!6541 lm!1309) lambda!226224))))

(assert (=> start!489188 e!2980558))

(declare-fun inv!69334 (ListLongMap!4955) Bool)

(assert (=> start!489188 (and (inv!69334 lm!1309) e!2980555)))

(assert (=> start!489188 true))

(declare-fun tp_is_empty!32885 () Bool)

(assert (=> start!489188 tp_is_empty!32885))

(declare-fun tp_is_empty!32887 () Bool)

(assert (=> start!489188 tp_is_empty!32887))

(declare-fun b!4774312 () Bool)

(declare-fun e!2980559 () Bool)

(declare-datatypes ((ListMap!6021 0))(
  ( (ListMap!6022 (toList!6542 List!53895)) )
))
(declare-fun lt!1937459 () ListMap!6021)

(declare-datatypes ((Option!12825 0))(
  ( (None!12824) (Some!12824 (v!47971 V!15553)) )
))
(declare-fun get!18225 (Option!12825) V!15553)

(declare-fun getValueByKey!2237 (List!53895 K!15307) Option!12825)

(assert (=> b!4774312 (= e!2980559 (= (_2!31332 lt!1937457) (get!18225 (getValueByKey!2237 (toList!6542 lt!1937459) key!2872))))))

(declare-fun lt!1937447 () Unit!138763)

(assert (=> b!4774312 (= lt!1937447 (forallContained!3968 (toList!6541 lm!1309) lambda!226224 lt!1937448))))

(declare-fun lt!1937455 () Unit!138763)

(assert (=> b!4774312 (= lt!1937455 (forallContained!3968 (toList!6541 lm!1309) lambda!226224 lt!1937448))))

(declare-fun apply!12799 (ListMap!6021 K!15307) V!15553)

(assert (=> b!4774312 (= (apply!12799 lt!1937459 key!2872) v!9615)))

(declare-fun lt!1937444 () Unit!138763)

(declare-fun lemmaExtractMapPreservesMapping!31 (ListLongMap!4955 K!15307 V!15553 Hashable!6727) Unit!138763)

(assert (=> b!4774312 (= lt!1937444 (lemmaExtractMapPreservesMapping!31 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1937451 () Unit!138763)

(declare-fun lemmaInGenericMapThenInLongMap!249 (ListLongMap!4955 K!15307 Hashable!6727) Unit!138763)

(assert (=> b!4774312 (= lt!1937451 (lemmaInGenericMapThenInLongMap!249 lm!1309 key!2872 hashF!980))))

(declare-fun b!4774313 () Bool)

(assert (=> b!4774313 (= e!2980556 e!2980559)))

(declare-fun res!2025661 () Bool)

(assert (=> b!4774313 (=> res!2025661 e!2980559)))

(assert (=> b!4774313 (= res!2025661 (not (forall!11995 (toList!6541 lm!1309) lambda!226224)))))

(declare-fun getValue!41 (List!53896 K!15307) V!15553)

(assert (=> b!4774313 (= (getValue!41 (toList!6541 lm!1309) key!2872) v!9615)))

(declare-fun lt!1937458 () Unit!138763)

(declare-fun lemmaGetValueEquivToGetPair!41 (ListLongMap!4955 K!15307 V!15553 Hashable!6727) Unit!138763)

(assert (=> b!4774313 (= lt!1937458 (lemmaGetValueEquivToGetPair!41 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!383 (List!53896 K!15307) Bool)

(assert (=> b!4774313 (containsKeyBiggerList!383 (toList!6541 lm!1309) key!2872)))

(declare-fun lt!1937449 () Unit!138763)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!241 (ListLongMap!4955 K!15307 Hashable!6727) Unit!138763)

(assert (=> b!4774313 (= lt!1937449 (lemmaInLongMapThenContainsKeyBiggerList!241 lm!1309 key!2872 hashF!980))))

(declare-fun b!4774314 () Bool)

(assert (=> b!4774314 (= e!2980558 e!2980557)))

(declare-fun res!2025664 () Bool)

(assert (=> b!4774314 (=> (not res!2025664) (not e!2980557))))

(declare-fun contains!17232 (ListMap!6021 K!15307) Bool)

(assert (=> b!4774314 (= res!2025664 (contains!17232 lt!1937459 key!2872))))

(declare-fun extractMap!2262 (List!53896) ListMap!6021)

(assert (=> b!4774314 (= lt!1937459 (extractMap!2262 (toList!6541 lm!1309)))))

(assert (= (and start!489188 res!2025665) b!4774310))

(assert (= (and b!4774310 res!2025663) b!4774314))

(assert (= (and b!4774314 res!2025664) b!4774311))

(assert (= (and b!4774311 (not res!2025662)) b!4774313))

(assert (= (and b!4774313 (not res!2025661)) b!4774312))

(assert (= start!489188 b!4774309))

(declare-fun m!5748352 () Bool)

(assert (=> b!4774313 m!5748352))

(declare-fun m!5748354 () Bool)

(assert (=> b!4774313 m!5748354))

(declare-fun m!5748356 () Bool)

(assert (=> b!4774313 m!5748356))

(declare-fun m!5748358 () Bool)

(assert (=> b!4774313 m!5748358))

(declare-fun m!5748360 () Bool)

(assert (=> b!4774313 m!5748360))

(assert (=> start!489188 m!5748356))

(declare-fun m!5748362 () Bool)

(assert (=> start!489188 m!5748362))

(declare-fun m!5748364 () Bool)

(assert (=> b!4774314 m!5748364))

(declare-fun m!5748366 () Bool)

(assert (=> b!4774314 m!5748366))

(declare-fun m!5748368 () Bool)

(assert (=> b!4774311 m!5748368))

(declare-fun m!5748370 () Bool)

(assert (=> b!4774311 m!5748370))

(declare-fun m!5748372 () Bool)

(assert (=> b!4774311 m!5748372))

(declare-fun m!5748374 () Bool)

(assert (=> b!4774311 m!5748374))

(assert (=> b!4774311 m!5748372))

(declare-fun m!5748376 () Bool)

(assert (=> b!4774311 m!5748376))

(declare-fun m!5748378 () Bool)

(assert (=> b!4774311 m!5748378))

(declare-fun m!5748380 () Bool)

(assert (=> b!4774311 m!5748380))

(declare-fun m!5748382 () Bool)

(assert (=> b!4774311 m!5748382))

(declare-fun m!5748384 () Bool)

(assert (=> b!4774311 m!5748384))

(declare-fun m!5748386 () Bool)

(assert (=> b!4774311 m!5748386))

(declare-fun m!5748388 () Bool)

(assert (=> b!4774311 m!5748388))

(declare-fun m!5748390 () Bool)

(assert (=> b!4774312 m!5748390))

(assert (=> b!4774312 m!5748372))

(declare-fun m!5748392 () Bool)

(assert (=> b!4774312 m!5748392))

(assert (=> b!4774312 m!5748390))

(declare-fun m!5748394 () Bool)

(assert (=> b!4774312 m!5748394))

(assert (=> b!4774312 m!5748372))

(declare-fun m!5748396 () Bool)

(assert (=> b!4774312 m!5748396))

(declare-fun m!5748398 () Bool)

(assert (=> b!4774312 m!5748398))

(declare-fun m!5748400 () Bool)

(assert (=> b!4774310 m!5748400))

(push 1)

(assert (not b!4774313))

(assert (not b!4774311))

(assert (not b!4774310))

(assert (not start!489188))

(assert tp_is_empty!32887)

(assert (not b!4774314))

(assert tp_is_empty!32885)

(assert (not b!4774312))

(assert (not b!4774309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1150300 () Bool)

(declare-fun d!1525807 () Bool)

(assert (= bs!1150300 (and d!1525807 start!489188)))

(declare-fun lambda!226240 () Int)

(assert (=> bs!1150300 (= lambda!226240 lambda!226224)))

(assert (=> d!1525807 (contains!17231 lm!1309 (hash!4703 hashF!980 key!2872))))

(declare-fun lt!1937520 () Unit!138763)

(declare-fun choose!34104 (ListLongMap!4955 K!15307 Hashable!6727) Unit!138763)

(assert (=> d!1525807 (= lt!1937520 (choose!34104 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525807 (forall!11995 (toList!6541 lm!1309) lambda!226240)))

(assert (=> d!1525807 (= (lemmaInGenMapThenLongMapContainsHash!939 lm!1309 key!2872 hashF!980) lt!1937520)))

(declare-fun bs!1150301 () Bool)

(assert (= bs!1150301 d!1525807))

(assert (=> bs!1150301 m!5748386))

(assert (=> bs!1150301 m!5748386))

(declare-fun m!5748460 () Bool)

(assert (=> bs!1150301 m!5748460))

(declare-fun m!5748462 () Bool)

(assert (=> bs!1150301 m!5748462))

(declare-fun m!5748464 () Bool)

(assert (=> bs!1150301 m!5748464))

(assert (=> b!4774311 d!1525807))

(declare-fun d!1525811 () Bool)

(declare-datatypes ((Option!12828 0))(
  ( (None!12827) (Some!12827 (v!47979 List!53895)) )
))
(declare-fun get!18228 (Option!12828) List!53895)

(declare-fun getValueByKey!2239 (List!53896 (_ BitVec 64)) Option!12828)

(assert (=> d!1525811 (= (apply!12798 lm!1309 lt!1937453) (get!18228 (getValueByKey!2239 (toList!6541 lm!1309) lt!1937453)))))

(declare-fun bs!1150302 () Bool)

(assert (= bs!1150302 d!1525811))

(declare-fun m!5748466 () Bool)

(assert (=> bs!1150302 m!5748466))

(assert (=> bs!1150302 m!5748466))

(declare-fun m!5748468 () Bool)

(assert (=> bs!1150302 m!5748468))

(assert (=> b!4774311 d!1525811))

(declare-fun d!1525813 () Bool)

(assert (=> d!1525813 (= (get!18224 lt!1937450) (v!47970 lt!1937450))))

(assert (=> b!4774311 d!1525813))

(declare-fun d!1525815 () Bool)

(declare-fun e!2980587 () Bool)

(assert (=> d!1525815 e!2980587))

(declare-fun res!2025686 () Bool)

(assert (=> d!1525815 (=> res!2025686 e!2980587)))

(declare-fun lt!1937531 () Bool)

(assert (=> d!1525815 (= res!2025686 (not lt!1937531))))

(declare-fun lt!1937533 () Bool)

(assert (=> d!1525815 (= lt!1937531 lt!1937533)))

(declare-fun lt!1937534 () Unit!138763)

(declare-fun e!2980586 () Unit!138763)

(assert (=> d!1525815 (= lt!1937534 e!2980586)))

(declare-fun c!814178 () Bool)

(assert (=> d!1525815 (= c!814178 lt!1937533)))

(declare-fun containsKey!3713 (List!53896 (_ BitVec 64)) Bool)

(assert (=> d!1525815 (= lt!1937533 (containsKey!3713 (toList!6541 lm!1309) lt!1937453))))

(assert (=> d!1525815 (= (contains!17231 lm!1309 lt!1937453) lt!1937531)))

(declare-fun b!4774351 () Bool)

(declare-fun lt!1937532 () Unit!138763)

(assert (=> b!4774351 (= e!2980586 lt!1937532)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2032 (List!53896 (_ BitVec 64)) Unit!138763)

(assert (=> b!4774351 (= lt!1937532 (lemmaContainsKeyImpliesGetValueByKeyDefined!2032 (toList!6541 lm!1309) lt!1937453))))

(declare-fun isDefined!9971 (Option!12828) Bool)

(assert (=> b!4774351 (isDefined!9971 (getValueByKey!2239 (toList!6541 lm!1309) lt!1937453))))

(declare-fun b!4774352 () Bool)

(declare-fun Unit!138767 () Unit!138763)

(assert (=> b!4774352 (= e!2980586 Unit!138767)))

(declare-fun b!4774353 () Bool)

(assert (=> b!4774353 (= e!2980587 (isDefined!9971 (getValueByKey!2239 (toList!6541 lm!1309) lt!1937453)))))

(assert (= (and d!1525815 c!814178) b!4774351))

(assert (= (and d!1525815 (not c!814178)) b!4774352))

(assert (= (and d!1525815 (not res!2025686)) b!4774353))

(declare-fun m!5748470 () Bool)

(assert (=> d!1525815 m!5748470))

(declare-fun m!5748472 () Bool)

(assert (=> b!4774351 m!5748472))

(assert (=> b!4774351 m!5748466))

(assert (=> b!4774351 m!5748466))

(declare-fun m!5748474 () Bool)

(assert (=> b!4774351 m!5748474))

(assert (=> b!4774353 m!5748466))

(assert (=> b!4774353 m!5748466))

(assert (=> b!4774353 m!5748474))

(assert (=> b!4774311 d!1525815))

(declare-fun b!4774386 () Bool)

(declare-fun e!2980609 () Option!12824)

(assert (=> b!4774386 (= e!2980609 (getPair!735 (t!361345 lt!1937452) key!2872))))

(declare-fun b!4774387 () Bool)

(declare-fun e!2980611 () Option!12824)

(assert (=> b!4774387 (= e!2980611 (Some!12823 (h!60185 lt!1937452)))))

(declare-fun b!4774388 () Bool)

(assert (=> b!4774388 (= e!2980609 None!12823)))

(declare-fun b!4774389 () Bool)

(declare-fun e!2980610 () Bool)

(declare-fun e!2980613 () Bool)

(assert (=> b!4774389 (= e!2980610 e!2980613)))

(declare-fun res!2025707 () Bool)

(assert (=> b!4774389 (=> (not res!2025707) (not e!2980613))))

(declare-fun lt!1937538 () Option!12824)

(assert (=> b!4774389 (= res!2025707 (isDefined!9969 lt!1937538))))

(declare-fun d!1525817 () Bool)

(assert (=> d!1525817 e!2980610))

(declare-fun res!2025709 () Bool)

(assert (=> d!1525817 (=> res!2025709 e!2980610)))

(declare-fun e!2980612 () Bool)

(assert (=> d!1525817 (= res!2025709 e!2980612)))

(declare-fun res!2025710 () Bool)

(assert (=> d!1525817 (=> (not res!2025710) (not e!2980612))))

(declare-fun isEmpty!29312 (Option!12824) Bool)

(assert (=> d!1525817 (= res!2025710 (isEmpty!29312 lt!1937538))))

(assert (=> d!1525817 (= lt!1937538 e!2980611)))

(declare-fun c!814186 () Bool)

(assert (=> d!1525817 (= c!814186 (and (is-Cons!53771 lt!1937452) (= (_1!31332 (h!60185 lt!1937452)) key!2872)))))

(declare-fun noDuplicateKeys!2272 (List!53895) Bool)

(assert (=> d!1525817 (noDuplicateKeys!2272 lt!1937452)))

(assert (=> d!1525817 (= (getPair!735 lt!1937452 key!2872) lt!1937538)))

(declare-fun b!4774390 () Bool)

(declare-fun containsKey!3714 (List!53895 K!15307) Bool)

(assert (=> b!4774390 (= e!2980612 (not (containsKey!3714 lt!1937452 key!2872)))))

(declare-fun b!4774391 () Bool)

(declare-fun contains!17236 (List!53895 tuple2!56076) Bool)

(assert (=> b!4774391 (= e!2980613 (contains!17236 lt!1937452 (get!18224 lt!1937538)))))

(declare-fun b!4774392 () Bool)

(declare-fun res!2025708 () Bool)

(assert (=> b!4774392 (=> (not res!2025708) (not e!2980613))))

(assert (=> b!4774392 (= res!2025708 (= (_1!31332 (get!18224 lt!1937538)) key!2872))))

(declare-fun b!4774393 () Bool)

(assert (=> b!4774393 (= e!2980611 e!2980609)))

(declare-fun c!814185 () Bool)

(assert (=> b!4774393 (= c!814185 (is-Cons!53771 lt!1937452))))

(assert (= (and d!1525817 c!814186) b!4774387))

(assert (= (and d!1525817 (not c!814186)) b!4774393))

(assert (= (and b!4774393 c!814185) b!4774386))

(assert (= (and b!4774393 (not c!814185)) b!4774388))

(assert (= (and d!1525817 res!2025710) b!4774390))

(assert (= (and d!1525817 (not res!2025709)) b!4774389))

(assert (= (and b!4774389 res!2025707) b!4774392))

(assert (= (and b!4774392 res!2025708) b!4774391))

(declare-fun m!5748476 () Bool)

(assert (=> b!4774390 m!5748476))

(declare-fun m!5748478 () Bool)

(assert (=> b!4774392 m!5748478))

(declare-fun m!5748480 () Bool)

(assert (=> b!4774386 m!5748480))

(assert (=> b!4774391 m!5748478))

(assert (=> b!4774391 m!5748478))

(declare-fun m!5748482 () Bool)

(assert (=> b!4774391 m!5748482))

(declare-fun m!5748484 () Bool)

(assert (=> b!4774389 m!5748484))

(declare-fun m!5748486 () Bool)

(assert (=> d!1525817 m!5748486))

(declare-fun m!5748488 () Bool)

(assert (=> d!1525817 m!5748488))

(assert (=> b!4774311 d!1525817))

(declare-fun d!1525819 () Bool)

(assert (=> d!1525819 (= (isDefined!9969 lt!1937450) (not (isEmpty!29312 lt!1937450)))))

(declare-fun bs!1150303 () Bool)

(assert (= bs!1150303 d!1525819))

(declare-fun m!5748504 () Bool)

(assert (=> bs!1150303 m!5748504))

(assert (=> b!4774311 d!1525819))

(declare-fun d!1525823 () Bool)

(declare-fun lt!1937541 () Bool)

(declare-fun content!9609 (List!53896) (Set tuple2!56078))

(assert (=> d!1525823 (= lt!1937541 (set.member lt!1937448 (content!9609 (toList!6541 lm!1309))))))

(declare-fun e!2980619 () Bool)

(assert (=> d!1525823 (= lt!1937541 e!2980619)))

(declare-fun res!2025716 () Bool)

(assert (=> d!1525823 (=> (not res!2025716) (not e!2980619))))

(assert (=> d!1525823 (= res!2025716 (is-Cons!53772 (toList!6541 lm!1309)))))

(assert (=> d!1525823 (= (contains!17230 (toList!6541 lm!1309) lt!1937448) lt!1937541)))

(declare-fun b!4774398 () Bool)

(declare-fun e!2980618 () Bool)

(assert (=> b!4774398 (= e!2980619 e!2980618)))

(declare-fun res!2025715 () Bool)

(assert (=> b!4774398 (=> res!2025715 e!2980618)))

(assert (=> b!4774398 (= res!2025715 (= (h!60186 (toList!6541 lm!1309)) lt!1937448))))

(declare-fun b!4774399 () Bool)

(assert (=> b!4774399 (= e!2980618 (contains!17230 (t!361346 (toList!6541 lm!1309)) lt!1937448))))

(assert (= (and d!1525823 res!2025716) b!4774398))

(assert (= (and b!4774398 (not res!2025715)) b!4774399))

(declare-fun m!5748506 () Bool)

(assert (=> d!1525823 m!5748506))

(declare-fun m!5748508 () Bool)

(assert (=> d!1525823 m!5748508))

(declare-fun m!5748510 () Bool)

(assert (=> b!4774399 m!5748510))

(assert (=> b!4774311 d!1525823))

(declare-fun d!1525825 () Bool)

(declare-fun hash!4705 (Hashable!6727 K!15307) (_ BitVec 64))

(assert (=> d!1525825 (= (hash!4703 hashF!980 key!2872) (hash!4705 hashF!980 key!2872))))

(declare-fun bs!1150304 () Bool)

(assert (= bs!1150304 d!1525825))

(declare-fun m!5748512 () Bool)

(assert (=> bs!1150304 m!5748512))

(assert (=> b!4774311 d!1525825))

(declare-fun bs!1150308 () Bool)

(declare-fun d!1525827 () Bool)

(assert (= bs!1150308 (and d!1525827 start!489188)))

(declare-fun lambda!226250 () Int)

(assert (=> bs!1150308 (= lambda!226250 lambda!226224)))

(declare-fun bs!1150309 () Bool)

(assert (= bs!1150309 (and d!1525827 d!1525807)))

(assert (=> bs!1150309 (= lambda!226250 lambda!226240)))

(declare-fun e!2980631 () Bool)

(assert (=> d!1525827 e!2980631))

(declare-fun res!2025733 () Bool)

(assert (=> d!1525827 (=> (not res!2025733) (not e!2980631))))

(assert (=> d!1525827 (= res!2025733 (forall!11995 (toList!6541 lm!1309) lambda!226250))))

(declare-fun lt!1937567 () Unit!138763)

(declare-fun choose!34105 (ListLongMap!4955 K!15307 Hashable!6727) Unit!138763)

(assert (=> d!1525827 (= lt!1937567 (choose!34105 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525827 (forall!11995 (toList!6541 lm!1309) lambda!226250)))

(assert (=> d!1525827 (= (lemmaInGenMapThenGetPairDefined!509 lm!1309 key!2872 hashF!980) lt!1937567)))

(declare-fun b!4774415 () Bool)

(declare-fun res!2025731 () Bool)

(assert (=> b!4774415 (=> (not res!2025731) (not e!2980631))))

(assert (=> b!4774415 (= res!2025731 (contains!17232 (extractMap!2262 (toList!6541 lm!1309)) key!2872))))

(declare-fun b!4774417 () Bool)

(declare-fun lt!1937569 () List!53895)

(declare-fun lt!1937565 () (_ BitVec 64))

(declare-fun e!2980630 () Bool)

(assert (=> b!4774417 (= e!2980630 (= (getValueByKey!2239 (toList!6541 lm!1309) lt!1937565) (Some!12827 lt!1937569)))))

(declare-fun b!4774414 () Bool)

(declare-fun res!2025734 () Bool)

(assert (=> b!4774414 (=> (not res!2025734) (not e!2980631))))

(assert (=> b!4774414 (= res!2025734 (allKeysSameHashInMap!2132 lm!1309 hashF!980))))

(declare-fun b!4774416 () Bool)

(assert (=> b!4774416 (= e!2980631 (isDefined!9969 (getPair!735 (apply!12798 lm!1309 (hash!4703 hashF!980 key!2872)) key!2872)))))

(declare-fun lt!1937568 () Unit!138763)

(assert (=> b!4774416 (= lt!1937568 (forallContained!3968 (toList!6541 lm!1309) lambda!226250 (tuple2!56079 (hash!4703 hashF!980 key!2872) (apply!12798 lm!1309 (hash!4703 hashF!980 key!2872)))))))

(declare-fun lt!1937566 () Unit!138763)

(declare-fun lt!1937564 () Unit!138763)

(assert (=> b!4774416 (= lt!1937566 lt!1937564)))

(assert (=> b!4774416 (contains!17230 (toList!6541 lm!1309) (tuple2!56079 lt!1937565 lt!1937569))))

(assert (=> b!4774416 (= lt!1937564 (lemmaGetValueImpliesTupleContained!530 lm!1309 lt!1937565 lt!1937569))))

(assert (=> b!4774416 e!2980630))

(declare-fun res!2025732 () Bool)

(assert (=> b!4774416 (=> (not res!2025732) (not e!2980630))))

(assert (=> b!4774416 (= res!2025732 (contains!17231 lm!1309 lt!1937565))))

(assert (=> b!4774416 (= lt!1937569 (apply!12798 lm!1309 (hash!4703 hashF!980 key!2872)))))

(assert (=> b!4774416 (= lt!1937565 (hash!4703 hashF!980 key!2872))))

(declare-fun lt!1937570 () Unit!138763)

(declare-fun lt!1937571 () Unit!138763)

(assert (=> b!4774416 (= lt!1937570 lt!1937571)))

(assert (=> b!4774416 (contains!17231 lm!1309 (hash!4703 hashF!980 key!2872))))

(assert (=> b!4774416 (= lt!1937571 (lemmaInGenMapThenLongMapContainsHash!939 lm!1309 key!2872 hashF!980))))

(assert (= (and d!1525827 res!2025733) b!4774414))

(assert (= (and b!4774414 res!2025734) b!4774415))

(assert (= (and b!4774415 res!2025731) b!4774416))

(assert (= (and b!4774416 res!2025732) b!4774417))

(assert (=> b!4774415 m!5748366))

(assert (=> b!4774415 m!5748366))

(declare-fun m!5748528 () Bool)

(assert (=> b!4774415 m!5748528))

(assert (=> b!4774414 m!5748400))

(declare-fun m!5748530 () Bool)

(assert (=> b!4774417 m!5748530))

(assert (=> b!4774416 m!5748368))

(assert (=> b!4774416 m!5748386))

(declare-fun m!5748532 () Bool)

(assert (=> b!4774416 m!5748532))

(assert (=> b!4774416 m!5748386))

(assert (=> b!4774416 m!5748386))

(assert (=> b!4774416 m!5748460))

(declare-fun m!5748534 () Bool)

(assert (=> b!4774416 m!5748534))

(declare-fun m!5748536 () Bool)

(assert (=> b!4774416 m!5748536))

(assert (=> b!4774416 m!5748532))

(declare-fun m!5748538 () Bool)

(assert (=> b!4774416 m!5748538))

(declare-fun m!5748540 () Bool)

(assert (=> b!4774416 m!5748540))

(declare-fun m!5748542 () Bool)

(assert (=> b!4774416 m!5748542))

(assert (=> b!4774416 m!5748538))

(declare-fun m!5748544 () Bool)

(assert (=> b!4774416 m!5748544))

(declare-fun m!5748546 () Bool)

(assert (=> d!1525827 m!5748546))

(declare-fun m!5748548 () Bool)

(assert (=> d!1525827 m!5748548))

(assert (=> d!1525827 m!5748546))

(assert (=> b!4774311 d!1525827))

(declare-fun d!1525837 () Bool)

(assert (=> d!1525837 (contains!17230 (toList!6541 lm!1309) (tuple2!56079 lt!1937453 lt!1937452))))

(declare-fun lt!1937574 () Unit!138763)

(declare-fun choose!34106 (ListLongMap!4955 (_ BitVec 64) List!53895) Unit!138763)

(assert (=> d!1525837 (= lt!1937574 (choose!34106 lm!1309 lt!1937453 lt!1937452))))

(assert (=> d!1525837 (contains!17231 lm!1309 lt!1937453)))

(assert (=> d!1525837 (= (lemmaGetValueImpliesTupleContained!530 lm!1309 lt!1937453 lt!1937452) lt!1937574)))

(declare-fun bs!1150310 () Bool)

(assert (= bs!1150310 d!1525837))

(declare-fun m!5748550 () Bool)

(assert (=> bs!1150310 m!5748550))

(declare-fun m!5748552 () Bool)

(assert (=> bs!1150310 m!5748552))

(assert (=> bs!1150310 m!5748382))

(assert (=> b!4774311 d!1525837))

(declare-fun d!1525839 () Bool)

(declare-fun dynLambda!21987 (Int tuple2!56078) Bool)

(assert (=> d!1525839 (dynLambda!21987 lambda!226224 lt!1937448)))

(declare-fun lt!1937577 () Unit!138763)

(declare-fun choose!34107 (List!53896 Int tuple2!56078) Unit!138763)

(assert (=> d!1525839 (= lt!1937577 (choose!34107 (toList!6541 lm!1309) lambda!226224 lt!1937448))))

(declare-fun e!2980634 () Bool)

(assert (=> d!1525839 e!2980634))

(declare-fun res!2025737 () Bool)

(assert (=> d!1525839 (=> (not res!2025737) (not e!2980634))))

(assert (=> d!1525839 (= res!2025737 (forall!11995 (toList!6541 lm!1309) lambda!226224))))

(assert (=> d!1525839 (= (forallContained!3968 (toList!6541 lm!1309) lambda!226224 lt!1937448) lt!1937577)))

(declare-fun b!4774421 () Bool)

(assert (=> b!4774421 (= e!2980634 (contains!17230 (toList!6541 lm!1309) lt!1937448))))

(assert (= (and d!1525839 res!2025737) b!4774421))

(declare-fun b_lambda!184897 () Bool)

(assert (=> (not b_lambda!184897) (not d!1525839)))

(declare-fun m!5748554 () Bool)

(assert (=> d!1525839 m!5748554))

(declare-fun m!5748556 () Bool)

(assert (=> d!1525839 m!5748556))

(assert (=> d!1525839 m!5748356))

(assert (=> b!4774421 m!5748380))

(assert (=> b!4774311 d!1525839))

(declare-fun bs!1150311 () Bool)

(declare-fun d!1525841 () Bool)

(assert (= bs!1150311 (and d!1525841 start!489188)))

(declare-fun lambda!226253 () Int)

(assert (=> bs!1150311 (not (= lambda!226253 lambda!226224))))

(declare-fun bs!1150312 () Bool)

(assert (= bs!1150312 (and d!1525841 d!1525807)))

(assert (=> bs!1150312 (not (= lambda!226253 lambda!226240))))

(declare-fun bs!1150313 () Bool)

(assert (= bs!1150313 (and d!1525841 d!1525827)))

(assert (=> bs!1150313 (not (= lambda!226253 lambda!226250))))

(assert (=> d!1525841 true))

(assert (=> d!1525841 (= (allKeysSameHashInMap!2132 lm!1309 hashF!980) (forall!11995 (toList!6541 lm!1309) lambda!226253))))

(declare-fun bs!1150314 () Bool)

(assert (= bs!1150314 d!1525841))

(declare-fun m!5748558 () Bool)

(assert (=> bs!1150314 m!5748558))

(assert (=> b!4774310 d!1525841))

(declare-fun bm!334544 () Bool)

(declare-fun call!334549 () Bool)

(declare-datatypes ((List!53899 0))(
  ( (Nil!53775) (Cons!53775 (h!60189 K!15307) (t!361349 List!53899)) )
))
(declare-fun e!2980652 () List!53899)

(declare-fun contains!17237 (List!53899 K!15307) Bool)

(assert (=> bm!334544 (= call!334549 (contains!17237 e!2980652 key!2872))))

(declare-fun c!814195 () Bool)

(declare-fun c!814193 () Bool)

(assert (=> bm!334544 (= c!814195 c!814193)))

(declare-fun b!4774442 () Bool)

(declare-fun keys!19543 (ListMap!6021) List!53899)

(assert (=> b!4774442 (= e!2980652 (keys!19543 lt!1937459))))

(declare-fun d!1525843 () Bool)

(declare-fun e!2980647 () Bool)

(assert (=> d!1525843 e!2980647))

(declare-fun res!2025745 () Bool)

(assert (=> d!1525843 (=> res!2025745 e!2980647)))

(declare-fun e!2980650 () Bool)

(assert (=> d!1525843 (= res!2025745 e!2980650)))

(declare-fun res!2025744 () Bool)

(assert (=> d!1525843 (=> (not res!2025744) (not e!2980650))))

(declare-fun lt!1937600 () Bool)

(assert (=> d!1525843 (= res!2025744 (not lt!1937600))))

(declare-fun lt!1937594 () Bool)

(assert (=> d!1525843 (= lt!1937600 lt!1937594)))

(declare-fun lt!1937596 () Unit!138763)

(declare-fun e!2980649 () Unit!138763)

(assert (=> d!1525843 (= lt!1937596 e!2980649)))

(assert (=> d!1525843 (= c!814193 lt!1937594)))

(declare-fun containsKey!3715 (List!53895 K!15307) Bool)

(assert (=> d!1525843 (= lt!1937594 (containsKey!3715 (toList!6542 lt!1937459) key!2872))))

(assert (=> d!1525843 (= (contains!17232 lt!1937459 key!2872) lt!1937600)))

(declare-fun b!4774443 () Bool)

(declare-fun e!2980651 () Bool)

(assert (=> b!4774443 (= e!2980647 e!2980651)))

(declare-fun res!2025746 () Bool)

(assert (=> b!4774443 (=> (not res!2025746) (not e!2980651))))

(declare-fun isDefined!9972 (Option!12825) Bool)

(assert (=> b!4774443 (= res!2025746 (isDefined!9972 (getValueByKey!2237 (toList!6542 lt!1937459) key!2872)))))

(declare-fun b!4774444 () Bool)

(declare-fun e!2980648 () Unit!138763)

(assert (=> b!4774444 (= e!2980649 e!2980648)))

(declare-fun c!814194 () Bool)

(assert (=> b!4774444 (= c!814194 call!334549)))

(declare-fun b!4774445 () Bool)

(declare-fun getKeysList!1019 (List!53895) List!53899)

(assert (=> b!4774445 (= e!2980652 (getKeysList!1019 (toList!6542 lt!1937459)))))

(declare-fun b!4774446 () Bool)

(assert (=> b!4774446 (= e!2980650 (not (contains!17237 (keys!19543 lt!1937459) key!2872)))))

(declare-fun b!4774447 () Bool)

(assert (=> b!4774447 false))

(declare-fun lt!1937601 () Unit!138763)

(declare-fun lt!1937595 () Unit!138763)

(assert (=> b!4774447 (= lt!1937601 lt!1937595)))

(assert (=> b!4774447 (containsKey!3715 (toList!6542 lt!1937459) key!2872)))

(declare-fun lemmaInGetKeysListThenContainsKey!1018 (List!53895 K!15307) Unit!138763)

(assert (=> b!4774447 (= lt!1937595 (lemmaInGetKeysListThenContainsKey!1018 (toList!6542 lt!1937459) key!2872))))

(declare-fun Unit!138768 () Unit!138763)

(assert (=> b!4774447 (= e!2980648 Unit!138768)))

(declare-fun b!4774448 () Bool)

(declare-fun Unit!138769 () Unit!138763)

(assert (=> b!4774448 (= e!2980648 Unit!138769)))

(declare-fun b!4774449 () Bool)

(assert (=> b!4774449 (= e!2980651 (contains!17237 (keys!19543 lt!1937459) key!2872))))

(declare-fun b!4774450 () Bool)

(declare-fun lt!1937597 () Unit!138763)

(assert (=> b!4774450 (= e!2980649 lt!1937597)))

(declare-fun lt!1937598 () Unit!138763)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2033 (List!53895 K!15307) Unit!138763)

(assert (=> b!4774450 (= lt!1937598 (lemmaContainsKeyImpliesGetValueByKeyDefined!2033 (toList!6542 lt!1937459) key!2872))))

(assert (=> b!4774450 (isDefined!9972 (getValueByKey!2237 (toList!6542 lt!1937459) key!2872))))

(declare-fun lt!1937599 () Unit!138763)

(assert (=> b!4774450 (= lt!1937599 lt!1937598)))

(declare-fun lemmaInListThenGetKeysListContains!1014 (List!53895 K!15307) Unit!138763)

(assert (=> b!4774450 (= lt!1937597 (lemmaInListThenGetKeysListContains!1014 (toList!6542 lt!1937459) key!2872))))

(assert (=> b!4774450 call!334549))

(assert (= (and d!1525843 c!814193) b!4774450))

(assert (= (and d!1525843 (not c!814193)) b!4774444))

(assert (= (and b!4774444 c!814194) b!4774447))

(assert (= (and b!4774444 (not c!814194)) b!4774448))

(assert (= (or b!4774450 b!4774444) bm!334544))

(assert (= (and bm!334544 c!814195) b!4774445))

(assert (= (and bm!334544 (not c!814195)) b!4774442))

(assert (= (and d!1525843 res!2025744) b!4774446))

(assert (= (and d!1525843 (not res!2025745)) b!4774443))

(assert (= (and b!4774443 res!2025746) b!4774449))

(assert (=> b!4774443 m!5748390))

(assert (=> b!4774443 m!5748390))

(declare-fun m!5748560 () Bool)

(assert (=> b!4774443 m!5748560))

(declare-fun m!5748562 () Bool)

(assert (=> bm!334544 m!5748562))

(declare-fun m!5748564 () Bool)

(assert (=> b!4774445 m!5748564))

(declare-fun m!5748566 () Bool)

(assert (=> d!1525843 m!5748566))

(assert (=> b!4774447 m!5748566))

(declare-fun m!5748568 () Bool)

(assert (=> b!4774447 m!5748568))

(declare-fun m!5748570 () Bool)

(assert (=> b!4774450 m!5748570))

(assert (=> b!4774450 m!5748390))

(assert (=> b!4774450 m!5748390))

(assert (=> b!4774450 m!5748560))

(declare-fun m!5748572 () Bool)

(assert (=> b!4774450 m!5748572))

(declare-fun m!5748574 () Bool)

(assert (=> b!4774442 m!5748574))

(assert (=> b!4774446 m!5748574))

(assert (=> b!4774446 m!5748574))

(declare-fun m!5748576 () Bool)

(assert (=> b!4774446 m!5748576))

(assert (=> b!4774449 m!5748574))

(assert (=> b!4774449 m!5748574))

(assert (=> b!4774449 m!5748576))

(assert (=> b!4774314 d!1525843))

(declare-fun bs!1150315 () Bool)

(declare-fun d!1525845 () Bool)

(assert (= bs!1150315 (and d!1525845 start!489188)))

(declare-fun lambda!226256 () Int)

(assert (=> bs!1150315 (= lambda!226256 lambda!226224)))

(declare-fun bs!1150316 () Bool)

(assert (= bs!1150316 (and d!1525845 d!1525807)))

(assert (=> bs!1150316 (= lambda!226256 lambda!226240)))

(declare-fun bs!1150317 () Bool)

(assert (= bs!1150317 (and d!1525845 d!1525827)))

(assert (=> bs!1150317 (= lambda!226256 lambda!226250)))

(declare-fun bs!1150318 () Bool)

(assert (= bs!1150318 (and d!1525845 d!1525841)))

(assert (=> bs!1150318 (not (= lambda!226256 lambda!226253))))

(declare-fun lt!1937604 () ListMap!6021)

(declare-fun invariantList!1677 (List!53895) Bool)

(assert (=> d!1525845 (invariantList!1677 (toList!6542 lt!1937604))))

(declare-fun e!2980655 () ListMap!6021)

(assert (=> d!1525845 (= lt!1937604 e!2980655)))

(declare-fun c!814198 () Bool)

(assert (=> d!1525845 (= c!814198 (is-Cons!53772 (toList!6541 lm!1309)))))

(assert (=> d!1525845 (forall!11995 (toList!6541 lm!1309) lambda!226256)))

(assert (=> d!1525845 (= (extractMap!2262 (toList!6541 lm!1309)) lt!1937604)))

(declare-fun b!4774455 () Bool)

(declare-fun addToMapMapFromBucket!1642 (List!53895 ListMap!6021) ListMap!6021)

(assert (=> b!4774455 (= e!2980655 (addToMapMapFromBucket!1642 (_2!31333 (h!60186 (toList!6541 lm!1309))) (extractMap!2262 (t!361346 (toList!6541 lm!1309)))))))

(declare-fun b!4774456 () Bool)

(assert (=> b!4774456 (= e!2980655 (ListMap!6022 Nil!53771))))

(assert (= (and d!1525845 c!814198) b!4774455))

(assert (= (and d!1525845 (not c!814198)) b!4774456))

(declare-fun m!5748578 () Bool)

(assert (=> d!1525845 m!5748578))

(declare-fun m!5748580 () Bool)

(assert (=> d!1525845 m!5748580))

(declare-fun m!5748582 () Bool)

(assert (=> b!4774455 m!5748582))

(assert (=> b!4774455 m!5748582))

(declare-fun m!5748584 () Bool)

(assert (=> b!4774455 m!5748584))

(assert (=> b!4774314 d!1525845))

(declare-fun d!1525847 () Bool)

(declare-fun res!2025751 () Bool)

(declare-fun e!2980660 () Bool)

(assert (=> d!1525847 (=> res!2025751 e!2980660)))

(assert (=> d!1525847 (= res!2025751 (is-Nil!53772 (toList!6541 lm!1309)))))

(assert (=> d!1525847 (= (forall!11995 (toList!6541 lm!1309) lambda!226224) e!2980660)))

(declare-fun b!4774461 () Bool)

(declare-fun e!2980661 () Bool)

(assert (=> b!4774461 (= e!2980660 e!2980661)))

(declare-fun res!2025752 () Bool)

(assert (=> b!4774461 (=> (not res!2025752) (not e!2980661))))

(assert (=> b!4774461 (= res!2025752 (dynLambda!21987 lambda!226224 (h!60186 (toList!6541 lm!1309))))))

(declare-fun b!4774462 () Bool)

(assert (=> b!4774462 (= e!2980661 (forall!11995 (t!361346 (toList!6541 lm!1309)) lambda!226224))))

(assert (= (and d!1525847 (not res!2025751)) b!4774461))

(assert (= (and b!4774461 res!2025752) b!4774462))

(declare-fun b_lambda!184899 () Bool)

(assert (=> (not b_lambda!184899) (not b!4774461)))

(declare-fun m!5748586 () Bool)

(assert (=> b!4774461 m!5748586))

(declare-fun m!5748588 () Bool)

(assert (=> b!4774462 m!5748588))

(assert (=> start!489188 d!1525847))

(declare-fun d!1525849 () Bool)

(declare-fun isStrictlySorted!828 (List!53896) Bool)

(assert (=> d!1525849 (= (inv!69334 lm!1309) (isStrictlySorted!828 (toList!6541 lm!1309)))))

(declare-fun bs!1150319 () Bool)

(assert (= bs!1150319 d!1525849))

(declare-fun m!5748590 () Bool)

(assert (=> bs!1150319 m!5748590))

(assert (=> start!489188 d!1525849))

(assert (=> b!4774313 d!1525847))

(declare-fun d!1525851 () Bool)

(declare-fun res!2025760 () Bool)

(declare-fun e!2980670 () Bool)

(assert (=> d!1525851 (=> res!2025760 e!2980670)))

(declare-fun e!2980669 () Bool)

(assert (=> d!1525851 (= res!2025760 e!2980669)))

(declare-fun res!2025761 () Bool)

(assert (=> d!1525851 (=> (not res!2025761) (not e!2980669))))

(assert (=> d!1525851 (= res!2025761 (is-Cons!53772 (toList!6541 lm!1309)))))

(assert (=> d!1525851 (= (containsKeyBiggerList!383 (toList!6541 lm!1309) key!2872) e!2980670)))

(declare-fun b!4774469 () Bool)

(assert (=> b!4774469 (= e!2980669 (containsKey!3714 (_2!31333 (h!60186 (toList!6541 lm!1309))) key!2872))))

(declare-fun b!4774470 () Bool)

(declare-fun e!2980668 () Bool)

(assert (=> b!4774470 (= e!2980670 e!2980668)))

(declare-fun res!2025759 () Bool)

(assert (=> b!4774470 (=> (not res!2025759) (not e!2980668))))

(assert (=> b!4774470 (= res!2025759 (is-Cons!53772 (toList!6541 lm!1309)))))

(declare-fun b!4774471 () Bool)

(assert (=> b!4774471 (= e!2980668 (containsKeyBiggerList!383 (t!361346 (toList!6541 lm!1309)) key!2872))))

(assert (= (and d!1525851 res!2025761) b!4774469))

(assert (= (and d!1525851 (not res!2025760)) b!4774470))

(assert (= (and b!4774470 res!2025759) b!4774471))

(declare-fun m!5748592 () Bool)

(assert (=> b!4774469 m!5748592))

(declare-fun m!5748594 () Bool)

(assert (=> b!4774471 m!5748594))

(assert (=> b!4774313 d!1525851))

(declare-fun d!1525853 () Bool)

(declare-fun c!814201 () Bool)

(declare-fun e!2980676 () Bool)

(assert (=> d!1525853 (= c!814201 e!2980676)))

(declare-fun res!2025764 () Bool)

(assert (=> d!1525853 (=> (not res!2025764) (not e!2980676))))

(assert (=> d!1525853 (= res!2025764 (is-Cons!53772 (toList!6541 lm!1309)))))

(declare-fun e!2980675 () V!15553)

(assert (=> d!1525853 (= (getValue!41 (toList!6541 lm!1309) key!2872) e!2980675)))

(declare-fun b!4774480 () Bool)

(assert (=> b!4774480 (= e!2980676 (containsKey!3714 (_2!31333 (h!60186 (toList!6541 lm!1309))) key!2872))))

(declare-fun b!4774478 () Bool)

(assert (=> b!4774478 (= e!2980675 (_2!31332 (get!18224 (getPair!735 (_2!31333 (h!60186 (toList!6541 lm!1309))) key!2872))))))

(declare-fun b!4774479 () Bool)

(assert (=> b!4774479 (= e!2980675 (getValue!41 (t!361346 (toList!6541 lm!1309)) key!2872))))

(assert (= (and d!1525853 res!2025764) b!4774480))

(assert (= (and d!1525853 c!814201) b!4774478))

(assert (= (and d!1525853 (not c!814201)) b!4774479))

(assert (=> b!4774480 m!5748592))

(declare-fun m!5748596 () Bool)

(assert (=> b!4774478 m!5748596))

(assert (=> b!4774478 m!5748596))

(declare-fun m!5748598 () Bool)

(assert (=> b!4774478 m!5748598))

(declare-fun m!5748600 () Bool)

(assert (=> b!4774479 m!5748600))

(assert (=> b!4774313 d!1525853))

(declare-fun bs!1150320 () Bool)

(declare-fun d!1525855 () Bool)

(assert (= bs!1150320 (and d!1525855 d!1525841)))

(declare-fun lambda!226259 () Int)

(assert (=> bs!1150320 (not (= lambda!226259 lambda!226253))))

(declare-fun bs!1150321 () Bool)

(assert (= bs!1150321 (and d!1525855 d!1525807)))

(assert (=> bs!1150321 (= lambda!226259 lambda!226240)))

(declare-fun bs!1150322 () Bool)

(assert (= bs!1150322 (and d!1525855 d!1525827)))

(assert (=> bs!1150322 (= lambda!226259 lambda!226250)))

(declare-fun bs!1150323 () Bool)

(assert (= bs!1150323 (and d!1525855 start!489188)))

(assert (=> bs!1150323 (= lambda!226259 lambda!226224)))

(declare-fun bs!1150324 () Bool)

(assert (= bs!1150324 (and d!1525855 d!1525845)))

(assert (=> bs!1150324 (= lambda!226259 lambda!226256)))

(assert (=> d!1525855 (= (getValue!41 (toList!6541 lm!1309) key!2872) v!9615)))

(declare-fun lt!1937607 () Unit!138763)

(declare-fun choose!34108 (ListLongMap!4955 K!15307 V!15553 Hashable!6727) Unit!138763)

(assert (=> d!1525855 (= lt!1937607 (choose!34108 lm!1309 key!2872 v!9615 hashF!980))))

(assert (=> d!1525855 (forall!11995 (toList!6541 lm!1309) lambda!226259)))

(assert (=> d!1525855 (= (lemmaGetValueEquivToGetPair!41 lm!1309 key!2872 v!9615 hashF!980) lt!1937607)))

(declare-fun bs!1150325 () Bool)

(assert (= bs!1150325 d!1525855))

(assert (=> bs!1150325 m!5748354))

(declare-fun m!5748602 () Bool)

(assert (=> bs!1150325 m!5748602))

(declare-fun m!5748604 () Bool)

(assert (=> bs!1150325 m!5748604))

(assert (=> b!4774313 d!1525855))

(declare-fun bs!1150326 () Bool)

(declare-fun d!1525857 () Bool)

(assert (= bs!1150326 (and d!1525857 d!1525841)))

(declare-fun lambda!226266 () Int)

(assert (=> bs!1150326 (not (= lambda!226266 lambda!226253))))

(declare-fun bs!1150327 () Bool)

(assert (= bs!1150327 (and d!1525857 d!1525807)))

(assert (=> bs!1150327 (= lambda!226266 lambda!226240)))

(declare-fun bs!1150328 () Bool)

(assert (= bs!1150328 (and d!1525857 d!1525827)))

(assert (=> bs!1150328 (= lambda!226266 lambda!226250)))

(declare-fun bs!1150329 () Bool)

(assert (= bs!1150329 (and d!1525857 d!1525855)))

(assert (=> bs!1150329 (= lambda!226266 lambda!226259)))

(declare-fun bs!1150330 () Bool)

(assert (= bs!1150330 (and d!1525857 start!489188)))

(assert (=> bs!1150330 (= lambda!226266 lambda!226224)))

(declare-fun bs!1150331 () Bool)

(assert (= bs!1150331 (and d!1525857 d!1525845)))

(assert (=> bs!1150331 (= lambda!226266 lambda!226256)))

(assert (=> d!1525857 (containsKeyBiggerList!383 (toList!6541 lm!1309) key!2872)))

(declare-fun lt!1937612 () Unit!138763)

(declare-fun choose!34109 (ListLongMap!4955 K!15307 Hashable!6727) Unit!138763)

(assert (=> d!1525857 (= lt!1937612 (choose!34109 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525857 (forall!11995 (toList!6541 lm!1309) lambda!226266)))

(assert (=> d!1525857 (= (lemmaInLongMapThenContainsKeyBiggerList!241 lm!1309 key!2872 hashF!980) lt!1937612)))

(declare-fun bs!1150332 () Bool)

(assert (= bs!1150332 d!1525857))

(assert (=> bs!1150332 m!5748360))

(declare-fun m!5748606 () Bool)

(assert (=> bs!1150332 m!5748606))

(declare-fun m!5748608 () Bool)

(assert (=> bs!1150332 m!5748608))

(assert (=> b!4774313 d!1525857))

(declare-fun d!1525859 () Bool)

(assert (=> d!1525859 (= (apply!12799 lt!1937459 key!2872) (get!18225 (getValueByKey!2237 (toList!6542 lt!1937459) key!2872)))))

(declare-fun bs!1150333 () Bool)

(assert (= bs!1150333 d!1525859))

(assert (=> bs!1150333 m!5748390))

(assert (=> bs!1150333 m!5748390))

(assert (=> bs!1150333 m!5748394))

(assert (=> b!4774312 d!1525859))

(assert (=> b!4774312 d!1525839))

(declare-fun bs!1150334 () Bool)

(declare-fun d!1525861 () Bool)

(assert (= bs!1150334 (and d!1525861 d!1525841)))

(declare-fun lambda!226271 () Int)

(assert (=> bs!1150334 (not (= lambda!226271 lambda!226253))))

(declare-fun bs!1150335 () Bool)

(assert (= bs!1150335 (and d!1525861 d!1525807)))

(assert (=> bs!1150335 (= lambda!226271 lambda!226240)))

(declare-fun bs!1150336 () Bool)

(assert (= bs!1150336 (and d!1525861 d!1525857)))

(assert (=> bs!1150336 (= lambda!226271 lambda!226266)))

(declare-fun bs!1150337 () Bool)

(assert (= bs!1150337 (and d!1525861 d!1525827)))

(assert (=> bs!1150337 (= lambda!226271 lambda!226250)))

(declare-fun bs!1150338 () Bool)

(assert (= bs!1150338 (and d!1525861 d!1525855)))

(assert (=> bs!1150338 (= lambda!226271 lambda!226259)))

(declare-fun bs!1150339 () Bool)

(assert (= bs!1150339 (and d!1525861 start!489188)))

(assert (=> bs!1150339 (= lambda!226271 lambda!226224)))

(declare-fun bs!1150340 () Bool)

(assert (= bs!1150340 (and d!1525861 d!1525845)))

(assert (=> bs!1150340 (= lambda!226271 lambda!226256)))

(declare-fun e!2980683 () Bool)

(assert (=> d!1525861 e!2980683))

(declare-fun res!2025775 () Bool)

(assert (=> d!1525861 (=> (not res!2025775) (not e!2980683))))

(assert (=> d!1525861 (= res!2025775 (contains!17231 lm!1309 (hash!4703 hashF!980 key!2872)))))

(declare-fun lt!1937629 () Unit!138763)

(declare-fun choose!34110 (ListLongMap!4955 K!15307 Hashable!6727) Unit!138763)

(assert (=> d!1525861 (= lt!1937629 (choose!34110 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525861 (forall!11995 (toList!6541 lm!1309) lambda!226271)))

(assert (=> d!1525861 (= (lemmaInGenericMapThenInLongMap!249 lm!1309 key!2872 hashF!980) lt!1937629)))

(declare-fun b!4774491 () Bool)

(assert (=> b!4774491 (= e!2980683 (isDefined!9969 (getPair!735 (apply!12798 lm!1309 (hash!4703 hashF!980 key!2872)) key!2872)))))

(assert (= (and d!1525861 res!2025775) b!4774491))

(assert (=> d!1525861 m!5748386))

(assert (=> d!1525861 m!5748386))

(assert (=> d!1525861 m!5748460))

(declare-fun m!5748610 () Bool)

(assert (=> d!1525861 m!5748610))

(declare-fun m!5748612 () Bool)

(assert (=> d!1525861 m!5748612))

(assert (=> b!4774491 m!5748386))

(assert (=> b!4774491 m!5748386))

(assert (=> b!4774491 m!5748532))

(assert (=> b!4774491 m!5748532))

(assert (=> b!4774491 m!5748538))

(assert (=> b!4774491 m!5748538))

(assert (=> b!4774491 m!5748544))

(assert (=> b!4774312 d!1525861))

(declare-fun b!4774504 () Bool)

(declare-fun e!2980690 () Option!12825)

(assert (=> b!4774504 (= e!2980690 (Some!12824 (_2!31332 (h!60185 (toList!6542 lt!1937459)))))))

(declare-fun b!4774505 () Bool)

(declare-fun e!2980691 () Option!12825)

(assert (=> b!4774505 (= e!2980690 e!2980691)))

(declare-fun c!814207 () Bool)

(assert (=> b!4774505 (= c!814207 (and (is-Cons!53771 (toList!6542 lt!1937459)) (not (= (_1!31332 (h!60185 (toList!6542 lt!1937459))) key!2872))))))

(declare-fun b!4774507 () Bool)

(assert (=> b!4774507 (= e!2980691 None!12824)))

(declare-fun b!4774506 () Bool)

(assert (=> b!4774506 (= e!2980691 (getValueByKey!2237 (t!361345 (toList!6542 lt!1937459)) key!2872))))

(declare-fun d!1525863 () Bool)

(declare-fun c!814206 () Bool)

(assert (=> d!1525863 (= c!814206 (and (is-Cons!53771 (toList!6542 lt!1937459)) (= (_1!31332 (h!60185 (toList!6542 lt!1937459))) key!2872)))))

(assert (=> d!1525863 (= (getValueByKey!2237 (toList!6542 lt!1937459) key!2872) e!2980690)))

(assert (= (and d!1525863 c!814206) b!4774504))

(assert (= (and d!1525863 (not c!814206)) b!4774505))

(assert (= (and b!4774505 c!814207) b!4774506))

(assert (= (and b!4774505 (not c!814207)) b!4774507))

(declare-fun m!5748614 () Bool)

(assert (=> b!4774506 m!5748614))

(assert (=> b!4774312 d!1525863))

(declare-fun d!1525865 () Bool)

(assert (=> d!1525865 (= (get!18225 (getValueByKey!2237 (toList!6542 lt!1937459) key!2872)) (v!47971 (getValueByKey!2237 (toList!6542 lt!1937459) key!2872)))))

(assert (=> b!4774312 d!1525865))

(declare-fun bs!1150343 () Bool)

(declare-fun d!1525867 () Bool)

(assert (= bs!1150343 (and d!1525867 d!1525841)))

(declare-fun lambda!226275 () Int)

(assert (=> bs!1150343 (not (= lambda!226275 lambda!226253))))

(declare-fun bs!1150344 () Bool)

(assert (= bs!1150344 (and d!1525867 d!1525807)))

(assert (=> bs!1150344 (= lambda!226275 lambda!226240)))

(declare-fun bs!1150345 () Bool)

(assert (= bs!1150345 (and d!1525867 d!1525857)))

(assert (=> bs!1150345 (= lambda!226275 lambda!226266)))

(declare-fun bs!1150346 () Bool)

(assert (= bs!1150346 (and d!1525867 d!1525855)))

(assert (=> bs!1150346 (= lambda!226275 lambda!226259)))

(declare-fun bs!1150347 () Bool)

(assert (= bs!1150347 (and d!1525867 start!489188)))

(assert (=> bs!1150347 (= lambda!226275 lambda!226224)))

(declare-fun bs!1150348 () Bool)

(assert (= bs!1150348 (and d!1525867 d!1525845)))

(assert (=> bs!1150348 (= lambda!226275 lambda!226256)))

(declare-fun bs!1150349 () Bool)

(assert (= bs!1150349 (and d!1525867 d!1525827)))

(assert (=> bs!1150349 (= lambda!226275 lambda!226250)))

(declare-fun bs!1150350 () Bool)

(assert (= bs!1150350 (and d!1525867 d!1525861)))

(assert (=> bs!1150350 (= lambda!226275 lambda!226271)))

(assert (=> d!1525867 (= (apply!12799 (extractMap!2262 (toList!6541 lm!1309)) key!2872) v!9615)))

(declare-fun lt!1937640 () Unit!138763)

(declare-fun choose!34113 (ListLongMap!4955 K!15307 V!15553 Hashable!6727) Unit!138763)

(assert (=> d!1525867 (= lt!1937640 (choose!34113 lm!1309 key!2872 v!9615 hashF!980))))

(assert (=> d!1525867 (forall!11995 (toList!6541 lm!1309) lambda!226275)))

(assert (=> d!1525867 (= (lemmaExtractMapPreservesMapping!31 lm!1309 key!2872 v!9615 hashF!980) lt!1937640)))

(declare-fun bs!1150351 () Bool)

(assert (= bs!1150351 d!1525867))

(assert (=> bs!1150351 m!5748366))

(assert (=> bs!1150351 m!5748366))

(declare-fun m!5748638 () Bool)

(assert (=> bs!1150351 m!5748638))

(declare-fun m!5748640 () Bool)

(assert (=> bs!1150351 m!5748640))

(declare-fun m!5748642 () Bool)

(assert (=> bs!1150351 m!5748642))

(assert (=> b!4774312 d!1525867))

(declare-fun b!4774518 () Bool)

(declare-fun e!2980698 () Bool)

(declare-fun tp!1356947 () Bool)

(declare-fun tp!1356948 () Bool)

(assert (=> b!4774518 (= e!2980698 (and tp!1356947 tp!1356948))))

(assert (=> b!4774309 (= tp!1356939 e!2980698)))

(assert (= (and b!4774309 (is-Cons!53772 (toList!6541 lm!1309))) b!4774518))

(declare-fun b_lambda!184901 () Bool)

(assert (= b_lambda!184897 (or start!489188 b_lambda!184901)))

(declare-fun bs!1150352 () Bool)

(declare-fun d!1525871 () Bool)

(assert (= bs!1150352 (and d!1525871 start!489188)))

(assert (=> bs!1150352 (= (dynLambda!21987 lambda!226224 lt!1937448) (noDuplicateKeys!2272 (_2!31333 lt!1937448)))))

(declare-fun m!5748644 () Bool)

(assert (=> bs!1150352 m!5748644))

(assert (=> d!1525839 d!1525871))

(declare-fun b_lambda!184903 () Bool)

(assert (= b_lambda!184899 (or start!489188 b_lambda!184903)))

(declare-fun bs!1150353 () Bool)

(declare-fun d!1525873 () Bool)

(assert (= bs!1150353 (and d!1525873 start!489188)))

(assert (=> bs!1150353 (= (dynLambda!21987 lambda!226224 (h!60186 (toList!6541 lm!1309))) (noDuplicateKeys!2272 (_2!31333 (h!60186 (toList!6541 lm!1309)))))))

(declare-fun m!5748646 () Bool)

(assert (=> bs!1150353 m!5748646))

(assert (=> b!4774461 d!1525873))

(push 1)

(assert (not b!4774447))

(assert (not b!4774471))

(assert (not bs!1150352))

(assert (not b!4774450))

(assert (not d!1525843))

(assert (not d!1525855))

(assert (not d!1525811))

(assert (not b!4774416))

(assert (not b!4774391))

(assert (not d!1525837))

(assert (not b!4774445))

(assert (not d!1525839))

(assert (not bs!1150353))

(assert (not b!4774386))

(assert (not b_lambda!184901))

(assert (not d!1525867))

(assert (not b!4774351))

(assert (not d!1525849))

(assert (not b!4774392))

(assert (not b!4774389))

(assert (not d!1525823))

(assert (not b!4774455))

(assert (not b!4774415))

(assert tp_is_empty!32887)

(assert (not b!4774506))

(assert (not b!4774442))

(assert (not d!1525807))

(assert (not b!4774399))

(assert (not d!1525841))

(assert (not b!4774353))

(assert (not d!1525815))

(assert (not d!1525859))

(assert (not bm!334544))

(assert (not b!4774390))

(assert (not b!4774417))

(assert (not b!4774479))

(assert (not b!4774480))

(assert (not b!4774518))

(assert (not d!1525857))

(assert (not d!1525827))

(assert (not b!4774469))

(assert (not b!4774446))

(assert (not b_lambda!184903))

(assert (not d!1525817))

(assert tp_is_empty!32885)

(assert (not b!4774449))

(assert (not d!1525845))

(assert (not d!1525819))

(assert (not d!1525825))

(assert (not b!4774478))

(assert (not b!4774421))

(assert (not b!4774462))

(assert (not d!1525861))

(assert (not b!4774443))

(assert (not b!4774491))

(assert (not b!4774414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

