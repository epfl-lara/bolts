; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189012 () Bool)

(assert start!189012)

(declare-fun b!1887622 () Bool)

(declare-fun res!842737 () Bool)

(declare-fun e!1204570 () Bool)

(assert (=> b!1887622 (=> (not res!842737) (not e!1204570))))

(declare-datatypes ((B!1733 0))(
  ( (B!1734 (val!6152 Int)) )
))
(declare-datatypes ((List!21145 0))(
  ( (Nil!21063) (Cons!21063 (h!26464 B!1733) (t!175144 List!21145)) )
))
(declare-fun l1!1329 () List!21145)

(declare-fun l2!1298 () List!21145)

(assert (=> b!1887622 (= res!842737 (not (= (h!26464 l1!1329) (h!26464 l2!1298))))))

(declare-fun b!1887623 () Bool)

(declare-fun e!1204572 () Bool)

(declare-fun tp_is_empty!8989 () Bool)

(declare-fun tp!538195 () Bool)

(assert (=> b!1887623 (= e!1204572 (and tp_is_empty!8989 tp!538195))))

(declare-fun b!1887624 () Bool)

(declare-fun res!842733 () Bool)

(assert (=> b!1887624 (=> (not res!842733) (not e!1204570))))

(declare-fun subseq!413 (List!21145 List!21145) Bool)

(assert (=> b!1887624 (= res!842733 (subseq!413 l1!1329 (t!175144 l2!1298)))))

(declare-fun b!1887625 () Bool)

(declare-fun l3!256 () List!21145)

(assert (=> b!1887625 (= e!1204570 (not (subseq!413 l1!1329 l3!256)))))

(assert (=> b!1887625 (subseq!413 l1!1329 (t!175144 l3!256))))

(declare-datatypes ((Unit!35490 0))(
  ( (Unit!35491) )
))
(declare-fun lt!723718 () Unit!35490)

(declare-fun lemmaSubSeqTransitive!8 (List!21145 List!21145 List!21145) Unit!35490)

(assert (=> b!1887625 (= lt!723718 (lemmaSubSeqTransitive!8 l1!1329 (t!175144 l2!1298) (t!175144 l3!256)))))

(declare-fun b!1887626 () Bool)

(declare-fun res!842734 () Bool)

(assert (=> b!1887626 (=> (not res!842734) (not e!1204570))))

(get-info :version)

(assert (=> b!1887626 (= res!842734 (and (or (not ((_ is Cons!21063) l1!1329)) (not ((_ is Cons!21063) l2!1298)) (not ((_ is Cons!21063) l3!256)) (= (h!26464 l2!1298) (h!26464 l3!256))) ((_ is Cons!21063) l1!1329) ((_ is Cons!21063) l2!1298) ((_ is Cons!21063) l3!256) (= (h!26464 l2!1298) (h!26464 l3!256))))))

(declare-fun b!1887628 () Bool)

(declare-fun res!842735 () Bool)

(assert (=> b!1887628 (=> (not res!842735) (not e!1204570))))

(assert (=> b!1887628 (= res!842735 (subseq!413 (t!175144 l2!1298) (t!175144 l3!256)))))

(declare-fun b!1887629 () Bool)

(declare-fun e!1204571 () Bool)

(declare-fun tp!538196 () Bool)

(assert (=> b!1887629 (= e!1204571 (and tp_is_empty!8989 tp!538196))))

(declare-fun b!1887630 () Bool)

(declare-fun res!842738 () Bool)

(assert (=> b!1887630 (=> (not res!842738) (not e!1204570))))

(assert (=> b!1887630 (= res!842738 (subseq!413 l2!1298 l3!256))))

(declare-fun b!1887627 () Bool)

(declare-fun e!1204569 () Bool)

(declare-fun tp!538194 () Bool)

(assert (=> b!1887627 (= e!1204569 (and tp_is_empty!8989 tp!538194))))

(declare-fun res!842736 () Bool)

(assert (=> start!189012 (=> (not res!842736) (not e!1204570))))

(assert (=> start!189012 (= res!842736 (subseq!413 l1!1329 l2!1298))))

(assert (=> start!189012 e!1204570))

(assert (=> start!189012 e!1204571))

(assert (=> start!189012 e!1204572))

(assert (=> start!189012 e!1204569))

(assert (= (and start!189012 res!842736) b!1887630))

(assert (= (and b!1887630 res!842738) b!1887626))

(assert (= (and b!1887626 res!842734) b!1887628))

(assert (= (and b!1887628 res!842735) b!1887622))

(assert (= (and b!1887622 res!842737) b!1887624))

(assert (= (and b!1887624 res!842733) b!1887625))

(assert (= (and start!189012 ((_ is Cons!21063) l1!1329)) b!1887629))

(assert (= (and start!189012 ((_ is Cons!21063) l2!1298)) b!1887623))

(assert (= (and start!189012 ((_ is Cons!21063) l3!256)) b!1887627))

(declare-fun m!2319497 () Bool)

(assert (=> b!1887630 m!2319497))

(declare-fun m!2319499 () Bool)

(assert (=> b!1887628 m!2319499))

(declare-fun m!2319501 () Bool)

(assert (=> b!1887624 m!2319501))

(declare-fun m!2319503 () Bool)

(assert (=> b!1887625 m!2319503))

(declare-fun m!2319505 () Bool)

(assert (=> b!1887625 m!2319505))

(declare-fun m!2319507 () Bool)

(assert (=> b!1887625 m!2319507))

(declare-fun m!2319509 () Bool)

(assert (=> start!189012 m!2319509))

(check-sat tp_is_empty!8989 (not b!1887628) (not b!1887623) (not b!1887624) (not b!1887629) (not b!1887627) (not b!1887625) (not start!189012) (not b!1887630))
(check-sat)
(get-model)

(declare-fun b!1887656 () Bool)

(declare-fun e!1204597 () Bool)

(declare-fun e!1204598 () Bool)

(assert (=> b!1887656 (= e!1204597 e!1204598)))

(declare-fun res!842766 () Bool)

(assert (=> b!1887656 (=> res!842766 e!1204598)))

(declare-fun e!1204599 () Bool)

(assert (=> b!1887656 (= res!842766 e!1204599)))

(declare-fun res!842764 () Bool)

(assert (=> b!1887656 (=> (not res!842764) (not e!1204599))))

(assert (=> b!1887656 (= res!842764 (= (h!26464 l1!1329) (h!26464 l2!1298)))))

(declare-fun b!1887657 () Bool)

(assert (=> b!1887657 (= e!1204599 (subseq!413 (t!175144 l1!1329) (t!175144 l2!1298)))))

(declare-fun d!578244 () Bool)

(declare-fun res!842763 () Bool)

(declare-fun e!1204600 () Bool)

(assert (=> d!578244 (=> res!842763 e!1204600)))

(assert (=> d!578244 (= res!842763 ((_ is Nil!21063) l1!1329))))

(assert (=> d!578244 (= (subseq!413 l1!1329 l2!1298) e!1204600)))

(declare-fun b!1887655 () Bool)

(assert (=> b!1887655 (= e!1204600 e!1204597)))

(declare-fun res!842765 () Bool)

(assert (=> b!1887655 (=> (not res!842765) (not e!1204597))))

(assert (=> b!1887655 (= res!842765 ((_ is Cons!21063) l2!1298))))

(declare-fun b!1887658 () Bool)

(assert (=> b!1887658 (= e!1204598 (subseq!413 l1!1329 (t!175144 l2!1298)))))

(assert (= (and d!578244 (not res!842763)) b!1887655))

(assert (= (and b!1887655 res!842765) b!1887656))

(assert (= (and b!1887656 res!842764) b!1887657))

(assert (= (and b!1887656 (not res!842766)) b!1887658))

(declare-fun m!2319517 () Bool)

(assert (=> b!1887657 m!2319517))

(assert (=> b!1887658 m!2319501))

(assert (=> start!189012 d!578244))

(declare-fun b!1887660 () Bool)

(declare-fun e!1204601 () Bool)

(declare-fun e!1204602 () Bool)

(assert (=> b!1887660 (= e!1204601 e!1204602)))

(declare-fun res!842770 () Bool)

(assert (=> b!1887660 (=> res!842770 e!1204602)))

(declare-fun e!1204603 () Bool)

(assert (=> b!1887660 (= res!842770 e!1204603)))

(declare-fun res!842768 () Bool)

(assert (=> b!1887660 (=> (not res!842768) (not e!1204603))))

(assert (=> b!1887660 (= res!842768 (= (h!26464 (t!175144 l2!1298)) (h!26464 (t!175144 l3!256))))))

(declare-fun b!1887661 () Bool)

(assert (=> b!1887661 (= e!1204603 (subseq!413 (t!175144 (t!175144 l2!1298)) (t!175144 (t!175144 l3!256))))))

(declare-fun d!578250 () Bool)

(declare-fun res!842767 () Bool)

(declare-fun e!1204604 () Bool)

(assert (=> d!578250 (=> res!842767 e!1204604)))

(assert (=> d!578250 (= res!842767 ((_ is Nil!21063) (t!175144 l2!1298)))))

(assert (=> d!578250 (= (subseq!413 (t!175144 l2!1298) (t!175144 l3!256)) e!1204604)))

(declare-fun b!1887659 () Bool)

(assert (=> b!1887659 (= e!1204604 e!1204601)))

(declare-fun res!842769 () Bool)

(assert (=> b!1887659 (=> (not res!842769) (not e!1204601))))

(assert (=> b!1887659 (= res!842769 ((_ is Cons!21063) (t!175144 l3!256)))))

(declare-fun b!1887662 () Bool)

(assert (=> b!1887662 (= e!1204602 (subseq!413 (t!175144 l2!1298) (t!175144 (t!175144 l3!256))))))

(assert (= (and d!578250 (not res!842767)) b!1887659))

(assert (= (and b!1887659 res!842769) b!1887660))

(assert (= (and b!1887660 res!842768) b!1887661))

(assert (= (and b!1887660 (not res!842770)) b!1887662))

(declare-fun m!2319519 () Bool)

(assert (=> b!1887661 m!2319519))

(declare-fun m!2319521 () Bool)

(assert (=> b!1887662 m!2319521))

(assert (=> b!1887628 d!578250))

(declare-fun b!1887664 () Bool)

(declare-fun e!1204605 () Bool)

(declare-fun e!1204606 () Bool)

(assert (=> b!1887664 (= e!1204605 e!1204606)))

(declare-fun res!842774 () Bool)

(assert (=> b!1887664 (=> res!842774 e!1204606)))

(declare-fun e!1204607 () Bool)

(assert (=> b!1887664 (= res!842774 e!1204607)))

(declare-fun res!842772 () Bool)

(assert (=> b!1887664 (=> (not res!842772) (not e!1204607))))

(assert (=> b!1887664 (= res!842772 (= (h!26464 l1!1329) (h!26464 (t!175144 l2!1298))))))

(declare-fun b!1887665 () Bool)

(assert (=> b!1887665 (= e!1204607 (subseq!413 (t!175144 l1!1329) (t!175144 (t!175144 l2!1298))))))

(declare-fun d!578252 () Bool)

(declare-fun res!842771 () Bool)

(declare-fun e!1204608 () Bool)

(assert (=> d!578252 (=> res!842771 e!1204608)))

(assert (=> d!578252 (= res!842771 ((_ is Nil!21063) l1!1329))))

(assert (=> d!578252 (= (subseq!413 l1!1329 (t!175144 l2!1298)) e!1204608)))

(declare-fun b!1887663 () Bool)

(assert (=> b!1887663 (= e!1204608 e!1204605)))

(declare-fun res!842773 () Bool)

(assert (=> b!1887663 (=> (not res!842773) (not e!1204605))))

(assert (=> b!1887663 (= res!842773 ((_ is Cons!21063) (t!175144 l2!1298)))))

(declare-fun b!1887666 () Bool)

(assert (=> b!1887666 (= e!1204606 (subseq!413 l1!1329 (t!175144 (t!175144 l2!1298))))))

(assert (= (and d!578252 (not res!842771)) b!1887663))

(assert (= (and b!1887663 res!842773) b!1887664))

(assert (= (and b!1887664 res!842772) b!1887665))

(assert (= (and b!1887664 (not res!842774)) b!1887666))

(declare-fun m!2319525 () Bool)

(assert (=> b!1887665 m!2319525))

(declare-fun m!2319527 () Bool)

(assert (=> b!1887666 m!2319527))

(assert (=> b!1887624 d!578252))

(declare-fun b!1887672 () Bool)

(declare-fun e!1204613 () Bool)

(declare-fun e!1204614 () Bool)

(assert (=> b!1887672 (= e!1204613 e!1204614)))

(declare-fun res!842782 () Bool)

(assert (=> b!1887672 (=> res!842782 e!1204614)))

(declare-fun e!1204615 () Bool)

(assert (=> b!1887672 (= res!842782 e!1204615)))

(declare-fun res!842780 () Bool)

(assert (=> b!1887672 (=> (not res!842780) (not e!1204615))))

(assert (=> b!1887672 (= res!842780 (= (h!26464 l1!1329) (h!26464 l3!256)))))

(declare-fun b!1887673 () Bool)

(assert (=> b!1887673 (= e!1204615 (subseq!413 (t!175144 l1!1329) (t!175144 l3!256)))))

(declare-fun d!578256 () Bool)

(declare-fun res!842779 () Bool)

(declare-fun e!1204616 () Bool)

(assert (=> d!578256 (=> res!842779 e!1204616)))

(assert (=> d!578256 (= res!842779 ((_ is Nil!21063) l1!1329))))

(assert (=> d!578256 (= (subseq!413 l1!1329 l3!256) e!1204616)))

(declare-fun b!1887671 () Bool)

(assert (=> b!1887671 (= e!1204616 e!1204613)))

(declare-fun res!842781 () Bool)

(assert (=> b!1887671 (=> (not res!842781) (not e!1204613))))

(assert (=> b!1887671 (= res!842781 ((_ is Cons!21063) l3!256))))

(declare-fun b!1887674 () Bool)

(assert (=> b!1887674 (= e!1204614 (subseq!413 l1!1329 (t!175144 l3!256)))))

(assert (= (and d!578256 (not res!842779)) b!1887671))

(assert (= (and b!1887671 res!842781) b!1887672))

(assert (= (and b!1887672 res!842780) b!1887673))

(assert (= (and b!1887672 (not res!842782)) b!1887674))

(declare-fun m!2319531 () Bool)

(assert (=> b!1887673 m!2319531))

(assert (=> b!1887674 m!2319505))

(assert (=> b!1887625 d!578256))

(declare-fun b!1887680 () Bool)

(declare-fun e!1204621 () Bool)

(declare-fun e!1204622 () Bool)

(assert (=> b!1887680 (= e!1204621 e!1204622)))

(declare-fun res!842790 () Bool)

(assert (=> b!1887680 (=> res!842790 e!1204622)))

(declare-fun e!1204623 () Bool)

(assert (=> b!1887680 (= res!842790 e!1204623)))

(declare-fun res!842788 () Bool)

(assert (=> b!1887680 (=> (not res!842788) (not e!1204623))))

(assert (=> b!1887680 (= res!842788 (= (h!26464 l1!1329) (h!26464 (t!175144 l3!256))))))

(declare-fun b!1887681 () Bool)

(assert (=> b!1887681 (= e!1204623 (subseq!413 (t!175144 l1!1329) (t!175144 (t!175144 l3!256))))))

(declare-fun d!578260 () Bool)

(declare-fun res!842787 () Bool)

(declare-fun e!1204624 () Bool)

(assert (=> d!578260 (=> res!842787 e!1204624)))

(assert (=> d!578260 (= res!842787 ((_ is Nil!21063) l1!1329))))

(assert (=> d!578260 (= (subseq!413 l1!1329 (t!175144 l3!256)) e!1204624)))

(declare-fun b!1887679 () Bool)

(assert (=> b!1887679 (= e!1204624 e!1204621)))

(declare-fun res!842789 () Bool)

(assert (=> b!1887679 (=> (not res!842789) (not e!1204621))))

(assert (=> b!1887679 (= res!842789 ((_ is Cons!21063) (t!175144 l3!256)))))

(declare-fun b!1887682 () Bool)

(assert (=> b!1887682 (= e!1204622 (subseq!413 l1!1329 (t!175144 (t!175144 l3!256))))))

(assert (= (and d!578260 (not res!842787)) b!1887679))

(assert (= (and b!1887679 res!842789) b!1887680))

(assert (= (and b!1887680 res!842788) b!1887681))

(assert (= (and b!1887680 (not res!842790)) b!1887682))

(declare-fun m!2319537 () Bool)

(assert (=> b!1887681 m!2319537))

(declare-fun m!2319539 () Bool)

(assert (=> b!1887682 m!2319539))

(assert (=> b!1887625 d!578260))

(declare-fun d!578264 () Bool)

(assert (=> d!578264 (subseq!413 l1!1329 (t!175144 l3!256))))

(declare-fun lt!723724 () Unit!35490)

(declare-fun choose!11814 (List!21145 List!21145 List!21145) Unit!35490)

(assert (=> d!578264 (= lt!723724 (choose!11814 l1!1329 (t!175144 l2!1298) (t!175144 l3!256)))))

(assert (=> d!578264 (subseq!413 l1!1329 (t!175144 l2!1298))))

(assert (=> d!578264 (= (lemmaSubSeqTransitive!8 l1!1329 (t!175144 l2!1298) (t!175144 l3!256)) lt!723724)))

(declare-fun bs!412994 () Bool)

(assert (= bs!412994 d!578264))

(assert (=> bs!412994 m!2319505))

(declare-fun m!2319547 () Bool)

(assert (=> bs!412994 m!2319547))

(assert (=> bs!412994 m!2319501))

(assert (=> b!1887625 d!578264))

(declare-fun b!1887699 () Bool)

(declare-fun e!1204638 () Bool)

(declare-fun e!1204639 () Bool)

(assert (=> b!1887699 (= e!1204638 e!1204639)))

(declare-fun res!842802 () Bool)

(assert (=> b!1887699 (=> res!842802 e!1204639)))

(declare-fun e!1204640 () Bool)

(assert (=> b!1887699 (= res!842802 e!1204640)))

(declare-fun res!842800 () Bool)

(assert (=> b!1887699 (=> (not res!842800) (not e!1204640))))

(assert (=> b!1887699 (= res!842800 (= (h!26464 l2!1298) (h!26464 l3!256)))))

(declare-fun b!1887700 () Bool)

(assert (=> b!1887700 (= e!1204640 (subseq!413 (t!175144 l2!1298) (t!175144 l3!256)))))

(declare-fun d!578268 () Bool)

(declare-fun res!842799 () Bool)

(declare-fun e!1204641 () Bool)

(assert (=> d!578268 (=> res!842799 e!1204641)))

(assert (=> d!578268 (= res!842799 ((_ is Nil!21063) l2!1298))))

(assert (=> d!578268 (= (subseq!413 l2!1298 l3!256) e!1204641)))

(declare-fun b!1887698 () Bool)

(assert (=> b!1887698 (= e!1204641 e!1204638)))

(declare-fun res!842801 () Bool)

(assert (=> b!1887698 (=> (not res!842801) (not e!1204638))))

(assert (=> b!1887698 (= res!842801 ((_ is Cons!21063) l3!256))))

(declare-fun b!1887701 () Bool)

(assert (=> b!1887701 (= e!1204639 (subseq!413 l2!1298 (t!175144 l3!256)))))

(assert (= (and d!578268 (not res!842799)) b!1887698))

(assert (= (and b!1887698 res!842801) b!1887699))

(assert (= (and b!1887699 res!842800) b!1887700))

(assert (= (and b!1887699 (not res!842802)) b!1887701))

(assert (=> b!1887700 m!2319499))

(declare-fun m!2319549 () Bool)

(assert (=> b!1887701 m!2319549))

(assert (=> b!1887630 d!578268))

(declare-fun b!1887706 () Bool)

(declare-fun e!1204644 () Bool)

(declare-fun tp!538204 () Bool)

(assert (=> b!1887706 (= e!1204644 (and tp_is_empty!8989 tp!538204))))

(assert (=> b!1887627 (= tp!538194 e!1204644)))

(assert (= (and b!1887627 ((_ is Cons!21063) (t!175144 l3!256))) b!1887706))

(declare-fun b!1887707 () Bool)

(declare-fun e!1204645 () Bool)

(declare-fun tp!538205 () Bool)

(assert (=> b!1887707 (= e!1204645 (and tp_is_empty!8989 tp!538205))))

(assert (=> b!1887623 (= tp!538195 e!1204645)))

(assert (= (and b!1887623 ((_ is Cons!21063) (t!175144 l2!1298))) b!1887707))

(declare-fun b!1887708 () Bool)

(declare-fun e!1204646 () Bool)

(declare-fun tp!538206 () Bool)

(assert (=> b!1887708 (= e!1204646 (and tp_is_empty!8989 tp!538206))))

(assert (=> b!1887629 (= tp!538196 e!1204646)))

(assert (= (and b!1887629 ((_ is Cons!21063) (t!175144 l1!1329))) b!1887708))

(check-sat tp_is_empty!8989 (not b!1887666) (not b!1887706) (not b!1887662) (not b!1887701) (not b!1887708) (not b!1887700) (not b!1887673) (not d!578264) (not b!1887665) (not b!1887707) (not b!1887657) (not b!1887674) (not b!1887661) (not b!1887682) (not b!1887658) (not b!1887681))
(check-sat)
