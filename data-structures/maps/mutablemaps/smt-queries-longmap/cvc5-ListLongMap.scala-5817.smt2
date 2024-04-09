; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75050 () Bool)

(assert start!75050)

(assert (=> start!75050 false))

(declare-datatypes ((B!1220 0))(
  ( (B!1221 (val!8916 Int)) )
))
(declare-datatypes ((tuple2!11852 0))(
  ( (tuple2!11853 (_1!5936 (_ BitVec 64)) (_2!5936 B!1220)) )
))
(declare-datatypes ((List!17716 0))(
  ( (Nil!17713) (Cons!17712 (h!18843 tuple2!11852) (t!25001 List!17716)) )
))
(declare-datatypes ((ListLongMap!10635 0))(
  ( (ListLongMap!10636 (toList!5333 List!17716)) )
))
(declare-fun lm!210 () ListLongMap!10635)

(declare-fun e!492446 () Bool)

(declare-fun inv!29353 (ListLongMap!10635) Bool)

(assert (=> start!75050 (and (inv!29353 lm!210) e!492446)))

(declare-fun b!884818 () Bool)

(declare-fun tp!54186 () Bool)

(assert (=> b!884818 (= e!492446 tp!54186)))

(assert (= start!75050 b!884818))

(declare-fun m!825185 () Bool)

(assert (=> start!75050 m!825185))

(push 1)

(assert (not start!75050))

(assert (not b!884818))

(check-sat)

(pop 1)

