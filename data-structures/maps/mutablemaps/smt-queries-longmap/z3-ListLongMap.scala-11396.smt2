; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132714 () Bool)

(assert start!132714)

(assert (=> start!132714 false))

(declare-fun e!865743 () Bool)

(assert (=> start!132714 e!865743))

(assert (=> start!132714 true))

(declare-fun b!1554658 () Bool)

(declare-fun tp_is_empty!38265 () Bool)

(declare-fun tp!112222 () Bool)

(assert (=> b!1554658 (= e!865743 (and tp_is_empty!38265 tp!112222))))

(declare-datatypes ((B!2254 0))(
  ( (B!2255 (val!19213 Int)) )
))
(declare-datatypes ((tuple2!24942 0))(
  ( (tuple2!24943 (_1!12481 (_ BitVec 64)) (_2!12481 B!2254)) )
))
(declare-datatypes ((List!36393 0))(
  ( (Nil!36390) (Cons!36389 (h!37836 tuple2!24942) (t!51121 List!36393)) )
))
(declare-fun l!1177 () List!36393)

(get-info :version)

(assert (= (and start!132714 ((_ is Cons!36389) l!1177)) b!1554658))

(check-sat (not b!1554658) tp_is_empty!38265)
(check-sat)
