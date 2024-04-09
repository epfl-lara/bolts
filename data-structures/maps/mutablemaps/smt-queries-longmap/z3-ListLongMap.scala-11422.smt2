; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133182 () Bool)

(assert start!133182)

(assert (=> start!133182 false))

(declare-fun e!867801 () Bool)

(assert (=> start!133182 e!867801))

(assert (=> start!133182 true))

(declare-fun b!1557820 () Bool)

(declare-fun tp_is_empty!38415 () Bool)

(declare-fun tp!112579 () Bool)

(assert (=> b!1557820 (= e!867801 (and tp_is_empty!38415 tp!112579))))

(declare-datatypes ((B!2410 0))(
  ( (B!2411 (val!19291 Int)) )
))
(declare-datatypes ((tuple2!25098 0))(
  ( (tuple2!25099 (_1!12559 (_ BitVec 64)) (_2!12559 B!2410)) )
))
(declare-datatypes ((List!36471 0))(
  ( (Nil!36468) (Cons!36467 (h!37914 tuple2!25098) (t!51205 List!36471)) )
))
(declare-fun l!1292 () List!36471)

(get-info :version)

(assert (= (and start!133182 ((_ is Cons!36467) l!1292)) b!1557820))

(check-sat (not b!1557820) tp_is_empty!38415)
(check-sat)
