; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488590 () Bool)

(assert start!488590)

(declare-fun b!4772005 () Bool)

(declare-fun e!2978981 () Bool)

(declare-fun e!2978983 () Bool)

(assert (=> b!4772005 (= e!2978981 (not e!2978983))))

(declare-fun res!2024236 () Bool)

(assert (=> b!4772005 (=> res!2024236 e!2978983)))

(declare-datatypes ((K!15184 0))(
  ( (K!15185 (val!20453 Int)) )
))
(declare-datatypes ((V!15430 0))(
  ( (V!15431 (val!20454 Int)) )
))
(declare-datatypes ((tuple2!55880 0))(
  ( (tuple2!55881 (_1!31234 K!15184) (_2!31234 V!15430)) )
))
(declare-datatypes ((Option!12773 0))(
  ( (None!12772) (Some!12772 (v!47899 tuple2!55880)) )
))
(declare-fun lt!1934907 () Option!12773)

(declare-fun v!9615 () V!15430)

(declare-fun get!18152 (Option!12773) tuple2!55880)

(assert (=> b!4772005 (= res!2024236 (not (= (_2!31234 (get!18152 lt!1934907)) v!9615)))))

(declare-fun isDefined!9919 (Option!12773) Bool)

(assert (=> b!4772005 (isDefined!9919 lt!1934907)))

(declare-datatypes ((List!53789 0))(
  ( (Nil!53665) (Cons!53665 (h!60077 tuple2!55880) (t!361239 List!53789)) )
))
(declare-fun lt!1934906 () List!53789)

(declare-fun key!2872 () K!15184)

(declare-fun getPair!698 (List!53789 K!15184) Option!12773)

(assert (=> b!4772005 (= lt!1934907 (getPair!698 lt!1934906 key!2872))))

(declare-datatypes ((Unit!138560 0))(
  ( (Unit!138561) )
))
(declare-fun lt!1934903 () Unit!138560)

(declare-datatypes ((tuple2!55882 0))(
  ( (tuple2!55883 (_1!31235 (_ BitVec 64)) (_2!31235 List!53789)) )
))
(declare-datatypes ((List!53790 0))(
  ( (Nil!53666) (Cons!53666 (h!60078 tuple2!55882) (t!361240 List!53790)) )
))
(declare-datatypes ((ListLongMap!4857 0))(
  ( (ListLongMap!4858 (toList!6443 List!53790)) )
))
(declare-fun lm!1309 () ListLongMap!4857)

(declare-fun lambda!225449 () Int)

(declare-fun lt!1934893 () tuple2!55882)

(declare-fun forallContained!3923 (List!53790 Int tuple2!55882) Unit!138560)

(assert (=> b!4772005 (= lt!1934903 (forallContained!3923 (toList!6443 lm!1309) lambda!225449 lt!1934893))))

(declare-datatypes ((Hashable!6678 0))(
  ( (HashableExt!6677 (__x!32701 Int)) )
))
(declare-fun hashF!980 () Hashable!6678)

(declare-fun lt!1934896 () Unit!138560)

(declare-fun lemmaInGenMapThenGetPairDefined!472 (ListLongMap!4857 K!15184 Hashable!6678) Unit!138560)

(assert (=> b!4772005 (= lt!1934896 (lemmaInGenMapThenGetPairDefined!472 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934901 () Unit!138560)

(assert (=> b!4772005 (= lt!1934901 (forallContained!3923 (toList!6443 lm!1309) lambda!225449 lt!1934893))))

(declare-fun contains!17082 (List!53790 tuple2!55882) Bool)

(assert (=> b!4772005 (contains!17082 (toList!6443 lm!1309) lt!1934893)))

(declare-fun lt!1934898 () (_ BitVec 64))

(assert (=> b!4772005 (= lt!1934893 (tuple2!55883 lt!1934898 lt!1934906))))

(declare-fun lt!1934895 () Unit!138560)

(declare-fun lemmaGetValueImpliesTupleContained!489 (ListLongMap!4857 (_ BitVec 64) List!53789) Unit!138560)

(assert (=> b!4772005 (= lt!1934895 (lemmaGetValueImpliesTupleContained!489 lm!1309 lt!1934898 lt!1934906))))

(declare-fun apply!12736 (ListLongMap!4857 (_ BitVec 64)) List!53789)

(assert (=> b!4772005 (= lt!1934906 (apply!12736 lm!1309 lt!1934898))))

(declare-fun contains!17083 (ListLongMap!4857 (_ BitVec 64)) Bool)

(assert (=> b!4772005 (contains!17083 lm!1309 lt!1934898)))

(declare-fun hash!4653 (Hashable!6678 K!15184) (_ BitVec 64))

(assert (=> b!4772005 (= lt!1934898 (hash!4653 hashF!980 key!2872))))

(declare-fun lt!1934894 () Unit!138560)

(declare-fun lemmaInGenMapThenLongMapContainsHash!894 (ListLongMap!4857 K!15184 Hashable!6678) Unit!138560)

(assert (=> b!4772005 (= lt!1934894 (lemmaInGenMapThenLongMapContainsHash!894 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772006 () Bool)

(declare-fun res!2024232 () Bool)

(declare-fun e!2978984 () Bool)

(assert (=> b!4772006 (=> (not res!2024232) (not e!2978984))))

(declare-fun allKeysSameHashInMap!2083 (ListLongMap!4857 Hashable!6678) Bool)

(assert (=> b!4772006 (= res!2024232 (allKeysSameHashInMap!2083 lm!1309 hashF!980))))

(declare-fun b!4772007 () Bool)

(declare-fun e!2978982 () Bool)

(assert (=> b!4772007 (= e!2978982 true)))

(declare-fun lt!1934905 () Unit!138560)

(assert (=> b!4772007 (= lt!1934905 (forallContained!3923 (toList!6443 lm!1309) lambda!225449 lt!1934893))))

(declare-datatypes ((ListMap!5923 0))(
  ( (ListMap!5924 (toList!6444 List!53789)) )
))
(declare-fun lt!1934899 () ListMap!5923)

(declare-fun apply!12737 (ListMap!5923 K!15184) V!15430)

(assert (=> b!4772007 (= (apply!12737 lt!1934899 key!2872) v!9615)))

(declare-fun lt!1934902 () Unit!138560)

(declare-fun lemmaExtractMapPreservesMapping!14 (ListLongMap!4857 K!15184 V!15430 Hashable!6678) Unit!138560)

(assert (=> b!4772007 (= lt!1934902 (lemmaExtractMapPreservesMapping!14 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1934897 () Unit!138560)

(declare-fun lemmaInGenericMapThenInLongMap!230 (ListLongMap!4857 K!15184 Hashable!6678) Unit!138560)

(assert (=> b!4772007 (= lt!1934897 (lemmaInGenericMapThenInLongMap!230 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772008 () Bool)

(declare-fun e!2978980 () Bool)

(declare-fun tp!1356726 () Bool)

(assert (=> b!4772008 (= e!2978980 tp!1356726)))

(declare-fun res!2024233 () Bool)

(assert (=> start!488590 (=> (not res!2024233) (not e!2978984))))

(declare-fun forall!11942 (List!53790 Int) Bool)

(assert (=> start!488590 (= res!2024233 (forall!11942 (toList!6443 lm!1309) lambda!225449))))

(assert (=> start!488590 e!2978984))

(declare-fun inv!69210 (ListLongMap!4857) Bool)

(assert (=> start!488590 (and (inv!69210 lm!1309) e!2978980)))

(assert (=> start!488590 true))

(declare-fun tp_is_empty!32709 () Bool)

(assert (=> start!488590 tp_is_empty!32709))

(declare-fun tp_is_empty!32711 () Bool)

(assert (=> start!488590 tp_is_empty!32711))

(declare-fun b!4772009 () Bool)

(assert (=> b!4772009 (= e!2978984 e!2978981)))

(declare-fun res!2024235 () Bool)

(assert (=> b!4772009 (=> (not res!2024235) (not e!2978981))))

(declare-fun contains!17084 (ListMap!5923 K!15184) Bool)

(assert (=> b!4772009 (= res!2024235 (contains!17084 lt!1934899 key!2872))))

(declare-fun extractMap!2213 (List!53790) ListMap!5923)

(assert (=> b!4772009 (= lt!1934899 (extractMap!2213 (toList!6443 lm!1309)))))

(declare-fun b!4772010 () Bool)

(assert (=> b!4772010 (= e!2978983 e!2978982)))

(declare-fun res!2024234 () Bool)

(assert (=> b!4772010 (=> res!2024234 e!2978982)))

(assert (=> b!4772010 (= res!2024234 (not (forall!11942 (toList!6443 lm!1309) lambda!225449)))))

(declare-fun getValue!18 (List!53790 K!15184) V!15430)

(assert (=> b!4772010 (= (getValue!18 (toList!6443 lm!1309) key!2872) v!9615)))

(declare-fun lt!1934904 () Unit!138560)

(declare-fun lemmaGetValueEquivToGetPair!18 (ListLongMap!4857 K!15184 V!15430 Hashable!6678) Unit!138560)

(assert (=> b!4772010 (= lt!1934904 (lemmaGetValueEquivToGetPair!18 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!352 (List!53790 K!15184) Bool)

(assert (=> b!4772010 (containsKeyBiggerList!352 (toList!6443 lm!1309) key!2872)))

(declare-fun lt!1934900 () Unit!138560)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!210 (ListLongMap!4857 K!15184 Hashable!6678) Unit!138560)

(assert (=> b!4772010 (= lt!1934900 (lemmaInLongMapThenContainsKeyBiggerList!210 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488590 res!2024233) b!4772006))

(assert (= (and b!4772006 res!2024232) b!4772009))

(assert (= (and b!4772009 res!2024235) b!4772005))

(assert (= (and b!4772005 (not res!2024236)) b!4772010))

(assert (= (and b!4772010 (not res!2024234)) b!4772007))

(assert (= start!488590 b!4772008))

(declare-fun m!5744594 () Bool)

(assert (=> b!4772005 m!5744594))

(declare-fun m!5744596 () Bool)

(assert (=> b!4772005 m!5744596))

(declare-fun m!5744598 () Bool)

(assert (=> b!4772005 m!5744598))

(declare-fun m!5744600 () Bool)

(assert (=> b!4772005 m!5744600))

(declare-fun m!5744602 () Bool)

(assert (=> b!4772005 m!5744602))

(assert (=> b!4772005 m!5744600))

(declare-fun m!5744604 () Bool)

(assert (=> b!4772005 m!5744604))

(declare-fun m!5744606 () Bool)

(assert (=> b!4772005 m!5744606))

(declare-fun m!5744608 () Bool)

(assert (=> b!4772005 m!5744608))

(declare-fun m!5744610 () Bool)

(assert (=> b!4772005 m!5744610))

(declare-fun m!5744612 () Bool)

(assert (=> b!4772005 m!5744612))

(declare-fun m!5744614 () Bool)

(assert (=> b!4772005 m!5744614))

(declare-fun m!5744616 () Bool)

(assert (=> start!488590 m!5744616))

(declare-fun m!5744618 () Bool)

(assert (=> start!488590 m!5744618))

(declare-fun m!5744620 () Bool)

(assert (=> b!4772010 m!5744620))

(declare-fun m!5744622 () Bool)

(assert (=> b!4772010 m!5744622))

(assert (=> b!4772010 m!5744616))

(declare-fun m!5744624 () Bool)

(assert (=> b!4772010 m!5744624))

(declare-fun m!5744626 () Bool)

(assert (=> b!4772010 m!5744626))

(assert (=> b!4772007 m!5744600))

(declare-fun m!5744628 () Bool)

(assert (=> b!4772007 m!5744628))

(declare-fun m!5744630 () Bool)

(assert (=> b!4772007 m!5744630))

(declare-fun m!5744632 () Bool)

(assert (=> b!4772007 m!5744632))

(declare-fun m!5744634 () Bool)

(assert (=> b!4772006 m!5744634))

(declare-fun m!5744636 () Bool)

(assert (=> b!4772009 m!5744636))

(declare-fun m!5744638 () Bool)

(assert (=> b!4772009 m!5744638))

(check-sat tp_is_empty!32711 tp_is_empty!32709 (not b!4772009) (not b!4772010) (not b!4772006) (not b!4772007) (not b!4772005) (not b!4772008) (not start!488590))
(check-sat)
