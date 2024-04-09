; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7152 () Bool)

(assert start!7152)

(declare-fun res!26853 () Bool)

(declare-fun e!29180 () Bool)

(assert (=> start!7152 (=> (not res!26853) (not e!29180))))

(declare-datatypes ((B!844 0))(
  ( (B!845 (val!1009 Int)) )
))
(declare-datatypes ((tuple2!1670 0))(
  ( (tuple2!1671 (_1!845 (_ BitVec 64)) (_2!845 B!844)) )
))
(declare-datatypes ((List!1243 0))(
  ( (Nil!1240) (Cons!1239 (h!1819 tuple2!1670) (t!4276 List!1243)) )
))
(declare-fun l!812 () List!1243)

(declare-fun isStrictlySorted!220 (List!1243) Bool)

(assert (=> start!7152 (= res!26853 (isStrictlySorted!220 l!812))))

(assert (=> start!7152 e!29180))

(declare-fun e!29179 () Bool)

(assert (=> start!7152 e!29179))

(assert (=> start!7152 true))

(declare-fun b!45841 () Bool)

(declare-fun tp_is_empty!1941 () Bool)

(declare-fun tp!6014 () Bool)

(assert (=> b!45841 (= e!29179 (and tp_is_empty!1941 tp!6014))))

(declare-fun b!45838 () Bool)

(declare-fun res!26854 () Bool)

(assert (=> b!45838 (=> (not res!26854) (not e!29180))))

(get-info :version)

(assert (=> b!45838 (= res!26854 ((_ is Cons!1239) l!812))))

(declare-fun b!45840 () Bool)

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun removeStrictlySorted!35 (List!1243 (_ BitVec 64)) List!1243)

(assert (=> b!45840 (= e!29180 (not (isStrictlySorted!220 (removeStrictlySorted!35 l!812 key2!27))))))

(declare-fun key1!43 () (_ BitVec 64))

(assert (=> b!45840 (= (removeStrictlySorted!35 (removeStrictlySorted!35 (t!4276 l!812) key1!43) key2!27) (removeStrictlySorted!35 (removeStrictlySorted!35 (t!4276 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1317 0))(
  ( (Unit!1318) )
))
(declare-fun lt!20237 () Unit!1317)

(declare-fun lemmaRemoveStrictlySortedCommutative!14 (List!1243 (_ BitVec 64) (_ BitVec 64)) Unit!1317)

(assert (=> b!45840 (= lt!20237 (lemmaRemoveStrictlySortedCommutative!14 (t!4276 l!812) key1!43 key2!27))))

(declare-fun b!45839 () Bool)

(declare-fun res!26852 () Bool)

(assert (=> b!45839 (=> (not res!26852) (not e!29180))))

(assert (=> b!45839 (= res!26852 (isStrictlySorted!220 (t!4276 l!812)))))

(assert (= (and start!7152 res!26853) b!45838))

(assert (= (and b!45838 res!26854) b!45839))

(assert (= (and b!45839 res!26852) b!45840))

(assert (= (and start!7152 ((_ is Cons!1239) l!812)) b!45841))

(declare-fun m!40413 () Bool)

(assert (=> start!7152 m!40413))

(declare-fun m!40415 () Bool)

(assert (=> b!45840 m!40415))

(declare-fun m!40417 () Bool)

(assert (=> b!45840 m!40417))

(declare-fun m!40419 () Bool)

(assert (=> b!45840 m!40419))

(declare-fun m!40421 () Bool)

(assert (=> b!45840 m!40421))

(assert (=> b!45840 m!40419))

(assert (=> b!45840 m!40417))

(declare-fun m!40423 () Bool)

(assert (=> b!45840 m!40423))

(assert (=> b!45840 m!40415))

(declare-fun m!40425 () Bool)

(assert (=> b!45840 m!40425))

(declare-fun m!40427 () Bool)

(assert (=> b!45840 m!40427))

(declare-fun m!40429 () Bool)

(assert (=> b!45839 m!40429))

(check-sat (not start!7152) tp_is_empty!1941 (not b!45840) (not b!45841) (not b!45839))
(check-sat)
(get-model)

(declare-fun d!8973 () Bool)

(declare-fun e!29199 () Bool)

(assert (=> d!8973 e!29199))

(declare-fun res!26872 () Bool)

(assert (=> d!8973 (=> (not res!26872) (not e!29199))))

(declare-fun lt!20243 () List!1243)

(assert (=> d!8973 (= res!26872 (isStrictlySorted!220 lt!20243))))

(declare-fun e!29201 () List!1243)

(assert (=> d!8973 (= lt!20243 e!29201)))

(declare-fun c!6188 () Bool)

(assert (=> d!8973 (= c!6188 (and ((_ is Cons!1239) l!812) (= (_1!845 (h!1819 l!812)) key2!27)))))

(assert (=> d!8973 (isStrictlySorted!220 l!812)))

(assert (=> d!8973 (= (removeStrictlySorted!35 l!812 key2!27) lt!20243)))

(declare-fun b!45870 () Bool)

(declare-fun containsKey!80 (List!1243 (_ BitVec 64)) Bool)

(assert (=> b!45870 (= e!29199 (not (containsKey!80 lt!20243 key2!27)))))

(declare-fun b!45871 () Bool)

(declare-fun e!29200 () List!1243)

(assert (=> b!45871 (= e!29200 Nil!1240)))

(declare-fun b!45872 () Bool)

(assert (=> b!45872 (= e!29201 e!29200)))

(declare-fun c!6189 () Bool)

(assert (=> b!45872 (= c!6189 (and ((_ is Cons!1239) l!812) (not (= (_1!845 (h!1819 l!812)) key2!27))))))

(declare-fun b!45873 () Bool)

(declare-fun $colon$colon!35 (List!1243 tuple2!1670) List!1243)

(assert (=> b!45873 (= e!29200 ($colon$colon!35 (removeStrictlySorted!35 (t!4276 l!812) key2!27) (h!1819 l!812)))))

(declare-fun b!45874 () Bool)

(assert (=> b!45874 (= e!29201 (t!4276 l!812))))

(assert (= (and d!8973 c!6188) b!45874))

(assert (= (and d!8973 (not c!6188)) b!45872))

(assert (= (and b!45872 c!6189) b!45873))

(assert (= (and b!45872 (not c!6189)) b!45871))

(assert (= (and d!8973 res!26872) b!45870))

(declare-fun m!40449 () Bool)

(assert (=> d!8973 m!40449))

(assert (=> d!8973 m!40413))

(declare-fun m!40451 () Bool)

(assert (=> b!45870 m!40451))

(assert (=> b!45873 m!40415))

(assert (=> b!45873 m!40415))

(declare-fun m!40453 () Bool)

(assert (=> b!45873 m!40453))

(assert (=> b!45840 d!8973))

(declare-fun d!8981 () Bool)

(declare-fun res!26885 () Bool)

(declare-fun e!29218 () Bool)

(assert (=> d!8981 (=> res!26885 e!29218)))

(assert (=> d!8981 (= res!26885 (or ((_ is Nil!1240) (removeStrictlySorted!35 l!812 key2!27)) ((_ is Nil!1240) (t!4276 (removeStrictlySorted!35 l!812 key2!27)))))))

(assert (=> d!8981 (= (isStrictlySorted!220 (removeStrictlySorted!35 l!812 key2!27)) e!29218)))

(declare-fun b!45895 () Bool)

(declare-fun e!29219 () Bool)

(assert (=> b!45895 (= e!29218 e!29219)))

(declare-fun res!26886 () Bool)

(assert (=> b!45895 (=> (not res!26886) (not e!29219))))

(assert (=> b!45895 (= res!26886 (bvslt (_1!845 (h!1819 (removeStrictlySorted!35 l!812 key2!27))) (_1!845 (h!1819 (t!4276 (removeStrictlySorted!35 l!812 key2!27))))))))

(declare-fun b!45896 () Bool)

(assert (=> b!45896 (= e!29219 (isStrictlySorted!220 (t!4276 (removeStrictlySorted!35 l!812 key2!27))))))

(assert (= (and d!8981 (not res!26885)) b!45895))

(assert (= (and b!45895 res!26886) b!45896))

(declare-fun m!40455 () Bool)

(assert (=> b!45896 m!40455))

(assert (=> b!45840 d!8981))

(declare-fun d!8985 () Bool)

(declare-fun e!29223 () Bool)

(assert (=> d!8985 e!29223))

(declare-fun res!26888 () Bool)

(assert (=> d!8985 (=> (not res!26888) (not e!29223))))

(declare-fun lt!20247 () List!1243)

(assert (=> d!8985 (= res!26888 (isStrictlySorted!220 lt!20247))))

(declare-fun e!29225 () List!1243)

(assert (=> d!8985 (= lt!20247 e!29225)))

(declare-fun c!6196 () Bool)

(assert (=> d!8985 (= c!6196 (and ((_ is Cons!1239) (t!4276 l!812)) (= (_1!845 (h!1819 (t!4276 l!812))) key2!27)))))

(assert (=> d!8985 (isStrictlySorted!220 (t!4276 l!812))))

(assert (=> d!8985 (= (removeStrictlySorted!35 (t!4276 l!812) key2!27) lt!20247)))

(declare-fun b!45902 () Bool)

(assert (=> b!45902 (= e!29223 (not (containsKey!80 lt!20247 key2!27)))))

(declare-fun b!45903 () Bool)

(declare-fun e!29224 () List!1243)

(assert (=> b!45903 (= e!29224 Nil!1240)))

(declare-fun b!45904 () Bool)

(assert (=> b!45904 (= e!29225 e!29224)))

(declare-fun c!6197 () Bool)

(assert (=> b!45904 (= c!6197 (and ((_ is Cons!1239) (t!4276 l!812)) (not (= (_1!845 (h!1819 (t!4276 l!812))) key2!27))))))

(declare-fun b!45905 () Bool)

(assert (=> b!45905 (= e!29224 ($colon$colon!35 (removeStrictlySorted!35 (t!4276 (t!4276 l!812)) key2!27) (h!1819 (t!4276 l!812))))))

(declare-fun b!45906 () Bool)

(assert (=> b!45906 (= e!29225 (t!4276 (t!4276 l!812)))))

(assert (= (and d!8985 c!6196) b!45906))

(assert (= (and d!8985 (not c!6196)) b!45904))

(assert (= (and b!45904 c!6197) b!45905))

(assert (= (and b!45904 (not c!6197)) b!45903))

(assert (= (and d!8985 res!26888) b!45902))

(declare-fun m!40463 () Bool)

(assert (=> d!8985 m!40463))

(assert (=> d!8985 m!40429))

(declare-fun m!40465 () Bool)

(assert (=> b!45902 m!40465))

(declare-fun m!40467 () Bool)

(assert (=> b!45905 m!40467))

(assert (=> b!45905 m!40467))

(declare-fun m!40469 () Bool)

(assert (=> b!45905 m!40469))

(assert (=> b!45840 d!8985))

(declare-fun d!8989 () Bool)

(assert (=> d!8989 (= (removeStrictlySorted!35 (removeStrictlySorted!35 (t!4276 l!812) key1!43) key2!27) (removeStrictlySorted!35 (removeStrictlySorted!35 (t!4276 l!812) key2!27) key1!43))))

(declare-fun lt!20253 () Unit!1317)

(declare-fun choose!282 (List!1243 (_ BitVec 64) (_ BitVec 64)) Unit!1317)

(assert (=> d!8989 (= lt!20253 (choose!282 (t!4276 l!812) key1!43 key2!27))))

(assert (=> d!8989 (isStrictlySorted!220 (t!4276 l!812))))

(assert (=> d!8989 (= (lemmaRemoveStrictlySortedCommutative!14 (t!4276 l!812) key1!43 key2!27) lt!20253)))

(declare-fun bs!2156 () Bool)

(assert (= bs!2156 d!8989))

(assert (=> bs!2156 m!40415))

(assert (=> bs!2156 m!40425))

(assert (=> bs!2156 m!40415))

(assert (=> bs!2156 m!40429))

(declare-fun m!40481 () Bool)

(assert (=> bs!2156 m!40481))

(assert (=> bs!2156 m!40419))

(assert (=> bs!2156 m!40421))

(assert (=> bs!2156 m!40419))

(assert (=> b!45840 d!8989))

(declare-fun d!8995 () Bool)

(declare-fun e!29237 () Bool)

(assert (=> d!8995 e!29237))

(declare-fun res!26894 () Bool)

(assert (=> d!8995 (=> (not res!26894) (not e!29237))))

(declare-fun lt!20256 () List!1243)

(assert (=> d!8995 (= res!26894 (isStrictlySorted!220 lt!20256))))

(declare-fun e!29239 () List!1243)

(assert (=> d!8995 (= lt!20256 e!29239)))

(declare-fun c!6204 () Bool)

(assert (=> d!8995 (= c!6204 (and ((_ is Cons!1239) (removeStrictlySorted!35 (t!4276 l!812) key1!43)) (= (_1!845 (h!1819 (removeStrictlySorted!35 (t!4276 l!812) key1!43))) key2!27)))))

(assert (=> d!8995 (isStrictlySorted!220 (removeStrictlySorted!35 (t!4276 l!812) key1!43))))

(assert (=> d!8995 (= (removeStrictlySorted!35 (removeStrictlySorted!35 (t!4276 l!812) key1!43) key2!27) lt!20256)))

(declare-fun b!45924 () Bool)

(assert (=> b!45924 (= e!29237 (not (containsKey!80 lt!20256 key2!27)))))

(declare-fun b!45925 () Bool)

(declare-fun e!29238 () List!1243)

(assert (=> b!45925 (= e!29238 Nil!1240)))

(declare-fun b!45926 () Bool)

(assert (=> b!45926 (= e!29239 e!29238)))

(declare-fun c!6205 () Bool)

(assert (=> b!45926 (= c!6205 (and ((_ is Cons!1239) (removeStrictlySorted!35 (t!4276 l!812) key1!43)) (not (= (_1!845 (h!1819 (removeStrictlySorted!35 (t!4276 l!812) key1!43))) key2!27))))))

(declare-fun b!45927 () Bool)

(assert (=> b!45927 (= e!29238 ($colon$colon!35 (removeStrictlySorted!35 (t!4276 (removeStrictlySorted!35 (t!4276 l!812) key1!43)) key2!27) (h!1819 (removeStrictlySorted!35 (t!4276 l!812) key1!43))))))

(declare-fun b!45928 () Bool)

(assert (=> b!45928 (= e!29239 (t!4276 (removeStrictlySorted!35 (t!4276 l!812) key1!43)))))

(assert (= (and d!8995 c!6204) b!45928))

(assert (= (and d!8995 (not c!6204)) b!45926))

(assert (= (and b!45926 c!6205) b!45927))

(assert (= (and b!45926 (not c!6205)) b!45925))

(assert (= (and d!8995 res!26894) b!45924))

(declare-fun m!40483 () Bool)

(assert (=> d!8995 m!40483))

(assert (=> d!8995 m!40419))

(declare-fun m!40485 () Bool)

(assert (=> d!8995 m!40485))

(declare-fun m!40487 () Bool)

(assert (=> b!45924 m!40487))

(declare-fun m!40489 () Bool)

(assert (=> b!45927 m!40489))

(assert (=> b!45927 m!40489))

(declare-fun m!40491 () Bool)

(assert (=> b!45927 m!40491))

(assert (=> b!45840 d!8995))

(declare-fun d!8997 () Bool)

(declare-fun e!29240 () Bool)

(assert (=> d!8997 e!29240))

(declare-fun res!26895 () Bool)

(assert (=> d!8997 (=> (not res!26895) (not e!29240))))

(declare-fun lt!20258 () List!1243)

(assert (=> d!8997 (= res!26895 (isStrictlySorted!220 lt!20258))))

(declare-fun e!29242 () List!1243)

(assert (=> d!8997 (= lt!20258 e!29242)))

(declare-fun c!6206 () Bool)

(assert (=> d!8997 (= c!6206 (and ((_ is Cons!1239) (t!4276 l!812)) (= (_1!845 (h!1819 (t!4276 l!812))) key1!43)))))

(assert (=> d!8997 (isStrictlySorted!220 (t!4276 l!812))))

(assert (=> d!8997 (= (removeStrictlySorted!35 (t!4276 l!812) key1!43) lt!20258)))

(declare-fun b!45929 () Bool)

(assert (=> b!45929 (= e!29240 (not (containsKey!80 lt!20258 key1!43)))))

(declare-fun b!45930 () Bool)

(declare-fun e!29241 () List!1243)

(assert (=> b!45930 (= e!29241 Nil!1240)))

(declare-fun b!45931 () Bool)

(assert (=> b!45931 (= e!29242 e!29241)))

(declare-fun c!6207 () Bool)

(assert (=> b!45931 (= c!6207 (and ((_ is Cons!1239) (t!4276 l!812)) (not (= (_1!845 (h!1819 (t!4276 l!812))) key1!43))))))

(declare-fun b!45932 () Bool)

(assert (=> b!45932 (= e!29241 ($colon$colon!35 (removeStrictlySorted!35 (t!4276 (t!4276 l!812)) key1!43) (h!1819 (t!4276 l!812))))))

(declare-fun b!45933 () Bool)

(assert (=> b!45933 (= e!29242 (t!4276 (t!4276 l!812)))))

(assert (= (and d!8997 c!6206) b!45933))

(assert (= (and d!8997 (not c!6206)) b!45931))

(assert (= (and b!45931 c!6207) b!45932))

(assert (= (and b!45931 (not c!6207)) b!45930))

(assert (= (and d!8997 res!26895) b!45929))

(declare-fun m!40495 () Bool)

(assert (=> d!8997 m!40495))

(assert (=> d!8997 m!40429))

(declare-fun m!40497 () Bool)

(assert (=> b!45929 m!40497))

(declare-fun m!40499 () Bool)

(assert (=> b!45932 m!40499))

(assert (=> b!45932 m!40499))

(declare-fun m!40501 () Bool)

(assert (=> b!45932 m!40501))

(assert (=> b!45840 d!8997))

(declare-fun d!9001 () Bool)

(declare-fun e!29249 () Bool)

(assert (=> d!9001 e!29249))

(declare-fun res!26898 () Bool)

(assert (=> d!9001 (=> (not res!26898) (not e!29249))))

(declare-fun lt!20261 () List!1243)

(assert (=> d!9001 (= res!26898 (isStrictlySorted!220 lt!20261))))

(declare-fun e!29251 () List!1243)

(assert (=> d!9001 (= lt!20261 e!29251)))

(declare-fun c!6212 () Bool)

(assert (=> d!9001 (= c!6212 (and ((_ is Cons!1239) (removeStrictlySorted!35 (t!4276 l!812) key2!27)) (= (_1!845 (h!1819 (removeStrictlySorted!35 (t!4276 l!812) key2!27))) key1!43)))))

(assert (=> d!9001 (isStrictlySorted!220 (removeStrictlySorted!35 (t!4276 l!812) key2!27))))

(assert (=> d!9001 (= (removeStrictlySorted!35 (removeStrictlySorted!35 (t!4276 l!812) key2!27) key1!43) lt!20261)))

(declare-fun b!45944 () Bool)

(assert (=> b!45944 (= e!29249 (not (containsKey!80 lt!20261 key1!43)))))

(declare-fun b!45945 () Bool)

(declare-fun e!29250 () List!1243)

(assert (=> b!45945 (= e!29250 Nil!1240)))

(declare-fun b!45946 () Bool)

(assert (=> b!45946 (= e!29251 e!29250)))

(declare-fun c!6213 () Bool)

(assert (=> b!45946 (= c!6213 (and ((_ is Cons!1239) (removeStrictlySorted!35 (t!4276 l!812) key2!27)) (not (= (_1!845 (h!1819 (removeStrictlySorted!35 (t!4276 l!812) key2!27))) key1!43))))))

(declare-fun b!45947 () Bool)

(assert (=> b!45947 (= e!29250 ($colon$colon!35 (removeStrictlySorted!35 (t!4276 (removeStrictlySorted!35 (t!4276 l!812) key2!27)) key1!43) (h!1819 (removeStrictlySorted!35 (t!4276 l!812) key2!27))))))

(declare-fun b!45948 () Bool)

(assert (=> b!45948 (= e!29251 (t!4276 (removeStrictlySorted!35 (t!4276 l!812) key2!27)))))

(assert (= (and d!9001 c!6212) b!45948))

(assert (= (and d!9001 (not c!6212)) b!45946))

(assert (= (and b!45946 c!6213) b!45947))

(assert (= (and b!45946 (not c!6213)) b!45945))

(assert (= (and d!9001 res!26898) b!45944))

(declare-fun m!40519 () Bool)

(assert (=> d!9001 m!40519))

(assert (=> d!9001 m!40415))

(declare-fun m!40521 () Bool)

(assert (=> d!9001 m!40521))

(declare-fun m!40523 () Bool)

(assert (=> b!45944 m!40523))

(declare-fun m!40527 () Bool)

(assert (=> b!45947 m!40527))

(assert (=> b!45947 m!40527))

(declare-fun m!40529 () Bool)

(assert (=> b!45947 m!40529))

(assert (=> b!45840 d!9001))

(declare-fun d!9009 () Bool)

(declare-fun res!26903 () Bool)

(declare-fun e!29260 () Bool)

(assert (=> d!9009 (=> res!26903 e!29260)))

(assert (=> d!9009 (= res!26903 (or ((_ is Nil!1240) (t!4276 l!812)) ((_ is Nil!1240) (t!4276 (t!4276 l!812)))))))

(assert (=> d!9009 (= (isStrictlySorted!220 (t!4276 l!812)) e!29260)))

(declare-fun b!45961 () Bool)

(declare-fun e!29261 () Bool)

(assert (=> b!45961 (= e!29260 e!29261)))

(declare-fun res!26904 () Bool)

(assert (=> b!45961 (=> (not res!26904) (not e!29261))))

(assert (=> b!45961 (= res!26904 (bvslt (_1!845 (h!1819 (t!4276 l!812))) (_1!845 (h!1819 (t!4276 (t!4276 l!812))))))))

(declare-fun b!45962 () Bool)

(assert (=> b!45962 (= e!29261 (isStrictlySorted!220 (t!4276 (t!4276 l!812))))))

(assert (= (and d!9009 (not res!26903)) b!45961))

(assert (= (and b!45961 res!26904) b!45962))

(declare-fun m!40539 () Bool)

(assert (=> b!45962 m!40539))

(assert (=> b!45839 d!9009))

(declare-fun d!9013 () Bool)

(declare-fun res!26906 () Bool)

(declare-fun e!29265 () Bool)

(assert (=> d!9013 (=> res!26906 e!29265)))

(assert (=> d!9013 (= res!26906 (or ((_ is Nil!1240) l!812) ((_ is Nil!1240) (t!4276 l!812))))))

(assert (=> d!9013 (= (isStrictlySorted!220 l!812) e!29265)))

(declare-fun b!45968 () Bool)

(declare-fun e!29266 () Bool)

(assert (=> b!45968 (= e!29265 e!29266)))

(declare-fun res!26907 () Bool)

(assert (=> b!45968 (=> (not res!26907) (not e!29266))))

(assert (=> b!45968 (= res!26907 (bvslt (_1!845 (h!1819 l!812)) (_1!845 (h!1819 (t!4276 l!812)))))))

(declare-fun b!45969 () Bool)

(assert (=> b!45969 (= e!29266 (isStrictlySorted!220 (t!4276 l!812)))))

(assert (= (and d!9013 (not res!26906)) b!45968))

(assert (= (and b!45968 res!26907) b!45969))

(assert (=> b!45969 m!40429))

(assert (=> start!7152 d!9013))

(declare-fun b!45976 () Bool)

(declare-fun e!29271 () Bool)

(declare-fun tp!6020 () Bool)

(assert (=> b!45976 (= e!29271 (and tp_is_empty!1941 tp!6020))))

(assert (=> b!45841 (= tp!6014 e!29271)))

(assert (= (and b!45841 ((_ is Cons!1239) (t!4276 l!812))) b!45976))

(check-sat (not b!45896) (not b!45873) (not b!45902) (not d!8973) (not b!45905) (not d!8997) (not d!8995) tp_is_empty!1941 (not d!9001) (not b!45929) (not b!45927) (not b!45944) (not b!45969) (not b!45870) (not d!8985) (not b!45932) (not b!45976) (not b!45924) (not b!45947) (not b!45962) (not d!8989))
(check-sat)
