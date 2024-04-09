; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5164 () Bool)

(assert start!5164)

(declare-fun res!22822 () Bool)

(declare-fun e!23984 () Bool)

(assert (=> start!5164 (=> (not res!22822) (not e!23984))))

(declare-datatypes ((B!764 0))(
  ( (B!765 (val!882 Int)) )
))
(declare-fun b!99 () B!764)

(declare-datatypes ((tuple2!1428 0))(
  ( (tuple2!1429 (_1!724 (_ BitVec 64)) (_2!724 B!764)) )
))
(declare-datatypes ((List!1008 0))(
  ( (Nil!1005) (Cons!1004 (h!1572 tuple2!1428) (t!3849 List!1008)) )
))
(declare-datatypes ((ListLongMap!1009 0))(
  ( (ListLongMap!1010 (toList!520 List!1008)) )
))
(declare-fun lm!264 () ListLongMap!1009)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!468 (List!1008 tuple2!1428) Bool)

(assert (=> start!5164 (= res!22822 (contains!468 (toList!520 lm!264) (tuple2!1429 a!526 b!99)))))

(assert (=> start!5164 e!23984))

(declare-fun e!23985 () Bool)

(declare-fun inv!1667 (ListLongMap!1009) Bool)

(assert (=> start!5164 (and (inv!1667 lm!264) e!23985)))

(assert (=> start!5164 true))

(declare-fun tp_is_empty!1687 () Bool)

(assert (=> start!5164 tp_is_empty!1687))

(declare-fun b!37838 () Bool)

(assert (=> b!37838 (= e!23984 false)))

(declare-fun b!37839 () Bool)

(declare-fun tp!5588 () Bool)

(assert (=> b!37839 (= e!23985 tp!5588)))

(assert (= (and start!5164 res!22822) b!37838))

(assert (= start!5164 b!37839))

(declare-fun m!30581 () Bool)

(assert (=> start!5164 m!30581))

(declare-fun m!30583 () Bool)

(assert (=> start!5164 m!30583))

(push 1)

(assert (not start!5164))

(assert (not b!37839))

(assert tp_is_empty!1687)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

