; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663630 () Bool)

(assert start!663630)

(declare-fun res!2803983 () Bool)

(declare-fun e!4144743 () Bool)

(assert (=> start!663630 (=> (not res!2803983) (not e!4144743))))

(declare-datatypes ((C!33742 0))(
  ( (C!33743 (val!26573 Int)) )
))
(declare-datatypes ((Regex!16736 0))(
  ( (ElementMatch!16736 (c!1279542 C!33742)) (Concat!25581 (regOne!33984 Regex!16736) (regTwo!33984 Regex!16736)) (EmptyExpr!16736) (Star!16736 (reg!17065 Regex!16736)) (EmptyLang!16736) (Union!16736 (regOne!33985 Regex!16736) (regTwo!33985 Regex!16736)) )
))
(declare-datatypes ((List!66483 0))(
  ( (Nil!66359) (Cons!66359 (h!72807 Regex!16736) (t!380226 List!66483)) )
))
(declare-datatypes ((Context!12240 0))(
  ( (Context!12241 (exprs!6620 List!66483)) )
))
(declare-datatypes ((List!66484 0))(
  ( (Nil!66360) (Cons!66360 (h!72808 Context!12240) (t!380227 List!66484)) )
))
(declare-fun zl!1632 () List!66484)

(declare-fun c!9978 () Context!12240)

(declare-fun contains!20392 (List!66484 Context!12240) Bool)

(assert (=> start!663630 (= res!2803983 (contains!20392 zl!1632 c!9978))))

(assert (=> start!663630 e!4144743))

(declare-fun e!4144746 () Bool)

(assert (=> start!663630 e!4144746))

(declare-fun e!4144744 () Bool)

(declare-fun inv!85088 (Context!12240) Bool)

(assert (=> start!663630 (and (inv!85088 c!9978) e!4144744)))

(declare-fun b!6877026 () Bool)

(declare-fun res!2803984 () Bool)

(assert (=> b!6877026 (=> (not res!2803984) (not e!4144743))))

(assert (=> b!6877026 (= res!2803984 (is-Cons!66360 zl!1632))))

(declare-fun b!6877027 () Bool)

(declare-fun tp!1890025 () Bool)

(assert (=> b!6877027 (= e!4144744 tp!1890025)))

(declare-fun b!6877028 () Bool)

(declare-fun res!2803982 () Bool)

(assert (=> b!6877028 (=> (not res!2803982) (not e!4144743))))

(declare-fun size!40726 (List!66484) Int)

(assert (=> b!6877028 (= res!2803982 (> (size!40726 zl!1632) 1))))

(declare-fun b!6877029 () Bool)

(declare-fun res!2803985 () Bool)

(assert (=> b!6877029 (=> (not res!2803985) (not e!4144743))))

(assert (=> b!6877029 (= res!2803985 (contains!20392 (t!380227 zl!1632) c!9978))))

(declare-fun b!6877030 () Bool)

(assert (=> b!6877030 (= e!4144743 false)))

(declare-fun b!6877031 () Bool)

(declare-fun res!2803981 () Bool)

(assert (=> b!6877031 (=> (not res!2803981) (not e!4144743))))

(assert (=> b!6877031 (= res!2803981 (> (size!40726 (t!380227 zl!1632)) 1))))

(declare-fun b!6877032 () Bool)

(declare-fun e!4144745 () Bool)

(declare-fun tp!1890026 () Bool)

(assert (=> b!6877032 (= e!4144745 tp!1890026)))

(declare-fun b!6877033 () Bool)

(declare-fun tp!1890024 () Bool)

(assert (=> b!6877033 (= e!4144746 (and (inv!85088 (h!72808 zl!1632)) e!4144745 tp!1890024))))

(assert (= (and start!663630 res!2803983) b!6877028))

(assert (= (and b!6877028 res!2803982) b!6877026))

(assert (= (and b!6877026 res!2803984) b!6877029))

(assert (= (and b!6877029 res!2803985) b!6877031))

(assert (= (and b!6877031 res!2803981) b!6877030))

(assert (= b!6877033 b!6877032))

(assert (= (and start!663630 (is-Cons!66360 zl!1632)) b!6877033))

(assert (= start!663630 b!6877027))

(declare-fun m!7604712 () Bool)

(assert (=> b!6877033 m!7604712))

(declare-fun m!7604714 () Bool)

(assert (=> b!6877031 m!7604714))

(declare-fun m!7604716 () Bool)

(assert (=> b!6877029 m!7604716))

(declare-fun m!7604718 () Bool)

(assert (=> start!663630 m!7604718))

(declare-fun m!7604720 () Bool)

(assert (=> start!663630 m!7604720))

(declare-fun m!7604722 () Bool)

(assert (=> b!6877028 m!7604722))

(push 1)

(assert (not b!6877031))

(assert (not start!663630))

(assert (not b!6877029))

(assert (not b!6877028))

(assert (not b!6877027))

(assert (not b!6877032))

(assert (not b!6877033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

