; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136968 () Bool)

(assert start!136968)

(declare-datatypes ((B!2578 0))(
  ( (B!2579 (val!19651 Int)) )
))
(declare-datatypes ((tuple2!25568 0))(
  ( (tuple2!25569 (_1!12794 (_ BitVec 64)) (_2!12794 B!2578)) )
))
(declare-datatypes ((List!36932 0))(
  ( (Nil!36929) (Cons!36928 (h!38472 tuple2!25568) (t!51853 List!36932)) )
))
(declare-datatypes ((ListLongMap!22919 0))(
  ( (ListLongMap!22920 (toList!11475 List!36932)) )
))
(declare-fun thiss!201 () ListLongMap!22919)

(declare-fun isStrictlySorted!1030 (List!36932) Bool)

(assert (=> start!136968 (not (isStrictlySorted!1030 (toList!11475 thiss!201)))))

(declare-fun e!880893 () Bool)

(declare-fun inv!58937 (ListLongMap!22919) Bool)

(assert (=> start!136968 (and (inv!58937 thiss!201) e!880893)))

(declare-fun b!1579118 () Bool)

(declare-fun tp!114301 () Bool)

(assert (=> b!1579118 (= e!880893 tp!114301)))

(assert (= start!136968 b!1579118))

(declare-fun m!1451043 () Bool)

(assert (=> start!136968 m!1451043))

(declare-fun m!1451045 () Bool)

(assert (=> start!136968 m!1451045))

(check-sat (not start!136968) (not b!1579118))
(check-sat)
(get-model)

(declare-fun d!166169 () Bool)

(declare-fun res!1079033 () Bool)

(declare-fun e!880911 () Bool)

(assert (=> d!166169 (=> res!1079033 e!880911)))

(get-info :version)

(assert (=> d!166169 (= res!1079033 (or ((_ is Nil!36929) (toList!11475 thiss!201)) ((_ is Nil!36929) (t!51853 (toList!11475 thiss!201)))))))

(assert (=> d!166169 (= (isStrictlySorted!1030 (toList!11475 thiss!201)) e!880911)))

(declare-fun b!1579136 () Bool)

(declare-fun e!880912 () Bool)

(assert (=> b!1579136 (= e!880911 e!880912)))

(declare-fun res!1079034 () Bool)

(assert (=> b!1579136 (=> (not res!1079034) (not e!880912))))

(assert (=> b!1579136 (= res!1079034 (bvslt (_1!12794 (h!38472 (toList!11475 thiss!201))) (_1!12794 (h!38472 (t!51853 (toList!11475 thiss!201))))))))

(declare-fun b!1579137 () Bool)

(assert (=> b!1579137 (= e!880912 (isStrictlySorted!1030 (t!51853 (toList!11475 thiss!201))))))

(assert (= (and d!166169 (not res!1079033)) b!1579136))

(assert (= (and b!1579136 res!1079034) b!1579137))

(declare-fun m!1451053 () Bool)

(assert (=> b!1579137 m!1451053))

(assert (=> start!136968 d!166169))

(declare-fun d!166177 () Bool)

(assert (=> d!166177 (= (inv!58937 thiss!201) (isStrictlySorted!1030 (toList!11475 thiss!201)))))

(declare-fun bs!45722 () Bool)

(assert (= bs!45722 d!166177))

(assert (=> bs!45722 m!1451043))

(assert (=> start!136968 d!166177))

(declare-fun b!1579149 () Bool)

(declare-fun e!880920 () Bool)

(declare-fun tp_is_empty!39123 () Bool)

(declare-fun tp!114310 () Bool)

(assert (=> b!1579149 (= e!880920 (and tp_is_empty!39123 tp!114310))))

(assert (=> b!1579118 (= tp!114301 e!880920)))

(assert (= (and b!1579118 ((_ is Cons!36928) (toList!11475 thiss!201))) b!1579149))

(check-sat (not b!1579137) (not d!166177) (not b!1579149) tp_is_empty!39123)
(check-sat)
