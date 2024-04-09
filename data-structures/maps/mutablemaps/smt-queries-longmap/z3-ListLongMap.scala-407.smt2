; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7626 () Bool)

(assert start!7626)

(declare-fun res!28231 () Bool)

(declare-fun e!31231 () Bool)

(assert (=> start!7626 (=> (not res!28231) (not e!31231))))

(declare-datatypes ((B!958 0))(
  ( (B!959 (val!1099 Int)) )
))
(declare-datatypes ((tuple2!1784 0))(
  ( (tuple2!1785 (_1!902 (_ BitVec 64)) (_2!902 B!958)) )
))
(declare-datatypes ((List!1315 0))(
  ( (Nil!1312) (Cons!1311 (h!1891 tuple2!1784) (t!4351 List!1315)) )
))
(declare-fun l!1333 () List!1315)

(declare-fun isStrictlySorted!259 (List!1315) Bool)

(assert (=> start!7626 (= res!28231 (isStrictlySorted!259 l!1333))))

(assert (=> start!7626 e!31231))

(declare-fun e!31230 () Bool)

(assert (=> start!7626 e!31230))

(assert (=> start!7626 true))

(declare-fun tp_is_empty!2109 () Bool)

(assert (=> start!7626 tp_is_empty!2109))

(declare-fun b!48640 () Bool)

(declare-fun res!28233 () Bool)

(assert (=> b!48640 (=> (not res!28233) (not e!31231))))

(get-info :version)

(assert (=> b!48640 (= res!28233 (not ((_ is Nil!1312) l!1333)))))

(declare-fun b!48641 () Bool)

(assert (=> b!48641 (= e!31231 false)))

(declare-datatypes ((Unit!1366 0))(
  ( (Unit!1367) )
))
(declare-fun lt!20682 () Unit!1366)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun newValue!147 () B!958)

(declare-fun lemmaInsertStrictlySortedNotContainedContent!5 (List!1315 (_ BitVec 64) B!958) Unit!1366)

(assert (=> b!48641 (= lt!20682 (lemmaInsertStrictlySortedNotContainedContent!5 (t!4351 l!1333) newKey!147 newValue!147))))

(declare-fun b!48642 () Bool)

(declare-fun tp!6422 () Bool)

(assert (=> b!48642 (= e!31230 (and tp_is_empty!2109 tp!6422))))

(declare-fun b!48639 () Bool)

(declare-fun res!28232 () Bool)

(assert (=> b!48639 (=> (not res!28232) (not e!31231))))

(declare-fun containsKey!111 (List!1315 (_ BitVec 64)) Bool)

(assert (=> b!48639 (= res!28232 (not (containsKey!111 l!1333 newKey!147)))))

(assert (= (and start!7626 res!28231) b!48639))

(assert (= (and b!48639 res!28232) b!48640))

(assert (= (and b!48640 res!28233) b!48641))

(assert (= (and start!7626 ((_ is Cons!1311) l!1333)) b!48642))

(declare-fun m!42387 () Bool)

(assert (=> start!7626 m!42387))

(declare-fun m!42389 () Bool)

(assert (=> b!48641 m!42389))

(declare-fun m!42391 () Bool)

(assert (=> b!48639 m!42391))

(check-sat (not b!48642) (not b!48639) tp_is_empty!2109 (not b!48641) (not start!7626))
(check-sat)
