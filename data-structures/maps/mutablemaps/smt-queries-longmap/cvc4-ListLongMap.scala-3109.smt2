; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43760 () Bool)

(assert start!43760)

(assert (=> start!43760 false))

(declare-fun e!284644 () Bool)

(assert (=> start!43760 e!284644))

(declare-fun b!483599 () Bool)

(declare-fun tp_is_empty!13889 () Bool)

(declare-fun tp!43423 () Bool)

(assert (=> b!483599 (= e!284644 (and tp_is_empty!13889 tp!43423))))

(declare-datatypes ((B!1080 0))(
  ( (B!1081 (val!6992 Int)) )
))
(declare-datatypes ((tuple2!9182 0))(
  ( (tuple2!9183 (_1!4601 (_ BitVec 64)) (_2!4601 B!1080)) )
))
(declare-datatypes ((List!9291 0))(
  ( (Nil!9288) (Cons!9287 (h!10143 tuple2!9182) (t!15521 List!9291)) )
))
(declare-fun l!956 () List!9291)

(assert (= (and start!43760 (is-Cons!9287 l!956)) b!483599))

(push 1)

(assert (not b!483599))

(assert tp_is_empty!13889)

(check-sat)

(pop 1)

(push 1)

