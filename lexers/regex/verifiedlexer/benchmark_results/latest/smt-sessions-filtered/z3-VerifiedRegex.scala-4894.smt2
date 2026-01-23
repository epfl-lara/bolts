; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250888 () Bool)

(assert start!250888)

(declare-fun res!1089178 () Bool)

(declare-fun e!1634111 () Bool)

(assert (=> start!250888 (=> (not res!1089178) (not e!1634111))))

(declare-datatypes ((B!1997 0))(
  ( (B!1998 (val!9466 Int)) )
))
(declare-datatypes ((List!29899 0))(
  ( (Nil!29799) (Cons!29799 (h!35219 B!1997) (t!212912 List!29899)) )
))
(declare-fun l!3230 () List!29899)

(declare-fun noDuplicate!347 (List!29899) Bool)

(assert (=> start!250888 (= res!1089178 (noDuplicate!347 l!3230))))

(assert (=> start!250888 e!1634111))

(declare-fun e!1634113 () Bool)

(assert (=> start!250888 e!1634113))

(declare-fun b!2590486 () Bool)

(declare-fun res!1089179 () Bool)

(assert (=> b!2590486 (=> (not res!1089179) (not e!1634111))))

(get-info :version)

(assert (=> b!2590486 (= res!1089179 ((_ is Cons!29799) l!3230))))

(declare-fun b!2590489 () Bool)

(declare-fun tp_is_empty!13277 () Bool)

(declare-fun tp!822612 () Bool)

(assert (=> b!2590489 (= e!1634113 (and tp_is_empty!13277 tp!822612))))

(declare-fun b!2590487 () Bool)

(declare-fun e!1634112 () Bool)

(assert (=> b!2590487 (= e!1634111 (not e!1634112))))

(declare-fun res!1089177 () Bool)

(assert (=> b!2590487 (=> res!1089177 e!1634112)))

(declare-fun lt!910938 () Int)

(declare-fun size!23112 (List!29899) Int)

(assert (=> b!2590487 (= res!1089177 (>= lt!910938 (size!23112 l!3230)))))

(assert (=> b!2590487 (= lt!910938 (size!23112 (t!212912 l!3230)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!910939 () (InoxSet B!1997))

(declare-fun toList!1750 ((InoxSet B!1997)) List!29899)

(assert (=> b!2590487 (= lt!910938 (size!23112 (toList!1750 lt!910939)))))

(declare-fun content!4140 (List!29899) (InoxSet B!1997))

(assert (=> b!2590487 (= lt!910939 (content!4140 (t!212912 l!3230)))))

(declare-datatypes ((Unit!43704 0))(
  ( (Unit!43705) )
))
(declare-fun lt!910937 () Unit!43704)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!40 (List!29899) Unit!43704)

(assert (=> b!2590487 (= lt!910937 (lemmaNoDuplicateThenContentToListSameSize!40 (t!212912 l!3230)))))

(declare-fun b!2590488 () Bool)

(assert (=> b!2590488 (= e!1634112 (not (select lt!910939 (h!35219 l!3230))))))

(assert (= (and start!250888 res!1089178) b!2590486))

(assert (= (and b!2590486 res!1089179) b!2590487))

(assert (= (and b!2590487 (not res!1089177)) b!2590488))

(assert (= (and start!250888 ((_ is Cons!29799) l!3230)) b!2590489))

(declare-fun m!2926569 () Bool)

(assert (=> start!250888 m!2926569))

(declare-fun m!2926571 () Bool)

(assert (=> b!2590487 m!2926571))

(declare-fun m!2926573 () Bool)

(assert (=> b!2590487 m!2926573))

(assert (=> b!2590487 m!2926571))

(declare-fun m!2926575 () Bool)

(assert (=> b!2590487 m!2926575))

(declare-fun m!2926577 () Bool)

(assert (=> b!2590487 m!2926577))

(declare-fun m!2926579 () Bool)

(assert (=> b!2590487 m!2926579))

(declare-fun m!2926581 () Bool)

(assert (=> b!2590487 m!2926581))

(declare-fun m!2926583 () Bool)

(assert (=> b!2590488 m!2926583))

(check-sat (not b!2590487) (not start!250888) (not b!2590489) tp_is_empty!13277)
(check-sat)
(get-model)

(declare-fun d!733817 () Bool)

(declare-fun lt!910947 () Int)

(assert (=> d!733817 (>= lt!910947 0)))

(declare-fun e!1634121 () Int)

(assert (=> d!733817 (= lt!910947 e!1634121)))

(declare-fun c!417631 () Bool)

(assert (=> d!733817 (= c!417631 ((_ is Nil!29799) l!3230))))

(assert (=> d!733817 (= (size!23112 l!3230) lt!910947)))

(declare-fun b!2590501 () Bool)

(assert (=> b!2590501 (= e!1634121 0)))

(declare-fun b!2590502 () Bool)

(assert (=> b!2590502 (= e!1634121 (+ 1 (size!23112 (t!212912 l!3230))))))

(assert (= (and d!733817 c!417631) b!2590501))

(assert (= (and d!733817 (not c!417631)) b!2590502))

(assert (=> b!2590502 m!2926577))

(assert (=> b!2590487 d!733817))

(declare-fun d!733821 () Bool)

(declare-fun c!417638 () Bool)

(assert (=> d!733821 (= c!417638 ((_ is Nil!29799) (t!212912 l!3230)))))

(declare-fun e!1634128 () (InoxSet B!1997))

(assert (=> d!733821 (= (content!4140 (t!212912 l!3230)) e!1634128)))

(declare-fun b!2590515 () Bool)

(assert (=> b!2590515 (= e!1634128 ((as const (Array B!1997 Bool)) false))))

(declare-fun b!2590516 () Bool)

(assert (=> b!2590516 (= e!1634128 ((_ map or) (store ((as const (Array B!1997 Bool)) false) (h!35219 (t!212912 l!3230)) true) (content!4140 (t!212912 (t!212912 l!3230)))))))

(assert (= (and d!733821 c!417638) b!2590515))

(assert (= (and d!733821 (not c!417638)) b!2590516))

(declare-fun m!2926593 () Bool)

(assert (=> b!2590516 m!2926593))

(declare-fun m!2926595 () Bool)

(assert (=> b!2590516 m!2926595))

(assert (=> b!2590487 d!733821))

(declare-fun d!733827 () Bool)

(declare-fun e!1634133 () Bool)

(assert (=> d!733827 e!1634133))

(declare-fun res!1089185 () Bool)

(assert (=> d!733827 (=> (not res!1089185) (not e!1634133))))

(declare-fun lt!910953 () List!29899)

(assert (=> d!733827 (= res!1089185 (noDuplicate!347 lt!910953))))

(declare-fun choose!15285 ((InoxSet B!1997)) List!29899)

(assert (=> d!733827 (= lt!910953 (choose!15285 lt!910939))))

(assert (=> d!733827 (= (toList!1750 lt!910939) lt!910953)))

(declare-fun b!2590523 () Bool)

(assert (=> b!2590523 (= e!1634133 (= (content!4140 lt!910953) lt!910939))))

(assert (= (and d!733827 res!1089185) b!2590523))

(declare-fun m!2926603 () Bool)

(assert (=> d!733827 m!2926603))

(declare-fun m!2926605 () Bool)

(assert (=> d!733827 m!2926605))

(declare-fun m!2926607 () Bool)

(assert (=> b!2590523 m!2926607))

(assert (=> b!2590487 d!733827))

(declare-fun d!733833 () Bool)

(assert (=> d!733833 (= (size!23112 (toList!1750 (content!4140 (t!212912 l!3230)))) (size!23112 (t!212912 l!3230)))))

(declare-fun lt!910959 () Unit!43704)

(declare-fun choose!15286 (List!29899) Unit!43704)

(assert (=> d!733833 (= lt!910959 (choose!15286 (t!212912 l!3230)))))

(assert (=> d!733833 (noDuplicate!347 (t!212912 l!3230))))

(assert (=> d!733833 (= (lemmaNoDuplicateThenContentToListSameSize!40 (t!212912 l!3230)) lt!910959)))

(declare-fun bs!472122 () Bool)

(assert (= bs!472122 d!733833))

(declare-fun m!2926617 () Bool)

(assert (=> bs!472122 m!2926617))

(assert (=> bs!472122 m!2926577))

(declare-fun m!2926619 () Bool)

(assert (=> bs!472122 m!2926619))

(declare-fun m!2926621 () Bool)

(assert (=> bs!472122 m!2926621))

(declare-fun m!2926623 () Bool)

(assert (=> bs!472122 m!2926623))

(assert (=> bs!472122 m!2926579))

(assert (=> bs!472122 m!2926579))

(assert (=> bs!472122 m!2926621))

(assert (=> b!2590487 d!733833))

(declare-fun d!733837 () Bool)

(declare-fun lt!910960 () Int)

(assert (=> d!733837 (>= lt!910960 0)))

(declare-fun e!1634138 () Int)

(assert (=> d!733837 (= lt!910960 e!1634138)))

(declare-fun c!417641 () Bool)

(assert (=> d!733837 (= c!417641 ((_ is Nil!29799) (t!212912 l!3230)))))

(assert (=> d!733837 (= (size!23112 (t!212912 l!3230)) lt!910960)))

(declare-fun b!2590528 () Bool)

(assert (=> b!2590528 (= e!1634138 0)))

(declare-fun b!2590529 () Bool)

(assert (=> b!2590529 (= e!1634138 (+ 1 (size!23112 (t!212912 (t!212912 l!3230)))))))

(assert (= (and d!733837 c!417641) b!2590528))

(assert (= (and d!733837 (not c!417641)) b!2590529))

(declare-fun m!2926625 () Bool)

(assert (=> b!2590529 m!2926625))

(assert (=> b!2590487 d!733837))

(declare-fun d!733839 () Bool)

(declare-fun lt!910961 () Int)

(assert (=> d!733839 (>= lt!910961 0)))

(declare-fun e!1634139 () Int)

(assert (=> d!733839 (= lt!910961 e!1634139)))

(declare-fun c!417642 () Bool)

(assert (=> d!733839 (= c!417642 ((_ is Nil!29799) (toList!1750 lt!910939)))))

(assert (=> d!733839 (= (size!23112 (toList!1750 lt!910939)) lt!910961)))

(declare-fun b!2590530 () Bool)

(assert (=> b!2590530 (= e!1634139 0)))

(declare-fun b!2590531 () Bool)

(assert (=> b!2590531 (= e!1634139 (+ 1 (size!23112 (t!212912 (toList!1750 lt!910939)))))))

(assert (= (and d!733839 c!417642) b!2590530))

(assert (= (and d!733839 (not c!417642)) b!2590531))

(declare-fun m!2926627 () Bool)

(assert (=> b!2590531 m!2926627))

(assert (=> b!2590487 d!733839))

(declare-fun d!733841 () Bool)

(declare-fun res!1089196 () Bool)

(declare-fun e!1634149 () Bool)

(assert (=> d!733841 (=> res!1089196 e!1634149)))

(assert (=> d!733841 (= res!1089196 ((_ is Nil!29799) l!3230))))

(assert (=> d!733841 (= (noDuplicate!347 l!3230) e!1634149)))

(declare-fun b!2590543 () Bool)

(declare-fun e!1634150 () Bool)

(assert (=> b!2590543 (= e!1634149 e!1634150)))

(declare-fun res!1089197 () Bool)

(assert (=> b!2590543 (=> (not res!1089197) (not e!1634150))))

(declare-fun contains!5348 (List!29899 B!1997) Bool)

(assert (=> b!2590543 (= res!1089197 (not (contains!5348 (t!212912 l!3230) (h!35219 l!3230))))))

(declare-fun b!2590544 () Bool)

(assert (=> b!2590544 (= e!1634150 (noDuplicate!347 (t!212912 l!3230)))))

(assert (= (and d!733841 (not res!1089196)) b!2590543))

(assert (= (and b!2590543 res!1089197) b!2590544))

(declare-fun m!2926631 () Bool)

(assert (=> b!2590543 m!2926631))

(assert (=> b!2590544 m!2926617))

(assert (=> start!250888 d!733841))

(declare-fun b!2590549 () Bool)

(declare-fun e!1634153 () Bool)

(declare-fun tp!822618 () Bool)

(assert (=> b!2590549 (= e!1634153 (and tp_is_empty!13277 tp!822618))))

(assert (=> b!2590489 (= tp!822612 e!1634153)))

(assert (= (and b!2590489 ((_ is Cons!29799) (t!212912 l!3230))) b!2590549))

(check-sat (not b!2590544) (not b!2590549) tp_is_empty!13277 (not b!2590531) (not d!733827) (not b!2590529) (not b!2590502) (not b!2590516) (not b!2590543) (not b!2590523) (not d!733833))
(check-sat)
(get-model)

(declare-fun d!733843 () Bool)

(declare-fun lt!910962 () Int)

(assert (=> d!733843 (>= lt!910962 0)))

(declare-fun e!1634154 () Int)

(assert (=> d!733843 (= lt!910962 e!1634154)))

(declare-fun c!417643 () Bool)

(assert (=> d!733843 (= c!417643 ((_ is Nil!29799) (t!212912 (toList!1750 lt!910939))))))

(assert (=> d!733843 (= (size!23112 (t!212912 (toList!1750 lt!910939))) lt!910962)))

(declare-fun b!2590550 () Bool)

(assert (=> b!2590550 (= e!1634154 0)))

(declare-fun b!2590551 () Bool)

(assert (=> b!2590551 (= e!1634154 (+ 1 (size!23112 (t!212912 (t!212912 (toList!1750 lt!910939))))))))

(assert (= (and d!733843 c!417643) b!2590550))

(assert (= (and d!733843 (not c!417643)) b!2590551))

(declare-fun m!2926633 () Bool)

(assert (=> b!2590551 m!2926633))

(assert (=> b!2590531 d!733843))

(declare-fun d!733845 () Bool)

(declare-fun lt!910965 () Bool)

(assert (=> d!733845 (= lt!910965 (select (content!4140 (t!212912 l!3230)) (h!35219 l!3230)))))

(declare-fun e!1634159 () Bool)

(assert (=> d!733845 (= lt!910965 e!1634159)))

(declare-fun res!1089203 () Bool)

(assert (=> d!733845 (=> (not res!1089203) (not e!1634159))))

(assert (=> d!733845 (= res!1089203 ((_ is Cons!29799) (t!212912 l!3230)))))

(assert (=> d!733845 (= (contains!5348 (t!212912 l!3230) (h!35219 l!3230)) lt!910965)))

(declare-fun b!2590556 () Bool)

(declare-fun e!1634160 () Bool)

(assert (=> b!2590556 (= e!1634159 e!1634160)))

(declare-fun res!1089202 () Bool)

(assert (=> b!2590556 (=> res!1089202 e!1634160)))

(assert (=> b!2590556 (= res!1089202 (= (h!35219 (t!212912 l!3230)) (h!35219 l!3230)))))

(declare-fun b!2590557 () Bool)

(assert (=> b!2590557 (= e!1634160 (contains!5348 (t!212912 (t!212912 l!3230)) (h!35219 l!3230)))))

(assert (= (and d!733845 res!1089203) b!2590556))

(assert (= (and b!2590556 (not res!1089202)) b!2590557))

(assert (=> d!733845 m!2926579))

(declare-fun m!2926635 () Bool)

(assert (=> d!733845 m!2926635))

(declare-fun m!2926637 () Bool)

(assert (=> b!2590557 m!2926637))

(assert (=> b!2590543 d!733845))

(assert (=> b!2590502 d!733837))

(declare-fun d!733847 () Bool)

(declare-fun c!417644 () Bool)

(assert (=> d!733847 (= c!417644 ((_ is Nil!29799) lt!910953))))

(declare-fun e!1634161 () (InoxSet B!1997))

(assert (=> d!733847 (= (content!4140 lt!910953) e!1634161)))

(declare-fun b!2590558 () Bool)

(assert (=> b!2590558 (= e!1634161 ((as const (Array B!1997 Bool)) false))))

(declare-fun b!2590559 () Bool)

(assert (=> b!2590559 (= e!1634161 ((_ map or) (store ((as const (Array B!1997 Bool)) false) (h!35219 lt!910953) true) (content!4140 (t!212912 lt!910953))))))

(assert (= (and d!733847 c!417644) b!2590558))

(assert (= (and d!733847 (not c!417644)) b!2590559))

(declare-fun m!2926639 () Bool)

(assert (=> b!2590559 m!2926639))

(declare-fun m!2926641 () Bool)

(assert (=> b!2590559 m!2926641))

(assert (=> b!2590523 d!733847))

(declare-fun d!733849 () Bool)

(declare-fun lt!910966 () Int)

(assert (=> d!733849 (>= lt!910966 0)))

(declare-fun e!1634162 () Int)

(assert (=> d!733849 (= lt!910966 e!1634162)))

(declare-fun c!417645 () Bool)

(assert (=> d!733849 (= c!417645 ((_ is Nil!29799) (t!212912 (t!212912 l!3230))))))

(assert (=> d!733849 (= (size!23112 (t!212912 (t!212912 l!3230))) lt!910966)))

(declare-fun b!2590560 () Bool)

(assert (=> b!2590560 (= e!1634162 0)))

(declare-fun b!2590561 () Bool)

(assert (=> b!2590561 (= e!1634162 (+ 1 (size!23112 (t!212912 (t!212912 (t!212912 l!3230))))))))

(assert (= (and d!733849 c!417645) b!2590560))

(assert (= (and d!733849 (not c!417645)) b!2590561))

(declare-fun m!2926643 () Bool)

(assert (=> b!2590561 m!2926643))

(assert (=> b!2590529 d!733849))

(declare-fun d!733851 () Bool)

(declare-fun res!1089204 () Bool)

(declare-fun e!1634163 () Bool)

(assert (=> d!733851 (=> res!1089204 e!1634163)))

(assert (=> d!733851 (= res!1089204 ((_ is Nil!29799) lt!910953))))

(assert (=> d!733851 (= (noDuplicate!347 lt!910953) e!1634163)))

(declare-fun b!2590562 () Bool)

(declare-fun e!1634164 () Bool)

(assert (=> b!2590562 (= e!1634163 e!1634164)))

(declare-fun res!1089205 () Bool)

(assert (=> b!2590562 (=> (not res!1089205) (not e!1634164))))

(assert (=> b!2590562 (= res!1089205 (not (contains!5348 (t!212912 lt!910953) (h!35219 lt!910953))))))

(declare-fun b!2590563 () Bool)

(assert (=> b!2590563 (= e!1634164 (noDuplicate!347 (t!212912 lt!910953)))))

(assert (= (and d!733851 (not res!1089204)) b!2590562))

(assert (= (and b!2590562 res!1089205) b!2590563))

(declare-fun m!2926645 () Bool)

(assert (=> b!2590562 m!2926645))

(declare-fun m!2926647 () Bool)

(assert (=> b!2590563 m!2926647))

(assert (=> d!733827 d!733851))

(declare-fun d!733853 () Bool)

(declare-fun e!1634169 () Bool)

(assert (=> d!733853 e!1634169))

(declare-fun res!1089211 () Bool)

(assert (=> d!733853 (=> (not res!1089211) (not e!1634169))))

(declare-fun res!1089210 () List!29899)

(assert (=> d!733853 (= res!1089211 (noDuplicate!347 res!1089210))))

(declare-fun e!1634170 () Bool)

(assert (=> d!733853 e!1634170))

(assert (=> d!733853 (= (choose!15285 lt!910939) res!1089210)))

(declare-fun b!2590568 () Bool)

(declare-fun tp!822621 () Bool)

(assert (=> b!2590568 (= e!1634170 (and tp_is_empty!13277 tp!822621))))

(declare-fun b!2590569 () Bool)

(assert (=> b!2590569 (= e!1634169 (= (content!4140 res!1089210) lt!910939))))

(assert (= (and d!733853 ((_ is Cons!29799) res!1089210)) b!2590568))

(assert (= (and d!733853 res!1089211) b!2590569))

(declare-fun m!2926649 () Bool)

(assert (=> d!733853 m!2926649))

(declare-fun m!2926651 () Bool)

(assert (=> b!2590569 m!2926651))

(assert (=> d!733827 d!733853))

(declare-fun d!733855 () Bool)

(declare-fun lt!910967 () Int)

(assert (=> d!733855 (>= lt!910967 0)))

(declare-fun e!1634171 () Int)

(assert (=> d!733855 (= lt!910967 e!1634171)))

(declare-fun c!417646 () Bool)

(assert (=> d!733855 (= c!417646 ((_ is Nil!29799) (toList!1750 (content!4140 (t!212912 l!3230)))))))

(assert (=> d!733855 (= (size!23112 (toList!1750 (content!4140 (t!212912 l!3230)))) lt!910967)))

(declare-fun b!2590570 () Bool)

(assert (=> b!2590570 (= e!1634171 0)))

(declare-fun b!2590571 () Bool)

(assert (=> b!2590571 (= e!1634171 (+ 1 (size!23112 (t!212912 (toList!1750 (content!4140 (t!212912 l!3230)))))))))

(assert (= (and d!733855 c!417646) b!2590570))

(assert (= (and d!733855 (not c!417646)) b!2590571))

(declare-fun m!2926653 () Bool)

(assert (=> b!2590571 m!2926653))

(assert (=> d!733833 d!733855))

(declare-fun d!733857 () Bool)

(assert (=> d!733857 (= (size!23112 (toList!1750 (content!4140 (t!212912 l!3230)))) (size!23112 (t!212912 l!3230)))))

(assert (=> d!733857 true))

(declare-fun _$54!177 () Unit!43704)

(assert (=> d!733857 (= (choose!15286 (t!212912 l!3230)) _$54!177)))

(declare-fun bs!472123 () Bool)

(assert (= bs!472123 d!733857))

(assert (=> bs!472123 m!2926579))

(assert (=> bs!472123 m!2926579))

(assert (=> bs!472123 m!2926621))

(assert (=> bs!472123 m!2926621))

(assert (=> bs!472123 m!2926623))

(assert (=> bs!472123 m!2926577))

(assert (=> d!733833 d!733857))

(assert (=> d!733833 d!733821))

(declare-fun d!733859 () Bool)

(declare-fun e!1634172 () Bool)

(assert (=> d!733859 e!1634172))

(declare-fun res!1089212 () Bool)

(assert (=> d!733859 (=> (not res!1089212) (not e!1634172))))

(declare-fun lt!910968 () List!29899)

(assert (=> d!733859 (= res!1089212 (noDuplicate!347 lt!910968))))

(assert (=> d!733859 (= lt!910968 (choose!15285 (content!4140 (t!212912 l!3230))))))

(assert (=> d!733859 (= (toList!1750 (content!4140 (t!212912 l!3230))) lt!910968)))

(declare-fun b!2590572 () Bool)

(assert (=> b!2590572 (= e!1634172 (= (content!4140 lt!910968) (content!4140 (t!212912 l!3230))))))

(assert (= (and d!733859 res!1089212) b!2590572))

(declare-fun m!2926655 () Bool)

(assert (=> d!733859 m!2926655))

(assert (=> d!733859 m!2926579))

(declare-fun m!2926657 () Bool)

(assert (=> d!733859 m!2926657))

(declare-fun m!2926659 () Bool)

(assert (=> b!2590572 m!2926659))

(assert (=> d!733833 d!733859))

(assert (=> d!733833 d!733837))

(declare-fun d!733861 () Bool)

(declare-fun res!1089213 () Bool)

(declare-fun e!1634173 () Bool)

(assert (=> d!733861 (=> res!1089213 e!1634173)))

(assert (=> d!733861 (= res!1089213 ((_ is Nil!29799) (t!212912 l!3230)))))

(assert (=> d!733861 (= (noDuplicate!347 (t!212912 l!3230)) e!1634173)))

(declare-fun b!2590573 () Bool)

(declare-fun e!1634174 () Bool)

(assert (=> b!2590573 (= e!1634173 e!1634174)))

(declare-fun res!1089214 () Bool)

(assert (=> b!2590573 (=> (not res!1089214) (not e!1634174))))

(assert (=> b!2590573 (= res!1089214 (not (contains!5348 (t!212912 (t!212912 l!3230)) (h!35219 (t!212912 l!3230)))))))

(declare-fun b!2590574 () Bool)

(assert (=> b!2590574 (= e!1634174 (noDuplicate!347 (t!212912 (t!212912 l!3230))))))

(assert (= (and d!733861 (not res!1089213)) b!2590573))

(assert (= (and b!2590573 res!1089214) b!2590574))

(declare-fun m!2926661 () Bool)

(assert (=> b!2590573 m!2926661))

(declare-fun m!2926663 () Bool)

(assert (=> b!2590574 m!2926663))

(assert (=> d!733833 d!733861))

(declare-fun d!733863 () Bool)

(declare-fun c!417647 () Bool)

(assert (=> d!733863 (= c!417647 ((_ is Nil!29799) (t!212912 (t!212912 l!3230))))))

(declare-fun e!1634175 () (InoxSet B!1997))

(assert (=> d!733863 (= (content!4140 (t!212912 (t!212912 l!3230))) e!1634175)))

(declare-fun b!2590575 () Bool)

(assert (=> b!2590575 (= e!1634175 ((as const (Array B!1997 Bool)) false))))

(declare-fun b!2590576 () Bool)

(assert (=> b!2590576 (= e!1634175 ((_ map or) (store ((as const (Array B!1997 Bool)) false) (h!35219 (t!212912 (t!212912 l!3230))) true) (content!4140 (t!212912 (t!212912 (t!212912 l!3230))))))))

(assert (= (and d!733863 c!417647) b!2590575))

(assert (= (and d!733863 (not c!417647)) b!2590576))

(declare-fun m!2926665 () Bool)

(assert (=> b!2590576 m!2926665))

(declare-fun m!2926667 () Bool)

(assert (=> b!2590576 m!2926667))

(assert (=> b!2590516 d!733863))

(assert (=> b!2590544 d!733861))

(declare-fun b!2590577 () Bool)

(declare-fun e!1634176 () Bool)

(declare-fun tp!822622 () Bool)

(assert (=> b!2590577 (= e!1634176 (and tp_is_empty!13277 tp!822622))))

(assert (=> b!2590549 (= tp!822618 e!1634176)))

(assert (= (and b!2590549 ((_ is Cons!29799) (t!212912 (t!212912 l!3230)))) b!2590577))

(check-sat (not b!2590559) (not b!2590573) (not b!2590574) (not b!2590577) tp_is_empty!13277 (not d!733845) (not b!2590572) (not b!2590568) (not b!2590576) (not b!2590557) (not b!2590569) (not b!2590571) (not d!733853) (not b!2590551) (not d!733859) (not b!2590563) (not b!2590561) (not d!733857) (not b!2590562))
(check-sat)
