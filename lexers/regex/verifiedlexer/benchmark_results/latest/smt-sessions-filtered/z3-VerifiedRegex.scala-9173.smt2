; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488566 () Bool)

(assert start!488566)

(declare-fun b!4771783 () Bool)

(declare-fun e!2978795 () Bool)

(declare-fun tp!1356690 () Bool)

(assert (=> b!4771783 (= e!2978795 tp!1356690)))

(declare-fun b!4771784 () Bool)

(declare-fun e!2978797 () Bool)

(declare-fun e!2978798 () Bool)

(assert (=> b!4771784 (= e!2978797 e!2978798)))

(declare-fun res!2024045 () Bool)

(assert (=> b!4771784 (=> res!2024045 e!2978798)))

(declare-datatypes ((K!15154 0))(
  ( (K!15155 (val!20429 Int)) )
))
(declare-datatypes ((V!15400 0))(
  ( (V!15401 (val!20430 Int)) )
))
(declare-datatypes ((tuple2!55832 0))(
  ( (tuple2!55833 (_1!31210 K!15154) (_2!31210 V!15400)) )
))
(declare-datatypes ((List!53765 0))(
  ( (Nil!53641) (Cons!53641 (h!60053 tuple2!55832) (t!361215 List!53765)) )
))
(declare-datatypes ((tuple2!55834 0))(
  ( (tuple2!55835 (_1!31211 (_ BitVec 64)) (_2!31211 List!53765)) )
))
(declare-datatypes ((List!53766 0))(
  ( (Nil!53642) (Cons!53642 (h!60054 tuple2!55834) (t!361216 List!53766)) )
))
(declare-datatypes ((ListLongMap!4833 0))(
  ( (ListLongMap!4834 (toList!6419 List!53766)) )
))
(declare-fun lm!1309 () ListLongMap!4833)

(declare-fun lambda!225321 () Int)

(declare-fun forall!11930 (List!53766 Int) Bool)

(assert (=> b!4771784 (= res!2024045 (not (forall!11930 (toList!6419 lm!1309) lambda!225321)))))

(declare-datatypes ((ListMap!5899 0))(
  ( (ListMap!5900 (toList!6420 List!53765)) )
))
(declare-fun lt!1934389 () ListMap!5899)

(declare-fun key!2872 () K!15154)

(declare-fun v!9615 () V!15400)

(declare-fun apply!12712 (ListMap!5899 K!15154) V!15400)

(assert (=> b!4771784 (= (apply!12712 lt!1934389 key!2872) v!9615)))

(declare-datatypes ((Hashable!6666 0))(
  ( (HashableExt!6665 (__x!32689 Int)) )
))
(declare-fun hashF!980 () Hashable!6666)

(declare-datatypes ((Unit!138536 0))(
  ( (Unit!138537) )
))
(declare-fun lt!1934386 () Unit!138536)

(declare-fun lemmaExtractMapPreservesMapping!2 (ListLongMap!4833 K!15154 V!15400 Hashable!6666) Unit!138536)

(assert (=> b!4771784 (= lt!1934386 (lemmaExtractMapPreservesMapping!2 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1934378 () Unit!138536)

(declare-fun lemmaInGenericMapThenInLongMap!218 (ListLongMap!4833 K!15154 Hashable!6666) Unit!138536)

(assert (=> b!4771784 (= lt!1934378 (lemmaInGenericMapThenInLongMap!218 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771785 () Bool)

(assert (=> b!4771785 (= e!2978798 (forall!11930 (toList!6419 lm!1309) lambda!225321))))

(declare-fun b!4771786 () Bool)

(declare-fun e!2978794 () Bool)

(assert (=> b!4771786 (= e!2978794 e!2978797)))

(declare-fun res!2024047 () Bool)

(assert (=> b!4771786 (=> res!2024047 e!2978797)))

(assert (=> b!4771786 (= res!2024047 (not (forall!11930 (toList!6419 lm!1309) lambda!225321)))))

(declare-fun getValue!6 (List!53766 K!15154) V!15400)

(assert (=> b!4771786 (= (getValue!6 (toList!6419 lm!1309) key!2872) v!9615)))

(declare-fun lt!1934383 () Unit!138536)

(declare-fun lemmaGetValueEquivToGetPair!6 (ListLongMap!4833 K!15154 V!15400 Hashable!6666) Unit!138536)

(assert (=> b!4771786 (= lt!1934383 (lemmaGetValueEquivToGetPair!6 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!340 (List!53766 K!15154) Bool)

(assert (=> b!4771786 (containsKeyBiggerList!340 (toList!6419 lm!1309) key!2872)))

(declare-fun lt!1934381 () Unit!138536)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!198 (ListLongMap!4833 K!15154 Hashable!6666) Unit!138536)

(assert (=> b!4771786 (= lt!1934381 (lemmaInLongMapThenContainsKeyBiggerList!198 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771787 () Bool)

(declare-fun e!2978796 () Bool)

(declare-fun e!2978793 () Bool)

(assert (=> b!4771787 (= e!2978796 e!2978793)))

(declare-fun res!2024046 () Bool)

(assert (=> b!4771787 (=> (not res!2024046) (not e!2978793))))

(declare-fun contains!17046 (ListMap!5899 K!15154) Bool)

(assert (=> b!4771787 (= res!2024046 (contains!17046 lt!1934389 key!2872))))

(declare-fun extractMap!2201 (List!53766) ListMap!5899)

(assert (=> b!4771787 (= lt!1934389 (extractMap!2201 (toList!6419 lm!1309)))))

(declare-fun b!4771788 () Bool)

(assert (=> b!4771788 (= e!2978793 (not e!2978794))))

(declare-fun res!2024048 () Bool)

(assert (=> b!4771788 (=> res!2024048 e!2978794)))

(declare-datatypes ((Option!12761 0))(
  ( (None!12760) (Some!12760 (v!47887 tuple2!55832)) )
))
(declare-fun lt!1934384 () Option!12761)

(declare-fun get!18134 (Option!12761) tuple2!55832)

(assert (=> b!4771788 (= res!2024048 (not (= (_2!31210 (get!18134 lt!1934384)) v!9615)))))

(declare-fun isDefined!9907 (Option!12761) Bool)

(assert (=> b!4771788 (isDefined!9907 lt!1934384)))

(declare-fun lt!1934385 () List!53765)

(declare-fun getPair!686 (List!53765 K!15154) Option!12761)

(assert (=> b!4771788 (= lt!1934384 (getPair!686 lt!1934385 key!2872))))

(declare-fun lt!1934388 () Unit!138536)

(declare-fun lt!1934382 () tuple2!55834)

(declare-fun forallContained!3911 (List!53766 Int tuple2!55834) Unit!138536)

(assert (=> b!4771788 (= lt!1934388 (forallContained!3911 (toList!6419 lm!1309) lambda!225321 lt!1934382))))

(declare-fun lt!1934387 () Unit!138536)

(declare-fun lemmaInGenMapThenGetPairDefined!460 (ListLongMap!4833 K!15154 Hashable!6666) Unit!138536)

(assert (=> b!4771788 (= lt!1934387 (lemmaInGenMapThenGetPairDefined!460 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934379 () Unit!138536)

(assert (=> b!4771788 (= lt!1934379 (forallContained!3911 (toList!6419 lm!1309) lambda!225321 lt!1934382))))

(declare-fun contains!17047 (List!53766 tuple2!55834) Bool)

(assert (=> b!4771788 (contains!17047 (toList!6419 lm!1309) lt!1934382)))

(declare-fun lt!1934380 () (_ BitVec 64))

(assert (=> b!4771788 (= lt!1934382 (tuple2!55835 lt!1934380 lt!1934385))))

(declare-fun lt!1934391 () Unit!138536)

(declare-fun lemmaGetValueImpliesTupleContained!477 (ListLongMap!4833 (_ BitVec 64) List!53765) Unit!138536)

(assert (=> b!4771788 (= lt!1934391 (lemmaGetValueImpliesTupleContained!477 lm!1309 lt!1934380 lt!1934385))))

(declare-fun apply!12713 (ListLongMap!4833 (_ BitVec 64)) List!53765)

(assert (=> b!4771788 (= lt!1934385 (apply!12713 lm!1309 lt!1934380))))

(declare-fun contains!17048 (ListLongMap!4833 (_ BitVec 64)) Bool)

(assert (=> b!4771788 (contains!17048 lm!1309 lt!1934380)))

(declare-fun hash!4641 (Hashable!6666 K!15154) (_ BitVec 64))

(assert (=> b!4771788 (= lt!1934380 (hash!4641 hashF!980 key!2872))))

(declare-fun lt!1934390 () Unit!138536)

(declare-fun lemmaInGenMapThenLongMapContainsHash!882 (ListLongMap!4833 K!15154 Hashable!6666) Unit!138536)

(assert (=> b!4771788 (= lt!1934390 (lemmaInGenMapThenLongMapContainsHash!882 lm!1309 key!2872 hashF!980))))

(declare-fun res!2024050 () Bool)

(assert (=> start!488566 (=> (not res!2024050) (not e!2978796))))

(assert (=> start!488566 (= res!2024050 (forall!11930 (toList!6419 lm!1309) lambda!225321))))

(assert (=> start!488566 e!2978796))

(declare-fun inv!69180 (ListLongMap!4833) Bool)

(assert (=> start!488566 (and (inv!69180 lm!1309) e!2978795)))

(assert (=> start!488566 true))

(declare-fun tp_is_empty!32661 () Bool)

(assert (=> start!488566 tp_is_empty!32661))

(declare-fun tp_is_empty!32663 () Bool)

(assert (=> start!488566 tp_is_empty!32663))

(declare-fun b!4771782 () Bool)

(declare-fun res!2024049 () Bool)

(assert (=> b!4771782 (=> (not res!2024049) (not e!2978796))))

(declare-fun allKeysSameHashInMap!2071 (ListLongMap!4833 Hashable!6666) Bool)

(assert (=> b!4771782 (= res!2024049 (allKeysSameHashInMap!2071 lm!1309 hashF!980))))

(assert (= (and start!488566 res!2024050) b!4771782))

(assert (= (and b!4771782 res!2024049) b!4771787))

(assert (= (and b!4771787 res!2024046) b!4771788))

(assert (= (and b!4771788 (not res!2024048)) b!4771786))

(assert (= (and b!4771786 (not res!2024047)) b!4771784))

(assert (= (and b!4771784 (not res!2024045)) b!4771785))

(assert (= start!488566 b!4771783))

(declare-fun m!5744042 () Bool)

(assert (=> b!4771788 m!5744042))

(declare-fun m!5744044 () Bool)

(assert (=> b!4771788 m!5744044))

(declare-fun m!5744046 () Bool)

(assert (=> b!4771788 m!5744046))

(declare-fun m!5744048 () Bool)

(assert (=> b!4771788 m!5744048))

(declare-fun m!5744050 () Bool)

(assert (=> b!4771788 m!5744050))

(declare-fun m!5744052 () Bool)

(assert (=> b!4771788 m!5744052))

(declare-fun m!5744054 () Bool)

(assert (=> b!4771788 m!5744054))

(declare-fun m!5744056 () Bool)

(assert (=> b!4771788 m!5744056))

(declare-fun m!5744058 () Bool)

(assert (=> b!4771788 m!5744058))

(declare-fun m!5744060 () Bool)

(assert (=> b!4771788 m!5744060))

(assert (=> b!4771788 m!5744058))

(declare-fun m!5744062 () Bool)

(assert (=> b!4771788 m!5744062))

(declare-fun m!5744064 () Bool)

(assert (=> start!488566 m!5744064))

(declare-fun m!5744066 () Bool)

(assert (=> start!488566 m!5744066))

(declare-fun m!5744068 () Bool)

(assert (=> b!4771787 m!5744068))

(declare-fun m!5744070 () Bool)

(assert (=> b!4771787 m!5744070))

(assert (=> b!4771784 m!5744064))

(declare-fun m!5744072 () Bool)

(assert (=> b!4771784 m!5744072))

(declare-fun m!5744074 () Bool)

(assert (=> b!4771784 m!5744074))

(declare-fun m!5744076 () Bool)

(assert (=> b!4771784 m!5744076))

(assert (=> b!4771785 m!5744064))

(declare-fun m!5744078 () Bool)

(assert (=> b!4771782 m!5744078))

(declare-fun m!5744080 () Bool)

(assert (=> b!4771786 m!5744080))

(assert (=> b!4771786 m!5744064))

(declare-fun m!5744082 () Bool)

(assert (=> b!4771786 m!5744082))

(declare-fun m!5744084 () Bool)

(assert (=> b!4771786 m!5744084))

(declare-fun m!5744086 () Bool)

(assert (=> b!4771786 m!5744086))

(check-sat (not b!4771786) (not start!488566) (not b!4771787) (not b!4771784) (not b!4771782) (not b!4771788) (not b!4771783) (not b!4771785) tp_is_empty!32663 tp_is_empty!32661)
(check-sat)
