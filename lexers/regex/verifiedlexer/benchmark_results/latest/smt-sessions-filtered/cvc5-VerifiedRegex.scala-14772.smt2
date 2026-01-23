; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759332 () Bool)

(assert start!759332)

(declare-fun b!8058721 () Bool)

(assert (=> b!8058721 true))

(declare-fun bs!1973466 () Bool)

(declare-fun b!8058726 () Bool)

(assert (= bs!1973466 (and b!8058726 b!8058721)))

(declare-fun lambda!475239 () Int)

(declare-datatypes ((V!23245 0))(
  ( (V!23246 (val!33065 Int)) )
))
(declare-datatypes ((K!22991 0))(
  ( (K!22992 (val!33066 Int)) )
))
(declare-datatypes ((tuple2!71030 0))(
  ( (tuple2!71031 (_1!38818 K!22991) (_2!38818 V!23245)) )
))
(declare-datatypes ((List!75768 0))(
  ( (Nil!75642) (Cons!75642 (h!82090 tuple2!71030) (t!391540 List!75768)) )
))
(declare-datatypes ((ListMap!7401 0))(
  ( (ListMap!7402 (toList!11975 List!75768)) )
))
(declare-fun acc!836 () ListMap!7401)

(declare-fun lt!2732257 () ListMap!7401)

(declare-fun lambda!475240 () Int)

(assert (=> bs!1973466 (= (= lt!2732257 acc!836) (= lambda!475240 lambda!475239))))

(assert (=> b!8058726 true))

(declare-fun lambda!475241 () Int)

(assert (=> b!8058721 (= (= lt!2732257 acc!836) (= lambda!475241 lambda!475239))))

(assert (=> bs!1973466 (= lambda!475241 lambda!475240)))

(assert (=> b!8058721 true))

(declare-fun b!8058716 () Bool)

(declare-fun res!3188160 () Bool)

(declare-fun e!4749113 () Bool)

(assert (=> b!8058716 (=> (not res!3188160) (not e!4749113))))

(declare-fun l!10976 () List!75768)

(declare-fun contains!21317 (ListMap!7401 K!22991) Bool)

(assert (=> b!8058716 (= res!3188160 (contains!21317 lt!2732257 (_1!38818 (h!82090 l!10976))))))

(declare-fun b!8058717 () Bool)

(declare-fun e!4749112 () Bool)

(declare-fun forall!18555 (List!75768 Int) Bool)

(assert (=> b!8058717 (= e!4749112 (forall!18555 (toList!11975 acc!836) lambda!475241))))

(declare-fun b!8058718 () Bool)

(declare-fun e!4749109 () Bool)

(assert (=> b!8058718 (= e!4749109 (= l!10976 (Cons!75642 (h!82090 l!10976) (t!391540 l!10976))))))

(declare-fun b!8058719 () Bool)

(declare-fun lt!2732260 () ListMap!7401)

(assert (=> b!8058719 (= e!4749113 (forall!18555 (toList!11975 lt!2732260) lambda!475241))))

(declare-fun b!8058720 () Bool)

(declare-fun res!3188166 () Bool)

(assert (=> b!8058720 (=> (not res!3188166) (not e!4749112))))

(assert (=> b!8058720 (= res!3188166 (forall!18555 l!10976 lambda!475241))))

(declare-fun e!4749107 () Bool)

(declare-fun e!4749108 () Bool)

(assert (=> b!8058721 (= e!4749107 (not e!4749108))))

(declare-fun res!3188154 () Bool)

(assert (=> b!8058721 (=> (not res!3188154) (not e!4749108))))

(assert (=> b!8058721 (= res!3188154 (forall!18555 l!10976 lambda!475241))))

(assert (=> b!8058721 e!4749112))

(declare-fun res!3188164 () Bool)

(assert (=> b!8058721 (=> (not res!3188164) (not e!4749112))))

(assert (=> b!8058721 (= res!3188164 (forall!18555 (toList!11975 acc!836) lambda!475241))))

(declare-datatypes ((Unit!172726 0))(
  ( (Unit!172727) )
))
(declare-fun lt!2732258 () Unit!172726)

(declare-fun addForallContainsKeyThenBeforeAdding!1116 (ListMap!7401 ListMap!7401 K!22991 V!23245) Unit!172726)

(assert (=> b!8058721 (= lt!2732258 (addForallContainsKeyThenBeforeAdding!1116 acc!836 lt!2732257 (_1!38818 (h!82090 l!10976)) (_2!38818 (h!82090 l!10976))))))

(assert (=> b!8058721 e!4749113))

(declare-fun res!3188158 () Bool)

(assert (=> b!8058721 (=> (not res!3188158) (not e!4749113))))

(assert (=> b!8058721 (= res!3188158 (contains!21317 lt!2732260 (_1!38818 (h!82090 l!10976))))))

(declare-fun lt!2732256 () Unit!172726)

(declare-fun forallContained!4700 (List!75768 Int tuple2!71030) Unit!172726)

(assert (=> b!8058721 (= lt!2732256 (forallContained!4700 (toList!11975 lt!2732260) lambda!475241 (h!82090 l!10976)))))

(assert (=> b!8058721 e!4749109))

(declare-fun res!3188159 () Bool)

(assert (=> b!8058721 (=> (not res!3188159) (not e!4749109))))

(assert (=> b!8058721 (= res!3188159 (forall!18555 (toList!11975 acc!836) lambda!475239))))

(declare-fun lt!2732259 () Unit!172726)

(declare-fun lemmaContainsAllItsOwnKeys!1136 (ListMap!7401) Unit!172726)

(assert (=> b!8058721 (= lt!2732259 (lemmaContainsAllItsOwnKeys!1136 acc!836))))

(declare-fun addToMapMapFromBucket!2036 (List!75768 ListMap!7401) ListMap!7401)

(assert (=> b!8058721 (= lt!2732257 (addToMapMapFromBucket!2036 (t!391540 l!10976) lt!2732260))))

(declare-fun +!2722 (ListMap!7401 tuple2!71030) ListMap!7401)

(assert (=> b!8058721 (= lt!2732260 (+!2722 acc!836 (h!82090 l!10976)))))

(declare-fun b!8058722 () Bool)

(declare-fun res!3188156 () Bool)

(assert (=> b!8058722 (=> (not res!3188156) (not e!4749107))))

(assert (=> b!8058722 (= res!3188156 (not (is-Nil!75642 l!10976)))))

(declare-fun b!8058723 () Bool)

(declare-fun res!3188155 () Bool)

(assert (=> b!8058723 (=> (not res!3188155) (not e!4749112))))

(assert (=> b!8058723 (= res!3188155 (forall!18555 (toList!11975 acc!836) lambda!475241))))

(declare-fun b!8058724 () Bool)

(declare-fun e!4749111 () Bool)

(declare-fun tp!2414302 () Bool)

(assert (=> b!8058724 (= e!4749111 tp!2414302)))

(declare-fun b!8058725 () Bool)

(declare-fun res!3188161 () Bool)

(assert (=> b!8058725 (=> (not res!3188161) (not e!4749109))))

(assert (=> b!8058725 (= res!3188161 (forall!18555 (t!391540 l!10976) lambda!475240))))

(declare-fun res!3188162 () Bool)

(assert (=> b!8058726 (=> (not res!3188162) (not e!4749109))))

(assert (=> b!8058726 (= res!3188162 (forall!18555 (toList!11975 lt!2732260) lambda!475240))))

(declare-fun b!8058728 () Bool)

(declare-fun res!3188163 () Bool)

(assert (=> b!8058728 (=> (not res!3188163) (not e!4749108))))

(assert (=> b!8058728 (= res!3188163 (forall!18555 (toList!11975 acc!836) lambda!475241))))

(declare-fun b!8058727 () Bool)

(declare-fun invariantList!1966 (List!75768) Bool)

(assert (=> b!8058727 (= e!4749108 (invariantList!1966 (toList!11975 lt!2732257)))))

(declare-fun res!3188165 () Bool)

(assert (=> start!759332 (=> (not res!3188165) (not e!4749107))))

(declare-fun noDuplicateKeys!2761 (List!75768) Bool)

(assert (=> start!759332 (= res!3188165 (noDuplicateKeys!2761 l!10976))))

(assert (=> start!759332 e!4749107))

(declare-fun e!4749110 () Bool)

(assert (=> start!759332 e!4749110))

(declare-fun inv!97465 (ListMap!7401) Bool)

(assert (=> start!759332 (and (inv!97465 acc!836) e!4749111)))

(declare-fun tp!2414303 () Bool)

(declare-fun b!8058729 () Bool)

(declare-fun tp_is_empty!55183 () Bool)

(declare-fun tp_is_empty!55185 () Bool)

(assert (=> b!8058729 (= e!4749110 (and tp_is_empty!55183 tp_is_empty!55185 tp!2414303))))

(declare-fun b!8058730 () Bool)

(declare-fun res!3188157 () Bool)

(assert (=> b!8058730 (=> (not res!3188157) (not e!4749113))))

(assert (=> b!8058730 (= res!3188157 (forall!18555 l!10976 lambda!475241))))

(assert (= (and start!759332 res!3188165) b!8058722))

(assert (= (and b!8058722 res!3188156) b!8058721))

(assert (= (and b!8058721 res!3188159) b!8058726))

(assert (= (and b!8058726 res!3188162) b!8058725))

(assert (= (and b!8058725 res!3188161) b!8058718))

(assert (= (and b!8058721 res!3188158) b!8058716))

(assert (= (and b!8058716 res!3188160) b!8058730))

(assert (= (and b!8058730 res!3188157) b!8058719))

(assert (= (and b!8058721 res!3188164) b!8058723))

(assert (= (and b!8058723 res!3188155) b!8058720))

(assert (= (and b!8058720 res!3188166) b!8058717))

(assert (= (and b!8058721 res!3188154) b!8058728))

(assert (= (and b!8058728 res!3188163) b!8058727))

(assert (= (and start!759332 (is-Cons!75642 l!10976)) b!8058729))

(assert (= start!759332 b!8058724))

(declare-fun m!8411934 () Bool)

(assert (=> b!8058723 m!8411934))

(declare-fun m!8411936 () Bool)

(assert (=> b!8058727 m!8411936))

(declare-fun m!8411938 () Bool)

(assert (=> b!8058719 m!8411938))

(assert (=> b!8058717 m!8411934))

(declare-fun m!8411940 () Bool)

(assert (=> start!759332 m!8411940))

(declare-fun m!8411942 () Bool)

(assert (=> start!759332 m!8411942))

(declare-fun m!8411944 () Bool)

(assert (=> b!8058716 m!8411944))

(declare-fun m!8411946 () Bool)

(assert (=> b!8058730 m!8411946))

(declare-fun m!8411948 () Bool)

(assert (=> b!8058725 m!8411948))

(declare-fun m!8411950 () Bool)

(assert (=> b!8058726 m!8411950))

(assert (=> b!8058720 m!8411946))

(assert (=> b!8058721 m!8411946))

(declare-fun m!8411952 () Bool)

(assert (=> b!8058721 m!8411952))

(declare-fun m!8411954 () Bool)

(assert (=> b!8058721 m!8411954))

(declare-fun m!8411956 () Bool)

(assert (=> b!8058721 m!8411956))

(assert (=> b!8058721 m!8411934))

(declare-fun m!8411958 () Bool)

(assert (=> b!8058721 m!8411958))

(declare-fun m!8411960 () Bool)

(assert (=> b!8058721 m!8411960))

(declare-fun m!8411962 () Bool)

(assert (=> b!8058721 m!8411962))

(declare-fun m!8411964 () Bool)

(assert (=> b!8058721 m!8411964))

(assert (=> b!8058728 m!8411934))

(push 1)

(assert (not b!8058723))

(assert (not b!8058729))

(assert (not b!8058730))

(assert tp_is_empty!55185)

(assert (not b!8058716))

(assert (not b!8058721))

(assert (not b!8058724))

(assert (not start!759332))

(assert (not b!8058726))

(assert (not b!8058717))

(assert (not b!8058728))

(assert (not b!8058725))

(assert (not b!8058727))

(assert (not b!8058719))

(assert tp_is_empty!55183)

(assert (not b!8058720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399141 () Bool)

(declare-fun res!3188210 () Bool)

(declare-fun e!4749139 () Bool)

(assert (=> d!2399141 (=> res!3188210 e!4749139)))

(assert (=> d!2399141 (= res!3188210 (is-Nil!75642 (toList!11975 acc!836)))))

(assert (=> d!2399141 (= (forall!18555 (toList!11975 acc!836) lambda!475241) e!4749139)))

(declare-fun b!8058784 () Bool)

(declare-fun e!4749140 () Bool)

(assert (=> b!8058784 (= e!4749139 e!4749140)))

(declare-fun res!3188211 () Bool)

(assert (=> b!8058784 (=> (not res!3188211) (not e!4749140))))

(declare-fun dynLambda!30282 (Int tuple2!71030) Bool)

(assert (=> b!8058784 (= res!3188211 (dynLambda!30282 lambda!475241 (h!82090 (toList!11975 acc!836))))))

(declare-fun b!8058785 () Bool)

(assert (=> b!8058785 (= e!4749140 (forall!18555 (t!391540 (toList!11975 acc!836)) lambda!475241))))

(assert (= (and d!2399141 (not res!3188210)) b!8058784))

(assert (= (and b!8058784 res!3188211) b!8058785))

(declare-fun b_lambda!290683 () Bool)

(assert (=> (not b_lambda!290683) (not b!8058784)))

(declare-fun m!8411998 () Bool)

(assert (=> b!8058784 m!8411998))

(declare-fun m!8412000 () Bool)

(assert (=> b!8058785 m!8412000))

(assert (=> b!8058723 d!2399141))

(declare-fun d!2399143 () Bool)

(declare-fun res!3188212 () Bool)

(declare-fun e!4749141 () Bool)

(assert (=> d!2399143 (=> res!3188212 e!4749141)))

(assert (=> d!2399143 (= res!3188212 (is-Nil!75642 (toList!11975 lt!2732260)))))

(assert (=> d!2399143 (= (forall!18555 (toList!11975 lt!2732260) lambda!475240) e!4749141)))

(declare-fun b!8058786 () Bool)

(declare-fun e!4749142 () Bool)

(assert (=> b!8058786 (= e!4749141 e!4749142)))

(declare-fun res!3188213 () Bool)

(assert (=> b!8058786 (=> (not res!3188213) (not e!4749142))))

(assert (=> b!8058786 (= res!3188213 (dynLambda!30282 lambda!475240 (h!82090 (toList!11975 lt!2732260))))))

(declare-fun b!8058787 () Bool)

(assert (=> b!8058787 (= e!4749142 (forall!18555 (t!391540 (toList!11975 lt!2732260)) lambda!475240))))

(assert (= (and d!2399143 (not res!3188212)) b!8058786))

(assert (= (and b!8058786 res!3188213) b!8058787))

(declare-fun b_lambda!290685 () Bool)

(assert (=> (not b_lambda!290685) (not b!8058786)))

(declare-fun m!8412002 () Bool)

(assert (=> b!8058786 m!8412002))

(declare-fun m!8412004 () Bool)

(assert (=> b!8058787 m!8412004))

(assert (=> b!8058726 d!2399143))

(declare-fun d!2399145 () Bool)

(declare-fun res!3188218 () Bool)

(declare-fun e!4749147 () Bool)

(assert (=> d!2399145 (=> res!3188218 e!4749147)))

(assert (=> d!2399145 (= res!3188218 (not (is-Cons!75642 l!10976)))))

(assert (=> d!2399145 (= (noDuplicateKeys!2761 l!10976) e!4749147)))

(declare-fun b!8058792 () Bool)

(declare-fun e!4749148 () Bool)

(assert (=> b!8058792 (= e!4749147 e!4749148)))

(declare-fun res!3188219 () Bool)

(assert (=> b!8058792 (=> (not res!3188219) (not e!4749148))))

(declare-fun containsKey!4929 (List!75768 K!22991) Bool)

(assert (=> b!8058792 (= res!3188219 (not (containsKey!4929 (t!391540 l!10976) (_1!38818 (h!82090 l!10976)))))))

(declare-fun b!8058793 () Bool)

(assert (=> b!8058793 (= e!4749148 (noDuplicateKeys!2761 (t!391540 l!10976)))))

(assert (= (and d!2399145 (not res!3188218)) b!8058792))

(assert (= (and b!8058792 res!3188219) b!8058793))

(declare-fun m!8412006 () Bool)

(assert (=> b!8058792 m!8412006))

(declare-fun m!8412008 () Bool)

(assert (=> b!8058793 m!8412008))

(assert (=> start!759332 d!2399145))

(declare-fun d!2399149 () Bool)

(assert (=> d!2399149 (= (inv!97465 acc!836) (invariantList!1966 (toList!11975 acc!836)))))

(declare-fun bs!1973468 () Bool)

(assert (= bs!1973468 d!2399149))

(declare-fun m!8412010 () Bool)

(assert (=> bs!1973468 m!8412010))

(assert (=> start!759332 d!2399149))

(declare-fun d!2399151 () Bool)

(declare-fun res!3188220 () Bool)

(declare-fun e!4749149 () Bool)

(assert (=> d!2399151 (=> res!3188220 e!4749149)))

(assert (=> d!2399151 (= res!3188220 (is-Nil!75642 (t!391540 l!10976)))))

(assert (=> d!2399151 (= (forall!18555 (t!391540 l!10976) lambda!475240) e!4749149)))

(declare-fun b!8058794 () Bool)

(declare-fun e!4749150 () Bool)

(assert (=> b!8058794 (= e!4749149 e!4749150)))

(declare-fun res!3188221 () Bool)

(assert (=> b!8058794 (=> (not res!3188221) (not e!4749150))))

(assert (=> b!8058794 (= res!3188221 (dynLambda!30282 lambda!475240 (h!82090 (t!391540 l!10976))))))

(declare-fun b!8058795 () Bool)

(assert (=> b!8058795 (= e!4749150 (forall!18555 (t!391540 (t!391540 l!10976)) lambda!475240))))

(assert (= (and d!2399151 (not res!3188220)) b!8058794))

(assert (= (and b!8058794 res!3188221) b!8058795))

(declare-fun b_lambda!290687 () Bool)

(assert (=> (not b_lambda!290687) (not b!8058794)))

(declare-fun m!8412012 () Bool)

(assert (=> b!8058794 m!8412012))

(declare-fun m!8412014 () Bool)

(assert (=> b!8058795 m!8412014))

(assert (=> b!8058725 d!2399151))

(assert (=> b!8058728 d!2399141))

(assert (=> b!8058717 d!2399141))

(declare-fun b!8058828 () Bool)

(declare-fun e!4749179 () Unit!172726)

(declare-fun Unit!172730 () Unit!172726)

(assert (=> b!8058828 (= e!4749179 Unit!172730)))

(declare-fun bm!747663 () Bool)

(declare-fun call!747668 () Bool)

(declare-datatypes ((List!75770 0))(
  ( (Nil!75644) (Cons!75644 (h!82092 K!22991) (t!391542 List!75770)) )
))
(declare-fun e!4749177 () List!75770)

(declare-fun contains!21319 (List!75770 K!22991) Bool)

(assert (=> bm!747663 (= call!747668 (contains!21319 e!4749177 (_1!38818 (h!82090 l!10976))))))

(declare-fun c!1476786 () Bool)

(declare-fun c!1476787 () Bool)

(assert (=> bm!747663 (= c!1476786 c!1476787)))

(declare-fun b!8058829 () Bool)

(declare-fun e!4749181 () Bool)

(declare-fun keys!30934 (ListMap!7401) List!75770)

(assert (=> b!8058829 (= e!4749181 (not (contains!21319 (keys!30934 lt!2732257) (_1!38818 (h!82090 l!10976)))))))

(declare-fun b!8058830 () Bool)

(assert (=> b!8058830 false))

(declare-fun lt!2732292 () Unit!172726)

(declare-fun lt!2732295 () Unit!172726)

(assert (=> b!8058830 (= lt!2732292 lt!2732295)))

(declare-fun containsKey!4930 (List!75768 K!22991) Bool)

(assert (=> b!8058830 (containsKey!4930 (toList!11975 lt!2732257) (_1!38818 (h!82090 l!10976)))))

(declare-fun lemmaInGetKeysListThenContainsKey!1267 (List!75768 K!22991) Unit!172726)

(assert (=> b!8058830 (= lt!2732295 (lemmaInGetKeysListThenContainsKey!1267 (toList!11975 lt!2732257) (_1!38818 (h!82090 l!10976))))))

(declare-fun Unit!172731 () Unit!172726)

(assert (=> b!8058830 (= e!4749179 Unit!172731)))

(declare-fun b!8058831 () Bool)

(declare-fun e!4749182 () Unit!172726)

(assert (=> b!8058831 (= e!4749182 e!4749179)))

(declare-fun c!1476788 () Bool)

(assert (=> b!8058831 (= c!1476788 call!747668)))

(declare-fun b!8058832 () Bool)

(declare-fun e!4749178 () Bool)

(declare-fun e!4749180 () Bool)

(assert (=> b!8058832 (= e!4749178 e!4749180)))

(declare-fun res!3188242 () Bool)

(assert (=> b!8058832 (=> (not res!3188242) (not e!4749180))))

(declare-datatypes ((Option!18028 0))(
  ( (None!18027) (Some!18027 (v!55384 V!23245)) )
))
(declare-fun isDefined!14557 (Option!18028) Bool)

(declare-fun getValueByKey!2812 (List!75768 K!22991) Option!18028)

(assert (=> b!8058832 (= res!3188242 (isDefined!14557 (getValueByKey!2812 (toList!11975 lt!2732257) (_1!38818 (h!82090 l!10976)))))))

(declare-fun b!8058833 () Bool)

(declare-fun lt!2732294 () Unit!172726)

(assert (=> b!8058833 (= e!4749182 lt!2732294)))

(declare-fun lt!2732298 () Unit!172726)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2579 (List!75768 K!22991) Unit!172726)

(assert (=> b!8058833 (= lt!2732298 (lemmaContainsKeyImpliesGetValueByKeyDefined!2579 (toList!11975 lt!2732257) (_1!38818 (h!82090 l!10976))))))

(assert (=> b!8058833 (isDefined!14557 (getValueByKey!2812 (toList!11975 lt!2732257) (_1!38818 (h!82090 l!10976))))))

(declare-fun lt!2732297 () Unit!172726)

(assert (=> b!8058833 (= lt!2732297 lt!2732298)))

(declare-fun lemmaInListThenGetKeysListContains!1262 (List!75768 K!22991) Unit!172726)

(assert (=> b!8058833 (= lt!2732294 (lemmaInListThenGetKeysListContains!1262 (toList!11975 lt!2732257) (_1!38818 (h!82090 l!10976))))))

(assert (=> b!8058833 call!747668))

(declare-fun b!8058834 () Bool)

(declare-fun getKeysList!1267 (List!75768) List!75770)

(assert (=> b!8058834 (= e!4749177 (getKeysList!1267 (toList!11975 lt!2732257)))))

(declare-fun d!2399153 () Bool)

(assert (=> d!2399153 e!4749178))

(declare-fun res!3188243 () Bool)

(assert (=> d!2399153 (=> res!3188243 e!4749178)))

(assert (=> d!2399153 (= res!3188243 e!4749181)))

(declare-fun res!3188244 () Bool)

(assert (=> d!2399153 (=> (not res!3188244) (not e!4749181))))

(declare-fun lt!2732293 () Bool)

(assert (=> d!2399153 (= res!3188244 (not lt!2732293))))

(declare-fun lt!2732296 () Bool)

(assert (=> d!2399153 (= lt!2732293 lt!2732296)))

(declare-fun lt!2732299 () Unit!172726)

(assert (=> d!2399153 (= lt!2732299 e!4749182)))

(assert (=> d!2399153 (= c!1476787 lt!2732296)))

(assert (=> d!2399153 (= lt!2732296 (containsKey!4930 (toList!11975 lt!2732257) (_1!38818 (h!82090 l!10976))))))

(assert (=> d!2399153 (= (contains!21317 lt!2732257 (_1!38818 (h!82090 l!10976))) lt!2732293)))

(declare-fun b!8058835 () Bool)

(assert (=> b!8058835 (= e!4749177 (keys!30934 lt!2732257))))

(declare-fun b!8058836 () Bool)

(assert (=> b!8058836 (= e!4749180 (contains!21319 (keys!30934 lt!2732257) (_1!38818 (h!82090 l!10976))))))

(assert (= (and d!2399153 c!1476787) b!8058833))

(assert (= (and d!2399153 (not c!1476787)) b!8058831))

(assert (= (and b!8058831 c!1476788) b!8058830))

(assert (= (and b!8058831 (not c!1476788)) b!8058828))

(assert (= (or b!8058833 b!8058831) bm!747663))

(assert (= (and bm!747663 c!1476786) b!8058834))

(assert (= (and bm!747663 (not c!1476786)) b!8058835))

(assert (= (and d!2399153 res!3188244) b!8058829))

(assert (= (and d!2399153 (not res!3188243)) b!8058832))

(assert (= (and b!8058832 res!3188242) b!8058836))

(declare-fun m!8412030 () Bool)

(assert (=> b!8058832 m!8412030))

(assert (=> b!8058832 m!8412030))

(declare-fun m!8412032 () Bool)

(assert (=> b!8058832 m!8412032))

(declare-fun m!8412034 () Bool)

(assert (=> b!8058830 m!8412034))

(declare-fun m!8412036 () Bool)

(assert (=> b!8058830 m!8412036))

(declare-fun m!8412038 () Bool)

(assert (=> b!8058835 m!8412038))

(assert (=> b!8058829 m!8412038))

(assert (=> b!8058829 m!8412038))

(declare-fun m!8412040 () Bool)

(assert (=> b!8058829 m!8412040))

(declare-fun m!8412042 () Bool)

(assert (=> bm!747663 m!8412042))

(declare-fun m!8412044 () Bool)

(assert (=> b!8058833 m!8412044))

(assert (=> b!8058833 m!8412030))

(assert (=> b!8058833 m!8412030))

(assert (=> b!8058833 m!8412032))

(declare-fun m!8412046 () Bool)

(assert (=> b!8058833 m!8412046))

(assert (=> b!8058836 m!8412038))

(assert (=> b!8058836 m!8412038))

(assert (=> b!8058836 m!8412040))

(assert (=> d!2399153 m!8412034))

(declare-fun m!8412048 () Bool)

(assert (=> b!8058834 m!8412048))

(assert (=> b!8058716 d!2399153))

(declare-fun d!2399163 () Bool)

(declare-fun noDuplicatedKeys!516 (List!75768) Bool)

(assert (=> d!2399163 (= (invariantList!1966 (toList!11975 lt!2732257)) (noDuplicatedKeys!516 (toList!11975 lt!2732257)))))

(declare-fun bs!1973470 () Bool)

(assert (= bs!1973470 d!2399163))

(declare-fun m!8412050 () Bool)

(assert (=> bs!1973470 m!8412050))

(assert (=> b!8058727 d!2399163))

(declare-fun d!2399165 () Bool)

(declare-fun e!4749185 () Bool)

(assert (=> d!2399165 e!4749185))

(declare-fun res!3188250 () Bool)

(assert (=> d!2399165 (=> (not res!3188250) (not e!4749185))))

(declare-fun lt!2732308 () ListMap!7401)

(assert (=> d!2399165 (= res!3188250 (contains!21317 lt!2732308 (_1!38818 (h!82090 l!10976))))))

(declare-fun lt!2732310 () List!75768)

(assert (=> d!2399165 (= lt!2732308 (ListMap!7402 lt!2732310))))

(declare-fun lt!2732309 () Unit!172726)

(declare-fun lt!2732311 () Unit!172726)

(assert (=> d!2399165 (= lt!2732309 lt!2732311)))

(assert (=> d!2399165 (= (getValueByKey!2812 lt!2732310 (_1!38818 (h!82090 l!10976))) (Some!18027 (_2!38818 (h!82090 l!10976))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1305 (List!75768 K!22991 V!23245) Unit!172726)

(assert (=> d!2399165 (= lt!2732311 (lemmaContainsTupThenGetReturnValue!1305 lt!2732310 (_1!38818 (h!82090 l!10976)) (_2!38818 (h!82090 l!10976))))))

(declare-fun insertNoDuplicatedKeys!813 (List!75768 K!22991 V!23245) List!75768)

(assert (=> d!2399165 (= lt!2732310 (insertNoDuplicatedKeys!813 (toList!11975 acc!836) (_1!38818 (h!82090 l!10976)) (_2!38818 (h!82090 l!10976))))))

(assert (=> d!2399165 (= (+!2722 acc!836 (h!82090 l!10976)) lt!2732308)))

(declare-fun b!8058841 () Bool)

(declare-fun res!3188249 () Bool)

(assert (=> b!8058841 (=> (not res!3188249) (not e!4749185))))

(assert (=> b!8058841 (= res!3188249 (= (getValueByKey!2812 (toList!11975 lt!2732308) (_1!38818 (h!82090 l!10976))) (Some!18027 (_2!38818 (h!82090 l!10976)))))))

(declare-fun b!8058842 () Bool)

(declare-fun contains!21320 (List!75768 tuple2!71030) Bool)

(assert (=> b!8058842 (= e!4749185 (contains!21320 (toList!11975 lt!2732308) (h!82090 l!10976)))))

(assert (= (and d!2399165 res!3188250) b!8058841))

(assert (= (and b!8058841 res!3188249) b!8058842))

(declare-fun m!8412052 () Bool)

(assert (=> d!2399165 m!8412052))

(declare-fun m!8412054 () Bool)

(assert (=> d!2399165 m!8412054))

(declare-fun m!8412056 () Bool)

(assert (=> d!2399165 m!8412056))

(declare-fun m!8412058 () Bool)

(assert (=> d!2399165 m!8412058))

(declare-fun m!8412060 () Bool)

(assert (=> b!8058841 m!8412060))

(declare-fun m!8412062 () Bool)

(assert (=> b!8058842 m!8412062))

(assert (=> b!8058721 d!2399165))

(declare-fun d!2399167 () Bool)

(declare-fun res!3188251 () Bool)

(declare-fun e!4749186 () Bool)

(assert (=> d!2399167 (=> res!3188251 e!4749186)))

(assert (=> d!2399167 (= res!3188251 (is-Nil!75642 l!10976))))

(assert (=> d!2399167 (= (forall!18555 l!10976 lambda!475241) e!4749186)))

(declare-fun b!8058843 () Bool)

(declare-fun e!4749187 () Bool)

(assert (=> b!8058843 (= e!4749186 e!4749187)))

(declare-fun res!3188252 () Bool)

(assert (=> b!8058843 (=> (not res!3188252) (not e!4749187))))

(assert (=> b!8058843 (= res!3188252 (dynLambda!30282 lambda!475241 (h!82090 l!10976)))))

(declare-fun b!8058844 () Bool)

(assert (=> b!8058844 (= e!4749187 (forall!18555 (t!391540 l!10976) lambda!475241))))

(assert (= (and d!2399167 (not res!3188251)) b!8058843))

(assert (= (and b!8058843 res!3188252) b!8058844))

(declare-fun b_lambda!290693 () Bool)

(assert (=> (not b_lambda!290693) (not b!8058843)))

(declare-fun m!8412064 () Bool)

(assert (=> b!8058843 m!8412064))

(declare-fun m!8412066 () Bool)

(assert (=> b!8058844 m!8412066))

(assert (=> b!8058721 d!2399167))

(declare-fun b!8058845 () Bool)

(declare-fun e!4749190 () Unit!172726)

(declare-fun Unit!172732 () Unit!172726)

(assert (=> b!8058845 (= e!4749190 Unit!172732)))

(declare-fun bm!747664 () Bool)

(declare-fun call!747669 () Bool)

(declare-fun e!4749188 () List!75770)

(assert (=> bm!747664 (= call!747669 (contains!21319 e!4749188 (_1!38818 (h!82090 l!10976))))))

(declare-fun c!1476789 () Bool)

(declare-fun c!1476790 () Bool)

(assert (=> bm!747664 (= c!1476789 c!1476790)))

(declare-fun b!8058846 () Bool)

(declare-fun e!4749192 () Bool)

(assert (=> b!8058846 (= e!4749192 (not (contains!21319 (keys!30934 lt!2732260) (_1!38818 (h!82090 l!10976)))))))

(declare-fun b!8058847 () Bool)

(assert (=> b!8058847 false))

(declare-fun lt!2732312 () Unit!172726)

(declare-fun lt!2732315 () Unit!172726)

(assert (=> b!8058847 (= lt!2732312 lt!2732315)))

(assert (=> b!8058847 (containsKey!4930 (toList!11975 lt!2732260) (_1!38818 (h!82090 l!10976)))))

(assert (=> b!8058847 (= lt!2732315 (lemmaInGetKeysListThenContainsKey!1267 (toList!11975 lt!2732260) (_1!38818 (h!82090 l!10976))))))

(declare-fun Unit!172733 () Unit!172726)

(assert (=> b!8058847 (= e!4749190 Unit!172733)))

(declare-fun b!8058848 () Bool)

(declare-fun e!4749193 () Unit!172726)

(assert (=> b!8058848 (= e!4749193 e!4749190)))

(declare-fun c!1476791 () Bool)

(assert (=> b!8058848 (= c!1476791 call!747669)))

(declare-fun b!8058849 () Bool)

(declare-fun e!4749189 () Bool)

(declare-fun e!4749191 () Bool)

(assert (=> b!8058849 (= e!4749189 e!4749191)))

(declare-fun res!3188253 () Bool)

(assert (=> b!8058849 (=> (not res!3188253) (not e!4749191))))

(assert (=> b!8058849 (= res!3188253 (isDefined!14557 (getValueByKey!2812 (toList!11975 lt!2732260) (_1!38818 (h!82090 l!10976)))))))

(declare-fun b!8058850 () Bool)

(declare-fun lt!2732314 () Unit!172726)

(assert (=> b!8058850 (= e!4749193 lt!2732314)))

(declare-fun lt!2732318 () Unit!172726)

(assert (=> b!8058850 (= lt!2732318 (lemmaContainsKeyImpliesGetValueByKeyDefined!2579 (toList!11975 lt!2732260) (_1!38818 (h!82090 l!10976))))))

(assert (=> b!8058850 (isDefined!14557 (getValueByKey!2812 (toList!11975 lt!2732260) (_1!38818 (h!82090 l!10976))))))

(declare-fun lt!2732317 () Unit!172726)

(assert (=> b!8058850 (= lt!2732317 lt!2732318)))

(assert (=> b!8058850 (= lt!2732314 (lemmaInListThenGetKeysListContains!1262 (toList!11975 lt!2732260) (_1!38818 (h!82090 l!10976))))))

(assert (=> b!8058850 call!747669))

(declare-fun b!8058851 () Bool)

(assert (=> b!8058851 (= e!4749188 (getKeysList!1267 (toList!11975 lt!2732260)))))

(declare-fun d!2399169 () Bool)

(assert (=> d!2399169 e!4749189))

(declare-fun res!3188254 () Bool)

(assert (=> d!2399169 (=> res!3188254 e!4749189)))

(assert (=> d!2399169 (= res!3188254 e!4749192)))

(declare-fun res!3188255 () Bool)

(assert (=> d!2399169 (=> (not res!3188255) (not e!4749192))))

(declare-fun lt!2732313 () Bool)

(assert (=> d!2399169 (= res!3188255 (not lt!2732313))))

(declare-fun lt!2732316 () Bool)

(assert (=> d!2399169 (= lt!2732313 lt!2732316)))

(declare-fun lt!2732319 () Unit!172726)

(assert (=> d!2399169 (= lt!2732319 e!4749193)))

(assert (=> d!2399169 (= c!1476790 lt!2732316)))

(assert (=> d!2399169 (= lt!2732316 (containsKey!4930 (toList!11975 lt!2732260) (_1!38818 (h!82090 l!10976))))))

(assert (=> d!2399169 (= (contains!21317 lt!2732260 (_1!38818 (h!82090 l!10976))) lt!2732313)))

(declare-fun b!8058852 () Bool)

(assert (=> b!8058852 (= e!4749188 (keys!30934 lt!2732260))))

(declare-fun b!8058853 () Bool)

(assert (=> b!8058853 (= e!4749191 (contains!21319 (keys!30934 lt!2732260) (_1!38818 (h!82090 l!10976))))))

(assert (= (and d!2399169 c!1476790) b!8058850))

(assert (= (and d!2399169 (not c!1476790)) b!8058848))

(assert (= (and b!8058848 c!1476791) b!8058847))

(assert (= (and b!8058848 (not c!1476791)) b!8058845))

(assert (= (or b!8058850 b!8058848) bm!747664))

(assert (= (and bm!747664 c!1476789) b!8058851))

(assert (= (and bm!747664 (not c!1476789)) b!8058852))

(assert (= (and d!2399169 res!3188255) b!8058846))

(assert (= (and d!2399169 (not res!3188254)) b!8058849))

(assert (= (and b!8058849 res!3188253) b!8058853))

(declare-fun m!8412068 () Bool)

(assert (=> b!8058849 m!8412068))

(assert (=> b!8058849 m!8412068))

(declare-fun m!8412070 () Bool)

(assert (=> b!8058849 m!8412070))

(declare-fun m!8412072 () Bool)

(assert (=> b!8058847 m!8412072))

(declare-fun m!8412074 () Bool)

(assert (=> b!8058847 m!8412074))

(declare-fun m!8412076 () Bool)

(assert (=> b!8058852 m!8412076))

(assert (=> b!8058846 m!8412076))

(assert (=> b!8058846 m!8412076))

(declare-fun m!8412078 () Bool)

(assert (=> b!8058846 m!8412078))

(declare-fun m!8412080 () Bool)

(assert (=> bm!747664 m!8412080))

(declare-fun m!8412082 () Bool)

(assert (=> b!8058850 m!8412082))

(assert (=> b!8058850 m!8412068))

(assert (=> b!8058850 m!8412068))

(assert (=> b!8058850 m!8412070))

(declare-fun m!8412084 () Bool)

(assert (=> b!8058850 m!8412084))

(assert (=> b!8058853 m!8412076))

(assert (=> b!8058853 m!8412076))

(assert (=> b!8058853 m!8412078))

(assert (=> d!2399169 m!8412072))

(declare-fun m!8412086 () Bool)

(assert (=> b!8058851 m!8412086))

(assert (=> b!8058721 d!2399169))

(declare-fun bs!1973471 () Bool)

(declare-fun d!2399171 () Bool)

(assert (= bs!1973471 (and d!2399171 b!8058721)))

(declare-fun lambda!475273 () Int)

(assert (=> bs!1973471 (= (= lt!2732257 acc!836) (= lambda!475273 lambda!475239))))

(declare-fun bs!1973472 () Bool)

(assert (= bs!1973472 (and d!2399171 b!8058726)))

(assert (=> bs!1973472 (= lambda!475273 lambda!475240)))

(assert (=> bs!1973471 (= lambda!475273 lambda!475241)))

(assert (=> d!2399171 true))

(assert (=> d!2399171 (forall!18555 (toList!11975 acc!836) lambda!475273)))

(declare-fun lt!2732322 () Unit!172726)

(declare-fun choose!60579 (ListMap!7401 ListMap!7401 K!22991 V!23245) Unit!172726)

(assert (=> d!2399171 (= lt!2732322 (choose!60579 acc!836 lt!2732257 (_1!38818 (h!82090 l!10976)) (_2!38818 (h!82090 l!10976))))))

(assert (=> d!2399171 (forall!18555 (toList!11975 (+!2722 acc!836 (tuple2!71031 (_1!38818 (h!82090 l!10976)) (_2!38818 (h!82090 l!10976))))) lambda!475273)))

(assert (=> d!2399171 (= (addForallContainsKeyThenBeforeAdding!1116 acc!836 lt!2732257 (_1!38818 (h!82090 l!10976)) (_2!38818 (h!82090 l!10976))) lt!2732322)))

(declare-fun bs!1973473 () Bool)

(assert (= bs!1973473 d!2399171))

(declare-fun m!8412088 () Bool)

(assert (=> bs!1973473 m!8412088))

(declare-fun m!8412090 () Bool)

(assert (=> bs!1973473 m!8412090))

(declare-fun m!8412092 () Bool)

(assert (=> bs!1973473 m!8412092))

(declare-fun m!8412094 () Bool)

(assert (=> bs!1973473 m!8412094))

(assert (=> b!8058721 d!2399171))

(declare-fun d!2399173 () Bool)

(assert (=> d!2399173 (dynLambda!30282 lambda!475241 (h!82090 l!10976))))

(declare-fun lt!2732341 () Unit!172726)

(declare-fun choose!60580 (List!75768 Int tuple2!71030) Unit!172726)

(assert (=> d!2399173 (= lt!2732341 (choose!60580 (toList!11975 lt!2732260) lambda!475241 (h!82090 l!10976)))))

(declare-fun e!4749202 () Bool)

(assert (=> d!2399173 e!4749202))

(declare-fun res!3188258 () Bool)

(assert (=> d!2399173 (=> (not res!3188258) (not e!4749202))))

(assert (=> d!2399173 (= res!3188258 (forall!18555 (toList!11975 lt!2732260) lambda!475241))))

(assert (=> d!2399173 (= (forallContained!4700 (toList!11975 lt!2732260) lambda!475241 (h!82090 l!10976)) lt!2732341)))

(declare-fun b!8058869 () Bool)

(assert (=> b!8058869 (= e!4749202 (contains!21320 (toList!11975 lt!2732260) (h!82090 l!10976)))))

(assert (= (and d!2399173 res!3188258) b!8058869))

(declare-fun b_lambda!290695 () Bool)

(assert (=> (not b_lambda!290695) (not d!2399173)))

(assert (=> d!2399173 m!8412064))

(declare-fun m!8412096 () Bool)

(assert (=> d!2399173 m!8412096))

(assert (=> d!2399173 m!8411938))

(declare-fun m!8412098 () Bool)

(assert (=> b!8058869 m!8412098))

(assert (=> b!8058721 d!2399173))

(declare-fun bs!1973477 () Bool)

(declare-fun b!8058916 () Bool)

(assert (= bs!1973477 (and b!8058916 b!8058721)))

(declare-fun lambda!475307 () Int)

(assert (=> bs!1973477 (= (= lt!2732260 acc!836) (= lambda!475307 lambda!475239))))

(declare-fun bs!1973478 () Bool)

(assert (= bs!1973478 (and b!8058916 b!8058726)))

(assert (=> bs!1973478 (= (= lt!2732260 lt!2732257) (= lambda!475307 lambda!475240))))

(assert (=> bs!1973477 (= (= lt!2732260 lt!2732257) (= lambda!475307 lambda!475241))))

(declare-fun bs!1973479 () Bool)

(assert (= bs!1973479 (and b!8058916 d!2399171)))

(assert (=> bs!1973479 (= (= lt!2732260 lt!2732257) (= lambda!475307 lambda!475273))))

(assert (=> b!8058916 true))

(declare-fun bs!1973480 () Bool)

(declare-fun b!8058917 () Bool)

(assert (= bs!1973480 (and b!8058917 d!2399171)))

(declare-fun lambda!475308 () Int)

(assert (=> bs!1973480 (= (= lt!2732260 lt!2732257) (= lambda!475308 lambda!475273))))

(declare-fun bs!1973481 () Bool)

(assert (= bs!1973481 (and b!8058917 b!8058721)))

(assert (=> bs!1973481 (= (= lt!2732260 acc!836) (= lambda!475308 lambda!475239))))

(declare-fun bs!1973482 () Bool)

(assert (= bs!1973482 (and b!8058917 b!8058916)))

(assert (=> bs!1973482 (= lambda!475308 lambda!475307)))

(assert (=> bs!1973481 (= (= lt!2732260 lt!2732257) (= lambda!475308 lambda!475241))))

(declare-fun bs!1973483 () Bool)

(assert (= bs!1973483 (and b!8058917 b!8058726)))

(assert (=> bs!1973483 (= (= lt!2732260 lt!2732257) (= lambda!475308 lambda!475240))))

(assert (=> b!8058917 true))

(declare-fun lambda!475309 () Int)

(declare-fun lt!2732425 () ListMap!7401)

(assert (=> bs!1973480 (= (= lt!2732425 lt!2732257) (= lambda!475309 lambda!475273))))

(assert (=> bs!1973481 (= (= lt!2732425 acc!836) (= lambda!475309 lambda!475239))))

(assert (=> bs!1973482 (= (= lt!2732425 lt!2732260) (= lambda!475309 lambda!475307))))

(assert (=> b!8058917 (= (= lt!2732425 lt!2732260) (= lambda!475309 lambda!475308))))

(assert (=> bs!1973481 (= (= lt!2732425 lt!2732257) (= lambda!475309 lambda!475241))))

(assert (=> bs!1973483 (= (= lt!2732425 lt!2732257) (= lambda!475309 lambda!475240))))

(assert (=> b!8058917 true))

(declare-fun bs!1973484 () Bool)

(declare-fun d!2399175 () Bool)

(assert (= bs!1973484 (and d!2399175 d!2399171)))

(declare-fun lt!2732429 () ListMap!7401)

(declare-fun lambda!475310 () Int)

(assert (=> bs!1973484 (= (= lt!2732429 lt!2732257) (= lambda!475310 lambda!475273))))

(declare-fun bs!1973485 () Bool)

(assert (= bs!1973485 (and d!2399175 b!8058916)))

(assert (=> bs!1973485 (= (= lt!2732429 lt!2732260) (= lambda!475310 lambda!475307))))

(declare-fun bs!1973486 () Bool)

(assert (= bs!1973486 (and d!2399175 b!8058917)))

(assert (=> bs!1973486 (= (= lt!2732429 lt!2732260) (= lambda!475310 lambda!475308))))

(declare-fun bs!1973487 () Bool)

(assert (= bs!1973487 (and d!2399175 b!8058721)))

(assert (=> bs!1973487 (= (= lt!2732429 lt!2732257) (= lambda!475310 lambda!475241))))

(declare-fun bs!1973488 () Bool)

(assert (= bs!1973488 (and d!2399175 b!8058726)))

(assert (=> bs!1973488 (= (= lt!2732429 lt!2732257) (= lambda!475310 lambda!475240))))

(assert (=> bs!1973486 (= (= lt!2732429 lt!2732425) (= lambda!475310 lambda!475309))))

(assert (=> bs!1973487 (= (= lt!2732429 acc!836) (= lambda!475310 lambda!475239))))

(assert (=> d!2399175 true))

(declare-fun bm!747675 () Bool)

(declare-fun call!747681 () Unit!172726)

(assert (=> bm!747675 (= call!747681 (lemmaContainsAllItsOwnKeys!1136 lt!2732260))))

(declare-fun c!1476806 () Bool)

(declare-fun lt!2732424 () ListMap!7401)

(declare-fun bm!747676 () Bool)

(declare-fun call!747680 () Bool)

(assert (=> bm!747676 (= call!747680 (forall!18555 (ite c!1476806 (toList!11975 lt!2732260) (toList!11975 lt!2732424)) (ite c!1476806 lambda!475307 lambda!475309)))))

(declare-fun b!8058914 () Bool)

(declare-fun res!3188288 () Bool)

(declare-fun e!4749233 () Bool)

(assert (=> b!8058914 (=> (not res!3188288) (not e!4749233))))

(assert (=> b!8058914 (= res!3188288 (forall!18555 (toList!11975 lt!2732260) lambda!475310))))

(declare-fun b!8058915 () Bool)

(assert (=> b!8058915 (= e!4749233 (invariantList!1966 (toList!11975 lt!2732429)))))

(assert (=> d!2399175 e!4749233))

(declare-fun res!3188287 () Bool)

(assert (=> d!2399175 (=> (not res!3188287) (not e!4749233))))

(assert (=> d!2399175 (= res!3188287 (forall!18555 (t!391540 l!10976) lambda!475310))))

(declare-fun e!4749234 () ListMap!7401)

(assert (=> d!2399175 (= lt!2732429 e!4749234)))

(assert (=> d!2399175 (= c!1476806 (is-Nil!75642 (t!391540 l!10976)))))

(assert (=> d!2399175 (noDuplicateKeys!2761 (t!391540 l!10976))))

(assert (=> d!2399175 (= (addToMapMapFromBucket!2036 (t!391540 l!10976) lt!2732260) lt!2732429)))

(declare-fun call!747682 () Bool)

(declare-fun bm!747677 () Bool)

(assert (=> bm!747677 (= call!747682 (forall!18555 (ite c!1476806 (toList!11975 lt!2732260) (t!391540 l!10976)) (ite c!1476806 lambda!475307 lambda!475309)))))

(assert (=> b!8058916 (= e!4749234 lt!2732260)))

(declare-fun lt!2732431 () Unit!172726)

(assert (=> b!8058916 (= lt!2732431 call!747681)))

(assert (=> b!8058916 call!747680))

(declare-fun lt!2732430 () Unit!172726)

(assert (=> b!8058916 (= lt!2732430 lt!2732431)))

(assert (=> b!8058916 call!747682))

(declare-fun lt!2732435 () Unit!172726)

(declare-fun Unit!172734 () Unit!172726)

(assert (=> b!8058916 (= lt!2732435 Unit!172734)))

(assert (=> b!8058917 (= e!4749234 lt!2732425)))

(assert (=> b!8058917 (= lt!2732424 (+!2722 lt!2732260 (h!82090 (t!391540 l!10976))))))

(assert (=> b!8058917 (= lt!2732425 (addToMapMapFromBucket!2036 (t!391540 (t!391540 l!10976)) (+!2722 lt!2732260 (h!82090 (t!391540 l!10976)))))))

(declare-fun lt!2732423 () Unit!172726)

(assert (=> b!8058917 (= lt!2732423 call!747681)))

(assert (=> b!8058917 (forall!18555 (toList!11975 lt!2732260) lambda!475308)))

(declare-fun lt!2732438 () Unit!172726)

(assert (=> b!8058917 (= lt!2732438 lt!2732423)))

(assert (=> b!8058917 call!747680))

(declare-fun lt!2732421 () Unit!172726)

(declare-fun Unit!172735 () Unit!172726)

(assert (=> b!8058917 (= lt!2732421 Unit!172735)))

(assert (=> b!8058917 (forall!18555 (t!391540 (t!391540 l!10976)) lambda!475309)))

(declare-fun lt!2732419 () Unit!172726)

(declare-fun Unit!172736 () Unit!172726)

(assert (=> b!8058917 (= lt!2732419 Unit!172736)))

(declare-fun lt!2732420 () Unit!172726)

(declare-fun Unit!172737 () Unit!172726)

(assert (=> b!8058917 (= lt!2732420 Unit!172737)))

(declare-fun lt!2732418 () Unit!172726)

(assert (=> b!8058917 (= lt!2732418 (forallContained!4700 (toList!11975 lt!2732424) lambda!475309 (h!82090 (t!391540 l!10976))))))

(assert (=> b!8058917 (contains!21317 lt!2732424 (_1!38818 (h!82090 (t!391540 l!10976))))))

(declare-fun lt!2732437 () Unit!172726)

(declare-fun Unit!172738 () Unit!172726)

(assert (=> b!8058917 (= lt!2732437 Unit!172738)))

(assert (=> b!8058917 (contains!21317 lt!2732425 (_1!38818 (h!82090 (t!391540 l!10976))))))

(declare-fun lt!2732434 () Unit!172726)

(declare-fun Unit!172739 () Unit!172726)

(assert (=> b!8058917 (= lt!2732434 Unit!172739)))

(assert (=> b!8058917 (forall!18555 (t!391540 l!10976) lambda!475309)))

(declare-fun lt!2732422 () Unit!172726)

(declare-fun Unit!172740 () Unit!172726)

(assert (=> b!8058917 (= lt!2732422 Unit!172740)))

(assert (=> b!8058917 (forall!18555 (toList!11975 lt!2732424) lambda!475309)))

(declare-fun lt!2732432 () Unit!172726)

(declare-fun Unit!172741 () Unit!172726)

(assert (=> b!8058917 (= lt!2732432 Unit!172741)))

(declare-fun lt!2732428 () Unit!172726)

(declare-fun Unit!172742 () Unit!172726)

(assert (=> b!8058917 (= lt!2732428 Unit!172742)))

(declare-fun lt!2732436 () Unit!172726)

(assert (=> b!8058917 (= lt!2732436 (addForallContainsKeyThenBeforeAdding!1116 lt!2732260 lt!2732425 (_1!38818 (h!82090 (t!391540 l!10976))) (_2!38818 (h!82090 (t!391540 l!10976)))))))

(assert (=> b!8058917 (forall!18555 (toList!11975 lt!2732260) lambda!475309)))

(declare-fun lt!2732426 () Unit!172726)

(assert (=> b!8058917 (= lt!2732426 lt!2732436)))

(assert (=> b!8058917 (forall!18555 (toList!11975 lt!2732260) lambda!475309)))

(declare-fun lt!2732427 () Unit!172726)

(declare-fun Unit!172743 () Unit!172726)

(assert (=> b!8058917 (= lt!2732427 Unit!172743)))

(declare-fun res!3188286 () Bool)

(assert (=> b!8058917 (= res!3188286 call!747682)))

(declare-fun e!4749235 () Bool)

(assert (=> b!8058917 (=> (not res!3188286) (not e!4749235))))

(assert (=> b!8058917 e!4749235))

(declare-fun lt!2732433 () Unit!172726)

(declare-fun Unit!172744 () Unit!172726)

(assert (=> b!8058917 (= lt!2732433 Unit!172744)))

(declare-fun b!8058918 () Bool)

(assert (=> b!8058918 (= e!4749235 (forall!18555 (toList!11975 lt!2732260) lambda!475309))))

(assert (= (and d!2399175 c!1476806) b!8058916))

(assert (= (and d!2399175 (not c!1476806)) b!8058917))

(assert (= (and b!8058917 res!3188286) b!8058918))

(assert (= (or b!8058916 b!8058917) bm!747676))

(assert (= (or b!8058916 b!8058917) bm!747677))

(assert (= (or b!8058916 b!8058917) bm!747675))

(assert (= (and d!2399175 res!3188287) b!8058914))

(assert (= (and b!8058914 res!3188288) b!8058915))

(declare-fun m!8412166 () Bool)

(assert (=> b!8058918 m!8412166))

(declare-fun m!8412168 () Bool)

(assert (=> b!8058914 m!8412168))

(declare-fun m!8412170 () Bool)

(assert (=> bm!747675 m!8412170))

(declare-fun m!8412172 () Bool)

(assert (=> bm!747677 m!8412172))

(declare-fun m!8412174 () Bool)

(assert (=> d!2399175 m!8412174))

(assert (=> d!2399175 m!8412008))

(declare-fun m!8412176 () Bool)

(assert (=> bm!747676 m!8412176))

(declare-fun m!8412178 () Bool)

(assert (=> b!8058915 m!8412178))

(declare-fun m!8412180 () Bool)

(assert (=> b!8058917 m!8412180))

(declare-fun m!8412182 () Bool)

(assert (=> b!8058917 m!8412182))

(declare-fun m!8412184 () Bool)

(assert (=> b!8058917 m!8412184))

(declare-fun m!8412186 () Bool)

(assert (=> b!8058917 m!8412186))

(declare-fun m!8412188 () Bool)

(assert (=> b!8058917 m!8412188))

(declare-fun m!8412190 () Bool)

(assert (=> b!8058917 m!8412190))

(declare-fun m!8412192 () Bool)

(assert (=> b!8058917 m!8412192))

(assert (=> b!8058917 m!8412190))

(declare-fun m!8412194 () Bool)

(assert (=> b!8058917 m!8412194))

(assert (=> b!8058917 m!8412166))

(declare-fun m!8412196 () Bool)

(assert (=> b!8058917 m!8412196))

(declare-fun m!8412198 () Bool)

(assert (=> b!8058917 m!8412198))

(assert (=> b!8058917 m!8412166))

(assert (=> b!8058721 d!2399175))

(declare-fun d!2399187 () Bool)

(declare-fun res!3188289 () Bool)

(declare-fun e!4749236 () Bool)

(assert (=> d!2399187 (=> res!3188289 e!4749236)))

(assert (=> d!2399187 (= res!3188289 (is-Nil!75642 (toList!11975 acc!836)))))

(assert (=> d!2399187 (= (forall!18555 (toList!11975 acc!836) lambda!475239) e!4749236)))

(declare-fun b!8058919 () Bool)

(declare-fun e!4749237 () Bool)

(assert (=> b!8058919 (= e!4749236 e!4749237)))

(declare-fun res!3188290 () Bool)

(assert (=> b!8058919 (=> (not res!3188290) (not e!4749237))))

(assert (=> b!8058919 (= res!3188290 (dynLambda!30282 lambda!475239 (h!82090 (toList!11975 acc!836))))))

(declare-fun b!8058920 () Bool)

(assert (=> b!8058920 (= e!4749237 (forall!18555 (t!391540 (toList!11975 acc!836)) lambda!475239))))

(assert (= (and d!2399187 (not res!3188289)) b!8058919))

(assert (= (and b!8058919 res!3188290) b!8058920))

(declare-fun b_lambda!290699 () Bool)

(assert (=> (not b_lambda!290699) (not b!8058919)))

(declare-fun m!8412200 () Bool)

(assert (=> b!8058919 m!8412200))

(declare-fun m!8412202 () Bool)

(assert (=> b!8058920 m!8412202))

(assert (=> b!8058721 d!2399187))

(assert (=> b!8058721 d!2399141))

(declare-fun bs!1973489 () Bool)

(declare-fun d!2399189 () Bool)

(assert (= bs!1973489 (and d!2399189 d!2399171)))

(declare-fun lambda!475313 () Int)

(assert (=> bs!1973489 (= (= acc!836 lt!2732257) (= lambda!475313 lambda!475273))))

(declare-fun bs!1973490 () Bool)

(assert (= bs!1973490 (and d!2399189 b!8058916)))

(assert (=> bs!1973490 (= (= acc!836 lt!2732260) (= lambda!475313 lambda!475307))))

(declare-fun bs!1973491 () Bool)

(assert (= bs!1973491 (and d!2399189 b!8058917)))

(assert (=> bs!1973491 (= (= acc!836 lt!2732260) (= lambda!475313 lambda!475308))))

(declare-fun bs!1973492 () Bool)

(assert (= bs!1973492 (and d!2399189 b!8058721)))

(assert (=> bs!1973492 (= (= acc!836 lt!2732257) (= lambda!475313 lambda!475241))))

(declare-fun bs!1973493 () Bool)

(assert (= bs!1973493 (and d!2399189 b!8058726)))

(assert (=> bs!1973493 (= (= acc!836 lt!2732257) (= lambda!475313 lambda!475240))))

(declare-fun bs!1973494 () Bool)

(assert (= bs!1973494 (and d!2399189 d!2399175)))

(assert (=> bs!1973494 (= (= acc!836 lt!2732429) (= lambda!475313 lambda!475310))))

(assert (=> bs!1973491 (= (= acc!836 lt!2732425) (= lambda!475313 lambda!475309))))

(assert (=> bs!1973492 (= lambda!475313 lambda!475239)))

(assert (=> d!2399189 true))

(assert (=> d!2399189 (forall!18555 (toList!11975 acc!836) lambda!475313)))

(declare-fun lt!2732441 () Unit!172726)

(declare-fun choose!60581 (ListMap!7401) Unit!172726)

(assert (=> d!2399189 (= lt!2732441 (choose!60581 acc!836))))

(assert (=> d!2399189 (= (lemmaContainsAllItsOwnKeys!1136 acc!836) lt!2732441)))

(declare-fun bs!1973495 () Bool)

(assert (= bs!1973495 d!2399189))

(declare-fun m!8412204 () Bool)

(assert (=> bs!1973495 m!8412204))

(declare-fun m!8412206 () Bool)

(assert (=> bs!1973495 m!8412206))

(assert (=> b!8058721 d!2399189))

(assert (=> b!8058720 d!2399167))

(assert (=> b!8058730 d!2399167))

(declare-fun d!2399191 () Bool)

(declare-fun res!3188291 () Bool)

(declare-fun e!4749238 () Bool)

(assert (=> d!2399191 (=> res!3188291 e!4749238)))

(assert (=> d!2399191 (= res!3188291 (is-Nil!75642 (toList!11975 lt!2732260)))))

(assert (=> d!2399191 (= (forall!18555 (toList!11975 lt!2732260) lambda!475241) e!4749238)))

(declare-fun b!8058921 () Bool)

(declare-fun e!4749239 () Bool)

(assert (=> b!8058921 (= e!4749238 e!4749239)))

(declare-fun res!3188292 () Bool)

(assert (=> b!8058921 (=> (not res!3188292) (not e!4749239))))

(assert (=> b!8058921 (= res!3188292 (dynLambda!30282 lambda!475241 (h!82090 (toList!11975 lt!2732260))))))

(declare-fun b!8058922 () Bool)

(assert (=> b!8058922 (= e!4749239 (forall!18555 (t!391540 (toList!11975 lt!2732260)) lambda!475241))))

(assert (= (and d!2399191 (not res!3188291)) b!8058921))

(assert (= (and b!8058921 res!3188292) b!8058922))

(declare-fun b_lambda!290701 () Bool)

(assert (=> (not b_lambda!290701) (not b!8058921)))

(declare-fun m!8412208 () Bool)

(assert (=> b!8058921 m!8412208))

(declare-fun m!8412210 () Bool)

(assert (=> b!8058922 m!8412210))

(assert (=> b!8058719 d!2399191))

(declare-fun b!8058927 () Bool)

(declare-fun tp!2414312 () Bool)

(declare-fun e!4749242 () Bool)

(assert (=> b!8058927 (= e!4749242 (and tp_is_empty!55183 tp_is_empty!55185 tp!2414312))))

(assert (=> b!8058729 (= tp!2414303 e!4749242)))

(assert (= (and b!8058729 (is-Cons!75642 (t!391540 l!10976))) b!8058927))

(declare-fun tp!2414313 () Bool)

(declare-fun b!8058928 () Bool)

(declare-fun e!4749243 () Bool)

(assert (=> b!8058928 (= e!4749243 (and tp_is_empty!55183 tp_is_empty!55185 tp!2414313))))

(assert (=> b!8058724 (= tp!2414302 e!4749243)))

(assert (= (and b!8058724 (is-Cons!75642 (toList!11975 acc!836))) b!8058928))

(declare-fun b_lambda!290703 () Bool)

(assert (= b_lambda!290687 (or b!8058726 b_lambda!290703)))

(declare-fun bs!1973496 () Bool)

(declare-fun d!2399193 () Bool)

(assert (= bs!1973496 (and d!2399193 b!8058726)))

(assert (=> bs!1973496 (= (dynLambda!30282 lambda!475240 (h!82090 (t!391540 l!10976))) (contains!21317 lt!2732257 (_1!38818 (h!82090 (t!391540 l!10976)))))))

(declare-fun m!8412212 () Bool)

(assert (=> bs!1973496 m!8412212))

(assert (=> b!8058794 d!2399193))

(declare-fun b_lambda!290705 () Bool)

(assert (= b_lambda!290701 (or b!8058721 b_lambda!290705)))

(declare-fun bs!1973497 () Bool)

(declare-fun d!2399195 () Bool)

(assert (= bs!1973497 (and d!2399195 b!8058721)))

(assert (=> bs!1973497 (= (dynLambda!30282 lambda!475241 (h!82090 (toList!11975 lt!2732260))) (contains!21317 lt!2732257 (_1!38818 (h!82090 (toList!11975 lt!2732260)))))))

(declare-fun m!8412214 () Bool)

(assert (=> bs!1973497 m!8412214))

(assert (=> b!8058921 d!2399195))

(declare-fun b_lambda!290707 () Bool)

(assert (= b_lambda!290683 (or b!8058721 b_lambda!290707)))

(declare-fun bs!1973498 () Bool)

(declare-fun d!2399197 () Bool)

(assert (= bs!1973498 (and d!2399197 b!8058721)))

(assert (=> bs!1973498 (= (dynLambda!30282 lambda!475241 (h!82090 (toList!11975 acc!836))) (contains!21317 lt!2732257 (_1!38818 (h!82090 (toList!11975 acc!836)))))))

(declare-fun m!8412216 () Bool)

(assert (=> bs!1973498 m!8412216))

(assert (=> b!8058784 d!2399197))

(declare-fun b_lambda!290709 () Bool)

(assert (= b_lambda!290695 (or b!8058721 b_lambda!290709)))

(declare-fun bs!1973499 () Bool)

(declare-fun d!2399199 () Bool)

(assert (= bs!1973499 (and d!2399199 b!8058721)))

(assert (=> bs!1973499 (= (dynLambda!30282 lambda!475241 (h!82090 l!10976)) (contains!21317 lt!2732257 (_1!38818 (h!82090 l!10976))))))

(assert (=> bs!1973499 m!8411944))

(assert (=> d!2399173 d!2399199))

(declare-fun b_lambda!290711 () Bool)

(assert (= b_lambda!290699 (or b!8058721 b_lambda!290711)))

(declare-fun bs!1973500 () Bool)

(declare-fun d!2399201 () Bool)

(assert (= bs!1973500 (and d!2399201 b!8058721)))

(assert (=> bs!1973500 (= (dynLambda!30282 lambda!475239 (h!82090 (toList!11975 acc!836))) (contains!21317 acc!836 (_1!38818 (h!82090 (toList!11975 acc!836)))))))

(declare-fun m!8412218 () Bool)

(assert (=> bs!1973500 m!8412218))

(assert (=> b!8058919 d!2399201))

(declare-fun b_lambda!290713 () Bool)

(assert (= b_lambda!290685 (or b!8058726 b_lambda!290713)))

(declare-fun bs!1973501 () Bool)

(declare-fun d!2399203 () Bool)

(assert (= bs!1973501 (and d!2399203 b!8058726)))

(assert (=> bs!1973501 (= (dynLambda!30282 lambda!475240 (h!82090 (toList!11975 lt!2732260))) (contains!21317 lt!2732257 (_1!38818 (h!82090 (toList!11975 lt!2732260)))))))

(assert (=> bs!1973501 m!8412214))

(assert (=> b!8058786 d!2399203))

(declare-fun b_lambda!290715 () Bool)

(assert (= b_lambda!290693 (or b!8058721 b_lambda!290715)))

(assert (=> b!8058843 d!2399199))

(push 1)

(assert (not b!8058841))

(assert (not d!2399149))

(assert (not b!8058836))

(assert (not bs!1973496))

(assert (not d!2399169))

(assert (not b!8058830))

(assert (not bs!1973500))

(assert (not b!8058928))

(assert (not b!8058869))

(assert (not b!8058853))

(assert (not b!8058787))

(assert (not b!8058829))

(assert (not b!8058922))

(assert (not b!8058793))

(assert (not bs!1973501))

(assert (not b!8058846))

(assert (not bs!1973497))

(assert (not bm!747664))

(assert (not b!8058927))

(assert (not d!2399163))

(assert (not bm!747677))

(assert (not bm!747663))

(assert (not b!8058842))

(assert (not b!8058832))

(assert (not b_lambda!290709))

(assert (not b!8058835))

(assert tp_is_empty!55183)

(assert (not b!8058917))

(assert (not bs!1973499))

(assert (not b!8058920))

(assert (not b_lambda!290705))

(assert tp_is_empty!55185)

(assert (not b_lambda!290713))

(assert (not b!8058844))

(assert (not b!8058792))

(assert (not b!8058795))

(assert (not d!2399189))

(assert (not bm!747675))

(assert (not b!8058850))

(assert (not b_lambda!290707))

(assert (not d!2399165))

(assert (not b!8058847))

(assert (not bs!1973498))

(assert (not b!8058915))

(assert (not d!2399171))

(assert (not b!8058914))

(assert (not b_lambda!290715))

(assert (not b!8058851))

(assert (not d!2399175))

(assert (not b_lambda!290703))

(assert (not b!8058849))

(assert (not b!8058833))

(assert (not d!2399173))

(assert (not bm!747676))

(assert (not d!2399153))

(assert (not b_lambda!290711))

(assert (not b!8058785))

(assert (not b!8058852))

(assert (not b!8058918))

(assert (not b!8058834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

