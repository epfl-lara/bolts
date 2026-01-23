; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107860 () Bool)

(assert start!107860)

(declare-fun b!1210317 () Bool)

(declare-fun res!544284 () Bool)

(declare-fun e!776425 () Bool)

(assert (=> b!1210317 (=> (not res!544284) (not e!776425))))

(declare-datatypes ((B!1333 0))(
  ( (B!1334 (val!4024 Int)) )
))
(declare-datatypes ((List!12271 0))(
  ( (Nil!12213) (Cons!12213 (h!17614 B!1333) (t!112655 List!12271)) )
))
(declare-fun lt!414232 () List!12271)

(declare-fun noDuplicate!208 (List!12271) Bool)

(assert (=> b!1210317 (= res!544284 (noDuplicate!208 lt!414232))))

(declare-fun b!1210318 () Bool)

(declare-fun contains!2031 (List!12271 B!1333) Bool)

(assert (=> b!1210318 (= e!776425 (not (contains!2031 lt!414232 (h!17614 lt!414232))))))

(declare-fun res!544286 () Bool)

(declare-fun e!776426 () Bool)

(assert (=> start!107860 (=> (not res!544286) (not e!776426))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1510 () (InoxSet B!1333))

(assert (=> start!107860 (= res!544286 (not (= s!1510 ((as const (Array B!1333 Bool)) false))))))

(assert (=> start!107860 e!776426))

(declare-fun condSetEmpty!7918 () Bool)

(assert (=> start!107860 (= condSetEmpty!7918 (= s!1510 ((as const (Array B!1333 Bool)) false)))))

(declare-fun setRes!7918 () Bool)

(assert (=> start!107860 setRes!7918))

(declare-fun b!1210319 () Bool)

(assert (=> b!1210319 (= e!776426 e!776425)))

(declare-fun res!544287 () Bool)

(assert (=> b!1210319 (=> (not res!544287) (not e!776425))))

(declare-fun e!776427 () Bool)

(assert (=> b!1210319 (= res!544287 e!776427)))

(declare-fun res!544285 () Bool)

(assert (=> b!1210319 (=> res!544285 e!776427)))

(declare-fun lt!414233 () Bool)

(assert (=> b!1210319 (= res!544285 lt!414233)))

(get-info :version)

(assert (=> b!1210319 (= lt!414233 (not ((_ is Cons!12213) lt!414232)))))

(declare-fun toList!685 ((InoxSet B!1333)) List!12271)

(assert (=> b!1210319 (= lt!414232 (toList!685 s!1510))))

(declare-fun setNonEmpty!7918 () Bool)

(declare-fun tp!342833 () Bool)

(declare-fun tp_is_empty!6191 () Bool)

(assert (=> setNonEmpty!7918 (= setRes!7918 (and tp!342833 tp_is_empty!6191))))

(declare-fun setElem!7918 () B!1333)

(declare-fun setRest!7918 () (InoxSet B!1333))

(assert (=> setNonEmpty!7918 (= s!1510 ((_ map or) (store ((as const (Array B!1333 Bool)) false) setElem!7918 true) setRest!7918))))

(declare-fun b!1210320 () Bool)

(declare-fun isEmpty!7297 (List!12271) Bool)

(assert (=> b!1210320 (= e!776427 (not (isEmpty!7297 (t!112655 lt!414232))))))

(declare-fun b!1210321 () Bool)

(declare-fun res!544283 () Bool)

(assert (=> b!1210321 (=> (not res!544283) (not e!776425))))

(assert (=> b!1210321 (= res!544283 (not lt!414233))))

(declare-fun setIsEmpty!7918 () Bool)

(assert (=> setIsEmpty!7918 setRes!7918))

(assert (= (and start!107860 res!544286) b!1210319))

(assert (= (and b!1210319 (not res!544285)) b!1210320))

(assert (= (and b!1210319 res!544287) b!1210321))

(assert (= (and b!1210321 res!544283) b!1210317))

(assert (= (and b!1210317 res!544284) b!1210318))

(assert (= (and start!107860 condSetEmpty!7918) setIsEmpty!7918))

(assert (= (and start!107860 (not condSetEmpty!7918)) setNonEmpty!7918))

(declare-fun m!1386263 () Bool)

(assert (=> b!1210317 m!1386263))

(declare-fun m!1386265 () Bool)

(assert (=> b!1210318 m!1386265))

(declare-fun m!1386267 () Bool)

(assert (=> b!1210319 m!1386267))

(declare-fun m!1386269 () Bool)

(assert (=> b!1210320 m!1386269))

(check-sat (not b!1210319) tp_is_empty!6191 (not b!1210317) (not b!1210318) (not setNonEmpty!7918) (not b!1210320))
(check-sat)
(get-model)

(declare-fun d!346283 () Bool)

(assert (=> d!346283 (= (isEmpty!7297 (t!112655 lt!414232)) ((_ is Nil!12213) (t!112655 lt!414232)))))

(assert (=> b!1210320 d!346283))

(declare-fun d!346285 () Bool)

(declare-fun res!544298 () Bool)

(declare-fun e!776438 () Bool)

(assert (=> d!346285 (=> res!544298 e!776438)))

(assert (=> d!346285 (= res!544298 ((_ is Nil!12213) lt!414232))))

(assert (=> d!346285 (= (noDuplicate!208 lt!414232) e!776438)))

(declare-fun b!1210332 () Bool)

(declare-fun e!776439 () Bool)

(assert (=> b!1210332 (= e!776438 e!776439)))

(declare-fun res!544299 () Bool)

(assert (=> b!1210332 (=> (not res!544299) (not e!776439))))

(assert (=> b!1210332 (= res!544299 (not (contains!2031 (t!112655 lt!414232) (h!17614 lt!414232))))))

(declare-fun b!1210333 () Bool)

(assert (=> b!1210333 (= e!776439 (noDuplicate!208 (t!112655 lt!414232)))))

(assert (= (and d!346285 (not res!544298)) b!1210332))

(assert (= (and b!1210332 res!544299) b!1210333))

(declare-fun m!1386275 () Bool)

(assert (=> b!1210332 m!1386275))

(declare-fun m!1386277 () Bool)

(assert (=> b!1210333 m!1386277))

(assert (=> b!1210317 d!346285))

(declare-fun d!346289 () Bool)

(declare-fun lt!414241 () Bool)

(declare-fun content!1733 (List!12271) (InoxSet B!1333))

(assert (=> d!346289 (= lt!414241 (select (content!1733 lt!414232) (h!17614 lt!414232)))))

(declare-fun e!776451 () Bool)

(assert (=> d!346289 (= lt!414241 e!776451)))

(declare-fun res!544311 () Bool)

(assert (=> d!346289 (=> (not res!544311) (not e!776451))))

(assert (=> d!346289 (= res!544311 ((_ is Cons!12213) lt!414232))))

(assert (=> d!346289 (= (contains!2031 lt!414232 (h!17614 lt!414232)) lt!414241)))

(declare-fun b!1210345 () Bool)

(declare-fun e!776452 () Bool)

(assert (=> b!1210345 (= e!776451 e!776452)))

(declare-fun res!544312 () Bool)

(assert (=> b!1210345 (=> res!544312 e!776452)))

(assert (=> b!1210345 (= res!544312 (= (h!17614 lt!414232) (h!17614 lt!414232)))))

(declare-fun b!1210346 () Bool)

(assert (=> b!1210346 (= e!776452 (contains!2031 (t!112655 lt!414232) (h!17614 lt!414232)))))

(assert (= (and d!346289 res!544311) b!1210345))

(assert (= (and b!1210345 (not res!544312)) b!1210346))

(declare-fun m!1386285 () Bool)

(assert (=> d!346289 m!1386285))

(declare-fun m!1386287 () Bool)

(assert (=> d!346289 m!1386287))

(assert (=> b!1210346 m!1386275))

(assert (=> b!1210318 d!346289))

(declare-fun d!346295 () Bool)

(declare-fun e!776457 () Bool)

(assert (=> d!346295 e!776457))

(declare-fun res!544317 () Bool)

(assert (=> d!346295 (=> (not res!544317) (not e!776457))))

(declare-fun lt!414245 () List!12271)

(assert (=> d!346295 (= res!544317 (noDuplicate!208 lt!414245))))

(declare-fun choose!7771 ((InoxSet B!1333)) List!12271)

(assert (=> d!346295 (= lt!414245 (choose!7771 s!1510))))

(assert (=> d!346295 (= (toList!685 s!1510) lt!414245)))

(declare-fun b!1210353 () Bool)

(assert (=> b!1210353 (= e!776457 (= (content!1733 lt!414245) s!1510))))

(assert (= (and d!346295 res!544317) b!1210353))

(declare-fun m!1386293 () Bool)

(assert (=> d!346295 m!1386293))

(declare-fun m!1386295 () Bool)

(assert (=> d!346295 m!1386295))

(declare-fun m!1386297 () Bool)

(assert (=> b!1210353 m!1386297))

(assert (=> b!1210319 d!346295))

(declare-fun condSetEmpty!7924 () Bool)

(assert (=> setNonEmpty!7918 (= condSetEmpty!7924 (= setRest!7918 ((as const (Array B!1333 Bool)) false)))))

(declare-fun setRes!7924 () Bool)

(assert (=> setNonEmpty!7918 (= tp!342833 setRes!7924)))

(declare-fun setIsEmpty!7924 () Bool)

(assert (=> setIsEmpty!7924 setRes!7924))

(declare-fun setNonEmpty!7924 () Bool)

(declare-fun tp!342839 () Bool)

(assert (=> setNonEmpty!7924 (= setRes!7924 (and tp!342839 tp_is_empty!6191))))

(declare-fun setElem!7924 () B!1333)

(declare-fun setRest!7924 () (InoxSet B!1333))

(assert (=> setNonEmpty!7924 (= setRest!7918 ((_ map or) (store ((as const (Array B!1333 Bool)) false) setElem!7924 true) setRest!7924))))

(assert (= (and setNonEmpty!7918 condSetEmpty!7924) setIsEmpty!7924))

(assert (= (and setNonEmpty!7918 (not condSetEmpty!7924)) setNonEmpty!7924))

(check-sat (not setNonEmpty!7924) tp_is_empty!6191 (not b!1210346) (not d!346289) (not b!1210333) (not d!346295) (not b!1210353) (not b!1210332))
(check-sat)
