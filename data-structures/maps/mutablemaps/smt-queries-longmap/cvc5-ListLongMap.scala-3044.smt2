; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42734 () Bool)

(assert start!42734)

(declare-fun b_free!12073 () Bool)

(declare-fun b_next!12073 () Bool)

(assert (=> start!42734 (= b_free!12073 (not b_next!12073))))

(declare-fun tp!42274 () Bool)

(declare-fun b_and!20627 () Bool)

(assert (=> start!42734 (= tp!42274 b_and!20627)))

(assert (=> start!42734 false))

(declare-datatypes ((B!1022 0))(
  ( (B!1023 (val!6795 Int)) )
))
(declare-datatypes ((tuple2!8960 0))(
  ( (tuple2!8961 (_1!4490 (_ BitVec 64)) (_2!4490 B!1022)) )
))
(declare-datatypes ((List!9069 0))(
  ( (Nil!9066) (Cons!9065 (h!9921 tuple2!8960) (t!15061 List!9069)) )
))
(declare-datatypes ((ListLongMap!7887 0))(
  ( (ListLongMap!7888 (toList!3959 List!9069)) )
))
(declare-fun lm!215 () ListLongMap!7887)

(declare-fun e!279761 () Bool)

(declare-fun inv!15455 (ListLongMap!7887) Bool)

(assert (=> start!42734 (and (inv!15455 lm!215) e!279761)))

(assert (=> start!42734 tp!42274))

(declare-fun b!476292 () Bool)

(declare-fun tp!42273 () Bool)

(assert (=> b!476292 (= e!279761 tp!42273)))

(assert (= start!42734 b!476292))

(declare-fun m!458637 () Bool)

(assert (=> start!42734 m!458637))

(push 1)

(assert (not start!42734))

(assert (not b!476292))

(assert b_and!20627)

(assert (not b_next!12073))

(check-sat)

