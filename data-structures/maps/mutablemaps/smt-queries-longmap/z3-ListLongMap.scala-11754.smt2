; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137976 () Bool)

(assert start!137976)

(declare-fun res!1081748 () Bool)

(declare-fun e!883925 () Bool)

(assert (=> start!137976 (=> (not res!1081748) (not e!883925))))

(declare-datatypes ((B!2866 0))(
  ( (B!2867 (val!19795 Int)) )
))
(declare-datatypes ((tuple2!25922 0))(
  ( (tuple2!25923 (_1!12971 (_ BitVec 64)) (_2!12971 B!2866)) )
))
(declare-datatypes ((List!37076 0))(
  ( (Nil!37073) (Cons!37072 (h!38616 tuple2!25922) (t!51997 List!37076)) )
))
(declare-fun l!548 () List!37076)

(declare-fun isStrictlySorted!1147 (List!37076) Bool)

(assert (=> start!137976 (= res!1081748 (isStrictlySorted!1147 l!548))))

(assert (=> start!137976 e!883925))

(declare-fun e!883926 () Bool)

(assert (=> start!137976 e!883926))

(assert (=> start!137976 true))

(declare-fun b!1583479 () Bool)

(declare-fun key!159 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1583479 (= e!883925 (and (or (not ((_ is Cons!37072) l!548)) (not (= (_1!12971 (h!38616 l!548)) key!159))) (or (not ((_ is Cons!37072) l!548)) (= (_1!12971 (h!38616 l!548)) key!159)) (not ((_ is Nil!37073) l!548))))))

(declare-fun b!1583480 () Bool)

(declare-fun tp_is_empty!39399 () Bool)

(declare-fun tp!114991 () Bool)

(assert (=> b!1583480 (= e!883926 (and tp_is_empty!39399 tp!114991))))

(assert (= (and start!137976 res!1081748) b!1583479))

(assert (= (and start!137976 ((_ is Cons!37072) l!548)) b!1583480))

(declare-fun m!1453291 () Bool)

(assert (=> start!137976 m!1453291))

(check-sat (not start!137976) (not b!1583480) tp_is_empty!39399)
(check-sat)
