; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499304 () Bool)

(assert start!499304)

(declare-fun b!4819946 () Bool)

(declare-fun res!2051081 () Bool)

(declare-fun e!3011430 () Bool)

(assert (=> b!4819946 (=> res!2051081 e!3011430)))

(declare-datatypes ((V!16798 0))(
  ( (V!16799 (val!21547 Int)) )
))
(declare-datatypes ((K!16552 0))(
  ( (K!16553 (val!21548 Int)) )
))
(declare-datatypes ((tuple2!58030 0))(
  ( (tuple2!58031 (_1!32309 K!16552) (_2!32309 V!16798)) )
))
(declare-datatypes ((List!55000 0))(
  ( (Nil!54876) (Cons!54876 (h!61310 tuple2!58030) (t!362496 List!55000)) )
))
(declare-datatypes ((tuple2!58032 0))(
  ( (tuple2!58033 (_1!32310 (_ BitVec 64)) (_2!32310 List!55000)) )
))
(declare-datatypes ((List!55001 0))(
  ( (Nil!54877) (Cons!54877 (h!61311 tuple2!58032) (t!362497 List!55001)) )
))
(declare-datatypes ((ListLongMap!5913 0))(
  ( (ListLongMap!5914 (toList!7419 List!55001)) )
))
(declare-fun lt!1969175 () ListLongMap!5913)

(declare-datatypes ((Hashable!7225 0))(
  ( (HashableExt!7224 (__x!33500 Int)) )
))
(declare-fun hashF!1509 () Hashable!7225)

(declare-fun allKeysSameHashInMap!2541 (ListLongMap!5913 Hashable!7225) Bool)

(assert (=> b!4819946 (= res!2051081 (not (allKeysSameHashInMap!2541 lt!1969175 hashF!1509)))))

(declare-fun b!4819948 () Bool)

(declare-fun res!2051077 () Bool)

(declare-fun e!3011432 () Bool)

(assert (=> b!4819948 (=> (not res!2051077) (not e!3011432))))

(declare-fun lm!2280 () ListLongMap!5913)

(declare-fun lt!1969172 () (_ BitVec 64))

(assert (=> b!4819948 (= res!2051077 (and (or (not (is-Cons!54877 (toList!7419 lm!2280))) (not (= (_1!32310 (h!61311 (toList!7419 lm!2280))) lt!1969172))) (is-Cons!54877 (toList!7419 lm!2280)) (not (= (_1!32310 (h!61311 (toList!7419 lm!2280))) lt!1969172))))))

(declare-fun b!4819949 () Bool)

(assert (=> b!4819949 (= e!3011432 (not e!3011430))))

(declare-fun res!2051073 () Bool)

(assert (=> b!4819949 (=> res!2051073 e!3011430)))

(declare-fun lambda!235363 () Int)

(declare-fun forall!12543 (List!55001 Int) Bool)

(assert (=> b!4819949 (= res!2051073 (not (forall!12543 (toList!7419 lt!1969175) lambda!235363)))))

(declare-fun tail!9370 (ListLongMap!5913) ListLongMap!5913)

(assert (=> b!4819949 (= lt!1969175 (tail!9370 lm!2280))))

(declare-fun key!5428 () K!16552)

(declare-fun e!3011429 () Bool)

(declare-datatypes ((ListMap!6819 0))(
  ( (ListMap!6820 (toList!7420 List!55000)) )
))
(declare-fun lt!1969173 () ListMap!6819)

(declare-fun contains!18696 (ListMap!6819 K!16552) Bool)

(declare-fun addToMapMapFromBucket!1781 (List!55000 ListMap!6819) ListMap!6819)

(assert (=> b!4819949 (= (contains!18696 (addToMapMapFromBucket!1781 (_2!32310 (h!61311 (toList!7419 lm!2280))) lt!1969173) key!5428) e!3011429)))

(declare-fun res!2051080 () Bool)

(assert (=> b!4819949 (=> res!2051080 e!3011429)))

(declare-fun containsKey!4293 (List!55000 K!16552) Bool)

(assert (=> b!4819949 (= res!2051080 (containsKey!4293 (_2!32310 (h!61311 (toList!7419 lm!2280))) key!5428))))

(declare-datatypes ((Unit!142280 0))(
  ( (Unit!142281) )
))
(declare-fun lt!1969174 () Unit!142280)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!9 (List!55000 ListMap!6819 K!16552) Unit!142280)

(assert (=> b!4819949 (= lt!1969174 (lemmaAddToMapFromBucketContainsIIFInAccOrL!9 (_2!32310 (h!61311 (toList!7419 lm!2280))) lt!1969173 key!5428))))

(declare-fun extractMap!2661 (List!55001) ListMap!6819)

(assert (=> b!4819949 (= lt!1969173 (extractMap!2661 (t!362497 (toList!7419 lm!2280))))))

(declare-fun apply!13312 (ListLongMap!5913 (_ BitVec 64)) List!55000)

(assert (=> b!4819949 (not (containsKey!4293 (apply!13312 lm!2280 (_1!32310 (h!61311 (toList!7419 lm!2280)))) key!5428))))

(declare-fun lt!1969176 () Unit!142280)

(declare-fun lemmaNotSameHashThenCannotContainKey!209 (ListLongMap!5913 K!16552 (_ BitVec 64) Hashable!7225) Unit!142280)

(assert (=> b!4819949 (= lt!1969176 (lemmaNotSameHashThenCannotContainKey!209 lm!2280 key!5428 (_1!32310 (h!61311 (toList!7419 lm!2280))) hashF!1509))))

(declare-fun b!4819950 () Bool)

(declare-fun e!3011431 () Bool)

(declare-fun tp!1362212 () Bool)

(assert (=> b!4819950 (= e!3011431 tp!1362212)))

(declare-fun b!4819951 () Bool)

(declare-fun res!2051078 () Bool)

(assert (=> b!4819951 (=> res!2051078 e!3011430)))

(assert (=> b!4819951 (= res!2051078 (containsKey!4293 (apply!13312 lt!1969175 lt!1969172) key!5428))))

(declare-fun b!4819952 () Bool)

(assert (=> b!4819952 (= e!3011430 (forall!12543 (toList!7419 lm!2280) lambda!235363))))

(assert (=> b!4819952 (not (contains!18696 (extractMap!2661 (toList!7419 lt!1969175)) key!5428))))

(declare-fun lt!1969171 () Unit!142280)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!447 (ListLongMap!5913 K!16552 Hashable!7225) Unit!142280)

(assert (=> b!4819952 (= lt!1969171 (lemmaNotInItsHashBucketThenNotInMap!447 lt!1969175 key!5428 hashF!1509))))

(declare-fun b!4819953 () Bool)

(assert (=> b!4819953 (= e!3011429 (contains!18696 lt!1969173 key!5428))))

(declare-fun b!4819947 () Bool)

(declare-fun e!3011428 () Bool)

(assert (=> b!4819947 (= e!3011428 e!3011432)))

(declare-fun res!2051079 () Bool)

(assert (=> b!4819947 (=> (not res!2051079) (not e!3011432))))

(declare-fun contains!18697 (ListLongMap!5913 (_ BitVec 64)) Bool)

(assert (=> b!4819947 (= res!2051079 (contains!18697 lm!2280 lt!1969172))))

(declare-fun hash!5314 (Hashable!7225 K!16552) (_ BitVec 64))

(assert (=> b!4819947 (= lt!1969172 (hash!5314 hashF!1509 key!5428))))

(declare-fun res!2051072 () Bool)

(assert (=> start!499304 (=> (not res!2051072) (not e!3011428))))

(assert (=> start!499304 (= res!2051072 (forall!12543 (toList!7419 lm!2280) lambda!235363))))

(assert (=> start!499304 e!3011428))

(declare-fun inv!70453 (ListLongMap!5913) Bool)

(assert (=> start!499304 (and (inv!70453 lm!2280) e!3011431)))

(assert (=> start!499304 true))

(declare-fun tp_is_empty!34339 () Bool)

(assert (=> start!499304 tp_is_empty!34339))

(declare-fun b!4819954 () Bool)

(declare-fun res!2051074 () Bool)

(assert (=> b!4819954 (=> (not res!2051074) (not e!3011428))))

(assert (=> b!4819954 (= res!2051074 (allKeysSameHashInMap!2541 lm!2280 hashF!1509))))

(declare-fun b!4819955 () Bool)

(declare-fun res!2051075 () Bool)

(assert (=> b!4819955 (=> res!2051075 e!3011430)))

(assert (=> b!4819955 (= res!2051075 (not (contains!18697 lt!1969175 lt!1969172)))))

(declare-fun b!4819956 () Bool)

(declare-fun res!2051076 () Bool)

(assert (=> b!4819956 (=> (not res!2051076) (not e!3011432))))

(assert (=> b!4819956 (= res!2051076 (not (containsKey!4293 (apply!13312 lm!2280 lt!1969172) key!5428)))))

(assert (= (and start!499304 res!2051072) b!4819954))

(assert (= (and b!4819954 res!2051074) b!4819947))

(assert (= (and b!4819947 res!2051079) b!4819956))

(assert (= (and b!4819956 res!2051076) b!4819948))

(assert (= (and b!4819948 res!2051077) b!4819949))

(assert (= (and b!4819949 (not res!2051080)) b!4819953))

(assert (= (and b!4819949 (not res!2051073)) b!4819946))

(assert (= (and b!4819946 (not res!2051081)) b!4819955))

(assert (= (and b!4819955 (not res!2051075)) b!4819951))

(assert (= (and b!4819951 (not res!2051078)) b!4819952))

(assert (= start!499304 b!4819950))

(declare-fun m!5807320 () Bool)

(assert (=> b!4819949 m!5807320))

(declare-fun m!5807322 () Bool)

(assert (=> b!4819949 m!5807322))

(declare-fun m!5807324 () Bool)

(assert (=> b!4819949 m!5807324))

(declare-fun m!5807326 () Bool)

(assert (=> b!4819949 m!5807326))

(assert (=> b!4819949 m!5807324))

(declare-fun m!5807328 () Bool)

(assert (=> b!4819949 m!5807328))

(declare-fun m!5807330 () Bool)

(assert (=> b!4819949 m!5807330))

(declare-fun m!5807332 () Bool)

(assert (=> b!4819949 m!5807332))

(declare-fun m!5807334 () Bool)

(assert (=> b!4819949 m!5807334))

(assert (=> b!4819949 m!5807330))

(declare-fun m!5807336 () Bool)

(assert (=> b!4819949 m!5807336))

(declare-fun m!5807338 () Bool)

(assert (=> b!4819949 m!5807338))

(declare-fun m!5807340 () Bool)

(assert (=> b!4819946 m!5807340))

(declare-fun m!5807342 () Bool)

(assert (=> b!4819956 m!5807342))

(assert (=> b!4819956 m!5807342))

(declare-fun m!5807344 () Bool)

(assert (=> b!4819956 m!5807344))

(declare-fun m!5807346 () Bool)

(assert (=> b!4819951 m!5807346))

(assert (=> b!4819951 m!5807346))

(declare-fun m!5807348 () Bool)

(assert (=> b!4819951 m!5807348))

(declare-fun m!5807350 () Bool)

(assert (=> b!4819953 m!5807350))

(declare-fun m!5807352 () Bool)

(assert (=> start!499304 m!5807352))

(declare-fun m!5807354 () Bool)

(assert (=> start!499304 m!5807354))

(declare-fun m!5807356 () Bool)

(assert (=> b!4819955 m!5807356))

(declare-fun m!5807358 () Bool)

(assert (=> b!4819947 m!5807358))

(declare-fun m!5807360 () Bool)

(assert (=> b!4819947 m!5807360))

(declare-fun m!5807362 () Bool)

(assert (=> b!4819954 m!5807362))

(assert (=> b!4819952 m!5807352))

(declare-fun m!5807364 () Bool)

(assert (=> b!4819952 m!5807364))

(assert (=> b!4819952 m!5807364))

(declare-fun m!5807366 () Bool)

(assert (=> b!4819952 m!5807366))

(declare-fun m!5807368 () Bool)

(assert (=> b!4819952 m!5807368))

(push 1)

(assert (not b!4819953))

(assert (not b!4819951))

(assert (not b!4819949))

(assert (not b!4819955))

(assert (not b!4819956))

(assert (not start!499304))

(assert (not b!4819954))

(assert (not b!4819952))

(assert tp_is_empty!34339)

(assert (not b!4819950))

(assert (not b!4819946))

(assert (not b!4819947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

