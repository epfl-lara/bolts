; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107332 () Bool)

(assert start!107332)

(declare-fun b!1204933 () Bool)

(declare-fun e!773078 () Bool)

(declare-fun tp_is_empty!6099 () Bool)

(declare-fun tp!341913 () Bool)

(assert (=> b!1204933 (= e!773078 (and tp_is_empty!6099 tp!341913))))

(declare-fun b!1204934 () Bool)

(declare-fun e!773084 () Bool)

(declare-fun e!773083 () Bool)

(assert (=> b!1204934 (= e!773084 (not e!773083))))

(declare-fun res!542734 () Bool)

(assert (=> b!1204934 (=> res!542734 e!773083)))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(declare-fun lt!412080 () Int)

(assert (=> b!1204934 (= res!542734 (or (<= lt!412080 from!613) (<= until!61 lt!412080)))))

(declare-fun e!773086 () Bool)

(assert (=> b!1204934 e!773086))

(declare-fun c!201135 () Bool)

(declare-fun lt!412083 () Int)

(assert (=> b!1204934 (= c!201135 (<= lt!412083 (- from!613 1)))))

(declare-datatypes ((T!22202 0))(
  ( (T!22203 (val!3948 Int)) )
))
(declare-datatypes ((List!12127 0))(
  ( (Nil!12103) (Cons!12103 (h!17504 T!22202) (t!112543 List!12127)) )
))
(declare-fun lt!412081 () List!12127)

(declare-fun lt!412076 () List!12127)

(declare-fun slice!515 (List!12127 Int Int) List!12127)

(assert (=> b!1204934 (= lt!412076 (slice!515 lt!412081 (- from!613 1) (- until!61 1)))))

(declare-fun r!2028 () List!12127)

(declare-fun lt!412078 () List!12127)

(declare-datatypes ((Unit!18508 0))(
  ( (Unit!18509) )
))
(declare-fun lt!412077 () Unit!18508)

(declare-fun sliceLemma!65 (List!12127 List!12127 Int Int) Unit!18508)

(assert (=> b!1204934 (= lt!412077 (sliceLemma!65 lt!412078 r!2028 (- from!613 1) (- until!61 1)))))

(declare-fun b!1204935 () Bool)

(declare-fun e!773082 () Bool)

(declare-fun e!773079 () Bool)

(assert (=> b!1204935 (= e!773082 e!773079)))

(declare-fun res!542736 () Bool)

(assert (=> b!1204935 (=> (not res!542736) (not e!773079))))

(declare-fun lt!412079 () List!12127)

(declare-fun tail!1730 (List!12127) List!12127)

(assert (=> b!1204935 (= res!542736 (= (tail!1730 lt!412079) lt!412081))))

(declare-fun ++!3127 (List!12127 List!12127) List!12127)

(assert (=> b!1204935 (= lt!412081 (++!3127 lt!412078 r!2028))))

(declare-fun l!2744 () List!12127)

(assert (=> b!1204935 (= lt!412078 (tail!1730 l!2744))))

(assert (=> b!1204935 (= lt!412079 (++!3127 l!2744 r!2028))))

(declare-fun b!1204936 () Bool)

(assert (=> b!1204936 (= e!773079 e!773084)))

(declare-fun res!542737 () Bool)

(assert (=> b!1204936 (=> (not res!542737) (not e!773084))))

(declare-fun lt!412075 () Int)

(assert (=> b!1204936 (= res!542737 (<= (- until!61 1) (+ lt!412083 lt!412075)))))

(declare-fun size!9643 (List!12127) Int)

(assert (=> b!1204936 (= lt!412083 (size!9643 lt!412078))))

(declare-fun b!1204937 () Bool)

(declare-fun e!773081 () List!12127)

(declare-fun call!84157 () List!12127)

(declare-fun call!84158 () List!12127)

(assert (=> b!1204937 (= e!773081 (++!3127 call!84157 call!84158))))

(declare-fun b!1204939 () Bool)

(declare-fun e!773080 () Bool)

(declare-fun tp!341912 () Bool)

(assert (=> b!1204939 (= e!773080 (and tp_is_empty!6099 tp!341912))))

(declare-fun b!1204940 () Bool)

(declare-fun lt!412082 () Int)

(assert (=> b!1204940 (= e!773083 (and (<= 0 lt!412082) (<= lt!412082 lt!412075)))))

(assert (=> b!1204940 (= lt!412082 (- until!61 lt!412080))))

(declare-fun lt!412084 () List!12127)

(assert (=> b!1204940 (= lt!412084 (slice!515 l!2744 from!613 lt!412080))))

(declare-fun b!1204941 () Bool)

(assert (=> b!1204941 (= e!773086 (= lt!412076 e!773081))))

(declare-fun c!201136 () Bool)

(assert (=> b!1204941 (= c!201136 (<= (- until!61 1) lt!412083))))

(declare-fun b!1204942 () Bool)

(declare-fun res!542733 () Bool)

(assert (=> b!1204942 (=> (not res!542733) (not e!773079))))

(assert (=> b!1204942 (= res!542733 (and (not (= from!613 0)) (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(declare-fun b!1204943 () Bool)

(assert (=> b!1204943 (= e!773081 call!84157)))

(declare-fun bm!84152 () Bool)

(assert (=> bm!84152 (= call!84158 (slice!515 r!2028 (ite c!201135 (- (- from!613 1) lt!412083) 0) (- (- until!61 1) lt!412083)))))

(declare-fun b!1204944 () Bool)

(assert (=> b!1204944 (= e!773086 (= lt!412076 call!84158))))

(declare-fun bm!84153 () Bool)

(assert (=> bm!84153 (= call!84157 (slice!515 lt!412078 (- from!613 1) (ite c!201136 (- until!61 1) lt!412083)))))

(declare-fun b!1204938 () Bool)

(declare-fun e!773085 () Bool)

(assert (=> b!1204938 (= e!773085 e!773082)))

(declare-fun res!542735 () Bool)

(assert (=> b!1204938 (=> (not res!542735) (not e!773082))))

(assert (=> b!1204938 (= res!542735 (and (<= until!61 (+ lt!412080 lt!412075)) (not (= l!2744 Nil!12103)) (not (= r!2028 Nil!12103)) (not (= until!61 0))))))

(assert (=> b!1204938 (= lt!412075 (size!9643 r!2028))))

(assert (=> b!1204938 (= lt!412080 (size!9643 l!2744))))

(declare-fun res!542738 () Bool)

(assert (=> start!107332 (=> (not res!542738) (not e!773085))))

(assert (=> start!107332 (= res!542738 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107332 e!773085))

(assert (=> start!107332 true))

(assert (=> start!107332 e!773080))

(assert (=> start!107332 e!773078))

(assert (= (and start!107332 res!542738) b!1204938))

(assert (= (and b!1204938 res!542735) b!1204935))

(assert (= (and b!1204935 res!542736) b!1204942))

(assert (= (and b!1204942 res!542733) b!1204936))

(assert (= (and b!1204936 res!542737) b!1204934))

(assert (= (and b!1204934 c!201135) b!1204944))

(assert (= (and b!1204934 (not c!201135)) b!1204941))

(assert (= (and b!1204941 c!201136) b!1204943))

(assert (= (and b!1204941 (not c!201136)) b!1204937))

(assert (= (or b!1204943 b!1204937) bm!84153))

(assert (= (or b!1204944 b!1204937) bm!84152))

(assert (= (and b!1204934 (not res!542734)) b!1204940))

(get-info :version)

(assert (= (and start!107332 ((_ is Cons!12103) l!2744)) b!1204939))

(assert (= (and start!107332 ((_ is Cons!12103) r!2028)) b!1204933))

(declare-fun m!1380251 () Bool)

(assert (=> b!1204938 m!1380251))

(declare-fun m!1380253 () Bool)

(assert (=> b!1204938 m!1380253))

(declare-fun m!1380255 () Bool)

(assert (=> bm!84152 m!1380255))

(declare-fun m!1380257 () Bool)

(assert (=> b!1204936 m!1380257))

(declare-fun m!1380259 () Bool)

(assert (=> bm!84153 m!1380259))

(declare-fun m!1380261 () Bool)

(assert (=> b!1204934 m!1380261))

(declare-fun m!1380263 () Bool)

(assert (=> b!1204934 m!1380263))

(declare-fun m!1380265 () Bool)

(assert (=> b!1204937 m!1380265))

(declare-fun m!1380267 () Bool)

(assert (=> b!1204940 m!1380267))

(declare-fun m!1380269 () Bool)

(assert (=> b!1204935 m!1380269))

(declare-fun m!1380271 () Bool)

(assert (=> b!1204935 m!1380271))

(declare-fun m!1380273 () Bool)

(assert (=> b!1204935 m!1380273))

(declare-fun m!1380275 () Bool)

(assert (=> b!1204935 m!1380275))

(check-sat (not b!1204939) (not b!1204935) (not b!1204937) (not bm!84153) (not bm!84152) (not b!1204933) tp_is_empty!6099 (not b!1204940) (not b!1204938) (not b!1204936) (not b!1204934))
(check-sat)
