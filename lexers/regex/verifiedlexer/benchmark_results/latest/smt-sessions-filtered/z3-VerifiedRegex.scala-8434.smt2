; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437472 () Bool)

(assert start!437472)

(declare-fun b!4461073 () Bool)

(declare-fun res!1849985 () Bool)

(declare-fun e!2777904 () Bool)

(assert (=> b!4461073 (=> (not res!1849985) (not e!2777904))))

(declare-datatypes ((K!11575 0))(
  ( (K!11576 (val!17531 Int)) )
))
(declare-datatypes ((V!11821 0))(
  ( (V!11822 (val!17532 Int)) )
))
(declare-datatypes ((tuple2!50340 0))(
  ( (tuple2!50341 (_1!28464 K!11575) (_2!28464 V!11821)) )
))
(declare-datatypes ((List!50295 0))(
  ( (Nil!50171) (Cons!50171 (h!55916 tuple2!50340) (t!357245 List!50295)) )
))
(declare-fun l!12755 () List!50295)

(declare-fun key!4289 () K!11575)

(declare-fun containsKey!1400 (List!50295 K!11575) Bool)

(assert (=> b!4461073 (= res!1849985 (not (containsKey!1400 l!12755 key!4289)))))

(declare-fun b!4461074 () Bool)

(declare-fun e!2777905 () Bool)

(declare-datatypes ((ListMap!3217 0))(
  ( (ListMap!3218 (toList!3960 List!50295)) )
))
(declare-fun lt!1652290 () ListMap!3217)

(declare-fun contains!12679 (ListMap!3217 K!11575) Bool)

(assert (=> b!4461074 (= e!2777905 (contains!12679 lt!1652290 (_1!28464 (h!55916 l!12755))))))

(declare-fun res!1849990 () Bool)

(assert (=> start!437472 (=> (not res!1849990) (not e!2777904))))

(declare-fun noDuplicateKeys!988 (List!50295) Bool)

(assert (=> start!437472 (= res!1849990 (noDuplicateKeys!988 l!12755))))

(assert (=> start!437472 e!2777904))

(declare-fun e!2777909 () Bool)

(assert (=> start!437472 e!2777909))

(declare-fun tp_is_empty!27173 () Bool)

(assert (=> start!437472 tp_is_empty!27173))

(declare-fun acc!957 () ListMap!3217)

(declare-fun e!2777908 () Bool)

(declare-fun inv!65759 (ListMap!3217) Bool)

(assert (=> start!437472 (and (inv!65759 acc!957) e!2777908)))

(declare-fun tp_is_empty!27175 () Bool)

(assert (=> start!437472 tp_is_empty!27175))

(declare-fun b!4461075 () Bool)

(declare-fun e!2777907 () Bool)

(declare-fun e!2777906 () Bool)

(assert (=> b!4461075 (= e!2777907 (not e!2777906))))

(declare-fun res!1849989 () Bool)

(assert (=> b!4461075 (=> res!1849989 e!2777906)))

(assert (=> b!4461075 (= res!1849989 (contains!12679 acc!957 key!4289))))

(assert (=> b!4461075 e!2777905))

(declare-fun res!1849986 () Bool)

(assert (=> b!4461075 (=> (not res!1849986) (not e!2777905))))

(assert (=> b!4461075 (= res!1849986 (contains!12679 lt!1652290 key!4289))))

(declare-datatypes ((Unit!86825 0))(
  ( (Unit!86826) )
))
(declare-fun lt!1652289 () Unit!86825)

(declare-fun value!2940 () V!11821)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!112 (List!50295 K!11575 V!11821 ListMap!3217) Unit!86825)

(assert (=> b!4461075 (= lt!1652289 (lemmaAddToMapContainsAndNotInListThenInAcc!112 (t!357245 l!12755) key!4289 value!2940 lt!1652290))))

(declare-fun b!4461076 () Bool)

(assert (=> b!4461076 (= e!2777904 e!2777907)))

(declare-fun res!1849991 () Bool)

(assert (=> b!4461076 (=> (not res!1849991) (not e!2777907))))

(assert (=> b!4461076 (= res!1849991 (not (= (_1!28464 (h!55916 l!12755)) key!4289)))))

(declare-fun +!1341 (ListMap!3217 tuple2!50340) ListMap!3217)

(assert (=> b!4461076 (= lt!1652290 (+!1341 acc!957 (h!55916 l!12755)))))

(declare-fun b!4461077 () Bool)

(declare-fun tp!1335723 () Bool)

(assert (=> b!4461077 (= e!2777908 tp!1335723)))

(declare-fun b!4461078 () Bool)

(declare-fun tp!1335722 () Bool)

(assert (=> b!4461078 (= e!2777909 (and tp_is_empty!27173 tp_is_empty!27175 tp!1335722))))

(declare-fun b!4461079 () Bool)

(assert (=> b!4461079 (= e!2777906 true)))

(assert (=> b!4461079 false))

(declare-fun lt!1652288 () Unit!86825)

(declare-fun addStillNotContains!3 (ListMap!3217 K!11575 V!11821 K!11575) Unit!86825)

(assert (=> b!4461079 (= lt!1652288 (addStillNotContains!3 acc!957 (_1!28464 (h!55916 l!12755)) (_2!28464 (h!55916 l!12755)) key!4289))))

(declare-fun b!4461080 () Bool)

(declare-fun res!1849988 () Bool)

(assert (=> b!4461080 (=> (not res!1849988) (not e!2777904))))

(get-info :version)

(assert (=> b!4461080 (= res!1849988 ((_ is Cons!50171) l!12755))))

(declare-fun b!4461081 () Bool)

(declare-fun res!1849987 () Bool)

(assert (=> b!4461081 (=> (not res!1849987) (not e!2777904))))

(declare-fun addToMapMapFromBucket!567 (List!50295 ListMap!3217) ListMap!3217)

(assert (=> b!4461081 (= res!1849987 (contains!12679 (addToMapMapFromBucket!567 l!12755 acc!957) key!4289))))

(assert (= (and start!437472 res!1849990) b!4461073))

(assert (= (and b!4461073 res!1849985) b!4461081))

(assert (= (and b!4461081 res!1849987) b!4461080))

(assert (= (and b!4461080 res!1849988) b!4461076))

(assert (= (and b!4461076 res!1849991) b!4461075))

(assert (= (and b!4461075 res!1849986) b!4461074))

(assert (= (and b!4461075 (not res!1849989)) b!4461079))

(assert (= (and start!437472 ((_ is Cons!50171) l!12755)) b!4461078))

(assert (= start!437472 b!4461077))

(declare-fun m!5164103 () Bool)

(assert (=> b!4461081 m!5164103))

(assert (=> b!4461081 m!5164103))

(declare-fun m!5164105 () Bool)

(assert (=> b!4461081 m!5164105))

(declare-fun m!5164107 () Bool)

(assert (=> b!4461073 m!5164107))

(declare-fun m!5164109 () Bool)

(assert (=> b!4461079 m!5164109))

(declare-fun m!5164111 () Bool)

(assert (=> b!4461074 m!5164111))

(declare-fun m!5164113 () Bool)

(assert (=> start!437472 m!5164113))

(declare-fun m!5164115 () Bool)

(assert (=> start!437472 m!5164115))

(declare-fun m!5164117 () Bool)

(assert (=> b!4461076 m!5164117))

(declare-fun m!5164119 () Bool)

(assert (=> b!4461075 m!5164119))

(declare-fun m!5164121 () Bool)

(assert (=> b!4461075 m!5164121))

(declare-fun m!5164123 () Bool)

(assert (=> b!4461075 m!5164123))

(check-sat (not b!4461079) (not b!4461074) tp_is_empty!27175 (not start!437472) (not b!4461076) (not b!4461081) (not b!4461073) tp_is_empty!27173 (not b!4461078) (not b!4461077) (not b!4461075))
(check-sat)
