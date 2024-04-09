; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5140 () Bool)

(assert start!5140)

(declare-fun res!22813 () Bool)

(declare-fun e!23946 () Bool)

(assert (=> start!5140 (=> (not res!22813) (not e!23946))))

(declare-datatypes ((List!1002 0))(
  ( (Nil!999) (Cons!998 (h!1566 (_ BitVec 64)) (t!3843 List!1002)) )
))
(declare-fun keys!14 () List!1002)

(assert (=> start!5140 (= res!22813 (not (is-Nil!999 keys!14)))))

(assert (=> start!5140 e!23946))

(assert (=> start!5140 true))

(declare-datatypes ((B!758 0))(
  ( (B!759 (val!879 Int)) )
))
(declare-datatypes ((tuple2!1422 0))(
  ( (tuple2!1423 (_1!721 (_ BitVec 64)) (_2!721 B!758)) )
))
(declare-datatypes ((List!1003 0))(
  ( (Nil!1000) (Cons!999 (h!1567 tuple2!1422) (t!3844 List!1003)) )
))
(declare-datatypes ((ListLongMap!1003 0))(
  ( (ListLongMap!1004 (toList!517 List!1003)) )
))
(declare-fun thiss!221 () ListLongMap!1003)

(declare-fun e!23945 () Bool)

(declare-fun inv!1659 (ListLongMap!1003) Bool)

(assert (=> start!5140 (and (inv!1659 thiss!221) e!23945)))

(declare-fun b!37781 () Bool)

(declare-fun ListPrimitiveSize!37 (List!1002) Int)

(assert (=> b!37781 (= e!23946 (>= (ListPrimitiveSize!37 (t!3843 keys!14)) (ListPrimitiveSize!37 keys!14)))))

(declare-fun lt!13900 () ListLongMap!1003)

(declare-fun -!36 (ListLongMap!1003 (_ BitVec 64)) ListLongMap!1003)

(assert (=> b!37781 (= lt!13900 (-!36 thiss!221 (h!1566 keys!14)))))

(declare-fun b!37782 () Bool)

(declare-fun tp!5570 () Bool)

(assert (=> b!37782 (= e!23945 tp!5570)))

(assert (= (and start!5140 res!22813) b!37781))

(assert (= start!5140 b!37782))

(declare-fun m!30533 () Bool)

(assert (=> start!5140 m!30533))

(declare-fun m!30535 () Bool)

(assert (=> b!37781 m!30535))

(declare-fun m!30537 () Bool)

(assert (=> b!37781 m!30537))

(declare-fun m!30539 () Bool)

(assert (=> b!37781 m!30539))

(push 1)

(assert (not b!37781))

(assert (not start!5140))

(assert (not b!37782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6099 () Bool)

(declare-fun lt!13911 () Int)

(assert (=> d!6099 (>= lt!13911 0)))

(declare-fun e!23963 () Int)

(assert (=> d!6099 (= lt!13911 e!23963)))

(declare-fun c!4383 () Bool)

(assert (=> d!6099 (= c!4383 (is-Nil!999 (t!3843 keys!14)))))

(assert (=> d!6099 (= (ListPrimitiveSize!37 (t!3843 keys!14)) lt!13911)))

(declare-fun b!37803 () Bool)

(assert (=> b!37803 (= e!23963 0)))

(declare-fun b!37804 () Bool)

(assert (=> b!37804 (= e!23963 (+ 1 (ListPrimitiveSize!37 (t!3843 (t!3843 keys!14)))))))

(assert (= (and d!6099 c!4383) b!37803))

(assert (= (and d!6099 (not c!4383)) b!37804))

(declare-fun m!30557 () Bool)

(assert (=> b!37804 m!30557))

(assert (=> b!37781 d!6099))

(declare-fun d!6105 () Bool)

(declare-fun lt!13912 () Int)

(assert (=> d!6105 (>= lt!13912 0)))

(declare-fun e!23964 () Int)

(assert (=> d!6105 (= lt!13912 e!23964)))

(declare-fun c!4384 () Bool)

(assert (=> d!6105 (= c!4384 (is-Nil!999 keys!14))))

(assert (=> d!6105 (= (ListPrimitiveSize!37 keys!14) lt!13912)))

(declare-fun b!37805 () Bool)

(assert (=> b!37805 (= e!23964 0)))

(declare-fun b!37806 () Bool)

(assert (=> b!37806 (= e!23964 (+ 1 (ListPrimitiveSize!37 (t!3843 keys!14))))))

(assert (= (and d!6105 c!4384) b!37805))

(assert (= (and d!6105 (not c!4384)) b!37806))

(assert (=> b!37806 m!30535))

(assert (=> b!37781 d!6105))

(declare-fun d!6109 () Bool)

(declare-fun lt!13924 () ListLongMap!1003)

(declare-fun contains!465 (ListLongMap!1003 (_ BitVec 64)) Bool)

(assert (=> d!6109 (not (contains!465 lt!13924 (h!1566 keys!14)))))

(declare-fun removeStrictlySorted!22 (List!1003 (_ BitVec 64)) List!1003)

(assert (=> d!6109 (= lt!13924 (ListLongMap!1004 (removeStrictlySorted!22 (toList!517 thiss!221) (h!1566 keys!14))))))

(assert (=> d!6109 (= (-!36 thiss!221 (h!1566 keys!14)) lt!13924)))

(declare-fun bs!1490 () Bool)

(assert (= bs!1490 d!6109))

(declare-fun m!30565 () Bool)

(assert (=> bs!1490 m!30565))

(declare-fun m!30569 () Bool)

(assert (=> bs!1490 m!30569))

(assert (=> b!37781 d!6109))

(declare-fun d!6119 () Bool)

(declare-fun isStrictlySorted!188 (List!1003) Bool)

(assert (=> d!6119 (= (inv!1659 thiss!221) (isStrictlySorted!188 (toList!517 thiss!221)))))

(declare-fun bs!1493 () Bool)

(assert (= bs!1493 d!6119))

(declare-fun m!30577 () Bool)

(assert (=> bs!1493 m!30577))

(assert (=> start!5140 d!6119))

(declare-fun b!37831 () Bool)

(declare-fun e!23977 () Bool)

(declare-fun tp_is_empty!1682 () Bool)

(declare-fun tp!5583 () Bool)

(assert (=> b!37831 (= e!23977 (and tp_is_empty!1682 tp!5583))))

(assert (=> b!37782 (= tp!5570 e!23977)))

(assert (= (and b!37782 (is-Cons!999 (toList!517 thiss!221))) b!37831))

(push 1)

