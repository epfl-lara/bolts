; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419792 () Bool)

(assert start!419792)

(declare-fun b!4347815 () Bool)

(declare-fun res!1785755 () Bool)

(declare-fun e!2705573 () Bool)

(assert (=> b!4347815 (=> (not res!1785755) (not e!2705573))))

(declare-datatypes ((V!10456 0))(
  ( (V!10457 (val!16439 Int)) )
))
(declare-datatypes ((K!10210 0))(
  ( (K!10211 (val!16440 Int)) )
))
(declare-datatypes ((tuple2!48198 0))(
  ( (tuple2!48199 (_1!27393 K!10210) (_2!27393 V!10456)) )
))
(declare-datatypes ((List!48969 0))(
  ( (Nil!48845) (Cons!48845 (h!54374 tuple2!48198) (t!355889 List!48969)) )
))
(declare-datatypes ((tuple2!48200 0))(
  ( (tuple2!48201 (_1!27394 (_ BitVec 64)) (_2!27394 List!48969)) )
))
(declare-datatypes ((List!48970 0))(
  ( (Nil!48846) (Cons!48846 (h!54375 tuple2!48200) (t!355890 List!48970)) )
))
(declare-datatypes ((ListLongMap!1547 0))(
  ( (ListLongMap!1548 (toList!2897 List!48970)) )
))
(declare-fun lm!1707 () ListLongMap!1547)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11002 (ListLongMap!1547 (_ BitVec 64)) Bool)

(assert (=> b!4347815 (= res!1785755 (contains!11002 lm!1707 hash!377))))

(declare-fun b!4347816 () Bool)

(declare-fun e!2705575 () Bool)

(assert (=> b!4347816 (= e!2705573 (not e!2705575))))

(declare-fun res!1785749 () Bool)

(assert (=> b!4347816 (=> res!1785749 e!2705575)))

(declare-fun lt!1562514 () List!48969)

(declare-fun newBucket!200 () List!48969)

(declare-fun key!3918 () K!10210)

(declare-fun newValue!99 () V!10456)

(declare-fun removePairForKey!427 (List!48969 K!10210) List!48969)

(assert (=> b!4347816 (= res!1785749 (not (= newBucket!200 (Cons!48845 (tuple2!48199 key!3918 newValue!99) (removePairForKey!427 lt!1562514 key!3918)))))))

(declare-datatypes ((Unit!70767 0))(
  ( (Unit!70768) )
))
(declare-fun lt!1562521 () Unit!70767)

(declare-fun lambda!138725 () Int)

(declare-fun lt!1562519 () tuple2!48200)

(declare-fun forallContained!1703 (List!48970 Int tuple2!48200) Unit!70767)

(assert (=> b!4347816 (= lt!1562521 (forallContained!1703 (toList!2897 lm!1707) lambda!138725 lt!1562519))))

(declare-fun contains!11003 (List!48970 tuple2!48200) Bool)

(assert (=> b!4347816 (contains!11003 (toList!2897 lm!1707) lt!1562519)))

(assert (=> b!4347816 (= lt!1562519 (tuple2!48201 hash!377 lt!1562514))))

(declare-fun lt!1562517 () Unit!70767)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!304 (List!48970 (_ BitVec 64) List!48969) Unit!70767)

(assert (=> b!4347816 (= lt!1562517 (lemmaGetValueByKeyImpliesContainsTuple!304 (toList!2897 lm!1707) hash!377 lt!1562514))))

(declare-fun apply!11309 (ListLongMap!1547 (_ BitVec 64)) List!48969)

(assert (=> b!4347816 (= lt!1562514 (apply!11309 lm!1707 hash!377))))

(declare-fun b!4347817 () Bool)

(declare-fun res!1785751 () Bool)

(assert (=> b!4347817 (=> (not res!1785751) (not e!2705573))))

(declare-datatypes ((Hashable!4849 0))(
  ( (HashableExt!4848 (__x!30552 Int)) )
))
(declare-fun hashF!1247 () Hashable!4849)

(declare-fun hash!1448 (Hashable!4849 K!10210) (_ BitVec 64))

(assert (=> b!4347817 (= res!1785751 (= (hash!1448 hashF!1247 key!3918) hash!377))))

(declare-fun b!4347818 () Bool)

(declare-fun e!2705571 () Bool)

(declare-fun containsKey!616 (List!48969 K!10210) Bool)

(assert (=> b!4347818 (= e!2705571 (not (containsKey!616 (_2!27394 (h!54375 (toList!2897 lm!1707))) key!3918)))))

(declare-fun b!4347819 () Bool)

(declare-fun e!2705574 () Bool)

(assert (=> b!4347819 (= e!2705575 e!2705574)))

(declare-fun res!1785750 () Bool)

(assert (=> b!4347819 (=> res!1785750 e!2705574)))

(get-info :version)

(assert (=> b!4347819 (= res!1785750 (or (and ((_ is Cons!48846) (toList!2897 lm!1707)) (= (_1!27394 (h!54375 (toList!2897 lm!1707))) hash!377)) (not ((_ is Cons!48846) (toList!2897 lm!1707))) (= (_1!27394 (h!54375 (toList!2897 lm!1707))) hash!377)))))

(declare-fun e!2705576 () Bool)

(assert (=> b!4347819 e!2705576))

(declare-fun res!1785752 () Bool)

(assert (=> b!4347819 (=> (not res!1785752) (not e!2705576))))

(declare-fun lt!1562515 () ListLongMap!1547)

(declare-fun forall!9055 (List!48970 Int) Bool)

(assert (=> b!4347819 (= res!1785752 (forall!9055 (toList!2897 lt!1562515) lambda!138725))))

(declare-fun +!578 (ListLongMap!1547 tuple2!48200) ListLongMap!1547)

(assert (=> b!4347819 (= lt!1562515 (+!578 lm!1707 (tuple2!48201 hash!377 newBucket!200)))))

(declare-fun lt!1562516 () Unit!70767)

(declare-fun addValidProp!111 (ListLongMap!1547 Int (_ BitVec 64) List!48969) Unit!70767)

(assert (=> b!4347819 (= lt!1562516 (addValidProp!111 lm!1707 lambda!138725 hash!377 newBucket!200))))

(assert (=> b!4347819 (forall!9055 (toList!2897 lm!1707) lambda!138725)))

(declare-fun b!4347820 () Bool)

(declare-fun e!2705577 () Bool)

(declare-fun tp!1329694 () Bool)

(assert (=> b!4347820 (= e!2705577 tp!1329694)))

(declare-fun b!4347821 () Bool)

(declare-fun res!1785748 () Bool)

(assert (=> b!4347821 (=> (not res!1785748) (not e!2705573))))

(declare-fun allKeysSameHashInMap!561 (ListLongMap!1547 Hashable!4849) Bool)

(assert (=> b!4347821 (= res!1785748 (allKeysSameHashInMap!561 lm!1707 hashF!1247))))

(declare-fun b!4347822 () Bool)

(declare-fun res!1785747 () Bool)

(assert (=> b!4347822 (=> (not res!1785747) (not e!2705573))))

(declare-fun allKeysSameHash!415 (List!48969 (_ BitVec 64) Hashable!4849) Bool)

(assert (=> b!4347822 (= res!1785747 (allKeysSameHash!415 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1785757 () Bool)

(assert (=> start!419792 (=> (not res!1785757) (not e!2705573))))

(assert (=> start!419792 (= res!1785757 (forall!9055 (toList!2897 lm!1707) lambda!138725))))

(assert (=> start!419792 e!2705573))

(declare-fun e!2705578 () Bool)

(assert (=> start!419792 e!2705578))

(assert (=> start!419792 true))

(declare-fun inv!64396 (ListLongMap!1547) Bool)

(assert (=> start!419792 (and (inv!64396 lm!1707) e!2705577)))

(declare-fun tp_is_empty!25065 () Bool)

(assert (=> start!419792 tp_is_empty!25065))

(declare-fun tp_is_empty!25067 () Bool)

(assert (=> start!419792 tp_is_empty!25067))

(declare-fun b!4347823 () Bool)

(declare-fun res!1785753 () Bool)

(assert (=> b!4347823 (=> res!1785753 e!2705575)))

(declare-fun noDuplicateKeys!457 (List!48969) Bool)

(assert (=> b!4347823 (= res!1785753 (not (noDuplicateKeys!457 newBucket!200)))))

(declare-fun b!4347824 () Bool)

(declare-fun e!2705572 () Bool)

(assert (=> b!4347824 (= e!2705574 e!2705572)))

(declare-fun res!1785754 () Bool)

(assert (=> b!4347824 (=> res!1785754 e!2705572)))

(assert (=> b!4347824 (= res!1785754 (not (noDuplicateKeys!457 (_2!27394 (h!54375 (toList!2897 lm!1707))))))))

(declare-datatypes ((ListMap!2141 0))(
  ( (ListMap!2142 (toList!2898 List!48969)) )
))
(declare-fun lt!1562522 () ListMap!2141)

(declare-fun extractMap!516 (List!48970) ListMap!2141)

(assert (=> b!4347824 (= lt!1562522 (extractMap!516 (t!355890 (toList!2897 lm!1707))))))

(assert (=> b!4347824 e!2705571))

(declare-fun res!1785756 () Bool)

(assert (=> b!4347824 (=> (not res!1785756) (not e!2705571))))

(assert (=> b!4347824 (= res!1785756 (not (containsKey!616 (apply!11309 lm!1707 (_1!27394 (h!54375 (toList!2897 lm!1707)))) key!3918)))))

(declare-fun lt!1562518 () Unit!70767)

(declare-fun lemmaNotSameHashThenCannotContainKey!4 (ListLongMap!1547 K!10210 (_ BitVec 64) Hashable!4849) Unit!70767)

(assert (=> b!4347824 (= lt!1562518 (lemmaNotSameHashThenCannotContainKey!4 lm!1707 key!3918 (_1!27394 (h!54375 (toList!2897 lm!1707))) hashF!1247))))

(declare-fun b!4347825 () Bool)

(assert (=> b!4347825 (= e!2705572 true)))

(declare-fun lt!1562520 () Bool)

(declare-fun contains!11004 (ListMap!2141 K!10210) Bool)

(declare-fun addToMapMapFromBucket!161 (List!48969 ListMap!2141) ListMap!2141)

(assert (=> b!4347825 (= lt!1562520 (contains!11004 (addToMapMapFromBucket!161 (_2!27394 (h!54375 (toList!2897 lm!1707))) lt!1562522) key!3918))))

(declare-fun b!4347826 () Bool)

(assert (=> b!4347826 (= e!2705576 (forall!9055 (toList!2897 lt!1562515) lambda!138725))))

(declare-fun tp!1329693 () Bool)

(declare-fun b!4347827 () Bool)

(assert (=> b!4347827 (= e!2705578 (and tp_is_empty!25065 tp_is_empty!25067 tp!1329693))))

(declare-fun b!4347828 () Bool)

(declare-fun res!1785746 () Bool)

(assert (=> b!4347828 (=> (not res!1785746) (not e!2705573))))

(assert (=> b!4347828 (= res!1785746 (contains!11004 (extractMap!516 (toList!2897 lm!1707)) key!3918))))

(assert (= (and start!419792 res!1785757) b!4347821))

(assert (= (and b!4347821 res!1785748) b!4347817))

(assert (= (and b!4347817 res!1785751) b!4347822))

(assert (= (and b!4347822 res!1785747) b!4347828))

(assert (= (and b!4347828 res!1785746) b!4347815))

(assert (= (and b!4347815 res!1785755) b!4347816))

(assert (= (and b!4347816 (not res!1785749)) b!4347823))

(assert (= (and b!4347823 (not res!1785753)) b!4347819))

(assert (= (and b!4347819 res!1785752) b!4347826))

(assert (= (and b!4347819 (not res!1785750)) b!4347824))

(assert (= (and b!4347824 res!1785756) b!4347818))

(assert (= (and b!4347824 (not res!1785754)) b!4347825))

(assert (= (and start!419792 ((_ is Cons!48845) newBucket!200)) b!4347827))

(assert (= start!419792 b!4347820))

(declare-fun m!4956893 () Bool)

(assert (=> start!419792 m!4956893))

(declare-fun m!4956895 () Bool)

(assert (=> start!419792 m!4956895))

(declare-fun m!4956897 () Bool)

(assert (=> b!4347825 m!4956897))

(assert (=> b!4347825 m!4956897))

(declare-fun m!4956899 () Bool)

(assert (=> b!4347825 m!4956899))

(declare-fun m!4956901 () Bool)

(assert (=> b!4347824 m!4956901))

(declare-fun m!4956903 () Bool)

(assert (=> b!4347824 m!4956903))

(declare-fun m!4956905 () Bool)

(assert (=> b!4347824 m!4956905))

(declare-fun m!4956907 () Bool)

(assert (=> b!4347824 m!4956907))

(assert (=> b!4347824 m!4956907))

(declare-fun m!4956909 () Bool)

(assert (=> b!4347824 m!4956909))

(declare-fun m!4956911 () Bool)

(assert (=> b!4347819 m!4956911))

(declare-fun m!4956913 () Bool)

(assert (=> b!4347819 m!4956913))

(declare-fun m!4956915 () Bool)

(assert (=> b!4347819 m!4956915))

(assert (=> b!4347819 m!4956893))

(declare-fun m!4956917 () Bool)

(assert (=> b!4347822 m!4956917))

(declare-fun m!4956919 () Bool)

(assert (=> b!4347828 m!4956919))

(assert (=> b!4347828 m!4956919))

(declare-fun m!4956921 () Bool)

(assert (=> b!4347828 m!4956921))

(declare-fun m!4956923 () Bool)

(assert (=> b!4347823 m!4956923))

(declare-fun m!4956925 () Bool)

(assert (=> b!4347817 m!4956925))

(declare-fun m!4956927 () Bool)

(assert (=> b!4347821 m!4956927))

(declare-fun m!4956929 () Bool)

(assert (=> b!4347815 m!4956929))

(assert (=> b!4347826 m!4956911))

(declare-fun m!4956931 () Bool)

(assert (=> b!4347816 m!4956931))

(declare-fun m!4956933 () Bool)

(assert (=> b!4347816 m!4956933))

(declare-fun m!4956935 () Bool)

(assert (=> b!4347816 m!4956935))

(declare-fun m!4956937 () Bool)

(assert (=> b!4347816 m!4956937))

(declare-fun m!4956939 () Bool)

(assert (=> b!4347816 m!4956939))

(declare-fun m!4956941 () Bool)

(assert (=> b!4347818 m!4956941))

(check-sat (not b!4347826) (not b!4347824) (not b!4347827) (not b!4347828) (not b!4347816) tp_is_empty!25067 (not b!4347819) (not start!419792) (not b!4347815) (not b!4347820) (not b!4347817) (not b!4347825) (not b!4347823) (not b!4347822) (not b!4347821) (not b!4347818) tp_is_empty!25065)
(check-sat)
