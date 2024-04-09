; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134176 () Bool)

(assert start!134176)

(declare-fun res!1071299 () Bool)

(declare-fun e!873749 () Bool)

(assert (=> start!134176 (=> (not res!1071299) (not e!873749))))

(declare-datatypes ((B!2456 0))(
  ( (B!2457 (val!19590 Int)) )
))
(declare-datatypes ((tuple2!25446 0))(
  ( (tuple2!25447 (_1!12733 (_ BitVec 64)) (_2!12733 B!2456)) )
))
(declare-datatypes ((List!36826 0))(
  ( (Nil!36823) (Cons!36822 (h!38270 tuple2!25446) (t!51741 List!36826)) )
))
(declare-datatypes ((ListLongMap!22893 0))(
  ( (ListLongMap!22894 (toList!11462 List!36826)) )
))
(declare-fun thiss!194 () ListLongMap!22893)

(declare-fun key!103 () (_ BitVec 64))

(declare-fun contains!10385 (ListLongMap!22893 (_ BitVec 64)) Bool)

(assert (=> start!134176 (= res!1071299 (contains!10385 thiss!194 key!103))))

(assert (=> start!134176 e!873749))

(declare-fun e!873750 () Bool)

(declare-fun inv!58004 (ListLongMap!22893) Bool)

(assert (=> start!134176 (and (inv!58004 thiss!194) e!873750)))

(assert (=> start!134176 true))

(declare-fun b!1567399 () Bool)

(declare-datatypes ((Option!873 0))(
  ( (Some!872 (v!22345 B!2456)) (None!871) )
))
(declare-fun isDefined!582 (Option!873) Bool)

(declare-fun getValueByKey!798 (List!36826 (_ BitVec 64)) Option!873)

(assert (=> b!1567399 (= e!873749 (not (isDefined!582 (getValueByKey!798 (toList!11462 thiss!194) key!103))))))

(declare-fun b!1567400 () Bool)

(declare-fun tp!114004 () Bool)

(assert (=> b!1567400 (= e!873750 tp!114004)))

(assert (= (and start!134176 res!1071299) b!1567399))

(assert (= start!134176 b!1567400))

(declare-fun m!1442305 () Bool)

(assert (=> start!134176 m!1442305))

(declare-fun m!1442307 () Bool)

(assert (=> start!134176 m!1442307))

(declare-fun m!1442309 () Bool)

(assert (=> b!1567399 m!1442309))

(assert (=> b!1567399 m!1442309))

(declare-fun m!1442311 () Bool)

(assert (=> b!1567399 m!1442311))

(push 1)

(assert (not b!1567399))

(assert (not start!134176))

(assert (not b!1567400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163521 () Bool)

(declare-fun isEmpty!1153 (Option!873) Bool)

(assert (=> d!163521 (= (isDefined!582 (getValueByKey!798 (toList!11462 thiss!194) key!103)) (not (isEmpty!1153 (getValueByKey!798 (toList!11462 thiss!194) key!103))))))

(declare-fun bs!45113 () Bool)

(assert (= bs!45113 d!163521))

(assert (=> bs!45113 m!1442309))

(declare-fun m!1442329 () Bool)

(assert (=> bs!45113 m!1442329))

(assert (=> b!1567399 d!163521))

(declare-fun b!1567422 () Bool)

(declare-fun e!873767 () Option!873)

(declare-fun e!873768 () Option!873)

(assert (=> b!1567422 (= e!873767 e!873768)))

(declare-fun c!144447 () Bool)

(assert (=> b!1567422 (= c!144447 (and (is-Cons!36822 (toList!11462 thiss!194)) (not (= (_1!12733 (h!38270 (toList!11462 thiss!194))) key!103))))))

(declare-fun b!1567423 () Bool)

(assert (=> b!1567423 (= e!873768 (getValueByKey!798 (t!51741 (toList!11462 thiss!194)) key!103))))

(declare-fun d!163527 () Bool)

(declare-fun c!144446 () Bool)

(assert (=> d!163527 (= c!144446 (and (is-Cons!36822 (toList!11462 thiss!194)) (= (_1!12733 (h!38270 (toList!11462 thiss!194))) key!103)))))

(assert (=> d!163527 (= (getValueByKey!798 (toList!11462 thiss!194) key!103) e!873767)))

(declare-fun b!1567421 () Bool)

(assert (=> b!1567421 (= e!873767 (Some!872 (_2!12733 (h!38270 (toList!11462 thiss!194)))))))

(declare-fun b!1567424 () Bool)

(assert (=> b!1567424 (= e!873768 None!871)))

(assert (= (and d!163527 c!144446) b!1567421))

(assert (= (and d!163527 (not c!144446)) b!1567422))

(assert (= (and b!1567422 c!144447) b!1567423))

(assert (= (and b!1567422 (not c!144447)) b!1567424))

(declare-fun m!1442331 () Bool)

(assert (=> b!1567423 m!1442331))

(assert (=> b!1567399 d!163527))

(declare-fun d!163529 () Bool)

(declare-fun e!873793 () Bool)

(assert (=> d!163529 e!873793))

(declare-fun res!1071314 () Bool)

(assert (=> d!163529 (=> res!1071314 e!873793)))

(declare-fun lt!672943 () Bool)

(assert (=> d!163529 (= res!1071314 (not lt!672943))))

(declare-fun lt!672942 () Bool)

(assert (=> d!163529 (= lt!672943 lt!672942)))

(declare-datatypes ((Unit!52009 0))(
  ( (Unit!52010) )
))
(declare-fun lt!672941 () Unit!52009)

(declare-fun e!873794 () Unit!52009)

(assert (=> d!163529 (= lt!672941 e!873794)))

(declare-fun c!144464 () Bool)

(assert (=> d!163529 (= c!144464 lt!672942)))

(declare-fun containsKey!854 (List!36826 (_ BitVec 64)) Bool)

(assert (=> d!163529 (= lt!672942 (containsKey!854 (toList!11462 thiss!194) key!103))))

(assert (=> d!163529 (= (contains!10385 thiss!194 key!103) lt!672943)))

(declare-fun b!1567465 () Bool)

(declare-fun lt!672940 () Unit!52009)

(assert (=> b!1567465 (= e!873794 lt!672940)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!535 (List!36826 (_ BitVec 64)) Unit!52009)

(assert (=> b!1567465 (= lt!672940 (lemmaContainsKeyImpliesGetValueByKeyDefined!535 (toList!11462 thiss!194) key!103))))

(assert (=> b!1567465 (isDefined!582 (getValueByKey!798 (toList!11462 thiss!194) key!103))))

(declare-fun b!1567466 () Bool)

(declare-fun Unit!52011 () Unit!52009)

(assert (=> b!1567466 (= e!873794 Unit!52011)))

(declare-fun b!1567467 () Bool)

(assert (=> b!1567467 (= e!873793 (isDefined!582 (getValueByKey!798 (toList!11462 thiss!194) key!103)))))

(assert (= (and d!163529 c!144464) b!1567465))

(assert (= (and d!163529 (not c!144464)) b!1567466))

(assert (= (and d!163529 (not res!1071314)) b!1567467))

(declare-fun m!1442349 () Bool)

(assert (=> d!163529 m!1442349))

(declare-fun m!1442351 () Bool)

(assert (=> b!1567465 m!1442351))

(assert (=> b!1567465 m!1442309))

(assert (=> b!1567465 m!1442309))

(assert (=> b!1567465 m!1442311))

(assert (=> b!1567467 m!1442309))

(assert (=> b!1567467 m!1442309))

(assert (=> b!1567467 m!1442311))

(assert (=> start!134176 d!163529))

(declare-fun d!163543 () Bool)

(declare-fun isStrictlySorted!989 (List!36826) Bool)

(assert (=> d!163543 (= (inv!58004 thiss!194) (isStrictlySorted!989 (toList!11462 thiss!194)))))

(declare-fun bs!45118 () Bool)

(assert (= bs!45118 d!163543))

(declare-fun m!1442353 () Bool)

(assert (=> bs!45118 m!1442353))

(assert (=> start!134176 d!163543))

(declare-fun b!1567488 () Bool)

(declare-fun e!873805 () Bool)

(declare-fun tp_is_empty!39007 () Bool)

(declare-fun tp!114015 () Bool)

(assert (=> b!1567488 (= e!873805 (and tp_is_empty!39007 tp!114015))))

(assert (=> b!1567400 (= tp!114004 e!873805)))

(assert (= (and b!1567400 (is-Cons!36822 (toList!11462 thiss!194))) b!1567488))

(push 1)

