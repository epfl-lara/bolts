; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712130 () Bool)

(assert start!712130)

(declare-fun b_free!133925 () Bool)

(declare-fun b_next!134715 () Bool)

(assert (=> start!712130 (= b_free!133925 (not b_next!134715))))

(declare-fun tp!2075149 () Bool)

(declare-fun b_and!351221 () Bool)

(assert (=> start!712130 (= tp!2075149 b_and!351221)))

(declare-fun setIsEmpty!53871 () Bool)

(declare-fun setRes!53871 () Bool)

(assert (=> setIsEmpty!53871 setRes!53871))

(declare-fun b!7311466 () Bool)

(declare-fun e!4376249 () Bool)

(declare-fun e!4376247 () Bool)

(assert (=> b!7311466 (= e!4376249 e!4376247)))

(declare-fun res!2953692 () Bool)

(assert (=> b!7311466 (=> (not res!2953692) (not e!4376247))))

(declare-datatypes ((B!3473 0))(
  ( (B!3474 (val!29029 Int)) )
))
(declare-datatypes ((List!71138 0))(
  ( (Nil!71014) (Cons!71014 (h!77462 B!3473) (t!385264 List!71138)) )
))
(declare-fun lRes!24 () List!71138)

(declare-fun lt!2600536 () List!71138)

(declare-fun subseq!797 (List!71138 List!71138) Bool)

(assert (=> b!7311466 (= res!2953692 (subseq!797 (t!385264 lRes!24) lt!2600536))))

(declare-datatypes ((Unit!164442 0))(
  ( (Unit!164443) )
))
(declare-fun lt!2600535 () Unit!164442)

(declare-fun subseqTail!48 (List!71138 List!71138) Unit!164442)

(assert (=> b!7311466 (= lt!2600535 (subseqTail!48 lRes!24 lt!2600536))))

(declare-fun res!2953693 () Bool)

(declare-fun e!4376250 () Bool)

(assert (=> start!712130 (=> (not res!2953693) (not e!4376250))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!771 0))(
  ( (A!772 (val!29030 Int)) )
))
(declare-fun s!1445 () (InoxSet A!771))

(declare-fun elmt!124 () A!771)

(assert (=> start!712130 (= res!2953693 (= s!1445 (store ((as const (Array A!771 Bool)) false) elmt!124 true)))))

(assert (=> start!712130 e!4376250))

(declare-fun condSetEmpty!53871 () Bool)

(assert (=> start!712130 (= condSetEmpty!53871 (= s!1445 ((as const (Array A!771 Bool)) false)))))

(assert (=> start!712130 setRes!53871))

(declare-fun tp_is_empty!47337 () Bool)

(assert (=> start!712130 tp_is_empty!47337))

(assert (=> start!712130 tp!2075149))

(declare-fun e!4376248 () Bool)

(assert (=> start!712130 e!4376248))

(declare-fun b!7311467 () Bool)

(declare-fun res!2953690 () Bool)

(assert (=> b!7311467 (=> (not res!2953690) (not e!4376249))))

(get-info :version)

(assert (=> b!7311467 (= res!2953690 ((_ is Cons!71014) lRes!24))))

(declare-fun b!7311468 () Bool)

(declare-fun tp_is_empty!47339 () Bool)

(declare-fun tp!2075147 () Bool)

(assert (=> b!7311468 (= e!4376248 (and tp_is_empty!47339 tp!2075147))))

(declare-fun setNonEmpty!53871 () Bool)

(declare-fun tp!2075148 () Bool)

(assert (=> setNonEmpty!53871 (= setRes!53871 (and tp!2075148 tp_is_empty!47337))))

(declare-fun setElem!53871 () A!771)

(declare-fun setRest!53871 () (InoxSet A!771))

(assert (=> setNonEmpty!53871 (= s!1445 ((_ map or) (store ((as const (Array A!771 Bool)) false) setElem!53871 true) setRest!53871))))

(declare-fun b!7311469 () Bool)

(declare-fun ListPrimitiveSize!426 (List!71138) Int)

(assert (=> b!7311469 (= e!4376247 (>= (ListPrimitiveSize!426 (t!385264 lRes!24)) (ListPrimitiveSize!426 lRes!24)))))

(declare-fun b!7311470 () Bool)

(assert (=> b!7311470 (= e!4376250 e!4376249)))

(declare-fun res!2953691 () Bool)

(assert (=> b!7311470 (=> (not res!2953691) (not e!4376249))))

(assert (=> b!7311470 (= res!2953691 (subseq!797 lRes!24 lt!2600536))))

(declare-fun f!903 () Int)

(declare-fun toList!11547 ((InoxSet B!3473)) List!71138)

(declare-fun dynLambda!29054 (Int A!771) (InoxSet B!3473))

(assert (=> b!7311470 (= lt!2600536 (toList!11547 (dynLambda!29054 f!903 elmt!124)))))

(assert (= (and start!712130 res!2953693) b!7311470))

(assert (= (and b!7311470 res!2953691) b!7311467))

(assert (= (and b!7311467 res!2953690) b!7311466))

(assert (= (and b!7311466 res!2953692) b!7311469))

(assert (= (and start!712130 condSetEmpty!53871) setIsEmpty!53871))

(assert (= (and start!712130 (not condSetEmpty!53871)) setNonEmpty!53871))

(assert (= (and start!712130 ((_ is Cons!71014) lRes!24)) b!7311468))

(declare-fun b_lambda!282095 () Bool)

(assert (=> (not b_lambda!282095) (not b!7311470)))

(declare-fun t!385263 () Bool)

(declare-fun tb!262163 () Bool)

(assert (=> (and start!712130 (= f!903 f!903) t!385263) tb!262163))

(assert (=> b!7311470 t!385263))

(declare-fun result!352726 () Bool)

(declare-fun b_and!351223 () Bool)

(assert (= b_and!351221 (and (=> t!385263 result!352726) b_and!351223)))

(declare-fun m!7975524 () Bool)

(assert (=> b!7311466 m!7975524))

(declare-fun m!7975526 () Bool)

(assert (=> b!7311466 m!7975526))

(declare-fun m!7975528 () Bool)

(assert (=> start!712130 m!7975528))

(declare-fun m!7975530 () Bool)

(assert (=> b!7311469 m!7975530))

(declare-fun m!7975532 () Bool)

(assert (=> b!7311469 m!7975532))

(declare-fun m!7975534 () Bool)

(assert (=> b!7311470 m!7975534))

(declare-fun m!7975536 () Bool)

(assert (=> b!7311470 m!7975536))

(assert (=> b!7311470 m!7975536))

(declare-fun m!7975538 () Bool)

(assert (=> b!7311470 m!7975538))

(check-sat b_and!351223 (not b!7311466) (not b!7311470) (not b!7311469) (not b_next!134715) (not b_lambda!282095) (not setNonEmpty!53871) (not b!7311468) tp_is_empty!47339 tp_is_empty!47337 (not tb!262163))
(check-sat b_and!351223 (not b_next!134715))
(get-model)

(declare-fun b_lambda!282097 () Bool)

(assert (= b_lambda!282095 (or (and start!712130 b_free!133925) b_lambda!282097)))

(check-sat b_and!351223 (not b!7311466) (not b!7311470) (not b!7311469) (not b_next!134715) (not b_lambda!282097) (not setNonEmpty!53871) (not b!7311468) tp_is_empty!47339 tp_is_empty!47337 (not tb!262163))
(check-sat b_and!351223 (not b_next!134715))
(get-model)

(declare-fun b!7311480 () Bool)

(declare-fun e!4376259 () Bool)

(declare-fun e!4376262 () Bool)

(assert (=> b!7311480 (= e!4376259 e!4376262)))

(declare-fun res!2953704 () Bool)

(assert (=> b!7311480 (=> res!2953704 e!4376262)))

(declare-fun e!4376260 () Bool)

(assert (=> b!7311480 (= res!2953704 e!4376260)))

(declare-fun res!2953702 () Bool)

(assert (=> b!7311480 (=> (not res!2953702) (not e!4376260))))

(assert (=> b!7311480 (= res!2953702 (= (h!77462 lRes!24) (h!77462 lt!2600536)))))

(declare-fun b!7311481 () Bool)

(assert (=> b!7311481 (= e!4376260 (subseq!797 (t!385264 lRes!24) (t!385264 lt!2600536)))))

(declare-fun b!7311482 () Bool)

(assert (=> b!7311482 (= e!4376262 (subseq!797 lRes!24 (t!385264 lt!2600536)))))

(declare-fun d!2269929 () Bool)

(declare-fun res!2953705 () Bool)

(declare-fun e!4376261 () Bool)

(assert (=> d!2269929 (=> res!2953705 e!4376261)))

(assert (=> d!2269929 (= res!2953705 ((_ is Nil!71014) lRes!24))))

(assert (=> d!2269929 (= (subseq!797 lRes!24 lt!2600536) e!4376261)))

(declare-fun b!7311479 () Bool)

(assert (=> b!7311479 (= e!4376261 e!4376259)))

(declare-fun res!2953703 () Bool)

(assert (=> b!7311479 (=> (not res!2953703) (not e!4376259))))

(assert (=> b!7311479 (= res!2953703 ((_ is Cons!71014) lt!2600536))))

(assert (= (and d!2269929 (not res!2953705)) b!7311479))

(assert (= (and b!7311479 res!2953703) b!7311480))

(assert (= (and b!7311480 res!2953702) b!7311481))

(assert (= (and b!7311480 (not res!2953704)) b!7311482))

(declare-fun m!7975540 () Bool)

(assert (=> b!7311481 m!7975540))

(declare-fun m!7975542 () Bool)

(assert (=> b!7311482 m!7975542))

(assert (=> b!7311470 d!2269929))

(declare-fun d!2269933 () Bool)

(declare-fun e!4376267 () Bool)

(assert (=> d!2269933 e!4376267))

(declare-fun res!2953710 () Bool)

(assert (=> d!2269933 (=> (not res!2953710) (not e!4376267))))

(declare-fun lt!2600539 () List!71138)

(declare-fun noDuplicate!3028 (List!71138) Bool)

(assert (=> d!2269933 (= res!2953710 (noDuplicate!3028 lt!2600539))))

(declare-fun choose!56625 ((InoxSet B!3473)) List!71138)

(assert (=> d!2269933 (= lt!2600539 (choose!56625 (dynLambda!29054 f!903 elmt!124)))))

(assert (=> d!2269933 (= (toList!11547 (dynLambda!29054 f!903 elmt!124)) lt!2600539)))

(declare-fun b!7311487 () Bool)

(declare-fun content!14847 (List!71138) (InoxSet B!3473))

(assert (=> b!7311487 (= e!4376267 (= (content!14847 lt!2600539) (dynLambda!29054 f!903 elmt!124)))))

(assert (= (and d!2269933 res!2953710) b!7311487))

(declare-fun m!7975544 () Bool)

(assert (=> d!2269933 m!7975544))

(assert (=> d!2269933 m!7975536))

(declare-fun m!7975546 () Bool)

(assert (=> d!2269933 m!7975546))

(declare-fun m!7975548 () Bool)

(assert (=> b!7311487 m!7975548))

(assert (=> b!7311470 d!2269933))

(declare-fun b!7311495 () Bool)

(declare-fun e!4376274 () Bool)

(declare-fun e!4376277 () Bool)

(assert (=> b!7311495 (= e!4376274 e!4376277)))

(declare-fun res!2953719 () Bool)

(assert (=> b!7311495 (=> res!2953719 e!4376277)))

(declare-fun e!4376275 () Bool)

(assert (=> b!7311495 (= res!2953719 e!4376275)))

(declare-fun res!2953717 () Bool)

(assert (=> b!7311495 (=> (not res!2953717) (not e!4376275))))

(assert (=> b!7311495 (= res!2953717 (= (h!77462 (t!385264 lRes!24)) (h!77462 lt!2600536)))))

(declare-fun b!7311496 () Bool)

(assert (=> b!7311496 (= e!4376275 (subseq!797 (t!385264 (t!385264 lRes!24)) (t!385264 lt!2600536)))))

(declare-fun b!7311497 () Bool)

(assert (=> b!7311497 (= e!4376277 (subseq!797 (t!385264 lRes!24) (t!385264 lt!2600536)))))

(declare-fun d!2269935 () Bool)

(declare-fun res!2953720 () Bool)

(declare-fun e!4376276 () Bool)

(assert (=> d!2269935 (=> res!2953720 e!4376276)))

(assert (=> d!2269935 (= res!2953720 ((_ is Nil!71014) (t!385264 lRes!24)))))

(assert (=> d!2269935 (= (subseq!797 (t!385264 lRes!24) lt!2600536) e!4376276)))

(declare-fun b!7311494 () Bool)

(assert (=> b!7311494 (= e!4376276 e!4376274)))

(declare-fun res!2953718 () Bool)

(assert (=> b!7311494 (=> (not res!2953718) (not e!4376274))))

(assert (=> b!7311494 (= res!2953718 ((_ is Cons!71014) lt!2600536))))

(assert (= (and d!2269935 (not res!2953720)) b!7311494))

(assert (= (and b!7311494 res!2953718) b!7311495))

(assert (= (and b!7311495 res!2953717) b!7311496))

(assert (= (and b!7311495 (not res!2953719)) b!7311497))

(declare-fun m!7975550 () Bool)

(assert (=> b!7311496 m!7975550))

(assert (=> b!7311497 m!7975540))

(assert (=> b!7311466 d!2269935))

(declare-fun d!2269937 () Bool)

(declare-fun tail!14621 (List!71138) List!71138)

(assert (=> d!2269937 (subseq!797 (tail!14621 lRes!24) lt!2600536)))

(declare-fun lt!2600544 () Unit!164442)

(declare-fun e!4376293 () Unit!164442)

(assert (=> d!2269937 (= lt!2600544 e!4376293)))

(declare-fun c!1357531 () Bool)

(assert (=> d!2269937 (= c!1357531 (and ((_ is Cons!71014) lRes!24) ((_ is Cons!71014) lt!2600536)))))

(declare-fun e!4376296 () Bool)

(assert (=> d!2269937 e!4376296))

(declare-fun res!2953729 () Bool)

(assert (=> d!2269937 (=> (not res!2953729) (not e!4376296))))

(declare-fun isEmpty!40840 (List!71138) Bool)

(assert (=> d!2269937 (= res!2953729 (not (isEmpty!40840 lRes!24)))))

(assert (=> d!2269937 (= (subseqTail!48 lRes!24 lt!2600536) lt!2600544)))

(declare-fun b!7311522 () Bool)

(declare-fun Unit!164444 () Unit!164442)

(assert (=> b!7311522 (= e!4376293 Unit!164444)))

(declare-fun c!1357530 () Bool)

(declare-fun bm!665701 () Bool)

(declare-fun call!665706 () Unit!164442)

(assert (=> bm!665701 (= call!665706 (subseqTail!48 (ite c!1357530 lRes!24 (t!385264 lRes!24)) (t!385264 lt!2600536)))))

(declare-fun b!7311523 () Bool)

(declare-fun c!1357532 () Bool)

(assert (=> b!7311523 (= c!1357532 (not (isEmpty!40840 (t!385264 lRes!24))))))

(declare-fun e!4376295 () Unit!164442)

(declare-fun e!4376297 () Unit!164442)

(assert (=> b!7311523 (= e!4376295 e!4376297)))

(declare-fun b!7311524 () Bool)

(assert (=> b!7311524 (= e!4376297 call!665706)))

(declare-fun b!7311525 () Bool)

(declare-fun Unit!164445 () Unit!164442)

(assert (=> b!7311525 (= e!4376297 Unit!164445)))

(declare-fun b!7311526 () Bool)

(assert (=> b!7311526 (= e!4376293 e!4376295)))

(assert (=> b!7311526 (= c!1357530 (subseq!797 lRes!24 (t!385264 lt!2600536)))))

(declare-fun b!7311527 () Bool)

(assert (=> b!7311527 (= e!4376296 (subseq!797 lRes!24 lt!2600536))))

(declare-fun b!7311528 () Bool)

(assert (=> b!7311528 (= e!4376295 call!665706)))

(assert (= (and d!2269937 res!2953729) b!7311527))

(assert (= (and d!2269937 c!1357531) b!7311526))

(assert (= (and d!2269937 (not c!1357531)) b!7311522))

(assert (= (and b!7311526 c!1357530) b!7311528))

(assert (= (and b!7311526 (not c!1357530)) b!7311523))

(assert (= (and b!7311523 c!1357532) b!7311524))

(assert (= (and b!7311523 (not c!1357532)) b!7311525))

(assert (= (or b!7311528 b!7311524) bm!665701))

(assert (=> b!7311526 m!7975542))

(assert (=> b!7311527 m!7975534))

(declare-fun m!7975556 () Bool)

(assert (=> d!2269937 m!7975556))

(assert (=> d!2269937 m!7975556))

(declare-fun m!7975558 () Bool)

(assert (=> d!2269937 m!7975558))

(declare-fun m!7975560 () Bool)

(assert (=> d!2269937 m!7975560))

(declare-fun m!7975562 () Bool)

(assert (=> bm!665701 m!7975562))

(declare-fun m!7975564 () Bool)

(assert (=> b!7311523 m!7975564))

(assert (=> b!7311466 d!2269937))

(declare-fun d!2269941 () Bool)

(declare-fun lt!2600547 () Int)

(assert (=> d!2269941 (>= lt!2600547 0)))

(declare-fun e!4376304 () Int)

(assert (=> d!2269941 (= lt!2600547 e!4376304)))

(declare-fun c!1357540 () Bool)

(assert (=> d!2269941 (= c!1357540 ((_ is Nil!71014) (t!385264 lRes!24)))))

(assert (=> d!2269941 (= (ListPrimitiveSize!426 (t!385264 lRes!24)) lt!2600547)))

(declare-fun b!7311541 () Bool)

(assert (=> b!7311541 (= e!4376304 0)))

(declare-fun b!7311542 () Bool)

(assert (=> b!7311542 (= e!4376304 (+ 1 (ListPrimitiveSize!426 (t!385264 (t!385264 lRes!24)))))))

(assert (= (and d!2269941 c!1357540) b!7311541))

(assert (= (and d!2269941 (not c!1357540)) b!7311542))

(declare-fun m!7975566 () Bool)

(assert (=> b!7311542 m!7975566))

(assert (=> b!7311469 d!2269941))

(declare-fun d!2269943 () Bool)

(declare-fun lt!2600548 () Int)

(assert (=> d!2269943 (>= lt!2600548 0)))

(declare-fun e!4376305 () Int)

(assert (=> d!2269943 (= lt!2600548 e!4376305)))

(declare-fun c!1357541 () Bool)

(assert (=> d!2269943 (= c!1357541 ((_ is Nil!71014) lRes!24))))

(assert (=> d!2269943 (= (ListPrimitiveSize!426 lRes!24) lt!2600548)))

(declare-fun b!7311543 () Bool)

(assert (=> b!7311543 (= e!4376305 0)))

(declare-fun b!7311544 () Bool)

(assert (=> b!7311544 (= e!4376305 (+ 1 (ListPrimitiveSize!426 (t!385264 lRes!24))))))

(assert (= (and d!2269943 c!1357541) b!7311543))

(assert (= (and d!2269943 (not c!1357541)) b!7311544))

(assert (=> b!7311544 m!7975530))

(assert (=> b!7311469 d!2269943))

(declare-fun condSetEmpty!53874 () Bool)

(assert (=> tb!262163 (= condSetEmpty!53874 (= (dynLambda!29054 f!903 elmt!124) ((as const (Array B!3473 Bool)) false)))))

(declare-fun setRes!53874 () Bool)

(assert (=> tb!262163 (= result!352726 setRes!53874)))

(declare-fun setIsEmpty!53874 () Bool)

(assert (=> setIsEmpty!53874 setRes!53874))

(declare-fun setNonEmpty!53874 () Bool)

(declare-fun tp!2075152 () Bool)

(assert (=> setNonEmpty!53874 (= setRes!53874 (and tp!2075152 tp_is_empty!47339))))

(declare-fun setRest!53874 () (InoxSet B!3473))

(declare-fun setElem!53874 () B!3473)

(assert (=> setNonEmpty!53874 (= (dynLambda!29054 f!903 elmt!124) ((_ map or) (store ((as const (Array B!3473 Bool)) false) setElem!53874 true) setRest!53874))))

(assert (= (and tb!262163 condSetEmpty!53874) setIsEmpty!53874))

(assert (= (and tb!262163 (not condSetEmpty!53874)) setNonEmpty!53874))

(declare-fun b!7311558 () Bool)

(declare-fun e!4376312 () Bool)

(declare-fun tp!2075155 () Bool)

(assert (=> b!7311558 (= e!4376312 (and tp_is_empty!47339 tp!2075155))))

(assert (=> b!7311468 (= tp!2075147 e!4376312)))

(assert (= (and b!7311468 ((_ is Cons!71014) (t!385264 lRes!24))) b!7311558))

(declare-fun condSetEmpty!53877 () Bool)

(assert (=> setNonEmpty!53871 (= condSetEmpty!53877 (= setRest!53871 ((as const (Array A!771 Bool)) false)))))

(declare-fun setRes!53877 () Bool)

(assert (=> setNonEmpty!53871 (= tp!2075148 setRes!53877)))

(declare-fun setIsEmpty!53877 () Bool)

(assert (=> setIsEmpty!53877 setRes!53877))

(declare-fun setNonEmpty!53877 () Bool)

(declare-fun tp!2075158 () Bool)

(assert (=> setNonEmpty!53877 (= setRes!53877 (and tp!2075158 tp_is_empty!47337))))

(declare-fun setElem!53877 () A!771)

(declare-fun setRest!53877 () (InoxSet A!771))

(assert (=> setNonEmpty!53877 (= setRest!53871 ((_ map or) (store ((as const (Array A!771 Bool)) false) setElem!53877 true) setRest!53877))))

(assert (= (and setNonEmpty!53871 condSetEmpty!53877) setIsEmpty!53877))

(assert (= (and setNonEmpty!53871 (not condSetEmpty!53877)) setNonEmpty!53877))

(check-sat (not bm!665701) (not b!7311497) (not setNonEmpty!53877) (not d!2269933) (not setNonEmpty!53874) (not b!7311542) (not b_next!134715) (not b!7311496) (not b!7311487) tp_is_empty!47337 (not d!2269937) (not b!7311526) (not b!7311523) b_and!351223 (not b!7311482) (not b!7311544) (not b_lambda!282097) (not b!7311527) (not b!7311481) (not b!7311558) tp_is_empty!47339)
(check-sat b_and!351223 (not b_next!134715))
