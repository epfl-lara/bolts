; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712832 () Bool)

(assert start!712832)

(declare-fun b!7315056 () Bool)

(declare-fun e!4378943 () Bool)

(declare-fun tp!2076023 () Bool)

(assert (=> b!7315056 (= e!4378943 tp!2076023)))

(declare-fun b!7315057 () Bool)

(declare-fun e!4378947 () Bool)

(declare-fun e!4378946 () Bool)

(assert (=> b!7315057 (= e!4378947 e!4378946)))

(declare-fun res!2955968 () Bool)

(assert (=> b!7315057 (=> (not res!2955968) (not e!4378946))))

(declare-datatypes ((C!38076 0))(
  ( (C!38077 (val!29134 Int)) )
))
(declare-datatypes ((Regex!18901 0))(
  ( (ElementMatch!18901 (c!1357881 C!38076)) (Concat!27746 (regOne!38314 Regex!18901) (regTwo!38314 Regex!18901)) (EmptyExpr!18901) (Star!18901 (reg!19230 Regex!18901)) (EmptyLang!18901) (Union!18901 (regOne!38315 Regex!18901) (regTwo!38315 Regex!18901)) )
))
(declare-datatypes ((List!71208 0))(
  ( (Nil!71084) (Cons!71084 (h!77532 Regex!18901) (t!385440 List!71208)) )
))
(declare-datatypes ((Context!15682 0))(
  ( (Context!15683 (exprs!8341 List!71208)) )
))
(declare-fun lt!2601767 () Context!15682)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2601768 () (InoxSet Context!15682))

(declare-fun z1!542 () (InoxSet Context!15682))

(assert (=> b!7315057 (= res!2955968 (and (select lt!2601768 lt!2601767) (select z1!542 lt!2601767)))))

(declare-fun lambda!451964 () Int)

(declare-fun getWitness!2290 ((InoxSet Context!15682) Int) Context!15682)

(assert (=> b!7315057 (= lt!2601767 (getWitness!2290 lt!2601768 lambda!451964))))

(declare-fun setNonEmpty!54264 () Bool)

(declare-fun tp!2076025 () Bool)

(declare-fun setElem!54265 () Context!15682)

(declare-fun setRes!54264 () Bool)

(declare-fun inv!90373 (Context!15682) Bool)

(assert (=> setNonEmpty!54264 (= setRes!54264 (and tp!2076025 (inv!90373 setElem!54265) e!4378943))))

(declare-fun z2!461 () (InoxSet Context!15682))

(declare-fun setRest!54265 () (InoxSet Context!15682))

(assert (=> setNonEmpty!54264 (= z2!461 ((_ map or) (store ((as const (Array Context!15682 Bool)) false) setElem!54265 true) setRest!54265))))

(declare-fun e!4378944 () Bool)

(declare-fun tp!2076027 () Bool)

(declare-fun setRes!54265 () Bool)

(declare-fun setElem!54264 () Context!15682)

(declare-fun setNonEmpty!54265 () Bool)

(assert (=> setNonEmpty!54265 (= setRes!54265 (and tp!2076027 (inv!90373 setElem!54264) e!4378944))))

(declare-fun setRest!54264 () (InoxSet Context!15682))

(assert (=> setNonEmpty!54265 (= z1!542 ((_ map or) (store ((as const (Array Context!15682 Bool)) false) setElem!54264 true) setRest!54264))))

(declare-fun b!7315059 () Bool)

(declare-fun e!4378948 () Bool)

(assert (=> b!7315059 (= e!4378948 e!4378947)))

(declare-fun res!2955967 () Bool)

(assert (=> b!7315059 (=> (not res!2955967) (not e!4378947))))

(declare-fun nullableZipper!3082 ((InoxSet Context!15682)) Bool)

(assert (=> b!7315059 (= res!2955967 (nullableZipper!3082 lt!2601768))))

(assert (=> b!7315059 (= lt!2601768 ((_ map or) z1!542 z2!461))))

(declare-fun setIsEmpty!54264 () Bool)

(assert (=> setIsEmpty!54264 setRes!54264))

(declare-fun setIsEmpty!54265 () Bool)

(assert (=> setIsEmpty!54265 setRes!54265))

(declare-fun b!7315060 () Bool)

(declare-fun tp!2076026 () Bool)

(assert (=> b!7315060 (= e!4378944 tp!2076026)))

(declare-fun b!7315061 () Bool)

(assert (=> b!7315061 (= e!4378946 false)))

(declare-fun lt!2601766 () Bool)

(declare-fun nullableContext!389 (Context!15682) Bool)

(assert (=> b!7315061 (= lt!2601766 (nullableContext!389 lt!2601767))))

(declare-fun b!7315062 () Bool)

(declare-fun e!4378945 () Bool)

(declare-fun tp_is_empty!47547 () Bool)

(declare-fun tp!2076024 () Bool)

(assert (=> b!7315062 (= e!4378945 (and tp_is_empty!47547 tp!2076024))))

(declare-fun res!2955969 () Bool)

(assert (=> start!712832 (=> (not res!2955969) (not e!4378948))))

(declare-datatypes ((List!71209 0))(
  ( (Nil!71085) (Cons!71085 (h!77533 C!38076) (t!385441 List!71209)) )
))
(declare-fun s!7362 () List!71209)

(get-info :version)

(assert (=> start!712832 (= res!2955969 (not ((_ is Cons!71085) s!7362)))))

(assert (=> start!712832 e!4378948))

(assert (=> start!712832 e!4378945))

(declare-fun condSetEmpty!54265 () Bool)

(assert (=> start!712832 (= condSetEmpty!54265 (= z1!542 ((as const (Array Context!15682 Bool)) false)))))

(assert (=> start!712832 setRes!54265))

(declare-fun condSetEmpty!54264 () Bool)

(assert (=> start!712832 (= condSetEmpty!54264 (= z2!461 ((as const (Array Context!15682 Bool)) false)))))

(assert (=> start!712832 setRes!54264))

(declare-fun b!7315058 () Bool)

(declare-fun res!2955970 () Bool)

(assert (=> b!7315058 (=> (not res!2955970) (not e!4378947))))

(declare-fun exists!4537 ((InoxSet Context!15682) Int) Bool)

(assert (=> b!7315058 (= res!2955970 (exists!4537 lt!2601768 lambda!451964))))

(assert (= (and start!712832 res!2955969) b!7315059))

(assert (= (and b!7315059 res!2955967) b!7315058))

(assert (= (and b!7315058 res!2955970) b!7315057))

(assert (= (and b!7315057 res!2955968) b!7315061))

(assert (= (and start!712832 ((_ is Cons!71085) s!7362)) b!7315062))

(assert (= (and start!712832 condSetEmpty!54265) setIsEmpty!54265))

(assert (= (and start!712832 (not condSetEmpty!54265)) setNonEmpty!54265))

(assert (= setNonEmpty!54265 b!7315060))

(assert (= (and start!712832 condSetEmpty!54264) setIsEmpty!54264))

(assert (= (and start!712832 (not condSetEmpty!54264)) setNonEmpty!54264))

(assert (= setNonEmpty!54264 b!7315056))

(declare-fun m!7979090 () Bool)

(assert (=> b!7315061 m!7979090))

(declare-fun m!7979092 () Bool)

(assert (=> setNonEmpty!54264 m!7979092))

(declare-fun m!7979094 () Bool)

(assert (=> b!7315058 m!7979094))

(declare-fun m!7979096 () Bool)

(assert (=> b!7315059 m!7979096))

(declare-fun m!7979098 () Bool)

(assert (=> b!7315057 m!7979098))

(declare-fun m!7979100 () Bool)

(assert (=> b!7315057 m!7979100))

(declare-fun m!7979102 () Bool)

(assert (=> b!7315057 m!7979102))

(declare-fun m!7979104 () Bool)

(assert (=> setNonEmpty!54265 m!7979104))

(check-sat (not b!7315061) (not b!7315058) (not setNonEmpty!54264) (not b!7315059) (not b!7315060) (not b!7315057) (not setNonEmpty!54265) (not b!7315056) (not b!7315062) tp_is_empty!47547)
(check-sat)
