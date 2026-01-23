; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488462 () Bool)

(assert start!488462)

(declare-fun b!4771196 () Bool)

(declare-fun res!2023620 () Bool)

(declare-fun e!2978413 () Bool)

(assert (=> b!4771196 (=> (not res!2023620) (not e!2978413))))

(declare-datatypes ((K!15102 0))(
  ( (K!15103 (val!20387 Int)) )
))
(declare-datatypes ((V!15348 0))(
  ( (V!15349 (val!20388 Int)) )
))
(declare-datatypes ((tuple2!55748 0))(
  ( (tuple2!55749 (_1!31168 K!15102) (_2!31168 V!15348)) )
))
(declare-datatypes ((List!53722 0))(
  ( (Nil!53598) (Cons!53598 (h!60010 tuple2!55748) (t!361172 List!53722)) )
))
(declare-datatypes ((tuple2!55750 0))(
  ( (tuple2!55751 (_1!31169 (_ BitVec 64)) (_2!31169 List!53722)) )
))
(declare-datatypes ((List!53723 0))(
  ( (Nil!53599) (Cons!53599 (h!60011 tuple2!55750) (t!361173 List!53723)) )
))
(declare-datatypes ((ListLongMap!4791 0))(
  ( (ListLongMap!4792 (toList!6377 List!53723)) )
))
(declare-fun lm!1309 () ListLongMap!4791)

(declare-fun key!2872 () K!15102)

(declare-datatypes ((ListMap!5857 0))(
  ( (ListMap!5858 (toList!6378 List!53722)) )
))
(declare-fun contains!16981 (ListMap!5857 K!15102) Bool)

(declare-fun extractMap!2180 (List!53723) ListMap!5857)

(assert (=> b!4771196 (= res!2023620 (contains!16981 (extractMap!2180 (toList!6377 lm!1309)) key!2872))))

(declare-fun b!4771197 () Bool)

(assert (=> b!4771197 (= e!2978413 (not true))))

(declare-fun lt!1933502 () List!53722)

(declare-datatypes ((Option!12738 0))(
  ( (None!12737) (Some!12737 (v!47860 tuple2!55748)) )
))
(declare-fun isDefined!9884 (Option!12738) Bool)

(declare-fun getPair!665 (List!53722 K!15102) Option!12738)

(assert (=> b!4771197 (isDefined!9884 (getPair!665 lt!1933502 key!2872))))

(declare-fun lt!1933503 () tuple2!55750)

(declare-fun lambda!225033 () Int)

(declare-datatypes ((Unit!138491 0))(
  ( (Unit!138492) )
))
(declare-fun lt!1933497 () Unit!138491)

(declare-fun forallContained!3890 (List!53723 Int tuple2!55750) Unit!138491)

(assert (=> b!4771197 (= lt!1933497 (forallContained!3890 (toList!6377 lm!1309) lambda!225033 lt!1933503))))

(declare-datatypes ((Hashable!6645 0))(
  ( (HashableExt!6644 (__x!32668 Int)) )
))
(declare-fun hashF!980 () Hashable!6645)

(declare-fun lt!1933501 () Unit!138491)

(declare-fun lemmaInGenMapThenGetPairDefined!439 (ListLongMap!4791 K!15102 Hashable!6645) Unit!138491)

(assert (=> b!4771197 (= lt!1933501 (lemmaInGenMapThenGetPairDefined!439 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1933498 () Unit!138491)

(assert (=> b!4771197 (= lt!1933498 (forallContained!3890 (toList!6377 lm!1309) lambda!225033 lt!1933503))))

(declare-fun contains!16982 (List!53723 tuple2!55750) Bool)

(assert (=> b!4771197 (contains!16982 (toList!6377 lm!1309) lt!1933503)))

(declare-fun lt!1933499 () (_ BitVec 64))

(assert (=> b!4771197 (= lt!1933503 (tuple2!55751 lt!1933499 lt!1933502))))

(declare-fun lt!1933496 () Unit!138491)

(declare-fun lemmaGetValueImpliesTupleContained!456 (ListLongMap!4791 (_ BitVec 64) List!53722) Unit!138491)

(assert (=> b!4771197 (= lt!1933496 (lemmaGetValueImpliesTupleContained!456 lm!1309 lt!1933499 lt!1933502))))

(declare-fun apply!12690 (ListLongMap!4791 (_ BitVec 64)) List!53722)

(assert (=> b!4771197 (= lt!1933502 (apply!12690 lm!1309 lt!1933499))))

(declare-fun contains!16983 (ListLongMap!4791 (_ BitVec 64)) Bool)

(assert (=> b!4771197 (contains!16983 lm!1309 lt!1933499)))

(declare-fun hash!4619 (Hashable!6645 K!15102) (_ BitVec 64))

(assert (=> b!4771197 (= lt!1933499 (hash!4619 hashF!980 key!2872))))

(declare-fun lt!1933500 () Unit!138491)

(declare-fun lemmaInGenMapThenLongMapContainsHash!861 (ListLongMap!4791 K!15102 Hashable!6645) Unit!138491)

(assert (=> b!4771197 (= lt!1933500 (lemmaInGenMapThenLongMapContainsHash!861 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771198 () Bool)

(declare-fun e!2978414 () Bool)

(declare-fun tp!1356615 () Bool)

(assert (=> b!4771198 (= e!2978414 tp!1356615)))

(declare-fun res!2023619 () Bool)

(assert (=> start!488462 (=> (not res!2023619) (not e!2978413))))

(declare-fun forall!11909 (List!53723 Int) Bool)

(assert (=> start!488462 (= res!2023619 (forall!11909 (toList!6377 lm!1309) lambda!225033))))

(assert (=> start!488462 e!2978413))

(declare-fun inv!69129 (ListLongMap!4791) Bool)

(assert (=> start!488462 (and (inv!69129 lm!1309) e!2978414)))

(assert (=> start!488462 true))

(declare-fun tp_is_empty!32585 () Bool)

(assert (=> start!488462 tp_is_empty!32585))

(declare-fun b!4771195 () Bool)

(declare-fun res!2023621 () Bool)

(assert (=> b!4771195 (=> (not res!2023621) (not e!2978413))))

(declare-fun allKeysSameHashInMap!2050 (ListLongMap!4791 Hashable!6645) Bool)

(assert (=> b!4771195 (= res!2023621 (allKeysSameHashInMap!2050 lm!1309 hashF!980))))

(assert (= (and start!488462 res!2023619) b!4771195))

(assert (= (and b!4771195 res!2023621) b!4771196))

(assert (= (and b!4771196 res!2023620) b!4771197))

(assert (= start!488462 b!4771198))

(declare-fun m!5743078 () Bool)

(assert (=> b!4771196 m!5743078))

(assert (=> b!4771196 m!5743078))

(declare-fun m!5743080 () Bool)

(assert (=> b!4771196 m!5743080))

(declare-fun m!5743082 () Bool)

(assert (=> b!4771197 m!5743082))

(declare-fun m!5743084 () Bool)

(assert (=> b!4771197 m!5743084))

(declare-fun m!5743086 () Bool)

(assert (=> b!4771197 m!5743086))

(declare-fun m!5743088 () Bool)

(assert (=> b!4771197 m!5743088))

(declare-fun m!5743090 () Bool)

(assert (=> b!4771197 m!5743090))

(declare-fun m!5743092 () Bool)

(assert (=> b!4771197 m!5743092))

(declare-fun m!5743094 () Bool)

(assert (=> b!4771197 m!5743094))

(declare-fun m!5743096 () Bool)

(assert (=> b!4771197 m!5743096))

(declare-fun m!5743098 () Bool)

(assert (=> b!4771197 m!5743098))

(declare-fun m!5743100 () Bool)

(assert (=> b!4771197 m!5743100))

(assert (=> b!4771197 m!5743100))

(assert (=> b!4771197 m!5743092))

(declare-fun m!5743102 () Bool)

(assert (=> start!488462 m!5743102))

(declare-fun m!5743104 () Bool)

(assert (=> start!488462 m!5743104))

(declare-fun m!5743106 () Bool)

(assert (=> b!4771195 m!5743106))

(push 1)

(assert (not b!4771197))

(assert (not b!4771195))

(assert tp_is_empty!32585)

(assert (not b!4771198))

(assert (not b!4771196))

(assert (not start!488462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

