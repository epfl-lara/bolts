; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417804 () Bool)

(assert start!417804)

(declare-fun b!4333644 () Bool)

(declare-fun res!1776999 () Bool)

(declare-fun e!2696654 () Bool)

(assert (=> b!4333644 (=> (not res!1776999) (not e!2696654))))

(declare-datatypes ((V!10221 0))(
  ( (V!10222 (val!16251 Int)) )
))
(declare-datatypes ((K!9975 0))(
  ( (K!9976 (val!16252 Int)) )
))
(declare-datatypes ((tuple2!47822 0))(
  ( (tuple2!47823 (_1!27205 K!9975) (_2!27205 V!10221)) )
))
(declare-datatypes ((List!48744 0))(
  ( (Nil!48620) (Cons!48620 (h!54111 tuple2!47822) (t!355660 List!48744)) )
))
(declare-datatypes ((tuple2!47824 0))(
  ( (tuple2!47825 (_1!27206 (_ BitVec 64)) (_2!27206 List!48744)) )
))
(declare-datatypes ((List!48745 0))(
  ( (Nil!48621) (Cons!48621 (h!54112 tuple2!47824) (t!355661 List!48745)) )
))
(declare-datatypes ((ListLongMap!1359 0))(
  ( (ListLongMap!1360 (toList!2709 List!48745)) )
))
(declare-fun lt!1546913 () ListLongMap!1359)

(declare-fun lambda!135115 () Int)

(declare-fun forall!8921 (List!48745 Int) Bool)

(assert (=> b!4333644 (= res!1776999 (forall!8921 (toList!2709 lt!1546913) lambda!135115))))

(declare-fun newBucket!200 () List!48744)

(declare-fun lm!1707 () ListLongMap!1359)

(declare-fun e!2696650 () Bool)

(declare-fun b!4333645 () Bool)

(declare-datatypes ((ListMap!1953 0))(
  ( (ListMap!1954 (toList!2710 List!48744)) )
))
(declare-fun extractMap!422 (List!48745) ListMap!1953)

(declare-fun addToMapMapFromBucket!71 (List!48744 ListMap!1953) ListMap!1953)

(assert (=> b!4333645 (= e!2696650 (= (extractMap!422 (toList!2709 lt!1546913)) (addToMapMapFromBucket!71 newBucket!200 (extractMap!422 (t!355661 (toList!2709 lm!1707))))))))

(declare-fun b!4333646 () Bool)

(declare-fun res!1776987 () Bool)

(declare-fun e!2696655 () Bool)

(assert (=> b!4333646 (=> (not res!1776987) (not e!2696655))))

(declare-datatypes ((Hashable!4755 0))(
  ( (HashableExt!4754 (__x!30458 Int)) )
))
(declare-fun hashF!1247 () Hashable!4755)

(declare-fun allKeysSameHashInMap!467 (ListLongMap!1359 Hashable!4755) Bool)

(assert (=> b!4333646 (= res!1776987 (allKeysSameHashInMap!467 lm!1707 hashF!1247))))

(declare-fun b!4333647 () Bool)

(declare-fun e!2696652 () Bool)

(assert (=> b!4333647 (= e!2696654 e!2696652)))

(declare-fun res!1776988 () Bool)

(assert (=> b!4333647 (=> res!1776988 e!2696652)))

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4333647 (= res!1776988 (or (not ((_ is Cons!48621) (toList!2709 lm!1707))) (not (= (_1!27206 (h!54112 (toList!2709 lm!1707))) hash!377))))))

(declare-fun b!4333648 () Bool)

(declare-fun e!2696656 () Bool)

(declare-fun tp!1328770 () Bool)

(assert (=> b!4333648 (= e!2696656 tp!1328770)))

(declare-fun b!4333649 () Bool)

(declare-fun res!1776995 () Bool)

(declare-fun e!2696653 () Bool)

(assert (=> b!4333649 (=> res!1776995 e!2696653)))

(declare-fun noDuplicateKeys!363 (List!48744) Bool)

(assert (=> b!4333649 (= res!1776995 (not (noDuplicateKeys!363 newBucket!200)))))

(declare-fun tp!1328769 () Bool)

(declare-fun b!4333650 () Bool)

(declare-fun tp_is_empty!24689 () Bool)

(declare-fun e!2696651 () Bool)

(declare-fun tp_is_empty!24691 () Bool)

(assert (=> b!4333650 (= e!2696651 (and tp_is_empty!24689 tp_is_empty!24691 tp!1328769))))

(declare-fun b!4333651 () Bool)

(declare-fun res!1776991 () Bool)

(assert (=> b!4333651 (=> (not res!1776991) (not e!2696655))))

(declare-fun key!3918 () K!9975)

(declare-fun hash!1301 (Hashable!4755 K!9975) (_ BitVec 64))

(assert (=> b!4333651 (= res!1776991 (= (hash!1301 hashF!1247 key!3918) hash!377))))

(declare-fun b!4333652 () Bool)

(assert (=> b!4333652 (= e!2696652 e!2696650)))

(declare-fun res!1776990 () Bool)

(assert (=> b!4333652 (=> (not res!1776990) (not e!2696650))))

(declare-fun lt!1546907 () tuple2!47824)

(assert (=> b!4333652 (= res!1776990 (= lt!1546913 (ListLongMap!1360 (Cons!48621 lt!1546907 (t!355661 (toList!2709 lm!1707))))))))

(declare-fun b!4333653 () Bool)

(declare-fun e!2696649 () Bool)

(declare-fun lt!1546910 () List!48744)

(assert (=> b!4333653 (= e!2696649 (noDuplicateKeys!363 lt!1546910))))

(declare-fun b!4333654 () Bool)

(declare-fun res!1776992 () Bool)

(assert (=> b!4333654 (=> (not res!1776992) (not e!2696655))))

(declare-fun contains!10651 (ListLongMap!1359 (_ BitVec 64)) Bool)

(assert (=> b!4333654 (= res!1776992 (contains!10651 lm!1707 hash!377))))

(declare-fun b!4333655 () Bool)

(assert (=> b!4333655 (= e!2696655 (not e!2696653))))

(declare-fun res!1776997 () Bool)

(assert (=> b!4333655 (=> res!1776997 e!2696653)))

(assert (=> b!4333655 (= res!1776997 (not (= newBucket!200 lt!1546910)))))

(declare-fun lt!1546914 () List!48744)

(declare-fun newValue!99 () V!10221)

(declare-fun removePairForKey!333 (List!48744 K!9975) List!48744)

(assert (=> b!4333655 (= lt!1546910 (Cons!48620 (tuple2!47823 key!3918 newValue!99) (removePairForKey!333 lt!1546914 key!3918)))))

(declare-fun lt!1546912 () tuple2!47824)

(declare-datatypes ((Unit!68254 0))(
  ( (Unit!68255) )
))
(declare-fun lt!1546908 () Unit!68254)

(declare-fun forallContained!1571 (List!48745 Int tuple2!47824) Unit!68254)

(assert (=> b!4333655 (= lt!1546908 (forallContained!1571 (toList!2709 lm!1707) lambda!135115 lt!1546912))))

(declare-fun contains!10652 (List!48745 tuple2!47824) Bool)

(assert (=> b!4333655 (contains!10652 (toList!2709 lm!1707) lt!1546912)))

(assert (=> b!4333655 (= lt!1546912 (tuple2!47825 hash!377 lt!1546914))))

(declare-fun lt!1546911 () Unit!68254)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!210 (List!48745 (_ BitVec 64) List!48744) Unit!68254)

(assert (=> b!4333655 (= lt!1546911 (lemmaGetValueByKeyImpliesContainsTuple!210 (toList!2709 lm!1707) hash!377 lt!1546914))))

(declare-fun apply!11215 (ListLongMap!1359 (_ BitVec 64)) List!48744)

(assert (=> b!4333655 (= lt!1546914 (apply!11215 lm!1707 hash!377))))

(declare-fun b!4333656 () Bool)

(declare-fun res!1776989 () Bool)

(assert (=> b!4333656 (=> (not res!1776989) (not e!2696655))))

(declare-fun allKeysSameHash!321 (List!48744 (_ BitVec 64) Hashable!4755) Bool)

(assert (=> b!4333656 (= res!1776989 (allKeysSameHash!321 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4333657 () Bool)

(declare-fun res!1776994 () Bool)

(assert (=> b!4333657 (=> (not res!1776994) (not e!2696655))))

(declare-fun contains!10653 (ListMap!1953 K!9975) Bool)

(assert (=> b!4333657 (= res!1776994 (contains!10653 (extractMap!422 (toList!2709 lm!1707)) key!3918))))

(declare-fun b!4333658 () Bool)

(assert (=> b!4333658 (= e!2696653 e!2696649)))

(declare-fun res!1776996 () Bool)

(assert (=> b!4333658 (=> res!1776996 e!2696649)))

(assert (=> b!4333658 (= res!1776996 (or (not ((_ is Cons!48621) (toList!2709 lm!1707))) (not (= (_1!27206 (h!54112 (toList!2709 lm!1707))) hash!377))))))

(assert (=> b!4333658 e!2696654))

(declare-fun res!1776998 () Bool)

(assert (=> b!4333658 (=> (not res!1776998) (not e!2696654))))

(assert (=> b!4333658 (= res!1776998 (forall!8921 (toList!2709 lt!1546913) lambda!135115))))

(declare-fun +!402 (ListLongMap!1359 tuple2!47824) ListLongMap!1359)

(assert (=> b!4333658 (= lt!1546913 (+!402 lm!1707 lt!1546907))))

(assert (=> b!4333658 (= lt!1546907 (tuple2!47825 hash!377 newBucket!200))))

(declare-fun lt!1546909 () Unit!68254)

(declare-fun addValidProp!17 (ListLongMap!1359 Int (_ BitVec 64) List!48744) Unit!68254)

(assert (=> b!4333658 (= lt!1546909 (addValidProp!17 lm!1707 lambda!135115 hash!377 newBucket!200))))

(assert (=> b!4333658 (forall!8921 (toList!2709 lm!1707) lambda!135115)))

(declare-fun res!1776993 () Bool)

(assert (=> start!417804 (=> (not res!1776993) (not e!2696655))))

(assert (=> start!417804 (= res!1776993 (forall!8921 (toList!2709 lm!1707) lambda!135115))))

(assert (=> start!417804 e!2696655))

(assert (=> start!417804 e!2696651))

(assert (=> start!417804 true))

(declare-fun inv!64161 (ListLongMap!1359) Bool)

(assert (=> start!417804 (and (inv!64161 lm!1707) e!2696656)))

(assert (=> start!417804 tp_is_empty!24689))

(assert (=> start!417804 tp_is_empty!24691))

(assert (= (and start!417804 res!1776993) b!4333646))

(assert (= (and b!4333646 res!1776987) b!4333651))

(assert (= (and b!4333651 res!1776991) b!4333656))

(assert (= (and b!4333656 res!1776989) b!4333657))

(assert (= (and b!4333657 res!1776994) b!4333654))

(assert (= (and b!4333654 res!1776992) b!4333655))

(assert (= (and b!4333655 (not res!1776997)) b!4333649))

(assert (= (and b!4333649 (not res!1776995)) b!4333658))

(assert (= (and b!4333658 res!1776998) b!4333644))

(assert (= (and b!4333644 res!1776999) b!4333647))

(assert (= (and b!4333647 (not res!1776988)) b!4333652))

(assert (= (and b!4333652 res!1776990) b!4333645))

(assert (= (and b!4333658 (not res!1776996)) b!4333653))

(assert (= (and start!417804 ((_ is Cons!48620) newBucket!200)) b!4333650))

(assert (= start!417804 b!4333648))

(declare-fun m!4927929 () Bool)

(assert (=> b!4333646 m!4927929))

(declare-fun m!4927931 () Bool)

(assert (=> b!4333649 m!4927931))

(declare-fun m!4927933 () Bool)

(assert (=> b!4333654 m!4927933))

(declare-fun m!4927935 () Bool)

(assert (=> b!4333656 m!4927935))

(declare-fun m!4927937 () Bool)

(assert (=> b!4333651 m!4927937))

(declare-fun m!4927939 () Bool)

(assert (=> b!4333658 m!4927939))

(declare-fun m!4927941 () Bool)

(assert (=> b!4333658 m!4927941))

(declare-fun m!4927943 () Bool)

(assert (=> b!4333658 m!4927943))

(declare-fun m!4927945 () Bool)

(assert (=> b!4333658 m!4927945))

(assert (=> b!4333644 m!4927939))

(declare-fun m!4927947 () Bool)

(assert (=> b!4333645 m!4927947))

(declare-fun m!4927949 () Bool)

(assert (=> b!4333645 m!4927949))

(assert (=> b!4333645 m!4927949))

(declare-fun m!4927951 () Bool)

(assert (=> b!4333645 m!4927951))

(assert (=> start!417804 m!4927945))

(declare-fun m!4927953 () Bool)

(assert (=> start!417804 m!4927953))

(declare-fun m!4927955 () Bool)

(assert (=> b!4333657 m!4927955))

(assert (=> b!4333657 m!4927955))

(declare-fun m!4927957 () Bool)

(assert (=> b!4333657 m!4927957))

(declare-fun m!4927959 () Bool)

(assert (=> b!4333653 m!4927959))

(declare-fun m!4927961 () Bool)

(assert (=> b!4333655 m!4927961))

(declare-fun m!4927963 () Bool)

(assert (=> b!4333655 m!4927963))

(declare-fun m!4927965 () Bool)

(assert (=> b!4333655 m!4927965))

(declare-fun m!4927967 () Bool)

(assert (=> b!4333655 m!4927967))

(declare-fun m!4927969 () Bool)

(assert (=> b!4333655 m!4927969))

(check-sat (not b!4333654) (not b!4333651) (not b!4333650) (not b!4333645) (not b!4333644) (not b!4333658) (not b!4333657) (not b!4333646) tp_is_empty!24691 (not b!4333653) (not start!417804) (not b!4333649) (not b!4333655) (not b!4333648) tp_is_empty!24689 (not b!4333656))
(check-sat)
