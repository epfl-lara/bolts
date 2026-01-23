; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!423634 () Bool)

(assert start!423634)

(declare-fun res!1796474 () Bool)

(declare-fun e!2717760 () Bool)

(assert (=> start!423634 (=> (not res!1796474) (not e!2717760))))

(declare-datatypes ((V!10679 0))(
  ( (V!10680 (val!16617 Int)) )
))
(declare-datatypes ((K!10433 0))(
  ( (K!10434 (val!16618 Int)) )
))
(declare-datatypes ((tuple2!48554 0))(
  ( (tuple2!48555 (_1!27571 K!10433) (_2!27571 V!10679)) )
))
(declare-datatypes ((List!49194 0))(
  ( (Nil!49070) (Cons!49070 (h!54647 tuple2!48554) (t!356114 List!49194)) )
))
(declare-datatypes ((tuple2!48556 0))(
  ( (tuple2!48557 (_1!27572 (_ BitVec 64)) (_2!27572 List!49194)) )
))
(declare-datatypes ((List!49195 0))(
  ( (Nil!49071) (Cons!49071 (h!54648 tuple2!48556) (t!356115 List!49195)) )
))
(declare-datatypes ((ListLongMap!1725 0))(
  ( (ListLongMap!1726 (toList!3075 List!49195)) )
))
(declare-fun lm!1707 () ListLongMap!1725)

(declare-fun lambda!142918 () Int)

(declare-fun forall!9210 (List!49195 Int) Bool)

(assert (=> start!423634 (= res!1796474 (forall!9210 (toList!3075 lm!1707) lambda!142918))))

(assert (=> start!423634 e!2717760))

(declare-fun e!2717759 () Bool)

(assert (=> start!423634 e!2717759))

(assert (=> start!423634 true))

(declare-fun e!2717757 () Bool)

(declare-fun inv!64620 (ListLongMap!1725) Bool)

(assert (=> start!423634 (and (inv!64620 lm!1707) e!2717757)))

(declare-fun tp_is_empty!25421 () Bool)

(assert (=> start!423634 tp_is_empty!25421))

(declare-fun tp_is_empty!25423 () Bool)

(assert (=> start!423634 tp_is_empty!25423))

(declare-fun b!4366813 () Bool)

(declare-fun res!1796471 () Bool)

(assert (=> b!4366813 (=> (not res!1796471) (not e!2717760))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4938 0))(
  ( (HashableExt!4937 (__x!30641 Int)) )
))
(declare-fun hashF!1247 () Hashable!4938)

(declare-fun key!3918 () K!10433)

(declare-fun hash!1693 (Hashable!4938 K!10433) (_ BitVec 64))

(assert (=> b!4366813 (= res!1796471 (= (hash!1693 hashF!1247 key!3918) hash!377))))

(declare-fun b!4366814 () Bool)

(declare-fun res!1796472 () Bool)

(assert (=> b!4366814 (=> (not res!1796472) (not e!2717760))))

(declare-fun allKeysSameHashInMap!650 (ListLongMap!1725 Hashable!4938) Bool)

(assert (=> b!4366814 (= res!1796472 (allKeysSameHashInMap!650 lm!1707 hashF!1247))))

(declare-fun b!4366815 () Bool)

(declare-fun e!2717758 () Bool)

(assert (=> b!4366815 (= e!2717760 (not e!2717758))))

(declare-fun res!1796475 () Bool)

(assert (=> b!4366815 (=> res!1796475 e!2717758)))

(declare-fun lt!1579237 () List!49194)

(declare-fun newBucket!200 () List!49194)

(declare-fun newValue!99 () V!10679)

(declare-fun removePairForKey!514 (List!49194 K!10433) List!49194)

(assert (=> b!4366815 (= res!1796475 (not (= newBucket!200 (Cons!49070 (tuple2!48555 key!3918 newValue!99) (removePairForKey!514 lt!1579237 key!3918)))))))

(declare-fun lt!1579242 () tuple2!48556)

(declare-datatypes ((Unit!73164 0))(
  ( (Unit!73165) )
))
(declare-fun lt!1579239 () Unit!73164)

(declare-fun forallContained!1848 (List!49195 Int tuple2!48556) Unit!73164)

(assert (=> b!4366815 (= lt!1579239 (forallContained!1848 (toList!3075 lm!1707) lambda!142918 lt!1579242))))

(declare-fun contains!11352 (List!49195 tuple2!48556) Bool)

(assert (=> b!4366815 (contains!11352 (toList!3075 lm!1707) lt!1579242)))

(assert (=> b!4366815 (= lt!1579242 (tuple2!48557 hash!377 lt!1579237))))

(declare-fun lt!1579238 () Unit!73164)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!391 (List!49195 (_ BitVec 64) List!49194) Unit!73164)

(assert (=> b!4366815 (= lt!1579238 (lemmaGetValueByKeyImpliesContainsTuple!391 (toList!3075 lm!1707) hash!377 lt!1579237))))

(declare-fun apply!11398 (ListLongMap!1725 (_ BitVec 64)) List!49194)

(assert (=> b!4366815 (= lt!1579237 (apply!11398 lm!1707 hash!377))))

(declare-fun b!4366816 () Bool)

(declare-fun res!1796468 () Bool)

(assert (=> b!4366816 (=> (not res!1796468) (not e!2717760))))

(declare-datatypes ((ListMap!2319 0))(
  ( (ListMap!2320 (toList!3076 List!49194)) )
))
(declare-fun contains!11353 (ListMap!2319 K!10433) Bool)

(declare-fun extractMap!605 (List!49195) ListMap!2319)

(assert (=> b!4366816 (= res!1796468 (contains!11353 (extractMap!605 (toList!3075 lm!1707)) key!3918))))

(declare-fun b!4366817 () Bool)

(declare-fun res!1796470 () Bool)

(assert (=> b!4366817 (=> (not res!1796470) (not e!2717760))))

(declare-fun allKeysSameHash!504 (List!49194 (_ BitVec 64) Hashable!4938) Bool)

(assert (=> b!4366817 (= res!1796470 (allKeysSameHash!504 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4366818 () Bool)

(declare-fun res!1796473 () Bool)

(assert (=> b!4366818 (=> res!1796473 e!2717758)))

(declare-fun noDuplicateKeys!546 (List!49194) Bool)

(assert (=> b!4366818 (= res!1796473 (not (noDuplicateKeys!546 newBucket!200)))))

(declare-fun b!4366819 () Bool)

(declare-fun tp!1330750 () Bool)

(assert (=> b!4366819 (= e!2717757 tp!1330750)))

(declare-fun b!4366820 () Bool)

(declare-fun lt!1579240 () ListLongMap!1725)

(assert (=> b!4366820 (= e!2717758 (forall!9210 (toList!3075 lt!1579240) lambda!142918))))

(assert (=> b!4366820 (forall!9210 (toList!3075 lt!1579240) lambda!142918)))

(declare-fun +!727 (ListLongMap!1725 tuple2!48556) ListLongMap!1725)

(assert (=> b!4366820 (= lt!1579240 (+!727 lm!1707 (tuple2!48557 hash!377 newBucket!200)))))

(declare-fun lt!1579241 () Unit!73164)

(declare-fun addValidProp!192 (ListLongMap!1725 Int (_ BitVec 64) List!49194) Unit!73164)

(assert (=> b!4366820 (= lt!1579241 (addValidProp!192 lm!1707 lambda!142918 hash!377 newBucket!200))))

(assert (=> b!4366820 (forall!9210 (toList!3075 lm!1707) lambda!142918)))

(declare-fun b!4366821 () Bool)

(declare-fun res!1796469 () Bool)

(assert (=> b!4366821 (=> (not res!1796469) (not e!2717760))))

(declare-fun contains!11354 (ListLongMap!1725 (_ BitVec 64)) Bool)

(assert (=> b!4366821 (= res!1796469 (contains!11354 lm!1707 hash!377))))

(declare-fun tp!1330749 () Bool)

(declare-fun b!4366822 () Bool)

(assert (=> b!4366822 (= e!2717759 (and tp_is_empty!25421 tp_is_empty!25423 tp!1330749))))

(assert (= (and start!423634 res!1796474) b!4366814))

(assert (= (and b!4366814 res!1796472) b!4366813))

(assert (= (and b!4366813 res!1796471) b!4366817))

(assert (= (and b!4366817 res!1796470) b!4366816))

(assert (= (and b!4366816 res!1796468) b!4366821))

(assert (= (and b!4366821 res!1796469) b!4366815))

(assert (= (and b!4366815 (not res!1796475)) b!4366818))

(assert (= (and b!4366818 (not res!1796473)) b!4366820))

(assert (= (and start!423634 (is-Cons!49070 newBucket!200)) b!4366822))

(assert (= start!423634 b!4366819))

(declare-fun m!4989875 () Bool)

(assert (=> b!4366821 m!4989875))

(declare-fun m!4989877 () Bool)

(assert (=> b!4366816 m!4989877))

(assert (=> b!4366816 m!4989877))

(declare-fun m!4989879 () Bool)

(assert (=> b!4366816 m!4989879))

(declare-fun m!4989881 () Bool)

(assert (=> b!4366818 m!4989881))

(declare-fun m!4989883 () Bool)

(assert (=> b!4366813 m!4989883))

(declare-fun m!4989885 () Bool)

(assert (=> b!4366814 m!4989885))

(declare-fun m!4989887 () Bool)

(assert (=> b!4366817 m!4989887))

(declare-fun m!4989889 () Bool)

(assert (=> b!4366820 m!4989889))

(declare-fun m!4989891 () Bool)

(assert (=> b!4366820 m!4989891))

(declare-fun m!4989893 () Bool)

(assert (=> b!4366820 m!4989893))

(assert (=> b!4366820 m!4989891))

(declare-fun m!4989895 () Bool)

(assert (=> b!4366820 m!4989895))

(assert (=> start!423634 m!4989895))

(declare-fun m!4989897 () Bool)

(assert (=> start!423634 m!4989897))

(declare-fun m!4989899 () Bool)

(assert (=> b!4366815 m!4989899))

(declare-fun m!4989901 () Bool)

(assert (=> b!4366815 m!4989901))

(declare-fun m!4989903 () Bool)

(assert (=> b!4366815 m!4989903))

(declare-fun m!4989905 () Bool)

(assert (=> b!4366815 m!4989905))

(declare-fun m!4989907 () Bool)

(assert (=> b!4366815 m!4989907))

(push 1)

(assert (not b!4366821))

(assert (not b!4366815))

(assert tp_is_empty!25423)

(assert (not b!4366817))

(assert (not b!4366816))

(assert tp_is_empty!25421)

(assert (not b!4366820))

(assert (not b!4366814))

(assert (not start!423634))

(assert (not b!4366813))

(assert (not b!4366819))

(assert (not b!4366818))

(assert (not b!4366822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

