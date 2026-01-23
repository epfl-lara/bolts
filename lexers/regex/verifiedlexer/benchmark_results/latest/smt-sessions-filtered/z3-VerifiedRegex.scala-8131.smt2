; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418464 () Bool)

(assert start!418464)

(declare-fun b!4337357 () Bool)

(declare-fun res!1779305 () Bool)

(declare-fun e!2698827 () Bool)

(assert (=> b!4337357 (=> (not res!1779305) (not e!2698827))))

(declare-datatypes ((V!10306 0))(
  ( (V!10307 (val!16319 Int)) )
))
(declare-datatypes ((K!10060 0))(
  ( (K!10061 (val!16320 Int)) )
))
(declare-datatypes ((tuple2!47958 0))(
  ( (tuple2!47959 (_1!27273 K!10060) (_2!27273 V!10306)) )
))
(declare-datatypes ((List!48827 0))(
  ( (Nil!48703) (Cons!48703 (h!54210 tuple2!47958) (t!355743 List!48827)) )
))
(declare-datatypes ((tuple2!47960 0))(
  ( (tuple2!47961 (_1!27274 (_ BitVec 64)) (_2!27274 List!48827)) )
))
(declare-datatypes ((List!48828 0))(
  ( (Nil!48704) (Cons!48704 (h!54211 tuple2!47960) (t!355744 List!48828)) )
))
(declare-datatypes ((ListLongMap!1427 0))(
  ( (ListLongMap!1428 (toList!2777 List!48828)) )
))
(declare-fun lm!1707 () ListLongMap!1427)

(declare-datatypes ((Hashable!4789 0))(
  ( (HashableExt!4788 (__x!30492 Int)) )
))
(declare-fun hashF!1247 () Hashable!4789)

(declare-fun allKeysSameHashInMap!501 (ListLongMap!1427 Hashable!4789) Bool)

(assert (=> b!4337357 (= res!1779305 (allKeysSameHashInMap!501 lm!1707 hashF!1247))))

(declare-fun b!4337358 () Bool)

(declare-fun e!2698824 () Bool)

(assert (=> b!4337358 (= e!2698827 (not e!2698824))))

(declare-fun res!1779298 () Bool)

(assert (=> b!4337358 (=> res!1779298 e!2698824)))

(declare-fun newBucket!200 () List!48827)

(declare-fun lt!1551252 () List!48827)

(assert (=> b!4337358 (= res!1779298 (not (= newBucket!200 lt!1551252)))))

(declare-fun lt!1551243 () tuple2!47958)

(declare-fun lt!1551239 () List!48827)

(assert (=> b!4337358 (= lt!1551252 (Cons!48703 lt!1551243 lt!1551239))))

(declare-fun lt!1551253 () List!48827)

(declare-fun key!3918 () K!10060)

(declare-fun removePairForKey!367 (List!48827 K!10060) List!48827)

(assert (=> b!4337358 (= lt!1551239 (removePairForKey!367 lt!1551253 key!3918))))

(declare-fun newValue!99 () V!10306)

(assert (=> b!4337358 (= lt!1551243 (tuple2!47959 key!3918 newValue!99))))

(declare-fun lt!1551251 () tuple2!47960)

(declare-datatypes ((Unit!68873 0))(
  ( (Unit!68874) )
))
(declare-fun lt!1551250 () Unit!68873)

(declare-fun lambda!136317 () Int)

(declare-fun forallContained!1621 (List!48828 Int tuple2!47960) Unit!68873)

(assert (=> b!4337358 (= lt!1551250 (forallContained!1621 (toList!2777 lm!1707) lambda!136317 lt!1551251))))

(declare-fun contains!10780 (List!48828 tuple2!47960) Bool)

(assert (=> b!4337358 (contains!10780 (toList!2777 lm!1707) lt!1551251)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4337358 (= lt!1551251 (tuple2!47961 hash!377 lt!1551253))))

(declare-fun lt!1551238 () Unit!68873)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!244 (List!48828 (_ BitVec 64) List!48827) Unit!68873)

(assert (=> b!4337358 (= lt!1551238 (lemmaGetValueByKeyImpliesContainsTuple!244 (toList!2777 lm!1707) hash!377 lt!1551253))))

(declare-fun apply!11249 (ListLongMap!1427 (_ BitVec 64)) List!48827)

(assert (=> b!4337358 (= lt!1551253 (apply!11249 lm!1707 hash!377))))

(declare-fun b!4337359 () Bool)

(declare-fun res!1779304 () Bool)

(assert (=> b!4337359 (=> (not res!1779304) (not e!2698827))))

(declare-fun allKeysSameHash!355 (List!48827 (_ BitVec 64) Hashable!4789) Bool)

(assert (=> b!4337359 (= res!1779304 (allKeysSameHash!355 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4337360 () Bool)

(declare-fun e!2698822 () Bool)

(declare-fun tp!1329117 () Bool)

(assert (=> b!4337360 (= e!2698822 tp!1329117)))

(declare-fun b!4337361 () Bool)

(declare-fun e!2698823 () Bool)

(assert (=> b!4337361 (= e!2698824 e!2698823)))

(declare-fun res!1779307 () Bool)

(assert (=> b!4337361 (=> res!1779307 e!2698823)))

(get-info :version)

(assert (=> b!4337361 (= res!1779307 (or (not ((_ is Cons!48704) (toList!2777 lm!1707))) (not (= (_1!27274 (h!54211 (toList!2777 lm!1707))) hash!377))))))

(declare-fun e!2698826 () Bool)

(assert (=> b!4337361 e!2698826))

(declare-fun res!1779297 () Bool)

(assert (=> b!4337361 (=> (not res!1779297) (not e!2698826))))

(declare-fun lt!1551241 () ListLongMap!1427)

(declare-fun forall!8971 (List!48828 Int) Bool)

(assert (=> b!4337361 (= res!1779297 (forall!8971 (toList!2777 lt!1551241) lambda!136317))))

(declare-fun lt!1551248 () tuple2!47960)

(declare-fun +!465 (ListLongMap!1427 tuple2!47960) ListLongMap!1427)

(assert (=> b!4337361 (= lt!1551241 (+!465 lm!1707 lt!1551248))))

(assert (=> b!4337361 (= lt!1551248 (tuple2!47961 hash!377 newBucket!200))))

(declare-fun lt!1551249 () Unit!68873)

(declare-fun addValidProp!51 (ListLongMap!1427 Int (_ BitVec 64) List!48827) Unit!68873)

(assert (=> b!4337361 (= lt!1551249 (addValidProp!51 lm!1707 lambda!136317 hash!377 newBucket!200))))

(assert (=> b!4337361 (forall!8971 (toList!2777 lm!1707) lambda!136317)))

(declare-fun b!4337362 () Bool)

(declare-fun e!2698825 () Bool)

(declare-datatypes ((ListMap!2021 0))(
  ( (ListMap!2022 (toList!2778 List!48827)) )
))
(declare-fun lt!1551254 () ListMap!2021)

(declare-fun lt!1551246 () ListMap!2021)

(declare-fun eq!187 (ListMap!2021 ListMap!2021) Bool)

(assert (=> b!4337362 (= e!2698825 (eq!187 lt!1551254 lt!1551246))))

(declare-fun b!4337363 () Bool)

(declare-fun res!1779300 () Bool)

(assert (=> b!4337363 (=> res!1779300 e!2698824)))

(declare-fun noDuplicateKeys!397 (List!48827) Bool)

(assert (=> b!4337363 (= res!1779300 (not (noDuplicateKeys!397 newBucket!200)))))

(declare-fun b!4337364 () Bool)

(declare-fun res!1779299 () Bool)

(assert (=> b!4337364 (=> (not res!1779299) (not e!2698827))))

(declare-fun contains!10781 (ListLongMap!1427 (_ BitVec 64)) Bool)

(assert (=> b!4337364 (= res!1779299 (contains!10781 lm!1707 hash!377))))

(declare-fun res!1779301 () Bool)

(assert (=> start!418464 (=> (not res!1779301) (not e!2698827))))

(assert (=> start!418464 (= res!1779301 (forall!8971 (toList!2777 lm!1707) lambda!136317))))

(assert (=> start!418464 e!2698827))

(declare-fun e!2698828 () Bool)

(assert (=> start!418464 e!2698828))

(assert (=> start!418464 true))

(declare-fun inv!64246 (ListLongMap!1427) Bool)

(assert (=> start!418464 (and (inv!64246 lm!1707) e!2698822)))

(declare-fun tp_is_empty!24825 () Bool)

(assert (=> start!418464 tp_is_empty!24825))

(declare-fun tp_is_empty!24827 () Bool)

(assert (=> start!418464 tp_is_empty!24827))

(declare-fun b!4337365 () Bool)

(declare-fun res!1779296 () Bool)

(assert (=> b!4337365 (=> (not res!1779296) (not e!2698827))))

(declare-fun contains!10782 (ListMap!2021 K!10060) Bool)

(declare-fun extractMap!456 (List!48828) ListMap!2021)

(assert (=> b!4337365 (= res!1779296 (contains!10782 (extractMap!456 (toList!2777 lm!1707)) key!3918))))

(declare-fun b!4337366 () Bool)

(assert (=> b!4337366 (= e!2698826 (or (not ((_ is Cons!48704) (toList!2777 lm!1707))) (not (= (_1!27274 (h!54211 (toList!2777 lm!1707))) hash!377)) (= lt!1551241 (ListLongMap!1428 (Cons!48704 lt!1551248 (t!355744 (toList!2777 lm!1707)))))))))

(declare-fun tp!1329118 () Bool)

(declare-fun b!4337367 () Bool)

(assert (=> b!4337367 (= e!2698828 (and tp_is_empty!24825 tp_is_empty!24827 tp!1329118))))

(declare-fun b!4337368 () Bool)

(assert (=> b!4337368 (= e!2698823 true)))

(declare-fun lt!1551244 () ListLongMap!1427)

(declare-fun tail!6895 (List!48827) List!48827)

(assert (=> b!4337368 (= lt!1551244 (+!465 lm!1707 (tuple2!47961 hash!377 (tail!6895 newBucket!200))))))

(assert (=> b!4337368 e!2698825))

(declare-fun res!1779302 () Bool)

(assert (=> b!4337368 (=> (not res!1779302) (not e!2698825))))

(declare-fun lt!1551247 () ListMap!2021)

(assert (=> b!4337368 (= res!1779302 (eq!187 lt!1551247 lt!1551246))))

(declare-fun lt!1551245 () ListMap!2021)

(declare-fun +!466 (ListMap!2021 tuple2!47958) ListMap!2021)

(declare-fun addToMapMapFromBucket!105 (List!48827 ListMap!2021) ListMap!2021)

(assert (=> b!4337368 (= lt!1551246 (+!466 (addToMapMapFromBucket!105 lt!1551239 lt!1551245) lt!1551243))))

(declare-fun lt!1551240 () Unit!68873)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!16 (ListMap!2021 K!10060 V!10306 List!48827) Unit!68873)

(assert (=> b!4337368 (= lt!1551240 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!16 lt!1551245 key!3918 newValue!99 lt!1551239))))

(assert (=> b!4337368 (= lt!1551254 lt!1551247)))

(assert (=> b!4337368 (= lt!1551247 (addToMapMapFromBucket!105 lt!1551239 (+!466 lt!1551245 lt!1551243)))))

(declare-fun lt!1551242 () ListMap!2021)

(assert (=> b!4337368 (= lt!1551242 lt!1551254)))

(assert (=> b!4337368 (= lt!1551254 (addToMapMapFromBucket!105 lt!1551252 lt!1551245))))

(assert (=> b!4337368 (= lt!1551242 (addToMapMapFromBucket!105 newBucket!200 lt!1551245))))

(assert (=> b!4337368 (= lt!1551242 (extractMap!456 (toList!2777 lt!1551241)))))

(assert (=> b!4337368 (= lt!1551245 (extractMap!456 (t!355744 (toList!2777 lm!1707))))))

(declare-fun b!4337369 () Bool)

(declare-fun res!1779306 () Bool)

(assert (=> b!4337369 (=> (not res!1779306) (not e!2698827))))

(declare-fun hash!1350 (Hashable!4789 K!10060) (_ BitVec 64))

(assert (=> b!4337369 (= res!1779306 (= (hash!1350 hashF!1247 key!3918) hash!377))))

(declare-fun b!4337370 () Bool)

(declare-fun res!1779303 () Bool)

(assert (=> b!4337370 (=> (not res!1779303) (not e!2698826))))

(assert (=> b!4337370 (= res!1779303 (forall!8971 (toList!2777 lt!1551241) lambda!136317))))

(assert (= (and start!418464 res!1779301) b!4337357))

(assert (= (and b!4337357 res!1779305) b!4337369))

(assert (= (and b!4337369 res!1779306) b!4337359))

(assert (= (and b!4337359 res!1779304) b!4337365))

(assert (= (and b!4337365 res!1779296) b!4337364))

(assert (= (and b!4337364 res!1779299) b!4337358))

(assert (= (and b!4337358 (not res!1779298)) b!4337363))

(assert (= (and b!4337363 (not res!1779300)) b!4337361))

(assert (= (and b!4337361 res!1779297) b!4337370))

(assert (= (and b!4337370 res!1779303) b!4337366))

(assert (= (and b!4337361 (not res!1779307)) b!4337368))

(assert (= (and b!4337368 res!1779302) b!4337362))

(assert (= (and start!418464 ((_ is Cons!48703) newBucket!200)) b!4337367))

(assert (= start!418464 b!4337360))

(declare-fun m!4933491 () Bool)

(assert (=> b!4337365 m!4933491))

(assert (=> b!4337365 m!4933491))

(declare-fun m!4933493 () Bool)

(assert (=> b!4337365 m!4933493))

(declare-fun m!4933495 () Bool)

(assert (=> b!4337362 m!4933495))

(declare-fun m!4933497 () Bool)

(assert (=> b!4337364 m!4933497))

(declare-fun m!4933499 () Bool)

(assert (=> b!4337359 m!4933499))

(declare-fun m!4933501 () Bool)

(assert (=> b!4337369 m!4933501))

(declare-fun m!4933503 () Bool)

(assert (=> b!4337361 m!4933503))

(declare-fun m!4933505 () Bool)

(assert (=> b!4337361 m!4933505))

(declare-fun m!4933507 () Bool)

(assert (=> b!4337361 m!4933507))

(declare-fun m!4933509 () Bool)

(assert (=> b!4337361 m!4933509))

(assert (=> start!418464 m!4933509))

(declare-fun m!4933511 () Bool)

(assert (=> start!418464 m!4933511))

(declare-fun m!4933513 () Bool)

(assert (=> b!4337363 m!4933513))

(assert (=> b!4337370 m!4933503))

(declare-fun m!4933515 () Bool)

(assert (=> b!4337357 m!4933515))

(declare-fun m!4933517 () Bool)

(assert (=> b!4337368 m!4933517))

(declare-fun m!4933519 () Bool)

(assert (=> b!4337368 m!4933519))

(declare-fun m!4933521 () Bool)

(assert (=> b!4337368 m!4933521))

(assert (=> b!4337368 m!4933519))

(declare-fun m!4933523 () Bool)

(assert (=> b!4337368 m!4933523))

(declare-fun m!4933525 () Bool)

(assert (=> b!4337368 m!4933525))

(declare-fun m!4933527 () Bool)

(assert (=> b!4337368 m!4933527))

(declare-fun m!4933529 () Bool)

(assert (=> b!4337368 m!4933529))

(assert (=> b!4337368 m!4933525))

(declare-fun m!4933531 () Bool)

(assert (=> b!4337368 m!4933531))

(declare-fun m!4933533 () Bool)

(assert (=> b!4337368 m!4933533))

(declare-fun m!4933535 () Bool)

(assert (=> b!4337368 m!4933535))

(declare-fun m!4933537 () Bool)

(assert (=> b!4337368 m!4933537))

(declare-fun m!4933539 () Bool)

(assert (=> b!4337368 m!4933539))

(declare-fun m!4933541 () Bool)

(assert (=> b!4337358 m!4933541))

(declare-fun m!4933543 () Bool)

(assert (=> b!4337358 m!4933543))

(declare-fun m!4933545 () Bool)

(assert (=> b!4337358 m!4933545))

(declare-fun m!4933547 () Bool)

(assert (=> b!4337358 m!4933547))

(declare-fun m!4933549 () Bool)

(assert (=> b!4337358 m!4933549))

(check-sat (not b!4337370) (not b!4337369) tp_is_empty!24827 (not start!418464) (not b!4337358) (not b!4337364) (not b!4337361) (not b!4337362) (not b!4337365) (not b!4337368) (not b!4337359) (not b!4337360) (not b!4337357) (not b!4337363) (not b!4337367) tp_is_empty!24825)
(check-sat)
