; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107276 () Bool)

(assert start!107276)

(declare-fun b!1204264 () Bool)

(declare-fun e!772625 () Bool)

(declare-datatypes ((T!22076 0))(
  ( (T!22077 (val!3930 Int)) )
))
(declare-datatypes ((List!12109 0))(
  ( (Nil!12085) (Cons!12085 (h!17486 T!22076) (t!112525 List!12109)) )
))
(declare-fun lt!411683 () List!12109)

(declare-fun e!772628 () List!12109)

(assert (=> b!1204264 (= e!772625 (= lt!411683 e!772628))))

(declare-fun c!201012 () Bool)

(declare-fun until!61 () Int)

(declare-fun lt!411680 () Int)

(assert (=> b!1204264 (= c!201012 (<= (- until!61 1) lt!411680))))

(declare-fun res!542432 () Bool)

(declare-fun e!772627 () Bool)

(assert (=> start!107276 (=> (not res!542432) (not e!772627))))

(declare-fun from!613 () Int)

(assert (=> start!107276 (= res!542432 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107276 e!772627))

(assert (=> start!107276 true))

(declare-fun e!772630 () Bool)

(assert (=> start!107276 e!772630))

(declare-fun e!772632 () Bool)

(assert (=> start!107276 e!772632))

(declare-fun bm!84050 () Bool)

(declare-fun call!84056 () List!12109)

(declare-fun call!84055 () List!12109)

(assert (=> bm!84050 (= call!84056 call!84055)))

(declare-fun b!1204265 () Bool)

(declare-fun tp_is_empty!6063 () Bool)

(declare-fun tp!341797 () Bool)

(assert (=> b!1204265 (= e!772632 (and tp_is_empty!6063 tp!341797))))

(declare-fun b!1204266 () Bool)

(declare-fun e!772631 () Bool)

(assert (=> b!1204266 (= e!772631 (not true))))

(assert (=> b!1204266 e!772625))

(declare-fun c!201011 () Bool)

(assert (=> b!1204266 (= c!201011 (<= lt!411680 0))))

(declare-fun lt!411679 () List!12109)

(declare-fun slice!501 (List!12109 Int Int) List!12109)

(assert (=> b!1204266 (= lt!411683 (slice!501 lt!411679 0 (- until!61 1)))))

(declare-fun r!2028 () List!12109)

(declare-datatypes ((Unit!18480 0))(
  ( (Unit!18481) )
))
(declare-fun lt!411682 () Unit!18480)

(declare-fun lt!411684 () List!12109)

(declare-fun sliceLemma!51 (List!12109 List!12109 Int Int) Unit!18480)

(assert (=> b!1204266 (= lt!411682 (sliceLemma!51 lt!411684 r!2028 0 (- until!61 1)))))

(declare-fun bm!84051 () Bool)

(assert (=> bm!84051 (= call!84055 (slice!501 (ite c!201011 r!2028 lt!411684) (ite c!201011 (- lt!411680) 0) (ite c!201011 (- (- until!61 1) lt!411680) (ite c!201012 (- until!61 1) lt!411680))))))

(declare-fun b!1204267 () Bool)

(declare-fun e!772626 () Bool)

(assert (=> b!1204267 (= e!772627 e!772626)))

(declare-fun res!542436 () Bool)

(assert (=> b!1204267 (=> (not res!542436) (not e!772626))))

(declare-fun l!2744 () List!12109)

(declare-fun lt!411681 () Int)

(declare-fun lt!411677 () Int)

(assert (=> b!1204267 (= res!542436 (and (<= until!61 (+ lt!411677 lt!411681)) (not (= l!2744 Nil!12085)) (not (= r!2028 Nil!12085)) (not (= until!61 0))))))

(declare-fun size!9625 (List!12109) Int)

(assert (=> b!1204267 (= lt!411681 (size!9625 r!2028))))

(assert (=> b!1204267 (= lt!411677 (size!9625 l!2744))))

(declare-fun b!1204268 () Bool)

(declare-fun e!772629 () Bool)

(assert (=> b!1204268 (= e!772629 e!772631)))

(declare-fun res!542434 () Bool)

(assert (=> b!1204268 (=> (not res!542434) (not e!772631))))

(assert (=> b!1204268 (= res!542434 (<= (- until!61 1) (+ lt!411680 lt!411681)))))

(assert (=> b!1204268 (= lt!411680 (size!9625 lt!411684))))

(declare-fun b!1204269 () Bool)

(assert (=> b!1204269 (= e!772625 (= lt!411683 call!84055))))

(declare-fun b!1204270 () Bool)

(declare-fun ++!3109 (List!12109 List!12109) List!12109)

(assert (=> b!1204270 (= e!772628 (++!3109 call!84056 (slice!501 r!2028 0 (- (- until!61 1) lt!411680))))))

(declare-fun b!1204271 () Bool)

(declare-fun res!542433 () Bool)

(assert (=> b!1204271 (=> (not res!542433) (not e!772629))))

(assert (=> b!1204271 (= res!542433 (and (= from!613 0) (<= 0 (- until!61 1))))))

(declare-fun b!1204272 () Bool)

(assert (=> b!1204272 (= e!772628 call!84056)))

(declare-fun b!1204273 () Bool)

(declare-fun tp!341796 () Bool)

(assert (=> b!1204273 (= e!772630 (and tp_is_empty!6063 tp!341796))))

(declare-fun b!1204274 () Bool)

(assert (=> b!1204274 (= e!772626 e!772629)))

(declare-fun res!542435 () Bool)

(assert (=> b!1204274 (=> (not res!542435) (not e!772629))))

(declare-fun lt!411678 () List!12109)

(declare-fun tail!1712 (List!12109) List!12109)

(assert (=> b!1204274 (= res!542435 (= (tail!1712 lt!411678) lt!411679))))

(assert (=> b!1204274 (= lt!411679 (++!3109 lt!411684 r!2028))))

(assert (=> b!1204274 (= lt!411684 (tail!1712 l!2744))))

(assert (=> b!1204274 (= lt!411678 (++!3109 l!2744 r!2028))))

(assert (= (and start!107276 res!542432) b!1204267))

(assert (= (and b!1204267 res!542436) b!1204274))

(assert (= (and b!1204274 res!542435) b!1204271))

(assert (= (and b!1204271 res!542433) b!1204268))

(assert (= (and b!1204268 res!542434) b!1204266))

(assert (= (and b!1204266 c!201011) b!1204269))

(assert (= (and b!1204266 (not c!201011)) b!1204264))

(assert (= (and b!1204264 c!201012) b!1204272))

(assert (= (and b!1204264 (not c!201012)) b!1204270))

(assert (= (or b!1204272 b!1204270) bm!84050))

(assert (= (or b!1204269 bm!84050) bm!84051))

(get-info :version)

(assert (= (and start!107276 ((_ is Cons!12085) l!2744)) b!1204273))

(assert (= (and start!107276 ((_ is Cons!12085) r!2028)) b!1204265))

(declare-fun m!1379729 () Bool)

(assert (=> b!1204267 m!1379729))

(declare-fun m!1379731 () Bool)

(assert (=> b!1204267 m!1379731))

(declare-fun m!1379733 () Bool)

(assert (=> b!1204274 m!1379733))

(declare-fun m!1379735 () Bool)

(assert (=> b!1204274 m!1379735))

(declare-fun m!1379737 () Bool)

(assert (=> b!1204274 m!1379737))

(declare-fun m!1379739 () Bool)

(assert (=> b!1204274 m!1379739))

(declare-fun m!1379741 () Bool)

(assert (=> b!1204270 m!1379741))

(assert (=> b!1204270 m!1379741))

(declare-fun m!1379743 () Bool)

(assert (=> b!1204270 m!1379743))

(declare-fun m!1379745 () Bool)

(assert (=> bm!84051 m!1379745))

(declare-fun m!1379747 () Bool)

(assert (=> b!1204268 m!1379747))

(declare-fun m!1379749 () Bool)

(assert (=> b!1204266 m!1379749))

(declare-fun m!1379751 () Bool)

(assert (=> b!1204266 m!1379751))

(check-sat (not b!1204274) (not b!1204270) tp_is_empty!6063 (not bm!84051) (not b!1204268) (not b!1204273) (not b!1204267) (not b!1204265) (not b!1204266))
(check-sat)
