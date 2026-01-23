; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699924 () Bool)

(assert start!699924)

(declare-fun setRes!53301 () Bool)

(declare-fun tp!1999687 () Bool)

(declare-datatypes ((C!37016 0))(
  ( (C!37017 (val!28456 Int)) )
))
(declare-datatypes ((Regex!18371 0))(
  ( (ElementMatch!18371 (c!1338975 C!37016)) (Concat!27216 (regOne!37254 Regex!18371) (regTwo!37254 Regex!18371)) (EmptyExpr!18371) (Star!18371 (reg!18700 Regex!18371)) (EmptyLang!18371) (Union!18371 (regOne!37255 Regex!18371) (regTwo!37255 Regex!18371)) )
))
(declare-datatypes ((List!69839 0))(
  ( (Nil!69715) (Cons!69715 (h!76163 Regex!18371) (t!383864 List!69839)) )
))
(declare-datatypes ((Context!14646 0))(
  ( (Context!14647 (exprs!7823 List!69839)) )
))
(declare-fun setElem!53301 () Context!14646)

(declare-fun setNonEmpty!53301 () Bool)

(declare-fun e!4319967 () Bool)

(declare-fun inv!88949 (Context!14646) Bool)

(assert (=> setNonEmpty!53301 (= setRes!53301 (and tp!1999687 (inv!88949 setElem!53301) e!4319967))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3517 () (InoxSet Context!14646))

(declare-fun setRest!53301 () (InoxSet Context!14646))

(assert (=> setNonEmpty!53301 (= z!3517 ((_ map or) (store ((as const (Array Context!14646 Bool)) false) setElem!53301 true) setRest!53301))))

(declare-fun b!7193896 () Bool)

(declare-fun e!4319968 () Bool)

(declare-fun c!10544 () Context!14646)

(assert (=> b!7193896 (= e!4319968 (= (exprs!7823 c!10544) Nil!69715))))

(declare-fun setIsEmpty!53301 () Bool)

(assert (=> setIsEmpty!53301 setRes!53301))

(declare-fun res!2928719 () Bool)

(assert (=> start!699924 (=> (not res!2928719) (not e!4319968))))

(assert (=> start!699924 (= res!2928719 (= z!3517 (store ((as const (Array Context!14646 Bool)) false) c!10544 true)))))

(assert (=> start!699924 e!4319968))

(declare-fun condSetEmpty!53301 () Bool)

(assert (=> start!699924 (= condSetEmpty!53301 (= z!3517 ((as const (Array Context!14646 Bool)) false)))))

(assert (=> start!699924 setRes!53301))

(declare-fun e!4319969 () Bool)

(assert (=> start!699924 (and (inv!88949 c!10544) e!4319969)))

(declare-fun b!7193897 () Bool)

(declare-fun tp!1999688 () Bool)

(assert (=> b!7193897 (= e!4319967 tp!1999688)))

(declare-fun b!7193898 () Bool)

(declare-fun tp!1999689 () Bool)

(assert (=> b!7193898 (= e!4319969 tp!1999689)))

(declare-fun b!7193899 () Bool)

(declare-fun res!2928720 () Bool)

(assert (=> b!7193899 (=> (not res!2928720) (not e!4319968))))

(declare-fun isEmpty!40238 (List!69839) Bool)

(assert (=> b!7193899 (= res!2928720 (not (isEmpty!40238 (exprs!7823 c!10544))))))

(assert (= (and start!699924 res!2928719) b!7193899))

(assert (= (and b!7193899 res!2928720) b!7193896))

(assert (= (and start!699924 condSetEmpty!53301) setIsEmpty!53301))

(assert (= (and start!699924 (not condSetEmpty!53301)) setNonEmpty!53301))

(assert (= setNonEmpty!53301 b!7193897))

(assert (= start!699924 b!7193898))

(declare-fun m!7888544 () Bool)

(assert (=> setNonEmpty!53301 m!7888544))

(declare-fun m!7888546 () Bool)

(assert (=> start!699924 m!7888546))

(declare-fun m!7888548 () Bool)

(assert (=> start!699924 m!7888548))

(declare-fun m!7888550 () Bool)

(assert (=> b!7193899 m!7888550))

(check-sat (not b!7193897) (not b!7193899) (not setNonEmpty!53301) (not start!699924) (not b!7193898))
(check-sat)
(get-model)

(declare-fun d!2241054 () Bool)

(declare-fun lambda!437986 () Int)

(declare-fun forall!17196 (List!69839 Int) Bool)

(assert (=> d!2241054 (= (inv!88949 c!10544) (forall!17196 (exprs!7823 c!10544) lambda!437986))))

(declare-fun bs!1900396 () Bool)

(assert (= bs!1900396 d!2241054))

(declare-fun m!7888552 () Bool)

(assert (=> bs!1900396 m!7888552))

(assert (=> start!699924 d!2241054))

(declare-fun d!2241056 () Bool)

(get-info :version)

(assert (=> d!2241056 (= (isEmpty!40238 (exprs!7823 c!10544)) ((_ is Nil!69715) (exprs!7823 c!10544)))))

(assert (=> b!7193899 d!2241056))

(declare-fun bs!1900397 () Bool)

(declare-fun d!2241058 () Bool)

(assert (= bs!1900397 (and d!2241058 d!2241054)))

(declare-fun lambda!437987 () Int)

(assert (=> bs!1900397 (= lambda!437987 lambda!437986)))

(assert (=> d!2241058 (= (inv!88949 setElem!53301) (forall!17196 (exprs!7823 setElem!53301) lambda!437987))))

(declare-fun bs!1900398 () Bool)

(assert (= bs!1900398 d!2241058))

(declare-fun m!7888554 () Bool)

(assert (=> bs!1900398 m!7888554))

(assert (=> setNonEmpty!53301 d!2241058))

(declare-fun b!7193904 () Bool)

(declare-fun e!4319972 () Bool)

(declare-fun tp!1999694 () Bool)

(declare-fun tp!1999695 () Bool)

(assert (=> b!7193904 (= e!4319972 (and tp!1999694 tp!1999695))))

(assert (=> b!7193897 (= tp!1999688 e!4319972)))

(assert (= (and b!7193897 ((_ is Cons!69715) (exprs!7823 setElem!53301))) b!7193904))

(declare-fun b!7193905 () Bool)

(declare-fun e!4319973 () Bool)

(declare-fun tp!1999696 () Bool)

(declare-fun tp!1999697 () Bool)

(assert (=> b!7193905 (= e!4319973 (and tp!1999696 tp!1999697))))

(assert (=> b!7193898 (= tp!1999689 e!4319973)))

(assert (= (and b!7193898 ((_ is Cons!69715) (exprs!7823 c!10544))) b!7193905))

(declare-fun condSetEmpty!53304 () Bool)

(assert (=> setNonEmpty!53301 (= condSetEmpty!53304 (= setRest!53301 ((as const (Array Context!14646 Bool)) false)))))

(declare-fun setRes!53304 () Bool)

(assert (=> setNonEmpty!53301 (= tp!1999687 setRes!53304)))

(declare-fun setIsEmpty!53304 () Bool)

(assert (=> setIsEmpty!53304 setRes!53304))

(declare-fun e!4319976 () Bool)

(declare-fun setNonEmpty!53304 () Bool)

(declare-fun setElem!53304 () Context!14646)

(declare-fun tp!1999702 () Bool)

(assert (=> setNonEmpty!53304 (= setRes!53304 (and tp!1999702 (inv!88949 setElem!53304) e!4319976))))

(declare-fun setRest!53304 () (InoxSet Context!14646))

(assert (=> setNonEmpty!53304 (= setRest!53301 ((_ map or) (store ((as const (Array Context!14646 Bool)) false) setElem!53304 true) setRest!53304))))

(declare-fun b!7193910 () Bool)

(declare-fun tp!1999703 () Bool)

(assert (=> b!7193910 (= e!4319976 tp!1999703)))

(assert (= (and setNonEmpty!53301 condSetEmpty!53304) setIsEmpty!53304))

(assert (= (and setNonEmpty!53301 (not condSetEmpty!53304)) setNonEmpty!53304))

(assert (= setNonEmpty!53304 b!7193910))

(declare-fun m!7888558 () Bool)

(assert (=> setNonEmpty!53304 m!7888558))

(check-sat (not b!7193910) (not d!2241054) (not d!2241058) (not b!7193905) (not b!7193904) (not setNonEmpty!53304))
(check-sat)
