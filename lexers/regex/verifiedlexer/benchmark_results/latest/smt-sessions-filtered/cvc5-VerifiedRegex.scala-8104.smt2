; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417512 () Bool)

(assert start!417512)

(declare-fun b!4331945 () Bool)

(declare-fun res!1775904 () Bool)

(declare-fun e!2695662 () Bool)

(assert (=> b!4331945 (=> (not res!1775904) (not e!2695662))))

(declare-datatypes ((V!10169 0))(
  ( (V!10170 (val!16209 Int)) )
))
(declare-datatypes ((K!9923 0))(
  ( (K!9924 (val!16210 Int)) )
))
(declare-datatypes ((tuple2!47738 0))(
  ( (tuple2!47739 (_1!27163 K!9923) (_2!27163 V!10169)) )
))
(declare-datatypes ((List!48697 0))(
  ( (Nil!48573) (Cons!48573 (h!54056 tuple2!47738) (t!355613 List!48697)) )
))
(declare-datatypes ((tuple2!47740 0))(
  ( (tuple2!47741 (_1!27164 (_ BitVec 64)) (_2!27164 List!48697)) )
))
(declare-datatypes ((List!48698 0))(
  ( (Nil!48574) (Cons!48574 (h!54057 tuple2!47740) (t!355614 List!48698)) )
))
(declare-datatypes ((ListLongMap!1317 0))(
  ( (ListLongMap!1318 (toList!2667 List!48698)) )
))
(declare-fun lm!1707 () ListLongMap!1317)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!10583 (ListLongMap!1317 (_ BitVec 64)) Bool)

(assert (=> b!4331945 (= res!1775904 (contains!10583 lm!1707 hash!377))))

(declare-fun b!4331947 () Bool)

(assert (=> b!4331947 (= e!2695662 (not true))))

(declare-datatypes ((Unit!68165 0))(
  ( (Unit!68166) )
))
(declare-fun lt!1545748 () Unit!68165)

(declare-fun lambda!134685 () Int)

(declare-fun lt!1545751 () tuple2!47740)

(declare-fun forallContained!1547 (List!48698 Int tuple2!47740) Unit!68165)

(assert (=> b!4331947 (= lt!1545748 (forallContained!1547 (toList!2667 lm!1707) lambda!134685 lt!1545751))))

(declare-fun contains!10584 (List!48698 tuple2!47740) Bool)

(assert (=> b!4331947 (contains!10584 (toList!2667 lm!1707) lt!1545751)))

(declare-fun lt!1545749 () List!48697)

(assert (=> b!4331947 (= lt!1545751 (tuple2!47741 hash!377 lt!1545749))))

(declare-fun lt!1545750 () Unit!68165)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!189 (List!48698 (_ BitVec 64) List!48697) Unit!68165)

(assert (=> b!4331947 (= lt!1545750 (lemmaGetValueByKeyImpliesContainsTuple!189 (toList!2667 lm!1707) hash!377 lt!1545749))))

(declare-fun apply!11194 (ListLongMap!1317 (_ BitVec 64)) List!48697)

(assert (=> b!4331947 (= lt!1545749 (apply!11194 lm!1707 hash!377))))

(declare-fun tp_is_empty!24607 () Bool)

(declare-fun b!4331948 () Bool)

(declare-fun tp_is_empty!24605 () Bool)

(declare-fun e!2695663 () Bool)

(declare-fun tp!1328572 () Bool)

(assert (=> b!4331948 (= e!2695663 (and tp_is_empty!24605 tp_is_empty!24607 tp!1328572))))

(declare-fun b!4331949 () Bool)

(declare-fun res!1775906 () Bool)

(assert (=> b!4331949 (=> (not res!1775906) (not e!2695662))))

(declare-fun newBucket!200 () List!48697)

(declare-datatypes ((Hashable!4734 0))(
  ( (HashableExt!4733 (__x!30437 Int)) )
))
(declare-fun hashF!1247 () Hashable!4734)

(declare-fun allKeysSameHash!300 (List!48697 (_ BitVec 64) Hashable!4734) Bool)

(assert (=> b!4331949 (= res!1775906 (allKeysSameHash!300 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4331950 () Bool)

(declare-fun res!1775905 () Bool)

(assert (=> b!4331950 (=> (not res!1775905) (not e!2695662))))

(declare-fun key!3918 () K!9923)

(declare-datatypes ((ListMap!1911 0))(
  ( (ListMap!1912 (toList!2668 List!48697)) )
))
(declare-fun contains!10585 (ListMap!1911 K!9923) Bool)

(declare-fun extractMap!401 (List!48698) ListMap!1911)

(assert (=> b!4331950 (= res!1775905 (contains!10585 (extractMap!401 (toList!2667 lm!1707)) key!3918))))

(declare-fun b!4331951 () Bool)

(declare-fun res!1775902 () Bool)

(assert (=> b!4331951 (=> (not res!1775902) (not e!2695662))))

(declare-fun hash!1275 (Hashable!4734 K!9923) (_ BitVec 64))

(assert (=> b!4331951 (= res!1775902 (= (hash!1275 hashF!1247 key!3918) hash!377))))

(declare-fun b!4331952 () Bool)

(declare-fun e!2695664 () Bool)

(declare-fun tp!1328571 () Bool)

(assert (=> b!4331952 (= e!2695664 tp!1328571)))

(declare-fun b!4331946 () Bool)

(declare-fun res!1775907 () Bool)

(assert (=> b!4331946 (=> (not res!1775907) (not e!2695662))))

(declare-fun allKeysSameHashInMap!446 (ListLongMap!1317 Hashable!4734) Bool)

(assert (=> b!4331946 (= res!1775907 (allKeysSameHashInMap!446 lm!1707 hashF!1247))))

(declare-fun res!1775903 () Bool)

(assert (=> start!417512 (=> (not res!1775903) (not e!2695662))))

(declare-fun forall!8893 (List!48698 Int) Bool)

(assert (=> start!417512 (= res!1775903 (forall!8893 (toList!2667 lm!1707) lambda!134685))))

(assert (=> start!417512 e!2695662))

(assert (=> start!417512 e!2695663))

(assert (=> start!417512 true))

(declare-fun inv!64110 (ListLongMap!1317) Bool)

(assert (=> start!417512 (and (inv!64110 lm!1707) e!2695664)))

(assert (=> start!417512 tp_is_empty!24605))

(assert (= (and start!417512 res!1775903) b!4331946))

(assert (= (and b!4331946 res!1775907) b!4331951))

(assert (= (and b!4331951 res!1775902) b!4331949))

(assert (= (and b!4331949 res!1775906) b!4331950))

(assert (= (and b!4331950 res!1775905) b!4331945))

(assert (= (and b!4331945 res!1775904) b!4331947))

(assert (= (and start!417512 (is-Cons!48573 newBucket!200)) b!4331948))

(assert (= start!417512 b!4331952))

(declare-fun m!4926247 () Bool)

(assert (=> b!4331949 m!4926247))

(declare-fun m!4926249 () Bool)

(assert (=> b!4331951 m!4926249))

(declare-fun m!4926251 () Bool)

(assert (=> start!417512 m!4926251))

(declare-fun m!4926253 () Bool)

(assert (=> start!417512 m!4926253))

(declare-fun m!4926255 () Bool)

(assert (=> b!4331950 m!4926255))

(assert (=> b!4331950 m!4926255))

(declare-fun m!4926257 () Bool)

(assert (=> b!4331950 m!4926257))

(declare-fun m!4926259 () Bool)

(assert (=> b!4331946 m!4926259))

(declare-fun m!4926261 () Bool)

(assert (=> b!4331945 m!4926261))

(declare-fun m!4926263 () Bool)

(assert (=> b!4331947 m!4926263))

(declare-fun m!4926265 () Bool)

(assert (=> b!4331947 m!4926265))

(declare-fun m!4926267 () Bool)

(assert (=> b!4331947 m!4926267))

(declare-fun m!4926269 () Bool)

(assert (=> b!4331947 m!4926269))

(push 1)

(assert (not b!4331951))

(assert (not b!4331948))

(assert (not b!4331950))

(assert tp_is_empty!24605)

(assert (not b!4331949))

(assert (not b!4331952))

(assert tp_is_empty!24607)

(assert (not start!417512))

(assert (not b!4331946))

(assert (not b!4331945))

(assert (not b!4331947))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

