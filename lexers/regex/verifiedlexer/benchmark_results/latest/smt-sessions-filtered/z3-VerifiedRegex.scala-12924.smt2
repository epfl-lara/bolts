; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712630 () Bool)

(assert start!712630)

(declare-fun b_free!133997 () Bool)

(declare-fun b_next!134787 () Bool)

(assert (=> start!712630 (= b_free!133997 (not b_next!134787))))

(declare-fun tp!2075746 () Bool)

(declare-fun b_and!351377 () Bool)

(assert (=> start!712630 (= tp!2075746 b_and!351377)))

(declare-fun setIsEmpty!54143 () Bool)

(declare-fun setRes!54143 () Bool)

(assert (=> setIsEmpty!54143 setRes!54143))

(declare-fun res!2955357 () Bool)

(declare-fun e!4378220 () Bool)

(assert (=> start!712630 (=> (not res!2955357) (not e!4378220))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!843 0))(
  ( (A!844 (val!29101 Int)) )
))
(declare-fun s!1437 () (InoxSet A!843))

(declare-fun elmt!118 () A!843)

(assert (=> start!712630 (= res!2955357 (= s!1437 (store ((as const (Array A!843 Bool)) false) elmt!118 true)))))

(assert (=> start!712630 e!4378220))

(declare-fun condSetEmpty!54143 () Bool)

(assert (=> start!712630 (= condSetEmpty!54143 (= s!1437 ((as const (Array A!843 Bool)) false)))))

(assert (=> start!712630 setRes!54143))

(declare-fun tp_is_empty!47481 () Bool)

(assert (=> start!712630 tp_is_empty!47481))

(assert (=> start!712630 tp!2075746))

(declare-fun e!4378218 () Bool)

(assert (=> start!712630 e!4378218))

(declare-fun b!7314068 () Bool)

(declare-fun res!2955356 () Bool)

(declare-fun e!4378219 () Bool)

(assert (=> b!7314068 (=> (not res!2955356) (not e!4378219))))

(declare-datatypes ((B!3545 0))(
  ( (B!3546 (val!29102 Int)) )
))
(declare-datatypes ((List!71181 0))(
  ( (Nil!71057) (Cons!71057 (h!77505 B!3545) (t!385386 List!71181)) )
))
(declare-fun lRes!18 () List!71181)

(get-info :version)

(assert (=> b!7314068 (= res!2955356 ((_ is Cons!71057) lRes!18))))

(declare-fun b!7314069 () Bool)

(declare-fun lt!2601409 () List!71181)

(declare-fun subseq!833 (List!71181 List!71181) Bool)

(assert (=> b!7314069 (= e!4378219 (not (subseq!833 (t!385386 lRes!18) lt!2601409)))))

(declare-datatypes ((Unit!164537 0))(
  ( (Unit!164538) )
))
(declare-fun lt!2601408 () Unit!164537)

(declare-fun subseqTail!76 (List!71181 List!71181) Unit!164537)

(assert (=> b!7314069 (= lt!2601408 (subseqTail!76 lRes!18 lt!2601409))))

(declare-fun b!7314070 () Bool)

(assert (=> b!7314070 (= e!4378220 e!4378219)))

(declare-fun res!2955355 () Bool)

(assert (=> b!7314070 (=> (not res!2955355) (not e!4378219))))

(assert (=> b!7314070 (= res!2955355 (subseq!833 lRes!18 lt!2601409))))

(declare-fun f!883 () Int)

(declare-fun toList!11590 ((InoxSet B!3545)) List!71181)

(declare-fun flatMap!3032 ((InoxSet A!843) Int) (InoxSet B!3545))

(assert (=> b!7314070 (= lt!2601409 (toList!11590 (flatMap!3032 s!1437 f!883)))))

(declare-fun b!7314071 () Bool)

(declare-fun tp_is_empty!47483 () Bool)

(declare-fun tp!2075745 () Bool)

(assert (=> b!7314071 (= e!4378218 (and tp_is_empty!47483 tp!2075745))))

(declare-fun setNonEmpty!54143 () Bool)

(declare-fun tp!2075747 () Bool)

(assert (=> setNonEmpty!54143 (= setRes!54143 (and tp!2075747 tp_is_empty!47481))))

(declare-fun setElem!54143 () A!843)

(declare-fun setRest!54143 () (InoxSet A!843))

(assert (=> setNonEmpty!54143 (= s!1437 ((_ map or) (store ((as const (Array A!843 Bool)) false) setElem!54143 true) setRest!54143))))

(assert (= (and start!712630 res!2955357) b!7314070))

(assert (= (and b!7314070 res!2955355) b!7314068))

(assert (= (and b!7314068 res!2955356) b!7314069))

(assert (= (and start!712630 condSetEmpty!54143) setIsEmpty!54143))

(assert (= (and start!712630 (not condSetEmpty!54143)) setNonEmpty!54143))

(assert (= (and start!712630 ((_ is Cons!71057) lRes!18)) b!7314071))

(declare-fun m!7978236 () Bool)

(assert (=> start!712630 m!7978236))

(declare-fun m!7978238 () Bool)

(assert (=> b!7314069 m!7978238))

(declare-fun m!7978240 () Bool)

(assert (=> b!7314069 m!7978240))

(declare-fun m!7978242 () Bool)

(assert (=> b!7314070 m!7978242))

(declare-fun m!7978244 () Bool)

(assert (=> b!7314070 m!7978244))

(assert (=> b!7314070 m!7978244))

(declare-fun m!7978246 () Bool)

(assert (=> b!7314070 m!7978246))

(check-sat (not b!7314070) (not b_next!134787) tp_is_empty!47481 tp_is_empty!47483 (not b!7314071) (not b!7314069) (not setNonEmpty!54143) b_and!351377)
(check-sat b_and!351377 (not b_next!134787))
(get-model)

(declare-fun b!7314098 () Bool)

(declare-fun e!4378246 () Bool)

(assert (=> b!7314098 (= e!4378246 (subseq!833 lRes!18 (t!385386 lt!2601409)))))

(declare-fun d!2270961 () Bool)

(declare-fun res!2955381 () Bool)

(declare-fun e!4378247 () Bool)

(assert (=> d!2270961 (=> res!2955381 e!4378247)))

(assert (=> d!2270961 (= res!2955381 ((_ is Nil!71057) lRes!18))))

(assert (=> d!2270961 (= (subseq!833 lRes!18 lt!2601409) e!4378247)))

(declare-fun b!7314097 () Bool)

(declare-fun e!4378245 () Bool)

(assert (=> b!7314097 (= e!4378245 (subseq!833 (t!385386 lRes!18) (t!385386 lt!2601409)))))

(declare-fun b!7314095 () Bool)

(declare-fun e!4378244 () Bool)

(assert (=> b!7314095 (= e!4378247 e!4378244)))

(declare-fun res!2955382 () Bool)

(assert (=> b!7314095 (=> (not res!2955382) (not e!4378244))))

(assert (=> b!7314095 (= res!2955382 ((_ is Cons!71057) lt!2601409))))

(declare-fun b!7314096 () Bool)

(assert (=> b!7314096 (= e!4378244 e!4378246)))

(declare-fun res!2955384 () Bool)

(assert (=> b!7314096 (=> res!2955384 e!4378246)))

(assert (=> b!7314096 (= res!2955384 e!4378245)))

(declare-fun res!2955383 () Bool)

(assert (=> b!7314096 (=> (not res!2955383) (not e!4378245))))

(assert (=> b!7314096 (= res!2955383 (= (h!77505 lRes!18) (h!77505 lt!2601409)))))

(assert (= (and d!2270961 (not res!2955381)) b!7314095))

(assert (= (and b!7314095 res!2955382) b!7314096))

(assert (= (and b!7314096 res!2955383) b!7314097))

(assert (= (and b!7314096 (not res!2955384)) b!7314098))

(declare-fun m!7978258 () Bool)

(assert (=> b!7314098 m!7978258))

(declare-fun m!7978260 () Bool)

(assert (=> b!7314097 m!7978260))

(assert (=> b!7314070 d!2270961))

(declare-fun d!2270967 () Bool)

(declare-fun e!4378254 () Bool)

(assert (=> d!2270967 e!4378254))

(declare-fun res!2955391 () Bool)

(assert (=> d!2270967 (=> (not res!2955391) (not e!4378254))))

(declare-fun lt!2601415 () List!71181)

(declare-fun noDuplicate!3049 (List!71181) Bool)

(assert (=> d!2270967 (= res!2955391 (noDuplicate!3049 lt!2601415))))

(declare-fun choose!56694 ((InoxSet B!3545)) List!71181)

(assert (=> d!2270967 (= lt!2601415 (choose!56694 (flatMap!3032 s!1437 f!883)))))

(assert (=> d!2270967 (= (toList!11590 (flatMap!3032 s!1437 f!883)) lt!2601415)))

(declare-fun b!7314105 () Bool)

(declare-fun content!14868 (List!71181) (InoxSet B!3545))

(assert (=> b!7314105 (= e!4378254 (= (content!14868 lt!2601415) (flatMap!3032 s!1437 f!883)))))

(assert (= (and d!2270967 res!2955391) b!7314105))

(declare-fun m!7978266 () Bool)

(assert (=> d!2270967 m!7978266))

(assert (=> d!2270967 m!7978244))

(declare-fun m!7978268 () Bool)

(assert (=> d!2270967 m!7978268))

(declare-fun m!7978270 () Bool)

(assert (=> b!7314105 m!7978270))

(assert (=> b!7314070 d!2270967))

(declare-fun d!2270973 () Bool)

(declare-fun choose!56695 ((InoxSet A!843) Int) (InoxSet B!3545))

(assert (=> d!2270973 (= (flatMap!3032 s!1437 f!883) (choose!56695 s!1437 f!883))))

(declare-fun bs!1914668 () Bool)

(assert (= bs!1914668 d!2270973))

(declare-fun m!7978272 () Bool)

(assert (=> bs!1914668 m!7978272))

(assert (=> b!7314070 d!2270973))

(declare-fun b!7314109 () Bool)

(declare-fun e!4378257 () Bool)

(assert (=> b!7314109 (= e!4378257 (subseq!833 (t!385386 lRes!18) (t!385386 lt!2601409)))))

(declare-fun d!2270975 () Bool)

(declare-fun res!2955392 () Bool)

(declare-fun e!4378258 () Bool)

(assert (=> d!2270975 (=> res!2955392 e!4378258)))

(assert (=> d!2270975 (= res!2955392 ((_ is Nil!71057) (t!385386 lRes!18)))))

(assert (=> d!2270975 (= (subseq!833 (t!385386 lRes!18) lt!2601409) e!4378258)))

(declare-fun b!7314108 () Bool)

(declare-fun e!4378256 () Bool)

(assert (=> b!7314108 (= e!4378256 (subseq!833 (t!385386 (t!385386 lRes!18)) (t!385386 lt!2601409)))))

(declare-fun b!7314106 () Bool)

(declare-fun e!4378255 () Bool)

(assert (=> b!7314106 (= e!4378258 e!4378255)))

(declare-fun res!2955393 () Bool)

(assert (=> b!7314106 (=> (not res!2955393) (not e!4378255))))

(assert (=> b!7314106 (= res!2955393 ((_ is Cons!71057) lt!2601409))))

(declare-fun b!7314107 () Bool)

(assert (=> b!7314107 (= e!4378255 e!4378257)))

(declare-fun res!2955395 () Bool)

(assert (=> b!7314107 (=> res!2955395 e!4378257)))

(assert (=> b!7314107 (= res!2955395 e!4378256)))

(declare-fun res!2955394 () Bool)

(assert (=> b!7314107 (=> (not res!2955394) (not e!4378256))))

(assert (=> b!7314107 (= res!2955394 (= (h!77505 (t!385386 lRes!18)) (h!77505 lt!2601409)))))

(assert (= (and d!2270975 (not res!2955392)) b!7314106))

(assert (= (and b!7314106 res!2955393) b!7314107))

(assert (= (and b!7314107 res!2955394) b!7314108))

(assert (= (and b!7314107 (not res!2955395)) b!7314109))

(assert (=> b!7314109 m!7978260))

(declare-fun m!7978274 () Bool)

(assert (=> b!7314108 m!7978274))

(assert (=> b!7314069 d!2270975))

(declare-fun b!7314152 () Bool)

(declare-fun e!4378282 () Unit!164537)

(declare-fun call!665771 () Unit!164537)

(assert (=> b!7314152 (= e!4378282 call!665771)))

(declare-fun d!2270977 () Bool)

(declare-fun tail!14634 (List!71181) List!71181)

(assert (=> d!2270977 (subseq!833 (tail!14634 lRes!18) lt!2601409)))

(declare-fun lt!2601421 () Unit!164537)

(declare-fun e!4378283 () Unit!164537)

(assert (=> d!2270977 (= lt!2601421 e!4378283)))

(declare-fun c!1357795 () Bool)

(assert (=> d!2270977 (= c!1357795 (and ((_ is Cons!71057) lRes!18) ((_ is Cons!71057) lt!2601409)))))

(declare-fun e!4378284 () Bool)

(assert (=> d!2270977 e!4378284))

(declare-fun res!2955401 () Bool)

(assert (=> d!2270977 (=> (not res!2955401) (not e!4378284))))

(declare-fun isEmpty!40855 (List!71181) Bool)

(assert (=> d!2270977 (= res!2955401 (not (isEmpty!40855 lRes!18)))))

(assert (=> d!2270977 (= (subseqTail!76 lRes!18 lt!2601409) lt!2601421)))

(declare-fun b!7314153 () Bool)

(declare-fun c!1357794 () Bool)

(assert (=> b!7314153 (= c!1357794 (not (isEmpty!40855 (t!385386 lRes!18))))))

(declare-fun e!4378285 () Unit!164537)

(assert (=> b!7314153 (= e!4378282 e!4378285)))

(declare-fun b!7314154 () Bool)

(declare-fun Unit!164541 () Unit!164537)

(assert (=> b!7314154 (= e!4378285 Unit!164541)))

(declare-fun b!7314155 () Bool)

(assert (=> b!7314155 (= e!4378283 e!4378282)))

(declare-fun c!1357796 () Bool)

(assert (=> b!7314155 (= c!1357796 (subseq!833 lRes!18 (t!385386 lt!2601409)))))

(declare-fun bm!665766 () Bool)

(assert (=> bm!665766 (= call!665771 (subseqTail!76 (ite c!1357796 lRes!18 (t!385386 lRes!18)) (t!385386 lt!2601409)))))

(declare-fun b!7314156 () Bool)

(assert (=> b!7314156 (= e!4378284 (subseq!833 lRes!18 lt!2601409))))

(declare-fun b!7314157 () Bool)

(assert (=> b!7314157 (= e!4378285 call!665771)))

(declare-fun b!7314158 () Bool)

(declare-fun Unit!164542 () Unit!164537)

(assert (=> b!7314158 (= e!4378283 Unit!164542)))

(assert (= (and d!2270977 res!2955401) b!7314156))

(assert (= (and d!2270977 c!1357795) b!7314155))

(assert (= (and d!2270977 (not c!1357795)) b!7314158))

(assert (= (and b!7314155 c!1357796) b!7314152))

(assert (= (and b!7314155 (not c!1357796)) b!7314153))

(assert (= (and b!7314153 c!1357794) b!7314157))

(assert (= (and b!7314153 (not c!1357794)) b!7314154))

(assert (= (or b!7314152 b!7314157) bm!665766))

(declare-fun m!7978286 () Bool)

(assert (=> b!7314153 m!7978286))

(declare-fun m!7978288 () Bool)

(assert (=> d!2270977 m!7978288))

(assert (=> d!2270977 m!7978288))

(declare-fun m!7978290 () Bool)

(assert (=> d!2270977 m!7978290))

(declare-fun m!7978292 () Bool)

(assert (=> d!2270977 m!7978292))

(assert (=> b!7314156 m!7978242))

(declare-fun m!7978294 () Bool)

(assert (=> bm!665766 m!7978294))

(assert (=> b!7314155 m!7978258))

(assert (=> b!7314069 d!2270977))

(declare-fun condSetEmpty!54149 () Bool)

(assert (=> setNonEmpty!54143 (= condSetEmpty!54149 (= setRest!54143 ((as const (Array A!843 Bool)) false)))))

(declare-fun setRes!54149 () Bool)

(assert (=> setNonEmpty!54143 (= tp!2075747 setRes!54149)))

(declare-fun setIsEmpty!54149 () Bool)

(assert (=> setIsEmpty!54149 setRes!54149))

(declare-fun setNonEmpty!54149 () Bool)

(declare-fun tp!2075756 () Bool)

(assert (=> setNonEmpty!54149 (= setRes!54149 (and tp!2075756 tp_is_empty!47481))))

(declare-fun setElem!54149 () A!843)

(declare-fun setRest!54149 () (InoxSet A!843))

(assert (=> setNonEmpty!54149 (= setRest!54143 ((_ map or) (store ((as const (Array A!843 Bool)) false) setElem!54149 true) setRest!54149))))

(assert (= (and setNonEmpty!54143 condSetEmpty!54149) setIsEmpty!54149))

(assert (= (and setNonEmpty!54143 (not condSetEmpty!54149)) setNonEmpty!54149))

(declare-fun b!7314165 () Bool)

(declare-fun e!4378288 () Bool)

(declare-fun tp!2075759 () Bool)

(assert (=> b!7314165 (= e!4378288 (and tp_is_empty!47483 tp!2075759))))

(assert (=> b!7314071 (= tp!2075745 e!4378288)))

(assert (= (and b!7314071 ((_ is Cons!71057) (t!385386 lRes!18))) b!7314165))

(check-sat (not b!7314156) (not b_next!134787) (not setNonEmpty!54149) tp_is_empty!47481 tp_is_empty!47483 (not bm!665766) (not b!7314155) (not d!2270967) (not d!2270977) (not b!7314108) (not b!7314098) b_and!351377 (not b!7314153) (not b!7314109) (not b!7314165) (not b!7314097) (not d!2270973) (not b!7314105))
(check-sat b_and!351377 (not b_next!134787))
(get-model)

(declare-fun b!7314169 () Bool)

(declare-fun e!4378291 () Bool)

(assert (=> b!7314169 (= e!4378291 (subseq!833 (t!385386 lRes!18) (t!385386 (t!385386 lt!2601409))))))

(declare-fun d!2270979 () Bool)

(declare-fun res!2955402 () Bool)

(declare-fun e!4378292 () Bool)

(assert (=> d!2270979 (=> res!2955402 e!4378292)))

(assert (=> d!2270979 (= res!2955402 ((_ is Nil!71057) (t!385386 lRes!18)))))

(assert (=> d!2270979 (= (subseq!833 (t!385386 lRes!18) (t!385386 lt!2601409)) e!4378292)))

(declare-fun b!7314168 () Bool)

(declare-fun e!4378290 () Bool)

(assert (=> b!7314168 (= e!4378290 (subseq!833 (t!385386 (t!385386 lRes!18)) (t!385386 (t!385386 lt!2601409))))))

(declare-fun b!7314166 () Bool)

(declare-fun e!4378289 () Bool)

(assert (=> b!7314166 (= e!4378292 e!4378289)))

(declare-fun res!2955403 () Bool)

(assert (=> b!7314166 (=> (not res!2955403) (not e!4378289))))

(assert (=> b!7314166 (= res!2955403 ((_ is Cons!71057) (t!385386 lt!2601409)))))

(declare-fun b!7314167 () Bool)

(assert (=> b!7314167 (= e!4378289 e!4378291)))

(declare-fun res!2955405 () Bool)

(assert (=> b!7314167 (=> res!2955405 e!4378291)))

(assert (=> b!7314167 (= res!2955405 e!4378290)))

(declare-fun res!2955404 () Bool)

(assert (=> b!7314167 (=> (not res!2955404) (not e!4378290))))

(assert (=> b!7314167 (= res!2955404 (= (h!77505 (t!385386 lRes!18)) (h!77505 (t!385386 lt!2601409))))))

(assert (= (and d!2270979 (not res!2955402)) b!7314166))

(assert (= (and b!7314166 res!2955403) b!7314167))

(assert (= (and b!7314167 res!2955404) b!7314168))

(assert (= (and b!7314167 (not res!2955405)) b!7314169))

(declare-fun m!7978296 () Bool)

(assert (=> b!7314169 m!7978296))

(declare-fun m!7978298 () Bool)

(assert (=> b!7314168 m!7978298))

(assert (=> b!7314109 d!2270979))

(declare-fun d!2270981 () Bool)

(assert (=> d!2270981 true))

(declare-fun setRes!54152 () Bool)

(assert (=> d!2270981 setRes!54152))

(declare-fun condSetEmpty!54152 () Bool)

(declare-fun res!2955408 () (InoxSet B!3545))

(assert (=> d!2270981 (= condSetEmpty!54152 (= res!2955408 ((as const (Array B!3545 Bool)) false)))))

(assert (=> d!2270981 (= (choose!56695 s!1437 f!883) res!2955408)))

(declare-fun setIsEmpty!54152 () Bool)

(assert (=> setIsEmpty!54152 setRes!54152))

(declare-fun setNonEmpty!54152 () Bool)

(declare-fun tp!2075762 () Bool)

(assert (=> setNonEmpty!54152 (= setRes!54152 (and tp!2075762 tp_is_empty!47483))))

(declare-fun setElem!54152 () B!3545)

(declare-fun setRest!54152 () (InoxSet B!3545))

(assert (=> setNonEmpty!54152 (= res!2955408 ((_ map or) (store ((as const (Array B!3545 Bool)) false) setElem!54152 true) setRest!54152))))

(assert (= (and d!2270981 condSetEmpty!54152) setIsEmpty!54152))

(assert (= (and d!2270981 (not condSetEmpty!54152)) setNonEmpty!54152))

(assert (=> d!2270973 d!2270981))

(assert (=> b!7314156 d!2270961))

(assert (=> b!7314097 d!2270979))

(declare-fun b!7314173 () Bool)

(declare-fun e!4378295 () Bool)

(assert (=> b!7314173 (= e!4378295 (subseq!833 lRes!18 (t!385386 (t!385386 lt!2601409))))))

(declare-fun d!2270983 () Bool)

(declare-fun res!2955409 () Bool)

(declare-fun e!4378296 () Bool)

(assert (=> d!2270983 (=> res!2955409 e!4378296)))

(assert (=> d!2270983 (= res!2955409 ((_ is Nil!71057) lRes!18))))

(assert (=> d!2270983 (= (subseq!833 lRes!18 (t!385386 lt!2601409)) e!4378296)))

(declare-fun b!7314172 () Bool)

(declare-fun e!4378294 () Bool)

(assert (=> b!7314172 (= e!4378294 (subseq!833 (t!385386 lRes!18) (t!385386 (t!385386 lt!2601409))))))

(declare-fun b!7314170 () Bool)

(declare-fun e!4378293 () Bool)

(assert (=> b!7314170 (= e!4378296 e!4378293)))

(declare-fun res!2955410 () Bool)

(assert (=> b!7314170 (=> (not res!2955410) (not e!4378293))))

(assert (=> b!7314170 (= res!2955410 ((_ is Cons!71057) (t!385386 lt!2601409)))))

(declare-fun b!7314171 () Bool)

(assert (=> b!7314171 (= e!4378293 e!4378295)))

(declare-fun res!2955412 () Bool)

(assert (=> b!7314171 (=> res!2955412 e!4378295)))

(assert (=> b!7314171 (= res!2955412 e!4378294)))

(declare-fun res!2955411 () Bool)

(assert (=> b!7314171 (=> (not res!2955411) (not e!4378294))))

(assert (=> b!7314171 (= res!2955411 (= (h!77505 lRes!18) (h!77505 (t!385386 lt!2601409))))))

(assert (= (and d!2270983 (not res!2955409)) b!7314170))

(assert (= (and b!7314170 res!2955410) b!7314171))

(assert (= (and b!7314171 res!2955411) b!7314172))

(assert (= (and b!7314171 (not res!2955412)) b!7314173))

(declare-fun m!7978300 () Bool)

(assert (=> b!7314173 m!7978300))

(assert (=> b!7314172 m!7978296))

(assert (=> b!7314155 d!2270983))

(declare-fun d!2270985 () Bool)

(declare-fun res!2955417 () Bool)

(declare-fun e!4378301 () Bool)

(assert (=> d!2270985 (=> res!2955417 e!4378301)))

(assert (=> d!2270985 (= res!2955417 ((_ is Nil!71057) lt!2601415))))

(assert (=> d!2270985 (= (noDuplicate!3049 lt!2601415) e!4378301)))

(declare-fun b!7314178 () Bool)

(declare-fun e!4378302 () Bool)

(assert (=> b!7314178 (= e!4378301 e!4378302)))

(declare-fun res!2955418 () Bool)

(assert (=> b!7314178 (=> (not res!2955418) (not e!4378302))))

(declare-fun contains!20783 (List!71181 B!3545) Bool)

(assert (=> b!7314178 (= res!2955418 (not (contains!20783 (t!385386 lt!2601415) (h!77505 lt!2601415))))))

(declare-fun b!7314179 () Bool)

(assert (=> b!7314179 (= e!4378302 (noDuplicate!3049 (t!385386 lt!2601415)))))

(assert (= (and d!2270985 (not res!2955417)) b!7314178))

(assert (= (and b!7314178 res!2955418) b!7314179))

(declare-fun m!7978302 () Bool)

(assert (=> b!7314178 m!7978302))

(declare-fun m!7978304 () Bool)

(assert (=> b!7314179 m!7978304))

(assert (=> d!2270967 d!2270985))

(declare-fun d!2270987 () Bool)

(declare-fun e!4378307 () Bool)

(assert (=> d!2270987 e!4378307))

(declare-fun res!2955424 () Bool)

(assert (=> d!2270987 (=> (not res!2955424) (not e!4378307))))

(declare-fun res!2955423 () List!71181)

(assert (=> d!2270987 (= res!2955424 (noDuplicate!3049 res!2955423))))

(declare-fun e!4378308 () Bool)

(assert (=> d!2270987 e!4378308))

(assert (=> d!2270987 (= (choose!56694 (flatMap!3032 s!1437 f!883)) res!2955423)))

(declare-fun b!7314184 () Bool)

(declare-fun tp!2075765 () Bool)

(assert (=> b!7314184 (= e!4378308 (and tp_is_empty!47483 tp!2075765))))

(declare-fun b!7314185 () Bool)

(assert (=> b!7314185 (= e!4378307 (= (content!14868 res!2955423) (flatMap!3032 s!1437 f!883)))))

(assert (= (and d!2270987 ((_ is Cons!71057) res!2955423)) b!7314184))

(assert (= (and d!2270987 res!2955424) b!7314185))

(declare-fun m!7978306 () Bool)

(assert (=> d!2270987 m!7978306))

(declare-fun m!7978308 () Bool)

(assert (=> b!7314185 m!7978308))

(assert (=> d!2270967 d!2270987))

(declare-fun b!7314189 () Bool)

(declare-fun e!4378311 () Bool)

(assert (=> b!7314189 (= e!4378311 (subseq!833 (t!385386 (t!385386 lRes!18)) (t!385386 (t!385386 lt!2601409))))))

(declare-fun d!2270991 () Bool)

(declare-fun res!2955425 () Bool)

(declare-fun e!4378312 () Bool)

(assert (=> d!2270991 (=> res!2955425 e!4378312)))

(assert (=> d!2270991 (= res!2955425 ((_ is Nil!71057) (t!385386 (t!385386 lRes!18))))))

(assert (=> d!2270991 (= (subseq!833 (t!385386 (t!385386 lRes!18)) (t!385386 lt!2601409)) e!4378312)))

(declare-fun b!7314188 () Bool)

(declare-fun e!4378310 () Bool)

(assert (=> b!7314188 (= e!4378310 (subseq!833 (t!385386 (t!385386 (t!385386 lRes!18))) (t!385386 (t!385386 lt!2601409))))))

(declare-fun b!7314186 () Bool)

(declare-fun e!4378309 () Bool)

(assert (=> b!7314186 (= e!4378312 e!4378309)))

(declare-fun res!2955426 () Bool)

(assert (=> b!7314186 (=> (not res!2955426) (not e!4378309))))

(assert (=> b!7314186 (= res!2955426 ((_ is Cons!71057) (t!385386 lt!2601409)))))

(declare-fun b!7314187 () Bool)

(assert (=> b!7314187 (= e!4378309 e!4378311)))

(declare-fun res!2955428 () Bool)

(assert (=> b!7314187 (=> res!2955428 e!4378311)))

(assert (=> b!7314187 (= res!2955428 e!4378310)))

(declare-fun res!2955427 () Bool)

(assert (=> b!7314187 (=> (not res!2955427) (not e!4378310))))

(assert (=> b!7314187 (= res!2955427 (= (h!77505 (t!385386 (t!385386 lRes!18))) (h!77505 (t!385386 lt!2601409))))))

(assert (= (and d!2270991 (not res!2955425)) b!7314186))

(assert (= (and b!7314186 res!2955426) b!7314187))

(assert (= (and b!7314187 res!2955427) b!7314188))

(assert (= (and b!7314187 (not res!2955428)) b!7314189))

(assert (=> b!7314189 m!7978298))

(declare-fun m!7978310 () Bool)

(assert (=> b!7314188 m!7978310))

(assert (=> b!7314108 d!2270991))

(declare-fun b!7314194 () Bool)

(declare-fun e!4378317 () Unit!164537)

(declare-fun call!665772 () Unit!164537)

(assert (=> b!7314194 (= e!4378317 call!665772)))

(declare-fun d!2270993 () Bool)

(assert (=> d!2270993 (subseq!833 (tail!14634 (ite c!1357796 lRes!18 (t!385386 lRes!18))) (t!385386 lt!2601409))))

(declare-fun lt!2601422 () Unit!164537)

(declare-fun e!4378318 () Unit!164537)

(assert (=> d!2270993 (= lt!2601422 e!4378318)))

(declare-fun c!1357798 () Bool)

(assert (=> d!2270993 (= c!1357798 (and ((_ is Cons!71057) (ite c!1357796 lRes!18 (t!385386 lRes!18))) ((_ is Cons!71057) (t!385386 lt!2601409))))))

(declare-fun e!4378319 () Bool)

(assert (=> d!2270993 e!4378319))

(declare-fun res!2955433 () Bool)

(assert (=> d!2270993 (=> (not res!2955433) (not e!4378319))))

(assert (=> d!2270993 (= res!2955433 (not (isEmpty!40855 (ite c!1357796 lRes!18 (t!385386 lRes!18)))))))

(assert (=> d!2270993 (= (subseqTail!76 (ite c!1357796 lRes!18 (t!385386 lRes!18)) (t!385386 lt!2601409)) lt!2601422)))

(declare-fun b!7314195 () Bool)

(declare-fun c!1357797 () Bool)

(assert (=> b!7314195 (= c!1357797 (not (isEmpty!40855 (t!385386 (ite c!1357796 lRes!18 (t!385386 lRes!18))))))))

(declare-fun e!4378320 () Unit!164537)

(assert (=> b!7314195 (= e!4378317 e!4378320)))

(declare-fun b!7314196 () Bool)

(declare-fun Unit!164543 () Unit!164537)

(assert (=> b!7314196 (= e!4378320 Unit!164543)))

(declare-fun b!7314197 () Bool)

(assert (=> b!7314197 (= e!4378318 e!4378317)))

(declare-fun c!1357799 () Bool)

(assert (=> b!7314197 (= c!1357799 (subseq!833 (ite c!1357796 lRes!18 (t!385386 lRes!18)) (t!385386 (t!385386 lt!2601409))))))

(declare-fun bm!665767 () Bool)

(assert (=> bm!665767 (= call!665772 (subseqTail!76 (ite c!1357799 (ite c!1357796 lRes!18 (t!385386 lRes!18)) (t!385386 (ite c!1357796 lRes!18 (t!385386 lRes!18)))) (t!385386 (t!385386 lt!2601409))))))

(declare-fun b!7314198 () Bool)

(assert (=> b!7314198 (= e!4378319 (subseq!833 (ite c!1357796 lRes!18 (t!385386 lRes!18)) (t!385386 lt!2601409)))))

(declare-fun b!7314199 () Bool)

(assert (=> b!7314199 (= e!4378320 call!665772)))

(declare-fun b!7314200 () Bool)

(declare-fun Unit!164544 () Unit!164537)

(assert (=> b!7314200 (= e!4378318 Unit!164544)))

(assert (= (and d!2270993 res!2955433) b!7314198))

(assert (= (and d!2270993 c!1357798) b!7314197))

(assert (= (and d!2270993 (not c!1357798)) b!7314200))

(assert (= (and b!7314197 c!1357799) b!7314194))

(assert (= (and b!7314197 (not c!1357799)) b!7314195))

(assert (= (and b!7314195 c!1357797) b!7314199))

(assert (= (and b!7314195 (not c!1357797)) b!7314196))

(assert (= (or b!7314194 b!7314199) bm!665767))

(declare-fun m!7978312 () Bool)

(assert (=> b!7314195 m!7978312))

(declare-fun m!7978314 () Bool)

(assert (=> d!2270993 m!7978314))

(assert (=> d!2270993 m!7978314))

(declare-fun m!7978316 () Bool)

(assert (=> d!2270993 m!7978316))

(declare-fun m!7978318 () Bool)

(assert (=> d!2270993 m!7978318))

(declare-fun m!7978320 () Bool)

(assert (=> b!7314198 m!7978320))

(declare-fun m!7978322 () Bool)

(assert (=> bm!665767 m!7978322))

(declare-fun m!7978324 () Bool)

(assert (=> b!7314197 m!7978324))

(assert (=> bm!665766 d!2270993))

(declare-fun b!7314206 () Bool)

(declare-fun e!4378325 () Bool)

(assert (=> b!7314206 (= e!4378325 (subseq!833 (tail!14634 lRes!18) (t!385386 lt!2601409)))))

(declare-fun d!2270995 () Bool)

(declare-fun res!2955436 () Bool)

(declare-fun e!4378326 () Bool)

(assert (=> d!2270995 (=> res!2955436 e!4378326)))

(assert (=> d!2270995 (= res!2955436 ((_ is Nil!71057) (tail!14634 lRes!18)))))

(assert (=> d!2270995 (= (subseq!833 (tail!14634 lRes!18) lt!2601409) e!4378326)))

(declare-fun b!7314205 () Bool)

(declare-fun e!4378324 () Bool)

(assert (=> b!7314205 (= e!4378324 (subseq!833 (t!385386 (tail!14634 lRes!18)) (t!385386 lt!2601409)))))

(declare-fun b!7314203 () Bool)

(declare-fun e!4378323 () Bool)

(assert (=> b!7314203 (= e!4378326 e!4378323)))

(declare-fun res!2955437 () Bool)

(assert (=> b!7314203 (=> (not res!2955437) (not e!4378323))))

(assert (=> b!7314203 (= res!2955437 ((_ is Cons!71057) lt!2601409))))

(declare-fun b!7314204 () Bool)

(assert (=> b!7314204 (= e!4378323 e!4378325)))

(declare-fun res!2955439 () Bool)

(assert (=> b!7314204 (=> res!2955439 e!4378325)))

(assert (=> b!7314204 (= res!2955439 e!4378324)))

(declare-fun res!2955438 () Bool)

(assert (=> b!7314204 (=> (not res!2955438) (not e!4378324))))

(assert (=> b!7314204 (= res!2955438 (= (h!77505 (tail!14634 lRes!18)) (h!77505 lt!2601409)))))

(assert (= (and d!2270995 (not res!2955436)) b!7314203))

(assert (= (and b!7314203 res!2955437) b!7314204))

(assert (= (and b!7314204 res!2955438) b!7314205))

(assert (= (and b!7314204 (not res!2955439)) b!7314206))

(assert (=> b!7314206 m!7978288))

(declare-fun m!7978330 () Bool)

(assert (=> b!7314206 m!7978330))

(declare-fun m!7978332 () Bool)

(assert (=> b!7314205 m!7978332))

(assert (=> d!2270977 d!2270995))

(declare-fun d!2270999 () Bool)

(assert (=> d!2270999 (= (tail!14634 lRes!18) (t!385386 lRes!18))))

(assert (=> d!2270977 d!2270999))

(declare-fun d!2271001 () Bool)

(assert (=> d!2271001 (= (isEmpty!40855 lRes!18) ((_ is Nil!71057) lRes!18))))

(assert (=> d!2270977 d!2271001))

(declare-fun d!2271003 () Bool)

(assert (=> d!2271003 (= (isEmpty!40855 (t!385386 lRes!18)) ((_ is Nil!71057) (t!385386 lRes!18)))))

(assert (=> b!7314153 d!2271003))

(declare-fun d!2271005 () Bool)

(declare-fun c!1357802 () Bool)

(assert (=> d!2271005 (= c!1357802 ((_ is Nil!71057) lt!2601415))))

(declare-fun e!4378335 () (InoxSet B!3545))

(assert (=> d!2271005 (= (content!14868 lt!2601415) e!4378335)))

(declare-fun b!7314217 () Bool)

(assert (=> b!7314217 (= e!4378335 ((as const (Array B!3545 Bool)) false))))

(declare-fun b!7314218 () Bool)

(assert (=> b!7314218 (= e!4378335 ((_ map or) (store ((as const (Array B!3545 Bool)) false) (h!77505 lt!2601415) true) (content!14868 (t!385386 lt!2601415))))))

(assert (= (and d!2271005 c!1357802) b!7314217))

(assert (= (and d!2271005 (not c!1357802)) b!7314218))

(declare-fun m!7978338 () Bool)

(assert (=> b!7314218 m!7978338))

(declare-fun m!7978340 () Bool)

(assert (=> b!7314218 m!7978340))

(assert (=> b!7314105 d!2271005))

(assert (=> b!7314098 d!2270983))

(declare-fun condSetEmpty!54156 () Bool)

(assert (=> setNonEmpty!54149 (= condSetEmpty!54156 (= setRest!54149 ((as const (Array A!843 Bool)) false)))))

(declare-fun setRes!54156 () Bool)

(assert (=> setNonEmpty!54149 (= tp!2075756 setRes!54156)))

(declare-fun setIsEmpty!54156 () Bool)

(assert (=> setIsEmpty!54156 setRes!54156))

(declare-fun setNonEmpty!54156 () Bool)

(declare-fun tp!2075772 () Bool)

(assert (=> setNonEmpty!54156 (= setRes!54156 (and tp!2075772 tp_is_empty!47481))))

(declare-fun setElem!54156 () A!843)

(declare-fun setRest!54156 () (InoxSet A!843))

(assert (=> setNonEmpty!54156 (= setRest!54149 ((_ map or) (store ((as const (Array A!843 Bool)) false) setElem!54156 true) setRest!54156))))

(assert (= (and setNonEmpty!54149 condSetEmpty!54156) setIsEmpty!54156))

(assert (= (and setNonEmpty!54149 (not condSetEmpty!54156)) setNonEmpty!54156))

(declare-fun b!7314223 () Bool)

(declare-fun e!4378340 () Bool)

(declare-fun tp!2075773 () Bool)

(assert (=> b!7314223 (= e!4378340 (and tp_is_empty!47483 tp!2075773))))

(assert (=> b!7314165 (= tp!2075759 e!4378340)))

(assert (= (and b!7314165 ((_ is Cons!71057) (t!385386 (t!385386 lRes!18)))) b!7314223))

(check-sat (not b!7314206) (not setNonEmpty!54156) (not b!7314205) tp_is_empty!47481 (not setNonEmpty!54152) tp_is_empty!47483 (not b!7314179) b_and!351377 (not d!2270987) (not b!7314173) (not b!7314198) (not b!7314218) (not b!7314195) (not d!2270993) (not b_next!134787) (not b!7314169) (not b!7314185) (not b!7314168) (not bm!665767) (not b!7314223) (not b!7314172) (not b!7314178) (not b!7314184) (not b!7314189) (not b!7314188) (not b!7314197))
(check-sat b_and!351377 (not b_next!134787))
