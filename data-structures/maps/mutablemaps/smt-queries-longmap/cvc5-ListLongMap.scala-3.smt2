; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!148 () Bool)

(assert start!148)

(declare-fun b_free!13 () Bool)

(declare-fun b_next!13 () Bool)

(assert (=> start!148 (= b_free!13 (not b_next!13))))

(declare-fun tp!44 () Bool)

(declare-fun b_and!37 () Bool)

(assert (=> start!148 (= tp!44 b_and!37)))

(assert (=> start!148 false))

(declare-datatypes ((B!248 0))(
  ( (B!249 (val!6 Int)) )
))
(declare-datatypes ((tuple2!12 0))(
  ( (tuple2!13 (_1!6 (_ BitVec 64)) (_2!6 B!248)) )
))
(declare-datatypes ((List!15 0))(
  ( (Nil!12) (Cons!11 (h!577 tuple2!12) (t!2034 List!15)) )
))
(declare-datatypes ((ListLongMap!17 0))(
  ( (ListLongMap!18 (toList!24 List!15)) )
))
(declare-fun lm!258 () ListLongMap!17)

(declare-fun e!309 () Bool)

(declare-fun inv!31 (ListLongMap!17) Bool)

(assert (=> start!148 (and (inv!31 lm!258) e!309)))

(assert (=> start!148 tp!44))

(declare-fun b!1764 () Bool)

(declare-fun tp!43 () Bool)

(assert (=> b!1764 (= e!309 tp!43)))

(assert (= start!148 b!1764))

(declare-fun m!447 () Bool)

(assert (=> start!148 m!447))

(push 1)

(assert (not start!148))

(assert (not b!1764))

(assert b_and!37)

(assert (not b_next!13))

(check-sat)

(pop 1)

