; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5202 () Bool)

(assert start!5202)

(declare-fun res!22888 () Bool)

(declare-fun e!24090 () Bool)

(assert (=> start!5202 (=> (not res!22888) (not e!24090))))

(declare-datatypes ((B!784 0))(
  ( (B!785 (val!892 Int)) )
))
(declare-fun b!99 () B!784)

(declare-datatypes ((tuple2!1448 0))(
  ( (tuple2!1449 (_1!734 (_ BitVec 64)) (_2!734 B!784)) )
))
(declare-datatypes ((List!1018 0))(
  ( (Nil!1015) (Cons!1014 (h!1582 tuple2!1448) (t!3859 List!1018)) )
))
(declare-datatypes ((ListLongMap!1029 0))(
  ( (ListLongMap!1030 (toList!530 List!1018)) )
))
(declare-fun lm!264 () ListLongMap!1029)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!478 (List!1018 tuple2!1448) Bool)

(assert (=> start!5202 (= res!22888 (contains!478 (toList!530 lm!264) (tuple2!1449 a!526 b!99)))))

(assert (=> start!5202 e!24090))

(declare-fun e!24089 () Bool)

(declare-fun inv!1692 (ListLongMap!1029) Bool)

(assert (=> start!5202 (and (inv!1692 lm!264) e!24089)))

(assert (=> start!5202 true))

(declare-fun tp_is_empty!1707 () Bool)

(assert (=> start!5202 tp_is_empty!1707))

(declare-fun b!37949 () Bool)

(declare-fun isStrictlySorted!194 (List!1018) Bool)

(assert (=> b!37949 (= e!24090 (not (isStrictlySorted!194 (toList!530 lm!264))))))

(declare-fun containsKey!60 (List!1018 (_ BitVec 64)) Bool)

(assert (=> b!37949 (containsKey!60 (toList!530 lm!264) a!526)))

(declare-datatypes ((Unit!872 0))(
  ( (Unit!873) )
))
(declare-fun lt!13951 () Unit!872)

(declare-fun lemmaContainsTupleThenContainsKey!5 (List!1018 (_ BitVec 64) B!784) Unit!872)

(assert (=> b!37949 (= lt!13951 (lemmaContainsTupleThenContainsKey!5 (toList!530 lm!264) a!526 b!99))))

(declare-fun b!37950 () Bool)

(declare-fun tp!5627 () Bool)

(assert (=> b!37950 (= e!24089 tp!5627)))

(assert (= (and start!5202 res!22888) b!37949))

(assert (= start!5202 b!37950))

(declare-fun m!30669 () Bool)

(assert (=> start!5202 m!30669))

(declare-fun m!30671 () Bool)

(assert (=> start!5202 m!30671))

(declare-fun m!30673 () Bool)

(assert (=> b!37949 m!30673))

(declare-fun m!30675 () Bool)

(assert (=> b!37949 m!30675))

(declare-fun m!30677 () Bool)

(assert (=> b!37949 m!30677))

(check-sat (not start!5202) (not b!37949) (not b!37950) tp_is_empty!1707)
(check-sat)
(get-model)

(declare-fun lt!13963 () Bool)

(declare-fun d!6153 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!23 (List!1018) (InoxSet tuple2!1448))

(assert (=> d!6153 (= lt!13963 (select (content!23 (toList!530 lm!264)) (tuple2!1449 a!526 b!99)))))

(declare-fun e!24113 () Bool)

(assert (=> d!6153 (= lt!13963 e!24113)))

(declare-fun res!22909 () Bool)

(assert (=> d!6153 (=> (not res!22909) (not e!24113))))

(get-info :version)

(assert (=> d!6153 (= res!22909 ((_ is Cons!1014) (toList!530 lm!264)))))

(assert (=> d!6153 (= (contains!478 (toList!530 lm!264) (tuple2!1449 a!526 b!99)) lt!13963)))

(declare-fun b!37973 () Bool)

(declare-fun e!24114 () Bool)

(assert (=> b!37973 (= e!24113 e!24114)))

(declare-fun res!22908 () Bool)

(assert (=> b!37973 (=> res!22908 e!24114)))

(assert (=> b!37973 (= res!22908 (= (h!1582 (toList!530 lm!264)) (tuple2!1449 a!526 b!99)))))

(declare-fun b!37974 () Bool)

(assert (=> b!37974 (= e!24114 (contains!478 (t!3859 (toList!530 lm!264)) (tuple2!1449 a!526 b!99)))))

(assert (= (and d!6153 res!22909) b!37973))

(assert (= (and b!37973 (not res!22908)) b!37974))

(declare-fun m!30699 () Bool)

(assert (=> d!6153 m!30699))

(declare-fun m!30703 () Bool)

(assert (=> d!6153 m!30703))

(declare-fun m!30705 () Bool)

(assert (=> b!37974 m!30705))

(assert (=> start!5202 d!6153))

(declare-fun d!6161 () Bool)

(assert (=> d!6161 (= (inv!1692 lm!264) (isStrictlySorted!194 (toList!530 lm!264)))))

(declare-fun bs!1512 () Bool)

(assert (= bs!1512 d!6161))

(assert (=> bs!1512 m!30673))

(assert (=> start!5202 d!6161))

(declare-fun d!6167 () Bool)

(declare-fun res!22932 () Bool)

(declare-fun e!24137 () Bool)

(assert (=> d!6167 (=> res!22932 e!24137)))

(assert (=> d!6167 (= res!22932 (or ((_ is Nil!1015) (toList!530 lm!264)) ((_ is Nil!1015) (t!3859 (toList!530 lm!264)))))))

(assert (=> d!6167 (= (isStrictlySorted!194 (toList!530 lm!264)) e!24137)))

(declare-fun b!37997 () Bool)

(declare-fun e!24138 () Bool)

(assert (=> b!37997 (= e!24137 e!24138)))

(declare-fun res!22933 () Bool)

(assert (=> b!37997 (=> (not res!22933) (not e!24138))))

(assert (=> b!37997 (= res!22933 (bvslt (_1!734 (h!1582 (toList!530 lm!264))) (_1!734 (h!1582 (t!3859 (toList!530 lm!264))))))))

(declare-fun b!37998 () Bool)

(assert (=> b!37998 (= e!24138 (isStrictlySorted!194 (t!3859 (toList!530 lm!264))))))

(assert (= (and d!6167 (not res!22932)) b!37997))

(assert (= (and b!37997 res!22933) b!37998))

(declare-fun m!30713 () Bool)

(assert (=> b!37998 m!30713))

(assert (=> b!37949 d!6167))

(declare-fun d!6173 () Bool)

(declare-fun res!22946 () Bool)

(declare-fun e!24153 () Bool)

(assert (=> d!6173 (=> res!22946 e!24153)))

(assert (=> d!6173 (= res!22946 (and ((_ is Cons!1014) (toList!530 lm!264)) (= (_1!734 (h!1582 (toList!530 lm!264))) a!526)))))

(assert (=> d!6173 (= (containsKey!60 (toList!530 lm!264) a!526) e!24153)))

(declare-fun b!38015 () Bool)

(declare-fun e!24155 () Bool)

(assert (=> b!38015 (= e!24153 e!24155)))

(declare-fun res!22948 () Bool)

(assert (=> b!38015 (=> (not res!22948) (not e!24155))))

(assert (=> b!38015 (= res!22948 (and (or (not ((_ is Cons!1014) (toList!530 lm!264))) (bvsle (_1!734 (h!1582 (toList!530 lm!264))) a!526)) ((_ is Cons!1014) (toList!530 lm!264)) (bvslt (_1!734 (h!1582 (toList!530 lm!264))) a!526)))))

(declare-fun b!38017 () Bool)

(assert (=> b!38017 (= e!24155 (containsKey!60 (t!3859 (toList!530 lm!264)) a!526))))

(assert (= (and d!6173 (not res!22946)) b!38015))

(assert (= (and b!38015 res!22948) b!38017))

(declare-fun m!30719 () Bool)

(assert (=> b!38017 m!30719))

(assert (=> b!37949 d!6173))

(declare-fun d!6177 () Bool)

(assert (=> d!6177 (containsKey!60 (toList!530 lm!264) a!526)))

(declare-fun lt!13972 () Unit!872)

(declare-fun choose!242 (List!1018 (_ BitVec 64) B!784) Unit!872)

(assert (=> d!6177 (= lt!13972 (choose!242 (toList!530 lm!264) a!526 b!99))))

(declare-fun e!24162 () Bool)

(assert (=> d!6177 e!24162))

(declare-fun res!22954 () Bool)

(assert (=> d!6177 (=> (not res!22954) (not e!24162))))

(assert (=> d!6177 (= res!22954 (isStrictlySorted!194 (toList!530 lm!264)))))

(assert (=> d!6177 (= (lemmaContainsTupleThenContainsKey!5 (toList!530 lm!264) a!526 b!99) lt!13972)))

(declare-fun b!38024 () Bool)

(assert (=> b!38024 (= e!24162 (contains!478 (toList!530 lm!264) (tuple2!1449 a!526 b!99)))))

(assert (= (and d!6177 res!22954) b!38024))

(assert (=> d!6177 m!30675))

(declare-fun m!30723 () Bool)

(assert (=> d!6177 m!30723))

(assert (=> d!6177 m!30673))

(assert (=> b!38024 m!30669))

(assert (=> b!37949 d!6177))

(declare-fun b!38033 () Bool)

(declare-fun e!24167 () Bool)

(declare-fun tp!5638 () Bool)

(assert (=> b!38033 (= e!24167 (and tp_is_empty!1707 tp!5638))))

(assert (=> b!37950 (= tp!5627 e!24167)))

(assert (= (and b!37950 ((_ is Cons!1014) (toList!530 lm!264))) b!38033))

(check-sat (not b!38024) (not d!6177) (not b!37974) (not b!38033) (not b!38017) tp_is_empty!1707 (not b!37998) (not d!6161) (not d!6153))
(check-sat)
