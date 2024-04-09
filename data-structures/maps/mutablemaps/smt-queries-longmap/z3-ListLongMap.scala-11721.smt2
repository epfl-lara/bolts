; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137220 () Bool)

(assert start!137220)

(declare-fun b!1580403 () Bool)

(declare-fun res!1079757 () Bool)

(declare-fun e!881704 () Bool)

(assert (=> b!1580403 (=> (not res!1079757) (not e!881704))))

(declare-datatypes ((B!2668 0))(
  ( (B!2669 (val!19696 Int)) )
))
(declare-datatypes ((tuple2!25684 0))(
  ( (tuple2!25685 (_1!12852 (_ BitVec 64)) (_2!12852 B!2668)) )
))
(declare-datatypes ((List!36977 0))(
  ( (Nil!36974) (Cons!36973 (h!38517 tuple2!25684) (t!51898 List!36977)) )
))
(declare-datatypes ((tuple2!25686 0))(
  ( (tuple2!25687 (_1!12853 tuple2!25684) (_2!12853 List!36977)) )
))
(declare-datatypes ((Option!905 0))(
  ( (Some!904 (v!22401 tuple2!25686)) (None!903) )
))
(declare-fun lt!676711 () Option!905)

(get-info :version)

(declare-fun get!26822 (Option!905) tuple2!25686)

(assert (=> b!1580403 (= res!1079757 ((_ is Nil!36974) (_2!12853 (get!26822 lt!676711))))))

(declare-fun b!1580404 () Bool)

(declare-fun e!881705 () Bool)

(declare-fun tp_is_empty!39213 () Bool)

(declare-fun tp!114490 () Bool)

(assert (=> b!1580404 (= e!881705 (and tp_is_empty!39213 tp!114490))))

(declare-fun b!1580405 () Bool)

(declare-fun res!1079759 () Bool)

(declare-fun e!881706 () Bool)

(assert (=> b!1580405 (=> (not res!1079759) (not e!881706))))

(declare-fun l!1390 () List!36977)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!918 (List!36977 (_ BitVec 64)) Bool)

(assert (=> b!1580405 (= res!1079759 (containsKey!918 l!1390 key!405))))

(declare-fun b!1580406 () Bool)

(assert (=> b!1580406 (= e!881706 e!881704)))

(declare-fun res!1079758 () Bool)

(assert (=> b!1580406 (=> (not res!1079758) (not e!881704))))

(declare-fun isEmpty!1169 (Option!905) Bool)

(assert (=> b!1580406 (= res!1079758 (not (isEmpty!1169 lt!676711)))))

(declare-fun unapply!83 (List!36977) Option!905)

(assert (=> b!1580406 (= lt!676711 (unapply!83 l!1390))))

(declare-fun res!1079755 () Bool)

(assert (=> start!137220 (=> (not res!1079755) (not e!881706))))

(declare-fun isStrictlySorted!1072 (List!36977) Bool)

(assert (=> start!137220 (= res!1079755 (isStrictlySorted!1072 l!1390))))

(assert (=> start!137220 e!881706))

(assert (=> start!137220 e!881705))

(assert (=> start!137220 true))

(assert (=> start!137220 tp_is_empty!39213))

(declare-fun b!1580407 () Bool)

(declare-fun value!194 () B!2668)

(declare-datatypes ((Option!906 0))(
  ( (Some!905 (v!22402 B!2668)) (None!904) )
))
(declare-fun getValueByKey!817 (List!36977 (_ BitVec 64)) Option!906)

(assert (=> b!1580407 (= e!881704 (not (= (getValueByKey!817 l!1390 key!405) (Some!905 value!194))))))

(declare-fun b!1580408 () Bool)

(declare-fun res!1079756 () Bool)

(assert (=> b!1580408 (=> (not res!1079756) (not e!881706))))

(declare-fun contains!10505 (List!36977 tuple2!25684) Bool)

(assert (=> b!1580408 (= res!1079756 (contains!10505 l!1390 (tuple2!25685 key!405 value!194)))))

(assert (= (and start!137220 res!1079755) b!1580405))

(assert (= (and b!1580405 res!1079759) b!1580408))

(assert (= (and b!1580408 res!1079756) b!1580406))

(assert (= (and b!1580406 res!1079758) b!1580403))

(assert (= (and b!1580403 res!1079757) b!1580407))

(assert (= (and start!137220 ((_ is Cons!36973) l!1390)) b!1580404))

(declare-fun m!1451821 () Bool)

(assert (=> b!1580406 m!1451821))

(declare-fun m!1451823 () Bool)

(assert (=> b!1580406 m!1451823))

(declare-fun m!1451825 () Bool)

(assert (=> b!1580405 m!1451825))

(declare-fun m!1451827 () Bool)

(assert (=> b!1580403 m!1451827))

(declare-fun m!1451829 () Bool)

(assert (=> start!137220 m!1451829))

(declare-fun m!1451831 () Bool)

(assert (=> b!1580408 m!1451831))

(declare-fun m!1451833 () Bool)

(assert (=> b!1580407 m!1451833))

(check-sat (not start!137220) (not b!1580403) (not b!1580406) tp_is_empty!39213 (not b!1580407) (not b!1580405) (not b!1580408) (not b!1580404))
(check-sat)
(get-model)

(declare-fun d!166367 () Bool)

(assert (=> d!166367 (= (isEmpty!1169 lt!676711) (not ((_ is Some!904) lt!676711)))))

(assert (=> b!1580406 d!166367))

(declare-fun d!166373 () Bool)

(assert (=> d!166373 (= (unapply!83 l!1390) (ite ((_ is Nil!36974) l!1390) None!903 (Some!904 (tuple2!25687 (h!38517 l!1390) (t!51898 l!1390)))))))

(assert (=> b!1580406 d!166373))

(declare-fun d!166375 () Bool)

(declare-fun res!1079785 () Bool)

(declare-fun e!881732 () Bool)

(assert (=> d!166375 (=> res!1079785 e!881732)))

(assert (=> d!166375 (= res!1079785 (or ((_ is Nil!36974) l!1390) ((_ is Nil!36974) (t!51898 l!1390))))))

(assert (=> d!166375 (= (isStrictlySorted!1072 l!1390) e!881732)))

(declare-fun b!1580449 () Bool)

(declare-fun e!881733 () Bool)

(assert (=> b!1580449 (= e!881732 e!881733)))

(declare-fun res!1079786 () Bool)

(assert (=> b!1580449 (=> (not res!1079786) (not e!881733))))

(assert (=> b!1580449 (= res!1079786 (bvslt (_1!12852 (h!38517 l!1390)) (_1!12852 (h!38517 (t!51898 l!1390)))))))

(declare-fun b!1580450 () Bool)

(assert (=> b!1580450 (= e!881733 (isStrictlySorted!1072 (t!51898 l!1390)))))

(assert (= (and d!166375 (not res!1079785)) b!1580449))

(assert (= (and b!1580449 res!1079786) b!1580450))

(declare-fun m!1451857 () Bool)

(assert (=> b!1580450 m!1451857))

(assert (=> start!137220 d!166375))

(declare-fun d!166381 () Bool)

(declare-fun res!1079803 () Bool)

(declare-fun e!881750 () Bool)

(assert (=> d!166381 (=> res!1079803 e!881750)))

(assert (=> d!166381 (= res!1079803 (and ((_ is Cons!36973) l!1390) (= (_1!12852 (h!38517 l!1390)) key!405)))))

(assert (=> d!166381 (= (containsKey!918 l!1390 key!405) e!881750)))

(declare-fun b!1580467 () Bool)

(declare-fun e!881751 () Bool)

(assert (=> b!1580467 (= e!881750 e!881751)))

(declare-fun res!1079804 () Bool)

(assert (=> b!1580467 (=> (not res!1079804) (not e!881751))))

(assert (=> b!1580467 (= res!1079804 (and (or (not ((_ is Cons!36973) l!1390)) (bvsle (_1!12852 (h!38517 l!1390)) key!405)) ((_ is Cons!36973) l!1390) (bvslt (_1!12852 (h!38517 l!1390)) key!405)))))

(declare-fun b!1580468 () Bool)

(assert (=> b!1580468 (= e!881751 (containsKey!918 (t!51898 l!1390) key!405))))

(assert (= (and d!166381 (not res!1079803)) b!1580467))

(assert (= (and b!1580467 res!1079804) b!1580468))

(declare-fun m!1451863 () Bool)

(assert (=> b!1580468 m!1451863))

(assert (=> b!1580405 d!166381))

(declare-fun d!166389 () Bool)

(assert (=> d!166389 (= (get!26822 lt!676711) (v!22401 lt!676711))))

(assert (=> b!1580403 d!166389))

(declare-fun d!166391 () Bool)

(declare-fun lt!676723 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!839 (List!36977) (InoxSet tuple2!25684))

(assert (=> d!166391 (= lt!676723 (select (content!839 l!1390) (tuple2!25685 key!405 value!194)))))

(declare-fun e!881767 () Bool)

(assert (=> d!166391 (= lt!676723 e!881767)))

(declare-fun res!1079815 () Bool)

(assert (=> d!166391 (=> (not res!1079815) (not e!881767))))

(assert (=> d!166391 (= res!1079815 ((_ is Cons!36973) l!1390))))

(assert (=> d!166391 (= (contains!10505 l!1390 (tuple2!25685 key!405 value!194)) lt!676723)))

(declare-fun b!1580487 () Bool)

(declare-fun e!881766 () Bool)

(assert (=> b!1580487 (= e!881767 e!881766)))

(declare-fun res!1079816 () Bool)

(assert (=> b!1580487 (=> res!1079816 e!881766)))

(assert (=> b!1580487 (= res!1079816 (= (h!38517 l!1390) (tuple2!25685 key!405 value!194)))))

(declare-fun b!1580488 () Bool)

(assert (=> b!1580488 (= e!881766 (contains!10505 (t!51898 l!1390) (tuple2!25685 key!405 value!194)))))

(assert (= (and d!166391 res!1079815) b!1580487))

(assert (= (and b!1580487 (not res!1079816)) b!1580488))

(declare-fun m!1451871 () Bool)

(assert (=> d!166391 m!1451871))

(declare-fun m!1451873 () Bool)

(assert (=> d!166391 m!1451873))

(declare-fun m!1451875 () Bool)

(assert (=> b!1580488 m!1451875))

(assert (=> b!1580408 d!166391))

(declare-fun d!166399 () Bool)

(declare-fun c!146483 () Bool)

(assert (=> d!166399 (= c!146483 (and ((_ is Cons!36973) l!1390) (= (_1!12852 (h!38517 l!1390)) key!405)))))

(declare-fun e!881784 () Option!906)

(assert (=> d!166399 (= (getValueByKey!817 l!1390 key!405) e!881784)))

(declare-fun b!1580514 () Bool)

(declare-fun e!881785 () Option!906)

(assert (=> b!1580514 (= e!881785 None!904)))

(declare-fun b!1580513 () Bool)

(assert (=> b!1580513 (= e!881785 (getValueByKey!817 (t!51898 l!1390) key!405))))

(declare-fun b!1580511 () Bool)

(assert (=> b!1580511 (= e!881784 (Some!905 (_2!12852 (h!38517 l!1390))))))

(declare-fun b!1580512 () Bool)

(assert (=> b!1580512 (= e!881784 e!881785)))

(declare-fun c!146484 () Bool)

(assert (=> b!1580512 (= c!146484 (and ((_ is Cons!36973) l!1390) (not (= (_1!12852 (h!38517 l!1390)) key!405))))))

(assert (= (and d!166399 c!146483) b!1580511))

(assert (= (and d!166399 (not c!146483)) b!1580512))

(assert (= (and b!1580512 c!146484) b!1580513))

(assert (= (and b!1580512 (not c!146484)) b!1580514))

(declare-fun m!1451881 () Bool)

(assert (=> b!1580513 m!1451881))

(assert (=> b!1580407 d!166399))

(declare-fun b!1580521 () Bool)

(declare-fun e!881790 () Bool)

(declare-fun tp!114496 () Bool)

(assert (=> b!1580521 (= e!881790 (and tp_is_empty!39213 tp!114496))))

(assert (=> b!1580404 (= tp!114490 e!881790)))

(assert (= (and b!1580404 ((_ is Cons!36973) (t!51898 l!1390))) b!1580521))

(check-sat tp_is_empty!39213 (not d!166391) (not b!1580521) (not b!1580513) (not b!1580488) (not b!1580450) (not b!1580468))
(check-sat)
(get-model)

(declare-fun d!166429 () Bool)

(declare-fun res!1079841 () Bool)

(declare-fun e!881821 () Bool)

(assert (=> d!166429 (=> res!1079841 e!881821)))

