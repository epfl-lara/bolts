; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396012 () Bool)

(assert start!396012)

(declare-fun b!4157927 () Bool)

(declare-fun e!2580518 () Bool)

(assert (=> b!4157927 (= e!2580518 (not true))))

(declare-datatypes ((B!2631 0))(
  ( (B!2632 (val!14607 Int)) )
))
(declare-datatypes ((List!45484 0))(
  ( (Nil!45360) (Cons!45360 (h!50780 B!2631) (t!343515 List!45484)) )
))
(declare-fun l!3062 () List!45484)

(declare-fun e1!32 () B!2631)

(declare-fun contains!9218 (List!45484 B!2631) Bool)

(declare-fun tail!6650 (List!45484) List!45484)

(assert (=> b!4157927 (contains!9218 (tail!6650 l!3062) e1!32)))

(declare-datatypes ((Unit!64511 0))(
  ( (Unit!64512) )
))
(declare-fun lt!1481905 () Unit!64511)

(declare-fun lemmaContainsAndNotHdThenTlContains!1 (List!45484 B!2631) Unit!64511)

(assert (=> b!4157927 (= lt!1481905 (lemmaContainsAndNotHdThenTlContains!1 l!3062 e1!32))))

(declare-fun b!4157928 () Bool)

(declare-fun res!1702992 () Bool)

(assert (=> b!4157928 (=> (not res!1702992) (not e!2580518))))

(declare-fun e2!32 () B!2631)

(assert (=> b!4157928 (= res!1702992 (contains!9218 l!3062 e2!32))))

(declare-fun b!4157929 () Bool)

(declare-fun res!1702991 () Bool)

(assert (=> b!4157929 (=> (not res!1702991) (not e!2580518))))

(assert (=> b!4157929 (= res!1702991 (and (or (not (is-Cons!45360 l!3062)) (not (= (h!50780 l!3062) e1!32))) (is-Cons!45360 l!3062) (not (= (h!50780 l!3062) e1!32))))))

(declare-fun res!1702995 () Bool)

(assert (=> start!396012 (=> (not res!1702995) (not e!2580518))))

(assert (=> start!396012 (= res!1702995 (contains!9218 l!3062 e1!32))))

(assert (=> start!396012 e!2580518))

(declare-fun e!2580517 () Bool)

(assert (=> start!396012 e!2580517))

(declare-fun tp_is_empty!21679 () Bool)

(assert (=> start!396012 tp_is_empty!21679))

(declare-fun b!4157930 () Bool)

(declare-fun tp!1268861 () Bool)

(assert (=> b!4157930 (= e!2580517 (and tp_is_empty!21679 tp!1268861))))

(declare-fun b!4157931 () Bool)

(declare-fun res!1702994 () Bool)

(assert (=> b!4157931 (=> (not res!1702994) (not e!2580518))))

(declare-fun getIndex!839 (List!45484 B!2631) Int)

(assert (=> b!4157931 (= res!1702994 (< (getIndex!839 l!3062 e1!32) (getIndex!839 l!3062 e2!32)))))

(declare-fun b!4157932 () Bool)

(declare-fun res!1702993 () Bool)

(assert (=> b!4157932 (=> (not res!1702993) (not e!2580518))))

(assert (=> b!4157932 (= res!1702993 (not (= e1!32 e2!32)))))

(assert (= (and start!396012 res!1702995) b!4157928))

(assert (= (and b!4157928 res!1702992) b!4157932))

(assert (= (and b!4157932 res!1702993) b!4157931))

(assert (= (and b!4157931 res!1702994) b!4157929))

(assert (= (and b!4157929 res!1702991) b!4157927))

(assert (= (and start!396012 (is-Cons!45360 l!3062)) b!4157930))

(declare-fun m!4751781 () Bool)

(assert (=> b!4157927 m!4751781))

(assert (=> b!4157927 m!4751781))

(declare-fun m!4751783 () Bool)

(assert (=> b!4157927 m!4751783))

(declare-fun m!4751785 () Bool)

(assert (=> b!4157927 m!4751785))

(declare-fun m!4751787 () Bool)

(assert (=> b!4157928 m!4751787))

(declare-fun m!4751789 () Bool)

(assert (=> start!396012 m!4751789))

(declare-fun m!4751791 () Bool)

(assert (=> b!4157931 m!4751791))

(declare-fun m!4751793 () Bool)

(assert (=> b!4157931 m!4751793))

(push 1)

(assert (not start!396012))

(assert tp_is_empty!21679)

(assert (not b!4157930))

(assert (not b!4157927))

(assert (not b!4157928))

(assert (not b!4157931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

