; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663752 () Bool)

(assert start!663752)

(declare-fun e!4145749 () Bool)

(declare-fun b!6879013 () Bool)

(declare-datatypes ((C!33762 0))(
  ( (C!33763 (val!26583 Int)) )
))
(declare-datatypes ((Regex!16746 0))(
  ( (ElementMatch!16746 (c!1279884 C!33762)) (Concat!25591 (regOne!34004 Regex!16746) (regTwo!34004 Regex!16746)) (EmptyExpr!16746) (Star!16746 (reg!17075 Regex!16746)) (EmptyLang!16746) (Union!16746 (regOne!34005 Regex!16746) (regTwo!34005 Regex!16746)) )
))
(declare-datatypes ((List!66503 0))(
  ( (Nil!66379) (Cons!66379 (h!72827 Regex!16746) (t!380246 List!66503)) )
))
(declare-datatypes ((Context!12260 0))(
  ( (Context!12261 (exprs!6630 List!66503)) )
))
(declare-datatypes ((List!66504 0))(
  ( (Nil!66380) (Cons!66380 (h!72828 Context!12260) (t!380247 List!66504)) )
))
(declare-fun zl!1632 () List!66504)

(declare-fun tp!1891202 () Bool)

(declare-fun e!4145750 () Bool)

(declare-fun inv!85113 (Context!12260) Bool)

(assert (=> b!6879013 (= e!4145749 (and (inv!85113 (h!72828 zl!1632)) e!4145750 tp!1891202))))

(declare-fun b!6879015 () Bool)

(declare-fun e!4145751 () Bool)

(declare-fun tp!1891204 () Bool)

(assert (=> b!6879015 (= e!4145751 tp!1891204)))

(declare-fun b!6879012 () Bool)

(declare-fun e!4145752 () Bool)

(assert (=> b!6879012 (= e!4145752 false)))

(declare-fun lt!2459414 () Int)

(declare-fun size!40736 (List!66504) Int)

(assert (=> b!6879012 (= lt!2459414 (size!40736 zl!1632))))

(declare-fun res!2804343 () Bool)

(assert (=> start!663752 (=> (not res!2804343) (not e!4145752))))

(declare-fun c!9978 () Context!12260)

(declare-fun contains!20402 (List!66504 Context!12260) Bool)

(assert (=> start!663752 (= res!2804343 (contains!20402 zl!1632 c!9978))))

(assert (=> start!663752 e!4145752))

(assert (=> start!663752 e!4145749))

(assert (=> start!663752 (and (inv!85113 c!9978) e!4145751)))

(declare-fun b!6879014 () Bool)

(declare-fun tp!1891203 () Bool)

(assert (=> b!6879014 (= e!4145750 tp!1891203)))

(assert (= (and start!663752 res!2804343) b!6879012))

(assert (= b!6879013 b!6879014))

(assert (= (and start!663752 (is-Cons!66380 zl!1632)) b!6879013))

(assert (= start!663752 b!6879015))

(declare-fun m!7605640 () Bool)

(assert (=> b!6879013 m!7605640))

(declare-fun m!7605642 () Bool)

(assert (=> b!6879012 m!7605642))

(declare-fun m!7605644 () Bool)

(assert (=> start!663752 m!7605644))

(declare-fun m!7605646 () Bool)

(assert (=> start!663752 m!7605646))

(push 1)

(assert (not b!6879014))

(assert (not b!6879015))

(assert (not b!6879012))

(assert (not b!6879013))

(assert (not start!663752))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

