; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134178 () Bool)

(assert start!134178)

(declare-fun res!1071302 () Bool)

(declare-fun e!873755 () Bool)

(assert (=> start!134178 (=> (not res!1071302) (not e!873755))))

(declare-datatypes ((B!2458 0))(
  ( (B!2459 (val!19591 Int)) )
))
(declare-datatypes ((tuple2!25448 0))(
  ( (tuple2!25449 (_1!12734 (_ BitVec 64)) (_2!12734 B!2458)) )
))
(declare-datatypes ((List!36827 0))(
  ( (Nil!36824) (Cons!36823 (h!38271 tuple2!25448) (t!51742 List!36827)) )
))
(declare-datatypes ((ListLongMap!22895 0))(
  ( (ListLongMap!22896 (toList!11463 List!36827)) )
))
(declare-fun thiss!194 () ListLongMap!22895)

(declare-fun key!103 () (_ BitVec 64))

(declare-fun contains!10386 (ListLongMap!22895 (_ BitVec 64)) Bool)

(assert (=> start!134178 (= res!1071302 (contains!10386 thiss!194 key!103))))

(assert (=> start!134178 e!873755))

(declare-fun e!873756 () Bool)

(declare-fun inv!58005 (ListLongMap!22895) Bool)

(assert (=> start!134178 (and (inv!58005 thiss!194) e!873756)))

(assert (=> start!134178 true))

(declare-fun b!1567405 () Bool)

(declare-datatypes ((Option!874 0))(
  ( (Some!873 (v!22346 B!2458)) (None!872) )
))
(declare-fun isDefined!583 (Option!874) Bool)

(declare-fun getValueByKey!799 (List!36827 (_ BitVec 64)) Option!874)

(assert (=> b!1567405 (= e!873755 (not (isDefined!583 (getValueByKey!799 (toList!11463 thiss!194) key!103))))))

(declare-fun b!1567406 () Bool)

(declare-fun tp!114007 () Bool)

(assert (=> b!1567406 (= e!873756 tp!114007)))

(assert (= (and start!134178 res!1071302) b!1567405))

(assert (= start!134178 b!1567406))

(declare-fun m!1442313 () Bool)

(assert (=> start!134178 m!1442313))

(declare-fun m!1442315 () Bool)

(assert (=> start!134178 m!1442315))

(declare-fun m!1442317 () Bool)

(assert (=> b!1567405 m!1442317))

(assert (=> b!1567405 m!1442317))

(declare-fun m!1442319 () Bool)

(assert (=> b!1567405 m!1442319))

(check-sat (not start!134178) (not b!1567405) (not b!1567406))
(check-sat)
(get-model)

(declare-fun d!163523 () Bool)

(declare-fun e!873777 () Bool)

(assert (=> d!163523 e!873777))

(declare-fun res!1071310 () Bool)

(assert (=> d!163523 (=> res!1071310 e!873777)))

(declare-fun lt!672925 () Bool)

(assert (=> d!163523 (= res!1071310 (not lt!672925))))

(declare-fun lt!672924 () Bool)

(assert (=> d!163523 (= lt!672925 lt!672924)))

(declare-datatypes ((Unit!52003 0))(
  ( (Unit!52004) )
))
(declare-fun lt!672926 () Unit!52003)

(declare-fun e!873778 () Unit!52003)

(assert (=> d!163523 (= lt!672926 e!873778)))

(declare-fun c!144452 () Bool)

(assert (=> d!163523 (= c!144452 lt!672924)))

(declare-fun containsKey!852 (List!36827 (_ BitVec 64)) Bool)

(assert (=> d!163523 (= lt!672924 (containsKey!852 (toList!11463 thiss!194) key!103))))

(assert (=> d!163523 (= (contains!10386 thiss!194 key!103) lt!672925)))

(declare-fun b!1567437 () Bool)

(declare-fun lt!672927 () Unit!52003)

(assert (=> b!1567437 (= e!873778 lt!672927)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!533 (List!36827 (_ BitVec 64)) Unit!52003)

(assert (=> b!1567437 (= lt!672927 (lemmaContainsKeyImpliesGetValueByKeyDefined!533 (toList!11463 thiss!194) key!103))))

(assert (=> b!1567437 (isDefined!583 (getValueByKey!799 (toList!11463 thiss!194) key!103))))

(declare-fun b!1567438 () Bool)

(declare-fun Unit!52007 () Unit!52003)

(assert (=> b!1567438 (= e!873778 Unit!52007)))

(declare-fun b!1567439 () Bool)

(assert (=> b!1567439 (= e!873777 (isDefined!583 (getValueByKey!799 (toList!11463 thiss!194) key!103)))))

(assert (= (and d!163523 c!144452) b!1567437))

(assert (= (and d!163523 (not c!144452)) b!1567438))

(assert (= (and d!163523 (not res!1071310)) b!1567439))

(declare-fun m!1442333 () Bool)

(assert (=> d!163523 m!1442333))

(declare-fun m!1442335 () Bool)

(assert (=> b!1567437 m!1442335))

(assert (=> b!1567437 m!1442317))

(assert (=> b!1567437 m!1442317))

(assert (=> b!1567437 m!1442319))

(assert (=> b!1567439 m!1442317))

(assert (=> b!1567439 m!1442317))

(assert (=> b!1567439 m!1442319))

(assert (=> start!134178 d!163523))

(declare-fun d!163531 () Bool)

(declare-fun isStrictlySorted!987 (List!36827) Bool)

(assert (=> d!163531 (= (inv!58005 thiss!194) (isStrictlySorted!987 (toList!11463 thiss!194)))))

(declare-fun bs!45114 () Bool)

(assert (= bs!45114 d!163531))

(declare-fun m!1442341 () Bool)

(assert (=> bs!45114 m!1442341))

(assert (=> start!134178 d!163531))

(declare-fun d!163535 () Bool)

(declare-fun isEmpty!1154 (Option!874) Bool)

(assert (=> d!163535 (= (isDefined!583 (getValueByKey!799 (toList!11463 thiss!194) key!103)) (not (isEmpty!1154 (getValueByKey!799 (toList!11463 thiss!194) key!103))))))

(declare-fun bs!45116 () Bool)

(assert (= bs!45116 d!163535))

(assert (=> bs!45116 m!1442317))

(declare-fun m!1442345 () Bool)

(assert (=> bs!45116 m!1442345))

(assert (=> b!1567405 d!163535))

(declare-fun b!1567470 () Bool)

(declare-fun e!873796 () Option!874)

(assert (=> b!1567470 (= e!873796 (getValueByKey!799 (t!51742 (toList!11463 thiss!194)) key!103))))

(declare-fun b!1567468 () Bool)

(declare-fun e!873795 () Option!874)

(assert (=> b!1567468 (= e!873795 (Some!873 (_2!12734 (h!38271 (toList!11463 thiss!194)))))))

(declare-fun b!1567471 () Bool)

(assert (=> b!1567471 (= e!873796 None!872)))

(declare-fun d!163539 () Bool)

(declare-fun c!144465 () Bool)

(get-info :version)

(assert (=> d!163539 (= c!144465 (and ((_ is Cons!36823) (toList!11463 thiss!194)) (= (_1!12734 (h!38271 (toList!11463 thiss!194))) key!103)))))

(assert (=> d!163539 (= (getValueByKey!799 (toList!11463 thiss!194) key!103) e!873795)))

(declare-fun b!1567469 () Bool)

(assert (=> b!1567469 (= e!873795 e!873796)))

(declare-fun c!144466 () Bool)

(assert (=> b!1567469 (= c!144466 (and ((_ is Cons!36823) (toList!11463 thiss!194)) (not (= (_1!12734 (h!38271 (toList!11463 thiss!194))) key!103))))))

(assert (= (and d!163539 c!144465) b!1567468))

(assert (= (and d!163539 (not c!144465)) b!1567469))

(assert (= (and b!1567469 c!144466) b!1567470))

(assert (= (and b!1567469 (not c!144466)) b!1567471))

(declare-fun m!1442355 () Bool)

(assert (=> b!1567470 m!1442355))

(assert (=> b!1567405 d!163539))

(declare-fun b!1567489 () Bool)

(declare-fun e!873806 () Bool)

(declare-fun tp_is_empty!39009 () Bool)

(declare-fun tp!114018 () Bool)

(assert (=> b!1567489 (= e!873806 (and tp_is_empty!39009 tp!114018))))

(assert (=> b!1567406 (= tp!114007 e!873806)))

(assert (= (and b!1567406 ((_ is Cons!36823) (toList!11463 thiss!194))) b!1567489))

(check-sat (not d!163531) (not b!1567437) (not b!1567470) (not b!1567439) (not d!163535) tp_is_empty!39009 (not b!1567489) (not d!163523))
(check-sat)
