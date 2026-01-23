; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722982 () Bool)

(assert start!722982)

(declare-fun b!7445169 () Bool)

(assert (=> b!7445169 true))

(declare-fun e!4445195 () Bool)

(assert (=> b!7445169 (= e!4445195 (not true))))

(declare-datatypes ((C!39198 0))(
  ( (C!39199 (val!29973 Int)) )
))
(declare-datatypes ((Regex!19462 0))(
  ( (ElementMatch!19462 (c!1377384 C!39198)) (Concat!28307 (regOne!39436 Regex!19462) (regTwo!39436 Regex!19462)) (EmptyExpr!19462) (Star!19462 (reg!19791 Regex!19462)) (EmptyLang!19462) (Union!19462 (regOne!39437 Regex!19462) (regTwo!39437 Regex!19462)) )
))
(declare-datatypes ((List!72152 0))(
  ( (Nil!72028) (Cons!72028 (h!78476 Regex!19462) (t!386717 List!72152)) )
))
(declare-datatypes ((Context!16804 0))(
  ( (Context!16805 (exprs!8902 List!72152)) )
))
(declare-fun z!3503 () (Set Context!16804))

(declare-fun lambda!460560 () Int)

(declare-fun flatMap!3240 ((Set Context!16804) Int) (Set Context!16804))

(assert (=> b!7445169 (= (flatMap!3240 z!3503 lambda!460560) (as set.empty (Set Context!16804)))))

(declare-datatypes ((Unit!165771 0))(
  ( (Unit!165772) )
))
(declare-fun lt!2619513 () Unit!165771)

(declare-fun lemmaFlatMapOnEmptySetIsEmpty!13 ((Set Context!16804) Int) Unit!165771)

(assert (=> b!7445169 (= lt!2619513 (lemmaFlatMapOnEmptySetIsEmpty!13 z!3503 lambda!460560))))

(declare-fun b!7445170 () Bool)

(declare-fun e!4445194 () Bool)

(declare-fun tp!2154506 () Bool)

(assert (=> b!7445170 (= e!4445194 tp!2154506)))

(declare-fun setIsEmpty!56654 () Bool)

(declare-fun setRes!56654 () Bool)

(assert (=> setIsEmpty!56654 setRes!56654))

(declare-fun res!2987156 () Bool)

(assert (=> start!722982 (=> (not res!2987156) (not e!4445195))))

(declare-datatypes ((List!72153 0))(
  ( (Nil!72029) (Cons!72029 (h!78477 C!39198) (t!386718 List!72153)) )
))
(declare-fun s!7951 () List!72153)

(assert (=> start!722982 (= res!2987156 (and (= z!3503 (as set.empty (Set Context!16804))) (is-Cons!72029 s!7951)))))

(assert (=> start!722982 e!4445195))

(declare-fun condSetEmpty!56654 () Bool)

(assert (=> start!722982 (= condSetEmpty!56654 (= z!3503 (as set.empty (Set Context!16804))))))

(assert (=> start!722982 setRes!56654))

(declare-fun e!4445193 () Bool)

(assert (=> start!722982 e!4445193))

(declare-fun b!7445171 () Bool)

(declare-fun tp_is_empty!49183 () Bool)

(declare-fun tp!2154507 () Bool)

(assert (=> b!7445171 (= e!4445193 (and tp_is_empty!49183 tp!2154507))))

(declare-fun tp!2154505 () Bool)

(declare-fun setNonEmpty!56654 () Bool)

(declare-fun setElem!56654 () Context!16804)

(declare-fun inv!92017 (Context!16804) Bool)

(assert (=> setNonEmpty!56654 (= setRes!56654 (and tp!2154505 (inv!92017 setElem!56654) e!4445194))))

(declare-fun setRest!56654 () (Set Context!16804))

(assert (=> setNonEmpty!56654 (= z!3503 (set.union (set.insert setElem!56654 (as set.empty (Set Context!16804))) setRest!56654))))

(assert (= (and start!722982 res!2987156) b!7445169))

(assert (= (and start!722982 condSetEmpty!56654) setIsEmpty!56654))

(assert (= (and start!722982 (not condSetEmpty!56654)) setNonEmpty!56654))

(assert (= setNonEmpty!56654 b!7445170))

(assert (= (and start!722982 (is-Cons!72029 s!7951)) b!7445171))

(declare-fun m!8054812 () Bool)

(assert (=> b!7445169 m!8054812))

(declare-fun m!8054814 () Bool)

(assert (=> b!7445169 m!8054814))

(declare-fun m!8054816 () Bool)

(assert (=> setNonEmpty!56654 m!8054816))

(push 1)

(assert (not b!7445169))

(assert (not b!7445171))

(assert tp_is_empty!49183)

(assert (not b!7445170))

(assert (not setNonEmpty!56654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

