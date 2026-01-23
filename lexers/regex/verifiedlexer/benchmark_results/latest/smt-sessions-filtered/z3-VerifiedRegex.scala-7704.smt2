; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405170 () Bool)

(assert start!405170)

(declare-fun res!1741603 () Bool)

(declare-fun e!2629218 () Bool)

(assert (=> start!405170 (=> (not res!1741603) (not e!2629218))))

(declare-datatypes ((B!2769 0))(
  ( (B!2770 (val!15086 Int)) )
))
(declare-datatypes ((List!46883 0))(
  ( (Nil!46759) (Cons!46759 (h!52179 B!2769) (t!349586 List!46883)) )
))
(declare-fun l!3106 () List!46883)

(declare-fun e1!42 () B!2769)

(declare-fun contains!9703 (List!46883 B!2769) Bool)

(assert (=> start!405170 (= res!1741603 (contains!9703 l!3106 e1!42))))

(assert (=> start!405170 e!2629218))

(declare-fun e!2629216 () Bool)

(assert (=> start!405170 e!2629216))

(declare-fun tp_is_empty!22585 () Bool)

(assert (=> start!405170 tp_is_empty!22585))

(declare-fun b!4234441 () Bool)

(declare-fun e!2629217 () Bool)

(assert (=> b!4234441 (= e!2629218 e!2629217)))

(declare-fun res!1741601 () Bool)

(assert (=> b!4234441 (=> (not res!1741601) (not e!2629217))))

(declare-fun lt!1505555 () Int)

(declare-fun e2!42 () B!2769)

(declare-fun getIndex!902 (List!46883 B!2769) Int)

(assert (=> b!4234441 (= res!1741601 (= lt!1505555 (getIndex!902 l!3106 e2!42)))))

(assert (=> b!4234441 (= lt!1505555 (getIndex!902 l!3106 e1!42))))

(declare-fun b!4234442 () Bool)

(declare-fun e!2629215 () Bool)

(assert (=> b!4234442 (= e!2629217 e!2629215)))

(declare-fun res!1741600 () Bool)

(assert (=> b!4234442 (=> (not res!1741600) (not e!2629215))))

(declare-fun lt!1505556 () List!46883)

(assert (=> b!4234442 (= res!1741600 (contains!9703 lt!1505556 e1!42))))

(declare-fun tail!6828 (List!46883) List!46883)

(assert (=> b!4234442 (= lt!1505556 (tail!6828 l!3106))))

(declare-fun b!4234443 () Bool)

(declare-fun tp!1296616 () Bool)

(assert (=> b!4234443 (= e!2629216 (and tp_is_empty!22585 tp!1296616))))

(declare-fun b!4234444 () Bool)

(declare-fun res!1741604 () Bool)

(assert (=> b!4234444 (=> (not res!1741604) (not e!2629218))))

(assert (=> b!4234444 (= res!1741604 (contains!9703 l!3106 e2!42))))

(declare-fun b!4234445 () Bool)

(assert (=> b!4234445 (= e!2629215 (not (contains!9703 lt!1505556 e2!42)))))

(declare-fun b!4234446 () Bool)

(declare-fun res!1741602 () Bool)

(assert (=> b!4234446 (=> (not res!1741602) (not e!2629217))))

(assert (=> b!4234446 (= res!1741602 (not (= lt!1505555 0)))))

(assert (= (and start!405170 res!1741603) b!4234444))

(assert (= (and b!4234444 res!1741604) b!4234441))

(assert (= (and b!4234441 res!1741601) b!4234446))

(assert (= (and b!4234446 res!1741602) b!4234442))

(assert (= (and b!4234442 res!1741600) b!4234445))

(get-info :version)

(assert (= (and start!405170 ((_ is Cons!46759) l!3106)) b!4234443))

(declare-fun m!4820541 () Bool)

(assert (=> start!405170 m!4820541))

(declare-fun m!4820543 () Bool)

(assert (=> b!4234444 m!4820543))

(declare-fun m!4820545 () Bool)

(assert (=> b!4234441 m!4820545))

(declare-fun m!4820547 () Bool)

(assert (=> b!4234441 m!4820547))

(declare-fun m!4820549 () Bool)

(assert (=> b!4234445 m!4820549))

(declare-fun m!4820551 () Bool)

(assert (=> b!4234442 m!4820551))

(declare-fun m!4820553 () Bool)

(assert (=> b!4234442 m!4820553))

(check-sat (not b!4234442) (not b!4234441) (not b!4234445) tp_is_empty!22585 (not b!4234443) (not start!405170) (not b!4234444))
(check-sat)
(get-model)

(declare-fun d!1245995 () Bool)

(declare-fun lt!1505564 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7357 (List!46883) (InoxSet B!2769))

(assert (=> d!1245995 (= lt!1505564 (select (content!7357 lt!1505556) e2!42))))

(declare-fun e!2629233 () Bool)

(assert (=> d!1245995 (= lt!1505564 e!2629233)))

(declare-fun res!1741619 () Bool)

(assert (=> d!1245995 (=> (not res!1741619) (not e!2629233))))

(assert (=> d!1245995 (= res!1741619 ((_ is Cons!46759) lt!1505556))))

(assert (=> d!1245995 (= (contains!9703 lt!1505556 e2!42) lt!1505564)))

(declare-fun b!4234461 () Bool)

(declare-fun e!2629234 () Bool)

(assert (=> b!4234461 (= e!2629233 e!2629234)))

(declare-fun res!1741620 () Bool)

(assert (=> b!4234461 (=> res!1741620 e!2629234)))

(assert (=> b!4234461 (= res!1741620 (= (h!52179 lt!1505556) e2!42))))

(declare-fun b!4234462 () Bool)

(assert (=> b!4234462 (= e!2629234 (contains!9703 (t!349586 lt!1505556) e2!42))))

(assert (= (and d!1245995 res!1741619) b!4234461))

(assert (= (and b!4234461 (not res!1741620)) b!4234462))

(declare-fun m!4820571 () Bool)

(assert (=> d!1245995 m!4820571))

(declare-fun m!4820573 () Bool)

(assert (=> d!1245995 m!4820573))

(declare-fun m!4820575 () Bool)

(assert (=> b!4234462 m!4820575))

(assert (=> b!4234445 d!1245995))

(declare-fun d!1246003 () Bool)

(declare-fun lt!1505565 () Bool)

(assert (=> d!1246003 (= lt!1505565 (select (content!7357 l!3106) e2!42))))

(declare-fun e!2629235 () Bool)

(assert (=> d!1246003 (= lt!1505565 e!2629235)))

(declare-fun res!1741621 () Bool)

(assert (=> d!1246003 (=> (not res!1741621) (not e!2629235))))

(assert (=> d!1246003 (= res!1741621 ((_ is Cons!46759) l!3106))))

(assert (=> d!1246003 (= (contains!9703 l!3106 e2!42) lt!1505565)))

(declare-fun b!4234463 () Bool)

(declare-fun e!2629236 () Bool)

(assert (=> b!4234463 (= e!2629235 e!2629236)))

(declare-fun res!1741622 () Bool)

(assert (=> b!4234463 (=> res!1741622 e!2629236)))

(assert (=> b!4234463 (= res!1741622 (= (h!52179 l!3106) e2!42))))

(declare-fun b!4234464 () Bool)

(assert (=> b!4234464 (= e!2629236 (contains!9703 (t!349586 l!3106) e2!42))))

(assert (= (and d!1246003 res!1741621) b!4234463))

(assert (= (and b!4234463 (not res!1741622)) b!4234464))

(declare-fun m!4820577 () Bool)

(assert (=> d!1246003 m!4820577))

(declare-fun m!4820579 () Bool)

(assert (=> d!1246003 m!4820579))

(declare-fun m!4820581 () Bool)

(assert (=> b!4234464 m!4820581))

(assert (=> b!4234444 d!1246003))

(declare-fun b!4234491 () Bool)

(declare-fun e!2629253 () Int)

(assert (=> b!4234491 (= e!2629253 0)))

(declare-fun b!4234493 () Bool)

(declare-fun e!2629254 () Int)

(assert (=> b!4234493 (= e!2629254 (+ 1 (getIndex!902 (t!349586 l!3106) e2!42)))))

(declare-fun b!4234494 () Bool)

(assert (=> b!4234494 (= e!2629254 (- 1))))

(declare-fun b!4234492 () Bool)

(assert (=> b!4234492 (= e!2629253 e!2629254)))

(declare-fun c!719801 () Bool)

(assert (=> b!4234492 (= c!719801 (and ((_ is Cons!46759) l!3106) (not (= (h!52179 l!3106) e2!42))))))

(declare-fun d!1246005 () Bool)

(declare-fun lt!1505573 () Int)

(assert (=> d!1246005 (>= lt!1505573 0)))

(assert (=> d!1246005 (= lt!1505573 e!2629253)))

(declare-fun c!719800 () Bool)

(assert (=> d!1246005 (= c!719800 (and ((_ is Cons!46759) l!3106) (= (h!52179 l!3106) e2!42)))))

(assert (=> d!1246005 (contains!9703 l!3106 e2!42)))

(assert (=> d!1246005 (= (getIndex!902 l!3106 e2!42) lt!1505573)))

(assert (= (and d!1246005 c!719800) b!4234491))

(assert (= (and d!1246005 (not c!719800)) b!4234492))

(assert (= (and b!4234492 c!719801) b!4234493))

(assert (= (and b!4234492 (not c!719801)) b!4234494))

(declare-fun m!4820591 () Bool)

(assert (=> b!4234493 m!4820591))

(assert (=> d!1246005 m!4820543))

(assert (=> b!4234441 d!1246005))

(declare-fun b!4234499 () Bool)

(declare-fun e!2629257 () Int)

(assert (=> b!4234499 (= e!2629257 0)))

(declare-fun b!4234501 () Bool)

(declare-fun e!2629258 () Int)

(assert (=> b!4234501 (= e!2629258 (+ 1 (getIndex!902 (t!349586 l!3106) e1!42)))))

(declare-fun b!4234502 () Bool)

(assert (=> b!4234502 (= e!2629258 (- 1))))

(declare-fun b!4234500 () Bool)

(assert (=> b!4234500 (= e!2629257 e!2629258)))

(declare-fun c!719803 () Bool)

(assert (=> b!4234500 (= c!719803 (and ((_ is Cons!46759) l!3106) (not (= (h!52179 l!3106) e1!42))))))

(declare-fun d!1246013 () Bool)

(declare-fun lt!1505574 () Int)

(assert (=> d!1246013 (>= lt!1505574 0)))

(assert (=> d!1246013 (= lt!1505574 e!2629257)))

(declare-fun c!719802 () Bool)

(assert (=> d!1246013 (= c!719802 (and ((_ is Cons!46759) l!3106) (= (h!52179 l!3106) e1!42)))))

(assert (=> d!1246013 (contains!9703 l!3106 e1!42)))

(assert (=> d!1246013 (= (getIndex!902 l!3106 e1!42) lt!1505574)))

(assert (= (and d!1246013 c!719802) b!4234499))

(assert (= (and d!1246013 (not c!719802)) b!4234500))

(assert (= (and b!4234500 c!719803) b!4234501))

(assert (= (and b!4234500 (not c!719803)) b!4234502))

(declare-fun m!4820593 () Bool)

(assert (=> b!4234501 m!4820593))

(assert (=> d!1246013 m!4820541))

(assert (=> b!4234441 d!1246013))

(declare-fun d!1246015 () Bool)

(declare-fun lt!1505575 () Bool)

(assert (=> d!1246015 (= lt!1505575 (select (content!7357 lt!1505556) e1!42))))

(declare-fun e!2629260 () Bool)

(assert (=> d!1246015 (= lt!1505575 e!2629260)))

(declare-fun res!1741625 () Bool)

(assert (=> d!1246015 (=> (not res!1741625) (not e!2629260))))

(assert (=> d!1246015 (= res!1741625 ((_ is Cons!46759) lt!1505556))))

(assert (=> d!1246015 (= (contains!9703 lt!1505556 e1!42) lt!1505575)))

(declare-fun b!4234504 () Bool)

(declare-fun e!2629261 () Bool)

(assert (=> b!4234504 (= e!2629260 e!2629261)))

(declare-fun res!1741626 () Bool)

(assert (=> b!4234504 (=> res!1741626 e!2629261)))

(assert (=> b!4234504 (= res!1741626 (= (h!52179 lt!1505556) e1!42))))

(declare-fun b!4234505 () Bool)

(assert (=> b!4234505 (= e!2629261 (contains!9703 (t!349586 lt!1505556) e1!42))))

(assert (= (and d!1246015 res!1741625) b!4234504))

(assert (= (and b!4234504 (not res!1741626)) b!4234505))

(assert (=> d!1246015 m!4820571))

(declare-fun m!4820595 () Bool)

(assert (=> d!1246015 m!4820595))

(declare-fun m!4820597 () Bool)

(assert (=> b!4234505 m!4820597))

(assert (=> b!4234442 d!1246015))

(declare-fun d!1246017 () Bool)

(assert (=> d!1246017 (= (tail!6828 l!3106) (t!349586 l!3106))))

(assert (=> b!4234442 d!1246017))

(declare-fun d!1246019 () Bool)

(declare-fun lt!1505576 () Bool)

(assert (=> d!1246019 (= lt!1505576 (select (content!7357 l!3106) e1!42))))

(declare-fun e!2629262 () Bool)

(assert (=> d!1246019 (= lt!1505576 e!2629262)))

(declare-fun res!1741627 () Bool)

(assert (=> d!1246019 (=> (not res!1741627) (not e!2629262))))

(assert (=> d!1246019 (= res!1741627 ((_ is Cons!46759) l!3106))))

(assert (=> d!1246019 (= (contains!9703 l!3106 e1!42) lt!1505576)))

(declare-fun b!4234506 () Bool)

(declare-fun e!2629263 () Bool)

(assert (=> b!4234506 (= e!2629262 e!2629263)))

(declare-fun res!1741628 () Bool)

(assert (=> b!4234506 (=> res!1741628 e!2629263)))

(assert (=> b!4234506 (= res!1741628 (= (h!52179 l!3106) e1!42))))

(declare-fun b!4234507 () Bool)

(assert (=> b!4234507 (= e!2629263 (contains!9703 (t!349586 l!3106) e1!42))))

(assert (= (and d!1246019 res!1741627) b!4234506))

(assert (= (and b!4234506 (not res!1741628)) b!4234507))

(assert (=> d!1246019 m!4820577))

(declare-fun m!4820599 () Bool)

(assert (=> d!1246019 m!4820599))

(declare-fun m!4820601 () Bool)

(assert (=> b!4234507 m!4820601))

(assert (=> start!405170 d!1246019))

(declare-fun b!4234512 () Bool)

(declare-fun e!2629266 () Bool)

(declare-fun tp!1296622 () Bool)

(assert (=> b!4234512 (= e!2629266 (and tp_is_empty!22585 tp!1296622))))

(assert (=> b!4234443 (= tp!1296616 e!2629266)))

(assert (= (and b!4234443 ((_ is Cons!46759) (t!349586 l!3106))) b!4234512))

(check-sat (not d!1246019) (not b!4234505) (not d!1246003) (not d!1245995) (not b!4234493) (not b!4234464) (not b!4234501) tp_is_empty!22585 (not d!1246013) (not b!4234462) (not d!1246015) (not b!4234512) (not d!1246005) (not b!4234507))
(check-sat)
