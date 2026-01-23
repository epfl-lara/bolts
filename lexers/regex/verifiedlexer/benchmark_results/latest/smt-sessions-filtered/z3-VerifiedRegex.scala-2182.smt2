; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107904 () Bool)

(assert start!107904)

(declare-fun setNonEmpty!7942 () Bool)

(declare-fun setRes!7942 () Bool)

(declare-fun tp!342857 () Bool)

(declare-fun tp_is_empty!6199 () Bool)

(assert (=> setNonEmpty!7942 (= setRes!7942 (and tp!342857 tp_is_empty!6199))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!1341 0))(
  ( (B!1342 (val!4028 Int)) )
))
(declare-fun s!1510 () (InoxSet B!1341))

(declare-fun setElem!7942 () B!1341)

(declare-fun setRest!7942 () (InoxSet B!1341))

(assert (=> setNonEmpty!7942 (= s!1510 ((_ map or) (store ((as const (Array B!1341 Bool)) false) setElem!7942 true) setRest!7942))))

(declare-fun setIsEmpty!7942 () Bool)

(assert (=> setIsEmpty!7942 setRes!7942))

(declare-fun b!1210452 () Bool)

(declare-fun res!544412 () Bool)

(declare-fun e!776527 () Bool)

(assert (=> b!1210452 (=> (not res!544412) (not e!776527))))

(declare-fun lt!414293 () Bool)

(assert (=> b!1210452 (= res!544412 (not lt!414293))))

(declare-fun b!1210453 () Bool)

(declare-fun e!776528 () Bool)

(declare-datatypes ((List!12275 0))(
  ( (Nil!12217) (Cons!12217 (h!17618 B!1341) (t!112659 List!12275)) )
))
(declare-fun lt!414290 () List!12275)

(declare-fun isEmpty!7301 (List!12275) Bool)

(assert (=> b!1210453 (= e!776528 (not (isEmpty!7301 (t!112659 lt!414290))))))

(declare-fun b!1210451 () Bool)

(declare-fun e!776526 () Bool)

(assert (=> b!1210451 (= e!776527 (not e!776526))))

(declare-fun res!544409 () Bool)

(assert (=> b!1210451 (=> res!544409 e!776526)))

(declare-fun lt!414291 () List!12275)

(assert (=> b!1210451 (= res!544409 (or (not (= lt!414290 (Cons!12217 (h!17618 lt!414290) (t!112659 lt!414290)))) (not (= lt!414291 (t!112659 lt!414290))) (not (= (t!112659 lt!414290) lt!414291))))))

(declare-fun tail!1776 (List!12275) List!12275)

(assert (=> b!1210451 (= lt!414291 (tail!1776 lt!414290))))

(declare-fun -!84 (List!12275 B!1341) List!12275)

(assert (=> b!1210451 (= lt!414291 (-!84 lt!414290 (h!17618 lt!414290)))))

(declare-datatypes ((Unit!18592 0))(
  ( (Unit!18593) )
))
(declare-fun lt!414292 () Unit!18592)

(declare-fun lemmaNoDuplicateMinusHeadSameAsTail!12 (List!12275 B!1341) Unit!18592)

(assert (=> b!1210451 (= lt!414292 (lemmaNoDuplicateMinusHeadSameAsTail!12 lt!414290 (h!17618 lt!414290)))))

(declare-fun res!544413 () Bool)

(declare-fun e!776529 () Bool)

(assert (=> start!107904 (=> (not res!544413) (not e!776529))))

(assert (=> start!107904 (= res!544413 (not (= s!1510 ((as const (Array B!1341 Bool)) false))))))

(assert (=> start!107904 e!776529))

(declare-fun condSetEmpty!7942 () Bool)

(assert (=> start!107904 (= condSetEmpty!7942 (= s!1510 ((as const (Array B!1341 Bool)) false)))))

(assert (=> start!107904 setRes!7942))

(declare-fun b!1210454 () Bool)

(assert (=> b!1210454 (= e!776529 e!776527)))

(declare-fun res!544411 () Bool)

(assert (=> b!1210454 (=> (not res!544411) (not e!776527))))

(assert (=> b!1210454 (= res!544411 e!776528)))

(declare-fun res!544410 () Bool)

(assert (=> b!1210454 (=> res!544410 e!776528)))

(assert (=> b!1210454 (= res!544410 lt!414293)))

(get-info :version)

(assert (=> b!1210454 (= lt!414293 (not ((_ is Cons!12217) lt!414290)))))

(declare-fun toList!689 ((InoxSet B!1341)) List!12275)

(assert (=> b!1210454 (= lt!414290 (toList!689 s!1510))))

(declare-fun b!1210455 () Bool)

(declare-fun contains!2035 (List!12275 B!1341) Bool)

(assert (=> b!1210455 (= e!776526 (contains!2035 lt!414290 (h!17618 lt!414290)))))

(assert (= (and start!107904 res!544413) b!1210454))

(assert (= (and b!1210454 (not res!544410)) b!1210453))

(assert (= (and b!1210454 res!544411) b!1210452))

(assert (= (and b!1210452 res!544412) b!1210451))

(assert (= (and b!1210451 (not res!544409)) b!1210455))

(assert (= (and start!107904 condSetEmpty!7942) setIsEmpty!7942))

(assert (= (and start!107904 (not condSetEmpty!7942)) setNonEmpty!7942))

(declare-fun m!1386359 () Bool)

(assert (=> b!1210453 m!1386359))

(declare-fun m!1386361 () Bool)

(assert (=> b!1210451 m!1386361))

(declare-fun m!1386363 () Bool)

(assert (=> b!1210451 m!1386363))

(declare-fun m!1386365 () Bool)

(assert (=> b!1210451 m!1386365))

(declare-fun m!1386367 () Bool)

(assert (=> b!1210454 m!1386367))

(declare-fun m!1386369 () Bool)

(assert (=> b!1210455 m!1386369))

(check-sat (not b!1210454) (not setNonEmpty!7942) tp_is_empty!6199 (not b!1210455) (not b!1210451) (not b!1210453))
(check-sat)
(get-model)

(declare-fun d!346321 () Bool)

(declare-fun e!776538 () Bool)

(assert (=> d!346321 e!776538))

(declare-fun res!544422 () Bool)

(assert (=> d!346321 (=> (not res!544422) (not e!776538))))

(declare-fun lt!414299 () List!12275)

(declare-fun noDuplicate!211 (List!12275) Bool)

(assert (=> d!346321 (= res!544422 (noDuplicate!211 lt!414299))))

(declare-fun choose!7774 ((InoxSet B!1341)) List!12275)

(assert (=> d!346321 (= lt!414299 (choose!7774 s!1510))))

(assert (=> d!346321 (= (toList!689 s!1510) lt!414299)))

(declare-fun b!1210464 () Bool)

(declare-fun content!1737 (List!12275) (InoxSet B!1341))

(assert (=> b!1210464 (= e!776538 (= (content!1737 lt!414299) s!1510))))

(assert (= (and d!346321 res!544422) b!1210464))

(declare-fun m!1386377 () Bool)

(assert (=> d!346321 m!1386377))

(declare-fun m!1386379 () Bool)

(assert (=> d!346321 m!1386379))

(declare-fun m!1386381 () Bool)

(assert (=> b!1210464 m!1386381))

(assert (=> b!1210454 d!346321))

(declare-fun d!346325 () Bool)

(declare-fun lt!414302 () Bool)

(assert (=> d!346325 (= lt!414302 (select (content!1737 lt!414290) (h!17618 lt!414290)))))

(declare-fun e!776543 () Bool)

(assert (=> d!346325 (= lt!414302 e!776543)))

(declare-fun res!544428 () Bool)

(assert (=> d!346325 (=> (not res!544428) (not e!776543))))

(assert (=> d!346325 (= res!544428 ((_ is Cons!12217) lt!414290))))

(assert (=> d!346325 (= (contains!2035 lt!414290 (h!17618 lt!414290)) lt!414302)))

(declare-fun b!1210469 () Bool)

(declare-fun e!776544 () Bool)

(assert (=> b!1210469 (= e!776543 e!776544)))

(declare-fun res!544427 () Bool)

(assert (=> b!1210469 (=> res!544427 e!776544)))

(assert (=> b!1210469 (= res!544427 (= (h!17618 lt!414290) (h!17618 lt!414290)))))

(declare-fun b!1210470 () Bool)

(assert (=> b!1210470 (= e!776544 (contains!2035 (t!112659 lt!414290) (h!17618 lt!414290)))))

(assert (= (and d!346325 res!544428) b!1210469))

(assert (= (and b!1210469 (not res!544427)) b!1210470))

(declare-fun m!1386383 () Bool)

(assert (=> d!346325 m!1386383))

(declare-fun m!1386385 () Bool)

(assert (=> d!346325 m!1386385))

(declare-fun m!1386387 () Bool)

(assert (=> b!1210470 m!1386387))

(assert (=> b!1210455 d!346325))

(declare-fun d!346329 () Bool)

(assert (=> d!346329 (= (tail!1776 lt!414290) (t!112659 lt!414290))))

(assert (=> b!1210451 d!346329))

(declare-fun d!346331 () Bool)

(declare-fun e!776563 () Bool)

(assert (=> d!346331 e!776563))

(declare-fun res!544434 () Bool)

(assert (=> d!346331 (=> (not res!544434) (not e!776563))))

(declare-fun lt!414311 () List!12275)

(declare-fun size!9741 (List!12275) Int)

(assert (=> d!346331 (= res!544434 (<= (size!9741 lt!414311) (size!9741 lt!414290)))))

(declare-fun e!776564 () List!12275)

(assert (=> d!346331 (= lt!414311 e!776564)))

(declare-fun c!202755 () Bool)

(assert (=> d!346331 (= c!202755 ((_ is Cons!12217) lt!414290))))

(assert (=> d!346331 (= (-!84 lt!414290 (h!17618 lt!414290)) lt!414311)))

(declare-fun b!1210496 () Bool)

(declare-fun e!776565 () List!12275)

(declare-fun call!84439 () List!12275)

(assert (=> b!1210496 (= e!776565 call!84439)))

(declare-fun b!1210497 () Bool)

(assert (=> b!1210497 (= e!776564 e!776565)))

(declare-fun c!202756 () Bool)

(assert (=> b!1210497 (= c!202756 (= (h!17618 lt!414290) (h!17618 lt!414290)))))

(declare-fun bm!84434 () Bool)

(assert (=> bm!84434 (= call!84439 (-!84 (t!112659 lt!414290) (h!17618 lt!414290)))))

(declare-fun b!1210498 () Bool)

(assert (=> b!1210498 (= e!776565 (Cons!12217 (h!17618 lt!414290) call!84439))))

(declare-fun b!1210499 () Bool)

(assert (=> b!1210499 (= e!776563 (= (content!1737 lt!414311) ((_ map and) (content!1737 lt!414290) ((_ map not) (store ((as const (Array B!1341 Bool)) false) (h!17618 lt!414290) true)))))))

(declare-fun b!1210500 () Bool)

(assert (=> b!1210500 (= e!776564 Nil!12217)))

(assert (= (and d!346331 c!202755) b!1210497))

(assert (= (and d!346331 (not c!202755)) b!1210500))

(assert (= (and b!1210497 c!202756) b!1210496))

(assert (= (and b!1210497 (not c!202756)) b!1210498))

(assert (= (or b!1210496 b!1210498) bm!84434))

(assert (= (and d!346331 res!544434) b!1210499))

(declare-fun m!1386403 () Bool)

(assert (=> d!346331 m!1386403))

(declare-fun m!1386405 () Bool)

(assert (=> d!346331 m!1386405))

(declare-fun m!1386407 () Bool)

(assert (=> bm!84434 m!1386407))

(declare-fun m!1386409 () Bool)

(assert (=> b!1210499 m!1386409))

(assert (=> b!1210499 m!1386383))

(declare-fun m!1386411 () Bool)

(assert (=> b!1210499 m!1386411))

(assert (=> b!1210451 d!346331))

(declare-fun d!346339 () Bool)

(assert (=> d!346339 (= (-!84 lt!414290 (h!17618 lt!414290)) (tail!1776 lt!414290))))

(declare-fun lt!414317 () Unit!18592)

(declare-fun choose!7776 (List!12275 B!1341) Unit!18592)

(assert (=> d!346339 (= lt!414317 (choose!7776 lt!414290 (h!17618 lt!414290)))))

(assert (=> d!346339 (noDuplicate!211 lt!414290)))

(assert (=> d!346339 (= (lemmaNoDuplicateMinusHeadSameAsTail!12 lt!414290 (h!17618 lt!414290)) lt!414317)))

(declare-fun bs!288608 () Bool)

(assert (= bs!288608 d!346339))

(assert (=> bs!288608 m!1386363))

(assert (=> bs!288608 m!1386361))

(declare-fun m!1386419 () Bool)

(assert (=> bs!288608 m!1386419))

(declare-fun m!1386421 () Bool)

(assert (=> bs!288608 m!1386421))

(assert (=> b!1210451 d!346339))

(declare-fun d!346341 () Bool)

(assert (=> d!346341 (= (isEmpty!7301 (t!112659 lt!414290)) ((_ is Nil!12217) (t!112659 lt!414290)))))

(assert (=> b!1210453 d!346341))

(declare-fun condSetEmpty!7948 () Bool)

(assert (=> setNonEmpty!7942 (= condSetEmpty!7948 (= setRest!7942 ((as const (Array B!1341 Bool)) false)))))

(declare-fun setRes!7948 () Bool)

(assert (=> setNonEmpty!7942 (= tp!342857 setRes!7948)))

(declare-fun setIsEmpty!7948 () Bool)

(assert (=> setIsEmpty!7948 setRes!7948))

(declare-fun setNonEmpty!7948 () Bool)

(declare-fun tp!342863 () Bool)

(assert (=> setNonEmpty!7948 (= setRes!7948 (and tp!342863 tp_is_empty!6199))))

(declare-fun setElem!7948 () B!1341)

(declare-fun setRest!7948 () (InoxSet B!1341))

(assert (=> setNonEmpty!7948 (= setRest!7942 ((_ map or) (store ((as const (Array B!1341 Bool)) false) setElem!7948 true) setRest!7948))))

(assert (= (and setNonEmpty!7942 condSetEmpty!7948) setIsEmpty!7948))

(assert (= (and setNonEmpty!7942 (not condSetEmpty!7948)) setNonEmpty!7948))

(check-sat (not d!346331) (not b!1210464) tp_is_empty!6199 (not bm!84434) (not setNonEmpty!7948) (not d!346321) (not b!1210499) (not d!346339) (not d!346325) (not b!1210470))
(check-sat)
