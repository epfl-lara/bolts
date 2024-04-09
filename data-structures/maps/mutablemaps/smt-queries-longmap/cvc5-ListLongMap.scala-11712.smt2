; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137104 () Bool)

(assert start!137104)

(declare-fun b!1579777 () Bool)

(declare-fun res!1079264 () Bool)

(declare-fun e!881310 () Bool)

(assert (=> b!1579777 (=> (not res!1079264) (not e!881310))))

(declare-datatypes ((B!2612 0))(
  ( (B!2613 (val!19668 Int)) )
))
(declare-datatypes ((tuple2!25602 0))(
  ( (tuple2!25603 (_1!12811 (_ BitVec 64)) (_2!12811 B!2612)) )
))
(declare-datatypes ((List!36949 0))(
  ( (Nil!36946) (Cons!36945 (h!38489 tuple2!25602) (t!51870 List!36949)) )
))
(declare-fun l!1390 () List!36949)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!890 (List!36949 (_ BitVec 64)) Bool)

(assert (=> b!1579777 (= res!1079264 (containsKey!890 l!1390 key!405))))

(declare-fun res!1079263 () Bool)

(assert (=> start!137104 (=> (not res!1079263) (not e!881310))))

(declare-fun isStrictlySorted!1044 (List!36949) Bool)

(assert (=> start!137104 (= res!1079263 (isStrictlySorted!1044 l!1390))))

(assert (=> start!137104 e!881310))

(declare-fun e!881309 () Bool)

(assert (=> start!137104 e!881309))

(assert (=> start!137104 true))

(declare-fun tp_is_empty!39157 () Bool)

(assert (=> start!137104 tp_is_empty!39157))

(declare-fun b!1579778 () Bool)

(declare-fun e!881308 () Bool)

(assert (=> b!1579778 (= e!881310 e!881308)))

(declare-fun res!1079262 () Bool)

(assert (=> b!1579778 (=> (not res!1079262) (not e!881308))))

(declare-datatypes ((tuple2!25604 0))(
  ( (tuple2!25605 (_1!12812 tuple2!25602) (_2!12812 List!36949)) )
))
(declare-datatypes ((Option!888 0))(
  ( (Some!887 (v!22378 tuple2!25604)) (None!886) )
))
(declare-fun lt!676564 () Option!888)

(declare-fun isEmpty!1156 (Option!888) Bool)

(assert (=> b!1579778 (= res!1079262 (not (isEmpty!1156 lt!676564)))))

(declare-fun unapply!70 (List!36949) Option!888)

(assert (=> b!1579778 (= lt!676564 (unapply!70 l!1390))))

(declare-fun b!1579779 () Bool)

(declare-fun res!1079261 () Bool)

(assert (=> b!1579779 (=> (not res!1079261) (not e!881310))))

(declare-fun value!194 () B!2612)

(declare-fun contains!10477 (List!36949 tuple2!25602) Bool)

(assert (=> b!1579779 (= res!1079261 (contains!10477 l!1390 (tuple2!25603 key!405 value!194)))))

(declare-fun b!1579780 () Bool)

(declare-fun isDefined!593 (Option!888) Bool)

(assert (=> b!1579780 (= e!881308 (not (isDefined!593 lt!676564)))))

(declare-fun b!1579781 () Bool)

(declare-fun tp!114388 () Bool)

(assert (=> b!1579781 (= e!881309 (and tp_is_empty!39157 tp!114388))))

(assert (= (and start!137104 res!1079263) b!1579777))

(assert (= (and b!1579777 res!1079264) b!1579779))

(assert (= (and b!1579779 res!1079261) b!1579778))

(assert (= (and b!1579778 res!1079262) b!1579780))

(assert (= (and start!137104 (is-Cons!36945 l!1390)) b!1579781))

(declare-fun m!1451429 () Bool)

(assert (=> b!1579779 m!1451429))

(declare-fun m!1451431 () Bool)

(assert (=> b!1579777 m!1451431))

(declare-fun m!1451433 () Bool)

(assert (=> b!1579780 m!1451433))

(declare-fun m!1451435 () Bool)

(assert (=> b!1579778 m!1451435))

(declare-fun m!1451437 () Bool)

(assert (=> b!1579778 m!1451437))

(declare-fun m!1451439 () Bool)

(assert (=> start!137104 m!1451439))

(push 1)

(assert (not start!137104))

(assert (not b!1579781))

(assert (not b!1579778))

(assert (not b!1579780))

(assert (not b!1579779))

(assert (not b!1579777))

(assert tp_is_empty!39157)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166291 () Bool)

(assert (=> d!166291 (= (isDefined!593 lt!676564) (not (isEmpty!1156 lt!676564)))))

(declare-fun bs!45754 () Bool)

(assert (= bs!45754 d!166291))

(assert (=> bs!45754 m!1451435))

(assert (=> b!1579780 d!166291))

(declare-fun d!166295 () Bool)

(declare-fun res!1079303 () Bool)

(declare-fun e!881343 () Bool)

(assert (=> d!166295 (=> res!1079303 e!881343)))

(assert (=> d!166295 (= res!1079303 (and (is-Cons!36945 l!1390) (= (_1!12811 (h!38489 l!1390)) key!405)))))

(assert (=> d!166295 (= (containsKey!890 l!1390 key!405) e!881343)))

(declare-fun b!1579826 () Bool)

(declare-fun e!881344 () Bool)

(assert (=> b!1579826 (= e!881343 e!881344)))

(declare-fun res!1079304 () Bool)

(assert (=> b!1579826 (=> (not res!1079304) (not e!881344))))

(assert (=> b!1579826 (= res!1079304 (and (or (not (is-Cons!36945 l!1390)) (bvsle (_1!12811 (h!38489 l!1390)) key!405)) (is-Cons!36945 l!1390) (bvslt (_1!12811 (h!38489 l!1390)) key!405)))))

(declare-fun b!1579827 () Bool)

(assert (=> b!1579827 (= e!881344 (containsKey!890 (t!51870 l!1390) key!405))))

(assert (= (and d!166295 (not res!1079303)) b!1579826))

(assert (= (and b!1579826 res!1079304) b!1579827))

(declare-fun m!1451467 () Bool)

(assert (=> b!1579827 m!1451467))

(assert (=> b!1579777 d!166295))

(declare-fun d!166301 () Bool)

(assert (=> d!166301 (= (isEmpty!1156 lt!676564) (not (is-Some!887 lt!676564)))))

(assert (=> b!1579778 d!166301))

(declare-fun d!166305 () Bool)

(assert (=> d!166305 (= (unapply!70 l!1390) (ite (is-Nil!36946 l!1390) None!886 (Some!887 (tuple2!25605 (h!38489 l!1390) (t!51870 l!1390)))))))

(assert (=> b!1579778 d!166305))

(declare-fun d!166309 () Bool)

(declare-fun res!1079323 () Bool)

(declare-fun e!881363 () Bool)

(assert (=> d!166309 (=> res!1079323 e!881363)))

(assert (=> d!166309 (= res!1079323 (or (is-Nil!36946 l!1390) (is-Nil!36946 (t!51870 l!1390))))))

(assert (=> d!166309 (= (isStrictlySorted!1044 l!1390) e!881363)))

(declare-fun b!1579846 () Bool)

(declare-fun e!881364 () Bool)

(assert (=> b!1579846 (= e!881363 e!881364)))

(declare-fun res!1079324 () Bool)

(assert (=> b!1579846 (=> (not res!1079324) (not e!881364))))

(assert (=> b!1579846 (= res!1079324 (bvslt (_1!12811 (h!38489 l!1390)) (_1!12811 (h!38489 (t!51870 l!1390)))))))

(declare-fun b!1579847 () Bool)

(assert (=> b!1579847 (= e!881364 (isStrictlySorted!1044 (t!51870 l!1390)))))

(assert (= (and d!166309 (not res!1079323)) b!1579846))

(assert (= (and b!1579846 res!1079324) b!1579847))

(declare-fun m!1451479 () Bool)

(assert (=> b!1579847 m!1451479))

(assert (=> start!137104 d!166309))

(declare-fun d!166317 () Bool)

(declare-fun lt!676579 () Bool)

(declare-fun content!834 (List!36949) (Set tuple2!25602))

(assert (=> d!166317 (= lt!676579 (set.member (tuple2!25603 key!405 value!194) (content!834 l!1390)))))

(declare-fun e!881381 () Bool)

(assert (=> d!166317 (= lt!676579 e!881381)))

(declare-fun res!1079342 () Bool)

(assert (=> d!166317 (=> (not res!1079342) (not e!881381))))

(assert (=> d!166317 (= res!1079342 (is-Cons!36945 l!1390))))

(assert (=> d!166317 (= (contains!10477 l!1390 (tuple2!25603 key!405 value!194)) lt!676579)))

(declare-fun b!1579864 () Bool)

(declare-fun e!881382 () Bool)

(assert (=> b!1579864 (= e!881381 e!881382)))

(declare-fun res!1079341 () Bool)

(assert (=> b!1579864 (=> res!1079341 e!881382)))

(assert (=> b!1579864 (= res!1079341 (= (h!38489 l!1390) (tuple2!25603 key!405 value!194)))))

(declare-fun b!1579865 () Bool)

(assert (=> b!1579865 (= e!881382 (contains!10477 (t!51870 l!1390) (tuple2!25603 key!405 value!194)))))

(assert (= (and d!166317 res!1079342) b!1579864))

(assert (= (and b!1579864 (not res!1079341)) b!1579865))

(declare-fun m!1451489 () Bool)

(assert (=> d!166317 m!1451489))

(declare-fun m!1451491 () Bool)

(assert (=> d!166317 m!1451491))

(declare-fun m!1451493 () Bool)

(assert (=> b!1579865 m!1451493))

(assert (=> b!1579779 d!166317))

(declare-fun b!1579877 () Bool)

(declare-fun e!881388 () Bool)

(declare-fun tp!114400 () Bool)

(assert (=> b!1579877 (= e!881388 (and tp_is_empty!39157 tp!114400))))

(assert (=> b!1579781 (= tp!114388 e!881388)))

(assert (= (and b!1579781 (is-Cons!36945 (t!51870 l!1390))) b!1579877))

(push 1)

