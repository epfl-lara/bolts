; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!494488 () Bool)

(assert start!494488)

(declare-fun b!4796409 () Bool)

(declare-fun res!2039284 () Bool)

(declare-fun e!2995031 () Bool)

(assert (=> b!4796409 (=> (not res!2039284) (not e!2995031))))

(declare-datatypes ((K!15832 0))(
  ( (K!15833 (val!20971 Int)) )
))
(declare-datatypes ((V!16078 0))(
  ( (V!16079 (val!20972 Int)) )
))
(declare-datatypes ((tuple2!56916 0))(
  ( (tuple2!56917 (_1!31752 K!15832) (_2!31752 V!16078)) )
))
(declare-datatypes ((List!54384 0))(
  ( (Nil!54260) (Cons!54260 (h!60692 tuple2!56916) (t!361834 List!54384)) )
))
(declare-datatypes ((tuple2!56918 0))(
  ( (tuple2!56919 (_1!31753 (_ BitVec 64)) (_2!31753 List!54384)) )
))
(declare-datatypes ((List!54385 0))(
  ( (Nil!54261) (Cons!54261 (h!60693 tuple2!56918) (t!361835 List!54385)) )
))
(declare-datatypes ((ListLongMap!5375 0))(
  ( (ListLongMap!5376 (toList!6953 List!54385)) )
))
(declare-fun lm!2473 () ListLongMap!5375)

(declare-datatypes ((Hashable!6937 0))(
  ( (HashableExt!6936 (__x!32960 Int)) )
))
(declare-fun hashF!1559 () Hashable!6937)

(declare-fun allKeysSameHashInMap!2342 (ListLongMap!5375 Hashable!6937) Bool)

(assert (=> b!4796409 (= res!2039284 (allKeysSameHashInMap!2342 lm!2473 hashF!1559))))

(declare-fun e!2995029 () Bool)

(declare-fun b!4796410 () Bool)

(declare-fun lt!1953850 () (_ BitVec 64))

(declare-fun key!5896 () K!15832)

(declare-datatypes ((Option!13133 0))(
  ( (None!13132) (Some!13132 (v!48437 tuple2!56916)) )
))
(declare-fun isDefined!10274 (Option!13133) Bool)

(declare-fun getPair!909 (List!54384 K!15832) Option!13133)

(declare-fun apply!13010 (ListLongMap!5375 (_ BitVec 64)) List!54384)

(assert (=> b!4796410 (= e!2995029 (isDefined!10274 (getPair!909 (apply!13010 lm!2473 lt!1953850) key!5896)))))

(declare-fun b!4796411 () Bool)

(declare-fun e!2995030 () Bool)

(assert (=> b!4796411 (= e!2995031 (not e!2995030))))

(declare-fun res!2039283 () Bool)

(assert (=> b!4796411 (=> res!2039283 e!2995030)))

(declare-fun value!3111 () V!16078)

(declare-fun getValue!125 (List!54385 K!15832) V!16078)

(assert (=> b!4796411 (= res!2039283 (not (= (getValue!125 (toList!6953 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!579 (List!54385 K!15832) Bool)

(assert (=> b!4796411 (containsKeyBiggerList!579 (toList!6953 lm!2473) key!5896)))

(declare-datatypes ((Unit!140312 0))(
  ( (Unit!140313) )
))
(declare-fun lt!1953851 () Unit!140312)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!319 (ListLongMap!5375 K!15832 Hashable!6937) Unit!140312)

(assert (=> b!4796411 (= lt!1953851 (lemmaInLongMapThenContainsKeyBiggerList!319 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4796411 e!2995029))

(declare-fun res!2039285 () Bool)

(assert (=> b!4796411 (=> (not res!2039285) (not e!2995029))))

(declare-fun contains!17899 (ListLongMap!5375 (_ BitVec 64)) Bool)

(assert (=> b!4796411 (= res!2039285 (contains!17899 lm!2473 lt!1953850))))

(declare-fun hash!4982 (Hashable!6937 K!15832) (_ BitVec 64))

(assert (=> b!4796411 (= lt!1953850 (hash!4982 hashF!1559 key!5896))))

(declare-fun lt!1953852 () Unit!140312)

(declare-fun lemmaInGenericMapThenInLongMap!341 (ListLongMap!5375 K!15832 Hashable!6937) Unit!140312)

(assert (=> b!4796411 (= lt!1953852 (lemmaInGenericMapThenInLongMap!341 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4796412 () Bool)

(declare-fun e!2995032 () Bool)

(declare-fun tp!1358177 () Bool)

(assert (=> b!4796412 (= e!2995032 tp!1358177)))

(declare-fun b!4796413 () Bool)

(declare-fun res!2039286 () Bool)

(assert (=> b!4796413 (=> (not res!2039286) (not e!2995031))))

(declare-datatypes ((ListMap!6425 0))(
  ( (ListMap!6426 (toList!6954 List!54384)) )
))
(declare-fun contains!17900 (ListMap!6425 K!15832) Bool)

(declare-fun extractMap!2464 (List!54385) ListMap!6425)

(assert (=> b!4796413 (= res!2039286 (contains!17900 (extractMap!2464 (toList!6953 lm!2473)) key!5896))))

(declare-fun b!4796414 () Bool)

(declare-fun res!2039282 () Bool)

(assert (=> b!4796414 (=> res!2039282 e!2995030)))

(assert (=> b!4796414 (= res!2039282 (not (is-Cons!54261 (toList!6953 lm!2473))))))

(declare-fun b!4796415 () Bool)

(assert (=> b!4796415 (= e!2995030 true)))

(declare-fun lt!1953853 () Bool)

(declare-fun containsKey!3983 (List!54384 K!15832) Bool)

(assert (=> b!4796415 (= lt!1953853 (containsKey!3983 (_2!31753 (h!60693 (toList!6953 lm!2473))) key!5896))))

(declare-fun res!2039281 () Bool)

(assert (=> start!494488 (=> (not res!2039281) (not e!2995031))))

(declare-fun lambda!231470 () Int)

(declare-fun forall!12284 (List!54385 Int) Bool)

(assert (=> start!494488 (= res!2039281 (forall!12284 (toList!6953 lm!2473) lambda!231470))))

(assert (=> start!494488 e!2995031))

(declare-fun inv!69859 (ListLongMap!5375) Bool)

(assert (=> start!494488 (and (inv!69859 lm!2473) e!2995032)))

(assert (=> start!494488 true))

(declare-fun tp_is_empty!33609 () Bool)

(assert (=> start!494488 tp_is_empty!33609))

(declare-fun tp_is_empty!33611 () Bool)

(assert (=> start!494488 tp_is_empty!33611))

(assert (= (and start!494488 res!2039281) b!4796409))

(assert (= (and b!4796409 res!2039284) b!4796413))

(assert (= (and b!4796413 res!2039286) b!4796411))

(assert (= (and b!4796411 res!2039285) b!4796410))

(assert (= (and b!4796411 (not res!2039283)) b!4796414))

(assert (= (and b!4796414 (not res!2039282)) b!4796415))

(assert (= start!494488 b!4796412))

(declare-fun m!5778748 () Bool)

(assert (=> b!4796413 m!5778748))

(assert (=> b!4796413 m!5778748))

(declare-fun m!5778750 () Bool)

(assert (=> b!4796413 m!5778750))

(declare-fun m!5778752 () Bool)

(assert (=> b!4796409 m!5778752))

(declare-fun m!5778754 () Bool)

(assert (=> b!4796415 m!5778754))

(declare-fun m!5778756 () Bool)

(assert (=> b!4796411 m!5778756))

(declare-fun m!5778758 () Bool)

(assert (=> b!4796411 m!5778758))

(declare-fun m!5778760 () Bool)

(assert (=> b!4796411 m!5778760))

(declare-fun m!5778762 () Bool)

(assert (=> b!4796411 m!5778762))

(declare-fun m!5778764 () Bool)

(assert (=> b!4796411 m!5778764))

(declare-fun m!5778766 () Bool)

(assert (=> b!4796411 m!5778766))

(declare-fun m!5778768 () Bool)

(assert (=> start!494488 m!5778768))

(declare-fun m!5778770 () Bool)

(assert (=> start!494488 m!5778770))

(declare-fun m!5778772 () Bool)

(assert (=> b!4796410 m!5778772))

(assert (=> b!4796410 m!5778772))

(declare-fun m!5778774 () Bool)

(assert (=> b!4796410 m!5778774))

(assert (=> b!4796410 m!5778774))

(declare-fun m!5778776 () Bool)

(assert (=> b!4796410 m!5778776))

(push 1)

(assert (not b!4796409))

(assert (not start!494488))

(assert (not b!4796410))

(assert (not b!4796412))

(assert (not b!4796411))

(assert (not b!4796413))

(assert (not b!4796415))

(assert tp_is_empty!33611)

(assert tp_is_empty!33609)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

