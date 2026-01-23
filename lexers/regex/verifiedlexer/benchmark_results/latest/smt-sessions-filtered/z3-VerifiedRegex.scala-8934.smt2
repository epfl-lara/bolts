; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479096 () Bool)

(assert start!479096)

(declare-fun b!4713053 () Bool)

(declare-fun res!1992314 () Bool)

(declare-fun e!2939536 () Bool)

(assert (=> b!4713053 (=> (not res!1992314) (not e!2939536))))

(declare-datatypes ((Hashable!6339 0))(
  ( (HashableExt!6338 (__x!32042 Int)) )
))
(declare-fun hashF!1323 () Hashable!6339)

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((K!14075 0))(
  ( (K!14076 (val!19531 Int)) )
))
(declare-datatypes ((V!14321 0))(
  ( (V!14322 (val!19532 Int)) )
))
(declare-datatypes ((tuple2!54274 0))(
  ( (tuple2!54275 (_1!30431 K!14075) (_2!30431 V!14321)) )
))
(declare-datatypes ((List!52839 0))(
  ( (Nil!52715) (Cons!52715 (h!59034 tuple2!54274) (t!360081 List!52839)) )
))
(declare-fun oldBucket!34 () List!52839)

(declare-fun allKeysSameHash!1796 (List!52839 (_ BitVec 64) Hashable!6339) Bool)

(assert (=> b!4713053 (= res!1992314 (allKeysSameHash!1796 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4713054 () Bool)

(declare-fun res!1992318 () Bool)

(declare-fun e!2939537 () Bool)

(assert (=> b!4713054 (=> (not res!1992318) (not e!2939537))))

(declare-datatypes ((tuple2!54276 0))(
  ( (tuple2!54277 (_1!30432 (_ BitVec 64)) (_2!30432 List!52839)) )
))
(declare-datatypes ((List!52840 0))(
  ( (Nil!52716) (Cons!52716 (h!59035 tuple2!54276) (t!360082 List!52840)) )
))
(declare-datatypes ((ListLongMap!4359 0))(
  ( (ListLongMap!4360 (toList!5829 List!52840)) )
))
(declare-fun lm!2023 () ListLongMap!4359)

(get-info :version)

(assert (=> b!4713054 (= res!1992318 ((_ is Cons!52716) (toList!5829 lm!2023)))))

(declare-fun b!4713055 () Bool)

(declare-fun e!2939534 () Bool)

(declare-datatypes ((ListMap!5193 0))(
  ( (ListMap!5194 (toList!5830 List!52839)) )
))
(declare-fun lt!1877363 () ListMap!5193)

(declare-fun addToMapMapFromBucket!1400 (List!52839 ListMap!5193) ListMap!5193)

(declare-fun extractMap!1996 (List!52840) ListMap!5193)

(assert (=> b!4713055 (= e!2939534 (= lt!1877363 (addToMapMapFromBucket!1400 (_2!30432 (h!59035 (toList!5829 lm!2023))) (extractMap!1996 (t!360082 (toList!5829 lm!2023))))))))

(declare-fun tp_is_empty!31173 () Bool)

(declare-fun tp_is_empty!31175 () Bool)

(declare-fun e!2939533 () Bool)

(declare-fun tp!1347699 () Bool)

(declare-fun b!4713056 () Bool)

(assert (=> b!4713056 (= e!2939533 (and tp_is_empty!31173 tp_is_empty!31175 tp!1347699))))

(declare-fun b!4713057 () Bool)

(declare-fun res!1992319 () Bool)

(assert (=> b!4713057 (=> (not res!1992319) (not e!2939536))))

(declare-fun newBucket!218 () List!52839)

(declare-fun noDuplicateKeys!1970 (List!52839) Bool)

(assert (=> b!4713057 (= res!1992319 (noDuplicateKeys!1970 newBucket!218))))

(declare-fun b!4713058 () Bool)

(declare-fun res!1992320 () Bool)

(assert (=> b!4713058 (=> (not res!1992320) (not e!2939536))))

(assert (=> b!4713058 (= res!1992320 (noDuplicateKeys!1970 oldBucket!34))))

(declare-fun b!4713059 () Bool)

(declare-fun tp!1347700 () Bool)

(declare-fun e!2939539 () Bool)

(assert (=> b!4713059 (= e!2939539 (and tp_is_empty!31173 tp_is_empty!31175 tp!1347700))))

(declare-fun b!4713060 () Bool)

(declare-fun res!1992321 () Bool)

(assert (=> b!4713060 (=> (not res!1992321) (not e!2939536))))

(declare-fun key!4653 () K!14075)

(declare-fun removePairForKey!1565 (List!52839 K!14075) List!52839)

(assert (=> b!4713060 (= res!1992321 (= (removePairForKey!1565 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4713061 () Bool)

(declare-fun e!2939535 () Bool)

(declare-fun tp!1347701 () Bool)

(assert (=> b!4713061 (= e!2939535 tp!1347701)))

(declare-fun res!1992309 () Bool)

(assert (=> start!479096 (=> (not res!1992309) (not e!2939536))))

(declare-fun lambda!213263 () Int)

(declare-fun forall!11511 (List!52840 Int) Bool)

(assert (=> start!479096 (= res!1992309 (forall!11511 (toList!5829 lm!2023) lambda!213263))))

(assert (=> start!479096 e!2939536))

(declare-fun inv!67949 (ListLongMap!4359) Bool)

(assert (=> start!479096 (and (inv!67949 lm!2023) e!2939535)))

(assert (=> start!479096 tp_is_empty!31173))

(assert (=> start!479096 e!2939539))

(assert (=> start!479096 true))

(assert (=> start!479096 e!2939533))

(declare-fun b!4713062 () Bool)

(declare-fun e!2939541 () Bool)

(assert (=> b!4713062 (= e!2939541 e!2939537)))

(declare-fun res!1992310 () Bool)

(assert (=> b!4713062 (=> (not res!1992310) (not e!2939537))))

(declare-fun lt!1877361 () (_ BitVec 64))

(assert (=> b!4713062 (= res!1992310 (= lt!1877361 hash!405))))

(declare-fun hash!4304 (Hashable!6339 K!14075) (_ BitVec 64))

(assert (=> b!4713062 (= lt!1877361 (hash!4304 hashF!1323 key!4653))))

(declare-fun b!4713063 () Bool)

(declare-fun e!2939540 () Bool)

(assert (=> b!4713063 (= e!2939540 true)))

(declare-fun lt!1877355 () List!52840)

(declare-fun contains!16029 (ListMap!5193 K!14075) Bool)

(assert (=> b!4713063 (contains!16029 (extractMap!1996 lt!1877355) key!4653)))

(declare-datatypes ((Unit!128232 0))(
  ( (Unit!128233) )
))
(declare-fun lt!1877354 () Unit!128232)

(declare-fun lemmaListContainsThenExtractedMapContains!516 (ListLongMap!4359 K!14075 Hashable!6339) Unit!128232)

(assert (=> b!4713063 (= lt!1877354 (lemmaListContainsThenExtractedMapContains!516 (ListLongMap!4360 lt!1877355) key!4653 hashF!1323))))

(assert (=> b!4713063 (= lt!1877355 (Cons!52716 (tuple2!54277 hash!405 (t!360081 oldBucket!34)) (t!360082 (toList!5829 lm!2023))))))

(declare-fun b!4713064 () Bool)

(declare-fun res!1992312 () Bool)

(assert (=> b!4713064 (=> (not res!1992312) (not e!2939537))))

(declare-fun allKeysSameHashInMap!1884 (ListLongMap!4359 Hashable!6339) Bool)

(assert (=> b!4713064 (= res!1992312 (allKeysSameHashInMap!1884 lm!2023 hashF!1323))))

(declare-fun b!4713065 () Bool)

(declare-fun e!2939538 () Bool)

(assert (=> b!4713065 (= e!2939537 (not e!2939538))))

(declare-fun res!1992313 () Bool)

(assert (=> b!4713065 (=> res!1992313 e!2939538)))

(assert (=> b!4713065 (= res!1992313 (or (and ((_ is Cons!52715) oldBucket!34) (= (_1!30431 (h!59034 oldBucket!34)) key!4653)) (not ((_ is Cons!52715) oldBucket!34)) (= (_1!30431 (h!59034 oldBucket!34)) key!4653)))))

(assert (=> b!4713065 e!2939534))

(declare-fun res!1992316 () Bool)

(assert (=> b!4713065 (=> (not res!1992316) (not e!2939534))))

(declare-fun tail!8889 (ListLongMap!4359) ListLongMap!4359)

(assert (=> b!4713065 (= res!1992316 (= (t!360082 (toList!5829 lm!2023)) (toList!5829 (tail!8889 lm!2023))))))

(declare-fun b!4713066 () Bool)

(declare-fun e!2939542 () Bool)

(assert (=> b!4713066 (= e!2939538 e!2939542)))

(declare-fun res!1992307 () Bool)

(assert (=> b!4713066 (=> res!1992307 e!2939542)))

(declare-fun containsKey!3287 (List!52839 K!14075) Bool)

(assert (=> b!4713066 (= res!1992307 (not (containsKey!3287 (t!360081 oldBucket!34) key!4653)))))

(assert (=> b!4713066 (containsKey!3287 oldBucket!34 key!4653)))

(declare-fun lt!1877360 () Unit!128232)

(declare-fun lemmaGetPairDefinedThenContainsKey!284 (List!52839 K!14075 Hashable!6339) Unit!128232)

(assert (=> b!4713066 (= lt!1877360 (lemmaGetPairDefinedThenContainsKey!284 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1877362 () List!52839)

(declare-datatypes ((Option!12290 0))(
  ( (None!12289) (Some!12289 (v!46828 tuple2!54274)) )
))
(declare-fun isDefined!9544 (Option!12290) Bool)

(declare-fun getPair!536 (List!52839 K!14075) Option!12290)

(assert (=> b!4713066 (isDefined!9544 (getPair!536 lt!1877362 key!4653))))

(declare-fun lt!1877357 () Unit!128232)

(declare-fun lt!1877358 () tuple2!54276)

(declare-fun forallContained!3580 (List!52840 Int tuple2!54276) Unit!128232)

(assert (=> b!4713066 (= lt!1877357 (forallContained!3580 (toList!5829 lm!2023) lambda!213263 lt!1877358))))

(declare-fun contains!16030 (List!52840 tuple2!54276) Bool)

(assert (=> b!4713066 (contains!16030 (toList!5829 lm!2023) lt!1877358)))

(assert (=> b!4713066 (= lt!1877358 (tuple2!54277 lt!1877361 lt!1877362))))

(declare-fun lt!1877364 () Unit!128232)

(declare-fun lemmaGetValueImpliesTupleContained!341 (ListLongMap!4359 (_ BitVec 64) List!52839) Unit!128232)

(assert (=> b!4713066 (= lt!1877364 (lemmaGetValueImpliesTupleContained!341 lm!2023 lt!1877361 lt!1877362))))

(declare-fun apply!12419 (ListLongMap!4359 (_ BitVec 64)) List!52839)

(assert (=> b!4713066 (= lt!1877362 (apply!12419 lm!2023 lt!1877361))))

(declare-fun contains!16031 (ListLongMap!4359 (_ BitVec 64)) Bool)

(assert (=> b!4713066 (contains!16031 lm!2023 lt!1877361)))

(declare-fun lt!1877353 () Unit!128232)

(declare-fun lemmaInGenMapThenLongMapContainsHash!742 (ListLongMap!4359 K!14075 Hashable!6339) Unit!128232)

(assert (=> b!4713066 (= lt!1877353 (lemmaInGenMapThenLongMapContainsHash!742 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1877356 () Unit!128232)

(declare-fun lemmaInGenMapThenGetPairDefined!332 (ListLongMap!4359 K!14075 Hashable!6339) Unit!128232)

(assert (=> b!4713066 (= lt!1877356 (lemmaInGenMapThenGetPairDefined!332 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4713067 () Bool)

(declare-fun res!1992317 () Bool)

(assert (=> b!4713067 (=> (not res!1992317) (not e!2939537))))

(assert (=> b!4713067 (= res!1992317 (allKeysSameHash!1796 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4713068 () Bool)

(assert (=> b!4713068 (= e!2939536 e!2939541)))

(declare-fun res!1992311 () Bool)

(assert (=> b!4713068 (=> (not res!1992311) (not e!2939541))))

(assert (=> b!4713068 (= res!1992311 (contains!16029 lt!1877363 key!4653))))

(assert (=> b!4713068 (= lt!1877363 (extractMap!1996 (toList!5829 lm!2023)))))

(declare-fun b!4713069 () Bool)

(declare-fun res!1992308 () Bool)

(assert (=> b!4713069 (=> res!1992308 e!2939540)))

(declare-fun lt!1877359 () List!52839)

(assert (=> b!4713069 (= res!1992308 (not (= (removePairForKey!1565 (t!360081 oldBucket!34) key!4653) lt!1877359)))))

(declare-fun b!4713070 () Bool)

(assert (=> b!4713070 (= e!2939542 e!2939540)))

(declare-fun res!1992315 () Bool)

(assert (=> b!4713070 (=> res!1992315 e!2939540)))

(declare-fun tail!8890 (List!52839) List!52839)

(assert (=> b!4713070 (= res!1992315 (not (= (removePairForKey!1565 (tail!8890 oldBucket!34) key!4653) lt!1877359)))))

(assert (=> b!4713070 (= lt!1877359 (tail!8890 newBucket!218))))

(declare-fun b!4713071 () Bool)

(declare-fun res!1992306 () Bool)

(assert (=> b!4713071 (=> (not res!1992306) (not e!2939537))))

(declare-fun head!10170 (List!52840) tuple2!54276)

(assert (=> b!4713071 (= res!1992306 (= (head!10170 (toList!5829 lm!2023)) (tuple2!54277 hash!405 oldBucket!34)))))

(assert (= (and start!479096 res!1992309) b!4713058))

(assert (= (and b!4713058 res!1992320) b!4713057))

(assert (= (and b!4713057 res!1992319) b!4713060))

(assert (= (and b!4713060 res!1992321) b!4713053))

(assert (= (and b!4713053 res!1992314) b!4713068))

(assert (= (and b!4713068 res!1992311) b!4713062))

(assert (= (and b!4713062 res!1992310) b!4713067))

(assert (= (and b!4713067 res!1992317) b!4713064))

(assert (= (and b!4713064 res!1992312) b!4713071))

(assert (= (and b!4713071 res!1992306) b!4713054))

(assert (= (and b!4713054 res!1992318) b!4713065))

(assert (= (and b!4713065 res!1992316) b!4713055))

(assert (= (and b!4713065 (not res!1992313)) b!4713066))

(assert (= (and b!4713066 (not res!1992307)) b!4713070))

(assert (= (and b!4713070 (not res!1992315)) b!4713069))

(assert (= (and b!4713069 (not res!1992308)) b!4713063))

(assert (= start!479096 b!4713061))

(assert (= (and start!479096 ((_ is Cons!52715) oldBucket!34)) b!4713059))

(assert (= (and start!479096 ((_ is Cons!52715) newBucket!218)) b!4713056))

(declare-fun m!5639343 () Bool)

(assert (=> b!4713070 m!5639343))

(assert (=> b!4713070 m!5639343))

(declare-fun m!5639345 () Bool)

(assert (=> b!4713070 m!5639345))

(declare-fun m!5639347 () Bool)

(assert (=> b!4713070 m!5639347))

(declare-fun m!5639349 () Bool)

(assert (=> b!4713069 m!5639349))

(declare-fun m!5639351 () Bool)

(assert (=> b!4713066 m!5639351))

(declare-fun m!5639353 () Bool)

(assert (=> b!4713066 m!5639353))

(declare-fun m!5639355 () Bool)

(assert (=> b!4713066 m!5639355))

(declare-fun m!5639357 () Bool)

(assert (=> b!4713066 m!5639357))

(declare-fun m!5639359 () Bool)

(assert (=> b!4713066 m!5639359))

(declare-fun m!5639361 () Bool)

(assert (=> b!4713066 m!5639361))

(declare-fun m!5639363 () Bool)

(assert (=> b!4713066 m!5639363))

(assert (=> b!4713066 m!5639361))

(declare-fun m!5639365 () Bool)

(assert (=> b!4713066 m!5639365))

(declare-fun m!5639367 () Bool)

(assert (=> b!4713066 m!5639367))

(declare-fun m!5639369 () Bool)

(assert (=> b!4713066 m!5639369))

(declare-fun m!5639371 () Bool)

(assert (=> b!4713066 m!5639371))

(declare-fun m!5639373 () Bool)

(assert (=> b!4713066 m!5639373))

(declare-fun m!5639375 () Bool)

(assert (=> b!4713064 m!5639375))

(declare-fun m!5639377 () Bool)

(assert (=> b!4713071 m!5639377))

(declare-fun m!5639379 () Bool)

(assert (=> b!4713067 m!5639379))

(declare-fun m!5639381 () Bool)

(assert (=> b!4713057 m!5639381))

(declare-fun m!5639383 () Bool)

(assert (=> b!4713053 m!5639383))

(declare-fun m!5639385 () Bool)

(assert (=> b!4713062 m!5639385))

(declare-fun m!5639387 () Bool)

(assert (=> b!4713068 m!5639387))

(declare-fun m!5639389 () Bool)

(assert (=> b!4713068 m!5639389))

(declare-fun m!5639391 () Bool)

(assert (=> b!4713055 m!5639391))

(assert (=> b!4713055 m!5639391))

(declare-fun m!5639393 () Bool)

(assert (=> b!4713055 m!5639393))

(declare-fun m!5639395 () Bool)

(assert (=> b!4713060 m!5639395))

(declare-fun m!5639397 () Bool)

(assert (=> b!4713065 m!5639397))

(declare-fun m!5639399 () Bool)

(assert (=> start!479096 m!5639399))

(declare-fun m!5639401 () Bool)

(assert (=> start!479096 m!5639401))

(declare-fun m!5639403 () Bool)

(assert (=> b!4713058 m!5639403))

(declare-fun m!5639405 () Bool)

(assert (=> b!4713063 m!5639405))

(assert (=> b!4713063 m!5639405))

(declare-fun m!5639407 () Bool)

(assert (=> b!4713063 m!5639407))

(declare-fun m!5639409 () Bool)

(assert (=> b!4713063 m!5639409))

(check-sat (not b!4713055) (not b!4713061) tp_is_empty!31173 (not b!4713069) tp_is_empty!31175 (not start!479096) (not b!4713053) (not b!4713064) (not b!4713056) (not b!4713059) (not b!4713057) (not b!4713063) (not b!4713066) (not b!4713068) (not b!4713060) (not b!4713058) (not b!4713067) (not b!4713070) (not b!4713065) (not b!4713062) (not b!4713071))
(check-sat)
