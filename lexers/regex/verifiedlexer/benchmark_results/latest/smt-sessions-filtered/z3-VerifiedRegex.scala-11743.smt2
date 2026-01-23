; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663624 () Bool)

(assert start!663624)

(declare-fun res!2803940 () Bool)

(declare-fun e!4144701 () Bool)

(assert (=> start!663624 (=> (not res!2803940) (not e!4144701))))

(declare-datatypes ((C!33736 0))(
  ( (C!33737 (val!26570 Int)) )
))
(declare-datatypes ((Regex!16733 0))(
  ( (ElementMatch!16733 (c!1279539 C!33736)) (Concat!25578 (regOne!33978 Regex!16733) (regTwo!33978 Regex!16733)) (EmptyExpr!16733) (Star!16733 (reg!17062 Regex!16733)) (EmptyLang!16733) (Union!16733 (regOne!33979 Regex!16733) (regTwo!33979 Regex!16733)) )
))
(declare-datatypes ((List!66477 0))(
  ( (Nil!66353) (Cons!66353 (h!72801 Regex!16733) (t!380220 List!66477)) )
))
(declare-datatypes ((Context!12234 0))(
  ( (Context!12235 (exprs!6617 List!66477)) )
))
(declare-datatypes ((List!66478 0))(
  ( (Nil!66354) (Cons!66354 (h!72802 Context!12234) (t!380221 List!66478)) )
))
(declare-fun zl!1632 () List!66478)

(declare-fun c!9978 () Context!12234)

(declare-fun contains!20389 (List!66478 Context!12234) Bool)

(assert (=> start!663624 (= res!2803940 (contains!20389 zl!1632 c!9978))))

(assert (=> start!663624 e!4144701))

(declare-fun e!4144703 () Bool)

(assert (=> start!663624 e!4144703))

(declare-fun e!4144702 () Bool)

(declare-fun inv!85079 (Context!12234) Bool)

(assert (=> start!663624 (and (inv!85079 c!9978) e!4144702)))

(declare-fun b!6876960 () Bool)

(declare-fun e!4144704 () Bool)

(declare-fun tp!1889997 () Bool)

(assert (=> b!6876960 (= e!4144704 tp!1889997)))

(declare-fun b!6876958 () Bool)

(declare-fun lt!2459204 () Int)

(assert (=> b!6876958 (= e!4144701 (and (> lt!2459204 1) (< lt!2459204 0)))))

(declare-fun size!40723 (List!66478) Int)

(assert (=> b!6876958 (= lt!2459204 (size!40723 zl!1632))))

(declare-fun tp!1889999 () Bool)

(declare-fun b!6876959 () Bool)

(assert (=> b!6876959 (= e!4144703 (and (inv!85079 (h!72802 zl!1632)) e!4144704 tp!1889999))))

(declare-fun b!6876961 () Bool)

(declare-fun tp!1889998 () Bool)

(assert (=> b!6876961 (= e!4144702 tp!1889998)))

(assert (= (and start!663624 res!2803940) b!6876958))

(assert (= b!6876959 b!6876960))

(get-info :version)

(assert (= (and start!663624 ((_ is Cons!66354) zl!1632)) b!6876959))

(assert (= start!663624 b!6876961))

(declare-fun m!7604680 () Bool)

(assert (=> start!663624 m!7604680))

(declare-fun m!7604682 () Bool)

(assert (=> start!663624 m!7604682))

(declare-fun m!7604684 () Bool)

(assert (=> b!6876958 m!7604684))

(declare-fun m!7604686 () Bool)

(assert (=> b!6876959 m!7604686))

(check-sat (not b!6876961) (not b!6876960) (not b!6876958) (not b!6876959) (not start!663624))
(check-sat)
