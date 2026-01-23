; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712886 () Bool)

(assert start!712886)

(declare-fun setIsEmpty!54346 () Bool)

(declare-fun setRes!54347 () Bool)

(assert (=> setIsEmpty!54346 setRes!54347))

(declare-fun b!7315405 () Bool)

(declare-fun e!4379216 () Bool)

(declare-fun tp!2076265 () Bool)

(assert (=> b!7315405 (= e!4379216 tp!2076265)))

(declare-datatypes ((C!38098 0))(
  ( (C!38099 (val!29145 Int)) )
))
(declare-datatypes ((Regex!18912 0))(
  ( (ElementMatch!18912 (c!1357970 C!38098)) (Concat!27757 (regOne!38336 Regex!18912) (regTwo!38336 Regex!18912)) (EmptyExpr!18912) (Star!18912 (reg!19241 Regex!18912)) (EmptyLang!18912) (Union!18912 (regOne!38337 Regex!18912) (regTwo!38337 Regex!18912)) )
))
(declare-datatypes ((List!71234 0))(
  ( (Nil!71110) (Cons!71110 (h!77558 Regex!18912) (t!385466 List!71234)) )
))
(declare-datatypes ((Context!15704 0))(
  ( (Context!15705 (exprs!8352 List!71234)) )
))
(declare-fun setElem!54347 () Context!15704)

(declare-fun tp!2076264 () Bool)

(declare-fun setNonEmpty!54346 () Bool)

(declare-fun inv!90402 (Context!15704) Bool)

(assert (=> setNonEmpty!54346 (= setRes!54347 (and tp!2076264 (inv!90402 setElem!54347) e!4379216))))

(declare-fun z2!461 () (Set Context!15704))

(declare-fun setRest!54346 () (Set Context!15704))

(assert (=> setNonEmpty!54346 (= z2!461 (set.union (set.insert setElem!54347 (as set.empty (Set Context!15704))) setRest!54346))))

(declare-fun b!7315406 () Bool)

(declare-fun e!4379219 () Bool)

(declare-fun tp!2076268 () Bool)

(assert (=> b!7315406 (= e!4379219 tp!2076268)))

(declare-fun setIsEmpty!54347 () Bool)

(declare-fun setRes!54346 () Bool)

(assert (=> setIsEmpty!54347 setRes!54346))

(declare-fun setElem!54346 () Context!15704)

(declare-fun setNonEmpty!54347 () Bool)

(declare-fun tp!2076266 () Bool)

(assert (=> setNonEmpty!54347 (= setRes!54346 (and tp!2076266 (inv!90402 setElem!54346) e!4379219))))

(declare-fun z1!542 () (Set Context!15704))

(declare-fun setRest!54347 () (Set Context!15704))

(assert (=> setNonEmpty!54347 (= z1!542 (set.union (set.insert setElem!54346 (as set.empty (Set Context!15704))) setRest!54347))))

(declare-fun res!2956126 () Bool)

(declare-fun e!4379217 () Bool)

(assert (=> start!712886 (=> (not res!2956126) (not e!4379217))))

(declare-datatypes ((List!71235 0))(
  ( (Nil!71111) (Cons!71111 (h!77559 C!38098) (t!385467 List!71235)) )
))
(declare-fun s!7362 () List!71235)

(assert (=> start!712886 (= res!2956126 (not (is-Cons!71111 s!7362)))))

(assert (=> start!712886 e!4379217))

(declare-fun e!4379215 () Bool)

(assert (=> start!712886 e!4379215))

(declare-fun condSetEmpty!54346 () Bool)

(assert (=> start!712886 (= condSetEmpty!54346 (= z1!542 (as set.empty (Set Context!15704))))))

(assert (=> start!712886 setRes!54346))

(declare-fun condSetEmpty!54347 () Bool)

(assert (=> start!712886 (= condSetEmpty!54347 (= z2!461 (as set.empty (Set Context!15704))))))

(assert (=> start!712886 setRes!54347))

(declare-fun b!7315407 () Bool)

(declare-fun e!4379218 () Bool)

(declare-fun lt!2601889 () (Set Context!15704))

(declare-fun lambda!452067 () Int)

(declare-fun exists!4552 ((Set Context!15704) Int) Bool)

(assert (=> b!7315407 (= e!4379218 (not (exists!4552 lt!2601889 lambda!452067)))))

(declare-fun b!7315408 () Bool)

(assert (=> b!7315408 (= e!4379217 e!4379218)))

(declare-fun res!2956125 () Bool)

(assert (=> b!7315408 (=> (not res!2956125) (not e!4379218))))

(declare-fun nullableZipper!3093 ((Set Context!15704)) Bool)

(assert (=> b!7315408 (= res!2956125 (nullableZipper!3093 lt!2601889))))

(assert (=> b!7315408 (= lt!2601889 (set.union z1!542 z2!461))))

(declare-fun b!7315409 () Bool)

(declare-fun tp_is_empty!47569 () Bool)

(declare-fun tp!2076267 () Bool)

(assert (=> b!7315409 (= e!4379215 (and tp_is_empty!47569 tp!2076267))))

(assert (= (and start!712886 res!2956126) b!7315408))

(assert (= (and b!7315408 res!2956125) b!7315407))

(assert (= (and start!712886 (is-Cons!71111 s!7362)) b!7315409))

(assert (= (and start!712886 condSetEmpty!54346) setIsEmpty!54347))

(assert (= (and start!712886 (not condSetEmpty!54346)) setNonEmpty!54347))

(assert (= setNonEmpty!54347 b!7315406))

(assert (= (and start!712886 condSetEmpty!54347) setIsEmpty!54346))

(assert (= (and start!712886 (not condSetEmpty!54347)) setNonEmpty!54346))

(assert (= setNonEmpty!54346 b!7315405))

(declare-fun m!7979410 () Bool)

(assert (=> setNonEmpty!54346 m!7979410))

(declare-fun m!7979412 () Bool)

(assert (=> setNonEmpty!54347 m!7979412))

(declare-fun m!7979414 () Bool)

(assert (=> b!7315407 m!7979414))

(declare-fun m!7979416 () Bool)

(assert (=> b!7315408 m!7979416))

(push 1)

(assert (not b!7315409))

(assert (not b!7315406))

(assert (not b!7315405))

(assert (not b!7315408))

(assert tp_is_empty!47569)

(assert (not setNonEmpty!54347))

(assert (not setNonEmpty!54346))

(assert (not b!7315407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271266 () Bool)

(declare-fun lt!2601895 () Bool)

(declare-datatypes ((List!71238 0))(
  ( (Nil!71114) (Cons!71114 (h!77562 Context!15704) (t!385470 List!71238)) )
))
(declare-fun exists!4554 (List!71238 Int) Bool)

(declare-fun toList!11615 ((Set Context!15704)) List!71238)

(assert (=> d!2271266 (= lt!2601895 (exists!4554 (toList!11615 lt!2601889) lambda!452067))))

(declare-fun choose!56723 ((Set Context!15704) Int) Bool)

(assert (=> d!2271266 (= lt!2601895 (choose!56723 lt!2601889 lambda!452067))))

(assert (=> d!2271266 (= (exists!4552 lt!2601889 lambda!452067) lt!2601895)))

(declare-fun bs!1914780 () Bool)

(assert (= bs!1914780 d!2271266))

(declare-fun m!7979426 () Bool)

(assert (=> bs!1914780 m!7979426))

(assert (=> bs!1914780 m!7979426))

(declare-fun m!7979428 () Bool)

(assert (=> bs!1914780 m!7979428))

(declare-fun m!7979430 () Bool)

(assert (=> bs!1914780 m!7979430))

(assert (=> b!7315407 d!2271266))

(declare-fun bs!1914781 () Bool)

(declare-fun d!2271268 () Bool)

(assert (= bs!1914781 (and d!2271268 b!7315407)))

(declare-fun lambda!452073 () Int)

(assert (=> bs!1914781 (= lambda!452073 lambda!452067)))

(assert (=> d!2271268 (= (nullableZipper!3093 lt!2601889) (exists!4552 lt!2601889 lambda!452073))))

(declare-fun bs!1914782 () Bool)

(assert (= bs!1914782 d!2271268))

(declare-fun m!7979432 () Bool)

(assert (=> bs!1914782 m!7979432))

(assert (=> b!7315408 d!2271268))

(declare-fun d!2271270 () Bool)

(declare-fun lambda!452076 () Int)

(declare-fun forall!17761 (List!71234 Int) Bool)

(assert (=> d!2271270 (= (inv!90402 setElem!54347) (forall!17761 (exprs!8352 setElem!54347) lambda!452076))))

(declare-fun bs!1914783 () Bool)

(assert (= bs!1914783 d!2271270))

(declare-fun m!7979434 () Bool)

(assert (=> bs!1914783 m!7979434))

(assert (=> setNonEmpty!54346 d!2271270))

(declare-fun bs!1914784 () Bool)

(declare-fun d!2271274 () Bool)

(assert (= bs!1914784 (and d!2271274 d!2271270)))

(declare-fun lambda!452077 () Int)

(assert (=> bs!1914784 (= lambda!452077 lambda!452076)))

(assert (=> d!2271274 (= (inv!90402 setElem!54346) (forall!17761 (exprs!8352 setElem!54346) lambda!452077))))

(declare-fun bs!1914785 () Bool)

(assert (= bs!1914785 d!2271274))

(declare-fun m!7979436 () Bool)

(assert (=> bs!1914785 m!7979436))

(assert (=> setNonEmpty!54347 d!2271274))

(declare-fun b!7315429 () Bool)

(declare-fun e!4379237 () Bool)

(declare-fun tp!2076288 () Bool)

(declare-fun tp!2076289 () Bool)

(assert (=> b!7315429 (= e!4379237 (and tp!2076288 tp!2076289))))

(assert (=> b!7315405 (= tp!2076265 e!4379237)))

(assert (= (and b!7315405 (is-Cons!71110 (exprs!8352 setElem!54347))) b!7315429))

(declare-fun condSetEmpty!54356 () Bool)

(assert (=> setNonEmpty!54346 (= condSetEmpty!54356 (= setRest!54346 (as set.empty (Set Context!15704))))))

(declare-fun setRes!54356 () Bool)

(assert (=> setNonEmpty!54346 (= tp!2076264 setRes!54356)))

(declare-fun setIsEmpty!54356 () Bool)

(assert (=> setIsEmpty!54356 setRes!54356))

(declare-fun setNonEmpty!54356 () Bool)

(declare-fun tp!2076295 () Bool)

(declare-fun e!4379240 () Bool)

(declare-fun setElem!54356 () Context!15704)

(assert (=> setNonEmpty!54356 (= setRes!54356 (and tp!2076295 (inv!90402 setElem!54356) e!4379240))))

(declare-fun setRest!54356 () (Set Context!15704))

(assert (=> setNonEmpty!54356 (= setRest!54346 (set.union (set.insert setElem!54356 (as set.empty (Set Context!15704))) setRest!54356))))

(declare-fun b!7315434 () Bool)

(declare-fun tp!2076294 () Bool)

(assert (=> b!7315434 (= e!4379240 tp!2076294)))

(assert (= (and setNonEmpty!54346 condSetEmpty!54356) setIsEmpty!54356))

(assert (= (and setNonEmpty!54346 (not condSetEmpty!54356)) setNonEmpty!54356))

(assert (= setNonEmpty!54356 b!7315434))

(declare-fun m!7979438 () Bool)

(assert (=> setNonEmpty!54356 m!7979438))

(declare-fun b!7315439 () Bool)

(declare-fun e!4379243 () Bool)

(declare-fun tp!2076298 () Bool)

(assert (=> b!7315439 (= e!4379243 (and tp_is_empty!47569 tp!2076298))))

(assert (=> b!7315409 (= tp!2076267 e!4379243)))

(assert (= (and b!7315409 (is-Cons!71111 (t!385467 s!7362))) b!7315439))

(declare-fun b!7315440 () Bool)

(declare-fun e!4379244 () Bool)

(declare-fun tp!2076299 () Bool)

(declare-fun tp!2076300 () Bool)

(assert (=> b!7315440 (= e!4379244 (and tp!2076299 tp!2076300))))

(assert (=> b!7315406 (= tp!2076268 e!4379244)))

(assert (= (and b!7315406 (is-Cons!71110 (exprs!8352 setElem!54346))) b!7315440))

(declare-fun condSetEmpty!54357 () Bool)

(assert (=> setNonEmpty!54347 (= condSetEmpty!54357 (= setRest!54347 (as set.empty (Set Context!15704))))))

(declare-fun setRes!54357 () Bool)

(assert (=> setNonEmpty!54347 (= tp!2076266 setRes!54357)))

(declare-fun setIsEmpty!54357 () Bool)

(assert (=> setIsEmpty!54357 setRes!54357))

(declare-fun e!4379245 () Bool)

(declare-fun setElem!54357 () Context!15704)

(declare-fun setNonEmpty!54357 () Bool)

(declare-fun tp!2076302 () Bool)

(assert (=> setNonEmpty!54357 (= setRes!54357 (and tp!2076302 (inv!90402 setElem!54357) e!4379245))))

(declare-fun setRest!54357 () (Set Context!15704))

(assert (=> setNonEmpty!54357 (= setRest!54347 (set.union (set.insert setElem!54357 (as set.empty (Set Context!15704))) setRest!54357))))

(declare-fun b!7315441 () Bool)

(declare-fun tp!2076301 () Bool)

(assert (=> b!7315441 (= e!4379245 tp!2076301)))

(assert (= (and setNonEmpty!54347 condSetEmpty!54357) setIsEmpty!54357))

(assert (= (and setNonEmpty!54347 (not condSetEmpty!54357)) setNonEmpty!54357))

(assert (= setNonEmpty!54357 b!7315441))

(declare-fun m!7979440 () Bool)

(assert (=> setNonEmpty!54357 m!7979440))

(push 1)

(assert (not b!7315439))

(assert (not d!2271266))

(assert (not b!7315440))

(assert (not b!7315434))

(assert (not d!2271268))

(assert (not d!2271270))

(assert (not setNonEmpty!54356))

(assert tp_is_empty!47569)

(assert (not d!2271274))

(assert (not b!7315441))

(assert (not setNonEmpty!54357))

(assert (not b!7315429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

