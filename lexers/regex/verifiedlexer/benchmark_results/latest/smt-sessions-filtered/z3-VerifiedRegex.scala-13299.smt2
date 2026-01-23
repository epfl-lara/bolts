; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723156 () Bool)

(assert start!723156)

(declare-fun b_free!134337 () Bool)

(declare-fun b_next!135127 () Bool)

(assert (=> start!723156 (= b_free!134337 (not b_next!135127))))

(declare-fun tp!2157305 () Bool)

(declare-fun b_and!351953 () Bool)

(assert (=> start!723156 (= tp!2157305 b_and!351953)))

(declare-fun b!7447998 () Bool)

(declare-fun e!4446355 () Bool)

(declare-fun e!4446356 () Bool)

(assert (=> b!7447998 (= e!4446355 e!4446356)))

(declare-fun res!2987528 () Bool)

(assert (=> b!7447998 (=> (not res!2987528) (not e!4446356))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!3881 0))(
  ( (B!3882 (val!29985 Int)) )
))
(declare-fun lt!2619587 () (InoxSet B!3881))

(assert (=> b!7447998 (= res!2987528 (not (= lt!2619587 ((as const (Array B!3881 Bool)) false))))))

(declare-datatypes ((A!1127 0))(
  ( (A!1128 (val!29986 Int)) )
))
(declare-fun s!1397 () (InoxSet A!1127))

(declare-fun f!463 () Int)

(declare-fun flatMap!3249 ((InoxSet A!1127) Int) (InoxSet B!3881))

(assert (=> b!7447998 (= lt!2619587 (flatMap!3249 s!1397 f!463))))

(declare-fun setIsEmpty!56734 () Bool)

(declare-fun setRes!56734 () Bool)

(assert (=> setIsEmpty!56734 setRes!56734))

(declare-fun b!7447999 () Bool)

(declare-datatypes ((List!72175 0))(
  ( (Nil!72051) (Cons!72051 (h!78499 B!3881) (t!386740 List!72175)) )
))
(declare-fun toList!11798 ((InoxSet B!3881)) List!72175)

(assert (=> b!7447999 (= e!4446356 (= (toList!11798 lt!2619587) Nil!72051))))

(declare-fun setNonEmpty!56734 () Bool)

(declare-fun tp!2157306 () Bool)

(declare-fun tp_is_empty!49205 () Bool)

(assert (=> setNonEmpty!56734 (= setRes!56734 (and tp!2157306 tp_is_empty!49205))))

(declare-fun setElem!56734 () A!1127)

(declare-fun setRest!56734 () (InoxSet A!1127))

(assert (=> setNonEmpty!56734 (= s!1397 ((_ map or) (store ((as const (Array A!1127 Bool)) false) setElem!56734 true) setRest!56734))))

(declare-fun res!2987527 () Bool)

(assert (=> start!723156 (=> (not res!2987527) (not e!4446355))))

(assert (=> start!723156 (= res!2987527 (= s!1397 ((as const (Array A!1127 Bool)) false)))))

(assert (=> start!723156 e!4446355))

(declare-fun condSetEmpty!56734 () Bool)

(assert (=> start!723156 (= condSetEmpty!56734 (= s!1397 ((as const (Array A!1127 Bool)) false)))))

(assert (=> start!723156 setRes!56734))

(assert (=> start!723156 tp!2157305))

(assert (= (and start!723156 res!2987527) b!7447998))

(assert (= (and b!7447998 res!2987528) b!7447999))

(assert (= (and start!723156 condSetEmpty!56734) setIsEmpty!56734))

(assert (= (and start!723156 (not condSetEmpty!56734)) setNonEmpty!56734))

(declare-fun m!8055696 () Bool)

(assert (=> b!7447998 m!8055696))

(declare-fun m!8055698 () Bool)

(assert (=> b!7447999 m!8055698))

(check-sat tp_is_empty!49205 (not setNonEmpty!56734) (not b!7447998) b_and!351953 (not b_next!135127) (not b!7447999))
(check-sat b_and!351953 (not b_next!135127))
(get-model)

(declare-fun d!2296716 () Bool)

(declare-fun choose!57555 ((InoxSet A!1127) Int) (InoxSet B!3881))

(assert (=> d!2296716 (= (flatMap!3249 s!1397 f!463) (choose!57555 s!1397 f!463))))

(declare-fun bs!1926807 () Bool)

(assert (= bs!1926807 d!2296716))

(declare-fun m!8055702 () Bool)

(assert (=> bs!1926807 m!8055702))

(assert (=> b!7447998 d!2296716))

(declare-fun d!2296720 () Bool)

(declare-fun e!4446361 () Bool)

(assert (=> d!2296720 e!4446361))

(declare-fun res!2987533 () Bool)

(assert (=> d!2296720 (=> (not res!2987533) (not e!4446361))))

(declare-fun lt!2619592 () List!72175)

(declare-fun noDuplicate!3130 (List!72175) Bool)

(assert (=> d!2296720 (= res!2987533 (noDuplicate!3130 lt!2619592))))

(declare-fun choose!57556 ((InoxSet B!3881)) List!72175)

(assert (=> d!2296720 (= lt!2619592 (choose!57556 lt!2619587))))

(assert (=> d!2296720 (= (toList!11798 lt!2619587) lt!2619592)))

(declare-fun b!7448004 () Bool)

(declare-fun content!15242 (List!72175) (InoxSet B!3881))

(assert (=> b!7448004 (= e!4446361 (= (content!15242 lt!2619592) lt!2619587))))

(assert (= (and d!2296720 res!2987533) b!7448004))

(declare-fun m!8055704 () Bool)

(assert (=> d!2296720 m!8055704))

(declare-fun m!8055706 () Bool)

(assert (=> d!2296720 m!8055706))

(declare-fun m!8055708 () Bool)

(assert (=> b!7448004 m!8055708))

(assert (=> b!7447999 d!2296720))

(declare-fun condSetEmpty!56737 () Bool)

(assert (=> setNonEmpty!56734 (= condSetEmpty!56737 (= setRest!56734 ((as const (Array A!1127 Bool)) false)))))

(declare-fun setRes!56737 () Bool)

(assert (=> setNonEmpty!56734 (= tp!2157306 setRes!56737)))

(declare-fun setIsEmpty!56737 () Bool)

(assert (=> setIsEmpty!56737 setRes!56737))

(declare-fun setNonEmpty!56737 () Bool)

(declare-fun tp!2157309 () Bool)

(assert (=> setNonEmpty!56737 (= setRes!56737 (and tp!2157309 tp_is_empty!49205))))

(declare-fun setElem!56737 () A!1127)

(declare-fun setRest!56737 () (InoxSet A!1127))

(assert (=> setNonEmpty!56737 (= setRest!56734 ((_ map or) (store ((as const (Array A!1127 Bool)) false) setElem!56737 true) setRest!56737))))

(assert (= (and setNonEmpty!56734 condSetEmpty!56737) setIsEmpty!56737))

(assert (= (and setNonEmpty!56734 (not condSetEmpty!56737)) setNonEmpty!56737))

(check-sat tp_is_empty!49205 (not d!2296720) b_and!351953 (not b_next!135127) (not d!2296716) (not setNonEmpty!56737) (not b!7448004))
(check-sat b_and!351953 (not b_next!135127))
(get-model)

(declare-fun d!2296722 () Bool)

(declare-fun c!1377539 () Bool)

(get-info :version)

(assert (=> d!2296722 (= c!1377539 ((_ is Nil!72051) lt!2619592))))

(declare-fun e!4446365 () (InoxSet B!3881))

(assert (=> d!2296722 (= (content!15242 lt!2619592) e!4446365)))

(declare-fun b!7448014 () Bool)

(assert (=> b!7448014 (= e!4446365 ((as const (Array B!3881 Bool)) false))))

(declare-fun b!7448015 () Bool)

(assert (=> b!7448015 (= e!4446365 ((_ map or) (store ((as const (Array B!3881 Bool)) false) (h!78499 lt!2619592) true) (content!15242 (t!386740 lt!2619592))))))

(assert (= (and d!2296722 c!1377539) b!7448014))

(assert (= (and d!2296722 (not c!1377539)) b!7448015))

(declare-fun m!8055716 () Bool)

(assert (=> b!7448015 m!8055716))

(declare-fun m!8055718 () Bool)

(assert (=> b!7448015 m!8055718))

(assert (=> b!7448004 d!2296722))

(declare-fun d!2296724 () Bool)

(declare-fun res!2987539 () Bool)

(declare-fun e!4446370 () Bool)

(assert (=> d!2296724 (=> res!2987539 e!4446370)))

(assert (=> d!2296724 (= res!2987539 ((_ is Nil!72051) lt!2619592))))

(assert (=> d!2296724 (= (noDuplicate!3130 lt!2619592) e!4446370)))

(declare-fun b!7448020 () Bool)

(declare-fun e!4446371 () Bool)

(assert (=> b!7448020 (= e!4446370 e!4446371)))

(declare-fun res!2987540 () Bool)

(assert (=> b!7448020 (=> (not res!2987540) (not e!4446371))))

(declare-fun contains!20869 (List!72175 B!3881) Bool)

(assert (=> b!7448020 (= res!2987540 (not (contains!20869 (t!386740 lt!2619592) (h!78499 lt!2619592))))))

(declare-fun b!7448021 () Bool)

(assert (=> b!7448021 (= e!4446371 (noDuplicate!3130 (t!386740 lt!2619592)))))

(assert (= (and d!2296724 (not res!2987539)) b!7448020))

(assert (= (and b!7448020 res!2987540) b!7448021))

(declare-fun m!8055720 () Bool)

(assert (=> b!7448020 m!8055720))

(declare-fun m!8055722 () Bool)

(assert (=> b!7448021 m!8055722))

(assert (=> d!2296720 d!2296724))

(declare-fun d!2296726 () Bool)

(declare-fun e!4446376 () Bool)

(assert (=> d!2296726 e!4446376))

(declare-fun res!2987545 () Bool)

(assert (=> d!2296726 (=> (not res!2987545) (not e!4446376))))

(declare-fun res!2987546 () List!72175)

(assert (=> d!2296726 (= res!2987545 (noDuplicate!3130 res!2987546))))

(declare-fun e!4446377 () Bool)

(assert (=> d!2296726 e!4446377))

(assert (=> d!2296726 (= (choose!57556 lt!2619587) res!2987546)))

(declare-fun b!7448026 () Bool)

(declare-fun tp_is_empty!49207 () Bool)

(declare-fun tp!2157315 () Bool)

(assert (=> b!7448026 (= e!4446377 (and tp_is_empty!49207 tp!2157315))))

(declare-fun b!7448027 () Bool)

(assert (=> b!7448027 (= e!4446376 (= (content!15242 res!2987546) lt!2619587))))

(assert (= (and d!2296726 ((_ is Cons!72051) res!2987546)) b!7448026))

(assert (= (and d!2296726 res!2987545) b!7448027))

(declare-fun m!8055724 () Bool)

(assert (=> d!2296726 m!8055724))

(declare-fun m!8055726 () Bool)

(assert (=> b!7448027 m!8055726))

(assert (=> d!2296720 d!2296726))

(declare-fun d!2296728 () Bool)

(assert (=> d!2296728 true))

(declare-fun setRes!56743 () Bool)

(assert (=> d!2296728 setRes!56743))

(declare-fun condSetEmpty!56743 () Bool)

(declare-fun res!2987549 () (InoxSet B!3881))

(assert (=> d!2296728 (= condSetEmpty!56743 (= res!2987549 ((as const (Array B!3881 Bool)) false)))))

(assert (=> d!2296728 (= (choose!57555 s!1397 f!463) res!2987549)))

(declare-fun setIsEmpty!56743 () Bool)

(assert (=> setIsEmpty!56743 setRes!56743))

(declare-fun setNonEmpty!56743 () Bool)

(declare-fun tp!2157318 () Bool)

(assert (=> setNonEmpty!56743 (= setRes!56743 (and tp!2157318 tp_is_empty!49207))))

(declare-fun setElem!56743 () B!3881)

(declare-fun setRest!56743 () (InoxSet B!3881))

(assert (=> setNonEmpty!56743 (= res!2987549 ((_ map or) (store ((as const (Array B!3881 Bool)) false) setElem!56743 true) setRest!56743))))

(assert (= (and d!2296728 condSetEmpty!56743) setIsEmpty!56743))

(assert (= (and d!2296728 (not condSetEmpty!56743)) setNonEmpty!56743))

(assert (=> d!2296716 d!2296728))

(declare-fun condSetEmpty!56744 () Bool)

(assert (=> setNonEmpty!56737 (= condSetEmpty!56744 (= setRest!56737 ((as const (Array A!1127 Bool)) false)))))

(declare-fun setRes!56744 () Bool)

(assert (=> setNonEmpty!56737 (= tp!2157309 setRes!56744)))

(declare-fun setIsEmpty!56744 () Bool)

(assert (=> setIsEmpty!56744 setRes!56744))

(declare-fun setNonEmpty!56744 () Bool)

(declare-fun tp!2157319 () Bool)

(assert (=> setNonEmpty!56744 (= setRes!56744 (and tp!2157319 tp_is_empty!49205))))

(declare-fun setElem!56744 () A!1127)

(declare-fun setRest!56744 () (InoxSet A!1127))

(assert (=> setNonEmpty!56744 (= setRest!56737 ((_ map or) (store ((as const (Array A!1127 Bool)) false) setElem!56744 true) setRest!56744))))

(assert (= (and setNonEmpty!56737 condSetEmpty!56744) setIsEmpty!56744))

(assert (= (and setNonEmpty!56737 (not condSetEmpty!56744)) setNonEmpty!56744))

(check-sat (not setNonEmpty!56744) (not b!7448021) b_and!351953 (not b_next!135127) (not d!2296726) (not b!7448027) (not b!7448026) tp_is_empty!49205 (not b!7448020) (not setNonEmpty!56743) (not b!7448015) tp_is_empty!49207)
(check-sat b_and!351953 (not b_next!135127))
