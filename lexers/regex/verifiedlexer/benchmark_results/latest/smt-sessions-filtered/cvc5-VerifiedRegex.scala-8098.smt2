; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417488 () Bool)

(assert start!417488)

(declare-fun tp!1328500 () Bool)

(declare-fun tp_is_empty!24557 () Bool)

(declare-fun b!4331687 () Bool)

(declare-fun e!2695554 () Bool)

(declare-fun tp_is_empty!24559 () Bool)

(assert (=> b!4331687 (= e!2695554 (and tp_is_empty!24557 tp_is_empty!24559 tp!1328500))))

(declare-fun res!1775718 () Bool)

(declare-fun e!2695555 () Bool)

(assert (=> start!417488 (=> (not res!1775718) (not e!2695555))))

(declare-datatypes ((K!9893 0))(
  ( (K!9894 (val!16185 Int)) )
))
(declare-datatypes ((V!10139 0))(
  ( (V!10140 (val!16186 Int)) )
))
(declare-datatypes ((tuple2!47690 0))(
  ( (tuple2!47691 (_1!27139 K!9893) (_2!27139 V!10139)) )
))
(declare-datatypes ((List!48673 0))(
  ( (Nil!48549) (Cons!48549 (h!54032 tuple2!47690) (t!355589 List!48673)) )
))
(declare-datatypes ((tuple2!47692 0))(
  ( (tuple2!47693 (_1!27140 (_ BitVec 64)) (_2!27140 List!48673)) )
))
(declare-datatypes ((List!48674 0))(
  ( (Nil!48550) (Cons!48550 (h!54033 tuple2!47692) (t!355590 List!48674)) )
))
(declare-datatypes ((ListLongMap!1293 0))(
  ( (ListLongMap!1294 (toList!2647 List!48674)) )
))
(declare-fun lm!2227 () ListLongMap!1293)

(declare-fun lambda!134639 () Int)

(declare-fun forall!8881 (List!48674 Int) Bool)

(assert (=> start!417488 (= res!1775718 (forall!8881 (toList!2647 lm!2227) lambda!134639))))

(assert (=> start!417488 e!2695555))

(declare-fun e!2695556 () Bool)

(declare-fun inv!64080 (ListLongMap!1293) Bool)

(assert (=> start!417488 (and (inv!64080 lm!2227) e!2695556)))

(assert (=> start!417488 true))

(assert (=> start!417488 e!2695554))

(declare-fun b!4331688 () Bool)

(declare-fun res!1775717 () Bool)

(assert (=> b!4331688 (=> (not res!1775717) (not e!2695555))))

(declare-datatypes ((Hashable!4722 0))(
  ( (HashableExt!4721 (__x!30425 Int)) )
))
(declare-fun hashF!1461 () Hashable!4722)

(declare-fun allKeysSameHashInMap!434 (ListLongMap!1293 Hashable!4722) Bool)

(assert (=> b!4331688 (= res!1775717 (allKeysSameHashInMap!434 lm!2227 hashF!1461))))

(declare-fun b!4331689 () Bool)

(declare-fun res!1775716 () Bool)

(assert (=> b!4331689 (=> (not res!1775716) (not e!2695555))))

(declare-fun newBucket!230 () List!48673)

(declare-fun noDuplicateKeys!342 (List!48673) Bool)

(assert (=> b!4331689 (= res!1775716 (noDuplicateKeys!342 newBucket!230))))

(declare-fun b!4331690 () Bool)

(declare-fun tp!1328499 () Bool)

(assert (=> b!4331690 (= e!2695556 tp!1328499)))

(declare-fun b!4331691 () Bool)

(assert (=> b!4331691 (= e!2695555 false)))

(assert (= (and start!417488 res!1775718) b!4331688))

(assert (= (and b!4331688 res!1775717) b!4331689))

(assert (= (and b!4331689 res!1775716) b!4331691))

(assert (= start!417488 b!4331690))

(assert (= (and start!417488 (is-Cons!48549 newBucket!230)) b!4331687))

(declare-fun m!4926055 () Bool)

(assert (=> start!417488 m!4926055))

(declare-fun m!4926057 () Bool)

(assert (=> start!417488 m!4926057))

(declare-fun m!4926059 () Bool)

(assert (=> b!4331688 m!4926059))

(declare-fun m!4926061 () Bool)

(assert (=> b!4331689 m!4926061))

(push 1)

(assert (not b!4331689))

(assert tp_is_empty!24559)

(assert (not b!4331690))

(assert tp_is_empty!24557)

(assert (not start!417488))

(assert (not b!4331688))

(assert (not b!4331687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

