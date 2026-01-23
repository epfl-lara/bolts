; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107824 () Bool)

(assert start!107824)

(declare-fun setIsEmpty!7894 () Bool)

(declare-fun setRes!7894 () Bool)

(assert (=> setIsEmpty!7894 setRes!7894))

(declare-fun setNonEmpty!7894 () Bool)

(declare-fun tp!342809 () Bool)

(declare-fun tp_is_empty!6183 () Bool)

(assert (=> setNonEmpty!7894 (= setRes!7894 (and tp!342809 tp_is_empty!6183))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!1325 0))(
  ( (B!1326 (val!4020 Int)) )
))
(declare-fun s!1510 () (InoxSet B!1325))

(declare-fun setElem!7894 () B!1325)

(declare-fun setRest!7894 () (InoxSet B!1325))

(assert (=> setNonEmpty!7894 (= s!1510 ((_ map or) (store ((as const (Array B!1325 Bool)) false) setElem!7894 true) setRest!7894))))

(declare-fun b!1210217 () Bool)

(declare-fun res!544207 () Bool)

(declare-fun e!776358 () Bool)

(assert (=> b!1210217 (=> (not res!544207) (not e!776358))))

(declare-datatypes ((List!12267 0))(
  ( (Nil!12209) (Cons!12209 (h!17610 B!1325) (t!112651 List!12267)) )
))
(declare-fun lt!414189 () List!12267)

(declare-fun isEmpty!7293 (List!12267) Bool)

(assert (=> b!1210217 (= res!544207 (isEmpty!7293 (t!112651 lt!414189)))))

(declare-fun b!1210218 () Bool)

(declare-fun e!776359 () Bool)

(assert (=> b!1210218 (= e!776359 e!776358)))

(declare-fun res!544209 () Bool)

(assert (=> b!1210218 (=> (not res!544209) (not e!776358))))

(get-info :version)

(assert (=> b!1210218 (= res!544209 ((_ is Cons!12209) lt!414189))))

(declare-fun toList!681 ((InoxSet B!1325)) List!12267)

(assert (=> b!1210218 (= lt!414189 (toList!681 s!1510))))

(declare-fun res!544208 () Bool)

(assert (=> start!107824 (=> (not res!544208) (not e!776359))))

(assert (=> start!107824 (= res!544208 (not (= s!1510 ((as const (Array B!1325 Bool)) false))))))

(assert (=> start!107824 e!776359))

(declare-fun condSetEmpty!7894 () Bool)

(assert (=> start!107824 (= condSetEmpty!7894 (= s!1510 ((as const (Array B!1325 Bool)) false)))))

(assert (=> start!107824 setRes!7894))

(declare-fun b!1210219 () Bool)

(declare-fun size!9739 (List!12267) Int)

(declare-fun tail!1774 (List!12267) List!12267)

(assert (=> b!1210219 (= e!776358 (<= (size!9739 lt!414189) (size!9739 (tail!1774 lt!414189))))))

(assert (= (and start!107824 res!544208) b!1210218))

(assert (= (and b!1210218 res!544209) b!1210217))

(assert (= (and b!1210217 res!544207) b!1210219))

(assert (= (and start!107824 condSetEmpty!7894) setIsEmpty!7894))

(assert (= (and start!107824 (not condSetEmpty!7894)) setNonEmpty!7894))

(declare-fun m!1386193 () Bool)

(assert (=> b!1210217 m!1386193))

(declare-fun m!1386195 () Bool)

(assert (=> b!1210218 m!1386195))

(declare-fun m!1386197 () Bool)

(assert (=> b!1210219 m!1386197))

(declare-fun m!1386199 () Bool)

(assert (=> b!1210219 m!1386199))

(assert (=> b!1210219 m!1386199))

(declare-fun m!1386201 () Bool)

(assert (=> b!1210219 m!1386201))

(check-sat (not b!1210218) (not setNonEmpty!7894) (not b!1210219) (not b!1210217) tp_is_empty!6183)
(check-sat)
(get-model)

(declare-fun d!346247 () Bool)

(declare-fun e!776362 () Bool)

(assert (=> d!346247 e!776362))

(declare-fun res!544212 () Bool)

(assert (=> d!346247 (=> (not res!544212) (not e!776362))))

(declare-fun lt!414192 () List!12267)

(declare-fun noDuplicate!203 (List!12267) Bool)

(assert (=> d!346247 (= res!544212 (noDuplicate!203 lt!414192))))

(declare-fun choose!7767 ((InoxSet B!1325)) List!12267)

(assert (=> d!346247 (= lt!414192 (choose!7767 s!1510))))

(assert (=> d!346247 (= (toList!681 s!1510) lt!414192)))

(declare-fun b!1210222 () Bool)

(declare-fun content!1729 (List!12267) (InoxSet B!1325))

(assert (=> b!1210222 (= e!776362 (= (content!1729 lt!414192) s!1510))))

(assert (= (and d!346247 res!544212) b!1210222))

(declare-fun m!1386203 () Bool)

(assert (=> d!346247 m!1386203))

(declare-fun m!1386205 () Bool)

(assert (=> d!346247 m!1386205))

(declare-fun m!1386207 () Bool)

(assert (=> b!1210222 m!1386207))

(assert (=> b!1210218 d!346247))

(declare-fun d!346251 () Bool)

(assert (=> d!346251 (= (isEmpty!7293 (t!112651 lt!414189)) ((_ is Nil!12209) (t!112651 lt!414189)))))

(assert (=> b!1210217 d!346251))

(declare-fun d!346253 () Bool)

(declare-fun lt!414198 () Int)

(assert (=> d!346253 (>= lt!414198 0)))

(declare-fun e!776368 () Int)

(assert (=> d!346253 (= lt!414198 e!776368)))

(declare-fun c!202739 () Bool)

(assert (=> d!346253 (= c!202739 ((_ is Nil!12209) lt!414189))))

(assert (=> d!346253 (= (size!9739 lt!414189) lt!414198)))

(declare-fun b!1210230 () Bool)

(assert (=> b!1210230 (= e!776368 0)))

(declare-fun b!1210231 () Bool)

(assert (=> b!1210231 (= e!776368 (+ 1 (size!9739 (t!112651 lt!414189))))))

(assert (= (and d!346253 c!202739) b!1210230))

(assert (= (and d!346253 (not c!202739)) b!1210231))

(declare-fun m!1386215 () Bool)

(assert (=> b!1210231 m!1386215))

(assert (=> b!1210219 d!346253))

(declare-fun d!346257 () Bool)

(declare-fun lt!414199 () Int)

(assert (=> d!346257 (>= lt!414199 0)))

(declare-fun e!776369 () Int)

(assert (=> d!346257 (= lt!414199 e!776369)))

(declare-fun c!202740 () Bool)

(assert (=> d!346257 (= c!202740 ((_ is Nil!12209) (tail!1774 lt!414189)))))

(assert (=> d!346257 (= (size!9739 (tail!1774 lt!414189)) lt!414199)))

(declare-fun b!1210232 () Bool)

(assert (=> b!1210232 (= e!776369 0)))

(declare-fun b!1210233 () Bool)

(assert (=> b!1210233 (= e!776369 (+ 1 (size!9739 (t!112651 (tail!1774 lt!414189)))))))

(assert (= (and d!346257 c!202740) b!1210232))

(assert (= (and d!346257 (not c!202740)) b!1210233))

(declare-fun m!1386217 () Bool)

(assert (=> b!1210233 m!1386217))

(assert (=> b!1210219 d!346257))

(declare-fun d!346259 () Bool)

(assert (=> d!346259 (= (tail!1774 lt!414189) (t!112651 lt!414189))))

(assert (=> b!1210219 d!346259))

(declare-fun condSetEmpty!7897 () Bool)

(assert (=> setNonEmpty!7894 (= condSetEmpty!7897 (= setRest!7894 ((as const (Array B!1325 Bool)) false)))))

(declare-fun setRes!7897 () Bool)

(assert (=> setNonEmpty!7894 (= tp!342809 setRes!7897)))

(declare-fun setIsEmpty!7897 () Bool)

(assert (=> setIsEmpty!7897 setRes!7897))

(declare-fun setNonEmpty!7897 () Bool)

(declare-fun tp!342812 () Bool)

(assert (=> setNonEmpty!7897 (= setRes!7897 (and tp!342812 tp_is_empty!6183))))

(declare-fun setElem!7897 () B!1325)

(declare-fun setRest!7897 () (InoxSet B!1325))

(assert (=> setNonEmpty!7897 (= setRest!7894 ((_ map or) (store ((as const (Array B!1325 Bool)) false) setElem!7897 true) setRest!7897))))

(assert (= (and setNonEmpty!7894 condSetEmpty!7897) setIsEmpty!7897))

(assert (= (and setNonEmpty!7894 (not condSetEmpty!7897)) setNonEmpty!7897))

(check-sat (not b!1210233) (not b!1210231) (not setNonEmpty!7897) (not d!346247) (not b!1210222) tp_is_empty!6183)
(check-sat)
