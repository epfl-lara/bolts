; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700378 () Bool)

(assert start!700378)

(declare-fun setIsEmpty!53466 () Bool)

(declare-fun setRes!53466 () Bool)

(assert (=> setIsEmpty!53466 setRes!53466))

(declare-fun b!7203365 () Bool)

(declare-fun e!4324113 () Bool)

(declare-fun tp!2007474 () Bool)

(assert (=> b!7203365 (= e!4324113 tp!2007474)))

(declare-fun b!7203366 () Bool)

(declare-fun res!2930359 () Bool)

(declare-fun e!4324112 () Bool)

(assert (=> b!7203366 (=> (not res!2930359) (not e!4324112))))

(declare-datatypes ((C!37064 0))(
  ( (C!37065 (val!28480 Int)) )
))
(declare-datatypes ((Regex!18395 0))(
  ( (ElementMatch!18395 (c!1339821 C!37064)) (Concat!27240 (regOne!37302 Regex!18395) (regTwo!37302 Regex!18395)) (EmptyExpr!18395) (Star!18395 (reg!18724 Regex!18395)) (EmptyLang!18395) (Union!18395 (regOne!37303 Regex!18395) (regTwo!37303 Regex!18395)) )
))
(declare-datatypes ((List!69904 0))(
  ( (Nil!69780) (Cons!69780 (h!76228 Regex!18395) (t!383933 List!69904)) )
))
(declare-datatypes ((Context!14694 0))(
  ( (Context!14695 (exprs!7847 List!69904)) )
))
(declare-fun c!10544 () Context!14694)

(declare-fun isEmpty!40285 (List!69904) Bool)

(assert (=> b!7203366 (= res!2930359 (not (isEmpty!40285 (exprs!7847 c!10544))))))

(declare-fun b!7203367 () Bool)

(declare-fun e!4324115 () Bool)

(declare-fun tp!2007472 () Bool)

(assert (=> b!7203367 (= e!4324115 tp!2007472)))

(declare-fun b!7203368 () Bool)

(declare-fun res!2930360 () Bool)

(assert (=> b!7203368 (=> (not res!2930360) (not e!4324112))))

(declare-fun head!14759 (List!69904) Regex!18395)

(assert (=> b!7203368 (= res!2930360 (= (head!14759 (exprs!7847 c!10544)) EmptyLang!18395))))

(declare-fun b!7203369 () Bool)

(declare-fun nullableContext!210 (Context!14694) Bool)

(assert (=> b!7203369 (= e!4324112 (nullableContext!210 c!10544))))

(declare-fun res!2930361 () Bool)

(assert (=> start!700378 (=> (not res!2930361) (not e!4324112))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3517 () (InoxSet Context!14694))

(assert (=> start!700378 (= res!2930361 (= z!3517 (store ((as const (Array Context!14694 Bool)) false) c!10544 true)))))

(assert (=> start!700378 e!4324112))

(declare-fun condSetEmpty!53466 () Bool)

(assert (=> start!700378 (= condSetEmpty!53466 (= z!3517 ((as const (Array Context!14694 Bool)) false)))))

(assert (=> start!700378 setRes!53466))

(declare-fun inv!89009 (Context!14694) Bool)

(assert (=> start!700378 (and (inv!89009 c!10544) e!4324115)))

(declare-fun e!4324114 () Bool)

(assert (=> start!700378 e!4324114))

(declare-fun b!7203370 () Bool)

(declare-fun tp_is_empty!46347 () Bool)

(declare-fun tp!2007473 () Bool)

(assert (=> b!7203370 (= e!4324114 (and tp_is_empty!46347 tp!2007473))))

(declare-fun b!7203371 () Bool)

(declare-fun res!2930362 () Bool)

(assert (=> b!7203371 (=> (not res!2930362) (not e!4324112))))

(declare-datatypes ((List!69905 0))(
  ( (Nil!69781) (Cons!69781 (h!76229 C!37064) (t!383934 List!69905)) )
))
(declare-fun s!7961 () List!69905)

(declare-fun isEmpty!40286 (List!69905) Bool)

(assert (=> b!7203371 (= res!2930362 (isEmpty!40286 s!7961))))

(declare-fun setElem!53466 () Context!14694)

(declare-fun setNonEmpty!53466 () Bool)

(declare-fun tp!2007471 () Bool)

(assert (=> setNonEmpty!53466 (= setRes!53466 (and tp!2007471 (inv!89009 setElem!53466) e!4324113))))

(declare-fun setRest!53466 () (InoxSet Context!14694))

(assert (=> setNonEmpty!53466 (= z!3517 ((_ map or) (store ((as const (Array Context!14694 Bool)) false) setElem!53466 true) setRest!53466))))

(assert (= (and start!700378 res!2930361) b!7203366))

(assert (= (and b!7203366 res!2930359) b!7203368))

(assert (= (and b!7203368 res!2930360) b!7203371))

(assert (= (and b!7203371 res!2930362) b!7203369))

(assert (= (and start!700378 condSetEmpty!53466) setIsEmpty!53466))

(assert (= (and start!700378 (not condSetEmpty!53466)) setNonEmpty!53466))

(assert (= setNonEmpty!53466 b!7203365))

(assert (= start!700378 b!7203367))

(get-info :version)

(assert (= (and start!700378 ((_ is Cons!69781) s!7961)) b!7203370))

(declare-fun m!7892102 () Bool)

(assert (=> setNonEmpty!53466 m!7892102))

(declare-fun m!7892104 () Bool)

(assert (=> start!700378 m!7892104))

(declare-fun m!7892106 () Bool)

(assert (=> start!700378 m!7892106))

(declare-fun m!7892108 () Bool)

(assert (=> b!7203371 m!7892108))

(declare-fun m!7892110 () Bool)

(assert (=> b!7203369 m!7892110))

(declare-fun m!7892112 () Bool)

(assert (=> b!7203366 m!7892112))

(declare-fun m!7892114 () Bool)

(assert (=> b!7203368 m!7892114))

(check-sat (not b!7203366) (not b!7203365) (not b!7203367) tp_is_empty!46347 (not start!700378) (not setNonEmpty!53466) (not b!7203368) (not b!7203370) (not b!7203371) (not b!7203369))
(check-sat)
(get-model)

(declare-fun d!2242652 () Bool)

(assert (=> d!2242652 (= (isEmpty!40286 s!7961) ((_ is Nil!69781) s!7961))))

(assert (=> b!7203371 d!2242652))

(declare-fun d!2242654 () Bool)

(declare-fun lambda!438224 () Int)

(declare-fun forall!17215 (List!69904 Int) Bool)

(assert (=> d!2242654 (= (nullableContext!210 c!10544) (forall!17215 (exprs!7847 c!10544) lambda!438224))))

(declare-fun bs!1901099 () Bool)

(assert (= bs!1901099 d!2242654))

(declare-fun m!7892124 () Bool)

(assert (=> bs!1901099 m!7892124))

(assert (=> b!7203369 d!2242654))

(declare-fun bs!1901100 () Bool)

(declare-fun d!2242668 () Bool)

(assert (= bs!1901100 (and d!2242668 d!2242654)))

(declare-fun lambda!438227 () Int)

(assert (=> bs!1901100 (not (= lambda!438227 lambda!438224))))

(assert (=> d!2242668 (= (inv!89009 c!10544) (forall!17215 (exprs!7847 c!10544) lambda!438227))))

(declare-fun bs!1901101 () Bool)

(assert (= bs!1901101 d!2242668))

(declare-fun m!7892126 () Bool)

(assert (=> bs!1901101 m!7892126))

(assert (=> start!700378 d!2242668))

(declare-fun d!2242670 () Bool)

(assert (=> d!2242670 (= (head!14759 (exprs!7847 c!10544)) (h!76228 (exprs!7847 c!10544)))))

(assert (=> b!7203368 d!2242670))

(declare-fun d!2242672 () Bool)

(assert (=> d!2242672 (= (isEmpty!40285 (exprs!7847 c!10544)) ((_ is Nil!69780) (exprs!7847 c!10544)))))

(assert (=> b!7203366 d!2242672))

(declare-fun bs!1901102 () Bool)

(declare-fun d!2242674 () Bool)

(assert (= bs!1901102 (and d!2242674 d!2242654)))

(declare-fun lambda!438228 () Int)

(assert (=> bs!1901102 (not (= lambda!438228 lambda!438224))))

(declare-fun bs!1901103 () Bool)

(assert (= bs!1901103 (and d!2242674 d!2242668)))

(assert (=> bs!1901103 (= lambda!438228 lambda!438227)))

(assert (=> d!2242674 (= (inv!89009 setElem!53466) (forall!17215 (exprs!7847 setElem!53466) lambda!438228))))

(declare-fun bs!1901104 () Bool)

(assert (= bs!1901104 d!2242674))

(declare-fun m!7892128 () Bool)

(assert (=> bs!1901104 m!7892128))

(assert (=> setNonEmpty!53466 d!2242674))

(declare-fun b!7203392 () Bool)

(declare-fun e!4324128 () Bool)

(declare-fun tp!2007496 () Bool)

(declare-fun tp!2007497 () Bool)

(assert (=> b!7203392 (= e!4324128 (and tp!2007496 tp!2007497))))

(assert (=> b!7203365 (= tp!2007474 e!4324128)))

(assert (= (and b!7203365 ((_ is Cons!69780) (exprs!7847 setElem!53466))) b!7203392))

(declare-fun b!7203397 () Bool)

(declare-fun e!4324131 () Bool)

(declare-fun tp!2007500 () Bool)

(assert (=> b!7203397 (= e!4324131 (and tp_is_empty!46347 tp!2007500))))

(assert (=> b!7203370 (= tp!2007473 e!4324131)))

(assert (= (and b!7203370 ((_ is Cons!69781) (t!383934 s!7961))) b!7203397))

(declare-fun b!7203398 () Bool)

(declare-fun e!4324132 () Bool)

(declare-fun tp!2007501 () Bool)

(declare-fun tp!2007502 () Bool)

(assert (=> b!7203398 (= e!4324132 (and tp!2007501 tp!2007502))))

(assert (=> b!7203367 (= tp!2007472 e!4324132)))

(assert (= (and b!7203367 ((_ is Cons!69780) (exprs!7847 c!10544))) b!7203398))

(declare-fun condSetEmpty!53472 () Bool)

(assert (=> setNonEmpty!53466 (= condSetEmpty!53472 (= setRest!53466 ((as const (Array Context!14694 Bool)) false)))))

(declare-fun setRes!53472 () Bool)

(assert (=> setNonEmpty!53466 (= tp!2007471 setRes!53472)))

(declare-fun setIsEmpty!53472 () Bool)

(assert (=> setIsEmpty!53472 setRes!53472))

(declare-fun setElem!53472 () Context!14694)

(declare-fun tp!2007508 () Bool)

(declare-fun e!4324135 () Bool)

(declare-fun setNonEmpty!53472 () Bool)

(assert (=> setNonEmpty!53472 (= setRes!53472 (and tp!2007508 (inv!89009 setElem!53472) e!4324135))))

(declare-fun setRest!53472 () (InoxSet Context!14694))

(assert (=> setNonEmpty!53472 (= setRest!53466 ((_ map or) (store ((as const (Array Context!14694 Bool)) false) setElem!53472 true) setRest!53472))))

(declare-fun b!7203403 () Bool)

(declare-fun tp!2007507 () Bool)

(assert (=> b!7203403 (= e!4324135 tp!2007507)))

(assert (= (and setNonEmpty!53466 condSetEmpty!53472) setIsEmpty!53472))

(assert (= (and setNonEmpty!53466 (not condSetEmpty!53472)) setNonEmpty!53472))

(assert (= setNonEmpty!53472 b!7203403))

(declare-fun m!7892130 () Bool)

(assert (=> setNonEmpty!53472 m!7892130))

(check-sat (not setNonEmpty!53472) (not b!7203403) (not d!2242674) (not d!2242654) tp_is_empty!46347 (not b!7203397) (not d!2242668) (not b!7203392) (not b!7203398))
(check-sat)
(get-model)

(declare-fun d!2242676 () Bool)

(declare-fun res!2930367 () Bool)

(declare-fun e!4324140 () Bool)

(assert (=> d!2242676 (=> res!2930367 e!4324140)))

(assert (=> d!2242676 (= res!2930367 ((_ is Nil!69780) (exprs!7847 setElem!53466)))))

(assert (=> d!2242676 (= (forall!17215 (exprs!7847 setElem!53466) lambda!438228) e!4324140)))

(declare-fun b!7203408 () Bool)

(declare-fun e!4324141 () Bool)

(assert (=> b!7203408 (= e!4324140 e!4324141)))

(declare-fun res!2930368 () Bool)

(assert (=> b!7203408 (=> (not res!2930368) (not e!4324141))))

(declare-fun dynLambda!28412 (Int Regex!18395) Bool)

(assert (=> b!7203408 (= res!2930368 (dynLambda!28412 lambda!438228 (h!76228 (exprs!7847 setElem!53466))))))

(declare-fun b!7203409 () Bool)

(assert (=> b!7203409 (= e!4324141 (forall!17215 (t!383933 (exprs!7847 setElem!53466)) lambda!438228))))

(assert (= (and d!2242676 (not res!2930367)) b!7203408))

(assert (= (and b!7203408 res!2930368) b!7203409))

(declare-fun b_lambda!276167 () Bool)

(assert (=> (not b_lambda!276167) (not b!7203408)))

(declare-fun m!7892132 () Bool)

(assert (=> b!7203408 m!7892132))

(declare-fun m!7892134 () Bool)

(assert (=> b!7203409 m!7892134))

(assert (=> d!2242674 d!2242676))

(declare-fun d!2242678 () Bool)

(declare-fun res!2930369 () Bool)

(declare-fun e!4324142 () Bool)

(assert (=> d!2242678 (=> res!2930369 e!4324142)))

(assert (=> d!2242678 (= res!2930369 ((_ is Nil!69780) (exprs!7847 c!10544)))))

(assert (=> d!2242678 (= (forall!17215 (exprs!7847 c!10544) lambda!438224) e!4324142)))

(declare-fun b!7203410 () Bool)

(declare-fun e!4324143 () Bool)

(assert (=> b!7203410 (= e!4324142 e!4324143)))

(declare-fun res!2930370 () Bool)

(assert (=> b!7203410 (=> (not res!2930370) (not e!4324143))))

(assert (=> b!7203410 (= res!2930370 (dynLambda!28412 lambda!438224 (h!76228 (exprs!7847 c!10544))))))

(declare-fun b!7203411 () Bool)

(assert (=> b!7203411 (= e!4324143 (forall!17215 (t!383933 (exprs!7847 c!10544)) lambda!438224))))

(assert (= (and d!2242678 (not res!2930369)) b!7203410))

(assert (= (and b!7203410 res!2930370) b!7203411))

(declare-fun b_lambda!276169 () Bool)

(assert (=> (not b_lambda!276169) (not b!7203410)))

(declare-fun m!7892136 () Bool)

(assert (=> b!7203410 m!7892136))

(declare-fun m!7892138 () Bool)

(assert (=> b!7203411 m!7892138))

(assert (=> d!2242654 d!2242678))

(declare-fun d!2242680 () Bool)

(declare-fun res!2930371 () Bool)

(declare-fun e!4324144 () Bool)

(assert (=> d!2242680 (=> res!2930371 e!4324144)))

(assert (=> d!2242680 (= res!2930371 ((_ is Nil!69780) (exprs!7847 c!10544)))))

(assert (=> d!2242680 (= (forall!17215 (exprs!7847 c!10544) lambda!438227) e!4324144)))

(declare-fun b!7203412 () Bool)

(declare-fun e!4324145 () Bool)

(assert (=> b!7203412 (= e!4324144 e!4324145)))

(declare-fun res!2930372 () Bool)

(assert (=> b!7203412 (=> (not res!2930372) (not e!4324145))))

(assert (=> b!7203412 (= res!2930372 (dynLambda!28412 lambda!438227 (h!76228 (exprs!7847 c!10544))))))

(declare-fun b!7203413 () Bool)

(assert (=> b!7203413 (= e!4324145 (forall!17215 (t!383933 (exprs!7847 c!10544)) lambda!438227))))

(assert (= (and d!2242680 (not res!2930371)) b!7203412))

(assert (= (and b!7203412 res!2930372) b!7203413))

(declare-fun b_lambda!276171 () Bool)

(assert (=> (not b_lambda!276171) (not b!7203412)))

(declare-fun m!7892140 () Bool)

(assert (=> b!7203412 m!7892140))

(declare-fun m!7892142 () Bool)

(assert (=> b!7203413 m!7892142))

(assert (=> d!2242668 d!2242680))

(declare-fun bs!1901105 () Bool)

(declare-fun d!2242682 () Bool)

(assert (= bs!1901105 (and d!2242682 d!2242654)))

(declare-fun lambda!438229 () Int)

(assert (=> bs!1901105 (not (= lambda!438229 lambda!438224))))

(declare-fun bs!1901106 () Bool)

(assert (= bs!1901106 (and d!2242682 d!2242668)))

(assert (=> bs!1901106 (= lambda!438229 lambda!438227)))

(declare-fun bs!1901107 () Bool)

(assert (= bs!1901107 (and d!2242682 d!2242674)))

(assert (=> bs!1901107 (= lambda!438229 lambda!438228)))

(assert (=> d!2242682 (= (inv!89009 setElem!53472) (forall!17215 (exprs!7847 setElem!53472) lambda!438229))))

(declare-fun bs!1901108 () Bool)

(assert (= bs!1901108 d!2242682))

(declare-fun m!7892144 () Bool)

(assert (=> bs!1901108 m!7892144))

(assert (=> setNonEmpty!53472 d!2242682))

(declare-fun b!7203414 () Bool)

(declare-fun e!4324146 () Bool)

(declare-fun tp!2007509 () Bool)

(assert (=> b!7203414 (= e!4324146 (and tp_is_empty!46347 tp!2007509))))

(assert (=> b!7203397 (= tp!2007500 e!4324146)))

(assert (= (and b!7203397 ((_ is Cons!69781) (t!383934 (t!383934 s!7961)))) b!7203414))

(declare-fun b!7203426 () Bool)

(declare-fun e!4324149 () Bool)

(declare-fun tp!2007522 () Bool)

(declare-fun tp!2007520 () Bool)

(assert (=> b!7203426 (= e!4324149 (and tp!2007522 tp!2007520))))

(assert (=> b!7203398 (= tp!2007501 e!4324149)))

(declare-fun b!7203428 () Bool)

(declare-fun tp!2007524 () Bool)

(declare-fun tp!2007521 () Bool)

(assert (=> b!7203428 (= e!4324149 (and tp!2007524 tp!2007521))))

(declare-fun b!7203427 () Bool)

(declare-fun tp!2007523 () Bool)

(assert (=> b!7203427 (= e!4324149 tp!2007523)))

(declare-fun b!7203425 () Bool)

(assert (=> b!7203425 (= e!4324149 tp_is_empty!46347)))

(assert (= (and b!7203398 ((_ is ElementMatch!18395) (h!76228 (exprs!7847 c!10544)))) b!7203425))

(assert (= (and b!7203398 ((_ is Concat!27240) (h!76228 (exprs!7847 c!10544)))) b!7203426))

(assert (= (and b!7203398 ((_ is Star!18395) (h!76228 (exprs!7847 c!10544)))) b!7203427))

(assert (= (and b!7203398 ((_ is Union!18395) (h!76228 (exprs!7847 c!10544)))) b!7203428))

(declare-fun b!7203429 () Bool)

(declare-fun e!4324150 () Bool)

(declare-fun tp!2007525 () Bool)

(declare-fun tp!2007526 () Bool)

(assert (=> b!7203429 (= e!4324150 (and tp!2007525 tp!2007526))))

(assert (=> b!7203398 (= tp!2007502 e!4324150)))

(assert (= (and b!7203398 ((_ is Cons!69780) (t!383933 (exprs!7847 c!10544)))) b!7203429))

(declare-fun b!7203430 () Bool)

(declare-fun e!4324151 () Bool)

(declare-fun tp!2007527 () Bool)

(declare-fun tp!2007528 () Bool)

(assert (=> b!7203430 (= e!4324151 (and tp!2007527 tp!2007528))))

(assert (=> b!7203403 (= tp!2007507 e!4324151)))

(assert (= (and b!7203403 ((_ is Cons!69780) (exprs!7847 setElem!53472))) b!7203430))

(declare-fun b!7203432 () Bool)

(declare-fun e!4324152 () Bool)

(declare-fun tp!2007531 () Bool)

(declare-fun tp!2007529 () Bool)

(assert (=> b!7203432 (= e!4324152 (and tp!2007531 tp!2007529))))

(assert (=> b!7203392 (= tp!2007496 e!4324152)))

(declare-fun b!7203434 () Bool)

(declare-fun tp!2007533 () Bool)

(declare-fun tp!2007530 () Bool)

(assert (=> b!7203434 (= e!4324152 (and tp!2007533 tp!2007530))))

(declare-fun b!7203433 () Bool)

(declare-fun tp!2007532 () Bool)

(assert (=> b!7203433 (= e!4324152 tp!2007532)))

(declare-fun b!7203431 () Bool)

(assert (=> b!7203431 (= e!4324152 tp_is_empty!46347)))

(assert (= (and b!7203392 ((_ is ElementMatch!18395) (h!76228 (exprs!7847 setElem!53466)))) b!7203431))

(assert (= (and b!7203392 ((_ is Concat!27240) (h!76228 (exprs!7847 setElem!53466)))) b!7203432))

(assert (= (and b!7203392 ((_ is Star!18395) (h!76228 (exprs!7847 setElem!53466)))) b!7203433))

(assert (= (and b!7203392 ((_ is Union!18395) (h!76228 (exprs!7847 setElem!53466)))) b!7203434))

(declare-fun b!7203435 () Bool)

(declare-fun e!4324153 () Bool)

(declare-fun tp!2007534 () Bool)

(declare-fun tp!2007535 () Bool)

(assert (=> b!7203435 (= e!4324153 (and tp!2007534 tp!2007535))))

(assert (=> b!7203392 (= tp!2007497 e!4324153)))

(assert (= (and b!7203392 ((_ is Cons!69780) (t!383933 (exprs!7847 setElem!53466)))) b!7203435))

(declare-fun condSetEmpty!53473 () Bool)

(assert (=> setNonEmpty!53472 (= condSetEmpty!53473 (= setRest!53472 ((as const (Array Context!14694 Bool)) false)))))

(declare-fun setRes!53473 () Bool)

(assert (=> setNonEmpty!53472 (= tp!2007508 setRes!53473)))

(declare-fun setIsEmpty!53473 () Bool)

(assert (=> setIsEmpty!53473 setRes!53473))

(declare-fun setNonEmpty!53473 () Bool)

(declare-fun setElem!53473 () Context!14694)

(declare-fun e!4324158 () Bool)

(declare-fun tp!2007537 () Bool)

(assert (=> setNonEmpty!53473 (= setRes!53473 (and tp!2007537 (inv!89009 setElem!53473) e!4324158))))

(declare-fun setRest!53473 () (InoxSet Context!14694))

(assert (=> setNonEmpty!53473 (= setRest!53472 ((_ map or) (store ((as const (Array Context!14694 Bool)) false) setElem!53473 true) setRest!53473))))

(declare-fun b!7203440 () Bool)

(declare-fun tp!2007536 () Bool)

(assert (=> b!7203440 (= e!4324158 tp!2007536)))

(assert (= (and setNonEmpty!53472 condSetEmpty!53473) setIsEmpty!53473))

(assert (= (and setNonEmpty!53472 (not condSetEmpty!53473)) setNonEmpty!53473))

(assert (= setNonEmpty!53473 b!7203440))

(declare-fun m!7892146 () Bool)

(assert (=> setNonEmpty!53473 m!7892146))

(declare-fun b_lambda!276173 () Bool)

(assert (= b_lambda!276167 (or d!2242674 b_lambda!276173)))

(declare-fun bs!1901109 () Bool)

(declare-fun d!2242686 () Bool)

(assert (= bs!1901109 (and d!2242686 d!2242674)))

(declare-fun validRegex!9488 (Regex!18395) Bool)

(assert (=> bs!1901109 (= (dynLambda!28412 lambda!438228 (h!76228 (exprs!7847 setElem!53466))) (validRegex!9488 (h!76228 (exprs!7847 setElem!53466))))))

(declare-fun m!7892148 () Bool)

(assert (=> bs!1901109 m!7892148))

(assert (=> b!7203408 d!2242686))

(declare-fun b_lambda!276175 () Bool)

(assert (= b_lambda!276169 (or d!2242654 b_lambda!276175)))

(declare-fun bs!1901110 () Bool)

(declare-fun d!2242688 () Bool)

(assert (= bs!1901110 (and d!2242688 d!2242654)))

(declare-fun nullable!7801 (Regex!18395) Bool)

(assert (=> bs!1901110 (= (dynLambda!28412 lambda!438224 (h!76228 (exprs!7847 c!10544))) (nullable!7801 (h!76228 (exprs!7847 c!10544))))))

(declare-fun m!7892150 () Bool)

(assert (=> bs!1901110 m!7892150))

(assert (=> b!7203410 d!2242688))

(declare-fun b_lambda!276177 () Bool)

(assert (= b_lambda!276171 (or d!2242668 b_lambda!276177)))

(declare-fun bs!1901111 () Bool)

(declare-fun d!2242690 () Bool)

(assert (= bs!1901111 (and d!2242690 d!2242668)))

(assert (=> bs!1901111 (= (dynLambda!28412 lambda!438227 (h!76228 (exprs!7847 c!10544))) (validRegex!9488 (h!76228 (exprs!7847 c!10544))))))

(declare-fun m!7892152 () Bool)

(assert (=> bs!1901111 m!7892152))

(assert (=> b!7203412 d!2242690))

(check-sat (not b!7203433) (not bs!1901110) (not b_lambda!276175) (not setNonEmpty!53473) (not b!7203440) (not b_lambda!276173) (not b!7203426) (not bs!1901111) (not b!7203434) (not bs!1901109) (not d!2242682) (not b!7203430) (not b_lambda!276177) (not b!7203411) (not b!7203414) (not b!7203427) (not b!7203432) (not b!7203435) (not b!7203409) tp_is_empty!46347 (not b!7203413) (not b!7203428) (not b!7203429))
(check-sat)
(get-model)

(declare-fun d!2242704 () Bool)

(declare-fun res!2930383 () Bool)

(declare-fun e!4324174 () Bool)

(assert (=> d!2242704 (=> res!2930383 e!4324174)))

(assert (=> d!2242704 (= res!2930383 ((_ is Nil!69780) (t!383933 (exprs!7847 c!10544))))))

(assert (=> d!2242704 (= (forall!17215 (t!383933 (exprs!7847 c!10544)) lambda!438224) e!4324174)))

(declare-fun b!7203470 () Bool)

(declare-fun e!4324175 () Bool)

(assert (=> b!7203470 (= e!4324174 e!4324175)))

(declare-fun res!2930384 () Bool)

(assert (=> b!7203470 (=> (not res!2930384) (not e!4324175))))

(assert (=> b!7203470 (= res!2930384 (dynLambda!28412 lambda!438224 (h!76228 (t!383933 (exprs!7847 c!10544)))))))

(declare-fun b!7203471 () Bool)

(assert (=> b!7203471 (= e!4324175 (forall!17215 (t!383933 (t!383933 (exprs!7847 c!10544))) lambda!438224))))

(assert (= (and d!2242704 (not res!2930383)) b!7203470))

(assert (= (and b!7203470 res!2930384) b!7203471))

(declare-fun b_lambda!276191 () Bool)

(assert (=> (not b_lambda!276191) (not b!7203470)))

(declare-fun m!7892176 () Bool)

(assert (=> b!7203470 m!7892176))

(declare-fun m!7892178 () Bool)

(assert (=> b!7203471 m!7892178))

(assert (=> b!7203411 d!2242704))

(declare-fun bm!656873 () Bool)

(declare-fun call!656879 () Bool)

(declare-fun call!656880 () Bool)

(assert (=> bm!656873 (= call!656879 call!656880)))

(declare-fun b!7203490 () Bool)

(declare-fun e!4324196 () Bool)

(assert (=> b!7203490 (= e!4324196 call!656880)))

(declare-fun b!7203492 () Bool)

(declare-fun e!4324191 () Bool)

(declare-fun e!4324192 () Bool)

(assert (=> b!7203492 (= e!4324191 e!4324192)))

(declare-fun res!2930397 () Bool)

(assert (=> b!7203492 (=> (not res!2930397) (not e!4324192))))

(assert (=> b!7203492 (= res!2930397 call!656879)))

(declare-fun c!1339828 () Bool)

(declare-fun c!1339829 () Bool)

(declare-fun bm!656874 () Bool)

(assert (=> bm!656874 (= call!656880 (validRegex!9488 (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))))))

(declare-fun b!7203493 () Bool)

(declare-fun e!4324193 () Bool)

(assert (=> b!7203493 (= e!4324193 call!656879)))

(declare-fun b!7203494 () Bool)

(declare-fun e!4324194 () Bool)

(declare-fun e!4324195 () Bool)

(assert (=> b!7203494 (= e!4324194 e!4324195)))

(assert (=> b!7203494 (= c!1339828 ((_ is Star!18395) (h!76228 (exprs!7847 c!10544))))))

(declare-fun b!7203495 () Bool)

(declare-fun res!2930395 () Bool)

(assert (=> b!7203495 (=> res!2930395 e!4324191)))

(assert (=> b!7203495 (= res!2930395 (not ((_ is Concat!27240) (h!76228 (exprs!7847 c!10544)))))))

(declare-fun e!4324190 () Bool)

(assert (=> b!7203495 (= e!4324190 e!4324191)))

(declare-fun b!7203491 () Bool)

(declare-fun res!2930396 () Bool)

(assert (=> b!7203491 (=> (not res!2930396) (not e!4324193))))

(declare-fun call!656878 () Bool)

(assert (=> b!7203491 (= res!2930396 call!656878)))

(assert (=> b!7203491 (= e!4324190 e!4324193)))

(declare-fun d!2242706 () Bool)

(declare-fun res!2930399 () Bool)

(assert (=> d!2242706 (=> res!2930399 e!4324194)))

(assert (=> d!2242706 (= res!2930399 ((_ is ElementMatch!18395) (h!76228 (exprs!7847 c!10544))))))

(assert (=> d!2242706 (= (validRegex!9488 (h!76228 (exprs!7847 c!10544))) e!4324194)))

(declare-fun b!7203496 () Bool)

(assert (=> b!7203496 (= e!4324195 e!4324196)))

(declare-fun res!2930398 () Bool)

(assert (=> b!7203496 (= res!2930398 (not (nullable!7801 (reg!18724 (h!76228 (exprs!7847 c!10544))))))))

(assert (=> b!7203496 (=> (not res!2930398) (not e!4324196))))

(declare-fun b!7203497 () Bool)

(assert (=> b!7203497 (= e!4324195 e!4324190)))

(assert (=> b!7203497 (= c!1339829 ((_ is Union!18395) (h!76228 (exprs!7847 c!10544))))))

(declare-fun b!7203498 () Bool)

(assert (=> b!7203498 (= e!4324192 call!656878)))

(declare-fun bm!656875 () Bool)

(assert (=> bm!656875 (= call!656878 (validRegex!9488 (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))))))

(assert (= (and d!2242706 (not res!2930399)) b!7203494))

(assert (= (and b!7203494 c!1339828) b!7203496))

(assert (= (and b!7203494 (not c!1339828)) b!7203497))

(assert (= (and b!7203496 res!2930398) b!7203490))

(assert (= (and b!7203497 c!1339829) b!7203491))

(assert (= (and b!7203497 (not c!1339829)) b!7203495))

(assert (= (and b!7203491 res!2930396) b!7203493))

(assert (= (and b!7203495 (not res!2930395)) b!7203492))

(assert (= (and b!7203492 res!2930397) b!7203498))

(assert (= (or b!7203491 b!7203498) bm!656875))

(assert (= (or b!7203493 b!7203492) bm!656873))

(assert (= (or b!7203490 bm!656873) bm!656874))

(declare-fun m!7892180 () Bool)

(assert (=> bm!656874 m!7892180))

(declare-fun m!7892182 () Bool)

(assert (=> b!7203496 m!7892182))

(declare-fun m!7892184 () Bool)

(assert (=> bm!656875 m!7892184))

(assert (=> bs!1901111 d!2242706))

(declare-fun d!2242708 () Bool)

(declare-fun res!2930400 () Bool)

(declare-fun e!4324197 () Bool)

(assert (=> d!2242708 (=> res!2930400 e!4324197)))

(assert (=> d!2242708 (= res!2930400 ((_ is Nil!69780) (exprs!7847 setElem!53472)))))

(assert (=> d!2242708 (= (forall!17215 (exprs!7847 setElem!53472) lambda!438229) e!4324197)))

(declare-fun b!7203499 () Bool)

(declare-fun e!4324198 () Bool)

(assert (=> b!7203499 (= e!4324197 e!4324198)))

(declare-fun res!2930401 () Bool)

(assert (=> b!7203499 (=> (not res!2930401) (not e!4324198))))

(assert (=> b!7203499 (= res!2930401 (dynLambda!28412 lambda!438229 (h!76228 (exprs!7847 setElem!53472))))))

(declare-fun b!7203500 () Bool)

(assert (=> b!7203500 (= e!4324198 (forall!17215 (t!383933 (exprs!7847 setElem!53472)) lambda!438229))))

(assert (= (and d!2242708 (not res!2930400)) b!7203499))

(assert (= (and b!7203499 res!2930401) b!7203500))

(declare-fun b_lambda!276193 () Bool)

(assert (=> (not b_lambda!276193) (not b!7203499)))

(declare-fun m!7892186 () Bool)

(assert (=> b!7203499 m!7892186))

(declare-fun m!7892188 () Bool)

(assert (=> b!7203500 m!7892188))

(assert (=> d!2242682 d!2242708))

(declare-fun d!2242710 () Bool)

(declare-fun nullableFct!3054 (Regex!18395) Bool)

(assert (=> d!2242710 (= (nullable!7801 (h!76228 (exprs!7847 c!10544))) (nullableFct!3054 (h!76228 (exprs!7847 c!10544))))))

(declare-fun bs!1901119 () Bool)

(assert (= bs!1901119 d!2242710))

(declare-fun m!7892190 () Bool)

(assert (=> bs!1901119 m!7892190))

(assert (=> bs!1901110 d!2242710))

(declare-fun bm!656876 () Bool)

(declare-fun call!656882 () Bool)

(declare-fun call!656883 () Bool)

(assert (=> bm!656876 (= call!656882 call!656883)))

(declare-fun b!7203501 () Bool)

(declare-fun e!4324205 () Bool)

(assert (=> b!7203501 (= e!4324205 call!656883)))

(declare-fun b!7203503 () Bool)

(declare-fun e!4324200 () Bool)

(declare-fun e!4324201 () Bool)

(assert (=> b!7203503 (= e!4324200 e!4324201)))

(declare-fun res!2930404 () Bool)

(assert (=> b!7203503 (=> (not res!2930404) (not e!4324201))))

(assert (=> b!7203503 (= res!2930404 call!656882)))

(declare-fun c!1339830 () Bool)

(declare-fun c!1339831 () Bool)

(declare-fun bm!656877 () Bool)

(assert (=> bm!656877 (= call!656883 (validRegex!9488 (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))))))

(declare-fun b!7203504 () Bool)

(declare-fun e!4324202 () Bool)

(assert (=> b!7203504 (= e!4324202 call!656882)))

(declare-fun b!7203505 () Bool)

(declare-fun e!4324203 () Bool)

(declare-fun e!4324204 () Bool)

(assert (=> b!7203505 (= e!4324203 e!4324204)))

(assert (=> b!7203505 (= c!1339830 ((_ is Star!18395) (h!76228 (exprs!7847 setElem!53466))))))

(declare-fun b!7203506 () Bool)

(declare-fun res!2930402 () Bool)

(assert (=> b!7203506 (=> res!2930402 e!4324200)))

(assert (=> b!7203506 (= res!2930402 (not ((_ is Concat!27240) (h!76228 (exprs!7847 setElem!53466)))))))

(declare-fun e!4324199 () Bool)

(assert (=> b!7203506 (= e!4324199 e!4324200)))

(declare-fun b!7203502 () Bool)

(declare-fun res!2930403 () Bool)

(assert (=> b!7203502 (=> (not res!2930403) (not e!4324202))))

(declare-fun call!656881 () Bool)

(assert (=> b!7203502 (= res!2930403 call!656881)))

(assert (=> b!7203502 (= e!4324199 e!4324202)))

(declare-fun d!2242712 () Bool)

(declare-fun res!2930406 () Bool)

(assert (=> d!2242712 (=> res!2930406 e!4324203)))

(assert (=> d!2242712 (= res!2930406 ((_ is ElementMatch!18395) (h!76228 (exprs!7847 setElem!53466))))))

(assert (=> d!2242712 (= (validRegex!9488 (h!76228 (exprs!7847 setElem!53466))) e!4324203)))

(declare-fun b!7203507 () Bool)

(assert (=> b!7203507 (= e!4324204 e!4324205)))

(declare-fun res!2930405 () Bool)

(assert (=> b!7203507 (= res!2930405 (not (nullable!7801 (reg!18724 (h!76228 (exprs!7847 setElem!53466))))))))

(assert (=> b!7203507 (=> (not res!2930405) (not e!4324205))))

(declare-fun b!7203508 () Bool)

(assert (=> b!7203508 (= e!4324204 e!4324199)))

(assert (=> b!7203508 (= c!1339831 ((_ is Union!18395) (h!76228 (exprs!7847 setElem!53466))))))

(declare-fun b!7203509 () Bool)

(assert (=> b!7203509 (= e!4324201 call!656881)))

(declare-fun bm!656878 () Bool)

(assert (=> bm!656878 (= call!656881 (validRegex!9488 (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))))))

(assert (= (and d!2242712 (not res!2930406)) b!7203505))

(assert (= (and b!7203505 c!1339830) b!7203507))

(assert (= (and b!7203505 (not c!1339830)) b!7203508))

(assert (= (and b!7203507 res!2930405) b!7203501))

(assert (= (and b!7203508 c!1339831) b!7203502))

(assert (= (and b!7203508 (not c!1339831)) b!7203506))

(assert (= (and b!7203502 res!2930403) b!7203504))

(assert (= (and b!7203506 (not res!2930402)) b!7203503))

(assert (= (and b!7203503 res!2930404) b!7203509))

(assert (= (or b!7203502 b!7203509) bm!656878))

(assert (= (or b!7203504 b!7203503) bm!656876))

(assert (= (or b!7203501 bm!656876) bm!656877))

(declare-fun m!7892192 () Bool)

(assert (=> bm!656877 m!7892192))

(declare-fun m!7892194 () Bool)

(assert (=> b!7203507 m!7892194))

(declare-fun m!7892196 () Bool)

(assert (=> bm!656878 m!7892196))

(assert (=> bs!1901109 d!2242712))

(declare-fun bs!1901120 () Bool)

(declare-fun d!2242714 () Bool)

(assert (= bs!1901120 (and d!2242714 d!2242654)))

(declare-fun lambda!438231 () Int)

(assert (=> bs!1901120 (not (= lambda!438231 lambda!438224))))

(declare-fun bs!1901121 () Bool)

(assert (= bs!1901121 (and d!2242714 d!2242668)))

(assert (=> bs!1901121 (= lambda!438231 lambda!438227)))

(declare-fun bs!1901122 () Bool)

(assert (= bs!1901122 (and d!2242714 d!2242674)))

(assert (=> bs!1901122 (= lambda!438231 lambda!438228)))

(declare-fun bs!1901123 () Bool)

(assert (= bs!1901123 (and d!2242714 d!2242682)))

(assert (=> bs!1901123 (= lambda!438231 lambda!438229)))

(assert (=> d!2242714 (= (inv!89009 setElem!53473) (forall!17215 (exprs!7847 setElem!53473) lambda!438231))))

(declare-fun bs!1901124 () Bool)

(assert (= bs!1901124 d!2242714))

(declare-fun m!7892198 () Bool)

(assert (=> bs!1901124 m!7892198))

(assert (=> setNonEmpty!53473 d!2242714))

(declare-fun d!2242716 () Bool)

(declare-fun res!2930407 () Bool)

(declare-fun e!4324206 () Bool)

(assert (=> d!2242716 (=> res!2930407 e!4324206)))

(assert (=> d!2242716 (= res!2930407 ((_ is Nil!69780) (t!383933 (exprs!7847 setElem!53466))))))

(assert (=> d!2242716 (= (forall!17215 (t!383933 (exprs!7847 setElem!53466)) lambda!438228) e!4324206)))

(declare-fun b!7203510 () Bool)

(declare-fun e!4324207 () Bool)

(assert (=> b!7203510 (= e!4324206 e!4324207)))

(declare-fun res!2930408 () Bool)

(assert (=> b!7203510 (=> (not res!2930408) (not e!4324207))))

(assert (=> b!7203510 (= res!2930408 (dynLambda!28412 lambda!438228 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))))

(declare-fun b!7203511 () Bool)

(assert (=> b!7203511 (= e!4324207 (forall!17215 (t!383933 (t!383933 (exprs!7847 setElem!53466))) lambda!438228))))

(assert (= (and d!2242716 (not res!2930407)) b!7203510))

(assert (= (and b!7203510 res!2930408) b!7203511))

(declare-fun b_lambda!276195 () Bool)

(assert (=> (not b_lambda!276195) (not b!7203510)))

(declare-fun m!7892200 () Bool)

(assert (=> b!7203510 m!7892200))

(declare-fun m!7892202 () Bool)

(assert (=> b!7203511 m!7892202))

(assert (=> b!7203409 d!2242716))

(declare-fun d!2242718 () Bool)

(declare-fun res!2930409 () Bool)

(declare-fun e!4324208 () Bool)

(assert (=> d!2242718 (=> res!2930409 e!4324208)))

(assert (=> d!2242718 (= res!2930409 ((_ is Nil!69780) (t!383933 (exprs!7847 c!10544))))))

(assert (=> d!2242718 (= (forall!17215 (t!383933 (exprs!7847 c!10544)) lambda!438227) e!4324208)))

(declare-fun b!7203512 () Bool)

(declare-fun e!4324209 () Bool)

(assert (=> b!7203512 (= e!4324208 e!4324209)))

(declare-fun res!2930410 () Bool)

(assert (=> b!7203512 (=> (not res!2930410) (not e!4324209))))

(assert (=> b!7203512 (= res!2930410 (dynLambda!28412 lambda!438227 (h!76228 (t!383933 (exprs!7847 c!10544)))))))

(declare-fun b!7203513 () Bool)

(assert (=> b!7203513 (= e!4324209 (forall!17215 (t!383933 (t!383933 (exprs!7847 c!10544))) lambda!438227))))

(assert (= (and d!2242718 (not res!2930409)) b!7203512))

(assert (= (and b!7203512 res!2930410) b!7203513))

(declare-fun b_lambda!276197 () Bool)

(assert (=> (not b_lambda!276197) (not b!7203512)))

(declare-fun m!7892204 () Bool)

(assert (=> b!7203512 m!7892204))

(declare-fun m!7892206 () Bool)

(assert (=> b!7203513 m!7892206))

(assert (=> b!7203413 d!2242718))

(declare-fun b!7203515 () Bool)

(declare-fun e!4324210 () Bool)

(declare-fun tp!2007569 () Bool)

(declare-fun tp!2007567 () Bool)

(assert (=> b!7203515 (= e!4324210 (and tp!2007569 tp!2007567))))

(assert (=> b!7203428 (= tp!2007524 e!4324210)))

(declare-fun b!7203517 () Bool)

(declare-fun tp!2007571 () Bool)

(declare-fun tp!2007568 () Bool)

(assert (=> b!7203517 (= e!4324210 (and tp!2007571 tp!2007568))))

(declare-fun b!7203516 () Bool)

(declare-fun tp!2007570 () Bool)

(assert (=> b!7203516 (= e!4324210 tp!2007570)))

(declare-fun b!7203514 () Bool)

(assert (=> b!7203514 (= e!4324210 tp_is_empty!46347)))

(assert (= (and b!7203428 ((_ is ElementMatch!18395) (regOne!37303 (h!76228 (exprs!7847 c!10544))))) b!7203514))

(assert (= (and b!7203428 ((_ is Concat!27240) (regOne!37303 (h!76228 (exprs!7847 c!10544))))) b!7203515))

(assert (= (and b!7203428 ((_ is Star!18395) (regOne!37303 (h!76228 (exprs!7847 c!10544))))) b!7203516))

(assert (= (and b!7203428 ((_ is Union!18395) (regOne!37303 (h!76228 (exprs!7847 c!10544))))) b!7203517))

(declare-fun b!7203519 () Bool)

(declare-fun e!4324211 () Bool)

(declare-fun tp!2007574 () Bool)

(declare-fun tp!2007572 () Bool)

(assert (=> b!7203519 (= e!4324211 (and tp!2007574 tp!2007572))))

(assert (=> b!7203428 (= tp!2007521 e!4324211)))

(declare-fun b!7203521 () Bool)

(declare-fun tp!2007576 () Bool)

(declare-fun tp!2007573 () Bool)

(assert (=> b!7203521 (= e!4324211 (and tp!2007576 tp!2007573))))

(declare-fun b!7203520 () Bool)

(declare-fun tp!2007575 () Bool)

(assert (=> b!7203520 (= e!4324211 tp!2007575)))

(declare-fun b!7203518 () Bool)

(assert (=> b!7203518 (= e!4324211 tp_is_empty!46347)))

(assert (= (and b!7203428 ((_ is ElementMatch!18395) (regTwo!37303 (h!76228 (exprs!7847 c!10544))))) b!7203518))

(assert (= (and b!7203428 ((_ is Concat!27240) (regTwo!37303 (h!76228 (exprs!7847 c!10544))))) b!7203519))

(assert (= (and b!7203428 ((_ is Star!18395) (regTwo!37303 (h!76228 (exprs!7847 c!10544))))) b!7203520))

(assert (= (and b!7203428 ((_ is Union!18395) (regTwo!37303 (h!76228 (exprs!7847 c!10544))))) b!7203521))

(declare-fun b!7203523 () Bool)

(declare-fun e!4324212 () Bool)

(declare-fun tp!2007579 () Bool)

(declare-fun tp!2007577 () Bool)

(assert (=> b!7203523 (= e!4324212 (and tp!2007579 tp!2007577))))

(assert (=> b!7203426 (= tp!2007522 e!4324212)))

(declare-fun b!7203525 () Bool)

(declare-fun tp!2007581 () Bool)

(declare-fun tp!2007578 () Bool)

(assert (=> b!7203525 (= e!4324212 (and tp!2007581 tp!2007578))))

(declare-fun b!7203524 () Bool)

(declare-fun tp!2007580 () Bool)

(assert (=> b!7203524 (= e!4324212 tp!2007580)))

(declare-fun b!7203522 () Bool)

(assert (=> b!7203522 (= e!4324212 tp_is_empty!46347)))

(assert (= (and b!7203426 ((_ is ElementMatch!18395) (regOne!37302 (h!76228 (exprs!7847 c!10544))))) b!7203522))

(assert (= (and b!7203426 ((_ is Concat!27240) (regOne!37302 (h!76228 (exprs!7847 c!10544))))) b!7203523))

(assert (= (and b!7203426 ((_ is Star!18395) (regOne!37302 (h!76228 (exprs!7847 c!10544))))) b!7203524))

(assert (= (and b!7203426 ((_ is Union!18395) (regOne!37302 (h!76228 (exprs!7847 c!10544))))) b!7203525))

(declare-fun b!7203527 () Bool)

(declare-fun e!4324213 () Bool)

(declare-fun tp!2007584 () Bool)

(declare-fun tp!2007582 () Bool)

(assert (=> b!7203527 (= e!4324213 (and tp!2007584 tp!2007582))))

(assert (=> b!7203426 (= tp!2007520 e!4324213)))

(declare-fun b!7203529 () Bool)

(declare-fun tp!2007586 () Bool)

(declare-fun tp!2007583 () Bool)

(assert (=> b!7203529 (= e!4324213 (and tp!2007586 tp!2007583))))

(declare-fun b!7203528 () Bool)

(declare-fun tp!2007585 () Bool)

(assert (=> b!7203528 (= e!4324213 tp!2007585)))

(declare-fun b!7203526 () Bool)

(assert (=> b!7203526 (= e!4324213 tp_is_empty!46347)))

(assert (= (and b!7203426 ((_ is ElementMatch!18395) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))) b!7203526))

(assert (= (and b!7203426 ((_ is Concat!27240) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))) b!7203527))

(assert (= (and b!7203426 ((_ is Star!18395) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))) b!7203528))

(assert (= (and b!7203426 ((_ is Union!18395) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))) b!7203529))

(declare-fun b!7203531 () Bool)

(declare-fun e!4324214 () Bool)

(declare-fun tp!2007589 () Bool)

(declare-fun tp!2007587 () Bool)

(assert (=> b!7203531 (= e!4324214 (and tp!2007589 tp!2007587))))

(assert (=> b!7203427 (= tp!2007523 e!4324214)))

(declare-fun b!7203533 () Bool)

(declare-fun tp!2007591 () Bool)

(declare-fun tp!2007588 () Bool)

(assert (=> b!7203533 (= e!4324214 (and tp!2007591 tp!2007588))))

(declare-fun b!7203532 () Bool)

(declare-fun tp!2007590 () Bool)

(assert (=> b!7203532 (= e!4324214 tp!2007590)))

(declare-fun b!7203530 () Bool)

(assert (=> b!7203530 (= e!4324214 tp_is_empty!46347)))

(assert (= (and b!7203427 ((_ is ElementMatch!18395) (reg!18724 (h!76228 (exprs!7847 c!10544))))) b!7203530))

(assert (= (and b!7203427 ((_ is Concat!27240) (reg!18724 (h!76228 (exprs!7847 c!10544))))) b!7203531))

(assert (= (and b!7203427 ((_ is Star!18395) (reg!18724 (h!76228 (exprs!7847 c!10544))))) b!7203532))

(assert (= (and b!7203427 ((_ is Union!18395) (reg!18724 (h!76228 (exprs!7847 c!10544))))) b!7203533))

(declare-fun b!7203535 () Bool)

(declare-fun e!4324215 () Bool)

(declare-fun tp!2007594 () Bool)

(declare-fun tp!2007592 () Bool)

(assert (=> b!7203535 (= e!4324215 (and tp!2007594 tp!2007592))))

(assert (=> b!7203434 (= tp!2007533 e!4324215)))

(declare-fun b!7203537 () Bool)

(declare-fun tp!2007596 () Bool)

(declare-fun tp!2007593 () Bool)

(assert (=> b!7203537 (= e!4324215 (and tp!2007596 tp!2007593))))

(declare-fun b!7203536 () Bool)

(declare-fun tp!2007595 () Bool)

(assert (=> b!7203536 (= e!4324215 tp!2007595)))

(declare-fun b!7203534 () Bool)

(assert (=> b!7203534 (= e!4324215 tp_is_empty!46347)))

(assert (= (and b!7203434 ((_ is ElementMatch!18395) (regOne!37303 (h!76228 (exprs!7847 setElem!53466))))) b!7203534))

(assert (= (and b!7203434 ((_ is Concat!27240) (regOne!37303 (h!76228 (exprs!7847 setElem!53466))))) b!7203535))

(assert (= (and b!7203434 ((_ is Star!18395) (regOne!37303 (h!76228 (exprs!7847 setElem!53466))))) b!7203536))

(assert (= (and b!7203434 ((_ is Union!18395) (regOne!37303 (h!76228 (exprs!7847 setElem!53466))))) b!7203537))

(declare-fun b!7203539 () Bool)

(declare-fun e!4324216 () Bool)

(declare-fun tp!2007599 () Bool)

(declare-fun tp!2007597 () Bool)

(assert (=> b!7203539 (= e!4324216 (and tp!2007599 tp!2007597))))

(assert (=> b!7203434 (= tp!2007530 e!4324216)))

(declare-fun b!7203541 () Bool)

(declare-fun tp!2007601 () Bool)

(declare-fun tp!2007598 () Bool)

(assert (=> b!7203541 (= e!4324216 (and tp!2007601 tp!2007598))))

(declare-fun b!7203540 () Bool)

(declare-fun tp!2007600 () Bool)

(assert (=> b!7203540 (= e!4324216 tp!2007600)))

(declare-fun b!7203538 () Bool)

(assert (=> b!7203538 (= e!4324216 tp_is_empty!46347)))

(assert (= (and b!7203434 ((_ is ElementMatch!18395) (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))))) b!7203538))

(assert (= (and b!7203434 ((_ is Concat!27240) (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))))) b!7203539))

(assert (= (and b!7203434 ((_ is Star!18395) (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))))) b!7203540))

(assert (= (and b!7203434 ((_ is Union!18395) (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))))) b!7203541))

(declare-fun b!7203543 () Bool)

(declare-fun e!4324217 () Bool)

(declare-fun tp!2007604 () Bool)

(declare-fun tp!2007602 () Bool)

(assert (=> b!7203543 (= e!4324217 (and tp!2007604 tp!2007602))))

(assert (=> b!7203430 (= tp!2007527 e!4324217)))

(declare-fun b!7203545 () Bool)

(declare-fun tp!2007606 () Bool)

(declare-fun tp!2007603 () Bool)

(assert (=> b!7203545 (= e!4324217 (and tp!2007606 tp!2007603))))

(declare-fun b!7203544 () Bool)

(declare-fun tp!2007605 () Bool)

(assert (=> b!7203544 (= e!4324217 tp!2007605)))

(declare-fun b!7203542 () Bool)

(assert (=> b!7203542 (= e!4324217 tp_is_empty!46347)))

(assert (= (and b!7203430 ((_ is ElementMatch!18395) (h!76228 (exprs!7847 setElem!53472)))) b!7203542))

(assert (= (and b!7203430 ((_ is Concat!27240) (h!76228 (exprs!7847 setElem!53472)))) b!7203543))

(assert (= (and b!7203430 ((_ is Star!18395) (h!76228 (exprs!7847 setElem!53472)))) b!7203544))

(assert (= (and b!7203430 ((_ is Union!18395) (h!76228 (exprs!7847 setElem!53472)))) b!7203545))

(declare-fun b!7203546 () Bool)

(declare-fun e!4324218 () Bool)

(declare-fun tp!2007607 () Bool)

(declare-fun tp!2007608 () Bool)

(assert (=> b!7203546 (= e!4324218 (and tp!2007607 tp!2007608))))

(assert (=> b!7203430 (= tp!2007528 e!4324218)))

(assert (= (and b!7203430 ((_ is Cons!69780) (t!383933 (exprs!7847 setElem!53472)))) b!7203546))

(declare-fun b!7203548 () Bool)

(declare-fun e!4324219 () Bool)

(declare-fun tp!2007611 () Bool)

(declare-fun tp!2007609 () Bool)

(assert (=> b!7203548 (= e!4324219 (and tp!2007611 tp!2007609))))

(assert (=> b!7203433 (= tp!2007532 e!4324219)))

(declare-fun b!7203550 () Bool)

(declare-fun tp!2007613 () Bool)

(declare-fun tp!2007610 () Bool)

(assert (=> b!7203550 (= e!4324219 (and tp!2007613 tp!2007610))))

(declare-fun b!7203549 () Bool)

(declare-fun tp!2007612 () Bool)

(assert (=> b!7203549 (= e!4324219 tp!2007612)))

(declare-fun b!7203547 () Bool)

(assert (=> b!7203547 (= e!4324219 tp_is_empty!46347)))

(assert (= (and b!7203433 ((_ is ElementMatch!18395) (reg!18724 (h!76228 (exprs!7847 setElem!53466))))) b!7203547))

(assert (= (and b!7203433 ((_ is Concat!27240) (reg!18724 (h!76228 (exprs!7847 setElem!53466))))) b!7203548))

(assert (= (and b!7203433 ((_ is Star!18395) (reg!18724 (h!76228 (exprs!7847 setElem!53466))))) b!7203549))

(assert (= (and b!7203433 ((_ is Union!18395) (reg!18724 (h!76228 (exprs!7847 setElem!53466))))) b!7203550))

(declare-fun b!7203551 () Bool)

(declare-fun e!4324220 () Bool)

(declare-fun tp!2007614 () Bool)

(assert (=> b!7203551 (= e!4324220 (and tp_is_empty!46347 tp!2007614))))

(assert (=> b!7203414 (= tp!2007509 e!4324220)))

(assert (= (and b!7203414 ((_ is Cons!69781) (t!383934 (t!383934 (t!383934 s!7961))))) b!7203551))

(declare-fun b!7203553 () Bool)

(declare-fun e!4324221 () Bool)

(declare-fun tp!2007617 () Bool)

(declare-fun tp!2007615 () Bool)

(assert (=> b!7203553 (= e!4324221 (and tp!2007617 tp!2007615))))

(assert (=> b!7203435 (= tp!2007534 e!4324221)))

(declare-fun b!7203555 () Bool)

(declare-fun tp!2007619 () Bool)

(declare-fun tp!2007616 () Bool)

(assert (=> b!7203555 (= e!4324221 (and tp!2007619 tp!2007616))))

(declare-fun b!7203554 () Bool)

(declare-fun tp!2007618 () Bool)

(assert (=> b!7203554 (= e!4324221 tp!2007618)))

(declare-fun b!7203552 () Bool)

(assert (=> b!7203552 (= e!4324221 tp_is_empty!46347)))

(assert (= (and b!7203435 ((_ is ElementMatch!18395) (h!76228 (t!383933 (exprs!7847 setElem!53466))))) b!7203552))

(assert (= (and b!7203435 ((_ is Concat!27240) (h!76228 (t!383933 (exprs!7847 setElem!53466))))) b!7203553))

(assert (= (and b!7203435 ((_ is Star!18395) (h!76228 (t!383933 (exprs!7847 setElem!53466))))) b!7203554))

(assert (= (and b!7203435 ((_ is Union!18395) (h!76228 (t!383933 (exprs!7847 setElem!53466))))) b!7203555))

(declare-fun b!7203556 () Bool)

(declare-fun e!4324222 () Bool)

(declare-fun tp!2007620 () Bool)

(declare-fun tp!2007621 () Bool)

(assert (=> b!7203556 (= e!4324222 (and tp!2007620 tp!2007621))))

(assert (=> b!7203435 (= tp!2007535 e!4324222)))

(assert (= (and b!7203435 ((_ is Cons!69780) (t!383933 (t!383933 (exprs!7847 setElem!53466))))) b!7203556))

(declare-fun b!7203557 () Bool)

(declare-fun e!4324223 () Bool)

(declare-fun tp!2007622 () Bool)

(declare-fun tp!2007623 () Bool)

(assert (=> b!7203557 (= e!4324223 (and tp!2007622 tp!2007623))))

(assert (=> b!7203440 (= tp!2007536 e!4324223)))

(assert (= (and b!7203440 ((_ is Cons!69780) (exprs!7847 setElem!53473))) b!7203557))

(declare-fun b!7203559 () Bool)

(declare-fun e!4324224 () Bool)

(declare-fun tp!2007626 () Bool)

(declare-fun tp!2007624 () Bool)

(assert (=> b!7203559 (= e!4324224 (and tp!2007626 tp!2007624))))

(assert (=> b!7203432 (= tp!2007531 e!4324224)))

(declare-fun b!7203561 () Bool)

(declare-fun tp!2007628 () Bool)

(declare-fun tp!2007625 () Bool)

(assert (=> b!7203561 (= e!4324224 (and tp!2007628 tp!2007625))))

(declare-fun b!7203560 () Bool)

(declare-fun tp!2007627 () Bool)

(assert (=> b!7203560 (= e!4324224 tp!2007627)))

(declare-fun b!7203558 () Bool)

(assert (=> b!7203558 (= e!4324224 tp_is_empty!46347)))

(assert (= (and b!7203432 ((_ is ElementMatch!18395) (regOne!37302 (h!76228 (exprs!7847 setElem!53466))))) b!7203558))

(assert (= (and b!7203432 ((_ is Concat!27240) (regOne!37302 (h!76228 (exprs!7847 setElem!53466))))) b!7203559))

(assert (= (and b!7203432 ((_ is Star!18395) (regOne!37302 (h!76228 (exprs!7847 setElem!53466))))) b!7203560))

(assert (= (and b!7203432 ((_ is Union!18395) (regOne!37302 (h!76228 (exprs!7847 setElem!53466))))) b!7203561))

(declare-fun b!7203563 () Bool)

(declare-fun e!4324225 () Bool)

(declare-fun tp!2007631 () Bool)

(declare-fun tp!2007629 () Bool)

(assert (=> b!7203563 (= e!4324225 (and tp!2007631 tp!2007629))))

(assert (=> b!7203432 (= tp!2007529 e!4324225)))

(declare-fun b!7203565 () Bool)

(declare-fun tp!2007633 () Bool)

(declare-fun tp!2007630 () Bool)

(assert (=> b!7203565 (= e!4324225 (and tp!2007633 tp!2007630))))

(declare-fun b!7203564 () Bool)

(declare-fun tp!2007632 () Bool)

(assert (=> b!7203564 (= e!4324225 tp!2007632)))

(declare-fun b!7203562 () Bool)

(assert (=> b!7203562 (= e!4324225 tp_is_empty!46347)))

(assert (= (and b!7203432 ((_ is ElementMatch!18395) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))) b!7203562))

(assert (= (and b!7203432 ((_ is Concat!27240) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))) b!7203563))

(assert (= (and b!7203432 ((_ is Star!18395) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))) b!7203564))

(assert (= (and b!7203432 ((_ is Union!18395) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))) b!7203565))

(declare-fun condSetEmpty!53475 () Bool)

(assert (=> setNonEmpty!53473 (= condSetEmpty!53475 (= setRest!53473 ((as const (Array Context!14694 Bool)) false)))))

(declare-fun setRes!53475 () Bool)

(assert (=> setNonEmpty!53473 (= tp!2007537 setRes!53475)))

(declare-fun setIsEmpty!53475 () Bool)

(assert (=> setIsEmpty!53475 setRes!53475))

(declare-fun e!4324226 () Bool)

(declare-fun setElem!53475 () Context!14694)

(declare-fun setNonEmpty!53475 () Bool)

(declare-fun tp!2007635 () Bool)

(assert (=> setNonEmpty!53475 (= setRes!53475 (and tp!2007635 (inv!89009 setElem!53475) e!4324226))))

(declare-fun setRest!53475 () (InoxSet Context!14694))

(assert (=> setNonEmpty!53475 (= setRest!53473 ((_ map or) (store ((as const (Array Context!14694 Bool)) false) setElem!53475 true) setRest!53475))))

(declare-fun b!7203566 () Bool)

(declare-fun tp!2007634 () Bool)

(assert (=> b!7203566 (= e!4324226 tp!2007634)))

(assert (= (and setNonEmpty!53473 condSetEmpty!53475) setIsEmpty!53475))

(assert (= (and setNonEmpty!53473 (not condSetEmpty!53475)) setNonEmpty!53475))

(assert (= setNonEmpty!53475 b!7203566))

(declare-fun m!7892208 () Bool)

(assert (=> setNonEmpty!53475 m!7892208))

(declare-fun b!7203568 () Bool)

(declare-fun e!4324227 () Bool)

(declare-fun tp!2007638 () Bool)

(declare-fun tp!2007636 () Bool)

(assert (=> b!7203568 (= e!4324227 (and tp!2007638 tp!2007636))))

(assert (=> b!7203429 (= tp!2007525 e!4324227)))

(declare-fun b!7203570 () Bool)

(declare-fun tp!2007640 () Bool)

(declare-fun tp!2007637 () Bool)

(assert (=> b!7203570 (= e!4324227 (and tp!2007640 tp!2007637))))

(declare-fun b!7203569 () Bool)

(declare-fun tp!2007639 () Bool)

(assert (=> b!7203569 (= e!4324227 tp!2007639)))

(declare-fun b!7203567 () Bool)

(assert (=> b!7203567 (= e!4324227 tp_is_empty!46347)))

(assert (= (and b!7203429 ((_ is ElementMatch!18395) (h!76228 (t!383933 (exprs!7847 c!10544))))) b!7203567))

(assert (= (and b!7203429 ((_ is Concat!27240) (h!76228 (t!383933 (exprs!7847 c!10544))))) b!7203568))

(assert (= (and b!7203429 ((_ is Star!18395) (h!76228 (t!383933 (exprs!7847 c!10544))))) b!7203569))

(assert (= (and b!7203429 ((_ is Union!18395) (h!76228 (t!383933 (exprs!7847 c!10544))))) b!7203570))

(declare-fun b!7203571 () Bool)

(declare-fun e!4324228 () Bool)

(declare-fun tp!2007641 () Bool)

(declare-fun tp!2007642 () Bool)

(assert (=> b!7203571 (= e!4324228 (and tp!2007641 tp!2007642))))

(assert (=> b!7203429 (= tp!2007526 e!4324228)))

(assert (= (and b!7203429 ((_ is Cons!69780) (t!383933 (t!383933 (exprs!7847 c!10544))))) b!7203571))

(declare-fun b_lambda!276199 () Bool)

(assert (= b_lambda!276197 (or d!2242668 b_lambda!276199)))

(declare-fun bs!1901125 () Bool)

(declare-fun d!2242720 () Bool)

(assert (= bs!1901125 (and d!2242720 d!2242668)))

(assert (=> bs!1901125 (= (dynLambda!28412 lambda!438227 (h!76228 (t!383933 (exprs!7847 c!10544)))) (validRegex!9488 (h!76228 (t!383933 (exprs!7847 c!10544)))))))

(declare-fun m!7892210 () Bool)

(assert (=> bs!1901125 m!7892210))

(assert (=> b!7203512 d!2242720))

(declare-fun b_lambda!276201 () Bool)

(assert (= b_lambda!276191 (or d!2242654 b_lambda!276201)))

(declare-fun bs!1901126 () Bool)

(declare-fun d!2242722 () Bool)

(assert (= bs!1901126 (and d!2242722 d!2242654)))

(assert (=> bs!1901126 (= (dynLambda!28412 lambda!438224 (h!76228 (t!383933 (exprs!7847 c!10544)))) (nullable!7801 (h!76228 (t!383933 (exprs!7847 c!10544)))))))

(declare-fun m!7892212 () Bool)

(assert (=> bs!1901126 m!7892212))

(assert (=> b!7203470 d!2242722))

(declare-fun b_lambda!276203 () Bool)

(assert (= b_lambda!276193 (or d!2242682 b_lambda!276203)))

(declare-fun bs!1901127 () Bool)

(declare-fun d!2242724 () Bool)

(assert (= bs!1901127 (and d!2242724 d!2242682)))

(assert (=> bs!1901127 (= (dynLambda!28412 lambda!438229 (h!76228 (exprs!7847 setElem!53472))) (validRegex!9488 (h!76228 (exprs!7847 setElem!53472))))))

(declare-fun m!7892214 () Bool)

(assert (=> bs!1901127 m!7892214))

(assert (=> b!7203499 d!2242724))

(declare-fun b_lambda!276205 () Bool)

(assert (= b_lambda!276195 (or d!2242674 b_lambda!276205)))

(declare-fun bs!1901128 () Bool)

(declare-fun d!2242726 () Bool)

(assert (= bs!1901128 (and d!2242726 d!2242674)))

(assert (=> bs!1901128 (= (dynLambda!28412 lambda!438228 (h!76228 (t!383933 (exprs!7847 setElem!53466)))) (validRegex!9488 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))))

(declare-fun m!7892216 () Bool)

(assert (=> bs!1901128 m!7892216))

(assert (=> b!7203510 d!2242726))

(check-sat (not b_lambda!276203) (not b!7203532) (not b!7203563) (not b!7203523) (not b!7203496) (not b!7203536) (not b!7203540) (not b!7203521) (not b_lambda!276177) (not b!7203516) (not b!7203500) (not b!7203554) (not b!7203527) (not d!2242714) (not b!7203553) (not b!7203548) (not b!7203544) (not b_lambda!276199) (not b!7203529) (not b!7203515) (not b!7203557) (not bm!656874) (not b!7203517) (not b!7203571) (not b!7203535) (not b_lambda!276175) (not setNonEmpty!53475) (not bs!1901127) (not bs!1901128) (not b!7203533) (not b_lambda!276205) (not b!7203570) (not bm!656875) (not b_lambda!276173) (not b!7203560) (not b!7203541) (not b!7203555) tp_is_empty!46347 (not b!7203524) (not b!7203531) (not d!2242710) (not b!7203511) (not b!7203520) (not b!7203566) (not bs!1901125) (not bm!656878) (not b!7203565) (not b!7203568) (not bm!656877) (not b!7203471) (not b!7203513) (not b!7203545) (not b!7203539) (not b!7203546) (not bs!1901126) (not b!7203561) (not b!7203556) (not b!7203543) (not b!7203559) (not b!7203564) (not b!7203528) (not b!7203569) (not b!7203551) (not b!7203519) (not b!7203537) (not b_lambda!276201) (not b!7203525) (not b!7203549) (not b!7203507) (not b!7203550))
(check-sat)
(get-model)

(declare-fun bm!656891 () Bool)

(declare-fun call!656897 () Bool)

(declare-fun call!656898 () Bool)

(assert (=> bm!656891 (= call!656897 call!656898)))

(declare-fun b!7203674 () Bool)

(declare-fun e!4324290 () Bool)

(assert (=> b!7203674 (= e!4324290 call!656898)))

(declare-fun b!7203676 () Bool)

(declare-fun e!4324285 () Bool)

(declare-fun e!4324286 () Bool)

(assert (=> b!7203676 (= e!4324285 e!4324286)))

(declare-fun res!2930441 () Bool)

(assert (=> b!7203676 (=> (not res!2930441) (not e!4324286))))

(assert (=> b!7203676 (= res!2930441 call!656897)))

(declare-fun c!1339841 () Bool)

(declare-fun c!1339840 () Bool)

(declare-fun bm!656892 () Bool)

(assert (=> bm!656892 (= call!656898 (validRegex!9488 (ite c!1339840 (reg!18724 (h!76228 (t!383933 (exprs!7847 setElem!53466)))) (ite c!1339841 (regTwo!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))) (regOne!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466))))))))))

(declare-fun b!7203677 () Bool)

(declare-fun e!4324287 () Bool)

(assert (=> b!7203677 (= e!4324287 call!656897)))

(declare-fun b!7203678 () Bool)

(declare-fun e!4324288 () Bool)

(declare-fun e!4324289 () Bool)

(assert (=> b!7203678 (= e!4324288 e!4324289)))

(assert (=> b!7203678 (= c!1339840 ((_ is Star!18395) (h!76228 (t!383933 (exprs!7847 setElem!53466)))))))

(declare-fun b!7203679 () Bool)

(declare-fun res!2930439 () Bool)

(assert (=> b!7203679 (=> res!2930439 e!4324285)))

(assert (=> b!7203679 (= res!2930439 (not ((_ is Concat!27240) (h!76228 (t!383933 (exprs!7847 setElem!53466))))))))

(declare-fun e!4324284 () Bool)

(assert (=> b!7203679 (= e!4324284 e!4324285)))

(declare-fun b!7203675 () Bool)

(declare-fun res!2930440 () Bool)

(assert (=> b!7203675 (=> (not res!2930440) (not e!4324287))))

(declare-fun call!656896 () Bool)

(assert (=> b!7203675 (= res!2930440 call!656896)))

(assert (=> b!7203675 (= e!4324284 e!4324287)))

(declare-fun d!2242752 () Bool)

(declare-fun res!2930443 () Bool)

(assert (=> d!2242752 (=> res!2930443 e!4324288)))

(assert (=> d!2242752 (= res!2930443 ((_ is ElementMatch!18395) (h!76228 (t!383933 (exprs!7847 setElem!53466)))))))

(assert (=> d!2242752 (= (validRegex!9488 (h!76228 (t!383933 (exprs!7847 setElem!53466)))) e!4324288)))

(declare-fun b!7203680 () Bool)

(assert (=> b!7203680 (= e!4324289 e!4324290)))

(declare-fun res!2930442 () Bool)

(assert (=> b!7203680 (= res!2930442 (not (nullable!7801 (reg!18724 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))))))

(assert (=> b!7203680 (=> (not res!2930442) (not e!4324290))))

(declare-fun b!7203681 () Bool)

(assert (=> b!7203681 (= e!4324289 e!4324284)))

(assert (=> b!7203681 (= c!1339841 ((_ is Union!18395) (h!76228 (t!383933 (exprs!7847 setElem!53466)))))))

(declare-fun b!7203682 () Bool)

(assert (=> b!7203682 (= e!4324286 call!656896)))

(declare-fun bm!656893 () Bool)

(assert (=> bm!656893 (= call!656896 (validRegex!9488 (ite c!1339841 (regOne!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))))))

(assert (= (and d!2242752 (not res!2930443)) b!7203678))

(assert (= (and b!7203678 c!1339840) b!7203680))

(assert (= (and b!7203678 (not c!1339840)) b!7203681))

(assert (= (and b!7203680 res!2930442) b!7203674))

(assert (= (and b!7203681 c!1339841) b!7203675))

(assert (= (and b!7203681 (not c!1339841)) b!7203679))

(assert (= (and b!7203675 res!2930440) b!7203677))

(assert (= (and b!7203679 (not res!2930439)) b!7203676))

(assert (= (and b!7203676 res!2930441) b!7203682))

(assert (= (or b!7203675 b!7203682) bm!656893))

(assert (= (or b!7203677 b!7203676) bm!656891))

(assert (= (or b!7203674 bm!656891) bm!656892))

(declare-fun m!7892260 () Bool)

(assert (=> bm!656892 m!7892260))

(declare-fun m!7892262 () Bool)

(assert (=> b!7203680 m!7892262))

(declare-fun m!7892264 () Bool)

(assert (=> bm!656893 m!7892264))

(assert (=> bs!1901128 d!2242752))

(declare-fun d!2242754 () Bool)

(assert (=> d!2242754 (= (nullable!7801 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))) (nullableFct!3054 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))))

(declare-fun bs!1901139 () Bool)

(assert (= bs!1901139 d!2242754))

(declare-fun m!7892266 () Bool)

(assert (=> bs!1901139 m!7892266))

(assert (=> b!7203507 d!2242754))

(declare-fun d!2242756 () Bool)

(assert (=> d!2242756 (= (nullable!7801 (h!76228 (t!383933 (exprs!7847 c!10544)))) (nullableFct!3054 (h!76228 (t!383933 (exprs!7847 c!10544)))))))

(declare-fun bs!1901140 () Bool)

(assert (= bs!1901140 d!2242756))

(declare-fun m!7892268 () Bool)

(assert (=> bs!1901140 m!7892268))

(assert (=> bs!1901126 d!2242756))

(declare-fun d!2242758 () Bool)

(declare-fun res!2930444 () Bool)

(declare-fun e!4324291 () Bool)

(assert (=> d!2242758 (=> res!2930444 e!4324291)))

(assert (=> d!2242758 (= res!2930444 ((_ is Nil!69780) (exprs!7847 setElem!53473)))))

(assert (=> d!2242758 (= (forall!17215 (exprs!7847 setElem!53473) lambda!438231) e!4324291)))

(declare-fun b!7203683 () Bool)

(declare-fun e!4324292 () Bool)

(assert (=> b!7203683 (= e!4324291 e!4324292)))

(declare-fun res!2930445 () Bool)

(assert (=> b!7203683 (=> (not res!2930445) (not e!4324292))))

(assert (=> b!7203683 (= res!2930445 (dynLambda!28412 lambda!438231 (h!76228 (exprs!7847 setElem!53473))))))

(declare-fun b!7203684 () Bool)

(assert (=> b!7203684 (= e!4324292 (forall!17215 (t!383933 (exprs!7847 setElem!53473)) lambda!438231))))

(assert (= (and d!2242758 (not res!2930444)) b!7203683))

(assert (= (and b!7203683 res!2930445) b!7203684))

(declare-fun b_lambda!276223 () Bool)

(assert (=> (not b_lambda!276223) (not b!7203683)))

(declare-fun m!7892270 () Bool)

(assert (=> b!7203683 m!7892270))

(declare-fun m!7892272 () Bool)

(assert (=> b!7203684 m!7892272))

(assert (=> d!2242714 d!2242758))

(declare-fun bm!656898 () Bool)

(declare-fun call!656903 () Bool)

(declare-fun c!1339844 () Bool)

(assert (=> bm!656898 (= call!656903 (nullable!7801 (ite c!1339844 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))))))

(declare-fun b!7203700 () Bool)

(declare-fun e!4324310 () Bool)

(declare-fun e!4324308 () Bool)

(assert (=> b!7203700 (= e!4324310 e!4324308)))

(declare-fun res!2930459 () Bool)

(assert (=> b!7203700 (= res!2930459 call!656903)))

(assert (=> b!7203700 (=> res!2930459 e!4324308)))

(declare-fun b!7203701 () Bool)

(declare-fun e!4324306 () Bool)

(declare-fun e!4324307 () Bool)

(assert (=> b!7203701 (= e!4324306 e!4324307)))

(declare-fun res!2930460 () Bool)

(assert (=> b!7203701 (=> res!2930460 e!4324307)))

(assert (=> b!7203701 (= res!2930460 ((_ is Star!18395) (h!76228 (exprs!7847 c!10544))))))

(declare-fun bm!656899 () Bool)

(declare-fun call!656904 () Bool)

(assert (=> bm!656899 (= call!656904 (nullable!7801 (ite c!1339844 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544))))))))

(declare-fun b!7203702 () Bool)

(assert (=> b!7203702 (= e!4324307 e!4324310)))

(assert (=> b!7203702 (= c!1339844 ((_ is Union!18395) (h!76228 (exprs!7847 c!10544))))))

(declare-fun b!7203703 () Bool)

(declare-fun e!4324305 () Bool)

(assert (=> b!7203703 (= e!4324305 e!4324306)))

(declare-fun res!2930457 () Bool)

(assert (=> b!7203703 (=> (not res!2930457) (not e!4324306))))

(assert (=> b!7203703 (= res!2930457 (and (not ((_ is EmptyLang!18395) (h!76228 (exprs!7847 c!10544)))) (not ((_ is ElementMatch!18395) (h!76228 (exprs!7847 c!10544))))))))

(declare-fun d!2242760 () Bool)

(declare-fun res!2930458 () Bool)

(assert (=> d!2242760 (=> res!2930458 e!4324305)))

(assert (=> d!2242760 (= res!2930458 ((_ is EmptyExpr!18395) (h!76228 (exprs!7847 c!10544))))))

(assert (=> d!2242760 (= (nullableFct!3054 (h!76228 (exprs!7847 c!10544))) e!4324305)))

(declare-fun b!7203699 () Bool)

(assert (=> b!7203699 (= e!4324308 call!656904)))

(declare-fun b!7203704 () Bool)

(declare-fun e!4324309 () Bool)

(assert (=> b!7203704 (= e!4324310 e!4324309)))

(declare-fun res!2930456 () Bool)

(assert (=> b!7203704 (= res!2930456 call!656904)))

(assert (=> b!7203704 (=> (not res!2930456) (not e!4324309))))

(declare-fun b!7203705 () Bool)

(assert (=> b!7203705 (= e!4324309 call!656903)))

(assert (= (and d!2242760 (not res!2930458)) b!7203703))

(assert (= (and b!7203703 res!2930457) b!7203701))

(assert (= (and b!7203701 (not res!2930460)) b!7203702))

(assert (= (and b!7203702 c!1339844) b!7203700))

(assert (= (and b!7203702 (not c!1339844)) b!7203704))

(assert (= (and b!7203700 (not res!2930459)) b!7203699))

(assert (= (and b!7203704 res!2930456) b!7203705))

(assert (= (or b!7203699 b!7203704) bm!656899))

(assert (= (or b!7203700 b!7203705) bm!656898))

(declare-fun m!7892274 () Bool)

(assert (=> bm!656898 m!7892274))

(declare-fun m!7892276 () Bool)

(assert (=> bm!656899 m!7892276))

(assert (=> d!2242710 d!2242760))

(declare-fun d!2242762 () Bool)

(declare-fun res!2930461 () Bool)

(declare-fun e!4324311 () Bool)

(assert (=> d!2242762 (=> res!2930461 e!4324311)))

(assert (=> d!2242762 (= res!2930461 ((_ is Nil!69780) (t!383933 (t!383933 (exprs!7847 c!10544)))))))

(assert (=> d!2242762 (= (forall!17215 (t!383933 (t!383933 (exprs!7847 c!10544))) lambda!438227) e!4324311)))

(declare-fun b!7203706 () Bool)

(declare-fun e!4324312 () Bool)

(assert (=> b!7203706 (= e!4324311 e!4324312)))

(declare-fun res!2930462 () Bool)

(assert (=> b!7203706 (=> (not res!2930462) (not e!4324312))))

(assert (=> b!7203706 (= res!2930462 (dynLambda!28412 lambda!438227 (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544))))))))

(declare-fun b!7203707 () Bool)

(assert (=> b!7203707 (= e!4324312 (forall!17215 (t!383933 (t!383933 (t!383933 (exprs!7847 c!10544)))) lambda!438227))))

(assert (= (and d!2242762 (not res!2930461)) b!7203706))

(assert (= (and b!7203706 res!2930462) b!7203707))

(declare-fun b_lambda!276225 () Bool)

(assert (=> (not b_lambda!276225) (not b!7203706)))

(declare-fun m!7892278 () Bool)

(assert (=> b!7203706 m!7892278))

(declare-fun m!7892280 () Bool)

(assert (=> b!7203707 m!7892280))

(assert (=> b!7203513 d!2242762))

(declare-fun bs!1901141 () Bool)

(declare-fun d!2242764 () Bool)

(assert (= bs!1901141 (and d!2242764 d!2242674)))

(declare-fun lambda!438233 () Int)

(assert (=> bs!1901141 (= lambda!438233 lambda!438228)))

(declare-fun bs!1901142 () Bool)

(assert (= bs!1901142 (and d!2242764 d!2242682)))

(assert (=> bs!1901142 (= lambda!438233 lambda!438229)))

(declare-fun bs!1901143 () Bool)

(assert (= bs!1901143 (and d!2242764 d!2242654)))

(assert (=> bs!1901143 (not (= lambda!438233 lambda!438224))))

(declare-fun bs!1901144 () Bool)

(assert (= bs!1901144 (and d!2242764 d!2242714)))

(assert (=> bs!1901144 (= lambda!438233 lambda!438231)))

(declare-fun bs!1901145 () Bool)

(assert (= bs!1901145 (and d!2242764 d!2242668)))

(assert (=> bs!1901145 (= lambda!438233 lambda!438227)))

(assert (=> d!2242764 (= (inv!89009 setElem!53475) (forall!17215 (exprs!7847 setElem!53475) lambda!438233))))

(declare-fun bs!1901146 () Bool)

(assert (= bs!1901146 d!2242764))

(declare-fun m!7892282 () Bool)

(assert (=> bs!1901146 m!7892282))

(assert (=> setNonEmpty!53475 d!2242764))

(declare-fun bm!656900 () Bool)

(declare-fun call!656906 () Bool)

(declare-fun call!656907 () Bool)

(assert (=> bm!656900 (= call!656906 call!656907)))

(declare-fun b!7203708 () Bool)

(declare-fun e!4324319 () Bool)

(assert (=> b!7203708 (= e!4324319 call!656907)))

(declare-fun b!7203710 () Bool)

(declare-fun e!4324314 () Bool)

(declare-fun e!4324315 () Bool)

(assert (=> b!7203710 (= e!4324314 e!4324315)))

(declare-fun res!2930465 () Bool)

(assert (=> b!7203710 (=> (not res!2930465) (not e!4324315))))

(assert (=> b!7203710 (= res!2930465 call!656906)))

(declare-fun c!1339845 () Bool)

(declare-fun c!1339846 () Bool)

(declare-fun bm!656901 () Bool)

(assert (=> bm!656901 (= call!656907 (validRegex!9488 (ite c!1339845 (reg!18724 (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))) (ite c!1339846 (regTwo!37303 (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))) (regOne!37302 (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))))))))

(declare-fun b!7203711 () Bool)

(declare-fun e!4324316 () Bool)

(assert (=> b!7203711 (= e!4324316 call!656906)))

(declare-fun b!7203712 () Bool)

(declare-fun e!4324317 () Bool)

(declare-fun e!4324318 () Bool)

(assert (=> b!7203712 (= e!4324317 e!4324318)))

(assert (=> b!7203712 (= c!1339845 ((_ is Star!18395) (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))))))

(declare-fun b!7203713 () Bool)

(declare-fun res!2930463 () Bool)

(assert (=> b!7203713 (=> res!2930463 e!4324314)))

(assert (=> b!7203713 (= res!2930463 (not ((_ is Concat!27240) (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))))))

(declare-fun e!4324313 () Bool)

(assert (=> b!7203713 (= e!4324313 e!4324314)))

(declare-fun b!7203709 () Bool)

(declare-fun res!2930464 () Bool)

(assert (=> b!7203709 (=> (not res!2930464) (not e!4324316))))

(declare-fun call!656905 () Bool)

(assert (=> b!7203709 (= res!2930464 call!656905)))

(assert (=> b!7203709 (= e!4324313 e!4324316)))

(declare-fun d!2242766 () Bool)

(declare-fun res!2930467 () Bool)

(assert (=> d!2242766 (=> res!2930467 e!4324317)))

(assert (=> d!2242766 (= res!2930467 ((_ is ElementMatch!18395) (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))))))

(assert (=> d!2242766 (= (validRegex!9488 (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))) e!4324317)))

(declare-fun b!7203714 () Bool)

(assert (=> b!7203714 (= e!4324318 e!4324319)))

(declare-fun res!2930466 () Bool)

(assert (=> b!7203714 (= res!2930466 (not (nullable!7801 (reg!18724 (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))))))))

(assert (=> b!7203714 (=> (not res!2930466) (not e!4324319))))

(declare-fun b!7203715 () Bool)

(assert (=> b!7203715 (= e!4324318 e!4324313)))

(assert (=> b!7203715 (= c!1339846 ((_ is Union!18395) (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))))))

(declare-fun b!7203716 () Bool)

(assert (=> b!7203716 (= e!4324315 call!656905)))

(declare-fun bm!656902 () Bool)

(assert (=> bm!656902 (= call!656905 (validRegex!9488 (ite c!1339846 (regOne!37303 (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))) (regTwo!37302 (ite c!1339829 (regOne!37303 (h!76228 (exprs!7847 c!10544))) (regTwo!37302 (h!76228 (exprs!7847 c!10544))))))))))

(assert (= (and d!2242766 (not res!2930467)) b!7203712))

(assert (= (and b!7203712 c!1339845) b!7203714))

(assert (= (and b!7203712 (not c!1339845)) b!7203715))

(assert (= (and b!7203714 res!2930466) b!7203708))

(assert (= (and b!7203715 c!1339846) b!7203709))

(assert (= (and b!7203715 (not c!1339846)) b!7203713))

(assert (= (and b!7203709 res!2930464) b!7203711))

(assert (= (and b!7203713 (not res!2930463)) b!7203710))

(assert (= (and b!7203710 res!2930465) b!7203716))

(assert (= (or b!7203709 b!7203716) bm!656902))

(assert (= (or b!7203711 b!7203710) bm!656900))

(assert (= (or b!7203708 bm!656900) bm!656901))

(declare-fun m!7892284 () Bool)

(assert (=> bm!656901 m!7892284))

(declare-fun m!7892286 () Bool)

(assert (=> b!7203714 m!7892286))

(declare-fun m!7892288 () Bool)

(assert (=> bm!656902 m!7892288))

(assert (=> bm!656875 d!2242766))

(declare-fun d!2242768 () Bool)

(declare-fun res!2930468 () Bool)

(declare-fun e!4324320 () Bool)

(assert (=> d!2242768 (=> res!2930468 e!4324320)))

(assert (=> d!2242768 (= res!2930468 ((_ is Nil!69780) (t!383933 (t!383933 (exprs!7847 c!10544)))))))

(assert (=> d!2242768 (= (forall!17215 (t!383933 (t!383933 (exprs!7847 c!10544))) lambda!438224) e!4324320)))

(declare-fun b!7203717 () Bool)

(declare-fun e!4324321 () Bool)

(assert (=> b!7203717 (= e!4324320 e!4324321)))

(declare-fun res!2930469 () Bool)

(assert (=> b!7203717 (=> (not res!2930469) (not e!4324321))))

(assert (=> b!7203717 (= res!2930469 (dynLambda!28412 lambda!438224 (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544))))))))

(declare-fun b!7203718 () Bool)

(assert (=> b!7203718 (= e!4324321 (forall!17215 (t!383933 (t!383933 (t!383933 (exprs!7847 c!10544)))) lambda!438224))))

(assert (= (and d!2242768 (not res!2930468)) b!7203717))

(assert (= (and b!7203717 res!2930469) b!7203718))

(declare-fun b_lambda!276227 () Bool)

(assert (=> (not b_lambda!276227) (not b!7203717)))

(declare-fun m!7892290 () Bool)

(assert (=> b!7203717 m!7892290))

(declare-fun m!7892292 () Bool)

(assert (=> b!7203718 m!7892292))

(assert (=> b!7203471 d!2242768))

(declare-fun bm!656903 () Bool)

(declare-fun call!656909 () Bool)

(declare-fun call!656910 () Bool)

(assert (=> bm!656903 (= call!656909 call!656910)))

(declare-fun b!7203719 () Bool)

(declare-fun e!4324328 () Bool)

(assert (=> b!7203719 (= e!4324328 call!656910)))

(declare-fun b!7203721 () Bool)

(declare-fun e!4324323 () Bool)

(declare-fun e!4324324 () Bool)

(assert (=> b!7203721 (= e!4324323 e!4324324)))

(declare-fun res!2930472 () Bool)

(assert (=> b!7203721 (=> (not res!2930472) (not e!4324324))))

(assert (=> b!7203721 (= res!2930472 call!656909)))

(declare-fun c!1339847 () Bool)

(declare-fun bm!656904 () Bool)

(declare-fun c!1339848 () Bool)

(assert (=> bm!656904 (= call!656910 (validRegex!9488 (ite c!1339847 (reg!18724 (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) (ite c!1339848 (regTwo!37303 (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) (regOne!37302 (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466))))))))))))

(declare-fun b!7203722 () Bool)

(declare-fun e!4324325 () Bool)

(assert (=> b!7203722 (= e!4324325 call!656909)))

(declare-fun b!7203723 () Bool)

(declare-fun e!4324326 () Bool)

(declare-fun e!4324327 () Bool)

(assert (=> b!7203723 (= e!4324326 e!4324327)))

(assert (=> b!7203723 (= c!1339847 ((_ is Star!18395) (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))))))

(declare-fun b!7203724 () Bool)

(declare-fun res!2930470 () Bool)

(assert (=> b!7203724 (=> res!2930470 e!4324323)))

(assert (=> b!7203724 (= res!2930470 (not ((_ is Concat!27240) (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466))))))))))

(declare-fun e!4324322 () Bool)

(assert (=> b!7203724 (= e!4324322 e!4324323)))

(declare-fun b!7203720 () Bool)

(declare-fun res!2930471 () Bool)

(assert (=> b!7203720 (=> (not res!2930471) (not e!4324325))))

(declare-fun call!656908 () Bool)

(assert (=> b!7203720 (= res!2930471 call!656908)))

(assert (=> b!7203720 (= e!4324322 e!4324325)))

(declare-fun d!2242770 () Bool)

(declare-fun res!2930474 () Bool)

(assert (=> d!2242770 (=> res!2930474 e!4324326)))

(assert (=> d!2242770 (= res!2930474 ((_ is ElementMatch!18395) (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))))))

(assert (=> d!2242770 (= (validRegex!9488 (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) e!4324326)))

(declare-fun b!7203725 () Bool)

(assert (=> b!7203725 (= e!4324327 e!4324328)))

(declare-fun res!2930473 () Bool)

(assert (=> b!7203725 (= res!2930473 (not (nullable!7801 (reg!18724 (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))))))))

(assert (=> b!7203725 (=> (not res!2930473) (not e!4324328))))

(declare-fun b!7203726 () Bool)

(assert (=> b!7203726 (= e!4324327 e!4324322)))

(assert (=> b!7203726 (= c!1339848 ((_ is Union!18395) (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))))))

(declare-fun b!7203727 () Bool)

(assert (=> b!7203727 (= e!4324324 call!656908)))

(declare-fun bm!656905 () Bool)

(assert (=> bm!656905 (= call!656908 (validRegex!9488 (ite c!1339848 (regOne!37303 (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) (regTwo!37302 (ite c!1339830 (reg!18724 (h!76228 (exprs!7847 setElem!53466))) (ite c!1339831 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466))) (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))))))))

(assert (= (and d!2242770 (not res!2930474)) b!7203723))

(assert (= (and b!7203723 c!1339847) b!7203725))

(assert (= (and b!7203723 (not c!1339847)) b!7203726))

(assert (= (and b!7203725 res!2930473) b!7203719))

(assert (= (and b!7203726 c!1339848) b!7203720))

(assert (= (and b!7203726 (not c!1339848)) b!7203724))

(assert (= (and b!7203720 res!2930471) b!7203722))

(assert (= (and b!7203724 (not res!2930470)) b!7203721))

(assert (= (and b!7203721 res!2930472) b!7203727))

(assert (= (or b!7203720 b!7203727) bm!656905))

(assert (= (or b!7203722 b!7203721) bm!656903))

(assert (= (or b!7203719 bm!656903) bm!656904))

(declare-fun m!7892294 () Bool)

(assert (=> bm!656904 m!7892294))

(declare-fun m!7892296 () Bool)

(assert (=> b!7203725 m!7892296))

(declare-fun m!7892298 () Bool)

(assert (=> bm!656905 m!7892298))

(assert (=> bm!656877 d!2242770))

(declare-fun d!2242772 () Bool)

(assert (=> d!2242772 (= (nullable!7801 (reg!18724 (h!76228 (exprs!7847 c!10544)))) (nullableFct!3054 (reg!18724 (h!76228 (exprs!7847 c!10544)))))))

(declare-fun bs!1901147 () Bool)

(assert (= bs!1901147 d!2242772))

(declare-fun m!7892300 () Bool)

(assert (=> bs!1901147 m!7892300))

(assert (=> b!7203496 d!2242772))

(declare-fun bm!656906 () Bool)

(declare-fun call!656912 () Bool)

(declare-fun call!656913 () Bool)

(assert (=> bm!656906 (= call!656912 call!656913)))

(declare-fun b!7203728 () Bool)

(declare-fun e!4324335 () Bool)

(assert (=> b!7203728 (= e!4324335 call!656913)))

(declare-fun b!7203730 () Bool)

(declare-fun e!4324330 () Bool)

(declare-fun e!4324331 () Bool)

(assert (=> b!7203730 (= e!4324330 e!4324331)))

(declare-fun res!2930477 () Bool)

(assert (=> b!7203730 (=> (not res!2930477) (not e!4324331))))

(assert (=> b!7203730 (= res!2930477 call!656912)))

(declare-fun c!1339850 () Bool)

(declare-fun c!1339849 () Bool)

(declare-fun bm!656907 () Bool)

(assert (=> bm!656907 (= call!656913 (validRegex!9488 (ite c!1339849 (reg!18724 (h!76228 (exprs!7847 setElem!53472))) (ite c!1339850 (regTwo!37303 (h!76228 (exprs!7847 setElem!53472))) (regOne!37302 (h!76228 (exprs!7847 setElem!53472)))))))))

(declare-fun b!7203731 () Bool)

(declare-fun e!4324332 () Bool)

(assert (=> b!7203731 (= e!4324332 call!656912)))

(declare-fun b!7203732 () Bool)

(declare-fun e!4324333 () Bool)

(declare-fun e!4324334 () Bool)

(assert (=> b!7203732 (= e!4324333 e!4324334)))

(assert (=> b!7203732 (= c!1339849 ((_ is Star!18395) (h!76228 (exprs!7847 setElem!53472))))))

(declare-fun b!7203733 () Bool)

(declare-fun res!2930475 () Bool)

(assert (=> b!7203733 (=> res!2930475 e!4324330)))

(assert (=> b!7203733 (= res!2930475 (not ((_ is Concat!27240) (h!76228 (exprs!7847 setElem!53472)))))))

(declare-fun e!4324329 () Bool)

(assert (=> b!7203733 (= e!4324329 e!4324330)))

(declare-fun b!7203729 () Bool)

(declare-fun res!2930476 () Bool)

(assert (=> b!7203729 (=> (not res!2930476) (not e!4324332))))

(declare-fun call!656911 () Bool)

(assert (=> b!7203729 (= res!2930476 call!656911)))

(assert (=> b!7203729 (= e!4324329 e!4324332)))

(declare-fun d!2242774 () Bool)

(declare-fun res!2930479 () Bool)

(assert (=> d!2242774 (=> res!2930479 e!4324333)))

(assert (=> d!2242774 (= res!2930479 ((_ is ElementMatch!18395) (h!76228 (exprs!7847 setElem!53472))))))

(assert (=> d!2242774 (= (validRegex!9488 (h!76228 (exprs!7847 setElem!53472))) e!4324333)))

(declare-fun b!7203734 () Bool)

(assert (=> b!7203734 (= e!4324334 e!4324335)))

(declare-fun res!2930478 () Bool)

(assert (=> b!7203734 (= res!2930478 (not (nullable!7801 (reg!18724 (h!76228 (exprs!7847 setElem!53472))))))))

(assert (=> b!7203734 (=> (not res!2930478) (not e!4324335))))

(declare-fun b!7203735 () Bool)

(assert (=> b!7203735 (= e!4324334 e!4324329)))

(assert (=> b!7203735 (= c!1339850 ((_ is Union!18395) (h!76228 (exprs!7847 setElem!53472))))))

(declare-fun b!7203736 () Bool)

(assert (=> b!7203736 (= e!4324331 call!656911)))

(declare-fun bm!656908 () Bool)

(assert (=> bm!656908 (= call!656911 (validRegex!9488 (ite c!1339850 (regOne!37303 (h!76228 (exprs!7847 setElem!53472))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53472))))))))

(assert (= (and d!2242774 (not res!2930479)) b!7203732))

(assert (= (and b!7203732 c!1339849) b!7203734))

(assert (= (and b!7203732 (not c!1339849)) b!7203735))

(assert (= (and b!7203734 res!2930478) b!7203728))

(assert (= (and b!7203735 c!1339850) b!7203729))

(assert (= (and b!7203735 (not c!1339850)) b!7203733))

(assert (= (and b!7203729 res!2930476) b!7203731))

(assert (= (and b!7203733 (not res!2930475)) b!7203730))

(assert (= (and b!7203730 res!2930477) b!7203736))

(assert (= (or b!7203729 b!7203736) bm!656908))

(assert (= (or b!7203731 b!7203730) bm!656906))

(assert (= (or b!7203728 bm!656906) bm!656907))

(declare-fun m!7892302 () Bool)

(assert (=> bm!656907 m!7892302))

(declare-fun m!7892304 () Bool)

(assert (=> b!7203734 m!7892304))

(declare-fun m!7892306 () Bool)

(assert (=> bm!656908 m!7892306))

(assert (=> bs!1901127 d!2242774))

(declare-fun d!2242776 () Bool)

(declare-fun res!2930480 () Bool)

(declare-fun e!4324336 () Bool)

(assert (=> d!2242776 (=> res!2930480 e!4324336)))

(assert (=> d!2242776 (= res!2930480 ((_ is Nil!69780) (t!383933 (t!383933 (exprs!7847 setElem!53466)))))))

(assert (=> d!2242776 (= (forall!17215 (t!383933 (t!383933 (exprs!7847 setElem!53466))) lambda!438228) e!4324336)))

(declare-fun b!7203737 () Bool)

(declare-fun e!4324337 () Bool)

(assert (=> b!7203737 (= e!4324336 e!4324337)))

(declare-fun res!2930481 () Bool)

(assert (=> b!7203737 (=> (not res!2930481) (not e!4324337))))

(assert (=> b!7203737 (= res!2930481 (dynLambda!28412 lambda!438228 (h!76228 (t!383933 (t!383933 (exprs!7847 setElem!53466))))))))

(declare-fun b!7203738 () Bool)

(assert (=> b!7203738 (= e!4324337 (forall!17215 (t!383933 (t!383933 (t!383933 (exprs!7847 setElem!53466)))) lambda!438228))))

(assert (= (and d!2242776 (not res!2930480)) b!7203737))

(assert (= (and b!7203737 res!2930481) b!7203738))

(declare-fun b_lambda!276229 () Bool)

(assert (=> (not b_lambda!276229) (not b!7203737)))

(declare-fun m!7892308 () Bool)

(assert (=> b!7203737 m!7892308))

(declare-fun m!7892310 () Bool)

(assert (=> b!7203738 m!7892310))

(assert (=> b!7203511 d!2242776))

(declare-fun bm!656909 () Bool)

(declare-fun call!656915 () Bool)

(declare-fun call!656916 () Bool)

(assert (=> bm!656909 (= call!656915 call!656916)))

(declare-fun b!7203739 () Bool)

(declare-fun e!4324344 () Bool)

(assert (=> b!7203739 (= e!4324344 call!656916)))

(declare-fun b!7203741 () Bool)

(declare-fun e!4324339 () Bool)

(declare-fun e!4324340 () Bool)

(assert (=> b!7203741 (= e!4324339 e!4324340)))

(declare-fun res!2930484 () Bool)

(assert (=> b!7203741 (=> (not res!2930484) (not e!4324340))))

(assert (=> b!7203741 (= res!2930484 call!656915)))

(declare-fun c!1339851 () Bool)

(declare-fun c!1339852 () Bool)

(declare-fun bm!656910 () Bool)

(assert (=> bm!656910 (= call!656916 (validRegex!9488 (ite c!1339851 (reg!18724 (h!76228 (t!383933 (exprs!7847 c!10544)))) (ite c!1339852 (regTwo!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))) (regOne!37302 (h!76228 (t!383933 (exprs!7847 c!10544))))))))))

(declare-fun b!7203742 () Bool)

(declare-fun e!4324341 () Bool)

(assert (=> b!7203742 (= e!4324341 call!656915)))

(declare-fun b!7203743 () Bool)

(declare-fun e!4324342 () Bool)

(declare-fun e!4324343 () Bool)

(assert (=> b!7203743 (= e!4324342 e!4324343)))

(assert (=> b!7203743 (= c!1339851 ((_ is Star!18395) (h!76228 (t!383933 (exprs!7847 c!10544)))))))

(declare-fun b!7203744 () Bool)

(declare-fun res!2930482 () Bool)

(assert (=> b!7203744 (=> res!2930482 e!4324339)))

(assert (=> b!7203744 (= res!2930482 (not ((_ is Concat!27240) (h!76228 (t!383933 (exprs!7847 c!10544))))))))

(declare-fun e!4324338 () Bool)

(assert (=> b!7203744 (= e!4324338 e!4324339)))

(declare-fun b!7203740 () Bool)

(declare-fun res!2930483 () Bool)

(assert (=> b!7203740 (=> (not res!2930483) (not e!4324341))))

(declare-fun call!656914 () Bool)

(assert (=> b!7203740 (= res!2930483 call!656914)))

(assert (=> b!7203740 (= e!4324338 e!4324341)))

(declare-fun d!2242778 () Bool)

(declare-fun res!2930486 () Bool)

(assert (=> d!2242778 (=> res!2930486 e!4324342)))

(assert (=> d!2242778 (= res!2930486 ((_ is ElementMatch!18395) (h!76228 (t!383933 (exprs!7847 c!10544)))))))

(assert (=> d!2242778 (= (validRegex!9488 (h!76228 (t!383933 (exprs!7847 c!10544)))) e!4324342)))

(declare-fun b!7203745 () Bool)

(assert (=> b!7203745 (= e!4324343 e!4324344)))

(declare-fun res!2930485 () Bool)

(assert (=> b!7203745 (= res!2930485 (not (nullable!7801 (reg!18724 (h!76228 (t!383933 (exprs!7847 c!10544)))))))))

(assert (=> b!7203745 (=> (not res!2930485) (not e!4324344))))

(declare-fun b!7203746 () Bool)

(assert (=> b!7203746 (= e!4324343 e!4324338)))

(assert (=> b!7203746 (= c!1339852 ((_ is Union!18395) (h!76228 (t!383933 (exprs!7847 c!10544)))))))

(declare-fun b!7203747 () Bool)

(assert (=> b!7203747 (= e!4324340 call!656914)))

(declare-fun bm!656911 () Bool)

(assert (=> bm!656911 (= call!656914 (validRegex!9488 (ite c!1339852 (regOne!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 c!10544)))))))))

(assert (= (and d!2242778 (not res!2930486)) b!7203743))

(assert (= (and b!7203743 c!1339851) b!7203745))

(assert (= (and b!7203743 (not c!1339851)) b!7203746))

(assert (= (and b!7203745 res!2930485) b!7203739))

(assert (= (and b!7203746 c!1339852) b!7203740))

(assert (= (and b!7203746 (not c!1339852)) b!7203744))

(assert (= (and b!7203740 res!2930483) b!7203742))

(assert (= (and b!7203744 (not res!2930482)) b!7203741))

(assert (= (and b!7203741 res!2930484) b!7203747))

(assert (= (or b!7203740 b!7203747) bm!656911))

(assert (= (or b!7203742 b!7203741) bm!656909))

(assert (= (or b!7203739 bm!656909) bm!656910))

(declare-fun m!7892312 () Bool)

(assert (=> bm!656910 m!7892312))

(declare-fun m!7892314 () Bool)

(assert (=> b!7203745 m!7892314))

(declare-fun m!7892316 () Bool)

(assert (=> bm!656911 m!7892316))

(assert (=> bs!1901125 d!2242778))

(declare-fun bm!656912 () Bool)

(declare-fun call!656918 () Bool)

(declare-fun call!656919 () Bool)

(assert (=> bm!656912 (= call!656918 call!656919)))

(declare-fun b!7203748 () Bool)

(declare-fun e!4324351 () Bool)

(assert (=> b!7203748 (= e!4324351 call!656919)))

(declare-fun b!7203750 () Bool)

(declare-fun e!4324346 () Bool)

(declare-fun e!4324347 () Bool)

(assert (=> b!7203750 (= e!4324346 e!4324347)))

(declare-fun res!2930489 () Bool)

(assert (=> b!7203750 (=> (not res!2930489) (not e!4324347))))

(assert (=> b!7203750 (= res!2930489 call!656918)))

(declare-fun bm!656913 () Bool)

(declare-fun c!1339854 () Bool)

(declare-fun c!1339853 () Bool)

(assert (=> bm!656913 (= call!656919 (validRegex!9488 (ite c!1339853 (reg!18724 (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))) (ite c!1339854 (regTwo!37303 (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))) (regOne!37302 (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))))))))

(declare-fun b!7203751 () Bool)

(declare-fun e!4324348 () Bool)

(assert (=> b!7203751 (= e!4324348 call!656918)))

(declare-fun b!7203752 () Bool)

(declare-fun e!4324349 () Bool)

(declare-fun e!4324350 () Bool)

(assert (=> b!7203752 (= e!4324349 e!4324350)))

(assert (=> b!7203752 (= c!1339853 ((_ is Star!18395) (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))))))

(declare-fun b!7203753 () Bool)

(declare-fun res!2930487 () Bool)

(assert (=> b!7203753 (=> res!2930487 e!4324346)))

(assert (=> b!7203753 (= res!2930487 (not ((_ is Concat!27240) (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))))))

(declare-fun e!4324345 () Bool)

(assert (=> b!7203753 (= e!4324345 e!4324346)))

(declare-fun b!7203749 () Bool)

(declare-fun res!2930488 () Bool)

(assert (=> b!7203749 (=> (not res!2930488) (not e!4324348))))

(declare-fun call!656917 () Bool)

(assert (=> b!7203749 (= res!2930488 call!656917)))

(assert (=> b!7203749 (= e!4324345 e!4324348)))

(declare-fun d!2242780 () Bool)

(declare-fun res!2930491 () Bool)

(assert (=> d!2242780 (=> res!2930491 e!4324349)))

(assert (=> d!2242780 (= res!2930491 ((_ is ElementMatch!18395) (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))))))

(assert (=> d!2242780 (= (validRegex!9488 (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))) e!4324349)))

(declare-fun b!7203754 () Bool)

(assert (=> b!7203754 (= e!4324350 e!4324351)))

(declare-fun res!2930490 () Bool)

(assert (=> b!7203754 (= res!2930490 (not (nullable!7801 (reg!18724 (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))))))))

(assert (=> b!7203754 (=> (not res!2930490) (not e!4324351))))

(declare-fun b!7203755 () Bool)

(assert (=> b!7203755 (= e!4324350 e!4324345)))

(assert (=> b!7203755 (= c!1339854 ((_ is Union!18395) (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))))))

(declare-fun b!7203756 () Bool)

(assert (=> b!7203756 (= e!4324347 call!656917)))

(declare-fun bm!656914 () Bool)

(assert (=> bm!656914 (= call!656917 (validRegex!9488 (ite c!1339854 (regOne!37303 (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))) (regTwo!37302 (ite c!1339831 (regOne!37303 (h!76228 (exprs!7847 setElem!53466))) (regTwo!37302 (h!76228 (exprs!7847 setElem!53466))))))))))

(assert (= (and d!2242780 (not res!2930491)) b!7203752))

(assert (= (and b!7203752 c!1339853) b!7203754))

(assert (= (and b!7203752 (not c!1339853)) b!7203755))

(assert (= (and b!7203754 res!2930490) b!7203748))

(assert (= (and b!7203755 c!1339854) b!7203749))

(assert (= (and b!7203755 (not c!1339854)) b!7203753))

(assert (= (and b!7203749 res!2930488) b!7203751))

(assert (= (and b!7203753 (not res!2930487)) b!7203750))

(assert (= (and b!7203750 res!2930489) b!7203756))

(assert (= (or b!7203749 b!7203756) bm!656914))

(assert (= (or b!7203751 b!7203750) bm!656912))

(assert (= (or b!7203748 bm!656912) bm!656913))

(declare-fun m!7892318 () Bool)

(assert (=> bm!656913 m!7892318))

(declare-fun m!7892320 () Bool)

(assert (=> b!7203754 m!7892320))

(declare-fun m!7892322 () Bool)

(assert (=> bm!656914 m!7892322))

(assert (=> bm!656878 d!2242780))

(declare-fun d!2242782 () Bool)

(declare-fun res!2930492 () Bool)

(declare-fun e!4324352 () Bool)

(assert (=> d!2242782 (=> res!2930492 e!4324352)))

(assert (=> d!2242782 (= res!2930492 ((_ is Nil!69780) (t!383933 (exprs!7847 setElem!53472))))))

(assert (=> d!2242782 (= (forall!17215 (t!383933 (exprs!7847 setElem!53472)) lambda!438229) e!4324352)))

(declare-fun b!7203757 () Bool)

(declare-fun e!4324353 () Bool)

(assert (=> b!7203757 (= e!4324352 e!4324353)))

(declare-fun res!2930493 () Bool)

(assert (=> b!7203757 (=> (not res!2930493) (not e!4324353))))

(assert (=> b!7203757 (= res!2930493 (dynLambda!28412 lambda!438229 (h!76228 (t!383933 (exprs!7847 setElem!53472)))))))

(declare-fun b!7203758 () Bool)

(assert (=> b!7203758 (= e!4324353 (forall!17215 (t!383933 (t!383933 (exprs!7847 setElem!53472))) lambda!438229))))

(assert (= (and d!2242782 (not res!2930492)) b!7203757))

(assert (= (and b!7203757 res!2930493) b!7203758))

(declare-fun b_lambda!276231 () Bool)

(assert (=> (not b_lambda!276231) (not b!7203757)))

(declare-fun m!7892324 () Bool)

(assert (=> b!7203757 m!7892324))

(declare-fun m!7892326 () Bool)

(assert (=> b!7203758 m!7892326))

(assert (=> b!7203500 d!2242782))

(declare-fun bm!656915 () Bool)

(declare-fun call!656921 () Bool)

(declare-fun call!656922 () Bool)

(assert (=> bm!656915 (= call!656921 call!656922)))

(declare-fun b!7203759 () Bool)

(declare-fun e!4324360 () Bool)

(assert (=> b!7203759 (= e!4324360 call!656922)))

(declare-fun b!7203761 () Bool)

(declare-fun e!4324355 () Bool)

(declare-fun e!4324356 () Bool)

(assert (=> b!7203761 (= e!4324355 e!4324356)))

(declare-fun res!2930496 () Bool)

(assert (=> b!7203761 (=> (not res!2930496) (not e!4324356))))

(assert (=> b!7203761 (= res!2930496 call!656921)))

(declare-fun c!1339855 () Bool)

(declare-fun bm!656916 () Bool)

(declare-fun c!1339856 () Bool)

(assert (=> bm!656916 (= call!656922 (validRegex!9488 (ite c!1339855 (reg!18724 (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) (ite c!1339856 (regTwo!37303 (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) (regOne!37302 (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544))))))))))))

(declare-fun b!7203762 () Bool)

(declare-fun e!4324357 () Bool)

(assert (=> b!7203762 (= e!4324357 call!656921)))

(declare-fun b!7203763 () Bool)

(declare-fun e!4324358 () Bool)

(declare-fun e!4324359 () Bool)

(assert (=> b!7203763 (= e!4324358 e!4324359)))

(assert (=> b!7203763 (= c!1339855 ((_ is Star!18395) (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))))))

(declare-fun b!7203764 () Bool)

(declare-fun res!2930494 () Bool)

(assert (=> b!7203764 (=> res!2930494 e!4324355)))

(assert (=> b!7203764 (= res!2930494 (not ((_ is Concat!27240) (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544))))))))))

(declare-fun e!4324354 () Bool)

(assert (=> b!7203764 (= e!4324354 e!4324355)))

(declare-fun b!7203760 () Bool)

(declare-fun res!2930495 () Bool)

(assert (=> b!7203760 (=> (not res!2930495) (not e!4324357))))

(declare-fun call!656920 () Bool)

(assert (=> b!7203760 (= res!2930495 call!656920)))

(assert (=> b!7203760 (= e!4324354 e!4324357)))

(declare-fun d!2242784 () Bool)

(declare-fun res!2930498 () Bool)

(assert (=> d!2242784 (=> res!2930498 e!4324358)))

(assert (=> d!2242784 (= res!2930498 ((_ is ElementMatch!18395) (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))))))

(assert (=> d!2242784 (= (validRegex!9488 (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) e!4324358)))

(declare-fun b!7203765 () Bool)

(assert (=> b!7203765 (= e!4324359 e!4324360)))

(declare-fun res!2930497 () Bool)

(assert (=> b!7203765 (= res!2930497 (not (nullable!7801 (reg!18724 (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))))))))

(assert (=> b!7203765 (=> (not res!2930497) (not e!4324360))))

(declare-fun b!7203766 () Bool)

(assert (=> b!7203766 (= e!4324359 e!4324354)))

(assert (=> b!7203766 (= c!1339856 ((_ is Union!18395) (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))))))

(declare-fun b!7203767 () Bool)

(assert (=> b!7203767 (= e!4324356 call!656920)))

(declare-fun bm!656917 () Bool)

(assert (=> bm!656917 (= call!656920 (validRegex!9488 (ite c!1339856 (regOne!37303 (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) (regTwo!37302 (ite c!1339828 (reg!18724 (h!76228 (exprs!7847 c!10544))) (ite c!1339829 (regTwo!37303 (h!76228 (exprs!7847 c!10544))) (regOne!37302 (h!76228 (exprs!7847 c!10544)))))))))))

(assert (= (and d!2242784 (not res!2930498)) b!7203763))

(assert (= (and b!7203763 c!1339855) b!7203765))

(assert (= (and b!7203763 (not c!1339855)) b!7203766))

(assert (= (and b!7203765 res!2930497) b!7203759))

(assert (= (and b!7203766 c!1339856) b!7203760))

(assert (= (and b!7203766 (not c!1339856)) b!7203764))

(assert (= (and b!7203760 res!2930495) b!7203762))

(assert (= (and b!7203764 (not res!2930494)) b!7203761))

(assert (= (and b!7203761 res!2930496) b!7203767))

(assert (= (or b!7203760 b!7203767) bm!656917))

(assert (= (or b!7203762 b!7203761) bm!656915))

(assert (= (or b!7203759 bm!656915) bm!656916))

(declare-fun m!7892328 () Bool)

(assert (=> bm!656916 m!7892328))

(declare-fun m!7892330 () Bool)

(assert (=> b!7203765 m!7892330))

(declare-fun m!7892332 () Bool)

(assert (=> bm!656917 m!7892332))

(assert (=> bm!656874 d!2242784))

(declare-fun b!7203769 () Bool)

(declare-fun e!4324361 () Bool)

(declare-fun tp!2007721 () Bool)

(declare-fun tp!2007719 () Bool)

(assert (=> b!7203769 (= e!4324361 (and tp!2007721 tp!2007719))))

(assert (=> b!7203568 (= tp!2007638 e!4324361)))

(declare-fun b!7203771 () Bool)

(declare-fun tp!2007723 () Bool)

(declare-fun tp!2007720 () Bool)

(assert (=> b!7203771 (= e!4324361 (and tp!2007723 tp!2007720))))

(declare-fun b!7203770 () Bool)

(declare-fun tp!2007722 () Bool)

(assert (=> b!7203770 (= e!4324361 tp!2007722)))

(declare-fun b!7203768 () Bool)

(assert (=> b!7203768 (= e!4324361 tp_is_empty!46347)))

(assert (= (and b!7203568 ((_ is ElementMatch!18395) (regOne!37302 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203768))

(assert (= (and b!7203568 ((_ is Concat!27240) (regOne!37302 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203769))

(assert (= (and b!7203568 ((_ is Star!18395) (regOne!37302 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203770))

(assert (= (and b!7203568 ((_ is Union!18395) (regOne!37302 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203771))

(declare-fun b!7203773 () Bool)

(declare-fun e!4324362 () Bool)

(declare-fun tp!2007726 () Bool)

(declare-fun tp!2007724 () Bool)

(assert (=> b!7203773 (= e!4324362 (and tp!2007726 tp!2007724))))

(assert (=> b!7203568 (= tp!2007636 e!4324362)))

(declare-fun b!7203775 () Bool)

(declare-fun tp!2007728 () Bool)

(declare-fun tp!2007725 () Bool)

(assert (=> b!7203775 (= e!4324362 (and tp!2007728 tp!2007725))))

(declare-fun b!7203774 () Bool)

(declare-fun tp!2007727 () Bool)

(assert (=> b!7203774 (= e!4324362 tp!2007727)))

(declare-fun b!7203772 () Bool)

(assert (=> b!7203772 (= e!4324362 tp_is_empty!46347)))

(assert (= (and b!7203568 ((_ is ElementMatch!18395) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203772))

(assert (= (and b!7203568 ((_ is Concat!27240) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203773))

(assert (= (and b!7203568 ((_ is Star!18395) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203774))

(assert (= (and b!7203568 ((_ is Union!18395) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203775))

(declare-fun b!7203777 () Bool)

(declare-fun e!4324363 () Bool)

(declare-fun tp!2007731 () Bool)

(declare-fun tp!2007729 () Bool)

(assert (=> b!7203777 (= e!4324363 (and tp!2007731 tp!2007729))))

(assert (=> b!7203564 (= tp!2007632 e!4324363)))

(declare-fun b!7203779 () Bool)

(declare-fun tp!2007733 () Bool)

(declare-fun tp!2007730 () Bool)

(assert (=> b!7203779 (= e!4324363 (and tp!2007733 tp!2007730))))

(declare-fun b!7203778 () Bool)

(declare-fun tp!2007732 () Bool)

(assert (=> b!7203778 (= e!4324363 tp!2007732)))

(declare-fun b!7203776 () Bool)

(assert (=> b!7203776 (= e!4324363 tp_is_empty!46347)))

(assert (= (and b!7203564 ((_ is ElementMatch!18395) (reg!18724 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203776))

(assert (= (and b!7203564 ((_ is Concat!27240) (reg!18724 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203777))

(assert (= (and b!7203564 ((_ is Star!18395) (reg!18724 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203778))

(assert (= (and b!7203564 ((_ is Union!18395) (reg!18724 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203779))

(declare-fun b!7203781 () Bool)

(declare-fun e!4324364 () Bool)

(declare-fun tp!2007736 () Bool)

(declare-fun tp!2007734 () Bool)

(assert (=> b!7203781 (= e!4324364 (and tp!2007736 tp!2007734))))

(assert (=> b!7203541 (= tp!2007601 e!4324364)))

(declare-fun b!7203783 () Bool)

(declare-fun tp!2007738 () Bool)

(declare-fun tp!2007735 () Bool)

(assert (=> b!7203783 (= e!4324364 (and tp!2007738 tp!2007735))))

(declare-fun b!7203782 () Bool)

(declare-fun tp!2007737 () Bool)

(assert (=> b!7203782 (= e!4324364 tp!2007737)))

(declare-fun b!7203780 () Bool)

(assert (=> b!7203780 (= e!4324364 tp_is_empty!46347)))

(assert (= (and b!7203541 ((_ is ElementMatch!18395) (regOne!37303 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203780))

(assert (= (and b!7203541 ((_ is Concat!27240) (regOne!37303 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203781))

(assert (= (and b!7203541 ((_ is Star!18395) (regOne!37303 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203782))

(assert (= (and b!7203541 ((_ is Union!18395) (regOne!37303 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203783))

(declare-fun b!7203785 () Bool)

(declare-fun e!4324365 () Bool)

(declare-fun tp!2007741 () Bool)

(declare-fun tp!2007739 () Bool)

(assert (=> b!7203785 (= e!4324365 (and tp!2007741 tp!2007739))))

(assert (=> b!7203541 (= tp!2007598 e!4324365)))

(declare-fun b!7203787 () Bool)

(declare-fun tp!2007743 () Bool)

(declare-fun tp!2007740 () Bool)

(assert (=> b!7203787 (= e!4324365 (and tp!2007743 tp!2007740))))

(declare-fun b!7203786 () Bool)

(declare-fun tp!2007742 () Bool)

(assert (=> b!7203786 (= e!4324365 tp!2007742)))

(declare-fun b!7203784 () Bool)

(assert (=> b!7203784 (= e!4324365 tp_is_empty!46347)))

(assert (= (and b!7203541 ((_ is ElementMatch!18395) (regTwo!37303 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203784))

(assert (= (and b!7203541 ((_ is Concat!27240) (regTwo!37303 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203785))

(assert (= (and b!7203541 ((_ is Star!18395) (regTwo!37303 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203786))

(assert (= (and b!7203541 ((_ is Union!18395) (regTwo!37303 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203787))

(declare-fun b!7203789 () Bool)

(declare-fun e!4324366 () Bool)

(declare-fun tp!2007746 () Bool)

(declare-fun tp!2007744 () Bool)

(assert (=> b!7203789 (= e!4324366 (and tp!2007746 tp!2007744))))

(assert (=> b!7203532 (= tp!2007590 e!4324366)))

(declare-fun b!7203791 () Bool)

(declare-fun tp!2007748 () Bool)

(declare-fun tp!2007745 () Bool)

(assert (=> b!7203791 (= e!4324366 (and tp!2007748 tp!2007745))))

(declare-fun b!7203790 () Bool)

(declare-fun tp!2007747 () Bool)

(assert (=> b!7203790 (= e!4324366 tp!2007747)))

(declare-fun b!7203788 () Bool)

(assert (=> b!7203788 (= e!4324366 tp_is_empty!46347)))

(assert (= (and b!7203532 ((_ is ElementMatch!18395) (reg!18724 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203788))

(assert (= (and b!7203532 ((_ is Concat!27240) (reg!18724 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203789))

(assert (= (and b!7203532 ((_ is Star!18395) (reg!18724 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203790))

(assert (= (and b!7203532 ((_ is Union!18395) (reg!18724 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203791))

(declare-fun b!7203793 () Bool)

(declare-fun e!4324367 () Bool)

(declare-fun tp!2007751 () Bool)

(declare-fun tp!2007749 () Bool)

(assert (=> b!7203793 (= e!4324367 (and tp!2007751 tp!2007749))))

(assert (=> b!7203523 (= tp!2007579 e!4324367)))

(declare-fun b!7203795 () Bool)

(declare-fun tp!2007753 () Bool)

(declare-fun tp!2007750 () Bool)

(assert (=> b!7203795 (= e!4324367 (and tp!2007753 tp!2007750))))

(declare-fun b!7203794 () Bool)

(declare-fun tp!2007752 () Bool)

(assert (=> b!7203794 (= e!4324367 tp!2007752)))

(declare-fun b!7203792 () Bool)

(assert (=> b!7203792 (= e!4324367 tp_is_empty!46347)))

(assert (= (and b!7203523 ((_ is ElementMatch!18395) (regOne!37302 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203792))

(assert (= (and b!7203523 ((_ is Concat!27240) (regOne!37302 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203793))

(assert (= (and b!7203523 ((_ is Star!18395) (regOne!37302 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203794))

(assert (= (and b!7203523 ((_ is Union!18395) (regOne!37302 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203795))

(declare-fun b!7203797 () Bool)

(declare-fun e!4324368 () Bool)

(declare-fun tp!2007756 () Bool)

(declare-fun tp!2007754 () Bool)

(assert (=> b!7203797 (= e!4324368 (and tp!2007756 tp!2007754))))

(assert (=> b!7203523 (= tp!2007577 e!4324368)))

(declare-fun b!7203799 () Bool)

(declare-fun tp!2007758 () Bool)

(declare-fun tp!2007755 () Bool)

(assert (=> b!7203799 (= e!4324368 (and tp!2007758 tp!2007755))))

(declare-fun b!7203798 () Bool)

(declare-fun tp!2007757 () Bool)

(assert (=> b!7203798 (= e!4324368 tp!2007757)))

(declare-fun b!7203796 () Bool)

(assert (=> b!7203796 (= e!4324368 tp_is_empty!46347)))

(assert (= (and b!7203523 ((_ is ElementMatch!18395) (regTwo!37302 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203796))

(assert (= (and b!7203523 ((_ is Concat!27240) (regTwo!37302 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203797))

(assert (= (and b!7203523 ((_ is Star!18395) (regTwo!37302 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203798))

(assert (= (and b!7203523 ((_ is Union!18395) (regTwo!37302 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203799))

(declare-fun b!7203801 () Bool)

(declare-fun e!4324369 () Bool)

(declare-fun tp!2007761 () Bool)

(declare-fun tp!2007759 () Bool)

(assert (=> b!7203801 (= e!4324369 (and tp!2007761 tp!2007759))))

(assert (=> b!7203548 (= tp!2007611 e!4324369)))

(declare-fun b!7203803 () Bool)

(declare-fun tp!2007763 () Bool)

(declare-fun tp!2007760 () Bool)

(assert (=> b!7203803 (= e!4324369 (and tp!2007763 tp!2007760))))

(declare-fun b!7203802 () Bool)

(declare-fun tp!2007762 () Bool)

(assert (=> b!7203802 (= e!4324369 tp!2007762)))

(declare-fun b!7203800 () Bool)

(assert (=> b!7203800 (= e!4324369 tp_is_empty!46347)))

(assert (= (and b!7203548 ((_ is ElementMatch!18395) (regOne!37302 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7203800))

(assert (= (and b!7203548 ((_ is Concat!27240) (regOne!37302 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7203801))

(assert (= (and b!7203548 ((_ is Star!18395) (regOne!37302 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7203802))

(assert (= (and b!7203548 ((_ is Union!18395) (regOne!37302 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7203803))

(declare-fun b!7203805 () Bool)

(declare-fun e!4324370 () Bool)

(declare-fun tp!2007766 () Bool)

(declare-fun tp!2007764 () Bool)

(assert (=> b!7203805 (= e!4324370 (and tp!2007766 tp!2007764))))

(assert (=> b!7203548 (= tp!2007609 e!4324370)))

(declare-fun b!7203807 () Bool)

(declare-fun tp!2007768 () Bool)

(declare-fun tp!2007765 () Bool)

(assert (=> b!7203807 (= e!4324370 (and tp!2007768 tp!2007765))))

(declare-fun b!7203806 () Bool)

(declare-fun tp!2007767 () Bool)

(assert (=> b!7203806 (= e!4324370 tp!2007767)))

(declare-fun b!7203804 () Bool)

(assert (=> b!7203804 (= e!4324370 tp_is_empty!46347)))

(assert (= (and b!7203548 ((_ is ElementMatch!18395) (regTwo!37302 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7203804))

(assert (= (and b!7203548 ((_ is Concat!27240) (regTwo!37302 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7203805))

(assert (= (and b!7203548 ((_ is Star!18395) (regTwo!37302 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7203806))

(assert (= (and b!7203548 ((_ is Union!18395) (regTwo!37302 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7203807))

(declare-fun b!7203809 () Bool)

(declare-fun e!4324371 () Bool)

(declare-fun tp!2007771 () Bool)

(declare-fun tp!2007769 () Bool)

(assert (=> b!7203809 (= e!4324371 (and tp!2007771 tp!2007769))))

(assert (=> b!7203569 (= tp!2007639 e!4324371)))

(declare-fun b!7203811 () Bool)

(declare-fun tp!2007773 () Bool)

(declare-fun tp!2007770 () Bool)

(assert (=> b!7203811 (= e!4324371 (and tp!2007773 tp!2007770))))

(declare-fun b!7203810 () Bool)

(declare-fun tp!2007772 () Bool)

(assert (=> b!7203810 (= e!4324371 tp!2007772)))

(declare-fun b!7203808 () Bool)

(assert (=> b!7203808 (= e!4324371 tp_is_empty!46347)))

(assert (= (and b!7203569 ((_ is ElementMatch!18395) (reg!18724 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203808))

(assert (= (and b!7203569 ((_ is Concat!27240) (reg!18724 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203809))

(assert (= (and b!7203569 ((_ is Star!18395) (reg!18724 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203810))

(assert (= (and b!7203569 ((_ is Union!18395) (reg!18724 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7203811))

(declare-fun b!7203813 () Bool)

(declare-fun e!4324372 () Bool)

(declare-fun tp!2007776 () Bool)

(declare-fun tp!2007774 () Bool)

(assert (=> b!7203813 (= e!4324372 (and tp!2007776 tp!2007774))))

(assert (=> b!7203556 (= tp!2007620 e!4324372)))

(declare-fun b!7203815 () Bool)

(declare-fun tp!2007778 () Bool)

(declare-fun tp!2007775 () Bool)

(assert (=> b!7203815 (= e!4324372 (and tp!2007778 tp!2007775))))

(declare-fun b!7203814 () Bool)

(declare-fun tp!2007777 () Bool)

(assert (=> b!7203814 (= e!4324372 tp!2007777)))

(declare-fun b!7203812 () Bool)

(assert (=> b!7203812 (= e!4324372 tp_is_empty!46347)))

(assert (= (and b!7203556 ((_ is ElementMatch!18395) (h!76228 (t!383933 (t!383933 (exprs!7847 setElem!53466)))))) b!7203812))

(assert (= (and b!7203556 ((_ is Concat!27240) (h!76228 (t!383933 (t!383933 (exprs!7847 setElem!53466)))))) b!7203813))

(assert (= (and b!7203556 ((_ is Star!18395) (h!76228 (t!383933 (t!383933 (exprs!7847 setElem!53466)))))) b!7203814))

(assert (= (and b!7203556 ((_ is Union!18395) (h!76228 (t!383933 (t!383933 (exprs!7847 setElem!53466)))))) b!7203815))

(declare-fun b!7203816 () Bool)

(declare-fun e!4324373 () Bool)

(declare-fun tp!2007779 () Bool)

(declare-fun tp!2007780 () Bool)

(assert (=> b!7203816 (= e!4324373 (and tp!2007779 tp!2007780))))

(assert (=> b!7203556 (= tp!2007621 e!4324373)))

(assert (= (and b!7203556 ((_ is Cons!69780) (t!383933 (t!383933 (t!383933 (exprs!7847 setElem!53466)))))) b!7203816))

(declare-fun b!7203818 () Bool)

(declare-fun e!4324374 () Bool)

(declare-fun tp!2007783 () Bool)

(declare-fun tp!2007781 () Bool)

(assert (=> b!7203818 (= e!4324374 (and tp!2007783 tp!2007781))))

(assert (=> b!7203563 (= tp!2007631 e!4324374)))

(declare-fun b!7203820 () Bool)

(declare-fun tp!2007785 () Bool)

(declare-fun tp!2007782 () Bool)

(assert (=> b!7203820 (= e!4324374 (and tp!2007785 tp!2007782))))

(declare-fun b!7203819 () Bool)

(declare-fun tp!2007784 () Bool)

(assert (=> b!7203819 (= e!4324374 tp!2007784)))

(declare-fun b!7203817 () Bool)

(assert (=> b!7203817 (= e!4324374 tp_is_empty!46347)))

(assert (= (and b!7203563 ((_ is ElementMatch!18395) (regOne!37302 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203817))

(assert (= (and b!7203563 ((_ is Concat!27240) (regOne!37302 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203818))

(assert (= (and b!7203563 ((_ is Star!18395) (regOne!37302 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203819))

(assert (= (and b!7203563 ((_ is Union!18395) (regOne!37302 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203820))

(declare-fun b!7203822 () Bool)

(declare-fun e!4324375 () Bool)

(declare-fun tp!2007788 () Bool)

(declare-fun tp!2007786 () Bool)

(assert (=> b!7203822 (= e!4324375 (and tp!2007788 tp!2007786))))

(assert (=> b!7203563 (= tp!2007629 e!4324375)))

(declare-fun b!7203824 () Bool)

(declare-fun tp!2007790 () Bool)

(declare-fun tp!2007787 () Bool)

(assert (=> b!7203824 (= e!4324375 (and tp!2007790 tp!2007787))))

(declare-fun b!7203823 () Bool)

(declare-fun tp!2007789 () Bool)

(assert (=> b!7203823 (= e!4324375 tp!2007789)))

(declare-fun b!7203821 () Bool)

(assert (=> b!7203821 (= e!4324375 tp_is_empty!46347)))

(assert (= (and b!7203563 ((_ is ElementMatch!18395) (regTwo!37302 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203821))

(assert (= (and b!7203563 ((_ is Concat!27240) (regTwo!37302 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203822))

(assert (= (and b!7203563 ((_ is Star!18395) (regTwo!37302 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203823))

(assert (= (and b!7203563 ((_ is Union!18395) (regTwo!37302 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203824))

(declare-fun b!7203826 () Bool)

(declare-fun e!4324376 () Bool)

(declare-fun tp!2007793 () Bool)

(declare-fun tp!2007791 () Bool)

(assert (=> b!7203826 (= e!4324376 (and tp!2007793 tp!2007791))))

(assert (=> b!7203540 (= tp!2007600 e!4324376)))

(declare-fun b!7203828 () Bool)

(declare-fun tp!2007795 () Bool)

(declare-fun tp!2007792 () Bool)

(assert (=> b!7203828 (= e!4324376 (and tp!2007795 tp!2007792))))

(declare-fun b!7203827 () Bool)

(declare-fun tp!2007794 () Bool)

(assert (=> b!7203827 (= e!4324376 tp!2007794)))

(declare-fun b!7203825 () Bool)

(assert (=> b!7203825 (= e!4324376 tp_is_empty!46347)))

(assert (= (and b!7203540 ((_ is ElementMatch!18395) (reg!18724 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203825))

(assert (= (and b!7203540 ((_ is Concat!27240) (reg!18724 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203826))

(assert (= (and b!7203540 ((_ is Star!18395) (reg!18724 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203827))

(assert (= (and b!7203540 ((_ is Union!18395) (reg!18724 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203828))

(declare-fun b!7203830 () Bool)

(declare-fun e!4324377 () Bool)

(declare-fun tp!2007798 () Bool)

(declare-fun tp!2007796 () Bool)

(assert (=> b!7203830 (= e!4324377 (and tp!2007798 tp!2007796))))

(assert (=> b!7203531 (= tp!2007589 e!4324377)))

(declare-fun b!7203832 () Bool)

(declare-fun tp!2007800 () Bool)

(declare-fun tp!2007797 () Bool)

(assert (=> b!7203832 (= e!4324377 (and tp!2007800 tp!2007797))))

(declare-fun b!7203831 () Bool)

(declare-fun tp!2007799 () Bool)

(assert (=> b!7203831 (= e!4324377 tp!2007799)))

(declare-fun b!7203829 () Bool)

(assert (=> b!7203829 (= e!4324377 tp_is_empty!46347)))

(assert (= (and b!7203531 ((_ is ElementMatch!18395) (regOne!37302 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203829))

(assert (= (and b!7203531 ((_ is Concat!27240) (regOne!37302 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203830))

(assert (= (and b!7203531 ((_ is Star!18395) (regOne!37302 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203831))

(assert (= (and b!7203531 ((_ is Union!18395) (regOne!37302 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203832))

(declare-fun b!7203834 () Bool)

(declare-fun e!4324378 () Bool)

(declare-fun tp!2007803 () Bool)

(declare-fun tp!2007801 () Bool)

(assert (=> b!7203834 (= e!4324378 (and tp!2007803 tp!2007801))))

(assert (=> b!7203531 (= tp!2007587 e!4324378)))

(declare-fun b!7203836 () Bool)

(declare-fun tp!2007805 () Bool)

(declare-fun tp!2007802 () Bool)

(assert (=> b!7203836 (= e!4324378 (and tp!2007805 tp!2007802))))

(declare-fun b!7203835 () Bool)

(declare-fun tp!2007804 () Bool)

(assert (=> b!7203835 (= e!4324378 tp!2007804)))

(declare-fun b!7203833 () Bool)

(assert (=> b!7203833 (= e!4324378 tp_is_empty!46347)))

(assert (= (and b!7203531 ((_ is ElementMatch!18395) (regTwo!37302 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203833))

(assert (= (and b!7203531 ((_ is Concat!27240) (regTwo!37302 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203834))

(assert (= (and b!7203531 ((_ is Star!18395) (regTwo!37302 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203835))

(assert (= (and b!7203531 ((_ is Union!18395) (regTwo!37302 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7203836))

(declare-fun b!7203838 () Bool)

(declare-fun e!4324379 () Bool)

(declare-fun tp!2007808 () Bool)

(declare-fun tp!2007806 () Bool)

(assert (=> b!7203838 (= e!4324379 (and tp!2007808 tp!2007806))))

(assert (=> b!7203539 (= tp!2007599 e!4324379)))

(declare-fun b!7203840 () Bool)

(declare-fun tp!2007810 () Bool)

(declare-fun tp!2007807 () Bool)

(assert (=> b!7203840 (= e!4324379 (and tp!2007810 tp!2007807))))

(declare-fun b!7203839 () Bool)

(declare-fun tp!2007809 () Bool)

(assert (=> b!7203839 (= e!4324379 tp!2007809)))

(declare-fun b!7203837 () Bool)

(assert (=> b!7203837 (= e!4324379 tp_is_empty!46347)))

(assert (= (and b!7203539 ((_ is ElementMatch!18395) (regOne!37302 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203837))

(assert (= (and b!7203539 ((_ is Concat!27240) (regOne!37302 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203838))

(assert (= (and b!7203539 ((_ is Star!18395) (regOne!37302 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203839))

(assert (= (and b!7203539 ((_ is Union!18395) (regOne!37302 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203840))

(declare-fun b!7203842 () Bool)

(declare-fun e!4324380 () Bool)

(declare-fun tp!2007813 () Bool)

(declare-fun tp!2007811 () Bool)

(assert (=> b!7203842 (= e!4324380 (and tp!2007813 tp!2007811))))

(assert (=> b!7203539 (= tp!2007597 e!4324380)))

(declare-fun b!7203844 () Bool)

(declare-fun tp!2007815 () Bool)

(declare-fun tp!2007812 () Bool)

(assert (=> b!7203844 (= e!4324380 (and tp!2007815 tp!2007812))))

(declare-fun b!7203843 () Bool)

(declare-fun tp!2007814 () Bool)

(assert (=> b!7203843 (= e!4324380 tp!2007814)))

(declare-fun b!7203841 () Bool)

(assert (=> b!7203841 (= e!4324380 tp_is_empty!46347)))

(assert (= (and b!7203539 ((_ is ElementMatch!18395) (regTwo!37302 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203841))

(assert (= (and b!7203539 ((_ is Concat!27240) (regTwo!37302 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203842))

(assert (= (and b!7203539 ((_ is Star!18395) (regTwo!37302 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203843))

(assert (= (and b!7203539 ((_ is Union!18395) (regTwo!37302 (regTwo!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203844))

(declare-fun b!7203846 () Bool)

(declare-fun e!4324381 () Bool)

(declare-fun tp!2007818 () Bool)

(declare-fun tp!2007816 () Bool)

(assert (=> b!7203846 (= e!4324381 (and tp!2007818 tp!2007816))))

(assert (=> b!7203555 (= tp!2007619 e!4324381)))

(declare-fun b!7203848 () Bool)

(declare-fun tp!2007820 () Bool)

(declare-fun tp!2007817 () Bool)

(assert (=> b!7203848 (= e!4324381 (and tp!2007820 tp!2007817))))

(declare-fun b!7203847 () Bool)

(declare-fun tp!2007819 () Bool)

(assert (=> b!7203847 (= e!4324381 tp!2007819)))

(declare-fun b!7203845 () Bool)

(assert (=> b!7203845 (= e!4324381 tp_is_empty!46347)))

(assert (= (and b!7203555 ((_ is ElementMatch!18395) (regOne!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203845))

(assert (= (and b!7203555 ((_ is Concat!27240) (regOne!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203846))

(assert (= (and b!7203555 ((_ is Star!18395) (regOne!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203847))

(assert (= (and b!7203555 ((_ is Union!18395) (regOne!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203848))

(declare-fun b!7203850 () Bool)

(declare-fun e!4324382 () Bool)

(declare-fun tp!2007823 () Bool)

(declare-fun tp!2007821 () Bool)

(assert (=> b!7203850 (= e!4324382 (and tp!2007823 tp!2007821))))

(assert (=> b!7203555 (= tp!2007616 e!4324382)))

(declare-fun b!7203852 () Bool)

(declare-fun tp!2007825 () Bool)

(declare-fun tp!2007822 () Bool)

(assert (=> b!7203852 (= e!4324382 (and tp!2007825 tp!2007822))))

(declare-fun b!7203851 () Bool)

(declare-fun tp!2007824 () Bool)

(assert (=> b!7203851 (= e!4324382 tp!2007824)))

(declare-fun b!7203849 () Bool)

(assert (=> b!7203849 (= e!4324382 tp_is_empty!46347)))

(assert (= (and b!7203555 ((_ is ElementMatch!18395) (regTwo!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203849))

(assert (= (and b!7203555 ((_ is Concat!27240) (regTwo!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203850))

(assert (= (and b!7203555 ((_ is Star!18395) (regTwo!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203851))

(assert (= (and b!7203555 ((_ is Union!18395) (regTwo!37303 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203852))

(declare-fun b!7203854 () Bool)

(declare-fun e!4324383 () Bool)

(declare-fun tp!2007828 () Bool)

(declare-fun tp!2007826 () Bool)

(assert (=> b!7203854 (= e!4324383 (and tp!2007828 tp!2007826))))

(assert (=> b!7203554 (= tp!2007618 e!4324383)))

(declare-fun b!7203856 () Bool)

(declare-fun tp!2007830 () Bool)

(declare-fun tp!2007827 () Bool)

(assert (=> b!7203856 (= e!4324383 (and tp!2007830 tp!2007827))))

(declare-fun b!7203855 () Bool)

(declare-fun tp!2007829 () Bool)

(assert (=> b!7203855 (= e!4324383 tp!2007829)))

(declare-fun b!7203853 () Bool)

(assert (=> b!7203853 (= e!4324383 tp_is_empty!46347)))

(assert (= (and b!7203554 ((_ is ElementMatch!18395) (reg!18724 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203853))

(assert (= (and b!7203554 ((_ is Concat!27240) (reg!18724 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203854))

(assert (= (and b!7203554 ((_ is Star!18395) (reg!18724 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203855))

(assert (= (and b!7203554 ((_ is Union!18395) (reg!18724 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203856))

(declare-fun b!7203858 () Bool)

(declare-fun e!4324384 () Bool)

(declare-fun tp!2007833 () Bool)

(declare-fun tp!2007831 () Bool)

(assert (=> b!7203858 (= e!4324384 (and tp!2007833 tp!2007831))))

(assert (=> b!7203520 (= tp!2007575 e!4324384)))

(declare-fun b!7203860 () Bool)

(declare-fun tp!2007835 () Bool)

(declare-fun tp!2007832 () Bool)

(assert (=> b!7203860 (= e!4324384 (and tp!2007835 tp!2007832))))

(declare-fun b!7203859 () Bool)

(declare-fun tp!2007834 () Bool)

(assert (=> b!7203859 (= e!4324384 tp!2007834)))

(declare-fun b!7203857 () Bool)

(assert (=> b!7203857 (= e!4324384 tp_is_empty!46347)))

(assert (= (and b!7203520 ((_ is ElementMatch!18395) (reg!18724 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203857))

(assert (= (and b!7203520 ((_ is Concat!27240) (reg!18724 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203858))

(assert (= (and b!7203520 ((_ is Star!18395) (reg!18724 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203859))

(assert (= (and b!7203520 ((_ is Union!18395) (reg!18724 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203860))

(declare-fun b!7203862 () Bool)

(declare-fun e!4324385 () Bool)

(declare-fun tp!2007838 () Bool)

(declare-fun tp!2007836 () Bool)

(assert (=> b!7203862 (= e!4324385 (and tp!2007838 tp!2007836))))

(assert (=> b!7203553 (= tp!2007617 e!4324385)))

(declare-fun b!7203864 () Bool)

(declare-fun tp!2007840 () Bool)

(declare-fun tp!2007837 () Bool)

(assert (=> b!7203864 (= e!4324385 (and tp!2007840 tp!2007837))))

(declare-fun b!7203863 () Bool)

(declare-fun tp!2007839 () Bool)

(assert (=> b!7203863 (= e!4324385 tp!2007839)))

(declare-fun b!7203861 () Bool)

(assert (=> b!7203861 (= e!4324385 tp_is_empty!46347)))

(assert (= (and b!7203553 ((_ is ElementMatch!18395) (regOne!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203861))

(assert (= (and b!7203553 ((_ is Concat!27240) (regOne!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203862))

(assert (= (and b!7203553 ((_ is Star!18395) (regOne!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203863))

(assert (= (and b!7203553 ((_ is Union!18395) (regOne!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203864))

(declare-fun b!7203866 () Bool)

(declare-fun e!4324386 () Bool)

(declare-fun tp!2007843 () Bool)

(declare-fun tp!2007841 () Bool)

(assert (=> b!7203866 (= e!4324386 (and tp!2007843 tp!2007841))))

(assert (=> b!7203553 (= tp!2007615 e!4324386)))

(declare-fun b!7203868 () Bool)

(declare-fun tp!2007845 () Bool)

(declare-fun tp!2007842 () Bool)

(assert (=> b!7203868 (= e!4324386 (and tp!2007845 tp!2007842))))

(declare-fun b!7203867 () Bool)

(declare-fun tp!2007844 () Bool)

(assert (=> b!7203867 (= e!4324386 tp!2007844)))

(declare-fun b!7203865 () Bool)

(assert (=> b!7203865 (= e!4324386 tp_is_empty!46347)))

(assert (= (and b!7203553 ((_ is ElementMatch!18395) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203865))

(assert (= (and b!7203553 ((_ is Concat!27240) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203866))

(assert (= (and b!7203553 ((_ is Star!18395) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203867))

(assert (= (and b!7203553 ((_ is Union!18395) (regTwo!37302 (h!76228 (t!383933 (exprs!7847 setElem!53466)))))) b!7203868))

(declare-fun b!7203870 () Bool)

(declare-fun e!4324387 () Bool)

(declare-fun tp!2007848 () Bool)

(declare-fun tp!2007846 () Bool)

(assert (=> b!7203870 (= e!4324387 (and tp!2007848 tp!2007846))))

(assert (=> b!7203521 (= tp!2007576 e!4324387)))

(declare-fun b!7203872 () Bool)

(declare-fun tp!2007850 () Bool)

(declare-fun tp!2007847 () Bool)

(assert (=> b!7203872 (= e!4324387 (and tp!2007850 tp!2007847))))

(declare-fun b!7203871 () Bool)

(declare-fun tp!2007849 () Bool)

(assert (=> b!7203871 (= e!4324387 tp!2007849)))

(declare-fun b!7203869 () Bool)

(assert (=> b!7203869 (= e!4324387 tp_is_empty!46347)))

(assert (= (and b!7203521 ((_ is ElementMatch!18395) (regOne!37303 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203869))

(assert (= (and b!7203521 ((_ is Concat!27240) (regOne!37303 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203870))

(assert (= (and b!7203521 ((_ is Star!18395) (regOne!37303 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203871))

(assert (= (and b!7203521 ((_ is Union!18395) (regOne!37303 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203872))

(declare-fun b!7203874 () Bool)

(declare-fun e!4324388 () Bool)

(declare-fun tp!2007853 () Bool)

(declare-fun tp!2007851 () Bool)

(assert (=> b!7203874 (= e!4324388 (and tp!2007853 tp!2007851))))

(assert (=> b!7203521 (= tp!2007573 e!4324388)))

(declare-fun b!7203876 () Bool)

(declare-fun tp!2007855 () Bool)

(declare-fun tp!2007852 () Bool)

(assert (=> b!7203876 (= e!4324388 (and tp!2007855 tp!2007852))))

(declare-fun b!7203875 () Bool)

(declare-fun tp!2007854 () Bool)

(assert (=> b!7203875 (= e!4324388 tp!2007854)))

(declare-fun b!7203873 () Bool)

(assert (=> b!7203873 (= e!4324388 tp_is_empty!46347)))

(assert (= (and b!7203521 ((_ is ElementMatch!18395) (regTwo!37303 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203873))

(assert (= (and b!7203521 ((_ is Concat!27240) (regTwo!37303 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203874))

(assert (= (and b!7203521 ((_ is Star!18395) (regTwo!37303 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203875))

(assert (= (and b!7203521 ((_ is Union!18395) (regTwo!37303 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203876))

(declare-fun b!7203878 () Bool)

(declare-fun e!4324389 () Bool)

(declare-fun tp!2007858 () Bool)

(declare-fun tp!2007856 () Bool)

(assert (=> b!7203878 (= e!4324389 (and tp!2007858 tp!2007856))))

(assert (=> b!7203546 (= tp!2007607 e!4324389)))

(declare-fun b!7203880 () Bool)

(declare-fun tp!2007860 () Bool)

(declare-fun tp!2007857 () Bool)

(assert (=> b!7203880 (= e!4324389 (and tp!2007860 tp!2007857))))

(declare-fun b!7203879 () Bool)

(declare-fun tp!2007859 () Bool)

(assert (=> b!7203879 (= e!4324389 tp!2007859)))

(declare-fun b!7203877 () Bool)

(assert (=> b!7203877 (= e!4324389 tp_is_empty!46347)))

(assert (= (and b!7203546 ((_ is ElementMatch!18395) (h!76228 (t!383933 (exprs!7847 setElem!53472))))) b!7203877))

(assert (= (and b!7203546 ((_ is Concat!27240) (h!76228 (t!383933 (exprs!7847 setElem!53472))))) b!7203878))

(assert (= (and b!7203546 ((_ is Star!18395) (h!76228 (t!383933 (exprs!7847 setElem!53472))))) b!7203879))

(assert (= (and b!7203546 ((_ is Union!18395) (h!76228 (t!383933 (exprs!7847 setElem!53472))))) b!7203880))

(declare-fun b!7203881 () Bool)

(declare-fun e!4324390 () Bool)

(declare-fun tp!2007861 () Bool)

(declare-fun tp!2007862 () Bool)

(assert (=> b!7203881 (= e!4324390 (and tp!2007861 tp!2007862))))

(assert (=> b!7203546 (= tp!2007608 e!4324390)))

(assert (= (and b!7203546 ((_ is Cons!69780) (t!383933 (t!383933 (exprs!7847 setElem!53472))))) b!7203881))

(declare-fun b!7203883 () Bool)

(declare-fun e!4324391 () Bool)

(declare-fun tp!2007865 () Bool)

(declare-fun tp!2007863 () Bool)

(assert (=> b!7203883 (= e!4324391 (and tp!2007865 tp!2007863))))

(assert (=> b!7203528 (= tp!2007585 e!4324391)))

(declare-fun b!7203885 () Bool)

(declare-fun tp!2007867 () Bool)

(declare-fun tp!2007864 () Bool)

(assert (=> b!7203885 (= e!4324391 (and tp!2007867 tp!2007864))))

(declare-fun b!7203884 () Bool)

(declare-fun tp!2007866 () Bool)

(assert (=> b!7203884 (= e!4324391 tp!2007866)))

(declare-fun b!7203882 () Bool)

(assert (=> b!7203882 (= e!4324391 tp_is_empty!46347)))

(assert (= (and b!7203528 ((_ is ElementMatch!18395) (reg!18724 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203882))

(assert (= (and b!7203528 ((_ is Concat!27240) (reg!18724 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203883))

(assert (= (and b!7203528 ((_ is Star!18395) (reg!18724 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203884))

(assert (= (and b!7203528 ((_ is Union!18395) (reg!18724 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203885))

(declare-fun b!7203887 () Bool)

(declare-fun e!4324392 () Bool)

(declare-fun tp!2007870 () Bool)

(declare-fun tp!2007868 () Bool)

(assert (=> b!7203887 (= e!4324392 (and tp!2007870 tp!2007868))))

(assert (=> b!7203519 (= tp!2007574 e!4324392)))

(declare-fun b!7203889 () Bool)

(declare-fun tp!2007872 () Bool)

(declare-fun tp!2007869 () Bool)

(assert (=> b!7203889 (= e!4324392 (and tp!2007872 tp!2007869))))

(declare-fun b!7203888 () Bool)

(declare-fun tp!2007871 () Bool)

(assert (=> b!7203888 (= e!4324392 tp!2007871)))

(declare-fun b!7203886 () Bool)

(assert (=> b!7203886 (= e!4324392 tp_is_empty!46347)))

(assert (= (and b!7203519 ((_ is ElementMatch!18395) (regOne!37302 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203886))

(assert (= (and b!7203519 ((_ is Concat!27240) (regOne!37302 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203887))

(assert (= (and b!7203519 ((_ is Star!18395) (regOne!37302 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203888))

(assert (= (and b!7203519 ((_ is Union!18395) (regOne!37302 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203889))

(declare-fun b!7203891 () Bool)

(declare-fun e!4324393 () Bool)

(declare-fun tp!2007875 () Bool)

(declare-fun tp!2007873 () Bool)

(assert (=> b!7203891 (= e!4324393 (and tp!2007875 tp!2007873))))

(assert (=> b!7203519 (= tp!2007572 e!4324393)))

(declare-fun b!7203893 () Bool)

(declare-fun tp!2007877 () Bool)

(declare-fun tp!2007874 () Bool)

(assert (=> b!7203893 (= e!4324393 (and tp!2007877 tp!2007874))))

(declare-fun b!7203892 () Bool)

(declare-fun tp!2007876 () Bool)

(assert (=> b!7203892 (= e!4324393 tp!2007876)))

(declare-fun b!7203890 () Bool)

(assert (=> b!7203890 (= e!4324393 tp_is_empty!46347)))

(assert (= (and b!7203519 ((_ is ElementMatch!18395) (regTwo!37302 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203890))

(assert (= (and b!7203519 ((_ is Concat!27240) (regTwo!37302 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203891))

(assert (= (and b!7203519 ((_ is Star!18395) (regTwo!37302 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203892))

(assert (= (and b!7203519 ((_ is Union!18395) (regTwo!37302 (regTwo!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203893))

(declare-fun b!7203895 () Bool)

(declare-fun e!4324394 () Bool)

(declare-fun tp!2007880 () Bool)

(declare-fun tp!2007878 () Bool)

(assert (=> b!7203895 (= e!4324394 (and tp!2007880 tp!2007878))))

(assert (=> b!7203561 (= tp!2007628 e!4324394)))

(declare-fun b!7203897 () Bool)

(declare-fun tp!2007882 () Bool)

(declare-fun tp!2007879 () Bool)

(assert (=> b!7203897 (= e!4324394 (and tp!2007882 tp!2007879))))

(declare-fun b!7203896 () Bool)

(declare-fun tp!2007881 () Bool)

(assert (=> b!7203896 (= e!4324394 tp!2007881)))

(declare-fun b!7203894 () Bool)

(assert (=> b!7203894 (= e!4324394 tp_is_empty!46347)))

(assert (= (and b!7203561 ((_ is ElementMatch!18395) (regOne!37303 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203894))

(assert (= (and b!7203561 ((_ is Concat!27240) (regOne!37303 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203895))

(assert (= (and b!7203561 ((_ is Star!18395) (regOne!37303 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203896))

(assert (= (and b!7203561 ((_ is Union!18395) (regOne!37303 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203897))

(declare-fun b!7203899 () Bool)

(declare-fun e!4324395 () Bool)

(declare-fun tp!2007885 () Bool)

(declare-fun tp!2007883 () Bool)

(assert (=> b!7203899 (= e!4324395 (and tp!2007885 tp!2007883))))

(assert (=> b!7203561 (= tp!2007625 e!4324395)))

(declare-fun b!7203901 () Bool)

(declare-fun tp!2007887 () Bool)

(declare-fun tp!2007884 () Bool)

(assert (=> b!7203901 (= e!4324395 (and tp!2007887 tp!2007884))))

(declare-fun b!7203900 () Bool)

(declare-fun tp!2007886 () Bool)

(assert (=> b!7203900 (= e!4324395 tp!2007886)))

(declare-fun b!7203898 () Bool)

(assert (=> b!7203898 (= e!4324395 tp_is_empty!46347)))

(assert (= (and b!7203561 ((_ is ElementMatch!18395) (regTwo!37303 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203898))

(assert (= (and b!7203561 ((_ is Concat!27240) (regTwo!37303 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203899))

(assert (= (and b!7203561 ((_ is Star!18395) (regTwo!37303 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203900))

(assert (= (and b!7203561 ((_ is Union!18395) (regTwo!37303 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203901))

(declare-fun b!7203903 () Bool)

(declare-fun e!4324396 () Bool)

(declare-fun tp!2007890 () Bool)

(declare-fun tp!2007888 () Bool)

(assert (=> b!7203903 (= e!4324396 (and tp!2007890 tp!2007888))))

(assert (=> b!7203529 (= tp!2007586 e!4324396)))

(declare-fun b!7203905 () Bool)

(declare-fun tp!2007892 () Bool)

(declare-fun tp!2007889 () Bool)

(assert (=> b!7203905 (= e!4324396 (and tp!2007892 tp!2007889))))

(declare-fun b!7203904 () Bool)

(declare-fun tp!2007891 () Bool)

(assert (=> b!7203904 (= e!4324396 tp!2007891)))

(declare-fun b!7203902 () Bool)

(assert (=> b!7203902 (= e!4324396 tp_is_empty!46347)))

(assert (= (and b!7203529 ((_ is ElementMatch!18395) (regOne!37303 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203902))

(assert (= (and b!7203529 ((_ is Concat!27240) (regOne!37303 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203903))

(assert (= (and b!7203529 ((_ is Star!18395) (regOne!37303 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203904))

(assert (= (and b!7203529 ((_ is Union!18395) (regOne!37303 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203905))

(declare-fun b!7203907 () Bool)

(declare-fun e!4324397 () Bool)

(declare-fun tp!2007895 () Bool)

(declare-fun tp!2007893 () Bool)

(assert (=> b!7203907 (= e!4324397 (and tp!2007895 tp!2007893))))

(assert (=> b!7203529 (= tp!2007583 e!4324397)))

(declare-fun b!7203909 () Bool)

(declare-fun tp!2007897 () Bool)

(declare-fun tp!2007894 () Bool)

(assert (=> b!7203909 (= e!4324397 (and tp!2007897 tp!2007894))))

(declare-fun b!7203908 () Bool)

(declare-fun tp!2007896 () Bool)

(assert (=> b!7203908 (= e!4324397 tp!2007896)))

(declare-fun b!7203906 () Bool)

(assert (=> b!7203906 (= e!4324397 tp_is_empty!46347)))

(assert (= (and b!7203529 ((_ is ElementMatch!18395) (regTwo!37303 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203906))

(assert (= (and b!7203529 ((_ is Concat!27240) (regTwo!37303 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203907))

(assert (= (and b!7203529 ((_ is Star!18395) (regTwo!37303 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203908))

(assert (= (and b!7203529 ((_ is Union!18395) (regTwo!37303 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203909))

(declare-fun b!7203911 () Bool)

(declare-fun e!4324398 () Bool)

(declare-fun tp!2007900 () Bool)

(declare-fun tp!2007898 () Bool)

(assert (=> b!7203911 (= e!4324398 (and tp!2007900 tp!2007898))))

(assert (=> b!7203536 (= tp!2007595 e!4324398)))

(declare-fun b!7203913 () Bool)

(declare-fun tp!2007902 () Bool)

(declare-fun tp!2007899 () Bool)

(assert (=> b!7203913 (= e!4324398 (and tp!2007902 tp!2007899))))

(declare-fun b!7203912 () Bool)

(declare-fun tp!2007901 () Bool)

(assert (=> b!7203912 (= e!4324398 tp!2007901)))

(declare-fun b!7203910 () Bool)

(assert (=> b!7203910 (= e!4324398 tp_is_empty!46347)))

(assert (= (and b!7203536 ((_ is ElementMatch!18395) (reg!18724 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203910))

(assert (= (and b!7203536 ((_ is Concat!27240) (reg!18724 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203911))

(assert (= (and b!7203536 ((_ is Star!18395) (reg!18724 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203912))

(assert (= (and b!7203536 ((_ is Union!18395) (reg!18724 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203913))

(declare-fun b!7203915 () Bool)

(declare-fun e!4324399 () Bool)

(declare-fun tp!2007905 () Bool)

(declare-fun tp!2007903 () Bool)

(assert (=> b!7203915 (= e!4324399 (and tp!2007905 tp!2007903))))

(assert (=> b!7203559 (= tp!2007626 e!4324399)))

(declare-fun b!7203917 () Bool)

(declare-fun tp!2007907 () Bool)

(declare-fun tp!2007904 () Bool)

(assert (=> b!7203917 (= e!4324399 (and tp!2007907 tp!2007904))))

(declare-fun b!7203916 () Bool)

(declare-fun tp!2007906 () Bool)

(assert (=> b!7203916 (= e!4324399 tp!2007906)))

(declare-fun b!7203914 () Bool)

(assert (=> b!7203914 (= e!4324399 tp_is_empty!46347)))

(assert (= (and b!7203559 ((_ is ElementMatch!18395) (regOne!37302 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203914))

(assert (= (and b!7203559 ((_ is Concat!27240) (regOne!37302 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203915))

(assert (= (and b!7203559 ((_ is Star!18395) (regOne!37302 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203916))

(assert (= (and b!7203559 ((_ is Union!18395) (regOne!37302 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203917))

(declare-fun b!7203919 () Bool)

(declare-fun e!4324400 () Bool)

(declare-fun tp!2007910 () Bool)

(declare-fun tp!2007908 () Bool)

(assert (=> b!7203919 (= e!4324400 (and tp!2007910 tp!2007908))))

(assert (=> b!7203559 (= tp!2007624 e!4324400)))

(declare-fun b!7203921 () Bool)

(declare-fun tp!2007912 () Bool)

(declare-fun tp!2007909 () Bool)

(assert (=> b!7203921 (= e!4324400 (and tp!2007912 tp!2007909))))

(declare-fun b!7203920 () Bool)

(declare-fun tp!2007911 () Bool)

(assert (=> b!7203920 (= e!4324400 tp!2007911)))

(declare-fun b!7203918 () Bool)

(assert (=> b!7203918 (= e!4324400 tp_is_empty!46347)))

(assert (= (and b!7203559 ((_ is ElementMatch!18395) (regTwo!37302 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203918))

(assert (= (and b!7203559 ((_ is Concat!27240) (regTwo!37302 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203919))

(assert (= (and b!7203559 ((_ is Star!18395) (regTwo!37302 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203920))

(assert (= (and b!7203559 ((_ is Union!18395) (regTwo!37302 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203921))

(declare-fun b!7203923 () Bool)

(declare-fun e!4324401 () Bool)

(declare-fun tp!2007915 () Bool)

(declare-fun tp!2007913 () Bool)

(assert (=> b!7203923 (= e!4324401 (and tp!2007915 tp!2007913))))

(assert (=> b!7203527 (= tp!2007584 e!4324401)))

(declare-fun b!7203925 () Bool)

(declare-fun tp!2007917 () Bool)

(declare-fun tp!2007914 () Bool)

(assert (=> b!7203925 (= e!4324401 (and tp!2007917 tp!2007914))))

(declare-fun b!7203924 () Bool)

(declare-fun tp!2007916 () Bool)

(assert (=> b!7203924 (= e!4324401 tp!2007916)))

(declare-fun b!7203922 () Bool)

(assert (=> b!7203922 (= e!4324401 tp_is_empty!46347)))

(assert (= (and b!7203527 ((_ is ElementMatch!18395) (regOne!37302 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203922))

(assert (= (and b!7203527 ((_ is Concat!27240) (regOne!37302 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203923))

(assert (= (and b!7203527 ((_ is Star!18395) (regOne!37302 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203924))

(assert (= (and b!7203527 ((_ is Union!18395) (regOne!37302 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203925))

(declare-fun b!7203927 () Bool)

(declare-fun e!4324402 () Bool)

(declare-fun tp!2007920 () Bool)

(declare-fun tp!2007918 () Bool)

(assert (=> b!7203927 (= e!4324402 (and tp!2007920 tp!2007918))))

(assert (=> b!7203527 (= tp!2007582 e!4324402)))

(declare-fun b!7203929 () Bool)

(declare-fun tp!2007922 () Bool)

(declare-fun tp!2007919 () Bool)

(assert (=> b!7203929 (= e!4324402 (and tp!2007922 tp!2007919))))

(declare-fun b!7203928 () Bool)

(declare-fun tp!2007921 () Bool)

(assert (=> b!7203928 (= e!4324402 tp!2007921)))

(declare-fun b!7203926 () Bool)

(assert (=> b!7203926 (= e!4324402 tp_is_empty!46347)))

(assert (= (and b!7203527 ((_ is ElementMatch!18395) (regTwo!37302 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203926))

(assert (= (and b!7203527 ((_ is Concat!27240) (regTwo!37302 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203927))

(assert (= (and b!7203527 ((_ is Star!18395) (regTwo!37302 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203928))

(assert (= (and b!7203527 ((_ is Union!18395) (regTwo!37302 (regTwo!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203929))

(declare-fun b!7203930 () Bool)

(declare-fun e!4324403 () Bool)

(declare-fun tp!2007923 () Bool)

(declare-fun tp!2007924 () Bool)

(assert (=> b!7203930 (= e!4324403 (and tp!2007923 tp!2007924))))

(assert (=> b!7203566 (= tp!2007634 e!4324403)))

(assert (= (and b!7203566 ((_ is Cons!69780) (exprs!7847 setElem!53475))) b!7203930))

(declare-fun b!7203932 () Bool)

(declare-fun e!4324404 () Bool)

(declare-fun tp!2007927 () Bool)

(declare-fun tp!2007925 () Bool)

(assert (=> b!7203932 (= e!4324404 (and tp!2007927 tp!2007925))))

(assert (=> b!7203537 (= tp!2007596 e!4324404)))

(declare-fun b!7203934 () Bool)

(declare-fun tp!2007929 () Bool)

(declare-fun tp!2007926 () Bool)

(assert (=> b!7203934 (= e!4324404 (and tp!2007929 tp!2007926))))

(declare-fun b!7203933 () Bool)

(declare-fun tp!2007928 () Bool)

(assert (=> b!7203933 (= e!4324404 tp!2007928)))

(declare-fun b!7203931 () Bool)

(assert (=> b!7203931 (= e!4324404 tp_is_empty!46347)))

(assert (= (and b!7203537 ((_ is ElementMatch!18395) (regOne!37303 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203931))

(assert (= (and b!7203537 ((_ is Concat!27240) (regOne!37303 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203932))

(assert (= (and b!7203537 ((_ is Star!18395) (regOne!37303 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203933))

(assert (= (and b!7203537 ((_ is Union!18395) (regOne!37303 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203934))

(declare-fun b!7203936 () Bool)

(declare-fun e!4324405 () Bool)

(declare-fun tp!2007932 () Bool)

(declare-fun tp!2007930 () Bool)

(assert (=> b!7203936 (= e!4324405 (and tp!2007932 tp!2007930))))

(assert (=> b!7203537 (= tp!2007593 e!4324405)))

(declare-fun b!7203938 () Bool)

(declare-fun tp!2007934 () Bool)

(declare-fun tp!2007931 () Bool)

(assert (=> b!7203938 (= e!4324405 (and tp!2007934 tp!2007931))))

(declare-fun b!7203937 () Bool)

(declare-fun tp!2007933 () Bool)

(assert (=> b!7203937 (= e!4324405 tp!2007933)))

(declare-fun b!7203935 () Bool)

(assert (=> b!7203935 (= e!4324405 tp_is_empty!46347)))

(assert (= (and b!7203537 ((_ is ElementMatch!18395) (regTwo!37303 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203935))

(assert (= (and b!7203537 ((_ is Concat!27240) (regTwo!37303 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203936))

(assert (= (and b!7203537 ((_ is Star!18395) (regTwo!37303 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203937))

(assert (= (and b!7203537 ((_ is Union!18395) (regTwo!37303 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203938))

(declare-fun b!7203940 () Bool)

(declare-fun e!4324406 () Bool)

(declare-fun tp!2007937 () Bool)

(declare-fun tp!2007935 () Bool)

(assert (=> b!7203940 (= e!4324406 (and tp!2007937 tp!2007935))))

(assert (=> b!7203560 (= tp!2007627 e!4324406)))

(declare-fun b!7203942 () Bool)

(declare-fun tp!2007939 () Bool)

(declare-fun tp!2007936 () Bool)

(assert (=> b!7203942 (= e!4324406 (and tp!2007939 tp!2007936))))

(declare-fun b!7203941 () Bool)

(declare-fun tp!2007938 () Bool)

(assert (=> b!7203941 (= e!4324406 tp!2007938)))

(declare-fun b!7203939 () Bool)

(assert (=> b!7203939 (= e!4324406 tp_is_empty!46347)))

(assert (= (and b!7203560 ((_ is ElementMatch!18395) (reg!18724 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203939))

(assert (= (and b!7203560 ((_ is Concat!27240) (reg!18724 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203940))

(assert (= (and b!7203560 ((_ is Star!18395) (reg!18724 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203941))

(assert (= (and b!7203560 ((_ is Union!18395) (reg!18724 (regOne!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7203942))

(declare-fun b!7203944 () Bool)

(declare-fun e!4324407 () Bool)

(declare-fun tp!2007942 () Bool)

(declare-fun tp!2007940 () Bool)

(assert (=> b!7203944 (= e!4324407 (and tp!2007942 tp!2007940))))

(assert (=> b!7203544 (= tp!2007605 e!4324407)))

(declare-fun b!7203946 () Bool)

(declare-fun tp!2007944 () Bool)

(declare-fun tp!2007941 () Bool)

(assert (=> b!7203946 (= e!4324407 (and tp!2007944 tp!2007941))))

(declare-fun b!7203945 () Bool)

(declare-fun tp!2007943 () Bool)

(assert (=> b!7203945 (= e!4324407 tp!2007943)))

(declare-fun b!7203943 () Bool)

(assert (=> b!7203943 (= e!4324407 tp_is_empty!46347)))

(assert (= (and b!7203544 ((_ is ElementMatch!18395) (reg!18724 (h!76228 (exprs!7847 setElem!53472))))) b!7203943))

(assert (= (and b!7203544 ((_ is Concat!27240) (reg!18724 (h!76228 (exprs!7847 setElem!53472))))) b!7203944))

(assert (= (and b!7203544 ((_ is Star!18395) (reg!18724 (h!76228 (exprs!7847 setElem!53472))))) b!7203945))

(assert (= (and b!7203544 ((_ is Union!18395) (reg!18724 (h!76228 (exprs!7847 setElem!53472))))) b!7203946))

(declare-fun b!7203948 () Bool)

(declare-fun e!4324408 () Bool)

(declare-fun tp!2007947 () Bool)

(declare-fun tp!2007945 () Bool)

(assert (=> b!7203948 (= e!4324408 (and tp!2007947 tp!2007945))))

(assert (=> b!7203535 (= tp!2007594 e!4324408)))

(declare-fun b!7203950 () Bool)

(declare-fun tp!2007949 () Bool)

(declare-fun tp!2007946 () Bool)

(assert (=> b!7203950 (= e!4324408 (and tp!2007949 tp!2007946))))

(declare-fun b!7203949 () Bool)

(declare-fun tp!2007948 () Bool)

(assert (=> b!7203949 (= e!4324408 tp!2007948)))

(declare-fun b!7203947 () Bool)

(assert (=> b!7203947 (= e!4324408 tp_is_empty!46347)))

(assert (= (and b!7203535 ((_ is ElementMatch!18395) (regOne!37302 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203947))

(assert (= (and b!7203535 ((_ is Concat!27240) (regOne!37302 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203948))

(assert (= (and b!7203535 ((_ is Star!18395) (regOne!37302 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203949))

(assert (= (and b!7203535 ((_ is Union!18395) (regOne!37302 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203950))

(declare-fun b!7203952 () Bool)

(declare-fun e!4324409 () Bool)

(declare-fun tp!2007952 () Bool)

(declare-fun tp!2007950 () Bool)

(assert (=> b!7203952 (= e!4324409 (and tp!2007952 tp!2007950))))

(assert (=> b!7203535 (= tp!2007592 e!4324409)))

(declare-fun b!7203954 () Bool)

(declare-fun tp!2007954 () Bool)

(declare-fun tp!2007951 () Bool)

(assert (=> b!7203954 (= e!4324409 (and tp!2007954 tp!2007951))))

(declare-fun b!7203953 () Bool)

(declare-fun tp!2007953 () Bool)

(assert (=> b!7203953 (= e!4324409 tp!2007953)))

(declare-fun b!7203951 () Bool)

(assert (=> b!7203951 (= e!4324409 tp_is_empty!46347)))

(assert (= (and b!7203535 ((_ is ElementMatch!18395) (regTwo!37302 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203951))

(assert (= (and b!7203535 ((_ is Concat!27240) (regTwo!37302 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203952))

(assert (= (and b!7203535 ((_ is Star!18395) (regTwo!37302 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203953))

(assert (= (and b!7203535 ((_ is Union!18395) (regTwo!37302 (regOne!37303 (h!76228 (exprs!7847 setElem!53466)))))) b!7203954))

(declare-fun b!7203956 () Bool)

(declare-fun e!4324410 () Bool)

(declare-fun tp!2007957 () Bool)

(declare-fun tp!2007955 () Bool)

(assert (=> b!7203956 (= e!4324410 (and tp!2007957 tp!2007955))))

(assert (=> b!7203545 (= tp!2007606 e!4324410)))

(declare-fun b!7203958 () Bool)

(declare-fun tp!2007959 () Bool)

(declare-fun tp!2007956 () Bool)

(assert (=> b!7203958 (= e!4324410 (and tp!2007959 tp!2007956))))

(declare-fun b!7203957 () Bool)

(declare-fun tp!2007958 () Bool)

(assert (=> b!7203957 (= e!4324410 tp!2007958)))

(declare-fun b!7203955 () Bool)

(assert (=> b!7203955 (= e!4324410 tp_is_empty!46347)))

(assert (= (and b!7203545 ((_ is ElementMatch!18395) (regOne!37303 (h!76228 (exprs!7847 setElem!53472))))) b!7203955))

(assert (= (and b!7203545 ((_ is Concat!27240) (regOne!37303 (h!76228 (exprs!7847 setElem!53472))))) b!7203956))

(assert (= (and b!7203545 ((_ is Star!18395) (regOne!37303 (h!76228 (exprs!7847 setElem!53472))))) b!7203957))

(assert (= (and b!7203545 ((_ is Union!18395) (regOne!37303 (h!76228 (exprs!7847 setElem!53472))))) b!7203958))

(declare-fun b!7203960 () Bool)

(declare-fun e!4324411 () Bool)

(declare-fun tp!2007962 () Bool)

(declare-fun tp!2007960 () Bool)

(assert (=> b!7203960 (= e!4324411 (and tp!2007962 tp!2007960))))

(assert (=> b!7203545 (= tp!2007603 e!4324411)))

(declare-fun b!7203962 () Bool)

(declare-fun tp!2007964 () Bool)

(declare-fun tp!2007961 () Bool)

(assert (=> b!7203962 (= e!4324411 (and tp!2007964 tp!2007961))))

(declare-fun b!7203961 () Bool)

(declare-fun tp!2007963 () Bool)

(assert (=> b!7203961 (= e!4324411 tp!2007963)))

(declare-fun b!7203959 () Bool)

(assert (=> b!7203959 (= e!4324411 tp_is_empty!46347)))

(assert (= (and b!7203545 ((_ is ElementMatch!18395) (regTwo!37303 (h!76228 (exprs!7847 setElem!53472))))) b!7203959))

(assert (= (and b!7203545 ((_ is Concat!27240) (regTwo!37303 (h!76228 (exprs!7847 setElem!53472))))) b!7203960))

(assert (= (and b!7203545 ((_ is Star!18395) (regTwo!37303 (h!76228 (exprs!7847 setElem!53472))))) b!7203961))

(assert (= (and b!7203545 ((_ is Union!18395) (regTwo!37303 (h!76228 (exprs!7847 setElem!53472))))) b!7203962))

(declare-fun condSetEmpty!53477 () Bool)

(assert (=> setNonEmpty!53475 (= condSetEmpty!53477 (= setRest!53475 ((as const (Array Context!14694 Bool)) false)))))

(declare-fun setRes!53477 () Bool)

(assert (=> setNonEmpty!53475 (= tp!2007635 setRes!53477)))

(declare-fun setIsEmpty!53477 () Bool)

(assert (=> setIsEmpty!53477 setRes!53477))

(declare-fun setNonEmpty!53477 () Bool)

(declare-fun e!4324412 () Bool)

(declare-fun setElem!53477 () Context!14694)

(declare-fun tp!2007966 () Bool)

(assert (=> setNonEmpty!53477 (= setRes!53477 (and tp!2007966 (inv!89009 setElem!53477) e!4324412))))

(declare-fun setRest!53477 () (InoxSet Context!14694))

(assert (=> setNonEmpty!53477 (= setRest!53475 ((_ map or) (store ((as const (Array Context!14694 Bool)) false) setElem!53477 true) setRest!53477))))

(declare-fun b!7203963 () Bool)

(declare-fun tp!2007965 () Bool)

(assert (=> b!7203963 (= e!4324412 tp!2007965)))

(assert (= (and setNonEmpty!53475 condSetEmpty!53477) setIsEmpty!53477))

(assert (= (and setNonEmpty!53475 (not condSetEmpty!53477)) setNonEmpty!53477))

(assert (= setNonEmpty!53477 b!7203963))

(declare-fun m!7892334 () Bool)

(assert (=> setNonEmpty!53477 m!7892334))

(declare-fun b!7203965 () Bool)

(declare-fun e!4324413 () Bool)

(declare-fun tp!2007969 () Bool)

(declare-fun tp!2007967 () Bool)

(assert (=> b!7203965 (= e!4324413 (and tp!2007969 tp!2007967))))

(assert (=> b!7203543 (= tp!2007604 e!4324413)))

(declare-fun b!7203967 () Bool)

(declare-fun tp!2007971 () Bool)

(declare-fun tp!2007968 () Bool)

(assert (=> b!7203967 (= e!4324413 (and tp!2007971 tp!2007968))))

(declare-fun b!7203966 () Bool)

(declare-fun tp!2007970 () Bool)

(assert (=> b!7203966 (= e!4324413 tp!2007970)))

(declare-fun b!7203964 () Bool)

(assert (=> b!7203964 (= e!4324413 tp_is_empty!46347)))

(assert (= (and b!7203543 ((_ is ElementMatch!18395) (regOne!37302 (h!76228 (exprs!7847 setElem!53472))))) b!7203964))

(assert (= (and b!7203543 ((_ is Concat!27240) (regOne!37302 (h!76228 (exprs!7847 setElem!53472))))) b!7203965))

(assert (= (and b!7203543 ((_ is Star!18395) (regOne!37302 (h!76228 (exprs!7847 setElem!53472))))) b!7203966))

(assert (= (and b!7203543 ((_ is Union!18395) (regOne!37302 (h!76228 (exprs!7847 setElem!53472))))) b!7203967))

(declare-fun b!7203969 () Bool)

(declare-fun e!4324414 () Bool)

(declare-fun tp!2007974 () Bool)

(declare-fun tp!2007972 () Bool)

(assert (=> b!7203969 (= e!4324414 (and tp!2007974 tp!2007972))))

(assert (=> b!7203543 (= tp!2007602 e!4324414)))

(declare-fun b!7203971 () Bool)

(declare-fun tp!2007976 () Bool)

(declare-fun tp!2007973 () Bool)

(assert (=> b!7203971 (= e!4324414 (and tp!2007976 tp!2007973))))

(declare-fun b!7203970 () Bool)

(declare-fun tp!2007975 () Bool)

(assert (=> b!7203970 (= e!4324414 tp!2007975)))

(declare-fun b!7203968 () Bool)

(assert (=> b!7203968 (= e!4324414 tp_is_empty!46347)))

(assert (= (and b!7203543 ((_ is ElementMatch!18395) (regTwo!37302 (h!76228 (exprs!7847 setElem!53472))))) b!7203968))

(assert (= (and b!7203543 ((_ is Concat!27240) (regTwo!37302 (h!76228 (exprs!7847 setElem!53472))))) b!7203969))

(assert (= (and b!7203543 ((_ is Star!18395) (regTwo!37302 (h!76228 (exprs!7847 setElem!53472))))) b!7203970))

(assert (= (and b!7203543 ((_ is Union!18395) (regTwo!37302 (h!76228 (exprs!7847 setElem!53472))))) b!7203971))

(declare-fun b!7203972 () Bool)

(declare-fun e!4324415 () Bool)

(declare-fun tp!2007977 () Bool)

(assert (=> b!7203972 (= e!4324415 (and tp_is_empty!46347 tp!2007977))))

(assert (=> b!7203551 (= tp!2007614 e!4324415)))

(assert (= (and b!7203551 ((_ is Cons!69781) (t!383934 (t!383934 (t!383934 (t!383934 s!7961)))))) b!7203972))

(declare-fun b!7203974 () Bool)

(declare-fun e!4324416 () Bool)

(declare-fun tp!2007980 () Bool)

(declare-fun tp!2007978 () Bool)

(assert (=> b!7203974 (= e!4324416 (and tp!2007980 tp!2007978))))

(assert (=> b!7203571 (= tp!2007641 e!4324416)))

(declare-fun b!7203976 () Bool)

(declare-fun tp!2007982 () Bool)

(declare-fun tp!2007979 () Bool)

(assert (=> b!7203976 (= e!4324416 (and tp!2007982 tp!2007979))))

(declare-fun b!7203975 () Bool)

(declare-fun tp!2007981 () Bool)

(assert (=> b!7203975 (= e!4324416 tp!2007981)))

(declare-fun b!7203973 () Bool)

(assert (=> b!7203973 (= e!4324416 tp_is_empty!46347)))

(assert (= (and b!7203571 ((_ is ElementMatch!18395) (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544)))))) b!7203973))

(assert (= (and b!7203571 ((_ is Concat!27240) (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544)))))) b!7203974))

(assert (= (and b!7203571 ((_ is Star!18395) (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544)))))) b!7203975))

(assert (= (and b!7203571 ((_ is Union!18395) (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544)))))) b!7203976))

(declare-fun b!7203977 () Bool)

(declare-fun e!4324417 () Bool)

(declare-fun tp!2007983 () Bool)

(declare-fun tp!2007984 () Bool)

(assert (=> b!7203977 (= e!4324417 (and tp!2007983 tp!2007984))))

(assert (=> b!7203571 (= tp!2007642 e!4324417)))

(assert (= (and b!7203571 ((_ is Cons!69780) (t!383933 (t!383933 (t!383933 (exprs!7847 c!10544)))))) b!7203977))

(declare-fun b!7203979 () Bool)

(declare-fun e!4324418 () Bool)

(declare-fun tp!2007987 () Bool)

(declare-fun tp!2007985 () Bool)

(assert (=> b!7203979 (= e!4324418 (and tp!2007987 tp!2007985))))

(assert (=> b!7203517 (= tp!2007571 e!4324418)))

(declare-fun b!7203981 () Bool)

(declare-fun tp!2007989 () Bool)

(declare-fun tp!2007986 () Bool)

(assert (=> b!7203981 (= e!4324418 (and tp!2007989 tp!2007986))))

(declare-fun b!7203980 () Bool)

(declare-fun tp!2007988 () Bool)

(assert (=> b!7203980 (= e!4324418 tp!2007988)))

(declare-fun b!7203978 () Bool)

(assert (=> b!7203978 (= e!4324418 tp_is_empty!46347)))

(assert (= (and b!7203517 ((_ is ElementMatch!18395) (regOne!37303 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203978))

(assert (= (and b!7203517 ((_ is Concat!27240) (regOne!37303 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203979))

(assert (= (and b!7203517 ((_ is Star!18395) (regOne!37303 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203980))

(assert (= (and b!7203517 ((_ is Union!18395) (regOne!37303 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203981))

(declare-fun b!7203983 () Bool)

(declare-fun e!4324419 () Bool)

(declare-fun tp!2007992 () Bool)

(declare-fun tp!2007990 () Bool)

(assert (=> b!7203983 (= e!4324419 (and tp!2007992 tp!2007990))))

(assert (=> b!7203517 (= tp!2007568 e!4324419)))

(declare-fun b!7203985 () Bool)

(declare-fun tp!2007994 () Bool)

(declare-fun tp!2007991 () Bool)

(assert (=> b!7203985 (= e!4324419 (and tp!2007994 tp!2007991))))

(declare-fun b!7203984 () Bool)

(declare-fun tp!2007993 () Bool)

(assert (=> b!7203984 (= e!4324419 tp!2007993)))

(declare-fun b!7203982 () Bool)

(assert (=> b!7203982 (= e!4324419 tp_is_empty!46347)))

(assert (= (and b!7203517 ((_ is ElementMatch!18395) (regTwo!37303 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203982))

(assert (= (and b!7203517 ((_ is Concat!27240) (regTwo!37303 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203983))

(assert (= (and b!7203517 ((_ is Star!18395) (regTwo!37303 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203984))

(assert (= (and b!7203517 ((_ is Union!18395) (regTwo!37303 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7203985))

(declare-fun b!7203987 () Bool)

(declare-fun e!4324420 () Bool)

(declare-fun tp!2007997 () Bool)

(declare-fun tp!2007995 () Bool)

(assert (=> b!7203987 (= e!4324420 (and tp!2007997 tp!2007995))))

(assert (=> b!7203557 (= tp!2007622 e!4324420)))

(declare-fun b!7203989 () Bool)

(declare-fun tp!2007999 () Bool)

(declare-fun tp!2007996 () Bool)

(assert (=> b!7203989 (= e!4324420 (and tp!2007999 tp!2007996))))

(declare-fun b!7203988 () Bool)

(declare-fun tp!2007998 () Bool)

(assert (=> b!7203988 (= e!4324420 tp!2007998)))

(declare-fun b!7203986 () Bool)

(assert (=> b!7203986 (= e!4324420 tp_is_empty!46347)))

(assert (= (and b!7203557 ((_ is ElementMatch!18395) (h!76228 (exprs!7847 setElem!53473)))) b!7203986))

(assert (= (and b!7203557 ((_ is Concat!27240) (h!76228 (exprs!7847 setElem!53473)))) b!7203987))

(assert (= (and b!7203557 ((_ is Star!18395) (h!76228 (exprs!7847 setElem!53473)))) b!7203988))

(assert (= (and b!7203557 ((_ is Union!18395) (h!76228 (exprs!7847 setElem!53473)))) b!7203989))

(declare-fun b!7203990 () Bool)

(declare-fun e!4324421 () Bool)

(declare-fun tp!2008000 () Bool)

(declare-fun tp!2008001 () Bool)

(assert (=> b!7203990 (= e!4324421 (and tp!2008000 tp!2008001))))

(assert (=> b!7203557 (= tp!2007623 e!4324421)))

(assert (= (and b!7203557 ((_ is Cons!69780) (t!383933 (exprs!7847 setElem!53473)))) b!7203990))

(declare-fun b!7203992 () Bool)

(declare-fun e!4324422 () Bool)

(declare-fun tp!2008004 () Bool)

(declare-fun tp!2008002 () Bool)

(assert (=> b!7203992 (= e!4324422 (and tp!2008004 tp!2008002))))

(assert (=> b!7203525 (= tp!2007581 e!4324422)))

(declare-fun b!7203994 () Bool)

(declare-fun tp!2008006 () Bool)

(declare-fun tp!2008003 () Bool)

(assert (=> b!7203994 (= e!4324422 (and tp!2008006 tp!2008003))))

(declare-fun b!7203993 () Bool)

(declare-fun tp!2008005 () Bool)

(assert (=> b!7203993 (= e!4324422 tp!2008005)))

(declare-fun b!7203991 () Bool)

(assert (=> b!7203991 (= e!4324422 tp_is_empty!46347)))

(assert (= (and b!7203525 ((_ is ElementMatch!18395) (regOne!37303 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203991))

(assert (= (and b!7203525 ((_ is Concat!27240) (regOne!37303 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203992))

(assert (= (and b!7203525 ((_ is Star!18395) (regOne!37303 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203993))

(assert (= (and b!7203525 ((_ is Union!18395) (regOne!37303 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203994))

(declare-fun b!7203996 () Bool)

(declare-fun e!4324423 () Bool)

(declare-fun tp!2008009 () Bool)

(declare-fun tp!2008007 () Bool)

(assert (=> b!7203996 (= e!4324423 (and tp!2008009 tp!2008007))))

(assert (=> b!7203525 (= tp!2007578 e!4324423)))

(declare-fun b!7203998 () Bool)

(declare-fun tp!2008011 () Bool)

(declare-fun tp!2008008 () Bool)

(assert (=> b!7203998 (= e!4324423 (and tp!2008011 tp!2008008))))

(declare-fun b!7203997 () Bool)

(declare-fun tp!2008010 () Bool)

(assert (=> b!7203997 (= e!4324423 tp!2008010)))

(declare-fun b!7203995 () Bool)

(assert (=> b!7203995 (= e!4324423 tp_is_empty!46347)))

(assert (= (and b!7203525 ((_ is ElementMatch!18395) (regTwo!37303 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203995))

(assert (= (and b!7203525 ((_ is Concat!27240) (regTwo!37303 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203996))

(assert (= (and b!7203525 ((_ is Star!18395) (regTwo!37303 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203997))

(assert (= (and b!7203525 ((_ is Union!18395) (regTwo!37303 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7203998))

(declare-fun b!7204000 () Bool)

(declare-fun e!4324424 () Bool)

(declare-fun tp!2008014 () Bool)

(declare-fun tp!2008012 () Bool)

(assert (=> b!7204000 (= e!4324424 (and tp!2008014 tp!2008012))))

(assert (=> b!7203550 (= tp!2007613 e!4324424)))

(declare-fun b!7204002 () Bool)

(declare-fun tp!2008016 () Bool)

(declare-fun tp!2008013 () Bool)

(assert (=> b!7204002 (= e!4324424 (and tp!2008016 tp!2008013))))

(declare-fun b!7204001 () Bool)

(declare-fun tp!2008015 () Bool)

(assert (=> b!7204001 (= e!4324424 tp!2008015)))

(declare-fun b!7203999 () Bool)

(assert (=> b!7203999 (= e!4324424 tp_is_empty!46347)))

(assert (= (and b!7203550 ((_ is ElementMatch!18395) (regOne!37303 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7203999))

(assert (= (and b!7203550 ((_ is Concat!27240) (regOne!37303 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204000))

(assert (= (and b!7203550 ((_ is Star!18395) (regOne!37303 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204001))

(assert (= (and b!7203550 ((_ is Union!18395) (regOne!37303 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204002))

(declare-fun b!7204004 () Bool)

(declare-fun e!4324425 () Bool)

(declare-fun tp!2008019 () Bool)

(declare-fun tp!2008017 () Bool)

(assert (=> b!7204004 (= e!4324425 (and tp!2008019 tp!2008017))))

(assert (=> b!7203550 (= tp!2007610 e!4324425)))

(declare-fun b!7204006 () Bool)

(declare-fun tp!2008021 () Bool)

(declare-fun tp!2008018 () Bool)

(assert (=> b!7204006 (= e!4324425 (and tp!2008021 tp!2008018))))

(declare-fun b!7204005 () Bool)

(declare-fun tp!2008020 () Bool)

(assert (=> b!7204005 (= e!4324425 tp!2008020)))

(declare-fun b!7204003 () Bool)

(assert (=> b!7204003 (= e!4324425 tp_is_empty!46347)))

(assert (= (and b!7203550 ((_ is ElementMatch!18395) (regTwo!37303 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204003))

(assert (= (and b!7203550 ((_ is Concat!27240) (regTwo!37303 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204004))

(assert (= (and b!7203550 ((_ is Star!18395) (regTwo!37303 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204005))

(assert (= (and b!7203550 ((_ is Union!18395) (regTwo!37303 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204006))

(declare-fun b!7204008 () Bool)

(declare-fun e!4324426 () Bool)

(declare-fun tp!2008024 () Bool)

(declare-fun tp!2008022 () Bool)

(assert (=> b!7204008 (= e!4324426 (and tp!2008024 tp!2008022))))

(assert (=> b!7203516 (= tp!2007570 e!4324426)))

(declare-fun b!7204010 () Bool)

(declare-fun tp!2008026 () Bool)

(declare-fun tp!2008023 () Bool)

(assert (=> b!7204010 (= e!4324426 (and tp!2008026 tp!2008023))))

(declare-fun b!7204009 () Bool)

(declare-fun tp!2008025 () Bool)

(assert (=> b!7204009 (= e!4324426 tp!2008025)))

(declare-fun b!7204007 () Bool)

(assert (=> b!7204007 (= e!4324426 tp_is_empty!46347)))

(assert (= (and b!7203516 ((_ is ElementMatch!18395) (reg!18724 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204007))

(assert (= (and b!7203516 ((_ is Concat!27240) (reg!18724 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204008))

(assert (= (and b!7203516 ((_ is Star!18395) (reg!18724 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204009))

(assert (= (and b!7203516 ((_ is Union!18395) (reg!18724 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204010))

(declare-fun b!7204012 () Bool)

(declare-fun e!4324427 () Bool)

(declare-fun tp!2008029 () Bool)

(declare-fun tp!2008027 () Bool)

(assert (=> b!7204012 (= e!4324427 (and tp!2008029 tp!2008027))))

(assert (=> b!7203565 (= tp!2007633 e!4324427)))

(declare-fun b!7204014 () Bool)

(declare-fun tp!2008031 () Bool)

(declare-fun tp!2008028 () Bool)

(assert (=> b!7204014 (= e!4324427 (and tp!2008031 tp!2008028))))

(declare-fun b!7204013 () Bool)

(declare-fun tp!2008030 () Bool)

(assert (=> b!7204013 (= e!4324427 tp!2008030)))

(declare-fun b!7204011 () Bool)

(assert (=> b!7204011 (= e!4324427 tp_is_empty!46347)))

(assert (= (and b!7203565 ((_ is ElementMatch!18395) (regOne!37303 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7204011))

(assert (= (and b!7203565 ((_ is Concat!27240) (regOne!37303 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7204012))

(assert (= (and b!7203565 ((_ is Star!18395) (regOne!37303 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7204013))

(assert (= (and b!7203565 ((_ is Union!18395) (regOne!37303 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7204014))

(declare-fun b!7204016 () Bool)

(declare-fun e!4324428 () Bool)

(declare-fun tp!2008034 () Bool)

(declare-fun tp!2008032 () Bool)

(assert (=> b!7204016 (= e!4324428 (and tp!2008034 tp!2008032))))

(assert (=> b!7203565 (= tp!2007630 e!4324428)))

(declare-fun b!7204018 () Bool)

(declare-fun tp!2008036 () Bool)

(declare-fun tp!2008033 () Bool)

(assert (=> b!7204018 (= e!4324428 (and tp!2008036 tp!2008033))))

(declare-fun b!7204017 () Bool)

(declare-fun tp!2008035 () Bool)

(assert (=> b!7204017 (= e!4324428 tp!2008035)))

(declare-fun b!7204015 () Bool)

(assert (=> b!7204015 (= e!4324428 tp_is_empty!46347)))

(assert (= (and b!7203565 ((_ is ElementMatch!18395) (regTwo!37303 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7204015))

(assert (= (and b!7203565 ((_ is Concat!27240) (regTwo!37303 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7204016))

(assert (= (and b!7203565 ((_ is Star!18395) (regTwo!37303 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7204017))

(assert (= (and b!7203565 ((_ is Union!18395) (regTwo!37303 (regTwo!37302 (h!76228 (exprs!7847 setElem!53466)))))) b!7204018))

(declare-fun b!7204020 () Bool)

(declare-fun e!4324429 () Bool)

(declare-fun tp!2008039 () Bool)

(declare-fun tp!2008037 () Bool)

(assert (=> b!7204020 (= e!4324429 (and tp!2008039 tp!2008037))))

(assert (=> b!7203533 (= tp!2007591 e!4324429)))

(declare-fun b!7204022 () Bool)

(declare-fun tp!2008041 () Bool)

(declare-fun tp!2008038 () Bool)

(assert (=> b!7204022 (= e!4324429 (and tp!2008041 tp!2008038))))

(declare-fun b!7204021 () Bool)

(declare-fun tp!2008040 () Bool)

(assert (=> b!7204021 (= e!4324429 tp!2008040)))

(declare-fun b!7204019 () Bool)

(assert (=> b!7204019 (= e!4324429 tp_is_empty!46347)))

(assert (= (and b!7203533 ((_ is ElementMatch!18395) (regOne!37303 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7204019))

(assert (= (and b!7203533 ((_ is Concat!27240) (regOne!37303 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7204020))

(assert (= (and b!7203533 ((_ is Star!18395) (regOne!37303 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7204021))

(assert (= (and b!7203533 ((_ is Union!18395) (regOne!37303 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7204022))

(declare-fun b!7204024 () Bool)

(declare-fun e!4324430 () Bool)

(declare-fun tp!2008044 () Bool)

(declare-fun tp!2008042 () Bool)

(assert (=> b!7204024 (= e!4324430 (and tp!2008044 tp!2008042))))

(assert (=> b!7203533 (= tp!2007588 e!4324430)))

(declare-fun b!7204026 () Bool)

(declare-fun tp!2008046 () Bool)

(declare-fun tp!2008043 () Bool)

(assert (=> b!7204026 (= e!4324430 (and tp!2008046 tp!2008043))))

(declare-fun b!7204025 () Bool)

(declare-fun tp!2008045 () Bool)

(assert (=> b!7204025 (= e!4324430 tp!2008045)))

(declare-fun b!7204023 () Bool)

(assert (=> b!7204023 (= e!4324430 tp_is_empty!46347)))

(assert (= (and b!7203533 ((_ is ElementMatch!18395) (regTwo!37303 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7204023))

(assert (= (and b!7203533 ((_ is Concat!27240) (regTwo!37303 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7204024))

(assert (= (and b!7203533 ((_ is Star!18395) (regTwo!37303 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7204025))

(assert (= (and b!7203533 ((_ is Union!18395) (regTwo!37303 (reg!18724 (h!76228 (exprs!7847 c!10544)))))) b!7204026))

(declare-fun b!7204028 () Bool)

(declare-fun e!4324431 () Bool)

(declare-fun tp!2008049 () Bool)

(declare-fun tp!2008047 () Bool)

(assert (=> b!7204028 (= e!4324431 (and tp!2008049 tp!2008047))))

(assert (=> b!7203524 (= tp!2007580 e!4324431)))

(declare-fun b!7204030 () Bool)

(declare-fun tp!2008051 () Bool)

(declare-fun tp!2008048 () Bool)

(assert (=> b!7204030 (= e!4324431 (and tp!2008051 tp!2008048))))

(declare-fun b!7204029 () Bool)

(declare-fun tp!2008050 () Bool)

(assert (=> b!7204029 (= e!4324431 tp!2008050)))

(declare-fun b!7204027 () Bool)

(assert (=> b!7204027 (= e!4324431 tp_is_empty!46347)))

(assert (= (and b!7203524 ((_ is ElementMatch!18395) (reg!18724 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7204027))

(assert (= (and b!7203524 ((_ is Concat!27240) (reg!18724 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7204028))

(assert (= (and b!7203524 ((_ is Star!18395) (reg!18724 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7204029))

(assert (= (and b!7203524 ((_ is Union!18395) (reg!18724 (regOne!37302 (h!76228 (exprs!7847 c!10544)))))) b!7204030))

(declare-fun b!7204032 () Bool)

(declare-fun e!4324432 () Bool)

(declare-fun tp!2008054 () Bool)

(declare-fun tp!2008052 () Bool)

(assert (=> b!7204032 (= e!4324432 (and tp!2008054 tp!2008052))))

(assert (=> b!7203549 (= tp!2007612 e!4324432)))

(declare-fun b!7204034 () Bool)

(declare-fun tp!2008056 () Bool)

(declare-fun tp!2008053 () Bool)

(assert (=> b!7204034 (= e!4324432 (and tp!2008056 tp!2008053))))

(declare-fun b!7204033 () Bool)

(declare-fun tp!2008055 () Bool)

(assert (=> b!7204033 (= e!4324432 tp!2008055)))

(declare-fun b!7204031 () Bool)

(assert (=> b!7204031 (= e!4324432 tp_is_empty!46347)))

(assert (= (and b!7203549 ((_ is ElementMatch!18395) (reg!18724 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204031))

(assert (= (and b!7203549 ((_ is Concat!27240) (reg!18724 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204032))

(assert (= (and b!7203549 ((_ is Star!18395) (reg!18724 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204033))

(assert (= (and b!7203549 ((_ is Union!18395) (reg!18724 (reg!18724 (h!76228 (exprs!7847 setElem!53466)))))) b!7204034))

(declare-fun b!7204036 () Bool)

(declare-fun e!4324433 () Bool)

(declare-fun tp!2008059 () Bool)

(declare-fun tp!2008057 () Bool)

(assert (=> b!7204036 (= e!4324433 (and tp!2008059 tp!2008057))))

(assert (=> b!7203570 (= tp!2007640 e!4324433)))

(declare-fun b!7204038 () Bool)

(declare-fun tp!2008061 () Bool)

(declare-fun tp!2008058 () Bool)

(assert (=> b!7204038 (= e!4324433 (and tp!2008061 tp!2008058))))

(declare-fun b!7204037 () Bool)

(declare-fun tp!2008060 () Bool)

(assert (=> b!7204037 (= e!4324433 tp!2008060)))

(declare-fun b!7204035 () Bool)

(assert (=> b!7204035 (= e!4324433 tp_is_empty!46347)))

(assert (= (and b!7203570 ((_ is ElementMatch!18395) (regOne!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7204035))

(assert (= (and b!7203570 ((_ is Concat!27240) (regOne!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7204036))

(assert (= (and b!7203570 ((_ is Star!18395) (regOne!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7204037))

(assert (= (and b!7203570 ((_ is Union!18395) (regOne!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7204038))

(declare-fun b!7204040 () Bool)

(declare-fun e!4324434 () Bool)

(declare-fun tp!2008064 () Bool)

(declare-fun tp!2008062 () Bool)

(assert (=> b!7204040 (= e!4324434 (and tp!2008064 tp!2008062))))

(assert (=> b!7203570 (= tp!2007637 e!4324434)))

(declare-fun b!7204042 () Bool)

(declare-fun tp!2008066 () Bool)

(declare-fun tp!2008063 () Bool)

(assert (=> b!7204042 (= e!4324434 (and tp!2008066 tp!2008063))))

(declare-fun b!7204041 () Bool)

(declare-fun tp!2008065 () Bool)

(assert (=> b!7204041 (= e!4324434 tp!2008065)))

(declare-fun b!7204039 () Bool)

(assert (=> b!7204039 (= e!4324434 tp_is_empty!46347)))

(assert (= (and b!7203570 ((_ is ElementMatch!18395) (regTwo!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7204039))

(assert (= (and b!7203570 ((_ is Concat!27240) (regTwo!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7204040))

(assert (= (and b!7203570 ((_ is Star!18395) (regTwo!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7204041))

(assert (= (and b!7203570 ((_ is Union!18395) (regTwo!37303 (h!76228 (t!383933 (exprs!7847 c!10544)))))) b!7204042))

(declare-fun b!7204044 () Bool)

(declare-fun e!4324435 () Bool)

(declare-fun tp!2008069 () Bool)

(declare-fun tp!2008067 () Bool)

(assert (=> b!7204044 (= e!4324435 (and tp!2008069 tp!2008067))))

(assert (=> b!7203515 (= tp!2007569 e!4324435)))

(declare-fun b!7204046 () Bool)

(declare-fun tp!2008071 () Bool)

(declare-fun tp!2008068 () Bool)

(assert (=> b!7204046 (= e!4324435 (and tp!2008071 tp!2008068))))

(declare-fun b!7204045 () Bool)

(declare-fun tp!2008070 () Bool)

(assert (=> b!7204045 (= e!4324435 tp!2008070)))

(declare-fun b!7204043 () Bool)

(assert (=> b!7204043 (= e!4324435 tp_is_empty!46347)))

(assert (= (and b!7203515 ((_ is ElementMatch!18395) (regOne!37302 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204043))

(assert (= (and b!7203515 ((_ is Concat!27240) (regOne!37302 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204044))

(assert (= (and b!7203515 ((_ is Star!18395) (regOne!37302 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204045))

(assert (= (and b!7203515 ((_ is Union!18395) (regOne!37302 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204046))

(declare-fun b!7204048 () Bool)

(declare-fun e!4324436 () Bool)

(declare-fun tp!2008074 () Bool)

(declare-fun tp!2008072 () Bool)

(assert (=> b!7204048 (= e!4324436 (and tp!2008074 tp!2008072))))

(assert (=> b!7203515 (= tp!2007567 e!4324436)))

(declare-fun b!7204050 () Bool)

(declare-fun tp!2008076 () Bool)

(declare-fun tp!2008073 () Bool)

(assert (=> b!7204050 (= e!4324436 (and tp!2008076 tp!2008073))))

(declare-fun b!7204049 () Bool)

(declare-fun tp!2008075 () Bool)

(assert (=> b!7204049 (= e!4324436 tp!2008075)))

(declare-fun b!7204047 () Bool)

(assert (=> b!7204047 (= e!4324436 tp_is_empty!46347)))

(assert (= (and b!7203515 ((_ is ElementMatch!18395) (regTwo!37302 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204047))

(assert (= (and b!7203515 ((_ is Concat!27240) (regTwo!37302 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204048))

(assert (= (and b!7203515 ((_ is Star!18395) (regTwo!37302 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204049))

(assert (= (and b!7203515 ((_ is Union!18395) (regTwo!37302 (regOne!37303 (h!76228 (exprs!7847 c!10544)))))) b!7204050))

(declare-fun b_lambda!276233 () Bool)

(assert (= b_lambda!276227 (or d!2242654 b_lambda!276233)))

(declare-fun bs!1901148 () Bool)

(declare-fun d!2242786 () Bool)

(assert (= bs!1901148 (and d!2242786 d!2242654)))

(assert (=> bs!1901148 (= (dynLambda!28412 lambda!438224 (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544))))) (nullable!7801 (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544))))))))

(declare-fun m!7892336 () Bool)

(assert (=> bs!1901148 m!7892336))

(assert (=> b!7203717 d!2242786))

(declare-fun b_lambda!276235 () Bool)

(assert (= b_lambda!276231 (or d!2242682 b_lambda!276235)))

(declare-fun bs!1901149 () Bool)

(declare-fun d!2242788 () Bool)

(assert (= bs!1901149 (and d!2242788 d!2242682)))

(assert (=> bs!1901149 (= (dynLambda!28412 lambda!438229 (h!76228 (t!383933 (exprs!7847 setElem!53472)))) (validRegex!9488 (h!76228 (t!383933 (exprs!7847 setElem!53472)))))))

(declare-fun m!7892338 () Bool)

(assert (=> bs!1901149 m!7892338))

(assert (=> b!7203757 d!2242788))

(declare-fun b_lambda!276237 () Bool)

(assert (= b_lambda!276225 (or d!2242668 b_lambda!276237)))

(declare-fun bs!1901150 () Bool)

(declare-fun d!2242790 () Bool)

(assert (= bs!1901150 (and d!2242790 d!2242668)))

(assert (=> bs!1901150 (= (dynLambda!28412 lambda!438227 (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544))))) (validRegex!9488 (h!76228 (t!383933 (t!383933 (exprs!7847 c!10544))))))))

(declare-fun m!7892340 () Bool)

(assert (=> bs!1901150 m!7892340))

(assert (=> b!7203706 d!2242790))

(declare-fun b_lambda!276239 () Bool)

(assert (= b_lambda!276229 (or d!2242674 b_lambda!276239)))

(declare-fun bs!1901151 () Bool)

(declare-fun d!2242792 () Bool)

(assert (= bs!1901151 (and d!2242792 d!2242674)))

(assert (=> bs!1901151 (= (dynLambda!28412 lambda!438228 (h!76228 (t!383933 (t!383933 (exprs!7847 setElem!53466))))) (validRegex!9488 (h!76228 (t!383933 (t!383933 (exprs!7847 setElem!53466))))))))

(declare-fun m!7892342 () Bool)

(assert (=> bs!1901151 m!7892342))

(assert (=> b!7203737 d!2242792))

(declare-fun b_lambda!276241 () Bool)

(assert (= b_lambda!276223 (or d!2242714 b_lambda!276241)))

(declare-fun bs!1901152 () Bool)

(declare-fun d!2242794 () Bool)

(assert (= bs!1901152 (and d!2242794 d!2242714)))

(assert (=> bs!1901152 (= (dynLambda!28412 lambda!438231 (h!76228 (exprs!7847 setElem!53473))) (validRegex!9488 (h!76228 (exprs!7847 setElem!53473))))))

(declare-fun m!7892344 () Bool)

(assert (=> bs!1901152 m!7892344))

(assert (=> b!7203683 d!2242794))

(check-sat (not b!7203868) (not b!7203819) (not b!7203901) (not b!7204029) (not d!2242754) (not b!7203684) (not b!7204001) (not b!7203896) (not b_lambda!276177) (not b!7203932) (not b!7203848) (not b!7203977) (not b!7204026) (not b!7204048) (not b!7203680) (not b!7203790) (not b!7203754) (not b!7203806) (not b!7204046) (not b!7203992) (not b!7203887) (not b!7203941) (not b!7203801) (not bm!656908) (not b!7203807) (not b!7203969) (not b!7203810) (not d!2242772) (not b!7203839) (not b!7203904) (not b!7203937) (not b!7204041) (not b!7204017) (not bm!656902) (not b!7203769) (not b!7204006) (not b!7203864) (not b!7203895) (not b!7203888) (not b!7203909) (not b!7203979) (not b!7203836) (not b!7203786) (not bs!1901149) (not b!7203985) (not b!7203816) (not b!7203994) (not b!7203952) (not b!7203940) (not b_lambda!276199) (not b!7203998) (not b!7204020) (not b!7203967) (not b!7203745) (not b!7203925) (not b!7203781) (not b!7204022) (not b!7203874) (not b!7203997) (not b_lambda!276175) (not b!7203879) (not b!7203854) (not b!7203996) (not b!7203883) (not bm!656898) (not b!7203852) (not b!7203889) (not b!7203891) (not bm!656914) (not b!7203832) (not b!7203946) (not b!7203840) (not b!7203799) (not b!7203823) (not b!7203897) (not b!7203933) (not b!7204010) (not b!7203738) (not b!7203838) (not b!7203993) (not b!7203928) (not b!7203827) (not b!7203835) (not b!7203880) (not b!7203714) (not b!7203892) (not b!7204002) (not b!7203920) (not b!7203734) (not b!7203860) (not b!7203989) (not b_lambda!276203) (not b!7203814) (not b!7203878) (not b!7203948) (not b!7203830) (not b_lambda!276205) (not b_lambda!276235) (not b!7203809) (not b!7203900) (not b!7203798) (not bs!1901150) (not b!7203976) (not b!7203917) (not b!7203987) (not b!7203842) (not b!7203870) (not b!7204018) (not b_lambda!276173) (not b!7203954) (not b!7204030) (not b!7203945) (not b!7203858) (not b!7203981) (not b!7203950) (not b!7203820) (not bs!1901151) (not b!7204032) (not b!7204009) (not b!7204036) (not b!7203791) (not b!7203828) (not b!7203773) (not b!7204004) (not b!7203884) (not b!7203988) (not b!7203778) (not b!7204000) (not b!7203990) (not b!7203916) tp_is_empty!46347 (not b!7203787) (not bm!656904) (not b!7203863) (not b!7203783) (not b!7203856) (not b!7203893) (not b!7203911) (not b!7203846) (not b!7204049) (not b!7204016) (not b!7204013) (not b!7203831) (not b!7203859) (not b!7203923) (not b!7203803) (not b!7203850) (not d!2242764) (not b!7203855) (not b!7203957) (not b!7203961) (not b!7203934) (not b!7203975) (not b!7203834) (not b!7203875) (not b_lambda!276241) (not b!7203930) (not b!7203785) (not bm!656899) (not bm!656910) (not bs!1901152) (not b!7204028) (not bm!656911) (not b!7203974) (not b!7203871) (not b!7203924) (not b!7203811) (not b!7204040) (not b!7203847) (not bm!656901) (not b!7203903) (not b!7203885) (not b!7203718) (not b!7203793) (not b!7203777) (not b!7203965) (not bm!656892) (not b!7203797) (not b!7203779) (not b!7203984) (not b!7203899) (not b!7203771) (not b!7204044) (not b!7203851) (not b!7203765) (not b!7203970) (not b!7203802) (not b!7203962) (not b!7203813) (not bm!656907) (not b!7203949) (not bm!656913) (not b!7203876) (not b!7203794) (not b!7203963) (not b!7203966) (not b!7203905) (not setNonEmpty!53477) (not b!7204038) (not b!7203942) (not b!7203843) (not b!7203980) (not b!7203782) (not b!7203789) (not bs!1901148) (not b!7203815) (not b!7203775) (not b!7203867) (not bm!656917) (not b!7203881) (not b!7203983) (not b!7203912) (not b!7203707) (not d!2242756) (not b!7203919) (not b!7203936) (not b!7203824) (not bm!656916) (not b!7203770) (not b!7204024) (not b_lambda!276233) (not b!7203907) (not b!7204033) (not b!7203953) (not b!7204042) (not b!7203938) (not b!7203944) (not bm!656905) (not b!7203805) (not b!7203915) (not b!7204025) (not b!7203960) (not b!7203971) (not b!7203862) (not b!7203908) (not b_lambda!276239) (not b!7203826) (not b!7203844) (not b!7203913) (not b!7204034) (not b!7203818) (not b_lambda!276201) (not b!7203972) (not b!7204008) (not b!7203956) (not b!7204012) (not b!7203872) (not b!7204014) (not b_lambda!276237) (not b!7203927) (not bm!656893) (not b!7204050) (not b!7203929) (not b!7203921) (not b!7204021) (not b!7203866) (not b!7203795) (not b!7204045) (not b!7203725) (not b!7203758) (not b!7203774) (not b!7203822) (not b!7203958) (not b!7204005) (not b!7204037))
(check-sat)
