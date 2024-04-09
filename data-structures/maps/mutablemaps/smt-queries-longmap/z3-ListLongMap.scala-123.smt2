; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2088 () Bool)

(assert start!2088)

(declare-fun b!14108 () Bool)

(assert (=> b!14108 true))

(declare-fun b!14106 () Bool)

(declare-fun e!8421 () Bool)

(declare-fun call!389 () Bool)

(assert (=> b!14106 (= e!8421 (not call!389))))

(declare-fun res!10988 () Bool)

(declare-fun e!8422 () Bool)

(assert (=> b!14108 (=> res!10988 e!8422)))

(declare-datatypes ((B!538 0))(
  ( (B!539 (val!367 Int)) )
))
(declare-datatypes ((tuple2!516 0))(
  ( (tuple2!517 (_1!258 (_ BitVec 64)) (_2!258 B!538)) )
))
(declare-datatypes ((List!417 0))(
  ( (Nil!414) (Cons!413 (h!979 tuple2!516) (t!2813 List!417)) )
))
(declare-fun lt!3579 () List!417)

(declare-fun lambda!137 () Int)

(declare-fun forall!93 (List!417 Int) Bool)

(assert (=> b!14108 (= res!10988 (not (forall!93 lt!3579 lambda!137)))))

(declare-fun b!14109 () Bool)

(declare-fun e!8419 () Bool)

(assert (=> b!14109 (= e!8421 e!8419)))

(declare-fun res!10990 () Bool)

(assert (=> b!14109 (= res!10990 (not call!389))))

(assert (=> b!14109 (=> (not res!10990) (not e!8419))))

(declare-fun b!14110 () Bool)

(declare-fun e!8418 () Bool)

(assert (=> b!14110 (= e!8418 e!8422)))

(declare-fun res!10987 () Bool)

(assert (=> b!14110 (=> res!10987 e!8422)))

(declare-fun isStrictlySorted!108 (List!417) Bool)

(assert (=> b!14110 (= res!10987 (not (isStrictlySorted!108 lt!3579)))))

(declare-fun l!522 () List!417)

(declare-fun value!159 () B!538)

(declare-fun $colon$colon!19 (List!417 tuple2!516) List!417)

(declare-fun filterByValue!14 (List!417 B!538) List!417)

(assert (=> b!14110 (= lt!3579 ($colon$colon!19 (filterByValue!14 (t!2813 l!522) value!159) (h!979 l!522)))))

(declare-fun bm!386 () Bool)

(declare-fun isEmpty!100 (List!417) Bool)

(assert (=> bm!386 (= call!389 (isEmpty!100 lt!3579))))

(declare-fun b!14111 () Bool)

(declare-fun res!10986 () Bool)

(assert (=> b!14111 (=> (not res!10986) (not e!8418))))

(get-info :version)

(assert (=> b!14111 (= res!10986 (and ((_ is Cons!413) l!522) (= (_2!258 (h!979 l!522)) value!159)))))

(declare-fun res!10989 () Bool)

(assert (=> start!2088 (=> (not res!10989) (not e!8418))))

(assert (=> start!2088 (= res!10989 (isStrictlySorted!108 l!522))))

(assert (=> start!2088 e!8418))

(declare-fun e!8420 () Bool)

(assert (=> start!2088 e!8420))

(declare-fun tp_is_empty!717 () Bool)

(assert (=> start!2088 tp_is_empty!717))

(declare-fun b!14107 () Bool)

(declare-fun tp!2306 () Bool)

(assert (=> b!14107 (= e!8420 (and tp_is_empty!717 tp!2306))))

(declare-fun b!14112 () Bool)

(assert (=> b!14112 (= e!8422 e!8421)))

(declare-fun c!1295 () Bool)

(assert (=> b!14112 (= c!1295 (isEmpty!100 l!522))))

(declare-fun b!14113 () Bool)

(declare-fun head!789 (List!417) tuple2!516)

(assert (=> b!14113 (= e!8419 (bvslt (_1!258 (head!789 lt!3579)) (_1!258 (head!789 l!522))))))

(assert (= (and start!2088 res!10989) b!14111))

(assert (= (and b!14111 res!10986) b!14110))

(assert (= (and b!14110 (not res!10987)) b!14108))

(assert (= (and b!14108 (not res!10988)) b!14112))

(assert (= (and b!14112 c!1295) b!14106))

(assert (= (and b!14112 (not c!1295)) b!14109))

(assert (= (and b!14109 res!10990) b!14113))

(assert (= (or b!14106 b!14109) bm!386))

(assert (= (and start!2088 ((_ is Cons!413) l!522)) b!14107))

(declare-fun m!9403 () Bool)

(assert (=> b!14113 m!9403))

(declare-fun m!9405 () Bool)

(assert (=> b!14113 m!9405))

(declare-fun m!9407 () Bool)

(assert (=> bm!386 m!9407))

(declare-fun m!9409 () Bool)

(assert (=> b!14108 m!9409))

(declare-fun m!9411 () Bool)

(assert (=> b!14112 m!9411))

(declare-fun m!9413 () Bool)

(assert (=> start!2088 m!9413))

(declare-fun m!9415 () Bool)

(assert (=> b!14110 m!9415))

(declare-fun m!9417 () Bool)

(assert (=> b!14110 m!9417))

(assert (=> b!14110 m!9417))

(declare-fun m!9419 () Bool)

(assert (=> b!14110 m!9419))

(check-sat (not b!14107) (not b!14113) (not bm!386) (not b!14108) (not start!2088) (not b!14112) tp_is_empty!717 (not b!14110))
(check-sat)
(get-model)

(declare-fun d!2097 () Bool)

(assert (=> d!2097 (= (isEmpty!100 lt!3579) ((_ is Nil!414) lt!3579))))

(assert (=> bm!386 d!2097))

(declare-fun d!2101 () Bool)

(declare-fun res!11022 () Bool)

(declare-fun e!8454 () Bool)

(assert (=> d!2101 (=> res!11022 e!8454)))

(assert (=> d!2101 (= res!11022 (or ((_ is Nil!414) lt!3579) ((_ is Nil!414) (t!2813 lt!3579))))))

(assert (=> d!2101 (= (isStrictlySorted!108 lt!3579) e!8454)))

(declare-fun b!14158 () Bool)

(declare-fun e!8455 () Bool)

(assert (=> b!14158 (= e!8454 e!8455)))

(declare-fun res!11023 () Bool)

(assert (=> b!14158 (=> (not res!11023) (not e!8455))))

(assert (=> b!14158 (= res!11023 (bvslt (_1!258 (h!979 lt!3579)) (_1!258 (h!979 (t!2813 lt!3579)))))))

(declare-fun b!14159 () Bool)

(assert (=> b!14159 (= e!8455 (isStrictlySorted!108 (t!2813 lt!3579)))))

(assert (= (and d!2101 (not res!11022)) b!14158))

(assert (= (and b!14158 res!11023) b!14159))

(declare-fun m!9443 () Bool)

(assert (=> b!14159 m!9443))

(assert (=> b!14110 d!2101))

(declare-fun d!2119 () Bool)

(assert (=> d!2119 (= ($colon$colon!19 (filterByValue!14 (t!2813 l!522) value!159) (h!979 l!522)) (Cons!413 (h!979 l!522) (filterByValue!14 (t!2813 l!522) value!159)))))

(assert (=> b!14110 d!2119))

(declare-fun bs!556 () Bool)

(declare-fun b!14247 () Bool)

(assert (= bs!556 (and b!14247 b!14108)))

(declare-fun lambda!149 () Int)

(assert (=> bs!556 (= lambda!149 lambda!137)))

(assert (=> b!14247 true))

(declare-fun b!14245 () Bool)

(declare-fun e!8509 () Bool)

(declare-fun e!8512 () Bool)

(assert (=> b!14245 (= e!8509 e!8512)))

(declare-fun c!1324 () Bool)

(assert (=> b!14245 (= c!1324 (isEmpty!100 (t!2813 l!522)))))

(declare-fun b!14246 () Bool)

(declare-fun e!8510 () Bool)

(assert (=> b!14246 (= e!8512 e!8510)))

(declare-fun res!11060 () Bool)

(declare-fun call!410 () Bool)

(assert (=> b!14246 (= res!11060 call!410)))

(assert (=> b!14246 (=> res!11060 e!8510)))

(declare-fun res!11062 () Bool)

(assert (=> b!14247 (=> (not res!11062) (not e!8509))))

(declare-fun lt!3591 () List!417)

(assert (=> b!14247 (= res!11062 (forall!93 lt!3591 lambda!149))))

(declare-fun bm!406 () Bool)

(declare-fun call!409 () List!417)

(assert (=> bm!406 (= call!409 (filterByValue!14 (t!2813 (t!2813 l!522)) value!159))))

(declare-fun bm!407 () Bool)

(assert (=> bm!407 (= call!410 (isEmpty!100 lt!3591))))

(declare-fun b!14248 () Bool)

(assert (=> b!14248 (= e!8510 (bvsge (_1!258 (head!789 lt!3591)) (_1!258 (head!789 (t!2813 l!522)))))))

(declare-fun b!14244 () Bool)

(declare-fun e!8511 () List!417)

(assert (=> b!14244 (= e!8511 Nil!414)))

(declare-fun d!2121 () Bool)

(assert (=> d!2121 e!8509))

(declare-fun res!11061 () Bool)

(assert (=> d!2121 (=> (not res!11061) (not e!8509))))

(assert (=> d!2121 (= res!11061 (isStrictlySorted!108 lt!3591))))

(declare-fun e!8508 () List!417)

(assert (=> d!2121 (= lt!3591 e!8508)))

(declare-fun c!1325 () Bool)

(assert (=> d!2121 (= c!1325 (and ((_ is Cons!413) (t!2813 l!522)) (= (_2!258 (h!979 (t!2813 l!522))) value!159)))))

(assert (=> d!2121 (isStrictlySorted!108 (t!2813 l!522))))

(assert (=> d!2121 (= (filterByValue!14 (t!2813 l!522) value!159) lt!3591)))

(declare-fun b!14249 () Bool)

(assert (=> b!14249 (= e!8512 call!410)))

(declare-fun b!14250 () Bool)

(assert (=> b!14250 (= e!8508 e!8511)))

(declare-fun c!1323 () Bool)

(assert (=> b!14250 (= c!1323 (and ((_ is Cons!413) (t!2813 l!522)) (not (= (_2!258 (h!979 (t!2813 l!522))) value!159))))))

(declare-fun b!14251 () Bool)

(assert (=> b!14251 (= e!8508 ($colon$colon!19 call!409 (h!979 (t!2813 l!522))))))

(declare-fun b!14252 () Bool)

(assert (=> b!14252 (= e!8511 call!409)))

(assert (= (and d!2121 c!1325) b!14251))

(assert (= (and d!2121 (not c!1325)) b!14250))

(assert (= (and b!14250 c!1323) b!14252))

(assert (= (and b!14250 (not c!1323)) b!14244))

(assert (= (or b!14251 b!14252) bm!406))

(assert (= (and d!2121 res!11061) b!14247))

(assert (= (and b!14247 res!11062) b!14245))

(assert (= (and b!14245 c!1324) b!14249))

(assert (= (and b!14245 (not c!1324)) b!14246))

(assert (= (and b!14246 (not res!11060)) b!14248))

(assert (= (or b!14249 b!14246) bm!407))

(declare-fun m!9489 () Bool)

(assert (=> d!2121 m!9489))

(declare-fun m!9491 () Bool)

(assert (=> d!2121 m!9491))

(declare-fun m!9493 () Bool)

(assert (=> b!14248 m!9493))

(declare-fun m!9495 () Bool)

(assert (=> b!14248 m!9495))

(declare-fun m!9497 () Bool)

(assert (=> b!14251 m!9497))

(declare-fun m!9499 () Bool)

(assert (=> b!14247 m!9499))

(declare-fun m!9501 () Bool)

(assert (=> bm!406 m!9501))

(declare-fun m!9503 () Bool)

(assert (=> bm!407 m!9503))

(declare-fun m!9505 () Bool)

(assert (=> b!14245 m!9505))

(assert (=> b!14110 d!2121))

(declare-fun d!2143 () Bool)

(assert (=> d!2143 (= (head!789 lt!3579) (h!979 lt!3579))))

(assert (=> b!14113 d!2143))

(declare-fun d!2147 () Bool)

(assert (=> d!2147 (= (head!789 l!522) (h!979 l!522))))

(assert (=> b!14113 d!2147))

(declare-fun d!2149 () Bool)

(declare-fun res!11067 () Bool)

(declare-fun e!8523 () Bool)

(assert (=> d!2149 (=> res!11067 e!8523)))

(assert (=> d!2149 (= res!11067 (or ((_ is Nil!414) l!522) ((_ is Nil!414) (t!2813 l!522))))))

(assert (=> d!2149 (= (isStrictlySorted!108 l!522) e!8523)))

(declare-fun b!14267 () Bool)

(declare-fun e!8524 () Bool)

(assert (=> b!14267 (= e!8523 e!8524)))

(declare-fun res!11068 () Bool)

(assert (=> b!14267 (=> (not res!11068) (not e!8524))))

(assert (=> b!14267 (= res!11068 (bvslt (_1!258 (h!979 l!522)) (_1!258 (h!979 (t!2813 l!522)))))))

(declare-fun b!14268 () Bool)

(assert (=> b!14268 (= e!8524 (isStrictlySorted!108 (t!2813 l!522)))))

(assert (= (and d!2149 (not res!11067)) b!14267))

(assert (= (and b!14267 res!11068) b!14268))

(assert (=> b!14268 m!9491))

(assert (=> start!2088 d!2149))

(declare-fun d!2151 () Bool)

(declare-fun res!11073 () Bool)

(declare-fun e!8529 () Bool)

(assert (=> d!2151 (=> res!11073 e!8529)))

(assert (=> d!2151 (= res!11073 ((_ is Nil!414) lt!3579))))

(assert (=> d!2151 (= (forall!93 lt!3579 lambda!137) e!8529)))

(declare-fun b!14273 () Bool)

(declare-fun e!8530 () Bool)

(assert (=> b!14273 (= e!8529 e!8530)))

(declare-fun res!11074 () Bool)

(assert (=> b!14273 (=> (not res!11074) (not e!8530))))

(declare-fun dynLambda!90 (Int tuple2!516) Bool)

(assert (=> b!14273 (= res!11074 (dynLambda!90 lambda!137 (h!979 lt!3579)))))

(declare-fun b!14274 () Bool)

(assert (=> b!14274 (= e!8530 (forall!93 (t!2813 lt!3579) lambda!137))))

(assert (= (and d!2151 (not res!11073)) b!14273))

(assert (= (and b!14273 res!11074) b!14274))

(declare-fun b_lambda!895 () Bool)

(assert (=> (not b_lambda!895) (not b!14273)))

(declare-fun m!9507 () Bool)

(assert (=> b!14273 m!9507))

(declare-fun m!9509 () Bool)

(assert (=> b!14274 m!9509))

(assert (=> b!14108 d!2151))

(declare-fun d!2153 () Bool)

(assert (=> d!2153 (= (isEmpty!100 l!522) ((_ is Nil!414) l!522))))

(assert (=> b!14112 d!2153))

(declare-fun b!14279 () Bool)

(declare-fun e!8533 () Bool)

(declare-fun tp!2318 () Bool)

(assert (=> b!14279 (= e!8533 (and tp_is_empty!717 tp!2318))))

(assert (=> b!14107 (= tp!2306 e!8533)))

(assert (= (and b!14107 ((_ is Cons!413) (t!2813 l!522))) b!14279))

(declare-fun b_lambda!897 () Bool)

(assert (= b_lambda!895 (or b!14108 b_lambda!897)))

(declare-fun bs!559 () Bool)

(declare-fun d!2155 () Bool)

(assert (= bs!559 (and d!2155 b!14108)))

(assert (=> bs!559 (= (dynLambda!90 lambda!137 (h!979 lt!3579)) (= (_2!258 (h!979 lt!3579)) value!159))))

(assert (=> b!14273 d!2155))

(check-sat (not bm!407) (not b!14268) (not b!14159) (not b!14245) (not b!14248) (not bm!406) tp_is_empty!717 (not b_lambda!897) (not d!2121) (not b!14251) (not b!14274) (not b!14279) (not b!14247))
(check-sat)
(get-model)

(declare-fun d!2157 () Bool)

(assert (=> d!2157 (= (isEmpty!100 lt!3591) ((_ is Nil!414) lt!3591))))

(assert (=> bm!407 d!2157))

(declare-fun d!2159 () Bool)

(assert (=> d!2159 (= ($colon$colon!19 call!409 (h!979 (t!2813 l!522))) (Cons!413 (h!979 (t!2813 l!522)) call!409))))

(assert (=> b!14251 d!2159))

(declare-fun d!2161 () Bool)

(declare-fun res!11075 () Bool)

(declare-fun e!8534 () Bool)

(assert (=> d!2161 (=> res!11075 e!8534)))

(assert (=> d!2161 (= res!11075 (or ((_ is Nil!414) (t!2813 lt!3579)) ((_ is Nil!414) (t!2813 (t!2813 lt!3579)))))))

(assert (=> d!2161 (= (isStrictlySorted!108 (t!2813 lt!3579)) e!8534)))

(declare-fun b!14280 () Bool)

(declare-fun e!8535 () Bool)

(assert (=> b!14280 (= e!8534 e!8535)))

(declare-fun res!11076 () Bool)

(assert (=> b!14280 (=> (not res!11076) (not e!8535))))

(assert (=> b!14280 (= res!11076 (bvslt (_1!258 (h!979 (t!2813 lt!3579))) (_1!258 (h!979 (t!2813 (t!2813 lt!3579))))))))

(declare-fun b!14281 () Bool)

(assert (=> b!14281 (= e!8535 (isStrictlySorted!108 (t!2813 (t!2813 lt!3579))))))

(assert (= (and d!2161 (not res!11075)) b!14280))

(assert (= (and b!14280 res!11076) b!14281))

(declare-fun m!9511 () Bool)

(assert (=> b!14281 m!9511))

(assert (=> b!14159 d!2161))

(declare-fun d!2163 () Bool)

(declare-fun res!11077 () Bool)

(declare-fun e!8536 () Bool)

(assert (=> d!2163 (=> res!11077 e!8536)))

(assert (=> d!2163 (= res!11077 ((_ is Nil!414) (t!2813 lt!3579)))))

(assert (=> d!2163 (= (forall!93 (t!2813 lt!3579) lambda!137) e!8536)))

(declare-fun b!14282 () Bool)

(declare-fun e!8537 () Bool)

(assert (=> b!14282 (= e!8536 e!8537)))

(declare-fun res!11078 () Bool)

(assert (=> b!14282 (=> (not res!11078) (not e!8537))))

(assert (=> b!14282 (= res!11078 (dynLambda!90 lambda!137 (h!979 (t!2813 lt!3579))))))

(declare-fun b!14283 () Bool)

(assert (=> b!14283 (= e!8537 (forall!93 (t!2813 (t!2813 lt!3579)) lambda!137))))

(assert (= (and d!2163 (not res!11077)) b!14282))

(assert (= (and b!14282 res!11078) b!14283))

(declare-fun b_lambda!899 () Bool)

(assert (=> (not b_lambda!899) (not b!14282)))

(declare-fun m!9513 () Bool)

(assert (=> b!14282 m!9513))

(declare-fun m!9515 () Bool)

(assert (=> b!14283 m!9515))

(assert (=> b!14274 d!2163))

(declare-fun bs!560 () Bool)

(declare-fun b!14287 () Bool)

(assert (= bs!560 (and b!14287 b!14108)))

(declare-fun lambda!150 () Int)

(assert (=> bs!560 (= lambda!150 lambda!137)))

(declare-fun bs!561 () Bool)

(assert (= bs!561 (and b!14287 b!14247)))

(assert (=> bs!561 (= lambda!150 lambda!149)))

(assert (=> b!14287 true))

(declare-fun b!14285 () Bool)

(declare-fun e!8539 () Bool)

(declare-fun e!8542 () Bool)

(assert (=> b!14285 (= e!8539 e!8542)))

(declare-fun c!1327 () Bool)

(assert (=> b!14285 (= c!1327 (isEmpty!100 (t!2813 (t!2813 l!522))))))

(declare-fun b!14286 () Bool)

(declare-fun e!8540 () Bool)

(assert (=> b!14286 (= e!8542 e!8540)))

(declare-fun res!11079 () Bool)

(declare-fun call!412 () Bool)

(assert (=> b!14286 (= res!11079 call!412)))

(assert (=> b!14286 (=> res!11079 e!8540)))

(declare-fun res!11081 () Bool)

(assert (=> b!14287 (=> (not res!11081) (not e!8539))))

(declare-fun lt!3592 () List!417)

(assert (=> b!14287 (= res!11081 (forall!93 lt!3592 lambda!150))))

(declare-fun bm!408 () Bool)

(declare-fun call!411 () List!417)

(assert (=> bm!408 (= call!411 (filterByValue!14 (t!2813 (t!2813 (t!2813 l!522))) value!159))))

(declare-fun bm!409 () Bool)

(assert (=> bm!409 (= call!412 (isEmpty!100 lt!3592))))

(declare-fun b!14288 () Bool)

(assert (=> b!14288 (= e!8540 (bvsge (_1!258 (head!789 lt!3592)) (_1!258 (head!789 (t!2813 (t!2813 l!522))))))))

(declare-fun b!14284 () Bool)

(declare-fun e!8541 () List!417)

(assert (=> b!14284 (= e!8541 Nil!414)))

(declare-fun d!2165 () Bool)

(assert (=> d!2165 e!8539))

(declare-fun res!11080 () Bool)

(assert (=> d!2165 (=> (not res!11080) (not e!8539))))

(assert (=> d!2165 (= res!11080 (isStrictlySorted!108 lt!3592))))

(declare-fun e!8538 () List!417)

(assert (=> d!2165 (= lt!3592 e!8538)))

(declare-fun c!1328 () Bool)

(assert (=> d!2165 (= c!1328 (and ((_ is Cons!413) (t!2813 (t!2813 l!522))) (= (_2!258 (h!979 (t!2813 (t!2813 l!522)))) value!159)))))

(assert (=> d!2165 (isStrictlySorted!108 (t!2813 (t!2813 l!522)))))

(assert (=> d!2165 (= (filterByValue!14 (t!2813 (t!2813 l!522)) value!159) lt!3592)))

(declare-fun b!14289 () Bool)

(assert (=> b!14289 (= e!8542 call!412)))

(declare-fun b!14290 () Bool)

(assert (=> b!14290 (= e!8538 e!8541)))

(declare-fun c!1326 () Bool)

(assert (=> b!14290 (= c!1326 (and ((_ is Cons!413) (t!2813 (t!2813 l!522))) (not (= (_2!258 (h!979 (t!2813 (t!2813 l!522)))) value!159))))))

(declare-fun b!14291 () Bool)

(assert (=> b!14291 (= e!8538 ($colon$colon!19 call!411 (h!979 (t!2813 (t!2813 l!522)))))))

(declare-fun b!14292 () Bool)

(assert (=> b!14292 (= e!8541 call!411)))

(assert (= (and d!2165 c!1328) b!14291))

(assert (= (and d!2165 (not c!1328)) b!14290))

(assert (= (and b!14290 c!1326) b!14292))

(assert (= (and b!14290 (not c!1326)) b!14284))

(assert (= (or b!14291 b!14292) bm!408))

(assert (= (and d!2165 res!11080) b!14287))

(assert (= (and b!14287 res!11081) b!14285))

(assert (= (and b!14285 c!1327) b!14289))

(assert (= (and b!14285 (not c!1327)) b!14286))

(assert (= (and b!14286 (not res!11079)) b!14288))

(assert (= (or b!14289 b!14286) bm!409))

(declare-fun m!9517 () Bool)

(assert (=> d!2165 m!9517))

(declare-fun m!9519 () Bool)

(assert (=> d!2165 m!9519))

(declare-fun m!9521 () Bool)

(assert (=> b!14288 m!9521))

(declare-fun m!9523 () Bool)

(assert (=> b!14288 m!9523))

(declare-fun m!9525 () Bool)

(assert (=> b!14291 m!9525))

(declare-fun m!9527 () Bool)

(assert (=> b!14287 m!9527))

(declare-fun m!9529 () Bool)

(assert (=> bm!408 m!9529))

(declare-fun m!9531 () Bool)

(assert (=> bm!409 m!9531))

(declare-fun m!9533 () Bool)

(assert (=> b!14285 m!9533))

(assert (=> bm!406 d!2165))

(declare-fun d!2167 () Bool)

(declare-fun res!11082 () Bool)

(declare-fun e!8543 () Bool)

(assert (=> d!2167 (=> res!11082 e!8543)))

(assert (=> d!2167 (= res!11082 ((_ is Nil!414) lt!3591))))

(assert (=> d!2167 (= (forall!93 lt!3591 lambda!149) e!8543)))

(declare-fun b!14293 () Bool)

(declare-fun e!8544 () Bool)

(assert (=> b!14293 (= e!8543 e!8544)))

(declare-fun res!11083 () Bool)

(assert (=> b!14293 (=> (not res!11083) (not e!8544))))

(assert (=> b!14293 (= res!11083 (dynLambda!90 lambda!149 (h!979 lt!3591)))))

(declare-fun b!14294 () Bool)

(assert (=> b!14294 (= e!8544 (forall!93 (t!2813 lt!3591) lambda!149))))

(assert (= (and d!2167 (not res!11082)) b!14293))

(assert (= (and b!14293 res!11083) b!14294))

(declare-fun b_lambda!901 () Bool)

(assert (=> (not b_lambda!901) (not b!14293)))

(declare-fun m!9535 () Bool)

(assert (=> b!14293 m!9535))

(declare-fun m!9537 () Bool)

(assert (=> b!14294 m!9537))

(assert (=> b!14247 d!2167))

(declare-fun d!2169 () Bool)

(declare-fun res!11084 () Bool)

(declare-fun e!8545 () Bool)

(assert (=> d!2169 (=> res!11084 e!8545)))

(assert (=> d!2169 (= res!11084 (or ((_ is Nil!414) lt!3591) ((_ is Nil!414) (t!2813 lt!3591))))))

(assert (=> d!2169 (= (isStrictlySorted!108 lt!3591) e!8545)))

(declare-fun b!14295 () Bool)

(declare-fun e!8546 () Bool)

(assert (=> b!14295 (= e!8545 e!8546)))

(declare-fun res!11085 () Bool)

(assert (=> b!14295 (=> (not res!11085) (not e!8546))))

(assert (=> b!14295 (= res!11085 (bvslt (_1!258 (h!979 lt!3591)) (_1!258 (h!979 (t!2813 lt!3591)))))))

(declare-fun b!14296 () Bool)

(assert (=> b!14296 (= e!8546 (isStrictlySorted!108 (t!2813 lt!3591)))))

(assert (= (and d!2169 (not res!11084)) b!14295))

(assert (= (and b!14295 res!11085) b!14296))

(declare-fun m!9539 () Bool)

(assert (=> b!14296 m!9539))

(assert (=> d!2121 d!2169))

(declare-fun d!2171 () Bool)

(declare-fun res!11086 () Bool)

(declare-fun e!8547 () Bool)

(assert (=> d!2171 (=> res!11086 e!8547)))

(assert (=> d!2171 (= res!11086 (or ((_ is Nil!414) (t!2813 l!522)) ((_ is Nil!414) (t!2813 (t!2813 l!522)))))))

(assert (=> d!2171 (= (isStrictlySorted!108 (t!2813 l!522)) e!8547)))

(declare-fun b!14297 () Bool)

(declare-fun e!8548 () Bool)

(assert (=> b!14297 (= e!8547 e!8548)))

(declare-fun res!11087 () Bool)

(assert (=> b!14297 (=> (not res!11087) (not e!8548))))

(assert (=> b!14297 (= res!11087 (bvslt (_1!258 (h!979 (t!2813 l!522))) (_1!258 (h!979 (t!2813 (t!2813 l!522))))))))

(declare-fun b!14298 () Bool)

(assert (=> b!14298 (= e!8548 (isStrictlySorted!108 (t!2813 (t!2813 l!522))))))

(assert (= (and d!2171 (not res!11086)) b!14297))

(assert (= (and b!14297 res!11087) b!14298))

(assert (=> b!14298 m!9519))

(assert (=> d!2121 d!2171))

(declare-fun d!2173 () Bool)

(assert (=> d!2173 (= (isEmpty!100 (t!2813 l!522)) ((_ is Nil!414) (t!2813 l!522)))))

(assert (=> b!14245 d!2173))

(declare-fun d!2175 () Bool)

(assert (=> d!2175 (= (head!789 lt!3591) (h!979 lt!3591))))

(assert (=> b!14248 d!2175))

(declare-fun d!2177 () Bool)

(assert (=> d!2177 (= (head!789 (t!2813 l!522)) (h!979 (t!2813 l!522)))))

(assert (=> b!14248 d!2177))

(assert (=> b!14268 d!2171))

(declare-fun b!14299 () Bool)

(declare-fun e!8549 () Bool)

(declare-fun tp!2319 () Bool)

(assert (=> b!14299 (= e!8549 (and tp_is_empty!717 tp!2319))))

(assert (=> b!14279 (= tp!2318 e!8549)))

(assert (= (and b!14279 ((_ is Cons!413) (t!2813 (t!2813 l!522)))) b!14299))

(declare-fun b_lambda!903 () Bool)

(assert (= b_lambda!899 (or b!14108 b_lambda!903)))

(declare-fun bs!562 () Bool)

(declare-fun d!2179 () Bool)

(assert (= bs!562 (and d!2179 b!14108)))

(assert (=> bs!562 (= (dynLambda!90 lambda!137 (h!979 (t!2813 lt!3579))) (= (_2!258 (h!979 (t!2813 lt!3579))) value!159))))

(assert (=> b!14282 d!2179))

(declare-fun b_lambda!905 () Bool)

(assert (= b_lambda!901 (or b!14247 b_lambda!905)))

(declare-fun bs!563 () Bool)

(declare-fun d!2181 () Bool)

(assert (= bs!563 (and d!2181 b!14247)))

(assert (=> bs!563 (= (dynLambda!90 lambda!149 (h!979 lt!3591)) (= (_2!258 (h!979 lt!3591)) value!159))))

(assert (=> b!14293 d!2181))

(check-sat (not b!14288) (not b!14296) (not b!14281) (not b!14299) tp_is_empty!717 (not b_lambda!897) (not b!14287) (not b!14285) (not bm!409) (not d!2165) (not b!14298) (not b!14291) (not b!14283) (not b_lambda!903) (not b!14294) (not bm!408) (not b_lambda!905))
(check-sat)
