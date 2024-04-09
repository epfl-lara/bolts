; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1726 () Bool)

(assert start!1726)

(declare-fun b!12133 () Bool)

(declare-fun e!7247 () Bool)

(declare-fun tp_is_empty!617 () Bool)

(declare-fun tp!2048 () Bool)

(assert (=> b!12133 (= e!7247 (and tp_is_empty!617 tp!2048))))

(declare-fun b!12134 () Bool)

(declare-fun res!9886 () Bool)

(declare-fun e!7246 () Bool)

(assert (=> b!12134 (=> (not res!9886) (not e!7246))))

(declare-datatypes ((B!444 0))(
  ( (B!445 (val!317 Int)) )
))
(declare-datatypes ((tuple2!416 0))(
  ( (tuple2!417 (_1!208 (_ BitVec 64)) (_2!208 B!444)) )
))
(declare-datatypes ((List!364 0))(
  ( (Nil!361) (Cons!360 (h!926 tuple2!416) (t!2751 List!364)) )
))
(declare-fun l!1094 () List!364)

(declare-fun key!303 () (_ BitVec 64))

(assert (=> b!12134 (= res!9886 (and (is-Cons!360 l!1094) (not (= (_1!208 (h!926 l!1094)) key!303))))))

(declare-fun b!12135 () Bool)

(declare-fun e!7245 () Bool)

(declare-datatypes ((Option!49 0))(
  ( (Some!48 (v!1363 B!444)) (None!47) )
))
(declare-fun lt!3105 () Option!49)

(declare-fun getValueByKey!43 (List!364 (_ BitVec 64)) Option!49)

(assert (=> b!12135 (= e!7245 (not (= (getValueByKey!43 (t!2751 l!1094) key!303) lt!3105)))))

(declare-fun res!9888 () Bool)

(declare-fun e!7244 () Bool)

(assert (=> start!1726 (=> (not res!9888) (not e!7244))))

(declare-fun isStrictlySorted!61 (List!364) Bool)

(assert (=> start!1726 (= res!9888 (isStrictlySorted!61 l!1094))))

(assert (=> start!1726 e!7244))

(assert (=> start!1726 e!7247))

(assert (=> start!1726 tp_is_empty!617))

(assert (=> start!1726 true))

(declare-fun b!12136 () Bool)

(assert (=> b!12136 (= e!7244 e!7246)))

(declare-fun res!9887 () Bool)

(assert (=> b!12136 (=> (not res!9887) (not e!7246))))

(assert (=> b!12136 (= res!9887 (= (getValueByKey!43 l!1094 key!303) lt!3105))))

(declare-fun v!194 () B!444)

(assert (=> b!12136 (= lt!3105 (Some!48 v!194))))

(declare-fun b!12137 () Bool)

(assert (=> b!12137 (= e!7246 e!7245)))

(declare-fun res!9889 () Bool)

(assert (=> b!12137 (=> res!9889 e!7245)))

(assert (=> b!12137 (= res!9889 (not (isStrictlySorted!61 (t!2751 l!1094))))))

(assert (= (and start!1726 res!9888) b!12136))

(assert (= (and b!12136 res!9887) b!12134))

(assert (= (and b!12134 res!9886) b!12137))

(assert (= (and b!12137 (not res!9889)) b!12135))

(assert (= (and start!1726 (is-Cons!360 l!1094)) b!12133))

(declare-fun m!8379 () Bool)

(assert (=> b!12135 m!8379))

(declare-fun m!8381 () Bool)

(assert (=> start!1726 m!8381))

(declare-fun m!8383 () Bool)

(assert (=> b!12136 m!8383))

(declare-fun m!8385 () Bool)

(assert (=> b!12137 m!8385))

(push 1)

(assert (not b!12135))

(assert (not start!1726))

(assert (not b!12136))

(assert tp_is_empty!617)

(assert (not b!12137))

(assert (not b!12133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!12180 () Bool)

(declare-fun e!7273 () Option!49)

(assert (=> b!12180 (= e!7273 (getValueByKey!43 (t!2751 (t!2751 l!1094)) key!303))))

(declare-fun b!12178 () Bool)

(declare-fun e!7272 () Option!49)

(assert (=> b!12178 (= e!7272 (Some!48 (_2!208 (h!926 (t!2751 l!1094)))))))

(declare-fun b!12179 () Bool)

(assert (=> b!12179 (= e!7272 e!7273)))

(declare-fun c!1058 () Bool)

(assert (=> b!12179 (= c!1058 (and (is-Cons!360 (t!2751 l!1094)) (not (= (_1!208 (h!926 (t!2751 l!1094))) key!303))))))

(declare-fun d!1693 () Bool)

(declare-fun c!1057 () Bool)

(assert (=> d!1693 (= c!1057 (and (is-Cons!360 (t!2751 l!1094)) (= (_1!208 (h!926 (t!2751 l!1094))) key!303)))))

(assert (=> d!1693 (= (getValueByKey!43 (t!2751 l!1094) key!303) e!7272)))

(declare-fun b!12181 () Bool)

(assert (=> b!12181 (= e!7273 None!47)))

(assert (= (and d!1693 c!1057) b!12178))

(assert (= (and d!1693 (not c!1057)) b!12179))

(assert (= (and b!12179 c!1058) b!12180))

(assert (= (and b!12179 (not c!1058)) b!12181))

(declare-fun m!8389 () Bool)

(assert (=> b!12180 m!8389))

(assert (=> b!12135 d!1693))

(declare-fun b!12188 () Bool)

(declare-fun e!7277 () Option!49)

(assert (=> b!12188 (= e!7277 (getValueByKey!43 (t!2751 l!1094) key!303))))

(declare-fun b!12186 () Bool)

(declare-fun e!7276 () Option!49)

(assert (=> b!12186 (= e!7276 (Some!48 (_2!208 (h!926 l!1094))))))

(declare-fun b!12187 () Bool)

(assert (=> b!12187 (= e!7276 e!7277)))

(declare-fun c!1062 () Bool)

(assert (=> b!12187 (= c!1062 (and (is-Cons!360 l!1094) (not (= (_1!208 (h!926 l!1094)) key!303))))))

(declare-fun d!1703 () Bool)

(declare-fun c!1061 () Bool)

(assert (=> d!1703 (= c!1061 (and (is-Cons!360 l!1094) (= (_1!208 (h!926 l!1094)) key!303)))))

(assert (=> d!1703 (= (getValueByKey!43 l!1094 key!303) e!7276)))

(declare-fun b!12189 () Bool)

(assert (=> b!12189 (= e!7277 None!47)))

(assert (= (and d!1703 c!1061) b!12186))

(assert (= (and d!1703 (not c!1061)) b!12187))

(assert (= (and b!12187 c!1062) b!12188))

(assert (= (and b!12187 (not c!1062)) b!12189))

(assert (=> b!12188 m!8379))

(assert (=> b!12136 d!1703))

(declare-fun d!1705 () Bool)

(declare-fun res!9908 () Bool)

(declare-fun e!7293 () Bool)

(assert (=> d!1705 (=> res!9908 e!7293)))

(assert (=> d!1705 (= res!9908 (or (is-Nil!361 (t!2751 l!1094)) (is-Nil!361 (t!2751 (t!2751 l!1094)))))))

(assert (=> d!1705 (= (isStrictlySorted!61 (t!2751 l!1094)) e!7293)))

(declare-fun b!12209 () Bool)

(declare-fun e!7294 () Bool)

(assert (=> b!12209 (= e!7293 e!7294)))

(declare-fun res!9909 () Bool)

(assert (=> b!12209 (=> (not res!9909) (not e!7294))))

(assert (=> b!12209 (= res!9909 (bvslt (_1!208 (h!926 (t!2751 l!1094))) (_1!208 (h!926 (t!2751 (t!2751 l!1094))))))))

(declare-fun b!12210 () Bool)

(assert (=> b!12210 (= e!7294 (isStrictlySorted!61 (t!2751 (t!2751 l!1094))))))

(assert (= (and d!1705 (not res!9908)) b!12209))

(assert (= (and b!12209 res!9909) b!12210))

(declare-fun m!8395 () Bool)

(assert (=> b!12210 m!8395))

(assert (=> b!12137 d!1705))

(declare-fun d!1711 () Bool)

(declare-fun res!9912 () Bool)

(declare-fun e!7297 () Bool)

(assert (=> d!1711 (=> res!9912 e!7297)))

