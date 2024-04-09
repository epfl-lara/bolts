; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88636 () Bool)

(assert start!88636)

(declare-fun res!682877 () Bool)

(declare-fun e!572970 () Bool)

(assert (=> start!88636 (=> (not res!682877) (not e!572970))))

(declare-datatypes ((B!1636 0))(
  ( (B!1637 (val!11902 Int)) )
))
(declare-datatypes ((tuple2!15440 0))(
  ( (tuple2!15441 (_1!7730 (_ BitVec 64)) (_2!7730 B!1636)) )
))
(declare-datatypes ((List!21704 0))(
  ( (Nil!21701) (Cons!21700 (h!22898 tuple2!15440) (t!30713 List!21704)) )
))
(declare-fun l!996 () List!21704)

(declare-fun isStrictlySorted!651 (List!21704) Bool)

(assert (=> start!88636 (= res!682877 (isStrictlySorted!651 l!996))))

(assert (=> start!88636 e!572970))

(declare-fun e!572971 () Bool)

(assert (=> start!88636 e!572971))

(assert (=> start!88636 true))

(declare-fun tp_is_empty!23703 () Bool)

(assert (=> start!88636 tp_is_empty!23703))

(declare-fun b!1018247 () Bool)

(declare-fun res!682878 () Bool)

(assert (=> b!1018247 (=> (not res!682878) (not e!572970))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!516 (List!21704 (_ BitVec 64)) Bool)

(assert (=> b!1018247 (= res!682878 (containsKey!516 l!996 key!261))))

(declare-fun b!1018248 () Bool)

(assert (=> b!1018248 (= e!572970 false)))

(declare-fun lt!449493 () List!21704)

(declare-fun value!172 () B!1636)

(declare-fun insertStrictlySorted!336 (List!21704 (_ BitVec 64) B!1636) List!21704)

(assert (=> b!1018248 (= lt!449493 (insertStrictlySorted!336 l!996 key!261 value!172))))

(declare-fun b!1018249 () Bool)

(declare-fun tp!71024 () Bool)

(assert (=> b!1018249 (= e!572971 (and tp_is_empty!23703 tp!71024))))

(assert (= (and start!88636 res!682877) b!1018247))

(assert (= (and b!1018247 res!682878) b!1018248))

(get-info :version)

(assert (= (and start!88636 ((_ is Cons!21700) l!996)) b!1018249))

(declare-fun m!939317 () Bool)

(assert (=> start!88636 m!939317))

(declare-fun m!939319 () Bool)

(assert (=> b!1018247 m!939319))

(declare-fun m!939321 () Bool)

(assert (=> b!1018248 m!939321))

(check-sat (not b!1018249) (not b!1018248) tp_is_empty!23703 (not start!88636) (not b!1018247))
(check-sat)
