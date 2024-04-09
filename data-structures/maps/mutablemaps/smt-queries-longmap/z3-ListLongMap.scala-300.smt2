; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5238 () Bool)

(assert start!5238)

(declare-fun res!22966 () Bool)

(declare-fun e!24184 () Bool)

(assert (=> start!5238 (=> (not res!22966) (not e!24184))))

(declare-datatypes ((B!790 0))(
  ( (B!791 (val!895 Int)) )
))
(declare-fun b!99 () B!790)

(declare-datatypes ((tuple2!1454 0))(
  ( (tuple2!1455 (_1!737 (_ BitVec 64)) (_2!737 B!790)) )
))
(declare-datatypes ((List!1021 0))(
  ( (Nil!1018) (Cons!1017 (h!1585 tuple2!1454) (t!3862 List!1021)) )
))
(declare-datatypes ((ListLongMap!1035 0))(
  ( (ListLongMap!1036 (toList!533 List!1021)) )
))
(declare-fun lm!264 () ListLongMap!1035)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!481 (List!1021 tuple2!1454) Bool)

(assert (=> start!5238 (= res!22966 (contains!481 (toList!533 lm!264) (tuple2!1455 a!526 b!99)))))

(assert (=> start!5238 e!24184))

(declare-fun e!24186 () Bool)

(declare-fun inv!1700 (ListLongMap!1035) Bool)

(assert (=> start!5238 (and (inv!1700 lm!264) e!24186)))

(assert (=> start!5238 true))

(declare-fun tp_is_empty!1713 () Bool)

(assert (=> start!5238 tp_is_empty!1713))

(declare-fun b!38050 () Bool)

(declare-fun e!24185 () Bool)

(assert (=> b!38050 (= e!24184 (not e!24185))))

(declare-fun res!22965 () Bool)

(assert (=> b!38050 (=> res!22965 e!24185)))

(declare-fun isStrictlySorted!197 (List!1021) Bool)

(assert (=> b!38050 (= res!22965 (not (isStrictlySorted!197 (toList!533 lm!264))))))

(declare-fun containsKey!63 (List!1021 (_ BitVec 64)) Bool)

(assert (=> b!38050 (containsKey!63 (toList!533 lm!264) a!526)))

(declare-datatypes ((Unit!878 0))(
  ( (Unit!879) )
))
(declare-fun lt!13983 () Unit!878)

(declare-fun lemmaContainsTupleThenContainsKey!8 (List!1021 (_ BitVec 64) B!790) Unit!878)

(assert (=> b!38050 (= lt!13983 (lemmaContainsTupleThenContainsKey!8 (toList!533 lm!264) a!526 b!99))))

(declare-fun b!38051 () Bool)

(assert (=> b!38051 (= e!24185 true)))

(declare-datatypes ((Option!99 0))(
  ( (Some!98 (v!1973 B!790)) (None!97) )
))
(declare-fun getValueByKey!93 (List!1021 (_ BitVec 64)) Option!99)

(assert (=> b!38051 (= (getValueByKey!93 (toList!533 lm!264) a!526) (Some!98 b!99))))

(declare-fun lt!13984 () Unit!878)

(declare-fun lemmaContainsTupThenGetReturnValue!21 (List!1021 (_ BitVec 64) B!790) Unit!878)

(assert (=> b!38051 (= lt!13984 (lemmaContainsTupThenGetReturnValue!21 (toList!533 lm!264) a!526 b!99))))

(declare-fun b!38052 () Bool)

(declare-fun tp!5645 () Bool)

(assert (=> b!38052 (= e!24186 tp!5645)))

(assert (= (and start!5238 res!22966) b!38050))

(assert (= (and b!38050 (not res!22965)) b!38051))

(assert (= start!5238 b!38052))

(declare-fun m!30739 () Bool)

(assert (=> start!5238 m!30739))

(declare-fun m!30741 () Bool)

(assert (=> start!5238 m!30741))

(declare-fun m!30743 () Bool)

(assert (=> b!38050 m!30743))

(declare-fun m!30745 () Bool)

(assert (=> b!38050 m!30745))

(declare-fun m!30747 () Bool)

(assert (=> b!38050 m!30747))

(declare-fun m!30749 () Bool)

(assert (=> b!38051 m!30749))

(declare-fun m!30751 () Bool)

(assert (=> b!38051 m!30751))

(check-sat (not start!5238) (not b!38051) (not b!38052) tp_is_empty!1713 (not b!38050))
(check-sat)
