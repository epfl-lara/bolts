; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137712 () Bool)

(assert start!137712)

(declare-datatypes ((B!2770 0))(
  ( (B!2771 (val!19747 Int)) )
))
(declare-datatypes ((tuple2!25826 0))(
  ( (tuple2!25827 (_1!12923 (_ BitVec 64)) (_2!12923 B!2770)) )
))
(declare-datatypes ((List!37028 0))(
  ( (Nil!37025) (Cons!37024 (h!38568 tuple2!25826) (t!51949 List!37028)) )
))
(declare-datatypes ((ListLongMap!22949 0))(
  ( (ListLongMap!22950 (toList!11490 List!37028)) )
))
(declare-fun thiss!185 () ListLongMap!22949)

(declare-fun isStrictlySorted!1114 (List!37028) Bool)

(assert (=> start!137712 (not (isStrictlySorted!1114 (toList!11490 thiss!185)))))

(declare-fun e!883125 () Bool)

(declare-fun inv!59112 (ListLongMap!22949) Bool)

(assert (=> start!137712 (and (inv!59112 thiss!185) e!883125)))

(declare-fun b!1582349 () Bool)

(declare-fun tp!114754 () Bool)

(assert (=> b!1582349 (= e!883125 tp!114754)))

(assert (= start!137712 b!1582349))

(declare-fun m!1452813 () Bool)

(assert (=> start!137712 m!1452813))

(declare-fun m!1452815 () Bool)

(assert (=> start!137712 m!1452815))

(check-sat (not start!137712) (not b!1582349))
(check-sat)
(get-model)

(declare-fun d!166929 () Bool)

(declare-fun res!1081125 () Bool)

(declare-fun e!883141 () Bool)

(assert (=> d!166929 (=> res!1081125 e!883141)))

(get-info :version)

(assert (=> d!166929 (= res!1081125 (or ((_ is Nil!37025) (toList!11490 thiss!185)) ((_ is Nil!37025) (t!51949 (toList!11490 thiss!185)))))))

(assert (=> d!166929 (= (isStrictlySorted!1114 (toList!11490 thiss!185)) e!883141)))

(declare-fun b!1582365 () Bool)

(declare-fun e!883142 () Bool)

(assert (=> b!1582365 (= e!883141 e!883142)))

(declare-fun res!1081126 () Bool)

(assert (=> b!1582365 (=> (not res!1081126) (not e!883142))))

(assert (=> b!1582365 (= res!1081126 (bvslt (_1!12923 (h!38568 (toList!11490 thiss!185))) (_1!12923 (h!38568 (t!51949 (toList!11490 thiss!185))))))))

(declare-fun b!1582366 () Bool)

(assert (=> b!1582366 (= e!883142 (isStrictlySorted!1114 (t!51949 (toList!11490 thiss!185))))))

(assert (= (and d!166929 (not res!1081125)) b!1582365))

(assert (= (and b!1582365 res!1081126) b!1582366))

(declare-fun m!1452821 () Bool)

(assert (=> b!1582366 m!1452821))

(assert (=> start!137712 d!166929))

(declare-fun d!166935 () Bool)

(assert (=> d!166935 (= (inv!59112 thiss!185) (isStrictlySorted!1114 (toList!11490 thiss!185)))))

(declare-fun bs!45835 () Bool)

(assert (= bs!45835 d!166935))

(assert (=> bs!45835 m!1452813))

(assert (=> start!137712 d!166935))

(declare-fun b!1582381 () Bool)

(declare-fun e!883151 () Bool)

(declare-fun tp_is_empty!39313 () Bool)

(declare-fun tp!114762 () Bool)

(assert (=> b!1582381 (= e!883151 (and tp_is_empty!39313 tp!114762))))

(assert (=> b!1582349 (= tp!114754 e!883151)))

(assert (= (and b!1582349 ((_ is Cons!37024) (toList!11490 thiss!185))) b!1582381))

(check-sat (not d!166935) (not b!1582366) (not b!1582381) tp_is_empty!39313)
(check-sat)
