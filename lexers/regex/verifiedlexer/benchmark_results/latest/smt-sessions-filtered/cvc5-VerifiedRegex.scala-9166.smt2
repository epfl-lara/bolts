; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488536 () Bool)

(assert start!488536)

(declare-fun b!4771495 () Bool)

(declare-fun e!2978602 () Bool)

(assert (=> b!4771495 (= e!2978602 true)))

(declare-datatypes ((Unit!138506 0))(
  ( (Unit!138507) )
))
(declare-fun lt!1933818 () Unit!138506)

(declare-fun lambda!225120 () Int)

(declare-datatypes ((K!15117 0))(
  ( (K!15118 (val!20399 Int)) )
))
(declare-datatypes ((V!15363 0))(
  ( (V!15364 (val!20400 Int)) )
))
(declare-datatypes ((tuple2!55772 0))(
  ( (tuple2!55773 (_1!31180 K!15117) (_2!31180 V!15363)) )
))
(declare-datatypes ((List!53735 0))(
  ( (Nil!53611) (Cons!53611 (h!60023 tuple2!55772) (t!361185 List!53735)) )
))
(declare-datatypes ((tuple2!55774 0))(
  ( (tuple2!55775 (_1!31181 (_ BitVec 64)) (_2!31181 List!53735)) )
))
(declare-fun lt!1933814 () tuple2!55774)

(declare-datatypes ((List!53736 0))(
  ( (Nil!53612) (Cons!53612 (h!60024 tuple2!55774) (t!361186 List!53736)) )
))
(declare-datatypes ((ListLongMap!4803 0))(
  ( (ListLongMap!4804 (toList!6389 List!53736)) )
))
(declare-fun lm!1309 () ListLongMap!4803)

(declare-fun forallContained!3896 (List!53736 Int tuple2!55774) Unit!138506)

(assert (=> b!4771495 (= lt!1933818 (forallContained!3896 (toList!6389 lm!1309) lambda!225120 lt!1933814))))

(declare-fun res!2023803 () Bool)

(declare-fun e!2978603 () Bool)

(assert (=> start!488536 (=> (not res!2023803) (not e!2978603))))

(declare-fun forall!11915 (List!53736 Int) Bool)

(assert (=> start!488536 (= res!2023803 (forall!11915 (toList!6389 lm!1309) lambda!225120))))

(assert (=> start!488536 e!2978603))

(declare-fun e!2978601 () Bool)

(declare-fun inv!69144 (ListLongMap!4803) Bool)

(assert (=> start!488536 (and (inv!69144 lm!1309) e!2978601)))

(assert (=> start!488536 true))

(declare-fun tp_is_empty!32601 () Bool)

(assert (=> start!488536 tp_is_empty!32601))

(declare-fun tp_is_empty!32603 () Bool)

(assert (=> start!488536 tp_is_empty!32603))

(declare-fun b!4771496 () Bool)

(declare-fun tp!1356645 () Bool)

(assert (=> b!4771496 (= e!2978601 tp!1356645)))

(declare-fun b!4771497 () Bool)

(declare-fun res!2023804 () Bool)

(assert (=> b!4771497 (=> (not res!2023804) (not e!2978603))))

(declare-fun key!2872 () K!15117)

(declare-datatypes ((ListMap!5869 0))(
  ( (ListMap!5870 (toList!6390 List!53735)) )
))
(declare-fun contains!17001 (ListMap!5869 K!15117) Bool)

(declare-fun extractMap!2186 (List!53736) ListMap!5869)

(assert (=> b!4771497 (= res!2023804 (contains!17001 (extractMap!2186 (toList!6389 lm!1309)) key!2872))))

(declare-fun b!4771498 () Bool)

(declare-fun res!2023805 () Bool)

(assert (=> b!4771498 (=> res!2023805 e!2978602)))

(assert (=> b!4771498 (= res!2023805 (not (forall!11915 (toList!6389 lm!1309) lambda!225120)))))

(declare-fun b!4771499 () Bool)

(assert (=> b!4771499 (= e!2978603 (not e!2978602))))

(declare-fun res!2023806 () Bool)

(assert (=> b!4771499 (=> res!2023806 e!2978602)))

(declare-datatypes ((Option!12746 0))(
  ( (None!12745) (Some!12745 (v!47872 tuple2!55772)) )
))
(declare-fun lt!1933817 () Option!12746)

(declare-fun v!9615 () V!15363)

(declare-fun get!18112 (Option!12746) tuple2!55772)

(assert (=> b!4771499 (= res!2023806 (not (= (_2!31180 (get!18112 lt!1933817)) v!9615)))))

(declare-fun isDefined!9892 (Option!12746) Bool)

(assert (=> b!4771499 (isDefined!9892 lt!1933817)))

(declare-fun lt!1933821 () List!53735)

(declare-fun getPair!671 (List!53735 K!15117) Option!12746)

(assert (=> b!4771499 (= lt!1933817 (getPair!671 lt!1933821 key!2872))))

(declare-fun lt!1933816 () Unit!138506)

(assert (=> b!4771499 (= lt!1933816 (forallContained!3896 (toList!6389 lm!1309) lambda!225120 lt!1933814))))

(declare-datatypes ((Hashable!6651 0))(
  ( (HashableExt!6650 (__x!32674 Int)) )
))
(declare-fun hashF!980 () Hashable!6651)

(declare-fun lt!1933820 () Unit!138506)

(declare-fun lemmaInGenMapThenGetPairDefined!445 (ListLongMap!4803 K!15117 Hashable!6651) Unit!138506)

(assert (=> b!4771499 (= lt!1933820 (lemmaInGenMapThenGetPairDefined!445 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1933815 () Unit!138506)

(assert (=> b!4771499 (= lt!1933815 (forallContained!3896 (toList!6389 lm!1309) lambda!225120 lt!1933814))))

(declare-fun contains!17002 (List!53736 tuple2!55774) Bool)

(assert (=> b!4771499 (contains!17002 (toList!6389 lm!1309) lt!1933814)))

(declare-fun lt!1933813 () (_ BitVec 64))

(assert (=> b!4771499 (= lt!1933814 (tuple2!55775 lt!1933813 lt!1933821))))

(declare-fun lt!1933812 () Unit!138506)

(declare-fun lemmaGetValueImpliesTupleContained!462 (ListLongMap!4803 (_ BitVec 64) List!53735) Unit!138506)

(assert (=> b!4771499 (= lt!1933812 (lemmaGetValueImpliesTupleContained!462 lm!1309 lt!1933813 lt!1933821))))

(declare-fun apply!12696 (ListLongMap!4803 (_ BitVec 64)) List!53735)

(assert (=> b!4771499 (= lt!1933821 (apply!12696 lm!1309 lt!1933813))))

(declare-fun contains!17003 (ListLongMap!4803 (_ BitVec 64)) Bool)

(assert (=> b!4771499 (contains!17003 lm!1309 lt!1933813)))

(declare-fun hash!4626 (Hashable!6651 K!15117) (_ BitVec 64))

(assert (=> b!4771499 (= lt!1933813 (hash!4626 hashF!980 key!2872))))

(declare-fun lt!1933819 () Unit!138506)

(declare-fun lemmaInGenMapThenLongMapContainsHash!867 (ListLongMap!4803 K!15117 Hashable!6651) Unit!138506)

(assert (=> b!4771499 (= lt!1933819 (lemmaInGenMapThenLongMapContainsHash!867 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771500 () Bool)

(declare-fun res!2023807 () Bool)

(assert (=> b!4771500 (=> (not res!2023807) (not e!2978603))))

(declare-fun allKeysSameHashInMap!2056 (ListLongMap!4803 Hashable!6651) Bool)

(assert (=> b!4771500 (= res!2023807 (allKeysSameHashInMap!2056 lm!1309 hashF!980))))

(assert (= (and start!488536 res!2023803) b!4771500))

(assert (= (and b!4771500 res!2023807) b!4771497))

(assert (= (and b!4771497 res!2023804) b!4771499))

(assert (= (and b!4771499 (not res!2023806)) b!4771498))

(assert (= (and b!4771498 (not res!2023805)) b!4771495))

(assert (= start!488536 b!4771496))

(declare-fun m!5743472 () Bool)

(assert (=> b!4771498 m!5743472))

(declare-fun m!5743474 () Bool)

(assert (=> b!4771499 m!5743474))

(declare-fun m!5743476 () Bool)

(assert (=> b!4771499 m!5743476))

(declare-fun m!5743478 () Bool)

(assert (=> b!4771499 m!5743478))

(declare-fun m!5743480 () Bool)

(assert (=> b!4771499 m!5743480))

(declare-fun m!5743482 () Bool)

(assert (=> b!4771499 m!5743482))

(declare-fun m!5743484 () Bool)

(assert (=> b!4771499 m!5743484))

(declare-fun m!5743486 () Bool)

(assert (=> b!4771499 m!5743486))

(assert (=> b!4771499 m!5743480))

(declare-fun m!5743488 () Bool)

(assert (=> b!4771499 m!5743488))

(declare-fun m!5743490 () Bool)

(assert (=> b!4771499 m!5743490))

(declare-fun m!5743492 () Bool)

(assert (=> b!4771499 m!5743492))

(declare-fun m!5743494 () Bool)

(assert (=> b!4771499 m!5743494))

(assert (=> start!488536 m!5743472))

(declare-fun m!5743496 () Bool)

(assert (=> start!488536 m!5743496))

(declare-fun m!5743498 () Bool)

(assert (=> b!4771497 m!5743498))

(assert (=> b!4771497 m!5743498))

(declare-fun m!5743500 () Bool)

(assert (=> b!4771497 m!5743500))

(declare-fun m!5743502 () Bool)

(assert (=> b!4771500 m!5743502))

(assert (=> b!4771495 m!5743480))

(push 1)

(assert (not b!4771497))

(assert (not b!4771496))

(assert (not b!4771498))

(assert (not b!4771495))

(assert (not b!4771500))

(assert (not start!488536))

(assert tp_is_empty!32601)

(assert tp_is_empty!32603)

(assert (not b!4771499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

