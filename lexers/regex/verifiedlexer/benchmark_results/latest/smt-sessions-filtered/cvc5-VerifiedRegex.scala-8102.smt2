; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417504 () Bool)

(assert start!417504)

(declare-fun b!4331849 () Bool)

(declare-fun res!1775832 () Bool)

(declare-fun e!2695626 () Bool)

(assert (=> b!4331849 (=> (not res!1775832) (not e!2695626))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4730 0))(
  ( (HashableExt!4729 (__x!30433 Int)) )
))
(declare-fun hashF!1247 () Hashable!4730)

(declare-datatypes ((K!9913 0))(
  ( (K!9914 (val!16201 Int)) )
))
(declare-fun key!3918 () K!9913)

(declare-fun hash!1271 (Hashable!4730 K!9913) (_ BitVec 64))

(assert (=> b!4331849 (= res!1775832 (= (hash!1271 hashF!1247 key!3918) hash!377))))

(declare-fun b!4331850 () Bool)

(declare-fun e!2695628 () Bool)

(declare-fun tp!1328547 () Bool)

(assert (=> b!4331850 (= e!2695628 tp!1328547)))

(declare-fun b!4331851 () Bool)

(assert (=> b!4331851 (= e!2695626 (not true))))

(declare-datatypes ((V!10159 0))(
  ( (V!10160 (val!16202 Int)) )
))
(declare-datatypes ((tuple2!47722 0))(
  ( (tuple2!47723 (_1!27155 K!9913) (_2!27155 V!10159)) )
))
(declare-datatypes ((List!48689 0))(
  ( (Nil!48565) (Cons!48565 (h!54048 tuple2!47722) (t!355605 List!48689)) )
))
(declare-datatypes ((tuple2!47724 0))(
  ( (tuple2!47725 (_1!27156 (_ BitVec 64)) (_2!27156 List!48689)) )
))
(declare-datatypes ((List!48690 0))(
  ( (Nil!48566) (Cons!48566 (h!54049 tuple2!47724) (t!355606 List!48690)) )
))
(declare-datatypes ((ListLongMap!1309 0))(
  ( (ListLongMap!1310 (toList!2659 List!48690)) )
))
(declare-fun lm!1707 () ListLongMap!1309)

(declare-fun lt!1545720 () List!48689)

(declare-fun contains!10571 (List!48690 tuple2!47724) Bool)

(assert (=> b!4331851 (contains!10571 (toList!2659 lm!1707) (tuple2!47725 hash!377 lt!1545720))))

(declare-datatypes ((Unit!68157 0))(
  ( (Unit!68158) )
))
(declare-fun lt!1545721 () Unit!68157)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!185 (List!48690 (_ BitVec 64) List!48689) Unit!68157)

(assert (=> b!4331851 (= lt!1545721 (lemmaGetValueByKeyImpliesContainsTuple!185 (toList!2659 lm!1707) hash!377 lt!1545720))))

(declare-fun apply!11190 (ListLongMap!1309 (_ BitVec 64)) List!48689)

(assert (=> b!4331851 (= lt!1545720 (apply!11190 lm!1707 hash!377))))

(declare-fun b!4331852 () Bool)

(declare-fun res!1775834 () Bool)

(assert (=> b!4331852 (=> (not res!1775834) (not e!2695626))))

(declare-fun allKeysSameHashInMap!442 (ListLongMap!1309 Hashable!4730) Bool)

(assert (=> b!4331852 (= res!1775834 (allKeysSameHashInMap!442 lm!1707 hashF!1247))))

(declare-fun b!4331853 () Bool)

(declare-fun res!1775831 () Bool)

(assert (=> b!4331853 (=> (not res!1775831) (not e!2695626))))

(declare-fun newBucket!200 () List!48689)

(declare-fun allKeysSameHash!296 (List!48689 (_ BitVec 64) Hashable!4730) Bool)

(assert (=> b!4331853 (= res!1775831 (allKeysSameHash!296 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1775833 () Bool)

(assert (=> start!417504 (=> (not res!1775833) (not e!2695626))))

(declare-fun lambda!134667 () Int)

(declare-fun forall!8889 (List!48690 Int) Bool)

(assert (=> start!417504 (= res!1775833 (forall!8889 (toList!2659 lm!1707) lambda!134667))))

(assert (=> start!417504 e!2695626))

(declare-fun e!2695627 () Bool)

(assert (=> start!417504 e!2695627))

(assert (=> start!417504 true))

(declare-fun inv!64100 (ListLongMap!1309) Bool)

(assert (=> start!417504 (and (inv!64100 lm!1707) e!2695628)))

(declare-fun tp_is_empty!24589 () Bool)

(assert (=> start!417504 tp_is_empty!24589))

(declare-fun b!4331854 () Bool)

(declare-fun res!1775835 () Bool)

(assert (=> b!4331854 (=> (not res!1775835) (not e!2695626))))

(declare-datatypes ((ListMap!1903 0))(
  ( (ListMap!1904 (toList!2660 List!48689)) )
))
(declare-fun contains!10572 (ListMap!1903 K!9913) Bool)

(declare-fun extractMap!397 (List!48690) ListMap!1903)

(assert (=> b!4331854 (= res!1775835 (contains!10572 (extractMap!397 (toList!2659 lm!1707)) key!3918))))

(declare-fun b!4331855 () Bool)

(declare-fun res!1775830 () Bool)

(assert (=> b!4331855 (=> (not res!1775830) (not e!2695626))))

(declare-fun contains!10573 (ListLongMap!1309 (_ BitVec 64)) Bool)

(assert (=> b!4331855 (= res!1775830 (contains!10573 lm!1707 hash!377))))

(declare-fun tp_is_empty!24591 () Bool)

(declare-fun tp!1328548 () Bool)

(declare-fun b!4331856 () Bool)

(assert (=> b!4331856 (= e!2695627 (and tp_is_empty!24589 tp_is_empty!24591 tp!1328548))))

(assert (= (and start!417504 res!1775833) b!4331852))

(assert (= (and b!4331852 res!1775834) b!4331849))

(assert (= (and b!4331849 res!1775832) b!4331853))

(assert (= (and b!4331853 res!1775831) b!4331854))

(assert (= (and b!4331854 res!1775835) b!4331855))

(assert (= (and b!4331855 res!1775830) b!4331851))

(assert (= (and start!417504 (is-Cons!48565 newBucket!200)) b!4331856))

(assert (= start!417504 b!4331850))

(declare-fun m!4926159 () Bool)

(assert (=> b!4331849 m!4926159))

(declare-fun m!4926161 () Bool)

(assert (=> b!4331853 m!4926161))

(declare-fun m!4926163 () Bool)

(assert (=> b!4331852 m!4926163))

(declare-fun m!4926165 () Bool)

(assert (=> b!4331855 m!4926165))

(declare-fun m!4926167 () Bool)

(assert (=> start!417504 m!4926167))

(declare-fun m!4926169 () Bool)

(assert (=> start!417504 m!4926169))

(declare-fun m!4926171 () Bool)

(assert (=> b!4331854 m!4926171))

(assert (=> b!4331854 m!4926171))

(declare-fun m!4926173 () Bool)

(assert (=> b!4331854 m!4926173))

(declare-fun m!4926175 () Bool)

(assert (=> b!4331851 m!4926175))

(declare-fun m!4926177 () Bool)

(assert (=> b!4331851 m!4926177))

(declare-fun m!4926179 () Bool)

(assert (=> b!4331851 m!4926179))

(push 1)

(assert (not b!4331856))

(assert (not start!417504))

(assert (not b!4331850))

(assert tp_is_empty!24591)

(assert (not b!4331854))

(assert (not b!4331851))

(assert (not b!4331853))

(assert (not b!4331849))

(assert (not b!4331855))

(assert tp_is_empty!24589)

(assert (not b!4331852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

