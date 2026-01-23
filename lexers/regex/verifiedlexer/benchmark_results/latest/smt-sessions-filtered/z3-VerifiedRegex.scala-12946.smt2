; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712996 () Bool)

(assert start!712996)

(declare-fun setRes!54476 () Bool)

(declare-fun e!4379597 () Bool)

(declare-fun tp!2076683 () Bool)

(declare-fun setNonEmpty!54476 () Bool)

(declare-datatypes ((C!38128 0))(
  ( (C!38129 (val!29160 Int)) )
))
(declare-datatypes ((Regex!18927 0))(
  ( (ElementMatch!18927 (c!1358081 C!38128)) (Concat!27772 (regOne!38366 Regex!18927) (regTwo!38366 Regex!18927)) (EmptyExpr!18927) (Star!18927 (reg!19256 Regex!18927)) (EmptyLang!18927) (Union!18927 (regOne!38367 Regex!18927) (regTwo!38367 Regex!18927)) )
))
(declare-datatypes ((List!71272 0))(
  ( (Nil!71148) (Cons!71148 (h!77596 Regex!18927) (t!385504 List!71272)) )
))
(declare-datatypes ((Context!15734 0))(
  ( (Context!15735 (exprs!8367 List!71272)) )
))
(declare-fun setElem!54477 () Context!15734)

(declare-fun inv!90438 (Context!15734) Bool)

(assert (=> setNonEmpty!54476 (= setRes!54476 (and tp!2076683 (inv!90438 setElem!54477) e!4379597))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z2!461 () (InoxSet Context!15734))

(declare-fun setRest!54476 () (InoxSet Context!15734))

(assert (=> setNonEmpty!54476 (= z2!461 ((_ map or) (store ((as const (Array Context!15734 Bool)) false) setElem!54477 true) setRest!54476))))

(declare-fun b!7315885 () Bool)

(declare-fun e!4379599 () Bool)

(declare-fun tp_is_empty!47599 () Bool)

(declare-fun tp!2076682 () Bool)

(assert (=> b!7315885 (= e!4379599 (and tp_is_empty!47599 tp!2076682))))

(declare-fun setNonEmpty!54477 () Bool)

(declare-fun setRes!54477 () Bool)

(declare-fun tp!2076679 () Bool)

(declare-fun e!4379598 () Bool)

(declare-fun setElem!54476 () Context!15734)

(assert (=> setNonEmpty!54477 (= setRes!54477 (and tp!2076679 (inv!90438 setElem!54476) e!4379598))))

(declare-fun z1!542 () (InoxSet Context!15734))

(declare-fun setRest!54477 () (InoxSet Context!15734))

(assert (=> setNonEmpty!54477 (= z1!542 ((_ map or) (store ((as const (Array Context!15734 Bool)) false) setElem!54476 true) setRest!54477))))

(declare-fun b!7315887 () Bool)

(declare-fun e!4379600 () Bool)

(declare-datatypes ((List!71273 0))(
  ( (Nil!71149) (Cons!71149 (h!77597 C!38128) (t!385505 List!71273)) )
))
(declare-fun s!7362 () List!71273)

(declare-fun size!41884 (List!71273) Int)

(assert (=> b!7315887 (= e!4379600 (not (< (size!41884 (t!385505 s!7362)) (size!41884 s!7362))))))

(declare-fun lt!2602052 () (InoxSet Context!15734))

(declare-fun derivationStepZipper!3629 ((InoxSet Context!15734) C!38128) (InoxSet Context!15734))

(assert (=> b!7315887 (= (derivationStepZipper!3629 lt!2602052 (h!77597 s!7362)) ((_ map or) (derivationStepZipper!3629 z1!542 (h!77597 s!7362)) (derivationStepZipper!3629 z2!461 (h!77597 s!7362))))))

(declare-datatypes ((Unit!164611 0))(
  ( (Unit!164612) )
))
(declare-fun lt!2602051 () Unit!164611)

(declare-fun lemmaDerivativeStepZipperAssociative!2 ((InoxSet Context!15734) (InoxSet Context!15734) (InoxSet Context!15734) C!38128) Unit!164611)

(assert (=> b!7315887 (= lt!2602051 (lemmaDerivativeStepZipperAssociative!2 lt!2602052 z1!542 z2!461 (h!77597 s!7362)))))

(assert (=> b!7315887 (= lt!2602052 ((_ map or) z1!542 z2!461))))

(declare-fun setIsEmpty!54476 () Bool)

(assert (=> setIsEmpty!54476 setRes!54476))

(declare-fun res!2956288 () Bool)

(assert (=> start!712996 (=> (not res!2956288) (not e!4379600))))

(get-info :version)

(assert (=> start!712996 (= res!2956288 ((_ is Cons!71149) s!7362))))

(assert (=> start!712996 e!4379600))

(assert (=> start!712996 e!4379599))

(declare-fun condSetEmpty!54476 () Bool)

(assert (=> start!712996 (= condSetEmpty!54476 (= z1!542 ((as const (Array Context!15734 Bool)) false)))))

(assert (=> start!712996 setRes!54477))

(declare-fun condSetEmpty!54477 () Bool)

(assert (=> start!712996 (= condSetEmpty!54477 (= z2!461 ((as const (Array Context!15734 Bool)) false)))))

(assert (=> start!712996 setRes!54476))

(declare-fun b!7315886 () Bool)

(declare-fun tp!2076681 () Bool)

(assert (=> b!7315886 (= e!4379598 tp!2076681)))

(declare-fun setIsEmpty!54477 () Bool)

(assert (=> setIsEmpty!54477 setRes!54477))

(declare-fun b!7315888 () Bool)

(declare-fun tp!2076680 () Bool)

(assert (=> b!7315888 (= e!4379597 tp!2076680)))

(assert (= (and start!712996 res!2956288) b!7315887))

(assert (= (and start!712996 ((_ is Cons!71149) s!7362)) b!7315885))

(assert (= (and start!712996 condSetEmpty!54476) setIsEmpty!54477))

(assert (= (and start!712996 (not condSetEmpty!54476)) setNonEmpty!54477))

(assert (= setNonEmpty!54477 b!7315886))

(assert (= (and start!712996 condSetEmpty!54477) setIsEmpty!54476))

(assert (= (and start!712996 (not condSetEmpty!54477)) setNonEmpty!54476))

(assert (= setNonEmpty!54476 b!7315888))

(declare-fun m!7979868 () Bool)

(assert (=> setNonEmpty!54476 m!7979868))

(declare-fun m!7979870 () Bool)

(assert (=> setNonEmpty!54477 m!7979870))

(declare-fun m!7979872 () Bool)

(assert (=> b!7315887 m!7979872))

(declare-fun m!7979874 () Bool)

(assert (=> b!7315887 m!7979874))

(declare-fun m!7979876 () Bool)

(assert (=> b!7315887 m!7979876))

(declare-fun m!7979878 () Bool)

(assert (=> b!7315887 m!7979878))

(declare-fun m!7979880 () Bool)

(assert (=> b!7315887 m!7979880))

(declare-fun m!7979882 () Bool)

(assert (=> b!7315887 m!7979882))

(check-sat (not b!7315885) (not b!7315886) (not b!7315887) (not b!7315888) (not setNonEmpty!54477) (not setNonEmpty!54476) tp_is_empty!47599)
(check-sat)
(get-model)

(declare-fun d!2271399 () Bool)

(assert (=> d!2271399 true))

(declare-fun lambda!452226 () Int)

(declare-fun flatMap!3047 ((InoxSet Context!15734) Int) (InoxSet Context!15734))

(assert (=> d!2271399 (= (derivationStepZipper!3629 z1!542 (h!77597 s!7362)) (flatMap!3047 z1!542 lambda!452226))))

(declare-fun bs!1914877 () Bool)

(assert (= bs!1914877 d!2271399))

(declare-fun m!7979884 () Bool)

(assert (=> bs!1914877 m!7979884))

(assert (=> b!7315887 d!2271399))

(declare-fun d!2271401 () Bool)

(declare-fun lt!2602055 () Int)

(assert (=> d!2271401 (>= lt!2602055 0)))

(declare-fun e!4379603 () Int)

(assert (=> d!2271401 (= lt!2602055 e!4379603)))

(declare-fun c!1358088 () Bool)

(assert (=> d!2271401 (= c!1358088 ((_ is Nil!71149) s!7362))))

(assert (=> d!2271401 (= (size!41884 s!7362) lt!2602055)))

(declare-fun b!7315895 () Bool)

(assert (=> b!7315895 (= e!4379603 0)))

(declare-fun b!7315896 () Bool)

(assert (=> b!7315896 (= e!4379603 (+ 1 (size!41884 (t!385505 s!7362))))))

(assert (= (and d!2271401 c!1358088) b!7315895))

(assert (= (and d!2271401 (not c!1358088)) b!7315896))

(assert (=> b!7315896 m!7979874))

(assert (=> b!7315887 d!2271401))

(declare-fun bs!1914878 () Bool)

(declare-fun d!2271403 () Bool)

(assert (= bs!1914878 (and d!2271403 d!2271399)))

(declare-fun lambda!452227 () Int)

(assert (=> bs!1914878 (= lambda!452227 lambda!452226)))

(assert (=> d!2271403 true))

(assert (=> d!2271403 (= (derivationStepZipper!3629 z2!461 (h!77597 s!7362)) (flatMap!3047 z2!461 lambda!452227))))

(declare-fun bs!1914879 () Bool)

(assert (= bs!1914879 d!2271403))

(declare-fun m!7979886 () Bool)

(assert (=> bs!1914879 m!7979886))

(assert (=> b!7315887 d!2271403))

(declare-fun d!2271405 () Bool)

(assert (=> d!2271405 (= (derivationStepZipper!3629 lt!2602052 (h!77597 s!7362)) ((_ map or) (derivationStepZipper!3629 z1!542 (h!77597 s!7362)) (derivationStepZipper!3629 z2!461 (h!77597 s!7362))))))

(declare-fun lt!2602058 () Unit!164611)

(declare-fun choose!56733 ((InoxSet Context!15734) (InoxSet Context!15734) (InoxSet Context!15734) C!38128) Unit!164611)

(assert (=> d!2271405 (= lt!2602058 (choose!56733 lt!2602052 z1!542 z2!461 (h!77597 s!7362)))))

(assert (=> d!2271405 (= lt!2602052 ((_ map or) z1!542 z2!461))))

(assert (=> d!2271405 (= (lemmaDerivativeStepZipperAssociative!2 lt!2602052 z1!542 z2!461 (h!77597 s!7362)) lt!2602058)))

(declare-fun bs!1914880 () Bool)

(assert (= bs!1914880 d!2271405))

(assert (=> bs!1914880 m!7979872))

(assert (=> bs!1914880 m!7979882))

(assert (=> bs!1914880 m!7979878))

(declare-fun m!7979888 () Bool)

(assert (=> bs!1914880 m!7979888))

(assert (=> b!7315887 d!2271405))

(declare-fun bs!1914881 () Bool)

(declare-fun d!2271407 () Bool)

(assert (= bs!1914881 (and d!2271407 d!2271399)))

(declare-fun lambda!452228 () Int)

(assert (=> bs!1914881 (= lambda!452228 lambda!452226)))

(declare-fun bs!1914882 () Bool)

(assert (= bs!1914882 (and d!2271407 d!2271403)))

(assert (=> bs!1914882 (= lambda!452228 lambda!452227)))

(assert (=> d!2271407 true))

(assert (=> d!2271407 (= (derivationStepZipper!3629 lt!2602052 (h!77597 s!7362)) (flatMap!3047 lt!2602052 lambda!452228))))

(declare-fun bs!1914883 () Bool)

(assert (= bs!1914883 d!2271407))

(declare-fun m!7979890 () Bool)

(assert (=> bs!1914883 m!7979890))

(assert (=> b!7315887 d!2271407))

(declare-fun d!2271409 () Bool)

(declare-fun lt!2602059 () Int)

(assert (=> d!2271409 (>= lt!2602059 0)))

(declare-fun e!4379604 () Int)

(assert (=> d!2271409 (= lt!2602059 e!4379604)))

(declare-fun c!1358089 () Bool)

(assert (=> d!2271409 (= c!1358089 ((_ is Nil!71149) (t!385505 s!7362)))))

(assert (=> d!2271409 (= (size!41884 (t!385505 s!7362)) lt!2602059)))

(declare-fun b!7315897 () Bool)

(assert (=> b!7315897 (= e!4379604 0)))

(declare-fun b!7315898 () Bool)

(assert (=> b!7315898 (= e!4379604 (+ 1 (size!41884 (t!385505 (t!385505 s!7362)))))))

(assert (= (and d!2271409 c!1358089) b!7315897))

(assert (= (and d!2271409 (not c!1358089)) b!7315898))

(declare-fun m!7979892 () Bool)

(assert (=> b!7315898 m!7979892))

(assert (=> b!7315887 d!2271409))

(declare-fun d!2271411 () Bool)

(declare-fun lambda!452231 () Int)

(declare-fun forall!17768 (List!71272 Int) Bool)

(assert (=> d!2271411 (= (inv!90438 setElem!54476) (forall!17768 (exprs!8367 setElem!54476) lambda!452231))))

(declare-fun bs!1914884 () Bool)

(assert (= bs!1914884 d!2271411))

(declare-fun m!7979894 () Bool)

(assert (=> bs!1914884 m!7979894))

(assert (=> setNonEmpty!54477 d!2271411))

(declare-fun bs!1914885 () Bool)

(declare-fun d!2271413 () Bool)

(assert (= bs!1914885 (and d!2271413 d!2271411)))

(declare-fun lambda!452232 () Int)

(assert (=> bs!1914885 (= lambda!452232 lambda!452231)))

(assert (=> d!2271413 (= (inv!90438 setElem!54477) (forall!17768 (exprs!8367 setElem!54477) lambda!452232))))

(declare-fun bs!1914886 () Bool)

(assert (= bs!1914886 d!2271413))

(declare-fun m!7979896 () Bool)

(assert (=> bs!1914886 m!7979896))

(assert (=> setNonEmpty!54476 d!2271413))

(declare-fun b!7315903 () Bool)

(declare-fun e!4379607 () Bool)

(declare-fun tp!2076686 () Bool)

(assert (=> b!7315903 (= e!4379607 (and tp_is_empty!47599 tp!2076686))))

(assert (=> b!7315885 (= tp!2076682 e!4379607)))

(assert (= (and b!7315885 ((_ is Cons!71149) (t!385505 s!7362))) b!7315903))

(declare-fun b!7315908 () Bool)

(declare-fun e!4379610 () Bool)

(declare-fun tp!2076691 () Bool)

(declare-fun tp!2076692 () Bool)

(assert (=> b!7315908 (= e!4379610 (and tp!2076691 tp!2076692))))

(assert (=> b!7315886 (= tp!2076681 e!4379610)))

(assert (= (and b!7315886 ((_ is Cons!71148) (exprs!8367 setElem!54476))) b!7315908))

(declare-fun b!7315909 () Bool)

(declare-fun e!4379611 () Bool)

(declare-fun tp!2076693 () Bool)

(declare-fun tp!2076694 () Bool)

(assert (=> b!7315909 (= e!4379611 (and tp!2076693 tp!2076694))))

(assert (=> b!7315888 (= tp!2076680 e!4379611)))

(assert (= (and b!7315888 ((_ is Cons!71148) (exprs!8367 setElem!54477))) b!7315909))

(declare-fun condSetEmpty!54480 () Bool)

(assert (=> setNonEmpty!54477 (= condSetEmpty!54480 (= setRest!54477 ((as const (Array Context!15734 Bool)) false)))))

(declare-fun setRes!54480 () Bool)

(assert (=> setNonEmpty!54477 (= tp!2076679 setRes!54480)))

(declare-fun setIsEmpty!54480 () Bool)

(assert (=> setIsEmpty!54480 setRes!54480))

(declare-fun e!4379614 () Bool)

(declare-fun tp!2076700 () Bool)

(declare-fun setNonEmpty!54480 () Bool)

(declare-fun setElem!54480 () Context!15734)

(assert (=> setNonEmpty!54480 (= setRes!54480 (and tp!2076700 (inv!90438 setElem!54480) e!4379614))))

(declare-fun setRest!54480 () (InoxSet Context!15734))

(assert (=> setNonEmpty!54480 (= setRest!54477 ((_ map or) (store ((as const (Array Context!15734 Bool)) false) setElem!54480 true) setRest!54480))))

(declare-fun b!7315914 () Bool)

(declare-fun tp!2076699 () Bool)

(assert (=> b!7315914 (= e!4379614 tp!2076699)))

(assert (= (and setNonEmpty!54477 condSetEmpty!54480) setIsEmpty!54480))

(assert (= (and setNonEmpty!54477 (not condSetEmpty!54480)) setNonEmpty!54480))

(assert (= setNonEmpty!54480 b!7315914))

(declare-fun m!7979898 () Bool)

(assert (=> setNonEmpty!54480 m!7979898))

(declare-fun condSetEmpty!54481 () Bool)

(assert (=> setNonEmpty!54476 (= condSetEmpty!54481 (= setRest!54476 ((as const (Array Context!15734 Bool)) false)))))

(declare-fun setRes!54481 () Bool)

(assert (=> setNonEmpty!54476 (= tp!2076683 setRes!54481)))

(declare-fun setIsEmpty!54481 () Bool)

(assert (=> setIsEmpty!54481 setRes!54481))

(declare-fun tp!2076702 () Bool)

(declare-fun e!4379615 () Bool)

(declare-fun setElem!54481 () Context!15734)

(declare-fun setNonEmpty!54481 () Bool)

(assert (=> setNonEmpty!54481 (= setRes!54481 (and tp!2076702 (inv!90438 setElem!54481) e!4379615))))

(declare-fun setRest!54481 () (InoxSet Context!15734))

(assert (=> setNonEmpty!54481 (= setRest!54476 ((_ map or) (store ((as const (Array Context!15734 Bool)) false) setElem!54481 true) setRest!54481))))

(declare-fun b!7315915 () Bool)

(declare-fun tp!2076701 () Bool)

(assert (=> b!7315915 (= e!4379615 tp!2076701)))

(assert (= (and setNonEmpty!54476 condSetEmpty!54481) setIsEmpty!54481))

(assert (= (and setNonEmpty!54476 (not condSetEmpty!54481)) setNonEmpty!54481))

(assert (= setNonEmpty!54481 b!7315915))

(declare-fun m!7979900 () Bool)

(assert (=> setNonEmpty!54481 m!7979900))

(check-sat (not b!7315903) (not d!2271413) (not b!7315898) (not setNonEmpty!54481) (not b!7315896) (not d!2271411) (not b!7315909) (not b!7315915) tp_is_empty!47599 (not d!2271407) (not b!7315908) (not d!2271405) (not b!7315914) (not setNonEmpty!54480) (not d!2271403) (not d!2271399))
(check-sat)
