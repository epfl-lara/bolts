; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727200 () Bool)

(assert start!727200)

(declare-fun res!3012504 () Bool)

(declare-fun e!4477390 () Bool)

(assert (=> start!727200 (=> (not res!3012504) (not e!4477390))))

(declare-datatypes ((C!39770 0))(
  ( (C!39771 (val!30283 Int)) )
))
(declare-datatypes ((Regex!19722 0))(
  ( (ElementMatch!19722 (c!1386523 C!39770)) (Concat!28567 (regOne!39956 Regex!19722) (regTwo!39956 Regex!19722)) (EmptyExpr!19722) (Star!19722 (reg!20051 Regex!19722)) (EmptyLang!19722) (Union!19722 (regOne!39957 Regex!19722) (regTwo!39957 Regex!19722)) )
))
(declare-datatypes ((List!72551 0))(
  ( (Nil!72427) (Cons!72427 (h!78875 Regex!19722) (t!387120 List!72551)) )
))
(declare-datatypes ((Context!16948 0))(
  ( (Context!16949 (exprs!8974 List!72551)) )
))
(declare-fun z!556 () (Set Context!16948))

(declare-fun lambda!465738 () Int)

(declare-fun forall!18315 ((Set Context!16948) Int) Bool)

(assert (=> start!727200 (= res!3012504 (forall!18315 z!556 lambda!465738))))

(assert (=> start!727200 e!4477390))

(declare-fun condSetEmpty!57089 () Bool)

(assert (=> start!727200 (= condSetEmpty!57089 (= z!556 (as set.empty (Set Context!16948))))))

(declare-fun setRes!57089 () Bool)

(assert (=> start!727200 setRes!57089))

(declare-fun setNonEmpty!57089 () Bool)

(declare-fun e!4477389 () Bool)

(declare-fun setElem!57089 () Context!16948)

(declare-fun tp!2179376 () Bool)

(declare-fun inv!92536 (Context!16948) Bool)

(assert (=> setNonEmpty!57089 (= setRes!57089 (and tp!2179376 (inv!92536 setElem!57089) e!4477389))))

(declare-fun setRest!57089 () (Set Context!16948))

(assert (=> setNonEmpty!57089 (= z!556 (set.union (set.insert setElem!57089 (as set.empty (Set Context!16948))) setRest!57089))))

(declare-fun b!7508874 () Bool)

(declare-fun tp!2179377 () Bool)

(assert (=> b!7508874 (= e!4477389 tp!2179377)))

(declare-fun b!7508875 () Bool)

(assert (=> b!7508875 (= e!4477390 false)))

(declare-fun lt!2636935 () Bool)

(declare-datatypes ((List!72552 0))(
  ( (Nil!72428) (Cons!72428 (h!78876 Context!16948) (t!387121 List!72552)) )
))
(declare-fun forall!18316 (List!72552 Int) Bool)

(declare-fun toList!11841 ((Set Context!16948)) List!72552)

(assert (=> b!7508875 (= lt!2636935 (forall!18316 (toList!11841 z!556) lambda!465738))))

(declare-fun b!7508876 () Bool)

(declare-fun res!3012503 () Bool)

(assert (=> b!7508876 (=> (not res!3012503) (not e!4477390))))

(assert (=> b!7508876 (= res!3012503 (forall!18315 z!556 lambda!465738))))

(declare-fun setIsEmpty!57089 () Bool)

(assert (=> setIsEmpty!57089 setRes!57089))

(assert (= (and start!727200 res!3012504) b!7508876))

(assert (= (and b!7508876 res!3012503) b!7508875))

(assert (= (and start!727200 condSetEmpty!57089) setIsEmpty!57089))

(assert (= (and start!727200 (not condSetEmpty!57089)) setNonEmpty!57089))

(assert (= setNonEmpty!57089 b!7508874))

(declare-fun m!8092834 () Bool)

(assert (=> start!727200 m!8092834))

(declare-fun m!8092836 () Bool)

(assert (=> setNonEmpty!57089 m!8092836))

(declare-fun m!8092838 () Bool)

(assert (=> b!7508875 m!8092838))

(assert (=> b!7508875 m!8092838))

(declare-fun m!8092840 () Bool)

(assert (=> b!7508875 m!8092840))

(assert (=> b!7508876 m!8092834))

(push 1)

(assert (not setNonEmpty!57089))

(assert (not b!7508876))

(assert (not b!7508874))

(assert (not b!7508875))

(assert (not start!727200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

