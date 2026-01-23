; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108002 () Bool)

(assert start!108002)

(declare-fun b!1210895 () Bool)

(declare-fun e!776834 () Bool)

(declare-datatypes ((B!1373 0))(
  ( (B!1374 (val!4044 Int)) )
))
(declare-datatypes ((List!12291 0))(
  ( (Nil!12233) (Cons!12233 (h!17634 B!1373) (t!112675 List!12291)) )
))
(declare-fun lt!414455 () List!12291)

(declare-fun l!3821 () List!12291)

(declare-fun size!9749 (List!12291) Int)

(assert (=> b!1210895 (= e!776834 (not (< (size!9749 lt!414455) (size!9749 l!3821))))))

(declare-fun lt!414456 () List!12291)

(assert (=> b!1210895 (< (size!9749 lt!414456) (size!9749 (t!112675 l!3821)))))

(declare-datatypes ((Unit!18600 0))(
  ( (Unit!18601) )
))
(declare-fun lt!414457 () Unit!18600)

(declare-fun e!9491 () B!1373)

(declare-fun lemmaRemoveElmtContainedSizeSmaller!10 (List!12291 B!1373) Unit!18600)

(assert (=> b!1210895 (= lt!414457 (lemmaRemoveElmtContainedSizeSmaller!10 (t!112675 l!3821) e!9491))))

(declare-fun b!1210896 () Bool)

(declare-fun res!544658 () Bool)

(declare-fun e!776832 () Bool)

(assert (=> b!1210896 (=> (not res!544658) (not e!776832))))

(get-info :version)

(assert (=> b!1210896 (= res!544658 (and ((_ is Cons!12233) l!3821) (= (h!17634 l!3821) e!9491)))))

(declare-fun b!1210897 () Bool)

(declare-fun res!544659 () Bool)

(assert (=> b!1210897 (=> (not res!544659) (not e!776834))))

(declare-fun contains!2050 (List!12291 B!1373) Bool)

(assert (=> b!1210897 (= res!544659 (contains!2050 (t!112675 l!3821) e!9491))))

(declare-fun res!544660 () Bool)

(assert (=> start!108002 (=> (not res!544660) (not e!776832))))

(assert (=> start!108002 (= res!544660 (contains!2050 l!3821 e!9491))))

(assert (=> start!108002 e!776832))

(declare-fun e!776833 () Bool)

(assert (=> start!108002 e!776833))

(declare-fun tp_is_empty!6231 () Bool)

(assert (=> start!108002 tp_is_empty!6231))

(declare-fun b!1210898 () Bool)

(assert (=> b!1210898 (= e!776832 e!776834)))

(declare-fun res!544661 () Bool)

(assert (=> b!1210898 (=> (not res!544661) (not e!776834))))

(assert (=> b!1210898 (= res!544661 (= lt!414455 lt!414456))))

(declare-fun -!94 (List!12291 B!1373) List!12291)

(assert (=> b!1210898 (= lt!414456 (-!94 (t!112675 l!3821) e!9491))))

(assert (=> b!1210898 (= lt!414455 (-!94 l!3821 e!9491))))

(declare-fun b!1210899 () Bool)

(declare-fun tp!342939 () Bool)

(assert (=> b!1210899 (= e!776833 (and tp_is_empty!6231 tp!342939))))

(assert (= (and start!108002 res!544660) b!1210896))

(assert (= (and b!1210896 res!544658) b!1210898))

(assert (= (and b!1210898 res!544661) b!1210897))

(assert (= (and b!1210897 res!544659) b!1210895))

(assert (= (and start!108002 ((_ is Cons!12233) l!3821)) b!1210899))

(declare-fun m!1386701 () Bool)

(assert (=> b!1210895 m!1386701))

(declare-fun m!1386703 () Bool)

(assert (=> b!1210895 m!1386703))

(declare-fun m!1386705 () Bool)

(assert (=> b!1210895 m!1386705))

(declare-fun m!1386707 () Bool)

(assert (=> b!1210895 m!1386707))

(declare-fun m!1386709 () Bool)

(assert (=> b!1210895 m!1386709))

(declare-fun m!1386711 () Bool)

(assert (=> b!1210897 m!1386711))

(declare-fun m!1386713 () Bool)

(assert (=> start!108002 m!1386713))

(declare-fun m!1386715 () Bool)

(assert (=> b!1210898 m!1386715))

(declare-fun m!1386717 () Bool)

(assert (=> b!1210898 m!1386717))

(check-sat (not b!1210899) (not b!1210895) (not start!108002) (not b!1210898) (not b!1210897) tp_is_empty!6231)
(check-sat)
(get-model)

(declare-fun d!346409 () Bool)

(declare-fun lt!414462 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1746 (List!12291) (InoxSet B!1373))

(assert (=> d!346409 (= lt!414462 (select (content!1746 l!3821) e!9491))))

(declare-fun e!776842 () Bool)

(assert (=> d!346409 (= lt!414462 e!776842)))

(declare-fun res!544666 () Bool)

(assert (=> d!346409 (=> (not res!544666) (not e!776842))))

(assert (=> d!346409 (= res!544666 ((_ is Cons!12233) l!3821))))

(assert (=> d!346409 (= (contains!2050 l!3821 e!9491) lt!414462)))

(declare-fun b!1210908 () Bool)

(declare-fun e!776841 () Bool)

(assert (=> b!1210908 (= e!776842 e!776841)))

(declare-fun res!544667 () Bool)

(assert (=> b!1210908 (=> res!544667 e!776841)))

(assert (=> b!1210908 (= res!544667 (= (h!17634 l!3821) e!9491))))

(declare-fun b!1210909 () Bool)

(assert (=> b!1210909 (= e!776841 (contains!2050 (t!112675 l!3821) e!9491))))

(assert (= (and d!346409 res!544666) b!1210908))

(assert (= (and b!1210908 (not res!544667)) b!1210909))

(declare-fun m!1386719 () Bool)

(assert (=> d!346409 m!1386719))

(declare-fun m!1386721 () Bool)

(assert (=> d!346409 m!1386721))

(assert (=> b!1210909 m!1386711))

(assert (=> start!108002 d!346409))

(declare-fun d!346413 () Bool)

(declare-fun lt!414463 () Bool)

(assert (=> d!346413 (= lt!414463 (select (content!1746 (t!112675 l!3821)) e!9491))))

(declare-fun e!776844 () Bool)

(assert (=> d!346413 (= lt!414463 e!776844)))

(declare-fun res!544668 () Bool)

(assert (=> d!346413 (=> (not res!544668) (not e!776844))))

(assert (=> d!346413 (= res!544668 ((_ is Cons!12233) (t!112675 l!3821)))))

(assert (=> d!346413 (= (contains!2050 (t!112675 l!3821) e!9491) lt!414463)))

(declare-fun b!1210910 () Bool)

(declare-fun e!776843 () Bool)

(assert (=> b!1210910 (= e!776844 e!776843)))

(declare-fun res!544669 () Bool)

(assert (=> b!1210910 (=> res!544669 e!776843)))

(assert (=> b!1210910 (= res!544669 (= (h!17634 (t!112675 l!3821)) e!9491))))

(declare-fun b!1210911 () Bool)

(assert (=> b!1210911 (= e!776843 (contains!2050 (t!112675 (t!112675 l!3821)) e!9491))))

(assert (= (and d!346413 res!544668) b!1210910))

(assert (= (and b!1210910 (not res!544669)) b!1210911))

(declare-fun m!1386723 () Bool)

(assert (=> d!346413 m!1386723))

(declare-fun m!1386725 () Bool)

(assert (=> d!346413 m!1386725))

(declare-fun m!1386727 () Bool)

(assert (=> b!1210911 m!1386727))

(assert (=> b!1210897 d!346413))

(declare-fun d!346415 () Bool)

(declare-fun lt!414468 () Int)

(assert (=> d!346415 (>= lt!414468 0)))

(declare-fun e!776849 () Int)

(assert (=> d!346415 (= lt!414468 e!776849)))

(declare-fun c!202812 () Bool)

(assert (=> d!346415 (= c!202812 ((_ is Nil!12233) (t!112675 l!3821)))))

(assert (=> d!346415 (= (size!9749 (t!112675 l!3821)) lt!414468)))

(declare-fun b!1210920 () Bool)

(assert (=> b!1210920 (= e!776849 0)))

(declare-fun b!1210921 () Bool)

(assert (=> b!1210921 (= e!776849 (+ 1 (size!9749 (t!112675 (t!112675 l!3821)))))))

(assert (= (and d!346415 c!202812) b!1210920))

(assert (= (and d!346415 (not c!202812)) b!1210921))

(declare-fun m!1386731 () Bool)

(assert (=> b!1210921 m!1386731))

(assert (=> b!1210895 d!346415))

(declare-fun d!346421 () Bool)

(declare-fun lt!414469 () Int)

(assert (=> d!346421 (>= lt!414469 0)))

(declare-fun e!776850 () Int)

(assert (=> d!346421 (= lt!414469 e!776850)))

(declare-fun c!202813 () Bool)

(assert (=> d!346421 (= c!202813 ((_ is Nil!12233) lt!414456))))

(assert (=> d!346421 (= (size!9749 lt!414456) lt!414469)))

(declare-fun b!1210922 () Bool)

(assert (=> b!1210922 (= e!776850 0)))

(declare-fun b!1210923 () Bool)

(assert (=> b!1210923 (= e!776850 (+ 1 (size!9749 (t!112675 lt!414456))))))

(assert (= (and d!346421 c!202813) b!1210922))

(assert (= (and d!346421 (not c!202813)) b!1210923))

(declare-fun m!1386733 () Bool)

(assert (=> b!1210923 m!1386733))

(assert (=> b!1210895 d!346421))

(declare-fun d!346423 () Bool)

(declare-fun lt!414470 () Int)

(assert (=> d!346423 (>= lt!414470 0)))

(declare-fun e!776851 () Int)

(assert (=> d!346423 (= lt!414470 e!776851)))

(declare-fun c!202814 () Bool)

(assert (=> d!346423 (= c!202814 ((_ is Nil!12233) l!3821))))

(assert (=> d!346423 (= (size!9749 l!3821) lt!414470)))

(declare-fun b!1210924 () Bool)

(assert (=> b!1210924 (= e!776851 0)))

(declare-fun b!1210925 () Bool)

(assert (=> b!1210925 (= e!776851 (+ 1 (size!9749 (t!112675 l!3821))))))

(assert (= (and d!346423 c!202814) b!1210924))

(assert (= (and d!346423 (not c!202814)) b!1210925))

(assert (=> b!1210925 m!1386703))

(assert (=> b!1210895 d!346423))

(declare-fun d!346425 () Bool)

(declare-fun lt!414473 () Int)

(assert (=> d!346425 (>= lt!414473 0)))

(declare-fun e!776853 () Int)

(assert (=> d!346425 (= lt!414473 e!776853)))

(declare-fun c!202815 () Bool)

(assert (=> d!346425 (= c!202815 ((_ is Nil!12233) lt!414455))))

(assert (=> d!346425 (= (size!9749 lt!414455) lt!414473)))

(declare-fun b!1210926 () Bool)

(assert (=> b!1210926 (= e!776853 0)))

(declare-fun b!1210927 () Bool)

(assert (=> b!1210927 (= e!776853 (+ 1 (size!9749 (t!112675 lt!414455))))))

(assert (= (and d!346425 c!202815) b!1210926))

(assert (= (and d!346425 (not c!202815)) b!1210927))

(declare-fun m!1386735 () Bool)

(assert (=> b!1210927 m!1386735))

(assert (=> b!1210895 d!346425))

(declare-fun d!346427 () Bool)

(assert (=> d!346427 (< (size!9749 (-!94 (t!112675 l!3821) e!9491)) (size!9749 (t!112675 l!3821)))))

(declare-fun lt!414479 () Unit!18600)

(declare-fun choose!7781 (List!12291 B!1373) Unit!18600)

(assert (=> d!346427 (= lt!414479 (choose!7781 (t!112675 l!3821) e!9491))))

(assert (=> d!346427 (contains!2050 (t!112675 l!3821) e!9491)))

(assert (=> d!346427 (= (lemmaRemoveElmtContainedSizeSmaller!10 (t!112675 l!3821) e!9491) lt!414479)))

(declare-fun bs!288626 () Bool)

(assert (= bs!288626 d!346427))

(declare-fun m!1386745 () Bool)

(assert (=> bs!288626 m!1386745))

(assert (=> bs!288626 m!1386703))

(assert (=> bs!288626 m!1386711))

(assert (=> bs!288626 m!1386715))

(declare-fun m!1386747 () Bool)

(assert (=> bs!288626 m!1386747))

(assert (=> bs!288626 m!1386715))

(assert (=> b!1210895 d!346427))

(declare-fun b!1210962 () Bool)

(declare-fun e!776877 () List!12291)

(declare-fun e!776878 () List!12291)

(assert (=> b!1210962 (= e!776877 e!776878)))

(declare-fun c!202830 () Bool)

(assert (=> b!1210962 (= c!202830 (= e!9491 (h!17634 (t!112675 l!3821))))))

(declare-fun b!1210964 () Bool)

(declare-fun call!84462 () List!12291)

(assert (=> b!1210964 (= e!776878 call!84462)))

(declare-fun b!1210965 () Bool)

(assert (=> b!1210965 (= e!776878 (Cons!12233 (h!17634 (t!112675 l!3821)) call!84462))))

(declare-fun d!346435 () Bool)

(declare-fun e!776879 () Bool)

(assert (=> d!346435 e!776879))

(declare-fun res!544676 () Bool)

(assert (=> d!346435 (=> (not res!544676) (not e!776879))))

(declare-fun lt!414486 () List!12291)

(assert (=> d!346435 (= res!544676 (<= (size!9749 lt!414486) (size!9749 (t!112675 l!3821))))))

(assert (=> d!346435 (= lt!414486 e!776877)))

(declare-fun c!202831 () Bool)

(assert (=> d!346435 (= c!202831 ((_ is Cons!12233) (t!112675 l!3821)))))

(assert (=> d!346435 (= (-!94 (t!112675 l!3821) e!9491) lt!414486)))

(declare-fun b!1210963 () Bool)

(assert (=> b!1210963 (= e!776879 (= (content!1746 lt!414486) ((_ map and) (content!1746 (t!112675 l!3821)) ((_ map not) (store ((as const (Array B!1373 Bool)) false) e!9491 true)))))))

(declare-fun b!1210966 () Bool)

(assert (=> b!1210966 (= e!776877 Nil!12233)))

(declare-fun bm!84457 () Bool)

(assert (=> bm!84457 (= call!84462 (-!94 (t!112675 (t!112675 l!3821)) e!9491))))

(assert (= (and d!346435 c!202831) b!1210962))

(assert (= (and d!346435 (not c!202831)) b!1210966))

(assert (= (and b!1210962 c!202830) b!1210964))

(assert (= (and b!1210962 (not c!202830)) b!1210965))

(assert (= (or b!1210964 b!1210965) bm!84457))

(assert (= (and d!346435 res!544676) b!1210963))

(declare-fun m!1386765 () Bool)

(assert (=> d!346435 m!1386765))

(assert (=> d!346435 m!1386703))

(declare-fun m!1386767 () Bool)

(assert (=> b!1210963 m!1386767))

(assert (=> b!1210963 m!1386723))

(declare-fun m!1386769 () Bool)

(assert (=> b!1210963 m!1386769))

(declare-fun m!1386771 () Bool)

(assert (=> bm!84457 m!1386771))

(assert (=> b!1210898 d!346435))

(declare-fun b!1210967 () Bool)

(declare-fun e!776880 () List!12291)

(declare-fun e!776881 () List!12291)

(assert (=> b!1210967 (= e!776880 e!776881)))

(declare-fun c!202832 () Bool)

(assert (=> b!1210967 (= c!202832 (= e!9491 (h!17634 l!3821)))))

(declare-fun b!1210969 () Bool)

(declare-fun call!84463 () List!12291)

(assert (=> b!1210969 (= e!776881 call!84463)))

(declare-fun b!1210970 () Bool)

(assert (=> b!1210970 (= e!776881 (Cons!12233 (h!17634 l!3821) call!84463))))

(declare-fun d!346441 () Bool)

(declare-fun e!776882 () Bool)

(assert (=> d!346441 e!776882))

(declare-fun res!544677 () Bool)

(assert (=> d!346441 (=> (not res!544677) (not e!776882))))

(declare-fun lt!414487 () List!12291)

(assert (=> d!346441 (= res!544677 (<= (size!9749 lt!414487) (size!9749 l!3821)))))

(assert (=> d!346441 (= lt!414487 e!776880)))

(declare-fun c!202833 () Bool)

(assert (=> d!346441 (= c!202833 ((_ is Cons!12233) l!3821))))

(assert (=> d!346441 (= (-!94 l!3821 e!9491) lt!414487)))

(declare-fun b!1210968 () Bool)

(assert (=> b!1210968 (= e!776882 (= (content!1746 lt!414487) ((_ map and) (content!1746 l!3821) ((_ map not) (store ((as const (Array B!1373 Bool)) false) e!9491 true)))))))

(declare-fun b!1210971 () Bool)

(assert (=> b!1210971 (= e!776880 Nil!12233)))

(declare-fun bm!84458 () Bool)

(assert (=> bm!84458 (= call!84463 (-!94 (t!112675 l!3821) e!9491))))

(assert (= (and d!346441 c!202833) b!1210967))

(assert (= (and d!346441 (not c!202833)) b!1210971))

(assert (= (and b!1210967 c!202832) b!1210969))

(assert (= (and b!1210967 (not c!202832)) b!1210970))

(assert (= (or b!1210969 b!1210970) bm!84458))

(assert (= (and d!346441 res!544677) b!1210968))

(declare-fun m!1386773 () Bool)

(assert (=> d!346441 m!1386773))

(assert (=> d!346441 m!1386707))

(declare-fun m!1386775 () Bool)

(assert (=> b!1210968 m!1386775))

(assert (=> b!1210968 m!1386719))

(assert (=> b!1210968 m!1386769))

(assert (=> bm!84458 m!1386715))

(assert (=> b!1210898 d!346441))

(declare-fun b!1210976 () Bool)

(declare-fun e!776885 () Bool)

(declare-fun tp!342942 () Bool)

(assert (=> b!1210976 (= e!776885 (and tp_is_empty!6231 tp!342942))))

(assert (=> b!1210899 (= tp!342939 e!776885)))

(assert (= (and b!1210899 ((_ is Cons!12233) (t!112675 l!3821))) b!1210976))

(check-sat (not b!1210925) (not b!1210923) (not bm!84458) (not b!1210921) (not b!1210968) (not b!1210976) (not b!1210909) (not b!1210927) (not d!346435) (not bm!84457) (not d!346409) (not b!1210911) (not d!346441) (not d!346427) (not b!1210963) tp_is_empty!6231 (not d!346413))
(check-sat)
