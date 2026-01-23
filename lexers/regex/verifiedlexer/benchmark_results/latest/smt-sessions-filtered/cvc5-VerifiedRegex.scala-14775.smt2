; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759416 () Bool)

(assert start!759416)

(declare-fun res!3188335 () Bool)

(declare-fun e!4749323 () Bool)

(assert (=> start!759416 (=> (not res!3188335) (not e!4749323))))

(declare-datatypes ((K!23006 0))(
  ( (K!23007 (val!33077 Int)) )
))
(declare-datatypes ((B!4491 0))(
  ( (B!4492 (val!33078 Int)) )
))
(declare-datatypes ((tuple2!71042 0))(
  ( (tuple2!71043 (_1!38824 K!23006) (_2!38824 B!4491)) )
))
(declare-datatypes ((List!75776 0))(
  ( (Nil!75650) (Cons!75650 (h!82098 tuple2!71042) (t!391548 List!75776)) )
))
(declare-datatypes ((ListMap!7413 0))(
  ( (ListMap!7414 (toList!11981 List!75776)) )
))
(declare-fun thiss!41785 () ListMap!7413)

(declare-fun size!43768 (List!75776) Int)

(assert (=> start!759416 (= res!3188335 (< (size!43768 (toList!11981 thiss!41785)) 2147483647))))

(assert (=> start!759416 e!4749323))

(declare-fun e!4749324 () Bool)

(declare-fun inv!97480 (ListMap!7413) Bool)

(assert (=> start!759416 (and (inv!97480 thiss!41785) e!4749324)))

(declare-fun b!8059030 () Bool)

(declare-fun isEmpty!43038 (List!75776) Bool)

(declare-fun size!43769 (ListMap!7413) (_ BitVec 32))

(assert (=> b!8059030 (= e!4749323 (not (= (isEmpty!43038 (toList!11981 thiss!41785)) (= (size!43769 thiss!41785) #b00000000000000000000000000000000))))))

(declare-fun b!8059031 () Bool)

(declare-fun tp!2414341 () Bool)

(assert (=> b!8059031 (= e!4749324 tp!2414341)))

(assert (= (and start!759416 res!3188335) b!8059030))

(assert (= start!759416 b!8059031))

(declare-fun m!8412352 () Bool)

(assert (=> start!759416 m!8412352))

(declare-fun m!8412354 () Bool)

(assert (=> start!759416 m!8412354))

(declare-fun m!8412356 () Bool)

(assert (=> b!8059030 m!8412356))

(declare-fun m!8412358 () Bool)

(assert (=> b!8059030 m!8412358))

(push 1)

(assert (not b!8059030))

(assert (not start!759416))

(assert (not b!8059031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399276 () Bool)

(assert (=> d!2399276 (= (isEmpty!43038 (toList!11981 thiss!41785)) (is-Nil!75650 (toList!11981 thiss!41785)))))

(assert (=> b!8059030 d!2399276))

(declare-fun d!2399278 () Bool)

(declare-fun intSize!5 (List!75776) (_ BitVec 32))

(assert (=> d!2399278 (= (size!43769 thiss!41785) (intSize!5 (toList!11981 thiss!41785)))))

(declare-fun bs!1973544 () Bool)

(assert (= bs!1973544 d!2399278))

(declare-fun m!8412368 () Bool)

(assert (=> bs!1973544 m!8412368))

(assert (=> b!8059030 d!2399278))

(declare-fun d!2399280 () Bool)

(declare-fun lt!2732535 () Int)

(assert (=> d!2399280 (>= lt!2732535 0)))

(declare-fun e!4749333 () Int)

(assert (=> d!2399280 (= lt!2732535 e!4749333)))

(declare-fun c!1476822 () Bool)

(assert (=> d!2399280 (= c!1476822 (is-Nil!75650 (toList!11981 thiss!41785)))))

(assert (=> d!2399280 (= (size!43768 (toList!11981 thiss!41785)) lt!2732535)))

(declare-fun b!8059042 () Bool)

(assert (=> b!8059042 (= e!4749333 0)))

(declare-fun b!8059043 () Bool)

(assert (=> b!8059043 (= e!4749333 (+ 1 (size!43768 (t!391548 (toList!11981 thiss!41785)))))))

(assert (= (and d!2399280 c!1476822) b!8059042))

(assert (= (and d!2399280 (not c!1476822)) b!8059043))

(declare-fun m!8412370 () Bool)

(assert (=> b!8059043 m!8412370))

(assert (=> start!759416 d!2399280))

(declare-fun d!2399284 () Bool)

(declare-fun invariantList!1970 (List!75776) Bool)

(assert (=> d!2399284 (= (inv!97480 thiss!41785) (invariantList!1970 (toList!11981 thiss!41785)))))

(declare-fun bs!1973545 () Bool)

(assert (= bs!1973545 d!2399284))

(declare-fun m!8412372 () Bool)

(assert (=> bs!1973545 m!8412372))

(assert (=> start!759416 d!2399284))

(declare-fun tp!2414347 () Bool)

(declare-fun tp_is_empty!55199 () Bool)

(declare-fun tp_is_empty!55201 () Bool)

(declare-fun b!8059052 () Bool)

(declare-fun e!4749338 () Bool)

(assert (=> b!8059052 (= e!4749338 (and tp_is_empty!55199 tp_is_empty!55201 tp!2414347))))

(assert (=> b!8059031 (= tp!2414341 e!4749338)))

(assert (= (and b!8059031 (is-Cons!75650 (toList!11981 thiss!41785))) b!8059052))

(push 1)

(assert (not d!2399278))

(assert (not d!2399284))

(assert (not b!8059043))

(assert tp_is_empty!55201)

(assert (not b!8059052))

(assert tp_is_empty!55199)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399292 () Bool)

(declare-fun lt!2732539 () Int)

(assert (=> d!2399292 (>= lt!2732539 0)))

(declare-fun e!4749343 () Int)

(assert (=> d!2399292 (= lt!2732539 e!4749343)))

(declare-fun c!1476826 () Bool)

(assert (=> d!2399292 (= c!1476826 (is-Nil!75650 (t!391548 (toList!11981 thiss!41785))))))

(assert (=> d!2399292 (= (size!43768 (t!391548 (toList!11981 thiss!41785))) lt!2732539)))

(declare-fun b!8059060 () Bool)

(assert (=> b!8059060 (= e!4749343 0)))

(declare-fun b!8059061 () Bool)

(assert (=> b!8059061 (= e!4749343 (+ 1 (size!43768 (t!391548 (t!391548 (toList!11981 thiss!41785))))))))

(assert (= (and d!2399292 c!1476826) b!8059060))

(assert (= (and d!2399292 (not c!1476826)) b!8059061))

(declare-fun m!8412380 () Bool)

(assert (=> b!8059061 m!8412380))

(assert (=> b!8059043 d!2399292))

(declare-fun d!2399294 () Bool)

(declare-fun noDuplicatedKeys!520 (List!75776) Bool)

(assert (=> d!2399294 (= (invariantList!1970 (toList!11981 thiss!41785)) (noDuplicatedKeys!520 (toList!11981 thiss!41785)))))

(declare-fun bs!1973548 () Bool)

(assert (= bs!1973548 d!2399294))

(declare-fun m!8412382 () Bool)

(assert (=> bs!1973548 m!8412382))

(assert (=> d!2399284 d!2399294))

(declare-fun d!2399296 () Bool)

(declare-fun e!4749349 () Bool)

(assert (=> d!2399296 e!4749349))

(declare-fun res!3188341 () Bool)

(assert (=> d!2399296 (=> (not res!3188341) (not e!4749349))))

(declare-fun lt!2732545 () (_ BitVec 32))

(assert (=> d!2399296 (= res!3188341 (bvsge lt!2732545 #b00000000000000000000000000000000))))

(declare-fun e!4749348 () (_ BitVec 32))

(assert (=> d!2399296 (= lt!2732545 e!4749348)))

(declare-fun c!1476829 () Bool)

(assert (=> d!2399296 (= c!1476829 (is-Cons!75650 (toList!11981 thiss!41785)))))

(assert (=> d!2399296 (= (intSize!5 (toList!11981 thiss!41785)) lt!2732545)))

(declare-fun b!8059068 () Bool)

(declare-fun lt!2732544 () (_ BitVec 32))

(assert (=> b!8059068 (= e!4749348 (ite (bvslt lt!2732544 #b01111111111111111111111111111111) (bvadd #b00000000000000000000000000000001 lt!2732544) #b01111111111111111111111111111111))))

(assert (=> b!8059068 (= lt!2732544 (intSize!5 (t!391548 (toList!11981 thiss!41785))))))

(declare-fun b!8059069 () Bool)

(assert (=> b!8059069 (= e!4749348 #b00000000000000000000000000000000)))

(declare-fun b!8059070 () Bool)

(assert (=> b!8059070 (= e!4749349 (= (isEmpty!43038 (toList!11981 thiss!41785)) (= lt!2732545 #b00000000000000000000000000000000)))))

(assert (= (and d!2399296 c!1476829) b!8059068))

(assert (= (and d!2399296 (not c!1476829)) b!8059069))

(assert (= (and d!2399296 res!3188341) b!8059070))

(declare-fun m!8412384 () Bool)

(assert (=> b!8059068 m!8412384))

(assert (=> b!8059070 m!8412356))

(assert (=> d!2399278 d!2399296))

(declare-fun tp!2414351 () Bool)

(declare-fun e!4749350 () Bool)

(declare-fun b!8059071 () Bool)

(assert (=> b!8059071 (= e!4749350 (and tp_is_empty!55199 tp_is_empty!55201 tp!2414351))))

(assert (=> b!8059052 (= tp!2414347 e!4749350)))

(assert (= (and b!8059052 (is-Cons!75650 (t!391548 (toList!11981 thiss!41785)))) b!8059071))

(push 1)

(assert (not b!8059071))

(assert (not b!8059068))

(assert tp_is_empty!55201)

(assert (not b!8059070))

(assert (not d!2399294))

(assert (not b!8059061))

(assert tp_is_empty!55199)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

