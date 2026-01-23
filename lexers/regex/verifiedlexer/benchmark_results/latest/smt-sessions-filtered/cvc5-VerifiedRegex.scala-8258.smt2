; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429178 () Bool)

(assert start!429178)

(declare-fun b!4410842 () Bool)

(declare-fun e!2746881 () Bool)

(declare-datatypes ((V!10939 0))(
  ( (V!10940 (val!16825 Int)) )
))
(declare-datatypes ((K!10693 0))(
  ( (K!10694 (val!16826 Int)) )
))
(declare-datatypes ((tuple2!48970 0))(
  ( (tuple2!48971 (_1!27779 K!10693) (_2!27779 V!10939)) )
))
(declare-datatypes ((List!49463 0))(
  ( (Nil!49339) (Cons!49339 (h!54980 tuple2!48970) (t!356401 List!49463)) )
))
(declare-datatypes ((tuple2!48972 0))(
  ( (tuple2!48973 (_1!27780 (_ BitVec 64)) (_2!27780 List!49463)) )
))
(declare-datatypes ((List!49464 0))(
  ( (Nil!49340) (Cons!49340 (h!54981 tuple2!48972) (t!356402 List!49464)) )
))
(declare-datatypes ((ListLongMap!1933 0))(
  ( (ListLongMap!1934 (toList!3283 List!49464)) )
))
(declare-fun lm!1707 () ListLongMap!1933)

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4410842 (= e!2746881 (or (and (is-Cons!49340 (toList!3283 lm!1707)) (= (_1!27780 (h!54981 (toList!3283 lm!1707))) hash!377)) (and (is-Cons!49340 (toList!3283 lm!1707)) (not (= (_1!27780 (h!54981 (toList!3283 lm!1707))) hash!377))) (is-Nil!49340 (toList!3283 lm!1707))))))

(declare-fun e!2746883 () Bool)

(assert (=> b!4410842 e!2746883))

(declare-fun res!1820605 () Bool)

(assert (=> b!4410842 (=> (not res!1820605) (not e!2746883))))

(declare-fun lt!1613903 () ListLongMap!1933)

(declare-fun lambda!150630 () Int)

(declare-fun forall!9410 (List!49464 Int) Bool)

(assert (=> b!4410842 (= res!1820605 (forall!9410 (toList!3283 lt!1613903) lambda!150630))))

(declare-fun newBucket!200 () List!49463)

(declare-fun +!915 (ListLongMap!1933 tuple2!48972) ListLongMap!1933)

(assert (=> b!4410842 (= lt!1613903 (+!915 lm!1707 (tuple2!48973 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!80413 0))(
  ( (Unit!80414) )
))
(declare-fun lt!1613907 () Unit!80413)

(declare-fun addValidProp!296 (ListLongMap!1933 Int (_ BitVec 64) List!49463) Unit!80413)

(assert (=> b!4410842 (= lt!1613907 (addValidProp!296 lm!1707 lambda!150630 hash!377 newBucket!200))))

(assert (=> b!4410842 (forall!9410 (toList!3283 lm!1707) lambda!150630)))

(declare-fun b!4410843 () Bool)

(declare-fun e!2746880 () Bool)

(assert (=> b!4410843 (= e!2746880 (not e!2746881))))

(declare-fun res!1820602 () Bool)

(assert (=> b!4410843 (=> res!1820602 e!2746881)))

(declare-fun lt!1613904 () List!49463)

(declare-fun key!3918 () K!10693)

(declare-fun newValue!99 () V!10939)

(declare-fun removePairForKey!618 (List!49463 K!10693) List!49463)

(assert (=> b!4410843 (= res!1820602 (not (= newBucket!200 (Cons!49339 (tuple2!48971 key!3918 newValue!99) (removePairForKey!618 lt!1613904 key!3918)))))))

(declare-fun lt!1613905 () tuple2!48972)

(declare-fun lt!1613906 () Unit!80413)

(declare-fun forallContained!2044 (List!49464 Int tuple2!48972) Unit!80413)

(assert (=> b!4410843 (= lt!1613906 (forallContained!2044 (toList!3283 lm!1707) lambda!150630 lt!1613905))))

(declare-fun contains!11764 (List!49464 tuple2!48972) Bool)

(assert (=> b!4410843 (contains!11764 (toList!3283 lm!1707) lt!1613905)))

(assert (=> b!4410843 (= lt!1613905 (tuple2!48973 hash!377 lt!1613904))))

(declare-fun lt!1613908 () Unit!80413)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!495 (List!49464 (_ BitVec 64) List!49463) Unit!80413)

(assert (=> b!4410843 (= lt!1613908 (lemmaGetValueByKeyImpliesContainsTuple!495 (toList!3283 lm!1707) hash!377 lt!1613904))))

(declare-fun apply!11502 (ListLongMap!1933 (_ BitVec 64)) List!49463)

(assert (=> b!4410843 (= lt!1613904 (apply!11502 lm!1707 hash!377))))

(declare-fun b!4410844 () Bool)

(declare-fun res!1820604 () Bool)

(assert (=> b!4410844 (=> (not res!1820604) (not e!2746880))))

(declare-fun contains!11765 (ListLongMap!1933 (_ BitVec 64)) Bool)

(assert (=> b!4410844 (= res!1820604 (contains!11765 lm!1707 hash!377))))

(declare-fun e!2746879 () Bool)

(declare-fun tp!1332136 () Bool)

(declare-fun b!4410845 () Bool)

(declare-fun tp_is_empty!25837 () Bool)

(declare-fun tp_is_empty!25839 () Bool)

(assert (=> b!4410845 (= e!2746879 (and tp_is_empty!25837 tp_is_empty!25839 tp!1332136))))

(declare-fun b!4410846 () Bool)

(declare-fun res!1820599 () Bool)

(assert (=> b!4410846 (=> (not res!1820599) (not e!2746880))))

(declare-datatypes ((Hashable!5042 0))(
  ( (HashableExt!5041 (__x!30745 Int)) )
))
(declare-fun hashF!1247 () Hashable!5042)

(declare-fun allKeysSameHashInMap!754 (ListLongMap!1933 Hashable!5042) Bool)

(assert (=> b!4410846 (= res!1820599 (allKeysSameHashInMap!754 lm!1707 hashF!1247))))

(declare-fun b!4410847 () Bool)

(assert (=> b!4410847 (= e!2746883 (forall!9410 (toList!3283 lt!1613903) lambda!150630))))

(declare-fun b!4410848 () Bool)

(declare-fun res!1820603 () Bool)

(assert (=> b!4410848 (=> (not res!1820603) (not e!2746880))))

(declare-datatypes ((ListMap!2527 0))(
  ( (ListMap!2528 (toList!3284 List!49463)) )
))
(declare-fun contains!11766 (ListMap!2527 K!10693) Bool)

(declare-fun extractMap!709 (List!49464) ListMap!2527)

(assert (=> b!4410848 (= res!1820603 (contains!11766 (extractMap!709 (toList!3283 lm!1707)) key!3918))))

(declare-fun b!4410849 () Bool)

(declare-fun e!2746882 () Bool)

(declare-fun tp!1332135 () Bool)

(assert (=> b!4410849 (= e!2746882 tp!1332135)))

(declare-fun res!1820600 () Bool)

(assert (=> start!429178 (=> (not res!1820600) (not e!2746880))))

(assert (=> start!429178 (= res!1820600 (forall!9410 (toList!3283 lm!1707) lambda!150630))))

(assert (=> start!429178 e!2746880))

(assert (=> start!429178 e!2746879))

(assert (=> start!429178 true))

(declare-fun inv!64880 (ListLongMap!1933) Bool)

(assert (=> start!429178 (and (inv!64880 lm!1707) e!2746882)))

(assert (=> start!429178 tp_is_empty!25837))

(assert (=> start!429178 tp_is_empty!25839))

(declare-fun b!4410850 () Bool)

(declare-fun res!1820598 () Bool)

(assert (=> b!4410850 (=> (not res!1820598) (not e!2746880))))

(declare-fun allKeysSameHash!608 (List!49463 (_ BitVec 64) Hashable!5042) Bool)

(assert (=> b!4410850 (= res!1820598 (allKeysSameHash!608 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4410851 () Bool)

(declare-fun res!1820597 () Bool)

(assert (=> b!4410851 (=> res!1820597 e!2746881)))

(declare-fun noDuplicateKeys!650 (List!49463) Bool)

(assert (=> b!4410851 (= res!1820597 (not (noDuplicateKeys!650 newBucket!200)))))

(declare-fun b!4410852 () Bool)

(declare-fun res!1820601 () Bool)

(assert (=> b!4410852 (=> (not res!1820601) (not e!2746880))))

(declare-fun hash!1945 (Hashable!5042 K!10693) (_ BitVec 64))

(assert (=> b!4410852 (= res!1820601 (= (hash!1945 hashF!1247 key!3918) hash!377))))

(assert (= (and start!429178 res!1820600) b!4410846))

(assert (= (and b!4410846 res!1820599) b!4410852))

(assert (= (and b!4410852 res!1820601) b!4410850))

(assert (= (and b!4410850 res!1820598) b!4410848))

(assert (= (and b!4410848 res!1820603) b!4410844))

(assert (= (and b!4410844 res!1820604) b!4410843))

(assert (= (and b!4410843 (not res!1820602)) b!4410851))

(assert (= (and b!4410851 (not res!1820597)) b!4410842))

(assert (= (and b!4410842 res!1820605) b!4410847))

(assert (= (and start!429178 (is-Cons!49339 newBucket!200)) b!4410845))

(assert (= start!429178 b!4410849))

(declare-fun m!5086595 () Bool)

(assert (=> b!4410843 m!5086595))

(declare-fun m!5086597 () Bool)

(assert (=> b!4410843 m!5086597))

(declare-fun m!5086599 () Bool)

(assert (=> b!4410843 m!5086599))

(declare-fun m!5086601 () Bool)

(assert (=> b!4410843 m!5086601))

(declare-fun m!5086603 () Bool)

(assert (=> b!4410843 m!5086603))

(declare-fun m!5086605 () Bool)

(assert (=> b!4410844 m!5086605))

(declare-fun m!5086607 () Bool)

(assert (=> b!4410850 m!5086607))

(declare-fun m!5086609 () Bool)

(assert (=> b!4410847 m!5086609))

(declare-fun m!5086611 () Bool)

(assert (=> start!429178 m!5086611))

(declare-fun m!5086613 () Bool)

(assert (=> start!429178 m!5086613))

(assert (=> b!4410842 m!5086609))

(declare-fun m!5086615 () Bool)

(assert (=> b!4410842 m!5086615))

(declare-fun m!5086617 () Bool)

(assert (=> b!4410842 m!5086617))

(assert (=> b!4410842 m!5086611))

(declare-fun m!5086619 () Bool)

(assert (=> b!4410846 m!5086619))

(declare-fun m!5086621 () Bool)

(assert (=> b!4410851 m!5086621))

(declare-fun m!5086623 () Bool)

(assert (=> b!4410852 m!5086623))

(declare-fun m!5086625 () Bool)

(assert (=> b!4410848 m!5086625))

(assert (=> b!4410848 m!5086625))

(declare-fun m!5086627 () Bool)

(assert (=> b!4410848 m!5086627))

(push 1)

(assert (not b!4410849))

(assert (not b!4410850))

(assert (not b!4410846))

(assert (not b!4410847))

(assert (not b!4410852))

(assert tp_is_empty!25837)

(assert tp_is_empty!25839)

(assert (not b!4410843))

(assert (not b!4410842))

(assert (not b!4410844))

(assert (not b!4410848))

(assert (not start!429178))

(assert (not b!4410851))

(assert (not b!4410845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

