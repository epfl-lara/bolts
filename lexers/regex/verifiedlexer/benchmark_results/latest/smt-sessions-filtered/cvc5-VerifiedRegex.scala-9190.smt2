; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489036 () Bool)

(assert start!489036)

(declare-fun b!4773583 () Bool)

(declare-fun e!2980065 () Bool)

(declare-fun e!2980067 () Bool)

(assert (=> b!4773583 (= e!2980065 (not e!2980067))))

(declare-fun res!2025158 () Bool)

(assert (=> b!4773583 (=> res!2025158 e!2980067)))

(declare-datatypes ((K!15237 0))(
  ( (K!15238 (val!20495 Int)) )
))
(declare-datatypes ((V!15483 0))(
  ( (V!15484 (val!20496 Int)) )
))
(declare-datatypes ((tuple2!55964 0))(
  ( (tuple2!55965 (_1!31276 K!15237) (_2!31276 V!15483)) )
))
(declare-datatypes ((Option!12792 0))(
  ( (None!12791) (Some!12791 (v!47932 tuple2!55964)) )
))
(declare-fun lt!1936280 () Option!12792)

(declare-fun v!9615 () V!15483)

(declare-fun get!18180 (Option!12792) tuple2!55964)

(assert (=> b!4773583 (= res!2025158 (not (= (_2!31276 (get!18180 lt!1936280)) v!9615)))))

(declare-fun isDefined!9938 (Option!12792) Bool)

(assert (=> b!4773583 (isDefined!9938 lt!1936280)))

(declare-datatypes ((List!53837 0))(
  ( (Nil!53713) (Cons!53713 (h!60127 tuple2!55964) (t!361287 List!53837)) )
))
(declare-fun lt!1936282 () List!53837)

(declare-fun key!2872 () K!15237)

(declare-fun getPair!707 (List!53837 K!15237) Option!12792)

(assert (=> b!4773583 (= lt!1936280 (getPair!707 lt!1936282 key!2872))))

(declare-datatypes ((Unit!138702 0))(
  ( (Unit!138703) )
))
(declare-fun lt!1936284 () Unit!138702)

(declare-datatypes ((tuple2!55966 0))(
  ( (tuple2!55967 (_1!31277 (_ BitVec 64)) (_2!31277 List!53837)) )
))
(declare-fun lt!1936277 () tuple2!55966)

(declare-fun lambda!225904 () Int)

(declare-datatypes ((List!53838 0))(
  ( (Nil!53714) (Cons!53714 (h!60128 tuple2!55966) (t!361288 List!53838)) )
))
(declare-datatypes ((ListLongMap!4899 0))(
  ( (ListLongMap!4900 (toList!6485 List!53838)) )
))
(declare-fun lm!1309 () ListLongMap!4899)

(declare-fun forallContained!3940 (List!53838 Int tuple2!55966) Unit!138702)

(assert (=> b!4773583 (= lt!1936284 (forallContained!3940 (toList!6485 lm!1309) lambda!225904 lt!1936277))))

(declare-datatypes ((Hashable!6699 0))(
  ( (HashableExt!6698 (__x!32722 Int)) )
))
(declare-fun hashF!980 () Hashable!6699)

(declare-fun lt!1936276 () Unit!138702)

(declare-fun lemmaInGenMapThenGetPairDefined!481 (ListLongMap!4899 K!15237 Hashable!6699) Unit!138702)

(assert (=> b!4773583 (= lt!1936276 (lemmaInGenMapThenGetPairDefined!481 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936281 () Unit!138702)

(assert (=> b!4773583 (= lt!1936281 (forallContained!3940 (toList!6485 lm!1309) lambda!225904 lt!1936277))))

(declare-fun contains!17143 (List!53838 tuple2!55966) Bool)

(assert (=> b!4773583 (contains!17143 (toList!6485 lm!1309) lt!1936277)))

(declare-fun lt!1936279 () (_ BitVec 64))

(assert (=> b!4773583 (= lt!1936277 (tuple2!55967 lt!1936279 lt!1936282))))

(declare-fun lt!1936283 () Unit!138702)

(declare-fun lemmaGetValueImpliesTupleContained!502 (ListLongMap!4899 (_ BitVec 64) List!53837) Unit!138702)

(assert (=> b!4773583 (= lt!1936283 (lemmaGetValueImpliesTupleContained!502 lm!1309 lt!1936279 lt!1936282))))

(declare-fun apply!12762 (ListLongMap!4899 (_ BitVec 64)) List!53837)

(assert (=> b!4773583 (= lt!1936282 (apply!12762 lm!1309 lt!1936279))))

(declare-fun contains!17144 (ListLongMap!4899 (_ BitVec 64)) Bool)

(assert (=> b!4773583 (contains!17144 lm!1309 lt!1936279)))

(declare-fun hash!4674 (Hashable!6699 K!15237) (_ BitVec 64))

(assert (=> b!4773583 (= lt!1936279 (hash!4674 hashF!980 key!2872))))

(declare-fun lt!1936278 () Unit!138702)

(declare-fun lemmaInGenMapThenLongMapContainsHash!911 (ListLongMap!4899 K!15237 Hashable!6699) Unit!138702)

(assert (=> b!4773583 (= lt!1936278 (lemmaInGenMapThenLongMapContainsHash!911 lm!1309 key!2872 hashF!980))))

(declare-fun res!2025156 () Bool)

(assert (=> start!489036 (=> (not res!2025156) (not e!2980065))))

(declare-fun forall!11967 (List!53838 Int) Bool)

(assert (=> start!489036 (= res!2025156 (forall!11967 (toList!6485 lm!1309) lambda!225904))))

(assert (=> start!489036 e!2980065))

(declare-fun e!2980066 () Bool)

(declare-fun inv!69264 (ListLongMap!4899) Bool)

(assert (=> start!489036 (and (inv!69264 lm!1309) e!2980066)))

(assert (=> start!489036 true))

(declare-fun tp_is_empty!32773 () Bool)

(assert (=> start!489036 tp_is_empty!32773))

(declare-fun tp_is_empty!32775 () Bool)

(assert (=> start!489036 tp_is_empty!32775))

(declare-fun b!4773584 () Bool)

(declare-fun res!2025157 () Bool)

(assert (=> b!4773584 (=> (not res!2025157) (not e!2980065))))

(declare-datatypes ((ListMap!5965 0))(
  ( (ListMap!5966 (toList!6486 List!53837)) )
))
(declare-fun contains!17145 (ListMap!5965 K!15237) Bool)

(declare-fun extractMap!2234 (List!53838) ListMap!5965)

(assert (=> b!4773584 (= res!2025157 (contains!17145 (extractMap!2234 (toList!6485 lm!1309)) key!2872))))

(declare-fun b!4773585 () Bool)

(declare-fun tp!1356843 () Bool)

(assert (=> b!4773585 (= e!2980066 tp!1356843)))

(declare-fun b!4773586 () Bool)

(assert (=> b!4773586 (= e!2980067 (forall!11967 (toList!6485 lm!1309) lambda!225904))))

(declare-fun b!4773587 () Bool)

(declare-fun res!2025155 () Bool)

(assert (=> b!4773587 (=> (not res!2025155) (not e!2980065))))

(declare-fun allKeysSameHashInMap!2104 (ListLongMap!4899 Hashable!6699) Bool)

(assert (=> b!4773587 (= res!2025155 (allKeysSameHashInMap!2104 lm!1309 hashF!980))))

(assert (= (and start!489036 res!2025156) b!4773587))

(assert (= (and b!4773587 res!2025155) b!4773584))

(assert (= (and b!4773584 res!2025157) b!4773583))

(assert (= (and b!4773583 (not res!2025158)) b!4773586))

(assert (= start!489036 b!4773585))

(declare-fun m!5746976 () Bool)

(assert (=> start!489036 m!5746976))

(declare-fun m!5746978 () Bool)

(assert (=> start!489036 m!5746978))

(declare-fun m!5746980 () Bool)

(assert (=> b!4773583 m!5746980))

(declare-fun m!5746982 () Bool)

(assert (=> b!4773583 m!5746982))

(declare-fun m!5746984 () Bool)

(assert (=> b!4773583 m!5746984))

(declare-fun m!5746986 () Bool)

(assert (=> b!4773583 m!5746986))

(declare-fun m!5746988 () Bool)

(assert (=> b!4773583 m!5746988))

(declare-fun m!5746990 () Bool)

(assert (=> b!4773583 m!5746990))

(assert (=> b!4773583 m!5746980))

(declare-fun m!5746992 () Bool)

(assert (=> b!4773583 m!5746992))

(declare-fun m!5746994 () Bool)

(assert (=> b!4773583 m!5746994))

(declare-fun m!5746996 () Bool)

(assert (=> b!4773583 m!5746996))

(declare-fun m!5746998 () Bool)

(assert (=> b!4773583 m!5746998))

(declare-fun m!5747000 () Bool)

(assert (=> b!4773583 m!5747000))

(assert (=> b!4773586 m!5746976))

(declare-fun m!5747002 () Bool)

(assert (=> b!4773584 m!5747002))

(assert (=> b!4773584 m!5747002))

(declare-fun m!5747004 () Bool)

(assert (=> b!4773584 m!5747004))

(declare-fun m!5747006 () Bool)

(assert (=> b!4773587 m!5747006))

(push 1)

(assert (not b!4773585))

(assert (not b!4773586))

(assert (not b!4773584))

(assert (not b!4773583))

(assert tp_is_empty!32775)

(assert (not start!489036))

(assert (not b!4773587))

(assert tp_is_empty!32773)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

