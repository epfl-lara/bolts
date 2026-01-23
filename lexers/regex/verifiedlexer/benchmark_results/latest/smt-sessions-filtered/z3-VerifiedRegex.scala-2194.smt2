; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108058 () Bool)

(assert start!108058)

(declare-fun b!1211233 () Bool)

(declare-fun res!544811 () Bool)

(declare-fun e!777058 () Bool)

(assert (=> b!1211233 (=> (not res!544811) (not e!777058))))

(declare-datatypes ((B!1389 0))(
  ( (B!1390 (val!4052 Int)) )
))
(declare-datatypes ((List!12299 0))(
  ( (Nil!12241) (Cons!12241 (h!17642 B!1389) (t!112683 List!12299)) )
))
(declare-fun l!3821 () List!12299)

(declare-fun e!9491 () B!1389)

(declare-fun contains!2058 (List!12299 B!1389) Bool)

(assert (=> b!1211233 (= res!544811 (contains!2058 (t!112683 l!3821) e!9491))))

(declare-fun b!1211232 () Bool)

(declare-fun res!544812 () Bool)

(assert (=> b!1211232 (=> (not res!544812) (not e!777058))))

(get-info :version)

(assert (=> b!1211232 (= res!544812 (and (or (not ((_ is Cons!12241) l!3821)) (not (= (h!17642 l!3821) e!9491))) ((_ is Cons!12241) l!3821)))))

(declare-fun b!1211235 () Bool)

(declare-fun e!777057 () Bool)

(declare-fun tp_is_empty!6247 () Bool)

(declare-fun tp!342987 () Bool)

(assert (=> b!1211235 (= e!777057 (and tp_is_empty!6247 tp!342987))))

(declare-fun b!1211234 () Bool)

(declare-fun size!9753 (List!12299) Int)

(declare-fun -!98 (List!12299 B!1389) List!12299)

(assert (=> b!1211234 (= e!777058 (not (< (size!9753 (-!98 l!3821 e!9491)) (size!9753 l!3821))))))

(assert (=> b!1211234 (< (size!9753 (-!98 (t!112683 l!3821) e!9491)) (size!9753 (t!112683 l!3821)))))

(declare-datatypes ((Unit!18604 0))(
  ( (Unit!18605) )
))
(declare-fun lt!414551 () Unit!18604)

(declare-fun lemmaRemoveElmtContainedSizeSmaller!12 (List!12299 B!1389) Unit!18604)

(assert (=> b!1211234 (= lt!414551 (lemmaRemoveElmtContainedSizeSmaller!12 (t!112683 l!3821) e!9491))))

(declare-fun res!544813 () Bool)

(assert (=> start!108058 (=> (not res!544813) (not e!777058))))

(assert (=> start!108058 (= res!544813 (contains!2058 l!3821 e!9491))))

(assert (=> start!108058 e!777058))

(assert (=> start!108058 e!777057))

(assert (=> start!108058 tp_is_empty!6247))

(assert (= (and start!108058 res!544813) b!1211232))

(assert (= (and b!1211232 res!544812) b!1211233))

(assert (= (and b!1211233 res!544811) b!1211234))

(assert (= (and start!108058 ((_ is Cons!12241) l!3821)) b!1211235))

(declare-fun m!1386945 () Bool)

(assert (=> b!1211233 m!1386945))

(declare-fun m!1386947 () Bool)

(assert (=> b!1211234 m!1386947))

(declare-fun m!1386949 () Bool)

(assert (=> b!1211234 m!1386949))

(declare-fun m!1386951 () Bool)

(assert (=> b!1211234 m!1386951))

(assert (=> b!1211234 m!1386947))

(declare-fun m!1386953 () Bool)

(assert (=> b!1211234 m!1386953))

(declare-fun m!1386955 () Bool)

(assert (=> b!1211234 m!1386955))

(declare-fun m!1386957 () Bool)

(assert (=> b!1211234 m!1386957))

(declare-fun m!1386959 () Bool)

(assert (=> b!1211234 m!1386959))

(assert (=> b!1211234 m!1386953))

(declare-fun m!1386961 () Bool)

(assert (=> start!108058 m!1386961))

(check-sat (not b!1211233) (not b!1211235) (not b!1211234) (not start!108058) tp_is_empty!6247)
(check-sat)
(get-model)

(declare-fun b!1211250 () Bool)

(declare-fun e!777071 () List!12299)

(declare-fun call!84474 () List!12299)

(assert (=> b!1211250 (= e!777071 call!84474)))

(declare-fun bm!84469 () Bool)

(assert (=> bm!84469 (= call!84474 (-!98 (t!112683 (t!112683 l!3821)) e!9491))))

(declare-fun b!1211251 () Bool)

(declare-fun e!777072 () List!12299)

(assert (=> b!1211251 (= e!777072 Nil!12241)))

(declare-fun b!1211252 () Bool)

(assert (=> b!1211252 (= e!777071 (Cons!12241 (h!17642 (t!112683 l!3821)) call!84474))))

(declare-fun b!1211253 () Bool)

(assert (=> b!1211253 (= e!777072 e!777071)))

(declare-fun c!202871 () Bool)

(assert (=> b!1211253 (= c!202871 (= e!9491 (h!17642 (t!112683 l!3821))))))

(declare-fun d!346497 () Bool)

(declare-fun e!777070 () Bool)

(assert (=> d!346497 e!777070))

(declare-fun res!544820 () Bool)

(assert (=> d!346497 (=> (not res!544820) (not e!777070))))

(declare-fun lt!414556 () List!12299)

(assert (=> d!346497 (= res!544820 (<= (size!9753 lt!414556) (size!9753 (t!112683 l!3821))))))

(assert (=> d!346497 (= lt!414556 e!777072)))

(declare-fun c!202870 () Bool)

(assert (=> d!346497 (= c!202870 ((_ is Cons!12241) (t!112683 l!3821)))))

(assert (=> d!346497 (= (-!98 (t!112683 l!3821) e!9491) lt!414556)))

(declare-fun b!1211254 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1754 (List!12299) (InoxSet B!1389))

(assert (=> b!1211254 (= e!777070 (= (content!1754 lt!414556) ((_ map and) (content!1754 (t!112683 l!3821)) ((_ map not) (store ((as const (Array B!1389 Bool)) false) e!9491 true)))))))

(assert (= (and d!346497 c!202870) b!1211253))

(assert (= (and d!346497 (not c!202870)) b!1211251))

(assert (= (and b!1211253 c!202871) b!1211250))

(assert (= (and b!1211253 (not c!202871)) b!1211252))

(assert (= (or b!1211250 b!1211252) bm!84469))

(assert (= (and d!346497 res!544820) b!1211254))

(declare-fun m!1386969 () Bool)

(assert (=> bm!84469 m!1386969))

(declare-fun m!1386971 () Bool)

(assert (=> d!346497 m!1386971))

(assert (=> d!346497 m!1386957))

(declare-fun m!1386973 () Bool)

(assert (=> b!1211254 m!1386973))

(declare-fun m!1386975 () Bool)

(assert (=> b!1211254 m!1386975))

(declare-fun m!1386977 () Bool)

(assert (=> b!1211254 m!1386977))

(assert (=> b!1211234 d!346497))

(declare-fun d!346503 () Bool)

(declare-fun lt!414560 () Int)

(assert (=> d!346503 (>= lt!414560 0)))

(declare-fun e!777077 () Int)

(assert (=> d!346503 (= lt!414560 e!777077)))

(declare-fun c!202874 () Bool)

(assert (=> d!346503 (= c!202874 ((_ is Nil!12241) (-!98 l!3821 e!9491)))))

(assert (=> d!346503 (= (size!9753 (-!98 l!3821 e!9491)) lt!414560)))

(declare-fun b!1211261 () Bool)

(assert (=> b!1211261 (= e!777077 0)))

(declare-fun b!1211262 () Bool)

(assert (=> b!1211262 (= e!777077 (+ 1 (size!9753 (t!112683 (-!98 l!3821 e!9491)))))))

(assert (= (and d!346503 c!202874) b!1211261))

(assert (= (and d!346503 (not c!202874)) b!1211262))

(declare-fun m!1386979 () Bool)

(assert (=> b!1211262 m!1386979))

(assert (=> b!1211234 d!346503))

(declare-fun d!346505 () Bool)

(declare-fun lt!414563 () Int)

(assert (=> d!346505 (>= lt!414563 0)))

(declare-fun e!777083 () Int)

(assert (=> d!346505 (= lt!414563 e!777083)))

(declare-fun c!202879 () Bool)

(assert (=> d!346505 (= c!202879 ((_ is Nil!12241) l!3821))))

(assert (=> d!346505 (= (size!9753 l!3821) lt!414563)))

(declare-fun b!1211271 () Bool)

(assert (=> b!1211271 (= e!777083 0)))

(declare-fun b!1211272 () Bool)

(assert (=> b!1211272 (= e!777083 (+ 1 (size!9753 (t!112683 l!3821))))))

(assert (= (and d!346505 c!202879) b!1211271))

(assert (= (and d!346505 (not c!202879)) b!1211272))

(assert (=> b!1211272 m!1386957))

(assert (=> b!1211234 d!346505))

(declare-fun d!346507 () Bool)

(declare-fun lt!414564 () Int)

(assert (=> d!346507 (>= lt!414564 0)))

(declare-fun e!777084 () Int)

(assert (=> d!346507 (= lt!414564 e!777084)))

(declare-fun c!202880 () Bool)

(assert (=> d!346507 (= c!202880 ((_ is Nil!12241) (-!98 (t!112683 l!3821) e!9491)))))

(assert (=> d!346507 (= (size!9753 (-!98 (t!112683 l!3821) e!9491)) lt!414564)))

(declare-fun b!1211273 () Bool)

(assert (=> b!1211273 (= e!777084 0)))

(declare-fun b!1211274 () Bool)

(assert (=> b!1211274 (= e!777084 (+ 1 (size!9753 (t!112683 (-!98 (t!112683 l!3821) e!9491)))))))

(assert (= (and d!346507 c!202880) b!1211273))

(assert (= (and d!346507 (not c!202880)) b!1211274))

(declare-fun m!1386981 () Bool)

(assert (=> b!1211274 m!1386981))

(assert (=> b!1211234 d!346507))

(declare-fun d!346509 () Bool)

(assert (=> d!346509 (< (size!9753 (-!98 (t!112683 l!3821) e!9491)) (size!9753 (t!112683 l!3821)))))

(declare-fun lt!414568 () Unit!18604)

(declare-fun choose!7782 (List!12299 B!1389) Unit!18604)

(assert (=> d!346509 (= lt!414568 (choose!7782 (t!112683 l!3821) e!9491))))

(assert (=> d!346509 (contains!2058 (t!112683 l!3821) e!9491)))

(assert (=> d!346509 (= (lemmaRemoveElmtContainedSizeSmaller!12 (t!112683 l!3821) e!9491) lt!414568)))

(declare-fun bs!288635 () Bool)

(assert (= bs!288635 d!346509))

(assert (=> bs!288635 m!1386945))

(assert (=> bs!288635 m!1386957))

(declare-fun m!1386983 () Bool)

(assert (=> bs!288635 m!1386983))

(assert (=> bs!288635 m!1386953))

(assert (=> bs!288635 m!1386953))

(assert (=> bs!288635 m!1386955))

(assert (=> b!1211234 d!346509))

(declare-fun b!1211282 () Bool)

(declare-fun e!777092 () List!12299)

(declare-fun call!84478 () List!12299)

(assert (=> b!1211282 (= e!777092 call!84478)))

(declare-fun bm!84473 () Bool)

(assert (=> bm!84473 (= call!84478 (-!98 (t!112683 l!3821) e!9491))))

(declare-fun b!1211283 () Bool)

(declare-fun e!777093 () List!12299)

(assert (=> b!1211283 (= e!777093 Nil!12241)))

(declare-fun b!1211284 () Bool)

(assert (=> b!1211284 (= e!777092 (Cons!12241 (h!17642 l!3821) call!84478))))

(declare-fun b!1211285 () Bool)

(assert (=> b!1211285 (= e!777093 e!777092)))

(declare-fun c!202884 () Bool)

(assert (=> b!1211285 (= c!202884 (= e!9491 (h!17642 l!3821)))))

(declare-fun d!346511 () Bool)

(declare-fun e!777091 () Bool)

(assert (=> d!346511 e!777091))

(declare-fun res!544826 () Bool)

(assert (=> d!346511 (=> (not res!544826) (not e!777091))))

(declare-fun lt!414569 () List!12299)

(assert (=> d!346511 (= res!544826 (<= (size!9753 lt!414569) (size!9753 l!3821)))))

(assert (=> d!346511 (= lt!414569 e!777093)))

(declare-fun c!202883 () Bool)

(assert (=> d!346511 (= c!202883 ((_ is Cons!12241) l!3821))))

(assert (=> d!346511 (= (-!98 l!3821 e!9491) lt!414569)))

(declare-fun b!1211286 () Bool)

(assert (=> b!1211286 (= e!777091 (= (content!1754 lt!414569) ((_ map and) (content!1754 l!3821) ((_ map not) (store ((as const (Array B!1389 Bool)) false) e!9491 true)))))))

(assert (= (and d!346511 c!202883) b!1211285))

(assert (= (and d!346511 (not c!202883)) b!1211283))

(assert (= (and b!1211285 c!202884) b!1211282))

(assert (= (and b!1211285 (not c!202884)) b!1211284))

(assert (= (or b!1211282 b!1211284) bm!84473))

(assert (= (and d!346511 res!544826) b!1211286))

(assert (=> bm!84473 m!1386953))

(declare-fun m!1386993 () Bool)

(assert (=> d!346511 m!1386993))

(assert (=> d!346511 m!1386959))

(declare-fun m!1386995 () Bool)

(assert (=> b!1211286 m!1386995))

(declare-fun m!1386997 () Bool)

(assert (=> b!1211286 m!1386997))

(assert (=> b!1211286 m!1386977))

(assert (=> b!1211234 d!346511))

(declare-fun d!346515 () Bool)

(declare-fun lt!414570 () Int)

(assert (=> d!346515 (>= lt!414570 0)))

(declare-fun e!777094 () Int)

(assert (=> d!346515 (= lt!414570 e!777094)))

(declare-fun c!202885 () Bool)

(assert (=> d!346515 (= c!202885 ((_ is Nil!12241) (t!112683 l!3821)))))

(assert (=> d!346515 (= (size!9753 (t!112683 l!3821)) lt!414570)))

(declare-fun b!1211287 () Bool)

(assert (=> b!1211287 (= e!777094 0)))

(declare-fun b!1211288 () Bool)

(assert (=> b!1211288 (= e!777094 (+ 1 (size!9753 (t!112683 (t!112683 l!3821)))))))

(assert (= (and d!346515 c!202885) b!1211287))

(assert (= (and d!346515 (not c!202885)) b!1211288))

(declare-fun m!1386999 () Bool)

(assert (=> b!1211288 m!1386999))

(assert (=> b!1211234 d!346515))

(declare-fun d!346517 () Bool)

(declare-fun lt!414578 () Bool)

(assert (=> d!346517 (= lt!414578 (select (content!1754 l!3821) e!9491))))

(declare-fun e!777105 () Bool)

(assert (=> d!346517 (= lt!414578 e!777105)))

(declare-fun res!544831 () Bool)

(assert (=> d!346517 (=> (not res!544831) (not e!777105))))

(assert (=> d!346517 (= res!544831 ((_ is Cons!12241) l!3821))))

(assert (=> d!346517 (= (contains!2058 l!3821 e!9491) lt!414578)))

(declare-fun b!1211303 () Bool)

(declare-fun e!777104 () Bool)

(assert (=> b!1211303 (= e!777105 e!777104)))

(declare-fun res!544832 () Bool)

(assert (=> b!1211303 (=> res!544832 e!777104)))

(assert (=> b!1211303 (= res!544832 (= (h!17642 l!3821) e!9491))))

(declare-fun b!1211304 () Bool)

(assert (=> b!1211304 (= e!777104 (contains!2058 (t!112683 l!3821) e!9491))))

(assert (= (and d!346517 res!544831) b!1211303))

(assert (= (and b!1211303 (not res!544832)) b!1211304))

(assert (=> d!346517 m!1386997))

(declare-fun m!1387005 () Bool)

(assert (=> d!346517 m!1387005))

(assert (=> b!1211304 m!1386945))

(assert (=> start!108058 d!346517))

(declare-fun d!346525 () Bool)

(declare-fun lt!414579 () Bool)

(assert (=> d!346525 (= lt!414579 (select (content!1754 (t!112683 l!3821)) e!9491))))

(declare-fun e!777107 () Bool)

(assert (=> d!346525 (= lt!414579 e!777107)))

(declare-fun res!544833 () Bool)

(assert (=> d!346525 (=> (not res!544833) (not e!777107))))

(assert (=> d!346525 (= res!544833 ((_ is Cons!12241) (t!112683 l!3821)))))

(assert (=> d!346525 (= (contains!2058 (t!112683 l!3821) e!9491) lt!414579)))

(declare-fun b!1211305 () Bool)

(declare-fun e!777106 () Bool)

(assert (=> b!1211305 (= e!777107 e!777106)))

(declare-fun res!544834 () Bool)

(assert (=> b!1211305 (=> res!544834 e!777106)))

(assert (=> b!1211305 (= res!544834 (= (h!17642 (t!112683 l!3821)) e!9491))))

(declare-fun b!1211306 () Bool)

(assert (=> b!1211306 (= e!777106 (contains!2058 (t!112683 (t!112683 l!3821)) e!9491))))

(assert (= (and d!346525 res!544833) b!1211305))

(assert (= (and b!1211305 (not res!544834)) b!1211306))

(assert (=> d!346525 m!1386975))

(declare-fun m!1387007 () Bool)

(assert (=> d!346525 m!1387007))

(declare-fun m!1387009 () Bool)

(assert (=> b!1211306 m!1387009))

(assert (=> b!1211233 d!346525))

(declare-fun b!1211311 () Bool)

(declare-fun e!777111 () Bool)

(declare-fun tp!342990 () Bool)

(assert (=> b!1211311 (= e!777111 (and tp_is_empty!6247 tp!342990))))

(assert (=> b!1211235 (= tp!342987 e!777111)))

(assert (= (and b!1211235 ((_ is Cons!12241) (t!112683 l!3821))) b!1211311))

(check-sat (not b!1211306) (not bm!84469) tp_is_empty!6247 (not b!1211304) (not b!1211274) (not d!346497) (not b!1211288) (not b!1211286) (not bm!84473) (not b!1211272) (not b!1211254) (not d!346509) (not d!346525) (not d!346517) (not b!1211262) (not b!1211311) (not d!346511))
(check-sat)
