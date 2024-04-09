; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!152 () Bool)

(assert start!152)

(declare-fun b_free!17 () Bool)

(declare-fun b_next!17 () Bool)

(assert (=> start!152 (= b_free!17 (not b_next!17))))

(declare-fun tp!56 () Bool)

(declare-fun b_and!41 () Bool)

(assert (=> start!152 (= tp!56 b_and!41)))

(assert (=> start!152 false))

(declare-datatypes ((B!252 0))(
  ( (B!253 (val!8 Int)) )
))
(declare-datatypes ((tuple2!16 0))(
  ( (tuple2!17 (_1!8 (_ BitVec 64)) (_2!8 B!252)) )
))
(declare-datatypes ((List!17 0))(
  ( (Nil!14) (Cons!13 (h!579 tuple2!16) (t!2036 List!17)) )
))
(declare-datatypes ((ListLongMap!21 0))(
  ( (ListLongMap!22 (toList!26 List!17)) )
))
(declare-fun lm!258 () ListLongMap!21)

(declare-fun e!315 () Bool)

(declare-fun inv!33 (ListLongMap!21) Bool)

(assert (=> start!152 (and (inv!33 lm!258) e!315)))

(assert (=> start!152 tp!56))

(declare-fun b!1770 () Bool)

(declare-fun tp!55 () Bool)

(assert (=> b!1770 (= e!315 tp!55)))

(assert (= start!152 b!1770))

(declare-fun m!451 () Bool)

(assert (=> start!152 m!451))

(push 1)

(assert (not start!152))

(assert (not b!1770))

(assert b_and!41)

(assert (not b_next!17))

(check-sat)

(pop 1)

(push 1)

(assert b_and!41)

(assert (not b_next!17))

(check-sat)

