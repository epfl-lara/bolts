; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!482180 () Bool)

(assert start!482180)

(declare-fun b!4731265 () Bool)

(declare-fun e!2951089 () Bool)

(declare-fun e!2951093 () Bool)

(assert (=> b!4731265 (= e!2951089 e!2951093)))

(declare-fun res!2003116 () Bool)

(assert (=> b!4731265 (=> res!2003116 e!2951093)))

(declare-datatypes ((K!14240 0))(
  ( (K!14241 (val!19663 Int)) )
))
(declare-datatypes ((V!14486 0))(
  ( (V!14487 (val!19664 Int)) )
))
(declare-datatypes ((tuple2!54538 0))(
  ( (tuple2!54539 (_1!30563 K!14240) (_2!30563 V!14486)) )
))
(declare-datatypes ((List!53013 0))(
  ( (Nil!52889) (Cons!52889 (h!59252 tuple2!54538) (t!360289 List!53013)) )
))
(declare-fun oldBucket!34 () List!53013)

(declare-fun key!4653 () K!14240)

(declare-fun containsKey!3413 (List!53013 K!14240) Bool)

(assert (=> b!4731265 (= res!2003116 (not (containsKey!3413 (t!360289 oldBucket!34) key!4653)))))

(assert (=> b!4731265 (containsKey!3413 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6405 0))(
  ( (HashableExt!6404 (__x!32108 Int)) )
))
(declare-fun hashF!1323 () Hashable!6405)

(declare-datatypes ((Unit!131503 0))(
  ( (Unit!131504) )
))
(declare-fun lt!1894415 () Unit!131503)

(declare-fun lemmaGetPairDefinedThenContainsKey!320 (List!53013 K!14240 Hashable!6405) Unit!131503)

(assert (=> b!4731265 (= lt!1894415 (lemmaGetPairDefinedThenContainsKey!320 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1894419 () List!53013)

(declare-datatypes ((Option!12399 0))(
  ( (None!12398) (Some!12398 (v!47015 tuple2!54538)) )
))
(declare-fun isDefined!9653 (Option!12399) Bool)

(declare-fun getPair!576 (List!53013 K!14240) Option!12399)

(assert (=> b!4731265 (isDefined!9653 (getPair!576 lt!1894419 key!4653))))

(declare-datatypes ((tuple2!54540 0))(
  ( (tuple2!54541 (_1!30564 (_ BitVec 64)) (_2!30564 List!53013)) )
))
(declare-fun lt!1894411 () tuple2!54540)

(declare-fun lambda!217184 () Int)

(declare-fun lt!1894420 () Unit!131503)

(declare-datatypes ((List!53014 0))(
  ( (Nil!52890) (Cons!52890 (h!59253 tuple2!54540) (t!360290 List!53014)) )
))
(declare-datatypes ((ListLongMap!4491 0))(
  ( (ListLongMap!4492 (toList!5961 List!53014)) )
))
(declare-fun lm!2023 () ListLongMap!4491)

(declare-fun forallContained!3675 (List!53014 Int tuple2!54540) Unit!131503)

(assert (=> b!4731265 (= lt!1894420 (forallContained!3675 (toList!5961 lm!2023) lambda!217184 lt!1894411))))

(declare-fun contains!16256 (List!53014 tuple2!54540) Bool)

(assert (=> b!4731265 (contains!16256 (toList!5961 lm!2023) lt!1894411)))

(declare-fun lt!1894409 () (_ BitVec 64))

(assert (=> b!4731265 (= lt!1894411 (tuple2!54541 lt!1894409 lt!1894419))))

(declare-fun lt!1894421 () Unit!131503)

(declare-fun lemmaGetValueImpliesTupleContained!381 (ListLongMap!4491 (_ BitVec 64) List!53013) Unit!131503)

(assert (=> b!4731265 (= lt!1894421 (lemmaGetValueImpliesTupleContained!381 lm!2023 lt!1894409 lt!1894419))))

(declare-fun apply!12461 (ListLongMap!4491 (_ BitVec 64)) List!53013)

(assert (=> b!4731265 (= lt!1894419 (apply!12461 lm!2023 lt!1894409))))

(declare-fun contains!16257 (ListLongMap!4491 (_ BitVec 64)) Bool)

(assert (=> b!4731265 (contains!16257 lm!2023 lt!1894409)))

(declare-fun lt!1894412 () Unit!131503)

(declare-fun lemmaInGenMapThenLongMapContainsHash!782 (ListLongMap!4491 K!14240 Hashable!6405) Unit!131503)

(assert (=> b!4731265 (= lt!1894412 (lemmaInGenMapThenLongMapContainsHash!782 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1894414 () Unit!131503)

(declare-fun lemmaInGenMapThenGetPairDefined!372 (ListLongMap!4491 K!14240 Hashable!6405) Unit!131503)

(assert (=> b!4731265 (= lt!1894414 (lemmaInGenMapThenGetPairDefined!372 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4731267 () Bool)

(declare-fun e!2951085 () Bool)

(declare-fun lt!1894417 () List!53013)

(declare-fun noDuplicateKeys!2036 (List!53013) Bool)

(assert (=> b!4731267 (= e!2951085 (noDuplicateKeys!2036 lt!1894417))))

(declare-fun lt!1894416 () List!53014)

(declare-datatypes ((ListMap!5325 0))(
  ( (ListMap!5326 (toList!5962 List!53013)) )
))
(declare-fun contains!16258 (ListMap!5325 K!14240) Bool)

(declare-fun extractMap!2062 (List!53014) ListMap!5325)

(assert (=> b!4731267 (contains!16258 (extractMap!2062 lt!1894416) key!4653)))

(declare-fun lt!1894413 () Unit!131503)

(declare-fun lemmaListContainsThenExtractedMapContains!544 (ListLongMap!4491 K!14240 Hashable!6405) Unit!131503)

(assert (=> b!4731267 (= lt!1894413 (lemmaListContainsThenExtractedMapContains!544 (ListLongMap!4492 lt!1894416) key!4653 hashF!1323))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4731267 (= lt!1894416 (Cons!52890 (tuple2!54541 hash!405 (t!360289 oldBucket!34)) (t!360290 (toList!5961 lm!2023))))))

(declare-fun b!4731268 () Bool)

(declare-fun res!2003108 () Bool)

(declare-fun e!2951092 () Bool)

(assert (=> b!4731268 (=> (not res!2003108) (not e!2951092))))

(declare-fun allKeysSameHashInMap!1950 (ListLongMap!4491 Hashable!6405) Bool)

(assert (=> b!4731268 (= res!2003108 (allKeysSameHashInMap!1950 lm!2023 hashF!1323))))

(declare-fun b!4731269 () Bool)

(declare-fun res!2003112 () Bool)

(assert (=> b!4731269 (=> (not res!2003112) (not e!2951092))))

(declare-fun head!10276 (List!53014) tuple2!54540)

(assert (=> b!4731269 (= res!2003112 (= (head!10276 (toList!5961 lm!2023)) (tuple2!54541 hash!405 oldBucket!34)))))

(declare-fun b!4731270 () Bool)

(assert (=> b!4731270 (= e!2951093 e!2951085)))

(declare-fun res!2003109 () Bool)

(assert (=> b!4731270 (=> res!2003109 e!2951085)))

(declare-fun lt!1894410 () List!53013)

(declare-fun removePairForKey!1631 (List!53013 K!14240) List!53013)

(assert (=> b!4731270 (= res!2003109 (not (= (removePairForKey!1631 lt!1894417 key!4653) lt!1894410)))))

(declare-fun newBucket!218 () List!53013)

(declare-fun tail!9052 (List!53013) List!53013)

(assert (=> b!4731270 (= lt!1894410 (tail!9052 newBucket!218))))

(assert (=> b!4731270 (= lt!1894417 (tail!9052 oldBucket!34))))

(declare-fun b!4731271 () Bool)

(declare-fun res!2003113 () Bool)

(assert (=> b!4731271 (=> res!2003113 e!2951085)))

(assert (=> b!4731271 (= res!2003113 (not (= (removePairForKey!1631 (t!360289 oldBucket!34) key!4653) lt!1894410)))))

(declare-fun b!4731272 () Bool)

(declare-fun res!2003120 () Bool)

(declare-fun e!2951086 () Bool)

(assert (=> b!4731272 (=> (not res!2003120) (not e!2951086))))

(assert (=> b!4731272 (= res!2003120 (noDuplicateKeys!2036 newBucket!218))))

(declare-fun tp!1348825 () Bool)

(declare-fun tp_is_empty!31439 () Bool)

(declare-fun e!2951090 () Bool)

(declare-fun b!4731273 () Bool)

(declare-fun tp_is_empty!31437 () Bool)

(assert (=> b!4731273 (= e!2951090 (and tp_is_empty!31437 tp_is_empty!31439 tp!1348825))))

(declare-fun b!4731274 () Bool)

(assert (=> b!4731274 (= e!2951092 (not e!2951089))))

(declare-fun res!2003119 () Bool)

(assert (=> b!4731274 (=> res!2003119 e!2951089)))

(get-info :version)

(assert (=> b!4731274 (= res!2003119 (or (and ((_ is Cons!52889) oldBucket!34) (= (_1!30563 (h!59252 oldBucket!34)) key!4653)) (not ((_ is Cons!52889) oldBucket!34)) (= (_1!30563 (h!59252 oldBucket!34)) key!4653)))))

(declare-fun e!2951091 () Bool)

(assert (=> b!4731274 e!2951091))

(declare-fun res!2003117 () Bool)

(assert (=> b!4731274 (=> (not res!2003117) (not e!2951091))))

(declare-fun tail!9053 (ListLongMap!4491) ListLongMap!4491)

(assert (=> b!4731274 (= res!2003117 (= (t!360290 (toList!5961 lm!2023)) (toList!5961 (tail!9053 lm!2023))))))

(declare-fun b!4731275 () Bool)

(declare-fun res!2003107 () Bool)

(assert (=> b!4731275 (=> (not res!2003107) (not e!2951086))))

(assert (=> b!4731275 (= res!2003107 (= (removePairForKey!1631 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!2003118 () Bool)

(assert (=> start!482180 (=> (not res!2003118) (not e!2951086))))

(declare-fun forall!11635 (List!53014 Int) Bool)

(assert (=> start!482180 (= res!2003118 (forall!11635 (toList!5961 lm!2023) lambda!217184))))

(assert (=> start!482180 e!2951086))

(declare-fun e!2951088 () Bool)

(declare-fun inv!68114 (ListLongMap!4491) Bool)

(assert (=> start!482180 (and (inv!68114 lm!2023) e!2951088)))

(assert (=> start!482180 tp_is_empty!31437))

(declare-fun e!2951094 () Bool)

(assert (=> start!482180 e!2951094))

(assert (=> start!482180 true))

(assert (=> start!482180 e!2951090))

(declare-fun b!4731266 () Bool)

(declare-fun tp!1348826 () Bool)

(assert (=> b!4731266 (= e!2951088 tp!1348826)))

(declare-fun b!4731276 () Bool)

(declare-fun lt!1894418 () ListMap!5325)

(declare-fun addToMapMapFromBucket!1466 (List!53013 ListMap!5325) ListMap!5325)

(assert (=> b!4731276 (= e!2951091 (= lt!1894418 (addToMapMapFromBucket!1466 (_2!30564 (h!59253 (toList!5961 lm!2023))) (extractMap!2062 (t!360290 (toList!5961 lm!2023))))))))

(declare-fun b!4731277 () Bool)

(declare-fun e!2951087 () Bool)

(assert (=> b!4731277 (= e!2951086 e!2951087)))

(declare-fun res!2003111 () Bool)

(assert (=> b!4731277 (=> (not res!2003111) (not e!2951087))))

(assert (=> b!4731277 (= res!2003111 (contains!16258 lt!1894418 key!4653))))

(assert (=> b!4731277 (= lt!1894418 (extractMap!2062 (toList!5961 lm!2023)))))

(declare-fun tp!1348827 () Bool)

(declare-fun b!4731278 () Bool)

(assert (=> b!4731278 (= e!2951094 (and tp_is_empty!31437 tp_is_empty!31439 tp!1348827))))

(declare-fun b!4731279 () Bool)

(declare-fun res!2003114 () Bool)

(assert (=> b!4731279 (=> (not res!2003114) (not e!2951092))))

(assert (=> b!4731279 (= res!2003114 ((_ is Cons!52890) (toList!5961 lm!2023)))))

(declare-fun b!4731280 () Bool)

(declare-fun res!2003110 () Bool)

(assert (=> b!4731280 (=> (not res!2003110) (not e!2951092))))

(declare-fun allKeysSameHash!1862 (List!53013 (_ BitVec 64) Hashable!6405) Bool)

(assert (=> b!4731280 (= res!2003110 (allKeysSameHash!1862 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4731281 () Bool)

(declare-fun res!2003106 () Bool)

(assert (=> b!4731281 (=> (not res!2003106) (not e!2951086))))

(assert (=> b!4731281 (= res!2003106 (noDuplicateKeys!2036 oldBucket!34))))

(declare-fun b!4731282 () Bool)

(assert (=> b!4731282 (= e!2951087 e!2951092)))

(declare-fun res!2003121 () Bool)

(assert (=> b!4731282 (=> (not res!2003121) (not e!2951092))))

(assert (=> b!4731282 (= res!2003121 (= lt!1894409 hash!405))))

(declare-fun hash!4420 (Hashable!6405 K!14240) (_ BitVec 64))

(assert (=> b!4731282 (= lt!1894409 (hash!4420 hashF!1323 key!4653))))

(declare-fun b!4731283 () Bool)

(declare-fun res!2003115 () Bool)

(assert (=> b!4731283 (=> (not res!2003115) (not e!2951086))))

(assert (=> b!4731283 (= res!2003115 (allKeysSameHash!1862 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!482180 res!2003118) b!4731281))

(assert (= (and b!4731281 res!2003106) b!4731272))

(assert (= (and b!4731272 res!2003120) b!4731275))

(assert (= (and b!4731275 res!2003107) b!4731283))

(assert (= (and b!4731283 res!2003115) b!4731277))

(assert (= (and b!4731277 res!2003111) b!4731282))

(assert (= (and b!4731282 res!2003121) b!4731280))

(assert (= (and b!4731280 res!2003110) b!4731268))

(assert (= (and b!4731268 res!2003108) b!4731269))

(assert (= (and b!4731269 res!2003112) b!4731279))

(assert (= (and b!4731279 res!2003114) b!4731274))

(assert (= (and b!4731274 res!2003117) b!4731276))

(assert (= (and b!4731274 (not res!2003119)) b!4731265))

(assert (= (and b!4731265 (not res!2003116)) b!4731270))

(assert (= (and b!4731270 (not res!2003109)) b!4731271))

(assert (= (and b!4731271 (not res!2003113)) b!4731267))

(assert (= start!482180 b!4731266))

(assert (= (and start!482180 ((_ is Cons!52889) oldBucket!34)) b!4731278))

(assert (= (and start!482180 ((_ is Cons!52889) newBucket!218)) b!4731273))

(declare-fun m!5673801 () Bool)

(assert (=> b!4731270 m!5673801))

(declare-fun m!5673803 () Bool)

(assert (=> b!4731270 m!5673803))

(declare-fun m!5673805 () Bool)

(assert (=> b!4731270 m!5673805))

(declare-fun m!5673807 () Bool)

(assert (=> b!4731283 m!5673807))

(declare-fun m!5673809 () Bool)

(assert (=> b!4731281 m!5673809))

(declare-fun m!5673811 () Bool)

(assert (=> b!4731276 m!5673811))

(assert (=> b!4731276 m!5673811))

(declare-fun m!5673813 () Bool)

(assert (=> b!4731276 m!5673813))

(declare-fun m!5673815 () Bool)

(assert (=> b!4731274 m!5673815))

(declare-fun m!5673817 () Bool)

(assert (=> b!4731267 m!5673817))

(declare-fun m!5673819 () Bool)

(assert (=> b!4731267 m!5673819))

(assert (=> b!4731267 m!5673819))

(declare-fun m!5673821 () Bool)

(assert (=> b!4731267 m!5673821))

(declare-fun m!5673823 () Bool)

(assert (=> b!4731267 m!5673823))

(declare-fun m!5673825 () Bool)

(assert (=> b!4731280 m!5673825))

(declare-fun m!5673827 () Bool)

(assert (=> b!4731277 m!5673827))

(declare-fun m!5673829 () Bool)

(assert (=> b!4731277 m!5673829))

(declare-fun m!5673831 () Bool)

(assert (=> b!4731269 m!5673831))

(declare-fun m!5673833 () Bool)

(assert (=> b!4731265 m!5673833))

(declare-fun m!5673835 () Bool)

(assert (=> b!4731265 m!5673835))

(declare-fun m!5673837 () Bool)

(assert (=> b!4731265 m!5673837))

(declare-fun m!5673839 () Bool)

(assert (=> b!4731265 m!5673839))

(declare-fun m!5673841 () Bool)

(assert (=> b!4731265 m!5673841))

(assert (=> b!4731265 m!5673835))

(declare-fun m!5673843 () Bool)

(assert (=> b!4731265 m!5673843))

(declare-fun m!5673845 () Bool)

(assert (=> b!4731265 m!5673845))

(declare-fun m!5673847 () Bool)

(assert (=> b!4731265 m!5673847))

(declare-fun m!5673849 () Bool)

(assert (=> b!4731265 m!5673849))

(declare-fun m!5673851 () Bool)

(assert (=> b!4731265 m!5673851))

(declare-fun m!5673853 () Bool)

(assert (=> b!4731265 m!5673853))

(declare-fun m!5673855 () Bool)

(assert (=> b!4731265 m!5673855))

(declare-fun m!5673857 () Bool)

(assert (=> b!4731271 m!5673857))

(declare-fun m!5673859 () Bool)

(assert (=> b!4731272 m!5673859))

(declare-fun m!5673861 () Bool)

(assert (=> b!4731275 m!5673861))

(declare-fun m!5673863 () Bool)

(assert (=> b!4731282 m!5673863))

(declare-fun m!5673865 () Bool)

(assert (=> start!482180 m!5673865))

(declare-fun m!5673867 () Bool)

(assert (=> start!482180 m!5673867))

(declare-fun m!5673869 () Bool)

(assert (=> b!4731268 m!5673869))

(check-sat (not b!4731266) (not b!4731276) tp_is_empty!31439 (not b!4731274) (not b!4731265) (not b!4731282) (not b!4731283) (not b!4731272) (not b!4731278) (not b!4731281) (not b!4731273) (not b!4731268) (not b!4731271) (not b!4731267) (not b!4731270) (not b!4731280) (not start!482180) (not b!4731275) (not b!4731277) (not b!4731269) tp_is_empty!31437)
(check-sat)
(get-model)

(declare-fun b!4731293 () Bool)

(declare-fun e!2951099 () List!53013)

(declare-fun e!2951100 () List!53013)

(assert (=> b!4731293 (= e!2951099 e!2951100)))

(declare-fun c!808004 () Bool)

(assert (=> b!4731293 (= c!808004 ((_ is Cons!52889) oldBucket!34))))

(declare-fun d!1509002 () Bool)

(declare-fun lt!1894424 () List!53013)

(assert (=> d!1509002 (not (containsKey!3413 lt!1894424 key!4653))))

(assert (=> d!1509002 (= lt!1894424 e!2951099)))

(declare-fun c!808005 () Bool)

(assert (=> d!1509002 (= c!808005 (and ((_ is Cons!52889) oldBucket!34) (= (_1!30563 (h!59252 oldBucket!34)) key!4653)))))

(assert (=> d!1509002 (noDuplicateKeys!2036 oldBucket!34)))

(assert (=> d!1509002 (= (removePairForKey!1631 oldBucket!34 key!4653) lt!1894424)))

(declare-fun b!4731294 () Bool)

(assert (=> b!4731294 (= e!2951100 (Cons!52889 (h!59252 oldBucket!34) (removePairForKey!1631 (t!360289 oldBucket!34) key!4653)))))

(declare-fun b!4731292 () Bool)

(assert (=> b!4731292 (= e!2951099 (t!360289 oldBucket!34))))

(declare-fun b!4731295 () Bool)

(assert (=> b!4731295 (= e!2951100 Nil!52889)))

(assert (= (and d!1509002 c!808005) b!4731292))

(assert (= (and d!1509002 (not c!808005)) b!4731293))

(assert (= (and b!4731293 c!808004) b!4731294))

(assert (= (and b!4731293 (not c!808004)) b!4731295))

(declare-fun m!5673871 () Bool)

(assert (=> d!1509002 m!5673871))

(assert (=> d!1509002 m!5673809))

(assert (=> b!4731294 m!5673857))

(assert (=> b!4731275 d!1509002))

(declare-fun d!1509004 () Bool)

(declare-fun tail!9054 (List!53014) List!53014)

(assert (=> d!1509004 (= (tail!9053 lm!2023) (ListLongMap!4492 (tail!9054 (toList!5961 lm!2023))))))

(declare-fun bs!1120623 () Bool)

(assert (= bs!1120623 d!1509004))

(declare-fun m!5673873 () Bool)

(assert (=> bs!1120623 m!5673873))

(assert (=> b!4731274 d!1509004))

(declare-fun d!1509006 () Bool)

(declare-fun res!2003126 () Bool)

(declare-fun e!2951105 () Bool)

(assert (=> d!1509006 (=> res!2003126 e!2951105)))

(assert (=> d!1509006 (= res!2003126 (not ((_ is Cons!52889) newBucket!218)))))

(assert (=> d!1509006 (= (noDuplicateKeys!2036 newBucket!218) e!2951105)))

(declare-fun b!4731300 () Bool)

(declare-fun e!2951106 () Bool)

(assert (=> b!4731300 (= e!2951105 e!2951106)))

(declare-fun res!2003127 () Bool)

(assert (=> b!4731300 (=> (not res!2003127) (not e!2951106))))

(assert (=> b!4731300 (= res!2003127 (not (containsKey!3413 (t!360289 newBucket!218) (_1!30563 (h!59252 newBucket!218)))))))

(declare-fun b!4731301 () Bool)

(assert (=> b!4731301 (= e!2951106 (noDuplicateKeys!2036 (t!360289 newBucket!218)))))

(assert (= (and d!1509006 (not res!2003126)) b!4731300))

(assert (= (and b!4731300 res!2003127) b!4731301))

(declare-fun m!5673875 () Bool)

(assert (=> b!4731300 m!5673875))

(declare-fun m!5673877 () Bool)

(assert (=> b!4731301 m!5673877))

(assert (=> b!4731272 d!1509006))

(declare-fun d!1509008 () Bool)

(assert (=> d!1509008 true))

(assert (=> d!1509008 true))

(declare-fun lambda!217187 () Int)

(declare-fun forall!11637 (List!53013 Int) Bool)

(assert (=> d!1509008 (= (allKeysSameHash!1862 oldBucket!34 hash!405 hashF!1323) (forall!11637 oldBucket!34 lambda!217187))))

(declare-fun bs!1120624 () Bool)

(assert (= bs!1120624 d!1509008))

(declare-fun m!5673879 () Bool)

(assert (=> bs!1120624 m!5673879))

(assert (=> b!4731283 d!1509008))

(declare-fun d!1509010 () Bool)

(declare-fun res!2003128 () Bool)

(declare-fun e!2951107 () Bool)

(assert (=> d!1509010 (=> res!2003128 e!2951107)))

(assert (=> d!1509010 (= res!2003128 (not ((_ is Cons!52889) oldBucket!34)))))

(assert (=> d!1509010 (= (noDuplicateKeys!2036 oldBucket!34) e!2951107)))

(declare-fun b!4731306 () Bool)

(declare-fun e!2951108 () Bool)

(assert (=> b!4731306 (= e!2951107 e!2951108)))

(declare-fun res!2003129 () Bool)

(assert (=> b!4731306 (=> (not res!2003129) (not e!2951108))))

(assert (=> b!4731306 (= res!2003129 (not (containsKey!3413 (t!360289 oldBucket!34) (_1!30563 (h!59252 oldBucket!34)))))))

(declare-fun b!4731307 () Bool)

(assert (=> b!4731307 (= e!2951108 (noDuplicateKeys!2036 (t!360289 oldBucket!34)))))

(assert (= (and d!1509010 (not res!2003128)) b!4731306))

(assert (= (and b!4731306 res!2003129) b!4731307))

(declare-fun m!5673881 () Bool)

(assert (=> b!4731306 m!5673881))

(declare-fun m!5673883 () Bool)

(assert (=> b!4731307 m!5673883))

(assert (=> b!4731281 d!1509010))

(declare-fun d!1509012 () Bool)

(declare-fun hash!4421 (Hashable!6405 K!14240) (_ BitVec 64))

(assert (=> d!1509012 (= (hash!4420 hashF!1323 key!4653) (hash!4421 hashF!1323 key!4653))))

(declare-fun bs!1120625 () Bool)

(assert (= bs!1120625 d!1509012))

(declare-fun m!5673885 () Bool)

(assert (=> bs!1120625 m!5673885))

(assert (=> b!4731282 d!1509012))

(declare-fun b!4731309 () Bool)

(declare-fun e!2951109 () List!53013)

(declare-fun e!2951110 () List!53013)

(assert (=> b!4731309 (= e!2951109 e!2951110)))

(declare-fun c!808006 () Bool)

(assert (=> b!4731309 (= c!808006 ((_ is Cons!52889) (t!360289 oldBucket!34)))))

(declare-fun d!1509014 () Bool)

(declare-fun lt!1894425 () List!53013)

(assert (=> d!1509014 (not (containsKey!3413 lt!1894425 key!4653))))

(assert (=> d!1509014 (= lt!1894425 e!2951109)))

(declare-fun c!808007 () Bool)

(assert (=> d!1509014 (= c!808007 (and ((_ is Cons!52889) (t!360289 oldBucket!34)) (= (_1!30563 (h!59252 (t!360289 oldBucket!34))) key!4653)))))

(assert (=> d!1509014 (noDuplicateKeys!2036 (t!360289 oldBucket!34))))

(assert (=> d!1509014 (= (removePairForKey!1631 (t!360289 oldBucket!34) key!4653) lt!1894425)))

(declare-fun b!4731310 () Bool)

(assert (=> b!4731310 (= e!2951110 (Cons!52889 (h!59252 (t!360289 oldBucket!34)) (removePairForKey!1631 (t!360289 (t!360289 oldBucket!34)) key!4653)))))

(declare-fun b!4731308 () Bool)

(assert (=> b!4731308 (= e!2951109 (t!360289 (t!360289 oldBucket!34)))))

(declare-fun b!4731311 () Bool)

(assert (=> b!4731311 (= e!2951110 Nil!52889)))

(assert (= (and d!1509014 c!808007) b!4731308))

(assert (= (and d!1509014 (not c!808007)) b!4731309))

(assert (= (and b!4731309 c!808006) b!4731310))

(assert (= (and b!4731309 (not c!808006)) b!4731311))

(declare-fun m!5673887 () Bool)

(assert (=> d!1509014 m!5673887))

(assert (=> d!1509014 m!5673883))

(declare-fun m!5673889 () Bool)

(assert (=> b!4731310 m!5673889))

(assert (=> b!4731271 d!1509014))

(declare-fun bs!1120626 () Bool)

(declare-fun d!1509016 () Bool)

(assert (= bs!1120626 (and d!1509016 d!1509008)))

(declare-fun lambda!217188 () Int)

(assert (=> bs!1120626 (= lambda!217188 lambda!217187)))

(assert (=> d!1509016 true))

(assert (=> d!1509016 true))

(assert (=> d!1509016 (= (allKeysSameHash!1862 newBucket!218 hash!405 hashF!1323) (forall!11637 newBucket!218 lambda!217188))))

(declare-fun bs!1120627 () Bool)

(assert (= bs!1120627 d!1509016))

(declare-fun m!5673891 () Bool)

(assert (=> bs!1120627 m!5673891))

(assert (=> b!4731280 d!1509016))

(declare-fun d!1509018 () Bool)

(assert (=> d!1509018 (= (head!10276 (toList!5961 lm!2023)) (h!59253 (toList!5961 lm!2023)))))

(assert (=> b!4731269 d!1509018))

(declare-fun b!4731313 () Bool)

(declare-fun e!2951111 () List!53013)

(declare-fun e!2951112 () List!53013)

(assert (=> b!4731313 (= e!2951111 e!2951112)))

(declare-fun c!808008 () Bool)

(assert (=> b!4731313 (= c!808008 ((_ is Cons!52889) lt!1894417))))

(declare-fun d!1509020 () Bool)

(declare-fun lt!1894426 () List!53013)

(assert (=> d!1509020 (not (containsKey!3413 lt!1894426 key!4653))))

(assert (=> d!1509020 (= lt!1894426 e!2951111)))

(declare-fun c!808009 () Bool)

(assert (=> d!1509020 (= c!808009 (and ((_ is Cons!52889) lt!1894417) (= (_1!30563 (h!59252 lt!1894417)) key!4653)))))

(assert (=> d!1509020 (noDuplicateKeys!2036 lt!1894417)))

(assert (=> d!1509020 (= (removePairForKey!1631 lt!1894417 key!4653) lt!1894426)))

(declare-fun b!4731314 () Bool)

(assert (=> b!4731314 (= e!2951112 (Cons!52889 (h!59252 lt!1894417) (removePairForKey!1631 (t!360289 lt!1894417) key!4653)))))

(declare-fun b!4731312 () Bool)

(assert (=> b!4731312 (= e!2951111 (t!360289 lt!1894417))))

(declare-fun b!4731315 () Bool)

(assert (=> b!4731315 (= e!2951112 Nil!52889)))

(assert (= (and d!1509020 c!808009) b!4731312))

(assert (= (and d!1509020 (not c!808009)) b!4731313))

(assert (= (and b!4731313 c!808008) b!4731314))

(assert (= (and b!4731313 (not c!808008)) b!4731315))

(declare-fun m!5673893 () Bool)

(assert (=> d!1509020 m!5673893))

(assert (=> d!1509020 m!5673817))

(declare-fun m!5673895 () Bool)

(assert (=> b!4731314 m!5673895))

(assert (=> b!4731270 d!1509020))

(declare-fun d!1509022 () Bool)

(assert (=> d!1509022 (= (tail!9052 newBucket!218) (t!360289 newBucket!218))))

(assert (=> b!4731270 d!1509022))

(declare-fun d!1509024 () Bool)

(assert (=> d!1509024 (= (tail!9052 oldBucket!34) (t!360289 oldBucket!34))))

(assert (=> b!4731270 d!1509024))

(declare-fun bs!1120628 () Bool)

(declare-fun d!1509026 () Bool)

(assert (= bs!1120628 (and d!1509026 start!482180)))

(declare-fun lambda!217191 () Int)

(assert (=> bs!1120628 (not (= lambda!217191 lambda!217184))))

(assert (=> d!1509026 true))

(assert (=> d!1509026 (= (allKeysSameHashInMap!1950 lm!2023 hashF!1323) (forall!11635 (toList!5961 lm!2023) lambda!217191))))

(declare-fun bs!1120629 () Bool)

(assert (= bs!1120629 d!1509026))

(declare-fun m!5673901 () Bool)

(assert (=> bs!1120629 m!5673901))

(assert (=> b!4731268 d!1509026))

(declare-fun bm!330912 () Bool)

(declare-fun call!330917 () Bool)

(declare-datatypes ((List!53016 0))(
  ( (Nil!52892) (Cons!52892 (h!59257 K!14240) (t!360292 List!53016)) )
))
(declare-fun e!2951153 () List!53016)

(declare-fun contains!16261 (List!53016 K!14240) Bool)

(assert (=> bm!330912 (= call!330917 (contains!16261 e!2951153 key!4653))))

(declare-fun c!808030 () Bool)

(declare-fun c!808029 () Bool)

(assert (=> bm!330912 (= c!808030 c!808029)))

(declare-fun b!4731376 () Bool)

(assert (=> b!4731376 false))

(declare-fun lt!1894473 () Unit!131503)

(declare-fun lt!1894477 () Unit!131503)

(assert (=> b!4731376 (= lt!1894473 lt!1894477)))

(declare-fun containsKey!3416 (List!53013 K!14240) Bool)

(assert (=> b!4731376 (containsKey!3416 (toList!5962 lt!1894418) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!965 (List!53013 K!14240) Unit!131503)

(assert (=> b!4731376 (= lt!1894477 (lemmaInGetKeysListThenContainsKey!965 (toList!5962 lt!1894418) key!4653))))

(declare-fun e!2951157 () Unit!131503)

(declare-fun Unit!131521 () Unit!131503)

(assert (=> b!4731376 (= e!2951157 Unit!131521)))

(declare-fun b!4731377 () Bool)

(declare-fun e!2951156 () Unit!131503)

(declare-fun lt!1894479 () Unit!131503)

(assert (=> b!4731377 (= e!2951156 lt!1894479)))

(declare-fun lt!1894480 () Unit!131503)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1875 (List!53013 K!14240) Unit!131503)

(assert (=> b!4731377 (= lt!1894480 (lemmaContainsKeyImpliesGetValueByKeyDefined!1875 (toList!5962 lt!1894418) key!4653))))

(declare-datatypes ((Option!12402 0))(
  ( (None!12401) (Some!12401 (v!47022 V!14486)) )
))
(declare-fun isDefined!9656 (Option!12402) Bool)

(declare-fun getValueByKey!1984 (List!53013 K!14240) Option!12402)

(assert (=> b!4731377 (isDefined!9656 (getValueByKey!1984 (toList!5962 lt!1894418) key!4653))))

(declare-fun lt!1894474 () Unit!131503)

(assert (=> b!4731377 (= lt!1894474 lt!1894480)))

(declare-fun lemmaInListThenGetKeysListContains!961 (List!53013 K!14240) Unit!131503)

(assert (=> b!4731377 (= lt!1894479 (lemmaInListThenGetKeysListContains!961 (toList!5962 lt!1894418) key!4653))))

(assert (=> b!4731377 call!330917))

(declare-fun b!4731378 () Bool)

(declare-fun e!2951154 () Bool)

(declare-fun keys!19013 (ListMap!5325) List!53016)

(assert (=> b!4731378 (= e!2951154 (not (contains!16261 (keys!19013 lt!1894418) key!4653)))))

(declare-fun b!4731379 () Bool)

(declare-fun e!2951152 () Bool)

(declare-fun e!2951155 () Bool)

(assert (=> b!4731379 (= e!2951152 e!2951155)))

(declare-fun res!2003153 () Bool)

(assert (=> b!4731379 (=> (not res!2003153) (not e!2951155))))

(assert (=> b!4731379 (= res!2003153 (isDefined!9656 (getValueByKey!1984 (toList!5962 lt!1894418) key!4653)))))

(declare-fun b!4731380 () Bool)

(declare-fun getKeysList!966 (List!53013) List!53016)

(assert (=> b!4731380 (= e!2951153 (getKeysList!966 (toList!5962 lt!1894418)))))

(declare-fun b!4731381 () Bool)

(assert (=> b!4731381 (= e!2951155 (contains!16261 (keys!19013 lt!1894418) key!4653))))

(declare-fun b!4731382 () Bool)

(declare-fun Unit!131522 () Unit!131503)

(assert (=> b!4731382 (= e!2951157 Unit!131522)))

(declare-fun b!4731383 () Bool)

(assert (=> b!4731383 (= e!2951156 e!2951157)))

(declare-fun c!808028 () Bool)

(assert (=> b!4731383 (= c!808028 call!330917)))

(declare-fun d!1509032 () Bool)

(assert (=> d!1509032 e!2951152))

(declare-fun res!2003151 () Bool)

(assert (=> d!1509032 (=> res!2003151 e!2951152)))

(assert (=> d!1509032 (= res!2003151 e!2951154)))

(declare-fun res!2003152 () Bool)

(assert (=> d!1509032 (=> (not res!2003152) (not e!2951154))))

(declare-fun lt!1894476 () Bool)

(assert (=> d!1509032 (= res!2003152 (not lt!1894476))))

(declare-fun lt!1894478 () Bool)

(assert (=> d!1509032 (= lt!1894476 lt!1894478)))

(declare-fun lt!1894475 () Unit!131503)

(assert (=> d!1509032 (= lt!1894475 e!2951156)))

(assert (=> d!1509032 (= c!808029 lt!1894478)))

(assert (=> d!1509032 (= lt!1894478 (containsKey!3416 (toList!5962 lt!1894418) key!4653))))

(assert (=> d!1509032 (= (contains!16258 lt!1894418 key!4653) lt!1894476)))

(declare-fun b!4731375 () Bool)

(assert (=> b!4731375 (= e!2951153 (keys!19013 lt!1894418))))

(assert (= (and d!1509032 c!808029) b!4731377))

(assert (= (and d!1509032 (not c!808029)) b!4731383))

(assert (= (and b!4731383 c!808028) b!4731376))

(assert (= (and b!4731383 (not c!808028)) b!4731382))

(assert (= (or b!4731377 b!4731383) bm!330912))

(assert (= (and bm!330912 c!808030) b!4731380))

(assert (= (and bm!330912 (not c!808030)) b!4731375))

(assert (= (and d!1509032 res!2003152) b!4731378))

(assert (= (and d!1509032 (not res!2003151)) b!4731379))

(assert (= (and b!4731379 res!2003153) b!4731381))

(declare-fun m!5673939 () Bool)

(assert (=> b!4731375 m!5673939))

(assert (=> b!4731381 m!5673939))

(assert (=> b!4731381 m!5673939))

(declare-fun m!5673941 () Bool)

(assert (=> b!4731381 m!5673941))

(declare-fun m!5673943 () Bool)

(assert (=> b!4731376 m!5673943))

(declare-fun m!5673945 () Bool)

(assert (=> b!4731376 m!5673945))

(declare-fun m!5673947 () Bool)

(assert (=> b!4731380 m!5673947))

(declare-fun m!5673949 () Bool)

(assert (=> b!4731379 m!5673949))

(assert (=> b!4731379 m!5673949))

(declare-fun m!5673951 () Bool)

(assert (=> b!4731379 m!5673951))

(declare-fun m!5673953 () Bool)

(assert (=> b!4731377 m!5673953))

(assert (=> b!4731377 m!5673949))

(assert (=> b!4731377 m!5673949))

(assert (=> b!4731377 m!5673951))

(declare-fun m!5673955 () Bool)

(assert (=> b!4731377 m!5673955))

(declare-fun m!5673957 () Bool)

(assert (=> bm!330912 m!5673957))

(assert (=> b!4731378 m!5673939))

(assert (=> b!4731378 m!5673939))

(assert (=> b!4731378 m!5673941))

(assert (=> d!1509032 m!5673943))

(assert (=> b!4731277 d!1509032))

(declare-fun bs!1120637 () Bool)

(declare-fun d!1509040 () Bool)

(assert (= bs!1120637 (and d!1509040 start!482180)))

(declare-fun lambda!217201 () Int)

(assert (=> bs!1120637 (= lambda!217201 lambda!217184)))

(declare-fun bs!1120638 () Bool)

(assert (= bs!1120638 (and d!1509040 d!1509026)))

(assert (=> bs!1120638 (not (= lambda!217201 lambda!217191))))

(declare-fun lt!1894495 () ListMap!5325)

(declare-fun invariantList!1527 (List!53013) Bool)

(assert (=> d!1509040 (invariantList!1527 (toList!5962 lt!1894495))))

(declare-fun e!2951173 () ListMap!5325)

(assert (=> d!1509040 (= lt!1894495 e!2951173)))

(declare-fun c!808043 () Bool)

(assert (=> d!1509040 (= c!808043 ((_ is Cons!52890) (toList!5961 lm!2023)))))

(assert (=> d!1509040 (forall!11635 (toList!5961 lm!2023) lambda!217201)))

(assert (=> d!1509040 (= (extractMap!2062 (toList!5961 lm!2023)) lt!1894495)))

(declare-fun b!4731411 () Bool)

(assert (=> b!4731411 (= e!2951173 (addToMapMapFromBucket!1466 (_2!30564 (h!59253 (toList!5961 lm!2023))) (extractMap!2062 (t!360290 (toList!5961 lm!2023)))))))

(declare-fun b!4731412 () Bool)

(assert (=> b!4731412 (= e!2951173 (ListMap!5326 Nil!52889))))

(assert (= (and d!1509040 c!808043) b!4731411))

(assert (= (and d!1509040 (not c!808043)) b!4731412))

(declare-fun m!5673989 () Bool)

(assert (=> d!1509040 m!5673989))

(declare-fun m!5673991 () Bool)

(assert (=> d!1509040 m!5673991))

(assert (=> b!4731411 m!5673811))

(assert (=> b!4731411 m!5673811))

(assert (=> b!4731411 m!5673813))

(assert (=> b!4731277 d!1509040))

(declare-fun d!1509048 () Bool)

(declare-fun res!2003157 () Bool)

(declare-fun e!2951174 () Bool)

(assert (=> d!1509048 (=> res!2003157 e!2951174)))

(assert (=> d!1509048 (= res!2003157 (not ((_ is Cons!52889) lt!1894417)))))

(assert (=> d!1509048 (= (noDuplicateKeys!2036 lt!1894417) e!2951174)))

(declare-fun b!4731413 () Bool)

(declare-fun e!2951175 () Bool)

(assert (=> b!4731413 (= e!2951174 e!2951175)))

(declare-fun res!2003158 () Bool)

(assert (=> b!4731413 (=> (not res!2003158) (not e!2951175))))

(assert (=> b!4731413 (= res!2003158 (not (containsKey!3413 (t!360289 lt!1894417) (_1!30563 (h!59252 lt!1894417)))))))

(declare-fun b!4731414 () Bool)

(assert (=> b!4731414 (= e!2951175 (noDuplicateKeys!2036 (t!360289 lt!1894417)))))

(assert (= (and d!1509048 (not res!2003157)) b!4731413))

(assert (= (and b!4731413 res!2003158) b!4731414))

(declare-fun m!5673993 () Bool)

(assert (=> b!4731413 m!5673993))

(declare-fun m!5673995 () Bool)

(assert (=> b!4731414 m!5673995))

(assert (=> b!4731267 d!1509048))

(declare-fun bm!330914 () Bool)

(declare-fun call!330919 () Bool)

(declare-fun e!2951177 () List!53016)

(assert (=> bm!330914 (= call!330919 (contains!16261 e!2951177 key!4653))))

(declare-fun c!808046 () Bool)

(declare-fun c!808045 () Bool)

(assert (=> bm!330914 (= c!808046 c!808045)))

(declare-fun b!4731416 () Bool)

(assert (=> b!4731416 false))

(declare-fun lt!1894496 () Unit!131503)

(declare-fun lt!1894500 () Unit!131503)

(assert (=> b!4731416 (= lt!1894496 lt!1894500)))

(assert (=> b!4731416 (containsKey!3416 (toList!5962 (extractMap!2062 lt!1894416)) key!4653)))

(assert (=> b!4731416 (= lt!1894500 (lemmaInGetKeysListThenContainsKey!965 (toList!5962 (extractMap!2062 lt!1894416)) key!4653))))

(declare-fun e!2951181 () Unit!131503)

(declare-fun Unit!131523 () Unit!131503)

(assert (=> b!4731416 (= e!2951181 Unit!131523)))

(declare-fun b!4731417 () Bool)

(declare-fun e!2951180 () Unit!131503)

(declare-fun lt!1894502 () Unit!131503)

(assert (=> b!4731417 (= e!2951180 lt!1894502)))

(declare-fun lt!1894503 () Unit!131503)

(assert (=> b!4731417 (= lt!1894503 (lemmaContainsKeyImpliesGetValueByKeyDefined!1875 (toList!5962 (extractMap!2062 lt!1894416)) key!4653))))

(assert (=> b!4731417 (isDefined!9656 (getValueByKey!1984 (toList!5962 (extractMap!2062 lt!1894416)) key!4653))))

(declare-fun lt!1894497 () Unit!131503)

(assert (=> b!4731417 (= lt!1894497 lt!1894503)))

(assert (=> b!4731417 (= lt!1894502 (lemmaInListThenGetKeysListContains!961 (toList!5962 (extractMap!2062 lt!1894416)) key!4653))))

(assert (=> b!4731417 call!330919))

(declare-fun b!4731418 () Bool)

(declare-fun e!2951178 () Bool)

(assert (=> b!4731418 (= e!2951178 (not (contains!16261 (keys!19013 (extractMap!2062 lt!1894416)) key!4653)))))

(declare-fun b!4731419 () Bool)

(declare-fun e!2951176 () Bool)

(declare-fun e!2951179 () Bool)

(assert (=> b!4731419 (= e!2951176 e!2951179)))

(declare-fun res!2003161 () Bool)

(assert (=> b!4731419 (=> (not res!2003161) (not e!2951179))))

(assert (=> b!4731419 (= res!2003161 (isDefined!9656 (getValueByKey!1984 (toList!5962 (extractMap!2062 lt!1894416)) key!4653)))))

(declare-fun b!4731420 () Bool)

(assert (=> b!4731420 (= e!2951177 (getKeysList!966 (toList!5962 (extractMap!2062 lt!1894416))))))

(declare-fun b!4731421 () Bool)

(assert (=> b!4731421 (= e!2951179 (contains!16261 (keys!19013 (extractMap!2062 lt!1894416)) key!4653))))

(declare-fun b!4731422 () Bool)

(declare-fun Unit!131524 () Unit!131503)

(assert (=> b!4731422 (= e!2951181 Unit!131524)))

(declare-fun b!4731423 () Bool)

(assert (=> b!4731423 (= e!2951180 e!2951181)))

(declare-fun c!808044 () Bool)

(assert (=> b!4731423 (= c!808044 call!330919)))

(declare-fun d!1509050 () Bool)

(assert (=> d!1509050 e!2951176))

(declare-fun res!2003159 () Bool)

(assert (=> d!1509050 (=> res!2003159 e!2951176)))

(assert (=> d!1509050 (= res!2003159 e!2951178)))

(declare-fun res!2003160 () Bool)

(assert (=> d!1509050 (=> (not res!2003160) (not e!2951178))))

(declare-fun lt!1894499 () Bool)

(assert (=> d!1509050 (= res!2003160 (not lt!1894499))))

(declare-fun lt!1894501 () Bool)

(assert (=> d!1509050 (= lt!1894499 lt!1894501)))

(declare-fun lt!1894498 () Unit!131503)

(assert (=> d!1509050 (= lt!1894498 e!2951180)))

(assert (=> d!1509050 (= c!808045 lt!1894501)))

(assert (=> d!1509050 (= lt!1894501 (containsKey!3416 (toList!5962 (extractMap!2062 lt!1894416)) key!4653))))

(assert (=> d!1509050 (= (contains!16258 (extractMap!2062 lt!1894416) key!4653) lt!1894499)))

(declare-fun b!4731415 () Bool)

(assert (=> b!4731415 (= e!2951177 (keys!19013 (extractMap!2062 lt!1894416)))))

(assert (= (and d!1509050 c!808045) b!4731417))

(assert (= (and d!1509050 (not c!808045)) b!4731423))

(assert (= (and b!4731423 c!808044) b!4731416))

(assert (= (and b!4731423 (not c!808044)) b!4731422))

(assert (= (or b!4731417 b!4731423) bm!330914))

(assert (= (and bm!330914 c!808046) b!4731420))

(assert (= (and bm!330914 (not c!808046)) b!4731415))

(assert (= (and d!1509050 res!2003160) b!4731418))

(assert (= (and d!1509050 (not res!2003159)) b!4731419))

(assert (= (and b!4731419 res!2003161) b!4731421))

(assert (=> b!4731415 m!5673819))

(declare-fun m!5673997 () Bool)

(assert (=> b!4731415 m!5673997))

(assert (=> b!4731421 m!5673819))

(assert (=> b!4731421 m!5673997))

(assert (=> b!4731421 m!5673997))

(declare-fun m!5673999 () Bool)

(assert (=> b!4731421 m!5673999))

(declare-fun m!5674001 () Bool)

(assert (=> b!4731416 m!5674001))

(declare-fun m!5674003 () Bool)

(assert (=> b!4731416 m!5674003))

(declare-fun m!5674005 () Bool)

(assert (=> b!4731420 m!5674005))

(declare-fun m!5674007 () Bool)

(assert (=> b!4731419 m!5674007))

(assert (=> b!4731419 m!5674007))

(declare-fun m!5674009 () Bool)

(assert (=> b!4731419 m!5674009))

(declare-fun m!5674011 () Bool)

(assert (=> b!4731417 m!5674011))

(assert (=> b!4731417 m!5674007))

(assert (=> b!4731417 m!5674007))

(assert (=> b!4731417 m!5674009))

(declare-fun m!5674013 () Bool)

(assert (=> b!4731417 m!5674013))

(declare-fun m!5674015 () Bool)

(assert (=> bm!330914 m!5674015))

(assert (=> b!4731418 m!5673819))

(assert (=> b!4731418 m!5673997))

(assert (=> b!4731418 m!5673997))

(assert (=> b!4731418 m!5673999))

(assert (=> d!1509050 m!5674001))

(assert (=> b!4731267 d!1509050))

(declare-fun bs!1120639 () Bool)

(declare-fun d!1509052 () Bool)

(assert (= bs!1120639 (and d!1509052 start!482180)))

(declare-fun lambda!217202 () Int)

(assert (=> bs!1120639 (= lambda!217202 lambda!217184)))

(declare-fun bs!1120640 () Bool)

(assert (= bs!1120640 (and d!1509052 d!1509026)))

(assert (=> bs!1120640 (not (= lambda!217202 lambda!217191))))

(declare-fun bs!1120641 () Bool)

(assert (= bs!1120641 (and d!1509052 d!1509040)))

(assert (=> bs!1120641 (= lambda!217202 lambda!217201)))

(declare-fun lt!1894504 () ListMap!5325)

(assert (=> d!1509052 (invariantList!1527 (toList!5962 lt!1894504))))

(declare-fun e!2951182 () ListMap!5325)

(assert (=> d!1509052 (= lt!1894504 e!2951182)))

(declare-fun c!808047 () Bool)

(assert (=> d!1509052 (= c!808047 ((_ is Cons!52890) lt!1894416))))

(assert (=> d!1509052 (forall!11635 lt!1894416 lambda!217202)))

(assert (=> d!1509052 (= (extractMap!2062 lt!1894416) lt!1894504)))

(declare-fun b!4731424 () Bool)

(assert (=> b!4731424 (= e!2951182 (addToMapMapFromBucket!1466 (_2!30564 (h!59253 lt!1894416)) (extractMap!2062 (t!360290 lt!1894416))))))

(declare-fun b!4731425 () Bool)

(assert (=> b!4731425 (= e!2951182 (ListMap!5326 Nil!52889))))

(assert (= (and d!1509052 c!808047) b!4731424))

(assert (= (and d!1509052 (not c!808047)) b!4731425))

(declare-fun m!5674017 () Bool)

(assert (=> d!1509052 m!5674017))

(declare-fun m!5674019 () Bool)

(assert (=> d!1509052 m!5674019))

(declare-fun m!5674021 () Bool)

(assert (=> b!4731424 m!5674021))

(assert (=> b!4731424 m!5674021))

(declare-fun m!5674023 () Bool)

(assert (=> b!4731424 m!5674023))

(assert (=> b!4731267 d!1509052))

(declare-fun bs!1120642 () Bool)

(declare-fun d!1509054 () Bool)

(assert (= bs!1120642 (and d!1509054 start!482180)))

(declare-fun lambda!217205 () Int)

(assert (=> bs!1120642 (= lambda!217205 lambda!217184)))

(declare-fun bs!1120643 () Bool)

(assert (= bs!1120643 (and d!1509054 d!1509026)))

(assert (=> bs!1120643 (not (= lambda!217205 lambda!217191))))

(declare-fun bs!1120644 () Bool)

(assert (= bs!1120644 (and d!1509054 d!1509040)))

(assert (=> bs!1120644 (= lambda!217205 lambda!217201)))

(declare-fun bs!1120645 () Bool)

(assert (= bs!1120645 (and d!1509054 d!1509052)))

(assert (=> bs!1120645 (= lambda!217205 lambda!217202)))

(assert (=> d!1509054 (contains!16258 (extractMap!2062 (toList!5961 (ListLongMap!4492 lt!1894416))) key!4653)))

(declare-fun lt!1894507 () Unit!131503)

(declare-fun choose!33467 (ListLongMap!4491 K!14240 Hashable!6405) Unit!131503)

(assert (=> d!1509054 (= lt!1894507 (choose!33467 (ListLongMap!4492 lt!1894416) key!4653 hashF!1323))))

(assert (=> d!1509054 (forall!11635 (toList!5961 (ListLongMap!4492 lt!1894416)) lambda!217205)))

(assert (=> d!1509054 (= (lemmaListContainsThenExtractedMapContains!544 (ListLongMap!4492 lt!1894416) key!4653 hashF!1323) lt!1894507)))

(declare-fun bs!1120646 () Bool)

(assert (= bs!1120646 d!1509054))

(declare-fun m!5674025 () Bool)

(assert (=> bs!1120646 m!5674025))

(assert (=> bs!1120646 m!5674025))

(declare-fun m!5674027 () Bool)

(assert (=> bs!1120646 m!5674027))

(declare-fun m!5674029 () Bool)

(assert (=> bs!1120646 m!5674029))

(declare-fun m!5674031 () Bool)

(assert (=> bs!1120646 m!5674031))

(assert (=> b!4731267 d!1509054))

(declare-fun d!1509056 () Bool)

(declare-fun res!2003166 () Bool)

(declare-fun e!2951187 () Bool)

(assert (=> d!1509056 (=> res!2003166 e!2951187)))

(assert (=> d!1509056 (= res!2003166 ((_ is Nil!52890) (toList!5961 lm!2023)))))

(assert (=> d!1509056 (= (forall!11635 (toList!5961 lm!2023) lambda!217184) e!2951187)))

(declare-fun b!4731430 () Bool)

(declare-fun e!2951188 () Bool)

(assert (=> b!4731430 (= e!2951187 e!2951188)))

(declare-fun res!2003167 () Bool)

(assert (=> b!4731430 (=> (not res!2003167) (not e!2951188))))

(declare-fun dynLambda!21849 (Int tuple2!54540) Bool)

(assert (=> b!4731430 (= res!2003167 (dynLambda!21849 lambda!217184 (h!59253 (toList!5961 lm!2023))))))

(declare-fun b!4731431 () Bool)

(assert (=> b!4731431 (= e!2951188 (forall!11635 (t!360290 (toList!5961 lm!2023)) lambda!217184))))

(assert (= (and d!1509056 (not res!2003166)) b!4731430))

(assert (= (and b!4731430 res!2003167) b!4731431))

(declare-fun b_lambda!180565 () Bool)

(assert (=> (not b_lambda!180565) (not b!4731430)))

(declare-fun m!5674033 () Bool)

(assert (=> b!4731430 m!5674033))

(declare-fun m!5674035 () Bool)

(assert (=> b!4731431 m!5674035))

(assert (=> start!482180 d!1509056))

(declare-fun d!1509058 () Bool)

(declare-fun isStrictlySorted!763 (List!53014) Bool)

(assert (=> d!1509058 (= (inv!68114 lm!2023) (isStrictlySorted!763 (toList!5961 lm!2023)))))

(declare-fun bs!1120647 () Bool)

(assert (= bs!1120647 d!1509058))

(declare-fun m!5674037 () Bool)

(assert (=> bs!1120647 m!5674037))

(assert (=> start!482180 d!1509058))

(declare-fun bs!1120690 () Bool)

(declare-fun b!4731548 () Bool)

(assert (= bs!1120690 (and b!4731548 d!1509008)))

(declare-fun lambda!217284 () Int)

(assert (=> bs!1120690 (not (= lambda!217284 lambda!217187))))

(declare-fun bs!1120691 () Bool)

(assert (= bs!1120691 (and b!4731548 d!1509016)))

(assert (=> bs!1120691 (not (= lambda!217284 lambda!217188))))

(assert (=> b!4731548 true))

(declare-fun bs!1120693 () Bool)

(declare-fun b!4731546 () Bool)

(assert (= bs!1120693 (and b!4731546 d!1509008)))

(declare-fun lambda!217285 () Int)

(assert (=> bs!1120693 (not (= lambda!217285 lambda!217187))))

(declare-fun bs!1120694 () Bool)

(assert (= bs!1120694 (and b!4731546 d!1509016)))

(assert (=> bs!1120694 (not (= lambda!217285 lambda!217188))))

(declare-fun bs!1120695 () Bool)

(assert (= bs!1120695 (and b!4731546 b!4731548)))

(assert (=> bs!1120695 (= lambda!217285 lambda!217284)))

(assert (=> b!4731546 true))

(declare-fun lambda!217286 () Int)

(assert (=> bs!1120693 (not (= lambda!217286 lambda!217187))))

(assert (=> bs!1120694 (not (= lambda!217286 lambda!217188))))

(declare-fun lt!1894677 () ListMap!5325)

(assert (=> bs!1120695 (= (= lt!1894677 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) (= lambda!217286 lambda!217284))))

(assert (=> b!4731546 (= (= lt!1894677 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) (= lambda!217286 lambda!217285))))

(assert (=> b!4731546 true))

(declare-fun bs!1120696 () Bool)

(declare-fun d!1509060 () Bool)

(assert (= bs!1120696 (and d!1509060 d!1509016)))

(declare-fun lambda!217287 () Int)

(assert (=> bs!1120696 (not (= lambda!217287 lambda!217188))))

(declare-fun bs!1120697 () Bool)

(assert (= bs!1120697 (and d!1509060 b!4731548)))

(declare-fun lt!1894689 () ListMap!5325)

(assert (=> bs!1120697 (= (= lt!1894689 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) (= lambda!217287 lambda!217284))))

(declare-fun bs!1120698 () Bool)

(assert (= bs!1120698 (and d!1509060 b!4731546)))

(assert (=> bs!1120698 (= (= lt!1894689 lt!1894677) (= lambda!217287 lambda!217286))))

(assert (=> bs!1120698 (= (= lt!1894689 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) (= lambda!217287 lambda!217285))))

(declare-fun bs!1120700 () Bool)

(assert (= bs!1120700 (and d!1509060 d!1509008)))

(assert (=> bs!1120700 (not (= lambda!217287 lambda!217187))))

(assert (=> d!1509060 true))

(declare-fun e!2951263 () Bool)

(assert (=> d!1509060 e!2951263))

(declare-fun res!2003237 () Bool)

(assert (=> d!1509060 (=> (not res!2003237) (not e!2951263))))

(assert (=> d!1509060 (= res!2003237 (forall!11637 (_2!30564 (h!59253 (toList!5961 lm!2023))) lambda!217287))))

(declare-fun e!2951262 () ListMap!5325)

(assert (=> d!1509060 (= lt!1894689 e!2951262)))

(declare-fun c!808065 () Bool)

(assert (=> d!1509060 (= c!808065 ((_ is Nil!52889) (_2!30564 (h!59253 (toList!5961 lm!2023)))))))

(assert (=> d!1509060 (noDuplicateKeys!2036 (_2!30564 (h!59253 (toList!5961 lm!2023))))))

(assert (=> d!1509060 (= (addToMapMapFromBucket!1466 (_2!30564 (h!59253 (toList!5961 lm!2023))) (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) lt!1894689)))

(declare-fun b!4731544 () Bool)

(assert (=> b!4731544 (= e!2951263 (invariantList!1527 (toList!5962 lt!1894689)))))

(declare-fun call!330936 () Bool)

(declare-fun bm!330930 () Bool)

(assert (=> bm!330930 (= call!330936 (forall!11637 (ite c!808065 (toList!5962 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) (_2!30564 (h!59253 (toList!5961 lm!2023)))) (ite c!808065 lambda!217284 lambda!217286)))))

(declare-fun b!4731545 () Bool)

(declare-fun res!2003238 () Bool)

(assert (=> b!4731545 (=> (not res!2003238) (not e!2951263))))

(assert (=> b!4731545 (= res!2003238 (forall!11637 (toList!5962 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) lambda!217287))))

(assert (=> b!4731546 (= e!2951262 lt!1894677)))

(declare-fun lt!1894678 () ListMap!5325)

(declare-fun +!2284 (ListMap!5325 tuple2!54538) ListMap!5325)

(assert (=> b!4731546 (= lt!1894678 (+!2284 (extractMap!2062 (t!360290 (toList!5961 lm!2023))) (h!59252 (_2!30564 (h!59253 (toList!5961 lm!2023))))))))

(assert (=> b!4731546 (= lt!1894677 (addToMapMapFromBucket!1466 (t!360289 (_2!30564 (h!59253 (toList!5961 lm!2023)))) (+!2284 (extractMap!2062 (t!360290 (toList!5961 lm!2023))) (h!59252 (_2!30564 (h!59253 (toList!5961 lm!2023)))))))))

(declare-fun lt!1894672 () Unit!131503)

(declare-fun call!330937 () Unit!131503)

(assert (=> b!4731546 (= lt!1894672 call!330937)))

(assert (=> b!4731546 (forall!11637 (toList!5962 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) lambda!217285)))

(declare-fun lt!1894680 () Unit!131503)

(assert (=> b!4731546 (= lt!1894680 lt!1894672)))

(assert (=> b!4731546 (forall!11637 (toList!5962 lt!1894678) lambda!217286)))

(declare-fun lt!1894679 () Unit!131503)

(declare-fun Unit!131525 () Unit!131503)

(assert (=> b!4731546 (= lt!1894679 Unit!131525)))

(assert (=> b!4731546 (forall!11637 (t!360289 (_2!30564 (h!59253 (toList!5961 lm!2023)))) lambda!217286)))

(declare-fun lt!1894683 () Unit!131503)

(declare-fun Unit!131526 () Unit!131503)

(assert (=> b!4731546 (= lt!1894683 Unit!131526)))

(declare-fun lt!1894671 () Unit!131503)

(declare-fun Unit!131527 () Unit!131503)

(assert (=> b!4731546 (= lt!1894671 Unit!131527)))

(declare-fun lt!1894681 () Unit!131503)

(declare-fun forallContained!3677 (List!53013 Int tuple2!54538) Unit!131503)

(assert (=> b!4731546 (= lt!1894681 (forallContained!3677 (toList!5962 lt!1894678) lambda!217286 (h!59252 (_2!30564 (h!59253 (toList!5961 lm!2023))))))))

(assert (=> b!4731546 (contains!16258 lt!1894678 (_1!30563 (h!59252 (_2!30564 (h!59253 (toList!5961 lm!2023))))))))

(declare-fun lt!1894687 () Unit!131503)

(declare-fun Unit!131528 () Unit!131503)

(assert (=> b!4731546 (= lt!1894687 Unit!131528)))

(assert (=> b!4731546 (contains!16258 lt!1894677 (_1!30563 (h!59252 (_2!30564 (h!59253 (toList!5961 lm!2023))))))))

(declare-fun lt!1894684 () Unit!131503)

(declare-fun Unit!131529 () Unit!131503)

(assert (=> b!4731546 (= lt!1894684 Unit!131529)))

(declare-fun call!330935 () Bool)

(assert (=> b!4731546 call!330935))

(declare-fun lt!1894669 () Unit!131503)

(declare-fun Unit!131530 () Unit!131503)

(assert (=> b!4731546 (= lt!1894669 Unit!131530)))

(assert (=> b!4731546 (forall!11637 (toList!5962 lt!1894678) lambda!217286)))

(declare-fun lt!1894674 () Unit!131503)

(declare-fun Unit!131531 () Unit!131503)

(assert (=> b!4731546 (= lt!1894674 Unit!131531)))

(declare-fun lt!1894673 () Unit!131503)

(declare-fun Unit!131532 () Unit!131503)

(assert (=> b!4731546 (= lt!1894673 Unit!131532)))

(declare-fun lt!1894676 () Unit!131503)

(declare-fun addForallContainsKeyThenBeforeAdding!811 (ListMap!5325 ListMap!5325 K!14240 V!14486) Unit!131503)

(assert (=> b!4731546 (= lt!1894676 (addForallContainsKeyThenBeforeAdding!811 (extractMap!2062 (t!360290 (toList!5961 lm!2023))) lt!1894677 (_1!30563 (h!59252 (_2!30564 (h!59253 (toList!5961 lm!2023))))) (_2!30563 (h!59252 (_2!30564 (h!59253 (toList!5961 lm!2023)))))))))

(assert (=> b!4731546 (forall!11637 (toList!5962 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) lambda!217286)))

(declare-fun lt!1894688 () Unit!131503)

(assert (=> b!4731546 (= lt!1894688 lt!1894676)))

(assert (=> b!4731546 (forall!11637 (toList!5962 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) lambda!217286)))

(declare-fun lt!1894675 () Unit!131503)

(declare-fun Unit!131533 () Unit!131503)

(assert (=> b!4731546 (= lt!1894675 Unit!131533)))

(declare-fun res!2003239 () Bool)

(assert (=> b!4731546 (= res!2003239 call!330936)))

(declare-fun e!2951261 () Bool)

(assert (=> b!4731546 (=> (not res!2003239) (not e!2951261))))

(assert (=> b!4731546 e!2951261))

(declare-fun lt!1894686 () Unit!131503)

(declare-fun Unit!131534 () Unit!131503)

(assert (=> b!4731546 (= lt!1894686 Unit!131534)))

(declare-fun b!4731547 () Bool)

(assert (=> b!4731547 (= e!2951261 (forall!11637 (toList!5962 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) lambda!217286))))

(assert (=> b!4731548 (= e!2951262 (extractMap!2062 (t!360290 (toList!5961 lm!2023))))))

(declare-fun lt!1894682 () Unit!131503)

(assert (=> b!4731548 (= lt!1894682 call!330937)))

(assert (=> b!4731548 call!330936))

(declare-fun lt!1894670 () Unit!131503)

(assert (=> b!4731548 (= lt!1894670 lt!1894682)))

(assert (=> b!4731548 call!330935))

(declare-fun lt!1894685 () Unit!131503)

(declare-fun Unit!131535 () Unit!131503)

(assert (=> b!4731548 (= lt!1894685 Unit!131535)))

(declare-fun bm!330931 () Bool)

(assert (=> bm!330931 (= call!330935 (forall!11637 (ite c!808065 (toList!5962 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))) (_2!30564 (h!59253 (toList!5961 lm!2023)))) (ite c!808065 lambda!217284 lambda!217286)))))

(declare-fun bm!330932 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!812 (ListMap!5325) Unit!131503)

(assert (=> bm!330932 (= call!330937 (lemmaContainsAllItsOwnKeys!812 (extractMap!2062 (t!360290 (toList!5961 lm!2023)))))))

(assert (= (and d!1509060 c!808065) b!4731548))

(assert (= (and d!1509060 (not c!808065)) b!4731546))

(assert (= (and b!4731546 res!2003239) b!4731547))

(assert (= (or b!4731548 b!4731546) bm!330932))

(assert (= (or b!4731548 b!4731546) bm!330931))

(assert (= (or b!4731548 b!4731546) bm!330930))

(assert (= (and d!1509060 res!2003237) b!4731545))

(assert (= (and b!4731545 res!2003238) b!4731544))

(declare-fun m!5674181 () Bool)

(assert (=> bm!330931 m!5674181))

(declare-fun m!5674183 () Bool)

(assert (=> b!4731547 m!5674183))

(declare-fun m!5674185 () Bool)

(assert (=> b!4731544 m!5674185))

(declare-fun m!5674187 () Bool)

(assert (=> d!1509060 m!5674187))

(declare-fun m!5674189 () Bool)

(assert (=> d!1509060 m!5674189))

(assert (=> bm!330932 m!5673811))

(declare-fun m!5674191 () Bool)

(assert (=> bm!330932 m!5674191))

(assert (=> bm!330930 m!5674181))

(declare-fun m!5674193 () Bool)

(assert (=> b!4731545 m!5674193))

(declare-fun m!5674195 () Bool)

(assert (=> b!4731546 m!5674195))

(assert (=> b!4731546 m!5674183))

(declare-fun m!5674197 () Bool)

(assert (=> b!4731546 m!5674197))

(declare-fun m!5674199 () Bool)

(assert (=> b!4731546 m!5674199))

(assert (=> b!4731546 m!5673811))

(declare-fun m!5674201 () Bool)

(assert (=> b!4731546 m!5674201))

(declare-fun m!5674203 () Bool)

(assert (=> b!4731546 m!5674203))

(declare-fun m!5674205 () Bool)

(assert (=> b!4731546 m!5674205))

(declare-fun m!5674207 () Bool)

(assert (=> b!4731546 m!5674207))

(assert (=> b!4731546 m!5674205))

(assert (=> b!4731546 m!5673811))

(declare-fun m!5674209 () Bool)

(assert (=> b!4731546 m!5674209))

(assert (=> b!4731546 m!5674183))

(assert (=> b!4731546 m!5674209))

(declare-fun m!5674211 () Bool)

(assert (=> b!4731546 m!5674211))

(assert (=> b!4731276 d!1509060))

(declare-fun bs!1120702 () Bool)

(declare-fun d!1509120 () Bool)

(assert (= bs!1120702 (and d!1509120 d!1509040)))

(declare-fun lambda!217288 () Int)

(assert (=> bs!1120702 (= lambda!217288 lambda!217201)))

(declare-fun bs!1120703 () Bool)

(assert (= bs!1120703 (and d!1509120 d!1509054)))

(assert (=> bs!1120703 (= lambda!217288 lambda!217205)))

(declare-fun bs!1120704 () Bool)

(assert (= bs!1120704 (and d!1509120 start!482180)))

(assert (=> bs!1120704 (= lambda!217288 lambda!217184)))

(declare-fun bs!1120705 () Bool)

(assert (= bs!1120705 (and d!1509120 d!1509052)))

(assert (=> bs!1120705 (= lambda!217288 lambda!217202)))

(declare-fun bs!1120706 () Bool)

(assert (= bs!1120706 (and d!1509120 d!1509026)))

(assert (=> bs!1120706 (not (= lambda!217288 lambda!217191))))

(declare-fun lt!1894691 () ListMap!5325)

(assert (=> d!1509120 (invariantList!1527 (toList!5962 lt!1894691))))

(declare-fun e!2951273 () ListMap!5325)

(assert (=> d!1509120 (= lt!1894691 e!2951273)))

(declare-fun c!808068 () Bool)

(assert (=> d!1509120 (= c!808068 ((_ is Cons!52890) (t!360290 (toList!5961 lm!2023))))))

(assert (=> d!1509120 (forall!11635 (t!360290 (toList!5961 lm!2023)) lambda!217288)))

(assert (=> d!1509120 (= (extractMap!2062 (t!360290 (toList!5961 lm!2023))) lt!1894691)))

(declare-fun b!4731566 () Bool)

(assert (=> b!4731566 (= e!2951273 (addToMapMapFromBucket!1466 (_2!30564 (h!59253 (t!360290 (toList!5961 lm!2023)))) (extractMap!2062 (t!360290 (t!360290 (toList!5961 lm!2023))))))))

(declare-fun b!4731567 () Bool)

(assert (=> b!4731567 (= e!2951273 (ListMap!5326 Nil!52889))))

(assert (= (and d!1509120 c!808068) b!4731566))

(assert (= (and d!1509120 (not c!808068)) b!4731567))

(declare-fun m!5674213 () Bool)

(assert (=> d!1509120 m!5674213))

(declare-fun m!5674215 () Bool)

(assert (=> d!1509120 m!5674215))

(declare-fun m!5674217 () Bool)

(assert (=> b!4731566 m!5674217))

(assert (=> b!4731566 m!5674217))

(declare-fun m!5674219 () Bool)

(assert (=> b!4731566 m!5674219))

(assert (=> b!4731276 d!1509120))

(declare-fun b!4731584 () Bool)

(declare-fun e!2951285 () Bool)

(declare-fun lt!1894694 () Option!12399)

(declare-fun contains!16262 (List!53013 tuple2!54538) Bool)

(declare-fun get!17754 (Option!12399) tuple2!54538)

(assert (=> b!4731584 (= e!2951285 (contains!16262 lt!1894419 (get!17754 lt!1894694)))))

(declare-fun b!4731585 () Bool)

(declare-fun e!2951287 () Option!12399)

(assert (=> b!4731585 (= e!2951287 (Some!12398 (h!59252 lt!1894419)))))

(declare-fun d!1509122 () Bool)

(declare-fun e!2951286 () Bool)

(assert (=> d!1509122 e!2951286))

(declare-fun res!2003250 () Bool)

(assert (=> d!1509122 (=> res!2003250 e!2951286)))

(declare-fun e!2951288 () Bool)

(assert (=> d!1509122 (= res!2003250 e!2951288)))

(declare-fun res!2003251 () Bool)

(assert (=> d!1509122 (=> (not res!2003251) (not e!2951288))))

(declare-fun isEmpty!29203 (Option!12399) Bool)

(assert (=> d!1509122 (= res!2003251 (isEmpty!29203 lt!1894694))))

(assert (=> d!1509122 (= lt!1894694 e!2951287)))

(declare-fun c!808073 () Bool)

(assert (=> d!1509122 (= c!808073 (and ((_ is Cons!52889) lt!1894419) (= (_1!30563 (h!59252 lt!1894419)) key!4653)))))

(assert (=> d!1509122 (noDuplicateKeys!2036 lt!1894419)))

(assert (=> d!1509122 (= (getPair!576 lt!1894419 key!4653) lt!1894694)))

(declare-fun b!4731586 () Bool)

(assert (=> b!4731586 (= e!2951288 (not (containsKey!3413 lt!1894419 key!4653)))))

(declare-fun b!4731587 () Bool)

(declare-fun res!2003248 () Bool)

(assert (=> b!4731587 (=> (not res!2003248) (not e!2951285))))

(assert (=> b!4731587 (= res!2003248 (= (_1!30563 (get!17754 lt!1894694)) key!4653))))

(declare-fun b!4731588 () Bool)

(declare-fun e!2951284 () Option!12399)

(assert (=> b!4731588 (= e!2951287 e!2951284)))

(declare-fun c!808074 () Bool)

(assert (=> b!4731588 (= c!808074 ((_ is Cons!52889) lt!1894419))))

(declare-fun b!4731589 () Bool)

(assert (=> b!4731589 (= e!2951286 e!2951285)))

(declare-fun res!2003249 () Bool)

(assert (=> b!4731589 (=> (not res!2003249) (not e!2951285))))

(assert (=> b!4731589 (= res!2003249 (isDefined!9653 lt!1894694))))

(declare-fun b!4731590 () Bool)

(assert (=> b!4731590 (= e!2951284 (getPair!576 (t!360289 lt!1894419) key!4653))))

(declare-fun b!4731591 () Bool)

(assert (=> b!4731591 (= e!2951284 None!12398)))

(assert (= (and d!1509122 c!808073) b!4731585))

(assert (= (and d!1509122 (not c!808073)) b!4731588))

(assert (= (and b!4731588 c!808074) b!4731590))

(assert (= (and b!4731588 (not c!808074)) b!4731591))

(assert (= (and d!1509122 res!2003251) b!4731586))

(assert (= (and d!1509122 (not res!2003250)) b!4731589))

(assert (= (and b!4731589 res!2003249) b!4731587))

(assert (= (and b!4731587 res!2003248) b!4731584))

(declare-fun m!5674221 () Bool)

(assert (=> b!4731586 m!5674221))

(declare-fun m!5674223 () Bool)

(assert (=> b!4731590 m!5674223))

(declare-fun m!5674225 () Bool)

(assert (=> b!4731584 m!5674225))

(assert (=> b!4731584 m!5674225))

(declare-fun m!5674227 () Bool)

(assert (=> b!4731584 m!5674227))

(assert (=> b!4731587 m!5674225))

(declare-fun m!5674229 () Bool)

(assert (=> b!4731589 m!5674229))

(declare-fun m!5674231 () Bool)

(assert (=> d!1509122 m!5674231))

(declare-fun m!5674233 () Bool)

(assert (=> d!1509122 m!5674233))

(assert (=> b!4731265 d!1509122))

(declare-fun d!1509124 () Bool)

(declare-fun e!2951294 () Bool)

(assert (=> d!1509124 e!2951294))

(declare-fun res!2003254 () Bool)

(assert (=> d!1509124 (=> res!2003254 e!2951294)))

(declare-fun lt!1894705 () Bool)

(assert (=> d!1509124 (= res!2003254 (not lt!1894705))))

(declare-fun lt!1894704 () Bool)

(assert (=> d!1509124 (= lt!1894705 lt!1894704)))

(declare-fun lt!1894703 () Unit!131503)

(declare-fun e!2951293 () Unit!131503)

(assert (=> d!1509124 (= lt!1894703 e!2951293)))

(declare-fun c!808077 () Bool)

(assert (=> d!1509124 (= c!808077 lt!1894704)))

(declare-fun containsKey!3417 (List!53014 (_ BitVec 64)) Bool)

(assert (=> d!1509124 (= lt!1894704 (containsKey!3417 (toList!5961 lm!2023) lt!1894409))))

(assert (=> d!1509124 (= (contains!16257 lm!2023 lt!1894409) lt!1894705)))

(declare-fun b!4731598 () Bool)

(declare-fun lt!1894706 () Unit!131503)

(assert (=> b!4731598 (= e!2951293 lt!1894706)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1876 (List!53014 (_ BitVec 64)) Unit!131503)

(assert (=> b!4731598 (= lt!1894706 (lemmaContainsKeyImpliesGetValueByKeyDefined!1876 (toList!5961 lm!2023) lt!1894409))))

(declare-datatypes ((Option!12403 0))(
  ( (None!12402) (Some!12402 (v!47023 List!53013)) )
))
(declare-fun isDefined!9657 (Option!12403) Bool)

(declare-fun getValueByKey!1985 (List!53014 (_ BitVec 64)) Option!12403)

(assert (=> b!4731598 (isDefined!9657 (getValueByKey!1985 (toList!5961 lm!2023) lt!1894409))))

(declare-fun b!4731599 () Bool)

(declare-fun Unit!131536 () Unit!131503)

(assert (=> b!4731599 (= e!2951293 Unit!131536)))

(declare-fun b!4731600 () Bool)

(assert (=> b!4731600 (= e!2951294 (isDefined!9657 (getValueByKey!1985 (toList!5961 lm!2023) lt!1894409)))))

(assert (= (and d!1509124 c!808077) b!4731598))

(assert (= (and d!1509124 (not c!808077)) b!4731599))

(assert (= (and d!1509124 (not res!2003254)) b!4731600))

(declare-fun m!5674235 () Bool)

(assert (=> d!1509124 m!5674235))

(declare-fun m!5674237 () Bool)

(assert (=> b!4731598 m!5674237))

(declare-fun m!5674239 () Bool)

(assert (=> b!4731598 m!5674239))

(assert (=> b!4731598 m!5674239))

(declare-fun m!5674241 () Bool)

(assert (=> b!4731598 m!5674241))

(assert (=> b!4731600 m!5674239))

(assert (=> b!4731600 m!5674239))

(assert (=> b!4731600 m!5674241))

(assert (=> b!4731265 d!1509124))

(declare-fun d!1509126 () Bool)

(assert (=> d!1509126 (= (isDefined!9653 (getPair!576 lt!1894419 key!4653)) (not (isEmpty!29203 (getPair!576 lt!1894419 key!4653))))))

(declare-fun bs!1120707 () Bool)

(assert (= bs!1120707 d!1509126))

(assert (=> bs!1120707 m!5673835))

(declare-fun m!5674243 () Bool)

(assert (=> bs!1120707 m!5674243))

(assert (=> b!4731265 d!1509126))

(declare-fun bs!1120708 () Bool)

(declare-fun d!1509128 () Bool)

(assert (= bs!1120708 (and d!1509128 d!1509120)))

(declare-fun lambda!217291 () Int)

(assert (=> bs!1120708 (= lambda!217291 lambda!217288)))

(declare-fun bs!1120709 () Bool)

(assert (= bs!1120709 (and d!1509128 d!1509040)))

(assert (=> bs!1120709 (= lambda!217291 lambda!217201)))

(declare-fun bs!1120710 () Bool)

(assert (= bs!1120710 (and d!1509128 d!1509054)))

(assert (=> bs!1120710 (= lambda!217291 lambda!217205)))

(declare-fun bs!1120711 () Bool)

(assert (= bs!1120711 (and d!1509128 start!482180)))

(assert (=> bs!1120711 (= lambda!217291 lambda!217184)))

(declare-fun bs!1120712 () Bool)

(assert (= bs!1120712 (and d!1509128 d!1509052)))

(assert (=> bs!1120712 (= lambda!217291 lambda!217202)))

(declare-fun bs!1120713 () Bool)

(assert (= bs!1120713 (and d!1509128 d!1509026)))

(assert (=> bs!1120713 (not (= lambda!217291 lambda!217191))))

(assert (=> d!1509128 (contains!16257 lm!2023 (hash!4420 hashF!1323 key!4653))))

(declare-fun lt!1894709 () Unit!131503)

(declare-fun choose!33468 (ListLongMap!4491 K!14240 Hashable!6405) Unit!131503)

(assert (=> d!1509128 (= lt!1894709 (choose!33468 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509128 (forall!11635 (toList!5961 lm!2023) lambda!217291)))

(assert (=> d!1509128 (= (lemmaInGenMapThenLongMapContainsHash!782 lm!2023 key!4653 hashF!1323) lt!1894709)))

(declare-fun bs!1120714 () Bool)

(assert (= bs!1120714 d!1509128))

(assert (=> bs!1120714 m!5673863))

(assert (=> bs!1120714 m!5673863))

(declare-fun m!5674245 () Bool)

(assert (=> bs!1120714 m!5674245))

(declare-fun m!5674247 () Bool)

(assert (=> bs!1120714 m!5674247))

(declare-fun m!5674249 () Bool)

(assert (=> bs!1120714 m!5674249))

(assert (=> b!4731265 d!1509128))

(declare-fun bs!1120715 () Bool)

(declare-fun d!1509130 () Bool)

(assert (= bs!1120715 (and d!1509130 d!1509128)))

(declare-fun lambda!217298 () Int)

(assert (=> bs!1120715 (= lambda!217298 lambda!217291)))

(declare-fun bs!1120716 () Bool)

(assert (= bs!1120716 (and d!1509130 d!1509120)))

(assert (=> bs!1120716 (= lambda!217298 lambda!217288)))

(declare-fun bs!1120717 () Bool)

(assert (= bs!1120717 (and d!1509130 d!1509040)))

(assert (=> bs!1120717 (= lambda!217298 lambda!217201)))

(declare-fun bs!1120718 () Bool)

(assert (= bs!1120718 (and d!1509130 d!1509054)))

(assert (=> bs!1120718 (= lambda!217298 lambda!217205)))

(declare-fun bs!1120719 () Bool)

(assert (= bs!1120719 (and d!1509130 start!482180)))

(assert (=> bs!1120719 (= lambda!217298 lambda!217184)))

(declare-fun bs!1120720 () Bool)

(assert (= bs!1120720 (and d!1509130 d!1509052)))

(assert (=> bs!1120720 (= lambda!217298 lambda!217202)))

(declare-fun bs!1120721 () Bool)

(assert (= bs!1120721 (and d!1509130 d!1509026)))

(assert (=> bs!1120721 (not (= lambda!217298 lambda!217191))))

(declare-fun b!4731612 () Bool)

(declare-fun e!2951300 () Bool)

(declare-fun lt!1894731 () List!53013)

(declare-fun lt!1894729 () (_ BitVec 64))

(assert (=> b!4731612 (= e!2951300 (= (getValueByKey!1985 (toList!5961 lm!2023) lt!1894729) (Some!12402 lt!1894731)))))

(declare-fun b!4731611 () Bool)

(declare-fun e!2951299 () Bool)

(assert (=> b!4731611 (= e!2951299 (isDefined!9653 (getPair!576 (apply!12461 lm!2023 (hash!4420 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1894728 () Unit!131503)

(assert (=> b!4731611 (= lt!1894728 (forallContained!3675 (toList!5961 lm!2023) lambda!217298 (tuple2!54541 (hash!4420 hashF!1323 key!4653) (apply!12461 lm!2023 (hash!4420 hashF!1323 key!4653)))))))

(declare-fun lt!1894733 () Unit!131503)

(declare-fun lt!1894726 () Unit!131503)

(assert (=> b!4731611 (= lt!1894733 lt!1894726)))

(assert (=> b!4731611 (contains!16256 (toList!5961 lm!2023) (tuple2!54541 lt!1894729 lt!1894731))))

(assert (=> b!4731611 (= lt!1894726 (lemmaGetValueImpliesTupleContained!381 lm!2023 lt!1894729 lt!1894731))))

(assert (=> b!4731611 e!2951300))

(declare-fun res!2003264 () Bool)

(assert (=> b!4731611 (=> (not res!2003264) (not e!2951300))))

(assert (=> b!4731611 (= res!2003264 (contains!16257 lm!2023 lt!1894729))))

(assert (=> b!4731611 (= lt!1894731 (apply!12461 lm!2023 (hash!4420 hashF!1323 key!4653)))))

(assert (=> b!4731611 (= lt!1894729 (hash!4420 hashF!1323 key!4653))))

(declare-fun lt!1894730 () Unit!131503)

(declare-fun lt!1894727 () Unit!131503)

(assert (=> b!4731611 (= lt!1894730 lt!1894727)))

(assert (=> b!4731611 (contains!16257 lm!2023 (hash!4420 hashF!1323 key!4653))))

(assert (=> b!4731611 (= lt!1894727 (lemmaInGenMapThenLongMapContainsHash!782 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4731610 () Bool)

(declare-fun res!2003265 () Bool)

(assert (=> b!4731610 (=> (not res!2003265) (not e!2951299))))

(assert (=> b!4731610 (= res!2003265 (contains!16258 (extractMap!2062 (toList!5961 lm!2023)) key!4653))))

(assert (=> d!1509130 e!2951299))

(declare-fun res!2003263 () Bool)

(assert (=> d!1509130 (=> (not res!2003263) (not e!2951299))))

(assert (=> d!1509130 (= res!2003263 (forall!11635 (toList!5961 lm!2023) lambda!217298))))

(declare-fun lt!1894732 () Unit!131503)

(declare-fun choose!33469 (ListLongMap!4491 K!14240 Hashable!6405) Unit!131503)

(assert (=> d!1509130 (= lt!1894732 (choose!33469 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1509130 (forall!11635 (toList!5961 lm!2023) lambda!217298)))

(assert (=> d!1509130 (= (lemmaInGenMapThenGetPairDefined!372 lm!2023 key!4653 hashF!1323) lt!1894732)))

(declare-fun b!4731609 () Bool)

(declare-fun res!2003266 () Bool)

(assert (=> b!4731609 (=> (not res!2003266) (not e!2951299))))

(assert (=> b!4731609 (= res!2003266 (allKeysSameHashInMap!1950 lm!2023 hashF!1323))))

(assert (= (and d!1509130 res!2003263) b!4731609))

(assert (= (and b!4731609 res!2003266) b!4731610))

(assert (= (and b!4731610 res!2003265) b!4731611))

(assert (= (and b!4731611 res!2003264) b!4731612))

(assert (=> b!4731610 m!5673829))

(assert (=> b!4731610 m!5673829))

(declare-fun m!5674251 () Bool)

(assert (=> b!4731610 m!5674251))

(declare-fun m!5674253 () Bool)

(assert (=> d!1509130 m!5674253))

(declare-fun m!5674255 () Bool)

(assert (=> d!1509130 m!5674255))

(assert (=> d!1509130 m!5674253))

(declare-fun m!5674257 () Bool)

(assert (=> b!4731612 m!5674257))

(assert (=> b!4731609 m!5673869))

(declare-fun m!5674259 () Bool)

(assert (=> b!4731611 m!5674259))

(assert (=> b!4731611 m!5673863))

(declare-fun m!5674261 () Bool)

(assert (=> b!4731611 m!5674261))

(declare-fun m!5674263 () Bool)

(assert (=> b!4731611 m!5674263))

(declare-fun m!5674265 () Bool)

(assert (=> b!4731611 m!5674265))

(assert (=> b!4731611 m!5673863))

(declare-fun m!5674267 () Bool)

(assert (=> b!4731611 m!5674267))

(assert (=> b!4731611 m!5673839))

(assert (=> b!4731611 m!5673863))

(assert (=> b!4731611 m!5674245))

(assert (=> b!4731611 m!5674267))

(assert (=> b!4731611 m!5674261))

(declare-fun m!5674269 () Bool)

(assert (=> b!4731611 m!5674269))

(declare-fun m!5674271 () Bool)

(assert (=> b!4731611 m!5674271))

(assert (=> b!4731265 d!1509130))

(declare-fun d!1509132 () Bool)

(assert (=> d!1509132 (contains!16256 (toList!5961 lm!2023) (tuple2!54541 lt!1894409 lt!1894419))))

(declare-fun lt!1894736 () Unit!131503)

(declare-fun choose!33470 (ListLongMap!4491 (_ BitVec 64) List!53013) Unit!131503)

(assert (=> d!1509132 (= lt!1894736 (choose!33470 lm!2023 lt!1894409 lt!1894419))))

(assert (=> d!1509132 (contains!16257 lm!2023 lt!1894409)))

(assert (=> d!1509132 (= (lemmaGetValueImpliesTupleContained!381 lm!2023 lt!1894409 lt!1894419) lt!1894736)))

(declare-fun bs!1120722 () Bool)

(assert (= bs!1120722 d!1509132))

(declare-fun m!5674273 () Bool)

(assert (=> bs!1120722 m!5674273))

(declare-fun m!5674275 () Bool)

(assert (=> bs!1120722 m!5674275))

(assert (=> bs!1120722 m!5673851))

(assert (=> b!4731265 d!1509132))

(declare-fun d!1509134 () Bool)

(assert (=> d!1509134 (containsKey!3413 oldBucket!34 key!4653)))

(declare-fun lt!1894739 () Unit!131503)

(declare-fun choose!33471 (List!53013 K!14240 Hashable!6405) Unit!131503)

(assert (=> d!1509134 (= lt!1894739 (choose!33471 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1509134 (noDuplicateKeys!2036 oldBucket!34)))

(assert (=> d!1509134 (= (lemmaGetPairDefinedThenContainsKey!320 oldBucket!34 key!4653 hashF!1323) lt!1894739)))

(declare-fun bs!1120723 () Bool)

(assert (= bs!1120723 d!1509134))

(assert (=> bs!1120723 m!5673849))

(declare-fun m!5674277 () Bool)

(assert (=> bs!1120723 m!5674277))

(assert (=> bs!1120723 m!5673809))

(assert (=> b!4731265 d!1509134))

(declare-fun d!1509136 () Bool)

(declare-fun res!2003271 () Bool)

(declare-fun e!2951305 () Bool)

(assert (=> d!1509136 (=> res!2003271 e!2951305)))

(assert (=> d!1509136 (= res!2003271 (and ((_ is Cons!52889) (t!360289 oldBucket!34)) (= (_1!30563 (h!59252 (t!360289 oldBucket!34))) key!4653)))))

(assert (=> d!1509136 (= (containsKey!3413 (t!360289 oldBucket!34) key!4653) e!2951305)))

(declare-fun b!4731618 () Bool)

(declare-fun e!2951306 () Bool)

(assert (=> b!4731618 (= e!2951305 e!2951306)))

(declare-fun res!2003272 () Bool)

(assert (=> b!4731618 (=> (not res!2003272) (not e!2951306))))

(assert (=> b!4731618 (= res!2003272 ((_ is Cons!52889) (t!360289 oldBucket!34)))))

(declare-fun b!4731619 () Bool)

(assert (=> b!4731619 (= e!2951306 (containsKey!3413 (t!360289 (t!360289 oldBucket!34)) key!4653))))

(assert (= (and d!1509136 (not res!2003271)) b!4731618))

(assert (= (and b!4731618 res!2003272) b!4731619))

(declare-fun m!5674279 () Bool)

(assert (=> b!4731619 m!5674279))

(assert (=> b!4731265 d!1509136))

(declare-fun d!1509138 () Bool)

(declare-fun lt!1894742 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9427 (List!53014) (InoxSet tuple2!54540))

(assert (=> d!1509138 (= lt!1894742 (select (content!9427 (toList!5961 lm!2023)) lt!1894411))))

(declare-fun e!2951312 () Bool)

(assert (=> d!1509138 (= lt!1894742 e!2951312)))

(declare-fun res!2003277 () Bool)

(assert (=> d!1509138 (=> (not res!2003277) (not e!2951312))))

(assert (=> d!1509138 (= res!2003277 ((_ is Cons!52890) (toList!5961 lm!2023)))))

(assert (=> d!1509138 (= (contains!16256 (toList!5961 lm!2023) lt!1894411) lt!1894742)))

(declare-fun b!4731624 () Bool)

(declare-fun e!2951311 () Bool)

(assert (=> b!4731624 (= e!2951312 e!2951311)))

(declare-fun res!2003278 () Bool)

(assert (=> b!4731624 (=> res!2003278 e!2951311)))

(assert (=> b!4731624 (= res!2003278 (= (h!59253 (toList!5961 lm!2023)) lt!1894411))))

(declare-fun b!4731625 () Bool)

(assert (=> b!4731625 (= e!2951311 (contains!16256 (t!360290 (toList!5961 lm!2023)) lt!1894411))))

(assert (= (and d!1509138 res!2003277) b!4731624))

(assert (= (and b!4731624 (not res!2003278)) b!4731625))

(declare-fun m!5674281 () Bool)

(assert (=> d!1509138 m!5674281))

(declare-fun m!5674283 () Bool)

(assert (=> d!1509138 m!5674283))

(declare-fun m!5674285 () Bool)

(assert (=> b!4731625 m!5674285))

(assert (=> b!4731265 d!1509138))

(declare-fun d!1509140 () Bool)

(declare-fun res!2003279 () Bool)

(declare-fun e!2951313 () Bool)

(assert (=> d!1509140 (=> res!2003279 e!2951313)))

(assert (=> d!1509140 (= res!2003279 (and ((_ is Cons!52889) oldBucket!34) (= (_1!30563 (h!59252 oldBucket!34)) key!4653)))))

(assert (=> d!1509140 (= (containsKey!3413 oldBucket!34 key!4653) e!2951313)))

(declare-fun b!4731626 () Bool)

(declare-fun e!2951314 () Bool)

(assert (=> b!4731626 (= e!2951313 e!2951314)))

(declare-fun res!2003280 () Bool)

(assert (=> b!4731626 (=> (not res!2003280) (not e!2951314))))

(assert (=> b!4731626 (= res!2003280 ((_ is Cons!52889) oldBucket!34))))

(declare-fun b!4731627 () Bool)

(assert (=> b!4731627 (= e!2951314 (containsKey!3413 (t!360289 oldBucket!34) key!4653))))

(assert (= (and d!1509140 (not res!2003279)) b!4731626))

(assert (= (and b!4731626 res!2003280) b!4731627))

(assert (=> b!4731627 m!5673843))

(assert (=> b!4731265 d!1509140))

(declare-fun d!1509142 () Bool)

(declare-fun get!17755 (Option!12403) List!53013)

(assert (=> d!1509142 (= (apply!12461 lm!2023 lt!1894409) (get!17755 (getValueByKey!1985 (toList!5961 lm!2023) lt!1894409)))))

(declare-fun bs!1120724 () Bool)

(assert (= bs!1120724 d!1509142))

(assert (=> bs!1120724 m!5674239))

(assert (=> bs!1120724 m!5674239))

(declare-fun m!5674287 () Bool)

(assert (=> bs!1120724 m!5674287))

(assert (=> b!4731265 d!1509142))

(declare-fun d!1509144 () Bool)

(assert (=> d!1509144 (dynLambda!21849 lambda!217184 lt!1894411)))

(declare-fun lt!1894745 () Unit!131503)

(declare-fun choose!33472 (List!53014 Int tuple2!54540) Unit!131503)

(assert (=> d!1509144 (= lt!1894745 (choose!33472 (toList!5961 lm!2023) lambda!217184 lt!1894411))))

(declare-fun e!2951317 () Bool)

(assert (=> d!1509144 e!2951317))

(declare-fun res!2003283 () Bool)

(assert (=> d!1509144 (=> (not res!2003283) (not e!2951317))))

(assert (=> d!1509144 (= res!2003283 (forall!11635 (toList!5961 lm!2023) lambda!217184))))

(assert (=> d!1509144 (= (forallContained!3675 (toList!5961 lm!2023) lambda!217184 lt!1894411) lt!1894745)))

(declare-fun b!4731630 () Bool)

(assert (=> b!4731630 (= e!2951317 (contains!16256 (toList!5961 lm!2023) lt!1894411))))

(assert (= (and d!1509144 res!2003283) b!4731630))

(declare-fun b_lambda!180575 () Bool)

(assert (=> (not b_lambda!180575) (not d!1509144)))

(declare-fun m!5674289 () Bool)

(assert (=> d!1509144 m!5674289))

(declare-fun m!5674291 () Bool)

(assert (=> d!1509144 m!5674291))

(assert (=> d!1509144 m!5673865))

(assert (=> b!4731630 m!5673847))

(assert (=> b!4731265 d!1509144))

(declare-fun tp!1348840 () Bool)

(declare-fun e!2951320 () Bool)

(declare-fun b!4731635 () Bool)

(assert (=> b!4731635 (= e!2951320 (and tp_is_empty!31437 tp_is_empty!31439 tp!1348840))))

(assert (=> b!4731273 (= tp!1348825 e!2951320)))

(assert (= (and b!4731273 ((_ is Cons!52889) (t!360289 newBucket!218))) b!4731635))

(declare-fun tp!1348841 () Bool)

(declare-fun b!4731636 () Bool)

(declare-fun e!2951321 () Bool)

(assert (=> b!4731636 (= e!2951321 (and tp_is_empty!31437 tp_is_empty!31439 tp!1348841))))

(assert (=> b!4731278 (= tp!1348827 e!2951321)))

(assert (= (and b!4731278 ((_ is Cons!52889) (t!360289 oldBucket!34))) b!4731636))

(declare-fun b!4731641 () Bool)

(declare-fun e!2951324 () Bool)

(declare-fun tp!1348846 () Bool)

(declare-fun tp!1348847 () Bool)

(assert (=> b!4731641 (= e!2951324 (and tp!1348846 tp!1348847))))

(assert (=> b!4731266 (= tp!1348826 e!2951324)))

(assert (= (and b!4731266 ((_ is Cons!52890) (toList!5961 lm!2023))) b!4731641))

(declare-fun b_lambda!180577 () Bool)

(assert (= b_lambda!180565 (or start!482180 b_lambda!180577)))

(declare-fun bs!1120725 () Bool)

(declare-fun d!1509146 () Bool)

(assert (= bs!1120725 (and d!1509146 start!482180)))

(assert (=> bs!1120725 (= (dynLambda!21849 lambda!217184 (h!59253 (toList!5961 lm!2023))) (noDuplicateKeys!2036 (_2!30564 (h!59253 (toList!5961 lm!2023)))))))

(assert (=> bs!1120725 m!5674189))

(assert (=> b!4731430 d!1509146))

(declare-fun b_lambda!180579 () Bool)

(assert (= b_lambda!180575 (or start!482180 b_lambda!180579)))

(declare-fun bs!1120726 () Bool)

(declare-fun d!1509148 () Bool)

(assert (= bs!1120726 (and d!1509148 start!482180)))

(assert (=> bs!1120726 (= (dynLambda!21849 lambda!217184 lt!1894411) (noDuplicateKeys!2036 (_2!30564 lt!1894411)))))

(declare-fun m!5674293 () Bool)

(assert (=> bs!1120726 m!5674293))

(assert (=> d!1509144 d!1509148))

(check-sat (not b!4731417) (not b!4731590) (not b!4731379) (not b!4731314) (not b!4731566) (not b!4731598) (not b!4731636) (not b!4731589) (not b!4731544) (not d!1509054) (not b!4731416) (not bs!1120726) (not b!4731381) (not d!1509132) (not d!1509120) (not b!4731414) (not d!1509002) (not b!4731301) (not b!4731421) (not b!4731612) (not bs!1120725) (not d!1509008) (not b_lambda!180579) (not bm!330930) (not d!1509142) (not b!4731294) (not b!4731380) (not d!1509050) tp_is_empty!31439 (not b!4731610) (not d!1509126) (not d!1509004) (not d!1509014) (not b!4731600) (not b!4731418) (not b!4731420) (not b!4731378) (not b!4731609) (not d!1509052) (not b!4731376) (not d!1509060) (not b!4731635) (not d!1509012) (not b!4731611) (not d!1509138) (not b!4731411) (not d!1509058) (not b_lambda!180577) (not d!1509032) (not b!4731545) (not b!4731377) (not bm!330912) (not b!4731419) (not d!1509026) (not b!4731630) (not b!4731424) (not bm!330914) (not d!1509122) (not b!4731586) (not d!1509130) (not d!1509144) (not b!4731310) (not d!1509016) (not d!1509124) (not b!4731546) (not b!4731306) (not bm!330932) (not b!4731641) (not b!4731584) (not b!4731307) tp_is_empty!31437 (not d!1509134) (not b!4731587) (not b!4731415) (not d!1509020) (not b!4731375) (not b!4731625) (not bm!330931) (not b!4731619) (not b!4731300) (not d!1509040) (not b!4731431) (not b!4731413) (not d!1509128) (not b!4731547) (not b!4731627))
(check-sat)
