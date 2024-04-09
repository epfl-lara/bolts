; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133134 () Bool)

(assert start!133134)

(assert (=> start!133134 false))

(declare-fun e!867609 () Bool)

(assert (=> start!133134 e!867609))

(declare-fun b!1557481 () Bool)

(declare-fun tp_is_empty!38391 () Bool)

(declare-fun tp!112534 () Bool)

(assert (=> b!1557481 (= e!867609 (and tp_is_empty!38391 tp!112534))))

(declare-datatypes ((B!2386 0))(
  ( (B!2387 (val!19279 Int)) )
))
(declare-datatypes ((tuple2!25074 0))(
  ( (tuple2!25075 (_1!12547 (_ BitVec 64)) (_2!12547 B!2386)) )
))
(declare-datatypes ((List!36459 0))(
  ( (Nil!36456) (Cons!36455 (h!37902 tuple2!25074) (t!51193 List!36459)) )
))
(declare-fun l!1292 () List!36459)

(get-info :version)

(assert (= (and start!133134 ((_ is Cons!36455) l!1292)) b!1557481))

(check-sat (not b!1557481) tp_is_empty!38391)
(check-sat)
