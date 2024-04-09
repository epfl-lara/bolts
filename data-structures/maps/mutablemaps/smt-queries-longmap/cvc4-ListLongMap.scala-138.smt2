; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2486 () Bool)

(assert start!2486)

(declare-fun b_free!509 () Bool)

(declare-fun b_next!509 () Bool)

(assert (=> start!2486 (= b_free!509 (not b_next!509))))

(declare-fun tp!2627 () Bool)

(declare-fun b_and!955 () Bool)

(assert (=> start!2486 (= tp!2627 b_and!955)))

(assert (=> start!2486 false))

(declare-datatypes ((B!630 0))(
  ( (B!631 (val!413 Int)) )
))
(declare-datatypes ((tuple2!608 0))(
  ( (tuple2!609 (_1!304 (_ BitVec 64)) (_2!304 B!630)) )
))
(declare-datatypes ((List!481 0))(
  ( (Nil!478) (Cons!477 (h!1043 tuple2!608) (t!2919 List!481)) )
))
(declare-datatypes ((ListLongMap!439 0))(
  ( (ListLongMap!440 (toList!235 List!481)) )
))
(declare-fun lm!238 () ListLongMap!439)

(declare-fun e!9439 () Bool)

(declare-fun inv!810 (ListLongMap!439) Bool)

(assert (=> start!2486 (and (inv!810 lm!238) e!9439)))

(assert (=> start!2486 tp!2627))

(declare-fun b!15512 () Bool)

(declare-fun tp!2626 () Bool)

(assert (=> b!15512 (= e!9439 tp!2626)))

(assert (= start!2486 b!15512))

(declare-fun m!10427 () Bool)

(assert (=> start!2486 m!10427))

(push 1)

(assert (not start!2486))

(assert (not b!15512))

(assert b_and!955)

(assert (not b_next!509))

(check-sat)

(pop 1)

(push 1)

(assert b_and!955)

(assert (not b_next!509))

(check-sat)

(pop 1)

