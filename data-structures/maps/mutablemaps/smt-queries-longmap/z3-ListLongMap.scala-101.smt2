; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1652 () Bool)

(assert start!1652)

(declare-fun res!9757 () Bool)

(declare-fun e!7033 () Bool)

(assert (=> start!1652 (=> (not res!9757) (not e!7033))))

(declare-datatypes ((B!412 0))(
  ( (B!413 (val!301 Int)) )
))
(declare-datatypes ((tuple2!384 0))(
  ( (tuple2!385 (_1!192 (_ BitVec 64)) (_2!192 B!412)) )
))
(declare-datatypes ((List!348 0))(
  ( (Nil!345) (Cons!344 (h!910 tuple2!384) (t!2735 List!348)) )
))
(declare-datatypes ((ListLongMap!365 0))(
  ( (ListLongMap!366 (toList!198 List!348)) )
))
(declare-fun lm!265 () ListLongMap!365)

(declare-fun a!527 () (_ BitVec 64))

(declare-fun contains!165 (ListLongMap!365 (_ BitVec 64)) Bool)

(assert (=> start!1652 (= res!9757 (contains!165 lm!265 a!527))))

(assert (=> start!1652 e!7033))

(declare-fun e!7034 () Bool)

(declare-fun inv!591 (ListLongMap!365) Bool)

(assert (=> start!1652 (and (inv!591 lm!265) e!7034)))

(assert (=> start!1652 true))

(declare-fun tp_is_empty!585 () Bool)

(assert (=> start!1652 tp_is_empty!585))

(declare-fun b!11817 () Bool)

(declare-fun res!9756 () Bool)

(assert (=> b!11817 (=> (not res!9756) (not e!7033))))

(declare-fun b!100 () B!412)

(declare-datatypes ((Option!39 0))(
  ( (Some!38 (v!1353 B!412)) (None!37) )
))
(declare-fun getValueByKey!33 (List!348 (_ BitVec 64)) Option!39)

(assert (=> b!11817 (= res!9756 (= (getValueByKey!33 (toList!198 lm!265) a!527) (Some!38 b!100)))))

(declare-fun b!11818 () Bool)

(declare-fun isStrictlySorted!51 (List!348) Bool)

(assert (=> b!11818 (= e!7033 (not (isStrictlySorted!51 (toList!198 lm!265))))))

(declare-fun b!11819 () Bool)

(declare-fun tp!1982 () Bool)

(assert (=> b!11819 (= e!7034 tp!1982)))

(assert (= (and start!1652 res!9757) b!11817))

(assert (= (and b!11817 res!9756) b!11818))

(assert (= start!1652 b!11819))

(declare-fun m!8245 () Bool)

(assert (=> start!1652 m!8245))

(declare-fun m!8247 () Bool)

(assert (=> start!1652 m!8247))

(declare-fun m!8249 () Bool)

(assert (=> b!11817 m!8249))

(declare-fun m!8251 () Bool)

(assert (=> b!11818 m!8251))

(check-sat tp_is_empty!585 (not b!11819) (not b!11817) (not b!11818) (not start!1652))
(check-sat)
(get-model)

(declare-fun d!1639 () Bool)

(declare-fun e!7052 () Bool)

(assert (=> d!1639 e!7052))

(declare-fun res!9768 () Bool)

(assert (=> d!1639 (=> res!9768 e!7052)))

(declare-fun lt!3059 () Bool)

(assert (=> d!1639 (= res!9768 (not lt!3059))))

(declare-fun lt!3066 () Bool)

(assert (=> d!1639 (= lt!3059 lt!3066)))

(declare-datatypes ((Unit!251 0))(
  ( (Unit!253) )
))
(declare-fun lt!3061 () Unit!251)

(declare-fun e!7050 () Unit!251)

(assert (=> d!1639 (= lt!3061 e!7050)))

(declare-fun c!991 () Bool)

(assert (=> d!1639 (= c!991 lt!3066)))

(declare-fun containsKey!14 (List!348 (_ BitVec 64)) Bool)

(assert (=> d!1639 (= lt!3066 (containsKey!14 (toList!198 lm!265) a!527))))

(assert (=> d!1639 (= (contains!165 lm!265 a!527) lt!3059)))

(declare-fun b!11841 () Bool)

(declare-fun lt!3063 () Unit!251)

(assert (=> b!11841 (= e!7050 lt!3063)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!11 (List!348 (_ BitVec 64)) Unit!251)

(assert (=> b!11841 (= lt!3063 (lemmaContainsKeyImpliesGetValueByKeyDefined!11 (toList!198 lm!265) a!527))))

(declare-fun isDefined!12 (Option!39) Bool)

(assert (=> b!11841 (isDefined!12 (getValueByKey!33 (toList!198 lm!265) a!527))))

(declare-fun b!11843 () Bool)

(declare-fun Unit!255 () Unit!251)

(assert (=> b!11843 (= e!7050 Unit!255)))

(declare-fun b!11845 () Bool)

(assert (=> b!11845 (= e!7052 (isDefined!12 (getValueByKey!33 (toList!198 lm!265) a!527)))))

(assert (= (and d!1639 c!991) b!11841))

(assert (= (and d!1639 (not c!991)) b!11843))

(assert (= (and d!1639 (not res!9768)) b!11845))

(declare-fun m!8263 () Bool)

(assert (=> d!1639 m!8263))

(declare-fun m!8267 () Bool)

(assert (=> b!11841 m!8267))

(assert (=> b!11841 m!8249))

(assert (=> b!11841 m!8249))

(declare-fun m!8269 () Bool)

(assert (=> b!11841 m!8269))

(assert (=> b!11845 m!8249))

(assert (=> b!11845 m!8249))

(assert (=> b!11845 m!8269))

(assert (=> start!1652 d!1639))

(declare-fun d!1644 () Bool)

(assert (=> d!1644 (= (inv!591 lm!265) (isStrictlySorted!51 (toList!198 lm!265)))))

(declare-fun bs!454 () Bool)

(assert (= bs!454 d!1644))

(assert (=> bs!454 m!8251))

(assert (=> start!1652 d!1644))

(declare-fun b!11873 () Bool)

(declare-fun e!7067 () Option!39)

(assert (=> b!11873 (= e!7067 (Some!38 (_2!192 (h!910 (toList!198 lm!265)))))))

(declare-fun b!11875 () Bool)

(declare-fun e!7068 () Option!39)

(assert (=> b!11875 (= e!7068 (getValueByKey!33 (t!2735 (toList!198 lm!265)) a!527))))

(declare-fun d!1649 () Bool)

(declare-fun c!1005 () Bool)

(get-info :version)

(assert (=> d!1649 (= c!1005 (and ((_ is Cons!344) (toList!198 lm!265)) (= (_1!192 (h!910 (toList!198 lm!265))) a!527)))))

(assert (=> d!1649 (= (getValueByKey!33 (toList!198 lm!265) a!527) e!7067)))

(declare-fun b!11876 () Bool)

(assert (=> b!11876 (= e!7068 None!37)))

(declare-fun b!11874 () Bool)

(assert (=> b!11874 (= e!7067 e!7068)))

(declare-fun c!1006 () Bool)

(assert (=> b!11874 (= c!1006 (and ((_ is Cons!344) (toList!198 lm!265)) (not (= (_1!192 (h!910 (toList!198 lm!265))) a!527))))))

(assert (= (and d!1649 c!1005) b!11873))

(assert (= (and d!1649 (not c!1005)) b!11874))

(assert (= (and b!11874 c!1006) b!11875))

(assert (= (and b!11874 (not c!1006)) b!11876))

(declare-fun m!8275 () Bool)

(assert (=> b!11875 m!8275))

(assert (=> b!11817 d!1649))

(declare-fun d!1653 () Bool)

(declare-fun res!9783 () Bool)

(declare-fun e!7081 () Bool)

(assert (=> d!1653 (=> res!9783 e!7081)))

(assert (=> d!1653 (= res!9783 (or ((_ is Nil!345) (toList!198 lm!265)) ((_ is Nil!345) (t!2735 (toList!198 lm!265)))))))

(assert (=> d!1653 (= (isStrictlySorted!51 (toList!198 lm!265)) e!7081)))

(declare-fun b!11890 () Bool)

(declare-fun e!7082 () Bool)

(assert (=> b!11890 (= e!7081 e!7082)))

(declare-fun res!9784 () Bool)

(assert (=> b!11890 (=> (not res!9784) (not e!7082))))

(assert (=> b!11890 (= res!9784 (bvslt (_1!192 (h!910 (toList!198 lm!265))) (_1!192 (h!910 (t!2735 (toList!198 lm!265))))))))

(declare-fun b!11891 () Bool)

(assert (=> b!11891 (= e!7082 (isStrictlySorted!51 (t!2735 (toList!198 lm!265))))))

(assert (= (and d!1653 (not res!9783)) b!11890))

(assert (= (and b!11890 res!9784) b!11891))

(declare-fun m!8285 () Bool)

(assert (=> b!11891 m!8285))

(assert (=> b!11818 d!1653))

(declare-fun b!11900 () Bool)

(declare-fun e!7087 () Bool)

(declare-fun tp!1990 () Bool)

(assert (=> b!11900 (= e!7087 (and tp_is_empty!585 tp!1990))))

(assert (=> b!11819 (= tp!1982 e!7087)))

(assert (= (and b!11819 ((_ is Cons!344) (toList!198 lm!265))) b!11900))

(check-sat tp_is_empty!585 (not b!11891) (not b!11841) (not d!1639) (not b!11845) (not b!11900) (not d!1644) (not b!11875))
(check-sat)
