; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88744 () Bool)

(assert start!88744)

(declare-fun res!683249 () Bool)

(declare-fun e!573421 () Bool)

(assert (=> start!88744 (=> (not res!683249) (not e!573421))))

(declare-datatypes ((B!1678 0))(
  ( (B!1679 (val!11923 Int)) )
))
(declare-datatypes ((tuple2!15482 0))(
  ( (tuple2!15483 (_1!7751 (_ BitVec 64)) (_2!7751 B!1678)) )
))
(declare-datatypes ((List!21725 0))(
  ( (Nil!21722) (Cons!21721 (h!22919 tuple2!15482) (t!30737 List!21725)) )
))
(declare-fun l!996 () List!21725)

(declare-fun isStrictlySorted!672 (List!21725) Bool)

(assert (=> start!88744 (= res!683249 (isStrictlySorted!672 l!996))))

(assert (=> start!88744 e!573421))

(declare-fun e!573419 () Bool)

(assert (=> start!88744 e!573419))

(assert (=> start!88744 true))

(declare-fun tp_is_empty!23745 () Bool)

(assert (=> start!88744 tp_is_empty!23745))

(declare-fun b!1018914 () Bool)

(declare-fun e!573420 () Bool)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!537 (List!21725 (_ BitVec 64)) Bool)

(assert (=> b!1018914 (= e!573420 (not (containsKey!537 (t!30737 l!996) key!261)))))

(declare-fun b!1018915 () Bool)

(declare-fun tp!71117 () Bool)

(assert (=> b!1018915 (= e!573419 (and tp_is_empty!23745 tp!71117))))

(declare-fun b!1018916 () Bool)

(declare-fun res!683250 () Bool)

(assert (=> b!1018916 (=> (not res!683250) (not e!573420))))

(assert (=> b!1018916 (= res!683250 (isStrictlySorted!672 (t!30737 l!996)))))

(declare-fun b!1018917 () Bool)

(assert (=> b!1018917 (= e!573421 e!573420)))

(declare-fun res!683248 () Bool)

(assert (=> b!1018917 (=> (not res!683248) (not e!573420))))

(get-info :version)

(assert (=> b!1018917 (= res!683248 (and ((_ is Cons!21721) l!996) (bvslt (_1!7751 (h!22919 l!996)) key!261)))))

(declare-fun value!172 () B!1678)

(declare-fun lt!449595 () List!21725)

(declare-fun insertStrictlySorted!354 (List!21725 (_ BitVec 64) B!1678) List!21725)

(assert (=> b!1018917 (= lt!449595 (insertStrictlySorted!354 l!996 key!261 value!172))))

(declare-fun b!1018918 () Bool)

(declare-fun res!683247 () Bool)

(assert (=> b!1018918 (=> (not res!683247) (not e!573421))))

(assert (=> b!1018918 (= res!683247 (containsKey!537 l!996 key!261))))

(assert (= (and start!88744 res!683249) b!1018918))

(assert (= (and b!1018918 res!683247) b!1018917))

(assert (= (and b!1018917 res!683248) b!1018916))

(assert (= (and b!1018916 res!683250) b!1018914))

(assert (= (and start!88744 ((_ is Cons!21721) l!996)) b!1018915))

(declare-fun m!939663 () Bool)

(assert (=> b!1018914 m!939663))

(declare-fun m!939665 () Bool)

(assert (=> b!1018917 m!939665))

(declare-fun m!939667 () Bool)

(assert (=> start!88744 m!939667))

(declare-fun m!939669 () Bool)

(assert (=> b!1018916 m!939669))

(declare-fun m!939671 () Bool)

(assert (=> b!1018918 m!939671))

(check-sat (not b!1018916) (not b!1018918) (not start!88744) (not b!1018914) (not b!1018915) (not b!1018917) tp_is_empty!23745)
(check-sat)
(get-model)

(declare-fun d!121943 () Bool)

(declare-fun res!683267 () Bool)

(declare-fun e!573435 () Bool)

(assert (=> d!121943 (=> res!683267 e!573435)))

(assert (=> d!121943 (= res!683267 (or ((_ is Nil!21722) l!996) ((_ is Nil!21722) (t!30737 l!996))))))

(assert (=> d!121943 (= (isStrictlySorted!672 l!996) e!573435)))

(declare-fun b!1018938 () Bool)

(declare-fun e!573436 () Bool)

(assert (=> b!1018938 (= e!573435 e!573436)))

(declare-fun res!683268 () Bool)

(assert (=> b!1018938 (=> (not res!683268) (not e!573436))))

(assert (=> b!1018938 (= res!683268 (bvslt (_1!7751 (h!22919 l!996)) (_1!7751 (h!22919 (t!30737 l!996)))))))

(declare-fun b!1018939 () Bool)

(assert (=> b!1018939 (= e!573436 (isStrictlySorted!672 (t!30737 l!996)))))

(assert (= (and d!121943 (not res!683267)) b!1018938))

(assert (= (and b!1018938 res!683268) b!1018939))

(assert (=> b!1018939 m!939669))

(assert (=> start!88744 d!121943))

(declare-fun d!121947 () Bool)

(declare-fun res!683269 () Bool)

(declare-fun e!573437 () Bool)

(assert (=> d!121947 (=> res!683269 e!573437)))

(assert (=> d!121947 (= res!683269 (or ((_ is Nil!21722) (t!30737 l!996)) ((_ is Nil!21722) (t!30737 (t!30737 l!996)))))))

(assert (=> d!121947 (= (isStrictlySorted!672 (t!30737 l!996)) e!573437)))

(declare-fun b!1018940 () Bool)

(declare-fun e!573438 () Bool)

(assert (=> b!1018940 (= e!573437 e!573438)))

(declare-fun res!683270 () Bool)

(assert (=> b!1018940 (=> (not res!683270) (not e!573438))))

(assert (=> b!1018940 (= res!683270 (bvslt (_1!7751 (h!22919 (t!30737 l!996))) (_1!7751 (h!22919 (t!30737 (t!30737 l!996))))))))

(declare-fun b!1018941 () Bool)

(assert (=> b!1018941 (= e!573438 (isStrictlySorted!672 (t!30737 (t!30737 l!996))))))

(assert (= (and d!121947 (not res!683269)) b!1018940))

(assert (= (and b!1018940 res!683270) b!1018941))

(declare-fun m!939683 () Bool)

(assert (=> b!1018941 m!939683))

(assert (=> b!1018916 d!121947))

(declare-fun d!121949 () Bool)

(declare-fun res!683281 () Bool)

(declare-fun e!573449 () Bool)

(assert (=> d!121949 (=> res!683281 e!573449)))

(assert (=> d!121949 (= res!683281 (and ((_ is Cons!21721) l!996) (= (_1!7751 (h!22919 l!996)) key!261)))))

(assert (=> d!121949 (= (containsKey!537 l!996 key!261) e!573449)))

(declare-fun b!1018952 () Bool)

(declare-fun e!573450 () Bool)

(assert (=> b!1018952 (= e!573449 e!573450)))

(declare-fun res!683282 () Bool)

(assert (=> b!1018952 (=> (not res!683282) (not e!573450))))

(assert (=> b!1018952 (= res!683282 (and (or (not ((_ is Cons!21721) l!996)) (bvsle (_1!7751 (h!22919 l!996)) key!261)) ((_ is Cons!21721) l!996) (bvslt (_1!7751 (h!22919 l!996)) key!261)))))

(declare-fun b!1018953 () Bool)

(assert (=> b!1018953 (= e!573450 (containsKey!537 (t!30737 l!996) key!261))))

(assert (= (and d!121949 (not res!683281)) b!1018952))

(assert (= (and b!1018952 res!683282) b!1018953))

(assert (=> b!1018953 m!939663))

(assert (=> b!1018918 d!121949))

(declare-fun b!1019034 () Bool)

(declare-fun e!573495 () List!21725)

(declare-fun call!43050 () List!21725)

(assert (=> b!1019034 (= e!573495 call!43050)))

(declare-fun e!573494 () List!21725)

(declare-fun b!1019035 () Bool)

(assert (=> b!1019035 (= e!573494 (insertStrictlySorted!354 (t!30737 l!996) key!261 value!172))))

(declare-fun bm!43046 () Bool)

(declare-fun call!43051 () List!21725)

(declare-fun c!103219 () Bool)

(declare-fun $colon$colon!586 (List!21725 tuple2!15482) List!21725)

(assert (=> bm!43046 (= call!43051 ($colon$colon!586 e!573494 (ite c!103219 (h!22919 l!996) (tuple2!15483 key!261 value!172))))))

(declare-fun c!103222 () Bool)

(assert (=> bm!43046 (= c!103222 c!103219)))

(declare-fun d!121955 () Bool)

(declare-fun e!573493 () Bool)

(assert (=> d!121955 e!573493))

(declare-fun res!683299 () Bool)

(assert (=> d!121955 (=> (not res!683299) (not e!573493))))

(declare-fun lt!449607 () List!21725)

(assert (=> d!121955 (= res!683299 (isStrictlySorted!672 lt!449607))))

(declare-fun e!573492 () List!21725)

(assert (=> d!121955 (= lt!449607 e!573492)))

(assert (=> d!121955 (= c!103219 (and ((_ is Cons!21721) l!996) (bvslt (_1!7751 (h!22919 l!996)) key!261)))))

(assert (=> d!121955 (isStrictlySorted!672 l!996)))

(assert (=> d!121955 (= (insertStrictlySorted!354 l!996 key!261 value!172) lt!449607)))

(declare-fun b!1019036 () Bool)

(assert (=> b!1019036 (= e!573492 call!43051)))

(declare-fun b!1019037 () Bool)

(declare-fun e!573491 () List!21725)

(declare-fun call!43049 () List!21725)

(assert (=> b!1019037 (= e!573491 call!43049)))

(declare-fun b!1019038 () Bool)

(declare-fun c!103221 () Bool)

(declare-fun c!103220 () Bool)

(assert (=> b!1019038 (= e!573494 (ite c!103221 (t!30737 l!996) (ite c!103220 (Cons!21721 (h!22919 l!996) (t!30737 l!996)) Nil!21722)))))

(declare-fun b!1019039 () Bool)

(assert (=> b!1019039 (= e!573492 e!573495)))

(assert (=> b!1019039 (= c!103221 (and ((_ is Cons!21721) l!996) (= (_1!7751 (h!22919 l!996)) key!261)))))

(declare-fun bm!43047 () Bool)

(assert (=> bm!43047 (= call!43049 call!43050)))

(declare-fun b!1019040 () Bool)

(assert (=> b!1019040 (= c!103220 (and ((_ is Cons!21721) l!996) (bvsgt (_1!7751 (h!22919 l!996)) key!261)))))

(assert (=> b!1019040 (= e!573495 e!573491)))

(declare-fun b!1019041 () Bool)

(declare-fun res!683300 () Bool)

(assert (=> b!1019041 (=> (not res!683300) (not e!573493))))

(assert (=> b!1019041 (= res!683300 (containsKey!537 lt!449607 key!261))))

(declare-fun b!1019042 () Bool)

(assert (=> b!1019042 (= e!573491 call!43049)))

(declare-fun bm!43048 () Bool)

(assert (=> bm!43048 (= call!43050 call!43051)))

(declare-fun b!1019043 () Bool)

(declare-fun contains!5917 (List!21725 tuple2!15482) Bool)

(assert (=> b!1019043 (= e!573493 (contains!5917 lt!449607 (tuple2!15483 key!261 value!172)))))

(assert (= (and d!121955 c!103219) b!1019036))

(assert (= (and d!121955 (not c!103219)) b!1019039))

(assert (= (and b!1019039 c!103221) b!1019034))

(assert (= (and b!1019039 (not c!103221)) b!1019040))

(assert (= (and b!1019040 c!103220) b!1019037))

(assert (= (and b!1019040 (not c!103220)) b!1019042))

(assert (= (or b!1019037 b!1019042) bm!43047))

(assert (= (or b!1019034 bm!43047) bm!43048))

(assert (= (or b!1019036 bm!43048) bm!43046))

(assert (= (and bm!43046 c!103222) b!1019035))

(assert (= (and bm!43046 (not c!103222)) b!1019038))

(assert (= (and d!121955 res!683299) b!1019041))

(assert (= (and b!1019041 res!683300) b!1019043))

(declare-fun m!939705 () Bool)

(assert (=> bm!43046 m!939705))

(declare-fun m!939707 () Bool)

(assert (=> d!121955 m!939707))

(assert (=> d!121955 m!939667))

(declare-fun m!939709 () Bool)

(assert (=> b!1019043 m!939709))

(declare-fun m!939711 () Bool)

(assert (=> b!1019041 m!939711))

(declare-fun m!939713 () Bool)

(assert (=> b!1019035 m!939713))

(assert (=> b!1018917 d!121955))

(declare-fun d!121961 () Bool)

(declare-fun res!683303 () Bool)

(declare-fun e!573498 () Bool)

(assert (=> d!121961 (=> res!683303 e!573498)))

(assert (=> d!121961 (= res!683303 (and ((_ is Cons!21721) (t!30737 l!996)) (= (_1!7751 (h!22919 (t!30737 l!996))) key!261)))))

(assert (=> d!121961 (= (containsKey!537 (t!30737 l!996) key!261) e!573498)))

(declare-fun b!1019044 () Bool)

(declare-fun e!573499 () Bool)

(assert (=> b!1019044 (= e!573498 e!573499)))

(declare-fun res!683304 () Bool)

(assert (=> b!1019044 (=> (not res!683304) (not e!573499))))

(assert (=> b!1019044 (= res!683304 (and (or (not ((_ is Cons!21721) (t!30737 l!996))) (bvsle (_1!7751 (h!22919 (t!30737 l!996))) key!261)) ((_ is Cons!21721) (t!30737 l!996)) (bvslt (_1!7751 (h!22919 (t!30737 l!996))) key!261)))))

(declare-fun b!1019045 () Bool)

(assert (=> b!1019045 (= e!573499 (containsKey!537 (t!30737 (t!30737 l!996)) key!261))))

(assert (= (and d!121961 (not res!683303)) b!1019044))

(assert (= (and b!1019044 res!683304) b!1019045))

(declare-fun m!939715 () Bool)

(assert (=> b!1019045 m!939715))

(assert (=> b!1018914 d!121961))

(declare-fun b!1019058 () Bool)

(declare-fun e!573508 () Bool)

(declare-fun tp!71123 () Bool)

(assert (=> b!1019058 (= e!573508 (and tp_is_empty!23745 tp!71123))))

(assert (=> b!1018915 (= tp!71117 e!573508)))

(assert (= (and b!1018915 ((_ is Cons!21721) (t!30737 l!996))) b!1019058))

(check-sat (not b!1019041) (not b!1018939) (not b!1019058) (not b!1019045) (not b!1019035) (not d!121955) (not bm!43046) (not b!1019043) (not b!1018953) (not b!1018941) tp_is_empty!23745)
(check-sat)
