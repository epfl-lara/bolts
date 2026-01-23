; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417500 () Bool)

(assert start!417500)

(declare-fun res!1775795 () Bool)

(declare-fun e!2695609 () Bool)

(assert (=> start!417500 (=> (not res!1775795) (not e!2695609))))

(declare-datatypes ((V!10154 0))(
  ( (V!10155 (val!16197 Int)) )
))
(declare-datatypes ((K!9908 0))(
  ( (K!9909 (val!16198 Int)) )
))
(declare-datatypes ((tuple2!47714 0))(
  ( (tuple2!47715 (_1!27151 K!9908) (_2!27151 V!10154)) )
))
(declare-datatypes ((List!48685 0))(
  ( (Nil!48561) (Cons!48561 (h!54044 tuple2!47714) (t!355601 List!48685)) )
))
(declare-datatypes ((tuple2!47716 0))(
  ( (tuple2!47717 (_1!27152 (_ BitVec 64)) (_2!27152 List!48685)) )
))
(declare-datatypes ((List!48686 0))(
  ( (Nil!48562) (Cons!48562 (h!54045 tuple2!47716) (t!355602 List!48686)) )
))
(declare-datatypes ((ListLongMap!1305 0))(
  ( (ListLongMap!1306 (toList!2655 List!48686)) )
))
(declare-fun lm!1707 () ListLongMap!1305)

(declare-fun lambda!134661 () Int)

(declare-fun forall!8887 (List!48686 Int) Bool)

(assert (=> start!417500 (= res!1775795 (forall!8887 (toList!2655 lm!1707) lambda!134661))))

(assert (=> start!417500 e!2695609))

(declare-fun e!2695608 () Bool)

(assert (=> start!417500 e!2695608))

(assert (=> start!417500 true))

(declare-fun e!2695610 () Bool)

(declare-fun inv!64095 (ListLongMap!1305) Bool)

(assert (=> start!417500 (and (inv!64095 lm!1707) e!2695610)))

(declare-fun tp_is_empty!24581 () Bool)

(assert (=> start!417500 tp_is_empty!24581))

(declare-fun b!4331801 () Bool)

(declare-fun res!1775799 () Bool)

(assert (=> b!4331801 (=> (not res!1775799) (not e!2695609))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4728 0))(
  ( (HashableExt!4727 (__x!30431 Int)) )
))
(declare-fun hashF!1247 () Hashable!4728)

(declare-fun key!3918 () K!9908)

(declare-fun hash!1269 (Hashable!4728 K!9908) (_ BitVec 64))

(assert (=> b!4331801 (= res!1775799 (= (hash!1269 hashF!1247 key!3918) hash!377))))

(declare-fun b!4331802 () Bool)

(declare-fun res!1775798 () Bool)

(assert (=> b!4331802 (=> (not res!1775798) (not e!2695609))))

(declare-datatypes ((ListMap!1899 0))(
  ( (ListMap!1900 (toList!2656 List!48685)) )
))
(declare-fun contains!10567 (ListMap!1899 K!9908) Bool)

(declare-fun extractMap!395 (List!48686) ListMap!1899)

(assert (=> b!4331802 (= res!1775798 (contains!10567 (extractMap!395 (toList!2655 lm!1707)) key!3918))))

(declare-fun b!4331803 () Bool)

(declare-fun tp!1328536 () Bool)

(assert (=> b!4331803 (= e!2695610 tp!1328536)))

(declare-fun b!4331804 () Bool)

(declare-fun res!1775794 () Bool)

(assert (=> b!4331804 (=> (not res!1775794) (not e!2695609))))

(declare-fun contains!10568 (ListLongMap!1305 (_ BitVec 64)) Bool)

(assert (=> b!4331804 (= res!1775794 (contains!10568 lm!1707 hash!377))))

(declare-fun b!4331805 () Bool)

(declare-fun tp!1328535 () Bool)

(declare-fun tp_is_empty!24583 () Bool)

(assert (=> b!4331805 (= e!2695608 (and tp_is_empty!24581 tp_is_empty!24583 tp!1328535))))

(declare-fun b!4331806 () Bool)

(declare-fun res!1775797 () Bool)

(assert (=> b!4331806 (=> (not res!1775797) (not e!2695609))))

(declare-fun allKeysSameHashInMap!440 (ListLongMap!1305 Hashable!4728) Bool)

(assert (=> b!4331806 (= res!1775797 (allKeysSameHashInMap!440 lm!1707 hashF!1247))))

(declare-fun b!4331807 () Bool)

(declare-fun res!1775796 () Bool)

(assert (=> b!4331807 (=> (not res!1775796) (not e!2695609))))

(declare-fun newBucket!200 () List!48685)

(declare-fun allKeysSameHash!294 (List!48685 (_ BitVec 64) Hashable!4728) Bool)

(assert (=> b!4331807 (= res!1775796 (allKeysSameHash!294 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4331808 () Bool)

(assert (=> b!4331808 (= e!2695609 false)))

(declare-fun lt!1545712 () List!48685)

(declare-fun apply!11188 (ListLongMap!1305 (_ BitVec 64)) List!48685)

(assert (=> b!4331808 (= lt!1545712 (apply!11188 lm!1707 hash!377))))

(assert (= (and start!417500 res!1775795) b!4331806))

(assert (= (and b!4331806 res!1775797) b!4331801))

(assert (= (and b!4331801 res!1775799) b!4331807))

(assert (= (and b!4331807 res!1775796) b!4331802))

(assert (= (and b!4331802 res!1775798) b!4331804))

(assert (= (and b!4331804 res!1775794) b!4331808))

(assert (= (and start!417500 (is-Cons!48561 newBucket!200)) b!4331805))

(assert (= start!417500 b!4331803))

(declare-fun m!4926123 () Bool)

(assert (=> b!4331806 m!4926123))

(declare-fun m!4926125 () Bool)

(assert (=> b!4331807 m!4926125))

(declare-fun m!4926127 () Bool)

(assert (=> b!4331808 m!4926127))

(declare-fun m!4926129 () Bool)

(assert (=> b!4331801 m!4926129))

(declare-fun m!4926131 () Bool)

(assert (=> b!4331804 m!4926131))

(declare-fun m!4926133 () Bool)

(assert (=> start!417500 m!4926133))

(declare-fun m!4926135 () Bool)

(assert (=> start!417500 m!4926135))

(declare-fun m!4926137 () Bool)

(assert (=> b!4331802 m!4926137))

(assert (=> b!4331802 m!4926137))

(declare-fun m!4926139 () Bool)

(assert (=> b!4331802 m!4926139))

(push 1)

(assert (not start!417500))

(assert (not b!4331804))

(assert (not b!4331806))

(assert (not b!4331803))

(assert (not b!4331808))

(assert (not b!4331801))

(assert (not b!4331807))

(assert (not b!4331805))

(assert (not b!4331802))

(assert tp_is_empty!24581)

(assert tp_is_empty!24583)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

