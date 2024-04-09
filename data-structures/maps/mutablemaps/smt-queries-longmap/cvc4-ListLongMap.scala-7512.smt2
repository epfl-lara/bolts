; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95288 () Bool)

(assert start!95288)

(assert (=> start!95288 false))

(assert (=> start!95288 true))

(declare-datatypes ((B!1758 0))(
  ( (B!1759 (val!13082 Int)) )
))
(declare-datatypes ((tuple2!16746 0))(
  ( (tuple2!16747 (_1!8383 (_ BitVec 64)) (_2!8383 B!1758)) )
))
(declare-datatypes ((List!23317 0))(
  ( (Nil!23314) (Cons!23313 (h!24522 tuple2!16746) (t!32683 List!23317)) )
))
(declare-datatypes ((ListLongMap!14727 0))(
  ( (ListLongMap!14728 (toList!7379 List!23317)) )
))
(declare-fun lm!214 () ListLongMap!14727)

(declare-fun e!615464 () Bool)

(declare-fun inv!37839 (ListLongMap!14727) Bool)

(assert (=> start!95288 (and (inv!37839 lm!214) e!615464)))

(declare-fun b!1076573 () Bool)

(declare-fun tp!78249 () Bool)

(assert (=> b!1076573 (= e!615464 tp!78249)))

(assert (= start!95288 b!1076573))

(declare-fun m!995713 () Bool)

(assert (=> start!95288 m!995713))

(push 1)

(assert (not start!95288))

(assert (not b!1076573))

(check-sat)

