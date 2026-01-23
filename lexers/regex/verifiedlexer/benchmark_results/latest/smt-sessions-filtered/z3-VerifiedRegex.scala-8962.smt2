; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!481216 () Bool)

(assert start!481216)

(declare-fun b!4726318 () Bool)

(declare-fun res!2000222 () Bool)

(declare-fun e!2947736 () Bool)

(assert (=> b!4726318 (=> (not res!2000222) (not e!2947736))))

(declare-datatypes ((K!14215 0))(
  ( (K!14216 (val!19643 Int)) )
))
(declare-datatypes ((V!14461 0))(
  ( (V!14462 (val!19644 Int)) )
))
(declare-datatypes ((tuple2!54498 0))(
  ( (tuple2!54499 (_1!30543 K!14215) (_2!30543 V!14461)) )
))
(declare-datatypes ((List!52984 0))(
  ( (Nil!52860) (Cons!52860 (h!59213 tuple2!54498) (t!360260 List!52984)) )
))
(declare-fun newBucket!218 () List!52984)

(declare-fun noDuplicateKeys!2026 (List!52984) Bool)

(assert (=> b!4726318 (= res!2000222 (noDuplicateKeys!2026 newBucket!218))))

(declare-fun res!2000220 () Bool)

(assert (=> start!481216 (=> (not res!2000220) (not e!2947736))))

(declare-datatypes ((tuple2!54500 0))(
  ( (tuple2!54501 (_1!30544 (_ BitVec 64)) (_2!30544 List!52984)) )
))
(declare-datatypes ((List!52985 0))(
  ( (Nil!52861) (Cons!52861 (h!59214 tuple2!54500) (t!360261 List!52985)) )
))
(declare-datatypes ((ListLongMap!4471 0))(
  ( (ListLongMap!4472 (toList!5941 List!52985)) )
))
(declare-fun lm!2023 () ListLongMap!4471)

(declare-fun lambda!216260 () Int)

(declare-fun forall!11610 (List!52985 Int) Bool)

(assert (=> start!481216 (= res!2000220 (forall!11610 (toList!5941 lm!2023) lambda!216260))))

(assert (=> start!481216 e!2947736))

(declare-fun e!2947738 () Bool)

(declare-fun inv!68089 (ListLongMap!4471) Bool)

(assert (=> start!481216 (and (inv!68089 lm!2023) e!2947738)))

(declare-fun tp_is_empty!31397 () Bool)

(assert (=> start!481216 tp_is_empty!31397))

(declare-fun e!2947733 () Bool)

(assert (=> start!481216 e!2947733))

(assert (=> start!481216 true))

(declare-fun e!2947731 () Bool)

(assert (=> start!481216 e!2947731))

(declare-fun b!4726319 () Bool)

(declare-fun tp!1348595 () Bool)

(declare-fun tp_is_empty!31399 () Bool)

(assert (=> b!4726319 (= e!2947731 (and tp_is_empty!31397 tp_is_empty!31399 tp!1348595))))

(declare-fun b!4726320 () Bool)

(declare-fun res!2000223 () Bool)

(declare-fun e!2947737 () Bool)

(assert (=> b!4726320 (=> (not res!2000223) (not e!2947737))))

(get-info :version)

(assert (=> b!4726320 (= res!2000223 ((_ is Cons!52861) (toList!5941 lm!2023)))))

(declare-fun b!4726321 () Bool)

(declare-fun e!2947735 () Bool)

(declare-datatypes ((ListMap!5305 0))(
  ( (ListMap!5306 (toList!5942 List!52984)) )
))
(declare-fun lt!1891010 () ListMap!5305)

(declare-fun addToMapMapFromBucket!1456 (List!52984 ListMap!5305) ListMap!5305)

(declare-fun extractMap!2052 (List!52985) ListMap!5305)

(assert (=> b!4726321 (= e!2947735 (= lt!1891010 (addToMapMapFromBucket!1456 (_2!30544 (h!59214 (toList!5941 lm!2023))) (extractMap!2052 (t!360261 (toList!5941 lm!2023))))))))

(declare-fun b!4726322 () Bool)

(declare-fun tp!1348593 () Bool)

(assert (=> b!4726322 (= e!2947733 (and tp_is_empty!31397 tp_is_empty!31399 tp!1348593))))

(declare-fun b!4726323 () Bool)

(declare-fun e!2947734 () Bool)

(declare-fun oldBucket!34 () List!52984)

(declare-fun key!4653 () K!14215)

(declare-datatypes ((Option!12371 0))(
  ( (None!12370) (Some!12370 (v!46955 tuple2!54498)) )
))
(declare-fun isDefined!9625 (Option!12371) Bool)

(declare-fun getPair!566 (List!52984 K!14215) Option!12371)

(assert (=> b!4726323 (= e!2947734 (isDefined!9625 (getPair!566 oldBucket!34 key!4653)))))

(declare-fun lt!1891013 () List!52984)

(assert (=> b!4726323 (isDefined!9625 (getPair!566 lt!1891013 key!4653))))

(declare-fun lt!1891011 () tuple2!54500)

(declare-datatypes ((Unit!131013 0))(
  ( (Unit!131014) )
))
(declare-fun lt!1891008 () Unit!131013)

(declare-fun forallContained!3651 (List!52985 Int tuple2!54500) Unit!131013)

(assert (=> b!4726323 (= lt!1891008 (forallContained!3651 (toList!5941 lm!2023) lambda!216260 lt!1891011))))

(declare-fun contains!16208 (List!52985 tuple2!54500) Bool)

(assert (=> b!4726323 (contains!16208 (toList!5941 lm!2023) lt!1891011)))

(declare-fun lt!1891015 () (_ BitVec 64))

(assert (=> b!4726323 (= lt!1891011 (tuple2!54501 lt!1891015 lt!1891013))))

(declare-fun lt!1891014 () Unit!131013)

(declare-fun lemmaGetValueImpliesTupleContained!371 (ListLongMap!4471 (_ BitVec 64) List!52984) Unit!131013)

(assert (=> b!4726323 (= lt!1891014 (lemmaGetValueImpliesTupleContained!371 lm!2023 lt!1891015 lt!1891013))))

(declare-fun apply!12451 (ListLongMap!4471 (_ BitVec 64)) List!52984)

(assert (=> b!4726323 (= lt!1891013 (apply!12451 lm!2023 lt!1891015))))

(declare-fun contains!16209 (ListLongMap!4471 (_ BitVec 64)) Bool)

(assert (=> b!4726323 (contains!16209 lm!2023 lt!1891015)))

(declare-datatypes ((Hashable!6395 0))(
  ( (HashableExt!6394 (__x!32098 Int)) )
))
(declare-fun hashF!1323 () Hashable!6395)

(declare-fun lt!1891012 () Unit!131013)

(declare-fun lemmaInGenMapThenLongMapContainsHash!772 (ListLongMap!4471 K!14215 Hashable!6395) Unit!131013)

(assert (=> b!4726323 (= lt!1891012 (lemmaInGenMapThenLongMapContainsHash!772 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1891009 () Unit!131013)

(declare-fun lemmaInGenMapThenGetPairDefined!362 (ListLongMap!4471 K!14215 Hashable!6395) Unit!131013)

(assert (=> b!4726323 (= lt!1891009 (lemmaInGenMapThenGetPairDefined!362 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4726324 () Bool)

(declare-fun res!2000217 () Bool)

(assert (=> b!4726324 (=> (not res!2000217) (not e!2947736))))

(declare-fun removePairForKey!1621 (List!52984 K!14215) List!52984)

(assert (=> b!4726324 (= res!2000217 (= (removePairForKey!1621 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4726325 () Bool)

(declare-fun e!2947732 () Bool)

(assert (=> b!4726325 (= e!2947732 e!2947737)))

(declare-fun res!2000214 () Bool)

(assert (=> b!4726325 (=> (not res!2000214) (not e!2947737))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4726325 (= res!2000214 (= lt!1891015 hash!405))))

(declare-fun hash!4402 (Hashable!6395 K!14215) (_ BitVec 64))

(assert (=> b!4726325 (= lt!1891015 (hash!4402 hashF!1323 key!4653))))

(declare-fun b!4726326 () Bool)

(assert (=> b!4726326 (= e!2947737 (not e!2947734))))

(declare-fun res!2000216 () Bool)

(assert (=> b!4726326 (=> res!2000216 e!2947734)))

(assert (=> b!4726326 (= res!2000216 (or (and ((_ is Cons!52860) oldBucket!34) (= (_1!30543 (h!59213 oldBucket!34)) key!4653)) (not ((_ is Cons!52860) oldBucket!34)) (= (_1!30543 (h!59213 oldBucket!34)) key!4653)))))

(assert (=> b!4726326 e!2947735))

(declare-fun res!2000213 () Bool)

(assert (=> b!4726326 (=> (not res!2000213) (not e!2947735))))

(declare-fun tail!9025 (ListLongMap!4471) ListLongMap!4471)

(assert (=> b!4726326 (= res!2000213 (= (t!360261 (toList!5941 lm!2023)) (toList!5941 (tail!9025 lm!2023))))))

(declare-fun b!4726327 () Bool)

(declare-fun res!2000212 () Bool)

(assert (=> b!4726327 (=> (not res!2000212) (not e!2947737))))

(declare-fun allKeysSameHash!1852 (List!52984 (_ BitVec 64) Hashable!6395) Bool)

(assert (=> b!4726327 (= res!2000212 (allKeysSameHash!1852 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4726328 () Bool)

(declare-fun res!2000218 () Bool)

(assert (=> b!4726328 (=> (not res!2000218) (not e!2947736))))

(assert (=> b!4726328 (= res!2000218 (noDuplicateKeys!2026 oldBucket!34))))

(declare-fun b!4726329 () Bool)

(declare-fun res!2000219 () Bool)

(assert (=> b!4726329 (=> (not res!2000219) (not e!2947737))))

(declare-fun head!10266 (List!52985) tuple2!54500)

(assert (=> b!4726329 (= res!2000219 (= (head!10266 (toList!5941 lm!2023)) (tuple2!54501 hash!405 oldBucket!34)))))

(declare-fun b!4726330 () Bool)

(declare-fun res!2000215 () Bool)

(assert (=> b!4726330 (=> (not res!2000215) (not e!2947737))))

(declare-fun allKeysSameHashInMap!1940 (ListLongMap!4471 Hashable!6395) Bool)

(assert (=> b!4726330 (= res!2000215 (allKeysSameHashInMap!1940 lm!2023 hashF!1323))))

(declare-fun b!4726331 () Bool)

(declare-fun tp!1348594 () Bool)

(assert (=> b!4726331 (= e!2947738 tp!1348594)))

(declare-fun b!4726332 () Bool)

(assert (=> b!4726332 (= e!2947736 e!2947732)))

(declare-fun res!2000211 () Bool)

(assert (=> b!4726332 (=> (not res!2000211) (not e!2947732))))

(declare-fun contains!16210 (ListMap!5305 K!14215) Bool)

(assert (=> b!4726332 (= res!2000211 (contains!16210 lt!1891010 key!4653))))

(assert (=> b!4726332 (= lt!1891010 (extractMap!2052 (toList!5941 lm!2023)))))

(declare-fun b!4726333 () Bool)

(declare-fun res!2000221 () Bool)

(assert (=> b!4726333 (=> (not res!2000221) (not e!2947736))))

(assert (=> b!4726333 (= res!2000221 (allKeysSameHash!1852 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!481216 res!2000220) b!4726328))

(assert (= (and b!4726328 res!2000218) b!4726318))

(assert (= (and b!4726318 res!2000222) b!4726324))

(assert (= (and b!4726324 res!2000217) b!4726333))

(assert (= (and b!4726333 res!2000221) b!4726332))

(assert (= (and b!4726332 res!2000211) b!4726325))

(assert (= (and b!4726325 res!2000214) b!4726327))

(assert (= (and b!4726327 res!2000212) b!4726330))

(assert (= (and b!4726330 res!2000215) b!4726329))

(assert (= (and b!4726329 res!2000219) b!4726320))

(assert (= (and b!4726320 res!2000223) b!4726326))

(assert (= (and b!4726326 res!2000213) b!4726321))

(assert (= (and b!4726326 (not res!2000216)) b!4726323))

(assert (= start!481216 b!4726331))

(assert (= (and start!481216 ((_ is Cons!52860) oldBucket!34)) b!4726322))

(assert (= (and start!481216 ((_ is Cons!52860) newBucket!218)) b!4726319))

(declare-fun m!5666029 () Bool)

(assert (=> b!4726330 m!5666029))

(declare-fun m!5666031 () Bool)

(assert (=> b!4726333 m!5666031))

(declare-fun m!5666033 () Bool)

(assert (=> b!4726328 m!5666033))

(declare-fun m!5666035 () Bool)

(assert (=> b!4726325 m!5666035))

(declare-fun m!5666037 () Bool)

(assert (=> b!4726324 m!5666037))

(declare-fun m!5666039 () Bool)

(assert (=> b!4726332 m!5666039))

(declare-fun m!5666041 () Bool)

(assert (=> b!4726332 m!5666041))

(declare-fun m!5666043 () Bool)

(assert (=> b!4726318 m!5666043))

(declare-fun m!5666045 () Bool)

(assert (=> start!481216 m!5666045))

(declare-fun m!5666047 () Bool)

(assert (=> start!481216 m!5666047))

(declare-fun m!5666049 () Bool)

(assert (=> b!4726329 m!5666049))

(declare-fun m!5666051 () Bool)

(assert (=> b!4726321 m!5666051))

(assert (=> b!4726321 m!5666051))

(declare-fun m!5666053 () Bool)

(assert (=> b!4726321 m!5666053))

(declare-fun m!5666055 () Bool)

(assert (=> b!4726323 m!5666055))

(declare-fun m!5666057 () Bool)

(assert (=> b!4726323 m!5666057))

(declare-fun m!5666059 () Bool)

(assert (=> b!4726323 m!5666059))

(declare-fun m!5666061 () Bool)

(assert (=> b!4726323 m!5666061))

(declare-fun m!5666063 () Bool)

(assert (=> b!4726323 m!5666063))

(assert (=> b!4726323 m!5666055))

(declare-fun m!5666065 () Bool)

(assert (=> b!4726323 m!5666065))

(declare-fun m!5666067 () Bool)

(assert (=> b!4726323 m!5666067))

(declare-fun m!5666069 () Bool)

(assert (=> b!4726323 m!5666069))

(declare-fun m!5666071 () Bool)

(assert (=> b!4726323 m!5666071))

(assert (=> b!4726323 m!5666063))

(declare-fun m!5666073 () Bool)

(assert (=> b!4726323 m!5666073))

(declare-fun m!5666075 () Bool)

(assert (=> b!4726323 m!5666075))

(declare-fun m!5666077 () Bool)

(assert (=> b!4726326 m!5666077))

(declare-fun m!5666079 () Bool)

(assert (=> b!4726327 m!5666079))

(check-sat (not b!4726330) (not b!4726325) (not b!4726321) (not b!4726319) (not b!4726322) (not b!4726327) (not b!4726331) (not b!4726328) (not b!4726329) (not b!4726333) (not b!4726326) (not b!4726332) tp_is_empty!31399 tp_is_empty!31397 (not start!481216) (not b!4726323) (not b!4726318) (not b!4726324))
(check-sat)
(get-model)

(declare-fun b!4726395 () Bool)

(declare-fun e!2947781 () Bool)

(declare-datatypes ((List!52987 0))(
  ( (Nil!52863) (Cons!52863 (h!59218 K!14215) (t!360263 List!52987)) )
))
(declare-fun contains!16213 (List!52987 K!14215) Bool)

(declare-fun keys!18992 (ListMap!5305) List!52987)

(assert (=> b!4726395 (= e!2947781 (contains!16213 (keys!18992 lt!1891010) key!4653))))

(declare-fun d!1505785 () Bool)

(declare-fun e!2947778 () Bool)

(assert (=> d!1505785 e!2947778))

(declare-fun res!2000247 () Bool)

(assert (=> d!1505785 (=> res!2000247 e!2947778)))

(declare-fun e!2947782 () Bool)

(assert (=> d!1505785 (= res!2000247 e!2947782)))

(declare-fun res!2000246 () Bool)

(assert (=> d!1505785 (=> (not res!2000246) (not e!2947782))))

(declare-fun lt!1891065 () Bool)

(assert (=> d!1505785 (= res!2000246 (not lt!1891065))))

(declare-fun lt!1891061 () Bool)

(assert (=> d!1505785 (= lt!1891065 lt!1891061)))

(declare-fun lt!1891062 () Unit!131013)

(declare-fun e!2947783 () Unit!131013)

(assert (=> d!1505785 (= lt!1891062 e!2947783)))

(declare-fun c!807174 () Bool)

(assert (=> d!1505785 (= c!807174 lt!1891061)))

(declare-fun containsKey!3387 (List!52984 K!14215) Bool)

(assert (=> d!1505785 (= lt!1891061 (containsKey!3387 (toList!5942 lt!1891010) key!4653))))

(assert (=> d!1505785 (= (contains!16210 lt!1891010 key!4653) lt!1891065)))

(declare-fun b!4726396 () Bool)

(declare-fun e!2947779 () List!52987)

(assert (=> b!4726396 (= e!2947779 (keys!18992 lt!1891010))))

(declare-fun b!4726397 () Bool)

(assert (=> b!4726397 false))

(declare-fun lt!1891059 () Unit!131013)

(declare-fun lt!1891066 () Unit!131013)

(assert (=> b!4726397 (= lt!1891059 lt!1891066)))

(assert (=> b!4726397 (containsKey!3387 (toList!5942 lt!1891010) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!956 (List!52984 K!14215) Unit!131013)

(assert (=> b!4726397 (= lt!1891066 (lemmaInGetKeysListThenContainsKey!956 (toList!5942 lt!1891010) key!4653))))

(declare-fun e!2947780 () Unit!131013)

(declare-fun Unit!131024 () Unit!131013)

(assert (=> b!4726397 (= e!2947780 Unit!131024)))

(declare-fun b!4726398 () Bool)

(declare-fun getKeysList!957 (List!52984) List!52987)

(assert (=> b!4726398 (= e!2947779 (getKeysList!957 (toList!5942 lt!1891010)))))

(declare-fun b!4726399 () Bool)

(declare-fun lt!1891060 () Unit!131013)

(assert (=> b!4726399 (= e!2947783 lt!1891060)))

(declare-fun lt!1891064 () Unit!131013)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1857 (List!52984 K!14215) Unit!131013)

(assert (=> b!4726399 (= lt!1891064 (lemmaContainsKeyImpliesGetValueByKeyDefined!1857 (toList!5942 lt!1891010) key!4653))))

(declare-datatypes ((Option!12374 0))(
  ( (None!12373) (Some!12373 (v!46962 V!14461)) )
))
(declare-fun isDefined!9628 (Option!12374) Bool)

(declare-fun getValueByKey!1966 (List!52984 K!14215) Option!12374)

(assert (=> b!4726399 (isDefined!9628 (getValueByKey!1966 (toList!5942 lt!1891010) key!4653))))

(declare-fun lt!1891063 () Unit!131013)

(assert (=> b!4726399 (= lt!1891063 lt!1891064)))

(declare-fun lemmaInListThenGetKeysListContains!952 (List!52984 K!14215) Unit!131013)

(assert (=> b!4726399 (= lt!1891060 (lemmaInListThenGetKeysListContains!952 (toList!5942 lt!1891010) key!4653))))

(declare-fun call!330679 () Bool)

(assert (=> b!4726399 call!330679))

(declare-fun bm!330674 () Bool)

(assert (=> bm!330674 (= call!330679 (contains!16213 e!2947779 key!4653))))

(declare-fun c!807172 () Bool)

(assert (=> bm!330674 (= c!807172 c!807174)))

(declare-fun b!4726400 () Bool)

(assert (=> b!4726400 (= e!2947782 (not (contains!16213 (keys!18992 lt!1891010) key!4653)))))

(declare-fun b!4726401 () Bool)

(declare-fun Unit!131027 () Unit!131013)

(assert (=> b!4726401 (= e!2947780 Unit!131027)))

(declare-fun b!4726402 () Bool)

(assert (=> b!4726402 (= e!2947783 e!2947780)))

(declare-fun c!807173 () Bool)

(assert (=> b!4726402 (= c!807173 call!330679)))

(declare-fun b!4726403 () Bool)

(assert (=> b!4726403 (= e!2947778 e!2947781)))

(declare-fun res!2000245 () Bool)

(assert (=> b!4726403 (=> (not res!2000245) (not e!2947781))))

(assert (=> b!4726403 (= res!2000245 (isDefined!9628 (getValueByKey!1966 (toList!5942 lt!1891010) key!4653)))))

(assert (= (and d!1505785 c!807174) b!4726399))

(assert (= (and d!1505785 (not c!807174)) b!4726402))

(assert (= (and b!4726402 c!807173) b!4726397))

(assert (= (and b!4726402 (not c!807173)) b!4726401))

(assert (= (or b!4726399 b!4726402) bm!330674))

(assert (= (and bm!330674 c!807172) b!4726398))

(assert (= (and bm!330674 (not c!807172)) b!4726396))

(assert (= (and d!1505785 res!2000246) b!4726400))

(assert (= (and d!1505785 (not res!2000247)) b!4726403))

(assert (= (and b!4726403 res!2000245) b!4726395))

(declare-fun m!5666117 () Bool)

(assert (=> b!4726403 m!5666117))

(assert (=> b!4726403 m!5666117))

(declare-fun m!5666119 () Bool)

(assert (=> b!4726403 m!5666119))

(declare-fun m!5666121 () Bool)

(assert (=> b!4726399 m!5666121))

(assert (=> b!4726399 m!5666117))

(assert (=> b!4726399 m!5666117))

(assert (=> b!4726399 m!5666119))

(declare-fun m!5666123 () Bool)

(assert (=> b!4726399 m!5666123))

(declare-fun m!5666125 () Bool)

(assert (=> b!4726398 m!5666125))

(declare-fun m!5666127 () Bool)

(assert (=> b!4726395 m!5666127))

(assert (=> b!4726395 m!5666127))

(declare-fun m!5666129 () Bool)

(assert (=> b!4726395 m!5666129))

(declare-fun m!5666131 () Bool)

(assert (=> bm!330674 m!5666131))

(declare-fun m!5666133 () Bool)

(assert (=> b!4726397 m!5666133))

(declare-fun m!5666135 () Bool)

(assert (=> b!4726397 m!5666135))

(assert (=> b!4726400 m!5666127))

(assert (=> b!4726400 m!5666127))

(assert (=> b!4726400 m!5666129))

(assert (=> d!1505785 m!5666133))

(assert (=> b!4726396 m!5666127))

(assert (=> b!4726332 d!1505785))

(declare-fun bs!1117979 () Bool)

(declare-fun d!1505801 () Bool)

(assert (= bs!1117979 (and d!1505801 start!481216)))

(declare-fun lambda!216272 () Int)

(assert (=> bs!1117979 (= lambda!216272 lambda!216260)))

(declare-fun lt!1891097 () ListMap!5305)

(declare-fun invariantList!1517 (List!52984) Bool)

(assert (=> d!1505801 (invariantList!1517 (toList!5942 lt!1891097))))

(declare-fun e!2947821 () ListMap!5305)

(assert (=> d!1505801 (= lt!1891097 e!2947821)))

(declare-fun c!807188 () Bool)

(assert (=> d!1505801 (= c!807188 ((_ is Cons!52861) (toList!5941 lm!2023)))))

(assert (=> d!1505801 (forall!11610 (toList!5941 lm!2023) lambda!216272)))

(assert (=> d!1505801 (= (extractMap!2052 (toList!5941 lm!2023)) lt!1891097)))

(declare-fun b!4726459 () Bool)

(assert (=> b!4726459 (= e!2947821 (addToMapMapFromBucket!1456 (_2!30544 (h!59214 (toList!5941 lm!2023))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))))))

(declare-fun b!4726460 () Bool)

(assert (=> b!4726460 (= e!2947821 (ListMap!5306 Nil!52860))))

(assert (= (and d!1505801 c!807188) b!4726459))

(assert (= (and d!1505801 (not c!807188)) b!4726460))

(declare-fun m!5666191 () Bool)

(assert (=> d!1505801 m!5666191))

(declare-fun m!5666193 () Bool)

(assert (=> d!1505801 m!5666193))

(assert (=> b!4726459 m!5666051))

(assert (=> b!4726459 m!5666051))

(assert (=> b!4726459 m!5666053))

(assert (=> b!4726332 d!1505801))

(declare-fun d!1505819 () Bool)

(declare-fun res!2000280 () Bool)

(declare-fun e!2947826 () Bool)

(assert (=> d!1505819 (=> res!2000280 e!2947826)))

(assert (=> d!1505819 (= res!2000280 ((_ is Nil!52861) (toList!5941 lm!2023)))))

(assert (=> d!1505819 (= (forall!11610 (toList!5941 lm!2023) lambda!216260) e!2947826)))

(declare-fun b!4726465 () Bool)

(declare-fun e!2947827 () Bool)

(assert (=> b!4726465 (= e!2947826 e!2947827)))

(declare-fun res!2000281 () Bool)

(assert (=> b!4726465 (=> (not res!2000281) (not e!2947827))))

(declare-fun dynLambda!21830 (Int tuple2!54500) Bool)

(assert (=> b!4726465 (= res!2000281 (dynLambda!21830 lambda!216260 (h!59214 (toList!5941 lm!2023))))))

(declare-fun b!4726466 () Bool)

(assert (=> b!4726466 (= e!2947827 (forall!11610 (t!360261 (toList!5941 lm!2023)) lambda!216260))))

(assert (= (and d!1505819 (not res!2000280)) b!4726465))

(assert (= (and b!4726465 res!2000281) b!4726466))

(declare-fun b_lambda!179619 () Bool)

(assert (=> (not b_lambda!179619) (not b!4726465)))

(declare-fun m!5666195 () Bool)

(assert (=> b!4726465 m!5666195))

(declare-fun m!5666197 () Bool)

(assert (=> b!4726466 m!5666197))

(assert (=> start!481216 d!1505819))

(declare-fun d!1505821 () Bool)

(declare-fun isStrictlySorted!756 (List!52985) Bool)

(assert (=> d!1505821 (= (inv!68089 lm!2023) (isStrictlySorted!756 (toList!5941 lm!2023)))))

(declare-fun bs!1117980 () Bool)

(assert (= bs!1117980 d!1505821))

(declare-fun m!5666199 () Bool)

(assert (=> bs!1117980 m!5666199))

(assert (=> start!481216 d!1505821))

(declare-fun d!1505823 () Bool)

(assert (=> d!1505823 true))

(assert (=> d!1505823 true))

(declare-fun lambda!216275 () Int)

(declare-fun forall!11612 (List!52984 Int) Bool)

(assert (=> d!1505823 (= (allKeysSameHash!1852 oldBucket!34 hash!405 hashF!1323) (forall!11612 oldBucket!34 lambda!216275))))

(declare-fun bs!1117981 () Bool)

(assert (= bs!1117981 d!1505823))

(declare-fun m!5666201 () Bool)

(assert (=> bs!1117981 m!5666201))

(assert (=> b!4726333 d!1505823))

(declare-fun d!1505825 () Bool)

(declare-fun lt!1891100 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9407 (List!52985) (InoxSet tuple2!54500))

(assert (=> d!1505825 (= lt!1891100 (select (content!9407 (toList!5941 lm!2023)) lt!1891011))))

(declare-fun e!2947833 () Bool)

(assert (=> d!1505825 (= lt!1891100 e!2947833)))

(declare-fun res!2000287 () Bool)

(assert (=> d!1505825 (=> (not res!2000287) (not e!2947833))))

(assert (=> d!1505825 (= res!2000287 ((_ is Cons!52861) (toList!5941 lm!2023)))))

(assert (=> d!1505825 (= (contains!16208 (toList!5941 lm!2023) lt!1891011) lt!1891100)))

(declare-fun b!4726475 () Bool)

(declare-fun e!2947832 () Bool)

(assert (=> b!4726475 (= e!2947833 e!2947832)))

(declare-fun res!2000286 () Bool)

(assert (=> b!4726475 (=> res!2000286 e!2947832)))

(assert (=> b!4726475 (= res!2000286 (= (h!59214 (toList!5941 lm!2023)) lt!1891011))))

(declare-fun b!4726476 () Bool)

(assert (=> b!4726476 (= e!2947832 (contains!16208 (t!360261 (toList!5941 lm!2023)) lt!1891011))))

(assert (= (and d!1505825 res!2000287) b!4726475))

(assert (= (and b!4726475 (not res!2000286)) b!4726476))

(declare-fun m!5666203 () Bool)

(assert (=> d!1505825 m!5666203))

(declare-fun m!5666205 () Bool)

(assert (=> d!1505825 m!5666205))

(declare-fun m!5666207 () Bool)

(assert (=> b!4726476 m!5666207))

(assert (=> b!4726323 d!1505825))

(declare-fun d!1505827 () Bool)

(assert (=> d!1505827 (dynLambda!21830 lambda!216260 lt!1891011)))

(declare-fun lt!1891103 () Unit!131013)

(declare-fun choose!33372 (List!52985 Int tuple2!54500) Unit!131013)

(assert (=> d!1505827 (= lt!1891103 (choose!33372 (toList!5941 lm!2023) lambda!216260 lt!1891011))))

(declare-fun e!2947836 () Bool)

(assert (=> d!1505827 e!2947836))

(declare-fun res!2000290 () Bool)

(assert (=> d!1505827 (=> (not res!2000290) (not e!2947836))))

(assert (=> d!1505827 (= res!2000290 (forall!11610 (toList!5941 lm!2023) lambda!216260))))

(assert (=> d!1505827 (= (forallContained!3651 (toList!5941 lm!2023) lambda!216260 lt!1891011) lt!1891103)))

(declare-fun b!4726479 () Bool)

(assert (=> b!4726479 (= e!2947836 (contains!16208 (toList!5941 lm!2023) lt!1891011))))

(assert (= (and d!1505827 res!2000290) b!4726479))

(declare-fun b_lambda!179621 () Bool)

(assert (=> (not b_lambda!179621) (not d!1505827)))

(declare-fun m!5666209 () Bool)

(assert (=> d!1505827 m!5666209))

(declare-fun m!5666211 () Bool)

(assert (=> d!1505827 m!5666211))

(assert (=> d!1505827 m!5666045))

(assert (=> b!4726479 m!5666069))

(assert (=> b!4726323 d!1505827))

(declare-fun d!1505829 () Bool)

(declare-fun e!2947854 () Bool)

(assert (=> d!1505829 e!2947854))

(declare-fun res!2000311 () Bool)

(assert (=> d!1505829 (=> res!2000311 e!2947854)))

(declare-fun lt!1891139 () Bool)

(assert (=> d!1505829 (= res!2000311 (not lt!1891139))))

(declare-fun lt!1891138 () Bool)

(assert (=> d!1505829 (= lt!1891139 lt!1891138)))

(declare-fun lt!1891137 () Unit!131013)

(declare-fun e!2947853 () Unit!131013)

(assert (=> d!1505829 (= lt!1891137 e!2947853)))

(declare-fun c!807191 () Bool)

(assert (=> d!1505829 (= c!807191 lt!1891138)))

(declare-fun containsKey!3388 (List!52985 (_ BitVec 64)) Bool)

(assert (=> d!1505829 (= lt!1891138 (containsKey!3388 (toList!5941 lm!2023) lt!1891015))))

(assert (=> d!1505829 (= (contains!16209 lm!2023 lt!1891015) lt!1891139)))

(declare-fun b!4726504 () Bool)

(declare-fun lt!1891136 () Unit!131013)

(assert (=> b!4726504 (= e!2947853 lt!1891136)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1858 (List!52985 (_ BitVec 64)) Unit!131013)

(assert (=> b!4726504 (= lt!1891136 (lemmaContainsKeyImpliesGetValueByKeyDefined!1858 (toList!5941 lm!2023) lt!1891015))))

(declare-datatypes ((Option!12375 0))(
  ( (None!12374) (Some!12374 (v!46963 List!52984)) )
))
(declare-fun isDefined!9629 (Option!12375) Bool)

(declare-fun getValueByKey!1967 (List!52985 (_ BitVec 64)) Option!12375)

(assert (=> b!4726504 (isDefined!9629 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891015))))

(declare-fun b!4726505 () Bool)

(declare-fun Unit!131031 () Unit!131013)

(assert (=> b!4726505 (= e!2947853 Unit!131031)))

(declare-fun b!4726506 () Bool)

(assert (=> b!4726506 (= e!2947854 (isDefined!9629 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891015)))))

(assert (= (and d!1505829 c!807191) b!4726504))

(assert (= (and d!1505829 (not c!807191)) b!4726505))

(assert (= (and d!1505829 (not res!2000311)) b!4726506))

(declare-fun m!5666241 () Bool)

(assert (=> d!1505829 m!5666241))

(declare-fun m!5666243 () Bool)

(assert (=> b!4726504 m!5666243))

(declare-fun m!5666245 () Bool)

(assert (=> b!4726504 m!5666245))

(assert (=> b!4726504 m!5666245))

(declare-fun m!5666247 () Bool)

(assert (=> b!4726504 m!5666247))

(assert (=> b!4726506 m!5666245))

(assert (=> b!4726506 m!5666245))

(assert (=> b!4726506 m!5666247))

(assert (=> b!4726323 d!1505829))

(declare-fun d!1505839 () Bool)

(declare-fun get!17731 (Option!12375) List!52984)

(assert (=> d!1505839 (= (apply!12451 lm!2023 lt!1891015) (get!17731 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891015)))))

(declare-fun bs!1117986 () Bool)

(assert (= bs!1117986 d!1505839))

(assert (=> bs!1117986 m!5666245))

(assert (=> bs!1117986 m!5666245))

(declare-fun m!5666249 () Bool)

(assert (=> bs!1117986 m!5666249))

(assert (=> b!4726323 d!1505839))

(declare-fun d!1505841 () Bool)

(declare-fun isEmpty!29183 (Option!12371) Bool)

(assert (=> d!1505841 (= (isDefined!9625 (getPair!566 oldBucket!34 key!4653)) (not (isEmpty!29183 (getPair!566 oldBucket!34 key!4653))))))

(declare-fun bs!1117989 () Bool)

(assert (= bs!1117989 d!1505841))

(assert (=> bs!1117989 m!5666063))

(declare-fun m!5666257 () Bool)

(assert (=> bs!1117989 m!5666257))

(assert (=> b!4726323 d!1505841))

(declare-fun b!4726539 () Bool)

(declare-fun e!2947875 () Option!12371)

(assert (=> b!4726539 (= e!2947875 (getPair!566 (t!360260 oldBucket!34) key!4653))))

(declare-fun b!4726540 () Bool)

(declare-fun e!2947873 () Option!12371)

(assert (=> b!4726540 (= e!2947873 e!2947875)))

(declare-fun c!807202 () Bool)

(assert (=> b!4726540 (= c!807202 ((_ is Cons!52860) oldBucket!34))))

(declare-fun d!1505847 () Bool)

(declare-fun e!2947874 () Bool)

(assert (=> d!1505847 e!2947874))

(declare-fun res!2000324 () Bool)

(assert (=> d!1505847 (=> res!2000324 e!2947874)))

(declare-fun e!2947876 () Bool)

(assert (=> d!1505847 (= res!2000324 e!2947876)))

(declare-fun res!2000323 () Bool)

(assert (=> d!1505847 (=> (not res!2000323) (not e!2947876))))

(declare-fun lt!1891145 () Option!12371)

(assert (=> d!1505847 (= res!2000323 (isEmpty!29183 lt!1891145))))

(assert (=> d!1505847 (= lt!1891145 e!2947873)))

(declare-fun c!807203 () Bool)

(assert (=> d!1505847 (= c!807203 (and ((_ is Cons!52860) oldBucket!34) (= (_1!30543 (h!59213 oldBucket!34)) key!4653)))))

(assert (=> d!1505847 (noDuplicateKeys!2026 oldBucket!34)))

(assert (=> d!1505847 (= (getPair!566 oldBucket!34 key!4653) lt!1891145)))

(declare-fun b!4726541 () Bool)

(declare-fun e!2947877 () Bool)

(declare-fun contains!16214 (List!52984 tuple2!54498) Bool)

(declare-fun get!17732 (Option!12371) tuple2!54498)

(assert (=> b!4726541 (= e!2947877 (contains!16214 oldBucket!34 (get!17732 lt!1891145)))))

(declare-fun b!4726542 () Bool)

(declare-fun containsKey!3389 (List!52984 K!14215) Bool)

(assert (=> b!4726542 (= e!2947876 (not (containsKey!3389 oldBucket!34 key!4653)))))

(declare-fun b!4726543 () Bool)

(assert (=> b!4726543 (= e!2947875 None!12370)))

(declare-fun b!4726544 () Bool)

(assert (=> b!4726544 (= e!2947873 (Some!12370 (h!59213 oldBucket!34)))))

(declare-fun b!4726545 () Bool)

(assert (=> b!4726545 (= e!2947874 e!2947877)))

(declare-fun res!2000325 () Bool)

(assert (=> b!4726545 (=> (not res!2000325) (not e!2947877))))

(assert (=> b!4726545 (= res!2000325 (isDefined!9625 lt!1891145))))

(declare-fun b!4726546 () Bool)

(declare-fun res!2000322 () Bool)

(assert (=> b!4726546 (=> (not res!2000322) (not e!2947877))))

(assert (=> b!4726546 (= res!2000322 (= (_1!30543 (get!17732 lt!1891145)) key!4653))))

(assert (= (and d!1505847 c!807203) b!4726544))

(assert (= (and d!1505847 (not c!807203)) b!4726540))

(assert (= (and b!4726540 c!807202) b!4726539))

(assert (= (and b!4726540 (not c!807202)) b!4726543))

(assert (= (and d!1505847 res!2000323) b!4726542))

(assert (= (and d!1505847 (not res!2000324)) b!4726545))

(assert (= (and b!4726545 res!2000325) b!4726546))

(assert (= (and b!4726546 res!2000322) b!4726541))

(declare-fun m!5666269 () Bool)

(assert (=> b!4726545 m!5666269))

(declare-fun m!5666271 () Bool)

(assert (=> d!1505847 m!5666271))

(assert (=> d!1505847 m!5666033))

(declare-fun m!5666273 () Bool)

(assert (=> b!4726542 m!5666273))

(declare-fun m!5666275 () Bool)

(assert (=> b!4726539 m!5666275))

(declare-fun m!5666277 () Bool)

(assert (=> b!4726546 m!5666277))

(assert (=> b!4726541 m!5666277))

(assert (=> b!4726541 m!5666277))

(declare-fun m!5666279 () Bool)

(assert (=> b!4726541 m!5666279))

(assert (=> b!4726323 d!1505847))

(declare-fun bs!1117997 () Bool)

(declare-fun d!1505857 () Bool)

(assert (= bs!1117997 (and d!1505857 start!481216)))

(declare-fun lambda!216289 () Int)

(assert (=> bs!1117997 (= lambda!216289 lambda!216260)))

(declare-fun bs!1117998 () Bool)

(assert (= bs!1117998 (and d!1505857 d!1505801)))

(assert (=> bs!1117998 (= lambda!216289 lambda!216272)))

(assert (=> d!1505857 (contains!16209 lm!2023 (hash!4402 hashF!1323 key!4653))))

(declare-fun lt!1891148 () Unit!131013)

(declare-fun choose!33373 (ListLongMap!4471 K!14215 Hashable!6395) Unit!131013)

(assert (=> d!1505857 (= lt!1891148 (choose!33373 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1505857 (forall!11610 (toList!5941 lm!2023) lambda!216289)))

(assert (=> d!1505857 (= (lemmaInGenMapThenLongMapContainsHash!772 lm!2023 key!4653 hashF!1323) lt!1891148)))

(declare-fun bs!1117999 () Bool)

(assert (= bs!1117999 d!1505857))

(assert (=> bs!1117999 m!5666035))

(assert (=> bs!1117999 m!5666035))

(declare-fun m!5666281 () Bool)

(assert (=> bs!1117999 m!5666281))

(declare-fun m!5666283 () Bool)

(assert (=> bs!1117999 m!5666283))

(declare-fun m!5666285 () Bool)

(assert (=> bs!1117999 m!5666285))

(assert (=> b!4726323 d!1505857))

(declare-fun bs!1118000 () Bool)

(declare-fun d!1505859 () Bool)

(assert (= bs!1118000 (and d!1505859 start!481216)))

(declare-fun lambda!216296 () Int)

(assert (=> bs!1118000 (= lambda!216296 lambda!216260)))

(declare-fun bs!1118001 () Bool)

(assert (= bs!1118001 (and d!1505859 d!1505801)))

(assert (=> bs!1118001 (= lambda!216296 lambda!216272)))

(declare-fun bs!1118002 () Bool)

(assert (= bs!1118002 (and d!1505859 d!1505857)))

(assert (=> bs!1118002 (= lambda!216296 lambda!216289)))

(declare-fun b!4726555 () Bool)

(declare-fun res!2000334 () Bool)

(declare-fun e!2947883 () Bool)

(assert (=> b!4726555 (=> (not res!2000334) (not e!2947883))))

(assert (=> b!4726555 (= res!2000334 (allKeysSameHashInMap!1940 lm!2023 hashF!1323))))

(assert (=> d!1505859 e!2947883))

(declare-fun res!2000337 () Bool)

(assert (=> d!1505859 (=> (not res!2000337) (not e!2947883))))

(assert (=> d!1505859 (= res!2000337 (forall!11610 (toList!5941 lm!2023) lambda!216296))))

(declare-fun lt!1891166 () Unit!131013)

(declare-fun choose!33374 (ListLongMap!4471 K!14215 Hashable!6395) Unit!131013)

(assert (=> d!1505859 (= lt!1891166 (choose!33374 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1505859 (forall!11610 (toList!5941 lm!2023) lambda!216296)))

(assert (=> d!1505859 (= (lemmaInGenMapThenGetPairDefined!362 lm!2023 key!4653 hashF!1323) lt!1891166)))

(declare-fun b!4726557 () Bool)

(assert (=> b!4726557 (= e!2947883 (isDefined!9625 (getPair!566 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1891167 () Unit!131013)

(assert (=> b!4726557 (= lt!1891167 (forallContained!3651 (toList!5941 lm!2023) lambda!216296 (tuple2!54501 (hash!4402 hashF!1323 key!4653) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))))))

(declare-fun lt!1891170 () Unit!131013)

(declare-fun lt!1891171 () Unit!131013)

(assert (=> b!4726557 (= lt!1891170 lt!1891171)))

(declare-fun lt!1891168 () (_ BitVec 64))

(declare-fun lt!1891169 () List!52984)

(assert (=> b!4726557 (contains!16208 (toList!5941 lm!2023) (tuple2!54501 lt!1891168 lt!1891169))))

(assert (=> b!4726557 (= lt!1891171 (lemmaGetValueImpliesTupleContained!371 lm!2023 lt!1891168 lt!1891169))))

(declare-fun e!2947882 () Bool)

(assert (=> b!4726557 e!2947882))

(declare-fun res!2000336 () Bool)

(assert (=> b!4726557 (=> (not res!2000336) (not e!2947882))))

(assert (=> b!4726557 (= res!2000336 (contains!16209 lm!2023 lt!1891168))))

(assert (=> b!4726557 (= lt!1891169 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))))

(assert (=> b!4726557 (= lt!1891168 (hash!4402 hashF!1323 key!4653))))

(declare-fun lt!1891165 () Unit!131013)

(declare-fun lt!1891172 () Unit!131013)

(assert (=> b!4726557 (= lt!1891165 lt!1891172)))

(assert (=> b!4726557 (contains!16209 lm!2023 (hash!4402 hashF!1323 key!4653))))

(assert (=> b!4726557 (= lt!1891172 (lemmaInGenMapThenLongMapContainsHash!772 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4726556 () Bool)

(declare-fun res!2000335 () Bool)

(assert (=> b!4726556 (=> (not res!2000335) (not e!2947883))))

(assert (=> b!4726556 (= res!2000335 (contains!16210 (extractMap!2052 (toList!5941 lm!2023)) key!4653))))

(declare-fun b!4726558 () Bool)

(assert (=> b!4726558 (= e!2947882 (= (getValueByKey!1967 (toList!5941 lm!2023) lt!1891168) (Some!12374 lt!1891169)))))

(assert (= (and d!1505859 res!2000337) b!4726555))

(assert (= (and b!4726555 res!2000334) b!4726556))

(assert (= (and b!4726556 res!2000335) b!4726557))

(assert (= (and b!4726557 res!2000336) b!4726558))

(assert (=> b!4726555 m!5666029))

(declare-fun m!5666287 () Bool)

(assert (=> b!4726557 m!5666287))

(assert (=> b!4726557 m!5666035))

(assert (=> b!4726557 m!5666281))

(assert (=> b!4726557 m!5666035))

(declare-fun m!5666289 () Bool)

(assert (=> b!4726557 m!5666289))

(declare-fun m!5666291 () Bool)

(assert (=> b!4726557 m!5666291))

(assert (=> b!4726557 m!5666067))

(assert (=> b!4726557 m!5666289))

(declare-fun m!5666293 () Bool)

(assert (=> b!4726557 m!5666293))

(assert (=> b!4726557 m!5666035))

(declare-fun m!5666295 () Bool)

(assert (=> b!4726557 m!5666295))

(declare-fun m!5666297 () Bool)

(assert (=> b!4726557 m!5666297))

(assert (=> b!4726557 m!5666293))

(declare-fun m!5666299 () Bool)

(assert (=> b!4726557 m!5666299))

(declare-fun m!5666301 () Bool)

(assert (=> d!1505859 m!5666301))

(declare-fun m!5666303 () Bool)

(assert (=> d!1505859 m!5666303))

(assert (=> d!1505859 m!5666301))

(declare-fun m!5666305 () Bool)

(assert (=> b!4726558 m!5666305))

(assert (=> b!4726556 m!5666041))

(assert (=> b!4726556 m!5666041))

(declare-fun m!5666307 () Bool)

(assert (=> b!4726556 m!5666307))

(assert (=> b!4726323 d!1505859))

(declare-fun b!4726559 () Bool)

(declare-fun e!2947886 () Option!12371)

(assert (=> b!4726559 (= e!2947886 (getPair!566 (t!360260 lt!1891013) key!4653))))

(declare-fun b!4726560 () Bool)

(declare-fun e!2947884 () Option!12371)

(assert (=> b!4726560 (= e!2947884 e!2947886)))

(declare-fun c!807204 () Bool)

(assert (=> b!4726560 (= c!807204 ((_ is Cons!52860) lt!1891013))))

(declare-fun d!1505861 () Bool)

(declare-fun e!2947885 () Bool)

(assert (=> d!1505861 e!2947885))

(declare-fun res!2000340 () Bool)

(assert (=> d!1505861 (=> res!2000340 e!2947885)))

(declare-fun e!2947887 () Bool)

(assert (=> d!1505861 (= res!2000340 e!2947887)))

(declare-fun res!2000339 () Bool)

(assert (=> d!1505861 (=> (not res!2000339) (not e!2947887))))

(declare-fun lt!1891173 () Option!12371)

(assert (=> d!1505861 (= res!2000339 (isEmpty!29183 lt!1891173))))

(assert (=> d!1505861 (= lt!1891173 e!2947884)))

(declare-fun c!807205 () Bool)

(assert (=> d!1505861 (= c!807205 (and ((_ is Cons!52860) lt!1891013) (= (_1!30543 (h!59213 lt!1891013)) key!4653)))))

(assert (=> d!1505861 (noDuplicateKeys!2026 lt!1891013)))

(assert (=> d!1505861 (= (getPair!566 lt!1891013 key!4653) lt!1891173)))

(declare-fun b!4726561 () Bool)

(declare-fun e!2947888 () Bool)

(assert (=> b!4726561 (= e!2947888 (contains!16214 lt!1891013 (get!17732 lt!1891173)))))

(declare-fun b!4726562 () Bool)

(assert (=> b!4726562 (= e!2947887 (not (containsKey!3389 lt!1891013 key!4653)))))

(declare-fun b!4726563 () Bool)

(assert (=> b!4726563 (= e!2947886 None!12370)))

(declare-fun b!4726564 () Bool)

(assert (=> b!4726564 (= e!2947884 (Some!12370 (h!59213 lt!1891013)))))

(declare-fun b!4726565 () Bool)

(assert (=> b!4726565 (= e!2947885 e!2947888)))

(declare-fun res!2000341 () Bool)

(assert (=> b!4726565 (=> (not res!2000341) (not e!2947888))))

(assert (=> b!4726565 (= res!2000341 (isDefined!9625 lt!1891173))))

(declare-fun b!4726566 () Bool)

(declare-fun res!2000338 () Bool)

(assert (=> b!4726566 (=> (not res!2000338) (not e!2947888))))

(assert (=> b!4726566 (= res!2000338 (= (_1!30543 (get!17732 lt!1891173)) key!4653))))

(assert (= (and d!1505861 c!807205) b!4726564))

(assert (= (and d!1505861 (not c!807205)) b!4726560))

(assert (= (and b!4726560 c!807204) b!4726559))

(assert (= (and b!4726560 (not c!807204)) b!4726563))

(assert (= (and d!1505861 res!2000339) b!4726562))

(assert (= (and d!1505861 (not res!2000340)) b!4726565))

(assert (= (and b!4726565 res!2000341) b!4726566))

(assert (= (and b!4726566 res!2000338) b!4726561))

(declare-fun m!5666309 () Bool)

(assert (=> b!4726565 m!5666309))

(declare-fun m!5666311 () Bool)

(assert (=> d!1505861 m!5666311))

(declare-fun m!5666313 () Bool)

(assert (=> d!1505861 m!5666313))

(declare-fun m!5666315 () Bool)

(assert (=> b!4726562 m!5666315))

(declare-fun m!5666317 () Bool)

(assert (=> b!4726559 m!5666317))

(declare-fun m!5666319 () Bool)

(assert (=> b!4726566 m!5666319))

(assert (=> b!4726561 m!5666319))

(assert (=> b!4726561 m!5666319))

(declare-fun m!5666321 () Bool)

(assert (=> b!4726561 m!5666321))

(assert (=> b!4726323 d!1505861))

(declare-fun d!1505863 () Bool)

(assert (=> d!1505863 (contains!16208 (toList!5941 lm!2023) (tuple2!54501 lt!1891015 lt!1891013))))

(declare-fun lt!1891176 () Unit!131013)

(declare-fun choose!33375 (ListLongMap!4471 (_ BitVec 64) List!52984) Unit!131013)

(assert (=> d!1505863 (= lt!1891176 (choose!33375 lm!2023 lt!1891015 lt!1891013))))

(assert (=> d!1505863 (contains!16209 lm!2023 lt!1891015)))

(assert (=> d!1505863 (= (lemmaGetValueImpliesTupleContained!371 lm!2023 lt!1891015 lt!1891013) lt!1891176)))

(declare-fun bs!1118003 () Bool)

(assert (= bs!1118003 d!1505863))

(declare-fun m!5666323 () Bool)

(assert (=> bs!1118003 m!5666323))

(declare-fun m!5666325 () Bool)

(assert (=> bs!1118003 m!5666325))

(assert (=> bs!1118003 m!5666057))

(assert (=> b!4726323 d!1505863))

(declare-fun d!1505865 () Bool)

(assert (=> d!1505865 (= (isDefined!9625 (getPair!566 lt!1891013 key!4653)) (not (isEmpty!29183 (getPair!566 lt!1891013 key!4653))))))

(declare-fun bs!1118004 () Bool)

(assert (= bs!1118004 d!1505865))

(assert (=> bs!1118004 m!5666055))

(declare-fun m!5666327 () Bool)

(assert (=> bs!1118004 m!5666327))

(assert (=> b!4726323 d!1505865))

(declare-fun b!4726578 () Bool)

(declare-fun e!2947893 () List!52984)

(assert (=> b!4726578 (= e!2947893 (Cons!52860 (h!59213 oldBucket!34) (removePairForKey!1621 (t!360260 oldBucket!34) key!4653)))))

(declare-fun b!4726576 () Bool)

(declare-fun e!2947894 () List!52984)

(assert (=> b!4726576 (= e!2947894 (t!360260 oldBucket!34))))

(declare-fun b!4726577 () Bool)

(assert (=> b!4726577 (= e!2947894 e!2947893)))

(declare-fun c!807210 () Bool)

(assert (=> b!4726577 (= c!807210 ((_ is Cons!52860) oldBucket!34))))

(declare-fun d!1505867 () Bool)

(declare-fun lt!1891179 () List!52984)

(assert (=> d!1505867 (not (containsKey!3389 lt!1891179 key!4653))))

(assert (=> d!1505867 (= lt!1891179 e!2947894)))

(declare-fun c!807211 () Bool)

(assert (=> d!1505867 (= c!807211 (and ((_ is Cons!52860) oldBucket!34) (= (_1!30543 (h!59213 oldBucket!34)) key!4653)))))

(assert (=> d!1505867 (noDuplicateKeys!2026 oldBucket!34)))

(assert (=> d!1505867 (= (removePairForKey!1621 oldBucket!34 key!4653) lt!1891179)))

(declare-fun b!4726579 () Bool)

(assert (=> b!4726579 (= e!2947893 Nil!52860)))

(assert (= (and d!1505867 c!807211) b!4726576))

(assert (= (and d!1505867 (not c!807211)) b!4726577))

(assert (= (and b!4726577 c!807210) b!4726578))

(assert (= (and b!4726577 (not c!807210)) b!4726579))

(declare-fun m!5666329 () Bool)

(assert (=> b!4726578 m!5666329))

(declare-fun m!5666331 () Bool)

(assert (=> d!1505867 m!5666331))

(assert (=> d!1505867 m!5666033))

(assert (=> b!4726324 d!1505867))

(declare-fun d!1505869 () Bool)

(declare-fun hash!4404 (Hashable!6395 K!14215) (_ BitVec 64))

(assert (=> d!1505869 (= (hash!4402 hashF!1323 key!4653) (hash!4404 hashF!1323 key!4653))))

(declare-fun bs!1118005 () Bool)

(assert (= bs!1118005 d!1505869))

(declare-fun m!5666333 () Bool)

(assert (=> bs!1118005 m!5666333))

(assert (=> b!4726325 d!1505869))

(declare-fun d!1505871 () Bool)

(declare-fun tail!9027 (List!52985) List!52985)

(assert (=> d!1505871 (= (tail!9025 lm!2023) (ListLongMap!4472 (tail!9027 (toList!5941 lm!2023))))))

(declare-fun bs!1118006 () Bool)

(assert (= bs!1118006 d!1505871))

(declare-fun m!5666335 () Bool)

(assert (=> bs!1118006 m!5666335))

(assert (=> b!4726326 d!1505871))

(declare-fun bs!1118007 () Bool)

(declare-fun d!1505873 () Bool)

(assert (= bs!1118007 (and d!1505873 d!1505823)))

(declare-fun lambda!216297 () Int)

(assert (=> bs!1118007 (= lambda!216297 lambda!216275)))

(assert (=> d!1505873 true))

(assert (=> d!1505873 true))

(assert (=> d!1505873 (= (allKeysSameHash!1852 newBucket!218 hash!405 hashF!1323) (forall!11612 newBucket!218 lambda!216297))))

(declare-fun bs!1118008 () Bool)

(assert (= bs!1118008 d!1505873))

(declare-fun m!5666337 () Bool)

(assert (=> bs!1118008 m!5666337))

(assert (=> b!4726327 d!1505873))

(declare-fun d!1505875 () Bool)

(declare-fun res!2000346 () Bool)

(declare-fun e!2947901 () Bool)

(assert (=> d!1505875 (=> res!2000346 e!2947901)))

(assert (=> d!1505875 (= res!2000346 (not ((_ is Cons!52860) oldBucket!34)))))

(assert (=> d!1505875 (= (noDuplicateKeys!2026 oldBucket!34) e!2947901)))

(declare-fun b!4726588 () Bool)

(declare-fun e!2947902 () Bool)

(assert (=> b!4726588 (= e!2947901 e!2947902)))

(declare-fun res!2000347 () Bool)

(assert (=> b!4726588 (=> (not res!2000347) (not e!2947902))))

(assert (=> b!4726588 (= res!2000347 (not (containsKey!3389 (t!360260 oldBucket!34) (_1!30543 (h!59213 oldBucket!34)))))))

(declare-fun b!4726589 () Bool)

(assert (=> b!4726589 (= e!2947902 (noDuplicateKeys!2026 (t!360260 oldBucket!34)))))

(assert (= (and d!1505875 (not res!2000346)) b!4726588))

(assert (= (and b!4726588 res!2000347) b!4726589))

(declare-fun m!5666339 () Bool)

(assert (=> b!4726588 m!5666339))

(declare-fun m!5666341 () Bool)

(assert (=> b!4726589 m!5666341))

(assert (=> b!4726328 d!1505875))

(declare-fun d!1505877 () Bool)

(declare-fun res!2000348 () Bool)

(declare-fun e!2947903 () Bool)

(assert (=> d!1505877 (=> res!2000348 e!2947903)))

(assert (=> d!1505877 (= res!2000348 (not ((_ is Cons!52860) newBucket!218)))))

(assert (=> d!1505877 (= (noDuplicateKeys!2026 newBucket!218) e!2947903)))

(declare-fun b!4726590 () Bool)

(declare-fun e!2947904 () Bool)

(assert (=> b!4726590 (= e!2947903 e!2947904)))

(declare-fun res!2000349 () Bool)

(assert (=> b!4726590 (=> (not res!2000349) (not e!2947904))))

(assert (=> b!4726590 (= res!2000349 (not (containsKey!3389 (t!360260 newBucket!218) (_1!30543 (h!59213 newBucket!218)))))))

(declare-fun b!4726591 () Bool)

(assert (=> b!4726591 (= e!2947904 (noDuplicateKeys!2026 (t!360260 newBucket!218)))))

(assert (= (and d!1505877 (not res!2000348)) b!4726590))

(assert (= (and b!4726590 res!2000349) b!4726591))

(declare-fun m!5666343 () Bool)

(assert (=> b!4726590 m!5666343))

(declare-fun m!5666345 () Bool)

(assert (=> b!4726591 m!5666345))

(assert (=> b!4726318 d!1505877))

(declare-fun d!1505879 () Bool)

(assert (=> d!1505879 (= (head!10266 (toList!5941 lm!2023)) (h!59214 (toList!5941 lm!2023)))))

(assert (=> b!4726329 d!1505879))

(declare-fun bs!1118009 () Bool)

(declare-fun d!1505881 () Bool)

(assert (= bs!1118009 (and d!1505881 start!481216)))

(declare-fun lambda!216309 () Int)

(assert (=> bs!1118009 (not (= lambda!216309 lambda!216260))))

(declare-fun bs!1118010 () Bool)

(assert (= bs!1118010 (and d!1505881 d!1505801)))

(assert (=> bs!1118010 (not (= lambda!216309 lambda!216272))))

(declare-fun bs!1118011 () Bool)

(assert (= bs!1118011 (and d!1505881 d!1505857)))

(assert (=> bs!1118011 (not (= lambda!216309 lambda!216289))))

(declare-fun bs!1118012 () Bool)

(assert (= bs!1118012 (and d!1505881 d!1505859)))

(assert (=> bs!1118012 (not (= lambda!216309 lambda!216296))))

(assert (=> d!1505881 true))

(assert (=> d!1505881 (= (allKeysSameHashInMap!1940 lm!2023 hashF!1323) (forall!11610 (toList!5941 lm!2023) lambda!216309))))

(declare-fun bs!1118013 () Bool)

(assert (= bs!1118013 d!1505881))

(declare-fun m!5666347 () Bool)

(assert (=> bs!1118013 m!5666347))

(assert (=> b!4726330 d!1505881))

(declare-fun bs!1118030 () Bool)

(declare-fun b!4726631 () Bool)

(assert (= bs!1118030 (and b!4726631 d!1505823)))

(declare-fun lambda!216362 () Int)

(assert (=> bs!1118030 (not (= lambda!216362 lambda!216275))))

(declare-fun bs!1118031 () Bool)

(assert (= bs!1118031 (and b!4726631 d!1505873)))

(assert (=> bs!1118031 (not (= lambda!216362 lambda!216297))))

(assert (=> b!4726631 true))

(declare-fun bs!1118032 () Bool)

(declare-fun b!4726633 () Bool)

(assert (= bs!1118032 (and b!4726633 d!1505823)))

(declare-fun lambda!216363 () Int)

(assert (=> bs!1118032 (not (= lambda!216363 lambda!216275))))

(declare-fun bs!1118033 () Bool)

(assert (= bs!1118033 (and b!4726633 d!1505873)))

(assert (=> bs!1118033 (not (= lambda!216363 lambda!216297))))

(declare-fun bs!1118034 () Bool)

(assert (= bs!1118034 (and b!4726633 b!4726631)))

(assert (=> bs!1118034 (= lambda!216363 lambda!216362)))

(assert (=> b!4726633 true))

(declare-fun lambda!216364 () Int)

(assert (=> bs!1118032 (not (= lambda!216364 lambda!216275))))

(assert (=> bs!1118033 (not (= lambda!216364 lambda!216297))))

(declare-fun lt!1891304 () ListMap!5305)

(assert (=> bs!1118034 (= (= lt!1891304 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216364 lambda!216362))))

(assert (=> b!4726633 (= (= lt!1891304 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216364 lambda!216363))))

(assert (=> b!4726633 true))

(declare-fun bs!1118035 () Bool)

(declare-fun d!1505883 () Bool)

(assert (= bs!1118035 (and d!1505883 b!4726633)))

(declare-fun lt!1891302 () ListMap!5305)

(declare-fun lambda!216365 () Int)

(assert (=> bs!1118035 (= (= lt!1891302 lt!1891304) (= lambda!216365 lambda!216364))))

(declare-fun bs!1118036 () Bool)

(assert (= bs!1118036 (and d!1505883 d!1505823)))

(assert (=> bs!1118036 (not (= lambda!216365 lambda!216275))))

(declare-fun bs!1118037 () Bool)

(assert (= bs!1118037 (and d!1505883 d!1505873)))

(assert (=> bs!1118037 (not (= lambda!216365 lambda!216297))))

(declare-fun bs!1118038 () Bool)

(assert (= bs!1118038 (and d!1505883 b!4726631)))

(assert (=> bs!1118038 (= (= lt!1891302 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216365 lambda!216362))))

(assert (=> bs!1118035 (= (= lt!1891302 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216365 lambda!216363))))

(assert (=> d!1505883 true))

(declare-fun bm!330690 () Bool)

(declare-fun call!330697 () Unit!131013)

(declare-fun lemmaContainsAllItsOwnKeys!803 (ListMap!5305) Unit!131013)

(assert (=> bm!330690 (= call!330697 (lemmaContainsAllItsOwnKeys!803 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))))))

(declare-fun call!330695 () Bool)

(declare-fun c!807218 () Bool)

(declare-fun bm!330691 () Bool)

(assert (=> bm!330691 (= call!330695 (forall!11612 (ite c!807218 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (ite c!807218 lambda!216362 lambda!216364)))))

(declare-fun b!4726630 () Bool)

(declare-fun e!2947927 () Bool)

(assert (=> b!4726630 (= e!2947927 (invariantList!1517 (toList!5942 lt!1891302)))))

(declare-fun e!2947928 () ListMap!5305)

(assert (=> b!4726631 (= e!2947928 (extractMap!2052 (t!360261 (toList!5941 lm!2023))))))

(declare-fun lt!1891305 () Unit!131013)

(assert (=> b!4726631 (= lt!1891305 call!330697)))

(assert (=> b!4726631 call!330695))

(declare-fun lt!1891306 () Unit!131013)

(assert (=> b!4726631 (= lt!1891306 lt!1891305)))

(declare-fun call!330696 () Bool)

(assert (=> b!4726631 call!330696))

(declare-fun lt!1891303 () Unit!131013)

(declare-fun Unit!131032 () Unit!131013)

(assert (=> b!4726631 (= lt!1891303 Unit!131032)))

(declare-fun b!4726632 () Bool)

(declare-fun e!2947926 () Bool)

(assert (=> b!4726632 (= e!2947926 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lambda!216364))))

(declare-fun b!4726634 () Bool)

(declare-fun res!2000366 () Bool)

(assert (=> b!4726634 (=> (not res!2000366) (not e!2947927))))

(assert (=> b!4726634 (= res!2000366 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lambda!216365))))

(declare-fun bm!330692 () Bool)

(assert (=> bm!330692 (= call!330696 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (ite c!807218 lambda!216362 lambda!216363)))))

(assert (=> b!4726633 (= e!2947928 lt!1891304)))

(declare-fun lt!1891286 () ListMap!5305)

(declare-fun +!2275 (ListMap!5305 tuple2!54498) ListMap!5305)

(assert (=> b!4726633 (= lt!1891286 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(assert (=> b!4726633 (= lt!1891304 (addToMapMapFromBucket!1456 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))) (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun lt!1891288 () Unit!131013)

(assert (=> b!4726633 (= lt!1891288 call!330697)))

(assert (=> b!4726633 call!330696))

(declare-fun lt!1891298 () Unit!131013)

(assert (=> b!4726633 (= lt!1891298 lt!1891288)))

(assert (=> b!4726633 (forall!11612 (toList!5942 lt!1891286) lambda!216364)))

(declare-fun lt!1891291 () Unit!131013)

(declare-fun Unit!131033 () Unit!131013)

(assert (=> b!4726633 (= lt!1891291 Unit!131033)))

(assert (=> b!4726633 call!330695))

(declare-fun lt!1891293 () Unit!131013)

(declare-fun Unit!131034 () Unit!131013)

(assert (=> b!4726633 (= lt!1891293 Unit!131034)))

(declare-fun lt!1891297 () Unit!131013)

(declare-fun Unit!131035 () Unit!131013)

(assert (=> b!4726633 (= lt!1891297 Unit!131035)))

(declare-fun lt!1891289 () Unit!131013)

(declare-fun forallContained!3653 (List!52984 Int tuple2!54498) Unit!131013)

(assert (=> b!4726633 (= lt!1891289 (forallContained!3653 (toList!5942 lt!1891286) lambda!216364 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(assert (=> b!4726633 (contains!16210 lt!1891286 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(declare-fun lt!1891296 () Unit!131013)

(declare-fun Unit!131036 () Unit!131013)

(assert (=> b!4726633 (= lt!1891296 Unit!131036)))

(assert (=> b!4726633 (contains!16210 lt!1891304 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(declare-fun lt!1891287 () Unit!131013)

(declare-fun Unit!131037 () Unit!131013)

(assert (=> b!4726633 (= lt!1891287 Unit!131037)))

(assert (=> b!4726633 (forall!11612 (_2!30544 (h!59214 (toList!5941 lm!2023))) lambda!216364)))

(declare-fun lt!1891294 () Unit!131013)

(declare-fun Unit!131038 () Unit!131013)

(assert (=> b!4726633 (= lt!1891294 Unit!131038)))

(assert (=> b!4726633 (forall!11612 (toList!5942 lt!1891286) lambda!216364)))

(declare-fun lt!1891301 () Unit!131013)

(declare-fun Unit!131039 () Unit!131013)

(assert (=> b!4726633 (= lt!1891301 Unit!131039)))

(declare-fun lt!1891292 () Unit!131013)

(declare-fun Unit!131040 () Unit!131013)

(assert (=> b!4726633 (= lt!1891292 Unit!131040)))

(declare-fun lt!1891290 () Unit!131013)

(declare-fun addForallContainsKeyThenBeforeAdding!802 (ListMap!5305 ListMap!5305 K!14215 V!14461) Unit!131013)

(assert (=> b!4726633 (= lt!1891290 (addForallContainsKeyThenBeforeAdding!802 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) lt!1891304 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (_2!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> b!4726633 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lambda!216364)))

(declare-fun lt!1891295 () Unit!131013)

(assert (=> b!4726633 (= lt!1891295 lt!1891290)))

(assert (=> b!4726633 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lambda!216364)))

(declare-fun lt!1891299 () Unit!131013)

(declare-fun Unit!131041 () Unit!131013)

(assert (=> b!4726633 (= lt!1891299 Unit!131041)))

(declare-fun res!2000367 () Bool)

(assert (=> b!4726633 (= res!2000367 (forall!11612 (_2!30544 (h!59214 (toList!5941 lm!2023))) lambda!216364))))

(assert (=> b!4726633 (=> (not res!2000367) (not e!2947926))))

(assert (=> b!4726633 e!2947926))

(declare-fun lt!1891300 () Unit!131013)

(declare-fun Unit!131042 () Unit!131013)

(assert (=> b!4726633 (= lt!1891300 Unit!131042)))

(assert (=> d!1505883 e!2947927))

(declare-fun res!2000365 () Bool)

(assert (=> d!1505883 (=> (not res!2000365) (not e!2947927))))

(assert (=> d!1505883 (= res!2000365 (forall!11612 (_2!30544 (h!59214 (toList!5941 lm!2023))) lambda!216365))))

(assert (=> d!1505883 (= lt!1891302 e!2947928)))

(assert (=> d!1505883 (= c!807218 ((_ is Nil!52860) (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(assert (=> d!1505883 (noDuplicateKeys!2026 (_2!30544 (h!59214 (toList!5941 lm!2023))))))

(assert (=> d!1505883 (= (addToMapMapFromBucket!1456 (_2!30544 (h!59214 (toList!5941 lm!2023))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lt!1891302)))

(assert (= (and d!1505883 c!807218) b!4726631))

(assert (= (and d!1505883 (not c!807218)) b!4726633))

(assert (= (and b!4726633 res!2000367) b!4726632))

(assert (= (or b!4726631 b!4726633) bm!330690))

(assert (= (or b!4726631 b!4726633) bm!330691))

(assert (= (or b!4726631 b!4726633) bm!330692))

(assert (= (and d!1505883 res!2000365) b!4726634))

(assert (= (and b!4726634 res!2000366) b!4726630))

(declare-fun m!5666393 () Bool)

(assert (=> d!1505883 m!5666393))

(declare-fun m!5666395 () Bool)

(assert (=> d!1505883 m!5666395))

(declare-fun m!5666397 () Bool)

(assert (=> bm!330692 m!5666397))

(declare-fun m!5666399 () Bool)

(assert (=> b!4726633 m!5666399))

(declare-fun m!5666401 () Bool)

(assert (=> b!4726633 m!5666401))

(assert (=> b!4726633 m!5666051))

(declare-fun m!5666403 () Bool)

(assert (=> b!4726633 m!5666403))

(declare-fun m!5666405 () Bool)

(assert (=> b!4726633 m!5666405))

(assert (=> b!4726633 m!5666399))

(declare-fun m!5666407 () Bool)

(assert (=> b!4726633 m!5666407))

(declare-fun m!5666409 () Bool)

(assert (=> b!4726633 m!5666409))

(assert (=> b!4726633 m!5666405))

(assert (=> b!4726633 m!5666401))

(declare-fun m!5666411 () Bool)

(assert (=> b!4726633 m!5666411))

(declare-fun m!5666413 () Bool)

(assert (=> b!4726633 m!5666413))

(declare-fun m!5666415 () Bool)

(assert (=> b!4726633 m!5666415))

(assert (=> b!4726633 m!5666051))

(assert (=> b!4726633 m!5666407))

(assert (=> b!4726632 m!5666401))

(declare-fun m!5666417 () Bool)

(assert (=> b!4726630 m!5666417))

(declare-fun m!5666419 () Bool)

(assert (=> bm!330691 m!5666419))

(assert (=> bm!330690 m!5666051))

(declare-fun m!5666421 () Bool)

(assert (=> bm!330690 m!5666421))

(declare-fun m!5666423 () Bool)

(assert (=> b!4726634 m!5666423))

(assert (=> b!4726321 d!1505883))

(declare-fun bs!1118039 () Bool)

(declare-fun d!1505891 () Bool)

(assert (= bs!1118039 (and d!1505891 start!481216)))

(declare-fun lambda!216366 () Int)

(assert (=> bs!1118039 (= lambda!216366 lambda!216260)))

(declare-fun bs!1118040 () Bool)

(assert (= bs!1118040 (and d!1505891 d!1505801)))

(assert (=> bs!1118040 (= lambda!216366 lambda!216272)))

(declare-fun bs!1118041 () Bool)

(assert (= bs!1118041 (and d!1505891 d!1505881)))

(assert (=> bs!1118041 (not (= lambda!216366 lambda!216309))))

(declare-fun bs!1118042 () Bool)

(assert (= bs!1118042 (and d!1505891 d!1505857)))

(assert (=> bs!1118042 (= lambda!216366 lambda!216289)))

(declare-fun bs!1118043 () Bool)

(assert (= bs!1118043 (and d!1505891 d!1505859)))

(assert (=> bs!1118043 (= lambda!216366 lambda!216296)))

(declare-fun lt!1891307 () ListMap!5305)

(assert (=> d!1505891 (invariantList!1517 (toList!5942 lt!1891307))))

(declare-fun e!2947929 () ListMap!5305)

(assert (=> d!1505891 (= lt!1891307 e!2947929)))

(declare-fun c!807219 () Bool)

(assert (=> d!1505891 (= c!807219 ((_ is Cons!52861) (t!360261 (toList!5941 lm!2023))))))

(assert (=> d!1505891 (forall!11610 (t!360261 (toList!5941 lm!2023)) lambda!216366)))

(assert (=> d!1505891 (= (extractMap!2052 (t!360261 (toList!5941 lm!2023))) lt!1891307)))

(declare-fun b!4726637 () Bool)

(assert (=> b!4726637 (= e!2947929 (addToMapMapFromBucket!1456 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))) (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))))))

(declare-fun b!4726638 () Bool)

(assert (=> b!4726638 (= e!2947929 (ListMap!5306 Nil!52860))))

(assert (= (and d!1505891 c!807219) b!4726637))

(assert (= (and d!1505891 (not c!807219)) b!4726638))

(declare-fun m!5666425 () Bool)

(assert (=> d!1505891 m!5666425))

(declare-fun m!5666427 () Bool)

(assert (=> d!1505891 m!5666427))

(declare-fun m!5666429 () Bool)

(assert (=> b!4726637 m!5666429))

(assert (=> b!4726637 m!5666429))

(declare-fun m!5666431 () Bool)

(assert (=> b!4726637 m!5666431))

(assert (=> b!4726321 d!1505891))

(declare-fun tp!1348608 () Bool)

(declare-fun e!2947932 () Bool)

(declare-fun b!4726643 () Bool)

(assert (=> b!4726643 (= e!2947932 (and tp_is_empty!31397 tp_is_empty!31399 tp!1348608))))

(assert (=> b!4726322 (= tp!1348593 e!2947932)))

(assert (= (and b!4726322 ((_ is Cons!52860) (t!360260 oldBucket!34))) b!4726643))

(declare-fun tp!1348609 () Bool)

(declare-fun b!4726644 () Bool)

(declare-fun e!2947933 () Bool)

(assert (=> b!4726644 (= e!2947933 (and tp_is_empty!31397 tp_is_empty!31399 tp!1348609))))

(assert (=> b!4726319 (= tp!1348595 e!2947933)))

(assert (= (and b!4726319 ((_ is Cons!52860) (t!360260 newBucket!218))) b!4726644))

(declare-fun b!4726649 () Bool)

(declare-fun e!2947936 () Bool)

(declare-fun tp!1348614 () Bool)

(declare-fun tp!1348615 () Bool)

(assert (=> b!4726649 (= e!2947936 (and tp!1348614 tp!1348615))))

(assert (=> b!4726331 (= tp!1348594 e!2947936)))

(assert (= (and b!4726331 ((_ is Cons!52861) (toList!5941 lm!2023))) b!4726649))

(declare-fun b_lambda!179629 () Bool)

(assert (= b_lambda!179619 (or start!481216 b_lambda!179629)))

(declare-fun bs!1118044 () Bool)

(declare-fun d!1505893 () Bool)

(assert (= bs!1118044 (and d!1505893 start!481216)))

(assert (=> bs!1118044 (= (dynLambda!21830 lambda!216260 (h!59214 (toList!5941 lm!2023))) (noDuplicateKeys!2026 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(assert (=> bs!1118044 m!5666395))

(assert (=> b!4726465 d!1505893))

(declare-fun b_lambda!179631 () Bool)

(assert (= b_lambda!179621 (or start!481216 b_lambda!179631)))

(declare-fun bs!1118045 () Bool)

(declare-fun d!1505895 () Bool)

(assert (= bs!1118045 (and d!1505895 start!481216)))

(assert (=> bs!1118045 (= (dynLambda!21830 lambda!216260 lt!1891011) (noDuplicateKeys!2026 (_2!30544 lt!1891011)))))

(declare-fun m!5666433 () Bool)

(assert (=> bs!1118045 m!5666433))

(assert (=> d!1505827 d!1505895))

(check-sat (not bm!330690) (not d!1505883) (not b!4726403) (not b!4726633) (not b!4726398) (not b!4726546) (not d!1505871) (not b!4726557) (not d!1505881) (not b!4726589) (not d!1505825) (not b!4726395) (not b!4726555) (not d!1505847) tp_is_empty!31399 tp_is_empty!31397 (not b!4726634) (not d!1505801) (not b!4726397) (not b!4726556) (not b_lambda!179631) (not b!4726630) (not bs!1118045) (not b!4726559) (not b!4726566) (not b!4726539) (not b!4726541) (not bs!1118044) (not b!4726506) (not d!1505857) (not b!4726588) (not d!1505827) (not d!1505865) (not b!4726466) (not b!4726632) (not b!4726476) (not d!1505891) (not b!4726542) (not b!4726400) (not d!1505821) (not b!4726644) (not b!4726504) (not bm!330674) (not d!1505873) (not b!4726562) (not b!4726565) (not d!1505861) (not b!4726591) (not d!1505829) (not b!4726396) (not b!4726545) (not bm!330692) (not b!4726649) (not b!4726643) (not d!1505863) (not d!1505823) (not d!1505859) (not d!1505869) (not b!4726479) (not b!4726578) (not d!1505841) (not d!1505839) (not b_lambda!179629) (not bm!330691) (not b!4726558) (not d!1505785) (not b!4726590) (not b!4726399) (not b!4726459) (not b!4726637) (not d!1505867) (not b!4726561))
(check-sat)
(get-model)

(assert (=> b!4726555 d!1505881))

(declare-fun d!1505909 () Bool)

(declare-fun res!2000384 () Bool)

(declare-fun e!2947959 () Bool)

(assert (=> d!1505909 (=> res!2000384 e!2947959)))

(assert (=> d!1505909 (= res!2000384 ((_ is Nil!52860) oldBucket!34))))

(assert (=> d!1505909 (= (forall!11612 oldBucket!34 lambda!216275) e!2947959)))

(declare-fun b!4726678 () Bool)

(declare-fun e!2947960 () Bool)

(assert (=> b!4726678 (= e!2947959 e!2947960)))

(declare-fun res!2000385 () Bool)

(assert (=> b!4726678 (=> (not res!2000385) (not e!2947960))))

(declare-fun dynLambda!21832 (Int tuple2!54498) Bool)

(assert (=> b!4726678 (= res!2000385 (dynLambda!21832 lambda!216275 (h!59213 oldBucket!34)))))

(declare-fun b!4726679 () Bool)

(assert (=> b!4726679 (= e!2947960 (forall!11612 (t!360260 oldBucket!34) lambda!216275))))

(assert (= (and d!1505909 (not res!2000384)) b!4726678))

(assert (= (and b!4726678 res!2000385) b!4726679))

(declare-fun b_lambda!179639 () Bool)

(assert (=> (not b_lambda!179639) (not b!4726678)))

(declare-fun m!5666453 () Bool)

(assert (=> b!4726678 m!5666453))

(declare-fun m!5666455 () Bool)

(assert (=> b!4726679 m!5666455))

(assert (=> d!1505823 d!1505909))

(declare-fun d!1505915 () Bool)

(declare-fun noDuplicatedKeys!378 (List!52984) Bool)

(assert (=> d!1505915 (= (invariantList!1517 (toList!5942 lt!1891097)) (noDuplicatedKeys!378 (toList!5942 lt!1891097)))))

(declare-fun bs!1118047 () Bool)

(assert (= bs!1118047 d!1505915))

(declare-fun m!5666457 () Bool)

(assert (=> bs!1118047 m!5666457))

(assert (=> d!1505801 d!1505915))

(declare-fun d!1505917 () Bool)

(declare-fun res!2000386 () Bool)

(declare-fun e!2947961 () Bool)

(assert (=> d!1505917 (=> res!2000386 e!2947961)))

(assert (=> d!1505917 (= res!2000386 ((_ is Nil!52861) (toList!5941 lm!2023)))))

(assert (=> d!1505917 (= (forall!11610 (toList!5941 lm!2023) lambda!216272) e!2947961)))

(declare-fun b!4726680 () Bool)

(declare-fun e!2947962 () Bool)

(assert (=> b!4726680 (= e!2947961 e!2947962)))

(declare-fun res!2000387 () Bool)

(assert (=> b!4726680 (=> (not res!2000387) (not e!2947962))))

(assert (=> b!4726680 (= res!2000387 (dynLambda!21830 lambda!216272 (h!59214 (toList!5941 lm!2023))))))

(declare-fun b!4726681 () Bool)

(assert (=> b!4726681 (= e!2947962 (forall!11610 (t!360261 (toList!5941 lm!2023)) lambda!216272))))

(assert (= (and d!1505917 (not res!2000386)) b!4726680))

(assert (= (and b!4726680 res!2000387) b!4726681))

(declare-fun b_lambda!179641 () Bool)

(assert (=> (not b_lambda!179641) (not b!4726680)))

(declare-fun m!5666459 () Bool)

(assert (=> b!4726680 m!5666459))

(declare-fun m!5666461 () Bool)

(assert (=> b!4726681 m!5666461))

(assert (=> d!1505801 d!1505917))

(declare-fun d!1505919 () Bool)

(declare-fun lt!1891318 () Bool)

(declare-fun content!9408 (List!52987) (InoxSet K!14215))

(assert (=> d!1505919 (= lt!1891318 (select (content!9408 (keys!18992 lt!1891010)) key!4653))))

(declare-fun e!2947983 () Bool)

(assert (=> d!1505919 (= lt!1891318 e!2947983)))

(declare-fun res!2000406 () Bool)

(assert (=> d!1505919 (=> (not res!2000406) (not e!2947983))))

(assert (=> d!1505919 (= res!2000406 ((_ is Cons!52863) (keys!18992 lt!1891010)))))

(assert (=> d!1505919 (= (contains!16213 (keys!18992 lt!1891010) key!4653) lt!1891318)))

(declare-fun b!4726705 () Bool)

(declare-fun e!2947984 () Bool)

(assert (=> b!4726705 (= e!2947983 e!2947984)))

(declare-fun res!2000405 () Bool)

(assert (=> b!4726705 (=> res!2000405 e!2947984)))

(assert (=> b!4726705 (= res!2000405 (= (h!59218 (keys!18992 lt!1891010)) key!4653))))

(declare-fun b!4726706 () Bool)

(assert (=> b!4726706 (= e!2947984 (contains!16213 (t!360263 (keys!18992 lt!1891010)) key!4653))))

(assert (= (and d!1505919 res!2000406) b!4726705))

(assert (= (and b!4726705 (not res!2000405)) b!4726706))

(assert (=> d!1505919 m!5666127))

(declare-fun m!5666487 () Bool)

(assert (=> d!1505919 m!5666487))

(declare-fun m!5666489 () Bool)

(assert (=> d!1505919 m!5666489))

(declare-fun m!5666493 () Bool)

(assert (=> b!4726706 m!5666493))

(assert (=> b!4726395 d!1505919))

(declare-fun b!4726722 () Bool)

(assert (=> b!4726722 true))

(declare-fun d!1505927 () Bool)

(declare-fun e!2947995 () Bool)

(assert (=> d!1505927 e!2947995))

(declare-fun res!2000422 () Bool)

(assert (=> d!1505927 (=> (not res!2000422) (not e!2947995))))

(declare-fun lt!1891324 () List!52987)

(declare-fun noDuplicate!864 (List!52987) Bool)

(assert (=> d!1505927 (= res!2000422 (noDuplicate!864 lt!1891324))))

(assert (=> d!1505927 (= lt!1891324 (getKeysList!957 (toList!5942 lt!1891010)))))

(assert (=> d!1505927 (= (keys!18992 lt!1891010) lt!1891324)))

(declare-fun b!4726721 () Bool)

(declare-fun res!2000421 () Bool)

(assert (=> b!4726721 (=> (not res!2000421) (not e!2947995))))

(declare-fun length!584 (List!52987) Int)

(declare-fun length!585 (List!52984) Int)

(assert (=> b!4726721 (= res!2000421 (= (length!584 lt!1891324) (length!585 (toList!5942 lt!1891010))))))

(declare-fun res!2000423 () Bool)

(assert (=> b!4726722 (=> (not res!2000423) (not e!2947995))))

(declare-fun lambda!216371 () Int)

(declare-fun forall!11613 (List!52987 Int) Bool)

(assert (=> b!4726722 (= res!2000423 (forall!11613 lt!1891324 lambda!216371))))

(declare-fun lambda!216372 () Int)

(declare-fun b!4726723 () Bool)

(declare-fun map!11690 (List!52984 Int) List!52987)

(assert (=> b!4726723 (= e!2947995 (= (content!9408 lt!1891324) (content!9408 (map!11690 (toList!5942 lt!1891010) lambda!216372))))))

(assert (= (and d!1505927 res!2000422) b!4726721))

(assert (= (and b!4726721 res!2000421) b!4726722))

(assert (= (and b!4726722 res!2000423) b!4726723))

(declare-fun m!5666509 () Bool)

(assert (=> d!1505927 m!5666509))

(assert (=> d!1505927 m!5666125))

(declare-fun m!5666511 () Bool)

(assert (=> b!4726721 m!5666511))

(declare-fun m!5666513 () Bool)

(assert (=> b!4726721 m!5666513))

(declare-fun m!5666515 () Bool)

(assert (=> b!4726722 m!5666515))

(declare-fun m!5666517 () Bool)

(assert (=> b!4726723 m!5666517))

(declare-fun m!5666519 () Bool)

(assert (=> b!4726723 m!5666519))

(assert (=> b!4726723 m!5666519))

(declare-fun m!5666521 () Bool)

(assert (=> b!4726723 m!5666521))

(assert (=> b!4726395 d!1505927))

(declare-fun d!1505937 () Bool)

(assert (=> d!1505937 (= (isEmpty!29183 (getPair!566 lt!1891013 key!4653)) (not ((_ is Some!12370) (getPair!566 lt!1891013 key!4653))))))

(assert (=> d!1505865 d!1505937))

(declare-fun d!1505939 () Bool)

(declare-fun res!2000428 () Bool)

(declare-fun e!2948000 () Bool)

(assert (=> d!1505939 (=> res!2000428 e!2948000)))

(assert (=> d!1505939 (= res!2000428 (and ((_ is Cons!52860) (t!360260 newBucket!218)) (= (_1!30543 (h!59213 (t!360260 newBucket!218))) (_1!30543 (h!59213 newBucket!218)))))))

(assert (=> d!1505939 (= (containsKey!3389 (t!360260 newBucket!218) (_1!30543 (h!59213 newBucket!218))) e!2948000)))

(declare-fun b!4726730 () Bool)

(declare-fun e!2948001 () Bool)

(assert (=> b!4726730 (= e!2948000 e!2948001)))

(declare-fun res!2000429 () Bool)

(assert (=> b!4726730 (=> (not res!2000429) (not e!2948001))))

(assert (=> b!4726730 (= res!2000429 ((_ is Cons!52860) (t!360260 newBucket!218)))))

(declare-fun b!4726731 () Bool)

(assert (=> b!4726731 (= e!2948001 (containsKey!3389 (t!360260 (t!360260 newBucket!218)) (_1!30543 (h!59213 newBucket!218))))))

(assert (= (and d!1505939 (not res!2000428)) b!4726730))

(assert (= (and b!4726730 res!2000429) b!4726731))

(declare-fun m!5666523 () Bool)

(assert (=> b!4726731 m!5666523))

(assert (=> b!4726590 d!1505939))

(declare-fun d!1505941 () Bool)

(declare-fun choose!33376 (Hashable!6395 K!14215) (_ BitVec 64))

(assert (=> d!1505941 (= (hash!4404 hashF!1323 key!4653) (choose!33376 hashF!1323 key!4653))))

(declare-fun bs!1118048 () Bool)

(assert (= bs!1118048 d!1505941))

(declare-fun m!5666525 () Bool)

(assert (=> bs!1118048 m!5666525))

(assert (=> d!1505869 d!1505941))

(declare-fun d!1505943 () Bool)

(declare-fun res!2000430 () Bool)

(declare-fun e!2948002 () Bool)

(assert (=> d!1505943 (=> res!2000430 e!2948002)))

(assert (=> d!1505943 (= res!2000430 ((_ is Nil!52860) (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023))))))))

(assert (=> d!1505943 (= (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lambda!216365) e!2948002)))

(declare-fun b!4726732 () Bool)

(declare-fun e!2948003 () Bool)

(assert (=> b!4726732 (= e!2948002 e!2948003)))

(declare-fun res!2000431 () Bool)

(assert (=> b!4726732 (=> (not res!2000431) (not e!2948003))))

(assert (=> b!4726732 (= res!2000431 (dynLambda!21832 lambda!216365 (h!59213 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))))))))

(declare-fun b!4726733 () Bool)

(assert (=> b!4726733 (= e!2948003 (forall!11612 (t!360260 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023))))) lambda!216365))))

(assert (= (and d!1505943 (not res!2000430)) b!4726732))

(assert (= (and b!4726732 res!2000431) b!4726733))

(declare-fun b_lambda!179645 () Bool)

(assert (=> (not b_lambda!179645) (not b!4726732)))

(declare-fun m!5666527 () Bool)

(assert (=> b!4726732 m!5666527))

(declare-fun m!5666529 () Bool)

(assert (=> b!4726733 m!5666529))

(assert (=> b!4726634 d!1505943))

(declare-fun d!1505945 () Bool)

(declare-fun res!2000436 () Bool)

(declare-fun e!2948008 () Bool)

(assert (=> d!1505945 (=> res!2000436 e!2948008)))

(assert (=> d!1505945 (= res!2000436 (and ((_ is Cons!52860) (toList!5942 lt!1891010)) (= (_1!30543 (h!59213 (toList!5942 lt!1891010))) key!4653)))))

(assert (=> d!1505945 (= (containsKey!3387 (toList!5942 lt!1891010) key!4653) e!2948008)))

(declare-fun b!4726738 () Bool)

(declare-fun e!2948009 () Bool)

(assert (=> b!4726738 (= e!2948008 e!2948009)))

(declare-fun res!2000437 () Bool)

(assert (=> b!4726738 (=> (not res!2000437) (not e!2948009))))

(assert (=> b!4726738 (= res!2000437 ((_ is Cons!52860) (toList!5942 lt!1891010)))))

(declare-fun b!4726739 () Bool)

(assert (=> b!4726739 (= e!2948009 (containsKey!3387 (t!360260 (toList!5942 lt!1891010)) key!4653))))

(assert (= (and d!1505945 (not res!2000436)) b!4726738))

(assert (= (and b!4726738 res!2000437) b!4726739))

(declare-fun m!5666531 () Bool)

(assert (=> b!4726739 m!5666531))

(assert (=> b!4726397 d!1505945))

(declare-fun d!1505947 () Bool)

(assert (=> d!1505947 (containsKey!3387 (toList!5942 lt!1891010) key!4653)))

(declare-fun lt!1891327 () Unit!131013)

(declare-fun choose!33377 (List!52984 K!14215) Unit!131013)

(assert (=> d!1505947 (= lt!1891327 (choose!33377 (toList!5942 lt!1891010) key!4653))))

(assert (=> d!1505947 (invariantList!1517 (toList!5942 lt!1891010))))

(assert (=> d!1505947 (= (lemmaInGetKeysListThenContainsKey!956 (toList!5942 lt!1891010) key!4653) lt!1891327)))

(declare-fun bs!1118049 () Bool)

(assert (= bs!1118049 d!1505947))

(assert (=> bs!1118049 m!5666133))

(declare-fun m!5666533 () Bool)

(assert (=> bs!1118049 m!5666533))

(declare-fun m!5666535 () Bool)

(assert (=> bs!1118049 m!5666535))

(assert (=> b!4726397 d!1505947))

(declare-fun d!1505949 () Bool)

(declare-fun res!2000438 () Bool)

(declare-fun e!2948010 () Bool)

(assert (=> d!1505949 (=> res!2000438 e!2948010)))

(assert (=> d!1505949 (= res!2000438 ((_ is Nil!52860) (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023))))))))

(assert (=> d!1505949 (= (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lambda!216364) e!2948010)))

(declare-fun b!4726740 () Bool)

(declare-fun e!2948011 () Bool)

(assert (=> b!4726740 (= e!2948010 e!2948011)))

(declare-fun res!2000439 () Bool)

(assert (=> b!4726740 (=> (not res!2000439) (not e!2948011))))

(assert (=> b!4726740 (= res!2000439 (dynLambda!21832 lambda!216364 (h!59213 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))))))))

(declare-fun b!4726741 () Bool)

(assert (=> b!4726741 (= e!2948011 (forall!11612 (t!360260 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023))))) lambda!216364))))

(assert (= (and d!1505949 (not res!2000438)) b!4726740))

(assert (= (and b!4726740 res!2000439) b!4726741))

(declare-fun b_lambda!179647 () Bool)

(assert (=> (not b_lambda!179647) (not b!4726740)))

(declare-fun m!5666537 () Bool)

(assert (=> b!4726740 m!5666537))

(declare-fun m!5666539 () Bool)

(assert (=> b!4726741 m!5666539))

(assert (=> b!4726632 d!1505949))

(declare-fun d!1505951 () Bool)

(assert (=> d!1505951 (isDefined!9628 (getValueByKey!1966 (toList!5942 lt!1891010) key!4653))))

(declare-fun lt!1891330 () Unit!131013)

(declare-fun choose!33378 (List!52984 K!14215) Unit!131013)

(assert (=> d!1505951 (= lt!1891330 (choose!33378 (toList!5942 lt!1891010) key!4653))))

(assert (=> d!1505951 (invariantList!1517 (toList!5942 lt!1891010))))

(assert (=> d!1505951 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1857 (toList!5942 lt!1891010) key!4653) lt!1891330)))

(declare-fun bs!1118050 () Bool)

(assert (= bs!1118050 d!1505951))

(assert (=> bs!1118050 m!5666117))

(assert (=> bs!1118050 m!5666117))

(assert (=> bs!1118050 m!5666119))

(declare-fun m!5666541 () Bool)

(assert (=> bs!1118050 m!5666541))

(assert (=> bs!1118050 m!5666535))

(assert (=> b!4726399 d!1505951))

(declare-fun d!1505953 () Bool)

(declare-fun isEmpty!29184 (Option!12374) Bool)

(assert (=> d!1505953 (= (isDefined!9628 (getValueByKey!1966 (toList!5942 lt!1891010) key!4653)) (not (isEmpty!29184 (getValueByKey!1966 (toList!5942 lt!1891010) key!4653))))))

(declare-fun bs!1118051 () Bool)

(assert (= bs!1118051 d!1505953))

(assert (=> bs!1118051 m!5666117))

(declare-fun m!5666543 () Bool)

(assert (=> bs!1118051 m!5666543))

(assert (=> b!4726399 d!1505953))

(declare-fun b!4726763 () Bool)

(declare-fun e!2948022 () Option!12374)

(declare-fun e!2948023 () Option!12374)

(assert (=> b!4726763 (= e!2948022 e!2948023)))

(declare-fun c!807240 () Bool)

(assert (=> b!4726763 (= c!807240 (and ((_ is Cons!52860) (toList!5942 lt!1891010)) (not (= (_1!30543 (h!59213 (toList!5942 lt!1891010))) key!4653))))))

(declare-fun b!4726765 () Bool)

(assert (=> b!4726765 (= e!2948023 None!12373)))

(declare-fun b!4726764 () Bool)

(assert (=> b!4726764 (= e!2948023 (getValueByKey!1966 (t!360260 (toList!5942 lt!1891010)) key!4653))))

(declare-fun d!1505955 () Bool)

(declare-fun c!807239 () Bool)

(assert (=> d!1505955 (= c!807239 (and ((_ is Cons!52860) (toList!5942 lt!1891010)) (= (_1!30543 (h!59213 (toList!5942 lt!1891010))) key!4653)))))

(assert (=> d!1505955 (= (getValueByKey!1966 (toList!5942 lt!1891010) key!4653) e!2948022)))

(declare-fun b!4726762 () Bool)

(assert (=> b!4726762 (= e!2948022 (Some!12373 (_2!30543 (h!59213 (toList!5942 lt!1891010)))))))

(assert (= (and d!1505955 c!807239) b!4726762))

(assert (= (and d!1505955 (not c!807239)) b!4726763))

(assert (= (and b!4726763 c!807240) b!4726764))

(assert (= (and b!4726763 (not c!807240)) b!4726765))

(declare-fun m!5666545 () Bool)

(assert (=> b!4726764 m!5666545))

(assert (=> b!4726399 d!1505955))

(declare-fun d!1505957 () Bool)

(assert (=> d!1505957 (contains!16213 (getKeysList!957 (toList!5942 lt!1891010)) key!4653)))

(declare-fun lt!1891347 () Unit!131013)

(declare-fun choose!33379 (List!52984 K!14215) Unit!131013)

(assert (=> d!1505957 (= lt!1891347 (choose!33379 (toList!5942 lt!1891010) key!4653))))

(assert (=> d!1505957 (invariantList!1517 (toList!5942 lt!1891010))))

(assert (=> d!1505957 (= (lemmaInListThenGetKeysListContains!952 (toList!5942 lt!1891010) key!4653) lt!1891347)))

(declare-fun bs!1118052 () Bool)

(assert (= bs!1118052 d!1505957))

(assert (=> bs!1118052 m!5666125))

(assert (=> bs!1118052 m!5666125))

(declare-fun m!5666547 () Bool)

(assert (=> bs!1118052 m!5666547))

(declare-fun m!5666549 () Bool)

(assert (=> bs!1118052 m!5666549))

(assert (=> bs!1118052 m!5666535))

(assert (=> b!4726399 d!1505957))

(declare-fun d!1505959 () Bool)

(declare-fun res!2000446 () Bool)

(declare-fun e!2948026 () Bool)

(assert (=> d!1505959 (=> res!2000446 e!2948026)))

(assert (=> d!1505959 (= res!2000446 ((_ is Nil!52860) newBucket!218))))

(assert (=> d!1505959 (= (forall!11612 newBucket!218 lambda!216297) e!2948026)))

(declare-fun b!4726772 () Bool)

(declare-fun e!2948027 () Bool)

(assert (=> b!4726772 (= e!2948026 e!2948027)))

(declare-fun res!2000447 () Bool)

(assert (=> b!4726772 (=> (not res!2000447) (not e!2948027))))

(assert (=> b!4726772 (= res!2000447 (dynLambda!21832 lambda!216297 (h!59213 newBucket!218)))))

(declare-fun b!4726773 () Bool)

(assert (=> b!4726773 (= e!2948027 (forall!11612 (t!360260 newBucket!218) lambda!216297))))

(assert (= (and d!1505959 (not res!2000446)) b!4726772))

(assert (= (and b!4726772 res!2000447) b!4726773))

(declare-fun b_lambda!179649 () Bool)

(assert (=> (not b_lambda!179649) (not b!4726772)))

(declare-fun m!5666551 () Bool)

(assert (=> b!4726772 m!5666551))

(declare-fun m!5666553 () Bool)

(assert (=> b!4726773 m!5666553))

(assert (=> d!1505873 d!1505959))

(declare-fun d!1505961 () Bool)

(assert (=> d!1505961 (= (isDefined!9625 lt!1891145) (not (isEmpty!29183 lt!1891145)))))

(declare-fun bs!1118053 () Bool)

(assert (= bs!1118053 d!1505961))

(assert (=> bs!1118053 m!5666271))

(assert (=> b!4726545 d!1505961))

(declare-fun d!1505963 () Bool)

(assert (=> d!1505963 (= (invariantList!1517 (toList!5942 lt!1891302)) (noDuplicatedKeys!378 (toList!5942 lt!1891302)))))

(declare-fun bs!1118054 () Bool)

(assert (= bs!1118054 d!1505963))

(declare-fun m!5666555 () Bool)

(assert (=> bs!1118054 m!5666555))

(assert (=> b!4726630 d!1505963))

(assert (=> b!4726400 d!1505919))

(assert (=> b!4726400 d!1505927))

(declare-fun bs!1118055 () Bool)

(declare-fun b!4726775 () Bool)

(assert (= bs!1118055 (and b!4726775 b!4726633)))

(declare-fun lambda!216381 () Int)

(assert (=> bs!1118055 (= (= (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) lt!1891304) (= lambda!216381 lambda!216364))))

(declare-fun bs!1118056 () Bool)

(assert (= bs!1118056 (and b!4726775 d!1505823)))

(assert (=> bs!1118056 (not (= lambda!216381 lambda!216275))))

(declare-fun bs!1118057 () Bool)

(assert (= bs!1118057 (and b!4726775 d!1505873)))

(assert (=> bs!1118057 (not (= lambda!216381 lambda!216297))))

(declare-fun bs!1118058 () Bool)

(assert (= bs!1118058 (and b!4726775 d!1505883)))

(assert (=> bs!1118058 (= (= (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) lt!1891302) (= lambda!216381 lambda!216365))))

(declare-fun bs!1118059 () Bool)

(assert (= bs!1118059 (and b!4726775 b!4726631)))

(assert (=> bs!1118059 (= (= (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216381 lambda!216362))))

(assert (=> bs!1118055 (= (= (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216381 lambda!216363))))

(assert (=> b!4726775 true))

(declare-fun bs!1118060 () Bool)

(declare-fun b!4726777 () Bool)

(assert (= bs!1118060 (and b!4726777 b!4726633)))

(declare-fun lambda!216382 () Int)

(assert (=> bs!1118060 (= (= (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) lt!1891304) (= lambda!216382 lambda!216364))))

(declare-fun bs!1118061 () Bool)

(assert (= bs!1118061 (and b!4726777 d!1505823)))

(assert (=> bs!1118061 (not (= lambda!216382 lambda!216275))))

(declare-fun bs!1118062 () Bool)

(assert (= bs!1118062 (and b!4726777 b!4726775)))

(assert (=> bs!1118062 (= lambda!216382 lambda!216381)))

(declare-fun bs!1118063 () Bool)

(assert (= bs!1118063 (and b!4726777 d!1505873)))

(assert (=> bs!1118063 (not (= lambda!216382 lambda!216297))))

(declare-fun bs!1118064 () Bool)

(assert (= bs!1118064 (and b!4726777 d!1505883)))

(assert (=> bs!1118064 (= (= (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) lt!1891302) (= lambda!216382 lambda!216365))))

(declare-fun bs!1118065 () Bool)

(assert (= bs!1118065 (and b!4726777 b!4726631)))

(assert (=> bs!1118065 (= (= (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216382 lambda!216362))))

(assert (=> bs!1118060 (= (= (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216382 lambda!216363))))

(assert (=> b!4726777 true))

(declare-fun lt!1891366 () ListMap!5305)

(declare-fun lambda!216384 () Int)

(assert (=> bs!1118060 (= (= lt!1891366 lt!1891304) (= lambda!216384 lambda!216364))))

(assert (=> bs!1118061 (not (= lambda!216384 lambda!216275))))

(assert (=> bs!1118062 (= (= lt!1891366 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216384 lambda!216381))))

(assert (=> b!4726777 (= (= lt!1891366 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216384 lambda!216382))))

(assert (=> bs!1118063 (not (= lambda!216384 lambda!216297))))

(assert (=> bs!1118064 (= (= lt!1891366 lt!1891302) (= lambda!216384 lambda!216365))))

(assert (=> bs!1118065 (= (= lt!1891366 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216384 lambda!216362))))

(assert (=> bs!1118060 (= (= lt!1891366 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216384 lambda!216363))))

(assert (=> b!4726777 true))

(declare-fun bs!1118069 () Bool)

(declare-fun d!1505965 () Bool)

(assert (= bs!1118069 (and d!1505965 b!4726777)))

(declare-fun lambda!216388 () Int)

(declare-fun lt!1891364 () ListMap!5305)

(assert (=> bs!1118069 (= (= lt!1891364 lt!1891366) (= lambda!216388 lambda!216384))))

(declare-fun bs!1118070 () Bool)

(assert (= bs!1118070 (and d!1505965 b!4726633)))

(assert (=> bs!1118070 (= (= lt!1891364 lt!1891304) (= lambda!216388 lambda!216364))))

(declare-fun bs!1118071 () Bool)

(assert (= bs!1118071 (and d!1505965 d!1505823)))

(assert (=> bs!1118071 (not (= lambda!216388 lambda!216275))))

(declare-fun bs!1118072 () Bool)

(assert (= bs!1118072 (and d!1505965 b!4726775)))

(assert (=> bs!1118072 (= (= lt!1891364 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216388 lambda!216381))))

(assert (=> bs!1118069 (= (= lt!1891364 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216388 lambda!216382))))

(declare-fun bs!1118073 () Bool)

(assert (= bs!1118073 (and d!1505965 d!1505873)))

(assert (=> bs!1118073 (not (= lambda!216388 lambda!216297))))

(declare-fun bs!1118074 () Bool)

(assert (= bs!1118074 (and d!1505965 d!1505883)))

(assert (=> bs!1118074 (= (= lt!1891364 lt!1891302) (= lambda!216388 lambda!216365))))

(declare-fun bs!1118075 () Bool)

(assert (= bs!1118075 (and d!1505965 b!4726631)))

(assert (=> bs!1118075 (= (= lt!1891364 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216388 lambda!216362))))

(assert (=> bs!1118070 (= (= lt!1891364 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216388 lambda!216363))))

(assert (=> d!1505965 true))

(declare-fun bm!330694 () Bool)

(declare-fun call!330701 () Unit!131013)

(assert (=> bm!330694 (= call!330701 (lemmaContainsAllItsOwnKeys!803 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))))))

(declare-fun bm!330695 () Bool)

(declare-fun call!330699 () Bool)

(declare-fun c!807241 () Bool)

(assert (=> bm!330695 (= call!330699 (forall!11612 (ite c!807241 (toList!5942 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (t!360260 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))))) (ite c!807241 lambda!216381 lambda!216384)))))

(declare-fun b!4726774 () Bool)

(declare-fun e!2948029 () Bool)

(assert (=> b!4726774 (= e!2948029 (invariantList!1517 (toList!5942 lt!1891364)))))

(declare-fun e!2948030 () ListMap!5305)

(assert (=> b!4726775 (= e!2948030 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))))))

(declare-fun lt!1891367 () Unit!131013)

(assert (=> b!4726775 (= lt!1891367 call!330701)))

(assert (=> b!4726775 call!330699))

(declare-fun lt!1891368 () Unit!131013)

(assert (=> b!4726775 (= lt!1891368 lt!1891367)))

(declare-fun call!330700 () Bool)

(assert (=> b!4726775 call!330700))

(declare-fun lt!1891365 () Unit!131013)

(declare-fun Unit!131045 () Unit!131013)

(assert (=> b!4726775 (= lt!1891365 Unit!131045)))

(declare-fun b!4726776 () Bool)

(declare-fun e!2948028 () Bool)

(assert (=> b!4726776 (= e!2948028 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) lambda!216384))))

(declare-fun b!4726778 () Bool)

(declare-fun res!2000449 () Bool)

(assert (=> b!4726778 (=> (not res!2000449) (not e!2948029))))

(assert (=> b!4726778 (= res!2000449 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) lambda!216388))))

(declare-fun bm!330696 () Bool)

(assert (=> bm!330696 (= call!330700 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (ite c!807241 lambda!216381 lambda!216382)))))

(assert (=> b!4726777 (= e!2948030 lt!1891366)))

(declare-fun lt!1891348 () ListMap!5305)

(assert (=> b!4726777 (= lt!1891348 (+!2275 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) (h!59213 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))))))))

(assert (=> b!4726777 (= lt!1891366 (addToMapMapFromBucket!1456 (t!360260 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023))))) (+!2275 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) (h!59213 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023))))))))))

(declare-fun lt!1891350 () Unit!131013)

(assert (=> b!4726777 (= lt!1891350 call!330701)))

(assert (=> b!4726777 call!330700))

(declare-fun lt!1891360 () Unit!131013)

(assert (=> b!4726777 (= lt!1891360 lt!1891350)))

(assert (=> b!4726777 (forall!11612 (toList!5942 lt!1891348) lambda!216384)))

(declare-fun lt!1891353 () Unit!131013)

(declare-fun Unit!131048 () Unit!131013)

(assert (=> b!4726777 (= lt!1891353 Unit!131048)))

(assert (=> b!4726777 call!330699))

(declare-fun lt!1891355 () Unit!131013)

(declare-fun Unit!131049 () Unit!131013)

(assert (=> b!4726777 (= lt!1891355 Unit!131049)))

(declare-fun lt!1891359 () Unit!131013)

(declare-fun Unit!131050 () Unit!131013)

(assert (=> b!4726777 (= lt!1891359 Unit!131050)))

(declare-fun lt!1891351 () Unit!131013)

(assert (=> b!4726777 (= lt!1891351 (forallContained!3653 (toList!5942 lt!1891348) lambda!216384 (h!59213 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))))))))

(assert (=> b!4726777 (contains!16210 lt!1891348 (_1!30543 (h!59213 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))))))))

(declare-fun lt!1891358 () Unit!131013)

(declare-fun Unit!131051 () Unit!131013)

(assert (=> b!4726777 (= lt!1891358 Unit!131051)))

(assert (=> b!4726777 (contains!16210 lt!1891366 (_1!30543 (h!59213 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))))))))

(declare-fun lt!1891349 () Unit!131013)

(declare-fun Unit!131052 () Unit!131013)

(assert (=> b!4726777 (= lt!1891349 Unit!131052)))

(assert (=> b!4726777 (forall!11612 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))) lambda!216384)))

(declare-fun lt!1891356 () Unit!131013)

(declare-fun Unit!131053 () Unit!131013)

(assert (=> b!4726777 (= lt!1891356 Unit!131053)))

(assert (=> b!4726777 (forall!11612 (toList!5942 lt!1891348) lambda!216384)))

(declare-fun lt!1891363 () Unit!131013)

(declare-fun Unit!131054 () Unit!131013)

(assert (=> b!4726777 (= lt!1891363 Unit!131054)))

(declare-fun lt!1891354 () Unit!131013)

(declare-fun Unit!131055 () Unit!131013)

(assert (=> b!4726777 (= lt!1891354 Unit!131055)))

(declare-fun lt!1891352 () Unit!131013)

(assert (=> b!4726777 (= lt!1891352 (addForallContainsKeyThenBeforeAdding!802 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) lt!1891366 (_1!30543 (h!59213 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))))) (_2!30543 (h!59213 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023))))))))))

(assert (=> b!4726777 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) lambda!216384)))

(declare-fun lt!1891357 () Unit!131013)

(assert (=> b!4726777 (= lt!1891357 lt!1891352)))

(assert (=> b!4726777 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) lambda!216384)))

(declare-fun lt!1891361 () Unit!131013)

(declare-fun Unit!131058 () Unit!131013)

(assert (=> b!4726777 (= lt!1891361 Unit!131058)))

(declare-fun res!2000450 () Bool)

(assert (=> b!4726777 (= res!2000450 (forall!11612 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))) lambda!216384))))

(assert (=> b!4726777 (=> (not res!2000450) (not e!2948028))))

(assert (=> b!4726777 e!2948028))

(declare-fun lt!1891362 () Unit!131013)

(declare-fun Unit!131059 () Unit!131013)

(assert (=> b!4726777 (= lt!1891362 Unit!131059)))

(assert (=> d!1505965 e!2948029))

(declare-fun res!2000448 () Bool)

(assert (=> d!1505965 (=> (not res!2000448) (not e!2948029))))

(assert (=> d!1505965 (= res!2000448 (forall!11612 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))) lambda!216388))))

(assert (=> d!1505965 (= lt!1891364 e!2948030)))

(assert (=> d!1505965 (= c!807241 ((_ is Nil!52860) (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023))))))))

(assert (=> d!1505965 (noDuplicateKeys!2026 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))))))

(assert (=> d!1505965 (= (addToMapMapFromBucket!1456 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023)))) (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) lt!1891364)))

(assert (= (and d!1505965 c!807241) b!4726775))

(assert (= (and d!1505965 (not c!807241)) b!4726777))

(assert (= (and b!4726777 res!2000450) b!4726776))

(assert (= (or b!4726775 b!4726777) bm!330694))

(assert (= (or b!4726775 b!4726777) bm!330695))

(assert (= (or b!4726775 b!4726777) bm!330696))

(assert (= (and d!1505965 res!2000448) b!4726778))

(assert (= (and b!4726778 res!2000449) b!4726774))

(declare-fun m!5666603 () Bool)

(assert (=> d!1505965 m!5666603))

(declare-fun m!5666605 () Bool)

(assert (=> d!1505965 m!5666605))

(declare-fun m!5666607 () Bool)

(assert (=> bm!330696 m!5666607))

(declare-fun m!5666609 () Bool)

(assert (=> b!4726777 m!5666609))

(declare-fun m!5666611 () Bool)

(assert (=> b!4726777 m!5666611))

(assert (=> b!4726777 m!5666429))

(declare-fun m!5666613 () Bool)

(assert (=> b!4726777 m!5666613))

(declare-fun m!5666615 () Bool)

(assert (=> b!4726777 m!5666615))

(assert (=> b!4726777 m!5666609))

(declare-fun m!5666617 () Bool)

(assert (=> b!4726777 m!5666617))

(declare-fun m!5666619 () Bool)

(assert (=> b!4726777 m!5666619))

(assert (=> b!4726777 m!5666615))

(assert (=> b!4726777 m!5666611))

(declare-fun m!5666621 () Bool)

(assert (=> b!4726777 m!5666621))

(declare-fun m!5666623 () Bool)

(assert (=> b!4726777 m!5666623))

(declare-fun m!5666625 () Bool)

(assert (=> b!4726777 m!5666625))

(assert (=> b!4726777 m!5666429))

(assert (=> b!4726777 m!5666617))

(assert (=> b!4726776 m!5666611))

(declare-fun m!5666627 () Bool)

(assert (=> b!4726774 m!5666627))

(declare-fun m!5666629 () Bool)

(assert (=> bm!330695 m!5666629))

(assert (=> bm!330694 m!5666429))

(declare-fun m!5666631 () Bool)

(assert (=> bm!330694 m!5666631))

(declare-fun m!5666633 () Bool)

(assert (=> b!4726778 m!5666633))

(assert (=> b!4726637 d!1505965))

(declare-fun bs!1118076 () Bool)

(declare-fun d!1505973 () Bool)

(assert (= bs!1118076 (and d!1505973 start!481216)))

(declare-fun lambda!216389 () Int)

(assert (=> bs!1118076 (= lambda!216389 lambda!216260)))

(declare-fun bs!1118077 () Bool)

(assert (= bs!1118077 (and d!1505973 d!1505801)))

(assert (=> bs!1118077 (= lambda!216389 lambda!216272)))

(declare-fun bs!1118078 () Bool)

(assert (= bs!1118078 (and d!1505973 d!1505881)))

(assert (=> bs!1118078 (not (= lambda!216389 lambda!216309))))

(declare-fun bs!1118079 () Bool)

(assert (= bs!1118079 (and d!1505973 d!1505891)))

(assert (=> bs!1118079 (= lambda!216389 lambda!216366)))

(declare-fun bs!1118080 () Bool)

(assert (= bs!1118080 (and d!1505973 d!1505857)))

(assert (=> bs!1118080 (= lambda!216389 lambda!216289)))

(declare-fun bs!1118081 () Bool)

(assert (= bs!1118081 (and d!1505973 d!1505859)))

(assert (=> bs!1118081 (= lambda!216389 lambda!216296)))

(declare-fun lt!1891377 () ListMap!5305)

(assert (=> d!1505973 (invariantList!1517 (toList!5942 lt!1891377))))

(declare-fun e!2948042 () ListMap!5305)

(assert (=> d!1505973 (= lt!1891377 e!2948042)))

(declare-fun c!807247 () Bool)

(assert (=> d!1505973 (= c!807247 ((_ is Cons!52861) (t!360261 (t!360261 (toList!5941 lm!2023)))))))

(assert (=> d!1505973 (forall!11610 (t!360261 (t!360261 (toList!5941 lm!2023))) lambda!216389)))

(assert (=> d!1505973 (= (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023)))) lt!1891377)))

(declare-fun b!4726800 () Bool)

(assert (=> b!4726800 (= e!2948042 (addToMapMapFromBucket!1456 (_2!30544 (h!59214 (t!360261 (t!360261 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (t!360261 (t!360261 (toList!5941 lm!2023)))))))))

(declare-fun b!4726801 () Bool)

(assert (=> b!4726801 (= e!2948042 (ListMap!5306 Nil!52860))))

(assert (= (and d!1505973 c!807247) b!4726800))

(assert (= (and d!1505973 (not c!807247)) b!4726801))

(declare-fun m!5666635 () Bool)

(assert (=> d!1505973 m!5666635))

(declare-fun m!5666637 () Bool)

(assert (=> d!1505973 m!5666637))

(declare-fun m!5666639 () Bool)

(assert (=> b!4726800 m!5666639))

(assert (=> b!4726800 m!5666639))

(declare-fun m!5666641 () Bool)

(assert (=> b!4726800 m!5666641))

(assert (=> b!4726637 d!1505973))

(declare-fun d!1505975 () Bool)

(declare-fun res!2000470 () Bool)

(declare-fun e!2948049 () Bool)

(assert (=> d!1505975 (=> res!2000470 e!2948049)))

(assert (=> d!1505975 (= res!2000470 (or ((_ is Nil!52861) (toList!5941 lm!2023)) ((_ is Nil!52861) (t!360261 (toList!5941 lm!2023)))))))

(assert (=> d!1505975 (= (isStrictlySorted!756 (toList!5941 lm!2023)) e!2948049)))

(declare-fun b!4726812 () Bool)

(declare-fun e!2948050 () Bool)

(assert (=> b!4726812 (= e!2948049 e!2948050)))

(declare-fun res!2000471 () Bool)

(assert (=> b!4726812 (=> (not res!2000471) (not e!2948050))))

(assert (=> b!4726812 (= res!2000471 (bvslt (_1!30544 (h!59214 (toList!5941 lm!2023))) (_1!30544 (h!59214 (t!360261 (toList!5941 lm!2023))))))))

(declare-fun b!4726813 () Bool)

(assert (=> b!4726813 (= e!2948050 (isStrictlySorted!756 (t!360261 (toList!5941 lm!2023))))))

(assert (= (and d!1505975 (not res!2000470)) b!4726812))

(assert (= (and b!4726812 res!2000471) b!4726813))

(declare-fun m!5666643 () Bool)

(assert (=> b!4726813 m!5666643))

(assert (=> d!1505821 d!1505975))

(declare-fun bs!1118086 () Bool)

(declare-fun d!1505977 () Bool)

(assert (= bs!1118086 (and d!1505977 b!4726777)))

(declare-fun lambda!216398 () Int)

(assert (=> bs!1118086 (= (= (extractMap!2052 (t!360261 (toList!5941 lm!2023))) lt!1891366) (= lambda!216398 lambda!216384))))

(declare-fun bs!1118087 () Bool)

(assert (= bs!1118087 (and d!1505977 b!4726633)))

(assert (=> bs!1118087 (= (= (extractMap!2052 (t!360261 (toList!5941 lm!2023))) lt!1891304) (= lambda!216398 lambda!216364))))

(declare-fun bs!1118088 () Bool)

(assert (= bs!1118088 (and d!1505977 d!1505823)))

(assert (=> bs!1118088 (not (= lambda!216398 lambda!216275))))

(declare-fun bs!1118089 () Bool)

(assert (= bs!1118089 (and d!1505977 d!1505965)))

(assert (=> bs!1118089 (= (= (extractMap!2052 (t!360261 (toList!5941 lm!2023))) lt!1891364) (= lambda!216398 lambda!216388))))

(declare-fun bs!1118090 () Bool)

(assert (= bs!1118090 (and d!1505977 b!4726775)))

(assert (=> bs!1118090 (= (= (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216398 lambda!216381))))

(assert (=> bs!1118086 (= (= (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216398 lambda!216382))))

(declare-fun bs!1118091 () Bool)

(assert (= bs!1118091 (and d!1505977 d!1505873)))

(assert (=> bs!1118091 (not (= lambda!216398 lambda!216297))))

(declare-fun bs!1118092 () Bool)

(assert (= bs!1118092 (and d!1505977 d!1505883)))

(assert (=> bs!1118092 (= (= (extractMap!2052 (t!360261 (toList!5941 lm!2023))) lt!1891302) (= lambda!216398 lambda!216365))))

(declare-fun bs!1118093 () Bool)

(assert (= bs!1118093 (and d!1505977 b!4726631)))

(assert (=> bs!1118093 (= lambda!216398 lambda!216362)))

(assert (=> bs!1118087 (= lambda!216398 lambda!216363)))

(assert (=> d!1505977 true))

(assert (=> d!1505977 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lambda!216398)))

(declare-fun lt!1891383 () Unit!131013)

(declare-fun choose!33380 (ListMap!5305) Unit!131013)

(assert (=> d!1505977 (= lt!1891383 (choose!33380 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))))))

(assert (=> d!1505977 (= (lemmaContainsAllItsOwnKeys!803 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lt!1891383)))

(declare-fun bs!1118094 () Bool)

(assert (= bs!1118094 d!1505977))

(declare-fun m!5666663 () Bool)

(assert (=> bs!1118094 m!5666663))

(assert (=> bs!1118094 m!5666051))

(declare-fun m!5666665 () Bool)

(assert (=> bs!1118094 m!5666665))

(assert (=> bm!330690 d!1505977))

(declare-fun d!1505987 () Bool)

(declare-fun lt!1891390 () Bool)

(declare-fun content!9411 (List!52984) (InoxSet tuple2!54498))

(assert (=> d!1505987 (= lt!1891390 (select (content!9411 oldBucket!34) (get!17732 lt!1891145)))))

(declare-fun e!2948072 () Bool)

(assert (=> d!1505987 (= lt!1891390 e!2948072)))

(declare-fun res!2000493 () Bool)

(assert (=> d!1505987 (=> (not res!2000493) (not e!2948072))))

(assert (=> d!1505987 (= res!2000493 ((_ is Cons!52860) oldBucket!34))))

(assert (=> d!1505987 (= (contains!16214 oldBucket!34 (get!17732 lt!1891145)) lt!1891390)))

(declare-fun b!4726841 () Bool)

(declare-fun e!2948071 () Bool)

(assert (=> b!4726841 (= e!2948072 e!2948071)))

(declare-fun res!2000494 () Bool)

(assert (=> b!4726841 (=> res!2000494 e!2948071)))

(assert (=> b!4726841 (= res!2000494 (= (h!59213 oldBucket!34) (get!17732 lt!1891145)))))

(declare-fun b!4726842 () Bool)

(assert (=> b!4726842 (= e!2948071 (contains!16214 (t!360260 oldBucket!34) (get!17732 lt!1891145)))))

(assert (= (and d!1505987 res!2000493) b!4726841))

(assert (= (and b!4726841 (not res!2000494)) b!4726842))

(declare-fun m!5666683 () Bool)

(assert (=> d!1505987 m!5666683))

(assert (=> d!1505987 m!5666277))

(declare-fun m!5666685 () Bool)

(assert (=> d!1505987 m!5666685))

(assert (=> b!4726842 m!5666277))

(declare-fun m!5666687 () Bool)

(assert (=> b!4726842 m!5666687))

(assert (=> b!4726541 d!1505987))

(declare-fun d!1505997 () Bool)

(assert (=> d!1505997 (= (get!17732 lt!1891145) (v!46955 lt!1891145))))

(assert (=> b!4726541 d!1505997))

(declare-fun d!1506001 () Bool)

(declare-fun res!2000497 () Bool)

(declare-fun e!2948075 () Bool)

(assert (=> d!1506001 (=> res!2000497 e!2948075)))

(assert (=> d!1506001 (= res!2000497 (not ((_ is Cons!52860) (_2!30544 lt!1891011))))))

(assert (=> d!1506001 (= (noDuplicateKeys!2026 (_2!30544 lt!1891011)) e!2948075)))

(declare-fun b!4726845 () Bool)

(declare-fun e!2948076 () Bool)

(assert (=> b!4726845 (= e!2948075 e!2948076)))

(declare-fun res!2000498 () Bool)

(assert (=> b!4726845 (=> (not res!2000498) (not e!2948076))))

(assert (=> b!4726845 (= res!2000498 (not (containsKey!3389 (t!360260 (_2!30544 lt!1891011)) (_1!30543 (h!59213 (_2!30544 lt!1891011))))))))

(declare-fun b!4726846 () Bool)

(assert (=> b!4726846 (= e!2948076 (noDuplicateKeys!2026 (t!360260 (_2!30544 lt!1891011))))))

(assert (= (and d!1506001 (not res!2000497)) b!4726845))

(assert (= (and b!4726845 res!2000498) b!4726846))

(declare-fun m!5666693 () Bool)

(assert (=> b!4726845 m!5666693))

(declare-fun m!5666695 () Bool)

(assert (=> b!4726846 m!5666695))

(assert (=> bs!1118045 d!1506001))

(declare-fun d!1506003 () Bool)

(declare-fun res!2000507 () Bool)

(declare-fun e!2948085 () Bool)

(assert (=> d!1506003 (=> res!2000507 e!2948085)))

(assert (=> d!1506003 (= res!2000507 (and ((_ is Cons!52861) (toList!5941 lm!2023)) (= (_1!30544 (h!59214 (toList!5941 lm!2023))) lt!1891015)))))

(assert (=> d!1506003 (= (containsKey!3388 (toList!5941 lm!2023) lt!1891015) e!2948085)))

(declare-fun b!4726856 () Bool)

(declare-fun e!2948086 () Bool)

(assert (=> b!4726856 (= e!2948085 e!2948086)))

(declare-fun res!2000508 () Bool)

(assert (=> b!4726856 (=> (not res!2000508) (not e!2948086))))

(assert (=> b!4726856 (= res!2000508 (and (or (not ((_ is Cons!52861) (toList!5941 lm!2023))) (bvsle (_1!30544 (h!59214 (toList!5941 lm!2023))) lt!1891015)) ((_ is Cons!52861) (toList!5941 lm!2023)) (bvslt (_1!30544 (h!59214 (toList!5941 lm!2023))) lt!1891015)))))

(declare-fun b!4726857 () Bool)

(assert (=> b!4726857 (= e!2948086 (containsKey!3388 (t!360261 (toList!5941 lm!2023)) lt!1891015))))

(assert (= (and d!1506003 (not res!2000507)) b!4726856))

(assert (= (and b!4726856 res!2000508) b!4726857))

(declare-fun m!5666709 () Bool)

(assert (=> b!4726857 m!5666709))

(assert (=> d!1505829 d!1506003))

(declare-fun d!1506015 () Bool)

(assert (=> d!1506015 (= (invariantList!1517 (toList!5942 lt!1891307)) (noDuplicatedKeys!378 (toList!5942 lt!1891307)))))

(declare-fun bs!1118098 () Bool)

(assert (= bs!1118098 d!1506015))

(declare-fun m!5666711 () Bool)

(assert (=> bs!1118098 m!5666711))

(assert (=> d!1505891 d!1506015))

(declare-fun d!1506017 () Bool)

(declare-fun res!2000509 () Bool)

(declare-fun e!2948087 () Bool)

(assert (=> d!1506017 (=> res!2000509 e!2948087)))

(assert (=> d!1506017 (= res!2000509 ((_ is Nil!52861) (t!360261 (toList!5941 lm!2023))))))

(assert (=> d!1506017 (= (forall!11610 (t!360261 (toList!5941 lm!2023)) lambda!216366) e!2948087)))

(declare-fun b!4726858 () Bool)

(declare-fun e!2948088 () Bool)

(assert (=> b!4726858 (= e!2948087 e!2948088)))

(declare-fun res!2000510 () Bool)

(assert (=> b!4726858 (=> (not res!2000510) (not e!2948088))))

(assert (=> b!4726858 (= res!2000510 (dynLambda!21830 lambda!216366 (h!59214 (t!360261 (toList!5941 lm!2023)))))))

(declare-fun b!4726859 () Bool)

(assert (=> b!4726859 (= e!2948088 (forall!11610 (t!360261 (t!360261 (toList!5941 lm!2023))) lambda!216366))))

(assert (= (and d!1506017 (not res!2000509)) b!4726858))

(assert (= (and b!4726858 res!2000510) b!4726859))

(declare-fun b_lambda!179657 () Bool)

(assert (=> (not b_lambda!179657) (not b!4726858)))

(declare-fun m!5666713 () Bool)

(assert (=> b!4726858 m!5666713))

(declare-fun m!5666715 () Bool)

(assert (=> b!4726859 m!5666715))

(assert (=> d!1505891 d!1506017))

(declare-fun d!1506019 () Bool)

(assert (=> d!1506019 (= (get!17732 lt!1891173) (v!46955 lt!1891173))))

(assert (=> b!4726566 d!1506019))

(declare-fun b!4726860 () Bool)

(declare-fun e!2948091 () Option!12371)

(assert (=> b!4726860 (= e!2948091 (getPair!566 (t!360260 (t!360260 oldBucket!34)) key!4653))))

(declare-fun b!4726861 () Bool)

(declare-fun e!2948089 () Option!12371)

(assert (=> b!4726861 (= e!2948089 e!2948091)))

(declare-fun c!807250 () Bool)

(assert (=> b!4726861 (= c!807250 ((_ is Cons!52860) (t!360260 oldBucket!34)))))

(declare-fun d!1506021 () Bool)

(declare-fun e!2948090 () Bool)

(assert (=> d!1506021 e!2948090))

(declare-fun res!2000513 () Bool)

(assert (=> d!1506021 (=> res!2000513 e!2948090)))

(declare-fun e!2948092 () Bool)

(assert (=> d!1506021 (= res!2000513 e!2948092)))

(declare-fun res!2000512 () Bool)

(assert (=> d!1506021 (=> (not res!2000512) (not e!2948092))))

(declare-fun lt!1891393 () Option!12371)

(assert (=> d!1506021 (= res!2000512 (isEmpty!29183 lt!1891393))))

(assert (=> d!1506021 (= lt!1891393 e!2948089)))

(declare-fun c!807251 () Bool)

(assert (=> d!1506021 (= c!807251 (and ((_ is Cons!52860) (t!360260 oldBucket!34)) (= (_1!30543 (h!59213 (t!360260 oldBucket!34))) key!4653)))))

(assert (=> d!1506021 (noDuplicateKeys!2026 (t!360260 oldBucket!34))))

(assert (=> d!1506021 (= (getPair!566 (t!360260 oldBucket!34) key!4653) lt!1891393)))

(declare-fun b!4726862 () Bool)

(declare-fun e!2948093 () Bool)

(assert (=> b!4726862 (= e!2948093 (contains!16214 (t!360260 oldBucket!34) (get!17732 lt!1891393)))))

(declare-fun b!4726863 () Bool)

(assert (=> b!4726863 (= e!2948092 (not (containsKey!3389 (t!360260 oldBucket!34) key!4653)))))

(declare-fun b!4726864 () Bool)

(assert (=> b!4726864 (= e!2948091 None!12370)))

(declare-fun b!4726865 () Bool)

(assert (=> b!4726865 (= e!2948089 (Some!12370 (h!59213 (t!360260 oldBucket!34))))))

(declare-fun b!4726866 () Bool)

(assert (=> b!4726866 (= e!2948090 e!2948093)))

(declare-fun res!2000514 () Bool)

(assert (=> b!4726866 (=> (not res!2000514) (not e!2948093))))

(assert (=> b!4726866 (= res!2000514 (isDefined!9625 lt!1891393))))

(declare-fun b!4726867 () Bool)

(declare-fun res!2000511 () Bool)

(assert (=> b!4726867 (=> (not res!2000511) (not e!2948093))))

(assert (=> b!4726867 (= res!2000511 (= (_1!30543 (get!17732 lt!1891393)) key!4653))))

(assert (= (and d!1506021 c!807251) b!4726865))

(assert (= (and d!1506021 (not c!807251)) b!4726861))

(assert (= (and b!4726861 c!807250) b!4726860))

(assert (= (and b!4726861 (not c!807250)) b!4726864))

(assert (= (and d!1506021 res!2000512) b!4726863))

(assert (= (and d!1506021 (not res!2000513)) b!4726866))

(assert (= (and b!4726866 res!2000514) b!4726867))

(assert (= (and b!4726867 res!2000511) b!4726862))

(declare-fun m!5666717 () Bool)

(assert (=> b!4726866 m!5666717))

(declare-fun m!5666719 () Bool)

(assert (=> d!1506021 m!5666719))

(assert (=> d!1506021 m!5666341))

(declare-fun m!5666721 () Bool)

(assert (=> b!4726863 m!5666721))

(declare-fun m!5666723 () Bool)

(assert (=> b!4726860 m!5666723))

(declare-fun m!5666725 () Bool)

(assert (=> b!4726867 m!5666725))

(assert (=> b!4726862 m!5666725))

(assert (=> b!4726862 m!5666725))

(declare-fun m!5666727 () Bool)

(assert (=> b!4726862 m!5666727))

(assert (=> b!4726539 d!1506021))

(declare-fun d!1506023 () Bool)

(declare-fun e!2948095 () Bool)

(assert (=> d!1506023 e!2948095))

(declare-fun res!2000515 () Bool)

(assert (=> d!1506023 (=> res!2000515 e!2948095)))

(declare-fun lt!1891397 () Bool)

(assert (=> d!1506023 (= res!2000515 (not lt!1891397))))

(declare-fun lt!1891396 () Bool)

(assert (=> d!1506023 (= lt!1891397 lt!1891396)))

(declare-fun lt!1891395 () Unit!131013)

(declare-fun e!2948094 () Unit!131013)

(assert (=> d!1506023 (= lt!1891395 e!2948094)))

(declare-fun c!807252 () Bool)

(assert (=> d!1506023 (= c!807252 lt!1891396)))

(assert (=> d!1506023 (= lt!1891396 (containsKey!3388 (toList!5941 lm!2023) (hash!4402 hashF!1323 key!4653)))))

(assert (=> d!1506023 (= (contains!16209 lm!2023 (hash!4402 hashF!1323 key!4653)) lt!1891397)))

(declare-fun b!4726868 () Bool)

(declare-fun lt!1891394 () Unit!131013)

(assert (=> b!4726868 (= e!2948094 lt!1891394)))

(assert (=> b!4726868 (= lt!1891394 (lemmaContainsKeyImpliesGetValueByKeyDefined!1858 (toList!5941 lm!2023) (hash!4402 hashF!1323 key!4653)))))

(assert (=> b!4726868 (isDefined!9629 (getValueByKey!1967 (toList!5941 lm!2023) (hash!4402 hashF!1323 key!4653)))))

(declare-fun b!4726869 () Bool)

(declare-fun Unit!131060 () Unit!131013)

(assert (=> b!4726869 (= e!2948094 Unit!131060)))

(declare-fun b!4726870 () Bool)

(assert (=> b!4726870 (= e!2948095 (isDefined!9629 (getValueByKey!1967 (toList!5941 lm!2023) (hash!4402 hashF!1323 key!4653))))))

(assert (= (and d!1506023 c!807252) b!4726868))

(assert (= (and d!1506023 (not c!807252)) b!4726869))

(assert (= (and d!1506023 (not res!2000515)) b!4726870))

(assert (=> d!1506023 m!5666035))

(declare-fun m!5666729 () Bool)

(assert (=> d!1506023 m!5666729))

(assert (=> b!4726868 m!5666035))

(declare-fun m!5666731 () Bool)

(assert (=> b!4726868 m!5666731))

(assert (=> b!4726868 m!5666035))

(declare-fun m!5666733 () Bool)

(assert (=> b!4726868 m!5666733))

(assert (=> b!4726868 m!5666733))

(declare-fun m!5666735 () Bool)

(assert (=> b!4726868 m!5666735))

(assert (=> b!4726870 m!5666035))

(assert (=> b!4726870 m!5666733))

(assert (=> b!4726870 m!5666733))

(assert (=> b!4726870 m!5666735))

(assert (=> d!1505857 d!1506023))

(assert (=> d!1505857 d!1505869))

(declare-fun d!1506025 () Bool)

(assert (=> d!1506025 (contains!16209 lm!2023 (hash!4402 hashF!1323 key!4653))))

(assert (=> d!1506025 true))

(declare-fun _$27!1515 () Unit!131013)

(assert (=> d!1506025 (= (choose!33373 lm!2023 key!4653 hashF!1323) _$27!1515)))

(declare-fun bs!1118099 () Bool)

(assert (= bs!1118099 d!1506025))

(assert (=> bs!1118099 m!5666035))

(assert (=> bs!1118099 m!5666035))

(assert (=> bs!1118099 m!5666281))

(assert (=> d!1505857 d!1506025))

(declare-fun d!1506027 () Bool)

(declare-fun res!2000516 () Bool)

(declare-fun e!2948096 () Bool)

(assert (=> d!1506027 (=> res!2000516 e!2948096)))

(assert (=> d!1506027 (= res!2000516 ((_ is Nil!52861) (toList!5941 lm!2023)))))

(assert (=> d!1506027 (= (forall!11610 (toList!5941 lm!2023) lambda!216289) e!2948096)))

(declare-fun b!4726871 () Bool)

(declare-fun e!2948097 () Bool)

(assert (=> b!4726871 (= e!2948096 e!2948097)))

(declare-fun res!2000517 () Bool)

(assert (=> b!4726871 (=> (not res!2000517) (not e!2948097))))

(assert (=> b!4726871 (= res!2000517 (dynLambda!21830 lambda!216289 (h!59214 (toList!5941 lm!2023))))))

(declare-fun b!4726872 () Bool)

(assert (=> b!4726872 (= e!2948097 (forall!11610 (t!360261 (toList!5941 lm!2023)) lambda!216289))))

(assert (= (and d!1506027 (not res!2000516)) b!4726871))

(assert (= (and b!4726871 res!2000517) b!4726872))

(declare-fun b_lambda!179659 () Bool)

(assert (=> (not b_lambda!179659) (not b!4726871)))

(declare-fun m!5666737 () Bool)

(assert (=> b!4726871 m!5666737))

(declare-fun m!5666739 () Bool)

(assert (=> b!4726872 m!5666739))

(assert (=> d!1505857 d!1506027))

(declare-fun d!1506029 () Bool)

(assert (=> d!1506029 (= (get!17731 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891015)) (v!46963 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891015)))))

(assert (=> d!1505839 d!1506029))

(declare-fun b!4726883 () Bool)

(declare-fun e!2948103 () Option!12375)

(assert (=> b!4726883 (= e!2948103 (getValueByKey!1967 (t!360261 (toList!5941 lm!2023)) lt!1891015))))

(declare-fun d!1506031 () Bool)

(declare-fun c!807257 () Bool)

(assert (=> d!1506031 (= c!807257 (and ((_ is Cons!52861) (toList!5941 lm!2023)) (= (_1!30544 (h!59214 (toList!5941 lm!2023))) lt!1891015)))))

(declare-fun e!2948102 () Option!12375)

(assert (=> d!1506031 (= (getValueByKey!1967 (toList!5941 lm!2023) lt!1891015) e!2948102)))

(declare-fun b!4726881 () Bool)

(assert (=> b!4726881 (= e!2948102 (Some!12374 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(declare-fun b!4726884 () Bool)

(assert (=> b!4726884 (= e!2948103 None!12374)))

(declare-fun b!4726882 () Bool)

(assert (=> b!4726882 (= e!2948102 e!2948103)))

(declare-fun c!807258 () Bool)

(assert (=> b!4726882 (= c!807258 (and ((_ is Cons!52861) (toList!5941 lm!2023)) (not (= (_1!30544 (h!59214 (toList!5941 lm!2023))) lt!1891015))))))

(assert (= (and d!1506031 c!807257) b!4726881))

(assert (= (and d!1506031 (not c!807257)) b!4726882))

(assert (= (and b!4726882 c!807258) b!4726883))

(assert (= (and b!4726882 (not c!807258)) b!4726884))

(declare-fun m!5666745 () Bool)

(assert (=> b!4726883 m!5666745))

(assert (=> d!1505839 d!1506031))

(declare-fun d!1506037 () Bool)

(assert (=> d!1506037 (dynLambda!21830 lambda!216260 lt!1891011)))

(assert (=> d!1506037 true))

(declare-fun _$7!2240 () Unit!131013)

(assert (=> d!1506037 (= (choose!33372 (toList!5941 lm!2023) lambda!216260 lt!1891011) _$7!2240)))

(declare-fun b_lambda!179661 () Bool)

(assert (=> (not b_lambda!179661) (not d!1506037)))

(declare-fun bs!1118107 () Bool)

(assert (= bs!1118107 d!1506037))

(assert (=> bs!1118107 m!5666209))

(assert (=> d!1505827 d!1506037))

(assert (=> d!1505827 d!1505819))

(declare-fun d!1506039 () Bool)

(assert (=> d!1506039 (= (tail!9027 (toList!5941 lm!2023)) (t!360261 (toList!5941 lm!2023)))))

(assert (=> d!1505871 d!1506039))

(declare-fun d!1506047 () Bool)

(declare-fun res!2000526 () Bool)

(declare-fun e!2948112 () Bool)

(assert (=> d!1506047 (=> res!2000526 e!2948112)))

(assert (=> d!1506047 (= res!2000526 ((_ is Nil!52861) (t!360261 (toList!5941 lm!2023))))))

(assert (=> d!1506047 (= (forall!11610 (t!360261 (toList!5941 lm!2023)) lambda!216260) e!2948112)))

(declare-fun b!4726893 () Bool)

(declare-fun e!2948113 () Bool)

(assert (=> b!4726893 (= e!2948112 e!2948113)))

(declare-fun res!2000527 () Bool)

(assert (=> b!4726893 (=> (not res!2000527) (not e!2948113))))

(assert (=> b!4726893 (= res!2000527 (dynLambda!21830 lambda!216260 (h!59214 (t!360261 (toList!5941 lm!2023)))))))

(declare-fun b!4726894 () Bool)

(assert (=> b!4726894 (= e!2948113 (forall!11610 (t!360261 (t!360261 (toList!5941 lm!2023))) lambda!216260))))

(assert (= (and d!1506047 (not res!2000526)) b!4726893))

(assert (= (and b!4726893 res!2000527) b!4726894))

(declare-fun b_lambda!179665 () Bool)

(assert (=> (not b_lambda!179665) (not b!4726893)))

(declare-fun m!5666749 () Bool)

(assert (=> b!4726893 m!5666749))

(declare-fun m!5666751 () Bool)

(assert (=> b!4726894 m!5666751))

(assert (=> b!4726466 d!1506047))

(declare-fun d!1506049 () Bool)

(declare-fun res!2000528 () Bool)

(declare-fun e!2948114 () Bool)

(assert (=> d!1506049 (=> res!2000528 e!2948114)))

(assert (=> d!1506049 (= res!2000528 (and ((_ is Cons!52860) lt!1891013) (= (_1!30543 (h!59213 lt!1891013)) key!4653)))))

(assert (=> d!1506049 (= (containsKey!3389 lt!1891013 key!4653) e!2948114)))

(declare-fun b!4726895 () Bool)

(declare-fun e!2948115 () Bool)

(assert (=> b!4726895 (= e!2948114 e!2948115)))

(declare-fun res!2000529 () Bool)

(assert (=> b!4726895 (=> (not res!2000529) (not e!2948115))))

(assert (=> b!4726895 (= res!2000529 ((_ is Cons!52860) lt!1891013))))

(declare-fun b!4726896 () Bool)

(assert (=> b!4726896 (= e!2948115 (containsKey!3389 (t!360260 lt!1891013) key!4653))))

(assert (= (and d!1506049 (not res!2000528)) b!4726895))

(assert (= (and b!4726895 res!2000529) b!4726896))

(declare-fun m!5666757 () Bool)

(assert (=> b!4726896 m!5666757))

(assert (=> b!4726562 d!1506049))

(declare-fun d!1506053 () Bool)

(declare-fun res!2000530 () Bool)

(declare-fun e!2948116 () Bool)

(assert (=> d!1506053 (=> res!2000530 e!2948116)))

(assert (=> d!1506053 (= res!2000530 (not ((_ is Cons!52860) (t!360260 oldBucket!34))))))

(assert (=> d!1506053 (= (noDuplicateKeys!2026 (t!360260 oldBucket!34)) e!2948116)))

(declare-fun b!4726897 () Bool)

(declare-fun e!2948117 () Bool)

(assert (=> b!4726897 (= e!2948116 e!2948117)))

(declare-fun res!2000531 () Bool)

(assert (=> b!4726897 (=> (not res!2000531) (not e!2948117))))

(assert (=> b!4726897 (= res!2000531 (not (containsKey!3389 (t!360260 (t!360260 oldBucket!34)) (_1!30543 (h!59213 (t!360260 oldBucket!34))))))))

(declare-fun b!4726898 () Bool)

(assert (=> b!4726898 (= e!2948117 (noDuplicateKeys!2026 (t!360260 (t!360260 oldBucket!34))))))

(assert (= (and d!1506053 (not res!2000530)) b!4726897))

(assert (= (and b!4726897 res!2000531) b!4726898))

(declare-fun m!5666759 () Bool)

(assert (=> b!4726897 m!5666759))

(declare-fun m!5666761 () Bool)

(assert (=> b!4726898 m!5666761))

(assert (=> b!4726589 d!1506053))

(declare-fun b!4726901 () Bool)

(declare-fun e!2948119 () Option!12375)

(assert (=> b!4726901 (= e!2948119 (getValueByKey!1967 (t!360261 (toList!5941 lm!2023)) lt!1891168))))

(declare-fun d!1506055 () Bool)

(declare-fun c!807259 () Bool)

(assert (=> d!1506055 (= c!807259 (and ((_ is Cons!52861) (toList!5941 lm!2023)) (= (_1!30544 (h!59214 (toList!5941 lm!2023))) lt!1891168)))))

(declare-fun e!2948118 () Option!12375)

(assert (=> d!1506055 (= (getValueByKey!1967 (toList!5941 lm!2023) lt!1891168) e!2948118)))

(declare-fun b!4726899 () Bool)

(assert (=> b!4726899 (= e!2948118 (Some!12374 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(declare-fun b!4726902 () Bool)

(assert (=> b!4726902 (= e!2948119 None!12374)))

(declare-fun b!4726900 () Bool)

(assert (=> b!4726900 (= e!2948118 e!2948119)))

(declare-fun c!807260 () Bool)

(assert (=> b!4726900 (= c!807260 (and ((_ is Cons!52861) (toList!5941 lm!2023)) (not (= (_1!30544 (h!59214 (toList!5941 lm!2023))) lt!1891168))))))

(assert (= (and d!1506055 c!807259) b!4726899))

(assert (= (and d!1506055 (not c!807259)) b!4726900))

(assert (= (and b!4726900 c!807260) b!4726901))

(assert (= (and b!4726900 (not c!807260)) b!4726902))

(declare-fun m!5666763 () Bool)

(assert (=> b!4726901 m!5666763))

(assert (=> b!4726558 d!1506055))

(declare-fun d!1506059 () Bool)

(assert (=> d!1506059 (= (isEmpty!29183 (getPair!566 oldBucket!34 key!4653)) (not ((_ is Some!12370) (getPair!566 oldBucket!34 key!4653))))))

(assert (=> d!1505841 d!1506059))

(declare-fun d!1506063 () Bool)

(assert (=> d!1506063 (= (isEmpty!29183 lt!1891145) (not ((_ is Some!12370) lt!1891145)))))

(assert (=> d!1505847 d!1506063))

(assert (=> d!1505847 d!1505875))

(declare-fun d!1506065 () Bool)

(declare-fun res!2000532 () Bool)

(declare-fun e!2948122 () Bool)

(assert (=> d!1506065 (=> res!2000532 e!2948122)))

(assert (=> d!1506065 (= res!2000532 ((_ is Nil!52860) (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(assert (=> d!1506065 (= (forall!11612 (_2!30544 (h!59214 (toList!5941 lm!2023))) lambda!216365) e!2948122)))

(declare-fun b!4726907 () Bool)

(declare-fun e!2948123 () Bool)

(assert (=> b!4726907 (= e!2948122 e!2948123)))

(declare-fun res!2000533 () Bool)

(assert (=> b!4726907 (=> (not res!2000533) (not e!2948123))))

(assert (=> b!4726907 (= res!2000533 (dynLambda!21832 lambda!216365 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(declare-fun b!4726908 () Bool)

(assert (=> b!4726908 (= e!2948123 (forall!11612 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))) lambda!216365))))

(assert (= (and d!1506065 (not res!2000532)) b!4726907))

(assert (= (and b!4726907 res!2000533) b!4726908))

(declare-fun b_lambda!179667 () Bool)

(assert (=> (not b_lambda!179667) (not b!4726907)))

(declare-fun m!5666767 () Bool)

(assert (=> b!4726907 m!5666767))

(declare-fun m!5666769 () Bool)

(assert (=> b!4726908 m!5666769))

(assert (=> d!1505883 d!1506065))

(declare-fun d!1506067 () Bool)

(declare-fun res!2000534 () Bool)

(declare-fun e!2948124 () Bool)

(assert (=> d!1506067 (=> res!2000534 e!2948124)))

(assert (=> d!1506067 (= res!2000534 (not ((_ is Cons!52860) (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(assert (=> d!1506067 (= (noDuplicateKeys!2026 (_2!30544 (h!59214 (toList!5941 lm!2023)))) e!2948124)))

(declare-fun b!4726909 () Bool)

(declare-fun e!2948125 () Bool)

(assert (=> b!4726909 (= e!2948124 e!2948125)))

(declare-fun res!2000535 () Bool)

(assert (=> b!4726909 (=> (not res!2000535) (not e!2948125))))

(assert (=> b!4726909 (= res!2000535 (not (containsKey!3389 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))))

(declare-fun b!4726910 () Bool)

(assert (=> b!4726910 (= e!2948125 (noDuplicateKeys!2026 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(assert (= (and d!1506067 (not res!2000534)) b!4726909))

(assert (= (and b!4726909 res!2000535) b!4726910))

(declare-fun m!5666771 () Bool)

(assert (=> b!4726909 m!5666771))

(declare-fun m!5666773 () Bool)

(assert (=> b!4726910 m!5666773))

(assert (=> d!1505883 d!1506067))

(declare-fun d!1506069 () Bool)

(declare-fun res!2000536 () Bool)

(declare-fun e!2948126 () Bool)

(assert (=> d!1506069 (=> res!2000536 e!2948126)))

(assert (=> d!1506069 (= res!2000536 (and ((_ is Cons!52860) lt!1891179) (= (_1!30543 (h!59213 lt!1891179)) key!4653)))))

(assert (=> d!1506069 (= (containsKey!3389 lt!1891179 key!4653) e!2948126)))

(declare-fun b!4726911 () Bool)

(declare-fun e!2948127 () Bool)

(assert (=> b!4726911 (= e!2948126 e!2948127)))

(declare-fun res!2000537 () Bool)

(assert (=> b!4726911 (=> (not res!2000537) (not e!2948127))))

(assert (=> b!4726911 (= res!2000537 ((_ is Cons!52860) lt!1891179))))

(declare-fun b!4726912 () Bool)

(assert (=> b!4726912 (= e!2948127 (containsKey!3389 (t!360260 lt!1891179) key!4653))))

(assert (= (and d!1506069 (not res!2000536)) b!4726911))

(assert (= (and b!4726911 res!2000537) b!4726912))

(declare-fun m!5666775 () Bool)

(assert (=> b!4726912 m!5666775))

(assert (=> d!1505867 d!1506069))

(assert (=> d!1505867 d!1505875))

(declare-fun b!4726913 () Bool)

(declare-fun e!2948131 () Bool)

(assert (=> b!4726913 (= e!2948131 (contains!16213 (keys!18992 (extractMap!2052 (toList!5941 lm!2023))) key!4653))))

(declare-fun d!1506071 () Bool)

(declare-fun e!2948128 () Bool)

(assert (=> d!1506071 e!2948128))

(declare-fun res!2000540 () Bool)

(assert (=> d!1506071 (=> res!2000540 e!2948128)))

(declare-fun e!2948132 () Bool)

(assert (=> d!1506071 (= res!2000540 e!2948132)))

(declare-fun res!2000539 () Bool)

(assert (=> d!1506071 (=> (not res!2000539) (not e!2948132))))

(declare-fun lt!1891407 () Bool)

(assert (=> d!1506071 (= res!2000539 (not lt!1891407))))

(declare-fun lt!1891403 () Bool)

(assert (=> d!1506071 (= lt!1891407 lt!1891403)))

(declare-fun lt!1891404 () Unit!131013)

(declare-fun e!2948133 () Unit!131013)

(assert (=> d!1506071 (= lt!1891404 e!2948133)))

(declare-fun c!807265 () Bool)

(assert (=> d!1506071 (= c!807265 lt!1891403)))

(assert (=> d!1506071 (= lt!1891403 (containsKey!3387 (toList!5942 (extractMap!2052 (toList!5941 lm!2023))) key!4653))))

(assert (=> d!1506071 (= (contains!16210 (extractMap!2052 (toList!5941 lm!2023)) key!4653) lt!1891407)))

(declare-fun b!4726914 () Bool)

(declare-fun e!2948129 () List!52987)

(assert (=> b!4726914 (= e!2948129 (keys!18992 (extractMap!2052 (toList!5941 lm!2023))))))

(declare-fun b!4726915 () Bool)

(assert (=> b!4726915 false))

(declare-fun lt!1891401 () Unit!131013)

(declare-fun lt!1891408 () Unit!131013)

(assert (=> b!4726915 (= lt!1891401 lt!1891408)))

(assert (=> b!4726915 (containsKey!3387 (toList!5942 (extractMap!2052 (toList!5941 lm!2023))) key!4653)))

(assert (=> b!4726915 (= lt!1891408 (lemmaInGetKeysListThenContainsKey!956 (toList!5942 (extractMap!2052 (toList!5941 lm!2023))) key!4653))))

(declare-fun e!2948130 () Unit!131013)

(declare-fun Unit!131061 () Unit!131013)

(assert (=> b!4726915 (= e!2948130 Unit!131061)))

(declare-fun b!4726916 () Bool)

(assert (=> b!4726916 (= e!2948129 (getKeysList!957 (toList!5942 (extractMap!2052 (toList!5941 lm!2023)))))))

(declare-fun b!4726917 () Bool)

(declare-fun lt!1891402 () Unit!131013)

(assert (=> b!4726917 (= e!2948133 lt!1891402)))

(declare-fun lt!1891406 () Unit!131013)

(assert (=> b!4726917 (= lt!1891406 (lemmaContainsKeyImpliesGetValueByKeyDefined!1857 (toList!5942 (extractMap!2052 (toList!5941 lm!2023))) key!4653))))

(assert (=> b!4726917 (isDefined!9628 (getValueByKey!1966 (toList!5942 (extractMap!2052 (toList!5941 lm!2023))) key!4653))))

(declare-fun lt!1891405 () Unit!131013)

(assert (=> b!4726917 (= lt!1891405 lt!1891406)))

(assert (=> b!4726917 (= lt!1891402 (lemmaInListThenGetKeysListContains!952 (toList!5942 (extractMap!2052 (toList!5941 lm!2023))) key!4653))))

(declare-fun call!330702 () Bool)

(assert (=> b!4726917 call!330702))

(declare-fun bm!330697 () Bool)

(assert (=> bm!330697 (= call!330702 (contains!16213 e!2948129 key!4653))))

(declare-fun c!807263 () Bool)

(assert (=> bm!330697 (= c!807263 c!807265)))

(declare-fun b!4726918 () Bool)

(assert (=> b!4726918 (= e!2948132 (not (contains!16213 (keys!18992 (extractMap!2052 (toList!5941 lm!2023))) key!4653)))))

(declare-fun b!4726919 () Bool)

(declare-fun Unit!131062 () Unit!131013)

(assert (=> b!4726919 (= e!2948130 Unit!131062)))

(declare-fun b!4726920 () Bool)

(assert (=> b!4726920 (= e!2948133 e!2948130)))

(declare-fun c!807264 () Bool)

(assert (=> b!4726920 (= c!807264 call!330702)))

(declare-fun b!4726921 () Bool)

(assert (=> b!4726921 (= e!2948128 e!2948131)))

(declare-fun res!2000538 () Bool)

(assert (=> b!4726921 (=> (not res!2000538) (not e!2948131))))

(assert (=> b!4726921 (= res!2000538 (isDefined!9628 (getValueByKey!1966 (toList!5942 (extractMap!2052 (toList!5941 lm!2023))) key!4653)))))

(assert (= (and d!1506071 c!807265) b!4726917))

(assert (= (and d!1506071 (not c!807265)) b!4726920))

(assert (= (and b!4726920 c!807264) b!4726915))

(assert (= (and b!4726920 (not c!807264)) b!4726919))

(assert (= (or b!4726917 b!4726920) bm!330697))

(assert (= (and bm!330697 c!807263) b!4726916))

(assert (= (and bm!330697 (not c!807263)) b!4726914))

(assert (= (and d!1506071 res!2000539) b!4726918))

(assert (= (and d!1506071 (not res!2000540)) b!4726921))

(assert (= (and b!4726921 res!2000538) b!4726913))

(declare-fun m!5666777 () Bool)

(assert (=> b!4726921 m!5666777))

(assert (=> b!4726921 m!5666777))

(declare-fun m!5666779 () Bool)

(assert (=> b!4726921 m!5666779))

(declare-fun m!5666781 () Bool)

(assert (=> b!4726917 m!5666781))

(assert (=> b!4726917 m!5666777))

(assert (=> b!4726917 m!5666777))

(assert (=> b!4726917 m!5666779))

(declare-fun m!5666783 () Bool)

(assert (=> b!4726917 m!5666783))

(declare-fun m!5666785 () Bool)

(assert (=> b!4726916 m!5666785))

(assert (=> b!4726913 m!5666041))

(declare-fun m!5666787 () Bool)

(assert (=> b!4726913 m!5666787))

(assert (=> b!4726913 m!5666787))

(declare-fun m!5666789 () Bool)

(assert (=> b!4726913 m!5666789))

(declare-fun m!5666791 () Bool)

(assert (=> bm!330697 m!5666791))

(declare-fun m!5666793 () Bool)

(assert (=> b!4726915 m!5666793))

(declare-fun m!5666795 () Bool)

(assert (=> b!4726915 m!5666795))

(assert (=> b!4726918 m!5666041))

(assert (=> b!4726918 m!5666787))

(assert (=> b!4726918 m!5666787))

(assert (=> b!4726918 m!5666789))

(assert (=> d!1506071 m!5666793))

(assert (=> b!4726914 m!5666041))

(assert (=> b!4726914 m!5666787))

(assert (=> b!4726556 d!1506071))

(assert (=> b!4726556 d!1505801))

(assert (=> b!4726479 d!1505825))

(declare-fun d!1506073 () Bool)

(declare-fun res!2000547 () Bool)

(declare-fun e!2948140 () Bool)

(assert (=> d!1506073 (=> res!2000547 e!2948140)))

(assert (=> d!1506073 (= res!2000547 (not ((_ is Cons!52860) (t!360260 newBucket!218))))))

(assert (=> d!1506073 (= (noDuplicateKeys!2026 (t!360260 newBucket!218)) e!2948140)))

(declare-fun b!4726928 () Bool)

(declare-fun e!2948141 () Bool)

(assert (=> b!4726928 (= e!2948140 e!2948141)))

(declare-fun res!2000548 () Bool)

(assert (=> b!4726928 (=> (not res!2000548) (not e!2948141))))

(assert (=> b!4726928 (= res!2000548 (not (containsKey!3389 (t!360260 (t!360260 newBucket!218)) (_1!30543 (h!59213 (t!360260 newBucket!218))))))))

(declare-fun b!4726929 () Bool)

(assert (=> b!4726929 (= e!2948141 (noDuplicateKeys!2026 (t!360260 (t!360260 newBucket!218))))))

(assert (= (and d!1506073 (not res!2000547)) b!4726928))

(assert (= (and b!4726928 res!2000548) b!4726929))

(declare-fun m!5666799 () Bool)

(assert (=> b!4726928 m!5666799))

(declare-fun m!5666801 () Bool)

(assert (=> b!4726929 m!5666801))

(assert (=> b!4726591 d!1506073))

(declare-fun d!1506077 () Bool)

(declare-fun res!2000551 () Bool)

(declare-fun e!2948144 () Bool)

(assert (=> d!1506077 (=> res!2000551 e!2948144)))

(assert (=> d!1506077 (= res!2000551 ((_ is Nil!52861) (toList!5941 lm!2023)))))

(assert (=> d!1506077 (= (forall!11610 (toList!5941 lm!2023) lambda!216309) e!2948144)))

(declare-fun b!4726932 () Bool)

(declare-fun e!2948145 () Bool)

(assert (=> b!4726932 (= e!2948144 e!2948145)))

(declare-fun res!2000552 () Bool)

(assert (=> b!4726932 (=> (not res!2000552) (not e!2948145))))

(assert (=> b!4726932 (= res!2000552 (dynLambda!21830 lambda!216309 (h!59214 (toList!5941 lm!2023))))))

(declare-fun b!4726933 () Bool)

(assert (=> b!4726933 (= e!2948145 (forall!11610 (t!360261 (toList!5941 lm!2023)) lambda!216309))))

(assert (= (and d!1506077 (not res!2000551)) b!4726932))

(assert (= (and b!4726932 res!2000552) b!4726933))

(declare-fun b_lambda!179669 () Bool)

(assert (=> (not b_lambda!179669) (not b!4726932)))

(declare-fun m!5666805 () Bool)

(assert (=> b!4726932 m!5666805))

(declare-fun m!5666807 () Bool)

(assert (=> b!4726933 m!5666807))

(assert (=> d!1505881 d!1506077))

(declare-fun d!1506081 () Bool)

(declare-fun res!2000556 () Bool)

(declare-fun e!2948149 () Bool)

(assert (=> d!1506081 (=> res!2000556 e!2948149)))

(assert (=> d!1506081 (= res!2000556 ((_ is Nil!52860) (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023))))))))

(assert (=> d!1506081 (= (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (ite c!807218 lambda!216362 lambda!216363)) e!2948149)))

(declare-fun b!4726939 () Bool)

(declare-fun e!2948150 () Bool)

(assert (=> b!4726939 (= e!2948149 e!2948150)))

(declare-fun res!2000557 () Bool)

(assert (=> b!4726939 (=> (not res!2000557) (not e!2948150))))

(assert (=> b!4726939 (= res!2000557 (dynLambda!21832 (ite c!807218 lambda!216362 lambda!216363) (h!59213 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))))))))

(declare-fun b!4726940 () Bool)

(assert (=> b!4726940 (= e!2948150 (forall!11612 (t!360260 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023))))) (ite c!807218 lambda!216362 lambda!216363)))))

(assert (= (and d!1506081 (not res!2000556)) b!4726939))

(assert (= (and b!4726939 res!2000557) b!4726940))

(declare-fun b_lambda!179671 () Bool)

(assert (=> (not b_lambda!179671) (not b!4726939)))

(declare-fun m!5666809 () Bool)

(assert (=> b!4726939 m!5666809))

(declare-fun m!5666811 () Bool)

(assert (=> b!4726940 m!5666811))

(assert (=> bm!330692 d!1506081))

(declare-fun d!1506083 () Bool)

(declare-fun lt!1891430 () Bool)

(assert (=> d!1506083 (= lt!1891430 (select (content!9407 (t!360261 (toList!5941 lm!2023))) lt!1891011))))

(declare-fun e!2948152 () Bool)

(assert (=> d!1506083 (= lt!1891430 e!2948152)))

(declare-fun res!2000559 () Bool)

(assert (=> d!1506083 (=> (not res!2000559) (not e!2948152))))

(assert (=> d!1506083 (= res!2000559 ((_ is Cons!52861) (t!360261 (toList!5941 lm!2023))))))

(assert (=> d!1506083 (= (contains!16208 (t!360261 (toList!5941 lm!2023)) lt!1891011) lt!1891430)))

(declare-fun b!4726941 () Bool)

(declare-fun e!2948151 () Bool)

(assert (=> b!4726941 (= e!2948152 e!2948151)))

(declare-fun res!2000558 () Bool)

(assert (=> b!4726941 (=> res!2000558 e!2948151)))

(assert (=> b!4726941 (= res!2000558 (= (h!59214 (t!360261 (toList!5941 lm!2023))) lt!1891011))))

(declare-fun b!4726942 () Bool)

(assert (=> b!4726942 (= e!2948151 (contains!16208 (t!360261 (t!360261 (toList!5941 lm!2023))) lt!1891011))))

(assert (= (and d!1506083 res!2000559) b!4726941))

(assert (= (and b!4726941 (not res!2000558)) b!4726942))

(declare-fun m!5666813 () Bool)

(assert (=> d!1506083 m!5666813))

(declare-fun m!5666815 () Bool)

(assert (=> d!1506083 m!5666815))

(declare-fun m!5666817 () Bool)

(assert (=> b!4726942 m!5666817))

(assert (=> b!4726476 d!1506083))

(assert (=> b!4726396 d!1505927))

(declare-fun d!1506085 () Bool)

(declare-fun isEmpty!29185 (Option!12375) Bool)

(assert (=> d!1506085 (= (isDefined!9629 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891015)) (not (isEmpty!29185 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891015))))))

(declare-fun bs!1118118 () Bool)

(assert (= bs!1118118 d!1506085))

(assert (=> bs!1118118 m!5666245))

(declare-fun m!5666819 () Bool)

(assert (=> bs!1118118 m!5666819))

(assert (=> b!4726506 d!1506085))

(assert (=> b!4726506 d!1506031))

(declare-fun d!1506087 () Bool)

(assert (=> d!1506087 (dynLambda!21832 lambda!216364 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(declare-fun lt!1891433 () Unit!131013)

(declare-fun choose!33383 (List!52984 Int tuple2!54498) Unit!131013)

(assert (=> d!1506087 (= lt!1891433 (choose!33383 (toList!5942 lt!1891286) lambda!216364 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(declare-fun e!2948155 () Bool)

(assert (=> d!1506087 e!2948155))

(declare-fun res!2000562 () Bool)

(assert (=> d!1506087 (=> (not res!2000562) (not e!2948155))))

(assert (=> d!1506087 (= res!2000562 (forall!11612 (toList!5942 lt!1891286) lambda!216364))))

(assert (=> d!1506087 (= (forallContained!3653 (toList!5942 lt!1891286) lambda!216364 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891433)))

(declare-fun b!4726945 () Bool)

(assert (=> b!4726945 (= e!2948155 (contains!16214 (toList!5942 lt!1891286) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(assert (= (and d!1506087 res!2000562) b!4726945))

(declare-fun b_lambda!179673 () Bool)

(assert (=> (not b_lambda!179673) (not d!1506087)))

(declare-fun m!5666821 () Bool)

(assert (=> d!1506087 m!5666821))

(declare-fun m!5666823 () Bool)

(assert (=> d!1506087 m!5666823))

(assert (=> d!1506087 m!5666405))

(declare-fun m!5666825 () Bool)

(assert (=> b!4726945 m!5666825))

(assert (=> b!4726633 d!1506087))

(declare-fun b!4726946 () Bool)

(declare-fun e!2948159 () Bool)

(assert (=> b!4726946 (= e!2948159 (contains!16213 (keys!18992 lt!1891304) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun d!1506089 () Bool)

(declare-fun e!2948156 () Bool)

(assert (=> d!1506089 e!2948156))

(declare-fun res!2000565 () Bool)

(assert (=> d!1506089 (=> res!2000565 e!2948156)))

(declare-fun e!2948160 () Bool)

(assert (=> d!1506089 (= res!2000565 e!2948160)))

(declare-fun res!2000564 () Bool)

(assert (=> d!1506089 (=> (not res!2000564) (not e!2948160))))

(declare-fun lt!1891440 () Bool)

(assert (=> d!1506089 (= res!2000564 (not lt!1891440))))

(declare-fun lt!1891436 () Bool)

(assert (=> d!1506089 (= lt!1891440 lt!1891436)))

(declare-fun lt!1891437 () Unit!131013)

(declare-fun e!2948161 () Unit!131013)

(assert (=> d!1506089 (= lt!1891437 e!2948161)))

(declare-fun c!807269 () Bool)

(assert (=> d!1506089 (= c!807269 lt!1891436)))

(assert (=> d!1506089 (= lt!1891436 (containsKey!3387 (toList!5942 lt!1891304) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> d!1506089 (= (contains!16210 lt!1891304 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) lt!1891440)))

(declare-fun b!4726947 () Bool)

(declare-fun e!2948157 () List!52987)

(assert (=> b!4726947 (= e!2948157 (keys!18992 lt!1891304))))

(declare-fun b!4726948 () Bool)

(assert (=> b!4726948 false))

(declare-fun lt!1891434 () Unit!131013)

(declare-fun lt!1891441 () Unit!131013)

(assert (=> b!4726948 (= lt!1891434 lt!1891441)))

(assert (=> b!4726948 (containsKey!3387 (toList!5942 lt!1891304) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(assert (=> b!4726948 (= lt!1891441 (lemmaInGetKeysListThenContainsKey!956 (toList!5942 lt!1891304) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun e!2948158 () Unit!131013)

(declare-fun Unit!131072 () Unit!131013)

(assert (=> b!4726948 (= e!2948158 Unit!131072)))

(declare-fun b!4726949 () Bool)

(assert (=> b!4726949 (= e!2948157 (getKeysList!957 (toList!5942 lt!1891304)))))

(declare-fun b!4726950 () Bool)

(declare-fun lt!1891435 () Unit!131013)

(assert (=> b!4726950 (= e!2948161 lt!1891435)))

(declare-fun lt!1891439 () Unit!131013)

(assert (=> b!4726950 (= lt!1891439 (lemmaContainsKeyImpliesGetValueByKeyDefined!1857 (toList!5942 lt!1891304) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> b!4726950 (isDefined!9628 (getValueByKey!1966 (toList!5942 lt!1891304) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun lt!1891438 () Unit!131013)

(assert (=> b!4726950 (= lt!1891438 lt!1891439)))

(assert (=> b!4726950 (= lt!1891435 (lemmaInListThenGetKeysListContains!952 (toList!5942 lt!1891304) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun call!330706 () Bool)

(assert (=> b!4726950 call!330706))

(declare-fun bm!330701 () Bool)

(assert (=> bm!330701 (= call!330706 (contains!16213 e!2948157 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun c!807267 () Bool)

(assert (=> bm!330701 (= c!807267 c!807269)))

(declare-fun b!4726951 () Bool)

(assert (=> b!4726951 (= e!2948160 (not (contains!16213 (keys!18992 lt!1891304) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))))

(declare-fun b!4726952 () Bool)

(declare-fun Unit!131074 () Unit!131013)

(assert (=> b!4726952 (= e!2948158 Unit!131074)))

(declare-fun b!4726953 () Bool)

(assert (=> b!4726953 (= e!2948161 e!2948158)))

(declare-fun c!807268 () Bool)

(assert (=> b!4726953 (= c!807268 call!330706)))

(declare-fun b!4726954 () Bool)

(assert (=> b!4726954 (= e!2948156 e!2948159)))

(declare-fun res!2000563 () Bool)

(assert (=> b!4726954 (=> (not res!2000563) (not e!2948159))))

(assert (=> b!4726954 (= res!2000563 (isDefined!9628 (getValueByKey!1966 (toList!5942 lt!1891304) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))))

(assert (= (and d!1506089 c!807269) b!4726950))

(assert (= (and d!1506089 (not c!807269)) b!4726953))

(assert (= (and b!4726953 c!807268) b!4726948))

(assert (= (and b!4726953 (not c!807268)) b!4726952))

(assert (= (or b!4726950 b!4726953) bm!330701))

(assert (= (and bm!330701 c!807267) b!4726949))

(assert (= (and bm!330701 (not c!807267)) b!4726947))

(assert (= (and d!1506089 res!2000564) b!4726951))

(assert (= (and d!1506089 (not res!2000565)) b!4726954))

(assert (= (and b!4726954 res!2000563) b!4726946))

(declare-fun m!5666827 () Bool)

(assert (=> b!4726954 m!5666827))

(assert (=> b!4726954 m!5666827))

(declare-fun m!5666829 () Bool)

(assert (=> b!4726954 m!5666829))

(declare-fun m!5666831 () Bool)

(assert (=> b!4726950 m!5666831))

(assert (=> b!4726950 m!5666827))

(assert (=> b!4726950 m!5666827))

(assert (=> b!4726950 m!5666829))

(declare-fun m!5666833 () Bool)

(assert (=> b!4726950 m!5666833))

(declare-fun m!5666835 () Bool)

(assert (=> b!4726949 m!5666835))

(declare-fun m!5666837 () Bool)

(assert (=> b!4726946 m!5666837))

(assert (=> b!4726946 m!5666837))

(declare-fun m!5666839 () Bool)

(assert (=> b!4726946 m!5666839))

(declare-fun m!5666841 () Bool)

(assert (=> bm!330701 m!5666841))

(declare-fun m!5666843 () Bool)

(assert (=> b!4726948 m!5666843))

(declare-fun m!5666845 () Bool)

(assert (=> b!4726948 m!5666845))

(assert (=> b!4726951 m!5666837))

(assert (=> b!4726951 m!5666837))

(assert (=> b!4726951 m!5666839))

(assert (=> d!1506089 m!5666843))

(assert (=> b!4726947 m!5666837))

(assert (=> b!4726633 d!1506089))

(declare-fun bs!1118137 () Bool)

(declare-fun d!1506091 () Bool)

(assert (= bs!1118137 (and d!1506091 d!1505977)))

(declare-fun lambda!216411 () Int)

(assert (=> bs!1118137 (= (= lt!1891304 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216411 lambda!216398))))

(declare-fun bs!1118138 () Bool)

(assert (= bs!1118138 (and d!1506091 b!4726777)))

(assert (=> bs!1118138 (= (= lt!1891304 lt!1891366) (= lambda!216411 lambda!216384))))

(declare-fun bs!1118139 () Bool)

(assert (= bs!1118139 (and d!1506091 b!4726633)))

(assert (=> bs!1118139 (= lambda!216411 lambda!216364)))

(declare-fun bs!1118140 () Bool)

(assert (= bs!1118140 (and d!1506091 d!1505823)))

(assert (=> bs!1118140 (not (= lambda!216411 lambda!216275))))

(declare-fun bs!1118141 () Bool)

(assert (= bs!1118141 (and d!1506091 d!1505965)))

(assert (=> bs!1118141 (= (= lt!1891304 lt!1891364) (= lambda!216411 lambda!216388))))

(declare-fun bs!1118142 () Bool)

(assert (= bs!1118142 (and d!1506091 b!4726775)))

(assert (=> bs!1118142 (= (= lt!1891304 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216411 lambda!216381))))

(assert (=> bs!1118138 (= (= lt!1891304 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216411 lambda!216382))))

(declare-fun bs!1118143 () Bool)

(assert (= bs!1118143 (and d!1506091 d!1505873)))

(assert (=> bs!1118143 (not (= lambda!216411 lambda!216297))))

(declare-fun bs!1118144 () Bool)

(assert (= bs!1118144 (and d!1506091 d!1505883)))

(assert (=> bs!1118144 (= (= lt!1891304 lt!1891302) (= lambda!216411 lambda!216365))))

(declare-fun bs!1118145 () Bool)

(assert (= bs!1118145 (and d!1506091 b!4726631)))

(assert (=> bs!1118145 (= (= lt!1891304 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216411 lambda!216362))))

(assert (=> bs!1118139 (= (= lt!1891304 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216411 lambda!216363))))

(assert (=> d!1506091 true))

(assert (=> d!1506091 (forall!11612 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) lambda!216411)))

(declare-fun lt!1891446 () Unit!131013)

(declare-fun choose!33384 (ListMap!5305 ListMap!5305 K!14215 V!14461) Unit!131013)

(assert (=> d!1506091 (= lt!1891446 (choose!33384 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) lt!1891304 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (_2!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> d!1506091 (forall!11612 (toList!5942 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (tuple2!54499 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (_2!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))) lambda!216411)))

(assert (=> d!1506091 (= (addForallContainsKeyThenBeforeAdding!802 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) lt!1891304 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (_2!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) lt!1891446)))

(declare-fun bs!1118146 () Bool)

(assert (= bs!1118146 d!1506091))

(declare-fun m!5666893 () Bool)

(assert (=> bs!1118146 m!5666893))

(assert (=> bs!1118146 m!5666051))

(declare-fun m!5666895 () Bool)

(assert (=> bs!1118146 m!5666895))

(assert (=> bs!1118146 m!5666051))

(declare-fun m!5666897 () Bool)

(assert (=> bs!1118146 m!5666897))

(declare-fun m!5666899 () Bool)

(assert (=> bs!1118146 m!5666899))

(assert (=> b!4726633 d!1506091))

(declare-fun d!1506101 () Bool)

(declare-fun res!2000566 () Bool)

(declare-fun e!2948165 () Bool)

(assert (=> d!1506101 (=> res!2000566 e!2948165)))

(assert (=> d!1506101 (= res!2000566 ((_ is Nil!52860) (toList!5942 lt!1891286)))))

(assert (=> d!1506101 (= (forall!11612 (toList!5942 lt!1891286) lambda!216364) e!2948165)))

(declare-fun b!4726963 () Bool)

(declare-fun e!2948166 () Bool)

(assert (=> b!4726963 (= e!2948165 e!2948166)))

(declare-fun res!2000567 () Bool)

(assert (=> b!4726963 (=> (not res!2000567) (not e!2948166))))

(assert (=> b!4726963 (= res!2000567 (dynLambda!21832 lambda!216364 (h!59213 (toList!5942 lt!1891286))))))

(declare-fun b!4726964 () Bool)

(assert (=> b!4726964 (= e!2948166 (forall!11612 (t!360260 (toList!5942 lt!1891286)) lambda!216364))))

(assert (= (and d!1506101 (not res!2000566)) b!4726963))

(assert (= (and b!4726963 res!2000567) b!4726964))

(declare-fun b_lambda!179677 () Bool)

(assert (=> (not b_lambda!179677) (not b!4726963)))

(declare-fun m!5666901 () Bool)

(assert (=> b!4726963 m!5666901))

(declare-fun m!5666903 () Bool)

(assert (=> b!4726964 m!5666903))

(assert (=> b!4726633 d!1506101))

(declare-fun b!4726965 () Bool)

(declare-fun e!2948170 () Bool)

(assert (=> b!4726965 (= e!2948170 (contains!16213 (keys!18992 lt!1891286) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun d!1506103 () Bool)

(declare-fun e!2948167 () Bool)

(assert (=> d!1506103 e!2948167))

(declare-fun res!2000570 () Bool)

(assert (=> d!1506103 (=> res!2000570 e!2948167)))

(declare-fun e!2948171 () Bool)

(assert (=> d!1506103 (= res!2000570 e!2948171)))

(declare-fun res!2000569 () Bool)

(assert (=> d!1506103 (=> (not res!2000569) (not e!2948171))))

(declare-fun lt!1891455 () Bool)

(assert (=> d!1506103 (= res!2000569 (not lt!1891455))))

(declare-fun lt!1891449 () Bool)

(assert (=> d!1506103 (= lt!1891455 lt!1891449)))

(declare-fun lt!1891452 () Unit!131013)

(declare-fun e!2948172 () Unit!131013)

(assert (=> d!1506103 (= lt!1891452 e!2948172)))

(declare-fun c!807275 () Bool)

(assert (=> d!1506103 (= c!807275 lt!1891449)))

(assert (=> d!1506103 (= lt!1891449 (containsKey!3387 (toList!5942 lt!1891286) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> d!1506103 (= (contains!16210 lt!1891286 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) lt!1891455)))

(declare-fun b!4726966 () Bool)

(declare-fun e!2948168 () List!52987)

(assert (=> b!4726966 (= e!2948168 (keys!18992 lt!1891286))))

(declare-fun b!4726967 () Bool)

(assert (=> b!4726967 false))

(declare-fun lt!1891447 () Unit!131013)

(declare-fun lt!1891456 () Unit!131013)

(assert (=> b!4726967 (= lt!1891447 lt!1891456)))

(assert (=> b!4726967 (containsKey!3387 (toList!5942 lt!1891286) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(assert (=> b!4726967 (= lt!1891456 (lemmaInGetKeysListThenContainsKey!956 (toList!5942 lt!1891286) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun e!2948169 () Unit!131013)

(declare-fun Unit!131076 () Unit!131013)

(assert (=> b!4726967 (= e!2948169 Unit!131076)))

(declare-fun b!4726968 () Bool)

(assert (=> b!4726968 (= e!2948168 (getKeysList!957 (toList!5942 lt!1891286)))))

(declare-fun b!4726969 () Bool)

(declare-fun lt!1891448 () Unit!131013)

(assert (=> b!4726969 (= e!2948172 lt!1891448)))

(declare-fun lt!1891454 () Unit!131013)

(assert (=> b!4726969 (= lt!1891454 (lemmaContainsKeyImpliesGetValueByKeyDefined!1857 (toList!5942 lt!1891286) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> b!4726969 (isDefined!9628 (getValueByKey!1966 (toList!5942 lt!1891286) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun lt!1891453 () Unit!131013)

(assert (=> b!4726969 (= lt!1891453 lt!1891454)))

(assert (=> b!4726969 (= lt!1891448 (lemmaInListThenGetKeysListContains!952 (toList!5942 lt!1891286) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun call!330707 () Bool)

(assert (=> b!4726969 call!330707))

(declare-fun bm!330702 () Bool)

(assert (=> bm!330702 (= call!330707 (contains!16213 e!2948168 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun c!807273 () Bool)

(assert (=> bm!330702 (= c!807273 c!807275)))

(declare-fun b!4726970 () Bool)

(assert (=> b!4726970 (= e!2948171 (not (contains!16213 (keys!18992 lt!1891286) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))))

(declare-fun b!4726971 () Bool)

(declare-fun Unit!131077 () Unit!131013)

(assert (=> b!4726971 (= e!2948169 Unit!131077)))

(declare-fun b!4726972 () Bool)

(assert (=> b!4726972 (= e!2948172 e!2948169)))

(declare-fun c!807274 () Bool)

(assert (=> b!4726972 (= c!807274 call!330707)))

(declare-fun b!4726973 () Bool)

(assert (=> b!4726973 (= e!2948167 e!2948170)))

(declare-fun res!2000568 () Bool)

(assert (=> b!4726973 (=> (not res!2000568) (not e!2948170))))

(assert (=> b!4726973 (= res!2000568 (isDefined!9628 (getValueByKey!1966 (toList!5942 lt!1891286) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))))

(assert (= (and d!1506103 c!807275) b!4726969))

(assert (= (and d!1506103 (not c!807275)) b!4726972))

(assert (= (and b!4726972 c!807274) b!4726967))

(assert (= (and b!4726972 (not c!807274)) b!4726971))

(assert (= (or b!4726969 b!4726972) bm!330702))

(assert (= (and bm!330702 c!807273) b!4726968))

(assert (= (and bm!330702 (not c!807273)) b!4726966))

(assert (= (and d!1506103 res!2000569) b!4726970))

(assert (= (and d!1506103 (not res!2000570)) b!4726973))

(assert (= (and b!4726973 res!2000568) b!4726965))

(declare-fun m!5666905 () Bool)

(assert (=> b!4726973 m!5666905))

(assert (=> b!4726973 m!5666905))

(declare-fun m!5666907 () Bool)

(assert (=> b!4726973 m!5666907))

(declare-fun m!5666909 () Bool)

(assert (=> b!4726969 m!5666909))

(assert (=> b!4726969 m!5666905))

(assert (=> b!4726969 m!5666905))

(assert (=> b!4726969 m!5666907))

(declare-fun m!5666911 () Bool)

(assert (=> b!4726969 m!5666911))

(declare-fun m!5666913 () Bool)

(assert (=> b!4726968 m!5666913))

(declare-fun m!5666915 () Bool)

(assert (=> b!4726965 m!5666915))

(assert (=> b!4726965 m!5666915))

(declare-fun m!5666917 () Bool)

(assert (=> b!4726965 m!5666917))

(declare-fun m!5666919 () Bool)

(assert (=> bm!330702 m!5666919))

(declare-fun m!5666921 () Bool)

(assert (=> b!4726967 m!5666921))

(declare-fun m!5666923 () Bool)

(assert (=> b!4726967 m!5666923))

(assert (=> b!4726970 m!5666915))

(assert (=> b!4726970 m!5666915))

(assert (=> b!4726970 m!5666917))

(assert (=> d!1506103 m!5666921))

(assert (=> b!4726966 m!5666915))

(assert (=> b!4726633 d!1506103))

(declare-fun d!1506105 () Bool)

(declare-fun e!2948183 () Bool)

(assert (=> d!1506105 e!2948183))

(declare-fun res!2000584 () Bool)

(assert (=> d!1506105 (=> (not res!2000584) (not e!2948183))))

(declare-fun lt!1891492 () ListMap!5305)

(assert (=> d!1506105 (= res!2000584 (contains!16210 lt!1891492 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun lt!1891490 () List!52984)

(assert (=> d!1506105 (= lt!1891492 (ListMap!5306 lt!1891490))))

(declare-fun lt!1891491 () Unit!131013)

(declare-fun lt!1891493 () Unit!131013)

(assert (=> d!1506105 (= lt!1891491 lt!1891493)))

(assert (=> d!1506105 (= (getValueByKey!1966 lt!1891490 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (Some!12373 (_2!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1091 (List!52984 K!14215 V!14461) Unit!131013)

(assert (=> d!1506105 (= lt!1891493 (lemmaContainsTupThenGetReturnValue!1091 lt!1891490 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (_2!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun insertNoDuplicatedKeys!599 (List!52984 K!14215 V!14461) List!52984)

(assert (=> d!1506105 (= lt!1891490 (insertNoDuplicatedKeys!599 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (_2!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> d!1506105 (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891492)))

(declare-fun b!4726988 () Bool)

(declare-fun res!2000583 () Bool)

(assert (=> b!4726988 (=> (not res!2000583) (not e!2948183))))

(assert (=> b!4726988 (= res!2000583 (= (getValueByKey!1966 (toList!5942 lt!1891492) (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (Some!12373 (_2!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))))

(declare-fun b!4726989 () Bool)

(assert (=> b!4726989 (= e!2948183 (contains!16214 (toList!5942 lt!1891492) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(assert (= (and d!1506105 res!2000584) b!4726988))

(assert (= (and b!4726988 res!2000583) b!4726989))

(declare-fun m!5666941 () Bool)

(assert (=> d!1506105 m!5666941))

(declare-fun m!5666943 () Bool)

(assert (=> d!1506105 m!5666943))

(declare-fun m!5666945 () Bool)

(assert (=> d!1506105 m!5666945))

(declare-fun m!5666947 () Bool)

(assert (=> d!1506105 m!5666947))

(declare-fun m!5666949 () Bool)

(assert (=> b!4726988 m!5666949))

(declare-fun m!5666951 () Bool)

(assert (=> b!4726989 m!5666951))

(assert (=> b!4726633 d!1506105))

(assert (=> b!4726633 d!1505949))

(declare-fun bs!1118178 () Bool)

(declare-fun b!4726991 () Bool)

(assert (= bs!1118178 (and b!4726991 d!1505977)))

(declare-fun lambda!216420 () Int)

(assert (=> bs!1118178 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216420 lambda!216398))))

(declare-fun bs!1118179 () Bool)

(assert (= bs!1118179 (and b!4726991 b!4726777)))

(assert (=> bs!1118179 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891366) (= lambda!216420 lambda!216384))))

(declare-fun bs!1118180 () Bool)

(assert (= bs!1118180 (and b!4726991 d!1506091)))

(assert (=> bs!1118180 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891304) (= lambda!216420 lambda!216411))))

(declare-fun bs!1118181 () Bool)

(assert (= bs!1118181 (and b!4726991 b!4726633)))

(assert (=> bs!1118181 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891304) (= lambda!216420 lambda!216364))))

(declare-fun bs!1118182 () Bool)

(assert (= bs!1118182 (and b!4726991 d!1505823)))

(assert (=> bs!1118182 (not (= lambda!216420 lambda!216275))))

(declare-fun bs!1118183 () Bool)

(assert (= bs!1118183 (and b!4726991 d!1505965)))

(assert (=> bs!1118183 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891364) (= lambda!216420 lambda!216388))))

(declare-fun bs!1118184 () Bool)

(assert (= bs!1118184 (and b!4726991 b!4726775)))

(assert (=> bs!1118184 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216420 lambda!216381))))

(assert (=> bs!1118179 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216420 lambda!216382))))

(declare-fun bs!1118185 () Bool)

(assert (= bs!1118185 (and b!4726991 d!1505873)))

(assert (=> bs!1118185 (not (= lambda!216420 lambda!216297))))

(declare-fun bs!1118187 () Bool)

(assert (= bs!1118187 (and b!4726991 d!1505883)))

(assert (=> bs!1118187 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891302) (= lambda!216420 lambda!216365))))

(declare-fun bs!1118189 () Bool)

(assert (= bs!1118189 (and b!4726991 b!4726631)))

(assert (=> bs!1118189 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216420 lambda!216362))))

(assert (=> bs!1118181 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216420 lambda!216363))))

(assert (=> b!4726991 true))

(declare-fun bs!1118197 () Bool)

(declare-fun b!4726993 () Bool)

(assert (= bs!1118197 (and b!4726993 d!1505977)))

(declare-fun lambda!216422 () Int)

(assert (=> bs!1118197 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216422 lambda!216398))))

(declare-fun bs!1118198 () Bool)

(assert (= bs!1118198 (and b!4726993 b!4726777)))

(assert (=> bs!1118198 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891366) (= lambda!216422 lambda!216384))))

(declare-fun bs!1118200 () Bool)

(assert (= bs!1118200 (and b!4726993 d!1506091)))

(assert (=> bs!1118200 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891304) (= lambda!216422 lambda!216411))))

(declare-fun bs!1118202 () Bool)

(assert (= bs!1118202 (and b!4726993 b!4726633)))

(assert (=> bs!1118202 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891304) (= lambda!216422 lambda!216364))))

(declare-fun bs!1118204 () Bool)

(assert (= bs!1118204 (and b!4726993 d!1505823)))

(assert (=> bs!1118204 (not (= lambda!216422 lambda!216275))))

(declare-fun bs!1118205 () Bool)

(assert (= bs!1118205 (and b!4726993 b!4726991)))

(assert (=> bs!1118205 (= lambda!216422 lambda!216420)))

(declare-fun bs!1118206 () Bool)

(assert (= bs!1118206 (and b!4726993 d!1505965)))

(assert (=> bs!1118206 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891364) (= lambda!216422 lambda!216388))))

(declare-fun bs!1118207 () Bool)

(assert (= bs!1118207 (and b!4726993 b!4726775)))

(assert (=> bs!1118207 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216422 lambda!216381))))

(assert (=> bs!1118198 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216422 lambda!216382))))

(declare-fun bs!1118208 () Bool)

(assert (= bs!1118208 (and b!4726993 d!1505873)))

(assert (=> bs!1118208 (not (= lambda!216422 lambda!216297))))

(declare-fun bs!1118209 () Bool)

(assert (= bs!1118209 (and b!4726993 d!1505883)))

(assert (=> bs!1118209 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891302) (= lambda!216422 lambda!216365))))

(declare-fun bs!1118210 () Bool)

(assert (= bs!1118210 (and b!4726993 b!4726631)))

(assert (=> bs!1118210 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216422 lambda!216362))))

(assert (=> bs!1118202 (= (= (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216422 lambda!216363))))

(assert (=> b!4726993 true))

(declare-fun lt!1891512 () ListMap!5305)

(declare-fun lambda!216423 () Int)

(assert (=> bs!1118197 (= (= lt!1891512 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216423 lambda!216398))))

(assert (=> bs!1118198 (= (= lt!1891512 lt!1891366) (= lambda!216423 lambda!216384))))

(assert (=> bs!1118200 (= (= lt!1891512 lt!1891304) (= lambda!216423 lambda!216411))))

(assert (=> b!4726993 (= (= lt!1891512 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (= lambda!216423 lambda!216422))))

(assert (=> bs!1118202 (= (= lt!1891512 lt!1891304) (= lambda!216423 lambda!216364))))

(assert (=> bs!1118204 (not (= lambda!216423 lambda!216275))))

(assert (=> bs!1118205 (= (= lt!1891512 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (= lambda!216423 lambda!216420))))

(assert (=> bs!1118206 (= (= lt!1891512 lt!1891364) (= lambda!216423 lambda!216388))))

(assert (=> bs!1118207 (= (= lt!1891512 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216423 lambda!216381))))

(assert (=> bs!1118198 (= (= lt!1891512 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216423 lambda!216382))))

(assert (=> bs!1118208 (not (= lambda!216423 lambda!216297))))

(assert (=> bs!1118209 (= (= lt!1891512 lt!1891302) (= lambda!216423 lambda!216365))))

(assert (=> bs!1118210 (= (= lt!1891512 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216423 lambda!216362))))

(assert (=> bs!1118202 (= (= lt!1891512 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216423 lambda!216363))))

(assert (=> b!4726993 true))

(declare-fun bs!1118211 () Bool)

(declare-fun d!1506113 () Bool)

(assert (= bs!1118211 (and d!1506113 d!1505977)))

(declare-fun lambda!216424 () Int)

(declare-fun lt!1891510 () ListMap!5305)

(assert (=> bs!1118211 (= (= lt!1891510 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216424 lambda!216398))))

(declare-fun bs!1118212 () Bool)

(assert (= bs!1118212 (and d!1506113 b!4726777)))

(assert (=> bs!1118212 (= (= lt!1891510 lt!1891366) (= lambda!216424 lambda!216384))))

(declare-fun bs!1118213 () Bool)

(assert (= bs!1118213 (and d!1506113 d!1506091)))

(assert (=> bs!1118213 (= (= lt!1891510 lt!1891304) (= lambda!216424 lambda!216411))))

(declare-fun bs!1118214 () Bool)

(assert (= bs!1118214 (and d!1506113 b!4726993)))

(assert (=> bs!1118214 (= (= lt!1891510 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (= lambda!216424 lambda!216422))))

(declare-fun bs!1118215 () Bool)

(assert (= bs!1118215 (and d!1506113 b!4726633)))

(assert (=> bs!1118215 (= (= lt!1891510 lt!1891304) (= lambda!216424 lambda!216364))))

(declare-fun bs!1118216 () Bool)

(assert (= bs!1118216 (and d!1506113 d!1505823)))

(assert (=> bs!1118216 (not (= lambda!216424 lambda!216275))))

(declare-fun bs!1118217 () Bool)

(assert (= bs!1118217 (and d!1506113 b!4726991)))

(assert (=> bs!1118217 (= (= lt!1891510 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (= lambda!216424 lambda!216420))))

(declare-fun bs!1118218 () Bool)

(assert (= bs!1118218 (and d!1506113 d!1505965)))

(assert (=> bs!1118218 (= (= lt!1891510 lt!1891364) (= lambda!216424 lambda!216388))))

(declare-fun bs!1118219 () Bool)

(assert (= bs!1118219 (and d!1506113 b!4726775)))

(assert (=> bs!1118219 (= (= lt!1891510 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216424 lambda!216381))))

(declare-fun bs!1118220 () Bool)

(assert (= bs!1118220 (and d!1506113 d!1505873)))

(assert (=> bs!1118220 (not (= lambda!216424 lambda!216297))))

(declare-fun bs!1118221 () Bool)

(assert (= bs!1118221 (and d!1506113 d!1505883)))

(assert (=> bs!1118221 (= (= lt!1891510 lt!1891302) (= lambda!216424 lambda!216365))))

(assert (=> bs!1118212 (= (= lt!1891510 (extractMap!2052 (t!360261 (t!360261 (toList!5941 lm!2023))))) (= lambda!216424 lambda!216382))))

(assert (=> bs!1118214 (= (= lt!1891510 lt!1891512) (= lambda!216424 lambda!216423))))

(declare-fun bs!1118222 () Bool)

(assert (= bs!1118222 (and d!1506113 b!4726631)))

(assert (=> bs!1118222 (= (= lt!1891510 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216424 lambda!216362))))

(assert (=> bs!1118215 (= (= lt!1891510 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (= lambda!216424 lambda!216363))))

(assert (=> d!1506113 true))

(declare-fun bm!330706 () Bool)

(declare-fun call!330713 () Unit!131013)

(assert (=> bm!330706 (= call!330713 (lemmaContainsAllItsOwnKeys!803 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun c!807277 () Bool)

(declare-fun call!330711 () Bool)

(declare-fun bm!330707 () Bool)

(assert (=> bm!330707 (= call!330711 (forall!11612 (ite c!807277 (toList!5942 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (t!360260 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (ite c!807277 lambda!216420 lambda!216423)))))

(declare-fun b!4726990 () Bool)

(declare-fun e!2948185 () Bool)

(assert (=> b!4726990 (= e!2948185 (invariantList!1517 (toList!5942 lt!1891510)))))

(declare-fun e!2948186 () ListMap!5305)

(assert (=> b!4726991 (= e!2948186 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(declare-fun lt!1891513 () Unit!131013)

(assert (=> b!4726991 (= lt!1891513 call!330713)))

(assert (=> b!4726991 call!330711))

(declare-fun lt!1891514 () Unit!131013)

(assert (=> b!4726991 (= lt!1891514 lt!1891513)))

(declare-fun call!330712 () Bool)

(assert (=> b!4726991 call!330712))

(declare-fun lt!1891511 () Unit!131013)

(declare-fun Unit!131078 () Unit!131013)

(assert (=> b!4726991 (= lt!1891511 Unit!131078)))

(declare-fun b!4726992 () Bool)

(declare-fun e!2948184 () Bool)

(assert (=> b!4726992 (= e!2948184 (forall!11612 (toList!5942 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) lambda!216423))))

(declare-fun b!4726994 () Bool)

(declare-fun res!2000586 () Bool)

(assert (=> b!4726994 (=> (not res!2000586) (not e!2948185))))

(assert (=> b!4726994 (= res!2000586 (forall!11612 (toList!5942 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) lambda!216424))))

(declare-fun bm!330708 () Bool)

(assert (=> bm!330708 (= call!330712 (forall!11612 (toList!5942 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (ite c!807277 lambda!216420 lambda!216422)))))

(assert (=> b!4726993 (= e!2948186 lt!1891512)))

(declare-fun lt!1891494 () ListMap!5305)

(assert (=> b!4726993 (= lt!1891494 (+!2275 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (h!59213 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> b!4726993 (= lt!1891512 (addToMapMapFromBucket!1456 (t!360260 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (+!2275 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (h!59213 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))))

(declare-fun lt!1891496 () Unit!131013)

(assert (=> b!4726993 (= lt!1891496 call!330713)))

(assert (=> b!4726993 call!330712))

(declare-fun lt!1891506 () Unit!131013)

(assert (=> b!4726993 (= lt!1891506 lt!1891496)))

(assert (=> b!4726993 (forall!11612 (toList!5942 lt!1891494) lambda!216423)))

(declare-fun lt!1891499 () Unit!131013)

(declare-fun Unit!131079 () Unit!131013)

(assert (=> b!4726993 (= lt!1891499 Unit!131079)))

(assert (=> b!4726993 call!330711))

(declare-fun lt!1891501 () Unit!131013)

(declare-fun Unit!131080 () Unit!131013)

(assert (=> b!4726993 (= lt!1891501 Unit!131080)))

(declare-fun lt!1891505 () Unit!131013)

(declare-fun Unit!131081 () Unit!131013)

(assert (=> b!4726993 (= lt!1891505 Unit!131081)))

(declare-fun lt!1891497 () Unit!131013)

(assert (=> b!4726993 (= lt!1891497 (forallContained!3653 (toList!5942 lt!1891494) lambda!216423 (h!59213 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> b!4726993 (contains!16210 lt!1891494 (_1!30543 (h!59213 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun lt!1891504 () Unit!131013)

(declare-fun Unit!131082 () Unit!131013)

(assert (=> b!4726993 (= lt!1891504 Unit!131082)))

(assert (=> b!4726993 (contains!16210 lt!1891512 (_1!30543 (h!59213 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun lt!1891495 () Unit!131013)

(declare-fun Unit!131083 () Unit!131013)

(assert (=> b!4726993 (= lt!1891495 Unit!131083)))

(assert (=> b!4726993 (forall!11612 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))) lambda!216423)))

(declare-fun lt!1891502 () Unit!131013)

(declare-fun Unit!131084 () Unit!131013)

(assert (=> b!4726993 (= lt!1891502 Unit!131084)))

(assert (=> b!4726993 (forall!11612 (toList!5942 lt!1891494) lambda!216423)))

(declare-fun lt!1891509 () Unit!131013)

(declare-fun Unit!131085 () Unit!131013)

(assert (=> b!4726993 (= lt!1891509 Unit!131085)))

(declare-fun lt!1891500 () Unit!131013)

(declare-fun Unit!131086 () Unit!131013)

(assert (=> b!4726993 (= lt!1891500 Unit!131086)))

(declare-fun lt!1891498 () Unit!131013)

(assert (=> b!4726993 (= lt!1891498 (addForallContainsKeyThenBeforeAdding!802 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) lt!1891512 (_1!30543 (h!59213 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (_2!30543 (h!59213 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))))

(assert (=> b!4726993 (forall!11612 (toList!5942 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) lambda!216423)))

(declare-fun lt!1891503 () Unit!131013)

(assert (=> b!4726993 (= lt!1891503 lt!1891498)))

(assert (=> b!4726993 (forall!11612 (toList!5942 (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) lambda!216423)))

(declare-fun lt!1891507 () Unit!131013)

(declare-fun Unit!131090 () Unit!131013)

(assert (=> b!4726993 (= lt!1891507 Unit!131090)))

(declare-fun res!2000587 () Bool)

(assert (=> b!4726993 (= res!2000587 (forall!11612 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))) lambda!216423))))

(assert (=> b!4726993 (=> (not res!2000587) (not e!2948184))))

(assert (=> b!4726993 e!2948184))

(declare-fun lt!1891508 () Unit!131013)

(declare-fun Unit!131091 () Unit!131013)

(assert (=> b!4726993 (= lt!1891508 Unit!131091)))

(assert (=> d!1506113 e!2948185))

(declare-fun res!2000585 () Bool)

(assert (=> d!1506113 (=> (not res!2000585) (not e!2948185))))

(assert (=> d!1506113 (= res!2000585 (forall!11612 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))) lambda!216424))))

(assert (=> d!1506113 (= lt!1891510 e!2948186)))

(assert (=> d!1506113 (= c!807277 ((_ is Nil!52860) (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(assert (=> d!1506113 (noDuplicateKeys!2026 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(assert (=> d!1506113 (= (addToMapMapFromBucket!1456 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))) (+!2275 (extractMap!2052 (t!360261 (toList!5941 lm!2023))) (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) lt!1891510)))

(assert (= (and d!1506113 c!807277) b!4726991))

(assert (= (and d!1506113 (not c!807277)) b!4726993))

(assert (= (and b!4726993 res!2000587) b!4726992))

(assert (= (or b!4726991 b!4726993) bm!330706))

(assert (= (or b!4726991 b!4726993) bm!330707))

(assert (= (or b!4726991 b!4726993) bm!330708))

(assert (= (and d!1506113 res!2000585) b!4726994))

(assert (= (and b!4726994 res!2000586) b!4726990))

(declare-fun m!5667009 () Bool)

(assert (=> d!1506113 m!5667009))

(assert (=> d!1506113 m!5666773))

(declare-fun m!5667011 () Bool)

(assert (=> bm!330708 m!5667011))

(declare-fun m!5667013 () Bool)

(assert (=> b!4726993 m!5667013))

(declare-fun m!5667015 () Bool)

(assert (=> b!4726993 m!5667015))

(assert (=> b!4726993 m!5666407))

(declare-fun m!5667017 () Bool)

(assert (=> b!4726993 m!5667017))

(declare-fun m!5667019 () Bool)

(assert (=> b!4726993 m!5667019))

(assert (=> b!4726993 m!5667013))

(declare-fun m!5667021 () Bool)

(assert (=> b!4726993 m!5667021))

(declare-fun m!5667023 () Bool)

(assert (=> b!4726993 m!5667023))

(assert (=> b!4726993 m!5667019))

(assert (=> b!4726993 m!5667015))

(declare-fun m!5667025 () Bool)

(assert (=> b!4726993 m!5667025))

(declare-fun m!5667027 () Bool)

(assert (=> b!4726993 m!5667027))

(declare-fun m!5667029 () Bool)

(assert (=> b!4726993 m!5667029))

(assert (=> b!4726993 m!5666407))

(assert (=> b!4726993 m!5667021))

(assert (=> b!4726992 m!5667015))

(declare-fun m!5667031 () Bool)

(assert (=> b!4726990 m!5667031))

(declare-fun m!5667033 () Bool)

(assert (=> bm!330707 m!5667033))

(assert (=> bm!330706 m!5666407))

(declare-fun m!5667035 () Bool)

(assert (=> bm!330706 m!5667035))

(declare-fun m!5667037 () Bool)

(assert (=> b!4726994 m!5667037))

(assert (=> b!4726633 d!1506113))

(declare-fun d!1506121 () Bool)

(declare-fun res!2000593 () Bool)

(declare-fun e!2948195 () Bool)

(assert (=> d!1506121 (=> res!2000593 e!2948195)))

(assert (=> d!1506121 (= res!2000593 ((_ is Nil!52860) (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(assert (=> d!1506121 (= (forall!11612 (_2!30544 (h!59214 (toList!5941 lm!2023))) lambda!216364) e!2948195)))

(declare-fun b!4727006 () Bool)

(declare-fun e!2948196 () Bool)

(assert (=> b!4727006 (= e!2948195 e!2948196)))

(declare-fun res!2000594 () Bool)

(assert (=> b!4727006 (=> (not res!2000594) (not e!2948196))))

(assert (=> b!4727006 (= res!2000594 (dynLambda!21832 lambda!216364 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))

(declare-fun b!4727007 () Bool)

(assert (=> b!4727007 (= e!2948196 (forall!11612 (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))) lambda!216364))))

(assert (= (and d!1506121 (not res!2000593)) b!4727006))

(assert (= (and b!4727006 res!2000594) b!4727007))

(declare-fun b_lambda!179685 () Bool)

(assert (=> (not b_lambda!179685) (not b!4727006)))

(assert (=> b!4727006 m!5666821))

(declare-fun m!5667039 () Bool)

(assert (=> b!4727007 m!5667039))

(assert (=> b!4726633 d!1506121))

(declare-fun bs!1118228 () Bool)

(declare-fun b!4727086 () Bool)

(assert (= bs!1118228 (and b!4727086 b!4726722)))

(declare-fun lambda!216433 () Int)

(assert (=> bs!1118228 (= (= (t!360260 (toList!5942 lt!1891010)) (toList!5942 lt!1891010)) (= lambda!216433 lambda!216371))))

(assert (=> b!4727086 true))

(declare-fun bs!1118229 () Bool)

(declare-fun b!4727087 () Bool)

(assert (= bs!1118229 (and b!4727087 b!4726722)))

(declare-fun lambda!216434 () Int)

(assert (=> bs!1118229 (= (= (Cons!52860 (h!59213 (toList!5942 lt!1891010)) (t!360260 (toList!5942 lt!1891010))) (toList!5942 lt!1891010)) (= lambda!216434 lambda!216371))))

(declare-fun bs!1118230 () Bool)

(assert (= bs!1118230 (and b!4727087 b!4727086)))

(assert (=> bs!1118230 (= (= (Cons!52860 (h!59213 (toList!5942 lt!1891010)) (t!360260 (toList!5942 lt!1891010))) (t!360260 (toList!5942 lt!1891010))) (= lambda!216434 lambda!216433))))

(assert (=> b!4727087 true))

(declare-fun bs!1118231 () Bool)

(declare-fun b!4727088 () Bool)

(assert (= bs!1118231 (and b!4727088 b!4726722)))

(declare-fun lambda!216435 () Int)

(assert (=> bs!1118231 (= lambda!216435 lambda!216371)))

(declare-fun bs!1118232 () Bool)

(assert (= bs!1118232 (and b!4727088 b!4727086)))

(assert (=> bs!1118232 (= (= (toList!5942 lt!1891010) (t!360260 (toList!5942 lt!1891010))) (= lambda!216435 lambda!216433))))

(declare-fun bs!1118233 () Bool)

(assert (= bs!1118233 (and b!4727088 b!4727087)))

(assert (=> bs!1118233 (= (= (toList!5942 lt!1891010) (Cons!52860 (h!59213 (toList!5942 lt!1891010)) (t!360260 (toList!5942 lt!1891010)))) (= lambda!216435 lambda!216434))))

(assert (=> b!4727088 true))

(declare-fun bs!1118234 () Bool)

(declare-fun b!4727084 () Bool)

(assert (= bs!1118234 (and b!4727084 b!4726723)))

(declare-fun lambda!216436 () Int)

(assert (=> bs!1118234 (= lambda!216436 lambda!216372)))

(declare-fun e!2948250 () Bool)

(declare-fun lt!1891573 () List!52987)

(assert (=> b!4727084 (= e!2948250 (= (content!9408 lt!1891573) (content!9408 (map!11690 (toList!5942 lt!1891010) lambda!216436))))))

(declare-fun b!4727085 () Bool)

(declare-fun res!2000641 () Bool)

(assert (=> b!4727085 (=> (not res!2000641) (not e!2948250))))

(assert (=> b!4727085 (= res!2000641 (= (length!584 lt!1891573) (length!585 (toList!5942 lt!1891010))))))

(assert (=> b!4727086 false))

(declare-fun lt!1891576 () Unit!131013)

(declare-fun forallContained!3655 (List!52987 Int K!14215) Unit!131013)

(assert (=> b!4727086 (= lt!1891576 (forallContained!3655 (getKeysList!957 (t!360260 (toList!5942 lt!1891010))) lambda!216433 (_1!30543 (h!59213 (toList!5942 lt!1891010)))))))

(declare-fun e!2948249 () Unit!131013)

(declare-fun Unit!131100 () Unit!131013)

(assert (=> b!4727086 (= e!2948249 Unit!131100)))

(declare-fun e!2948251 () List!52987)

(assert (=> b!4727087 (= e!2948251 (Cons!52863 (_1!30543 (h!59213 (toList!5942 lt!1891010))) (getKeysList!957 (t!360260 (toList!5942 lt!1891010)))))))

(declare-fun c!807299 () Bool)

(assert (=> b!4727087 (= c!807299 (containsKey!3387 (t!360260 (toList!5942 lt!1891010)) (_1!30543 (h!59213 (toList!5942 lt!1891010)))))))

(declare-fun lt!1891574 () Unit!131013)

(declare-fun e!2948252 () Unit!131013)

(assert (=> b!4727087 (= lt!1891574 e!2948252)))

(declare-fun c!807297 () Bool)

(assert (=> b!4727087 (= c!807297 (contains!16213 (getKeysList!957 (t!360260 (toList!5942 lt!1891010))) (_1!30543 (h!59213 (toList!5942 lt!1891010)))))))

(declare-fun lt!1891578 () Unit!131013)

(assert (=> b!4727087 (= lt!1891578 e!2948249)))

(declare-fun lt!1891577 () List!52987)

(assert (=> b!4727087 (= lt!1891577 (getKeysList!957 (t!360260 (toList!5942 lt!1891010))))))

(declare-fun lt!1891579 () Unit!131013)

(declare-fun lemmaForallContainsAddHeadPreserves!284 (List!52984 List!52987 tuple2!54498) Unit!131013)

(assert (=> b!4727087 (= lt!1891579 (lemmaForallContainsAddHeadPreserves!284 (t!360260 (toList!5942 lt!1891010)) lt!1891577 (h!59213 (toList!5942 lt!1891010))))))

(assert (=> b!4727087 (forall!11613 lt!1891577 lambda!216434)))

(declare-fun lt!1891575 () Unit!131013)

(assert (=> b!4727087 (= lt!1891575 lt!1891579)))

(declare-fun d!1506123 () Bool)

(assert (=> d!1506123 e!2948250))

(declare-fun res!2000640 () Bool)

(assert (=> d!1506123 (=> (not res!2000640) (not e!2948250))))

(assert (=> d!1506123 (= res!2000640 (noDuplicate!864 lt!1891573))))

(assert (=> d!1506123 (= lt!1891573 e!2948251)))

(declare-fun c!807298 () Bool)

(assert (=> d!1506123 (= c!807298 ((_ is Cons!52860) (toList!5942 lt!1891010)))))

(assert (=> d!1506123 (invariantList!1517 (toList!5942 lt!1891010))))

(assert (=> d!1506123 (= (getKeysList!957 (toList!5942 lt!1891010)) lt!1891573)))

(declare-fun res!2000639 () Bool)

(assert (=> b!4727088 (=> (not res!2000639) (not e!2948250))))

(assert (=> b!4727088 (= res!2000639 (forall!11613 lt!1891573 lambda!216435))))

(declare-fun b!4727089 () Bool)

(assert (=> b!4727089 false))

(declare-fun Unit!131101 () Unit!131013)

(assert (=> b!4727089 (= e!2948252 Unit!131101)))

(declare-fun b!4727090 () Bool)

(assert (=> b!4727090 (= e!2948251 Nil!52863)))

(declare-fun b!4727091 () Bool)

(declare-fun Unit!131103 () Unit!131013)

(assert (=> b!4727091 (= e!2948252 Unit!131103)))

(declare-fun b!4727092 () Bool)

(declare-fun Unit!131104 () Unit!131013)

(assert (=> b!4727092 (= e!2948249 Unit!131104)))

(assert (= (and d!1506123 c!807298) b!4727087))

(assert (= (and d!1506123 (not c!807298)) b!4727090))

(assert (= (and b!4727087 c!807299) b!4727089))

(assert (= (and b!4727087 (not c!807299)) b!4727091))

(assert (= (and b!4727087 c!807297) b!4727086))

(assert (= (and b!4727087 (not c!807297)) b!4727092))

(assert (= (and d!1506123 res!2000640) b!4727085))

(assert (= (and b!4727085 res!2000641) b!4727088))

(assert (= (and b!4727088 res!2000639) b!4727084))

(declare-fun m!5667153 () Bool)

(assert (=> b!4727088 m!5667153))

(declare-fun m!5667155 () Bool)

(assert (=> b!4727084 m!5667155))

(declare-fun m!5667157 () Bool)

(assert (=> b!4727084 m!5667157))

(assert (=> b!4727084 m!5667157))

(declare-fun m!5667159 () Bool)

(assert (=> b!4727084 m!5667159))

(declare-fun m!5667161 () Bool)

(assert (=> d!1506123 m!5667161))

(assert (=> d!1506123 m!5666535))

(declare-fun m!5667163 () Bool)

(assert (=> b!4727086 m!5667163))

(assert (=> b!4727086 m!5667163))

(declare-fun m!5667165 () Bool)

(assert (=> b!4727086 m!5667165))

(declare-fun m!5667167 () Bool)

(assert (=> b!4727087 m!5667167))

(assert (=> b!4727087 m!5667163))

(declare-fun m!5667169 () Bool)

(assert (=> b!4727087 m!5667169))

(declare-fun m!5667171 () Bool)

(assert (=> b!4727087 m!5667171))

(assert (=> b!4727087 m!5667163))

(declare-fun m!5667173 () Bool)

(assert (=> b!4727087 m!5667173))

(declare-fun m!5667175 () Bool)

(assert (=> b!4727085 m!5667175))

(assert (=> b!4727085 m!5666513))

(assert (=> b!4726398 d!1506123))

(declare-fun d!1506167 () Bool)

(assert (=> d!1506167 (isDefined!9629 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891015))))

(declare-fun lt!1891588 () Unit!131013)

(declare-fun choose!33387 (List!52985 (_ BitVec 64)) Unit!131013)

(assert (=> d!1506167 (= lt!1891588 (choose!33387 (toList!5941 lm!2023) lt!1891015))))

(declare-fun e!2948260 () Bool)

(assert (=> d!1506167 e!2948260))

(declare-fun res!2000649 () Bool)

(assert (=> d!1506167 (=> (not res!2000649) (not e!2948260))))

(assert (=> d!1506167 (= res!2000649 (isStrictlySorted!756 (toList!5941 lm!2023)))))

(assert (=> d!1506167 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1858 (toList!5941 lm!2023) lt!1891015) lt!1891588)))

(declare-fun b!4727102 () Bool)

(assert (=> b!4727102 (= e!2948260 (containsKey!3388 (toList!5941 lm!2023) lt!1891015))))

(assert (= (and d!1506167 res!2000649) b!4727102))

(assert (=> d!1506167 m!5666245))

(assert (=> d!1506167 m!5666245))

(assert (=> d!1506167 m!5666247))

(declare-fun m!5667185 () Bool)

(assert (=> d!1506167 m!5667185))

(assert (=> d!1506167 m!5666199))

(assert (=> b!4727102 m!5666241))

(assert (=> b!4726504 d!1506167))

(assert (=> b!4726504 d!1506085))

(assert (=> b!4726504 d!1506031))

(declare-fun d!1506175 () Bool)

(declare-fun c!807306 () Bool)

(assert (=> d!1506175 (= c!807306 ((_ is Nil!52861) (toList!5941 lm!2023)))))

(declare-fun e!2948267 () (InoxSet tuple2!54500))

(assert (=> d!1506175 (= (content!9407 (toList!5941 lm!2023)) e!2948267)))

(declare-fun b!4727115 () Bool)

(assert (=> b!4727115 (= e!2948267 ((as const (Array tuple2!54500 Bool)) false))))

(declare-fun b!4727116 () Bool)

(assert (=> b!4727116 (= e!2948267 ((_ map or) (store ((as const (Array tuple2!54500 Bool)) false) (h!59214 (toList!5941 lm!2023)) true) (content!9407 (t!360261 (toList!5941 lm!2023)))))))

(assert (= (and d!1506175 c!807306) b!4727115))

(assert (= (and d!1506175 (not c!807306)) b!4727116))

(declare-fun m!5667189 () Bool)

(assert (=> b!4727116 m!5667189))

(assert (=> b!4727116 m!5666813))

(assert (=> d!1505825 d!1506175))

(assert (=> b!4726546 d!1505997))

(declare-fun d!1506179 () Bool)

(declare-fun lt!1891589 () Bool)

(assert (=> d!1506179 (= lt!1891589 (select (content!9408 e!2947779) key!4653))))

(declare-fun e!2948268 () Bool)

(assert (=> d!1506179 (= lt!1891589 e!2948268)))

(declare-fun res!2000651 () Bool)

(assert (=> d!1506179 (=> (not res!2000651) (not e!2948268))))

(assert (=> d!1506179 (= res!2000651 ((_ is Cons!52863) e!2947779))))

(assert (=> d!1506179 (= (contains!16213 e!2947779 key!4653) lt!1891589)))

(declare-fun b!4727117 () Bool)

(declare-fun e!2948269 () Bool)

(assert (=> b!4727117 (= e!2948268 e!2948269)))

(declare-fun res!2000650 () Bool)

(assert (=> b!4727117 (=> res!2000650 e!2948269)))

(assert (=> b!4727117 (= res!2000650 (= (h!59218 e!2947779) key!4653))))

(declare-fun b!4727118 () Bool)

(assert (=> b!4727118 (= e!2948269 (contains!16213 (t!360263 e!2947779) key!4653))))

(assert (= (and d!1506179 res!2000651) b!4727117))

(assert (= (and b!4727117 (not res!2000650)) b!4727118))

(declare-fun m!5667191 () Bool)

(assert (=> d!1506179 m!5667191))

(declare-fun m!5667193 () Bool)

(assert (=> d!1506179 m!5667193))

(declare-fun m!5667195 () Bool)

(assert (=> b!4727118 m!5667195))

(assert (=> bm!330674 d!1506179))

(declare-fun d!1506181 () Bool)

(declare-fun res!2000652 () Bool)

(declare-fun e!2948270 () Bool)

(assert (=> d!1506181 (=> res!2000652 e!2948270)))

(assert (=> d!1506181 (= res!2000652 ((_ is Nil!52860) (ite c!807218 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> d!1506181 (= (forall!11612 (ite c!807218 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (ite c!807218 lambda!216362 lambda!216364)) e!2948270)))

(declare-fun b!4727119 () Bool)

(declare-fun e!2948271 () Bool)

(assert (=> b!4727119 (= e!2948270 e!2948271)))

(declare-fun res!2000653 () Bool)

(assert (=> b!4727119 (=> (not res!2000653) (not e!2948271))))

(assert (=> b!4727119 (= res!2000653 (dynLambda!21832 (ite c!807218 lambda!216362 lambda!216364) (h!59213 (ite c!807218 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023))))))))))

(declare-fun b!4727120 () Bool)

(assert (=> b!4727120 (= e!2948271 (forall!11612 (t!360260 (ite c!807218 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))) (t!360260 (_2!30544 (h!59214 (toList!5941 lm!2023)))))) (ite c!807218 lambda!216362 lambda!216364)))))

(assert (= (and d!1506181 (not res!2000652)) b!4727119))

(assert (= (and b!4727119 res!2000653) b!4727120))

(declare-fun b_lambda!179697 () Bool)

(assert (=> (not b_lambda!179697) (not b!4727119)))

(declare-fun m!5667199 () Bool)

(assert (=> b!4727119 m!5667199))

(declare-fun m!5667201 () Bool)

(assert (=> b!4727120 m!5667201))

(assert (=> bm!330691 d!1506181))

(assert (=> d!1505785 d!1505945))

(declare-fun b!4727127 () Bool)

(declare-fun e!2948274 () List!52984)

(assert (=> b!4727127 (= e!2948274 (Cons!52860 (h!59213 (t!360260 oldBucket!34)) (removePairForKey!1621 (t!360260 (t!360260 oldBucket!34)) key!4653)))))

(declare-fun b!4727125 () Bool)

(declare-fun e!2948275 () List!52984)

(assert (=> b!4727125 (= e!2948275 (t!360260 (t!360260 oldBucket!34)))))

(declare-fun b!4727126 () Bool)

(assert (=> b!4727126 (= e!2948275 e!2948274)))

(declare-fun c!807309 () Bool)

(assert (=> b!4727126 (= c!807309 ((_ is Cons!52860) (t!360260 oldBucket!34)))))

(declare-fun d!1506185 () Bool)

(declare-fun lt!1891590 () List!52984)

(assert (=> d!1506185 (not (containsKey!3389 lt!1891590 key!4653))))

(assert (=> d!1506185 (= lt!1891590 e!2948275)))

(declare-fun c!807310 () Bool)

(assert (=> d!1506185 (= c!807310 (and ((_ is Cons!52860) (t!360260 oldBucket!34)) (= (_1!30543 (h!59213 (t!360260 oldBucket!34))) key!4653)))))

(assert (=> d!1506185 (noDuplicateKeys!2026 (t!360260 oldBucket!34))))

(assert (=> d!1506185 (= (removePairForKey!1621 (t!360260 oldBucket!34) key!4653) lt!1891590)))

(declare-fun b!4727128 () Bool)

(assert (=> b!4727128 (= e!2948274 Nil!52860)))

(assert (= (and d!1506185 c!807310) b!4727125))

(assert (= (and d!1506185 (not c!807310)) b!4727126))

(assert (= (and b!4727126 c!807309) b!4727127))

(assert (= (and b!4727126 (not c!807309)) b!4727128))

(declare-fun m!5667203 () Bool)

(assert (=> b!4727127 m!5667203))

(declare-fun m!5667205 () Bool)

(assert (=> d!1506185 m!5667205))

(assert (=> d!1506185 m!5666341))

(assert (=> b!4726578 d!1506185))

(declare-fun d!1506187 () Bool)

(declare-fun res!2000654 () Bool)

(declare-fun e!2948276 () Bool)

(assert (=> d!1506187 (=> res!2000654 e!2948276)))

(assert (=> d!1506187 (= res!2000654 (and ((_ is Cons!52860) oldBucket!34) (= (_1!30543 (h!59213 oldBucket!34)) key!4653)))))

(assert (=> d!1506187 (= (containsKey!3389 oldBucket!34 key!4653) e!2948276)))

(declare-fun b!4727129 () Bool)

(declare-fun e!2948277 () Bool)

(assert (=> b!4727129 (= e!2948276 e!2948277)))

(declare-fun res!2000655 () Bool)

(assert (=> b!4727129 (=> (not res!2000655) (not e!2948277))))

(assert (=> b!4727129 (= res!2000655 ((_ is Cons!52860) oldBucket!34))))

(declare-fun b!4727130 () Bool)

(assert (=> b!4727130 (= e!2948277 (containsKey!3389 (t!360260 oldBucket!34) key!4653))))

(assert (= (and d!1506187 (not res!2000654)) b!4727129))

(assert (= (and b!4727129 res!2000655) b!4727130))

(assert (=> b!4727130 m!5666721))

(assert (=> b!4726542 d!1506187))

(assert (=> b!4726403 d!1505953))

(assert (=> b!4726403 d!1505955))

(declare-fun d!1506189 () Bool)

(assert (=> d!1506189 (= (isEmpty!29183 lt!1891173) (not ((_ is Some!12370) lt!1891173)))))

(assert (=> d!1505861 d!1506189))

(declare-fun d!1506191 () Bool)

(declare-fun res!2000656 () Bool)

(declare-fun e!2948278 () Bool)

(assert (=> d!1506191 (=> res!2000656 e!2948278)))

(assert (=> d!1506191 (= res!2000656 (not ((_ is Cons!52860) lt!1891013)))))

(assert (=> d!1506191 (= (noDuplicateKeys!2026 lt!1891013) e!2948278)))

(declare-fun b!4727131 () Bool)

(declare-fun e!2948279 () Bool)

(assert (=> b!4727131 (= e!2948278 e!2948279)))

(declare-fun res!2000657 () Bool)

(assert (=> b!4727131 (=> (not res!2000657) (not e!2948279))))

(assert (=> b!4727131 (= res!2000657 (not (containsKey!3389 (t!360260 lt!1891013) (_1!30543 (h!59213 lt!1891013)))))))

(declare-fun b!4727132 () Bool)

(assert (=> b!4727132 (= e!2948279 (noDuplicateKeys!2026 (t!360260 lt!1891013)))))

(assert (= (and d!1506191 (not res!2000656)) b!4727131))

(assert (= (and b!4727131 res!2000657) b!4727132))

(declare-fun m!5667207 () Bool)

(assert (=> b!4727131 m!5667207))

(declare-fun m!5667209 () Bool)

(assert (=> b!4727132 m!5667209))

(assert (=> d!1505861 d!1506191))

(declare-fun d!1506193 () Bool)

(declare-fun res!2000658 () Bool)

(declare-fun e!2948280 () Bool)

(assert (=> d!1506193 (=> res!2000658 e!2948280)))

(assert (=> d!1506193 (= res!2000658 ((_ is Nil!52861) (toList!5941 lm!2023)))))

(assert (=> d!1506193 (= (forall!11610 (toList!5941 lm!2023) lambda!216296) e!2948280)))

(declare-fun b!4727133 () Bool)

(declare-fun e!2948281 () Bool)

(assert (=> b!4727133 (= e!2948280 e!2948281)))

(declare-fun res!2000659 () Bool)

(assert (=> b!4727133 (=> (not res!2000659) (not e!2948281))))

(assert (=> b!4727133 (= res!2000659 (dynLambda!21830 lambda!216296 (h!59214 (toList!5941 lm!2023))))))

(declare-fun b!4727134 () Bool)

(assert (=> b!4727134 (= e!2948281 (forall!11610 (t!360261 (toList!5941 lm!2023)) lambda!216296))))

(assert (= (and d!1506193 (not res!2000658)) b!4727133))

(assert (= (and b!4727133 res!2000659) b!4727134))

(declare-fun b_lambda!179699 () Bool)

(assert (=> (not b_lambda!179699) (not b!4727133)))

(declare-fun m!5667211 () Bool)

(assert (=> b!4727133 m!5667211))

(declare-fun m!5667213 () Bool)

(assert (=> b!4727134 m!5667213))

(assert (=> d!1505859 d!1506193))

(declare-fun bs!1118240 () Bool)

(declare-fun d!1506195 () Bool)

(assert (= bs!1118240 (and d!1506195 start!481216)))

(declare-fun lambda!216439 () Int)

(assert (=> bs!1118240 (= lambda!216439 lambda!216260)))

(declare-fun bs!1118241 () Bool)

(assert (= bs!1118241 (and d!1506195 d!1505801)))

(assert (=> bs!1118241 (= lambda!216439 lambda!216272)))

(declare-fun bs!1118242 () Bool)

(assert (= bs!1118242 (and d!1506195 d!1505973)))

(assert (=> bs!1118242 (= lambda!216439 lambda!216389)))

(declare-fun bs!1118243 () Bool)

(assert (= bs!1118243 (and d!1506195 d!1505881)))

(assert (=> bs!1118243 (not (= lambda!216439 lambda!216309))))

(declare-fun bs!1118244 () Bool)

(assert (= bs!1118244 (and d!1506195 d!1505891)))

(assert (=> bs!1118244 (= lambda!216439 lambda!216366)))

(declare-fun bs!1118245 () Bool)

(assert (= bs!1118245 (and d!1506195 d!1505857)))

(assert (=> bs!1118245 (= lambda!216439 lambda!216289)))

(declare-fun bs!1118246 () Bool)

(assert (= bs!1118246 (and d!1506195 d!1505859)))

(assert (=> bs!1118246 (= lambda!216439 lambda!216296)))

(assert (=> d!1506195 (isDefined!9625 (getPair!566 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)) key!4653))))

(declare-fun lt!1891614 () Unit!131013)

(assert (=> d!1506195 (= lt!1891614 (forallContained!3651 (toList!5941 lm!2023) lambda!216439 (tuple2!54501 (hash!4402 hashF!1323 key!4653) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))))))

(declare-fun lt!1891612 () Unit!131013)

(declare-fun lt!1891609 () Unit!131013)

(assert (=> d!1506195 (= lt!1891612 lt!1891609)))

(declare-fun lt!1891613 () (_ BitVec 64))

(declare-fun lt!1891608 () List!52984)

(assert (=> d!1506195 (contains!16208 (toList!5941 lm!2023) (tuple2!54501 lt!1891613 lt!1891608))))

(assert (=> d!1506195 (= lt!1891609 (lemmaGetValueImpliesTupleContained!371 lm!2023 lt!1891613 lt!1891608))))

(assert (=> d!1506195 (= lt!1891608 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))))

(assert (=> d!1506195 (= lt!1891613 (hash!4402 hashF!1323 key!4653))))

(declare-fun lt!1891610 () Unit!131013)

(declare-fun lt!1891611 () Unit!131013)

(assert (=> d!1506195 (= lt!1891610 lt!1891611)))

(assert (=> d!1506195 (contains!16209 lm!2023 (hash!4402 hashF!1323 key!4653))))

(assert (=> d!1506195 (= lt!1891611 (lemmaInGenMapThenLongMapContainsHash!772 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1506195 true))

(declare-fun _$25!250 () Unit!131013)

(assert (=> d!1506195 (= (choose!33374 lm!2023 key!4653 hashF!1323) _$25!250)))

(declare-fun bs!1118247 () Bool)

(assert (= bs!1118247 d!1506195))

(assert (=> bs!1118247 m!5666035))

(assert (=> bs!1118247 m!5666289))

(declare-fun m!5667229 () Bool)

(assert (=> bs!1118247 m!5667229))

(assert (=> bs!1118247 m!5666067))

(assert (=> bs!1118247 m!5666293))

(assert (=> bs!1118247 m!5666299))

(declare-fun m!5667231 () Bool)

(assert (=> bs!1118247 m!5667231))

(assert (=> bs!1118247 m!5666035))

(assert (=> bs!1118247 m!5666035))

(assert (=> bs!1118247 m!5666281))

(declare-fun m!5667233 () Bool)

(assert (=> bs!1118247 m!5667233))

(assert (=> bs!1118247 m!5666289))

(assert (=> bs!1118247 m!5666293))

(assert (=> d!1505859 d!1506195))

(assert (=> b!4726459 d!1505883))

(assert (=> b!4726459 d!1505891))

(declare-fun d!1506209 () Bool)

(assert (=> d!1506209 (= (isDefined!9625 lt!1891173) (not (isEmpty!29183 lt!1891173)))))

(declare-fun bs!1118248 () Bool)

(assert (= bs!1118248 d!1506209))

(assert (=> bs!1118248 m!5666311))

(assert (=> b!4726565 d!1506209))

(assert (=> bs!1118044 d!1506067))

(declare-fun d!1506211 () Bool)

(declare-fun lt!1891625 () Bool)

(assert (=> d!1506211 (= lt!1891625 (select (content!9411 lt!1891013) (get!17732 lt!1891173)))))

(declare-fun e!2948289 () Bool)

(assert (=> d!1506211 (= lt!1891625 e!2948289)))

(declare-fun res!2000666 () Bool)

(assert (=> d!1506211 (=> (not res!2000666) (not e!2948289))))

(assert (=> d!1506211 (= res!2000666 ((_ is Cons!52860) lt!1891013))))

(assert (=> d!1506211 (= (contains!16214 lt!1891013 (get!17732 lt!1891173)) lt!1891625)))

(declare-fun b!4727141 () Bool)

(declare-fun e!2948288 () Bool)

(assert (=> b!4727141 (= e!2948289 e!2948288)))

(declare-fun res!2000667 () Bool)

(assert (=> b!4727141 (=> res!2000667 e!2948288)))

(assert (=> b!4727141 (= res!2000667 (= (h!59213 lt!1891013) (get!17732 lt!1891173)))))

(declare-fun b!4727142 () Bool)

(assert (=> b!4727142 (= e!2948288 (contains!16214 (t!360260 lt!1891013) (get!17732 lt!1891173)))))

(assert (= (and d!1506211 res!2000666) b!4727141))

(assert (= (and b!4727141 (not res!2000667)) b!4727142))

(declare-fun m!5667235 () Bool)

(assert (=> d!1506211 m!5667235))

(assert (=> d!1506211 m!5666319))

(declare-fun m!5667237 () Bool)

(assert (=> d!1506211 m!5667237))

(assert (=> b!4727142 m!5666319))

(declare-fun m!5667239 () Bool)

(assert (=> b!4727142 m!5667239))

(assert (=> b!4726561 d!1506211))

(assert (=> b!4726561 d!1506019))

(declare-fun d!1506213 () Bool)

(declare-fun lt!1891630 () Bool)

(assert (=> d!1506213 (= lt!1891630 (select (content!9407 (toList!5941 lm!2023)) (tuple2!54501 lt!1891015 lt!1891013)))))

(declare-fun e!2948291 () Bool)

(assert (=> d!1506213 (= lt!1891630 e!2948291)))

(declare-fun res!2000669 () Bool)

(assert (=> d!1506213 (=> (not res!2000669) (not e!2948291))))

(assert (=> d!1506213 (= res!2000669 ((_ is Cons!52861) (toList!5941 lm!2023)))))

(assert (=> d!1506213 (= (contains!16208 (toList!5941 lm!2023) (tuple2!54501 lt!1891015 lt!1891013)) lt!1891630)))

(declare-fun b!4727143 () Bool)

(declare-fun e!2948290 () Bool)

(assert (=> b!4727143 (= e!2948291 e!2948290)))

(declare-fun res!2000668 () Bool)

(assert (=> b!4727143 (=> res!2000668 e!2948290)))

(assert (=> b!4727143 (= res!2000668 (= (h!59214 (toList!5941 lm!2023)) (tuple2!54501 lt!1891015 lt!1891013)))))

(declare-fun b!4727144 () Bool)

(assert (=> b!4727144 (= e!2948290 (contains!16208 (t!360261 (toList!5941 lm!2023)) (tuple2!54501 lt!1891015 lt!1891013)))))

(assert (= (and d!1506213 res!2000669) b!4727143))

(assert (= (and b!4727143 (not res!2000668)) b!4727144))

(assert (=> d!1506213 m!5666203))

(declare-fun m!5667241 () Bool)

(assert (=> d!1506213 m!5667241))

(declare-fun m!5667243 () Bool)

(assert (=> b!4727144 m!5667243))

(assert (=> d!1505863 d!1506213))

(declare-fun d!1506215 () Bool)

(assert (=> d!1506215 (contains!16208 (toList!5941 lm!2023) (tuple2!54501 lt!1891015 lt!1891013))))

(assert (=> d!1506215 true))

(declare-fun _$41!415 () Unit!131013)

(assert (=> d!1506215 (= (choose!33375 lm!2023 lt!1891015 lt!1891013) _$41!415)))

(declare-fun bs!1118249 () Bool)

(assert (= bs!1118249 d!1506215))

(assert (=> bs!1118249 m!5666323))

(assert (=> d!1505863 d!1506215))

(assert (=> d!1505863 d!1505829))

(declare-fun d!1506217 () Bool)

(declare-fun res!2000670 () Bool)

(declare-fun e!2948292 () Bool)

(assert (=> d!1506217 (=> res!2000670 e!2948292)))

(assert (=> d!1506217 (= res!2000670 (and ((_ is Cons!52860) (t!360260 oldBucket!34)) (= (_1!30543 (h!59213 (t!360260 oldBucket!34))) (_1!30543 (h!59213 oldBucket!34)))))))

(assert (=> d!1506217 (= (containsKey!3389 (t!360260 oldBucket!34) (_1!30543 (h!59213 oldBucket!34))) e!2948292)))

(declare-fun b!4727146 () Bool)

(declare-fun e!2948293 () Bool)

(assert (=> b!4727146 (= e!2948292 e!2948293)))

(declare-fun res!2000671 () Bool)

(assert (=> b!4727146 (=> (not res!2000671) (not e!2948293))))

(assert (=> b!4727146 (= res!2000671 ((_ is Cons!52860) (t!360260 oldBucket!34)))))

(declare-fun b!4727147 () Bool)

(assert (=> b!4727147 (= e!2948293 (containsKey!3389 (t!360260 (t!360260 oldBucket!34)) (_1!30543 (h!59213 oldBucket!34))))))

(assert (= (and d!1506217 (not res!2000670)) b!4727146))

(assert (= (and b!4727146 res!2000671) b!4727147))

(declare-fun m!5667245 () Bool)

(assert (=> b!4727147 m!5667245))

(assert (=> b!4726588 d!1506217))

(declare-fun lt!1891631 () Bool)

(declare-fun d!1506219 () Bool)

(assert (=> d!1506219 (= lt!1891631 (select (content!9407 (toList!5941 lm!2023)) (tuple2!54501 lt!1891168 lt!1891169)))))

(declare-fun e!2948295 () Bool)

(assert (=> d!1506219 (= lt!1891631 e!2948295)))

(declare-fun res!2000673 () Bool)

(assert (=> d!1506219 (=> (not res!2000673) (not e!2948295))))

(assert (=> d!1506219 (= res!2000673 ((_ is Cons!52861) (toList!5941 lm!2023)))))

(assert (=> d!1506219 (= (contains!16208 (toList!5941 lm!2023) (tuple2!54501 lt!1891168 lt!1891169)) lt!1891631)))

(declare-fun b!4727148 () Bool)

(declare-fun e!2948294 () Bool)

(assert (=> b!4727148 (= e!2948295 e!2948294)))

(declare-fun res!2000672 () Bool)

(assert (=> b!4727148 (=> res!2000672 e!2948294)))

(assert (=> b!4727148 (= res!2000672 (= (h!59214 (toList!5941 lm!2023)) (tuple2!54501 lt!1891168 lt!1891169)))))

(declare-fun b!4727149 () Bool)

(assert (=> b!4727149 (= e!2948294 (contains!16208 (t!360261 (toList!5941 lm!2023)) (tuple2!54501 lt!1891168 lt!1891169)))))

(assert (= (and d!1506219 res!2000673) b!4727148))

(assert (= (and b!4727148 (not res!2000672)) b!4727149))

(assert (=> d!1506219 m!5666203))

(declare-fun m!5667247 () Bool)

(assert (=> d!1506219 m!5667247))

(declare-fun m!5667249 () Bool)

(assert (=> b!4727149 m!5667249))

(assert (=> b!4726557 d!1506219))

(declare-fun d!1506221 () Bool)

(assert (=> d!1506221 (dynLambda!21830 lambda!216296 (tuple2!54501 (hash!4402 hashF!1323 key!4653) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653))))))

(declare-fun lt!1891639 () Unit!131013)

(assert (=> d!1506221 (= lt!1891639 (choose!33372 (toList!5941 lm!2023) lambda!216296 (tuple2!54501 (hash!4402 hashF!1323 key!4653) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))))))

(declare-fun e!2948296 () Bool)

(assert (=> d!1506221 e!2948296))

(declare-fun res!2000674 () Bool)

(assert (=> d!1506221 (=> (not res!2000674) (not e!2948296))))

(assert (=> d!1506221 (= res!2000674 (forall!11610 (toList!5941 lm!2023) lambda!216296))))

(assert (=> d!1506221 (= (forallContained!3651 (toList!5941 lm!2023) lambda!216296 (tuple2!54501 (hash!4402 hashF!1323 key!4653) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))) lt!1891639)))

(declare-fun b!4727150 () Bool)

(assert (=> b!4727150 (= e!2948296 (contains!16208 (toList!5941 lm!2023) (tuple2!54501 (hash!4402 hashF!1323 key!4653) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))))))

(assert (= (and d!1506221 res!2000674) b!4727150))

(declare-fun b_lambda!179705 () Bool)

(assert (=> (not b_lambda!179705) (not d!1506221)))

(declare-fun m!5667251 () Bool)

(assert (=> d!1506221 m!5667251))

(declare-fun m!5667253 () Bool)

(assert (=> d!1506221 m!5667253))

(assert (=> d!1506221 m!5666301))

(declare-fun m!5667255 () Bool)

(assert (=> b!4727150 m!5667255))

(assert (=> b!4726557 d!1506221))

(declare-fun b!4727151 () Bool)

(declare-fun e!2948299 () Option!12371)

(assert (=> b!4727151 (= e!2948299 (getPair!566 (t!360260 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653))) key!4653))))

(declare-fun b!4727152 () Bool)

(declare-fun e!2948297 () Option!12371)

(assert (=> b!4727152 (= e!2948297 e!2948299)))

(declare-fun c!807311 () Bool)

(assert (=> b!4727152 (= c!807311 ((_ is Cons!52860) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653))))))

(declare-fun d!1506223 () Bool)

(declare-fun e!2948298 () Bool)

(assert (=> d!1506223 e!2948298))

(declare-fun res!2000677 () Bool)

(assert (=> d!1506223 (=> res!2000677 e!2948298)))

(declare-fun e!2948300 () Bool)

(assert (=> d!1506223 (= res!2000677 e!2948300)))

(declare-fun res!2000676 () Bool)

(assert (=> d!1506223 (=> (not res!2000676) (not e!2948300))))

(declare-fun lt!1891640 () Option!12371)

(assert (=> d!1506223 (= res!2000676 (isEmpty!29183 lt!1891640))))

(assert (=> d!1506223 (= lt!1891640 e!2948297)))

(declare-fun c!807312 () Bool)

(assert (=> d!1506223 (= c!807312 (and ((_ is Cons!52860) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653))) (= (_1!30543 (h!59213 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))) key!4653)))))

(assert (=> d!1506223 (noDuplicateKeys!2026 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))))

(assert (=> d!1506223 (= (getPair!566 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)) key!4653) lt!1891640)))

(declare-fun b!4727153 () Bool)

(declare-fun e!2948301 () Bool)

(assert (=> b!4727153 (= e!2948301 (contains!16214 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)) (get!17732 lt!1891640)))))

(declare-fun b!4727154 () Bool)

(assert (=> b!4727154 (= e!2948300 (not (containsKey!3389 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)) key!4653)))))

(declare-fun b!4727155 () Bool)

(assert (=> b!4727155 (= e!2948299 None!12370)))

(declare-fun b!4727156 () Bool)

(assert (=> b!4727156 (= e!2948297 (Some!12370 (h!59213 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))))))

(declare-fun b!4727157 () Bool)

(assert (=> b!4727157 (= e!2948298 e!2948301)))

(declare-fun res!2000678 () Bool)

(assert (=> b!4727157 (=> (not res!2000678) (not e!2948301))))

(assert (=> b!4727157 (= res!2000678 (isDefined!9625 lt!1891640))))

(declare-fun b!4727158 () Bool)

(declare-fun res!2000675 () Bool)

(assert (=> b!4727158 (=> (not res!2000675) (not e!2948301))))

(assert (=> b!4727158 (= res!2000675 (= (_1!30543 (get!17732 lt!1891640)) key!4653))))

(assert (= (and d!1506223 c!807312) b!4727156))

(assert (= (and d!1506223 (not c!807312)) b!4727152))

(assert (= (and b!4727152 c!807311) b!4727151))

(assert (= (and b!4727152 (not c!807311)) b!4727155))

(assert (= (and d!1506223 res!2000676) b!4727154))

(assert (= (and d!1506223 (not res!2000677)) b!4727157))

(assert (= (and b!4727157 res!2000678) b!4727158))

(assert (= (and b!4727158 res!2000675) b!4727153))

(declare-fun m!5667257 () Bool)

(assert (=> b!4727157 m!5667257))

(declare-fun m!5667259 () Bool)

(assert (=> d!1506223 m!5667259))

(assert (=> d!1506223 m!5666289))

(declare-fun m!5667261 () Bool)

(assert (=> d!1506223 m!5667261))

(assert (=> b!4727154 m!5666289))

(declare-fun m!5667263 () Bool)

(assert (=> b!4727154 m!5667263))

(declare-fun m!5667265 () Bool)

(assert (=> b!4727151 m!5667265))

(declare-fun m!5667267 () Bool)

(assert (=> b!4727158 m!5667267))

(assert (=> b!4727153 m!5667267))

(assert (=> b!4727153 m!5666289))

(assert (=> b!4727153 m!5667267))

(declare-fun m!5667269 () Bool)

(assert (=> b!4727153 m!5667269))

(assert (=> b!4726557 d!1506223))

(assert (=> b!4726557 d!1506023))

(declare-fun d!1506225 () Bool)

(assert (=> d!1506225 (contains!16208 (toList!5941 lm!2023) (tuple2!54501 lt!1891168 lt!1891169))))

(declare-fun lt!1891641 () Unit!131013)

(assert (=> d!1506225 (= lt!1891641 (choose!33375 lm!2023 lt!1891168 lt!1891169))))

(assert (=> d!1506225 (contains!16209 lm!2023 lt!1891168)))

(assert (=> d!1506225 (= (lemmaGetValueImpliesTupleContained!371 lm!2023 lt!1891168 lt!1891169) lt!1891641)))

(declare-fun bs!1118258 () Bool)

(assert (= bs!1118258 d!1506225))

(assert (=> bs!1118258 m!5666295))

(declare-fun m!5667273 () Bool)

(assert (=> bs!1118258 m!5667273))

(assert (=> bs!1118258 m!5666291))

(assert (=> b!4726557 d!1506225))

(declare-fun d!1506227 () Bool)

(declare-fun e!2948303 () Bool)

(assert (=> d!1506227 e!2948303))

(declare-fun res!2000679 () Bool)

(assert (=> d!1506227 (=> res!2000679 e!2948303)))

(declare-fun lt!1891645 () Bool)

(assert (=> d!1506227 (= res!2000679 (not lt!1891645))))

(declare-fun lt!1891644 () Bool)

(assert (=> d!1506227 (= lt!1891645 lt!1891644)))

(declare-fun lt!1891643 () Unit!131013)

(declare-fun e!2948302 () Unit!131013)

(assert (=> d!1506227 (= lt!1891643 e!2948302)))

(declare-fun c!807313 () Bool)

(assert (=> d!1506227 (= c!807313 lt!1891644)))

(assert (=> d!1506227 (= lt!1891644 (containsKey!3388 (toList!5941 lm!2023) lt!1891168))))

(assert (=> d!1506227 (= (contains!16209 lm!2023 lt!1891168) lt!1891645)))

(declare-fun b!4727159 () Bool)

(declare-fun lt!1891642 () Unit!131013)

(assert (=> b!4727159 (= e!2948302 lt!1891642)))

(assert (=> b!4727159 (= lt!1891642 (lemmaContainsKeyImpliesGetValueByKeyDefined!1858 (toList!5941 lm!2023) lt!1891168))))

(assert (=> b!4727159 (isDefined!9629 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891168))))

(declare-fun b!4727160 () Bool)

(declare-fun Unit!131109 () Unit!131013)

(assert (=> b!4727160 (= e!2948302 Unit!131109)))

(declare-fun b!4727161 () Bool)

(assert (=> b!4727161 (= e!2948303 (isDefined!9629 (getValueByKey!1967 (toList!5941 lm!2023) lt!1891168)))))

(assert (= (and d!1506227 c!807313) b!4727159))

(assert (= (and d!1506227 (not c!807313)) b!4727160))

(assert (= (and d!1506227 (not res!2000679)) b!4727161))

(declare-fun m!5667281 () Bool)

(assert (=> d!1506227 m!5667281))

(declare-fun m!5667285 () Bool)

(assert (=> b!4727159 m!5667285))

(assert (=> b!4727159 m!5666305))

(assert (=> b!4727159 m!5666305))

(declare-fun m!5667289 () Bool)

(assert (=> b!4727159 m!5667289))

(assert (=> b!4727161 m!5666305))

(assert (=> b!4727161 m!5666305))

(assert (=> b!4727161 m!5667289))

(assert (=> b!4726557 d!1506227))

(declare-fun d!1506233 () Bool)

(assert (=> d!1506233 (= (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)) (get!17731 (getValueByKey!1967 (toList!5941 lm!2023) (hash!4402 hashF!1323 key!4653))))))

(declare-fun bs!1118260 () Bool)

(assert (= bs!1118260 d!1506233))

(assert (=> bs!1118260 m!5666035))

(assert (=> bs!1118260 m!5666733))

(assert (=> bs!1118260 m!5666733))

(declare-fun m!5667293 () Bool)

(assert (=> bs!1118260 m!5667293))

(assert (=> b!4726557 d!1506233))

(declare-fun d!1506235 () Bool)

(assert (=> d!1506235 (= (isDefined!9625 (getPair!566 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)) key!4653)) (not (isEmpty!29183 (getPair!566 (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)) key!4653))))))

(declare-fun bs!1118261 () Bool)

(assert (= bs!1118261 d!1506235))

(assert (=> bs!1118261 m!5666293))

(declare-fun m!5667295 () Bool)

(assert (=> bs!1118261 m!5667295))

(assert (=> b!4726557 d!1506235))

(assert (=> b!4726557 d!1505869))

(assert (=> b!4726557 d!1505857))

(declare-fun b!4727166 () Bool)

(declare-fun e!2948310 () Option!12371)

(assert (=> b!4727166 (= e!2948310 (getPair!566 (t!360260 (t!360260 lt!1891013)) key!4653))))

(declare-fun b!4727167 () Bool)

(declare-fun e!2948308 () Option!12371)

(assert (=> b!4727167 (= e!2948308 e!2948310)))

(declare-fun c!807314 () Bool)

(assert (=> b!4727167 (= c!807314 ((_ is Cons!52860) (t!360260 lt!1891013)))))

(declare-fun d!1506237 () Bool)

(declare-fun e!2948309 () Bool)

(assert (=> d!1506237 e!2948309))

(declare-fun res!2000684 () Bool)

(assert (=> d!1506237 (=> res!2000684 e!2948309)))

(declare-fun e!2948311 () Bool)

(assert (=> d!1506237 (= res!2000684 e!2948311)))

(declare-fun res!2000683 () Bool)

(assert (=> d!1506237 (=> (not res!2000683) (not e!2948311))))

(declare-fun lt!1891647 () Option!12371)

(assert (=> d!1506237 (= res!2000683 (isEmpty!29183 lt!1891647))))

(assert (=> d!1506237 (= lt!1891647 e!2948308)))

(declare-fun c!807315 () Bool)

(assert (=> d!1506237 (= c!807315 (and ((_ is Cons!52860) (t!360260 lt!1891013)) (= (_1!30543 (h!59213 (t!360260 lt!1891013))) key!4653)))))

(assert (=> d!1506237 (noDuplicateKeys!2026 (t!360260 lt!1891013))))

(assert (=> d!1506237 (= (getPair!566 (t!360260 lt!1891013) key!4653) lt!1891647)))

(declare-fun b!4727168 () Bool)

(declare-fun e!2948312 () Bool)

(assert (=> b!4727168 (= e!2948312 (contains!16214 (t!360260 lt!1891013) (get!17732 lt!1891647)))))

(declare-fun b!4727169 () Bool)

(assert (=> b!4727169 (= e!2948311 (not (containsKey!3389 (t!360260 lt!1891013) key!4653)))))

(declare-fun b!4727170 () Bool)

(assert (=> b!4727170 (= e!2948310 None!12370)))

(declare-fun b!4727171 () Bool)

(assert (=> b!4727171 (= e!2948308 (Some!12370 (h!59213 (t!360260 lt!1891013))))))

(declare-fun b!4727172 () Bool)

(assert (=> b!4727172 (= e!2948309 e!2948312)))

(declare-fun res!2000685 () Bool)

(assert (=> b!4727172 (=> (not res!2000685) (not e!2948312))))

(assert (=> b!4727172 (= res!2000685 (isDefined!9625 lt!1891647))))

(declare-fun b!4727173 () Bool)

(declare-fun res!2000682 () Bool)

(assert (=> b!4727173 (=> (not res!2000682) (not e!2948312))))

(assert (=> b!4727173 (= res!2000682 (= (_1!30543 (get!17732 lt!1891647)) key!4653))))

(assert (= (and d!1506237 c!807315) b!4727171))

(assert (= (and d!1506237 (not c!807315)) b!4727167))

(assert (= (and b!4727167 c!807314) b!4727166))

(assert (= (and b!4727167 (not c!807314)) b!4727170))

(assert (= (and d!1506237 res!2000683) b!4727169))

(assert (= (and d!1506237 (not res!2000684)) b!4727172))

(assert (= (and b!4727172 res!2000685) b!4727173))

(assert (= (and b!4727173 res!2000682) b!4727168))

(declare-fun m!5667297 () Bool)

(assert (=> b!4727172 m!5667297))

(declare-fun m!5667299 () Bool)

(assert (=> d!1506237 m!5667299))

(assert (=> d!1506237 m!5667209))

(assert (=> b!4727169 m!5666757))

(declare-fun m!5667301 () Bool)

(assert (=> b!4727166 m!5667301))

(declare-fun m!5667303 () Bool)

(assert (=> b!4727173 m!5667303))

(assert (=> b!4727168 m!5667303))

(assert (=> b!4727168 m!5667303))

(declare-fun m!5667305 () Bool)

(assert (=> b!4727168 m!5667305))

(assert (=> b!4726559 d!1506237))

(declare-fun e!2948315 () Bool)

(declare-fun b!4727176 () Bool)

(declare-fun tp!1348621 () Bool)

(assert (=> b!4727176 (= e!2948315 (and tp_is_empty!31397 tp_is_empty!31399 tp!1348621))))

(assert (=> b!4726643 (= tp!1348608 e!2948315)))

(assert (= (and b!4726643 ((_ is Cons!52860) (t!360260 (t!360260 oldBucket!34)))) b!4727176))

(declare-fun b!4727177 () Bool)

(declare-fun e!2948316 () Bool)

(declare-fun tp!1348622 () Bool)

(assert (=> b!4727177 (= e!2948316 (and tp_is_empty!31397 tp_is_empty!31399 tp!1348622))))

(assert (=> b!4726649 (= tp!1348614 e!2948316)))

(assert (= (and b!4726649 ((_ is Cons!52860) (_2!30544 (h!59214 (toList!5941 lm!2023))))) b!4727177))

(declare-fun b!4727178 () Bool)

(declare-fun e!2948317 () Bool)

(declare-fun tp!1348623 () Bool)

(declare-fun tp!1348624 () Bool)

(assert (=> b!4727178 (= e!2948317 (and tp!1348623 tp!1348624))))

(assert (=> b!4726649 (= tp!1348615 e!2948317)))

(assert (= (and b!4726649 ((_ is Cons!52861) (t!360261 (toList!5941 lm!2023)))) b!4727178))

(declare-fun b!4727179 () Bool)

(declare-fun tp!1348625 () Bool)

(declare-fun e!2948318 () Bool)

(assert (=> b!4727179 (= e!2948318 (and tp_is_empty!31397 tp_is_empty!31399 tp!1348625))))

(assert (=> b!4726644 (= tp!1348609 e!2948318)))

(assert (= (and b!4726644 ((_ is Cons!52860) (t!360260 (t!360260 newBucket!218)))) b!4727179))

(declare-fun b_lambda!179741 () Bool)

(assert (= b_lambda!179677 (or b!4726633 b_lambda!179741)))

(declare-fun bs!1118272 () Bool)

(declare-fun d!1506259 () Bool)

(assert (= bs!1118272 (and d!1506259 b!4726633)))

(assert (=> bs!1118272 (= (dynLambda!21832 lambda!216364 (h!59213 (toList!5942 lt!1891286))) (contains!16210 lt!1891304 (_1!30543 (h!59213 (toList!5942 lt!1891286)))))))

(declare-fun m!5667321 () Bool)

(assert (=> bs!1118272 m!5667321))

(assert (=> b!4726963 d!1506259))

(declare-fun b_lambda!179743 () Bool)

(assert (= b_lambda!179661 (or start!481216 b_lambda!179743)))

(assert (=> d!1506037 d!1505895))

(declare-fun b_lambda!179745 () Bool)

(assert (= b_lambda!179705 (or d!1505859 b_lambda!179745)))

(declare-fun bs!1118275 () Bool)

(declare-fun d!1506265 () Bool)

(assert (= bs!1118275 (and d!1506265 d!1505859)))

(assert (=> bs!1118275 (= (dynLambda!21830 lambda!216296 (tuple2!54501 (hash!4402 hashF!1323 key!4653) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653)))) (noDuplicateKeys!2026 (_2!30544 (tuple2!54501 (hash!4402 hashF!1323 key!4653) (apply!12451 lm!2023 (hash!4402 hashF!1323 key!4653))))))))

(declare-fun m!5667325 () Bool)

(assert (=> bs!1118275 m!5667325))

(assert (=> d!1506221 d!1506265))

(declare-fun b_lambda!179747 () Bool)

(assert (= b_lambda!179645 (or d!1505883 b_lambda!179747)))

(declare-fun bs!1118277 () Bool)

(declare-fun d!1506269 () Bool)

(assert (= bs!1118277 (and d!1506269 d!1505883)))

(assert (=> bs!1118277 (= (dynLambda!21832 lambda!216365 (h!59213 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))))) (contains!16210 lt!1891302 (_1!30543 (h!59213 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023))))))))))

(declare-fun m!5667327 () Bool)

(assert (=> bs!1118277 m!5667327))

(assert (=> b!4726732 d!1506269))

(declare-fun b_lambda!179749 () Bool)

(assert (= b_lambda!179669 (or d!1505881 b_lambda!179749)))

(declare-fun bs!1118279 () Bool)

(declare-fun d!1506273 () Bool)

(assert (= bs!1118279 (and d!1506273 d!1505881)))

(assert (=> bs!1118279 (= (dynLambda!21830 lambda!216309 (h!59214 (toList!5941 lm!2023))) (allKeysSameHash!1852 (_2!30544 (h!59214 (toList!5941 lm!2023))) (_1!30544 (h!59214 (toList!5941 lm!2023))) hashF!1323))))

(declare-fun m!5667331 () Bool)

(assert (=> bs!1118279 m!5667331))

(assert (=> b!4726932 d!1506273))

(declare-fun b_lambda!179751 () Bool)

(assert (= b_lambda!179665 (or start!481216 b_lambda!179751)))

(declare-fun bs!1118281 () Bool)

(declare-fun d!1506277 () Bool)

(assert (= bs!1118281 (and d!1506277 start!481216)))

(assert (=> bs!1118281 (= (dynLambda!21830 lambda!216260 (h!59214 (t!360261 (toList!5941 lm!2023)))) (noDuplicateKeys!2026 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023))))))))

(assert (=> bs!1118281 m!5666605))

(assert (=> b!4726893 d!1506277))

(declare-fun b_lambda!179753 () Bool)

(assert (= b_lambda!179649 (or d!1505873 b_lambda!179753)))

(declare-fun bs!1118282 () Bool)

(declare-fun d!1506279 () Bool)

(assert (= bs!1118282 (and d!1506279 d!1505873)))

(assert (=> bs!1118282 (= (dynLambda!21832 lambda!216297 (h!59213 newBucket!218)) (= (hash!4402 hashF!1323 (_1!30543 (h!59213 newBucket!218))) hash!405))))

(declare-fun m!5667333 () Bool)

(assert (=> bs!1118282 m!5667333))

(assert (=> b!4726772 d!1506279))

(declare-fun b_lambda!179755 () Bool)

(assert (= b_lambda!179699 (or d!1505859 b_lambda!179755)))

(declare-fun bs!1118283 () Bool)

(declare-fun d!1506281 () Bool)

(assert (= bs!1118283 (and d!1506281 d!1505859)))

(assert (=> bs!1118283 (= (dynLambda!21830 lambda!216296 (h!59214 (toList!5941 lm!2023))) (noDuplicateKeys!2026 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(assert (=> bs!1118283 m!5666395))

(assert (=> b!4727133 d!1506281))

(declare-fun b_lambda!179757 () Bool)

(assert (= b_lambda!179659 (or d!1505857 b_lambda!179757)))

(declare-fun bs!1118284 () Bool)

(declare-fun d!1506283 () Bool)

(assert (= bs!1118284 (and d!1506283 d!1505857)))

(assert (=> bs!1118284 (= (dynLambda!21830 lambda!216289 (h!59214 (toList!5941 lm!2023))) (noDuplicateKeys!2026 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(assert (=> bs!1118284 m!5666395))

(assert (=> b!4726871 d!1506283))

(declare-fun b_lambda!179759 () Bool)

(assert (= b_lambda!179639 (or d!1505823 b_lambda!179759)))

(declare-fun bs!1118285 () Bool)

(declare-fun d!1506285 () Bool)

(assert (= bs!1118285 (and d!1506285 d!1505823)))

(assert (=> bs!1118285 (= (dynLambda!21832 lambda!216275 (h!59213 oldBucket!34)) (= (hash!4402 hashF!1323 (_1!30543 (h!59213 oldBucket!34))) hash!405))))

(declare-fun m!5667335 () Bool)

(assert (=> bs!1118285 m!5667335))

(assert (=> b!4726678 d!1506285))

(declare-fun b_lambda!179761 () Bool)

(assert (= b_lambda!179667 (or d!1505883 b_lambda!179761)))

(declare-fun bs!1118286 () Bool)

(declare-fun d!1506287 () Bool)

(assert (= bs!1118286 (and d!1506287 d!1505883)))

(assert (=> bs!1118286 (= (dynLambda!21832 lambda!216365 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (contains!16210 lt!1891302 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(declare-fun m!5667337 () Bool)

(assert (=> bs!1118286 m!5667337))

(assert (=> b!4726907 d!1506287))

(declare-fun b_lambda!179763 () Bool)

(assert (= b_lambda!179685 (or b!4726633 b_lambda!179763)))

(declare-fun bs!1118287 () Bool)

(declare-fun d!1506289 () Bool)

(assert (= bs!1118287 (and d!1506289 b!4726633)))

(assert (=> bs!1118287 (= (dynLambda!21832 lambda!216364 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023))))) (contains!16210 lt!1891304 (_1!30543 (h!59213 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))))

(assert (=> bs!1118287 m!5666415))

(assert (=> b!4727006 d!1506289))

(declare-fun b_lambda!179765 () Bool)

(assert (= b_lambda!179657 (or d!1505891 b_lambda!179765)))

(declare-fun bs!1118288 () Bool)

(declare-fun d!1506291 () Bool)

(assert (= bs!1118288 (and d!1506291 d!1505891)))

(assert (=> bs!1118288 (= (dynLambda!21830 lambda!216366 (h!59214 (t!360261 (toList!5941 lm!2023)))) (noDuplicateKeys!2026 (_2!30544 (h!59214 (t!360261 (toList!5941 lm!2023))))))))

(assert (=> bs!1118288 m!5666605))

(assert (=> b!4726858 d!1506291))

(declare-fun b_lambda!179767 () Bool)

(assert (= b_lambda!179673 (or b!4726633 b_lambda!179767)))

(assert (=> d!1506087 d!1506289))

(declare-fun b_lambda!179769 () Bool)

(assert (= b_lambda!179647 (or b!4726633 b_lambda!179769)))

(declare-fun bs!1118289 () Bool)

(declare-fun d!1506293 () Bool)

(assert (= bs!1118289 (and d!1506293 b!4726633)))

(assert (=> bs!1118289 (= (dynLambda!21832 lambda!216364 (h!59213 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023)))))) (contains!16210 lt!1891304 (_1!30543 (h!59213 (toList!5942 (extractMap!2052 (t!360261 (toList!5941 lm!2023))))))))))

(declare-fun m!5667339 () Bool)

(assert (=> bs!1118289 m!5667339))

(assert (=> b!4726740 d!1506293))

(declare-fun b_lambda!179771 () Bool)

(assert (= b_lambda!179641 (or d!1505801 b_lambda!179771)))

(declare-fun bs!1118290 () Bool)

(declare-fun d!1506295 () Bool)

(assert (= bs!1118290 (and d!1506295 d!1505801)))

(assert (=> bs!1118290 (= (dynLambda!21830 lambda!216272 (h!59214 (toList!5941 lm!2023))) (noDuplicateKeys!2026 (_2!30544 (h!59214 (toList!5941 lm!2023)))))))

(assert (=> bs!1118290 m!5666395))

(assert (=> b!4726680 d!1506295))

(check-sat (not b_lambda!179741) (not d!1506213) (not b!4726777) (not d!1505927) (not b!4726912) (not b!4726723) (not b!4726992) (not b!4726764) (not bs!1118287) (not b!4726948) (not bs!1118284) (not b_lambda!179755) (not b!4726679) (not b!4726867) (not b!4727144) (not d!1505961) (not d!1506113) (not b!4727132) tp_is_empty!31399 (not b!4726842) (not b!4726901) tp_is_empty!31397 (not d!1506215) (not b!4726857) (not b_lambda!179763) (not b!4726989) (not b!4726733) (not b_lambda!179769) (not d!1505963) (not d!1506105) (not b!4727084) (not d!1505953) (not d!1506083) (not d!1506235) (not b!4727161) (not b_lambda!179631) (not b!4727142) (not b!4727177) (not b!4726933) (not b!4726774) (not b!4726859) (not d!1506233) (not b!4726993) (not b!4726731) (not bs!1118286) (not b!4726968) (not b!4726914) (not b!4726908) (not b!4726973) (not b!4727154) (not b!4727087) (not d!1506221) (not b!4726915) (not d!1505977) (not b_lambda!179771) (not b!4726940) (not b!4727127) (not d!1506209) (not bs!1118285) (not bs!1118275) (not bm!330701) (not d!1505957) (not d!1506219) (not b_lambda!179753) (not d!1506195) (not b!4726897) (not b!4726950) (not b!4726988) (not b!4726918) (not bs!1118272) (not b!4727158) (not b!4726862) (not b_lambda!179697) (not d!1506023) (not d!1505919) (not b!4726722) (not b!4727179) (not b!4727134) (not b!4726965) (not b!4726964) (not d!1506071) (not b!4726951) (not b!4726706) (not bm!330708) (not b!4726778) (not d!1506123) (not b!4726913) (not b!4726845) (not d!1506103) (not b!4726994) (not bs!1118288) (not b_lambda!179671) (not b!4726929) (not bs!1118279) (not b!4726967) (not d!1506085) (not bm!330694) (not bs!1118290) (not b!4726990) (not d!1506015) (not d!1506021) (not b_lambda!179745) (not b!4726863) (not b!4726896) (not b!4727116) (not b!4727169) (not bm!330702) (not b!4726898) (not d!1506185) (not b!4727151) (not bm!330706) (not b_lambda!179743) (not b!4726739) (not b!4726910) (not b_lambda!179761) (not b!4726868) (not b!4727131) (not bs!1118277) (not b!4727166) (not b!4726773) (not bs!1118281) (not b!4727007) (not b!4727118) (not b!4727147) (not b!4726741) (not b_lambda!179767) (not d!1505941) (not b!4727176) (not b!4727149) (not d!1506227) (not d!1506211) (not bs!1118283) (not b!4726872) (not b!4726947) (not b!4726966) (not b!4726942) (not b!4727120) (not d!1506179) (not d!1505973) (not b!4726866) (not d!1506167) (not b!4726969) (not d!1505987) (not d!1506223) (not b!4727085) (not d!1505965) (not b!4726909) (not b_lambda!179749) (not b!4727172) (not b!4727159) (not b!4726894) (not b!4727173) (not d!1506089) (not b!4726870) (not b!4727150) (not b!4726860) (not bm!330696) (not b!4726946) (not d!1506225) (not bs!1118289) (not b!4727153) (not d!1505947) (not b!4726949) (not b!4726721) (not d!1506091) (not d!1506025) (not b!4726928) (not b_lambda!179751) (not bm!330697) (not b_lambda!179757) (not bm!330695) (not b_lambda!179759) (not b!4727088) (not b!4727130) (not b!4727157) (not bs!1118282) (not b!4727178) (not d!1506237) (not b_lambda!179747) (not b!4727168) (not b!4726921) (not b!4726945) (not bm!330707) (not b!4726916) (not d!1506087) (not b!4726776) (not b!4726970) (not b!4726813) (not b_lambda!179629) (not b!4727102) (not b!4726800) (not b!4726846) (not d!1505951) (not b!4726883) (not b!4726681) (not d!1505915) (not b_lambda!179765) (not b!4726954) (not b!4726917) (not b!4727086))
(check-sat)
