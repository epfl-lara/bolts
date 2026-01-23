; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489068 () Bool)

(assert start!489068)

(declare-fun b!4773829 () Bool)

(declare-fun e!2980209 () Bool)

(declare-fun tp!1356891 () Bool)

(assert (=> b!4773829 (= e!2980209 tp!1356891)))

(declare-fun b!4773830 () Bool)

(declare-fun res!2025353 () Bool)

(declare-fun e!2980211 () Bool)

(assert (=> b!4773830 (=> (not res!2025353) (not e!2980211))))

(declare-datatypes ((K!15277 0))(
  ( (K!15278 (val!20527 Int)) )
))
(declare-datatypes ((V!15523 0))(
  ( (V!15524 (val!20528 Int)) )
))
(declare-datatypes ((tuple2!56028 0))(
  ( (tuple2!56029 (_1!31308 K!15277) (_2!31308 V!15523)) )
))
(declare-datatypes ((List!53869 0))(
  ( (Nil!53745) (Cons!53745 (h!60159 tuple2!56028) (t!361319 List!53869)) )
))
(declare-datatypes ((tuple2!56030 0))(
  ( (tuple2!56031 (_1!31309 (_ BitVec 64)) (_2!31309 List!53869)) )
))
(declare-datatypes ((List!53870 0))(
  ( (Nil!53746) (Cons!53746 (h!60160 tuple2!56030) (t!361320 List!53870)) )
))
(declare-datatypes ((ListLongMap!4931 0))(
  ( (ListLongMap!4932 (toList!6517 List!53870)) )
))
(declare-fun lm!1309 () ListLongMap!4931)

(declare-datatypes ((Hashable!6715 0))(
  ( (HashableExt!6714 (__x!32738 Int)) )
))
(declare-fun hashF!980 () Hashable!6715)

(declare-fun allKeysSameHashInMap!2120 (ListLongMap!4931 Hashable!6715) Bool)

(assert (=> b!4773830 (= res!2025353 (allKeysSameHashInMap!2120 lm!1309 hashF!980))))

(declare-fun b!4773831 () Bool)

(declare-fun e!2980210 () Bool)

(assert (=> b!4773831 (= e!2980211 (not e!2980210))))

(declare-fun res!2025354 () Bool)

(assert (=> b!4773831 (=> res!2025354 e!2980210)))

(declare-datatypes ((Option!12808 0))(
  ( (None!12807) (Some!12807 (v!47948 tuple2!56028)) )
))
(declare-fun lt!1936768 () Option!12808)

(declare-fun v!9615 () V!15523)

(declare-fun get!18202 (Option!12808) tuple2!56028)

(assert (=> b!4773831 (= res!2025354 (not (= (_2!31308 (get!18202 lt!1936768)) v!9615)))))

(declare-fun isDefined!9954 (Option!12808) Bool)

(assert (=> b!4773831 (isDefined!9954 lt!1936768)))

(declare-fun lt!1936773 () List!53869)

(declare-fun key!2872 () K!15277)

(declare-fun getPair!723 (List!53869 K!15277) Option!12808)

(assert (=> b!4773831 (= lt!1936768 (getPair!723 lt!1936773 key!2872))))

(declare-fun lt!1936774 () tuple2!56030)

(declare-datatypes ((Unit!138734 0))(
  ( (Unit!138735) )
))
(declare-fun lt!1936766 () Unit!138734)

(declare-fun lambda!226046 () Int)

(declare-fun forallContained!3956 (List!53870 Int tuple2!56030) Unit!138734)

(assert (=> b!4773831 (= lt!1936766 (forallContained!3956 (toList!6517 lm!1309) lambda!226046 lt!1936774))))

(declare-fun lt!1936772 () Unit!138734)

(declare-fun lemmaInGenMapThenGetPairDefined!497 (ListLongMap!4931 K!15277 Hashable!6715) Unit!138734)

(assert (=> b!4773831 (= lt!1936772 (lemmaInGenMapThenGetPairDefined!497 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936767 () Unit!138734)

(assert (=> b!4773831 (= lt!1936767 (forallContained!3956 (toList!6517 lm!1309) lambda!226046 lt!1936774))))

(declare-fun contains!17191 (List!53870 tuple2!56030) Bool)

(assert (=> b!4773831 (contains!17191 (toList!6517 lm!1309) lt!1936774)))

(declare-fun lt!1936775 () (_ BitVec 64))

(assert (=> b!4773831 (= lt!1936774 (tuple2!56031 lt!1936775 lt!1936773))))

(declare-fun lt!1936770 () Unit!138734)

(declare-fun lemmaGetValueImpliesTupleContained!518 (ListLongMap!4931 (_ BitVec 64) List!53869) Unit!138734)

(assert (=> b!4773831 (= lt!1936770 (lemmaGetValueImpliesTupleContained!518 lm!1309 lt!1936775 lt!1936773))))

(declare-fun apply!12778 (ListLongMap!4931 (_ BitVec 64)) List!53869)

(assert (=> b!4773831 (= lt!1936773 (apply!12778 lm!1309 lt!1936775))))

(declare-fun contains!17192 (ListLongMap!4931 (_ BitVec 64)) Bool)

(assert (=> b!4773831 (contains!17192 lm!1309 lt!1936775)))

(declare-fun hash!4690 (Hashable!6715 K!15277) (_ BitVec 64))

(assert (=> b!4773831 (= lt!1936775 (hash!4690 hashF!980 key!2872))))

(declare-fun lt!1936771 () Unit!138734)

(declare-fun lemmaInGenMapThenLongMapContainsHash!927 (ListLongMap!4931 K!15277 Hashable!6715) Unit!138734)

(assert (=> b!4773831 (= lt!1936771 (lemmaInGenMapThenLongMapContainsHash!927 lm!1309 key!2872 hashF!980))))

(declare-fun res!2025355 () Bool)

(assert (=> start!489068 (=> (not res!2025355) (not e!2980211))))

(declare-fun forall!11983 (List!53870 Int) Bool)

(assert (=> start!489068 (= res!2025355 (forall!11983 (toList!6517 lm!1309) lambda!226046))))

(assert (=> start!489068 e!2980211))

(declare-fun inv!69304 (ListLongMap!4931) Bool)

(assert (=> start!489068 (and (inv!69304 lm!1309) e!2980209)))

(assert (=> start!489068 true))

(declare-fun tp_is_empty!32837 () Bool)

(assert (=> start!489068 tp_is_empty!32837))

(declare-fun tp_is_empty!32839 () Bool)

(assert (=> start!489068 tp_is_empty!32839))

(declare-fun b!4773832 () Bool)

(assert (=> b!4773832 (= e!2980210 true)))

(declare-fun getValue!29 (List!53870 K!15277) V!15523)

(assert (=> b!4773832 (= (getValue!29 (toList!6517 lm!1309) key!2872) v!9615)))

(declare-fun lt!1936776 () Unit!138734)

(declare-fun lemmaGetValueEquivToGetPair!29 (ListLongMap!4931 K!15277 V!15523 Hashable!6715) Unit!138734)

(assert (=> b!4773832 (= lt!1936776 (lemmaGetValueEquivToGetPair!29 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!371 (List!53870 K!15277) Bool)

(assert (=> b!4773832 (containsKeyBiggerList!371 (toList!6517 lm!1309) key!2872)))

(declare-fun lt!1936769 () Unit!138734)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!229 (ListLongMap!4931 K!15277 Hashable!6715) Unit!138734)

(assert (=> b!4773832 (= lt!1936769 (lemmaInLongMapThenContainsKeyBiggerList!229 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773833 () Bool)

(declare-fun res!2025356 () Bool)

(assert (=> b!4773833 (=> (not res!2025356) (not e!2980211))))

(declare-datatypes ((ListMap!5997 0))(
  ( (ListMap!5998 (toList!6518 List!53869)) )
))
(declare-fun contains!17193 (ListMap!5997 K!15277) Bool)

(declare-fun extractMap!2250 (List!53870) ListMap!5997)

(assert (=> b!4773833 (= res!2025356 (contains!17193 (extractMap!2250 (toList!6517 lm!1309)) key!2872))))

(assert (= (and start!489068 res!2025355) b!4773830))

(assert (= (and b!4773830 res!2025353) b!4773833))

(assert (= (and b!4773833 res!2025356) b!4773831))

(assert (= (and b!4773831 (not res!2025354)) b!4773832))

(assert (= start!489068 b!4773829))

(declare-fun m!5747536 () Bool)

(assert (=> b!4773833 m!5747536))

(assert (=> b!4773833 m!5747536))

(declare-fun m!5747538 () Bool)

(assert (=> b!4773833 m!5747538))

(declare-fun m!5747540 () Bool)

(assert (=> b!4773830 m!5747540))

(declare-fun m!5747542 () Bool)

(assert (=> b!4773831 m!5747542))

(declare-fun m!5747544 () Bool)

(assert (=> b!4773831 m!5747544))

(declare-fun m!5747546 () Bool)

(assert (=> b!4773831 m!5747546))

(declare-fun m!5747548 () Bool)

(assert (=> b!4773831 m!5747548))

(declare-fun m!5747550 () Bool)

(assert (=> b!4773831 m!5747550))

(declare-fun m!5747552 () Bool)

(assert (=> b!4773831 m!5747552))

(declare-fun m!5747554 () Bool)

(assert (=> b!4773831 m!5747554))

(declare-fun m!5747556 () Bool)

(assert (=> b!4773831 m!5747556))

(declare-fun m!5747558 () Bool)

(assert (=> b!4773831 m!5747558))

(assert (=> b!4773831 m!5747544))

(declare-fun m!5747560 () Bool)

(assert (=> b!4773831 m!5747560))

(declare-fun m!5747562 () Bool)

(assert (=> b!4773831 m!5747562))

(declare-fun m!5747564 () Bool)

(assert (=> start!489068 m!5747564))

(declare-fun m!5747566 () Bool)

(assert (=> start!489068 m!5747566))

(declare-fun m!5747568 () Bool)

(assert (=> b!4773832 m!5747568))

(declare-fun m!5747570 () Bool)

(assert (=> b!4773832 m!5747570))

(declare-fun m!5747572 () Bool)

(assert (=> b!4773832 m!5747572))

(declare-fun m!5747574 () Bool)

(assert (=> b!4773832 m!5747574))

(push 1)

(assert (not b!4773833))

(assert tp_is_empty!32839)

(assert tp_is_empty!32837)

(assert (not b!4773832))

(assert (not start!489068))

(assert (not b!4773831))

(assert (not b!4773830))

(assert (not b!4773829))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

