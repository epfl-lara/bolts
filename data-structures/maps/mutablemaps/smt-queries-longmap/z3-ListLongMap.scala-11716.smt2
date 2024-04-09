; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137166 () Bool)

(assert start!137166)

(declare-fun b!1580070 () Bool)

(declare-fun e!881500 () Bool)

(declare-fun e!881501 () Bool)

(assert (=> b!1580070 (= e!881500 e!881501)))

(declare-fun res!1079507 () Bool)

(assert (=> b!1580070 (=> (not res!1079507) (not e!881501))))

(declare-datatypes ((B!2638 0))(
  ( (B!2639 (val!19681 Int)) )
))
(declare-datatypes ((tuple2!25642 0))(
  ( (tuple2!25643 (_1!12831 (_ BitVec 64)) (_2!12831 B!2638)) )
))
(declare-datatypes ((List!36962 0))(
  ( (Nil!36959) (Cons!36958 (h!38502 tuple2!25642) (t!51883 List!36962)) )
))
(declare-fun l!1390 () List!36962)

(declare-fun lt!676632 () tuple2!25642)

(declare-fun contains!10490 (List!36962 tuple2!25642) Bool)

(assert (=> b!1580070 (= res!1079507 (contains!10490 l!1390 lt!676632))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun value!194 () B!2638)

(assert (=> b!1580070 (= lt!676632 (tuple2!25643 key!405 value!194))))

(declare-fun res!1079501 () Bool)

(assert (=> start!137166 (=> (not res!1079501) (not e!881500))))

(declare-fun isStrictlySorted!1057 (List!36962) Bool)

(assert (=> start!137166 (= res!1079501 (isStrictlySorted!1057 l!1390))))

(assert (=> start!137166 e!881500))

(declare-fun e!881498 () Bool)

(assert (=> start!137166 e!881498))

(assert (=> start!137166 true))

(declare-fun tp_is_empty!39183 () Bool)

(assert (=> start!137166 tp_is_empty!39183))

(declare-fun b!1580071 () Bool)

(declare-fun e!881502 () Bool)

(assert (=> b!1580071 (= e!881502 false)))

(declare-fun lt!676631 () Bool)

(assert (=> b!1580071 (= lt!676631 (contains!10490 (t!51883 l!1390) lt!676632))))

(declare-fun b!1580072 () Bool)

(declare-fun res!1079504 () Bool)

(assert (=> b!1580072 (=> (not res!1079504) (not e!881500))))

(declare-fun containsKey!903 (List!36962 (_ BitVec 64)) Bool)

(assert (=> b!1580072 (= res!1079504 (containsKey!903 l!1390 key!405))))

(declare-fun b!1580073 () Bool)

(declare-fun res!1079500 () Bool)

(assert (=> b!1580073 (=> (not res!1079500) (not e!881502))))

(assert (=> b!1580073 (= res!1079500 (isStrictlySorted!1057 (t!51883 l!1390)))))

(declare-fun b!1580074 () Bool)

(declare-fun e!881499 () Bool)

(declare-datatypes ((tuple2!25644 0))(
  ( (tuple2!25645 (_1!12832 tuple2!25642) (_2!12832 List!36962)) )
))
(declare-datatypes ((Option!895 0))(
  ( (Some!894 (v!22388 tuple2!25644)) (None!893) )
))
(declare-fun lt!676633 () Option!895)

(get-info :version)

(declare-fun get!26806 (Option!895) tuple2!25644)

(assert (=> b!1580074 (= e!881499 (not ((_ is Nil!36959) (_2!12832 (get!26806 lt!676633)))))))

(declare-fun b!1580075 () Bool)

(declare-fun res!1079502 () Bool)

(assert (=> b!1580075 (=> (not res!1079502) (not e!881502))))

(assert (=> b!1580075 (= res!1079502 (and (or (not ((_ is Cons!36958) l!1390)) (not (= (_1!12831 (h!38502 l!1390)) key!405))) ((_ is Cons!36958) l!1390)))))

(declare-fun b!1580076 () Bool)

(assert (=> b!1580076 (= e!881501 e!881502)))

(declare-fun res!1079506 () Bool)

(assert (=> b!1580076 (=> (not res!1079506) (not e!881502))))

(assert (=> b!1580076 (= res!1079506 e!881499)))

(declare-fun res!1079503 () Bool)

(assert (=> b!1580076 (=> res!1079503 e!881499)))

(declare-fun isEmpty!1163 (Option!895) Bool)

(assert (=> b!1580076 (= res!1079503 (isEmpty!1163 lt!676633))))

(declare-fun unapply!77 (List!36962) Option!895)

(assert (=> b!1580076 (= lt!676633 (unapply!77 l!1390))))

(declare-fun b!1580077 () Bool)

(declare-fun res!1079505 () Bool)

(assert (=> b!1580077 (=> (not res!1079505) (not e!881502))))

(assert (=> b!1580077 (= res!1079505 (containsKey!903 (t!51883 l!1390) key!405))))

(declare-fun b!1580078 () Bool)

(declare-fun tp!114436 () Bool)

(assert (=> b!1580078 (= e!881498 (and tp_is_empty!39183 tp!114436))))

(assert (= (and start!137166 res!1079501) b!1580072))

(assert (= (and b!1580072 res!1079504) b!1580070))

(assert (= (and b!1580070 res!1079507) b!1580076))

(assert (= (and b!1580076 (not res!1079503)) b!1580074))

(assert (= (and b!1580076 res!1079506) b!1580075))

(assert (= (and b!1580075 res!1079502) b!1580073))

(assert (= (and b!1580073 res!1079500) b!1580077))

(assert (= (and b!1580077 res!1079505) b!1580071))

(assert (= (and start!137166 ((_ is Cons!36958) l!1390)) b!1580078))

(declare-fun m!1451609 () Bool)

(assert (=> start!137166 m!1451609))

(declare-fun m!1451611 () Bool)

(assert (=> b!1580073 m!1451611))

(declare-fun m!1451613 () Bool)

(assert (=> b!1580070 m!1451613))

(declare-fun m!1451615 () Bool)

(assert (=> b!1580071 m!1451615))

(declare-fun m!1451617 () Bool)

(assert (=> b!1580074 m!1451617))

(declare-fun m!1451619 () Bool)

(assert (=> b!1580072 m!1451619))

(declare-fun m!1451621 () Bool)

(assert (=> b!1580077 m!1451621))

(declare-fun m!1451623 () Bool)

(assert (=> b!1580076 m!1451623))

(declare-fun m!1451625 () Bool)

(assert (=> b!1580076 m!1451625))

(check-sat tp_is_empty!39183 (not b!1580071) (not b!1580073) (not b!1580078) (not b!1580076) (not b!1580074) (not b!1580072) (not b!1580077) (not b!1580070) (not start!137166))
(check-sat)
