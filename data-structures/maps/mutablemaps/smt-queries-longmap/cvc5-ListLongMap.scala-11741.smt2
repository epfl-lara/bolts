; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137758 () Bool)

(assert start!137758)

(declare-fun b!1582475 () Bool)

(declare-fun e!883235 () Bool)

(declare-fun tp!114796 () Bool)

(assert (=> b!1582475 (= e!883235 tp!114796)))

(declare-fun b!1582472 () Bool)

(declare-datatypes ((Unit!52202 0))(
  ( (Unit!52203) )
))
(declare-fun e!883236 () Unit!52202)

(declare-fun lt!677021 () Unit!52202)

(assert (=> b!1582472 (= e!883236 lt!677021)))

(declare-datatypes ((B!2786 0))(
  ( (B!2787 (val!19755 Int)) )
))
(declare-datatypes ((tuple2!25842 0))(
  ( (tuple2!25843 (_1!12931 (_ BitVec 64)) (_2!12931 B!2786)) )
))
(declare-datatypes ((List!37036 0))(
  ( (Nil!37033) (Cons!37032 (h!38576 tuple2!25842) (t!51957 List!37036)) )
))
(declare-datatypes ((ListLongMap!22965 0))(
  ( (ListLongMap!22966 (toList!11498 List!37036)) )
))
(declare-fun thiss!185 () ListLongMap!22965)

(declare-fun key!86 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!544 (List!37036 (_ BitVec 64)) Unit!52202)

(assert (=> b!1582472 (= lt!677021 (lemmaContainsKeyImpliesGetValueByKeyDefined!544 (toList!11498 thiss!185) key!86))))

(declare-datatypes ((Option!936 0))(
  ( (Some!935 (v!22459 B!2786)) (None!934) )
))
(declare-fun isDefined!596 (Option!936) Bool)

(declare-fun getValueByKey!828 (List!37036 (_ BitVec 64)) Option!936)

(assert (=> b!1582472 (isDefined!596 (getValueByKey!828 (toList!11498 thiss!185) key!86))))

(declare-fun b!1582473 () Bool)

(declare-fun Unit!52204 () Unit!52202)

(assert (=> b!1582473 (= e!883236 Unit!52204)))

(declare-fun res!1081178 () Bool)

(declare-fun e!883234 () Bool)

(assert (=> start!137758 (=> (not res!1081178) (not e!883234))))

(declare-fun lt!677022 () Bool)

(assert (=> start!137758 (= res!1081178 lt!677022)))

(declare-fun lt!677023 () Unit!52202)

(assert (=> start!137758 (= lt!677023 e!883236)))

(declare-fun c!146595 () Bool)

(assert (=> start!137758 (= c!146595 lt!677022)))

(declare-fun containsKey!962 (List!37036 (_ BitVec 64)) Bool)

(assert (=> start!137758 (= lt!677022 (containsKey!962 (toList!11498 thiss!185) key!86))))

(assert (=> start!137758 e!883234))

(declare-fun inv!59135 (ListLongMap!22965) Bool)

(assert (=> start!137758 (and (inv!59135 thiss!185) e!883235)))

(assert (=> start!137758 true))

(declare-fun b!1582474 () Bool)

(assert (=> b!1582474 (= e!883234 (not (isDefined!596 (getValueByKey!828 (toList!11498 thiss!185) key!86))))))

(assert (= (and start!137758 c!146595) b!1582472))

(assert (= (and start!137758 (not c!146595)) b!1582473))

(assert (= (and start!137758 res!1081178) b!1582474))

(assert (= start!137758 b!1582475))

(declare-fun m!1452863 () Bool)

(assert (=> b!1582472 m!1452863))

(declare-fun m!1452865 () Bool)

(assert (=> b!1582472 m!1452865))

(assert (=> b!1582472 m!1452865))

(declare-fun m!1452867 () Bool)

(assert (=> b!1582472 m!1452867))

(declare-fun m!1452869 () Bool)

(assert (=> start!137758 m!1452869))

(declare-fun m!1452871 () Bool)

(assert (=> start!137758 m!1452871))

(assert (=> b!1582474 m!1452865))

(assert (=> b!1582474 m!1452865))

(assert (=> b!1582474 m!1452867))

(push 1)

(assert (not start!137758))

(assert (not b!1582474))

(assert (not b!1582472))

(assert (not b!1582475))

(check-sat)

(pop 1)

