; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!508046 () Bool)

(assert start!508046)

(declare-fun res!2075218 () Bool)

(declare-fun e!3039330 () Bool)

(assert (=> start!508046 (=> (not res!2075218) (not e!3039330))))

(declare-datatypes ((V!17935 0))(
  ( (V!17936 (val!22489 Int)) )
))
(declare-datatypes ((K!17665 0))(
  ( (K!17666 (val!22490 Int)) )
))
(declare-datatypes ((tuple2!59678 0))(
  ( (tuple2!59679 (_1!33142 K!17665) (_2!33142 V!17935)) )
))
(declare-datatypes ((List!55960 0))(
  ( (Nil!55836) (Cons!55836 (h!62284 tuple2!59678) (t!363580 List!55960)) )
))
(declare-datatypes ((tuple2!59680 0))(
  ( (tuple2!59681 (_1!33143 (_ BitVec 64)) (_2!33143 List!55960)) )
))
(declare-datatypes ((List!55961 0))(
  ( (Nil!55837) (Cons!55837 (h!62285 tuple2!59680) (t!363581 List!55961)) )
))
(declare-fun l!10962 () List!55961)

(declare-fun lambda!243244 () Int)

(declare-fun forall!13035 (List!55961 Int) Bool)

(assert (=> start!508046 (= res!2075218 (forall!13035 l!10962 lambda!243244))))

(assert (=> start!508046 e!3039330))

(declare-fun e!3039331 () Bool)

(assert (=> start!508046 e!3039331))

(declare-fun b!4861236 () Bool)

(declare-fun res!2075219 () Bool)

(assert (=> b!4861236 (=> (not res!2075219) (not e!3039330))))

(assert (=> b!4861236 (= res!2075219 (not (is-Cons!55837 l!10962)))))

(declare-fun b!4861237 () Bool)

(declare-fun invariantList!1903 (List!55960) Bool)

(assert (=> b!4861237 (= e!3039330 (not (invariantList!1903 Nil!55836)))))

(declare-fun b!4861238 () Bool)

(declare-fun tp!1367716 () Bool)

(declare-fun tp!1367717 () Bool)

(assert (=> b!4861238 (= e!3039331 (and tp!1367716 tp!1367717))))

(assert (= (and start!508046 res!2075218) b!4861236))

(assert (= (and b!4861236 res!2075219) b!4861237))

(assert (= (and start!508046 (is-Cons!55837 l!10962)) b!4861238))

(declare-fun m!5858996 () Bool)

(assert (=> start!508046 m!5858996))

(declare-fun m!5858998 () Bool)

(assert (=> b!4861237 m!5858998))

(push 1)

(assert (not b!4861237))

(assert (not start!508046))

(assert (not b!4861238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560285 () Bool)

(declare-fun noDuplicatedKeys!509 (List!55960) Bool)

(assert (=> d!1560285 (= (invariantList!1903 Nil!55836) (noDuplicatedKeys!509 Nil!55836))))

(declare-fun bs!1173927 () Bool)

(assert (= bs!1173927 d!1560285))

(declare-fun m!5859004 () Bool)

(assert (=> bs!1173927 m!5859004))

(assert (=> b!4861237 d!1560285))

(declare-fun d!1560289 () Bool)

(declare-fun res!2075236 () Bool)

(declare-fun e!3039348 () Bool)

(assert (=> d!1560289 (=> res!2075236 e!3039348)))

(assert (=> d!1560289 (= res!2075236 (is-Nil!55837 l!10962))))

(assert (=> d!1560289 (= (forall!13035 l!10962 lambda!243244) e!3039348)))

(declare-fun b!4861258 () Bool)

(declare-fun e!3039349 () Bool)

(assert (=> b!4861258 (= e!3039348 e!3039349)))

(declare-fun res!2075237 () Bool)

(assert (=> b!4861258 (=> (not res!2075237) (not e!3039349))))

(declare-fun dynLambda!22404 (Int tuple2!59680) Bool)

(assert (=> b!4861258 (= res!2075237 (dynLambda!22404 lambda!243244 (h!62285 l!10962)))))

(declare-fun b!4861259 () Bool)

(assert (=> b!4861259 (= e!3039349 (forall!13035 (t!363581 l!10962) lambda!243244))))

(assert (= (and d!1560289 (not res!2075236)) b!4861258))

(assert (= (and b!4861258 res!2075237) b!4861259))

(declare-fun b_lambda!193363 () Bool)

(assert (=> (not b_lambda!193363) (not b!4861258)))

(declare-fun m!5859012 () Bool)

(assert (=> b!4861258 m!5859012))

(declare-fun m!5859014 () Bool)

(assert (=> b!4861259 m!5859014))

(assert (=> start!508046 d!1560289))

(declare-fun tp!1367729 () Bool)

(declare-fun b!4861271 () Bool)

(declare-fun tp_is_empty!35635 () Bool)

(declare-fun e!3039355 () Bool)

(declare-fun tp_is_empty!35633 () Bool)

(assert (=> b!4861271 (= e!3039355 (and tp_is_empty!35633 tp_is_empty!35635 tp!1367729))))

(assert (=> b!4861238 (= tp!1367716 e!3039355)))

(assert (= (and b!4861238 (is-Cons!55836 (_2!33143 (h!62285 l!10962)))) b!4861271))

(declare-fun b!4861279 () Bool)

(declare-fun e!3039361 () Bool)

(declare-fun tp!1367740 () Bool)

(declare-fun tp!1367741 () Bool)

(assert (=> b!4861279 (= e!3039361 (and tp!1367740 tp!1367741))))

(assert (=> b!4861238 (= tp!1367717 e!3039361)))

(assert (= (and b!4861238 (is-Cons!55837 (t!363581 l!10962))) b!4861279))

(declare-fun b_lambda!193367 () Bool)

(assert (= b_lambda!193363 (or start!508046 b_lambda!193367)))

(declare-fun bs!1173930 () Bool)

(declare-fun d!1560295 () Bool)

(assert (= bs!1173930 (and d!1560295 start!508046)))

(declare-fun noDuplicateKeys!2655 (List!55960) Bool)

(assert (=> bs!1173930 (= (dynLambda!22404 lambda!243244 (h!62285 l!10962)) (noDuplicateKeys!2655 (_2!33143 (h!62285 l!10962))))))

(declare-fun m!5859018 () Bool)

(assert (=> bs!1173930 m!5859018))

(assert (=> b!4861258 d!1560295))

(push 1)

(assert (not bs!1173930))

(assert (not b_lambda!193367))

(assert tp_is_empty!35635)

(assert (not b!4861271))

(assert (not b!4861259))

(assert (not d!1560285))

(assert (not b!4861279))

(assert tp_is_empty!35633)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560297 () Bool)

(declare-fun res!2075244 () Bool)

(declare-fun e!3039368 () Bool)

(assert (=> d!1560297 (=> res!2075244 e!3039368)))

(assert (=> d!1560297 (= res!2075244 (not (is-Cons!55836 (_2!33143 (h!62285 l!10962)))))))

(assert (=> d!1560297 (= (noDuplicateKeys!2655 (_2!33143 (h!62285 l!10962))) e!3039368)))

(declare-fun b!4861286 () Bool)

(declare-fun e!3039369 () Bool)

(assert (=> b!4861286 (= e!3039368 e!3039369)))

(declare-fun res!2075245 () Bool)

(assert (=> b!4861286 (=> (not res!2075245) (not e!3039369))))

(declare-fun containsKey!4776 (List!55960 K!17665) Bool)

(assert (=> b!4861286 (= res!2075245 (not (containsKey!4776 (t!363580 (_2!33143 (h!62285 l!10962))) (_1!33142 (h!62284 (_2!33143 (h!62285 l!10962)))))))))

(declare-fun b!4861287 () Bool)

(assert (=> b!4861287 (= e!3039369 (noDuplicateKeys!2655 (t!363580 (_2!33143 (h!62285 l!10962)))))))

(assert (= (and d!1560297 (not res!2075244)) b!4861286))

(assert (= (and b!4861286 res!2075245) b!4861287))

(declare-fun m!5859024 () Bool)

(assert (=> b!4861286 m!5859024))

(declare-fun m!5859026 () Bool)

(assert (=> b!4861287 m!5859026))

(assert (=> bs!1173930 d!1560297))

(declare-fun d!1560303 () Bool)

(declare-fun res!2075246 () Bool)

(declare-fun e!3039370 () Bool)

(assert (=> d!1560303 (=> res!2075246 e!3039370)))

(assert (=> d!1560303 (= res!2075246 (is-Nil!55837 (t!363581 l!10962)))))

(assert (=> d!1560303 (= (forall!13035 (t!363581 l!10962) lambda!243244) e!3039370)))

(declare-fun b!4861288 () Bool)

(declare-fun e!3039371 () Bool)

(assert (=> b!4861288 (= e!3039370 e!3039371)))

(declare-fun res!2075247 () Bool)

(assert (=> b!4861288 (=> (not res!2075247) (not e!3039371))))

(assert (=> b!4861288 (= res!2075247 (dynLambda!22404 lambda!243244 (h!62285 (t!363581 l!10962))))))

(declare-fun b!4861289 () Bool)

(assert (=> b!4861289 (= e!3039371 (forall!13035 (t!363581 (t!363581 l!10962)) lambda!243244))))

(assert (= (and d!1560303 (not res!2075246)) b!4861288))

(assert (= (and b!4861288 res!2075247) b!4861289))

(declare-fun b_lambda!193371 () Bool)

(assert (=> (not b_lambda!193371) (not b!4861288)))

(declare-fun m!5859028 () Bool)

(assert (=> b!4861288 m!5859028))

(declare-fun m!5859030 () Bool)

(assert (=> b!4861289 m!5859030))

(assert (=> b!4861259 d!1560303))

(declare-fun d!1560305 () Bool)

(declare-fun res!2075258 () Bool)

(declare-fun e!3039382 () Bool)

(assert (=> d!1560305 (=> res!2075258 e!3039382)))

(assert (=> d!1560305 (= res!2075258 (or (is-Nil!55836 Nil!55836) (is-Nil!55836 (t!363580 Nil!55836))))))

(assert (=> d!1560305 (= (noDuplicatedKeys!509 Nil!55836) e!3039382)))

(declare-fun b!4861300 () Bool)

(declare-fun e!3039383 () Bool)

(assert (=> b!4861300 (= e!3039382 e!3039383)))

(declare-fun res!2075259 () Bool)

(assert (=> b!4861300 (=> (not res!2075259) (not e!3039383))))

(declare-fun containsKey!4777 (List!55960 K!17665) Bool)

(assert (=> b!4861300 (= res!2075259 (not (containsKey!4777 (t!363580 Nil!55836) (_1!33142 (h!62284 Nil!55836)))))))

(declare-fun b!4861301 () Bool)

(assert (=> b!4861301 (= e!3039383 (noDuplicatedKeys!509 (t!363580 Nil!55836)))))

(assert (= (and d!1560305 (not res!2075258)) b!4861300))

(assert (= (and b!4861300 res!2075259) b!4861301))

(declare-fun m!5859036 () Bool)

(assert (=> b!4861300 m!5859036))

(declare-fun m!5859038 () Bool)

(assert (=> b!4861301 m!5859038))

(assert (=> d!1560285 d!1560305))

(declare-fun tp!1367742 () Bool)

(declare-fun e!3039388 () Bool)

(declare-fun b!4861306 () Bool)

(assert (=> b!4861306 (= e!3039388 (and tp_is_empty!35633 tp_is_empty!35635 tp!1367742))))

(assert (=> b!4861271 (= tp!1367729 e!3039388)))

(assert (= (and b!4861271 (is-Cons!55836 (t!363580 (_2!33143 (h!62285 l!10962))))) b!4861306))

(declare-fun b!4861307 () Bool)

(declare-fun tp!1367743 () Bool)

(declare-fun e!3039389 () Bool)

(assert (=> b!4861307 (= e!3039389 (and tp_is_empty!35633 tp_is_empty!35635 tp!1367743))))

(assert (=> b!4861279 (= tp!1367740 e!3039389)))

(assert (= (and b!4861279 (is-Cons!55836 (_2!33143 (h!62285 (t!363581 l!10962))))) b!4861307))

(declare-fun b!4861308 () Bool)

(declare-fun e!3039390 () Bool)

(declare-fun tp!1367744 () Bool)

(declare-fun tp!1367745 () Bool)

(assert (=> b!4861308 (= e!3039390 (and tp!1367744 tp!1367745))))

(assert (=> b!4861279 (= tp!1367741 e!3039390)))

(assert (= (and b!4861279 (is-Cons!55837 (t!363581 (t!363581 l!10962)))) b!4861308))

(declare-fun b_lambda!193373 () Bool)

(assert (= b_lambda!193371 (or start!508046 b_lambda!193373)))

(declare-fun bs!1173931 () Bool)

(declare-fun d!1560309 () Bool)

(assert (= bs!1173931 (and d!1560309 start!508046)))

(assert (=> bs!1173931 (= (dynLambda!22404 lambda!243244 (h!62285 (t!363581 l!10962))) (noDuplicateKeys!2655 (_2!33143 (h!62285 (t!363581 l!10962)))))))

(declare-fun m!5859040 () Bool)

(assert (=> bs!1173931 m!5859040))

(assert (=> b!4861288 d!1560309))

(push 1)

(assert (not b!4861308))

(assert (not bs!1173931))

(assert tp_is_empty!35635)

(assert (not b!4861306))

(assert (not b_lambda!193373))

(assert (not b!4861301))

(assert (not b!4861300))

(assert (not b!4861286))

(assert (not b!4861289))

(assert (not b!4861307))

(assert (not b_lambda!193367))

(assert (not b!4861287))

(assert tp_is_empty!35633)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

