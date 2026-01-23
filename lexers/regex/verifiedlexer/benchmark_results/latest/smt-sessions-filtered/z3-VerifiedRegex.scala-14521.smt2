; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754712 () Bool)

(assert start!754712)

(declare-fun b!8018759 () Bool)

(declare-fun e!4723589 () Bool)

(declare-fun tp_is_empty!53989 () Bool)

(declare-fun tp!2400141 () Bool)

(assert (=> b!8018759 (= e!4723589 (and tp_is_empty!53989 tp!2400141))))

(declare-fun b!8018757 () Bool)

(declare-fun res!3170537 () Bool)

(declare-fun e!4723590 () Bool)

(assert (=> b!8018757 (=> (not res!3170537) (not e!4723590))))

(declare-datatypes ((B!4101 0))(
  ( (B!4102 (val!32440 Int)) )
))
(declare-datatypes ((List!74952 0))(
  ( (Nil!74828) (Cons!74828 (h!81276 B!4101) (t!390695 List!74952)) )
))
(declare-fun p!2009 () List!74952)

(declare-fun l!3435 () List!74952)

(declare-fun size!43619 (List!74952) Int)

(assert (=> b!8018757 (= res!3170537 (< (size!43619 p!2009) (size!43619 l!3435)))))

(declare-fun res!3170538 () Bool)

(assert (=> start!754712 (=> (not res!3170538) (not e!4723590))))

(declare-fun isPrefix!6775 (List!74952 List!74952) Bool)

(assert (=> start!754712 (= res!3170538 (isPrefix!6775 p!2009 l!3435))))

(assert (=> start!754712 e!4723590))

(assert (=> start!754712 e!4723589))

(declare-fun e!4723591 () Bool)

(assert (=> start!754712 e!4723591))

(declare-fun b!8018758 () Bool)

(declare-fun ListPrimitiveSize!489 (List!74952) Int)

(assert (=> b!8018758 (= e!4723590 (< (ListPrimitiveSize!489 p!2009) 0))))

(declare-fun b!8018760 () Bool)

(declare-fun tp!2400142 () Bool)

(assert (=> b!8018760 (= e!4723591 (and tp_is_empty!53989 tp!2400142))))

(assert (= (and start!754712 res!3170538) b!8018757))

(assert (= (and b!8018757 res!3170537) b!8018758))

(get-info :version)

(assert (= (and start!754712 ((_ is Cons!74828) p!2009)) b!8018759))

(assert (= (and start!754712 ((_ is Cons!74828) l!3435)) b!8018760))

(declare-fun m!8381768 () Bool)

(assert (=> b!8018757 m!8381768))

(declare-fun m!8381770 () Bool)

(assert (=> b!8018757 m!8381770))

(declare-fun m!8381772 () Bool)

(assert (=> start!754712 m!8381772))

(declare-fun m!8381774 () Bool)

(assert (=> b!8018758 m!8381774))

(check-sat tp_is_empty!53989 (not b!8018758) (not b!8018760) (not b!8018757) (not start!754712) (not b!8018759))
(check-sat)
(get-model)

(declare-fun d!2390912 () Bool)

(declare-fun lt!2719389 () Int)

(assert (=> d!2390912 (>= lt!2719389 0)))

(declare-fun e!4723597 () Int)

(assert (=> d!2390912 (= lt!2719389 e!4723597)))

(declare-fun c!1471744 () Bool)

(assert (=> d!2390912 (= c!1471744 ((_ is Nil!74828) p!2009))))

(assert (=> d!2390912 (= (ListPrimitiveSize!489 p!2009) lt!2719389)))

(declare-fun b!8018771 () Bool)

(assert (=> b!8018771 (= e!4723597 0)))

(declare-fun b!8018772 () Bool)

(assert (=> b!8018772 (= e!4723597 (+ 1 (ListPrimitiveSize!489 (t!390695 p!2009))))))

(assert (= (and d!2390912 c!1471744) b!8018771))

(assert (= (and d!2390912 (not c!1471744)) b!8018772))

(declare-fun m!8381778 () Bool)

(assert (=> b!8018772 m!8381778))

(assert (=> b!8018758 d!2390912))

(declare-fun d!2390916 () Bool)

(declare-fun lt!2719393 () Int)

(assert (=> d!2390916 (>= lt!2719393 0)))

(declare-fun e!4723601 () Int)

(assert (=> d!2390916 (= lt!2719393 e!4723601)))

(declare-fun c!1471748 () Bool)

(assert (=> d!2390916 (= c!1471748 ((_ is Nil!74828) p!2009))))

(assert (=> d!2390916 (= (size!43619 p!2009) lt!2719393)))

(declare-fun b!8018779 () Bool)

(assert (=> b!8018779 (= e!4723601 0)))

(declare-fun b!8018780 () Bool)

(assert (=> b!8018780 (= e!4723601 (+ 1 (size!43619 (t!390695 p!2009))))))

(assert (= (and d!2390916 c!1471748) b!8018779))

(assert (= (and d!2390916 (not c!1471748)) b!8018780))

(declare-fun m!8381782 () Bool)

(assert (=> b!8018780 m!8381782))

(assert (=> b!8018757 d!2390916))

(declare-fun d!2390920 () Bool)

(declare-fun lt!2719394 () Int)

(assert (=> d!2390920 (>= lt!2719394 0)))

(declare-fun e!4723602 () Int)

(assert (=> d!2390920 (= lt!2719394 e!4723602)))

(declare-fun c!1471749 () Bool)

(assert (=> d!2390920 (= c!1471749 ((_ is Nil!74828) l!3435))))

(assert (=> d!2390920 (= (size!43619 l!3435) lt!2719394)))

(declare-fun b!8018781 () Bool)

(assert (=> b!8018781 (= e!4723602 0)))

(declare-fun b!8018782 () Bool)

(assert (=> b!8018782 (= e!4723602 (+ 1 (size!43619 (t!390695 l!3435))))))

(assert (= (and d!2390920 c!1471749) b!8018781))

(assert (= (and d!2390920 (not c!1471749)) b!8018782))

(declare-fun m!8381784 () Bool)

(assert (=> b!8018782 m!8381784))

(assert (=> b!8018757 d!2390920))

(declare-fun b!8018807 () Bool)

(declare-fun e!4723620 () Bool)

(declare-fun e!4723621 () Bool)

(assert (=> b!8018807 (= e!4723620 e!4723621)))

(declare-fun res!3170562 () Bool)

(assert (=> b!8018807 (=> (not res!3170562) (not e!4723621))))

(assert (=> b!8018807 (= res!3170562 (not ((_ is Nil!74828) l!3435)))))

(declare-fun d!2390922 () Bool)

(declare-fun e!4723622 () Bool)

(assert (=> d!2390922 e!4723622))

(declare-fun res!3170559 () Bool)

(assert (=> d!2390922 (=> res!3170559 e!4723622)))

(declare-fun lt!2719402 () Bool)

(assert (=> d!2390922 (= res!3170559 (not lt!2719402))))

(assert (=> d!2390922 (= lt!2719402 e!4723620)))

(declare-fun res!3170560 () Bool)

(assert (=> d!2390922 (=> res!3170560 e!4723620)))

(assert (=> d!2390922 (= res!3170560 ((_ is Nil!74828) p!2009))))

(assert (=> d!2390922 (= (isPrefix!6775 p!2009 l!3435) lt!2719402)))

(declare-fun b!8018810 () Bool)

(assert (=> b!8018810 (= e!4723622 (>= (size!43619 l!3435) (size!43619 p!2009)))))

(declare-fun b!8018808 () Bool)

(declare-fun res!3170561 () Bool)

(assert (=> b!8018808 (=> (not res!3170561) (not e!4723621))))

(declare-fun head!16386 (List!74952) B!4101)

(assert (=> b!8018808 (= res!3170561 (= (head!16386 p!2009) (head!16386 l!3435)))))

(declare-fun b!8018809 () Bool)

(declare-fun tail!15913 (List!74952) List!74952)

(assert (=> b!8018809 (= e!4723621 (isPrefix!6775 (tail!15913 p!2009) (tail!15913 l!3435)))))

(assert (= (and d!2390922 (not res!3170560)) b!8018807))

(assert (= (and b!8018807 res!3170562) b!8018808))

(assert (= (and b!8018808 res!3170561) b!8018809))

(assert (= (and d!2390922 (not res!3170559)) b!8018810))

(assert (=> b!8018810 m!8381770))

(assert (=> b!8018810 m!8381768))

(declare-fun m!8381796 () Bool)

(assert (=> b!8018808 m!8381796))

(declare-fun m!8381798 () Bool)

(assert (=> b!8018808 m!8381798))

(declare-fun m!8381800 () Bool)

(assert (=> b!8018809 m!8381800))

(declare-fun m!8381802 () Bool)

(assert (=> b!8018809 m!8381802))

(assert (=> b!8018809 m!8381800))

(assert (=> b!8018809 m!8381802))

(declare-fun m!8381804 () Bool)

(assert (=> b!8018809 m!8381804))

(assert (=> start!754712 d!2390922))

(declare-fun b!8018821 () Bool)

(declare-fun e!4723628 () Bool)

(declare-fun tp!2400147 () Bool)

(assert (=> b!8018821 (= e!4723628 (and tp_is_empty!53989 tp!2400147))))

(assert (=> b!8018759 (= tp!2400141 e!4723628)))

(assert (= (and b!8018759 ((_ is Cons!74828) (t!390695 p!2009))) b!8018821))

(declare-fun b!8018822 () Bool)

(declare-fun e!4723629 () Bool)

(declare-fun tp!2400148 () Bool)

(assert (=> b!8018822 (= e!4723629 (and tp_is_empty!53989 tp!2400148))))

(assert (=> b!8018760 (= tp!2400142 e!4723629)))

(assert (= (and b!8018760 ((_ is Cons!74828) (t!390695 l!3435))) b!8018822))

(check-sat (not b!8018782) (not b!8018809) tp_is_empty!53989 (not b!8018821) (not b!8018810) (not b!8018772) (not b!8018780) (not b!8018822) (not b!8018808))
(check-sat)
