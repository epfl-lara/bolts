; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43992 () Bool)

(assert start!43992)

(declare-fun res!288954 () Bool)

(declare-fun e!285600 () Bool)

(assert (=> start!43992 (=> (not res!288954) (not e!285600))))

(declare-datatypes ((B!1162 0))(
  ( (B!1163 (val!7033 Int)) )
))
(declare-datatypes ((tuple2!9264 0))(
  ( (tuple2!9265 (_1!4642 (_ BitVec 64)) (_2!4642 B!1162)) )
))
(declare-datatypes ((List!9332 0))(
  ( (Nil!9329) (Cons!9328 (h!10184 tuple2!9264) (t!15565 List!9332)) )
))
(declare-fun l!956 () List!9332)

(declare-fun isStrictlySorted!432 (List!9332) Bool)

(assert (=> start!43992 (= res!288954 (isStrictlySorted!432 l!956))))

(assert (=> start!43992 e!285600))

(declare-fun e!285601 () Bool)

(assert (=> start!43992 e!285601))

(assert (=> start!43992 true))

(declare-fun tp_is_empty!13971 () Bool)

(assert (=> start!43992 tp_is_empty!13971))

(declare-fun b!485062 () Bool)

(declare-fun e!285599 () Bool)

(declare-fun lt!219473 () List!9332)

(declare-fun length!15 (List!9332) Int)

(assert (=> b!485062 (= e!285599 (not (= (length!15 lt!219473) (+ 1 (length!15 l!956)))))))

(declare-fun b!485063 () Bool)

(declare-fun tp!43603 () Bool)

(assert (=> b!485063 (= e!285601 (and tp_is_empty!13971 tp!43603))))

(declare-fun b!485060 () Bool)

(declare-fun res!288955 () Bool)

(assert (=> b!485060 (=> (not res!288955) (not e!285600))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!398 (List!9332 (_ BitVec 64)) Bool)

(assert (=> b!485060 (= res!288955 (not (containsKey!398 l!956 key!251)))))

(declare-fun b!485061 () Bool)

(assert (=> b!485061 (= e!285600 e!285599)))

(declare-fun res!288956 () Bool)

(assert (=> b!485061 (=> (not res!288956) (not e!285599))))

(get-info :version)

(assert (=> b!485061 (= res!288956 (and (or (not ((_ is Cons!9328) l!956)) (bvsge (_1!4642 (h!10184 l!956)) key!251)) (or (not ((_ is Cons!9328) l!956)) (not (= (_1!4642 (h!10184 l!956)) key!251)))))))

(declare-fun value!166 () B!1162)

(declare-fun insertStrictlySorted!251 (List!9332 (_ BitVec 64) B!1162) List!9332)

(assert (=> b!485061 (= lt!219473 (insertStrictlySorted!251 l!956 key!251 value!166))))

(assert (= (and start!43992 res!288954) b!485060))

(assert (= (and b!485060 res!288955) b!485061))

(assert (= (and b!485061 res!288956) b!485062))

(assert (= (and start!43992 ((_ is Cons!9328) l!956)) b!485063))

(declare-fun m!465317 () Bool)

(assert (=> start!43992 m!465317))

(declare-fun m!465319 () Bool)

(assert (=> b!485062 m!465319))

(declare-fun m!465321 () Bool)

(assert (=> b!485062 m!465321))

(declare-fun m!465323 () Bool)

(assert (=> b!485060 m!465323))

(declare-fun m!465325 () Bool)

(assert (=> b!485061 m!465325))

(check-sat (not start!43992) (not b!485062) (not b!485060) (not b!485061) tp_is_empty!13971 (not b!485063))
(check-sat)
(get-model)

(declare-fun b!485108 () Bool)

(declare-fun res!288982 () Bool)

(declare-fun e!285635 () Bool)

(assert (=> b!485108 (=> (not res!288982) (not e!285635))))

(declare-fun lt!219479 () List!9332)

(assert (=> b!485108 (= res!288982 (containsKey!398 lt!219479 key!251))))

(declare-fun bm!31221 () Bool)

(declare-fun c!58341 () Bool)

(declare-fun e!285637 () List!9332)

(declare-fun call!31226 () List!9332)

(declare-fun $colon$colon!130 (List!9332 tuple2!9264) List!9332)

(assert (=> bm!31221 (= call!31226 ($colon$colon!130 e!285637 (ite c!58341 (h!10184 l!956) (tuple2!9265 key!251 value!166))))))

(declare-fun c!58340 () Bool)

(assert (=> bm!31221 (= c!58340 c!58341)))

(declare-fun b!485109 () Bool)

(declare-fun e!285633 () List!9332)

(assert (=> b!485109 (= e!285633 call!31226)))

(declare-fun b!485110 () Bool)

(assert (=> b!485110 (= e!285637 (insertStrictlySorted!251 (t!15565 l!956) key!251 value!166))))

(declare-fun b!485111 () Bool)

(declare-fun e!285636 () List!9332)

(assert (=> b!485111 (= e!285633 e!285636)))

(declare-fun c!58343 () Bool)

(assert (=> b!485111 (= c!58343 (and ((_ is Cons!9328) l!956) (= (_1!4642 (h!10184 l!956)) key!251)))))

(declare-fun bm!31222 () Bool)

(declare-fun call!31224 () List!9332)

(declare-fun call!31225 () List!9332)

(assert (=> bm!31222 (= call!31224 call!31225)))

(declare-fun d!77207 () Bool)

(assert (=> d!77207 e!285635))

(declare-fun res!288983 () Bool)

(assert (=> d!77207 (=> (not res!288983) (not e!285635))))

(assert (=> d!77207 (= res!288983 (isStrictlySorted!432 lt!219479))))

(assert (=> d!77207 (= lt!219479 e!285633)))

(assert (=> d!77207 (= c!58341 (and ((_ is Cons!9328) l!956) (bvslt (_1!4642 (h!10184 l!956)) key!251)))))

(assert (=> d!77207 (isStrictlySorted!432 l!956)))

(assert (=> d!77207 (= (insertStrictlySorted!251 l!956 key!251 value!166) lt!219479)))

(declare-fun b!485112 () Bool)

(assert (=> b!485112 (= e!285636 call!31225)))

(declare-fun b!485113 () Bool)

(declare-fun e!285634 () List!9332)

(assert (=> b!485113 (= e!285634 call!31224)))

(declare-fun b!485114 () Bool)

(declare-fun c!58342 () Bool)

(assert (=> b!485114 (= e!285637 (ite c!58343 (t!15565 l!956) (ite c!58342 (Cons!9328 (h!10184 l!956) (t!15565 l!956)) Nil!9329)))))

(declare-fun b!485115 () Bool)

(declare-fun contains!2692 (List!9332 tuple2!9264) Bool)

(assert (=> b!485115 (= e!285635 (contains!2692 lt!219479 (tuple2!9265 key!251 value!166)))))

(declare-fun b!485116 () Bool)

(assert (=> b!485116 (= e!285634 call!31224)))

(declare-fun b!485117 () Bool)

(assert (=> b!485117 (= c!58342 (and ((_ is Cons!9328) l!956) (bvsgt (_1!4642 (h!10184 l!956)) key!251)))))

(assert (=> b!485117 (= e!285636 e!285634)))

(declare-fun bm!31223 () Bool)

(assert (=> bm!31223 (= call!31225 call!31226)))

(assert (= (and d!77207 c!58341) b!485109))

(assert (= (and d!77207 (not c!58341)) b!485111))

(assert (= (and b!485111 c!58343) b!485112))

(assert (= (and b!485111 (not c!58343)) b!485117))

(assert (= (and b!485117 c!58342) b!485116))

(assert (= (and b!485117 (not c!58342)) b!485113))

(assert (= (or b!485116 b!485113) bm!31222))

(assert (= (or b!485112 bm!31222) bm!31223))

(assert (= (or b!485109 bm!31223) bm!31221))

(assert (= (and bm!31221 c!58340) b!485110))

(assert (= (and bm!31221 (not c!58340)) b!485114))

(assert (= (and d!77207 res!288983) b!485108))

(assert (= (and b!485108 res!288982) b!485115))

(declare-fun m!465341 () Bool)

(assert (=> b!485110 m!465341))

(declare-fun m!465343 () Bool)

(assert (=> b!485115 m!465343))

(declare-fun m!465345 () Bool)

(assert (=> d!77207 m!465345))

(assert (=> d!77207 m!465317))

(declare-fun m!465347 () Bool)

(assert (=> bm!31221 m!465347))

(declare-fun m!465349 () Bool)

(assert (=> b!485108 m!465349))

(assert (=> b!485061 d!77207))

(declare-fun d!77217 () Bool)

(declare-fun size!15445 (List!9332) Int)

(assert (=> d!77217 (= (length!15 lt!219473) (size!15445 lt!219473))))

(declare-fun bs!15450 () Bool)

(assert (= bs!15450 d!77217))

(declare-fun m!465351 () Bool)

(assert (=> bs!15450 m!465351))

(assert (=> b!485062 d!77217))

(declare-fun d!77219 () Bool)

(assert (=> d!77219 (= (length!15 l!956) (size!15445 l!956))))

(declare-fun bs!15451 () Bool)

(assert (= bs!15451 d!77219))

(declare-fun m!465353 () Bool)

(assert (=> bs!15451 m!465353))

(assert (=> b!485062 d!77219))

(declare-fun d!77221 () Bool)

(declare-fun res!288988 () Bool)

(declare-fun e!285642 () Bool)

(assert (=> d!77221 (=> res!288988 e!285642)))

(assert (=> d!77221 (= res!288988 (or ((_ is Nil!9329) l!956) ((_ is Nil!9329) (t!15565 l!956))))))

(assert (=> d!77221 (= (isStrictlySorted!432 l!956) e!285642)))

(declare-fun b!485122 () Bool)

(declare-fun e!285643 () Bool)

(assert (=> b!485122 (= e!285642 e!285643)))

(declare-fun res!288989 () Bool)

(assert (=> b!485122 (=> (not res!288989) (not e!285643))))

(assert (=> b!485122 (= res!288989 (bvslt (_1!4642 (h!10184 l!956)) (_1!4642 (h!10184 (t!15565 l!956)))))))

(declare-fun b!485123 () Bool)

(assert (=> b!485123 (= e!285643 (isStrictlySorted!432 (t!15565 l!956)))))

(assert (= (and d!77221 (not res!288988)) b!485122))

(assert (= (and b!485122 res!288989) b!485123))

(declare-fun m!465355 () Bool)

(assert (=> b!485123 m!465355))

(assert (=> start!43992 d!77221))

(declare-fun d!77223 () Bool)

(declare-fun res!288994 () Bool)

(declare-fun e!285654 () Bool)

(assert (=> d!77223 (=> res!288994 e!285654)))

(assert (=> d!77223 (= res!288994 (and ((_ is Cons!9328) l!956) (= (_1!4642 (h!10184 l!956)) key!251)))))

(assert (=> d!77223 (= (containsKey!398 l!956 key!251) e!285654)))

(declare-fun b!485140 () Bool)

(declare-fun e!285655 () Bool)

(assert (=> b!485140 (= e!285654 e!285655)))

(declare-fun res!288995 () Bool)

(assert (=> b!485140 (=> (not res!288995) (not e!285655))))

(assert (=> b!485140 (= res!288995 (and (or (not ((_ is Cons!9328) l!956)) (bvsle (_1!4642 (h!10184 l!956)) key!251)) ((_ is Cons!9328) l!956) (bvslt (_1!4642 (h!10184 l!956)) key!251)))))

(declare-fun b!485141 () Bool)

(assert (=> b!485141 (= e!285655 (containsKey!398 (t!15565 l!956) key!251))))

(assert (= (and d!77223 (not res!288994)) b!485140))

(assert (= (and b!485140 res!288995) b!485141))

(declare-fun m!465357 () Bool)

(assert (=> b!485141 m!465357))

(assert (=> b!485060 d!77223))

(declare-fun b!485154 () Bool)

(declare-fun e!285661 () Bool)

(declare-fun tp!43609 () Bool)

(assert (=> b!485154 (= e!285661 (and tp_is_empty!13971 tp!43609))))

(assert (=> b!485063 (= tp!43603 e!285661)))

(assert (= (and b!485063 ((_ is Cons!9328) (t!15565 l!956))) b!485154))

(check-sat (not b!485108) (not b!485115) (not d!77219) (not b!485110) (not b!485123) (not d!77217) (not b!485154) (not bm!31221) (not b!485141) tp_is_empty!13971 (not d!77207))
(check-sat)
(get-model)

(declare-fun d!77237 () Bool)

(declare-fun lt!219488 () Int)

(assert (=> d!77237 (>= lt!219488 0)))

(declare-fun e!285703 () Int)

(assert (=> d!77237 (= lt!219488 e!285703)))

(declare-fun c!58370 () Bool)

(assert (=> d!77237 (= c!58370 ((_ is Nil!9329) l!956))))

(assert (=> d!77237 (= (size!15445 l!956) lt!219488)))

(declare-fun b!485221 () Bool)

(assert (=> b!485221 (= e!285703 0)))

(declare-fun b!485222 () Bool)

(assert (=> b!485222 (= e!285703 (+ 1 (size!15445 (t!15565 l!956))))))

(assert (= (and d!77237 c!58370) b!485221))

(assert (= (and d!77237 (not c!58370)) b!485222))

(declare-fun m!465391 () Bool)

(assert (=> b!485222 m!465391))

(assert (=> d!77219 d!77237))

(declare-fun d!77239 () Bool)

(declare-fun res!289020 () Bool)

(declare-fun e!285704 () Bool)

(assert (=> d!77239 (=> res!289020 e!285704)))

(assert (=> d!77239 (= res!289020 (and ((_ is Cons!9328) lt!219479) (= (_1!4642 (h!10184 lt!219479)) key!251)))))

(assert (=> d!77239 (= (containsKey!398 lt!219479 key!251) e!285704)))

(declare-fun b!485223 () Bool)

(declare-fun e!285705 () Bool)

(assert (=> b!485223 (= e!285704 e!285705)))

(declare-fun res!289021 () Bool)

(assert (=> b!485223 (=> (not res!289021) (not e!285705))))

(assert (=> b!485223 (= res!289021 (and (or (not ((_ is Cons!9328) lt!219479)) (bvsle (_1!4642 (h!10184 lt!219479)) key!251)) ((_ is Cons!9328) lt!219479) (bvslt (_1!4642 (h!10184 lt!219479)) key!251)))))

(declare-fun b!485224 () Bool)

(assert (=> b!485224 (= e!285705 (containsKey!398 (t!15565 lt!219479) key!251))))

(assert (= (and d!77239 (not res!289020)) b!485223))

(assert (= (and b!485223 res!289021) b!485224))

(declare-fun m!465393 () Bool)

(assert (=> b!485224 m!465393))

(assert (=> b!485108 d!77239))

(declare-fun d!77241 () Bool)

(declare-fun res!289022 () Bool)

(declare-fun e!285706 () Bool)

(assert (=> d!77241 (=> res!289022 e!285706)))

(assert (=> d!77241 (= res!289022 (and ((_ is Cons!9328) (t!15565 l!956)) (= (_1!4642 (h!10184 (t!15565 l!956))) key!251)))))

(assert (=> d!77241 (= (containsKey!398 (t!15565 l!956) key!251) e!285706)))

(declare-fun b!485225 () Bool)

(declare-fun e!285707 () Bool)

(assert (=> b!485225 (= e!285706 e!285707)))

(declare-fun res!289023 () Bool)

(assert (=> b!485225 (=> (not res!289023) (not e!285707))))

(assert (=> b!485225 (= res!289023 (and (or (not ((_ is Cons!9328) (t!15565 l!956))) (bvsle (_1!4642 (h!10184 (t!15565 l!956))) key!251)) ((_ is Cons!9328) (t!15565 l!956)) (bvslt (_1!4642 (h!10184 (t!15565 l!956))) key!251)))))

(declare-fun b!485226 () Bool)

(assert (=> b!485226 (= e!285707 (containsKey!398 (t!15565 (t!15565 l!956)) key!251))))

(assert (= (and d!77241 (not res!289022)) b!485225))

(assert (= (and b!485225 res!289023) b!485226))

(declare-fun m!465395 () Bool)

(assert (=> b!485226 m!465395))

(assert (=> b!485141 d!77241))

(declare-fun d!77243 () Bool)

(declare-fun res!289024 () Bool)

(declare-fun e!285708 () Bool)

(assert (=> d!77243 (=> res!289024 e!285708)))

(assert (=> d!77243 (= res!289024 (or ((_ is Nil!9329) lt!219479) ((_ is Nil!9329) (t!15565 lt!219479))))))

(assert (=> d!77243 (= (isStrictlySorted!432 lt!219479) e!285708)))

(declare-fun b!485227 () Bool)

(declare-fun e!285709 () Bool)

(assert (=> b!485227 (= e!285708 e!285709)))

(declare-fun res!289025 () Bool)

(assert (=> b!485227 (=> (not res!289025) (not e!285709))))

(assert (=> b!485227 (= res!289025 (bvslt (_1!4642 (h!10184 lt!219479)) (_1!4642 (h!10184 (t!15565 lt!219479)))))))

(declare-fun b!485228 () Bool)

(assert (=> b!485228 (= e!285709 (isStrictlySorted!432 (t!15565 lt!219479)))))

(assert (= (and d!77243 (not res!289024)) b!485227))

(assert (= (and b!485227 res!289025) b!485228))

(declare-fun m!465397 () Bool)

(assert (=> b!485228 m!465397))

(assert (=> d!77207 d!77243))

(assert (=> d!77207 d!77221))

(declare-fun d!77245 () Bool)

(assert (=> d!77245 (= ($colon$colon!130 e!285637 (ite c!58341 (h!10184 l!956) (tuple2!9265 key!251 value!166))) (Cons!9328 (ite c!58341 (h!10184 l!956) (tuple2!9265 key!251 value!166)) e!285637))))

(assert (=> bm!31221 d!77245))

(declare-fun d!77247 () Bool)

(declare-fun lt!219489 () Int)

(assert (=> d!77247 (>= lt!219489 0)))

(declare-fun e!285710 () Int)

(assert (=> d!77247 (= lt!219489 e!285710)))

(declare-fun c!58371 () Bool)

(assert (=> d!77247 (= c!58371 ((_ is Nil!9329) lt!219473))))

(assert (=> d!77247 (= (size!15445 lt!219473) lt!219489)))

(declare-fun b!485229 () Bool)

(assert (=> b!485229 (= e!285710 0)))

(declare-fun b!485230 () Bool)

(assert (=> b!485230 (= e!285710 (+ 1 (size!15445 (t!15565 lt!219473))))))

(assert (= (and d!77247 c!58371) b!485229))

(assert (= (and d!77247 (not c!58371)) b!485230))

(declare-fun m!465399 () Bool)

(assert (=> b!485230 m!465399))

(assert (=> d!77217 d!77247))

(declare-fun b!485231 () Bool)

(declare-fun res!289026 () Bool)

(declare-fun e!285713 () Bool)

(assert (=> b!485231 (=> (not res!289026) (not e!285713))))

(declare-fun lt!219490 () List!9332)

(assert (=> b!485231 (= res!289026 (containsKey!398 lt!219490 key!251))))

(declare-fun c!58373 () Bool)

(declare-fun e!285715 () List!9332)

(declare-fun bm!31242 () Bool)

(declare-fun call!31247 () List!9332)

(assert (=> bm!31242 (= call!31247 ($colon$colon!130 e!285715 (ite c!58373 (h!10184 (t!15565 l!956)) (tuple2!9265 key!251 value!166))))))

(declare-fun c!58372 () Bool)

(assert (=> bm!31242 (= c!58372 c!58373)))

(declare-fun b!485232 () Bool)

(declare-fun e!285711 () List!9332)

(assert (=> b!485232 (= e!285711 call!31247)))

(declare-fun b!485233 () Bool)

(assert (=> b!485233 (= e!285715 (insertStrictlySorted!251 (t!15565 (t!15565 l!956)) key!251 value!166))))

(declare-fun b!485234 () Bool)

(declare-fun e!285714 () List!9332)

(assert (=> b!485234 (= e!285711 e!285714)))

(declare-fun c!58375 () Bool)

(assert (=> b!485234 (= c!58375 (and ((_ is Cons!9328) (t!15565 l!956)) (= (_1!4642 (h!10184 (t!15565 l!956))) key!251)))))

(declare-fun bm!31243 () Bool)

(declare-fun call!31245 () List!9332)

(declare-fun call!31246 () List!9332)

(assert (=> bm!31243 (= call!31245 call!31246)))

(declare-fun d!77249 () Bool)

(assert (=> d!77249 e!285713))

(declare-fun res!289027 () Bool)

(assert (=> d!77249 (=> (not res!289027) (not e!285713))))

(assert (=> d!77249 (= res!289027 (isStrictlySorted!432 lt!219490))))

(assert (=> d!77249 (= lt!219490 e!285711)))

(assert (=> d!77249 (= c!58373 (and ((_ is Cons!9328) (t!15565 l!956)) (bvslt (_1!4642 (h!10184 (t!15565 l!956))) key!251)))))

(assert (=> d!77249 (isStrictlySorted!432 (t!15565 l!956))))

(assert (=> d!77249 (= (insertStrictlySorted!251 (t!15565 l!956) key!251 value!166) lt!219490)))

(declare-fun b!485235 () Bool)

(assert (=> b!485235 (= e!285714 call!31246)))

(declare-fun b!485236 () Bool)

(declare-fun e!285712 () List!9332)

(assert (=> b!485236 (= e!285712 call!31245)))

(declare-fun b!485237 () Bool)

(declare-fun c!58374 () Bool)

(assert (=> b!485237 (= e!285715 (ite c!58375 (t!15565 (t!15565 l!956)) (ite c!58374 (Cons!9328 (h!10184 (t!15565 l!956)) (t!15565 (t!15565 l!956))) Nil!9329)))))

(declare-fun b!485238 () Bool)

(assert (=> b!485238 (= e!285713 (contains!2692 lt!219490 (tuple2!9265 key!251 value!166)))))

(declare-fun b!485239 () Bool)

(assert (=> b!485239 (= e!285712 call!31245)))

(declare-fun b!485240 () Bool)

(assert (=> b!485240 (= c!58374 (and ((_ is Cons!9328) (t!15565 l!956)) (bvsgt (_1!4642 (h!10184 (t!15565 l!956))) key!251)))))

(assert (=> b!485240 (= e!285714 e!285712)))

(declare-fun bm!31244 () Bool)

(assert (=> bm!31244 (= call!31246 call!31247)))

(assert (= (and d!77249 c!58373) b!485232))

(assert (= (and d!77249 (not c!58373)) b!485234))

(assert (= (and b!485234 c!58375) b!485235))

(assert (= (and b!485234 (not c!58375)) b!485240))

(assert (= (and b!485240 c!58374) b!485239))

(assert (= (and b!485240 (not c!58374)) b!485236))

(assert (= (or b!485239 b!485236) bm!31243))

(assert (= (or b!485235 bm!31243) bm!31244))

(assert (= (or b!485232 bm!31244) bm!31242))

(assert (= (and bm!31242 c!58372) b!485233))

(assert (= (and bm!31242 (not c!58372)) b!485237))

(assert (= (and d!77249 res!289027) b!485231))

(assert (= (and b!485231 res!289026) b!485238))

(declare-fun m!465401 () Bool)

(assert (=> b!485233 m!465401))

(declare-fun m!465403 () Bool)

(assert (=> b!485238 m!465403))

(declare-fun m!465405 () Bool)

(assert (=> d!77249 m!465405))

(assert (=> d!77249 m!465355))

(declare-fun m!465407 () Bool)

(assert (=> bm!31242 m!465407))

(declare-fun m!465409 () Bool)

(assert (=> b!485231 m!465409))

(assert (=> b!485110 d!77249))

(declare-fun lt!219493 () Bool)

(declare-fun d!77251 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!216 (List!9332) (InoxSet tuple2!9264))

(assert (=> d!77251 (= lt!219493 (select (content!216 lt!219479) (tuple2!9265 key!251 value!166)))))

(declare-fun e!285720 () Bool)

(assert (=> d!77251 (= lt!219493 e!285720)))

(declare-fun res!289032 () Bool)

(assert (=> d!77251 (=> (not res!289032) (not e!285720))))

(assert (=> d!77251 (= res!289032 ((_ is Cons!9328) lt!219479))))

(assert (=> d!77251 (= (contains!2692 lt!219479 (tuple2!9265 key!251 value!166)) lt!219493)))

(declare-fun b!485245 () Bool)

(declare-fun e!285721 () Bool)

(assert (=> b!485245 (= e!285720 e!285721)))

(declare-fun res!289033 () Bool)

(assert (=> b!485245 (=> res!289033 e!285721)))

(assert (=> b!485245 (= res!289033 (= (h!10184 lt!219479) (tuple2!9265 key!251 value!166)))))

(declare-fun b!485246 () Bool)

(assert (=> b!485246 (= e!285721 (contains!2692 (t!15565 lt!219479) (tuple2!9265 key!251 value!166)))))

(assert (= (and d!77251 res!289032) b!485245))

(assert (= (and b!485245 (not res!289033)) b!485246))

(declare-fun m!465411 () Bool)

(assert (=> d!77251 m!465411))

(declare-fun m!465413 () Bool)

(assert (=> d!77251 m!465413))

(declare-fun m!465415 () Bool)

(assert (=> b!485246 m!465415))

(assert (=> b!485115 d!77251))

(declare-fun d!77253 () Bool)

(declare-fun res!289034 () Bool)

(declare-fun e!285722 () Bool)

(assert (=> d!77253 (=> res!289034 e!285722)))

(assert (=> d!77253 (= res!289034 (or ((_ is Nil!9329) (t!15565 l!956)) ((_ is Nil!9329) (t!15565 (t!15565 l!956)))))))

(assert (=> d!77253 (= (isStrictlySorted!432 (t!15565 l!956)) e!285722)))

(declare-fun b!485247 () Bool)

(declare-fun e!285723 () Bool)

(assert (=> b!485247 (= e!285722 e!285723)))

(declare-fun res!289035 () Bool)

(assert (=> b!485247 (=> (not res!289035) (not e!285723))))

(assert (=> b!485247 (= res!289035 (bvslt (_1!4642 (h!10184 (t!15565 l!956))) (_1!4642 (h!10184 (t!15565 (t!15565 l!956))))))))

(declare-fun b!485248 () Bool)

(assert (=> b!485248 (= e!285723 (isStrictlySorted!432 (t!15565 (t!15565 l!956))))))

(assert (= (and d!77253 (not res!289034)) b!485247))

(assert (= (and b!485247 res!289035) b!485248))

(declare-fun m!465417 () Bool)

(assert (=> b!485248 m!465417))

(assert (=> b!485123 d!77253))

(declare-fun b!485249 () Bool)

(declare-fun e!285724 () Bool)

(declare-fun tp!43616 () Bool)

(assert (=> b!485249 (= e!285724 (and tp_is_empty!13971 tp!43616))))

(assert (=> b!485154 (= tp!43609 e!285724)))

(assert (= (and b!485154 ((_ is Cons!9328) (t!15565 (t!15565 l!956)))) b!485249))

(check-sat (not b!485238) (not b!485233) (not b!485249) (not d!77251) (not b!485222) (not b!485246) (not b!485228) (not d!77249) (not b!485230) (not b!485231) (not b!485226) tp_is_empty!13971 (not b!485224) (not bm!31242) (not b!485248))
(check-sat)
