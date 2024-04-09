; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88654 () Bool)

(assert start!88654)

(declare-fun res!682958 () Bool)

(declare-fun e!573033 () Bool)

(assert (=> start!88654 (=> (not res!682958) (not e!573033))))

(declare-datatypes ((B!1654 0))(
  ( (B!1655 (val!11911 Int)) )
))
(declare-datatypes ((tuple2!15458 0))(
  ( (tuple2!15459 (_1!7739 (_ BitVec 64)) (_2!7739 B!1654)) )
))
(declare-datatypes ((List!21713 0))(
  ( (Nil!21710) (Cons!21709 (h!22907 tuple2!15458) (t!30722 List!21713)) )
))
(declare-fun l!996 () List!21713)

(declare-fun isStrictlySorted!660 (List!21713) Bool)

(assert (=> start!88654 (= res!682958 (isStrictlySorted!660 l!996))))

(assert (=> start!88654 e!573033))

(declare-fun e!573034 () Bool)

(assert (=> start!88654 e!573034))

(assert (=> start!88654 true))

(declare-fun tp_is_empty!23721 () Bool)

(assert (=> start!88654 tp_is_empty!23721))

(declare-fun b!1018355 () Bool)

(declare-fun res!682959 () Bool)

(assert (=> b!1018355 (=> (not res!682959) (not e!573033))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!525 (List!21713 (_ BitVec 64)) Bool)

(assert (=> b!1018355 (= res!682959 (containsKey!525 l!996 key!261))))

(declare-fun b!1018356 () Bool)

(assert (=> b!1018356 (= e!573033 false)))

(declare-fun value!172 () B!1654)

(declare-fun lt!449529 () List!21713)

(declare-fun insertStrictlySorted!345 (List!21713 (_ BitVec 64) B!1654) List!21713)

(assert (=> b!1018356 (= lt!449529 (insertStrictlySorted!345 l!996 key!261 value!172))))

(declare-fun b!1018357 () Bool)

(declare-fun tp!71051 () Bool)

(assert (=> b!1018357 (= e!573034 (and tp_is_empty!23721 tp!71051))))

(assert (= (and start!88654 res!682958) b!1018355))

(assert (= (and b!1018355 res!682959) b!1018356))

(get-info :version)

(assert (= (and start!88654 ((_ is Cons!21709) l!996)) b!1018357))

(declare-fun m!939407 () Bool)

(assert (=> start!88654 m!939407))

(declare-fun m!939409 () Bool)

(assert (=> b!1018355 m!939409))

(declare-fun m!939411 () Bool)

(assert (=> b!1018356 m!939411))

(check-sat (not b!1018357) (not start!88654) (not b!1018356) (not b!1018355) tp_is_empty!23721)
(check-sat)
