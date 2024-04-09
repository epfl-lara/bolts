; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88768 () Bool)

(assert start!88768)

(declare-fun b!1019117 () Bool)

(declare-fun res!683355 () Bool)

(declare-fun e!573550 () Bool)

(assert (=> b!1019117 (=> (not res!683355) (not e!573550))))

(declare-datatypes ((B!1684 0))(
  ( (B!1685 (val!11926 Int)) )
))
(declare-datatypes ((tuple2!15488 0))(
  ( (tuple2!15489 (_1!7754 (_ BitVec 64)) (_2!7754 B!1684)) )
))
(declare-datatypes ((List!21728 0))(
  ( (Nil!21725) (Cons!21724 (h!22922 tuple2!15488) (t!30740 List!21728)) )
))
(declare-fun l!996 () List!21728)

(declare-fun isStrictlySorted!675 (List!21728) Bool)

(assert (=> b!1019117 (= res!683355 (isStrictlySorted!675 (t!30740 l!996)))))

(declare-fun b!1019118 () Bool)

(declare-fun e!573549 () Bool)

(declare-fun tp_is_empty!23751 () Bool)

(declare-fun tp!71135 () Bool)

(assert (=> b!1019118 (= e!573549 (and tp_is_empty!23751 tp!71135))))

(declare-fun b!1019120 () Bool)

(declare-fun e!573548 () Bool)

(assert (=> b!1019120 (= e!573548 e!573550)))

(declare-fun res!683354 () Bool)

(assert (=> b!1019120 (=> (not res!683354) (not e!573550))))

(declare-fun key!261 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1019120 (= res!683354 (and ((_ is Cons!21724) l!996) (bvslt (_1!7754 (h!22922 l!996)) key!261)))))

(declare-fun lt!449613 () List!21728)

(declare-fun value!172 () B!1684)

(declare-fun insertStrictlySorted!357 (List!21728 (_ BitVec 64) B!1684) List!21728)

(assert (=> b!1019120 (= lt!449613 (insertStrictlySorted!357 l!996 key!261 value!172))))

(declare-fun b!1019121 () Bool)

(declare-fun res!683358 () Bool)

(assert (=> b!1019121 (=> (not res!683358) (not e!573548))))

(declare-fun containsKey!540 (List!21728 (_ BitVec 64)) Bool)

(assert (=> b!1019121 (= res!683358 (containsKey!540 l!996 key!261))))

(declare-fun b!1019122 () Bool)

(declare-fun res!683357 () Bool)

(assert (=> b!1019122 (=> (not res!683357) (not e!573550))))

(assert (=> b!1019122 (= res!683357 (containsKey!540 (t!30740 l!996) key!261))))

(declare-fun res!683356 () Bool)

(assert (=> start!88768 (=> (not res!683356) (not e!573548))))

(assert (=> start!88768 (= res!683356 (isStrictlySorted!675 l!996))))

(assert (=> start!88768 e!573548))

(assert (=> start!88768 e!573549))

(assert (=> start!88768 true))

(assert (=> start!88768 tp_is_empty!23751))

(declare-fun b!1019119 () Bool)

(declare-fun ListPrimitiveSize!137 (List!21728) Int)

(assert (=> b!1019119 (= e!573550 (>= (ListPrimitiveSize!137 (t!30740 l!996)) (ListPrimitiveSize!137 l!996)))))

(assert (= (and start!88768 res!683356) b!1019121))

(assert (= (and b!1019121 res!683358) b!1019120))

(assert (= (and b!1019120 res!683354) b!1019117))

(assert (= (and b!1019117 res!683355) b!1019122))

(assert (= (and b!1019122 res!683357) b!1019119))

(assert (= (and start!88768 ((_ is Cons!21724) l!996)) b!1019118))

(declare-fun m!939739 () Bool)

(assert (=> b!1019117 m!939739))

(declare-fun m!939741 () Bool)

(assert (=> b!1019121 m!939741))

(declare-fun m!939743 () Bool)

(assert (=> b!1019119 m!939743))

(declare-fun m!939745 () Bool)

(assert (=> b!1019119 m!939745))

(declare-fun m!939747 () Bool)

(assert (=> b!1019120 m!939747))

(declare-fun m!939749 () Bool)

(assert (=> start!88768 m!939749))

(declare-fun m!939751 () Bool)

(assert (=> b!1019122 m!939751))

(check-sat (not b!1019118) (not b!1019122) (not b!1019121) (not start!88768) tp_is_empty!23751 (not b!1019119) (not b!1019117) (not b!1019120))
(check-sat)
(get-model)

(declare-fun d!121975 () Bool)

(declare-fun res!683378 () Bool)

(declare-fun e!573564 () Bool)

(assert (=> d!121975 (=> res!683378 e!573564)))

(assert (=> d!121975 (= res!683378 (or ((_ is Nil!21725) (t!30740 l!996)) ((_ is Nil!21725) (t!30740 (t!30740 l!996)))))))

(assert (=> d!121975 (= (isStrictlySorted!675 (t!30740 l!996)) e!573564)))

(declare-fun b!1019145 () Bool)

(declare-fun e!573565 () Bool)

(assert (=> b!1019145 (= e!573564 e!573565)))

(declare-fun res!683379 () Bool)

(assert (=> b!1019145 (=> (not res!683379) (not e!573565))))

(assert (=> b!1019145 (= res!683379 (bvslt (_1!7754 (h!22922 (t!30740 l!996))) (_1!7754 (h!22922 (t!30740 (t!30740 l!996))))))))

(declare-fun b!1019146 () Bool)

(assert (=> b!1019146 (= e!573565 (isStrictlySorted!675 (t!30740 (t!30740 l!996))))))

(assert (= (and d!121975 (not res!683378)) b!1019145))

(assert (= (and b!1019145 res!683379) b!1019146))

(declare-fun m!939767 () Bool)

(assert (=> b!1019146 m!939767))

(assert (=> b!1019117 d!121975))

(declare-fun d!121979 () Bool)

(declare-fun lt!449619 () Int)

(assert (=> d!121979 (>= lt!449619 0)))

(declare-fun e!573572 () Int)

(assert (=> d!121979 (= lt!449619 e!573572)))

(declare-fun c!103225 () Bool)

(assert (=> d!121979 (= c!103225 ((_ is Nil!21725) (t!30740 l!996)))))

(assert (=> d!121979 (= (ListPrimitiveSize!137 (t!30740 l!996)) lt!449619)))

(declare-fun b!1019155 () Bool)

(assert (=> b!1019155 (= e!573572 0)))

(declare-fun b!1019156 () Bool)

(assert (=> b!1019156 (= e!573572 (+ 1 (ListPrimitiveSize!137 (t!30740 (t!30740 l!996)))))))

(assert (= (and d!121979 c!103225) b!1019155))

(assert (= (and d!121979 (not c!103225)) b!1019156))

(declare-fun m!939769 () Bool)

(assert (=> b!1019156 m!939769))

(assert (=> b!1019119 d!121979))

(declare-fun d!121981 () Bool)

(declare-fun lt!449620 () Int)

(assert (=> d!121981 (>= lt!449620 0)))

(declare-fun e!573575 () Int)

(assert (=> d!121981 (= lt!449620 e!573575)))

(declare-fun c!103226 () Bool)

(assert (=> d!121981 (= c!103226 ((_ is Nil!21725) l!996))))

(assert (=> d!121981 (= (ListPrimitiveSize!137 l!996) lt!449620)))

(declare-fun b!1019159 () Bool)

(assert (=> b!1019159 (= e!573575 0)))

(declare-fun b!1019160 () Bool)

(assert (=> b!1019160 (= e!573575 (+ 1 (ListPrimitiveSize!137 (t!30740 l!996))))))

(assert (= (and d!121981 c!103226) b!1019159))

(assert (= (and d!121981 (not c!103226)) b!1019160))

(assert (=> b!1019160 m!939743))

(assert (=> b!1019119 d!121981))

(declare-fun b!1019225 () Bool)

(declare-fun e!573612 () List!21728)

(declare-fun call!43072 () List!21728)

(assert (=> b!1019225 (= e!573612 call!43072)))

(declare-fun b!1019226 () Bool)

(declare-fun lt!449627 () List!21728)

(declare-fun e!573614 () Bool)

(declare-fun contains!5919 (List!21728 tuple2!15488) Bool)

(assert (=> b!1019226 (= e!573614 (contains!5919 lt!449627 (tuple2!15489 key!261 value!172)))))

(declare-fun d!121985 () Bool)

(assert (=> d!121985 e!573614))

(declare-fun res!683402 () Bool)

(assert (=> d!121985 (=> (not res!683402) (not e!573614))))

(assert (=> d!121985 (= res!683402 (isStrictlySorted!675 lt!449627))))

(declare-fun e!573616 () List!21728)

(assert (=> d!121985 (= lt!449627 e!573616)))

(declare-fun c!103253 () Bool)

(assert (=> d!121985 (= c!103253 (and ((_ is Cons!21724) l!996) (bvslt (_1!7754 (h!22922 l!996)) key!261)))))

(assert (=> d!121985 (isStrictlySorted!675 l!996)))

(assert (=> d!121985 (= (insertStrictlySorted!357 l!996 key!261 value!172) lt!449627)))

(declare-fun b!1019227 () Bool)

(declare-fun call!43071 () List!21728)

(assert (=> b!1019227 (= e!573616 call!43071)))

(declare-fun b!1019228 () Bool)

(declare-fun c!103251 () Bool)

(assert (=> b!1019228 (= c!103251 (and ((_ is Cons!21724) l!996) (bvsgt (_1!7754 (h!22922 l!996)) key!261)))))

(declare-fun e!573613 () List!21728)

(assert (=> b!1019228 (= e!573613 e!573612)))

(declare-fun e!573615 () List!21728)

(declare-fun b!1019229 () Bool)

(assert (=> b!1019229 (= e!573615 (insertStrictlySorted!357 (t!30740 l!996) key!261 value!172))))

(declare-fun bm!43067 () Bool)

(declare-fun call!43070 () List!21728)

(assert (=> bm!43067 (= call!43072 call!43070)))

(declare-fun b!1019230 () Bool)

(assert (=> b!1019230 (= e!573613 call!43070)))

(declare-fun b!1019231 () Bool)

(declare-fun res!683403 () Bool)

(assert (=> b!1019231 (=> (not res!683403) (not e!573614))))

(assert (=> b!1019231 (= res!683403 (containsKey!540 lt!449627 key!261))))

(declare-fun bm!43068 () Bool)

(assert (=> bm!43068 (= call!43070 call!43071)))

(declare-fun b!1019232 () Bool)

(assert (=> b!1019232 (= e!573616 e!573613)))

(declare-fun c!103252 () Bool)

(assert (=> b!1019232 (= c!103252 (and ((_ is Cons!21724) l!996) (= (_1!7754 (h!22922 l!996)) key!261)))))

(declare-fun b!1019233 () Bool)

(assert (=> b!1019233 (= e!573612 call!43072)))

(declare-fun b!1019234 () Bool)

(assert (=> b!1019234 (= e!573615 (ite c!103252 (t!30740 l!996) (ite c!103251 (Cons!21724 (h!22922 l!996) (t!30740 l!996)) Nil!21725)))))

(declare-fun bm!43069 () Bool)

(declare-fun $colon$colon!589 (List!21728 tuple2!15488) List!21728)

(assert (=> bm!43069 (= call!43071 ($colon$colon!589 e!573615 (ite c!103253 (h!22922 l!996) (tuple2!15489 key!261 value!172))))))

(declare-fun c!103254 () Bool)

(assert (=> bm!43069 (= c!103254 c!103253)))

(assert (= (and d!121985 c!103253) b!1019227))

(assert (= (and d!121985 (not c!103253)) b!1019232))

(assert (= (and b!1019232 c!103252) b!1019230))

(assert (= (and b!1019232 (not c!103252)) b!1019228))

(assert (= (and b!1019228 c!103251) b!1019225))

(assert (= (and b!1019228 (not c!103251)) b!1019233))

(assert (= (or b!1019225 b!1019233) bm!43067))

(assert (= (or b!1019230 bm!43067) bm!43068))

(assert (= (or b!1019227 bm!43068) bm!43069))

(assert (= (and bm!43069 c!103254) b!1019229))

(assert (= (and bm!43069 (not c!103254)) b!1019234))

(assert (= (and d!121985 res!683402) b!1019231))

(assert (= (and b!1019231 res!683403) b!1019226))

(declare-fun m!939775 () Bool)

(assert (=> b!1019226 m!939775))

(declare-fun m!939777 () Bool)

(assert (=> d!121985 m!939777))

(assert (=> d!121985 m!939749))

(declare-fun m!939779 () Bool)

(assert (=> b!1019231 m!939779))

(declare-fun m!939781 () Bool)

(assert (=> bm!43069 m!939781))

(declare-fun m!939783 () Bool)

(assert (=> b!1019229 m!939783))

(assert (=> b!1019120 d!121985))

(declare-fun d!121993 () Bool)

(declare-fun res!683410 () Bool)

(declare-fun e!573624 () Bool)

(assert (=> d!121993 (=> res!683410 e!573624)))

(assert (=> d!121993 (= res!683410 (or ((_ is Nil!21725) l!996) ((_ is Nil!21725) (t!30740 l!996))))))

(assert (=> d!121993 (= (isStrictlySorted!675 l!996) e!573624)))

(declare-fun b!1019249 () Bool)

(declare-fun e!573625 () Bool)

(assert (=> b!1019249 (= e!573624 e!573625)))

(declare-fun res!683411 () Bool)

(assert (=> b!1019249 (=> (not res!683411) (not e!573625))))

(assert (=> b!1019249 (= res!683411 (bvslt (_1!7754 (h!22922 l!996)) (_1!7754 (h!22922 (t!30740 l!996)))))))

(declare-fun b!1019250 () Bool)

(assert (=> b!1019250 (= e!573625 (isStrictlySorted!675 (t!30740 l!996)))))

(assert (= (and d!121993 (not res!683410)) b!1019249))

(assert (= (and b!1019249 res!683411) b!1019250))

(assert (=> b!1019250 m!939739))

(assert (=> start!88768 d!121993))

(declare-fun d!121995 () Bool)

(declare-fun res!683418 () Bool)

(declare-fun e!573639 () Bool)

(assert (=> d!121995 (=> res!683418 e!573639)))

(assert (=> d!121995 (= res!683418 (and ((_ is Cons!21724) (t!30740 l!996)) (= (_1!7754 (h!22922 (t!30740 l!996))) key!261)))))

(assert (=> d!121995 (= (containsKey!540 (t!30740 l!996) key!261) e!573639)))

(declare-fun b!1019273 () Bool)

(declare-fun e!573640 () Bool)

(assert (=> b!1019273 (= e!573639 e!573640)))

(declare-fun res!683419 () Bool)

(assert (=> b!1019273 (=> (not res!683419) (not e!573640))))

(assert (=> b!1019273 (= res!683419 (and (or (not ((_ is Cons!21724) (t!30740 l!996))) (bvsle (_1!7754 (h!22922 (t!30740 l!996))) key!261)) ((_ is Cons!21724) (t!30740 l!996)) (bvslt (_1!7754 (h!22922 (t!30740 l!996))) key!261)))))

(declare-fun b!1019274 () Bool)

(assert (=> b!1019274 (= e!573640 (containsKey!540 (t!30740 (t!30740 l!996)) key!261))))

(assert (= (and d!121995 (not res!683418)) b!1019273))

(assert (= (and b!1019273 res!683419) b!1019274))

(declare-fun m!939807 () Bool)

(assert (=> b!1019274 m!939807))

(assert (=> b!1019122 d!121995))

(declare-fun d!122005 () Bool)

(declare-fun res!683420 () Bool)

(declare-fun e!573641 () Bool)

(assert (=> d!122005 (=> res!683420 e!573641)))

(assert (=> d!122005 (= res!683420 (and ((_ is Cons!21724) l!996) (= (_1!7754 (h!22922 l!996)) key!261)))))

(assert (=> d!122005 (= (containsKey!540 l!996 key!261) e!573641)))

(declare-fun b!1019275 () Bool)

(declare-fun e!573642 () Bool)

(assert (=> b!1019275 (= e!573641 e!573642)))

(declare-fun res!683421 () Bool)

(assert (=> b!1019275 (=> (not res!683421) (not e!573642))))

(assert (=> b!1019275 (= res!683421 (and (or (not ((_ is Cons!21724) l!996)) (bvsle (_1!7754 (h!22922 l!996)) key!261)) ((_ is Cons!21724) l!996) (bvslt (_1!7754 (h!22922 l!996)) key!261)))))

(declare-fun b!1019276 () Bool)

(assert (=> b!1019276 (= e!573642 (containsKey!540 (t!30740 l!996) key!261))))

(assert (= (and d!122005 (not res!683420)) b!1019275))

(assert (= (and b!1019275 res!683421) b!1019276))

(assert (=> b!1019276 m!939751))

(assert (=> b!1019121 d!122005))

(declare-fun b!1019285 () Bool)

(declare-fun e!573647 () Bool)

(declare-fun tp!71141 () Bool)

(assert (=> b!1019285 (= e!573647 (and tp_is_empty!23751 tp!71141))))

(assert (=> b!1019118 (= tp!71135 e!573647)))

(assert (= (and b!1019118 ((_ is Cons!21724) (t!30740 l!996))) b!1019285))

(check-sat (not b!1019231) (not b!1019226) (not b!1019274) (not b!1019250) (not b!1019276) (not b!1019160) (not b!1019229) tp_is_empty!23751 (not b!1019156) (not d!121985) (not b!1019146) (not b!1019285) (not bm!43069))
(check-sat)
