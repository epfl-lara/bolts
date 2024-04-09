; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2364 () Bool)

(assert start!2364)

(declare-fun b_free!477 () Bool)

(declare-fun b_next!477 () Bool)

(assert (=> start!2364 (= b_free!477 (not b_next!477))))

(declare-fun tp!2504 () Bool)

(declare-fun b_and!893 () Bool)

(assert (=> start!2364 (= tp!2504 b_and!893)))

(assert (=> start!2364 false))

(declare-datatypes ((B!598 0))(
  ( (B!599 (val!397 Int)) )
))
(declare-datatypes ((tuple2!576 0))(
  ( (tuple2!577 (_1!288 (_ BitVec 64)) (_2!288 B!598)) )
))
(declare-datatypes ((List!453 0))(
  ( (Nil!450) (Cons!449 (h!1015 tuple2!576) (t!2861 List!453)) )
))
(declare-datatypes ((ListLongMap!407 0))(
  ( (ListLongMap!408 (toList!219 List!453)) )
))
(declare-fun lm!238 () ListLongMap!407)

(declare-fun e!9253 () Bool)

(declare-fun inv!769 (ListLongMap!407) Bool)

(assert (=> start!2364 (and (inv!769 lm!238) e!9253)))

(assert (=> start!2364 tp!2504))

(declare-fun b!15272 () Bool)

(declare-fun tp!2503 () Bool)

(assert (=> b!15272 (= e!9253 tp!2503)))

(assert (= start!2364 b!15272))

(declare-fun m!10155 () Bool)

(assert (=> start!2364 m!10155))

(check-sat (not start!2364) (not b!15272) b_and!893 (not b_next!477))
(check-sat b_and!893 (not b_next!477))
