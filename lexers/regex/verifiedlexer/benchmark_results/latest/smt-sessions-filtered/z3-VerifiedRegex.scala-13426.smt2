; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726366 () Bool)

(assert start!726366)

(declare-fun b!7504667 () Bool)

(declare-fun e!4474593 () Bool)

(declare-fun tp_is_empty!49719 () Bool)

(declare-fun tp!2178454 () Bool)

(assert (=> b!7504667 (= e!4474593 (and tp_is_empty!49719 tp!2178454))))

(declare-fun b!7504668 () Bool)

(declare-fun e!4474590 () Bool)

(declare-fun tp!2178455 () Bool)

(assert (=> b!7504668 (= e!4474590 (and tp_is_empty!49719 tp!2178455))))

(declare-fun b!7504669 () Bool)

(declare-fun e!4474591 () Bool)

(declare-fun e!4474594 () Bool)

(assert (=> b!7504669 (= e!4474591 e!4474594)))

(declare-fun res!3010748 () Bool)

(assert (=> b!7504669 (=> (not res!3010748) (not e!4474594))))

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2634174 () Int)

(assert (=> b!7504669 (= res!3010748 (= testedPSize!164 lt!2634174))))

(declare-datatypes ((C!39704 0))(
  ( (C!39705 (val!30250 Int)) )
))
(declare-datatypes ((List!72476 0))(
  ( (Nil!72352) (Cons!72352 (h!78800 C!39704) (t!387045 List!72476)) )
))
(declare-fun testedP!204 () List!72476)

(declare-fun size!42260 (List!72476) Int)

(assert (=> b!7504669 (= lt!2634174 (size!42260 testedP!204))))

(declare-fun b!7504670 () Bool)

(declare-fun e!4474592 () Bool)

(declare-fun tp!2178453 () Bool)

(assert (=> b!7504670 (= e!4474592 (and tp_is_empty!49719 tp!2178453))))

(declare-fun res!3010747 () Bool)

(assert (=> start!726366 (=> (not res!3010747) (not e!4474591))))

(declare-fun testedSuffix!164 () List!72476)

(declare-fun totalInput!779 () List!72476)

(declare-fun ++!17318 (List!72476 List!72476) List!72476)

(assert (=> start!726366 (= res!3010747 (= (++!17318 testedP!204 testedSuffix!164) totalInput!779))))

(assert (=> start!726366 e!4474591))

(assert (=> start!726366 e!4474593))

(assert (=> start!726366 true))

(assert (=> start!726366 e!4474590))

(assert (=> start!726366 e!4474592))

(declare-fun totalInputSize!226 () Int)

(declare-fun b!7504671 () Bool)

(declare-fun lt!2634173 () Int)

(assert (=> b!7504671 (= e!4474594 (and (= totalInputSize!226 lt!2634173) (< (- lt!2634173 lt!2634174) 0)))))

(assert (=> b!7504671 (= lt!2634173 (size!42260 totalInput!779))))

(assert (= (and start!726366 res!3010747) b!7504669))

(assert (= (and b!7504669 res!3010748) b!7504671))

(get-info :version)

(assert (= (and start!726366 ((_ is Cons!72352) testedSuffix!164)) b!7504667))

(assert (= (and start!726366 ((_ is Cons!72352) totalInput!779)) b!7504668))

(assert (= (and start!726366 ((_ is Cons!72352) testedP!204)) b!7504670))

(declare-fun m!8086996 () Bool)

(assert (=> b!7504669 m!8086996))

(declare-fun m!8086998 () Bool)

(assert (=> start!726366 m!8086998))

(declare-fun m!8087000 () Bool)

(assert (=> b!7504671 m!8087000))

(check-sat (not b!7504670) (not b!7504671) (not b!7504667) tp_is_empty!49719 (not start!726366) (not b!7504668) (not b!7504669))
(check-sat)
(get-model)

(declare-fun d!2303729 () Bool)

(declare-fun lt!2634180 () Int)

(assert (=> d!2303729 (>= lt!2634180 0)))

(declare-fun e!4474600 () Int)

(assert (=> d!2303729 (= lt!2634180 e!4474600)))

(declare-fun c!1385476 () Bool)

(assert (=> d!2303729 (= c!1385476 ((_ is Nil!72352) testedP!204))))

(assert (=> d!2303729 (= (size!42260 testedP!204) lt!2634180)))

(declare-fun b!7504682 () Bool)

(assert (=> b!7504682 (= e!4474600 0)))

(declare-fun b!7504683 () Bool)

(assert (=> b!7504683 (= e!4474600 (+ 1 (size!42260 (t!387045 testedP!204))))))

(assert (= (and d!2303729 c!1385476) b!7504682))

(assert (= (and d!2303729 (not c!1385476)) b!7504683))

(declare-fun m!8087004 () Bool)

(assert (=> b!7504683 m!8087004))

(assert (=> b!7504669 d!2303729))

(declare-fun b!7504712 () Bool)

(declare-fun res!3010759 () Bool)

(declare-fun e!4474614 () Bool)

(assert (=> b!7504712 (=> (not res!3010759) (not e!4474614))))

(declare-fun lt!2634187 () List!72476)

(assert (=> b!7504712 (= res!3010759 (= (size!42260 lt!2634187) (+ (size!42260 testedP!204) (size!42260 testedSuffix!164))))))

(declare-fun b!7504711 () Bool)

(declare-fun e!4474615 () List!72476)

(assert (=> b!7504711 (= e!4474615 (Cons!72352 (h!78800 testedP!204) (++!17318 (t!387045 testedP!204) testedSuffix!164)))))

(declare-fun d!2303733 () Bool)

(assert (=> d!2303733 e!4474614))

(declare-fun res!3010760 () Bool)

(assert (=> d!2303733 (=> (not res!3010760) (not e!4474614))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15293 (List!72476) (InoxSet C!39704))

(assert (=> d!2303733 (= res!3010760 (= (content!15293 lt!2634187) ((_ map or) (content!15293 testedP!204) (content!15293 testedSuffix!164))))))

(assert (=> d!2303733 (= lt!2634187 e!4474615)))

(declare-fun c!1385483 () Bool)

(assert (=> d!2303733 (= c!1385483 ((_ is Nil!72352) testedP!204))))

(assert (=> d!2303733 (= (++!17318 testedP!204 testedSuffix!164) lt!2634187)))

(declare-fun b!7504710 () Bool)

(assert (=> b!7504710 (= e!4474615 testedSuffix!164)))

(declare-fun b!7504713 () Bool)

(assert (=> b!7504713 (= e!4474614 (or (not (= testedSuffix!164 Nil!72352)) (= lt!2634187 testedP!204)))))

(assert (= (and d!2303733 c!1385483) b!7504710))

(assert (= (and d!2303733 (not c!1385483)) b!7504711))

(assert (= (and d!2303733 res!3010760) b!7504712))

(assert (= (and b!7504712 res!3010759) b!7504713))

(declare-fun m!8087020 () Bool)

(assert (=> b!7504712 m!8087020))

(assert (=> b!7504712 m!8086996))

(declare-fun m!8087022 () Bool)

(assert (=> b!7504712 m!8087022))

(declare-fun m!8087024 () Bool)

(assert (=> b!7504711 m!8087024))

(declare-fun m!8087026 () Bool)

(assert (=> d!2303733 m!8087026))

(declare-fun m!8087028 () Bool)

(assert (=> d!2303733 m!8087028))

(declare-fun m!8087030 () Bool)

(assert (=> d!2303733 m!8087030))

(assert (=> start!726366 d!2303733))

(declare-fun d!2303737 () Bool)

(declare-fun lt!2634188 () Int)

(assert (=> d!2303737 (>= lt!2634188 0)))

(declare-fun e!4474619 () Int)

(assert (=> d!2303737 (= lt!2634188 e!4474619)))

(declare-fun c!1385484 () Bool)

(assert (=> d!2303737 (= c!1385484 ((_ is Nil!72352) totalInput!779))))

(assert (=> d!2303737 (= (size!42260 totalInput!779) lt!2634188)))

(declare-fun b!7504717 () Bool)

(assert (=> b!7504717 (= e!4474619 0)))

(declare-fun b!7504718 () Bool)

(assert (=> b!7504718 (= e!4474619 (+ 1 (size!42260 (t!387045 totalInput!779))))))

(assert (= (and d!2303737 c!1385484) b!7504717))

(assert (= (and d!2303737 (not c!1385484)) b!7504718))

(declare-fun m!8087032 () Bool)

(assert (=> b!7504718 m!8087032))

(assert (=> b!7504671 d!2303737))

(declare-fun b!7504723 () Bool)

(declare-fun e!4474622 () Bool)

(declare-fun tp!2178463 () Bool)

(assert (=> b!7504723 (= e!4474622 (and tp_is_empty!49719 tp!2178463))))

(assert (=> b!7504668 (= tp!2178455 e!4474622)))

(assert (= (and b!7504668 ((_ is Cons!72352) (t!387045 totalInput!779))) b!7504723))

(declare-fun b!7504724 () Bool)

(declare-fun e!4474623 () Bool)

(declare-fun tp!2178464 () Bool)

(assert (=> b!7504724 (= e!4474623 (and tp_is_empty!49719 tp!2178464))))

(assert (=> b!7504670 (= tp!2178453 e!4474623)))

(assert (= (and b!7504670 ((_ is Cons!72352) (t!387045 testedP!204))) b!7504724))

(declare-fun b!7504725 () Bool)

(declare-fun e!4474624 () Bool)

(declare-fun tp!2178465 () Bool)

(assert (=> b!7504725 (= e!4474624 (and tp_is_empty!49719 tp!2178465))))

(assert (=> b!7504667 (= tp!2178454 e!4474624)))

(assert (= (and b!7504667 ((_ is Cons!72352) (t!387045 testedSuffix!164))) b!7504725))

(check-sat (not b!7504712) (not b!7504683) (not b!7504723) tp_is_empty!49719 (not b!7504724) (not b!7504725) (not b!7504711) (not b!7504718) (not d!2303733))
(check-sat)
(get-model)

(declare-fun b!7504728 () Bool)

(declare-fun res!3010761 () Bool)

(declare-fun e!4474625 () Bool)

(assert (=> b!7504728 (=> (not res!3010761) (not e!4474625))))

(declare-fun lt!2634189 () List!72476)

(assert (=> b!7504728 (= res!3010761 (= (size!42260 lt!2634189) (+ (size!42260 (t!387045 testedP!204)) (size!42260 testedSuffix!164))))))

(declare-fun b!7504727 () Bool)

(declare-fun e!4474626 () List!72476)

(assert (=> b!7504727 (= e!4474626 (Cons!72352 (h!78800 (t!387045 testedP!204)) (++!17318 (t!387045 (t!387045 testedP!204)) testedSuffix!164)))))

(declare-fun d!2303739 () Bool)

(assert (=> d!2303739 e!4474625))

(declare-fun res!3010762 () Bool)

(assert (=> d!2303739 (=> (not res!3010762) (not e!4474625))))

(assert (=> d!2303739 (= res!3010762 (= (content!15293 lt!2634189) ((_ map or) (content!15293 (t!387045 testedP!204)) (content!15293 testedSuffix!164))))))

(assert (=> d!2303739 (= lt!2634189 e!4474626)))

(declare-fun c!1385485 () Bool)

(assert (=> d!2303739 (= c!1385485 ((_ is Nil!72352) (t!387045 testedP!204)))))

(assert (=> d!2303739 (= (++!17318 (t!387045 testedP!204) testedSuffix!164) lt!2634189)))

(declare-fun b!7504726 () Bool)

(assert (=> b!7504726 (= e!4474626 testedSuffix!164)))

(declare-fun b!7504729 () Bool)

(assert (=> b!7504729 (= e!4474625 (or (not (= testedSuffix!164 Nil!72352)) (= lt!2634189 (t!387045 testedP!204))))))

(assert (= (and d!2303739 c!1385485) b!7504726))

(assert (= (and d!2303739 (not c!1385485)) b!7504727))

(assert (= (and d!2303739 res!3010762) b!7504728))

(assert (= (and b!7504728 res!3010761) b!7504729))

(declare-fun m!8087034 () Bool)

(assert (=> b!7504728 m!8087034))

(assert (=> b!7504728 m!8087004))

(assert (=> b!7504728 m!8087022))

(declare-fun m!8087036 () Bool)

(assert (=> b!7504727 m!8087036))

(declare-fun m!8087038 () Bool)

(assert (=> d!2303739 m!8087038))

(declare-fun m!8087040 () Bool)

(assert (=> d!2303739 m!8087040))

(assert (=> d!2303739 m!8087030))

(assert (=> b!7504711 d!2303739))

(declare-fun d!2303741 () Bool)

(declare-fun lt!2634190 () Int)

(assert (=> d!2303741 (>= lt!2634190 0)))

(declare-fun e!4474627 () Int)

(assert (=> d!2303741 (= lt!2634190 e!4474627)))

(declare-fun c!1385486 () Bool)

(assert (=> d!2303741 (= c!1385486 ((_ is Nil!72352) lt!2634187))))

(assert (=> d!2303741 (= (size!42260 lt!2634187) lt!2634190)))

(declare-fun b!7504730 () Bool)

(assert (=> b!7504730 (= e!4474627 0)))

(declare-fun b!7504731 () Bool)

(assert (=> b!7504731 (= e!4474627 (+ 1 (size!42260 (t!387045 lt!2634187))))))

(assert (= (and d!2303741 c!1385486) b!7504730))

(assert (= (and d!2303741 (not c!1385486)) b!7504731))

(declare-fun m!8087042 () Bool)

(assert (=> b!7504731 m!8087042))

(assert (=> b!7504712 d!2303741))

(assert (=> b!7504712 d!2303729))

(declare-fun d!2303743 () Bool)

(declare-fun lt!2634191 () Int)

(assert (=> d!2303743 (>= lt!2634191 0)))

(declare-fun e!4474628 () Int)

(assert (=> d!2303743 (= lt!2634191 e!4474628)))

(declare-fun c!1385487 () Bool)

(assert (=> d!2303743 (= c!1385487 ((_ is Nil!72352) testedSuffix!164))))

(assert (=> d!2303743 (= (size!42260 testedSuffix!164) lt!2634191)))

(declare-fun b!7504732 () Bool)

(assert (=> b!7504732 (= e!4474628 0)))

(declare-fun b!7504733 () Bool)

(assert (=> b!7504733 (= e!4474628 (+ 1 (size!42260 (t!387045 testedSuffix!164))))))

(assert (= (and d!2303743 c!1385487) b!7504732))

(assert (= (and d!2303743 (not c!1385487)) b!7504733))

(declare-fun m!8087044 () Bool)

(assert (=> b!7504733 m!8087044))

(assert (=> b!7504712 d!2303743))

(declare-fun d!2303745 () Bool)

(declare-fun c!1385495 () Bool)

(assert (=> d!2303745 (= c!1385495 ((_ is Nil!72352) lt!2634187))))

(declare-fun e!4474637 () (InoxSet C!39704))

(assert (=> d!2303745 (= (content!15293 lt!2634187) e!4474637)))

(declare-fun b!7504750 () Bool)

(assert (=> b!7504750 (= e!4474637 ((as const (Array C!39704 Bool)) false))))

(declare-fun b!7504751 () Bool)

(assert (=> b!7504751 (= e!4474637 ((_ map or) (store ((as const (Array C!39704 Bool)) false) (h!78800 lt!2634187) true) (content!15293 (t!387045 lt!2634187))))))

(assert (= (and d!2303745 c!1385495) b!7504750))

(assert (= (and d!2303745 (not c!1385495)) b!7504751))

(declare-fun m!8087062 () Bool)

(assert (=> b!7504751 m!8087062))

(declare-fun m!8087064 () Bool)

(assert (=> b!7504751 m!8087064))

(assert (=> d!2303733 d!2303745))

(declare-fun d!2303759 () Bool)

(declare-fun c!1385496 () Bool)

(assert (=> d!2303759 (= c!1385496 ((_ is Nil!72352) testedP!204))))

(declare-fun e!4474638 () (InoxSet C!39704))

(assert (=> d!2303759 (= (content!15293 testedP!204) e!4474638)))

(declare-fun b!7504752 () Bool)

(assert (=> b!7504752 (= e!4474638 ((as const (Array C!39704 Bool)) false))))

(declare-fun b!7504753 () Bool)

(assert (=> b!7504753 (= e!4474638 ((_ map or) (store ((as const (Array C!39704 Bool)) false) (h!78800 testedP!204) true) (content!15293 (t!387045 testedP!204))))))

(assert (= (and d!2303759 c!1385496) b!7504752))

(assert (= (and d!2303759 (not c!1385496)) b!7504753))

(declare-fun m!8087066 () Bool)

(assert (=> b!7504753 m!8087066))

(assert (=> b!7504753 m!8087040))

(assert (=> d!2303733 d!2303759))

(declare-fun d!2303761 () Bool)

(declare-fun c!1385499 () Bool)

(assert (=> d!2303761 (= c!1385499 ((_ is Nil!72352) testedSuffix!164))))

(declare-fun e!4474641 () (InoxSet C!39704))

(assert (=> d!2303761 (= (content!15293 testedSuffix!164) e!4474641)))

(declare-fun b!7504758 () Bool)

(assert (=> b!7504758 (= e!4474641 ((as const (Array C!39704 Bool)) false))))

(declare-fun b!7504759 () Bool)

(assert (=> b!7504759 (= e!4474641 ((_ map or) (store ((as const (Array C!39704 Bool)) false) (h!78800 testedSuffix!164) true) (content!15293 (t!387045 testedSuffix!164))))))

(assert (= (and d!2303761 c!1385499) b!7504758))

(assert (= (and d!2303761 (not c!1385499)) b!7504759))

(declare-fun m!8087068 () Bool)

(assert (=> b!7504759 m!8087068))

(declare-fun m!8087070 () Bool)

(assert (=> b!7504759 m!8087070))

(assert (=> d!2303733 d!2303761))

(declare-fun d!2303763 () Bool)

(declare-fun lt!2634197 () Int)

(assert (=> d!2303763 (>= lt!2634197 0)))

(declare-fun e!4474642 () Int)

(assert (=> d!2303763 (= lt!2634197 e!4474642)))

(declare-fun c!1385500 () Bool)

(assert (=> d!2303763 (= c!1385500 ((_ is Nil!72352) (t!387045 totalInput!779)))))

(assert (=> d!2303763 (= (size!42260 (t!387045 totalInput!779)) lt!2634197)))

(declare-fun b!7504760 () Bool)

(assert (=> b!7504760 (= e!4474642 0)))

(declare-fun b!7504761 () Bool)

(assert (=> b!7504761 (= e!4474642 (+ 1 (size!42260 (t!387045 (t!387045 totalInput!779)))))))

(assert (= (and d!2303763 c!1385500) b!7504760))

(assert (= (and d!2303763 (not c!1385500)) b!7504761))

(declare-fun m!8087072 () Bool)

(assert (=> b!7504761 m!8087072))

(assert (=> b!7504718 d!2303763))

(declare-fun d!2303765 () Bool)

(declare-fun lt!2634198 () Int)

(assert (=> d!2303765 (>= lt!2634198 0)))

(declare-fun e!4474643 () Int)

(assert (=> d!2303765 (= lt!2634198 e!4474643)))

(declare-fun c!1385501 () Bool)

(assert (=> d!2303765 (= c!1385501 ((_ is Nil!72352) (t!387045 testedP!204)))))

(assert (=> d!2303765 (= (size!42260 (t!387045 testedP!204)) lt!2634198)))

(declare-fun b!7504762 () Bool)

(assert (=> b!7504762 (= e!4474643 0)))

(declare-fun b!7504763 () Bool)

(assert (=> b!7504763 (= e!4474643 (+ 1 (size!42260 (t!387045 (t!387045 testedP!204)))))))

(assert (= (and d!2303765 c!1385501) b!7504762))

(assert (= (and d!2303765 (not c!1385501)) b!7504763))

(declare-fun m!8087074 () Bool)

(assert (=> b!7504763 m!8087074))

(assert (=> b!7504683 d!2303765))

(declare-fun b!7504764 () Bool)

(declare-fun e!4474644 () Bool)

(declare-fun tp!2178466 () Bool)

(assert (=> b!7504764 (= e!4474644 (and tp_is_empty!49719 tp!2178466))))

(assert (=> b!7504723 (= tp!2178463 e!4474644)))

(assert (= (and b!7504723 ((_ is Cons!72352) (t!387045 (t!387045 totalInput!779)))) b!7504764))

(declare-fun b!7504765 () Bool)

(declare-fun e!4474645 () Bool)

(declare-fun tp!2178467 () Bool)

(assert (=> b!7504765 (= e!4474645 (and tp_is_empty!49719 tp!2178467))))

(assert (=> b!7504725 (= tp!2178465 e!4474645)))

(assert (= (and b!7504725 ((_ is Cons!72352) (t!387045 (t!387045 testedSuffix!164)))) b!7504765))

(declare-fun b!7504766 () Bool)

(declare-fun e!4474646 () Bool)

(declare-fun tp!2178468 () Bool)

(assert (=> b!7504766 (= e!4474646 (and tp_is_empty!49719 tp!2178468))))

(assert (=> b!7504724 (= tp!2178464 e!4474646)))

(assert (= (and b!7504724 ((_ is Cons!72352) (t!387045 (t!387045 testedP!204)))) b!7504766))

(check-sat (not b!7504753) (not d!2303739) (not b!7504727) (not b!7504733) tp_is_empty!49719 (not b!7504731) (not b!7504761) (not b!7504763) (not b!7504728) (not b!7504764) (not b!7504766) (not b!7504751) (not b!7504765) (not b!7504759))
(check-sat)
