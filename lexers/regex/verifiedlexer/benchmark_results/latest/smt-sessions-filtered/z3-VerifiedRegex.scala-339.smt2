; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11022 () Bool)

(assert start!11022)

(declare-fun b_free!3305 () Bool)

(declare-fun b_next!3305 () Bool)

(assert (=> start!11022 (= b_free!3305 (not b_next!3305))))

(declare-fun tp!59323 () Bool)

(declare-fun b_and!5067 () Bool)

(assert (=> start!11022 (= tp!59323 b_and!5067)))

(declare-fun b_free!3307 () Bool)

(declare-fun b_next!3307 () Bool)

(assert (=> start!11022 (= b_free!3307 (not b_next!3307))))

(declare-fun tp!59321 () Bool)

(declare-fun b_and!5069 () Bool)

(assert (=> start!11022 (= tp!59321 b_and!5069)))

(assert (=> start!11022 true))

(declare-fun order!971 () Int)

(declare-fun order!969 () Int)

(declare-fun lambda!2430 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!631 (Int Int) Int)

(declare-fun dynLambda!632 (Int Int) Int)

(assert (=> start!11022 (< (dynLambda!631 order!969 f!927) (dynLambda!632 order!971 lambda!2430))))

(assert (=> start!11022 true))

(declare-fun g!9 () Int)

(assert (=> start!11022 (< (dynLambda!631 order!969 g!9) (dynLambda!632 order!971 lambda!2430))))

(declare-fun setNonEmpty!1454 () Bool)

(declare-fun setRes!1454 () Bool)

(declare-fun tp!59322 () Bool)

(declare-fun tp_is_empty!849 () Bool)

(assert (=> setNonEmpty!1454 (= setRes!1454 (and tp!59322 tp_is_empty!849))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!255 0))(
  ( (A!256 (val!558 Int)) )
))
(declare-fun s!1451 () (InoxSet A!255))

(declare-fun setElem!1454 () A!255)

(declare-fun setRest!1454 () (InoxSet A!255))

(assert (=> setNonEmpty!1454 (= s!1451 ((_ map or) (store ((as const (Array A!255 Bool)) false) setElem!1454 true) setRest!1454))))

(declare-fun res!52541 () Bool)

(declare-fun e!60869 () Bool)

(assert (=> start!11022 (=> (not res!52541) (not e!60869))))

(declare-fun forall!273 ((InoxSet A!255) Int) Bool)

(assert (=> start!11022 (= res!52541 (forall!273 s!1451 lambda!2430))))

(assert (=> start!11022 e!60869))

(declare-fun condSetEmpty!1454 () Bool)

(assert (=> start!11022 (= condSetEmpty!1454 (= s!1451 ((as const (Array A!255 Bool)) false)))))

(assert (=> start!11022 setRes!1454))

(assert (=> start!11022 tp!59323))

(assert (=> start!11022 tp!59321))

(declare-fun setIsEmpty!1454 () Bool)

(assert (=> setIsEmpty!1454 setRes!1454))

(declare-datatypes ((List!1751 0))(
  ( (Nil!1745) (Cons!1745 (h!7142 A!255) (t!21810 List!1751)) )
))
(declare-fun lt!31220 () List!1751)

(declare-fun b!109364 () Bool)

(declare-fun e!60868 () Bool)

(declare-datatypes ((B!547 0))(
  ( (B!548 (val!559 Int)) )
))
(declare-fun dynLambda!633 (Int A!255) (InoxSet B!547))

(assert (=> b!109364 (= e!60868 (= (dynLambda!633 f!927 (h!7142 lt!31220)) (dynLambda!633 g!9 (h!7142 lt!31220))))))

(declare-fun lt!31225 () (InoxSet A!255))

(assert (=> b!109364 (forall!273 lt!31225 lambda!2430)))

(declare-datatypes ((Unit!1196 0))(
  ( (Unit!1197) )
))
(declare-fun lt!31221 () Unit!1196)

(declare-fun lemmaForallThenOnContent!16 (List!1751 Int) Unit!1196)

(assert (=> b!109364 (= lt!31221 (lemmaForallThenOnContent!16 (t!21810 lt!31220) lambda!2430))))

(declare-fun b!109365 () Bool)

(declare-fun e!60871 () Bool)

(declare-fun e!60870 () Bool)

(assert (=> b!109365 (= e!60871 e!60870)))

(declare-fun res!52544 () Bool)

(assert (=> b!109365 (=> (not res!52544) (not e!60870))))

(declare-fun lt!31224 () (InoxSet A!255))

(assert (=> b!109365 (= res!52544 (= s!1451 lt!31224))))

(declare-fun lt!31226 () (InoxSet A!255))

(assert (=> b!109365 (= lt!31224 ((_ map or) lt!31226 lt!31225))))

(declare-fun content!173 (List!1751) (InoxSet A!255))

(assert (=> b!109365 (= lt!31225 (content!173 (t!21810 lt!31220)))))

(assert (=> b!109365 (= lt!31226 (store ((as const (Array A!255 Bool)) false) (h!7142 lt!31220) true))))

(declare-fun b!109366 () Bool)

(assert (=> b!109366 (= e!60870 (not e!60868))))

(declare-fun res!52542 () Bool)

(assert (=> b!109366 (=> res!52542 e!60868)))

(declare-fun forall!274 (List!1751 Int) Bool)

(assert (=> b!109366 (= res!52542 (not (forall!274 (t!21810 lt!31220) lambda!2430)))))

(declare-fun flatMap!33 ((InoxSet A!255) Int) (InoxSet B!547))

(assert (=> b!109366 (= ((_ map or) (flatMap!33 lt!31226 g!9) (flatMap!33 lt!31225 g!9)) (flatMap!33 lt!31224 g!9))))

(declare-fun lt!31223 () Unit!1196)

(declare-fun lemmaFlatMapAssociative!20 ((InoxSet A!255) (InoxSet A!255) Int) Unit!1196)

(assert (=> b!109366 (= lt!31223 (lemmaFlatMapAssociative!20 lt!31226 lt!31225 g!9))))

(assert (=> b!109366 (= ((_ map or) (flatMap!33 lt!31226 f!927) (flatMap!33 lt!31225 f!927)) (flatMap!33 lt!31224 f!927))))

(declare-fun lt!31222 () Unit!1196)

(assert (=> b!109366 (= lt!31222 (lemmaFlatMapAssociative!20 lt!31226 lt!31225 f!927))))

(declare-fun b!109367 () Bool)

(assert (=> b!109367 (= e!60869 e!60871)))

(declare-fun res!52543 () Bool)

(assert (=> b!109367 (=> (not res!52543) (not e!60871))))

(get-info :version)

(assert (=> b!109367 (= res!52543 ((_ is Cons!1745) lt!31220))))

(declare-fun toList!230 ((InoxSet A!255)) List!1751)

(assert (=> b!109367 (= lt!31220 (toList!230 s!1451))))

(assert (= (and start!11022 res!52541) b!109367))

(assert (= (and b!109367 res!52543) b!109365))

(assert (= (and b!109365 res!52544) b!109366))

(assert (= (and b!109366 (not res!52542)) b!109364))

(assert (= (and start!11022 condSetEmpty!1454) setIsEmpty!1454))

(assert (= (and start!11022 (not condSetEmpty!1454)) setNonEmpty!1454))

(declare-fun b_lambda!1345 () Bool)

(assert (=> (not b_lambda!1345) (not b!109364)))

(declare-fun t!21803 () Bool)

(declare-fun tb!3319 () Bool)

(assert (=> (and start!11022 (= f!927 f!927) t!21803) tb!3319))

(assert (=> b!109364 t!21803))

(declare-fun result!4848 () Bool)

(declare-fun b_and!5071 () Bool)

(assert (= b_and!5067 (and (=> t!21803 result!4848) b_and!5071)))

(declare-fun t!21805 () Bool)

(declare-fun tb!3321 () Bool)

(assert (=> (and start!11022 (= g!9 f!927) t!21805) tb!3321))

(assert (=> b!109364 t!21805))

(declare-fun result!4850 () Bool)

(declare-fun b_and!5073 () Bool)

(assert (= b_and!5069 (and (=> t!21805 result!4850) b_and!5073)))

(declare-fun b_lambda!1347 () Bool)

(assert (=> (not b_lambda!1347) (not b!109364)))

(declare-fun t!21807 () Bool)

(declare-fun tb!3323 () Bool)

(assert (=> (and start!11022 (= f!927 g!9) t!21807) tb!3323))

(assert (=> b!109364 t!21807))

(declare-fun result!4852 () Bool)

(declare-fun b_and!5075 () Bool)

(assert (= b_and!5071 (and (=> t!21807 result!4852) b_and!5075)))

(declare-fun t!21809 () Bool)

(declare-fun tb!3325 () Bool)

(assert (=> (and start!11022 (= g!9 g!9) t!21809) tb!3325))

(assert (=> b!109364 t!21809))

(declare-fun result!4854 () Bool)

(declare-fun b_and!5077 () Bool)

(assert (= b_and!5073 (and (=> t!21809 result!4854) b_and!5077)))

(declare-fun m!98608 () Bool)

(assert (=> b!109367 m!98608))

(declare-fun m!98610 () Bool)

(assert (=> b!109366 m!98610))

(declare-fun m!98612 () Bool)

(assert (=> b!109366 m!98612))

(declare-fun m!98614 () Bool)

(assert (=> b!109366 m!98614))

(declare-fun m!98616 () Bool)

(assert (=> b!109366 m!98616))

(declare-fun m!98618 () Bool)

(assert (=> b!109366 m!98618))

(declare-fun m!98620 () Bool)

(assert (=> b!109366 m!98620))

(declare-fun m!98622 () Bool)

(assert (=> b!109366 m!98622))

(declare-fun m!98624 () Bool)

(assert (=> b!109366 m!98624))

(declare-fun m!98626 () Bool)

(assert (=> b!109366 m!98626))

(declare-fun m!98628 () Bool)

(assert (=> b!109365 m!98628))

(declare-fun m!98630 () Bool)

(assert (=> b!109365 m!98630))

(declare-fun m!98632 () Bool)

(assert (=> start!11022 m!98632))

(declare-fun m!98634 () Bool)

(assert (=> b!109364 m!98634))

(declare-fun m!98636 () Bool)

(assert (=> b!109364 m!98636))

(declare-fun m!98638 () Bool)

(assert (=> b!109364 m!98638))

(declare-fun m!98640 () Bool)

(assert (=> b!109364 m!98640))

(check-sat (not start!11022) (not b_lambda!1345) (not b_next!3307) (not tb!3319) (not setNonEmpty!1454) tp_is_empty!849 (not b_next!3305) (not b!109364) (not tb!3323) (not b!109365) (not b!109366) b_and!5075 (not tb!3321) (not b_lambda!1347) (not b!109367) b_and!5077 (not tb!3325))
(check-sat b_and!5075 b_and!5077 (not b_next!3307) (not b_next!3305))
(get-model)

(declare-fun b_lambda!1353 () Bool)

(assert (= b_lambda!1347 (or (and start!11022 b_free!3305 (= f!927 g!9)) (and start!11022 b_free!3307) b_lambda!1353)))

(declare-fun b_lambda!1355 () Bool)

(assert (= b_lambda!1345 (or (and start!11022 b_free!3305) (and start!11022 b_free!3307 (= g!9 f!927)) b_lambda!1355)))

(check-sat (not start!11022) (not b_next!3307) (not tb!3319) (not setNonEmpty!1454) tp_is_empty!849 (not b_next!3305) (not b!109364) (not b_lambda!1353) (not tb!3323) (not b!109365) (not b!109366) (not b_lambda!1355) b_and!5075 (not tb!3321) (not b!109367) b_and!5077 (not tb!3325))
(check-sat b_and!5075 b_and!5077 (not b_next!3307) (not b_next!3305))
(get-model)

(declare-fun d!27142 () Bool)

(declare-fun e!60880 () Bool)

(assert (=> d!27142 e!60880))

(declare-fun res!52550 () Bool)

(assert (=> d!27142 (=> (not res!52550) (not e!60880))))

(declare-fun lt!31239 () List!1751)

(declare-fun noDuplicate!13 (List!1751) Bool)

(assert (=> d!27142 (= res!52550 (noDuplicate!13 lt!31239))))

(declare-fun choose!1444 ((InoxSet A!255)) List!1751)

(assert (=> d!27142 (= lt!31239 (choose!1444 s!1451))))

(assert (=> d!27142 (= (toList!230 s!1451) lt!31239)))

(declare-fun b!109381 () Bool)

(assert (=> b!109381 (= e!60880 (= (content!173 lt!31239) s!1451))))

(assert (= (and d!27142 res!52550) b!109381))

(declare-fun m!98666 () Bool)

(assert (=> d!27142 m!98666))

(declare-fun m!98668 () Bool)

(assert (=> d!27142 m!98668))

(declare-fun m!98670 () Bool)

(assert (=> b!109381 m!98670))

(assert (=> b!109367 d!27142))

(declare-fun d!27148 () Bool)

(declare-fun lt!31242 () Bool)

(assert (=> d!27148 (= lt!31242 (forall!274 (toList!230 s!1451) lambda!2430))))

(declare-fun choose!1446 ((InoxSet A!255) Int) Bool)

(assert (=> d!27148 (= lt!31242 (choose!1446 s!1451 lambda!2430))))

(assert (=> d!27148 (= (forall!273 s!1451 lambda!2430) lt!31242)))

(declare-fun bs!10821 () Bool)

(assert (= bs!10821 d!27148))

(assert (=> bs!10821 m!98608))

(assert (=> bs!10821 m!98608))

(declare-fun m!98674 () Bool)

(assert (=> bs!10821 m!98674))

(declare-fun m!98676 () Bool)

(assert (=> bs!10821 m!98676))

(assert (=> start!11022 d!27148))

(declare-fun d!27152 () Bool)

(assert (=> d!27152 (= ((_ map or) (flatMap!33 lt!31226 f!927) (flatMap!33 lt!31225 f!927)) (flatMap!33 ((_ map or) lt!31226 lt!31225) f!927))))

(declare-fun lt!31247 () Unit!1196)

(declare-fun choose!1447 ((InoxSet A!255) (InoxSet A!255) Int) Unit!1196)

(assert (=> d!27152 (= lt!31247 (choose!1447 lt!31226 lt!31225 f!927))))

(assert (=> d!27152 (= (lemmaFlatMapAssociative!20 lt!31226 lt!31225 f!927) lt!31247)))

(declare-fun bs!10825 () Bool)

(assert (= bs!10825 d!27152))

(assert (=> bs!10825 m!98616))

(assert (=> bs!10825 m!98610))

(declare-fun m!98688 () Bool)

(assert (=> bs!10825 m!98688))

(declare-fun m!98690 () Bool)

(assert (=> bs!10825 m!98690))

(assert (=> b!109366 d!27152))

(declare-fun d!27162 () Bool)

(assert (=> d!27162 (= ((_ map or) (flatMap!33 lt!31226 g!9) (flatMap!33 lt!31225 g!9)) (flatMap!33 ((_ map or) lt!31226 lt!31225) g!9))))

(declare-fun lt!31248 () Unit!1196)

(assert (=> d!27162 (= lt!31248 (choose!1447 lt!31226 lt!31225 g!9))))

(assert (=> d!27162 (= (lemmaFlatMapAssociative!20 lt!31226 lt!31225 g!9) lt!31248)))

(declare-fun bs!10826 () Bool)

(assert (= bs!10826 d!27162))

(assert (=> bs!10826 m!98626))

(assert (=> bs!10826 m!98622))

(declare-fun m!98692 () Bool)

(assert (=> bs!10826 m!98692))

(declare-fun m!98694 () Bool)

(assert (=> bs!10826 m!98694))

(assert (=> b!109366 d!27162))

(declare-fun d!27164 () Bool)

(declare-fun choose!1448 ((InoxSet A!255) Int) (InoxSet B!547))

(assert (=> d!27164 (= (flatMap!33 lt!31224 f!927) (choose!1448 lt!31224 f!927))))

(declare-fun bs!10830 () Bool)

(assert (= bs!10830 d!27164))

(declare-fun m!98704 () Bool)

(assert (=> bs!10830 m!98704))

(assert (=> b!109366 d!27164))

(declare-fun d!27172 () Bool)

(declare-fun res!52561 () Bool)

(declare-fun e!60891 () Bool)

(assert (=> d!27172 (=> res!52561 e!60891)))

(assert (=> d!27172 (= res!52561 ((_ is Nil!1745) (t!21810 lt!31220)))))

(assert (=> d!27172 (= (forall!274 (t!21810 lt!31220) lambda!2430) e!60891)))

(declare-fun b!109396 () Bool)

(declare-fun e!60892 () Bool)

(assert (=> b!109396 (= e!60891 e!60892)))

(declare-fun res!52562 () Bool)

(assert (=> b!109396 (=> (not res!52562) (not e!60892))))

(declare-fun dynLambda!635 (Int A!255) Bool)

(assert (=> b!109396 (= res!52562 (dynLambda!635 lambda!2430 (h!7142 (t!21810 lt!31220))))))

(declare-fun b!109397 () Bool)

(assert (=> b!109397 (= e!60892 (forall!274 (t!21810 (t!21810 lt!31220)) lambda!2430))))

(assert (= (and d!27172 (not res!52561)) b!109396))

(assert (= (and b!109396 res!52562) b!109397))

(declare-fun b_lambda!1363 () Bool)

(assert (=> (not b_lambda!1363) (not b!109396)))

(declare-fun m!98710 () Bool)

(assert (=> b!109396 m!98710))

(declare-fun m!98712 () Bool)

(assert (=> b!109397 m!98712))

(assert (=> b!109366 d!27172))

(declare-fun d!27176 () Bool)

(assert (=> d!27176 (= (flatMap!33 lt!31225 f!927) (choose!1448 lt!31225 f!927))))

(declare-fun bs!10833 () Bool)

(assert (= bs!10833 d!27176))

(declare-fun m!98714 () Bool)

(assert (=> bs!10833 m!98714))

(assert (=> b!109366 d!27176))

(declare-fun d!27178 () Bool)

(assert (=> d!27178 (= (flatMap!33 lt!31224 g!9) (choose!1448 lt!31224 g!9))))

(declare-fun bs!10834 () Bool)

(assert (= bs!10834 d!27178))

(declare-fun m!98716 () Bool)

(assert (=> bs!10834 m!98716))

(assert (=> b!109366 d!27178))

(declare-fun d!27180 () Bool)

(assert (=> d!27180 (= (flatMap!33 lt!31226 g!9) (choose!1448 lt!31226 g!9))))

(declare-fun bs!10835 () Bool)

(assert (= bs!10835 d!27180))

(declare-fun m!98718 () Bool)

(assert (=> bs!10835 m!98718))

(assert (=> b!109366 d!27180))

(declare-fun d!27182 () Bool)

(assert (=> d!27182 (= (flatMap!33 lt!31226 f!927) (choose!1448 lt!31226 f!927))))

(declare-fun bs!10836 () Bool)

(assert (= bs!10836 d!27182))

(declare-fun m!98722 () Bool)

(assert (=> bs!10836 m!98722))

(assert (=> b!109366 d!27182))

(declare-fun d!27184 () Bool)

(assert (=> d!27184 (= (flatMap!33 lt!31225 g!9) (choose!1448 lt!31225 g!9))))

(declare-fun bs!10837 () Bool)

(assert (= bs!10837 d!27184))

(declare-fun m!98726 () Bool)

(assert (=> bs!10837 m!98726))

(assert (=> b!109366 d!27184))

(declare-fun d!27186 () Bool)

(declare-fun c!26130 () Bool)

(assert (=> d!27186 (= c!26130 ((_ is Nil!1745) (t!21810 lt!31220)))))

(declare-fun e!60895 () (InoxSet A!255))

(assert (=> d!27186 (= (content!173 (t!21810 lt!31220)) e!60895)))

(declare-fun b!109402 () Bool)

(assert (=> b!109402 (= e!60895 ((as const (Array A!255 Bool)) false))))

(declare-fun b!109403 () Bool)

(assert (=> b!109403 (= e!60895 ((_ map or) (store ((as const (Array A!255 Bool)) false) (h!7142 (t!21810 lt!31220)) true) (content!173 (t!21810 (t!21810 lt!31220)))))))

(assert (= (and d!27186 c!26130) b!109402))

(assert (= (and d!27186 (not c!26130)) b!109403))

(declare-fun m!98728 () Bool)

(assert (=> b!109403 m!98728))

(declare-fun m!98730 () Bool)

(assert (=> b!109403 m!98730))

(assert (=> b!109365 d!27186))

(declare-fun d!27188 () Bool)

(declare-fun lt!31251 () Bool)

(assert (=> d!27188 (= lt!31251 (forall!274 (toList!230 lt!31225) lambda!2430))))

(assert (=> d!27188 (= lt!31251 (choose!1446 lt!31225 lambda!2430))))

(assert (=> d!27188 (= (forall!273 lt!31225 lambda!2430) lt!31251)))

(declare-fun bs!10838 () Bool)

(assert (= bs!10838 d!27188))

(declare-fun m!98732 () Bool)

(assert (=> bs!10838 m!98732))

(assert (=> bs!10838 m!98732))

(declare-fun m!98734 () Bool)

(assert (=> bs!10838 m!98734))

(declare-fun m!98736 () Bool)

(assert (=> bs!10838 m!98736))

(assert (=> b!109364 d!27188))

(declare-fun d!27190 () Bool)

(assert (=> d!27190 (forall!273 (content!173 (t!21810 lt!31220)) lambda!2430)))

(declare-fun lt!31254 () Unit!1196)

(declare-fun choose!1450 (List!1751 Int) Unit!1196)

(assert (=> d!27190 (= lt!31254 (choose!1450 (t!21810 lt!31220) lambda!2430))))

(assert (=> d!27190 (forall!274 (t!21810 lt!31220) lambda!2430)))

(assert (=> d!27190 (= (lemmaForallThenOnContent!16 (t!21810 lt!31220) lambda!2430) lt!31254)))

(declare-fun bs!10839 () Bool)

(assert (= bs!10839 d!27190))

(assert (=> bs!10839 m!98628))

(assert (=> bs!10839 m!98628))

(declare-fun m!98738 () Bool)

(assert (=> bs!10839 m!98738))

(declare-fun m!98740 () Bool)

(assert (=> bs!10839 m!98740))

(assert (=> bs!10839 m!98620))

(assert (=> b!109364 d!27190))

(declare-fun condSetEmpty!1464 () Bool)

(assert (=> setNonEmpty!1454 (= condSetEmpty!1464 (= setRest!1454 ((as const (Array A!255 Bool)) false)))))

(declare-fun setRes!1464 () Bool)

(assert (=> setNonEmpty!1454 (= tp!59322 setRes!1464)))

(declare-fun setIsEmpty!1464 () Bool)

(assert (=> setIsEmpty!1464 setRes!1464))

(declare-fun setNonEmpty!1464 () Bool)

(declare-fun tp!59333 () Bool)

(assert (=> setNonEmpty!1464 (= setRes!1464 (and tp!59333 tp_is_empty!849))))

(declare-fun setElem!1464 () A!255)

(declare-fun setRest!1464 () (InoxSet A!255))

(assert (=> setNonEmpty!1464 (= setRest!1454 ((_ map or) (store ((as const (Array A!255 Bool)) false) setElem!1464 true) setRest!1464))))

(assert (= (and setNonEmpty!1454 condSetEmpty!1464) setIsEmpty!1464))

(assert (= (and setNonEmpty!1454 (not condSetEmpty!1464)) setNonEmpty!1464))

(declare-fun condSetEmpty!1467 () Bool)

(assert (=> tb!3319 (= condSetEmpty!1467 (= (dynLambda!633 f!927 (h!7142 lt!31220)) ((as const (Array B!547 Bool)) false)))))

(declare-fun setRes!1467 () Bool)

(assert (=> tb!3319 (= result!4848 setRes!1467)))

(declare-fun setIsEmpty!1467 () Bool)

(assert (=> setIsEmpty!1467 setRes!1467))

(declare-fun setNonEmpty!1467 () Bool)

(declare-fun tp!59336 () Bool)

(declare-fun tp_is_empty!853 () Bool)

(assert (=> setNonEmpty!1467 (= setRes!1467 (and tp!59336 tp_is_empty!853))))

(declare-fun setRest!1467 () (InoxSet B!547))

(declare-fun setElem!1467 () B!547)

(assert (=> setNonEmpty!1467 (= (dynLambda!633 f!927 (h!7142 lt!31220)) ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1467 true) setRest!1467))))

(assert (= (and tb!3319 condSetEmpty!1467) setIsEmpty!1467))

(assert (= (and tb!3319 (not condSetEmpty!1467)) setNonEmpty!1467))

(declare-fun condSetEmpty!1468 () Bool)

(assert (=> tb!3325 (= condSetEmpty!1468 (= (dynLambda!633 g!9 (h!7142 lt!31220)) ((as const (Array B!547 Bool)) false)))))

(declare-fun setRes!1468 () Bool)

(assert (=> tb!3325 (= result!4854 setRes!1468)))

(declare-fun setIsEmpty!1468 () Bool)

(assert (=> setIsEmpty!1468 setRes!1468))

(declare-fun setNonEmpty!1468 () Bool)

(declare-fun tp!59337 () Bool)

(assert (=> setNonEmpty!1468 (= setRes!1468 (and tp!59337 tp_is_empty!853))))

(declare-fun setElem!1468 () B!547)

(declare-fun setRest!1468 () (InoxSet B!547))

(assert (=> setNonEmpty!1468 (= (dynLambda!633 g!9 (h!7142 lt!31220)) ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1468 true) setRest!1468))))

(assert (= (and tb!3325 condSetEmpty!1468) setIsEmpty!1468))

(assert (= (and tb!3325 (not condSetEmpty!1468)) setNonEmpty!1468))

(assert (= result!4850 result!4848))

(assert (= result!4852 result!4854))

(declare-fun b_lambda!1367 () Bool)

(assert (= b_lambda!1363 (or start!11022 b_lambda!1367)))

(declare-fun bs!10840 () Bool)

(declare-fun d!27192 () Bool)

(assert (= bs!10840 (and d!27192 start!11022)))

(assert (=> bs!10840 (= (dynLambda!635 lambda!2430 (h!7142 (t!21810 lt!31220))) (= (dynLambda!633 f!927 (h!7142 (t!21810 lt!31220))) (dynLambda!633 g!9 (h!7142 (t!21810 lt!31220)))))))

(declare-fun b_lambda!1369 () Bool)

(assert (=> (not b_lambda!1369) (not bs!10840)))

(declare-fun t!21820 () Bool)

(declare-fun tb!3335 () Bool)

(assert (=> (and start!11022 (= f!927 f!927) t!21820) tb!3335))

(assert (=> bs!10840 t!21820))

(declare-fun result!4872 () Bool)

(declare-fun b_and!5087 () Bool)

(assert (= b_and!5075 (and (=> t!21820 result!4872) b_and!5087)))

(declare-fun tb!3337 () Bool)

(declare-fun t!21822 () Bool)

(assert (=> (and start!11022 (= g!9 f!927) t!21822) tb!3337))

(assert (=> bs!10840 t!21822))

(declare-fun result!4874 () Bool)

(declare-fun b_and!5089 () Bool)

(assert (= b_and!5077 (and (=> t!21822 result!4874) b_and!5089)))

(declare-fun b_lambda!1371 () Bool)

(assert (=> (not b_lambda!1371) (not bs!10840)))

(declare-fun t!21824 () Bool)

(declare-fun tb!3339 () Bool)

(assert (=> (and start!11022 (= f!927 g!9) t!21824) tb!3339))

(assert (=> bs!10840 t!21824))

(declare-fun result!4876 () Bool)

(declare-fun b_and!5091 () Bool)

(assert (= b_and!5087 (and (=> t!21824 result!4876) b_and!5091)))

(declare-fun t!21826 () Bool)

(declare-fun tb!3341 () Bool)

(assert (=> (and start!11022 (= g!9 g!9) t!21826) tb!3341))

(assert (=> bs!10840 t!21826))

(declare-fun result!4878 () Bool)

(declare-fun b_and!5093 () Bool)

(assert (= b_and!5089 (and (=> t!21826 result!4878) b_and!5093)))

(declare-fun m!98742 () Bool)

(assert (=> bs!10840 m!98742))

(declare-fun m!98744 () Bool)

(assert (=> bs!10840 m!98744))

(assert (=> b!109396 d!27192))

(check-sat (not b_next!3307) (not d!27164) (not d!27162) (not b!109397) (not setNonEmpty!1467) (not d!27148) (not b!109403) (not b_lambda!1371) (not setNonEmpty!1464) (not d!27176) (not d!27190) (not b_lambda!1367) b_and!5091 (not d!27178) tp_is_empty!849 (not b_next!3305) (not tb!3337) (not tb!3335) (not d!27152) (not tb!3339) (not d!27142) tp_is_empty!853 (not d!27182) (not setNonEmpty!1468) (not d!27184) (not b_lambda!1353) (not d!27180) (not d!27188) b_and!5093 (not b_lambda!1369) (not b!109381) (not tb!3341) (not b_lambda!1355))
(check-sat b_and!5091 b_and!5093 (not b_next!3307) (not b_next!3305))
(get-model)

(declare-fun b_lambda!1377 () Bool)

(assert (= b_lambda!1369 (or (and start!11022 b_free!3305) (and start!11022 b_free!3307 (= g!9 f!927)) b_lambda!1377)))

(declare-fun b_lambda!1379 () Bool)

(assert (= b_lambda!1371 (or (and start!11022 b_free!3305 (= f!927 g!9)) (and start!11022 b_free!3307) b_lambda!1379)))

(check-sat (not b_next!3307) (not d!27164) (not d!27162) (not b!109397) (not setNonEmpty!1467) (not d!27148) (not b!109381) (not b!109403) (not setNonEmpty!1464) (not d!27176) (not d!27190) (not b_lambda!1367) b_and!5091 (not d!27178) tp_is_empty!849 (not b_next!3305) (not tb!3337) (not tb!3335) (not d!27152) (not tb!3339) (not d!27142) tp_is_empty!853 (not d!27182) (not setNonEmpty!1468) (not d!27184) (not b_lambda!1353) (not d!27180) (not d!27188) b_and!5093 (not tb!3341) (not b_lambda!1355) (not b_lambda!1377) (not b_lambda!1379))
(check-sat b_and!5091 b_and!5093 (not b_next!3307) (not b_next!3305))
(get-model)

(declare-fun d!27244 () Bool)

(assert (=> d!27244 true))

(declare-fun setRes!1484 () Bool)

(assert (=> d!27244 setRes!1484))

(declare-fun condSetEmpty!1484 () Bool)

(declare-fun res!52596 () (InoxSet B!547))

(assert (=> d!27244 (= condSetEmpty!1484 (= res!52596 ((as const (Array B!547 Bool)) false)))))

(assert (=> d!27244 (= (choose!1448 lt!31226 g!9) res!52596)))

(declare-fun setIsEmpty!1484 () Bool)

(assert (=> setIsEmpty!1484 setRes!1484))

(declare-fun setNonEmpty!1484 () Bool)

(declare-fun tp!59356 () Bool)

(assert (=> setNonEmpty!1484 (= setRes!1484 (and tp!59356 tp_is_empty!853))))

(declare-fun setElem!1484 () B!547)

(declare-fun setRest!1484 () (InoxSet B!547))

(assert (=> setNonEmpty!1484 (= res!52596 ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1484 true) setRest!1484))))

(assert (= (and d!27244 condSetEmpty!1484) setIsEmpty!1484))

(assert (= (and d!27244 (not condSetEmpty!1484)) setNonEmpty!1484))

(assert (=> d!27180 d!27244))

(declare-fun d!27246 () Bool)

(declare-fun lt!31257 () Bool)

(assert (=> d!27246 (= lt!31257 (forall!274 (toList!230 (content!173 (t!21810 lt!31220))) lambda!2430))))

(assert (=> d!27246 (= lt!31257 (choose!1446 (content!173 (t!21810 lt!31220)) lambda!2430))))

(assert (=> d!27246 (= (forall!273 (content!173 (t!21810 lt!31220)) lambda!2430) lt!31257)))

(declare-fun bs!10852 () Bool)

(assert (= bs!10852 d!27246))

(assert (=> bs!10852 m!98628))

(declare-fun m!98802 () Bool)

(assert (=> bs!10852 m!98802))

(assert (=> bs!10852 m!98802))

(declare-fun m!98804 () Bool)

(assert (=> bs!10852 m!98804))

(assert (=> bs!10852 m!98628))

(declare-fun m!98806 () Bool)

(assert (=> bs!10852 m!98806))

(assert (=> d!27190 d!27246))

(assert (=> d!27190 d!27186))

(declare-fun d!27248 () Bool)

(assert (=> d!27248 (forall!273 (content!173 (t!21810 lt!31220)) lambda!2430)))

(assert (=> d!27248 true))

(declare-fun _$36!106 () Unit!1196)

(assert (=> d!27248 (= (choose!1450 (t!21810 lt!31220) lambda!2430) _$36!106)))

(declare-fun bs!10853 () Bool)

(assert (= bs!10853 d!27248))

(assert (=> bs!10853 m!98628))

(assert (=> bs!10853 m!98628))

(assert (=> bs!10853 m!98738))

(assert (=> d!27190 d!27248))

(assert (=> d!27190 d!27172))

(declare-fun d!27250 () Bool)

(assert (=> d!27250 true))

(declare-fun setRes!1485 () Bool)

(assert (=> d!27250 setRes!1485))

(declare-fun condSetEmpty!1485 () Bool)

(declare-fun res!52597 () (InoxSet B!547))

(assert (=> d!27250 (= condSetEmpty!1485 (= res!52597 ((as const (Array B!547 Bool)) false)))))

(assert (=> d!27250 (= (choose!1448 lt!31224 g!9) res!52597)))

(declare-fun setIsEmpty!1485 () Bool)

(assert (=> setIsEmpty!1485 setRes!1485))

(declare-fun setNonEmpty!1485 () Bool)

(declare-fun tp!59357 () Bool)

(assert (=> setNonEmpty!1485 (= setRes!1485 (and tp!59357 tp_is_empty!853))))

(declare-fun setElem!1485 () B!547)

(declare-fun setRest!1485 () (InoxSet B!547))

(assert (=> setNonEmpty!1485 (= res!52597 ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1485 true) setRest!1485))))

(assert (= (and d!27250 condSetEmpty!1485) setIsEmpty!1485))

(assert (= (and d!27250 (not condSetEmpty!1485)) setNonEmpty!1485))

(assert (=> d!27178 d!27250))

(declare-fun d!27252 () Bool)

(declare-fun res!52598 () Bool)

(declare-fun e!60917 () Bool)

(assert (=> d!27252 (=> res!52598 e!60917)))

(assert (=> d!27252 (= res!52598 ((_ is Nil!1745) (toList!230 lt!31225)))))

(assert (=> d!27252 (= (forall!274 (toList!230 lt!31225) lambda!2430) e!60917)))

(declare-fun b!109431 () Bool)

(declare-fun e!60918 () Bool)

(assert (=> b!109431 (= e!60917 e!60918)))

(declare-fun res!52599 () Bool)

(assert (=> b!109431 (=> (not res!52599) (not e!60918))))

(assert (=> b!109431 (= res!52599 (dynLambda!635 lambda!2430 (h!7142 (toList!230 lt!31225))))))

(declare-fun b!109432 () Bool)

(assert (=> b!109432 (= e!60918 (forall!274 (t!21810 (toList!230 lt!31225)) lambda!2430))))

(assert (= (and d!27252 (not res!52598)) b!109431))

(assert (= (and b!109431 res!52599) b!109432))

(declare-fun b_lambda!1405 () Bool)

(assert (=> (not b_lambda!1405) (not b!109431)))

(declare-fun m!98808 () Bool)

(assert (=> b!109431 m!98808))

(declare-fun m!98810 () Bool)

(assert (=> b!109432 m!98810))

(assert (=> d!27188 d!27252))

(declare-fun d!27254 () Bool)

(declare-fun e!60919 () Bool)

(assert (=> d!27254 e!60919))

(declare-fun res!52600 () Bool)

(assert (=> d!27254 (=> (not res!52600) (not e!60919))))

(declare-fun lt!31258 () List!1751)

(assert (=> d!27254 (= res!52600 (noDuplicate!13 lt!31258))))

(assert (=> d!27254 (= lt!31258 (choose!1444 lt!31225))))

(assert (=> d!27254 (= (toList!230 lt!31225) lt!31258)))

(declare-fun b!109433 () Bool)

(assert (=> b!109433 (= e!60919 (= (content!173 lt!31258) lt!31225))))

(assert (= (and d!27254 res!52600) b!109433))

(declare-fun m!98812 () Bool)

(assert (=> d!27254 m!98812))

(declare-fun m!98814 () Bool)

(assert (=> d!27254 m!98814))

(declare-fun m!98816 () Bool)

(assert (=> b!109433 m!98816))

(assert (=> d!27188 d!27254))

(declare-fun d!27256 () Bool)

(declare-fun res!52603 () Bool)

(assert (=> d!27256 (= res!52603 (forall!274 (toList!230 lt!31225) lambda!2430))))

(assert (=> d!27256 true))

(assert (=> d!27256 (= (choose!1446 lt!31225 lambda!2430) res!52603)))

(declare-fun bs!10854 () Bool)

(assert (= bs!10854 d!27256))

(assert (=> bs!10854 m!98732))

(assert (=> bs!10854 m!98732))

(assert (=> bs!10854 m!98734))

(assert (=> d!27188 d!27256))

(declare-fun d!27258 () Bool)

(declare-fun c!26133 () Bool)

(assert (=> d!27258 (= c!26133 ((_ is Nil!1745) lt!31239))))

(declare-fun e!60920 () (InoxSet A!255))

(assert (=> d!27258 (= (content!173 lt!31239) e!60920)))

(declare-fun b!109434 () Bool)

(assert (=> b!109434 (= e!60920 ((as const (Array A!255 Bool)) false))))

(declare-fun b!109435 () Bool)

(assert (=> b!109435 (= e!60920 ((_ map or) (store ((as const (Array A!255 Bool)) false) (h!7142 lt!31239) true) (content!173 (t!21810 lt!31239))))))

(assert (= (and d!27258 c!26133) b!109434))

(assert (= (and d!27258 (not c!26133)) b!109435))

(declare-fun m!98818 () Bool)

(assert (=> b!109435 m!98818))

(declare-fun m!98820 () Bool)

(assert (=> b!109435 m!98820))

(assert (=> b!109381 d!27258))

(declare-fun d!27260 () Bool)

(declare-fun res!52604 () Bool)

(declare-fun e!60921 () Bool)

(assert (=> d!27260 (=> res!52604 e!60921)))

(assert (=> d!27260 (= res!52604 ((_ is Nil!1745) (t!21810 (t!21810 lt!31220))))))

(assert (=> d!27260 (= (forall!274 (t!21810 (t!21810 lt!31220)) lambda!2430) e!60921)))

(declare-fun b!109436 () Bool)

(declare-fun e!60922 () Bool)

(assert (=> b!109436 (= e!60921 e!60922)))

(declare-fun res!52605 () Bool)

(assert (=> b!109436 (=> (not res!52605) (not e!60922))))

(assert (=> b!109436 (= res!52605 (dynLambda!635 lambda!2430 (h!7142 (t!21810 (t!21810 lt!31220)))))))

(declare-fun b!109437 () Bool)

(assert (=> b!109437 (= e!60922 (forall!274 (t!21810 (t!21810 (t!21810 lt!31220))) lambda!2430))))

(assert (= (and d!27260 (not res!52604)) b!109436))

(assert (= (and b!109436 res!52605) b!109437))

(declare-fun b_lambda!1407 () Bool)

(assert (=> (not b_lambda!1407) (not b!109436)))

(declare-fun m!98822 () Bool)

(assert (=> b!109436 m!98822))

(declare-fun m!98824 () Bool)

(assert (=> b!109437 m!98824))

(assert (=> b!109397 d!27260))

(assert (=> d!27162 d!27180))

(assert (=> d!27162 d!27184))

(declare-fun d!27262 () Bool)

(assert (=> d!27262 (= (flatMap!33 ((_ map or) lt!31226 lt!31225) g!9) (choose!1448 ((_ map or) lt!31226 lt!31225) g!9))))

(declare-fun bs!10855 () Bool)

(assert (= bs!10855 d!27262))

(declare-fun m!98826 () Bool)

(assert (=> bs!10855 m!98826))

(assert (=> d!27162 d!27262))

(declare-fun d!27264 () Bool)

(assert (=> d!27264 (= ((_ map or) (flatMap!33 lt!31226 g!9) (flatMap!33 lt!31225 g!9)) (flatMap!33 ((_ map or) lt!31226 lt!31225) g!9))))

(assert (=> d!27264 true))

(declare-fun _$9!108 () Unit!1196)

(assert (=> d!27264 (= (choose!1447 lt!31226 lt!31225 g!9) _$9!108)))

(declare-fun bs!10856 () Bool)

(assert (= bs!10856 d!27264))

(assert (=> bs!10856 m!98626))

(assert (=> bs!10856 m!98622))

(assert (=> bs!10856 m!98692))

(assert (=> d!27162 d!27264))

(declare-fun d!27266 () Bool)

(declare-fun res!52606 () Bool)

(declare-fun e!60923 () Bool)

(assert (=> d!27266 (=> res!52606 e!60923)))

(assert (=> d!27266 (= res!52606 ((_ is Nil!1745) (toList!230 s!1451)))))

(assert (=> d!27266 (= (forall!274 (toList!230 s!1451) lambda!2430) e!60923)))

(declare-fun b!109438 () Bool)

(declare-fun e!60924 () Bool)

(assert (=> b!109438 (= e!60923 e!60924)))

(declare-fun res!52607 () Bool)

(assert (=> b!109438 (=> (not res!52607) (not e!60924))))

(assert (=> b!109438 (= res!52607 (dynLambda!635 lambda!2430 (h!7142 (toList!230 s!1451))))))

(declare-fun b!109439 () Bool)

(assert (=> b!109439 (= e!60924 (forall!274 (t!21810 (toList!230 s!1451)) lambda!2430))))

(assert (= (and d!27266 (not res!52606)) b!109438))

(assert (= (and b!109438 res!52607) b!109439))

(declare-fun b_lambda!1409 () Bool)

(assert (=> (not b_lambda!1409) (not b!109438)))

(declare-fun m!98828 () Bool)

(assert (=> b!109438 m!98828))

(declare-fun m!98830 () Bool)

(assert (=> b!109439 m!98830))

(assert (=> d!27148 d!27266))

(assert (=> d!27148 d!27142))

(declare-fun d!27268 () Bool)

(declare-fun res!52608 () Bool)

(assert (=> d!27268 (= res!52608 (forall!274 (toList!230 s!1451) lambda!2430))))

(assert (=> d!27268 true))

(assert (=> d!27268 (= (choose!1446 s!1451 lambda!2430) res!52608)))

(declare-fun bs!10857 () Bool)

(assert (= bs!10857 d!27268))

(assert (=> bs!10857 m!98608))

(assert (=> bs!10857 m!98608))

(assert (=> bs!10857 m!98674))

(assert (=> d!27148 d!27268))

(declare-fun d!27270 () Bool)

(assert (=> d!27270 true))

(declare-fun setRes!1486 () Bool)

(assert (=> d!27270 setRes!1486))

(declare-fun condSetEmpty!1486 () Bool)

(declare-fun res!52609 () (InoxSet B!547))

(assert (=> d!27270 (= condSetEmpty!1486 (= res!52609 ((as const (Array B!547 Bool)) false)))))

(assert (=> d!27270 (= (choose!1448 lt!31226 f!927) res!52609)))

(declare-fun setIsEmpty!1486 () Bool)

(assert (=> setIsEmpty!1486 setRes!1486))

(declare-fun setNonEmpty!1486 () Bool)

(declare-fun tp!59358 () Bool)

(assert (=> setNonEmpty!1486 (= setRes!1486 (and tp!59358 tp_is_empty!853))))

(declare-fun setElem!1486 () B!547)

(declare-fun setRest!1486 () (InoxSet B!547))

(assert (=> setNonEmpty!1486 (= res!52609 ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1486 true) setRest!1486))))

(assert (= (and d!27270 condSetEmpty!1486) setIsEmpty!1486))

(assert (= (and d!27270 (not condSetEmpty!1486)) setNonEmpty!1486))

(assert (=> d!27182 d!27270))

(assert (=> d!27152 d!27182))

(assert (=> d!27152 d!27176))

(declare-fun d!27272 () Bool)

(assert (=> d!27272 (= (flatMap!33 ((_ map or) lt!31226 lt!31225) f!927) (choose!1448 ((_ map or) lt!31226 lt!31225) f!927))))

(declare-fun bs!10858 () Bool)

(assert (= bs!10858 d!27272))

(declare-fun m!98832 () Bool)

(assert (=> bs!10858 m!98832))

(assert (=> d!27152 d!27272))

(declare-fun d!27274 () Bool)

(assert (=> d!27274 (= ((_ map or) (flatMap!33 lt!31226 f!927) (flatMap!33 lt!31225 f!927)) (flatMap!33 ((_ map or) lt!31226 lt!31225) f!927))))

(assert (=> d!27274 true))

(declare-fun _$9!109 () Unit!1196)

(assert (=> d!27274 (= (choose!1447 lt!31226 lt!31225 f!927) _$9!109)))

(declare-fun bs!10859 () Bool)

(assert (= bs!10859 d!27274))

(assert (=> bs!10859 m!98616))

(assert (=> bs!10859 m!98610))

(assert (=> bs!10859 m!98688))

(assert (=> d!27152 d!27274))

(declare-fun d!27276 () Bool)

(assert (=> d!27276 true))

(declare-fun setRes!1487 () Bool)

(assert (=> d!27276 setRes!1487))

(declare-fun condSetEmpty!1487 () Bool)

(declare-fun res!52610 () (InoxSet B!547))

(assert (=> d!27276 (= condSetEmpty!1487 (= res!52610 ((as const (Array B!547 Bool)) false)))))

(assert (=> d!27276 (= (choose!1448 lt!31224 f!927) res!52610)))

(declare-fun setIsEmpty!1487 () Bool)

(assert (=> setIsEmpty!1487 setRes!1487))

(declare-fun setNonEmpty!1487 () Bool)

(declare-fun tp!59359 () Bool)

(assert (=> setNonEmpty!1487 (= setRes!1487 (and tp!59359 tp_is_empty!853))))

(declare-fun setElem!1487 () B!547)

(declare-fun setRest!1487 () (InoxSet B!547))

(assert (=> setNonEmpty!1487 (= res!52610 ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1487 true) setRest!1487))))

(assert (= (and d!27276 condSetEmpty!1487) setIsEmpty!1487))

(assert (= (and d!27276 (not condSetEmpty!1487)) setNonEmpty!1487))

(assert (=> d!27164 d!27276))

(declare-fun d!27278 () Bool)

(declare-fun res!52615 () Bool)

(declare-fun e!60929 () Bool)

(assert (=> d!27278 (=> res!52615 e!60929)))

(assert (=> d!27278 (= res!52615 ((_ is Nil!1745) lt!31239))))

(assert (=> d!27278 (= (noDuplicate!13 lt!31239) e!60929)))

(declare-fun b!109444 () Bool)

(declare-fun e!60930 () Bool)

(assert (=> b!109444 (= e!60929 e!60930)))

(declare-fun res!52616 () Bool)

(assert (=> b!109444 (=> (not res!52616) (not e!60930))))

(declare-fun contains!286 (List!1751 A!255) Bool)

(assert (=> b!109444 (= res!52616 (not (contains!286 (t!21810 lt!31239) (h!7142 lt!31239))))))

(declare-fun b!109445 () Bool)

(assert (=> b!109445 (= e!60930 (noDuplicate!13 (t!21810 lt!31239)))))

(assert (= (and d!27278 (not res!52615)) b!109444))

(assert (= (and b!109444 res!52616) b!109445))

(declare-fun m!98834 () Bool)

(assert (=> b!109444 m!98834))

(declare-fun m!98836 () Bool)

(assert (=> b!109445 m!98836))

(assert (=> d!27142 d!27278))

(declare-fun d!27280 () Bool)

(declare-fun e!60936 () Bool)

(assert (=> d!27280 e!60936))

(declare-fun res!52621 () Bool)

(assert (=> d!27280 (=> (not res!52621) (not e!60936))))

(declare-fun res!52622 () List!1751)

(assert (=> d!27280 (= res!52621 (noDuplicate!13 res!52622))))

(declare-fun e!60935 () Bool)

(assert (=> d!27280 e!60935))

(assert (=> d!27280 (= (choose!1444 s!1451) res!52622)))

(declare-fun b!109450 () Bool)

(declare-fun tp!59362 () Bool)

(assert (=> b!109450 (= e!60935 (and tp_is_empty!849 tp!59362))))

(declare-fun b!109451 () Bool)

(assert (=> b!109451 (= e!60936 (= (content!173 res!52622) s!1451))))

(assert (= (and d!27280 ((_ is Cons!1745) res!52622)) b!109450))

(assert (= (and d!27280 res!52621) b!109451))

(declare-fun m!98838 () Bool)

(assert (=> d!27280 m!98838))

(declare-fun m!98840 () Bool)

(assert (=> b!109451 m!98840))

(assert (=> d!27142 d!27280))

(declare-fun d!27282 () Bool)

(assert (=> d!27282 true))

(declare-fun setRes!1488 () Bool)

(assert (=> d!27282 setRes!1488))

(declare-fun condSetEmpty!1488 () Bool)

(declare-fun res!52623 () (InoxSet B!547))

(assert (=> d!27282 (= condSetEmpty!1488 (= res!52623 ((as const (Array B!547 Bool)) false)))))

(assert (=> d!27282 (= (choose!1448 lt!31225 g!9) res!52623)))

(declare-fun setIsEmpty!1488 () Bool)

(assert (=> setIsEmpty!1488 setRes!1488))

(declare-fun setNonEmpty!1488 () Bool)

(declare-fun tp!59363 () Bool)

(assert (=> setNonEmpty!1488 (= setRes!1488 (and tp!59363 tp_is_empty!853))))

(declare-fun setElem!1488 () B!547)

(declare-fun setRest!1488 () (InoxSet B!547))

(assert (=> setNonEmpty!1488 (= res!52623 ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1488 true) setRest!1488))))

(assert (= (and d!27282 condSetEmpty!1488) setIsEmpty!1488))

(assert (= (and d!27282 (not condSetEmpty!1488)) setNonEmpty!1488))

(assert (=> d!27184 d!27282))

(declare-fun d!27284 () Bool)

(declare-fun c!26134 () Bool)

(assert (=> d!27284 (= c!26134 ((_ is Nil!1745) (t!21810 (t!21810 lt!31220))))))

(declare-fun e!60937 () (InoxSet A!255))

(assert (=> d!27284 (= (content!173 (t!21810 (t!21810 lt!31220))) e!60937)))

(declare-fun b!109452 () Bool)

(assert (=> b!109452 (= e!60937 ((as const (Array A!255 Bool)) false))))

(declare-fun b!109453 () Bool)

(assert (=> b!109453 (= e!60937 ((_ map or) (store ((as const (Array A!255 Bool)) false) (h!7142 (t!21810 (t!21810 lt!31220))) true) (content!173 (t!21810 (t!21810 (t!21810 lt!31220))))))))

(assert (= (and d!27284 c!26134) b!109452))

(assert (= (and d!27284 (not c!26134)) b!109453))

(declare-fun m!98842 () Bool)

(assert (=> b!109453 m!98842))

(declare-fun m!98844 () Bool)

(assert (=> b!109453 m!98844))

(assert (=> b!109403 d!27284))

(declare-fun d!27286 () Bool)

(assert (=> d!27286 true))

(declare-fun setRes!1489 () Bool)

(assert (=> d!27286 setRes!1489))

(declare-fun condSetEmpty!1489 () Bool)

(declare-fun res!52624 () (InoxSet B!547))

(assert (=> d!27286 (= condSetEmpty!1489 (= res!52624 ((as const (Array B!547 Bool)) false)))))

(assert (=> d!27286 (= (choose!1448 lt!31225 f!927) res!52624)))

(declare-fun setIsEmpty!1489 () Bool)

(assert (=> setIsEmpty!1489 setRes!1489))

(declare-fun setNonEmpty!1489 () Bool)

(declare-fun tp!59364 () Bool)

(assert (=> setNonEmpty!1489 (= setRes!1489 (and tp!59364 tp_is_empty!853))))

(declare-fun setElem!1489 () B!547)

(declare-fun setRest!1489 () (InoxSet B!547))

(assert (=> setNonEmpty!1489 (= res!52624 ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1489 true) setRest!1489))))

(assert (= (and d!27286 condSetEmpty!1489) setIsEmpty!1489))

(assert (= (and d!27286 (not condSetEmpty!1489)) setNonEmpty!1489))

(assert (=> d!27176 d!27286))

(declare-fun condSetEmpty!1490 () Bool)

(assert (=> tb!3335 (= condSetEmpty!1490 (= (dynLambda!633 f!927 (h!7142 (t!21810 lt!31220))) ((as const (Array B!547 Bool)) false)))))

(declare-fun setRes!1490 () Bool)

(assert (=> tb!3335 (= result!4872 setRes!1490)))

(declare-fun setIsEmpty!1490 () Bool)

(assert (=> setIsEmpty!1490 setRes!1490))

(declare-fun setNonEmpty!1490 () Bool)

(declare-fun tp!59365 () Bool)

(assert (=> setNonEmpty!1490 (= setRes!1490 (and tp!59365 tp_is_empty!853))))

(declare-fun setElem!1490 () B!547)

(declare-fun setRest!1490 () (InoxSet B!547))

(assert (=> setNonEmpty!1490 (= (dynLambda!633 f!927 (h!7142 (t!21810 lt!31220))) ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1490 true) setRest!1490))))

(assert (= (and tb!3335 condSetEmpty!1490) setIsEmpty!1490))

(assert (= (and tb!3335 (not condSetEmpty!1490)) setNonEmpty!1490))

(declare-fun condSetEmpty!1491 () Bool)

(assert (=> setNonEmpty!1468 (= condSetEmpty!1491 (= setRest!1468 ((as const (Array B!547 Bool)) false)))))

(declare-fun setRes!1491 () Bool)

(assert (=> setNonEmpty!1468 (= tp!59337 setRes!1491)))

(declare-fun setIsEmpty!1491 () Bool)

(assert (=> setIsEmpty!1491 setRes!1491))

(declare-fun setNonEmpty!1491 () Bool)

(declare-fun tp!59366 () Bool)

(assert (=> setNonEmpty!1491 (= setRes!1491 (and tp!59366 tp_is_empty!853))))

(declare-fun setElem!1491 () B!547)

(declare-fun setRest!1491 () (InoxSet B!547))

(assert (=> setNonEmpty!1491 (= setRest!1468 ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1491 true) setRest!1491))))

(assert (= (and setNonEmpty!1468 condSetEmpty!1491) setIsEmpty!1491))

(assert (= (and setNonEmpty!1468 (not condSetEmpty!1491)) setNonEmpty!1491))

(assert (= result!4874 result!4872))

(declare-fun condSetEmpty!1492 () Bool)

(assert (=> tb!3339 (= condSetEmpty!1492 (= (dynLambda!633 g!9 (h!7142 (t!21810 lt!31220))) ((as const (Array B!547 Bool)) false)))))

(declare-fun setRes!1492 () Bool)

(assert (=> tb!3339 (= result!4876 setRes!1492)))

(declare-fun setIsEmpty!1492 () Bool)

(assert (=> setIsEmpty!1492 setRes!1492))

(declare-fun setNonEmpty!1492 () Bool)

(declare-fun tp!59367 () Bool)

(assert (=> setNonEmpty!1492 (= setRes!1492 (and tp!59367 tp_is_empty!853))))

(declare-fun setElem!1492 () B!547)

(declare-fun setRest!1492 () (InoxSet B!547))

(assert (=> setNonEmpty!1492 (= (dynLambda!633 g!9 (h!7142 (t!21810 lt!31220))) ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1492 true) setRest!1492))))

(assert (= (and tb!3339 condSetEmpty!1492) setIsEmpty!1492))

(assert (= (and tb!3339 (not condSetEmpty!1492)) setNonEmpty!1492))

(declare-fun condSetEmpty!1493 () Bool)

(assert (=> setNonEmpty!1464 (= condSetEmpty!1493 (= setRest!1464 ((as const (Array A!255 Bool)) false)))))

(declare-fun setRes!1493 () Bool)

(assert (=> setNonEmpty!1464 (= tp!59333 setRes!1493)))

(declare-fun setIsEmpty!1493 () Bool)

(assert (=> setIsEmpty!1493 setRes!1493))

(declare-fun setNonEmpty!1493 () Bool)

(declare-fun tp!59368 () Bool)

(assert (=> setNonEmpty!1493 (= setRes!1493 (and tp!59368 tp_is_empty!849))))

(declare-fun setElem!1493 () A!255)

(declare-fun setRest!1493 () (InoxSet A!255))

(assert (=> setNonEmpty!1493 (= setRest!1464 ((_ map or) (store ((as const (Array A!255 Bool)) false) setElem!1493 true) setRest!1493))))

(assert (= (and setNonEmpty!1464 condSetEmpty!1493) setIsEmpty!1493))

(assert (= (and setNonEmpty!1464 (not condSetEmpty!1493)) setNonEmpty!1493))

(assert (= result!4878 result!4876))

(declare-fun condSetEmpty!1494 () Bool)

(assert (=> setNonEmpty!1467 (= condSetEmpty!1494 (= setRest!1467 ((as const (Array B!547 Bool)) false)))))

(declare-fun setRes!1494 () Bool)

(assert (=> setNonEmpty!1467 (= tp!59336 setRes!1494)))

(declare-fun setIsEmpty!1494 () Bool)

(assert (=> setIsEmpty!1494 setRes!1494))

(declare-fun setNonEmpty!1494 () Bool)

(declare-fun tp!59369 () Bool)

(assert (=> setNonEmpty!1494 (= setRes!1494 (and tp!59369 tp_is_empty!853))))

(declare-fun setElem!1494 () B!547)

(declare-fun setRest!1494 () (InoxSet B!547))

(assert (=> setNonEmpty!1494 (= setRest!1467 ((_ map or) (store ((as const (Array B!547 Bool)) false) setElem!1494 true) setRest!1494))))

(assert (= (and setNonEmpty!1467 condSetEmpty!1494) setIsEmpty!1494))

(assert (= (and setNonEmpty!1467 (not condSetEmpty!1494)) setNonEmpty!1494))

(declare-fun b_lambda!1411 () Bool)

(assert (= b_lambda!1407 (or start!11022 b_lambda!1411)))

(declare-fun bs!10860 () Bool)

(declare-fun d!27288 () Bool)

(assert (= bs!10860 (and d!27288 start!11022)))

(assert (=> bs!10860 (= (dynLambda!635 lambda!2430 (h!7142 (t!21810 (t!21810 lt!31220)))) (= (dynLambda!633 f!927 (h!7142 (t!21810 (t!21810 lt!31220)))) (dynLambda!633 g!9 (h!7142 (t!21810 (t!21810 lt!31220))))))))

(declare-fun b_lambda!1417 () Bool)

(assert (=> (not b_lambda!1417) (not bs!10860)))

(declare-fun t!21852 () Bool)

(declare-fun tb!3367 () Bool)

(assert (=> (and start!11022 (= f!927 f!927) t!21852) tb!3367))

(assert (=> bs!10860 t!21852))

(declare-fun result!4904 () Bool)

(declare-fun b_and!5119 () Bool)

(assert (= b_and!5091 (and (=> t!21852 result!4904) b_and!5119)))

(declare-fun t!21854 () Bool)

(declare-fun tb!3369 () Bool)

(assert (=> (and start!11022 (= g!9 f!927) t!21854) tb!3369))

(assert (=> bs!10860 t!21854))

(declare-fun result!4906 () Bool)

(declare-fun b_and!5121 () Bool)

(assert (= b_and!5093 (and (=> t!21854 result!4906) b_and!5121)))

(declare-fun b_lambda!1419 () Bool)

(assert (=> (not b_lambda!1419) (not bs!10860)))

(declare-fun t!21856 () Bool)

(declare-fun tb!3371 () Bool)

(assert (=> (and start!11022 (= f!927 g!9) t!21856) tb!3371))

(assert (=> bs!10860 t!21856))

(declare-fun result!4908 () Bool)

(declare-fun b_and!5123 () Bool)

(assert (= b_and!5119 (and (=> t!21856 result!4908) b_and!5123)))

(declare-fun t!21858 () Bool)

(declare-fun tb!3373 () Bool)

(assert (=> (and start!11022 (= g!9 g!9) t!21858) tb!3373))

(assert (=> bs!10860 t!21858))

(declare-fun result!4910 () Bool)

(declare-fun b_and!5125 () Bool)

(assert (= b_and!5121 (and (=> t!21858 result!4910) b_and!5125)))

(declare-fun m!98846 () Bool)

(assert (=> bs!10860 m!98846))

(declare-fun m!98848 () Bool)

(assert (=> bs!10860 m!98848))

(assert (=> b!109436 d!27288))

(declare-fun b_lambda!1413 () Bool)

(assert (= b_lambda!1405 (or start!11022 b_lambda!1413)))

(declare-fun bs!10861 () Bool)

(declare-fun d!27290 () Bool)

(assert (= bs!10861 (and d!27290 start!11022)))

(assert (=> bs!10861 (= (dynLambda!635 lambda!2430 (h!7142 (toList!230 lt!31225))) (= (dynLambda!633 f!927 (h!7142 (toList!230 lt!31225))) (dynLambda!633 g!9 (h!7142 (toList!230 lt!31225)))))))

(declare-fun b_lambda!1421 () Bool)

(assert (=> (not b_lambda!1421) (not bs!10861)))

(declare-fun t!21860 () Bool)

(declare-fun tb!3375 () Bool)

(assert (=> (and start!11022 (= f!927 f!927) t!21860) tb!3375))

(assert (=> bs!10861 t!21860))

(declare-fun result!4912 () Bool)

(declare-fun b_and!5127 () Bool)

(assert (= b_and!5123 (and (=> t!21860 result!4912) b_and!5127)))

(declare-fun t!21862 () Bool)

(declare-fun tb!3377 () Bool)

(assert (=> (and start!11022 (= g!9 f!927) t!21862) tb!3377))

(assert (=> bs!10861 t!21862))

(declare-fun result!4914 () Bool)

(declare-fun b_and!5129 () Bool)

(assert (= b_and!5125 (and (=> t!21862 result!4914) b_and!5129)))

(declare-fun b_lambda!1423 () Bool)

(assert (=> (not b_lambda!1423) (not bs!10861)))

(declare-fun t!21864 () Bool)

(declare-fun tb!3379 () Bool)

(assert (=> (and start!11022 (= f!927 g!9) t!21864) tb!3379))

(assert (=> bs!10861 t!21864))

(declare-fun result!4916 () Bool)

(declare-fun b_and!5131 () Bool)

(assert (= b_and!5127 (and (=> t!21864 result!4916) b_and!5131)))

(declare-fun t!21866 () Bool)

(declare-fun tb!3381 () Bool)

(assert (=> (and start!11022 (= g!9 g!9) t!21866) tb!3381))

(assert (=> bs!10861 t!21866))

(declare-fun result!4918 () Bool)

(declare-fun b_and!5133 () Bool)

(assert (= b_and!5129 (and (=> t!21866 result!4918) b_and!5133)))

(declare-fun m!98850 () Bool)

(assert (=> bs!10861 m!98850))

(declare-fun m!98852 () Bool)

(assert (=> bs!10861 m!98852))

(assert (=> b!109431 d!27290))

(declare-fun b_lambda!1415 () Bool)

(assert (= b_lambda!1409 (or start!11022 b_lambda!1415)))

(declare-fun bs!10862 () Bool)

(declare-fun d!27292 () Bool)

(assert (= bs!10862 (and d!27292 start!11022)))

(assert (=> bs!10862 (= (dynLambda!635 lambda!2430 (h!7142 (toList!230 s!1451))) (= (dynLambda!633 f!927 (h!7142 (toList!230 s!1451))) (dynLambda!633 g!9 (h!7142 (toList!230 s!1451)))))))

(declare-fun b_lambda!1425 () Bool)

(assert (=> (not b_lambda!1425) (not bs!10862)))

(declare-fun t!21868 () Bool)

(declare-fun tb!3383 () Bool)

(assert (=> (and start!11022 (= f!927 f!927) t!21868) tb!3383))

(assert (=> bs!10862 t!21868))

(declare-fun result!4920 () Bool)

(declare-fun b_and!5135 () Bool)

(assert (= b_and!5131 (and (=> t!21868 result!4920) b_and!5135)))

(declare-fun t!21870 () Bool)

(declare-fun tb!3385 () Bool)

(assert (=> (and start!11022 (= g!9 f!927) t!21870) tb!3385))

(assert (=> bs!10862 t!21870))

(declare-fun result!4922 () Bool)

(declare-fun b_and!5137 () Bool)

(assert (= b_and!5133 (and (=> t!21870 result!4922) b_and!5137)))

(declare-fun b_lambda!1427 () Bool)

(assert (=> (not b_lambda!1427) (not bs!10862)))

(declare-fun tb!3387 () Bool)

(declare-fun t!21872 () Bool)

(assert (=> (and start!11022 (= f!927 g!9) t!21872) tb!3387))

(assert (=> bs!10862 t!21872))

(declare-fun result!4924 () Bool)

(declare-fun b_and!5139 () Bool)

(assert (= b_and!5135 (and (=> t!21872 result!4924) b_and!5139)))

(declare-fun t!21874 () Bool)

(declare-fun tb!3389 () Bool)

(assert (=> (and start!11022 (= g!9 g!9) t!21874) tb!3389))

(assert (=> bs!10862 t!21874))

(declare-fun result!4926 () Bool)

(declare-fun b_and!5141 () Bool)

(assert (= b_and!5137 (and (=> t!21874 result!4926) b_and!5141)))

(declare-fun m!98854 () Bool)

(assert (=> bs!10862 m!98854))

(declare-fun m!98856 () Bool)

(assert (=> bs!10862 m!98856))

(assert (=> b!109438 d!27292))

(check-sat (not setNonEmpty!1488) (not setNonEmpty!1484) (not b_lambda!1425) (not b_lambda!1415) (not b_lambda!1419) b_and!5141 (not setNonEmpty!1486) b_and!5139 (not tb!3379) (not d!27264) (not d!27248) (not b_next!3307) (not b!109445) (not b!109439) (not b!109437) (not b!109453) (not b_lambda!1413) (not tb!3385) (not setNonEmpty!1492) (not d!27272) (not tb!3373) (not tb!3369) (not d!27274) (not d!27262) (not tb!3387) (not setNonEmpty!1489) (not b_lambda!1367) (not tb!3367) (not d!27256) tp_is_empty!849 (not b!109435) (not b_next!3305) (not b!109432) (not tb!3381) (not tb!3389) (not b!109433) tp_is_empty!853 (not tb!3375) (not b!109444) (not b_lambda!1353) (not b!109450) (not tb!3383) (not b_lambda!1421) (not setNonEmpty!1491) (not d!27268) (not setNonEmpty!1493) (not d!27280) (not setNonEmpty!1487) (not d!27246) (not tb!3371) (not b_lambda!1427) (not b_lambda!1411) (not b_lambda!1423) (not b_lambda!1417) (not setNonEmpty!1485) (not setNonEmpty!1490) (not b_lambda!1355) (not b_lambda!1377) (not b_lambda!1379) (not d!27254) (not setNonEmpty!1494) (not b!109451) (not tb!3377))
(check-sat b_and!5139 b_and!5141 (not b_next!3307) (not b_next!3305))
