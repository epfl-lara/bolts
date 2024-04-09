; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5200 () Bool)

(assert start!5200)

(declare-fun res!22885 () Bool)

(declare-fun e!24083 () Bool)

(assert (=> start!5200 (=> (not res!22885) (not e!24083))))

(declare-datatypes ((B!782 0))(
  ( (B!783 (val!891 Int)) )
))
(declare-fun b!99 () B!782)

(declare-datatypes ((tuple2!1446 0))(
  ( (tuple2!1447 (_1!733 (_ BitVec 64)) (_2!733 B!782)) )
))
(declare-datatypes ((List!1017 0))(
  ( (Nil!1014) (Cons!1013 (h!1581 tuple2!1446) (t!3858 List!1017)) )
))
(declare-datatypes ((ListLongMap!1027 0))(
  ( (ListLongMap!1028 (toList!529 List!1017)) )
))
(declare-fun lm!264 () ListLongMap!1027)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!477 (List!1017 tuple2!1446) Bool)

(assert (=> start!5200 (= res!22885 (contains!477 (toList!529 lm!264) (tuple2!1447 a!526 b!99)))))

(assert (=> start!5200 e!24083))

(declare-fun e!24084 () Bool)

(declare-fun inv!1691 (ListLongMap!1027) Bool)

(assert (=> start!5200 (and (inv!1691 lm!264) e!24084)))

(assert (=> start!5200 true))

(declare-fun tp_is_empty!1705 () Bool)

(assert (=> start!5200 tp_is_empty!1705))

(declare-fun b!37943 () Bool)

(declare-fun isStrictlySorted!193 (List!1017) Bool)

(assert (=> b!37943 (= e!24083 (not (isStrictlySorted!193 (toList!529 lm!264))))))

(declare-fun containsKey!59 (List!1017 (_ BitVec 64)) Bool)

(assert (=> b!37943 (containsKey!59 (toList!529 lm!264) a!526)))

(declare-datatypes ((Unit!870 0))(
  ( (Unit!871) )
))
(declare-fun lt!13948 () Unit!870)

(declare-fun lemmaContainsTupleThenContainsKey!4 (List!1017 (_ BitVec 64) B!782) Unit!870)

(assert (=> b!37943 (= lt!13948 (lemmaContainsTupleThenContainsKey!4 (toList!529 lm!264) a!526 b!99))))

(declare-fun b!37944 () Bool)

(declare-fun tp!5624 () Bool)

(assert (=> b!37944 (= e!24084 tp!5624)))

(assert (= (and start!5200 res!22885) b!37943))

(assert (= start!5200 b!37944))

(declare-fun m!30659 () Bool)

(assert (=> start!5200 m!30659))

(declare-fun m!30661 () Bool)

(assert (=> start!5200 m!30661))

(declare-fun m!30663 () Bool)

(assert (=> b!37943 m!30663))

(declare-fun m!30665 () Bool)

(assert (=> b!37943 m!30665))

(declare-fun m!30667 () Bool)

(assert (=> b!37943 m!30667))

(push 1)

(assert (not start!5200))

(assert (not b!37943))

(assert (not b!37944))

(assert tp_is_empty!1705)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6149 () Bool)

(declare-fun lt!13957 () Bool)

(declare-fun content!22 (List!1017) (Set tuple2!1446))

(assert (=> d!6149 (= lt!13957 (set.member (tuple2!1447 a!526 b!99) (content!22 (toList!529 lm!264))))))

(declare-fun e!24102 () Bool)

(assert (=> d!6149 (= lt!13957 e!24102)))

(declare-fun res!22896 () Bool)

(assert (=> d!6149 (=> (not res!22896) (not e!24102))))

(assert (=> d!6149 (= res!22896 (is-Cons!1013 (toList!529 lm!264)))))

(assert (=> d!6149 (= (contains!477 (toList!529 lm!264) (tuple2!1447 a!526 b!99)) lt!13957)))

(declare-fun b!37961 () Bool)

(declare-fun e!24101 () Bool)

(assert (=> b!37961 (= e!24102 e!24101)))

(declare-fun res!22897 () Bool)

(assert (=> b!37961 (=> res!22897 e!24101)))

(assert (=> b!37961 (= res!22897 (= (h!1581 (toList!529 lm!264)) (tuple2!1447 a!526 b!99)))))

(declare-fun b!37962 () Bool)

(assert (=> b!37962 (= e!24101 (contains!477 (t!3858 (toList!529 lm!264)) (tuple2!1447 a!526 b!99)))))

(assert (= (and d!6149 res!22896) b!37961))

(assert (= (and b!37961 (not res!22897)) b!37962))

(declare-fun m!30689 () Bool)

(assert (=> d!6149 m!30689))

(declare-fun m!30691 () Bool)

(assert (=> d!6149 m!30691))

(declare-fun m!30693 () Bool)

(assert (=> b!37962 m!30693))

(assert (=> start!5200 d!6149))

(declare-fun d!6155 () Bool)

(assert (=> d!6155 (= (inv!1691 lm!264) (isStrictlySorted!193 (toList!529 lm!264)))))

(declare-fun bs!1510 () Bool)

(assert (= bs!1510 d!6155))

(assert (=> bs!1510 m!30663))

(assert (=> start!5200 d!6155))

(declare-fun d!6157 () Bool)

(declare-fun res!22914 () Bool)

(declare-fun e!24119 () Bool)

(assert (=> d!6157 (=> res!22914 e!24119)))

(assert (=> d!6157 (= res!22914 (or (is-Nil!1014 (toList!529 lm!264)) (is-Nil!1014 (t!3858 (toList!529 lm!264)))))))

(assert (=> d!6157 (= (isStrictlySorted!193 (toList!529 lm!264)) e!24119)))

(declare-fun b!37979 () Bool)

(declare-fun e!24120 () Bool)

(assert (=> b!37979 (= e!24119 e!24120)))

(declare-fun res!22915 () Bool)

(assert (=> b!37979 (=> (not res!22915) (not e!24120))))

(assert (=> b!37979 (= res!22915 (bvslt (_1!733 (h!1581 (toList!529 lm!264))) (_1!733 (h!1581 (t!3858 (toList!529 lm!264))))))))

(declare-fun b!37980 () Bool)

(assert (=> b!37980 (= e!24120 (isStrictlySorted!193 (t!3858 (toList!529 lm!264))))))

(assert (= (and d!6157 (not res!22914)) b!37979))

(assert (= (and b!37979 res!22915) b!37980))

(declare-fun m!30707 () Bool)

(assert (=> b!37980 m!30707))

(assert (=> b!37943 d!6157))

(declare-fun d!6163 () Bool)

(declare-fun res!22928 () Bool)

(declare-fun e!24133 () Bool)

(assert (=> d!6163 (=> res!22928 e!24133)))

(assert (=> d!6163 (= res!22928 (and (is-Cons!1013 (toList!529 lm!264)) (= (_1!733 (h!1581 (toList!529 lm!264))) a!526)))))

(assert (=> d!6163 (= (containsKey!59 (toList!529 lm!264) a!526) e!24133)))

(declare-fun b!37993 () Bool)

(declare-fun e!24134 () Bool)

(assert (=> b!37993 (= e!24133 e!24134)))

(declare-fun res!22929 () Bool)

(assert (=> b!37993 (=> (not res!22929) (not e!24134))))

(assert (=> b!37993 (= res!22929 (and (or (not (is-Cons!1013 (toList!529 lm!264))) (bvsle (_1!733 (h!1581 (toList!529 lm!264))) a!526)) (is-Cons!1013 (toList!529 lm!264)) (bvslt (_1!733 (h!1581 (toList!529 lm!264))) a!526)))))

(declare-fun b!37994 () Bool)

(assert (=> b!37994 (= e!24134 (containsKey!59 (t!3858 (toList!529 lm!264)) a!526))))

(assert (= (and d!6163 (not res!22928)) b!37993))

(assert (= (and b!37993 res!22929) b!37994))

(declare-fun m!30709 () Bool)

(assert (=> b!37994 m!30709))

(assert (=> b!37943 d!6163))

(declare-fun d!6169 () Bool)

(assert (=> d!6169 (containsKey!59 (toList!529 lm!264) a!526)))

(declare-fun lt!13966 () Unit!870)

(declare-fun choose!241 (List!1017 (_ BitVec 64) B!782) Unit!870)

(assert (=> d!6169 (= lt!13966 (choose!241 (toList!529 lm!264) a!526 b!99))))

(declare-fun e!24149 () Bool)

(assert (=> d!6169 e!24149))

(declare-fun res!22944 () Bool)

(assert (=> d!6169 (=> (not res!22944) (not e!24149))))

(assert (=> d!6169 (= res!22944 (isStrictlySorted!193 (toList!529 lm!264)))))

(assert (=> d!6169 (= (lemmaContainsTupleThenContainsKey!4 (toList!529 lm!264) a!526 b!99) lt!13966)))

(declare-fun b!38005 () Bool)

(assert (=> b!38005 (= e!24149 (contains!477 (toList!529 lm!264) (tuple2!1447 a!526 b!99)))))

(assert (= (and d!6169 res!22944) b!38005))

(assert (=> d!6169 m!30665))

(declare-fun m!30715 () Bool)

(assert (=> d!6169 m!30715))

(assert (=> d!6169 m!30663))

(assert (=> b!38005 m!30659))

(assert (=> b!37943 d!6169))

(declare-fun b!38018 () Bool)

(declare-fun e!24156 () Bool)

(declare-fun tp!5633 () Bool)

(assert (=> b!38018 (= e!24156 (and tp_is_empty!1705 tp!5633))))

(assert (=> b!37944 (= tp!5624 e!24156)))

(assert (= (and b!37944 (is-Cons!1013 (toList!529 lm!264))) b!38018))

(push 1)

(assert (not b!38005))

(assert (not b!37980))

(assert (not d!6155))

(assert (not b!37994))

(assert (not b!37962))

(assert tp_is_empty!1705)

(assert (not d!6149))

(assert (not d!6169))

(assert (not b!38018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

