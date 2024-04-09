; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7470 () Bool)

(assert start!7470)

(declare-fun res!27861 () Bool)

(declare-fun e!30774 () Bool)

(assert (=> start!7470 (=> (not res!27861) (not e!30774))))

(declare-datatypes ((B!916 0))(
  ( (B!917 (val!1078 Int)) )
))
(declare-datatypes ((tuple2!1742 0))(
  ( (tuple2!1743 (_1!881 (_ BitVec 64)) (_2!881 B!916)) )
))
(declare-datatypes ((List!1294 0))(
  ( (Nil!1291) (Cons!1290 (h!1870 tuple2!1742) (t!4330 List!1294)) )
))
(declare-datatypes ((ListLongMap!1239 0))(
  ( (ListLongMap!1240 (toList!635 List!1294)) )
))
(declare-fun lm!267 () ListLongMap!1239)

(declare-fun key!657 () (_ BitVec 64))

(declare-fun contains!597 (ListLongMap!1239 (_ BitVec 64)) Bool)

(assert (=> start!7470 (= res!27861 (not (contains!597 lm!267 key!657)))))

(assert (=> start!7470 e!30774))

(declare-fun e!30775 () Bool)

(declare-fun inv!2221 (ListLongMap!1239) Bool)

(assert (=> start!7470 (and (inv!2221 lm!267) e!30775)))

(assert (=> start!7470 true))

(declare-fun b!47975 () Bool)

(declare-fun isStrictlySorted!244 (List!1294) Bool)

(assert (=> b!47975 (= e!30774 (not (isStrictlySorted!244 (toList!635 lm!267))))))

(declare-fun b!47976 () Bool)

(declare-fun tp!6314 () Bool)

(assert (=> b!47976 (= e!30775 tp!6314)))

(assert (= (and start!7470 res!27861) b!47975))

(assert (= start!7470 b!47976))

(declare-fun m!42009 () Bool)

(assert (=> start!7470 m!42009))

(declare-fun m!42011 () Bool)

(assert (=> start!7470 m!42011))

(declare-fun m!42013 () Bool)

(assert (=> b!47975 m!42013))

(check-sat (not start!7470) (not b!47975) (not b!47976))
(check-sat)
(get-model)

(declare-fun d!9531 () Bool)

(declare-fun e!30796 () Bool)

(assert (=> d!9531 e!30796))

(declare-fun res!27875 () Bool)

(assert (=> d!9531 (=> res!27875 e!30796)))

(declare-fun lt!20504 () Bool)

(assert (=> d!9531 (= res!27875 (not lt!20504))))

(declare-fun lt!20505 () Bool)

(assert (=> d!9531 (= lt!20504 lt!20505)))

(declare-datatypes ((Unit!1337 0))(
  ( (Unit!1338) )
))
(declare-fun lt!20507 () Unit!1337)

(declare-fun e!30797 () Unit!1337)

(assert (=> d!9531 (= lt!20507 e!30797)))

(declare-fun c!6464 () Bool)

(assert (=> d!9531 (= c!6464 lt!20505)))

(declare-fun containsKey!95 (List!1294 (_ BitVec 64)) Bool)

(assert (=> d!9531 (= lt!20505 (containsKey!95 (toList!635 lm!267) key!657))))

(assert (=> d!9531 (= (contains!597 lm!267 key!657) lt!20504)))

(declare-fun b!48001 () Bool)

(declare-fun lt!20506 () Unit!1337)

(assert (=> b!48001 (= e!30797 lt!20506)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!65 (List!1294 (_ BitVec 64)) Unit!1337)

(assert (=> b!48001 (= lt!20506 (lemmaContainsKeyImpliesGetValueByKeyDefined!65 (toList!635 lm!267) key!657))))

(declare-datatypes ((Option!115 0))(
  ( (Some!114 (v!2131 B!916)) (None!113) )
))
(declare-fun isDefined!66 (Option!115) Bool)

(declare-fun getValueByKey!109 (List!1294 (_ BitVec 64)) Option!115)

(assert (=> b!48001 (isDefined!66 (getValueByKey!109 (toList!635 lm!267) key!657))))

(declare-fun b!48002 () Bool)

(declare-fun Unit!1341 () Unit!1337)

(assert (=> b!48002 (= e!30797 Unit!1341)))

(declare-fun b!48003 () Bool)

(assert (=> b!48003 (= e!30796 (isDefined!66 (getValueByKey!109 (toList!635 lm!267) key!657)))))

(assert (= (and d!9531 c!6464) b!48001))

(assert (= (and d!9531 (not c!6464)) b!48002))

(assert (= (and d!9531 (not res!27875)) b!48003))

(declare-fun m!42023 () Bool)

(assert (=> d!9531 m!42023))

(declare-fun m!42025 () Bool)

(assert (=> b!48001 m!42025))

(declare-fun m!42027 () Bool)

(assert (=> b!48001 m!42027))

(assert (=> b!48001 m!42027))

(declare-fun m!42031 () Bool)

(assert (=> b!48001 m!42031))

(assert (=> b!48003 m!42027))

(assert (=> b!48003 m!42027))

(assert (=> b!48003 m!42031))

(assert (=> start!7470 d!9531))

(declare-fun d!9539 () Bool)

(assert (=> d!9539 (= (inv!2221 lm!267) (isStrictlySorted!244 (toList!635 lm!267)))))

(declare-fun bs!2234 () Bool)

(assert (= bs!2234 d!9539))

(assert (=> bs!2234 m!42013))

(assert (=> start!7470 d!9539))

(declare-fun d!9543 () Bool)

(declare-fun res!27888 () Bool)

(declare-fun e!30814 () Bool)

(assert (=> d!9543 (=> res!27888 e!30814)))

(get-info :version)

(assert (=> d!9543 (= res!27888 (or ((_ is Nil!1291) (toList!635 lm!267)) ((_ is Nil!1291) (t!4330 (toList!635 lm!267)))))))

(assert (=> d!9543 (= (isStrictlySorted!244 (toList!635 lm!267)) e!30814)))

(declare-fun b!48024 () Bool)

(declare-fun e!30815 () Bool)

(assert (=> b!48024 (= e!30814 e!30815)))

(declare-fun res!27889 () Bool)

(assert (=> b!48024 (=> (not res!27889) (not e!30815))))

(assert (=> b!48024 (= res!27889 (bvslt (_1!881 (h!1870 (toList!635 lm!267))) (_1!881 (h!1870 (t!4330 (toList!635 lm!267))))))))

(declare-fun b!48025 () Bool)

(assert (=> b!48025 (= e!30815 (isStrictlySorted!244 (t!4330 (toList!635 lm!267))))))

(assert (= (and d!9543 (not res!27888)) b!48024))

(assert (= (and b!48024 res!27889) b!48025))

(declare-fun m!42047 () Bool)

(assert (=> b!48025 m!42047))

(assert (=> b!47975 d!9543))

(declare-fun b!48040 () Bool)

(declare-fun e!30824 () Bool)

(declare-fun tp_is_empty!2066 () Bool)

(declare-fun tp!6324 () Bool)

(assert (=> b!48040 (= e!30824 (and tp_is_empty!2066 tp!6324))))

(assert (=> b!47976 (= tp!6314 e!30824)))

(assert (= (and b!47976 ((_ is Cons!1290) (toList!635 lm!267))) b!48040))

(check-sat (not b!48003) (not b!48040) (not b!48001) (not d!9531) (not b!48025) (not d!9539) tp_is_empty!2066)
(check-sat)
