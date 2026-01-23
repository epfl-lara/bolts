; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!426742 () Bool)

(assert start!426742)

(declare-fun b!4395287 () Bool)

(declare-fun res!1812096 () Bool)

(declare-fun e!2736641 () Bool)

(assert (=> b!4395287 (=> (not res!1812096) (not e!2736641))))

(declare-datatypes ((V!10834 0))(
  ( (V!10835 (val!16741 Int)) )
))
(declare-datatypes ((K!10588 0))(
  ( (K!10589 (val!16742 Int)) )
))
(declare-datatypes ((tuple2!48802 0))(
  ( (tuple2!48803 (_1!27695 K!10588) (_2!27695 V!10834)) )
))
(declare-datatypes ((List!49353 0))(
  ( (Nil!49229) (Cons!49229 (h!54842 tuple2!48802) (t!356287 List!49353)) )
))
(declare-datatypes ((tuple2!48804 0))(
  ( (tuple2!48805 (_1!27696 (_ BitVec 64)) (_2!27696 List!49353)) )
))
(declare-datatypes ((List!49354 0))(
  ( (Nil!49230) (Cons!49230 (h!54843 tuple2!48804) (t!356288 List!49354)) )
))
(declare-datatypes ((ListLongMap!1849 0))(
  ( (ListLongMap!1850 (toList!3199 List!49354)) )
))
(declare-fun lm!1707 () ListLongMap!1849)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11599 (ListLongMap!1849 (_ BitVec 64)) Bool)

(assert (=> b!4395287 (= res!1812096 (contains!11599 lm!1707 hash!377))))

(declare-fun b!4395288 () Bool)

(declare-fun res!1812095 () Bool)

(assert (=> b!4395288 (=> (not res!1812095) (not e!2736641))))

(declare-datatypes ((Hashable!5000 0))(
  ( (HashableExt!4999 (__x!30703 Int)) )
))
(declare-fun hashF!1247 () Hashable!5000)

(declare-fun allKeysSameHashInMap!712 (ListLongMap!1849 Hashable!5000) Bool)

(assert (=> b!4395288 (= res!1812095 (allKeysSameHashInMap!712 lm!1707 hashF!1247))))

(declare-fun b!4395289 () Bool)

(declare-fun res!1812100 () Bool)

(assert (=> b!4395289 (=> (not res!1812100) (not e!2736641))))

(declare-fun key!3918 () K!10588)

(declare-datatypes ((ListMap!2443 0))(
  ( (ListMap!2444 (toList!3200 List!49353)) )
))
(declare-fun contains!11600 (ListMap!2443 K!10588) Bool)

(declare-fun extractMap!667 (List!49354) ListMap!2443)

(assert (=> b!4395289 (= res!1812100 (contains!11600 (extractMap!667 (toList!3199 lm!1707)) key!3918))))

(declare-fun b!4395290 () Bool)

(declare-fun tp_is_empty!25671 () Bool)

(declare-fun tp_is_empty!25669 () Bool)

(declare-fun tp!1331558 () Bool)

(declare-fun e!2736643 () Bool)

(assert (=> b!4395290 (= e!2736643 (and tp_is_empty!25669 tp_is_empty!25671 tp!1331558))))

(declare-fun b!4395291 () Bool)

(declare-fun res!1812099 () Bool)

(declare-fun e!2736642 () Bool)

(assert (=> b!4395291 (=> res!1812099 e!2736642)))

(declare-fun newBucket!200 () List!49353)

(declare-fun noDuplicateKeys!608 (List!49353) Bool)

(assert (=> b!4395291 (= res!1812099 (not (noDuplicateKeys!608 newBucket!200)))))

(declare-fun res!1812093 () Bool)

(assert (=> start!426742 (=> (not res!1812093) (not e!2736641))))

(declare-fun lambda!147728 () Int)

(declare-fun forall!9325 (List!49354 Int) Bool)

(assert (=> start!426742 (= res!1812093 (forall!9325 (toList!3199 lm!1707) lambda!147728))))

(assert (=> start!426742 e!2736641))

(assert (=> start!426742 e!2736643))

(assert (=> start!426742 true))

(declare-fun e!2736645 () Bool)

(declare-fun inv!64775 (ListLongMap!1849) Bool)

(assert (=> start!426742 (and (inv!64775 lm!1707) e!2736645)))

(assert (=> start!426742 tp_is_empty!25669))

(assert (=> start!426742 tp_is_empty!25671))

(declare-fun b!4395292 () Bool)

(assert (=> b!4395292 (= e!2736641 (not e!2736642))))

(declare-fun res!1812097 () Bool)

(assert (=> b!4395292 (=> res!1812097 e!2736642)))

(declare-fun lt!1602103 () List!49353)

(declare-fun newValue!99 () V!10834)

(declare-fun removePairForKey!576 (List!49353 K!10588) List!49353)

(assert (=> b!4395292 (= res!1812097 (not (= newBucket!200 (Cons!49229 (tuple2!48803 key!3918 newValue!99) (removePairForKey!576 lt!1602103 key!3918)))))))

(declare-fun lt!1602104 () tuple2!48804)

(declare-datatypes ((Unit!78246 0))(
  ( (Unit!78247) )
))
(declare-fun lt!1602106 () Unit!78246)

(declare-fun forallContained!1962 (List!49354 Int tuple2!48804) Unit!78246)

(assert (=> b!4395292 (= lt!1602106 (forallContained!1962 (toList!3199 lm!1707) lambda!147728 lt!1602104))))

(declare-fun contains!11601 (List!49354 tuple2!48804) Bool)

(assert (=> b!4395292 (contains!11601 (toList!3199 lm!1707) lt!1602104)))

(assert (=> b!4395292 (= lt!1602104 (tuple2!48805 hash!377 lt!1602103))))

(declare-fun lt!1602109 () Unit!78246)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!453 (List!49354 (_ BitVec 64) List!49353) Unit!78246)

(assert (=> b!4395292 (= lt!1602109 (lemmaGetValueByKeyImpliesContainsTuple!453 (toList!3199 lm!1707) hash!377 lt!1602103))))

(declare-fun apply!11460 (ListLongMap!1849 (_ BitVec 64)) List!49353)

(assert (=> b!4395292 (= lt!1602103 (apply!11460 lm!1707 hash!377))))

(declare-fun b!4395293 () Bool)

(declare-fun e!2736647 () Bool)

(assert (=> b!4395293 (= e!2736647 true)))

(declare-fun lt!1602107 () Bool)

(assert (=> b!4395293 (= lt!1602107 (noDuplicateKeys!608 (_2!27696 (h!54843 (toList!3199 lm!1707)))))))

(declare-fun lt!1602108 () ListMap!2443)

(assert (=> b!4395293 (= lt!1602108 (extractMap!667 (t!356288 (toList!3199 lm!1707))))))

(declare-fun e!2736646 () Bool)

(assert (=> b!4395293 e!2736646))

(declare-fun res!1812102 () Bool)

(assert (=> b!4395293 (=> (not res!1812102) (not e!2736646))))

(declare-fun containsKey!892 (List!49353 K!10588) Bool)

(assert (=> b!4395293 (= res!1812102 (not (containsKey!892 (apply!11460 lm!1707 (_1!27696 (h!54843 (toList!3199 lm!1707)))) key!3918)))))

(declare-fun lt!1602105 () Unit!78246)

(declare-fun lemmaNotSameHashThenCannotContainKey!79 (ListLongMap!1849 K!10588 (_ BitVec 64) Hashable!5000) Unit!78246)

(assert (=> b!4395293 (= lt!1602105 (lemmaNotSameHashThenCannotContainKey!79 lm!1707 key!3918 (_1!27696 (h!54843 (toList!3199 lm!1707))) hashF!1247))))

(declare-fun b!4395294 () Bool)

(assert (=> b!4395294 (= e!2736642 e!2736647)))

(declare-fun res!1812098 () Bool)

(assert (=> b!4395294 (=> res!1812098 e!2736647)))

(assert (=> b!4395294 (= res!1812098 (or (and (is-Cons!49230 (toList!3199 lm!1707)) (= (_1!27696 (h!54843 (toList!3199 lm!1707))) hash!377)) (not (is-Cons!49230 (toList!3199 lm!1707))) (= (_1!27696 (h!54843 (toList!3199 lm!1707))) hash!377)))))

(declare-fun e!2736644 () Bool)

(assert (=> b!4395294 e!2736644))

(declare-fun res!1812101 () Bool)

(assert (=> b!4395294 (=> (not res!1812101) (not e!2736644))))

(declare-fun lt!1602102 () ListLongMap!1849)

(assert (=> b!4395294 (= res!1812101 (forall!9325 (toList!3199 lt!1602102) lambda!147728))))

(declare-fun +!839 (ListLongMap!1849 tuple2!48804) ListLongMap!1849)

(assert (=> b!4395294 (= lt!1602102 (+!839 lm!1707 (tuple2!48805 hash!377 newBucket!200)))))

(declare-fun lt!1602101 () Unit!78246)

(declare-fun addValidProp!254 (ListLongMap!1849 Int (_ BitVec 64) List!49353) Unit!78246)

(assert (=> b!4395294 (= lt!1602101 (addValidProp!254 lm!1707 lambda!147728 hash!377 newBucket!200))))

(assert (=> b!4395294 (forall!9325 (toList!3199 lm!1707) lambda!147728)))

(declare-fun b!4395295 () Bool)

(assert (=> b!4395295 (= e!2736644 (forall!9325 (toList!3199 lt!1602102) lambda!147728))))

(declare-fun b!4395296 () Bool)

(declare-fun res!1812092 () Bool)

(assert (=> b!4395296 (=> (not res!1812092) (not e!2736641))))

(declare-fun allKeysSameHash!566 (List!49353 (_ BitVec 64) Hashable!5000) Bool)

(assert (=> b!4395296 (= res!1812092 (allKeysSameHash!566 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4395297 () Bool)

(declare-fun res!1812094 () Bool)

(assert (=> b!4395297 (=> (not res!1812094) (not e!2736641))))

(declare-fun hash!1816 (Hashable!5000 K!10588) (_ BitVec 64))

(assert (=> b!4395297 (= res!1812094 (= (hash!1816 hashF!1247 key!3918) hash!377))))

(declare-fun b!4395298 () Bool)

(assert (=> b!4395298 (= e!2736646 (not (containsKey!892 (_2!27696 (h!54843 (toList!3199 lm!1707))) key!3918)))))

(declare-fun b!4395299 () Bool)

(declare-fun tp!1331557 () Bool)

(assert (=> b!4395299 (= e!2736645 tp!1331557)))

(assert (= (and start!426742 res!1812093) b!4395288))

(assert (= (and b!4395288 res!1812095) b!4395297))

(assert (= (and b!4395297 res!1812094) b!4395296))

(assert (= (and b!4395296 res!1812092) b!4395289))

(assert (= (and b!4395289 res!1812100) b!4395287))

(assert (= (and b!4395287 res!1812096) b!4395292))

(assert (= (and b!4395292 (not res!1812097)) b!4395291))

(assert (= (and b!4395291 (not res!1812099)) b!4395294))

(assert (= (and b!4395294 res!1812101) b!4395295))

(assert (= (and b!4395294 (not res!1812098)) b!4395293))

(assert (= (and b!4395293 res!1812102) b!4395298))

(assert (= (and start!426742 (is-Cons!49229 newBucket!200)) b!4395290))

(assert (= start!426742 b!4395299))

(declare-fun m!5055467 () Bool)

(assert (=> b!4395287 m!5055467))

(declare-fun m!5055469 () Bool)

(assert (=> b!4395298 m!5055469))

(declare-fun m!5055471 () Bool)

(assert (=> b!4395292 m!5055471))

(declare-fun m!5055473 () Bool)

(assert (=> b!4395292 m!5055473))

(declare-fun m!5055475 () Bool)

(assert (=> b!4395292 m!5055475))

(declare-fun m!5055477 () Bool)

(assert (=> b!4395292 m!5055477))

(declare-fun m!5055479 () Bool)

(assert (=> b!4395292 m!5055479))

(declare-fun m!5055481 () Bool)

(assert (=> b!4395289 m!5055481))

(assert (=> b!4395289 m!5055481))

(declare-fun m!5055483 () Bool)

(assert (=> b!4395289 m!5055483))

(declare-fun m!5055485 () Bool)

(assert (=> b!4395291 m!5055485))

(declare-fun m!5055487 () Bool)

(assert (=> b!4395295 m!5055487))

(declare-fun m!5055489 () Bool)

(assert (=> b!4395296 m!5055489))

(declare-fun m!5055491 () Bool)

(assert (=> b!4395288 m!5055491))

(declare-fun m!5055493 () Bool)

(assert (=> b!4395297 m!5055493))

(assert (=> b!4395294 m!5055487))

(declare-fun m!5055495 () Bool)

(assert (=> b!4395294 m!5055495))

(declare-fun m!5055497 () Bool)

(assert (=> b!4395294 m!5055497))

(declare-fun m!5055499 () Bool)

(assert (=> b!4395294 m!5055499))

(assert (=> start!426742 m!5055499))

(declare-fun m!5055501 () Bool)

(assert (=> start!426742 m!5055501))

(declare-fun m!5055503 () Bool)

(assert (=> b!4395293 m!5055503))

(declare-fun m!5055505 () Bool)

(assert (=> b!4395293 m!5055505))

(declare-fun m!5055507 () Bool)

(assert (=> b!4395293 m!5055507))

(declare-fun m!5055509 () Bool)

(assert (=> b!4395293 m!5055509))

(assert (=> b!4395293 m!5055509))

(declare-fun m!5055511 () Bool)

(assert (=> b!4395293 m!5055511))

(push 1)

(assert (not b!4395290))

(assert (not b!4395298))

(assert tp_is_empty!25671)

(assert tp_is_empty!25669)

(assert (not b!4395293))

(assert (not b!4395294))

(assert (not start!426742))

(assert (not b!4395289))

(assert (not b!4395292))

(assert (not b!4395288))

(assert (not b!4395297))

(assert (not b!4395295))

(assert (not b!4395291))

(assert (not b!4395296))

(assert (not b!4395299))

(assert (not b!4395287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

