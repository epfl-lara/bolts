; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5142 () Bool)

(assert start!5142)

(declare-fun res!22816 () Bool)

(declare-fun e!23952 () Bool)

(assert (=> start!5142 (=> (not res!22816) (not e!23952))))

(declare-datatypes ((List!1004 0))(
  ( (Nil!1001) (Cons!1000 (h!1568 (_ BitVec 64)) (t!3845 List!1004)) )
))
(declare-fun keys!14 () List!1004)

(get-info :version)

(assert (=> start!5142 (= res!22816 (not ((_ is Nil!1001) keys!14)))))

(assert (=> start!5142 e!23952))

(assert (=> start!5142 true))

(declare-datatypes ((B!760 0))(
  ( (B!761 (val!880 Int)) )
))
(declare-datatypes ((tuple2!1424 0))(
  ( (tuple2!1425 (_1!722 (_ BitVec 64)) (_2!722 B!760)) )
))
(declare-datatypes ((List!1005 0))(
  ( (Nil!1002) (Cons!1001 (h!1569 tuple2!1424) (t!3846 List!1005)) )
))
(declare-datatypes ((ListLongMap!1005 0))(
  ( (ListLongMap!1006 (toList!518 List!1005)) )
))
(declare-fun thiss!221 () ListLongMap!1005)

(declare-fun e!23951 () Bool)

(declare-fun inv!1660 (ListLongMap!1005) Bool)

(assert (=> start!5142 (and (inv!1660 thiss!221) e!23951)))

(declare-fun b!37787 () Bool)

(declare-fun ListPrimitiveSize!38 (List!1004) Int)

(assert (=> b!37787 (= e!23952 (>= (ListPrimitiveSize!38 (t!3845 keys!14)) (ListPrimitiveSize!38 keys!14)))))

(declare-fun lt!13903 () ListLongMap!1005)

(declare-fun -!37 (ListLongMap!1005 (_ BitVec 64)) ListLongMap!1005)

(assert (=> b!37787 (= lt!13903 (-!37 thiss!221 (h!1568 keys!14)))))

(declare-fun b!37788 () Bool)

(declare-fun tp!5573 () Bool)

(assert (=> b!37788 (= e!23951 tp!5573)))

(assert (= (and start!5142 res!22816) b!37787))

(assert (= start!5142 b!37788))

(declare-fun m!30541 () Bool)

(assert (=> start!5142 m!30541))

(declare-fun m!30543 () Bool)

(assert (=> b!37787 m!30543))

(declare-fun m!30545 () Bool)

(assert (=> b!37787 m!30545))

(declare-fun m!30547 () Bool)

(assert (=> b!37787 m!30547))

(check-sat (not b!37787) (not start!5142) (not b!37788))
(check-sat)
(get-model)

(declare-fun d!6101 () Bool)

(declare-fun lt!13913 () Int)

(assert (=> d!6101 (>= lt!13913 0)))

(declare-fun e!23965 () Int)

(assert (=> d!6101 (= lt!13913 e!23965)))

(declare-fun c!4385 () Bool)

(assert (=> d!6101 (= c!4385 ((_ is Nil!1001) (t!3845 keys!14)))))

(assert (=> d!6101 (= (ListPrimitiveSize!38 (t!3845 keys!14)) lt!13913)))

(declare-fun b!37807 () Bool)

(assert (=> b!37807 (= e!23965 0)))

(declare-fun b!37808 () Bool)

(assert (=> b!37808 (= e!23965 (+ 1 (ListPrimitiveSize!38 (t!3845 (t!3845 keys!14)))))))

(assert (= (and d!6101 c!4385) b!37807))

(assert (= (and d!6101 (not c!4385)) b!37808))

(declare-fun m!30561 () Bool)

(assert (=> b!37808 m!30561))

(assert (=> b!37787 d!6101))

(declare-fun d!6111 () Bool)

(declare-fun lt!13914 () Int)

(assert (=> d!6111 (>= lt!13914 0)))

(declare-fun e!23966 () Int)

(assert (=> d!6111 (= lt!13914 e!23966)))

(declare-fun c!4386 () Bool)

(assert (=> d!6111 (= c!4386 ((_ is Nil!1001) keys!14))))

(assert (=> d!6111 (= (ListPrimitiveSize!38 keys!14) lt!13914)))

(declare-fun b!37809 () Bool)

(assert (=> b!37809 (= e!23966 0)))

(declare-fun b!37810 () Bool)

(assert (=> b!37810 (= e!23966 (+ 1 (ListPrimitiveSize!38 (t!3845 keys!14))))))

(assert (= (and d!6111 c!4386) b!37809))

(assert (= (and d!6111 (not c!4386)) b!37810))

(assert (=> b!37810 m!30543))

(assert (=> b!37787 d!6111))

(declare-fun d!6113 () Bool)

(declare-fun lt!13923 () ListLongMap!1005)

(declare-fun contains!466 (ListLongMap!1005 (_ BitVec 64)) Bool)

(assert (=> d!6113 (not (contains!466 lt!13923 (h!1568 keys!14)))))

(declare-fun removeStrictlySorted!23 (List!1005 (_ BitVec 64)) List!1005)

(assert (=> d!6113 (= lt!13923 (ListLongMap!1006 (removeStrictlySorted!23 (toList!518 thiss!221) (h!1568 keys!14))))))

(assert (=> d!6113 (= (-!37 thiss!221 (h!1568 keys!14)) lt!13923)))

(declare-fun bs!1491 () Bool)

(assert (= bs!1491 d!6113))

(declare-fun m!30567 () Bool)

(assert (=> bs!1491 m!30567))

(declare-fun m!30571 () Bool)

(assert (=> bs!1491 m!30571))

(assert (=> b!37787 d!6113))

(declare-fun d!6121 () Bool)

(declare-fun isStrictlySorted!189 (List!1005) Bool)

(assert (=> d!6121 (= (inv!1660 thiss!221) (isStrictlySorted!189 (toList!518 thiss!221)))))

(declare-fun bs!1494 () Bool)

(assert (= bs!1494 d!6121))

(declare-fun m!30579 () Bool)

(assert (=> bs!1494 m!30579))

(assert (=> start!5142 d!6121))

(declare-fun b!37833 () Bool)

(declare-fun e!23979 () Bool)

(declare-fun tp_is_empty!1685 () Bool)

(declare-fun tp!5585 () Bool)

(assert (=> b!37833 (= e!23979 (and tp_is_empty!1685 tp!5585))))

(assert (=> b!37788 (= tp!5573 e!23979)))

(assert (= (and b!37788 ((_ is Cons!1001) (toList!518 thiss!221))) b!37833))

(check-sat (not d!6121) (not d!6113) (not b!37808) tp_is_empty!1685 (not b!37810) (not b!37833))
(check-sat)
