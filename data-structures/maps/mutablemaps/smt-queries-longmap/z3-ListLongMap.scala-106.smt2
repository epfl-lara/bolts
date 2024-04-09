; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1724 () Bool)

(assert start!1724)

(declare-fun b!12118 () Bool)

(declare-fun e!7234 () Bool)

(declare-fun e!7233 () Bool)

(assert (=> b!12118 (= e!7234 e!7233)))

(declare-fun res!9876 () Bool)

(assert (=> b!12118 (=> (not res!9876) (not e!7233))))

(declare-fun key!303 () (_ BitVec 64))

(declare-datatypes ((B!442 0))(
  ( (B!443 (val!316 Int)) )
))
(declare-datatypes ((tuple2!414 0))(
  ( (tuple2!415 (_1!207 (_ BitVec 64)) (_2!207 B!442)) )
))
(declare-datatypes ((List!363 0))(
  ( (Nil!360) (Cons!359 (h!925 tuple2!414) (t!2750 List!363)) )
))
(declare-fun l!1094 () List!363)

(declare-datatypes ((Option!48 0))(
  ( (Some!47 (v!1362 B!442)) (None!46) )
))
(declare-fun lt!3102 () Option!48)

(declare-fun getValueByKey!42 (List!363 (_ BitVec 64)) Option!48)

(assert (=> b!12118 (= res!9876 (= (getValueByKey!42 l!1094 key!303) lt!3102))))

(declare-fun v!194 () B!442)

(assert (=> b!12118 (= lt!3102 (Some!47 v!194))))

(declare-fun b!12119 () Bool)

(declare-fun e!7235 () Bool)

(assert (=> b!12119 (= e!7235 (not (= (getValueByKey!42 (t!2750 l!1094) key!303) lt!3102)))))

(declare-fun res!9877 () Bool)

(assert (=> start!1724 (=> (not res!9877) (not e!7234))))

(declare-fun isStrictlySorted!60 (List!363) Bool)

(assert (=> start!1724 (= res!9877 (isStrictlySorted!60 l!1094))))

(assert (=> start!1724 e!7234))

(declare-fun e!7232 () Bool)

(assert (=> start!1724 e!7232))

(declare-fun tp_is_empty!615 () Bool)

(assert (=> start!1724 tp_is_empty!615))

(assert (=> start!1724 true))

(declare-fun b!12120 () Bool)

(declare-fun res!9875 () Bool)

(assert (=> b!12120 (=> (not res!9875) (not e!7233))))

(get-info :version)

(assert (=> b!12120 (= res!9875 (and ((_ is Cons!359) l!1094) (not (= (_1!207 (h!925 l!1094)) key!303))))))

(declare-fun b!12121 () Bool)

(assert (=> b!12121 (= e!7233 e!7235)))

(declare-fun res!9874 () Bool)

(assert (=> b!12121 (=> res!9874 e!7235)))

(assert (=> b!12121 (= res!9874 (not (isStrictlySorted!60 (t!2750 l!1094))))))

(declare-fun b!12122 () Bool)

(declare-fun tp!2045 () Bool)

(assert (=> b!12122 (= e!7232 (and tp_is_empty!615 tp!2045))))

(assert (= (and start!1724 res!9877) b!12118))

(assert (= (and b!12118 res!9876) b!12120))

(assert (= (and b!12120 res!9875) b!12121))

(assert (= (and b!12121 (not res!9874)) b!12119))

(assert (= (and start!1724 ((_ is Cons!359) l!1094)) b!12122))

(declare-fun m!8371 () Bool)

(assert (=> b!12118 m!8371))

(declare-fun m!8373 () Bool)

(assert (=> b!12119 m!8373))

(declare-fun m!8375 () Bool)

(assert (=> start!1724 m!8375))

(declare-fun m!8377 () Bool)

(assert (=> b!12121 m!8377))

(check-sat (not start!1724) (not b!12121) (not b!12118) (not b!12119) tp_is_empty!615 (not b!12122))
(check-sat)
(get-model)

(declare-fun d!1689 () Bool)

(declare-fun res!9894 () Bool)

(declare-fun e!7252 () Bool)

(assert (=> d!1689 (=> res!9894 e!7252)))

(assert (=> d!1689 (= res!9894 (or ((_ is Nil!360) (t!2750 l!1094)) ((_ is Nil!360) (t!2750 (t!2750 l!1094)))))))

(assert (=> d!1689 (= (isStrictlySorted!60 (t!2750 l!1094)) e!7252)))

(declare-fun b!12142 () Bool)

(declare-fun e!7253 () Bool)

(assert (=> b!12142 (= e!7252 e!7253)))

(declare-fun res!9895 () Bool)

(assert (=> b!12142 (=> (not res!9895) (not e!7253))))

(assert (=> b!12142 (= res!9895 (bvslt (_1!207 (h!925 (t!2750 l!1094))) (_1!207 (h!925 (t!2750 (t!2750 l!1094))))))))

(declare-fun b!12143 () Bool)

(assert (=> b!12143 (= e!7253 (isStrictlySorted!60 (t!2750 (t!2750 l!1094))))))

(assert (= (and d!1689 (not res!9894)) b!12142))

(assert (= (and b!12142 res!9895) b!12143))

(declare-fun m!8387 () Bool)

(assert (=> b!12143 m!8387))

(assert (=> b!12121 d!1689))

(declare-fun d!1695 () Bool)

(declare-fun res!9896 () Bool)

(declare-fun e!7254 () Bool)

(assert (=> d!1695 (=> res!9896 e!7254)))

(assert (=> d!1695 (= res!9896 (or ((_ is Nil!360) l!1094) ((_ is Nil!360) (t!2750 l!1094))))))

(assert (=> d!1695 (= (isStrictlySorted!60 l!1094) e!7254)))

(declare-fun b!12144 () Bool)

(declare-fun e!7255 () Bool)

(assert (=> b!12144 (= e!7254 e!7255)))

(declare-fun res!9897 () Bool)

(assert (=> b!12144 (=> (not res!9897) (not e!7255))))

(assert (=> b!12144 (= res!9897 (bvslt (_1!207 (h!925 l!1094)) (_1!207 (h!925 (t!2750 l!1094)))))))

(declare-fun b!12145 () Bool)

(assert (=> b!12145 (= e!7255 (isStrictlySorted!60 (t!2750 l!1094)))))

(assert (= (and d!1695 (not res!9896)) b!12144))

(assert (= (and b!12144 res!9897) b!12145))

(assert (=> b!12145 m!8377))

(assert (=> start!1724 d!1695))

(declare-fun d!1697 () Bool)

(declare-fun c!1055 () Bool)

(assert (=> d!1697 (= c!1055 (and ((_ is Cons!359) l!1094) (= (_1!207 (h!925 l!1094)) key!303)))))

(declare-fun e!7270 () Option!48)

(assert (=> d!1697 (= (getValueByKey!42 l!1094 key!303) e!7270)))

(declare-fun b!12175 () Bool)

(declare-fun e!7271 () Option!48)

(assert (=> b!12175 (= e!7270 e!7271)))

(declare-fun c!1056 () Bool)

(assert (=> b!12175 (= c!1056 (and ((_ is Cons!359) l!1094) (not (= (_1!207 (h!925 l!1094)) key!303))))))

(declare-fun b!12174 () Bool)

(assert (=> b!12174 (= e!7270 (Some!47 (_2!207 (h!925 l!1094))))))

(declare-fun b!12177 () Bool)

(assert (=> b!12177 (= e!7271 None!46)))

(declare-fun b!12176 () Bool)

(assert (=> b!12176 (= e!7271 (getValueByKey!42 (t!2750 l!1094) key!303))))

(assert (= (and d!1697 c!1055) b!12174))

(assert (= (and d!1697 (not c!1055)) b!12175))

(assert (= (and b!12175 c!1056) b!12176))

(assert (= (and b!12175 (not c!1056)) b!12177))

(assert (=> b!12176 m!8373))

(assert (=> b!12118 d!1697))

(declare-fun d!1699 () Bool)

(declare-fun c!1059 () Bool)

(assert (=> d!1699 (= c!1059 (and ((_ is Cons!359) (t!2750 l!1094)) (= (_1!207 (h!925 (t!2750 l!1094))) key!303)))))

(declare-fun e!7274 () Option!48)

(assert (=> d!1699 (= (getValueByKey!42 (t!2750 l!1094) key!303) e!7274)))

(declare-fun b!12183 () Bool)

(declare-fun e!7275 () Option!48)

(assert (=> b!12183 (= e!7274 e!7275)))

(declare-fun c!1060 () Bool)

(assert (=> b!12183 (= c!1060 (and ((_ is Cons!359) (t!2750 l!1094)) (not (= (_1!207 (h!925 (t!2750 l!1094))) key!303))))))

(declare-fun b!12182 () Bool)

(assert (=> b!12182 (= e!7274 (Some!47 (_2!207 (h!925 (t!2750 l!1094)))))))

(declare-fun b!12185 () Bool)

(assert (=> b!12185 (= e!7275 None!46)))

(declare-fun b!12184 () Bool)

(assert (=> b!12184 (= e!7275 (getValueByKey!42 (t!2750 (t!2750 l!1094)) key!303))))

(assert (= (and d!1699 c!1059) b!12182))

(assert (= (and d!1699 (not c!1059)) b!12183))

(assert (= (and b!12183 c!1060) b!12184))

(assert (= (and b!12183 (not c!1060)) b!12185))

(declare-fun m!8391 () Bool)

(assert (=> b!12184 m!8391))

(assert (=> b!12119 d!1699))

(declare-fun b!12194 () Bool)

(declare-fun e!7280 () Bool)

(declare-fun tp!2051 () Bool)

(assert (=> b!12194 (= e!7280 (and tp_is_empty!615 tp!2051))))

(assert (=> b!12122 (= tp!2045 e!7280)))

(assert (= (and b!12122 ((_ is Cons!359) (t!2750 l!1094))) b!12194))

(check-sat tp_is_empty!615 (not b!12176) (not b!12145) (not b!12143) (not b!12184) (not b!12194))
(check-sat)
