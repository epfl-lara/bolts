; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417648 () Bool)

(assert start!417648)

(declare-fun res!1776374 () Bool)

(declare-fun e!2696084 () Bool)

(assert (=> start!417648 (=> (not res!1776374) (not e!2696084))))

(declare-datatypes ((V!10196 0))(
  ( (V!10197 (val!16231 Int)) )
))
(declare-datatypes ((K!9950 0))(
  ( (K!9951 (val!16232 Int)) )
))
(declare-datatypes ((tuple2!47782 0))(
  ( (tuple2!47783 (_1!27185 K!9950) (_2!27185 V!10196)) )
))
(declare-datatypes ((List!48721 0))(
  ( (Nil!48597) (Cons!48597 (h!54084 tuple2!47782) (t!355637 List!48721)) )
))
(declare-datatypes ((tuple2!47784 0))(
  ( (tuple2!47785 (_1!27186 (_ BitVec 64)) (_2!27186 List!48721)) )
))
(declare-datatypes ((List!48722 0))(
  ( (Nil!48598) (Cons!48598 (h!54085 tuple2!47784) (t!355638 List!48722)) )
))
(declare-datatypes ((ListLongMap!1339 0))(
  ( (ListLongMap!1340 (toList!2689 List!48722)) )
))
(declare-fun lm!1707 () ListLongMap!1339)

(declare-fun lambda!134825 () Int)

(declare-fun forall!8907 (List!48722 Int) Bool)

(assert (=> start!417648 (= res!1776374 (forall!8907 (toList!2689 lm!1707) lambda!134825))))

(assert (=> start!417648 e!2696084))

(declare-fun e!2696082 () Bool)

(assert (=> start!417648 e!2696082))

(assert (=> start!417648 true))

(declare-fun e!2696083 () Bool)

(declare-fun inv!64136 (ListLongMap!1339) Bool)

(assert (=> start!417648 (and (inv!64136 lm!1707) e!2696083)))

(declare-fun tp_is_empty!24649 () Bool)

(assert (=> start!417648 tp_is_empty!24649))

(declare-fun tp_is_empty!24651 () Bool)

(assert (=> start!417648 tp_is_empty!24651))

(declare-fun b!4332686 () Bool)

(declare-fun e!2696085 () Bool)

(assert (=> b!4332686 (= e!2696085 true)))

(declare-datatypes ((ListMap!1933 0))(
  ( (ListMap!1934 (toList!2690 List!48721)) )
))
(declare-fun lt!1546174 () ListMap!1933)

(declare-fun extractMap!412 (List!48722) ListMap!1933)

(assert (=> b!4332686 (= lt!1546174 (extractMap!412 (t!355638 (toList!2689 lm!1707))))))

(declare-fun tp!1328674 () Bool)

(declare-fun b!4332687 () Bool)

(assert (=> b!4332687 (= e!2696082 (and tp_is_empty!24649 tp_is_empty!24651 tp!1328674))))

(declare-fun b!4332688 () Bool)

(declare-fun res!1776383 () Bool)

(declare-fun e!2696081 () Bool)

(assert (=> b!4332688 (=> res!1776383 e!2696081)))

(declare-fun newBucket!200 () List!48721)

(declare-fun noDuplicateKeys!353 (List!48721) Bool)

(assert (=> b!4332688 (= res!1776383 (not (noDuplicateKeys!353 newBucket!200)))))

(declare-fun b!4332689 () Bool)

(declare-fun res!1776377 () Bool)

(assert (=> b!4332689 (=> (not res!1776377) (not e!2696084))))

(declare-fun key!3918 () K!9950)

(declare-fun contains!10618 (ListMap!1933 K!9950) Bool)

(assert (=> b!4332689 (= res!1776377 (contains!10618 (extractMap!412 (toList!2689 lm!1707)) key!3918))))

(declare-fun b!4332690 () Bool)

(declare-fun res!1776376 () Bool)

(assert (=> b!4332690 (=> (not res!1776376) (not e!2696084))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4745 0))(
  ( (HashableExt!4744 (__x!30448 Int)) )
))
(declare-fun hashF!1247 () Hashable!4745)

(declare-fun allKeysSameHash!311 (List!48721 (_ BitVec 64) Hashable!4745) Bool)

(assert (=> b!4332690 (= res!1776376 (allKeysSameHash!311 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4332691 () Bool)

(declare-fun res!1776373 () Bool)

(declare-fun e!2696086 () Bool)

(assert (=> b!4332691 (=> (not res!1776373) (not e!2696086))))

(declare-fun lt!1546167 () ListLongMap!1339)

(assert (=> b!4332691 (= res!1776373 (forall!8907 (toList!2689 lt!1546167) lambda!134825))))

(declare-fun b!4332692 () Bool)

(assert (=> b!4332692 (= e!2696084 (not e!2696081))))

(declare-fun res!1776379 () Bool)

(assert (=> b!4332692 (=> res!1776379 e!2696081)))

(declare-fun lt!1546168 () List!48721)

(declare-fun newValue!99 () V!10196)

(declare-fun removePairForKey!323 (List!48721 K!9950) List!48721)

(assert (=> b!4332692 (= res!1776379 (not (= newBucket!200 (Cons!48597 (tuple2!47783 key!3918 newValue!99) (removePairForKey!323 lt!1546168 key!3918)))))))

(declare-fun lt!1546169 () tuple2!47784)

(declare-datatypes ((Unit!68194 0))(
  ( (Unit!68195) )
))
(declare-fun lt!1546170 () Unit!68194)

(declare-fun forallContained!1558 (List!48722 Int tuple2!47784) Unit!68194)

(assert (=> b!4332692 (= lt!1546170 (forallContained!1558 (toList!2689 lm!1707) lambda!134825 lt!1546169))))

(declare-fun contains!10619 (List!48722 tuple2!47784) Bool)

(assert (=> b!4332692 (contains!10619 (toList!2689 lm!1707) lt!1546169)))

(assert (=> b!4332692 (= lt!1546169 (tuple2!47785 hash!377 lt!1546168))))

(declare-fun lt!1546172 () Unit!68194)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!200 (List!48722 (_ BitVec 64) List!48721) Unit!68194)

(assert (=> b!4332692 (= lt!1546172 (lemmaGetValueByKeyImpliesContainsTuple!200 (toList!2689 lm!1707) hash!377 lt!1546168))))

(declare-fun apply!11205 (ListLongMap!1339 (_ BitVec 64)) List!48721)

(assert (=> b!4332692 (= lt!1546168 (apply!11205 lm!1707 hash!377))))

(declare-fun lt!1546173 () tuple2!47784)

(declare-fun b!4332693 () Bool)

(get-info :version)

(assert (=> b!4332693 (= e!2696086 (or (not ((_ is Cons!48598) (toList!2689 lm!1707))) (not (= (_1!27186 (h!54085 (toList!2689 lm!1707))) hash!377)) (= lt!1546167 (ListLongMap!1340 (Cons!48598 lt!1546173 (t!355638 (toList!2689 lm!1707)))))))))

(declare-fun b!4332694 () Bool)

(declare-fun tp!1328673 () Bool)

(assert (=> b!4332694 (= e!2696083 tp!1328673)))

(declare-fun b!4332695 () Bool)

(declare-fun res!1776375 () Bool)

(assert (=> b!4332695 (=> (not res!1776375) (not e!2696084))))

(declare-fun hash!1289 (Hashable!4745 K!9950) (_ BitVec 64))

(assert (=> b!4332695 (= res!1776375 (= (hash!1289 hashF!1247 key!3918) hash!377))))

(declare-fun b!4332696 () Bool)

(declare-fun res!1776381 () Bool)

(assert (=> b!4332696 (=> (not res!1776381) (not e!2696084))))

(declare-fun contains!10620 (ListLongMap!1339 (_ BitVec 64)) Bool)

(assert (=> b!4332696 (= res!1776381 (contains!10620 lm!1707 hash!377))))

(declare-fun b!4332697 () Bool)

(declare-fun res!1776378 () Bool)

(assert (=> b!4332697 (=> (not res!1776378) (not e!2696084))))

(declare-fun allKeysSameHashInMap!457 (ListLongMap!1339 Hashable!4745) Bool)

(assert (=> b!4332697 (= res!1776378 (allKeysSameHashInMap!457 lm!1707 hashF!1247))))

(declare-fun b!4332698 () Bool)

(assert (=> b!4332698 (= e!2696081 e!2696085)))

(declare-fun res!1776380 () Bool)

(assert (=> b!4332698 (=> res!1776380 e!2696085)))

(assert (=> b!4332698 (= res!1776380 (or (not ((_ is Cons!48598) (toList!2689 lm!1707))) (not (= (_1!27186 (h!54085 (toList!2689 lm!1707))) hash!377))))))

(assert (=> b!4332698 e!2696086))

(declare-fun res!1776382 () Bool)

(assert (=> b!4332698 (=> (not res!1776382) (not e!2696086))))

(assert (=> b!4332698 (= res!1776382 (forall!8907 (toList!2689 lt!1546167) lambda!134825))))

(declare-fun +!389 (ListLongMap!1339 tuple2!47784) ListLongMap!1339)

(assert (=> b!4332698 (= lt!1546167 (+!389 lm!1707 lt!1546173))))

(assert (=> b!4332698 (= lt!1546173 (tuple2!47785 hash!377 newBucket!200))))

(declare-fun lt!1546171 () Unit!68194)

(declare-fun addValidProp!7 (ListLongMap!1339 Int (_ BitVec 64) List!48721) Unit!68194)

(assert (=> b!4332698 (= lt!1546171 (addValidProp!7 lm!1707 lambda!134825 hash!377 newBucket!200))))

(assert (=> b!4332698 (forall!8907 (toList!2689 lm!1707) lambda!134825)))

(assert (= (and start!417648 res!1776374) b!4332697))

(assert (= (and b!4332697 res!1776378) b!4332695))

(assert (= (and b!4332695 res!1776375) b!4332690))

(assert (= (and b!4332690 res!1776376) b!4332689))

(assert (= (and b!4332689 res!1776377) b!4332696))

(assert (= (and b!4332696 res!1776381) b!4332692))

(assert (= (and b!4332692 (not res!1776379)) b!4332688))

(assert (= (and b!4332688 (not res!1776383)) b!4332698))

(assert (= (and b!4332698 res!1776382) b!4332691))

(assert (= (and b!4332691 res!1776373) b!4332693))

(assert (= (and b!4332698 (not res!1776380)) b!4332686))

(assert (= (and start!417648 ((_ is Cons!48597) newBucket!200)) b!4332687))

(assert (= start!417648 b!4332694))

(declare-fun m!4926905 () Bool)

(assert (=> b!4332691 m!4926905))

(declare-fun m!4926907 () Bool)

(assert (=> b!4332689 m!4926907))

(assert (=> b!4332689 m!4926907))

(declare-fun m!4926909 () Bool)

(assert (=> b!4332689 m!4926909))

(declare-fun m!4926911 () Bool)

(assert (=> b!4332686 m!4926911))

(declare-fun m!4926913 () Bool)

(assert (=> b!4332688 m!4926913))

(assert (=> b!4332698 m!4926905))

(declare-fun m!4926915 () Bool)

(assert (=> b!4332698 m!4926915))

(declare-fun m!4926917 () Bool)

(assert (=> b!4332698 m!4926917))

(declare-fun m!4926919 () Bool)

(assert (=> b!4332698 m!4926919))

(declare-fun m!4926921 () Bool)

(assert (=> b!4332696 m!4926921))

(assert (=> start!417648 m!4926919))

(declare-fun m!4926923 () Bool)

(assert (=> start!417648 m!4926923))

(declare-fun m!4926925 () Bool)

(assert (=> b!4332697 m!4926925))

(declare-fun m!4926927 () Bool)

(assert (=> b!4332690 m!4926927))

(declare-fun m!4926929 () Bool)

(assert (=> b!4332695 m!4926929))

(declare-fun m!4926931 () Bool)

(assert (=> b!4332692 m!4926931))

(declare-fun m!4926933 () Bool)

(assert (=> b!4332692 m!4926933))

(declare-fun m!4926935 () Bool)

(assert (=> b!4332692 m!4926935))

(declare-fun m!4926937 () Bool)

(assert (=> b!4332692 m!4926937))

(declare-fun m!4926939 () Bool)

(assert (=> b!4332692 m!4926939))

(check-sat (not b!4332690) (not b!4332695) (not b!4332696) (not b!4332691) (not b!4332687) (not b!4332689) (not start!417648) (not b!4332698) (not b!4332692) (not b!4332686) (not b!4332697) tp_is_empty!24651 (not b!4332688) (not b!4332694) tp_is_empty!24649)
(check-sat)
