; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!279082 () Bool)

(assert start!279082)

(declare-fun b!2864309 () Bool)

(declare-fun e!1813237 () Bool)

(declare-fun tp!922425 () Bool)

(assert (=> b!2864309 (= e!1813237 tp!922425)))

(declare-fun setNonEmpty!25544 () Bool)

(declare-datatypes ((C!17490 0))(
  ( (C!17491 (val!10779 Int)) )
))
(declare-datatypes ((Regex!8654 0))(
  ( (ElementMatch!8654 (c!461809 C!17490)) (Concat!13975 (regOne!17820 Regex!8654) (regTwo!17820 Regex!8654)) (EmptyExpr!8654) (Star!8654 (reg!8983 Regex!8654)) (EmptyLang!8654) (Union!8654 (regOne!17821 Regex!8654) (regTwo!17821 Regex!8654)) )
))
(declare-datatypes ((List!34297 0))(
  ( (Nil!34173) (Cons!34173 (h!39593 Regex!8654) (t!233340 List!34297)) )
))
(declare-datatypes ((Context!5228 0))(
  ( (Context!5229 (exprs!3114 List!34297)) )
))
(declare-fun setElem!25544 () Context!5228)

(declare-fun setRes!25544 () Bool)

(declare-fun tp!922424 () Bool)

(declare-fun inv!46223 (Context!5228) Bool)

(assert (=> setNonEmpty!25544 (= setRes!25544 (and tp!922424 (inv!46223 setElem!25544) e!1813237))))

(declare-fun z!960 () (Set Context!5228))

(declare-fun setRest!25544 () (Set Context!5228))

(assert (=> setNonEmpty!25544 (= z!960 (set.union (set.insert setElem!25544 (as set.empty (Set Context!5228))) setRest!25544))))

(declare-fun b!2864310 () Bool)

(declare-fun e!1813236 () Bool)

(declare-fun tp_is_empty!15045 () Bool)

(declare-fun tp!922423 () Bool)

(assert (=> b!2864310 (= e!1813236 (and tp_is_empty!15045 tp!922423))))

(declare-fun lt!1015354 () Bool)

(declare-datatypes ((List!34298 0))(
  ( (Nil!34174) (Cons!34174 (h!39594 C!17490) (t!233341 List!34298)) )
))
(declare-fun prefix!919 () List!34298)

(declare-fun prefixMatchZipper!336 ((Set Context!5228) List!34298) Bool)

(assert (=> start!279082 (= lt!1015354 (prefixMatchZipper!336 z!960 prefix!919))))

(assert (=> start!279082 false))

(declare-fun condSetEmpty!25544 () Bool)

(assert (=> start!279082 (= condSetEmpty!25544 (= z!960 (as set.empty (Set Context!5228))))))

(assert (=> start!279082 setRes!25544))

(assert (=> start!279082 e!1813236))

(declare-fun setIsEmpty!25544 () Bool)

(assert (=> setIsEmpty!25544 setRes!25544))

(assert (= (and start!279082 condSetEmpty!25544) setIsEmpty!25544))

(assert (= (and start!279082 (not condSetEmpty!25544)) setNonEmpty!25544))

(assert (= setNonEmpty!25544 b!2864309))

(assert (= (and start!279082 (is-Cons!34174 prefix!919)) b!2864310))

(declare-fun m!3283961 () Bool)

(assert (=> setNonEmpty!25544 m!3283961))

(declare-fun m!3283963 () Bool)

(assert (=> start!279082 m!3283963))

(push 1)

(assert tp_is_empty!15045)

(assert (not setNonEmpty!25544))

(assert (not b!2864309))

(assert (not start!279082))

(assert (not b!2864310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

