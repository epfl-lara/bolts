; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!216066 () Bool)

(assert start!216066)

(declare-fun b!2217992 () Bool)

(declare-fun e!1416435 () Bool)

(declare-fun tp_is_empty!9831 () Bool)

(declare-fun tp!691027 () Bool)

(assert (=> b!2217992 (= e!1416435 (and tp_is_empty!9831 tp!691027))))

(declare-fun b!2217991 () Bool)

(declare-fun e!1416434 () Bool)

(assert (=> b!2217991 (= e!1416434 (not true))))

(declare-datatypes ((B!1783 0))(
  ( (B!1784 (val!7417 Int)) )
))
(declare-datatypes ((List!26045 0))(
  ( (Nil!25961) (Cons!25961 (h!31362 B!1783) (t!199361 List!26045)) )
))
(declare-fun l!3389 () List!26045)

(declare-fun isPrefix!2176 (List!26045 List!26045) Bool)

(declare-fun removeLast!17 (List!26045) List!26045)

(assert (=> b!2217991 (isPrefix!2176 (removeLast!17 (t!199361 l!3389)) (t!199361 l!3389))))

(declare-datatypes ((Unit!38940 0))(
  ( (Unit!38941) )
))
(declare-fun lt!826926 () Unit!38940)

(declare-fun lemmaRemoveLastFromLMakesItPrefix!1 (List!26045) Unit!38940)

(assert (=> b!2217991 (= lt!826926 (lemmaRemoveLastFromLMakesItPrefix!1 (t!199361 l!3389)))))

(declare-fun b!2217989 () Bool)

(declare-fun res!952539 () Bool)

(assert (=> b!2217989 (=> (not res!952539) (not e!1416434))))

(assert (=> b!2217989 (= res!952539 (and (or (not (is-Cons!25961 l!3389)) (not (is-Nil!25961 (t!199361 l!3389)))) (is-Cons!25961 l!3389)))))

(declare-fun b!2217990 () Bool)

(declare-fun res!952538 () Bool)

(assert (=> b!2217990 (=> (not res!952538) (not e!1416434))))

(declare-fun isEmpty!14839 (List!26045) Bool)

(assert (=> b!2217990 (= res!952538 (not (isEmpty!14839 (t!199361 l!3389))))))

(declare-fun res!952537 () Bool)

(assert (=> start!216066 (=> (not res!952537) (not e!1416434))))

(assert (=> start!216066 (= res!952537 (not (isEmpty!14839 l!3389)))))

(assert (=> start!216066 e!1416434))

(assert (=> start!216066 e!1416435))

(assert (= (and start!216066 res!952537) b!2217989))

(assert (= (and b!2217989 res!952539) b!2217990))

(assert (= (and b!2217990 res!952538) b!2217991))

(assert (= (and start!216066 (is-Cons!25961 l!3389)) b!2217992))

(declare-fun m!2658875 () Bool)

(assert (=> b!2217991 m!2658875))

(assert (=> b!2217991 m!2658875))

(declare-fun m!2658877 () Bool)

(assert (=> b!2217991 m!2658877))

(declare-fun m!2658879 () Bool)

(assert (=> b!2217991 m!2658879))

(declare-fun m!2658881 () Bool)

(assert (=> b!2217990 m!2658881))

(declare-fun m!2658883 () Bool)

(assert (=> start!216066 m!2658883))

(push 1)

(assert (not start!216066))

(assert (not b!2217991))

(assert tp_is_empty!9831)

(assert (not b!2217990))

(assert (not b!2217992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

