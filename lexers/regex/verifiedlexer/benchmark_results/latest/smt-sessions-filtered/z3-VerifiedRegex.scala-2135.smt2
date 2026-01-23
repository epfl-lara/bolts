; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107284 () Bool)

(assert start!107284)

(declare-fun c!201036 () Bool)

(declare-fun lt!411791 () Int)

(declare-fun until!61 () Int)

(declare-fun bm!84074 () Bool)

(declare-datatypes ((T!22104 0))(
  ( (T!22105 (val!3934 Int)) )
))
(declare-datatypes ((List!12113 0))(
  ( (Nil!12089) (Cons!12089 (h!17490 T!22104) (t!112529 List!12113)) )
))
(declare-fun lt!411788 () List!12113)

(declare-fun call!84079 () List!12113)

(declare-fun slice!505 (List!12113 Int Int) List!12113)

(assert (=> bm!84074 (= call!84079 (slice!505 lt!411788 0 (ite c!201036 (- until!61 1) lt!411791)))))

(declare-fun b!1204401 () Bool)

(declare-fun e!772730 () Bool)

(declare-fun lt!411792 () List!12113)

(declare-fun e!772727 () List!12113)

(assert (=> b!1204401 (= e!772730 (= lt!411792 e!772727))))

(assert (=> b!1204401 (= c!201036 (<= (- until!61 1) lt!411791))))

(declare-fun b!1204402 () Bool)

(declare-fun e!772731 () Bool)

(declare-fun lt!411789 () Int)

(declare-fun lt!411785 () Int)

(assert (=> b!1204402 (= e!772731 (and (<= 0 lt!411789) (<= lt!411789 lt!411785)))))

(declare-fun lt!411783 () Int)

(assert (=> b!1204402 (= lt!411789 (- until!61 lt!411783))))

(declare-fun l!2744 () List!12113)

(declare-fun from!613 () Int)

(declare-fun lt!411790 () List!12113)

(assert (=> b!1204402 (= lt!411790 (slice!505 l!2744 from!613 lt!411783))))

(declare-fun res!542497 () Bool)

(declare-fun e!772728 () Bool)

(assert (=> start!107284 (=> (not res!542497) (not e!772728))))

(assert (=> start!107284 (= res!542497 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107284 e!772728))

(assert (=> start!107284 true))

(declare-fun e!772732 () Bool)

(assert (=> start!107284 e!772732))

(declare-fun e!772733 () Bool)

(assert (=> start!107284 e!772733))

(declare-fun b!1204403 () Bool)

(declare-fun call!84080 () List!12113)

(assert (=> b!1204403 (= e!772730 (= lt!411792 call!84080))))

(declare-fun b!1204404 () Bool)

(assert (=> b!1204404 (= e!772727 call!84079)))

(declare-fun b!1204405 () Bool)

(declare-fun tp_is_empty!6071 () Bool)

(declare-fun tp!341821 () Bool)

(assert (=> b!1204405 (= e!772732 (and tp_is_empty!6071 tp!341821))))

(declare-fun b!1204406 () Bool)

(declare-fun e!772734 () Bool)

(assert (=> b!1204406 (= e!772728 e!772734)))

(declare-fun res!542498 () Bool)

(assert (=> b!1204406 (=> (not res!542498) (not e!772734))))

(declare-fun r!2028 () List!12113)

(assert (=> b!1204406 (= res!542498 (and (<= until!61 (+ lt!411783 lt!411785)) (not (= l!2744 Nil!12089)) (not (= r!2028 Nil!12089)) (not (= until!61 0))))))

(declare-fun size!9629 (List!12113) Int)

(assert (=> b!1204406 (= lt!411785 (size!9629 r!2028))))

(assert (=> b!1204406 (= lt!411783 (size!9629 l!2744))))

(declare-fun bm!84075 () Bool)

(declare-fun c!201035 () Bool)

(assert (=> bm!84075 (= call!84080 (slice!505 r!2028 (ite c!201035 (- lt!411791) 0) (- (- until!61 1) lt!411791)))))

(declare-fun b!1204407 () Bool)

(declare-fun e!772729 () Bool)

(assert (=> b!1204407 (= e!772734 e!772729)))

(declare-fun res!542499 () Bool)

(assert (=> b!1204407 (=> (not res!542499) (not e!772729))))

(declare-fun lt!411786 () List!12113)

(declare-fun lt!411784 () List!12113)

(declare-fun tail!1716 (List!12113) List!12113)

(assert (=> b!1204407 (= res!542499 (= (tail!1716 lt!411786) lt!411784))))

(declare-fun ++!3113 (List!12113 List!12113) List!12113)

(assert (=> b!1204407 (= lt!411784 (++!3113 lt!411788 r!2028))))

(assert (=> b!1204407 (= lt!411788 (tail!1716 l!2744))))

(assert (=> b!1204407 (= lt!411786 (++!3113 l!2744 r!2028))))

(declare-fun b!1204408 () Bool)

(declare-fun e!772726 () Bool)

(assert (=> b!1204408 (= e!772729 e!772726)))

(declare-fun res!542501 () Bool)

(assert (=> b!1204408 (=> (not res!542501) (not e!772726))))

(assert (=> b!1204408 (= res!542501 (<= (- until!61 1) (+ lt!411791 lt!411785)))))

(assert (=> b!1204408 (= lt!411791 (size!9629 lt!411788))))

(declare-fun b!1204409 () Bool)

(declare-fun tp!341820 () Bool)

(assert (=> b!1204409 (= e!772733 (and tp_is_empty!6071 tp!341820))))

(declare-fun b!1204410 () Bool)

(declare-fun res!542500 () Bool)

(assert (=> b!1204410 (=> (not res!542500) (not e!772729))))

(assert (=> b!1204410 (= res!542500 (and (= from!613 0) (<= 0 (- until!61 1))))))

(declare-fun b!1204411 () Bool)

(assert (=> b!1204411 (= e!772727 (++!3113 call!84079 call!84080))))

(declare-fun b!1204412 () Bool)

(assert (=> b!1204412 (= e!772726 (not e!772731))))

(declare-fun res!542502 () Bool)

(assert (=> b!1204412 (=> res!542502 e!772731)))

(assert (=> b!1204412 (= res!542502 (or (<= lt!411783 from!613) (<= until!61 lt!411783)))))

(assert (=> b!1204412 e!772730))

(assert (=> b!1204412 (= c!201035 (<= lt!411791 0))))

(assert (=> b!1204412 (= lt!411792 (slice!505 lt!411784 0 (- until!61 1)))))

(declare-datatypes ((Unit!18488 0))(
  ( (Unit!18489) )
))
(declare-fun lt!411787 () Unit!18488)

(declare-fun sliceLemma!55 (List!12113 List!12113 Int Int) Unit!18488)

(assert (=> b!1204412 (= lt!411787 (sliceLemma!55 lt!411788 r!2028 0 (- until!61 1)))))

(assert (= (and start!107284 res!542497) b!1204406))

(assert (= (and b!1204406 res!542498) b!1204407))

(assert (= (and b!1204407 res!542499) b!1204410))

(assert (= (and b!1204410 res!542500) b!1204408))

(assert (= (and b!1204408 res!542501) b!1204412))

(assert (= (and b!1204412 c!201035) b!1204403))

(assert (= (and b!1204412 (not c!201035)) b!1204401))

(assert (= (and b!1204401 c!201036) b!1204404))

(assert (= (and b!1204401 (not c!201036)) b!1204411))

(assert (= (or b!1204404 b!1204411) bm!84074))

(assert (= (or b!1204403 b!1204411) bm!84075))

(assert (= (and b!1204412 (not res!542502)) b!1204402))

(get-info :version)

(assert (= (and start!107284 ((_ is Cons!12089) l!2744)) b!1204405))

(assert (= (and start!107284 ((_ is Cons!12089) r!2028)) b!1204409))

(declare-fun m!1379827 () Bool)

(assert (=> b!1204411 m!1379827))

(declare-fun m!1379829 () Bool)

(assert (=> b!1204407 m!1379829))

(declare-fun m!1379831 () Bool)

(assert (=> b!1204407 m!1379831))

(declare-fun m!1379833 () Bool)

(assert (=> b!1204407 m!1379833))

(declare-fun m!1379835 () Bool)

(assert (=> b!1204407 m!1379835))

(declare-fun m!1379837 () Bool)

(assert (=> b!1204406 m!1379837))

(declare-fun m!1379839 () Bool)

(assert (=> b!1204406 m!1379839))

(declare-fun m!1379841 () Bool)

(assert (=> b!1204408 m!1379841))

(declare-fun m!1379843 () Bool)

(assert (=> bm!84075 m!1379843))

(declare-fun m!1379845 () Bool)

(assert (=> bm!84074 m!1379845))

(declare-fun m!1379847 () Bool)

(assert (=> b!1204412 m!1379847))

(declare-fun m!1379849 () Bool)

(assert (=> b!1204412 m!1379849))

(declare-fun m!1379851 () Bool)

(assert (=> b!1204402 m!1379851))

(check-sat (not bm!84074) (not b!1204409) (not b!1204411) (not b!1204408) (not b!1204407) tp_is_empty!6071 (not bm!84075) (not b!1204402) (not b!1204412) (not b!1204406) (not b!1204405))
(check-sat)
