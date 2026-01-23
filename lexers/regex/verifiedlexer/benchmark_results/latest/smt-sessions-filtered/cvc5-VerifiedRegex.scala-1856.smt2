; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92196 () Bool)

(assert start!92196)

(declare-fun e!685647 () Bool)

(declare-fun e!685648 () Bool)

(declare-fun b!1084334 () Bool)

(declare-datatypes ((C!6510 0))(
  ( (C!6511 (val!3503 Int)) )
))
(declare-datatypes ((Regex!2970 0))(
  ( (ElementMatch!2970 (c!183025 C!6510)) (Concat!4803 (regOne!6452 Regex!2970) (regTwo!6452 Regex!2970)) (EmptyExpr!2970) (Star!2970 (reg!3299 Regex!2970)) (EmptyLang!2970) (Union!2970 (regOne!6453 Regex!2970) (regTwo!6453 Regex!2970)) )
))
(declare-datatypes ((List!10213 0))(
  ( (Nil!10197) (Cons!10197 (h!15598 Regex!2970) (t!101259 List!10213)) )
))
(declare-datatypes ((Context!900 0))(
  ( (Context!901 (exprs!950 List!10213)) )
))
(declare-datatypes ((List!10214 0))(
  ( (Nil!10198) (Cons!10198 (h!15599 Context!900) (t!101260 List!10214)) )
))
(declare-fun zl!316 () List!10214)

(declare-fun tp!324331 () Bool)

(declare-fun inv!13139 (Context!900) Bool)

(assert (=> b!1084334 (= e!685648 (and (inv!13139 (h!15599 zl!316)) e!685647 tp!324331))))

(declare-fun res!482357 () Bool)

(declare-fun e!685650 () Bool)

(assert (=> start!92196 (=> (not res!482357) (not e!685650))))

(declare-fun z!1122 () (Set Context!900))

(declare-fun toList!588 ((Set Context!900)) List!10214)

(assert (=> start!92196 (= res!482357 (= (toList!588 z!1122) zl!316))))

(assert (=> start!92196 e!685650))

(declare-fun condSetEmpty!7425 () Bool)

(assert (=> start!92196 (= condSetEmpty!7425 (= z!1122 (as set.empty (Set Context!900))))))

(declare-fun setRes!7425 () Bool)

(assert (=> start!92196 setRes!7425))

(assert (=> start!92196 e!685648))

(declare-fun e!685649 () Bool)

(assert (=> start!92196 e!685649))

(declare-fun b!1084335 () Bool)

(declare-fun tp_is_empty!5571 () Bool)

(declare-fun tp!324332 () Bool)

(assert (=> b!1084335 (= e!685649 (and tp_is_empty!5571 tp!324332))))

(declare-fun b!1084336 () Bool)

(declare-fun tp!324333 () Bool)

(assert (=> b!1084336 (= e!685647 tp!324333)))

(declare-fun setIsEmpty!7425 () Bool)

(assert (=> setIsEmpty!7425 setRes!7425))

(declare-fun b!1084337 () Bool)

(assert (=> b!1084337 (= e!685650 false)))

(declare-fun lt!362654 () Bool)

(declare-datatypes ((List!10215 0))(
  ( (Nil!10199) (Cons!10199 (h!15600 C!6510) (t!101261 List!10215)) )
))
(declare-fun s!2287 () List!10215)

(declare-fun matchZipper!18 ((Set Context!900) List!10215) Bool)

(declare-fun content!1463 (List!10214) (Set Context!900))

(assert (=> b!1084337 (= lt!362654 (matchZipper!18 (content!1463 zl!316) s!2287))))

(declare-fun e!685646 () Bool)

(declare-fun setElem!7425 () Context!900)

(declare-fun tp!324335 () Bool)

(declare-fun setNonEmpty!7425 () Bool)

(assert (=> setNonEmpty!7425 (= setRes!7425 (and tp!324335 (inv!13139 setElem!7425) e!685646))))

(declare-fun setRest!7425 () (Set Context!900))

(assert (=> setNonEmpty!7425 (= z!1122 (set.union (set.insert setElem!7425 (as set.empty (Set Context!900))) setRest!7425))))

(declare-fun b!1084338 () Bool)

(declare-fun tp!324334 () Bool)

(assert (=> b!1084338 (= e!685646 tp!324334)))

(declare-fun b!1084339 () Bool)

(declare-fun res!482356 () Bool)

(assert (=> b!1084339 (=> (not res!482356) (not e!685650))))

(assert (=> b!1084339 (= res!482356 (matchZipper!18 z!1122 s!2287))))

(assert (= (and start!92196 res!482357) b!1084339))

(assert (= (and b!1084339 res!482356) b!1084337))

(assert (= (and start!92196 condSetEmpty!7425) setIsEmpty!7425))

(assert (= (and start!92196 (not condSetEmpty!7425)) setNonEmpty!7425))

(assert (= setNonEmpty!7425 b!1084338))

(assert (= b!1084334 b!1084336))

(assert (= (and start!92196 (is-Cons!10198 zl!316)) b!1084334))

(assert (= (and start!92196 (is-Cons!10199 s!2287)) b!1084335))

(declare-fun m!1234053 () Bool)

(assert (=> b!1084339 m!1234053))

(declare-fun m!1234055 () Bool)

(assert (=> start!92196 m!1234055))

(declare-fun m!1234057 () Bool)

(assert (=> b!1084334 m!1234057))

(declare-fun m!1234059 () Bool)

(assert (=> b!1084337 m!1234059))

(assert (=> b!1084337 m!1234059))

(declare-fun m!1234061 () Bool)

(assert (=> b!1084337 m!1234061))

(declare-fun m!1234063 () Bool)

(assert (=> setNonEmpty!7425 m!1234063))

(push 1)

(assert tp_is_empty!5571)

(assert (not b!1084336))

(assert (not b!1084339))

(assert (not b!1084334))

(assert (not b!1084335))

(assert (not b!1084337))

(assert (not b!1084338))

(assert (not start!92196))

(assert (not setNonEmpty!7425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

