; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2642 () Bool)

(assert start!2642)

(declare-fun b_free!539 () Bool)

(declare-fun b_next!539 () Bool)

(assert (=> start!2642 (= b_free!539 (not b_next!539))))

(declare-fun tp!2744 () Bool)

(declare-fun b_and!1033 () Bool)

(assert (=> start!2642 (= tp!2744 b_and!1033)))

(assert (=> start!2642 false))

(declare-datatypes ((B!660 0))(
  ( (B!661 (val!428 Int)) )
))
(declare-datatypes ((tuple2!638 0))(
  ( (tuple2!639 (_1!319 (_ BitVec 64)) (_2!319 B!660)) )
))
(declare-datatypes ((List!508 0))(
  ( (Nil!505) (Cons!504 (h!1070 tuple2!638) (t!2994 List!508)) )
))
(declare-datatypes ((ListLongMap!469 0))(
  ( (ListLongMap!470 (toList!250 List!508)) )
))
(declare-fun lm!221 () ListLongMap!469)

(declare-fun e!9664 () Bool)

(declare-fun inv!850 (ListLongMap!469) Bool)

(assert (=> start!2642 (and (inv!850 lm!221) e!9664)))

(assert (=> start!2642 tp!2744))

(declare-fun b!15824 () Bool)

(declare-fun tp!2743 () Bool)

(assert (=> b!15824 (= e!9664 tp!2743)))

(assert (= start!2642 b!15824))

(declare-fun m!10853 () Bool)

(assert (=> start!2642 m!10853))

(push 1)

(assert (not start!2642))

(assert (not b!15824))

(assert b_and!1033)

(assert (not b_next!539))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1033)

(assert (not b_next!539))

(check-sat)

(pop 1)

