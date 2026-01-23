; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!507986 () Bool)

(assert start!507986)

(declare-fun res!2075099 () Bool)

(declare-fun e!3039130 () Bool)

(assert (=> start!507986 (=> (not res!2075099) (not e!3039130))))

(declare-datatypes ((V!17915 0))(
  ( (V!17916 (val!22473 Int)) )
))
(declare-datatypes ((K!17645 0))(
  ( (K!17646 (val!22474 Int)) )
))
(declare-datatypes ((tuple2!59646 0))(
  ( (tuple2!59647 (_1!33126 K!17645) (_2!33126 V!17915)) )
))
(declare-datatypes ((List!55944 0))(
  ( (Nil!55820) (Cons!55820 (h!62268 tuple2!59646) (t!363564 List!55944)) )
))
(declare-datatypes ((tuple2!59648 0))(
  ( (tuple2!59649 (_1!33127 (_ BitVec 64)) (_2!33127 List!55944)) )
))
(declare-datatypes ((List!55945 0))(
  ( (Nil!55821) (Cons!55821 (h!62269 tuple2!59648) (t!363565 List!55945)) )
))
(declare-fun l!10962 () List!55945)

(declare-fun lambda!243144 () Int)

(declare-fun forall!13025 (List!55945 Int) Bool)

(assert (=> start!507986 (= res!2075099 (forall!13025 l!10962 lambda!243144))))

(assert (=> start!507986 e!3039130))

(declare-fun e!3039131 () Bool)

(assert (=> start!507986 e!3039131))

(declare-fun b!4860944 () Bool)

(declare-fun res!2075098 () Bool)

(assert (=> b!4860944 (=> (not res!2075098) (not e!3039130))))

(assert (=> b!4860944 (= res!2075098 (is-Cons!55821 l!10962))))

(declare-fun b!4860945 () Bool)

(declare-fun noDuplicateKeys!2649 (List!55944) Bool)

(assert (=> b!4860945 (= e!3039130 (not (noDuplicateKeys!2649 (_2!33127 (h!62269 l!10962)))))))

(declare-datatypes ((ListMap!7169 0))(
  ( (ListMap!7170 (toList!7926 List!55944)) )
))
(declare-fun lt!1992345 () ListMap!7169)

(declare-fun extractMap!2796 (List!55945) ListMap!7169)

(assert (=> b!4860945 (= lt!1992345 (extractMap!2796 (t!363565 l!10962)))))

(declare-fun b!4860946 () Bool)

(declare-fun tp!1367596 () Bool)

(declare-fun tp!1367597 () Bool)

(assert (=> b!4860946 (= e!3039131 (and tp!1367596 tp!1367597))))

(assert (= (and start!507986 res!2075099) b!4860944))

(assert (= (and b!4860944 res!2075098) b!4860945))

(assert (= (and start!507986 (is-Cons!55821 l!10962)) b!4860946))

(declare-fun m!5858786 () Bool)

(assert (=> start!507986 m!5858786))

(declare-fun m!5858788 () Bool)

(assert (=> b!4860945 m!5858788))

(declare-fun m!5858790 () Bool)

(assert (=> b!4860945 m!5858790))

(push 1)

(assert (not start!507986))

(assert (not b!4860945))

(assert (not b!4860946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560219 () Bool)

(declare-fun res!2075110 () Bool)

(declare-fun e!3039142 () Bool)

(assert (=> d!1560219 (=> res!2075110 e!3039142)))

(assert (=> d!1560219 (= res!2075110 (is-Nil!55821 l!10962))))

(assert (=> d!1560219 (= (forall!13025 l!10962 lambda!243144) e!3039142)))

(declare-fun b!4860960 () Bool)

(declare-fun e!3039143 () Bool)

(assert (=> b!4860960 (= e!3039142 e!3039143)))

(declare-fun res!2075111 () Bool)

(assert (=> b!4860960 (=> (not res!2075111) (not e!3039143))))

(declare-fun dynLambda!22398 (Int tuple2!59648) Bool)

(assert (=> b!4860960 (= res!2075111 (dynLambda!22398 lambda!243144 (h!62269 l!10962)))))

(declare-fun b!4860961 () Bool)

(assert (=> b!4860961 (= e!3039143 (forall!13025 (t!363565 l!10962) lambda!243144))))

(assert (= (and d!1560219 (not res!2075110)) b!4860960))

(assert (= (and b!4860960 res!2075111) b!4860961))

(declare-fun b_lambda!193329 () Bool)

(assert (=> (not b_lambda!193329) (not b!4860960)))

(declare-fun m!5858798 () Bool)

(assert (=> b!4860960 m!5858798))

(declare-fun m!5858800 () Bool)

(assert (=> b!4860961 m!5858800))

(assert (=> start!507986 d!1560219))

(declare-fun d!1560223 () Bool)

(declare-fun res!2075120 () Bool)

(declare-fun e!3039152 () Bool)

(assert (=> d!1560223 (=> res!2075120 e!3039152)))

(assert (=> d!1560223 (= res!2075120 (not (is-Cons!55820 (_2!33127 (h!62269 l!10962)))))))

(assert (=> d!1560223 (= (noDuplicateKeys!2649 (_2!33127 (h!62269 l!10962))) e!3039152)))

(declare-fun b!4860970 () Bool)

(declare-fun e!3039153 () Bool)

(assert (=> b!4860970 (= e!3039152 e!3039153)))

(declare-fun res!2075121 () Bool)

(assert (=> b!4860970 (=> (not res!2075121) (not e!3039153))))

(declare-fun containsKey!4775 (List!55944 K!17645) Bool)

(assert (=> b!4860970 (= res!2075121 (not (containsKey!4775 (t!363564 (_2!33127 (h!62269 l!10962))) (_1!33126 (h!62268 (_2!33127 (h!62269 l!10962)))))))))

(declare-fun b!4860971 () Bool)

(assert (=> b!4860971 (= e!3039153 (noDuplicateKeys!2649 (t!363564 (_2!33127 (h!62269 l!10962)))))))

(assert (= (and d!1560223 (not res!2075120)) b!4860970))

(assert (= (and b!4860970 res!2075121) b!4860971))

(declare-fun m!5858802 () Bool)

(assert (=> b!4860970 m!5858802))

(declare-fun m!5858804 () Bool)

(assert (=> b!4860971 m!5858804))

(assert (=> b!4860945 d!1560223))

(declare-fun bs!1173900 () Bool)

(declare-fun d!1560225 () Bool)

(assert (= bs!1173900 (and d!1560225 start!507986)))

(declare-fun lambda!243150 () Int)

(assert (=> bs!1173900 (= lambda!243150 lambda!243144)))

(declare-fun lt!1992351 () ListMap!7169)

(declare-fun invariantList!1900 (List!55944) Bool)

(assert (=> d!1560225 (invariantList!1900 (toList!7926 lt!1992351))))

(declare-fun e!3039164 () ListMap!7169)

(assert (=> d!1560225 (= lt!1992351 e!3039164)))

(declare-fun c!826821 () Bool)

(assert (=> d!1560225 (= c!826821 (is-Cons!55821 (t!363565 l!10962)))))

(assert (=> d!1560225 (forall!13025 (t!363565 l!10962) lambda!243150)))

(assert (=> d!1560225 (= (extractMap!2796 (t!363565 l!10962)) lt!1992351)))

(declare-fun b!4860984 () Bool)

(declare-fun addToMapMapFromBucket!1935 (List!55944 ListMap!7169) ListMap!7169)

(assert (=> b!4860984 (= e!3039164 (addToMapMapFromBucket!1935 (_2!33127 (h!62269 (t!363565 l!10962))) (extractMap!2796 (t!363565 (t!363565 l!10962)))))))

(declare-fun b!4860985 () Bool)

(assert (=> b!4860985 (= e!3039164 (ListMap!7170 Nil!55820))))

(assert (= (and d!1560225 c!826821) b!4860984))

(assert (= (and d!1560225 (not c!826821)) b!4860985))

(declare-fun m!5858814 () Bool)

(assert (=> d!1560225 m!5858814))

(declare-fun m!5858816 () Bool)

(assert (=> d!1560225 m!5858816))

(declare-fun m!5858818 () Bool)

(assert (=> b!4860984 m!5858818))

(assert (=> b!4860984 m!5858818))

(declare-fun m!5858820 () Bool)

(assert (=> b!4860984 m!5858820))

(assert (=> b!4860945 d!1560225))

(declare-fun e!3039167 () Bool)

(declare-fun tp!1367606 () Bool)

(declare-fun tp_is_empty!35599 () Bool)

(declare-fun tp_is_empty!35597 () Bool)

(declare-fun b!4860990 () Bool)

(assert (=> b!4860990 (= e!3039167 (and tp_is_empty!35597 tp_is_empty!35599 tp!1367606))))

(assert (=> b!4860946 (= tp!1367596 e!3039167)))

(assert (= (and b!4860946 (is-Cons!55820 (_2!33127 (h!62269 l!10962)))) b!4860990))

(declare-fun b!4860995 () Bool)

(declare-fun e!3039170 () Bool)

(declare-fun tp!1367611 () Bool)

(declare-fun tp!1367612 () Bool)

(assert (=> b!4860995 (= e!3039170 (and tp!1367611 tp!1367612))))

(assert (=> b!4860946 (= tp!1367597 e!3039170)))

(assert (= (and b!4860946 (is-Cons!55821 (t!363565 l!10962))) b!4860995))

(declare-fun b_lambda!193333 () Bool)

(assert (= b_lambda!193329 (or start!507986 b_lambda!193333)))

(declare-fun bs!1173901 () Bool)

(declare-fun d!1560231 () Bool)

(assert (= bs!1173901 (and d!1560231 start!507986)))

(assert (=> bs!1173901 (= (dynLambda!22398 lambda!243144 (h!62269 l!10962)) (noDuplicateKeys!2649 (_2!33127 (h!62269 l!10962))))))

(assert (=> bs!1173901 m!5858788))

(assert (=> b!4860960 d!1560231))

(push 1)

(assert (not bs!1173901))

(assert (not b!4860984))

(assert (not d!1560225))

(assert (not b!4860970))

(assert (not b!4860995))

(assert (not b!4860990))

(assert (not b!4860961))

(assert (not b_lambda!193333))

(assert tp_is_empty!35599)

(assert (not b!4860971))

(assert tp_is_empty!35597)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

