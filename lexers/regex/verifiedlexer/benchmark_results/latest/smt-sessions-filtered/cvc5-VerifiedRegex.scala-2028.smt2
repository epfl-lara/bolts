; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!103968 () Bool)

(assert start!103968)

(declare-fun b!1176752 () Bool)

(declare-fun e!755167 () Bool)

(declare-fun tp_is_empty!5745 () Bool)

(declare-fun tp!335105 () Bool)

(assert (=> b!1176752 (= e!755167 (and tp_is_empty!5745 tp!335105))))

(declare-fun b!1176754 () Bool)

(declare-fun res!532103 () Bool)

(declare-fun e!755166 () Bool)

(assert (=> b!1176754 (=> (not res!532103) (not e!755166))))

(declare-fun j!89 () Int)

(declare-datatypes ((B!1223 0))(
  ( (B!1224 (val!3721 Int)) )
))
(declare-datatypes ((List!11668 0))(
  ( (Nil!11644) (Cons!11644 (h!17045 B!1223) (t!111160 List!11668)) )
))
(declare-fun l!2952 () List!11668)

(declare-fun size!9208 (List!11668) Int)

(assert (=> b!1176754 (= res!532103 (<= j!89 (size!9208 l!2952)))))

(declare-fun res!532100 () Bool)

(assert (=> start!103968 (=> (not res!532100) (not e!755166))))

(declare-fun i!757 () Int)

(assert (=> start!103968 (= res!532100 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!103968 e!755166))

(assert (=> start!103968 true))

(assert (=> start!103968 e!755167))

(declare-fun b!1176753 () Bool)

(declare-fun res!532101 () Bool)

(assert (=> b!1176753 (=> (not res!532101) (not e!755166))))

(assert (=> b!1176753 (= res!532101 (<= (- j!89 1) (size!9208 (t!111160 l!2952))))))

(declare-fun b!1176755 () Bool)

(assert (=> b!1176755 (= e!755166 (not (and (<= 0 i!757) (<= i!757 j!89))))))

(declare-fun subseq!280 (List!11668 List!11668) Bool)

(declare-fun slice!378 (List!11668 Int Int) List!11668)

(assert (=> b!1176755 (subseq!280 (slice!378 (t!111160 l!2952) (- i!757 1) (- j!89 1)) (t!111160 l!2952))))

(declare-datatypes ((Unit!17992 0))(
  ( (Unit!17993) )
))
(declare-fun lt!405959 () Unit!17992)

(declare-fun lemmaSliceSubseq!121 (List!11668 Int Int) Unit!17992)

(assert (=> b!1176755 (= lt!405959 (lemmaSliceSubseq!121 (t!111160 l!2952) (- i!757 1) (- j!89 1)))))

(declare-fun b!1176756 () Bool)

(declare-fun res!532102 () Bool)

(assert (=> b!1176756 (=> (not res!532102) (not e!755166))))

(assert (=> b!1176756 (= res!532102 (and (not (is-Nil!11644 l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (> i!757 0) (>= (- i!757 1) 0) (>= (- j!89 1) (- i!757 1))))))

(assert (= (and start!103968 res!532100) b!1176754))

(assert (= (and b!1176754 res!532103) b!1176756))

(assert (= (and b!1176756 res!532102) b!1176753))

(assert (= (and b!1176753 res!532101) b!1176755))

(assert (= (and start!103968 (is-Cons!11644 l!2952)) b!1176752))

(declare-fun m!1354227 () Bool)

(assert (=> b!1176754 m!1354227))

(declare-fun m!1354229 () Bool)

(assert (=> b!1176753 m!1354229))

(declare-fun m!1354231 () Bool)

(assert (=> b!1176755 m!1354231))

(assert (=> b!1176755 m!1354231))

(declare-fun m!1354233 () Bool)

(assert (=> b!1176755 m!1354233))

(declare-fun m!1354235 () Bool)

(assert (=> b!1176755 m!1354235))

(push 1)

(assert tp_is_empty!5745)

(assert (not b!1176754))

(assert (not b!1176753))

(assert (not b!1176755))

(assert (not b!1176752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

