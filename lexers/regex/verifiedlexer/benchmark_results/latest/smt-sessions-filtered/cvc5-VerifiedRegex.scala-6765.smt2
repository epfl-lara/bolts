; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!353122 () Bool)

(assert start!353122)

(declare-fun res!1522975 () Bool)

(declare-fun e!2326166 () Bool)

(assert (=> start!353122 (=> res!1522975 e!2326166)))

(declare-datatypes ((B!2555 0))(
  ( (B!2556 (val!13209 Int)) )
))
(declare-datatypes ((List!40224 0))(
  ( (Nil!40100) (Cons!40100 (h!45520 B!2555) (t!303873 List!40224)) )
))
(declare-fun l!3461 () List!40224)

(assert (=> start!353122 (= res!1522975 (not (is-Cons!40100 l!3461)))))

(declare-fun isPrefix!3292 (List!40224 List!40224) Bool)

(assert (=> start!353122 (isPrefix!3292 l!3461 l!3461)))

(declare-datatypes ((Unit!57816 0))(
  ( (Unit!57817) )
))
(declare-fun lt!1301759 () Unit!57816)

(declare-fun lemmaIsPrefixRefl!2077 (List!40224 List!40224) Unit!57816)

(assert (=> start!353122 (= lt!1301759 (lemmaIsPrefixRefl!2077 l!3461 l!3461))))

(assert (=> start!353122 (not e!2326166)))

(declare-fun e!2326165 () Bool)

(assert (=> start!353122 e!2326165))

(declare-fun b!3761079 () Bool)

(assert (=> b!3761079 (= e!2326166 true)))

(declare-fun lt!1301760 () Int)

(declare-fun size!30179 (List!40224) Int)

(assert (=> b!3761079 (= lt!1301760 (size!30179 l!3461))))

(declare-fun isEmpty!23577 (List!40224) Bool)

(declare-fun getSuffix!1773 (List!40224 List!40224) List!40224)

(assert (=> b!3761079 (isEmpty!23577 (getSuffix!1773 (t!303873 l!3461) (t!303873 l!3461)))))

(declare-fun lt!1301758 () Unit!57816)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!231 (List!40224) Unit!57816)

(assert (=> b!3761079 (= lt!1301758 (lemmaGetSuffixOnListWithItSelfIsEmpty!231 (t!303873 l!3461)))))

(declare-fun b!3761080 () Bool)

(declare-fun tp_is_empty!19099 () Bool)

(declare-fun tp!1149355 () Bool)

(assert (=> b!3761080 (= e!2326165 (and tp_is_empty!19099 tp!1149355))))

(assert (= (and start!353122 (not res!1522975)) b!3761079))

(assert (= (and start!353122 (is-Cons!40100 l!3461)) b!3761080))

(declare-fun m!4255105 () Bool)

(assert (=> start!353122 m!4255105))

(declare-fun m!4255107 () Bool)

(assert (=> start!353122 m!4255107))

(declare-fun m!4255109 () Bool)

(assert (=> b!3761079 m!4255109))

(declare-fun m!4255111 () Bool)

(assert (=> b!3761079 m!4255111))

(assert (=> b!3761079 m!4255111))

(declare-fun m!4255113 () Bool)

(assert (=> b!3761079 m!4255113))

(declare-fun m!4255115 () Bool)

(assert (=> b!3761079 m!4255115))

(push 1)

(assert (not start!353122))

(assert (not b!3761079))

(assert (not b!3761080))

(assert tp_is_empty!19099)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

