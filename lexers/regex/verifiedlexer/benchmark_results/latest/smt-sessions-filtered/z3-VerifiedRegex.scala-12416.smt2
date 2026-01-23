; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693954 () Bool)

(assert start!693954)

(declare-fun b_free!133769 () Bool)

(declare-fun b_next!134559 () Bool)

(assert (=> start!693954 (= b_free!133769 (not b_next!134559))))

(declare-fun tp!1961857 () Bool)

(declare-fun b_and!350869 () Bool)

(assert (=> start!693954 (= tp!1961857 b_and!350869)))

(declare-fun res!2906727 () Bool)

(declare-fun e!4280940 () Bool)

(assert (=> start!693954 (=> (not res!2906727) (not e!4280940))))

(declare-datatypes ((B!3333 0))(
  ( (B!3334 (val!28001 Int)) )
))
(declare-fun b!25321 () B!3333)

(declare-fun f!518 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!675 0))(
  ( (A!676 (val!28002 Int)) )
))
(declare-fun s1!413 () (InoxSet A!675))

(declare-fun map!16452 ((InoxSet A!675) Int) (InoxSet B!3333))

(assert (=> start!693954 (= res!2906727 (not (select (map!16452 s1!413 f!518) b!25321)))))

(assert (=> start!693954 e!4280940))

(declare-fun tp_is_empty!45501 () Bool)

(assert (=> start!693954 tp_is_empty!45501))

(declare-fun condSetEmpty!51375 () Bool)

(assert (=> start!693954 (= condSetEmpty!51375 (= s1!413 ((as const (Array A!675 Bool)) false)))))

(declare-fun setRes!51375 () Bool)

(assert (=> start!693954 setRes!51375))

(assert (=> start!693954 tp!1961857))

(declare-fun condSetEmpty!51374 () Bool)

(declare-fun s2!384 () (InoxSet A!675))

(assert (=> start!693954 (= condSetEmpty!51374 (= s2!384 ((as const (Array A!675 Bool)) false)))))

(declare-fun setRes!51374 () Bool)

(assert (=> start!693954 setRes!51374))

(declare-fun setNonEmpty!51374 () Bool)

(declare-fun tp!1961856 () Bool)

(declare-fun tp_is_empty!45503 () Bool)

(assert (=> setNonEmpty!51374 (= setRes!51375 (and tp!1961856 tp_is_empty!45503))))

(declare-fun setElem!51375 () A!675)

(declare-fun setRest!51374 () (InoxSet A!675))

(assert (=> setNonEmpty!51374 (= s1!413 ((_ map or) (store ((as const (Array A!675 Bool)) false) setElem!51375 true) setRest!51374))))

(declare-fun b!7123893 () Bool)

(declare-fun res!2906726 () Bool)

(assert (=> b!7123893 (=> (not res!2906726) (not e!4280940))))

(assert (=> b!7123893 (= res!2906726 (select (map!16452 s2!384 f!518) b!25321))))

(declare-fun b!7123894 () Bool)

(declare-fun mapPost2!566 ((InoxSet A!675) Int B!3333) A!675)

(assert (=> b!7123894 (= e!4280940 (not (select s2!384 (mapPost2!566 s2!384 f!518 b!25321))))))

(declare-fun setIsEmpty!51374 () Bool)

(assert (=> setIsEmpty!51374 setRes!51375))

(declare-fun setNonEmpty!51375 () Bool)

(declare-fun tp!1961855 () Bool)

(assert (=> setNonEmpty!51375 (= setRes!51374 (and tp!1961855 tp_is_empty!45503))))

(declare-fun setElem!51374 () A!675)

(declare-fun setRest!51375 () (InoxSet A!675))

(assert (=> setNonEmpty!51375 (= s2!384 ((_ map or) (store ((as const (Array A!675 Bool)) false) setElem!51374 true) setRest!51375))))

(declare-fun setIsEmpty!51375 () Bool)

(assert (=> setIsEmpty!51375 setRes!51374))

(assert (= (and start!693954 res!2906727) b!7123893))

(assert (= (and b!7123893 res!2906726) b!7123894))

(assert (= (and start!693954 condSetEmpty!51375) setIsEmpty!51374))

(assert (= (and start!693954 (not condSetEmpty!51375)) setNonEmpty!51374))

(assert (= (and start!693954 condSetEmpty!51374) setIsEmpty!51375))

(assert (= (and start!693954 (not condSetEmpty!51374)) setNonEmpty!51375))

(declare-fun m!7841276 () Bool)

(assert (=> start!693954 m!7841276))

(declare-fun m!7841278 () Bool)

(assert (=> start!693954 m!7841278))

(declare-fun m!7841280 () Bool)

(assert (=> b!7123893 m!7841280))

(declare-fun m!7841282 () Bool)

(assert (=> b!7123893 m!7841282))

(declare-fun m!7841284 () Bool)

(assert (=> b!7123894 m!7841284))

(assert (=> b!7123894 m!7841284))

(declare-fun m!7841286 () Bool)

(assert (=> b!7123894 m!7841286))

(check-sat (not setNonEmpty!51375) (not b_next!134559) tp_is_empty!45501 (not setNonEmpty!51374) (not b!7123894) (not b!7123893) b_and!350869 (not start!693954) tp_is_empty!45503)
(check-sat b_and!350869 (not b_next!134559))
(get-model)

(declare-fun d!2223209 () Bool)

(declare-fun choose!55056 ((InoxSet A!675) Int) (InoxSet B!3333))

(assert (=> d!2223209 (= (map!16452 s1!413 f!518) (choose!55056 s1!413 f!518))))

(declare-fun bs!1886199 () Bool)

(assert (= bs!1886199 d!2223209))

(declare-fun m!7841288 () Bool)

(assert (=> bs!1886199 m!7841288))

(assert (=> start!693954 d!2223209))

(declare-fun d!2223211 () Bool)

(assert (=> d!2223211 (= (map!16452 s2!384 f!518) (choose!55056 s2!384 f!518))))

(declare-fun bs!1886200 () Bool)

(assert (= bs!1886200 d!2223211))

(declare-fun m!7841290 () Bool)

(assert (=> bs!1886200 m!7841290))

(assert (=> b!7123893 d!2223211))

(declare-fun d!2223213 () Bool)

(declare-fun e!4280946 () Bool)

(assert (=> d!2223213 e!4280946))

(declare-fun res!2906733 () Bool)

(assert (=> d!2223213 (=> (not res!2906733) (not e!4280946))))

(declare-fun lt!2562602 () A!675)

(declare-fun dynLambda!28087 (Int A!675) B!3333)

(assert (=> d!2223213 (= res!2906733 (= b!25321 (dynLambda!28087 f!518 lt!2562602)))))

(declare-fun choose!55057 ((InoxSet A!675) Int B!3333) A!675)

(assert (=> d!2223213 (= lt!2562602 (choose!55057 s2!384 f!518 b!25321))))

(assert (=> d!2223213 (select (map!16452 s2!384 f!518) b!25321)))

(assert (=> d!2223213 (= (mapPost2!566 s2!384 f!518 b!25321) lt!2562602)))

(declare-fun b!7123904 () Bool)

(assert (=> b!7123904 (= e!4280946 (select s2!384 lt!2562602))))

(assert (= (and d!2223213 res!2906733) b!7123904))

(declare-fun b_lambda!271791 () Bool)

(assert (=> (not b_lambda!271791) (not d!2223213)))

(declare-fun t!382953 () Bool)

(declare-fun tb!262003 () Bool)

(assert (=> (and start!693954 (= f!518 f!518) t!382953) tb!262003))

(declare-fun result!349288 () Bool)

(assert (=> tb!262003 (= result!349288 tp_is_empty!45501)))

(assert (=> d!2223213 t!382953))

(declare-fun b_and!350873 () Bool)

(assert (= b_and!350869 (and (=> t!382953 result!349288) b_and!350873)))

(declare-fun m!7841298 () Bool)

(assert (=> d!2223213 m!7841298))

(declare-fun m!7841300 () Bool)

(assert (=> d!2223213 m!7841300))

(assert (=> d!2223213 m!7841280))

(assert (=> d!2223213 m!7841282))

(declare-fun m!7841302 () Bool)

(assert (=> b!7123904 m!7841302))

(assert (=> b!7123894 d!2223213))

(declare-fun condSetEmpty!51378 () Bool)

(assert (=> setNonEmpty!51375 (= condSetEmpty!51378 (= setRest!51375 ((as const (Array A!675 Bool)) false)))))

(declare-fun setRes!51378 () Bool)

(assert (=> setNonEmpty!51375 (= tp!1961855 setRes!51378)))

(declare-fun setIsEmpty!51378 () Bool)

(assert (=> setIsEmpty!51378 setRes!51378))

(declare-fun setNonEmpty!51378 () Bool)

(declare-fun tp!1961860 () Bool)

(assert (=> setNonEmpty!51378 (= setRes!51378 (and tp!1961860 tp_is_empty!45503))))

(declare-fun setElem!51378 () A!675)

(declare-fun setRest!51378 () (InoxSet A!675))

(assert (=> setNonEmpty!51378 (= setRest!51375 ((_ map or) (store ((as const (Array A!675 Bool)) false) setElem!51378 true) setRest!51378))))

(assert (= (and setNonEmpty!51375 condSetEmpty!51378) setIsEmpty!51378))

(assert (= (and setNonEmpty!51375 (not condSetEmpty!51378)) setNonEmpty!51378))

(declare-fun condSetEmpty!51381 () Bool)

(assert (=> setNonEmpty!51374 (= condSetEmpty!51381 (= setRest!51374 ((as const (Array A!675 Bool)) false)))))

(declare-fun setRes!51381 () Bool)

(assert (=> setNonEmpty!51374 (= tp!1961856 setRes!51381)))

(declare-fun setIsEmpty!51381 () Bool)

(assert (=> setIsEmpty!51381 setRes!51381))

(declare-fun setNonEmpty!51381 () Bool)

(declare-fun tp!1961861 () Bool)

(assert (=> setNonEmpty!51381 (= setRes!51381 (and tp!1961861 tp_is_empty!45503))))

(declare-fun setElem!51381 () A!675)

(declare-fun setRest!51381 () (InoxSet A!675))

(assert (=> setNonEmpty!51381 (= setRest!51374 ((_ map or) (store ((as const (Array A!675 Bool)) false) setElem!51381 true) setRest!51381))))

(assert (= (and setNonEmpty!51374 condSetEmpty!51381) setIsEmpty!51381))

(assert (= (and setNonEmpty!51374 (not condSetEmpty!51381)) setNonEmpty!51381))

(declare-fun b_lambda!271793 () Bool)

(assert (= b_lambda!271791 (or (and start!693954 b_free!133769) b_lambda!271793)))

(check-sat (not b_next!134559) (not d!2223211) (not d!2223209) (not setNonEmpty!51378) tp_is_empty!45503 (not d!2223213) tp_is_empty!45501 b_and!350873 (not setNonEmpty!51381) (not b_lambda!271793))
(check-sat b_and!350873 (not b_next!134559))
