; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396266 () Bool)

(assert start!396266)

(declare-fun res!1703748 () Bool)

(declare-fun e!2581445 () Bool)

(assert (=> start!396266 (=> (not res!1703748) (not e!2581445))))

(declare-datatypes ((B!2705 0))(
  ( (B!2706 (val!14644 Int)) )
))
(declare-datatypes ((List!45521 0))(
  ( (Nil!45397) (Cons!45397 (h!50817 B!2705) (t!343552 List!45521)) )
))
(declare-fun l!3122 () List!45521)

(declare-fun e1!48 () B!2705)

(declare-fun contains!9255 (List!45521 B!2705) Bool)

(assert (=> start!396266 (= res!1703748 (contains!9255 l!3122 e1!48))))

(assert (=> start!396266 e!2581445))

(declare-fun e!2581446 () Bool)

(assert (=> start!396266 e!2581446))

(declare-fun tp_is_empty!21753 () Bool)

(assert (=> start!396266 tp_is_empty!21753))

(declare-fun b!4159442 () Bool)

(declare-fun res!1703747 () Bool)

(assert (=> b!4159442 (=> (not res!1703747) (not e!2581445))))

(declare-fun e2!48 () B!2705)

(assert (=> b!4159442 (= res!1703747 (contains!9255 l!3122 e2!48))))

(declare-fun b!4159443 () Bool)

(assert (=> b!4159443 (= e!2581445 (and (not (= e1!48 e2!48)) (= l!3122 Nil!45397)))))

(declare-fun b!4159444 () Bool)

(declare-fun tp!1269032 () Bool)

(assert (=> b!4159444 (= e!2581446 (and tp_is_empty!21753 tp!1269032))))

(assert (= (and start!396266 res!1703748) b!4159442))

(assert (= (and b!4159442 res!1703747) b!4159443))

(get-info :version)

(assert (= (and start!396266 ((_ is Cons!45397) l!3122)) b!4159444))

(declare-fun m!4753165 () Bool)

(assert (=> start!396266 m!4753165))

(declare-fun m!4753167 () Bool)

(assert (=> b!4159442 m!4753167))

(check-sat (not start!396266) (not b!4159442) (not b!4159444) tp_is_empty!21753)
(check-sat)
(get-model)

(declare-fun d!1229843 () Bool)

(declare-fun lt!1482701 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7039 (List!45521) (InoxSet B!2705))

(assert (=> d!1229843 (= lt!1482701 (select (content!7039 l!3122) e1!48))))

(declare-fun e!2581455 () Bool)

(assert (=> d!1229843 (= lt!1482701 e!2581455)))

(declare-fun res!1703757 () Bool)

(assert (=> d!1229843 (=> (not res!1703757) (not e!2581455))))

(assert (=> d!1229843 (= res!1703757 ((_ is Cons!45397) l!3122))))

(assert (=> d!1229843 (= (contains!9255 l!3122 e1!48) lt!1482701)))

(declare-fun b!4159453 () Bool)

(declare-fun e!2581456 () Bool)

(assert (=> b!4159453 (= e!2581455 e!2581456)))

(declare-fun res!1703758 () Bool)

(assert (=> b!4159453 (=> res!1703758 e!2581456)))

(assert (=> b!4159453 (= res!1703758 (= (h!50817 l!3122) e1!48))))

(declare-fun b!4159454 () Bool)

(assert (=> b!4159454 (= e!2581456 (contains!9255 (t!343552 l!3122) e1!48))))

(assert (= (and d!1229843 res!1703757) b!4159453))

(assert (= (and b!4159453 (not res!1703758)) b!4159454))

(declare-fun m!4753169 () Bool)

(assert (=> d!1229843 m!4753169))

(declare-fun m!4753171 () Bool)

(assert (=> d!1229843 m!4753171))

(declare-fun m!4753173 () Bool)

(assert (=> b!4159454 m!4753173))

(assert (=> start!396266 d!1229843))

(declare-fun d!1229847 () Bool)

(declare-fun lt!1482702 () Bool)

(assert (=> d!1229847 (= lt!1482702 (select (content!7039 l!3122) e2!48))))

(declare-fun e!2581457 () Bool)

(assert (=> d!1229847 (= lt!1482702 e!2581457)))

(declare-fun res!1703759 () Bool)

(assert (=> d!1229847 (=> (not res!1703759) (not e!2581457))))

(assert (=> d!1229847 (= res!1703759 ((_ is Cons!45397) l!3122))))

(assert (=> d!1229847 (= (contains!9255 l!3122 e2!48) lt!1482702)))

(declare-fun b!4159455 () Bool)

(declare-fun e!2581458 () Bool)

(assert (=> b!4159455 (= e!2581457 e!2581458)))

(declare-fun res!1703760 () Bool)

(assert (=> b!4159455 (=> res!1703760 e!2581458)))

(assert (=> b!4159455 (= res!1703760 (= (h!50817 l!3122) e2!48))))

(declare-fun b!4159456 () Bool)

(assert (=> b!4159456 (= e!2581458 (contains!9255 (t!343552 l!3122) e2!48))))

(assert (= (and d!1229847 res!1703759) b!4159455))

(assert (= (and b!4159455 (not res!1703760)) b!4159456))

(assert (=> d!1229847 m!4753169))

(declare-fun m!4753175 () Bool)

(assert (=> d!1229847 m!4753175))

(declare-fun m!4753177 () Bool)

(assert (=> b!4159456 m!4753177))

(assert (=> b!4159442 d!1229847))

(declare-fun b!4159463 () Bool)

(declare-fun e!2581463 () Bool)

(declare-fun tp!1269035 () Bool)

(assert (=> b!4159463 (= e!2581463 (and tp_is_empty!21753 tp!1269035))))

(assert (=> b!4159444 (= tp!1269032 e!2581463)))

(assert (= (and b!4159444 ((_ is Cons!45397) (t!343552 l!3122))) b!4159463))

(check-sat (not b!4159454) (not b!4159456) (not b!4159463) (not d!1229847) tp_is_empty!21753 (not d!1229843))
(check-sat)
