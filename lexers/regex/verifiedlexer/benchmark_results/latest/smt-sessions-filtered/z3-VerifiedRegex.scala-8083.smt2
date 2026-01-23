; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!417070 () Bool)

(assert start!417070)

(declare-fun b!4329232 () Bool)

(declare-fun res!1774200 () Bool)

(declare-fun e!2693913 () Bool)

(assert (=> b!4329232 (=> (not res!1774200) (not e!2693913))))

(declare-datatypes ((K!9820 0))(
  ( (K!9821 (val!16127 Int)) )
))
(declare-datatypes ((V!10066 0))(
  ( (V!10067 (val!16128 Int)) )
))
(declare-datatypes ((tuple2!47592 0))(
  ( (tuple2!47593 (_1!27090 K!9820) (_2!27090 V!10066)) )
))
(declare-datatypes ((List!48624 0))(
  ( (Nil!48500) (Cons!48500 (h!53969 tuple2!47592) (t!355536 List!48624)) )
))
(declare-fun l!13918 () List!48624)

(declare-fun otherK!9 () K!9820)

(declare-fun containsKey!459 (List!48624 K!9820) Bool)

(assert (=> b!4329232 (= res!1774200 (not (containsKey!459 l!13918 otherK!9)))))

(declare-fun b!4329233 () Bool)

(declare-fun res!1774198 () Bool)

(assert (=> b!4329233 (=> (not res!1774198) (not e!2693913))))

(get-info :version)

(assert (=> b!4329233 (= res!1774198 (not ((_ is Nil!48500) l!13918)))))

(declare-fun b!4329234 () Bool)

(declare-fun res!1774201 () Bool)

(assert (=> b!4329234 (=> (not res!1774201) (not e!2693913))))

(declare-fun key!5304 () K!9820)

(assert (=> b!4329234 (= res!1774201 (not (= otherK!9 key!5304)))))

(declare-fun b!4329235 () Bool)

(assert (=> b!4329235 (= e!2693913 false)))

(declare-datatypes ((Unit!68135 0))(
  ( (Unit!68136) )
))
(declare-fun lt!1545377 () Unit!68135)

(declare-fun lemmaRemovePairForKeyPreservesNotContainsKey!10 (List!48624 K!9820 K!9820) Unit!68135)

(assert (=> b!4329235 (= lt!1545377 (lemmaRemovePairForKeyPreservesNotContainsKey!10 (t!355536 l!13918) key!5304 otherK!9))))

(declare-fun e!2693912 () Bool)

(declare-fun tp_is_empty!24441 () Bool)

(declare-fun b!4329236 () Bool)

(declare-fun tp!1328148 () Bool)

(declare-fun tp_is_empty!24443 () Bool)

(assert (=> b!4329236 (= e!2693912 (and tp_is_empty!24441 tp_is_empty!24443 tp!1328148))))

(declare-fun res!1774199 () Bool)

(assert (=> start!417070 (=> (not res!1774199) (not e!2693913))))

(declare-fun noDuplicateKeys!313 (List!48624) Bool)

(assert (=> start!417070 (= res!1774199 (noDuplicateKeys!313 l!13918))))

(assert (=> start!417070 e!2693913))

(assert (=> start!417070 e!2693912))

(assert (=> start!417070 tp_is_empty!24441))

(assert (= (and start!417070 res!1774199) b!4329234))

(assert (= (and b!4329234 res!1774201) b!4329232))

(assert (= (and b!4329232 res!1774200) b!4329233))

(assert (= (and b!4329233 res!1774198) b!4329235))

(assert (= (and start!417070 ((_ is Cons!48500) l!13918)) b!4329236))

(declare-fun m!4923747 () Bool)

(assert (=> b!4329232 m!4923747))

(declare-fun m!4923749 () Bool)

(assert (=> b!4329235 m!4923749))

(declare-fun m!4923751 () Bool)

(assert (=> start!417070 m!4923751))

(check-sat (not b!4329232) (not b!4329236) tp_is_empty!24441 (not b!4329235) tp_is_empty!24443 (not start!417070))
(check-sat)
