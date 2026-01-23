; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489032 () Bool)

(assert start!489032)

(declare-fun b!4773559 () Bool)

(declare-fun e!2980051 () Bool)

(assert (=> b!4773559 (= e!2980051 (not true))))

(declare-datatypes ((Unit!138698 0))(
  ( (Unit!138699) )
))
(declare-fun lt!1936236 () Unit!138698)

(declare-datatypes ((K!15232 0))(
  ( (K!15233 (val!20491 Int)) )
))
(declare-datatypes ((V!15478 0))(
  ( (V!15479 (val!20492 Int)) )
))
(declare-datatypes ((tuple2!55956 0))(
  ( (tuple2!55957 (_1!31272 K!15232) (_2!31272 V!15478)) )
))
(declare-datatypes ((List!53833 0))(
  ( (Nil!53709) (Cons!53709 (h!60123 tuple2!55956) (t!361283 List!53833)) )
))
(declare-datatypes ((tuple2!55958 0))(
  ( (tuple2!55959 (_1!31273 (_ BitVec 64)) (_2!31273 List!53833)) )
))
(declare-fun lt!1936237 () tuple2!55958)

(declare-datatypes ((List!53834 0))(
  ( (Nil!53710) (Cons!53710 (h!60124 tuple2!55958) (t!361284 List!53834)) )
))
(declare-datatypes ((ListLongMap!4895 0))(
  ( (ListLongMap!4896 (toList!6481 List!53834)) )
))
(declare-fun lm!1309 () ListLongMap!4895)

(declare-fun lambda!225890 () Int)

(declare-fun forallContained!3938 (List!53834 Int tuple2!55958) Unit!138698)

(assert (=> b!4773559 (= lt!1936236 (forallContained!3938 (toList!6481 lm!1309) lambda!225890 lt!1936237))))

(declare-fun contains!17137 (List!53834 tuple2!55958) Bool)

(assert (=> b!4773559 (contains!17137 (toList!6481 lm!1309) lt!1936237)))

(declare-fun lt!1936235 () (_ BitVec 64))

(declare-fun lt!1936238 () List!53833)

(assert (=> b!4773559 (= lt!1936237 (tuple2!55959 lt!1936235 lt!1936238))))

(declare-fun lt!1936234 () Unit!138698)

(declare-fun lemmaGetValueImpliesTupleContained!500 (ListLongMap!4895 (_ BitVec 64) List!53833) Unit!138698)

(assert (=> b!4773559 (= lt!1936234 (lemmaGetValueImpliesTupleContained!500 lm!1309 lt!1936235 lt!1936238))))

(declare-fun apply!12760 (ListLongMap!4895 (_ BitVec 64)) List!53833)

(assert (=> b!4773559 (= lt!1936238 (apply!12760 lm!1309 lt!1936235))))

(declare-fun contains!17138 (ListLongMap!4895 (_ BitVec 64)) Bool)

(assert (=> b!4773559 (contains!17138 lm!1309 lt!1936235)))

(declare-datatypes ((Hashable!6697 0))(
  ( (HashableExt!6696 (__x!32720 Int)) )
))
(declare-fun hashF!980 () Hashable!6697)

(declare-fun key!2872 () K!15232)

(declare-fun hash!4672 (Hashable!6697 K!15232) (_ BitVec 64))

(assert (=> b!4773559 (= lt!1936235 (hash!4672 hashF!980 key!2872))))

(declare-fun lt!1936239 () Unit!138698)

(declare-fun lemmaInGenMapThenLongMapContainsHash!909 (ListLongMap!4895 K!15232 Hashable!6697) Unit!138698)

(assert (=> b!4773559 (= lt!1936239 (lemmaInGenMapThenLongMapContainsHash!909 lm!1309 key!2872 hashF!980))))

(declare-fun res!2025135 () Bool)

(assert (=> start!489032 (=> (not res!2025135) (not e!2980051))))

(declare-fun forall!11965 (List!53834 Int) Bool)

(assert (=> start!489032 (= res!2025135 (forall!11965 (toList!6481 lm!1309) lambda!225890))))

(assert (=> start!489032 e!2980051))

(declare-fun e!2980052 () Bool)

(declare-fun inv!69259 (ListLongMap!4895) Bool)

(assert (=> start!489032 (and (inv!69259 lm!1309) e!2980052)))

(assert (=> start!489032 true))

(declare-fun tp_is_empty!32769 () Bool)

(assert (=> start!489032 tp_is_empty!32769))

(declare-fun b!4773560 () Bool)

(declare-fun tp!1356837 () Bool)

(assert (=> b!4773560 (= e!2980052 tp!1356837)))

(declare-fun b!4773557 () Bool)

(declare-fun res!2025136 () Bool)

(assert (=> b!4773557 (=> (not res!2025136) (not e!2980051))))

(declare-fun allKeysSameHashInMap!2102 (ListLongMap!4895 Hashable!6697) Bool)

(assert (=> b!4773557 (= res!2025136 (allKeysSameHashInMap!2102 lm!1309 hashF!980))))

(declare-fun b!4773558 () Bool)

(declare-fun res!2025137 () Bool)

(assert (=> b!4773558 (=> (not res!2025137) (not e!2980051))))

(declare-datatypes ((ListMap!5961 0))(
  ( (ListMap!5962 (toList!6482 List!53833)) )
))
(declare-fun contains!17139 (ListMap!5961 K!15232) Bool)

(declare-fun extractMap!2232 (List!53834) ListMap!5961)

(assert (=> b!4773558 (= res!2025137 (contains!17139 (extractMap!2232 (toList!6481 lm!1309)) key!2872))))

(assert (= (and start!489032 res!2025135) b!4773557))

(assert (= (and b!4773557 res!2025136) b!4773558))

(assert (= (and b!4773558 res!2025137) b!4773559))

(assert (= start!489032 b!4773560))

(declare-fun m!5746928 () Bool)

(assert (=> b!4773559 m!5746928))

(declare-fun m!5746930 () Bool)

(assert (=> b!4773559 m!5746930))

(declare-fun m!5746932 () Bool)

(assert (=> b!4773559 m!5746932))

(declare-fun m!5746934 () Bool)

(assert (=> b!4773559 m!5746934))

(declare-fun m!5746936 () Bool)

(assert (=> b!4773559 m!5746936))

(declare-fun m!5746938 () Bool)

(assert (=> b!4773559 m!5746938))

(declare-fun m!5746940 () Bool)

(assert (=> b!4773559 m!5746940))

(declare-fun m!5746942 () Bool)

(assert (=> start!489032 m!5746942))

(declare-fun m!5746944 () Bool)

(assert (=> start!489032 m!5746944))

(declare-fun m!5746946 () Bool)

(assert (=> b!4773557 m!5746946))

(declare-fun m!5746948 () Bool)

(assert (=> b!4773558 m!5746948))

(assert (=> b!4773558 m!5746948))

(declare-fun m!5746950 () Bool)

(assert (=> b!4773558 m!5746950))

(push 1)

(assert (not b!4773558))

(assert (not b!4773559))

(assert (not b!4773560))

(assert (not start!489032))

(assert (not b!4773557))

(assert tp_is_empty!32769)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

