; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723184 () Bool)

(assert start!723184)

(declare-fun b_free!134345 () Bool)

(declare-fun b_next!135135 () Bool)

(assert (=> start!723184 (= b_free!134345 (not b_next!135135))))

(declare-fun tp!2157344 () Bool)

(declare-fun b_and!351961 () Bool)

(assert (=> start!723184 (= tp!2157344 b_and!351961)))

(declare-fun setIsEmpty!56757 () Bool)

(declare-fun setRes!56757 () Bool)

(assert (=> setIsEmpty!56757 setRes!56757))

(declare-fun res!2987591 () Bool)

(declare-fun e!4446421 () Bool)

(assert (=> start!723184 (=> (not res!2987591) (not e!4446421))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1135 0))(
  ( (A!1136 (val!29993 Int)) )
))
(declare-fun s!1397 () (InoxSet A!1135))

(assert (=> start!723184 (= res!2987591 (= s!1397 ((as const (Array A!1135 Bool)) false)))))

(assert (=> start!723184 e!4446421))

(declare-fun condSetEmpty!56757 () Bool)

(assert (=> start!723184 (= condSetEmpty!56757 (= s!1397 ((as const (Array A!1135 Bool)) false)))))

(assert (=> start!723184 setRes!56757))

(assert (=> start!723184 tp!2157344))

(declare-fun b!7448083 () Bool)

(declare-fun e!4446422 () Bool)

(declare-datatypes ((B!3889 0))(
  ( (B!3890 (val!29994 Int)) )
))
(declare-fun lt!2619611 () (InoxSet B!3889))

(declare-datatypes ((List!72179 0))(
  ( (Nil!72055) (Cons!72055 (h!78503 B!3889) (t!386744 List!72179)) )
))
(declare-fun head!15279 (List!72179) B!3889)

(declare-fun toList!11802 ((InoxSet B!3889)) List!72179)

(assert (=> b!7448083 (= e!4446422 (not (select lt!2619611 (head!15279 (toList!11802 lt!2619611)))))))

(declare-fun b!7448082 () Bool)

(assert (=> b!7448082 (= e!4446421 e!4446422)))

(declare-fun res!2987590 () Bool)

(assert (=> b!7448082 (=> (not res!2987590) (not e!4446422))))

(assert (=> b!7448082 (= res!2987590 (not (= lt!2619611 ((as const (Array B!3889 Bool)) false))))))

(declare-fun f!463 () Int)

(declare-fun flatMap!3253 ((InoxSet A!1135) Int) (InoxSet B!3889))

(assert (=> b!7448082 (= lt!2619611 (flatMap!3253 s!1397 f!463))))

(declare-fun setNonEmpty!56757 () Bool)

(declare-fun tp!2157343 () Bool)

(declare-fun tp_is_empty!49215 () Bool)

(assert (=> setNonEmpty!56757 (= setRes!56757 (and tp!2157343 tp_is_empty!49215))))

(declare-fun setElem!56757 () A!1135)

(declare-fun setRest!56757 () (InoxSet A!1135))

(assert (=> setNonEmpty!56757 (= s!1397 ((_ map or) (store ((as const (Array A!1135 Bool)) false) setElem!56757 true) setRest!56757))))

(assert (= (and start!723184 res!2987591) b!7448082))

(assert (= (and b!7448082 res!2987590) b!7448083))

(assert (= (and start!723184 condSetEmpty!56757) setIsEmpty!56757))

(assert (= (and start!723184 (not condSetEmpty!56757)) setNonEmpty!56757))

(declare-fun m!8055764 () Bool)

(assert (=> b!7448083 m!8055764))

(assert (=> b!7448083 m!8055764))

(declare-fun m!8055766 () Bool)

(assert (=> b!7448083 m!8055766))

(assert (=> b!7448083 m!8055766))

(declare-fun m!8055768 () Bool)

(assert (=> b!7448083 m!8055768))

(declare-fun m!8055770 () Bool)

(assert (=> b!7448082 m!8055770))

(check-sat b_and!351961 (not b!7448083) (not setNonEmpty!56757) (not b_next!135135) tp_is_empty!49215 (not b!7448082))
(check-sat b_and!351961 (not b_next!135135))
(get-model)

(declare-fun d!2296738 () Bool)

(declare-fun choose!57559 ((InoxSet A!1135) Int) (InoxSet B!3889))

(assert (=> d!2296738 (= (flatMap!3253 s!1397 f!463) (choose!57559 s!1397 f!463))))

(declare-fun bs!1926813 () Bool)

(assert (= bs!1926813 d!2296738))

(declare-fun m!8055774 () Bool)

(assert (=> bs!1926813 m!8055774))

(assert (=> b!7448082 d!2296738))

(declare-fun d!2296742 () Bool)

(assert (=> d!2296742 (= (head!15279 (toList!11802 lt!2619611)) (h!78503 (toList!11802 lt!2619611)))))

(assert (=> b!7448083 d!2296742))

(declare-fun d!2296746 () Bool)

(declare-fun e!4446425 () Bool)

(assert (=> d!2296746 e!4446425))

(declare-fun res!2987594 () Bool)

(assert (=> d!2296746 (=> (not res!2987594) (not e!4446425))))

(declare-fun lt!2619614 () List!72179)

(declare-fun noDuplicate!3132 (List!72179) Bool)

(assert (=> d!2296746 (= res!2987594 (noDuplicate!3132 lt!2619614))))

(declare-fun choose!57560 ((InoxSet B!3889)) List!72179)

(assert (=> d!2296746 (= lt!2619614 (choose!57560 lt!2619611))))

(assert (=> d!2296746 (= (toList!11802 lt!2619611) lt!2619614)))

(declare-fun b!7448086 () Bool)

(declare-fun content!15244 (List!72179) (InoxSet B!3889))

(assert (=> b!7448086 (= e!4446425 (= (content!15244 lt!2619614) lt!2619611))))

(assert (= (and d!2296746 res!2987594) b!7448086))

(declare-fun m!8055776 () Bool)

(assert (=> d!2296746 m!8055776))

(declare-fun m!8055778 () Bool)

(assert (=> d!2296746 m!8055778))

(declare-fun m!8055780 () Bool)

(assert (=> b!7448086 m!8055780))

(assert (=> b!7448083 d!2296746))

(declare-fun condSetEmpty!56760 () Bool)

(assert (=> setNonEmpty!56757 (= condSetEmpty!56760 (= setRest!56757 ((as const (Array A!1135 Bool)) false)))))

(declare-fun setRes!56760 () Bool)

(assert (=> setNonEmpty!56757 (= tp!2157343 setRes!56760)))

(declare-fun setIsEmpty!56760 () Bool)

(assert (=> setIsEmpty!56760 setRes!56760))

(declare-fun setNonEmpty!56760 () Bool)

(declare-fun tp!2157347 () Bool)

(assert (=> setNonEmpty!56760 (= setRes!56760 (and tp!2157347 tp_is_empty!49215))))

(declare-fun setElem!56760 () A!1135)

(declare-fun setRest!56760 () (InoxSet A!1135))

(assert (=> setNonEmpty!56760 (= setRest!56757 ((_ map or) (store ((as const (Array A!1135 Bool)) false) setElem!56760 true) setRest!56760))))

(assert (= (and setNonEmpty!56757 condSetEmpty!56760) setIsEmpty!56760))

(assert (= (and setNonEmpty!56757 (not condSetEmpty!56760)) setNonEmpty!56760))

(check-sat (not b!7448086) (not d!2296746) (not b_next!135135) (not d!2296738) b_and!351961 tp_is_empty!49215 (not setNonEmpty!56760))
(check-sat b_and!351961 (not b_next!135135))
(get-model)

(declare-fun d!2296748 () Bool)

(declare-fun res!2987602 () Bool)

(declare-fun e!4446433 () Bool)

(assert (=> d!2296748 (=> res!2987602 e!4446433)))

(get-info :version)

(assert (=> d!2296748 (= res!2987602 ((_ is Nil!72055) lt!2619614))))

(assert (=> d!2296748 (= (noDuplicate!3132 lt!2619614) e!4446433)))

(declare-fun b!7448098 () Bool)

(declare-fun e!4446434 () Bool)

(assert (=> b!7448098 (= e!4446433 e!4446434)))

(declare-fun res!2987603 () Bool)

(assert (=> b!7448098 (=> (not res!2987603) (not e!4446434))))

(declare-fun contains!20870 (List!72179 B!3889) Bool)

(assert (=> b!7448098 (= res!2987603 (not (contains!20870 (t!386744 lt!2619614) (h!78503 lt!2619614))))))

(declare-fun b!7448099 () Bool)

(assert (=> b!7448099 (= e!4446434 (noDuplicate!3132 (t!386744 lt!2619614)))))

(assert (= (and d!2296748 (not res!2987602)) b!7448098))

(assert (= (and b!7448098 res!2987603) b!7448099))

(declare-fun m!8055788 () Bool)

(assert (=> b!7448098 m!8055788))

(declare-fun m!8055790 () Bool)

(assert (=> b!7448099 m!8055790))

(assert (=> d!2296746 d!2296748))

(declare-fun d!2296750 () Bool)

(declare-fun e!4446440 () Bool)

(assert (=> d!2296750 e!4446440))

(declare-fun res!2987608 () Bool)

(assert (=> d!2296750 (=> (not res!2987608) (not e!4446440))))

(declare-fun res!2987609 () List!72179)

(assert (=> d!2296750 (= res!2987608 (noDuplicate!3132 res!2987609))))

(declare-fun e!4446439 () Bool)

(assert (=> d!2296750 e!4446439))

(assert (=> d!2296750 (= (choose!57560 lt!2619611) res!2987609)))

(declare-fun b!7448104 () Bool)

(declare-fun tp_is_empty!49217 () Bool)

(declare-fun tp!2157353 () Bool)

(assert (=> b!7448104 (= e!4446439 (and tp_is_empty!49217 tp!2157353))))

(declare-fun b!7448105 () Bool)

(assert (=> b!7448105 (= e!4446440 (= (content!15244 res!2987609) lt!2619611))))

(assert (= (and d!2296750 ((_ is Cons!72055) res!2987609)) b!7448104))

(assert (= (and d!2296750 res!2987608) b!7448105))

(declare-fun m!8055792 () Bool)

(assert (=> d!2296750 m!8055792))

(declare-fun m!8055794 () Bool)

(assert (=> b!7448105 m!8055794))

(assert (=> d!2296746 d!2296750))

(declare-fun d!2296752 () Bool)

(assert (=> d!2296752 true))

(declare-fun setRes!56766 () Bool)

(assert (=> d!2296752 setRes!56766))

(declare-fun condSetEmpty!56766 () Bool)

(declare-fun res!2987612 () (InoxSet B!3889))

(assert (=> d!2296752 (= condSetEmpty!56766 (= res!2987612 ((as const (Array B!3889 Bool)) false)))))

(assert (=> d!2296752 (= (choose!57559 s!1397 f!463) res!2987612)))

(declare-fun setIsEmpty!56766 () Bool)

(assert (=> setIsEmpty!56766 setRes!56766))

(declare-fun setNonEmpty!56766 () Bool)

(declare-fun tp!2157356 () Bool)

(assert (=> setNonEmpty!56766 (= setRes!56766 (and tp!2157356 tp_is_empty!49217))))

(declare-fun setElem!56766 () B!3889)

(declare-fun setRest!56766 () (InoxSet B!3889))

(assert (=> setNonEmpty!56766 (= res!2987612 ((_ map or) (store ((as const (Array B!3889 Bool)) false) setElem!56766 true) setRest!56766))))

(assert (= (and d!2296752 condSetEmpty!56766) setIsEmpty!56766))

(assert (= (and d!2296752 (not condSetEmpty!56766)) setNonEmpty!56766))

(assert (=> d!2296738 d!2296752))

(declare-fun d!2296754 () Bool)

(declare-fun c!1377545 () Bool)

(assert (=> d!2296754 (= c!1377545 ((_ is Nil!72055) lt!2619614))))

(declare-fun e!4446443 () (InoxSet B!3889))

(assert (=> d!2296754 (= (content!15244 lt!2619614) e!4446443)))

(declare-fun b!7448110 () Bool)

(assert (=> b!7448110 (= e!4446443 ((as const (Array B!3889 Bool)) false))))

(declare-fun b!7448111 () Bool)

(assert (=> b!7448111 (= e!4446443 ((_ map or) (store ((as const (Array B!3889 Bool)) false) (h!78503 lt!2619614) true) (content!15244 (t!386744 lt!2619614))))))

(assert (= (and d!2296754 c!1377545) b!7448110))

(assert (= (and d!2296754 (not c!1377545)) b!7448111))

(declare-fun m!8055796 () Bool)

(assert (=> b!7448111 m!8055796))

(declare-fun m!8055798 () Bool)

(assert (=> b!7448111 m!8055798))

(assert (=> b!7448086 d!2296754))

(declare-fun condSetEmpty!56767 () Bool)

(assert (=> setNonEmpty!56760 (= condSetEmpty!56767 (= setRest!56760 ((as const (Array A!1135 Bool)) false)))))

(declare-fun setRes!56767 () Bool)

(assert (=> setNonEmpty!56760 (= tp!2157347 setRes!56767)))

(declare-fun setIsEmpty!56767 () Bool)

(assert (=> setIsEmpty!56767 setRes!56767))

(declare-fun setNonEmpty!56767 () Bool)

(declare-fun tp!2157357 () Bool)

(assert (=> setNonEmpty!56767 (= setRes!56767 (and tp!2157357 tp_is_empty!49215))))

(declare-fun setElem!56767 () A!1135)

(declare-fun setRest!56767 () (InoxSet A!1135))

(assert (=> setNonEmpty!56767 (= setRest!56760 ((_ map or) (store ((as const (Array A!1135 Bool)) false) setElem!56767 true) setRest!56767))))

(assert (= (and setNonEmpty!56760 condSetEmpty!56767) setIsEmpty!56767))

(assert (= (and setNonEmpty!56760 (not condSetEmpty!56767)) setNonEmpty!56767))

(check-sat (not b!7448098) b_and!351961 (not b!7448105) (not d!2296750) (not b_next!135135) tp_is_empty!49217 (not setNonEmpty!56767) (not setNonEmpty!56766) tp_is_empty!49215 (not b!7448104) (not b!7448111) (not b!7448099))
(check-sat b_and!351961 (not b_next!135135))
