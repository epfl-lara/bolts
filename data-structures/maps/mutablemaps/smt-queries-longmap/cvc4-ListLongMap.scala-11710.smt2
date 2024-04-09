; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137060 () Bool)

(assert start!137060)

(declare-fun res!1079189 () Bool)

(declare-fun e!881174 () Bool)

(assert (=> start!137060 (=> (not res!1079189) (not e!881174))))

(declare-datatypes ((B!2604 0))(
  ( (B!2605 (val!19664 Int)) )
))
(declare-datatypes ((tuple2!25594 0))(
  ( (tuple2!25595 (_1!12807 (_ BitVec 64)) (_2!12807 B!2604)) )
))
(declare-datatypes ((List!36945 0))(
  ( (Nil!36942) (Cons!36941 (h!38485 tuple2!25594) (t!51866 List!36945)) )
))
(declare-fun lt!676498 () List!36945)

(declare-fun keyValue!4 () tuple2!25594)

(declare-datatypes ((ListLongMap!22945 0))(
  ( (ListLongMap!22946 (toList!11488 List!36945)) )
))
(declare-fun contains!10475 (ListLongMap!22945 (_ BitVec 64)) Bool)

(assert (=> start!137060 (= res!1079189 (contains!10475 (ListLongMap!22946 lt!676498) (_1!12807 keyValue!4)))))

(declare-datatypes ((Option!887 0))(
  ( (Some!886 (v!22374 B!2604)) (None!885) )
))
(declare-fun getValueByKey!812 (List!36945 (_ BitVec 64)) Option!887)

(assert (=> start!137060 (= (getValueByKey!812 lt!676498 (_1!12807 keyValue!4)) (Some!886 (_2!12807 keyValue!4)))))

(declare-datatypes ((Unit!52168 0))(
  ( (Unit!52169) )
))
(declare-fun lt!676497 () Unit!52168)

(declare-fun lemmaContainsTupThenGetReturnValue!395 (List!36945 (_ BitVec 64) B!2604) Unit!52168)

(assert (=> start!137060 (= lt!676497 (lemmaContainsTupThenGetReturnValue!395 lt!676498 (_1!12807 keyValue!4) (_2!12807 keyValue!4)))))

(declare-fun thiss!201 () ListLongMap!22945)

(declare-fun insertStrictlySorted!615 (List!36945 (_ BitVec 64) B!2604) List!36945)

(assert (=> start!137060 (= lt!676498 (insertStrictlySorted!615 (toList!11488 thiss!201) (_1!12807 keyValue!4) (_2!12807 keyValue!4)))))

(assert (=> start!137060 (not e!881174)))

(declare-fun e!881175 () Bool)

(declare-fun inv!58970 (ListLongMap!22945) Bool)

(assert (=> start!137060 (and (inv!58970 thiss!201) e!881175)))

(declare-fun tp_is_empty!39149 () Bool)

(assert (=> start!137060 tp_is_empty!39149))

(declare-fun b!1579552 () Bool)

(declare-fun contains!10476 (List!36945 tuple2!25594) Bool)

(assert (=> b!1579552 (= e!881174 (contains!10476 lt!676498 keyValue!4))))

(declare-fun b!1579553 () Bool)

(declare-fun tp!114367 () Bool)

(assert (=> b!1579553 (= e!881175 tp!114367)))

(assert (= (and start!137060 res!1079189) b!1579552))

(assert (= start!137060 b!1579553))

(declare-fun m!1451309 () Bool)

(assert (=> start!137060 m!1451309))

(declare-fun m!1451311 () Bool)

(assert (=> start!137060 m!1451311))

(declare-fun m!1451313 () Bool)

(assert (=> start!137060 m!1451313))

(declare-fun m!1451315 () Bool)

(assert (=> start!137060 m!1451315))

(declare-fun m!1451317 () Bool)

(assert (=> start!137060 m!1451317))

(declare-fun m!1451319 () Bool)

(assert (=> b!1579552 m!1451319))

(push 1)

(assert (not start!137060))

(assert (not b!1579552))

(assert (not b!1579553))

(assert tp_is_empty!39149)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1579574 () Bool)

(declare-fun e!881192 () Option!887)

(assert (=> b!1579574 (= e!881192 (Some!886 (_2!12807 (h!38485 lt!676498))))))

(declare-fun b!1579577 () Bool)

(declare-fun e!881193 () Option!887)

(assert (=> b!1579577 (= e!881193 None!885)))

(declare-fun b!1579576 () Bool)

(assert (=> b!1579576 (= e!881193 (getValueByKey!812 (t!51866 lt!676498) (_1!12807 keyValue!4)))))

(declare-fun d!166253 () Bool)

(declare-fun c!146399 () Bool)

(assert (=> d!166253 (= c!146399 (and (is-Cons!36941 lt!676498) (= (_1!12807 (h!38485 lt!676498)) (_1!12807 keyValue!4))))))

(assert (=> d!166253 (= (getValueByKey!812 lt!676498 (_1!12807 keyValue!4)) e!881192)))

(declare-fun b!1579575 () Bool)

(assert (=> b!1579575 (= e!881192 e!881193)))

(declare-fun c!146400 () Bool)

(assert (=> b!1579575 (= c!146400 (and (is-Cons!36941 lt!676498) (not (= (_1!12807 (h!38485 lt!676498)) (_1!12807 keyValue!4)))))))

(assert (= (and d!166253 c!146399) b!1579574))

(assert (= (and d!166253 (not c!146399)) b!1579575))

(assert (= (and b!1579575 c!146400) b!1579576))

(assert (= (and b!1579575 (not c!146400)) b!1579577))

(declare-fun m!1451335 () Bool)

(assert (=> b!1579576 m!1451335))

(assert (=> start!137060 d!166253))

(declare-fun b!1579662 () Bool)

(declare-fun e!881239 () List!36945)

(assert (=> b!1579662 (= e!881239 (insertStrictlySorted!615 (t!51866 (toList!11488 thiss!201)) (_1!12807 keyValue!4) (_2!12807 keyValue!4)))))

(declare-fun c!146434 () Bool)

(declare-fun c!146435 () Bool)

(declare-fun b!1579663 () Bool)

(assert (=> b!1579663 (= e!881239 (ite c!146434 (t!51866 (toList!11488 thiss!201)) (ite c!146435 (Cons!36941 (h!38485 (toList!11488 thiss!201)) (t!51866 (toList!11488 thiss!201))) Nil!36942)))))

(declare-fun b!1579664 () Bool)

(declare-fun e!881240 () List!36945)

(declare-fun call!72466 () List!36945)

(assert (=> b!1579664 (= e!881240 call!72466)))

(declare-fun d!166261 () Bool)

(declare-fun e!881243 () Bool)

(assert (=> d!166261 e!881243))

(declare-fun res!1079222 () Bool)

(assert (=> d!166261 (=> (not res!1079222) (not e!881243))))

(declare-fun lt!676536 () List!36945)

(declare-fun isStrictlySorted!1043 (List!36945) Bool)

(assert (=> d!166261 (= res!1079222 (isStrictlySorted!1043 lt!676536))))

