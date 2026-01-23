; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722644 () Bool)

(assert start!722644)

(declare-datatypes ((C!39160 0))(
  ( (C!39161 (val!29954 Int)) )
))
(declare-datatypes ((Regex!19443 0))(
  ( (ElementMatch!19443 (c!1376923 C!39160)) (Concat!28288 (regOne!39398 Regex!19443) (regTwo!39398 Regex!19443)) (EmptyExpr!19443) (Star!19443 (reg!19772 Regex!19443)) (EmptyLang!19443) (Union!19443 (regOne!39399 Regex!19443) (regTwo!39399 Regex!19443)) )
))
(declare-datatypes ((List!72105 0))(
  ( (Nil!71981) (Cons!71981 (h!78429 Regex!19443) (t!386668 List!72105)) )
))
(declare-datatypes ((Context!16766 0))(
  ( (Context!16767 (exprs!8883 List!72105)) )
))
(declare-fun inv!91968 (Context!16766) Bool)

(assert (=> start!722644 (not (inv!91968 (Context!16767 Nil!71981)))))

(declare-fun bs!1926054 () Bool)

(assert (= bs!1926054 start!722644))

(declare-fun m!8052414 () Bool)

(assert (=> bs!1926054 m!8052414))

(check-sat (not start!722644))
(check-sat)
(get-model)

(declare-fun d!2295085 () Bool)

(declare-fun lambda!460351 () Int)

(declare-fun forall!18224 (List!72105 Int) Bool)

(assert (=> d!2295085 (= (inv!91968 (Context!16767 Nil!71981)) (forall!18224 (exprs!8883 (Context!16767 Nil!71981)) lambda!460351))))

(declare-fun bs!1926056 () Bool)

(assert (= bs!1926056 d!2295085))

(declare-fun m!8052418 () Bool)

(assert (=> bs!1926056 m!8052418))

(assert (=> start!722644 d!2295085))

(check-sat (not d!2295085))
(check-sat)
(get-model)

(declare-fun d!2295089 () Bool)

(declare-fun res!2986198 () Bool)

(declare-fun e!4442781 () Bool)

(assert (=> d!2295089 (=> res!2986198 e!4442781)))

(get-info :version)

(assert (=> d!2295089 (= res!2986198 ((_ is Nil!71981) (exprs!8883 (Context!16767 Nil!71981))))))

(assert (=> d!2295089 (= (forall!18224 (exprs!8883 (Context!16767 Nil!71981)) lambda!460351) e!4442781)))

(declare-fun b!7440131 () Bool)

(declare-fun e!4442782 () Bool)

(assert (=> b!7440131 (= e!4442781 e!4442782)))

(declare-fun res!2986199 () Bool)

(assert (=> b!7440131 (=> (not res!2986199) (not e!4442782))))

(declare-fun dynLambda!29720 (Int Regex!19443) Bool)

(assert (=> b!7440131 (= res!2986199 (dynLambda!29720 lambda!460351 (h!78429 (exprs!8883 (Context!16767 Nil!71981)))))))

(declare-fun b!7440132 () Bool)

(assert (=> b!7440132 (= e!4442782 (forall!18224 (t!386668 (exprs!8883 (Context!16767 Nil!71981))) lambda!460351))))

(assert (= (and d!2295089 (not res!2986198)) b!7440131))

(assert (= (and b!7440131 res!2986199) b!7440132))

(declare-fun b_lambda!287431 () Bool)

(assert (=> (not b_lambda!287431) (not b!7440131)))

(declare-fun m!8052426 () Bool)

(assert (=> b!7440131 m!8052426))

(declare-fun m!8052428 () Bool)

(assert (=> b!7440132 m!8052428))

(assert (=> d!2295085 d!2295089))

(declare-fun b_lambda!287433 () Bool)

(assert (= b_lambda!287431 (or d!2295085 b_lambda!287433)))

(declare-fun bs!1926058 () Bool)

(declare-fun d!2295093 () Bool)

(assert (= bs!1926058 (and d!2295093 d!2295085)))

(declare-fun validRegex!9977 (Regex!19443) Bool)

(assert (=> bs!1926058 (= (dynLambda!29720 lambda!460351 (h!78429 (exprs!8883 (Context!16767 Nil!71981)))) (validRegex!9977 (h!78429 (exprs!8883 (Context!16767 Nil!71981)))))))

(declare-fun m!8052430 () Bool)

(assert (=> bs!1926058 m!8052430))

(assert (=> b!7440131 d!2295093))

(check-sat (not b!7440132) (not bs!1926058) (not b_lambda!287433))
(check-sat)
