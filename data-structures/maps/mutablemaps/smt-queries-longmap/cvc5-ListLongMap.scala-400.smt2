; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7468 () Bool)

(assert start!7468)

(declare-fun res!27858 () Bool)

(declare-fun e!30768 () Bool)

(assert (=> start!7468 (=> (not res!27858) (not e!30768))))

(declare-datatypes ((B!914 0))(
  ( (B!915 (val!1077 Int)) )
))
(declare-datatypes ((tuple2!1740 0))(
  ( (tuple2!1741 (_1!880 (_ BitVec 64)) (_2!880 B!914)) )
))
(declare-datatypes ((List!1293 0))(
  ( (Nil!1290) (Cons!1289 (h!1869 tuple2!1740) (t!4329 List!1293)) )
))
(declare-datatypes ((ListLongMap!1237 0))(
  ( (ListLongMap!1238 (toList!634 List!1293)) )
))
(declare-fun lm!267 () ListLongMap!1237)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!596 (ListLongMap!1237 (_ BitVec 64)) Bool)

(assert (=> start!7468 (= res!27858 (not (contains!596 lm!267 key!657)))))

(assert (=> start!7468 e!30768))

(declare-fun e!30769 () Bool)

(declare-fun inv!2220 (ListLongMap!1237) Bool)

(assert (=> start!7468 (and (inv!2220 lm!267) e!30769)))

(assert (=> start!7468 true))

(declare-fun b!47969 () Bool)

(declare-fun isStrictlySorted!243 (List!1293) Bool)

(assert (=> b!47969 (= e!30768 (not (isStrictlySorted!243 (toList!634 lm!267))))))

(declare-fun b!47970 () Bool)

(declare-fun tp!6311 () Bool)

(assert (=> b!47970 (= e!30769 tp!6311)))

(assert (= (and start!7468 res!27858) b!47969))

(assert (= start!7468 b!47970))

(declare-fun m!42003 () Bool)

(assert (=> start!7468 m!42003))

(declare-fun m!42005 () Bool)

(assert (=> start!7468 m!42005))

(declare-fun m!42007 () Bool)

(assert (=> b!47969 m!42007))

(push 1)

(assert (not b!47969))

(assert (not start!7468))

(assert (not b!47970))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9533 () Bool)

(declare-fun res!27869 () Bool)

(declare-fun e!30786 () Bool)

(assert (=> d!9533 (=> res!27869 e!30786)))

(assert (=> d!9533 (= res!27869 (or (is-Nil!1290 (toList!634 lm!267)) (is-Nil!1290 (t!4329 (toList!634 lm!267)))))))

(assert (=> d!9533 (= (isStrictlySorted!243 (toList!634 lm!267)) e!30786)))

(declare-fun b!47987 () Bool)

(declare-fun e!30787 () Bool)

(assert (=> b!47987 (= e!30786 e!30787)))

(declare-fun res!27870 () Bool)

(assert (=> b!47987 (=> (not res!27870) (not e!30787))))

(assert (=> b!47987 (= res!27870 (bvslt (_1!880 (h!1869 (toList!634 lm!267))) (_1!880 (h!1869 (t!4329 (toList!634 lm!267))))))))

(declare-fun b!47988 () Bool)

(assert (=> b!47988 (= e!30787 (isStrictlySorted!243 (t!4329 (toList!634 lm!267))))))

(assert (= (and d!9533 (not res!27869)) b!47987))

(assert (= (and b!47987 res!27870) b!47988))

(declare-fun m!42021 () Bool)

(assert (=> b!47988 m!42021))

(assert (=> b!47969 d!9533))

(declare-fun d!9537 () Bool)

(declare-fun e!30805 () Bool)

(assert (=> d!9537 e!30805))

(declare-fun res!27879 () Bool)

(assert (=> d!9537 (=> res!27879 e!30805)))

(declare-fun lt!20521 () Bool)

(assert (=> d!9537 (= res!27879 (not lt!20521))))

(declare-fun lt!20522 () Bool)

(assert (=> d!9537 (= lt!20521 lt!20522)))

(declare-datatypes ((Unit!1342 0))(
  ( (Unit!1343) )
))
(declare-fun lt!20523 () Unit!1342)

(declare-fun e!30804 () Unit!1342)

(assert (=> d!9537 (= lt!20523 e!30804)))

(declare-fun c!6468 () Bool)

(assert (=> d!9537 (= c!6468 lt!20522)))

(declare-fun containsKey!97 (List!1293 (_ BitVec 64)) Bool)

(assert (=> d!9537 (= lt!20522 (containsKey!97 (toList!634 lm!267) key!657))))

(assert (=> d!9537 (= (contains!596 lm!267 key!657) lt!20521)))

(declare-fun b!48013 () Bool)

(declare-fun lt!20520 () Unit!1342)

(assert (=> b!48013 (= e!30804 lt!20520)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!67 (List!1293 (_ BitVec 64)) Unit!1342)

(assert (=> b!48013 (= lt!20520 (lemmaContainsKeyImpliesGetValueByKeyDefined!67 (toList!634 lm!267) key!657))))

(declare-datatypes ((Option!117 0))(
  ( (Some!116 (v!2133 B!914)) (None!115) )
))
(declare-fun isDefined!68 (Option!117) Bool)

(declare-fun getValueByKey!111 (List!1293 (_ BitVec 64)) Option!117)

(assert (=> b!48013 (isDefined!68 (getValueByKey!111 (toList!634 lm!267) key!657))))

(declare-fun b!48014 () Bool)

(declare-fun Unit!1345 () Unit!1342)

(assert (=> b!48014 (= e!30804 Unit!1345)))

(declare-fun b!48015 () Bool)

(assert (=> b!48015 (= e!30805 (isDefined!68 (getValueByKey!111 (toList!634 lm!267) key!657)))))

(assert (= (and d!9537 c!6468) b!48013))

(assert (= (and d!9537 (not c!6468)) b!48014))

(assert (= (and d!9537 (not res!27879)) b!48015))

(declare-fun m!42039 () Bool)

(assert (=> d!9537 m!42039))

(declare-fun m!42041 () Bool)

(assert (=> b!48013 m!42041))

(declare-fun m!42043 () Bool)

(assert (=> b!48013 m!42043))

(assert (=> b!48013 m!42043))

(declare-fun m!42045 () Bool)

(assert (=> b!48013 m!42045))

(assert (=> b!48015 m!42043))

(assert (=> b!48015 m!42043))

(assert (=> b!48015 m!42045))

(assert (=> start!7468 d!9537))

(declare-fun d!9547 () Bool)

(assert (=> d!9547 (= (inv!2220 lm!267) (isStrictlySorted!243 (toList!634 lm!267)))))

(declare-fun bs!2236 () Bool)

(assert (= bs!2236 d!9547))

(assert (=> bs!2236 m!42007))

(assert (=> start!7468 d!9547))

(declare-fun b!48041 () Bool)

