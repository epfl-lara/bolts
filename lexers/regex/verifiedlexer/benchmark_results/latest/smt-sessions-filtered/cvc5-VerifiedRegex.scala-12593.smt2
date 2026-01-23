; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697754 () Bool)

(assert start!697754)

(declare-fun b!7157565 () Bool)

(declare-fun e!4299908 () Bool)

(declare-fun tp!1979309 () Bool)

(assert (=> b!7157565 (= e!4299908 tp!1979309)))

(declare-fun setIsEmpty!52732 () Bool)

(declare-fun setRes!52732 () Bool)

(assert (=> setIsEmpty!52732 setRes!52732))

(declare-fun res!2918430 () Bool)

(declare-fun e!4299907 () Bool)

(assert (=> start!697754 (=> (not res!2918430) (not e!4299907))))

(declare-datatypes ((C!36862 0))(
  ( (C!36863 (val!28379 Int)) )
))
(declare-datatypes ((Regex!18294 0))(
  ( (ElementMatch!18294 (c!1333842 C!36862)) (Concat!27139 (regOne!37100 Regex!18294) (regTwo!37100 Regex!18294)) (EmptyExpr!18294) (Star!18294 (reg!18623 Regex!18294)) (EmptyLang!18294) (Union!18294 (regOne!37101 Regex!18294) (regTwo!37101 Regex!18294)) )
))
(declare-datatypes ((List!69624 0))(
  ( (Nil!69500) (Cons!69500 (h!75948 Regex!18294) (t!383641 List!69624)) )
))
(declare-datatypes ((Context!14492 0))(
  ( (Context!14493 (exprs!7746 List!69624)) )
))
(declare-fun z!3530 () (Set Context!14492))

(declare-datatypes ((List!69625 0))(
  ( (Nil!69501) (Cons!69501 (h!75949 Context!14492) (t!383642 List!69625)) )
))
(declare-fun unfocusZipper!2554 (List!69625) Regex!18294)

(declare-fun toList!11237 ((Set Context!14492)) List!69625)

(assert (=> start!697754 (= res!2918430 (= (unfocusZipper!2554 (toList!11237 z!3530)) EmptyExpr!18294))))

(assert (=> start!697754 e!4299907))

(declare-fun condSetEmpty!52732 () Bool)

(assert (=> start!697754 (= condSetEmpty!52732 (= z!3530 (as set.empty (Set Context!14492))))))

(assert (=> start!697754 setRes!52732))

(declare-fun setNonEmpty!52732 () Bool)

(declare-fun setElem!52732 () Context!14492)

(declare-fun tp!1979308 () Bool)

(declare-fun inv!88758 (Context!14492) Bool)

(assert (=> setNonEmpty!52732 (= setRes!52732 (and tp!1979308 (inv!88758 setElem!52732) e!4299908))))

(declare-fun setRest!52732 () (Set Context!14492))

(assert (=> setNonEmpty!52732 (= z!3530 (set.union (set.insert setElem!52732 (as set.empty (Set Context!14492))) setRest!52732))))

(declare-fun b!7157564 () Bool)

(assert (=> b!7157564 (= e!4299907 false)))

(assert (= (and start!697754 res!2918430) b!7157564))

(assert (= (and start!697754 condSetEmpty!52732) setIsEmpty!52732))

(assert (= (and start!697754 (not condSetEmpty!52732)) setNonEmpty!52732))

(assert (= setNonEmpty!52732 b!7157565))

(declare-fun m!7863984 () Bool)

(assert (=> start!697754 m!7863984))

(assert (=> start!697754 m!7863984))

(declare-fun m!7863986 () Bool)

(assert (=> start!697754 m!7863986))

(declare-fun m!7863988 () Bool)

(assert (=> setNonEmpty!52732 m!7863988))

(push 1)

(assert (not start!697754))

(assert (not setNonEmpty!52732))

(assert (not b!7157565))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

