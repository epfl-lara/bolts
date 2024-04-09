; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137106 () Bool)

(assert start!137106)

(declare-fun res!1079274 () Bool)

(declare-fun e!881318 () Bool)

(assert (=> start!137106 (=> (not res!1079274) (not e!881318))))

(declare-datatypes ((B!2614 0))(
  ( (B!2615 (val!19669 Int)) )
))
(declare-datatypes ((tuple2!25606 0))(
  ( (tuple2!25607 (_1!12813 (_ BitVec 64)) (_2!12813 B!2614)) )
))
(declare-datatypes ((List!36950 0))(
  ( (Nil!36947) (Cons!36946 (h!38490 tuple2!25606) (t!51871 List!36950)) )
))
(declare-fun l!1390 () List!36950)

(declare-fun isStrictlySorted!1045 (List!36950) Bool)

(assert (=> start!137106 (= res!1079274 (isStrictlySorted!1045 l!1390))))

(assert (=> start!137106 e!881318))

(declare-fun e!881317 () Bool)

(assert (=> start!137106 e!881317))

(assert (=> start!137106 true))

(declare-fun tp_is_empty!39159 () Bool)

(assert (=> start!137106 tp_is_empty!39159))

(declare-fun b!1579792 () Bool)

(declare-fun res!1079273 () Bool)

(assert (=> b!1579792 (=> (not res!1079273) (not e!881318))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!891 (List!36950 (_ BitVec 64)) Bool)

(assert (=> b!1579792 (= res!1079273 (containsKey!891 l!1390 key!405))))

(declare-fun b!1579793 () Bool)

(declare-fun e!881319 () Bool)

(assert (=> b!1579793 (= e!881318 e!881319)))

(declare-fun res!1079275 () Bool)

(assert (=> b!1579793 (=> (not res!1079275) (not e!881319))))

(declare-datatypes ((tuple2!25608 0))(
  ( (tuple2!25609 (_1!12814 tuple2!25606) (_2!12814 List!36950)) )
))
(declare-datatypes ((Option!889 0))(
  ( (Some!888 (v!22379 tuple2!25608)) (None!887) )
))
(declare-fun lt!676567 () Option!889)

(declare-fun isEmpty!1157 (Option!889) Bool)

(assert (=> b!1579793 (= res!1079275 (not (isEmpty!1157 lt!676567)))))

(declare-fun unapply!71 (List!36950) Option!889)

(assert (=> b!1579793 (= lt!676567 (unapply!71 l!1390))))

(declare-fun b!1579794 () Bool)

(declare-fun tp!114391 () Bool)

(assert (=> b!1579794 (= e!881317 (and tp_is_empty!39159 tp!114391))))

(declare-fun b!1579795 () Bool)

(declare-fun isDefined!594 (Option!889) Bool)

(assert (=> b!1579795 (= e!881319 (not (isDefined!594 lt!676567)))))

(declare-fun b!1579796 () Bool)

(declare-fun res!1079276 () Bool)

(assert (=> b!1579796 (=> (not res!1079276) (not e!881318))))

(declare-fun value!194 () B!2614)

(declare-fun contains!10478 (List!36950 tuple2!25606) Bool)

(assert (=> b!1579796 (= res!1079276 (contains!10478 l!1390 (tuple2!25607 key!405 value!194)))))

(assert (= (and start!137106 res!1079274) b!1579792))

(assert (= (and b!1579792 res!1079273) b!1579796))

(assert (= (and b!1579796 res!1079276) b!1579793))

(assert (= (and b!1579793 res!1079275) b!1579795))

(get-info :version)

(assert (= (and start!137106 ((_ is Cons!36946) l!1390)) b!1579794))

(declare-fun m!1451441 () Bool)

(assert (=> b!1579793 m!1451441))

(declare-fun m!1451443 () Bool)

(assert (=> b!1579793 m!1451443))

(declare-fun m!1451445 () Bool)

(assert (=> b!1579796 m!1451445))

(declare-fun m!1451447 () Bool)

(assert (=> start!137106 m!1451447))

(declare-fun m!1451449 () Bool)

(assert (=> b!1579792 m!1451449))

(declare-fun m!1451451 () Bool)

(assert (=> b!1579795 m!1451451))

(check-sat (not b!1579793) (not b!1579794) (not start!137106) tp_is_empty!39159 (not b!1579795) (not b!1579796) (not b!1579792))
(check-sat)
(get-model)

(declare-fun d!166289 () Bool)

(declare-fun res!1079301 () Bool)

(declare-fun e!881341 () Bool)

(assert (=> d!166289 (=> res!1079301 e!881341)))

(assert (=> d!166289 (= res!1079301 (and ((_ is Cons!36946) l!1390) (= (_1!12813 (h!38490 l!1390)) key!405)))))

(assert (=> d!166289 (= (containsKey!891 l!1390 key!405) e!881341)))

(declare-fun b!1579824 () Bool)

(declare-fun e!881342 () Bool)

(assert (=> b!1579824 (= e!881341 e!881342)))

(declare-fun res!1079302 () Bool)

(assert (=> b!1579824 (=> (not res!1079302) (not e!881342))))

(assert (=> b!1579824 (= res!1079302 (and (or (not ((_ is Cons!36946) l!1390)) (bvsle (_1!12813 (h!38490 l!1390)) key!405)) ((_ is Cons!36946) l!1390) (bvslt (_1!12813 (h!38490 l!1390)) key!405)))))

(declare-fun b!1579825 () Bool)

(assert (=> b!1579825 (= e!881342 (containsKey!891 (t!51871 l!1390) key!405))))

(assert (= (and d!166289 (not res!1079301)) b!1579824))

(assert (= (and b!1579824 res!1079302) b!1579825))

(declare-fun m!1451465 () Bool)

(assert (=> b!1579825 m!1451465))

(assert (=> b!1579792 d!166289))

(declare-fun d!166297 () Bool)

(assert (=> d!166297 (= (isEmpty!1157 lt!676567) (not ((_ is Some!888) lt!676567)))))

(assert (=> b!1579793 d!166297))

(declare-fun d!166299 () Bool)

(assert (=> d!166299 (= (unapply!71 l!1390) (ite ((_ is Nil!36947) l!1390) None!887 (Some!888 (tuple2!25609 (h!38490 l!1390) (t!51871 l!1390)))))))

(assert (=> b!1579793 d!166299))

(declare-fun d!166307 () Bool)

(declare-fun res!1079321 () Bool)

(declare-fun e!881361 () Bool)

(assert (=> d!166307 (=> res!1079321 e!881361)))

(assert (=> d!166307 (= res!1079321 (or ((_ is Nil!36947) l!1390) ((_ is Nil!36947) (t!51871 l!1390))))))

(assert (=> d!166307 (= (isStrictlySorted!1045 l!1390) e!881361)))

(declare-fun b!1579844 () Bool)

(declare-fun e!881362 () Bool)

(assert (=> b!1579844 (= e!881361 e!881362)))

(declare-fun res!1079322 () Bool)

(assert (=> b!1579844 (=> (not res!1079322) (not e!881362))))

(assert (=> b!1579844 (= res!1079322 (bvslt (_1!12813 (h!38490 l!1390)) (_1!12813 (h!38490 (t!51871 l!1390)))))))

(declare-fun b!1579845 () Bool)

(assert (=> b!1579845 (= e!881362 (isStrictlySorted!1045 (t!51871 l!1390)))))

(assert (= (and d!166307 (not res!1079321)) b!1579844))

(assert (= (and b!1579844 res!1079322) b!1579845))

(declare-fun m!1451477 () Bool)

(assert (=> b!1579845 m!1451477))

(assert (=> start!137106 d!166307))

(declare-fun lt!676578 () Bool)

(declare-fun d!166315 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!833 (List!36950) (InoxSet tuple2!25606))

(assert (=> d!166315 (= lt!676578 (select (content!833 l!1390) (tuple2!25607 key!405 value!194)))))

(declare-fun e!881379 () Bool)

(assert (=> d!166315 (= lt!676578 e!881379)))

(declare-fun res!1079339 () Bool)

(assert (=> d!166315 (=> (not res!1079339) (not e!881379))))

(assert (=> d!166315 (= res!1079339 ((_ is Cons!36946) l!1390))))

(assert (=> d!166315 (= (contains!10478 l!1390 (tuple2!25607 key!405 value!194)) lt!676578)))

(declare-fun b!1579862 () Bool)

(declare-fun e!881380 () Bool)

(assert (=> b!1579862 (= e!881379 e!881380)))

(declare-fun res!1079340 () Bool)

(assert (=> b!1579862 (=> res!1079340 e!881380)))

(assert (=> b!1579862 (= res!1079340 (= (h!38490 l!1390) (tuple2!25607 key!405 value!194)))))

(declare-fun b!1579863 () Bool)

(assert (=> b!1579863 (= e!881380 (contains!10478 (t!51871 l!1390) (tuple2!25607 key!405 value!194)))))

(assert (= (and d!166315 res!1079339) b!1579862))

(assert (= (and b!1579862 (not res!1079340)) b!1579863))

(declare-fun m!1451483 () Bool)

(assert (=> d!166315 m!1451483))

(declare-fun m!1451485 () Bool)

(assert (=> d!166315 m!1451485))

(declare-fun m!1451487 () Bool)

(assert (=> b!1579863 m!1451487))

(assert (=> b!1579796 d!166315))

(declare-fun d!166321 () Bool)

(assert (=> d!166321 (= (isDefined!594 lt!676567) (not (isEmpty!1157 lt!676567)))))

(declare-fun bs!45756 () Bool)

(assert (= bs!45756 d!166321))

(assert (=> bs!45756 m!1451441))

(assert (=> b!1579795 d!166321))

(declare-fun b!1579874 () Bool)

(declare-fun e!881387 () Bool)

(declare-fun tp!114399 () Bool)

(assert (=> b!1579874 (= e!881387 (and tp_is_empty!39159 tp!114399))))

(assert (=> b!1579794 (= tp!114391 e!881387)))

(assert (= (and b!1579794 ((_ is Cons!36946) (t!51871 l!1390))) b!1579874))

(check-sat (not d!166315) (not b!1579825) (not b!1579845) (not b!1579874) (not d!166321) tp_is_empty!39159 (not b!1579863))
(check-sat)
