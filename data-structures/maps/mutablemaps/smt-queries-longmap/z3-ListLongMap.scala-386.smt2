; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7314 () Bool)

(assert start!7314)

(declare-fun res!27384 () Bool)

(declare-fun e!29977 () Bool)

(assert (=> start!7314 (=> (not res!27384) (not e!29977))))

(declare-datatypes ((B!898 0))(
  ( (B!899 (val!1036 Int)) )
))
(declare-datatypes ((tuple2!1724 0))(
  ( (tuple2!1725 (_1!872 (_ BitVec 64)) (_2!872 B!898)) )
))
(declare-datatypes ((List!1270 0))(
  ( (Nil!1267) (Cons!1266 (h!1846 tuple2!1724) (t!4306 List!1270)) )
))
(declare-fun l!812 () List!1270)

(declare-fun isStrictlySorted!241 (List!1270) Bool)

(assert (=> start!7314 (= res!27384 (isStrictlySorted!241 l!812))))

(assert (=> start!7314 e!29977))

(declare-fun e!29978 () Bool)

(assert (=> start!7314 e!29978))

(assert (=> start!7314 true))

(declare-fun b!46949 () Bool)

(declare-fun res!27385 () Bool)

(assert (=> b!46949 (=> (not res!27385) (not e!29977))))

(get-info :version)

(assert (=> b!46949 (= res!27385 (not ((_ is Cons!1266) l!812)))))

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun b!46950 () Bool)

(declare-fun removeStrictlySorted!47 (List!1270 (_ BitVec 64)) List!1270)

(assert (=> b!46950 (= e!29977 (not (= (removeStrictlySorted!47 (removeStrictlySorted!47 l!812 key1!43) key2!27) (removeStrictlySorted!47 (removeStrictlySorted!47 l!812 key2!27) key1!43))))))

(declare-fun b!46951 () Bool)

(declare-fun tp_is_empty!1995 () Bool)

(declare-fun tp!6161 () Bool)

(assert (=> b!46951 (= e!29978 (and tp_is_empty!1995 tp!6161))))

(assert (= (and start!7314 res!27384) b!46949))

(assert (= (and b!46949 res!27385) b!46950))

(assert (= (and start!7314 ((_ is Cons!1266) l!812)) b!46951))

(declare-fun m!41341 () Bool)

(assert (=> start!7314 m!41341))

(declare-fun m!41343 () Bool)

(assert (=> b!46950 m!41343))

(assert (=> b!46950 m!41343))

(declare-fun m!41345 () Bool)

(assert (=> b!46950 m!41345))

(declare-fun m!41347 () Bool)

(assert (=> b!46950 m!41347))

(assert (=> b!46950 m!41347))

(declare-fun m!41349 () Bool)

(assert (=> b!46950 m!41349))

(check-sat (not b!46950) (not start!7314) (not b!46951) tp_is_empty!1995)
(check-sat)
(get-model)

(declare-fun b!46983 () Bool)

(declare-fun e!30004 () List!1270)

(assert (=> b!46983 (= e!30004 Nil!1267)))

(declare-fun b!46984 () Bool)

(declare-fun e!30003 () List!1270)

(assert (=> b!46984 (= e!30003 (t!4306 (removeStrictlySorted!47 l!812 key1!43)))))

(declare-fun b!46986 () Bool)

(assert (=> b!46986 (= e!30003 e!30004)))

(declare-fun c!6384 () Bool)

(assert (=> b!46986 (= c!6384 (and ((_ is Cons!1266) (removeStrictlySorted!47 l!812 key1!43)) (not (= (_1!872 (h!1846 (removeStrictlySorted!47 l!812 key1!43))) key2!27))))))

(declare-fun b!46987 () Bool)

(declare-fun $colon$colon!46 (List!1270 tuple2!1724) List!1270)

(assert (=> b!46987 (= e!30004 ($colon$colon!46 (removeStrictlySorted!47 (t!4306 (removeStrictlySorted!47 l!812 key1!43)) key2!27) (h!1846 (removeStrictlySorted!47 l!812 key1!43))))))

(declare-fun b!46985 () Bool)

(declare-fun e!30005 () Bool)

(declare-fun lt!20378 () List!1270)

(declare-fun containsKey!92 (List!1270 (_ BitVec 64)) Bool)

(assert (=> b!46985 (= e!30005 (not (containsKey!92 lt!20378 key2!27)))))

(declare-fun d!9411 () Bool)

(assert (=> d!9411 e!30005))

(declare-fun res!27406 () Bool)

(assert (=> d!9411 (=> (not res!27406) (not e!30005))))

(assert (=> d!9411 (= res!27406 (isStrictlySorted!241 lt!20378))))

(assert (=> d!9411 (= lt!20378 e!30003)))

(declare-fun c!6383 () Bool)

(assert (=> d!9411 (= c!6383 (and ((_ is Cons!1266) (removeStrictlySorted!47 l!812 key1!43)) (= (_1!872 (h!1846 (removeStrictlySorted!47 l!812 key1!43))) key2!27)))))

(assert (=> d!9411 (isStrictlySorted!241 (removeStrictlySorted!47 l!812 key1!43))))

(assert (=> d!9411 (= (removeStrictlySorted!47 (removeStrictlySorted!47 l!812 key1!43) key2!27) lt!20378)))

(assert (= (and d!9411 c!6383) b!46984))

(assert (= (and d!9411 (not c!6383)) b!46986))

(assert (= (and b!46986 c!6384) b!46987))

(assert (= (and b!46986 (not c!6384)) b!46983))

(assert (= (and d!9411 res!27406) b!46985))

(declare-fun m!41365 () Bool)

(assert (=> b!46987 m!41365))

(assert (=> b!46987 m!41365))

(declare-fun m!41367 () Bool)

(assert (=> b!46987 m!41367))

(declare-fun m!41369 () Bool)

(assert (=> b!46985 m!41369))

(declare-fun m!41371 () Bool)

(assert (=> d!9411 m!41371))

(assert (=> d!9411 m!41343))

(declare-fun m!41373 () Bool)

(assert (=> d!9411 m!41373))

(assert (=> b!46950 d!9411))

(declare-fun b!46996 () Bool)

(declare-fun e!30011 () List!1270)

(assert (=> b!46996 (= e!30011 Nil!1267)))

(declare-fun b!46997 () Bool)

(declare-fun e!30010 () List!1270)

(assert (=> b!46997 (= e!30010 (t!4306 l!812))))

(declare-fun b!46999 () Bool)

(assert (=> b!46999 (= e!30010 e!30011)))

(declare-fun c!6390 () Bool)

(assert (=> b!46999 (= c!6390 (and ((_ is Cons!1266) l!812) (not (= (_1!872 (h!1846 l!812)) key1!43))))))

(declare-fun b!47000 () Bool)

(assert (=> b!47000 (= e!30011 ($colon$colon!46 (removeStrictlySorted!47 (t!4306 l!812) key1!43) (h!1846 l!812)))))

(declare-fun b!46998 () Bool)

(declare-fun e!30012 () Bool)

(declare-fun lt!20381 () List!1270)

(assert (=> b!46998 (= e!30012 (not (containsKey!92 lt!20381 key1!43)))))

(declare-fun d!9421 () Bool)

(assert (=> d!9421 e!30012))

(declare-fun res!27407 () Bool)

(assert (=> d!9421 (=> (not res!27407) (not e!30012))))

(assert (=> d!9421 (= res!27407 (isStrictlySorted!241 lt!20381))))

(assert (=> d!9421 (= lt!20381 e!30010)))

(declare-fun c!6389 () Bool)

(assert (=> d!9421 (= c!6389 (and ((_ is Cons!1266) l!812) (= (_1!872 (h!1846 l!812)) key1!43)))))

(assert (=> d!9421 (isStrictlySorted!241 l!812)))

(assert (=> d!9421 (= (removeStrictlySorted!47 l!812 key1!43) lt!20381)))

(assert (= (and d!9421 c!6389) b!46997))

(assert (= (and d!9421 (not c!6389)) b!46999))

(assert (= (and b!46999 c!6390) b!47000))

(assert (= (and b!46999 (not c!6390)) b!46996))

(assert (= (and d!9421 res!27407) b!46998))

(declare-fun m!41375 () Bool)

(assert (=> b!47000 m!41375))

(assert (=> b!47000 m!41375))

(declare-fun m!41377 () Bool)

(assert (=> b!47000 m!41377))

(declare-fun m!41379 () Bool)

(assert (=> b!46998 m!41379))

(declare-fun m!41381 () Bool)

(assert (=> d!9421 m!41381))

(assert (=> d!9421 m!41341))

(assert (=> b!46950 d!9421))

(declare-fun b!47011 () Bool)

(declare-fun e!30020 () List!1270)

(assert (=> b!47011 (= e!30020 Nil!1267)))

(declare-fun b!47012 () Bool)

(declare-fun e!30019 () List!1270)

(assert (=> b!47012 (= e!30019 (t!4306 (removeStrictlySorted!47 l!812 key2!27)))))

(declare-fun b!47014 () Bool)

(assert (=> b!47014 (= e!30019 e!30020)))

(declare-fun c!6396 () Bool)

(assert (=> b!47014 (= c!6396 (and ((_ is Cons!1266) (removeStrictlySorted!47 l!812 key2!27)) (not (= (_1!872 (h!1846 (removeStrictlySorted!47 l!812 key2!27))) key1!43))))))

(declare-fun b!47015 () Bool)

(assert (=> b!47015 (= e!30020 ($colon$colon!46 (removeStrictlySorted!47 (t!4306 (removeStrictlySorted!47 l!812 key2!27)) key1!43) (h!1846 (removeStrictlySorted!47 l!812 key2!27))))))

(declare-fun b!47013 () Bool)

(declare-fun e!30021 () Bool)

(declare-fun lt!20384 () List!1270)

(assert (=> b!47013 (= e!30021 (not (containsKey!92 lt!20384 key1!43)))))

(declare-fun d!9423 () Bool)

(assert (=> d!9423 e!30021))

(declare-fun res!27410 () Bool)

(assert (=> d!9423 (=> (not res!27410) (not e!30021))))

(assert (=> d!9423 (= res!27410 (isStrictlySorted!241 lt!20384))))

(assert (=> d!9423 (= lt!20384 e!30019)))

(declare-fun c!6395 () Bool)

(assert (=> d!9423 (= c!6395 (and ((_ is Cons!1266) (removeStrictlySorted!47 l!812 key2!27)) (= (_1!872 (h!1846 (removeStrictlySorted!47 l!812 key2!27))) key1!43)))))

(assert (=> d!9423 (isStrictlySorted!241 (removeStrictlySorted!47 l!812 key2!27))))

(assert (=> d!9423 (= (removeStrictlySorted!47 (removeStrictlySorted!47 l!812 key2!27) key1!43) lt!20384)))

(assert (= (and d!9423 c!6395) b!47012))

(assert (= (and d!9423 (not c!6395)) b!47014))

(assert (= (and b!47014 c!6396) b!47015))

(assert (= (and b!47014 (not c!6396)) b!47011))

(assert (= (and d!9423 res!27410) b!47013))

(declare-fun m!41383 () Bool)

(assert (=> b!47015 m!41383))

(assert (=> b!47015 m!41383))

(declare-fun m!41385 () Bool)

(assert (=> b!47015 m!41385))

(declare-fun m!41387 () Bool)

(assert (=> b!47013 m!41387))

(declare-fun m!41389 () Bool)

(assert (=> d!9423 m!41389))

(assert (=> d!9423 m!41347))

(declare-fun m!41391 () Bool)

(assert (=> d!9423 m!41391))

(assert (=> b!46950 d!9423))

(declare-fun b!47018 () Bool)

(declare-fun e!30025 () List!1270)

(assert (=> b!47018 (= e!30025 Nil!1267)))

(declare-fun b!47019 () Bool)

(declare-fun e!30024 () List!1270)

(assert (=> b!47019 (= e!30024 (t!4306 l!812))))

(declare-fun b!47021 () Bool)

(assert (=> b!47021 (= e!30024 e!30025)))

(declare-fun c!6398 () Bool)

(assert (=> b!47021 (= c!6398 (and ((_ is Cons!1266) l!812) (not (= (_1!872 (h!1846 l!812)) key2!27))))))

(declare-fun b!47022 () Bool)

(assert (=> b!47022 (= e!30025 ($colon$colon!46 (removeStrictlySorted!47 (t!4306 l!812) key2!27) (h!1846 l!812)))))

(declare-fun b!47020 () Bool)

(declare-fun e!30026 () Bool)

(declare-fun lt!20385 () List!1270)

(assert (=> b!47020 (= e!30026 (not (containsKey!92 lt!20385 key2!27)))))

(declare-fun d!9425 () Bool)

(assert (=> d!9425 e!30026))

(declare-fun res!27413 () Bool)

(assert (=> d!9425 (=> (not res!27413) (not e!30026))))

(assert (=> d!9425 (= res!27413 (isStrictlySorted!241 lt!20385))))

(assert (=> d!9425 (= lt!20385 e!30024)))

(declare-fun c!6397 () Bool)

(assert (=> d!9425 (= c!6397 (and ((_ is Cons!1266) l!812) (= (_1!872 (h!1846 l!812)) key2!27)))))

(assert (=> d!9425 (isStrictlySorted!241 l!812)))

(assert (=> d!9425 (= (removeStrictlySorted!47 l!812 key2!27) lt!20385)))

(assert (= (and d!9425 c!6397) b!47019))

(assert (= (and d!9425 (not c!6397)) b!47021))

(assert (= (and b!47021 c!6398) b!47022))

(assert (= (and b!47021 (not c!6398)) b!47018))

(assert (= (and d!9425 res!27413) b!47020))

(declare-fun m!41393 () Bool)

(assert (=> b!47022 m!41393))

(assert (=> b!47022 m!41393))

(declare-fun m!41395 () Bool)

(assert (=> b!47022 m!41395))

(declare-fun m!41397 () Bool)

(assert (=> b!47020 m!41397))

(declare-fun m!41399 () Bool)

(assert (=> d!9425 m!41399))

(assert (=> d!9425 m!41341))

(assert (=> b!46950 d!9425))

(declare-fun d!9427 () Bool)

(declare-fun res!27425 () Bool)

(declare-fun e!30052 () Bool)

(assert (=> d!9427 (=> res!27425 e!30052)))

(assert (=> d!9427 (= res!27425 (or ((_ is Nil!1267) l!812) ((_ is Nil!1267) (t!4306 l!812))))))

(assert (=> d!9427 (= (isStrictlySorted!241 l!812) e!30052)))

(declare-fun b!47062 () Bool)

(declare-fun e!30053 () Bool)

(assert (=> b!47062 (= e!30052 e!30053)))

(declare-fun res!27426 () Bool)

(assert (=> b!47062 (=> (not res!27426) (not e!30053))))

(assert (=> b!47062 (= res!27426 (bvslt (_1!872 (h!1846 l!812)) (_1!872 (h!1846 (t!4306 l!812)))))))

(declare-fun b!47063 () Bool)

(assert (=> b!47063 (= e!30053 (isStrictlySorted!241 (t!4306 l!812)))))

(assert (= (and d!9427 (not res!27425)) b!47062))

(assert (= (and b!47062 res!27426) b!47063))

(declare-fun m!41457 () Bool)

(assert (=> b!47063 m!41457))

(assert (=> start!7314 d!9427))

(declare-fun b!47077 () Bool)

(declare-fun e!30061 () Bool)

(declare-fun tp!6169 () Bool)

(assert (=> b!47077 (= e!30061 (and tp_is_empty!1995 tp!6169))))

(assert (=> b!46951 (= tp!6161 e!30061)))

(assert (= (and b!46951 ((_ is Cons!1266) (t!4306 l!812))) b!47077))

(check-sat (not b!46998) (not b!46987) (not d!9411) (not b!47013) (not d!9421) (not b!47020) (not b!47015) (not d!9425) (not b!47063) (not b!47000) (not b!47022) (not d!9423) tp_is_empty!1995 (not b!46985) (not b!47077))
(check-sat)
