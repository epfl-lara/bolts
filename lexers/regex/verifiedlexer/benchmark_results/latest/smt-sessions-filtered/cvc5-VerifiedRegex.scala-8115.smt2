; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417806 () Bool)

(assert start!417806)

(declare-fun b!4333687 () Bool)

(declare-fun e!2696673 () Bool)

(assert (=> b!4333687 (= e!2696673 true)))

(declare-fun e!2696672 () Bool)

(assert (=> b!4333687 e!2696672))

(declare-fun res!1777027 () Bool)

(assert (=> b!4333687 (=> (not res!1777027) (not e!2696672))))

(declare-datatypes ((K!9978 0))(
  ( (K!9979 (val!16253 Int)) )
))
(declare-datatypes ((V!10224 0))(
  ( (V!10225 (val!16254 Int)) )
))
(declare-datatypes ((tuple2!47826 0))(
  ( (tuple2!47827 (_1!27207 K!9978) (_2!27207 V!10224)) )
))
(declare-datatypes ((List!48746 0))(
  ( (Nil!48622) (Cons!48622 (h!54113 tuple2!47826) (t!355662 List!48746)) )
))
(declare-datatypes ((ListMap!1955 0))(
  ( (ListMap!1956 (toList!2711 List!48746)) )
))
(declare-fun lt!1546938 () ListMap!1955)

(declare-fun newBucket!200 () List!48746)

(declare-fun lt!1546942 () ListMap!1955)

(declare-fun addToMapMapFromBucket!72 (List!48746 ListMap!1955) ListMap!1955)

(assert (=> b!4333687 (= res!1777027 (= lt!1546942 (addToMapMapFromBucket!72 newBucket!200 lt!1546938)))))

(declare-datatypes ((tuple2!47828 0))(
  ( (tuple2!47829 (_1!27208 (_ BitVec 64)) (_2!27208 List!48746)) )
))
(declare-datatypes ((List!48747 0))(
  ( (Nil!48623) (Cons!48623 (h!54114 tuple2!47828) (t!355663 List!48747)) )
))
(declare-datatypes ((ListLongMap!1361 0))(
  ( (ListLongMap!1362 (toList!2712 List!48747)) )
))
(declare-fun lt!1546944 () ListLongMap!1361)

(declare-fun extractMap!423 (List!48747) ListMap!1955)

(assert (=> b!4333687 (= lt!1546942 (extractMap!423 (toList!2712 lt!1546944)))))

(declare-fun lm!1707 () ListLongMap!1361)

(assert (=> b!4333687 (= lt!1546938 (extractMap!423 (t!355663 (toList!2712 lm!1707))))))

(declare-fun b!4333688 () Bool)

(declare-fun e!2696677 () Bool)

(assert (=> b!4333688 (= e!2696677 e!2696673)))

(declare-fun res!1777029 () Bool)

(assert (=> b!4333688 (=> res!1777029 e!2696673)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4333688 (= res!1777029 (or (not (is-Cons!48623 (toList!2712 lm!1707))) (not (= (_1!27208 (h!54114 (toList!2712 lm!1707))) hash!377))))))

(declare-fun e!2696676 () Bool)

(assert (=> b!4333688 e!2696676))

(declare-fun res!1777034 () Bool)

(assert (=> b!4333688 (=> (not res!1777034) (not e!2696676))))

(declare-fun lambda!135126 () Int)

(declare-fun forall!8922 (List!48747 Int) Bool)

(assert (=> b!4333688 (= res!1777034 (forall!8922 (toList!2712 lt!1546944) lambda!135126))))

(declare-fun lt!1546937 () tuple2!47828)

(declare-fun +!403 (ListLongMap!1361 tuple2!47828) ListLongMap!1361)

(assert (=> b!4333688 (= lt!1546944 (+!403 lm!1707 lt!1546937))))

(assert (=> b!4333688 (= lt!1546937 (tuple2!47829 hash!377 newBucket!200))))

(declare-datatypes ((Unit!68256 0))(
  ( (Unit!68257) )
))
(declare-fun lt!1546943 () Unit!68256)

(declare-fun addValidProp!18 (ListLongMap!1361 Int (_ BitVec 64) List!48746) Unit!68256)

(assert (=> b!4333688 (= lt!1546943 (addValidProp!18 lm!1707 lambda!135126 hash!377 newBucket!200))))

(assert (=> b!4333688 (forall!8922 (toList!2712 lm!1707) lambda!135126)))

(declare-fun b!4333689 () Bool)

(declare-fun e!2696671 () Bool)

(assert (=> b!4333689 (= e!2696671 (not e!2696677))))

(declare-fun res!1777035 () Bool)

(assert (=> b!4333689 (=> res!1777035 e!2696677)))

(declare-fun lt!1546939 () List!48746)

(assert (=> b!4333689 (= res!1777035 (not (= newBucket!200 lt!1546939)))))

(declare-fun lt!1546941 () List!48746)

(declare-fun key!3918 () K!9978)

(declare-fun newValue!99 () V!10224)

(declare-fun removePairForKey!334 (List!48746 K!9978) List!48746)

(assert (=> b!4333689 (= lt!1546939 (Cons!48622 (tuple2!47827 key!3918 newValue!99) (removePairForKey!334 lt!1546941 key!3918)))))

(declare-fun lt!1546936 () Unit!68256)

(declare-fun lt!1546940 () tuple2!47828)

(declare-fun forallContained!1572 (List!48747 Int tuple2!47828) Unit!68256)

(assert (=> b!4333689 (= lt!1546936 (forallContained!1572 (toList!2712 lm!1707) lambda!135126 lt!1546940))))

(declare-fun contains!10654 (List!48747 tuple2!47828) Bool)

(assert (=> b!4333689 (contains!10654 (toList!2712 lm!1707) lt!1546940)))

(assert (=> b!4333689 (= lt!1546940 (tuple2!47829 hash!377 lt!1546941))))

(declare-fun lt!1546935 () Unit!68256)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!211 (List!48747 (_ BitVec 64) List!48746) Unit!68256)

(assert (=> b!4333689 (= lt!1546935 (lemmaGetValueByKeyImpliesContainsTuple!211 (toList!2712 lm!1707) hash!377 lt!1546941))))

(declare-fun apply!11216 (ListLongMap!1361 (_ BitVec 64)) List!48746)

(assert (=> b!4333689 (= lt!1546941 (apply!11216 lm!1707 hash!377))))

(declare-fun b!4333690 () Bool)

(declare-fun res!1777033 () Bool)

(assert (=> b!4333690 (=> (not res!1777033) (not e!2696671))))

(declare-fun contains!10655 (ListLongMap!1361 (_ BitVec 64)) Bool)

(assert (=> b!4333690 (= res!1777033 (contains!10655 lm!1707 hash!377))))

(declare-fun b!4333691 () Bool)

(declare-fun res!1777031 () Bool)

(assert (=> b!4333691 (=> (not res!1777031) (not e!2696671))))

(declare-fun contains!10656 (ListMap!1955 K!9978) Bool)

(assert (=> b!4333691 (= res!1777031 (contains!10656 (extractMap!423 (toList!2712 lm!1707)) key!3918))))

(declare-fun b!4333692 () Bool)

(declare-fun res!1777024 () Bool)

(assert (=> b!4333692 (=> (not res!1777024) (not e!2696671))))

(declare-datatypes ((Hashable!4756 0))(
  ( (HashableExt!4755 (__x!30459 Int)) )
))
(declare-fun hashF!1247 () Hashable!4756)

(declare-fun hash!1302 (Hashable!4756 K!9978) (_ BitVec 64))

(assert (=> b!4333692 (= res!1777024 (= (hash!1302 hashF!1247 key!3918) hash!377))))

(declare-fun b!4333693 () Bool)

(declare-fun res!1777032 () Bool)

(assert (=> b!4333693 (=> (not res!1777032) (not e!2696671))))

(declare-fun allKeysSameHashInMap!468 (ListLongMap!1361 Hashable!4756) Bool)

(assert (=> b!4333693 (= res!1777032 (allKeysSameHashInMap!468 lm!1707 hashF!1247))))

(declare-fun b!4333694 () Bool)

(declare-fun res!1777025 () Bool)

(assert (=> b!4333694 (=> (not res!1777025) (not e!2696671))))

(declare-fun allKeysSameHash!322 (List!48746 (_ BitVec 64) Hashable!4756) Bool)

(assert (=> b!4333694 (= res!1777025 (allKeysSameHash!322 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4333695 () Bool)

(declare-fun res!1777026 () Bool)

(assert (=> b!4333695 (=> res!1777026 e!2696677)))

(declare-fun noDuplicateKeys!364 (List!48746) Bool)

(assert (=> b!4333695 (= res!1777026 (not (noDuplicateKeys!364 newBucket!200)))))

(declare-fun b!4333696 () Bool)

(assert (=> b!4333696 (= e!2696676 (or (not (is-Cons!48623 (toList!2712 lm!1707))) (not (= (_1!27208 (h!54114 (toList!2712 lm!1707))) hash!377)) (= lt!1546944 (ListLongMap!1362 (Cons!48623 lt!1546937 (t!355663 (toList!2712 lm!1707)))))))))

(declare-fun res!1777030 () Bool)

(assert (=> start!417806 (=> (not res!1777030) (not e!2696671))))

(assert (=> start!417806 (= res!1777030 (forall!8922 (toList!2712 lm!1707) lambda!135126))))

(assert (=> start!417806 e!2696671))

(declare-fun e!2696674 () Bool)

(assert (=> start!417806 e!2696674))

(assert (=> start!417806 true))

(declare-fun e!2696675 () Bool)

(declare-fun inv!64165 (ListLongMap!1361) Bool)

(assert (=> start!417806 (and (inv!64165 lm!1707) e!2696675)))

(declare-fun tp_is_empty!24693 () Bool)

(assert (=> start!417806 tp_is_empty!24693))

(declare-fun tp_is_empty!24695 () Bool)

(assert (=> start!417806 tp_is_empty!24695))

(declare-fun b!4333697 () Bool)

(declare-fun tp!1328775 () Bool)

(assert (=> b!4333697 (= e!2696674 (and tp_is_empty!24693 tp_is_empty!24695 tp!1328775))))

(declare-fun b!4333698 () Bool)

(assert (=> b!4333698 (= e!2696672 (= lt!1546942 (addToMapMapFromBucket!72 lt!1546939 lt!1546938)))))

(declare-fun b!4333699 () Bool)

(declare-fun res!1777028 () Bool)

(assert (=> b!4333699 (=> (not res!1777028) (not e!2696676))))

(assert (=> b!4333699 (= res!1777028 (forall!8922 (toList!2712 lt!1546944) lambda!135126))))

(declare-fun b!4333700 () Bool)

(declare-fun tp!1328776 () Bool)

(assert (=> b!4333700 (= e!2696675 tp!1328776)))

(assert (= (and start!417806 res!1777030) b!4333693))

(assert (= (and b!4333693 res!1777032) b!4333692))

(assert (= (and b!4333692 res!1777024) b!4333694))

(assert (= (and b!4333694 res!1777025) b!4333691))

(assert (= (and b!4333691 res!1777031) b!4333690))

(assert (= (and b!4333690 res!1777033) b!4333689))

(assert (= (and b!4333689 (not res!1777035)) b!4333695))

(assert (= (and b!4333695 (not res!1777026)) b!4333688))

(assert (= (and b!4333688 res!1777034) b!4333699))

(assert (= (and b!4333699 res!1777028) b!4333696))

(assert (= (and b!4333688 (not res!1777029)) b!4333687))

(assert (= (and b!4333687 res!1777027) b!4333698))

(assert (= (and start!417806 (is-Cons!48622 newBucket!200)) b!4333697))

(assert (= start!417806 b!4333700))

(declare-fun m!4927971 () Bool)

(assert (=> b!4333693 m!4927971))

(declare-fun m!4927973 () Bool)

(assert (=> b!4333687 m!4927973))

(declare-fun m!4927975 () Bool)

(assert (=> b!4333687 m!4927975))

(declare-fun m!4927977 () Bool)

(assert (=> b!4333687 m!4927977))

(declare-fun m!4927979 () Bool)

(assert (=> b!4333699 m!4927979))

(declare-fun m!4927981 () Bool)

(assert (=> b!4333692 m!4927981))

(declare-fun m!4927983 () Bool)

(assert (=> b!4333690 m!4927983))

(declare-fun m!4927985 () Bool)

(assert (=> b!4333698 m!4927985))

(declare-fun m!4927987 () Bool)

(assert (=> b!4333694 m!4927987))

(declare-fun m!4927989 () Bool)

(assert (=> b!4333689 m!4927989))

(declare-fun m!4927991 () Bool)

(assert (=> b!4333689 m!4927991))

(declare-fun m!4927993 () Bool)

(assert (=> b!4333689 m!4927993))

(declare-fun m!4927995 () Bool)

(assert (=> b!4333689 m!4927995))

(declare-fun m!4927997 () Bool)

(assert (=> b!4333689 m!4927997))

(assert (=> b!4333688 m!4927979))

(declare-fun m!4927999 () Bool)

(assert (=> b!4333688 m!4927999))

(declare-fun m!4928001 () Bool)

(assert (=> b!4333688 m!4928001))

(declare-fun m!4928003 () Bool)

(assert (=> b!4333688 m!4928003))

(declare-fun m!4928005 () Bool)

(assert (=> b!4333695 m!4928005))

(declare-fun m!4928007 () Bool)

(assert (=> b!4333691 m!4928007))

(assert (=> b!4333691 m!4928007))

(declare-fun m!4928009 () Bool)

(assert (=> b!4333691 m!4928009))

(assert (=> start!417806 m!4928003))

(declare-fun m!4928011 () Bool)

(assert (=> start!417806 m!4928011))

(push 1)

(assert (not b!4333698))

(assert (not b!4333692))

(assert (not b!4333687))

(assert (not b!4333691))

(assert (not b!4333700))

(assert (not b!4333690))

(assert (not start!417806))

(assert (not b!4333689))

(assert (not b!4333688))

(assert (not b!4333693))

(assert (not b!4333697))

(assert (not b!4333699))

(assert (not b!4333695))

(assert (not b!4333694))

(assert tp_is_empty!24695)

(assert tp_is_empty!24693)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

