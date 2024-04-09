; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88618 () Bool)

(assert start!88618)

(assert (=> start!88618 false))

(declare-fun e!572929 () Bool)

(assert (=> start!88618 e!572929))

(declare-fun b!1018192 () Bool)

(declare-fun tp_is_empty!23685 () Bool)

(declare-fun tp!70997 () Bool)

(assert (=> b!1018192 (= e!572929 (and tp_is_empty!23685 tp!70997))))

(declare-datatypes ((B!1618 0))(
  ( (B!1619 (val!11893 Int)) )
))
(declare-datatypes ((tuple2!15422 0))(
  ( (tuple2!15423 (_1!7721 (_ BitVec 64)) (_2!7721 B!1618)) )
))
(declare-datatypes ((List!21695 0))(
  ( (Nil!21692) (Cons!21691 (h!22889 tuple2!15422) (t!30704 List!21695)) )
))
(declare-fun l!996 () List!21695)

(get-info :version)

(assert (= (and start!88618 ((_ is Cons!21691) l!996)) b!1018192))

(check-sat (not b!1018192) tp_is_empty!23685)
(check-sat)
