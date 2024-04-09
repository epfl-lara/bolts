; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!150 () Bool)

(assert start!150)

(declare-fun b_free!15 () Bool)

(declare-fun b_next!15 () Bool)

(assert (=> start!150 (= b_free!15 (not b_next!15))))

(declare-fun tp!50 () Bool)

(declare-fun b_and!39 () Bool)

(assert (=> start!150 (= tp!50 b_and!39)))

(assert (=> start!150 false))

(declare-datatypes ((B!250 0))(
  ( (B!251 (val!7 Int)) )
))
(declare-datatypes ((tuple2!14 0))(
  ( (tuple2!15 (_1!7 (_ BitVec 64)) (_2!7 B!250)) )
))
(declare-datatypes ((List!16 0))(
  ( (Nil!13) (Cons!12 (h!578 tuple2!14) (t!2035 List!16)) )
))
(declare-datatypes ((ListLongMap!19 0))(
  ( (ListLongMap!20 (toList!25 List!16)) )
))
(declare-fun lm!258 () ListLongMap!19)

(declare-fun e!312 () Bool)

(declare-fun inv!32 (ListLongMap!19) Bool)

(assert (=> start!150 (and (inv!32 lm!258) e!312)))

(assert (=> start!150 tp!50))

(declare-fun b!1767 () Bool)

(declare-fun tp!49 () Bool)

(assert (=> b!1767 (= e!312 tp!49)))

(assert (= start!150 b!1767))

(declare-fun m!449 () Bool)

(assert (=> start!150 m!449))

(check-sat (not start!150) (not b!1767) b_and!39 (not b_next!15))
(check-sat b_and!39 (not b_next!15))
