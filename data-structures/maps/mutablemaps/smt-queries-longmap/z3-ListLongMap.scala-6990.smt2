; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88648 () Bool)

(assert start!88648)

(declare-fun res!682941 () Bool)

(declare-fun e!573016 () Bool)

(assert (=> start!88648 (=> (not res!682941) (not e!573016))))

(declare-datatypes ((B!1648 0))(
  ( (B!1649 (val!11908 Int)) )
))
(declare-datatypes ((tuple2!15452 0))(
  ( (tuple2!15453 (_1!7736 (_ BitVec 64)) (_2!7736 B!1648)) )
))
(declare-datatypes ((List!21710 0))(
  ( (Nil!21707) (Cons!21706 (h!22904 tuple2!15452) (t!30719 List!21710)) )
))
(declare-fun l!996 () List!21710)

(declare-fun isStrictlySorted!657 (List!21710) Bool)

(assert (=> start!88648 (= res!682941 (isStrictlySorted!657 l!996))))

(assert (=> start!88648 e!573016))

(declare-fun e!573015 () Bool)

(assert (=> start!88648 e!573015))

(assert (=> start!88648 true))

(declare-fun tp_is_empty!23715 () Bool)

(assert (=> start!88648 tp_is_empty!23715))

(declare-fun b!1018328 () Bool)

(declare-fun res!682940 () Bool)

(assert (=> b!1018328 (=> (not res!682940) (not e!573016))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!522 (List!21710 (_ BitVec 64)) Bool)

(assert (=> b!1018328 (= res!682940 (containsKey!522 l!996 key!261))))

(declare-fun b!1018329 () Bool)

(assert (=> b!1018329 (= e!573016 false)))

(declare-fun value!172 () B!1648)

(declare-fun lt!449520 () List!21710)

(declare-fun insertStrictlySorted!342 (List!21710 (_ BitVec 64) B!1648) List!21710)

(assert (=> b!1018329 (= lt!449520 (insertStrictlySorted!342 l!996 key!261 value!172))))

(declare-fun b!1018330 () Bool)

(declare-fun tp!71042 () Bool)

(assert (=> b!1018330 (= e!573015 (and tp_is_empty!23715 tp!71042))))

(assert (= (and start!88648 res!682941) b!1018328))

(assert (= (and b!1018328 res!682940) b!1018329))

(get-info :version)

(assert (= (and start!88648 ((_ is Cons!21706) l!996)) b!1018330))

(declare-fun m!939389 () Bool)

(assert (=> start!88648 m!939389))

(declare-fun m!939391 () Bool)

(assert (=> b!1018328 m!939391))

(declare-fun m!939393 () Bool)

(assert (=> b!1018329 m!939393))

(check-sat tp_is_empty!23715 (not b!1018328) (not b!1018329) (not b!1018330) (not start!88648))
(check-sat)
