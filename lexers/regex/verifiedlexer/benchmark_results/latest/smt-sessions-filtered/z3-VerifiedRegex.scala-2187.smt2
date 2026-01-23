; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107962 () Bool)

(assert start!107962)

(declare-fun res!544551 () Bool)

(declare-fun e!776668 () Bool)

(assert (=> start!107962 (=> (not res!544551) (not e!776668))))

(declare-datatypes ((B!1361 0))(
  ( (B!1362 (val!4038 Int)) )
))
(declare-datatypes ((List!12285 0))(
  ( (Nil!12227) (Cons!12227 (h!17628 B!1361) (t!112669 List!12285)) )
))
(declare-fun l!3821 () List!12285)

(declare-fun e!9491 () B!1361)

(declare-fun contains!2044 (List!12285 B!1361) Bool)

(assert (=> start!107962 (= res!544551 (contains!2044 l!3821 e!9491))))

(assert (=> start!107962 e!776668))

(declare-fun e!776667 () Bool)

(assert (=> start!107962 e!776667))

(declare-fun tp_is_empty!6219 () Bool)

(assert (=> start!107962 tp_is_empty!6219))

(declare-fun b!1210647 () Bool)

(declare-fun res!544550 () Bool)

(assert (=> b!1210647 (=> (not res!544550) (not e!776668))))

(get-info :version)

(assert (=> b!1210647 (= res!544550 (and ((_ is Cons!12227) l!3821) (= (h!17628 l!3821) e!9491)))))

(declare-fun b!1210648 () Bool)

(declare-fun -!90 (List!12285 B!1361) List!12285)

(assert (=> b!1210648 (= e!776668 (not (= (-!90 l!3821 e!9491) (-!90 (t!112669 l!3821) e!9491))))))

(declare-fun b!1210649 () Bool)

(declare-fun tp!342903 () Bool)

(assert (=> b!1210649 (= e!776667 (and tp_is_empty!6219 tp!342903))))

(assert (= (and start!107962 res!544551) b!1210647))

(assert (= (and b!1210647 res!544550) b!1210648))

(assert (= (and start!107962 ((_ is Cons!12227) l!3821)) b!1210649))

(declare-fun m!1386525 () Bool)

(assert (=> start!107962 m!1386525))

(declare-fun m!1386527 () Bool)

(assert (=> b!1210648 m!1386527))

(declare-fun m!1386529 () Bool)

(assert (=> b!1210648 m!1386529))

(check-sat (not start!107962) (not b!1210648) (not b!1210649) tp_is_empty!6219)
(check-sat)
(get-model)

(declare-fun d!346364 () Bool)

(declare-fun lt!414395 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1740 (List!12285) (InoxSet B!1361))

(assert (=> d!346364 (= lt!414395 (select (content!1740 l!3821) e!9491))))

(declare-fun e!776679 () Bool)

(assert (=> d!346364 (= lt!414395 e!776679)))

(declare-fun res!544562 () Bool)

(assert (=> d!346364 (=> (not res!544562) (not e!776679))))

(assert (=> d!346364 (= res!544562 ((_ is Cons!12227) l!3821))))

(assert (=> d!346364 (= (contains!2044 l!3821 e!9491) lt!414395)))

(declare-fun b!1210660 () Bool)

(declare-fun e!776680 () Bool)

(assert (=> b!1210660 (= e!776679 e!776680)))

(declare-fun res!544563 () Bool)

(assert (=> b!1210660 (=> res!544563 e!776680)))

(assert (=> b!1210660 (= res!544563 (= (h!17628 l!3821) e!9491))))

(declare-fun b!1210661 () Bool)

(assert (=> b!1210661 (= e!776680 (contains!2044 (t!112669 l!3821) e!9491))))

(assert (= (and d!346364 res!544562) b!1210660))

(assert (= (and b!1210660 (not res!544563)) b!1210661))

(declare-fun m!1386535 () Bool)

(assert (=> d!346364 m!1386535))

(declare-fun m!1386539 () Bool)

(assert (=> d!346364 m!1386539))

(declare-fun m!1386541 () Bool)

(assert (=> b!1210661 m!1386541))

(assert (=> start!107962 d!346364))

(declare-fun b!1210682 () Bool)

(declare-fun e!776700 () List!12285)

(declare-fun call!84444 () List!12285)

(assert (=> b!1210682 (= e!776700 call!84444)))

(declare-fun b!1210684 () Bool)

(declare-fun e!776697 () List!12285)

(assert (=> b!1210684 (= e!776697 e!776700)))

(declare-fun c!202769 () Bool)

(assert (=> b!1210684 (= c!202769 (= e!9491 (h!17628 l!3821)))))

(declare-fun b!1210686 () Bool)

(assert (=> b!1210686 (= e!776700 (Cons!12227 (h!17628 l!3821) call!84444))))

(declare-fun d!346368 () Bool)

(declare-fun e!776695 () Bool)

(assert (=> d!346368 e!776695))

(declare-fun res!544568 () Bool)

(assert (=> d!346368 (=> (not res!544568) (not e!776695))))

(declare-fun lt!414400 () List!12285)

(declare-fun size!9744 (List!12285) Int)

(assert (=> d!346368 (= res!544568 (<= (size!9744 lt!414400) (size!9744 l!3821)))))

(assert (=> d!346368 (= lt!414400 e!776697)))

(declare-fun c!202770 () Bool)

(assert (=> d!346368 (= c!202770 ((_ is Cons!12227) l!3821))))

(assert (=> d!346368 (= (-!90 l!3821 e!9491) lt!414400)))

(declare-fun bm!84439 () Bool)

(assert (=> bm!84439 (= call!84444 (-!90 (t!112669 l!3821) e!9491))))

(declare-fun b!1210688 () Bool)

(assert (=> b!1210688 (= e!776697 Nil!12227)))

(declare-fun b!1210690 () Bool)

(assert (=> b!1210690 (= e!776695 (= (content!1740 lt!414400) ((_ map and) (content!1740 l!3821) ((_ map not) (store ((as const (Array B!1361 Bool)) false) e!9491 true)))))))

(assert (= (and d!346368 c!202770) b!1210684))

(assert (= (and d!346368 (not c!202770)) b!1210688))

(assert (= (and b!1210684 c!202769) b!1210682))

(assert (= (and b!1210684 (not c!202769)) b!1210686))

(assert (= (or b!1210682 b!1210686) bm!84439))

(assert (= (and d!346368 res!544568) b!1210690))

(declare-fun m!1386543 () Bool)

(assert (=> d!346368 m!1386543))

(declare-fun m!1386545 () Bool)

(assert (=> d!346368 m!1386545))

(assert (=> bm!84439 m!1386529))

(declare-fun m!1386553 () Bool)

(assert (=> b!1210690 m!1386553))

(assert (=> b!1210690 m!1386535))

(declare-fun m!1386557 () Bool)

(assert (=> b!1210690 m!1386557))

(assert (=> b!1210648 d!346368))

(declare-fun b!1210694 () Bool)

(declare-fun e!776706 () List!12285)

(declare-fun call!84447 () List!12285)

(assert (=> b!1210694 (= e!776706 call!84447)))

(declare-fun b!1210696 () Bool)

(declare-fun e!776705 () List!12285)

(assert (=> b!1210696 (= e!776705 e!776706)))

(declare-fun c!202773 () Bool)

(assert (=> b!1210696 (= c!202773 (= e!9491 (h!17628 (t!112669 l!3821))))))

(declare-fun b!1210697 () Bool)

(assert (=> b!1210697 (= e!776706 (Cons!12227 (h!17628 (t!112669 l!3821)) call!84447))))

(declare-fun d!346372 () Bool)

(declare-fun e!776702 () Bool)

(assert (=> d!346372 e!776702))

(declare-fun res!544570 () Bool)

(assert (=> d!346372 (=> (not res!544570) (not e!776702))))

(declare-fun lt!414403 () List!12285)

(assert (=> d!346372 (= res!544570 (<= (size!9744 lt!414403) (size!9744 (t!112669 l!3821))))))

(assert (=> d!346372 (= lt!414403 e!776705)))

(declare-fun c!202775 () Bool)

(assert (=> d!346372 (= c!202775 ((_ is Cons!12227) (t!112669 l!3821)))))

(assert (=> d!346372 (= (-!90 (t!112669 l!3821) e!9491) lt!414403)))

(declare-fun bm!84442 () Bool)

(assert (=> bm!84442 (= call!84447 (-!90 (t!112669 (t!112669 l!3821)) e!9491))))

(declare-fun b!1210700 () Bool)

(assert (=> b!1210700 (= e!776705 Nil!12227)))

(declare-fun b!1210701 () Bool)

(assert (=> b!1210701 (= e!776702 (= (content!1740 lt!414403) ((_ map and) (content!1740 (t!112669 l!3821)) ((_ map not) (store ((as const (Array B!1361 Bool)) false) e!9491 true)))))))

(assert (= (and d!346372 c!202775) b!1210696))

(assert (= (and d!346372 (not c!202775)) b!1210700))

(assert (= (and b!1210696 c!202773) b!1210694))

(assert (= (and b!1210696 (not c!202773)) b!1210697))

(assert (= (or b!1210694 b!1210697) bm!84442))

(assert (= (and d!346372 res!544570) b!1210701))

(declare-fun m!1386559 () Bool)

(assert (=> d!346372 m!1386559))

(declare-fun m!1386563 () Bool)

(assert (=> d!346372 m!1386563))

(declare-fun m!1386567 () Bool)

(assert (=> bm!84442 m!1386567))

(declare-fun m!1386571 () Bool)

(assert (=> b!1210701 m!1386571))

(declare-fun m!1386575 () Bool)

(assert (=> b!1210701 m!1386575))

(assert (=> b!1210701 m!1386557))

(assert (=> b!1210648 d!346372))

(declare-fun b!1210710 () Bool)

(declare-fun e!776711 () Bool)

(declare-fun tp!342908 () Bool)

(assert (=> b!1210710 (= e!776711 (and tp_is_empty!6219 tp!342908))))

(assert (=> b!1210649 (= tp!342903 e!776711)))

(assert (= (and b!1210649 ((_ is Cons!12227) (t!112669 l!3821))) b!1210710))

(check-sat (not d!346364) (not bm!84442) (not d!346372) tp_is_empty!6219 (not bm!84439) (not b!1210661) (not b!1210690) (not b!1210701) (not b!1210710) (not d!346368))
(check-sat)
