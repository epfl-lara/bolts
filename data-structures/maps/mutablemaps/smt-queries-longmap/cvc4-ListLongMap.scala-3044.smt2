; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42738 () Bool)

(assert start!42738)

(declare-fun b_free!12077 () Bool)

(declare-fun b_next!12077 () Bool)

(assert (=> start!42738 (= b_free!12077 (not b_next!12077))))

(declare-fun tp!42286 () Bool)

(declare-fun b_and!20631 () Bool)

(assert (=> start!42738 (= tp!42286 b_and!20631)))

(assert (=> start!42738 false))

(declare-datatypes ((B!1026 0))(
  ( (B!1027 (val!6797 Int)) )
))
(declare-datatypes ((tuple2!8964 0))(
  ( (tuple2!8965 (_1!4492 (_ BitVec 64)) (_2!4492 B!1026)) )
))
(declare-datatypes ((List!9071 0))(
  ( (Nil!9068) (Cons!9067 (h!9923 tuple2!8964) (t!15063 List!9071)) )
))
(declare-datatypes ((ListLongMap!7891 0))(
  ( (ListLongMap!7892 (toList!3961 List!9071)) )
))
(declare-fun lm!215 () ListLongMap!7891)

(declare-fun e!279767 () Bool)

(declare-fun inv!15457 (ListLongMap!7891) Bool)

(assert (=> start!42738 (and (inv!15457 lm!215) e!279767)))

(assert (=> start!42738 tp!42286))

(declare-fun b!476298 () Bool)

(declare-fun tp!42285 () Bool)

(assert (=> b!476298 (= e!279767 tp!42285)))

(assert (= start!42738 b!476298))

(declare-fun m!458641 () Bool)

(assert (=> start!42738 m!458641))

(push 1)

(assert (not start!42738))

(assert (not b!476298))

(assert b_and!20631)

(assert (not b_next!12077))

(check-sat)

