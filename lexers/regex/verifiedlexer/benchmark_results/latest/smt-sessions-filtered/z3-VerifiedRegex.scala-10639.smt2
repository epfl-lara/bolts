; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546114 () Bool)

(assert start!546114)

(declare-fun b_free!133585 () Bool)

(declare-fun b_next!134375 () Bool)

(assert (=> start!546114 (= b_free!133585 (not b_next!134375))))

(declare-fun tp!1448062 () Bool)

(declare-fun b_and!350633 () Bool)

(assert (=> start!546114 (= tp!1448062 b_and!350633)))

(declare-fun b!5163003 () Bool)

(assert (=> b!5163003 true))

(assert (=> b!5163003 true))

(declare-fun order!27019 () Int)

(declare-fun lambda!257685 () Int)

(declare-fun order!27021 () Int)

(declare-fun f!451 () Int)

(declare-fun dynLambda!23853 (Int Int) Int)

(declare-fun dynLambda!23854 (Int Int) Int)

(assert (=> b!5163003 (< (dynLambda!23853 order!27019 f!451) (dynLambda!23854 order!27021 lambda!257685))))

(declare-fun res!2195071 () Bool)

(declare-fun e!3216934 () Bool)

(assert (=> start!546114 (=> (not res!2195071) (not e!3216934))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!491 0))(
  ( (A!492 (val!24355 Int)) )
))
(declare-fun s!1393 () (InoxSet A!491))

(declare-datatypes ((B!3141 0))(
  ( (B!3142 (val!24356 Int)) )
))
(declare-fun b!25308 () B!3141)

(declare-fun flatMap!426 ((InoxSet A!491) Int) (InoxSet B!3141))

(assert (=> start!546114 (= res!2195071 (select (flatMap!426 s!1393 f!451) b!25308))))

(assert (=> start!546114 e!3216934))

(declare-fun tp_is_empty!38291 () Bool)

(assert (=> start!546114 tp_is_empty!38291))

(declare-fun condSetEmpty!31358 () Bool)

(assert (=> start!546114 (= condSetEmpty!31358 (= s!1393 ((as const (Array A!491 Bool)) false)))))

(declare-fun setRes!31358 () Bool)

(assert (=> start!546114 setRes!31358))

(assert (=> start!546114 tp!1448062))

(declare-fun setIsEmpty!31358 () Bool)

(assert (=> setIsEmpty!31358 setRes!31358))

(declare-fun exists!1882 ((InoxSet A!491) Int) Bool)

(assert (=> b!5163003 (= e!3216934 (not (exists!1882 s!1393 lambda!257685)))))

(declare-fun empty!2703 () A!491)

(declare-fun flatMapPost!42 ((InoxSet A!491) Int B!3141) A!491)

(assert (=> b!5163003 (= (flatMapPost!42 s!1393 f!451 b!25308) empty!2703)))

(assert (=> b!5163003 true))

(declare-fun tp_is_empty!38289 () Bool)

(assert (=> b!5163003 tp_is_empty!38289))

(declare-fun setNonEmpty!31358 () Bool)

(declare-fun tp!1448063 () Bool)

(assert (=> setNonEmpty!31358 (= setRes!31358 (and tp!1448063 tp_is_empty!38289))))

(declare-fun setElem!31358 () A!491)

(declare-fun setRest!31358 () (InoxSet A!491))

(assert (=> setNonEmpty!31358 (= s!1393 ((_ map or) (store ((as const (Array A!491 Bool)) false) setElem!31358 true) setRest!31358))))

(declare-fun b!5163002 () Bool)

(declare-fun res!2195072 () Bool)

(assert (=> b!5163002 (=> (not res!2195072) (not e!3216934))))

(assert (=> b!5163002 (= res!2195072 (not (= s!1393 ((as const (Array A!491 Bool)) false))))))

(assert (= (and start!546114 res!2195071) b!5163002))

(assert (= (and b!5163002 res!2195072) b!5163003))

(assert (= (and start!546114 condSetEmpty!31358) setIsEmpty!31358))

(assert (= (and start!546114 (not condSetEmpty!31358)) setNonEmpty!31358))

(declare-fun m!6213632 () Bool)

(assert (=> start!546114 m!6213632))

(declare-fun m!6213634 () Bool)

(assert (=> start!546114 m!6213634))

(declare-fun m!6213636 () Bool)

(assert (=> b!5163003 m!6213636))

(declare-fun m!6213638 () Bool)

(assert (=> b!5163003 m!6213638))

(check-sat (not b!5163003) tp_is_empty!38291 (not b_next!134375) (not setNonEmpty!31358) tp_is_empty!38289 b_and!350633 (not start!546114))
(check-sat b_and!350633 (not b_next!134375))
(get-model)

(declare-fun d!1666106 () Bool)

(declare-fun choose!38192 ((InoxSet A!491) Int) (InoxSet B!3141))

(assert (=> d!1666106 (= (flatMap!426 s!1393 f!451) (choose!38192 s!1393 f!451))))

(declare-fun bs!1202703 () Bool)

(assert (= bs!1202703 d!1666106))

(declare-fun m!6213648 () Bool)

(assert (=> bs!1202703 m!6213648))

(assert (=> start!546114 d!1666106))

(declare-fun d!1666108 () Bool)

(declare-fun lt!2122760 () Bool)

(declare-datatypes ((List!60020 0))(
  ( (Nil!59896) (Cons!59896 (h!66344 A!491) (t!373173 List!60020)) )
))
(declare-fun exists!1884 (List!60020 Int) Bool)

(declare-fun toList!8439 ((InoxSet A!491)) List!60020)

(assert (=> d!1666108 (= lt!2122760 (exists!1884 (toList!8439 s!1393) lambda!257685))))

(declare-fun choose!38194 ((InoxSet A!491) Int) Bool)

(assert (=> d!1666108 (= lt!2122760 (choose!38194 s!1393 lambda!257685))))

(assert (=> d!1666108 (= (exists!1882 s!1393 lambda!257685) lt!2122760)))

(declare-fun bs!1202705 () Bool)

(assert (= bs!1202705 d!1666108))

(declare-fun m!6213650 () Bool)

(assert (=> bs!1202705 m!6213650))

(assert (=> bs!1202705 m!6213650))

(declare-fun m!6213652 () Bool)

(assert (=> bs!1202705 m!6213652))

(declare-fun m!6213654 () Bool)

(assert (=> bs!1202705 m!6213654))

(assert (=> b!5163003 d!1666108))

(declare-fun bs!1202707 () Bool)

(declare-fun d!1666110 () Bool)

(assert (= bs!1202707 (and d!1666110 b!5163003)))

(declare-fun lambda!257691 () Int)

(assert (=> bs!1202707 (= lambda!257691 lambda!257685)))

(assert (=> d!1666110 true))

(assert (=> d!1666110 true))

(assert (=> d!1666110 (< (dynLambda!23853 order!27019 f!451) (dynLambda!23854 order!27021 lambda!257691))))

(assert (=> d!1666110 (= (select (flatMap!426 s!1393 f!451) b!25308) (exists!1882 s!1393 lambda!257691))))

(declare-fun lt!2122763 () A!491)

(declare-fun choose!38195 ((InoxSet A!491) Int B!3141) A!491)

(assert (=> d!1666110 (= lt!2122763 (choose!38195 s!1393 f!451 b!25308))))

(assert (=> d!1666110 (= (flatMapPost!42 s!1393 f!451 b!25308) lt!2122763)))

(declare-fun bs!1202708 () Bool)

(assert (= bs!1202708 d!1666110))

(assert (=> bs!1202708 m!6213632))

(assert (=> bs!1202708 m!6213634))

(declare-fun m!6213660 () Bool)

(assert (=> bs!1202708 m!6213660))

(declare-fun m!6213662 () Bool)

(assert (=> bs!1202708 m!6213662))

(assert (=> b!5163003 d!1666110))

(declare-fun condSetEmpty!31364 () Bool)

(assert (=> setNonEmpty!31358 (= condSetEmpty!31364 (= setRest!31358 ((as const (Array A!491 Bool)) false)))))

(declare-fun setRes!31364 () Bool)

(assert (=> setNonEmpty!31358 (= tp!1448063 setRes!31364)))

(declare-fun setIsEmpty!31364 () Bool)

(assert (=> setIsEmpty!31364 setRes!31364))

(declare-fun setNonEmpty!31364 () Bool)

(declare-fun tp!1448069 () Bool)

(assert (=> setNonEmpty!31364 (= setRes!31364 (and tp!1448069 tp_is_empty!38289))))

(declare-fun setElem!31364 () A!491)

(declare-fun setRest!31364 () (InoxSet A!491))

(assert (=> setNonEmpty!31364 (= setRest!31358 ((_ map or) (store ((as const (Array A!491 Bool)) false) setElem!31364 true) setRest!31364))))

(assert (= (and setNonEmpty!31358 condSetEmpty!31364) setIsEmpty!31364))

(assert (= (and setNonEmpty!31358 (not condSetEmpty!31364)) setNonEmpty!31364))

(check-sat (not d!1666106) (not d!1666108) (not setNonEmpty!31364) tp_is_empty!38291 (not b_next!134375) b_and!350633 tp_is_empty!38289 (not d!1666110))
(check-sat b_and!350633 (not b_next!134375))
