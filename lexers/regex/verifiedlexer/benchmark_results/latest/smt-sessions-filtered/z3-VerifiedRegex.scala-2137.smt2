; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107292 () Bool)

(assert start!107292)

(declare-fun b!1204484 () Bool)

(declare-fun e!772775 () Bool)

(assert (=> b!1204484 (= e!772775 false)))

(declare-fun lt!411803 () Int)

(declare-datatypes ((T!22132 0))(
  ( (T!22133 (val!3938 Int)) )
))
(declare-datatypes ((List!12117 0))(
  ( (Nil!12093) (Cons!12093 (h!17494 T!22132) (t!112533 List!12117)) )
))
(declare-fun lt!411804 () List!12117)

(declare-fun size!9633 (List!12117) Int)

(assert (=> b!1204484 (= lt!411803 (size!9633 lt!411804))))

(declare-fun b!1204485 () Bool)

(declare-fun res!542556 () Bool)

(assert (=> b!1204485 (=> (not res!542556) (not e!772775))))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> b!1204485 (= res!542556 (and (not (= from!613 0)) (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(declare-fun res!542555 () Bool)

(declare-fun e!772774 () Bool)

(assert (=> start!107292 (=> (not res!542555) (not e!772774))))

(assert (=> start!107292 (= res!542555 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107292 e!772774))

(assert (=> start!107292 true))

(declare-fun e!772776 () Bool)

(assert (=> start!107292 e!772776))

(declare-fun e!772773 () Bool)

(assert (=> start!107292 e!772773))

(declare-fun b!1204486 () Bool)

(declare-fun res!542553 () Bool)

(assert (=> b!1204486 (=> (not res!542553) (not e!772774))))

(declare-fun l!2744 () List!12117)

(declare-fun r!2028 () List!12117)

(assert (=> b!1204486 (= res!542553 (and (not (= l!2744 Nil!12093)) (not (= r!2028 Nil!12093)) (not (= until!61 0))))))

(declare-fun b!1204487 () Bool)

(assert (=> b!1204487 (= e!772774 e!772775)))

(declare-fun res!542552 () Bool)

(assert (=> b!1204487 (=> (not res!542552) (not e!772775))))

(declare-fun tail!1720 (List!12117) List!12117)

(declare-fun ++!3117 (List!12117 List!12117) List!12117)

(assert (=> b!1204487 (= res!542552 (= (tail!1720 (++!3117 l!2744 r!2028)) (++!3117 lt!411804 r!2028)))))

(assert (=> b!1204487 (= lt!411804 (tail!1720 l!2744))))

(declare-fun b!1204488 () Bool)

(declare-fun res!542554 () Bool)

(assert (=> b!1204488 (=> (not res!542554) (not e!772774))))

(assert (=> b!1204488 (= res!542554 (<= until!61 (+ (size!9633 l!2744) (size!9633 r!2028))))))

(declare-fun b!1204489 () Bool)

(declare-fun tp_is_empty!6079 () Bool)

(declare-fun tp!341844 () Bool)

(assert (=> b!1204489 (= e!772773 (and tp_is_empty!6079 tp!341844))))

(declare-fun b!1204490 () Bool)

(declare-fun tp!341845 () Bool)

(assert (=> b!1204490 (= e!772776 (and tp_is_empty!6079 tp!341845))))

(assert (= (and start!107292 res!542555) b!1204488))

(assert (= (and b!1204488 res!542554) b!1204486))

(assert (= (and b!1204486 res!542553) b!1204487))

(assert (= (and b!1204487 res!542552) b!1204485))

(assert (= (and b!1204485 res!542556) b!1204484))

(get-info :version)

(assert (= (and start!107292 ((_ is Cons!12093) l!2744)) b!1204490))

(assert (= (and start!107292 ((_ is Cons!12093) r!2028)) b!1204489))

(declare-fun m!1379891 () Bool)

(assert (=> b!1204484 m!1379891))

(declare-fun m!1379893 () Bool)

(assert (=> b!1204487 m!1379893))

(assert (=> b!1204487 m!1379893))

(declare-fun m!1379895 () Bool)

(assert (=> b!1204487 m!1379895))

(declare-fun m!1379897 () Bool)

(assert (=> b!1204487 m!1379897))

(declare-fun m!1379899 () Bool)

(assert (=> b!1204487 m!1379899))

(declare-fun m!1379901 () Bool)

(assert (=> b!1204488 m!1379901))

(declare-fun m!1379903 () Bool)

(assert (=> b!1204488 m!1379903))

(check-sat tp_is_empty!6079 (not b!1204488) (not b!1204487) (not b!1204484) (not b!1204489) (not b!1204490))
(check-sat)
