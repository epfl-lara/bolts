; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72142 () Bool)

(assert start!72142)

(assert (=> start!72142 false))

(declare-fun e!466841 () Bool)

(assert (=> start!72142 e!466841))

(declare-fun b!836606 () Bool)

(declare-fun tp_is_empty!15277 () Bool)

(declare-fun tp!47501 () Bool)

(assert (=> b!836606 (= e!466841 (and tp_is_empty!15277 tp!47501))))

(declare-datatypes ((B!1208 0))(
  ( (B!1209 (val!7686 Int)) )
))
(declare-datatypes ((tuple2!10250 0))(
  ( (tuple2!10251 (_1!5135 (_ BitVec 64)) (_2!5135 B!1208)) )
))
(declare-datatypes ((List!16051 0))(
  ( (Nil!16048) (Cons!16047 (h!17178 tuple2!10250) (t!22430 List!16051)) )
))
(declare-fun l!390 () List!16051)

(assert (= (and start!72142 (is-Cons!16047 l!390)) b!836606))

(push 1)

(assert (not b!836606))

(assert tp_is_empty!15277)

(check-sat)

(pop 1)

