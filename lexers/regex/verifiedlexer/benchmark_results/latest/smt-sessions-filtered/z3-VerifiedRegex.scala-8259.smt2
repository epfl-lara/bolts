; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429184 () Bool)

(assert start!429184)

(declare-fun b!4410946 () Bool)

(declare-fun res!1820688 () Bool)

(declare-fun e!2746935 () Bool)

(assert (=> b!4410946 (=> (not res!1820688) (not e!2746935))))

(declare-datatypes ((V!10946 0))(
  ( (V!10947 (val!16831 Int)) )
))
(declare-datatypes ((K!10700 0))(
  ( (K!10701 (val!16832 Int)) )
))
(declare-datatypes ((tuple2!48982 0))(
  ( (tuple2!48983 (_1!27785 K!10700) (_2!27785 V!10946)) )
))
(declare-datatypes ((List!49469 0))(
  ( (Nil!49345) (Cons!49345 (h!54986 tuple2!48982) (t!356407 List!49469)) )
))
(declare-datatypes ((tuple2!48984 0))(
  ( (tuple2!48985 (_1!27786 (_ BitVec 64)) (_2!27786 List!49469)) )
))
(declare-datatypes ((List!49470 0))(
  ( (Nil!49346) (Cons!49346 (h!54987 tuple2!48984) (t!356408 List!49470)) )
))
(declare-datatypes ((ListLongMap!1939 0))(
  ( (ListLongMap!1940 (toList!3289 List!49470)) )
))
(declare-fun lm!1707 () ListLongMap!1939)

(declare-datatypes ((Hashable!5045 0))(
  ( (HashableExt!5044 (__x!30748 Int)) )
))
(declare-fun hashF!1247 () Hashable!5045)

(declare-fun allKeysSameHashInMap!757 (ListLongMap!1939 Hashable!5045) Bool)

(assert (=> b!4410946 (= res!1820688 (allKeysSameHashInMap!757 lm!1707 hashF!1247))))

(declare-fun b!4410947 () Bool)

(declare-fun res!1820690 () Bool)

(assert (=> b!4410947 (=> (not res!1820690) (not e!2746935))))

(declare-fun newBucket!200 () List!49469)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun allKeysSameHash!611 (List!49469 (_ BitVec 64) Hashable!5045) Bool)

(assert (=> b!4410947 (= res!1820690 (allKeysSameHash!611 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4410948 () Bool)

(declare-fun e!2746934 () Bool)

(declare-fun lt!1613972 () ListLongMap!1939)

(declare-fun lambda!150663 () Int)

(declare-fun forall!9413 (List!49470 Int) Bool)

(assert (=> b!4410948 (= e!2746934 (forall!9413 (toList!3289 lt!1613972) lambda!150663))))

(declare-fun b!4410949 () Bool)

(declare-fun tp_is_empty!25851 () Bool)

(declare-fun tp!1332153 () Bool)

(declare-fun tp_is_empty!25849 () Bool)

(declare-fun e!2746940 () Bool)

(assert (=> b!4410949 (= e!2746940 (and tp_is_empty!25849 tp_is_empty!25851 tp!1332153))))

(declare-fun b!4410950 () Bool)

(declare-fun e!2746937 () Bool)

(declare-fun e!2746939 () Bool)

(assert (=> b!4410950 (= e!2746937 (not e!2746939))))

(declare-fun res!1820684 () Bool)

(assert (=> b!4410950 (=> res!1820684 e!2746939)))

(declare-fun lt!1613969 () List!49469)

(declare-fun lt!1613967 () tuple2!48982)

(declare-fun key!3918 () K!10700)

(declare-fun removePairForKey!621 (List!49469 K!10700) List!49469)

(assert (=> b!4410950 (= res!1820684 (not (= newBucket!200 (Cons!49345 lt!1613967 (removePairForKey!621 lt!1613969 key!3918)))))))

(declare-fun newValue!99 () V!10946)

(assert (=> b!4410950 (= lt!1613967 (tuple2!48983 key!3918 newValue!99))))

(declare-datatypes ((Unit!80419 0))(
  ( (Unit!80420) )
))
(declare-fun lt!1613970 () Unit!80419)

(declare-fun lt!1613974 () tuple2!48984)

(declare-fun forallContained!2047 (List!49470 Int tuple2!48984) Unit!80419)

(assert (=> b!4410950 (= lt!1613970 (forallContained!2047 (toList!3289 lm!1707) lambda!150663 lt!1613974))))

(declare-fun contains!11773 (List!49470 tuple2!48984) Bool)

(assert (=> b!4410950 (contains!11773 (toList!3289 lm!1707) lt!1613974)))

(assert (=> b!4410950 (= lt!1613974 (tuple2!48985 hash!377 lt!1613969))))

(declare-fun lt!1613971 () Unit!80419)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!498 (List!49470 (_ BitVec 64) List!49469) Unit!80419)

(assert (=> b!4410950 (= lt!1613971 (lemmaGetValueByKeyImpliesContainsTuple!498 (toList!3289 lm!1707) hash!377 lt!1613969))))

(declare-fun apply!11505 (ListLongMap!1939 (_ BitVec 64)) List!49469)

(assert (=> b!4410950 (= lt!1613969 (apply!11505 lm!1707 hash!377))))

(declare-fun b!4410951 () Bool)

(declare-fun res!1820683 () Bool)

(assert (=> b!4410951 (=> (not res!1820683) (not e!2746935))))

(declare-fun hash!1948 (Hashable!5045 K!10700) (_ BitVec 64))

(assert (=> b!4410951 (= res!1820683 (= (hash!1948 hashF!1247 key!3918) hash!377))))

(declare-fun b!4410952 () Bool)

(declare-fun res!1820687 () Bool)

(assert (=> b!4410952 (=> (not res!1820687) (not e!2746937))))

(declare-fun contains!11774 (ListLongMap!1939 (_ BitVec 64)) Bool)

(assert (=> b!4410952 (= res!1820687 (contains!11774 lm!1707 hash!377))))

(declare-fun b!4410953 () Bool)

(declare-fun e!2746936 () Bool)

(assert (=> b!4410953 (= e!2746939 e!2746936)))

(declare-fun res!1820691 () Bool)

(assert (=> b!4410953 (=> res!1820691 e!2746936)))

(get-info :version)

(assert (=> b!4410953 (= res!1820691 (or (and ((_ is Cons!49346) (toList!3289 lm!1707)) (= (_1!27786 (h!54987 (toList!3289 lm!1707))) hash!377)) (and ((_ is Cons!49346) (toList!3289 lm!1707)) (not (= (_1!27786 (h!54987 (toList!3289 lm!1707))) hash!377))) ((_ is Nil!49346) (toList!3289 lm!1707))))))

(assert (=> b!4410953 e!2746934))

(declare-fun res!1820685 () Bool)

(assert (=> b!4410953 (=> (not res!1820685) (not e!2746934))))

(assert (=> b!4410953 (= res!1820685 (forall!9413 (toList!3289 lt!1613972) lambda!150663))))

(declare-fun +!919 (ListLongMap!1939 tuple2!48984) ListLongMap!1939)

(assert (=> b!4410953 (= lt!1613972 (+!919 lm!1707 (tuple2!48985 hash!377 newBucket!200)))))

(declare-fun lt!1613973 () Unit!80419)

(declare-fun addValidProp!299 (ListLongMap!1939 Int (_ BitVec 64) List!49469) Unit!80419)

(assert (=> b!4410953 (= lt!1613973 (addValidProp!299 lm!1707 lambda!150663 hash!377 newBucket!200))))

(assert (=> b!4410953 (forall!9413 (toList!3289 lm!1707) lambda!150663)))

(declare-fun b!4410954 () Bool)

(declare-fun res!1820689 () Bool)

(assert (=> b!4410954 (=> res!1820689 e!2746939)))

(declare-fun noDuplicateKeys!653 (List!49469) Bool)

(assert (=> b!4410954 (= res!1820689 (not (noDuplicateKeys!653 newBucket!200)))))

(declare-fun res!1820692 () Bool)

(assert (=> start!429184 (=> (not res!1820692) (not e!2746935))))

(assert (=> start!429184 (= res!1820692 (forall!9413 (toList!3289 lm!1707) lambda!150663))))

(assert (=> start!429184 e!2746935))

(assert (=> start!429184 e!2746940))

(assert (=> start!429184 true))

(declare-fun e!2746938 () Bool)

(declare-fun inv!64886 (ListLongMap!1939) Bool)

(assert (=> start!429184 (and (inv!64886 lm!1707) e!2746938)))

(assert (=> start!429184 tp_is_empty!25849))

(assert (=> start!429184 tp_is_empty!25851))

(declare-fun b!4410955 () Bool)

(declare-fun tp!1332154 () Bool)

(assert (=> b!4410955 (= e!2746938 tp!1332154)))

(declare-fun b!4410956 () Bool)

(assert (=> b!4410956 (= e!2746935 e!2746937)))

(declare-fun res!1820686 () Bool)

(assert (=> b!4410956 (=> (not res!1820686) (not e!2746937))))

(declare-datatypes ((ListMap!2533 0))(
  ( (ListMap!2534 (toList!3290 List!49469)) )
))
(declare-fun lt!1613968 () ListMap!2533)

(declare-fun contains!11775 (ListMap!2533 K!10700) Bool)

(assert (=> b!4410956 (= res!1820686 (contains!11775 lt!1613968 key!3918))))

(declare-fun extractMap!712 (List!49470) ListMap!2533)

(assert (=> b!4410956 (= lt!1613968 (extractMap!712 (toList!3289 lm!1707)))))

(declare-fun b!4410957 () Bool)

(declare-fun eq!357 (ListMap!2533 ListMap!2533) Bool)

(declare-fun +!920 (ListMap!2533 tuple2!48982) ListMap!2533)

(assert (=> b!4410957 (= e!2746936 (eq!357 (extractMap!712 (toList!3289 lt!1613972)) (+!920 lt!1613968 lt!1613967)))))

(assert (= (and start!429184 res!1820692) b!4410946))

(assert (= (and b!4410946 res!1820688) b!4410951))

(assert (= (and b!4410951 res!1820683) b!4410947))

(assert (= (and b!4410947 res!1820690) b!4410956))

(assert (= (and b!4410956 res!1820686) b!4410952))

(assert (= (and b!4410952 res!1820687) b!4410950))

(assert (= (and b!4410950 (not res!1820684)) b!4410954))

(assert (= (and b!4410954 (not res!1820689)) b!4410953))

(assert (= (and b!4410953 res!1820685) b!4410948))

(assert (= (and b!4410953 (not res!1820691)) b!4410957))

(assert (= (and start!429184 ((_ is Cons!49345) newBucket!200)) b!4410949))

(assert (= start!429184 b!4410955))

(declare-fun m!5086703 () Bool)

(assert (=> b!4410950 m!5086703))

(declare-fun m!5086705 () Bool)

(assert (=> b!4410950 m!5086705))

(declare-fun m!5086707 () Bool)

(assert (=> b!4410950 m!5086707))

(declare-fun m!5086709 () Bool)

(assert (=> b!4410950 m!5086709))

(declare-fun m!5086711 () Bool)

(assert (=> b!4410950 m!5086711))

(declare-fun m!5086713 () Bool)

(assert (=> b!4410947 m!5086713))

(declare-fun m!5086715 () Bool)

(assert (=> b!4410954 m!5086715))

(declare-fun m!5086717 () Bool)

(assert (=> b!4410953 m!5086717))

(declare-fun m!5086719 () Bool)

(assert (=> b!4410953 m!5086719))

(declare-fun m!5086721 () Bool)

(assert (=> b!4410953 m!5086721))

(declare-fun m!5086723 () Bool)

(assert (=> b!4410953 m!5086723))

(declare-fun m!5086725 () Bool)

(assert (=> b!4410956 m!5086725))

(declare-fun m!5086727 () Bool)

(assert (=> b!4410956 m!5086727))

(declare-fun m!5086729 () Bool)

(assert (=> b!4410946 m!5086729))

(declare-fun m!5086731 () Bool)

(assert (=> b!4410951 m!5086731))

(assert (=> start!429184 m!5086723))

(declare-fun m!5086733 () Bool)

(assert (=> start!429184 m!5086733))

(declare-fun m!5086735 () Bool)

(assert (=> b!4410957 m!5086735))

(declare-fun m!5086737 () Bool)

(assert (=> b!4410957 m!5086737))

(assert (=> b!4410957 m!5086735))

(assert (=> b!4410957 m!5086737))

(declare-fun m!5086739 () Bool)

(assert (=> b!4410957 m!5086739))

(assert (=> b!4410948 m!5086717))

(declare-fun m!5086741 () Bool)

(assert (=> b!4410952 m!5086741))

(check-sat tp_is_empty!25851 tp_is_empty!25849 (not start!429184) (not b!4410949) (not b!4410957) (not b!4410950) (not b!4410951) (not b!4410953) (not b!4410947) (not b!4410948) (not b!4410946) (not b!4410956) (not b!4410955) (not b!4410952) (not b!4410954))
(check-sat)
