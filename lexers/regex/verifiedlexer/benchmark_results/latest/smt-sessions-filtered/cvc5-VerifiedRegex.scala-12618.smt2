; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!699090 () Bool)

(assert start!699090)

(declare-fun b!7178610 () Bool)

(declare-fun e!4311301 () Bool)

(declare-fun tp!1991464 () Bool)

(assert (=> b!7178610 (= e!4311301 tp!1991464)))

(declare-fun setNonEmpty!53092 () Bool)

(declare-fun setRes!53092 () Bool)

(declare-fun tp!1991465 () Bool)

(declare-datatypes ((C!36962 0))(
  ( (C!36963 (val!28429 Int)) )
))
(declare-datatypes ((Regex!18344 0))(
  ( (ElementMatch!18344 (c!1336801 C!36962)) (Concat!27189 (regOne!37200 Regex!18344) (regTwo!37200 Regex!18344)) (EmptyExpr!18344) (Star!18344 (reg!18673 Regex!18344)) (EmptyLang!18344) (Union!18344 (regOne!37201 Regex!18344) (regTwo!37201 Regex!18344)) )
))
(declare-datatypes ((List!69764 0))(
  ( (Nil!69640) (Cons!69640 (h!76088 Regex!18344) (t!383785 List!69764)) )
))
(declare-datatypes ((Context!14592 0))(
  ( (Context!14593 (exprs!7796 List!69764)) )
))
(declare-fun setElem!53092 () Context!14592)

(declare-fun inv!88883 (Context!14592) Bool)

(assert (=> setNonEmpty!53092 (= setRes!53092 (and tp!1991465 (inv!88883 setElem!53092) e!4311301))))

(declare-fun z!3530 () (Set Context!14592))

(declare-fun setRest!53092 () (Set Context!14592))

(assert (=> setNonEmpty!53092 (= z!3530 (set.union (set.insert setElem!53092 (as set.empty (Set Context!14592))) setRest!53092))))

(declare-fun b!7178611 () Bool)

(declare-fun res!2924133 () Bool)

(declare-fun e!4311302 () Bool)

(assert (=> b!7178611 (=> (not res!2924133) (not e!4311302))))

(declare-fun focus!419 (Regex!18344) (Set Context!14592))

(assert (=> b!7178611 (= res!2924133 (= z!3530 (focus!419 EmptyExpr!18344)))))

(declare-fun setIsEmpty!53092 () Bool)

(assert (=> setIsEmpty!53092 setRes!53092))

(declare-fun b!7178612 () Bool)

(assert (=> b!7178612 (= e!4311302 (not true))))

(declare-fun nullableContext!193 (Context!14592) Bool)

(assert (=> b!7178612 (nullableContext!193 (Context!14593 (Cons!69640 EmptyExpr!18344 Nil!69640)))))

(declare-fun res!2924132 () Bool)

(assert (=> start!699090 (=> (not res!2924132) (not e!4311302))))

(declare-datatypes ((List!69765 0))(
  ( (Nil!69641) (Cons!69641 (h!76089 Context!14592) (t!383786 List!69765)) )
))
(declare-fun unfocusZipper!2604 (List!69765) Regex!18344)

(declare-fun toList!11287 ((Set Context!14592)) List!69765)

(assert (=> start!699090 (= res!2924132 (= (unfocusZipper!2604 (toList!11287 z!3530)) EmptyExpr!18344))))

(assert (=> start!699090 e!4311302))

(declare-fun condSetEmpty!53092 () Bool)

(assert (=> start!699090 (= condSetEmpty!53092 (= z!3530 (as set.empty (Set Context!14592))))))

(assert (=> start!699090 setRes!53092))

(assert (= (and start!699090 res!2924132) b!7178611))

(assert (= (and b!7178611 res!2924133) b!7178612))

(assert (= (and start!699090 condSetEmpty!53092) setIsEmpty!53092))

(assert (= (and start!699090 (not condSetEmpty!53092)) setNonEmpty!53092))

(assert (= setNonEmpty!53092 b!7178610))

(declare-fun m!7877484 () Bool)

(assert (=> setNonEmpty!53092 m!7877484))

(declare-fun m!7877486 () Bool)

(assert (=> b!7178611 m!7877486))

(declare-fun m!7877488 () Bool)

(assert (=> b!7178612 m!7877488))

(declare-fun m!7877490 () Bool)

(assert (=> start!699090 m!7877490))

(assert (=> start!699090 m!7877490))

(declare-fun m!7877492 () Bool)

(assert (=> start!699090 m!7877492))

(push 1)

(assert (not b!7178612))

(assert (not b!7178610))

(assert (not setNonEmpty!53092))

(assert (not b!7178611))

(assert (not start!699090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

