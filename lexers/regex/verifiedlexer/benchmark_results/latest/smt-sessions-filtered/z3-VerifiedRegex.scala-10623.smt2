; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545866 () Bool)

(assert start!545866)

(declare-fun b_free!133521 () Bool)

(declare-fun b_next!134311 () Bool)

(assert (=> start!545866 (= b_free!133521 (not b_next!134311))))

(declare-fun tp!1447763 () Bool)

(declare-fun b_and!350481 () Bool)

(assert (=> start!545866 (= tp!1447763 b_and!350481)))

(declare-fun b!5162185 () Bool)

(declare-fun e!3216365 () Bool)

(declare-datatypes ((A!471 0))(
  ( (A!472 (val!24322 Int)) )
))
(declare-datatypes ((List!59988 0))(
  ( (Nil!59864) (Cons!59864 (h!66312 A!471) (t!373065 List!59988)) )
))
(declare-fun lt!2122359 () List!59988)

(declare-fun p!1744 () Int)

(declare-fun forall!14038 (List!59988 Int) Bool)

(assert (=> b!5162185 (= e!3216365 (not (forall!14038 lt!2122359 p!1744)))))

(declare-fun b!5162186 () Bool)

(declare-fun res!2194574 () Bool)

(declare-fun e!3216366 () Bool)

(assert (=> b!5162186 (=> (not res!2194574) (not e!3216366))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s2!450 () (InoxSet A!471))

(declare-fun forall!14039 ((InoxSet A!471) Int) Bool)

(assert (=> b!5162186 (= res!2194574 (forall!14039 s2!450 p!1744))))

(declare-fun setNonEmpty!31279 () Bool)

(declare-fun setRes!31280 () Bool)

(declare-fun tp!1447765 () Bool)

(declare-fun tp_is_empty!38223 () Bool)

(assert (=> setNonEmpty!31279 (= setRes!31280 (and tp!1447765 tp_is_empty!38223))))

(declare-fun setElem!31279 () A!471)

(declare-fun setRest!31279 () (InoxSet A!471))

(assert (=> setNonEmpty!31279 (= s2!450 ((_ map or) (store ((as const (Array A!471 Bool)) false) setElem!31279 true) setRest!31279))))

(declare-fun setIsEmpty!31280 () Bool)

(declare-fun setRes!31279 () Bool)

(assert (=> setIsEmpty!31280 setRes!31279))

(declare-fun b!5162187 () Bool)

(assert (=> b!5162187 (= e!3216366 e!3216365)))

(declare-fun res!2194575 () Bool)

(assert (=> b!5162187 (=> (not res!2194575) (not e!3216365))))

(declare-fun lt!2122358 () List!59988)

(assert (=> b!5162187 (= res!2194575 (forall!14038 lt!2122358 p!1744))))

(declare-fun toList!8417 ((InoxSet A!471)) List!59988)

(assert (=> b!5162187 (= lt!2122359 (toList!8417 s2!450))))

(declare-fun s1!479 () (InoxSet A!471))

(assert (=> b!5162187 (= lt!2122358 (toList!8417 s1!479))))

(declare-fun setNonEmpty!31280 () Bool)

(declare-fun tp!1447764 () Bool)

(assert (=> setNonEmpty!31280 (= setRes!31279 (and tp!1447764 tp_is_empty!38223))))

(declare-fun setElem!31280 () A!471)

(declare-fun setRest!31280 () (InoxSet A!471))

(assert (=> setNonEmpty!31280 (= s1!479 ((_ map or) (store ((as const (Array A!471 Bool)) false) setElem!31280 true) setRest!31280))))

(declare-fun setIsEmpty!31279 () Bool)

(assert (=> setIsEmpty!31279 setRes!31280))

(declare-fun res!2194576 () Bool)

(assert (=> start!545866 (=> (not res!2194576) (not e!3216366))))

(assert (=> start!545866 (= res!2194576 (forall!14039 s1!479 p!1744))))

(assert (=> start!545866 e!3216366))

(declare-fun condSetEmpty!31279 () Bool)

(assert (=> start!545866 (= condSetEmpty!31279 (= s1!479 ((as const (Array A!471 Bool)) false)))))

(assert (=> start!545866 setRes!31279))

(assert (=> start!545866 tp!1447763))

(declare-fun condSetEmpty!31280 () Bool)

(assert (=> start!545866 (= condSetEmpty!31280 (= s2!450 ((as const (Array A!471 Bool)) false)))))

(assert (=> start!545866 setRes!31280))

(assert (= (and start!545866 res!2194576) b!5162186))

(assert (= (and b!5162186 res!2194574) b!5162187))

(assert (= (and b!5162187 res!2194575) b!5162185))

(assert (= (and start!545866 condSetEmpty!31279) setIsEmpty!31280))

(assert (= (and start!545866 (not condSetEmpty!31279)) setNonEmpty!31280))

(assert (= (and start!545866 condSetEmpty!31280) setIsEmpty!31279))

(assert (= (and start!545866 (not condSetEmpty!31280)) setNonEmpty!31279))

(declare-fun m!6212636 () Bool)

(assert (=> b!5162185 m!6212636))

(declare-fun m!6212638 () Bool)

(assert (=> b!5162186 m!6212638))

(declare-fun m!6212640 () Bool)

(assert (=> b!5162187 m!6212640))

(declare-fun m!6212642 () Bool)

(assert (=> b!5162187 m!6212642))

(declare-fun m!6212644 () Bool)

(assert (=> b!5162187 m!6212644))

(declare-fun m!6212646 () Bool)

(assert (=> start!545866 m!6212646))

(check-sat (not b_next!134311) (not start!545866) (not b!5162186) tp_is_empty!38223 (not b!5162185) (not setNonEmpty!31280) b_and!350481 (not b!5162187) (not setNonEmpty!31279))
(check-sat b_and!350481 (not b_next!134311))
(get-model)

(declare-fun d!1665798 () Bool)

(declare-fun lt!2122364 () Bool)

(assert (=> d!1665798 (= lt!2122364 (forall!14038 (toList!8417 s1!479) p!1744))))

(declare-fun choose!38147 ((InoxSet A!471) Int) Bool)

(assert (=> d!1665798 (= lt!2122364 (choose!38147 s1!479 p!1744))))

(assert (=> d!1665798 (= (forall!14039 s1!479 p!1744) lt!2122364)))

(declare-fun bs!1202623 () Bool)

(assert (= bs!1202623 d!1665798))

(assert (=> bs!1202623 m!6212644))

(assert (=> bs!1202623 m!6212644))

(declare-fun m!6212652 () Bool)

(assert (=> bs!1202623 m!6212652))

(declare-fun m!6212654 () Bool)

(assert (=> bs!1202623 m!6212654))

(assert (=> start!545866 d!1665798))

(declare-fun d!1665802 () Bool)

(declare-fun lt!2122365 () Bool)

(assert (=> d!1665802 (= lt!2122365 (forall!14038 (toList!8417 s2!450) p!1744))))

(assert (=> d!1665802 (= lt!2122365 (choose!38147 s2!450 p!1744))))

(assert (=> d!1665802 (= (forall!14039 s2!450 p!1744) lt!2122365)))

(declare-fun bs!1202624 () Bool)

(assert (= bs!1202624 d!1665802))

(assert (=> bs!1202624 m!6212642))

(assert (=> bs!1202624 m!6212642))

(declare-fun m!6212656 () Bool)

(assert (=> bs!1202624 m!6212656))

(declare-fun m!6212658 () Bool)

(assert (=> bs!1202624 m!6212658))

(assert (=> b!5162186 d!1665802))

(declare-fun d!1665804 () Bool)

(declare-fun res!2194591 () Bool)

(declare-fun e!3216381 () Bool)

(assert (=> d!1665804 (=> res!2194591 e!3216381)))

(get-info :version)

(assert (=> d!1665804 (= res!2194591 ((_ is Nil!59864) lt!2122358))))

(assert (=> d!1665804 (= (forall!14038 lt!2122358 p!1744) e!3216381)))

(declare-fun b!5162202 () Bool)

(declare-fun e!3216382 () Bool)

(assert (=> b!5162202 (= e!3216381 e!3216382)))

(declare-fun res!2194592 () Bool)

(assert (=> b!5162202 (=> (not res!2194592) (not e!3216382))))

(declare-fun dynLambda!23828 (Int A!471) Bool)

(assert (=> b!5162202 (= res!2194592 (dynLambda!23828 p!1744 (h!66312 lt!2122358)))))

(declare-fun b!5162203 () Bool)

(assert (=> b!5162203 (= e!3216382 (forall!14038 (t!373065 lt!2122358) p!1744))))

(assert (= (and d!1665804 (not res!2194591)) b!5162202))

(assert (= (and b!5162202 res!2194592) b!5162203))

(declare-fun b_lambda!200599 () Bool)

(assert (=> (not b_lambda!200599) (not b!5162202)))

(declare-fun t!373069 () Bool)

(declare-fun tb!261879 () Bool)

(assert (=> (and start!545866 (= p!1744 p!1744) t!373069) tb!261879))

(declare-fun result!330330 () Bool)

(assert (=> tb!261879 (= result!330330 true)))

(assert (=> b!5162202 t!373069))

(declare-fun b_and!350485 () Bool)

(assert (= b_and!350481 (and (=> t!373069 result!330330) b_and!350485)))

(declare-fun m!6212676 () Bool)

(assert (=> b!5162202 m!6212676))

(declare-fun m!6212678 () Bool)

(assert (=> b!5162203 m!6212678))

(assert (=> b!5162187 d!1665804))

(declare-fun d!1665812 () Bool)

(declare-fun e!3216387 () Bool)

(assert (=> d!1665812 e!3216387))

(declare-fun res!2194597 () Bool)

(assert (=> d!1665812 (=> (not res!2194597) (not e!3216387))))

(declare-fun lt!2122374 () List!59988)

(declare-fun noDuplicate!1122 (List!59988) Bool)

(assert (=> d!1665812 (= res!2194597 (noDuplicate!1122 lt!2122374))))

(declare-fun choose!38150 ((InoxSet A!471)) List!59988)

(assert (=> d!1665812 (= lt!2122374 (choose!38150 s2!450))))

(assert (=> d!1665812 (= (toList!8417 s2!450) lt!2122374)))

(declare-fun b!5162210 () Bool)

(declare-fun content!10599 (List!59988) (InoxSet A!471))

(assert (=> b!5162210 (= e!3216387 (= (content!10599 lt!2122374) s2!450))))

(assert (= (and d!1665812 res!2194597) b!5162210))

(declare-fun m!6212688 () Bool)

(assert (=> d!1665812 m!6212688))

(declare-fun m!6212690 () Bool)

(assert (=> d!1665812 m!6212690))

(declare-fun m!6212692 () Bool)

(assert (=> b!5162210 m!6212692))

(assert (=> b!5162187 d!1665812))

(declare-fun d!1665816 () Bool)

(declare-fun e!3216388 () Bool)

(assert (=> d!1665816 e!3216388))

(declare-fun res!2194598 () Bool)

(assert (=> d!1665816 (=> (not res!2194598) (not e!3216388))))

(declare-fun lt!2122375 () List!59988)

(assert (=> d!1665816 (= res!2194598 (noDuplicate!1122 lt!2122375))))

(assert (=> d!1665816 (= lt!2122375 (choose!38150 s1!479))))

(assert (=> d!1665816 (= (toList!8417 s1!479) lt!2122375)))

(declare-fun b!5162211 () Bool)

(assert (=> b!5162211 (= e!3216388 (= (content!10599 lt!2122375) s1!479))))

(assert (= (and d!1665816 res!2194598) b!5162211))

(declare-fun m!6212694 () Bool)

(assert (=> d!1665816 m!6212694))

(declare-fun m!6212696 () Bool)

(assert (=> d!1665816 m!6212696))

(declare-fun m!6212698 () Bool)

(assert (=> b!5162211 m!6212698))

(assert (=> b!5162187 d!1665816))

(declare-fun d!1665818 () Bool)

(declare-fun res!2194599 () Bool)

(declare-fun e!3216389 () Bool)

(assert (=> d!1665818 (=> res!2194599 e!3216389)))

(assert (=> d!1665818 (= res!2194599 ((_ is Nil!59864) lt!2122359))))

(assert (=> d!1665818 (= (forall!14038 lt!2122359 p!1744) e!3216389)))

(declare-fun b!5162212 () Bool)

(declare-fun e!3216390 () Bool)

(assert (=> b!5162212 (= e!3216389 e!3216390)))

(declare-fun res!2194600 () Bool)

(assert (=> b!5162212 (=> (not res!2194600) (not e!3216390))))

(assert (=> b!5162212 (= res!2194600 (dynLambda!23828 p!1744 (h!66312 lt!2122359)))))

(declare-fun b!5162213 () Bool)

(assert (=> b!5162213 (= e!3216390 (forall!14038 (t!373065 lt!2122359) p!1744))))

(assert (= (and d!1665818 (not res!2194599)) b!5162212))

(assert (= (and b!5162212 res!2194600) b!5162213))

(declare-fun b_lambda!200607 () Bool)

(assert (=> (not b_lambda!200607) (not b!5162212)))

(declare-fun t!373073 () Bool)

(declare-fun tb!261883 () Bool)

(assert (=> (and start!545866 (= p!1744 p!1744) t!373073) tb!261883))

(declare-fun result!330336 () Bool)

(assert (=> tb!261883 (= result!330336 true)))

(assert (=> b!5162212 t!373073))

(declare-fun b_and!350489 () Bool)

(assert (= b_and!350485 (and (=> t!373073 result!330336) b_and!350489)))

(declare-fun m!6212700 () Bool)

(assert (=> b!5162212 m!6212700))

(declare-fun m!6212702 () Bool)

(assert (=> b!5162213 m!6212702))

(assert (=> b!5162185 d!1665818))

(declare-fun condSetEmpty!31287 () Bool)

(assert (=> setNonEmpty!31279 (= condSetEmpty!31287 (= setRest!31279 ((as const (Array A!471 Bool)) false)))))

(declare-fun setRes!31287 () Bool)

(assert (=> setNonEmpty!31279 (= tp!1447765 setRes!31287)))

(declare-fun setIsEmpty!31287 () Bool)

(assert (=> setIsEmpty!31287 setRes!31287))

(declare-fun setNonEmpty!31287 () Bool)

(declare-fun tp!1447772 () Bool)

(assert (=> setNonEmpty!31287 (= setRes!31287 (and tp!1447772 tp_is_empty!38223))))

(declare-fun setElem!31287 () A!471)

(declare-fun setRest!31287 () (InoxSet A!471))

(assert (=> setNonEmpty!31287 (= setRest!31279 ((_ map or) (store ((as const (Array A!471 Bool)) false) setElem!31287 true) setRest!31287))))

(assert (= (and setNonEmpty!31279 condSetEmpty!31287) setIsEmpty!31287))

(assert (= (and setNonEmpty!31279 (not condSetEmpty!31287)) setNonEmpty!31287))

(declare-fun condSetEmpty!31288 () Bool)

(assert (=> setNonEmpty!31280 (= condSetEmpty!31288 (= setRest!31280 ((as const (Array A!471 Bool)) false)))))

(declare-fun setRes!31288 () Bool)

(assert (=> setNonEmpty!31280 (= tp!1447764 setRes!31288)))

(declare-fun setIsEmpty!31288 () Bool)

(assert (=> setIsEmpty!31288 setRes!31288))

(declare-fun setNonEmpty!31288 () Bool)

(declare-fun tp!1447773 () Bool)

(assert (=> setNonEmpty!31288 (= setRes!31288 (and tp!1447773 tp_is_empty!38223))))

(declare-fun setElem!31288 () A!471)

(declare-fun setRest!31288 () (InoxSet A!471))

(assert (=> setNonEmpty!31288 (= setRest!31280 ((_ map or) (store ((as const (Array A!471 Bool)) false) setElem!31288 true) setRest!31288))))

(assert (= (and setNonEmpty!31280 condSetEmpty!31288) setIsEmpty!31288))

(assert (= (and setNonEmpty!31280 (not condSetEmpty!31288)) setNonEmpty!31288))

(declare-fun b_lambda!200609 () Bool)

(assert (= b_lambda!200599 (or (and start!545866 b_free!133521) b_lambda!200609)))

(declare-fun b_lambda!200611 () Bool)

(assert (= b_lambda!200607 (or (and start!545866 b_free!133521) b_lambda!200611)))

(check-sat (not b!5162210) (not b_next!134311) (not d!1665812) (not d!1665816) (not b_lambda!200611) (not d!1665802) (not b!5162211) tp_is_empty!38223 (not b!5162213) (not setNonEmpty!31288) (not b!5162203) (not b_lambda!200609) (not d!1665798) b_and!350489 (not setNonEmpty!31287))
(check-sat b_and!350489 (not b_next!134311))
