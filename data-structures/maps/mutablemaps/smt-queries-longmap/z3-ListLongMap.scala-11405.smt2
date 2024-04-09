; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132840 () Bool)

(assert start!132840)

(assert (=> start!132840 false))

(declare-fun e!866370 () Bool)

(assert (=> start!132840 e!866370))

(declare-fun b!1555633 () Bool)

(declare-fun tp_is_empty!38319 () Bool)

(declare-fun tp!112330 () Bool)

(assert (=> b!1555633 (= e!866370 (and tp_is_empty!38319 tp!112330))))

(declare-datatypes ((B!2308 0))(
  ( (B!2309 (val!19240 Int)) )
))
(declare-datatypes ((tuple2!24996 0))(
  ( (tuple2!24997 (_1!12508 (_ BitVec 64)) (_2!12508 B!2308)) )
))
(declare-datatypes ((List!36420 0))(
  ( (Nil!36417) (Cons!36416 (h!37863 tuple2!24996) (t!51148 List!36420)) )
))
(declare-fun l!1177 () List!36420)

(get-info :version)

(assert (= (and start!132840 ((_ is Cons!36416) l!1177)) b!1555633))

(check-sat (not b!1555633) tp_is_empty!38319)
(check-sat)
