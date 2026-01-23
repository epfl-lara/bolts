; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712074 () Bool)

(assert start!712074)

(declare-fun b_free!133913 () Bool)

(declare-fun b_next!134703 () Bool)

(assert (=> start!712074 (= b_free!133913 (not b_next!134703))))

(declare-fun tp!2075047 () Bool)

(declare-fun b_and!351197 () Bool)

(assert (=> start!712074 (= tp!2075047 b_and!351197)))

(declare-fun b!7311148 () Bool)

(declare-fun e!4376008 () Bool)

(declare-fun tp_is_empty!47315 () Bool)

(declare-fun tp!2075045 () Bool)

(assert (=> b!7311148 (= e!4376008 (and tp_is_empty!47315 tp!2075045))))

(declare-fun setIsEmpty!53825 () Bool)

(declare-fun setRes!53825 () Bool)

(assert (=> setIsEmpty!53825 setRes!53825))

(declare-fun b!7311149 () Bool)

(declare-fun res!2953501 () Bool)

(declare-fun e!4376007 () Bool)

(assert (=> b!7311149 (=> (not res!2953501) (not e!4376007))))

(declare-datatypes ((B!3461 0))(
  ( (B!3462 (val!29017 Int)) )
))
(declare-datatypes ((List!71132 0))(
  ( (Nil!71008) (Cons!71008 (h!77456 B!3461) (t!385246 List!71132)) )
))
(declare-fun lRes!24 () List!71132)

(declare-datatypes ((A!759 0))(
  ( (A!760 (val!29018 Int)) )
))
(declare-fun elmt!124 () A!759)

(declare-fun f!903 () Int)

(declare-fun subseq!791 (List!71132 List!71132) Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!11541 ((InoxSet B!3461)) List!71132)

(declare-fun dynLambda!29048 (Int A!759) (InoxSet B!3461))

(assert (=> b!7311149 (= res!2953501 (subseq!791 lRes!24 (toList!11541 (dynLambda!29048 f!903 elmt!124))))))

(declare-fun res!2953500 () Bool)

(assert (=> start!712074 (=> (not res!2953500) (not e!4376007))))

(declare-fun s!1445 () (InoxSet A!759))

(assert (=> start!712074 (= res!2953500 (= s!1445 (store ((as const (Array A!759 Bool)) false) elmt!124 true)))))

(assert (=> start!712074 e!4376007))

(declare-fun condSetEmpty!53825 () Bool)

(assert (=> start!712074 (= condSetEmpty!53825 (= s!1445 ((as const (Array A!759 Bool)) false)))))

(assert (=> start!712074 setRes!53825))

(declare-fun tp_is_empty!47313 () Bool)

(assert (=> start!712074 tp_is_empty!47313))

(assert (=> start!712074 e!4376008))

(assert (=> start!712074 tp!2075047))

(declare-fun setNonEmpty!53825 () Bool)

(declare-fun tp!2075046 () Bool)

(assert (=> setNonEmpty!53825 (= setRes!53825 (and tp!2075046 tp_is_empty!47313))))

(declare-fun setElem!53825 () A!759)

(declare-fun setRest!53825 () (InoxSet A!759))

(assert (=> setNonEmpty!53825 (= s!1445 ((_ map or) (store ((as const (Array A!759 Bool)) false) setElem!53825 true) setRest!53825))))

(declare-fun b!7311150 () Bool)

(declare-fun ListPrimitiveSize!424 (List!71132) Int)

(assert (=> b!7311150 (= e!4376007 (< (ListPrimitiveSize!424 lRes!24) 0))))

(assert (= (and start!712074 res!2953500) b!7311149))

(assert (= (and b!7311149 res!2953501) b!7311150))

(assert (= (and start!712074 condSetEmpty!53825) setIsEmpty!53825))

(assert (= (and start!712074 (not condSetEmpty!53825)) setNonEmpty!53825))

(get-info :version)

(assert (= (and start!712074 ((_ is Cons!71008) lRes!24)) b!7311148))

(declare-fun b_lambda!282075 () Bool)

(assert (=> (not b_lambda!282075) (not b!7311149)))

(declare-fun t!385245 () Bool)

(declare-fun tb!262151 () Bool)

(assert (=> (and start!712074 (= f!903 f!903) t!385245) tb!262151))

(assert (=> b!7311149 t!385245))

(declare-fun result!352690 () Bool)

(declare-fun b_and!351199 () Bool)

(assert (= b_and!351197 (and (=> t!385245 result!352690) b_and!351199)))

(declare-fun m!7975310 () Bool)

(assert (=> b!7311149 m!7975310))

(assert (=> b!7311149 m!7975310))

(declare-fun m!7975312 () Bool)

(assert (=> b!7311149 m!7975312))

(assert (=> b!7311149 m!7975312))

(declare-fun m!7975314 () Bool)

(assert (=> b!7311149 m!7975314))

(declare-fun m!7975316 () Bool)

(assert (=> start!712074 m!7975316))

(declare-fun m!7975318 () Bool)

(assert (=> b!7311150 m!7975318))

(check-sat (not b!7311150) (not b_next!134703) (not b_lambda!282075) (not setNonEmpty!53825) b_and!351199 (not b!7311149) tp_is_empty!47313 tp_is_empty!47315 (not b!7311148) (not tb!262151))
(check-sat b_and!351199 (not b_next!134703))
(get-model)

(declare-fun b_lambda!282077 () Bool)

(assert (= b_lambda!282075 (or (and start!712074 b_free!133913) b_lambda!282077)))

(check-sat (not b!7311150) (not b_next!134703) (not setNonEmpty!53825) (not b!7311149) tp_is_empty!47313 tp_is_empty!47315 (not b!7311148) (not tb!262151) (not b_lambda!282077) b_and!351199)
(check-sat b_and!351199 (not b_next!134703))
(get-model)

(declare-fun b!7311172 () Bool)

(declare-fun e!4376030 () Bool)

(declare-fun e!4376032 () Bool)

(assert (=> b!7311172 (= e!4376030 e!4376032)))

(declare-fun res!2953523 () Bool)

(assert (=> b!7311172 (=> res!2953523 e!4376032)))

(declare-fun e!4376029 () Bool)

(assert (=> b!7311172 (= res!2953523 e!4376029)))

(declare-fun res!2953524 () Bool)

(assert (=> b!7311172 (=> (not res!2953524) (not e!4376029))))

(assert (=> b!7311172 (= res!2953524 (= (h!77456 lRes!24) (h!77456 (toList!11541 (dynLambda!29048 f!903 elmt!124)))))))

(declare-fun b!7311171 () Bool)

(declare-fun e!4376031 () Bool)

(assert (=> b!7311171 (= e!4376031 e!4376030)))

(declare-fun res!2953525 () Bool)

(assert (=> b!7311171 (=> (not res!2953525) (not e!4376030))))

(assert (=> b!7311171 (= res!2953525 ((_ is Cons!71008) (toList!11541 (dynLambda!29048 f!903 elmt!124))))))

(declare-fun d!2269854 () Bool)

(declare-fun res!2953522 () Bool)

(assert (=> d!2269854 (=> res!2953522 e!4376031)))

(assert (=> d!2269854 (= res!2953522 ((_ is Nil!71008) lRes!24))))

(assert (=> d!2269854 (= (subseq!791 lRes!24 (toList!11541 (dynLambda!29048 f!903 elmt!124))) e!4376031)))

(declare-fun b!7311173 () Bool)

(assert (=> b!7311173 (= e!4376029 (subseq!791 (t!385246 lRes!24) (t!385246 (toList!11541 (dynLambda!29048 f!903 elmt!124)))))))

(declare-fun b!7311174 () Bool)

(assert (=> b!7311174 (= e!4376032 (subseq!791 lRes!24 (t!385246 (toList!11541 (dynLambda!29048 f!903 elmt!124)))))))

(assert (= (and d!2269854 (not res!2953522)) b!7311171))

(assert (= (and b!7311171 res!2953525) b!7311172))

(assert (= (and b!7311172 res!2953524) b!7311173))

(assert (= (and b!7311172 (not res!2953523)) b!7311174))

(declare-fun m!7975324 () Bool)

(assert (=> b!7311173 m!7975324))

(declare-fun m!7975326 () Bool)

(assert (=> b!7311174 m!7975326))

(assert (=> b!7311149 d!2269854))

(declare-fun d!2269860 () Bool)

(declare-fun e!4376040 () Bool)

(assert (=> d!2269860 e!4376040))

(declare-fun res!2953531 () Bool)

(assert (=> d!2269860 (=> (not res!2953531) (not e!4376040))))

(declare-fun lt!2600482 () List!71132)

(declare-fun noDuplicate!3025 (List!71132) Bool)

(assert (=> d!2269860 (= res!2953531 (noDuplicate!3025 lt!2600482))))

(declare-fun choose!56622 ((InoxSet B!3461)) List!71132)

(assert (=> d!2269860 (= lt!2600482 (choose!56622 (dynLambda!29048 f!903 elmt!124)))))

(assert (=> d!2269860 (= (toList!11541 (dynLambda!29048 f!903 elmt!124)) lt!2600482)))

(declare-fun b!7311184 () Bool)

(declare-fun content!14844 (List!71132) (InoxSet B!3461))

(assert (=> b!7311184 (= e!4376040 (= (content!14844 lt!2600482) (dynLambda!29048 f!903 elmt!124)))))

(assert (= (and d!2269860 res!2953531) b!7311184))

(declare-fun m!7975334 () Bool)

(assert (=> d!2269860 m!7975334))

(assert (=> d!2269860 m!7975310))

(declare-fun m!7975336 () Bool)

(assert (=> d!2269860 m!7975336))

(declare-fun m!7975338 () Bool)

(assert (=> b!7311184 m!7975338))

(assert (=> b!7311149 d!2269860))

(declare-fun d!2269864 () Bool)

(declare-fun lt!2600486 () Int)

(assert (=> d!2269864 (>= lt!2600486 0)))

(declare-fun e!4376044 () Int)

(assert (=> d!2269864 (= lt!2600486 e!4376044)))

(declare-fun c!1357492 () Bool)

(assert (=> d!2269864 (= c!1357492 ((_ is Nil!71008) lRes!24))))

(assert (=> d!2269864 (= (ListPrimitiveSize!424 lRes!24) lt!2600486)))

(declare-fun b!7311195 () Bool)

(assert (=> b!7311195 (= e!4376044 0)))

(declare-fun b!7311196 () Bool)

(assert (=> b!7311196 (= e!4376044 (+ 1 (ListPrimitiveSize!424 (t!385246 lRes!24))))))

(assert (= (and d!2269864 c!1357492) b!7311195))

(assert (= (and d!2269864 (not c!1357492)) b!7311196))

(declare-fun m!7975342 () Bool)

(assert (=> b!7311196 m!7975342))

(assert (=> b!7311150 d!2269864))

(declare-fun condSetEmpty!53834 () Bool)

(assert (=> tb!262151 (= condSetEmpty!53834 (= (dynLambda!29048 f!903 elmt!124) ((as const (Array B!3461 Bool)) false)))))

(declare-fun setRes!53834 () Bool)

(assert (=> tb!262151 (= result!352690 setRes!53834)))

(declare-fun setIsEmpty!53834 () Bool)

(assert (=> setIsEmpty!53834 setRes!53834))

(declare-fun setNonEmpty!53834 () Bool)

(declare-fun tp!2075059 () Bool)

(assert (=> setNonEmpty!53834 (= setRes!53834 (and tp!2075059 tp_is_empty!47315))))

(declare-fun setElem!53834 () B!3461)

(declare-fun setRest!53834 () (InoxSet B!3461))

(assert (=> setNonEmpty!53834 (= (dynLambda!29048 f!903 elmt!124) ((_ map or) (store ((as const (Array B!3461 Bool)) false) setElem!53834 true) setRest!53834))))

(assert (= (and tb!262151 condSetEmpty!53834) setIsEmpty!53834))

(assert (= (and tb!262151 (not condSetEmpty!53834)) setNonEmpty!53834))

(declare-fun b!7311208 () Bool)

(declare-fun e!4376050 () Bool)

(declare-fun tp!2075062 () Bool)

(assert (=> b!7311208 (= e!4376050 (and tp_is_empty!47315 tp!2075062))))

(assert (=> b!7311148 (= tp!2075045 e!4376050)))

(assert (= (and b!7311148 ((_ is Cons!71008) (t!385246 lRes!24))) b!7311208))

(declare-fun condSetEmpty!53837 () Bool)

(assert (=> setNonEmpty!53825 (= condSetEmpty!53837 (= setRest!53825 ((as const (Array A!759 Bool)) false)))))

(declare-fun setRes!53837 () Bool)

(assert (=> setNonEmpty!53825 (= tp!2075046 setRes!53837)))

(declare-fun setIsEmpty!53837 () Bool)

(assert (=> setIsEmpty!53837 setRes!53837))

(declare-fun setNonEmpty!53837 () Bool)

(declare-fun tp!2075065 () Bool)

(assert (=> setNonEmpty!53837 (= setRes!53837 (and tp!2075065 tp_is_empty!47313))))

(declare-fun setElem!53837 () A!759)

(declare-fun setRest!53837 () (InoxSet A!759))

(assert (=> setNonEmpty!53837 (= setRest!53825 ((_ map or) (store ((as const (Array A!759 Bool)) false) setElem!53837 true) setRest!53837))))

(assert (= (and setNonEmpty!53825 condSetEmpty!53837) setIsEmpty!53837))

(assert (= (and setNonEmpty!53825 (not condSetEmpty!53837)) setNonEmpty!53837))

(check-sat (not b_next!134703) (not b!7311173) (not b!7311184) (not b!7311208) (not b!7311174) (not setNonEmpty!53834) (not d!2269860) (not setNonEmpty!53837) (not b!7311196) tp_is_empty!47313 tp_is_empty!47315 (not b_lambda!282077) b_and!351199)
(check-sat b_and!351199 (not b_next!134703))
