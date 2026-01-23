; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107844 () Bool)

(assert start!107844)

(declare-fun setIsEmpty!7906 () Bool)

(declare-fun setRes!7906 () Bool)

(assert (=> setIsEmpty!7906 setRes!7906))

(declare-fun res!544238 () Bool)

(declare-fun e!776389 () Bool)

(assert (=> start!107844 (=> (not res!544238) (not e!776389))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!1329 0))(
  ( (B!1330 (val!4022 Int)) )
))
(declare-fun s!1510 () (InoxSet B!1329))

(assert (=> start!107844 (= res!544238 (not (= s!1510 ((as const (Array B!1329 Bool)) false))))))

(assert (=> start!107844 e!776389))

(declare-fun condSetEmpty!7906 () Bool)

(assert (=> start!107844 (= condSetEmpty!7906 (= s!1510 ((as const (Array B!1329 Bool)) false)))))

(assert (=> start!107844 setRes!7906))

(declare-fun b!1210266 () Bool)

(declare-fun e!776390 () Bool)

(declare-datatypes ((List!12269 0))(
  ( (Nil!12211) (Cons!12211 (h!17612 B!1329) (t!112653 List!12269)) )
))
(declare-fun lt!414214 () List!12269)

(declare-fun noDuplicate!206 (List!12269) Bool)

(assert (=> b!1210266 (= e!776390 (not (noDuplicate!206 lt!414214)))))

(declare-fun setNonEmpty!7906 () Bool)

(declare-fun tp!342821 () Bool)

(declare-fun tp_is_empty!6187 () Bool)

(assert (=> setNonEmpty!7906 (= setRes!7906 (and tp!342821 tp_is_empty!6187))))

(declare-fun setElem!7906 () B!1329)

(declare-fun setRest!7906 () (InoxSet B!1329))

(assert (=> setNonEmpty!7906 (= s!1510 ((_ map or) (store ((as const (Array B!1329 Bool)) false) setElem!7906 true) setRest!7906))))

(declare-fun b!1210267 () Bool)

(declare-fun res!544239 () Bool)

(assert (=> b!1210267 (=> (not res!544239) (not e!776390))))

(declare-fun lt!414215 () Bool)

(assert (=> b!1210267 (= res!544239 (not lt!414215))))

(declare-fun b!1210268 () Bool)

(declare-fun e!776391 () Bool)

(declare-fun isEmpty!7295 (List!12269) Bool)

(assert (=> b!1210268 (= e!776391 (not (isEmpty!7295 (t!112653 lt!414214))))))

(declare-fun b!1210269 () Bool)

(assert (=> b!1210269 (= e!776389 e!776390)))

(declare-fun res!544236 () Bool)

(assert (=> b!1210269 (=> (not res!544236) (not e!776390))))

(assert (=> b!1210269 (= res!544236 e!776391)))

(declare-fun res!544237 () Bool)

(assert (=> b!1210269 (=> res!544237 e!776391)))

(assert (=> b!1210269 (= res!544237 lt!414215)))

(get-info :version)

(assert (=> b!1210269 (= lt!414215 (not ((_ is Cons!12211) lt!414214)))))

(declare-fun toList!683 ((InoxSet B!1329)) List!12269)

(assert (=> b!1210269 (= lt!414214 (toList!683 s!1510))))

(assert (= (and start!107844 res!544238) b!1210269))

(assert (= (and b!1210269 (not res!544237)) b!1210268))

(assert (= (and b!1210269 res!544236) b!1210267))

(assert (= (and b!1210267 res!544239) b!1210266))

(assert (= (and start!107844 condSetEmpty!7906) setIsEmpty!7906))

(assert (= (and start!107844 (not condSetEmpty!7906)) setNonEmpty!7906))

(declare-fun m!1386229 () Bool)

(assert (=> b!1210266 m!1386229))

(declare-fun m!1386231 () Bool)

(assert (=> b!1210268 m!1386231))

(declare-fun m!1386233 () Bool)

(assert (=> b!1210269 m!1386233))

(check-sat tp_is_empty!6187 (not b!1210269) (not b!1210266) (not setNonEmpty!7906) (not b!1210268))
(check-sat)
(get-model)

(declare-fun d!346268 () Bool)

(assert (=> d!346268 (= (isEmpty!7295 (t!112653 lt!414214)) ((_ is Nil!12211) (t!112653 lt!414214)))))

(assert (=> b!1210268 d!346268))

(declare-fun d!346270 () Bool)

(declare-fun e!776394 () Bool)

(assert (=> d!346270 e!776394))

(declare-fun res!544242 () Bool)

(assert (=> d!346270 (=> (not res!544242) (not e!776394))))

(declare-fun lt!414218 () List!12269)

(assert (=> d!346270 (= res!544242 (noDuplicate!206 lt!414218))))

(declare-fun choose!7769 ((InoxSet B!1329)) List!12269)

(assert (=> d!346270 (= lt!414218 (choose!7769 s!1510))))

(assert (=> d!346270 (= (toList!683 s!1510) lt!414218)))

(declare-fun b!1210272 () Bool)

(declare-fun content!1731 (List!12269) (InoxSet B!1329))

(assert (=> b!1210272 (= e!776394 (= (content!1731 lt!414218) s!1510))))

(assert (= (and d!346270 res!544242) b!1210272))

(declare-fun m!1386235 () Bool)

(assert (=> d!346270 m!1386235))

(declare-fun m!1386237 () Bool)

(assert (=> d!346270 m!1386237))

(declare-fun m!1386239 () Bool)

(assert (=> b!1210272 m!1386239))

(assert (=> b!1210269 d!346270))

(declare-fun d!346274 () Bool)

(declare-fun res!544251 () Bool)

(declare-fun e!776403 () Bool)

(assert (=> d!346274 (=> res!544251 e!776403)))

(assert (=> d!346274 (= res!544251 ((_ is Nil!12211) lt!414214))))

(assert (=> d!346274 (= (noDuplicate!206 lt!414214) e!776403)))

(declare-fun b!1210281 () Bool)

(declare-fun e!776404 () Bool)

(assert (=> b!1210281 (= e!776403 e!776404)))

(declare-fun res!544252 () Bool)

(assert (=> b!1210281 (=> (not res!544252) (not e!776404))))

(declare-fun contains!2029 (List!12269 B!1329) Bool)

(assert (=> b!1210281 (= res!544252 (not (contains!2029 (t!112653 lt!414214) (h!17612 lt!414214))))))

(declare-fun b!1210282 () Bool)

(assert (=> b!1210282 (= e!776404 (noDuplicate!206 (t!112653 lt!414214)))))

(assert (= (and d!346274 (not res!544251)) b!1210281))

(assert (= (and b!1210281 res!544252) b!1210282))

(declare-fun m!1386241 () Bool)

(assert (=> b!1210281 m!1386241))

(declare-fun m!1386243 () Bool)

(assert (=> b!1210282 m!1386243))

(assert (=> b!1210266 d!346274))

(declare-fun condSetEmpty!7909 () Bool)

(assert (=> setNonEmpty!7906 (= condSetEmpty!7909 (= setRest!7906 ((as const (Array B!1329 Bool)) false)))))

(declare-fun setRes!7909 () Bool)

(assert (=> setNonEmpty!7906 (= tp!342821 setRes!7909)))

(declare-fun setIsEmpty!7909 () Bool)

(assert (=> setIsEmpty!7909 setRes!7909))

(declare-fun setNonEmpty!7909 () Bool)

(declare-fun tp!342824 () Bool)

(assert (=> setNonEmpty!7909 (= setRes!7909 (and tp!342824 tp_is_empty!6187))))

(declare-fun setElem!7909 () B!1329)

(declare-fun setRest!7909 () (InoxSet B!1329))

(assert (=> setNonEmpty!7909 (= setRest!7906 ((_ map or) (store ((as const (Array B!1329 Bool)) false) setElem!7909 true) setRest!7909))))

(assert (= (and setNonEmpty!7906 condSetEmpty!7909) setIsEmpty!7909))

(assert (= (and setNonEmpty!7906 (not condSetEmpty!7909)) setNonEmpty!7909))

(check-sat (not b!1210282) (not b!1210272) (not d!346270) tp_is_empty!6187 (not setNonEmpty!7909) (not b!1210281))
(check-sat)
