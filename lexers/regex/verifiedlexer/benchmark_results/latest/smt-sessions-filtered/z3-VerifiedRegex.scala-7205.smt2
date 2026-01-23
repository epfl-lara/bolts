; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384232 () Bool)

(assert start!384232)

(declare-fun b!4071278 () Bool)

(declare-fun e!2526705 () Bool)

(declare-datatypes ((B!2609 0))(
  ( (B!2610 (val!14090 Int)) )
))
(declare-datatypes ((List!43613 0))(
  ( (Nil!43489) (Cons!43489 (h!48909 B!2609) (t!337060 List!43613)) )
))
(declare-fun p!1991 () List!43613)

(declare-fun ListPrimitiveSize!275 (List!43613) Int)

(assert (=> b!4071278 (= e!2526705 (>= (ListPrimitiveSize!275 (t!337060 p!1991)) (ListPrimitiveSize!275 p!1991)))))

(declare-fun res!1662462 () Bool)

(assert (=> start!384232 (=> (not res!1662462) (not e!2526705))))

(declare-fun l!3332 () List!43613)

(declare-fun isPrefix!4085 (List!43613 List!43613) Bool)

(assert (=> start!384232 (= res!1662462 (isPrefix!4085 p!1991 l!3332))))

(assert (=> start!384232 e!2526705))

(declare-fun e!2526706 () Bool)

(assert (=> start!384232 e!2526706))

(declare-fun e!2526704 () Bool)

(assert (=> start!384232 e!2526704))

(declare-fun b!4071279 () Bool)

(declare-fun res!1662464 () Bool)

(assert (=> b!4071279 (=> (not res!1662464) (not e!2526705))))

(get-info :version)

(assert (=> b!4071279 (= res!1662464 ((_ is Cons!43489) p!1991))))

(declare-fun b!4071280 () Bool)

(declare-fun tp_is_empty!20777 () Bool)

(declare-fun tp!1231958 () Bool)

(assert (=> b!4071280 (= e!2526706 (and tp_is_empty!20777 tp!1231958))))

(declare-fun b!4071281 () Bool)

(declare-fun tp!1231957 () Bool)

(assert (=> b!4071281 (= e!2526704 (and tp_is_empty!20777 tp!1231957))))

(declare-fun b!4071282 () Bool)

(declare-fun res!1662463 () Bool)

(assert (=> b!4071282 (=> (not res!1662463) (not e!2526705))))

(declare-fun tail!6331 (List!43613) List!43613)

(assert (=> b!4071282 (= res!1662463 (isPrefix!4085 (t!337060 p!1991) (tail!6331 l!3332)))))

(assert (= (and start!384232 res!1662462) b!4071279))

(assert (= (and b!4071279 res!1662464) b!4071282))

(assert (= (and b!4071282 res!1662463) b!4071278))

(assert (= (and start!384232 ((_ is Cons!43489) p!1991)) b!4071280))

(assert (= (and start!384232 ((_ is Cons!43489) l!3332)) b!4071281))

(declare-fun m!4680531 () Bool)

(assert (=> b!4071278 m!4680531))

(declare-fun m!4680533 () Bool)

(assert (=> b!4071278 m!4680533))

(declare-fun m!4680535 () Bool)

(assert (=> start!384232 m!4680535))

(declare-fun m!4680537 () Bool)

(assert (=> b!4071282 m!4680537))

(assert (=> b!4071282 m!4680537))

(declare-fun m!4680539 () Bool)

(assert (=> b!4071282 m!4680539))

(check-sat (not start!384232) (not b!4071278) (not b!4071282) tp_is_empty!20777 (not b!4071280) (not b!4071281))
(check-sat)
(get-model)

(declare-fun b!4071309 () Bool)

(declare-fun e!2526727 () Bool)

(assert (=> b!4071309 (= e!2526727 (isPrefix!4085 (tail!6331 p!1991) (tail!6331 l!3332)))))

(declare-fun b!4071308 () Bool)

(declare-fun res!1662492 () Bool)

(assert (=> b!4071308 (=> (not res!1662492) (not e!2526727))))

(declare-fun head!8597 (List!43613) B!2609)

(assert (=> b!4071308 (= res!1662492 (= (head!8597 p!1991) (head!8597 l!3332)))))

(declare-fun d!1210176 () Bool)

(declare-fun e!2526725 () Bool)

(assert (=> d!1210176 e!2526725))

(declare-fun res!1662489 () Bool)

(assert (=> d!1210176 (=> res!1662489 e!2526725)))

(declare-fun lt!1457464 () Bool)

(assert (=> d!1210176 (= res!1662489 (not lt!1457464))))

(declare-fun e!2526726 () Bool)

(assert (=> d!1210176 (= lt!1457464 e!2526726)))

(declare-fun res!1662491 () Bool)

(assert (=> d!1210176 (=> res!1662491 e!2526726)))

(assert (=> d!1210176 (= res!1662491 ((_ is Nil!43489) p!1991))))

(assert (=> d!1210176 (= (isPrefix!4085 p!1991 l!3332) lt!1457464)))

(declare-fun b!4071307 () Bool)

(assert (=> b!4071307 (= e!2526726 e!2526727)))

(declare-fun res!1662490 () Bool)

(assert (=> b!4071307 (=> (not res!1662490) (not e!2526727))))

(assert (=> b!4071307 (= res!1662490 (not ((_ is Nil!43489) l!3332)))))

(declare-fun b!4071310 () Bool)

(declare-fun size!32514 (List!43613) Int)

(assert (=> b!4071310 (= e!2526725 (>= (size!32514 l!3332) (size!32514 p!1991)))))

(assert (= (and d!1210176 (not res!1662491)) b!4071307))

(assert (= (and b!4071307 res!1662490) b!4071308))

(assert (= (and b!4071308 res!1662492) b!4071309))

(assert (= (and d!1210176 (not res!1662489)) b!4071310))

(declare-fun m!4680567 () Bool)

(assert (=> b!4071309 m!4680567))

(assert (=> b!4071309 m!4680537))

(assert (=> b!4071309 m!4680567))

(assert (=> b!4071309 m!4680537))

(declare-fun m!4680569 () Bool)

(assert (=> b!4071309 m!4680569))

(declare-fun m!4680571 () Bool)

(assert (=> b!4071308 m!4680571))

(declare-fun m!4680573 () Bool)

(assert (=> b!4071308 m!4680573))

(declare-fun m!4680575 () Bool)

(assert (=> b!4071310 m!4680575))

(declare-fun m!4680577 () Bool)

(assert (=> b!4071310 m!4680577))

(assert (=> start!384232 d!1210176))

(declare-fun d!1210184 () Bool)

(declare-fun lt!1457471 () Int)

(assert (=> d!1210184 (>= lt!1457471 0)))

(declare-fun e!2526734 () Int)

(assert (=> d!1210184 (= lt!1457471 e!2526734)))

(declare-fun c!702714 () Bool)

(assert (=> d!1210184 (= c!702714 ((_ is Nil!43489) (t!337060 p!1991)))))

(assert (=> d!1210184 (= (ListPrimitiveSize!275 (t!337060 p!1991)) lt!1457471)))

(declare-fun b!4071323 () Bool)

(assert (=> b!4071323 (= e!2526734 0)))

(declare-fun b!4071324 () Bool)

(assert (=> b!4071324 (= e!2526734 (+ 1 (ListPrimitiveSize!275 (t!337060 (t!337060 p!1991)))))))

(assert (= (and d!1210184 c!702714) b!4071323))

(assert (= (and d!1210184 (not c!702714)) b!4071324))

(declare-fun m!4680581 () Bool)

(assert (=> b!4071324 m!4680581))

(assert (=> b!4071278 d!1210184))

(declare-fun d!1210188 () Bool)

(declare-fun lt!1457472 () Int)

(assert (=> d!1210188 (>= lt!1457472 0)))

(declare-fun e!2526737 () Int)

(assert (=> d!1210188 (= lt!1457472 e!2526737)))

(declare-fun c!702715 () Bool)

(assert (=> d!1210188 (= c!702715 ((_ is Nil!43489) p!1991))))

(assert (=> d!1210188 (= (ListPrimitiveSize!275 p!1991) lt!1457472)))

(declare-fun b!4071329 () Bool)

(assert (=> b!4071329 (= e!2526737 0)))

(declare-fun b!4071330 () Bool)

(assert (=> b!4071330 (= e!2526737 (+ 1 (ListPrimitiveSize!275 (t!337060 p!1991))))))

(assert (= (and d!1210188 c!702715) b!4071329))

(assert (= (and d!1210188 (not c!702715)) b!4071330))

(assert (=> b!4071330 m!4680531))

(assert (=> b!4071278 d!1210188))

(declare-fun b!4071333 () Bool)

(declare-fun e!2526740 () Bool)

(assert (=> b!4071333 (= e!2526740 (isPrefix!4085 (tail!6331 (t!337060 p!1991)) (tail!6331 (tail!6331 l!3332))))))

(declare-fun b!4071332 () Bool)

(declare-fun res!1662496 () Bool)

(assert (=> b!4071332 (=> (not res!1662496) (not e!2526740))))

(assert (=> b!4071332 (= res!1662496 (= (head!8597 (t!337060 p!1991)) (head!8597 (tail!6331 l!3332))))))

(declare-fun d!1210190 () Bool)

(declare-fun e!2526738 () Bool)

(assert (=> d!1210190 e!2526738))

(declare-fun res!1662493 () Bool)

(assert (=> d!1210190 (=> res!1662493 e!2526738)))

(declare-fun lt!1457473 () Bool)

(assert (=> d!1210190 (= res!1662493 (not lt!1457473))))

(declare-fun e!2526739 () Bool)

(assert (=> d!1210190 (= lt!1457473 e!2526739)))

(declare-fun res!1662495 () Bool)

(assert (=> d!1210190 (=> res!1662495 e!2526739)))

(assert (=> d!1210190 (= res!1662495 ((_ is Nil!43489) (t!337060 p!1991)))))

(assert (=> d!1210190 (= (isPrefix!4085 (t!337060 p!1991) (tail!6331 l!3332)) lt!1457473)))

(declare-fun b!4071331 () Bool)

(assert (=> b!4071331 (= e!2526739 e!2526740)))

(declare-fun res!1662494 () Bool)

(assert (=> b!4071331 (=> (not res!1662494) (not e!2526740))))

(assert (=> b!4071331 (= res!1662494 (not ((_ is Nil!43489) (tail!6331 l!3332))))))

(declare-fun b!4071334 () Bool)

(assert (=> b!4071334 (= e!2526738 (>= (size!32514 (tail!6331 l!3332)) (size!32514 (t!337060 p!1991))))))

(assert (= (and d!1210190 (not res!1662495)) b!4071331))

(assert (= (and b!4071331 res!1662494) b!4071332))

(assert (= (and b!4071332 res!1662496) b!4071333))

(assert (= (and d!1210190 (not res!1662493)) b!4071334))

(declare-fun m!4680583 () Bool)

(assert (=> b!4071333 m!4680583))

(assert (=> b!4071333 m!4680537))

(declare-fun m!4680585 () Bool)

(assert (=> b!4071333 m!4680585))

(assert (=> b!4071333 m!4680583))

(assert (=> b!4071333 m!4680585))

(declare-fun m!4680587 () Bool)

(assert (=> b!4071333 m!4680587))

(declare-fun m!4680589 () Bool)

(assert (=> b!4071332 m!4680589))

(assert (=> b!4071332 m!4680537))

(declare-fun m!4680591 () Bool)

(assert (=> b!4071332 m!4680591))

(assert (=> b!4071334 m!4680537))

(declare-fun m!4680593 () Bool)

(assert (=> b!4071334 m!4680593))

(declare-fun m!4680595 () Bool)

(assert (=> b!4071334 m!4680595))

(assert (=> b!4071282 d!1210190))

(declare-fun d!1210192 () Bool)

(assert (=> d!1210192 (= (tail!6331 l!3332) (t!337060 l!3332))))

(assert (=> b!4071282 d!1210192))

(declare-fun b!4071341 () Bool)

(declare-fun e!2526745 () Bool)

(declare-fun tp!1231965 () Bool)

(assert (=> b!4071341 (= e!2526745 (and tp_is_empty!20777 tp!1231965))))

(assert (=> b!4071281 (= tp!1231957 e!2526745)))

(assert (= (and b!4071281 ((_ is Cons!43489) (t!337060 l!3332))) b!4071341))

(declare-fun b!4071342 () Bool)

(declare-fun e!2526746 () Bool)

(declare-fun tp!1231966 () Bool)

(assert (=> b!4071342 (= e!2526746 (and tp_is_empty!20777 tp!1231966))))

(assert (=> b!4071280 (= tp!1231958 e!2526746)))

(assert (= (and b!4071280 ((_ is Cons!43489) (t!337060 p!1991))) b!4071342))

(check-sat (not b!4071333) (not b!4071310) (not b!4071309) (not b!4071341) tp_is_empty!20777 (not b!4071334) (not b!4071324) (not b!4071308) (not b!4071332) (not b!4071330) (not b!4071342))
(check-sat)
