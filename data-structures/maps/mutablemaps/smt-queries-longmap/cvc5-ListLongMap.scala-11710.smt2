; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137056 () Bool)

(assert start!137056)

(declare-fun res!1079183 () Bool)

(declare-fun e!881162 () Bool)

(assert (=> start!137056 (=> (not res!1079183) (not e!881162))))

(declare-datatypes ((B!2600 0))(
  ( (B!2601 (val!19662 Int)) )
))
(declare-datatypes ((tuple2!25590 0))(
  ( (tuple2!25591 (_1!12805 (_ BitVec 64)) (_2!12805 B!2600)) )
))
(declare-datatypes ((List!36943 0))(
  ( (Nil!36940) (Cons!36939 (h!38483 tuple2!25590) (t!51864 List!36943)) )
))
(declare-fun lt!676485 () List!36943)

(declare-fun keyValue!4 () tuple2!25590)

(declare-datatypes ((ListLongMap!22941 0))(
  ( (ListLongMap!22942 (toList!11486 List!36943)) )
))
(declare-fun contains!10471 (ListLongMap!22941 (_ BitVec 64)) Bool)

(assert (=> start!137056 (= res!1079183 (contains!10471 (ListLongMap!22942 lt!676485) (_1!12805 keyValue!4)))))

(declare-datatypes ((Option!885 0))(
  ( (Some!884 (v!22372 B!2600)) (None!883) )
))
(declare-fun getValueByKey!810 (List!36943 (_ BitVec 64)) Option!885)

(assert (=> start!137056 (= (getValueByKey!810 lt!676485 (_1!12805 keyValue!4)) (Some!884 (_2!12805 keyValue!4)))))

(declare-datatypes ((Unit!52164 0))(
  ( (Unit!52165) )
))
(declare-fun lt!676486 () Unit!52164)

(declare-fun lemmaContainsTupThenGetReturnValue!393 (List!36943 (_ BitVec 64) B!2600) Unit!52164)

(assert (=> start!137056 (= lt!676486 (lemmaContainsTupThenGetReturnValue!393 lt!676485 (_1!12805 keyValue!4) (_2!12805 keyValue!4)))))

(declare-fun thiss!201 () ListLongMap!22941)

(declare-fun insertStrictlySorted!613 (List!36943 (_ BitVec 64) B!2600) List!36943)

(assert (=> start!137056 (= lt!676485 (insertStrictlySorted!613 (toList!11486 thiss!201) (_1!12805 keyValue!4) (_2!12805 keyValue!4)))))

(assert (=> start!137056 (not e!881162)))

(declare-fun e!881163 () Bool)

(declare-fun inv!58968 (ListLongMap!22941) Bool)

(assert (=> start!137056 (and (inv!58968 thiss!201) e!881163)))

(declare-fun tp_is_empty!39145 () Bool)

(assert (=> start!137056 tp_is_empty!39145))

(declare-fun b!1579540 () Bool)

(declare-fun contains!10472 (List!36943 tuple2!25590) Bool)

(assert (=> b!1579540 (= e!881162 (contains!10472 lt!676485 keyValue!4))))

(declare-fun b!1579541 () Bool)

(declare-fun tp!114361 () Bool)

(assert (=> b!1579541 (= e!881163 tp!114361)))

(assert (= (and start!137056 res!1079183) b!1579540))

(assert (= start!137056 b!1579541))

(declare-fun m!1451285 () Bool)

(assert (=> start!137056 m!1451285))

(declare-fun m!1451287 () Bool)

(assert (=> start!137056 m!1451287))

(declare-fun m!1451289 () Bool)

(assert (=> start!137056 m!1451289))

(declare-fun m!1451291 () Bool)

(assert (=> start!137056 m!1451291))

(declare-fun m!1451293 () Bool)

(assert (=> start!137056 m!1451293))

(declare-fun m!1451295 () Bool)

(assert (=> b!1579540 m!1451295))

(push 1)

(assert (not b!1579540))

(assert (not start!137056))

(assert (not b!1579541))

(assert tp_is_empty!39145)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166251 () Bool)

(declare-fun lt!676504 () Bool)

(declare-fun content!831 (List!36943) (Set tuple2!25590))

(assert (=> d!166251 (= lt!676504 (set.member keyValue!4 (content!831 lt!676485)))))

(declare-fun e!881191 () Bool)

(assert (=> d!166251 (= lt!676504 e!881191)))

(declare-fun res!1079200 () Bool)

(assert (=> d!166251 (=> (not res!1079200) (not e!881191))))

(assert (=> d!166251 (= res!1079200 (is-Cons!36939 lt!676485))))

(assert (=> d!166251 (= (contains!10472 lt!676485 keyValue!4) lt!676504)))

(declare-fun b!1579572 () Bool)

(declare-fun e!881190 () Bool)

(assert (=> b!1579572 (= e!881191 e!881190)))

(declare-fun res!1079201 () Bool)

(assert (=> b!1579572 (=> res!1079201 e!881190)))

(assert (=> b!1579572 (= res!1079201 (= (h!38483 lt!676485) keyValue!4))))

(declare-fun b!1579573 () Bool)

(assert (=> b!1579573 (= e!881190 (contains!10472 (t!51864 lt!676485) keyValue!4))))

(assert (= (and d!166251 res!1079200) b!1579572))

(assert (= (and b!1579572 (not res!1079201)) b!1579573))

(declare-fun m!1451329 () Bool)

(assert (=> d!166251 m!1451329))

(declare-fun m!1451331 () Bool)

(assert (=> d!166251 m!1451331))

(declare-fun m!1451333 () Bool)

(assert (=> b!1579573 m!1451333))

(assert (=> b!1579540 d!166251))

(declare-fun d!166259 () Bool)

(declare-fun isStrictlySorted!1042 (List!36943) Bool)

(assert (=> d!166259 (= (inv!58968 thiss!201) (isStrictlySorted!1042 (toList!11486 thiss!201)))))

(declare-fun bs!45746 () Bool)

(assert (= bs!45746 d!166259))

(declare-fun m!1451337 () Bool)

(assert (=> bs!45746 m!1451337))

(assert (=> start!137056 d!166259))

(declare-fun d!166263 () Bool)

(declare-fun e!881204 () Bool)

(assert (=> d!166263 e!881204))

(declare-fun res!1079207 () Bool)

(assert (=> d!166263 (=> res!1079207 e!881204)))

(declare-fun lt!676529 () Bool)

(assert (=> d!166263 (= res!1079207 (not lt!676529))))

(declare-fun lt!676527 () Bool)

(assert (=> d!166263 (= lt!676529 lt!676527)))

(declare-fun lt!676528 () Unit!52164)

(declare-fun e!881205 () Unit!52164)

(assert (=> d!166263 (= lt!676528 e!881205)))

(declare-fun c!146406 () Bool)

(assert (=> d!166263 (= c!146406 lt!676527)))

(declare-fun containsKey!889 (List!36943 (_ BitVec 64)) Bool)

(assert (=> d!166263 (= lt!676527 (containsKey!889 (toList!11486 (ListLongMap!22942 lt!676485)) (_1!12805 keyValue!4)))))

(assert (=> d!166263 (= (contains!10471 (ListLongMap!22942 lt!676485) (_1!12805 keyValue!4)) lt!676529)))

(declare-fun b!1579595 () Bool)

(declare-fun lt!676530 () Unit!52164)

(assert (=> b!1579595 (= e!881205 lt!676530)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!543 (List!36943 (_ BitVec 64)) Unit!52164)

(assert (=> b!1579595 (= lt!676530 (lemmaContainsKeyImpliesGetValueByKeyDefined!543 (toList!11486 (ListLongMap!22942 lt!676485)) (_1!12805 keyValue!4)))))

(declare-fun isDefined!592 (Option!885) Bool)

(assert (=> b!1579595 (isDefined!592 (getValueByKey!810 (toList!11486 (ListLongMap!22942 lt!676485)) (_1!12805 keyValue!4)))))

(declare-fun b!1579596 () Bool)

(declare-fun Unit!52171 () Unit!52164)

(assert (=> b!1579596 (= e!881205 Unit!52171)))

(declare-fun b!1579597 () Bool)

(assert (=> b!1579597 (= e!881204 (isDefined!592 (getValueByKey!810 (toList!11486 (ListLongMap!22942 lt!676485)) (_1!12805 keyValue!4))))))

(assert (= (and d!166263 c!146406) b!1579595))

(assert (= (and d!166263 (not c!146406)) b!1579596))

(assert (= (and d!166263 (not res!1079207)) b!1579597))

(declare-fun m!1451347 () Bool)

(assert (=> d!166263 m!1451347))

(declare-fun m!1451349 () Bool)

(assert (=> b!1579595 m!1451349))

