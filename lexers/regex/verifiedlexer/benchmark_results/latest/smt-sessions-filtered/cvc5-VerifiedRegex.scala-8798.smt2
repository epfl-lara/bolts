; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471102 () Bool)

(assert start!471102)

(declare-fun res!1966203 () Bool)

(declare-fun e!2914725 () Bool)

(assert (=> start!471102 (=> (not res!1966203) (not e!2914725))))

(declare-datatypes ((K!13393 0))(
  ( (K!13394 (val!18985 Int)) )
))
(declare-datatypes ((V!13639 0))(
  ( (V!13640 (val!18986 Int)) )
))
(declare-datatypes ((tuple2!53218 0))(
  ( (tuple2!53219 (_1!29903 K!13393) (_2!29903 V!13639)) )
))
(declare-datatypes ((List!52162 0))(
  ( (Nil!52038) (Cons!52038 (h!58218 tuple2!53218) (t!359300 List!52162)) )
))
(declare-fun l!12991 () List!52162)

(declare-fun key!4532 () K!13393)

(declare-fun containsKey!2841 (List!52162 K!13393) Bool)

(assert (=> start!471102 (= res!1966203 (not (containsKey!2841 l!12991 key!4532)))))

(assert (=> start!471102 e!2914725))

(declare-fun e!2914726 () Bool)

(assert (=> start!471102 e!2914726))

(declare-fun tp_is_empty!30081 () Bool)

(assert (=> start!471102 tp_is_empty!30081))

(declare-fun b!4670757 () Bool)

(assert (=> b!4670757 (= e!2914725 false)))

(declare-fun lt!1832832 () Bool)

(declare-fun noDuplicateKeys!1697 (List!52162) Bool)

(assert (=> b!4670757 (= lt!1832832 (noDuplicateKeys!1697 l!12991))))

(declare-fun b!4670758 () Bool)

(declare-fun tp!1343830 () Bool)

(declare-fun tp_is_empty!30083 () Bool)

(assert (=> b!4670758 (= e!2914726 (and tp_is_empty!30081 tp_is_empty!30083 tp!1343830))))

(assert (= (and start!471102 res!1966203) b!4670757))

(assert (= (and start!471102 (is-Cons!52038 l!12991)) b!4670758))

(declare-fun m!5564079 () Bool)

(assert (=> start!471102 m!5564079))

(declare-fun m!5564081 () Bool)

(assert (=> b!4670757 m!5564081))

(push 1)

(assert (not b!4670758))

(assert tp_is_empty!30081)

(assert tp_is_empty!30083)

(assert (not b!4670757))

(assert (not start!471102))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

