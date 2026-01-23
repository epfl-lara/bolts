; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47510 () Bool)

(assert start!47510)

(assert (=> start!47510 true))

(declare-fun res!220773 () Bool)

(declare-fun e!311593 () Bool)

(assert (=> start!47510 (=> (not res!220773) (not e!311593))))

(declare-datatypes ((B!1143 0))(
  ( (B!1144 (val!1859 Int)) )
))
(declare-datatypes ((List!4799 0))(
  ( (Nil!4789) (Cons!4789 (h!10190 B!1143) (t!73389 List!4799)) )
))
(declare-fun lIn!3 () List!4799)

(declare-fun lambda!14910 () Int)

(declare-fun forall!1458 (List!4799 Int) Bool)

(assert (=> start!47510 (= res!220773 (forall!1458 lIn!3 lambda!14910))))

(assert (=> start!47510 e!311593))

(declare-fun e!311591 () Bool)

(assert (=> start!47510 e!311591))

(declare-fun e!311592 () Bool)

(assert (=> start!47510 e!311592))

(declare-fun b!520038 () Bool)

(assert (=> b!520038 (= e!311593 false)))

(declare-fun lt!216734 () Bool)

(declare-fun noDuplicate!150 (List!4799) Bool)

(assert (=> b!520038 (= lt!216734 (noDuplicate!150 lIn!3))))

(declare-fun b!520039 () Bool)

(declare-fun tp_is_empty!2739 () Bool)

(declare-fun tp!161879 () Bool)

(assert (=> b!520039 (= e!311591 (and tp_is_empty!2739 tp!161879))))

(declare-fun b!520040 () Bool)

(declare-fun tp!161878 () Bool)

(assert (=> b!520040 (= e!311592 (and tp_is_empty!2739 tp!161878))))

(assert (= (and start!47510 res!220773) b!520038))

(assert (= (and start!47510 (is-Cons!4789 lIn!3)) b!520039))

(declare-fun l!3695 () List!4799)

(assert (= (and start!47510 (is-Cons!4789 l!3695)) b!520040))

(declare-fun m!766725 () Bool)

(assert (=> start!47510 m!766725))

(declare-fun m!766727 () Bool)

(assert (=> b!520038 m!766727))

(push 1)

(assert (not b!520039))

(assert (not b!520040))

(assert (not start!47510))

(assert tp_is_empty!2739)

(assert (not b!520038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

