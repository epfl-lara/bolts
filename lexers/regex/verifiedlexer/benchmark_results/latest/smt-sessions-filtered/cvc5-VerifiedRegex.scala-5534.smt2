; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278572 () Bool)

(assert start!278572)

(declare-fun b!2862433 () Bool)

(declare-fun e!1812039 () Bool)

(declare-fun tp!921639 () Bool)

(assert (=> b!2862433 (= e!1812039 tp!921639)))

(declare-fun res!1188472 () Bool)

(declare-fun e!1812041 () Bool)

(assert (=> start!278572 (=> (not res!1188472) (not e!1812041))))

(declare-datatypes ((C!17426 0))(
  ( (C!17427 (val!10747 Int)) )
))
(declare-datatypes ((Regex!8622 0))(
  ( (ElementMatch!8622 (c!461419 C!17426)) (Concat!13943 (regOne!17756 Regex!8622) (regTwo!17756 Regex!8622)) (EmptyExpr!8622) (Star!8622 (reg!8951 Regex!8622)) (EmptyLang!8622) (Union!8622 (regOne!17757 Regex!8622) (regTwo!17757 Regex!8622)) )
))
(declare-datatypes ((List!34227 0))(
  ( (Nil!34103) (Cons!34103 (h!39523 Regex!8622) (t!233264 List!34227)) )
))
(declare-datatypes ((Context!5164 0))(
  ( (Context!5165 (exprs!3082 List!34227)) )
))
(declare-fun z!960 () (Set Context!5164))

(declare-datatypes ((List!34228 0))(
  ( (Nil!34104) (Cons!34104 (h!39524 C!17426) (t!233265 List!34228)) )
))
(declare-fun prefix!919 () List!34228)

(declare-fun prefixMatchZipper!304 ((Set Context!5164) List!34228) Bool)

(assert (=> start!278572 (= res!1188472 (prefixMatchZipper!304 z!960 prefix!919))))

(assert (=> start!278572 e!1812041))

(declare-fun condSetEmpty!25283 () Bool)

(assert (=> start!278572 (= condSetEmpty!25283 (= z!960 (as set.empty (Set Context!5164))))))

(declare-fun setRes!25283 () Bool)

(assert (=> start!278572 setRes!25283))

(declare-fun e!1812040 () Bool)

(assert (=> start!278572 e!1812040))

(declare-fun setIsEmpty!25283 () Bool)

(assert (=> setIsEmpty!25283 setRes!25283))

(declare-fun b!2862434 () Bool)

(declare-fun res!1188471 () Bool)

(assert (=> b!2862434 (=> (not res!1188471) (not e!1812041))))

(assert (=> b!2862434 (= res!1188471 (not (is-Nil!34104 prefix!919)))))

(declare-fun b!2862435 () Bool)

(assert (=> b!2862435 (= e!1812041 false)))

(declare-fun lt!1014732 () Bool)

(declare-fun derivationStepZipper!424 ((Set Context!5164) C!17426) (Set Context!5164))

(assert (=> b!2862435 (= lt!1014732 (prefixMatchZipper!304 (derivationStepZipper!424 z!960 (h!39524 prefix!919)) (t!233265 prefix!919)))))

(declare-fun tp!921641 () Bool)

(declare-fun setNonEmpty!25283 () Bool)

(declare-fun setElem!25283 () Context!5164)

(declare-fun inv!46143 (Context!5164) Bool)

(assert (=> setNonEmpty!25283 (= setRes!25283 (and tp!921641 (inv!46143 setElem!25283) e!1812039))))

(declare-fun setRest!25283 () (Set Context!5164))

(assert (=> setNonEmpty!25283 (= z!960 (set.union (set.insert setElem!25283 (as set.empty (Set Context!5164))) setRest!25283))))

(declare-fun b!2862436 () Bool)

(declare-fun tp_is_empty!14981 () Bool)

(declare-fun tp!921640 () Bool)

(assert (=> b!2862436 (= e!1812040 (and tp_is_empty!14981 tp!921640))))

(assert (= (and start!278572 res!1188472) b!2862434))

(assert (= (and b!2862434 res!1188471) b!2862435))

(assert (= (and start!278572 condSetEmpty!25283) setIsEmpty!25283))

(assert (= (and start!278572 (not condSetEmpty!25283)) setNonEmpty!25283))

(assert (= setNonEmpty!25283 b!2862433))

(assert (= (and start!278572 (is-Cons!34104 prefix!919)) b!2862436))

(declare-fun m!3281777 () Bool)

(assert (=> start!278572 m!3281777))

(declare-fun m!3281779 () Bool)

(assert (=> b!2862435 m!3281779))

(assert (=> b!2862435 m!3281779))

(declare-fun m!3281781 () Bool)

(assert (=> b!2862435 m!3281781))

(declare-fun m!3281783 () Bool)

(assert (=> setNonEmpty!25283 m!3281783))

(push 1)

(assert (not start!278572))

(assert (not b!2862433))

(assert tp_is_empty!14981)

(assert (not setNonEmpty!25283))

(assert (not b!2862436))

(assert (not b!2862435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

