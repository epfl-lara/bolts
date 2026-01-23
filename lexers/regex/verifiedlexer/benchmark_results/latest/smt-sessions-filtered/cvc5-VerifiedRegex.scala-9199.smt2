; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489072 () Bool)

(assert start!489072)

(declare-fun b!4773861 () Bool)

(declare-fun e!2980229 () Bool)

(declare-fun tp!1356897 () Bool)

(assert (=> b!4773861 (= e!2980229 tp!1356897)))

(declare-fun b!4773862 () Bool)

(declare-fun e!2980231 () Bool)

(assert (=> b!4773862 (= e!2980231 true)))

(declare-datatypes ((Hashable!6717 0))(
  ( (HashableExt!6716 (__x!32740 Int)) )
))
(declare-fun hashF!980 () Hashable!6717)

(declare-datatypes ((K!15282 0))(
  ( (K!15283 (val!20531 Int)) )
))
(declare-fun key!2872 () K!15282)

(declare-datatypes ((V!15528 0))(
  ( (V!15529 (val!20532 Int)) )
))
(declare-datatypes ((tuple2!56036 0))(
  ( (tuple2!56037 (_1!31312 K!15282) (_2!31312 V!15528)) )
))
(declare-datatypes ((List!53873 0))(
  ( (Nil!53749) (Cons!53749 (h!60163 tuple2!56036) (t!361323 List!53873)) )
))
(declare-datatypes ((tuple2!56038 0))(
  ( (tuple2!56039 (_1!31313 (_ BitVec 64)) (_2!31313 List!53873)) )
))
(declare-datatypes ((List!53874 0))(
  ( (Nil!53750) (Cons!53750 (h!60164 tuple2!56038) (t!361324 List!53874)) )
))
(declare-datatypes ((ListLongMap!4935 0))(
  ( (ListLongMap!4936 (toList!6521 List!53874)) )
))
(declare-fun lm!1309 () ListLongMap!4935)

(declare-datatypes ((Unit!138738 0))(
  ( (Unit!138739) )
))
(declare-fun lt!1936842 () Unit!138738)

(declare-fun lemmaInGenericMapThenInLongMap!239 (ListLongMap!4935 K!15282 Hashable!6717) Unit!138738)

(assert (=> b!4773862 (= lt!1936842 (lemmaInGenericMapThenInLongMap!239 lm!1309 key!2872 hashF!980))))

(declare-fun res!2025383 () Bool)

(declare-fun e!2980230 () Bool)

(assert (=> start!489072 (=> (not res!2025383) (not e!2980230))))

(declare-fun lambda!226062 () Int)

(declare-fun forall!11985 (List!53874 Int) Bool)

(assert (=> start!489072 (= res!2025383 (forall!11985 (toList!6521 lm!1309) lambda!226062))))

(assert (=> start!489072 e!2980230))

(declare-fun inv!69309 (ListLongMap!4935) Bool)

(assert (=> start!489072 (and (inv!69309 lm!1309) e!2980229)))

(assert (=> start!489072 true))

(declare-fun tp_is_empty!32845 () Bool)

(assert (=> start!489072 tp_is_empty!32845))

(declare-fun tp_is_empty!32847 () Bool)

(assert (=> start!489072 tp_is_empty!32847))

(declare-fun b!4773863 () Bool)

(declare-fun res!2025382 () Bool)

(assert (=> b!4773863 (=> (not res!2025382) (not e!2980230))))

(declare-fun allKeysSameHashInMap!2122 (ListLongMap!4935 Hashable!6717) Bool)

(assert (=> b!4773863 (= res!2025382 (allKeysSameHashInMap!2122 lm!1309 hashF!980))))

(declare-fun b!4773864 () Bool)

(declare-fun e!2980232 () Bool)

(assert (=> b!4773864 (= e!2980232 e!2980231)))

(declare-fun res!2025380 () Bool)

(assert (=> b!4773864 (=> res!2025380 e!2980231)))

(assert (=> b!4773864 (= res!2025380 (not (forall!11985 (toList!6521 lm!1309) lambda!226062)))))

(declare-fun v!9615 () V!15528)

(declare-fun getValue!31 (List!53874 K!15282) V!15528)

(assert (=> b!4773864 (= (getValue!31 (toList!6521 lm!1309) key!2872) v!9615)))

(declare-fun lt!1936840 () Unit!138738)

(declare-fun lemmaGetValueEquivToGetPair!31 (ListLongMap!4935 K!15282 V!15528 Hashable!6717) Unit!138738)

(assert (=> b!4773864 (= lt!1936840 (lemmaGetValueEquivToGetPair!31 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!373 (List!53874 K!15282) Bool)

(assert (=> b!4773864 (containsKeyBiggerList!373 (toList!6521 lm!1309) key!2872)))

(declare-fun lt!1936836 () Unit!138738)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!231 (ListLongMap!4935 K!15282 Hashable!6717) Unit!138738)

(assert (=> b!4773864 (= lt!1936836 (lemmaInLongMapThenContainsKeyBiggerList!231 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773865 () Bool)

(declare-fun res!2025381 () Bool)

(assert (=> b!4773865 (=> (not res!2025381) (not e!2980230))))

(declare-datatypes ((ListMap!6001 0))(
  ( (ListMap!6002 (toList!6522 List!53873)) )
))
(declare-fun contains!17197 (ListMap!6001 K!15282) Bool)

(declare-fun extractMap!2252 (List!53874) ListMap!6001)

(assert (=> b!4773865 (= res!2025381 (contains!17197 (extractMap!2252 (toList!6521 lm!1309)) key!2872))))

(declare-fun b!4773866 () Bool)

(assert (=> b!4773866 (= e!2980230 (not e!2980232))))

(declare-fun res!2025379 () Bool)

(assert (=> b!4773866 (=> res!2025379 e!2980232)))

(declare-datatypes ((Option!12810 0))(
  ( (None!12809) (Some!12809 (v!47950 tuple2!56036)) )
))
(declare-fun lt!1936837 () Option!12810)

(declare-fun get!18205 (Option!12810) tuple2!56036)

(assert (=> b!4773866 (= res!2025379 (not (= (_2!31312 (get!18205 lt!1936837)) v!9615)))))

(declare-fun isDefined!9956 (Option!12810) Bool)

(assert (=> b!4773866 (isDefined!9956 lt!1936837)))

(declare-fun lt!1936834 () List!53873)

(declare-fun getPair!725 (List!53873 K!15282) Option!12810)

(assert (=> b!4773866 (= lt!1936837 (getPair!725 lt!1936834 key!2872))))

(declare-fun lt!1936845 () Unit!138738)

(declare-fun lt!1936835 () tuple2!56038)

(declare-fun forallContained!3958 (List!53874 Int tuple2!56038) Unit!138738)

(assert (=> b!4773866 (= lt!1936845 (forallContained!3958 (toList!6521 lm!1309) lambda!226062 lt!1936835))))

(declare-fun lt!1936844 () Unit!138738)

(declare-fun lemmaInGenMapThenGetPairDefined!499 (ListLongMap!4935 K!15282 Hashable!6717) Unit!138738)

(assert (=> b!4773866 (= lt!1936844 (lemmaInGenMapThenGetPairDefined!499 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936838 () Unit!138738)

(assert (=> b!4773866 (= lt!1936838 (forallContained!3958 (toList!6521 lm!1309) lambda!226062 lt!1936835))))

(declare-fun contains!17198 (List!53874 tuple2!56038) Bool)

(assert (=> b!4773866 (contains!17198 (toList!6521 lm!1309) lt!1936835)))

(declare-fun lt!1936843 () (_ BitVec 64))

(assert (=> b!4773866 (= lt!1936835 (tuple2!56039 lt!1936843 lt!1936834))))

(declare-fun lt!1936839 () Unit!138738)

(declare-fun lemmaGetValueImpliesTupleContained!520 (ListLongMap!4935 (_ BitVec 64) List!53873) Unit!138738)

(assert (=> b!4773866 (= lt!1936839 (lemmaGetValueImpliesTupleContained!520 lm!1309 lt!1936843 lt!1936834))))

(declare-fun apply!12780 (ListLongMap!4935 (_ BitVec 64)) List!53873)

(assert (=> b!4773866 (= lt!1936834 (apply!12780 lm!1309 lt!1936843))))

(declare-fun contains!17199 (ListLongMap!4935 (_ BitVec 64)) Bool)

(assert (=> b!4773866 (contains!17199 lm!1309 lt!1936843)))

(declare-fun hash!4692 (Hashable!6717 K!15282) (_ BitVec 64))

(assert (=> b!4773866 (= lt!1936843 (hash!4692 hashF!980 key!2872))))

(declare-fun lt!1936841 () Unit!138738)

(declare-fun lemmaInGenMapThenLongMapContainsHash!929 (ListLongMap!4935 K!15282 Hashable!6717) Unit!138738)

(assert (=> b!4773866 (= lt!1936841 (lemmaInGenMapThenLongMapContainsHash!929 lm!1309 key!2872 hashF!980))))

(assert (= (and start!489072 res!2025383) b!4773863))

(assert (= (and b!4773863 res!2025382) b!4773865))

(assert (= (and b!4773865 res!2025381) b!4773866))

(assert (= (and b!4773866 (not res!2025379)) b!4773864))

(assert (= (and b!4773864 (not res!2025380)) b!4773862))

(assert (= start!489072 b!4773861))

(declare-fun m!5747616 () Bool)

(assert (=> b!4773862 m!5747616))

(declare-fun m!5747618 () Bool)

(assert (=> b!4773863 m!5747618))

(declare-fun m!5747620 () Bool)

(assert (=> start!489072 m!5747620))

(declare-fun m!5747622 () Bool)

(assert (=> start!489072 m!5747622))

(declare-fun m!5747624 () Bool)

(assert (=> b!4773865 m!5747624))

(assert (=> b!4773865 m!5747624))

(declare-fun m!5747626 () Bool)

(assert (=> b!4773865 m!5747626))

(declare-fun m!5747628 () Bool)

(assert (=> b!4773864 m!5747628))

(assert (=> b!4773864 m!5747620))

(declare-fun m!5747630 () Bool)

(assert (=> b!4773864 m!5747630))

(declare-fun m!5747632 () Bool)

(assert (=> b!4773864 m!5747632))

(declare-fun m!5747634 () Bool)

(assert (=> b!4773864 m!5747634))

(declare-fun m!5747636 () Bool)

(assert (=> b!4773866 m!5747636))

(declare-fun m!5747638 () Bool)

(assert (=> b!4773866 m!5747638))

(declare-fun m!5747640 () Bool)

(assert (=> b!4773866 m!5747640))

(declare-fun m!5747642 () Bool)

(assert (=> b!4773866 m!5747642))

(declare-fun m!5747644 () Bool)

(assert (=> b!4773866 m!5747644))

(declare-fun m!5747646 () Bool)

(assert (=> b!4773866 m!5747646))

(declare-fun m!5747648 () Bool)

(assert (=> b!4773866 m!5747648))

(declare-fun m!5747650 () Bool)

(assert (=> b!4773866 m!5747650))

(declare-fun m!5747652 () Bool)

(assert (=> b!4773866 m!5747652))

(declare-fun m!5747654 () Bool)

(assert (=> b!4773866 m!5747654))

(declare-fun m!5747656 () Bool)

(assert (=> b!4773866 m!5747656))

(assert (=> b!4773866 m!5747648))

(push 1)

(assert (not b!4773862))

(assert (not b!4773865))

(assert (not b!4773864))

(assert (not b!4773866))

(assert tp_is_empty!32847)

(assert (not start!489072))

(assert tp_is_empty!32845)

(assert (not b!4773861))

(assert (not b!4773863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

