; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107320 () Bool)

(assert start!107320)

(declare-fun b!1204730 () Bool)

(declare-fun e!772932 () Bool)

(declare-fun e!772929 () Bool)

(assert (=> b!1204730 (= e!772932 e!772929)))

(declare-fun res!542640 () Bool)

(assert (=> b!1204730 (=> (not res!542640) (not e!772929))))

(declare-fun lt!411927 () Int)

(declare-fun until!61 () Int)

(declare-fun lt!411922 () Int)

(assert (=> b!1204730 (= res!542640 (<= (- until!61 1) (+ lt!411927 lt!411922)))))

(declare-datatypes ((T!22160 0))(
  ( (T!22161 (val!3942 Int)) )
))
(declare-datatypes ((List!12121 0))(
  ( (Nil!12097) (Cons!12097 (h!17498 T!22160) (t!112537 List!12121)) )
))
(declare-fun lt!411926 () List!12121)

(declare-fun size!9637 (List!12121) Int)

(assert (=> b!1204730 (= lt!411927 (size!9637 lt!411926))))

(declare-fun b!1204731 () Bool)

(declare-fun e!772933 () Bool)

(declare-fun e!772931 () Bool)

(assert (=> b!1204731 (= e!772933 e!772931)))

(declare-fun res!542642 () Bool)

(assert (=> b!1204731 (=> (not res!542642) (not e!772931))))

(declare-fun l!2744 () List!12121)

(declare-fun lt!411924 () Int)

(declare-fun r!2028 () List!12121)

(assert (=> b!1204731 (= res!542642 (and (<= until!61 (+ lt!411924 lt!411922)) (not (= l!2744 Nil!12097)) (not (= r!2028 Nil!12097)) (not (= until!61 0))))))

(assert (=> b!1204731 (= lt!411922 (size!9637 r!2028))))

(assert (=> b!1204731 (= lt!411924 (size!9637 l!2744))))

(declare-fun b!1204732 () Bool)

(declare-fun res!542639 () Bool)

(assert (=> b!1204732 (=> (not res!542639) (not e!772932))))

(declare-fun from!613 () Int)

(assert (=> b!1204732 (= res!542639 (and (not (= from!613 0)) (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(declare-fun b!1204733 () Bool)

(declare-fun e!772934 () List!12121)

(declare-fun call!84122 () List!12121)

(declare-fun call!84121 () List!12121)

(declare-fun ++!3121 (List!12121 List!12121) List!12121)

(assert (=> b!1204733 (= e!772934 (++!3121 call!84122 call!84121))))

(declare-fun c!201099 () Bool)

(declare-fun bm!84116 () Bool)

(declare-fun slice!509 (List!12121 Int Int) List!12121)

(assert (=> bm!84116 (= call!84122 (slice!509 lt!411926 (- from!613 1) (ite c!201099 (- until!61 1) lt!411927)))))

(declare-fun b!1204734 () Bool)

(declare-fun e!772936 () Bool)

(declare-fun tp_is_empty!6087 () Bool)

(declare-fun tp!341876 () Bool)

(assert (=> b!1204734 (= e!772936 (and tp_is_empty!6087 tp!341876))))

(declare-fun b!1204735 () Bool)

(assert (=> b!1204735 (= e!772934 call!84122)))

(declare-fun b!1204736 () Bool)

(declare-fun e!772930 () Bool)

(declare-fun lt!411923 () List!12121)

(assert (=> b!1204736 (= e!772930 (= lt!411923 call!84121))))

(declare-fun res!542641 () Bool)

(assert (=> start!107320 (=> (not res!542641) (not e!772933))))

(assert (=> start!107320 (= res!542641 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107320 e!772933))

(assert (=> start!107320 true))

(assert (=> start!107320 e!772936))

(declare-fun e!772935 () Bool)

(assert (=> start!107320 e!772935))

(declare-fun c!201100 () Bool)

(declare-fun bm!84117 () Bool)

(assert (=> bm!84117 (= call!84121 (slice!509 r!2028 (ite c!201100 (- (- from!613 1) lt!411927) 0) (- (- until!61 1) lt!411927)))))

(declare-fun b!1204737 () Bool)

(assert (=> b!1204737 (= e!772930 (= lt!411923 e!772934))))

(assert (=> b!1204737 (= c!201099 (<= (- until!61 1) lt!411927))))

(declare-fun b!1204738 () Bool)

(assert (=> b!1204738 (= e!772931 e!772932)))

(declare-fun res!542638 () Bool)

(assert (=> b!1204738 (=> (not res!542638) (not e!772932))))

(declare-fun lt!411921 () List!12121)

(declare-fun lt!411928 () List!12121)

(declare-fun tail!1724 (List!12121) List!12121)

(assert (=> b!1204738 (= res!542638 (= (tail!1724 lt!411921) lt!411928))))

(assert (=> b!1204738 (= lt!411928 (++!3121 lt!411926 r!2028))))

(assert (=> b!1204738 (= lt!411926 (tail!1724 l!2744))))

(assert (=> b!1204738 (= lt!411921 (++!3121 l!2744 r!2028))))

(declare-fun b!1204739 () Bool)

(declare-fun tp!341877 () Bool)

(assert (=> b!1204739 (= e!772935 (and tp_is_empty!6087 tp!341877))))

(declare-fun b!1204740 () Bool)

(assert (=> b!1204740 (= e!772929 (not (or (> lt!411924 from!613) (let ((bdg!42953 (- from!613 lt!411924))) (let ((bdg!42954 (- until!61 lt!411924))) (and (<= 0 bdg!42953) (<= bdg!42953 bdg!42954) (<= bdg!42954 lt!411922)))))))))

(assert (=> b!1204740 e!772930))

(assert (=> b!1204740 (= c!201100 (<= lt!411927 (- from!613 1)))))

(assert (=> b!1204740 (= lt!411923 (slice!509 lt!411928 (- from!613 1) (- until!61 1)))))

(declare-datatypes ((Unit!18496 0))(
  ( (Unit!18497) )
))
(declare-fun lt!411925 () Unit!18496)

(declare-fun sliceLemma!59 (List!12121 List!12121 Int Int) Unit!18496)

(assert (=> b!1204740 (= lt!411925 (sliceLemma!59 lt!411926 r!2028 (- from!613 1) (- until!61 1)))))

(assert (= (and start!107320 res!542641) b!1204731))

(assert (= (and b!1204731 res!542642) b!1204738))

(assert (= (and b!1204738 res!542638) b!1204732))

(assert (= (and b!1204732 res!542639) b!1204730))

(assert (= (and b!1204730 res!542640) b!1204740))

(assert (= (and b!1204740 c!201100) b!1204736))

(assert (= (and b!1204740 (not c!201100)) b!1204737))

(assert (= (and b!1204737 c!201099) b!1204735))

(assert (= (and b!1204737 (not c!201099)) b!1204733))

(assert (= (or b!1204735 b!1204733) bm!84116))

(assert (= (or b!1204736 b!1204733) bm!84117))

(get-info :version)

(assert (= (and start!107320 ((_ is Cons!12097) l!2744)) b!1204734))

(assert (= (and start!107320 ((_ is Cons!12097) r!2028)) b!1204739))

(declare-fun m!1380105 () Bool)

(assert (=> b!1204731 m!1380105))

(declare-fun m!1380107 () Bool)

(assert (=> b!1204731 m!1380107))

(declare-fun m!1380109 () Bool)

(assert (=> bm!84116 m!1380109))

(declare-fun m!1380111 () Bool)

(assert (=> bm!84117 m!1380111))

(declare-fun m!1380113 () Bool)

(assert (=> b!1204733 m!1380113))

(declare-fun m!1380115 () Bool)

(assert (=> b!1204730 m!1380115))

(declare-fun m!1380117 () Bool)

(assert (=> b!1204740 m!1380117))

(declare-fun m!1380119 () Bool)

(assert (=> b!1204740 m!1380119))

(declare-fun m!1380121 () Bool)

(assert (=> b!1204738 m!1380121))

(declare-fun m!1380123 () Bool)

(assert (=> b!1204738 m!1380123))

(declare-fun m!1380125 () Bool)

(assert (=> b!1204738 m!1380125))

(declare-fun m!1380127 () Bool)

(assert (=> b!1204738 m!1380127))

(check-sat (not b!1204731) (not b!1204730) (not b!1204740) (not bm!84116) (not b!1204734) tp_is_empty!6087 (not b!1204739) (not b!1204738) (not b!1204733) (not bm!84117))
(check-sat)
