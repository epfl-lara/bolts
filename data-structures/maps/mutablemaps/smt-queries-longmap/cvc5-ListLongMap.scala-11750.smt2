; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137890 () Bool)

(assert start!137890)

(declare-fun b!1583110 () Bool)

(declare-fun e!883655 () Bool)

(declare-datatypes ((B!2840 0))(
  ( (B!2841 (val!19782 Int)) )
))
(declare-datatypes ((tuple2!25896 0))(
  ( (tuple2!25897 (_1!12958 (_ BitVec 64)) (_2!12958 B!2840)) )
))
(declare-datatypes ((List!37063 0))(
  ( (Nil!37060) (Cons!37059 (h!38603 tuple2!25896) (t!51984 List!37063)) )
))
(declare-fun l!1065 () List!37063)

(declare-fun key!287 () (_ BitVec 64))

(declare-datatypes ((Option!945 0))(
  ( (Some!944 (v!22468 B!2840)) (None!943) )
))
(declare-fun isDefined!605 (Option!945) Bool)

(declare-fun getValueByKey!837 (List!37063 (_ BitVec 64)) Option!945)

(assert (=> b!1583110 (= e!883655 (not (isDefined!605 (getValueByKey!837 l!1065 key!287))))))

(declare-fun b!1583111 () Bool)

(declare-fun e!883656 () Bool)

(declare-fun tp_is_empty!39373 () Bool)

(declare-fun tp!114913 () Bool)

(assert (=> b!1583111 (= e!883656 (and tp_is_empty!39373 tp!114913))))

(declare-fun b!1583109 () Bool)

(declare-fun res!1081571 () Bool)

(assert (=> b!1583109 (=> (not res!1081571) (not e!883655))))

(assert (=> b!1583109 (= res!1081571 (or (not (is-Cons!37059 l!1065)) (= (_1!12958 (h!38603 l!1065)) key!287)))))

(declare-fun res!1081569 () Bool)

(assert (=> start!137890 (=> (not res!1081569) (not e!883655))))

(declare-fun isStrictlySorted!1134 (List!37063) Bool)

(assert (=> start!137890 (= res!1081569 (isStrictlySorted!1134 l!1065))))

(assert (=> start!137890 e!883655))

(assert (=> start!137890 e!883656))

(assert (=> start!137890 true))

(declare-fun b!1583108 () Bool)

(declare-fun res!1081570 () Bool)

(assert (=> b!1583108 (=> (not res!1081570) (not e!883655))))

(declare-fun containsKey!980 (List!37063 (_ BitVec 64)) Bool)

(assert (=> b!1583108 (= res!1081570 (containsKey!980 l!1065 key!287))))

(assert (= (and start!137890 res!1081569) b!1583108))

(assert (= (and b!1583108 res!1081570) b!1583109))

(assert (= (and b!1583109 res!1081571) b!1583110))

(assert (= (and start!137890 (is-Cons!37059 l!1065)) b!1583111))

(declare-fun m!1453151 () Bool)

(assert (=> b!1583110 m!1453151))

(assert (=> b!1583110 m!1453151))

(declare-fun m!1453153 () Bool)

(assert (=> b!1583110 m!1453153))

(declare-fun m!1453155 () Bool)

(assert (=> start!137890 m!1453155))

(declare-fun m!1453157 () Bool)

(assert (=> b!1583108 m!1453157))

(push 1)

(assert (not b!1583110))

(assert (not start!137890))

(assert (not b!1583111))

(assert (not b!1583108))

(assert tp_is_empty!39373)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167117 () Bool)

(declare-fun res!1081600 () Bool)

(declare-fun e!883679 () Bool)

(assert (=> d!167117 (=> res!1081600 e!883679)))

(assert (=> d!167117 (= res!1081600 (or (is-Nil!37060 l!1065) (is-Nil!37060 (t!51984 l!1065))))))

(assert (=> d!167117 (= (isStrictlySorted!1134 l!1065) e!883679)))

(declare-fun b!1583148 () Bool)

(declare-fun e!883680 () Bool)

(assert (=> b!1583148 (= e!883679 e!883680)))

(declare-fun res!1081601 () Bool)

(assert (=> b!1583148 (=> (not res!1081601) (not e!883680))))

(assert (=> b!1583148 (= res!1081601 (bvslt (_1!12958 (h!38603 l!1065)) (_1!12958 (h!38603 (t!51984 l!1065)))))))

(declare-fun b!1583149 () Bool)

(assert (=> b!1583149 (= e!883680 (isStrictlySorted!1134 (t!51984 l!1065)))))

(assert (= (and d!167117 (not res!1081600)) b!1583148))

(assert (= (and b!1583148 res!1081601) b!1583149))

(declare-fun m!1453179 () Bool)

(assert (=> b!1583149 m!1453179))

(assert (=> start!137890 d!167117))

(declare-fun d!167125 () Bool)

(declare-fun isEmpty!1193 (Option!945) Bool)

(assert (=> d!167125 (= (isDefined!605 (getValueByKey!837 l!1065 key!287)) (not (isEmpty!1193 (getValueByKey!837 l!1065 key!287))))))

(declare-fun bs!45884 () Bool)

(assert (= bs!45884 d!167125))

(assert (=> bs!45884 m!1453151))

(declare-fun m!1453181 () Bool)

(assert (=> bs!45884 m!1453181))

(assert (=> b!1583110 d!167125))

(declare-fun b!1583187 () Bool)

(declare-fun e!883705 () Option!945)

(declare-fun e!883706 () Option!945)

(assert (=> b!1583187 (= e!883705 e!883706)))

(declare-fun c!146662 () Bool)

(assert (=> b!1583187 (= c!146662 (and (is-Cons!37059 l!1065) (not (= (_1!12958 (h!38603 l!1065)) key!287))))))

(declare-fun b!1583189 () Bool)

(assert (=> b!1583189 (= e!883706 None!943)))

(declare-fun d!167127 () Bool)

(declare-fun c!146661 () Bool)

(assert (=> d!167127 (= c!146661 (and (is-Cons!37059 l!1065) (= (_1!12958 (h!38603 l!1065)) key!287)))))

(assert (=> d!167127 (= (getValueByKey!837 l!1065 key!287) e!883705)))

(declare-fun b!1583188 () Bool)

(assert (=> b!1583188 (= e!883706 (getValueByKey!837 (t!51984 l!1065) key!287))))

(declare-fun b!1583186 () Bool)

(assert (=> b!1583186 (= e!883705 (Some!944 (_2!12958 (h!38603 l!1065))))))

(assert (= (and d!167127 c!146661) b!1583186))

(assert (= (and d!167127 (not c!146661)) b!1583187))

(assert (= (and b!1583187 c!146662) b!1583188))

(assert (= (and b!1583187 (not c!146662)) b!1583189))

(declare-fun m!1453189 () Bool)

(assert (=> b!1583188 m!1453189))

(assert (=> b!1583110 d!167127))

(declare-fun d!167135 () Bool)

(declare-fun res!1081622 () Bool)

(declare-fun e!883722 () Bool)

(assert (=> d!167135 (=> res!1081622 e!883722)))

(assert (=> d!167135 (= res!1081622 (and (is-Cons!37059 l!1065) (= (_1!12958 (h!38603 l!1065)) key!287)))))

(assert (=> d!167135 (= (containsKey!980 l!1065 key!287) e!883722)))

(declare-fun b!1583209 () Bool)

(declare-fun e!883723 () Bool)

(assert (=> b!1583209 (= e!883722 e!883723)))

(declare-fun res!1081623 () Bool)

(assert (=> b!1583209 (=> (not res!1081623) (not e!883723))))

(assert (=> b!1583209 (= res!1081623 (and (or (not (is-Cons!37059 l!1065)) (bvsle (_1!12958 (h!38603 l!1065)) key!287)) (is-Cons!37059 l!1065) (bvslt (_1!12958 (h!38603 l!1065)) key!287)))))

(declare-fun b!1583210 () Bool)

(assert (=> b!1583210 (= e!883723 (containsKey!980 (t!51984 l!1065) key!287))))

(assert (= (and d!167135 (not res!1081622)) b!1583209))

(assert (= (and b!1583209 res!1081623) b!1583210))

(declare-fun m!1453195 () Bool)

(assert (=> b!1583210 m!1453195))

(assert (=> b!1583108 d!167135))

(declare-fun b!1583217 () Bool)

(declare-fun e!883728 () Bool)

(declare-fun tp!114925 () Bool)

(assert (=> b!1583217 (= e!883728 (and tp_is_empty!39373 tp!114925))))

(assert (=> b!1583111 (= tp!114913 e!883728)))

(assert (= (and b!1583111 (is-Cons!37059 (t!51984 l!1065))) b!1583217))

(push 1)

(assert (not b!1583217))

(assert (not b!1583188))

(assert tp_is_empty!39373)

(assert (not d!167125))

(assert (not b!1583210))

(assert (not b!1583149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1583224 () Bool)

(declare-fun e!883732 () Option!945)

(declare-fun e!883733 () Option!945)

(assert (=> b!1583224 (= e!883732 e!883733)))

(declare-fun c!146666 () Bool)

(assert (=> b!1583224 (= c!146666 (and (is-Cons!37059 (t!51984 l!1065)) (not (= (_1!12958 (h!38603 (t!51984 l!1065))) key!287))))))

(declare-fun b!1583226 () Bool)

(assert (=> b!1583226 (= e!883733 None!943)))

(declare-fun d!167139 () Bool)

(declare-fun c!146665 () Bool)

(assert (=> d!167139 (= c!146665 (and (is-Cons!37059 (t!51984 l!1065)) (= (_1!12958 (h!38603 (t!51984 l!1065))) key!287)))))

(assert (=> d!167139 (= (getValueByKey!837 (t!51984 l!1065) key!287) e!883732)))

(declare-fun b!1583225 () Bool)

(assert (=> b!1583225 (= e!883733 (getValueByKey!837 (t!51984 (t!51984 l!1065)) key!287))))

(declare-fun b!1583223 () Bool)

(assert (=> b!1583223 (= e!883732 (Some!944 (_2!12958 (h!38603 (t!51984 l!1065)))))))

(assert (= (and d!167139 c!146665) b!1583223))

(assert (= (and d!167139 (not c!146665)) b!1583224))

(assert (= (and b!1583224 c!146666) b!1583225))

(assert (= (and b!1583224 (not c!146666)) b!1583226))

(declare-fun m!1453199 () Bool)

(assert (=> b!1583225 m!1453199))

(assert (=> b!1583188 d!167139))

(declare-fun d!167141 () Bool)

(assert (=> d!167141 (= (isEmpty!1193 (getValueByKey!837 l!1065 key!287)) (not (is-Some!944 (getValueByKey!837 l!1065 key!287))))))

(assert (=> d!167125 d!167141))

(declare-fun d!167143 () Bool)

(declare-fun res!1081626 () Bool)

(declare-fun e!883734 () Bool)

(assert (=> d!167143 (=> res!1081626 e!883734)))

(assert (=> d!167143 (= res!1081626 (or (is-Nil!37060 (t!51984 l!1065)) (is-Nil!37060 (t!51984 (t!51984 l!1065)))))))

(assert (=> d!167143 (= (isStrictlySorted!1134 (t!51984 l!1065)) e!883734)))

(declare-fun b!1583227 () Bool)

(declare-fun e!883735 () Bool)

(assert (=> b!1583227 (= e!883734 e!883735)))

(declare-fun res!1081627 () Bool)

(assert (=> b!1583227 (=> (not res!1081627) (not e!883735))))

(assert (=> b!1583227 (= res!1081627 (bvslt (_1!12958 (h!38603 (t!51984 l!1065))) (_1!12958 (h!38603 (t!51984 (t!51984 l!1065))))))))

(declare-fun b!1583228 () Bool)

(assert (=> b!1583228 (= e!883735 (isStrictlySorted!1134 (t!51984 (t!51984 l!1065))))))

(assert (= (and d!167143 (not res!1081626)) b!1583227))

(assert (= (and b!1583227 res!1081627) b!1583228))

(declare-fun m!1453201 () Bool)

(assert (=> b!1583228 m!1453201))

(assert (=> b!1583149 d!167143))

(declare-fun d!167145 () Bool)

(declare-fun res!1081628 () Bool)

(declare-fun e!883736 () Bool)

(assert (=> d!167145 (=> res!1081628 e!883736)))

(assert (=> d!167145 (= res!1081628 (and (is-Cons!37059 (t!51984 l!1065)) (= (_1!12958 (h!38603 (t!51984 l!1065))) key!287)))))

(assert (=> d!167145 (= (containsKey!980 (t!51984 l!1065) key!287) e!883736)))

(declare-fun b!1583229 () Bool)

(declare-fun e!883737 () Bool)

(assert (=> b!1583229 (= e!883736 e!883737)))

(declare-fun res!1081629 () Bool)

(assert (=> b!1583229 (=> (not res!1081629) (not e!883737))))

(assert (=> b!1583229 (= res!1081629 (and (or (not (is-Cons!37059 (t!51984 l!1065))) (bvsle (_1!12958 (h!38603 (t!51984 l!1065))) key!287)) (is-Cons!37059 (t!51984 l!1065)) (bvslt (_1!12958 (h!38603 (t!51984 l!1065))) key!287)))))

(declare-fun b!1583230 () Bool)

(assert (=> b!1583230 (= e!883737 (containsKey!980 (t!51984 (t!51984 l!1065)) key!287))))

(assert (= (and d!167145 (not res!1081628)) b!1583229))

(assert (= (and b!1583229 res!1081629) b!1583230))

(declare-fun m!1453203 () Bool)

(assert (=> b!1583230 m!1453203))

(assert (=> b!1583210 d!167145))

(declare-fun b!1583231 () Bool)

(declare-fun e!883738 () Bool)

(declare-fun tp!114929 () Bool)

(assert (=> b!1583231 (= e!883738 (and tp_is_empty!39373 tp!114929))))

(assert (=> b!1583217 (= tp!114925 e!883738)))

(assert (= (and b!1583217 (is-Cons!37059 (t!51984 (t!51984 l!1065)))) b!1583231))

(push 1)

(assert (not b!1583228))

(assert (not b!1583231))

(assert (not b!1583225))

(assert (not b!1583230))

(assert tp_is_empty!39373)

(check-sat)

(pop 1)

