; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!507772 () Bool)

(assert start!507772)

(declare-fun b!4859300 () Bool)

(declare-fun e!3037849 () Bool)

(assert (=> b!4859300 (= e!3037849 false)))

(declare-datatypes ((B!2915 0))(
  ( (B!2916 (val!22413 Int)) )
))
(declare-datatypes ((List!55881 0))(
  ( (Nil!55757) (Cons!55757 (h!62205 B!2915) (t!363501 List!55881)) )
))
(declare-fun lt!1991964 () List!55881)

(declare-fun l1!1299 () List!55881)

(declare-fun l2!1268 () List!55881)

(declare-fun ++!12142 (List!55881 List!55881) List!55881)

(assert (=> b!4859300 (= lt!1991964 (++!12142 (t!363501 l1!1299) l2!1268))))

(declare-fun b!4859301 () Bool)

(declare-fun e!3037848 () Bool)

(declare-fun tp_is_empty!35533 () Bool)

(declare-fun tp!1366834 () Bool)

(assert (=> b!4859301 (= e!3037848 (and tp_is_empty!35533 tp!1366834))))

(declare-fun b!4859302 () Bool)

(declare-fun res!2074421 () Bool)

(assert (=> b!4859302 (=> (not res!2074421) (not e!3037849))))

(assert (=> b!4859302 (= res!2074421 (is-Cons!55757 l1!1299))))

(declare-fun res!2074422 () Bool)

(assert (=> start!507772 (=> (not res!2074422) (not e!3037849))))

(declare-fun isEmpty!29846 (List!55881) Bool)

(assert (=> start!507772 (= res!2074422 (not (isEmpty!29846 (++!12142 l1!1299 l2!1268))))))

(assert (=> start!507772 e!3037849))

(assert (=> start!507772 e!3037848))

(declare-fun e!3037847 () Bool)

(assert (=> start!507772 e!3037847))

(declare-fun b!4859303 () Bool)

(declare-fun tp!1366835 () Bool)

(assert (=> b!4859303 (= e!3037847 (and tp_is_empty!35533 tp!1366835))))

(declare-fun b!4859304 () Bool)

(declare-fun res!2074420 () Bool)

(assert (=> b!4859304 (=> (not res!2074420) (not e!3037849))))

(assert (=> b!4859304 (= res!2074420 (not (isEmpty!29846 (t!363501 l1!1299))))))

(assert (= (and start!507772 res!2074422) b!4859302))

(assert (= (and b!4859302 res!2074421) b!4859304))

(assert (= (and b!4859304 res!2074420) b!4859300))

(assert (= (and start!507772 (is-Cons!55757 l1!1299)) b!4859301))

(assert (= (and start!507772 (is-Cons!55757 l2!1268)) b!4859303))

(declare-fun m!5857682 () Bool)

(assert (=> b!4859300 m!5857682))

(declare-fun m!5857684 () Bool)

(assert (=> start!507772 m!5857684))

(assert (=> start!507772 m!5857684))

(declare-fun m!5857686 () Bool)

(assert (=> start!507772 m!5857686))

(declare-fun m!5857688 () Bool)

(assert (=> b!4859304 m!5857688))

(push 1)

(assert (not b!4859304))

(assert (not b!4859301))

(assert (not start!507772))

(assert (not b!4859303))

(assert tp_is_empty!35533)

(assert (not b!4859300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

