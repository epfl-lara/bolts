; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46080 () Bool)

(assert start!46080)

(declare-fun b!510494 () Bool)

(declare-fun e!304935 () Bool)

(declare-fun tp_is_empty!2391 () Bool)

(declare-fun tp!158818 () Bool)

(assert (=> b!510494 (= e!304935 (and tp_is_empty!2391 tp!158818))))

(declare-fun b!510495 () Bool)

(declare-fun e!304934 () Bool)

(declare-fun tp!158819 () Bool)

(assert (=> b!510495 (= e!304934 (and tp_is_empty!2391 tp!158819))))

(declare-fun b!510496 () Bool)

(declare-fun res!216602 () Bool)

(declare-fun e!304933 () Bool)

(assert (=> b!510496 (=> (not res!216602) (not e!304933))))

(declare-datatypes ((B!1005 0))(
  ( (B!1006 (val!1644 Int)) )
))
(declare-datatypes ((List!4617 0))(
  ( (Nil!4607) (Cons!4607 (h!10004 B!1005) (t!73135 List!4617)) )
))
(declare-fun p!1985 () List!4617)

(declare-fun l!3306 () List!4617)

(declare-fun size!3713 (List!4617) Int)

(assert (=> b!510496 (= res!216602 (< (size!3713 p!1985) (size!3713 l!3306)))))

(declare-fun b!510497 () Bool)

(declare-fun ListPrimitiveSize!42 (List!4617) Int)

(assert (=> b!510497 (= e!304933 (< (ListPrimitiveSize!42 p!1985) 0))))

(declare-fun res!216603 () Bool)

(assert (=> start!46080 (=> (not res!216603) (not e!304933))))

(declare-fun isEmpty!3561 (List!4617) Bool)

(assert (=> start!46080 (= res!216603 (not (isEmpty!3561 l!3306)))))

(assert (=> start!46080 e!304933))

(assert (=> start!46080 e!304935))

(assert (=> start!46080 e!304934))

(declare-fun b!510498 () Bool)

(declare-fun res!216601 () Bool)

(assert (=> b!510498 (=> (not res!216601) (not e!304933))))

(declare-fun isPrefix!539 (List!4617 List!4617) Bool)

(assert (=> b!510498 (= res!216601 (isPrefix!539 p!1985 l!3306))))

(assert (= (and start!46080 res!216603) b!510498))

(assert (= (and b!510498 res!216601) b!510496))

(assert (= (and b!510496 res!216602) b!510497))

(get-info :version)

(assert (= (and start!46080 ((_ is Cons!4607) l!3306)) b!510494))

(assert (= (and start!46080 ((_ is Cons!4607) p!1985)) b!510495))

(declare-fun m!757357 () Bool)

(assert (=> b!510496 m!757357))

(declare-fun m!757359 () Bool)

(assert (=> b!510496 m!757359))

(declare-fun m!757361 () Bool)

(assert (=> b!510497 m!757361))

(declare-fun m!757363 () Bool)

(assert (=> start!46080 m!757363))

(declare-fun m!757365 () Bool)

(assert (=> b!510498 m!757365))

(check-sat (not b!510495) (not b!510494) tp_is_empty!2391 (not start!46080) (not b!510496) (not b!510497) (not b!510498))
(check-sat)
(get-model)

(declare-fun d!183489 () Bool)

(assert (=> d!183489 (= (isEmpty!3561 l!3306) ((_ is Nil!4607) l!3306))))

(assert (=> start!46080 d!183489))

(declare-fun b!510521 () Bool)

(declare-fun e!304949 () Bool)

(declare-fun e!304950 () Bool)

(assert (=> b!510521 (= e!304949 e!304950)))

(declare-fun res!216613 () Bool)

(assert (=> b!510521 (=> (not res!216613) (not e!304950))))

(assert (=> b!510521 (= res!216613 (not ((_ is Nil!4607) l!3306)))))

(declare-fun b!510523 () Bool)

(declare-fun tail!673 (List!4617) List!4617)

(assert (=> b!510523 (= e!304950 (isPrefix!539 (tail!673 p!1985) (tail!673 l!3306)))))

(declare-fun b!510524 () Bool)

(declare-fun e!304951 () Bool)

(assert (=> b!510524 (= e!304951 (>= (size!3713 l!3306) (size!3713 p!1985)))))

(declare-fun d!183491 () Bool)

(assert (=> d!183491 e!304951))

(declare-fun res!216612 () Bool)

(assert (=> d!183491 (=> res!216612 e!304951)))

(declare-fun lt!211770 () Bool)

(assert (=> d!183491 (= res!216612 (not lt!211770))))

(assert (=> d!183491 (= lt!211770 e!304949)))

(declare-fun res!216615 () Bool)

(assert (=> d!183491 (=> res!216615 e!304949)))

(assert (=> d!183491 (= res!216615 ((_ is Nil!4607) p!1985))))

(assert (=> d!183491 (= (isPrefix!539 p!1985 l!3306) lt!211770)))

(declare-fun b!510522 () Bool)

(declare-fun res!216614 () Bool)

(assert (=> b!510522 (=> (not res!216614) (not e!304950))))

(declare-fun head!1149 (List!4617) B!1005)

(assert (=> b!510522 (= res!216614 (= (head!1149 p!1985) (head!1149 l!3306)))))

(assert (= (and d!183491 (not res!216615)) b!510521))

(assert (= (and b!510521 res!216613) b!510522))

(assert (= (and b!510522 res!216614) b!510523))

(assert (= (and d!183491 (not res!216612)) b!510524))

(declare-fun m!757373 () Bool)

(assert (=> b!510523 m!757373))

(declare-fun m!757375 () Bool)

(assert (=> b!510523 m!757375))

(assert (=> b!510523 m!757373))

(assert (=> b!510523 m!757375))

(declare-fun m!757377 () Bool)

(assert (=> b!510523 m!757377))

(assert (=> b!510524 m!757359))

(assert (=> b!510524 m!757357))

(declare-fun m!757379 () Bool)

(assert (=> b!510522 m!757379))

(declare-fun m!757381 () Bool)

(assert (=> b!510522 m!757381))

(assert (=> b!510498 d!183491))

(declare-fun d!183501 () Bool)

(declare-fun lt!211775 () Int)

(assert (=> d!183501 (>= lt!211775 0)))

(declare-fun e!304960 () Int)

(assert (=> d!183501 (= lt!211775 e!304960)))

(declare-fun c!99320 () Bool)

(assert (=> d!183501 (= c!99320 ((_ is Nil!4607) p!1985))))

(assert (=> d!183501 (= (ListPrimitiveSize!42 p!1985) lt!211775)))

(declare-fun b!510537 () Bool)

(assert (=> b!510537 (= e!304960 0)))

(declare-fun b!510538 () Bool)

(assert (=> b!510538 (= e!304960 (+ 1 (ListPrimitiveSize!42 (t!73135 p!1985))))))

(assert (= (and d!183501 c!99320) b!510537))

(assert (= (and d!183501 (not c!99320)) b!510538))

(declare-fun m!757383 () Bool)

(assert (=> b!510538 m!757383))

(assert (=> b!510497 d!183501))

(declare-fun d!183503 () Bool)

(declare-fun lt!211779 () Int)

(assert (=> d!183503 (>= lt!211779 0)))

(declare-fun e!304968 () Int)

(assert (=> d!183503 (= lt!211779 e!304968)))

(declare-fun c!99323 () Bool)

(assert (=> d!183503 (= c!99323 ((_ is Nil!4607) p!1985))))

(assert (=> d!183503 (= (size!3713 p!1985) lt!211779)))

(declare-fun b!510551 () Bool)

(assert (=> b!510551 (= e!304968 0)))

(declare-fun b!510552 () Bool)

(assert (=> b!510552 (= e!304968 (+ 1 (size!3713 (t!73135 p!1985))))))

(assert (= (and d!183503 c!99323) b!510551))

(assert (= (and d!183503 (not c!99323)) b!510552))

(declare-fun m!757395 () Bool)

(assert (=> b!510552 m!757395))

(assert (=> b!510496 d!183503))

(declare-fun d!183505 () Bool)

(declare-fun lt!211780 () Int)

(assert (=> d!183505 (>= lt!211780 0)))

(declare-fun e!304971 () Int)

(assert (=> d!183505 (= lt!211780 e!304971)))

(declare-fun c!99324 () Bool)

(assert (=> d!183505 (= c!99324 ((_ is Nil!4607) l!3306))))

(assert (=> d!183505 (= (size!3713 l!3306) lt!211780)))

(declare-fun b!510555 () Bool)

(assert (=> b!510555 (= e!304971 0)))

(declare-fun b!510556 () Bool)

(assert (=> b!510556 (= e!304971 (+ 1 (size!3713 (t!73135 l!3306))))))

(assert (= (and d!183505 c!99324) b!510555))

(assert (= (and d!183505 (not c!99324)) b!510556))

(declare-fun m!757397 () Bool)

(assert (=> b!510556 m!757397))

(assert (=> b!510496 d!183505))

(declare-fun b!510561 () Bool)

(declare-fun e!304974 () Bool)

(declare-fun tp!158826 () Bool)

(assert (=> b!510561 (= e!304974 (and tp_is_empty!2391 tp!158826))))

(assert (=> b!510495 (= tp!158819 e!304974)))

(assert (= (and b!510495 ((_ is Cons!4607) (t!73135 p!1985))) b!510561))

(declare-fun b!510562 () Bool)

(declare-fun e!304975 () Bool)

(declare-fun tp!158827 () Bool)

(assert (=> b!510562 (= e!304975 (and tp_is_empty!2391 tp!158827))))

(assert (=> b!510494 (= tp!158818 e!304975)))

(assert (= (and b!510494 ((_ is Cons!4607) (t!73135 l!3306))) b!510562))

(check-sat (not b!510522) (not b!510562) (not b!510524) (not b!510561) tp_is_empty!2391 (not b!510552) (not b!510556) (not b!510538) (not b!510523))
(check-sat)
