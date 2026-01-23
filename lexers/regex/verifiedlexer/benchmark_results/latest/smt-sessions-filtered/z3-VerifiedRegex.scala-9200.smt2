; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489078 () Bool)

(assert start!489078)

(declare-fun res!2025428 () Bool)

(declare-fun e!2980271 () Bool)

(assert (=> start!489078 (=> (not res!2025428) (not e!2980271))))

(declare-datatypes ((K!15289 0))(
  ( (K!15290 (val!20537 Int)) )
))
(declare-datatypes ((V!15535 0))(
  ( (V!15536 (val!20538 Int)) )
))
(declare-datatypes ((tuple2!56048 0))(
  ( (tuple2!56049 (_1!31318 K!15289) (_2!31318 V!15535)) )
))
(declare-datatypes ((List!53879 0))(
  ( (Nil!53755) (Cons!53755 (h!60169 tuple2!56048) (t!361329 List!53879)) )
))
(declare-datatypes ((tuple2!56050 0))(
  ( (tuple2!56051 (_1!31319 (_ BitVec 64)) (_2!31319 List!53879)) )
))
(declare-datatypes ((List!53880 0))(
  ( (Nil!53756) (Cons!53756 (h!60170 tuple2!56050) (t!361330 List!53880)) )
))
(declare-datatypes ((ListLongMap!4941 0))(
  ( (ListLongMap!4942 (toList!6527 List!53880)) )
))
(declare-fun lm!1309 () ListLongMap!4941)

(declare-fun lambda!226089 () Int)

(declare-fun forall!11988 (List!53880 Int) Bool)

(assert (=> start!489078 (= res!2025428 (forall!11988 (toList!6527 lm!1309) lambda!226089))))

(assert (=> start!489078 e!2980271))

(declare-fun e!2980270 () Bool)

(declare-fun inv!69315 (ListLongMap!4941) Bool)

(assert (=> start!489078 (and (inv!69315 lm!1309) e!2980270)))

(assert (=> start!489078 true))

(declare-fun tp_is_empty!32857 () Bool)

(assert (=> start!489078 tp_is_empty!32857))

(declare-fun tp_is_empty!32859 () Bool)

(assert (=> start!489078 tp_is_empty!32859))

(declare-fun b!4773915 () Bool)

(declare-fun e!2980274 () Bool)

(declare-fun e!2980272 () Bool)

(assert (=> b!4773915 (= e!2980274 (not e!2980272))))

(declare-fun res!2025424 () Bool)

(assert (=> b!4773915 (=> res!2025424 e!2980272)))

(declare-datatypes ((Option!12813 0))(
  ( (None!12812) (Some!12812 (v!47953 tuple2!56048)) )
))
(declare-fun lt!1936962 () Option!12813)

(declare-fun v!9615 () V!15535)

(declare-fun get!18209 (Option!12813) tuple2!56048)

(assert (=> b!4773915 (= res!2025424 (not (= (_2!31318 (get!18209 lt!1936962)) v!9615)))))

(declare-fun isDefined!9959 (Option!12813) Bool)

(assert (=> b!4773915 (isDefined!9959 lt!1936962)))

(declare-fun lt!1936953 () List!53879)

(declare-fun key!2872 () K!15289)

(declare-fun getPair!728 (List!53879 K!15289) Option!12813)

(assert (=> b!4773915 (= lt!1936962 (getPair!728 lt!1936953 key!2872))))

(declare-datatypes ((Unit!138744 0))(
  ( (Unit!138745) )
))
(declare-fun lt!1936956 () Unit!138744)

(declare-fun lt!1936964 () tuple2!56050)

(declare-fun forallContained!3961 (List!53880 Int tuple2!56050) Unit!138744)

(assert (=> b!4773915 (= lt!1936956 (forallContained!3961 (toList!6527 lm!1309) lambda!226089 lt!1936964))))

(declare-datatypes ((Hashable!6720 0))(
  ( (HashableExt!6719 (__x!32743 Int)) )
))
(declare-fun hashF!980 () Hashable!6720)

(declare-fun lt!1936957 () Unit!138744)

(declare-fun lemmaInGenMapThenGetPairDefined!502 (ListLongMap!4941 K!15289 Hashable!6720) Unit!138744)

(assert (=> b!4773915 (= lt!1936957 (lemmaInGenMapThenGetPairDefined!502 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936952 () Unit!138744)

(assert (=> b!4773915 (= lt!1936952 (forallContained!3961 (toList!6527 lm!1309) lambda!226089 lt!1936964))))

(declare-fun contains!17206 (List!53880 tuple2!56050) Bool)

(assert (=> b!4773915 (contains!17206 (toList!6527 lm!1309) lt!1936964)))

(declare-fun lt!1936963 () (_ BitVec 64))

(assert (=> b!4773915 (= lt!1936964 (tuple2!56051 lt!1936963 lt!1936953))))

(declare-fun lt!1936965 () Unit!138744)

(declare-fun lemmaGetValueImpliesTupleContained!523 (ListLongMap!4941 (_ BitVec 64) List!53879) Unit!138744)

(assert (=> b!4773915 (= lt!1936965 (lemmaGetValueImpliesTupleContained!523 lm!1309 lt!1936963 lt!1936953))))

(declare-fun apply!12784 (ListLongMap!4941 (_ BitVec 64)) List!53879)

(assert (=> b!4773915 (= lt!1936953 (apply!12784 lm!1309 lt!1936963))))

(declare-fun contains!17207 (ListLongMap!4941 (_ BitVec 64)) Bool)

(assert (=> b!4773915 (contains!17207 lm!1309 lt!1936963)))

(declare-fun hash!4695 (Hashable!6720 K!15289) (_ BitVec 64))

(assert (=> b!4773915 (= lt!1936963 (hash!4695 hashF!980 key!2872))))

(declare-fun lt!1936961 () Unit!138744)

(declare-fun lemmaInGenMapThenLongMapContainsHash!932 (ListLongMap!4941 K!15289 Hashable!6720) Unit!138744)

(assert (=> b!4773915 (= lt!1936961 (lemmaInGenMapThenLongMapContainsHash!932 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773916 () Bool)

(declare-fun res!2025426 () Bool)

(assert (=> b!4773916 (=> (not res!2025426) (not e!2980271))))

(declare-fun allKeysSameHashInMap!2125 (ListLongMap!4941 Hashable!6720) Bool)

(assert (=> b!4773916 (= res!2025426 (allKeysSameHashInMap!2125 lm!1309 hashF!980))))

(declare-fun b!4773917 () Bool)

(assert (=> b!4773917 (= e!2980271 e!2980274)))

(declare-fun res!2025425 () Bool)

(assert (=> b!4773917 (=> (not res!2025425) (not e!2980274))))

(declare-datatypes ((ListMap!6007 0))(
  ( (ListMap!6008 (toList!6528 List!53879)) )
))
(declare-fun lt!1936954 () ListMap!6007)

(declare-fun contains!17208 (ListMap!6007 K!15289) Bool)

(assert (=> b!4773917 (= res!2025425 (contains!17208 lt!1936954 key!2872))))

(declare-fun extractMap!2255 (List!53880) ListMap!6007)

(assert (=> b!4773917 (= lt!1936954 (extractMap!2255 (toList!6527 lm!1309)))))

(declare-fun b!4773918 () Bool)

(declare-fun e!2980273 () Bool)

(assert (=> b!4773918 (= e!2980272 e!2980273)))

(declare-fun res!2025427 () Bool)

(assert (=> b!4773918 (=> res!2025427 e!2980273)))

(assert (=> b!4773918 (= res!2025427 (not (forall!11988 (toList!6527 lm!1309) lambda!226089)))))

(declare-fun getValue!34 (List!53880 K!15289) V!15535)

(assert (=> b!4773918 (= (getValue!34 (toList!6527 lm!1309) key!2872) v!9615)))

(declare-fun lt!1936955 () Unit!138744)

(declare-fun lemmaGetValueEquivToGetPair!34 (ListLongMap!4941 K!15289 V!15535 Hashable!6720) Unit!138744)

(assert (=> b!4773918 (= lt!1936955 (lemmaGetValueEquivToGetPair!34 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!376 (List!53880 K!15289) Bool)

(assert (=> b!4773918 (containsKeyBiggerList!376 (toList!6527 lm!1309) key!2872)))

(declare-fun lt!1936958 () Unit!138744)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!234 (ListLongMap!4941 K!15289 Hashable!6720) Unit!138744)

(assert (=> b!4773918 (= lt!1936958 (lemmaInLongMapThenContainsKeyBiggerList!234 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773919 () Bool)

(declare-fun tp!1356906 () Bool)

(assert (=> b!4773919 (= e!2980270 tp!1356906)))

(declare-fun b!4773920 () Bool)

(assert (=> b!4773920 (= e!2980273 true)))

(declare-fun apply!12785 (ListMap!6007 K!15289) V!15535)

(assert (=> b!4773920 (= (apply!12785 lt!1936954 key!2872) v!9615)))

(declare-fun lt!1936960 () Unit!138744)

(declare-fun lemmaExtractMapPreservesMapping!24 (ListLongMap!4941 K!15289 V!15535 Hashable!6720) Unit!138744)

(assert (=> b!4773920 (= lt!1936960 (lemmaExtractMapPreservesMapping!24 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1936959 () Unit!138744)

(declare-fun lemmaInGenericMapThenInLongMap!242 (ListLongMap!4941 K!15289 Hashable!6720) Unit!138744)

(assert (=> b!4773920 (= lt!1936959 (lemmaInGenericMapThenInLongMap!242 lm!1309 key!2872 hashF!980))))

(assert (= (and start!489078 res!2025428) b!4773916))

(assert (= (and b!4773916 res!2025426) b!4773917))

(assert (= (and b!4773917 res!2025425) b!4773915))

(assert (= (and b!4773915 (not res!2025424)) b!4773918))

(assert (= (and b!4773918 (not res!2025427)) b!4773920))

(assert (= start!489078 b!4773919))

(declare-fun m!5747746 () Bool)

(assert (=> b!4773920 m!5747746))

(declare-fun m!5747748 () Bool)

(assert (=> b!4773920 m!5747748))

(declare-fun m!5747750 () Bool)

(assert (=> b!4773920 m!5747750))

(declare-fun m!5747752 () Bool)

(assert (=> start!489078 m!5747752))

(declare-fun m!5747754 () Bool)

(assert (=> start!489078 m!5747754))

(declare-fun m!5747756 () Bool)

(assert (=> b!4773916 m!5747756))

(declare-fun m!5747758 () Bool)

(assert (=> b!4773915 m!5747758))

(declare-fun m!5747760 () Bool)

(assert (=> b!4773915 m!5747760))

(declare-fun m!5747762 () Bool)

(assert (=> b!4773915 m!5747762))

(declare-fun m!5747764 () Bool)

(assert (=> b!4773915 m!5747764))

(declare-fun m!5747766 () Bool)

(assert (=> b!4773915 m!5747766))

(declare-fun m!5747768 () Bool)

(assert (=> b!4773915 m!5747768))

(declare-fun m!5747770 () Bool)

(assert (=> b!4773915 m!5747770))

(declare-fun m!5747772 () Bool)

(assert (=> b!4773915 m!5747772))

(assert (=> b!4773915 m!5747766))

(declare-fun m!5747774 () Bool)

(assert (=> b!4773915 m!5747774))

(declare-fun m!5747776 () Bool)

(assert (=> b!4773915 m!5747776))

(declare-fun m!5747778 () Bool)

(assert (=> b!4773915 m!5747778))

(declare-fun m!5747780 () Bool)

(assert (=> b!4773917 m!5747780))

(declare-fun m!5747782 () Bool)

(assert (=> b!4773917 m!5747782))

(assert (=> b!4773918 m!5747752))

(declare-fun m!5747784 () Bool)

(assert (=> b!4773918 m!5747784))

(declare-fun m!5747786 () Bool)

(assert (=> b!4773918 m!5747786))

(declare-fun m!5747788 () Bool)

(assert (=> b!4773918 m!5747788))

(declare-fun m!5747790 () Bool)

(assert (=> b!4773918 m!5747790))

(check-sat (not b!4773919) (not b!4773918) tp_is_empty!32857 (not b!4773920) tp_is_empty!32859 (not b!4773917) (not b!4773916) (not start!489078) (not b!4773915))
(check-sat)
