; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47170 () Bool)

(assert start!47170)

(assert (=> start!47170 true))

(declare-fun b!518138 () Bool)

(declare-fun e!310219 () Bool)

(declare-fun tp_is_empty!2667 () Bool)

(declare-fun tp!161574 () Bool)

(assert (=> b!518138 (= e!310219 (and tp_is_empty!2667 tp!161574))))

(declare-fun b!518139 () Bool)

(declare-fun res!219723 () Bool)

(declare-fun e!310217 () Bool)

(assert (=> b!518139 (=> (not res!219723) (not e!310217))))

(declare-datatypes ((B!1071 0))(
  ( (B!1072 (val!1823 Int)) )
))
(declare-datatypes ((List!4763 0))(
  ( (Nil!4753) (Cons!4753 (h!10154 B!1071) (t!73353 List!4763)) )
))
(declare-fun lIn!3 () List!4763)

(assert (=> b!518139 (= res!219723 (is-Cons!4753 lIn!3))))

(declare-fun b!518140 () Bool)

(declare-fun res!219722 () Bool)

(assert (=> b!518140 (=> (not res!219722) (not e!310217))))

(declare-fun noDuplicate!114 (List!4763) Bool)

(assert (=> b!518140 (= res!219722 (noDuplicate!114 lIn!3))))

(declare-fun res!219721 () Bool)

(assert (=> start!47170 (=> (not res!219721) (not e!310217))))

(declare-fun lambda!14670 () Int)

(declare-fun forall!1422 (List!4763 Int) Bool)

(assert (=> start!47170 (= res!219721 (forall!1422 lIn!3 lambda!14670))))

(assert (=> start!47170 e!310217))

(assert (=> start!47170 e!310219))

(declare-fun e!310218 () Bool)

(assert (=> start!47170 e!310218))

(declare-fun b!518141 () Bool)

(declare-fun tp!161575 () Bool)

(assert (=> b!518141 (= e!310218 (and tp_is_empty!2667 tp!161575))))

(declare-fun b!518142 () Bool)

(assert (=> b!518142 (= e!310217 (not (forall!1422 lIn!3 lambda!14670)))))

(assert (= (and start!47170 res!219721) b!518140))

(assert (= (and b!518140 res!219722) b!518139))

(assert (= (and b!518139 res!219723) b!518142))

(assert (= (and start!47170 (is-Cons!4753 lIn!3)) b!518138))

(declare-fun l!3695 () List!4763)

(assert (= (and start!47170 (is-Cons!4753 l!3695)) b!518141))

(declare-fun m!765217 () Bool)

(assert (=> b!518140 m!765217))

(declare-fun m!765219 () Bool)

(assert (=> start!47170 m!765219))

(assert (=> b!518142 m!765219))

(push 1)

(assert (not b!518141))

(assert tp_is_empty!2667)

(assert (not b!518142))

(assert (not b!518140))

(assert (not b!518138))

(assert (not start!47170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

