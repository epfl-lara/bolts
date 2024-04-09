; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133278 () Bool)

(assert start!133278)

(declare-fun b!1558391 () Bool)

(declare-fun e!868173 () Bool)

(declare-fun tp_is_empty!38445 () Bool)

(declare-fun tp!112660 () Bool)

(assert (=> b!1558391 (= e!868173 (and tp_is_empty!38445 tp!112660))))

(declare-fun b!1558392 () Bool)

(declare-fun res!1065928 () Bool)

(declare-fun e!868172 () Bool)

(assert (=> b!1558392 (=> (not res!1065928) (not e!868172))))

(declare-datatypes ((B!2440 0))(
  ( (B!2441 (val!19306 Int)) )
))
(declare-datatypes ((tuple2!25128 0))(
  ( (tuple2!25129 (_1!12574 (_ BitVec 64)) (_2!12574 B!2440)) )
))
(declare-datatypes ((List!36486 0))(
  ( (Nil!36483) (Cons!36482 (h!37929 tuple2!25128) (t!51220 List!36486)) )
))
(declare-fun l!1292 () List!36486)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!841 (List!36486 (_ BitVec 64)) Bool)

(assert (=> b!1558392 (= res!1065928 (containsKey!841 l!1292 otherKey!62))))

(declare-fun b!1558393 () Bool)

(declare-fun res!1065930 () Bool)

(assert (=> b!1558393 (=> (not res!1065930) (not e!868172))))

(declare-fun newKey!135 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1558393 (= res!1065930 (and (not (= otherKey!62 newKey!135)) ((_ is Cons!36482) l!1292) (not (= (_1!12574 (h!37929 l!1292)) otherKey!62))))))

(declare-fun res!1065929 () Bool)

(assert (=> start!133278 (=> (not res!1065929) (not e!868172))))

(declare-fun isStrictlySorted!977 (List!36486) Bool)

(assert (=> start!133278 (= res!1065929 (isStrictlySorted!977 l!1292))))

(assert (=> start!133278 e!868172))

(assert (=> start!133278 e!868173))

(assert (=> start!133278 true))

(assert (=> start!133278 tp_is_empty!38445))

(declare-fun b!1558394 () Bool)

(declare-fun res!1065926 () Bool)

(assert (=> b!1558394 (=> (not res!1065926) (not e!868172))))

(assert (=> b!1558394 (= res!1065926 (containsKey!841 (t!51220 l!1292) otherKey!62))))

(declare-fun b!1558395 () Bool)

(declare-fun res!1065927 () Bool)

(assert (=> b!1558395 (=> (not res!1065927) (not e!868172))))

(assert (=> b!1558395 (= res!1065927 (isStrictlySorted!977 (t!51220 l!1292)))))

(declare-fun b!1558396 () Bool)

(declare-fun newValue!135 () B!2440)

(declare-fun insertStrictlySorted!570 (List!36486 (_ BitVec 64) B!2440) List!36486)

(assert (=> b!1558396 (= e!868172 (not (containsKey!841 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135) otherKey!62)))))

(assert (=> b!1558396 (containsKey!841 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-datatypes ((Unit!51826 0))(
  ( (Unit!51827) )
))
(declare-fun lt!670712 () Unit!51826)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!11 (List!36486 (_ BitVec 64) B!2440 (_ BitVec 64)) Unit!51826)

(assert (=> b!1558396 (= lt!670712 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!11 (t!51220 l!1292) newKey!135 newValue!135 otherKey!62))))

(assert (= (and start!133278 res!1065929) b!1558392))

(assert (= (and b!1558392 res!1065928) b!1558393))

(assert (= (and b!1558393 res!1065930) b!1558395))

(assert (= (and b!1558395 res!1065927) b!1558394))

(assert (= (and b!1558394 res!1065926) b!1558396))

(assert (= (and start!133278 ((_ is Cons!36482) l!1292)) b!1558391))

(declare-fun m!1435035 () Bool)

(assert (=> b!1558395 m!1435035))

(declare-fun m!1435037 () Bool)

(assert (=> b!1558394 m!1435037))

(declare-fun m!1435039 () Bool)

(assert (=> start!133278 m!1435039))

(declare-fun m!1435041 () Bool)

(assert (=> b!1558396 m!1435041))

(declare-fun m!1435043 () Bool)

(assert (=> b!1558396 m!1435043))

(assert (=> b!1558396 m!1435041))

(declare-fun m!1435045 () Bool)

(assert (=> b!1558396 m!1435045))

(declare-fun m!1435047 () Bool)

(assert (=> b!1558396 m!1435047))

(assert (=> b!1558396 m!1435045))

(declare-fun m!1435049 () Bool)

(assert (=> b!1558396 m!1435049))

(declare-fun m!1435051 () Bool)

(assert (=> b!1558392 m!1435051))

(check-sat tp_is_empty!38445 (not start!133278) (not b!1558395) (not b!1558396) (not b!1558392) (not b!1558391) (not b!1558394))
(check-sat)
(get-model)

(declare-fun d!162597 () Bool)

(declare-fun res!1065954 () Bool)

(declare-fun e!868188 () Bool)

(assert (=> d!162597 (=> res!1065954 e!868188)))

(assert (=> d!162597 (= res!1065954 (and ((_ is Cons!36482) (t!51220 l!1292)) (= (_1!12574 (h!37929 (t!51220 l!1292))) otherKey!62)))))

(assert (=> d!162597 (= (containsKey!841 (t!51220 l!1292) otherKey!62) e!868188)))

(declare-fun b!1558421 () Bool)

(declare-fun e!868189 () Bool)

(assert (=> b!1558421 (= e!868188 e!868189)))

(declare-fun res!1065955 () Bool)

(assert (=> b!1558421 (=> (not res!1065955) (not e!868189))))

(assert (=> b!1558421 (= res!1065955 (and (or (not ((_ is Cons!36482) (t!51220 l!1292))) (bvsle (_1!12574 (h!37929 (t!51220 l!1292))) otherKey!62)) ((_ is Cons!36482) (t!51220 l!1292)) (bvslt (_1!12574 (h!37929 (t!51220 l!1292))) otherKey!62)))))

(declare-fun b!1558422 () Bool)

(assert (=> b!1558422 (= e!868189 (containsKey!841 (t!51220 (t!51220 l!1292)) otherKey!62))))

(assert (= (and d!162597 (not res!1065954)) b!1558421))

(assert (= (and b!1558421 res!1065955) b!1558422))

(declare-fun m!1435071 () Bool)

(assert (=> b!1558422 m!1435071))

(assert (=> b!1558394 d!162597))

(declare-fun d!162603 () Bool)

(declare-fun res!1065970 () Bool)

(declare-fun e!868204 () Bool)

(assert (=> d!162603 (=> res!1065970 e!868204)))

(assert (=> d!162603 (= res!1065970 (or ((_ is Nil!36483) l!1292) ((_ is Nil!36483) (t!51220 l!1292))))))

(assert (=> d!162603 (= (isStrictlySorted!977 l!1292) e!868204)))

(declare-fun b!1558439 () Bool)

(declare-fun e!868205 () Bool)

(assert (=> b!1558439 (= e!868204 e!868205)))

(declare-fun res!1065971 () Bool)

(assert (=> b!1558439 (=> (not res!1065971) (not e!868205))))

(assert (=> b!1558439 (= res!1065971 (bvslt (_1!12574 (h!37929 l!1292)) (_1!12574 (h!37929 (t!51220 l!1292)))))))

(declare-fun b!1558440 () Bool)

(assert (=> b!1558440 (= e!868205 (isStrictlySorted!977 (t!51220 l!1292)))))

(assert (= (and d!162603 (not res!1065970)) b!1558439))

(assert (= (and b!1558439 res!1065971) b!1558440))

(assert (=> b!1558440 m!1435035))

(assert (=> start!133278 d!162603))

(declare-fun d!162611 () Bool)

(declare-fun res!1065974 () Bool)

(declare-fun e!868208 () Bool)

(assert (=> d!162611 (=> res!1065974 e!868208)))

(assert (=> d!162611 (= res!1065974 (and ((_ is Cons!36482) l!1292) (= (_1!12574 (h!37929 l!1292)) otherKey!62)))))

(assert (=> d!162611 (= (containsKey!841 l!1292 otherKey!62) e!868208)))

(declare-fun b!1558443 () Bool)

(declare-fun e!868209 () Bool)

(assert (=> b!1558443 (= e!868208 e!868209)))

(declare-fun res!1065975 () Bool)

(assert (=> b!1558443 (=> (not res!1065975) (not e!868209))))

(assert (=> b!1558443 (= res!1065975 (and (or (not ((_ is Cons!36482) l!1292)) (bvsle (_1!12574 (h!37929 l!1292)) otherKey!62)) ((_ is Cons!36482) l!1292) (bvslt (_1!12574 (h!37929 l!1292)) otherKey!62)))))

(declare-fun b!1558444 () Bool)

(assert (=> b!1558444 (= e!868209 (containsKey!841 (t!51220 l!1292) otherKey!62))))

(assert (= (and d!162611 (not res!1065974)) b!1558443))

(assert (= (and b!1558443 res!1065975) b!1558444))

(assert (=> b!1558444 m!1435037))

(assert (=> b!1558392 d!162611))

(declare-fun d!162615 () Bool)

(declare-fun res!1065976 () Bool)

(declare-fun e!868210 () Bool)

(assert (=> d!162615 (=> res!1065976 e!868210)))

(assert (=> d!162615 (= res!1065976 (and ((_ is Cons!36482) (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135)) (= (_1!12574 (h!37929 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162615 (= (containsKey!841 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135) otherKey!62) e!868210)))

(declare-fun b!1558445 () Bool)

(declare-fun e!868211 () Bool)

(assert (=> b!1558445 (= e!868210 e!868211)))

(declare-fun res!1065977 () Bool)

(assert (=> b!1558445 (=> (not res!1065977) (not e!868211))))

(assert (=> b!1558445 (= res!1065977 (and (or (not ((_ is Cons!36482) (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135))) (bvsle (_1!12574 (h!37929 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135))) otherKey!62)) ((_ is Cons!36482) (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135)) (bvslt (_1!12574 (h!37929 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1558446 () Bool)

(assert (=> b!1558446 (= e!868211 (containsKey!841 (t!51220 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162615 (not res!1065976)) b!1558445))

(assert (= (and b!1558445 res!1065977) b!1558446))

(declare-fun m!1435079 () Bool)

(assert (=> b!1558446 m!1435079))

(assert (=> b!1558396 d!162615))

(declare-fun d!162617 () Bool)

(declare-fun res!1065978 () Bool)

(declare-fun e!868212 () Bool)

(assert (=> d!162617 (=> res!1065978 e!868212)))

(assert (=> d!162617 (= res!1065978 (and ((_ is Cons!36482) (insertStrictlySorted!570 l!1292 newKey!135 newValue!135)) (= (_1!12574 (h!37929 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162617 (= (containsKey!841 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135) otherKey!62) e!868212)))

(declare-fun b!1558447 () Bool)

(declare-fun e!868213 () Bool)

(assert (=> b!1558447 (= e!868212 e!868213)))

(declare-fun res!1065979 () Bool)

(assert (=> b!1558447 (=> (not res!1065979) (not e!868213))))

(assert (=> b!1558447 (= res!1065979 (and (or (not ((_ is Cons!36482) (insertStrictlySorted!570 l!1292 newKey!135 newValue!135))) (bvsle (_1!12574 (h!37929 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135))) otherKey!62)) ((_ is Cons!36482) (insertStrictlySorted!570 l!1292 newKey!135 newValue!135)) (bvslt (_1!12574 (h!37929 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1558448 () Bool)

(assert (=> b!1558448 (= e!868213 (containsKey!841 (t!51220 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162617 (not res!1065978)) b!1558447))

(assert (= (and b!1558447 res!1065979) b!1558448))

(declare-fun m!1435081 () Bool)

(assert (=> b!1558448 m!1435081))

(assert (=> b!1558396 d!162617))

(declare-fun b!1558531 () Bool)

(declare-fun res!1066006 () Bool)

(declare-fun e!868262 () Bool)

(assert (=> b!1558531 (=> (not res!1066006) (not e!868262))))

(declare-fun lt!670723 () List!36486)

(assert (=> b!1558531 (= res!1066006 (containsKey!841 lt!670723 newKey!135))))

(declare-fun b!1558532 () Bool)

(declare-fun c!144068 () Bool)

(assert (=> b!1558532 (= c!144068 (and ((_ is Cons!36482) l!1292) (bvsgt (_1!12574 (h!37929 l!1292)) newKey!135)))))

(declare-fun e!868265 () List!36486)

(declare-fun e!868263 () List!36486)

(assert (=> b!1558532 (= e!868265 e!868263)))

(declare-fun b!1558533 () Bool)

(declare-fun call!71772 () List!36486)

(assert (=> b!1558533 (= e!868265 call!71772)))

(declare-fun b!1558534 () Bool)

(declare-fun contains!10218 (List!36486 tuple2!25128) Bool)

(assert (=> b!1558534 (= e!868262 (contains!10218 lt!670723 (tuple2!25129 newKey!135 newValue!135)))))

(declare-fun b!1558535 () Bool)

(declare-fun call!71770 () List!36486)

(assert (=> b!1558535 (= e!868263 call!71770)))

(declare-fun bm!71767 () Bool)

(assert (=> bm!71767 (= call!71770 call!71772)))

(declare-fun b!1558536 () Bool)

(assert (=> b!1558536 (= e!868263 call!71770)))

(declare-fun bm!71768 () Bool)

(declare-fun call!71771 () List!36486)

(assert (=> bm!71768 (= call!71772 call!71771)))

(declare-fun d!162619 () Bool)

(assert (=> d!162619 e!868262))

(declare-fun res!1066007 () Bool)

(assert (=> d!162619 (=> (not res!1066007) (not e!868262))))

(assert (=> d!162619 (= res!1066007 (isStrictlySorted!977 lt!670723))))

(declare-fun e!868264 () List!36486)

(assert (=> d!162619 (= lt!670723 e!868264)))

(declare-fun c!144067 () Bool)

(assert (=> d!162619 (= c!144067 (and ((_ is Cons!36482) l!1292) (bvslt (_1!12574 (h!37929 l!1292)) newKey!135)))))

(assert (=> d!162619 (isStrictlySorted!977 l!1292)))

(assert (=> d!162619 (= (insertStrictlySorted!570 l!1292 newKey!135 newValue!135) lt!670723)))

(declare-fun b!1558537 () Bool)

(assert (=> b!1558537 (= e!868264 e!868265)))

(declare-fun c!144070 () Bool)

(assert (=> b!1558537 (= c!144070 (and ((_ is Cons!36482) l!1292) (= (_1!12574 (h!37929 l!1292)) newKey!135)))))

(declare-fun b!1558538 () Bool)

(declare-fun e!868261 () List!36486)

(assert (=> b!1558538 (= e!868261 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135))))

(declare-fun b!1558539 () Bool)

(assert (=> b!1558539 (= e!868264 call!71771)))

(declare-fun bm!71769 () Bool)

(declare-fun $colon$colon!983 (List!36486 tuple2!25128) List!36486)

(assert (=> bm!71769 (= call!71771 ($colon$colon!983 e!868261 (ite c!144067 (h!37929 l!1292) (tuple2!25129 newKey!135 newValue!135))))))

(declare-fun c!144069 () Bool)

(assert (=> bm!71769 (= c!144069 c!144067)))

(declare-fun b!1558540 () Bool)

(assert (=> b!1558540 (= e!868261 (ite c!144070 (t!51220 l!1292) (ite c!144068 (Cons!36482 (h!37929 l!1292) (t!51220 l!1292)) Nil!36483)))))

(assert (= (and d!162619 c!144067) b!1558539))

(assert (= (and d!162619 (not c!144067)) b!1558537))

(assert (= (and b!1558537 c!144070) b!1558533))

(assert (= (and b!1558537 (not c!144070)) b!1558532))

(assert (= (and b!1558532 c!144068) b!1558535))

(assert (= (and b!1558532 (not c!144068)) b!1558536))

(assert (= (or b!1558535 b!1558536) bm!71767))

(assert (= (or b!1558533 bm!71767) bm!71768))

(assert (= (or b!1558539 bm!71768) bm!71769))

(assert (= (and bm!71769 c!144069) b!1558538))

(assert (= (and bm!71769 (not c!144069)) b!1558540))

(assert (= (and d!162619 res!1066007) b!1558531))

(assert (= (and b!1558531 res!1066006) b!1558534))

(assert (=> b!1558538 m!1435041))

(declare-fun m!1435097 () Bool)

(assert (=> d!162619 m!1435097))

(assert (=> d!162619 m!1435039))

(declare-fun m!1435099 () Bool)

(assert (=> bm!71769 m!1435099))

(declare-fun m!1435101 () Bool)

(assert (=> b!1558531 m!1435101))

(declare-fun m!1435103 () Bool)

(assert (=> b!1558534 m!1435103))

(assert (=> b!1558396 d!162619))

(declare-fun d!162631 () Bool)

(assert (=> d!162631 (containsKey!841 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-fun lt!670731 () Unit!51826)

(declare-fun choose!2076 (List!36486 (_ BitVec 64) B!2440 (_ BitVec 64)) Unit!51826)

(assert (=> d!162631 (= lt!670731 (choose!2076 (t!51220 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun e!868281 () Bool)

(assert (=> d!162631 e!868281))

(declare-fun res!1066022 () Bool)

(assert (=> d!162631 (=> (not res!1066022) (not e!868281))))

(assert (=> d!162631 (= res!1066022 (isStrictlySorted!977 (t!51220 l!1292)))))

(assert (=> d!162631 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!11 (t!51220 l!1292) newKey!135 newValue!135 otherKey!62) lt!670731)))

(declare-fun b!1558571 () Bool)

(declare-fun res!1066023 () Bool)

(assert (=> b!1558571 (=> (not res!1066023) (not e!868281))))

(assert (=> b!1558571 (= res!1066023 (containsKey!841 (t!51220 l!1292) otherKey!62))))

(declare-fun b!1558572 () Bool)

(assert (=> b!1558572 (= e!868281 (not (= otherKey!62 newKey!135)))))

(assert (= (and d!162631 res!1066022) b!1558571))

(assert (= (and b!1558571 res!1066023) b!1558572))

(assert (=> d!162631 m!1435041))

(assert (=> d!162631 m!1435041))

(assert (=> d!162631 m!1435043))

(declare-fun m!1435125 () Bool)

(assert (=> d!162631 m!1435125))

(assert (=> d!162631 m!1435035))

(assert (=> b!1558571 m!1435037))

(assert (=> b!1558396 d!162631))

(declare-fun b!1558573 () Bool)

(declare-fun res!1066024 () Bool)

(declare-fun e!868283 () Bool)

(assert (=> b!1558573 (=> (not res!1066024) (not e!868283))))

(declare-fun lt!670732 () List!36486)

(assert (=> b!1558573 (= res!1066024 (containsKey!841 lt!670732 newKey!135))))

(declare-fun b!1558574 () Bool)

(declare-fun c!144080 () Bool)

(assert (=> b!1558574 (= c!144080 (and ((_ is Cons!36482) (t!51220 l!1292)) (bvsgt (_1!12574 (h!37929 (t!51220 l!1292))) newKey!135)))))

(declare-fun e!868286 () List!36486)

(declare-fun e!868284 () List!36486)

(assert (=> b!1558574 (= e!868286 e!868284)))

(declare-fun b!1558575 () Bool)

(declare-fun call!71781 () List!36486)

(assert (=> b!1558575 (= e!868286 call!71781)))

(declare-fun b!1558576 () Bool)

(assert (=> b!1558576 (= e!868283 (contains!10218 lt!670732 (tuple2!25129 newKey!135 newValue!135)))))

(declare-fun b!1558577 () Bool)

(declare-fun call!71779 () List!36486)

(assert (=> b!1558577 (= e!868284 call!71779)))

(declare-fun bm!71776 () Bool)

(assert (=> bm!71776 (= call!71779 call!71781)))

(declare-fun b!1558578 () Bool)

(assert (=> b!1558578 (= e!868284 call!71779)))

(declare-fun bm!71777 () Bool)

(declare-fun call!71780 () List!36486)

(assert (=> bm!71777 (= call!71781 call!71780)))

(declare-fun d!162639 () Bool)

(assert (=> d!162639 e!868283))

(declare-fun res!1066025 () Bool)

(assert (=> d!162639 (=> (not res!1066025) (not e!868283))))

(assert (=> d!162639 (= res!1066025 (isStrictlySorted!977 lt!670732))))

(declare-fun e!868285 () List!36486)

(assert (=> d!162639 (= lt!670732 e!868285)))

(declare-fun c!144079 () Bool)

(assert (=> d!162639 (= c!144079 (and ((_ is Cons!36482) (t!51220 l!1292)) (bvslt (_1!12574 (h!37929 (t!51220 l!1292))) newKey!135)))))

(assert (=> d!162639 (isStrictlySorted!977 (t!51220 l!1292))))

(assert (=> d!162639 (= (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135) lt!670732)))

(declare-fun b!1558579 () Bool)

(assert (=> b!1558579 (= e!868285 e!868286)))

(declare-fun c!144082 () Bool)

(assert (=> b!1558579 (= c!144082 (and ((_ is Cons!36482) (t!51220 l!1292)) (= (_1!12574 (h!37929 (t!51220 l!1292))) newKey!135)))))

(declare-fun e!868282 () List!36486)

(declare-fun b!1558580 () Bool)

(assert (=> b!1558580 (= e!868282 (insertStrictlySorted!570 (t!51220 (t!51220 l!1292)) newKey!135 newValue!135))))

(declare-fun b!1558581 () Bool)

(assert (=> b!1558581 (= e!868285 call!71780)))

(declare-fun bm!71778 () Bool)

(assert (=> bm!71778 (= call!71780 ($colon$colon!983 e!868282 (ite c!144079 (h!37929 (t!51220 l!1292)) (tuple2!25129 newKey!135 newValue!135))))))

(declare-fun c!144081 () Bool)

(assert (=> bm!71778 (= c!144081 c!144079)))

(declare-fun b!1558582 () Bool)

(assert (=> b!1558582 (= e!868282 (ite c!144082 (t!51220 (t!51220 l!1292)) (ite c!144080 (Cons!36482 (h!37929 (t!51220 l!1292)) (t!51220 (t!51220 l!1292))) Nil!36483)))))

(assert (= (and d!162639 c!144079) b!1558581))

(assert (= (and d!162639 (not c!144079)) b!1558579))

(assert (= (and b!1558579 c!144082) b!1558575))

(assert (= (and b!1558579 (not c!144082)) b!1558574))

(assert (= (and b!1558574 c!144080) b!1558577))

(assert (= (and b!1558574 (not c!144080)) b!1558578))

(assert (= (or b!1558577 b!1558578) bm!71776))

(assert (= (or b!1558575 bm!71776) bm!71777))

(assert (= (or b!1558581 bm!71777) bm!71778))

(assert (= (and bm!71778 c!144081) b!1558580))

(assert (= (and bm!71778 (not c!144081)) b!1558582))

(assert (= (and d!162639 res!1066025) b!1558573))

(assert (= (and b!1558573 res!1066024) b!1558576))

(declare-fun m!1435127 () Bool)

(assert (=> b!1558580 m!1435127))

(declare-fun m!1435129 () Bool)

(assert (=> d!162639 m!1435129))

(assert (=> d!162639 m!1435035))

(declare-fun m!1435131 () Bool)

(assert (=> bm!71778 m!1435131))

(declare-fun m!1435133 () Bool)

(assert (=> b!1558573 m!1435133))

(declare-fun m!1435135 () Bool)

(assert (=> b!1558576 m!1435135))

(assert (=> b!1558396 d!162639))

(declare-fun d!162641 () Bool)

(declare-fun res!1066034 () Bool)

(declare-fun e!868293 () Bool)

(assert (=> d!162641 (=> res!1066034 e!868293)))

(assert (=> d!162641 (= res!1066034 (or ((_ is Nil!36483) (t!51220 l!1292)) ((_ is Nil!36483) (t!51220 (t!51220 l!1292)))))))

(assert (=> d!162641 (= (isStrictlySorted!977 (t!51220 l!1292)) e!868293)))

(declare-fun b!1558591 () Bool)

(declare-fun e!868294 () Bool)

(assert (=> b!1558591 (= e!868293 e!868294)))

(declare-fun res!1066035 () Bool)

(assert (=> b!1558591 (=> (not res!1066035) (not e!868294))))

(assert (=> b!1558591 (= res!1066035 (bvslt (_1!12574 (h!37929 (t!51220 l!1292))) (_1!12574 (h!37929 (t!51220 (t!51220 l!1292))))))))

(declare-fun b!1558592 () Bool)

(assert (=> b!1558592 (= e!868294 (isStrictlySorted!977 (t!51220 (t!51220 l!1292))))))

(assert (= (and d!162641 (not res!1066034)) b!1558591))

(assert (= (and b!1558591 res!1066035) b!1558592))

(declare-fun m!1435137 () Bool)

(assert (=> b!1558592 m!1435137))

(assert (=> b!1558395 d!162641))

(declare-fun b!1558601 () Bool)

(declare-fun e!868301 () Bool)

(declare-fun tp!112666 () Bool)

(assert (=> b!1558601 (= e!868301 (and tp_is_empty!38445 tp!112666))))

(assert (=> b!1558391 (= tp!112660 e!868301)))

(assert (= (and b!1558391 ((_ is Cons!36482) (t!51220 l!1292))) b!1558601))

(check-sat (not b!1558440) (not b!1558538) (not d!162639) (not bm!71769) (not b!1558444) (not b!1558446) (not d!162619) (not b!1558422) (not b!1558576) tp_is_empty!38445 (not d!162631) (not b!1558571) (not b!1558448) (not b!1558601) (not b!1558531) (not b!1558534) (not b!1558573) (not b!1558580) (not bm!71778) (not b!1558592))
(check-sat)
(get-model)

(declare-fun d!162651 () Bool)

(declare-fun res!1066048 () Bool)

(declare-fun e!868318 () Bool)

(assert (=> d!162651 (=> res!1066048 e!868318)))

(assert (=> d!162651 (= res!1066048 (and ((_ is Cons!36482) (t!51220 (t!51220 l!1292))) (= (_1!12574 (h!37929 (t!51220 (t!51220 l!1292)))) otherKey!62)))))

(assert (=> d!162651 (= (containsKey!841 (t!51220 (t!51220 l!1292)) otherKey!62) e!868318)))

(declare-fun b!1558628 () Bool)

(declare-fun e!868319 () Bool)

(assert (=> b!1558628 (= e!868318 e!868319)))

(declare-fun res!1066049 () Bool)

(assert (=> b!1558628 (=> (not res!1066049) (not e!868319))))

(assert (=> b!1558628 (= res!1066049 (and (or (not ((_ is Cons!36482) (t!51220 (t!51220 l!1292)))) (bvsle (_1!12574 (h!37929 (t!51220 (t!51220 l!1292)))) otherKey!62)) ((_ is Cons!36482) (t!51220 (t!51220 l!1292))) (bvslt (_1!12574 (h!37929 (t!51220 (t!51220 l!1292)))) otherKey!62)))))

(declare-fun b!1558629 () Bool)

(assert (=> b!1558629 (= e!868319 (containsKey!841 (t!51220 (t!51220 (t!51220 l!1292))) otherKey!62))))

(assert (= (and d!162651 (not res!1066048)) b!1558628))

(assert (= (and b!1558628 res!1066049) b!1558629))

(declare-fun m!1435155 () Bool)

(assert (=> b!1558629 m!1435155))

(assert (=> b!1558422 d!162651))

(declare-fun lt!670739 () Bool)

(declare-fun d!162653 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!805 (List!36486) (InoxSet tuple2!25128))

(assert (=> d!162653 (= lt!670739 (select (content!805 lt!670732) (tuple2!25129 newKey!135 newValue!135)))))

(declare-fun e!868324 () Bool)

(assert (=> d!162653 (= lt!670739 e!868324)))

(declare-fun res!1066055 () Bool)

(assert (=> d!162653 (=> (not res!1066055) (not e!868324))))

(assert (=> d!162653 (= res!1066055 ((_ is Cons!36482) lt!670732))))

(assert (=> d!162653 (= (contains!10218 lt!670732 (tuple2!25129 newKey!135 newValue!135)) lt!670739)))

(declare-fun b!1558634 () Bool)

(declare-fun e!868325 () Bool)

(assert (=> b!1558634 (= e!868324 e!868325)))

(declare-fun res!1066054 () Bool)

(assert (=> b!1558634 (=> res!1066054 e!868325)))

(assert (=> b!1558634 (= res!1066054 (= (h!37929 lt!670732) (tuple2!25129 newKey!135 newValue!135)))))

(declare-fun b!1558635 () Bool)

(assert (=> b!1558635 (= e!868325 (contains!10218 (t!51220 lt!670732) (tuple2!25129 newKey!135 newValue!135)))))

(assert (= (and d!162653 res!1066055) b!1558634))

(assert (= (and b!1558634 (not res!1066054)) b!1558635))

(declare-fun m!1435157 () Bool)

(assert (=> d!162653 m!1435157))

(declare-fun m!1435159 () Bool)

(assert (=> d!162653 m!1435159))

(declare-fun m!1435161 () Bool)

(assert (=> b!1558635 m!1435161))

(assert (=> b!1558576 d!162653))

(declare-fun d!162655 () Bool)

(declare-fun res!1066056 () Bool)

(declare-fun e!868326 () Bool)

(assert (=> d!162655 (=> res!1066056 e!868326)))

(assert (=> d!162655 (= res!1066056 (and ((_ is Cons!36482) (t!51220 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135))) (= (_1!12574 (h!37929 (t!51220 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(assert (=> d!162655 (= (containsKey!841 (t!51220 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135)) otherKey!62) e!868326)))

(declare-fun b!1558636 () Bool)

(declare-fun e!868327 () Bool)

(assert (=> b!1558636 (= e!868326 e!868327)))

(declare-fun res!1066057 () Bool)

(assert (=> b!1558636 (=> (not res!1066057) (not e!868327))))

(assert (=> b!1558636 (= res!1066057 (and (or (not ((_ is Cons!36482) (t!51220 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135)))) (bvsle (_1!12574 (h!37929 (t!51220 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135)))) otherKey!62)) ((_ is Cons!36482) (t!51220 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135))) (bvslt (_1!12574 (h!37929 (t!51220 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(declare-fun b!1558637 () Bool)

(assert (=> b!1558637 (= e!868327 (containsKey!841 (t!51220 (t!51220 (insertStrictlySorted!570 l!1292 newKey!135 newValue!135))) otherKey!62))))

(assert (= (and d!162655 (not res!1066056)) b!1558636))

(assert (= (and b!1558636 res!1066057) b!1558637))

(declare-fun m!1435163 () Bool)

(assert (=> b!1558637 m!1435163))

(assert (=> b!1558448 d!162655))

(declare-fun d!162657 () Bool)

(declare-fun lt!670740 () Bool)

(assert (=> d!162657 (= lt!670740 (select (content!805 lt!670723) (tuple2!25129 newKey!135 newValue!135)))))

(declare-fun e!868328 () Bool)

(assert (=> d!162657 (= lt!670740 e!868328)))

(declare-fun res!1066059 () Bool)

(assert (=> d!162657 (=> (not res!1066059) (not e!868328))))

(assert (=> d!162657 (= res!1066059 ((_ is Cons!36482) lt!670723))))

(assert (=> d!162657 (= (contains!10218 lt!670723 (tuple2!25129 newKey!135 newValue!135)) lt!670740)))

(declare-fun b!1558638 () Bool)

(declare-fun e!868329 () Bool)

(assert (=> b!1558638 (= e!868328 e!868329)))

(declare-fun res!1066058 () Bool)

(assert (=> b!1558638 (=> res!1066058 e!868329)))

(assert (=> b!1558638 (= res!1066058 (= (h!37929 lt!670723) (tuple2!25129 newKey!135 newValue!135)))))

(declare-fun b!1558639 () Bool)

(assert (=> b!1558639 (= e!868329 (contains!10218 (t!51220 lt!670723) (tuple2!25129 newKey!135 newValue!135)))))

(assert (= (and d!162657 res!1066059) b!1558638))

(assert (= (and b!1558638 (not res!1066058)) b!1558639))

(declare-fun m!1435165 () Bool)

(assert (=> d!162657 m!1435165))

(declare-fun m!1435167 () Bool)

(assert (=> d!162657 m!1435167))

(declare-fun m!1435169 () Bool)

(assert (=> b!1558639 m!1435169))

(assert (=> b!1558534 d!162657))

(assert (=> b!1558440 d!162641))

(declare-fun d!162659 () Bool)

(declare-fun res!1066060 () Bool)

(declare-fun e!868330 () Bool)

(assert (=> d!162659 (=> res!1066060 e!868330)))

(assert (=> d!162659 (= res!1066060 (or ((_ is Nil!36483) lt!670732) ((_ is Nil!36483) (t!51220 lt!670732))))))

(assert (=> d!162659 (= (isStrictlySorted!977 lt!670732) e!868330)))

(declare-fun b!1558640 () Bool)

(declare-fun e!868331 () Bool)

(assert (=> b!1558640 (= e!868330 e!868331)))

(declare-fun res!1066061 () Bool)

(assert (=> b!1558640 (=> (not res!1066061) (not e!868331))))

(assert (=> b!1558640 (= res!1066061 (bvslt (_1!12574 (h!37929 lt!670732)) (_1!12574 (h!37929 (t!51220 lt!670732)))))))

(declare-fun b!1558641 () Bool)

(assert (=> b!1558641 (= e!868331 (isStrictlySorted!977 (t!51220 lt!670732)))))

(assert (= (and d!162659 (not res!1066060)) b!1558640))

(assert (= (and b!1558640 res!1066061) b!1558641))

(declare-fun m!1435171 () Bool)

(assert (=> b!1558641 m!1435171))

(assert (=> d!162639 d!162659))

(assert (=> d!162639 d!162641))

(assert (=> b!1558444 d!162597))

(declare-fun d!162661 () Bool)

(declare-fun res!1066062 () Bool)

(declare-fun e!868332 () Bool)

(assert (=> d!162661 (=> res!1066062 e!868332)))

(assert (=> d!162661 (= res!1066062 (and ((_ is Cons!36482) (t!51220 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135))) (= (_1!12574 (h!37929 (t!51220 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135)))) otherKey!62)))))

(assert (=> d!162661 (= (containsKey!841 (t!51220 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135)) otherKey!62) e!868332)))

(declare-fun b!1558642 () Bool)

(declare-fun e!868333 () Bool)

(assert (=> b!1558642 (= e!868332 e!868333)))

(declare-fun res!1066063 () Bool)

(assert (=> b!1558642 (=> (not res!1066063) (not e!868333))))

(assert (=> b!1558642 (= res!1066063 (and (or (not ((_ is Cons!36482) (t!51220 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135)))) (bvsle (_1!12574 (h!37929 (t!51220 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135)))) otherKey!62)) ((_ is Cons!36482) (t!51220 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135))) (bvslt (_1!12574 (h!37929 (t!51220 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135)))) otherKey!62)))))

(declare-fun b!1558643 () Bool)

(assert (=> b!1558643 (= e!868333 (containsKey!841 (t!51220 (t!51220 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135))) otherKey!62))))

(assert (= (and d!162661 (not res!1066062)) b!1558642))

(assert (= (and b!1558642 res!1066063) b!1558643))

(declare-fun m!1435173 () Bool)

(assert (=> b!1558643 m!1435173))

(assert (=> b!1558446 d!162661))

(assert (=> b!1558538 d!162639))

(declare-fun d!162663 () Bool)

(declare-fun res!1066064 () Bool)

(declare-fun e!868334 () Bool)

(assert (=> d!162663 (=> res!1066064 e!868334)))

(assert (=> d!162663 (= res!1066064 (or ((_ is Nil!36483) lt!670723) ((_ is Nil!36483) (t!51220 lt!670723))))))

(assert (=> d!162663 (= (isStrictlySorted!977 lt!670723) e!868334)))

(declare-fun b!1558644 () Bool)

(declare-fun e!868335 () Bool)

(assert (=> b!1558644 (= e!868334 e!868335)))

(declare-fun res!1066065 () Bool)

(assert (=> b!1558644 (=> (not res!1066065) (not e!868335))))

(assert (=> b!1558644 (= res!1066065 (bvslt (_1!12574 (h!37929 lt!670723)) (_1!12574 (h!37929 (t!51220 lt!670723)))))))

(declare-fun b!1558645 () Bool)

(assert (=> b!1558645 (= e!868335 (isStrictlySorted!977 (t!51220 lt!670723)))))

(assert (= (and d!162663 (not res!1066064)) b!1558644))

(assert (= (and b!1558644 res!1066065) b!1558645))

(declare-fun m!1435175 () Bool)

(assert (=> b!1558645 m!1435175))

(assert (=> d!162619 d!162663))

(assert (=> d!162619 d!162603))

(declare-fun d!162665 () Bool)

(assert (=> d!162665 (= ($colon$colon!983 e!868282 (ite c!144079 (h!37929 (t!51220 l!1292)) (tuple2!25129 newKey!135 newValue!135))) (Cons!36482 (ite c!144079 (h!37929 (t!51220 l!1292)) (tuple2!25129 newKey!135 newValue!135)) e!868282))))

(assert (=> bm!71778 d!162665))

(assert (=> b!1558571 d!162597))

(declare-fun d!162667 () Bool)

(declare-fun res!1066066 () Bool)

(declare-fun e!868336 () Bool)

(assert (=> d!162667 (=> res!1066066 e!868336)))

(assert (=> d!162667 (= res!1066066 (and ((_ is Cons!36482) lt!670732) (= (_1!12574 (h!37929 lt!670732)) newKey!135)))))

(assert (=> d!162667 (= (containsKey!841 lt!670732 newKey!135) e!868336)))

(declare-fun b!1558646 () Bool)

(declare-fun e!868337 () Bool)

(assert (=> b!1558646 (= e!868336 e!868337)))

(declare-fun res!1066067 () Bool)

(assert (=> b!1558646 (=> (not res!1066067) (not e!868337))))

(assert (=> b!1558646 (= res!1066067 (and (or (not ((_ is Cons!36482) lt!670732)) (bvsle (_1!12574 (h!37929 lt!670732)) newKey!135)) ((_ is Cons!36482) lt!670732) (bvslt (_1!12574 (h!37929 lt!670732)) newKey!135)))))

(declare-fun b!1558647 () Bool)

(assert (=> b!1558647 (= e!868337 (containsKey!841 (t!51220 lt!670732) newKey!135))))

(assert (= (and d!162667 (not res!1066066)) b!1558646))

(assert (= (and b!1558646 res!1066067) b!1558647))

(declare-fun m!1435177 () Bool)

(assert (=> b!1558647 m!1435177))

(assert (=> b!1558573 d!162667))

(declare-fun d!162669 () Bool)

(assert (=> d!162669 (= ($colon$colon!983 e!868261 (ite c!144067 (h!37929 l!1292) (tuple2!25129 newKey!135 newValue!135))) (Cons!36482 (ite c!144067 (h!37929 l!1292) (tuple2!25129 newKey!135 newValue!135)) e!868261))))

(assert (=> bm!71769 d!162669))

(declare-fun d!162671 () Bool)

(declare-fun res!1066068 () Bool)

(declare-fun e!868338 () Bool)

(assert (=> d!162671 (=> res!1066068 e!868338)))

(assert (=> d!162671 (= res!1066068 (or ((_ is Nil!36483) (t!51220 (t!51220 l!1292))) ((_ is Nil!36483) (t!51220 (t!51220 (t!51220 l!1292))))))))

(assert (=> d!162671 (= (isStrictlySorted!977 (t!51220 (t!51220 l!1292))) e!868338)))

(declare-fun b!1558648 () Bool)

(declare-fun e!868339 () Bool)

(assert (=> b!1558648 (= e!868338 e!868339)))

(declare-fun res!1066069 () Bool)

(assert (=> b!1558648 (=> (not res!1066069) (not e!868339))))

(assert (=> b!1558648 (= res!1066069 (bvslt (_1!12574 (h!37929 (t!51220 (t!51220 l!1292)))) (_1!12574 (h!37929 (t!51220 (t!51220 (t!51220 l!1292)))))))))

(declare-fun b!1558649 () Bool)

(assert (=> b!1558649 (= e!868339 (isStrictlySorted!977 (t!51220 (t!51220 (t!51220 l!1292)))))))

(assert (= (and d!162671 (not res!1066068)) b!1558648))

(assert (= (and b!1558648 res!1066069) b!1558649))

(declare-fun m!1435179 () Bool)

(assert (=> b!1558649 m!1435179))

(assert (=> b!1558592 d!162671))

(assert (=> d!162631 d!162615))

(assert (=> d!162631 d!162639))

(declare-fun d!162673 () Bool)

(assert (=> d!162673 (containsKey!841 (insertStrictlySorted!570 (t!51220 l!1292) newKey!135 newValue!135) otherKey!62)))

(assert (=> d!162673 true))

(declare-fun _$18!41 () Unit!51826)

(assert (=> d!162673 (= (choose!2076 (t!51220 l!1292) newKey!135 newValue!135 otherKey!62) _$18!41)))

(declare-fun bs!44793 () Bool)

(assert (= bs!44793 d!162673))

(assert (=> bs!44793 m!1435041))

(assert (=> bs!44793 m!1435041))

(assert (=> bs!44793 m!1435043))

(assert (=> d!162631 d!162673))

(assert (=> d!162631 d!162641))

(declare-fun b!1558650 () Bool)

(declare-fun res!1066070 () Bool)

(declare-fun e!868341 () Bool)

(assert (=> b!1558650 (=> (not res!1066070) (not e!868341))))

(declare-fun lt!670741 () List!36486)

(assert (=> b!1558650 (= res!1066070 (containsKey!841 lt!670741 newKey!135))))

(declare-fun b!1558651 () Bool)

(declare-fun c!144088 () Bool)

(assert (=> b!1558651 (= c!144088 (and ((_ is Cons!36482) (t!51220 (t!51220 l!1292))) (bvsgt (_1!12574 (h!37929 (t!51220 (t!51220 l!1292)))) newKey!135)))))

(declare-fun e!868344 () List!36486)

(declare-fun e!868342 () List!36486)

(assert (=> b!1558651 (= e!868344 e!868342)))

(declare-fun b!1558652 () Bool)

(declare-fun call!71787 () List!36486)

(assert (=> b!1558652 (= e!868344 call!71787)))

(declare-fun b!1558653 () Bool)

(assert (=> b!1558653 (= e!868341 (contains!10218 lt!670741 (tuple2!25129 newKey!135 newValue!135)))))

(declare-fun b!1558654 () Bool)

(declare-fun call!71785 () List!36486)

(assert (=> b!1558654 (= e!868342 call!71785)))

(declare-fun bm!71782 () Bool)

(assert (=> bm!71782 (= call!71785 call!71787)))

(declare-fun b!1558655 () Bool)

(assert (=> b!1558655 (= e!868342 call!71785)))

(declare-fun bm!71783 () Bool)

(declare-fun call!71786 () List!36486)

(assert (=> bm!71783 (= call!71787 call!71786)))

(declare-fun d!162675 () Bool)

(assert (=> d!162675 e!868341))

(declare-fun res!1066071 () Bool)

(assert (=> d!162675 (=> (not res!1066071) (not e!868341))))

(assert (=> d!162675 (= res!1066071 (isStrictlySorted!977 lt!670741))))

(declare-fun e!868343 () List!36486)

(assert (=> d!162675 (= lt!670741 e!868343)))

(declare-fun c!144087 () Bool)

(assert (=> d!162675 (= c!144087 (and ((_ is Cons!36482) (t!51220 (t!51220 l!1292))) (bvslt (_1!12574 (h!37929 (t!51220 (t!51220 l!1292)))) newKey!135)))))

(assert (=> d!162675 (isStrictlySorted!977 (t!51220 (t!51220 l!1292)))))

(assert (=> d!162675 (= (insertStrictlySorted!570 (t!51220 (t!51220 l!1292)) newKey!135 newValue!135) lt!670741)))

(declare-fun b!1558656 () Bool)

(assert (=> b!1558656 (= e!868343 e!868344)))

(declare-fun c!144090 () Bool)

(assert (=> b!1558656 (= c!144090 (and ((_ is Cons!36482) (t!51220 (t!51220 l!1292))) (= (_1!12574 (h!37929 (t!51220 (t!51220 l!1292)))) newKey!135)))))

(declare-fun e!868340 () List!36486)

(declare-fun b!1558657 () Bool)

(assert (=> b!1558657 (= e!868340 (insertStrictlySorted!570 (t!51220 (t!51220 (t!51220 l!1292))) newKey!135 newValue!135))))

(declare-fun b!1558658 () Bool)

(assert (=> b!1558658 (= e!868343 call!71786)))

(declare-fun bm!71784 () Bool)

(assert (=> bm!71784 (= call!71786 ($colon$colon!983 e!868340 (ite c!144087 (h!37929 (t!51220 (t!51220 l!1292))) (tuple2!25129 newKey!135 newValue!135))))))

(declare-fun c!144089 () Bool)

(assert (=> bm!71784 (= c!144089 c!144087)))

(declare-fun b!1558659 () Bool)

(assert (=> b!1558659 (= e!868340 (ite c!144090 (t!51220 (t!51220 (t!51220 l!1292))) (ite c!144088 (Cons!36482 (h!37929 (t!51220 (t!51220 l!1292))) (t!51220 (t!51220 (t!51220 l!1292)))) Nil!36483)))))

(assert (= (and d!162675 c!144087) b!1558658))

(assert (= (and d!162675 (not c!144087)) b!1558656))

(assert (= (and b!1558656 c!144090) b!1558652))

(assert (= (and b!1558656 (not c!144090)) b!1558651))

(assert (= (and b!1558651 c!144088) b!1558654))

(assert (= (and b!1558651 (not c!144088)) b!1558655))

(assert (= (or b!1558654 b!1558655) bm!71782))

(assert (= (or b!1558652 bm!71782) bm!71783))

(assert (= (or b!1558658 bm!71783) bm!71784))

(assert (= (and bm!71784 c!144089) b!1558657))

(assert (= (and bm!71784 (not c!144089)) b!1558659))

(assert (= (and d!162675 res!1066071) b!1558650))

(assert (= (and b!1558650 res!1066070) b!1558653))

(declare-fun m!1435181 () Bool)

(assert (=> b!1558657 m!1435181))

(declare-fun m!1435183 () Bool)

(assert (=> d!162675 m!1435183))

(assert (=> d!162675 m!1435137))

(declare-fun m!1435185 () Bool)

(assert (=> bm!71784 m!1435185))

(declare-fun m!1435187 () Bool)

(assert (=> b!1558650 m!1435187))

(declare-fun m!1435189 () Bool)

(assert (=> b!1558653 m!1435189))

(assert (=> b!1558580 d!162675))

(declare-fun d!162677 () Bool)

(declare-fun res!1066072 () Bool)

(declare-fun e!868345 () Bool)

(assert (=> d!162677 (=> res!1066072 e!868345)))

(assert (=> d!162677 (= res!1066072 (and ((_ is Cons!36482) lt!670723) (= (_1!12574 (h!37929 lt!670723)) newKey!135)))))

(assert (=> d!162677 (= (containsKey!841 lt!670723 newKey!135) e!868345)))

(declare-fun b!1558660 () Bool)

(declare-fun e!868346 () Bool)

(assert (=> b!1558660 (= e!868345 e!868346)))

(declare-fun res!1066073 () Bool)

(assert (=> b!1558660 (=> (not res!1066073) (not e!868346))))

(assert (=> b!1558660 (= res!1066073 (and (or (not ((_ is Cons!36482) lt!670723)) (bvsle (_1!12574 (h!37929 lt!670723)) newKey!135)) ((_ is Cons!36482) lt!670723) (bvslt (_1!12574 (h!37929 lt!670723)) newKey!135)))))

(declare-fun b!1558661 () Bool)

(assert (=> b!1558661 (= e!868346 (containsKey!841 (t!51220 lt!670723) newKey!135))))

(assert (= (and d!162677 (not res!1066072)) b!1558660))

(assert (= (and b!1558660 res!1066073) b!1558661))

(declare-fun m!1435191 () Bool)

(assert (=> b!1558661 m!1435191))

(assert (=> b!1558531 d!162677))

(declare-fun b!1558662 () Bool)

(declare-fun e!868347 () Bool)

(declare-fun tp!112673 () Bool)

(assert (=> b!1558662 (= e!868347 (and tp_is_empty!38445 tp!112673))))

(assert (=> b!1558601 (= tp!112666 e!868347)))

(assert (= (and b!1558601 ((_ is Cons!36482) (t!51220 (t!51220 l!1292)))) b!1558662))

(check-sat (not b!1558653) tp_is_empty!38445 (not b!1558643) (not b!1558637) (not d!162675) (not b!1558661) (not b!1558657) (not b!1558647) (not b!1558641) (not b!1558662) (not bm!71784) (not b!1558650) (not d!162653) (not d!162673) (not b!1558635) (not d!162657) (not b!1558639) (not b!1558629) (not b!1558649) (not b!1558645))
(check-sat)
