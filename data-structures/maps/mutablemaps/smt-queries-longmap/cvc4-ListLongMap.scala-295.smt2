; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5144 () Bool)

(assert start!5144)

(declare-fun res!22819 () Bool)

(declare-fun e!23957 () Bool)

(assert (=> start!5144 (=> (not res!22819) (not e!23957))))

(declare-datatypes ((List!1006 0))(
  ( (Nil!1003) (Cons!1002 (h!1570 (_ BitVec 64)) (t!3847 List!1006)) )
))
(declare-fun keys!14 () List!1006)

(assert (=> start!5144 (= res!22819 (not (is-Nil!1003 keys!14)))))

(assert (=> start!5144 e!23957))

(assert (=> start!5144 true))

(declare-datatypes ((B!762 0))(
  ( (B!763 (val!881 Int)) )
))
(declare-datatypes ((tuple2!1426 0))(
  ( (tuple2!1427 (_1!723 (_ BitVec 64)) (_2!723 B!762)) )
))
(declare-datatypes ((List!1007 0))(
  ( (Nil!1004) (Cons!1003 (h!1571 tuple2!1426) (t!3848 List!1007)) )
))
(declare-datatypes ((ListLongMap!1007 0))(
  ( (ListLongMap!1008 (toList!519 List!1007)) )
))
(declare-fun thiss!221 () ListLongMap!1007)

(declare-fun e!23958 () Bool)

(declare-fun inv!1661 (ListLongMap!1007) Bool)

(assert (=> start!5144 (and (inv!1661 thiss!221) e!23958)))

(declare-fun b!37793 () Bool)

(declare-fun ListPrimitiveSize!39 (List!1006) Int)

(assert (=> b!37793 (= e!23957 (>= (ListPrimitiveSize!39 (t!3847 keys!14)) (ListPrimitiveSize!39 keys!14)))))

(declare-fun lt!13906 () ListLongMap!1007)

(declare-fun -!38 (ListLongMap!1007 (_ BitVec 64)) ListLongMap!1007)

(assert (=> b!37793 (= lt!13906 (-!38 thiss!221 (h!1570 keys!14)))))

(declare-fun b!37794 () Bool)

(declare-fun tp!5576 () Bool)

(assert (=> b!37794 (= e!23958 tp!5576)))

(assert (= (and start!5144 res!22819) b!37793))

(assert (= start!5144 b!37794))

(declare-fun m!30549 () Bool)

(assert (=> start!5144 m!30549))

(declare-fun m!30551 () Bool)

(assert (=> b!37793 m!30551))

(declare-fun m!30553 () Bool)

(assert (=> b!37793 m!30553))

(declare-fun m!30555 () Bool)

(assert (=> b!37793 m!30555))

(push 1)

(assert (not start!5144))

(assert (not b!37793))

(assert (not b!37794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6103 () Bool)

(declare-fun isStrictlySorted!187 (List!1007) Bool)

(assert (=> d!6103 (= (inv!1661 thiss!221) (isStrictlySorted!187 (toList!519 thiss!221)))))

(declare-fun bs!1489 () Bool)

(assert (= bs!1489 d!6103))

(declare-fun m!30559 () Bool)

(assert (=> bs!1489 m!30559))

(assert (=> start!5144 d!6103))

(declare-fun d!6107 () Bool)

(declare-fun lt!13917 () Int)

(assert (=> d!6107 (>= lt!13917 0)))

(declare-fun e!23969 () Int)

(assert (=> d!6107 (= lt!13917 e!23969)))

(declare-fun c!4389 () Bool)

(assert (=> d!6107 (= c!4389 (is-Nil!1003 (t!3847 keys!14)))))

(assert (=> d!6107 (= (ListPrimitiveSize!39 (t!3847 keys!14)) lt!13917)))

(declare-fun b!37815 () Bool)

(assert (=> b!37815 (= e!23969 0)))

(declare-fun b!37816 () Bool)

(assert (=> b!37816 (= e!23969 (+ 1 (ListPrimitiveSize!39 (t!3847 (t!3847 keys!14)))))))

(assert (= (and d!6107 c!4389) b!37815))

(assert (= (and d!6107 (not c!4389)) b!37816))

(declare-fun m!30563 () Bool)

(assert (=> b!37816 m!30563))

(assert (=> b!37793 d!6107))

(declare-fun d!6115 () Bool)

(declare-fun lt!13918 () Int)

(assert (=> d!6115 (>= lt!13918 0)))

(declare-fun e!23970 () Int)

(assert (=> d!6115 (= lt!13918 e!23970)))

(declare-fun c!4390 () Bool)

(assert (=> d!6115 (= c!4390 (is-Nil!1003 keys!14))))

(assert (=> d!6115 (= (ListPrimitiveSize!39 keys!14) lt!13918)))

(declare-fun b!37817 () Bool)

(assert (=> b!37817 (= e!23970 0)))

(declare-fun b!37818 () Bool)

(assert (=> b!37818 (= e!23970 (+ 1 (ListPrimitiveSize!39 (t!3847 keys!14))))))

(assert (= (and d!6115 c!4390) b!37817))

(assert (= (and d!6115 (not c!4390)) b!37818))

(assert (=> b!37818 m!30551))

(assert (=> b!37793 d!6115))

(declare-fun d!6117 () Bool)

(declare-fun lt!13927 () ListLongMap!1007)

(declare-fun contains!467 (ListLongMap!1007 (_ BitVec 64)) Bool)

(assert (=> d!6117 (not (contains!467 lt!13927 (h!1570 keys!14)))))

(declare-fun removeStrictlySorted!24 (List!1007 (_ BitVec 64)) List!1007)

(assert (=> d!6117 (= lt!13927 (ListLongMap!1008 (removeStrictlySorted!24 (toList!519 thiss!221) (h!1570 keys!14))))))

(assert (=> d!6117 (= (-!38 thiss!221 (h!1570 keys!14)) lt!13927)))

(declare-fun bs!1492 () Bool)

(assert (= bs!1492 d!6117))

(declare-fun m!30573 () Bool)

(assert (=> bs!1492 m!30573))

(declare-fun m!30575 () Bool)

(assert (=> bs!1492 m!30575))

(assert (=> b!37793 d!6117))

(declare-fun b!37832 () Bool)

(declare-fun e!23978 () Bool)

