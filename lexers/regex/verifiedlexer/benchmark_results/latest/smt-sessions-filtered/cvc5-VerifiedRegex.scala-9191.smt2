; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489040 () Bool)

(assert start!489040)

(declare-fun b!4773614 () Bool)

(declare-fun e!2980081 () Bool)

(declare-fun tp!1356849 () Bool)

(assert (=> b!4773614 (= e!2980081 tp!1356849)))

(declare-fun b!4773612 () Bool)

(declare-fun res!2025179 () Bool)

(declare-fun e!2980082 () Bool)

(assert (=> b!4773612 (=> (not res!2025179) (not e!2980082))))

(declare-datatypes ((K!15242 0))(
  ( (K!15243 (val!20499 Int)) )
))
(declare-datatypes ((V!15488 0))(
  ( (V!15489 (val!20500 Int)) )
))
(declare-datatypes ((tuple2!55972 0))(
  ( (tuple2!55973 (_1!31280 K!15242) (_2!31280 V!15488)) )
))
(declare-datatypes ((List!53841 0))(
  ( (Nil!53717) (Cons!53717 (h!60131 tuple2!55972) (t!361291 List!53841)) )
))
(declare-datatypes ((tuple2!55974 0))(
  ( (tuple2!55975 (_1!31281 (_ BitVec 64)) (_2!31281 List!53841)) )
))
(declare-datatypes ((List!53842 0))(
  ( (Nil!53718) (Cons!53718 (h!60132 tuple2!55974) (t!361292 List!53842)) )
))
(declare-datatypes ((ListLongMap!4903 0))(
  ( (ListLongMap!4904 (toList!6489 List!53842)) )
))
(declare-fun lm!1309 () ListLongMap!4903)

(declare-fun key!2872 () K!15242)

(declare-datatypes ((ListMap!5969 0))(
  ( (ListMap!5970 (toList!6490 List!53841)) )
))
(declare-fun contains!17149 (ListMap!5969 K!15242) Bool)

(declare-fun extractMap!2236 (List!53842) ListMap!5969)

(assert (=> b!4773612 (= res!2025179 (contains!17149 (extractMap!2236 (toList!6489 lm!1309)) key!2872))))

(declare-fun b!4773613 () Bool)

(assert (=> b!4773613 (= e!2980082 (not true))))

(declare-fun lt!1936332 () List!53841)

(declare-datatypes ((Option!12794 0))(
  ( (None!12793) (Some!12793 (v!47934 tuple2!55972)) )
))
(declare-fun isDefined!9940 (Option!12794) Bool)

(declare-fun getPair!709 (List!53841 K!15242) Option!12794)

(assert (=> b!4773613 (isDefined!9940 (getPair!709 lt!1936332 key!2872))))

(declare-fun lambda!225920 () Int)

(declare-fun lt!1936335 () tuple2!55974)

(declare-datatypes ((Unit!138706 0))(
  ( (Unit!138707) )
))
(declare-fun lt!1936333 () Unit!138706)

(declare-fun forallContained!3942 (List!53842 Int tuple2!55974) Unit!138706)

(assert (=> b!4773613 (= lt!1936333 (forallContained!3942 (toList!6489 lm!1309) lambda!225920 lt!1936335))))

(declare-datatypes ((Hashable!6701 0))(
  ( (HashableExt!6700 (__x!32724 Int)) )
))
(declare-fun hashF!980 () Hashable!6701)

(declare-fun lt!1936334 () Unit!138706)

(declare-fun lemmaInGenMapThenGetPairDefined!483 (ListLongMap!4903 K!15242 Hashable!6701) Unit!138706)

(assert (=> b!4773613 (= lt!1936334 (lemmaInGenMapThenGetPairDefined!483 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936328 () Unit!138706)

(assert (=> b!4773613 (= lt!1936328 (forallContained!3942 (toList!6489 lm!1309) lambda!225920 lt!1936335))))

(declare-fun contains!17150 (List!53842 tuple2!55974) Bool)

(assert (=> b!4773613 (contains!17150 (toList!6489 lm!1309) lt!1936335)))

(declare-fun lt!1936329 () (_ BitVec 64))

(assert (=> b!4773613 (= lt!1936335 (tuple2!55975 lt!1936329 lt!1936332))))

(declare-fun lt!1936331 () Unit!138706)

(declare-fun lemmaGetValueImpliesTupleContained!504 (ListLongMap!4903 (_ BitVec 64) List!53841) Unit!138706)

(assert (=> b!4773613 (= lt!1936331 (lemmaGetValueImpliesTupleContained!504 lm!1309 lt!1936329 lt!1936332))))

(declare-fun apply!12764 (ListLongMap!4903 (_ BitVec 64)) List!53841)

(assert (=> b!4773613 (= lt!1936332 (apply!12764 lm!1309 lt!1936329))))

(declare-fun contains!17151 (ListLongMap!4903 (_ BitVec 64)) Bool)

(assert (=> b!4773613 (contains!17151 lm!1309 lt!1936329)))

(declare-fun hash!4676 (Hashable!6701 K!15242) (_ BitVec 64))

(assert (=> b!4773613 (= lt!1936329 (hash!4676 hashF!980 key!2872))))

(declare-fun lt!1936330 () Unit!138706)

(declare-fun lemmaInGenMapThenLongMapContainsHash!913 (ListLongMap!4903 K!15242 Hashable!6701) Unit!138706)

(assert (=> b!4773613 (= lt!1936330 (lemmaInGenMapThenLongMapContainsHash!913 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773611 () Bool)

(declare-fun res!2025178 () Bool)

(assert (=> b!4773611 (=> (not res!2025178) (not e!2980082))))

(declare-fun allKeysSameHashInMap!2106 (ListLongMap!4903 Hashable!6701) Bool)

(assert (=> b!4773611 (= res!2025178 (allKeysSameHashInMap!2106 lm!1309 hashF!980))))

(declare-fun res!2025177 () Bool)

(assert (=> start!489040 (=> (not res!2025177) (not e!2980082))))

(declare-fun forall!11969 (List!53842 Int) Bool)

(assert (=> start!489040 (= res!2025177 (forall!11969 (toList!6489 lm!1309) lambda!225920))))

(assert (=> start!489040 e!2980082))

(declare-fun inv!69269 (ListLongMap!4903) Bool)

(assert (=> start!489040 (and (inv!69269 lm!1309) e!2980081)))

(assert (=> start!489040 true))

(declare-fun tp_is_empty!32781 () Bool)

(assert (=> start!489040 tp_is_empty!32781))

(declare-fun tp_is_empty!32783 () Bool)

(assert (=> start!489040 tp_is_empty!32783))

(assert (= (and start!489040 res!2025177) b!4773611))

(assert (= (and b!4773611 res!2025178) b!4773612))

(assert (= (and b!4773612 res!2025179) b!4773613))

(assert (= start!489040 b!4773614))

(declare-fun m!5747040 () Bool)

(assert (=> b!4773612 m!5747040))

(assert (=> b!4773612 m!5747040))

(declare-fun m!5747042 () Bool)

(assert (=> b!4773612 m!5747042))

(declare-fun m!5747044 () Bool)

(assert (=> b!4773613 m!5747044))

(declare-fun m!5747046 () Bool)

(assert (=> b!4773613 m!5747046))

(declare-fun m!5747048 () Bool)

(assert (=> b!4773613 m!5747048))

(declare-fun m!5747050 () Bool)

(assert (=> b!4773613 m!5747050))

(declare-fun m!5747052 () Bool)

(assert (=> b!4773613 m!5747052))

(declare-fun m!5747054 () Bool)

(assert (=> b!4773613 m!5747054))

(assert (=> b!4773613 m!5747054))

(declare-fun m!5747056 () Bool)

(assert (=> b!4773613 m!5747056))

(declare-fun m!5747058 () Bool)

(assert (=> b!4773613 m!5747058))

(declare-fun m!5747060 () Bool)

(assert (=> b!4773613 m!5747060))

(declare-fun m!5747062 () Bool)

(assert (=> b!4773613 m!5747062))

(assert (=> b!4773613 m!5747050))

(declare-fun m!5747064 () Bool)

(assert (=> b!4773611 m!5747064))

(declare-fun m!5747066 () Bool)

(assert (=> start!489040 m!5747066))

(declare-fun m!5747068 () Bool)

(assert (=> start!489040 m!5747068))

(push 1)

(assert (not start!489040))

(assert (not b!4773612))

(assert (not b!4773613))

(assert tp_is_empty!32783)

(assert (not b!4773611))

(assert (not b!4773614))

(assert tp_is_empty!32781)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

