; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712826 () Bool)

(assert start!712826)

(declare-fun b!7314997 () Bool)

(declare-fun res!2955937 () Bool)

(declare-fun e!4378893 () Bool)

(assert (=> b!7314997 (=> (not res!2955937) (not e!4378893))))

(declare-datatypes ((C!38070 0))(
  ( (C!38071 (val!29131 Int)) )
))
(declare-datatypes ((Regex!18898 0))(
  ( (ElementMatch!18898 (c!1357866 C!38070)) (Concat!27743 (regOne!38308 Regex!18898) (regTwo!38308 Regex!18898)) (EmptyExpr!18898) (Star!18898 (reg!19227 Regex!18898)) (EmptyLang!18898) (Union!18898 (regOne!38309 Regex!18898) (regTwo!38309 Regex!18898)) )
))
(declare-datatypes ((List!71202 0))(
  ( (Nil!71078) (Cons!71078 (h!77526 Regex!18898) (t!385434 List!71202)) )
))
(declare-datatypes ((Context!15676 0))(
  ( (Context!15677 (exprs!8338 List!71202)) )
))
(declare-fun lt!2601747 () (Set Context!15676))

(declare-fun lambda!451949 () Int)

(declare-fun exists!4534 ((Set Context!15676) Int) Bool)

(assert (=> b!7314997 (= res!2955937 (exists!4534 lt!2601747 lambda!451949))))

(declare-fun setNonEmpty!54246 () Bool)

(declare-fun setRes!54247 () Bool)

(declare-fun e!4378895 () Bool)

(declare-fun tp!2075981 () Bool)

(declare-fun setElem!54246 () Context!15676)

(declare-fun inv!90367 (Context!15676) Bool)

(assert (=> setNonEmpty!54246 (= setRes!54247 (and tp!2075981 (inv!90367 setElem!54246) e!4378895))))

(declare-fun z1!542 () (Set Context!15676))

(declare-fun setRest!54247 () (Set Context!15676))

(assert (=> setNonEmpty!54246 (= z1!542 (set.union (set.insert setElem!54246 (as set.empty (Set Context!15676))) setRest!54247))))

(declare-fun res!2955935 () Bool)

(declare-fun e!4378896 () Bool)

(assert (=> start!712826 (=> (not res!2955935) (not e!4378896))))

(declare-datatypes ((List!71203 0))(
  ( (Nil!71079) (Cons!71079 (h!77527 C!38070) (t!385435 List!71203)) )
))
(declare-fun s!7362 () List!71203)

(assert (=> start!712826 (= res!2955935 (not (is-Cons!71079 s!7362)))))

(assert (=> start!712826 e!4378896))

(declare-fun e!4378894 () Bool)

(assert (=> start!712826 e!4378894))

(declare-fun condSetEmpty!54246 () Bool)

(assert (=> start!712826 (= condSetEmpty!54246 (= z1!542 (as set.empty (Set Context!15676))))))

(assert (=> start!712826 setRes!54247))

(declare-fun condSetEmpty!54247 () Bool)

(declare-fun z2!461 () (Set Context!15676))

(assert (=> start!712826 (= condSetEmpty!54247 (= z2!461 (as set.empty (Set Context!15676))))))

(declare-fun setRes!54246 () Bool)

(assert (=> start!712826 setRes!54246))

(declare-fun tp!2075979 () Bool)

(declare-fun setNonEmpty!54247 () Bool)

(declare-fun setElem!54247 () Context!15676)

(declare-fun e!4378897 () Bool)

(assert (=> setNonEmpty!54247 (= setRes!54246 (and tp!2075979 (inv!90367 setElem!54247) e!4378897))))

(declare-fun setRest!54246 () (Set Context!15676))

(assert (=> setNonEmpty!54247 (= z2!461 (set.union (set.insert setElem!54247 (as set.empty (Set Context!15676))) setRest!54246))))

(declare-fun b!7314998 () Bool)

(assert (=> b!7314998 (= e!4378893 (not (exists!4534 lt!2601747 lambda!451949)))))

(declare-fun b!7314999 () Bool)

(assert (=> b!7314999 (= e!4378896 e!4378893)))

(declare-fun res!2955936 () Bool)

(assert (=> b!7314999 (=> (not res!2955936) (not e!4378893))))

(declare-fun nullableZipper!3079 ((Set Context!15676)) Bool)

(assert (=> b!7314999 (= res!2955936 (nullableZipper!3079 lt!2601747))))

(assert (=> b!7314999 (= lt!2601747 (set.union z1!542 z2!461))))

(declare-fun b!7315000 () Bool)

(declare-fun tp!2075980 () Bool)

(assert (=> b!7315000 (= e!4378895 tp!2075980)))

(declare-fun setIsEmpty!54246 () Bool)

(assert (=> setIsEmpty!54246 setRes!54247))

(declare-fun b!7315001 () Bool)

(declare-fun tp_is_empty!47541 () Bool)

(declare-fun tp!2075982 () Bool)

(assert (=> b!7315001 (= e!4378894 (and tp_is_empty!47541 tp!2075982))))

(declare-fun setIsEmpty!54247 () Bool)

(assert (=> setIsEmpty!54247 setRes!54246))

(declare-fun b!7315002 () Bool)

(declare-fun tp!2075978 () Bool)

(assert (=> b!7315002 (= e!4378897 tp!2075978)))

(assert (= (and start!712826 res!2955935) b!7314999))

(assert (= (and b!7314999 res!2955936) b!7314997))

(assert (= (and b!7314997 res!2955937) b!7314998))

(assert (= (and start!712826 (is-Cons!71079 s!7362)) b!7315001))

(assert (= (and start!712826 condSetEmpty!54246) setIsEmpty!54246))

(assert (= (and start!712826 (not condSetEmpty!54246)) setNonEmpty!54246))

(assert (= setNonEmpty!54246 b!7315000))

(assert (= (and start!712826 condSetEmpty!54247) setIsEmpty!54247))

(assert (= (and start!712826 (not condSetEmpty!54247)) setNonEmpty!54247))

(assert (= setNonEmpty!54247 b!7315002))

(declare-fun m!7979058 () Bool)

(assert (=> b!7314998 m!7979058))

(declare-fun m!7979060 () Bool)

(assert (=> b!7314999 m!7979060))

(assert (=> b!7314997 m!7979058))

(declare-fun m!7979062 () Bool)

(assert (=> setNonEmpty!54246 m!7979062))

(declare-fun m!7979064 () Bool)

(assert (=> setNonEmpty!54247 m!7979064))

(push 1)

(assert (not setNonEmpty!54246))

(assert (not b!7314999))

(assert (not b!7314998))

(assert tp_is_empty!47541)

(assert (not b!7315000))

(assert (not b!7315002))

(assert (not b!7315001))

(assert (not setNonEmpty!54247))

(assert (not b!7314997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

