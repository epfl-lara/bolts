; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88630 () Bool)

(assert start!88630)

(declare-fun res!682859 () Bool)

(declare-fun e!572952 () Bool)

(assert (=> start!88630 (=> (not res!682859) (not e!572952))))

(declare-datatypes ((B!1630 0))(
  ( (B!1631 (val!11899 Int)) )
))
(declare-datatypes ((tuple2!15434 0))(
  ( (tuple2!15435 (_1!7727 (_ BitVec 64)) (_2!7727 B!1630)) )
))
(declare-datatypes ((List!21701 0))(
  ( (Nil!21698) (Cons!21697 (h!22895 tuple2!15434) (t!30710 List!21701)) )
))
(declare-fun l!996 () List!21701)

(declare-fun isStrictlySorted!648 (List!21701) Bool)

(assert (=> start!88630 (= res!682859 (isStrictlySorted!648 l!996))))

(assert (=> start!88630 e!572952))

(declare-fun e!572953 () Bool)

(assert (=> start!88630 e!572953))

(assert (=> start!88630 true))

(declare-fun tp_is_empty!23697 () Bool)

(assert (=> start!88630 tp_is_empty!23697))

(declare-fun b!1018220 () Bool)

(declare-fun res!682860 () Bool)

(assert (=> b!1018220 (=> (not res!682860) (not e!572952))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!513 (List!21701 (_ BitVec 64)) Bool)

(assert (=> b!1018220 (= res!682860 (containsKey!513 l!996 key!261))))

(declare-fun b!1018221 () Bool)

(assert (=> b!1018221 (= e!572952 false)))

(declare-fun value!172 () B!1630)

(declare-fun lt!449484 () List!21701)

(declare-fun insertStrictlySorted!333 (List!21701 (_ BitVec 64) B!1630) List!21701)

(assert (=> b!1018221 (= lt!449484 (insertStrictlySorted!333 l!996 key!261 value!172))))

(declare-fun b!1018222 () Bool)

(declare-fun tp!71015 () Bool)

(assert (=> b!1018222 (= e!572953 (and tp_is_empty!23697 tp!71015))))

(assert (= (and start!88630 res!682859) b!1018220))

(assert (= (and b!1018220 res!682860) b!1018221))

(get-info :version)

(assert (= (and start!88630 ((_ is Cons!21697) l!996)) b!1018222))

(declare-fun m!939299 () Bool)

(assert (=> start!88630 m!939299))

(declare-fun m!939301 () Bool)

(assert (=> b!1018220 m!939301))

(declare-fun m!939303 () Bool)

(assert (=> b!1018221 m!939303))

(check-sat tp_is_empty!23697 (not b!1018222) (not start!88630) (not b!1018220) (not b!1018221))
(check-sat)
