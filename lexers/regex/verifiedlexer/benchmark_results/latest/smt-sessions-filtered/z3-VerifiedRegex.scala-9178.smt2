; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488586 () Bool)

(assert start!488586)

(declare-fun b!4771968 () Bool)

(declare-fun e!2978953 () Bool)

(declare-datatypes ((K!15179 0))(
  ( (K!15180 (val!20449 Int)) )
))
(declare-datatypes ((V!15425 0))(
  ( (V!15426 (val!20450 Int)) )
))
(declare-datatypes ((tuple2!55872 0))(
  ( (tuple2!55873 (_1!31230 K!15179) (_2!31230 V!15425)) )
))
(declare-datatypes ((List!53785 0))(
  ( (Nil!53661) (Cons!53661 (h!60073 tuple2!55872) (t!361235 List!53785)) )
))
(declare-datatypes ((tuple2!55874 0))(
  ( (tuple2!55875 (_1!31231 (_ BitVec 64)) (_2!31231 List!53785)) )
))
(declare-datatypes ((List!53786 0))(
  ( (Nil!53662) (Cons!53662 (h!60074 tuple2!55874) (t!361236 List!53786)) )
))
(declare-datatypes ((ListLongMap!4853 0))(
  ( (ListLongMap!4854 (toList!6439 List!53786)) )
))
(declare-fun lm!1309 () ListLongMap!4853)

(declare-fun lambda!225427 () Int)

(declare-fun forall!11940 (List!53786 Int) Bool)

(assert (=> b!4771968 (= e!2978953 (forall!11940 (toList!6439 lm!1309) lambda!225427))))

(declare-fun b!4771969 () Bool)

(declare-fun e!2978952 () Bool)

(assert (=> b!4771969 (= e!2978952 e!2978953)))

(declare-fun res!2024205 () Bool)

(assert (=> b!4771969 (=> res!2024205 e!2978953)))

(assert (=> b!4771969 (= res!2024205 (not (forall!11940 (toList!6439 lm!1309) lambda!225427)))))

(declare-datatypes ((Unit!138556 0))(
  ( (Unit!138557) )
))
(declare-fun lt!1934804 () Unit!138556)

(declare-fun lt!1934812 () tuple2!55874)

(declare-fun forallContained!3921 (List!53786 Int tuple2!55874) Unit!138556)

(assert (=> b!4771969 (= lt!1934804 (forallContained!3921 (toList!6439 lm!1309) lambda!225427 lt!1934812))))

(declare-datatypes ((ListMap!5919 0))(
  ( (ListMap!5920 (toList!6440 List!53785)) )
))
(declare-fun lt!1934807 () ListMap!5919)

(declare-fun key!2872 () K!15179)

(declare-fun v!9615 () V!15425)

(declare-fun apply!12732 (ListMap!5919 K!15179) V!15425)

(assert (=> b!4771969 (= (apply!12732 lt!1934807 key!2872) v!9615)))

(declare-datatypes ((Hashable!6676 0))(
  ( (HashableExt!6675 (__x!32699 Int)) )
))
(declare-fun hashF!980 () Hashable!6676)

(declare-fun lt!1934805 () Unit!138556)

(declare-fun lemmaExtractMapPreservesMapping!12 (ListLongMap!4853 K!15179 V!15425 Hashable!6676) Unit!138556)

(assert (=> b!4771969 (= lt!1934805 (lemmaExtractMapPreservesMapping!12 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1934808 () Unit!138556)

(declare-fun lemmaInGenericMapThenInLongMap!228 (ListLongMap!4853 K!15179 Hashable!6676) Unit!138556)

(assert (=> b!4771969 (= lt!1934808 (lemmaInGenericMapThenInLongMap!228 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771970 () Bool)

(declare-fun e!2978949 () Bool)

(declare-fun e!2978954 () Bool)

(assert (=> b!4771970 (= e!2978949 e!2978954)))

(declare-fun res!2024202 () Bool)

(assert (=> b!4771970 (=> (not res!2024202) (not e!2978954))))

(declare-fun contains!17076 (ListMap!5919 K!15179) Bool)

(assert (=> b!4771970 (= res!2024202 (contains!17076 lt!1934807 key!2872))))

(declare-fun extractMap!2211 (List!53786) ListMap!5919)

(assert (=> b!4771970 (= lt!1934807 (extractMap!2211 (toList!6439 lm!1309)))))

(declare-fun res!2024204 () Bool)

(assert (=> start!488586 (=> (not res!2024204) (not e!2978949))))

(assert (=> start!488586 (= res!2024204 (forall!11940 (toList!6439 lm!1309) lambda!225427))))

(assert (=> start!488586 e!2978949))

(declare-fun e!2978950 () Bool)

(declare-fun inv!69205 (ListLongMap!4853) Bool)

(assert (=> start!488586 (and (inv!69205 lm!1309) e!2978950)))

(assert (=> start!488586 true))

(declare-fun tp_is_empty!32701 () Bool)

(assert (=> start!488586 tp_is_empty!32701))

(declare-fun tp_is_empty!32703 () Bool)

(assert (=> start!488586 tp_is_empty!32703))

(declare-fun b!4771971 () Bool)

(declare-fun tp!1356720 () Bool)

(assert (=> b!4771971 (= e!2978950 tp!1356720)))

(declare-fun b!4771972 () Bool)

(declare-fun e!2978951 () Bool)

(assert (=> b!4771972 (= e!2978954 (not e!2978951))))

(declare-fun res!2024206 () Bool)

(assert (=> b!4771972 (=> res!2024206 e!2978951)))

(declare-datatypes ((Option!12771 0))(
  ( (None!12770) (Some!12770 (v!47897 tuple2!55872)) )
))
(declare-fun lt!1934810 () Option!12771)

(declare-fun get!18149 (Option!12771) tuple2!55872)

(assert (=> b!4771972 (= res!2024206 (not (= (_2!31230 (get!18149 lt!1934810)) v!9615)))))

(declare-fun isDefined!9917 (Option!12771) Bool)

(assert (=> b!4771972 (isDefined!9917 lt!1934810)))

(declare-fun lt!1934811 () List!53785)

(declare-fun getPair!696 (List!53785 K!15179) Option!12771)

(assert (=> b!4771972 (= lt!1934810 (getPair!696 lt!1934811 key!2872))))

(declare-fun lt!1934815 () Unit!138556)

(assert (=> b!4771972 (= lt!1934815 (forallContained!3921 (toList!6439 lm!1309) lambda!225427 lt!1934812))))

(declare-fun lt!1934809 () Unit!138556)

(declare-fun lemmaInGenMapThenGetPairDefined!470 (ListLongMap!4853 K!15179 Hashable!6676) Unit!138556)

(assert (=> b!4771972 (= lt!1934809 (lemmaInGenMapThenGetPairDefined!470 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934813 () Unit!138556)

(assert (=> b!4771972 (= lt!1934813 (forallContained!3921 (toList!6439 lm!1309) lambda!225427 lt!1934812))))

(declare-fun contains!17077 (List!53786 tuple2!55874) Bool)

(assert (=> b!4771972 (contains!17077 (toList!6439 lm!1309) lt!1934812)))

(declare-fun lt!1934817 () (_ BitVec 64))

(assert (=> b!4771972 (= lt!1934812 (tuple2!55875 lt!1934817 lt!1934811))))

(declare-fun lt!1934816 () Unit!138556)

(declare-fun lemmaGetValueImpliesTupleContained!487 (ListLongMap!4853 (_ BitVec 64) List!53785) Unit!138556)

(assert (=> b!4771972 (= lt!1934816 (lemmaGetValueImpliesTupleContained!487 lm!1309 lt!1934817 lt!1934811))))

(declare-fun apply!12733 (ListLongMap!4853 (_ BitVec 64)) List!53785)

(assert (=> b!4771972 (= lt!1934811 (apply!12733 lm!1309 lt!1934817))))

(declare-fun contains!17078 (ListLongMap!4853 (_ BitVec 64)) Bool)

(assert (=> b!4771972 (contains!17078 lm!1309 lt!1934817)))

(declare-fun hash!4651 (Hashable!6676 K!15179) (_ BitVec 64))

(assert (=> b!4771972 (= lt!1934817 (hash!4651 hashF!980 key!2872))))

(declare-fun lt!1934803 () Unit!138556)

(declare-fun lemmaInGenMapThenLongMapContainsHash!892 (ListLongMap!4853 K!15179 Hashable!6676) Unit!138556)

(assert (=> b!4771972 (= lt!1934803 (lemmaInGenMapThenLongMapContainsHash!892 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771973 () Bool)

(assert (=> b!4771973 (= e!2978951 e!2978952)))

(declare-fun res!2024203 () Bool)

(assert (=> b!4771973 (=> res!2024203 e!2978952)))

(assert (=> b!4771973 (= res!2024203 (not (forall!11940 (toList!6439 lm!1309) lambda!225427)))))

(declare-fun getValue!16 (List!53786 K!15179) V!15425)

(assert (=> b!4771973 (= (getValue!16 (toList!6439 lm!1309) key!2872) v!9615)))

(declare-fun lt!1934806 () Unit!138556)

(declare-fun lemmaGetValueEquivToGetPair!16 (ListLongMap!4853 K!15179 V!15425 Hashable!6676) Unit!138556)

(assert (=> b!4771973 (= lt!1934806 (lemmaGetValueEquivToGetPair!16 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!350 (List!53786 K!15179) Bool)

(assert (=> b!4771973 (containsKeyBiggerList!350 (toList!6439 lm!1309) key!2872)))

(declare-fun lt!1934814 () Unit!138556)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!208 (ListLongMap!4853 K!15179 Hashable!6676) Unit!138556)

(assert (=> b!4771973 (= lt!1934814 (lemmaInLongMapThenContainsKeyBiggerList!208 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771974 () Bool)

(declare-fun res!2024201 () Bool)

(assert (=> b!4771974 (=> (not res!2024201) (not e!2978949))))

(declare-fun allKeysSameHashInMap!2081 (ListLongMap!4853 Hashable!6676) Bool)

(assert (=> b!4771974 (= res!2024201 (allKeysSameHashInMap!2081 lm!1309 hashF!980))))

(assert (= (and start!488586 res!2024204) b!4771974))

(assert (= (and b!4771974 res!2024201) b!4771970))

(assert (= (and b!4771970 res!2024202) b!4771972))

(assert (= (and b!4771972 (not res!2024206)) b!4771973))

(assert (= (and b!4771973 (not res!2024203)) b!4771969))

(assert (= (and b!4771969 (not res!2024205)) b!4771968))

(assert (= start!488586 b!4771971))

(declare-fun m!5744502 () Bool)

(assert (=> start!488586 m!5744502))

(declare-fun m!5744504 () Bool)

(assert (=> start!488586 m!5744504))

(declare-fun m!5744506 () Bool)

(assert (=> b!4771972 m!5744506))

(declare-fun m!5744508 () Bool)

(assert (=> b!4771972 m!5744508))

(declare-fun m!5744510 () Bool)

(assert (=> b!4771972 m!5744510))

(declare-fun m!5744512 () Bool)

(assert (=> b!4771972 m!5744512))

(declare-fun m!5744514 () Bool)

(assert (=> b!4771972 m!5744514))

(declare-fun m!5744516 () Bool)

(assert (=> b!4771972 m!5744516))

(declare-fun m!5744518 () Bool)

(assert (=> b!4771972 m!5744518))

(assert (=> b!4771972 m!5744514))

(declare-fun m!5744520 () Bool)

(assert (=> b!4771972 m!5744520))

(declare-fun m!5744522 () Bool)

(assert (=> b!4771972 m!5744522))

(declare-fun m!5744524 () Bool)

(assert (=> b!4771972 m!5744524))

(declare-fun m!5744526 () Bool)

(assert (=> b!4771972 m!5744526))

(declare-fun m!5744528 () Bool)

(assert (=> b!4771970 m!5744528))

(declare-fun m!5744530 () Bool)

(assert (=> b!4771970 m!5744530))

(declare-fun m!5744532 () Bool)

(assert (=> b!4771974 m!5744532))

(declare-fun m!5744534 () Bool)

(assert (=> b!4771973 m!5744534))

(assert (=> b!4771973 m!5744502))

(declare-fun m!5744536 () Bool)

(assert (=> b!4771973 m!5744536))

(declare-fun m!5744538 () Bool)

(assert (=> b!4771973 m!5744538))

(declare-fun m!5744540 () Bool)

(assert (=> b!4771973 m!5744540))

(assert (=> b!4771968 m!5744502))

(assert (=> b!4771969 m!5744502))

(declare-fun m!5744542 () Bool)

(assert (=> b!4771969 m!5744542))

(declare-fun m!5744544 () Bool)

(assert (=> b!4771969 m!5744544))

(declare-fun m!5744546 () Bool)

(assert (=> b!4771969 m!5744546))

(assert (=> b!4771969 m!5744514))

(check-sat (not b!4771968) (not start!488586) (not b!4771973) tp_is_empty!32701 (not b!4771974) (not b!4771970) (not b!4771971) (not b!4771972) (not b!4771969) tp_is_empty!32703)
(check-sat)
