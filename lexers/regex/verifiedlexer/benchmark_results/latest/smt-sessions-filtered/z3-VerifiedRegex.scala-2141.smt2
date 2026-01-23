; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107328 () Bool)

(assert start!107328)

(declare-fun b!1204862 () Bool)

(declare-datatypes ((T!22188 0))(
  ( (T!22189 (val!3946 Int)) )
))
(declare-datatypes ((List!12125 0))(
  ( (Nil!12101) (Cons!12101 (h!17502 T!22188) (t!112541 List!12125)) )
))
(declare-fun e!773025 () List!12125)

(declare-fun call!84145 () List!12125)

(declare-fun call!84146 () List!12125)

(declare-fun ++!3125 (List!12125 List!12125) List!12125)

(assert (=> b!1204862 (= e!773025 (++!3125 call!84145 call!84146))))

(declare-fun b!1204863 () Bool)

(declare-fun e!773028 () Bool)

(declare-fun lt!412022 () List!12125)

(assert (=> b!1204863 (= e!773028 (= lt!412022 call!84145))))

(declare-fun b!1204864 () Bool)

(declare-fun res!542702 () Bool)

(declare-fun e!773030 () Bool)

(assert (=> b!1204864 (=> (not res!542702) (not e!773030))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> b!1204864 (= res!542702 (and (not (= from!613 0)) (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(declare-fun r!2028 () List!12125)

(declare-fun c!201124 () Bool)

(declare-fun bm!84140 () Bool)

(declare-fun lt!412018 () List!12125)

(declare-fun lt!412019 () Int)

(declare-fun slice!513 (List!12125 Int Int) List!12125)

(assert (=> bm!84140 (= call!84145 (slice!513 (ite c!201124 r!2028 lt!412018) (ite c!201124 (- (- from!613 1) lt!412019) (- from!613 1)) (ite c!201124 (- (- until!61 1) lt!412019) lt!412019)))))

(declare-fun res!542698 () Bool)

(declare-fun e!773032 () Bool)

(assert (=> start!107328 (=> (not res!542698) (not e!773032))))

(assert (=> start!107328 (= res!542698 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107328 e!773032))

(assert (=> start!107328 true))

(declare-fun e!773027 () Bool)

(assert (=> start!107328 e!773027))

(declare-fun e!773026 () Bool)

(assert (=> start!107328 e!773026))

(declare-fun b!1204865 () Bool)

(assert (=> b!1204865 (= e!773025 call!84146)))

(declare-fun b!1204866 () Bool)

(declare-fun e!773031 () Bool)

(assert (=> b!1204866 (= e!773031 e!773030)))

(declare-fun res!542701 () Bool)

(assert (=> b!1204866 (=> (not res!542701) (not e!773030))))

(declare-fun lt!412021 () List!12125)

(declare-fun lt!412020 () List!12125)

(declare-fun tail!1728 (List!12125) List!12125)

(assert (=> b!1204866 (= res!542701 (= (tail!1728 lt!412021) lt!412020))))

(assert (=> b!1204866 (= lt!412020 (++!3125 lt!412018 r!2028))))

(declare-fun l!2744 () List!12125)

(assert (=> b!1204866 (= lt!412018 (tail!1728 l!2744))))

(assert (=> b!1204866 (= lt!412021 (++!3125 l!2744 r!2028))))

(declare-fun bm!84141 () Bool)

(declare-fun c!201123 () Bool)

(assert (=> bm!84141 (= call!84146 (slice!513 (ite c!201123 lt!412018 r!2028) (ite c!201123 (- from!613 1) 0) (ite c!201123 (- until!61 1) (- (- until!61 1) lt!412019))))))

(declare-fun b!1204867 () Bool)

(declare-fun tp_is_empty!6095 () Bool)

(declare-fun tp!341901 () Bool)

(assert (=> b!1204867 (= e!773027 (and tp_is_empty!6095 tp!341901))))

(declare-fun lt!412023 () Int)

(declare-fun b!1204868 () Bool)

(declare-fun e!773029 () Bool)

(assert (=> b!1204868 (= e!773029 (not (or (<= lt!412023 from!613) (<= until!61 lt!412023) (<= from!613 lt!412023))))))

(assert (=> b!1204868 e!773028))

(assert (=> b!1204868 (= c!201124 (<= lt!412019 (- from!613 1)))))

(assert (=> b!1204868 (= lt!412022 (slice!513 lt!412020 (- from!613 1) (- until!61 1)))))

(declare-datatypes ((Unit!18504 0))(
  ( (Unit!18505) )
))
(declare-fun lt!412024 () Unit!18504)

(declare-fun sliceLemma!63 (List!12125 List!12125 Int Int) Unit!18504)

(assert (=> b!1204868 (= lt!412024 (sliceLemma!63 lt!412018 r!2028 (- from!613 1) (- until!61 1)))))

(declare-fun b!1204869 () Bool)

(declare-fun tp!341900 () Bool)

(assert (=> b!1204869 (= e!773026 (and tp_is_empty!6095 tp!341900))))

(declare-fun b!1204870 () Bool)

(assert (=> b!1204870 (= e!773028 (= lt!412022 e!773025))))

(assert (=> b!1204870 (= c!201123 (<= (- until!61 1) lt!412019))))

(declare-fun b!1204871 () Bool)

(assert (=> b!1204871 (= e!773030 e!773029)))

(declare-fun res!542700 () Bool)

(assert (=> b!1204871 (=> (not res!542700) (not e!773029))))

(declare-fun lt!412017 () Int)

(assert (=> b!1204871 (= res!542700 (<= (- until!61 1) (+ lt!412019 lt!412017)))))

(declare-fun size!9641 (List!12125) Int)

(assert (=> b!1204871 (= lt!412019 (size!9641 lt!412018))))

(declare-fun b!1204872 () Bool)

(assert (=> b!1204872 (= e!773032 e!773031)))

(declare-fun res!542699 () Bool)

(assert (=> b!1204872 (=> (not res!542699) (not e!773031))))

(assert (=> b!1204872 (= res!542699 (and (<= until!61 (+ lt!412023 lt!412017)) (not (= l!2744 Nil!12101)) (not (= r!2028 Nil!12101)) (not (= until!61 0))))))

(assert (=> b!1204872 (= lt!412017 (size!9641 r!2028))))

(assert (=> b!1204872 (= lt!412023 (size!9641 l!2744))))

(assert (= (and start!107328 res!542698) b!1204872))

(assert (= (and b!1204872 res!542699) b!1204866))

(assert (= (and b!1204866 res!542701) b!1204864))

(assert (= (and b!1204864 res!542702) b!1204871))

(assert (= (and b!1204871 res!542700) b!1204868))

(assert (= (and b!1204868 c!201124) b!1204863))

(assert (= (and b!1204868 (not c!201124)) b!1204870))

(assert (= (and b!1204870 c!201123) b!1204865))

(assert (= (and b!1204870 (not c!201123)) b!1204862))

(assert (= (or b!1204865 b!1204862) bm!84141))

(assert (= (or b!1204863 b!1204862) bm!84140))

(get-info :version)

(assert (= (and start!107328 ((_ is Cons!12101) l!2744)) b!1204867))

(assert (= (and start!107328 ((_ is Cons!12101) r!2028)) b!1204869))

(declare-fun m!1380201 () Bool)

(assert (=> b!1204872 m!1380201))

(declare-fun m!1380203 () Bool)

(assert (=> b!1204872 m!1380203))

(declare-fun m!1380205 () Bool)

(assert (=> b!1204871 m!1380205))

(declare-fun m!1380207 () Bool)

(assert (=> bm!84141 m!1380207))

(declare-fun m!1380209 () Bool)

(assert (=> b!1204868 m!1380209))

(declare-fun m!1380211 () Bool)

(assert (=> b!1204868 m!1380211))

(declare-fun m!1380213 () Bool)

(assert (=> b!1204862 m!1380213))

(declare-fun m!1380215 () Bool)

(assert (=> b!1204866 m!1380215))

(declare-fun m!1380217 () Bool)

(assert (=> b!1204866 m!1380217))

(declare-fun m!1380219 () Bool)

(assert (=> b!1204866 m!1380219))

(declare-fun m!1380221 () Bool)

(assert (=> b!1204866 m!1380221))

(declare-fun m!1380223 () Bool)

(assert (=> bm!84140 m!1380223))

(check-sat (not b!1204867) (not bm!84141) (not b!1204866) tp_is_empty!6095 (not b!1204869) (not b!1204868) (not b!1204862) (not b!1204872) (not bm!84140) (not b!1204871))
(check-sat)
