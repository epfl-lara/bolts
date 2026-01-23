; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408602 () Bool)

(assert start!408602)

(declare-fun res!1752477 () Bool)

(declare-fun e!2647771 () Bool)

(assert (=> start!408602 (=> (not res!1752477) (not e!2647771))))

(declare-datatypes ((B!2837 0))(
  ( (B!2838 (val!15248 Int)) )
))
(declare-datatypes ((List!47377 0))(
  ( (Nil!47253) (Cons!47253 (h!52673 B!2837) (t!353444 List!47377)) )
))
(declare-fun l1!1529 () List!47377)

(declare-fun b!25415 () B!2837)

(declare-fun contains!9774 (List!47377 B!2837) Bool)

(assert (=> start!408602 (= res!1752477 (not (contains!9774 l1!1529 b!25415)))))

(assert (=> start!408602 e!2647771))

(declare-fun e!2647772 () Bool)

(assert (=> start!408602 e!2647772))

(declare-fun tp_is_empty!22905 () Bool)

(assert (=> start!408602 tp_is_empty!22905))

(declare-fun e!2647770 () Bool)

(assert (=> start!408602 e!2647770))

(declare-fun b!4264292 () Bool)

(declare-fun res!1752475 () Bool)

(assert (=> b!4264292 (=> (not res!1752475) (not e!2647771))))

(declare-fun l2!1498 () List!47377)

(assert (=> b!4264292 (= res!1752475 (not (contains!9774 l2!1498 b!25415)))))

(declare-fun b!4264293 () Bool)

(assert (=> b!4264293 (= e!2647771 false)))

(declare-fun lt!1511376 () Bool)

(assert (=> b!4264293 (= lt!1511376 (contains!9774 (t!353444 l1!1529) b!25415))))

(declare-fun b!4264294 () Bool)

(declare-fun res!1752476 () Bool)

(assert (=> b!4264294 (=> (not res!1752476) (not e!2647771))))

(get-info :version)

(assert (=> b!4264294 (= res!1752476 (and (or (not ((_ is Cons!47253) l1!1529)) (not (= (h!52673 l1!1529) b!25415))) ((_ is Cons!47253) l1!1529)))))

(declare-fun b!4264295 () Bool)

(declare-fun tp!1307310 () Bool)

(assert (=> b!4264295 (= e!2647772 (and tp_is_empty!22905 tp!1307310))))

(declare-fun b!4264296 () Bool)

(declare-fun tp!1307309 () Bool)

(assert (=> b!4264296 (= e!2647770 (and tp_is_empty!22905 tp!1307309))))

(assert (= (and start!408602 res!1752477) b!4264292))

(assert (= (and b!4264292 res!1752475) b!4264294))

(assert (= (and b!4264294 res!1752476) b!4264293))

(assert (= (and start!408602 ((_ is Cons!47253) l1!1529)) b!4264295))

(assert (= (and start!408602 ((_ is Cons!47253) l2!1498)) b!4264296))

(declare-fun m!4854665 () Bool)

(assert (=> start!408602 m!4854665))

(declare-fun m!4854667 () Bool)

(assert (=> b!4264292 m!4854667))

(declare-fun m!4854669 () Bool)

(assert (=> b!4264293 m!4854669))

(check-sat (not start!408602) (not b!4264292) (not b!4264295) (not b!4264293) tp_is_empty!22905 (not b!4264296))
(check-sat)
