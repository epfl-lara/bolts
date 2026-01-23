; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!353130 () Bool)

(assert start!353130)

(declare-datatypes ((B!2563 0))(
  ( (B!2564 (val!13213 Int)) )
))
(declare-datatypes ((List!40228 0))(
  ( (Nil!40104) (Cons!40104 (h!45524 B!2563) (t!303877 List!40228)) )
))
(declare-fun l!3461 () List!40228)

(declare-fun isPrefix!3296 (List!40228 List!40228) Bool)

(assert (=> start!353130 (isPrefix!3296 l!3461 l!3461)))

(declare-datatypes ((Unit!57824 0))(
  ( (Unit!57825) )
))
(declare-fun lt!1301784 () Unit!57824)

(declare-fun lemmaIsPrefixRefl!2081 (List!40228 List!40228) Unit!57824)

(assert (=> start!353130 (= lt!1301784 (lemmaIsPrefixRefl!2081 l!3461 l!3461))))

(assert (=> start!353130 (not true)))

(declare-fun e!2326187 () Bool)

(assert (=> start!353130 e!2326187))

(declare-fun b!3761101 () Bool)

(declare-fun tp_is_empty!19107 () Bool)

(declare-fun tp!1149367 () Bool)

(assert (=> b!3761101 (= e!2326187 (and tp_is_empty!19107 tp!1149367))))

(assert (= (and start!353130 (is-Cons!40104 l!3461)) b!3761101))

(declare-fun m!4255141 () Bool)

(assert (=> start!353130 m!4255141))

(declare-fun m!4255143 () Bool)

(assert (=> start!353130 m!4255143))

(push 1)

(assert (not start!353130))

(assert (not b!3761101))

(assert tp_is_empty!19107)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

