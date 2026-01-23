; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107936 () Bool)

(assert start!107936)

(declare-fun res!544489 () Bool)

(declare-fun e!776609 () Bool)

(assert (=> start!107936 (=> (not res!544489) (not e!776609))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!1349 0))(
  ( (B!1350 (val!4032 Int)) )
))
(declare-fun s!1510 () (InoxSet B!1349))

(assert (=> start!107936 (= res!544489 (not (= s!1510 ((as const (Array B!1349 Bool)) false))))))

(assert (=> start!107936 e!776609))

(declare-fun condSetEmpty!7960 () Bool)

(assert (=> start!107936 (= condSetEmpty!7960 (= s!1510 ((as const (Array B!1349 Bool)) false)))))

(declare-fun setRes!7960 () Bool)

(assert (=> start!107936 setRes!7960))

(declare-fun b!1210559 () Bool)

(declare-fun e!776611 () Bool)

(declare-datatypes ((List!12279 0))(
  ( (Nil!12221) (Cons!12221 (h!17622 B!1349) (t!112663 List!12279)) )
))
(declare-fun lt!414371 () List!12279)

(get-info :version)

(assert (=> b!1210559 (= e!776611 (not ((_ is Cons!12221) lt!414371)))))

(declare-fun setIsEmpty!7960 () Bool)

(assert (=> setIsEmpty!7960 setRes!7960))

(declare-fun b!1210560 () Bool)

(assert (=> b!1210560 (= e!776609 e!776611)))

(declare-fun res!544490 () Bool)

(assert (=> b!1210560 (=> (not res!544490) (not e!776611))))

(declare-fun e!776610 () Bool)

(assert (=> b!1210560 (= res!544490 e!776610)))

(declare-fun res!544491 () Bool)

(assert (=> b!1210560 (=> res!544491 e!776610)))

(assert (=> b!1210560 (= res!544491 (not ((_ is Cons!12221) lt!414371)))))

(declare-fun toList!693 ((InoxSet B!1349)) List!12279)

(assert (=> b!1210560 (= lt!414371 (toList!693 s!1510))))

(declare-fun b!1210561 () Bool)

(declare-fun isEmpty!7305 (List!12279) Bool)

(assert (=> b!1210561 (= e!776610 (not (isEmpty!7305 (t!112663 lt!414371))))))

(declare-fun setNonEmpty!7960 () Bool)

(declare-fun tp!342875 () Bool)

(declare-fun tp_is_empty!6207 () Bool)

(assert (=> setNonEmpty!7960 (= setRes!7960 (and tp!342875 tp_is_empty!6207))))

(declare-fun setElem!7960 () B!1349)

(declare-fun setRest!7960 () (InoxSet B!1349))

(assert (=> setNonEmpty!7960 (= s!1510 ((_ map or) (store ((as const (Array B!1349 Bool)) false) setElem!7960 true) setRest!7960))))

(assert (= (and start!107936 res!544489) b!1210560))

(assert (= (and b!1210560 (not res!544491)) b!1210561))

(assert (= (and b!1210560 res!544490) b!1210559))

(assert (= (and start!107936 condSetEmpty!7960) setIsEmpty!7960))

(assert (= (and start!107936 (not condSetEmpty!7960)) setNonEmpty!7960))

(declare-fun m!1386467 () Bool)

(assert (=> b!1210560 m!1386467))

(declare-fun m!1386469 () Bool)

(assert (=> b!1210561 m!1386469))

(check-sat (not b!1210560) (not b!1210561) (not setNonEmpty!7960) tp_is_empty!6207)
(check-sat)
(get-model)

(declare-fun d!346345 () Bool)

(declare-fun e!776614 () Bool)

(assert (=> d!346345 e!776614))

(declare-fun res!544494 () Bool)

(assert (=> d!346345 (=> (not res!544494) (not e!776614))))

(declare-fun lt!414374 () List!12279)

(declare-fun noDuplicate!213 (List!12279) Bool)

(assert (=> d!346345 (= res!544494 (noDuplicate!213 lt!414374))))

(declare-fun choose!7778 ((InoxSet B!1349)) List!12279)

(assert (=> d!346345 (= lt!414374 (choose!7778 s!1510))))

(assert (=> d!346345 (= (toList!693 s!1510) lt!414374)))

(declare-fun b!1210564 () Bool)

(declare-fun content!1738 (List!12279) (InoxSet B!1349))

(assert (=> b!1210564 (= e!776614 (= (content!1738 lt!414374) s!1510))))

(assert (= (and d!346345 res!544494) b!1210564))

(declare-fun m!1386471 () Bool)

(assert (=> d!346345 m!1386471))

(declare-fun m!1386473 () Bool)

(assert (=> d!346345 m!1386473))

(declare-fun m!1386475 () Bool)

(assert (=> b!1210564 m!1386475))

(assert (=> b!1210560 d!346345))

(declare-fun d!346347 () Bool)

(assert (=> d!346347 (= (isEmpty!7305 (t!112663 lt!414371)) ((_ is Nil!12221) (t!112663 lt!414371)))))

(assert (=> b!1210561 d!346347))

(declare-fun condSetEmpty!7963 () Bool)

(assert (=> setNonEmpty!7960 (= condSetEmpty!7963 (= setRest!7960 ((as const (Array B!1349 Bool)) false)))))

(declare-fun setRes!7963 () Bool)

(assert (=> setNonEmpty!7960 (= tp!342875 setRes!7963)))

(declare-fun setIsEmpty!7963 () Bool)

(assert (=> setIsEmpty!7963 setRes!7963))

(declare-fun setNonEmpty!7963 () Bool)

(declare-fun tp!342878 () Bool)

(assert (=> setNonEmpty!7963 (= setRes!7963 (and tp!342878 tp_is_empty!6207))))

(declare-fun setElem!7963 () B!1349)

(declare-fun setRest!7963 () (InoxSet B!1349))

(assert (=> setNonEmpty!7963 (= setRest!7960 ((_ map or) (store ((as const (Array B!1349 Bool)) false) setElem!7963 true) setRest!7963))))

(assert (= (and setNonEmpty!7960 condSetEmpty!7963) setIsEmpty!7963))

(assert (= (and setNonEmpty!7960 (not condSetEmpty!7963)) setNonEmpty!7963))

(check-sat (not d!346345) (not b!1210564) (not setNonEmpty!7963) tp_is_empty!6207)
(check-sat)
(get-model)

(declare-fun d!346353 () Bool)

(declare-fun res!544502 () Bool)

(declare-fun e!776622 () Bool)

(assert (=> d!346353 (=> res!544502 e!776622)))

(assert (=> d!346353 (= res!544502 ((_ is Nil!12221) lt!414374))))

(assert (=> d!346353 (= (noDuplicate!213 lt!414374) e!776622)))

(declare-fun b!1210576 () Bool)

(declare-fun e!776623 () Bool)

(assert (=> b!1210576 (= e!776622 e!776623)))

(declare-fun res!544503 () Bool)

(assert (=> b!1210576 (=> (not res!544503) (not e!776623))))

(declare-fun contains!2038 (List!12279 B!1349) Bool)

(assert (=> b!1210576 (= res!544503 (not (contains!2038 (t!112663 lt!414374) (h!17622 lt!414374))))))

(declare-fun b!1210577 () Bool)

(assert (=> b!1210577 (= e!776623 (noDuplicate!213 (t!112663 lt!414374)))))

(assert (= (and d!346353 (not res!544502)) b!1210576))

(assert (= (and b!1210576 res!544503) b!1210577))

(declare-fun m!1386483 () Bool)

(assert (=> b!1210576 m!1386483))

(declare-fun m!1386485 () Bool)

(assert (=> b!1210577 m!1386485))

(assert (=> d!346345 d!346353))

(declare-fun d!346355 () Bool)

(declare-fun e!776628 () Bool)

(assert (=> d!346355 e!776628))

(declare-fun res!544508 () Bool)

(assert (=> d!346355 (=> (not res!544508) (not e!776628))))

(declare-fun res!544509 () List!12279)

(assert (=> d!346355 (= res!544508 (noDuplicate!213 res!544509))))

(declare-fun e!776629 () Bool)

(assert (=> d!346355 e!776629))

(assert (=> d!346355 (= (choose!7778 s!1510) res!544509)))

(declare-fun b!1210582 () Bool)

(declare-fun tp!342884 () Bool)

(assert (=> b!1210582 (= e!776629 (and tp_is_empty!6207 tp!342884))))

(declare-fun b!1210583 () Bool)

(assert (=> b!1210583 (= e!776628 (= (content!1738 res!544509) s!1510))))

(assert (= (and d!346355 ((_ is Cons!12221) res!544509)) b!1210582))

(assert (= (and d!346355 res!544508) b!1210583))

(declare-fun m!1386487 () Bool)

(assert (=> d!346355 m!1386487))

(declare-fun m!1386489 () Bool)

(assert (=> b!1210583 m!1386489))

(assert (=> d!346345 d!346355))

(declare-fun d!346357 () Bool)

(declare-fun c!202759 () Bool)

(assert (=> d!346357 (= c!202759 ((_ is Nil!12221) lt!414374))))

(declare-fun e!776632 () (InoxSet B!1349))

(assert (=> d!346357 (= (content!1738 lt!414374) e!776632)))

(declare-fun b!1210588 () Bool)

(assert (=> b!1210588 (= e!776632 ((as const (Array B!1349 Bool)) false))))

(declare-fun b!1210589 () Bool)

(assert (=> b!1210589 (= e!776632 ((_ map or) (store ((as const (Array B!1349 Bool)) false) (h!17622 lt!414374) true) (content!1738 (t!112663 lt!414374))))))

(assert (= (and d!346357 c!202759) b!1210588))

(assert (= (and d!346357 (not c!202759)) b!1210589))

(declare-fun m!1386491 () Bool)

(assert (=> b!1210589 m!1386491))

(declare-fun m!1386493 () Bool)

(assert (=> b!1210589 m!1386493))

(assert (=> b!1210564 d!346357))

(declare-fun condSetEmpty!7967 () Bool)

(assert (=> setNonEmpty!7963 (= condSetEmpty!7967 (= setRest!7963 ((as const (Array B!1349 Bool)) false)))))

(declare-fun setRes!7967 () Bool)

(assert (=> setNonEmpty!7963 (= tp!342878 setRes!7967)))

(declare-fun setIsEmpty!7967 () Bool)

(assert (=> setIsEmpty!7967 setRes!7967))

(declare-fun setNonEmpty!7967 () Bool)

(declare-fun tp!342885 () Bool)

(assert (=> setNonEmpty!7967 (= setRes!7967 (and tp!342885 tp_is_empty!6207))))

(declare-fun setElem!7967 () B!1349)

(declare-fun setRest!7967 () (InoxSet B!1349))

(assert (=> setNonEmpty!7967 (= setRest!7963 ((_ map or) (store ((as const (Array B!1349 Bool)) false) setElem!7967 true) setRest!7967))))

(assert (= (and setNonEmpty!7963 condSetEmpty!7967) setIsEmpty!7967))

(assert (= (and setNonEmpty!7963 (not condSetEmpty!7967)) setNonEmpty!7967))

(check-sat (not b!1210583) (not b!1210577) (not setNonEmpty!7967) (not d!346355) (not b!1210582) tp_is_empty!6207 (not b!1210576) (not b!1210589))
(check-sat)
