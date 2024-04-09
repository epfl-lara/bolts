; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95290 () Bool)

(assert start!95290)

(assert (=> start!95290 false))

(assert (=> start!95290 true))

(declare-datatypes ((B!1760 0))(
  ( (B!1761 (val!13083 Int)) )
))
(declare-datatypes ((tuple2!16748 0))(
  ( (tuple2!16749 (_1!8384 (_ BitVec 64)) (_2!8384 B!1760)) )
))
(declare-datatypes ((List!23318 0))(
  ( (Nil!23315) (Cons!23314 (h!24523 tuple2!16748) (t!32684 List!23318)) )
))
(declare-datatypes ((ListLongMap!14729 0))(
  ( (ListLongMap!14730 (toList!7380 List!23318)) )
))
(declare-fun lm!214 () ListLongMap!14729)

(declare-fun e!615467 () Bool)

(declare-fun inv!37845 (ListLongMap!14729) Bool)

(assert (=> start!95290 (and (inv!37845 lm!214) e!615467)))

(declare-fun b!1076576 () Bool)

(declare-fun tp!78252 () Bool)

(assert (=> b!1076576 (= e!615467 tp!78252)))

(assert (= start!95290 b!1076576))

(declare-fun m!995715 () Bool)

(assert (=> start!95290 m!995715))

(push 1)

(assert (not start!95290))

(assert (not b!1076576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

