; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43006 () Bool)

(assert start!43006)

(declare-fun b_free!12111 () Bool)

(declare-fun b_next!12111 () Bool)

(assert (=> start!43006 (= b_free!12111 (not b_next!12111))))

(declare-fun tp!42436 () Bool)

(declare-fun b_and!20841 () Bool)

(assert (=> start!43006 (= tp!42436 b_and!20841)))

(declare-fun b!477535 () Bool)

(declare-fun res!285073 () Bool)

(declare-fun e!280636 () Bool)

(assert (=> b!477535 (=> (not res!285073) (not e!280636))))

(declare-datatypes ((B!1060 0))(
  ( (B!1061 (val!6814 Int)) )
))
(declare-datatypes ((tuple2!8998 0))(
  ( (tuple2!8999 (_1!4509 (_ BitVec 64)) (_2!4509 B!1060)) )
))
(declare-datatypes ((List!9088 0))(
  ( (Nil!9085) (Cons!9084 (h!9940 tuple2!8998) (t!15261 List!9088)) )
))
(declare-datatypes ((ListLongMap!7925 0))(
  ( (ListLongMap!7926 (toList!3978 List!9088)) )
))
(declare-fun lm!215 () ListLongMap!7925)

(declare-fun isEmpty!615 (ListLongMap!7925) Bool)

(assert (=> b!477535 (= res!285073 (isEmpty!615 lm!215))))

(declare-fun res!285072 () Bool)

(declare-fun e!280637 () Bool)

(assert (=> start!43006 (=> (not res!285072) (not e!280637))))

(declare-fun p!166 () Int)

(declare-fun forall!201 (List!9088 Int) Bool)

(assert (=> start!43006 (= res!285072 (forall!201 (toList!3978 lm!215) p!166))))

(assert (=> start!43006 e!280637))

(declare-fun e!280635 () Bool)

(declare-fun inv!15504 (ListLongMap!7925) Bool)

(assert (=> start!43006 (and (inv!15504 lm!215) e!280635)))

(assert (=> start!43006 tp!42436))

(declare-fun tp_is_empty!13533 () Bool)

(assert (=> start!43006 tp_is_empty!13533))

(assert (=> start!43006 true))

(declare-fun b!477537 () Bool)

(declare-fun tp!42435 () Bool)

(assert (=> b!477537 (= e!280635 tp!42435)))

(declare-fun b!477536 () Bool)

(declare-fun lt!217540 () tuple2!8998)

(declare-fun +!1740 (ListLongMap!7925 tuple2!8998) ListLongMap!7925)

(assert (=> b!477536 (= e!280636 (not (forall!201 (toList!3978 (+!1740 lm!215 lt!217540)) p!166)))))

(declare-fun b!477534 () Bool)

(assert (=> b!477534 (= e!280637 e!280636)))

(declare-fun res!285071 () Bool)

(assert (=> b!477534 (=> (not res!285071) (not e!280636))))

(declare-fun dynLambda!947 (Int tuple2!8998) Bool)

(assert (=> b!477534 (= res!285071 (dynLambda!947 p!166 lt!217540))))

(declare-fun a!501 () (_ BitVec 64))

(declare-fun b!85 () B!1060)

(assert (=> b!477534 (= lt!217540 (tuple2!8999 a!501 b!85))))

(assert (= (and start!43006 res!285072) b!477534))

(assert (= (and b!477534 res!285071) b!477535))

(assert (= (and b!477535 res!285073) b!477536))

(assert (= start!43006 b!477537))

(declare-fun b_lambda!10739 () Bool)

(assert (=> (not b_lambda!10739) (not b!477534)))

(declare-fun t!15260 () Bool)

(declare-fun tb!4127 () Bool)

(assert (=> (and start!43006 (= p!166 p!166) t!15260) tb!4127))

(declare-fun result!7695 () Bool)

(assert (=> tb!4127 (= result!7695 true)))

(assert (=> b!477534 t!15260))

(declare-fun b_and!20843 () Bool)

(assert (= b_and!20841 (and (=> t!15260 result!7695) b_and!20843)))

(declare-fun m!460005 () Bool)

(assert (=> b!477535 m!460005))

(declare-fun m!460007 () Bool)

(assert (=> start!43006 m!460007))

(declare-fun m!460009 () Bool)

(assert (=> start!43006 m!460009))

(declare-fun m!460011 () Bool)

(assert (=> b!477536 m!460011))

(declare-fun m!460013 () Bool)

(assert (=> b!477536 m!460013))

(declare-fun m!460015 () Bool)

(assert (=> b!477534 m!460015))

(check-sat (not start!43006) tp_is_empty!13533 (not b_lambda!10739) (not b_next!12111) b_and!20843 (not b!477537) (not b!477535) (not b!477536))
(check-sat b_and!20843 (not b_next!12111))
(get-model)

(declare-fun b_lambda!10747 () Bool)

(assert (= b_lambda!10739 (or (and start!43006 b_free!12111) b_lambda!10747)))

(check-sat (not b_lambda!10747) (not start!43006) tp_is_empty!13533 (not b_next!12111) b_and!20843 (not b!477537) (not b!477535) (not b!477536))
(check-sat b_and!20843 (not b_next!12111))
(get-model)

(declare-fun d!76251 () Bool)

(declare-fun res!285099 () Bool)

(declare-fun e!280663 () Bool)

(assert (=> d!76251 (=> res!285099 e!280663)))

(get-info :version)

(assert (=> d!76251 (= res!285099 ((_ is Nil!9085) (toList!3978 lm!215)))))

(assert (=> d!76251 (= (forall!201 (toList!3978 lm!215) p!166) e!280663)))

(declare-fun b!477566 () Bool)

(declare-fun e!280664 () Bool)

(assert (=> b!477566 (= e!280663 e!280664)))

(declare-fun res!285100 () Bool)

(assert (=> b!477566 (=> (not res!285100) (not e!280664))))

(assert (=> b!477566 (= res!285100 (dynLambda!947 p!166 (h!9940 (toList!3978 lm!215))))))

(declare-fun b!477567 () Bool)

(assert (=> b!477567 (= e!280664 (forall!201 (t!15261 (toList!3978 lm!215)) p!166))))

(assert (= (and d!76251 (not res!285099)) b!477566))

(assert (= (and b!477566 res!285100) b!477567))

(declare-fun b_lambda!10753 () Bool)

(assert (=> (not b_lambda!10753) (not b!477566)))

(declare-fun t!15270 () Bool)

(declare-fun tb!4135 () Bool)

(assert (=> (and start!43006 (= p!166 p!166) t!15270) tb!4135))

(declare-fun result!7703 () Bool)

(assert (=> tb!4135 (= result!7703 true)))

(assert (=> b!477566 t!15270))

(declare-fun b_and!20853 () Bool)

(assert (= b_and!20843 (and (=> t!15270 result!7703) b_and!20853)))

(declare-fun m!460041 () Bool)

(assert (=> b!477566 m!460041))

(declare-fun m!460043 () Bool)

(assert (=> b!477567 m!460043))

(assert (=> start!43006 d!76251))

(declare-fun d!76259 () Bool)

(declare-fun isStrictlySorted!387 (List!9088) Bool)

(assert (=> d!76259 (= (inv!15504 lm!215) (isStrictlySorted!387 (toList!3978 lm!215)))))

(declare-fun bs!15186 () Bool)

(assert (= bs!15186 d!76259))

(declare-fun m!460053 () Bool)

(assert (=> bs!15186 m!460053))

(assert (=> start!43006 d!76259))

(declare-fun d!76267 () Bool)

(declare-fun isEmpty!618 (List!9088) Bool)

(assert (=> d!76267 (= (isEmpty!615 lm!215) (isEmpty!618 (toList!3978 lm!215)))))

(declare-fun bs!15187 () Bool)

(assert (= bs!15187 d!76267))

(declare-fun m!460059 () Bool)

(assert (=> bs!15187 m!460059))

(assert (=> b!477535 d!76267))

(declare-fun d!76271 () Bool)

(declare-fun res!285105 () Bool)

(declare-fun e!280669 () Bool)

(assert (=> d!76271 (=> res!285105 e!280669)))

(assert (=> d!76271 (= res!285105 ((_ is Nil!9085) (toList!3978 (+!1740 lm!215 lt!217540))))))

(assert (=> d!76271 (= (forall!201 (toList!3978 (+!1740 lm!215 lt!217540)) p!166) e!280669)))

(declare-fun b!477572 () Bool)

(declare-fun e!280670 () Bool)

(assert (=> b!477572 (= e!280669 e!280670)))

(declare-fun res!285106 () Bool)

(assert (=> b!477572 (=> (not res!285106) (not e!280670))))

(assert (=> b!477572 (= res!285106 (dynLambda!947 p!166 (h!9940 (toList!3978 (+!1740 lm!215 lt!217540)))))))

(declare-fun b!477573 () Bool)

(assert (=> b!477573 (= e!280670 (forall!201 (t!15261 (toList!3978 (+!1740 lm!215 lt!217540))) p!166))))

(assert (= (and d!76271 (not res!285105)) b!477572))

(assert (= (and b!477572 res!285106) b!477573))

(declare-fun b_lambda!10759 () Bool)

(assert (=> (not b_lambda!10759) (not b!477572)))

(declare-fun t!15276 () Bool)

(declare-fun tb!4141 () Bool)

(assert (=> (and start!43006 (= p!166 p!166) t!15276) tb!4141))

(declare-fun result!7709 () Bool)

(assert (=> tb!4141 (= result!7709 true)))

(assert (=> b!477572 t!15276))

(declare-fun b_and!20859 () Bool)

(assert (= b_and!20853 (and (=> t!15276 result!7709) b_and!20859)))

(declare-fun m!460061 () Bool)

(assert (=> b!477572 m!460061))

(declare-fun m!460063 () Bool)

(assert (=> b!477573 m!460063))

(assert (=> b!477536 d!76271))

(declare-fun d!76273 () Bool)

(declare-fun e!280685 () Bool)

(assert (=> d!76273 e!280685))

(declare-fun res!285124 () Bool)

(assert (=> d!76273 (=> (not res!285124) (not e!280685))))

(declare-fun lt!217579 () ListLongMap!7925)

(declare-fun contains!2578 (ListLongMap!7925 (_ BitVec 64)) Bool)

(assert (=> d!76273 (= res!285124 (contains!2578 lt!217579 (_1!4509 lt!217540)))))

(declare-fun lt!217576 () List!9088)

(assert (=> d!76273 (= lt!217579 (ListLongMap!7926 lt!217576))))

(declare-datatypes ((Unit!14019 0))(
  ( (Unit!14020) )
))
(declare-fun lt!217578 () Unit!14019)

(declare-fun lt!217577 () Unit!14019)

(assert (=> d!76273 (= lt!217578 lt!217577)))

(declare-datatypes ((Option!395 0))(
  ( (Some!394 (v!9095 B!1060)) (None!393) )
))
(declare-fun getValueByKey!389 (List!9088 (_ BitVec 64)) Option!395)

(assert (=> d!76273 (= (getValueByKey!389 lt!217576 (_1!4509 lt!217540)) (Some!394 (_2!4509 lt!217540)))))

(declare-fun lemmaContainsTupThenGetReturnValue!212 (List!9088 (_ BitVec 64) B!1060) Unit!14019)

(assert (=> d!76273 (= lt!217577 (lemmaContainsTupThenGetReturnValue!212 lt!217576 (_1!4509 lt!217540) (_2!4509 lt!217540)))))

(declare-fun insertStrictlySorted!214 (List!9088 (_ BitVec 64) B!1060) List!9088)

(assert (=> d!76273 (= lt!217576 (insertStrictlySorted!214 (toList!3978 lm!215) (_1!4509 lt!217540) (_2!4509 lt!217540)))))

(assert (=> d!76273 (= (+!1740 lm!215 lt!217540) lt!217579)))

(declare-fun b!477600 () Bool)

(declare-fun res!285123 () Bool)

(assert (=> b!477600 (=> (not res!285123) (not e!280685))))

(assert (=> b!477600 (= res!285123 (= (getValueByKey!389 (toList!3978 lt!217579) (_1!4509 lt!217540)) (Some!394 (_2!4509 lt!217540))))))

(declare-fun b!477601 () Bool)

(declare-fun contains!2579 (List!9088 tuple2!8998) Bool)

(assert (=> b!477601 (= e!280685 (contains!2579 (toList!3978 lt!217579) lt!217540))))

(assert (= (and d!76273 res!285124) b!477600))

(assert (= (and b!477600 res!285123) b!477601))

(declare-fun m!460089 () Bool)

(assert (=> d!76273 m!460089))

(declare-fun m!460091 () Bool)

(assert (=> d!76273 m!460091))

(declare-fun m!460093 () Bool)

(assert (=> d!76273 m!460093))

(declare-fun m!460095 () Bool)

(assert (=> d!76273 m!460095))

(declare-fun m!460097 () Bool)

(assert (=> b!477600 m!460097))

(declare-fun m!460099 () Bool)

(assert (=> b!477601 m!460099))

(assert (=> b!477536 d!76273))

(declare-fun b!477606 () Bool)

(declare-fun e!280688 () Bool)

(declare-fun tp!42451 () Bool)

(assert (=> b!477606 (= e!280688 (and tp_is_empty!13533 tp!42451))))

(assert (=> b!477537 (= tp!42435 e!280688)))

(assert (= (and b!477537 ((_ is Cons!9084) (toList!3978 lm!215))) b!477606))

(declare-fun b_lambda!10769 () Bool)

(assert (= b_lambda!10753 (or (and start!43006 b_free!12111) b_lambda!10769)))

(declare-fun b_lambda!10771 () Bool)

(assert (= b_lambda!10759 (or (and start!43006 b_free!12111) b_lambda!10771)))

(check-sat (not b!477601) (not b!477573) (not b_lambda!10747) (not d!76267) (not b_lambda!10769) tp_is_empty!13533 (not b_next!12111) (not b!477606) (not b_lambda!10771) (not b!477567) b_and!20859 (not d!76273) (not d!76259) (not b!477600))
(check-sat b_and!20859 (not b_next!12111))
(get-model)

(declare-fun b!477618 () Bool)

(declare-fun e!280694 () Option!395)

(assert (=> b!477618 (= e!280694 None!393)))

(declare-fun b!477615 () Bool)

(declare-fun e!280693 () Option!395)

(assert (=> b!477615 (= e!280693 (Some!394 (_2!4509 (h!9940 (toList!3978 lt!217579)))))))

(declare-fun d!76275 () Bool)

(declare-fun c!57486 () Bool)

(assert (=> d!76275 (= c!57486 (and ((_ is Cons!9084) (toList!3978 lt!217579)) (= (_1!4509 (h!9940 (toList!3978 lt!217579))) (_1!4509 lt!217540))))))

(assert (=> d!76275 (= (getValueByKey!389 (toList!3978 lt!217579) (_1!4509 lt!217540)) e!280693)))

(declare-fun b!477616 () Bool)

(assert (=> b!477616 (= e!280693 e!280694)))

(declare-fun c!57487 () Bool)

(assert (=> b!477616 (= c!57487 (and ((_ is Cons!9084) (toList!3978 lt!217579)) (not (= (_1!4509 (h!9940 (toList!3978 lt!217579))) (_1!4509 lt!217540)))))))

(declare-fun b!477617 () Bool)

(assert (=> b!477617 (= e!280694 (getValueByKey!389 (t!15261 (toList!3978 lt!217579)) (_1!4509 lt!217540)))))

(assert (= (and d!76275 c!57486) b!477615))

(assert (= (and d!76275 (not c!57486)) b!477616))

(assert (= (and b!477616 c!57487) b!477617))

(assert (= (and b!477616 (not c!57487)) b!477618))

(declare-fun m!460101 () Bool)

(assert (=> b!477617 m!460101))

(assert (=> b!477600 d!76275))

(declare-fun d!76277 () Bool)

(declare-fun res!285125 () Bool)

(declare-fun e!280695 () Bool)

(assert (=> d!76277 (=> res!285125 e!280695)))

(assert (=> d!76277 (= res!285125 ((_ is Nil!9085) (t!15261 (toList!3978 (+!1740 lm!215 lt!217540)))))))

(assert (=> d!76277 (= (forall!201 (t!15261 (toList!3978 (+!1740 lm!215 lt!217540))) p!166) e!280695)))

(declare-fun b!477619 () Bool)

(declare-fun e!280696 () Bool)

(assert (=> b!477619 (= e!280695 e!280696)))

(declare-fun res!285126 () Bool)

(assert (=> b!477619 (=> (not res!285126) (not e!280696))))

(assert (=> b!477619 (= res!285126 (dynLambda!947 p!166 (h!9940 (t!15261 (toList!3978 (+!1740 lm!215 lt!217540))))))))

(declare-fun b!477620 () Bool)

(assert (=> b!477620 (= e!280696 (forall!201 (t!15261 (t!15261 (toList!3978 (+!1740 lm!215 lt!217540)))) p!166))))

(assert (= (and d!76277 (not res!285125)) b!477619))

(assert (= (and b!477619 res!285126) b!477620))

(declare-fun b_lambda!10773 () Bool)

(assert (=> (not b_lambda!10773) (not b!477619)))

(declare-fun t!15278 () Bool)

(declare-fun tb!4143 () Bool)

(assert (=> (and start!43006 (= p!166 p!166) t!15278) tb!4143))

(declare-fun result!7717 () Bool)

(assert (=> tb!4143 (= result!7717 true)))

(assert (=> b!477619 t!15278))

(declare-fun b_and!20861 () Bool)

(assert (= b_and!20859 (and (=> t!15278 result!7717) b_and!20861)))

(declare-fun m!460103 () Bool)

(assert (=> b!477619 m!460103))

(declare-fun m!460105 () Bool)

(assert (=> b!477620 m!460105))

(assert (=> b!477573 d!76277))

(declare-fun d!76281 () Bool)

(declare-fun e!280714 () Bool)

(assert (=> d!76281 e!280714))

(declare-fun res!285135 () Bool)

(assert (=> d!76281 (=> res!285135 e!280714)))

(declare-fun lt!217588 () Bool)

(assert (=> d!76281 (= res!285135 (not lt!217588))))

(declare-fun lt!217590 () Bool)

(assert (=> d!76281 (= lt!217588 lt!217590)))

(declare-fun lt!217591 () Unit!14019)

(declare-fun e!280713 () Unit!14019)

(assert (=> d!76281 (= lt!217591 e!280713)))

(declare-fun c!57496 () Bool)

(assert (=> d!76281 (= c!57496 lt!217590)))

(declare-fun containsKey!350 (List!9088 (_ BitVec 64)) Bool)

(assert (=> d!76281 (= lt!217590 (containsKey!350 (toList!3978 lt!217579) (_1!4509 lt!217540)))))

(assert (=> d!76281 (= (contains!2578 lt!217579 (_1!4509 lt!217540)) lt!217588)))

(declare-fun b!477645 () Bool)

(declare-fun lt!217589 () Unit!14019)

(assert (=> b!477645 (= e!280713 lt!217589)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!299 (List!9088 (_ BitVec 64)) Unit!14019)

(assert (=> b!477645 (= lt!217589 (lemmaContainsKeyImpliesGetValueByKeyDefined!299 (toList!3978 lt!217579) (_1!4509 lt!217540)))))

(declare-fun isDefined!300 (Option!395) Bool)

(assert (=> b!477645 (isDefined!300 (getValueByKey!389 (toList!3978 lt!217579) (_1!4509 lt!217540)))))

(declare-fun b!477646 () Bool)

(declare-fun Unit!14023 () Unit!14019)

(assert (=> b!477646 (= e!280713 Unit!14023)))

(declare-fun b!477647 () Bool)

(assert (=> b!477647 (= e!280714 (isDefined!300 (getValueByKey!389 (toList!3978 lt!217579) (_1!4509 lt!217540))))))

(assert (= (and d!76281 c!57496) b!477645))

(assert (= (and d!76281 (not c!57496)) b!477646))

(assert (= (and d!76281 (not res!285135)) b!477647))

(declare-fun m!460111 () Bool)

(assert (=> d!76281 m!460111))

(declare-fun m!460113 () Bool)

(assert (=> b!477645 m!460113))

(assert (=> b!477645 m!460097))

(assert (=> b!477645 m!460097))

(declare-fun m!460115 () Bool)

(assert (=> b!477645 m!460115))

(assert (=> b!477647 m!460097))

(assert (=> b!477647 m!460097))

(assert (=> b!477647 m!460115))

(assert (=> d!76273 d!76281))

(declare-fun b!477651 () Bool)

(declare-fun e!280716 () Option!395)

(assert (=> b!477651 (= e!280716 None!393)))

(declare-fun b!477648 () Bool)

(declare-fun e!280715 () Option!395)

(assert (=> b!477648 (= e!280715 (Some!394 (_2!4509 (h!9940 lt!217576))))))

(declare-fun d!76289 () Bool)

(declare-fun c!57497 () Bool)

(assert (=> d!76289 (= c!57497 (and ((_ is Cons!9084) lt!217576) (= (_1!4509 (h!9940 lt!217576)) (_1!4509 lt!217540))))))

(assert (=> d!76289 (= (getValueByKey!389 lt!217576 (_1!4509 lt!217540)) e!280715)))

(declare-fun b!477649 () Bool)

(assert (=> b!477649 (= e!280715 e!280716)))

(declare-fun c!57498 () Bool)

(assert (=> b!477649 (= c!57498 (and ((_ is Cons!9084) lt!217576) (not (= (_1!4509 (h!9940 lt!217576)) (_1!4509 lt!217540)))))))

(declare-fun b!477650 () Bool)

(assert (=> b!477650 (= e!280716 (getValueByKey!389 (t!15261 lt!217576) (_1!4509 lt!217540)))))

(assert (= (and d!76289 c!57497) b!477648))

(assert (= (and d!76289 (not c!57497)) b!477649))

(assert (= (and b!477649 c!57498) b!477650))

(assert (= (and b!477649 (not c!57498)) b!477651))

(declare-fun m!460117 () Bool)

(assert (=> b!477650 m!460117))

(assert (=> d!76273 d!76289))

(declare-fun d!76291 () Bool)

(assert (=> d!76291 (= (getValueByKey!389 lt!217576 (_1!4509 lt!217540)) (Some!394 (_2!4509 lt!217540)))))

(declare-fun lt!217602 () Unit!14019)

(declare-fun choose!1377 (List!9088 (_ BitVec 64) B!1060) Unit!14019)

(assert (=> d!76291 (= lt!217602 (choose!1377 lt!217576 (_1!4509 lt!217540) (_2!4509 lt!217540)))))

(declare-fun e!280721 () Bool)

(assert (=> d!76291 e!280721))

(declare-fun res!285140 () Bool)

(assert (=> d!76291 (=> (not res!285140) (not e!280721))))

(assert (=> d!76291 (= res!285140 (isStrictlySorted!387 lt!217576))))

(assert (=> d!76291 (= (lemmaContainsTupThenGetReturnValue!212 lt!217576 (_1!4509 lt!217540) (_2!4509 lt!217540)) lt!217602)))

(declare-fun b!477660 () Bool)

(declare-fun res!285141 () Bool)

(assert (=> b!477660 (=> (not res!285141) (not e!280721))))

(assert (=> b!477660 (= res!285141 (containsKey!350 lt!217576 (_1!4509 lt!217540)))))

(declare-fun b!477661 () Bool)

(assert (=> b!477661 (= e!280721 (contains!2579 lt!217576 (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))))))

(assert (= (and d!76291 res!285140) b!477660))

(assert (= (and b!477660 res!285141) b!477661))

(assert (=> d!76291 m!460091))

(declare-fun m!460119 () Bool)

(assert (=> d!76291 m!460119))

(declare-fun m!460121 () Bool)

(assert (=> d!76291 m!460121))

(declare-fun m!460123 () Bool)

(assert (=> b!477660 m!460123))

(declare-fun m!460125 () Bool)

(assert (=> b!477661 m!460125))

(assert (=> d!76273 d!76291))

(declare-fun d!76295 () Bool)

(declare-fun e!280761 () Bool)

(assert (=> d!76295 e!280761))

(declare-fun res!285167 () Bool)

(assert (=> d!76295 (=> (not res!285167) (not e!280761))))

(declare-fun lt!217615 () List!9088)

(assert (=> d!76295 (= res!285167 (isStrictlySorted!387 lt!217615))))

(declare-fun e!280760 () List!9088)

(assert (=> d!76295 (= lt!217615 e!280760)))

(declare-fun c!57518 () Bool)

(assert (=> d!76295 (= c!57518 (and ((_ is Cons!9084) (toList!3978 lm!215)) (bvslt (_1!4509 (h!9940 (toList!3978 lm!215))) (_1!4509 lt!217540))))))

(assert (=> d!76295 (isStrictlySorted!387 (toList!3978 lm!215))))

(assert (=> d!76295 (= (insertStrictlySorted!214 (toList!3978 lm!215) (_1!4509 lt!217540) (_2!4509 lt!217540)) lt!217615)))

(declare-fun b!477721 () Bool)

(declare-fun call!30797 () List!9088)

(assert (=> b!477721 (= e!280760 call!30797)))

(declare-fun b!477722 () Bool)

(declare-fun e!280759 () List!9088)

(assert (=> b!477722 (= e!280760 e!280759)))

(declare-fun c!57519 () Bool)

(assert (=> b!477722 (= c!57519 (and ((_ is Cons!9084) (toList!3978 lm!215)) (= (_1!4509 (h!9940 (toList!3978 lm!215))) (_1!4509 lt!217540))))))

(declare-fun bm!30794 () Bool)

(declare-fun e!280763 () List!9088)

(declare-fun $colon$colon!112 (List!9088 tuple2!8998) List!9088)

(assert (=> bm!30794 (= call!30797 ($colon$colon!112 e!280763 (ite c!57518 (h!9940 (toList!3978 lm!215)) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540)))))))

(declare-fun c!57520 () Bool)

(assert (=> bm!30794 (= c!57520 c!57518)))

(declare-fun bm!30795 () Bool)

(declare-fun call!30798 () List!9088)

(assert (=> bm!30795 (= call!30798 call!30797)))

(declare-fun b!477723 () Bool)

(assert (=> b!477723 (= e!280763 (insertStrictlySorted!214 (t!15261 (toList!3978 lm!215)) (_1!4509 lt!217540) (_2!4509 lt!217540)))))

(declare-fun b!477724 () Bool)

(assert (=> b!477724 (= e!280759 call!30798)))

(declare-fun b!477725 () Bool)

(declare-fun res!285168 () Bool)

(assert (=> b!477725 (=> (not res!285168) (not e!280761))))

(assert (=> b!477725 (= res!285168 (containsKey!350 lt!217615 (_1!4509 lt!217540)))))

(declare-fun b!477726 () Bool)

(assert (=> b!477726 (= e!280761 (contains!2579 lt!217615 (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))))))

(declare-fun b!477727 () Bool)

(declare-fun e!280762 () List!9088)

(declare-fun call!30799 () List!9088)

(assert (=> b!477727 (= e!280762 call!30799)))

(declare-fun b!477728 () Bool)

(declare-fun c!57521 () Bool)

(assert (=> b!477728 (= e!280763 (ite c!57519 (t!15261 (toList!3978 lm!215)) (ite c!57521 (Cons!9084 (h!9940 (toList!3978 lm!215)) (t!15261 (toList!3978 lm!215))) Nil!9085)))))

(declare-fun bm!30796 () Bool)

(assert (=> bm!30796 (= call!30799 call!30798)))

(declare-fun b!477729 () Bool)

(assert (=> b!477729 (= e!280762 call!30799)))

(declare-fun b!477730 () Bool)

(assert (=> b!477730 (= c!57521 (and ((_ is Cons!9084) (toList!3978 lm!215)) (bvsgt (_1!4509 (h!9940 (toList!3978 lm!215))) (_1!4509 lt!217540))))))

(assert (=> b!477730 (= e!280759 e!280762)))

(assert (= (and d!76295 c!57518) b!477721))

(assert (= (and d!76295 (not c!57518)) b!477722))

(assert (= (and b!477722 c!57519) b!477724))

(assert (= (and b!477722 (not c!57519)) b!477730))

(assert (= (and b!477730 c!57521) b!477729))

(assert (= (and b!477730 (not c!57521)) b!477727))

(assert (= (or b!477729 b!477727) bm!30796))

(assert (= (or b!477724 bm!30796) bm!30795))

(assert (= (or b!477721 bm!30795) bm!30794))

(assert (= (and bm!30794 c!57520) b!477723))

(assert (= (and bm!30794 (not c!57520)) b!477728))

(assert (= (and d!76295 res!285167) b!477725))

(assert (= (and b!477725 res!285168) b!477726))

(declare-fun m!460153 () Bool)

(assert (=> b!477725 m!460153))

(declare-fun m!460155 () Bool)

(assert (=> bm!30794 m!460155))

(declare-fun m!460157 () Bool)

(assert (=> d!76295 m!460157))

(assert (=> d!76295 m!460053))

(declare-fun m!460159 () Bool)

(assert (=> b!477726 m!460159))

(declare-fun m!460161 () Bool)

(assert (=> b!477723 m!460161))

(assert (=> d!76273 d!76295))

(declare-fun d!76311 () Bool)

(declare-fun res!285180 () Bool)

(declare-fun e!280786 () Bool)

(assert (=> d!76311 (=> res!285180 e!280786)))

(assert (=> d!76311 (= res!285180 (or ((_ is Nil!9085) (toList!3978 lm!215)) ((_ is Nil!9085) (t!15261 (toList!3978 lm!215)))))))

(assert (=> d!76311 (= (isStrictlySorted!387 (toList!3978 lm!215)) e!280786)))

(declare-fun b!477768 () Bool)

(declare-fun e!280787 () Bool)

(assert (=> b!477768 (= e!280786 e!280787)))

(declare-fun res!285181 () Bool)

(assert (=> b!477768 (=> (not res!285181) (not e!280787))))

(assert (=> b!477768 (= res!285181 (bvslt (_1!4509 (h!9940 (toList!3978 lm!215))) (_1!4509 (h!9940 (t!15261 (toList!3978 lm!215))))))))

(declare-fun b!477769 () Bool)

(assert (=> b!477769 (= e!280787 (isStrictlySorted!387 (t!15261 (toList!3978 lm!215))))))

(assert (= (and d!76311 (not res!285180)) b!477768))

(assert (= (and b!477768 res!285181) b!477769))

(declare-fun m!460171 () Bool)

(assert (=> b!477769 m!460171))

(assert (=> d!76259 d!76311))

(declare-fun d!76317 () Bool)

(declare-fun res!285182 () Bool)

(declare-fun e!280788 () Bool)

(assert (=> d!76317 (=> res!285182 e!280788)))

(assert (=> d!76317 (= res!285182 ((_ is Nil!9085) (t!15261 (toList!3978 lm!215))))))

(assert (=> d!76317 (= (forall!201 (t!15261 (toList!3978 lm!215)) p!166) e!280788)))

(declare-fun b!477770 () Bool)

(declare-fun e!280789 () Bool)

(assert (=> b!477770 (= e!280788 e!280789)))

(declare-fun res!285183 () Bool)

(assert (=> b!477770 (=> (not res!285183) (not e!280789))))

(assert (=> b!477770 (= res!285183 (dynLambda!947 p!166 (h!9940 (t!15261 (toList!3978 lm!215)))))))

(declare-fun b!477771 () Bool)

(assert (=> b!477771 (= e!280789 (forall!201 (t!15261 (t!15261 (toList!3978 lm!215))) p!166))))

(assert (= (and d!76317 (not res!285182)) b!477770))

(assert (= (and b!477770 res!285183) b!477771))

(declare-fun b_lambda!10775 () Bool)

(assert (=> (not b_lambda!10775) (not b!477770)))

(declare-fun t!15280 () Bool)

(declare-fun tb!4145 () Bool)

(assert (=> (and start!43006 (= p!166 p!166) t!15280) tb!4145))

(declare-fun result!7719 () Bool)

(assert (=> tb!4145 (= result!7719 true)))

(assert (=> b!477770 t!15280))

(declare-fun b_and!20863 () Bool)

(assert (= b_and!20861 (and (=> t!15280 result!7719) b_and!20863)))

(declare-fun m!460173 () Bool)

(assert (=> b!477770 m!460173))

(declare-fun m!460175 () Bool)

(assert (=> b!477771 m!460175))

(assert (=> b!477567 d!76317))

(declare-fun d!76319 () Bool)

(assert (=> d!76319 (= (isEmpty!618 (toList!3978 lm!215)) ((_ is Nil!9085) (toList!3978 lm!215)))))

(assert (=> d!76267 d!76319))

(declare-fun d!76321 () Bool)

(declare-fun lt!217636 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!210 (List!9088) (InoxSet tuple2!8998))

(assert (=> d!76321 (= lt!217636 (select (content!210 (toList!3978 lt!217579)) lt!217540))))

(declare-fun e!280807 () Bool)

(assert (=> d!76321 (= lt!217636 e!280807)))

(declare-fun res!285200 () Bool)

(assert (=> d!76321 (=> (not res!285200) (not e!280807))))

(assert (=> d!76321 (= res!285200 ((_ is Cons!9084) (toList!3978 lt!217579)))))

(assert (=> d!76321 (= (contains!2579 (toList!3978 lt!217579) lt!217540) lt!217636)))

(declare-fun b!477796 () Bool)

(declare-fun e!280806 () Bool)

(assert (=> b!477796 (= e!280807 e!280806)))

(declare-fun res!285201 () Bool)

(assert (=> b!477796 (=> res!285201 e!280806)))

(assert (=> b!477796 (= res!285201 (= (h!9940 (toList!3978 lt!217579)) lt!217540))))

(declare-fun b!477797 () Bool)

(assert (=> b!477797 (= e!280806 (contains!2579 (t!15261 (toList!3978 lt!217579)) lt!217540))))

(assert (= (and d!76321 res!285200) b!477796))

(assert (= (and b!477796 (not res!285201)) b!477797))

(declare-fun m!460199 () Bool)

(assert (=> d!76321 m!460199))

(declare-fun m!460201 () Bool)

(assert (=> d!76321 m!460201))

(declare-fun m!460203 () Bool)

(assert (=> b!477797 m!460203))

(assert (=> b!477601 d!76321))

(declare-fun b!477798 () Bool)

(declare-fun e!280808 () Bool)

(declare-fun tp!42452 () Bool)

(assert (=> b!477798 (= e!280808 (and tp_is_empty!13533 tp!42452))))

(assert (=> b!477606 (= tp!42451 e!280808)))

(assert (= (and b!477606 ((_ is Cons!9084) (t!15261 (toList!3978 lm!215)))) b!477798))

(declare-fun b_lambda!10781 () Bool)

(assert (= b_lambda!10773 (or (and start!43006 b_free!12111) b_lambda!10781)))

(declare-fun b_lambda!10783 () Bool)

(assert (= b_lambda!10775 (or (and start!43006 b_free!12111) b_lambda!10783)))

(check-sat (not b!477797) (not b!477771) (not b!477661) (not b!477726) (not b!477617) (not d!76295) (not d!76281) b_and!20863 (not b!477725) (not b_lambda!10771) (not b_lambda!10747) (not b!477645) (not b_lambda!10769) (not b!477660) (not b!477647) (not b!477769) (not b!477798) (not d!76291) tp_is_empty!13533 (not b!477650) (not b_next!12111) (not bm!30794) (not b_lambda!10783) (not b!477620) (not b_lambda!10781) (not d!76321) (not b!477723))
(check-sat b_and!20863 (not b_next!12111))
(get-model)

(assert (=> d!76291 d!76289))

(declare-fun d!76335 () Bool)

(assert (=> d!76335 (= (getValueByKey!389 lt!217576 (_1!4509 lt!217540)) (Some!394 (_2!4509 lt!217540)))))

(assert (=> d!76335 true))

(declare-fun _$22!559 () Unit!14019)

(assert (=> d!76335 (= (choose!1377 lt!217576 (_1!4509 lt!217540) (_2!4509 lt!217540)) _$22!559)))

(declare-fun bs!15188 () Bool)

(assert (= bs!15188 d!76335))

(assert (=> bs!15188 m!460091))

(assert (=> d!76291 d!76335))

(declare-fun d!76337 () Bool)

(declare-fun res!285218 () Bool)

(declare-fun e!280836 () Bool)

(assert (=> d!76337 (=> res!285218 e!280836)))

(assert (=> d!76337 (= res!285218 (or ((_ is Nil!9085) lt!217576) ((_ is Nil!9085) (t!15261 lt!217576))))))

(assert (=> d!76337 (= (isStrictlySorted!387 lt!217576) e!280836)))

(declare-fun b!477841 () Bool)

(declare-fun e!280837 () Bool)

(assert (=> b!477841 (= e!280836 e!280837)))

(declare-fun res!285219 () Bool)

(assert (=> b!477841 (=> (not res!285219) (not e!280837))))

(assert (=> b!477841 (= res!285219 (bvslt (_1!4509 (h!9940 lt!217576)) (_1!4509 (h!9940 (t!15261 lt!217576)))))))

(declare-fun b!477842 () Bool)

(assert (=> b!477842 (= e!280837 (isStrictlySorted!387 (t!15261 lt!217576)))))

(assert (= (and d!76337 (not res!285218)) b!477841))

(assert (= (and b!477841 res!285219) b!477842))

(declare-fun m!460233 () Bool)

(assert (=> b!477842 m!460233))

(assert (=> d!76291 d!76337))

(declare-fun d!76339 () Bool)

(declare-fun lt!217643 () Bool)

(assert (=> d!76339 (= lt!217643 (select (content!210 (t!15261 (toList!3978 lt!217579))) lt!217540))))

(declare-fun e!280839 () Bool)

(assert (=> d!76339 (= lt!217643 e!280839)))

(declare-fun res!285220 () Bool)

(assert (=> d!76339 (=> (not res!285220) (not e!280839))))

(assert (=> d!76339 (= res!285220 ((_ is Cons!9084) (t!15261 (toList!3978 lt!217579))))))

(assert (=> d!76339 (= (contains!2579 (t!15261 (toList!3978 lt!217579)) lt!217540) lt!217643)))

(declare-fun b!477843 () Bool)

(declare-fun e!280838 () Bool)

(assert (=> b!477843 (= e!280839 e!280838)))

(declare-fun res!285221 () Bool)

(assert (=> b!477843 (=> res!285221 e!280838)))

(assert (=> b!477843 (= res!285221 (= (h!9940 (t!15261 (toList!3978 lt!217579))) lt!217540))))

(declare-fun b!477844 () Bool)

(assert (=> b!477844 (= e!280838 (contains!2579 (t!15261 (t!15261 (toList!3978 lt!217579))) lt!217540))))

(assert (= (and d!76339 res!285220) b!477843))

(assert (= (and b!477843 (not res!285221)) b!477844))

(declare-fun m!460235 () Bool)

(assert (=> d!76339 m!460235))

(declare-fun m!460237 () Bool)

(assert (=> d!76339 m!460237))

(declare-fun m!460239 () Bool)

(assert (=> b!477844 m!460239))

(assert (=> b!477797 d!76339))

(declare-fun d!76341 () Bool)

(declare-fun res!285222 () Bool)

(declare-fun e!280840 () Bool)

(assert (=> d!76341 (=> res!285222 e!280840)))

(assert (=> d!76341 (= res!285222 ((_ is Nil!9085) (t!15261 (t!15261 (toList!3978 (+!1740 lm!215 lt!217540))))))))

(assert (=> d!76341 (= (forall!201 (t!15261 (t!15261 (toList!3978 (+!1740 lm!215 lt!217540)))) p!166) e!280840)))

(declare-fun b!477845 () Bool)

(declare-fun e!280841 () Bool)

(assert (=> b!477845 (= e!280840 e!280841)))

(declare-fun res!285223 () Bool)

(assert (=> b!477845 (=> (not res!285223) (not e!280841))))

(assert (=> b!477845 (= res!285223 (dynLambda!947 p!166 (h!9940 (t!15261 (t!15261 (toList!3978 (+!1740 lm!215 lt!217540)))))))))

(declare-fun b!477846 () Bool)

(assert (=> b!477846 (= e!280841 (forall!201 (t!15261 (t!15261 (t!15261 (toList!3978 (+!1740 lm!215 lt!217540))))) p!166))))

(assert (= (and d!76341 (not res!285222)) b!477845))

(assert (= (and b!477845 res!285223) b!477846))

(declare-fun b_lambda!10797 () Bool)

(assert (=> (not b_lambda!10797) (not b!477845)))

(declare-fun t!15290 () Bool)

(declare-fun tb!4155 () Bool)

(assert (=> (and start!43006 (= p!166 p!166) t!15290) tb!4155))

(declare-fun result!7729 () Bool)

(assert (=> tb!4155 (= result!7729 true)))

(assert (=> b!477845 t!15290))

(declare-fun b_and!20873 () Bool)

(assert (= b_and!20863 (and (=> t!15290 result!7729) b_and!20873)))

(declare-fun m!460241 () Bool)

(assert (=> b!477845 m!460241))

(declare-fun m!460243 () Bool)

(assert (=> b!477846 m!460243))

(assert (=> b!477620 d!76341))

(declare-fun d!76343 () Bool)

(declare-fun isEmpty!620 (Option!395) Bool)

(assert (=> d!76343 (= (isDefined!300 (getValueByKey!389 (toList!3978 lt!217579) (_1!4509 lt!217540))) (not (isEmpty!620 (getValueByKey!389 (toList!3978 lt!217579) (_1!4509 lt!217540)))))))

(declare-fun bs!15189 () Bool)

(assert (= bs!15189 d!76343))

(assert (=> bs!15189 m!460097))

(declare-fun m!460245 () Bool)

(assert (=> bs!15189 m!460245))

(assert (=> b!477647 d!76343))

(assert (=> b!477647 d!76275))

(declare-fun d!76345 () Bool)

(declare-fun res!285228 () Bool)

(declare-fun e!280846 () Bool)

(assert (=> d!76345 (=> res!285228 e!280846)))

(assert (=> d!76345 (= res!285228 (and ((_ is Cons!9084) (toList!3978 lt!217579)) (= (_1!4509 (h!9940 (toList!3978 lt!217579))) (_1!4509 lt!217540))))))

(assert (=> d!76345 (= (containsKey!350 (toList!3978 lt!217579) (_1!4509 lt!217540)) e!280846)))

(declare-fun b!477851 () Bool)

(declare-fun e!280847 () Bool)

(assert (=> b!477851 (= e!280846 e!280847)))

(declare-fun res!285229 () Bool)

(assert (=> b!477851 (=> (not res!285229) (not e!280847))))

(assert (=> b!477851 (= res!285229 (and (or (not ((_ is Cons!9084) (toList!3978 lt!217579))) (bvsle (_1!4509 (h!9940 (toList!3978 lt!217579))) (_1!4509 lt!217540))) ((_ is Cons!9084) (toList!3978 lt!217579)) (bvslt (_1!4509 (h!9940 (toList!3978 lt!217579))) (_1!4509 lt!217540))))))

(declare-fun b!477852 () Bool)

(assert (=> b!477852 (= e!280847 (containsKey!350 (t!15261 (toList!3978 lt!217579)) (_1!4509 lt!217540)))))

(assert (= (and d!76345 (not res!285228)) b!477851))

(assert (= (and b!477851 res!285229) b!477852))

(declare-fun m!460247 () Bool)

(assert (=> b!477852 m!460247))

(assert (=> d!76281 d!76345))

(declare-fun b!477856 () Bool)

(declare-fun e!280849 () Option!395)

(assert (=> b!477856 (= e!280849 None!393)))

(declare-fun b!477853 () Bool)

(declare-fun e!280848 () Option!395)

(assert (=> b!477853 (= e!280848 (Some!394 (_2!4509 (h!9940 (t!15261 (toList!3978 lt!217579))))))))

(declare-fun d!76347 () Bool)

(declare-fun c!57551 () Bool)

(assert (=> d!76347 (= c!57551 (and ((_ is Cons!9084) (t!15261 (toList!3978 lt!217579))) (= (_1!4509 (h!9940 (t!15261 (toList!3978 lt!217579)))) (_1!4509 lt!217540))))))

(assert (=> d!76347 (= (getValueByKey!389 (t!15261 (toList!3978 lt!217579)) (_1!4509 lt!217540)) e!280848)))

(declare-fun b!477854 () Bool)

(assert (=> b!477854 (= e!280848 e!280849)))

(declare-fun c!57552 () Bool)

(assert (=> b!477854 (= c!57552 (and ((_ is Cons!9084) (t!15261 (toList!3978 lt!217579))) (not (= (_1!4509 (h!9940 (t!15261 (toList!3978 lt!217579)))) (_1!4509 lt!217540)))))))

(declare-fun b!477855 () Bool)

(assert (=> b!477855 (= e!280849 (getValueByKey!389 (t!15261 (t!15261 (toList!3978 lt!217579))) (_1!4509 lt!217540)))))

(assert (= (and d!76347 c!57551) b!477853))

(assert (= (and d!76347 (not c!57551)) b!477854))

(assert (= (and b!477854 c!57552) b!477855))

(assert (= (and b!477854 (not c!57552)) b!477856))

(declare-fun m!460249 () Bool)

(assert (=> b!477855 m!460249))

(assert (=> b!477617 d!76347))

(declare-fun d!76349 () Bool)

(declare-fun lt!217644 () Bool)

(assert (=> d!76349 (= lt!217644 (select (content!210 lt!217615) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))))))

(declare-fun e!280851 () Bool)

(assert (=> d!76349 (= lt!217644 e!280851)))

(declare-fun res!285230 () Bool)

(assert (=> d!76349 (=> (not res!285230) (not e!280851))))

(assert (=> d!76349 (= res!285230 ((_ is Cons!9084) lt!217615))))

(assert (=> d!76349 (= (contains!2579 lt!217615 (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))) lt!217644)))

(declare-fun b!477857 () Bool)

(declare-fun e!280850 () Bool)

(assert (=> b!477857 (= e!280851 e!280850)))

(declare-fun res!285231 () Bool)

(assert (=> b!477857 (=> res!285231 e!280850)))

(assert (=> b!477857 (= res!285231 (= (h!9940 lt!217615) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))))))

(declare-fun b!477858 () Bool)

(assert (=> b!477858 (= e!280850 (contains!2579 (t!15261 lt!217615) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))))))

(assert (= (and d!76349 res!285230) b!477857))

(assert (= (and b!477857 (not res!285231)) b!477858))

(declare-fun m!460251 () Bool)

(assert (=> d!76349 m!460251))

(declare-fun m!460253 () Bool)

(assert (=> d!76349 m!460253))

(declare-fun m!460255 () Bool)

(assert (=> b!477858 m!460255))

(assert (=> b!477726 d!76349))

(declare-fun d!76351 () Bool)

(assert (=> d!76351 (isDefined!300 (getValueByKey!389 (toList!3978 lt!217579) (_1!4509 lt!217540)))))

(declare-fun lt!217647 () Unit!14019)

(declare-fun choose!1380 (List!9088 (_ BitVec 64)) Unit!14019)

(assert (=> d!76351 (= lt!217647 (choose!1380 (toList!3978 lt!217579) (_1!4509 lt!217540)))))

(declare-fun e!280854 () Bool)

(assert (=> d!76351 e!280854))

(declare-fun res!285234 () Bool)

(assert (=> d!76351 (=> (not res!285234) (not e!280854))))

(assert (=> d!76351 (= res!285234 (isStrictlySorted!387 (toList!3978 lt!217579)))))

(assert (=> d!76351 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!299 (toList!3978 lt!217579) (_1!4509 lt!217540)) lt!217647)))

(declare-fun b!477861 () Bool)

(assert (=> b!477861 (= e!280854 (containsKey!350 (toList!3978 lt!217579) (_1!4509 lt!217540)))))

(assert (= (and d!76351 res!285234) b!477861))

(assert (=> d!76351 m!460097))

(assert (=> d!76351 m!460097))

(assert (=> d!76351 m!460115))

(declare-fun m!460257 () Bool)

(assert (=> d!76351 m!460257))

(declare-fun m!460259 () Bool)

(assert (=> d!76351 m!460259))

(assert (=> b!477861 m!460111))

(assert (=> b!477645 d!76351))

(assert (=> b!477645 d!76343))

(assert (=> b!477645 d!76275))

(declare-fun d!76353 () Bool)

(declare-fun res!285235 () Bool)

(declare-fun e!280855 () Bool)

(assert (=> d!76353 (=> res!285235 e!280855)))

(assert (=> d!76353 (= res!285235 (and ((_ is Cons!9084) lt!217615) (= (_1!4509 (h!9940 lt!217615)) (_1!4509 lt!217540))))))

(assert (=> d!76353 (= (containsKey!350 lt!217615 (_1!4509 lt!217540)) e!280855)))

(declare-fun b!477862 () Bool)

(declare-fun e!280856 () Bool)

(assert (=> b!477862 (= e!280855 e!280856)))

(declare-fun res!285236 () Bool)

(assert (=> b!477862 (=> (not res!285236) (not e!280856))))

(assert (=> b!477862 (= res!285236 (and (or (not ((_ is Cons!9084) lt!217615)) (bvsle (_1!4509 (h!9940 lt!217615)) (_1!4509 lt!217540))) ((_ is Cons!9084) lt!217615) (bvslt (_1!4509 (h!9940 lt!217615)) (_1!4509 lt!217540))))))

(declare-fun b!477863 () Bool)

(assert (=> b!477863 (= e!280856 (containsKey!350 (t!15261 lt!217615) (_1!4509 lt!217540)))))

(assert (= (and d!76353 (not res!285235)) b!477862))

(assert (= (and b!477862 res!285236) b!477863))

(declare-fun m!460261 () Bool)

(assert (=> b!477863 m!460261))

(assert (=> b!477725 d!76353))

(declare-fun d!76355 () Bool)

(declare-fun res!285237 () Bool)

(declare-fun e!280857 () Bool)

(assert (=> d!76355 (=> res!285237 e!280857)))

(assert (=> d!76355 (= res!285237 (or ((_ is Nil!9085) lt!217615) ((_ is Nil!9085) (t!15261 lt!217615))))))

(assert (=> d!76355 (= (isStrictlySorted!387 lt!217615) e!280857)))

(declare-fun b!477864 () Bool)

(declare-fun e!280858 () Bool)

(assert (=> b!477864 (= e!280857 e!280858)))

(declare-fun res!285238 () Bool)

(assert (=> b!477864 (=> (not res!285238) (not e!280858))))

(assert (=> b!477864 (= res!285238 (bvslt (_1!4509 (h!9940 lt!217615)) (_1!4509 (h!9940 (t!15261 lt!217615)))))))

(declare-fun b!477865 () Bool)

(assert (=> b!477865 (= e!280858 (isStrictlySorted!387 (t!15261 lt!217615)))))

(assert (= (and d!76355 (not res!285237)) b!477864))

(assert (= (and b!477864 res!285238) b!477865))

(declare-fun m!460263 () Bool)

(assert (=> b!477865 m!460263))

(assert (=> d!76295 d!76355))

(assert (=> d!76295 d!76311))

(declare-fun d!76357 () Bool)

(declare-fun e!280861 () Bool)

(assert (=> d!76357 e!280861))

(declare-fun res!285239 () Bool)

(assert (=> d!76357 (=> (not res!285239) (not e!280861))))

(declare-fun lt!217648 () List!9088)

(assert (=> d!76357 (= res!285239 (isStrictlySorted!387 lt!217648))))

(declare-fun e!280860 () List!9088)

(assert (=> d!76357 (= lt!217648 e!280860)))

(declare-fun c!57553 () Bool)

(assert (=> d!76357 (= c!57553 (and ((_ is Cons!9084) (t!15261 (toList!3978 lm!215))) (bvslt (_1!4509 (h!9940 (t!15261 (toList!3978 lm!215)))) (_1!4509 lt!217540))))))

(assert (=> d!76357 (isStrictlySorted!387 (t!15261 (toList!3978 lm!215)))))

(assert (=> d!76357 (= (insertStrictlySorted!214 (t!15261 (toList!3978 lm!215)) (_1!4509 lt!217540) (_2!4509 lt!217540)) lt!217648)))

(declare-fun b!477866 () Bool)

(declare-fun call!30818 () List!9088)

(assert (=> b!477866 (= e!280860 call!30818)))

(declare-fun b!477867 () Bool)

(declare-fun e!280859 () List!9088)

(assert (=> b!477867 (= e!280860 e!280859)))

(declare-fun c!57554 () Bool)

(assert (=> b!477867 (= c!57554 (and ((_ is Cons!9084) (t!15261 (toList!3978 lm!215))) (= (_1!4509 (h!9940 (t!15261 (toList!3978 lm!215)))) (_1!4509 lt!217540))))))

(declare-fun e!280863 () List!9088)

(declare-fun bm!30815 () Bool)

(assert (=> bm!30815 (= call!30818 ($colon$colon!112 e!280863 (ite c!57553 (h!9940 (t!15261 (toList!3978 lm!215))) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540)))))))

(declare-fun c!57555 () Bool)

(assert (=> bm!30815 (= c!57555 c!57553)))

(declare-fun bm!30816 () Bool)

(declare-fun call!30819 () List!9088)

(assert (=> bm!30816 (= call!30819 call!30818)))

(declare-fun b!477868 () Bool)

(assert (=> b!477868 (= e!280863 (insertStrictlySorted!214 (t!15261 (t!15261 (toList!3978 lm!215))) (_1!4509 lt!217540) (_2!4509 lt!217540)))))

(declare-fun b!477869 () Bool)

(assert (=> b!477869 (= e!280859 call!30819)))

(declare-fun b!477870 () Bool)

(declare-fun res!285240 () Bool)

(assert (=> b!477870 (=> (not res!285240) (not e!280861))))

(assert (=> b!477870 (= res!285240 (containsKey!350 lt!217648 (_1!4509 lt!217540)))))

(declare-fun b!477871 () Bool)

(assert (=> b!477871 (= e!280861 (contains!2579 lt!217648 (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))))))

(declare-fun b!477872 () Bool)

(declare-fun e!280862 () List!9088)

(declare-fun call!30820 () List!9088)

(assert (=> b!477872 (= e!280862 call!30820)))

(declare-fun c!57556 () Bool)

(declare-fun b!477873 () Bool)

(assert (=> b!477873 (= e!280863 (ite c!57554 (t!15261 (t!15261 (toList!3978 lm!215))) (ite c!57556 (Cons!9084 (h!9940 (t!15261 (toList!3978 lm!215))) (t!15261 (t!15261 (toList!3978 lm!215)))) Nil!9085)))))

(declare-fun bm!30817 () Bool)

(assert (=> bm!30817 (= call!30820 call!30819)))

(declare-fun b!477874 () Bool)

(assert (=> b!477874 (= e!280862 call!30820)))

(declare-fun b!477875 () Bool)

(assert (=> b!477875 (= c!57556 (and ((_ is Cons!9084) (t!15261 (toList!3978 lm!215))) (bvsgt (_1!4509 (h!9940 (t!15261 (toList!3978 lm!215)))) (_1!4509 lt!217540))))))

(assert (=> b!477875 (= e!280859 e!280862)))

(assert (= (and d!76357 c!57553) b!477866))

(assert (= (and d!76357 (not c!57553)) b!477867))

(assert (= (and b!477867 c!57554) b!477869))

(assert (= (and b!477867 (not c!57554)) b!477875))

(assert (= (and b!477875 c!57556) b!477874))

(assert (= (and b!477875 (not c!57556)) b!477872))

(assert (= (or b!477874 b!477872) bm!30817))

(assert (= (or b!477869 bm!30817) bm!30816))

(assert (= (or b!477866 bm!30816) bm!30815))

(assert (= (and bm!30815 c!57555) b!477868))

(assert (= (and bm!30815 (not c!57555)) b!477873))

(assert (= (and d!76357 res!285239) b!477870))

(assert (= (and b!477870 res!285240) b!477871))

(declare-fun m!460265 () Bool)

(assert (=> b!477870 m!460265))

(declare-fun m!460267 () Bool)

(assert (=> bm!30815 m!460267))

(declare-fun m!460269 () Bool)

(assert (=> d!76357 m!460269))

(assert (=> d!76357 m!460171))

(declare-fun m!460271 () Bool)

(assert (=> b!477871 m!460271))

(declare-fun m!460273 () Bool)

(assert (=> b!477868 m!460273))

(assert (=> b!477723 d!76357))

(declare-fun d!76359 () Bool)

(declare-fun lt!217649 () Bool)

(assert (=> d!76359 (= lt!217649 (select (content!210 lt!217576) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))))))

(declare-fun e!280865 () Bool)

(assert (=> d!76359 (= lt!217649 e!280865)))

(declare-fun res!285241 () Bool)

(assert (=> d!76359 (=> (not res!285241) (not e!280865))))

(assert (=> d!76359 (= res!285241 ((_ is Cons!9084) lt!217576))))

(assert (=> d!76359 (= (contains!2579 lt!217576 (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))) lt!217649)))

(declare-fun b!477876 () Bool)

(declare-fun e!280864 () Bool)

(assert (=> b!477876 (= e!280865 e!280864)))

(declare-fun res!285242 () Bool)

(assert (=> b!477876 (=> res!285242 e!280864)))

(assert (=> b!477876 (= res!285242 (= (h!9940 lt!217576) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))))))

(declare-fun b!477877 () Bool)

(assert (=> b!477877 (= e!280864 (contains!2579 (t!15261 lt!217576) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))))))

(assert (= (and d!76359 res!285241) b!477876))

(assert (= (and b!477876 (not res!285242)) b!477877))

(declare-fun m!460275 () Bool)

(assert (=> d!76359 m!460275))

(declare-fun m!460277 () Bool)

(assert (=> d!76359 m!460277))

(declare-fun m!460279 () Bool)

(assert (=> b!477877 m!460279))

(assert (=> b!477661 d!76359))

(declare-fun d!76361 () Bool)

(declare-fun res!285243 () Bool)

(declare-fun e!280866 () Bool)

(assert (=> d!76361 (=> res!285243 e!280866)))

(assert (=> d!76361 (= res!285243 (or ((_ is Nil!9085) (t!15261 (toList!3978 lm!215))) ((_ is Nil!9085) (t!15261 (t!15261 (toList!3978 lm!215))))))))

(assert (=> d!76361 (= (isStrictlySorted!387 (t!15261 (toList!3978 lm!215))) e!280866)))

(declare-fun b!477878 () Bool)

(declare-fun e!280867 () Bool)

(assert (=> b!477878 (= e!280866 e!280867)))

(declare-fun res!285244 () Bool)

(assert (=> b!477878 (=> (not res!285244) (not e!280867))))

(assert (=> b!477878 (= res!285244 (bvslt (_1!4509 (h!9940 (t!15261 (toList!3978 lm!215)))) (_1!4509 (h!9940 (t!15261 (t!15261 (toList!3978 lm!215)))))))))

(declare-fun b!477879 () Bool)

(assert (=> b!477879 (= e!280867 (isStrictlySorted!387 (t!15261 (t!15261 (toList!3978 lm!215)))))))

(assert (= (and d!76361 (not res!285243)) b!477878))

(assert (= (and b!477878 res!285244) b!477879))

(declare-fun m!460281 () Bool)

(assert (=> b!477879 m!460281))

(assert (=> b!477769 d!76361))

(declare-fun d!76363 () Bool)

(declare-fun res!285245 () Bool)

(declare-fun e!280868 () Bool)

(assert (=> d!76363 (=> res!285245 e!280868)))

(assert (=> d!76363 (= res!285245 (and ((_ is Cons!9084) lt!217576) (= (_1!4509 (h!9940 lt!217576)) (_1!4509 lt!217540))))))

(assert (=> d!76363 (= (containsKey!350 lt!217576 (_1!4509 lt!217540)) e!280868)))

(declare-fun b!477880 () Bool)

(declare-fun e!280869 () Bool)

(assert (=> b!477880 (= e!280868 e!280869)))

(declare-fun res!285246 () Bool)

(assert (=> b!477880 (=> (not res!285246) (not e!280869))))

(assert (=> b!477880 (= res!285246 (and (or (not ((_ is Cons!9084) lt!217576)) (bvsle (_1!4509 (h!9940 lt!217576)) (_1!4509 lt!217540))) ((_ is Cons!9084) lt!217576) (bvslt (_1!4509 (h!9940 lt!217576)) (_1!4509 lt!217540))))))

(declare-fun b!477881 () Bool)

(assert (=> b!477881 (= e!280869 (containsKey!350 (t!15261 lt!217576) (_1!4509 lt!217540)))))

(assert (= (and d!76363 (not res!285245)) b!477880))

(assert (= (and b!477880 res!285246) b!477881))

(declare-fun m!460283 () Bool)

(assert (=> b!477881 m!460283))

(assert (=> b!477660 d!76363))

(declare-fun d!76365 () Bool)

(declare-fun res!285247 () Bool)

(declare-fun e!280870 () Bool)

(assert (=> d!76365 (=> res!285247 e!280870)))

(assert (=> d!76365 (= res!285247 ((_ is Nil!9085) (t!15261 (t!15261 (toList!3978 lm!215)))))))

(assert (=> d!76365 (= (forall!201 (t!15261 (t!15261 (toList!3978 lm!215))) p!166) e!280870)))

(declare-fun b!477882 () Bool)

(declare-fun e!280871 () Bool)

(assert (=> b!477882 (= e!280870 e!280871)))

(declare-fun res!285248 () Bool)

(assert (=> b!477882 (=> (not res!285248) (not e!280871))))

(assert (=> b!477882 (= res!285248 (dynLambda!947 p!166 (h!9940 (t!15261 (t!15261 (toList!3978 lm!215))))))))

(declare-fun b!477883 () Bool)

(assert (=> b!477883 (= e!280871 (forall!201 (t!15261 (t!15261 (t!15261 (toList!3978 lm!215)))) p!166))))

(assert (= (and d!76365 (not res!285247)) b!477882))

(assert (= (and b!477882 res!285248) b!477883))

(declare-fun b_lambda!10799 () Bool)

(assert (=> (not b_lambda!10799) (not b!477882)))

(declare-fun t!15292 () Bool)

(declare-fun tb!4157 () Bool)

(assert (=> (and start!43006 (= p!166 p!166) t!15292) tb!4157))

(declare-fun result!7731 () Bool)

(assert (=> tb!4157 (= result!7731 true)))

(assert (=> b!477882 t!15292))

(declare-fun b_and!20875 () Bool)

(assert (= b_and!20873 (and (=> t!15292 result!7731) b_and!20875)))

(declare-fun m!460285 () Bool)

(assert (=> b!477882 m!460285))

(declare-fun m!460287 () Bool)

(assert (=> b!477883 m!460287))

(assert (=> b!477771 d!76365))

(declare-fun b!477887 () Bool)

(declare-fun e!280873 () Option!395)

(assert (=> b!477887 (= e!280873 None!393)))

(declare-fun b!477884 () Bool)

(declare-fun e!280872 () Option!395)

(assert (=> b!477884 (= e!280872 (Some!394 (_2!4509 (h!9940 (t!15261 lt!217576)))))))

(declare-fun d!76367 () Bool)

(declare-fun c!57557 () Bool)

(assert (=> d!76367 (= c!57557 (and ((_ is Cons!9084) (t!15261 lt!217576)) (= (_1!4509 (h!9940 (t!15261 lt!217576))) (_1!4509 lt!217540))))))

(assert (=> d!76367 (= (getValueByKey!389 (t!15261 lt!217576) (_1!4509 lt!217540)) e!280872)))

(declare-fun b!477885 () Bool)

(assert (=> b!477885 (= e!280872 e!280873)))

(declare-fun c!57558 () Bool)

(assert (=> b!477885 (= c!57558 (and ((_ is Cons!9084) (t!15261 lt!217576)) (not (= (_1!4509 (h!9940 (t!15261 lt!217576))) (_1!4509 lt!217540)))))))

(declare-fun b!477886 () Bool)

(assert (=> b!477886 (= e!280873 (getValueByKey!389 (t!15261 (t!15261 lt!217576)) (_1!4509 lt!217540)))))

(assert (= (and d!76367 c!57557) b!477884))

(assert (= (and d!76367 (not c!57557)) b!477885))

(assert (= (and b!477885 c!57558) b!477886))

(assert (= (and b!477885 (not c!57558)) b!477887))

(declare-fun m!460289 () Bool)

(assert (=> b!477886 m!460289))

(assert (=> b!477650 d!76367))

(declare-fun d!76369 () Bool)

(declare-fun c!57561 () Bool)

(assert (=> d!76369 (= c!57561 ((_ is Nil!9085) (toList!3978 lt!217579)))))

(declare-fun e!280876 () (InoxSet tuple2!8998))

(assert (=> d!76369 (= (content!210 (toList!3978 lt!217579)) e!280876)))

(declare-fun b!477892 () Bool)

(assert (=> b!477892 (= e!280876 ((as const (Array tuple2!8998 Bool)) false))))

(declare-fun b!477893 () Bool)

(assert (=> b!477893 (= e!280876 ((_ map or) (store ((as const (Array tuple2!8998 Bool)) false) (h!9940 (toList!3978 lt!217579)) true) (content!210 (t!15261 (toList!3978 lt!217579)))))))

(assert (= (and d!76369 c!57561) b!477892))

(assert (= (and d!76369 (not c!57561)) b!477893))

(declare-fun m!460291 () Bool)

(assert (=> b!477893 m!460291))

(assert (=> b!477893 m!460235))

(assert (=> d!76321 d!76369))

(declare-fun d!76371 () Bool)

(assert (=> d!76371 (= ($colon$colon!112 e!280763 (ite c!57518 (h!9940 (toList!3978 lm!215)) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540)))) (Cons!9084 (ite c!57518 (h!9940 (toList!3978 lm!215)) (tuple2!8999 (_1!4509 lt!217540) (_2!4509 lt!217540))) e!280763))))

(assert (=> bm!30794 d!76371))

(declare-fun b!477894 () Bool)

(declare-fun e!280877 () Bool)

(declare-fun tp!42455 () Bool)

(assert (=> b!477894 (= e!280877 (and tp_is_empty!13533 tp!42455))))

(assert (=> b!477798 (= tp!42452 e!280877)))

(assert (= (and b!477798 ((_ is Cons!9084) (t!15261 (t!15261 (toList!3978 lm!215))))) b!477894))

(declare-fun b_lambda!10801 () Bool)

(assert (= b_lambda!10797 (or (and start!43006 b_free!12111) b_lambda!10801)))

(declare-fun b_lambda!10803 () Bool)

(assert (= b_lambda!10799 (or (and start!43006 b_free!12111) b_lambda!10803)))

(check-sat (not b!477863) (not d!76357) (not b!477881) (not b_lambda!10769) (not b!477852) tp_is_empty!13533 (not d!76343) (not b!477846) (not b_lambda!10783) (not b_lambda!10781) (not b!477877) (not d!76349) (not b!477883) (not b!477871) b_and!20875 (not b!477894) (not b!477844) (not b_lambda!10747) (not b!477879) (not d!76339) (not d!76359) (not b!477886) (not b!477855) (not b!477868) (not b!477893) (not b_lambda!10803) (not b!477870) (not b!477865) (not b_next!12111) (not b!477858) (not bm!30815) (not d!76351) (not b!477842) (not b_lambda!10771) (not b!477861) (not b_lambda!10801) (not d!76335))
(check-sat b_and!20875 (not b_next!12111))
