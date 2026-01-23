; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107880 () Bool)

(assert start!107880)

(declare-fun b!1210386 () Bool)

(declare-fun res!544350 () Bool)

(declare-fun e!776473 () Bool)

(assert (=> b!1210386 (=> (not res!544350) (not e!776473))))

(declare-datatypes ((B!1337 0))(
  ( (B!1338 (val!4026 Int)) )
))
(declare-datatypes ((List!12273 0))(
  ( (Nil!12215) (Cons!12215 (h!17616 B!1337) (t!112657 List!12273)) )
))
(declare-fun lt!414256 () List!12273)

(declare-fun noDuplicate!210 (List!12273) Bool)

(assert (=> b!1210386 (= res!544350 (noDuplicate!210 lt!414256))))

(declare-fun res!544352 () Bool)

(declare-fun e!776475 () Bool)

(assert (=> start!107880 (=> (not res!544352) (not e!776475))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1510 () (InoxSet B!1337))

(assert (=> start!107880 (= res!544352 (not (= s!1510 ((as const (Array B!1337 Bool)) false))))))

(assert (=> start!107880 e!776475))

(declare-fun condSetEmpty!7930 () Bool)

(assert (=> start!107880 (= condSetEmpty!7930 (= s!1510 ((as const (Array B!1337 Bool)) false)))))

(declare-fun setRes!7930 () Bool)

(assert (=> start!107880 setRes!7930))

(declare-fun setNonEmpty!7930 () Bool)

(declare-fun tp!342845 () Bool)

(declare-fun tp_is_empty!6195 () Bool)

(assert (=> setNonEmpty!7930 (= setRes!7930 (and tp!342845 tp_is_empty!6195))))

(declare-fun setElem!7930 () B!1337)

(declare-fun setRest!7930 () (InoxSet B!1337))

(assert (=> setNonEmpty!7930 (= s!1510 ((_ map or) (store ((as const (Array B!1337 Bool)) false) setElem!7930 true) setRest!7930))))

(declare-fun b!1210387 () Bool)

(assert (=> b!1210387 (= e!776475 e!776473)))

(declare-fun res!544351 () Bool)

(assert (=> b!1210387 (=> (not res!544351) (not e!776473))))

(declare-fun e!776474 () Bool)

(assert (=> b!1210387 (= res!544351 e!776474)))

(declare-fun res!544348 () Bool)

(assert (=> b!1210387 (=> res!544348 e!776474)))

(declare-fun lt!414257 () Bool)

(assert (=> b!1210387 (= res!544348 lt!414257)))

(get-info :version)

(assert (=> b!1210387 (= lt!414257 (not ((_ is Cons!12215) lt!414256)))))

(declare-fun toList!687 ((InoxSet B!1337)) List!12273)

(assert (=> b!1210387 (= lt!414256 (toList!687 s!1510))))

(declare-fun b!1210388 () Bool)

(declare-fun isEmpty!7299 (List!12273) Bool)

(assert (=> b!1210388 (= e!776474 (not (isEmpty!7299 (t!112657 lt!414256))))))

(declare-fun b!1210389 () Bool)

(declare-fun head!2146 (List!12273) B!1337)

(assert (=> b!1210389 (= e!776473 (not (= (head!2146 lt!414256) (h!17616 lt!414256))))))

(declare-fun setIsEmpty!7930 () Bool)

(assert (=> setIsEmpty!7930 setRes!7930))

(declare-fun b!1210390 () Bool)

(declare-fun res!544349 () Bool)

(assert (=> b!1210390 (=> (not res!544349) (not e!776473))))

(declare-fun contains!2033 (List!12273 B!1337) Bool)

(assert (=> b!1210390 (= res!544349 (contains!2033 lt!414256 (h!17616 lt!414256)))))

(declare-fun b!1210391 () Bool)

(declare-fun res!544353 () Bool)

(assert (=> b!1210391 (=> (not res!544353) (not e!776473))))

(assert (=> b!1210391 (= res!544353 (not lt!414257))))

(assert (= (and start!107880 res!544352) b!1210387))

(assert (= (and b!1210387 (not res!544348)) b!1210388))

(assert (= (and b!1210387 res!544351) b!1210391))

(assert (= (and b!1210391 res!544353) b!1210386))

(assert (= (and b!1210386 res!544350) b!1210390))

(assert (= (and b!1210390 res!544349) b!1210389))

(assert (= (and start!107880 condSetEmpty!7930) setIsEmpty!7930))

(assert (= (and start!107880 (not condSetEmpty!7930)) setNonEmpty!7930))

(declare-fun m!1386309 () Bool)

(assert (=> b!1210389 m!1386309))

(declare-fun m!1386311 () Bool)

(assert (=> b!1210390 m!1386311))

(declare-fun m!1386313 () Bool)

(assert (=> b!1210387 m!1386313))

(declare-fun m!1386315 () Bool)

(assert (=> b!1210386 m!1386315))

(declare-fun m!1386317 () Bool)

(assert (=> b!1210388 m!1386317))

(check-sat (not b!1210386) tp_is_empty!6195 (not b!1210390) (not b!1210389) (not b!1210388) (not b!1210387) (not setNonEmpty!7930))
(check-sat)
(get-model)

(declare-fun d!346298 () Bool)

(declare-fun res!544360 () Bool)

(declare-fun e!776482 () Bool)

(assert (=> d!346298 (=> res!544360 e!776482)))

(assert (=> d!346298 (= res!544360 ((_ is Nil!12215) lt!414256))))

(assert (=> d!346298 (= (noDuplicate!210 lt!414256) e!776482)))

(declare-fun b!1210398 () Bool)

(declare-fun e!776483 () Bool)

(assert (=> b!1210398 (= e!776482 e!776483)))

(declare-fun res!544361 () Bool)

(assert (=> b!1210398 (=> (not res!544361) (not e!776483))))

(assert (=> b!1210398 (= res!544361 (not (contains!2033 (t!112657 lt!414256) (h!17616 lt!414256))))))

(declare-fun b!1210399 () Bool)

(assert (=> b!1210399 (= e!776483 (noDuplicate!210 (t!112657 lt!414256)))))

(assert (= (and d!346298 (not res!544360)) b!1210398))

(assert (= (and b!1210398 res!544361) b!1210399))

(declare-fun m!1386319 () Bool)

(assert (=> b!1210398 m!1386319))

(declare-fun m!1386321 () Bool)

(assert (=> b!1210399 m!1386321))

(assert (=> b!1210386 d!346298))

(declare-fun d!346304 () Bool)

(declare-fun lt!414263 () Bool)

(declare-fun content!1735 (List!12273) (InoxSet B!1337))

(assert (=> d!346304 (= lt!414263 (select (content!1735 lt!414256) (h!17616 lt!414256)))))

(declare-fun e!776496 () Bool)

(assert (=> d!346304 (= lt!414263 e!776496)))

(declare-fun res!544373 () Bool)

(assert (=> d!346304 (=> (not res!544373) (not e!776496))))

(assert (=> d!346304 (= res!544373 ((_ is Cons!12215) lt!414256))))

(assert (=> d!346304 (= (contains!2033 lt!414256 (h!17616 lt!414256)) lt!414263)))

(declare-fun b!1210411 () Bool)

(declare-fun e!776494 () Bool)

(assert (=> b!1210411 (= e!776496 e!776494)))

(declare-fun res!544371 () Bool)

(assert (=> b!1210411 (=> res!544371 e!776494)))

(assert (=> b!1210411 (= res!544371 (= (h!17616 lt!414256) (h!17616 lt!414256)))))

(declare-fun b!1210412 () Bool)

(assert (=> b!1210412 (= e!776494 (contains!2033 (t!112657 lt!414256) (h!17616 lt!414256)))))

(assert (= (and d!346304 res!544373) b!1210411))

(assert (= (and b!1210411 (not res!544371)) b!1210412))

(declare-fun m!1386331 () Bool)

(assert (=> d!346304 m!1386331))

(declare-fun m!1386335 () Bool)

(assert (=> d!346304 m!1386335))

(assert (=> b!1210412 m!1386319))

(assert (=> b!1210390 d!346304))

(declare-fun d!346310 () Bool)

(declare-fun e!776503 () Bool)

(assert (=> d!346310 e!776503))

(declare-fun res!544381 () Bool)

(assert (=> d!346310 (=> (not res!544381) (not e!776503))))

(declare-fun lt!414268 () List!12273)

(assert (=> d!346310 (= res!544381 (noDuplicate!210 lt!414268))))

(declare-fun choose!7773 ((InoxSet B!1337)) List!12273)

(assert (=> d!346310 (= lt!414268 (choose!7773 s!1510))))

(assert (=> d!346310 (= (toList!687 s!1510) lt!414268)))

(declare-fun b!1210419 () Bool)

(assert (=> b!1210419 (= e!776503 (= (content!1735 lt!414268) s!1510))))

(assert (= (and d!346310 res!544381) b!1210419))

(declare-fun m!1386337 () Bool)

(assert (=> d!346310 m!1386337))

(declare-fun m!1386339 () Bool)

(assert (=> d!346310 m!1386339))

(declare-fun m!1386341 () Bool)

(assert (=> b!1210419 m!1386341))

(assert (=> b!1210387 d!346310))

(declare-fun d!346314 () Bool)

(assert (=> d!346314 (= (isEmpty!7299 (t!112657 lt!414256)) ((_ is Nil!12215) (t!112657 lt!414256)))))

(assert (=> b!1210388 d!346314))

(declare-fun d!346316 () Bool)

(assert (=> d!346316 (= (head!2146 lt!414256) (h!17616 lt!414256))))

(assert (=> b!1210389 d!346316))

(declare-fun condSetEmpty!7935 () Bool)

(assert (=> setNonEmpty!7930 (= condSetEmpty!7935 (= setRest!7930 ((as const (Array B!1337 Bool)) false)))))

(declare-fun setRes!7935 () Bool)

(assert (=> setNonEmpty!7930 (= tp!342845 setRes!7935)))

(declare-fun setIsEmpty!7935 () Bool)

(assert (=> setIsEmpty!7935 setRes!7935))

(declare-fun setNonEmpty!7935 () Bool)

(declare-fun tp!342850 () Bool)

(assert (=> setNonEmpty!7935 (= setRes!7935 (and tp!342850 tp_is_empty!6195))))

(declare-fun setElem!7935 () B!1337)

(declare-fun setRest!7935 () (InoxSet B!1337))

(assert (=> setNonEmpty!7935 (= setRest!7930 ((_ map or) (store ((as const (Array B!1337 Bool)) false) setElem!7935 true) setRest!7935))))

(assert (= (and setNonEmpty!7930 condSetEmpty!7935) setIsEmpty!7935))

(assert (= (and setNonEmpty!7930 (not condSetEmpty!7935)) setNonEmpty!7935))

(check-sat (not b!1210398) tp_is_empty!6195 (not b!1210399) (not setNonEmpty!7935) (not d!346304) (not d!346310) (not b!1210412) (not b!1210419))
(check-sat)
