; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107280 () Bool)

(assert start!107280)

(declare-fun b!1204330 () Bool)

(declare-datatypes ((T!22090 0))(
  ( (T!22091 (val!3932 Int)) )
))
(declare-datatypes ((List!12111 0))(
  ( (Nil!12087) (Cons!12087 (h!17488 T!22090) (t!112527 List!12111)) )
))
(declare-fun e!772677 () List!12111)

(declare-fun call!84067 () List!12111)

(assert (=> b!1204330 (= e!772677 call!84067)))

(declare-fun b!1204331 () Bool)

(declare-fun e!772675 () Bool)

(declare-fun e!772673 () Bool)

(assert (=> b!1204331 (= e!772675 e!772673)))

(declare-fun res!542463 () Bool)

(assert (=> b!1204331 (=> (not res!542463) (not e!772673))))

(declare-fun until!61 () Int)

(declare-fun lt!411730 () Int)

(declare-fun lt!411729 () Int)

(assert (=> b!1204331 (= res!542463 (<= (- until!61 1) (+ lt!411729 lt!411730)))))

(declare-fun lt!411731 () List!12111)

(declare-fun size!9627 (List!12111) Int)

(assert (=> b!1204331 (= lt!411729 (size!9627 lt!411731))))

(declare-fun bm!84062 () Bool)

(declare-fun call!84068 () List!12111)

(assert (=> bm!84062 (= call!84067 call!84068)))

(declare-fun res!542462 () Bool)

(declare-fun e!772678 () Bool)

(assert (=> start!107280 (=> (not res!542462) (not e!772678))))

(declare-fun from!613 () Int)

(assert (=> start!107280 (= res!542462 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107280 e!772678))

(assert (=> start!107280 true))

(declare-fun e!772676 () Bool)

(assert (=> start!107280 e!772676))

(declare-fun e!772674 () Bool)

(assert (=> start!107280 e!772674))

(declare-fun b!1204332 () Bool)

(declare-fun e!772679 () Bool)

(assert (=> b!1204332 (= e!772678 e!772679)))

(declare-fun res!542465 () Bool)

(assert (=> b!1204332 (=> (not res!542465) (not e!772679))))

(declare-fun l!2744 () List!12111)

(declare-fun r!2028 () List!12111)

(declare-fun lt!411726 () Int)

(assert (=> b!1204332 (= res!542465 (and (<= until!61 (+ lt!411726 lt!411730)) (not (= l!2744 Nil!12087)) (not (= r!2028 Nil!12087)) (not (= until!61 0))))))

(assert (=> b!1204332 (= lt!411730 (size!9627 r!2028))))

(assert (=> b!1204332 (= lt!411726 (size!9627 l!2744))))

(declare-fun b!1204333 () Bool)

(declare-fun ++!3111 (List!12111 List!12111) List!12111)

(declare-fun slice!503 (List!12111 Int Int) List!12111)

(assert (=> b!1204333 (= e!772677 (++!3111 (slice!503 lt!411731 0 lt!411729) call!84067))))

(declare-fun c!201023 () Bool)

(declare-fun bm!84063 () Bool)

(declare-fun c!201024 () Bool)

(assert (=> bm!84063 (= call!84068 (slice!503 (ite c!201024 r!2028 (ite c!201023 lt!411731 r!2028)) (ite c!201024 (- lt!411729) 0) (ite c!201024 (- (- until!61 1) lt!411729) (ite c!201023 (- until!61 1) (- (- until!61 1) lt!411729)))))))

(declare-fun b!1204334 () Bool)

(declare-fun e!772680 () Bool)

(declare-fun lt!411727 () List!12111)

(assert (=> b!1204334 (= e!772680 (= lt!411727 call!84068))))

(declare-fun b!1204335 () Bool)

(declare-fun tp_is_empty!6067 () Bool)

(declare-fun tp!341808 () Bool)

(assert (=> b!1204335 (= e!772676 (and tp_is_empty!6067 tp!341808))))

(declare-fun b!1204336 () Bool)

(assert (=> b!1204336 (= e!772673 (not (or (<= lt!411726 from!613) (<= until!61 lt!411726) (<= from!613 lt!411726))))))

(assert (=> b!1204336 e!772680))

(assert (=> b!1204336 (= c!201024 (<= lt!411729 0))))

(declare-fun lt!411732 () List!12111)

(assert (=> b!1204336 (= lt!411727 (slice!503 lt!411732 0 (- until!61 1)))))

(declare-datatypes ((Unit!18484 0))(
  ( (Unit!18485) )
))
(declare-fun lt!411725 () Unit!18484)

(declare-fun sliceLemma!53 (List!12111 List!12111 Int Int) Unit!18484)

(assert (=> b!1204336 (= lt!411725 (sliceLemma!53 lt!411731 r!2028 0 (- until!61 1)))))

(declare-fun b!1204337 () Bool)

(assert (=> b!1204337 (= e!772680 (= lt!411727 e!772677))))

(assert (=> b!1204337 (= c!201023 (<= (- until!61 1) lt!411729))))

(declare-fun b!1204338 () Bool)

(declare-fun tp!341809 () Bool)

(assert (=> b!1204338 (= e!772674 (and tp_is_empty!6067 tp!341809))))

(declare-fun b!1204339 () Bool)

(assert (=> b!1204339 (= e!772679 e!772675)))

(declare-fun res!542464 () Bool)

(assert (=> b!1204339 (=> (not res!542464) (not e!772675))))

(declare-fun lt!411728 () List!12111)

(declare-fun tail!1714 (List!12111) List!12111)

(assert (=> b!1204339 (= res!542464 (= (tail!1714 lt!411728) lt!411732))))

(assert (=> b!1204339 (= lt!411732 (++!3111 lt!411731 r!2028))))

(assert (=> b!1204339 (= lt!411731 (tail!1714 l!2744))))

(assert (=> b!1204339 (= lt!411728 (++!3111 l!2744 r!2028))))

(declare-fun b!1204340 () Bool)

(declare-fun res!542466 () Bool)

(assert (=> b!1204340 (=> (not res!542466) (not e!772675))))

(assert (=> b!1204340 (= res!542466 (and (= from!613 0) (<= 0 (- until!61 1))))))

(assert (= (and start!107280 res!542462) b!1204332))

(assert (= (and b!1204332 res!542465) b!1204339))

(assert (= (and b!1204339 res!542464) b!1204340))

(assert (= (and b!1204340 res!542466) b!1204331))

(assert (= (and b!1204331 res!542463) b!1204336))

(assert (= (and b!1204336 c!201024) b!1204334))

(assert (= (and b!1204336 (not c!201024)) b!1204337))

(assert (= (and b!1204337 c!201023) b!1204330))

(assert (= (and b!1204337 (not c!201023)) b!1204333))

(assert (= (or b!1204330 b!1204333) bm!84062))

(assert (= (or b!1204334 bm!84062) bm!84063))

(get-info :version)

(assert (= (and start!107280 ((_ is Cons!12087) l!2744)) b!1204335))

(assert (= (and start!107280 ((_ is Cons!12087) r!2028)) b!1204338))

(declare-fun m!1379777 () Bool)

(assert (=> b!1204332 m!1379777))

(declare-fun m!1379779 () Bool)

(assert (=> b!1204332 m!1379779))

(declare-fun m!1379781 () Bool)

(assert (=> b!1204336 m!1379781))

(declare-fun m!1379783 () Bool)

(assert (=> b!1204336 m!1379783))

(declare-fun m!1379785 () Bool)

(assert (=> bm!84063 m!1379785))

(declare-fun m!1379787 () Bool)

(assert (=> b!1204339 m!1379787))

(declare-fun m!1379789 () Bool)

(assert (=> b!1204339 m!1379789))

(declare-fun m!1379791 () Bool)

(assert (=> b!1204339 m!1379791))

(declare-fun m!1379793 () Bool)

(assert (=> b!1204339 m!1379793))

(declare-fun m!1379795 () Bool)

(assert (=> b!1204333 m!1379795))

(assert (=> b!1204333 m!1379795))

(declare-fun m!1379797 () Bool)

(assert (=> b!1204333 m!1379797))

(declare-fun m!1379799 () Bool)

(assert (=> b!1204331 m!1379799))

(check-sat (not b!1204338) (not b!1204339) (not b!1204333) (not b!1204332) (not b!1204331) tp_is_empty!6067 (not bm!84063) (not b!1204335) (not b!1204336))
(check-sat)
