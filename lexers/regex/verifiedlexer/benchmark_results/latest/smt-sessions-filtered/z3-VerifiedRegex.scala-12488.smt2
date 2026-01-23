; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694948 () Bool)

(assert start!694948)

(declare-fun b_free!133833 () Bool)

(declare-fun b_next!134623 () Bool)

(assert (=> start!694948 (= b_free!133833 (not b_next!134623))))

(declare-fun tp!1966295 () Bool)

(declare-fun b_and!351007 () Bool)

(assert (=> start!694948 (= tp!1966295 b_and!351007)))

(declare-fun res!2910617 () Bool)

(declare-fun e!4287030 () Bool)

(assert (=> start!694948 (=> (not res!2910617) (not e!4287030))))

(declare-datatypes ((B!3397 0))(
  ( (B!3398 (val!28170 Int)) )
))
(declare-datatypes ((List!69263 0))(
  ( (Nil!69139) (Cons!69139 (h!75587 B!3397) (t!383244 List!69263)) )
))
(declare-fun l1!1495 () List!69263)

(declare-fun p!2111 () Int)

(declare-fun forall!16937 (List!69263 Int) Bool)

(assert (=> start!694948 (= res!2910617 (forall!16937 l1!1495 p!2111))))

(assert (=> start!694948 e!4287030))

(declare-fun e!4287032 () Bool)

(assert (=> start!694948 e!4287032))

(assert (=> start!694948 tp!1966295))

(declare-fun e!4287031 () Bool)

(assert (=> start!694948 e!4287031))

(declare-fun b!7133351 () Bool)

(declare-fun tp_is_empty!45819 () Bool)

(declare-fun tp!1966296 () Bool)

(assert (=> b!7133351 (= e!4287031 (and tp_is_empty!45819 tp!1966296))))

(declare-fun b!7133352 () Bool)

(declare-fun l2!1464 () List!69263)

(declare-fun contains!20549 (List!69263 B!3397) Bool)

(assert (=> b!7133352 (= e!4287030 (not (contains!20549 l1!1495 (h!75587 l2!1464))))))

(declare-datatypes ((Unit!163055 0))(
  ( (Unit!163056) )
))
(declare-fun lt!2565194 () Unit!163055)

(declare-fun lemmaContentSubsetPreservesForall!368 (List!69263 List!69263 Int) Unit!163055)

(assert (=> b!7133352 (= lt!2565194 (lemmaContentSubsetPreservesForall!368 l1!1495 (t!383244 l2!1464) p!2111))))

(declare-fun b!7133353 () Bool)

(declare-fun tp!1966297 () Bool)

(assert (=> b!7133353 (= e!4287032 (and tp_is_empty!45819 tp!1966297))))

(declare-fun b!7133354 () Bool)

(declare-fun res!2910615 () Bool)

(assert (=> b!7133354 (=> (not res!2910615) (not e!4287030))))

(get-info :version)

(assert (=> b!7133354 (= res!2910615 ((_ is Cons!69139) l2!1464))))

(declare-fun b!7133355 () Bool)

(declare-fun res!2910616 () Bool)

(assert (=> b!7133355 (=> (not res!2910616) (not e!4287030))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14139 (List!69263) (InoxSet B!3397))

(assert (=> b!7133355 (= res!2910616 (= ((_ map implies) (content!14139 l2!1464) (content!14139 l1!1495)) ((as const (InoxSet B!3397)) true)))))

(assert (= (and start!694948 res!2910617) b!7133355))

(assert (= (and b!7133355 res!2910616) b!7133354))

(assert (= (and b!7133354 res!2910615) b!7133352))

(assert (= (and start!694948 ((_ is Cons!69139) l1!1495)) b!7133353))

(assert (= (and start!694948 ((_ is Cons!69139) l2!1464)) b!7133351))

(declare-fun m!7850452 () Bool)

(assert (=> start!694948 m!7850452))

(declare-fun m!7850454 () Bool)

(assert (=> b!7133352 m!7850454))

(declare-fun m!7850456 () Bool)

(assert (=> b!7133352 m!7850456))

(declare-fun m!7850458 () Bool)

(assert (=> b!7133355 m!7850458))

(declare-fun m!7850460 () Bool)

(assert (=> b!7133355 m!7850460))

(check-sat b_and!351007 (not b_next!134623) (not b!7133352) tp_is_empty!45819 (not b!7133355) (not b!7133353) (not start!694948) (not b!7133351))
(check-sat b_and!351007 (not b_next!134623))
(get-model)

(declare-fun d!2225927 () Bool)

(declare-fun c!1330403 () Bool)

(assert (=> d!2225927 (= c!1330403 ((_ is Nil!69139) l2!1464))))

(declare-fun e!4287041 () (InoxSet B!3397))

(assert (=> d!2225927 (= (content!14139 l2!1464) e!4287041)))

(declare-fun b!7133366 () Bool)

(assert (=> b!7133366 (= e!4287041 ((as const (Array B!3397 Bool)) false))))

(declare-fun b!7133367 () Bool)

(assert (=> b!7133367 (= e!4287041 ((_ map or) (store ((as const (Array B!3397 Bool)) false) (h!75587 l2!1464) true) (content!14139 (t!383244 l2!1464))))))

(assert (= (and d!2225927 c!1330403) b!7133366))

(assert (= (and d!2225927 (not c!1330403)) b!7133367))

(declare-fun m!7850466 () Bool)

(assert (=> b!7133367 m!7850466))

(declare-fun m!7850468 () Bool)

(assert (=> b!7133367 m!7850468))

(assert (=> b!7133355 d!2225927))

(declare-fun d!2225931 () Bool)

(declare-fun c!1330404 () Bool)

(assert (=> d!2225931 (= c!1330404 ((_ is Nil!69139) l1!1495))))

(declare-fun e!4287042 () (InoxSet B!3397))

(assert (=> d!2225931 (= (content!14139 l1!1495) e!4287042)))

(declare-fun b!7133368 () Bool)

(assert (=> b!7133368 (= e!4287042 ((as const (Array B!3397 Bool)) false))))

(declare-fun b!7133369 () Bool)

(assert (=> b!7133369 (= e!4287042 ((_ map or) (store ((as const (Array B!3397 Bool)) false) (h!75587 l1!1495) true) (content!14139 (t!383244 l1!1495))))))

(assert (= (and d!2225931 c!1330404) b!7133368))

(assert (= (and d!2225931 (not c!1330404)) b!7133369))

(declare-fun m!7850470 () Bool)

(assert (=> b!7133369 m!7850470))

(declare-fun m!7850472 () Bool)

(assert (=> b!7133369 m!7850472))

(assert (=> b!7133355 d!2225931))

(declare-fun d!2225933 () Bool)

(declare-fun res!2910628 () Bool)

(declare-fun e!4287049 () Bool)

(assert (=> d!2225933 (=> res!2910628 e!4287049)))

(assert (=> d!2225933 (= res!2910628 ((_ is Nil!69139) l1!1495))))

(assert (=> d!2225933 (= (forall!16937 l1!1495 p!2111) e!4287049)))

(declare-fun b!7133378 () Bool)

(declare-fun e!4287050 () Bool)

(assert (=> b!7133378 (= e!4287049 e!4287050)))

(declare-fun res!2910629 () Bool)

(assert (=> b!7133378 (=> (not res!2910629) (not e!4287050))))

(declare-fun dynLambda!28119 (Int B!3397) Bool)

(assert (=> b!7133378 (= res!2910629 (dynLambda!28119 p!2111 (h!75587 l1!1495)))))

(declare-fun b!7133379 () Bool)

(assert (=> b!7133379 (= e!4287050 (forall!16937 (t!383244 l1!1495) p!2111))))

(assert (= (and d!2225933 (not res!2910628)) b!7133378))

(assert (= (and b!7133378 res!2910629) b!7133379))

(declare-fun b_lambda!272101 () Bool)

(assert (=> (not b_lambda!272101) (not b!7133378)))

(declare-fun t!383246 () Bool)

(declare-fun tb!262063 () Bool)

(assert (=> (and start!694948 (= p!2111 p!2111) t!383246) tb!262063))

(declare-fun result!349638 () Bool)

(assert (=> tb!262063 (= result!349638 true)))

(assert (=> b!7133378 t!383246))

(declare-fun b_and!351009 () Bool)

(assert (= b_and!351007 (and (=> t!383246 result!349638) b_and!351009)))

(declare-fun m!7850480 () Bool)

(assert (=> b!7133378 m!7850480))

(declare-fun m!7850484 () Bool)

(assert (=> b!7133379 m!7850484))

(assert (=> start!694948 d!2225933))

(declare-fun d!2225939 () Bool)

(declare-fun lt!2565203 () Bool)

(assert (=> d!2225939 (= lt!2565203 (select (content!14139 l1!1495) (h!75587 l2!1464)))))

(declare-fun e!4287063 () Bool)

(assert (=> d!2225939 (= lt!2565203 e!4287063)))

(declare-fun res!2910641 () Bool)

(assert (=> d!2225939 (=> (not res!2910641) (not e!4287063))))

(assert (=> d!2225939 (= res!2910641 ((_ is Cons!69139) l1!1495))))

(assert (=> d!2225939 (= (contains!20549 l1!1495 (h!75587 l2!1464)) lt!2565203)))

(declare-fun b!7133396 () Bool)

(declare-fun e!4287064 () Bool)

(assert (=> b!7133396 (= e!4287063 e!4287064)))

(declare-fun res!2910640 () Bool)

(assert (=> b!7133396 (=> res!2910640 e!4287064)))

(assert (=> b!7133396 (= res!2910640 (= (h!75587 l1!1495) (h!75587 l2!1464)))))

(declare-fun b!7133397 () Bool)

(assert (=> b!7133397 (= e!4287064 (contains!20549 (t!383244 l1!1495) (h!75587 l2!1464)))))

(assert (= (and d!2225939 res!2910641) b!7133396))

(assert (= (and b!7133396 (not res!2910640)) b!7133397))

(assert (=> d!2225939 m!7850460))

(declare-fun m!7850494 () Bool)

(assert (=> d!2225939 m!7850494))

(declare-fun m!7850496 () Bool)

(assert (=> b!7133397 m!7850496))

(assert (=> b!7133352 d!2225939))

(declare-fun d!2225943 () Bool)

(assert (=> d!2225943 (forall!16937 (t!383244 l2!1464) p!2111)))

(declare-fun lt!2565206 () Unit!163055)

(declare-fun choose!55129 (List!69263 List!69263 Int) Unit!163055)

(assert (=> d!2225943 (= lt!2565206 (choose!55129 l1!1495 (t!383244 l2!1464) p!2111))))

(assert (=> d!2225943 (forall!16937 l1!1495 p!2111)))

(assert (=> d!2225943 (= (lemmaContentSubsetPreservesForall!368 l1!1495 (t!383244 l2!1464) p!2111) lt!2565206)))

(declare-fun bs!1887046 () Bool)

(assert (= bs!1887046 d!2225943))

(declare-fun m!7850498 () Bool)

(assert (=> bs!1887046 m!7850498))

(declare-fun m!7850500 () Bool)

(assert (=> bs!1887046 m!7850500))

(assert (=> bs!1887046 m!7850452))

(assert (=> b!7133352 d!2225943))

(declare-fun b!7133406 () Bool)

(declare-fun e!4287071 () Bool)

(declare-fun tp!1966304 () Bool)

(assert (=> b!7133406 (= e!4287071 (and tp_is_empty!45819 tp!1966304))))

(assert (=> b!7133351 (= tp!1966296 e!4287071)))

(assert (= (and b!7133351 ((_ is Cons!69139) (t!383244 l2!1464))) b!7133406))

(declare-fun b!7133407 () Bool)

(declare-fun e!4287072 () Bool)

(declare-fun tp!1966305 () Bool)

(assert (=> b!7133407 (= e!4287072 (and tp_is_empty!45819 tp!1966305))))

(assert (=> b!7133353 (= tp!1966297 e!4287072)))

(assert (= (and b!7133353 ((_ is Cons!69139) (t!383244 l1!1495))) b!7133407))

(declare-fun b_lambda!272107 () Bool)

(assert (= b_lambda!272101 (or (and start!694948 b_free!133833) b_lambda!272107)))

(check-sat (not b!7133369) (not b_next!134623) (not b!7133406) (not b!7133367) tp_is_empty!45819 (not d!2225939) (not b!7133397) b_and!351009 (not b_lambda!272107) (not b!7133379) (not d!2225943) (not b!7133407))
(check-sat b_and!351009 (not b_next!134623))
