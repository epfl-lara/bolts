; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133140 () Bool)

(assert start!133140)

(assert (=> start!133140 false))

(declare-fun e!867618 () Bool)

(assert (=> start!133140 e!867618))

(assert (=> start!133140 true))

(declare-fun b!1557490 () Bool)

(declare-fun tp_is_empty!38397 () Bool)

(declare-fun tp!112543 () Bool)

(assert (=> b!1557490 (= e!867618 (and tp_is_empty!38397 tp!112543))))

(declare-datatypes ((B!2392 0))(
  ( (B!2393 (val!19282 Int)) )
))
(declare-datatypes ((tuple2!25080 0))(
  ( (tuple2!25081 (_1!12550 (_ BitVec 64)) (_2!12550 B!2392)) )
))
(declare-datatypes ((List!36462 0))(
  ( (Nil!36459) (Cons!36458 (h!37905 tuple2!25080) (t!51196 List!36462)) )
))
(declare-fun l!1292 () List!36462)

(get-info :version)

(assert (= (and start!133140 ((_ is Cons!36458) l!1292)) b!1557490))

(check-sat (not b!1557490) tp_is_empty!38397)
(check-sat)
