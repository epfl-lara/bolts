; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437264 () Bool)

(assert start!437264)

(declare-fun e!2776977 () Bool)

(declare-fun tp!1335571 () Bool)

(declare-fun tp_is_empty!27109 () Bool)

(declare-fun tp_is_empty!27111 () Bool)

(declare-fun b!4459620 () Bool)

(assert (=> b!4459620 (= e!2776977 (and tp_is_empty!27109 tp_is_empty!27111 tp!1335571))))

(declare-fun b!4459621 () Bool)

(declare-fun e!2776974 () Bool)

(declare-fun e!2776975 () Bool)

(assert (=> b!4459621 (= e!2776974 e!2776975)))

(declare-fun res!1849165 () Bool)

(assert (=> b!4459621 (=> (not res!1849165) (not e!2776975))))

(declare-datatypes ((K!11535 0))(
  ( (K!11536 (val!17499 Int)) )
))
(declare-datatypes ((V!11781 0))(
  ( (V!11782 (val!17500 Int)) )
))
(declare-datatypes ((tuple2!50308 0))(
  ( (tuple2!50309 (_1!28448 K!11535) (_2!28448 V!11781)) )
))
(declare-datatypes ((List!50265 0))(
  ( (Nil!50141) (Cons!50141 (h!55886 tuple2!50308) (t!357215 List!50265)) )
))
(declare-fun l!12755 () List!50265)

(declare-fun key!4289 () K!11535)

(assert (=> b!4459621 (= res!1849165 (not (= (_1!28448 (h!55886 l!12755)) key!4289)))))

(declare-datatypes ((ListMap!3185 0))(
  ( (ListMap!3186 (toList!3944 List!50265)) )
))
(declare-fun lt!1650699 () ListMap!3185)

(declare-fun acc!957 () ListMap!3185)

(declare-fun +!1325 (ListMap!3185 tuple2!50308) ListMap!3185)

(assert (=> b!4459621 (= lt!1650699 (+!1325 acc!957 (h!55886 l!12755)))))

(declare-fun res!1849164 () Bool)

(assert (=> start!437264 (=> (not res!1849164) (not e!2776974))))

(declare-fun noDuplicateKeys!972 (List!50265) Bool)

(assert (=> start!437264 (= res!1849164 (noDuplicateKeys!972 l!12755))))

(assert (=> start!437264 e!2776974))

(assert (=> start!437264 e!2776977))

(assert (=> start!437264 tp_is_empty!27109))

(declare-fun e!2776976 () Bool)

(declare-fun inv!65719 (ListMap!3185) Bool)

(assert (=> start!437264 (and (inv!65719 acc!957) e!2776976)))

(assert (=> start!437264 tp_is_empty!27111))

(declare-fun b!4459622 () Bool)

(assert (=> b!4459622 (= e!2776975 (not true))))

(declare-fun lt!1650700 () Bool)

(declare-fun contains!12637 (ListMap!3185 K!11535) Bool)

(assert (=> b!4459622 (= lt!1650700 (contains!12637 acc!957 key!4289))))

(declare-fun e!2776973 () Bool)

(assert (=> b!4459622 e!2776973))

(declare-fun res!1849160 () Bool)

(assert (=> b!4459622 (=> (not res!1849160) (not e!2776973))))

(assert (=> b!4459622 (= res!1849160 (contains!12637 lt!1650699 key!4289))))

(declare-fun value!2940 () V!11781)

(declare-datatypes ((Unit!86551 0))(
  ( (Unit!86552) )
))
(declare-fun lt!1650698 () Unit!86551)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!108 (List!50265 K!11535 V!11781 ListMap!3185) Unit!86551)

(assert (=> b!4459622 (= lt!1650698 (lemmaAddToMapContainsAndNotInListThenInAcc!108 (t!357215 l!12755) key!4289 value!2940 lt!1650699))))

(declare-fun b!4459623 () Bool)

(assert (=> b!4459623 (= e!2776973 (contains!12637 lt!1650699 (_1!28448 (h!55886 l!12755))))))

(declare-fun b!4459624 () Bool)

(declare-fun res!1849163 () Bool)

(assert (=> b!4459624 (=> (not res!1849163) (not e!2776974))))

(declare-fun addToMapMapFromBucket!551 (List!50265 ListMap!3185) ListMap!3185)

(assert (=> b!4459624 (= res!1849163 (contains!12637 (addToMapMapFromBucket!551 l!12755 acc!957) key!4289))))

(declare-fun b!4459625 () Bool)

(declare-fun tp!1335570 () Bool)

(assert (=> b!4459625 (= e!2776976 tp!1335570)))

(declare-fun b!4459626 () Bool)

(declare-fun res!1849161 () Bool)

(assert (=> b!4459626 (=> (not res!1849161) (not e!2776974))))

(get-info :version)

(assert (=> b!4459626 (= res!1849161 ((_ is Cons!50141) l!12755))))

(declare-fun b!4459627 () Bool)

(declare-fun res!1849162 () Bool)

(assert (=> b!4459627 (=> (not res!1849162) (not e!2776974))))

(declare-fun containsKey!1370 (List!50265 K!11535) Bool)

(assert (=> b!4459627 (= res!1849162 (not (containsKey!1370 l!12755 key!4289)))))

(assert (= (and start!437264 res!1849164) b!4459627))

(assert (= (and b!4459627 res!1849162) b!4459624))

(assert (= (and b!4459624 res!1849163) b!4459626))

(assert (= (and b!4459626 res!1849161) b!4459621))

(assert (= (and b!4459621 res!1849165) b!4459622))

(assert (= (and b!4459622 res!1849160) b!4459623))

(assert (= (and start!437264 ((_ is Cons!50141) l!12755)) b!4459620))

(assert (= start!437264 b!4459625))

(declare-fun m!5162557 () Bool)

(assert (=> b!4459623 m!5162557))

(declare-fun m!5162559 () Bool)

(assert (=> b!4459621 m!5162559))

(declare-fun m!5162561 () Bool)

(assert (=> start!437264 m!5162561))

(declare-fun m!5162563 () Bool)

(assert (=> start!437264 m!5162563))

(declare-fun m!5162565 () Bool)

(assert (=> b!4459624 m!5162565))

(assert (=> b!4459624 m!5162565))

(declare-fun m!5162567 () Bool)

(assert (=> b!4459624 m!5162567))

(declare-fun m!5162569 () Bool)

(assert (=> b!4459627 m!5162569))

(declare-fun m!5162571 () Bool)

(assert (=> b!4459622 m!5162571))

(declare-fun m!5162573 () Bool)

(assert (=> b!4459622 m!5162573))

(declare-fun m!5162575 () Bool)

(assert (=> b!4459622 m!5162575))

(check-sat (not b!4459623) (not start!437264) (not b!4459624) (not b!4459625) (not b!4459622) tp_is_empty!27109 tp_is_empty!27111 (not b!4459621) (not b!4459627) (not b!4459620))
(check-sat)
