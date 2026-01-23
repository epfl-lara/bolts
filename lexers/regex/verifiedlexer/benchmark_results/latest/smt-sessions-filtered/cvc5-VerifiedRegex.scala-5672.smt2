; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282836 () Bool)

(assert start!282836)

(declare-fun setIsEmpty!25736 () Bool)

(declare-fun setRes!25736 () Bool)

(assert (=> setIsEmpty!25736 setRes!25736))

(declare-fun res!1200405 () Bool)

(declare-fun e!1834888 () Bool)

(assert (=> start!282836 (=> (not res!1200405) (not e!1834888))))

(declare-datatypes ((C!17978 0))(
  ( (C!17979 (val!11023 Int)) )
))
(declare-datatypes ((List!34705 0))(
  ( (Nil!34581) (Cons!34581 (h!40001 C!17978) (t!233748 List!34705)) )
))
(declare-fun prefix!909 () List!34705)

(declare-fun s!2253 () List!34705)

(declare-fun isPrefix!2735 (List!34705 List!34705) Bool)

(assert (=> start!282836 (= res!1200405 (isPrefix!2735 prefix!909 s!2253))))

(assert (=> start!282836 e!1834888))

(declare-fun e!1834889 () Bool)

(assert (=> start!282836 e!1834889))

(declare-fun e!1834891 () Bool)

(assert (=> start!282836 e!1834891))

(declare-fun condSetEmpty!25736 () Bool)

(declare-datatypes ((Regex!8898 0))(
  ( (ElementMatch!8898 (c!473705 C!17978)) (Concat!14219 (regOne!18308 Regex!8898) (regTwo!18308 Regex!8898)) (EmptyExpr!8898) (Star!8898 (reg!9227 Regex!8898)) (EmptyLang!8898) (Union!8898 (regOne!18309 Regex!8898) (regTwo!18309 Regex!8898)) )
))
(declare-datatypes ((List!34706 0))(
  ( (Nil!34582) (Cons!34582 (h!40002 Regex!8898) (t!233749 List!34706)) )
))
(declare-datatypes ((Context!5452 0))(
  ( (Context!5453 (exprs!3226 List!34706)) )
))
(declare-fun z!929 () (Set Context!5452))

(assert (=> start!282836 (= condSetEmpty!25736 (= z!929 (as set.empty (Set Context!5452))))))

(assert (=> start!282836 setRes!25736))

(declare-fun b!2906787 () Bool)

(declare-fun res!1200406 () Bool)

(assert (=> b!2906787 (=> (not res!1200406) (not e!1834888))))

(assert (=> b!2906787 (= res!1200406 (is-Nil!34581 prefix!909))))

(declare-fun setNonEmpty!25736 () Bool)

(declare-fun e!1834890 () Bool)

(declare-fun tp!933649 () Bool)

(declare-fun setElem!25736 () Context!5452)

(declare-fun inv!46701 (Context!5452) Bool)

(assert (=> setNonEmpty!25736 (= setRes!25736 (and tp!933649 (inv!46701 setElem!25736) e!1834890))))

(declare-fun setRest!25736 () (Set Context!5452))

(assert (=> setNonEmpty!25736 (= z!929 (set.union (set.insert setElem!25736 (as set.empty (Set Context!5452))) setRest!25736))))

(declare-fun b!2906788 () Bool)

(declare-fun tp!933650 () Bool)

(assert (=> b!2906788 (= e!1834890 tp!933650)))

(declare-fun b!2906789 () Bool)

(declare-fun tp_is_empty!15383 () Bool)

(declare-fun tp!933648 () Bool)

(assert (=> b!2906789 (= e!1834891 (and tp_is_empty!15383 tp!933648))))

(declare-fun b!2906790 () Bool)

(assert (=> b!2906790 (= e!1834888 false)))

(declare-fun lt!1022609 () Bool)

(declare-fun lostCauseZipper!594 ((Set Context!5452)) Bool)

(assert (=> b!2906790 (= lt!1022609 (lostCauseZipper!594 z!929))))

(declare-fun b!2906791 () Bool)

(declare-fun tp!933651 () Bool)

(assert (=> b!2906791 (= e!1834889 (and tp_is_empty!15383 tp!933651))))

(declare-fun b!2906792 () Bool)

(declare-fun res!1200404 () Bool)

(assert (=> b!2906792 (=> (not res!1200404) (not e!1834888))))

(declare-fun prefixMatchZipper!342 ((Set Context!5452) List!34705) Bool)

(assert (=> b!2906792 (= res!1200404 (not (prefixMatchZipper!342 z!929 prefix!909)))))

(assert (= (and start!282836 res!1200405) b!2906792))

(assert (= (and b!2906792 res!1200404) b!2906787))

(assert (= (and b!2906787 res!1200406) b!2906790))

(assert (= (and start!282836 (is-Cons!34581 prefix!909)) b!2906791))

(assert (= (and start!282836 (is-Cons!34581 s!2253)) b!2906789))

(assert (= (and start!282836 condSetEmpty!25736) setIsEmpty!25736))

(assert (= (and start!282836 (not condSetEmpty!25736)) setNonEmpty!25736))

(assert (= setNonEmpty!25736 b!2906788))

(declare-fun m!3308635 () Bool)

(assert (=> start!282836 m!3308635))

(declare-fun m!3308637 () Bool)

(assert (=> setNonEmpty!25736 m!3308637))

(declare-fun m!3308639 () Bool)

(assert (=> b!2906790 m!3308639))

(declare-fun m!3308641 () Bool)

(assert (=> b!2906792 m!3308641))

(push 1)

(assert (not b!2906792))

(assert (not b!2906791))

(assert tp_is_empty!15383)

(assert (not start!282836))

(assert (not b!2906789))

(assert (not b!2906790))

(assert (not b!2906788))

(assert (not setNonEmpty!25736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

