; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417508 () Bool)

(assert start!417508)

(declare-fun b!4331897 () Bool)

(declare-fun res!1775868 () Bool)

(declare-fun e!2695646 () Bool)

(assert (=> b!4331897 (=> (not res!1775868) (not e!2695646))))

(declare-datatypes ((V!10164 0))(
  ( (V!10165 (val!16205 Int)) )
))
(declare-datatypes ((K!9918 0))(
  ( (K!9919 (val!16206 Int)) )
))
(declare-datatypes ((tuple2!47730 0))(
  ( (tuple2!47731 (_1!27159 K!9918) (_2!27159 V!10164)) )
))
(declare-datatypes ((List!48693 0))(
  ( (Nil!48569) (Cons!48569 (h!54052 tuple2!47730) (t!355609 List!48693)) )
))
(declare-datatypes ((tuple2!47732 0))(
  ( (tuple2!47733 (_1!27160 (_ BitVec 64)) (_2!27160 List!48693)) )
))
(declare-datatypes ((List!48694 0))(
  ( (Nil!48570) (Cons!48570 (h!54053 tuple2!47732) (t!355610 List!48694)) )
))
(declare-datatypes ((ListLongMap!1313 0))(
  ( (ListLongMap!1314 (toList!2663 List!48694)) )
))
(declare-fun lm!1707 () ListLongMap!1313)

(declare-fun key!3918 () K!9918)

(declare-datatypes ((ListMap!1907 0))(
  ( (ListMap!1908 (toList!2664 List!48693)) )
))
(declare-fun contains!10577 (ListMap!1907 K!9918) Bool)

(declare-fun extractMap!399 (List!48694) ListMap!1907)

(assert (=> b!4331897 (= res!1775868 (contains!10577 (extractMap!399 (toList!2663 lm!1707)) key!3918))))

(declare-fun b!4331898 () Bool)

(declare-fun res!1775867 () Bool)

(assert (=> b!4331898 (=> (not res!1775867) (not e!2695646))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4732 0))(
  ( (HashableExt!4731 (__x!30435 Int)) )
))
(declare-fun hashF!1247 () Hashable!4732)

(declare-fun hash!1273 (Hashable!4732 K!9918) (_ BitVec 64))

(assert (=> b!4331898 (= res!1775867 (= (hash!1273 hashF!1247 key!3918) hash!377))))

(declare-fun b!4331899 () Bool)

(declare-fun res!1775869 () Bool)

(assert (=> b!4331899 (=> (not res!1775869) (not e!2695646))))

(declare-fun contains!10578 (ListLongMap!1313 (_ BitVec 64)) Bool)

(assert (=> b!4331899 (= res!1775869 (contains!10578 lm!1707 hash!377))))

(declare-fun b!4331900 () Bool)

(declare-fun lambda!134675 () Int)

(declare-fun forall!8891 (List!48694 Int) Bool)

(assert (=> b!4331900 (= e!2695646 (not (forall!8891 (toList!2663 lm!1707) lambda!134675)))))

(declare-fun lt!1545732 () List!48693)

(declare-fun contains!10579 (List!48694 tuple2!47732) Bool)

(assert (=> b!4331900 (contains!10579 (toList!2663 lm!1707) (tuple2!47733 hash!377 lt!1545732))))

(declare-datatypes ((Unit!68161 0))(
  ( (Unit!68162) )
))
(declare-fun lt!1545733 () Unit!68161)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!187 (List!48694 (_ BitVec 64) List!48693) Unit!68161)

(assert (=> b!4331900 (= lt!1545733 (lemmaGetValueByKeyImpliesContainsTuple!187 (toList!2663 lm!1707) hash!377 lt!1545732))))

(declare-fun apply!11192 (ListLongMap!1313 (_ BitVec 64)) List!48693)

(assert (=> b!4331900 (= lt!1545732 (apply!11192 lm!1707 hash!377))))

(declare-fun res!1775870 () Bool)

(assert (=> start!417508 (=> (not res!1775870) (not e!2695646))))

(assert (=> start!417508 (= res!1775870 (forall!8891 (toList!2663 lm!1707) lambda!134675))))

(assert (=> start!417508 e!2695646))

(declare-fun e!2695644 () Bool)

(assert (=> start!417508 e!2695644))

(assert (=> start!417508 true))

(declare-fun e!2695645 () Bool)

(declare-fun inv!64105 (ListLongMap!1313) Bool)

(assert (=> start!417508 (and (inv!64105 lm!1707) e!2695645)))

(declare-fun tp_is_empty!24597 () Bool)

(assert (=> start!417508 tp_is_empty!24597))

(declare-fun b!4331901 () Bool)

(declare-fun res!1775871 () Bool)

(assert (=> b!4331901 (=> (not res!1775871) (not e!2695646))))

(declare-fun newBucket!200 () List!48693)

(declare-fun allKeysSameHash!298 (List!48693 (_ BitVec 64) Hashable!4732) Bool)

(assert (=> b!4331901 (= res!1775871 (allKeysSameHash!298 newBucket!200 hash!377 hashF!1247))))

(declare-fun tp_is_empty!24599 () Bool)

(declare-fun b!4331902 () Bool)

(declare-fun tp!1328559 () Bool)

(assert (=> b!4331902 (= e!2695644 (and tp_is_empty!24597 tp_is_empty!24599 tp!1328559))))

(declare-fun b!4331903 () Bool)

(declare-fun tp!1328560 () Bool)

(assert (=> b!4331903 (= e!2695645 tp!1328560)))

(declare-fun b!4331904 () Bool)

(declare-fun res!1775866 () Bool)

(assert (=> b!4331904 (=> (not res!1775866) (not e!2695646))))

(declare-fun allKeysSameHashInMap!444 (ListLongMap!1313 Hashable!4732) Bool)

(assert (=> b!4331904 (= res!1775866 (allKeysSameHashInMap!444 lm!1707 hashF!1247))))

(assert (= (and start!417508 res!1775870) b!4331904))

(assert (= (and b!4331904 res!1775866) b!4331898))

(assert (= (and b!4331898 res!1775867) b!4331901))

(assert (= (and b!4331901 res!1775871) b!4331897))

(assert (= (and b!4331897 res!1775868) b!4331899))

(assert (= (and b!4331899 res!1775869) b!4331900))

(assert (= (and start!417508 (is-Cons!48569 newBucket!200)) b!4331902))

(assert (= start!417508 b!4331903))

(declare-fun m!4926203 () Bool)

(assert (=> b!4331904 m!4926203))

(declare-fun m!4926205 () Bool)

(assert (=> b!4331901 m!4926205))

(declare-fun m!4926207 () Bool)

(assert (=> b!4331899 m!4926207))

(declare-fun m!4926209 () Bool)

(assert (=> b!4331900 m!4926209))

(declare-fun m!4926211 () Bool)

(assert (=> b!4331900 m!4926211))

(declare-fun m!4926213 () Bool)

(assert (=> b!4331900 m!4926213))

(declare-fun m!4926215 () Bool)

(assert (=> b!4331900 m!4926215))

(assert (=> start!417508 m!4926209))

(declare-fun m!4926217 () Bool)

(assert (=> start!417508 m!4926217))

(declare-fun m!4926219 () Bool)

(assert (=> b!4331897 m!4926219))

(assert (=> b!4331897 m!4926219))

(declare-fun m!4926221 () Bool)

(assert (=> b!4331897 m!4926221))

(declare-fun m!4926223 () Bool)

(assert (=> b!4331898 m!4926223))

(push 1)

(assert tp_is_empty!24599)

(assert (not b!4331899))

(assert (not b!4331903))

(assert (not b!4331897))

(assert (not b!4331901))

(assert (not start!417508))

(assert (not b!4331902))

(assert tp_is_empty!24597)

(assert (not b!4331904))

(assert (not b!4331900))

(assert (not b!4331898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

