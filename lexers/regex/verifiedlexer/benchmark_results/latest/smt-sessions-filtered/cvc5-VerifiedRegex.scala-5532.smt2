; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278564 () Bool)

(assert start!278564)

(declare-fun b!2862385 () Bool)

(declare-fun res!1188448 () Bool)

(declare-fun e!1812005 () Bool)

(assert (=> b!2862385 (=> (not res!1188448) (not e!1812005))))

(declare-datatypes ((C!17418 0))(
  ( (C!17419 (val!10743 Int)) )
))
(declare-datatypes ((List!34219 0))(
  ( (Nil!34095) (Cons!34095 (h!39515 C!17418) (t!233256 List!34219)) )
))
(declare-fun prefix!919 () List!34219)

(assert (=> b!2862385 (= res!1188448 (is-Nil!34095 prefix!919))))

(declare-fun res!1188447 () Bool)

(assert (=> start!278564 (=> (not res!1188447) (not e!1812005))))

(declare-datatypes ((Regex!8618 0))(
  ( (ElementMatch!8618 (c!461415 C!17418)) (Concat!13939 (regOne!17748 Regex!8618) (regTwo!17748 Regex!8618)) (EmptyExpr!8618) (Star!8618 (reg!8947 Regex!8618)) (EmptyLang!8618) (Union!8618 (regOne!17749 Regex!8618) (regTwo!17749 Regex!8618)) )
))
(declare-datatypes ((List!34220 0))(
  ( (Nil!34096) (Cons!34096 (h!39516 Regex!8618) (t!233257 List!34220)) )
))
(declare-datatypes ((Context!5156 0))(
  ( (Context!5157 (exprs!3078 List!34220)) )
))
(declare-fun z!960 () (Set Context!5156))

(declare-fun prefixMatchZipper!300 ((Set Context!5156) List!34219) Bool)

(assert (=> start!278564 (= res!1188447 (prefixMatchZipper!300 z!960 prefix!919))))

(assert (=> start!278564 e!1812005))

(declare-fun condSetEmpty!25271 () Bool)

(assert (=> start!278564 (= condSetEmpty!25271 (= z!960 (as set.empty (Set Context!5156))))))

(declare-fun setRes!25271 () Bool)

(assert (=> start!278564 setRes!25271))

(declare-fun e!1812003 () Bool)

(assert (=> start!278564 e!1812003))

(declare-fun b!2862386 () Bool)

(declare-fun e!1812004 () Bool)

(declare-fun tp!921605 () Bool)

(assert (=> b!2862386 (= e!1812004 tp!921605)))

(declare-fun b!2862387 () Bool)

(assert (=> b!2862387 (= e!1812005 false)))

(declare-fun lt!1014705 () Bool)

(declare-fun lostCauseZipper!540 ((Set Context!5156)) Bool)

(assert (=> b!2862387 (= lt!1014705 (lostCauseZipper!540 z!960))))

(declare-datatypes ((Option!6319 0))(
  ( (None!6318) (Some!6318 (v!34440 List!34219)) )
))
(declare-fun lt!1014704 () Option!6319)

(declare-fun getLanguageWitness!254 ((Set Context!5156)) Option!6319)

(assert (=> b!2862387 (= lt!1014704 (getLanguageWitness!254 z!960))))

(declare-fun tp!921603 () Bool)

(declare-fun setNonEmpty!25271 () Bool)

(declare-fun setElem!25271 () Context!5156)

(declare-fun inv!46133 (Context!5156) Bool)

(assert (=> setNonEmpty!25271 (= setRes!25271 (and tp!921603 (inv!46133 setElem!25271) e!1812004))))

(declare-fun setRest!25271 () (Set Context!5156))

(assert (=> setNonEmpty!25271 (= z!960 (set.union (set.insert setElem!25271 (as set.empty (Set Context!5156))) setRest!25271))))

(declare-fun b!2862388 () Bool)

(declare-fun tp_is_empty!14973 () Bool)

(declare-fun tp!921604 () Bool)

(assert (=> b!2862388 (= e!1812003 (and tp_is_empty!14973 tp!921604))))

(declare-fun setIsEmpty!25271 () Bool)

(assert (=> setIsEmpty!25271 setRes!25271))

(assert (= (and start!278564 res!1188447) b!2862385))

(assert (= (and b!2862385 res!1188448) b!2862387))

(assert (= (and start!278564 condSetEmpty!25271) setIsEmpty!25271))

(assert (= (and start!278564 (not condSetEmpty!25271)) setNonEmpty!25271))

(assert (= setNonEmpty!25271 b!2862386))

(assert (= (and start!278564 (is-Cons!34095 prefix!919)) b!2862388))

(declare-fun m!3281733 () Bool)

(assert (=> start!278564 m!3281733))

(declare-fun m!3281735 () Bool)

(assert (=> b!2862387 m!3281735))

(declare-fun m!3281737 () Bool)

(assert (=> b!2862387 m!3281737))

(declare-fun m!3281739 () Bool)

(assert (=> setNonEmpty!25271 m!3281739))

(push 1)

(assert tp_is_empty!14973)

(assert (not b!2862388))

(assert (not b!2862387))

(assert (not b!2862386))

(assert (not setNonEmpty!25271))

(assert (not start!278564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

