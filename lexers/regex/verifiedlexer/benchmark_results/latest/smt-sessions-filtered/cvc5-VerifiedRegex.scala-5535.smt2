; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278576 () Bool)

(assert start!278576)

(declare-fun b!2862463 () Bool)

(declare-fun condSetEmpty!25292 () Bool)

(declare-datatypes ((C!17430 0))(
  ( (C!17431 (val!10749 Int)) )
))
(declare-datatypes ((Regex!8624 0))(
  ( (ElementMatch!8624 (c!461421 C!17430)) (Concat!13945 (regOne!17760 Regex!8624) (regTwo!17760 Regex!8624)) (EmptyExpr!8624) (Star!8624 (reg!8953 Regex!8624)) (EmptyLang!8624) (Union!8624 (regOne!17761 Regex!8624) (regTwo!17761 Regex!8624)) )
))
(declare-datatypes ((List!34231 0))(
  ( (Nil!34107) (Cons!34107 (h!39527 Regex!8624) (t!233268 List!34231)) )
))
(declare-datatypes ((Context!5168 0))(
  ( (Context!5169 (exprs!3084 List!34231)) )
))
(declare-fun lt!1014741 () (Set Context!5168))

(assert (=> b!2862463 (= condSetEmpty!25292 (= lt!1014741 (as set.empty (Set Context!5168))))))

(declare-fun setRes!25292 () Bool)

(assert (=> b!2862463 setRes!25292))

(declare-fun setIsEmpty!25292 () Bool)

(assert (=> setIsEmpty!25292 setRes!25292))

(declare-fun setNonEmpty!25292 () Bool)

(assert (=> setNonEmpty!25292 (= setRes!25292 true)))

(declare-fun setElem!25292 () Context!5168)

(declare-fun setRest!25292 () (Set Context!5168))

(assert (=> setNonEmpty!25292 (= lt!1014741 (set.union (set.insert setElem!25292 (as set.empty (Set Context!5168))) setRest!25292))))

(assert (= (and b!2862463 condSetEmpty!25292) setIsEmpty!25292))

(assert (= (and b!2862463 (not condSetEmpty!25292)) setNonEmpty!25292))

(assert (=> b!2862463 true))

(declare-fun e!1812066 () Bool)

(assert (=> b!2862463 (= e!1812066 (not true))))

(declare-fun e!1812065 () Bool)

(assert (=> b!2862463 e!1812065))

(declare-fun res!1188490 () Bool)

(assert (=> b!2862463 (=> (not res!1188490) (not e!1812065))))

(declare-fun lambda!105286 () Int)

(declare-fun Exists!1312 (Int) Bool)

(assert (=> b!2862463 (= res!1188490 (Exists!1312 lambda!105286))))

(declare-datatypes ((Unit!47771 0))(
  ( (Unit!47772) )
))
(declare-fun lt!1014740 () Unit!47771)

(declare-datatypes ((List!34232 0))(
  ( (Nil!34108) (Cons!34108 (h!39528 C!17430) (t!233269 List!34232)) )
))
(declare-fun prefix!919 () List!34232)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!358 ((Set Context!5168) List!34232) Unit!47771)

(assert (=> b!2862463 (= lt!1014740 (lemmaPrefixMatchThenExistsStringThatMatches!358 lt!1014741 (t!233269 prefix!919)))))

(declare-fun z!960 () (Set Context!5168))

(declare-fun derivationStepZipper!426 ((Set Context!5168) C!17430) (Set Context!5168))

(assert (=> b!2862463 (= lt!1014741 (derivationStepZipper!426 z!960 (h!39528 prefix!919)))))

(declare-fun b!2862464 () Bool)

(assert (=> b!2862464 (= e!1812065 (Exists!1312 lambda!105286))))

(declare-fun b!2862465 () Bool)

(declare-fun e!1812063 () Bool)

(declare-fun tp!921658 () Bool)

(assert (=> b!2862465 (= e!1812063 tp!921658)))

(declare-fun setIsEmpty!25289 () Bool)

(declare-fun setRes!25289 () Bool)

(assert (=> setIsEmpty!25289 setRes!25289))

(declare-fun b!2862466 () Bool)

(declare-fun e!1812064 () Bool)

(declare-fun tp_is_empty!14985 () Bool)

(declare-fun tp!921657 () Bool)

(assert (=> b!2862466 (= e!1812064 (and tp_is_empty!14985 tp!921657))))

(declare-fun b!2862467 () Bool)

(declare-fun res!1188491 () Bool)

(assert (=> b!2862467 (=> (not res!1188491) (not e!1812066))))

(assert (=> b!2862467 (= res!1188491 (not (is-Nil!34108 prefix!919)))))

(declare-fun setElem!25289 () Context!5168)

(declare-fun setNonEmpty!25289 () Bool)

(declare-fun tp!921659 () Bool)

(declare-fun inv!46148 (Context!5168) Bool)

(assert (=> setNonEmpty!25289 (= setRes!25289 (and tp!921659 (inv!46148 setElem!25289) e!1812063))))

(declare-fun setRest!25289 () (Set Context!5168))

(assert (=> setNonEmpty!25289 (= z!960 (set.union (set.insert setElem!25289 (as set.empty (Set Context!5168))) setRest!25289))))

(declare-fun res!1188489 () Bool)

(assert (=> start!278576 (=> (not res!1188489) (not e!1812066))))

(declare-fun prefixMatchZipper!306 ((Set Context!5168) List!34232) Bool)

(assert (=> start!278576 (= res!1188489 (prefixMatchZipper!306 z!960 prefix!919))))

(assert (=> start!278576 e!1812066))

(declare-fun condSetEmpty!25289 () Bool)

(assert (=> start!278576 (= condSetEmpty!25289 (= z!960 (as set.empty (Set Context!5168))))))

(assert (=> start!278576 setRes!25289))

(assert (=> start!278576 e!1812064))

(assert (= (and start!278576 res!1188489) b!2862467))

(assert (= (and b!2862467 res!1188491) b!2862463))

(assert (= (and b!2862463 res!1188490) b!2862464))

(assert (= (and start!278576 condSetEmpty!25289) setIsEmpty!25289))

(assert (= (and start!278576 (not condSetEmpty!25289)) setNonEmpty!25289))

(assert (= setNonEmpty!25289 b!2862465))

(assert (= (and start!278576 (is-Cons!34108 prefix!919)) b!2862466))

(declare-fun m!3281793 () Bool)

(assert (=> b!2862463 m!3281793))

(declare-fun m!3281795 () Bool)

(assert (=> b!2862463 m!3281795))

(declare-fun m!3281797 () Bool)

(assert (=> b!2862463 m!3281797))

(assert (=> b!2862464 m!3281793))

(declare-fun m!3281799 () Bool)

(assert (=> setNonEmpty!25289 m!3281799))

(declare-fun m!3281801 () Bool)

(assert (=> start!278576 m!3281801))

(push 1)

(assert (not start!278576))

(assert (not b!2862463))

(assert (not setNonEmpty!25289))

(assert (not b!2862466))

(assert (not b!2862465))

(assert (not b!2862464))

(assert (not setNonEmpty!25292))

(assert tp_is_empty!14985)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

