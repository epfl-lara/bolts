; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138388 () Bool)

(assert start!138388)

(declare-fun b!1585897 () Bool)

(declare-fun e!885568 () Bool)

(declare-fun e!885569 () Bool)

(assert (=> b!1585897 (= e!885568 e!885569)))

(declare-fun res!1083179 () Bool)

(assert (=> b!1585897 (=> res!1083179 e!885569)))

(declare-datatypes ((B!3002 0))(
  ( (B!3003 (val!19863 Int)) )
))
(declare-datatypes ((tuple2!26058 0))(
  ( (tuple2!26059 (_1!13039 (_ BitVec 64)) (_2!13039 B!3002)) )
))
(declare-datatypes ((List!37144 0))(
  ( (Nil!37141) (Cons!37140 (h!38684 tuple2!26058) (t!52080 List!37144)) )
))
(declare-fun lt!677397 () List!37144)

(declare-fun isStrictlySorted!1203 (List!37144) Bool)

(assert (=> b!1585897 (= res!1083179 (not (isStrictlySorted!1203 lt!677397)))))

(declare-fun lt!677398 () tuple2!26058)

(declare-fun $colon$colon!1049 (List!37144 tuple2!26058) List!37144)

(assert (=> b!1585897 (= lt!677397 ($colon$colon!1049 Nil!37141 lt!677398))))

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun newValue!21 () B!3002)

(assert (=> b!1585897 (= lt!677398 (tuple2!26059 newKey!21 newValue!21))))

(declare-fun b!1585898 () Bool)

(declare-fun contains!10558 (List!37144 tuple2!26058) Bool)

(assert (=> b!1585898 (= e!885569 (not (contains!10558 lt!677397 lt!677398)))))

(declare-fun res!1083178 () Bool)

(assert (=> start!138388 (=> (not res!1083178) (not e!885568))))

(declare-fun l!556 () List!37144)

(assert (=> start!138388 (= res!1083178 (isStrictlySorted!1203 l!556))))

(assert (=> start!138388 e!885568))

(declare-fun e!885570 () Bool)

(assert (=> start!138388 e!885570))

(assert (=> start!138388 true))

(declare-fun tp_is_empty!39535 () Bool)

(assert (=> start!138388 tp_is_empty!39535))

(declare-fun b!1585899 () Bool)

(declare-fun res!1083176 () Bool)

(assert (=> b!1585899 (=> res!1083176 e!885569)))

(declare-fun containsKey!1016 (List!37144 (_ BitVec 64)) Bool)

(assert (=> b!1585899 (= res!1083176 (not (containsKey!1016 lt!677397 newKey!21)))))

(declare-fun b!1585900 () Bool)

(declare-fun tp!115321 () Bool)

(assert (=> b!1585900 (= e!885570 (and tp_is_empty!39535 tp!115321))))

(declare-fun b!1585901 () Bool)

(declare-fun res!1083177 () Bool)

(assert (=> b!1585901 (=> (not res!1083177) (not e!885568))))

(assert (=> b!1585901 (= res!1083177 (and (or (not (is-Cons!37140 l!556)) (bvsge (_1!13039 (h!38684 l!556)) newKey!21)) (or (not (is-Cons!37140 l!556)) (not (= (_1!13039 (h!38684 l!556)) newKey!21))) (or (not (is-Cons!37140 l!556)) (bvsle (_1!13039 (h!38684 l!556)) newKey!21)) (is-Nil!37141 l!556)))))

(assert (= (and start!138388 res!1083178) b!1585901))

(assert (= (and b!1585901 res!1083177) b!1585897))

(assert (= (and b!1585897 (not res!1083179)) b!1585899))

(assert (= (and b!1585899 (not res!1083176)) b!1585898))

(assert (= (and start!138388 (is-Cons!37140 l!556)) b!1585900))

(declare-fun m!1454559 () Bool)

(assert (=> b!1585897 m!1454559))

(declare-fun m!1454561 () Bool)

(assert (=> b!1585897 m!1454561))

(declare-fun m!1454563 () Bool)

(assert (=> b!1585898 m!1454563))

(declare-fun m!1454565 () Bool)

(assert (=> start!138388 m!1454565))

(declare-fun m!1454567 () Bool)

(assert (=> b!1585899 m!1454567))

(push 1)

(assert tp_is_empty!39535)

(assert (not b!1585897))

(assert (not start!138388))

(assert (not b!1585900))

(assert (not b!1585899))

(assert (not b!1585898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167825 () Bool)

(declare-fun res!1083220 () Bool)

(declare-fun e!885605 () Bool)

(assert (=> d!167825 (=> res!1083220 e!885605)))

(assert (=> d!167825 (= res!1083220 (and (is-Cons!37140 lt!677397) (= (_1!13039 (h!38684 lt!677397)) newKey!21)))))

(assert (=> d!167825 (= (containsKey!1016 lt!677397 newKey!21) e!885605)))

(declare-fun b!1585948 () Bool)

(declare-fun e!885606 () Bool)

(assert (=> b!1585948 (= e!885605 e!885606)))

(declare-fun res!1083221 () Bool)

(assert (=> b!1585948 (=> (not res!1083221) (not e!885606))))

(assert (=> b!1585948 (= res!1083221 (and (or (not (is-Cons!37140 lt!677397)) (bvsle (_1!13039 (h!38684 lt!677397)) newKey!21)) (is-Cons!37140 lt!677397) (bvslt (_1!13039 (h!38684 lt!677397)) newKey!21)))))

(declare-fun b!1585949 () Bool)

(assert (=> b!1585949 (= e!885606 (containsKey!1016 (t!52080 lt!677397) newKey!21))))

(assert (= (and d!167825 (not res!1083220)) b!1585948))

(assert (= (and b!1585948 res!1083221) b!1585949))

(declare-fun m!1454597 () Bool)

(assert (=> b!1585949 m!1454597))

(assert (=> b!1585899 d!167825))

(declare-fun d!167833 () Bool)

(declare-fun res!1083234 () Bool)

(declare-fun e!885619 () Bool)

(assert (=> d!167833 (=> res!1083234 e!885619)))

(assert (=> d!167833 (= res!1083234 (or (is-Nil!37141 l!556) (is-Nil!37141 (t!52080 l!556))))))

(assert (=> d!167833 (= (isStrictlySorted!1203 l!556) e!885619)))

(declare-fun b!1585962 () Bool)

(declare-fun e!885620 () Bool)

(assert (=> b!1585962 (= e!885619 e!885620)))

(declare-fun res!1083235 () Bool)

(assert (=> b!1585962 (=> (not res!1083235) (not e!885620))))

(assert (=> b!1585962 (= res!1083235 (bvslt (_1!13039 (h!38684 l!556)) (_1!13039 (h!38684 (t!52080 l!556)))))))

(declare-fun b!1585963 () Bool)

(assert (=> b!1585963 (= e!885620 (isStrictlySorted!1203 (t!52080 l!556)))))

(assert (= (and d!167833 (not res!1083234)) b!1585962))

(assert (= (and b!1585962 res!1083235) b!1585963))

(declare-fun m!1454603 () Bool)

(assert (=> b!1585963 m!1454603))

(assert (=> start!138388 d!167833))

(declare-fun d!167841 () Bool)

(declare-fun res!1083240 () Bool)

(declare-fun e!885625 () Bool)

(assert (=> d!167841 (=> res!1083240 e!885625)))

(assert (=> d!167841 (= res!1083240 (or (is-Nil!37141 lt!677397) (is-Nil!37141 (t!52080 lt!677397))))))

(assert (=> d!167841 (= (isStrictlySorted!1203 lt!677397) e!885625)))

(declare-fun b!1585966 () Bool)

(declare-fun e!885626 () Bool)

(assert (=> b!1585966 (= e!885625 e!885626)))

(declare-fun res!1083241 () Bool)

(assert (=> b!1585966 (=> (not res!1083241) (not e!885626))))

(assert (=> b!1585966 (= res!1083241 (bvslt (_1!13039 (h!38684 lt!677397)) (_1!13039 (h!38684 (t!52080 lt!677397)))))))

(declare-fun b!1585967 () Bool)

(assert (=> b!1585967 (= e!885626 (isStrictlySorted!1203 (t!52080 lt!677397)))))

(assert (= (and d!167841 (not res!1083240)) b!1585966))

(assert (= (and b!1585966 res!1083241) b!1585967))

(declare-fun m!1454605 () Bool)

(assert (=> b!1585967 m!1454605))

(assert (=> b!1585897 d!167841))

(declare-fun d!167845 () Bool)

(assert (=> d!167845 (= ($colon$colon!1049 Nil!37141 lt!677398) (Cons!37140 lt!677398 Nil!37141))))

(assert (=> b!1585897 d!167845))

(declare-fun d!167849 () Bool)

(declare-fun lt!677418 () Bool)

(declare-fun content!878 (List!37144) (Set tuple2!26058))

(assert (=> d!167849 (= lt!677418 (set.member lt!677398 (content!878 lt!677397)))))

(declare-fun e!885648 () Bool)

(assert (=> d!167849 (= lt!677418 e!885648)))

(declare-fun res!1083260 () Bool)

(assert (=> d!167849 (=> (not res!1083260) (not e!885648))))

(assert (=> d!167849 (= res!1083260 (is-Cons!37140 lt!677397))))

(assert (=> d!167849 (= (contains!10558 lt!677397 lt!677398) lt!677418)))

(declare-fun b!1585992 () Bool)

(declare-fun e!885647 () Bool)

(assert (=> b!1585992 (= e!885648 e!885647)))

(declare-fun res!1083261 () Bool)

(assert (=> b!1585992 (=> res!1083261 e!885647)))

(assert (=> b!1585992 (= res!1083261 (= (h!38684 lt!677397) lt!677398))))

(declare-fun b!1585993 () Bool)

(assert (=> b!1585993 (= e!885647 (contains!10558 (t!52080 lt!677397) lt!677398))))

(assert (= (and d!167849 res!1083260) b!1585992))

(assert (= (and b!1585992 (not res!1083261)) b!1585993))

(declare-fun m!1454613 () Bool)

(assert (=> d!167849 m!1454613))

(declare-fun m!1454615 () Bool)

(assert (=> d!167849 m!1454615))

(declare-fun m!1454617 () Bool)

(assert (=> b!1585993 m!1454617))

(assert (=> b!1585898 d!167849))

(declare-fun b!1586001 () Bool)

(declare-fun e!885654 () Bool)

(declare-fun tp!115333 () Bool)

(assert (=> b!1586001 (= e!885654 (and tp_is_empty!39535 tp!115333))))

(assert (=> b!1585900 (= tp!115321 e!885654)))

(assert (= (and b!1585900 (is-Cons!37140 (t!52080 l!556))) b!1586001))

(push 1)

