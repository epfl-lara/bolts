; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488582 () Bool)

(assert start!488582)

(declare-fun b!4771927 () Bool)

(declare-fun res!2024166 () Bool)

(declare-fun e!2978916 () Bool)

(assert (=> b!4771927 (=> (not res!2024166) (not e!2978916))))

(declare-datatypes ((K!15174 0))(
  ( (K!15175 (val!20445 Int)) )
))
(declare-datatypes ((V!15420 0))(
  ( (V!15421 (val!20446 Int)) )
))
(declare-datatypes ((tuple2!55864 0))(
  ( (tuple2!55865 (_1!31226 K!15174) (_2!31226 V!15420)) )
))
(declare-datatypes ((List!53781 0))(
  ( (Nil!53657) (Cons!53657 (h!60069 tuple2!55864) (t!361231 List!53781)) )
))
(declare-datatypes ((tuple2!55866 0))(
  ( (tuple2!55867 (_1!31227 (_ BitVec 64)) (_2!31227 List!53781)) )
))
(declare-datatypes ((List!53782 0))(
  ( (Nil!53658) (Cons!53658 (h!60070 tuple2!55866) (t!361232 List!53782)) )
))
(declare-datatypes ((ListLongMap!4849 0))(
  ( (ListLongMap!4850 (toList!6435 List!53782)) )
))
(declare-fun lm!1309 () ListLongMap!4849)

(declare-datatypes ((Hashable!6674 0))(
  ( (HashableExt!6673 (__x!32697 Int)) )
))
(declare-fun hashF!980 () Hashable!6674)

(declare-fun allKeysSameHashInMap!2079 (ListLongMap!4849 Hashable!6674) Bool)

(assert (=> b!4771927 (= res!2024166 (allKeysSameHashInMap!2079 lm!1309 hashF!980))))

(declare-fun b!4771928 () Bool)

(declare-fun e!2978915 () Bool)

(declare-fun lambda!225397 () Int)

(declare-fun forall!11938 (List!53782 Int) Bool)

(assert (=> b!4771928 (= e!2978915 (forall!11938 (toList!6435 lm!1309) lambda!225397))))

(declare-datatypes ((ListMap!5915 0))(
  ( (ListMap!5916 (toList!6436 List!53781)) )
))
(declare-fun lt!1934714 () ListMap!5915)

(declare-fun key!2872 () K!15174)

(declare-fun v!9615 () V!15420)

(declare-fun apply!12728 (ListMap!5915 K!15174) V!15420)

(assert (=> b!4771928 (= (apply!12728 lt!1934714 key!2872) v!9615)))

(declare-datatypes ((Unit!138552 0))(
  ( (Unit!138553) )
))
(declare-fun lt!1934727 () Unit!138552)

(declare-fun lemmaExtractMapPreservesMapping!10 (ListLongMap!4849 K!15174 V!15420 Hashable!6674) Unit!138552)

(assert (=> b!4771928 (= lt!1934727 (lemmaExtractMapPreservesMapping!10 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1934724 () Unit!138552)

(declare-fun lemmaInGenericMapThenInLongMap!226 (ListLongMap!4849 K!15174 Hashable!6674) Unit!138552)

(assert (=> b!4771928 (= lt!1934724 (lemmaInGenericMapThenInLongMap!226 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771929 () Bool)

(declare-fun e!2978918 () Bool)

(declare-fun tp!1356714 () Bool)

(assert (=> b!4771929 (= e!2978918 tp!1356714)))

(declare-fun b!4771930 () Bool)

(declare-fun e!2978917 () Bool)

(assert (=> b!4771930 (= e!2978916 e!2978917)))

(declare-fun res!2024169 () Bool)

(assert (=> b!4771930 (=> (not res!2024169) (not e!2978917))))

(declare-fun contains!17070 (ListMap!5915 K!15174) Bool)

(assert (=> b!4771930 (= res!2024169 (contains!17070 lt!1934714 key!2872))))

(declare-fun extractMap!2209 (List!53782) ListMap!5915)

(assert (=> b!4771930 (= lt!1934714 (extractMap!2209 (toList!6435 lm!1309)))))

(declare-fun res!2024168 () Bool)

(assert (=> start!488582 (=> (not res!2024168) (not e!2978916))))

(assert (=> start!488582 (= res!2024168 (forall!11938 (toList!6435 lm!1309) lambda!225397))))

(assert (=> start!488582 e!2978916))

(declare-fun inv!69200 (ListLongMap!4849) Bool)

(assert (=> start!488582 (and (inv!69200 lm!1309) e!2978918)))

(assert (=> start!488582 true))

(declare-fun tp_is_empty!32693 () Bool)

(assert (=> start!488582 tp_is_empty!32693))

(declare-fun tp_is_empty!32695 () Bool)

(assert (=> start!488582 tp_is_empty!32695))

(declare-fun b!4771931 () Bool)

(declare-fun e!2978914 () Bool)

(assert (=> b!4771931 (= e!2978917 (not e!2978914))))

(declare-fun res!2024167 () Bool)

(assert (=> b!4771931 (=> res!2024167 e!2978914)))

(declare-datatypes ((Option!12769 0))(
  ( (None!12768) (Some!12768 (v!47895 tuple2!55864)) )
))
(declare-fun lt!1934723 () Option!12769)

(declare-fun get!18146 (Option!12769) tuple2!55864)

(assert (=> b!4771931 (= res!2024167 (not (= (_2!31226 (get!18146 lt!1934723)) v!9615)))))

(declare-fun isDefined!9915 (Option!12769) Bool)

(assert (=> b!4771931 (isDefined!9915 lt!1934723)))

(declare-fun lt!1934720 () List!53781)

(declare-fun getPair!694 (List!53781 K!15174) Option!12769)

(assert (=> b!4771931 (= lt!1934723 (getPair!694 lt!1934720 key!2872))))

(declare-fun lt!1934726 () tuple2!55866)

(declare-fun lt!1934715 () Unit!138552)

(declare-fun forallContained!3919 (List!53782 Int tuple2!55866) Unit!138552)

(assert (=> b!4771931 (= lt!1934715 (forallContained!3919 (toList!6435 lm!1309) lambda!225397 lt!1934726))))

(declare-fun lt!1934721 () Unit!138552)

(declare-fun lemmaInGenMapThenGetPairDefined!468 (ListLongMap!4849 K!15174 Hashable!6674) Unit!138552)

(assert (=> b!4771931 (= lt!1934721 (lemmaInGenMapThenGetPairDefined!468 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934725 () Unit!138552)

(assert (=> b!4771931 (= lt!1934725 (forallContained!3919 (toList!6435 lm!1309) lambda!225397 lt!1934726))))

(declare-fun contains!17071 (List!53782 tuple2!55866) Bool)

(assert (=> b!4771931 (contains!17071 (toList!6435 lm!1309) lt!1934726)))

(declare-fun lt!1934718 () (_ BitVec 64))

(assert (=> b!4771931 (= lt!1934726 (tuple2!55867 lt!1934718 lt!1934720))))

(declare-fun lt!1934722 () Unit!138552)

(declare-fun lemmaGetValueImpliesTupleContained!485 (ListLongMap!4849 (_ BitVec 64) List!53781) Unit!138552)

(assert (=> b!4771931 (= lt!1934722 (lemmaGetValueImpliesTupleContained!485 lm!1309 lt!1934718 lt!1934720))))

(declare-fun apply!12729 (ListLongMap!4849 (_ BitVec 64)) List!53781)

(assert (=> b!4771931 (= lt!1934720 (apply!12729 lm!1309 lt!1934718))))

(declare-fun contains!17072 (ListLongMap!4849 (_ BitVec 64)) Bool)

(assert (=> b!4771931 (contains!17072 lm!1309 lt!1934718)))

(declare-fun hash!4649 (Hashable!6674 K!15174) (_ BitVec 64))

(assert (=> b!4771931 (= lt!1934718 (hash!4649 hashF!980 key!2872))))

(declare-fun lt!1934719 () Unit!138552)

(declare-fun lemmaInGenMapThenLongMapContainsHash!890 (ListLongMap!4849 K!15174 Hashable!6674) Unit!138552)

(assert (=> b!4771931 (= lt!1934719 (lemmaInGenMapThenLongMapContainsHash!890 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771932 () Bool)

(assert (=> b!4771932 (= e!2978914 e!2978915)))

(declare-fun res!2024170 () Bool)

(assert (=> b!4771932 (=> res!2024170 e!2978915)))

(assert (=> b!4771932 (= res!2024170 (not (forall!11938 (toList!6435 lm!1309) lambda!225397)))))

(declare-fun getValue!14 (List!53782 K!15174) V!15420)

(assert (=> b!4771932 (= (getValue!14 (toList!6435 lm!1309) key!2872) v!9615)))

(declare-fun lt!1934717 () Unit!138552)

(declare-fun lemmaGetValueEquivToGetPair!14 (ListLongMap!4849 K!15174 V!15420 Hashable!6674) Unit!138552)

(assert (=> b!4771932 (= lt!1934717 (lemmaGetValueEquivToGetPair!14 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!348 (List!53782 K!15174) Bool)

(assert (=> b!4771932 (containsKeyBiggerList!348 (toList!6435 lm!1309) key!2872)))

(declare-fun lt!1934716 () Unit!138552)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!206 (ListLongMap!4849 K!15174 Hashable!6674) Unit!138552)

(assert (=> b!4771932 (= lt!1934716 (lemmaInLongMapThenContainsKeyBiggerList!206 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488582 res!2024168) b!4771927))

(assert (= (and b!4771927 res!2024166) b!4771930))

(assert (= (and b!4771930 res!2024169) b!4771931))

(assert (= (and b!4771931 (not res!2024167)) b!4771932))

(assert (= (and b!4771932 (not res!2024170)) b!4771928))

(assert (= start!488582 b!4771929))

(declare-fun m!5744410 () Bool)

(assert (=> b!4771927 m!5744410))

(declare-fun m!5744412 () Bool)

(assert (=> start!488582 m!5744412))

(declare-fun m!5744414 () Bool)

(assert (=> start!488582 m!5744414))

(assert (=> b!4771928 m!5744412))

(declare-fun m!5744416 () Bool)

(assert (=> b!4771928 m!5744416))

(declare-fun m!5744418 () Bool)

(assert (=> b!4771928 m!5744418))

(declare-fun m!5744420 () Bool)

(assert (=> b!4771928 m!5744420))

(declare-fun m!5744422 () Bool)

(assert (=> b!4771931 m!5744422))

(declare-fun m!5744424 () Bool)

(assert (=> b!4771931 m!5744424))

(declare-fun m!5744426 () Bool)

(assert (=> b!4771931 m!5744426))

(declare-fun m!5744428 () Bool)

(assert (=> b!4771931 m!5744428))

(declare-fun m!5744430 () Bool)

(assert (=> b!4771931 m!5744430))

(assert (=> b!4771931 m!5744422))

(declare-fun m!5744432 () Bool)

(assert (=> b!4771931 m!5744432))

(declare-fun m!5744434 () Bool)

(assert (=> b!4771931 m!5744434))

(declare-fun m!5744436 () Bool)

(assert (=> b!4771931 m!5744436))

(declare-fun m!5744438 () Bool)

(assert (=> b!4771931 m!5744438))

(declare-fun m!5744440 () Bool)

(assert (=> b!4771931 m!5744440))

(declare-fun m!5744442 () Bool)

(assert (=> b!4771931 m!5744442))

(declare-fun m!5744444 () Bool)

(assert (=> b!4771930 m!5744444))

(declare-fun m!5744446 () Bool)

(assert (=> b!4771930 m!5744446))

(declare-fun m!5744448 () Bool)

(assert (=> b!4771932 m!5744448))

(assert (=> b!4771932 m!5744412))

(declare-fun m!5744450 () Bool)

(assert (=> b!4771932 m!5744450))

(declare-fun m!5744452 () Bool)

(assert (=> b!4771932 m!5744452))

(declare-fun m!5744454 () Bool)

(assert (=> b!4771932 m!5744454))

(check-sat tp_is_empty!32695 (not b!4771929) (not b!4771930) tp_is_empty!32693 (not b!4771928) (not start!488582) (not b!4771931) (not b!4771932) (not b!4771927))
(check-sat)
