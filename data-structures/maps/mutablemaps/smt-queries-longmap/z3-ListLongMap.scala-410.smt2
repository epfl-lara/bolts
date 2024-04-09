; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7662 () Bool)

(assert start!7662)

(declare-fun b!48781 () Bool)

(declare-fun res!28314 () Bool)

(declare-fun e!31329 () Bool)

(assert (=> b!48781 (=> (not res!28314) (not e!31329))))

(declare-datatypes ((B!976 0))(
  ( (B!977 (val!1108 Int)) )
))
(declare-datatypes ((tuple2!1802 0))(
  ( (tuple2!1803 (_1!911 (_ BitVec 64)) (_2!911 B!976)) )
))
(declare-datatypes ((List!1324 0))(
  ( (Nil!1321) (Cons!1320 (h!1900 tuple2!1802) (t!4360 List!1324)) )
))
(declare-fun l!1333 () List!1324)

(get-info :version)

(assert (=> b!48781 (= res!28314 ((_ is Nil!1321) l!1333))))

(declare-fun b!48783 () Bool)

(declare-fun e!31330 () Bool)

(declare-fun tp_is_empty!2127 () Bool)

(declare-fun tp!6458 () Bool)

(assert (=> b!48783 (= e!31330 (and tp_is_empty!2127 tp!6458))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun newValue!147 () B!976)

(declare-fun b!48782 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!49 (List!1324) (InoxSet tuple2!1802))

(declare-fun insertStrictlySorted!36 (List!1324 (_ BitVec 64) B!976) List!1324)

(assert (=> b!48782 (= e!31329 (not (= ((_ map or) (content!49 l!1333) (store ((as const (Array tuple2!1802 Bool)) false) (tuple2!1803 newKey!147 newValue!147) true)) (content!49 (insertStrictlySorted!36 l!1333 newKey!147 newValue!147)))))))

(declare-fun res!28313 () Bool)

(assert (=> start!7662 (=> (not res!28313) (not e!31329))))

(declare-fun isStrictlySorted!265 (List!1324) Bool)

(assert (=> start!7662 (= res!28313 (isStrictlySorted!265 l!1333))))

(assert (=> start!7662 e!31329))

(assert (=> start!7662 e!31330))

(assert (=> start!7662 true))

(assert (=> start!7662 tp_is_empty!2127))

(declare-fun b!48780 () Bool)

(declare-fun res!28312 () Bool)

(assert (=> b!48780 (=> (not res!28312) (not e!31329))))

(declare-fun containsKey!117 (List!1324 (_ BitVec 64)) Bool)

(assert (=> b!48780 (= res!28312 (not (containsKey!117 l!1333 newKey!147)))))

(assert (= (and start!7662 res!28313) b!48780))

(assert (= (and b!48780 res!28312) b!48781))

(assert (= (and b!48781 res!28314) b!48782))

(assert (= (and start!7662 ((_ is Cons!1320) l!1333)) b!48783))

(declare-fun m!42447 () Bool)

(assert (=> b!48782 m!42447))

(declare-fun m!42449 () Bool)

(assert (=> b!48782 m!42449))

(declare-fun m!42451 () Bool)

(assert (=> b!48782 m!42451))

(assert (=> b!48782 m!42451))

(declare-fun m!42453 () Bool)

(assert (=> b!48782 m!42453))

(declare-fun m!42455 () Bool)

(assert (=> start!7662 m!42455))

(declare-fun m!42457 () Bool)

(assert (=> b!48780 m!42457))

(check-sat tp_is_empty!2127 (not b!48782) (not start!7662) (not b!48783) (not b!48780))
(check-sat)
(get-model)

(declare-fun d!9713 () Bool)

(declare-fun res!28332 () Bool)

(declare-fun e!31347 () Bool)

(assert (=> d!9713 (=> res!28332 e!31347)))

(assert (=> d!9713 (= res!28332 (and ((_ is Cons!1320) l!1333) (= (_1!911 (h!1900 l!1333)) newKey!147)))))

(assert (=> d!9713 (= (containsKey!117 l!1333 newKey!147) e!31347)))

(declare-fun b!48808 () Bool)

(declare-fun e!31348 () Bool)

(assert (=> b!48808 (= e!31347 e!31348)))

(declare-fun res!28333 () Bool)

(assert (=> b!48808 (=> (not res!28333) (not e!31348))))

(assert (=> b!48808 (= res!28333 (and (or (not ((_ is Cons!1320) l!1333)) (bvsle (_1!911 (h!1900 l!1333)) newKey!147)) ((_ is Cons!1320) l!1333) (bvslt (_1!911 (h!1900 l!1333)) newKey!147)))))

(declare-fun b!48809 () Bool)

(assert (=> b!48809 (= e!31348 (containsKey!117 (t!4360 l!1333) newKey!147))))

(assert (= (and d!9713 (not res!28332)) b!48808))

(assert (= (and b!48808 res!28333) b!48809))

(declare-fun m!42475 () Bool)

(assert (=> b!48809 m!42475))

(assert (=> b!48780 d!9713))

(declare-fun d!9721 () Bool)

(declare-fun res!28344 () Bool)

(declare-fun e!31361 () Bool)

(assert (=> d!9721 (=> res!28344 e!31361)))

(assert (=> d!9721 (= res!28344 (or ((_ is Nil!1321) l!1333) ((_ is Nil!1321) (t!4360 l!1333))))))

(assert (=> d!9721 (= (isStrictlySorted!265 l!1333) e!31361)))

(declare-fun b!48824 () Bool)

(declare-fun e!31362 () Bool)

(assert (=> b!48824 (= e!31361 e!31362)))

(declare-fun res!28345 () Bool)

(assert (=> b!48824 (=> (not res!28345) (not e!31362))))

(assert (=> b!48824 (= res!28345 (bvslt (_1!911 (h!1900 l!1333)) (_1!911 (h!1900 (t!4360 l!1333)))))))

(declare-fun b!48825 () Bool)

(assert (=> b!48825 (= e!31362 (isStrictlySorted!265 (t!4360 l!1333)))))

(assert (= (and d!9721 (not res!28344)) b!48824))

(assert (= (and b!48824 res!28345) b!48825))

(declare-fun m!42483 () Bool)

(assert (=> b!48825 m!42483))

(assert (=> start!7662 d!9721))

(declare-fun d!9727 () Bool)

(declare-fun c!6555 () Bool)

(assert (=> d!9727 (= c!6555 ((_ is Nil!1321) l!1333))))

(declare-fun e!31369 () (InoxSet tuple2!1802))

(assert (=> d!9727 (= (content!49 l!1333) e!31369)))

(declare-fun b!48836 () Bool)

(assert (=> b!48836 (= e!31369 ((as const (Array tuple2!1802 Bool)) false))))

(declare-fun b!48837 () Bool)

(assert (=> b!48837 (= e!31369 ((_ map or) (store ((as const (Array tuple2!1802 Bool)) false) (h!1900 l!1333) true) (content!49 (t!4360 l!1333))))))

(assert (= (and d!9727 c!6555) b!48836))

(assert (= (and d!9727 (not c!6555)) b!48837))

(declare-fun m!42487 () Bool)

(assert (=> b!48837 m!42487))

(declare-fun m!42489 () Bool)

(assert (=> b!48837 m!42489))

(assert (=> b!48782 d!9727))

(declare-fun c!6557 () Bool)

(declare-fun d!9731 () Bool)

(assert (=> d!9731 (= c!6557 ((_ is Nil!1321) (insertStrictlySorted!36 l!1333 newKey!147 newValue!147)))))

(declare-fun e!31371 () (InoxSet tuple2!1802))

(assert (=> d!9731 (= (content!49 (insertStrictlySorted!36 l!1333 newKey!147 newValue!147)) e!31371)))

(declare-fun b!48840 () Bool)

(assert (=> b!48840 (= e!31371 ((as const (Array tuple2!1802 Bool)) false))))

(declare-fun b!48841 () Bool)

(assert (=> b!48841 (= e!31371 ((_ map or) (store ((as const (Array tuple2!1802 Bool)) false) (h!1900 (insertStrictlySorted!36 l!1333 newKey!147 newValue!147)) true) (content!49 (t!4360 (insertStrictlySorted!36 l!1333 newKey!147 newValue!147)))))))

(assert (= (and d!9731 c!6557) b!48840))

(assert (= (and d!9731 (not c!6557)) b!48841))

(declare-fun m!42493 () Bool)

(assert (=> b!48841 m!42493))

(declare-fun m!42497 () Bool)

(assert (=> b!48841 m!42497))

(assert (=> b!48782 d!9731))

(declare-fun b!48920 () Bool)

(declare-fun e!31416 () List!1324)

(declare-fun call!3798 () List!1324)

(assert (=> b!48920 (= e!31416 call!3798)))

(declare-fun c!6587 () Bool)

(declare-fun e!31417 () List!1324)

(declare-fun c!6590 () Bool)

(declare-fun b!48921 () Bool)

(assert (=> b!48921 (= e!31417 (ite c!6590 (t!4360 l!1333) (ite c!6587 (Cons!1320 (h!1900 l!1333) (t!4360 l!1333)) Nil!1321)))))

(declare-fun b!48922 () Bool)

(declare-fun res!28369 () Bool)

(declare-fun e!31418 () Bool)

(assert (=> b!48922 (=> (not res!28369) (not e!31418))))

(declare-fun lt!20702 () List!1324)

(assert (=> b!48922 (= res!28369 (containsKey!117 lt!20702 newKey!147))))

(declare-fun b!48923 () Bool)

(declare-fun e!31415 () List!1324)

(declare-fun call!3797 () List!1324)

(assert (=> b!48923 (= e!31415 call!3797)))

(declare-fun b!48924 () Bool)

(assert (=> b!48924 (= e!31416 e!31415)))

(assert (=> b!48924 (= c!6590 (and ((_ is Cons!1320) l!1333) (= (_1!911 (h!1900 l!1333)) newKey!147)))))

(declare-fun d!9735 () Bool)

(assert (=> d!9735 e!31418))

(declare-fun res!28368 () Bool)

(assert (=> d!9735 (=> (not res!28368) (not e!31418))))

(assert (=> d!9735 (= res!28368 (isStrictlySorted!265 lt!20702))))

(assert (=> d!9735 (= lt!20702 e!31416)))

(declare-fun c!6588 () Bool)

(assert (=> d!9735 (= c!6588 (and ((_ is Cons!1320) l!1333) (bvslt (_1!911 (h!1900 l!1333)) newKey!147)))))

(assert (=> d!9735 (isStrictlySorted!265 l!1333)))

(assert (=> d!9735 (= (insertStrictlySorted!36 l!1333 newKey!147 newValue!147) lt!20702)))

(declare-fun b!48925 () Bool)

(declare-fun contains!609 (List!1324 tuple2!1802) Bool)

(assert (=> b!48925 (= e!31418 (contains!609 lt!20702 (tuple2!1803 newKey!147 newValue!147)))))

(declare-fun b!48926 () Bool)

(assert (=> b!48926 (= c!6587 (and ((_ is Cons!1320) l!1333) (bvsgt (_1!911 (h!1900 l!1333)) newKey!147)))))

(declare-fun e!31414 () List!1324)

(assert (=> b!48926 (= e!31415 e!31414)))

(declare-fun b!48927 () Bool)

(assert (=> b!48927 (= e!31417 (insertStrictlySorted!36 (t!4360 l!1333) newKey!147 newValue!147))))

(declare-fun bm!3793 () Bool)

(assert (=> bm!3793 (= call!3797 call!3798)))

(declare-fun b!48928 () Bool)

(declare-fun call!3796 () List!1324)

(assert (=> b!48928 (= e!31414 call!3796)))

(declare-fun bm!3794 () Bool)

(assert (=> bm!3794 (= call!3796 call!3797)))

(declare-fun b!48929 () Bool)

(assert (=> b!48929 (= e!31414 call!3796)))

(declare-fun bm!3795 () Bool)

(declare-fun $colon$colon!52 (List!1324 tuple2!1802) List!1324)

(assert (=> bm!3795 (= call!3798 ($colon$colon!52 e!31417 (ite c!6588 (h!1900 l!1333) (tuple2!1803 newKey!147 newValue!147))))))

(declare-fun c!6589 () Bool)

(assert (=> bm!3795 (= c!6589 c!6588)))

(assert (= (and d!9735 c!6588) b!48920))

(assert (= (and d!9735 (not c!6588)) b!48924))

(assert (= (and b!48924 c!6590) b!48923))

(assert (= (and b!48924 (not c!6590)) b!48926))

(assert (= (and b!48926 c!6587) b!48928))

(assert (= (and b!48926 (not c!6587)) b!48929))

(assert (= (or b!48928 b!48929) bm!3794))

(assert (= (or b!48923 bm!3794) bm!3793))

(assert (= (or b!48920 bm!3793) bm!3795))

(assert (= (and bm!3795 c!6589) b!48927))

(assert (= (and bm!3795 (not c!6589)) b!48921))

(assert (= (and d!9735 res!28368) b!48922))

(assert (= (and b!48922 res!28369) b!48925))

(declare-fun m!42515 () Bool)

(assert (=> bm!3795 m!42515))

(declare-fun m!42517 () Bool)

(assert (=> b!48922 m!42517))

(declare-fun m!42519 () Bool)

(assert (=> d!9735 m!42519))

(assert (=> d!9735 m!42455))

(declare-fun m!42521 () Bool)

(assert (=> b!48927 m!42521))

(declare-fun m!42523 () Bool)

(assert (=> b!48925 m!42523))

(assert (=> b!48782 d!9735))

(declare-fun b!48954 () Bool)

(declare-fun e!31434 () Bool)

(declare-fun tp!6466 () Bool)

(assert (=> b!48954 (= e!31434 (and tp_is_empty!2127 tp!6466))))

(assert (=> b!48783 (= tp!6458 e!31434)))

(assert (= (and b!48783 ((_ is Cons!1320) (t!4360 l!1333))) b!48954))

(check-sat tp_is_empty!2127 (not b!48922) (not b!48809) (not b!48954) (not bm!3795) (not b!48927) (not b!48825) (not b!48925) (not b!48841) (not b!48837) (not d!9735))
(check-sat)
(get-model)

(declare-fun d!9743 () Bool)

(declare-fun res!28378 () Bool)

(declare-fun e!31439 () Bool)

(assert (=> d!9743 (=> res!28378 e!31439)))

(assert (=> d!9743 (= res!28378 (and ((_ is Cons!1320) lt!20702) (= (_1!911 (h!1900 lt!20702)) newKey!147)))))

(assert (=> d!9743 (= (containsKey!117 lt!20702 newKey!147) e!31439)))

(declare-fun b!48961 () Bool)

(declare-fun e!31440 () Bool)

(assert (=> b!48961 (= e!31439 e!31440)))

(declare-fun res!28379 () Bool)

(assert (=> b!48961 (=> (not res!28379) (not e!31440))))

(assert (=> b!48961 (= res!28379 (and (or (not ((_ is Cons!1320) lt!20702)) (bvsle (_1!911 (h!1900 lt!20702)) newKey!147)) ((_ is Cons!1320) lt!20702) (bvslt (_1!911 (h!1900 lt!20702)) newKey!147)))))

(declare-fun b!48962 () Bool)

(assert (=> b!48962 (= e!31440 (containsKey!117 (t!4360 lt!20702) newKey!147))))

(assert (= (and d!9743 (not res!28378)) b!48961))

(assert (= (and b!48961 res!28379) b!48962))

(declare-fun m!42537 () Bool)

(assert (=> b!48962 m!42537))

(assert (=> b!48922 d!9743))

(declare-fun c!6595 () Bool)

(declare-fun d!9745 () Bool)

(assert (=> d!9745 (= c!6595 ((_ is Nil!1321) (t!4360 (insertStrictlySorted!36 l!1333 newKey!147 newValue!147))))))

(declare-fun e!31441 () (InoxSet tuple2!1802))

(assert (=> d!9745 (= (content!49 (t!4360 (insertStrictlySorted!36 l!1333 newKey!147 newValue!147))) e!31441)))

(declare-fun b!48963 () Bool)

(assert (=> b!48963 (= e!31441 ((as const (Array tuple2!1802 Bool)) false))))

(declare-fun b!48964 () Bool)

(assert (=> b!48964 (= e!31441 ((_ map or) (store ((as const (Array tuple2!1802 Bool)) false) (h!1900 (t!4360 (insertStrictlySorted!36 l!1333 newKey!147 newValue!147))) true) (content!49 (t!4360 (t!4360 (insertStrictlySorted!36 l!1333 newKey!147 newValue!147))))))))

(assert (= (and d!9745 c!6595) b!48963))

(assert (= (and d!9745 (not c!6595)) b!48964))

(declare-fun m!42539 () Bool)

(assert (=> b!48964 m!42539))

(declare-fun m!42541 () Bool)

(assert (=> b!48964 m!42541))

(assert (=> b!48841 d!9745))

(declare-fun b!48965 () Bool)

(declare-fun e!31444 () List!1324)

(declare-fun call!3804 () List!1324)

(assert (=> b!48965 (= e!31444 call!3804)))

(declare-fun c!6596 () Bool)

(declare-fun c!6599 () Bool)

(declare-fun e!31445 () List!1324)

(declare-fun b!48966 () Bool)

(assert (=> b!48966 (= e!31445 (ite c!6599 (t!4360 (t!4360 l!1333)) (ite c!6596 (Cons!1320 (h!1900 (t!4360 l!1333)) (t!4360 (t!4360 l!1333))) Nil!1321)))))

(declare-fun b!48967 () Bool)

(declare-fun res!28381 () Bool)

(declare-fun e!31446 () Bool)

(assert (=> b!48967 (=> (not res!28381) (not e!31446))))

(declare-fun lt!20704 () List!1324)

(assert (=> b!48967 (= res!28381 (containsKey!117 lt!20704 newKey!147))))

(declare-fun b!48968 () Bool)

(declare-fun e!31443 () List!1324)

(declare-fun call!3803 () List!1324)

(assert (=> b!48968 (= e!31443 call!3803)))

(declare-fun b!48969 () Bool)

(assert (=> b!48969 (= e!31444 e!31443)))

(assert (=> b!48969 (= c!6599 (and ((_ is Cons!1320) (t!4360 l!1333)) (= (_1!911 (h!1900 (t!4360 l!1333))) newKey!147)))))

(declare-fun d!9747 () Bool)

(assert (=> d!9747 e!31446))

(declare-fun res!28380 () Bool)

(assert (=> d!9747 (=> (not res!28380) (not e!31446))))

(assert (=> d!9747 (= res!28380 (isStrictlySorted!265 lt!20704))))

(assert (=> d!9747 (= lt!20704 e!31444)))

(declare-fun c!6597 () Bool)

(assert (=> d!9747 (= c!6597 (and ((_ is Cons!1320) (t!4360 l!1333)) (bvslt (_1!911 (h!1900 (t!4360 l!1333))) newKey!147)))))

(assert (=> d!9747 (isStrictlySorted!265 (t!4360 l!1333))))

(assert (=> d!9747 (= (insertStrictlySorted!36 (t!4360 l!1333) newKey!147 newValue!147) lt!20704)))

(declare-fun b!48970 () Bool)

(assert (=> b!48970 (= e!31446 (contains!609 lt!20704 (tuple2!1803 newKey!147 newValue!147)))))

(declare-fun b!48971 () Bool)

(assert (=> b!48971 (= c!6596 (and ((_ is Cons!1320) (t!4360 l!1333)) (bvsgt (_1!911 (h!1900 (t!4360 l!1333))) newKey!147)))))

(declare-fun e!31442 () List!1324)

(assert (=> b!48971 (= e!31443 e!31442)))

(declare-fun b!48972 () Bool)

(assert (=> b!48972 (= e!31445 (insertStrictlySorted!36 (t!4360 (t!4360 l!1333)) newKey!147 newValue!147))))

(declare-fun bm!3799 () Bool)

(assert (=> bm!3799 (= call!3803 call!3804)))

(declare-fun b!48973 () Bool)

(declare-fun call!3802 () List!1324)

(assert (=> b!48973 (= e!31442 call!3802)))

(declare-fun bm!3800 () Bool)

(assert (=> bm!3800 (= call!3802 call!3803)))

(declare-fun b!48974 () Bool)

(assert (=> b!48974 (= e!31442 call!3802)))

(declare-fun bm!3801 () Bool)

(assert (=> bm!3801 (= call!3804 ($colon$colon!52 e!31445 (ite c!6597 (h!1900 (t!4360 l!1333)) (tuple2!1803 newKey!147 newValue!147))))))

(declare-fun c!6598 () Bool)

(assert (=> bm!3801 (= c!6598 c!6597)))

(assert (= (and d!9747 c!6597) b!48965))

(assert (= (and d!9747 (not c!6597)) b!48969))

(assert (= (and b!48969 c!6599) b!48968))

(assert (= (and b!48969 (not c!6599)) b!48971))

(assert (= (and b!48971 c!6596) b!48973))

(assert (= (and b!48971 (not c!6596)) b!48974))

(assert (= (or b!48973 b!48974) bm!3800))

(assert (= (or b!48968 bm!3800) bm!3799))

(assert (= (or b!48965 bm!3799) bm!3801))

(assert (= (and bm!3801 c!6598) b!48972))

(assert (= (and bm!3801 (not c!6598)) b!48966))

(assert (= (and d!9747 res!28380) b!48967))

(assert (= (and b!48967 res!28381) b!48970))

(declare-fun m!42547 () Bool)

(assert (=> bm!3801 m!42547))

(declare-fun m!42549 () Bool)

(assert (=> b!48967 m!42549))

(declare-fun m!42551 () Bool)

(assert (=> d!9747 m!42551))

(assert (=> d!9747 m!42483))

(declare-fun m!42553 () Bool)

(assert (=> b!48972 m!42553))

(declare-fun m!42557 () Bool)

(assert (=> b!48970 m!42557))

(assert (=> b!48927 d!9747))

(declare-fun d!9753 () Bool)

(assert (=> d!9753 (= ($colon$colon!52 e!31417 (ite c!6588 (h!1900 l!1333) (tuple2!1803 newKey!147 newValue!147))) (Cons!1320 (ite c!6588 (h!1900 l!1333) (tuple2!1803 newKey!147 newValue!147)) e!31417))))

(assert (=> bm!3795 d!9753))

(declare-fun d!9759 () Bool)

(declare-fun res!28384 () Bool)

(declare-fun e!31451 () Bool)

(assert (=> d!9759 (=> res!28384 e!31451)))

(assert (=> d!9759 (= res!28384 (or ((_ is Nil!1321) (t!4360 l!1333)) ((_ is Nil!1321) (t!4360 (t!4360 l!1333)))))))

(assert (=> d!9759 (= (isStrictlySorted!265 (t!4360 l!1333)) e!31451)))

(declare-fun b!48981 () Bool)

(declare-fun e!31452 () Bool)

(assert (=> b!48981 (= e!31451 e!31452)))

(declare-fun res!28385 () Bool)

(assert (=> b!48981 (=> (not res!28385) (not e!31452))))

(assert (=> b!48981 (= res!28385 (bvslt (_1!911 (h!1900 (t!4360 l!1333))) (_1!911 (h!1900 (t!4360 (t!4360 l!1333))))))))

(declare-fun b!48982 () Bool)

(assert (=> b!48982 (= e!31452 (isStrictlySorted!265 (t!4360 (t!4360 l!1333))))))

(assert (= (and d!9759 (not res!28384)) b!48981))

(assert (= (and b!48981 res!28385) b!48982))

(declare-fun m!42563 () Bool)

(assert (=> b!48982 m!42563))

(assert (=> b!48825 d!9759))

(declare-fun d!9763 () Bool)

(declare-fun res!28388 () Bool)

(declare-fun e!31455 () Bool)

(assert (=> d!9763 (=> res!28388 e!31455)))

(assert (=> d!9763 (= res!28388 (or ((_ is Nil!1321) lt!20702) ((_ is Nil!1321) (t!4360 lt!20702))))))

(assert (=> d!9763 (= (isStrictlySorted!265 lt!20702) e!31455)))

(declare-fun b!48985 () Bool)

(declare-fun e!31456 () Bool)

(assert (=> b!48985 (= e!31455 e!31456)))

(declare-fun res!28389 () Bool)

(assert (=> b!48985 (=> (not res!28389) (not e!31456))))

(assert (=> b!48985 (= res!28389 (bvslt (_1!911 (h!1900 lt!20702)) (_1!911 (h!1900 (t!4360 lt!20702)))))))

(declare-fun b!48986 () Bool)

(assert (=> b!48986 (= e!31456 (isStrictlySorted!265 (t!4360 lt!20702)))))

(assert (= (and d!9763 (not res!28388)) b!48985))

(assert (= (and b!48985 res!28389) b!48986))

(declare-fun m!42567 () Bool)

(assert (=> b!48986 m!42567))

(assert (=> d!9735 d!9763))

(assert (=> d!9735 d!9721))

(declare-fun d!9767 () Bool)

(declare-fun lt!20710 () Bool)

(assert (=> d!9767 (= lt!20710 (select (content!49 lt!20702) (tuple2!1803 newKey!147 newValue!147)))))

(declare-fun e!31471 () Bool)

(assert (=> d!9767 (= lt!20710 e!31471)))

(declare-fun res!28401 () Bool)

(assert (=> d!9767 (=> (not res!28401) (not e!31471))))

(assert (=> d!9767 (= res!28401 ((_ is Cons!1320) lt!20702))))

(assert (=> d!9767 (= (contains!609 lt!20702 (tuple2!1803 newKey!147 newValue!147)) lt!20710)))

(declare-fun b!49005 () Bool)

(declare-fun e!31470 () Bool)

(assert (=> b!49005 (= e!31471 e!31470)))

(declare-fun res!28400 () Bool)

(assert (=> b!49005 (=> res!28400 e!31470)))

(assert (=> b!49005 (= res!28400 (= (h!1900 lt!20702) (tuple2!1803 newKey!147 newValue!147)))))

(declare-fun b!49006 () Bool)

(assert (=> b!49006 (= e!31470 (contains!609 (t!4360 lt!20702) (tuple2!1803 newKey!147 newValue!147)))))

(assert (= (and d!9767 res!28401) b!49005))

(assert (= (and b!49005 (not res!28400)) b!49006))

(declare-fun m!42583 () Bool)

(assert (=> d!9767 m!42583))

(declare-fun m!42585 () Bool)

(assert (=> d!9767 m!42585))

(declare-fun m!42587 () Bool)

(assert (=> b!49006 m!42587))

(assert (=> b!48925 d!9767))

(declare-fun d!9775 () Bool)

(declare-fun res!28406 () Bool)

(declare-fun e!31476 () Bool)

(assert (=> d!9775 (=> res!28406 e!31476)))

(assert (=> d!9775 (= res!28406 (and ((_ is Cons!1320) (t!4360 l!1333)) (= (_1!911 (h!1900 (t!4360 l!1333))) newKey!147)))))

(assert (=> d!9775 (= (containsKey!117 (t!4360 l!1333) newKey!147) e!31476)))

(declare-fun b!49011 () Bool)

(declare-fun e!31477 () Bool)

(assert (=> b!49011 (= e!31476 e!31477)))

(declare-fun res!28407 () Bool)

(assert (=> b!49011 (=> (not res!28407) (not e!31477))))

(assert (=> b!49011 (= res!28407 (and (or (not ((_ is Cons!1320) (t!4360 l!1333))) (bvsle (_1!911 (h!1900 (t!4360 l!1333))) newKey!147)) ((_ is Cons!1320) (t!4360 l!1333)) (bvslt (_1!911 (h!1900 (t!4360 l!1333))) newKey!147)))))

(declare-fun b!49012 () Bool)

(assert (=> b!49012 (= e!31477 (containsKey!117 (t!4360 (t!4360 l!1333)) newKey!147))))

(assert (= (and d!9775 (not res!28406)) b!49011))

(assert (= (and b!49011 res!28407) b!49012))

(declare-fun m!42589 () Bool)

(assert (=> b!49012 m!42589))

(assert (=> b!48809 d!9775))

(declare-fun d!9777 () Bool)

(declare-fun c!6606 () Bool)

(assert (=> d!9777 (= c!6606 ((_ is Nil!1321) (t!4360 l!1333)))))

(declare-fun e!31478 () (InoxSet tuple2!1802))

(assert (=> d!9777 (= (content!49 (t!4360 l!1333)) e!31478)))

(declare-fun b!49013 () Bool)

(assert (=> b!49013 (= e!31478 ((as const (Array tuple2!1802 Bool)) false))))

(declare-fun b!49014 () Bool)

(assert (=> b!49014 (= e!31478 ((_ map or) (store ((as const (Array tuple2!1802 Bool)) false) (h!1900 (t!4360 l!1333)) true) (content!49 (t!4360 (t!4360 l!1333)))))))

(assert (= (and d!9777 c!6606) b!49013))

(assert (= (and d!9777 (not c!6606)) b!49014))

(declare-fun m!42591 () Bool)

(assert (=> b!49014 m!42591))

(declare-fun m!42593 () Bool)

(assert (=> b!49014 m!42593))

(assert (=> b!48837 d!9777))

(declare-fun b!49027 () Bool)

(declare-fun e!31486 () Bool)

(declare-fun tp!6471 () Bool)

(assert (=> b!49027 (= e!31486 (and tp_is_empty!2127 tp!6471))))

(assert (=> b!48954 (= tp!6466 e!31486)))

(assert (= (and b!48954 ((_ is Cons!1320) (t!4360 (t!4360 l!1333)))) b!49027))

(check-sat (not b!48982) (not b!48964) (not bm!3801) (not b!48967) (not b!49012) (not b!49027) (not b!48986) (not d!9767) (not b!48972) (not d!9747) (not b!49014) tp_is_empty!2127 (not b!48962) (not b!48970) (not b!49006))
(check-sat)
