; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405186 () Bool)

(assert start!405186)

(declare-fun b!4234548 () Bool)

(declare-fun res!1741660 () Bool)

(declare-fun e!2629287 () Bool)

(assert (=> b!4234548 (=> (not res!1741660) (not e!2629287))))

(declare-datatypes ((B!2773 0))(
  ( (B!2774 (val!15088 Int)) )
))
(declare-datatypes ((List!46885 0))(
  ( (Nil!46761) (Cons!46761 (h!52181 B!2773) (t!349588 List!46885)) )
))
(declare-fun lt!1505587 () List!46885)

(declare-fun e2!42 () B!2773)

(declare-fun contains!9705 (List!46885 B!2773) Bool)

(assert (=> b!4234548 (= res!1741660 (contains!9705 lt!1505587 e2!42))))

(declare-fun b!4234549 () Bool)

(declare-fun e1!42 () B!2773)

(declare-fun getIndex!904 (List!46885 B!2773) Int)

(assert (=> b!4234549 (= e!2629287 (not (= (getIndex!904 lt!1505587 e1!42) (getIndex!904 lt!1505587 e2!42))))))

(declare-fun b!4234550 () Bool)

(declare-fun e!2629290 () Bool)

(declare-fun tp_is_empty!22589 () Bool)

(declare-fun tp!1296628 () Bool)

(assert (=> b!4234550 (= e!2629290 (and tp_is_empty!22589 tp!1296628))))

(declare-fun res!1741661 () Bool)

(declare-fun e!2629289 () Bool)

(assert (=> start!405186 (=> (not res!1741661) (not e!2629289))))

(declare-fun l!3106 () List!46885)

(assert (=> start!405186 (= res!1741661 (contains!9705 l!3106 e1!42))))

(assert (=> start!405186 e!2629289))

(assert (=> start!405186 e!2629290))

(assert (=> start!405186 tp_is_empty!22589))

(declare-fun b!4234551 () Bool)

(declare-fun e!2629288 () Bool)

(assert (=> b!4234551 (= e!2629289 e!2629288)))

(declare-fun res!1741663 () Bool)

(assert (=> b!4234551 (=> (not res!1741663) (not e!2629288))))

(declare-fun lt!1505588 () Int)

(assert (=> b!4234551 (= res!1741663 (= lt!1505588 (getIndex!904 l!3106 e2!42)))))

(assert (=> b!4234551 (= lt!1505588 (getIndex!904 l!3106 e1!42))))

(declare-fun b!4234552 () Bool)

(declare-fun res!1741659 () Bool)

(assert (=> b!4234552 (=> (not res!1741659) (not e!2629288))))

(assert (=> b!4234552 (= res!1741659 (not (= lt!1505588 0)))))

(declare-fun b!4234553 () Bool)

(assert (=> b!4234553 (= e!2629288 e!2629287)))

(declare-fun res!1741664 () Bool)

(assert (=> b!4234553 (=> (not res!1741664) (not e!2629287))))

(assert (=> b!4234553 (= res!1741664 (contains!9705 lt!1505587 e1!42))))

(declare-fun tail!6830 (List!46885) List!46885)

(assert (=> b!4234553 (= lt!1505587 (tail!6830 l!3106))))

(declare-fun b!4234554 () Bool)

(declare-fun res!1741662 () Bool)

(assert (=> b!4234554 (=> (not res!1741662) (not e!2629289))))

(assert (=> b!4234554 (= res!1741662 (contains!9705 l!3106 e2!42))))

(assert (= (and start!405186 res!1741661) b!4234554))

(assert (= (and b!4234554 res!1741662) b!4234551))

(assert (= (and b!4234551 res!1741663) b!4234552))

(assert (= (and b!4234552 res!1741659) b!4234553))

(assert (= (and b!4234553 res!1741664) b!4234548))

(assert (= (and b!4234548 res!1741660) b!4234549))

(get-info :version)

(assert (= (and start!405186 ((_ is Cons!46761) l!3106)) b!4234550))

(declare-fun m!4820621 () Bool)

(assert (=> b!4234553 m!4820621))

(declare-fun m!4820623 () Bool)

(assert (=> b!4234553 m!4820623))

(declare-fun m!4820625 () Bool)

(assert (=> b!4234551 m!4820625))

(declare-fun m!4820627 () Bool)

(assert (=> b!4234551 m!4820627))

(declare-fun m!4820629 () Bool)

(assert (=> b!4234549 m!4820629))

(declare-fun m!4820631 () Bool)

(assert (=> b!4234549 m!4820631))

(declare-fun m!4820633 () Bool)

(assert (=> start!405186 m!4820633))

(declare-fun m!4820635 () Bool)

(assert (=> b!4234548 m!4820635))

(declare-fun m!4820637 () Bool)

(assert (=> b!4234554 m!4820637))

(check-sat (not b!4234553) (not b!4234554) (not start!405186) (not b!4234549) (not b!4234548) (not b!4234551) (not b!4234550) tp_is_empty!22589)
(check-sat)
(get-model)

(declare-fun d!1246022 () Bool)

(declare-fun lt!1505591 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7358 (List!46885) (InoxSet B!2773))

(assert (=> d!1246022 (= lt!1505591 (select (content!7358 l!3106) e2!42))))

(declare-fun e!2629296 () Bool)

(assert (=> d!1246022 (= lt!1505591 e!2629296)))

(declare-fun res!1741669 () Bool)

(assert (=> d!1246022 (=> (not res!1741669) (not e!2629296))))

(assert (=> d!1246022 (= res!1741669 ((_ is Cons!46761) l!3106))))

(assert (=> d!1246022 (= (contains!9705 l!3106 e2!42) lt!1505591)))

(declare-fun b!4234559 () Bool)

(declare-fun e!2629295 () Bool)

(assert (=> b!4234559 (= e!2629296 e!2629295)))

(declare-fun res!1741670 () Bool)

(assert (=> b!4234559 (=> res!1741670 e!2629295)))

(assert (=> b!4234559 (= res!1741670 (= (h!52181 l!3106) e2!42))))

(declare-fun b!4234560 () Bool)

(assert (=> b!4234560 (= e!2629295 (contains!9705 (t!349588 l!3106) e2!42))))

(assert (= (and d!1246022 res!1741669) b!4234559))

(assert (= (and b!4234559 (not res!1741670)) b!4234560))

(declare-fun m!4820639 () Bool)

(assert (=> d!1246022 m!4820639))

(declare-fun m!4820641 () Bool)

(assert (=> d!1246022 m!4820641))

(declare-fun m!4820643 () Bool)

(assert (=> b!4234560 m!4820643))

(assert (=> b!4234554 d!1246022))

(declare-fun b!4234578 () Bool)

(declare-fun e!2629308 () Int)

(assert (=> b!4234578 (= e!2629308 (- 1))))

(declare-fun b!4234577 () Bool)

(assert (=> b!4234577 (= e!2629308 (+ 1 (getIndex!904 (t!349588 lt!1505587) e1!42)))))

(declare-fun d!1246026 () Bool)

(declare-fun lt!1505597 () Int)

(assert (=> d!1246026 (>= lt!1505597 0)))

(declare-fun e!2629309 () Int)

(assert (=> d!1246026 (= lt!1505597 e!2629309)))

(declare-fun c!719809 () Bool)

(assert (=> d!1246026 (= c!719809 (and ((_ is Cons!46761) lt!1505587) (= (h!52181 lt!1505587) e1!42)))))

(assert (=> d!1246026 (contains!9705 lt!1505587 e1!42)))

(assert (=> d!1246026 (= (getIndex!904 lt!1505587 e1!42) lt!1505597)))

(declare-fun b!4234575 () Bool)

(assert (=> b!4234575 (= e!2629309 0)))

(declare-fun b!4234576 () Bool)

(assert (=> b!4234576 (= e!2629309 e!2629308)))

(declare-fun c!719808 () Bool)

(assert (=> b!4234576 (= c!719808 (and ((_ is Cons!46761) lt!1505587) (not (= (h!52181 lt!1505587) e1!42))))))

(assert (= (and d!1246026 c!719809) b!4234575))

(assert (= (and d!1246026 (not c!719809)) b!4234576))

(assert (= (and b!4234576 c!719808) b!4234577))

(assert (= (and b!4234576 (not c!719808)) b!4234578))

(declare-fun m!4820651 () Bool)

(assert (=> b!4234577 m!4820651))

(assert (=> d!1246026 m!4820621))

(assert (=> b!4234549 d!1246026))

(declare-fun b!4234590 () Bool)

(declare-fun e!2629315 () Int)

(assert (=> b!4234590 (= e!2629315 (- 1))))

(declare-fun b!4234589 () Bool)

(assert (=> b!4234589 (= e!2629315 (+ 1 (getIndex!904 (t!349588 lt!1505587) e2!42)))))

(declare-fun d!1246030 () Bool)

(declare-fun lt!1505600 () Int)

(assert (=> d!1246030 (>= lt!1505600 0)))

(declare-fun e!2629316 () Int)

(assert (=> d!1246030 (= lt!1505600 e!2629316)))

(declare-fun c!719815 () Bool)

(assert (=> d!1246030 (= c!719815 (and ((_ is Cons!46761) lt!1505587) (= (h!52181 lt!1505587) e2!42)))))

(assert (=> d!1246030 (contains!9705 lt!1505587 e2!42)))

(assert (=> d!1246030 (= (getIndex!904 lt!1505587 e2!42) lt!1505600)))

(declare-fun b!4234587 () Bool)

(assert (=> b!4234587 (= e!2629316 0)))

(declare-fun b!4234588 () Bool)

(assert (=> b!4234588 (= e!2629316 e!2629315)))

(declare-fun c!719814 () Bool)

(assert (=> b!4234588 (= c!719814 (and ((_ is Cons!46761) lt!1505587) (not (= (h!52181 lt!1505587) e2!42))))))

(assert (= (and d!1246030 c!719815) b!4234587))

(assert (= (and d!1246030 (not c!719815)) b!4234588))

(assert (= (and b!4234588 c!719814) b!4234589))

(assert (= (and b!4234588 (not c!719814)) b!4234590))

(declare-fun m!4820653 () Bool)

(assert (=> b!4234589 m!4820653))

(assert (=> d!1246030 m!4820635))

(assert (=> b!4234549 d!1246030))

(declare-fun d!1246032 () Bool)

(declare-fun lt!1505601 () Bool)

(assert (=> d!1246032 (= lt!1505601 (select (content!7358 l!3106) e1!42))))

(declare-fun e!2629318 () Bool)

(assert (=> d!1246032 (= lt!1505601 e!2629318)))

(declare-fun res!1741677 () Bool)

(assert (=> d!1246032 (=> (not res!1741677) (not e!2629318))))

(assert (=> d!1246032 (= res!1741677 ((_ is Cons!46761) l!3106))))

(assert (=> d!1246032 (= (contains!9705 l!3106 e1!42) lt!1505601)))

(declare-fun b!4234591 () Bool)

(declare-fun e!2629317 () Bool)

(assert (=> b!4234591 (= e!2629318 e!2629317)))

(declare-fun res!1741678 () Bool)

(assert (=> b!4234591 (=> res!1741678 e!2629317)))

(assert (=> b!4234591 (= res!1741678 (= (h!52181 l!3106) e1!42))))

(declare-fun b!4234592 () Bool)

(assert (=> b!4234592 (= e!2629317 (contains!9705 (t!349588 l!3106) e1!42))))

(assert (= (and d!1246032 res!1741677) b!4234591))

(assert (= (and b!4234591 (not res!1741678)) b!4234592))

(assert (=> d!1246032 m!4820639))

(declare-fun m!4820655 () Bool)

(assert (=> d!1246032 m!4820655))

(declare-fun m!4820657 () Bool)

(assert (=> b!4234592 m!4820657))

(assert (=> start!405186 d!1246032))

(declare-fun b!4234596 () Bool)

(declare-fun e!2629319 () Int)

(assert (=> b!4234596 (= e!2629319 (- 1))))

(declare-fun b!4234595 () Bool)

(assert (=> b!4234595 (= e!2629319 (+ 1 (getIndex!904 (t!349588 l!3106) e2!42)))))

(declare-fun d!1246034 () Bool)

(declare-fun lt!1505602 () Int)

(assert (=> d!1246034 (>= lt!1505602 0)))

(declare-fun e!2629320 () Int)

(assert (=> d!1246034 (= lt!1505602 e!2629320)))

(declare-fun c!719817 () Bool)

(assert (=> d!1246034 (= c!719817 (and ((_ is Cons!46761) l!3106) (= (h!52181 l!3106) e2!42)))))

(assert (=> d!1246034 (contains!9705 l!3106 e2!42)))

(assert (=> d!1246034 (= (getIndex!904 l!3106 e2!42) lt!1505602)))

(declare-fun b!4234593 () Bool)

(assert (=> b!4234593 (= e!2629320 0)))

(declare-fun b!4234594 () Bool)

(assert (=> b!4234594 (= e!2629320 e!2629319)))

(declare-fun c!719816 () Bool)

(assert (=> b!4234594 (= c!719816 (and ((_ is Cons!46761) l!3106) (not (= (h!52181 l!3106) e2!42))))))

(assert (= (and d!1246034 c!719817) b!4234593))

(assert (= (and d!1246034 (not c!719817)) b!4234594))

(assert (= (and b!4234594 c!719816) b!4234595))

(assert (= (and b!4234594 (not c!719816)) b!4234596))

(declare-fun m!4820659 () Bool)

(assert (=> b!4234595 m!4820659))

(assert (=> d!1246034 m!4820637))

(assert (=> b!4234551 d!1246034))

(declare-fun b!4234600 () Bool)

(declare-fun e!2629321 () Int)

(assert (=> b!4234600 (= e!2629321 (- 1))))

(declare-fun b!4234599 () Bool)

(assert (=> b!4234599 (= e!2629321 (+ 1 (getIndex!904 (t!349588 l!3106) e1!42)))))

(declare-fun d!1246036 () Bool)

(declare-fun lt!1505603 () Int)

(assert (=> d!1246036 (>= lt!1505603 0)))

(declare-fun e!2629322 () Int)

(assert (=> d!1246036 (= lt!1505603 e!2629322)))

(declare-fun c!719819 () Bool)

(assert (=> d!1246036 (= c!719819 (and ((_ is Cons!46761) l!3106) (= (h!52181 l!3106) e1!42)))))

(assert (=> d!1246036 (contains!9705 l!3106 e1!42)))

(assert (=> d!1246036 (= (getIndex!904 l!3106 e1!42) lt!1505603)))

(declare-fun b!4234597 () Bool)

(assert (=> b!4234597 (= e!2629322 0)))

(declare-fun b!4234598 () Bool)

(assert (=> b!4234598 (= e!2629322 e!2629321)))

(declare-fun c!719818 () Bool)

(assert (=> b!4234598 (= c!719818 (and ((_ is Cons!46761) l!3106) (not (= (h!52181 l!3106) e1!42))))))

(assert (= (and d!1246036 c!719819) b!4234597))

(assert (= (and d!1246036 (not c!719819)) b!4234598))

(assert (= (and b!4234598 c!719818) b!4234599))

(assert (= (and b!4234598 (not c!719818)) b!4234600))

(declare-fun m!4820661 () Bool)

(assert (=> b!4234599 m!4820661))

(assert (=> d!1246036 m!4820633))

(assert (=> b!4234551 d!1246036))

(declare-fun d!1246038 () Bool)

(declare-fun lt!1505604 () Bool)

(assert (=> d!1246038 (= lt!1505604 (select (content!7358 lt!1505587) e2!42))))

(declare-fun e!2629324 () Bool)

(assert (=> d!1246038 (= lt!1505604 e!2629324)))

(declare-fun res!1741679 () Bool)

(assert (=> d!1246038 (=> (not res!1741679) (not e!2629324))))

(assert (=> d!1246038 (= res!1741679 ((_ is Cons!46761) lt!1505587))))

(assert (=> d!1246038 (= (contains!9705 lt!1505587 e2!42) lt!1505604)))

(declare-fun b!4234601 () Bool)

(declare-fun e!2629323 () Bool)

(assert (=> b!4234601 (= e!2629324 e!2629323)))

(declare-fun res!1741680 () Bool)

(assert (=> b!4234601 (=> res!1741680 e!2629323)))

(assert (=> b!4234601 (= res!1741680 (= (h!52181 lt!1505587) e2!42))))

(declare-fun b!4234602 () Bool)

(assert (=> b!4234602 (= e!2629323 (contains!9705 (t!349588 lt!1505587) e2!42))))

(assert (= (and d!1246038 res!1741679) b!4234601))

(assert (= (and b!4234601 (not res!1741680)) b!4234602))

(declare-fun m!4820663 () Bool)

(assert (=> d!1246038 m!4820663))

(declare-fun m!4820665 () Bool)

(assert (=> d!1246038 m!4820665))

(declare-fun m!4820667 () Bool)

(assert (=> b!4234602 m!4820667))

(assert (=> b!4234548 d!1246038))

(declare-fun d!1246040 () Bool)

(declare-fun lt!1505605 () Bool)

(assert (=> d!1246040 (= lt!1505605 (select (content!7358 lt!1505587) e1!42))))

(declare-fun e!2629326 () Bool)

(assert (=> d!1246040 (= lt!1505605 e!2629326)))

(declare-fun res!1741681 () Bool)

(assert (=> d!1246040 (=> (not res!1741681) (not e!2629326))))

(assert (=> d!1246040 (= res!1741681 ((_ is Cons!46761) lt!1505587))))

(assert (=> d!1246040 (= (contains!9705 lt!1505587 e1!42) lt!1505605)))

(declare-fun b!4234603 () Bool)

(declare-fun e!2629325 () Bool)

(assert (=> b!4234603 (= e!2629326 e!2629325)))

(declare-fun res!1741682 () Bool)

(assert (=> b!4234603 (=> res!1741682 e!2629325)))

(assert (=> b!4234603 (= res!1741682 (= (h!52181 lt!1505587) e1!42))))

(declare-fun b!4234604 () Bool)

(assert (=> b!4234604 (= e!2629325 (contains!9705 (t!349588 lt!1505587) e1!42))))

(assert (= (and d!1246040 res!1741681) b!4234603))

(assert (= (and b!4234603 (not res!1741682)) b!4234604))

(assert (=> d!1246040 m!4820663))

(declare-fun m!4820669 () Bool)

(assert (=> d!1246040 m!4820669))

(declare-fun m!4820671 () Bool)

(assert (=> b!4234604 m!4820671))

(assert (=> b!4234553 d!1246040))

(declare-fun d!1246042 () Bool)

(assert (=> d!1246042 (= (tail!6830 l!3106) (t!349588 l!3106))))

(assert (=> b!4234553 d!1246042))

(declare-fun b!4234622 () Bool)

(declare-fun e!2629336 () Bool)

(declare-fun tp!1296631 () Bool)

(assert (=> b!4234622 (= e!2629336 (and tp_is_empty!22589 tp!1296631))))

(assert (=> b!4234550 (= tp!1296628 e!2629336)))

(assert (= (and b!4234550 ((_ is Cons!46761) (t!349588 l!3106))) b!4234622))

(check-sat (not b!4234599) (not b!4234595) tp_is_empty!22589 (not b!4234604) (not d!1246030) (not b!4234589) (not d!1246022) (not b!4234602) (not d!1246038) (not b!4234622) (not b!4234577) (not b!4234592) (not b!4234560) (not d!1246026) (not d!1246036) (not d!1246034) (not d!1246040) (not d!1246032))
(check-sat)
