; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229594 () Bool)

(assert start!229594)

(declare-fun b!2326079 () Bool)

(declare-fun e!1490381 () Bool)

(declare-fun tp_is_empty!10877 () Bool)

(declare-fun tp!737161 () Bool)

(assert (=> b!2326079 (= e!1490381 (and tp_is_empty!10877 tp!737161))))

(declare-fun res!993514 () Bool)

(declare-fun e!1490380 () Bool)

(assert (=> start!229594 (=> (not res!993514) (not e!1490380))))

(declare-fun i!741 () Int)

(assert (=> start!229594 (= res!993514 (<= 0 i!741))))

(assert (=> start!229594 e!1490380))

(assert (=> start!229594 true))

(assert (=> start!229594 e!1490381))

(declare-datatypes ((T!44090 0))(
  ( (T!44091 (val!8006 Int)) )
))
(declare-datatypes ((List!27792 0))(
  ( (Nil!27694) (Cons!27694 (h!33095 T!44090) (t!207494 List!27792)) )
))
(declare-fun l!2797 () List!27792)

(declare-fun b!2326078 () Bool)

(declare-fun lt!861596 () List!27792)

(declare-fun ++!6844 (List!27792 List!27792) List!27792)

(declare-fun slice!729 (List!27792 Int Int) List!27792)

(assert (=> b!2326078 (= e!1490380 (not (= (++!6844 (Cons!27694 (h!33095 l!2797) Nil!27694) lt!861596) (slice!729 l!2797 0 i!741))))))

(declare-fun size!21970 (List!27792) Int)

(assert (=> b!2326078 (= (++!6844 lt!861596 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))) (t!207494 l!2797))))

(assert (=> b!2326078 (= lt!861596 (slice!729 (t!207494 l!2797) 0 (- i!741 1)))))

(declare-datatypes ((Unit!40546 0))(
  ( (Unit!40547) )
))
(declare-fun lt!861597 () Unit!40546)

(declare-fun sliceSplit!34 (List!27792 Int) Unit!40546)

(assert (=> b!2326078 (= lt!861597 (sliceSplit!34 (t!207494 l!2797) (- i!741 1)))))

(declare-fun b!2326076 () Bool)

(declare-fun res!993516 () Bool)

(assert (=> b!2326076 (=> (not res!993516) (not e!1490380))))

(assert (=> b!2326076 (= res!993516 (<= i!741 (size!21970 l!2797)))))

(declare-fun b!2326077 () Bool)

(declare-fun res!993515 () Bool)

(assert (=> b!2326077 (=> (not res!993515) (not e!1490380))))

(get-info :version)

(assert (=> b!2326077 (= res!993515 (and (not ((_ is Nil!27694) l!2797)) (not (= i!741 0)) (> i!741 0)))))

(assert (= (and start!229594 res!993514) b!2326076))

(assert (= (and b!2326076 res!993516) b!2326077))

(assert (= (and b!2326077 res!993515) b!2326078))

(assert (= (and start!229594 ((_ is Cons!27694) l!2797)) b!2326079))

(declare-fun m!2757207 () Bool)

(assert (=> b!2326078 m!2757207))

(declare-fun m!2757209 () Bool)

(assert (=> b!2326078 m!2757209))

(declare-fun m!2757211 () Bool)

(assert (=> b!2326078 m!2757211))

(declare-fun m!2757213 () Bool)

(assert (=> b!2326078 m!2757213))

(declare-fun m!2757215 () Bool)

(assert (=> b!2326078 m!2757215))

(declare-fun m!2757217 () Bool)

(assert (=> b!2326078 m!2757217))

(assert (=> b!2326078 m!2757207))

(assert (=> b!2326078 m!2757213))

(declare-fun m!2757219 () Bool)

(assert (=> b!2326078 m!2757219))

(declare-fun m!2757221 () Bool)

(assert (=> b!2326076 m!2757221))

(check-sat (not b!2326078) (not b!2326076) (not b!2326079) tp_is_empty!10877)
(check-sat)
(get-model)

(declare-fun b!2326106 () Bool)

(declare-fun res!993529 () Bool)

(declare-fun e!1490395 () Bool)

(assert (=> b!2326106 (=> (not res!993529) (not e!1490395))))

(declare-fun lt!861604 () List!27792)

(assert (=> b!2326106 (= res!993529 (= (size!21970 lt!861604) (+ (size!21970 (Cons!27694 (h!33095 l!2797) Nil!27694)) (size!21970 lt!861596))))))

(declare-fun d!688769 () Bool)

(assert (=> d!688769 e!1490395))

(declare-fun res!993530 () Bool)

(assert (=> d!688769 (=> (not res!993530) (not e!1490395))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3754 (List!27792) (InoxSet T!44090))

(assert (=> d!688769 (= res!993530 (= (content!3754 lt!861604) ((_ map or) (content!3754 (Cons!27694 (h!33095 l!2797) Nil!27694)) (content!3754 lt!861596))))))

(declare-fun e!1490394 () List!27792)

(assert (=> d!688769 (= lt!861604 e!1490394)))

(declare-fun c!369324 () Bool)

(assert (=> d!688769 (= c!369324 ((_ is Nil!27694) (Cons!27694 (h!33095 l!2797) Nil!27694)))))

(assert (=> d!688769 (= (++!6844 (Cons!27694 (h!33095 l!2797) Nil!27694) lt!861596) lt!861604)))

(declare-fun b!2326105 () Bool)

(assert (=> b!2326105 (= e!1490394 (Cons!27694 (h!33095 (Cons!27694 (h!33095 l!2797) Nil!27694)) (++!6844 (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694)) lt!861596)))))

(declare-fun b!2326104 () Bool)

(assert (=> b!2326104 (= e!1490394 lt!861596)))

(declare-fun b!2326107 () Bool)

(assert (=> b!2326107 (= e!1490395 (or (not (= lt!861596 Nil!27694)) (= lt!861604 (Cons!27694 (h!33095 l!2797) Nil!27694))))))

(assert (= (and d!688769 c!369324) b!2326104))

(assert (= (and d!688769 (not c!369324)) b!2326105))

(assert (= (and d!688769 res!993530) b!2326106))

(assert (= (and b!2326106 res!993529) b!2326107))

(declare-fun m!2757255 () Bool)

(assert (=> b!2326106 m!2757255))

(declare-fun m!2757257 () Bool)

(assert (=> b!2326106 m!2757257))

(declare-fun m!2757259 () Bool)

(assert (=> b!2326106 m!2757259))

(declare-fun m!2757261 () Bool)

(assert (=> d!688769 m!2757261))

(declare-fun m!2757263 () Bool)

(assert (=> d!688769 m!2757263))

(declare-fun m!2757265 () Bool)

(assert (=> d!688769 m!2757265))

(declare-fun m!2757267 () Bool)

(assert (=> b!2326105 m!2757267))

(assert (=> b!2326078 d!688769))

(declare-fun d!688779 () Bool)

(declare-fun take!495 (List!27792 Int) List!27792)

(declare-fun drop!1516 (List!27792 Int) List!27792)

(assert (=> d!688779 (= (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))) (take!495 (drop!1516 (t!207494 l!2797) (- i!741 1)) (- (size!21970 (t!207494 l!2797)) (- i!741 1))))))

(declare-fun bs!459277 () Bool)

(assert (= bs!459277 d!688779))

(declare-fun m!2757273 () Bool)

(assert (=> bs!459277 m!2757273))

(assert (=> bs!459277 m!2757273))

(declare-fun m!2757275 () Bool)

(assert (=> bs!459277 m!2757275))

(assert (=> b!2326078 d!688779))

(declare-fun b!2326110 () Bool)

(declare-fun res!993531 () Bool)

(declare-fun e!1490397 () Bool)

(assert (=> b!2326110 (=> (not res!993531) (not e!1490397))))

(declare-fun lt!861608 () List!27792)

(assert (=> b!2326110 (= res!993531 (= (size!21970 lt!861608) (+ (size!21970 lt!861596) (size!21970 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))))

(declare-fun d!688783 () Bool)

(assert (=> d!688783 e!1490397))

(declare-fun res!993532 () Bool)

(assert (=> d!688783 (=> (not res!993532) (not e!1490397))))

(assert (=> d!688783 (= res!993532 (= (content!3754 lt!861608) ((_ map or) (content!3754 lt!861596) (content!3754 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))))

(declare-fun e!1490396 () List!27792)

(assert (=> d!688783 (= lt!861608 e!1490396)))

(declare-fun c!369325 () Bool)

(assert (=> d!688783 (= c!369325 ((_ is Nil!27694) lt!861596))))

(assert (=> d!688783 (= (++!6844 lt!861596 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))) lt!861608)))

(declare-fun b!2326109 () Bool)

(assert (=> b!2326109 (= e!1490396 (Cons!27694 (h!33095 lt!861596) (++!6844 (t!207494 lt!861596) (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))))))))

(declare-fun b!2326108 () Bool)

(assert (=> b!2326108 (= e!1490396 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))))))

(declare-fun b!2326111 () Bool)

(assert (=> b!2326111 (= e!1490397 (or (not (= (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))) Nil!27694)) (= lt!861608 lt!861596)))))

(assert (= (and d!688783 c!369325) b!2326108))

(assert (= (and d!688783 (not c!369325)) b!2326109))

(assert (= (and d!688783 res!993532) b!2326110))

(assert (= (and b!2326110 res!993531) b!2326111))

(declare-fun m!2757277 () Bool)

(assert (=> b!2326110 m!2757277))

(assert (=> b!2326110 m!2757259))

(assert (=> b!2326110 m!2757213))

(declare-fun m!2757279 () Bool)

(assert (=> b!2326110 m!2757279))

(declare-fun m!2757281 () Bool)

(assert (=> d!688783 m!2757281))

(assert (=> d!688783 m!2757265))

(assert (=> d!688783 m!2757213))

(declare-fun m!2757283 () Bool)

(assert (=> d!688783 m!2757283))

(assert (=> b!2326109 m!2757213))

(declare-fun m!2757285 () Bool)

(assert (=> b!2326109 m!2757285))

(assert (=> b!2326078 d!688783))

(declare-fun d!688785 () Bool)

(assert (=> d!688785 (= (slice!729 (t!207494 l!2797) 0 (- i!741 1)) (take!495 (drop!1516 (t!207494 l!2797) 0) (- (- i!741 1) 0)))))

(declare-fun bs!459278 () Bool)

(assert (= bs!459278 d!688785))

(declare-fun m!2757287 () Bool)

(assert (=> bs!459278 m!2757287))

(assert (=> bs!459278 m!2757287))

(declare-fun m!2757289 () Bool)

(assert (=> bs!459278 m!2757289))

(assert (=> b!2326078 d!688785))

(declare-fun d!688787 () Bool)

(assert (=> d!688787 (= (++!6844 (slice!729 (t!207494 l!2797) 0 (- i!741 1)) (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))) (t!207494 l!2797))))

(declare-fun lt!861615 () Unit!40546)

(declare-fun choose!13618 (List!27792 Int) Unit!40546)

(assert (=> d!688787 (= lt!861615 (choose!13618 (t!207494 l!2797) (- i!741 1)))))

(assert (=> d!688787 (= (sliceSplit!34 (t!207494 l!2797) (- i!741 1)) lt!861615)))

(declare-fun bs!459280 () Bool)

(assert (= bs!459280 d!688787))

(assert (=> bs!459280 m!2757219))

(assert (=> bs!459280 m!2757213))

(declare-fun m!2757297 () Bool)

(assert (=> bs!459280 m!2757297))

(assert (=> bs!459280 m!2757207))

(assert (=> bs!459280 m!2757213))

(declare-fun m!2757299 () Bool)

(assert (=> bs!459280 m!2757299))

(assert (=> bs!459280 m!2757219))

(assert (=> bs!459280 m!2757207))

(assert (=> b!2326078 d!688787))

(declare-fun d!688793 () Bool)

(declare-fun lt!861618 () Int)

(assert (=> d!688793 (>= lt!861618 0)))

(declare-fun e!1490407 () Int)

(assert (=> d!688793 (= lt!861618 e!1490407)))

(declare-fun c!369332 () Bool)

(assert (=> d!688793 (= c!369332 ((_ is Nil!27694) (t!207494 l!2797)))))

(assert (=> d!688793 (= (size!21970 (t!207494 l!2797)) lt!861618)))

(declare-fun b!2326129 () Bool)

(assert (=> b!2326129 (= e!1490407 0)))

(declare-fun b!2326130 () Bool)

(assert (=> b!2326130 (= e!1490407 (+ 1 (size!21970 (t!207494 (t!207494 l!2797)))))))

(assert (= (and d!688793 c!369332) b!2326129))

(assert (= (and d!688793 (not c!369332)) b!2326130))

(declare-fun m!2757301 () Bool)

(assert (=> b!2326130 m!2757301))

(assert (=> b!2326078 d!688793))

(declare-fun d!688795 () Bool)

(assert (=> d!688795 (= (slice!729 l!2797 0 i!741) (take!495 (drop!1516 l!2797 0) (- i!741 0)))))

(declare-fun bs!459281 () Bool)

(assert (= bs!459281 d!688795))

(declare-fun m!2757303 () Bool)

(assert (=> bs!459281 m!2757303))

(assert (=> bs!459281 m!2757303))

(declare-fun m!2757305 () Bool)

(assert (=> bs!459281 m!2757305))

(assert (=> b!2326078 d!688795))

(declare-fun d!688797 () Bool)

(declare-fun lt!861619 () Int)

(assert (=> d!688797 (>= lt!861619 0)))

(declare-fun e!1490408 () Int)

(assert (=> d!688797 (= lt!861619 e!1490408)))

(declare-fun c!369333 () Bool)

(assert (=> d!688797 (= c!369333 ((_ is Nil!27694) l!2797))))

(assert (=> d!688797 (= (size!21970 l!2797) lt!861619)))

(declare-fun b!2326131 () Bool)

(assert (=> b!2326131 (= e!1490408 0)))

(declare-fun b!2326132 () Bool)

(assert (=> b!2326132 (= e!1490408 (+ 1 (size!21970 (t!207494 l!2797))))))

(assert (= (and d!688797 c!369333) b!2326131))

(assert (= (and d!688797 (not c!369333)) b!2326132))

(assert (=> b!2326132 m!2757207))

(assert (=> b!2326076 d!688797))

(declare-fun b!2326137 () Bool)

(declare-fun e!1490411 () Bool)

(declare-fun tp!737167 () Bool)

(assert (=> b!2326137 (= e!1490411 (and tp_is_empty!10877 tp!737167))))

(assert (=> b!2326079 (= tp!737161 e!1490411)))

(assert (= (and b!2326079 ((_ is Cons!27694) (t!207494 l!2797))) b!2326137))

(check-sat tp_is_empty!10877 (not b!2326137) (not b!2326132) (not b!2326109) (not d!688779) (not d!688795) (not b!2326106) (not b!2326110) (not b!2326105) (not d!688785) (not d!688787) (not d!688783) (not b!2326130) (not d!688769))
(check-sat)
(get-model)

(declare-fun d!688799 () Bool)

(declare-fun e!1490421 () Bool)

(assert (=> d!688799 e!1490421))

(declare-fun res!993535 () Bool)

(assert (=> d!688799 (=> (not res!993535) (not e!1490421))))

(declare-fun lt!861622 () List!27792)

(assert (=> d!688799 (= res!993535 (= ((_ map implies) (content!3754 lt!861622) (content!3754 (drop!1516 (t!207494 l!2797) (- i!741 1)))) ((as const (InoxSet T!44090)) true)))))

(declare-fun e!1490422 () List!27792)

(assert (=> d!688799 (= lt!861622 e!1490422)))

(declare-fun c!369340 () Bool)

(assert (=> d!688799 (= c!369340 (or ((_ is Nil!27694) (drop!1516 (t!207494 l!2797) (- i!741 1))) (<= (- (size!21970 (t!207494 l!2797)) (- i!741 1)) 0)))))

(assert (=> d!688799 (= (take!495 (drop!1516 (t!207494 l!2797) (- i!741 1)) (- (size!21970 (t!207494 l!2797)) (- i!741 1))) lt!861622)))

(declare-fun b!2326152 () Bool)

(declare-fun e!1490420 () Int)

(assert (=> b!2326152 (= e!1490420 0)))

(declare-fun b!2326153 () Bool)

(assert (=> b!2326153 (= e!1490422 (Cons!27694 (h!33095 (drop!1516 (t!207494 l!2797) (- i!741 1))) (take!495 (t!207494 (drop!1516 (t!207494 l!2797) (- i!741 1))) (- (- (size!21970 (t!207494 l!2797)) (- i!741 1)) 1))))))

(declare-fun b!2326154 () Bool)

(declare-fun e!1490423 () Int)

(assert (=> b!2326154 (= e!1490423 (- (size!21970 (t!207494 l!2797)) (- i!741 1)))))

(declare-fun b!2326155 () Bool)

(assert (=> b!2326155 (= e!1490421 (= (size!21970 lt!861622) e!1490420))))

(declare-fun c!369341 () Bool)

(assert (=> b!2326155 (= c!369341 (<= (- (size!21970 (t!207494 l!2797)) (- i!741 1)) 0))))

(declare-fun b!2326156 () Bool)

(assert (=> b!2326156 (= e!1490420 e!1490423)))

(declare-fun c!369342 () Bool)

(assert (=> b!2326156 (= c!369342 (>= (- (size!21970 (t!207494 l!2797)) (- i!741 1)) (size!21970 (drop!1516 (t!207494 l!2797) (- i!741 1)))))))

(declare-fun b!2326157 () Bool)

(assert (=> b!2326157 (= e!1490423 (size!21970 (drop!1516 (t!207494 l!2797) (- i!741 1))))))

(declare-fun b!2326158 () Bool)

(assert (=> b!2326158 (= e!1490422 Nil!27694)))

(assert (= (and d!688799 c!369340) b!2326158))

(assert (= (and d!688799 (not c!369340)) b!2326153))

(assert (= (and d!688799 res!993535) b!2326155))

(assert (= (and b!2326155 c!369341) b!2326152))

(assert (= (and b!2326155 (not c!369341)) b!2326156))

(assert (= (and b!2326156 c!369342) b!2326157))

(assert (= (and b!2326156 (not c!369342)) b!2326154))

(assert (=> b!2326156 m!2757273))

(declare-fun m!2757307 () Bool)

(assert (=> b!2326156 m!2757307))

(declare-fun m!2757309 () Bool)

(assert (=> b!2326155 m!2757309))

(assert (=> b!2326157 m!2757273))

(assert (=> b!2326157 m!2757307))

(declare-fun m!2757311 () Bool)

(assert (=> d!688799 m!2757311))

(assert (=> d!688799 m!2757273))

(declare-fun m!2757313 () Bool)

(assert (=> d!688799 m!2757313))

(declare-fun m!2757315 () Bool)

(assert (=> b!2326153 m!2757315))

(assert (=> d!688779 d!688799))

(declare-fun b!2326191 () Bool)

(declare-fun e!1490444 () Int)

(assert (=> b!2326191 (= e!1490444 0)))

(declare-fun bm!138934 () Bool)

(declare-fun call!138939 () Int)

(assert (=> bm!138934 (= call!138939 (size!21970 (t!207494 l!2797)))))

(declare-fun b!2326193 () Bool)

(declare-fun e!1490443 () Int)

(assert (=> b!2326193 (= e!1490443 call!138939)))

(declare-fun b!2326194 () Bool)

(declare-fun e!1490442 () List!27792)

(declare-fun e!1490446 () List!27792)

(assert (=> b!2326194 (= e!1490442 e!1490446)))

(declare-fun c!369358 () Bool)

(assert (=> b!2326194 (= c!369358 (<= (- i!741 1) 0))))

(declare-fun b!2326195 () Bool)

(assert (=> b!2326195 (= e!1490446 (drop!1516 (t!207494 (t!207494 l!2797)) (- (- i!741 1) 1)))))

(declare-fun b!2326196 () Bool)

(assert (=> b!2326196 (= e!1490443 e!1490444)))

(declare-fun c!369360 () Bool)

(assert (=> b!2326196 (= c!369360 (>= (- i!741 1) call!138939))))

(declare-fun b!2326197 () Bool)

(assert (=> b!2326197 (= e!1490442 Nil!27694)))

(declare-fun d!688801 () Bool)

(declare-fun e!1490445 () Bool)

(assert (=> d!688801 e!1490445))

(declare-fun res!993540 () Bool)

(assert (=> d!688801 (=> (not res!993540) (not e!1490445))))

(declare-fun lt!861627 () List!27792)

(assert (=> d!688801 (= res!993540 (= ((_ map implies) (content!3754 lt!861627) (content!3754 (t!207494 l!2797))) ((as const (InoxSet T!44090)) true)))))

(assert (=> d!688801 (= lt!861627 e!1490442)))

(declare-fun c!369357 () Bool)

(assert (=> d!688801 (= c!369357 ((_ is Nil!27694) (t!207494 l!2797)))))

(assert (=> d!688801 (= (drop!1516 (t!207494 l!2797) (- i!741 1)) lt!861627)))

(declare-fun b!2326192 () Bool)

(assert (=> b!2326192 (= e!1490444 (- call!138939 (- i!741 1)))))

(declare-fun b!2326198 () Bool)

(assert (=> b!2326198 (= e!1490445 (= (size!21970 lt!861627) e!1490443))))

(declare-fun c!369359 () Bool)

(assert (=> b!2326198 (= c!369359 (<= (- i!741 1) 0))))

(declare-fun b!2326199 () Bool)

(assert (=> b!2326199 (= e!1490446 (t!207494 l!2797))))

(assert (= (and d!688801 c!369357) b!2326197))

(assert (= (and d!688801 (not c!369357)) b!2326194))

(assert (= (and b!2326194 c!369358) b!2326199))

(assert (= (and b!2326194 (not c!369358)) b!2326195))

(assert (= (and d!688801 res!993540) b!2326198))

(assert (= (and b!2326198 c!369359) b!2326193))

(assert (= (and b!2326198 (not c!369359)) b!2326196))

(assert (= (and b!2326196 c!369360) b!2326191))

(assert (= (and b!2326196 (not c!369360)) b!2326192))

(assert (= (or b!2326193 b!2326196 b!2326192) bm!138934))

(assert (=> bm!138934 m!2757207))

(declare-fun m!2757317 () Bool)

(assert (=> b!2326195 m!2757317))

(declare-fun m!2757319 () Bool)

(assert (=> d!688801 m!2757319))

(declare-fun m!2757321 () Bool)

(assert (=> d!688801 m!2757321))

(declare-fun m!2757323 () Bool)

(assert (=> b!2326198 m!2757323))

(assert (=> d!688779 d!688801))

(declare-fun b!2326202 () Bool)

(declare-fun res!993541 () Bool)

(declare-fun e!1490448 () Bool)

(assert (=> b!2326202 (=> (not res!993541) (not e!1490448))))

(declare-fun lt!861628 () List!27792)

(assert (=> b!2326202 (= res!993541 (= (size!21970 lt!861628) (+ (size!21970 (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694))) (size!21970 lt!861596))))))

(declare-fun d!688805 () Bool)

(assert (=> d!688805 e!1490448))

(declare-fun res!993542 () Bool)

(assert (=> d!688805 (=> (not res!993542) (not e!1490448))))

(assert (=> d!688805 (= res!993542 (= (content!3754 lt!861628) ((_ map or) (content!3754 (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694))) (content!3754 lt!861596))))))

(declare-fun e!1490447 () List!27792)

(assert (=> d!688805 (= lt!861628 e!1490447)))

(declare-fun c!369361 () Bool)

(assert (=> d!688805 (= c!369361 ((_ is Nil!27694) (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694))))))

(assert (=> d!688805 (= (++!6844 (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694)) lt!861596) lt!861628)))

(declare-fun b!2326201 () Bool)

(assert (=> b!2326201 (= e!1490447 (Cons!27694 (h!33095 (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694))) (++!6844 (t!207494 (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694))) lt!861596)))))

(declare-fun b!2326200 () Bool)

(assert (=> b!2326200 (= e!1490447 lt!861596)))

(declare-fun b!2326203 () Bool)

(assert (=> b!2326203 (= e!1490448 (or (not (= lt!861596 Nil!27694)) (= lt!861628 (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694)))))))

(assert (= (and d!688805 c!369361) b!2326200))

(assert (= (and d!688805 (not c!369361)) b!2326201))

(assert (= (and d!688805 res!993542) b!2326202))

(assert (= (and b!2326202 res!993541) b!2326203))

(declare-fun m!2757325 () Bool)

(assert (=> b!2326202 m!2757325))

(declare-fun m!2757327 () Bool)

(assert (=> b!2326202 m!2757327))

(assert (=> b!2326202 m!2757259))

(declare-fun m!2757329 () Bool)

(assert (=> d!688805 m!2757329))

(declare-fun m!2757331 () Bool)

(assert (=> d!688805 m!2757331))

(assert (=> d!688805 m!2757265))

(declare-fun m!2757333 () Bool)

(assert (=> b!2326201 m!2757333))

(assert (=> b!2326105 d!688805))

(assert (=> b!2326132 d!688793))

(assert (=> d!688787 d!688779))

(assert (=> d!688787 d!688785))

(assert (=> d!688787 d!688793))

(declare-fun d!688807 () Bool)

(assert (=> d!688807 (= (++!6844 (slice!729 (t!207494 l!2797) 0 (- i!741 1)) (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))) (t!207494 l!2797))))

(assert (=> d!688807 true))

(declare-fun _$14!681 () Unit!40546)

(assert (=> d!688807 (= (choose!13618 (t!207494 l!2797) (- i!741 1)) _$14!681)))

(declare-fun bs!459282 () Bool)

(assert (= bs!459282 d!688807))

(assert (=> bs!459282 m!2757219))

(assert (=> bs!459282 m!2757207))

(assert (=> bs!459282 m!2757207))

(assert (=> bs!459282 m!2757213))

(assert (=> bs!459282 m!2757219))

(assert (=> bs!459282 m!2757213))

(assert (=> bs!459282 m!2757297))

(assert (=> d!688787 d!688807))

(declare-fun b!2326213 () Bool)

(declare-fun res!993544 () Bool)

(declare-fun e!1490454 () Bool)

(assert (=> b!2326213 (=> (not res!993544) (not e!1490454))))

(declare-fun lt!861630 () List!27792)

(assert (=> b!2326213 (= res!993544 (= (size!21970 lt!861630) (+ (size!21970 (slice!729 (t!207494 l!2797) 0 (- i!741 1))) (size!21970 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))))

(declare-fun d!688811 () Bool)

(assert (=> d!688811 e!1490454))

(declare-fun res!993545 () Bool)

(assert (=> d!688811 (=> (not res!993545) (not e!1490454))))

(assert (=> d!688811 (= res!993545 (= (content!3754 lt!861630) ((_ map or) (content!3754 (slice!729 (t!207494 l!2797) 0 (- i!741 1))) (content!3754 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))))

(declare-fun e!1490453 () List!27792)

(assert (=> d!688811 (= lt!861630 e!1490453)))

(declare-fun c!369365 () Bool)

(assert (=> d!688811 (= c!369365 ((_ is Nil!27694) (slice!729 (t!207494 l!2797) 0 (- i!741 1))))))

(assert (=> d!688811 (= (++!6844 (slice!729 (t!207494 l!2797) 0 (- i!741 1)) (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))) lt!861630)))

(declare-fun b!2326212 () Bool)

(assert (=> b!2326212 (= e!1490453 (Cons!27694 (h!33095 (slice!729 (t!207494 l!2797) 0 (- i!741 1))) (++!6844 (t!207494 (slice!729 (t!207494 l!2797) 0 (- i!741 1))) (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))))))))

(declare-fun b!2326211 () Bool)

(assert (=> b!2326211 (= e!1490453 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))))))

(declare-fun b!2326214 () Bool)

(assert (=> b!2326214 (= e!1490454 (or (not (= (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))) Nil!27694)) (= lt!861630 (slice!729 (t!207494 l!2797) 0 (- i!741 1)))))))

(assert (= (and d!688811 c!369365) b!2326211))

(assert (= (and d!688811 (not c!369365)) b!2326212))

(assert (= (and d!688811 res!993545) b!2326213))

(assert (= (and b!2326213 res!993544) b!2326214))

(declare-fun m!2757345 () Bool)

(assert (=> b!2326213 m!2757345))

(assert (=> b!2326213 m!2757219))

(declare-fun m!2757347 () Bool)

(assert (=> b!2326213 m!2757347))

(assert (=> b!2326213 m!2757213))

(assert (=> b!2326213 m!2757279))

(declare-fun m!2757349 () Bool)

(assert (=> d!688811 m!2757349))

(assert (=> d!688811 m!2757219))

(declare-fun m!2757351 () Bool)

(assert (=> d!688811 m!2757351))

(assert (=> d!688811 m!2757213))

(assert (=> d!688811 m!2757283))

(assert (=> b!2326212 m!2757213))

(declare-fun m!2757353 () Bool)

(assert (=> b!2326212 m!2757353))

(assert (=> d!688787 d!688811))

(declare-fun d!688813 () Bool)

(declare-fun lt!861631 () Int)

(assert (=> d!688813 (>= lt!861631 0)))

(declare-fun e!1490455 () Int)

(assert (=> d!688813 (= lt!861631 e!1490455)))

(declare-fun c!369366 () Bool)

(assert (=> d!688813 (= c!369366 ((_ is Nil!27694) lt!861604))))

(assert (=> d!688813 (= (size!21970 lt!861604) lt!861631)))

(declare-fun b!2326215 () Bool)

(assert (=> b!2326215 (= e!1490455 0)))

(declare-fun b!2326216 () Bool)

(assert (=> b!2326216 (= e!1490455 (+ 1 (size!21970 (t!207494 lt!861604))))))

(assert (= (and d!688813 c!369366) b!2326215))

(assert (= (and d!688813 (not c!369366)) b!2326216))

(declare-fun m!2757355 () Bool)

(assert (=> b!2326216 m!2757355))

(assert (=> b!2326106 d!688813))

(declare-fun d!688815 () Bool)

(declare-fun lt!861632 () Int)

(assert (=> d!688815 (>= lt!861632 0)))

(declare-fun e!1490456 () Int)

(assert (=> d!688815 (= lt!861632 e!1490456)))

(declare-fun c!369367 () Bool)

(assert (=> d!688815 (= c!369367 ((_ is Nil!27694) (Cons!27694 (h!33095 l!2797) Nil!27694)))))

(assert (=> d!688815 (= (size!21970 (Cons!27694 (h!33095 l!2797) Nil!27694)) lt!861632)))

(declare-fun b!2326217 () Bool)

(assert (=> b!2326217 (= e!1490456 0)))

(declare-fun b!2326218 () Bool)

(assert (=> b!2326218 (= e!1490456 (+ 1 (size!21970 (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694)))))))

(assert (= (and d!688815 c!369367) b!2326217))

(assert (= (and d!688815 (not c!369367)) b!2326218))

(assert (=> b!2326218 m!2757327))

(assert (=> b!2326106 d!688815))

(declare-fun d!688817 () Bool)

(declare-fun lt!861633 () Int)

(assert (=> d!688817 (>= lt!861633 0)))

(declare-fun e!1490457 () Int)

(assert (=> d!688817 (= lt!861633 e!1490457)))

(declare-fun c!369368 () Bool)

(assert (=> d!688817 (= c!369368 ((_ is Nil!27694) lt!861596))))

(assert (=> d!688817 (= (size!21970 lt!861596) lt!861633)))

(declare-fun b!2326219 () Bool)

(assert (=> b!2326219 (= e!1490457 0)))

(declare-fun b!2326220 () Bool)

(assert (=> b!2326220 (= e!1490457 (+ 1 (size!21970 (t!207494 lt!861596))))))

(assert (= (and d!688817 c!369368) b!2326219))

(assert (= (and d!688817 (not c!369368)) b!2326220))

(declare-fun m!2757357 () Bool)

(assert (=> b!2326220 m!2757357))

(assert (=> b!2326106 d!688817))

(declare-fun b!2326231 () Bool)

(declare-fun res!993546 () Bool)

(declare-fun e!1490462 () Bool)

(assert (=> b!2326231 (=> (not res!993546) (not e!1490462))))

(declare-fun lt!861636 () List!27792)

(assert (=> b!2326231 (= res!993546 (= (size!21970 lt!861636) (+ (size!21970 (t!207494 lt!861596)) (size!21970 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))))

(declare-fun d!688819 () Bool)

(assert (=> d!688819 e!1490462))

(declare-fun res!993547 () Bool)

(assert (=> d!688819 (=> (not res!993547) (not e!1490462))))

(assert (=> d!688819 (= res!993547 (= (content!3754 lt!861636) ((_ map or) (content!3754 (t!207494 lt!861596)) (content!3754 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))))

(declare-fun e!1490461 () List!27792)

(assert (=> d!688819 (= lt!861636 e!1490461)))

(declare-fun c!369372 () Bool)

(assert (=> d!688819 (= c!369372 ((_ is Nil!27694) (t!207494 lt!861596)))))

(assert (=> d!688819 (= (++!6844 (t!207494 lt!861596) (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))) lt!861636)))

(declare-fun b!2326230 () Bool)

(assert (=> b!2326230 (= e!1490461 (Cons!27694 (h!33095 (t!207494 lt!861596)) (++!6844 (t!207494 (t!207494 lt!861596)) (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))))))))

(declare-fun b!2326229 () Bool)

(assert (=> b!2326229 (= e!1490461 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))))))

(declare-fun b!2326232 () Bool)

(assert (=> b!2326232 (= e!1490462 (or (not (= (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797))) Nil!27694)) (= lt!861636 (t!207494 lt!861596))))))

(assert (= (and d!688819 c!369372) b!2326229))

(assert (= (and d!688819 (not c!369372)) b!2326230))

(assert (= (and d!688819 res!993547) b!2326231))

(assert (= (and b!2326231 res!993546) b!2326232))

(declare-fun m!2757359 () Bool)

(assert (=> b!2326231 m!2757359))

(assert (=> b!2326231 m!2757357))

(assert (=> b!2326231 m!2757213))

(assert (=> b!2326231 m!2757279))

(declare-fun m!2757361 () Bool)

(assert (=> d!688819 m!2757361))

(declare-fun m!2757363 () Bool)

(assert (=> d!688819 m!2757363))

(assert (=> d!688819 m!2757213))

(assert (=> d!688819 m!2757283))

(assert (=> b!2326230 m!2757213))

(declare-fun m!2757365 () Bool)

(assert (=> b!2326230 m!2757365))

(assert (=> b!2326109 d!688819))

(declare-fun d!688821 () Bool)

(declare-fun e!1490471 () Bool)

(assert (=> d!688821 e!1490471))

(declare-fun res!993550 () Bool)

(assert (=> d!688821 (=> (not res!993550) (not e!1490471))))

(declare-fun lt!861637 () List!27792)

(assert (=> d!688821 (= res!993550 (= ((_ map implies) (content!3754 lt!861637) (content!3754 (drop!1516 l!2797 0))) ((as const (InoxSet T!44090)) true)))))

(declare-fun e!1490472 () List!27792)

(assert (=> d!688821 (= lt!861637 e!1490472)))

(declare-fun c!369378 () Bool)

(assert (=> d!688821 (= c!369378 (or ((_ is Nil!27694) (drop!1516 l!2797 0)) (<= (- i!741 0) 0)))))

(assert (=> d!688821 (= (take!495 (drop!1516 l!2797 0) (- i!741 0)) lt!861637)))

(declare-fun b!2326243 () Bool)

(declare-fun e!1490470 () Int)

(assert (=> b!2326243 (= e!1490470 0)))

(declare-fun b!2326244 () Bool)

(assert (=> b!2326244 (= e!1490472 (Cons!27694 (h!33095 (drop!1516 l!2797 0)) (take!495 (t!207494 (drop!1516 l!2797 0)) (- (- i!741 0) 1))))))

(declare-fun b!2326245 () Bool)

(declare-fun e!1490473 () Int)

(assert (=> b!2326245 (= e!1490473 (- i!741 0))))

(declare-fun b!2326246 () Bool)

(assert (=> b!2326246 (= e!1490471 (= (size!21970 lt!861637) e!1490470))))

(declare-fun c!369379 () Bool)

(assert (=> b!2326246 (= c!369379 (<= (- i!741 0) 0))))

(declare-fun b!2326247 () Bool)

(assert (=> b!2326247 (= e!1490470 e!1490473)))

(declare-fun c!369380 () Bool)

(assert (=> b!2326247 (= c!369380 (>= (- i!741 0) (size!21970 (drop!1516 l!2797 0))))))

(declare-fun b!2326248 () Bool)

(assert (=> b!2326248 (= e!1490473 (size!21970 (drop!1516 l!2797 0)))))

(declare-fun b!2326249 () Bool)

(assert (=> b!2326249 (= e!1490472 Nil!27694)))

(assert (= (and d!688821 c!369378) b!2326249))

(assert (= (and d!688821 (not c!369378)) b!2326244))

(assert (= (and d!688821 res!993550) b!2326246))

(assert (= (and b!2326246 c!369379) b!2326243))

(assert (= (and b!2326246 (not c!369379)) b!2326247))

(assert (= (and b!2326247 c!369380) b!2326248))

(assert (= (and b!2326247 (not c!369380)) b!2326245))

(assert (=> b!2326247 m!2757303))

(declare-fun m!2757367 () Bool)

(assert (=> b!2326247 m!2757367))

(declare-fun m!2757369 () Bool)

(assert (=> b!2326246 m!2757369))

(assert (=> b!2326248 m!2757303))

(assert (=> b!2326248 m!2757367))

(declare-fun m!2757371 () Bool)

(assert (=> d!688821 m!2757371))

(assert (=> d!688821 m!2757303))

(declare-fun m!2757373 () Bool)

(assert (=> d!688821 m!2757373))

(declare-fun m!2757375 () Bool)

(assert (=> b!2326244 m!2757375))

(assert (=> d!688795 d!688821))

(declare-fun b!2326250 () Bool)

(declare-fun e!1490476 () Int)

(assert (=> b!2326250 (= e!1490476 0)))

(declare-fun bm!138937 () Bool)

(declare-fun call!138942 () Int)

(assert (=> bm!138937 (= call!138942 (size!21970 l!2797))))

(declare-fun b!2326252 () Bool)

(declare-fun e!1490475 () Int)

(assert (=> b!2326252 (= e!1490475 call!138942)))

(declare-fun b!2326253 () Bool)

(declare-fun e!1490474 () List!27792)

(declare-fun e!1490478 () List!27792)

(assert (=> b!2326253 (= e!1490474 e!1490478)))

(declare-fun c!369382 () Bool)

(assert (=> b!2326253 (= c!369382 (<= 0 0))))

(declare-fun b!2326254 () Bool)

(assert (=> b!2326254 (= e!1490478 (drop!1516 (t!207494 l!2797) (- 0 1)))))

(declare-fun b!2326255 () Bool)

(assert (=> b!2326255 (= e!1490475 e!1490476)))

(declare-fun c!369384 () Bool)

(assert (=> b!2326255 (= c!369384 (>= 0 call!138942))))

(declare-fun b!2326256 () Bool)

(assert (=> b!2326256 (= e!1490474 Nil!27694)))

(declare-fun d!688823 () Bool)

(declare-fun e!1490477 () Bool)

(assert (=> d!688823 e!1490477))

(declare-fun res!993551 () Bool)

(assert (=> d!688823 (=> (not res!993551) (not e!1490477))))

(declare-fun lt!861638 () List!27792)

(assert (=> d!688823 (= res!993551 (= ((_ map implies) (content!3754 lt!861638) (content!3754 l!2797)) ((as const (InoxSet T!44090)) true)))))

(assert (=> d!688823 (= lt!861638 e!1490474)))

(declare-fun c!369381 () Bool)

(assert (=> d!688823 (= c!369381 ((_ is Nil!27694) l!2797))))

(assert (=> d!688823 (= (drop!1516 l!2797 0) lt!861638)))

(declare-fun b!2326251 () Bool)

(assert (=> b!2326251 (= e!1490476 (- call!138942 0))))

(declare-fun b!2326257 () Bool)

(assert (=> b!2326257 (= e!1490477 (= (size!21970 lt!861638) e!1490475))))

(declare-fun c!369383 () Bool)

(assert (=> b!2326257 (= c!369383 (<= 0 0))))

(declare-fun b!2326258 () Bool)

(assert (=> b!2326258 (= e!1490478 l!2797)))

(assert (= (and d!688823 c!369381) b!2326256))

(assert (= (and d!688823 (not c!369381)) b!2326253))

(assert (= (and b!2326253 c!369382) b!2326258))

(assert (= (and b!2326253 (not c!369382)) b!2326254))

(assert (= (and d!688823 res!993551) b!2326257))

(assert (= (and b!2326257 c!369383) b!2326252))

(assert (= (and b!2326257 (not c!369383)) b!2326255))

(assert (= (and b!2326255 c!369384) b!2326250))

(assert (= (and b!2326255 (not c!369384)) b!2326251))

(assert (= (or b!2326252 b!2326255 b!2326251) bm!138937))

(assert (=> bm!138937 m!2757221))

(declare-fun m!2757377 () Bool)

(assert (=> b!2326254 m!2757377))

(declare-fun m!2757379 () Bool)

(assert (=> d!688823 m!2757379))

(declare-fun m!2757381 () Bool)

(assert (=> d!688823 m!2757381))

(declare-fun m!2757383 () Bool)

(assert (=> b!2326257 m!2757383))

(assert (=> d!688795 d!688823))

(declare-fun d!688825 () Bool)

(declare-fun lt!861639 () Int)

(assert (=> d!688825 (>= lt!861639 0)))

(declare-fun e!1490479 () Int)

(assert (=> d!688825 (= lt!861639 e!1490479)))

(declare-fun c!369385 () Bool)

(assert (=> d!688825 (= c!369385 ((_ is Nil!27694) lt!861608))))

(assert (=> d!688825 (= (size!21970 lt!861608) lt!861639)))

(declare-fun b!2326259 () Bool)

(assert (=> b!2326259 (= e!1490479 0)))

(declare-fun b!2326260 () Bool)

(assert (=> b!2326260 (= e!1490479 (+ 1 (size!21970 (t!207494 lt!861608))))))

(assert (= (and d!688825 c!369385) b!2326259))

(assert (= (and d!688825 (not c!369385)) b!2326260))

(declare-fun m!2757385 () Bool)

(assert (=> b!2326260 m!2757385))

(assert (=> b!2326110 d!688825))

(assert (=> b!2326110 d!688817))

(declare-fun d!688827 () Bool)

(declare-fun lt!861640 () Int)

(assert (=> d!688827 (>= lt!861640 0)))

(declare-fun e!1490480 () Int)

(assert (=> d!688827 (= lt!861640 e!1490480)))

(declare-fun c!369386 () Bool)

(assert (=> d!688827 (= c!369386 ((_ is Nil!27694) (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))

(assert (=> d!688827 (= (size!21970 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))) lt!861640)))

(declare-fun b!2326261 () Bool)

(assert (=> b!2326261 (= e!1490480 0)))

(declare-fun b!2326262 () Bool)

(assert (=> b!2326262 (= e!1490480 (+ 1 (size!21970 (t!207494 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))))

(assert (= (and d!688827 c!369386) b!2326261))

(assert (= (and d!688827 (not c!369386)) b!2326262))

(declare-fun m!2757387 () Bool)

(assert (=> b!2326262 m!2757387))

(assert (=> b!2326110 d!688827))

(declare-fun d!688829 () Bool)

(declare-fun c!369400 () Bool)

(assert (=> d!688829 (= c!369400 ((_ is Nil!27694) lt!861608))))

(declare-fun e!1490497 () (InoxSet T!44090))

(assert (=> d!688829 (= (content!3754 lt!861608) e!1490497)))

(declare-fun b!2326292 () Bool)

(assert (=> b!2326292 (= e!1490497 ((as const (Array T!44090 Bool)) false))))

(declare-fun b!2326293 () Bool)

(assert (=> b!2326293 (= e!1490497 ((_ map or) (store ((as const (Array T!44090 Bool)) false) (h!33095 lt!861608) true) (content!3754 (t!207494 lt!861608))))))

(assert (= (and d!688829 c!369400) b!2326292))

(assert (= (and d!688829 (not c!369400)) b!2326293))

(declare-fun m!2757407 () Bool)

(assert (=> b!2326293 m!2757407))

(declare-fun m!2757409 () Bool)

(assert (=> b!2326293 m!2757409))

(assert (=> d!688783 d!688829))

(declare-fun d!688835 () Bool)

(declare-fun c!369401 () Bool)

(assert (=> d!688835 (= c!369401 ((_ is Nil!27694) lt!861596))))

(declare-fun e!1490498 () (InoxSet T!44090))

(assert (=> d!688835 (= (content!3754 lt!861596) e!1490498)))

(declare-fun b!2326294 () Bool)

(assert (=> b!2326294 (= e!1490498 ((as const (Array T!44090 Bool)) false))))

(declare-fun b!2326295 () Bool)

(assert (=> b!2326295 (= e!1490498 ((_ map or) (store ((as const (Array T!44090 Bool)) false) (h!33095 lt!861596) true) (content!3754 (t!207494 lt!861596))))))

(assert (= (and d!688835 c!369401) b!2326294))

(assert (= (and d!688835 (not c!369401)) b!2326295))

(declare-fun m!2757419 () Bool)

(assert (=> b!2326295 m!2757419))

(assert (=> b!2326295 m!2757363))

(assert (=> d!688783 d!688835))

(declare-fun d!688839 () Bool)

(declare-fun c!369402 () Bool)

(assert (=> d!688839 (= c!369402 ((_ is Nil!27694) (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))

(declare-fun e!1490499 () (InoxSet T!44090))

(assert (=> d!688839 (= (content!3754 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))) e!1490499)))

(declare-fun b!2326296 () Bool)

(assert (=> b!2326296 (= e!1490499 ((as const (Array T!44090 Bool)) false))))

(declare-fun b!2326297 () Bool)

(assert (=> b!2326297 (= e!1490499 ((_ map or) (store ((as const (Array T!44090 Bool)) false) (h!33095 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))) true) (content!3754 (t!207494 (slice!729 (t!207494 l!2797) (- i!741 1) (size!21970 (t!207494 l!2797)))))))))

(assert (= (and d!688839 c!369402) b!2326296))

(assert (= (and d!688839 (not c!369402)) b!2326297))

(declare-fun m!2757421 () Bool)

(assert (=> b!2326297 m!2757421))

(declare-fun m!2757423 () Bool)

(assert (=> b!2326297 m!2757423))

(assert (=> d!688783 d!688839))

(declare-fun d!688841 () Bool)

(declare-fun lt!861644 () Int)

(assert (=> d!688841 (>= lt!861644 0)))

(declare-fun e!1490500 () Int)

(assert (=> d!688841 (= lt!861644 e!1490500)))

(declare-fun c!369403 () Bool)

(assert (=> d!688841 (= c!369403 ((_ is Nil!27694) (t!207494 (t!207494 l!2797))))))

(assert (=> d!688841 (= (size!21970 (t!207494 (t!207494 l!2797))) lt!861644)))

(declare-fun b!2326298 () Bool)

(assert (=> b!2326298 (= e!1490500 0)))

(declare-fun b!2326299 () Bool)

(assert (=> b!2326299 (= e!1490500 (+ 1 (size!21970 (t!207494 (t!207494 (t!207494 l!2797))))))))

(assert (= (and d!688841 c!369403) b!2326298))

(assert (= (and d!688841 (not c!369403)) b!2326299))

(declare-fun m!2757425 () Bool)

(assert (=> b!2326299 m!2757425))

(assert (=> b!2326130 d!688841))

(declare-fun d!688843 () Bool)

(declare-fun e!1490504 () Bool)

(assert (=> d!688843 e!1490504))

(declare-fun res!993555 () Bool)

(assert (=> d!688843 (=> (not res!993555) (not e!1490504))))

(declare-fun lt!861645 () List!27792)

(assert (=> d!688843 (= res!993555 (= ((_ map implies) (content!3754 lt!861645) (content!3754 (drop!1516 (t!207494 l!2797) 0))) ((as const (InoxSet T!44090)) true)))))

(declare-fun e!1490505 () List!27792)

(assert (=> d!688843 (= lt!861645 e!1490505)))

(declare-fun c!369406 () Bool)

(assert (=> d!688843 (= c!369406 (or ((_ is Nil!27694) (drop!1516 (t!207494 l!2797) 0)) (<= (- (- i!741 1) 0) 0)))))

(assert (=> d!688843 (= (take!495 (drop!1516 (t!207494 l!2797) 0) (- (- i!741 1) 0)) lt!861645)))

(declare-fun b!2326304 () Bool)

(declare-fun e!1490503 () Int)

(assert (=> b!2326304 (= e!1490503 0)))

(declare-fun b!2326305 () Bool)

(assert (=> b!2326305 (= e!1490505 (Cons!27694 (h!33095 (drop!1516 (t!207494 l!2797) 0)) (take!495 (t!207494 (drop!1516 (t!207494 l!2797) 0)) (- (- (- i!741 1) 0) 1))))))

(declare-fun b!2326306 () Bool)

(declare-fun e!1490506 () Int)

(assert (=> b!2326306 (= e!1490506 (- (- i!741 1) 0))))

(declare-fun b!2326307 () Bool)

(assert (=> b!2326307 (= e!1490504 (= (size!21970 lt!861645) e!1490503))))

(declare-fun c!369407 () Bool)

(assert (=> b!2326307 (= c!369407 (<= (- (- i!741 1) 0) 0))))

(declare-fun b!2326308 () Bool)

(assert (=> b!2326308 (= e!1490503 e!1490506)))

(declare-fun c!369408 () Bool)

(assert (=> b!2326308 (= c!369408 (>= (- (- i!741 1) 0) (size!21970 (drop!1516 (t!207494 l!2797) 0))))))

(declare-fun b!2326309 () Bool)

(assert (=> b!2326309 (= e!1490506 (size!21970 (drop!1516 (t!207494 l!2797) 0)))))

(declare-fun b!2326310 () Bool)

(assert (=> b!2326310 (= e!1490505 Nil!27694)))

(assert (= (and d!688843 c!369406) b!2326310))

(assert (= (and d!688843 (not c!369406)) b!2326305))

(assert (= (and d!688843 res!993555) b!2326307))

(assert (= (and b!2326307 c!369407) b!2326304))

(assert (= (and b!2326307 (not c!369407)) b!2326308))

(assert (= (and b!2326308 c!369408) b!2326309))

(assert (= (and b!2326308 (not c!369408)) b!2326306))

(assert (=> b!2326308 m!2757287))

(declare-fun m!2757427 () Bool)

(assert (=> b!2326308 m!2757427))

(declare-fun m!2757429 () Bool)

(assert (=> b!2326307 m!2757429))

(assert (=> b!2326309 m!2757287))

(assert (=> b!2326309 m!2757427))

(declare-fun m!2757431 () Bool)

(assert (=> d!688843 m!2757431))

(assert (=> d!688843 m!2757287))

(declare-fun m!2757433 () Bool)

(assert (=> d!688843 m!2757433))

(declare-fun m!2757435 () Bool)

(assert (=> b!2326305 m!2757435))

(assert (=> d!688785 d!688843))

(declare-fun b!2326313 () Bool)

(declare-fun e!1490510 () Int)

(assert (=> b!2326313 (= e!1490510 0)))

(declare-fun bm!138940 () Bool)

(declare-fun call!138945 () Int)

(assert (=> bm!138940 (= call!138945 (size!21970 (t!207494 l!2797)))))

(declare-fun b!2326315 () Bool)

(declare-fun e!1490509 () Int)

(assert (=> b!2326315 (= e!1490509 call!138945)))

(declare-fun b!2326316 () Bool)

(declare-fun e!1490508 () List!27792)

(declare-fun e!1490512 () List!27792)

(assert (=> b!2326316 (= e!1490508 e!1490512)))

(declare-fun c!369411 () Bool)

(assert (=> b!2326316 (= c!369411 (<= 0 0))))

(declare-fun b!2326317 () Bool)

(assert (=> b!2326317 (= e!1490512 (drop!1516 (t!207494 (t!207494 l!2797)) (- 0 1)))))

(declare-fun b!2326318 () Bool)

(assert (=> b!2326318 (= e!1490509 e!1490510)))

(declare-fun c!369413 () Bool)

(assert (=> b!2326318 (= c!369413 (>= 0 call!138945))))

(declare-fun b!2326319 () Bool)

(assert (=> b!2326319 (= e!1490508 Nil!27694)))

(declare-fun d!688845 () Bool)

(declare-fun e!1490511 () Bool)

(assert (=> d!688845 e!1490511))

(declare-fun res!993556 () Bool)

(assert (=> d!688845 (=> (not res!993556) (not e!1490511))))

(declare-fun lt!861646 () List!27792)

(assert (=> d!688845 (= res!993556 (= ((_ map implies) (content!3754 lt!861646) (content!3754 (t!207494 l!2797))) ((as const (InoxSet T!44090)) true)))))

(assert (=> d!688845 (= lt!861646 e!1490508)))

(declare-fun c!369410 () Bool)

(assert (=> d!688845 (= c!369410 ((_ is Nil!27694) (t!207494 l!2797)))))

(assert (=> d!688845 (= (drop!1516 (t!207494 l!2797) 0) lt!861646)))

(declare-fun b!2326314 () Bool)

(assert (=> b!2326314 (= e!1490510 (- call!138945 0))))

(declare-fun b!2326320 () Bool)

(assert (=> b!2326320 (= e!1490511 (= (size!21970 lt!861646) e!1490509))))

(declare-fun c!369412 () Bool)

(assert (=> b!2326320 (= c!369412 (<= 0 0))))

(declare-fun b!2326321 () Bool)

(assert (=> b!2326321 (= e!1490512 (t!207494 l!2797))))

(assert (= (and d!688845 c!369410) b!2326319))

(assert (= (and d!688845 (not c!369410)) b!2326316))

(assert (= (and b!2326316 c!369411) b!2326321))

(assert (= (and b!2326316 (not c!369411)) b!2326317))

(assert (= (and d!688845 res!993556) b!2326320))

(assert (= (and b!2326320 c!369412) b!2326315))

(assert (= (and b!2326320 (not c!369412)) b!2326318))

(assert (= (and b!2326318 c!369413) b!2326313))

(assert (= (and b!2326318 (not c!369413)) b!2326314))

(assert (= (or b!2326315 b!2326318 b!2326314) bm!138940))

(assert (=> bm!138940 m!2757207))

(declare-fun m!2757449 () Bool)

(assert (=> b!2326317 m!2757449))

(declare-fun m!2757451 () Bool)

(assert (=> d!688845 m!2757451))

(assert (=> d!688845 m!2757321))

(declare-fun m!2757453 () Bool)

(assert (=> b!2326320 m!2757453))

(assert (=> d!688785 d!688845))

(declare-fun d!688853 () Bool)

(declare-fun c!369416 () Bool)

(assert (=> d!688853 (= c!369416 ((_ is Nil!27694) lt!861604))))

(declare-fun e!1490515 () (InoxSet T!44090))

(assert (=> d!688853 (= (content!3754 lt!861604) e!1490515)))

(declare-fun b!2326326 () Bool)

(assert (=> b!2326326 (= e!1490515 ((as const (Array T!44090 Bool)) false))))

(declare-fun b!2326327 () Bool)

(assert (=> b!2326327 (= e!1490515 ((_ map or) (store ((as const (Array T!44090 Bool)) false) (h!33095 lt!861604) true) (content!3754 (t!207494 lt!861604))))))

(assert (= (and d!688853 c!369416) b!2326326))

(assert (= (and d!688853 (not c!369416)) b!2326327))

(declare-fun m!2757455 () Bool)

(assert (=> b!2326327 m!2757455))

(declare-fun m!2757457 () Bool)

(assert (=> b!2326327 m!2757457))

(assert (=> d!688769 d!688853))

(declare-fun d!688855 () Bool)

(declare-fun c!369417 () Bool)

(assert (=> d!688855 (= c!369417 ((_ is Nil!27694) (Cons!27694 (h!33095 l!2797) Nil!27694)))))

(declare-fun e!1490516 () (InoxSet T!44090))

(assert (=> d!688855 (= (content!3754 (Cons!27694 (h!33095 l!2797) Nil!27694)) e!1490516)))

(declare-fun b!2326328 () Bool)

(assert (=> b!2326328 (= e!1490516 ((as const (Array T!44090 Bool)) false))))

(declare-fun b!2326329 () Bool)

(assert (=> b!2326329 (= e!1490516 ((_ map or) (store ((as const (Array T!44090 Bool)) false) (h!33095 (Cons!27694 (h!33095 l!2797) Nil!27694)) true) (content!3754 (t!207494 (Cons!27694 (h!33095 l!2797) Nil!27694)))))))

(assert (= (and d!688855 c!369417) b!2326328))

(assert (= (and d!688855 (not c!369417)) b!2326329))

(declare-fun m!2757459 () Bool)

(assert (=> b!2326329 m!2757459))

(assert (=> b!2326329 m!2757331))

(assert (=> d!688769 d!688855))

(assert (=> d!688769 d!688835))

(declare-fun b!2326330 () Bool)

(declare-fun e!1490517 () Bool)

(declare-fun tp!737168 () Bool)

(assert (=> b!2326330 (= e!1490517 (and tp_is_empty!10877 tp!737168))))

(assert (=> b!2326137 (= tp!737167 e!1490517)))

(assert (= (and b!2326137 ((_ is Cons!27694) (t!207494 (t!207494 l!2797)))) b!2326330))

(check-sat (not b!2326220) (not b!2326231) (not b!2326299) (not d!688823) (not b!2326218) (not bm!138937) (not b!2326260) (not b!2326295) (not b!2326156) (not b!2326195) (not b!2326198) (not b!2326297) (not b!2326317) (not b!2326293) (not bm!138940) (not b!2326155) (not b!2326247) (not b!2326320) (not b!2326244) (not b!2326216) (not b!2326308) (not d!688811) tp_is_empty!10877 (not d!688807) (not b!2326257) (not b!2326202) (not b!2326305) (not d!688801) (not b!2326309) (not b!2326327) (not d!688805) (not d!688799) (not b!2326213) (not d!688819) (not b!2326254) (not d!688843) (not b!2326153) (not b!2326201) (not b!2326230) (not b!2326246) (not bm!138934) (not d!688821) (not b!2326307) (not b!2326157) (not d!688845) (not b!2326212) (not b!2326262) (not b!2326248) (not b!2326330) (not b!2326329))
(check-sat)
