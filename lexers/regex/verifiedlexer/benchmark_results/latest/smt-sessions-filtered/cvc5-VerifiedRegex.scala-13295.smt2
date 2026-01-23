; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722986 () Bool)

(assert start!722986)

(declare-datatypes ((C!39202 0))(
  ( (C!39203 (val!29975 Int)) )
))
(declare-datatypes ((Regex!19464 0))(
  ( (ElementMatch!19464 (c!1377388 C!39202)) (Concat!28309 (regOne!39440 Regex!19464) (regTwo!39440 Regex!19464)) (EmptyExpr!19464) (Star!19464 (reg!19793 Regex!19464)) (EmptyLang!19464) (Union!19464 (regOne!39441 Regex!19464) (regTwo!39441 Regex!19464)) )
))
(declare-datatypes ((List!72156 0))(
  ( (Nil!72032) (Cons!72032 (h!78480 Regex!19464) (t!386721 List!72156)) )
))
(declare-datatypes ((Context!16808 0))(
  ( (Context!16809 (exprs!8904 List!72156)) )
))
(declare-fun setElem!56660 () Context!16808)

(declare-fun e!4445213 () Bool)

(declare-fun tp!2154525 () Bool)

(declare-fun setNonEmpty!56660 () Bool)

(declare-fun setRes!56660 () Bool)

(declare-fun inv!92022 (Context!16808) Bool)

(assert (=> setNonEmpty!56660 (= setRes!56660 (and tp!2154525 (inv!92022 setElem!56660) e!4445213))))

(declare-fun z!3503 () (Set Context!16808))

(declare-fun setRest!56660 () (Set Context!16808))

(assert (=> setNonEmpty!56660 (= z!3503 (set.union (set.insert setElem!56660 (as set.empty (Set Context!16808))) setRest!56660))))

(declare-fun setIsEmpty!56660 () Bool)

(assert (=> setIsEmpty!56660 setRes!56660))

(declare-fun res!2987162 () Bool)

(declare-fun e!4445211 () Bool)

(assert (=> start!722986 (=> (not res!2987162) (not e!4445211))))

(assert (=> start!722986 (= res!2987162 (= z!3503 (as set.empty (Set Context!16808))))))

(assert (=> start!722986 e!4445211))

(declare-fun condSetEmpty!56660 () Bool)

(assert (=> start!722986 (= condSetEmpty!56660 (= z!3503 (as set.empty (Set Context!16808))))))

(assert (=> start!722986 setRes!56660))

(declare-fun e!4445212 () Bool)

(assert (=> start!722986 e!4445212))

(declare-fun b!7445191 () Bool)

(declare-fun tp!2154524 () Bool)

(assert (=> b!7445191 (= e!4445213 tp!2154524)))

(declare-fun b!7445192 () Bool)

(declare-datatypes ((List!72157 0))(
  ( (Nil!72033) (Cons!72033 (h!78481 C!39202) (t!386722 List!72157)) )
))
(declare-fun s!7951 () List!72157)

(declare-fun size!42182 (List!72157) Int)

(assert (=> b!7445192 (= e!4445211 (< (size!42182 s!7951) 0))))

(declare-fun b!7445193 () Bool)

(declare-fun tp_is_empty!49187 () Bool)

(declare-fun tp!2154523 () Bool)

(assert (=> b!7445193 (= e!4445212 (and tp_is_empty!49187 tp!2154523))))

(assert (= (and start!722986 res!2987162) b!7445192))

(assert (= (and start!722986 condSetEmpty!56660) setIsEmpty!56660))

(assert (= (and start!722986 (not condSetEmpty!56660)) setNonEmpty!56660))

(assert (= setNonEmpty!56660 b!7445191))

(assert (= (and start!722986 (is-Cons!72033 s!7951)) b!7445193))

(declare-fun m!8054824 () Bool)

(assert (=> setNonEmpty!56660 m!8054824))

(declare-fun m!8054826 () Bool)

(assert (=> b!7445192 m!8054826))

(push 1)

(assert tp_is_empty!49187)

(assert (not b!7445191))

(assert (not b!7445192))

(assert (not b!7445193))

(assert (not setNonEmpty!56660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2296246 () Bool)

(declare-fun lt!2619519 () Int)

(assert (=> d!2296246 (>= lt!2619519 0)))

(declare-fun e!4445225 () Int)

(assert (=> d!2296246 (= lt!2619519 e!4445225)))

(declare-fun c!1377392 () Bool)

(assert (=> d!2296246 (= c!1377392 (is-Nil!72033 s!7951))))

(assert (=> d!2296246 (= (size!42182 s!7951) lt!2619519)))

(declare-fun b!7445207 () Bool)

(assert (=> b!7445207 (= e!4445225 0)))

(declare-fun b!7445208 () Bool)

(assert (=> b!7445208 (= e!4445225 (+ 1 (size!42182 (t!386722 s!7951))))))

(assert (= (and d!2296246 c!1377392) b!7445207))

(assert (= (and d!2296246 (not c!1377392)) b!7445208))

(declare-fun m!8054832 () Bool)

(assert (=> b!7445208 m!8054832))

(assert (=> b!7445192 d!2296246))

(declare-fun d!2296250 () Bool)

(declare-fun lambda!460566 () Int)

(declare-fun forall!18239 (List!72156 Int) Bool)

(assert (=> d!2296250 (= (inv!92022 setElem!56660) (forall!18239 (exprs!8904 setElem!56660) lambda!460566))))

(declare-fun bs!1926617 () Bool)

(assert (= bs!1926617 d!2296250))

(declare-fun m!8054834 () Bool)

(assert (=> bs!1926617 m!8054834))

(assert (=> setNonEmpty!56660 d!2296250))

(declare-fun b!7445213 () Bool)

(declare-fun e!4445228 () Bool)

(declare-fun tp!2154537 () Bool)

(assert (=> b!7445213 (= e!4445228 (and tp_is_empty!49187 tp!2154537))))

(assert (=> b!7445193 (= tp!2154523 e!4445228)))

(assert (= (and b!7445193 (is-Cons!72033 (t!386722 s!7951))) b!7445213))

(declare-fun condSetEmpty!56666 () Bool)

(assert (=> setNonEmpty!56660 (= condSetEmpty!56666 (= setRest!56660 (as set.empty (Set Context!16808))))))

(declare-fun setRes!56666 () Bool)

(assert (=> setNonEmpty!56660 (= tp!2154525 setRes!56666)))

(declare-fun setIsEmpty!56666 () Bool)

(assert (=> setIsEmpty!56666 setRes!56666))

(declare-fun setNonEmpty!56666 () Bool)

(declare-fun tp!2154543 () Bool)

(declare-fun e!4445231 () Bool)

(declare-fun setElem!56666 () Context!16808)

(assert (=> setNonEmpty!56666 (= setRes!56666 (and tp!2154543 (inv!92022 setElem!56666) e!4445231))))

(declare-fun setRest!56666 () (Set Context!16808))

(assert (=> setNonEmpty!56666 (= setRest!56660 (set.union (set.insert setElem!56666 (as set.empty (Set Context!16808))) setRest!56666))))

(declare-fun b!7445218 () Bool)

(declare-fun tp!2154542 () Bool)

(assert (=> b!7445218 (= e!4445231 tp!2154542)))

(assert (= (and setNonEmpty!56660 condSetEmpty!56666) setIsEmpty!56666))

(assert (= (and setNonEmpty!56660 (not condSetEmpty!56666)) setNonEmpty!56666))

(assert (= setNonEmpty!56666 b!7445218))

(declare-fun m!8054836 () Bool)

(assert (=> setNonEmpty!56666 m!8054836))

(declare-fun b!7445223 () Bool)

(declare-fun e!4445234 () Bool)

(declare-fun tp!2154548 () Bool)

(declare-fun tp!2154549 () Bool)

(assert (=> b!7445223 (= e!4445234 (and tp!2154548 tp!2154549))))

(assert (=> b!7445191 (= tp!2154524 e!4445234)))

(assert (= (and b!7445191 (is-Cons!72032 (exprs!8904 setElem!56660))) b!7445223))

(push 1)

(assert tp_is_empty!49187)

(assert (not b!7445223))

(assert (not b!7445208))

(assert (not b!7445213))

(assert (not setNonEmpty!56666))

(assert (not d!2296250))

(assert (not b!7445218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

