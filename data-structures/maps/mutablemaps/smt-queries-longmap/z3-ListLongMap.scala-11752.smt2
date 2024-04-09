; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137940 () Bool)

(assert start!137940)

(declare-fun res!1081685 () Bool)

(declare-fun e!883814 () Bool)

(assert (=> start!137940 (=> (not res!1081685) (not e!883814))))

(declare-datatypes ((B!2854 0))(
  ( (B!2855 (val!19789 Int)) )
))
(declare-datatypes ((tuple2!25910 0))(
  ( (tuple2!25911 (_1!12965 (_ BitVec 64)) (_2!12965 B!2854)) )
))
(declare-datatypes ((List!37070 0))(
  ( (Nil!37067) (Cons!37066 (h!38610 tuple2!25910) (t!51991 List!37070)) )
))
(declare-fun l!548 () List!37070)

(declare-fun isStrictlySorted!1141 (List!37070) Bool)

(assert (=> start!137940 (= res!1081685 (isStrictlySorted!1141 l!548))))

(assert (=> start!137940 e!883814))

(declare-fun e!883815 () Bool)

(assert (=> start!137940 e!883815))

(declare-fun b!1583326 () Bool)

(declare-fun ListPrimitiveSize!212 (List!37070) Int)

(assert (=> b!1583326 (= e!883814 (< (ListPrimitiveSize!212 l!548) 0))))

(declare-fun b!1583327 () Bool)

(declare-fun tp_is_empty!39387 () Bool)

(declare-fun tp!114955 () Bool)

(assert (=> b!1583327 (= e!883815 (and tp_is_empty!39387 tp!114955))))

(assert (= (and start!137940 res!1081685) b!1583326))

(get-info :version)

(assert (= (and start!137940 ((_ is Cons!37066) l!548)) b!1583327))

(declare-fun m!1453239 () Bool)

(assert (=> start!137940 m!1453239))

(declare-fun m!1453241 () Bool)

(assert (=> b!1583326 m!1453241))

(check-sat (not start!137940) (not b!1583326) (not b!1583327) tp_is_empty!39387)
(check-sat)
(get-model)

(declare-fun d!167179 () Bool)

(declare-fun res!1081693 () Bool)

(declare-fun e!883828 () Bool)

(assert (=> d!167179 (=> res!1081693 e!883828)))

(assert (=> d!167179 (= res!1081693 (or ((_ is Nil!37067) l!548) ((_ is Nil!37067) (t!51991 l!548))))))

(assert (=> d!167179 (= (isStrictlySorted!1141 l!548) e!883828)))

(declare-fun b!1583342 () Bool)

(declare-fun e!883829 () Bool)

(assert (=> b!1583342 (= e!883828 e!883829)))

(declare-fun res!1081694 () Bool)

(assert (=> b!1583342 (=> (not res!1081694) (not e!883829))))

(assert (=> b!1583342 (= res!1081694 (bvslt (_1!12965 (h!38610 l!548)) (_1!12965 (h!38610 (t!51991 l!548)))))))

(declare-fun b!1583343 () Bool)

(assert (=> b!1583343 (= e!883829 (isStrictlySorted!1141 (t!51991 l!548)))))

(assert (= (and d!167179 (not res!1081693)) b!1583342))

(assert (= (and b!1583342 res!1081694) b!1583343))

(declare-fun m!1453247 () Bool)

(assert (=> b!1583343 m!1453247))

(assert (=> start!137940 d!167179))

(declare-fun d!167185 () Bool)

(declare-fun lt!677098 () Int)

(assert (=> d!167185 (>= lt!677098 0)))

(declare-fun e!883840 () Int)

(assert (=> d!167185 (= lt!677098 e!883840)))

(declare-fun c!146679 () Bool)

(assert (=> d!167185 (= c!146679 ((_ is Nil!37067) l!548))))

(assert (=> d!167185 (= (ListPrimitiveSize!212 l!548) lt!677098)))

(declare-fun b!1583360 () Bool)

(assert (=> b!1583360 (= e!883840 0)))

(declare-fun b!1583361 () Bool)

(assert (=> b!1583361 (= e!883840 (+ 1 (ListPrimitiveSize!212 (t!51991 l!548))))))

(assert (= (and d!167185 c!146679) b!1583360))

(assert (= (and d!167185 (not c!146679)) b!1583361))

(declare-fun m!1453253 () Bool)

(assert (=> b!1583361 m!1453253))

(assert (=> b!1583326 d!167185))

(declare-fun b!1583372 () Bool)

(declare-fun e!883849 () Bool)

(declare-fun tp!114961 () Bool)

(assert (=> b!1583372 (= e!883849 (and tp_is_empty!39387 tp!114961))))

(assert (=> b!1583327 (= tp!114955 e!883849)))

(assert (= (and b!1583327 ((_ is Cons!37066) (t!51991 l!548))) b!1583372))

(check-sat (not b!1583361) (not b!1583343) (not b!1583372) tp_is_empty!39387)
(check-sat)
