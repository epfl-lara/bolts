; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72146 () Bool)

(assert start!72146)

(assert (=> start!72146 false))

(declare-fun e!466847 () Bool)

(assert (=> start!72146 e!466847))

(declare-fun b!836612 () Bool)

(declare-fun tp_is_empty!15281 () Bool)

(declare-fun tp!47507 () Bool)

(assert (=> b!836612 (= e!466847 (and tp_is_empty!15281 tp!47507))))

(declare-datatypes ((B!1212 0))(
  ( (B!1213 (val!7688 Int)) )
))
(declare-datatypes ((tuple2!10254 0))(
  ( (tuple2!10255 (_1!5137 (_ BitVec 64)) (_2!5137 B!1212)) )
))
(declare-datatypes ((List!16053 0))(
  ( (Nil!16050) (Cons!16049 (h!17180 tuple2!10254) (t!22432 List!16053)) )
))
(declare-fun l!390 () List!16053)

(assert (= (and start!72146 (is-Cons!16049 l!390)) b!836612))

(push 1)

(assert (not b!836612))

(assert tp_is_empty!15281)

(check-sat)

(pop 1)

