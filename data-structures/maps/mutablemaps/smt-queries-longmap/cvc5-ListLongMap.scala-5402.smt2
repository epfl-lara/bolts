; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72148 () Bool)

(assert start!72148)

(assert (=> start!72148 false))

(declare-fun e!466850 () Bool)

(assert (=> start!72148 e!466850))

(declare-fun b!836615 () Bool)

(declare-fun tp_is_empty!15283 () Bool)

(declare-fun tp!47510 () Bool)

(assert (=> b!836615 (= e!466850 (and tp_is_empty!15283 tp!47510))))

(declare-datatypes ((B!1214 0))(
  ( (B!1215 (val!7689 Int)) )
))
(declare-datatypes ((tuple2!10256 0))(
  ( (tuple2!10257 (_1!5138 (_ BitVec 64)) (_2!5138 B!1214)) )
))
(declare-datatypes ((List!16054 0))(
  ( (Nil!16051) (Cons!16050 (h!17181 tuple2!10256) (t!22433 List!16054)) )
))
(declare-fun l!390 () List!16054)

(assert (= (and start!72148 (is-Cons!16050 l!390)) b!836615))

(push 1)

(assert (not b!836615))

(assert tp_is_empty!15283)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

