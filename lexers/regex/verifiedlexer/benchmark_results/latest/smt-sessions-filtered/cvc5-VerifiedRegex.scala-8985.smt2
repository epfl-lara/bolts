; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!484466 () Bool)

(assert start!484466)

(declare-fun b!4745232 () Bool)

(declare-fun e!2959867 () Bool)

(declare-fun e!2959868 () Bool)

(assert (=> b!4745232 (= e!2959867 e!2959868)))

(declare-fun res!2011092 () Bool)

(assert (=> b!4745232 (=> (not res!2011092) (not e!2959868))))

(declare-datatypes ((K!14328 0))(
  ( (K!14329 (val!19733 Int)) )
))
(declare-datatypes ((V!14574 0))(
  ( (V!14575 (val!19734 Int)) )
))
(declare-datatypes ((tuple2!54678 0))(
  ( (tuple2!54679 (_1!30633 K!14328) (_2!30633 V!14574)) )
))
(declare-datatypes ((List!53111 0))(
  ( (Nil!52987) (Cons!52987 (h!59378 tuple2!54678) (t!360419 List!53111)) )
))
(declare-datatypes ((ListMap!5395 0))(
  ( (ListMap!5396 (toList!6031 List!53111)) )
))
(declare-fun lt!1908164 () ListMap!5395)

(declare-fun key!4653 () K!14328)

(declare-fun contains!16413 (ListMap!5395 K!14328) Bool)

(assert (=> b!4745232 (= res!2011092 (contains!16413 lt!1908164 key!4653))))

(declare-datatypes ((tuple2!54680 0))(
  ( (tuple2!54681 (_1!30634 (_ BitVec 64)) (_2!30634 List!53111)) )
))
(declare-datatypes ((List!53112 0))(
  ( (Nil!52988) (Cons!52988 (h!59379 tuple2!54680) (t!360420 List!53112)) )
))
(declare-datatypes ((ListLongMap!4561 0))(
  ( (ListLongMap!4562 (toList!6032 List!53112)) )
))
(declare-fun lm!2023 () ListLongMap!4561)

(declare-fun extractMap!2097 (List!53112) ListMap!5395)

(assert (=> b!4745232 (= lt!1908164 (extractMap!2097 (toList!6032 lm!2023)))))

(declare-fun res!2011085 () Bool)

(assert (=> start!484466 (=> (not res!2011085) (not e!2959867))))

(declare-fun lambda!220111 () Int)

(declare-fun forall!11706 (List!53112 Int) Bool)

(assert (=> start!484466 (= res!2011085 (forall!11706 (toList!6032 lm!2023) lambda!220111))))

(assert (=> start!484466 e!2959867))

(declare-fun e!2959870 () Bool)

(declare-fun inv!68203 (ListLongMap!4561) Bool)

(assert (=> start!484466 (and (inv!68203 lm!2023) e!2959870)))

(declare-fun tp_is_empty!31577 () Bool)

(assert (=> start!484466 tp_is_empty!31577))

(declare-fun e!2959869 () Bool)

(assert (=> start!484466 e!2959869))

(assert (=> start!484466 true))

(declare-fun e!2959872 () Bool)

(assert (=> start!484466 e!2959872))

(declare-fun b!4745233 () Bool)

(declare-fun res!2011082 () Bool)

(assert (=> b!4745233 (=> (not res!2011082) (not e!2959867))))

(declare-fun oldBucket!34 () List!53111)

(declare-fun noDuplicateKeys!2071 (List!53111) Bool)

(assert (=> b!4745233 (= res!2011082 (noDuplicateKeys!2071 oldBucket!34))))

(declare-fun b!4745234 () Bool)

(declare-fun res!2011091 () Bool)

(assert (=> b!4745234 (=> (not res!2011091) (not e!2959868))))

(assert (=> b!4745234 (= res!2011091 (is-Cons!52988 (toList!6032 lm!2023)))))

(declare-fun b!4745235 () Bool)

(declare-fun tp!1349461 () Bool)

(assert (=> b!4745235 (= e!2959870 tp!1349461)))

(declare-fun tp!1349462 () Bool)

(declare-fun tp_is_empty!31579 () Bool)

(declare-fun b!4745236 () Bool)

(assert (=> b!4745236 (= e!2959872 (and tp_is_empty!31577 tp_is_empty!31579 tp!1349462))))

(declare-fun b!4745237 () Bool)

(declare-fun res!2011086 () Bool)

(assert (=> b!4745237 (=> (not res!2011086) (not e!2959868))))

(declare-datatypes ((Hashable!6440 0))(
  ( (HashableExt!6439 (__x!32143 Int)) )
))
(declare-fun hashF!1323 () Hashable!6440)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4487 (Hashable!6440 K!14328) (_ BitVec 64))

(assert (=> b!4745237 (= res!2011086 (= (hash!4487 hashF!1323 key!4653) hash!405))))

(declare-fun b!4745238 () Bool)

(declare-fun res!2011093 () Bool)

(assert (=> b!4745238 (=> (not res!2011093) (not e!2959868))))

(declare-fun head!10343 (List!53112) tuple2!54680)

(assert (=> b!4745238 (= res!2011093 (= (head!10343 (toList!6032 lm!2023)) (tuple2!54681 hash!405 oldBucket!34)))))

(declare-fun tp!1349460 () Bool)

(declare-fun b!4745239 () Bool)

(assert (=> b!4745239 (= e!2959869 (and tp_is_empty!31577 tp_is_empty!31579 tp!1349460))))

(declare-fun b!4745240 () Bool)

(declare-fun res!2011090 () Bool)

(assert (=> b!4745240 (=> (not res!2011090) (not e!2959868))))

(declare-fun newBucket!218 () List!53111)

(declare-fun allKeysSameHash!1897 (List!53111 (_ BitVec 64) Hashable!6440) Bool)

(assert (=> b!4745240 (= res!2011090 (allKeysSameHash!1897 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4745241 () Bool)

(declare-fun res!2011087 () Bool)

(assert (=> b!4745241 (=> (not res!2011087) (not e!2959867))))

(assert (=> b!4745241 (= res!2011087 (allKeysSameHash!1897 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4745242 () Bool)

(assert (=> b!4745242 (= e!2959868 (not true))))

(declare-fun e!2959871 () Bool)

(assert (=> b!4745242 e!2959871))

(declare-fun res!2011084 () Bool)

(assert (=> b!4745242 (=> (not res!2011084) (not e!2959871))))

(declare-fun tail!9148 (ListLongMap!4561) ListLongMap!4561)

(assert (=> b!4745242 (= res!2011084 (= (t!360420 (toList!6032 lm!2023)) (toList!6032 (tail!9148 lm!2023))))))

(declare-fun b!4745243 () Bool)

(declare-fun addToMapMapFromBucket!1501 (List!53111 ListMap!5395) ListMap!5395)

(assert (=> b!4745243 (= e!2959871 (= lt!1908164 (addToMapMapFromBucket!1501 (_2!30634 (h!59379 (toList!6032 lm!2023))) (extractMap!2097 (t!360420 (toList!6032 lm!2023))))))))

(declare-fun b!4745244 () Bool)

(declare-fun res!2011088 () Bool)

(assert (=> b!4745244 (=> (not res!2011088) (not e!2959867))))

(assert (=> b!4745244 (= res!2011088 (noDuplicateKeys!2071 newBucket!218))))

(declare-fun b!4745245 () Bool)

(declare-fun res!2011089 () Bool)

(assert (=> b!4745245 (=> (not res!2011089) (not e!2959867))))

(declare-fun removePairForKey!1666 (List!53111 K!14328) List!53111)

(assert (=> b!4745245 (= res!2011089 (= (removePairForKey!1666 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4745246 () Bool)

(declare-fun res!2011083 () Bool)

(assert (=> b!4745246 (=> (not res!2011083) (not e!2959868))))

(declare-fun allKeysSameHashInMap!1985 (ListLongMap!4561 Hashable!6440) Bool)

(assert (=> b!4745246 (= res!2011083 (allKeysSameHashInMap!1985 lm!2023 hashF!1323))))

(assert (= (and start!484466 res!2011085) b!4745233))

(assert (= (and b!4745233 res!2011082) b!4745244))

(assert (= (and b!4745244 res!2011088) b!4745245))

(assert (= (and b!4745245 res!2011089) b!4745241))

(assert (= (and b!4745241 res!2011087) b!4745232))

(assert (= (and b!4745232 res!2011092) b!4745237))

(assert (= (and b!4745237 res!2011086) b!4745240))

(assert (= (and b!4745240 res!2011090) b!4745246))

(assert (= (and b!4745246 res!2011083) b!4745238))

(assert (= (and b!4745238 res!2011093) b!4745234))

(assert (= (and b!4745234 res!2011091) b!4745242))

(assert (= (and b!4745242 res!2011084) b!4745243))

(assert (= start!484466 b!4745235))

(assert (= (and start!484466 (is-Cons!52987 oldBucket!34)) b!4745239))

(assert (= (and start!484466 (is-Cons!52987 newBucket!218)) b!4745236))

(declare-fun m!5702099 () Bool)

(assert (=> start!484466 m!5702099))

(declare-fun m!5702101 () Bool)

(assert (=> start!484466 m!5702101))

(declare-fun m!5702103 () Bool)

(assert (=> b!4745246 m!5702103))

(declare-fun m!5702105 () Bool)

(assert (=> b!4745238 m!5702105))

(declare-fun m!5702107 () Bool)

(assert (=> b!4745241 m!5702107))

(declare-fun m!5702109 () Bool)

(assert (=> b!4745232 m!5702109))

(declare-fun m!5702111 () Bool)

(assert (=> b!4745232 m!5702111))

(declare-fun m!5702113 () Bool)

(assert (=> b!4745237 m!5702113))

(declare-fun m!5702115 () Bool)

(assert (=> b!4745240 m!5702115))

(declare-fun m!5702117 () Bool)

(assert (=> b!4745233 m!5702117))

(declare-fun m!5702119 () Bool)

(assert (=> b!4745242 m!5702119))

(declare-fun m!5702121 () Bool)

(assert (=> b!4745243 m!5702121))

(assert (=> b!4745243 m!5702121))

(declare-fun m!5702123 () Bool)

(assert (=> b!4745243 m!5702123))

(declare-fun m!5702125 () Bool)

(assert (=> b!4745244 m!5702125))

(declare-fun m!5702127 () Bool)

(assert (=> b!4745245 m!5702127))

(push 1)

(assert tp_is_empty!31579)

(assert (not b!4745246))

(assert (not b!4745244))

(assert (not b!4745242))

(assert (not b!4745236))

(assert (not start!484466))

(assert (not b!4745241))

(assert (not b!4745235))

(assert tp_is_empty!31577)

(assert (not b!4745240))

(assert (not b!4745238))

(assert (not b!4745245))

(assert (not b!4745239))

(assert (not b!4745237))

(assert (not b!4745232))

(assert (not b!4745243))

(assert (not b!4745233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

