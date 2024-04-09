; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95284 () Bool)

(assert start!95284)

(assert (=> start!95284 false))

(assert (=> start!95284 true))

(declare-datatypes ((B!1754 0))(
  ( (B!1755 (val!13080 Int)) )
))
(declare-datatypes ((tuple2!16742 0))(
  ( (tuple2!16743 (_1!8381 (_ BitVec 64)) (_2!8381 B!1754)) )
))
(declare-datatypes ((List!23315 0))(
  ( (Nil!23312) (Cons!23311 (h!24520 tuple2!16742) (t!32681 List!23315)) )
))
(declare-datatypes ((ListLongMap!14723 0))(
  ( (ListLongMap!14724 (toList!7377 List!23315)) )
))
(declare-fun lm!214 () ListLongMap!14723)

(declare-fun e!615458 () Bool)

(declare-fun inv!37837 (ListLongMap!14723) Bool)

(assert (=> start!95284 (and (inv!37837 lm!214) e!615458)))

(declare-fun b!1076567 () Bool)

(declare-fun tp!78243 () Bool)

(assert (=> b!1076567 (= e!615458 tp!78243)))

(assert (= start!95284 b!1076567))

(declare-fun m!995709 () Bool)

(assert (=> start!95284 m!995709))

(push 1)

(assert (not start!95284))

(assert (not b!1076567))

(check-sat)

(pop 1)

