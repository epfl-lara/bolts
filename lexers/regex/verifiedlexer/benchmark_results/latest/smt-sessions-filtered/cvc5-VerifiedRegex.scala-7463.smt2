; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396008 () Bool)

(assert start!396008)

(declare-fun b!4157899 () Bool)

(declare-fun res!1702971 () Bool)

(declare-fun e!2580506 () Bool)

(assert (=> b!4157899 (=> (not res!1702971) (not e!2580506))))

(declare-datatypes ((B!2627 0))(
  ( (B!2628 (val!14605 Int)) )
))
(declare-datatypes ((List!45482 0))(
  ( (Nil!45358) (Cons!45358 (h!50778 B!2627) (t!343513 List!45482)) )
))
(declare-fun l!3062 () List!45482)

(declare-fun e2!32 () B!2627)

(declare-fun contains!9216 (List!45482 B!2627) Bool)

(assert (=> b!4157899 (= res!1702971 (contains!9216 l!3062 e2!32))))

(declare-fun b!4157900 () Bool)

(declare-fun res!1702969 () Bool)

(assert (=> b!4157900 (=> (not res!1702969) (not e!2580506))))

(declare-fun e1!32 () B!2627)

(assert (=> b!4157900 (= res!1702969 (not (= e1!32 e2!32)))))

(declare-fun res!1702970 () Bool)

(assert (=> start!396008 (=> (not res!1702970) (not e!2580506))))

(assert (=> start!396008 (= res!1702970 (contains!9216 l!3062 e1!32))))

(assert (=> start!396008 e!2580506))

(declare-fun e!2580505 () Bool)

(assert (=> start!396008 e!2580505))

(declare-fun tp_is_empty!21675 () Bool)

(assert (=> start!396008 tp_is_empty!21675))

(declare-fun b!4157901 () Bool)

(assert (=> b!4157901 (= e!2580506 false)))

(declare-fun lt!1481896 () Int)

(declare-fun getIndex!837 (List!45482 B!2627) Int)

(assert (=> b!4157901 (= lt!1481896 (getIndex!837 l!3062 e2!32))))

(declare-fun lt!1481895 () Int)

(assert (=> b!4157901 (= lt!1481895 (getIndex!837 l!3062 e1!32))))

(declare-fun b!4157902 () Bool)

(declare-fun tp!1268855 () Bool)

(assert (=> b!4157902 (= e!2580505 (and tp_is_empty!21675 tp!1268855))))

(assert (= (and start!396008 res!1702970) b!4157899))

(assert (= (and b!4157899 res!1702971) b!4157900))

(assert (= (and b!4157900 res!1702969) b!4157901))

(assert (= (and start!396008 (is-Cons!45358 l!3062)) b!4157902))

(declare-fun m!4751765 () Bool)

(assert (=> b!4157899 m!4751765))

(declare-fun m!4751767 () Bool)

(assert (=> start!396008 m!4751767))

(declare-fun m!4751769 () Bool)

(assert (=> b!4157901 m!4751769))

(declare-fun m!4751771 () Bool)

(assert (=> b!4157901 m!4751771))

(push 1)

(assert (not b!4157899))

(assert (not start!396008))

(assert tp_is_empty!21675)

(assert (not b!4157901))

(assert (not b!4157902))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

