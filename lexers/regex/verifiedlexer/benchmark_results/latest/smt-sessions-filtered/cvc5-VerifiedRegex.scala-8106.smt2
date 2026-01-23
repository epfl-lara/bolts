; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417572 () Bool)

(assert start!417572)

(declare-fun b!4332211 () Bool)

(declare-fun e!2695817 () Bool)

(declare-fun e!2695820 () Bool)

(assert (=> b!4332211 (= e!2695817 e!2695820)))

(declare-fun res!1776057 () Bool)

(assert (=> b!4332211 (=> res!1776057 e!2695820)))

(declare-datatypes ((V!10179 0))(
  ( (V!10180 (val!16217 Int)) )
))
(declare-datatypes ((K!9933 0))(
  ( (K!9934 (val!16218 Int)) )
))
(declare-datatypes ((tuple2!47754 0))(
  ( (tuple2!47755 (_1!27171 K!9933) (_2!27171 V!10179)) )
))
(declare-datatypes ((List!48706 0))(
  ( (Nil!48582) (Cons!48582 (h!54067 tuple2!47754) (t!355622 List!48706)) )
))
(declare-datatypes ((tuple2!47756 0))(
  ( (tuple2!47757 (_1!27172 (_ BitVec 64)) (_2!27172 List!48706)) )
))
(declare-datatypes ((List!48707 0))(
  ( (Nil!48583) (Cons!48583 (h!54068 tuple2!47756) (t!355623 List!48707)) )
))
(declare-datatypes ((ListLongMap!1325 0))(
  ( (ListLongMap!1326 (toList!2675 List!48707)) )
))
(declare-fun lm!1707 () ListLongMap!1325)

(declare-fun lambda!134727 () Int)

(declare-fun forall!8899 (List!48707 Int) Bool)

(assert (=> b!4332211 (= res!1776057 (not (forall!8899 (toList!2675 lm!1707) lambda!134727)))))

(assert (=> b!4332211 (forall!8899 (toList!2675 lm!1707) lambda!134727)))

(declare-fun b!4332212 () Bool)

(declare-fun res!1776054 () Bool)

(declare-fun e!2695818 () Bool)

(assert (=> b!4332212 (=> (not res!1776054) (not e!2695818))))

(declare-fun newBucket!200 () List!48706)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4738 0))(
  ( (HashableExt!4737 (__x!30441 Int)) )
))
(declare-fun hashF!1247 () Hashable!4738)

(declare-fun allKeysSameHash!304 (List!48706 (_ BitVec 64) Hashable!4738) Bool)

(assert (=> b!4332212 (= res!1776054 (allKeysSameHash!304 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4332213 () Bool)

(assert (=> b!4332213 (= e!2695818 (not e!2695817))))

(declare-fun res!1776053 () Bool)

(assert (=> b!4332213 (=> res!1776053 e!2695817)))

(declare-fun lt!1545897 () List!48706)

(declare-fun key!3918 () K!9933)

(declare-fun newValue!99 () V!10179)

(declare-fun removePairForKey!316 (List!48706 K!9933) List!48706)

(assert (=> b!4332213 (= res!1776053 (not (= newBucket!200 (Cons!48582 (tuple2!47755 key!3918 newValue!99) (removePairForKey!316 lt!1545897 key!3918)))))))

(declare-fun lt!1545898 () tuple2!47756)

(declare-datatypes ((Unit!68177 0))(
  ( (Unit!68178) )
))
(declare-fun lt!1545896 () Unit!68177)

(declare-fun forallContained!1551 (List!48707 Int tuple2!47756) Unit!68177)

(assert (=> b!4332213 (= lt!1545896 (forallContained!1551 (toList!2675 lm!1707) lambda!134727 lt!1545898))))

(declare-fun contains!10596 (List!48707 tuple2!47756) Bool)

(assert (=> b!4332213 (contains!10596 (toList!2675 lm!1707) lt!1545898)))

(assert (=> b!4332213 (= lt!1545898 (tuple2!47757 hash!377 lt!1545897))))

(declare-fun lt!1545895 () Unit!68177)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!193 (List!48707 (_ BitVec 64) List!48706) Unit!68177)

(assert (=> b!4332213 (= lt!1545895 (lemmaGetValueByKeyImpliesContainsTuple!193 (toList!2675 lm!1707) hash!377 lt!1545897))))

(declare-fun apply!11198 (ListLongMap!1325 (_ BitVec 64)) List!48706)

(assert (=> b!4332213 (= lt!1545897 (apply!11198 lm!1707 hash!377))))

(declare-fun b!4332214 () Bool)

(declare-fun res!1776056 () Bool)

(assert (=> b!4332214 (=> (not res!1776056) (not e!2695818))))

(declare-fun hash!1281 (Hashable!4738 K!9933) (_ BitVec 64))

(assert (=> b!4332214 (= res!1776056 (= (hash!1281 hashF!1247 key!3918) hash!377))))

(declare-fun tp!1328613 () Bool)

(declare-fun tp_is_empty!24623 () Bool)

(declare-fun tp_is_empty!24621 () Bool)

(declare-fun e!2695819 () Bool)

(declare-fun b!4332215 () Bool)

(assert (=> b!4332215 (= e!2695819 (and tp_is_empty!24621 tp_is_empty!24623 tp!1328613))))

(declare-fun b!4332216 () Bool)

(declare-fun res!1776059 () Bool)

(assert (=> b!4332216 (=> (not res!1776059) (not e!2695818))))

(declare-fun contains!10597 (ListLongMap!1325 (_ BitVec 64)) Bool)

(assert (=> b!4332216 (= res!1776059 (contains!10597 lm!1707 hash!377))))

(declare-fun b!4332217 () Bool)

(declare-fun res!1776052 () Bool)

(assert (=> b!4332217 (=> (not res!1776052) (not e!2695818))))

(declare-datatypes ((ListMap!1919 0))(
  ( (ListMap!1920 (toList!2676 List!48706)) )
))
(declare-fun contains!10598 (ListMap!1919 K!9933) Bool)

(declare-fun extractMap!405 (List!48707) ListMap!1919)

(assert (=> b!4332217 (= res!1776052 (contains!10598 (extractMap!405 (toList!2675 lm!1707)) key!3918))))

(declare-fun b!4332219 () Bool)

(declare-fun res!1776055 () Bool)

(assert (=> b!4332219 (=> (not res!1776055) (not e!2695818))))

(declare-fun allKeysSameHashInMap!450 (ListLongMap!1325 Hashable!4738) Bool)

(assert (=> b!4332219 (= res!1776055 (allKeysSameHashInMap!450 lm!1707 hashF!1247))))

(declare-fun b!4332220 () Bool)

(assert (=> b!4332220 (= e!2695820 true)))

(declare-fun lt!1545894 () Bool)

(declare-fun noDuplicateKeys!346 (List!48706) Bool)

(assert (=> b!4332220 (= lt!1545894 (noDuplicateKeys!346 newBucket!200))))

(declare-fun b!4332221 () Bool)

(declare-fun res!1776060 () Bool)

(assert (=> b!4332221 (=> res!1776060 e!2695817)))

(assert (=> b!4332221 (= res!1776060 (not (noDuplicateKeys!346 newBucket!200)))))

(declare-fun res!1776058 () Bool)

(assert (=> start!417572 (=> (not res!1776058) (not e!2695818))))

(assert (=> start!417572 (= res!1776058 (forall!8899 (toList!2675 lm!1707) lambda!134727))))

(assert (=> start!417572 e!2695818))

(assert (=> start!417572 e!2695819))

(assert (=> start!417572 true))

(declare-fun e!2695816 () Bool)

(declare-fun inv!64120 (ListLongMap!1325) Bool)

(assert (=> start!417572 (and (inv!64120 lm!1707) e!2695816)))

(assert (=> start!417572 tp_is_empty!24621))

(assert (=> start!417572 tp_is_empty!24623))

(declare-fun b!4332218 () Bool)

(declare-fun tp!1328614 () Bool)

(assert (=> b!4332218 (= e!2695816 tp!1328614)))

(assert (= (and start!417572 res!1776058) b!4332219))

(assert (= (and b!4332219 res!1776055) b!4332214))

(assert (= (and b!4332214 res!1776056) b!4332212))

(assert (= (and b!4332212 res!1776054) b!4332217))

(assert (= (and b!4332217 res!1776052) b!4332216))

(assert (= (and b!4332216 res!1776059) b!4332213))

(assert (= (and b!4332213 (not res!1776053)) b!4332221))

(assert (= (and b!4332221 (not res!1776060)) b!4332211))

(assert (= (and b!4332211 (not res!1776057)) b!4332220))

(assert (= (and start!417572 (is-Cons!48582 newBucket!200)) b!4332215))

(assert (= start!417572 b!4332218))

(declare-fun m!4926491 () Bool)

(assert (=> b!4332212 m!4926491))

(declare-fun m!4926493 () Bool)

(assert (=> b!4332214 m!4926493))

(declare-fun m!4926495 () Bool)

(assert (=> b!4332221 m!4926495))

(declare-fun m!4926497 () Bool)

(assert (=> b!4332216 m!4926497))

(declare-fun m!4926499 () Bool)

(assert (=> start!417572 m!4926499))

(declare-fun m!4926501 () Bool)

(assert (=> start!417572 m!4926501))

(assert (=> b!4332211 m!4926499))

(assert (=> b!4332211 m!4926499))

(declare-fun m!4926503 () Bool)

(assert (=> b!4332213 m!4926503))

(declare-fun m!4926505 () Bool)

(assert (=> b!4332213 m!4926505))

(declare-fun m!4926507 () Bool)

(assert (=> b!4332213 m!4926507))

(declare-fun m!4926509 () Bool)

(assert (=> b!4332213 m!4926509))

(declare-fun m!4926511 () Bool)

(assert (=> b!4332213 m!4926511))

(declare-fun m!4926513 () Bool)

(assert (=> b!4332219 m!4926513))

(assert (=> b!4332220 m!4926495))

(declare-fun m!4926515 () Bool)

(assert (=> b!4332217 m!4926515))

(assert (=> b!4332217 m!4926515))

(declare-fun m!4926517 () Bool)

(assert (=> b!4332217 m!4926517))

(push 1)

(assert (not b!4332217))

(assert (not b!4332212))

(assert (not start!417572))

(assert (not b!4332215))

(assert tp_is_empty!24623)

(assert (not b!4332216))

(assert (not b!4332221))

(assert tp_is_empty!24621)

(assert (not b!4332214))

(assert (not b!4332220))

(assert (not b!4332213))

(assert (not b!4332218))

(assert (not b!4332219))

(assert (not b!4332211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

